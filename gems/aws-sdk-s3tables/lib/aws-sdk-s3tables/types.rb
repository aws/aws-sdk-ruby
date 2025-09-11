# frozen_string_literal: true

# This is generated code!

module Aws::S3Tables
  # This module contains the types returned by client operations.
  module Types

    # <p>The action cannot be performed because you do not have the required permission.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request is invalid or malformed.</p>
    # @!attribute message
    #   @return [String]
    class BadRequestException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request failed because there is a conflict with a previous write. You can retry the request.</p>
    # @!attribute message
    #   @return [String]
    class ConflictException < Struct.new(
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
    class CreateTableBucketRequest < Struct.new(
      :name,
      :encryption_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the table bucket.</p>
    #   @return [String]
    class CreateTableBucketResponse < Struct.new(
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
    class CreateTableRequest < Struct.new(
      :table_bucket_arn,
      :namespace,
      :name,
      :format,
      :metadata,
      :encryption_configuration,
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
      :table_bucket_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute table_bucket_arn
    #   <p>The Amazon Resource Name (ARN) of the table bucket.</p>
    #   @return [String]
    class DeleteTableBucketPolicyRequest < Struct.new(
      :table_bucket_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute table_bucket_arn
    #   <p>The Amazon Resource Name (ARN) of the table bucket.</p>
    #   @return [String]
    class DeleteTableBucketRequest < Struct.new(
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
      :table_bucket_arn,
      :namespace,
      :name,
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
      :table_bucket_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute encryption_configuration
    #   <p>The encryption configuration for the table bucket.</p>
    #   @return [Types::EncryptionConfiguration]
    class GetTableBucketEncryptionResponse < Struct.new(
      :encryption_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute table_bucket_arn
    #   <p>The Amazon Resource Name (ARN) of the table bucket associated with the maintenance configuration.</p>
    #   @return [String]
    class GetTableBucketMaintenanceConfigurationRequest < Struct.new(
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
      :table_bucket_arn,
      :configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute table_bucket_arn
    #   <p>The Amazon Resource Name (ARN) of the table bucket.</p>
    #   @return [String]
    class GetTableBucketPolicyRequest < Struct.new(
      :table_bucket_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_policy
    #   <p>The <code>JSON</code> that defines the policy.</p>
    #   @return [String]
    class GetTableBucketPolicyResponse < Struct.new(
      :resource_policy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute table_bucket_arn
    #   <p>The Amazon Resource Name (ARN) of the table bucket.</p>
    #   @return [String]
    class GetTableBucketRequest < Struct.new(
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
    #   <p>The Amazon Resource Name (ARN) of the table bucket containing the table.</p>
    #   @return [String]
    # @!attribute namespace
    #   <p>The namespace associated with the table.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the table.</p>
    #   @return [String]
    class GetTableEncryptionRequest < Struct.new(
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
    #   <p>The name of the maintenance job.</p>
    #   @return [String]
    class GetTableMaintenanceJobStatusRequest < Struct.new(
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
      :resource_policy,
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
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:namespace_id] = nil unless options.key?(:namespace_id)
        super
      end
    end

    # <p>Contains details about the compaction settings for an Iceberg table.</p>
    # @!attribute target_file_size_mb
    #   <p>The target file size for the table in MB.</p>
    #   @return [Integer]
    # @!attribute strategy
    #   <p>The compaction strategy to use for the table. This determines how files are selected and combined during compaction operations.</p>
    #   @return [String]
    class IcebergCompactionSettings < Struct.new(
      :target_file_size_mb,
      :strategy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about the metadata for an Iceberg table.</p>
    # @!attribute schema
    #   <p>The schema for an Iceberg table.</p>
    #   @return [Types::IcebergSchema]
    class IcebergMetadata < Struct.new(
      :schema,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about the schema for an Iceberg table.</p>
    # @!attribute fields
    #   <p>The schema fields for the table</p>
    #   @return [Array<Types::SchemaField>]
    class IcebergSchema < Struct.new(
      :fields,
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
      :min_snapshots_to_keep,
      :max_snapshot_age_hours,
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
      :message,
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
      :tables,
      :continuation_token,
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
    # @!attribute resource_policy
    #   <p>The <code>JSON</code> that defines the policy.</p>
    #   @return [String]
    class PutTableBucketPolicyRequest < Struct.new(
      :table_bucket_arn,
      :resource_policy,
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
    #   <p>The name of the maintenance configuration.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the maintenance configuration.</p>
    #   @return [String]
    # @!attribute value
    #   <p>Defines the values of the maintenance configuration for the table.</p>
    #   @return [Types::TableMaintenanceConfigurationValue]
    class PutTableMaintenanceConfigurationRequest < Struct.new(
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
      :table_bucket_arn,
      :namespace,
      :name,
      :resource_policy,
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

    # <p>Contains details about a schema field.</p>
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

    # <p>Details about the values that define the maintenance configuration for a table bucket.</p>
    # @!attribute status
    #   <p>The status of the maintenance configuration.</p>
    #   @return [String]
    # @!attribute settings
    #   <p>Contains details about the settings of the maintenance configuration.</p>
    #   @return [Types::TableBucketMaintenanceSettings]
    class TableBucketMaintenanceConfigurationValue < Struct.new(
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

    # <p>Contains the values that define a maintenance configuration for a table.</p>
    # @!attribute status
    #   <p>The status of the maintenance configuration.</p>
    #   @return [String]
    # @!attribute settings
    #   <p>Contains details about the settings for the maintenance configuration.</p>
    #   @return [Types::TableMaintenanceSettings]
    class TableMaintenanceConfigurationValue < Struct.new(
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
    # @!attribute namespace_id
    #   <p>The unique identifier for the namespace that contains this table.</p>
    #   @return [String]
    # @!attribute table_bucket_id
    #   <p>The unique identifier for the table bucket that contains this table.</p>
    #   @return [String]
    class TableSummary < Struct.new(
      :namespace,
      :name,
      :type,
      :table_arn,
      :created_at,
      :modified_at,
      :namespace_id,
      :table_bucket_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The limit on the number of requests per second was exceeded.</p>
    # @!attribute message
    #   @return [String]
    class TooManyRequestsException < Struct.new(
      :message,
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
