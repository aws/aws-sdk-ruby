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

    # @!attribute [rw] table_arn
    #   The Amazon Resource Name (ARN) of the migrated table to complete the
    #   migration of.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/CompleteTableMigrationRequest AWS API Documentation
    #
    class CompleteTableMigrationRequest < Struct.new(
      :table_arn)
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

    # The maintenance settings and migration policies for the destination
    # table.
    #
    # @!attribute [rw] maintenance_settings
    #   The maintenance settings for the destination table. The migration
    #   applies them when it creates the table: snapshot management starts
    #   then, and compaction starts after you complete the migration. If you
    #   don't specify a setting, the migration uses its default: a target
    #   file size of 512 MB, the binpack compaction strategy, at least 3
    #   snapshots, and a maximum snapshot age of 120 hours. Unreferenced
    #   file removal follows the table bucket's configuration after you
    #   complete the migration.
    #   @return [Types::MaintenanceSettings]
    #
    # @!attribute [rw] migration_policies
    #   The policies for source data that doesn't fit the destination
    #   schema.
    #   @return [Types::MigrationPolicies]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/DataMigrationOverview AWS API Documentation
    #
    class DataMigrationOverview < Struct.new(
      :maintenance_settings,
      :migration_policies)
      SENSITIVE = []
      include Aws::Structure
    end

    # The maintenance settings and migration policies for the destination
    # table.
    #
    # @!attribute [rw] maintenance_settings
    #   The maintenance settings for the destination table. The migration
    #   applies them when it creates the table: snapshot management starts
    #   then, and compaction starts after you complete the migration. If you
    #   don't specify a setting, the migration uses its default: a target
    #   file size of 512 MB, the binpack compaction strategy, at least 3
    #   snapshots, and a maximum snapshot age of 120 hours. Unreferenced
    #   file removal follows the table bucket's configuration after you
    #   complete the migration.
    #   @return [Types::MaintenanceSettings]
    #
    # @!attribute [rw] migration_policies
    #   The policies for source data that doesn't fit the destination
    #   schema.
    #   @return [Types::MigrationPolicies]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/DataMigrationSettings AWS API Documentation
    #
    class DataMigrationSettings < Struct.new(
      :maintenance_settings,
      :migration_policies)
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

    # The table that a migration creates in a table bucket and migrates the
    # source into.
    #
    # @!attribute [rw] table_bucket_arn
    #   The Amazon Resource Name (ARN) of the table bucket to create the
    #   table in.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace to create the table in.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the table to create.
    #   @return [String]
    #
    # @!attribute [rw] encryption_configuration
    #   The encryption configuration for the table. If you don't specify
    #   one, the table uses the default encryption configuration of its
    #   table bucket. If you specify an encryption configuration, the
    #   migration role must have the `s3tables:PutTableEncryption`
    #   permission. If you choose SSE-KMS, the migration role must have the
    #   `kms:DescribeKey`, `kms:GenerateDataKey` and `kms:Decrypt`
    #   permissions on the KMS key, and the S3 Tables maintenance principal
    #   must have access to it. For more information, see [Permissions
    #   requirements for S3 Tables SSE-KMS encryption][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-tables-kms-permissions.html
    #   @return [Types::EncryptionConfiguration]
    #
    # @!attribute [rw] storage_class_configuration
    #   The storage class configuration for the table. If you don't specify
    #   one, the table inherits the storage class configuration of its table
    #   bucket. If you specify a storage class configuration, the migration
    #   role must have the `s3tables:PutTableStorageClass` permission.
    #   @return [Types::StorageClassConfiguration]
    #
    # @!attribute [rw] tags
    #   The tags to add to the table. A tag is a key-value pair that you
    #   apply to your resources. For more information, see [Tagging for cost
    #   allocation or attribute-based access control (ABAC)][1]. If you
    #   specify tags, the migration role must have the
    #   `s3tables:TagResource` permission.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/tagging.html
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] properties
    #   The properties of the destination table, such as its Iceberg format
    #   version and the format of its data files.
    #   @return [Types::MigrationTableProperties]
    #
    # @!attribute [rw] schema
    #   The schema of the table to create. If you don't specify a schema,
    #   the migration infers it from the source table, with every column
    #   optional. A schema that you specify must include every partition
    #   column of the source table. It can leave out other columns only if
    #   `unmatchedSourceFieldsPolicy` is `drop`. A struct column must have
    #   the same fields as the source column. Column default values aren't
    #   supported. If you mark a column as required, every source object
    #   must have a value for it: an object with a null value in a required
    #   column fails to migrate. The destination table is partitioned in the
    #   same way as the source table. To specify fields in
    #   `icebergSortOrder`, you must specify a schema.
    #   @return [Types::IcebergSchemaV2]
    #
    # @!attribute [rw] iceberg_sort_order
    #   The sort order of the rows within each data file that the migration
    #   writes. A sort order can have up to five fields, each naming a
    #   column of the schema that you specify by its field ID, so to use a
    #   sort order you must specify a schema. `StartTableMigration` rejects
    #   a field that names no column of the schema, or whose transform
    #   doesn't fit the column's type.
    #   @return [Types::IcebergSortOrder]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/DestinationTable AWS API Documentation
    #
    class DestinationTable < Struct.new(
      :table_bucket_arn,
      :namespace,
      :name,
      :encryption_configuration,
      :storage_class_configuration,
      :tags,
      :properties,
      :schema,
      :iceberg_sort_order)
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

    # @!attribute [rw] migration_id
    #   The ID of the migration to get. Specify either `migrationId` or
    #   `tableARN`, not both.
    #   @return [String]
    #
    # @!attribute [rw] table_arn
    #   The Amazon Resource Name (ARN) of the destination table. Gets the
    #   table's most recent migration. Specify either `tableARN` or
    #   `migrationId`, not both.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/GetTableMigrationRequest AWS API Documentation
    #
    class GetTableMigrationRequest < Struct.new(
      :migration_id,
      :table_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] migration_id
    #   The ID of the migration.
    #   @return [String]
    #
    # @!attribute [rw] table_bucket_arn
    #   The Amazon Resource Name (ARN) of the table bucket that contains the
    #   destination table.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace of the destination table.
    #   @return [String]
    #
    # @!attribute [rw] table_arn
    #   The Amazon Resource Name (ARN) of the destination table, once the
    #   migration creates it.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the destination table.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the migration. Valid values:
    #
    #   * `start` - A migration that `StartTableMigration` started.
    #
    #   * `sync` - A migration that `SyncTableMigration` started.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the migration. Valid values:
    #
    #   * `new` - S3 Tables accepted the request.
    #
    #   * `planning` - The migration is checking the source table, its
    #     objects and the destination for compatibility, and writing the
    #     compatibility reports.
    #
    #   * `pendingReview` - Planning finished, and the migration waits for
    #     you to continue or cancel it with `UpdateTableMigration`.
    #
    #   * `queued` - The migration is waiting to start migrating data.
    #
    #   * `migrating` - The migration is running the plan from the
    #     `planning` state: it copies data and commits it to the destination
    #     table. A migration reaches this state only if `hasValidPlan` is
    #     `true`.
    #
    #   * `succeeded` - Every planned object migrated.
    #
    #   * `failed` - The migration failed. Check `failureReason` for the
    #     cause.
    #
    #   * `cancelling` - You cancelled the migration, and it is finishing
    #     the work in progress.
    #
    #   * `cancelled` - The migration is cancelled.
    #
    #   A migration ends in the `succeeded`, `failed` or `cancelled` state.
    #   You can cancel it until it ends.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that the migration
    #   uses.
    #   @return [String]
    #
    # @!attribute [rw] review_migration_plan
    #   A Boolean value that specifies whether the migration waits in the
    #   `pendingReview` state, so that you can review the compatibility
    #   reports before it migrates any data.
    #   @return [Boolean]
    #
    # @!attribute [rw] has_valid_plan
    #   A Boolean value that specifies whether planning produced a plan that
    #   the migration can run. If planning hasn't finished, this value
    #   isn't returned.
    #   @return [Boolean]
    #
    # @!attribute [rw] created_at
    #   The date and time that the migration was created.
    #   @return [Time]
    #
    # @!attribute [rw] state_updated_at
    #   The date and time that the migration's state last changed.
    #   @return [Time]
    #
    # @!attribute [rw] failure_reason
    #   The reason that the migration failed. The code names the cause, such
    #   as a migration role that S3 Tables can't assume or an Amazon Web
    #   Services Glue table that doesn't exist, or the report that lists
    #   the findings. This value is returned only when the migration is in
    #   the `failed` state.
    #   @return [Types::MigrationFailureReason]
    #
    # @!attribute [rw] planning_stats
    #   Statistics about the source and the partitions in the migration.
    #   This value is returned after planning finishes.
    #   @return [Types::PlanningStats]
    #
    # @!attribute [rw] migration_stats
    #   The number of objects that migrated, failed or are pending. These
    #   counts are set when planning finishes and updated when the migration
    #   ends.
    #   @return [Types::MigrationStats]
    #
    # @!attribute [rw] source_type
    #   The type of the migration's source.
    #   @return [String]
    #
    # @!attribute [rw] source
    #   The source table of the migration.
    #   @return [Types::SourceConfiguration]
    #
    # @!attribute [rw] data_migration
    #   The maintenance settings and migration policies for the destination
    #   table.
    #   @return [Types::DataMigrationOverview]
    #
    # @!attribute [rw] migration_output
    #   The bucket and prefixes for the migration's reports, and the
    #   location of each report once it is written.
    #   @return [Types::MigrationOutputOverview]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/GetTableMigrationResponse AWS API Documentation
    #
    class GetTableMigrationResponse < Struct.new(
      :migration_id,
      :table_bucket_arn,
      :namespace,
      :table_arn,
      :name,
      :type,
      :state,
      :role_arn,
      :review_migration_plan,
      :has_valid_plan,
      :created_at,
      :state_updated_at,
      :failure_reason,
      :planning_stats,
      :migration_stats,
      :source_type,
      :source,
      :data_migration,
      :migration_output)
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

    # An Amazon Web Services Glue Data Catalog table to migrate. The table
    # must be an external Apache Hive table whose data is stored as Parquet
    # in a general purpose bucket in the same account and Region as the
    # table bucket. Views, transactional (ACID) tables, tables in an open
    # table format such as Apache Iceberg, and tables registered with Amazon
    # Web Services Lake Formation can't be migrated. If the table can't be
    # migrated, the migration fails, and the table compatibility report
    # lists the reason.
    #
    # @!attribute [rw] catalog_id
    #   The ID of the Data Catalog that contains the table. It must be your
    #   account ID.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The name of the database that contains the table.
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   The name of the table.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/GlueTableSource AWS API Documentation
    #
    class GlueTableSource < Struct.new(
      :catalog_id,
      :database_name,
      :table_name)
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
    #   The schema for an Iceberg table. Use this property to define table
    #   schemas with primitive types only. For schemas that include nested
    #   or complex types such as `struct`, `list`, or `map`, use `schemaV2`
    #   instead.
    #   @return [Types::IcebergSchema]
    #
    # @!attribute [rw] schema_v2
    #   The schema for an Iceberg table using the V2 format. Use this
    #   property to define table schemas that include nested or complex data
    #   types such as `struct`, `list`, or `map`, in addition to primitive
    #   types. For schemas with only primitive types, you can use either
    #   `schema` or `schemaV2`.
    #   @return [Types::IcebergSchemaV2]
    #
    # @!attribute [rw] partition_spec
    #   The partition specification for the Iceberg table. Partitioning
    #   organizes data into separate files based on the values of one or
    #   more fields, which can improve query performance by reducing the
    #   amount of data scanned. Each partition field applies a transform
    #   (such as identity, year, month, or bucket) to a single field.
    #   @return [Types::IcebergPartitionSpec]
    #
    # @!attribute [rw] write_order
    #   The sort order for the Iceberg table. Sort order defines how data is
    #   sorted within data files, which can improve query performance by
    #   enabling more efficient data skipping and filtering.
    #   @return [Types::IcebergSortOrder]
    #
    # @!attribute [rw] properties
    #   A map of custom configuration properties for the Iceberg table.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/IcebergMetadata AWS API Documentation
    #
    class IcebergMetadata < Struct.new(
      :schema,
      :schema_v2,
      :partition_spec,
      :write_order,
      :properties)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines a single partition field in an Iceberg partition
    # specification.
    #
    # @!attribute [rw] source_id
    #   The ID of the source schema field to partition by. This must
    #   reference a valid field ID from the table schema.
    #   @return [Integer]
    #
    # @!attribute [rw] transform
    #   The partition transform to apply to the source field. Supported
    #   transforms include `identity`, `year`, `month`, `day`, `hour`,
    #   `bucket`, and `truncate`. For more information, see the [Apache
    #   Iceberg partition transforms documentation][1].
    #
    #
    #
    #   [1]: https://iceberg.apache.org/spec/#partition-transforms
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name for this partition field. This name is used in the
    #   partitioned file paths.
    #   @return [String]
    #
    # @!attribute [rw] field_id
    #   An optional unique identifier for this partition field. If not
    #   specified, S3 Tables automatically assigns a field ID.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/IcebergPartitionField AWS API Documentation
    #
    class IcebergPartitionField < Struct.new(
      :source_id,
      :transform,
      :name,
      :field_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines how data in an Iceberg table is partitioned. Partitioning
    # helps optimize query performance by organizing data into separate
    # files based on field values. Each partition field specifies a
    # transform to apply to a source field.
    #
    # @!attribute [rw] fields
    #   The list of partition fields that define how the table data is
    #   partitioned. Each field specifies a source field and a transform to
    #   apply. This field is required if `partitionSpec` is provided.
    #   @return [Array<Types::IcebergPartitionField>]
    #
    # @!attribute [rw] spec_id
    #   The unique identifier for this partition specification. If not
    #   specified, defaults to `0`.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/IcebergPartitionSpec AWS API Documentation
    #
    class IcebergPartitionSpec < Struct.new(
      :fields,
      :spec_id)
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

    # Contains details about the schema for an Iceberg table using the V2
    # format. This schema format supports nested and complex data types such
    # as `struct`, `list`, and `map`, in addition to primitive types.
    #
    # @!attribute [rw] type
    #   The type of the top-level schema, which is always a `struct` type as
    #   defined in the [Apache Iceberg specification][1]. This value must be
    #   `struct`.
    #
    #
    #
    #   [1]: https://iceberg.apache.org/spec/#schemas-and-data-types
    #   @return [String]
    #
    # @!attribute [rw] fields
    #   The schema fields for the table. Each field defines a column in the
    #   table, including its name, type, and whether it is required.
    #   @return [Array<Types::SchemaV2Field>]
    #
    # @!attribute [rw] schema_id
    #   An optional unique identifier for the schema. Schema IDs are used by
    #   Apache Iceberg to track schema evolution.
    #   @return [Integer]
    #
    # @!attribute [rw] identifier_field_ids
    #   A list of field IDs that are used as the identifier fields for the
    #   table. Identifier fields uniquely identify a row in the table.
    #   @return [Array<Integer>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/IcebergSchemaV2 AWS API Documentation
    #
    class IcebergSchemaV2 < Struct.new(
      :type,
      :fields,
      :schema_id,
      :identifier_field_ids)
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

    # Defines a single sort field in an Iceberg sort order specification.
    #
    # @!attribute [rw] source_id
    #   The ID of the source schema field to sort by. This must reference a
    #   valid field ID from the table schema.
    #   @return [Integer]
    #
    # @!attribute [rw] transform
    #   The transform to apply to the source field before sorting. Use
    #   `identity` to sort by the field value directly, or specify other
    #   transforms as needed.
    #   @return [String]
    #
    # @!attribute [rw] direction
    #   The sort direction. Valid values are `asc` for ascending order or
    #   `desc` for descending order.
    #   @return [String]
    #
    # @!attribute [rw] null_order
    #   Specifies how null values are ordered. Valid values are
    #   `nulls-first` to place nulls before non-null values, or `nulls-last`
    #   to place nulls after non-null values.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/IcebergSortField AWS API Documentation
    #
    class IcebergSortField < Struct.new(
      :source_id,
      :transform,
      :direction,
      :null_order)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines the sort order for data within an Iceberg table. Sorting data
    # can improve query performance by enabling more efficient data
    # skipping.
    #
    # @!attribute [rw] order_id
    #   The unique identifier for this sort order. If not specified,
    #   defaults to `1`. The order ID is used by Apache Iceberg to track
    #   sort order evolution.
    #   @return [Integer]
    #
    # @!attribute [rw] fields
    #   The list of sort fields that define how data is sorted within files.
    #   Each field specifies a source field, sort direction, and null
    #   ordering. This field is required if `writeOrder` is provided.
    #   @return [Array<Types::IcebergSortField>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/IcebergSortOrder AWS API Documentation
    #
    class IcebergSortOrder < Struct.new(
      :order_id,
      :fields)
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
    #   The Amazon Resource Name (ARN) of the table bucket to list
    #   migrations for.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace to list migrations for. Requires `tableBucketARN`.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the table to list migrations for. Requires
    #   `tableBucketARN` and `namespace`.
    #   @return [String]
    #
    # @!attribute [rw] table_arn
    #   The Amazon Resource Name (ARN) of the table to list migrations for.
    #   The list includes the migrations into this table. To also list
    #   migrations into an earlier table of the same name, specify
    #   `tableBucketARN`, `namespace` and `name` instead. Specify either
    #   `tableARN` or `tableBucketARN`, not both.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state to filter the list by. For the valid values, see the
    #   `state` member of `GetTableMigration`.
    #   @return [String]
    #
    # @!attribute [rw] has_valid_plan
    #   The `hasValidPlan` value to filter the list by. Migrations that are
    #   still planning aren't listed, whichever value you specify.
    #   @return [Boolean]
    #
    # @!attribute [rw] max_results
    #   The maximum number of migrations to return, from 1 to 1,000. If you
    #   don't specify a value, the default is 100.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` from a previous response, to get the next page of
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/ListTableMigrationsRequest AWS API Documentation
    #
    class ListTableMigrationsRequest < Struct.new(
      :table_bucket_arn,
      :namespace,
      :name,
      :table_arn,
      :state,
      :has_valid_plan,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] migrations
    #   The migrations, newest first.
    #   @return [Array<Types::MigrationSummary>]
    #
    # @!attribute [rw] next_token
    #   A token to pass as `nextToken` to get the next page of results. If
    #   there are no more results, this value isn't returned.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/ListTableMigrationsResponse AWS API Documentation
    #
    class ListTableMigrationsResponse < Struct.new(
      :migrations,
      :next_token)
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

    # The maintenance settings for the destination table. The migration
    # applies them when it creates the table: snapshot management starts
    # then, and compaction starts after you complete the migration. If you
    # don't specify a setting, the migration uses its default: a target
    # file size of 512 MB, the binpack compaction strategy, at least 3
    # snapshots, and a maximum snapshot age of 120 hours. Unreferenced file
    # removal follows the table bucket's configuration after you complete
    # the migration.
    #
    # @!attribute [rw] iceberg_compaction
    #   The compaction settings.
    #   @return [Types::MigrationCompactionSettings]
    #
    # @!attribute [rw] iceberg_snapshot_management
    #   The snapshot management settings.
    #   @return [Types::MigrationSnapshotManagementSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/MaintenanceSettings AWS API Documentation
    #
    class MaintenanceSettings < Struct.new(
      :iceberg_compaction,
      :iceberg_snapshot_management)
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

    # The compaction settings that a migration applies to the destination
    # table.
    #
    # @!attribute [rw] target_file_size_mb
    #   The target size, from 64 to 512 MB, of the data files that the
    #   migration writes, and of the files that compaction writes after you
    #   complete the migration. The default is 512.
    #   @return [Integer]
    #
    # @!attribute [rw] strategy
    #   The compaction strategy. The only valid value is `binpack`, which is
    #   the default.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/MigrationCompactionSettings AWS API Documentation
    #
    class MigrationCompactionSettings < Struct.new(
      :target_file_size_mb,
      :strategy)
      SENSITIVE = []
      include Aws::Structure
    end

    # The reason that a migration failed: a code and, when there is one, the
    # resource or reason it applies to. This value is returned only when the
    # migration is in the `failed` state.
    #
    # @!attribute [rw] code
    #   The failure code. It names the cause or the report that lists the
    #   findings. Valid values:
    #
    #   * `rolePermissions` - S3 Tables couldn't assume the migration role,
    #     or the role doesn't have a permission that the migration needs.
    #     `detail` is the role ARN.
    #
    #   * `sourcePermissions` - The migration role couldn't read the Amazon
    #     Web Services Glue table or the source objects. `detail` names the
    #     table (`database.table`) or the source bucket.
    #
    #   * `destinationPermissions` - The migration role couldn't write to
    #     the table bucket or the report bucket. `detail` names the bucket.
    #
    #   * `resourceNotFound` - A resource that you specified doesn't exist,
    #     such as the Amazon Web Services Glue table or the source bucket.
    #     `detail` names it.
    #
    #   * `sourceNotSupported` - The source table can't be migrated, for
    #     example because it is empty, has too many objects, or has columns
    #     or partitions that can't be migrated. The table compatibility
    #     report lists the findings.
    #
    #   * `tableCompatibilityReport` - The migration couldn't create the
    #     destination table, for example because a table with that name
    #     already exists or the KMS key can't be used. For a sync, the
    #     destination table changed after the previous migration. The table
    #     compatibility report lists the finding.
    #
    #   * `objectCompatibilityReport` - Some source objects can't be
    #     migrated, for example because they are archived, or because they
    #     were overwritten after an earlier migration migrated them. The
    #     object compatibility report lists them.
    #
    #   * `objectMigrationReport` - Some source objects failed to migrate.
    #     The object migration report lists them and the cause for each.
    #
    #   * `reportBucketNotSupported` - The report bucket can't receive the
    #     migration's reports, for example because it is in a different
    #     Region than the table bucket.
    #
    #   * `internalError` - S3 Tables encountered an internal error. Retry
    #     the migration, and contact Amazon Web Services Support if the
    #     error persists.
    #   @return [String]
    #
    # @!attribute [rw] detail
    #   The resource that the failure applies to, such as the role ARN, the
    #   Amazon Web Services Glue table (`database.table`) or a bucket. For
    #   `sourceNotSupported`, the reason that the source isn't supported,
    #   such as `EMPTY_TABLE`. This value isn't returned for the report
    #   codes or for `internalError`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/MigrationFailureReason AWS API Documentation
    #
    class MigrationFailureReason < Struct.new(
      :code,
      :detail)
      SENSITIVE = []
      include Aws::Structure
    end

    # The bucket and prefixes that a migration writes its reports to. Every
    # report goes to one bucket, each under its own prefix.
    #
    # @!attribute [rw] bucket
    #   The general purpose bucket that the migration writes every report
    #   to.
    #   @return [String]
    #
    # @!attribute [rw] prefixes
    #   The key prefix for each report.
    #   @return [Types::MigrationReportPrefixes]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/MigrationOutputConfiguration AWS API Documentation
    #
    class MigrationOutputConfiguration < Struct.new(
      :bucket,
      :prefixes)
      SENSITIVE = []
      include Aws::Structure
    end

    # Where a migration writes its reports, and the location of each report
    # once it is written.
    #
    # @!attribute [rw] bucket
    #   The general purpose bucket that the migration writes every report
    #   to.
    #   @return [String]
    #
    # @!attribute [rw] table_compatibility_report
    #   The table compatibility report: the sample object that the schema is
    #   inferred from, the table-level findings, and one row for each
    #   destination column with its type change and how the migration
    #   policies apply to it. The migration writes it when planning
    #   finishes, before any data migrates. If planning fails, the report
    #   might not be written.
    #   @return [Types::ReportOverview]
    #
    # @!attribute [rw] object_compatibility_report
    #   The object compatibility report: one row for each source object
    #   under the source table's location, with whether the migration
    #   includes the object and its most severe finding. The migration
    #   writes it when planning finishes. If planning fails, the report
    #   might not be written.
    #   @return [Types::ReportOverview]
    #
    # @!attribute [rw] object_migration_report
    #   The object migration report: one row for each source object that the
    #   migration tried to migrate, with whether it migrated, how it was
    #   transformed, and why it failed. The migration writes it once, when
    #   the migration ends. It isn't written if planning fails or if a sync
    #   has nothing to migrate.
    #   @return [Types::ReportOverview]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/MigrationOutputOverview AWS API Documentation
    #
    class MigrationOutputOverview < Struct.new(
      :bucket,
      :table_compatibility_report,
      :object_compatibility_report,
      :object_migration_report)
      SENSITIVE = []
      include Aws::Structure
    end

    # The policies for source data that doesn't fit the destination schema.
    #
    # @!attribute [rw] unmatched_source_fields_policy
    #   The migration policy for a source field that has no matching column
    #   in the destination schema. Valid values:
    #
    #   * `fail` - Fails the migration. This is the default.
    #
    #   * `drop` - Leaves source columns that the destination schema
    #     doesn't have out of the destination table, and doesn't migrate
    #     source objects outside the Amazon Web Services Glue table's
    #     partition locations.
    #
    #   A destination schema that leaves out a partition column or a field
    #   of a struct column fails the migration under either value.
    #   @return [String]
    #
    # @!attribute [rw] incompatible_values_policy
    #   The migration policy for a source value that the destination
    #   column's type can't hold. Valid values:
    #
    #   * `fail` - Fails the migration. This is the default.
    #
    #   * `setNull` - Writes null for a value that the destination column's
    #     type can't hold. If a column's type in a source object is
    #     incompatible with the destination column's type, the column is
    #     null for that whole object.
    #
    #   A required column, or a type that migration doesn't support, fails
    #   the migration under either value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/MigrationPolicies AWS API Documentation
    #
    class MigrationPolicies < Struct.new(
      :unmatched_source_fields_policy,
      :incompatible_values_policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # The key prefix for each report. If you don't specify a prefix for a
    # report, its keys start at the root of the bucket.
    #
    # @!attribute [rw] table_compatibility_report
    #   The key prefix for the table compatibility report, up to 512 bytes.
    #   If not specified, the report's keys start at the root of the
    #   bucket.
    #   @return [String]
    #
    # @!attribute [rw] object_compatibility_report
    #   The key prefix for the object compatibility report, up to 512 bytes.
    #   If not specified, the report's keys start at the root of the
    #   bucket.
    #   @return [String]
    #
    # @!attribute [rw] object_migration_report
    #   The key prefix for the object migration report, up to 512 bytes. If
    #   not specified, the report's keys start at the root of the bucket.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/MigrationReportPrefixes AWS API Documentation
    #
    class MigrationReportPrefixes < Struct.new(
      :table_compatibility_report,
      :object_compatibility_report,
      :object_migration_report)
      SENSITIVE = []
      include Aws::Structure
    end

    # The snapshot management settings that a migration applies to the
    # destination table.
    #
    # @!attribute [rw] min_snapshots_to_keep
    #   The minimum number of snapshots to keep. The value must be 3 or
    #   more. The default is 3.
    #   @return [Integer]
    #
    # @!attribute [rw] max_snapshot_age_hours
    #   The maximum age, in hours, of a snapshot before it can be expired.
    #   The default is 120.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/MigrationSnapshotManagementSettings AWS API Documentation
    #
    class MigrationSnapshotManagementSettings < Struct.new(
      :min_snapshots_to_keep,
      :max_snapshot_age_hours)
      SENSITIVE = []
      include Aws::Structure
    end

    # The number of source objects that migrated, failed or are pending. For
    # a sync, the counts cover every object of the table after the sync,
    # including objects that earlier migrations migrated. The counts are set
    # when planning finishes and updated when the migration ends.
    #
    # @!attribute [rw] objects_migrated
    #   The number of source objects whose data the migration wrote to the
    #   destination table. Migrated data can be queried after the migration
    #   commits it. If the migration fails or is cancelled, some migrated
    #   objects might not be committed.
    #   @return [Integer]
    #
    # @!attribute [rw] objects_failed_migration
    #   The number of source objects that didn't migrate, because they
    #   failed or because another object, such as an object in the same
    #   partition, failed. The object migration report lists the cause for
    #   each object.
    #   @return [Integer]
    #
    # @!attribute [rw] objects_pending_migration
    #   The number of source objects that haven't migrated or failed yet.
    #   When a migration fails or is cancelled, these are the objects that
    #   it didn't migrate.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/MigrationStats AWS API Documentation
    #
    class MigrationStats < Struct.new(
      :objects_migrated,
      :objects_failed_migration,
      :objects_pending_migration)
      SENSITIVE = []
      include Aws::Structure
    end

    # A summary of a migration.
    #
    # @!attribute [rw] migration_id
    #   The ID of the migration.
    #   @return [String]
    #
    # @!attribute [rw] table_bucket_arn
    #   The Amazon Resource Name (ARN) of the table bucket that contains the
    #   destination table.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace of the destination table.
    #   @return [String]
    #
    # @!attribute [rw] table_arn
    #   The Amazon Resource Name (ARN) of the destination table, once the
    #   migration creates it.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the destination table.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the migration. Valid values:
    #
    #   * `start` - A migration that `StartTableMigration` started.
    #
    #   * `sync` - A migration that `SyncTableMigration` started.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the migration. Valid values:
    #
    #   * `new` - S3 Tables accepted the request.
    #
    #   * `planning` - The migration is checking the source table, its
    #     objects and the destination for compatibility, and writing the
    #     compatibility reports.
    #
    #   * `pendingReview` - Planning finished, and the migration waits for
    #     you to continue or cancel it with `UpdateTableMigration`.
    #
    #   * `queued` - The migration is waiting to start migrating data.
    #
    #   * `migrating` - The migration is running the plan from the
    #     `planning` state: it copies data and commits it to the destination
    #     table. A migration reaches this state only if `hasValidPlan` is
    #     `true`.
    #
    #   * `succeeded` - Every planned object migrated.
    #
    #   * `failed` - The migration failed. Check `failureReason` for the
    #     cause.
    #
    #   * `cancelling` - You cancelled the migration, and it is finishing
    #     the work in progress.
    #
    #   * `cancelled` - The migration is cancelled.
    #   @return [String]
    #
    # @!attribute [rw] has_valid_plan
    #   A Boolean value that specifies whether planning produced a plan that
    #   the migration can run. If planning hasn't finished, this value
    #   isn't returned.
    #   @return [Boolean]
    #
    # @!attribute [rw] created_at
    #   The date and time that the migration was created.
    #   @return [Time]
    #
    # @!attribute [rw] state_updated_at
    #   The date and time that the migration's state last changed.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/MigrationSummary AWS API Documentation
    #
    class MigrationSummary < Struct.new(
      :migration_id,
      :table_bucket_arn,
      :namespace,
      :table_arn,
      :name,
      :type,
      :state,
      :has_valid_plan,
      :created_at,
      :state_updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # The properties of the data files that a migration writes. The
    # migration also sets the compression codec and dictionary encoding as
    # the destination table's write properties, so they remain the table's
    # defaults after you complete the migration.
    #
    # @!attribute [rw] write_format
    #   The file format of the data files. The only supported format is
    #   `parquet`, the default.
    #   @return [String]
    #
    # @!attribute [rw] iceberg_format_version
    #   The Iceberg format version of the destination table. Valid values
    #   are `2` and `3`. The default is `2`.
    #   @return [Integer]
    #
    # @!attribute [rw] compression_codec
    #   The compression codec of the data files. The default is `zstd`.
    #   @return [String]
    #
    # @!attribute [rw] dictionary_encoding
    #   Specifies whether the data files use dictionary encoding. The
    #   default is `true`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/MigrationTableProperties AWS API Documentation
    #
    class MigrationTableProperties < Struct.new(
      :write_format,
      :iceberg_format_version,
      :compression_codec,
      :dictionary_encoding)
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

    # Statistics about the source and the partitions in a migration.
    #
    # @!attribute [rw] objects_scanned
    #   The number of source objects that the migration found under the
    #   source table's location, whether or not it migrates them. The
    #   object compatibility report has one row for each.
    #   @return [Integer]
    #
    # @!attribute [rw] objects_planned
    #   The number of source objects in the migration. For a start, these
    #   are the data files in the Amazon Web Services Glue table's
    #   partitions, or under the table's location if the table isn't
    #   partitioned. For a sync, these are all the data files of the table
    #   after the sync, including files that earlier migrations migrated.
    #   @return [Integer]
    #
    # @!attribute [rw] partition_count
    #   The number of partitions in the destination table after this
    #   migration, or 0 if the source table isn't partitioned. This value
    #   is returned when planning produces a valid plan.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/PlanningStats AWS API Documentation
    #
    class PlanningStats < Struct.new(
      :objects_scanned,
      :objects_planned,
      :partition_count)
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

    # A report of a migration: the prefix it is written under and, once it
    # is written, its key, its checksum and, for the compatibility reports,
    # the number of blocking findings in each category.
    #
    # @!attribute [rw] prefix
    #   The key prefix that the report is written under.
    #   @return [String]
    #
    # @!attribute [rw] key
    #   The key of the report object in the bucket. For the object
    #   compatibility and object migration reports, this is the report's
    #   manifest; for the table compatibility report, it is the report
    #   itself. This value is returned after the migration writes the
    #   report. A migration doesn't always write every report. For example,
    #   a migration that fails during planning doesn't write the object
    #   migration report.
    #   @return [String]
    #
    # @!attribute [rw] checksum_crc64nvme
    #   The Base64-encoded CRC64NVME checksum of the object that `key`
    #   names. For a report that has a manifest, the manifest lists the
    #   checksum of each report file. This value is returned after the
    #   migration writes the report.
    #   @return [String]
    #
    # @!attribute [rw] invalid_findings
    #   For the compatibility reports, the number of blocking findings in
    #   each category. The object compatibility report counts each blocked
    #   object once, under its most severe finding. Categories with no
    #   blocking findings are left out.
    #   @return [Hash<String,Integer>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/ReportOverview AWS API Documentation
    #
    class ReportOverview < Struct.new(
      :prefix,
      :key,
      :checksum_crc64nvme,
      :invalid_findings)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about a schema field.
    #
    # @!attribute [rw] id
    #   An optional unique identifier for the schema field. Field IDs are
    #   used by Apache Iceberg to track schema evolution and maintain
    #   compatibility across schema changes. If not specified, S3 Tables
    #   automatically assigns field IDs.
    #   @return [Integer]
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
      :id,
      :name,
      :type,
      :required)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about a schema field in the V2 format. This field
    # format supports nested and complex data types such as `struct`,
    # `list`, and `map`, in addition to primitive types.
    #
    # @!attribute [rw] id
    #   The unique identifier for the schema field. Field IDs are used by
    #   Apache Iceberg to track schema evolution and maintain compatibility
    #   across schema changes.
    #   @return [Integer]
    #
    # @!attribute [rw] name
    #   The name of the field.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The data type of the field. This can be a primitive type string such
    #   as `boolean`, `int`, `long`, `float`, `double`, `string`, `binary`,
    #   `date`, `timestamp`, or `timestamptz`, or a complex type represented
    #   as a JSON object for nested types such as `struct`, `list`, or
    #   `map`. For more information, see the [Apache Iceberg schemas and
    #   data types documentation][1].
    #
    #
    #
    #   [1]: https://iceberg.apache.org/spec/#schemas-and-data-types
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @!attribute [rw] required
    #   A Boolean value that specifies whether values are required for each
    #   row in this field. If this is `true`, the field does not allow null
    #   values.
    #   @return [Boolean]
    #
    # @!attribute [rw] doc
    #   An optional description of the field.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/SchemaV2Field AWS API Documentation
    #
    class SchemaV2Field < Struct.new(
      :id,
      :name,
      :type,
      :required,
      :doc)
      SENSITIVE = []
      include Aws::Structure
    end

    # The source to migrate from. Set exactly one member, and set
    # `sourceType` to match it.
    #
    # @note SourceConfiguration is a union - when making an API calls you must set exactly one of the members.
    #
    # @note SourceConfiguration is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of SourceConfiguration corresponding to the set member.
    #
    # @!attribute [rw] glue_table
    #   An Amazon Web Services Glue Data Catalog table to migrate. The table
    #   must be an external Apache Hive table whose data is stored as
    #   Parquet in a general purpose bucket in the same account and Region
    #   as the table bucket. Views, transactional (ACID) tables, tables in
    #   an open table format such as Apache Iceberg, and tables registered
    #   with Amazon Web Services Lake Formation can't be migrated. If the
    #   table can't be migrated, the migration fails, and the table
    #   compatibility report lists the reason.
    #   @return [Types::GlueTableSource]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/SourceConfiguration AWS API Documentation
    #
    class SourceConfiguration < Struct.new(
      :glue_table,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class GlueTable < SourceConfiguration; end
      class Unknown < SourceConfiguration; end
    end

    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that the migration
    #   uses to read the source table and its data and to write the
    #   destination table and the reports. The role must be in your account,
    #   and its trust policy must allow `migration.s3tables.amazonaws.com`
    #   to assume it. You can limit the trust policy to the destination
    #   table bucket with the `aws:SourceArn` and `aws:SourceAccount`
    #   condition keys.
    #   @return [String]
    #
    # @!attribute [rw] destination_table
    #   The table to create and migrate the source into.
    #   @return [Types::DestinationTable]
    #
    # @!attribute [rw] source_type
    #   The type of the source. It must match the member that you set in
    #   `source`.
    #   @return [String]
    #
    # @!attribute [rw] source
    #   The source table to migrate.
    #   @return [Types::SourceConfiguration]
    #
    # @!attribute [rw] data_migration
    #   The maintenance settings and migration policies for the destination
    #   table.
    #   @return [Types::DataMigrationSettings]
    #
    # @!attribute [rw] review_migration_plan
    #   Specifies whether the migration waits in the `pendingReview` state,
    #   so that you can review the compatibility reports before it migrates
    #   any data. If `true`, the migration continues when you call
    #   `UpdateTableMigration` with `requestedState` set to `queued`. If you
    #   don't continue or cancel the migration within 30 days, the
    #   migration fails. The default is `false`.
    #   @return [Boolean]
    #
    # @!attribute [rw] migration_output
    #   The bucket and prefixes that the migration writes its reports to.
    #   The bucket must be a general purpose bucket in your account and in
    #   the same Region as the table bucket, and the migration role must be
    #   able to write objects to it. Otherwise, the migration fails when it
    #   writes its first report.
    #   @return [Types::MigrationOutputConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/StartTableMigrationRequest AWS API Documentation
    #
    class StartTableMigrationRequest < Struct.new(
      :role_arn,
      :destination_table,
      :source_type,
      :source,
      :data_migration,
      :review_migration_plan,
      :migration_output)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] migration_id
    #   The ID of the migration.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the migration when the request is accepted, such as
    #   `planning`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/StartTableMigrationResponse AWS API Documentation
    #
    class StartTableMigrationResponse < Struct.new(
      :migration_id,
      :state)
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

    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that the sync uses to
    #   read the source table and its data and to write the destination
    #   table and the reports. The role must be in your account, and its
    #   trust policy must allow `migration.s3tables.amazonaws.com` to assume
    #   it. You can limit the trust policy to the destination table bucket
    #   with the `aws:SourceArn` and `aws:SourceAccount` condition keys.
    #   @return [String]
    #
    # @!attribute [rw] table_arn
    #   The Amazon Resource Name (ARN) of the destination table to sync. The
    #   table must have a migration, and you must not have called
    #   `CompleteTableMigration` for it.
    #   @return [String]
    #
    # @!attribute [rw] review_migration_plan
    #   Specifies whether the sync waits in the `pendingReview` state, so
    #   that you can review the compatibility reports before it migrates any
    #   data. If `true`, the migration continues when you call
    #   `UpdateTableMigration` with `requestedState` set to `queued`. If you
    #   don't continue or cancel the migration within 30 days, the
    #   migration fails. The default is `false`.
    #   @return [Boolean]
    #
    # @!attribute [rw] migration_output
    #   The bucket and prefixes that the sync writes its reports to. The
    #   bucket must be a general purpose bucket in your account and in the
    #   same Region as the table bucket, and the migration role must be able
    #   to write objects to it. Otherwise, the migration fails when it
    #   writes its first report.
    #   @return [Types::MigrationOutputConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/SyncTableMigrationRequest AWS API Documentation
    #
    class SyncTableMigrationRequest < Struct.new(
      :role_arn,
      :table_arn,
      :review_migration_plan,
      :migration_output)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] migration_id
    #   The migration ID of the sync.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the migration when the request is accepted, such as
    #   `planning`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/SyncTableMigrationResponse AWS API Documentation
    #
    class SyncTableMigrationResponse < Struct.new(
      :migration_id,
      :state)
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

    # @!attribute [rw] table_arn
    #   The Amazon Resource Name (ARN) of the destination table. Updates the
    #   table's most recent migration. Until the migration creates the
    #   destination table, specify `migrationId`. Specify either `tableARN`
    #   or `migrationId`, not both.
    #   @return [String]
    #
    # @!attribute [rw] migration_id
    #   The ID of the migration to update. Specify either `migrationId` or
    #   `tableARN`, not both.
    #   @return [String]
    #
    # @!attribute [rw] requested_state
    #   The state to move the migration to: `queued` to continue a migration
    #   in the `pendingReview` state, or `cancelled` to cancel a migration
    #   in the `new`, `planning`, `pendingReview`, `queued` or `migrating`
    #   state.
    #   @return [String]
    #
    # @!attribute [rw] update_description
    #   A description of the update, up to 1,024 characters, with no control
    #   characters. `GetTableMigration` doesn't return it.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/UpdateTableMigrationRequest AWS API Documentation
    #
    class UpdateTableMigrationRequest < Struct.new(
      :table_arn,
      :migration_id,
      :requested_state,
      :update_description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] migration_id
    #   The ID of the migration.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the migration after the update, such as `queued`,
    #   `migrating` or `cancelling`.
    #   @return [String]
    #
    # @!attribute [rw] table_arn
    #   The Amazon Resource Name (ARN) of the destination table.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3tables-2018-05-10/UpdateTableMigrationResponse AWS API Documentation
    #
    class UpdateTableMigrationResponse < Struct.new(
      :migration_id,
      :state,
      :table_arn)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

