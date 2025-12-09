# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::S3Tables
  module Types

    # The action cannot be performed because you do not have the required
    # permission.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request is invalid or malformed.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/BadRequestException AWS API Documentation
    #
    class BadRequestException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request failed because there is a conflict with a previous write.
    # You can retry the request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] table_bucket_arn
    #   The Amazon Resource Name (ARN) of the table bucket to create the
    #   namespace in.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   A name for the namespace.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/CreateNamespaceRequest AWS API Documentation
    #
    class CreateNamespaceRequest < Struct.new(
      :table_bucket_arn,
      :namespace)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] table_bucket_arn
    #   The Amazon Resource Name (ARN) of the table bucket the namespace was
    #   created in.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The name of the namespace.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/CreateNamespaceResponse AWS API Documentation
    #
    class CreateNamespaceResponse < Struct.new(
      :table_bucket_arn,
      :namespace)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name for the table bucket.
    #   @return [String]
    #
    # @!attribute [rw] encryption_configuration
    #   The encryption configuration to use for the table bucket. This
    #   configuration specifies the default encryption settings that will be
    #   applied to all tables created in this bucket unless overridden at
    #   the table level. The configuration includes the encryption algorithm
    #   and, if using SSE-KMS, the KMS key to use.
    #   @return [Types::EncryptionConfiguration]
    #
    # @!attribute [rw] storage_class_configuration
    #   The default storage class configuration for the table bucket. This
    #   configuration will be applied to all new tables created in this
    #   bucket unless overridden at the table level. If not specified, the
    #   service default storage class will be used.
    #   @return [Types::StorageClassConfiguration]
    #
    # @!attribute [rw] tags
    #   A map of user-defined tags that you would like to apply to the table
    #   bucket that you are creating. A tag is a key-value pair that you
    #   apply to your resources. Tags can help you organize and control
    #   access to resources. For more information, see [Tagging for cost
    #   allocation or attribute-based access control (ABAC)][1].
    #
    #   <note markdown="1"> You must have the `s3tables:TagResource` permission in addition to
    #   `s3tables:CreateTableBucket` permisson to create a table bucket with
    #   tags.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/tagging.html
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/CreateTableBucketRequest AWS API Documentation
    #
    class CreateTableBucketRequest < Struct.new(
      :name,
      :encryption_configuration,
      :storage_class_configuration,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the table bucket.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/CreateTableBucketResponse AWS API Documentation
    #
    class CreateTableBucketResponse < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] table_bucket_arn
    #   The Amazon Resource Name (ARN) of the table bucket to create the
    #   table in.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace to associated with the table.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name for the table.
    #   @return [String]
    #
    # @!attribute [rw] format
    #   The format for the table.
    #   @return [String]
    #
    # @!attribute [rw] metadata
    #   The metadata for the table.
    #   @return [Types::TableMetadata]
    #
    # @!attribute [rw] encryption_configuration
    #   The encryption configuration to use for the table. This
    #   configuration specifies the encryption algorithm and, if using
    #   SSE-KMS, the KMS key to use for encrypting the table.
    #
    #   <note markdown="1"> If you choose SSE-KMS encryption you must grant the S3 Tables
    #   maintenance principal access to your KMS key. For more information,
    #   see [Permissions requirements for S3 Tables SSE-KMS encryption][1].
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-kms-permissions.html
    #   @return [Types::EncryptionConfiguration]
    #
    # @!attribute [rw] storage_class_configuration
    #   The storage class configuration for the table. If not specified, the
    #   table inherits the storage class configuration from its table
    #   bucket. Specify this parameter to override the bucket's default
    #   storage class for this table.
    #   @return [Types::StorageClassConfiguration]
    #
    # @!attribute [rw] tags
    #   A map of user-defined tags that you would like to apply to the table
    #   that you are creating. A tag is a key-value pair that you apply to
    #   your resources. Tags can help you organize, track costs for, and
    #   control access to resources. For more information, see [Tagging for
    #   cost allocation or attribute-based access control (ABAC)][1].
    #
    #   <note markdown="1"> You must have the `s3tables:TagResource` permission in addition to
    #   `s3tables:CreateTable` permission to create a table with tags.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/tagging.html
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/CreateTableRequest AWS API Documentation
    #
    class CreateTableRequest < Struct.new(
      :table_bucket_arn,
      :namespace,
      :name,
      :format,
      :metadata,
      :encryption_configuration,
      :storage_class_configuration,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] table_arn
    #   The Amazon Resource Name (ARN) of the table.
    #   @return [String]
    #
    # @!attribute [rw] version_token
    #   The version token of the table.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/CreateTableResponse AWS API Documentation
    #
    class CreateTableResponse < Struct.new(
      :table_arn,
      :version_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] table_bucket_arn
    #   The Amazon Resource Name (ARN) of the table bucket associated with
    #   the namespace.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The name of the namespace.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/DeleteNamespaceRequest AWS API Documentation
    #
    class DeleteNamespaceRequest < Struct.new(
      :table_bucket_arn,
      :namespace)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] table_bucket_arn
    #   The Amazon Resource Name (ARN) of the table bucket.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/DeleteTableBucketEncryptionRequest AWS API Documentation
    #
    class DeleteTableBucketEncryptionRequest < Struct.new(
      :table_bucket_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] table_bucket_arn
    #   The Amazon Resource Name (ARN) of the table bucket.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/DeleteTableBucketMetricsConfigurationRequest AWS API Documentation
    #
    class DeleteTableBucketMetricsConfigurationRequest < Struct.new(
      :table_bucket_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] table_bucket_arn
    #   The Amazon Resource Name (ARN) of the table bucket.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/DeleteTableBucketPolicyRequest AWS API Documentation
    #
    class DeleteTableBucketPolicyRequest < Struct.new(
      :table_bucket_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] table_bucket_arn
    #   The Amazon Resource Name (ARN) of the table bucket.
    #   @return [String]
    #
    # @!attribute [rw] version_token
    #   A version token from a previous GetTableBucketReplication call. Use
    #   this token to ensure you're deleting the expected version of the
    #   configuration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/DeleteTableBucketReplicationRequest AWS API Documentation
    #
    class DeleteTableBucketReplicationRequest < Struct.new(
      :table_bucket_arn,
      :version_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] table_bucket_arn
    #   The Amazon Resource Name (ARN) of the table bucket.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/DeleteTableBucketRequest AWS API Documentation
    #
    class DeleteTableBucketRequest < Struct.new(
      :table_bucket_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] table_bucket_arn
    #   The Amazon Resource Name (ARN) of the table bucket that contains the
    #   table.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace associated with the table.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The table name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/DeleteTablePolicyRequest AWS API Documentation
    #
    class DeleteTablePolicyRequest < Struct.new(
      :table_bucket_arn,
      :namespace,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] table_arn
    #   The Amazon Resource Name (ARN) of the table.
    #   @return [String]
    #
    # @!attribute [rw] version_token
    #   A version token from a previous GetTableReplication call. Use this
    #   token to ensure you're deleting the expected version of the
    #   configuration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/DeleteTableReplicationRequest AWS API Documentation
    #
    class DeleteTableReplicationRequest < Struct.new(
      :table_arn,
      :version_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] table_bucket_arn
    #   The Amazon Resource Name (ARN) of the table bucket that contains the
    #   table.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace associated with the table.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the table.
    #   @return [String]
    #
    # @!attribute [rw] version_token
    #   The version token of the table.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/DeleteTableRequest AWS API Documentation
    #
    class DeleteTableRequest < Struct.new(
      :table_bucket_arn,
      :namespace,
      :name,
      :version_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration specifying how data should be encrypted. This structure
    # defines the encryption algorithm and optional KMS key to be used for
    # server-side encryption.
    #
    # @!attribute [rw] sse_algorithm
    #   The server-side encryption algorithm to use. Valid values are
    #   `AES256` for S3-managed encryption keys, or `aws:kms` for Amazon Web
    #   Services KMS-managed encryption keys. If you choose SSE-KMS
    #   encryption you must grant the S3 Tables maintenance principal access
    #   to your KMS key. For more information, see [Permissions requirements
    #   for S3 Tables SSE-KMS encryption][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-kms-permissions.html
    #   @return [String]
    #
    # @!attribute [rw] kms_key_arn
    #   The Amazon Resource Name (ARN) of the KMS key to use for encryption.
    #   This field is required only when `sseAlgorithm` is set to `aws:kms`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/EncryptionConfiguration AWS API Documentation
    #
    class EncryptionConfiguration < Struct.new(
      :sse_algorithm,
      :kms_key_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The caller isn't authorized to make the request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/ForbiddenException AWS API Documentation
    #
    class ForbiddenException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] table_bucket_arn
    #   The Amazon Resource Name (ARN) of the table bucket.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The name of the namespace.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/GetNamespaceRequest AWS API Documentation
    #
    class GetNamespaceRequest < Struct.new(
      :table_bucket_arn,
      :namespace)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] namespace
    #   The name of the namespace.
    #   @return [Array<String>]
    #
    # @!attribute [rw] created_at
    #   The date and time the namespace was created at.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   The ID of the account that created the namespace.
    #   @return [String]
    #
    # @!attribute [rw] owner_account_id
    #   The ID of the account that owns the namespcace.
    #   @return [String]
    #
    # @!attribute [rw] namespace_id
    #   The unique identifier of the namespace.
    #   @return [String]
    #
    # @!attribute [rw] table_bucket_id
    #   The unique identifier of the table bucket containing this namespace.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/GetNamespaceResponse AWS API Documentation
    #
    class GetNamespaceResponse < Struct.new(
      :namespace,
      :created_at,
      :created_by,
      :owner_account_id,
      :namespace_id,
      :table_bucket_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] table_bucket_arn
    #   The Amazon Resource Name (ARN) of the table bucket.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/GetTableBucketEncryptionRequest AWS API Documentation
    #
    class GetTableBucketEncryptionRequest < Struct.new(
      :table_bucket_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] encryption_configuration
    #   The encryption configuration for the table bucket.
    #   @return [Types::EncryptionConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/GetTableBucketEncryptionResponse AWS API Documentation
    #
    class GetTableBucketEncryptionResponse < Struct.new(
      :encryption_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] table_bucket_arn
    #   The Amazon Resource Name (ARN) of the table bucket associated with
    #   the maintenance configuration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/GetTableBucketMaintenanceConfigurationRequest AWS API Documentation
    #
    class GetTableBucketMaintenanceConfigurationRequest < Struct.new(
      :table_bucket_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] table_bucket_arn
    #   The Amazon Resource Name (ARN) of the table bucket associated with
    #   the maintenance configuration.
    #   @return [String]
    #
    # @!attribute [rw] configuration
    #   Details about the maintenance configuration for the table bucket.
    #   @return [Hash<String,Types::TableBucketMaintenanceConfigurationValue>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/GetTableBucketMaintenanceConfigurationResponse AWS API Documentation
    #
    class GetTableBucketMaintenanceConfigurationResponse < Struct.new(
      :table_bucket_arn,
      :configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] table_bucket_arn
    #   The Amazon Resource Name (ARN) of the table bucket.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/GetTableBucketMetricsConfigurationRequest AWS API Documentation
    #
    class GetTableBucketMetricsConfigurationRequest < Struct.new(
      :table_bucket_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] table_bucket_arn
    #   The Amazon Resource Name (ARN) of the table bucket.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier of the metrics configuration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/GetTableBucketMetricsConfigurationResponse AWS API Documentation
    #
    class GetTableBucketMetricsConfigurationResponse < Struct.new(
      :table_bucket_arn,
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] table_bucket_arn
    #   The Amazon Resource Name (ARN) of the table bucket.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/GetTableBucketPolicyRequest AWS API Documentation
    #
    class GetTableBucketPolicyRequest < Struct.new(
      :table_bucket_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_policy
    #   The `JSON` that defines the policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/GetTableBucketPolicyResponse AWS API Documentation
    #
    class GetTableBucketPolicyResponse < Struct.new(
      :resource_policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] table_bucket_arn
    #   The Amazon Resource Name (ARN) of the table bucket.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/GetTableBucketReplicationRequest AWS API Documentation
    #
    class GetTableBucketReplicationRequest < Struct.new(
      :table_bucket_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] version_token
    #   A version token that represents the current state of the replication
    #   configuration. Use this token when updating the configuration to
    #   ensure consistency.
    #   @return [String]
    #
    # @!attribute [rw] configuration
    #   The replication configuration for the table bucket, including the
    #   IAM role and replication rules.
    #   @return [Types::TableBucketReplicationConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/GetTableBucketReplicationResponse AWS API Documentation
    #
    class GetTableBucketReplicationResponse < Struct.new(
      :version_token,
      :configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] table_bucket_arn
    #   The Amazon Resource Name (ARN) of the table bucket.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/GetTableBucketRequest AWS API Documentation
    #
    class GetTableBucketRequest < Struct.new(
      :table_bucket_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the table bucket.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the table bucket
    #   @return [String]
    #
    # @!attribute [rw] owner_account_id
    #   The ID of the account that owns the table bucket.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time the table bucket was created.
    #   @return [Time]
    #
    # @!attribute [rw] table_bucket_id
    #   The unique identifier of the table bucket.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the table bucket.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/GetTableBucketResponse AWS API Documentation
    #
    class GetTableBucketResponse < Struct.new(
      :arn,
      :name,
      :owner_account_id,
      :created_at,
      :table_bucket_id,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] table_bucket_arn
    #   The Amazon Resource Name (ARN) of the table bucket.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/GetTableBucketStorageClassRequest AWS API Documentation
    #
    class GetTableBucketStorageClassRequest < Struct.new(
      :table_bucket_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] storage_class_configuration
    #   The storage class configuration for the table bucket.
    #   @return [Types::StorageClassConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/GetTableBucketStorageClassResponse AWS API Documentation
    #
    class GetTableBucketStorageClassResponse < Struct.new(
      :storage_class_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] table_bucket_arn
    #   The Amazon Resource Name (ARN) of the table bucket containing the
    #   table.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace associated with the table.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the table.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/GetTableEncryptionRequest AWS API Documentation
    #
    class GetTableEncryptionRequest < Struct.new(
      :table_bucket_arn,
      :namespace,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] encryption_configuration
    #   The encryption configuration for the table.
    #   @return [Types::EncryptionConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/GetTableEncryptionResponse AWS API Documentation
    #
    class GetTableEncryptionResponse < Struct.new(
      :encryption_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] table_bucket_arn
    #   The Amazon Resource Name (ARN) of the table bucket.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace associated with the table.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the table.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/GetTableMaintenanceConfigurationRequest AWS API Documentation
    #
    class GetTableMaintenanceConfigurationRequest < Struct.new(
      :table_bucket_arn,
      :namespace,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] table_arn
    #   The Amazon Resource Name (ARN) of the table.
    #   @return [String]
    #
    # @!attribute [rw] configuration
    #   Details about the maintenance configuration for the table bucket.
    #   @return [Hash<String,Types::TableMaintenanceConfigurationValue>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/GetTableMaintenanceConfigurationResponse AWS API Documentation
    #
    class GetTableMaintenanceConfigurationResponse < Struct.new(
      :table_arn,
      :configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] table_bucket_arn
    #   The Amazon Resource Name (ARN) of the table bucket.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The name of the namespace the table is associated with.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the table containing the maintenance job status you want
    #   to check.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/GetTableMaintenanceJobStatusRequest AWS API Documentation
    #
    class GetTableMaintenanceJobStatusRequest < Struct.new(
      :table_bucket_arn,
      :namespace,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] table_arn
    #   The Amazon Resource Name (ARN) of the table.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the maintenance job.
    #   @return [Hash<String,Types::TableMaintenanceJobStatusValue>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/GetTableMaintenanceJobStatusResponse AWS API Documentation
    #
    class GetTableMaintenanceJobStatusResponse < Struct.new(
      :table_arn,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] table_bucket_arn
    #   The Amazon Resource Name (ARN) of the table bucket.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace of the table.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the table.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/GetTableMetadataLocationRequest AWS API Documentation
    #
    class GetTableMetadataLocationRequest < Struct.new(
      :table_bucket_arn,
      :namespace,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] version_token
    #   The version token.
    #   @return [String]
    #
    # @!attribute [rw] metadata_location
    #   The metadata location.
    #   @return [String]
    #
    # @!attribute [rw] warehouse_location
    #   The warehouse location.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/GetTableMetadataLocationResponse AWS API Documentation
    #
    class GetTableMetadataLocationResponse < Struct.new(
      :version_token,
      :metadata_location,
      :warehouse_location)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] table_bucket_arn
    #   The Amazon Resource Name (ARN) of the table bucket that contains the
    #   table.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace associated with the table.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the table.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/GetTablePolicyRequest AWS API Documentation
    #
    class GetTablePolicyRequest < Struct.new(
      :table_bucket_arn,
      :namespace,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_policy
    #   The `JSON` that defines the policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/GetTablePolicyResponse AWS API Documentation
    #
    class GetTablePolicyResponse < Struct.new(
      :resource_policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] table_arn
    #   The Amazon Resource Name (ARN) of the table.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/GetTableRecordExpirationConfigurationRequest AWS API Documentation
    #
    class GetTableRecordExpirationConfigurationRequest < Struct.new(
      :table_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] configuration
    #   The record expiration configuration for the table, including the
    #   status and retention settings.
    #   @return [Types::TableRecordExpirationConfigurationValue]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/GetTableRecordExpirationConfigurationResponse AWS API Documentation
    #
    class GetTableRecordExpirationConfigurationResponse < Struct.new(
      :configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] table_arn
    #   The Amazon Resource Name (ARN) of the table.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/GetTableRecordExpirationJobStatusRequest AWS API Documentation
    #
    class GetTableRecordExpirationJobStatusRequest < Struct.new(
      :table_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   The current status of the most recent expiration job.
    #   @return [String]
    #
    # @!attribute [rw] last_run_timestamp
    #   The timestamp when the expiration job was last executed.
    #   @return [Time]
    #
    # @!attribute [rw] failure_message
    #   If the job failed, this field contains an error message describing
    #   the failure reason.
    #   @return [String]
    #
    # @!attribute [rw] metrics
    #   Metrics about the most recent expiration job execution, including
    #   the number of records and files deleted.
    #   @return [Types::TableRecordExpirationJobMetrics]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/GetTableRecordExpirationJobStatusResponse AWS API Documentation
    #
    class GetTableRecordExpirationJobStatusResponse < Struct.new(
      :status,
      :last_run_timestamp,
      :failure_message,
      :metrics)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] table_arn
    #   The Amazon Resource Name (ARN) of the table.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/GetTableReplicationRequest AWS API Documentation
    #
    class GetTableReplicationRequest < Struct.new(
      :table_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] version_token
    #   A version token that represents the current state of the table's
    #   replication configuration. Use this token when updating the
    #   configuration to ensure consistency.
    #   @return [String]
    #
    # @!attribute [rw] configuration
    #   The replication configuration for the table, including the IAM role
    #   and replication rules.
    #   @return [Types::TableReplicationConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/GetTableReplicationResponse AWS API Documentation
    #
    class GetTableReplicationResponse < Struct.new(
      :version_token,
      :configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] table_arn
    #   The Amazon Resource Name (ARN) of the table.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/GetTableReplicationStatusRequest AWS API Documentation
    #
    class GetTableReplicationStatusRequest < Struct.new(
      :table_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] source_table_arn
    #   The Amazon Resource Name (ARN) of the source table being replicated.
    #   @return [String]
    #
    # @!attribute [rw] destinations
    #   An array of status information for each replication destination,
    #   including the current state, last successful update, and any error
    #   messages.
    #   @return [Array<Types::ReplicationDestinationStatusModel>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/GetTableReplicationStatusResponse AWS API Documentation
    #
    class GetTableReplicationStatusResponse < Struct.new(
      :source_table_arn,
      :destinations)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] table_bucket_arn
    #   The Amazon Resource Name (ARN) of the table bucket associated with
    #   the table.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The name of the namespace the table is associated with.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the table.
    #   @return [String]
    #
    # @!attribute [rw] table_arn
    #   The Amazon Resource Name (ARN) of the table.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/GetTableRequest AWS API Documentation
    #
    class GetTableRequest < Struct.new(
      :table_bucket_arn,
      :namespace,
      :name,
      :table_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the table.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the table.
    #   @return [String]
    #
    # @!attribute [rw] table_arn
    #   The Amazon Resource Name (ARN) of the table.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace associated with the table.
    #   @return [Array<String>]
    #
    # @!attribute [rw] namespace_id
    #   The unique identifier of the namespace containing this table.
    #   @return [String]
    #
    # @!attribute [rw] version_token
    #   The version token of the table.
    #   @return [String]
    #
    # @!attribute [rw] metadata_location
    #   The metadata location of the table.
    #   @return [String]
    #
    # @!attribute [rw] warehouse_location
    #   The warehouse location of the table.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time the table bucket was created at.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   The ID of the account that created the table.
    #   @return [String]
    #
    # @!attribute [rw] managed_by_service
    #   The service that manages the table.
    #   @return [String]
    #
    # @!attribute [rw] modified_at
    #   The date and time the table was last modified on.
    #   @return [Time]
    #
    # @!attribute [rw] modified_by
    #   The ID of the account that last modified the table.
    #   @return [String]
    #
    # @!attribute [rw] owner_account_id
    #   The ID of the account that owns the table.
    #   @return [String]
    #
    # @!attribute [rw] format
    #   The format of the table.
    #   @return [String]
    #
    # @!attribute [rw] table_bucket_id
    #   The unique identifier of the table bucket containing this table.
    #   @return [String]
    #
    # @!attribute [rw] managed_table_information
    #   If this table is managed by S3 Tables, contains additional
    #   information such as replication details.
    #   @return [Types::ManagedTableInformation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/GetTableResponse AWS API Documentation
    #
    class GetTableResponse < Struct.new(
      :name,
      :type,
      :table_arn,
      :namespace,
      :namespace_id,
      :version_token,
      :metadata_location,
      :warehouse_location,
      :created_at,
      :created_by,
      :managed_by_service,
      :modified_at,
      :modified_by,
      :owner_account_id,
      :format,
      :table_bucket_id,
      :managed_table_information)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] table_bucket_arn
    #   The Amazon Resource Name (ARN) of the table bucket that contains the
    #   table.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace associated with the table.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the table.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/GetTableStorageClassRequest AWS API Documentation
    #
    class GetTableStorageClassRequest < Struct.new(
      :table_bucket_arn,
      :namespace,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] storage_class_configuration
    #   The storage class configuration for the table.
    #   @return [Types::StorageClassConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/GetTableStorageClassResponse AWS API Documentation
    #
    class GetTableStorageClassResponse < Struct.new(
      :storage_class_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about the compaction settings for an Iceberg table.
    #
    # @!attribute [rw] target_file_size_mb
    #   The target file size for the table in MB.
    #   @return [Integer]
    #
    # @!attribute [rw] strategy
    #   The compaction strategy to use for the table. This determines how
    #   files are selected and combined during compaction operations.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/IcebergCompactionSettings AWS API Documentation
    #
    class IcebergCompactionSettings < Struct.new(
      :target_file_size_mb,
      :strategy)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about the metadata for an Iceberg table.
    #
    # @!attribute [rw] schema
    #   The schema for an Iceberg table.
    #   @return [Types::IcebergSchema]
    #
    # @!attribute [rw] properties
    #   Contains configuration properties for an Iceberg table.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/IcebergMetadata AWS API Documentation
    #
    class IcebergMetadata < Struct.new(
      :schema,
      :properties)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about the schema for an Iceberg table.
    #
    # @!attribute [rw] fields
    #   The schema fields for the table
    #   @return [Array<Types::SchemaField>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/IcebergSchema AWS API Documentation
    #
    class IcebergSchema < Struct.new(
      :fields)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about the snapshot management settings for an Iceberg
    # table. The oldest snapshot expires when its age exceeds the
    # `maxSnapshotAgeHours` and the total number of snapshots exceeds the
    # value for the minimum number of snapshots to keep
    # `minSnapshotsToKeep`.
    #
    # @!attribute [rw] min_snapshots_to_keep
    #   The minimum number of snapshots to keep.
    #   @return [Integer]
    #
    # @!attribute [rw] max_snapshot_age_hours
    #   The maximum age of a snapshot before it can be expired.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/IcebergSnapshotManagementSettings AWS API Documentation
    #
    class IcebergSnapshotManagementSettings < Struct.new(
      :min_snapshots_to_keep,
      :max_snapshot_age_hours)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about the unreferenced file removal settings for an
    # Iceberg table bucket.
    #
    # @!attribute [rw] unreferenced_days
    #   The number of days an object has to be unreferenced before it is
    #   marked as non-current.
    #   @return [Integer]
    #
    # @!attribute [rw] non_current_days
    #   The number of days an object has to be non-current before it is
    #   deleted.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/IcebergUnreferencedFileRemovalSettings AWS API Documentation
    #
    class IcebergUnreferencedFileRemovalSettings < Struct.new(
      :unreferenced_days,
      :non_current_days)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request failed due to an internal server error.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/InternalServerErrorException AWS API Documentation
    #
    class InternalServerErrorException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the most recent successful replication
    # update to a destination.
    #
    # @!attribute [rw] metadata_location
    #   The S3 location of the metadata that was successfully replicated.
    #   @return [String]
    #
    # @!attribute [rw] timestamp
    #   The timestamp when the replication update completed successfully.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/LastSuccessfulReplicatedUpdate AWS API Documentation
    #
    class LastSuccessfulReplicatedUpdate < Struct.new(
      :metadata_location,
      :timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] table_bucket_arn
    #   The Amazon Resource Name (ARN) of the table bucket.
    #   @return [String]
    #
    # @!attribute [rw] prefix
    #   The prefix of the namespaces.
    #   @return [String]
    #
    # @!attribute [rw] continuation_token
    #   `ContinuationToken` indicates to Amazon S3 that the list is being
    #   continued on this bucket with a token. `ContinuationToken` is
    #   obfuscated and is not a real key. You can use this
    #   `ContinuationToken` for pagination of the list results.
    #   @return [String]
    #
    # @!attribute [rw] max_namespaces
    #   The maximum number of namespaces to return in the list.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/ListNamespacesRequest AWS API Documentation
    #
    class ListNamespacesRequest < Struct.new(
      :table_bucket_arn,
      :prefix,
      :continuation_token,
      :max_namespaces)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] namespaces
    #   A list of namespaces.
    #   @return [Array<Types::NamespaceSummary>]
    #
    # @!attribute [rw] continuation_token
    #   The `ContinuationToken` for pagination of the list results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/ListNamespacesResponse AWS API Documentation
    #
    class ListNamespacesResponse < Struct.new(
      :namespaces,
      :continuation_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] prefix
    #   The prefix of the table buckets.
    #   @return [String]
    #
    # @!attribute [rw] continuation_token
    #   `ContinuationToken` indicates to Amazon S3 that the list is being
    #   continued on this bucket with a token. `ContinuationToken` is
    #   obfuscated and is not a real key. You can use this
    #   `ContinuationToken` for pagination of the list results.
    #   @return [String]
    #
    # @!attribute [rw] max_buckets
    #   The maximum number of table buckets to return in the list.
    #   @return [Integer]
    #
    # @!attribute [rw] type
    #   The type of table buckets to filter by in the list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/ListTableBucketsRequest AWS API Documentation
    #
    class ListTableBucketsRequest < Struct.new(
      :prefix,
      :continuation_token,
      :max_buckets,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] table_buckets
    #   A list of table buckets.
    #   @return [Array<Types::TableBucketSummary>]
    #
    # @!attribute [rw] continuation_token
    #   You can use this `ContinuationToken` for pagination of the list
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/ListTableBucketsResponse AWS API Documentation
    #
    class ListTableBucketsResponse < Struct.new(
      :table_buckets,
      :continuation_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] table_bucket_arn
    #   The Amazon resource Name (ARN) of the table bucket.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace of the tables.
    #   @return [String]
    #
    # @!attribute [rw] prefix
    #   The prefix of the tables.
    #   @return [String]
    #
    # @!attribute [rw] continuation_token
    #   `ContinuationToken` indicates to Amazon S3 that the list is being
    #   continued on this bucket with a token. `ContinuationToken` is
    #   obfuscated and is not a real key. You can use this
    #   `ContinuationToken` for pagination of the list results.
    #   @return [String]
    #
    # @!attribute [rw] max_tables
    #   The maximum number of tables to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/ListTablesRequest AWS API Documentation
    #
    class ListTablesRequest < Struct.new(
      :table_bucket_arn,
      :namespace,
      :prefix,
      :continuation_token,
      :max_tables)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tables
    #   A list of tables.
    #   @return [Array<Types::TableSummary>]
    #
    # @!attribute [rw] continuation_token
    #   You can use this `ContinuationToken` for pagination of the list
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/ListTablesResponse AWS API Documentation
    #
    class ListTablesResponse < Struct.new(
      :tables,
      :continuation_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the Amazon S3 Tables resource that
    #   you want to list tags for. The tagged resource can be a table bucket
    #   or a table. For a list of all S3 resources that support tagging, see
    #   [Managing tags for Amazon S3 resources][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/tagging.html#manage-tags
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The user-defined tags that are applied to the resource. For more
    #   information, see [Tagging for cost allocation or attribute-based
    #   access control (ABAC)][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/tagging.html
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about tables that are managed by S3 Tables,
    # including replication information for replica tables.
    #
    # @!attribute [rw] replication_information
    #   If this table is a replica, contains information about the source
    #   table from which it is replicated.
    #   @return [Types::ReplicationInformation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/ManagedTableInformation AWS API Documentation
    #
    class ManagedTableInformation < Struct.new(
      :replication_information)
      SENSITIVE = []
      include Aws::Structure
    end

    # The requested operation is not allowed on this resource. This may
    # occur when attempting to modify a resource that is managed by a
    # service or has restrictions that prevent the operation.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/MethodNotAllowedException AWS API Documentation
    #
    class MethodNotAllowedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about a namespace.
    #
    # @!attribute [rw] namespace
    #   The name of the namespace.
    #   @return [Array<String>]
    #
    # @!attribute [rw] created_at
    #   The date and time the namespace was created at.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   The ID of the account that created the namespace.
    #   @return [String]
    #
    # @!attribute [rw] owner_account_id
    #   The ID of the account that owns the namespace.
    #   @return [String]
    #
    # @!attribute [rw] namespace_id
    #   The system-assigned unique identifier for the namespace.
    #   @return [String]
    #
    # @!attribute [rw] table_bucket_id
    #   The system-assigned unique identifier for the table bucket that
    #   contains this namespace.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/NamespaceSummary AWS API Documentation
    #
    class NamespaceSummary < Struct.new(
      :namespace,
      :created_at,
      :created_by,
      :owner_account_id,
      :namespace_id,
      :table_bucket_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was rejected because the specified resource could not be
    # found.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/NotFoundException AWS API Documentation
    #
    class NotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] table_bucket_arn
    #   The Amazon Resource Name (ARN) of the table bucket.
    #   @return [String]
    #
    # @!attribute [rw] encryption_configuration
    #   The encryption configuration to apply to the table bucket.
    #   @return [Types::EncryptionConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/PutTableBucketEncryptionRequest AWS API Documentation
    #
    class PutTableBucketEncryptionRequest < Struct.new(
      :table_bucket_arn,
      :encryption_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] table_bucket_arn
    #   The Amazon Resource Name (ARN) of the table bucket associated with
    #   the maintenance configuration.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the maintenance configuration.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   Defines the values of the maintenance configuration for the table
    #   bucket.
    #   @return [Types::TableBucketMaintenanceConfigurationValue]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/PutTableBucketMaintenanceConfigurationRequest AWS API Documentation
    #
    class PutTableBucketMaintenanceConfigurationRequest < Struct.new(
      :table_bucket_arn,
      :type,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] table_bucket_arn
    #   The Amazon Resource Name (ARN) of the table bucket.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/PutTableBucketMetricsConfigurationRequest AWS API Documentation
    #
    class PutTableBucketMetricsConfigurationRequest < Struct.new(
      :table_bucket_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] table_bucket_arn
    #   The Amazon Resource Name (ARN) of the table bucket.
    #   @return [String]
    #
    # @!attribute [rw] resource_policy
    #   The `JSON` that defines the policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/PutTableBucketPolicyRequest AWS API Documentation
    #
    class PutTableBucketPolicyRequest < Struct.new(
      :table_bucket_arn,
      :resource_policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] table_bucket_arn
    #   The Amazon Resource Name (ARN) of the source table bucket.
    #   @return [String]
    #
    # @!attribute [rw] version_token
    #   A version token from a previous GetTableBucketReplication call. Use
    #   this token to ensure you're updating the expected version of the
    #   configuration.
    #   @return [String]
    #
    # @!attribute [rw] configuration
    #   The replication configuration to apply, including the IAM role and
    #   replication rules.
    #   @return [Types::TableBucketReplicationConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/PutTableBucketReplicationRequest AWS API Documentation
    #
    class PutTableBucketReplicationRequest < Struct.new(
      :table_bucket_arn,
      :version_token,
      :configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] version_token
    #   A new version token representing the updated replication
    #   configuration.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the replication configuration operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/PutTableBucketReplicationResponse AWS API Documentation
    #
    class PutTableBucketReplicationResponse < Struct.new(
      :version_token,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] table_bucket_arn
    #   The Amazon Resource Name (ARN) of the table bucket.
    #   @return [String]
    #
    # @!attribute [rw] storage_class_configuration
    #   The storage class configuration to apply to the table bucket. This
    #   configuration will serve as the default for new tables created in
    #   this bucket.
    #   @return [Types::StorageClassConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/PutTableBucketStorageClassRequest AWS API Documentation
    #
    class PutTableBucketStorageClassRequest < Struct.new(
      :table_bucket_arn,
      :storage_class_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] table_bucket_arn
    #   The Amazon Resource Name (ARN) of the table associated with the
    #   maintenance configuration.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace of the table.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the table.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the maintenance configuration.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   Defines the values of the maintenance configuration for the table.
    #   @return [Types::TableMaintenanceConfigurationValue]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/PutTableMaintenanceConfigurationRequest AWS API Documentation
    #
    class PutTableMaintenanceConfigurationRequest < Struct.new(
      :table_bucket_arn,
      :namespace,
      :name,
      :type,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] table_bucket_arn
    #   The Amazon Resource Name (ARN) of the table bucket that contains the
    #   table.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace associated with the table.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the table.
    #   @return [String]
    #
    # @!attribute [rw] resource_policy
    #   The `JSON` that defines the policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/PutTablePolicyRequest AWS API Documentation
    #
    class PutTablePolicyRequest < Struct.new(
      :table_bucket_arn,
      :namespace,
      :name,
      :resource_policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] table_arn
    #   The Amazon Resource Name (ARN) of the table.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The record expiration configuration to apply to the table, including
    #   the status (`enabled` or `disabled`) and retention period in days.
    #   @return [Types::TableRecordExpirationConfigurationValue]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/PutTableRecordExpirationConfigurationRequest AWS API Documentation
    #
    class PutTableRecordExpirationConfigurationRequest < Struct.new(
      :table_arn,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] table_arn
    #   The Amazon Resource Name (ARN) of the source table.
    #   @return [String]
    #
    # @!attribute [rw] version_token
    #   A version token from a previous GetTableReplication call. Use this
    #   token to ensure you're updating the expected version of the
    #   configuration.
    #   @return [String]
    #
    # @!attribute [rw] configuration
    #   The replication configuration to apply to the table, including the
    #   IAM role and replication rules.
    #   @return [Types::TableReplicationConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/PutTableReplicationRequest AWS API Documentation
    #
    class PutTableReplicationRequest < Struct.new(
      :table_arn,
      :version_token,
      :configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] version_token
    #   A new version token representing the updated replication
    #   configuration.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the replication configuration operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/PutTableReplicationResponse AWS API Documentation
    #
    class PutTableReplicationResponse < Struct.new(
      :version_token,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] table_bucket_arn
    #   The Amazon Resource Name (ARN) of the table bucket.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace associated with the table.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The current name of the table.
    #   @return [String]
    #
    # @!attribute [rw] new_namespace_name
    #   The new name for the namespace.
    #   @return [String]
    #
    # @!attribute [rw] new_name
    #   The new name for the table.
    #   @return [String]
    #
    # @!attribute [rw] version_token
    #   The version token of the table.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/RenameTableRequest AWS API Documentation
    #
    class RenameTableRequest < Struct.new(
      :table_bucket_arn,
      :namespace,
      :name,
      :new_namespace_name,
      :new_name,
      :version_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a destination table bucket for replication.
    #
    # @!attribute [rw] destination_table_bucket_arn
    #   The Amazon Resource Name (ARN) of the destination table bucket where
    #   tables will be replicated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/ReplicationDestination AWS API Documentation
    #
    class ReplicationDestination < Struct.new(
      :destination_table_bucket_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains status information for a replication destination, including
    # the current replication state, last successful update, and any error
    # messages.
    #
    # @!attribute [rw] replication_status
    #   The current status of replication to this destination.
    #   @return [String]
    #
    # @!attribute [rw] destination_table_bucket_arn
    #   The Amazon Resource Name (ARN) of the destination table bucket.
    #   @return [String]
    #
    # @!attribute [rw] destination_table_arn
    #   The Amazon Resource Name (ARN) of the destination table.
    #   @return [String]
    #
    # @!attribute [rw] last_successful_replicated_update
    #   Information about the most recent successful replication update to
    #   this destination.
    #   @return [Types::LastSuccessfulReplicatedUpdate]
    #
    # @!attribute [rw] failure_message
    #   If replication has failed, this field contains an error message
    #   describing the failure reason.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/ReplicationDestinationStatusModel AWS API Documentation
    #
    class ReplicationDestinationStatusModel < Struct.new(
      :replication_status,
      :destination_table_bucket_arn,
      :destination_table_arn,
      :last_successful_replicated_update,
      :failure_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the source of a replicated table.
    #
    # @!attribute [rw] source_table_arn
    #   The Amazon Resource Name (ARN) of the source table from which this
    #   table is replicated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/ReplicationInformation AWS API Documentation
    #
    class ReplicationInformation < Struct.new(
      :source_table_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about a schema field.
    #
    # @!attribute [rw] name
    #   The name of the field.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The field type. S3 Tables supports all Apache Iceberg primitive
    #   types. For more information, see the [Apache Iceberg
    #   documentation][1].
    #
    #
    #
    #   [1]: https://iceberg.apache.org/spec/#primitive-types
    #   @return [String]
    #
    # @!attribute [rw] required
    #   A Boolean value that specifies whether values are required for each
    #   row in this field. By default, this is `false` and null values are
    #   allowed in the field. If this is `true` the field does not allow
    #   null values.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/SchemaField AWS API Documentation
    #
    class SchemaField < Struct.new(
      :name,
      :type,
      :required)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration details for the storage class of tables or table
    # buckets. This allows you to optimize storage costs by selecting the
    # appropriate storage class based on your access patterns and
    # performance requirements.
    #
    # @!attribute [rw] storage_class
    #   The storage class for the table or table bucket. Valid values
    #   include storage classes optimized for different access patterns and
    #   cost profiles.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/StorageClassConfiguration AWS API Documentation
    #
    class StorageClassConfiguration < Struct.new(
      :storage_class)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about the values that define the maintenance configuration for
    # a table bucket.
    #
    # @!attribute [rw] status
    #   The status of the maintenance configuration.
    #   @return [String]
    #
    # @!attribute [rw] settings
    #   Contains details about the settings of the maintenance
    #   configuration.
    #   @return [Types::TableBucketMaintenanceSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/TableBucketMaintenanceConfigurationValue AWS API Documentation
    #
    class TableBucketMaintenanceConfigurationValue < Struct.new(
      :status,
      :settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about the maintenance settings for the table bucket.
    #
    # @note TableBucketMaintenanceSettings is a union - when making an API calls you must set exactly one of the members.
    #
    # @note TableBucketMaintenanceSettings is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of TableBucketMaintenanceSettings corresponding to the set member.
    #
    # @!attribute [rw] iceberg_unreferenced_file_removal
    #   The unreferenced file removal settings for the table bucket.
    #   @return [Types::IcebergUnreferencedFileRemovalSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/TableBucketMaintenanceSettings AWS API Documentation
    #
    class TableBucketMaintenanceSettings < Struct.new(
      :iceberg_unreferenced_file_removal,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class IcebergUnreferencedFileRemoval < TableBucketMaintenanceSettings; end
      class Unknown < TableBucketMaintenanceSettings; end
    end

    # The replication configuration for a table bucket. This configuration
    # defines how tables in the source bucket are replicated to destination
    # table buckets, including the IAM role used for replication.
    #
    # @!attribute [rw] role
    #   The Amazon Resource Name (ARN) of the IAM role that S3 Tables
    #   assumes to replicate tables on your behalf.
    #   @return [String]
    #
    # @!attribute [rw] rules
    #   An array of replication rules that define which tables to replicate
    #   and where to replicate them.
    #   @return [Array<Types::TableBucketReplicationRule>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/TableBucketReplicationConfiguration AWS API Documentation
    #
    class TableBucketReplicationConfiguration < Struct.new(
      :role,
      :rules)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines a rule for replicating tables from a source table bucket to
    # one or more destination table buckets.
    #
    # @!attribute [rw] destinations
    #   An array of destination table buckets where tables should be
    #   replicated.
    #   @return [Array<Types::ReplicationDestination>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/TableBucketReplicationRule AWS API Documentation
    #
    class TableBucketReplicationRule < Struct.new(
      :destinations)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about a table bucket.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the table bucket.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the table bucket.
    #   @return [String]
    #
    # @!attribute [rw] owner_account_id
    #   The ID of the account that owns the table bucket.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time the table bucket was created at.
    #   @return [Time]
    #
    # @!attribute [rw] table_bucket_id
    #   The system-assigned unique identifier for the table bucket.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the table bucket.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/TableBucketSummary AWS API Documentation
    #
    class TableBucketSummary < Struct.new(
      :arn,
      :name,
      :owner_account_id,
      :created_at,
      :table_bucket_id,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The values that define a maintenance configuration for a table.
    #
    # @!attribute [rw] status
    #   The status of the maintenance configuration.
    #   @return [String]
    #
    # @!attribute [rw] settings
    #   Contains details about the settings for the maintenance
    #   configuration.
    #   @return [Types::TableMaintenanceSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/TableMaintenanceConfigurationValue AWS API Documentation
    #
    class TableMaintenanceConfigurationValue < Struct.new(
      :status,
      :settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about the status of a maintenance job.
    #
    # @!attribute [rw] status
    #   The status of the job.
    #   @return [String]
    #
    # @!attribute [rw] last_run_timestamp
    #   The date and time that the maintenance job was last run.
    #   @return [Time]
    #
    # @!attribute [rw] failure_message
    #   The failure message of a failed job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/TableMaintenanceJobStatusValue AWS API Documentation
    #
    class TableMaintenanceJobStatusValue < Struct.new(
      :status,
      :last_run_timestamp,
      :failure_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about maintenance settings for the table.
    #
    # @note TableMaintenanceSettings is a union - when making an API calls you must set exactly one of the members.
    #
    # @note TableMaintenanceSettings is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of TableMaintenanceSettings corresponding to the set member.
    #
    # @!attribute [rw] iceberg_compaction
    #   Contains details about the Iceberg compaction settings for the
    #   table.
    #   @return [Types::IcebergCompactionSettings]
    #
    # @!attribute [rw] iceberg_snapshot_management
    #   Contains details about the Iceberg snapshot management settings for
    #   the table.
    #   @return [Types::IcebergSnapshotManagementSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/TableMaintenanceSettings AWS API Documentation
    #
    class TableMaintenanceSettings < Struct.new(
      :iceberg_compaction,
      :iceberg_snapshot_management,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class IcebergCompaction < TableMaintenanceSettings; end
      class IcebergSnapshotManagement < TableMaintenanceSettings; end
      class Unknown < TableMaintenanceSettings; end
    end

    # Contains details about the table metadata.
    #
    # @note TableMetadata is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] iceberg
    #   Contains details about the metadata of an Iceberg table.
    #   @return [Types::IcebergMetadata]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/TableMetadata AWS API Documentation
    #
    class TableMetadata < Struct.new(
      :iceberg,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Iceberg < TableMetadata; end
      class Unknown < TableMetadata; end
    end

    # The expiration configuration settings for records in a table, and the
    # status of the configuration. If the status of the configuration is
    # enabled, records expire and are automatically removed after the number
    # of days specified in the record expiration settings for the table.
    #
    # @!attribute [rw] status
    #   The status of the expiration settings for records in the table.
    #   @return [String]
    #
    # @!attribute [rw] settings
    #   The expiration settings for records in the table.
    #   @return [Types::TableRecordExpirationSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/TableRecordExpirationConfigurationValue AWS API Documentation
    #
    class TableRecordExpirationConfigurationValue < Struct.new(
      :status,
      :settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides metrics for the record expiration job that most recently ran
    # for a table. The metrics provide insight into the amount of data that
    # was removed when the job ran.
    #
    # @!attribute [rw] deleted_data_files
    #   The total number of data files that were removed when the job ran.
    #   @return [Integer]
    #
    # @!attribute [rw] deleted_records
    #   The total number of records that were removed when the job ran.
    #   @return [Integer]
    #
    # @!attribute [rw] removed_files_size
    #   The total size (in bytes) of the data files that were removed when
    #   the job ran.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/TableRecordExpirationJobMetrics AWS API Documentation
    #
    class TableRecordExpirationJobMetrics < Struct.new(
      :deleted_data_files,
      :deleted_records,
      :removed_files_size)
      SENSITIVE = []
      include Aws::Structure
    end

    # The record expiration setting that specifies when records expire and
    # are automatically removed from a table.
    #
    # @!attribute [rw] days
    #   If you enable record expiration for a table, you can specify the
    #   number of days to retain your table records. For example, to retain
    #   your table records for one year, set this value to `365`.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/TableRecordExpirationSettings AWS API Documentation
    #
    class TableRecordExpirationSettings < Struct.new(
      :days)
      SENSITIVE = []
      include Aws::Structure
    end

    # The replication configuration for an individual table. This
    # configuration defines how the table is replicated to destination
    # tables.
    #
    # @!attribute [rw] role
    #   The Amazon Resource Name (ARN) of the IAM role that S3 Tables
    #   assumes to replicate the table on your behalf.
    #   @return [String]
    #
    # @!attribute [rw] rules
    #   An array of replication rules that define where this table should be
    #   replicated.
    #   @return [Array<Types::TableReplicationRule>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/TableReplicationConfiguration AWS API Documentation
    #
    class TableReplicationConfiguration < Struct.new(
      :role,
      :rules)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines a rule for replicating a table to one or more destination
    # tables.
    #
    # @!attribute [rw] destinations
    #   An array of destination table buckets where this table should be
    #   replicated.
    #   @return [Array<Types::ReplicationDestination>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/TableReplicationRule AWS API Documentation
    #
    class TableReplicationRule < Struct.new(
      :destinations)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about a table.
    #
    # @!attribute [rw] namespace
    #   The name of the namespace.
    #   @return [Array<String>]
    #
    # @!attribute [rw] name
    #   The name of the table.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the table.
    #   @return [String]
    #
    # @!attribute [rw] table_arn
    #   The Amazon Resource Name (ARN) of the table.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time the table was created at.
    #   @return [Time]
    #
    # @!attribute [rw] modified_at
    #   The date and time the table was last modified at.
    #   @return [Time]
    #
    # @!attribute [rw] managed_by_service
    #   The Amazon Web Services service managing this table, if applicable.
    #   For example, a replicated table is managed by the S3 Tables
    #   replication service.
    #   @return [String]
    #
    # @!attribute [rw] namespace_id
    #   The unique identifier for the namespace that contains this table.
    #   @return [String]
    #
    # @!attribute [rw] table_bucket_id
    #   The unique identifier for the table bucket that contains this table.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/TableSummary AWS API Documentation
    #
    class TableSummary < Struct.new(
      :namespace,
      :name,
      :type,
      :table_arn,
      :created_at,
      :modified_at,
      :managed_by_service,
      :namespace_id,
      :table_bucket_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the Amazon S3 Tables resource that
    #   you're applying tags to. The tagged resource can be a table bucket
    #   or a table. For a list of all S3 resources that support tagging, see
    #   [Managing tags for Amazon S3 resources][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/tagging.html#manage-tags
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The user-defined tag that you want to add to the specified S3 Tables
    #   resource. For more information, see [Tagging for cost allocation or
    #   attribute-based access control (ABAC)][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/tagging.html
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # The limit on the number of requests per second was exceeded.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/TooManyRequestsException AWS API Documentation
    #
    class TooManyRequestsException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the Amazon S3 Tables resource that
    #   you're removing tags from. The tagged resource can be a table
    #   bucket or a table. For a list of all S3 resources that support
    #   tagging, see [Managing tags for Amazon S3 resources][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/tagging.html#manage-tags
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The array of tag keys that you're removing from the S3 Tables
    #   resource. For more information, see [Tagging for cost allocation or
    #   attribute-based access control (ABAC)][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/tagging.html
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] table_bucket_arn
    #   The Amazon Resource Name (ARN) of the table bucket.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace of the table.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the table.
    #   @return [String]
    #
    # @!attribute [rw] version_token
    #   The version token of the table.
    #   @return [String]
    #
    # @!attribute [rw] metadata_location
    #   The new metadata location for the table.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/UpdateTableMetadataLocationRequest AWS API Documentation
    #
    class UpdateTableMetadataLocationRequest < Struct.new(
      :table_bucket_arn,
      :namespace,
      :name,
      :version_token,
      :metadata_location)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the table.
    #   @return [String]
    #
    # @!attribute [rw] table_arn
    #   The Amazon Resource Name (ARN) of the table.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace the table is associated with.
    #   @return [Array<String>]
    #
    # @!attribute [rw] version_token
    #   The version token of the table.
    #   @return [String]
    #
    # @!attribute [rw] metadata_location
    #   The metadata location of the table.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/UpdateTableMetadataLocationResponse AWS API Documentation
    #
    class UpdateTableMetadataLocationResponse < Struct.new(
      :name,
      :table_arn,
      :namespace,
      :version_token,
      :metadata_location)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

