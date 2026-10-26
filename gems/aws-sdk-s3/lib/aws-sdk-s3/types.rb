# frozen_string_literal: true

# This is generated code!

module Aws::S3
  # This module contains the types returned by client operations.
  module Types

    # <p>The ABAC status of the general purpose bucket. When ABAC is enabled for the general purpose bucket, you can use tags to manage access to the general purpose buckets as well as for cost tracking purposes. When ABAC is disabled for the general purpose buckets, you can only use tags for cost tracking purposes. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/buckets-tagging.html">Using tags with S3 general purpose buckets</a>. </p>
    # @!attribute status
    #   <p>The ABAC status of the general purpose bucket. </p>
    #   @return [String]
    class AbacStatus < Struct.new(
      nil,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the days since the initiation of an incomplete multipart upload that Amazon S3 will wait before
    #       permanently removing all parts of the upload. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuoverview.html#mpu-abort-incomplete-mpu-lifecycle-config"> Aborting
    #         Incomplete Multipart Uploads Using a Bucket Lifecycle Configuration</a> in the
    #         <i>Amazon S3 User Guide</i>.</p>
    # @!attribute days_after_initiation
    #   <p>Specifies the number of days after which Amazon S3 aborts an incomplete multipart upload.</p>
    #   @return [Integer]
    class AbortIncompleteMultipartUpload < Struct.new(
      nil,
      :days_after_initiation,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute request_charged
    #   <p>If present, indicates that the requester was successfully charged for the request. For more
    #         information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/RequesterPaysBuckets.html">Using Requester Pays buckets for storage transfers and usage</a> in the <i>Amazon Simple
    #           Storage Service user guide</i>.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    class AbortMultipartUploadOutput < Struct.new(
      nil,
      :request_charged,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bucket
    #   <p>The bucket name to which the upload was taking place. </p>
    #            <p>
    #               <b>Directory buckets</b> - When you use this operation with a directory bucket, you must use virtual-hosted-style requests in the format <code>
    #                  <i>Bucket-name</i>.s3express-<i>zone-id</i>.<i>region-code</i>.amazonaws.com</code>. Path-style requests are not supported.  Directory bucket names must be unique in the chosen Zone (Availability Zone or Local Zone). Bucket names must follow the format <code>
    #                  <i>bucket-base-name</i>--<i>zone-id</i>--x-s3</code> (for example, <code>
    #                  <i>amzn-s3-demo-bucket</i>--<i>usw2-az1</i>--x-s3</code>). For information about bucket naming
    #            restrictions, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/directory-bucket-naming-rules.html">Directory bucket naming
    #               rules</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <p>
    #               <b>Access points</b> - When you use this action with an access point for general purpose buckets, you must provide the alias of the access point in place of the bucket name or specify the access point ARN. When you use this action with an access point for directory buckets, you must provide the access point name in place of the bucket name. When using the access point ARN, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <note>
    #               <p>Object Lambda access points are not supported by directory buckets.</p>
    #            </note>
    #            <p>
    #               <b>S3 on Outposts</b> - When you use this action with S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the
    #                        form <code>
    #                  <i>AccessPointName</i>-<i>AccountId</i>.<i>outpostID</i>.s3-outposts.<i>Region</i>.amazonaws.com</code>. When you use this action with S3 on Outposts, the destination bucket must be the Outposts access point ARN or the access point alias. For more information about S3 on Outposts, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html">What is S3 on Outposts?</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute key
    #   <p>Key of the object for which the multipart upload was initiated.</p>
    #   @return [String]
    # @!attribute upload_id
    #   <p>Upload ID that identifies the multipart upload.</p>
    #   @return [String]
    # @!attribute request_payer
    #   <p>Confirms that the requester knows that they will be charged for the request. Bucket owners need not
    #         specify this parameter in their requests. If either the source or destination S3 bucket has Requester
    #         Pays enabled, the requester will pay for the corresponding charges. For information about
    #         downloading objects from Requester Pays buckets, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html">Downloading Objects in Requester Pays
    #           Buckets</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    # @!attribute if_match_initiated_time
    #   <p>If present, this header aborts an in progress multipart upload only if it was initiated on the
    #         provided timestamp. If the initiated timestamp of the multipart upload does not match the provided
    #         value, the operation returns a <code>412 Precondition Failed</code> error. If the initiated timestamp
    #         matches or if the multipart upload doesn’t exist, the operation returns a <code>204 Success (No
    #           Content)</code> response. </p>
    #            <note>
    #               <p>This functionality is only supported for directory buckets.</p>
    #            </note>
    #   @return [Time]
    class AbortMultipartUploadRequest < Struct.new(
      nil,
      :bucket,
      :key,
      :upload_id,
      :request_payer,
      :expected_bucket_owner,
      :if_match_initiated_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configures the transfer acceleration state for an Amazon S3 bucket. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/transfer-acceleration.html">Amazon S3 Transfer
    #         Acceleration</a> in the <i>Amazon S3 User Guide</i>.</p>
    # @!attribute status
    #   <p>Specifies the transfer acceleration status of the bucket.</p>
    #   @return [String]
    class AccelerateConfiguration < Struct.new(
      nil,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the elements that set the ACL permissions for an object per grantee.</p>
    # @!attribute grants
    #   <p>A list of grants.</p>
    #   @return [Array<Types::Grant>]
    # @!attribute owner
    #   <p>Container for the bucket owner's display name and ID.</p>
    #   @return [Types::Owner]
    class AccessControlPolicy < Struct.new(
      nil,
      :grants,
      :owner,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A container for information about access control for replicas.</p>
    # @!attribute owner
    #   <p>Specifies the replica ownership. For default and valid values, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/RESTBucketPUTreplication.html">PUT bucket replication</a> in the
    #           <i>Amazon S3 API Reference</i>.</p>
    #   @return [String]
    class AccessControlTranslation < Struct.new(
      nil,
      :owner,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #       You might receive this error for several reasons. For details, see the description of this API
    #       operation.</p>
    class AccessDenied < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A conjunction (logical AND) of predicates, which is used in evaluating a metrics filter. The
    #       operator must have at least two predicates in any combination, and an object must match all of the
    #       predicates for the filter to apply.</p>
    # @!attribute prefix
    #   <p>The prefix to use when evaluating an AND predicate: The prefix that an object must have to be
    #         included in the metrics results.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The list of tags to use when evaluating an AND predicate.</p>
    #   @return [Array<Types::Tag>]
    class AnalyticsAndOperator < Struct.new(
      nil,
      :prefix,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the configuration and any analyses for the analytics filter of an Amazon S3 bucket.</p>
    # @!attribute id
    #   <p>The ID that identifies the analytics configuration.</p>
    #   @return [String]
    # @!attribute filter
    #   <p>The filter used to describe a set of objects for analyses. A filter must have exactly one prefix,
    #         one tag, or one conjunction (AnalyticsAndOperator). If no filter is provided, all objects will be
    #         considered in any analysis.</p>
    #   @return [Types::AnalyticsFilter]
    # @!attribute storage_class_analysis
    #   <p> Contains data related to access patterns to be collected and made available to analyze the
    #         tradeoffs between different storage classes. </p>
    #   @return [Types::StorageClassAnalysis]
    class AnalyticsConfiguration < Struct.new(
      nil,
      :id,
      :filter,
      :storage_class_analysis,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Where to publish the analytics results.</p>
    # @!attribute s3_bucket_destination
    #   <p>A destination signifying output to an S3 bucket.</p>
    #   @return [Types::AnalyticsS3BucketDestination]
    class AnalyticsExportDestination < Struct.new(
      nil,
      :s3_bucket_destination,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The filter used to describe a set of objects for analyses. A filter must have exactly one prefix,
    #       one tag, or one conjunction (AnalyticsAndOperator). If no filter is provided, all objects will be
    #       considered in any analysis.</p>
    # @!attribute prefix
    #   <p>The prefix to use when evaluating an analytics filter.</p>
    #   @return [String]
    # @!attribute tag
    #   <p>The tag to use when evaluating an analytics filter.</p>
    #   @return [Types::Tag]
    # @!attribute and
    #   <p>A conjunction (logical AND) of predicates, which is used in evaluating an analytics filter. The
    #         operator must have at least two predicates.</p>
    #   @return [Types::AnalyticsAndOperator]
    class AnalyticsFilter < Struct.new(
      :prefix,
      :tag,
      :and,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Prefix < AnalyticsFilter; end
      class Tag < AnalyticsFilter; end
      class And < AnalyticsFilter; end
      class Unknown < AnalyticsFilter; end
    end

    # <p>Contains information about where to publish the analytics results.</p>
    # @!attribute format
    #   <p>Specifies the file format used when exporting data to Amazon S3.</p>
    #   @return [String]
    # @!attribute bucket_account_id
    #   <p>The account ID that owns the destination S3 bucket. If no account ID is provided, the owner is not
    #         validated before exporting data.</p>
    #            <note>
    #               <p> Although this value is optional, we strongly recommend that you set it to help prevent problems
    #           if the destination bucket ownership changes. </p>
    #            </note>
    #   @return [String]
    # @!attribute bucket
    #   <p>The Amazon Resource Name (ARN) of the bucket to which data is exported.</p>
    #   @return [String]
    # @!attribute prefix
    #   <p>The prefix to use when exporting data. The prefix is prepended to all results.</p>
    #   @return [String]
    class AnalyticsS3BucketDestination < Struct.new(
      nil,
      :format,
      :bucket_account_id,
      :bucket,
      :prefix,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a single annotation attached to an object, including its name, last modified time,
    #       size, ETag, checksum algorithm, and replication status. Returned in the response from
    #       <code>ListObjectAnnotations</code>.</p>
    # @!attribute annotation_name
    #   <p>The name of the annotation.</p>
    #   @return [String]
    # @!attribute last_modified
    #   <p>The date and time the annotation was last modified.</p>
    #   @return [Time]
    # @!attribute e_tag
    #   <p>The entity tag of the annotation.</p>
    #   @return [String]
    # @!attribute checksum_algorithm
    #   <p>The checksum algorithm used for the annotation.</p>
    #   @return [Array<String>]
    # @!attribute size
    #   <p>The size of the annotation payload, in bytes.</p>
    #   @return [Integer]
    # @!attribute replication_status
    #   <p>The replication status of the annotation.</p>
    #   @return [String]
    class AnnotationEntry < Struct.new(
      nil,
      :annotation_name,
      :last_modified,
      :e_tag,
      :checksum_algorithm,
      :size,
      :replication_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request would exceed the maximum number of annotations allowed per object.</p>
    class AnnotationLimitExceeded < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The annotation name exceeds 512 bytes.</p>
    class AnnotationNameTooLong < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the configuration for the annotation table associated with a bucket's Amazon S3 Metadata
    #       configuration. The annotation table is an Iceberg table that records annotation events for objects
    #       in the bucket.</p>
    # @!attribute configuration_state
    #   <p>The state of the annotation table. Valid values are <code>ENABLED</code> and <code>DISABLED</code>.</p>
    #   @return [String]
    # @!attribute encryption_configuration
    #   <p>
    #         The encryption settings for an S3 Metadata journal table or inventory table configuration.
    #       </p>
    #   @return [Types::MetadataTableEncryptionConfiguration]
    # @!attribute role
    #   <p>The ARN of the IAM role used to manage the annotation table.</p>
    #   @return [String]
    class AnnotationTableConfiguration < Struct.new(
      nil,
      :configuration_state,
      :encryption_configuration,
      :role,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the current state of the annotation table associated with a bucket's Amazon S3 Metadata
    #       configuration, including its provisioning status and identifiers.</p>
    # @!attribute configuration_state
    #   <p>The current configuration state of the annotation table.</p>
    #   @return [String]
    # @!attribute table_status
    #   <p>The provisioning status of the annotation table. Possible values: <code>CREATING</code>, <code>BACKFILLING</code>, <code>ACTIVE</code>, <code>FAILED</code>.</p>
    #   @return [String]
    # @!attribute error
    #   <p> If an S3 Metadata V1 <code>CreateBucketMetadataTableConfiguration</code> or V2
    #         <code>CreateBucketMetadataConfiguration</code> request succeeds, but S3 Metadata was
    #         unable to create the table, this structure contains the error code and error message. </p>
    #            <note>
    #               <p>If you created your S3 Metadata configuration before July 15, 2025, we recommend that you delete
    #           and re-create your configuration by using <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateBucketMetadataConfiguration.html">CreateBucketMetadataConfiguration</a> so that you can expire journal table records and create
    #           a live inventory table.</p>
    #            </note>
    #   @return [Types::ErrorDetails]
    # @!attribute table_name
    #   <p>The name of the annotation table.</p>
    #   @return [String]
    # @!attribute table_arn
    #   <p>The ARN of the annotation table.</p>
    #   @return [String]
    # @!attribute role
    #   <p>The ARN of the IAM role associated with the annotation table.</p>
    #   @return [String]
    class AnnotationTableConfigurationResult < Struct.new(
      nil,
      :configuration_state,
      :table_status,
      :error,
      :table_name,
      :table_arn,
      :role,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies updates to apply to the annotation table configuration. Used as the request body for
    #       <code>UpdateBucketMetadataAnnotationTableConfiguration</code>.</p>
    # @!attribute configuration_state
    #   <p>The new configuration state to apply.</p>
    #   @return [String]
    # @!attribute encryption_configuration
    #   <p>
    #         The encryption settings for an S3 Metadata journal table or inventory table configuration.
    #       </p>
    #   @return [Types::MetadataTableEncryptionConfiguration]
    # @!attribute role
    #   <p>The new IAM role ARN to apply.</p>
    #   @return [String]
    class AnnotationTableConfigurationUpdates < Struct.new(
      nil,
      :configuration_state,
      :encryption_configuration,
      :role,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A bucket-level setting for Amazon S3 general purpose buckets used to prevent the upload of new objects encrypted with the specified server-side encryption type. For example, blocking an encryption type will block <code>PutObject</code>, <code>CopyObject</code>, <code>PostObject</code>, multipart upload, and replication requests to the bucket for objects with the specified encryption type. However, you can continue to read and list any pre-existing objects already encrypted with the specified encryption type. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/blocking-unblocking-s3-c-encryption-gpb.html">Blocking or unblocking SSE-C for a general purpose bucket</a>.</p>
    #          <p>This data type is used with the following actions:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketEncryption.html">PutBucketEncryption</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketEncryption.html">GetBucketEncryption</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucketEncryption.html">DeleteBucketEncryption</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <dl>
    #             <dt>Permissions</dt>
    #             <dd>
    #                <p>You must have the <code>s3:PutEncryptionConfiguration</code> permission to block or unblock an encryption type for a bucket. </p>
    #                <p>You must have the <code>s3:GetEncryptionConfiguration</code> permission to view a bucket's encryption type. </p>
    #             </dd>
    #          </dl>
    # @!attribute encryption_type
    #   <p>The object encryption type that you want to block or unblock for an Amazon S3 general purpose bucket.</p>
    #            <note>
    #               <p>Currently, this parameter only supports blocking or unblocking server side encryption with customer-provided keys (SSE-C). For more information about SSE-C, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/ServerSideEncryptionCustomerKeys.html">Using server-side encryption with customer-provided keys (SSE-C)</a>.</p>
    #            </note>
    #   @return [Array<String>]
    class BlockedEncryptionTypes < Struct.new(
      nil,
      :encryption_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> In terms of implementation, a Bucket is a resource. </p>
    # @!attribute name
    #   <p>The name of the bucket.</p>
    #   @return [String]
    # @!attribute creation_date
    #   <p>Date the bucket was created. This date can change when making changes to your bucket, such as
    #         editing its bucket policy.</p>
    #   @return [Time]
    # @!attribute bucket_region
    #   <p>
    #               <code>BucketRegion</code> indicates the Amazon Web Services region where the bucket is located. If the request
    #         contains at least one valid parameter, it is included in the response.</p>
    #   @return [String]
    # @!attribute bucket_arn
    #   <p>The Amazon Resource Name (ARN) of the S3 bucket. ARNs uniquely identify Amazon Web Services resources across all
    #         of Amazon Web Services.</p>
    #            <note>
    #               <p>This parameter is only supported for S3 directory buckets. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/directory-buckets-tagging.html">Using tags with
    #             directory buckets</a>.</p>
    #            </note>
    #   @return [String]
    class Bucket < Struct.new(
      nil,
      :name,
      :creation_date,
      :bucket_region,
      :bucket_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The requested bucket name is not available. The bucket namespace is shared by all users of the
    #       system. Select a different name and try again.</p>
    class BucketAlreadyExists < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The bucket you tried to create already exists, and you own it. Amazon S3 returns this error in all Amazon Web Services
    #       Regions except in the North Virginia Region. For legacy compatibility, if you re-create an existing
    #       bucket that you already own in the North Virginia Region, Amazon S3 returns 200 OK and resets the bucket
    #       access control lists (ACLs).</p>
    class BucketAlreadyOwnedByYou < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the information about the bucket that will be created. For more information about
    #       directory buckets, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/directory-buckets-overview.html">Directory buckets</a> in the
    #         <i>Amazon S3 User Guide</i>.</p>
    #          <note>
    #             <p>This functionality is only supported by directory buckets.</p>
    #          </note>
    # @!attribute data_redundancy
    #   <p>The number of Zone (Availability Zone or Local Zone) that's used for redundancy for the bucket.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of bucket.</p>
    #   @return [String]
    class BucketInfo < Struct.new(
      nil,
      :data_redundancy,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the lifecycle configuration for objects in an Amazon S3 bucket. For more information, see
    #         <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lifecycle-mgmt.html">Object Lifecycle
    #         Management</a> in the <i>Amazon S3 User Guide</i>.</p>
    # @!attribute rules
    #   <p>A lifecycle rule for individual objects in an Amazon S3 bucket.</p>
    #   @return [Array<Types::LifecycleRule>]
    class BucketLifecycleConfiguration < Struct.new(
      nil,
      :rules,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for logging status information.</p>
    # @!attribute logging_enabled
    #   <p>Describes where logs are stored and the prefix that Amazon S3 assigns to all log object keys for a
    #         bucket. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/RESTBucketPUTlogging.html">PUT Bucket logging</a> in the
    #           <i>Amazon S3 API Reference</i>.</p>
    #   @return [Types::LoggingEnabled]
    class BucketLoggingStatus < Struct.new(
      nil,
      :logging_enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the cross-origin access configuration for objects in an Amazon S3 bucket. For more information,
    #       see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/cors.html">Enabling Cross-Origin Resource
    #         Sharing</a> in the <i>Amazon S3 User Guide</i>.</p>
    # @!attribute cors_rules
    #   <p>A set of origins and methods (cross-origin access that you want to allow). You can add up to 100
    #         rules to the configuration.</p>
    #   @return [Array<Types::CORSRule>]
    class CORSConfiguration < Struct.new(
      nil,
      :cors_rules,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies a cross-origin access rule for an Amazon S3 bucket.</p>
    # @!attribute id
    #   <p>Unique identifier for the rule. The value cannot be longer than 255 characters.</p>
    #   @return [String]
    # @!attribute allowed_headers
    #   <p>Headers that are specified in the <code>Access-Control-Request-Headers</code> header. These headers
    #         are allowed in a preflight OPTIONS request. In response to any preflight OPTIONS request, Amazon S3 returns
    #         any requested headers that are allowed.</p>
    #   @return [Array<String>]
    # @!attribute allowed_methods
    #   <p>An HTTP method that you allow the origin to execute. Valid values are <code>GET</code>,
    #           <code>PUT</code>, <code>HEAD</code>, <code>POST</code>, and <code>DELETE</code>.</p>
    #   @return [Array<String>]
    # @!attribute allowed_origins
    #   <p>One or more origins you want customers to be able to access the bucket from.</p>
    #   @return [Array<String>]
    # @!attribute expose_headers
    #   <p>One or more headers in the response that you want customers to be able to access from their
    #         applications (for example, from a JavaScript <code>XMLHttpRequest</code> object).</p>
    #   @return [Array<String>]
    # @!attribute max_age_seconds
    #   <p>The time in seconds that your browser is to cache the preflight response for the specified
    #         resource.</p>
    #   @return [Integer]
    class CORSRule < Struct.new(
      nil,
      :id,
      :allowed_headers,
      :allowed_methods,
      :allowed_origins,
      :expose_headers,
      :max_age_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes how an uncompressed comma-separated values (CSV)-formatted input object is
    #       formatted.</p>
    # @!attribute file_header_info
    #   <p>Describes the first line of input. Valid values are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>NONE</code>: First line is not a header.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IGNORE</code>: First line is a header, but you can't use the header values to indicate the
    #             column in an expression. You can use column position (such as _1, _2, …) to indicate the column
    #               (<code>SELECT s._1 FROM OBJECT s</code>).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Use</code>: First line is a header, and you can use the header value to identify a column
    #             in an expression (<code>SELECT "name" FROM OBJECT</code>). </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute comments
    #   <p>A single character used to indicate that a row should be ignored when the character is present at
    #         the start of that row. You can specify any character to indicate a comment line. The default character
    #         is <code>#</code>.</p>
    #            <p>Default: <code>#</code>
    #            </p>
    #   @return [String]
    # @!attribute quote_escape_character
    #   <p>A single character used for escaping the quotation mark character inside an already escaped value.
    #         For example, the value <code>""" a , b """</code> is parsed as <code>" a , b "</code>.</p>
    #   @return [String]
    # @!attribute record_delimiter
    #   <p>A single character used to separate individual records in the input. Instead of the default value,
    #         you can specify an arbitrary delimiter.</p>
    #   @return [String]
    # @!attribute field_delimiter
    #   <p>A single character used to separate individual fields in a record. You can specify an arbitrary
    #         delimiter.</p>
    #   @return [String]
    # @!attribute quote_character
    #   <p>A single character used for escaping when the field delimiter is part of the value. For example, if
    #         the value is <code>a, b</code>, Amazon S3 wraps this field value in quotation marks, as follows: <code>" a ,
    #           b "</code>.</p>
    #            <p>Type: String</p>
    #            <p>Default: <code>"</code>
    #            </p>
    #            <p>Ancestors: <code>CSV</code>
    #            </p>
    #   @return [String]
    # @!attribute allow_quoted_record_delimiter
    #   <p>Specifies that CSV field values may contain quoted record delimiters and such records should be
    #         allowed. Default value is FALSE. Setting this value to TRUE may lower performance.</p>
    #   @return [Boolean]
    class CSVInput < Struct.new(
      nil,
      :file_header_info,
      :comments,
      :quote_escape_character,
      :record_delimiter,
      :field_delimiter,
      :quote_character,
      :allow_quoted_record_delimiter,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes how uncompressed comma-separated values (CSV)-formatted results are formatted.</p>
    # @!attribute quote_fields
    #   <p>Indicates whether to use quotation marks around output fields. </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ALWAYS</code>: Always use quotation marks for output fields.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ASNEEDED</code>: Use quotation marks for output fields when needed.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute quote_escape_character
    #   <p>The single character used for escaping the quote character inside an already escaped value.</p>
    #   @return [String]
    # @!attribute record_delimiter
    #   <p>A single character used to separate individual records in the output. Instead of the default value,
    #         you can specify an arbitrary delimiter.</p>
    #   @return [String]
    # @!attribute field_delimiter
    #   <p>The value used to separate individual fields in a record. You can specify an arbitrary
    #         delimiter.</p>
    #   @return [String]
    # @!attribute quote_character
    #   <p>A single character used for escaping when the field delimiter is part of the value. For example, if
    #         the value is <code>a, b</code>, Amazon S3 wraps this field value in quotation marks, as follows: <code>" a ,
    #           b "</code>.</p>
    #   @return [String]
    class CSVOutput < Struct.new(
      nil,
      :quote_fields,
      :quote_escape_character,
      :record_delimiter,
      :field_delimiter,
      :quote_character,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains all the possible checksum or digest values for an object.</p>
    # @!attribute checksum_crc32
    #   <p>The Base64 encoded, 32-bit <code>CRC32 checksum</code> of the object. This checksum is only present if the checksum was uploaded
    #       with the object. When you use an API operation on an object that was uploaded using multipart uploads, this value may not be a direct checksum value of the full object. Instead, it's a calculation based on the checksum values of each individual part. For more information about how checksums are calculated
    #       with multipart uploads, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html#large-object-checksums">
    #       Checking object integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_crc32_c
    #   <p>The Base64 encoded, 32-bit <code>CRC32C</code> checksum of the object. This checksum is only present if the checksum was uploaded
    #       with the object. When you use an API operation on an object that was uploaded using multipart uploads, this value may not be a direct checksum value of the full object. Instead, it's a calculation based on the checksum values of each individual part. For more information about how checksums are calculated
    #       with multipart uploads, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html#large-object-checksums">
    #       Checking object integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_crc64_nvme
    #   <p>The Base64 encoded, 64-bit <code>CRC64NVME</code> checksum of the object. This checksum is present
    #         if the object was uploaded with the <code>CRC64NVME</code> checksum algorithm, or if the object was
    #         uploaded without a checksum (and Amazon S3 added the default checksum, <code>CRC64NVME</code>, to the
    #         uploaded object). For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #         the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_sha1
    #   <p>The Base64 encoded, 160-bit <code>SHA1</code> digest of the object. This checksum is only present if the checksum was uploaded
    #       with the object. When you use the API operation on an object that was uploaded using multipart uploads, this value may not be a direct checksum value of the full object. Instead, it's a calculation based on the checksum values of each individual part. For more information about how checksums are calculated
    #       with multipart uploads, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html#large-object-checksums">
    #       Checking object integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_sha256
    #   <p>The Base64 encoded, 256-bit <code>SHA256</code> digest of the object. This checksum is only present if the checksum was uploaded
    #       with the object. When you use an API operation on an object that was uploaded using multipart uploads, this value may not be a direct checksum value of the full object. Instead, it's a calculation based on the checksum values of each individual part. For more information about how checksums are calculated
    #       with multipart uploads, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html#large-object-checksums">
    #       Checking object integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_sha512
    #   <p>The Base64 encoded, 512-bit <code>SHA512</code> digest of the object. This checksum is present
    #         if the object was uploaded with the <code>SHA512</code> checksum algorithm. For more information, see
    #         <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #         the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_md5
    #   <p>The Base64 encoded, 128-bit <code>MD5</code> digest of the object. This checksum is present
    #         if the object was uploaded with the <code>MD5</code> checksum algorithm. For more information, see
    #         <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #         the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_xxhash64
    #   <p>The Base64 encoded, 64-bit <code>XXHASH64</code> checksum of the object. This checksum is present
    #         if the object was uploaded with the <code>XXHASH64</code> checksum algorithm. For more information, see
    #         <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #         the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_xxhash3
    #   <p>The Base64 encoded, 64-bit <code>XXHASH3</code> checksum of the object. This checksum is present
    #         if the object was uploaded with the <code>XXHASH3</code> checksum algorithm. For more information, see
    #         <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #         the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_xxhash128
    #   <p>The Base64 encoded, 128-bit <code>XXHASH128</code> checksum of the object. This checksum is present
    #         if the object was uploaded with the <code>XXHASH128</code> checksum algorithm. For more information, see
    #         <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #         the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_type
    #   <p>The checksum type that is used to calculate the object’s checksum value. For more information, see
    #           <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking
    #           object integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    class Checksum < Struct.new(
      nil,
      :checksum_crc32,
      :checksum_crc32_c,
      :checksum_crc64_nvme,
      :checksum_sha1,
      :checksum_sha256,
      :checksum_sha512,
      :checksum_md5,
      :checksum_xxhash64,
      :checksum_xxhash3,
      :checksum_xxhash128,
      :checksum_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for all (if there are any) keys between Prefix and the next occurrence of the string
    #       specified by a delimiter. CommonPrefixes lists keys that act like subdirectories in the directory
    #       specified by Prefix. For example, if the prefix is notes/ and the delimiter is a slash (/) as in
    #       notes/summer/july, the common prefix is notes/summer/. </p>
    # @!attribute prefix
    #   <p>Container for the specified common prefix.</p>
    #   @return [String]
    class CommonPrefix < Struct.new(
      nil,
      :prefix,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute location
    #   <p>The URI that identifies the newly created object.</p>
    #   @return [String]
    # @!attribute bucket
    #   <p>The name of the bucket that contains the newly created object. Does not return the access point ARN or access point
    #         alias if used.</p>
    #            <note>
    #               <p>Access points are not supported by directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute key
    #   <p>The object key of the newly created object.</p>
    #   @return [String]
    # @!attribute expiration
    #   <p>If the object expiration is configured, this will contain the expiration date
    #           (<code>expiry-date</code>) and rule ID (<code>rule-id</code>). The value of <code>rule-id</code> is
    #         URL-encoded.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute e_tag
    #   <p>Entity tag that identifies the newly created object's data. Objects with different object data will
    #         have different entity tags. The entity tag is an opaque string. The entity tag may or may not be an MD5
    #         digest of the object data. If the entity tag is not an MD5 digest of the object data, it will contain
    #         one or more nonhexadecimal characters and/or will consist of less than 32 or more than 32 hexadecimal
    #         digits. For more information about how the entity tag is calculated, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #         the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_crc32
    #   <p>The Base64 encoded, 32-bit <code>CRC32 checksum</code> of the object. This checksum is only present if the checksum was uploaded
    #       with the object. When you use an API operation on an object that was uploaded using multipart uploads, this value may not be a direct checksum value of the full object. Instead, it's a calculation based on the checksum values of each individual part. For more information about how checksums are calculated
    #       with multipart uploads, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html#large-object-checksums">
    #       Checking object integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_crc32_c
    #   <p>The Base64 encoded, 32-bit <code>CRC32C</code> checksum of the object. This checksum is only present if the checksum was uploaded
    #       with the object. When you use an API operation on an object that was uploaded using multipart uploads, this value may not be a direct checksum value of the full object. Instead, it's a calculation based on the checksum values of each individual part. For more information about how checksums are calculated
    #       with multipart uploads, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html#large-object-checksums">
    #       Checking object integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_crc64_nvme
    #   <p>This header can be used as a data integrity check to verify that the data received is the same data
    #         that was originally sent. This header specifies the Base64 encoded, 64-bit <code>CRC64NVME</code>
    #         checksum of the object. The <code>CRC64NVME</code> checksum is always a full object checksum. For more
    #         information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity in the Amazon S3
    #           User Guide</a>. </p>
    #   @return [String]
    # @!attribute checksum_sha1
    #   <p>The Base64 encoded, 160-bit <code>SHA1</code> digest of the object. This checksum is only present if the checksum was uploaded
    #       with the object. When you use the API operation on an object that was uploaded using multipart uploads, this value may not be a direct checksum value of the full object. Instead, it's a calculation based on the checksum values of each individual part. For more information about how checksums are calculated
    #       with multipart uploads, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html#large-object-checksums">
    #       Checking object integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_sha256
    #   <p>The Base64 encoded, 256-bit <code>SHA256</code> digest of the object. This checksum is only present if the checksum was uploaded
    #       with the object. When you use an API operation on an object that was uploaded using multipart uploads, this value may not be a direct checksum value of the full object. Instead, it's a calculation based on the checksum values of each individual part. For more information about how checksums are calculated
    #       with multipart uploads, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html#large-object-checksums">
    #       Checking object integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_sha512
    #   <p>The Base64 encoded, 512-bit <code>SHA512</code> digest of the object. For more
    #         information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity in the Amazon S3
    #           User Guide</a>.</p>
    #   @return [String]
    # @!attribute checksum_md5
    #   <p>The Base64 encoded, 128-bit <code>MD5</code> digest of the object. For more
    #         information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity in the Amazon S3
    #           User Guide</a>.</p>
    #   @return [String]
    # @!attribute checksum_xxhash64
    #   <p>The Base64 encoded, 64-bit <code>XXHASH64</code> checksum of the object. For more
    #         information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity in the Amazon S3
    #           User Guide</a>.</p>
    #   @return [String]
    # @!attribute checksum_xxhash3
    #   <p>The Base64 encoded, 64-bit <code>XXHASH3</code> checksum of the object. For more
    #         information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity in the Amazon S3
    #           User Guide</a>.</p>
    #   @return [String]
    # @!attribute checksum_xxhash128
    #   <p>The Base64 encoded, 128-bit <code>XXHASH128</code> checksum of the object. For more
    #         information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity in the Amazon S3
    #           User Guide</a>.</p>
    #   @return [String]
    # @!attribute checksum_type
    #   <p>The checksum type, which determines how part-level checksums are combined to create an object-level
    #         checksum for multipart objects. You can use this header as a data integrity check to verify that the
    #         checksum type that is received is the same checksum type that was specified during the
    #           <code>CreateMultipartUpload</code> request. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity in the Amazon S3
    #           User Guide</a>.</p>
    #   @return [String]
    # @!attribute server_side_encryption
    #   <p>The server-side encryption algorithm used when storing this object in Amazon S3.</p>
    #            <note>
    #               <p>When accessing data stored in Amazon FSx file systems using S3 access points, the only valid server side
    #           encryption option is <code>aws:fsx</code>.</p>
    #            </note>
    #            <p></p>
    #   @return [String]
    # @!attribute version_id
    #   <p>Version ID of the newly created object, in case the bucket has versioning turned on.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute ssekms_key_id
    #   <p>If present, indicates the ID of the KMS key that was used for object encryption.</p>
    #   @return [String]
    # @!attribute bucket_key_enabled
    #   <p>Indicates whether the multipart upload uses an S3 Bucket Key for server-side encryption with
    #         Key Management Service (KMS) keys (SSE-KMS).</p>
    #   @return [Boolean]
    # @!attribute request_charged
    #   <p>If present, indicates that the requester was successfully charged for the request. For more
    #         information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/RequesterPaysBuckets.html">Using Requester Pays buckets for storage transfers and usage</a> in the <i>Amazon Simple
    #           Storage Service user guide</i>.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    class CompleteMultipartUploadOutput < Struct.new(
      nil,
      :location,
      :bucket,
      :key,
      :expiration,
      :e_tag,
      :checksum_crc32,
      :checksum_crc32_c,
      :checksum_crc64_nvme,
      :checksum_sha1,
      :checksum_sha256,
      :checksum_sha512,
      :checksum_md5,
      :checksum_xxhash64,
      :checksum_xxhash3,
      :checksum_xxhash128,
      :checksum_type,
      :server_side_encryption,
      :version_id,
      :ssekms_key_id,
      :bucket_key_enabled,
      :request_charged,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bucket
    #   <p>Name of the bucket to which the multipart upload was initiated.</p>
    #            <p>
    #               <b>Directory buckets</b> - When you use this operation with a directory bucket, you must use virtual-hosted-style requests in the format <code>
    #                  <i>Bucket-name</i>.s3express-<i>zone-id</i>.<i>region-code</i>.amazonaws.com</code>. Path-style requests are not supported.  Directory bucket names must be unique in the chosen Zone (Availability Zone or Local Zone). Bucket names must follow the format <code>
    #                  <i>bucket-base-name</i>--<i>zone-id</i>--x-s3</code> (for example, <code>
    #                  <i>amzn-s3-demo-bucket</i>--<i>usw2-az1</i>--x-s3</code>). For information about bucket naming
    #            restrictions, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/directory-bucket-naming-rules.html">Directory bucket naming
    #               rules</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <p>
    #               <b>Access points</b> - When you use this action with an access point for general purpose buckets, you must provide the alias of the access point in place of the bucket name or specify the access point ARN. When you use this action with an access point for directory buckets, you must provide the access point name in place of the bucket name. When using the access point ARN, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <note>
    #               <p>Object Lambda access points are not supported by directory buckets.</p>
    #            </note>
    #            <p>
    #               <b>S3 on Outposts</b> - When you use this action with S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the
    #                        form <code>
    #                  <i>AccessPointName</i>-<i>AccountId</i>.<i>outpostID</i>.s3-outposts.<i>Region</i>.amazonaws.com</code>. When you use this action with S3 on Outposts, the destination bucket must be the Outposts access point ARN or the access point alias. For more information about S3 on Outposts, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html">What is S3 on Outposts?</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute key
    #   <p>Object key for which the multipart upload was initiated.</p>
    #   @return [String]
    # @!attribute multipart_upload
    #   <p>The container for the multipart upload request information.</p>
    #   @return [Types::CompletedMultipartUpload]
    # @!attribute upload_id
    #   <p>ID for the initiated multipart upload.</p>
    #   @return [String]
    # @!attribute checksum_crc32
    #   <p>This header can be used as a data integrity check to verify that the data received is the same data that was originally sent.
    #       This header specifies the Base64 encoded, 32-bit <code>CRC32</code> checksum of the object. For more information, see
    #       <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in the
    #       <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_crc32_c
    #   <p>This header can be used as a data integrity check to verify that the data received is the same data that was originally sent.
    #       This header specifies the Base64 encoded, 32-bit <code>CRC32C</code> checksum of the object. For more information, see
    #       <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in the
    #       <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_crc64_nvme
    #   <p>This header can be used as a data integrity check to verify that the data received is the same data
    #         that was originally sent. This header specifies the Base64 encoded, 64-bit <code>CRC64NVME</code>
    #         checksum of the object. The <code>CRC64NVME</code> checksum is always a full object checksum. For more
    #         information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity in the Amazon S3
    #           User Guide</a>.</p>
    #   @return [String]
    # @!attribute checksum_sha1
    #   <p>This header can be used as a data integrity check to verify that the data received is the same data that was originally sent.
    #       This header specifies the Base64 encoded, 160-bit <code>SHA1</code> digest of the object. For more information, see
    #       <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in the
    #       <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_sha256
    #   <p>This header can be used as a data integrity check to verify that the data received is the same data that was originally sent.
    #       This header specifies the Base64 encoded, 256-bit <code>SHA256</code> digest of the object. For more information, see
    #       <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in the
    #       <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_sha512
    #   <p>This header can be used as a data integrity check to verify that the data received is the same data
    #         that was originally sent. This header specifies the Base64 encoded, 512-bit <code>SHA512</code>
    #         digest of the object. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity in the Amazon S3
    #           User Guide</a>.</p>
    #   @return [String]
    # @!attribute checksum_md5
    #   <p>This header can be used as a data integrity check to verify that the data received is the same data
    #         that was originally sent. This header specifies the Base64 encoded, 128-bit <code>MD5</code>
    #         digest of the object. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity in the Amazon S3
    #           User Guide</a>.</p>
    #   @return [String]
    # @!attribute checksum_xxhash64
    #   <p>This header can be used as a data integrity check to verify that the data received is the same data
    #         that was originally sent. This header specifies the Base64 encoded, 64-bit <code>XXHASH64</code>
    #         checksum of the object. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity in the Amazon S3
    #           User Guide</a>.</p>
    #   @return [String]
    # @!attribute checksum_xxhash3
    #   <p>This header can be used as a data integrity check to verify that the data received is the same data
    #         that was originally sent. This header specifies the Base64 encoded, 64-bit <code>XXHASH3</code>
    #         checksum of the object. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity in the Amazon S3
    #           User Guide</a>.</p>
    #   @return [String]
    # @!attribute checksum_xxhash128
    #   <p>This header can be used as a data integrity check to verify that the data received is the same data
    #         that was originally sent. This header specifies the Base64 encoded, 128-bit <code>XXHASH128</code>
    #         checksum of the object. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity in the Amazon S3
    #           User Guide</a>.</p>
    #   @return [String]
    # @!attribute checksum_type
    #   <p>This header specifies the checksum type of the object, which determines how part-level checksums are
    #         combined to create an object-level checksum for multipart objects. You can use this header as a data
    #         integrity check to verify that the checksum type that is received is the same checksum that was
    #         specified. If the checksum type doesn’t match the checksum type that was specified for the object during
    #         the <code>CreateMultipartUpload</code> request, it’ll result in a <code>BadDigest</code> error. For more
    #         information, see Checking object integrity in the Amazon S3 User Guide. </p>
    #   @return [String]
    # @!attribute mpu_object_size
    #   <p> The expected total object size of the multipart upload request. If there’s a mismatch between the
    #         specified object size value and the actual object size value, it results in an <code>HTTP 400
    #           InvalidRequest</code> error. </p>
    #   @return [Integer]
    # @!attribute request_payer
    #   <p>Confirms that the requester knows that they will be charged for the request. Bucket owners need not
    #         specify this parameter in their requests. If either the source or destination S3 bucket has Requester
    #         Pays enabled, the requester will pay for the corresponding charges. For information about
    #         downloading objects from Requester Pays buckets, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html">Downloading Objects in Requester Pays
    #           Buckets</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    # @!attribute if_match
    #   <p>Uploads the object only if the ETag (entity tag) value provided during the WRITE operation matches
    #         the ETag of the object in S3. If the ETag values do not match, the operation returns a <code>412
    #           Precondition Failed</code> error.</p>
    #            <p>If a conflicting operation occurs during the upload S3 returns a <code>409
    #           ConditionalRequestConflict</code> response. On a 409 failure you should fetch the object's ETag,
    #         re-initiate the multipart upload with <code>CreateMultipartUpload</code>, and re-upload each
    #         part.</p>
    #            <p>Expects the ETag value as a string.</p>
    #            <p>For more information about conditional requests, see <a href="https://tools.ietf.org/html/rfc7232">RFC 7232</a>, or <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/conditional-requests.html">Conditional requests</a> in the
    #           <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute if_none_match
    #   <p>Uploads the object only if the object key name does not already exist in the bucket specified.
    #         Otherwise, Amazon S3 returns a <code>412 Precondition Failed</code> error.</p>
    #            <p>If a conflicting operation occurs during the upload S3 returns a <code>409
    #           ConditionalRequestConflict</code> response. On a 409 failure you should re-initiate the multipart
    #         upload with <code>CreateMultipartUpload</code> and re-upload each part.</p>
    #            <p>Expects the '*' (asterisk) character.</p>
    #            <p>For more information about conditional requests, see <a href="https://tools.ietf.org/html/rfc7232">RFC 7232</a>, or <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/conditional-requests.html">Conditional requests</a> in the
    #           <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute sse_customer_algorithm
    #   <p>The server-side encryption (SSE) algorithm used to encrypt the object. This parameter is required
    #         only when the object was created using a checksum algorithm or if your bucket policy requires the use of
    #         SSE-C. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/ServerSideEncryptionCustomerKeys.html#ssec-require-condition-key">Protecting data using SSE-C keys</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute sse_customer_key
    #   <p>The server-side encryption (SSE) customer managed key. This parameter is needed only when the object was created using a checksum algorithm.
    #       For more information, see
    #       <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ServerSideEncryptionCustomerKeys.html">Protecting data using SSE-C keys</a> in the
    #       <i>Amazon S3 User Guide</i>.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute sse_customer_key_md5
    #   <p>The MD5 server-side encryption (SSE) customer managed key. This parameter is needed only when the object was created using a checksum
    #       algorithm. For more information,
    #       see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ServerSideEncryptionCustomerKeys.html">Protecting data using SSE-C keys</a> in the
    #       <i>Amazon S3 User Guide</i>.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    class CompleteMultipartUploadRequest < Struct.new(
      nil,
      :bucket,
      :key,
      :multipart_upload,
      :upload_id,
      :checksum_crc32,
      :checksum_crc32_c,
      :checksum_crc64_nvme,
      :checksum_sha1,
      :checksum_sha256,
      :checksum_sha512,
      :checksum_md5,
      :checksum_xxhash64,
      :checksum_xxhash3,
      :checksum_xxhash128,
      :checksum_type,
      :mpu_object_size,
      :request_payer,
      :expected_bucket_owner,
      :if_match,
      :if_none_match,
      :sse_customer_algorithm,
      :sse_customer_key,
      :sse_customer_key_md5,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The container for the completed multipart upload details.</p>
    # @!attribute parts
    #   <p>Array of CompletedPart data types.</p>
    #            <p>If you do not supply a valid <code>Part</code> with your request, the service sends back an HTTP 400
    #         response.</p>
    #   @return [Array<Types::CompletedPart>]
    class CompletedMultipartUpload < Struct.new(
      nil,
      :parts,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details of the parts that were uploaded.</p>
    # @!attribute e_tag
    #   <p>Entity tag returned when the part was uploaded.</p>
    #   @return [String]
    # @!attribute checksum_crc32
    #   <p>The Base64 encoded, 32-bit <code>CRC32</code> checksum of the part. This checksum is present if the
    #         multipart upload request was created with the <code>CRC32</code> checksum algorithm. For more
    #         information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #         the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_crc32_c
    #   <p>The Base64 encoded, 32-bit <code>CRC32C</code> checksum of the part. This checksum is present if the
    #         multipart upload request was created with the <code>CRC32C</code> checksum algorithm. For more
    #         information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #         the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_crc64_nvme
    #   <p>The Base64 encoded, 64-bit <code>CRC64NVME</code> checksum of the part. This checksum is present if
    #         the multipart upload request was created with the <code>CRC64NVME</code> checksum algorithm. For more
    #         information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #         the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_sha1
    #   <p>The Base64 encoded, 160-bit <code>SHA1</code> checksum of the part. This checksum is present if the
    #         multipart upload request was created with the <code>SHA1</code> checksum algorithm. For more
    #         information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #         the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_sha256
    #   <p>The Base64 encoded, 256-bit <code>SHA256</code> checksum of the part. This checksum is present if
    #         the multipart upload request was created with the <code>SHA256</code> checksum algorithm. For more
    #         information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #         the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_sha512
    #   <p>The Base64 encoded, 512-bit <code>SHA512</code> digest of the part. This checksum is present if
    #         the multipart upload request was created with the <code>SHA512</code> checksum algorithm. For more
    #         information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #         the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_md5
    #   <p>The Base64 encoded, 128-bit <code>MD5</code> digest of the part. This checksum is present if
    #         the multipart upload request was created with the <code>MD5</code> checksum algorithm. For more
    #         information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #         the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_xxhash64
    #   <p>The Base64 encoded, 64-bit <code>XXHASH64</code> checksum of the part. This checksum is present if
    #         the multipart upload request was created with the <code>XXHASH64</code> checksum algorithm. For more
    #         information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #         the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_xxhash3
    #   <p>The Base64 encoded, 64-bit <code>XXHASH3</code> checksum of the part. This checksum is present if
    #         the multipart upload request was created with the <code>XXHASH3</code> checksum algorithm. For more
    #         information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #         the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_xxhash128
    #   <p>The Base64 encoded, 128-bit <code>XXHASH128</code> checksum of the part. This checksum is present if
    #         the multipart upload request was created with the <code>XXHASH128</code> checksum algorithm. For more
    #         information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #         the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute part_number
    #   <p>Part number that identifies the part. This is a positive integer between 1 and 10,000.</p>
    #            <note>
    #               <ul>
    #                  <li>
    #                     <p>
    #                        <b>General purpose buckets</b> - In
    #                 <code>CompleteMultipartUpload</code>, when a additional checksum (including
    #                 <code>x-amz-checksum-crc32</code>, <code>x-amz-checksum-crc32c</code>,
    #                 <code>x-amz-checksum-sha1</code>, or <code>x-amz-checksum-sha256</code>) is applied to each
    #               part, the <code>PartNumber</code> must start at 1 and the part numbers must be consecutive.
    #               Otherwise, Amazon S3 generates an HTTP <code>400 Bad Request</code> status code and an
    #                 <code>InvalidPartOrder</code> error code.</p>
    #                  </li>
    #                  <li>
    #                     <p>
    #                        <b>Directory buckets</b> - In
    #                 <code>CompleteMultipartUpload</code>, the <code>PartNumber</code> must start at 1 and the part
    #               numbers must be consecutive.</p>
    #                  </li>
    #               </ul>
    #            </note>
    #   @return [Integer]
    class CompletedPart < Struct.new(
      nil,
      :e_tag,
      :checksum_crc32,
      :checksum_crc32_c,
      :checksum_crc64_nvme,
      :checksum_sha1,
      :checksum_sha256,
      :checksum_sha512,
      :checksum_md5,
      :checksum_xxhash64,
      :checksum_xxhash3,
      :checksum_xxhash128,
      :part_number,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A container for describing a condition that must be met for the specified redirect to apply. For
    #       example, 1. If request is for pages in the <code>/docs</code> folder, redirect to the
    #         <code>/documents</code> folder. 2. If request results in HTTP error 4xx, redirect request to another
    #       host where you might process the error.</p>
    # @!attribute http_error_code_returned_equals
    #   <p>The HTTP error code when the redirect is applied. In the event of an error, if the error code equals
    #         this value, then the specified redirect is applied. Required when parent element <code>Condition</code>
    #         is specified and sibling <code>KeyPrefixEquals</code> is not specified. If both are specified, then both
    #         must be true for the redirect to be applied.</p>
    #   @return [String]
    # @!attribute key_prefix_equals
    #   <p>The object key name prefix when the redirect is applied. For example, to redirect requests for
    #           <code>ExamplePage.html</code>, the key prefix will be <code>ExamplePage.html</code>. To redirect
    #         request for all pages with the prefix <code>docs/</code>, the key prefix will be <code>/docs</code>,
    #         which identifies all objects in the <code>docs/</code> folder. Required when the parent element
    #           <code>Condition</code> is specified and sibling <code>HttpErrorCodeReturnedEquals</code> is not
    #         specified. If both conditions are specified, both must be true for the redirect to be applied.</p>
    #            <important>
    #               <p>Replacement must be made for object keys containing special characters (such as carriage returns) when using
    #            XML requests. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-keys.html#object-key-xml-related-constraints">
    #               XML related object key constraints</a>.</p>
    #            </important>
    #   @return [String]
    class Condition < Struct.new(
      nil,
      :http_error_code_returned_equals,
      :key_prefix_equals,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p></p>
    class ContinuationEvent < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute copy_object_result
    #   <p>Container for all response elements.</p>
    #   @return [Types::CopyObjectResult]
    # @!attribute expiration
    #   <p>If the object expiration is configured, the response includes this header.</p>
    #            <note>
    #               <p>Object expiration information is not returned in directory buckets and this header returns the
    #           value "<code>NotImplemented</code>" in all responses for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute copy_source_version_id
    #   <p>Version ID of the source object that was copied.</p>
    #            <note>
    #               <p>This functionality is not supported when the source object is in a directory bucket.</p>
    #            </note>
    #   @return [String]
    # @!attribute version_id
    #   <p>Version ID of the newly created copy.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute server_side_encryption
    #   <p>The server-side encryption algorithm used when you store this object in Amazon S3 or Amazon FSx.</p>
    #            <note>
    #               <p>When accessing data stored in Amazon FSx file systems using S3 access points, the only valid server side
    #           encryption option is <code>aws:fsx</code>.</p>
    #            </note>
    #   @return [String]
    # @!attribute sse_customer_algorithm
    #   <p>If server-side encryption with a customer-provided encryption key was requested, the response will
    #         include this header to confirm the encryption algorithm that's used.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute sse_customer_key_md5
    #   <p>If server-side encryption with a customer-provided encryption key was requested, the response will
    #         include this header to provide the round-trip message integrity verification of the customer-provided
    #         encryption key.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute ssekms_key_id
    #   <p>If present, indicates the ID of the KMS key that was used for object encryption.</p>
    #   @return [String]
    # @!attribute ssekms_encryption_context
    #   <p>If present, indicates the Amazon Web Services KMS Encryption Context to use for object encryption. The value of
    #         this header is a Base64 encoded UTF-8 string holding JSON with the encryption context key-value
    #         pairs.</p>
    #   @return [String]
    # @!attribute bucket_key_enabled
    #   <p>Indicates whether the copied object uses an S3 Bucket Key for server-side encryption with Key Management Service
    #         (KMS) keys (SSE-KMS).</p>
    #   @return [Boolean]
    # @!attribute request_charged
    #   <p>If present, indicates that the requester was successfully charged for the request. For more
    #         information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/RequesterPaysBuckets.html">Using Requester Pays buckets for storage transfers and usage</a> in the <i>Amazon Simple
    #           Storage Service user guide</i>.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    class CopyObjectOutput < Struct.new(
      nil,
      :copy_object_result,
      :expiration,
      :copy_source_version_id,
      :version_id,
      :server_side_encryption,
      :sse_customer_algorithm,
      :sse_customer_key_md5,
      :ssekms_key_id,
      :ssekms_encryption_context,
      :bucket_key_enabled,
      :request_charged,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute acl
    #   <p>The canned access control list (ACL) to apply to the object.</p>
    #            <p>When you copy an object, the ACL metadata is not preserved and is set to <code>private</code> by
    #         default. Only the owner has full access control. To override the default ACL setting, specify a new ACL
    #         when you generate a copy request. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/S3_ACLs_UsingACLs.html">Using ACLs</a>. </p>
    #            <p>If the destination bucket that you're copying objects to uses the bucket owner enforced setting for
    #         S3 Object Ownership, ACLs are disabled and no longer affect permissions. Buckets that use this setting
    #         only accept <code>PUT</code> requests that don't specify an ACL or <code>PUT</code> requests that
    #         specify bucket owner full control ACLs, such as the <code>bucket-owner-full-control</code> canned ACL or
    #         an equivalent form of this ACL expressed in the XML format. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/about-object-ownership.html">Controlling ownership
    #           of objects and disabling ACLs</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <note>
    #               <ul>
    #                  <li>
    #                     <p>If your destination bucket uses the bucket owner enforced setting for Object Ownership, all
    #               objects written to the bucket by any account will be owned by the bucket owner.</p>
    #                  </li>
    #                  <li>
    #                     <p>This functionality is not supported for directory buckets.</p>
    #                  </li>
    #                  <li>
    #                     <p>This functionality is not supported for Amazon S3 on Outposts.</p>
    #                  </li>
    #               </ul>
    #            </note>
    #   @return [String]
    # @!attribute bucket
    #   <p>The name of the destination bucket.</p>
    #            <p>
    #               <b>Directory buckets</b> - When you use this operation with a directory bucket, you must use virtual-hosted-style requests in the format <code>
    #                  <i>Bucket-name</i>.s3express-<i>zone-id</i>.<i>region-code</i>.amazonaws.com</code>. Path-style requests are not supported.  Directory bucket names must be unique in the chosen Zone (Availability Zone or Local Zone). Bucket names must follow the format <code>
    #                  <i>bucket-base-name</i>--<i>zone-id</i>--x-s3</code> (for example, <code>
    #                  <i>amzn-s3-demo-bucket</i>--<i>usw2-az1</i>--x-s3</code>). For information about bucket naming
    #            restrictions, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/directory-bucket-naming-rules.html">Directory bucket naming
    #               rules</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <note>
    #               <p>Copying objects across different Amazon Web Services Regions isn't supported when the source or destination
    #           bucket is in Amazon Web Services Local Zones. The source and destination buckets must have the same parent Amazon Web Services Region.
    #           Otherwise, you get an HTTP <code>400 Bad Request</code> error with the error code
    #             <code>InvalidRequest</code>.</p>
    #            </note>
    #            <p>
    #               <b>Access points</b> - When you use this action with an access point for general purpose buckets, you must provide the alias of the access point in place of the bucket name or specify the access point ARN. When you use this action with an access point for directory buckets, you must provide the access point name in place of the bucket name. When using the access point ARN, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <note>
    #               <p>Object Lambda access points are not supported by directory buckets.</p>
    #            </note>
    #            <p>
    #               <b>S3 on Outposts</b> - When you use this action with S3 on Outposts,
    #         you must use the Outpost bucket access point ARN or the access point alias for the destination bucket.
    #         You can only copy objects within the same Outpost bucket. It's not supported to copy objects across
    #         different Amazon Web Services Outposts, between buckets on the same Outposts, or between Outposts buckets and any
    #         other bucket types. For more information about S3 on Outposts, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html">What is S3 on Outposts?</a> in the
    #           <i>S3 on Outposts guide</i>. When you use this action with S3 on Outposts through the REST
    #         API, you must direct requests to the S3 on Outposts hostname, in the format
    #             <code>
    #                  <i>AccessPointName</i>-<i>AccountId</i>.<i>outpostID</i>.s3-outposts.<i>Region</i>.amazonaws.com</code>.
    #         The hostname isn't required when you use the Amazon Web Services CLI or SDKs. </p>
    #   @return [String]
    # @!attribute cache_control
    #   <p>Specifies the caching behavior along the request/reply chain.</p>
    #   @return [String]
    # @!attribute checksum_algorithm
    #   <p>Indicates the algorithm that you want Amazon S3 to use to create the checksum for the object. For more information, see
    #       <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #       the <i>Amazon S3 User Guide</i>.</p>
    #            <p>When you copy an object, if the source object has a checksum, that checksum value will be copied to
    #         the new object by default. If the <code>CopyObject</code> request does not include this
    #           <code>x-amz-checksum-algorithm</code> header, the checksum algorithm will be copied from the source
    #         object to the destination object (if it's present on the source object). You can optionally specify a
    #         different checksum algorithm to use with the <code>x-amz-checksum-algorithm</code> header. Unrecognized
    #         or unsupported values will respond with the HTTP status code <code>400 Bad Request</code>.</p>
    #            <note>
    #               <p>For directory buckets, when you use Amazon Web Services SDKs, <code>CRC32</code> is the default checksum algorithm that's used for performance.</p>
    #            </note>
    #   @return [String]
    # @!attribute content_disposition
    #   <p>Specifies presentational information for the object. Indicates whether an object should be displayed
    #         in a web browser or downloaded as a file. It allows specifying the desired filename for the downloaded
    #         file.</p>
    #   @return [String]
    # @!attribute content_encoding
    #   <p>Specifies what content encodings have been applied to the object and thus what decoding mechanisms
    #         must be applied to obtain the media-type referenced by the Content-Type header field.</p>
    #            <note>
    #               <p>For directory buckets, only the <code>aws-chunked</code> value is supported in this header field.</p>
    #            </note>
    #   @return [String]
    # @!attribute content_language
    #   <p>The language the content is in.</p>
    #   @return [String]
    # @!attribute content_type
    #   <p>A standard MIME type that describes the format of the object data.</p>
    #   @return [String]
    # @!attribute copy_source
    #   <p>Specifies the source object for the copy operation. The source object can be up to 5 GB. If the
    #         source object is an object that was uploaded by using a multipart upload, the object copy will be a
    #         single part object after the source object is copied to the destination bucket.</p>
    #            <p>You specify the value of the copy source in one of two formats, depending on whether you want to
    #         access the source object through an <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-points.html">access point</a>:</p>
    #            <ul>
    #               <li>
    #                  <p>For objects not accessed through an access point, specify the name of the source bucket and the key of
    #             the source object, separated by a slash (/). For example, to copy the object
    #               <code>reports/january.pdf</code> from the general purpose bucket <code>awsexamplebucket</code>, use
    #               <code>awsexamplebucket/reports/january.pdf</code>. The value must be URL-encoded. To copy the
    #             object <code>reports/january.pdf</code> from the directory bucket
    #               <code>awsexamplebucket--use1-az5--x-s3</code>, use
    #               <code>awsexamplebucket--use1-az5--x-s3/reports/january.pdf</code>. The value must be
    #             URL-encoded.</p>
    #               </li>
    #               <li>
    #                  <p>For objects accessed through access points, specify the Amazon Resource Name (ARN) of the object as accessed through the access point, in the format <code>arn:aws:s3:<Region>:<account-id>:accesspoint/<access-point-name>/object/<key></code>. For example, to copy the object <code>reports/january.pdf</code> through access point <code>my-access-point</code> owned by account <code>123456789012</code> in Region <code>us-west-2</code>, use the URL encoding of <code>arn:aws:s3:us-west-2:123456789012:accesspoint/my-access-point/object/reports/january.pdf</code>. The value must be URL encoded.</p>
    #                  <note>
    #                     <ul>
    #                        <li>
    #                           <p>Amazon S3 supports copy operations using Access points only when the source and destination buckets are in the same Amazon Web Services Region.</p>
    #                        </li>
    #                        <li>
    #                           <p>Access points are not supported by directory buckets.</p>
    #                        </li>
    #                     </ul>
    #                  </note>
    #                  <p>Alternatively, for objects accessed through Amazon S3 on Outposts, specify the ARN of the object as accessed in the format <code>arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/object/<key></code>. For example, to copy the object <code>reports/january.pdf</code> through outpost <code>my-outpost</code> owned by account <code>123456789012</code> in Region <code>us-west-2</code>, use the URL encoding of <code>arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/object/reports/january.pdf</code>. The value must be URL-encoded.  </p>
    #               </li>
    #            </ul>
    #            <p>If your source bucket versioning is enabled, the <code>x-amz-copy-source</code> header by default
    #         identifies the current version of an object to copy. If the current version is a delete marker, Amazon S3
    #         behaves as if the object was deleted. To copy a different version, use the <code>versionId</code> query
    #         parameter. Specifically, append <code>?versionId=<version-id></code> to the value (for example,
    #           <code>awsexamplebucket/reports/january.pdf?versionId=QUpfdndhfd8438MNFDN93jdnJFkdmqnh893</code>). If
    #         you don't specify a version ID, Amazon S3 copies the latest version of the source object.</p>
    #            <p>If you enable versioning on the destination bucket, Amazon S3 generates a unique version ID for the
    #         copied object. This version ID is different from the version ID of the source object. Amazon S3 returns the
    #         version ID of the copied object in the <code>x-amz-version-id</code> response header in the
    #         response.</p>
    #            <p>If you do not enable versioning or suspend it on the destination bucket, the version ID that Amazon S3
    #         generates in the <code>x-amz-version-id</code> response header is always null.</p>
    #            <note>
    #               <p>
    #                  <b>Directory buckets</b> - S3 Versioning isn't enabled and supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute copy_source_if_match
    #   <p>Copies the object if its entity tag (ETag) matches the specified tag.</p>
    #            <p> If both the <code>x-amz-copy-source-if-match</code> and
    #           <code>x-amz-copy-source-if-unmodified-since</code> headers are present in the request and evaluate as
    #         follows, Amazon S3 returns <code>200 OK</code> and copies the data:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>x-amz-copy-source-if-match</code> condition evaluates to true</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>x-amz-copy-source-if-unmodified-since</code> condition evaluates to false</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute copy_source_if_modified_since
    #   <p>Copies the object if it has been modified since the specified time.</p>
    #            <p>If both the <code>x-amz-copy-source-if-none-match</code> and
    #           <code>x-amz-copy-source-if-modified-since</code> headers are present in the request and evaluate as
    #         follows, Amazon S3 returns the <code>412 Precondition Failed</code> response code:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>x-amz-copy-source-if-none-match</code> condition evaluates to false</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>x-amz-copy-source-if-modified-since</code> condition evaluates to true</p>
    #               </li>
    #            </ul>
    #   @return [Time]
    # @!attribute copy_source_if_none_match
    #   <p>Copies the object if its entity tag (ETag) is different than the specified ETag.</p>
    #            <p>If both the <code>x-amz-copy-source-if-none-match</code> and
    #           <code>x-amz-copy-source-if-modified-since</code> headers are present in the request and evaluate as
    #         follows, Amazon S3 returns the <code>412 Precondition Failed</code> response code:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>x-amz-copy-source-if-none-match</code> condition evaluates to false</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>x-amz-copy-source-if-modified-since</code> condition evaluates to true</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute copy_source_if_unmodified_since
    #   <p>Copies the object if it hasn't been modified since the specified time.</p>
    #            <p> If both the <code>x-amz-copy-source-if-match</code> and
    #           <code>x-amz-copy-source-if-unmodified-since</code> headers are present in the request and evaluate as
    #         follows, Amazon S3 returns <code>200 OK</code> and copies the data:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>x-amz-copy-source-if-match</code> condition evaluates to true</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>x-amz-copy-source-if-unmodified-since</code> condition evaluates to false</p>
    #               </li>
    #            </ul>
    #   @return [Time]
    # @!attribute expires
    #   <p>The date and time at which the object is no longer cacheable.</p>
    #   @return [String]
    # @!attribute grant_full_control
    #   <p>Gives the grantee READ, READ_ACP, and WRITE_ACP permissions on the object.</p>
    #            <note>
    #               <ul>
    #                  <li>
    #                     <p>This functionality is not supported for directory buckets.</p>
    #                  </li>
    #                  <li>
    #                     <p>This functionality is not supported for Amazon S3 on Outposts.</p>
    #                  </li>
    #               </ul>
    #            </note>
    #   @return [String]
    # @!attribute grant_read
    #   <p>Allows grantee to read the object data and its metadata.</p>
    #            <note>
    #               <ul>
    #                  <li>
    #                     <p>This functionality is not supported for directory buckets.</p>
    #                  </li>
    #                  <li>
    #                     <p>This functionality is not supported for Amazon S3 on Outposts.</p>
    #                  </li>
    #               </ul>
    #            </note>
    #   @return [String]
    # @!attribute grant_read_acp
    #   <p>Allows grantee to read the object ACL.</p>
    #            <note>
    #               <ul>
    #                  <li>
    #                     <p>This functionality is not supported for directory buckets.</p>
    #                  </li>
    #                  <li>
    #                     <p>This functionality is not supported for Amazon S3 on Outposts.</p>
    #                  </li>
    #               </ul>
    #            </note>
    #   @return [String]
    # @!attribute grant_write_acp
    #   <p>Allows grantee to write the ACL for the applicable object.</p>
    #            <note>
    #               <ul>
    #                  <li>
    #                     <p>This functionality is not supported for directory buckets.</p>
    #                  </li>
    #                  <li>
    #                     <p>This functionality is not supported for Amazon S3 on Outposts.</p>
    #                  </li>
    #               </ul>
    #            </note>
    #   @return [String]
    # @!attribute if_match
    #   <p>Copies the object if the entity tag (ETag) of the destination object matches the specified
    #         tag. If the ETag values do not match, the operation returns a <code>412 Precondition
    #           Failed</code> error. If a concurrent operation occurs during the upload S3 returns a
    #           <code>409 ConditionalRequestConflict</code> response. On a 409 failure you should fetch the
    #         object's ETag and retry the upload.</p>
    #            <p>Expects the ETag value as a string.</p>
    #            <p>For more information about conditional requests, see <a href="https://tools.ietf.org/html/rfc7232">RFC 7232</a>.</p>
    #   @return [String]
    # @!attribute if_none_match
    #   <p>Copies the object only if the object key name at the destination does not already exist in
    #         the bucket specified. Otherwise, Amazon S3 returns a <code>412 Precondition Failed</code> error. If a
    #         concurrent operation occurs during the upload S3 returns a <code>409 ConditionalRequestConflict</code>
    #         response. On a 409 failure you should retry the upload.</p>
    #            <p>Expects the '*' (asterisk) character.</p>
    #            <p>For more information about conditional requests, see <a href="https://tools.ietf.org/html/rfc7232">RFC 7232</a>.</p>
    #   @return [String]
    # @!attribute key
    #   <p>The key of the destination object.</p>
    #   @return [String]
    # @!attribute metadata
    #   <p>A map of metadata to store with the object in S3.</p>
    #   @return [Hash<String, String>]
    # @!attribute metadata_directive
    #   <p>Specifies whether the metadata is copied from the source object or replaced with metadata that's
    #         provided in the request. When copying an object, you can preserve all metadata (the default) or specify
    #         new metadata. If this header isn’t specified, <code>COPY</code> is the default behavior. </p>
    #            <p>
    #               <b>General purpose bucket</b> - For general purpose buckets, when you grant
    #         permissions, you can use the <code>s3:x-amz-metadata-directive</code> condition key to enforce certain
    #         metadata behavior when objects are uploaded. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/amazon-s3-policy-keys.html">Amazon S3 condition key examples</a> in the
    #           <i>Amazon S3 User Guide</i>.</p>
    #            <note>
    #               <p>
    #                  <code>x-amz-website-redirect-location</code> is unique to each object and is not copied when using
    #           the <code>x-amz-metadata-directive</code> header. To copy the value, you must specify
    #             <code>x-amz-website-redirect-location</code> in the request header.</p>
    #            </note>
    #   @return [String]
    # @!attribute tagging_directive
    #   <p>Specifies whether the object tag-set is copied from the source object or replaced with the tag-set
    #         that's provided in the request.</p>
    #            <p>The default value is <code>COPY</code>.</p>
    #            <note>
    #               <p>
    #                  <b>Directory buckets</b> - For directory buckets in a <code>CopyObject</code> operation, only the empty tag-set is supported. Any requests that attempt to write non-empty tags into directory buckets will receive a <code>501 Not Implemented</code> status code.
    #   When the destination bucket is a directory bucket, you will receive a <code>501 Not Implemented</code> response in any of the following situations:</p>
    #               <ul>
    #                  <li>
    #                     <p>When you attempt to <code>COPY</code> the tag-set from an S3 source object that has non-empty tags.</p>
    #                  </li>
    #                  <li>
    #                     <p>When you attempt to <code>REPLACE</code> the tag-set of a source object and set a non-empty value to <code>x-amz-tagging</code>.</p>
    #                  </li>
    #                  <li>
    #                     <p>When you don't set the <code>x-amz-tagging-directive</code> header and the source object has non-empty tags. This is because the default value of <code>x-amz-tagging-directive</code> is <code>COPY</code>.</p>
    #                  </li>
    #               </ul>
    #               <p>Because only the empty tag-set is supported for directory buckets in a <code>CopyObject</code> operation, the following situations are allowed:</p>
    #               <ul>
    #                  <li>
    #                     <p>When you attempt to <code>COPY</code> the tag-set from a directory bucket source object that has no tags to a general purpose bucket. It copies an empty tag-set to the destination object.</p>
    #                  </li>
    #                  <li>
    #                     <p>When you attempt to <code>REPLACE</code> the tag-set of a directory bucket source object and set the <code>x-amz-tagging</code> value of the directory bucket destination object to empty.</p>
    #                  </li>
    #                  <li>
    #                     <p>When you attempt to <code>REPLACE</code> the tag-set of a general purpose bucket source object that has non-empty tags and set the <code>x-amz-tagging</code> value of the directory bucket destination object to empty.</p>
    #                  </li>
    #                  <li>
    #                     <p>When you attempt to <code>REPLACE</code> the tag-set of a directory bucket source object and don't set the <code>x-amz-tagging</code> value of the directory bucket destination object. This is because the default value of <code>x-amz-tagging</code> is the empty value.</p>
    #                  </li>
    #               </ul>
    #            </note>
    #   @return [String]
    # @!attribute annotation_directive
    #   <p>Specifies whether you want to copy annotations from the source object or exclude them. If this
    #         header isn't specified, <code>COPY</code> is the default behavior.</p>
    #            <p>Valid Values: <code>COPY | EXCLUDE</code>
    #            </p>
    #            <p>You can specify this directive as either an HTTP header
    #         (<code>x-amz-object-annotation-directive</code>) or as a query string parameter. Use the query
    #         string form when generating presigned URLs that need to control annotation copy behavior.</p>
    #            <p>When set to <code>COPY</code>, you must have <code>s3:GetObjectAnnotation</code> permission on
    #         the source object and <code>s3:PutObjectAnnotation</code> permission on the destination. Each
    #         annotation copied is billed as a separate PUT request. If annotations on the source are modified
    #         during the copy, Amazon S3 returns a retryable error.</p>
    #            <note>
    #               <p>For directory buckets, annotations are not supported. Use <code>EXCLUDE</code> to copy
    #         objects to directory buckets without errors. If you specify <code>COPY</code> for a directory
    #         bucket, the request returns HTTP 501 (Not Implemented).</p>
    #            </note>
    #            <note>
    #               <p>When you copy objects using multipart upload (for example, when the Amazon Web Services CLI or Amazon Web Services SDKs
    #         use Transfer Manager for objects larger than approximately 8 MB), annotations are not copied by
    #         default. To include annotations, specify <code>--copy-props default</code> in the Amazon Web Services CLI or the
    #         equivalent SDK configuration. With this opt-in, the SDK reads source annotations, completes the
    #         multipart upload, and then writes each annotation to the destination. Between the upload completion
    #         and the last annotation write, the destination object exists without all its annotations.</p>
    #            </note>
    #   @return [String]
    # @!attribute server_side_encryption
    #   <p>The server-side encryption algorithm used when storing this object in Amazon S3. Unrecognized or
    #         unsupported values won’t write a destination object and will receive a <code>400 Bad Request</code>
    #         response. </p>
    #            <p>Amazon S3 automatically encrypts all new objects that are copied to an S3 bucket. When copying an object,
    #         if you don't specify encryption information in your copy request, the encryption setting of the target
    #         object is set to the default encryption configuration of the destination bucket. By default, all buckets
    #         have a base level of encryption configuration that uses server-side encryption with Amazon S3 managed keys
    #         (SSE-S3). If the destination bucket has a different default encryption configuration, Amazon S3 uses the
    #         corresponding encryption key to encrypt the target object copy.</p>
    #            <p>With server-side encryption, Amazon S3 encrypts your data as it writes your data to disks in its data
    #         centers and decrypts the data when you access it. For more information about server-side encryption, see
    #           <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/serv-side-encryption.html">Using Server-Side
    #           Encryption</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <p>
    #               <b>General purpose buckets </b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>For general purpose buckets, there are the following supported options for server-side encryption:
    #             server-side encryption with Key Management Service (KMS) keys (SSE-KMS), dual-layer server-side encryption with
    #             Amazon Web Services KMS keys (DSSE-KMS), and server-side encryption with customer-provided encryption keys
    #             (SSE-C). Amazon S3 uses the corresponding KMS key, or a customer-provided key to encrypt the target
    #             object copy.</p>
    #               </li>
    #               <li>
    #                  <p>When you perform a <code>CopyObject</code> operation, if you want to use a different type of
    #             encryption setting for the target object, you can specify appropriate encryption-related headers to
    #             encrypt the target object with an Amazon S3 managed key, a KMS key, or a customer-provided key. If the
    #             encryption setting in your request is different from the default encryption configuration of the
    #             destination bucket, the encryption setting in your request takes precedence. </p>
    #               </li>
    #            </ul>
    #            <p>
    #               <b>Directory buckets </b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>For directory buckets, there are only two supported options for server-side encryption: server-side encryption with Amazon S3 managed keys (SSE-S3) (<code>AES256</code>) and server-side encryption with KMS keys (SSE-KMS) (<code>aws:kms</code>). We recommend that the bucket's default encryption uses the desired encryption configuration and you don't override the bucket default encryption in your
    #               <code>CreateSession</code> requests or <code>PUT</code> object requests. Then, new objects
    #    are automatically encrypted with the desired encryption settings. For more
    #            information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-express-serv-side-encryption.html">Protecting data with server-side encryption</a> in the <i>Amazon S3 User Guide</i>. For more information about the encryption overriding behaviors in directory buckets, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-express-specifying-kms-encryption.html">Specifying server-side encryption with KMS for new object uploads</a>.</p>
    #               </li>
    #               <li>
    #                  <p>To encrypt new object copies to a directory bucket with SSE-KMS, we recommend you specify
    #             SSE-KMS as the directory bucket's default encryption configuration with a KMS key
    #             (specifically, a <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#customer-cmk">customer managed key</a>). The <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-managed-cmk">Amazon Web Services managed key</a> (<code>aws/s3</code>) isn't supported. Your SSE-KMS configuration can
    #             only support 1 <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#customer-cmk">customer managed key</a> per
    #             directory bucket for the lifetime of the bucket. After you specify a customer managed key for SSE-KMS, you
    #             can't override the customer managed key for the bucket's SSE-KMS configuration. Then, when you
    #             perform a <code>CopyObject</code> operation and want to specify server-side encryption settings for
    #             new object copies with SSE-KMS in the encryption-related request headers, you must ensure the
    #             encryption key is the same customer managed key that you specified for the directory bucket's default
    #             encryption configuration.
    #             </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>S3 access points for Amazon FSx </b> - When accessing data stored in
    #             Amazon FSx file systems using S3 access points, the only valid server side encryption option is
    #               <code>aws:fsx</code>. All Amazon FSx file systems have encryption configured by default and are
    #             encrypted at rest. Data is automatically encrypted before being written to the file system, and
    #             automatically decrypted as it is read. These processes are handled transparently by Amazon FSx.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute storage_class
    #   <p>If the <code>x-amz-storage-class</code> header is not used, the copied object will be stored in the
    #           <code>STANDARD</code> Storage Class by default. The <code>STANDARD</code> storage class provides high
    #         durability and high availability. Depending on performance needs, you can specify a different Storage
    #         Class. </p>
    #            <note>
    #               <ul>
    #                  <li>
    #                     <p>
    #                        <b>Directory buckets </b> -
    #               Directory buckets only support <code>EXPRESS_ONEZONE</code> (the S3 Express One Zone storage class) in Availability Zones and <code>ONEZONE_IA</code> (the S3 One Zone-Infrequent Access storage class) in Dedicated Local Zones.
    #   Unsupported storage class values won't write a destination object and will respond with the HTTP status code <code>400 Bad Request</code>.</p>
    #                  </li>
    #                  <li>
    #                     <p>
    #                        <b>Amazon S3 on Outposts </b> - S3 on Outposts only uses the
    #                 <code>OUTPOSTS</code> Storage Class.</p>
    #                  </li>
    #               </ul>
    #            </note>
    #            <p>You can use the <code>CopyObject</code> action to change the storage class of an object that is
    #         already stored in Amazon S3 by using the <code>x-amz-storage-class</code> header. For more information, see
    #           <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/storage-class-intro.html">Storage Classes</a>
    #         in the <i>Amazon S3 User Guide</i>.</p>
    #            <p>Before using an object as a source object for the copy operation, you must restore a copy of it if
    #         it meets any of the following conditions:</p>
    #            <ul>
    #               <li>
    #                  <p>The storage class of the source object is <code>GLACIER</code> or
    #             <code>DEEP_ARCHIVE</code>.</p>
    #               </li>
    #               <li>
    #                  <p>The storage class of the source object is <code>INTELLIGENT_TIERING</code> and it's <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/intelligent-tiering-overview.html#intel-tiering-tier-definition">S3
    #               Intelligent-Tiering access tier</a> is <code>Archive Access</code> or <code>Deep Archive
    #               Access</code>.</p>
    #               </li>
    #            </ul>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_RestoreObject.html">RestoreObject</a> and <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/CopyingObjectsExamples.html">Copying Objects</a> in the
    #           <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute website_redirect_location
    #   <p>If the destination bucket is configured as a website, redirects requests for this object copy to
    #         another object in the same bucket or to an external URL. Amazon S3 stores the value of this header in the
    #         object metadata. This value is unique to each object and is not copied when using the
    #           <code>x-amz-metadata-directive</code> header. Instead, you may opt to provide this header in
    #         combination with the <code>x-amz-metadata-directive</code> header.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute sse_customer_algorithm
    #   <p>Specifies the algorithm to use when encrypting the object (for example, <code>AES256</code>).</p>
    #            <p>When you perform a <code>CopyObject</code> operation, if you want to use a different type of
    #         encryption setting for the target object, you can specify appropriate encryption-related headers to
    #         encrypt the target object with an Amazon S3 managed key, a KMS key, or a customer-provided key. If the
    #         encryption setting in your request is different from the default encryption configuration of the
    #         destination bucket, the encryption setting in your request takes precedence. </p>
    #            <note>
    #               <p>This functionality is not supported when the destination bucket is a directory bucket.</p>
    #            </note>
    #   @return [String]
    # @!attribute sse_customer_key
    #   <p>Specifies the customer-provided encryption key for Amazon S3 to use in encrypting data. This value is
    #         used to store the object and then it is discarded. Amazon S3 does not store the encryption key. The key must
    #         be appropriate for use with the algorithm specified in the
    #           <code>x-amz-server-side-encryption-customer-algorithm</code> header.</p>
    #            <note>
    #               <p>This functionality is not supported when the destination bucket is a directory bucket.</p>
    #            </note>
    #   @return [String]
    # @!attribute sse_customer_key_md5
    #   <p>Specifies the 128-bit MD5 digest of the encryption key according to RFC 1321. Amazon S3 uses this header
    #         for a message integrity check to ensure that the encryption key was transmitted without error.</p>
    #            <note>
    #               <p>This functionality is not supported when the destination bucket is a directory bucket.</p>
    #            </note>
    #   @return [String]
    # @!attribute ssekms_key_id
    #   <p>Specifies the KMS key ID (Key ID, Key ARN, or Key Alias) to use for object encryption. All GET and
    #         PUT requests for an object protected by KMS will fail if they're not made via SSL or using SigV4. For
    #         information about configuring any of the officially supported Amazon Web Services SDKs and Amazon Web Services CLI, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingAWSSDK.html#specify-signature-version">Specifying
    #           the Signature Version in Request Authentication</a> in the
    #         <i>Amazon S3 User Guide</i>.</p>
    #            <p>
    #               <b>Directory buckets</b> -
    #         To encrypt data using SSE-KMS, it's recommended to specify the
    #   <code>x-amz-server-side-encryption</code> header to <code>aws:kms</code>. Then, the <code>x-amz-server-side-encryption-aws-kms-key-id</code> header implicitly uses
    #   the bucket's default KMS customer managed key ID. If you want to explicitly set the <code>
    #            x-amz-server-side-encryption-aws-kms-key-id</code> header, it must match the bucket's default customer managed key (using key ID or ARN, not alias). Your SSE-KMS configuration can only support 1 <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#customer-cmk">customer managed key</a> per directory bucket's lifetime.
    #   The <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-managed-cmk">Amazon Web Services managed key</a> (<code>aws/s3</code>) isn't supported.
    #
    #    Incorrect key specification results in an HTTP <code>400 Bad Request</code> error. </p>
    #   @return [String]
    # @!attribute ssekms_encryption_context
    #   <p>Specifies the Amazon Web Services KMS Encryption Context as an additional encryption context to use for the
    #         destination object encryption. The value of this header is a base64-encoded UTF-8 string holding JSON
    #         with the encryption context key-value pairs.</p>
    #            <p>
    #               <b>General purpose buckets</b> - This value must be explicitly added to
    #         specify encryption context for <code>CopyObject</code> requests if you want an additional encryption
    #         context for your destination object. The additional encryption context of the source object won't be
    #         copied to the destination object. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/UsingKMSEncryption.html#encryption-context">Encryption context</a>
    #         in the <i>Amazon S3 User Guide</i>.</p>
    #            <p>
    #               <b>Directory buckets</b> - You can optionally provide an explicit encryption context value. The value must match the default encryption context - the bucket Amazon Resource Name (ARN). An additional encryption context value is not supported. </p>
    #   @return [String]
    # @!attribute bucket_key_enabled
    #   <p>Specifies whether Amazon S3 should use an S3 Bucket Key for object encryption with server-side encryption
    #         using Key Management Service (KMS) keys (SSE-KMS). If a target object uses SSE-KMS, you can enable an S3 Bucket Key
    #         for the object.</p>
    #            <p>Setting this header to <code>true</code> causes Amazon S3 to use an S3 Bucket Key for object encryption
    #         with SSE-KMS. Specifying this header with a COPY action doesn’t affect bucket-level settings for S3
    #         Bucket Key.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/bucket-key.html">Amazon S3
    #           Bucket Keys</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <note>
    #               <p>
    #                  <b>Directory buckets</b> -
    #           S3 Bucket Keys aren't supported, when you copy SSE-KMS encrypted objects from general purpose buckets
    #   to directory buckets, from directory buckets to general purpose buckets, or between directory buckets, through <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_CopyObject.html">CopyObject</a>. In this case, Amazon S3 makes a call to KMS every time a copy request is made for a KMS-encrypted object.</p>
    #            </note>
    #   @return [Boolean]
    # @!attribute copy_source_sse_customer_algorithm
    #   <p>Specifies the algorithm to use when decrypting the source object (for example,
    #         <code>AES256</code>).</p>
    #            <p>If the source object for the copy is stored in Amazon S3 using SSE-C, you must provide the necessary
    #         encryption information in your request so that Amazon S3 can decrypt the object for copying.</p>
    #            <note>
    #               <p>This functionality is not supported when the source object is in a directory bucket.</p>
    #            </note>
    #   @return [String]
    # @!attribute copy_source_sse_customer_key
    #   <p>Specifies the customer-provided encryption key for Amazon S3 to use to decrypt the source object. The
    #         encryption key provided in this header must be the same one that was used when the source object was
    #         created.</p>
    #            <p>If the source object for the copy is stored in Amazon S3 using SSE-C, you must provide the necessary
    #         encryption information in your request so that Amazon S3 can decrypt the object for copying.</p>
    #            <note>
    #               <p>This functionality is not supported when the source object is in a directory bucket.</p>
    #            </note>
    #   @return [String]
    # @!attribute copy_source_sse_customer_key_md5
    #   <p>Specifies the 128-bit MD5 digest of the encryption key according to RFC 1321. Amazon S3 uses this header
    #         for a message integrity check to ensure that the encryption key was transmitted without error.</p>
    #            <p>If the source object for the copy is stored in Amazon S3 using SSE-C, you must provide the necessary
    #         encryption information in your request so that Amazon S3 can decrypt the object for copying.</p>
    #            <note>
    #               <p>This functionality is not supported when the source object is in a directory bucket.</p>
    #            </note>
    #   @return [String]
    # @!attribute request_payer
    #   <p>Confirms that the requester knows that they will be charged for the request. Bucket owners need not
    #         specify this parameter in their requests. If either the source or destination S3 bucket has Requester
    #         Pays enabled, the requester will pay for the corresponding charges. For information about
    #         downloading objects from Requester Pays buckets, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html">Downloading Objects in Requester Pays
    #           Buckets</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute tagging
    #   <p>The tag-set for the object copy in the destination bucket. This value must be used in conjunction
    #         with the <code>x-amz-tagging-directive</code> if you choose <code>REPLACE</code> for the
    #           <code>x-amz-tagging-directive</code>. If you choose <code>COPY</code> for the
    #           <code>x-amz-tagging-directive</code>, you don't need to set the <code>x-amz-tagging</code> header,
    #         because the tag-set will be copied from the source object directly. The tag-set must be encoded as URL
    #         Query parameters.</p>
    #            <p>The default value is the empty value.</p>
    #            <note>
    #               <p>
    #                  <b>Directory buckets</b> - For directory buckets in a <code>CopyObject</code> operation, only the empty tag-set is supported. Any requests that attempt to write non-empty tags into directory buckets will receive a <code>501 Not Implemented</code> status code.
    #   When the destination bucket is a directory bucket, you will receive a <code>501 Not Implemented</code> response in any of the following situations:</p>
    #               <ul>
    #                  <li>
    #                     <p>When you attempt to <code>COPY</code> the tag-set from an S3 source object that has non-empty tags.</p>
    #                  </li>
    #                  <li>
    #                     <p>When you attempt to <code>REPLACE</code> the tag-set of a source object and set a non-empty value to <code>x-amz-tagging</code>.</p>
    #                  </li>
    #                  <li>
    #                     <p>When you don't set the <code>x-amz-tagging-directive</code> header and the source object has non-empty tags. This is because the default value of <code>x-amz-tagging-directive</code> is <code>COPY</code>.</p>
    #                  </li>
    #               </ul>
    #               <p>Because only the empty tag-set is supported for directory buckets in a <code>CopyObject</code> operation, the following situations are allowed:</p>
    #               <ul>
    #                  <li>
    #                     <p>When you attempt to <code>COPY</code> the tag-set from a directory bucket source object that has no tags to a general purpose bucket. It copies an empty tag-set to the destination object.</p>
    #                  </li>
    #                  <li>
    #                     <p>When you attempt to <code>REPLACE</code> the tag-set of a directory bucket source object and set the <code>x-amz-tagging</code> value of the directory bucket destination object to empty.</p>
    #                  </li>
    #                  <li>
    #                     <p>When you attempt to <code>REPLACE</code> the tag-set of a general purpose bucket source object that has non-empty tags and set the <code>x-amz-tagging</code> value of the directory bucket destination object to empty.</p>
    #                  </li>
    #                  <li>
    #                     <p>When you attempt to <code>REPLACE</code> the tag-set of a directory bucket source object and don't set the <code>x-amz-tagging</code> value of the directory bucket destination object. This is because the default value of <code>x-amz-tagging</code> is the empty value.</p>
    #                  </li>
    #               </ul>
    #            </note>
    #   @return [String]
    # @!attribute object_lock_mode
    #   <p>The Object Lock mode that you want to apply to the object copy.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute object_lock_retain_until_date
    #   <p>The date and time when you want the Object Lock of the object copy to expire.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [Time]
    # @!attribute object_lock_legal_hold_status
    #   <p>Specifies whether you want to apply a legal hold to the object copy.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute object_lock_event_hold
    #   <p>The event hold status to apply to the object copy. Set to <code>ON</code> to enable or
    #         <code>OFF</code> to disable.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute object_lock_event_hold_duration_days
    #   <p>The event hold duration in days to apply to the object copy. You cannot specify a duration
    #         in both days and years.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [Integer]
    # @!attribute object_lock_event_hold_duration_years
    #   <p>The event hold duration in years to apply to the object copy. You cannot specify a
    #         duration in both days and years.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [Integer]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected destination bucket owner. If the account ID that you provide does not match the actual owner of the destination bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    # @!attribute expected_source_bucket_owner
    #   <p>The account ID of the expected source bucket owner. If the account ID that you provide does not match the actual owner of the source bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    class CopyObjectRequest < Struct.new(
      nil,
      :acl,
      :bucket,
      :cache_control,
      :checksum_algorithm,
      :content_disposition,
      :content_encoding,
      :content_language,
      :content_type,
      :copy_source,
      :copy_source_if_match,
      :copy_source_if_modified_since,
      :copy_source_if_none_match,
      :copy_source_if_unmodified_since,
      :expires,
      :grant_full_control,
      :grant_read,
      :grant_read_acp,
      :grant_write_acp,
      :if_match,
      :if_none_match,
      :key,
      :metadata,
      :metadata_directive,
      :tagging_directive,
      :annotation_directive,
      :server_side_encryption,
      :storage_class,
      :website_redirect_location,
      :sse_customer_algorithm,
      :sse_customer_key,
      :sse_customer_key_md5,
      :ssekms_key_id,
      :ssekms_encryption_context,
      :bucket_key_enabled,
      :copy_source_sse_customer_algorithm,
      :copy_source_sse_customer_key,
      :copy_source_sse_customer_key_md5,
      :request_payer,
      :tagging,
      :object_lock_mode,
      :object_lock_retain_until_date,
      :object_lock_legal_hold_status,
      :object_lock_event_hold,
      :object_lock_event_hold_duration_days,
      :object_lock_event_hold_duration_years,
      :expected_bucket_owner,
      :expected_source_bucket_owner,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for all response elements.</p>
    # @!attribute e_tag
    #   <p>Returns the ETag of the new object. The ETag reflects only changes to the contents of an object, not
    #         its metadata.</p>
    #   @return [String]
    # @!attribute last_modified
    #   <p>Creation date of the object.</p>
    #   @return [Time]
    # @!attribute checksum_type
    #   <p>The checksum type that is used to calculate the object’s checksum value. For more information, see
    #           <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking
    #           object integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_crc32
    #   <p>The Base64 encoded, 32-bit <code>CRC32</code> checksum of the object. This checksum is only present if the checksum was uploaded
    #       with the object. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">
    #       Checking object integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_crc32_c
    #   <p>The Base64 encoded, 32-bit <code>CRC32C</code> checksum of the object. This checksum is only present if the checksum was uploaded
    #       with the object. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">
    #       Checking object integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_crc64_nvme
    #   <p>The Base64 encoded, 64-bit <code>CRC64NVME</code> checksum of the object. This checksum is present
    #         if the object being copied was uploaded with the <code>CRC64NVME</code> checksum algorithm, or if the
    #         object was uploaded without a checksum (and Amazon S3 added the default checksum, <code>CRC64NVME</code>, to
    #         the uploaded object). For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #         the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_sha1
    #   <p>The Base64 encoded, 160-bit <code>SHA1</code> digest of the object. This checksum is only present if the checksum was uploaded
    #       with the object. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">
    #       Checking object integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_sha256
    #   <p>The Base64 encoded, 256-bit <code>SHA256</code> digest of the object. This checksum is only present if the checksum was uploaded
    #       with the object. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">
    #       Checking object integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_sha512
    #   <p>The Base64 encoded, 512-bit <code>SHA512</code> digest of the object. This checksum is only present
    #         if the object was uploaded with the <code>SHA512</code> checksum algorithm. For more information, see
    #         <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #         the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_md5
    #   <p>The Base64 encoded, 128-bit <code>MD5</code> digest of the object. This checksum is only present
    #         if the object was uploaded with the <code>MD5</code> checksum algorithm. For more information, see
    #         <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #         the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_xxhash64
    #   <p>The Base64 encoded, 64-bit <code>XXHASH64</code> checksum of the object. This checksum is only present
    #         if the object was uploaded with the <code>XXHASH64</code> checksum algorithm. For more information, see
    #         <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #         the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_xxhash3
    #   <p>The Base64 encoded, 64-bit <code>XXHASH3</code> checksum of the object. This checksum is only present
    #         if the object was uploaded with the <code>XXHASH3</code> checksum algorithm. For more information, see
    #         <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #         the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_xxhash128
    #   <p>The Base64 encoded, 128-bit <code>XXHASH128</code> checksum of the object. This checksum is only present
    #         if the object was uploaded with the <code>XXHASH128</code> checksum algorithm. For more information, see
    #         <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #         the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    class CopyObjectResult < Struct.new(
      nil,
      :e_tag,
      :last_modified,
      :checksum_type,
      :checksum_crc32,
      :checksum_crc32_c,
      :checksum_crc64_nvme,
      :checksum_sha1,
      :checksum_sha256,
      :checksum_sha512,
      :checksum_md5,
      :checksum_xxhash64,
      :checksum_xxhash3,
      :checksum_xxhash128,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for all response elements.</p>
    # @!attribute e_tag
    #   <p>Entity tag of the object.</p>
    #   @return [String]
    # @!attribute last_modified
    #   <p>Date and time at which the object was uploaded.</p>
    #   @return [Time]
    # @!attribute checksum_crc32
    #   <p>The Base64 encoded, 32-bit <code>CRC32</code> checksum of the part. This checksum is present if
    #         the multipart upload request was created with the <code>CRC32</code> checksum algorithm. For more
    #         information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #         the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_crc32_c
    #   <p>The Base64 encoded, 32-bit <code>CRC32C</code> checksum of the part. This checksum is present if
    #         the multipart upload request was created with the <code>CRC32C</code> checksum algorithm. For more
    #         information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #         the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_crc64_nvme
    #   <p>The Base64 encoded, 64-bit <code>CRC64NVME</code> checksum of the part. This checksum is present if
    #         the multipart upload request was created with the <code>CRC64NVME</code> checksum algorithm. For more
    #         information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #         the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_sha1
    #   <p>The Base64 encoded, 160-bit <code>SHA1</code> digest of the part. This checksum is present if
    #         the multipart upload request was created with the <code>SHA1</code> checksum algorithm. For more
    #         information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #         the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_sha256
    #   <p>The Base64 encoded, 256-bit <code>SHA256</code> digest of the part. This checksum is present if
    #         the multipart upload request was created with the <code>SHA256</code> checksum algorithm. For more
    #         information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #         the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_sha512
    #   <p>The Base64 encoded, 512-bit <code>SHA512</code> digest of the part. This checksum is present if
    #         the multipart upload request was created with the <code>SHA512</code> checksum algorithm. For more
    #         information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #         the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_md5
    #   <p>The Base64 encoded, 128-bit <code>MD5</code> digest of the part. This checksum is present if
    #         the multipart upload request was created with the <code>MD5</code> checksum algorithm. For more
    #         information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #         the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_xxhash64
    #   <p>The Base64 encoded, 64-bit <code>XXHASH64</code> checksum of the part. This checksum is present if
    #         the multipart upload request was created with the <code>XXHASH64</code> checksum algorithm. For more
    #         information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #         the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_xxhash3
    #   <p>The Base64 encoded, 64-bit <code>XXHASH3</code> checksum of the part. This checksum is present if
    #         the multipart upload request was created with the <code>XXHASH3</code> checksum algorithm. For more
    #         information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #         the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_xxhash128
    #   <p>The Base64 encoded, 128-bit <code>XXHASH128</code> checksum of the part. This checksum is present if
    #         the multipart upload request was created with the <code>XXHASH128</code> checksum algorithm. For more
    #         information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #         the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    class CopyPartResult < Struct.new(
      nil,
      :e_tag,
      :last_modified,
      :checksum_crc32,
      :checksum_crc32_c,
      :checksum_crc64_nvme,
      :checksum_sha1,
      :checksum_sha256,
      :checksum_sha512,
      :checksum_md5,
      :checksum_xxhash64,
      :checksum_xxhash3,
      :checksum_xxhash128,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration information for the bucket.</p>
    # @!attribute location_constraint
    #   <p>Specifies the Region where the bucket will be created. You might choose a Region to optimize
    #         latency, minimize costs, or address regulatory requirements. For example, if you reside in Europe, you
    #         will probably find it advantageous to create buckets in the Europe (Ireland) Region.</p>
    #            <p>If you don't specify a Region, the bucket is created in the US East (N. Virginia) Region (us-east-1)
    #         by default. Configurations using the value <code>EU</code> will create a bucket in
    #           <code>eu-west-1</code>.</p>
    #            <p>For a list of the valid values for all of the Amazon Web Services Regions, see <a href="https://docs.aws.amazon.com/general/latest/gr/rande.html#s3_region">Regions and Endpoints</a>.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute location
    #   <p>Specifies the location where the bucket will be created.</p>
    #            <p>
    #               <b>Directory buckets </b> - The location type is Availability Zone or Local Zone. To
    #         use the Local Zone location type, your account must be  enabled
    #         for Local Zones. Otherwise, you get an HTTP <code>403 Forbidden</code> error with the error code
    #           <code>AccessDenied</code>. To learn more,
    #         see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/opt-in-directory-bucket-lz.html">Enable
    #           accounts for Local Zones</a> in the <i>Amazon S3 User Guide</i>. </p>
    #            <note>
    #               <p>This functionality is only supported by directory buckets.</p>
    #            </note>
    #   @return [Types::LocationInfo]
    # @!attribute bucket
    #   <p>Specifies the information about the bucket that will be created.</p>
    #            <note>
    #               <p>This functionality is only supported by directory buckets.</p>
    #            </note>
    #   @return [Types::BucketInfo]
    # @!attribute tags
    #   <p>An array of tags that you can apply to the bucket that you're creating. Tags are key-value pairs of metadata used to categorize and organize your buckets, track costs, and control access. </p>
    #            <p>You must have the <code>s3:TagResource</code> permission to create a general
    #         purpose bucket with tags or the <code>s3express:TagResource</code> permission to create a directory bucket with tags.</p>
    #            <p>When creating buckets with tags, note that tag-based conditions using <code>aws:ResourceTag</code> and <code>s3:BucketTag</code> condition keys are applicable only after ABAC is enabled on the bucket. To learn more, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/buckets-tagging-enable-abac.html">Enabling ABAC in general purpose buckets</a>.</p>
    #   @return [Array<Types::Tag>]
    class CreateBucketConfiguration < Struct.new(
      nil,
      :location_constraint,
      :location,
      :bucket,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bucket
    #   <p>
    #         The general purpose bucket that you want to create the metadata configuration for.
    #       </p>
    #   @return [String]
    # @!attribute content_md5
    #   <p>
    #         The <code>Content-MD5</code> header for the metadata configuration.
    #       </p>
    #   @return [String]
    # @!attribute checksum_algorithm
    #   <p>
    #         The checksum algorithm to use with your metadata configuration.
    #       </p>
    #   @return [String]
    # @!attribute metadata_configuration
    #   <p>
    #         The contents of your metadata configuration.
    #       </p>
    #   @return [Types::MetadataConfiguration]
    # @!attribute expected_bucket_owner
    #   <p>
    #         The expected owner of the general purpose bucket that corresponds to your metadata configuration.
    #       </p>
    #   @return [String]
    class CreateBucketMetadataConfigurationRequest < Struct.new(
      nil,
      :bucket,
      :content_md5,
      :checksum_algorithm,
      :metadata_configuration,
      :expected_bucket_owner,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bucket
    #   <p> The general purpose bucket that you want to create the metadata table configuration for. </p>
    #   @return [String]
    # @!attribute content_md5
    #   <p> The <code>Content-MD5</code> header for the metadata table configuration. </p>
    #   @return [String]
    # @!attribute checksum_algorithm
    #   <p> The checksum algorithm to use with your metadata table configuration. </p>
    #   @return [String]
    # @!attribute metadata_table_configuration
    #   <p> The contents of your metadata table configuration. </p>
    #   @return [Types::MetadataTableConfiguration]
    # @!attribute expected_bucket_owner
    #   <p> The expected owner of the general purpose bucket that corresponds to your metadata table configuration.
    #       </p>
    #   @return [String]
    class CreateBucketMetadataTableConfigurationRequest < Struct.new(
      nil,
      :bucket,
      :content_md5,
      :checksum_algorithm,
      :metadata_table_configuration,
      :expected_bucket_owner,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute location
    #   <p>A forward slash followed by the name of the bucket for all account regional namespace buckets and all global general purpose buckets created in us-east-1. For example, <code>/amzn-s3-demo-bucket</code>. For global general purpose buckets created in other Amazon Web Services Regions, the Location field is the global endpoint URL. For example, <code>http://amzn-s3-demo-bucket.s3.amazonaws.com/</code>.</p>
    #   @return [String]
    # @!attribute bucket_arn
    #   <p>The Amazon Resource Name (ARN) of the S3 bucket. ARNs uniquely identify Amazon Web Services resources across all
    #         of Amazon Web Services.</p>
    #            <note>
    #               <p>This parameter is only supported for S3 directory buckets. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/directory-buckets-tagging.html">Using tags with
    #             directory buckets</a>.</p>
    #            </note>
    #   @return [String]
    class CreateBucketOutput < Struct.new(
      nil,
      :location,
      :bucket_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute acl
    #   <p>The canned ACL to apply to the bucket.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute bucket
    #   <p>The name of the bucket to create.</p>
    #            <p>
    #               <b>General purpose buckets</b> - For information about bucket naming
    #            restrictions, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/bucketnamingrules.html">Bucket naming
    #               rules</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <p>
    #               <b>Directory buckets </b> - When you use this operation with a directory bucket, you must use path-style requests in the format <code>https://s3express-control.<i>region-code</i>.amazonaws.com/<i>bucket-name</i>
    #               </code>. Virtual-hosted-style requests aren't supported. Directory bucket names must be unique in the chosen Zone (Availability Zone or Local Zone). Bucket names must also follow the format <code>
    #                  <i>bucket-base-name</i>--<i>zone-id</i>--x-s3</code> (for example, <code>
    #                  <i>DOC-EXAMPLE-BUCKET</i>--<i>usw2-az1</i>--x-s3</code>). For information about bucket naming restrictions, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/directory-bucket-naming-rules.html">Directory bucket naming rules</a> in the <i>Amazon S3 User Guide</i>
    #            </p>
    #   @return [String]
    # @!attribute create_bucket_configuration
    #   <p>The configuration information for the bucket.</p>
    #   @return [Types::CreateBucketConfiguration]
    # @!attribute grant_full_control
    #   <p>Allows grantee the read, write, read ACP, and write ACP permissions on the bucket.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute grant_read
    #   <p>Allows grantee to list the objects in the bucket.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute grant_read_acp
    #   <p>Allows grantee to read the bucket ACL.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute grant_write
    #   <p>Allows grantee to create new objects in the bucket.</p>
    #            <p>For the bucket and object owners of existing objects, also allows deletions and overwrites of those
    #         objects.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute grant_write_acp
    #   <p>Allows grantee to write the ACL for the applicable bucket.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute object_lock_enabled_for_bucket
    #   <p>Specifies whether you want S3 Object Lock to be enabled for the new bucket.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [Boolean]
    # @!attribute object_ownership
    #   <p>The container element for object ownership for a bucket's ownership controls.</p>
    #            <p>
    #               <code>BucketOwnerPreferred</code> - Objects uploaded to the bucket change ownership to the bucket
    #         owner if the objects are uploaded with the <code>bucket-owner-full-control</code> canned ACL.</p>
    #            <p>
    #               <code>ObjectWriter</code> - The uploading account will own the object if the object is uploaded with
    #         the <code>bucket-owner-full-control</code> canned ACL.</p>
    #            <p>
    #               <code>BucketOwnerEnforced</code> - Access control lists (ACLs) are disabled and no longer affect
    #         permissions. The bucket owner automatically owns and has full control over every object in the bucket.
    #         The bucket only accepts PUT requests that don't specify an ACL or specify bucket owner full control ACLs
    #         (such as the predefined <code>bucket-owner-full-control</code> canned ACL or a custom ACL in XML format
    #         that grants the same permissions).</p>
    #            <p>By default, <code>ObjectOwnership</code> is set to <code>BucketOwnerEnforced</code> and ACLs are
    #         disabled. We recommend keeping ACLs disabled, except in uncommon use cases where you must control access
    #         for each object individually. For more information about S3 Object Ownership, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/about-object-ownership.html">Controlling
    #           ownership of objects and disabling ACLs for your bucket</a> in the
    #           <i>Amazon S3 User Guide</i>. </p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets. Directory buckets use the bucket owner enforced setting for S3 Object Ownership.</p>
    #            </note>
    #   @return [String]
    # @!attribute bucket_namespace
    #   <p>Specifies the namespace where you want to create your general purpose bucket. When you create a
    #       general purpose bucket, you can choose to create a bucket in the shared global namespace or you can choose to
    #       create a bucket in your account regional namespace. Your account regional namespace is a subdivision of
    #       the global namespace that only your account can create buckets in. For more information on bucket
    #       namespaces, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/gpbucketnamespaces.html">Namespaces for general purpose buckets</a>.</p>
    #            <p>General purpose buckets in your account regional namespace must follow a specific naming convention. These
    #       buckets consist of a bucket name prefix that you create, and a suffix that contains your 12-digit Amazon Web Services
    #       Account ID, the Amazon Web Services Region code, and ends with <code>-an</code>. Bucket names must follow the format
    #       <code>bucket-name-prefix-accountId-region-an</code> (for example,
    #       <code>amzn-s3-demo-bucket-111122223333-us-west-2-an</code>). For information about bucket naming
    #       restrictions, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/bucketnamingrules.html#account-regional-naming-rules">Account regional namespace naming rules</a>
    #       in the <i>Amazon S3 User Guide</i>.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    class CreateBucketRequest < Struct.new(
      nil,
      :acl,
      :bucket,
      :create_bucket_configuration,
      :grant_full_control,
      :grant_read,
      :grant_read_acp,
      :grant_write,
      :grant_write_acp,
      :object_lock_enabled_for_bucket,
      :object_ownership,
      :bucket_namespace,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute abort_date
    #   <p>If the bucket has a lifecycle rule configured with an action to abort incomplete multipart uploads
    #         and the prefix in the lifecycle rule matches the object name in the request, the response includes this
    #         header. The header indicates when the initiated multipart upload becomes eligible for an abort
    #         operation. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuoverview.html#mpu-abort-incomplete-mpu-lifecycle-config"> Aborting
    #           Incomplete Multipart Uploads Using a Bucket Lifecycle Configuration</a> in the
    #           <i>Amazon S3 User Guide</i>.</p>
    #            <p>The response also includes the <code>x-amz-abort-rule-id</code> header that provides the ID of the
    #         lifecycle configuration rule that defines the abort action.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [Time]
    # @!attribute abort_rule_id
    #   <p>This header is returned along with the <code>x-amz-abort-date</code> header. It identifies the
    #         applicable lifecycle configuration rule that defines the action to abort incomplete multipart
    #         uploads.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute bucket
    #   <p>The name of the bucket to which the multipart upload was initiated. Does not return the access point ARN or
    #         access point alias if used.</p>
    #            <note>
    #               <p>Access points are not supported by directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute key
    #   <p>Object key for which the multipart upload was initiated.</p>
    #   @return [String]
    # @!attribute upload_id
    #   <p>ID for the initiated multipart upload.</p>
    #   @return [String]
    # @!attribute server_side_encryption
    #   <p>The server-side encryption algorithm used when you store this object in Amazon S3 or Amazon FSx.</p>
    #            <note>
    #               <p>When accessing data stored in Amazon FSx file systems using S3 access points, the only valid server side
    #           encryption option is <code>aws:fsx</code>.</p>
    #            </note>
    #   @return [String]
    # @!attribute sse_customer_algorithm
    #   <p>If server-side encryption with a customer-provided encryption key was requested, the response will
    #         include this header to confirm the encryption algorithm that's used.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute sse_customer_key_md5
    #   <p>If server-side encryption with a customer-provided encryption key was requested, the response will
    #         include this header to provide the round-trip message integrity verification of the customer-provided
    #         encryption key.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute ssekms_key_id
    #   <p>If present, indicates the ID of the KMS key that was used for object encryption.</p>
    #   @return [String]
    # @!attribute ssekms_encryption_context
    #   <p>If present, indicates the Amazon Web Services KMS Encryption Context to use for object encryption. The value of
    #            this header is a Base64 encoded string of a UTF-8 encoded JSON, which contains the encryption context as key-value pairs.</p>
    #   @return [String]
    # @!attribute bucket_key_enabled
    #   <p>Indicates whether the multipart upload uses an S3 Bucket Key for server-side encryption with
    #         Key Management Service (KMS) keys (SSE-KMS).</p>
    #   @return [Boolean]
    # @!attribute request_charged
    #   <p>If present, indicates that the requester was successfully charged for the request. For more
    #         information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/RequesterPaysBuckets.html">Using Requester Pays buckets for storage transfers and usage</a> in the <i>Amazon Simple
    #           Storage Service user guide</i>.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute checksum_algorithm
    #   <p>The algorithm that was used to create a checksum of the object.</p>
    #   @return [String]
    # @!attribute checksum_type
    #   <p> Indicates the checksum type that you want Amazon S3 to use to calculate the object’s checksum
    #         value. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity in the Amazon S3
    #           User Guide</a>.</p>
    #   @return [String]
    class CreateMultipartUploadOutput < Struct.new(
      nil,
      :abort_date,
      :abort_rule_id,
      :bucket,
      :key,
      :upload_id,
      :server_side_encryption,
      :sse_customer_algorithm,
      :sse_customer_key_md5,
      :ssekms_key_id,
      :ssekms_encryption_context,
      :bucket_key_enabled,
      :request_charged,
      :checksum_algorithm,
      :checksum_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute acl
    #   <p>The canned ACL to apply to the object. Amazon S3 supports a set of predefined ACLs, known as
    #           <i>canned ACLs</i>. Each canned ACL has a predefined set of grantees and permissions.
    #         For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#CannedACL">Canned ACL</a> in the
    #           <i>Amazon S3 User Guide</i>.</p>
    #            <p>By default, all objects are private. Only the owner has full access control. When uploading an
    #         object, you can grant access permissions to individual Amazon Web Services accounts or to predefined groups defined by
    #         Amazon S3. These permissions are then added to the access control list (ACL) on the new object. For more
    #         information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/S3_ACLs_UsingACLs.html">Using
    #           ACLs</a>. One way to grant the permissions using the request headers is to specify a canned ACL
    #         with the <code>x-amz-acl</code> request header.</p>
    #            <note>
    #               <ul>
    #                  <li>
    #                     <p>This functionality is not supported for directory buckets.</p>
    #                  </li>
    #                  <li>
    #                     <p>This functionality is not supported for Amazon S3 on Outposts.</p>
    #                  </li>
    #               </ul>
    #            </note>
    #   @return [String]
    # @!attribute bucket
    #   <p>The name of the bucket where the multipart upload is initiated and where the object is
    #         uploaded.</p>
    #            <p>
    #               <b>Directory buckets</b> - When you use this operation with a directory bucket, you must use virtual-hosted-style requests in the format <code>
    #                  <i>Bucket-name</i>.s3express-<i>zone-id</i>.<i>region-code</i>.amazonaws.com</code>. Path-style requests are not supported.  Directory bucket names must be unique in the chosen Zone (Availability Zone or Local Zone). Bucket names must follow the format <code>
    #                  <i>bucket-base-name</i>--<i>zone-id</i>--x-s3</code> (for example, <code>
    #                  <i>amzn-s3-demo-bucket</i>--<i>usw2-az1</i>--x-s3</code>). For information about bucket naming
    #            restrictions, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/directory-bucket-naming-rules.html">Directory bucket naming
    #               rules</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <p>
    #               <b>Access points</b> - When you use this action with an access point for general purpose buckets, you must provide the alias of the access point in place of the bucket name or specify the access point ARN. When you use this action with an access point for directory buckets, you must provide the access point name in place of the bucket name. When using the access point ARN, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <note>
    #               <p>Object Lambda access points are not supported by directory buckets.</p>
    #            </note>
    #            <p>
    #               <b>S3 on Outposts</b> - When you use this action with S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the
    #                        form <code>
    #                  <i>AccessPointName</i>-<i>AccountId</i>.<i>outpostID</i>.s3-outposts.<i>Region</i>.amazonaws.com</code>. When you use this action with S3 on Outposts, the destination bucket must be the Outposts access point ARN or the access point alias. For more information about S3 on Outposts, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html">What is S3 on Outposts?</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute cache_control
    #   <p>Specifies caching behavior along the request/reply chain.</p>
    #   @return [String]
    # @!attribute content_disposition
    #   <p>Specifies presentational information for the object.</p>
    #   @return [String]
    # @!attribute content_encoding
    #   <p>Specifies what content encodings have been applied to the object and thus what decoding mechanisms
    #         must be applied to obtain the media-type referenced by the Content-Type header field.</p>
    #            <note>
    #               <p>For directory buckets, only the <code>aws-chunked</code> value is supported in this header field.</p>
    #            </note>
    #   @return [String]
    # @!attribute content_language
    #   <p>The language that the content is in.</p>
    #   @return [String]
    # @!attribute content_type
    #   <p>A standard MIME type describing the format of the object data.</p>
    #   @return [String]
    # @!attribute expires
    #   <p>The date and time at which the object is no longer cacheable.</p>
    #   @return [String]
    # @!attribute grant_full_control
    #   <p>Specify access permissions explicitly to give the grantee READ, READ_ACP, and WRITE_ACP permissions
    #         on the object.</p>
    #            <p>By default, all objects are private. Only the owner has full access control. When uploading an
    #         object, you can use this header to explicitly grant access permissions to specific Amazon Web Services accounts or
    #         groups. This header maps to specific permissions that Amazon S3 supports in an ACL. For more information, see
    #           <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html">Access Control List (ACL)
    #           Overview</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <p>You specify each grantee as a type=value pair, where the type is one of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>id</code> – if the value specified is the canonical user ID of an Amazon Web Services account</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>uri</code> – if you are granting permissions to a predefined group</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>emailAddress</code> – if the value specified is the email address of an
    #             Amazon Web Services account</p>
    #                  <note>
    #                     <p>Using email addresses to specify a grantee is only supported in the following Amazon Web Services Regions: </p>
    #                     <ul>
    #                        <li>
    #                           <p>US East (N. Virginia)</p>
    #                        </li>
    #                        <li>
    #                           <p>US West (N. California)</p>
    #                        </li>
    #                        <li>
    #                           <p> US West (Oregon)</p>
    #                        </li>
    #                        <li>
    #                           <p> Asia Pacific (Singapore)</p>
    #                        </li>
    #                        <li>
    #                           <p>Asia Pacific (Sydney)</p>
    #                        </li>
    #                        <li>
    #                           <p>Asia Pacific (Tokyo)</p>
    #                        </li>
    #                        <li>
    #                           <p>Europe (Ireland)</p>
    #                        </li>
    #                        <li>
    #                           <p>South America (São Paulo)</p>
    #                        </li>
    #                     </ul>
    #                     <p>For a list of all the Amazon S3 supported Regions and endpoints, see <a href="https://docs.aws.amazon.com/general/latest/gr/rande.html#s3_region">Regions and Endpoints</a> in the Amazon Web Services General Reference.</p>
    #                  </note>
    #               </li>
    #            </ul>
    #            <p>For example, the following <code>x-amz-grant-read</code> header grants the Amazon Web Services accounts identified by account IDs permissions to read object data and its metadata:</p>
    #            <p>
    #               <code>x-amz-grant-read: id="11112222333", id="444455556666" </code>
    #            </p>
    #            <note>
    #               <ul>
    #                  <li>
    #                     <p>This functionality is not supported for directory buckets.</p>
    #                  </li>
    #                  <li>
    #                     <p>This functionality is not supported for Amazon S3 on Outposts.</p>
    #                  </li>
    #               </ul>
    #            </note>
    #   @return [String]
    # @!attribute grant_read
    #   <p>Specify access permissions explicitly to allow grantee to read the object data and its
    #         metadata.</p>
    #            <p>By default, all objects are private. Only the owner has full access control. When uploading an
    #         object, you can use this header to explicitly grant access permissions to specific Amazon Web Services accounts or
    #         groups. This header maps to specific permissions that Amazon S3 supports in an ACL. For more information, see
    #           <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html">Access Control List (ACL)
    #           Overview</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <p>You specify each grantee as a type=value pair, where the type is one of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>id</code> – if the value specified is the canonical user ID of an Amazon Web Services account</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>uri</code> – if you are granting permissions to a predefined group</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>emailAddress</code> – if the value specified is the email address of an
    #             Amazon Web Services account</p>
    #                  <note>
    #                     <p>Using email addresses to specify a grantee is only supported in the following Amazon Web Services Regions: </p>
    #                     <ul>
    #                        <li>
    #                           <p>US East (N. Virginia)</p>
    #                        </li>
    #                        <li>
    #                           <p>US West (N. California)</p>
    #                        </li>
    #                        <li>
    #                           <p> US West (Oregon)</p>
    #                        </li>
    #                        <li>
    #                           <p> Asia Pacific (Singapore)</p>
    #                        </li>
    #                        <li>
    #                           <p>Asia Pacific (Sydney)</p>
    #                        </li>
    #                        <li>
    #                           <p>Asia Pacific (Tokyo)</p>
    #                        </li>
    #                        <li>
    #                           <p>Europe (Ireland)</p>
    #                        </li>
    #                        <li>
    #                           <p>South America (São Paulo)</p>
    #                        </li>
    #                     </ul>
    #                     <p>For a list of all the Amazon S3 supported Regions and endpoints, see <a href="https://docs.aws.amazon.com/general/latest/gr/rande.html#s3_region">Regions and Endpoints</a> in the Amazon Web Services General Reference.</p>
    #                  </note>
    #               </li>
    #            </ul>
    #            <p>For example, the following <code>x-amz-grant-read</code> header grants the Amazon Web Services accounts identified by account IDs permissions to read object data and its metadata:</p>
    #            <p>
    #               <code>x-amz-grant-read: id="11112222333", id="444455556666" </code>
    #            </p>
    #            <note>
    #               <ul>
    #                  <li>
    #                     <p>This functionality is not supported for directory buckets.</p>
    #                  </li>
    #                  <li>
    #                     <p>This functionality is not supported for Amazon S3 on Outposts.</p>
    #                  </li>
    #               </ul>
    #            </note>
    #   @return [String]
    # @!attribute grant_read_acp
    #   <p>Specify access permissions explicitly to allows grantee to read the object ACL.</p>
    #            <p>By default, all objects are private. Only the owner has full access control. When uploading an
    #         object, you can use this header to explicitly grant access permissions to specific Amazon Web Services accounts or
    #         groups. This header maps to specific permissions that Amazon S3 supports in an ACL. For more information, see
    #           <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html">Access Control List (ACL)
    #           Overview</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <p>You specify each grantee as a type=value pair, where the type is one of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>id</code> – if the value specified is the canonical user ID of an Amazon Web Services account</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>uri</code> – if you are granting permissions to a predefined group</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>emailAddress</code> – if the value specified is the email address of an
    #             Amazon Web Services account</p>
    #                  <note>
    #                     <p>Using email addresses to specify a grantee is only supported in the following Amazon Web Services Regions: </p>
    #                     <ul>
    #                        <li>
    #                           <p>US East (N. Virginia)</p>
    #                        </li>
    #                        <li>
    #                           <p>US West (N. California)</p>
    #                        </li>
    #                        <li>
    #                           <p> US West (Oregon)</p>
    #                        </li>
    #                        <li>
    #                           <p> Asia Pacific (Singapore)</p>
    #                        </li>
    #                        <li>
    #                           <p>Asia Pacific (Sydney)</p>
    #                        </li>
    #                        <li>
    #                           <p>Asia Pacific (Tokyo)</p>
    #                        </li>
    #                        <li>
    #                           <p>Europe (Ireland)</p>
    #                        </li>
    #                        <li>
    #                           <p>South America (São Paulo)</p>
    #                        </li>
    #                     </ul>
    #                     <p>For a list of all the Amazon S3 supported Regions and endpoints, see <a href="https://docs.aws.amazon.com/general/latest/gr/rande.html#s3_region">Regions and Endpoints</a> in the Amazon Web Services General Reference.</p>
    #                  </note>
    #               </li>
    #            </ul>
    #            <p>For example, the following <code>x-amz-grant-read</code> header grants the Amazon Web Services accounts identified by account IDs permissions to read object data and its metadata:</p>
    #            <p>
    #               <code>x-amz-grant-read: id="11112222333", id="444455556666" </code>
    #            </p>
    #            <note>
    #               <ul>
    #                  <li>
    #                     <p>This functionality is not supported for directory buckets.</p>
    #                  </li>
    #                  <li>
    #                     <p>This functionality is not supported for Amazon S3 on Outposts.</p>
    #                  </li>
    #               </ul>
    #            </note>
    #   @return [String]
    # @!attribute grant_write_acp
    #   <p>Specify access permissions explicitly to allows grantee to allow grantee to write the ACL for the
    #         applicable object.</p>
    #            <p>By default, all objects are private. Only the owner has full access control. When uploading an
    #         object, you can use this header to explicitly grant access permissions to specific Amazon Web Services accounts or
    #         groups. This header maps to specific permissions that Amazon S3 supports in an ACL. For more information, see
    #           <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html">Access Control List (ACL)
    #           Overview</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <p>You specify each grantee as a type=value pair, where the type is one of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>id</code> – if the value specified is the canonical user ID of an Amazon Web Services account</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>uri</code> – if you are granting permissions to a predefined group</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>emailAddress</code> – if the value specified is the email address of an
    #             Amazon Web Services account</p>
    #                  <note>
    #                     <p>Using email addresses to specify a grantee is only supported in the following Amazon Web Services Regions: </p>
    #                     <ul>
    #                        <li>
    #                           <p>US East (N. Virginia)</p>
    #                        </li>
    #                        <li>
    #                           <p>US West (N. California)</p>
    #                        </li>
    #                        <li>
    #                           <p> US West (Oregon)</p>
    #                        </li>
    #                        <li>
    #                           <p> Asia Pacific (Singapore)</p>
    #                        </li>
    #                        <li>
    #                           <p>Asia Pacific (Sydney)</p>
    #                        </li>
    #                        <li>
    #                           <p>Asia Pacific (Tokyo)</p>
    #                        </li>
    #                        <li>
    #                           <p>Europe (Ireland)</p>
    #                        </li>
    #                        <li>
    #                           <p>South America (São Paulo)</p>
    #                        </li>
    #                     </ul>
    #                     <p>For a list of all the Amazon S3 supported Regions and endpoints, see <a href="https://docs.aws.amazon.com/general/latest/gr/rande.html#s3_region">Regions and Endpoints</a> in the Amazon Web Services General Reference.</p>
    #                  </note>
    #               </li>
    #            </ul>
    #            <p>For example, the following <code>x-amz-grant-read</code> header grants the Amazon Web Services accounts identified by account IDs permissions to read object data and its metadata:</p>
    #            <p>
    #               <code>x-amz-grant-read: id="11112222333", id="444455556666" </code>
    #            </p>
    #            <note>
    #               <ul>
    #                  <li>
    #                     <p>This functionality is not supported for directory buckets.</p>
    #                  </li>
    #                  <li>
    #                     <p>This functionality is not supported for Amazon S3 on Outposts.</p>
    #                  </li>
    #               </ul>
    #            </note>
    #   @return [String]
    # @!attribute key
    #   <p>Object key for which the multipart upload is to be initiated.</p>
    #   @return [String]
    # @!attribute metadata
    #   <p>A map of metadata to store with the object in S3.</p>
    #   @return [Hash<String, String>]
    # @!attribute server_side_encryption
    #   <p>The server-side encryption algorithm used when you store this object in Amazon S3 or Amazon FSx.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Directory buckets </b> -
    #             For directory buckets, there are only two supported options for server-side encryption: server-side encryption with Amazon S3 managed keys (SSE-S3) (<code>AES256</code>) and server-side encryption with KMS keys (SSE-KMS) (<code>aws:kms</code>). We recommend that the bucket's default encryption uses the desired encryption configuration and you don't override the bucket default encryption in your
    #               <code>CreateSession</code> requests or <code>PUT</code> object requests. Then, new objects
    #    are automatically encrypted with the desired encryption settings. For more
    #            information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-express-serv-side-encryption.html">Protecting data with server-side encryption</a> in the <i>Amazon S3 User Guide</i>. For more information about the encryption overriding behaviors in directory buckets, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-express-specifying-kms-encryption.html">Specifying server-side encryption with KMS for new object uploads</a>. </p>
    #                  <p>In the Zonal endpoint API calls (except <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_CopyObject.html">CopyObject</a> and <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_UploadPartCopy.html">UploadPartCopy</a>) using the REST API, the encryption request headers must match the encryption settings that are specified in the <code>CreateSession</code> request.
    #                               You can't override the values of the encryption settings (<code>x-amz-server-side-encryption</code>, <code>x-amz-server-side-encryption-aws-kms-key-id</code>, <code>x-amz-server-side-encryption-context</code>, and <code>x-amz-server-side-encryption-bucket-key-enabled</code>) that are specified in the <code>CreateSession</code> request.
    #                               You don't need to explicitly specify these encryption settings values in Zonal endpoint API calls, and
    #                               Amazon S3 will use the encryption settings values from the <code>CreateSession</code> request to protect new objects in the directory bucket.
    #                              </p>
    #                  <note>
    #                     <p>When you use the CLI or the Amazon Web Services SDKs, for <code>CreateSession</code>, the session token refreshes automatically to avoid service interruptions when a session expires. The CLI or the Amazon Web Services SDKs use the bucket's default encryption configuration for the
    #                               <code>CreateSession</code> request. It's not supported to override the encryption settings values in the <code>CreateSession</code> request.
    #                               So in the Zonal endpoint API calls (except <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_CopyObject.html">CopyObject</a> and <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_UploadPartCopy.html">UploadPartCopy</a>),
    #             the encryption request headers must match the default encryption configuration of the directory bucket.
    #
    #   </p>
    #                  </note>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>S3 access points for Amazon FSx </b> - When accessing data stored in
    #             Amazon FSx file systems using S3 access points, the only valid server side encryption option is
    #               <code>aws:fsx</code>. All Amazon FSx file systems have encryption configured by default and are
    #             encrypted at rest. Data is automatically encrypted before being written to the file system, and
    #             automatically decrypted as it is read. These processes are handled transparently by Amazon FSx.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute storage_class
    #   <p>By default, Amazon S3 uses the STANDARD Storage Class to store newly created objects. The STANDARD
    #         storage class provides high durability and high availability. Depending on performance needs, you can
    #         specify a different Storage Class. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/storage-class-intro.html">Storage Classes</a> in the
    #           <i>Amazon S3 User Guide</i>.</p>
    #            <note>
    #               <ul>
    #                  <li>
    #                     <p>Directory buckets only support <code>EXPRESS_ONEZONE</code> (the S3 Express One Zone storage class) in
    #               Availability Zones and <code>ONEZONE_IA</code> (the S3 One Zone-Infrequent Access storage class) in
    #               Dedicated Local Zones.</p>
    #                  </li>
    #                  <li>
    #                     <p>Amazon S3 on Outposts only uses the OUTPOSTS Storage Class.</p>
    #                  </li>
    #               </ul>
    #            </note>
    #   @return [String]
    # @!attribute website_redirect_location
    #   <p>If the bucket is configured as a website, redirects requests for this object to another object in
    #         the same bucket or to an external URL. Amazon S3 stores the value of this header in the object
    #         metadata.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute sse_customer_algorithm
    #   <p>Specifies the algorithm to use when encrypting the object (for example, AES256).</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute sse_customer_key
    #   <p>Specifies the customer-provided encryption key for Amazon S3 to use in encrypting data. This value is
    #         used to store the object and then it is discarded; Amazon S3 does not store the encryption key. The key must
    #         be appropriate for use with the algorithm specified in the
    #           <code>x-amz-server-side-encryption-customer-algorithm</code> header.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute sse_customer_key_md5
    #   <p>Specifies the 128-bit MD5 digest of the customer-provided encryption key according to RFC 1321. Amazon S3
    #         uses this header for a message integrity check to ensure that the encryption key was transmitted without
    #         error.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute ssekms_key_id
    #   <p>Specifies the KMS key ID (Key ID, Key ARN, or Key Alias) to use for object encryption. If the KMS key doesn't exist in the same
    #            account that's issuing the command, you must use the full Key ARN not the Key ID.</p>
    #            <p>
    #               <b>General purpose buckets</b> - If you specify <code>x-amz-server-side-encryption</code> with <code>aws:kms</code> or <code>aws:kms:dsse</code>, this header specifies the ID (Key ID, Key ARN, or Key Alias) of the KMS
    #            key to use. If you specify
    #            <code>x-amz-server-side-encryption:aws:kms</code> or
    #            <code>x-amz-server-side-encryption:aws:kms:dsse</code>, but do not provide <code>x-amz-server-side-encryption-aws-kms-key-id</code>, Amazon S3 uses the Amazon Web Services managed key
    #            (<code>aws/s3</code>) to protect the data.</p>
    #            <p>
    #               <b>Directory buckets</b> - To encrypt data using SSE-KMS, it's recommended to specify the
    #   <code>x-amz-server-side-encryption</code> header to <code>aws:kms</code>. Then, the <code>x-amz-server-side-encryption-aws-kms-key-id</code> header implicitly uses
    #   the bucket's default KMS customer managed key ID. If you want to explicitly set the <code>
    #            x-amz-server-side-encryption-aws-kms-key-id</code> header, it must match the bucket's default customer managed key (using key ID or ARN, not alias). Your SSE-KMS configuration can only support 1 <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#customer-cmk">customer managed key</a> per directory bucket's lifetime.
    #   The <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-managed-cmk">Amazon Web Services managed key</a> (<code>aws/s3</code>) isn't supported.
    #
    #    Incorrect key specification results in an HTTP <code>400 Bad Request</code> error. </p>
    #   @return [String]
    # @!attribute ssekms_encryption_context
    #   <p>Specifies the Amazon Web Services KMS Encryption Context to use for object encryption. The value of
    #            this header is a Base64 encoded string of a UTF-8 encoded JSON, which contains the encryption context as key-value pairs.</p>
    #            <p>
    #               <b>Directory buckets</b> - You can optionally provide an explicit encryption context value. The value must match the default encryption context - the bucket Amazon Resource Name (ARN). An additional encryption context value is not supported. </p>
    #   @return [String]
    # @!attribute bucket_key_enabled
    #   <p>Specifies whether Amazon S3 should use an S3 Bucket Key for object encryption with
    #            server-side encryption using Key Management Service (KMS) keys (SSE-KMS).</p>
    #            <p>
    #               <b>General purpose buckets</b> - Setting this header to
    #               <code>true</code> causes Amazon S3 to use an S3 Bucket Key for object encryption with
    #            SSE-KMS. Also, specifying this header with a PUT action doesn't affect bucket-level settings for S3
    #            Bucket Key.</p>
    #            <p>
    #               <b>Directory buckets</b> - S3 Bucket Keys are always enabled for <code>GET</code> and <code>PUT</code> operations in a directory bucket and can’t be disabled. S3 Bucket Keys aren't supported, when you copy SSE-KMS encrypted objects from general purpose buckets
    #   to directory buckets, from directory buckets to general purpose buckets, or between directory buckets, through <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_CopyObject.html">CopyObject</a>, <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_UploadPartCopy.html">UploadPartCopy</a>, <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/directory-buckets-objects-Batch-Ops">the Copy operation in Batch Operations</a>, or
    #                               <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/create-import-job">the import jobs</a>. In this case, Amazon S3 makes a call to KMS every time a copy request is made for a KMS-encrypted object.</p>
    #   @return [Boolean]
    # @!attribute request_payer
    #   <p>Confirms that the requester knows that they will be charged for the request. Bucket owners need not
    #         specify this parameter in their requests. If either the source or destination S3 bucket has Requester
    #         Pays enabled, the requester will pay for the corresponding charges. For information about
    #         downloading objects from Requester Pays buckets, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html">Downloading Objects in Requester Pays
    #           Buckets</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute tagging
    #   <p>The tag-set for the object. The tag-set must be encoded as URL Query parameters.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute object_lock_mode
    #   <p>Specifies the Object Lock mode that you want to apply to the uploaded object.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute object_lock_retain_until_date
    #   <p>Specifies the date and time when you want the Object Lock to expire.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [Time]
    # @!attribute object_lock_legal_hold_status
    #   <p>Specifies whether you want to apply a legal hold to the uploaded object.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute object_lock_event_hold
    #   <p>Specifies the event hold status to apply to the uploaded object. Set to <code>ON</code> to enable
    #         or <code>OFF</code> to disable.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute object_lock_event_hold_duration_days
    #   <p>Specifies the event hold duration in days to apply to the uploaded object. You cannot
    #         specify a duration in both days and years.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [Integer]
    # @!attribute object_lock_event_hold_duration_years
    #   <p>Specifies the event hold duration in years to apply to the uploaded object. You cannot
    #         specify a duration in both days and years.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [Integer]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    # @!attribute checksum_algorithm
    #   <p>Indicates the algorithm that you want Amazon S3 to use to create the checksum for the object. For more information, see
    #       <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #       the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_type
    #   <p>Indicates the checksum type that you want Amazon S3 to use to calculate the object’s checksum value. For
    #         more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity in the Amazon S3
    #           User Guide</a>.</p>
    #   @return [String]
    class CreateMultipartUploadRequest < Struct.new(
      nil,
      :acl,
      :bucket,
      :cache_control,
      :content_disposition,
      :content_encoding,
      :content_language,
      :content_type,
      :expires,
      :grant_full_control,
      :grant_read,
      :grant_read_acp,
      :grant_write_acp,
      :key,
      :metadata,
      :server_side_encryption,
      :storage_class,
      :website_redirect_location,
      :sse_customer_algorithm,
      :sse_customer_key,
      :sse_customer_key_md5,
      :ssekms_key_id,
      :ssekms_encryption_context,
      :bucket_key_enabled,
      :request_payer,
      :tagging,
      :object_lock_mode,
      :object_lock_retain_until_date,
      :object_lock_legal_hold_status,
      :object_lock_event_hold,
      :object_lock_event_hold_duration_days,
      :object_lock_event_hold_duration_years,
      :expected_bucket_owner,
      :checksum_algorithm,
      :checksum_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute server_side_encryption
    #   <p>The server-side encryption algorithm used when you store objects in the directory bucket.</p>
    #            <note>
    #               <p>When accessing data stored in Amazon FSx file systems using S3 access points, the only valid server side
    #           encryption option is <code>aws:fsx</code>.</p>
    #            </note>
    #   @return [String]
    # @!attribute ssekms_key_id
    #   <p>If you specify <code>x-amz-server-side-encryption</code> with <code>aws:kms</code>, this header indicates the ID of the KMS
    #            symmetric encryption customer managed key that was used for object encryption.</p>
    #   @return [String]
    # @!attribute ssekms_encryption_context
    #   <p>If present, indicates the Amazon Web Services KMS Encryption Context to use for object encryption. The value of
    #            this header is a Base64 encoded string of a UTF-8 encoded JSON, which contains the encryption context as key-value pairs.
    #            This value is stored as object metadata and automatically gets
    #            passed on to Amazon Web Services KMS for future <code>GetObject</code>
    #            operations on this object.</p>
    #   @return [String]
    # @!attribute bucket_key_enabled
    #   <p>Indicates whether to use an S3 Bucket Key for server-side encryption
    #            with KMS keys (SSE-KMS).</p>
    #   @return [Boolean]
    # @!attribute credentials
    #   <p>The established temporary security credentials for the created session.</p>
    #   @return [Types::SessionCredentials]
    class CreateSessionOutput < Struct.new(
      nil,
      :server_side_encryption,
      :ssekms_key_id,
      :ssekms_encryption_context,
      :bucket_key_enabled,
      :credentials,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute session_mode
    #   <p>Specifies the mode of the session that will be created, either <code>ReadWrite</code> or
    #           <code>ReadOnly</code>. If no session mode is specified, the default behavior attempts to create
    #           a session with the maximum allowable privilege. It will first attempt to create a
    #           <code>ReadWrite</code> session, and if that is not allowed by permissions, it will attempt to create a
    #           <code>ReadOnly</code> session. If neither session type is allowed, the request will return an Access Denied error. A
    #           <code>ReadWrite</code> session is capable of executing all the Zonal endpoint API operations on a directory bucket. A
    #           <code>ReadOnly</code> session is constrained to execute the following Zonal endpoint API operations:
    #           <code>GetObject</code>, <code>HeadObject</code>, <code>ListObjectsV2</code>,
    #           <code>GetObjectAttributes</code>, <code>ListParts</code>, and
    #         <code>ListMultipartUploads</code>.</p>
    #   @return [String]
    # @!attribute bucket
    #   <p>The name of the bucket that you create a session for.</p>
    #   @return [String]
    # @!attribute server_side_encryption
    #   <p>The server-side encryption algorithm to use when you store objects in the directory bucket.</p>
    #            <p>For directory buckets, there are only two supported options for server-side encryption: server-side encryption with Amazon S3 managed keys (SSE-S3) (<code>AES256</code>) and server-side encryption with KMS keys (SSE-KMS) (<code>aws:kms</code>). By default, Amazon S3 encrypts data with SSE-S3.
    #            For more
    #            information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/serv-side-encryption.html">Protecting data with server-side encryption</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <p>
    #               <b>S3 access points for Amazon FSx </b> - When accessing data stored in Amazon FSx
    #         file systems using S3 access points, the only valid server side encryption option is <code>aws:fsx</code>. All
    #         Amazon FSx file systems have encryption configured by default and are encrypted at rest. Data is
    #         automatically encrypted before being written to the file system, and automatically decrypted as it is
    #         read. These processes are handled transparently by Amazon FSx.</p>
    #   @return [String]
    # @!attribute ssekms_key_id
    #   <p>If you specify <code>x-amz-server-side-encryption</code> with <code>aws:kms</code>, you must specify the <code>
    #            x-amz-server-side-encryption-aws-kms-key-id</code> header with the ID (Key ID or Key ARN) of the KMS
    #            symmetric encryption customer managed key to use. Otherwise, you get an HTTP <code>400 Bad Request</code> error. Only use the key ID or key ARN. The key alias format of the KMS key isn't supported. Also, if the KMS key doesn't exist in the same
    #            account that't issuing the command, you must use the full Key ARN not the Key ID. </p>
    #            <p>Your SSE-KMS configuration can only support 1 <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#customer-cmk">customer managed key</a> per directory bucket's lifetime.
    #   The <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-managed-cmk">Amazon Web Services managed key</a> (<code>aws/s3</code>) isn't supported.
    #   </p>
    #   @return [String]
    # @!attribute ssekms_encryption_context
    #   <p>Specifies the Amazon Web Services KMS Encryption Context as an additional encryption context to use for object encryption. The value of
    #            this header is a Base64 encoded string of a UTF-8 encoded JSON, which contains the encryption context as key-value pairs.
    #            This value is stored as object metadata and automatically gets passed on
    #            to Amazon Web Services KMS for future <code>GetObject</code> operations on
    #            this object.</p>
    #            <p>
    #               <b>General purpose buckets</b> - This value must be explicitly added during <code>CopyObject</code> operations if you want an additional encryption context for your object. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/UsingKMSEncryption.html#encryption-context">Encryption context</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <p>
    #               <b>Directory buckets</b> - You can optionally provide an explicit encryption context value. The value must match the default encryption context - the bucket Amazon Resource Name (ARN). An additional encryption context value is not supported. </p>
    #   @return [String]
    # @!attribute bucket_key_enabled
    #   <p>Specifies whether Amazon S3 should use an S3 Bucket Key for object encryption with
    #            server-side encryption using KMS keys (SSE-KMS).</p>
    #            <p>S3 Bucket Keys are always enabled for <code>GET</code> and <code>PUT</code> operations in a directory bucket and can’t be disabled. S3 Bucket Keys aren't supported, when you copy SSE-KMS encrypted objects from general purpose buckets
    #   to directory buckets, from directory buckets to general purpose buckets, or between directory buckets, through <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_CopyObject.html">CopyObject</a>, <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_UploadPartCopy.html">UploadPartCopy</a>, <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/directory-buckets-objects-Batch-Ops">the Copy operation in Batch Operations</a>, or
    #                               <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/create-import-job">the import jobs</a>. In this case, Amazon S3 makes a call to KMS every time a copy request is made for a KMS-encrypted object.</p>
    #   @return [Boolean]
    class CreateSessionRequest < Struct.new(
      nil,
      :session_mode,
      :bucket,
      :server_side_encryption,
      :ssekms_key_id,
      :ssekms_encryption_context,
      :bucket_key_enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The container element for optionally specifying the default Object Lock retention settings for new
    #       objects placed in the specified bucket.</p>
    #          <note>
    #             <ul>
    #                <li>
    #                   <p>The <code>DefaultRetention</code> settings require both a mode and a period.</p>
    #                </li>
    #                <li>
    #                   <p>The <code>DefaultRetention</code> period can be either <code>Days</code> or <code>Years</code>
    #             but you must select one. You cannot specify <code>Days</code> and <code>Years</code> at the same
    #             time.</p>
    #                </li>
    #             </ul>
    #          </note>
    # @!attribute mode
    #   <p>The default Object Lock retention mode you want to apply to new objects placed in the specified
    #         bucket. Must be used with either <code>Days</code> or <code>Years</code>.</p>
    #   @return [String]
    # @!attribute days
    #   <p>The number of days that you want to specify for the default retention period. Must be used with
    #           <code>Mode</code>.</p>
    #   @return [Integer]
    # @!attribute years
    #   <p>The number of years that you want to specify for the default retention period. Must be used with
    #           <code>Mode</code>.</p>
    #   @return [Integer]
    # @!attribute default_event_hold
    #   <p>The default event hold duration to be applied to new objects placed in the specified bucket. When
    #         configured, new objects will automatically have an event hold enabled with this duration.</p>
    #   @return [Types::EventHoldDuration]
    class DefaultRetention < Struct.new(
      nil,
      :mode,
      :days,
      :years,
      :default_event_hold,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for the objects to delete.</p>
    # @!attribute objects
    #   <p>The object to delete.</p>
    #            <note>
    #               <p>
    #                  <b>Directory buckets</b> - For directory buckets, an object
    #           that's composed entirely of whitespace characters is not supported by the <code>DeleteObjects</code>
    #           API operation. The request will receive a <code>400 Bad Request</code> error and none of the objects
    #           in the request will be deleted.</p>
    #            </note>
    #   @return [Array<Types::ObjectIdentifier>]
    # @!attribute quiet
    #   <p>Element to enable quiet mode for the request. When you add this element, you must set its value to
    #           <code>true</code>.</p>
    #   @return [Boolean]
    class Delete < Struct.new(
      nil,
      :objects,
      :quiet,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bucket
    #   <p>The name of the bucket from which an analytics configuration is deleted.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID that identifies the analytics configuration.</p>
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    class DeleteBucketAnalyticsConfigurationRequest < Struct.new(
      nil,
      :bucket,
      :id,
      :expected_bucket_owner,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bucket
    #   <p>Specifies the bucket whose <code>cors</code> configuration is being deleted.</p>
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    class DeleteBucketCorsRequest < Struct.new(
      nil,
      :bucket,
      :expected_bucket_owner,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bucket
    #   <p>The name of the bucket containing the server-side encryption configuration to delete.</p>
    #            <p>
    #               <b>Directory buckets </b> - When you use this operation with a directory bucket, you must use path-style requests in the format <code>https://s3express-control.<i>region-code</i>.amazonaws.com/<i>bucket-name</i>
    #               </code>. Virtual-hosted-style requests aren't supported. Directory bucket names must be unique in the chosen Zone (Availability Zone or Local Zone). Bucket names must also follow the format <code>
    #                  <i>bucket-base-name</i>--<i>zone-id</i>--x-s3</code> (for example, <code>
    #                  <i>DOC-EXAMPLE-BUCKET</i>--<i>usw2-az1</i>--x-s3</code>). For information about bucket naming restrictions, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/directory-bucket-naming-rules.html">Directory bucket naming rules</a> in the <i>Amazon S3 User Guide</i>
    #            </p>
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #            <note>
    #               <p>For directory buckets, this header is not supported in this API operation. If you specify this header, the request fails with the HTTP status code
    #   <code>501 Not Implemented</code>.</p>
    #            </note>
    #   @return [String]
    class DeleteBucketEncryptionRequest < Struct.new(
      nil,
      :bucket,
      :expected_bucket_owner,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bucket
    #   <p>The name of the Amazon S3 bucket whose configuration you want to modify or retrieve.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID used to identify the S3 Intelligent-Tiering configuration.</p>
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    class DeleteBucketIntelligentTieringConfigurationRequest < Struct.new(
      nil,
      :bucket,
      :id,
      :expected_bucket_owner,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bucket
    #   <p>The name of the bucket containing the inventory configuration to delete.</p>
    #            <p>
    #               <b>Directory buckets </b> - When you use this operation with a directory bucket, you must use path-style requests in the format <code>https://s3express-control.<i>region-code</i>.amazonaws.com/<i>bucket-name</i>
    #               </code>. Virtual-hosted-style requests aren't supported. Directory bucket names must be unique in the chosen Zone (Availability Zone or Local Zone). Bucket names must also follow the format <code>
    #                  <i>bucket-base-name</i>--<i>zone-id</i>--x-s3</code> (for example, <code>
    #                  <i>DOC-EXAMPLE-BUCKET</i>--<i>usw2-az1</i>--x-s3</code>). For information about bucket naming restrictions, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/directory-bucket-naming-rules.html">Directory bucket naming rules</a> in the <i>Amazon S3 User Guide</i>
    #            </p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID used to identify the inventory configuration.</p>
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #            <note>
    #               <p>For directory buckets, this header is not supported in this API operation. If you specify this header, the request fails with the HTTP status code
    #   <code>501 Not Implemented</code>.</p>
    #            </note>
    #   @return [String]
    class DeleteBucketInventoryConfigurationRequest < Struct.new(
      nil,
      :bucket,
      :id,
      :expected_bucket_owner,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bucket
    #   <p>The bucket name of the lifecycle to delete.</p>
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #            <note>
    #               <p>This parameter applies to general purpose buckets only. It is not supported for directory bucket
    #           lifecycle configurations.</p>
    #            </note>
    #   @return [String]
    class DeleteBucketLifecycleRequest < Struct.new(
      nil,
      :bucket,
      :expected_bucket_owner,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bucket
    #   <p>
    #         The general purpose bucket that you want to remove the metadata configuration from.
    #       </p>
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>
    #         The expected bucket owner of the general purpose bucket that you want to remove the metadata table
    #         configuration from.
    #       </p>
    #   @return [String]
    class DeleteBucketMetadataConfigurationRequest < Struct.new(
      nil,
      :bucket,
      :expected_bucket_owner,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bucket
    #   <p> The general purpose bucket that you want to remove the metadata table configuration from. </p>
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p> The expected bucket owner of the general purpose bucket that you want to remove the metadata table
    #         configuration from. </p>
    #   @return [String]
    class DeleteBucketMetadataTableConfigurationRequest < Struct.new(
      nil,
      :bucket,
      :expected_bucket_owner,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bucket
    #   <p>The name of the bucket containing the metrics configuration to delete.</p>
    #            <p>
    #               <b>Directory buckets </b> - When you use this operation with a directory bucket, you must use path-style requests in the format <code>https://s3express-control.<i>region-code</i>.amazonaws.com/<i>bucket-name</i>
    #               </code>. Virtual-hosted-style requests aren't supported. Directory bucket names must be unique in the chosen Zone (Availability Zone or Local Zone). Bucket names must also follow the format <code>
    #                  <i>bucket-base-name</i>--<i>zone-id</i>--x-s3</code> (for example, <code>
    #                  <i>DOC-EXAMPLE-BUCKET</i>--<i>usw2-az1</i>--x-s3</code>). For information about bucket naming restrictions, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/directory-bucket-naming-rules.html">Directory bucket naming rules</a> in the <i>Amazon S3 User Guide</i>
    #            </p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID used to identify the metrics configuration. The ID has a 64 character limit and can only
    #         contain letters, numbers, periods, dashes, and underscores.</p>
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #            <note>
    #               <p>For directory buckets, this header is not supported in this API operation. If you specify this header, the request fails with the HTTP status code
    #   <code>501 Not Implemented</code>.</p>
    #            </note>
    #   @return [String]
    class DeleteBucketMetricsConfigurationRequest < Struct.new(
      nil,
      :bucket,
      :id,
      :expected_bucket_owner,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bucket
    #   <p>The Amazon S3 bucket whose <code>OwnershipControls</code> you want to delete. </p>
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    class DeleteBucketOwnershipControlsRequest < Struct.new(
      nil,
      :bucket,
      :expected_bucket_owner,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bucket
    #   <p>The bucket name.</p>
    #            <p>
    #               <b>Directory buckets </b> - When you use this operation with a directory bucket, you must use path-style requests in the format <code>https://s3express-control.<i>region-code</i>.amazonaws.com/<i>bucket-name</i>
    #               </code>. Virtual-hosted-style requests aren't supported. Directory bucket names must be unique in the chosen Zone (Availability Zone or Local Zone). Bucket names must also follow the format <code>
    #                  <i>bucket-base-name</i>--<i>zone-id</i>--x-s3</code> (for example, <code>
    #                  <i>DOC-EXAMPLE-BUCKET</i>--<i>usw2-az1</i>--x-s3</code>). For information about bucket naming restrictions, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/directory-bucket-naming-rules.html">Directory bucket naming rules</a> in the <i>Amazon S3 User Guide</i>
    #            </p>
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #            <note>
    #               <p>For directory buckets, this header is not supported in this API operation. If you specify this header, the request fails with the HTTP status code
    #   <code>501 Not Implemented</code>.</p>
    #            </note>
    #   @return [String]
    class DeleteBucketPolicyRequest < Struct.new(
      nil,
      :bucket,
      :expected_bucket_owner,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bucket
    #   <p> The bucket name. </p>
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    class DeleteBucketReplicationRequest < Struct.new(
      nil,
      :bucket,
      :expected_bucket_owner,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bucket
    #   <p>Specifies the bucket being deleted.</p>
    #            <p>
    #               <b>Directory buckets </b> - When you use this operation with a directory bucket, you must use path-style requests in the format <code>https://s3express-control.<i>region-code</i>.amazonaws.com/<i>bucket-name</i>
    #               </code>. Virtual-hosted-style requests aren't supported. Directory bucket names must be unique in the chosen Zone (Availability Zone or Local Zone). Bucket names must also follow the format <code>
    #                  <i>bucket-base-name</i>--<i>zone-id</i>--x-s3</code> (for example, <code>
    #                  <i>DOC-EXAMPLE-BUCKET</i>--<i>usw2-az1</i>--x-s3</code>). For information about bucket naming restrictions, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/directory-bucket-naming-rules.html">Directory bucket naming rules</a> in the <i>Amazon S3 User Guide</i>
    #            </p>
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #            <note>
    #               <p>For directory buckets, this header is not supported in this API operation. If you specify this header, the request fails with the HTTP status code
    #   <code>501 Not Implemented</code>.</p>
    #            </note>
    #   @return [String]
    class DeleteBucketRequest < Struct.new(
      nil,
      :bucket,
      :expected_bucket_owner,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bucket
    #   <p>The bucket that has the tag set to be removed.</p>
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    class DeleteBucketTaggingRequest < Struct.new(
      nil,
      :bucket,
      :expected_bucket_owner,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bucket
    #   <p>The bucket name for which you want to remove the website configuration. </p>
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    class DeleteBucketWebsiteRequest < Struct.new(
      nil,
      :bucket,
      :expected_bucket_owner,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the delete marker.</p>
    # @!attribute owner
    #   <p>The account that created the delete marker. </p>
    #   @return [Types::Owner]
    # @!attribute key
    #   <p>The object key.</p>
    #   @return [String]
    # @!attribute version_id
    #   <p>Version ID of an object.</p>
    #   @return [String]
    # @!attribute is_latest
    #   <p>Specifies whether the object is (true) or is not (false) the latest version of an object. </p>
    #   @return [Boolean]
    # @!attribute last_modified
    #   <p>Date and time when the object was last modified.</p>
    #   @return [Time]
    class DeleteMarkerEntry < Struct.new(
      nil,
      :owner,
      :key,
      :version_id,
      :is_latest,
      :last_modified,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies whether Amazon S3 replicates delete markers. If you specify a <code>Filter</code> in your
    #       replication configuration, you must also include a <code>DeleteMarkerReplication</code> element. If your
    #         <code>Filter</code> includes a <code>Tag</code> element, the <code>DeleteMarkerReplication</code>
    #             <code>Status</code> must be set to Disabled, because Amazon S3 does not support replicating delete markers
    #       for tag-based rules. For an example configuration, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/replication-add-config.html#replication-config-min-rule-config">Basic Rule
    #         Configuration</a>. </p>
    #          <p>For more information about delete marker replication, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/delete-marker-replication.html">Basic Rule Configuration</a>. </p>
    #          <note>
    #             <p>If you are using an earlier version of the replication configuration, Amazon S3 handles replication of
    #         delete markers differently. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/replication-add-config.html#replication-backward-compat-considerations">Backward Compatibility</a>.</p>
    #          </note>
    # @!attribute status
    #   <p>Indicates whether to replicate delete markers.</p>
    #            <note>
    #               <p>Indicates whether to replicate delete markers.</p>
    #            </note>
    #   @return [String]
    class DeleteMarkerReplication < Struct.new(
      nil,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute object_version_id
    #   <p>The version ID of the object that the annotation was deleted from.</p>
    #   @return [String]
    # @!attribute request_charged
    #   <p>If present, indicates that the requester was successfully charged for the request. For more
    #         information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/RequesterPaysBuckets.html">Using Requester Pays buckets for storage transfers and usage</a> in the <i>Amazon Simple
    #           Storage Service user guide</i>.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    class DeleteObjectAnnotationOutput < Struct.new(
      nil,
      :object_version_id,
      :request_charged,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bucket
    #   <p>The name of the bucket that contains the object.</p>
    #   @return [String]
    # @!attribute key
    #   <p>The object key.</p>
    #   @return [String]
    # @!attribute annotation_name
    #   <p>The name of the annotation to delete. Annotation names are UTF-8 encoded and cannot start with
    #         <code>aws</code> or <code>s3</code> (case-insensitive).</p>
    #            <p>Length Constraints: Minimum length of 1. Maximum length of 512 bytes.</p>
    #   @return [String]
    # @!attribute version_id
    #   <p>The version ID of the object.</p>
    #   @return [String]
    # @!attribute request_payer
    #   <p>Confirms that the requester knows that they will be charged for the request. Bucket owners need not
    #         specify this parameter in their requests. If either the source or destination S3 bucket has Requester
    #         Pays enabled, the requester will pay for the corresponding charges. For information about
    #         downloading objects from Requester Pays buckets, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html">Downloading Objects in Requester Pays
    #           Buckets</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner.</p>
    #   @return [String]
    # @!attribute object_if_match
    #   <p>If specified, the operation only succeeds if the object's ETag matches the provided value.</p>
    #   @return [String]
    class DeleteObjectAnnotationRequest < Struct.new(
      nil,
      :bucket,
      :key,
      :annotation_name,
      :version_id,
      :request_payer,
      :expected_bucket_owner,
      :object_if_match,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute delete_marker
    #   <p>Indicates whether the specified object version that was permanently deleted was (true) or was not
    #         (false) a delete marker before deletion. In a simple DELETE, this header indicates whether (true) or not
    #         (false) the current version of the object is a delete marker. To learn more about delete markers, see
    #           <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/DeleteMarker.html">Working with delete
    #           markers</a>.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [Boolean]
    # @!attribute version_id
    #   <p>Returns the version ID of the delete marker created as a result of the DELETE operation.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute request_charged
    #   <p>If present, indicates that the requester was successfully charged for the request. For more
    #         information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/RequesterPaysBuckets.html">Using Requester Pays buckets for storage transfers and usage</a> in the <i>Amazon Simple
    #           Storage Service user guide</i>.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    class DeleteObjectOutput < Struct.new(
      nil,
      :delete_marker,
      :version_id,
      :request_charged,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bucket
    #   <p>The bucket name of the bucket containing the object. </p>
    #            <p>
    #               <b>Directory buckets</b> - When you use this operation with a directory bucket, you must use virtual-hosted-style requests in the format <code>
    #                  <i>Bucket-name</i>.s3express-<i>zone-id</i>.<i>region-code</i>.amazonaws.com</code>. Path-style requests are not supported.  Directory bucket names must be unique in the chosen Zone (Availability Zone or Local Zone). Bucket names must follow the format <code>
    #                  <i>bucket-base-name</i>--<i>zone-id</i>--x-s3</code> (for example, <code>
    #                  <i>amzn-s3-demo-bucket</i>--<i>usw2-az1</i>--x-s3</code>). For information about bucket naming
    #            restrictions, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/directory-bucket-naming-rules.html">Directory bucket naming
    #               rules</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <p>
    #               <b>Access points</b> - When you use this action with an access point for general purpose buckets, you must provide the alias of the access point in place of the bucket name or specify the access point ARN. When you use this action with an access point for directory buckets, you must provide the access point name in place of the bucket name. When using the access point ARN, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <note>
    #               <p>Object Lambda access points are not supported by directory buckets.</p>
    #            </note>
    #            <p>
    #               <b>S3 on Outposts</b> - When you use this action with S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the
    #                        form <code>
    #                  <i>AccessPointName</i>-<i>AccountId</i>.<i>outpostID</i>.s3-outposts.<i>Region</i>.amazonaws.com</code>. When you use this action with S3 on Outposts, the destination bucket must be the Outposts access point ARN or the access point alias. For more information about S3 on Outposts, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html">What is S3 on Outposts?</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute key
    #   <p>Key name of the object to delete.</p>
    #   @return [String]
    # @!attribute mfa
    #   <p>The concatenation of the authentication device's serial number, a space, and the value that is
    #         displayed on your authentication device. Required to permanently delete a versioned object if versioning
    #         is configured with MFA delete enabled.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute version_id
    #   <p>Version ID used to reference a specific version of the object.</p>
    #            <note>
    #               <p>For directory buckets in this API operation, only the <code>null</code> value of the version ID is supported.</p>
    #            </note>
    #   @return [String]
    # @!attribute request_payer
    #   <p>Confirms that the requester knows that they will be charged for the request. Bucket owners need not
    #         specify this parameter in their requests. If either the source or destination S3 bucket has Requester
    #         Pays enabled, the requester will pay for the corresponding charges. For information about
    #         downloading objects from Requester Pays buckets, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html">Downloading Objects in Requester Pays
    #           Buckets</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute bypass_governance_retention
    #   <p>Indicates whether S3 Object Lock should bypass Governance-mode restrictions to process this
    #         operation. To use this header, you must have the <code>s3:BypassGovernanceRetention</code>
    #         permission.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [Boolean]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    # @!attribute if_match
    #   <p>Deletes the object if the ETag (entity tag) value provided during the delete operation matches the ETag of the object in S3.
    #         If the ETag values do not match, the operation returns a <code>412 Precondition Failed</code> error.</p>
    #            <p>Expects the ETag value as a string. <code>If-Match</code> does accept a string value of an '*' (asterisk) character to denote a match of any ETag.</p>
    #            <p>For more information about conditional requests, see <a href="https://tools.ietf.org/html/rfc7232">RFC 7232</a>.</p>
    #   @return [String]
    # @!attribute if_match_last_modified_time
    #   <p>If present, the object is deleted only if its modification times matches the provided
    #           <code>Timestamp</code>. If the <code>Timestamp</code> values do not match, the operation returns a
    #           <code>412 Precondition Failed</code> error. If the <code>Timestamp</code> matches or if the object
    #         doesn’t exist, the operation returns a <code>204 Success (No Content)</code> response.</p>
    #            <note>
    #               <p>This functionality is only supported for directory buckets.</p>
    #            </note>
    #   @return [Time]
    # @!attribute if_match_size
    #   <p>If present, the object is deleted only if its size matches the provided size in bytes. If the
    #           <code>Size</code> value does not match, the operation returns a <code>412 Precondition Failed</code>
    #         error. If the <code>Size</code> matches or if the object doesn’t exist, the operation returns a
    #           <code>204 Success (No Content)</code> response.</p>
    #            <note>
    #               <p>This functionality is only supported for directory buckets.</p>
    #            </note>
    #            <important>
    #               <p>You can use the <code>If-Match</code>, <code>x-amz-if-match-last-modified-time</code> and
    #             <code>x-amz-if-match-size</code> conditional headers in conjunction with each-other or
    #           individually.</p>
    #            </important>
    #   @return [Integer]
    class DeleteObjectRequest < Struct.new(
      nil,
      :bucket,
      :key,
      :mfa,
      :version_id,
      :request_payer,
      :bypass_governance_retention,
      :expected_bucket_owner,
      :if_match,
      :if_match_last_modified_time,
      :if_match_size,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute version_id
    #   <p>The versionId of the object the tag-set was removed from.</p>
    #   @return [String]
    class DeleteObjectTaggingOutput < Struct.new(
      nil,
      :version_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bucket
    #   <p>The bucket name containing the objects from which to remove the tags. </p>
    #            <p>
    #               <b>Access points</b> - When you use this action with an access point for general purpose buckets, you must provide the alias of the access point in place of the bucket name or specify the access point ARN. When you use this action with an access point for directory buckets, you must provide the access point name in place of the bucket name. When using the access point ARN, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <p>
    #               <b>S3 on Outposts</b> - When you use this action with S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the
    #                        form <code>
    #                  <i>AccessPointName</i>-<i>AccountId</i>.<i>outpostID</i>.s3-outposts.<i>Region</i>.amazonaws.com</code>. When you use this action with S3 on Outposts, the destination bucket must be the Outposts access point ARN or the access point alias. For more information about S3 on Outposts, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html">What is S3 on Outposts?</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute key
    #   <p>The key that identifies the object in the bucket from which to remove all tags.</p>
    #   @return [String]
    # @!attribute version_id
    #   <p>The versionId of the object that the tag-set will be removed from.</p>
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    class DeleteObjectTaggingRequest < Struct.new(
      nil,
      :bucket,
      :key,
      :version_id,
      :expected_bucket_owner,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute deleted
    #   <p>Container element for a successful delete. It identifies the object that was successfully
    #         deleted.</p>
    #   @return [Array<Types::DeletedObject>]
    # @!attribute request_charged
    #   <p>If present, indicates that the requester was successfully charged for the request. For more
    #         information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/RequesterPaysBuckets.html">Using Requester Pays buckets for storage transfers and usage</a> in the <i>Amazon Simple
    #           Storage Service user guide</i>.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute errors
    #   <p>Container for a failed delete action that describes the object that Amazon S3 attempted to delete and the
    #         error it encountered.</p>
    #   @return [Array<Types::Error>]
    class DeleteObjectsOutput < Struct.new(
      nil,
      :deleted,
      :request_charged,
      :errors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bucket
    #   <p>The bucket name containing the objects to delete. </p>
    #            <p>
    #               <b>Directory buckets</b> - When you use this operation with a directory bucket, you must use virtual-hosted-style requests in the format <code>
    #                  <i>Bucket-name</i>.s3express-<i>zone-id</i>.<i>region-code</i>.amazonaws.com</code>. Path-style requests are not supported.  Directory bucket names must be unique in the chosen Zone (Availability Zone or Local Zone). Bucket names must follow the format <code>
    #                  <i>bucket-base-name</i>--<i>zone-id</i>--x-s3</code> (for example, <code>
    #                  <i>amzn-s3-demo-bucket</i>--<i>usw2-az1</i>--x-s3</code>). For information about bucket naming
    #            restrictions, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/directory-bucket-naming-rules.html">Directory bucket naming
    #               rules</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <p>
    #               <b>Access points</b> - When you use this action with an access point for general purpose buckets, you must provide the alias of the access point in place of the bucket name or specify the access point ARN. When you use this action with an access point for directory buckets, you must provide the access point name in place of the bucket name. When using the access point ARN, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <note>
    #               <p>Object Lambda access points are not supported by directory buckets.</p>
    #            </note>
    #            <p>
    #               <b>S3 on Outposts</b> - When you use this action with S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the
    #                        form <code>
    #                  <i>AccessPointName</i>-<i>AccountId</i>.<i>outpostID</i>.s3-outposts.<i>Region</i>.amazonaws.com</code>. When you use this action with S3 on Outposts, the destination bucket must be the Outposts access point ARN or the access point alias. For more information about S3 on Outposts, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html">What is S3 on Outposts?</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute delete
    #   <p>Container for the request.</p>
    #   @return [Types::Delete]
    # @!attribute mfa
    #   <p>The concatenation of the authentication device's serial number, a space, and the value that is
    #         displayed on your authentication device. Required to permanently delete a versioned object if versioning
    #         is configured with MFA delete enabled.</p>
    #            <p>When performing the <code>DeleteObjects</code> operation on an MFA delete enabled bucket, which
    #         attempts to delete the specified versioned objects, you must include an MFA token. If you don't provide
    #         an MFA token, the entire request will fail, even if there are non-versioned objects that you are trying
    #         to delete. If you provide an invalid token, whether there are versioned object keys in the request or
    #         not, the entire Multi-Object Delete request will fail. For information about MFA Delete, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/Versioning.html#MultiFactorAuthenticationDelete"> MFA
    #           Delete</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute request_payer
    #   <p>Confirms that the requester knows that they will be charged for the request. Bucket owners need not
    #         specify this parameter in their requests. If either the source or destination S3 bucket has Requester
    #         Pays enabled, the requester will pay for the corresponding charges. For information about
    #         downloading objects from Requester Pays buckets, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html">Downloading Objects in Requester Pays
    #           Buckets</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute bypass_governance_retention
    #   <p>Specifies whether you want to delete this object even if it has a Governance-type Object Lock in
    #         place. To use this header, you must have the <code>s3:BypassGovernanceRetention</code>
    #         permission.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [Boolean]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    # @!attribute checksum_algorithm
    #   <p>Indicates the algorithm used to create the checksum for the object when you use the SDK. This header will not provide any
    #       additional functionality if you don't use the SDK. When you send this header, there must be a corresponding <code>x-amz-checksum-<i>algorithm</i>
    #               </code> or
    #       <code>x-amz-trailer</code> header sent. Otherwise, Amazon S3 fails the request with the HTTP status code <code>400 Bad Request</code>.</p>
    #            <p>For the <code>x-amz-checksum-<i>algorithm</i>
    #               </code> header, replace <code>
    #                  <i>algorithm</i>
    #               </code> with the supported algorithm from the following list: </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CRC32</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CRC32C</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CRC64NVME</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MD5</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SHA1</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SHA256</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SHA512</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>XXHASH3</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>XXHASH64</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>XXHASH128</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>For more
    #       information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #       the <i>Amazon S3 User Guide</i>.</p>
    #            <p>If the individual checksum value you provide through <code>x-amz-checksum-<i>algorithm</i>
    #               </code> doesn't match the checksum algorithm you set through <code>x-amz-sdk-checksum-algorithm</code>, Amazon S3 fails the request with a <code>BadDigest</code> error.</p>
    #            <p>If you provide an individual checksum, Amazon S3 ignores any provided <code>ChecksumAlgorithm</code>
    #         parameter.</p>
    #   @return [String]
    class DeleteObjectsRequest < Struct.new(
      nil,
      :bucket,
      :delete,
      :mfa,
      :request_payer,
      :bypass_governance_retention,
      :expected_bucket_owner,
      :checksum_algorithm,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bucket
    #   <p>The Amazon S3 bucket whose <code>PublicAccessBlock</code> configuration you want to delete. </p>
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    class DeletePublicAccessBlockRequest < Struct.new(
      nil,
      :bucket,
      :expected_bucket_owner,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the deleted object.</p>
    # @!attribute key
    #   <p>The name of the deleted object.</p>
    #   @return [String]
    # @!attribute version_id
    #   <p>The version ID of the deleted object.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute delete_marker
    #   <p>Indicates whether the specified object version that was permanently deleted was (true) or was not
    #         (false) a delete marker before deletion. In a simple DELETE, this header indicates whether (true) or not
    #         (false) the current version of the object is a delete marker. To learn more about delete markers, see
    #           <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/DeleteMarker.html">Working with delete
    #           markers</a>.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [Boolean]
    # @!attribute delete_marker_version_id
    #   <p>The version ID of the delete marker created as a result of the DELETE operation. If you delete a
    #         specific object version, the value returned by this header is the version ID of the object version
    #         deleted.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    class DeletedObject < Struct.new(
      nil,
      :key,
      :version_id,
      :delete_marker,
      :delete_marker_version_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies information about where to publish analysis or configuration results for an Amazon S3 bucket
    #       and S3 Replication Time Control (S3 RTC).</p>
    # @!attribute bucket
    #   <p> The Amazon Resource Name (ARN) of the bucket where you want Amazon S3 to store the results.</p>
    #   @return [String]
    # @!attribute account
    #   <p>Destination bucket owner account ID. In a cross-account scenario, if you direct Amazon S3 to change
    #         replica ownership to the Amazon Web Services account that owns the destination bucket by specifying the
    #           <code>AccessControlTranslation</code> property, this is the account ID of the destination bucket
    #         owner. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/replication-change-owner.html">Replication Additional Configuration: Changing
    #           the Replica Owner</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute storage_class
    #   <p> The storage class to use when replicating objects, such as S3 Standard or reduced redundancy. By
    #         default, Amazon S3 uses the storage class of the source object to create the object replica. </p>
    #            <p>For valid values, see the <code>StorageClass</code> element of the <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/RESTBucketPUTreplication.html">PUT Bucket replication</a> action in the
    #           <i>Amazon S3 API Reference</i>.</p>
    #            <p>
    #               <code>FSX_OPENZFS</code> is not an accepted value when replicating objects.</p>
    #   @return [String]
    # @!attribute access_control_translation
    #   <p>Specify this only in a cross-account scenario (where source and destination bucket owners are not
    #         the same), and you want to change replica ownership to the Amazon Web Services account that owns the destination
    #         bucket. If this is not specified in the replication configuration, the replicas are owned by same
    #         Amazon Web Services account that owns the source object.</p>
    #   @return [Types::AccessControlTranslation]
    # @!attribute encryption_configuration
    #   <p>A container that provides information about encryption. If <code>SourceSelectionCriteria</code> is
    #         specified, you must specify this element.</p>
    #   @return [Types::EncryptionConfiguration]
    # @!attribute replication_time
    #   <p> A container specifying S3 Replication Time Control (S3 RTC), including whether S3 RTC is enabled and the time when all
    #         objects and operations on objects must be replicated. Must be specified together with a
    #           <code>Metrics</code> block. </p>
    #   @return [Types::ReplicationTime]
    # @!attribute metrics
    #   <p> A container specifying replication metrics-related settings enabling replication metrics and
    #         events. </p>
    #   @return [Types::Metrics]
    class Destination < Struct.new(
      nil,
      :bucket,
      :account,
      :storage_class,
      :access_control_translation,
      :encryption_configuration,
      :replication_time,
      :metrics,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #       The destination information for the S3 Metadata configuration.
    #     </p>
    # @!attribute table_bucket_type
    #   <p>
    #         The type of the table bucket where the metadata configuration is stored. The <code>aws</code>
    #         value indicates an Amazon Web Services managed table bucket, and the <code>customer</code> value indicates a
    #         customer-managed table bucket. V2 metadata configurations are stored in Amazon Web Services managed table
    #         buckets, and V1 metadata configurations are stored in customer-managed table buckets.
    #       </p>
    #   @return [String]
    # @!attribute table_bucket_arn
    #   <p>
    #         The Amazon Resource Name (ARN) of the table bucket where the metadata configuration is stored.
    #       </p>
    #   @return [String]
    # @!attribute table_namespace
    #   <p>
    #         The namespace in the table bucket where the metadata tables for a metadata configuration are
    #         stored.
    #       </p>
    #   @return [String]
    class DestinationResult < Struct.new(
      nil,
      :table_bucket_type,
      :table_bucket_arn,
      :table_namespace,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the type of server-side encryption used.</p>
    # @!attribute encryption_type
    #   <p>The server-side encryption algorithm used when storing job results in Amazon S3 (for example, AES256,
    #           <code>aws:kms</code>).</p>
    #   @return [String]
    # @!attribute kms_key_id
    #   <p>If the encryption type is <code>aws:kms</code>, this optional value specifies the ID of the
    #         symmetric encryption customer managed key to use for encryption of job results. Amazon S3 only supports symmetric
    #         encryption KMS keys. For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html">Asymmetric keys in KMS</a> in the
    #           <i>Amazon Web Services Key Management Service Developer Guide</i>.</p>
    #   @return [String]
    # @!attribute kms_context
    #   <p>If the encryption type is <code>aws:kms</code>, this optional value can be used to specify the
    #         encryption context for the restore results.</p>
    #   @return [String]
    class Encryption < Struct.new(
      nil,
      :encryption_type,
      :kms_key_id,
      :kms_context,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies encryption-related information for an Amazon S3 bucket that is a destination for replicated
    #       objects.</p>
    #          <note>
    #             <p>If you're specifying a customer managed KMS key, we recommend using a fully qualified KMS key
    #         ARN. If you use a KMS key alias instead, then KMS resolves the key within the requester’s account.
    #         This behavior can result in data that's encrypted with a KMS key that belongs to the requester, and
    #         not the bucket owner.</p>
    #          </note>
    # @!attribute replica_kms_key_id
    #   <p>Specifies the ID (Key ARN or Alias ARN) of the customer managed Amazon Web Services KMS key stored in Amazon Web Services Key
    #         Management Service (KMS) for the destination bucket. Amazon S3 uses this key to encrypt replica objects. Amazon S3
    #         only supports symmetric encryption KMS keys. For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html">Asymmetric keys in Amazon Web Services KMS</a> in the
    #           <i>Amazon Web Services Key Management Service Developer Guide</i>.</p>
    #   @return [String]
    class EncryptionConfiguration < Struct.new(
      nil,
      :replica_kms_key_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The existing object was created with a different encryption type. Subsequent write requests must
    #       include the appropriate encryption parameters in the request or while creating the session. </p>
    class EncryptionTypeMismatch < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A message that indicates the request is complete and no more messages will be sent. You should not
    #       assume that the request is complete until the client receives an <code>EndEvent</code>.</p>
    class EndEvent < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <note>
    #             <p>For information about using the Amazon S3 API—including error handling—see the <a href="https://docs.aws.amazon.com/AmazonS3/latest/developerguide/Welcome.html">Amazon S3 Developer Guide</a>.</p>
    #          </note>
    #          <p>Container for all error elements.</p>
    # @!attribute key
    #   <p>The error key.</p>
    #   @return [String]
    # @!attribute version_id
    #   <p>The version ID of the error.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute code
    #   <p>The error code is a string that uniquely identifies an error condition. It is meant to be read and
    #         understood by programs that detect and handle errors by type. The following is a list of Amazon S3 error
    #         codes. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html">Error responses</a>.</p>
    #            <ul>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> AccessDenied </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> Access Denied</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 403 Forbidden</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> AccountProblem</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> There is a problem with your Amazon Web Services account that prevents
    #                 the action from completing successfully. Contact Amazon Web Services Support for further assistance.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 403 Forbidden</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> AllAccessDisabled</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> All access to this Amazon S3 resource has been disabled.
    #                 Contact Amazon Web Services Support for further assistance.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 403 Forbidden</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> AmbiguousGrantByEmailAddress</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> The email address you provided is associated with more
    #                 than one account.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 400 Bad Request</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> AuthorizationHeaderMalformed</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> The authorization header you provided is invalid.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 400 Bad Request</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> N/A</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> BadDigest</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> The Content-MD5 you specified did not match what we
    #                 received.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 400 Bad Request</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> BucketAlreadyExists</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> The requested bucket name is not available. The bucket
    #                 namespace is shared by all users of the system. Please select a different name and try
    #                 again.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 409 Conflict</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> BucketAlreadyOwnedByYou</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> The bucket you tried to create already exists, and you own
    #                 it. Amazon S3 returns this error in all Amazon Web Services Regions except in the North Virginia Region. For legacy
    #                 compatibility, if you re-create an existing bucket that you already own in the North Virginia
    #                 Region, Amazon S3 returns 200 OK and resets the bucket access control lists (ACLs).</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> 409 Conflict (in all Regions except the North Virginia Region)
    #               </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> BucketNotEmpty</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> The bucket you tried to delete is not empty.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 409 Conflict</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> CredentialsNotSupported</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> This request does not support credentials.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 400 Bad Request</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> CrossLocationLoggingProhibited</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> Cross-location logging not allowed. Buckets in one
    #                 geographic location cannot log information to a bucket in another location.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 403 Forbidden</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> EntityTooSmall</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> Your proposed upload is smaller than the minimum allowed
    #                 object size.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 400 Bad Request</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> EntityTooLarge</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> Your proposed upload exceeds the maximum allowed object
    #                 size.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 400 Bad Request</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> ExpiredToken</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> The provided token has expired.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 400 Bad Request</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> IllegalVersioningConfigurationException </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> Indicates that the versioning configuration specified in
    #                 the request is invalid.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 400 Bad Request</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> IncompleteBody</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> You did not provide the number of bytes specified by the
    #                 Content-Length HTTP header</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 400 Bad Request</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> IncorrectNumberOfFilesInPostRequest</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> POST requires exactly one file upload per request.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 400 Bad Request</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> InlineDataTooLarge</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> Inline data exceeds the maximum allowed size.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 400 Bad Request</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> InternalError</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> We encountered an internal error. Please try again.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 500 Internal Server Error</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Server</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> InvalidAccessKeyId</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> The Amazon Web Services access key ID you provided does not exist in our
    #                 records.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 403 Forbidden</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> InvalidAddressingHeader</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> You must specify the Anonymous role.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> N/A</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> InvalidArgument</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> Invalid Argument</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 400 Bad Request</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> InvalidBucketName</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> The specified bucket is not valid.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 400 Bad Request</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> InvalidBucketState</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> The request is not valid with the current state of the
    #                 bucket.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 409 Conflict</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> InvalidDigest</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> The Content-MD5 you specified is not valid.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 400 Bad Request</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> InvalidEncryptionAlgorithmError</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> The encryption request you specified is not valid. The
    #                 valid value is AES256.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 400 Bad Request</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> InvalidLocationConstraint</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> The specified location constraint is not valid. For more
    #                 information about Regions, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingBucket.html#access-bucket-intro">How to Select a Region for Your
    #                   Buckets</a>. </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 400 Bad Request</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> InvalidObjectState</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> The action is not valid for the current state of the
    #                 object.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 403 Forbidden</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> InvalidPart</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> One or more of the specified parts could not be found. The
    #                 part might not have been uploaded, or the specified entity tag might not have matched the part's
    #                 entity tag.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 400 Bad Request</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> InvalidPartOrder</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> The list of parts was not in ascending order. Parts list
    #                 must be specified in order by part number.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 400 Bad Request</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> InvalidPayer</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> All access to this object has been disabled. Please
    #                 contact Amazon Web Services Support for further assistance.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 403 Forbidden</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> InvalidPolicyDocument</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> The content of the form does not meet the conditions
    #                 specified in the policy document.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 400 Bad Request</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> InvalidRange</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> The requested range cannot be satisfied.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 416 Requested Range Not Satisfiable</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> InvalidRequest</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> Please use <code>AWS4-HMAC-SHA256</code>.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 400 Bad Request</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> N/A</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> InvalidRequest</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> SOAP requests must be made over an HTTPS
    #                 connection.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 400 Bad Request</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> InvalidRequest</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> Amazon S3 Transfer Acceleration is not supported for buckets
    #                 with non-DNS compliant names.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 400 Bad Request</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> N/A</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> InvalidRequest</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> Amazon S3 Transfer Acceleration is not supported for buckets
    #                 with periods (.) in their names.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 400 Bad Request</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> N/A</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> InvalidRequest</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> Amazon S3 Transfer Accelerate endpoint only supports virtual
    #                 style requests.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 400 Bad Request</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> N/A</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> InvalidRequest</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> Amazon S3 Transfer Accelerate is not configured on this
    #                 bucket.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 400 Bad Request</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> N/A</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> InvalidRequest</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> Amazon S3 Transfer Accelerate is disabled on this
    #                 bucket.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 400 Bad Request</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> N/A</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> InvalidRequest</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> Amazon S3 Transfer Acceleration is not supported on this
    #                 bucket. Contact Amazon Web Services Support for more information.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 400 Bad Request</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> N/A</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> InvalidRequest</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> Amazon S3 Transfer Acceleration cannot be enabled on this
    #                 bucket. Contact Amazon Web Services Support for more information.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 400 Bad Request</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> N/A</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> InvalidSecurity</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> The provided security credentials are not valid.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 403 Forbidden</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> InvalidSOAPRequest</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> The SOAP request body is invalid.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 400 Bad Request</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> InvalidStorageClass</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> The storage class you specified is not valid.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 400 Bad Request</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> InvalidTargetBucketForLogging</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> The target bucket for logging does not exist, is not owned
    #                 by you, or does not have the appropriate grants for the log-delivery group. </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 400 Bad Request</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> InvalidToken</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> The provided token is malformed or otherwise
    #                 invalid.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 400 Bad Request</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> InvalidURI</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> Couldn't parse the specified URI.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 400 Bad Request</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> KeyTooLongError</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> Your key is too long.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 400 Bad Request</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> MalformedACLError</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> The XML you provided was not well-formed or did not
    #                 validate against our published schema.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 400 Bad Request</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> MalformedPOSTRequest </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> The body of your POST request is not well-formed
    #                 multipart/form-data.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 400 Bad Request</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> MalformedXML</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> This happens when the user sends malformed XML (XML that
    #                 doesn't conform to the published XSD) for the configuration. The error message is, "The XML you
    #                 provided was not well-formed or did not validate against our published schema." </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 400 Bad Request</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> MaxMessageLengthExceeded</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> Your request was too big.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 400 Bad Request</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> MaxPostPreDataLengthExceededError</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> Your POST request fields preceding the upload file were
    #                 too large.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 400 Bad Request</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> MetadataTooLarge</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> Your metadata headers exceed the maximum allowed metadata
    #                 size.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 400 Bad Request</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> MethodNotAllowed</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> The specified method is not allowed against this
    #                 resource.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 405 Method Not Allowed</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> MissingAttachment</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> A SOAP attachment was expected, but none were
    #                 found.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> N/A</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> MissingContentLength</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> You must provide the Content-Length HTTP header.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 411 Length Required</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> MissingRequestBodyError</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> This happens when the user sends an empty XML document as
    #                 a request. The error message is, "Request body is empty." </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 400 Bad Request</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> MissingSecurityElement</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> The SOAP 1.1 request is missing a security element.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 400 Bad Request</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> MissingSecurityHeader</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> Your request is missing a required header.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 400 Bad Request</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> NoLoggingStatusForKey</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> There is no such thing as a logging status subresource for
    #                 a key.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 400 Bad Request</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> NoSuchBucket</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> The specified bucket does not exist.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 404 Not Found</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> NoSuchBucketPolicy</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> The specified bucket does not have a bucket policy.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 404 Not Found</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> NoSuchKey</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> The specified key does not exist.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 404 Not Found</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> NoSuchLifecycleConfiguration</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> The lifecycle configuration does not exist. </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 404 Not Found</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> NoSuchUpload</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> The specified multipart upload does not exist. The upload
    #                 ID might be invalid, or the multipart upload might have been aborted or completed.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 404 Not Found</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> NoSuchVersion </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> Indicates that the version ID specified in the request
    #                 does not match an existing version.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 404 Not Found</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> NotImplemented</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> A header you provided implies functionality that is not
    #                 implemented.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 501 Not Implemented</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Server</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> NotSignedUp</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> Your account is not signed up for the Amazon S3 service. You
    #                 must sign up before you can use Amazon S3. You can sign up at the following URL: <a href="http://aws.amazon.com/s3">Amazon S3</a>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 403 Forbidden</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> OperationAborted</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> A conflicting conditional action is currently in progress
    #                 against this resource. Try again.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 409 Conflict</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> PermanentRedirect</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> The bucket you are attempting to access must be addressed
    #                 using the specified endpoint. Send all future requests to this endpoint.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 301 Moved Permanently</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> PreconditionFailed</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> At least one of the preconditions you specified did not
    #                 hold.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 412 Precondition Failed</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> Redirect</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> Temporary redirect.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 307 Moved Temporarily</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> RestoreAlreadyInProgress</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> Object restore is already in progress.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 409 Conflict</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> RequestIsNotMultiPartContent</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> Bucket POST must be of the enclosure-type
    #                 multipart/form-data.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 400 Bad Request</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> RequestTimeout</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> Your socket connection to the server was not read from or
    #                 written to within the timeout period.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 400 Bad Request</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> RequestTimeTooSkewed</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> The difference between the request time and the server's
    #                 time is too large.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 403 Forbidden</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> RequestTorrentOfBucketError</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> Requesting the torrent file of a bucket is not
    #                 permitted.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 400 Bad Request</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> SignatureDoesNotMatch</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> The request signature we calculated does not match the
    #                 signature you provided. Check your Amazon Web Services secret access key and signing method. For more
    #                 information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/RESTAuthentication.html">REST Authentication</a> and <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/SOAPAuthentication.html">SOAP Authentication</a> for
    #                 details.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 403 Forbidden</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> ServiceUnavailable</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> Service is unable to handle request.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 503 Service Unavailable</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Server</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> SlowDown</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> Reduce your request rate.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 503 Slow Down</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Server</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> TemporaryRedirect</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> You are being redirected to the bucket while DNS
    #                 updates.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 307 Moved Temporarily</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> TokenRefreshRequired</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> The provided token must be refreshed.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 400 Bad Request</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> TooManyBuckets</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> You have attempted to create more buckets than
    #                 allowed.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 400 Bad Request</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> UnexpectedContent</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> This request does not support content.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 400 Bad Request</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> UnresolvableGrantByEmailAddress</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> The email address you provided does not match any account
    #                 on record.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 400 Bad Request</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <i>Code:</i> UserKeyMustBeSpecified</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>Description:</i> The bucket POST must contain the specified field name. If
    #                 it is specified, check the order of the fields.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>HTTP Status Code:</i> 400 Bad Request</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <i>SOAP Fault Code Prefix:</i> Client</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #            </ul>
    #            <p></p>
    #   @return [String]
    # @!attribute message
    #   <p>The error message contains a generic description of the error condition in English. It is intended
    #         for a human audience. Simple programs display the message directly to the end user if they encounter an
    #         error condition they don't know how or don't care to handle. Sophisticated programs with more exhaustive
    #         error handling and proper internationalization are more likely to ignore the error message.</p>
    #   @return [String]
    class Error < Struct.new(
      nil,
      :key,
      :version_id,
      :code,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> If an S3 Metadata V1 <code>CreateBucketMetadataTableConfiguration</code> or V2
    #       <code>CreateBucketMetadataConfiguration</code> request succeeds, but S3 Metadata was
    #       unable to create the table, this structure contains the error code and error message. </p>
    #          <note>
    #             <p>If you created your S3 Metadata configuration before July 15, 2025, we recommend that you delete
    #         and re-create your configuration by using <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateBucketMetadataConfiguration.html">CreateBucketMetadataConfiguration</a> so that you can expire journal table records and create
    #         a live inventory table.</p>
    #          </note>
    # @!attribute error_code
    #   <p> If the V1 <code>CreateBucketMetadataTableConfiguration</code> request succeeds, but S3 Metadata was
    #         unable to create the table, this structure contains the error code. The possible error codes and error
    #         messages are as follows: </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>AccessDeniedCreatingResources</code> - You don't have sufficient permissions to create the
    #             required resources. Make sure that you have <code>s3tables:CreateNamespace</code>,
    #               <code>s3tables:CreateTable</code>, <code>s3tables:GetTable</code> and
    #               <code>s3tables:PutTablePolicy</code> permissions, and then try again. To create a new metadata
    #             table, you must delete the metadata configuration for this bucket, and then create a new metadata
    #             configuration. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AccessDeniedWritingToTable</code> - Unable to write to the metadata table because of
    #             missing resource permissions. To fix the resource policy, Amazon S3 needs to create a new metadata
    #             table. To create a new metadata table, you must delete the metadata configuration for this bucket,
    #             and then create a new metadata configuration.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DestinationTableNotFound</code> - The destination table doesn't exist. To create a new
    #             metadata table, you must delete the metadata configuration for this bucket, and then create a new
    #             metadata configuration.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ServerInternalError</code> - An internal error has occurred. To create a new metadata
    #             table, you must delete the metadata configuration for this bucket, and then create a new metadata
    #             configuration.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TableAlreadyExists</code> - The table that you specified already exists in the table
    #             bucket's namespace. Specify a different table name. To create a new metadata table, you must delete
    #             the metadata configuration for this bucket, and then create a new metadata configuration.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TableBucketNotFound</code> - The table bucket that you specified doesn't exist in this
    #             Amazon Web Services Region and account. Create or choose a different table bucket. To create a new metadata table,
    #             you must delete the metadata configuration for this bucket, and then create a new metadata
    #             configuration.</p>
    #               </li>
    #            </ul>
    #            <p> If the V2 <code>CreateBucketMetadataConfiguration</code> request succeeds, but S3 Metadata was
    #         unable to create the table, this structure contains the error code. The possible error codes and error
    #         messages are as follows: </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>AccessDeniedCreatingResources</code> - You don't have sufficient permissions to create
    #             the required resources. Make sure that you have <code>s3tables:CreateTableBucket</code>,
    #             <code>s3tables:CreateNamespace</code>, <code>s3tables:CreateTable</code>,
    #             <code>s3tables:GetTable</code>, <code>s3tables:PutTablePolicy</code>,
    #             <code>kms:DescribeKey</code>, and <code>s3tables:PutTableEncryption</code> permissions.
    #             Additionally, ensure that the KMS key used to encrypt the table still exists, is active and
    #             has a resource policy granting access to the S3 service principals
    #             '<code>maintenance.s3tables.amazonaws.com</code>' and '<code>metadata.s3.amazonaws.com</code>'.
    #             To create a new metadata table, you must delete the metadata configuration for this bucket, and
    #             then create a new metadata configuration. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AccessDeniedWritingToTable</code> - Unable to write to the metadata table because of
    #             missing resource permissions. To fix the resource policy, Amazon S3 needs to create a new metadata
    #             table. To create a new metadata table, you must delete the metadata configuration for this bucket,
    #             and then create a new metadata configuration.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DestinationTableNotFound</code> - The destination table doesn't exist. To create a new
    #             metadata table, you must delete the metadata configuration for this bucket, and then create a new
    #             metadata configuration.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ServerInternalError</code> - An internal error has occurred. To create a new metadata
    #             table, you must delete the metadata configuration for this bucket, and then create a new metadata
    #             configuration.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>JournalTableAlreadyExists</code> - A journal table already exists in the Amazon Web Services managed table bucket's
    #             namespace. Delete the journal table, and then try again. To create a new metadata table, you must delete
    #             the metadata configuration for this bucket, and then create a new metadata configuration.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>InventoryTableAlreadyExists</code> - An inventory table already exists in the Amazon Web Services managed table
    #             bucket's namespace. Delete the inventory table, and then try again. To create a new metadata table, you must delete
    #             the metadata configuration for this bucket, and then create a new metadata configuration.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>JournalTableNotAvailable</code> - The journal table that the inventory table relies on
    #             has a <code>FAILED</code> status. An inventory table requires a journal table with an
    #             <code>ACTIVE</code> status. To create a new journal or inventory table, you must delete the metadata
    #             configuration for this bucket, along with any journal or inventory tables, and then create a new
    #             metadata configuration.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NoSuchBucket</code> - The specified general purpose bucket does not exist.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute error_message
    #   <p> If the V1 <code>CreateBucketMetadataTableConfiguration</code> request succeeds, but S3 Metadata was
    #         unable to create the table, this structure contains the error message. The possible error codes and
    #         error messages are as follows: </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>AccessDeniedCreatingResources</code> - You don't have sufficient permissions to create the
    #             required resources. Make sure that you have <code>s3tables:CreateNamespace</code>,
    #               <code>s3tables:CreateTable</code>, <code>s3tables:GetTable</code> and
    #               <code>s3tables:PutTablePolicy</code> permissions, and then try again. To create a new metadata
    #             table, you must delete the metadata configuration for this bucket, and then create a new metadata
    #             configuration. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AccessDeniedWritingToTable</code> - Unable to write to the metadata table because of
    #             missing resource permissions. To fix the resource policy, Amazon S3 needs to create a new metadata
    #             table. To create a new metadata table, you must delete the metadata configuration for this bucket,
    #             and then create a new metadata configuration.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DestinationTableNotFound</code> - The destination table doesn't exist. To create a new
    #             metadata table, you must delete the metadata configuration for this bucket, and then create a new
    #             metadata configuration.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ServerInternalError</code> - An internal error has occurred. To create a new metadata
    #             table, you must delete the metadata configuration for this bucket, and then create a new metadata
    #             configuration.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TableAlreadyExists</code> - The table that you specified already exists in the table
    #             bucket's namespace. Specify a different table name. To create a new metadata table, you must delete
    #             the metadata configuration for this bucket, and then create a new metadata configuration.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TableBucketNotFound</code> - The table bucket that you specified doesn't exist in this
    #             Amazon Web Services Region and account. Create or choose a different table bucket. To create a new metadata table,
    #             you must delete the metadata configuration for this bucket, and then create a new metadata
    #             configuration.</p>
    #               </li>
    #            </ul>
    #            <p> If the V2 <code>CreateBucketMetadataConfiguration</code> request succeeds, but S3 Metadata was
    #         unable to create the table, this structure contains the error code. The possible error codes and error
    #         messages are as follows: </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>AccessDeniedCreatingResources</code> - You don't have sufficient permissions to create
    #             the required resources. Make sure that you have <code>s3tables:CreateTableBucket</code>,
    #             <code>s3tables:CreateNamespace</code>, <code>s3tables:CreateTable</code>,
    #             <code>s3tables:GetTable</code>, <code>s3tables:PutTablePolicy</code>,
    #             <code>kms:DescribeKey</code>, and <code>s3tables:PutTableEncryption</code> permissions.
    #             Additionally, ensure that the KMS key used to encrypt the table still exists, is active and
    #             has a resource policy granting access to the S3 service principals
    #             '<code>maintenance.s3tables.amazonaws.com</code>' and '<code>metadata.s3.amazonaws.com</code>'.
    #             To create a new metadata table, you must delete the metadata configuration for this bucket, and
    #             then create a new metadata configuration. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AccessDeniedWritingToTable</code> - Unable to write to the metadata table because of
    #             missing resource permissions. To fix the resource policy, Amazon S3 needs to create a new metadata
    #             table. To create a new metadata table, you must delete the metadata configuration for this bucket,
    #             and then create a new metadata configuration.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DestinationTableNotFound</code> - The destination table doesn't exist. To create a new
    #             metadata table, you must delete the metadata configuration for this bucket, and then create a new
    #             metadata configuration.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ServerInternalError</code> - An internal error has occurred. To create a new metadata
    #             table, you must delete the metadata configuration for this bucket, and then create a new metadata
    #             configuration.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>JournalTableAlreadyExists</code> - A journal table already exists in the Amazon Web Services managed table bucket's
    #             namespace. Delete the journal table, and then try again. To create a new metadata table, you must delete
    #             the metadata configuration for this bucket, and then create a new metadata configuration.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>InventoryTableAlreadyExists</code> - An inventory table already exists in the Amazon Web Services managed table
    #             bucket's namespace. Delete the inventory table, and then try again. To create a new metadata table, you must delete
    #             the metadata configuration for this bucket, and then create a new metadata configuration.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>JournalTableNotAvailable</code> - The journal table that the inventory table relies on
    #             has a <code>FAILED</code> status. An inventory table requires a journal table with an
    #             <code>ACTIVE</code> status. To create a new journal or inventory table, you must delete the metadata
    #             configuration for this bucket, along with any journal or inventory tables, and then create a new
    #             metadata configuration.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NoSuchBucket</code> - The specified general purpose bucket does not exist.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class ErrorDetails < Struct.new(
      nil,
      :error_code,
      :error_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The error information.</p>
    # @!attribute key
    #   <p>The object key name to use when a 4XX class error occurs.</p>
    #            <important>
    #               <p>Replacement must be made for object keys containing special characters (such as carriage returns) when using
    #            XML requests. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-keys.html#object-key-xml-related-constraints">
    #               XML related object key constraints</a>.</p>
    #            </important>
    #   @return [String]
    class ErrorDocument < Struct.new(
      nil,
      :key,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A container for specifying the configuration for Amazon EventBridge.</p>
    class EventBridgeConfiguration < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the event hold duration configuration, specified in either days or years.</p>
    # @!attribute days
    #   <p>The number of days for the event hold duration. The minimum value is 1 and the maximum value is
    #         36,500.</p>
    #   @return [Integer]
    # @!attribute years
    #   <p>The number of years for the event hold duration. The minimum value is 1 and the maximum value is
    #         100.</p>
    #   @return [Integer]
    class EventHoldDuration < Struct.new(
      nil,
      :days,
      :years,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Optional configuration to replicate existing source bucket objects. </p>
    #          <note>
    #             <p>This parameter is no longer supported. To replicate existing objects, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-batch-replication-batch.html">Replicating
    #           existing objects with S3 Batch Replication</a> in the
    #         <i>Amazon S3 User Guide</i>.</p>
    #          </note>
    # @!attribute status
    #   <p>Specifies whether Amazon S3 replicates existing source bucket objects. </p>
    #   @return [String]
    class ExistingObjectReplication < Struct.new(
      nil,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the Amazon S3 object key name to filter on. An object key name is the name assigned to an
    #       object in your Amazon S3 bucket. You specify whether to filter on the suffix or prefix of the object key
    #       name. A prefix is a specific string of characters at the beginning of an object key name, which you can
    #       use to organize objects. For example, you can start the key names of related objects with a prefix, such
    #       as <code>2023-</code> or <code>engineering/</code>. Then, you can use <code>FilterRule</code> to find
    #       objects in a bucket with key names that have the same prefix. A suffix is similar to a prefix, but it is
    #       at the end of the object key name instead of at the beginning.</p>
    # @!attribute name
    #   <p>The object key name prefix or suffix identifying one or more objects to which the filtering rule
    #         applies. The maximum length is 1,024 characters. Overlapping prefixes and suffixes are not supported.
    #         For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/NotificationHowTo.html">Configuring Event Notifications</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value that the filter searches for in object key names.</p>
    #   @return [String]
    class FilterRule < Struct.new(
      nil,
      :name,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute abac_status
    #   <p>The ABAC status of the general purpose bucket. </p>
    #   @return [Types::AbacStatus]
    class GetBucketAbacOutput < Struct.new(
      nil,
      :abac_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bucket
    #   <p>The name of the general purpose bucket.</p>
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The Amazon Web Services account ID of the general purpose bucket's owner. </p>
    #   @return [String]
    class GetBucketAbacRequest < Struct.new(
      nil,
      :bucket,
      :expected_bucket_owner,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute status
    #   <p>The accelerate configuration of the bucket.</p>
    #   @return [String]
    # @!attribute request_charged
    #   <p>If present, indicates that the requester was successfully charged for the request. For more
    #         information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/RequesterPaysBuckets.html">Using Requester Pays buckets for storage transfers and usage</a> in the <i>Amazon Simple
    #           Storage Service user guide</i>.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    class GetBucketAccelerateConfigurationOutput < Struct.new(
      nil,
      :status,
      :request_charged,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bucket
    #   <p>The name of the bucket for which the accelerate configuration is retrieved.</p>
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    # @!attribute request_payer
    #   <p>Confirms that the requester knows that they will be charged for the request. Bucket owners need not
    #         specify this parameter in their requests. If either the source or destination S3 bucket has Requester
    #         Pays enabled, the requester will pay for the corresponding charges. For information about
    #         downloading objects from Requester Pays buckets, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html">Downloading Objects in Requester Pays
    #           Buckets</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    class GetBucketAccelerateConfigurationRequest < Struct.new(
      nil,
      :bucket,
      :expected_bucket_owner,
      :request_payer,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute owner
    #   <p>Container for the bucket owner's ID.</p>
    #   @return [Types::Owner]
    # @!attribute grants
    #   <p>A list of grants.</p>
    #   @return [Array<Types::Grant>]
    class GetBucketAclOutput < Struct.new(
      nil,
      :owner,
      :grants,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bucket
    #   <p>Specifies the S3 bucket whose ACL is being requested.</p>
    #            <p>When you use this API operation with an access point, provide the alias of the access point in place of the bucket name.</p>
    #            <p>When you use this API operation with an Object Lambda access point, provide the alias of the Object Lambda access point in place of the bucket name.
    #   If the Object Lambda access point alias in a request is not valid, the error code <code>InvalidAccessPointAliasError</code> is returned.
    #   For more information about <code>InvalidAccessPointAliasError</code>, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html#ErrorCodeList">List of
    #               Error Codes</a>.</p>
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    class GetBucketAclRequest < Struct.new(
      nil,
      :bucket,
      :expected_bucket_owner,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute analytics_configuration
    #   <p>The configuration and any analyses for the analytics filter.</p>
    #   @return [Types::AnalyticsConfiguration]
    class GetBucketAnalyticsConfigurationOutput < Struct.new(
      nil,
      :analytics_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bucket
    #   <p>The name of the bucket from which an analytics configuration is retrieved.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID that identifies the analytics configuration.</p>
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    class GetBucketAnalyticsConfigurationRequest < Struct.new(
      nil,
      :bucket,
      :id,
      :expected_bucket_owner,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute cors_rules
    #   <p>A set of origins and methods (cross-origin access that you want to allow). You can add up to 100
    #         rules to the configuration.</p>
    #   @return [Array<Types::CORSRule>]
    class GetBucketCorsOutput < Struct.new(
      nil,
      :cors_rules,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bucket
    #   <p>The bucket name for which to get the cors configuration.</p>
    #            <p>When you use this API operation with an access point, provide the alias of the access point in place of the bucket name.</p>
    #            <p>When you use this API operation with an Object Lambda access point, provide the alias of the Object Lambda access point in place of the bucket name.
    #   If the Object Lambda access point alias in a request is not valid, the error code <code>InvalidAccessPointAliasError</code> is returned.
    #   For more information about <code>InvalidAccessPointAliasError</code>, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html#ErrorCodeList">List of
    #               Error Codes</a>.</p>
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    class GetBucketCorsRequest < Struct.new(
      nil,
      :bucket,
      :expected_bucket_owner,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute server_side_encryption_configuration
    #   <p>Specifies the default server-side-encryption configuration.</p>
    #   @return [Types::ServerSideEncryptionConfiguration]
    class GetBucketEncryptionOutput < Struct.new(
      nil,
      :server_side_encryption_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bucket
    #   <p>The name of the bucket from which the server-side encryption configuration is retrieved.</p>
    #            <p>
    #               <b>Directory buckets </b> - When you use this operation with a directory bucket, you must use path-style requests in the format <code>https://s3express-control.<i>region-code</i>.amazonaws.com/<i>bucket-name</i>
    #               </code>. Virtual-hosted-style requests aren't supported. Directory bucket names must be unique in the chosen Zone (Availability Zone or Local Zone). Bucket names must also follow the format <code>
    #                  <i>bucket-base-name</i>--<i>zone-id</i>--x-s3</code> (for example, <code>
    #                  <i>DOC-EXAMPLE-BUCKET</i>--<i>usw2-az1</i>--x-s3</code>). For information about bucket naming restrictions, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/directory-bucket-naming-rules.html">Directory bucket naming rules</a> in the <i>Amazon S3 User Guide</i>
    #            </p>
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #            <note>
    #               <p>For directory buckets, this header is not supported in this API operation. If you specify this header, the request fails with the HTTP status code
    #   <code>501 Not Implemented</code>.</p>
    #            </note>
    #   @return [String]
    class GetBucketEncryptionRequest < Struct.new(
      nil,
      :bucket,
      :expected_bucket_owner,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute intelligent_tiering_configuration
    #   <p>Container for S3 Intelligent-Tiering configuration.</p>
    #   @return [Types::IntelligentTieringConfiguration]
    class GetBucketIntelligentTieringConfigurationOutput < Struct.new(
      nil,
      :intelligent_tiering_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bucket
    #   <p>The name of the Amazon S3 bucket whose configuration you want to modify or retrieve.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID used to identify the S3 Intelligent-Tiering configuration.</p>
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    class GetBucketIntelligentTieringConfigurationRequest < Struct.new(
      nil,
      :bucket,
      :id,
      :expected_bucket_owner,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute inventory_configuration
    #   <p>Specifies the inventory configuration.</p>
    #   @return [Types::InventoryConfiguration]
    class GetBucketInventoryConfigurationOutput < Struct.new(
      nil,
      :inventory_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bucket
    #   <p>The name of the bucket containing the inventory configuration to retrieve.</p>
    #            <p>
    #               <b>Directory buckets </b> - When you use this operation with a directory bucket, you must use path-style requests in the format <code>https://s3express-control.<i>region-code</i>.amazonaws.com/<i>bucket-name</i>
    #               </code>. Virtual-hosted-style requests aren't supported. Directory bucket names must be unique in the chosen Zone (Availability Zone or Local Zone). Bucket names must also follow the format <code>
    #                  <i>bucket-base-name</i>--<i>zone-id</i>--x-s3</code> (for example, <code>
    #                  <i>DOC-EXAMPLE-BUCKET</i>--<i>usw2-az1</i>--x-s3</code>). For information about bucket naming restrictions, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/directory-bucket-naming-rules.html">Directory bucket naming rules</a> in the <i>Amazon S3 User Guide</i>
    #            </p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID used to identify the inventory configuration.</p>
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #            <note>
    #               <p>For directory buckets, this header is not supported in this API operation. If you specify this header, the request fails with the HTTP status code
    #   <code>501 Not Implemented</code>.</p>
    #            </note>
    #   @return [String]
    class GetBucketInventoryConfigurationRequest < Struct.new(
      nil,
      :bucket,
      :id,
      :expected_bucket_owner,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute rules
    #   <p>Container for a lifecycle rule.</p>
    #   @return [Array<Types::LifecycleRule>]
    # @!attribute transition_default_minimum_object_size
    #   <p>Indicates which default minimum object size behavior is applied to the lifecycle
    #         configuration.</p>
    #            <note>
    #               <p>This parameter applies to general purpose buckets only. It isn't supported for directory bucket
    #           lifecycle configurations.</p>
    #            </note>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>all_storage_classes_128K</code> - Objects smaller than 128 KB will not transition to
    #             any storage class by default.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>varies_by_storage_class</code> - Objects smaller than 128 KB will transition to Glacier
    #             Flexible Retrieval or Glacier Deep Archive storage classes. By default, all other storage classes
    #             will prevent transitions smaller than 128 KB. </p>
    #               </li>
    #            </ul>
    #            <p>To customize the minimum object size for any transition you can add a filter that specifies a custom
    #           <code>ObjectSizeGreaterThan</code> or <code>ObjectSizeLessThan</code> in the body of your transition
    #         rule. Custom filters always take precedence over the default transition behavior.</p>
    #   @return [String]
    class GetBucketLifecycleConfigurationOutput < Struct.new(
      nil,
      :rules,
      :transition_default_minimum_object_size,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bucket
    #   <p>The name of the bucket for which to get the lifecycle information.</p>
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #            <note>
    #               <p>This parameter applies to general purpose buckets only. It is not supported for directory bucket
    #           lifecycle configurations.</p>
    #            </note>
    #   @return [String]
    class GetBucketLifecycleConfigurationRequest < Struct.new(
      nil,
      :bucket,
      :expected_bucket_owner,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute location_constraint
    #   <p>Specifies the Region where the bucket resides. For a list of all the Amazon S3 supported location
    #         constraints by Region, see <a href="https://docs.aws.amazon.com/general/latest/gr/rande.html#s3_region">Regions and Endpoints</a>.</p>
    #            <p>Buckets in Region <code>us-east-1</code> have a LocationConstraint of <code>null</code>. Buckets
    #         with a LocationConstraint of <code>EU</code> reside in <code>eu-west-1</code>.</p>
    #   @return [String]
    class GetBucketLocationOutput < Struct.new(
      nil,
      :location_constraint,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bucket
    #   <p>The name of the bucket for which to get the location.</p>
    #            <p>When you use this API operation with an access point, provide the alias of the access point in place of the bucket name.</p>
    #            <p>When you use this API operation with an Object Lambda access point, provide the alias of the Object Lambda access point in place of the bucket name.
    #   If the Object Lambda access point alias in a request is not valid, the error code <code>InvalidAccessPointAliasError</code> is returned.
    #   For more information about <code>InvalidAccessPointAliasError</code>, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html#ErrorCodeList">List of
    #               Error Codes</a>.</p>
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    class GetBucketLocationRequest < Struct.new(
      nil,
      :bucket,
      :expected_bucket_owner,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute logging_enabled
    #   <p>Describes where logs are stored and the prefix that Amazon S3 assigns to all log object keys for a
    #         bucket. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/RESTBucketPUTlogging.html">PUT Bucket logging</a> in the
    #           <i>Amazon S3 API Reference</i>.</p>
    #   @return [Types::LoggingEnabled]
    class GetBucketLoggingOutput < Struct.new(
      nil,
      :logging_enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bucket
    #   <p>The bucket name for which to get the logging information.</p>
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    class GetBucketLoggingRequest < Struct.new(
      nil,
      :bucket,
      :expected_bucket_owner,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute get_bucket_metadata_configuration_result
    #   <p>
    #         The metadata configuration for the general purpose bucket.
    #       </p>
    #   @return [Types::GetBucketMetadataConfigurationResult]
    class GetBucketMetadataConfigurationOutput < Struct.new(
      nil,
      :get_bucket_metadata_configuration_result,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bucket
    #   <p>
    #         The general purpose bucket that corresponds to the metadata configuration that you want to
    #         retrieve.
    #       </p>
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>
    #         The expected owner of the general purpose bucket that you want to retrieve the metadata table
    #         configuration for.
    #       </p>
    #   @return [String]
    class GetBucketMetadataConfigurationRequest < Struct.new(
      nil,
      :bucket,
      :expected_bucket_owner,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #       The S3 Metadata configuration for a general purpose bucket.
    #     </p>
    # @!attribute metadata_configuration_result
    #   <p>
    #         The metadata configuration for a general purpose bucket.
    #       </p>
    #   @return [Types::MetadataConfigurationResult]
    class GetBucketMetadataConfigurationResult < Struct.new(
      nil,
      :metadata_configuration_result,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute get_bucket_metadata_table_configuration_result
    #   <p> The metadata table configuration for the general purpose bucket. </p>
    #   @return [Types::GetBucketMetadataTableConfigurationResult]
    class GetBucketMetadataTableConfigurationOutput < Struct.new(
      nil,
      :get_bucket_metadata_table_configuration_result,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bucket
    #   <p> The general purpose bucket that corresponds to the metadata table configuration that you want to
    #         retrieve. </p>
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p> The expected owner of the general purpose bucket that you want to retrieve the metadata table
    #         configuration for. </p>
    #   @return [String]
    class GetBucketMetadataTableConfigurationRequest < Struct.new(
      nil,
      :bucket,
      :expected_bucket_owner,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The V1 S3 Metadata configuration for a general purpose bucket. </p>
    #          <note>
    #             <p>If you created your S3 Metadata configuration before July 15, 2025, we recommend that you delete
    #         and re-create your configuration by using <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateBucketMetadataConfiguration.html">CreateBucketMetadataConfiguration</a> so that you can expire journal table records and create
    #         a live inventory table.</p>
    #          </note>
    # @!attribute metadata_table_configuration_result
    #   <p> The V1 S3 Metadata configuration for a general purpose bucket. </p>
    #   @return [Types::MetadataTableConfigurationResult]
    # @!attribute status
    #   <p> The status of the metadata table. The status values are: </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CREATING</code> - The metadata table is in the process of being created in the specified
    #             table bucket.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ACTIVE</code> - The metadata table has been created successfully, and records are being
    #             delivered to the table. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FAILED</code> - Amazon S3 is unable to create the metadata table, or Amazon S3 is unable to deliver
    #             records. See <code>ErrorDetails</code> for details.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute error
    #   <p> If the <code>CreateBucketMetadataTableConfiguration</code> request succeeds, but S3 Metadata was
    #         unable to create the table, this structure contains the error code and error message. </p>
    #   @return [Types::ErrorDetails]
    class GetBucketMetadataTableConfigurationResult < Struct.new(
      nil,
      :metadata_table_configuration_result,
      :status,
      :error,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute metrics_configuration
    #   <p>Specifies the metrics configuration.</p>
    #   @return [Types::MetricsConfiguration]
    class GetBucketMetricsConfigurationOutput < Struct.new(
      nil,
      :metrics_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bucket
    #   <p>The name of the bucket containing the metrics configuration to retrieve.</p>
    #            <p>
    #               <b>Directory buckets </b> - When you use this operation with a directory bucket, you must use path-style requests in the format <code>https://s3express-control.<i>region-code</i>.amazonaws.com/<i>bucket-name</i>
    #               </code>. Virtual-hosted-style requests aren't supported. Directory bucket names must be unique in the chosen Zone (Availability Zone or Local Zone). Bucket names must also follow the format <code>
    #                  <i>bucket-base-name</i>--<i>zone-id</i>--x-s3</code> (for example, <code>
    #                  <i>DOC-EXAMPLE-BUCKET</i>--<i>usw2-az1</i>--x-s3</code>). For information about bucket naming restrictions, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/directory-bucket-naming-rules.html">Directory bucket naming rules</a> in the <i>Amazon S3 User Guide</i>
    #            </p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID used to identify the metrics configuration. The ID has a 64 character limit and can only
    #         contain letters, numbers, periods, dashes, and underscores.</p>
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #            <note>
    #               <p>For directory buckets, this header is not supported in this API operation. If you specify this header, the request fails with the HTTP status code
    #   <code>501 Not Implemented</code>.</p>
    #            </note>
    #   @return [String]
    class GetBucketMetricsConfigurationRequest < Struct.new(
      nil,
      :bucket,
      :id,
      :expected_bucket_owner,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A container for specifying the notification configuration of the bucket. If this element is empty,
    #       notifications are turned off for the bucket.</p>
    # @!attribute topic_configurations
    #   <p>The topic to which notifications are sent and the events for which notifications are
    #         generated.</p>
    #   @return [Array<Types::TopicConfiguration>]
    # @!attribute queue_configurations
    #   <p>The Amazon Simple Queue Service queues to publish messages to and the events for which to publish
    #         messages.</p>
    #   @return [Array<Types::QueueConfiguration>]
    # @!attribute lambda_function_configurations
    #   <p>Describes the Lambda functions to invoke and the events for which to invoke them.</p>
    #   @return [Array<Types::LambdaFunctionConfiguration>]
    # @!attribute event_bridge_configuration
    #   <p>Enables delivery of events to Amazon EventBridge.</p>
    #   @return [Types::EventBridgeConfiguration]
    class GetBucketNotificationConfigurationOutput < Struct.new(
      nil,
      :topic_configurations,
      :queue_configurations,
      :lambda_function_configurations,
      :event_bridge_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bucket
    #   <p>The name of the bucket for which to get the notification configuration.</p>
    #            <p>When you use this API operation with an access point, provide the alias of the access point in place of the bucket name.</p>
    #            <p>When you use this API operation with an Object Lambda access point, provide the alias of the Object Lambda access point in place of the bucket name.
    #   If the Object Lambda access point alias in a request is not valid, the error code <code>InvalidAccessPointAliasError</code> is returned.
    #   For more information about <code>InvalidAccessPointAliasError</code>, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html#ErrorCodeList">List of
    #               Error Codes</a>.</p>
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    class GetBucketNotificationConfigurationRequest < Struct.new(
      nil,
      :bucket,
      :expected_bucket_owner,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute ownership_controls
    #   <p>The <code>OwnershipControls</code> (BucketOwnerEnforced, BucketOwnerPreferred, or ObjectWriter)
    #         currently in effect for this Amazon S3 bucket.</p>
    #   @return [Types::OwnershipControls]
    class GetBucketOwnershipControlsOutput < Struct.new(
      nil,
      :ownership_controls,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bucket
    #   <p>The name of the Amazon S3 bucket whose <code>OwnershipControls</code> you want to retrieve. </p>
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    class GetBucketOwnershipControlsRequest < Struct.new(
      nil,
      :bucket,
      :expected_bucket_owner,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy
    #   <p>The bucket policy as a JSON document.</p>
    #   @return [String]
    class GetBucketPolicyOutput < Struct.new(
      nil,
      :policy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bucket
    #   <p>The bucket name to get the bucket policy for.</p>
    #            <p>
    #               <b>Directory buckets </b> - When you use this operation with a directory bucket, you must use path-style requests in the format <code>https://s3express-control.<i>region-code</i>.amazonaws.com/<i>bucket-name</i>
    #               </code>. Virtual-hosted-style requests aren't supported. Directory bucket names must be unique in the chosen Zone (Availability Zone or Local Zone). Bucket names must also follow the format <code>
    #                  <i>bucket-base-name</i>--<i>zone-id</i>--x-s3</code> (for example, <code>
    #                  <i>DOC-EXAMPLE-BUCKET</i>--<i>usw2-az1</i>--x-s3</code>). For information about bucket naming restrictions, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/directory-bucket-naming-rules.html">Directory bucket naming rules</a> in the <i>Amazon S3 User Guide</i>
    #            </p>
    #            <p>
    #               <b>Access points</b> - When you use this API operation with an access point, provide the alias of the access point in place of the bucket name.</p>
    #            <p>
    #               <b>Object Lambda access points</b> - When you use this API operation with an Object Lambda access point, provide the alias of the Object Lambda access point in place of the bucket name.
    #   If the Object Lambda access point alias in a request is not valid, the error code <code>InvalidAccessPointAliasError</code> is returned.
    #   For more information about <code>InvalidAccessPointAliasError</code>, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html#ErrorCodeList">List of
    #               Error Codes</a>.</p>
    #            <note>
    #               <p>Object Lambda access points are not supported by directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #            <note>
    #               <p>For directory buckets, this header is not supported in this API operation. If you specify this header, the request fails with the HTTP status code
    #   <code>501 Not Implemented</code>.</p>
    #            </note>
    #   @return [String]
    class GetBucketPolicyRequest < Struct.new(
      nil,
      :bucket,
      :expected_bucket_owner,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy_status
    #   <p>The policy status for the specified bucket.</p>
    #   @return [Types::PolicyStatus]
    class GetBucketPolicyStatusOutput < Struct.new(
      nil,
      :policy_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bucket
    #   <p>The name of the Amazon S3 bucket whose policy status you want to retrieve.</p>
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    class GetBucketPolicyStatusRequest < Struct.new(
      nil,
      :bucket,
      :expected_bucket_owner,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute replication_configuration
    #   <p>A container for replication rules. You can add up to 1,000 rules. The maximum size of a replication
    #         configuration is 2 MB.</p>
    #   @return [Types::ReplicationConfiguration]
    class GetBucketReplicationOutput < Struct.new(
      nil,
      :replication_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bucket
    #   <p>The bucket name for which to get the replication information.</p>
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    class GetBucketReplicationRequest < Struct.new(
      nil,
      :bucket,
      :expected_bucket_owner,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute payer
    #   <p>Specifies who pays for the download and request fees.</p>
    #   @return [String]
    class GetBucketRequestPaymentOutput < Struct.new(
      nil,
      :payer,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bucket
    #   <p>The name of the bucket for which to get the payment request configuration</p>
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    class GetBucketRequestPaymentRequest < Struct.new(
      nil,
      :bucket,
      :expected_bucket_owner,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tag_set
    #   <p>Contains the tag set.</p>
    #   @return [Array<Types::Tag>]
    class GetBucketTaggingOutput < Struct.new(
      nil,
      :tag_set,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bucket
    #   <p>The name of the bucket for which to get the tagging information.</p>
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    class GetBucketTaggingRequest < Struct.new(
      nil,
      :bucket,
      :expected_bucket_owner,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute status
    #   <p>The versioning state of the bucket.</p>
    #   @return [String]
    # @!attribute mfa_delete
    #   <p>Specifies whether MFA delete is enabled in the bucket versioning configuration. This element is only
    #         returned if the bucket has been configured with MFA delete. If the bucket has never been so configured,
    #         this element is not returned.</p>
    #   @return [String]
    class GetBucketVersioningOutput < Struct.new(
      nil,
      :status,
      :mfa_delete,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bucket
    #   <p>The name of the bucket for which to get the versioning information.</p>
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    class GetBucketVersioningRequest < Struct.new(
      nil,
      :bucket,
      :expected_bucket_owner,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute redirect_all_requests_to
    #   <p>Specifies the redirect behavior of all requests to a website endpoint of an Amazon S3 bucket.</p>
    #   @return [Types::RedirectAllRequestsTo]
    # @!attribute index_document
    #   <p>The name of the index document for the website (for example <code>index.html</code>).</p>
    #   @return [Types::IndexDocument]
    # @!attribute error_document
    #   <p>The object key name of the website error document to use for 4XX class errors.</p>
    #   @return [Types::ErrorDocument]
    # @!attribute routing_rules
    #   <p>Rules that define when a redirect is applied and the redirect behavior.</p>
    #   @return [Array<Types::RoutingRule>]
    class GetBucketWebsiteOutput < Struct.new(
      nil,
      :redirect_all_requests_to,
      :index_document,
      :error_document,
      :routing_rules,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bucket
    #   <p>The bucket name for which to get the website configuration.</p>
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    class GetBucketWebsiteRequest < Struct.new(
      nil,
      :bucket,
      :expected_bucket_owner,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute owner
    #   <p> Container for the bucket owner's ID.</p>
    #   @return [Types::Owner]
    # @!attribute grants
    #   <p>A list of grants.</p>
    #   @return [Array<Types::Grant>]
    # @!attribute request_charged
    #   <p>If present, indicates that the requester was successfully charged for the request. For more
    #         information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/RequesterPaysBuckets.html">Using Requester Pays buckets for storage transfers and usage</a> in the <i>Amazon Simple
    #           Storage Service user guide</i>.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    class GetObjectAclOutput < Struct.new(
      nil,
      :owner,
      :grants,
      :request_charged,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bucket
    #   <p>The bucket name that contains the object for which to get the ACL information. </p>
    #            <p>
    #               <b>Access points</b> - When you use this action with an access point for general purpose buckets, you must provide the alias of the access point in place of the bucket name or specify the access point ARN. When you use this action with an access point for directory buckets, you must provide the access point name in place of the bucket name. When using the access point ARN, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute key
    #   <p>The key of the object for which to get the ACL information.</p>
    #   @return [String]
    # @!attribute version_id
    #   <p>Version ID used to reference a specific version of the object.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute request_payer
    #   <p>Confirms that the requester knows that they will be charged for the request. Bucket owners need not
    #         specify this parameter in their requests. If either the source or destination S3 bucket has Requester
    #         Pays enabled, the requester will pay for the corresponding charges. For information about
    #         downloading objects from Requester Pays buckets, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html">Downloading Objects in Requester Pays
    #           Buckets</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    class GetObjectAclRequest < Struct.new(
      nil,
      :bucket,
      :key,
      :version_id,
      :request_payer,
      :expected_bucket_owner,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute annotation_payload
    #   <p>The annotation payload.</p>
    #   @return [String]
    # @!attribute object_version_id
    #   <p>The version ID of the object that the annotation is attached to.</p>
    #   @return [String]
    # @!attribute last_modified
    #   <p>The date and time the annotation was last modified.</p>
    #   @return [Time]
    # @!attribute content_length
    #   <p>The size of the annotation payload, in bytes.</p>
    #   @return [Integer]
    # @!attribute e_tag
    #   <p>The entity tag of the annotation.</p>
    #   @return [String]
    # @!attribute checksum_crc32
    #   <p>The CRC32 checksum of the annotation payload.</p>
    #   @return [String]
    # @!attribute checksum_crc32_c
    #   <p>The CRC32C checksum of the annotation payload.</p>
    #   @return [String]
    # @!attribute checksum_crc64_nvme
    #   <p>The CRC64NVME checksum of the annotation payload.</p>
    #   @return [String]
    # @!attribute checksum_sha1
    #   <p>The SHA1 checksum of the annotation payload.</p>
    #   @return [String]
    # @!attribute checksum_sha256
    #   <p>The SHA256 checksum of the annotation payload.</p>
    #   @return [String]
    # @!attribute checksum_sha512
    #   <p>The SHA512 checksum of the annotation payload.</p>
    #   @return [String]
    # @!attribute checksum_md5
    #   <p>The MD5 checksum of the annotation payload.</p>
    #   @return [String]
    # @!attribute checksum_xxhash64
    #   <p>The XXHASH64 checksum of the annotation payload.</p>
    #   @return [String]
    # @!attribute checksum_xxhash3
    #   <p>The XXHASH3 checksum of the annotation payload.</p>
    #   @return [String]
    # @!attribute checksum_xxhash128
    #   <p>The XXHASH128 checksum of the annotation payload.</p>
    #   @return [String]
    # @!attribute checksum_type
    #   <p>The type of checksum used.</p>
    #   @return [String]
    # @!attribute server_side_encryption
    #   <p>The server-side encryption algorithm used.</p>
    #   @return [String]
    # @!attribute request_charged
    #   <p>If present, indicates that the requester was successfully charged for the request. For more
    #         information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/RequesterPaysBuckets.html">Using Requester Pays buckets for storage transfers and usage</a> in the <i>Amazon Simple
    #           Storage Service user guide</i>.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute replication_status
    #   <p>The replication status of the annotation. Possible values include <code>PENDING</code>, <code>COMPLETED</code>, <code>FAILED</code>, and <code>REPLICA</code>.</p>
    #   @return [String]
    class GetObjectAnnotationOutput < Struct.new(
      nil,
      :annotation_payload,
      :object_version_id,
      :last_modified,
      :content_length,
      :e_tag,
      :checksum_crc32,
      :checksum_crc32_c,
      :checksum_crc64_nvme,
      :checksum_sha1,
      :checksum_sha256,
      :checksum_sha512,
      :checksum_md5,
      :checksum_xxhash64,
      :checksum_xxhash3,
      :checksum_xxhash128,
      :checksum_type,
      :server_side_encryption,
      :request_charged,
      :replication_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:annotation_payload] = Base64.strict_decode64('') unless options.key?(:annotation_payload)
        super
      end
    end

    # @!attribute bucket
    #   <p>The name of the bucket that contains the object.</p>
    #   @return [String]
    # @!attribute key
    #   <p>The object key.</p>
    #   @return [String]
    # @!attribute annotation_name
    #   <p>The name of the annotation to retrieve.</p>
    #            <p>Length Constraints: Minimum length of 1. Maximum length of 512 bytes.</p>
    #   @return [String]
    # @!attribute version_id
    #   <p>The version ID of the object.</p>
    #   @return [String]
    # @!attribute request_payer
    #   <p>Confirms that the requester knows that they will be charged for the request. Bucket owners need not
    #         specify this parameter in their requests. If either the source or destination S3 bucket has Requester
    #         Pays enabled, the requester will pay for the corresponding charges. For information about
    #         downloading objects from Requester Pays buckets, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html">Downloading Objects in Requester Pays
    #           Buckets</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with an HTTP 403 (Access Denied) error.</p>
    #   @return [String]
    # @!attribute checksum_mode
    #   <p>Set to <code>ENABLED</code> to validate the checksum of the annotation payload on retrieval.</p>
    #   @return [String]
    class GetObjectAnnotationRequest < Struct.new(
      nil,
      :bucket,
      :key,
      :annotation_name,
      :version_id,
      :request_payer,
      :expected_bucket_owner,
      :checksum_mode,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute delete_marker
    #   <p>Specifies whether the object retrieved was (<code>true</code>) or was not (<code>false</code>) a
    #         delete marker. If <code>false</code>, this response header does not appear in the response. To learn
    #         more about delete markers, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/DeleteMarker.html">Working with delete markers</a>.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [Boolean]
    # @!attribute last_modified
    #   <p>Date and time when the object was last modified.</p>
    #   @return [Time]
    # @!attribute version_id
    #   <p>The version ID of the object.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute request_charged
    #   <p>If present, indicates that the requester was successfully charged for the request. For more
    #         information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/RequesterPaysBuckets.html">Using Requester Pays buckets for storage transfers and usage</a> in the <i>Amazon Simple
    #           Storage Service user guide</i>.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute e_tag
    #   <p>An ETag is an opaque identifier assigned by a web server to a specific version of a resource found
    #         at a URL.</p>
    #   @return [String]
    # @!attribute checksum
    #   <p>The checksum or digest of the object.</p>
    #   @return [Types::Checksum]
    # @!attribute object_parts
    #   <p>A collection of parts associated with a multipart upload.</p>
    #   @return [Types::GetObjectAttributesParts]
    # @!attribute storage_class
    #   <p>Provides the storage class information of the object. Amazon S3 returns this header for all objects
    #         except for S3 Standard storage class objects.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/storage-class-intro.html">Storage Classes</a>.</p>
    #            <note>
    #               <p>
    #                  <b>Directory buckets</b> -
    #           Directory buckets only support <code>EXPRESS_ONEZONE</code> (the S3 Express One Zone storage class) in Availability Zones and <code>ONEZONE_IA</code> (the S3 One Zone-Infrequent Access storage class) in Dedicated Local Zones.</p>
    #            </note>
    #   @return [String]
    # @!attribute object_size
    #   <p>The size of the object in bytes.</p>
    #   @return [Integer]
    class GetObjectAttributesOutput < Struct.new(
      nil,
      :delete_marker,
      :last_modified,
      :version_id,
      :request_charged,
      :e_tag,
      :checksum,
      :object_parts,
      :storage_class,
      :object_size,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A collection of parts associated with a multipart upload.</p>
    # @!attribute total_parts_count
    #   <p>The total number of parts.</p>
    #   @return [Integer]
    # @!attribute part_number_marker
    #   <p>The marker for the current part.</p>
    #   @return [String]
    # @!attribute next_part_number_marker
    #   <p>When a list is truncated, this element specifies the last part in the list, as well as the value to
    #         use for the <code>PartNumberMarker</code> request parameter in a subsequent request.</p>
    #   @return [String]
    # @!attribute max_parts
    #   <p>The maximum number of parts allowed in the response.</p>
    #   @return [Integer]
    # @!attribute is_truncated
    #   <p>Indicates whether the returned list of parts is truncated. A value of <code>true</code> indicates
    #         that the list was truncated. A list can be truncated if the number of parts exceeds the limit returned
    #         in the <code>MaxParts</code> element.</p>
    #   @return [Boolean]
    # @!attribute parts
    #   <p>A container for elements related to a particular part. A response can contain zero or more
    #           <code>Parts</code> elements.</p>
    #            <note>
    #               <ul>
    #                  <li>
    #                     <p>
    #                        <b>General purpose buckets</b> - For
    #                 <code>GetObjectAttributes</code>, if an additional checksum (including
    #                 <code>x-amz-checksum-crc32</code>, <code>x-amz-checksum-crc32c</code>,
    #                 <code>x-amz-checksum-sha1</code>, or <code>x-amz-checksum-sha256</code>) isn't applied to the
    #               object specified in the request, the response doesn't return the <code>Part</code> element.</p>
    #                  </li>
    #                  <li>
    #                     <p>
    #                        <b>Directory buckets</b> - For
    #                 <code>GetObjectAttributes</code>, regardless of whether an additional checksum is applied to the
    #               object specified in the request, the response returns the <code>Part</code> element.</p>
    #                  </li>
    #               </ul>
    #            </note>
    #   @return [Array<Types::ObjectPart>]
    class GetObjectAttributesParts < Struct.new(
      nil,
      :total_parts_count,
      :part_number_marker,
      :next_part_number_marker,
      :max_parts,
      :is_truncated,
      :parts,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bucket
    #   <p>The name of the bucket that contains the object.</p>
    #            <p>
    #               <b>Directory buckets</b> - When you use this operation with a directory bucket, you must use virtual-hosted-style requests in the format <code>
    #                  <i>Bucket-name</i>.s3express-<i>zone-id</i>.<i>region-code</i>.amazonaws.com</code>. Path-style requests are not supported.  Directory bucket names must be unique in the chosen Zone (Availability Zone or Local Zone). Bucket names must follow the format <code>
    #                  <i>bucket-base-name</i>--<i>zone-id</i>--x-s3</code> (for example, <code>
    #                  <i>amzn-s3-demo-bucket</i>--<i>usw2-az1</i>--x-s3</code>). For information about bucket naming
    #            restrictions, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/directory-bucket-naming-rules.html">Directory bucket naming
    #               rules</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <p>
    #               <b>Access points</b> - When you use this action with an access point for general purpose buckets, you must provide the alias of the access point in place of the bucket name or specify the access point ARN. When you use this action with an access point for directory buckets, you must provide the access point name in place of the bucket name. When using the access point ARN, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <note>
    #               <p>Object Lambda access points are not supported by directory buckets.</p>
    #            </note>
    #            <p>
    #               <b>S3 on Outposts</b> - When you use this action with S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the
    #                        form <code>
    #                  <i>AccessPointName</i>-<i>AccountId</i>.<i>outpostID</i>.s3-outposts.<i>Region</i>.amazonaws.com</code>. When you use this action with S3 on Outposts, the destination bucket must be the Outposts access point ARN or the access point alias. For more information about S3 on Outposts, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html">What is S3 on Outposts?</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute key
    #   <p>The object key.</p>
    #   @return [String]
    # @!attribute version_id
    #   <p>The version ID used to reference a specific version of the object.</p>
    #            <note>
    #               <p>S3 Versioning isn't enabled and supported for directory buckets. For this API operation, only the <code>null</code> value of the version ID is supported by directory buckets. You can only specify <code>null</code> to the
    #             <code>versionId</code> query parameter in the request.</p>
    #            </note>
    #   @return [String]
    # @!attribute max_parts
    #   <p>Sets the maximum number of parts to return. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/mpuoverview.html">Uploading and copying objects using multipart upload
    #           in Amazon S3 </a> in the <i>Amazon Simple Storage Service user guide</i>.</p>
    #   @return [Integer]
    # @!attribute part_number_marker
    #   <p>Specifies the part after which listing should begin. Only parts with higher part numbers will be
    #         listed. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/mpuoverview.html">Uploading and copying objects using multipart upload
    #           in Amazon S3 </a> in the <i>Amazon Simple Storage Service user guide</i>.</p>
    #   @return [String]
    # @!attribute sse_customer_algorithm
    #   <p>Specifies the algorithm to use when encrypting the object (for example, AES256).</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute sse_customer_key
    #   <p>Specifies the customer-provided encryption key for Amazon S3 to use in encrypting data. This value is
    #         used to store the object and then it is discarded; Amazon S3 does not store the encryption key. The key must
    #         be appropriate for use with the algorithm specified in the
    #           <code>x-amz-server-side-encryption-customer-algorithm</code> header.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute sse_customer_key_md5
    #   <p>Specifies the 128-bit MD5 digest of the encryption key according to RFC 1321. Amazon S3 uses this header
    #         for a message integrity check to ensure that the encryption key was transmitted without error.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute request_payer
    #   <p>Confirms that the requester knows that they will be charged for the request. Bucket owners need not
    #         specify this parameter in their requests. If either the source or destination S3 bucket has Requester
    #         Pays enabled, the requester will pay for the corresponding charges. For information about
    #         downloading objects from Requester Pays buckets, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html">Downloading Objects in Requester Pays
    #           Buckets</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    # @!attribute object_attributes
    #   <p>Specifies the fields at the root level that you want returned in the response. Fields that you do
    #         not specify are not returned.</p>
    #   @return [Array<String>]
    class GetObjectAttributesRequest < Struct.new(
      nil,
      :bucket,
      :key,
      :version_id,
      :max_parts,
      :part_number_marker,
      :sse_customer_algorithm,
      :sse_customer_key,
      :sse_customer_key_md5,
      :request_payer,
      :expected_bucket_owner,
      :object_attributes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute legal_hold
    #   <p>The current legal hold status for the specified object.</p>
    #   @return [Types::ObjectLockLegalHold]
    class GetObjectLegalHoldOutput < Struct.new(
      nil,
      :legal_hold,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bucket
    #   <p>The bucket name containing the object whose legal hold status you want to retrieve. </p>
    #            <p>
    #               <b>Access points</b> - When you use this action with an access point for general purpose buckets, you must provide the alias of the access point in place of the bucket name or specify the access point ARN. When you use this action with an access point for directory buckets, you must provide the access point name in place of the bucket name. When using the access point ARN, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute key
    #   <p>The key name for the object whose legal hold status you want to retrieve.</p>
    #   @return [String]
    # @!attribute version_id
    #   <p>The version ID of the object whose legal hold status you want to retrieve.</p>
    #   @return [String]
    # @!attribute request_payer
    #   <p>Confirms that the requester knows that they will be charged for the request. Bucket owners need not
    #         specify this parameter in their requests. If either the source or destination S3 bucket has Requester
    #         Pays enabled, the requester will pay for the corresponding charges. For information about
    #         downloading objects from Requester Pays buckets, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html">Downloading Objects in Requester Pays
    #           Buckets</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    class GetObjectLegalHoldRequest < Struct.new(
      nil,
      :bucket,
      :key,
      :version_id,
      :request_payer,
      :expected_bucket_owner,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute object_lock_configuration
    #   <p>The specified bucket's Object Lock configuration.</p>
    #   @return [Types::ObjectLockConfiguration]
    class GetObjectLockConfigurationOutput < Struct.new(
      nil,
      :object_lock_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bucket
    #   <p>The bucket whose Object Lock configuration you want to retrieve.</p>
    #            <p>
    #               <b>Access points</b> - When you use this action with an access point for general purpose buckets, you must provide the alias of the access point in place of the bucket name or specify the access point ARN. When you use this action with an access point for directory buckets, you must provide the access point name in place of the bucket name. When using the access point ARN, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    class GetObjectLockConfigurationRequest < Struct.new(
      nil,
      :bucket,
      :expected_bucket_owner,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute body
    #   <p>Object data.</p>
    #   @return [String]
    # @!attribute delete_marker
    #   <p>Indicates whether the object retrieved was (true) or was not (false) a Delete Marker. If false, this
    #         response header does not appear in the response.</p>
    #            <note>
    #               <ul>
    #                  <li>
    #                     <p>If the current version of the object is a delete marker, Amazon S3 behaves as if the object was
    #               deleted and includes <code>x-amz-delete-marker: true</code> in the response.</p>
    #                  </li>
    #                  <li>
    #                     <p>If the specified version in the request is a delete marker, the response returns a <code>405
    #                 Method Not Allowed</code> error and the <code>Last-Modified: timestamp</code> response
    #               header.</p>
    #                  </li>
    #               </ul>
    #            </note>
    #   @return [Boolean]
    # @!attribute accept_ranges
    #   <p>Indicates that a range of bytes was specified in the request.</p>
    #   @return [String]
    # @!attribute expiration
    #   <p>If the object expiration is configured (see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketLifecycleConfiguration.html">
    #                  <code>PutBucketLifecycleConfiguration</code>
    #               </a>), the response includes this header. It
    #         includes the <code>expiry-date</code> and <code>rule-id</code> key-value pairs providing object
    #         expiration information. The value of the <code>rule-id</code> is URL-encoded.</p>
    #            <note>
    #               <p>Object expiration information is not returned in directory buckets and this header returns the
    #           value "<code>NotImplemented</code>" in all responses for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute restore
    #   <p>Provides information about object restoration action and expiration time of the restored object
    #         copy.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets. Directory buckets only support <code>EXPRESS_ONEZONE</code> (the S3 Express One Zone storage class) in Availability Zones and <code>ONEZONE_IA</code> (the S3 One Zone-Infrequent Access storage class) in Dedicated Local Zones.</p>
    #            </note>
    #   @return [String]
    # @!attribute last_modified
    #   <p>Date and time when the object was last modified.</p>
    #            <p>
    #               <b>General purpose buckets </b> - When you specify a
    #           <code>versionId</code> of the object in your request, if the specified version in the request is a
    #         delete marker, the response returns a <code>405 Method Not Allowed</code> error and the
    #           <code>Last-Modified: timestamp</code> response header.</p>
    #   @return [Time]
    # @!attribute content_length
    #   <p>Size of the body in bytes.</p>
    #   @return [Integer]
    # @!attribute e_tag
    #   <p>An entity tag (ETag) is an opaque identifier assigned by a web server to a specific version of a
    #         resource found at a URL.</p>
    #   @return [String]
    # @!attribute checksum_crc32
    #   <p>The Base64 encoded, 32-bit <code>CRC32</code> checksum of the object. This checksum is only present if the checksum was uploaded
    #       with the object. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">
    #       Checking object integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_crc32_c
    #   <p>The Base64 encoded, 32-bit <code>CRC32C</code> checksum of the object. This checksum is only present if the checksum was uploaded
    #       with the object. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">
    #       Checking object integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_crc64_nvme
    #   <p>The Base64 encoded, 64-bit <code>CRC64NVME</code> checksum of the object. For more information, see
    #           <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking
    #           object integrity in the Amazon S3 User Guide</a>.</p>
    #   @return [String]
    # @!attribute checksum_sha1
    #   <p>The Base64 encoded, 160-bit <code>SHA1</code> digest of the object. This checksum is only present if the checksum was uploaded
    #       with the object. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">
    #       Checking object integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_sha256
    #   <p>The Base64 encoded, 256-bit <code>SHA256</code> digest of the object. This checksum is only present if the checksum was uploaded
    #       with the object. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">
    #       Checking object integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_sha512
    #   <p>The Base64 encoded, 512-bit <code>SHA512</code> digest of the object. For more information, see
    #           <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking
    #           object integrity in the Amazon S3 User Guide</a>.</p>
    #   @return [String]
    # @!attribute checksum_md5
    #   <p>The Base64 encoded, 128-bit <code>MD5</code> digest of the object. For more information, see
    #           <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking
    #           object integrity in the Amazon S3 User Guide</a>.</p>
    #   @return [String]
    # @!attribute checksum_xxhash64
    #   <p>The Base64 encoded, 64-bit <code>XXHASH64</code> checksum of the object. For more information, see
    #           <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking
    #           object integrity in the Amazon S3 User Guide</a>.</p>
    #   @return [String]
    # @!attribute checksum_xxhash3
    #   <p>The Base64 encoded, 64-bit <code>XXHASH3</code> checksum of the object. For more information, see
    #           <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking
    #           object integrity in the Amazon S3 User Guide</a>.</p>
    #   @return [String]
    # @!attribute checksum_xxhash128
    #   <p>The Base64 encoded, 128-bit <code>XXHASH128</code> checksum of the object. For more information, see
    #           <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking
    #           object integrity in the Amazon S3 User Guide</a>.</p>
    #   @return [String]
    # @!attribute checksum_type
    #   <p>The checksum type, which determines how part-level checksums are combined to create an object-level
    #         checksum for multipart objects. You can use this header response to verify that the checksum type that
    #         is received is the same checksum type that was specified in the <code>CreateMultipartUpload</code>
    #         request. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #         the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute missing_meta
    #   <p>This is set to the number of metadata entries not returned in the headers that are prefixed with
    #           <code>x-amz-meta-</code>. This can happen if you create metadata using an API like SOAP that supports
    #         more flexible metadata than the REST API. For example, using SOAP, you can create metadata whose values
    #         are not legal HTTP headers.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [Integer]
    # @!attribute version_id
    #   <p>Version ID of the object.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute cache_control
    #   <p>Specifies caching behavior along the request/reply chain.</p>
    #   @return [String]
    # @!attribute content_disposition
    #   <p>Specifies presentational information for the object.</p>
    #   @return [String]
    # @!attribute content_encoding
    #   <p>Indicates what content encodings have been applied to the object and thus what decoding mechanisms
    #         must be applied to obtain the media-type referenced by the Content-Type header field.</p>
    #   @return [String]
    # @!attribute content_language
    #   <p>The language the content is in.</p>
    #   @return [String]
    # @!attribute content_range
    #   <p>The portion of the object returned in the response.</p>
    #   @return [String]
    # @!attribute content_type
    #   <p>A standard MIME type describing the format of the object data.</p>
    #   @return [String]
    # @!attribute expires
    #   <p>The date and time at which the object is no longer cacheable.</p>
    #   @return [String]
    # @!attribute website_redirect_location
    #   <p>If the bucket is configured as a website, redirects requests for this object to another object in
    #         the same bucket or to an external URL. Amazon S3 stores the value of this header in the object
    #         metadata.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute server_side_encryption
    #   <p>The server-side encryption algorithm used when you store this object in Amazon S3 or Amazon FSx.</p>
    #            <note>
    #               <p>When accessing data stored in Amazon FSx file systems using S3 access points, the only valid server side
    #           encryption option is <code>aws:fsx</code>.</p>
    #            </note>
    #   @return [String]
    # @!attribute metadata
    #   <p>A map of metadata to store with the object in S3.</p>
    #   @return [Hash<String, String>]
    # @!attribute sse_customer_algorithm
    #   <p>If server-side encryption with a customer-provided encryption key was requested, the response will
    #         include this header to confirm the encryption algorithm that's used.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute sse_customer_key_md5
    #   <p>If server-side encryption with a customer-provided encryption key was requested, the response will
    #         include this header to provide the round-trip message integrity verification of the customer-provided
    #         encryption key.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute ssekms_key_id
    #   <p>If present, indicates the ID of the KMS key that was used for object encryption.</p>
    #   @return [String]
    # @!attribute bucket_key_enabled
    #   <p>Indicates whether the object uses an S3 Bucket Key for server-side encryption with Key Management Service (KMS)
    #         keys (SSE-KMS).</p>
    #   @return [Boolean]
    # @!attribute storage_class
    #   <p>Provides storage class information of the object. Amazon S3 returns this header for all objects except
    #         for S3 Standard storage class objects.</p>
    #            <note>
    #               <p>
    #                  <b>Directory buckets </b> -
    #           Directory buckets only support <code>EXPRESS_ONEZONE</code> (the S3 Express One Zone storage class) in Availability Zones and <code>ONEZONE_IA</code> (the S3 One Zone-Infrequent Access storage class) in Dedicated Local Zones.</p>
    #            </note>
    #   @return [String]
    # @!attribute request_charged
    #   <p>If present, indicates that the requester was successfully charged for the request. For more
    #         information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/RequesterPaysBuckets.html">Using Requester Pays buckets for storage transfers and usage</a> in the <i>Amazon Simple
    #           Storage Service user guide</i>.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute replication_status
    #   <p>Amazon S3 can return this if your request involves a bucket that is either a source or destination in a
    #         replication rule.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute parts_count
    #   <p>The count of parts this object has. This value is only returned if you specify
    #           <code>partNumber</code> in your request and the object was uploaded as a multipart upload.</p>
    #   @return [Integer]
    # @!attribute tag_count
    #   <p>The number of tags, if any, on the object, when you have the relevant permission to read object
    #         tags.</p>
    #            <p>You can use <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObjectTagging.html">GetObjectTagging</a> to retrieve the tag set associated with an object.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [Integer]
    # @!attribute object_lock_mode
    #   <p>The Object Lock mode that's currently in place for this object.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute object_lock_retain_until_date
    #   <p>The date and time when this object's Object Lock will expire.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [Time]
    # @!attribute object_lock_legal_hold_status
    #   <p>Indicates whether this object has an active legal hold. This field is only returned if you have
    #         permission to view an object's legal hold status. </p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute object_lock_event_hold
    #   <p>The event hold status for this object. This header is only returned if the requester has the
    #         <code>s3:GetObjectRetention</code> permission.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute object_lock_event_hold_duration_days
    #   <p>The event hold duration in days for this object. Only returned when the event hold is
    #         enabled.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [Integer]
    # @!attribute object_lock_event_hold_duration_years
    #   <p>The event hold duration in years for this object. Only returned when the event hold is
    #         enabled.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [Integer]
    class GetObjectOutput < Struct.new(
      nil,
      :body,
      :delete_marker,
      :accept_ranges,
      :expiration,
      :restore,
      :last_modified,
      :content_length,
      :e_tag,
      :checksum_crc32,
      :checksum_crc32_c,
      :checksum_crc64_nvme,
      :checksum_sha1,
      :checksum_sha256,
      :checksum_sha512,
      :checksum_md5,
      :checksum_xxhash64,
      :checksum_xxhash3,
      :checksum_xxhash128,
      :checksum_type,
      :missing_meta,
      :version_id,
      :cache_control,
      :content_disposition,
      :content_encoding,
      :content_language,
      :content_range,
      :content_type,
      :expires,
      :website_redirect_location,
      :server_side_encryption,
      :metadata,
      :sse_customer_algorithm,
      :sse_customer_key_md5,
      :ssekms_key_id,
      :bucket_key_enabled,
      :storage_class,
      :request_charged,
      :replication_status,
      :parts_count,
      :tag_count,
      :object_lock_mode,
      :object_lock_retain_until_date,
      :object_lock_legal_hold_status,
      :object_lock_event_hold,
      :object_lock_event_hold_duration_days,
      :object_lock_event_hold_duration_years,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:body] = Base64.strict_decode64('') unless options.key?(:body)
        super
      end
    end

    # @!attribute bucket
    #   <p>The bucket name containing the object. </p>
    #            <p>
    #               <b>Directory buckets</b> - When you use this operation with a directory bucket, you must use virtual-hosted-style requests in the format <code>
    #                  <i>Bucket-name</i>.s3express-<i>zone-id</i>.<i>region-code</i>.amazonaws.com</code>. Path-style requests are not supported.  Directory bucket names must be unique in the chosen Zone (Availability Zone or Local Zone). Bucket names must follow the format <code>
    #                  <i>bucket-base-name</i>--<i>zone-id</i>--x-s3</code> (for example, <code>
    #                  <i>amzn-s3-demo-bucket</i>--<i>usw2-az1</i>--x-s3</code>). For information about bucket naming
    #            restrictions, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/directory-bucket-naming-rules.html">Directory bucket naming
    #               rules</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <p>
    #               <b>Access points</b> - When you use this action with an access point for general purpose buckets, you must provide the alias of the access point in place of the bucket name or specify the access point ARN. When you use this action with an access point for directory buckets, you must provide the access point name in place of the bucket name. When using the access point ARN, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <p>
    #               <b>Object Lambda access points</b> - When you use this action with an Object Lambda access point, you must direct requests to the Object Lambda access point hostname. The Object Lambda access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-object-lambda.<i>Region</i>.amazonaws.com.</p>
    #            <note>
    #               <p>Object Lambda access points are not supported by directory buckets.</p>
    #            </note>
    #            <p>
    #               <b>S3 on Outposts</b> - When you use this action with S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the
    #                        form <code>
    #                  <i>AccessPointName</i>-<i>AccountId</i>.<i>outpostID</i>.s3-outposts.<i>Region</i>.amazonaws.com</code>. When you use this action with S3 on Outposts, the destination bucket must be the Outposts access point ARN or the access point alias. For more information about S3 on Outposts, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html">What is S3 on Outposts?</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute if_match
    #   <p>Return the object only if its entity tag (ETag) is the same as the one specified in this header;
    #         otherwise, return a <code>412 Precondition Failed</code> error.</p>
    #            <p>If both of the <code>If-Match</code> and <code>If-Unmodified-Since</code> headers are present in the
    #         request as follows: <code>If-Match</code> condition evaluates to <code>true</code>, and;
    #           <code>If-Unmodified-Since</code> condition evaluates to <code>false</code>; then, S3 returns <code>200
    #           OK</code> and the data requested. </p>
    #            <p>For more information about conditional requests, see <a href="https://tools.ietf.org/html/rfc7232">RFC 7232</a>.</p>
    #   @return [String]
    # @!attribute if_modified_since
    #   <p>Return the object only if it has been modified since the specified time; otherwise, return a
    #           <code>304 Not Modified</code> error.</p>
    #            <p>If both of the <code>If-None-Match</code> and <code>If-Modified-Since</code> headers are present in
    #         the request as follows:<code> If-None-Match</code> condition evaluates to <code>false</code>, and;
    #           <code>If-Modified-Since</code> condition evaluates to <code>true</code>; then, S3 returns <code>304
    #           Not Modified</code> status code.</p>
    #            <p>For more information about conditional requests, see <a href="https://tools.ietf.org/html/rfc7232">RFC 7232</a>.</p>
    #   @return [Time]
    # @!attribute if_none_match
    #   <p>Return the object only if its entity tag (ETag) is different from the one specified in this header;
    #         otherwise, return a <code>304 Not Modified</code> error.</p>
    #            <p>If both of the <code>If-None-Match</code> and <code>If-Modified-Since</code> headers are present in
    #         the request as follows:<code> If-None-Match</code> condition evaluates to <code>false</code>, and;
    #           <code>If-Modified-Since</code> condition evaluates to <code>true</code>; then, S3 returns <code>304
    #           Not Modified</code> HTTP status code.</p>
    #            <p>For more information about conditional requests, see <a href="https://tools.ietf.org/html/rfc7232">RFC 7232</a>.</p>
    #   @return [String]
    # @!attribute if_unmodified_since
    #   <p>Return the object only if it has not been modified since the specified time; otherwise, return a
    #           <code>412 Precondition Failed</code> error.</p>
    #            <p>If both of the <code>If-Match</code> and <code>If-Unmodified-Since</code> headers are present in the
    #         request as follows: <code>If-Match</code> condition evaluates to <code>true</code>, and;
    #           <code>If-Unmodified-Since</code> condition evaluates to <code>false</code>; then, S3 returns <code>200
    #           OK</code> and the data requested. </p>
    #            <p>For more information about conditional requests, see <a href="https://tools.ietf.org/html/rfc7232">RFC 7232</a>.</p>
    #   @return [Time]
    # @!attribute key
    #   <p>Key of the object to get.</p>
    #   @return [String]
    # @!attribute range
    #   <p>Downloads the specified byte range of an object. For more information about the HTTP Range header,
    #         see <a href="https://www.rfc-editor.org/rfc/rfc9110.html#name-range">https://www.rfc-editor.org/rfc/rfc9110.html#name-range</a>.</p>
    #            <note>
    #               <p>Amazon S3 doesn't support retrieving multiple ranges of data per <code>GET</code> request.</p>
    #            </note>
    #   @return [String]
    # @!attribute response_cache_control
    #   <p>Sets the <code>Cache-Control</code> header of the response.</p>
    #   @return [String]
    # @!attribute response_content_disposition
    #   <p>Sets the <code>Content-Disposition</code> header of the response.</p>
    #   @return [String]
    # @!attribute response_content_encoding
    #   <p>Sets the <code>Content-Encoding</code> header of the response.</p>
    #   @return [String]
    # @!attribute response_content_language
    #   <p>Sets the <code>Content-Language</code> header of the response.</p>
    #   @return [String]
    # @!attribute response_content_type
    #   <p>Sets the <code>Content-Type</code> header of the response.</p>
    #   @return [String]
    # @!attribute response_expires
    #   <p>Sets the <code>Expires</code> header of the response.</p>
    #   @return [Time]
    # @!attribute version_id
    #   <p>Version ID used to reference a specific version of the object.</p>
    #            <p>By default, the <code>GetObject</code> operation returns the current version of an object. To return
    #         a different version, use the <code>versionId</code> subresource.</p>
    #            <note>
    #               <ul>
    #                  <li>
    #                     <p>If you include a <code>versionId</code> in your request header, you must have the
    #                 <code>s3:GetObjectVersion</code> permission to access a specific version of an object. The
    #                 <code>s3:GetObject</code> permission is not required in this scenario.</p>
    #                  </li>
    #                  <li>
    #                     <p>If you request the current version of an object without a specific <code>versionId</code> in
    #               the request header, only the <code>s3:GetObject</code> permission is required. The
    #                 <code>s3:GetObjectVersion</code> permission is not required in this scenario.</p>
    #                  </li>
    #                  <li>
    #                     <p>
    #                        <b>Directory buckets</b> - S3 Versioning isn't enabled and supported for directory buckets. For this API operation, only the <code>null</code> value of the version ID is supported by directory buckets.
    #               You can only specify <code>null</code> to the <code>versionId</code> query parameter in the
    #               request.</p>
    #                  </li>
    #               </ul>
    #            </note>
    #            <p>For more information about versioning, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketVersioning.html">PutBucketVersioning</a>.</p>
    #   @return [String]
    # @!attribute sse_customer_algorithm
    #   <p>Specifies the algorithm to use when decrypting the object (for example, <code>AES256</code>).</p>
    #            <p>If you encrypt an object by using server-side encryption with customer-provided encryption keys
    #         (SSE-C) when you store the object in Amazon S3, then when you GET the object, you must use the following
    #         headers:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>x-amz-server-side-encryption-customer-algorithm</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>x-amz-server-side-encryption-customer-key</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>x-amz-server-side-encryption-customer-key-MD5</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>For more information about SSE-C, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ServerSideEncryptionCustomerKeys.html">Server-Side Encryption (Using
    #           Customer-Provided Encryption Keys)</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute sse_customer_key
    #   <p>Specifies the customer-provided encryption key that you originally provided for Amazon S3 to encrypt the
    #         data before storing it. This value is used to decrypt the object when recovering it and must match the
    #         one used when storing the data. The key must be appropriate for use with the algorithm specified in the
    #           <code>x-amz-server-side-encryption-customer-algorithm</code> header.</p>
    #            <p>If you encrypt an object by using server-side encryption with customer-provided encryption keys
    #         (SSE-C) when you store the object in Amazon S3, then when you GET the object, you must use the following
    #         headers:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>x-amz-server-side-encryption-customer-algorithm</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>x-amz-server-side-encryption-customer-key</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>x-amz-server-side-encryption-customer-key-MD5</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>For more information about SSE-C, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ServerSideEncryptionCustomerKeys.html">Server-Side Encryption (Using
    #           Customer-Provided Encryption Keys)</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute sse_customer_key_md5
    #   <p>Specifies the 128-bit MD5 digest of the customer-provided encryption key according to RFC 1321. Amazon S3
    #         uses this header for a message integrity check to ensure that the encryption key was transmitted without
    #         error.</p>
    #            <p>If you encrypt an object by using server-side encryption with customer-provided encryption keys
    #         (SSE-C) when you store the object in Amazon S3, then when you GET the object, you must use the following
    #         headers:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>x-amz-server-side-encryption-customer-algorithm</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>x-amz-server-side-encryption-customer-key</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>x-amz-server-side-encryption-customer-key-MD5</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>For more information about SSE-C, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ServerSideEncryptionCustomerKeys.html">Server-Side Encryption (Using
    #           Customer-Provided Encryption Keys)</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute request_payer
    #   <p>Confirms that the requester knows that they will be charged for the request. Bucket owners need not
    #         specify this parameter in their requests. If either the source or destination S3 bucket has Requester
    #         Pays enabled, the requester will pay for the corresponding charges. For information about
    #         downloading objects from Requester Pays buckets, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html">Downloading Objects in Requester Pays
    #           Buckets</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute part_number
    #   <p>Part number of the object being read. This is a positive integer between 1 and 10,000. Effectively
    #         performs a 'ranged' GET request for the part specified. Useful for downloading just a part of an
    #         object.</p>
    #   @return [Integer]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    # @!attribute checksum_mode
    #   <p>To retrieve the checksum, this mode must be enabled.</p>
    #   @return [String]
    class GetObjectRequest < Struct.new(
      nil,
      :bucket,
      :if_match,
      :if_modified_since,
      :if_none_match,
      :if_unmodified_since,
      :key,
      :range,
      :response_cache_control,
      :response_content_disposition,
      :response_content_encoding,
      :response_content_language,
      :response_content_type,
      :response_expires,
      :version_id,
      :sse_customer_algorithm,
      :sse_customer_key,
      :sse_customer_key_md5,
      :request_payer,
      :part_number,
      :expected_bucket_owner,
      :checksum_mode,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute retention
    #   <p>The container element for an object's retention settings.</p>
    #   @return [Types::ObjectLockRetention]
    class GetObjectRetentionOutput < Struct.new(
      nil,
      :retention,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bucket
    #   <p>The bucket name containing the object whose retention settings you want to retrieve. </p>
    #            <p>
    #               <b>Access points</b> - When you use this action with an access point for general purpose buckets, you must provide the alias of the access point in place of the bucket name or specify the access point ARN. When you use this action with an access point for directory buckets, you must provide the access point name in place of the bucket name. When using the access point ARN, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute key
    #   <p>The key name for the object whose retention settings you want to retrieve.</p>
    #   @return [String]
    # @!attribute version_id
    #   <p>The version ID for the object whose retention settings you want to retrieve.</p>
    #   @return [String]
    # @!attribute request_payer
    #   <p>Confirms that the requester knows that they will be charged for the request. Bucket owners need not
    #         specify this parameter in their requests. If either the source or destination S3 bucket has Requester
    #         Pays enabled, the requester will pay for the corresponding charges. For information about
    #         downloading objects from Requester Pays buckets, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html">Downloading Objects in Requester Pays
    #           Buckets</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    class GetObjectRetentionRequest < Struct.new(
      nil,
      :bucket,
      :key,
      :version_id,
      :request_payer,
      :expected_bucket_owner,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute version_id
    #   <p>The versionId of the object for which you got the tagging information.</p>
    #   @return [String]
    # @!attribute tag_set
    #   <p>Contains the tag set.</p>
    #   @return [Array<Types::Tag>]
    class GetObjectTaggingOutput < Struct.new(
      nil,
      :version_id,
      :tag_set,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bucket
    #   <p>The bucket name containing the object for which to get the tagging information. </p>
    #            <p>
    #               <b>Access points</b> - When you use this action with an access point for general purpose buckets, you must provide the alias of the access point in place of the bucket name or specify the access point ARN. When you use this action with an access point for directory buckets, you must provide the access point name in place of the bucket name. When using the access point ARN, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <p>
    #               <b>S3 on Outposts</b> - When you use this action with S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the
    #                        form <code>
    #                  <i>AccessPointName</i>-<i>AccountId</i>.<i>outpostID</i>.s3-outposts.<i>Region</i>.amazonaws.com</code>. When you use this action with S3 on Outposts, the destination bucket must be the Outposts access point ARN or the access point alias. For more information about S3 on Outposts, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html">What is S3 on Outposts?</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute key
    #   <p>Object key for which to get the tagging information.</p>
    #   @return [String]
    # @!attribute version_id
    #   <p>The versionId of the object for which to get the tagging information.</p>
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    # @!attribute request_payer
    #   <p>Confirms that the requester knows that they will be charged for the request. Bucket owners need not
    #         specify this parameter in their requests. If either the source or destination S3 bucket has Requester
    #         Pays enabled, the requester will pay for the corresponding charges. For information about
    #         downloading objects from Requester Pays buckets, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html">Downloading Objects in Requester Pays
    #           Buckets</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    class GetObjectTaggingRequest < Struct.new(
      nil,
      :bucket,
      :key,
      :version_id,
      :expected_bucket_owner,
      :request_payer,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute body
    #   <p>A Bencoded dictionary as defined by the BitTorrent specification</p>
    #   @return [String]
    # @!attribute request_charged
    #   <p>If present, indicates that the requester was successfully charged for the request. For more
    #         information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/RequesterPaysBuckets.html">Using Requester Pays buckets for storage transfers and usage</a> in the <i>Amazon Simple
    #           Storage Service user guide</i>.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    class GetObjectTorrentOutput < Struct.new(
      nil,
      :body,
      :request_charged,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:body] = Base64.strict_decode64('') unless options.key?(:body)
        super
      end
    end

    # @!attribute bucket
    #   <p>The name of the bucket containing the object for which to get the torrent files.</p>
    #   @return [String]
    # @!attribute key
    #   <p>The object key for which to get the information.</p>
    #   @return [String]
    # @!attribute request_payer
    #   <p>Confirms that the requester knows that they will be charged for the request. Bucket owners need not
    #         specify this parameter in their requests. If either the source or destination S3 bucket has Requester
    #         Pays enabled, the requester will pay for the corresponding charges. For information about
    #         downloading objects from Requester Pays buckets, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html">Downloading Objects in Requester Pays
    #           Buckets</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    class GetObjectTorrentRequest < Struct.new(
      nil,
      :bucket,
      :key,
      :request_payer,
      :expected_bucket_owner,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute public_access_block_configuration
    #   <p>The <code>PublicAccessBlock</code> configuration currently in effect for this Amazon S3 bucket.</p>
    #   @return [Types::PublicAccessBlockConfiguration]
    class GetPublicAccessBlockOutput < Struct.new(
      nil,
      :public_access_block_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bucket
    #   <p>The name of the Amazon S3 bucket whose <code>PublicAccessBlock</code> configuration you want to retrieve.
    #       </p>
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    class GetPublicAccessBlockRequest < Struct.new(
      nil,
      :bucket,
      :expected_bucket_owner,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for S3 Glacier job parameters.</p>
    # @!attribute tier
    #   <p>Retrieval tier at which the restore will be processed.</p>
    #   @return [String]
    class GlacierJobParameters < Struct.new(
      nil,
      :tier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for grant information.</p>
    # @!attribute grantee
    #   <p>The person being granted permissions.</p>
    #   @return [Types::Grantee]
    # @!attribute permission
    #   <p>Specifies the permission given to the grantee.</p>
    #   @return [String]
    class Grant < Struct.new(
      nil,
      :grantee,
      :permission,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for the person being granted permissions.</p>
    # @!attribute display_name
    #   <p></p>
    #   @return [String]
    # @!attribute email_address
    #   <p></p>
    #   @return [String]
    # @!attribute id
    #   <p>The canonical user ID of the grantee.</p>
    #   @return [String]
    # @!attribute uri
    #   <p>URI of the grantee group.</p>
    #   @return [String]
    # @!attribute type
    #   <p>Type of grantee</p>
    #   @return [String]
    class Grantee < Struct.new(
      nil,
      :display_name,
      :email_address,
      :id,
      :uri,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bucket_arn
    #   <p>The Amazon Resource Name (ARN) of the S3 bucket. ARNs uniquely identify Amazon Web Services resources across all
    #         of Amazon Web Services.</p>
    #            <note>
    #               <p>This parameter is only supported for S3 directory buckets. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/directory-buckets-tagging.html">Using tags with
    #             directory buckets</a>.</p>
    #            </note>
    #   @return [String]
    # @!attribute bucket_location_type
    #   <p>The type of location where the bucket is created.</p>
    #            <note>
    #               <p>This functionality is only supported by directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute bucket_location_name
    #   <p>The name of the location where the bucket will be created.</p>
    #            <p>For directory buckets, the Zone ID of the Availability Zone or the Local Zone where the bucket is created. An example
    #         Zone ID value for an Availability Zone is <code>usw2-az1</code>.</p>
    #            <note>
    #               <p>This functionality is only supported by directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute bucket_region
    #   <p>The Region that the bucket is located.</p>
    #   @return [String]
    # @!attribute access_point_alias
    #   <p>Indicates whether the bucket name used in the request is an access point alias.</p>
    #            <note>
    #               <p>For directory buckets, the value of this field is <code>false</code>.</p>
    #            </note>
    #   @return [Boolean]
    class HeadBucketOutput < Struct.new(
      nil,
      :bucket_arn,
      :bucket_location_type,
      :bucket_location_name,
      :bucket_region,
      :access_point_alias,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bucket
    #   <p>The bucket name.</p>
    #            <p>
    #               <b>Directory buckets</b> - When you use this operation with a directory bucket, you must use virtual-hosted-style requests in the format <code>
    #                  <i>Bucket-name</i>.s3express-<i>zone-id</i>.<i>region-code</i>.amazonaws.com</code>. Path-style requests are not supported.  Directory bucket names must be unique in the chosen Zone (Availability Zone or Local Zone). Bucket names must follow the format <code>
    #                  <i>bucket-base-name</i>--<i>zone-id</i>--x-s3</code> (for example, <code>
    #                  <i>amzn-s3-demo-bucket</i>--<i>usw2-az1</i>--x-s3</code>). For information about bucket naming
    #            restrictions, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/directory-bucket-naming-rules.html">Directory bucket naming
    #               rules</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <p>
    #               <b>Access points</b> - When you use this action with an access point for general purpose buckets, you must provide the alias of the access point in place of the bucket name or specify the access point ARN. When you use this action with an access point for directory buckets, you must provide the access point name in place of the bucket name. When using the access point ARN, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <p>
    #               <b>Object Lambda access points</b> - When you use this API operation with an Object Lambda access point, provide the alias of the Object Lambda access point in place of the bucket name.
    #   If the Object Lambda access point alias in a request is not valid, the error code <code>InvalidAccessPointAliasError</code> is returned.
    #   For more information about <code>InvalidAccessPointAliasError</code>, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html#ErrorCodeList">List of
    #               Error Codes</a>.</p>
    #            <note>
    #               <p>Object Lambda access points are not supported by directory buckets.</p>
    #            </note>
    #            <p>
    #               <b>S3 on Outposts</b> - When you use this action with S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the
    #                        form <code>
    #                  <i>AccessPointName</i>-<i>AccountId</i>.<i>outpostID</i>.s3-outposts.<i>Region</i>.amazonaws.com</code>. When you use this action with S3 on Outposts, the destination bucket must be the Outposts access point ARN or the access point alias. For more information about S3 on Outposts, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html">What is S3 on Outposts?</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    class HeadBucketRequest < Struct.new(
      nil,
      :bucket,
      :expected_bucket_owner,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute delete_marker
    #   <p>Specifies whether the object retrieved was (true) or was not (false) a Delete Marker. If false, this
    #         response header does not appear in the response.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [Boolean]
    # @!attribute accept_ranges
    #   <p>Indicates that a range of bytes was specified.</p>
    #   @return [String]
    # @!attribute expiration
    #   <p>If the object expiration is configured (see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketLifecycleConfiguration.html">
    #                  <code>PutBucketLifecycleConfiguration</code>
    #               </a>), the response includes this header. It
    #         includes the <code>expiry-date</code> and <code>rule-id</code> key-value pairs providing object
    #         expiration information. The value of the <code>rule-id</code> is URL-encoded.</p>
    #            <note>
    #               <p>Object expiration information is not returned in directory buckets and this header returns the
    #           value "<code>NotImplemented</code>" in all responses for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute restore
    #   <p>If the object is an archived object (an object whose storage class is GLACIER), the response
    #         includes this header if either the archive restoration is in progress (see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_RestoreObject.html">RestoreObject</a> or an archive copy is already
    #         restored.</p>
    #            <p> If an archive copy is already restored, the header value indicates when Amazon S3 is scheduled to delete
    #         the object copy. For example:</p>
    #            <p>
    #               <code>x-amz-restore: ongoing-request="false", expiry-date="Fri, 21 Dec 2012 00:00:00
    #         GMT"</code>
    #            </p>
    #            <p>If the object restoration is in progress, the header returns the value
    #           <code>ongoing-request="true"</code>.</p>
    #            <p>For more information about archiving objects, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lifecycle-mgmt.html#lifecycle-transition-general-considerations">Transitioning Objects: General Considerations</a>.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets. Directory buckets only support <code>EXPRESS_ONEZONE</code> (the S3 Express One Zone storage class) in Availability Zones and <code>ONEZONE_IA</code> (the S3 One Zone-Infrequent Access storage class) in Dedicated Local Zones.</p>
    #            </note>
    #   @return [String]
    # @!attribute archive_status
    #   <p>The archive state of the head object.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute last_modified
    #   <p>Date and time when the object was last modified.</p>
    #   @return [Time]
    # @!attribute content_length
    #   <p>Size of the body in bytes.</p>
    #   @return [Integer]
    # @!attribute checksum_crc32
    #   <p>The Base64 encoded, 32-bit <code>CRC32 checksum</code> of the object. This checksum is only present if the checksum was uploaded
    #       with the object. When you use an API operation on an object that was uploaded using multipart uploads, this value may not be a direct checksum value of the full object. Instead, it's a calculation based on the checksum values of each individual part. For more information about how checksums are calculated
    #       with multipart uploads, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html#large-object-checksums">
    #       Checking object integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_crc32_c
    #   <p>The Base64 encoded, 32-bit <code>CRC32C</code> checksum of the object. This checksum is only present if the checksum was uploaded
    #       with the object. When you use an API operation on an object that was uploaded using multipart uploads, this value may not be a direct checksum value of the full object. Instead, it's a calculation based on the checksum values of each individual part. For more information about how checksums are calculated
    #       with multipart uploads, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html#large-object-checksums">
    #       Checking object integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_crc64_nvme
    #   <p>The Base64 encoded, 64-bit <code>CRC64NVME</code> checksum of the object. For more information, see
    #           <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking
    #           object integrity in the Amazon S3 User Guide</a>.</p>
    #   @return [String]
    # @!attribute checksum_sha1
    #   <p>The Base64 encoded, 160-bit <code>SHA1</code> digest of the object. This checksum is only present if the checksum was uploaded
    #       with the object. When you use the API operation on an object that was uploaded using multipart uploads, this value may not be a direct checksum value of the full object. Instead, it's a calculation based on the checksum values of each individual part. For more information about how checksums are calculated
    #       with multipart uploads, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html#large-object-checksums">
    #       Checking object integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_sha256
    #   <p>The Base64 encoded, 256-bit <code>SHA256</code> digest of the object. This checksum is only present if the checksum was uploaded
    #       with the object. When you use an API operation on an object that was uploaded using multipart uploads, this value may not be a direct checksum value of the full object. Instead, it's a calculation based on the checksum values of each individual part. For more information about how checksums are calculated
    #       with multipart uploads, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html#large-object-checksums">
    #       Checking object integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_sha512
    #   <p>The Base64 encoded, 512-bit <code>SHA512</code> digest of the object. For more information, see
    #           <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking
    #           object integrity in the Amazon S3 User Guide</a>.</p>
    #   @return [String]
    # @!attribute checksum_md5
    #   <p>The Base64 encoded, 128-bit <code>MD5</code> digest of the object. For more information, see
    #           <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking
    #           object integrity in the Amazon S3 User Guide</a>.</p>
    #   @return [String]
    # @!attribute checksum_xxhash64
    #   <p>The Base64 encoded, 64-bit <code>XXHASH64</code> checksum of the object. For more information, see
    #           <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking
    #           object integrity in the Amazon S3 User Guide</a>.</p>
    #   @return [String]
    # @!attribute checksum_xxhash3
    #   <p>The Base64 encoded, 64-bit <code>XXHASH3</code> checksum of the object. For more information, see
    #           <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking
    #           object integrity in the Amazon S3 User Guide</a>.</p>
    #   @return [String]
    # @!attribute checksum_xxhash128
    #   <p>The Base64 encoded, 128-bit <code>XXHASH128</code> checksum of the object. For more information, see
    #           <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking
    #           object integrity in the Amazon S3 User Guide</a>.</p>
    #   @return [String]
    # @!attribute checksum_type
    #   <p>The checksum type, which determines how part-level checksums are combined to create an object-level
    #         checksum for multipart objects. You can use this header response to verify that the checksum type that
    #         is received is the same checksum type that was specified in <code>CreateMultipartUpload</code> request.
    #         For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity in the Amazon S3
    #           User Guide</a>.</p>
    #   @return [String]
    # @!attribute e_tag
    #   <p>An entity tag (ETag) is an opaque identifier assigned by a web server to a specific version of a
    #         resource found at a URL.</p>
    #   @return [String]
    # @!attribute missing_meta
    #   <p>This is set to the number of metadata entries not returned in <code>x-amz-meta</code> headers. This
    #         can happen if you create metadata using an API like SOAP that supports more flexible metadata than the
    #         REST API. For example, using SOAP, you can create metadata whose values are not legal HTTP
    #         headers.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [Integer]
    # @!attribute version_id
    #   <p>Version ID of the object.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute cache_control
    #   <p>Specifies caching behavior along the request/reply chain.</p>
    #   @return [String]
    # @!attribute content_disposition
    #   <p>Specifies presentational information for the object.</p>
    #   @return [String]
    # @!attribute content_encoding
    #   <p>Indicates what content encodings have been applied to the object and thus what decoding mechanisms
    #         must be applied to obtain the media-type referenced by the Content-Type header field.</p>
    #   @return [String]
    # @!attribute content_language
    #   <p>The language the content is in.</p>
    #   @return [String]
    # @!attribute content_type
    #   <p>A standard MIME type describing the format of the object data.</p>
    #   @return [String]
    # @!attribute content_range
    #   <p>The portion of the object returned in the response for a <code>GET</code> request.</p>
    #   @return [String]
    # @!attribute expires
    #   <p>The date and time at which the object is no longer cacheable.</p>
    #   @return [String]
    # @!attribute website_redirect_location
    #   <p>If the bucket is configured as a website, redirects requests for this object to another object in
    #         the same bucket or to an external URL. Amazon S3 stores the value of this header in the object
    #         metadata.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute server_side_encryption
    #   <p>The server-side encryption algorithm used when you store this object in Amazon S3 or Amazon FSx.</p>
    #            <note>
    #               <p>When accessing data stored in Amazon FSx file systems using S3 access points, the only valid server side
    #           encryption option is <code>aws:fsx</code>.</p>
    #            </note>
    #   @return [String]
    # @!attribute metadata
    #   <p>A map of metadata to store with the object in S3.</p>
    #   @return [Hash<String, String>]
    # @!attribute sse_customer_algorithm
    #   <p>If server-side encryption with a customer-provided encryption key was requested, the response will
    #         include this header to confirm the encryption algorithm that's used.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute sse_customer_key_md5
    #   <p>If server-side encryption with a customer-provided encryption key was requested, the response will
    #         include this header to provide the round-trip message integrity verification of the customer-provided
    #         encryption key.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute ssekms_key_id
    #   <p>If present, indicates the ID of the KMS key that was used for object encryption.</p>
    #   @return [String]
    # @!attribute bucket_key_enabled
    #   <p>Indicates whether the object uses an S3 Bucket Key for server-side encryption with Key Management Service (KMS)
    #         keys (SSE-KMS).</p>
    #   @return [Boolean]
    # @!attribute storage_class
    #   <p>Provides storage class information of the object. Amazon S3 returns this header for all objects except
    #         for S3 Standard storage class objects.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/storage-class-intro.html">Storage Classes</a>.</p>
    #            <note>
    #               <p>
    #                  <b>Directory buckets </b> -
    #           Directory buckets only support <code>EXPRESS_ONEZONE</code> (the S3 Express One Zone storage class) in Availability Zones and <code>ONEZONE_IA</code> (the S3 One Zone-Infrequent Access storage class) in Dedicated Local Zones.</p>
    #            </note>
    #   @return [String]
    # @!attribute request_charged
    #   <p>If present, indicates that the requester was successfully charged for the request. For more
    #         information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/RequesterPaysBuckets.html">Using Requester Pays buckets for storage transfers and usage</a> in the <i>Amazon Simple
    #           Storage Service user guide</i>.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute replication_status
    #   <p>Amazon S3 can return this header if your request involves a bucket that is either a source or a
    #         destination in a replication rule.</p>
    #            <p>In replication, you have a source bucket on which you configure replication and destination bucket
    #         or buckets where Amazon S3 stores object replicas. When you request an object (<code>GetObject</code>) or
    #         object metadata (<code>HeadObject</code>) from these buckets, Amazon S3 will return the
    #           <code>x-amz-replication-status</code> header in the response as follows:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>If requesting an object from the source bucket</b>, Amazon S3 will
    #             return the <code>x-amz-replication-status</code> header if the object in your request is eligible
    #             for replication.</p>
    #                  <p> For example, suppose that in your replication configuration, you specify object prefix
    #               <code>TaxDocs</code> requesting Amazon S3 to replicate objects with key prefix <code>TaxDocs</code>.
    #             Any objects you upload with this key name prefix, for example <code>TaxDocs/document1.pdf</code>,
    #             are eligible for replication. For any object request with this key name prefix, Amazon S3 will return the
    #               <code>x-amz-replication-status</code> header with value PENDING, COMPLETED or FAILED indicating
    #             object replication status.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>If requesting an object from a destination bucket</b>, Amazon S3 will
    #             return the <code>x-amz-replication-status</code> header with value REPLICA if the object in your
    #             request is a replica that Amazon S3 created and there is no replica modification replication in
    #             progress.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>When replicating objects to multiple destination buckets</b>, the
    #               <code>x-amz-replication-status</code> header acts differently. The header of the source object
    #             will only return a value of COMPLETED when replication is successful to all destinations. The header
    #             will remain at value PENDING until replication has completed for all destinations. If one or more
    #             destinations fails replication the header will return FAILED. </p>
    #               </li>
    #            </ul>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/NotificationHowTo.html">Replication</a>.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute parts_count
    #   <p>The count of parts this object has. This value is only returned if you specify
    #           <code>partNumber</code> in your request and the object was uploaded as a multipart upload.</p>
    #   @return [Integer]
    # @!attribute tag_count
    #   <p>The number of tags, if any, on the object, when you have the relevant permission to read object
    #         tags.</p>
    #            <p>You can use <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObjectTagging.html">GetObjectTagging</a> to retrieve the tag set associated with an object.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [Integer]
    # @!attribute object_lock_mode
    #   <p>The Object Lock mode, if any, that's in effect for this object. This header is only returned if the
    #         requester has the <code>s3:GetObjectRetention</code> permission. For more information about S3 Object
    #         Lock, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock.html">Object Lock</a>. </p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute object_lock_retain_until_date
    #   <p>The date and time when the Object Lock retention period expires. This header is only returned if the
    #         requester has the <code>s3:GetObjectRetention</code> permission.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [Time]
    # @!attribute object_lock_legal_hold_status
    #   <p>Specifies whether a legal hold is in effect for this object. This header is only returned if the
    #         requester has the <code>s3:GetObjectLegalHold</code> permission. This header is not returned if the
    #         specified version of this object has never had a legal hold applied. For more information about S3
    #         Object Lock, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock.html">Object
    #           Lock</a>.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute object_lock_event_hold
    #   <p>The event hold status for this object. This header is only returned if the requester has the
    #         <code>s3:GetObjectRetention</code> permission.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute object_lock_event_hold_duration_days
    #   <p>The event hold duration in days for this object. Only returned when the event hold is
    #         enabled.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [Integer]
    # @!attribute object_lock_event_hold_duration_years
    #   <p>The event hold duration in years for this object. Only returned when the event hold is
    #         enabled.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [Integer]
    class HeadObjectOutput < Struct.new(
      nil,
      :delete_marker,
      :accept_ranges,
      :expiration,
      :restore,
      :archive_status,
      :last_modified,
      :content_length,
      :checksum_crc32,
      :checksum_crc32_c,
      :checksum_crc64_nvme,
      :checksum_sha1,
      :checksum_sha256,
      :checksum_sha512,
      :checksum_md5,
      :checksum_xxhash64,
      :checksum_xxhash3,
      :checksum_xxhash128,
      :checksum_type,
      :e_tag,
      :missing_meta,
      :version_id,
      :cache_control,
      :content_disposition,
      :content_encoding,
      :content_language,
      :content_type,
      :content_range,
      :expires,
      :website_redirect_location,
      :server_side_encryption,
      :metadata,
      :sse_customer_algorithm,
      :sse_customer_key_md5,
      :ssekms_key_id,
      :bucket_key_enabled,
      :storage_class,
      :request_charged,
      :replication_status,
      :parts_count,
      :tag_count,
      :object_lock_mode,
      :object_lock_retain_until_date,
      :object_lock_legal_hold_status,
      :object_lock_event_hold,
      :object_lock_event_hold_duration_days,
      :object_lock_event_hold_duration_years,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bucket
    #   <p>The name of the bucket that contains the object.</p>
    #            <p>
    #               <b>Directory buckets</b> - When you use this operation with a directory bucket, you must use virtual-hosted-style requests in the format <code>
    #                  <i>Bucket-name</i>.s3express-<i>zone-id</i>.<i>region-code</i>.amazonaws.com</code>. Path-style requests are not supported.  Directory bucket names must be unique in the chosen Zone (Availability Zone or Local Zone). Bucket names must follow the format <code>
    #                  <i>bucket-base-name</i>--<i>zone-id</i>--x-s3</code> (for example, <code>
    #                  <i>amzn-s3-demo-bucket</i>--<i>usw2-az1</i>--x-s3</code>). For information about bucket naming
    #            restrictions, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/directory-bucket-naming-rules.html">Directory bucket naming
    #               rules</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <p>
    #               <b>Access points</b> - When you use this action with an access point for general purpose buckets, you must provide the alias of the access point in place of the bucket name or specify the access point ARN. When you use this action with an access point for directory buckets, you must provide the access point name in place of the bucket name. When using the access point ARN, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <note>
    #               <p>Object Lambda access points are not supported by directory buckets.</p>
    #            </note>
    #            <p>
    #               <b>S3 on Outposts</b> - When you use this action with S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the
    #                        form <code>
    #                  <i>AccessPointName</i>-<i>AccountId</i>.<i>outpostID</i>.s3-outposts.<i>Region</i>.amazonaws.com</code>. When you use this action with S3 on Outposts, the destination bucket must be the Outposts access point ARN or the access point alias. For more information about S3 on Outposts, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html">What is S3 on Outposts?</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute if_match
    #   <p>Return the object only if its entity tag (ETag) is the same as the one specified; otherwise, return
    #         a 412 (precondition failed) error.</p>
    #            <p>If both of the <code>If-Match</code> and <code>If-Unmodified-Since</code> headers are present in the
    #         request as follows:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>If-Match</code> condition evaluates to <code>true</code>, and;</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>If-Unmodified-Since</code> condition evaluates to <code>false</code>;</p>
    #               </li>
    #            </ul>
    #            <p>Then Amazon S3 returns <code>200 OK</code> and the data requested.</p>
    #            <p>For more information about conditional requests, see <a href="https://tools.ietf.org/html/rfc7232">RFC 7232</a>.</p>
    #   @return [String]
    # @!attribute if_modified_since
    #   <p>Return the object only if it has been modified since the specified time; otherwise, return a 304
    #         (not modified) error.</p>
    #            <p>If both of the <code>If-None-Match</code> and <code>If-Modified-Since</code> headers are present in
    #         the request as follows:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>If-None-Match</code> condition evaluates to <code>false</code>, and;</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>If-Modified-Since</code> condition evaluates to <code>true</code>;</p>
    #               </li>
    #            </ul>
    #            <p>Then Amazon S3 returns the <code>304 Not Modified</code> response code.</p>
    #            <p>For more information about conditional requests, see <a href="https://tools.ietf.org/html/rfc7232">RFC 7232</a>.</p>
    #   @return [Time]
    # @!attribute if_none_match
    #   <p>Return the object only if its entity tag (ETag) is different from the one specified; otherwise,
    #         return a 304 (not modified) error.</p>
    #            <p>If both of the <code>If-None-Match</code> and <code>If-Modified-Since</code> headers are present in
    #         the request as follows:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>If-None-Match</code> condition evaluates to <code>false</code>, and;</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>If-Modified-Since</code> condition evaluates to <code>true</code>;</p>
    #               </li>
    #            </ul>
    #            <p>Then Amazon S3 returns the <code>304 Not Modified</code> response code.</p>
    #            <p>For more information about conditional requests, see <a href="https://tools.ietf.org/html/rfc7232">RFC 7232</a>.</p>
    #   @return [String]
    # @!attribute if_unmodified_since
    #   <p>Return the object only if it has not been modified since the specified time; otherwise, return a 412
    #         (precondition failed) error.</p>
    #            <p>If both of the <code>If-Match</code> and <code>If-Unmodified-Since</code> headers are present in the
    #         request as follows:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>If-Match</code> condition evaluates to <code>true</code>, and;</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>If-Unmodified-Since</code> condition evaluates to <code>false</code>;</p>
    #               </li>
    #            </ul>
    #            <p>Then Amazon S3 returns <code>200 OK</code> and the data requested.</p>
    #            <p>For more information about conditional requests, see <a href="https://tools.ietf.org/html/rfc7232">RFC 7232</a>.</p>
    #   @return [Time]
    # @!attribute key
    #   <p>The object key.</p>
    #   @return [String]
    # @!attribute range
    #   <p>HeadObject returns only the metadata for an object. If the Range is satisfiable, only the
    #           <code>ContentLength</code> is affected in the response. If the Range is not satisfiable, S3 returns a
    #           <code>416 - Requested Range Not Satisfiable</code> error.</p>
    #   @return [String]
    # @!attribute response_cache_control
    #   <p>Sets the <code>Cache-Control</code> header of the response.</p>
    #   @return [String]
    # @!attribute response_content_disposition
    #   <p>Sets the <code>Content-Disposition</code> header of the response.</p>
    #   @return [String]
    # @!attribute response_content_encoding
    #   <p>Sets the <code>Content-Encoding</code> header of the response.</p>
    #   @return [String]
    # @!attribute response_content_language
    #   <p>Sets the <code>Content-Language</code> header of the response.</p>
    #   @return [String]
    # @!attribute response_content_type
    #   <p>Sets the <code>Content-Type</code> header of the response.</p>
    #   @return [String]
    # @!attribute response_expires
    #   <p>Sets the <code>Expires</code> header of the response.</p>
    #   @return [Time]
    # @!attribute version_id
    #   <p>Version ID used to reference a specific version of the object.</p>
    #            <note>
    #               <p>For directory buckets in this API operation, only the <code>null</code> value of the version ID is supported.</p>
    #            </note>
    #   @return [String]
    # @!attribute sse_customer_algorithm
    #   <p>Specifies the algorithm to use when encrypting the object (for example, AES256).</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute sse_customer_key
    #   <p>Specifies the customer-provided encryption key for Amazon S3 to use in encrypting data. This value is
    #         used to store the object and then it is discarded; Amazon S3 does not store the encryption key. The key must
    #         be appropriate for use with the algorithm specified in the
    #           <code>x-amz-server-side-encryption-customer-algorithm</code> header.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute sse_customer_key_md5
    #   <p>Specifies the 128-bit MD5 digest of the encryption key according to RFC 1321. Amazon S3 uses this header
    #         for a message integrity check to ensure that the encryption key was transmitted without error.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute request_payer
    #   <p>Confirms that the requester knows that they will be charged for the request. Bucket owners need not
    #         specify this parameter in their requests. If either the source or destination S3 bucket has Requester
    #         Pays enabled, the requester will pay for the corresponding charges. For information about
    #         downloading objects from Requester Pays buckets, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html">Downloading Objects in Requester Pays
    #           Buckets</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute part_number
    #   <p>Part number of the object being read. This is a positive integer between 1 and 10,000. Effectively
    #         performs a 'ranged' HEAD request for the part specified. Useful querying about the size of the part and
    #         the number of parts in this object.</p>
    #   @return [Integer]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    # @!attribute checksum_mode
    #   <p>To retrieve the checksum, this parameter must be enabled.</p>
    #            <p>
    #               <b>General purpose buckets</b> -
    #         If you enable checksum mode and the object is uploaded with a <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_Checksum.html">checksum</a> and encrypted with
    #         an Key Management Service (KMS) key, you must have permission to use the <code>kms:Decrypt</code> action to
    #         retrieve the checksum.</p>
    #            <p>
    #               <b>Directory buckets</b> - If you enable <code>ChecksumMode</code>
    #         and the object is encrypted with Amazon Web Services Key Management Service (Amazon Web Services KMS), you must also have the
    #           <code>kms:GenerateDataKey</code> and <code>kms:Decrypt</code> permissions in IAM identity-based
    #         policies and KMS key policies for the KMS key to retrieve the checksum of the object.</p>
    #   @return [String]
    class HeadObjectRequest < Struct.new(
      nil,
      :bucket,
      :if_match,
      :if_modified_since,
      :if_none_match,
      :if_unmodified_since,
      :key,
      :range,
      :response_cache_control,
      :response_content_disposition,
      :response_content_encoding,
      :response_content_language,
      :response_content_type,
      :response_expires,
      :version_id,
      :sse_customer_algorithm,
      :sse_customer_key,
      :sse_customer_key_md5,
      :request_payer,
      :part_number,
      :expected_bucket_owner,
      :checksum_mode,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Parameters on this idempotent request are inconsistent with parameters used in previous request(s). </p>
    #          <p>For a list of error codes and more information on Amazon S3 errors, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html#ErrorCodeList">Error codes</a>.</p>
    #          <note>
    #             <p>Idempotency ensures that an API request completes no more than one time. With an idempotent
    #         request, if the original request completes successfully, any subsequent retries complete successfully
    #         without performing any further actions.</p>
    #          </note>
    class IdempotencyParameterMismatch < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for the <code>Suffix</code> element.</p>
    # @!attribute suffix
    #   <p>A suffix that is appended to a request that is for a directory on the website endpoint. (For
    #         example, if the suffix is <code>index.html</code> and you make a request to
    #           <code>samplebucket/images/</code>, the data that is returned will be for the object with the key name
    #           <code>images/index.html</code>.) The suffix must not be empty and must not include a slash
    #         character.</p>
    #            <important>
    #               <p>Replacement must be made for object keys containing special characters (such as carriage returns) when using
    #            XML requests. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-keys.html#object-key-xml-related-constraints">
    #               XML related object key constraints</a>.</p>
    #            </important>
    #   @return [String]
    class IndexDocument < Struct.new(
      nil,
      :suffix,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container element that identifies who initiated the multipart upload. </p>
    # @!attribute id
    #   <p>If the principal is an Amazon Web Services account, it provides the Canonical User ID. If the principal is an
    #         IAM User, it provides a user ARN value.</p>
    #            <note>
    #               <p>
    #                  <b>Directory buckets</b> - If the principal is an Amazon Web Services account,
    #           it provides the Amazon Web Services account ID. If the principal is an IAM User, it provides a user ARN
    #           value.</p>
    #            </note>
    #   @return [String]
    # @!attribute display_name
    #   <p></p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    class Initiator < Struct.new(
      nil,
      :id,
      :display_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the serialization format of the object.</p>
    # @!attribute csv
    #   <p>Describes the serialization of a CSV-encoded object.</p>
    #   @return [Types::CSVInput]
    # @!attribute compression_type
    #   <p>Specifies object's compression format. Valid values: NONE, GZIP, BZIP2. Default Value: NONE.</p>
    #   @return [String]
    # @!attribute json
    #   <p>Specifies JSON as object's input serialization format.</p>
    #   @return [Types::JSONInput]
    # @!attribute parquet
    #   <p>Specifies Parquet as object's input serialization format.</p>
    #   @return [Types::ParquetInput]
    class InputSerialization < Struct.new(
      nil,
      :csv,
      :compression_type,
      :json,
      :parquet,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A container for specifying S3 Intelligent-Tiering filters. The filters determine the subset of
    #       objects to which the rule applies.</p>
    # @!attribute prefix
    #   <p>An object key name prefix that identifies the subset of objects to which the configuration
    #         applies.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>All of these tags must exist in the object's tag set in order for the configuration to apply.</p>
    #   @return [Array<Types::Tag>]
    class IntelligentTieringAndOperator < Struct.new(
      nil,
      :prefix,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the S3 Intelligent-Tiering configuration for an Amazon S3 bucket.</p>
    #          <p>For information about the S3 Intelligent-Tiering storage class, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/storage-class-intro.html#sc-dynamic-data-access">Storage class for
    #         automatically optimizing frequently and infrequently accessed objects</a>.</p>
    # @!attribute id
    #   <p>The ID used to identify the S3 Intelligent-Tiering configuration.</p>
    #   @return [String]
    # @!attribute filter
    #   <p>Specifies a bucket filter. The configuration only includes objects that meet the filter's
    #         criteria.</p>
    #   @return [Types::IntelligentTieringFilter]
    # @!attribute status
    #   <p>Specifies the status of the configuration.</p>
    #   @return [String]
    # @!attribute tierings
    #   <p>Specifies the S3 Intelligent-Tiering storage class tier of the configuration.</p>
    #   @return [Array<Types::Tiering>]
    class IntelligentTieringConfiguration < Struct.new(
      nil,
      :id,
      :filter,
      :status,
      :tierings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The <code>Filter</code> is used to identify objects that the S3 Intelligent-Tiering configuration
    #       applies to.</p>
    # @!attribute prefix
    #   <p>An object key name prefix that identifies the subset of objects to which the rule applies.</p>
    #            <important>
    #               <p>Replacement must be made for object keys containing special characters (such as carriage returns) when using
    #            XML requests. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-keys.html#object-key-xml-related-constraints">
    #               XML related object key constraints</a>.</p>
    #            </important>
    #   @return [String]
    # @!attribute tag
    #   <p>A container of a key value name pair.</p>
    #   @return [Types::Tag]
    # @!attribute and
    #   <p>A conjunction (logical AND) of predicates, which is used in evaluating a metrics filter. The
    #         operator must have at least two predicates, and an object must match all of the predicates in order for
    #         the filter to apply.</p>
    #   @return [Types::IntelligentTieringAndOperator]
    class IntelligentTieringFilter < Struct.new(
      nil,
      :prefix,
      :tag,
      :and,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The annotation name you provided is invalid.</p>
    class InvalidAnnotationName < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Object is archived and inaccessible until restored.</p>
    #          <p>If the object you are retrieving is stored in the S3 Glacier Flexible Retrieval storage class, the
    #       S3 Glacier Deep Archive storage class, the S3 Intelligent-Tiering Archive Access tier, or the
    #       S3 Intelligent-Tiering Deep Archive Access tier, before you can retrieve the object you must first restore a copy
    #       using <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_RestoreObject.html">RestoreObject</a>. Otherwise, this operation returns an <code>InvalidObjectState</code> error. For
    #       information about restoring archived objects, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/restoring-objects.html">Restoring Archived Objects</a> in the
    #         <i>Amazon S3 User Guide</i>.</p>
    # @!attribute storage_class
    #   @return [String]
    # @!attribute access_tier
    #   @return [String]
    class InvalidObjectState < Struct.new(
      nil,
      :storage_class,
      :access_tier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The annotation prefix you provided is invalid.</p>
    class InvalidPrefix < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A parameter or header in your request isn't valid. For details, see the description of this API
    #       operation.</p>
    class InvalidRequest < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The write offset value that you specified does not match the current object size. </p>
    class InvalidWriteOffset < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the S3 Inventory configuration for an Amazon S3 bucket. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/RESTBucketGETInventoryConfig.html">GET Bucket
    #         inventory</a> in the <i>Amazon S3 API Reference</i>. </p>
    # @!attribute destination
    #   <p>Contains information about where to publish the inventory results.</p>
    #   @return [Types::InventoryDestination]
    # @!attribute is_enabled
    #   <p>Specifies whether the inventory is enabled or disabled. If set to <code>True</code>, an inventory
    #         list is generated. If set to <code>False</code>, no inventory list is generated.</p>
    #   @return [Boolean]
    # @!attribute filter
    #   <p>Specifies an inventory filter. The inventory only includes objects that meet the filter's
    #         criteria.</p>
    #   @return [Types::InventoryFilter]
    # @!attribute id
    #   <p>The ID used to identify the inventory configuration.</p>
    #   @return [String]
    # @!attribute included_object_versions
    #   <p>Object versions to include in the inventory list. If set to <code>All</code>, the list includes all
    #         the object versions, which adds the version-related fields <code>VersionId</code>,
    #         <code>IsLatest</code>, and <code>DeleteMarker</code> to the list. If set to <code>Current</code>, the
    #         list does not contain these version-related fields.</p>
    #   @return [String]
    # @!attribute optional_fields
    #   <p>Contains the optional fields that are included in the inventory results.</p>
    #            <note>
    #               <p>The following optional fields are supported for directory buckets <code>Size | LastModifiedDate | StorageClass | ETag | IsMultipartUploaded |
    #         EncryptionStatus | BucketKeyStatus | ChecksumAlgorithm | LifecycleExpirationDate.</code> Throws MalformedXML error if unsupported optional field is provided. </p>
    #            </note>
    #   @return [Array<String>]
    # @!attribute schedule
    #   <p>Specifies the schedule for generating inventory results.</p>
    #   @return [Types::InventorySchedule]
    class InventoryConfiguration < Struct.new(
      nil,
      :destination,
      :is_enabled,
      :filter,
      :id,
      :included_object_versions,
      :optional_fields,
      :schedule,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the S3 Inventory configuration for an Amazon S3 bucket.</p>
    # @!attribute s3_bucket_destination
    #   <p>Contains the bucket name, file format, bucket owner (optional), and prefix (optional) where
    #         inventory results are published.</p>
    #   @return [Types::InventoryS3BucketDestination]
    class InventoryDestination < Struct.new(
      nil,
      :s3_bucket_destination,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the type of server-side encryption used to encrypt the S3 Inventory results.</p>
    # @!attribute sses3
    #   <p>Specifies the use of SSE-S3 to encrypt delivered inventory reports.</p>
    #   @return [Types::SSES3]
    # @!attribute ssekms
    #   <p>Specifies the use of SSE-KMS to encrypt delivered inventory reports.</p>
    #   @return [Types::SSEKMS]
    class InventoryEncryption < Struct.new(
      nil,
      :sses3,
      :ssekms,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies an S3 Inventory filter. The inventory only includes objects that meet the filter's
    #       criteria.</p>
    # @!attribute prefix
    #   <p>The prefix that an object must have to be included in the inventory results.</p>
    #   @return [String]
    class InventoryFilter < Struct.new(
      nil,
      :prefix,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the bucket name, file format, bucket owner (optional), and prefix (optional) where
    #       S3 Inventory results are published.</p>
    # @!attribute account_id
    #   <p>The account ID that owns the destination S3 bucket. If no account ID is provided, the owner is not
    #         validated before exporting data. </p>
    #            <note>
    #               <p> Although this value is optional, we strongly recommend that you set it to help prevent problems
    #           if the destination bucket ownership changes. </p>
    #            </note>
    #   @return [String]
    # @!attribute bucket
    #   <p>The Amazon Resource Name (ARN) of the bucket where inventory results will be published.</p>
    #   @return [String]
    # @!attribute format
    #   <p>Specifies the output format of the inventory results.</p>
    #   @return [String]
    # @!attribute prefix
    #   <p>The prefix that is prepended to all inventory results.</p>
    #   @return [String]
    # @!attribute encryption
    #   <p>Contains the type of server-side encryption used to encrypt the inventory results.</p>
    #   @return [Types::InventoryEncryption]
    class InventoryS3BucketDestination < Struct.new(
      nil,
      :account_id,
      :bucket,
      :format,
      :prefix,
      :encryption,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the schedule for generating S3 Inventory results.</p>
    # @!attribute frequency
    #   <p>Specifies how frequently inventory results are produced.</p>
    #   @return [String]
    class InventorySchedule < Struct.new(
      nil,
      :frequency,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #       The inventory table configuration for an S3 Metadata configuration.
    #     </p>
    # @!attribute configuration_state
    #   <p>
    #         The configuration state of the inventory table, indicating whether the inventory table is enabled
    #         or disabled.
    #       </p>
    #   @return [String]
    # @!attribute encryption_configuration
    #   <p>
    #         The encryption configuration for the inventory table.
    #       </p>
    #   @return [Types::MetadataTableEncryptionConfiguration]
    class InventoryTableConfiguration < Struct.new(
      nil,
      :configuration_state,
      :encryption_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #       The inventory table configuration for an S3 Metadata configuration.
    #     </p>
    # @!attribute configuration_state
    #   <p>
    #         The configuration state of the inventory table, indicating whether the inventory table is enabled
    #         or disabled.
    #       </p>
    #   @return [String]
    # @!attribute table_status
    #   <p> The status of the inventory table. The status values are: </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CREATING</code> - The inventory table is in the process of being created in the specified
    #             Amazon Web Services managed table bucket.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>BACKFILLING</code> - The inventory table is in the process of being backfilled. When
    #             you enable the inventory table for your metadata configuration, the table goes through a
    #             process known as backfilling, during which Amazon S3 scans your general purpose bucket to retrieve
    #             the initial metadata for all objects in the bucket. Depending on the number of objects in your
    #             bucket, this process can take several hours. When the backfilling process is finished, the
    #             status of your inventory table changes from <code>BACKFILLING</code> to <code>ACTIVE</code>.
    #             After backfilling is completed, updates to your objects are reflected in the inventory table
    #             within one hour.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ACTIVE</code> - The inventory table has been created successfully, and records are being
    #             delivered to the table. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FAILED</code> - Amazon S3 is unable to create the inventory table, or Amazon S3 is unable to deliver
    #             records.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute error
    #   <p> If an S3 Metadata V1 <code>CreateBucketMetadataTableConfiguration</code> or V2
    #         <code>CreateBucketMetadataConfiguration</code> request succeeds, but S3 Metadata was
    #         unable to create the table, this structure contains the error code and error message. </p>
    #            <note>
    #               <p>If you created your S3 Metadata configuration before July 15, 2025, we recommend that you delete
    #           and re-create your configuration by using <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateBucketMetadataConfiguration.html">CreateBucketMetadataConfiguration</a> so that you can expire journal table records and create
    #           a live inventory table.</p>
    #            </note>
    #   @return [Types::ErrorDetails]
    # @!attribute table_name
    #   <p>
    #         The name of the inventory table.
    #       </p>
    #   @return [String]
    # @!attribute table_arn
    #   <p>
    #         The Amazon Resource Name (ARN) for the inventory table.
    #       </p>
    #   @return [String]
    class InventoryTableConfigurationResult < Struct.new(
      nil,
      :configuration_state,
      :table_status,
      :error,
      :table_name,
      :table_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #       The specified updates to the S3 Metadata inventory table configuration.
    #     </p>
    # @!attribute configuration_state
    #   <p>
    #         The configuration state of the inventory table, indicating whether the inventory table is enabled
    #         or disabled.
    #       </p>
    #   @return [String]
    # @!attribute encryption_configuration
    #   <p>
    #         The encryption configuration for the inventory table.
    #       </p>
    #   @return [Types::MetadataTableEncryptionConfiguration]
    class InventoryTableConfigurationUpdates < Struct.new(
      nil,
      :configuration_state,
      :encryption_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies JSON as object's input serialization format.</p>
    # @!attribute type
    #   <p>The type of JSON. Valid values: Document, Lines.</p>
    #   @return [String]
    class JSONInput < Struct.new(
      nil,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies JSON as request's output serialization format.</p>
    # @!attribute record_delimiter
    #   <p>The value used to separate individual records in the output. If no value is specified, Amazon S3 uses a
    #         newline character ('\n').</p>
    #   @return [String]
    class JSONOutput < Struct.new(
      nil,
      :record_delimiter,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #       The journal table configuration for an S3 Metadata configuration.
    #     </p>
    # @!attribute record_expiration
    #   <p>
    #         The journal table record expiration settings for the journal table.
    #       </p>
    #   @return [Types::RecordExpiration]
    # @!attribute encryption_configuration
    #   <p>
    #         The encryption configuration for the journal table.
    #       </p>
    #   @return [Types::MetadataTableEncryptionConfiguration]
    class JournalTableConfiguration < Struct.new(
      nil,
      :record_expiration,
      :encryption_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #       The journal table configuration for the S3 Metadata configuration.
    #     </p>
    # @!attribute table_status
    #   <p> The status of the journal table. The status values are: </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CREATING</code> - The journal table is in the process of being created in the specified
    #             table bucket.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ACTIVE</code> - The journal table has been created successfully, and records are being
    #             delivered to the table. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FAILED</code> - Amazon S3 is unable to create the journal table, or Amazon S3 is unable to deliver
    #             records.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute error
    #   <p> If an S3 Metadata V1 <code>CreateBucketMetadataTableConfiguration</code> or V2
    #         <code>CreateBucketMetadataConfiguration</code> request succeeds, but S3 Metadata was
    #         unable to create the table, this structure contains the error code and error message. </p>
    #            <note>
    #               <p>If you created your S3 Metadata configuration before July 15, 2025, we recommend that you delete
    #           and re-create your configuration by using <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateBucketMetadataConfiguration.html">CreateBucketMetadataConfiguration</a> so that you can expire journal table records and create
    #           a live inventory table.</p>
    #            </note>
    #   @return [Types::ErrorDetails]
    # @!attribute table_name
    #   <p>
    #         The name of the journal table.
    #       </p>
    #   @return [String]
    # @!attribute table_arn
    #   <p>
    #         The Amazon Resource Name (ARN) for the journal table.
    #       </p>
    #   @return [String]
    # @!attribute record_expiration
    #   <p>
    #         The journal table record expiration settings for the journal table.
    #       </p>
    #   @return [Types::RecordExpiration]
    class JournalTableConfigurationResult < Struct.new(
      nil,
      :table_status,
      :error,
      :table_name,
      :table_arn,
      :record_expiration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #       The specified updates to the S3 Metadata journal table configuration.
    #     </p>
    # @!attribute record_expiration
    #   <p>
    #         The journal table record expiration settings for the journal table.
    #       </p>
    #   @return [Types::RecordExpiration]
    class JournalTableConfigurationUpdates < Struct.new(
      nil,
      :record_expiration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A container for specifying the configuration for Lambda notifications.</p>
    # @!attribute id
    #   <p>An optional unique identifier for configurations in a notification configuration. If you don't
    #         provide one, Amazon S3 will assign an ID.</p>
    #   @return [String]
    # @!attribute lambda_function_arn
    #   <p>The Amazon Resource Name (ARN) of the Lambda function that Amazon S3 invokes when the specified event
    #         type occurs.</p>
    #   @return [String]
    # @!attribute events
    #   <p>The Amazon S3 bucket event for which to invoke the Lambda function. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/NotificationHowTo.html">Supported Event Types</a> in
    #         the <i>Amazon S3 User Guide</i>.</p>
    #   @return [Array<String>]
    # @!attribute filter
    #   <p>Specifies object key name filtering rules. For information about key name filtering, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/notification-how-to-filtering.html">Configuring
    #           event notifications using object key name filtering</a> in the
    #           <i>Amazon S3 User Guide</i>.</p>
    #   @return [Types::NotificationConfigurationFilter]
    class LambdaFunctionConfiguration < Struct.new(
      nil,
      :id,
      :lambda_function_arn,
      :events,
      :filter,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for the expiration for the lifecycle of the object.</p>
    #          <p>For more information see, <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-lifecycle-mgmt.html">Managing your storage lifecycle</a> in
    #       the <i>Amazon S3 User Guide</i>.</p>
    # @!attribute date
    #   <p>Indicates at what date the object is to be moved or deleted. The date value must conform to the ISO
    #         8601 format. The time is always midnight UTC.</p>
    #            <note>
    #               <p>This parameter applies to general purpose buckets only. It is not supported for directory bucket
    #           lifecycle configurations.</p>
    #            </note>
    #   @return [Time]
    # @!attribute days
    #   <p>Indicates the lifetime, in days, of the objects that are subject to the rule. The value must be a
    #         non-zero positive integer.</p>
    #   @return [Integer]
    # @!attribute expired_object_delete_marker
    #   <p>Indicates whether Amazon S3 will remove a delete marker with no noncurrent versions. If set to true, the
    #         delete marker will be expired; if set to false the policy takes no action. This cannot be specified with
    #         Days or Date in a Lifecycle Expiration Policy.</p>
    #            <note>
    #               <p>This parameter applies to general purpose buckets only. It is not supported for directory bucket
    #           lifecycle configurations.</p>
    #            </note>
    #   @return [Boolean]
    class LifecycleExpiration < Struct.new(
      nil,
      :date,
      :days,
      :expired_object_delete_marker,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A lifecycle rule for individual objects in an Amazon S3 bucket.</p>
    #          <p>For more information see, <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-lifecycle-mgmt.html">Managing your storage lifecycle</a> in
    #       the <i>Amazon S3 User Guide</i>.</p>
    # @!attribute expiration
    #   <p>Specifies the expiration for the lifecycle of the object in the form of date, days and, whether the
    #         object has a delete marker.</p>
    #   @return [Types::LifecycleExpiration]
    # @!attribute id
    #   <p>Unique identifier for the rule. The value cannot be longer than 255 characters.</p>
    #   @return [String]
    # @!attribute prefix
    #   <p> The general purpose bucket prefix that identifies one or more objects to which the rule applies. We recommend using <code>Filter</code> instead of <code>Prefix</code> for new PUTs. Previous configurations where a prefix is defined will continue to operate as before.</p>
    #            <important>
    #               <p>Replacement must be made for object keys containing special characters (such as carriage returns) when using
    #            XML requests. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-keys.html#object-key-xml-related-constraints">
    #               XML related object key constraints</a>.</p>
    #            </important>
    #   @deprecated
    #   @return [String]
    # @!attribute filter
    #   <p>The <code>Filter</code> is used to identify objects that a Lifecycle Rule applies to. A
    #           <code>Filter</code> must have exactly one of <code>Prefix</code>, <code>Tag</code>,
    #           <code>ObjectSizeGreaterThan</code>, <code>ObjectSizeLessThan</code>, or <code>And</code> specified.
    #           <code>Filter</code> is required if the <code>LifecycleRule</code> does not contain a
    #           <code>Prefix</code> element.</p>
    #            <p>For more information about <code>Tag</code> filters, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/intro-lifecycle-filters.html">Adding filters to Lifecycle rules</a>
    #         in the <i>Amazon S3 User Guide</i>.</p>
    #            <note>
    #               <p>
    #                  <code>Tag</code> filters are not supported for directory buckets.</p>
    #            </note>
    #   @return [Types::LifecycleRuleFilter]
    # @!attribute status
    #   <p>If 'Enabled', the rule is currently being applied. If 'Disabled', the rule is not currently being
    #         applied.</p>
    #   @return [String]
    # @!attribute transitions
    #   <p>Specifies when an Amazon S3 object transitions to a specified storage class.</p>
    #            <note>
    #               <p>This parameter applies to general purpose buckets only. It is not supported for directory bucket
    #           lifecycle configurations.</p>
    #            </note>
    #   @return [Array<Types::Transition>]
    # @!attribute noncurrent_version_transitions
    #   <p>Specifies the transition rule for the lifecycle rule that describes when noncurrent objects
    #         transition to a specific storage class. If your bucket is versioning-enabled (or versioning is
    #         suspended), you can set this action to request that Amazon S3 transition noncurrent object versions to a
    #         specific storage class at a set period in the object's lifetime.</p>
    #            <note>
    #               <p>This parameter applies to general purpose buckets only. It is not supported for directory bucket
    #           lifecycle configurations.</p>
    #            </note>
    #   @return [Array<Types::NoncurrentVersionTransition>]
    # @!attribute noncurrent_version_expiration
    #   <p>Specifies when noncurrent object versions expire. Upon expiration, Amazon S3 permanently deletes the
    #         noncurrent object versions. You set this lifecycle configuration action on a bucket that has versioning
    #         enabled (or suspended) to request that Amazon S3 delete noncurrent object versions at a specific period in
    #         the object's lifetime.</p>
    #            <note>
    #               <p>This parameter applies to general purpose buckets only. It is not supported for directory bucket
    #           lifecycle configurations.</p>
    #            </note>
    #   @return [Types::NoncurrentVersionExpiration]
    # @!attribute abort_incomplete_multipart_upload
    #   <p>Specifies the days since the initiation of an incomplete multipart upload that Amazon S3 will wait before
    #         permanently removing all parts of the upload. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuoverview.html#mpu-abort-incomplete-mpu-lifecycle-config"> Aborting
    #           Incomplete Multipart Uploads Using a Bucket Lifecycle Configuration</a> in the
    #           <i>Amazon S3 User Guide</i>.</p>
    #   @return [Types::AbortIncompleteMultipartUpload]
    class LifecycleRule < Struct.new(
      nil,
      :expiration,
      :id,
      :prefix,
      :filter,
      :status,
      :transitions,
      :noncurrent_version_transitions,
      :noncurrent_version_expiration,
      :abort_incomplete_multipart_upload,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>This is used in a Lifecycle Rule Filter to apply a logical AND to two or more predicates. The
    #       Lifecycle Rule will apply to any object matching all of the predicates configured inside the And
    #       operator.</p>
    # @!attribute prefix
    #   <p>Prefix identifying one or more objects to which the rule applies.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>All of these tags must exist in the object's tag set in order for the rule to apply.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute object_size_greater_than
    #   <p>Minimum object size to which the rule applies.</p>
    #   @return [Integer]
    # @!attribute object_size_less_than
    #   <p>Maximum object size to which the rule applies.</p>
    #   @return [Integer]
    class LifecycleRuleAndOperator < Struct.new(
      nil,
      :prefix,
      :tags,
      :object_size_greater_than,
      :object_size_less_than,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The <code>Filter</code> is used to identify objects that a Lifecycle Rule applies to. A
    #         <code>Filter</code> can have exactly one of <code>Prefix</code>, <code>Tag</code>,
    #         <code>ObjectSizeGreaterThan</code>, <code>ObjectSizeLessThan</code>, or <code>And</code> specified. If
    #       the <code>Filter</code> element is left empty, the Lifecycle Rule applies to all objects in the
    #       bucket.</p>
    # @!attribute prefix
    #   <p>Prefix identifying one or more objects to which the rule applies.</p>
    #            <important>
    #               <p>Replacement must be made for object keys containing special characters (such as carriage returns) when using
    #            XML requests. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-keys.html#object-key-xml-related-constraints">
    #               XML related object key constraints</a>.</p>
    #            </important>
    #   @return [String]
    # @!attribute tag
    #   <p>This tag must exist in the object's tag set in order for the rule to apply.</p>
    #            <note>
    #               <p>This parameter applies to general purpose buckets only. It is not supported for directory bucket
    #           lifecycle configurations.</p>
    #            </note>
    #   @return [Types::Tag]
    # @!attribute object_size_greater_than
    #   <p>Minimum object size to which the rule applies.</p>
    #   @return [Integer]
    # @!attribute object_size_less_than
    #   <p>Maximum object size to which the rule applies.</p>
    #   @return [Integer]
    # @!attribute and
    #   <p>This is used in a Lifecycle Rule Filter to apply a logical AND to two or more predicates. The
    #         Lifecycle Rule will apply to any object matching all of the predicates configured inside the And
    #         operator.</p>
    #   @return [Types::LifecycleRuleAndOperator]
    class LifecycleRuleFilter < Struct.new(
      nil,
      :prefix,
      :tag,
      :object_size_greater_than,
      :object_size_less_than,
      :and,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute is_truncated
    #   <p>Indicates whether the returned list of analytics configurations is complete. A value of true
    #         indicates that the list is not complete and the NextContinuationToken will be provided for a subsequent
    #         request.</p>
    #   @return [Boolean]
    # @!attribute continuation_token
    #   <p>The marker that is used as a starting point for this analytics configuration list response. This
    #         value is present if it was sent in the request.</p>
    #   @return [String]
    # @!attribute next_continuation_token
    #   <p>
    #               <code>NextContinuationToken</code> is sent when <code>isTruncated</code> is true, which indicates
    #         that there are more analytics configurations to list. The next request must include this
    #           <code>NextContinuationToken</code>. The token is obfuscated and is not a usable value.</p>
    #   @return [String]
    # @!attribute analytics_configuration_list
    #   <p>The list of analytics configurations for a bucket.</p>
    #   @return [Array<Types::AnalyticsConfiguration>]
    class ListBucketAnalyticsConfigurationsOutput < Struct.new(
      nil,
      :is_truncated,
      :continuation_token,
      :next_continuation_token,
      :analytics_configuration_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bucket
    #   <p>The name of the bucket from which analytics configurations are retrieved.</p>
    #   @return [String]
    # @!attribute continuation_token
    #   <p>The <code>ContinuationToken</code> that represents a placeholder from where this request should
    #         begin.</p>
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    class ListBucketAnalyticsConfigurationsRequest < Struct.new(
      nil,
      :bucket,
      :continuation_token,
      :expected_bucket_owner,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute is_truncated
    #   <p>Indicates whether the returned list of analytics configurations is complete. A value of
    #           <code>true</code> indicates that the list is not complete and the <code>NextContinuationToken</code>
    #         will be provided for a subsequent request.</p>
    #   @return [Boolean]
    # @!attribute continuation_token
    #   <p>The <code>ContinuationToken</code> that represents a placeholder from where this request should
    #         begin.</p>
    #   @return [String]
    # @!attribute next_continuation_token
    #   <p>The marker used to continue this inventory configuration listing. Use the
    #           <code>NextContinuationToken</code> from this response to continue the listing in a subsequent request.
    #         The continuation token is an opaque value that Amazon S3 understands.</p>
    #   @return [String]
    # @!attribute intelligent_tiering_configuration_list
    #   <p>The list of S3 Intelligent-Tiering configurations for a bucket.</p>
    #   @return [Array<Types::IntelligentTieringConfiguration>]
    class ListBucketIntelligentTieringConfigurationsOutput < Struct.new(
      nil,
      :is_truncated,
      :continuation_token,
      :next_continuation_token,
      :intelligent_tiering_configuration_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bucket
    #   <p>The name of the Amazon S3 bucket whose configuration you want to modify or retrieve.</p>
    #   @return [String]
    # @!attribute continuation_token
    #   <p>The <code>ContinuationToken</code> that represents a placeholder from where this request should
    #         begin.</p>
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    class ListBucketIntelligentTieringConfigurationsRequest < Struct.new(
      nil,
      :bucket,
      :continuation_token,
      :expected_bucket_owner,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute continuation_token
    #   <p>If sent in the request, the marker that is used as a starting point for this inventory configuration
    #         list response.</p>
    #   @return [String]
    # @!attribute inventory_configuration_list
    #   <p>The list of inventory configurations for a bucket.</p>
    #   @return [Array<Types::InventoryConfiguration>]
    # @!attribute is_truncated
    #   <p>Tells whether the returned list of inventory configurations is complete. A value of true indicates
    #         that the list is not complete and the NextContinuationToken is provided for a subsequent request.</p>
    #   @return [Boolean]
    # @!attribute next_continuation_token
    #   <p>The marker used to continue this inventory configuration listing. Use the
    #           <code>NextContinuationToken</code> from this response to continue the listing in a subsequent request.
    #         The continuation token is an opaque value that Amazon S3 understands.</p>
    #   @return [String]
    class ListBucketInventoryConfigurationsOutput < Struct.new(
      nil,
      :continuation_token,
      :inventory_configuration_list,
      :is_truncated,
      :next_continuation_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bucket
    #   <p>The name of the bucket containing the inventory configurations to retrieve.</p>
    #            <p>
    #               <b>Directory buckets </b> - When you use this operation with a directory bucket, you must use path-style requests in the format <code>https://s3express-control.<i>region-code</i>.amazonaws.com/<i>bucket-name</i>
    #               </code>. Virtual-hosted-style requests aren't supported. Directory bucket names must be unique in the chosen Zone (Availability Zone or Local Zone). Bucket names must also follow the format <code>
    #                  <i>bucket-base-name</i>--<i>zone-id</i>--x-s3</code> (for example, <code>
    #                  <i>DOC-EXAMPLE-BUCKET</i>--<i>usw2-az1</i>--x-s3</code>). For information about bucket naming restrictions, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/directory-bucket-naming-rules.html">Directory bucket naming rules</a> in the <i>Amazon S3 User Guide</i>
    #            </p>
    #   @return [String]
    # @!attribute continuation_token
    #   <p>The marker used to continue an inventory configuration listing that has been truncated. Use the
    #           <code>NextContinuationToken</code> from a previously truncated list response to continue the listing.
    #         The continuation token is an opaque value that Amazon S3 understands.</p>
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #            <note>
    #               <p>For directory buckets, this header is not supported in this API operation. If you specify this header, the request fails with the HTTP status code
    #   <code>501 Not Implemented</code>.</p>
    #            </note>
    #   @return [String]
    class ListBucketInventoryConfigurationsRequest < Struct.new(
      nil,
      :bucket,
      :continuation_token,
      :expected_bucket_owner,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute is_truncated
    #   <p>Indicates whether the returned list of metrics configurations is complete. A value of true indicates
    #         that the list is not complete and the NextContinuationToken will be provided for a subsequent
    #         request.</p>
    #   @return [Boolean]
    # @!attribute continuation_token
    #   <p>The marker that is used as a starting point for this metrics configuration list response. This value
    #         is present if it was sent in the request.</p>
    #   @return [String]
    # @!attribute next_continuation_token
    #   <p>The marker used to continue a metrics configuration listing that has been truncated. Use the
    #           <code>NextContinuationToken</code> from a previously truncated list response to continue the listing.
    #         The continuation token is an opaque value that Amazon S3 understands.</p>
    #   @return [String]
    # @!attribute metrics_configuration_list
    #   <p>The list of metrics configurations for a bucket.</p>
    #   @return [Array<Types::MetricsConfiguration>]
    class ListBucketMetricsConfigurationsOutput < Struct.new(
      nil,
      :is_truncated,
      :continuation_token,
      :next_continuation_token,
      :metrics_configuration_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bucket
    #   <p>The name of the bucket containing the metrics configurations to retrieve.</p>
    #            <p>
    #               <b>Directory buckets </b> - When you use this operation with a directory bucket, you must use path-style requests in the format <code>https://s3express-control.<i>region-code</i>.amazonaws.com/<i>bucket-name</i>
    #               </code>. Virtual-hosted-style requests aren't supported. Directory bucket names must be unique in the chosen Zone (Availability Zone or Local Zone). Bucket names must also follow the format <code>
    #                  <i>bucket-base-name</i>--<i>zone-id</i>--x-s3</code> (for example, <code>
    #                  <i>DOC-EXAMPLE-BUCKET</i>--<i>usw2-az1</i>--x-s3</code>). For information about bucket naming restrictions, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/directory-bucket-naming-rules.html">Directory bucket naming rules</a> in the <i>Amazon S3 User Guide</i>
    #            </p>
    #   @return [String]
    # @!attribute continuation_token
    #   <p>The marker that is used to continue a metrics configuration listing that has been truncated. Use the
    #           <code>NextContinuationToken</code> from a previously truncated list response to continue the listing.
    #         The continuation token is an opaque value that Amazon S3 understands.</p>
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #            <note>
    #               <p>For directory buckets, this header is not supported in this API operation. If you specify this header, the request fails with the HTTP status code
    #   <code>501 Not Implemented</code>.</p>
    #            </note>
    #   @return [String]
    class ListBucketMetricsConfigurationsRequest < Struct.new(
      nil,
      :bucket,
      :continuation_token,
      :expected_bucket_owner,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute buckets
    #   <p>The list of buckets owned by the requester.</p>
    #   @return [Array<Types::Bucket>]
    # @!attribute owner
    #   <p>The owner of the buckets listed.</p>
    #   @return [Types::Owner]
    # @!attribute continuation_token
    #   <p>
    #               <code>ContinuationToken</code> is included in the response when there are more buckets that can be
    #         listed with pagination. The next <code>ListBuckets</code> request to Amazon S3 can be continued with this
    #           <code>ContinuationToken</code>. <code>ContinuationToken</code> is obfuscated and is not a real
    #         bucket.</p>
    #   @return [String]
    # @!attribute prefix
    #   <p>If <code>Prefix</code> was sent with the request, it is included in the response.</p>
    #            <p>All bucket names in the response begin with the specified bucket name prefix.</p>
    #   @return [String]
    class ListBucketsOutput < Struct.new(
      nil,
      :buckets,
      :owner,
      :continuation_token,
      :prefix,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_buckets
    #   <p>Maximum number of buckets to be returned in response. When the number is more than the count of
    #         buckets that are owned by an Amazon Web Services account, return all the buckets in response.</p>
    #   @return [Integer]
    # @!attribute continuation_token
    #   <p>
    #               <code>ContinuationToken</code> indicates to Amazon S3 that the list is being continued on this bucket
    #         with a token. <code>ContinuationToken</code> is obfuscated and is not a real key. You can use this
    #           <code>ContinuationToken</code> for pagination of the list results. </p>
    #            <p>Length Constraints: Minimum length of 0. Maximum length of 1024.</p>
    #            <p>Required: No.</p>
    #            <note>
    #               <p>If you specify the <code>bucket-region</code>, <code>prefix</code>, or
    #             <code>continuation-token</code> query parameters without using <code>max-buckets</code> to set the
    #           maximum number of buckets returned in the response, Amazon S3 applies a default page size of 10,000 and
    #           provides a continuation token if there are more buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute prefix
    #   <p>Limits the response to bucket names that begin with the specified bucket name prefix.</p>
    #   @return [String]
    # @!attribute bucket_region
    #   <p>Limits the response to buckets that are located in the specified Amazon Web Services Region. The Amazon Web Services Region must
    #         be expressed according to the Amazon Web Services Region code, such as <code>us-west-2</code> for the US West (Oregon)
    #         Region. For a list of the valid values for all of the Amazon Web Services Regions, see <a href="https://docs.aws.amazon.com/general/latest/gr/rande.html#s3_region">Regions and Endpoints</a>.</p>
    #            <note>
    #               <p>Requests made to a Regional endpoint that is different from the <code>bucket-region</code>
    #           parameter are not supported. For example, if you want to limit the response to your buckets in Region
    #             <code>us-west-2</code>, the request must be made to an endpoint in Region
    #           <code>us-west-2</code>.</p>
    #            </note>
    #   @return [String]
    class ListBucketsRequest < Struct.new(
      nil,
      :max_buckets,
      :continuation_token,
      :prefix,
      :bucket_region,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute buckets
    #   <p>The list of buckets owned by the requester. </p>
    #   @return [Array<Types::Bucket>]
    # @!attribute continuation_token
    #   <p>If <code>ContinuationToken</code> was sent with the request, it is included in the response. You can
    #         use the returned <code>ContinuationToken</code> for pagination of the list response.</p>
    #   @return [String]
    class ListDirectoryBucketsOutput < Struct.new(
      nil,
      :buckets,
      :continuation_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute continuation_token
    #   <p>
    #               <code>ContinuationToken</code> indicates to Amazon S3 that the list is being continued on buckets in this
    #         account with a token. <code>ContinuationToken</code> is obfuscated and is not a real bucket name. You
    #         can use this <code>ContinuationToken</code> for the pagination of the list results. </p>
    #   @return [String]
    # @!attribute max_directory_buckets
    #   <p>Maximum number of buckets to be returned in response. When the number is more than the count of
    #         buckets that are owned by an Amazon Web Services account, return all the buckets in response.</p>
    #   @return [Integer]
    class ListDirectoryBucketsRequest < Struct.new(
      nil,
      :continuation_token,
      :max_directory_buckets,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bucket
    #   <p>The name of the bucket to which the multipart upload was initiated. Does not return the access point ARN or
    #         access point alias if used.</p>
    #   @return [String]
    # @!attribute key_marker
    #   <p>The key at or after which the listing began.</p>
    #   @return [String]
    # @!attribute upload_id_marker
    #   <p>Together with key-marker, specifies the multipart upload after which listing should begin. If
    #         key-marker is not specified, the upload-id-marker parameter is ignored. Otherwise, any multipart uploads
    #         for a key equal to the key-marker might be included in the list only if they have an upload ID
    #         lexicographically greater than the specified <code>upload-id-marker</code>.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute next_key_marker
    #   <p>When a list is truncated, this element specifies the value that should be used for the key-marker
    #         request parameter in a subsequent request.</p>
    #   @return [String]
    # @!attribute prefix
    #   <p>When a prefix is provided in the request, this field contains the specified prefix. The result
    #         contains only keys starting with the specified prefix.</p>
    #            <note>
    #               <p>
    #                  <b>Directory buckets</b> - For directory buckets, only prefixes that end in a delimiter (<code>/</code>) are supported.</p>
    #            </note>
    #   @return [String]
    # @!attribute delimiter
    #   <p>Contains the delimiter you specified in the request. If you don't specify a delimiter in your
    #         request, this element is absent from the response.</p>
    #            <note>
    #               <p>
    #                  <b>Directory buckets</b> - For directory buckets, <code>/</code> is the only supported delimiter.</p>
    #            </note>
    #   @return [String]
    # @!attribute next_upload_id_marker
    #   <p>When a list is truncated, this element specifies the value that should be used for the
    #           <code>upload-id-marker</code> request parameter in a subsequent request.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute max_uploads
    #   <p>Maximum number of multipart uploads that could have been included in the response.</p>
    #   @return [Integer]
    # @!attribute is_truncated
    #   <p>Indicates whether the returned list of multipart uploads is truncated. A value of true indicates
    #         that the list was truncated. The list can be truncated if the number of multipart uploads exceeds the
    #         limit allowed or specified by max uploads.</p>
    #   @return [Boolean]
    # @!attribute uploads
    #   <p>Container for elements related to a particular multipart upload. A response can contain zero or more
    #           <code>Upload</code> elements.</p>
    #   @return [Array<Types::MultipartUpload>]
    # @!attribute common_prefixes
    #   <p>If you specify a delimiter in the request, then the result returns each distinct key prefix
    #         containing the delimiter in a <code>CommonPrefixes</code> element. The distinct key prefixes are
    #         returned in the <code>Prefix</code> child element.</p>
    #            <note>
    #               <p>
    #                  <b>Directory buckets</b> - For directory buckets, only prefixes that end in a delimiter (<code>/</code>) are supported.</p>
    #            </note>
    #   @return [Array<Types::CommonPrefix>]
    # @!attribute encoding_type
    #   <p>Encoding type used by Amazon S3 to encode object keys in the response.</p>
    #            <p>If you specify the <code>encoding-type</code> request parameter, Amazon S3 includes this element in the
    #         response, and returns encoded key name values in the following response elements:</p>
    #            <p>
    #               <code>Delimiter</code>, <code>KeyMarker</code>, <code>Prefix</code>, <code>NextKeyMarker</code>,
    #           <code>Key</code>.</p>
    #   @return [String]
    # @!attribute request_charged
    #   <p>If present, indicates that the requester was successfully charged for the request. For more
    #         information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/RequesterPaysBuckets.html">Using Requester Pays buckets for storage transfers and usage</a> in the <i>Amazon Simple
    #           Storage Service user guide</i>.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    class ListMultipartUploadsOutput < Struct.new(
      nil,
      :bucket,
      :key_marker,
      :upload_id_marker,
      :next_key_marker,
      :prefix,
      :delimiter,
      :next_upload_id_marker,
      :max_uploads,
      :is_truncated,
      :uploads,
      :common_prefixes,
      :encoding_type,
      :request_charged,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bucket
    #   <p>The name of the bucket to which the multipart upload was initiated. </p>
    #            <p>
    #               <b>Directory buckets</b> - When you use this operation with a directory bucket, you must use virtual-hosted-style requests in the format <code>
    #                  <i>Bucket-name</i>.s3express-<i>zone-id</i>.<i>region-code</i>.amazonaws.com</code>. Path-style requests are not supported.  Directory bucket names must be unique in the chosen Zone (Availability Zone or Local Zone). Bucket names must follow the format <code>
    #                  <i>bucket-base-name</i>--<i>zone-id</i>--x-s3</code> (for example, <code>
    #                  <i>amzn-s3-demo-bucket</i>--<i>usw2-az1</i>--x-s3</code>). For information about bucket naming
    #            restrictions, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/directory-bucket-naming-rules.html">Directory bucket naming
    #               rules</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <p>
    #               <b>Access points</b> - When you use this action with an access point for general purpose buckets, you must provide the alias of the access point in place of the bucket name or specify the access point ARN. When you use this action with an access point for directory buckets, you must provide the access point name in place of the bucket name. When using the access point ARN, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <note>
    #               <p>Object Lambda access points are not supported by directory buckets.</p>
    #            </note>
    #            <p>
    #               <b>S3 on Outposts</b> - When you use this action with S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the
    #                        form <code>
    #                  <i>AccessPointName</i>-<i>AccountId</i>.<i>outpostID</i>.s3-outposts.<i>Region</i>.amazonaws.com</code>. When you use this action with S3 on Outposts, the destination bucket must be the Outposts access point ARN or the access point alias. For more information about S3 on Outposts, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html">What is S3 on Outposts?</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute delimiter
    #   <p>Character you use to group keys.</p>
    #            <p>All keys that contain the same string between the prefix, if specified, and the first occurrence of
    #         the delimiter after the prefix are grouped under a single result element, <code>CommonPrefixes</code>.
    #         If you don't specify the prefix parameter, then the substring starts at the beginning of the key. The
    #         keys that are grouped under <code>CommonPrefixes</code> result element are not returned elsewhere in the
    #         response.</p>
    #            <p>
    #               <code>CommonPrefixes</code> is filtered out from results if it is not lexicographically greater than
    #         the key-marker.</p>
    #            <note>
    #               <p>
    #                  <b>Directory buckets</b> - For directory buckets, <code>/</code> is the only supported delimiter.</p>
    #            </note>
    #   @return [String]
    # @!attribute encoding_type
    #   <p>Encoding type used by Amazon S3 to encode the <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-keys.html">object keys</a> in the response. Responses are
    #         encoded only in UTF-8. An object key can contain any Unicode character. However, the XML 1.0 parser
    #         can't parse certain characters, such as characters with an ASCII value from 0 to 10. For characters that
    #         aren't supported in XML 1.0, you can add this parameter to request that Amazon S3 encode the keys in the
    #         response. For more information about characters to avoid in object key names, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-keys.html#object-key-guidelines">Object key
    #           naming guidelines</a>.</p>
    #            <note>
    #               <p>When using the URL encoding type, non-ASCII characters that are used in an object's key name will
    #           be percent-encoded according to UTF-8 code values. For example, the object
    #             <code>test_file(3).png</code> will appear as <code>test_file%283%29.png</code>.</p>
    #            </note>
    #   @return [String]
    # @!attribute key_marker
    #   <p>Specifies the multipart upload after which listing should begin.</p>
    #            <note>
    #               <ul>
    #                  <li>
    #                     <p>
    #                        <b>General purpose buckets</b> - For general purpose buckets,
    #                 <code>key-marker</code> is an object key. Together with <code>upload-id-marker</code>, this
    #               parameter specifies the multipart upload after which listing should begin.</p>
    #                     <p>If <code>upload-id-marker</code> is not specified, only the keys lexicographically greater
    #               than the specified <code>key-marker</code> will be included in the list.</p>
    #                     <p>If <code>upload-id-marker</code> is specified, any multipart uploads for a key equal to the
    #                 <code>key-marker</code> might also be included, provided those multipart uploads have upload IDs
    #               lexicographically greater than the specified <code>upload-id-marker</code>.</p>
    #                  </li>
    #                  <li>
    #                     <p>
    #                        <b>Directory buckets</b> - For directory buckets,
    #                 <code>key-marker</code> is obfuscated and isn't a real object key. The
    #                 <code>upload-id-marker</code> parameter isn't supported by directory buckets. To list the
    #               additional multipart uploads, you only need to set the value of <code>key-marker</code> to the
    #                 <code>NextKeyMarker</code> value from the previous response. </p>
    #                     <p>In the <code>ListMultipartUploads</code> response, the multipart uploads aren't sorted
    #               lexicographically based on the object keys.
    #
    #             </p>
    #                  </li>
    #               </ul>
    #            </note>
    #   @return [String]
    # @!attribute max_uploads
    #   <p>Sets the maximum number of multipart uploads, from 1 to 1,000, to return in the response body. 1,000
    #         is the maximum number of uploads that can be returned in a response.</p>
    #   @return [Integer]
    # @!attribute prefix
    #   <p>Lists in-progress uploads only for those keys that begin with the specified prefix. You can use
    #         prefixes to separate a bucket into different grouping of keys. (You can think of using
    #           <code>prefix</code> to make groups in the same way that you'd use a folder in a file system.)</p>
    #            <note>
    #               <p>
    #                  <b>Directory buckets</b> - For directory buckets, only prefixes that end in a delimiter (<code>/</code>) are supported.</p>
    #            </note>
    #   @return [String]
    # @!attribute upload_id_marker
    #   <p>Together with key-marker, specifies the multipart upload after which listing should begin. If
    #         key-marker is not specified, the upload-id-marker parameter is ignored. Otherwise, any multipart uploads
    #         for a key equal to the key-marker might be included in the list only if they have an upload ID
    #         lexicographically greater than the specified <code>upload-id-marker</code>.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    # @!attribute request_payer
    #   <p>Confirms that the requester knows that they will be charged for the request. Bucket owners need not
    #         specify this parameter in their requests. If either the source or destination S3 bucket has Requester
    #         Pays enabled, the requester will pay for the corresponding charges. For information about
    #         downloading objects from Requester Pays buckets, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html">Downloading Objects in Requester Pays
    #           Buckets</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    class ListMultipartUploadsRequest < Struct.new(
      nil,
      :bucket,
      :delimiter,
      :encoding_type,
      :key_marker,
      :max_uploads,
      :prefix,
      :upload_id_marker,
      :expected_bucket_owner,
      :request_payer,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute annotations
    #   <p>The list of annotations attached to the object.</p>
    #   @return [Array<Types::AnnotationEntry>]
    # @!attribute bucket
    #   <p>The bucket name.</p>
    #   @return [String]
    # @!attribute key
    #   <p>The object key.</p>
    #   @return [String]
    # @!attribute object_version_id
    #   <p>The version ID of the object.</p>
    #   @return [String]
    # @!attribute annotation_prefix
    #   <p>The prefix used to filter the response.</p>
    #   @return [String]
    # @!attribute max_annotation_results
    #   <p>The maximum number of annotations returned in the response.</p>
    #   @return [Integer]
    # @!attribute annotation_count
    #   <p>The number of annotations returned.</p>
    #   @return [Integer]
    # @!attribute continuation_token
    #   <p>The continuation token used in this request.</p>
    #   @return [String]
    # @!attribute next_continuation_token
    #   <p>The continuation token to use to retrieve the next page of results.</p>
    #   @return [String]
    # @!attribute request_charged
    #   <p>If present, indicates that the requester was successfully charged for the request. For more
    #         information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/RequesterPaysBuckets.html">Using Requester Pays buckets for storage transfers and usage</a> in the <i>Amazon Simple
    #           Storage Service user guide</i>.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    class ListObjectAnnotationsOutput < Struct.new(
      nil,
      :annotations,
      :bucket,
      :key,
      :object_version_id,
      :annotation_prefix,
      :max_annotation_results,
      :annotation_count,
      :continuation_token,
      :next_continuation_token,
      :request_charged,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bucket
    #   <p>The name of the bucket that contains the object.</p>
    #   @return [String]
    # @!attribute key
    #   <p>The object key.</p>
    #   @return [String]
    # @!attribute version_id
    #   <p>The version ID of the object.</p>
    #   @return [String]
    # @!attribute max_annotation_results
    #   <p>The maximum number of annotations to return in the response. Maximum is 1,000.</p>
    #   @return [Integer]
    # @!attribute annotation_prefix
    #   <p>Filter results to annotations whose name begins with the specified prefix.</p>
    #   @return [String]
    # @!attribute continuation_token
    #   <p>Continuation token returned by a previous request to retrieve the next page.</p>
    #   @return [String]
    # @!attribute request_payer
    #   <p>Confirms that the requester knows that they will be charged for the request. Bucket owners need not
    #         specify this parameter in their requests. If either the source or destination S3 bucket has Requester
    #         Pays enabled, the requester will pay for the corresponding charges. For information about
    #         downloading objects from Requester Pays buckets, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html">Downloading Objects in Requester Pays
    #           Buckets</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner.</p>
    #   @return [String]
    class ListObjectAnnotationsRequest < Struct.new(
      nil,
      :bucket,
      :key,
      :version_id,
      :max_annotation_results,
      :annotation_prefix,
      :continuation_token,
      :request_payer,
      :expected_bucket_owner,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute is_truncated
    #   <p>A flag that indicates whether Amazon S3 returned all of the results that satisfied the search criteria.
    #         If your results were truncated, you can make a follow-up paginated request by using the
    #           <code>NextKeyMarker</code> and <code>NextVersionIdMarker</code> response parameters as a starting
    #         place in another request to return the rest of the results.</p>
    #   @return [Boolean]
    # @!attribute key_marker
    #   <p>Marks the last key returned in a truncated response.</p>
    #   @return [String]
    # @!attribute version_id_marker
    #   <p>Marks the last version of the key returned in a truncated response.</p>
    #   @return [String]
    # @!attribute next_key_marker
    #   <p>When the number of responses exceeds the value of <code>MaxKeys</code>, <code>NextKeyMarker</code>
    #         specifies the first key not returned that satisfies the search criteria. Use this value for the
    #         key-marker request parameter in a subsequent request.</p>
    #   @return [String]
    # @!attribute next_version_id_marker
    #   <p>When the number of responses exceeds the value of <code>MaxKeys</code>,
    #           <code>NextVersionIdMarker</code> specifies the first object version not returned that satisfies the
    #         search criteria. Use this value for the <code>version-id-marker</code> request parameter in a subsequent
    #         request.</p>
    #   @return [String]
    # @!attribute versions
    #   <p>Container for version information.</p>
    #   @return [Array<Types::ObjectVersion>]
    # @!attribute delete_markers
    #   <p>Container for an object that is a delete marker. To learn more about delete markers, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/DeleteMarker.html">Working with delete
    #           markers</a>.</p>
    #   @return [Array<Types::DeleteMarkerEntry>]
    # @!attribute name
    #   <p>The bucket name.</p>
    #   @return [String]
    # @!attribute prefix
    #   <p>Selects objects that start with the value supplied by this parameter.</p>
    #   @return [String]
    # @!attribute delimiter
    #   <p>The delimiter grouping the included keys. A delimiter is a character that you specify to group keys.
    #         All keys that contain the same string between the prefix and the first occurrence of the delimiter are
    #         grouped under a single result element in <code>CommonPrefixes</code>. These groups are counted as one
    #         result against the <code>max-keys</code> limitation. These keys are not returned elsewhere in the
    #         response.</p>
    #   @return [String]
    # @!attribute max_keys
    #   <p>Specifies the maximum number of objects to return.</p>
    #   @return [Integer]
    # @!attribute common_prefixes
    #   <p>All of the keys rolled up into a common prefix count as a single return when calculating the number
    #         of returns.</p>
    #   @return [Array<Types::CommonPrefix>]
    # @!attribute encoding_type
    #   <p> Encoding type used by Amazon S3 to encode object key names in the XML response.</p>
    #            <p>If you specify the <code>encoding-type</code> request parameter, Amazon S3 includes this element in the
    #         response, and returns encoded key name values in the following response elements:</p>
    #            <p>
    #               <code>KeyMarker, NextKeyMarker, Prefix, Key</code>, and <code>Delimiter</code>.</p>
    #   @return [String]
    # @!attribute request_charged
    #   <p>If present, indicates that the requester was successfully charged for the request. For more
    #         information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/RequesterPaysBuckets.html">Using Requester Pays buckets for storage transfers and usage</a> in the <i>Amazon Simple
    #           Storage Service user guide</i>.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    class ListObjectVersionsOutput < Struct.new(
      nil,
      :is_truncated,
      :key_marker,
      :version_id_marker,
      :next_key_marker,
      :next_version_id_marker,
      :versions,
      :delete_markers,
      :name,
      :prefix,
      :delimiter,
      :max_keys,
      :common_prefixes,
      :encoding_type,
      :request_charged,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bucket
    #   <p>The bucket name that contains the objects. </p>
    #   @return [String]
    # @!attribute delimiter
    #   <p>A delimiter is a character that you specify to group keys. All keys that contain the same string
    #         between the <code>prefix</code> and the first occurrence of the delimiter are grouped under a single
    #         result element in <code>CommonPrefixes</code>. These groups are counted as one result against the
    #           <code>max-keys</code> limitation. These keys are not returned elsewhere in the response.</p>
    #            <p>
    #               <code>CommonPrefixes</code> is filtered out from results if it is not lexicographically greater than
    #         the key-marker.</p>
    #   @return [String]
    # @!attribute encoding_type
    #   <p>Encoding type used by Amazon S3 to encode the <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-keys.html">object keys</a> in the response. Responses are
    #         encoded only in UTF-8. An object key can contain any Unicode character. However, the XML 1.0 parser
    #         can't parse certain characters, such as characters with an ASCII value from 0 to 10. For characters that
    #         aren't supported in XML 1.0, you can add this parameter to request that Amazon S3 encode the keys in the
    #         response. For more information about characters to avoid in object key names, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-keys.html#object-key-guidelines">Object key
    #           naming guidelines</a>.</p>
    #            <note>
    #               <p>When using the URL encoding type, non-ASCII characters that are used in an object's key name will
    #           be percent-encoded according to UTF-8 code values. For example, the object
    #             <code>test_file(3).png</code> will appear as <code>test_file%283%29.png</code>.</p>
    #            </note>
    #   @return [String]
    # @!attribute key_marker
    #   <p>Specifies the key to start with when listing objects in a bucket.</p>
    #   @return [String]
    # @!attribute max_keys
    #   <p>Sets the maximum number of keys returned in the response. By default, the action returns up to 1,000
    #         key names. The response might contain fewer keys but will never contain more. If additional keys satisfy
    #         the search criteria, but were not returned because <code>max-keys</code> was exceeded, the response
    #         contains <code><isTruncated>true</isTruncated></code>. To return the additional keys, see
    #           <code>key-marker</code> and <code>version-id-marker</code>.</p>
    #   @return [Integer]
    # @!attribute prefix
    #   <p>Use this parameter to select only those keys that begin with the specified prefix. You can use
    #         prefixes to separate a bucket into different groupings of keys. (You can think of using
    #           <code>prefix</code> to make groups in the same way that you'd use a folder in a file system.) You can
    #         use <code>prefix</code> with <code>delimiter</code> to roll up numerous objects into a single result
    #         under <code>CommonPrefixes</code>. </p>
    #   @return [String]
    # @!attribute version_id_marker
    #   <p>Specifies the object version you want to start listing from.</p>
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    # @!attribute request_payer
    #   <p>Confirms that the requester knows that they will be charged for the request. Bucket owners need not
    #         specify this parameter in their requests. If either the source or destination S3 bucket has Requester
    #         Pays enabled, the requester will pay for the corresponding charges. For information about
    #         downloading objects from Requester Pays buckets, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html">Downloading Objects in Requester Pays
    #           Buckets</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute optional_object_attributes
    #   <p>Specifies the optional fields that you want returned in the response. Fields that you do not specify
    #         are not returned.</p>
    #   @return [Array<String>]
    class ListObjectVersionsRequest < Struct.new(
      nil,
      :bucket,
      :delimiter,
      :encoding_type,
      :key_marker,
      :max_keys,
      :prefix,
      :version_id_marker,
      :expected_bucket_owner,
      :request_payer,
      :optional_object_attributes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute is_truncated
    #   <p>A flag that indicates whether Amazon S3 returned all of the results that satisfied the search
    #         criteria.</p>
    #   @return [Boolean]
    # @!attribute marker
    #   <p>Indicates where in the bucket listing begins. Marker is included in the response if it was sent with
    #         the request.</p>
    #   @return [String]
    # @!attribute next_marker
    #   <p>When the response is truncated (the <code>IsTruncated</code> element value in the response is
    #           <code>true</code>), you can use the key name in this field as the <code>marker</code> parameter in the
    #         subsequent request to get the next set of objects. Amazon S3 lists objects in alphabetical order. </p>
    #            <note>
    #               <p>This element is returned only if you have the <code>delimiter</code> request parameter specified.
    #           If the response does not include the <code>NextMarker</code> element and it is truncated, you can use
    #           the value of the last <code>Key</code> element in the response as the <code>marker</code> parameter in
    #           the subsequent request to get the next set of object keys.</p>
    #            </note>
    #   @return [String]
    # @!attribute contents
    #   <p>Metadata about each object returned.</p>
    #   @return [Array<Types::Object>]
    # @!attribute name
    #   <p>The bucket name.</p>
    #   @return [String]
    # @!attribute prefix
    #   <p>Keys that begin with the indicated prefix.</p>
    #   @return [String]
    # @!attribute delimiter
    #   <p>Causes keys that contain the same string between the prefix and the first occurrence of the
    #         delimiter to be rolled up into a single result element in the <code>CommonPrefixes</code> collection.
    #         These rolled-up keys are not returned elsewhere in the response. Each rolled-up result counts as only
    #         one return against the <code>MaxKeys</code> value.</p>
    #   @return [String]
    # @!attribute max_keys
    #   <p>The maximum number of keys returned in the response body.</p>
    #   @return [Integer]
    # @!attribute common_prefixes
    #   <p>All of the keys (up to 1,000) rolled up in a common prefix count as a single return when calculating
    #         the number of returns. </p>
    #            <p>A response can contain <code>CommonPrefixes</code> only if you specify a delimiter.</p>
    #            <p>
    #               <code>CommonPrefixes</code> contains all (if there are any) keys between <code>Prefix</code> and the
    #         next occurrence of the string specified by the delimiter.</p>
    #            <p>
    #               <code>CommonPrefixes</code> lists keys that act like subdirectories in the directory specified by
    #           <code>Prefix</code>.</p>
    #            <p>For example, if the prefix is <code>notes/</code> and the delimiter is a slash (<code>/</code>), as
    #         in <code>notes/summer/july</code>, the common prefix is <code>notes/summer/</code>. All of the keys that
    #         roll up into a common prefix count as a single return when calculating the number of returns.</p>
    #   @return [Array<Types::CommonPrefix>]
    # @!attribute encoding_type
    #   <p>Encoding type used by Amazon S3 to encode the <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-keys.html">object keys</a> in the response. Responses are
    #         encoded only in UTF-8. An object key can contain any Unicode character. However, the XML 1.0 parser
    #         can't parse certain characters, such as characters with an ASCII value from 0 to 10. For characters that
    #         aren't supported in XML 1.0, you can add this parameter to request that Amazon S3 encode the keys in the
    #         response. For more information about characters to avoid in object key names, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-keys.html#object-key-guidelines">Object key
    #           naming guidelines</a>.</p>
    #            <note>
    #               <p>When using the URL encoding type, non-ASCII characters that are used in an object's key name will
    #           be percent-encoded according to UTF-8 code values. For example, the object
    #             <code>test_file(3).png</code> will appear as <code>test_file%283%29.png</code>.</p>
    #            </note>
    #   @return [String]
    # @!attribute request_charged
    #   <p>If present, indicates that the requester was successfully charged for the request. For more
    #         information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/RequesterPaysBuckets.html">Using Requester Pays buckets for storage transfers and usage</a> in the <i>Amazon Simple
    #           Storage Service user guide</i>.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    class ListObjectsOutput < Struct.new(
      nil,
      :is_truncated,
      :marker,
      :next_marker,
      :contents,
      :name,
      :prefix,
      :delimiter,
      :max_keys,
      :common_prefixes,
      :encoding_type,
      :request_charged,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bucket
    #   <p>The name of the bucket containing the objects.</p>
    #            <p>
    #               <b>Directory buckets</b> - When you use this operation with a directory bucket, you must use virtual-hosted-style requests in the format <code>
    #                  <i>Bucket-name</i>.s3express-<i>zone-id</i>.<i>region-code</i>.amazonaws.com</code>. Path-style requests are not supported.  Directory bucket names must be unique in the chosen Zone (Availability Zone or Local Zone). Bucket names must follow the format <code>
    #                  <i>bucket-base-name</i>--<i>zone-id</i>--x-s3</code> (for example, <code>
    #                  <i>amzn-s3-demo-bucket</i>--<i>usw2-az1</i>--x-s3</code>). For information about bucket naming
    #            restrictions, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/directory-bucket-naming-rules.html">Directory bucket naming
    #               rules</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <p>
    #               <b>Access points</b> - When you use this action with an access point for general purpose buckets, you must provide the alias of the access point in place of the bucket name or specify the access point ARN. When you use this action with an access point for directory buckets, you must provide the access point name in place of the bucket name. When using the access point ARN, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <note>
    #               <p>Object Lambda access points are not supported by directory buckets.</p>
    #            </note>
    #            <p>
    #               <b>S3 on Outposts</b> - When you use this action with S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the
    #                        form <code>
    #                  <i>AccessPointName</i>-<i>AccountId</i>.<i>outpostID</i>.s3-outposts.<i>Region</i>.amazonaws.com</code>. When you use this action with S3 on Outposts, the destination bucket must be the Outposts access point ARN or the access point alias. For more information about S3 on Outposts, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html">What is S3 on Outposts?</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute delimiter
    #   <p>A delimiter is a character that you use to group keys.</p>
    #            <p>
    #               <code>CommonPrefixes</code> is filtered out from results if it is not lexicographically greater than
    #         the key-marker.</p>
    #   @return [String]
    # @!attribute encoding_type
    #   <p>Encoding type used by Amazon S3 to encode the <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-keys.html">object keys</a> in the response. Responses are
    #         encoded only in UTF-8. An object key can contain any Unicode character. However, the XML 1.0 parser
    #         can't parse certain characters, such as characters with an ASCII value from 0 to 10. For characters that
    #         aren't supported in XML 1.0, you can add this parameter to request that Amazon S3 encode the keys in the
    #         response. For more information about characters to avoid in object key names, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-keys.html#object-key-guidelines">Object key
    #           naming guidelines</a>.</p>
    #            <note>
    #               <p>When using the URL encoding type, non-ASCII characters that are used in an object's key name will
    #           be percent-encoded according to UTF-8 code values. For example, the object
    #             <code>test_file(3).png</code> will appear as <code>test_file%283%29.png</code>.</p>
    #            </note>
    #   @return [String]
    # @!attribute marker
    #   <p>Marker is where you want Amazon S3 to start listing from. Amazon S3 starts listing after this specified
    #         key. Marker can be any key in the bucket.</p>
    #   @return [String]
    # @!attribute max_keys
    #   <p>Sets the maximum number of keys returned in the response. By default, the action returns up to 1,000
    #         key names. The response might contain fewer keys but will never contain more. </p>
    #   @return [Integer]
    # @!attribute prefix
    #   <p>Limits the response to keys that begin with the specified prefix.</p>
    #   @return [String]
    # @!attribute request_payer
    #   <p>Confirms that the requester knows that she or he will be charged for the list objects request.
    #         Bucket owners need not specify this parameter in their requests.</p>
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    # @!attribute optional_object_attributes
    #   <p>Specifies the optional fields that you want returned in the response. Fields that you do not specify
    #         are not returned.</p>
    #   @return [Array<String>]
    class ListObjectsRequest < Struct.new(
      nil,
      :bucket,
      :delimiter,
      :encoding_type,
      :marker,
      :max_keys,
      :prefix,
      :request_payer,
      :expected_bucket_owner,
      :optional_object_attributes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute is_truncated
    #   <p>Set to <code>false</code> if all of the results were returned. Set to <code>true</code> if more keys
    #         are available to return. If the number of results exceeds that specified by <code>MaxKeys</code>, all of
    #         the results might not be returned.</p>
    #   @return [Boolean]
    # @!attribute contents
    #   <p>Metadata about each object returned.</p>
    #   @return [Array<Types::Object>]
    # @!attribute name
    #   <p>The bucket name.</p>
    #   @return [String]
    # @!attribute prefix
    #   <p>Keys that begin with the indicated prefix.</p>
    #            <note>
    #               <p>
    #                  <b>Directory buckets</b> - For directory buckets, only prefixes that end in a delimiter (<code>/</code>) are supported.</p>
    #            </note>
    #   @return [String]
    # @!attribute delimiter
    #   <p>Causes keys that contain the same string between the <code>prefix</code> and the first occurrence of
    #         the delimiter to be rolled up into a single result element in the <code>CommonPrefixes</code>
    #         collection. These rolled-up keys are not returned elsewhere in the response. Each rolled-up result
    #         counts as only one return against the <code>MaxKeys</code> value.</p>
    #            <note>
    #               <p>
    #                  <b>Directory buckets</b> - For directory buckets, <code>/</code> is the only supported delimiter.</p>
    #            </note>
    #   @return [String]
    # @!attribute max_keys
    #   <p>Sets the maximum number of keys returned in the response. By default, the action returns up to 1,000
    #         key names. The response might contain fewer keys but will never contain more.</p>
    #   @return [Integer]
    # @!attribute common_prefixes
    #   <p>All of the keys (up to 1,000) that share the same prefix are grouped together. When counting the
    #         total numbers of returns by this API operation, this group of keys is considered as one item.</p>
    #            <p>A response can contain <code>CommonPrefixes</code> only if you specify a delimiter.</p>
    #            <p>
    #               <code>CommonPrefixes</code> contains all (if there are any) keys between <code>Prefix</code> and the
    #         next occurrence of the string specified by a delimiter.</p>
    #            <p>
    #               <code>CommonPrefixes</code> lists keys that act like subdirectories in the directory specified by
    #           <code>Prefix</code>.</p>
    #            <p>For example, if the prefix is <code>notes/</code> and the delimiter is a slash (<code>/</code>) as
    #         in <code>notes/summer/july</code>, the common prefix is <code>notes/summer/</code>. All of the keys that
    #         roll up into a common prefix count as a single return when calculating the number of returns. </p>
    #            <note>
    #               <ul>
    #                  <li>
    #                     <p>
    #                        <b>Directory buckets</b> - For directory buckets, only prefixes that end in a delimiter (<code>/</code>) are supported.</p>
    #                  </li>
    #                  <li>
    #                     <p>
    #                        <b>Directory buckets </b> - When you query
    #                 <code>ListObjectsV2</code> with a delimiter during in-progress multipart uploads, the
    #                 <code>CommonPrefixes</code> response parameter contains the prefixes that are associated with
    #               the in-progress multipart uploads. For more information about multipart uploads, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuoverview.html">Multipart Upload
    #                 Overview</a> in the <i>Amazon S3 User Guide</i>.</p>
    #                  </li>
    #               </ul>
    #            </note>
    #   @return [Array<Types::CommonPrefix>]
    # @!attribute encoding_type
    #   <p>Encoding type used by Amazon S3 to encode object key names in the XML response.</p>
    #            <p>If you specify the <code>encoding-type</code> request parameter, Amazon S3 includes this element in the
    #         response, and returns encoded key name values in the following response elements:</p>
    #            <p>
    #               <code>Delimiter, Prefix, Key,</code> and <code>StartAfter</code>.</p>
    #   @return [String]
    # @!attribute key_count
    #   <p>
    #               <code>KeyCount</code> is the number of keys returned with this request. <code>KeyCount</code> will
    #         always be less than or equal to the <code>MaxKeys</code> field. For example, if you ask for 50 keys,
    #         your result will include 50 keys or fewer.</p>
    #   @return [Integer]
    # @!attribute continuation_token
    #   <p> If <code>ContinuationToken</code> was sent with the request, it is included in the response. You
    #         can use the returned <code>ContinuationToken</code> for pagination of the list response.</p>
    #   @return [String]
    # @!attribute next_continuation_token
    #   <p>
    #               <code>NextContinuationToken</code> is sent when <code>isTruncated</code> is true, which means there
    #         are more keys in the bucket that can be listed. The next list requests to Amazon S3 can be continued with
    #         this <code>NextContinuationToken</code>. <code>NextContinuationToken</code> is obfuscated and is not a
    #         real key</p>
    #   @return [String]
    # @!attribute start_after
    #   <p>If StartAfter was sent with the request, it is included in the response.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute request_charged
    #   <p>If present, indicates that the requester was successfully charged for the request. For more
    #         information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/RequesterPaysBuckets.html">Using Requester Pays buckets for storage transfers and usage</a> in the <i>Amazon Simple
    #           Storage Service user guide</i>.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    class ListObjectsV2Output < Struct.new(
      nil,
      :is_truncated,
      :contents,
      :name,
      :prefix,
      :delimiter,
      :max_keys,
      :common_prefixes,
      :encoding_type,
      :key_count,
      :continuation_token,
      :next_continuation_token,
      :start_after,
      :request_charged,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bucket
    #   <p>
    #               <b>Directory buckets</b> - When you use this operation with a directory bucket, you must use virtual-hosted-style requests in the format <code>
    #                  <i>Bucket-name</i>.s3express-<i>zone-id</i>.<i>region-code</i>.amazonaws.com</code>. Path-style requests are not supported.  Directory bucket names must be unique in the chosen Zone (Availability Zone or Local Zone). Bucket names must follow the format <code>
    #                  <i>bucket-base-name</i>--<i>zone-id</i>--x-s3</code> (for example, <code>
    #                  <i>amzn-s3-demo-bucket</i>--<i>usw2-az1</i>--x-s3</code>). For information about bucket naming
    #            restrictions, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/directory-bucket-naming-rules.html">Directory bucket naming
    #               rules</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <p>
    #               <b>Access points</b> - When you use this action with an access point for general purpose buckets, you must provide the alias of the access point in place of the bucket name or specify the access point ARN. When you use this action with an access point for directory buckets, you must provide the access point name in place of the bucket name. When using the access point ARN, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <note>
    #               <p>Object Lambda access points are not supported by directory buckets.</p>
    #            </note>
    #            <p>
    #               <b>S3 on Outposts</b> - When you use this action with S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the
    #                        form <code>
    #                  <i>AccessPointName</i>-<i>AccountId</i>.<i>outpostID</i>.s3-outposts.<i>Region</i>.amazonaws.com</code>. When you use this action with S3 on Outposts, the destination bucket must be the Outposts access point ARN or the access point alias. For more information about S3 on Outposts, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html">What is S3 on Outposts?</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute delimiter
    #   <p>A delimiter is a character that you use to group keys.</p>
    #            <p>
    #               <code>CommonPrefixes</code> is filtered out from results if it is not lexicographically greater than
    #         the <code>StartAfter</code> value.</p>
    #            <note>
    #               <ul>
    #                  <li>
    #                     <p>
    #                        <b>Directory buckets</b> - For directory buckets, <code>/</code> is the only supported delimiter.</p>
    #                  </li>
    #                  <li>
    #                     <p>
    #                        <b>Directory buckets </b> - When you query
    #                 <code>ListObjectsV2</code> with a delimiter during in-progress multipart uploads, the
    #                 <code>CommonPrefixes</code> response parameter contains the prefixes that are associated with
    #               the in-progress multipart uploads. For more information about multipart uploads, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuoverview.html">Multipart Upload
    #                 Overview</a> in the <i>Amazon S3 User Guide</i>.</p>
    #                  </li>
    #               </ul>
    #            </note>
    #   @return [String]
    # @!attribute encoding_type
    #   <p>Encoding type used by Amazon S3 to encode the <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-keys.html">object keys</a> in the response. Responses are
    #         encoded only in UTF-8. An object key can contain any Unicode character. However, the XML 1.0 parser
    #         can't parse certain characters, such as characters with an ASCII value from 0 to 10. For characters that
    #         aren't supported in XML 1.0, you can add this parameter to request that Amazon S3 encode the keys in the
    #         response. For more information about characters to avoid in object key names, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-keys.html#object-key-guidelines">Object key
    #           naming guidelines</a>.</p>
    #            <note>
    #               <p>When using the URL encoding type, non-ASCII characters that are used in an object's key name will
    #           be percent-encoded according to UTF-8 code values. For example, the object
    #             <code>test_file(3).png</code> will appear as <code>test_file%283%29.png</code>.</p>
    #            </note>
    #   @return [String]
    # @!attribute max_keys
    #   <p>Sets the maximum number of keys returned in the response. By default, the action returns up to 1,000
    #         key names. The response might contain fewer keys but will never contain more.</p>
    #   @return [Integer]
    # @!attribute prefix
    #   <p>Limits the response to keys that begin with the specified prefix.</p>
    #            <note>
    #               <p>
    #                  <b>Directory buckets</b> - For directory buckets, only prefixes that end in a delimiter (<code>/</code>) are supported.</p>
    #            </note>
    #   @return [String]
    # @!attribute continuation_token
    #   <p>
    #               <code>ContinuationToken</code> indicates to Amazon S3 that the list is being continued on this bucket
    #         with a token. <code>ContinuationToken</code> is obfuscated and is not a real key. You can use this
    #           <code>ContinuationToken</code> for pagination of the list results. </p>
    #   @return [String]
    # @!attribute fetch_owner
    #   <p>The owner field is not present in <code>ListObjectsV2</code> by default. If you want to return the
    #         owner field with each key in the result, then set the <code>FetchOwner</code> field to
    #         <code>true</code>.</p>
    #            <note>
    #               <p>
    #                  <b>Directory buckets</b> - For directory buckets, the bucket
    #           owner is returned as the object owner for all objects.</p>
    #            </note>
    #   @return [Boolean]
    # @!attribute start_after
    #   <p>StartAfter is where you want Amazon S3 to start listing from. Amazon S3 starts listing after this specified
    #         key. StartAfter can be any key in the bucket.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute request_payer
    #   <p>Confirms that the requester knows that she or he will be charged for the list objects request in V2
    #         style. Bucket owners need not specify this parameter in their requests.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    # @!attribute optional_object_attributes
    #   <p>Specifies the optional fields that you want returned in the response. Fields that you do not specify
    #         are not returned.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [Array<String>]
    class ListObjectsV2Request < Struct.new(
      nil,
      :bucket,
      :delimiter,
      :encoding_type,
      :max_keys,
      :prefix,
      :continuation_token,
      :fetch_owner,
      :start_after,
      :request_payer,
      :expected_bucket_owner,
      :optional_object_attributes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute abort_date
    #   <p>If the bucket has a lifecycle rule configured with an action to abort incomplete multipart uploads
    #         and the prefix in the lifecycle rule matches the object name in the request, then the response includes
    #         this header indicating when the initiated multipart upload will become eligible for abort operation. For
    #         more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuoverview.html#mpu-abort-incomplete-mpu-lifecycle-config">Aborting
    #           Incomplete Multipart Uploads Using a Bucket Lifecycle Configuration</a>.</p>
    #            <p>The response will also include the <code>x-amz-abort-rule-id</code> header that will provide the ID
    #         of the lifecycle configuration rule that defines this action.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [Time]
    # @!attribute abort_rule_id
    #   <p>This header is returned along with the <code>x-amz-abort-date</code> header. It identifies
    #         applicable lifecycle configuration rule that defines the action to abort incomplete multipart
    #         uploads.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute bucket
    #   <p>The name of the bucket to which the multipart upload was initiated. Does not return the access point ARN or
    #         access point alias if used.</p>
    #   @return [String]
    # @!attribute key
    #   <p>Object key for which the multipart upload was initiated.</p>
    #   @return [String]
    # @!attribute upload_id
    #   <p>Upload ID identifying the multipart upload whose parts are being listed.</p>
    #   @return [String]
    # @!attribute part_number_marker
    #   <p>Specifies the part after which listing should begin. Only parts with higher part numbers will be
    #         listed.</p>
    #   @return [String]
    # @!attribute next_part_number_marker
    #   <p>When a list is truncated, this element specifies the last part in the list, as well as the value to
    #         use for the <code>part-number-marker</code> request parameter in a subsequent request.</p>
    #   @return [String]
    # @!attribute max_parts
    #   <p>Maximum number of parts that were allowed in the response.</p>
    #   @return [Integer]
    # @!attribute is_truncated
    #   <p> Indicates whether the returned list of parts is truncated. A true value indicates that the list was
    #         truncated. A list can be truncated if the number of parts exceeds the limit returned in the MaxParts
    #         element.</p>
    #   @return [Boolean]
    # @!attribute parts
    #   <p>Container for elements related to a particular part. A response can contain zero or more
    #           <code>Part</code> elements.</p>
    #   @return [Array<Types::Part>]
    # @!attribute initiator
    #   <p>Container element that identifies who initiated the multipart upload. If the initiator is an
    #         Amazon Web Services account, this element provides the same information as the <code>Owner</code> element. If the
    #         initiator is an IAM User, this element provides the user ARN.</p>
    #   @return [Types::Initiator]
    # @!attribute owner
    #   <p>Container element that identifies the object owner, after the object is created. If multipart upload
    #         is initiated by an IAM user, this element provides the parent account ID.</p>
    #            <note>
    #               <p>
    #                  <b>Directory buckets</b> - The bucket owner is returned as the
    #           object owner for all the parts.</p>
    #            </note>
    #   @return [Types::Owner]
    # @!attribute storage_class
    #   <p>The class of storage used to store the uploaded object.</p>
    #            <note>
    #               <p>
    #                  <b>Directory buckets</b> -
    #           Directory buckets only support <code>EXPRESS_ONEZONE</code> (the S3 Express One Zone storage class) in Availability Zones and <code>ONEZONE_IA</code> (the S3 One Zone-Infrequent Access storage class) in Dedicated Local Zones.</p>
    #            </note>
    #   @return [String]
    # @!attribute request_charged
    #   <p>If present, indicates that the requester was successfully charged for the request. For more
    #         information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/RequesterPaysBuckets.html">Using Requester Pays buckets for storage transfers and usage</a> in the <i>Amazon Simple
    #           Storage Service user guide</i>.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute checksum_algorithm
    #   <p>The algorithm that was used to create a checksum of the object.</p>
    #   @return [String]
    # @!attribute checksum_type
    #   <p>The checksum type, which determines how part-level checksums are combined to create an object-level
    #         checksum for multipart objects. You can use this header response to verify that the checksum type that
    #         is received is the same checksum type that was specified in <code>CreateMultipartUpload</code> request.
    #         For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity in the Amazon S3
    #           User Guide</a>.</p>
    #   @return [String]
    class ListPartsOutput < Struct.new(
      nil,
      :abort_date,
      :abort_rule_id,
      :bucket,
      :key,
      :upload_id,
      :part_number_marker,
      :next_part_number_marker,
      :max_parts,
      :is_truncated,
      :parts,
      :initiator,
      :owner,
      :storage_class,
      :request_charged,
      :checksum_algorithm,
      :checksum_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bucket
    #   <p>The name of the bucket to which the parts are being uploaded. </p>
    #            <p>
    #               <b>Directory buckets</b> - When you use this operation with a directory bucket, you must use virtual-hosted-style requests in the format <code>
    #                  <i>Bucket-name</i>.s3express-<i>zone-id</i>.<i>region-code</i>.amazonaws.com</code>. Path-style requests are not supported.  Directory bucket names must be unique in the chosen Zone (Availability Zone or Local Zone). Bucket names must follow the format <code>
    #                  <i>bucket-base-name</i>--<i>zone-id</i>--x-s3</code> (for example, <code>
    #                  <i>amzn-s3-demo-bucket</i>--<i>usw2-az1</i>--x-s3</code>). For information about bucket naming
    #            restrictions, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/directory-bucket-naming-rules.html">Directory bucket naming
    #               rules</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <p>
    #               <b>Access points</b> - When you use this action with an access point for general purpose buckets, you must provide the alias of the access point in place of the bucket name or specify the access point ARN. When you use this action with an access point for directory buckets, you must provide the access point name in place of the bucket name. When using the access point ARN, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <note>
    #               <p>Object Lambda access points are not supported by directory buckets.</p>
    #            </note>
    #            <p>
    #               <b>S3 on Outposts</b> - When you use this action with S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the
    #                        form <code>
    #                  <i>AccessPointName</i>-<i>AccountId</i>.<i>outpostID</i>.s3-outposts.<i>Region</i>.amazonaws.com</code>. When you use this action with S3 on Outposts, the destination bucket must be the Outposts access point ARN or the access point alias. For more information about S3 on Outposts, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html">What is S3 on Outposts?</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute key
    #   <p>Object key for which the multipart upload was initiated.</p>
    #   @return [String]
    # @!attribute max_parts
    #   <p>Sets the maximum number of parts to return.</p>
    #   @return [Integer]
    # @!attribute part_number_marker
    #   <p>Specifies the part after which listing should begin. Only parts with higher part numbers will be
    #         listed.</p>
    #   @return [String]
    # @!attribute upload_id
    #   <p>Upload ID identifying the multipart upload whose parts are being listed.</p>
    #   @return [String]
    # @!attribute request_payer
    #   <p>Confirms that the requester knows that they will be charged for the request. Bucket owners need not
    #         specify this parameter in their requests. If either the source or destination S3 bucket has Requester
    #         Pays enabled, the requester will pay for the corresponding charges. For information about
    #         downloading objects from Requester Pays buckets, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html">Downloading Objects in Requester Pays
    #           Buckets</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    # @!attribute sse_customer_algorithm
    #   <p>The server-side encryption (SSE) algorithm used to encrypt the object. This parameter is needed only when the object was created
    #       using a checksum algorithm. For more information,
    #       see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ServerSideEncryptionCustomerKeys.html">Protecting data using SSE-C keys</a> in the
    #       <i>Amazon S3 User Guide</i>.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute sse_customer_key
    #   <p>The server-side encryption (SSE) customer managed key. This parameter is needed only when the object was created using a checksum algorithm.
    #       For more information, see
    #       <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ServerSideEncryptionCustomerKeys.html">Protecting data using SSE-C keys</a> in the
    #       <i>Amazon S3 User Guide</i>.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute sse_customer_key_md5
    #   <p>The MD5 server-side encryption (SSE) customer managed key. This parameter is needed only when the object was created using a checksum
    #       algorithm. For more information,
    #       see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ServerSideEncryptionCustomerKeys.html">Protecting data using SSE-C keys</a> in the
    #       <i>Amazon S3 User Guide</i>.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    class ListPartsRequest < Struct.new(
      nil,
      :bucket,
      :key,
      :max_parts,
      :part_number_marker,
      :upload_id,
      :request_payer,
      :expected_bucket_owner,
      :sse_customer_algorithm,
      :sse_customer_key,
      :sse_customer_key_md5,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the location where the bucket will be created.</p>
    #          <p>For directory buckets, the location type is Availability Zone or Local Zone. For more information about
    #       directory buckets, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/directory-buckets-overview.html">Working with
    #         directory buckets</a> in the <i>Amazon S3 User Guide</i>.</p>
    #          <note>
    #             <p>This functionality is only supported by directory buckets.</p>
    #          </note>
    # @!attribute type
    #   <p>The type of location where the bucket will be created.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the location where the bucket will be created.</p>
    #            <p>For directory buckets, the name of the location is the Zone ID of the Availability Zone (AZ) or Local Zone (LZ) where
    #         the bucket will be created. An example AZ ID value is <code>usw2-az1</code>.</p>
    #   @return [String]
    class LocationInfo < Struct.new(
      nil,
      :type,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes where logs are stored and the prefix that Amazon S3 assigns to all log object keys for a
    #       bucket. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/RESTBucketPUTlogging.html">PUT Bucket logging</a> in the
    #         <i>Amazon S3 API Reference</i>.</p>
    # @!attribute target_bucket
    #   <p>Specifies the bucket where you want Amazon S3 to store server access logs. You can have your logs
    #         delivered to any bucket that you own, including the same bucket that is being logged. You can also
    #         configure multiple buckets to deliver their logs to the same target bucket. In this case, you should
    #         choose a different <code>TargetPrefix</code> for each source bucket so that the delivered log files can
    #         be distinguished by key.</p>
    #   @return [String]
    # @!attribute target_grants
    #   <p>Container for granting information.</p>
    #            <p>Buckets that use the bucket owner enforced setting for Object Ownership don't support target grants.
    #         For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/enable-server-access-logging.html#grant-log-delivery-permissions-general">Permissions for server access log delivery</a> in the
    #         <i>Amazon S3 User Guide</i>.</p>
    #   @return [Array<Types::TargetGrant>]
    # @!attribute target_prefix
    #   <p>A prefix for all log object keys. If you store log files from multiple Amazon S3 buckets in a single
    #         bucket, you can use a prefix to distinguish which log files came from which bucket.</p>
    #   @return [String]
    # @!attribute target_object_key_format
    #   <p>Amazon S3 key format for log objects.</p>
    #   @return [Types::TargetObjectKeyFormat]
    class LoggingEnabled < Struct.new(
      nil,
      :target_bucket,
      :target_grants,
      :target_prefix,
      :target_object_key_format,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #       The S3 Metadata configuration for a general purpose bucket.
    #     </p>
    # @!attribute journal_table_configuration
    #   <p>
    #         The journal table configuration for a metadata configuration.
    #       </p>
    #   @return [Types::JournalTableConfiguration]
    # @!attribute inventory_table_configuration
    #   <p>
    #         The inventory table configuration for a metadata configuration.
    #       </p>
    #   @return [Types::InventoryTableConfiguration]
    # @!attribute annotation_table_configuration
    #   <p>Optional annotation table configuration to include with the metadata configuration.</p>
    #   @return [Types::AnnotationTableConfiguration]
    class MetadataConfiguration < Struct.new(
      nil,
      :journal_table_configuration,
      :inventory_table_configuration,
      :annotation_table_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #       The S3 Metadata configuration for a general purpose bucket.
    #     </p>
    # @!attribute destination_result
    #   <p>
    #         The destination settings for a metadata configuration.
    #       </p>
    #   @return [Types::DestinationResult]
    # @!attribute journal_table_configuration_result
    #   <p>
    #         The journal table configuration for a metadata configuration.
    #       </p>
    #   @return [Types::JournalTableConfigurationResult]
    # @!attribute inventory_table_configuration_result
    #   <p>
    #         The inventory table configuration for a metadata configuration.
    #       </p>
    #   @return [Types::InventoryTableConfigurationResult]
    # @!attribute annotation_table_configuration_result
    #   <p>The annotation table configuration result, if an annotation table is configured.</p>
    #   @return [Types::AnnotationTableConfigurationResult]
    class MetadataConfigurationResult < Struct.new(
      nil,
      :destination_result,
      :journal_table_configuration_result,
      :inventory_table_configuration_result,
      :annotation_table_configuration_result,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A metadata key-value pair to store with an object.</p>
    # @!attribute name
    #   <p>Name of the object.</p>
    #   @return [String]
    # @!attribute value
    #   <p>Value of the object.</p>
    #   @return [String]
    class MetadataEntry < Struct.new(
      nil,
      :name,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The V1 S3 Metadata configuration for a general purpose bucket. </p>
    #          <note>
    #             <p>If you created your S3 Metadata configuration before July 15, 2025, we recommend that you delete
    #         and re-create your configuration by using <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateBucketMetadataConfiguration.html">CreateBucketMetadataConfiguration</a> so that you can expire journal table records and create
    #         a live inventory table.</p>
    #          </note>
    # @!attribute s3_tables_destination
    #   <p> The destination information for the metadata table configuration. The destination table bucket must
    #         be in the same Region and Amazon Web Services account as the general purpose bucket. The specified metadata table name
    #         must be unique within the <code>aws_s3_metadata</code> namespace in the destination table bucket.
    #       </p>
    #   @return [Types::S3TablesDestination]
    class MetadataTableConfiguration < Struct.new(
      nil,
      :s3_tables_destination,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The V1 S3 Metadata configuration for a general purpose bucket. The destination table bucket must be
    #       in the same Region and Amazon Web Services account as the general purpose bucket. The specified metadata table name
    #       must be unique within the <code>aws_s3_metadata</code> namespace in the destination table bucket.
    #     </p>
    #          <note>
    #             <p>If you created your S3 Metadata configuration before July 15, 2025, we recommend that you delete
    #         and re-create your configuration by using <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateBucketMetadataConfiguration.html">CreateBucketMetadataConfiguration</a> so that you can expire journal table records and create
    #         a live inventory table.</p>
    #          </note>
    # @!attribute s3_tables_destination_result
    #   <p> The destination information for the metadata table configuration. The destination table bucket must
    #         be in the same Region and Amazon Web Services account as the general purpose bucket. The specified metadata table name
    #         must be unique within the <code>aws_s3_metadata</code> namespace in the destination table bucket.
    #       </p>
    #   @return [Types::S3TablesDestinationResult]
    class MetadataTableConfigurationResult < Struct.new(
      nil,
      :s3_tables_destination_result,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #       The encryption settings for an S3 Metadata journal table or inventory table configuration.
    #     </p>
    # @!attribute sse_algorithm
    #   <p>
    #         The encryption type specified for a metadata table. To specify server-side encryption with
    #         Key Management Service (KMS) keys (SSE-KMS), use the <code>aws:kms</code> value. To specify server-side
    #         encryption with Amazon S3 managed keys (SSE-S3), use the <code>AES256</code> value.
    #       </p>
    #   @return [String]
    # @!attribute kms_key_arn
    #   <p>
    #         If server-side encryption with Key Management Service (KMS) keys (SSE-KMS) is specified, you must also
    #         specify the KMS key Amazon Resource Name (ARN). You must specify a customer-managed KMS key
    #         that's located in the same Region as the general purpose bucket that corresponds to the metadata
    #         table configuration.
    #       </p>
    #   @return [String]
    class MetadataTableEncryptionConfiguration < Struct.new(
      nil,
      :sse_algorithm,
      :kms_key_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> A container specifying replication metrics-related settings enabling replication metrics and
    #       events.</p>
    # @!attribute status
    #   <p> Specifies whether the replication metrics are enabled. </p>
    #   @return [String]
    # @!attribute event_threshold
    #   <p> A container specifying the time threshold for emitting the
    #           <code>s3:Replication:OperationMissedThreshold</code> event. </p>
    #   @return [Types::ReplicationTimeValue]
    class Metrics < Struct.new(
      nil,
      :status,
      :event_threshold,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A conjunction (logical AND) of predicates, which is used in evaluating a metrics filter. The
    #       operator must have at least two predicates, and an object must match all of the predicates in order for
    #       the filter to apply.</p>
    # @!attribute prefix
    #   <p>The prefix used when evaluating an AND predicate.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The list of tags used when evaluating an AND predicate.</p>
    #            <note>
    #               <p>
    #                  <code>Tag</code> filters are not supported for directory buckets.</p>
    #            </note>
    #   @return [Array<Types::Tag>]
    # @!attribute access_point_arn
    #   <p>The access point ARN used when evaluating an <code>AND</code> predicate.</p>
    #   @return [String]
    class MetricsAndOperator < Struct.new(
      nil,
      :prefix,
      :tags,
      :access_point_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies a metrics configuration for the CloudWatch request metrics (specified by the metrics
    #       configuration ID) from an Amazon S3 bucket. If you're updating an existing metrics configuration, note that
    #       this is a full replacement of the existing metrics configuration. If you don't include the elements you
    #       want to keep, they are erased. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/RESTBucketPUTMetricConfiguration.html">PutBucketMetricsConfiguration</a>.</p>
    # @!attribute id
    #   <p>The ID used to identify the metrics configuration. The ID has a 64 character limit and can only
    #         contain letters, numbers, periods, dashes, and underscores.</p>
    #   @return [String]
    # @!attribute filter
    #   <p>Specifies a metrics configuration filter. The metrics configuration will only include objects that
    #         meet the filter's criteria. A filter must be a prefix, an object tag, an access point ARN, or a
    #         conjunction (MetricsAndOperator).</p>
    #            <note>
    #               <p>Metrics configurations for directory buckets do not support tag filters.</p>
    #            </note>
    #   @return [Types::MetricsFilter]
    class MetricsConfiguration < Struct.new(
      nil,
      :id,
      :filter,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies a metrics configuration filter. The metrics configuration only includes objects that meet
    #       the filter's criteria. A filter must be a prefix, an object tag, an access point ARN, or a conjunction
    #       (MetricsAndOperator). For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketMetricsConfiguration.html">PutBucketMetricsConfiguration</a>.</p>
    # @!attribute prefix
    #   <p>The prefix used when evaluating a metrics filter.</p>
    #   @return [String]
    # @!attribute tag
    #   <p>The tag used when evaluating a metrics filter.</p>
    #            <note>
    #               <p>
    #                  <code>Tag</code> filters are not supported for directory buckets.</p>
    #            </note>
    #   @return [Types::Tag]
    # @!attribute access_point_arn
    #   <p>The access point ARN used when evaluating a metrics filter.</p>
    #   @return [String]
    # @!attribute and
    #   <p>A conjunction (logical AND) of predicates, which is used in evaluating a metrics filter. The
    #         operator must have at least two predicates, and an object must match all of the predicates in order for
    #         the filter to apply.</p>
    #   @return [Types::MetricsAndOperator]
    class MetricsFilter < Struct.new(
      :prefix,
      :tag,
      :access_point_arn,
      :and,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Prefix < MetricsFilter; end
      class Tag < MetricsFilter; end
      class AccessPointArn < MetricsFilter; end
      class And < MetricsFilter; end
      class Unknown < MetricsFilter; end
    end

    # <p>Container for the <code>MultipartUpload</code> for the Amazon S3 object.</p>
    # @!attribute upload_id
    #   <p>Upload ID that identifies the multipart upload.</p>
    #   @return [String]
    # @!attribute key
    #   <p>Key of the object for which the multipart upload was initiated.</p>
    #   @return [String]
    # @!attribute initiated
    #   <p>Date and time at which the multipart upload was initiated.</p>
    #   @return [Time]
    # @!attribute storage_class
    #   <p>The class of storage used to store the object.</p>
    #            <note>
    #               <p>
    #                  <b>Directory buckets</b> -
    #           Directory buckets only support <code>EXPRESS_ONEZONE</code> (the S3 Express One Zone storage class) in Availability Zones and <code>ONEZONE_IA</code> (the S3 One Zone-Infrequent Access storage class) in Dedicated Local Zones.</p>
    #            </note>
    #   @return [String]
    # @!attribute owner
    #   <p>Specifies the owner of the object that is part of the multipart upload. </p>
    #            <note>
    #               <p>
    #                  <b>Directory buckets</b> - The bucket owner is returned as the
    #           object owner for all the objects.</p>
    #            </note>
    #   @return [Types::Owner]
    # @!attribute initiator
    #   <p>Identifies who initiated the multipart upload.</p>
    #   @return [Types::Initiator]
    # @!attribute checksum_algorithm
    #   <p>The algorithm that was used to create a checksum of the object.</p>
    #   @return [String]
    # @!attribute checksum_type
    #   <p>The checksum type that is used to calculate the object’s checksum value. For more information, see
    #           <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking
    #           object integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    class MultipartUpload < Struct.new(
      nil,
      :upload_id,
      :key,
      :initiated,
      :storage_class,
      :owner,
      :initiator,
      :checksum_algorithm,
      :checksum_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified annotation does not exist on this object.</p>
    class NoSuchAnnotation < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified bucket does not exist.</p>
    class NoSuchBucket < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified key does not exist.</p>
    class NoSuchKey < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified multipart upload does not exist.</p>
    class NoSuchUpload < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies when noncurrent object versions expire. Upon expiration, Amazon S3 permanently deletes the
    #       noncurrent object versions. You set this lifecycle configuration action on a bucket that has versioning
    #       enabled (or suspended) to request that Amazon S3 delete noncurrent object versions at a specific period in
    #       the object's lifetime.</p>
    #          <note>
    #             <p>This parameter applies to general purpose buckets only. It is not supported for directory bucket
    #         lifecycle configurations.</p>
    #          </note>
    # @!attribute noncurrent_days
    #   <p>Specifies the number of days an object is noncurrent before Amazon S3 can perform the associated action.
    #         The value must be a non-zero positive integer. For information about the noncurrent days calculations,
    #         see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/intro-lifecycle-rules.html#non-current-days-calculations">How Amazon S3 Calculates
    #           When an Object Became Noncurrent</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <note>
    #               <p>This parameter applies to general purpose buckets only. It is not supported for directory bucket
    #           lifecycle configurations.</p>
    #            </note>
    #   @return [Integer]
    # @!attribute newer_noncurrent_versions
    #   <p>Specifies how many noncurrent versions Amazon S3 will retain. You can specify up to 100 noncurrent
    #         versions to retain. Amazon S3 will permanently delete any additional noncurrent versions beyond the specified
    #         number to retain. For more information about noncurrent versions, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/intro-lifecycle-rules.html">Lifecycle configuration elements</a> in
    #         the <i>Amazon S3 User Guide</i>.</p>
    #            <note>
    #               <p>This parameter applies to general purpose buckets only. It is not supported for directory bucket
    #           lifecycle configurations.</p>
    #            </note>
    #   @return [Integer]
    class NoncurrentVersionExpiration < Struct.new(
      nil,
      :noncurrent_days,
      :newer_noncurrent_versions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for the transition rule that describes when noncurrent objects transition to the
    #         <code>STANDARD_IA</code>, <code>ONEZONE_IA</code>, <code>INTELLIGENT_TIERING</code>,
    #         <code>GLACIER_IR</code>, <code>GLACIER</code>, or <code>DEEP_ARCHIVE</code> storage class. If your
    #       bucket is versioning-enabled (or versioning is suspended), you can set this action to request that Amazon S3
    #       transition noncurrent object versions to the <code>STANDARD_IA</code>, <code>ONEZONE_IA</code>,
    #         <code>INTELLIGENT_TIERING</code>, <code>GLACIER_IR</code>, <code>GLACIER</code>, or
    #         <code>DEEP_ARCHIVE</code> storage class at a specific period in the object's lifetime.</p>
    # @!attribute noncurrent_days
    #   <p>Specifies the number of days an object is noncurrent before Amazon S3 can perform the associated action.
    #         For information about the noncurrent days calculations, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/intro-lifecycle-rules.html#non-current-days-calculations">How Amazon S3 Calculates
    #           How Long an Object Has Been Noncurrent</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [Integer]
    # @!attribute storage_class
    #   <p>The class of storage used to store the object.</p>
    #   @return [String]
    # @!attribute newer_noncurrent_versions
    #   <p>Specifies how many noncurrent versions Amazon S3 will retain in the same storage class before
    #         transitioning objects. You can specify up to 100 noncurrent versions to retain. Amazon S3 will transition any
    #         additional noncurrent versions beyond the specified number to retain. For more information about
    #         noncurrent versions, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/intro-lifecycle-rules.html">Lifecycle configuration elements</a> in
    #         the <i>Amazon S3 User Guide</i>.</p>
    #   @return [Integer]
    class NoncurrentVersionTransition < Struct.new(
      nil,
      :noncurrent_days,
      :storage_class,
      :newer_noncurrent_versions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified content does not exist.</p>
    class NotFound < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A container for specifying the notification configuration of the bucket. If this element is empty,
    #       notifications are turned off for the bucket.</p>
    # @!attribute topic_configurations
    #   <p>The topic to which notifications are sent and the events for which notifications are
    #         generated.</p>
    #   @return [Array<Types::TopicConfiguration>]
    # @!attribute queue_configurations
    #   <p>The Amazon Simple Queue Service queues to publish messages to and the events for which to publish
    #         messages.</p>
    #   @return [Array<Types::QueueConfiguration>]
    # @!attribute lambda_function_configurations
    #   <p>Describes the Lambda functions to invoke and the events for which to invoke them.</p>
    #   @return [Array<Types::LambdaFunctionConfiguration>]
    # @!attribute event_bridge_configuration
    #   <p>Enables delivery of events to Amazon EventBridge.</p>
    #   @return [Types::EventBridgeConfiguration]
    class NotificationConfiguration < Struct.new(
      nil,
      :topic_configurations,
      :queue_configurations,
      :lambda_function_configurations,
      :event_bridge_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies object key name filtering rules. For information about key name filtering, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/notification-how-to-filtering.html">Configuring
    #         event notifications using object key name filtering</a> in the
    #         <i>Amazon S3 User Guide</i>.</p>
    # @!attribute key
    #   <p>A container for object key name prefix and suffix filtering rules.</p>
    #   @return [Types::S3KeyFilter]
    class NotificationConfigurationFilter < Struct.new(
      nil,
      :key,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object consists of data and its descriptive metadata.</p>
    # @!attribute key
    #   <p>The name that you assign to an object. You use the object key to retrieve the object.</p>
    #   @return [String]
    # @!attribute last_modified
    #   <p>Creation date of the object.</p>
    #   @return [Time]
    # @!attribute e_tag
    #   <p>The entity tag is a hash of the object. The ETag reflects changes only to the contents of an object,
    #         not its metadata. The ETag may or may not be an MD5 digest of the object data. Whether or not it is
    #         depends on how the object was created and how it is encrypted as described below:</p>
    #            <ul>
    #               <li>
    #                  <p>Objects created by the PUT Object, POST Object, or Copy operation, or through the Amazon Web Services
    #             Management Console, and are encrypted by SSE-S3 or plaintext, have ETags that are an MD5 digest of
    #             their object data.</p>
    #               </li>
    #               <li>
    #                  <p>Objects created by the PUT Object, POST Object, or Copy operation, or through the Amazon Web Services
    #             Management Console, and are encrypted by SSE-C or SSE-KMS, have ETags that are not an MD5 digest of
    #             their object data.</p>
    #               </li>
    #               <li>
    #                  <p>If an object is created by either the Multipart Upload or Part Copy operation, the ETag is not
    #             an MD5 digest, regardless of the method of encryption. If an object is larger than 16 MB, the Amazon Web Services
    #             Management Console will upload or copy that object as a Multipart Upload, and therefore the ETag
    #             will not be an MD5 digest.</p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>
    #                  <b>Directory buckets</b> - MD5 is not supported by directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute checksum_algorithm
    #   <p>The algorithm that was used to create a checksum of the object.</p>
    #   @return [Array<String>]
    # @!attribute checksum_type
    #   <p>The checksum type that is used to calculate the object’s checksum value. For more information, see
    #           <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking
    #           object integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute size
    #   <p>Size in bytes of the object</p>
    #   @return [Integer]
    # @!attribute storage_class
    #   <p>The class of storage used to store the object.</p>
    #            <note>
    #               <p>
    #                  <b>Directory buckets</b> -
    #           Directory buckets only support <code>EXPRESS_ONEZONE</code> (the S3 Express One Zone storage class) in Availability Zones and <code>ONEZONE_IA</code> (the S3 One Zone-Infrequent Access storage class) in Dedicated Local Zones.</p>
    #            </note>
    #   @return [String]
    # @!attribute owner
    #   <p>The owner of the object</p>
    #            <note>
    #               <p>
    #                  <b>Directory buckets</b> - The bucket owner is returned as the
    #           object owner.</p>
    #            </note>
    #   @return [Types::Owner]
    # @!attribute restore_status
    #   <p>Specifies the restoration status of an object. Objects in certain storage classes must be restored
    #         before they can be retrieved. For more information about these storage classes and how to work with
    #         archived objects, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/archived-objects.html">
    #           Working with archived objects</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets. Directory buckets only support <code>EXPRESS_ONEZONE</code> (the S3 Express One Zone storage class) in Availability Zones and <code>ONEZONE_IA</code> (the S3 One Zone-Infrequent Access storage class) in Dedicated Local Zones.</p>
    #            </note>
    #   @return [Types::RestoreStatus]
    class Object < Struct.new(
      nil,
      :key,
      :last_modified,
      :e_tag,
      :checksum_algorithm,
      :checksum_type,
      :size,
      :storage_class,
      :owner,
      :restore_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>This action is not allowed against this storage tier.</p>
    class ObjectAlreadyInActiveTierError < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #       The updated server-side encryption type for this object. The <code>UpdateObjectEncryption</code>
    #       operation supports the SSE-S3 and SSE-KMS encryption types.
    #     </p>
    #          <p>Valid Values: <code>SSES3</code> | <code>SSEKMS</code>
    #          </p>
    # @!attribute ssekms
    #   <p>
    #         Specifies to update the object encryption type to server-side encryption with Key Management Service (KMS) keys
    #         (SSE-KMS).
    #       </p>
    #   @return [Types::SSEKMSEncryption]
    class ObjectEncryption < Struct.new(
      :ssekms,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class SSEKMS < ObjectEncryption; end
      class Unknown < ObjectEncryption; end
    end

    # <p>Object Identifier is unique value to identify objects.</p>
    # @!attribute key
    #   <p>Key name of the object.</p>
    #            <important>
    #               <p>Replacement must be made for object keys containing special characters (such as carriage returns) when using
    #            XML requests. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-keys.html#object-key-xml-related-constraints">
    #               XML related object key constraints</a>.</p>
    #            </important>
    #   @return [String]
    # @!attribute version_id
    #   <p>Version ID for the specific version of the object to delete.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute e_tag
    #   <p>An entity tag (ETag) is an identifier assigned by a web server to a specific version of a resource
    #         found at a URL. This header field makes the request method conditional on <code>ETags</code>. </p>
    #            <note>
    #               <p>Entity tags (ETags) for S3 Express One Zone are random alphanumeric strings unique to the object.
    #         </p>
    #            </note>
    #   @return [String]
    # @!attribute last_modified_time
    #   <p>If present, the objects are deleted only if its modification times matches the provided
    #           <code>Timestamp</code>. </p>
    #            <note>
    #               <p>This functionality is only supported for directory buckets.</p>
    #            </note>
    #   @return [Time]
    # @!attribute size
    #   <p>If present, the objects are deleted only if its size matches the provided size in bytes. </p>
    #            <note>
    #               <p>This functionality is only supported for directory buckets.</p>
    #            </note>
    #   @return [Integer]
    class ObjectIdentifier < Struct.new(
      nil,
      :key,
      :version_id,
      :e_tag,
      :last_modified_time,
      :size,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The container element for Object Lock configuration parameters.</p>
    # @!attribute object_lock_enabled
    #   <p>Indicates whether this bucket has an Object Lock configuration enabled. Enable
    #           <code>ObjectLockEnabled</code> when you apply <code>ObjectLockConfiguration</code> to a bucket.
    #       </p>
    #   @return [String]
    # @!attribute rule
    #   <p>Specifies the Object Lock rule for the specified object. Enable the this rule when you apply
    #           <code>ObjectLockConfiguration</code> to a bucket. Bucket settings require both a mode and a period.
    #         The period can be either <code>Days</code> or <code>Years</code> but you must select one. You cannot
    #         specify <code>Days</code> and <code>Years</code> at the same time.</p>
    #   @return [Types::ObjectLockRule]
    class ObjectLockConfiguration < Struct.new(
      nil,
      :object_lock_enabled,
      :rule,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A legal hold configuration for an object.</p>
    # @!attribute status
    #   <p>Indicates whether the specified object has a legal hold in place.</p>
    #   @return [String]
    class ObjectLockLegalHold < Struct.new(
      nil,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A Retention configuration for an object.</p>
    # @!attribute mode
    #   <p>Indicates the Retention mode for the specified object.</p>
    #   @return [String]
    # @!attribute retain_until_date
    #   <p>The date on which this Object Lock Retention will expire.</p>
    #   @return [Time]
    # @!attribute event_hold
    #   <p>The event hold status for the object. Set to <code>ON</code> to enable an event hold or
    #         <code>OFF</code> to disable it.</p>
    #   @return [String]
    # @!attribute event_hold_duration
    #   <p>The event hold duration for the object. Specifies how long the object remains protected after the
    #         event hold is released.</p>
    #   @return [Types::EventHoldDuration]
    class ObjectLockRetention < Struct.new(
      nil,
      :mode,
      :retain_until_date,
      :event_hold,
      :event_hold_duration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The container element for an Object Lock rule.</p>
    # @!attribute default_retention
    #   <p>The default Object Lock retention settings for new objects in this bucket. You can
    #         specify:</p>
    #            <ul>
    #               <li>
    #                  <p>A default retention period, by using <code>Days</code> or <code>Years</code>.</p>
    #               </li>
    #               <li>
    #                  <p>A default event hold duration, by using <code>DefaultEventHold</code>. This setting also
    #             uses days or years.</p>
    #               </li>
    #            </ul>
    #            <p>You can set one or both. You cannot use days and years in the same setting.</p>
    #   @return [Types::DefaultRetention]
    class ObjectLockRule < Struct.new(
      nil,
      :default_retention,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The source object of the COPY action is not in the active tier and is only stored in Amazon S3
    #       Glacier.</p>
    class ObjectNotInActiveTierError < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A container for elements related to an individual part.</p>
    # @!attribute part_number
    #   <p>The part number identifying the part. This value is a positive integer between 1 and 10,000.</p>
    #   @return [Integer]
    # @!attribute size
    #   <p>The size of the uploaded part in bytes.</p>
    #   @return [Integer]
    # @!attribute checksum_crc32
    #   <p>The Base64 encoded, 32-bit <code>CRC32</code> checksum of the part. This checksum is present if the
    #         multipart upload request was created with the <code>CRC32</code> checksum algorithm. For more
    #         information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #         the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_crc32_c
    #   <p>The Base64 encoded, 32-bit <code>CRC32C</code> checksum of the part. This checksum is present if the
    #         multipart upload request was created with the <code>CRC32C</code> checksum algorithm. For more
    #         information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #         the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_crc64_nvme
    #   <p>The Base64 encoded, 64-bit <code>CRC64NVME</code> checksum of the part. This checksum is present if
    #         the multipart upload request was created with the <code>CRC64NVME</code> checksum algorithm, or if the
    #         object was uploaded without a checksum (and Amazon S3 added the default checksum, <code>CRC64NVME</code>, to
    #         the uploaded object). For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #         the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_sha1
    #   <p>The Base64 encoded, 160-bit <code>SHA1</code> checksum of the part. This checksum is present if the
    #         multipart upload request was created with the <code>SHA1</code> checksum algorithm. For more
    #         information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #         the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_sha256
    #   <p>The Base64 encoded, 256-bit <code>SHA256</code> checksum of the part. This checksum is present if
    #         the multipart upload request was created with the <code>SHA256</code> checksum algorithm. For more
    #         information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #         the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_sha512
    #   <p>The Base64 encoded, 512-bit <code>SHA512</code> digest of the part. This checksum is present if
    #         the multipart upload request was created with the <code>SHA512</code> checksum algorithm. For more
    #         information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #         the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_md5
    #   <p>The Base64 encoded, 128-bit <code>MD5</code> digest of the part. This checksum is present if
    #         the multipart upload request was created with the <code>MD5</code> checksum algorithm. For more
    #         information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #         the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_xxhash64
    #   <p>The Base64 encoded, 64-bit <code>XXHASH64</code> checksum of the part. This checksum is present if
    #         the multipart upload request was created with the <code>XXHASH64</code> checksum algorithm. For more
    #         information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #         the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_xxhash3
    #   <p>The Base64 encoded, 64-bit <code>XXHASH3</code> checksum of the part. This checksum is present if
    #         the multipart upload request was created with the <code>XXHASH3</code> checksum algorithm. For more
    #         information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #         the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_xxhash128
    #   <p>The Base64 encoded, 128-bit <code>XXHASH128</code> checksum of the part. This checksum is present if
    #         the multipart upload request was created with the <code>XXHASH128</code> checksum algorithm. For more
    #         information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #         the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    class ObjectPart < Struct.new(
      nil,
      :part_number,
      :size,
      :checksum_crc32,
      :checksum_crc32_c,
      :checksum_crc64_nvme,
      :checksum_sha1,
      :checksum_sha256,
      :checksum_sha512,
      :checksum_md5,
      :checksum_xxhash64,
      :checksum_xxhash3,
      :checksum_xxhash128,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The version of an object.</p>
    # @!attribute e_tag
    #   <p>The entity tag is an MD5 hash of that version of the object.</p>
    #   @return [String]
    # @!attribute checksum_algorithm
    #   <p>The algorithm that was used to create a checksum of the object.</p>
    #   @return [Array<String>]
    # @!attribute checksum_type
    #   <p>The checksum type that is used to calculate the object’s checksum value. For more information, see
    #           <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking
    #           object integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute size
    #   <p>Size in bytes of the object.</p>
    #   @return [Integer]
    # @!attribute storage_class
    #   <p>The class of storage used to store the object.</p>
    #   @return [String]
    # @!attribute key
    #   <p>The object key.</p>
    #   @return [String]
    # @!attribute version_id
    #   <p>Version ID of an object.</p>
    #   @return [String]
    # @!attribute is_latest
    #   <p>Specifies whether the object is (true) or is not (false) the latest version of an object.</p>
    #   @return [Boolean]
    # @!attribute last_modified
    #   <p>Date and time when the object was last modified.</p>
    #   @return [Time]
    # @!attribute owner
    #   <p>Specifies the owner of the object.</p>
    #   @return [Types::Owner]
    # @!attribute restore_status
    #   <p>Specifies the restoration status of an object. Objects in certain storage classes must be restored
    #         before they can be retrieved. For more information about these storage classes and how to work with
    #         archived objects, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/archived-objects.html">
    #           Working with archived objects</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [Types::RestoreStatus]
    class ObjectVersion < Struct.new(
      nil,
      :e_tag,
      :checksum_algorithm,
      :checksum_type,
      :size,
      :storage_class,
      :key,
      :version_id,
      :is_latest,
      :last_modified,
      :owner,
      :restore_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the location where the restore job's output is stored.</p>
    # @!attribute s3
    #   <p>Describes an S3 location that will receive the results of the restore request.</p>
    #   @return [Types::S3Location]
    class OutputLocation < Struct.new(
      nil,
      :s3,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes how results of the Select job are serialized.</p>
    # @!attribute csv
    #   <p>Describes the serialization of CSV-encoded Select results.</p>
    #   @return [Types::CSVOutput]
    # @!attribute json
    #   <p>Specifies JSON as request's output serialization format.</p>
    #   @return [Types::JSONOutput]
    class OutputSerialization < Struct.new(
      nil,
      :csv,
      :json,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for the owner's display name and ID.</p>
    # @!attribute display_name
    #   <p></p>
    #   @return [String]
    # @!attribute id
    #   <p>Container for the ID of the owner.</p>
    #   @return [String]
    class Owner < Struct.new(
      nil,
      :display_name,
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The container element for a bucket's ownership controls.</p>
    # @!attribute rules
    #   <p>The container element for an ownership control rule.</p>
    #   @return [Array<Types::OwnershipControlsRule>]
    class OwnershipControls < Struct.new(
      nil,
      :rules,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The container element for an ownership control rule.</p>
    # @!attribute object_ownership
    #   <p>The container element for object ownership for a bucket's ownership controls.</p>
    #            <p>
    #               <code>BucketOwnerPreferred</code> - Objects uploaded to the bucket change ownership to the bucket
    #         owner if the objects are uploaded with the <code>bucket-owner-full-control</code> canned ACL.</p>
    #            <p>
    #               <code>ObjectWriter</code> - The uploading account will own the object if the object is uploaded with
    #         the <code>bucket-owner-full-control</code> canned ACL.</p>
    #            <p>
    #               <code>BucketOwnerEnforced</code> - Access control lists (ACLs) are disabled and no longer affect
    #         permissions. The bucket owner automatically owns and has full control over every object in the bucket.
    #         The bucket only accepts PUT requests that don't specify an ACL or specify bucket owner full control ACLs
    #         (such as the predefined <code>bucket-owner-full-control</code> canned ACL or a custom ACL in XML format
    #         that grants the same permissions).</p>
    #            <p>By default, <code>ObjectOwnership</code> is set to <code>BucketOwnerEnforced</code> and ACLs are
    #         disabled. We recommend keeping ACLs disabled, except in uncommon use cases where you must control access
    #         for each object individually. For more information about S3 Object Ownership, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/about-object-ownership.html">Controlling
    #           ownership of objects and disabling ACLs for your bucket</a> in the
    #           <i>Amazon S3 User Guide</i>. </p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets. Directory buckets use the bucket owner enforced setting for S3 Object Ownership.</p>
    #            </note>
    #   @return [String]
    class OwnershipControlsRule < Struct.new(
      nil,
      :object_ownership,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for Parquet.</p>
    class ParquetInput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for elements related to a part.</p>
    # @!attribute part_number
    #   <p>Part number identifying the part. This is a positive integer between 1 and 10,000.</p>
    #   @return [Integer]
    # @!attribute last_modified
    #   <p>Date and time at which the part was uploaded.</p>
    #   @return [Time]
    # @!attribute e_tag
    #   <p>Entity tag returned when the part was uploaded.</p>
    #   @return [String]
    # @!attribute size
    #   <p>Size in bytes of the uploaded part data.</p>
    #   @return [Integer]
    # @!attribute checksum_crc32
    #   <p>The Base64 encoded, 32-bit <code>CRC32</code> checksum of the part. This checksum is present if the
    #         object was uploaded with the <code>CRC32</code> checksum algorithm. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object
    #           integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_crc32_c
    #   <p>The Base64 encoded, 32-bit <code>CRC32C</code> checksum of the part. This checksum is present if the
    #         object was uploaded with the <code>CRC32C</code> checksum algorithm. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object
    #           integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_crc64_nvme
    #   <p>The Base64 encoded, 64-bit <code>CRC64NVME</code> checksum of the part. This checksum is present if
    #         the multipart upload request was created with the <code>CRC64NVME</code> checksum algorithm, or if the
    #         object was uploaded without a checksum (and Amazon S3 added the default checksum, <code>CRC64NVME</code>, to
    #         the uploaded object). For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #         the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_sha1
    #   <p>The Base64 encoded, 160-bit <code>SHA1</code> checksum of the part. This checksum is present if the
    #         object was uploaded with the <code>SHA1</code> checksum algorithm. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object
    #           integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_sha256
    #   <p>The Base64 encoded, 256-bit <code>SHA256</code> checksum of the part. This checksum is present if
    #         the object was uploaded with the <code>SHA256</code> checksum algorithm. For more information, see
    #           <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking
    #           object integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_sha512
    #   <p>The Base64 encoded, 512-bit <code>SHA512</code> digest of the part. This checksum is present if
    #         the multipart upload request was created with the <code>SHA512</code> checksum algorithm. For more
    #         information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #         the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_md5
    #   <p>The Base64 encoded, 128-bit <code>MD5</code> digest of the part. This checksum is present if
    #         the multipart upload request was created with the <code>MD5</code> checksum algorithm. For more
    #         information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #         the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_xxhash64
    #   <p>The Base64 encoded, 64-bit <code>XXHASH64</code> checksum of the part. This checksum is present if
    #         the multipart upload request was created with the <code>XXHASH64</code> checksum algorithm. For more
    #         information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #         the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_xxhash3
    #   <p>The Base64 encoded, 64-bit <code>XXHASH3</code> checksum of the part. This checksum is present if
    #         the multipart upload request was created with the <code>XXHASH3</code> checksum algorithm. For more
    #         information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #         the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_xxhash128
    #   <p>The Base64 encoded, 128-bit <code>XXHASH128</code> checksum of the part. This checksum is present if
    #         the multipart upload request was created with the <code>XXHASH128</code> checksum algorithm. For more
    #         information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #         the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    class Part < Struct.new(
      nil,
      :part_number,
      :last_modified,
      :e_tag,
      :size,
      :checksum_crc32,
      :checksum_crc32_c,
      :checksum_crc64_nvme,
      :checksum_sha1,
      :checksum_sha256,
      :checksum_sha512,
      :checksum_md5,
      :checksum_xxhash64,
      :checksum_xxhash3,
      :checksum_xxhash128,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Amazon S3 keys for log objects are partitioned in the following format:</p>
    #          <p>
    #             <code>[DestinationPrefix][SourceAccountId]/[SourceRegion]/[SourceBucket]/[YYYY]/[MM]/[DD]/[YYYY]-[MM]-[DD]-[hh]-[mm]-[ss]-[UniqueString]</code>
    #          </p>
    #          <p>PartitionedPrefix defaults to EventTime delivery when server access logs are delivered.</p>
    # @!attribute partition_date_source
    #   <p>Specifies the partition date source for the partitioned prefix. <code>PartitionDateSource</code> can
    #         be <code>EventTime</code> or <code>DeliveryTime</code>.</p>
    #            <p>For <code>DeliveryTime</code>, the time in the log file names corresponds to the delivery time for
    #         the log files. </p>
    #            <p> For <code>EventTime</code>, The logs delivered are for a specific day only. The year, month, and
    #         day correspond to the day on which the event occurred, and the hour, minutes and seconds are set to 00
    #         in the key.</p>
    #   @return [String]
    class PartitionedPrefix < Struct.new(
      nil,
      :partition_date_source,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The container element for a bucket's policy status.</p>
    # @!attribute is_public
    #   <p>The policy status for this bucket. <code>TRUE</code> indicates that this bucket is public.
    #           <code>FALSE</code> indicates that the bucket is not public.</p>
    #   @return [Boolean]
    class PolicyStatus < Struct.new(
      nil,
      :is_public,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>This data type contains information about progress of an operation.</p>
    # @!attribute bytes_scanned
    #   <p>The current number of object bytes scanned.</p>
    #   @return [Integer]
    # @!attribute bytes_processed
    #   <p>The current number of uncompressed object bytes processed.</p>
    #   @return [Integer]
    # @!attribute bytes_returned
    #   <p>The current number of bytes of records payload data returned.</p>
    #   @return [Integer]
    class Progress < Struct.new(
      nil,
      :bytes_scanned,
      :bytes_processed,
      :bytes_returned,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>This data type contains information about the progress event of an operation.</p>
    # @!attribute details
    #   <p>The Progress event details.</p>
    #   @return [Types::Progress]
    class ProgressEvent < Struct.new(
      nil,
      :details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The PublicAccessBlock configuration that you want to apply to this Amazon S3 bucket. You can
    #       enable the configuration options in any combination. Bucket-level settings work alongside
    #       account-level settings (which may inherit from organization-level policies). For more
    #       information about when Amazon S3 considers a bucket or object public, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/access-control-block-public-access.html#access-control-block-public-access-policy-status">The Meaning of "Public"</a> in the <i>Amazon S3 User Guide</i>. </p>
    # @!attribute block_public_acls
    #   <p>Specifies whether Amazon S3 should block public access control lists (ACLs) for this bucket and objects
    #         in this bucket. Setting this element to <code>TRUE</code> causes the following behavior:</p>
    #            <ul>
    #               <li>
    #                  <p>PUT Bucket ACL and PUT Object ACL calls fail if the specified ACL is public.</p>
    #               </li>
    #               <li>
    #                  <p>PUT Object calls fail if the request includes a public ACL.</p>
    #               </li>
    #               <li>
    #                  <p>PUT Bucket calls fail if the request includes a public ACL.</p>
    #               </li>
    #            </ul>
    #            <p>Enabling this setting doesn't affect existing policies or ACLs.</p>
    #   @return [Boolean]
    # @!attribute ignore_public_acls
    #   <p>Specifies whether Amazon S3 should ignore public ACLs for this bucket and objects in this bucket. Setting
    #         this element to <code>TRUE</code> causes Amazon S3 to ignore all public ACLs on this bucket and objects in
    #         this bucket.</p>
    #            <p>Enabling this setting doesn't affect the persistence of any existing ACLs and doesn't prevent new
    #         public ACLs from being set.</p>
    #   @return [Boolean]
    # @!attribute block_public_policy
    #   <p>Specifies whether Amazon S3 should block public bucket policies for this bucket. Setting this element to
    #           <code>TRUE</code> causes Amazon S3 to reject calls to PUT Bucket policy if the specified bucket policy
    #         allows public access. </p>
    #            <p>Enabling this setting doesn't affect existing bucket policies.</p>
    #   @return [Boolean]
    # @!attribute restrict_public_buckets
    #   <p>Specifies whether Amazon S3 should restrict public bucket policies for this bucket. Setting this element
    #         to <code>TRUE</code> restricts access to this bucket to only Amazon Web Services service principals and
    #         authorized users within this account if the bucket has a public policy.</p>
    #            <p>Enabling this setting doesn't affect previously stored bucket policies, except that public and
    #         cross-account access within any public bucket policy, including non-public delegation to specific
    #         accounts, is blocked.</p>
    #   @return [Boolean]
    class PublicAccessBlockConfiguration < Struct.new(
      nil,
      :block_public_acls,
      :ignore_public_acls,
      :block_public_policy,
      :restrict_public_buckets,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bucket
    #   <p>The name of the general purpose bucket.</p>
    #   @return [String]
    # @!attribute content_md5
    #   <p>The MD5 hash of the <code>PutBucketAbac</code> request body. </p>
    #            <p>For requests made using the Amazon Web Services Command Line Interface (CLI) or Amazon Web Services SDKs, this field is calculated automatically.</p>
    #   @return [String]
    # @!attribute checksum_algorithm
    #   <p>Indicates the algorithm that you want Amazon S3 to use to create the checksum. For more
    #            information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html"> Checking object integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The Amazon Web Services account ID of the general purpose bucket's owner. </p>
    #   @return [String]
    # @!attribute abac_status
    #   <p>The ABAC status of the general purpose bucket. When ABAC is enabled for the general purpose bucket, you can use tags to manage access to the general purpose buckets as well as for cost tracking purposes. When ABAC is disabled for the general purpose buckets, you can only use tags for cost tracking purposes. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/buckets-tagging.html">Using tags with S3 general purpose buckets</a>. </p>
    #   @return [Types::AbacStatus]
    class PutBucketAbacRequest < Struct.new(
      nil,
      :bucket,
      :content_md5,
      :checksum_algorithm,
      :expected_bucket_owner,
      :abac_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bucket
    #   <p>The name of the bucket for which the accelerate configuration is set.</p>
    #   @return [String]
    # @!attribute accelerate_configuration
    #   <p>Container for setting the transfer acceleration state.</p>
    #   @return [Types::AccelerateConfiguration]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    # @!attribute checksum_algorithm
    #   <p>Indicates the algorithm used to create the checksum for the request when you use the SDK. This header will not provide any
    #       additional functionality if you don't use the SDK. When you send this header, there must be a corresponding <code>x-amz-checksum</code> or
    #       <code>x-amz-trailer</code> header sent. Otherwise, Amazon S3 fails the request with the HTTP status code <code>400 Bad Request</code>. For more
    #       information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #       the <i>Amazon S3 User Guide</i>.</p>
    #            <p>If you provide an individual checksum, Amazon S3 ignores any provided <code>ChecksumAlgorithm</code>
    #         parameter.</p>
    #   @return [String]
    class PutBucketAccelerateConfigurationRequest < Struct.new(
      nil,
      :bucket,
      :accelerate_configuration,
      :expected_bucket_owner,
      :checksum_algorithm,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute acl
    #   <p>The canned ACL to apply to the bucket.</p>
    #   @return [String]
    # @!attribute access_control_policy
    #   <p>Contains the elements that set the ACL permissions for an object per grantee.</p>
    #   @return [Types::AccessControlPolicy]
    # @!attribute bucket
    #   <p>The bucket to which to apply the ACL.</p>
    #   @return [String]
    # @!attribute content_md5
    #   <p>The Base64 encoded 128-bit <code>MD5</code> digest of the data. This header must be used as a
    #         message integrity check to verify that the request body was not corrupted in transit. For more
    #         information, go to <a href="http://www.ietf.org/rfc/rfc1864.txt">RFC 1864.</a>
    #            </p>
    #            <p>For requests made using the Amazon Web Services Command Line Interface (CLI) or Amazon Web Services SDKs, this field is calculated automatically.</p>
    #   @return [String]
    # @!attribute checksum_algorithm
    #   <p>Indicates the algorithm used to create the checksum for the request when you use the SDK. This header will not provide any
    #       additional functionality if you don't use the SDK. When you send this header, there must be a corresponding <code>x-amz-checksum</code> or
    #       <code>x-amz-trailer</code> header sent. Otherwise, Amazon S3 fails the request with the HTTP status code <code>400 Bad Request</code>. For more
    #       information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #       the <i>Amazon S3 User Guide</i>.</p>
    #            <p>If you provide an individual checksum, Amazon S3 ignores any provided <code>ChecksumAlgorithm</code>
    #         parameter.</p>
    #   @return [String]
    # @!attribute grant_full_control
    #   <p>Allows grantee the read, write, read ACP, and write ACP permissions on the bucket.</p>
    #   @return [String]
    # @!attribute grant_read
    #   <p>Allows grantee to list the objects in the bucket.</p>
    #   @return [String]
    # @!attribute grant_read_acp
    #   <p>Allows grantee to read the bucket ACL.</p>
    #   @return [String]
    # @!attribute grant_write
    #   <p>Allows grantee to create new objects in the bucket.</p>
    #            <p>For the bucket and object owners of existing objects, also allows deletions and overwrites of those
    #         objects.</p>
    #   @return [String]
    # @!attribute grant_write_acp
    #   <p>Allows grantee to write the ACL for the applicable bucket.</p>
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    class PutBucketAclRequest < Struct.new(
      nil,
      :acl,
      :access_control_policy,
      :bucket,
      :content_md5,
      :checksum_algorithm,
      :grant_full_control,
      :grant_read,
      :grant_read_acp,
      :grant_write,
      :grant_write_acp,
      :expected_bucket_owner,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bucket
    #   <p>The name of the bucket to which an analytics configuration is stored.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID that identifies the analytics configuration.</p>
    #   @return [String]
    # @!attribute analytics_configuration
    #   <p>The configuration and any analyses for the analytics filter.</p>
    #   @return [Types::AnalyticsConfiguration]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    class PutBucketAnalyticsConfigurationRequest < Struct.new(
      nil,
      :bucket,
      :id,
      :analytics_configuration,
      :expected_bucket_owner,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bucket
    #   <p>Specifies the bucket impacted by the <code>cors</code>configuration.</p>
    #   @return [String]
    # @!attribute cors_configuration
    #   <p>Describes the cross-origin access configuration for objects in an Amazon S3 bucket. For more information,
    #         see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/cors.html">Enabling Cross-Origin Resource
    #           Sharing</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [Types::CORSConfiguration]
    # @!attribute content_md5
    #   <p>The Base64 encoded 128-bit <code>MD5</code> digest of the data. This header must be used as a
    #         message integrity check to verify that the request body was not corrupted in transit. For more
    #         information, go to <a href="http://www.ietf.org/rfc/rfc1864.txt">RFC 1864.</a>
    #            </p>
    #            <p>For requests made using the Amazon Web Services Command Line Interface (CLI) or Amazon Web Services SDKs, this field is calculated automatically.</p>
    #   @return [String]
    # @!attribute checksum_algorithm
    #   <p>Indicates the algorithm used to create the checksum for the request when you use the SDK. This header will not provide any
    #       additional functionality if you don't use the SDK. When you send this header, there must be a corresponding <code>x-amz-checksum</code> or
    #       <code>x-amz-trailer</code> header sent. Otherwise, Amazon S3 fails the request with the HTTP status code <code>400 Bad Request</code>. For more
    #       information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #       the <i>Amazon S3 User Guide</i>.</p>
    #            <p>If you provide an individual checksum, Amazon S3 ignores any provided <code>ChecksumAlgorithm</code>
    #         parameter.</p>
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    class PutBucketCorsRequest < Struct.new(
      nil,
      :bucket,
      :cors_configuration,
      :content_md5,
      :checksum_algorithm,
      :expected_bucket_owner,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bucket
    #   <p>Specifies default encryption for a bucket using server-side encryption with different key
    #         options.</p>
    #            <p>
    #               <b>Directory buckets </b> - When you use this operation with a directory bucket, you must use path-style requests in the format <code>https://s3express-control.<i>region-code</i>.amazonaws.com/<i>bucket-name</i>
    #               </code>. Virtual-hosted-style requests aren't supported. Directory bucket names must be unique in the chosen Zone (Availability Zone or Local Zone). Bucket names must also follow the format <code>
    #                  <i>bucket-base-name</i>--<i>zone-id</i>--x-s3</code> (for example, <code>
    #                  <i>DOC-EXAMPLE-BUCKET</i>--<i>usw2-az1</i>--x-s3</code>). For information about bucket naming restrictions, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/directory-bucket-naming-rules.html">Directory bucket naming rules</a> in the <i>Amazon S3 User Guide</i>
    #            </p>
    #   @return [String]
    # @!attribute content_md5
    #   <p>The Base64 encoded 128-bit <code>MD5</code> digest of the server-side encryption
    #         configuration.</p>
    #            <p>For requests made using the Amazon Web Services Command Line Interface (CLI) or Amazon Web Services SDKs, this field is calculated automatically.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute checksum_algorithm
    #   <p>Indicates the algorithm used to create the checksum for the request when you use the SDK. This header will not provide any
    #       additional functionality if you don't use the SDK. When you send this header, there must be a corresponding <code>x-amz-checksum</code> or
    #       <code>x-amz-trailer</code> header sent. Otherwise, Amazon S3 fails the request with the HTTP status code <code>400 Bad Request</code>. For more
    #       information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #       the <i>Amazon S3 User Guide</i>.</p>
    #            <p>If you provide an individual checksum, Amazon S3 ignores any provided <code>ChecksumAlgorithm</code>
    #         parameter.</p>
    #            <note>
    #               <p>For directory buckets, when you use Amazon Web Services SDKs, <code>CRC32</code> is the default checksum algorithm that's used for performance.</p>
    #            </note>
    #   @return [String]
    # @!attribute server_side_encryption_configuration
    #   <p>Specifies the default server-side-encryption configuration.</p>
    #   @return [Types::ServerSideEncryptionConfiguration]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #            <note>
    #               <p>For directory buckets, this header is not supported in this API operation. If you specify this header, the request fails with the HTTP status code
    #   <code>501 Not Implemented</code>.</p>
    #            </note>
    #   @return [String]
    class PutBucketEncryptionRequest < Struct.new(
      nil,
      :bucket,
      :content_md5,
      :checksum_algorithm,
      :server_side_encryption_configuration,
      :expected_bucket_owner,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bucket
    #   <p>The name of the Amazon S3 bucket whose configuration you want to modify or retrieve.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID used to identify the S3 Intelligent-Tiering configuration.</p>
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    # @!attribute intelligent_tiering_configuration
    #   <p>Container for S3 Intelligent-Tiering configuration.</p>
    #   @return [Types::IntelligentTieringConfiguration]
    class PutBucketIntelligentTieringConfigurationRequest < Struct.new(
      nil,
      :bucket,
      :id,
      :expected_bucket_owner,
      :intelligent_tiering_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bucket
    #   <p>The name of the bucket where the inventory configuration will be stored.</p>
    #            <p>
    #               <b>Directory buckets </b> - When you use this operation with a directory bucket, you must use path-style requests in the format <code>https://s3express-control.<i>region-code</i>.amazonaws.com/<i>bucket-name</i>
    #               </code>. Virtual-hosted-style requests aren't supported. Directory bucket names must be unique in the chosen Zone (Availability Zone or Local Zone). Bucket names must also follow the format <code>
    #                  <i>bucket-base-name</i>--<i>zone-id</i>--x-s3</code> (for example, <code>
    #                  <i>DOC-EXAMPLE-BUCKET</i>--<i>usw2-az1</i>--x-s3</code>). For information about bucket naming restrictions, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/directory-bucket-naming-rules.html">Directory bucket naming rules</a> in the <i>Amazon S3 User Guide</i>
    #            </p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID used to identify the inventory configuration.</p>
    #   @return [String]
    # @!attribute inventory_configuration
    #   <p>Specifies the inventory configuration.</p>
    #   @return [Types::InventoryConfiguration]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #            <note>
    #               <p>For directory buckets, this header is not supported in this API operation. If you specify this header, the request fails with the HTTP status code
    #   <code>501 Not Implemented</code>.</p>
    #            </note>
    #   @return [String]
    class PutBucketInventoryConfigurationRequest < Struct.new(
      nil,
      :bucket,
      :id,
      :inventory_configuration,
      :expected_bucket_owner,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute transition_default_minimum_object_size
    #   <p>Indicates which default minimum object size behavior is applied to the lifecycle
    #         configuration.</p>
    #            <note>
    #               <p>This parameter applies to general purpose buckets only. It is not supported for directory bucket
    #           lifecycle configurations.</p>
    #            </note>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>all_storage_classes_128K</code> - Objects smaller than 128 KB will not transition to
    #             any storage class by default. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>varies_by_storage_class</code> - Objects smaller than 128 KB will transition to Glacier
    #             Flexible Retrieval or Glacier Deep Archive storage classes. By default, all other storage classes
    #             will prevent transitions smaller than 128 KB. </p>
    #               </li>
    #            </ul>
    #            <p>To customize the minimum object size for any transition you can add a filter that specifies a custom
    #           <code>ObjectSizeGreaterThan</code> or <code>ObjectSizeLessThan</code> in the body of your transition
    #         rule. Custom filters always take precedence over the default transition behavior.</p>
    #   @return [String]
    class PutBucketLifecycleConfigurationOutput < Struct.new(
      nil,
      :transition_default_minimum_object_size,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bucket
    #   <p>The name of the bucket for which to set the configuration.</p>
    #   @return [String]
    # @!attribute checksum_algorithm
    #   <p>Indicates the algorithm used to create the checksum for the request when you use the SDK. This header will not provide any
    #       additional functionality if you don't use the SDK. When you send this header, there must be a corresponding <code>x-amz-checksum</code> or
    #       <code>x-amz-trailer</code> header sent. Otherwise, Amazon S3 fails the request with the HTTP status code <code>400 Bad Request</code>. For more
    #       information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #       the <i>Amazon S3 User Guide</i>.</p>
    #            <p>If you provide an individual checksum, Amazon S3 ignores any provided <code>ChecksumAlgorithm</code>
    #         parameter.</p>
    #   @return [String]
    # @!attribute lifecycle_configuration
    #   <p>Container for lifecycle rules. You can add as many as 1,000 rules.</p>
    #   @return [Types::BucketLifecycleConfiguration]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #            <note>
    #               <p>This parameter applies to general purpose buckets only. It is not supported for directory bucket
    #           lifecycle configurations.</p>
    #            </note>
    #   @return [String]
    # @!attribute transition_default_minimum_object_size
    #   <p>Indicates which default minimum object size behavior is applied to the lifecycle
    #         configuration.</p>
    #            <note>
    #               <p>This parameter applies to general purpose buckets only. It is not supported for directory bucket
    #           lifecycle configurations.</p>
    #            </note>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>all_storage_classes_128K</code> - Objects smaller than 128 KB will not transition to
    #             any storage class by default. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>varies_by_storage_class</code> - Objects smaller than 128 KB will transition to Glacier
    #             Flexible Retrieval or Glacier Deep Archive storage classes. By default, all other storage classes
    #             will prevent transitions smaller than 128 KB. </p>
    #               </li>
    #            </ul>
    #            <p>To customize the minimum object size for any transition you can add a filter that specifies a custom
    #           <code>ObjectSizeGreaterThan</code> or <code>ObjectSizeLessThan</code> in the body of your transition
    #         rule. Custom filters always take precedence over the default transition behavior.</p>
    #   @return [String]
    class PutBucketLifecycleConfigurationRequest < Struct.new(
      nil,
      :bucket,
      :checksum_algorithm,
      :lifecycle_configuration,
      :expected_bucket_owner,
      :transition_default_minimum_object_size,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bucket
    #   <p>The name of the bucket for which to set the logging parameters.</p>
    #   @return [String]
    # @!attribute bucket_logging_status
    #   <p>Container for logging status information.</p>
    #   @return [Types::BucketLoggingStatus]
    # @!attribute content_md5
    #   <p>The MD5 hash of the <code>PutBucketLogging</code> request body.</p>
    #            <p>For requests made using the Amazon Web Services Command Line Interface (CLI) or Amazon Web Services SDKs, this field is calculated automatically.</p>
    #   @return [String]
    # @!attribute checksum_algorithm
    #   <p>Indicates the algorithm used to create the checksum for the request when you use the SDK. This header will not provide any
    #       additional functionality if you don't use the SDK. When you send this header, there must be a corresponding <code>x-amz-checksum</code> or
    #       <code>x-amz-trailer</code> header sent. Otherwise, Amazon S3 fails the request with the HTTP status code <code>400 Bad Request</code>. For more
    #       information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #       the <i>Amazon S3 User Guide</i>.</p>
    #            <p>If you provide an individual checksum, Amazon S3 ignores any provided <code>ChecksumAlgorithm</code>
    #         parameter.</p>
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    class PutBucketLoggingRequest < Struct.new(
      nil,
      :bucket,
      :bucket_logging_status,
      :content_md5,
      :checksum_algorithm,
      :expected_bucket_owner,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bucket
    #   <p>The name of the bucket for which the metrics configuration is set.</p>
    #            <p>
    #               <b>Directory buckets </b> - When you use this operation with a directory bucket, you must use path-style requests in the format <code>https://s3express-control.<i>region-code</i>.amazonaws.com/<i>bucket-name</i>
    #               </code>. Virtual-hosted-style requests aren't supported. Directory bucket names must be unique in the chosen Zone (Availability Zone or Local Zone). Bucket names must also follow the format <code>
    #                  <i>bucket-base-name</i>--<i>zone-id</i>--x-s3</code> (for example, <code>
    #                  <i>DOC-EXAMPLE-BUCKET</i>--<i>usw2-az1</i>--x-s3</code>). For information about bucket naming restrictions, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/directory-bucket-naming-rules.html">Directory bucket naming rules</a> in the <i>Amazon S3 User Guide</i>
    #            </p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID used to identify the metrics configuration. The ID has a 64 character limit and can only
    #         contain letters, numbers, periods, dashes, and underscores.</p>
    #   @return [String]
    # @!attribute metrics_configuration
    #   <p>Specifies the metrics configuration.</p>
    #   @return [Types::MetricsConfiguration]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #            <note>
    #               <p>For directory buckets, this header is not supported in this API operation. If you specify this header, the request fails with the HTTP status code
    #   <code>501 Not Implemented</code>.</p>
    #            </note>
    #   @return [String]
    class PutBucketMetricsConfigurationRequest < Struct.new(
      nil,
      :bucket,
      :id,
      :metrics_configuration,
      :expected_bucket_owner,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bucket
    #   <p>The name of the bucket.</p>
    #   @return [String]
    # @!attribute notification_configuration
    #   <p>A container for specifying the notification configuration of the bucket. If this element is empty,
    #         notifications are turned off for the bucket.</p>
    #   @return [Types::NotificationConfiguration]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    # @!attribute skip_destination_validation
    #   <p>Skips validation of Amazon SQS, Amazon SNS, and Lambda destinations.
    #         True or false value.</p>
    #   @return [Boolean]
    class PutBucketNotificationConfigurationRequest < Struct.new(
      nil,
      :bucket,
      :notification_configuration,
      :expected_bucket_owner,
      :skip_destination_validation,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bucket
    #   <p>The name of the Amazon S3 bucket whose <code>OwnershipControls</code> you want to set.</p>
    #   @return [String]
    # @!attribute content_md5
    #   <p>The MD5 hash of the <code>OwnershipControls</code> request body. </p>
    #            <p>For requests made using the Amazon Web Services Command Line Interface (CLI) or Amazon Web Services SDKs, this field is calculated automatically.</p>
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    # @!attribute ownership_controls
    #   <p>The <code>OwnershipControls</code> (BucketOwnerEnforced, BucketOwnerPreferred, or ObjectWriter) that
    #         you want to apply to this Amazon S3 bucket.</p>
    #   @return [Types::OwnershipControls]
    # @!attribute checksum_algorithm
    #   <p> Indicates the algorithm used to create the checksum for the object when you use the SDK. This
    #         header will not provide any additional functionality if you don't use the SDK. When you send this
    #         header, there must be a corresponding <code>x-amz-checksum-<i>algorithm</i>
    #               </code> header
    #         sent. Otherwise, Amazon S3 fails the request with the HTTP status code <code>400 Bad Request</code>. For more
    #         information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #         the <i>Amazon S3 User Guide</i>.</p>
    #            <p>If you provide an individual checksum, Amazon S3 ignores any provided <code>ChecksumAlgorithm</code>
    #         parameter. </p>
    #   @return [String]
    class PutBucketOwnershipControlsRequest < Struct.new(
      nil,
      :bucket,
      :content_md5,
      :expected_bucket_owner,
      :ownership_controls,
      :checksum_algorithm,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bucket
    #   <p>The name of the bucket.</p>
    #            <p>
    #               <b>Directory buckets </b> - When you use this operation with a directory bucket, you must use path-style requests in the format <code>https://s3express-control.<i>region-code</i>.amazonaws.com/<i>bucket-name</i>
    #               </code>. Virtual-hosted-style requests aren't supported. Directory bucket names must be unique in the chosen Zone (Availability Zone or Local Zone). Bucket names must also follow the format <code>
    #                  <i>bucket-base-name</i>--<i>zone-id</i>--x-s3</code> (for example, <code>
    #                  <i>DOC-EXAMPLE-BUCKET</i>--<i>usw2-az1</i>--x-s3</code>). For information about bucket naming restrictions, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/directory-bucket-naming-rules.html">Directory bucket naming rules</a> in the <i>Amazon S3 User Guide</i>
    #            </p>
    #   @return [String]
    # @!attribute content_md5
    #   <p>The MD5 hash of the request body.</p>
    #            <p>For requests made using the Amazon Web Services Command Line Interface (CLI) or Amazon Web Services SDKs, this field is calculated automatically.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute checksum_algorithm
    #   <p>Indicates the algorithm used to create the checksum for the request when you use the SDK. This header will not provide any
    #       additional functionality if you don't use the SDK. When you send this header, there must be a corresponding <code>x-amz-checksum-<i>algorithm</i>
    #               </code> or
    #       <code>x-amz-trailer</code> header sent. Otherwise, Amazon S3 fails the request with the HTTP status code <code>400 Bad Request</code>.</p>
    #            <p>For the <code>x-amz-checksum-<i>algorithm</i>
    #               </code> header, replace <code>
    #                  <i>algorithm</i>
    #               </code> with the supported algorithm from the following list: </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CRC32</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CRC32C</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CRC64NVME</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MD5</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SHA1</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SHA256</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SHA512</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>XXHASH3</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>XXHASH64</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>XXHASH128</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>For more
    #       information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #       the <i>Amazon S3 User Guide</i>.</p>
    #            <p>If the individual checksum value you provide through <code>x-amz-checksum-<i>algorithm</i>
    #               </code> doesn't match the checksum algorithm you set through <code>x-amz-sdk-checksum-algorithm</code>, Amazon S3 fails the request with a <code>BadDigest</code> error.</p>
    #            <note>
    #               <p>For directory buckets, when you use Amazon Web Services SDKs, <code>CRC32</code> is the default checksum algorithm that's used for performance.</p>
    #            </note>
    #   @return [String]
    # @!attribute confirm_remove_self_bucket_access
    #   <p>Set this parameter to true to confirm that you want to remove your permissions to change this bucket
    #         policy in the future.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [Boolean]
    # @!attribute policy
    #   <p>The bucket policy as a JSON document.</p>
    #            <p>For directory buckets, the only IAM action supported in the bucket policy is
    #           <code>s3express:CreateSession</code>.</p>
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #            <note>
    #               <p>For directory buckets, this header is not supported in this API operation. If you specify this header, the request fails with the HTTP status code
    #   <code>501 Not Implemented</code>.</p>
    #            </note>
    #   @return [String]
    class PutBucketPolicyRequest < Struct.new(
      nil,
      :bucket,
      :content_md5,
      :checksum_algorithm,
      :confirm_remove_self_bucket_access,
      :policy,
      :expected_bucket_owner,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bucket
    #   <p>The name of the bucket</p>
    #   @return [String]
    # @!attribute content_md5
    #   <p>The Base64 encoded 128-bit <code>MD5</code> digest of the data. You must use this header as a
    #         message integrity check to verify that the request body was not corrupted in transit. For more
    #         information, see <a href="http://www.ietf.org/rfc/rfc1864.txt">RFC 1864</a>.</p>
    #            <p>For requests made using the Amazon Web Services Command Line Interface (CLI) or Amazon Web Services SDKs, this field is calculated automatically.</p>
    #   @return [String]
    # @!attribute checksum_algorithm
    #   <p>Indicates the algorithm used to create the checksum for the request when you use the SDK. This header will not provide any
    #       additional functionality if you don't use the SDK. When you send this header, there must be a corresponding <code>x-amz-checksum</code> or
    #       <code>x-amz-trailer</code> header sent. Otherwise, Amazon S3 fails the request with the HTTP status code <code>400 Bad Request</code>. For more
    #       information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #       the <i>Amazon S3 User Guide</i>.</p>
    #            <p>If you provide an individual checksum, Amazon S3 ignores any provided <code>ChecksumAlgorithm</code>
    #         parameter.</p>
    #   @return [String]
    # @!attribute replication_configuration
    #   <p>A container for replication rules. You can add up to 1,000 rules. The maximum size of a replication
    #         configuration is 2 MB.</p>
    #   @return [Types::ReplicationConfiguration]
    # @!attribute token
    #   <p>A token to allow Object Lock to be enabled for an existing bucket.</p>
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    class PutBucketReplicationRequest < Struct.new(
      nil,
      :bucket,
      :content_md5,
      :checksum_algorithm,
      :replication_configuration,
      :token,
      :expected_bucket_owner,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bucket
    #   <p>The bucket name.</p>
    #   @return [String]
    # @!attribute content_md5
    #   <p>The Base64 encoded 128-bit <code>MD5</code> digest of the data. You must use this header as a
    #         message integrity check to verify that the request body was not corrupted in transit. For more
    #         information, see <a href="http://www.ietf.org/rfc/rfc1864.txt">RFC 1864</a>.</p>
    #            <p>For requests made using the Amazon Web Services Command Line Interface (CLI) or Amazon Web Services SDKs, this field is calculated automatically.</p>
    #   @return [String]
    # @!attribute checksum_algorithm
    #   <p>Indicates the algorithm used to create the checksum for the request when you use the SDK. This header will not provide any
    #       additional functionality if you don't use the SDK. When you send this header, there must be a corresponding <code>x-amz-checksum</code> or
    #       <code>x-amz-trailer</code> header sent. Otherwise, Amazon S3 fails the request with the HTTP status code <code>400 Bad Request</code>. For more
    #       information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #       the <i>Amazon S3 User Guide</i>.</p>
    #            <p>If you provide an individual checksum, Amazon S3 ignores any provided <code>ChecksumAlgorithm</code>
    #         parameter.</p>
    #   @return [String]
    # @!attribute request_payment_configuration
    #   <p>Container for Payer.</p>
    #   @return [Types::RequestPaymentConfiguration]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    class PutBucketRequestPaymentRequest < Struct.new(
      nil,
      :bucket,
      :content_md5,
      :checksum_algorithm,
      :request_payment_configuration,
      :expected_bucket_owner,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bucket
    #   <p>The bucket name.</p>
    #   @return [String]
    # @!attribute content_md5
    #   <p>The Base64 encoded 128-bit <code>MD5</code> digest of the data. You must use this header as a
    #         message integrity check to verify that the request body was not corrupted in transit. For more
    #         information, see <a href="http://www.ietf.org/rfc/rfc1864.txt">RFC 1864</a>.</p>
    #            <p>For requests made using the Amazon Web Services Command Line Interface (CLI) or Amazon Web Services SDKs, this field is calculated automatically.</p>
    #   @return [String]
    # @!attribute checksum_algorithm
    #   <p>Indicates the algorithm used to create the checksum for the request when you use the SDK. This header will not provide any
    #       additional functionality if you don't use the SDK. When you send this header, there must be a corresponding <code>x-amz-checksum</code> or
    #       <code>x-amz-trailer</code> header sent. Otherwise, Amazon S3 fails the request with the HTTP status code <code>400 Bad Request</code>. For more
    #       information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #       the <i>Amazon S3 User Guide</i>.</p>
    #            <p>If you provide an individual checksum, Amazon S3 ignores any provided <code>ChecksumAlgorithm</code>
    #         parameter.</p>
    #   @return [String]
    # @!attribute tagging
    #   <p>Container for the <code>TagSet</code> and <code>Tag</code> elements.</p>
    #   @return [Types::Tagging]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    class PutBucketTaggingRequest < Struct.new(
      nil,
      :bucket,
      :content_md5,
      :checksum_algorithm,
      :tagging,
      :expected_bucket_owner,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bucket
    #   <p>The bucket name.</p>
    #   @return [String]
    # @!attribute content_md5
    #   <p>>The Base64 encoded 128-bit <code>MD5</code> digest of the data. You must use this header as a
    #         message integrity check to verify that the request body was not corrupted in transit. For more
    #         information, see <a href="http://www.ietf.org/rfc/rfc1864.txt">RFC 1864</a>.</p>
    #            <p>For requests made using the Amazon Web Services Command Line Interface (CLI) or Amazon Web Services SDKs, this field is calculated automatically.</p>
    #   @return [String]
    # @!attribute checksum_algorithm
    #   <p>Indicates the algorithm used to create the checksum for the request when you use the SDK. This header will not provide any
    #       additional functionality if you don't use the SDK. When you send this header, there must be a corresponding <code>x-amz-checksum</code> or
    #       <code>x-amz-trailer</code> header sent. Otherwise, Amazon S3 fails the request with the HTTP status code <code>400 Bad Request</code>. For more
    #       information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #       the <i>Amazon S3 User Guide</i>.</p>
    #            <p>If you provide an individual checksum, Amazon S3 ignores any provided <code>ChecksumAlgorithm</code>
    #         parameter.</p>
    #   @return [String]
    # @!attribute mfa
    #   <p>The concatenation of the authentication device's serial number, a space, and the value that is displayed on your authentication device. The serial number is the number that uniquely identifies the MFA device. For physical MFA devices, this is the unique serial number that's provided with the device. For virtual MFA devices, the serial number is the device ARN. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/manage-versioning-examples.html">Enabling versioning on buckets</a> and <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/MultiFactorAuthenticationDelete.html">Configuring MFA delete</a> in the <i>Amazon Simple Storage Service User Guide</i>.</p>
    #   @return [String]
    # @!attribute versioning_configuration
    #   <p>Container for setting the versioning state.</p>
    #   @return [Types::VersioningConfiguration]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    class PutBucketVersioningRequest < Struct.new(
      nil,
      :bucket,
      :content_md5,
      :checksum_algorithm,
      :mfa,
      :versioning_configuration,
      :expected_bucket_owner,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bucket
    #   <p>The bucket name.</p>
    #   @return [String]
    # @!attribute content_md5
    #   <p>The Base64 encoded 128-bit <code>MD5</code> digest of the data. You must use this header as a
    #         message integrity check to verify that the request body was not corrupted in transit. For more
    #         information, see <a href="http://www.ietf.org/rfc/rfc1864.txt">RFC 1864</a>.</p>
    #            <p>For requests made using the Amazon Web Services Command Line Interface (CLI) or Amazon Web Services SDKs, this field is calculated automatically.</p>
    #   @return [String]
    # @!attribute checksum_algorithm
    #   <p>Indicates the algorithm used to create the checksum for the request when you use the SDK. This header will not provide any
    #       additional functionality if you don't use the SDK. When you send this header, there must be a corresponding <code>x-amz-checksum</code> or
    #       <code>x-amz-trailer</code> header sent. Otherwise, Amazon S3 fails the request with the HTTP status code <code>400 Bad Request</code>. For more
    #       information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #       the <i>Amazon S3 User Guide</i>.</p>
    #            <p>If you provide an individual checksum, Amazon S3 ignores any provided <code>ChecksumAlgorithm</code>
    #         parameter.</p>
    #   @return [String]
    # @!attribute website_configuration
    #   <p>Container for the request.</p>
    #   @return [Types::WebsiteConfiguration]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    class PutBucketWebsiteRequest < Struct.new(
      nil,
      :bucket,
      :content_md5,
      :checksum_algorithm,
      :website_configuration,
      :expected_bucket_owner,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute request_charged
    #   <p>If present, indicates that the requester was successfully charged for the request. For more
    #         information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/RequesterPaysBuckets.html">Using Requester Pays buckets for storage transfers and usage</a> in the <i>Amazon Simple
    #           Storage Service user guide</i>.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    class PutObjectAclOutput < Struct.new(
      nil,
      :request_charged,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute acl
    #   <p>The canned ACL to apply to the object. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#CannedACL">Canned ACL</a>.</p>
    #   @return [String]
    # @!attribute access_control_policy
    #   <p>Contains the elements that set the ACL permissions for an object per grantee.</p>
    #   @return [Types::AccessControlPolicy]
    # @!attribute bucket
    #   <p>The bucket name that contains the object to which you want to attach the ACL. </p>
    #            <p>
    #               <b>Access points</b> - When you use this action with an access point for general purpose buckets, you must provide the alias of the access point in place of the bucket name or specify the access point ARN. When you use this action with an access point for directory buckets, you must provide the access point name in place of the bucket name. When using the access point ARN, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <p>
    #               <b>S3 on Outposts</b> - When you use this action with S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the
    #                        form <code>
    #                  <i>AccessPointName</i>-<i>AccountId</i>.<i>outpostID</i>.s3-outposts.<i>Region</i>.amazonaws.com</code>. When you use this action with S3 on Outposts, the destination bucket must be the Outposts access point ARN or the access point alias. For more information about S3 on Outposts, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html">What is S3 on Outposts?</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute content_md5
    #   <p>The Base64 encoded 128-bit <code>MD5</code> digest of the data. This header must be used as a
    #         message integrity check to verify that the request body was not corrupted in transit. For more
    #         information, go to <a href="http://www.ietf.org/rfc/rfc1864.txt">RFC 1864.></a>
    #            </p>
    #            <p>For requests made using the Amazon Web Services Command Line Interface (CLI) or Amazon Web Services SDKs, this field is calculated automatically.</p>
    #   @return [String]
    # @!attribute checksum_algorithm
    #   <p>Indicates the algorithm used to create the checksum for the object when you use the SDK. This header will not provide any
    #       additional functionality if you don't use the SDK. When you send this header, there must be a corresponding <code>x-amz-checksum</code> or
    #       <code>x-amz-trailer</code> header sent. Otherwise, Amazon S3 fails the request with the HTTP status code <code>400 Bad Request</code>. For more
    #       information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #       the <i>Amazon S3 User Guide</i>.</p>
    #            <p>If you provide an individual checksum, Amazon S3 ignores any provided <code>ChecksumAlgorithm</code>
    #         parameter.</p>
    #   @return [String]
    # @!attribute grant_full_control
    #   <p>Allows grantee the read, write, read ACP, and write ACP permissions on the bucket.</p>
    #            <p>This functionality is not supported for Amazon S3 on Outposts.</p>
    #   @return [String]
    # @!attribute grant_read
    #   <p>Allows grantee to list the objects in the bucket.</p>
    #            <p>This functionality is not supported for Amazon S3 on Outposts.</p>
    #   @return [String]
    # @!attribute grant_read_acp
    #   <p>Allows grantee to read the bucket ACL.</p>
    #            <p>This functionality is not supported for Amazon S3 on Outposts.</p>
    #   @return [String]
    # @!attribute grant_write
    #   <p>Allows grantee to create new objects in the bucket.</p>
    #            <p>For the bucket and object owners of existing objects, also allows deletions and overwrites of those
    #         objects.</p>
    #   @return [String]
    # @!attribute grant_write_acp
    #   <p>Allows grantee to write the ACL for the applicable bucket.</p>
    #            <p>This functionality is not supported for Amazon S3 on Outposts.</p>
    #   @return [String]
    # @!attribute key
    #   <p>Key for which the PUT action was initiated.</p>
    #   @return [String]
    # @!attribute request_payer
    #   <p>Confirms that the requester knows that they will be charged for the request. Bucket owners need not
    #         specify this parameter in their requests. If either the source or destination S3 bucket has Requester
    #         Pays enabled, the requester will pay for the corresponding charges. For information about
    #         downloading objects from Requester Pays buckets, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html">Downloading Objects in Requester Pays
    #           Buckets</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute version_id
    #   <p>Version ID used to reference a specific version of the object.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    class PutObjectAclRequest < Struct.new(
      nil,
      :acl,
      :access_control_policy,
      :bucket,
      :content_md5,
      :checksum_algorithm,
      :grant_full_control,
      :grant_read,
      :grant_read_acp,
      :grant_write,
      :grant_write_acp,
      :key,
      :request_payer,
      :version_id,
      :expected_bucket_owner,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute key
    #   <p>The object key.</p>
    #   @return [String]
    # @!attribute annotation_name
    #   <p>The name of the annotation.</p>
    #   @return [String]
    # @!attribute object_version_id
    #   <p>The version ID of the object that the annotation was attached to.</p>
    #   @return [String]
    # @!attribute e_tag
    #   <p>The entity tag of the annotation.</p>
    #   @return [String]
    # @!attribute checksum_crc32
    #   <p>The CRC32 checksum of the stored annotation.</p>
    #   @return [String]
    # @!attribute checksum_crc32_c
    #   <p>The CRC32C checksum of the stored annotation.</p>
    #   @return [String]
    # @!attribute checksum_crc64_nvme
    #   <p>The CRC64NVME checksum of the stored annotation.</p>
    #   @return [String]
    # @!attribute checksum_sha1
    #   <p>The SHA1 checksum of the stored annotation.</p>
    #   @return [String]
    # @!attribute checksum_sha256
    #   <p>The SHA256 checksum of the stored annotation.</p>
    #   @return [String]
    # @!attribute checksum_sha512
    #   <p>The SHA512 checksum of the stored annotation.</p>
    #   @return [String]
    # @!attribute checksum_md5
    #   <p>The MD5 checksum of the stored annotation.</p>
    #   @return [String]
    # @!attribute checksum_xxhash64
    #   <p>The XXHASH64 checksum of the stored annotation.</p>
    #   @return [String]
    # @!attribute checksum_xxhash3
    #   <p>The XXHASH3 checksum of the stored annotation.</p>
    #   @return [String]
    # @!attribute checksum_xxhash128
    #   <p>The XXHASH128 checksum of the stored annotation.</p>
    #   @return [String]
    # @!attribute checksum_type
    #   <p>The type of checksum used.</p>
    #   @return [String]
    # @!attribute server_side_encryption
    #   <p>The server-side encryption algorithm used to encrypt the annotation.</p>
    #   @return [String]
    # @!attribute request_charged
    #   <p>If present, indicates that the requester was successfully charged for the request. For more
    #         information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/RequesterPaysBuckets.html">Using Requester Pays buckets for storage transfers and usage</a> in the <i>Amazon Simple
    #           Storage Service user guide</i>.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    class PutObjectAnnotationOutput < Struct.new(
      nil,
      :key,
      :annotation_name,
      :object_version_id,
      :e_tag,
      :checksum_crc32,
      :checksum_crc32_c,
      :checksum_crc64_nvme,
      :checksum_sha1,
      :checksum_sha256,
      :checksum_sha512,
      :checksum_md5,
      :checksum_xxhash64,
      :checksum_xxhash3,
      :checksum_xxhash128,
      :checksum_type,
      :server_side_encryption,
      :request_charged,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bucket
    #   <p>The name of the bucket that contains the object.</p>
    #   @return [String]
    # @!attribute key
    #   <p>The object key.</p>
    #   @return [String]
    # @!attribute version_id
    #   <p>The version ID of the object to attach the annotation to.</p>
    #   @return [String]
    # @!attribute annotation_name
    #   <p>The name of the annotation.</p>
    #            <p>Length Constraints: Minimum length of 1. Maximum length of 512 bytes.</p>
    #   @return [String]
    # @!attribute annotation_payload
    #   <p>The annotation payload. Must be between 1 byte and 1 MiB in size, and must be valid UTF-8
    #         encoded text. If the payload contains invalid UTF-8 bytes, the request fails with HTTP 415
    #         (Unsupported Media Type). To store binary data, encode the payload using Base64 before
    #         uploading.</p>
    #   @return [String]
    # @!attribute object_if_match
    #   <p>If specified, the operation only succeeds if the object's ETag matches the provided value.</p>
    #   @return [String]
    # @!attribute checksum_algorithm
    #   <p>The checksum algorithm to use. Supported values: <code>CRC32</code>, <code>CRC32C</code>, <code>CRC64NVME</code>, <code>SHA1</code>, <code>SHA256</code>, <code>SHA512</code>, <code>MD5</code>, <code>XXHASH64</code>, <code>XXHASH3</code>, <code>XXHASH128</code>.</p>
    #   @return [String]
    # @!attribute checksum_crc32
    #   <p>Base64-encoded CRC32 checksum of the annotation payload.</p>
    #   @return [String]
    # @!attribute checksum_crc32_c
    #   <p>Base64-encoded CRC32C checksum of the annotation payload.</p>
    #   @return [String]
    # @!attribute checksum_crc64_nvme
    #   <p>Base64-encoded CRC64NVME checksum of the annotation payload.</p>
    #   @return [String]
    # @!attribute checksum_sha1
    #   <p>Base64-encoded SHA1 checksum of the annotation payload.</p>
    #   @return [String]
    # @!attribute checksum_sha256
    #   <p>Base64-encoded SHA256 checksum of the annotation payload.</p>
    #   @return [String]
    # @!attribute checksum_sha512
    #   <p>Base64-encoded SHA512 checksum of the annotation payload.</p>
    #   @return [String]
    # @!attribute checksum_md5
    #   <p>Base64-encoded MD5 checksum of the annotation payload.</p>
    #   @return [String]
    # @!attribute checksum_xxhash64
    #   <p>Base64-encoded XXHASH64 checksum of the annotation payload.</p>
    #   @return [String]
    # @!attribute checksum_xxhash3
    #   <p>Base64-encoded XXHASH3 checksum of the annotation payload.</p>
    #   @return [String]
    # @!attribute checksum_xxhash128
    #   <p>Base64-encoded XXHASH128 checksum of the annotation payload.</p>
    #   @return [String]
    # @!attribute content_md5
    #   <p>Base64-encoded MD5 digest of the message.</p>
    #   @return [String]
    # @!attribute request_payer
    #   <p>Confirms that the requester knows that they will be charged for the request. Bucket owners need not
    #         specify this parameter in their requests. If either the source or destination S3 bucket has Requester
    #         Pays enabled, the requester will pay for the corresponding charges. For information about
    #         downloading objects from Requester Pays buckets, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html">Downloading Objects in Requester Pays
    #           Buckets</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with an HTTP 403 (Access Denied) error.</p>
    #   @return [String]
    class PutObjectAnnotationRequest < Struct.new(
      nil,
      :bucket,
      :key,
      :version_id,
      :annotation_name,
      :annotation_payload,
      :object_if_match,
      :checksum_algorithm,
      :checksum_crc32,
      :checksum_crc32_c,
      :checksum_crc64_nvme,
      :checksum_sha1,
      :checksum_sha256,
      :checksum_sha512,
      :checksum_md5,
      :checksum_xxhash64,
      :checksum_xxhash3,
      :checksum_xxhash128,
      :content_md5,
      :request_payer,
      :expected_bucket_owner,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute request_charged
    #   <p>If present, indicates that the requester was successfully charged for the request. For more
    #         information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/RequesterPaysBuckets.html">Using Requester Pays buckets for storage transfers and usage</a> in the <i>Amazon Simple
    #           Storage Service user guide</i>.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    class PutObjectLegalHoldOutput < Struct.new(
      nil,
      :request_charged,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bucket
    #   <p>The bucket name containing the object that you want to place a legal hold on. </p>
    #            <p>
    #               <b>Access points</b> - When you use this action with an access point for general purpose buckets, you must provide the alias of the access point in place of the bucket name or specify the access point ARN. When you use this action with an access point for directory buckets, you must provide the access point name in place of the bucket name. When using the access point ARN, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute key
    #   <p>The key name for the object that you want to place a legal hold on.</p>
    #   @return [String]
    # @!attribute legal_hold
    #   <p>Container element for the legal hold configuration you want to apply to the specified object.</p>
    #   @return [Types::ObjectLockLegalHold]
    # @!attribute request_payer
    #   <p>Confirms that the requester knows that they will be charged for the request. Bucket owners need not
    #         specify this parameter in their requests. If either the source or destination S3 bucket has Requester
    #         Pays enabled, the requester will pay for the corresponding charges. For information about
    #         downloading objects from Requester Pays buckets, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html">Downloading Objects in Requester Pays
    #           Buckets</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute version_id
    #   <p>The version ID of the object that you want to place a legal hold on.</p>
    #   @return [String]
    # @!attribute content_md5
    #   <p>The MD5 hash for the request body.</p>
    #            <p>For requests made using the Amazon Web Services Command Line Interface (CLI) or Amazon Web Services SDKs, this field is calculated automatically.</p>
    #   @return [String]
    # @!attribute checksum_algorithm
    #   <p>Indicates the algorithm used to create the checksum for the object when you use the SDK. This header will not provide any
    #       additional functionality if you don't use the SDK. When you send this header, there must be a corresponding <code>x-amz-checksum</code> or
    #       <code>x-amz-trailer</code> header sent. Otherwise, Amazon S3 fails the request with the HTTP status code <code>400 Bad Request</code>. For more
    #       information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #       the <i>Amazon S3 User Guide</i>.</p>
    #            <p>If you provide an individual checksum, Amazon S3 ignores any provided <code>ChecksumAlgorithm</code>
    #         parameter.</p>
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    class PutObjectLegalHoldRequest < Struct.new(
      nil,
      :bucket,
      :key,
      :legal_hold,
      :request_payer,
      :version_id,
      :content_md5,
      :checksum_algorithm,
      :expected_bucket_owner,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute request_charged
    #   <p>If present, indicates that the requester was successfully charged for the request. For more
    #         information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/RequesterPaysBuckets.html">Using Requester Pays buckets for storage transfers and usage</a> in the <i>Amazon Simple
    #           Storage Service user guide</i>.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    class PutObjectLockConfigurationOutput < Struct.new(
      nil,
      :request_charged,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bucket
    #   <p>The bucket whose Object Lock configuration you want to create or replace.</p>
    #   @return [String]
    # @!attribute object_lock_configuration
    #   <p>The Object Lock configuration that you want to apply to the specified bucket.</p>
    #   @return [Types::ObjectLockConfiguration]
    # @!attribute request_payer
    #   <p>Confirms that the requester knows that they will be charged for the request. Bucket owners need not
    #         specify this parameter in their requests. If either the source or destination S3 bucket has Requester
    #         Pays enabled, the requester will pay for the corresponding charges. For information about
    #         downloading objects from Requester Pays buckets, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html">Downloading Objects in Requester Pays
    #           Buckets</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute token
    #   <p>A token to allow Object Lock to be enabled for an existing bucket.</p>
    #   @return [String]
    # @!attribute content_md5
    #   <p>The MD5 hash for the request body.</p>
    #            <p>For requests made using the Amazon Web Services Command Line Interface (CLI) or Amazon Web Services SDKs, this field is calculated automatically.</p>
    #   @return [String]
    # @!attribute checksum_algorithm
    #   <p>Indicates the algorithm used to create the checksum for the object when you use the SDK. This header will not provide any
    #       additional functionality if you don't use the SDK. When you send this header, there must be a corresponding <code>x-amz-checksum</code> or
    #       <code>x-amz-trailer</code> header sent. Otherwise, Amazon S3 fails the request with the HTTP status code <code>400 Bad Request</code>. For more
    #       information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #       the <i>Amazon S3 User Guide</i>.</p>
    #            <p>If you provide an individual checksum, Amazon S3 ignores any provided <code>ChecksumAlgorithm</code>
    #         parameter.</p>
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    class PutObjectLockConfigurationRequest < Struct.new(
      nil,
      :bucket,
      :object_lock_configuration,
      :request_payer,
      :token,
      :content_md5,
      :checksum_algorithm,
      :expected_bucket_owner,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute expiration
    #   <p>If the expiration is configured for the object (see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketLifecycleConfiguration.html">PutBucketLifecycleConfiguration</a>) in the <i>Amazon S3 User Guide</i>, the response
    #         includes this header. It includes the <code>expiry-date</code> and <code>rule-id</code> key-value pairs
    #         that provide information about object expiration. The value of the <code>rule-id</code> is
    #         URL-encoded.</p>
    #            <note>
    #               <p>Object expiration information is not returned in directory buckets and this header returns the
    #           value "<code>NotImplemented</code>" in all responses for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute e_tag
    #   <p>Entity tag for the uploaded object.</p>
    #            <p>
    #               <b>General purpose buckets </b> - To ensure that data is not corrupted
    #         traversing the network, for objects where the ETag is the MD5 digest of the object, you can calculate
    #         the MD5 while putting an object to Amazon S3 and compare the returned ETag to the calculated MD5
    #         value.</p>
    #            <p>
    #               <b>Directory buckets </b> - The ETag for the object in a
    #         directory bucket isn't the MD5 digest of the object.</p>
    #   @return [String]
    # @!attribute checksum_crc32
    #   <p>The Base64 encoded, 32-bit <code>CRC32 checksum</code> of the object. This checksum is only present if the checksum was uploaded
    #       with the object. When you use an API operation on an object that was uploaded using multipart uploads, this value may not be a direct checksum value of the full object. Instead, it's a calculation based on the checksum values of each individual part. For more information about how checksums are calculated
    #       with multipart uploads, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html#large-object-checksums">
    #       Checking object integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_crc32_c
    #   <p>The Base64 encoded, 32-bit <code>CRC32C</code> checksum of the object. This checksum is only present if the checksum was uploaded
    #       with the object. When you use an API operation on an object that was uploaded using multipart uploads, this value may not be a direct checksum value of the full object. Instead, it's a calculation based on the checksum values of each individual part. For more information about how checksums are calculated
    #       with multipart uploads, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html#large-object-checksums">
    #       Checking object integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_crc64_nvme
    #   <p>The Base64 encoded, 64-bit <code>CRC64NVME</code> checksum of the object. This header is present if
    #         the object was uploaded with the <code>CRC64NVME</code> checksum algorithm, or if it was uploaded
    #         without a checksum (and Amazon S3 added the default checksum, <code>CRC64NVME</code>, to the uploaded
    #         object). For more information about how checksums are calculated with multipart uploads, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object
    #           integrity in the Amazon S3 User Guide</a>.</p>
    #   @return [String]
    # @!attribute checksum_sha1
    #   <p>The Base64 encoded, 160-bit <code>SHA1</code> digest of the object. This checksum is only present if the checksum was uploaded
    #       with the object. When you use the API operation on an object that was uploaded using multipart uploads, this value may not be a direct checksum value of the full object. Instead, it's a calculation based on the checksum values of each individual part. For more information about how checksums are calculated
    #       with multipart uploads, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html#large-object-checksums">
    #       Checking object integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_sha256
    #   <p>The Base64 encoded, 256-bit <code>SHA256</code> digest of the object. This checksum is only present if the checksum was uploaded
    #       with the object. When you use an API operation on an object that was uploaded using multipart uploads, this value may not be a direct checksum value of the full object. Instead, it's a calculation based on the checksum values of each individual part. For more information about how checksums are calculated
    #       with multipart uploads, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html#large-object-checksums">
    #       Checking object integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_sha512
    #   <p>The Base64 encoded, 512-bit <code>SHA512</code> digest of the object. This header is present if
    #         the object was uploaded with the <code>SHA512</code> checksum algorithm. For more information, see
    #         <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking
    #           object integrity in the Amazon S3 User Guide</a>.</p>
    #   @return [String]
    # @!attribute checksum_md5
    #   <p>The Base64 encoded, 128-bit <code>MD5</code> digest of the object. This header is present if
    #         the object was uploaded with the <code>MD5</code> checksum algorithm. For more information, see
    #         <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking
    #           object integrity in the Amazon S3 User Guide</a>.</p>
    #   @return [String]
    # @!attribute checksum_xxhash64
    #   <p>The Base64 encoded, 64-bit <code>XXHASH64</code> checksum of the object. This header is present if
    #         the object was uploaded with the <code>XXHASH64</code> checksum algorithm. For more information, see
    #         <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking
    #           object integrity in the Amazon S3 User Guide</a>.</p>
    #   @return [String]
    # @!attribute checksum_xxhash3
    #   <p>The Base64 encoded, 64-bit <code>XXHASH3</code> checksum of the object. This header is present if
    #         the object was uploaded with the <code>XXHASH3</code> checksum algorithm. For more information, see
    #         <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking
    #           object integrity in the Amazon S3 User Guide</a>.</p>
    #   @return [String]
    # @!attribute checksum_xxhash128
    #   <p>The Base64 encoded, 128-bit <code>XXHASH128</code> checksum of the object. This header is present if
    #         the object was uploaded with the <code>XXHASH128</code> checksum algorithm. For more information, see
    #         <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking
    #           object integrity in the Amazon S3 User Guide</a>.</p>
    #   @return [String]
    # @!attribute checksum_type
    #   <p>This header specifies the checksum type of the object, which determines how part-level checksums are
    #         combined to create an object-level checksum for multipart objects. For <code>PutObject</code> uploads,
    #         the checksum type is always <code>FULL_OBJECT</code>. You can use this header as a data integrity check
    #         to verify that the checksum type that is received is the same checksum that was specified. For more
    #         information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #         the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute server_side_encryption
    #   <p>The server-side encryption algorithm used when you store this object in Amazon S3 or Amazon FSx.</p>
    #            <note>
    #               <p>When accessing data stored in Amazon FSx file systems using S3 access points, the only valid server side
    #           encryption option is <code>aws:fsx</code>.</p>
    #            </note>
    #   @return [String]
    # @!attribute version_id
    #   <p>Version ID of the object.</p>
    #            <p>If you enable versioning for a bucket, Amazon S3 automatically generates a unique version ID for the
    #         object being stored. Amazon S3 returns this ID in the response. When you enable versioning for a bucket, if
    #         Amazon S3 receives multiple write requests for the same object simultaneously, it stores all of the objects.
    #         For more information about versioning, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/AddingObjectstoVersioningEnabledBuckets.html">Adding Objects to
    #           Versioning-Enabled Buckets</a> in the <i>Amazon S3 User Guide</i>. For information about
    #         returning the versioning state of a bucket, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketVersioning.html">GetBucketVersioning</a>. </p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute sse_customer_algorithm
    #   <p>If server-side encryption with a customer-provided encryption key was requested, the response will
    #         include this header to confirm the encryption algorithm that's used.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute sse_customer_key_md5
    #   <p>If server-side encryption with a customer-provided encryption key was requested, the response will
    #         include this header to provide the round-trip message integrity verification of the customer-provided
    #         encryption key.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute ssekms_key_id
    #   <p>If present, indicates the ID of the KMS key that was used for object encryption.</p>
    #   @return [String]
    # @!attribute ssekms_encryption_context
    #   <p>If present, indicates the Amazon Web Services KMS Encryption Context to use for object encryption. The value of
    #            this header is a Base64 encoded string of a UTF-8 encoded JSON, which contains the encryption context as key-value pairs.
    #            This value is stored as object metadata and automatically gets
    #            passed on to Amazon Web Services KMS for future <code>GetObject</code>
    #            operations on this object.</p>
    #   @return [String]
    # @!attribute bucket_key_enabled
    #   <p>Indicates whether the uploaded object uses an S3 Bucket Key for server-side encryption with
    #         Key Management Service (KMS) keys (SSE-KMS).</p>
    #   @return [Boolean]
    # @!attribute size
    #   <p> The size of the object in bytes. This value is only be present if you append to an object. </p>
    #            <note>
    #               <p>This functionality is only supported for objects in the Amazon S3 Express One Zone storage class in
    #           directory buckets.</p>
    #            </note>
    #   @return [Integer]
    # @!attribute request_charged
    #   <p>If present, indicates that the requester was successfully charged for the request. For more
    #         information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/RequesterPaysBuckets.html">Using Requester Pays buckets for storage transfers and usage</a> in the <i>Amazon Simple
    #           Storage Service user guide</i>.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    class PutObjectOutput < Struct.new(
      nil,
      :expiration,
      :e_tag,
      :checksum_crc32,
      :checksum_crc32_c,
      :checksum_crc64_nvme,
      :checksum_sha1,
      :checksum_sha256,
      :checksum_sha512,
      :checksum_md5,
      :checksum_xxhash64,
      :checksum_xxhash3,
      :checksum_xxhash128,
      :checksum_type,
      :server_side_encryption,
      :version_id,
      :sse_customer_algorithm,
      :sse_customer_key_md5,
      :ssekms_key_id,
      :ssekms_encryption_context,
      :bucket_key_enabled,
      :size,
      :request_charged,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute acl
    #   <p>The canned ACL to apply to the object. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#CannedACL">Canned ACL</a> in the
    #           <i>Amazon S3 User Guide</i>.</p>
    #            <p>When adding a new object, you can use headers to grant ACL-based permissions to individual
    #         Amazon Web Services accounts or to predefined groups defined by Amazon S3. These permissions are then added to the ACL on
    #         the object. By default, all objects are private. Only the owner has full access control. For more
    #         information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html">Access Control
    #           List (ACL) Overview</a> and <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-using-rest-api.html">Managing ACLs Using the REST API</a> in the
    #           <i>Amazon S3 User Guide</i>.</p>
    #            <p>If the bucket that you're uploading objects to uses the bucket owner enforced setting for S3 Object
    #         Ownership, ACLs are disabled and no longer affect permissions. Buckets that use this setting only accept
    #         PUT requests that don't specify an ACL or PUT requests that specify bucket owner full control ACLs, such
    #         as the <code>bucket-owner-full-control</code> canned ACL or an equivalent form of this ACL expressed in
    #         the XML format. PUT requests that contain other ACLs (for example, custom grants to certain
    #         Amazon Web Services accounts) fail and return a <code>400</code> error with the error code
    #           <code>AccessControlListNotSupported</code>. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/about-object-ownership.html"> Controlling ownership of objects and
    #           disabling ACLs</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <note>
    #               <ul>
    #                  <li>
    #                     <p>This functionality is not supported for directory buckets.</p>
    #                  </li>
    #                  <li>
    #                     <p>This functionality is not supported for Amazon S3 on Outposts.</p>
    #                  </li>
    #               </ul>
    #            </note>
    #   @return [String]
    # @!attribute body
    #   <p>Object data.</p>
    #   @return [String]
    # @!attribute bucket
    #   <p>The bucket name to which the PUT action was initiated. </p>
    #            <p>
    #               <b>Directory buckets</b> - When you use this operation with a directory bucket, you must use virtual-hosted-style requests in the format <code>
    #                  <i>Bucket-name</i>.s3express-<i>zone-id</i>.<i>region-code</i>.amazonaws.com</code>. Path-style requests are not supported.  Directory bucket names must be unique in the chosen Zone (Availability Zone or Local Zone). Bucket names must follow the format <code>
    #                  <i>bucket-base-name</i>--<i>zone-id</i>--x-s3</code> (for example, <code>
    #                  <i>amzn-s3-demo-bucket</i>--<i>usw2-az1</i>--x-s3</code>). For information about bucket naming
    #            restrictions, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/directory-bucket-naming-rules.html">Directory bucket naming
    #               rules</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <p>
    #               <b>Access points</b> - When you use this action with an access point for general purpose buckets, you must provide the alias of the access point in place of the bucket name or specify the access point ARN. When you use this action with an access point for directory buckets, you must provide the access point name in place of the bucket name. When using the access point ARN, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <note>
    #               <p>Object Lambda access points are not supported by directory buckets.</p>
    #            </note>
    #            <p>
    #               <b>S3 on Outposts</b> - When you use this action with S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the
    #                        form <code>
    #                  <i>AccessPointName</i>-<i>AccountId</i>.<i>outpostID</i>.s3-outposts.<i>Region</i>.amazonaws.com</code>. When you use this action with S3 on Outposts, the destination bucket must be the Outposts access point ARN or the access point alias. For more information about S3 on Outposts, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html">What is S3 on Outposts?</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute cache_control
    #   <p>Can be used to specify caching behavior along the request/reply chain. For more information, see
    #           <a href="http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.9">http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.9</a>.</p>
    #   @return [String]
    # @!attribute content_disposition
    #   <p>Specifies presentational information for the object. For more information, see <a href="https://www.rfc-editor.org/rfc/rfc6266#section-4">https://www.rfc-editor.org/rfc/rfc6266#section-4</a>.</p>
    #   @return [String]
    # @!attribute content_encoding
    #   <p>Specifies what content encodings have been applied to the object and thus what decoding mechanisms
    #         must be applied to obtain the media-type referenced by the Content-Type header field. For more
    #         information, see <a href="https://www.rfc-editor.org/rfc/rfc9110.html#field.content-encoding">https://www.rfc-editor.org/rfc/rfc9110.html#field.content-encoding</a>.</p>
    #   @return [String]
    # @!attribute content_language
    #   <p>The language the content is in.</p>
    #   @return [String]
    # @!attribute content_length
    #   <p>Size of the body in bytes. This parameter is useful when the size of the body cannot be determined
    #         automatically. For more information, see <a href="https://www.rfc-editor.org/rfc/rfc9110.html#name-content-length">https://www.rfc-editor.org/rfc/rfc9110.html#name-content-length</a>.</p>
    #   @return [Integer]
    # @!attribute content_md5
    #   <p>The Base64 encoded 128-bit <code>MD5</code> digest of the message (without the headers) according to
    #         RFC 1864. This header can be used as a message integrity check to verify that the data is the same data
    #         that was originally sent. Although it is optional, we recommend using the Content-MD5 mechanism as an
    #         end-to-end integrity check. For more information about REST request authentication, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/RESTAuthentication.html">REST
    #         Authentication</a>.</p>
    #            <note>
    #               <p>The <code>Content-MD5</code> or <code>x-amz-sdk-checksum-algorithm</code> header is required for
    #           any request to upload an object with a retention period configured using Amazon S3 Object Lock. For more
    #           information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-lock-managing.html#object-lock-put-object">Uploading objects
    #             to an Object Lock enabled bucket </a> in the <i>Amazon S3 User Guide</i>.</p>
    #            </note>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute content_type
    #   <p>A standard MIME type describing the format of the contents. For more information, see <a href="https://www.rfc-editor.org/rfc/rfc9110.html#name-content-type">https://www.rfc-editor.org/rfc/rfc9110.html#name-content-type</a>.</p>
    #   @return [String]
    # @!attribute checksum_algorithm
    #   <p>Indicates the algorithm used to create the checksum for the object when you use the SDK. This header will not provide any
    #       additional functionality if you don't use the SDK. When you send this header, there must be a corresponding <code>x-amz-checksum-<i>algorithm</i>
    #               </code> or
    #       <code>x-amz-trailer</code> header sent. Otherwise, Amazon S3 fails the request with the HTTP status code <code>400 Bad Request</code>.</p>
    #            <p>For the <code>x-amz-checksum-<i>algorithm</i>
    #               </code> header, replace <code>
    #                  <i>algorithm</i>
    #               </code> with the supported algorithm from the following list: </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CRC32</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CRC32C</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CRC64NVME</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MD5</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SHA1</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SHA256</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SHA512</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>XXHASH3</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>XXHASH64</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>XXHASH128</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>For more
    #       information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #       the <i>Amazon S3 User Guide</i>.</p>
    #            <p>If the individual checksum value you provide through <code>x-amz-checksum-<i>algorithm</i>
    #               </code> doesn't match the checksum algorithm you set through <code>x-amz-sdk-checksum-algorithm</code>, Amazon S3 fails the request with a <code>BadDigest</code> error.</p>
    #            <note>
    #               <p>The <code>Content-MD5</code> or <code>x-amz-sdk-checksum-algorithm</code> header is required for
    #           any request to upload an object with a retention period configured using Amazon S3 Object Lock. For more
    #           information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-lock-managing.html#object-lock-put-object">Uploading objects
    #             to an Object Lock enabled bucket </a> in the <i>Amazon S3 User Guide</i>.</p>
    #            </note>
    #            <p>For directory buckets, when you use Amazon Web Services SDKs, <code>CRC32</code> is the default checksum algorithm that's used for performance.</p>
    #   @return [String]
    # @!attribute checksum_crc32
    #   <p>This header can be used as a data integrity check to verify that the data received is the same data that was originally sent.
    #       This header specifies the Base64 encoded, 32-bit <code>CRC32</code> checksum of the object. For more information, see
    #       <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in the
    #       <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_crc32_c
    #   <p>This header can be used as a data integrity check to verify that the data received is the same data that was originally sent.
    #       This header specifies the Base64 encoded, 32-bit <code>CRC32C</code> checksum of the object. For more information, see
    #       <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in the
    #       <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_crc64_nvme
    #   <p>This header can be used as a data integrity check to verify that the data received is the same data
    #         that was originally sent. This header specifies the Base64 encoded, 64-bit <code>CRC64NVME</code>
    #         checksum of the object. The <code>CRC64NVME</code> checksum is always a full object checksum. For more
    #         information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity in the Amazon S3
    #           User Guide</a>.</p>
    #   @return [String]
    # @!attribute checksum_sha1
    #   <p>This header can be used as a data integrity check to verify that the data received is the same data that was originally sent.
    #       This header specifies the Base64 encoded, 160-bit <code>SHA1</code> digest of the object. For more information, see
    #       <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in the
    #       <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_sha256
    #   <p>This header can be used as a data integrity check to verify that the data received is the same data that was originally sent.
    #       This header specifies the Base64 encoded, 256-bit <code>SHA256</code> digest of the object. For more information, see
    #       <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in the
    #       <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_sha512
    #   <p>This header can be used as a data integrity check to verify that the data received is the same data
    #         that was originally sent. This header specifies the Base64 encoded, 512-bit <code>SHA512</code>
    #         digest of the object. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity in the Amazon S3
    #           User Guide</a>.</p>
    #   @return [String]
    # @!attribute checksum_md5
    #   <p>This header can be used as a data integrity check to verify that the data received is the same data
    #         that was originally sent. This header specifies the Base64 encoded, 128-bit <code>MD5</code>
    #         digest of the object. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity in the Amazon S3
    #           User Guide</a>.</p>
    #   @return [String]
    # @!attribute checksum_xxhash64
    #   <p>This header can be used as a data integrity check to verify that the data received is the same data
    #         that was originally sent. This header specifies the Base64 encoded, 64-bit <code>XXHASH64</code>
    #         checksum of the object. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity in the Amazon S3
    #           User Guide</a>.</p>
    #   @return [String]
    # @!attribute checksum_xxhash3
    #   <p>This header can be used as a data integrity check to verify that the data received is the same data
    #         that was originally sent. This header specifies the Base64 encoded, 64-bit <code>XXHASH3</code>
    #         checksum of the object. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity in the Amazon S3
    #           User Guide</a>.</p>
    #   @return [String]
    # @!attribute checksum_xxhash128
    #   <p>This header can be used as a data integrity check to verify that the data received is the same data
    #         that was originally sent. This header specifies the Base64 encoded, 128-bit <code>XXHASH128</code>
    #         checksum of the object. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity in the Amazon S3
    #           User Guide</a>.</p>
    #   @return [String]
    # @!attribute expires
    #   <p>The date and time at which the object is no longer cacheable. For more information, see <a href="https://www.rfc-editor.org/rfc/rfc7234#section-5.3">https://www.rfc-editor.org/rfc/rfc7234#section-5.3</a>.</p>
    #   @return [String]
    # @!attribute if_match
    #   <p>Uploads the object only if the ETag (entity tag) value provided during the WRITE operation matches
    #         the ETag of the object in S3. If the ETag values do not match, the operation returns a <code>412
    #           Precondition Failed</code> error.</p>
    #            <p>If a conflicting operation occurs during the upload S3 returns a <code>409
    #           ConditionalRequestConflict</code> response. On a 409 failure you should fetch the object's ETag and
    #         retry the upload.</p>
    #            <p>Expects the ETag value as a string.</p>
    #            <p>For more information about conditional requests, see <a href="https://tools.ietf.org/html/rfc7232">RFC 7232</a>, or <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/conditional-requests.html">Conditional requests</a> in the
    #           <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute if_none_match
    #   <p>Uploads the object only if the object key name does not already exist in the bucket specified.
    #         Otherwise, Amazon S3 returns a <code>412 Precondition Failed</code> error.</p>
    #            <p>If a conflicting operation occurs during the upload S3 returns a <code>409
    #           ConditionalRequestConflict</code> response. On a 409 failure you should retry the upload.</p>
    #            <p>Expects the '*' (asterisk) character.</p>
    #            <p>For more information about conditional requests, see <a href="https://tools.ietf.org/html/rfc7232">RFC 7232</a>, or <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/conditional-requests.html">Conditional requests</a> in the
    #           <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute grant_full_control
    #   <p>Gives the grantee READ, READ_ACP, and WRITE_ACP permissions on the object.</p>
    #            <note>
    #               <ul>
    #                  <li>
    #                     <p>This functionality is not supported for directory buckets.</p>
    #                  </li>
    #                  <li>
    #                     <p>This functionality is not supported for Amazon S3 on Outposts.</p>
    #                  </li>
    #               </ul>
    #            </note>
    #   @return [String]
    # @!attribute grant_read
    #   <p>Allows grantee to read the object data and its metadata.</p>
    #            <note>
    #               <ul>
    #                  <li>
    #                     <p>This functionality is not supported for directory buckets.</p>
    #                  </li>
    #                  <li>
    #                     <p>This functionality is not supported for Amazon S3 on Outposts.</p>
    #                  </li>
    #               </ul>
    #            </note>
    #   @return [String]
    # @!attribute grant_read_acp
    #   <p>Allows grantee to read the object ACL.</p>
    #            <note>
    #               <ul>
    #                  <li>
    #                     <p>This functionality is not supported for directory buckets.</p>
    #                  </li>
    #                  <li>
    #                     <p>This functionality is not supported for Amazon S3 on Outposts.</p>
    #                  </li>
    #               </ul>
    #            </note>
    #   @return [String]
    # @!attribute grant_write_acp
    #   <p>Allows grantee to write the ACL for the applicable object.</p>
    #            <note>
    #               <ul>
    #                  <li>
    #                     <p>This functionality is not supported for directory buckets.</p>
    #                  </li>
    #                  <li>
    #                     <p>This functionality is not supported for Amazon S3 on Outposts.</p>
    #                  </li>
    #               </ul>
    #            </note>
    #   @return [String]
    # @!attribute key
    #   <p>Object key for which the PUT action was initiated.</p>
    #   @return [String]
    # @!attribute write_offset_bytes
    #   <p> Specifies the offset for appending data to existing objects in bytes. The offset must be equal to
    #         the size of the existing object being appended to. If no object exists, setting this header to 0 will
    #         create a new object. </p>
    #            <note>
    #               <p>This functionality is only supported for objects in the Amazon S3 Express One Zone storage class in
    #           directory buckets.</p>
    #            </note>
    #   @return [Integer]
    # @!attribute metadata
    #   <p>A map of metadata to store with the object in S3.</p>
    #   @return [Hash<String, String>]
    # @!attribute server_side_encryption
    #   <p>The server-side encryption algorithm that was used when you store this object in Amazon S3 or
    #         Amazon FSx.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>General purpose buckets </b> - You have four mutually exclusive
    #             options to protect data using server-side encryption in Amazon S3, depending on how you choose to manage
    #             the encryption keys. Specifically, the encryption key options are Amazon S3 managed keys (SSE-S3),
    #             Amazon Web Services KMS keys (SSE-KMS or DSSE-KMS), and customer-provided keys (SSE-C). Amazon S3 encrypts data with
    #             server-side encryption by using Amazon S3 managed keys (SSE-S3) by default. You can optionally tell Amazon S3
    #             to encrypt data at rest by using server-side encryption with other key options. For more
    #             information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingServerSideEncryption.html">Using Server-Side Encryption</a> in
    #             the <i>Amazon S3 User Guide</i>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Directory buckets </b> -
    #             For directory buckets, there are only two supported options for server-side encryption: server-side encryption with Amazon S3 managed keys (SSE-S3) (<code>AES256</code>) and server-side encryption with KMS keys (SSE-KMS) (<code>aws:kms</code>). We recommend that the bucket's default encryption uses the desired encryption configuration and you don't override the bucket default encryption in your
    #               <code>CreateSession</code> requests or <code>PUT</code> object requests. Then, new objects
    #    are automatically encrypted with the desired encryption settings. For more
    #            information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-express-serv-side-encryption.html">Protecting data with server-side encryption</a> in the <i>Amazon S3 User Guide</i>. For more information about the encryption overriding behaviors in directory buckets, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-express-specifying-kms-encryption.html">Specifying server-side encryption with KMS for new object uploads</a>. </p>
    #                  <p>In the Zonal endpoint API calls (except <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_CopyObject.html">CopyObject</a> and <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_UploadPartCopy.html">UploadPartCopy</a>) using the REST API, the encryption request headers must match the encryption settings that are specified in the <code>CreateSession</code> request.
    #                               You can't override the values of the encryption settings (<code>x-amz-server-side-encryption</code>, <code>x-amz-server-side-encryption-aws-kms-key-id</code>, <code>x-amz-server-side-encryption-context</code>, and <code>x-amz-server-side-encryption-bucket-key-enabled</code>) that are specified in the <code>CreateSession</code> request.
    #                               You don't need to explicitly specify these encryption settings values in Zonal endpoint API calls, and
    #                               Amazon S3 will use the encryption settings values from the <code>CreateSession</code> request to protect new objects in the directory bucket.
    #                              </p>
    #                  <note>
    #                     <p>When you use the CLI or the Amazon Web Services SDKs, for <code>CreateSession</code>, the session token refreshes automatically to avoid service interruptions when a session expires. The CLI or the Amazon Web Services SDKs use the bucket's default encryption configuration for the
    #                               <code>CreateSession</code> request. It's not supported to override the encryption settings values in the <code>CreateSession</code> request.
    #                               So in the Zonal endpoint API calls (except <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_CopyObject.html">CopyObject</a> and <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_UploadPartCopy.html">UploadPartCopy</a>),
    #             the encryption request headers must match the default encryption configuration of the directory bucket.
    #
    #   </p>
    #                  </note>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>S3 access points for Amazon FSx </b> - When accessing data stored in
    #             Amazon FSx file systems using S3 access points, the only valid server side encryption option is
    #               <code>aws:fsx</code>. All Amazon FSx file systems have encryption configured by default and are
    #             encrypted at rest. Data is automatically encrypted before being written to the file system, and
    #             automatically decrypted as it is read. These processes are handled transparently by Amazon FSx.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute storage_class
    #   <p>By default, Amazon S3 uses the STANDARD Storage Class to store newly created objects. The STANDARD
    #         storage class provides high durability and high availability. Depending on performance needs, you can
    #         specify a different Storage Class. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/storage-class-intro.html">Storage Classes</a> in the
    #           <i>Amazon S3 User Guide</i>.</p>
    #            <note>
    #               <ul>
    #                  <li>
    #                     <p>Directory buckets only support <code>EXPRESS_ONEZONE</code> (the S3 Express One Zone storage class) in
    #               Availability Zones and <code>ONEZONE_IA</code> (the S3 One Zone-Infrequent Access storage class) in
    #               Dedicated Local Zones.</p>
    #                  </li>
    #                  <li>
    #                     <p>Amazon S3 on Outposts only uses the OUTPOSTS Storage Class.</p>
    #                  </li>
    #               </ul>
    #            </note>
    #   @return [String]
    # @!attribute website_redirect_location
    #   <p>If the bucket is configured as a website, redirects requests for this object to another object in
    #         the same bucket or to an external URL. Amazon S3 stores the value of this header in the object metadata. For
    #         information about object metadata, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingMetadata.html">Object Key and Metadata</a> in the <i>Amazon S3
    #           User Guide</i>.</p>
    #            <p>In the following example, the request header sets the redirect to an object (anotherPage.html) in
    #         the same bucket:</p>
    #            <p>
    #               <code>x-amz-website-redirect-location: /anotherPage.html</code>
    #            </p>
    #            <p>In the following example, the request header sets the object redirect to another website:</p>
    #            <p>
    #               <code>x-amz-website-redirect-location: http://www.example.com/</code>
    #            </p>
    #            <p>For more information about website hosting in Amazon S3, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/WebsiteHosting.html">Hosting Websites on Amazon S3</a> and <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/how-to-page-redirect.html">How to Configure Website Page
    #           Redirects</a> in the <i>Amazon S3 User Guide</i>. </p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute sse_customer_algorithm
    #   <p>Specifies the algorithm to use when encrypting the object (for example, <code>AES256</code>).</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute sse_customer_key
    #   <p>Specifies the customer-provided encryption key for Amazon S3 to use in encrypting data. This value is
    #         used to store the object and then it is discarded; Amazon S3 does not store the encryption key. The key must
    #         be appropriate for use with the algorithm specified in the
    #           <code>x-amz-server-side-encryption-customer-algorithm</code> header.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute sse_customer_key_md5
    #   <p>Specifies the 128-bit MD5 digest of the encryption key according to RFC 1321. Amazon S3 uses this header
    #         for a message integrity check to ensure that the encryption key was transmitted without error.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute ssekms_key_id
    #   <p>Specifies the KMS key ID (Key ID, Key ARN, or Key Alias) to use for object encryption. If the KMS key doesn't exist in the same
    #            account that's issuing the command, you must use the full Key ARN not the Key ID.</p>
    #            <p>
    #               <b>General purpose buckets</b> - If you specify <code>x-amz-server-side-encryption</code> with <code>aws:kms</code> or <code>aws:kms:dsse</code>, this header specifies the ID (Key ID, Key ARN, or Key Alias) of the KMS
    #            key to use. If you specify
    #            <code>x-amz-server-side-encryption:aws:kms</code> or
    #            <code>x-amz-server-side-encryption:aws:kms:dsse</code>, but do not provide <code>x-amz-server-side-encryption-aws-kms-key-id</code>, Amazon S3 uses the Amazon Web Services managed key
    #            (<code>aws/s3</code>) to protect the data.</p>
    #            <p>
    #               <b>Directory buckets</b> - To encrypt data using SSE-KMS, it's recommended to specify the
    #   <code>x-amz-server-side-encryption</code> header to <code>aws:kms</code>. Then, the <code>x-amz-server-side-encryption-aws-kms-key-id</code> header implicitly uses
    #   the bucket's default KMS customer managed key ID. If you want to explicitly set the <code>
    #            x-amz-server-side-encryption-aws-kms-key-id</code> header, it must match the bucket's default customer managed key (using key ID or ARN, not alias). Your SSE-KMS configuration can only support 1 <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#customer-cmk">customer managed key</a> per directory bucket's lifetime.
    #   The <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-managed-cmk">Amazon Web Services managed key</a> (<code>aws/s3</code>) isn't supported.
    #
    #    Incorrect key specification results in an HTTP <code>400 Bad Request</code> error. </p>
    #   @return [String]
    # @!attribute ssekms_encryption_context
    #   <p>Specifies the Amazon Web Services KMS Encryption Context as an additional encryption context to use for object encryption. The value of
    #            this header is a Base64 encoded string of a UTF-8 encoded JSON, which contains the encryption context as key-value pairs.
    #            This value is stored as object metadata and automatically gets passed on
    #            to Amazon Web Services KMS for future <code>GetObject</code> operations on
    #            this object.</p>
    #            <p>
    #               <b>General purpose buckets</b> - This value must be explicitly added during <code>CopyObject</code> operations if you want an additional encryption context for your object. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/UsingKMSEncryption.html#encryption-context">Encryption context</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <p>
    #               <b>Directory buckets</b> - You can optionally provide an explicit encryption context value. The value must match the default encryption context - the bucket Amazon Resource Name (ARN). An additional encryption context value is not supported. </p>
    #   @return [String]
    # @!attribute bucket_key_enabled
    #   <p>Specifies whether Amazon S3 should use an S3 Bucket Key for object encryption with
    #            server-side encryption using Key Management Service (KMS) keys (SSE-KMS).</p>
    #            <p>
    #               <b>General purpose buckets</b> - Setting this header to
    #               <code>true</code> causes Amazon S3 to use an S3 Bucket Key for object encryption with
    #            SSE-KMS. Also, specifying this header with a PUT action doesn't affect bucket-level settings for S3
    #            Bucket Key.</p>
    #            <p>
    #               <b>Directory buckets</b> - S3 Bucket Keys are always enabled for <code>GET</code> and <code>PUT</code> operations in a directory bucket and can’t be disabled. S3 Bucket Keys aren't supported, when you copy SSE-KMS encrypted objects from general purpose buckets
    #   to directory buckets, from directory buckets to general purpose buckets, or between directory buckets, through <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_CopyObject.html">CopyObject</a>, <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_UploadPartCopy.html">UploadPartCopy</a>, <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/directory-buckets-objects-Batch-Ops">the Copy operation in Batch Operations</a>, or
    #                               <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/create-import-job">the import jobs</a>. In this case, Amazon S3 makes a call to KMS every time a copy request is made for a KMS-encrypted object.</p>
    #   @return [Boolean]
    # @!attribute request_payer
    #   <p>Confirms that the requester knows that they will be charged for the request. Bucket owners need not
    #         specify this parameter in their requests. If either the source or destination S3 bucket has Requester
    #         Pays enabled, the requester will pay for the corresponding charges. For information about
    #         downloading objects from Requester Pays buckets, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html">Downloading Objects in Requester Pays
    #           Buckets</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute tagging
    #   <p>The tag-set for the object. The tag-set must be encoded as URL Query parameters. (For example,
    #         "Key1=Value1")</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute object_lock_mode
    #   <p>The Object Lock mode that you want to apply to this object.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute object_lock_retain_until_date
    #   <p>The date and time when you want this object's Object Lock to expire. Must be formatted as a
    #         timestamp parameter.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [Time]
    # @!attribute object_lock_legal_hold_status
    #   <p>Specifies whether a legal hold will be applied to this object. For more information about S3 Object
    #         Lock, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock.html">Object Lock</a> in
    #         the <i>Amazon S3 User Guide</i>.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute object_lock_event_hold
    #   <p>Specifies the event hold status to apply to this object. Set to <code>ON</code> to enable or
    #         <code>OFF</code> to disable.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute object_lock_event_hold_duration_days
    #   <p>Specifies the event hold duration in days to apply to this object. You cannot specify a
    #         duration in both days and years.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [Integer]
    # @!attribute object_lock_event_hold_duration_years
    #   <p>Specifies the event hold duration in years to apply to this object. You cannot specify a
    #         duration in both days and years.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [Integer]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    class PutObjectRequest < Struct.new(
      nil,
      :acl,
      :body,
      :bucket,
      :cache_control,
      :content_disposition,
      :content_encoding,
      :content_language,
      :content_length,
      :content_md5,
      :content_type,
      :checksum_algorithm,
      :checksum_crc32,
      :checksum_crc32_c,
      :checksum_crc64_nvme,
      :checksum_sha1,
      :checksum_sha256,
      :checksum_sha512,
      :checksum_md5,
      :checksum_xxhash64,
      :checksum_xxhash3,
      :checksum_xxhash128,
      :expires,
      :if_match,
      :if_none_match,
      :grant_full_control,
      :grant_read,
      :grant_read_acp,
      :grant_write_acp,
      :key,
      :write_offset_bytes,
      :metadata,
      :server_side_encryption,
      :storage_class,
      :website_redirect_location,
      :sse_customer_algorithm,
      :sse_customer_key,
      :sse_customer_key_md5,
      :ssekms_key_id,
      :ssekms_encryption_context,
      :bucket_key_enabled,
      :request_payer,
      :tagging,
      :object_lock_mode,
      :object_lock_retain_until_date,
      :object_lock_legal_hold_status,
      :object_lock_event_hold,
      :object_lock_event_hold_duration_days,
      :object_lock_event_hold_duration_years,
      :expected_bucket_owner,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute request_charged
    #   <p>If present, indicates that the requester was successfully charged for the request. For more
    #         information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/RequesterPaysBuckets.html">Using Requester Pays buckets for storage transfers and usage</a> in the <i>Amazon Simple
    #           Storage Service user guide</i>.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    class PutObjectRetentionOutput < Struct.new(
      nil,
      :request_charged,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bucket
    #   <p>The bucket name that contains the object you want to apply this Object Retention configuration to. </p>
    #            <p>
    #               <b>Access points</b> - When you use this action with an access point for general purpose buckets, you must provide the alias of the access point in place of the bucket name or specify the access point ARN. When you use this action with an access point for directory buckets, you must provide the access point name in place of the bucket name. When using the access point ARN, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute key
    #   <p>The key name for the object that you want to apply this Object Retention configuration to.</p>
    #   @return [String]
    # @!attribute retention
    #   <p>The container element for the Object Retention configuration.</p>
    #   @return [Types::ObjectLockRetention]
    # @!attribute request_payer
    #   <p>Confirms that the requester knows that they will be charged for the request. Bucket owners need not
    #         specify this parameter in their requests. If either the source or destination S3 bucket has Requester
    #         Pays enabled, the requester will pay for the corresponding charges. For information about
    #         downloading objects from Requester Pays buckets, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html">Downloading Objects in Requester Pays
    #           Buckets</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute version_id
    #   <p>The version ID for the object that you want to apply this Object Retention configuration to.</p>
    #   @return [String]
    # @!attribute bypass_governance_retention
    #   <p>Indicates whether this action should bypass Governance-mode restrictions.</p>
    #   @return [Boolean]
    # @!attribute content_md5
    #   <p>The MD5 hash for the request body.</p>
    #            <p>For requests made using the Amazon Web Services Command Line Interface (CLI) or Amazon Web Services SDKs, this field is calculated automatically.</p>
    #   @return [String]
    # @!attribute checksum_algorithm
    #   <p>Indicates the algorithm used to create the checksum for the object when you use the SDK. This header will not provide any
    #       additional functionality if you don't use the SDK. When you send this header, there must be a corresponding <code>x-amz-checksum</code> or
    #       <code>x-amz-trailer</code> header sent. Otherwise, Amazon S3 fails the request with the HTTP status code <code>400 Bad Request</code>. For more
    #       information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #       the <i>Amazon S3 User Guide</i>.</p>
    #            <p>If you provide an individual checksum, Amazon S3 ignores any provided <code>ChecksumAlgorithm</code>
    #         parameter.</p>
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    class PutObjectRetentionRequest < Struct.new(
      nil,
      :bucket,
      :key,
      :retention,
      :request_payer,
      :version_id,
      :bypass_governance_retention,
      :content_md5,
      :checksum_algorithm,
      :expected_bucket_owner,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute version_id
    #   <p>The versionId of the object the tag-set was added to.</p>
    #   @return [String]
    class PutObjectTaggingOutput < Struct.new(
      nil,
      :version_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bucket
    #   <p>The bucket name containing the object. </p>
    #            <p>
    #               <b>Access points</b> - When you use this action with an access point for general purpose buckets, you must provide the alias of the access point in place of the bucket name or specify the access point ARN. When you use this action with an access point for directory buckets, you must provide the access point name in place of the bucket name. When using the access point ARN, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <p>
    #               <b>S3 on Outposts</b> - When you use this action with S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the
    #                        form <code>
    #                  <i>AccessPointName</i>-<i>AccountId</i>.<i>outpostID</i>.s3-outposts.<i>Region</i>.amazonaws.com</code>. When you use this action with S3 on Outposts, the destination bucket must be the Outposts access point ARN or the access point alias. For more information about S3 on Outposts, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html">What is S3 on Outposts?</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute key
    #   <p>Name of the object key.</p>
    #   @return [String]
    # @!attribute version_id
    #   <p>The versionId of the object that the tag-set will be added to.</p>
    #   @return [String]
    # @!attribute content_md5
    #   <p>The MD5 hash for the request body.</p>
    #            <p>For requests made using the Amazon Web Services Command Line Interface (CLI) or Amazon Web Services SDKs, this field is calculated automatically.</p>
    #   @return [String]
    # @!attribute checksum_algorithm
    #   <p>Indicates the algorithm used to create the checksum for the object when you use the SDK. This header will not provide any
    #       additional functionality if you don't use the SDK. When you send this header, there must be a corresponding <code>x-amz-checksum</code> or
    #       <code>x-amz-trailer</code> header sent. Otherwise, Amazon S3 fails the request with the HTTP status code <code>400 Bad Request</code>. For more
    #       information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #       the <i>Amazon S3 User Guide</i>.</p>
    #            <p>If you provide an individual checksum, Amazon S3 ignores any provided <code>ChecksumAlgorithm</code>
    #         parameter.</p>
    #   @return [String]
    # @!attribute tagging
    #   <p>Container for the <code>TagSet</code> and <code>Tag</code> elements</p>
    #   @return [Types::Tagging]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    # @!attribute request_payer
    #   <p>Confirms that the requester knows that she or he will be charged for the tagging object
    #         request. Bucket owners need not specify this parameter in their requests.</p>
    #   @return [String]
    class PutObjectTaggingRequest < Struct.new(
      nil,
      :bucket,
      :key,
      :version_id,
      :content_md5,
      :checksum_algorithm,
      :tagging,
      :expected_bucket_owner,
      :request_payer,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bucket
    #   <p>The name of the Amazon S3 bucket whose <code>PublicAccessBlock</code> configuration you want to
    #         set.</p>
    #   @return [String]
    # @!attribute content_md5
    #   <p>The MD5 hash of the <code>PutPublicAccessBlock</code> request body. </p>
    #            <p>For requests made using the Amazon Web Services Command Line Interface (CLI) or Amazon Web Services SDKs, this field is calculated automatically.</p>
    #   @return [String]
    # @!attribute checksum_algorithm
    #   <p>Indicates the algorithm used to create the checksum for the object when you use the SDK. This header will not provide any
    #       additional functionality if you don't use the SDK. When you send this header, there must be a corresponding <code>x-amz-checksum</code> or
    #       <code>x-amz-trailer</code> header sent. Otherwise, Amazon S3 fails the request with the HTTP status code <code>400 Bad Request</code>. For more
    #       information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #       the <i>Amazon S3 User Guide</i>.</p>
    #            <p>If you provide an individual checksum, Amazon S3 ignores any provided <code>ChecksumAlgorithm</code>
    #         parameter.</p>
    #   @return [String]
    # @!attribute public_access_block_configuration
    #   <p>The <code>PublicAccessBlock</code> configuration that you want to apply to this Amazon S3
    #         bucket. You can enable the configuration options in any combination. For more information
    #         about when Amazon S3 considers a bucket or object public, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/access-control-block-public-access.html#access-control-block-public-access-policy-status">The Meaning of "Public"</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [Types::PublicAccessBlockConfiguration]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    class PutPublicAccessBlockRequest < Struct.new(
      nil,
      :bucket,
      :content_md5,
      :checksum_algorithm,
      :public_access_block_configuration,
      :expected_bucket_owner,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the configuration for publishing messages to an Amazon Simple Queue Service (Amazon SQS)
    #       queue when Amazon S3 detects specified events.</p>
    # @!attribute id
    #   <p>An optional unique identifier for configurations in a notification configuration. If you don't
    #         provide one, Amazon S3 will assign an ID.</p>
    #   @return [String]
    # @!attribute queue_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon SQS queue to which Amazon S3 publishes a message when it
    #         detects events of the specified type.</p>
    #   @return [String]
    # @!attribute events
    #   <p>A collection of bucket events for which to send notifications</p>
    #   @return [Array<String>]
    # @!attribute filter
    #   <p>Specifies object key name filtering rules. For information about key name filtering, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/notification-how-to-filtering.html">Configuring
    #           event notifications using object key name filtering</a> in the
    #           <i>Amazon S3 User Guide</i>.</p>
    #   @return [Types::NotificationConfigurationFilter]
    class QueueConfiguration < Struct.new(
      nil,
      :id,
      :queue_arn,
      :events,
      :filter,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #       The journal table record expiration settings for a journal table in an S3 Metadata configuration.
    #     </p>
    # @!attribute expiration
    #   <p>
    #         Specifies whether journal table record expiration is enabled or disabled.
    #       </p>
    #   @return [String]
    # @!attribute days
    #   <p>
    #         If you enable journal table record expiration, you can set the number of days to retain your
    #         journal table records. Journal table records must be retained for a minimum of 7 days. To set
    #         this value, specify any whole number from <code>7</code> to <code>2147483647</code>. For example,
    #         to retain your journal table records for one year, set this value to <code>365</code>.
    #       </p>
    #   @return [Integer]
    class RecordExpiration < Struct.new(
      nil,
      :expiration,
      :days,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The container for the records event.</p>
    # @!attribute payload
    #   <p>The byte array of partial, one or more result records. S3 Select doesn't guarantee that a record
    #         will be self-contained in one record frame. To ensure continuous streaming of data, S3 Select might
    #         split the same record across multiple record frames instead of aggregating the results in memory. Some
    #         S3 clients (for example, the SDK for Java) handle this behavior by creating a
    #           <code>ByteStream</code> out of the response by default. Other clients might not handle this behavior
    #         by default. In those cases, you must aggregate the results on the client side and parse the
    #         response.</p>
    #   @return [String]
    class RecordsEvent < Struct.new(
      nil,
      :payload,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies how requests are redirected. In the event of an error, you can specify a different error
    #       code to return.</p>
    # @!attribute host_name
    #   <p>The host name to use in the redirect request.</p>
    #   @return [String]
    # @!attribute http_redirect_code
    #   <p>The HTTP redirect code to use on the response. Not required if one of the siblings is
    #         present.</p>
    #   @return [String]
    # @!attribute protocol
    #   <p>Protocol to use when redirecting requests. The default is the protocol that is used in the original
    #         request.</p>
    #   @return [String]
    # @!attribute replace_key_prefix_with
    #   <p>The object key prefix to use in the redirect request. For example, to redirect requests for all
    #         pages with prefix <code>docs/</code> (objects in the <code>docs/</code> folder) to
    #           <code>documents/</code>, you can set a condition block with <code>KeyPrefixEquals</code> set to
    #           <code>docs/</code> and in the Redirect set <code>ReplaceKeyPrefixWith</code> to
    #           <code>/documents</code>. Not required if one of the siblings is present. Can be present only if
    #           <code>ReplaceKeyWith</code> is not provided.</p>
    #            <important>
    #               <p>Replacement must be made for object keys containing special characters (such as carriage returns) when using
    #            XML requests. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-keys.html#object-key-xml-related-constraints">
    #               XML related object key constraints</a>.</p>
    #            </important>
    #   @return [String]
    # @!attribute replace_key_with
    #   <p>The specific object key to use in the redirect request. For example, redirect request to
    #           <code>error.html</code>. Not required if one of the siblings is present. Can be present only if
    #           <code>ReplaceKeyPrefixWith</code> is not provided.</p>
    #            <important>
    #               <p>Replacement must be made for object keys containing special characters (such as carriage returns) when using
    #            XML requests. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-keys.html#object-key-xml-related-constraints">
    #               XML related object key constraints</a>.</p>
    #            </important>
    #   @return [String]
    class Redirect < Struct.new(
      nil,
      :host_name,
      :http_redirect_code,
      :protocol,
      :replace_key_prefix_with,
      :replace_key_with,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the redirect behavior of all requests to a website endpoint of an Amazon S3 bucket.</p>
    # @!attribute host_name
    #   <p>Name of the host where requests are redirected.</p>
    #   @return [String]
    # @!attribute protocol
    #   <p>Protocol to use when redirecting requests. The default is the protocol that is used in the original
    #         request.</p>
    #   @return [String]
    class RedirectAllRequestsTo < Struct.new(
      nil,
      :host_name,
      :protocol,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class RenameObjectOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bucket
    #   <p>The bucket name of the directory bucket containing the object.</p>
    #            <p> You must use virtual-hosted-style requests in the format
    #           <code>Bucket-name.s3express-zone-id.region-code.amazonaws.com</code>. Path-style requests are not
    #         supported. Directory bucket names must be unique in the chosen Availability Zone. Bucket names must
    #         follow the format <code>bucket-base-name--zone-id--x-s3 </code> (for example,
    #           <code>amzn-s3-demo-bucket--usw2-az1--x-s3</code>). For information about bucket naming restrictions, see
    #           <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/directory-bucket-naming-rules.html">Directory bucket naming rules</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute key
    #   <p>Key name of the object to rename.</p>
    #   @return [String]
    # @!attribute rename_source
    #   <p>Specifies the source for the rename operation. The value must be URL encoded.</p>
    #   @return [String]
    # @!attribute destination_if_match
    #   <p>Renames the object only if the ETag (entity tag) value provided during the operation matches the
    #         ETag of the object in S3. The <code>If-Match</code> header field makes the request method conditional on
    #         ETags. If the ETag values do not match, the operation returns a <code>412 Precondition Failed</code>
    #         error.</p>
    #            <p>Expects the ETag value as a string.</p>
    #   @return [String]
    # @!attribute destination_if_none_match
    #   <p> Renames the object only if the destination does not already exist in the specified directory
    #         bucket. If the object does exist when you send a request with <code>If-None-Match:*</code>, the S3 API
    #         will return a <code>412 Precondition Failed</code> error, preventing an overwrite. The
    #           <code>If-None-Match</code> header prevents overwrites of existing data by validating that there's not
    #         an object with the same key name already in your directory bucket.</p>
    #            <p> Expects the <code>*</code> character (asterisk).</p>
    #   @return [String]
    # @!attribute destination_if_modified_since
    #   <p>Renames the object if the destination exists and if it has been modified since the specified
    #         time.</p>
    #   @return [Time]
    # @!attribute destination_if_unmodified_since
    #   <p>Renames the object if it hasn't been modified since the specified time.</p>
    #   @return [Time]
    # @!attribute source_if_match
    #   <p>Renames the object if the source exists and if its entity tag (ETag) matches the specified ETag.
    #       </p>
    #   @return [String]
    # @!attribute source_if_none_match
    #   <p>Renames the object if the source exists and if its entity tag (ETag) is different than the specified
    #         ETag. If an asterisk (<code>*</code>) character is provided, the operation will fail and return a
    #           <code>412 Precondition Failed</code> error. </p>
    #   @return [String]
    # @!attribute source_if_modified_since
    #   <p>Renames the object if the source exists and if it has been modified since the specified time.</p>
    #   @return [Time]
    # @!attribute source_if_unmodified_since
    #   <p>Renames the object if the source exists and hasn't been modified since the specified time.</p>
    #   @return [Time]
    # @!attribute client_token
    #   <p> A unique string with a max of 64 ASCII characters in the ASCII range of 33 - 126.</p>
    #            <note>
    #               <p>
    #                  <code>RenameObject</code> supports idempotency using a client token. To make an idempotent API request
    #           using <code>RenameObject</code>, specify a client token in the request. You should not reuse the same
    #           client token for other API requests. If you retry a request that completed successfully using the same
    #           client token and the same parameters, the retry succeeds without performing any further actions. If
    #           you retry a successful request using the same client token, but one or more of the parameters are
    #           different, the retry fails and an <code>IdempotentParameterMismatch</code> error is returned. </p>
    #            </note>
    #   @return [String]
    class RenameObjectRequest < Struct.new(
      nil,
      :bucket,
      :key,
      :rename_source,
      :destination_if_match,
      :destination_if_none_match,
      :destination_if_modified_since,
      :destination_if_unmodified_since,
      :source_if_match,
      :source_if_none_match,
      :source_if_modified_since,
      :source_if_unmodified_since,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A filter that you can specify for selection for modifications on replicas. Amazon S3 doesn't replicate
    #       replica modifications by default. In the latest version of replication configuration (when
    #         <code>Filter</code> is specified), you can specify this element and set the status to
    #         <code>Enabled</code> to replicate modifications on replicas. </p>
    #          <note>
    #             <p> If you don't specify the <code>Filter</code> element, Amazon S3 assumes that the replication
    #         configuration is the earlier version, V1. In the earlier version, this element is not allowed.</p>
    #          </note>
    # @!attribute status
    #   <p>Specifies whether Amazon S3 replicates modifications on replicas.</p>
    #   @return [String]
    class ReplicaModifications < Struct.new(
      nil,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A container for replication rules. You can add up to 1,000 rules. The maximum size of a replication
    #       configuration is 2 MB.</p>
    # @!attribute role
    #   <p>The Amazon Resource Name (ARN) of the Identity and Access Management (IAM) role that Amazon S3 assumes when replicating
    #         objects. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/replication-how-setup.html">How to Set Up Replication</a> in the
    #           <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute rules
    #   <p>A container for one or more replication rules. A replication configuration must have at least one
    #         rule and can contain a maximum of 1,000 rules. </p>
    #   @return [Array<Types::ReplicationRule>]
    class ReplicationConfiguration < Struct.new(
      nil,
      :role,
      :rules,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies which Amazon S3 objects to replicate and where to store the replicas.</p>
    # @!attribute id
    #   <p>A unique identifier for the rule. The maximum value is 255 characters.</p>
    #   @return [String]
    # @!attribute priority
    #   <p>The priority indicates which rule has precedence whenever two or more replication rules conflict.
    #         Amazon S3 will attempt to replicate objects according to all replication rules. However, if there are two or
    #         more rules with the same destination bucket, then objects will be replicated according to the rule with
    #         the highest priority. The higher the number, the higher the priority. </p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/replication.html">Replication</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [Integer]
    # @!attribute prefix
    #   <p>An object key name prefix that identifies the object or objects to which the rule applies. The
    #         maximum prefix length is 1,024 characters. To include all objects in a bucket, specify an empty string.
    #         </p>
    #            <important>
    #               <p>Replacement must be made for object keys containing special characters (such as carriage returns) when using
    #            XML requests. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-keys.html#object-key-xml-related-constraints">
    #               XML related object key constraints</a>.</p>
    #            </important>
    #   @deprecated
    #   @return [String]
    # @!attribute filter
    #   <p>A filter that identifies the subset of objects to which the replication rule applies. A
    #           <code>Filter</code> must specify exactly one <code>Prefix</code>, <code>Tag</code>, or an
    #           <code>And</code> child element.</p>
    #   @return [Types::ReplicationRuleFilter]
    # @!attribute status
    #   <p>Specifies whether the rule is enabled.</p>
    #   @return [String]
    # @!attribute source_selection_criteria
    #   <p>A container that describes additional filters for identifying the source objects that you want to
    #         replicate. You can choose to enable or disable the replication of these objects. Currently, Amazon S3
    #         supports only the filter that you can specify for objects created with server-side encryption using a
    #         customer managed key stored in Amazon Web Services Key Management Service (SSE-KMS).</p>
    #   @return [Types::SourceSelectionCriteria]
    # @!attribute existing_object_replication
    #   <p>Optional configuration to replicate existing source bucket objects. </p>
    #            <note>
    #               <p>This parameter is no longer supported. To replicate existing objects, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-batch-replication-batch.html">Replicating
    #             existing objects with S3 Batch Replication</a> in the
    #           <i>Amazon S3 User Guide</i>.</p>
    #            </note>
    #   @return [Types::ExistingObjectReplication]
    # @!attribute destination
    #   <p>A container for information about the replication destination and its configurations including
    #         enabling the S3 Replication Time Control (S3 RTC).</p>
    #   @return [Types::Destination]
    # @!attribute delete_marker_replication
    #   <p>Specifies whether Amazon S3 replicates delete markers. If you specify a <code>Filter</code> in your
    #         replication configuration, you must also include a <code>DeleteMarkerReplication</code> element. If your
    #           <code>Filter</code> includes a <code>Tag</code> element, the <code>DeleteMarkerReplication</code>
    #               <code>Status</code> must be set to Disabled, because Amazon S3 does not support replicating delete markers
    #         for tag-based rules. For an example configuration, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/replication-add-config.html#replication-config-min-rule-config">Basic Rule
    #           Configuration</a>. </p>
    #            <p>For more information about delete marker replication, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/delete-marker-replication.html">Basic Rule Configuration</a>. </p>
    #            <note>
    #               <p>If you are using an earlier version of the replication configuration, Amazon S3 handles replication of
    #           delete markers differently. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/replication-add-config.html#replication-backward-compat-considerations">Backward Compatibility</a>.</p>
    #            </note>
    #   @return [Types::DeleteMarkerReplication]
    class ReplicationRule < Struct.new(
      nil,
      :id,
      :priority,
      :prefix,
      :filter,
      :status,
      :source_selection_criteria,
      :existing_object_replication,
      :destination,
      :delete_marker_replication,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A container for specifying rule filters. The filters determine the subset of objects to which the
    #       rule applies. This element is required only if you specify more than one filter. </p>
    #          <p>For example:</p>
    #          <ul>
    #             <li>
    #                <p>If you specify both a <code>Prefix</code> and a <code>Tag</code> filter, wrap these filters in
    #           an <code>And</code> tag. </p>
    #             </li>
    #             <li>
    #                <p>If you specify a filter based on multiple tags, wrap the <code>Tag</code> elements in an
    #             <code>And</code> tag.</p>
    #             </li>
    #          </ul>
    # @!attribute prefix
    #   <p>An object key name prefix that identifies the subset of objects to which the rule applies.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>An array of tags containing key and value pairs.</p>
    #   @return [Array<Types::Tag>]
    class ReplicationRuleAndOperator < Struct.new(
      nil,
      :prefix,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A filter that identifies the subset of objects to which the replication rule applies. A
    #         <code>Filter</code> must specify exactly one <code>Prefix</code>, <code>Tag</code>, or an
    #         <code>And</code> child element.</p>
    # @!attribute prefix
    #   <p>An object key name prefix that identifies the subset of objects to which the rule applies.</p>
    #            <important>
    #               <p>Replacement must be made for object keys containing special characters (such as carriage returns) when using
    #            XML requests. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-keys.html#object-key-xml-related-constraints">
    #               XML related object key constraints</a>.</p>
    #            </important>
    #   @return [String]
    # @!attribute tag
    #   <p>A container for specifying a tag key and value. </p>
    #            <p>The rule applies only to objects that have the tag in their tag set.</p>
    #   @return [Types::Tag]
    # @!attribute and
    #   <p>A container for specifying rule filters. The filters determine the subset of objects to which the
    #         rule applies. This element is required only if you specify more than one filter. For example: </p>
    #            <ul>
    #               <li>
    #                  <p>If you specify both a <code>Prefix</code> and a <code>Tag</code> filter, wrap these filters in
    #             an <code>And</code> tag.</p>
    #               </li>
    #               <li>
    #                  <p>If you specify a filter based on multiple tags, wrap the <code>Tag</code> elements in an
    #               <code>And</code> tag.</p>
    #               </li>
    #            </ul>
    #   @return [Types::ReplicationRuleAndOperator]
    class ReplicationRuleFilter < Struct.new(
      nil,
      :prefix,
      :tag,
      :and,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> A container specifying S3 Replication Time Control (S3 RTC) related information, including whether S3 RTC is enabled and
    #       the time when all objects and operations on objects must be replicated. Must be specified together with
    #       a <code>Metrics</code> block. </p>
    # @!attribute status
    #   <p> Specifies whether the replication time is enabled. </p>
    #   @return [String]
    # @!attribute time
    #   <p> A container specifying the time by which replication should be complete for all objects and
    #         operations on objects. </p>
    #   @return [Types::ReplicationTimeValue]
    class ReplicationTime < Struct.new(
      nil,
      :status,
      :time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> A container specifying the time value for S3 Replication Time Control (S3 RTC) and replication metrics
    #         <code>EventThreshold</code>. </p>
    # @!attribute minutes
    #   <p> Contains an integer specifying time in minutes. </p>
    #            <p> Valid value: 15</p>
    #   @return [Integer]
    class ReplicationTimeValue < Struct.new(
      nil,
      :minutes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for Payer.</p>
    # @!attribute payer
    #   <p>Specifies who pays for the download and request fees.</p>
    #   @return [String]
    class RequestPaymentConfiguration < Struct.new(
      nil,
      :payer,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for specifying if periodic <code>QueryProgress</code> messages should be sent.</p>
    # @!attribute enabled
    #   <p>Specifies whether periodic QueryProgress frames should be sent. Valid values: TRUE, FALSE. Default
    #         value: FALSE.</p>
    #   @return [Boolean]
    class RequestProgress < Struct.new(
      nil,
      :enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute request_charged
    #   <p>If present, indicates that the requester was successfully charged for the request. For more
    #         information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/RequesterPaysBuckets.html">Using Requester Pays buckets for storage transfers and usage</a> in the <i>Amazon Simple
    #           Storage Service user guide</i>.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute restore_output_path
    #   <p>Indicates the path in the provided S3 output location where Select results will be restored
    #         to.</p>
    #   @return [String]
    class RestoreObjectOutput < Struct.new(
      nil,
      :request_charged,
      :restore_output_path,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bucket
    #   <p>The bucket name containing the object to restore. </p>
    #            <p>
    #               <b>Access points</b> - When you use this action with an access point for general purpose buckets, you must provide the alias of the access point in place of the bucket name or specify the access point ARN. When you use this action with an access point for directory buckets, you must provide the access point name in place of the bucket name. When using the access point ARN, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <p>
    #               <b>S3 on Outposts</b> - When you use this action with S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the
    #                        form <code>
    #                  <i>AccessPointName</i>-<i>AccountId</i>.<i>outpostID</i>.s3-outposts.<i>Region</i>.amazonaws.com</code>. When you use this action with S3 on Outposts, the destination bucket must be the Outposts access point ARN or the access point alias. For more information about S3 on Outposts, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html">What is S3 on Outposts?</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute key
    #   <p>Object key for which the action was initiated.</p>
    #   @return [String]
    # @!attribute version_id
    #   <p>VersionId used to reference a specific version of the object.</p>
    #   @return [String]
    # @!attribute restore_request
    #   <p>Container for restore job parameters.</p>
    #   @return [Types::RestoreRequest]
    # @!attribute request_payer
    #   <p>Confirms that the requester knows that they will be charged for the request. Bucket owners need not
    #         specify this parameter in their requests. If either the source or destination S3 bucket has Requester
    #         Pays enabled, the requester will pay for the corresponding charges. For information about
    #         downloading objects from Requester Pays buckets, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html">Downloading Objects in Requester Pays
    #           Buckets</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute checksum_algorithm
    #   <p>Indicates the algorithm used to create the checksum for the object when you use the SDK. This header will not provide any
    #       additional functionality if you don't use the SDK. When you send this header, there must be a corresponding <code>x-amz-checksum</code> or
    #       <code>x-amz-trailer</code> header sent. Otherwise, Amazon S3 fails the request with the HTTP status code <code>400 Bad Request</code>. For more
    #       information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #       the <i>Amazon S3 User Guide</i>.</p>
    #            <p>If you provide an individual checksum, Amazon S3 ignores any provided <code>ChecksumAlgorithm</code>
    #         parameter.</p>
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    class RestoreObjectRequest < Struct.new(
      nil,
      :bucket,
      :key,
      :version_id,
      :restore_request,
      :request_payer,
      :checksum_algorithm,
      :expected_bucket_owner,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for restore job parameters.</p>
    # @!attribute days
    #   <p>Lifetime of the active copy in days. Do not use with restores that specify
    #           <code>OutputLocation</code>.</p>
    #            <p>The Days element is required for regular restores, and must not be provided for select
    #         requests.</p>
    #   @return [Integer]
    # @!attribute glacier_job_parameters
    #   <p>S3 Glacier related parameters pertaining to this job. Do not use with restores that specify
    #           <code>OutputLocation</code>.</p>
    #   @return [Types::GlacierJobParameters]
    # @!attribute type
    #   <important>
    #               <p>Amazon S3 Select is no longer available to new customers. Existing customers of Amazon S3 Select can
    #           continue to use the feature as usual. <a href="http://aws.amazon.com/blogs/storage/how-to-optimize-querying-your-data-in-amazon-s3/">Learn more</a>
    #               </p>
    #            </important>
    #            <p>Type of restore request.</p>
    #   @return [String]
    # @!attribute tier
    #   <p>Retrieval tier at which the restore will be processed.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The optional description for the job.</p>
    #   @return [String]
    # @!attribute select_parameters
    #   <important>
    #               <p>Amazon S3 Select is no longer available to new customers. Existing customers of Amazon S3 Select can
    #           continue to use the feature as usual. <a href="http://aws.amazon.com/blogs/storage/how-to-optimize-querying-your-data-in-amazon-s3/">Learn more</a>
    #               </p>
    #            </important>
    #            <p>Describes the parameters for Select job types.</p>
    #   @return [Types::SelectParameters]
    # @!attribute output_location
    #   <p>Describes the location where the restore job's output is stored.</p>
    #   @return [Types::OutputLocation]
    class RestoreRequest < Struct.new(
      nil,
      :days,
      :glacier_job_parameters,
      :type,
      :tier,
      :description,
      :select_parameters,
      :output_location,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the restoration status of an object. Objects in certain storage classes must be restored
    #       before they can be retrieved. For more information about these storage classes and how to work with
    #       archived objects, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/archived-objects.html">
    #         Working with archived objects</a> in the <i>Amazon S3 User Guide</i>.</p>
    #          <note>
    #             <p>This functionality is not supported for directory buckets. Directory buckets only support <code>EXPRESS_ONEZONE</code> (the S3 Express One Zone storage class) in Availability Zones and <code>ONEZONE_IA</code> (the S3 One Zone-Infrequent Access storage class) in Dedicated Local Zones.</p>
    #          </note>
    # @!attribute is_restore_in_progress
    #   <p>Specifies whether the object is currently being restored. If the object restoration is in progress,
    #         the header returns the value <code>TRUE</code>. For example:</p>
    #            <p>
    #               <code>x-amz-optional-object-attributes: IsRestoreInProgress="true"</code>
    #            </p>
    #            <p>If the object restoration has completed, the header returns the value <code>FALSE</code>. For
    #         example:</p>
    #            <p>
    #               <code>x-amz-optional-object-attributes: IsRestoreInProgress="false",
    #           RestoreExpiryDate="2012-12-21T00:00:00.000Z"</code>
    #            </p>
    #            <p>If the object hasn't been restored, there is no header response.</p>
    #   @return [Boolean]
    # @!attribute restore_expiry_date
    #   <p>Indicates when the restored copy will expire. This value is populated only if the object has already
    #         been restored. For example:</p>
    #            <p>
    #               <code>x-amz-optional-object-attributes: IsRestoreInProgress="false",
    #           RestoreExpiryDate="2012-12-21T00:00:00.000Z"</code>
    #            </p>
    #   @return [Time]
    class RestoreStatus < Struct.new(
      nil,
      :is_restore_in_progress,
      :restore_expiry_date,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the redirect behavior and when a redirect is applied. For more information about routing
    #       rules, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/how-to-page-redirect.html#advanced-conditional-redirects">Configuring
    #         advanced conditional redirects</a> in the <i>Amazon S3 User Guide</i>.</p>
    # @!attribute condition
    #   <p>A container for describing a condition that must be met for the specified redirect to apply. For
    #         example, 1. If request is for pages in the <code>/docs</code> folder, redirect to the
    #           <code>/documents</code> folder. 2. If request results in HTTP error 4xx, redirect request to another
    #         host where you might process the error.</p>
    #   @return [Types::Condition]
    # @!attribute redirect
    #   <p>Container for redirect information. You can redirect requests to another host, to another page, or
    #         with another protocol. In the event of an error, you can specify a different error code to
    #         return.</p>
    #   @return [Types::Redirect]
    class RoutingRule < Struct.new(
      nil,
      :condition,
      :redirect,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A container for object key name prefix and suffix filtering rules.</p>
    # @!attribute filter_rules
    #   <p>A list of containers for the key-value pair that defines the criteria for the filter rule.</p>
    #   @return [Array<Types::FilterRule>]
    class S3KeyFilter < Struct.new(
      nil,
      :filter_rules,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an Amazon S3 location that will receive the results of the restore request.</p>
    # @!attribute bucket_name
    #   <p>The name of the bucket where the restore results will be placed.</p>
    #   @return [String]
    # @!attribute prefix
    #   <p>The prefix that is prepended to the restore results for this request.</p>
    #   @return [String]
    # @!attribute encryption
    #   <p>Contains the type of server-side encryption used.</p>
    #   @return [Types::Encryption]
    # @!attribute canned_acl
    #   <p>The canned ACL to apply to the restore results.</p>
    #   @return [String]
    # @!attribute access_control_list
    #   <p>A list of grants that control access to the staged results.</p>
    #   @return [Array<Types::Grant>]
    # @!attribute tagging
    #   <p>The tag-set that is applied to the restore results.</p>
    #   @return [Types::Tagging]
    # @!attribute user_metadata
    #   <p>A list of metadata to store with the restore results in S3.</p>
    #   @return [Array<Types::MetadataEntry>]
    # @!attribute storage_class
    #   <p>The class of storage used to store the restore results.</p>
    #   @return [String]
    class S3Location < Struct.new(
      nil,
      :bucket_name,
      :prefix,
      :encryption,
      :canned_acl,
      :access_control_list,
      :tagging,
      :user_metadata,
      :storage_class,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The destination information for a V1 S3 Metadata configuration. The destination table bucket must
    #       be in the same Region and Amazon Web Services account as the general purpose bucket. The specified metadata table name
    #       must be unique within the <code>aws_s3_metadata</code> namespace in the destination table bucket.
    #     </p>
    #          <note>
    #             <p>If you created your S3 Metadata configuration before July 15, 2025, we recommend that you delete
    #         and re-create your configuration by using <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateBucketMetadataConfiguration.html">CreateBucketMetadataConfiguration</a> so that you can expire journal table records and create
    #         a live inventory table.</p>
    #          </note>
    # @!attribute table_bucket_arn
    #   <p> The Amazon Resource Name (ARN) for the table bucket that's specified as the destination in the
    #         metadata table configuration. The destination table bucket must be in the same Region and Amazon Web Services account
    #         as the general purpose bucket. </p>
    #   @return [String]
    # @!attribute table_name
    #   <p> The name for the metadata table in your metadata table configuration. The specified metadata table
    #         name must be unique within the <code>aws_s3_metadata</code> namespace in the destination table bucket.
    #       </p>
    #   @return [String]
    class S3TablesDestination < Struct.new(
      nil,
      :table_bucket_arn,
      :table_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The destination information for a V1 S3 Metadata configuration. The destination table bucket must
    #       be in the same Region and Amazon Web Services account as the general purpose bucket. The specified metadata table name
    #       must be unique within the <code>aws_s3_metadata</code> namespace in the destination table bucket.
    #     </p>
    #          <note>
    #             <p>If you created your S3 Metadata configuration before July 15, 2025, we recommend that you delete
    #         and re-create your configuration by using <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateBucketMetadataConfiguration.html">CreateBucketMetadataConfiguration</a> so that you can expire journal table records and create
    #         a live inventory table.</p>
    #          </note>
    # @!attribute table_bucket_arn
    #   <p> The Amazon Resource Name (ARN) for the table bucket that's specified as the destination in the
    #         metadata table configuration. The destination table bucket must be in the same Region and Amazon Web Services account
    #         as the general purpose bucket. </p>
    #   @return [String]
    # @!attribute table_name
    #   <p> The name for the metadata table in your metadata table configuration. The specified metadata table
    #         name must be unique within the <code>aws_s3_metadata</code> namespace in the destination table bucket.
    #       </p>
    #   @return [String]
    # @!attribute table_arn
    #   <p> The Amazon Resource Name (ARN) for the metadata table in the metadata table configuration. The
    #         specified metadata table name must be unique within the <code>aws_s3_metadata</code> namespace in the
    #         destination table bucket. </p>
    #   @return [String]
    # @!attribute table_namespace
    #   <p> The table bucket namespace for the metadata table in your metadata table configuration. This value
    #         is always <code>aws_s3_metadata</code>. </p>
    #   @return [String]
    class S3TablesDestinationResult < Struct.new(
      nil,
      :table_bucket_arn,
      :table_name,
      :table_arn,
      :table_namespace,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the use of SSE-KMS to encrypt delivered inventory reports.</p>
    # @!attribute key_id
    #   <p>Specifies the ID of the Key Management Service (KMS) symmetric encryption customer managed key to use for encrypting
    #         inventory reports.</p>
    #   @return [String]
    class SSEKMS < Struct.new(
      nil,
      :key_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #       If <code>SSEKMS</code> is specified for <code>ObjectEncryption</code>, this data type specifies
    #       the Amazon Web Services KMS key Amazon Resource Name (ARN) to use and whether to use an S3 Bucket Key for
    #       server-side encryption using Key Management Service (KMS) keys (SSE-KMS).
    #     </p>
    # @!attribute kms_key_arn
    #   <p>
    #         Specifies the Amazon Web Services KMS key Amazon Resource Name (ARN) to use for the updated server-side encryption
    #         type. Required if <code>ObjectEncryption</code> specifies <code>SSEKMS</code>.
    #       </p>
    #            <note>
    #               <p>You must specify the full Amazon Web Services KMS key ARN. The KMS key ID and KMS key alias aren't
    #           supported.</p>
    #            </note>
    #            <p>Pattern: (<code>arn:aws[-a-z0-9]*:kms:[-a-z0-9]*:[0-9]{12}:key/.+</code>)</p>
    #   @return [String]
    # @!attribute bucket_key_enabled
    #   <p>
    #         Specifies whether Amazon S3 should use an S3 Bucket Key for object encryption with server-side encryption
    #         using Key Management Service (KMS) keys (SSE-KMS). If this value isn't specified, it defaults to <code>false</code>.
    #         Setting this value to <code>true</code> causes Amazon S3 to use an S3 Bucket Key for object encryption with
    #         SSE-KMS. For more information, see
    #         <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/bucket-key.html">
    #           Using Amazon S3 Bucket Keys</a> in the <i>Amazon S3 User Guide</i>.
    #       </p>
    #            <p>Valid Values: <code>true</code> | <code>false</code>
    #            </p>
    #   @return [Boolean]
    class SSEKMSEncryption < Struct.new(
      nil,
      :kms_key_arn,
      :bucket_key_enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the use of SSE-S3 to encrypt delivered inventory reports.</p>
    class SSES3 < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the byte range of the object to get the records from. A record is processed when its first
    #       byte is contained by the range. This parameter is optional, but when specified, it must not be empty.
    #       See RFC 2616, Section 14.35.1 about how to specify the start and end of the range.</p>
    # @!attribute start
    #   <p>Specifies the start of the byte range. This parameter is optional. Valid values: non-negative
    #         integers. The default value is 0. If only <code>start</code> is supplied, it means scan from that point
    #         to the end of the file. For example,
    #           <code><scanrange><start>50</start></scanrange></code> means scan from byte 50
    #         until the end of the file.</p>
    #   @return [Integer]
    # @!attribute end
    #   <p>Specifies the end of the byte range. This parameter is optional. Valid values: non-negative
    #         integers. The default value is one less than the size of the object being queried. If only the End
    #         parameter is supplied, it is interpreted to mean scan the last N bytes of the file. For example,
    #           <code><scanrange><end>50</end></scanrange></code> means scan the last 50
    #         bytes.</p>
    #   @return [Integer]
    class ScanRange < Struct.new(
      nil,
      :start,
      :end,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The container for selecting objects from a content event stream.</p>
    # @!attribute records
    #   <p>The Records Event.</p>
    #   @return [Types::RecordsEvent]
    # @!attribute stats
    #   <p>The Stats Event.</p>
    #   @return [Types::StatsEvent]
    # @!attribute progress
    #   <p>The Progress Event.</p>
    #   @return [Types::ProgressEvent]
    # @!attribute cont
    #   <p>The Continuation Event.</p>
    #   @return [Types::ContinuationEvent]
    # @!attribute end
    #   <p>The End Event.</p>
    #   @return [Types::EndEvent]
    class SelectObjectContentEventStream < Struct.new(
      :records,
      :stats,
      :progress,
      :cont,
      :end,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Records < SelectObjectContentEventStream; end
      class Stats < SelectObjectContentEventStream; end
      class Progress < SelectObjectContentEventStream; end
      class Cont < SelectObjectContentEventStream; end
      class End < SelectObjectContentEventStream; end
      class Unknown < SelectObjectContentEventStream; end
    end

    # @!attribute payload
    #   <p>The array of results.</p>
    #   @return [Types::SelectObjectContentEventStream]
    class SelectObjectContentOutput < Struct.new(
      nil,
      :payload,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <note>
    #             <p>Learn Amazon S3 Select is no longer available to new customers. Existing customers of Amazon S3
    #         Select can continue to use the feature as usual. <a href="http://aws.amazon.com/blogs/storage/how-to-optimize-querying-your-data-in-amazon-s3/">Learn more</a>
    #             </p>
    #          </note>
    #          <p>Request to filter the contents of an Amazon S3 object based on a simple Structured Query Language (SQL)
    #       statement. In the request, along with the SQL expression, you must specify a data serialization format
    #       (JSON or CSV) of the object. Amazon S3 uses this to parse object data into records. It returns only records
    #       that match the specified SQL expression. You must also specify the data serialization format for the
    #       response. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/RESTObjectSELECTContent.html">S3Select API Documentation</a>.</p>
    # @!attribute bucket
    #   <p>The S3 bucket.</p>
    #   @return [String]
    # @!attribute key
    #   <p>The object key.</p>
    #   @return [String]
    # @!attribute sse_customer_algorithm
    #   <p>The server-side encryption (SSE) algorithm used to encrypt the object. This parameter is needed only when the object was created
    #       using a checksum algorithm. For more information,
    #       see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ServerSideEncryptionCustomerKeys.html">Protecting data using SSE-C keys</a> in the
    #       <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute sse_customer_key
    #   <p>The server-side encryption (SSE) customer managed key. This parameter is needed only when the object was created using a checksum algorithm.
    #       For more information, see
    #       <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ServerSideEncryptionCustomerKeys.html">Protecting data using SSE-C keys</a> in the
    #       <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute sse_customer_key_md5
    #   <p>The MD5 server-side encryption (SSE) customer managed key. This parameter is needed only when the object was created using a checksum
    #       algorithm. For more information,
    #       see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ServerSideEncryptionCustomerKeys.html">Protecting data using SSE-C keys</a> in the
    #       <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute expression
    #   <p>The expression that is used to query the object.</p>
    #   @return [String]
    # @!attribute expression_type
    #   <p>The type of the provided expression (for example, SQL).</p>
    #   @return [String]
    # @!attribute request_progress
    #   <p>Specifies if periodic request progress information should be enabled.</p>
    #   @return [Types::RequestProgress]
    # @!attribute input_serialization
    #   <p>Describes the format of the data in the object that is being queried.</p>
    #   @return [Types::InputSerialization]
    # @!attribute output_serialization
    #   <p>Describes the format of the data that you want Amazon S3 to return in response.</p>
    #   @return [Types::OutputSerialization]
    # @!attribute scan_range
    #   <p>Specifies the byte range of the object to get the records from. A record is processed when its first
    #         byte is contained by the range. This parameter is optional, but when specified, it must not be empty.
    #         See RFC 2616, Section 14.35.1 about how to specify the start and end of the range.</p>
    #            <p>
    #               <code>ScanRange</code>may be used in the following ways:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code><scanrange><start>50</start><end>100</end></scanrange></code>
    #             - process only the records starting between the bytes 50 and 100 (inclusive, counting from
    #             zero)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code><scanrange><start>50</start></scanrange></code> - process only the
    #             records starting after the byte 50</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code><scanrange><end>50</end></scanrange></code> - process only the
    #             records within the last 50 bytes of the file.</p>
    #               </li>
    #            </ul>
    #   @return [Types::ScanRange]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    class SelectObjectContentRequest < Struct.new(
      nil,
      :bucket,
      :key,
      :sse_customer_algorithm,
      :sse_customer_key,
      :sse_customer_key_md5,
      :expression,
      :expression_type,
      :request_progress,
      :input_serialization,
      :output_serialization,
      :scan_range,
      :expected_bucket_owner,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <important>
    #             <p>Amazon S3 Select is no longer available to new customers. Existing customers of Amazon S3 Select can
    #         continue to use the feature as usual. <a href="http://aws.amazon.com/blogs/storage/how-to-optimize-querying-your-data-in-amazon-s3/">Learn more</a>
    #             </p>
    #          </important>
    #          <p>Describes the parameters for Select job types.</p>
    #          <p>Learn <a href="http://aws.amazon.com/blogs/storage/how-to-optimize-querying-your-data-in-amazon-s3/">How to
    #         optimize querying your data in Amazon S3</a> using <a href="https://docs.aws.amazon.com/athena/latest/ug/what-is.html">Amazon Athena</a>, <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/transforming-objects.html">S3 Object Lambda</a>, or client-side
    #       filtering.</p>
    # @!attribute input_serialization
    #   <p>Describes the serialization format of the object.</p>
    #   @return [Types::InputSerialization]
    # @!attribute expression_type
    #   <p>The type of the provided expression (for example, SQL).</p>
    #   @return [String]
    # @!attribute expression
    #   <important>
    #               <p>Amazon S3 Select is no longer available to new customers. Existing customers of Amazon S3 Select can
    #           continue to use the feature as usual. <a href="http://aws.amazon.com/blogs/storage/how-to-optimize-querying-your-data-in-amazon-s3/">Learn more</a>
    #               </p>
    #            </important>
    #            <p>The expression that is used to query the object.</p>
    #   @return [String]
    # @!attribute output_serialization
    #   <p>Describes how the results of the Select job are serialized.</p>
    #   @return [Types::OutputSerialization]
    class SelectParameters < Struct.new(
      nil,
      :input_serialization,
      :expression_type,
      :expression,
      :output_serialization,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the default server-side encryption to apply to new objects in the bucket. If a PUT Object
    #       request doesn't specify any server-side encryption, this default encryption will be applied. For more
    #       information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/RESTBucketPUTencryption.html">PutBucketEncryption</a>.</p>
    #          <note>
    #             <ul>
    #                <li>
    #                   <p>
    #                      <b>General purpose buckets</b> - If you don't specify a customer managed key
    #             at configuration, Amazon S3 automatically creates an Amazon Web Services KMS key (<code>aws/s3</code>) in your Amazon Web Services
    #             account the first time that you add an object encrypted with SSE-KMS to a bucket. By default, Amazon S3
    #             uses this KMS key for SSE-KMS. </p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <b>Directory buckets</b> -
    #             Your SSE-KMS configuration can only support 1 <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#customer-cmk">customer managed key</a> per directory bucket's lifetime.
    # The <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-managed-cmk">Amazon Web Services managed key</a> (<code>aws/s3</code>) isn't supported.
    # </p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <b>Directory buckets</b> -
    #             For directory buckets, there are only two supported options for server-side encryption: SSE-S3 and SSE-KMS.</p>
    #                </li>
    #             </ul>
    #          </note>
    # @!attribute sse_algorithm
    #   <p>Server-side encryption algorithm to use for the default encryption.</p>
    #            <note>
    #               <p>For directory buckets, there are only two supported values for server-side encryption: <code>AES256</code> and <code>aws:kms</code>.</p>
    #            </note>
    #   @return [String]
    # @!attribute kms_master_key_id
    #   <p>Amazon Web Services Key Management Service (KMS) customer managed key ID to use for the default encryption. </p>
    #            <note>
    #               <ul>
    #                  <li>
    #                     <p>
    #                        <b>General purpose buckets</b> - This parameter is allowed if and
    #               only if <code>SSEAlgorithm</code> is set to <code>aws:kms</code> or
    #               <code>aws:kms:dsse</code>.</p>
    #                  </li>
    #                  <li>
    #                     <p>
    #                        <b>Directory buckets</b> - This parameter is allowed if and
    #               only if <code>SSEAlgorithm</code> is set to <code>aws:kms</code>.</p>
    #                  </li>
    #               </ul>
    #            </note>
    #            <p>You can specify the key ID, key alias, or the Amazon Resource Name (ARN) of the KMS key.</p>
    #            <ul>
    #               <li>
    #                  <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Key ARN:
    #               <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Key Alias: <code>alias/alias-name</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>If you are using encryption with cross-account or Amazon Web Services service operations, you must use a fully
    #         qualified KMS key ARN. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/bucket-encryption.html#bucket-encryption-update-bucket-policy">Using
    #           encryption for cross-account operations</a>.</p>
    #            <note>
    #               <ul>
    #                  <li>
    #                     <p>
    #                        <b>General purpose buckets</b> - If you're specifying a customer
    #               managed KMS key, we recommend using a fully qualified KMS key ARN. If you use a KMS key
    #               alias instead, then KMS resolves the key within the requester’s account. This behavior can
    #               result in data that's encrypted with a KMS key that belongs to the requester, and not the bucket
    #               owner. Also, if you use a key ID, you can run into a LogDestination undeliverable error when
    #               creating a VPC flow log. </p>
    #                  </li>
    #                  <li>
    #                     <p>
    #                        <b>Directory buckets</b> -
    #               When you specify an <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#customer-cmk">KMS customer managed key</a> for encryption in your directory bucket, only use the key ID or key ARN. The key alias format of the KMS key isn't supported.</p>
    #                  </li>
    #               </ul>
    #            </note>
    #            <important>
    #               <p>Amazon S3 only supports symmetric encryption KMS keys. For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html">Asymmetric keys in
    #             Amazon Web Services KMS</a> in the <i>Amazon Web Services Key Management Service Developer Guide</i>.</p>
    #            </important>
    #   @return [String]
    class ServerSideEncryptionByDefault < Struct.new(
      nil,
      :sse_algorithm,
      :kms_master_key_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the default server-side-encryption configuration.</p>
    # @!attribute rules
    #   <p>Container for information about a particular server-side encryption configuration rule.</p>
    #   @return [Array<Types::ServerSideEncryptionRule>]
    class ServerSideEncryptionConfiguration < Struct.new(
      nil,
      :rules,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the default server-side encryption configuration.</p>
    #          <note>
    #             <ul>
    #                <li>
    #                   <p>
    #                      <b>General purpose buckets</b> - If you're specifying a customer
    #             managed KMS key, we recommend using a fully qualified KMS key ARN. If you use a KMS key
    #             alias instead, then KMS resolves the key within the requester’s account. This behavior can
    #             result in data that's encrypted with a KMS key that belongs to the requester, and not the bucket
    #             owner.</p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <b>Directory buckets</b> -
    #             When you specify an <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#customer-cmk">KMS customer managed key</a> for encryption in your directory bucket, only use the key ID or key ARN. The key alias format of the KMS key isn't supported.</p>
    #                </li>
    #             </ul>
    #          </note>
    # @!attribute apply_server_side_encryption_by_default
    #   <p>Specifies the default server-side encryption to apply to new objects in the bucket. If a PUT Object
    #         request doesn't specify any server-side encryption, this default encryption will be applied.</p>
    #   @return [Types::ServerSideEncryptionByDefault]
    # @!attribute bucket_key_enabled
    #   <p>Specifies whether Amazon S3 should use an S3 Bucket Key with server-side encryption using KMS (SSE-KMS)
    #         for new objects in the bucket. Existing objects are not affected. Setting the
    #           <code>BucketKeyEnabled</code> element to <code>true</code> causes Amazon S3 to use an S3 Bucket Key. </p>
    #            <note>
    #               <ul>
    #                  <li>
    #                     <p>
    #                        <b>General purpose buckets</b> - By default, S3 Bucket Key is not
    #               enabled. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/bucket-key.html">Amazon S3 Bucket Keys</a> in the
    #                 <i>Amazon S3 User Guide</i>.</p>
    #                  </li>
    #                  <li>
    #                     <p>
    #                        <b>Directory buckets</b> -
    #               S3 Bucket Keys are always enabled for <code>GET</code> and <code>PUT</code> operations in a directory bucket and can’t be disabled. S3 Bucket Keys aren't supported, when you copy SSE-KMS encrypted objects from general purpose buckets
    #   to directory buckets, from directory buckets to general purpose buckets, or between directory buckets, through <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_CopyObject.html">CopyObject</a>, <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_UploadPartCopy.html">UploadPartCopy</a>, <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/directory-buckets-objects-Batch-Ops">the Copy operation in Batch Operations</a>, or
    #                               <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/create-import-job">the import jobs</a>. In this case, Amazon S3 makes a call to KMS every time a copy request is made for a KMS-encrypted object.</p>
    #                  </li>
    #               </ul>
    #            </note>
    #   @return [Boolean]
    # @!attribute blocked_encryption_types
    #   <p>A bucket-level setting for Amazon S3 general purpose buckets used to prevent the upload of new objects encrypted with the specified server-side encryption type. For example, blocking an encryption type will block <code>PutObject</code>, <code>CopyObject</code>, <code>PostObject</code>, multipart upload, and replication requests to the bucket for objects with the specified encryption type. However, you can continue to read and list any pre-existing objects already encrypted with the specified encryption type. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/blocking-unblocking-s3-c-encryption-gpb.html">Blocking or unblocking SSE-C for a general purpose bucket</a>.</p>
    #            <note>
    #               <p>Currently, this parameter only supports blocking or unblocking server-side encryption with customer-provided keys (SSE-C). For more information about SSE-C, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/ServerSideEncryptionCustomerKeys.html">Using server-side encryption with customer-provided keys (SSE-C)</a>.</p>
    #            </note>
    #   @return [Types::BlockedEncryptionTypes]
    class ServerSideEncryptionRule < Struct.new(
      nil,
      :apply_server_side_encryption_by_default,
      :bucket_key_enabled,
      :blocked_encryption_types,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The established temporary security credentials of the session.</p>
    #          <note>
    #             <p>
    #                <b>Directory buckets</b> - These session credentials are only
    #         supported for the authentication and authorization of Zonal endpoint API operations on directory buckets.</p>
    #          </note>
    # @!attribute access_key_id
    #   <p>A unique identifier that's associated with a secret access key. The access key ID and the secret
    #         access key are used together to sign programmatic Amazon Web Services requests cryptographically. </p>
    #   @return [String]
    # @!attribute secret_access_key
    #   <p>A key that's used with the access key ID to cryptographically sign programmatic Amazon Web Services requests.
    #         Signing a request identifies the sender and prevents the request from being altered. </p>
    #   @return [String]
    # @!attribute session_token
    #   <p>A part of the temporary security credentials. The session token is used to validate the temporary
    #         security credentials.
    #
    #       </p>
    #   @return [String]
    # @!attribute expiration
    #   <p>Temporary security credentials expire after a specified interval. After temporary credentials
    #         expire, any calls that you make with those credentials will fail. So you must generate a new set of
    #         temporary credentials. Temporary credentials cannot be extended or refreshed beyond the original
    #         specified interval.</p>
    #   @return [Time]
    class SessionCredentials < Struct.new(
      nil,
      :access_key_id,
      :secret_access_key,
      :session_token,
      :expiration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>To use simple format for S3 keys for log objects, set SimplePrefix to an empty object.</p>
    #          <p>
    #             <code>[DestinationPrefix][YYYY]-[MM]-[DD]-[hh]-[mm]-[ss]-[UniqueString]</code>
    #          </p>
    class SimplePrefix < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A container that describes additional filters for identifying the source objects that you want to
    #       replicate. You can choose to enable or disable the replication of these objects. Currently, Amazon S3
    #       supports only the filter that you can specify for objects created with server-side encryption using a
    #       customer managed key stored in Amazon Web Services Key Management Service (SSE-KMS).</p>
    # @!attribute sse_kms_encrypted_objects
    #   <p> A container for filter information for the selection of Amazon S3 objects encrypted with Amazon Web Services KMS. If
    #         you include <code>SourceSelectionCriteria</code> in the replication configuration, this element is
    #         required. </p>
    #   @return [Types::SseKmsEncryptedObjects]
    # @!attribute replica_modifications
    #   <p>A filter that you can specify for selections for modifications on replicas. Amazon S3 doesn't replicate
    #         replica modifications by default. In the latest version of replication configuration (when
    #           <code>Filter</code> is specified), you can specify this element and set the status to
    #           <code>Enabled</code> to replicate modifications on replicas. </p>
    #            <note>
    #               <p> If you don't specify the <code>Filter</code> element, Amazon S3 assumes that the replication
    #           configuration is the earlier version, V1. In the earlier version, this element is not allowed</p>
    #            </note>
    #   @return [Types::ReplicaModifications]
    class SourceSelectionCriteria < Struct.new(
      nil,
      :sse_kms_encrypted_objects,
      :replica_modifications,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A container for filter information for the selection of S3 objects encrypted with Amazon Web Services KMS.</p>
    # @!attribute status
    #   <p>Specifies whether Amazon S3 replicates objects created with server-side encryption using an Amazon Web Services KMS key
    #         stored in Amazon Web Services Key Management Service.</p>
    #   @return [String]
    class SseKmsEncryptedObjects < Struct.new(
      nil,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for the stats details.</p>
    # @!attribute bytes_scanned
    #   <p>The total number of object bytes scanned.</p>
    #   @return [Integer]
    # @!attribute bytes_processed
    #   <p>The total number of uncompressed object bytes processed.</p>
    #   @return [Integer]
    # @!attribute bytes_returned
    #   <p>The total number of bytes of records payload data returned.</p>
    #   @return [Integer]
    class Stats < Struct.new(
      nil,
      :bytes_scanned,
      :bytes_processed,
      :bytes_returned,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for the Stats Event.</p>
    # @!attribute details
    #   <p>The Stats event details.</p>
    #   @return [Types::Stats]
    class StatsEvent < Struct.new(
      nil,
      :details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies data related to access patterns to be collected and made available to analyze the
    #       tradeoffs between different storage classes for an Amazon S3 bucket.</p>
    # @!attribute data_export
    #   <p>Specifies how data related to the storage class analysis for an Amazon S3 bucket should be
    #         exported.</p>
    #   @return [Types::StorageClassAnalysisDataExport]
    class StorageClassAnalysis < Struct.new(
      nil,
      :data_export,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for data related to the storage class analysis for an Amazon S3 bucket for export.</p>
    # @!attribute output_schema_version
    #   <p>The version of the output schema to use when exporting data. Must be <code>V_1</code>.</p>
    #   @return [String]
    # @!attribute destination
    #   <p>The place to store the data for an analysis.</p>
    #   @return [Types::AnalyticsExportDestination]
    class StorageClassAnalysisDataExport < Struct.new(
      nil,
      :output_schema_version,
      :destination,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A container of a key value name pair.</p>
    # @!attribute key
    #   <p>Name of the object key.</p>
    #   @return [String]
    # @!attribute value
    #   <p>Value of the tag.</p>
    #   @return [String]
    class Tag < Struct.new(
      nil,
      :key,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for <code>TagSet</code> elements.</p>
    # @!attribute tag_set
    #   <p>A collection for a set of tags</p>
    #   @return [Array<Types::Tag>]
    class Tagging < Struct.new(
      nil,
      :tag_set,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for granting information.</p>
    #          <p>Buckets that use the bucket owner enforced setting for Object Ownership don't support target grants.
    #       For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/enable-server-access-logging.html#grant-log-delivery-permissions-general">Permissions server access log delivery</a> in the <i>Amazon S3 User Guide</i>.</p>
    # @!attribute grantee
    #   <p>Container for the person being granted permissions.</p>
    #   @return [Types::Grantee]
    # @!attribute permission
    #   <p>Logging permissions assigned to the grantee for the bucket.</p>
    #   @return [String]
    class TargetGrant < Struct.new(
      nil,
      :grantee,
      :permission,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Amazon S3 key format for log objects. Only one format, PartitionedPrefix or SimplePrefix, is
    #       allowed.</p>
    # @!attribute simple_prefix
    #   <p>To use the simple format for S3 keys for log objects. To specify SimplePrefix format, set
    #         SimplePrefix to {}.</p>
    #   @return [Types::SimplePrefix]
    # @!attribute partitioned_prefix
    #   <p>Partitioned S3 key for log objects.</p>
    #   @return [Types::PartitionedPrefix]
    class TargetObjectKeyFormat < Struct.new(
      nil,
      :simple_prefix,
      :partitioned_prefix,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The S3 Intelligent-Tiering storage class is designed to optimize storage costs by automatically
    #       moving data to the most cost-effective storage access tier, without additional operational
    #       overhead.</p>
    # @!attribute days
    #   <p>The number of consecutive days of no access after which an object will be eligible to be
    #         transitioned to the corresponding tier. The minimum number of days specified for Archive Access tier
    #         must be at least 90 days and Deep Archive Access tier must be at least 180 days. The maximum can be up to
    #         2 years (730 days).</p>
    #   @return [Integer]
    # @!attribute access_tier
    #   <p>S3 Intelligent-Tiering access tier. See <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/storage-class-intro.html#sc-dynamic-data-access">Storage class for
    #           automatically optimizing frequently and infrequently accessed objects</a> for a list of access
    #         tiers in the S3 Intelligent-Tiering storage class.</p>
    #   @return [String]
    class Tiering < Struct.new(
      nil,
      :days,
      :access_tier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> You have attempted to add more parts than the maximum of 10000 that are allowed for this object.
    #       You can use the CopyObject operation to copy this object to another and then add more data to the newly
    #       copied object. </p>
    class TooManyParts < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A container for specifying the configuration for publication of messages to an Amazon Simple
    #       Notification Service (Amazon SNS) topic when Amazon S3 detects specified events.</p>
    # @!attribute id
    #   <p>An optional unique identifier for configurations in a notification configuration. If you don't
    #         provide one, Amazon S3 will assign an ID.</p>
    #   @return [String]
    # @!attribute topic_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon SNS topic to which Amazon S3 publishes a message when it
    #         detects events of the specified type.</p>
    #   @return [String]
    # @!attribute events
    #   <p>The Amazon S3 bucket event about which to send notifications. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/NotificationHowTo.html">Supported Event Types</a> in
    #         the <i>Amazon S3 User Guide</i>.</p>
    #   @return [Array<String>]
    # @!attribute filter
    #   <p>Specifies object key name filtering rules. For information about key name filtering, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/notification-how-to-filtering.html">Configuring
    #           event notifications using object key name filtering</a> in the
    #           <i>Amazon S3 User Guide</i>.</p>
    #   @return [Types::NotificationConfigurationFilter]
    class TopicConfiguration < Struct.new(
      nil,
      :id,
      :topic_arn,
      :events,
      :filter,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies when an object transitions to a specified storage class. For more information about Amazon S3
    #       lifecycle configuration rules, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/lifecycle-transition-general-considerations.html">Transitioning Objects Using
    #         Amazon S3 Lifecycle</a> in the <i>Amazon S3 User Guide</i>.</p>
    # @!attribute date
    #   <p>Indicates when objects are transitioned to the specified storage class. The date value must be in
    #         ISO 8601 format. The time is always midnight UTC.</p>
    #   @return [Time]
    # @!attribute days
    #   <p>Indicates the number of days after creation when objects are transitioned to the specified storage
    #         class. The value can be <code>0</code> or any positive integer. Be aware that some storage classes have a
    #         minimum storage duration and that you're charged for transitioning objects before their minimum storage
    #         duration. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/lifecycle-transition-general-considerations.html#lifecycle-configuration-constraints"> Constraints and considerations for transitions</a> in the <i>Amazon S3 User
    #           Guide</i>.</p>
    #   @return [Integer]
    # @!attribute storage_class
    #   <p>The storage class to which you want the object to transition.</p>
    #   @return [String]
    class Transition < Struct.new(
      nil,
      :date,
      :days,
      :storage_class,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The annotation payload is not valid UTF-8 encoded text.</p>
    class UnsupportedMediaType < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bucket
    #   <p>The name of the bucket whose annotation table configuration to update.</p>
    #   @return [String]
    # @!attribute content_md5
    #   <p>Base64-encoded MD5 digest of the message body.</p>
    #   @return [String]
    # @!attribute checksum_algorithm
    #   <p>Checksum algorithm for the request payload.</p>
    #   @return [String]
    # @!attribute annotation_table_configuration
    #   <p>The annotation table configuration updates to apply.</p>
    #   @return [Types::AnnotationTableConfigurationUpdates]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner.</p>
    #   @return [String]
    class UpdateBucketMetadataAnnotationTableConfigurationRequest < Struct.new(
      nil,
      :bucket,
      :content_md5,
      :checksum_algorithm,
      :annotation_table_configuration,
      :expected_bucket_owner,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bucket
    #   <p>
    #         The general purpose bucket that corresponds to the metadata configuration that you want to
    #         enable or disable an inventory table for.
    #       </p>
    #   @return [String]
    # @!attribute content_md5
    #   <p>
    #         The <code>Content-MD5</code> header for the inventory table configuration.
    #       </p>
    #   @return [String]
    # @!attribute checksum_algorithm
    #   <p>
    #         The checksum algorithm to use with your inventory table configuration.
    #       </p>
    #   @return [String]
    # @!attribute inventory_table_configuration
    #   <p>
    #         The contents of your inventory table configuration.
    #       </p>
    #   @return [Types::InventoryTableConfigurationUpdates]
    # @!attribute expected_bucket_owner
    #   <p>
    #         The expected owner of the general purpose bucket that corresponds to the metadata table
    #         configuration that you want to enable or disable an inventory table for.
    #       </p>
    #   @return [String]
    class UpdateBucketMetadataInventoryTableConfigurationRequest < Struct.new(
      nil,
      :bucket,
      :content_md5,
      :checksum_algorithm,
      :inventory_table_configuration,
      :expected_bucket_owner,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bucket
    #   <p>
    #         The general purpose bucket that corresponds to the metadata configuration that you want to
    #         enable or disable journal table record expiration for.
    #       </p>
    #   @return [String]
    # @!attribute content_md5
    #   <p>
    #         The <code>Content-MD5</code> header for the journal table configuration.
    #       </p>
    #   @return [String]
    # @!attribute checksum_algorithm
    #   <p>
    #         The checksum algorithm to use with your journal table configuration.
    #       </p>
    #   @return [String]
    # @!attribute journal_table_configuration
    #   <p>
    #         The contents of your journal table configuration.
    #       </p>
    #   @return [Types::JournalTableConfigurationUpdates]
    # @!attribute expected_bucket_owner
    #   <p>
    #         The expected owner of the general purpose bucket that corresponds to the metadata table
    #         configuration that you want to enable or disable journal table record expiration for.
    #       </p>
    #   @return [String]
    class UpdateBucketMetadataJournalTableConfigurationRequest < Struct.new(
      nil,
      :bucket,
      :content_md5,
      :checksum_algorithm,
      :journal_table_configuration,
      :expected_bucket_owner,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bucket
    #   <p>
    #         The name of the general purpose bucket that contains the specified object key name.
    #       </p>
    #            <p>When you use this operation with an access point attached to a general purpose bucket, you
    #         must either provide the alias of the access point in place of the bucket name or you must specify
    #         the access point Amazon Resource Name (ARN). When using the access point ARN, you must direct
    #         requests to the access point hostname. The access point hostname takes the form
    #         <code>
    #                  <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com</code>.
    #         When using this operation with an access point through the Amazon Web Services SDKs, you provide the access point
    #         ARN in place of the bucket name. For more information about access point ARNs, see
    #         <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-points-naming.html">
    #           Referencing access points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute key
    #   <p>
    #         The key name of the object that you want to update the server-side encryption type for.
    #       </p>
    #   @return [String]
    # @!attribute version_id
    #   <p>
    #         The version ID of the object that you want to update the server-side encryption type for.
    #       </p>
    #   @return [String]
    # @!attribute object_encryption
    #   <p>
    #         The updated server-side encryption type for this object. The <code>UpdateObjectEncryption</code>
    #         operation supports the SSE-S3 and SSE-KMS encryption types.
    #       </p>
    #            <p>Valid Values: <code>SSES3</code> | <code>SSEKMS</code>
    #            </p>
    #   @return [Types::ObjectEncryption]
    # @!attribute request_payer
    #   <p>Confirms that the requester knows that they will be charged for the request. Bucket owners need not
    #         specify this parameter in their requests. If either the source or destination S3 bucket has Requester
    #         Pays enabled, the requester will pay for the corresponding charges. For information about
    #         downloading objects from Requester Pays buckets, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html">Downloading Objects in Requester Pays
    #           Buckets</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>
    #         The account ID of the expected bucket owner. If the account ID that you provide doesn't match the
    #         actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code>
    #         (access denied).
    #       </p>
    #   @return [String]
    # @!attribute content_md5
    #   <p>
    #         The MD5 hash for the request body. For requests made using the Amazon Web Services Command Line Interface (CLI) or Amazon Web Services SDKs, this field is calculated automatically.
    #      </p>
    #   @return [String]
    # @!attribute checksum_algorithm
    #   <p>
    #         Indicates the algorithm used to create the checksum for the object when you use an Amazon Web Services SDK. This header
    #         doesn't provide any additional functionality if you don't use the SDK. When you send this header,
    #         there must be a corresponding <code>x-amz-checksum</code> or <code>x-amz-trailer</code> header sent.
    #         Otherwise, Amazon S3 fails the request with the HTTP status code <code>400 Bad Request</code>. For more
    #         information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">
    #           Checking object integrity </a> in the <i>Amazon S3 User Guide</i>.
    #       </p>
    #            <p>If you provide an individual checksum, Amazon S3 ignores any provided <code>ChecksumAlgorithm</code>
    #         parameter.</p>
    #   @return [String]
    class UpdateObjectEncryptionRequest < Struct.new(
      nil,
      :bucket,
      :key,
      :version_id,
      :object_encryption,
      :request_payer,
      :expected_bucket_owner,
      :content_md5,
      :checksum_algorithm,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute request_charged
    #   <p>If present, indicates that the requester was successfully charged for the request. For more
    #         information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/RequesterPaysBuckets.html">Using Requester Pays buckets for storage transfers and usage</a> in the <i>Amazon Simple
    #           Storage Service user guide</i>.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    class UpdateObjectEncryptionResponse < Struct.new(
      nil,
      :request_charged,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute copy_source_version_id
    #   <p>The version of the source object that was copied, if you have enabled versioning on the source
    #         bucket.</p>
    #            <note>
    #               <p>This functionality is not supported when the source object is in a directory bucket.</p>
    #            </note>
    #   @return [String]
    # @!attribute copy_part_result
    #   <p>Container for all response elements.</p>
    #   @return [Types::CopyPartResult]
    # @!attribute server_side_encryption
    #   <p>The server-side encryption algorithm used when you store this object in Amazon S3 or Amazon FSx.</p>
    #            <note>
    #               <p>When accessing data stored in Amazon FSx file systems using S3 access points, the only valid server side
    #           encryption option is <code>aws:fsx</code>.</p>
    #            </note>
    #   @return [String]
    # @!attribute sse_customer_algorithm
    #   <p>If server-side encryption with a customer-provided encryption key was requested, the response will
    #         include this header to confirm the encryption algorithm that's used.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute sse_customer_key_md5
    #   <p>If server-side encryption with a customer-provided encryption key was requested, the response will
    #         include this header to provide the round-trip message integrity verification of the customer-provided
    #         encryption key.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute ssekms_key_id
    #   <p>If present, indicates the ID of the KMS key that was used for object encryption.</p>
    #   @return [String]
    # @!attribute bucket_key_enabled
    #   <p>Indicates whether the multipart upload uses an S3 Bucket Key for server-side encryption with
    #         Key Management Service (KMS) keys (SSE-KMS).</p>
    #   @return [Boolean]
    # @!attribute request_charged
    #   <p>If present, indicates that the requester was successfully charged for the request. For more
    #         information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/RequesterPaysBuckets.html">Using Requester Pays buckets for storage transfers and usage</a> in the <i>Amazon Simple
    #           Storage Service user guide</i>.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    class UploadPartCopyOutput < Struct.new(
      nil,
      :copy_source_version_id,
      :copy_part_result,
      :server_side_encryption,
      :sse_customer_algorithm,
      :sse_customer_key_md5,
      :ssekms_key_id,
      :bucket_key_enabled,
      :request_charged,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bucket
    #   <p>The bucket name.</p>
    #            <p>
    #               <b>Directory buckets</b> - When you use this operation with a directory bucket, you must use virtual-hosted-style requests in the format <code>
    #                  <i>Bucket-name</i>.s3express-<i>zone-id</i>.<i>region-code</i>.amazonaws.com</code>. Path-style requests are not supported.  Directory bucket names must be unique in the chosen Zone (Availability Zone or Local Zone). Bucket names must follow the format <code>
    #                  <i>bucket-base-name</i>--<i>zone-id</i>--x-s3</code> (for example, <code>
    #                  <i>amzn-s3-demo-bucket</i>--<i>usw2-az1</i>--x-s3</code>). For information about bucket naming
    #            restrictions, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/directory-bucket-naming-rules.html">Directory bucket naming
    #               rules</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <note>
    #               <p>Copying objects across different Amazon Web Services Regions isn't supported when the source or destination
    #           bucket is in Amazon Web Services Local Zones. The source and destination buckets must have the same parent Amazon Web Services Region.
    #           Otherwise, you get an HTTP <code>400 Bad Request</code> error with the error code
    #             <code>InvalidRequest</code>.</p>
    #            </note>
    #            <p>
    #               <b>Access points</b> - When you use this action with an access point for general purpose buckets, you must provide the alias of the access point in place of the bucket name or specify the access point ARN. When you use this action with an access point for directory buckets, you must provide the access point name in place of the bucket name. When using the access point ARN, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <note>
    #               <p>Object Lambda access points are not supported by directory buckets.</p>
    #            </note>
    #            <p>
    #               <b>S3 on Outposts</b> - When you use this action with S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the
    #                        form <code>
    #                  <i>AccessPointName</i>-<i>AccountId</i>.<i>outpostID</i>.s3-outposts.<i>Region</i>.amazonaws.com</code>. When you use this action with S3 on Outposts, the destination bucket must be the Outposts access point ARN or the access point alias. For more information about S3 on Outposts, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html">What is S3 on Outposts?</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute copy_source
    #   <p>Specifies the source object for the copy operation. You specify the value in one of two formats,
    #         depending on whether you want to access the source object through an <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-points.html">access point</a>:</p>
    #            <ul>
    #               <li>
    #                  <p>For objects not accessed through an access point, specify the name of the source bucket and key of the
    #             source object, separated by a slash (/). For example, to copy the object
    #               <code>reports/january.pdf</code> from the bucket <code>awsexamplebucket</code>, use
    #               <code>awsexamplebucket/reports/january.pdf</code>. The value must be URL-encoded.</p>
    #               </li>
    #               <li>
    #                  <p>For objects accessed through access points, specify the Amazon Resource Name (ARN) of the object as accessed through the access point, in the format <code>arn:aws:s3:<Region>:<account-id>:accesspoint/<access-point-name>/object/<key></code>. For example, to copy the object <code>reports/january.pdf</code> through access point <code>my-access-point</code> owned by account <code>123456789012</code> in Region <code>us-west-2</code>, use the URL encoding of <code>arn:aws:s3:us-west-2:123456789012:accesspoint/my-access-point/object/reports/january.pdf</code>. The value must be URL encoded.</p>
    #                  <note>
    #                     <ul>
    #                        <li>
    #                           <p>Amazon S3 supports copy operations using Access points only when the source and destination buckets are in the same Amazon Web Services Region.</p>
    #                        </li>
    #                        <li>
    #                           <p>Access points are not supported by directory buckets.</p>
    #                        </li>
    #                     </ul>
    #                  </note>
    #                  <p>Alternatively, for objects accessed through Amazon S3 on Outposts, specify the ARN of the object as accessed in the format <code>arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/object/<key></code>. For example, to copy the object <code>reports/january.pdf</code> through outpost <code>my-outpost</code> owned by account <code>123456789012</code> in Region <code>us-west-2</code>, use the URL encoding of <code>arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/object/reports/january.pdf</code>. The value must be URL-encoded.  </p>
    #               </li>
    #            </ul>
    #            <p>If your bucket has versioning enabled, you could have multiple versions of the same object. By
    #         default, <code>x-amz-copy-source</code> identifies the current version of the source object to copy. To
    #         copy a specific version of the source object to copy, append <code>?versionId=<version-id></code> to
    #         the <code>x-amz-copy-source</code> request header (for example, <code>x-amz-copy-source:
    #           /awsexamplebucket/reports/january.pdf?versionId=QUpfdndhfd8438MNFDN93jdnJFkdmqnh893</code>). </p>
    #            <p>If the current version is a delete marker and you don't specify a versionId in the
    #           <code>x-amz-copy-source</code> request header, Amazon S3 returns a <code>404 Not Found</code> error,
    #         because the object does not exist. If you specify versionId in the <code>x-amz-copy-source</code> and
    #         the versionId is a delete marker, Amazon S3 returns an HTTP <code>400 Bad Request</code> error, because you
    #         are not allowed to specify a delete marker as a version for the <code>x-amz-copy-source</code>. </p>
    #            <note>
    #               <p>
    #                  <b>Directory buckets</b> - S3 Versioning isn't enabled and supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute copy_source_if_match
    #   <p>Copies the object if its entity tag (ETag) matches the specified tag.</p>
    #            <p>If both of the <code>x-amz-copy-source-if-match</code> and
    #           <code>x-amz-copy-source-if-unmodified-since</code> headers are present in the request as
    #         follows:</p>
    #            <p>
    #               <code>x-amz-copy-source-if-match</code> condition evaluates to <code>true</code>, and;</p>
    #            <p>
    #               <code>x-amz-copy-source-if-unmodified-since</code> condition evaluates to <code>false</code>;</p>
    #            <p>Amazon S3 returns <code>200 OK</code> and copies the data.
    #         </p>
    #   @return [String]
    # @!attribute copy_source_if_modified_since
    #   <p>Copies the object if it has been modified since the specified time.</p>
    #            <p>If both of the <code>x-amz-copy-source-if-none-match</code> and
    #           <code>x-amz-copy-source-if-modified-since</code> headers are present in the request as follows:</p>
    #            <p>
    #               <code>x-amz-copy-source-if-none-match</code> condition evaluates to <code>false</code>, and;</p>
    #            <p>
    #               <code>x-amz-copy-source-if-modified-since</code> condition evaluates to <code>true</code>;</p>
    #            <p>Amazon S3 returns <code>412 Precondition Failed</code> response code.
    #         </p>
    #   @return [Time]
    # @!attribute copy_source_if_none_match
    #   <p>Copies the object if its entity tag (ETag) is different than the specified ETag.</p>
    #            <p>If both of the <code>x-amz-copy-source-if-none-match</code> and
    #           <code>x-amz-copy-source-if-modified-since</code> headers are present in the request as follows:</p>
    #            <p>
    #               <code>x-amz-copy-source-if-none-match</code> condition evaluates to <code>false</code>, and;</p>
    #            <p>
    #               <code>x-amz-copy-source-if-modified-since</code> condition evaluates to <code>true</code>;</p>
    #            <p>Amazon S3 returns <code>412 Precondition Failed</code> response code.
    #         </p>
    #   @return [String]
    # @!attribute copy_source_if_unmodified_since
    #   <p>Copies the object if it hasn't been modified since the specified time.</p>
    #            <p>If both of the <code>x-amz-copy-source-if-match</code> and
    #           <code>x-amz-copy-source-if-unmodified-since</code> headers are present in the request as
    #         follows:</p>
    #            <p>
    #               <code>x-amz-copy-source-if-match</code> condition evaluates to <code>true</code>, and;</p>
    #            <p>
    #               <code>x-amz-copy-source-if-unmodified-since</code> condition evaluates to <code>false</code>;</p>
    #            <p>Amazon S3 returns <code>200 OK</code> and copies the data.
    #         </p>
    #   @return [Time]
    # @!attribute copy_source_range
    #   <p>The range of bytes to copy from the source object. The range value must use the form
    #         bytes=first-last, where the first and last are the zero-based byte offsets to copy. For example,
    #         bytes=0-9 indicates that you want to copy the first 10 bytes of the source. You can copy a range only if
    #         the source object is greater than 5 MB.</p>
    #   @return [String]
    # @!attribute key
    #   <p>Object key for which the multipart upload was initiated.</p>
    #   @return [String]
    # @!attribute part_number
    #   <p>Part number of part being copied. This is a positive integer between 1 and 10,000.</p>
    #   @return [Integer]
    # @!attribute upload_id
    #   <p>Upload ID identifying the multipart upload whose part is being copied.</p>
    #   @return [String]
    # @!attribute sse_customer_algorithm
    #   <p>Specifies the algorithm to use when encrypting the object (for example, AES256).</p>
    #            <note>
    #               <p>This functionality is not supported when the destination bucket is a directory bucket.</p>
    #            </note>
    #   @return [String]
    # @!attribute sse_customer_key
    #   <p>Specifies the customer-provided encryption key for Amazon S3 to use in encrypting data. This value is
    #         used to store the object and then it is discarded; Amazon S3 does not store the encryption key. The key must
    #         be appropriate for use with the algorithm specified in the
    #           <code>x-amz-server-side-encryption-customer-algorithm</code> header. This must be the same encryption
    #         key specified in the initiate multipart upload request.</p>
    #            <note>
    #               <p>This functionality is not supported when the destination bucket is a directory bucket.</p>
    #            </note>
    #   @return [String]
    # @!attribute sse_customer_key_md5
    #   <p>Specifies the 128-bit MD5 digest of the encryption key according to RFC 1321. Amazon S3 uses this header
    #         for a message integrity check to ensure that the encryption key was transmitted without error.</p>
    #            <note>
    #               <p>This functionality is not supported when the destination bucket is a directory bucket.</p>
    #            </note>
    #   @return [String]
    # @!attribute copy_source_sse_customer_algorithm
    #   <p>Specifies the algorithm to use when decrypting the source object (for example,
    #         <code>AES256</code>).</p>
    #            <note>
    #               <p>This functionality is not supported when the source object is in a directory bucket.</p>
    #            </note>
    #   @return [String]
    # @!attribute copy_source_sse_customer_key
    #   <p>Specifies the customer-provided encryption key for Amazon S3 to use to decrypt the source object. The
    #         encryption key provided in this header must be one that was used when the source object was
    #         created.</p>
    #            <note>
    #               <p>This functionality is not supported when the source object is in a directory bucket.</p>
    #            </note>
    #   @return [String]
    # @!attribute copy_source_sse_customer_key_md5
    #   <p>Specifies the 128-bit MD5 digest of the encryption key according to RFC 1321. Amazon S3 uses this header
    #         for a message integrity check to ensure that the encryption key was transmitted without error.</p>
    #            <note>
    #               <p>This functionality is not supported when the source object is in a directory bucket.</p>
    #            </note>
    #   @return [String]
    # @!attribute request_payer
    #   <p>Confirms that the requester knows that they will be charged for the request. Bucket owners need not
    #         specify this parameter in their requests. If either the source or destination S3 bucket has Requester
    #         Pays enabled, the requester will pay for the corresponding charges. For information about
    #         downloading objects from Requester Pays buckets, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html">Downloading Objects in Requester Pays
    #           Buckets</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected destination bucket owner. If the account ID that you provide does not match the actual owner of the destination bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    # @!attribute expected_source_bucket_owner
    #   <p>The account ID of the expected source bucket owner. If the account ID that you provide does not match the actual owner of the source bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    class UploadPartCopyRequest < Struct.new(
      nil,
      :bucket,
      :copy_source,
      :copy_source_if_match,
      :copy_source_if_modified_since,
      :copy_source_if_none_match,
      :copy_source_if_unmodified_since,
      :copy_source_range,
      :key,
      :part_number,
      :upload_id,
      :sse_customer_algorithm,
      :sse_customer_key,
      :sse_customer_key_md5,
      :copy_source_sse_customer_algorithm,
      :copy_source_sse_customer_key,
      :copy_source_sse_customer_key_md5,
      :request_payer,
      :expected_bucket_owner,
      :expected_source_bucket_owner,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute server_side_encryption
    #   <p>The server-side encryption algorithm used when you store this object in Amazon S3 or Amazon FSx.</p>
    #            <note>
    #               <p>When accessing data stored in Amazon FSx file systems using S3 access points, the only valid server side
    #           encryption option is <code>aws:fsx</code>.</p>
    #            </note>
    #   @return [String]
    # @!attribute e_tag
    #   <p>Entity tag for the uploaded object.</p>
    #   @return [String]
    # @!attribute checksum_crc32
    #   <p>The Base64 encoded, 32-bit <code>CRC32</code> checksum of the part. This will only be present if
    #         the checksum was provided in the request. For more information, see
    #         <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking
    #          object integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_crc32_c
    #   <p>The Base64 encoded, 32-bit <code>CRC32C</code> checksum of the part. This will only be present if
    #         the checksum was provided in the request. For more information, see
    #         <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking
    #          object integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_crc64_nvme
    #   <p>The Base64 encoded, 64-bit <code>CRC64NVME</code> checksum of the part. This will only be present if
    #         the checksum was provided in the request. For more information, see
    #         <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking
    #          object integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_sha1
    #   <p>The Base64 encoded, 160-bit <code>SHA1</code> checksum of the part. This will only be present if
    #         the checksum was provided in the request. For more information, see
    #         <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking
    #          object integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_sha256
    #   <p>The Base64 encoded, 256-bit <code>SHA256</code> checksum of the part. This will only be present if
    #         the checksum was provided in the request. For more information, see
    #         <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking
    #          object integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_sha512
    #   <p>The Base64 encoded, 512-bit <code>SHA512</code> checksum of the part. This will only be present if
    #         the checksum was provided in the request. For more information, see
    #         <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking
    #          object integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_md5
    #   <p>The Base64 encoded, 128-bit <code>MD5</code> checksum of the part. This will only be present if
    #         the checksum was provided in the request. For more information, see
    #         <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking
    #          object integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_xxhash64
    #   <p>The Base64 encoded, 64-bit <code>XXHASH64</code> checksum of the part. This will only be present if
    #         the checksum was provided in the request. For more information, see
    #         <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking
    #          object integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_xxhash3
    #   <p>The Base64 encoded, 64-bit <code>XXHASH3</code> checksum of the part. This will only be present if
    #         the checksum was provided in the request. For more information, see
    #         <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking
    #          object integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_xxhash128
    #   <p>The Base64 encoded, 128-bit <code>XXHASH128</code> checksum of the part. This will only be present if
    #         the checksum was provided in the request. For more information, see
    #         <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking
    #          object integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute sse_customer_algorithm
    #   <p>If server-side encryption with a customer-provided encryption key was requested, the response will
    #         include this header to confirm the encryption algorithm that's used.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute sse_customer_key_md5
    #   <p>If server-side encryption with a customer-provided encryption key was requested, the response will
    #         include this header to provide the round-trip message integrity verification of the customer-provided
    #         encryption key.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute ssekms_key_id
    #   <p>If present, indicates the ID of the KMS key that was used for object encryption.</p>
    #   @return [String]
    # @!attribute bucket_key_enabled
    #   <p>Indicates whether the multipart upload uses an S3 Bucket Key for server-side encryption with
    #         Key Management Service (KMS) keys (SSE-KMS).</p>
    #   @return [Boolean]
    # @!attribute request_charged
    #   <p>If present, indicates that the requester was successfully charged for the request. For more
    #         information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/RequesterPaysBuckets.html">Using Requester Pays buckets for storage transfers and usage</a> in the <i>Amazon Simple
    #           Storage Service user guide</i>.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    class UploadPartOutput < Struct.new(
      nil,
      :server_side_encryption,
      :e_tag,
      :checksum_crc32,
      :checksum_crc32_c,
      :checksum_crc64_nvme,
      :checksum_sha1,
      :checksum_sha256,
      :checksum_sha512,
      :checksum_md5,
      :checksum_xxhash64,
      :checksum_xxhash3,
      :checksum_xxhash128,
      :sse_customer_algorithm,
      :sse_customer_key_md5,
      :ssekms_key_id,
      :bucket_key_enabled,
      :request_charged,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute body
    #   <p>Object data.</p>
    #   @return [String]
    # @!attribute bucket
    #   <p>The name of the bucket to which the multipart upload was initiated.</p>
    #            <p>
    #               <b>Directory buckets</b> - When you use this operation with a directory bucket, you must use virtual-hosted-style requests in the format <code>
    #                  <i>Bucket-name</i>.s3express-<i>zone-id</i>.<i>region-code</i>.amazonaws.com</code>. Path-style requests are not supported.  Directory bucket names must be unique in the chosen Zone (Availability Zone or Local Zone). Bucket names must follow the format <code>
    #                  <i>bucket-base-name</i>--<i>zone-id</i>--x-s3</code> (for example, <code>
    #                  <i>amzn-s3-demo-bucket</i>--<i>usw2-az1</i>--x-s3</code>). For information about bucket naming
    #            restrictions, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/directory-bucket-naming-rules.html">Directory bucket naming
    #               rules</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <p>
    #               <b>Access points</b> - When you use this action with an access point for general purpose buckets, you must provide the alias of the access point in place of the bucket name or specify the access point ARN. When you use this action with an access point for directory buckets, you must provide the access point name in place of the bucket name. When using the access point ARN, you must direct requests to the access point hostname. The access point hostname takes the form <i>AccessPointName</i>-<i>AccountId</i>.s3-accesspoint.<i>Region</i>.amazonaws.com. When using this action with an access point through the Amazon Web Services SDKs, you provide the access point ARN in place of the bucket name. For more information about access point ARNs, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html">Using access points</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <note>
    #               <p>Object Lambda access points are not supported by directory buckets.</p>
    #            </note>
    #            <p>
    #               <b>S3 on Outposts</b> - When you use this action with S3 on Outposts, you must direct requests to the S3 on Outposts hostname. The S3 on Outposts hostname takes the
    #                        form <code>
    #                  <i>AccessPointName</i>-<i>AccountId</i>.<i>outpostID</i>.s3-outposts.<i>Region</i>.amazonaws.com</code>. When you use this action with S3 on Outposts, the destination bucket must be the Outposts access point ARN or the access point alias. For more information about S3 on Outposts, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html">What is S3 on Outposts?</a> in the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute content_length
    #   <p>Size of the body in bytes. This parameter is useful when the size of the body cannot be determined
    #         automatically.</p>
    #   @return [Integer]
    # @!attribute content_md5
    #   <p>The Base64 encoded 128-bit MD5 digest of the part data. This parameter is auto-populated when using
    #         the command from the CLI. This parameter is required if object lock parameters are specified.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute checksum_algorithm
    #   <p>Indicates the algorithm used to create the checksum for the object when you use the SDK. This header will not provide any
    #       additional functionality if you don't use the SDK. When you send this header, there must be a corresponding <code>x-amz-checksum</code> or
    #       <code>x-amz-trailer</code> header sent. Otherwise, Amazon S3 fails the request with the HTTP status code <code>400 Bad Request</code>. For more
    #       information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #       the <i>Amazon S3 User Guide</i>.</p>
    #            <p>If you provide an individual checksum, Amazon S3 ignores any provided <code>ChecksumAlgorithm</code>
    #         parameter.</p>
    #            <p>This checksum algorithm must be the same for all parts and it match the checksum value supplied in
    #         the <code>CreateMultipartUpload</code> request.</p>
    #   @return [String]
    # @!attribute checksum_crc32
    #   <p>This header can be used as a data integrity check to verify that the data received is the same data that was originally sent.
    #       This header specifies the Base64 encoded, 32-bit <code>CRC32</code> checksum of the object. For more information, see
    #       <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in the
    #       <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_crc32_c
    #   <p>This header can be used as a data integrity check to verify that the data received is the same data that was originally sent.
    #       This header specifies the Base64 encoded, 32-bit <code>CRC32C</code> checksum of the object. For more information, see
    #       <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in the
    #       <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_crc64_nvme
    #   <p>This header can be used as a data integrity check to verify that the data received is the same data
    #         that was originally sent. This header specifies the Base64 encoded, 64-bit <code>CRC64NVME</code>
    #         checksum of the part. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #         the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_sha1
    #   <p>This header can be used as a data integrity check to verify that the data received is the same data that was originally sent.
    #       This header specifies the Base64 encoded, 160-bit <code>SHA1</code> digest of the object. For more information, see
    #       <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in the
    #       <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_sha256
    #   <p>This header can be used as a data integrity check to verify that the data received is the same data that was originally sent.
    #       This header specifies the Base64 encoded, 256-bit <code>SHA256</code> digest of the object. For more information, see
    #       <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in the
    #       <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_sha512
    #   <p>This header can be used as a data integrity check to verify that the data received is the same data
    #         that was originally sent. This header specifies the Base64 encoded, 512-bit <code>SHA512</code>
    #         digest of the part. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #         the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_md5
    #   <p>This header can be used as a data integrity check to verify that the data received is the same data
    #         that was originally sent. This header specifies the Base64 encoded, 128-bit <code>MD5</code>
    #         digest of the part. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #         the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_xxhash64
    #   <p>This header can be used as a data integrity check to verify that the data received is the same data
    #         that was originally sent. This header specifies the Base64 encoded, 64-bit <code>XXHASH64</code>
    #         checksum of the part. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #         the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_xxhash3
    #   <p>This header can be used as a data integrity check to verify that the data received is the same data
    #         that was originally sent. This header specifies the Base64 encoded, 64-bit <code>XXHASH3</code>
    #         checksum of the part. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #         the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_xxhash128
    #   <p>This header can be used as a data integrity check to verify that the data received is the same data
    #         that was originally sent. This header specifies the Base64 encoded, 128-bit <code>XXHASH128</code>
    #         checksum of the part. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #         the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute key
    #   <p>Object key for which the multipart upload was initiated.</p>
    #   @return [String]
    # @!attribute part_number
    #   <p>Part number of part being uploaded. This is a positive integer between 1 and 10,000.</p>
    #   @return [Integer]
    # @!attribute upload_id
    #   <p>Upload ID identifying the multipart upload whose part is being uploaded.</p>
    #   @return [String]
    # @!attribute sse_customer_algorithm
    #   <p>Specifies the algorithm to use when encrypting the object (for example, AES256).</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute sse_customer_key
    #   <p>Specifies the customer-provided encryption key for Amazon S3 to use in encrypting data. This value is
    #         used to store the object and then it is discarded; Amazon S3 does not store the encryption key. The key must
    #         be appropriate for use with the algorithm specified in the
    #           <code>x-amz-server-side-encryption-customer-algorithm header</code>. This must be the same encryption
    #         key specified in the initiate multipart upload request.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute sse_customer_key_md5
    #   <p>Specifies the 128-bit MD5 digest of the encryption key according to RFC 1321. Amazon S3 uses this header
    #         for a message integrity check to ensure that the encryption key was transmitted without error.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute request_payer
    #   <p>Confirms that the requester knows that they will be charged for the request. Bucket owners need not
    #         specify this parameter in their requests. If either the source or destination S3 bucket has Requester
    #         Pays enabled, the requester will pay for the corresponding charges. For information about
    #         downloading objects from Requester Pays buckets, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html">Downloading Objects in Requester Pays
    #           Buckets</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute expected_bucket_owner
    #   <p>The account ID of the expected bucket owner. If the account ID that you provide does not match the actual owner of the bucket, the request fails with the HTTP status code <code>403 Forbidden</code> (access denied).</p>
    #   @return [String]
    class UploadPartRequest < Struct.new(
      nil,
      :body,
      :bucket,
      :content_length,
      :content_md5,
      :checksum_algorithm,
      :checksum_crc32,
      :checksum_crc32_c,
      :checksum_crc64_nvme,
      :checksum_sha1,
      :checksum_sha256,
      :checksum_sha512,
      :checksum_md5,
      :checksum_xxhash64,
      :checksum_xxhash3,
      :checksum_xxhash128,
      :key,
      :part_number,
      :upload_id,
      :sse_customer_algorithm,
      :sse_customer_key,
      :sse_customer_key_md5,
      :request_payer,
      :expected_bucket_owner,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the versioning state of an Amazon S3 bucket. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/RESTBucketPUTVersioningStatus.html">PUT Bucket
    #         versioning</a> in the <i>Amazon S3 API Reference</i>.</p>
    # @!attribute mfa_delete
    #   <p>Specifies whether MFA delete is enabled in the bucket versioning configuration. This element is only
    #         returned if the bucket has been configured with MFA delete. If the bucket has never been so configured,
    #         this element is not returned.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The versioning state of the bucket.</p>
    #   @return [String]
    class VersioningConfiguration < Struct.new(
      nil,
      :mfa_delete,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies website configuration parameters for an Amazon S3 bucket.</p>
    # @!attribute error_document
    #   <p>The name of the error document for the website.</p>
    #   @return [Types::ErrorDocument]
    # @!attribute index_document
    #   <p>The name of the index document for the website.</p>
    #   @return [Types::IndexDocument]
    # @!attribute redirect_all_requests_to
    #   <p>The redirect behavior for every request to this bucket's website endpoint.</p>
    #            <important>
    #               <p>If you specify this property, you can't specify any other property.</p>
    #            </important>
    #   @return [Types::RedirectAllRequestsTo]
    # @!attribute routing_rules
    #   <p>Rules that define when a redirect is applied and the redirect behavior.</p>
    #   @return [Array<Types::RoutingRule>]
    class WebsiteConfiguration < Struct.new(
      nil,
      :error_document,
      :index_document,
      :redirect_all_requests_to,
      :routing_rules,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute request_route
    #   <p>Route prefix to the HTTP URL generated.</p>
    #   @return [String]
    # @!attribute request_token
    #   <p>A single use encrypted token that maps <code>WriteGetObjectResponse</code> to the end user
    #           <code>GetObject</code> request.</p>
    #   @return [String]
    # @!attribute body
    #   <p>The object data.</p>
    #   @return [String]
    # @!attribute status_code
    #   <p>The integer status code for an HTTP response of a corresponding <code>GetObject</code> request. The
    #         following is a list of status codes.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>200 - OK</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>206 - Partial Content</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>304 - Not Modified</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>400 - Bad Request</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>401 - Unauthorized</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>403 - Forbidden</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>404 - Not Found</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>405 - Method Not Allowed</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>409 - Conflict</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>411 - Length Required</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>412 - Precondition Failed</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>416 - Range Not Satisfiable</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>500 - Internal Server Error</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>503 - Service Unavailable</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [Integer]
    # @!attribute error_code
    #   <p>A string that uniquely identifies an error condition. Returned in the <Code> tag of the error
    #         XML response for a corresponding <code>GetObject</code> call. Cannot be used with a successful
    #           <code>StatusCode</code> header or when the transformed object is provided in the body. All error codes
    #         from S3 are sentence-cased. The regular expression (regex) value is
    #         <code>"^[A-Z][a-zA-Z]+$"</code>.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>Contains a generic description of the error condition. Returned in the <Message> tag of the
    #         error XML response for a corresponding <code>GetObject</code> call. Cannot be used with a successful
    #           <code>StatusCode</code> header or when the transformed object is provided in body.</p>
    #   @return [String]
    # @!attribute accept_ranges
    #   <p>Indicates that a range of bytes was specified.</p>
    #   @return [String]
    # @!attribute cache_control
    #   <p>Specifies caching behavior along the request/reply chain.</p>
    #   @return [String]
    # @!attribute content_disposition
    #   <p>Specifies presentational information for the object.</p>
    #   @return [String]
    # @!attribute content_encoding
    #   <p>Specifies what content encodings have been applied to the object and thus what decoding mechanisms
    #         must be applied to obtain the media-type referenced by the Content-Type header field.</p>
    #   @return [String]
    # @!attribute content_language
    #   <p>The language the content is in.</p>
    #   @return [String]
    # @!attribute content_length
    #   <p>The size of the content body in bytes.</p>
    #   @return [Integer]
    # @!attribute content_range
    #   <p>The portion of the object returned in the response.</p>
    #   @return [String]
    # @!attribute content_type
    #   <p>A standard MIME type describing the format of the object data.</p>
    #   @return [String]
    # @!attribute checksum_crc32
    #   <p>This header can be used as a data integrity check to verify that the data received is the same data
    #         that was originally sent. This specifies the Base64 encoded, 32-bit <code>CRC32</code> checksum of the
    #         object returned by the Object Lambda function. This may not match the checksum for the object stored in
    #         Amazon S3. Amazon S3 will perform validation of the checksum values only when the original <code>GetObject</code>
    #         request required checksum validation. For more information about checksums, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object
    #           integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <p>Only one checksum header can be specified at a time. If you supply multiple checksum headers, this
    #         request will fail.</p>
    #            <p></p>
    #   @return [String]
    # @!attribute checksum_crc32_c
    #   <p>This header can be used as a data integrity check to verify that the data received is the same data
    #         that was originally sent. This specifies the Base64 encoded, 32-bit <code>CRC32C</code> checksum of the
    #         object returned by the Object Lambda function. This may not match the checksum for the object stored in
    #         Amazon S3. Amazon S3 will perform validation of the checksum values only when the original <code>GetObject</code>
    #         request required checksum validation. For more information about checksums, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object
    #           integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <p>Only one checksum header can be specified at a time. If you supply multiple checksum headers, this
    #         request will fail.</p>
    #   @return [String]
    # @!attribute checksum_crc64_nvme
    #   <p>This header can be used as a data integrity check to verify that the data received is the same data
    #         that was originally sent. This header specifies the Base64 encoded, 64-bit <code>CRC64NVME</code>
    #         checksum of the part. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #         the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_sha1
    #   <p>This header can be used as a data integrity check to verify that the data received is the same data
    #         that was originally sent. This specifies the Base64 encoded, 160-bit <code>SHA1</code> digest of the
    #         object returned by the Object Lambda function. This may not match the checksum for the object stored in
    #         Amazon S3. Amazon S3 will perform validation of the checksum values only when the original <code>GetObject</code>
    #         request required checksum validation. For more information about checksums, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object
    #           integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <p>Only one checksum header can be specified at a time. If you supply multiple checksum headers, this
    #         request will fail.</p>
    #   @return [String]
    # @!attribute checksum_sha256
    #   <p>This header can be used as a data integrity check to verify that the data received is the same data
    #         that was originally sent. This specifies the Base64 encoded, 256-bit <code>SHA256</code> digest of the
    #         object returned by the Object Lambda function. This may not match the checksum for the object stored in
    #         Amazon S3. Amazon S3 will perform validation of the checksum values only when the original <code>GetObject</code>
    #         request required checksum validation. For more information about checksums, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object
    #           integrity</a> in the <i>Amazon S3 User Guide</i>.</p>
    #            <p>Only one checksum header can be specified at a time. If you supply multiple checksum headers, this
    #         request will fail.</p>
    #   @return [String]
    # @!attribute checksum_sha512
    #   <p>This header can be used as a data integrity check to verify that the data received is the same data
    #         that was originally sent. This header specifies the Base64 encoded, 512-bit <code>SHA512</code>
    #         digest of the part. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #         the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_md5
    #   <p>This header can be used as a data integrity check to verify that the data received is the same data
    #         that was originally sent. This header specifies the Base64 encoded, 128-bit <code>MD5</code>
    #         digest of the part. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #         the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_xxhash64
    #   <p>This header can be used as a data integrity check to verify that the data received is the same data
    #         that was originally sent. This header specifies the Base64 encoded, 64-bit <code>XXHASH64</code>
    #         checksum of the part. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #         the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_xxhash3
    #   <p>This header can be used as a data integrity check to verify that the data received is the same data
    #         that was originally sent. This header specifies the Base64 encoded, 64-bit <code>XXHASH3</code>
    #         checksum of the part. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #         the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute checksum_xxhash128
    #   <p>This header can be used as a data integrity check to verify that the data received is the same data
    #         that was originally sent. This header specifies the Base64 encoded, 128-bit <code>XXHASH128</code>
    #         checksum of the part. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking object integrity</a> in
    #         the <i>Amazon S3 User Guide</i>.</p>
    #   @return [String]
    # @!attribute delete_marker
    #   <p>Specifies whether an object stored in Amazon S3 is (<code>true</code>) or is not (<code>false</code>) a
    #         delete marker. To learn more about delete markers, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/DeleteMarker.html">Working with delete markers</a>.</p>
    #   @return [Boolean]
    # @!attribute e_tag
    #   <p>An opaque identifier assigned by a web server to a specific version of a resource found at a URL.
    #       </p>
    #   @return [String]
    # @!attribute expires
    #   <p>The date and time at which the object is no longer cacheable.</p>
    #   @return [String]
    # @!attribute expiration
    #   <p>If the object expiration is configured (see PUT Bucket lifecycle), the response includes this
    #         header. It includes the <code>expiry-date</code> and <code>rule-id</code> key-value pairs that provide
    #         the object expiration information. The value of the <code>rule-id</code> is URL-encoded. </p>
    #   @return [String]
    # @!attribute last_modified
    #   <p>The date and time that the object was last modified.</p>
    #   @return [Time]
    # @!attribute missing_meta
    #   <p>Set to the number of metadata entries not returned in <code>x-amz-meta</code> headers. This can
    #         happen if you create metadata using an API like SOAP that supports more flexible metadata than the REST
    #         API. For example, using SOAP, you can create metadata whose values are not legal HTTP headers.</p>
    #   @return [Integer]
    # @!attribute metadata
    #   <p>A map of metadata to store with the object in S3.</p>
    #   @return [Hash<String, String>]
    # @!attribute object_lock_mode
    #   <p>Indicates whether an object stored in Amazon S3 has Object Lock enabled. For more information about S3
    #         Object Lock, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-lock.html">Object
    #           Lock</a>.</p>
    #   @return [String]
    # @!attribute object_lock_legal_hold_status
    #   <p>Indicates whether an object stored in Amazon S3 has an active legal hold.</p>
    #   @return [String]
    # @!attribute object_lock_retain_until_date
    #   <p>The date and time when Object Lock is configured to expire.</p>
    #   @return [Time]
    # @!attribute parts_count
    #   <p>The count of parts this object has.</p>
    #   @return [Integer]
    # @!attribute replication_status
    #   <p>Indicates if request involves bucket that is either a source or destination in a Replication rule.
    #         For more information about S3 Replication, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/replication.html">Replication</a>.</p>
    #   @return [String]
    # @!attribute request_charged
    #   <p>If present, indicates that the requester was successfully charged for the request. For more
    #         information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/RequesterPaysBuckets.html">Using Requester Pays buckets for storage transfers and usage</a> in the <i>Amazon Simple
    #           Storage Service user guide</i>.</p>
    #            <note>
    #               <p>This functionality is not supported for directory buckets.</p>
    #            </note>
    #   @return [String]
    # @!attribute restore
    #   <p>Provides information about object restoration operation and expiration time of the restored object
    #         copy.</p>
    #   @return [String]
    # @!attribute server_side_encryption
    #   <p> The server-side encryption algorithm used when storing requested object in Amazon S3 or Amazon FSx.</p>
    #            <note>
    #               <p>When accessing data stored in Amazon FSx file systems using S3 access points, the only valid server side
    #           encryption option is <code>aws:fsx</code>.</p>
    #            </note>
    #   @return [String]
    # @!attribute sse_customer_algorithm
    #   <p>Encryption algorithm used if server-side encryption with a customer-provided encryption key was
    #         specified for object stored in Amazon S3.</p>
    #   @return [String]
    # @!attribute ssekms_key_id
    #   <p> If present, specifies the ID (Key ID, Key ARN, or Key Alias) of the Amazon Web Services Key Management Service
    #         (Amazon Web Services KMS) symmetric encryption customer managed key that was used for stored in Amazon S3 object. </p>
    #   @return [String]
    # @!attribute sse_customer_key_md5
    #   <p> 128-bit MD5 digest of customer-provided encryption key used in Amazon S3 to encrypt data stored in S3.
    #         For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/ServerSideEncryptionCustomerKeys.html">Protecting data using
    #           server-side encryption with customer-provided encryption keys (SSE-C)</a>.</p>
    #   @return [String]
    # @!attribute storage_class
    #   <p>Provides storage class information of the object. Amazon S3 returns this header for all objects except
    #         for S3 Standard storage class objects.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/storage-class-intro.html">Storage Classes</a>.</p>
    #   @return [String]
    # @!attribute tag_count
    #   <p>The number of tags, if any, on the object.</p>
    #   @return [Integer]
    # @!attribute version_id
    #   <p>An ID used to reference a specific version of the object.</p>
    #   @return [String]
    # @!attribute bucket_key_enabled
    #   <p> Indicates whether the object stored in Amazon S3 uses an S3 bucket key for server-side encryption with
    #         Amazon Web Services KMS (SSE-KMS).</p>
    #   @return [Boolean]
    class WriteGetObjectResponseRequest < Struct.new(
      nil,
      :request_route,
      :request_token,
      :body,
      :status_code,
      :error_code,
      :error_message,
      :accept_ranges,
      :cache_control,
      :content_disposition,
      :content_encoding,
      :content_language,
      :content_length,
      :content_range,
      :content_type,
      :checksum_crc32,
      :checksum_crc32_c,
      :checksum_crc64_nvme,
      :checksum_sha1,
      :checksum_sha256,
      :checksum_sha512,
      :checksum_md5,
      :checksum_xxhash64,
      :checksum_xxhash3,
      :checksum_xxhash128,
      :delete_marker,
      :e_tag,
      :expires,
      :expiration,
      :last_modified,
      :missing_meta,
      :metadata,
      :object_lock_mode,
      :object_lock_legal_hold_status,
      :object_lock_retain_until_date,
      :parts_count,
      :replication_status,
      :request_charged,
      :restore,
      :server_side_encryption,
      :sse_customer_algorithm,
      :ssekms_key_id,
      :sse_customer_key_md5,
      :storage_class,
      :tag_count,
      :version_id,
      :bucket_key_enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
