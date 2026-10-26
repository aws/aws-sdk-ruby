# frozen_string_literal: true

# This is generated code!

module Aws::S3Tables
  # This module contains the types returned by client operations.
  module Types

    # <p>The action cannot be performed because you do not have the required permission.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request is invalid or malformed.</p>
    # @!attribute message
    #   @return [String]
    class BadRequestException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request failed because there is a conflict with a previous write. You can retry the request.</p>
    # @!attribute message
    #   @return [String]
    class ConflictException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute table_bucket_arn
    #   <p>The Amazon Resource Name (ARN) of the table bucket to create the namespace in.</p>
    #   @return [String]
    # @!attribute namespace
    #   <p>A name for the namespace.</p>
    #   @return [Array<String>]
    class CreateNamespaceRequest < Struct.new(
      nil,
      :table_bucket_arn,
      :namespace,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute table_bucket_arn
    #   <p>The Amazon Resource Name (ARN) of the table bucket the namespace was created in.</p>
    #   @return [String]
    # @!attribute namespace
    #   <p>The name of the namespace.</p>
    #   @return [Array<String>]
    class CreateNamespaceResponse < Struct.new(
      nil,
      :table_bucket_arn,
      :namespace,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name for the table bucket.</p>
    #   @return [String]
    # @!attribute encryption_configuration
    #   <p>The encryption configuration to use for the table bucket. This configuration specifies the default encryption settings that will be applied to all tables created in this bucket unless overridden at the table level. The configuration includes the encryption algorithm and, if using SSE-KMS, the KMS key to use.</p>
    #   @return [Types::EncryptionConfiguration]
    # @!attribute storage_class_configuration
    #   <p>The default storage class configuration for the table bucket. This configuration will be applied to all new tables created in this bucket unless overridden at the table level. If not specified, the service default storage class will be used.</p>
    #   @return [Types::StorageClassConfiguration]
    # @!attribute tags
    #   <p>A map of user-defined tags that you would like to apply to the table bucket that you are creating. A tag is a key-value pair that you apply to your resources. Tags can help you organize and control access to resources. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/tagging.html">Tagging for cost allocation or attribute-based access control (ABAC)</a>.</p> <note> <p>You must have the <code>s3tables:TagResource</code> permission in addition to <code>s3tables:CreateTableBucket</code> permisson to create a table bucket with tags.</p> </note>
    #   @return [Hash<String, String>]
    class CreateTableBucketRequest < Struct.new(
      nil,
      :name,
      :encryption_configuration,
      :storage_class_configuration,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the table bucket.</p>
    #   @return [String]
    class CreateTableBucketResponse < Struct.new(
      nil,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute table_bucket_arn
    #   <p>The Amazon Resource Name (ARN) of the table bucket to create the table in.</p>
    #   @return [String]
    # @!attribute namespace
    #   <p>The namespace to associated with the table.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name for the table.</p>
    #   @return [String]
    # @!attribute format
    #   <p>The format for the table.</p>
    #   @return [String]
    # @!attribute metadata
    #   <p>The metadata for the table.</p>
    #   @return [Types::TableMetadata]
    # @!attribute encryption_configuration
    #   <p>The encryption configuration to use for the table. This configuration specifies the encryption algorithm and, if using SSE-KMS, the KMS key to use for encrypting the table. </p> <note> <p>If you choose SSE-KMS encryption you must grant the S3 Tables maintenance principal access to your KMS key. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-kms-permissions.html">Permissions requirements for S3 Tables SSE-KMS encryption</a>.</p> </note>
    #   @return [Types::EncryptionConfiguration]
    # @!attribute storage_class_configuration
    #   <p>The storage class configuration for the table. If not specified, the table inherits the storage class configuration from its table bucket. Specify this parameter to override the bucket's default storage class for this table.</p>
    #   @return [Types::StorageClassConfiguration]
    # @!attribute tags
    #   <p>A map of user-defined tags that you would like to apply to the table that you are creating. A tag is a key-value pair that you apply to your resources. Tags can help you organize, track costs for, and control access to resources. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/tagging.html">Tagging for cost allocation or attribute-based access control (ABAC)</a>.</p> <note> <p>You must have the <code>s3tables:TagResource</code> permission in addition to <code>s3tables:CreateTable</code> permission to create a table with tags.</p> </note>
    #   @return [Hash<String, String>]
    class CreateTableRequest < Struct.new(
      nil,
      :table_bucket_arn,
      :namespace,
      :name,
      :format,
      :metadata,
      :encryption_configuration,
      :storage_class_configuration,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute table_arn
    #   <p>The Amazon Resource Name (ARN) of the table.</p>
    #   @return [String]
    # @!attribute version_token
    #   <p>The version token of the table.</p>
    #   @return [String]
    class CreateTableResponse < Struct.new(
      nil,
      :table_arn,
      :version_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute table_bucket_arn
    #   <p>The Amazon Resource Name (ARN) of the table bucket associated with the namespace.</p>
    #   @return [String]
    # @!attribute namespace
    #   <p>The name of the namespace.</p>
    #   @return [String]
    class DeleteNamespaceRequest < Struct.new(
      nil,
      :table_bucket_arn,
      :namespace,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute table_bucket_arn
    #   <p>The Amazon Resource Name (ARN) of the table bucket.</p>
    #   @return [String]
    class DeleteTableBucketEncryptionRequest < Struct.new(
      nil,
      :table_bucket_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute table_bucket_arn
    #   <p>The Amazon Resource Name (ARN) of the table bucket.</p>
    #   @return [String]
    class DeleteTableBucketMetricsConfigurationRequest < Struct.new(
      nil,
      :table_bucket_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute table_bucket_arn
    #   <p>The Amazon Resource Name (ARN) of the table bucket.</p>
    #   @return [String]
    class DeleteTableBucketPolicyRequest < Struct.new(
      nil,
      :table_bucket_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute table_bucket_arn
    #   <p>The Amazon Resource Name (ARN) of the table bucket.</p>
    #   @return [String]
    # @!attribute version_token
    #   <p>A version token from a previous GetTableBucketReplication call. Use this token to ensure you're deleting the expected version of the configuration.</p>
    #   @return [String]
    class DeleteTableBucketReplicationRequest < Struct.new(
      nil,
      :table_bucket_arn,
      :version_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute table_bucket_arn
    #   <p>The Amazon Resource Name (ARN) of the table bucket.</p>
    #   @return [String]
    class DeleteTableBucketRequest < Struct.new(
      nil,
      :table_bucket_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute table_bucket_arn
    #   <p>The Amazon Resource Name (ARN) of the table bucket that contains the table.</p>
    #   @return [String]
    # @!attribute namespace
    #   <p>The namespace associated with the table. </p>
    #   @return [String]
    # @!attribute name
    #   <p>The table name.</p>
    #   @return [String]
    class DeleteTablePolicyRequest < Struct.new(
      nil,
      :table_bucket_arn,
      :namespace,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute table_arn
    #   <p>The Amazon Resource Name (ARN) of the table.</p>
    #   @return [String]
    # @!attribute version_token
    #   <p>A version token from a previous GetTableReplication call. Use this token to ensure you're deleting the expected version of the configuration.</p>
    #   @return [String]
    class DeleteTableReplicationRequest < Struct.new(
      nil,
      :table_arn,
      :version_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute table_bucket_arn
    #   <p>The Amazon Resource Name (ARN) of the table bucket that contains the table.</p>
    #   @return [String]
    # @!attribute namespace
    #   <p>The namespace associated with the table.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the table.</p>
    #   @return [String]
    # @!attribute version_token
    #   <p>The version token of the table.</p>
    #   @return [String]
    class DeleteTableRequest < Struct.new(
      nil,
      :table_bucket_arn,
      :namespace,
      :name,
      :version_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration specifying how data should be encrypted. This structure defines the encryption algorithm and optional KMS key to be used for server-side encryption.</p>
    # @!attribute sse_algorithm
    #   <p>The server-side encryption algorithm to use. Valid values are <code>AES256</code> for S3-managed encryption keys, or <code>aws:kms</code> for Amazon Web Services KMS-managed encryption keys. If you choose SSE-KMS encryption you must grant the S3 Tables maintenance principal access to your KMS key. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-kms-permissions.html">Permissions requirements for S3 Tables SSE-KMS encryption</a>.</p>
    #   @return [String]
    # @!attribute kms_key_arn
    #   <p>The Amazon Resource Name (ARN) of the KMS key to use for encryption. This field is required only when <code>sseAlgorithm</code> is set to <code>aws:kms</code>.</p>
    #   @return [String]
    class EncryptionConfiguration < Struct.new(
      nil,
      :sse_algorithm,
      :kms_key_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The caller isn't authorized to make the request.</p>
    # @!attribute message
    #   @return [String]
    class ForbiddenException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute table_bucket_arn
    #   <p>The Amazon Resource Name (ARN) of the table bucket.</p>
    #   @return [String]
    # @!attribute namespace
    #   <p>The name of the namespace.</p>
    #   @return [String]
    class GetNamespaceRequest < Struct.new(
      nil,
      :table_bucket_arn,
      :namespace,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute namespace
    #   <p>The name of the namespace.</p>
    #   @return [Array<String>]
    # @!attribute created_at
    #   <p>The date and time the namespace was created at.</p>
    #   @return [Time]
    # @!attribute created_by
    #   <p>The ID of the account that created the namespace.</p>
    #   @return [String]
    # @!attribute owner_account_id
    #   <p>The ID of the account that owns the namespcace.</p>
    #   @return [String]
    # @!attribute namespace_id
    #   <p>The unique identifier of the namespace.</p>
    #   @return [String]
    # @!attribute table_bucket_id
    #   <p>The unique identifier of the table bucket containing this namespace.</p>
    #   @return [String]
    class GetNamespaceResponse < Struct.new(
      nil,
      :namespace,
      :created_at,
      :created_by,
      :owner_account_id,
      :namespace_id,
      :table_bucket_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute table_bucket_arn
    #   <p>The Amazon Resource Name (ARN) of the table bucket.</p>
    #   @return [String]
    class GetTableBucketEncryptionRequest < Struct.new(
      nil,
      :table_bucket_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute encryption_configuration
    #   <p>The encryption configuration for the table bucket.</p>
    #   @return [Types::EncryptionConfiguration]
    class GetTableBucketEncryptionResponse < Struct.new(
      nil,
      :encryption_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute table_bucket_arn
    #   <p>The Amazon Resource Name (ARN) of the table bucket associated with the maintenance configuration.</p>
    #   @return [String]
    class GetTableBucketMaintenanceConfigurationRequest < Struct.new(
      nil,
      :table_bucket_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute table_bucket_arn
    #   <p>The Amazon Resource Name (ARN) of the table bucket associated with the maintenance configuration.</p>
    #   @return [String]
    # @!attribute configuration
    #   <p>Details about the maintenance configuration for the table bucket.</p>
    #   @return [Hash<String, Types::TableBucketMaintenanceConfigurationValue>]
    class GetTableBucketMaintenanceConfigurationResponse < Struct.new(
      nil,
      :table_bucket_arn,
      :configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute table_bucket_arn
    #   <p>The Amazon Resource Name (ARN) of the table bucket.</p>
    #   @return [String]
    class GetTableBucketMetricsConfigurationRequest < Struct.new(
      nil,
      :table_bucket_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute table_bucket_arn
    #   <p>The Amazon Resource Name (ARN) of the table bucket.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The unique identifier of the metrics configuration.</p>
    #   @return [String]
    class GetTableBucketMetricsConfigurationResponse < Struct.new(
      nil,
      :table_bucket_arn,
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute table_bucket_arn
    #   <p>The Amazon Resource Name (ARN) of the table bucket.</p>
    #   @return [String]
    class GetTableBucketPolicyRequest < Struct.new(
      nil,
      :table_bucket_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_policy
    #   <p>The <code>JSON</code> that defines the policy.</p>
    #   @return [String]
    class GetTableBucketPolicyResponse < Struct.new(
      nil,
      :resource_policy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute table_bucket_arn
    #   <p>The Amazon Resource Name (ARN) of the table bucket.</p>
    #   @return [String]
    class GetTableBucketReplicationRequest < Struct.new(
      nil,
      :table_bucket_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute version_token
    #   <p>A version token that represents the current state of the replication configuration. Use this token when updating the configuration to ensure consistency.</p>
    #   @return [String]
    # @!attribute configuration
    #   <p>The replication configuration for the table bucket, including the IAM role and replication rules.</p>
    #   @return [Types::TableBucketReplicationConfiguration]
    class GetTableBucketReplicationResponse < Struct.new(
      nil,
      :version_token,
      :configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute table_bucket_arn
    #   <p>The Amazon Resource Name (ARN) of the table bucket.</p>
    #   @return [String]
    class GetTableBucketRequest < Struct.new(
      nil,
      :table_bucket_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the table bucket.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the table bucket</p>
    #   @return [String]
    # @!attribute owner_account_id
    #   <p>The ID of the account that owns the table bucket.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time the table bucket was created.</p>
    #   @return [Time]
    # @!attribute table_bucket_id
    #   <p>The unique identifier of the table bucket.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the table bucket.</p>
    #   @return [String]
    class GetTableBucketResponse < Struct.new(
      nil,
      :arn,
      :name,
      :owner_account_id,
      :created_at,
      :table_bucket_id,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute table_bucket_arn
    #   <p>The Amazon Resource Name (ARN) of the table bucket.</p>
    #   @return [String]
    class GetTableBucketStorageClassRequest < Struct.new(
      nil,
      :table_bucket_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute storage_class_configuration
    #   <p>The storage class configuration for the table bucket.</p>
    #   @return [Types::StorageClassConfiguration]
    class GetTableBucketStorageClassResponse < Struct.new(
      nil,
      :storage_class_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute table_bucket_arn
    #   <p>The Amazon Resource Name (ARN) of the table bucket containing the table.</p>
    #   @return [String]
    # @!attribute namespace
    #   <p>The namespace associated with the table.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the table.</p>
    #   @return [String]
    class GetTableEncryptionRequest < Struct.new(
      nil,
      :table_bucket_arn,
      :namespace,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute encryption_configuration
    #   <p>The encryption configuration for the table.</p>
    #   @return [Types::EncryptionConfiguration]
    class GetTableEncryptionResponse < Struct.new(
      nil,
      :encryption_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute table_bucket_arn
    #   <p>The Amazon Resource Name (ARN) of the table bucket.</p>
    #   @return [String]
    # @!attribute namespace
    #   <p>The namespace associated with the table.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the table.</p>
    #   @return [String]
    class GetTableMaintenanceConfigurationRequest < Struct.new(
      nil,
      :table_bucket_arn,
      :namespace,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute table_arn
    #   <p>The Amazon Resource Name (ARN) of the table.</p>
    #   @return [String]
    # @!attribute configuration
    #   <p>Details about the maintenance configuration for the table bucket.</p>
    #   @return [Hash<String, Types::TableMaintenanceConfigurationValue>]
    class GetTableMaintenanceConfigurationResponse < Struct.new(
      nil,
      :table_arn,
      :configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute table_bucket_arn
    #   <p>The Amazon Resource Name (ARN) of the table bucket.</p>
    #   @return [String]
    # @!attribute namespace
    #   <p>The name of the namespace the table is associated with. </p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the table containing the maintenance job status you want to check.</p>
    #   @return [String]
    class GetTableMaintenanceJobStatusRequest < Struct.new(
      nil,
      :table_bucket_arn,
      :namespace,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute table_arn
    #   <p>The Amazon Resource Name (ARN) of the table.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the maintenance job.</p>
    #   @return [Hash<String, Types::TableMaintenanceJobStatusValue>]
    class GetTableMaintenanceJobStatusResponse < Struct.new(
      nil,
      :table_arn,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute table_bucket_arn
    #   <p>The Amazon Resource Name (ARN) of the table bucket.</p>
    #   @return [String]
    # @!attribute namespace
    #   <p>The namespace of the table.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the table.</p>
    #   @return [String]
    class GetTableMetadataLocationRequest < Struct.new(
      nil,
      :table_bucket_arn,
      :namespace,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute version_token
    #   <p>The version token.</p>
    #   @return [String]
    # @!attribute metadata_location
    #   <p>The metadata location.</p>
    #   @return [String]
    # @!attribute warehouse_location
    #   <p>The warehouse location.</p>
    #   @return [String]
    class GetTableMetadataLocationResponse < Struct.new(
      nil,
      :version_token,
      :metadata_location,
      :warehouse_location,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute table_bucket_arn
    #   <p>The Amazon Resource Name (ARN) of the table bucket that contains the table.</p>
    #   @return [String]
    # @!attribute namespace
    #   <p>The namespace associated with the table.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the table.</p>
    #   @return [String]
    class GetTablePolicyRequest < Struct.new(
      nil,
      :table_bucket_arn,
      :namespace,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_policy
    #   <p>The <code>JSON</code> that defines the policy.</p>
    #   @return [String]
    class GetTablePolicyResponse < Struct.new(
      nil,
      :resource_policy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute table_arn
    #   <p>The Amazon Resource Name (ARN) of the table.</p>
    #   @return [String]
    class GetTableRecordExpirationConfigurationRequest < Struct.new(
      nil,
      :table_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute configuration
    #   <p>The record expiration configuration for the table, including the status and retention settings.</p>
    #   @return [Types::TableRecordExpirationConfigurationValue]
    class GetTableRecordExpirationConfigurationResponse < Struct.new(
      nil,
      :configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute table_arn
    #   <p>The Amazon Resource Name (ARN) of the table.</p>
    #   @return [String]
    class GetTableRecordExpirationJobStatusRequest < Struct.new(
      nil,
      :table_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute status
    #   <p>The current status of the most recent expiration job.</p>
    #   @return [String]
    # @!attribute last_run_timestamp
    #   <p>The timestamp when the expiration job was last executed.</p>
    #   @return [Time]
    # @!attribute failure_message
    #   <p>If the job failed, this field contains an error message describing the failure reason.</p>
    #   @return [String]
    # @!attribute metrics
    #   <p>Metrics about the most recent expiration job execution, including the number of records and files deleted.</p>
    #   @return [Types::TableRecordExpirationJobMetrics]
    class GetTableRecordExpirationJobStatusResponse < Struct.new(
      nil,
      :status,
      :last_run_timestamp,
      :failure_message,
      :metrics,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute table_arn
    #   <p>The Amazon Resource Name (ARN) of the table.</p>
    #   @return [String]
    class GetTableReplicationRequest < Struct.new(
      nil,
      :table_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute version_token
    #   <p>A version token that represents the current state of the table's replication configuration. Use this token when updating the configuration to ensure consistency.</p>
    #   @return [String]
    # @!attribute configuration
    #   <p>The replication configuration for the table, including the IAM role and replication rules.</p>
    #   @return [Types::TableReplicationConfiguration]
    class GetTableReplicationResponse < Struct.new(
      nil,
      :version_token,
      :configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute table_arn
    #   <p>The Amazon Resource Name (ARN) of the table.</p>
    #   @return [String]
    class GetTableReplicationStatusRequest < Struct.new(
      nil,
      :table_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute source_table_arn
    #   <p>The Amazon Resource Name (ARN) of the source table being replicated.</p>
    #   @return [String]
    # @!attribute destinations
    #   <p>An array of status information for each replication destination, including the current state, last successful update, and any error messages.</p>
    #   @return [Array<Types::ReplicationDestinationStatusModel>]
    class GetTableReplicationStatusResponse < Struct.new(
      nil,
      :source_table_arn,
      :destinations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute table_bucket_arn
    #   <p>The Amazon Resource Name (ARN) of the table bucket associated with the table.</p>
    #   @return [String]
    # @!attribute namespace
    #   <p>The name of the namespace the table is associated with.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the table.</p>
    #   @return [String]
    # @!attribute table_arn
    #   <p>The Amazon Resource Name (ARN) of the table.</p>
    #   @return [String]
    class GetTableRequest < Struct.new(
      nil,
      :table_bucket_arn,
      :namespace,
      :name,
      :table_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the table.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the table.</p>
    #   @return [String]
    # @!attribute table_arn
    #   <p>The Amazon Resource Name (ARN) of the table.</p>
    #   @return [String]
    # @!attribute namespace
    #   <p>The namespace associated with the table.</p>
    #   @return [Array<String>]
    # @!attribute namespace_id
    #   <p>The unique identifier of the namespace containing this table.</p>
    #   @return [String]
    # @!attribute version_token
    #   <p>The version token of the table.</p>
    #   @return [String]
    # @!attribute metadata_location
    #   <p>The metadata location of the table.</p>
    #   @return [String]
    # @!attribute warehouse_location
    #   <p>The warehouse location of the table.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time the table bucket was created at.</p>
    #   @return [Time]
    # @!attribute created_by
    #   <p>The ID of the account that created the table.</p>
    #   @return [String]
    # @!attribute managed_by_service
    #   <p>The service that manages the table.</p>
    #   @return [String]
    # @!attribute modified_at
    #   <p>The date and time the table was last modified on.</p>
    #   @return [Time]
    # @!attribute modified_by
    #   <p>The ID of the account that last modified the table.</p>
    #   @return [String]
    # @!attribute owner_account_id
    #   <p>The ID of the account that owns the table.</p>
    #   @return [String]
    # @!attribute format
    #   <p>The format of the table.</p>
    #   @return [String]
    # @!attribute table_bucket_id
    #   <p>The unique identifier of the table bucket containing this table.</p>
    #   @return [String]
    # @!attribute managed_table_information
    #   <p>If this table is managed by S3 Tables, contains additional information such as replication details.</p>
    #   @return [Types::ManagedTableInformation]
    class GetTableResponse < Struct.new(
      nil,
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
      :managed_table_information,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:namespace_id] = nil unless options.key?(:namespace_id)
        super
      end
    end

    # @!attribute table_bucket_arn
    #   <p>The Amazon Resource Name (ARN) of the table bucket that contains the table.</p>
    #   @return [String]
    # @!attribute namespace
    #   <p>The namespace associated with the table.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the table.</p>
    #   @return [String]
    class GetTableStorageClassRequest < Struct.new(
      nil,
      :table_bucket_arn,
      :namespace,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute storage_class_configuration
    #   <p>The storage class configuration for the table.</p>
    #   @return [Types::StorageClassConfiguration]
    class GetTableStorageClassResponse < Struct.new(
      nil,
      :storage_class_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about the compaction settings for an Iceberg table.</p>
    # @!attribute target_file_size_mb
    #   <p>The target file size for the table in MB.</p>
    #   @return [Integer]
    # @!attribute strategy
    #   <p>The compaction strategy to use for the table. This determines how files are selected and combined during compaction operations.</p>
    #   @return [String]
    class IcebergCompactionSettings < Struct.new(
      nil,
      :target_file_size_mb,
      :strategy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about the metadata for an Iceberg table.</p>
    # @!attribute schema
    #   <p>The schema for an Iceberg table. Use this property to define table schemas with primitive types only. For schemas that include nested or complex types such as <code>struct</code>, <code>list</code>, or <code>map</code>, use <code>schemaV2</code> instead.</p>
    #   @return [Types::IcebergSchema]
    # @!attribute schema_v2
    #   <p>The schema for an Iceberg table using the V2 format. Use this property to define table schemas that include nested or complex data types such as <code>struct</code>, <code>list</code>, or <code>map</code>, in addition to primitive types. For schemas with only primitive types, you can use either <code>schema</code> or <code>schemaV2</code>.</p>
    #   @return [Types::IcebergSchemaV2]
    # @!attribute partition_spec
    #   <p>The partition specification for the Iceberg table. Partitioning organizes data into separate files based on the values of one or more fields, which can improve query performance by reducing the amount of data scanned. Each partition field applies a transform (such as identity, year, month, or bucket) to a single field.</p>
    #   @return [Types::IcebergPartitionSpec]
    # @!attribute write_order
    #   <p>The sort order for the Iceberg table. Sort order defines how data is sorted within data files, which can improve query performance by enabling more efficient data skipping and filtering.</p>
    #   @return [Types::IcebergSortOrder]
    # @!attribute properties
    #   <p>A map of custom configuration properties for the Iceberg table.</p>
    #   @return [Hash<String, String>]
    class IcebergMetadata < Struct.new(
      nil,
      :schema,
      :schema_v2,
      :partition_spec,
      :write_order,
      :properties,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines a single partition field in an Iceberg partition specification.</p>
    # @!attribute source_id
    #   <p>The ID of the source schema field to partition by. This must reference a valid field ID from the table schema.</p>
    #   @return [Integer]
    # @!attribute transform
    #   <p>The partition transform to apply to the source field. Supported transforms include <code>identity</code>, <code>year</code>, <code>month</code>, <code>day</code>, <code>hour</code>, <code>bucket</code>, and <code>truncate</code>. For more information, see the <a href="https://iceberg.apache.org/spec/#partition-transforms">Apache Iceberg partition transforms documentation</a>.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name for this partition field. This name is used in the partitioned file paths.</p>
    #   @return [String]
    # @!attribute field_id
    #   <p>An optional unique identifier for this partition field. If not specified, S3 Tables automatically assigns a field ID.</p>
    #   @return [Integer]
    class IcebergPartitionField < Struct.new(
      nil,
      :source_id,
      :transform,
      :name,
      :field_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines how data in an Iceberg table is partitioned. Partitioning helps optimize query performance by organizing data into separate files based on field values. Each partition field specifies a transform to apply to a source field.</p>
    # @!attribute fields
    #   <p>The list of partition fields that define how the table data is partitioned. Each field specifies a source field and a transform to apply. This field is required if <code>partitionSpec</code> is provided.</p>
    #   @return [Array<Types::IcebergPartitionField>]
    # @!attribute spec_id
    #   <p>The unique identifier for this partition specification. If not specified, defaults to <code>0</code>.</p>
    #   @return [Integer]
    class IcebergPartitionSpec < Struct.new(
      nil,
      :fields,
      :spec_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about the schema for an Iceberg table.</p>
    # @!attribute fields
    #   <p>The schema fields for the table</p>
    #   @return [Array<Types::SchemaField>]
    class IcebergSchema < Struct.new(
      nil,
      :fields,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about the schema for an Iceberg table using the V2 format. This schema format supports nested and complex data types such as <code>struct</code>, <code>list</code>, and <code>map</code>, in addition to primitive types.</p>
    # @!attribute type
    #   <p>The type of the top-level schema, which is always a <code>struct</code> type as defined in the <a href="https://iceberg.apache.org/spec/#schemas-and-data-types">Apache Iceberg specification</a>. This value must be <code>struct</code>.</p>
    #   @return [String]
    # @!attribute fields
    #   <p>The schema fields for the table. Each field defines a column in the table, including its name, type, and whether it is required.</p>
    #   @return [Array<Types::SchemaV2Field>]
    # @!attribute schema_id
    #   <p>An optional unique identifier for the schema. Schema IDs are used by Apache Iceberg to track schema evolution.</p>
    #   @return [Integer]
    # @!attribute identifier_field_ids
    #   <p>A list of field IDs that are used as the identifier fields for the table. Identifier fields uniquely identify a row in the table.</p>
    #   @return [Array<Integer>]
    class IcebergSchemaV2 < Struct.new(
      nil,
      :type,
      :fields,
      :schema_id,
      :identifier_field_ids,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about the snapshot management settings for an Iceberg table. The oldest snapshot expires when its age exceeds the <code>maxSnapshotAgeHours</code> and the total number of snapshots exceeds the value for the minimum number of snapshots to keep <code>minSnapshotsToKeep</code>.</p>
    # @!attribute min_snapshots_to_keep
    #   <p>The minimum number of snapshots to keep.</p>
    #   @return [Integer]
    # @!attribute max_snapshot_age_hours
    #   <p>The maximum age of a snapshot before it can be expired.</p>
    #   @return [Integer]
    class IcebergSnapshotManagementSettings < Struct.new(
      nil,
      :min_snapshots_to_keep,
      :max_snapshot_age_hours,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines a single sort field in an Iceberg sort order specification.</p>
    # @!attribute source_id
    #   <p>The ID of the source schema field to sort by. This must reference a valid field ID from the table schema.</p>
    #   @return [Integer]
    # @!attribute transform
    #   <p>The transform to apply to the source field before sorting. Use <code>identity</code> to sort by the field value directly, or specify other transforms as needed.</p>
    #   @return [String]
    # @!attribute direction
    #   <p>The sort direction. Valid values are <code>asc</code> for ascending order or <code>desc</code> for descending order.</p>
    #   @return [String]
    # @!attribute null_order
    #   <p>Specifies how null values are ordered. Valid values are <code>nulls-first</code> to place nulls before non-null values, or <code>nulls-last</code> to place nulls after non-null values.</p>
    #   @return [String]
    class IcebergSortField < Struct.new(
      nil,
      :source_id,
      :transform,
      :direction,
      :null_order,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines the sort order for data within an Iceberg table. Sorting data can improve query performance by enabling more efficient data skipping.</p>
    # @!attribute order_id
    #   <p>The unique identifier for this sort order. If not specified, defaults to <code>1</code>. The order ID is used by Apache Iceberg to track sort order evolution.</p>
    #   @return [Integer]
    # @!attribute fields
    #   <p>The list of sort fields that define how data is sorted within files. Each field specifies a source field, sort direction, and null ordering. This field is required if <code>writeOrder</code> is provided.</p>
    #   @return [Array<Types::IcebergSortField>]
    class IcebergSortOrder < Struct.new(
      nil,
      :order_id,
      :fields,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about the unreferenced file removal settings for an Iceberg table bucket.</p>
    # @!attribute unreferenced_days
    #   <p>The number of days an object has to be unreferenced before it is marked as non-current.</p>
    #   @return [Integer]
    # @!attribute non_current_days
    #   <p>The number of days an object has to be non-current before it is deleted.</p>
    #   @return [Integer]
    class IcebergUnreferencedFileRemovalSettings < Struct.new(
      nil,
      :unreferenced_days,
      :non_current_days,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request failed due to an internal server error.</p>
    # @!attribute message
    #   @return [String]
    class InternalServerErrorException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the most recent successful replication update to a destination.</p>
    # @!attribute metadata_location
    #   <p>The S3 location of the metadata that was successfully replicated.</p>
    #   @return [String]
    # @!attribute timestamp
    #   <p>The timestamp when the replication update completed successfully.</p>
    #   @return [Time]
    class LastSuccessfulReplicatedUpdate < Struct.new(
      nil,
      :metadata_location,
      :timestamp,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute table_bucket_arn
    #   <p>The Amazon Resource Name (ARN) of the table bucket.</p>
    #   @return [String]
    # @!attribute prefix
    #   <p>The prefix of the namespaces.</p>
    #   @return [String]
    # @!attribute continuation_token
    #   <p> <code>ContinuationToken</code> indicates to Amazon S3 that the list is being continued on this bucket with a token. <code>ContinuationToken</code> is obfuscated and is not a real key. You can use this <code>ContinuationToken</code> for pagination of the list results.</p>
    #   @return [String]
    # @!attribute max_namespaces
    #   <p>The maximum number of namespaces to return in the list.</p>
    #   @return [Integer]
    class ListNamespacesRequest < Struct.new(
      nil,
      :table_bucket_arn,
      :prefix,
      :continuation_token,
      :max_namespaces,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute namespaces
    #   <p>A list of namespaces.</p>
    #   @return [Array<Types::NamespaceSummary>]
    # @!attribute continuation_token
    #   <p>The <code>ContinuationToken</code> for pagination of the list results.</p>
    #   @return [String]
    class ListNamespacesResponse < Struct.new(
      nil,
      :namespaces,
      :continuation_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute prefix
    #   <p>The prefix of the table buckets.</p>
    #   @return [String]
    # @!attribute continuation_token
    #   <p> <code>ContinuationToken</code> indicates to Amazon S3 that the list is being continued on this bucket with a token. <code>ContinuationToken</code> is obfuscated and is not a real key. You can use this <code>ContinuationToken</code> for pagination of the list results.</p>
    #   @return [String]
    # @!attribute max_buckets
    #   <p>The maximum number of table buckets to return in the list.</p>
    #   @return [Integer]
    # @!attribute type
    #   <p>The type of table buckets to filter by in the list.</p>
    #   @return [String]
    class ListTableBucketsRequest < Struct.new(
      nil,
      :prefix,
      :continuation_token,
      :max_buckets,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute table_buckets
    #   <p>A list of table buckets.</p>
    #   @return [Array<Types::TableBucketSummary>]
    # @!attribute continuation_token
    #   <p>You can use this <code>ContinuationToken</code> for pagination of the list results.</p>
    #   @return [String]
    class ListTableBucketsResponse < Struct.new(
      nil,
      :table_buckets,
      :continuation_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute table_bucket_arn
    #   <p>The Amazon resource Name (ARN) of the table bucket.</p>
    #   @return [String]
    # @!attribute namespace
    #   <p>The namespace of the tables.</p>
    #   @return [String]
    # @!attribute prefix
    #   <p>The prefix of the tables.</p>
    #   @return [String]
    # @!attribute continuation_token
    #   <p> <code>ContinuationToken</code> indicates to Amazon S3 that the list is being continued on this bucket with a token. <code>ContinuationToken</code> is obfuscated and is not a real key. You can use this <code>ContinuationToken</code> for pagination of the list results.</p>
    #   @return [String]
    # @!attribute max_tables
    #   <p>The maximum number of tables to return.</p>
    #   @return [Integer]
    class ListTablesRequest < Struct.new(
      nil,
      :table_bucket_arn,
      :namespace,
      :prefix,
      :continuation_token,
      :max_tables,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tables
    #   <p>A list of tables.</p>
    #   @return [Array<Types::TableSummary>]
    # @!attribute continuation_token
    #   <p>You can use this <code>ContinuationToken</code> for pagination of the list results.</p>
    #   @return [String]
    class ListTablesResponse < Struct.new(
      nil,
      :tables,
      :continuation_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon S3 Tables resource that you want to list tags for. The tagged resource can be a table bucket or a table. For a list of all S3 resources that support tagging, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/tagging.html#manage-tags">Managing tags for Amazon S3 resources</a>.</p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      nil,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>The user-defined tags that are applied to the resource. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/tagging.html">Tagging for cost allocation or attribute-based access control (ABAC)</a>.</p>
    #   @return [Hash<String, String>]
    class ListTagsForResourceResponse < Struct.new(
      nil,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about tables that are managed by S3 Tables, including replication information for replica tables.</p>
    # @!attribute replication_information
    #   <p>If this table is a replica, contains information about the source table from which it is replicated.</p>
    #   @return [Types::ReplicationInformation]
    class ManagedTableInformation < Struct.new(
      nil,
      :replication_information,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The requested operation is not allowed on this resource. This may occur when attempting to modify a resource that is managed by a service or has restrictions that prevent the operation.</p>
    # @!attribute message
    #   @return [String]
    class MethodNotAllowedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about a namespace.</p>
    # @!attribute namespace
    #   <p>The name of the namespace.</p>
    #   @return [Array<String>]
    # @!attribute created_at
    #   <p>The date and time the namespace was created at.</p>
    #   @return [Time]
    # @!attribute created_by
    #   <p>The ID of the account that created the namespace.</p>
    #   @return [String]
    # @!attribute owner_account_id
    #   <p>The ID of the account that owns the namespace.</p>
    #   @return [String]
    # @!attribute namespace_id
    #   <p>The system-assigned unique identifier for the namespace.</p>
    #   @return [String]
    # @!attribute table_bucket_id
    #   <p>The system-assigned unique identifier for the table bucket that contains this namespace.</p>
    #   @return [String]
    class NamespaceSummary < Struct.new(
      nil,
      :namespace,
      :created_at,
      :created_by,
      :owner_account_id,
      :namespace_id,
      :table_bucket_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request was rejected because the specified resource could not be found.</p>
    # @!attribute message
    #   @return [String]
    class NotFoundException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute table_bucket_arn
    #   <p>The Amazon Resource Name (ARN) of the table bucket.</p>
    #   @return [String]
    # @!attribute encryption_configuration
    #   <p>The encryption configuration to apply to the table bucket.</p>
    #   @return [Types::EncryptionConfiguration]
    class PutTableBucketEncryptionRequest < Struct.new(
      nil,
      :table_bucket_arn,
      :encryption_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute table_bucket_arn
    #   <p>The Amazon Resource Name (ARN) of the table bucket associated with the maintenance configuration.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the maintenance configuration.</p>
    #   @return [String]
    # @!attribute value
    #   <p>Defines the values of the maintenance configuration for the table bucket.</p>
    #   @return [Types::TableBucketMaintenanceConfigurationValue]
    class PutTableBucketMaintenanceConfigurationRequest < Struct.new(
      nil,
      :table_bucket_arn,
      :type,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute table_bucket_arn
    #   <p>The Amazon Resource Name (ARN) of the table bucket.</p>
    #   @return [String]
    class PutTableBucketMetricsConfigurationRequest < Struct.new(
      nil,
      :table_bucket_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute table_bucket_arn
    #   <p>The Amazon Resource Name (ARN) of the table bucket.</p>
    #   @return [String]
    # @!attribute resource_policy
    #   <p>The <code>JSON</code> that defines the policy.</p>
    #   @return [String]
    class PutTableBucketPolicyRequest < Struct.new(
      nil,
      :table_bucket_arn,
      :resource_policy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute table_bucket_arn
    #   <p>The Amazon Resource Name (ARN) of the source table bucket.</p>
    #   @return [String]
    # @!attribute version_token
    #   <p>A version token from a previous GetTableBucketReplication call. Use this token to ensure you're updating the expected version of the configuration.</p>
    #   @return [String]
    # @!attribute configuration
    #   <p>The replication configuration to apply, including the IAM role and replication rules.</p>
    #   @return [Types::TableBucketReplicationConfiguration]
    class PutTableBucketReplicationRequest < Struct.new(
      nil,
      :table_bucket_arn,
      :version_token,
      :configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute version_token
    #   <p>A new version token representing the updated replication configuration.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the replication configuration operation.</p>
    #   @return [String]
    class PutTableBucketReplicationResponse < Struct.new(
      nil,
      :version_token,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute table_bucket_arn
    #   <p>The Amazon Resource Name (ARN) of the table bucket.</p>
    #   @return [String]
    # @!attribute storage_class_configuration
    #   <p>The storage class configuration to apply to the table bucket. This configuration will serve as the default for new tables created in this bucket.</p>
    #   @return [Types::StorageClassConfiguration]
    class PutTableBucketStorageClassRequest < Struct.new(
      nil,
      :table_bucket_arn,
      :storage_class_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute table_bucket_arn
    #   <p>The Amazon Resource Name (ARN) of the table associated with the maintenance configuration.</p>
    #   @return [String]
    # @!attribute namespace
    #   <p>The namespace of the table.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the table.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the maintenance configuration.</p>
    #   @return [String]
    # @!attribute value
    #   <p>Defines the values of the maintenance configuration for the table.</p>
    #   @return [Types::TableMaintenanceConfigurationValue]
    class PutTableMaintenanceConfigurationRequest < Struct.new(
      nil,
      :table_bucket_arn,
      :namespace,
      :name,
      :type,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute table_bucket_arn
    #   <p>The Amazon Resource Name (ARN) of the table bucket that contains the table.</p>
    #   @return [String]
    # @!attribute namespace
    #   <p>The namespace associated with the table.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the table.</p>
    #   @return [String]
    # @!attribute resource_policy
    #   <p>The <code>JSON</code> that defines the policy.</p>
    #   @return [String]
    class PutTablePolicyRequest < Struct.new(
      nil,
      :table_bucket_arn,
      :namespace,
      :name,
      :resource_policy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute table_arn
    #   <p>The Amazon Resource Name (ARN) of the table.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The record expiration configuration to apply to the table, including the status (<code>enabled</code> or <code>disabled</code>) and retention period in days.</p>
    #   @return [Types::TableRecordExpirationConfigurationValue]
    class PutTableRecordExpirationConfigurationRequest < Struct.new(
      nil,
      :table_arn,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute table_arn
    #   <p>The Amazon Resource Name (ARN) of the source table.</p>
    #   @return [String]
    # @!attribute version_token
    #   <p>A version token from a previous GetTableReplication call. Use this token to ensure you're updating the expected version of the configuration.</p>
    #   @return [String]
    # @!attribute configuration
    #   <p>The replication configuration to apply to the table, including the IAM role and replication rules.</p>
    #   @return [Types::TableReplicationConfiguration]
    class PutTableReplicationRequest < Struct.new(
      nil,
      :table_arn,
      :version_token,
      :configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute version_token
    #   <p>A new version token representing the updated replication configuration.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the replication configuration operation.</p>
    #   @return [String]
    class PutTableReplicationResponse < Struct.new(
      nil,
      :version_token,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute table_bucket_arn
    #   <p>The Amazon Resource Name (ARN) of the table bucket. </p>
    #   @return [String]
    # @!attribute namespace
    #   <p>The namespace associated with the table. </p>
    #   @return [String]
    # @!attribute name
    #   <p>The current name of the table.</p>
    #   @return [String]
    # @!attribute new_namespace_name
    #   <p>The new name for the namespace.</p>
    #   @return [String]
    # @!attribute new_name
    #   <p>The new name for the table.</p>
    #   @return [String]
    # @!attribute version_token
    #   <p>The version token of the table.</p>
    #   @return [String]
    class RenameTableRequest < Struct.new(
      nil,
      :table_bucket_arn,
      :namespace,
      :name,
      :new_namespace_name,
      :new_name,
      :version_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies a destination table bucket for replication.</p>
    # @!attribute destination_table_bucket_arn
    #   <p>The Amazon Resource Name (ARN) of the destination table bucket where tables will be replicated.</p>
    #   @return [String]
    class ReplicationDestination < Struct.new(
      nil,
      :destination_table_bucket_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains status information for a replication destination, including the current replication state, last successful update, and any error messages.</p>
    # @!attribute replication_status
    #   <p>The current status of replication to this destination.</p>
    #   @return [String]
    # @!attribute destination_table_bucket_arn
    #   <p>The Amazon Resource Name (ARN) of the destination table bucket.</p>
    #   @return [String]
    # @!attribute destination_table_arn
    #   <p>The Amazon Resource Name (ARN) of the destination table.</p>
    #   @return [String]
    # @!attribute last_successful_replicated_update
    #   <p>Information about the most recent successful replication update to this destination.</p>
    #   @return [Types::LastSuccessfulReplicatedUpdate]
    # @!attribute failure_message
    #   <p>If replication has failed, this field contains an error message describing the failure reason.</p>
    #   @return [String]
    class ReplicationDestinationStatusModel < Struct.new(
      nil,
      :replication_status,
      :destination_table_bucket_arn,
      :destination_table_arn,
      :last_successful_replicated_update,
      :failure_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the source of a replicated table.</p>
    # @!attribute source_table_arn
    #   <p>The Amazon Resource Name (ARN) of the source table from which this table is replicated.</p>
    #   @return [String]
    class ReplicationInformation < Struct.new(
      nil,
      :source_table_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about a schema field.</p>
    # @!attribute id
    #   <p>An optional unique identifier for the schema field. Field IDs are used by Apache Iceberg to track schema evolution and maintain compatibility across schema changes. If not specified, S3 Tables automatically assigns field IDs.</p>
    #   @return [Integer]
    # @!attribute name
    #   <p>The name of the field.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The field type. S3 Tables supports all Apache Iceberg primitive types. For more information, see the <a href="https://iceberg.apache.org/spec/#primitive-types">Apache Iceberg documentation</a>.</p>
    #   @return [String]
    # @!attribute required
    #   <p>A Boolean value that specifies whether values are required for each row in this field. By default, this is <code>false</code> and null values are allowed in the field. If this is <code>true</code> the field does not allow null values.</p>
    #   @return [Boolean]
    class SchemaField < Struct.new(
      nil,
      :id,
      :name,
      :type,
      :required,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:required] = false unless options.key?(:required)
        super
      end
    end

    # <p>Contains details about a schema field in the V2 format. This field format supports nested and complex data types such as <code>struct</code>, <code>list</code>, and <code>map</code>, in addition to primitive types.</p>
    # @!attribute id
    #   <p>The unique identifier for the schema field. Field IDs are used by Apache Iceberg to track schema evolution and maintain compatibility across schema changes.</p>
    #   @return [Integer]
    # @!attribute name
    #   <p>The name of the field.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The data type of the field. This can be a primitive type string such as <code>boolean</code>, <code>int</code>, <code>long</code>, <code>float</code>, <code>double</code>, <code>string</code>, <code>binary</code>, <code>date</code>, <code>timestamp</code>, or <code>timestamptz</code>, or a complex type represented as a JSON object for nested types such as <code>struct</code>, <code>list</code>, or <code>map</code>. For more information, see the <a href="https://iceberg.apache.org/spec/#schemas-and-data-types">Apache Iceberg schemas and data types documentation</a>.</p>
    #   @return [JSON]
    # @!attribute required
    #   <p>A Boolean value that specifies whether values are required for each row in this field. If this is <code>true</code>, the field does not allow null values.</p>
    #   @return [Boolean]
    # @!attribute doc
    #   <p>An optional description of the field.</p>
    #   @return [String]
    class SchemaV2Field < Struct.new(
      nil,
      :id,
      :name,
      :type,
      :required,
      :doc,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration details for the storage class of tables or table buckets. This allows you to optimize storage costs by selecting the appropriate storage class based on your access patterns and performance requirements.</p>
    # @!attribute storage_class
    #   <p>The storage class for the table or table bucket. Valid values include storage classes optimized for different access patterns and cost profiles.</p>
    #   @return [String]
    class StorageClassConfiguration < Struct.new(
      nil,
      :storage_class,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about the values that define the maintenance configuration for a table bucket.</p>
    # @!attribute status
    #   <p>The status of the maintenance configuration.</p>
    #   @return [String]
    # @!attribute settings
    #   <p>Contains details about the settings of the maintenance configuration.</p>
    #   @return [Types::TableBucketMaintenanceSettings]
    class TableBucketMaintenanceConfigurationValue < Struct.new(
      nil,
      :status,
      :settings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about the maintenance settings for the table bucket.</p>
    # @!attribute iceberg_unreferenced_file_removal
    #   <p>The unreferenced file removal settings for the table bucket.</p>
    #   @return [Types::IcebergUnreferencedFileRemovalSettings]
    class TableBucketMaintenanceSettings < Struct.new(
      :iceberg_unreferenced_file_removal,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class IcebergUnreferencedFileRemoval < TableBucketMaintenanceSettings; end
      class Unknown < TableBucketMaintenanceSettings; end
    end

    # <p>The replication configuration for a table bucket. This configuration defines how tables in the source bucket are replicated to destination table buckets, including the IAM role used for replication.</p>
    # @!attribute role
    #   <p>The Amazon Resource Name (ARN) of the IAM role that S3 Tables assumes to replicate tables on your behalf.</p>
    #   @return [String]
    # @!attribute rules
    #   <p>An array of replication rules that define which tables to replicate and where to replicate them.</p>
    #   @return [Array<Types::TableBucketReplicationRule>]
    class TableBucketReplicationConfiguration < Struct.new(
      nil,
      :role,
      :rules,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines a rule for replicating tables from a source table bucket to one or more destination table buckets.</p>
    # @!attribute destinations
    #   <p>An array of destination table buckets where tables should be replicated.</p>
    #   @return [Array<Types::ReplicationDestination>]
    class TableBucketReplicationRule < Struct.new(
      nil,
      :destinations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about a table bucket.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the table bucket.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the table bucket.</p>
    #   @return [String]
    # @!attribute owner_account_id
    #   <p>The ID of the account that owns the table bucket.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time the table bucket was created at.</p>
    #   @return [Time]
    # @!attribute table_bucket_id
    #   <p>The system-assigned unique identifier for the table bucket.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the table bucket.</p>
    #   @return [String]
    class TableBucketSummary < Struct.new(
      nil,
      :arn,
      :name,
      :owner_account_id,
      :created_at,
      :table_bucket_id,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The values that define a maintenance configuration for a table.</p>
    # @!attribute status
    #   <p>The status of the maintenance configuration.</p>
    #   @return [String]
    # @!attribute settings
    #   <p>Contains details about the settings for the maintenance configuration.</p>
    #   @return [Types::TableMaintenanceSettings]
    class TableMaintenanceConfigurationValue < Struct.new(
      nil,
      :status,
      :settings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about the status of a maintenance job.</p>
    # @!attribute status
    #   <p>The status of the job.</p>
    #   @return [String]
    # @!attribute last_run_timestamp
    #   <p>The date and time that the maintenance job was last run.</p>
    #   @return [Time]
    # @!attribute failure_message
    #   <p>The failure message of a failed job.</p>
    #   @return [String]
    class TableMaintenanceJobStatusValue < Struct.new(
      nil,
      :status,
      :last_run_timestamp,
      :failure_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about maintenance settings for the table.</p>
    # @!attribute iceberg_compaction
    #   <p>Contains details about the Iceberg compaction settings for the table.</p>
    #   @return [Types::IcebergCompactionSettings]
    # @!attribute iceberg_snapshot_management
    #   <p>Contains details about the Iceberg snapshot management settings for the table.</p>
    #   @return [Types::IcebergSnapshotManagementSettings]
    class TableMaintenanceSettings < Struct.new(
      :iceberg_compaction,
      :iceberg_snapshot_management,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class IcebergCompaction < TableMaintenanceSettings; end
      class IcebergSnapshotManagement < TableMaintenanceSettings; end
      class Unknown < TableMaintenanceSettings; end
    end

    # <p>Contains details about the table metadata.</p>
    # @!attribute iceberg
    #   <p>Contains details about the metadata of an Iceberg table.</p>
    #   @return [Types::IcebergMetadata]
    class TableMetadata < Struct.new(
      :iceberg,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Iceberg < TableMetadata; end
      class Unknown < TableMetadata; end
    end

    # <p>The expiration configuration settings for records in a table, and the status of the configuration. If the status of the configuration is enabled, records expire and are automatically removed after the number of days specified in the record expiration settings for the table.</p>
    # @!attribute status
    #   <p>The status of the expiration settings for records in the table.</p>
    #   @return [String]
    # @!attribute settings
    #   <p>The expiration settings for records in the table.</p>
    #   @return [Types::TableRecordExpirationSettings]
    class TableRecordExpirationConfigurationValue < Struct.new(
      nil,
      :status,
      :settings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Provides metrics for the record expiration job that most recently ran for a table. The metrics provide insight into the amount of data that was removed when the job ran.</p>
    # @!attribute deleted_data_files
    #   <p>The total number of data files that were removed when the job ran.</p>
    #   @return [Integer]
    # @!attribute deleted_records
    #   <p>The total number of records that were removed when the job ran.</p>
    #   @return [Integer]
    # @!attribute removed_files_size
    #   <p>The total size (in bytes) of the data files that were removed when the job ran.</p>
    #   @return [Integer]
    class TableRecordExpirationJobMetrics < Struct.new(
      nil,
      :deleted_data_files,
      :deleted_records,
      :removed_files_size,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The record expiration setting that specifies when records expire and are automatically removed from a table.</p>
    # @!attribute days
    #   <p>If you enable record expiration for a table, you can specify the number of days to retain your table records. For example, to retain your table records for one year, set this value to <code>365</code>.</p>
    #   @return [Integer]
    class TableRecordExpirationSettings < Struct.new(
      nil,
      :days,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The replication configuration for an individual table. This configuration defines how the table is replicated to destination tables.</p>
    # @!attribute role
    #   <p>The Amazon Resource Name (ARN) of the IAM role that S3 Tables assumes to replicate the table on your behalf.</p>
    #   @return [String]
    # @!attribute rules
    #   <p>An array of replication rules that define where this table should be replicated.</p>
    #   @return [Array<Types::TableReplicationRule>]
    class TableReplicationConfiguration < Struct.new(
      nil,
      :role,
      :rules,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines a rule for replicating a table to one or more destination tables.</p>
    # @!attribute destinations
    #   <p>An array of destination table buckets where this table should be replicated.</p>
    #   @return [Array<Types::ReplicationDestination>]
    class TableReplicationRule < Struct.new(
      nil,
      :destinations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about a table.</p>
    # @!attribute namespace
    #   <p>The name of the namespace.</p>
    #   @return [Array<String>]
    # @!attribute name
    #   <p>The name of the table.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the table.</p>
    #   @return [String]
    # @!attribute table_arn
    #   <p>The Amazon Resource Name (ARN) of the table.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time the table was created at.</p>
    #   @return [Time]
    # @!attribute modified_at
    #   <p>The date and time the table was last modified at.</p>
    #   @return [Time]
    # @!attribute managed_by_service
    #   <p>The Amazon Web Services service managing this table, if applicable. For example, a replicated table is managed by the S3 Tables replication service.</p>
    #   @return [String]
    # @!attribute namespace_id
    #   <p>The unique identifier for the namespace that contains this table.</p>
    #   @return [String]
    # @!attribute table_bucket_id
    #   <p>The unique identifier for the table bucket that contains this table.</p>
    #   @return [String]
    class TableSummary < Struct.new(
      nil,
      :namespace,
      :name,
      :type,
      :table_arn,
      :created_at,
      :modified_at,
      :managed_by_service,
      :namespace_id,
      :table_bucket_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon S3 Tables resource that you're applying tags to. The tagged resource can be a table bucket or a table. For a list of all S3 resources that support tagging, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/tagging.html#manage-tags">Managing tags for Amazon S3 resources</a>.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The user-defined tag that you want to add to the specified S3 Tables resource. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/tagging.html">Tagging for cost allocation or attribute-based access control (ABAC)</a>.</p>
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

    # <p>The limit on the number of requests per second was exceeded.</p>
    # @!attribute message
    #   @return [String]
    class TooManyRequestsException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon S3 Tables resource that you're removing tags from. The tagged resource can be a table bucket or a table. For a list of all S3 resources that support tagging, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/tagging.html#manage-tags">Managing tags for Amazon S3 resources</a>.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>The array of tag keys that you're removing from the S3 Tables resource. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/tagging.html">Tagging for cost allocation or attribute-based access control (ABAC)</a>.</p>
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

    # @!attribute table_bucket_arn
    #   <p>The Amazon Resource Name (ARN) of the table bucket. </p>
    #   @return [String]
    # @!attribute namespace
    #   <p>The namespace of the table.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the table.</p>
    #   @return [String]
    # @!attribute version_token
    #   <p>The version token of the table. </p>
    #   @return [String]
    # @!attribute metadata_location
    #   <p>The new metadata location for the table. </p>
    #   @return [String]
    class UpdateTableMetadataLocationRequest < Struct.new(
      nil,
      :table_bucket_arn,
      :namespace,
      :name,
      :version_token,
      :metadata_location,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the table.</p>
    #   @return [String]
    # @!attribute table_arn
    #   <p>The Amazon Resource Name (ARN) of the table.</p>
    #   @return [String]
    # @!attribute namespace
    #   <p>The namespace the table is associated with.</p>
    #   @return [Array<String>]
    # @!attribute version_token
    #   <p>The version token of the table.</p>
    #   @return [String]
    # @!attribute metadata_location
    #   <p>The metadata location of the table.</p>
    #   @return [String]
    class UpdateTableMetadataLocationResponse < Struct.new(
      nil,
      :name,
      :table_arn,
      :namespace,
      :version_token,
      :metadata_location,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
