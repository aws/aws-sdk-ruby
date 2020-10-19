# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::DocDB
  module Types

    # Represents the input to AddTagsToResource.
    #
    # @note When making an API call, you may pass AddTagsToResourceMessage
    #   data as a hash:
    #
    #       {
    #         resource_name: "String", # required
    #         tags: [ # required
    #           {
    #             key: "String",
    #             value: "String",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] resource_name
    #   The Amazon DocumentDB resource that the tags are added to. This
    #   value is an Amazon Resource Name .
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to be assigned to the Amazon DocumentDB resource.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/AddTagsToResourceMessage AWS API Documentation
    #
    class AddTagsToResourceMessage < Struct.new(
      :resource_name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input to ApplyPendingMaintenanceAction.
    #
    # @note When making an API call, you may pass ApplyPendingMaintenanceActionMessage
    #   data as a hash:
    #
    #       {
    #         resource_identifier: "String", # required
    #         apply_action: "String", # required
    #         opt_in_type: "String", # required
    #       }
    #
    # @!attribute [rw] resource_identifier
    #   The Amazon Resource Name (ARN) of the resource that the pending
    #   maintenance action applies to.
    #   @return [String]
    #
    # @!attribute [rw] apply_action
    #   The pending maintenance action to apply to this resource.
    #
    #   Valid values: `system-update`, `db-upgrade`
    #   @return [String]
    #
    # @!attribute [rw] opt_in_type
    #   A value that specifies the type of opt-in request or undoes an
    #   opt-in request. An opt-in request of type `immediate` can't be
    #   undone.
    #
    #   Valid values:
    #
    #   * `immediate` - Apply the maintenance action immediately.
    #
    #   * `next-maintenance` - Apply the maintenance action during the next
    #     maintenance window for the resource.
    #
    #   * `undo-opt-in` - Cancel any existing `next-maintenance` opt-in
    #     requests.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/ApplyPendingMaintenanceActionMessage AWS API Documentation
    #
    class ApplyPendingMaintenanceActionMessage < Struct.new(
      :resource_identifier,
      :apply_action,
      :opt_in_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_pending_maintenance_actions
    #   Represents the output of ApplyPendingMaintenanceAction.
    #   @return [Types::ResourcePendingMaintenanceActions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/ApplyPendingMaintenanceActionResult AWS API Documentation
    #
    class ApplyPendingMaintenanceActionResult < Struct.new(
      :resource_pending_maintenance_actions)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified CIDR IP or Amazon EC2 security group isn't authorized
    # for the specified security group.
    #
    # Amazon DocumentDB also might not be authorized to perform necessary
    # actions on your behalf using IAM.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/AuthorizationNotFoundFault AWS API Documentation
    #
    class AuthorizationNotFoundFault < Aws::EmptyStructure; end

    # Information about an Availability Zone.
    #
    # @!attribute [rw] name
    #   The name of the Availability Zone.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/AvailabilityZone AWS API Documentation
    #
    class AvailabilityZone < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # A certificate authority (CA) certificate for an AWS account.
    #
    # @!attribute [rw] certificate_identifier
    #   The unique key that identifies a certificate.
    #
    #   Example: `rds-ca-2019`
    #   @return [String]
    #
    # @!attribute [rw] certificate_type
    #   The type of the certificate.
    #
    #   Example: `CA`
    #   @return [String]
    #
    # @!attribute [rw] thumbprint
    #   The thumbprint of the certificate.
    #   @return [String]
    #
    # @!attribute [rw] valid_from
    #   The starting date-time from which the certificate is valid.
    #
    #   Example: `2019-07-31T17:57:09Z`
    #   @return [Time]
    #
    # @!attribute [rw] valid_till
    #   The date-time after which the certificate is no longer valid.
    #
    #   Example: `2024-07-31T17:57:09Z`
    #   @return [Time]
    #
    # @!attribute [rw] certificate_arn
    #   The Amazon Resource Name (ARN) for the certificate.
    #
    #   Example: `arn:aws:rds:us-east-1::cert:rds-ca-2019`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/Certificate AWS API Documentation
    #
    class Certificate < Struct.new(
      :certificate_identifier,
      :certificate_type,
      :thumbprint,
      :valid_from,
      :valid_till,
      :certificate_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] certificates
    #   A list of certificates for this AWS account.
    #   @return [Array<Types::Certificate>]
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided if the number of records
    #   retrieved is greater than `MaxRecords`. If this parameter is
    #   specified, the marker specifies the next record in the list.
    #   Including the value of `Marker` in the next call to
    #   `DescribeCertificates` results in the next page of certificates.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/CertificateMessage AWS API Documentation
    #
    class CertificateMessage < Struct.new(
      :certificates,
      :marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # `CertificateIdentifier` doesn't refer to an existing certificate.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/CertificateNotFoundFault AWS API Documentation
    #
    class CertificateNotFoundFault < Aws::EmptyStructure; end

    # The configuration setting for the log types to be enabled for export
    # to Amazon CloudWatch Logs for a specific instance or cluster.
    #
    # The `EnableLogTypes` and `DisableLogTypes` arrays determine which logs
    # are exported (or not exported) to CloudWatch Logs. The values within
    # these arrays depend on the engine that is being used.
    #
    # @note When making an API call, you may pass CloudwatchLogsExportConfiguration
    #   data as a hash:
    #
    #       {
    #         enable_log_types: ["String"],
    #         disable_log_types: ["String"],
    #       }
    #
    # @!attribute [rw] enable_log_types
    #   The list of log types to enable.
    #   @return [Array<String>]
    #
    # @!attribute [rw] disable_log_types
    #   The list of log types to disable.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/CloudwatchLogsExportConfiguration AWS API Documentation
    #
    class CloudwatchLogsExportConfiguration < Struct.new(
      :enable_log_types,
      :disable_log_types)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input to CopyDBClusterParameterGroup.
    #
    # @note When making an API call, you may pass CopyDBClusterParameterGroupMessage
    #   data as a hash:
    #
    #       {
    #         source_db_cluster_parameter_group_identifier: "String", # required
    #         target_db_cluster_parameter_group_identifier: "String", # required
    #         target_db_cluster_parameter_group_description: "String", # required
    #         tags: [
    #           {
    #             key: "String",
    #             value: "String",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] source_db_cluster_parameter_group_identifier
    #   The identifier or Amazon Resource Name (ARN) for the source cluster
    #   parameter group.
    #
    #   Constraints:
    #
    #   * Must specify a valid cluster parameter group.
    #
    #   * If the source cluster parameter group is in the same AWS Region as
    #     the copy, specify a valid parameter group identifier; for example,
    #     `my-db-cluster-param-group`, or a valid ARN.
    #
    #   * If the source parameter group is in a different AWS Region than
    #     the copy, specify a valid cluster parameter group ARN; for
    #     example,
    #     `arn:aws:rds:us-east-1:123456789012:sample-cluster:sample-parameter-group`.
    #   @return [String]
    #
    # @!attribute [rw] target_db_cluster_parameter_group_identifier
    #   The identifier for the copied cluster parameter group.
    #
    #   Constraints:
    #
    #   * Cannot be null, empty, or blank.
    #
    #   * Must contain from 1 to 255 letters, numbers, or hyphens.
    #
    #   * The first character must be a letter.
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens.
    #
    #   Example: `my-cluster-param-group1`
    #   @return [String]
    #
    # @!attribute [rw] target_db_cluster_parameter_group_description
    #   A description for the copied cluster parameter group.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags that are to be assigned to the parameter group.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/CopyDBClusterParameterGroupMessage AWS API Documentation
    #
    class CopyDBClusterParameterGroupMessage < Struct.new(
      :source_db_cluster_parameter_group_identifier,
      :target_db_cluster_parameter_group_identifier,
      :target_db_cluster_parameter_group_description,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_cluster_parameter_group
    #   Detailed information about a cluster parameter group.
    #   @return [Types::DBClusterParameterGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/CopyDBClusterParameterGroupResult AWS API Documentation
    #
    class CopyDBClusterParameterGroupResult < Struct.new(
      :db_cluster_parameter_group)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input to CopyDBClusterSnapshot.
    #
    # @note When making an API call, you may pass CopyDBClusterSnapshotMessage
    #   data as a hash:
    #
    #       {
    #         source_db_cluster_snapshot_identifier: "String", # required
    #         target_db_cluster_snapshot_identifier: "String", # required
    #         kms_key_id: "String",
    #         pre_signed_url: "String",
    #         copy_tags: false,
    #         tags: [
    #           {
    #             key: "String",
    #             value: "String",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] source_db_cluster_snapshot_identifier
    #   The identifier of the cluster snapshot to copy. This parameter is
    #   not case sensitive.
    #
    #   Constraints:
    #
    #   * Must specify a valid system snapshot in the *available* state.
    #
    #   * If the source snapshot is in the same AWS Region as the copy,
    #     specify a valid snapshot identifier.
    #
    #   * If the source snapshot is in a different AWS Region than the copy,
    #     specify a valid cluster snapshot ARN.
    #
    #   Example: `my-cluster-snapshot1`
    #   @return [String]
    #
    # @!attribute [rw] target_db_cluster_snapshot_identifier
    #   The identifier of the new cluster snapshot to create from the source
    #   cluster snapshot. This parameter is not case sensitive.
    #
    #   Constraints:
    #
    #   * Must contain from 1 to 63 letters, numbers, or hyphens.
    #
    #   * The first character must be a letter.
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens.
    #
    #   Example: `my-cluster-snapshot2`
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   The AWS KMS key ID for an encrypted cluster snapshot. The AWS KMS
    #   key ID is the Amazon Resource Name (ARN), AWS KMS key identifier, or
    #   the AWS KMS key alias for the AWS KMS encryption key.
    #
    #   If you copy an encrypted cluster snapshot from your AWS account, you
    #   can specify a value for `KmsKeyId` to encrypt the copy with a new
    #   AWS KMS encryption key. If you don't specify a value for
    #   `KmsKeyId`, then the copy of the cluster snapshot is encrypted with
    #   the same AWS KMS key as the source cluster snapshot.
    #
    #   If you copy an encrypted cluster snapshot that is shared from
    #   another AWS account, then you must specify a value for `KmsKeyId`.
    #
    #   To copy an encrypted cluster snapshot to another AWS Region, set
    #   `KmsKeyId` to the AWS KMS key ID that you want to use to encrypt the
    #   copy of the cluster snapshot in the destination Region. AWS KMS
    #   encryption keys are specific to the AWS Region that they are created
    #   in, and you can't use encryption keys from one AWS Region in
    #   another AWS Region.
    #
    #   If you copy an unencrypted cluster snapshot and specify a value for
    #   the `KmsKeyId` parameter, an error is returned.
    #   @return [String]
    #
    # @!attribute [rw] pre_signed_url
    #   The URL that contains a Signature Version 4 signed request for the
    #   `CopyDBClusterSnapshot` API action in the AWS Region that contains
    #   the source cluster snapshot to copy. You must use the `PreSignedUrl`
    #   parameter when copying a cluster snapshot from another AWS Region.
    #
    #   If you are using an AWS SDK tool or the AWS CLI, you can specify
    #   `SourceRegion` (or `--source-region` for the AWS CLI) instead of
    #   specifying `PreSignedUrl` manually. Specifying `SourceRegion`
    #   autogenerates a pre-signed URL that is a valid request for the
    #   operation that can be executed in the source AWS Region.
    #
    #   The presigned URL must be a valid request for the
    #   `CopyDBClusterSnapshot` API action that can be executed in the
    #   source AWS Region that contains the cluster snapshot to be copied.
    #   The presigned URL request must contain the following parameter
    #   values:
    #
    #   * `SourceRegion` - The ID of the region that contains the snapshot
    #     to be copied.
    #
    #   * `SourceDBClusterSnapshotIdentifier` - The identifier for the the
    #     encrypted cluster snapshot to be copied. This identifier must be
    #     in the Amazon Resource Name (ARN) format for the source AWS
    #     Region. For example, if you are copying an encrypted cluster
    #     snapshot from the us-east-1 AWS Region, then your
    #     `SourceDBClusterSnapshotIdentifier` looks something like the
    #     following:
    #     `arn:aws:rds:us-east-1:12345678012:sample-cluster:sample-cluster-snapshot`.
    #
    #   * `TargetDBClusterSnapshotIdentifier` - The identifier for the new
    #     cluster snapshot to be created. This parameter isn't case
    #     sensitive.
    #   @return [String]
    #
    # @!attribute [rw] copy_tags
    #   Set to `true` to copy all tags from the source cluster snapshot to
    #   the target cluster snapshot, and otherwise `false`. The default is
    #   `false`.
    #   @return [Boolean]
    #
    # @!attribute [rw] tags
    #   The tags to be assigned to the cluster snapshot.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/CopyDBClusterSnapshotMessage AWS API Documentation
    #
    class CopyDBClusterSnapshotMessage < Struct.new(
      :source_db_cluster_snapshot_identifier,
      :target_db_cluster_snapshot_identifier,
      :kms_key_id,
      :pre_signed_url,
      :copy_tags,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_cluster_snapshot
    #   Detailed information about a cluster snapshot.
    #   @return [Types::DBClusterSnapshot]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/CopyDBClusterSnapshotResult AWS API Documentation
    #
    class CopyDBClusterSnapshotResult < Struct.new(
      :db_cluster_snapshot)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input to CreateDBCluster.
    #
    # @note When making an API call, you may pass CreateDBClusterMessage
    #   data as a hash:
    #
    #       {
    #         availability_zones: ["String"],
    #         backup_retention_period: 1,
    #         db_cluster_identifier: "String", # required
    #         db_cluster_parameter_group_name: "String",
    #         vpc_security_group_ids: ["String"],
    #         db_subnet_group_name: "String",
    #         engine: "String", # required
    #         engine_version: "String",
    #         port: 1,
    #         master_username: "String", # required
    #         master_user_password: "String", # required
    #         preferred_backup_window: "String",
    #         preferred_maintenance_window: "String",
    #         tags: [
    #           {
    #             key: "String",
    #             value: "String",
    #           },
    #         ],
    #         storage_encrypted: false,
    #         kms_key_id: "String",
    #         pre_signed_url: "String",
    #         enable_cloudwatch_logs_exports: ["String"],
    #         deletion_protection: false,
    #       }
    #
    # @!attribute [rw] availability_zones
    #   A list of Amazon EC2 Availability Zones that instances in the
    #   cluster can be created in.
    #   @return [Array<String>]
    #
    # @!attribute [rw] backup_retention_period
    #   The number of days for which automated backups are retained. You
    #   must specify a minimum value of 1.
    #
    #   Default: 1
    #
    #   Constraints:
    #
    #   * Must be a value from 1 to 35.
    #
    #   ^
    #   @return [Integer]
    #
    # @!attribute [rw] db_cluster_identifier
    #   The cluster identifier. This parameter is stored as a lowercase
    #   string.
    #
    #   Constraints:
    #
    #   * Must contain from 1 to 63 letters, numbers, or hyphens.
    #
    #   * The first character must be a letter.
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens.
    #
    #   Example: `my-cluster`
    #   @return [String]
    #
    # @!attribute [rw] db_cluster_parameter_group_name
    #   The name of the cluster parameter group to associate with this
    #   cluster.
    #   @return [String]
    #
    # @!attribute [rw] vpc_security_group_ids
    #   A list of EC2 VPC security groups to associate with this cluster.
    #   @return [Array<String>]
    #
    # @!attribute [rw] db_subnet_group_name
    #   A subnet group to associate with this cluster.
    #
    #   Constraints: Must match the name of an existing `DBSubnetGroup`.
    #   Must not be default.
    #
    #   Example: `mySubnetgroup`
    #   @return [String]
    #
    # @!attribute [rw] engine
    #   The name of the database engine to be used for this cluster.
    #
    #   Valid values: `docdb`
    #   @return [String]
    #
    # @!attribute [rw] engine_version
    #   The version number of the database engine to use. The
    #   --engine-version will default to the latest major engine version.
    #   For production workloads, we recommend explicitly declaring this
    #   parameter with the intended major engine version.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The port number on which the instances in the cluster accept
    #   connections.
    #   @return [Integer]
    #
    # @!attribute [rw] master_username
    #   The name of the master user for the cluster.
    #
    #   Constraints:
    #
    #   * Must be from 1 to 63 letters or numbers.
    #
    #   * The first character must be a letter.
    #
    #   * Cannot be a reserved word for the chosen database engine.
    #   @return [String]
    #
    # @!attribute [rw] master_user_password
    #   The password for the master database user. This password can contain
    #   any printable ASCII character except forward slash (/), double quote
    #   ("), or the "at" symbol (@).
    #
    #   Constraints: Must contain from 8 to 100 characters.
    #   @return [String]
    #
    # @!attribute [rw] preferred_backup_window
    #   The daily time range during which automated backups are created if
    #   automated backups are enabled using the `BackupRetentionPeriod`
    #   parameter.
    #
    #   The default is a 30-minute window selected at random from an 8-hour
    #   block of time for each AWS Region.
    #
    #   Constraints:
    #
    #   * Must be in the format `hh24:mi-hh24:mi`.
    #
    #   * Must be in Universal Coordinated Time (UTC).
    #
    #   * Must not conflict with the preferred maintenance window.
    #
    #   * Must be at least 30 minutes.
    #   @return [String]
    #
    # @!attribute [rw] preferred_maintenance_window
    #   The weekly time range during which system maintenance can occur, in
    #   Universal Coordinated Time (UTC).
    #
    #   Format: `ddd:hh24:mi-ddd:hh24:mi`
    #
    #   The default is a 30-minute window selected at random from an 8-hour
    #   block of time for each AWS Region, occurring on a random day of the
    #   week.
    #
    #   Valid days: Mon, Tue, Wed, Thu, Fri, Sat, Sun
    #
    #   Constraints: Minimum 30-minute window.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to be assigned to the cluster.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] storage_encrypted
    #   Specifies whether the cluster is encrypted.
    #   @return [Boolean]
    #
    # @!attribute [rw] kms_key_id
    #   The AWS KMS key identifier for an encrypted cluster.
    #
    #   The AWS KMS key identifier is the Amazon Resource Name (ARN) for the
    #   AWS KMS encryption key. If you are creating a cluster using the same
    #   AWS account that owns the AWS KMS encryption key that is used to
    #   encrypt the new cluster, you can use the AWS KMS key alias instead
    #   of the ARN for the AWS KMS encryption key.
    #
    #   If an encryption key is not specified in `KmsKeyId`\:
    #
    #   * If the `StorageEncrypted` parameter is `true`, Amazon DocumentDB
    #     uses your default encryption key.
    #
    #   ^
    #
    #   AWS KMS creates the default encryption key for your AWS account.
    #   Your AWS account has a different default encryption key for each AWS
    #   Region.
    #   @return [String]
    #
    # @!attribute [rw] pre_signed_url
    #   Not currently supported.
    #   @return [String]
    #
    # @!attribute [rw] enable_cloudwatch_logs_exports
    #   A list of log types that need to be enabled for exporting to Amazon
    #   CloudWatch Logs. You can enable audit logs or profiler logs. For
    #   more information, see [ Auditing Amazon DocumentDB Events][1] and [
    #   Profiling Amazon DocumentDB Operations][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/documentdb/latest/developerguide/event-auditing.html
    #   [2]: https://docs.aws.amazon.com/documentdb/latest/developerguide/profiling.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] deletion_protection
    #   Specifies whether this cluster can be deleted. If
    #   `DeletionProtection` is enabled, the cluster cannot be deleted
    #   unless it is modified and `DeletionProtection` is disabled.
    #   `DeletionProtection` protects clusters from being accidentally
    #   deleted.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/CreateDBClusterMessage AWS API Documentation
    #
    class CreateDBClusterMessage < Struct.new(
      :availability_zones,
      :backup_retention_period,
      :db_cluster_identifier,
      :db_cluster_parameter_group_name,
      :vpc_security_group_ids,
      :db_subnet_group_name,
      :engine,
      :engine_version,
      :port,
      :master_username,
      :master_user_password,
      :preferred_backup_window,
      :preferred_maintenance_window,
      :tags,
      :storage_encrypted,
      :kms_key_id,
      :pre_signed_url,
      :enable_cloudwatch_logs_exports,
      :deletion_protection)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input of CreateDBClusterParameterGroup.
    #
    # @note When making an API call, you may pass CreateDBClusterParameterGroupMessage
    #   data as a hash:
    #
    #       {
    #         db_cluster_parameter_group_name: "String", # required
    #         db_parameter_group_family: "String", # required
    #         description: "String", # required
    #         tags: [
    #           {
    #             key: "String",
    #             value: "String",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] db_cluster_parameter_group_name
    #   The name of the cluster parameter group.
    #
    #   Constraints:
    #
    #   * Must not match the name of an existing `DBClusterParameterGroup`.
    #
    #   ^
    #
    #   <note markdown="1"> This value is stored as a lowercase string.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] db_parameter_group_family
    #   The cluster parameter group family name.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description for the cluster parameter group.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to be assigned to the cluster parameter group.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/CreateDBClusterParameterGroupMessage AWS API Documentation
    #
    class CreateDBClusterParameterGroupMessage < Struct.new(
      :db_cluster_parameter_group_name,
      :db_parameter_group_family,
      :description,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_cluster_parameter_group
    #   Detailed information about a cluster parameter group.
    #   @return [Types::DBClusterParameterGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/CreateDBClusterParameterGroupResult AWS API Documentation
    #
    class CreateDBClusterParameterGroupResult < Struct.new(
      :db_cluster_parameter_group)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_cluster
    #   Detailed information about a cluster.
    #   @return [Types::DBCluster]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/CreateDBClusterResult AWS API Documentation
    #
    class CreateDBClusterResult < Struct.new(
      :db_cluster)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input of CreateDBClusterSnapshot.
    #
    # @note When making an API call, you may pass CreateDBClusterSnapshotMessage
    #   data as a hash:
    #
    #       {
    #         db_cluster_snapshot_identifier: "String", # required
    #         db_cluster_identifier: "String", # required
    #         tags: [
    #           {
    #             key: "String",
    #             value: "String",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] db_cluster_snapshot_identifier
    #   The identifier of the cluster snapshot. This parameter is stored as
    #   a lowercase string.
    #
    #   Constraints:
    #
    #   * Must contain from 1 to 63 letters, numbers, or hyphens.
    #
    #   * The first character must be a letter.
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens.
    #
    #   Example: `my-cluster-snapshot1`
    #   @return [String]
    #
    # @!attribute [rw] db_cluster_identifier
    #   The identifier of the cluster to create a snapshot for. This
    #   parameter is not case sensitive.
    #
    #   Constraints:
    #
    #   * Must match the identifier of an existing `DBCluster`.
    #
    #   ^
    #
    #   Example: `my-cluster`
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to be assigned to the cluster snapshot.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/CreateDBClusterSnapshotMessage AWS API Documentation
    #
    class CreateDBClusterSnapshotMessage < Struct.new(
      :db_cluster_snapshot_identifier,
      :db_cluster_identifier,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_cluster_snapshot
    #   Detailed information about a cluster snapshot.
    #   @return [Types::DBClusterSnapshot]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/CreateDBClusterSnapshotResult AWS API Documentation
    #
    class CreateDBClusterSnapshotResult < Struct.new(
      :db_cluster_snapshot)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input to CreateDBInstance.
    #
    # @note When making an API call, you may pass CreateDBInstanceMessage
    #   data as a hash:
    #
    #       {
    #         db_instance_identifier: "String", # required
    #         db_instance_class: "String", # required
    #         engine: "String", # required
    #         availability_zone: "String",
    #         preferred_maintenance_window: "String",
    #         auto_minor_version_upgrade: false,
    #         tags: [
    #           {
    #             key: "String",
    #             value: "String",
    #           },
    #         ],
    #         db_cluster_identifier: "String", # required
    #         promotion_tier: 1,
    #       }
    #
    # @!attribute [rw] db_instance_identifier
    #   The instance identifier. This parameter is stored as a lowercase
    #   string.
    #
    #   Constraints:
    #
    #   * Must contain from 1 to 63 letters, numbers, or hyphens.
    #
    #   * The first character must be a letter.
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens.
    #
    #   Example: `mydbinstance`
    #   @return [String]
    #
    # @!attribute [rw] db_instance_class
    #   The compute and memory capacity of the instance; for example,
    #   `db.r5.large`.
    #   @return [String]
    #
    # @!attribute [rw] engine
    #   The name of the database engine to be used for this instance.
    #
    #   Valid value: `docdb`
    #   @return [String]
    #
    # @!attribute [rw] availability_zone
    #   The Amazon EC2 Availability Zone that the instance is created in.
    #
    #   Default: A random, system-chosen Availability Zone in the
    #   endpoint's AWS Region.
    #
    #   Example: `us-east-1d`
    #   @return [String]
    #
    # @!attribute [rw] preferred_maintenance_window
    #   The time range each week during which system maintenance can occur,
    #   in Universal Coordinated Time (UTC).
    #
    #   Format: `ddd:hh24:mi-ddd:hh24:mi`
    #
    #   The default is a 30-minute window selected at random from an 8-hour
    #   block of time for each AWS Region, occurring on a random day of the
    #   week.
    #
    #   Valid days: Mon, Tue, Wed, Thu, Fri, Sat, Sun
    #
    #   Constraints: Minimum 30-minute window.
    #   @return [String]
    #
    # @!attribute [rw] auto_minor_version_upgrade
    #   Indicates that minor engine upgrades are applied automatically to
    #   the instance during the maintenance window.
    #
    #   Default: `true`
    #   @return [Boolean]
    #
    # @!attribute [rw] tags
    #   The tags to be assigned to the instance. You can assign up to 10
    #   tags to an instance.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] db_cluster_identifier
    #   The identifier of the cluster that the instance will belong to.
    #   @return [String]
    #
    # @!attribute [rw] promotion_tier
    #   A value that specifies the order in which an Amazon DocumentDB
    #   replica is promoted to the primary instance after a failure of the
    #   existing primary instance.
    #
    #   Default: 1
    #
    #   Valid values: 0-15
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/CreateDBInstanceMessage AWS API Documentation
    #
    class CreateDBInstanceMessage < Struct.new(
      :db_instance_identifier,
      :db_instance_class,
      :engine,
      :availability_zone,
      :preferred_maintenance_window,
      :auto_minor_version_upgrade,
      :tags,
      :db_cluster_identifier,
      :promotion_tier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_instance
    #   Detailed information about an instance.
    #   @return [Types::DBInstance]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/CreateDBInstanceResult AWS API Documentation
    #
    class CreateDBInstanceResult < Struct.new(
      :db_instance)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input to CreateDBSubnetGroup.
    #
    # @note When making an API call, you may pass CreateDBSubnetGroupMessage
    #   data as a hash:
    #
    #       {
    #         db_subnet_group_name: "String", # required
    #         db_subnet_group_description: "String", # required
    #         subnet_ids: ["String"], # required
    #         tags: [
    #           {
    #             key: "String",
    #             value: "String",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] db_subnet_group_name
    #   The name for the subnet group. This value is stored as a lowercase
    #   string.
    #
    #   Constraints: Must contain no more than 255 letters, numbers,
    #   periods, underscores, spaces, or hyphens. Must not be default.
    #
    #   Example: `mySubnetgroup`
    #   @return [String]
    #
    # @!attribute [rw] db_subnet_group_description
    #   The description for the subnet group.
    #   @return [String]
    #
    # @!attribute [rw] subnet_ids
    #   The Amazon EC2 subnet IDs for the subnet group.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   The tags to be assigned to the subnet group.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/CreateDBSubnetGroupMessage AWS API Documentation
    #
    class CreateDBSubnetGroupMessage < Struct.new(
      :db_subnet_group_name,
      :db_subnet_group_description,
      :subnet_ids,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_subnet_group
    #   Detailed information about a subnet group.
    #   @return [Types::DBSubnetGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/CreateDBSubnetGroupResult AWS API Documentation
    #
    class CreateDBSubnetGroupResult < Struct.new(
      :db_subnet_group)
      SENSITIVE = []
      include Aws::Structure
    end

    # Detailed information about a cluster.
    #
    # @!attribute [rw] availability_zones
    #   Provides the list of Amazon EC2 Availability Zones that instances in
    #   the cluster can be created in.
    #   @return [Array<String>]
    #
    # @!attribute [rw] backup_retention_period
    #   Specifies the number of days for which automatic snapshots are
    #   retained.
    #   @return [Integer]
    #
    # @!attribute [rw] db_cluster_identifier
    #   Contains a user-supplied cluster identifier. This identifier is the
    #   unique key that identifies a cluster.
    #   @return [String]
    #
    # @!attribute [rw] db_cluster_parameter_group
    #   Specifies the name of the cluster parameter group for the cluster.
    #   @return [String]
    #
    # @!attribute [rw] db_subnet_group
    #   Specifies information on the subnet group that is associated with
    #   the cluster, including the name, description, and subnets in the
    #   subnet group.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Specifies the current state of this cluster.
    #   @return [String]
    #
    # @!attribute [rw] percent_progress
    #   Specifies the progress of the operation as a percentage.
    #   @return [String]
    #
    # @!attribute [rw] earliest_restorable_time
    #   The earliest time to which a database can be restored with
    #   point-in-time restore.
    #   @return [Time]
    #
    # @!attribute [rw] endpoint
    #   Specifies the connection endpoint for the primary instance of the
    #   cluster.
    #   @return [String]
    #
    # @!attribute [rw] reader_endpoint
    #   The reader endpoint for the cluster. The reader endpoint for a
    #   cluster load balances connections across the Amazon DocumentDB
    #   replicas that are available in a cluster. As clients request new
    #   connections to the reader endpoint, Amazon DocumentDB distributes
    #   the connection requests among the Amazon DocumentDB replicas in the
    #   cluster. This functionality can help balance your read workload
    #   across multiple Amazon DocumentDB replicas in your cluster.
    #
    #   If a failover occurs, and the Amazon DocumentDB replica that you are
    #   connected to is promoted to be the primary instance, your connection
    #   is dropped. To continue sending your read workload to other Amazon
    #   DocumentDB replicas in the cluster, you can then reconnect to the
    #   reader endpoint.
    #   @return [String]
    #
    # @!attribute [rw] multi_az
    #   Specifies whether the cluster has instances in multiple Availability
    #   Zones.
    #   @return [Boolean]
    #
    # @!attribute [rw] engine
    #   Provides the name of the database engine to be used for this
    #   cluster.
    #   @return [String]
    #
    # @!attribute [rw] engine_version
    #   Indicates the database engine version.
    #   @return [String]
    #
    # @!attribute [rw] latest_restorable_time
    #   Specifies the latest time to which a database can be restored with
    #   point-in-time restore.
    #   @return [Time]
    #
    # @!attribute [rw] port
    #   Specifies the port that the database engine is listening on.
    #   @return [Integer]
    #
    # @!attribute [rw] master_username
    #   Contains the master user name for the cluster.
    #   @return [String]
    #
    # @!attribute [rw] preferred_backup_window
    #   Specifies the daily time range during which automated backups are
    #   created if automated backups are enabled, as determined by the
    #   `BackupRetentionPeriod`.
    #   @return [String]
    #
    # @!attribute [rw] preferred_maintenance_window
    #   Specifies the weekly time range during which system maintenance can
    #   occur, in Universal Coordinated Time (UTC).
    #   @return [String]
    #
    # @!attribute [rw] db_cluster_members
    #   Provides the list of instances that make up the cluster.
    #   @return [Array<Types::DBClusterMember>]
    #
    # @!attribute [rw] vpc_security_groups
    #   Provides a list of virtual private cloud (VPC) security groups that
    #   the cluster belongs to.
    #   @return [Array<Types::VpcSecurityGroupMembership>]
    #
    # @!attribute [rw] hosted_zone_id
    #   Specifies the ID that Amazon Route 53 assigns when you create a
    #   hosted zone.
    #   @return [String]
    #
    # @!attribute [rw] storage_encrypted
    #   Specifies whether the cluster is encrypted.
    #   @return [Boolean]
    #
    # @!attribute [rw] kms_key_id
    #   If `StorageEncrypted` is `true`, the AWS KMS key identifier for the
    #   encrypted cluster.
    #   @return [String]
    #
    # @!attribute [rw] db_cluster_resource_id
    #   The AWS Region-unique, immutable identifier for the cluster. This
    #   identifier is found in AWS CloudTrail log entries whenever the AWS
    #   KMS key for the cluster is accessed.
    #   @return [String]
    #
    # @!attribute [rw] db_cluster_arn
    #   The Amazon Resource Name (ARN) for the cluster.
    #   @return [String]
    #
    # @!attribute [rw] associated_roles
    #   Provides a list of the AWS Identity and Access Management (IAM)
    #   roles that are associated with the cluster. IAM roles that are
    #   associated with a cluster grant permission for the cluster to access
    #   other AWS services on your behalf.
    #   @return [Array<Types::DBClusterRole>]
    #
    # @!attribute [rw] cluster_create_time
    #   Specifies the time when the cluster was created, in Universal
    #   Coordinated Time (UTC).
    #   @return [Time]
    #
    # @!attribute [rw] enabled_cloudwatch_logs_exports
    #   A list of log types that this cluster is configured to export to
    #   Amazon CloudWatch Logs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] deletion_protection
    #   Specifies whether this cluster can be deleted. If
    #   `DeletionProtection` is enabled, the cluster cannot be deleted
    #   unless it is modified and `DeletionProtection` is disabled.
    #   `DeletionProtection` protects clusters from being accidentally
    #   deleted.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/DBCluster AWS API Documentation
    #
    class DBCluster < Struct.new(
      :availability_zones,
      :backup_retention_period,
      :db_cluster_identifier,
      :db_cluster_parameter_group,
      :db_subnet_group,
      :status,
      :percent_progress,
      :earliest_restorable_time,
      :endpoint,
      :reader_endpoint,
      :multi_az,
      :engine,
      :engine_version,
      :latest_restorable_time,
      :port,
      :master_username,
      :preferred_backup_window,
      :preferred_maintenance_window,
      :db_cluster_members,
      :vpc_security_groups,
      :hosted_zone_id,
      :storage_encrypted,
      :kms_key_id,
      :db_cluster_resource_id,
      :db_cluster_arn,
      :associated_roles,
      :cluster_create_time,
      :enabled_cloudwatch_logs_exports,
      :deletion_protection)
      SENSITIVE = []
      include Aws::Structure
    end

    # You already have a cluster with the given identifier.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/DBClusterAlreadyExistsFault AWS API Documentation
    #
    class DBClusterAlreadyExistsFault < Aws::EmptyStructure; end

    # Contains information about an instance that is part of a cluster.
    #
    # @!attribute [rw] db_instance_identifier
    #   Specifies the instance identifier for this member of the cluster.
    #   @return [String]
    #
    # @!attribute [rw] is_cluster_writer
    #   A value that is `true` if the cluster member is the primary instance
    #   for the cluster and `false` otherwise.
    #   @return [Boolean]
    #
    # @!attribute [rw] db_cluster_parameter_group_status
    #   Specifies the status of the cluster parameter group for this member
    #   of the DB cluster.
    #   @return [String]
    #
    # @!attribute [rw] promotion_tier
    #   A value that specifies the order in which an Amazon DocumentDB
    #   replica is promoted to the primary instance after a failure of the
    #   existing primary instance.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/DBClusterMember AWS API Documentation
    #
    class DBClusterMember < Struct.new(
      :db_instance_identifier,
      :is_cluster_writer,
      :db_cluster_parameter_group_status,
      :promotion_tier)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the output of DescribeDBClusters.
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond
    #   the marker, up to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @!attribute [rw] db_clusters
    #   A list of clusters.
    #   @return [Array<Types::DBCluster>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/DBClusterMessage AWS API Documentation
    #
    class DBClusterMessage < Struct.new(
      :marker,
      :db_clusters)
      SENSITIVE = []
      include Aws::Structure
    end

    # `DBClusterIdentifier` doesn't refer to an existing cluster.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/DBClusterNotFoundFault AWS API Documentation
    #
    class DBClusterNotFoundFault < Aws::EmptyStructure; end

    # Detailed information about a cluster parameter group.
    #
    # @!attribute [rw] db_cluster_parameter_group_name
    #   Provides the name of the cluster parameter group.
    #   @return [String]
    #
    # @!attribute [rw] db_parameter_group_family
    #   Provides the name of the parameter group family that this cluster
    #   parameter group is compatible with.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Provides the customer-specified description for this cluster
    #   parameter group.
    #   @return [String]
    #
    # @!attribute [rw] db_cluster_parameter_group_arn
    #   The Amazon Resource Name (ARN) for the cluster parameter group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/DBClusterParameterGroup AWS API Documentation
    #
    class DBClusterParameterGroup < Struct.new(
      :db_cluster_parameter_group_name,
      :db_parameter_group_family,
      :description,
      :db_cluster_parameter_group_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the output of DBClusterParameterGroup.
    #
    # @!attribute [rw] parameters
    #   Provides a list of parameters for the cluster parameter group.
    #   @return [Array<Types::Parameter>]
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond
    #   the marker, up to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/DBClusterParameterGroupDetails AWS API Documentation
    #
    class DBClusterParameterGroupDetails < Struct.new(
      :parameters,
      :marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the name of a cluster parameter group.
    #
    # @!attribute [rw] db_cluster_parameter_group_name
    #   The name of a cluster parameter group.
    #
    #   Constraints:
    #
    #   * Must be from 1 to 255 letters or numbers.
    #
    #   * The first character must be a letter.
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens.
    #
    #   <note markdown="1"> This value is stored as a lowercase string.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/DBClusterParameterGroupNameMessage AWS API Documentation
    #
    class DBClusterParameterGroupNameMessage < Struct.new(
      :db_cluster_parameter_group_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # `DBClusterParameterGroupName` doesn't refer to an existing cluster
    # parameter group.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/DBClusterParameterGroupNotFoundFault AWS API Documentation
    #
    class DBClusterParameterGroupNotFoundFault < Aws::EmptyStructure; end

    # Represents the output of DBClusterParameterGroups.
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond
    #   the marker, up to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @!attribute [rw] db_cluster_parameter_groups
    #   A list of cluster parameter groups.
    #   @return [Array<Types::DBClusterParameterGroup>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/DBClusterParameterGroupsMessage AWS API Documentation
    #
    class DBClusterParameterGroupsMessage < Struct.new(
      :marker,
      :db_cluster_parameter_groups)
      SENSITIVE = []
      include Aws::Structure
    end

    # The cluster can't be created because you have reached the maximum
    # allowed quota of clusters.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/DBClusterQuotaExceededFault AWS API Documentation
    #
    class DBClusterQuotaExceededFault < Aws::EmptyStructure; end

    # Describes an AWS Identity and Access Management (IAM) role that is
    # associated with a cluster.
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that is associated
    #   with the DB cluster.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Describes the state of association between the IAM role and the
    #   cluster. The `Status` property returns one of the following values:
    #
    #   * `ACTIVE` - The IAM role ARN is associated with the cluster and can
    #     be used to access other AWS services on your behalf.
    #
    #   * `PENDING` - The IAM role ARN is being associated with the DB
    #     cluster.
    #
    #   * `INVALID` - The IAM role ARN is associated with the cluster, but
    #     the cluster cannot assume the IAM role to access other AWS
    #     services on your behalf.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/DBClusterRole AWS API Documentation
    #
    class DBClusterRole < Struct.new(
      :role_arn,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Detailed information about a cluster snapshot.
    #
    # @!attribute [rw] availability_zones
    #   Provides the list of Amazon EC2 Availability Zones that instances in
    #   the cluster snapshot can be restored in.
    #   @return [Array<String>]
    #
    # @!attribute [rw] db_cluster_snapshot_identifier
    #   Specifies the identifier for the cluster snapshot.
    #   @return [String]
    #
    # @!attribute [rw] db_cluster_identifier
    #   Specifies the cluster identifier of the cluster that this cluster
    #   snapshot was created from.
    #   @return [String]
    #
    # @!attribute [rw] snapshot_create_time
    #   Provides the time when the snapshot was taken, in UTC.
    #   @return [Time]
    #
    # @!attribute [rw] engine
    #   Specifies the name of the database engine.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Specifies the status of this cluster snapshot.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   Specifies the port that the cluster was listening on at the time of
    #   the snapshot.
    #   @return [Integer]
    #
    # @!attribute [rw] vpc_id
    #   Provides the virtual private cloud (VPC) ID that is associated with
    #   the cluster snapshot.
    #   @return [String]
    #
    # @!attribute [rw] cluster_create_time
    #   Specifies the time when the cluster was created, in Universal
    #   Coordinated Time (UTC).
    #   @return [Time]
    #
    # @!attribute [rw] master_username
    #   Provides the master user name for the cluster snapshot.
    #   @return [String]
    #
    # @!attribute [rw] engine_version
    #   Provides the version of the database engine for this cluster
    #   snapshot.
    #   @return [String]
    #
    # @!attribute [rw] snapshot_type
    #   Provides the type of the cluster snapshot.
    #   @return [String]
    #
    # @!attribute [rw] percent_progress
    #   Specifies the percentage of the estimated data that has been
    #   transferred.
    #   @return [Integer]
    #
    # @!attribute [rw] storage_encrypted
    #   Specifies whether the cluster snapshot is encrypted.
    #   @return [Boolean]
    #
    # @!attribute [rw] kms_key_id
    #   If `StorageEncrypted` is `true`, the AWS KMS key identifier for the
    #   encrypted cluster snapshot.
    #   @return [String]
    #
    # @!attribute [rw] db_cluster_snapshot_arn
    #   The Amazon Resource Name (ARN) for the cluster snapshot.
    #   @return [String]
    #
    # @!attribute [rw] source_db_cluster_snapshot_arn
    #   If the cluster snapshot was copied from a source cluster snapshot,
    #   the ARN for the source cluster snapshot; otherwise, a null value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/DBClusterSnapshot AWS API Documentation
    #
    class DBClusterSnapshot < Struct.new(
      :availability_zones,
      :db_cluster_snapshot_identifier,
      :db_cluster_identifier,
      :snapshot_create_time,
      :engine,
      :status,
      :port,
      :vpc_id,
      :cluster_create_time,
      :master_username,
      :engine_version,
      :snapshot_type,
      :percent_progress,
      :storage_encrypted,
      :kms_key_id,
      :db_cluster_snapshot_arn,
      :source_db_cluster_snapshot_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # You already have a cluster snapshot with the given identifier.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/DBClusterSnapshotAlreadyExistsFault AWS API Documentation
    #
    class DBClusterSnapshotAlreadyExistsFault < Aws::EmptyStructure; end

    # Contains the name and values of a manual cluster snapshot attribute.
    #
    # Manual cluster snapshot attributes are used to authorize other AWS
    # accounts to restore a manual cluster snapshot.
    #
    # @!attribute [rw] attribute_name
    #   The name of the manual cluster snapshot attribute.
    #
    #   The attribute named `restore` refers to the list of AWS accounts
    #   that have permission to copy or restore the manual cluster snapshot.
    #   @return [String]
    #
    # @!attribute [rw] attribute_values
    #   The values for the manual cluster snapshot attribute.
    #
    #   If the `AttributeName` field is set to `restore`, then this element
    #   returns a list of IDs of the AWS accounts that are authorized to
    #   copy or restore the manual cluster snapshot. If a value of `all` is
    #   in the list, then the manual cluster snapshot is public and
    #   available for any AWS account to copy or restore.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/DBClusterSnapshotAttribute AWS API Documentation
    #
    class DBClusterSnapshotAttribute < Struct.new(
      :attribute_name,
      :attribute_values)
      SENSITIVE = []
      include Aws::Structure
    end

    # Detailed information about the attributes that are associated with a
    # cluster snapshot.
    #
    # @!attribute [rw] db_cluster_snapshot_identifier
    #   The identifier of the cluster snapshot that the attributes apply to.
    #   @return [String]
    #
    # @!attribute [rw] db_cluster_snapshot_attributes
    #   The list of attributes and values for the cluster snapshot.
    #   @return [Array<Types::DBClusterSnapshotAttribute>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/DBClusterSnapshotAttributesResult AWS API Documentation
    #
    class DBClusterSnapshotAttributesResult < Struct.new(
      :db_cluster_snapshot_identifier,
      :db_cluster_snapshot_attributes)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the output of DescribeDBClusterSnapshots.
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond
    #   the marker, up to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @!attribute [rw] db_cluster_snapshots
    #   Provides a list of cluster snapshots.
    #   @return [Array<Types::DBClusterSnapshot>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/DBClusterSnapshotMessage AWS API Documentation
    #
    class DBClusterSnapshotMessage < Struct.new(
      :marker,
      :db_cluster_snapshots)
      SENSITIVE = []
      include Aws::Structure
    end

    # `DBClusterSnapshotIdentifier` doesn't refer to an existing cluster
    # snapshot.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/DBClusterSnapshotNotFoundFault AWS API Documentation
    #
    class DBClusterSnapshotNotFoundFault < Aws::EmptyStructure; end

    # Detailed information about an engine version.
    #
    # @!attribute [rw] engine
    #   The name of the database engine.
    #   @return [String]
    #
    # @!attribute [rw] engine_version
    #   The version number of the database engine.
    #   @return [String]
    #
    # @!attribute [rw] db_parameter_group_family
    #   The name of the parameter group family for the database engine.
    #   @return [String]
    #
    # @!attribute [rw] db_engine_description
    #   The description of the database engine.
    #   @return [String]
    #
    # @!attribute [rw] db_engine_version_description
    #   The description of the database engine version.
    #   @return [String]
    #
    # @!attribute [rw] valid_upgrade_target
    #   A list of engine versions that this database engine version can be
    #   upgraded to.
    #   @return [Array<Types::UpgradeTarget>]
    #
    # @!attribute [rw] exportable_log_types
    #   The types of logs that the database engine has available for export
    #   to Amazon CloudWatch Logs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] supports_log_exports_to_cloudwatch_logs
    #   A value that indicates whether the engine version supports exporting
    #   the log types specified by `ExportableLogTypes` to CloudWatch Logs.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/DBEngineVersion AWS API Documentation
    #
    class DBEngineVersion < Struct.new(
      :engine,
      :engine_version,
      :db_parameter_group_family,
      :db_engine_description,
      :db_engine_version_description,
      :valid_upgrade_target,
      :exportable_log_types,
      :supports_log_exports_to_cloudwatch_logs)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the output of DescribeDBEngineVersions.
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond
    #   the marker, up to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @!attribute [rw] db_engine_versions
    #   Detailed information about one or more engine versions.
    #   @return [Array<Types::DBEngineVersion>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/DBEngineVersionMessage AWS API Documentation
    #
    class DBEngineVersionMessage < Struct.new(
      :marker,
      :db_engine_versions)
      SENSITIVE = []
      include Aws::Structure
    end

    # Detailed information about an instance.
    #
    # @!attribute [rw] db_instance_identifier
    #   Contains a user-provided database identifier. This identifier is the
    #   unique key that identifies an instance.
    #   @return [String]
    #
    # @!attribute [rw] db_instance_class
    #   Contains the name of the compute and memory capacity class of the
    #   instance.
    #   @return [String]
    #
    # @!attribute [rw] engine
    #   Provides the name of the database engine to be used for this
    #   instance.
    #   @return [String]
    #
    # @!attribute [rw] db_instance_status
    #   Specifies the current state of this database.
    #   @return [String]
    #
    # @!attribute [rw] endpoint
    #   Specifies the connection endpoint.
    #   @return [Types::Endpoint]
    #
    # @!attribute [rw] instance_create_time
    #   Provides the date and time that the instance was created.
    #   @return [Time]
    #
    # @!attribute [rw] preferred_backup_window
    #   Specifies the daily time range during which automated backups are
    #   created if automated backups are enabled, as determined by the
    #   `BackupRetentionPeriod`.
    #   @return [String]
    #
    # @!attribute [rw] backup_retention_period
    #   Specifies the number of days for which automatic snapshots are
    #   retained.
    #   @return [Integer]
    #
    # @!attribute [rw] vpc_security_groups
    #   Provides a list of VPC security group elements that the instance
    #   belongs to.
    #   @return [Array<Types::VpcSecurityGroupMembership>]
    #
    # @!attribute [rw] availability_zone
    #   Specifies the name of the Availability Zone that the instance is
    #   located in.
    #   @return [String]
    #
    # @!attribute [rw] db_subnet_group
    #   Specifies information on the subnet group that is associated with
    #   the instance, including the name, description, and subnets in the
    #   subnet group.
    #   @return [Types::DBSubnetGroup]
    #
    # @!attribute [rw] preferred_maintenance_window
    #   Specifies the weekly time range during which system maintenance can
    #   occur, in Universal Coordinated Time (UTC).
    #   @return [String]
    #
    # @!attribute [rw] pending_modified_values
    #   Specifies that changes to the instance are pending. This element is
    #   included only when changes are pending. Specific changes are
    #   identified by subelements.
    #   @return [Types::PendingModifiedValues]
    #
    # @!attribute [rw] latest_restorable_time
    #   Specifies the latest time to which a database can be restored with
    #   point-in-time restore.
    #   @return [Time]
    #
    # @!attribute [rw] engine_version
    #   Indicates the database engine version.
    #   @return [String]
    #
    # @!attribute [rw] auto_minor_version_upgrade
    #   Indicates that minor version patches are applied automatically.
    #   @return [Boolean]
    #
    # @!attribute [rw] publicly_accessible
    #   Not supported. Amazon DocumentDB does not currently support public
    #   endpoints. The value of `PubliclyAccessible` is always `false`.
    #   @return [Boolean]
    #
    # @!attribute [rw] status_infos
    #   The status of a read replica. If the instance is not a read replica,
    #   this is blank.
    #   @return [Array<Types::DBInstanceStatusInfo>]
    #
    # @!attribute [rw] db_cluster_identifier
    #   Contains the name of the cluster that the instance is a member of if
    #   the instance is a member of a cluster.
    #   @return [String]
    #
    # @!attribute [rw] storage_encrypted
    #   Specifies whether or not the instance is encrypted.
    #   @return [Boolean]
    #
    # @!attribute [rw] kms_key_id
    #   If `StorageEncrypted` is `true`, the AWS KMS key identifier for the
    #   encrypted instance.
    #   @return [String]
    #
    # @!attribute [rw] dbi_resource_id
    #   The AWS Region-unique, immutable identifier for the instance. This
    #   identifier is found in AWS CloudTrail log entries whenever the AWS
    #   KMS key for the instance is accessed.
    #   @return [String]
    #
    # @!attribute [rw] ca_certificate_identifier
    #   The identifier of the CA certificate for this DB instance.
    #   @return [String]
    #
    # @!attribute [rw] promotion_tier
    #   A value that specifies the order in which an Amazon DocumentDB
    #   replica is promoted to the primary instance after a failure of the
    #   existing primary instance.
    #   @return [Integer]
    #
    # @!attribute [rw] db_instance_arn
    #   The Amazon Resource Name (ARN) for the instance.
    #   @return [String]
    #
    # @!attribute [rw] enabled_cloudwatch_logs_exports
    #   A list of log types that this instance is configured to export to
    #   Amazon CloudWatch Logs.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/DBInstance AWS API Documentation
    #
    class DBInstance < Struct.new(
      :db_instance_identifier,
      :db_instance_class,
      :engine,
      :db_instance_status,
      :endpoint,
      :instance_create_time,
      :preferred_backup_window,
      :backup_retention_period,
      :vpc_security_groups,
      :availability_zone,
      :db_subnet_group,
      :preferred_maintenance_window,
      :pending_modified_values,
      :latest_restorable_time,
      :engine_version,
      :auto_minor_version_upgrade,
      :publicly_accessible,
      :status_infos,
      :db_cluster_identifier,
      :storage_encrypted,
      :kms_key_id,
      :dbi_resource_id,
      :ca_certificate_identifier,
      :promotion_tier,
      :db_instance_arn,
      :enabled_cloudwatch_logs_exports)
      SENSITIVE = []
      include Aws::Structure
    end

    # You already have a instance with the given identifier.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/DBInstanceAlreadyExistsFault AWS API Documentation
    #
    class DBInstanceAlreadyExistsFault < Aws::EmptyStructure; end

    # Represents the output of DescribeDBInstances.
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond
    #   the marker, up to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @!attribute [rw] db_instances
    #   Detailed information about one or more instances.
    #   @return [Array<Types::DBInstance>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/DBInstanceMessage AWS API Documentation
    #
    class DBInstanceMessage < Struct.new(
      :marker,
      :db_instances)
      SENSITIVE = []
      include Aws::Structure
    end

    # `DBInstanceIdentifier` doesn't refer to an existing instance.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/DBInstanceNotFoundFault AWS API Documentation
    #
    class DBInstanceNotFoundFault < Aws::EmptyStructure; end

    # Provides a list of status information for an instance.
    #
    # @!attribute [rw] status_type
    #   This value is currently "`read replication`."
    #   @return [String]
    #
    # @!attribute [rw] normal
    #   A Boolean value that is `true` if the instance is operating
    #   normally, or `false` if the instance is in an error state.
    #   @return [Boolean]
    #
    # @!attribute [rw] status
    #   Status of the instance. For a `StatusType` of read replica, the
    #   values can be `replicating`, error, `stopped`, or `terminated`.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   Details of the error if there is an error for the instance. If the
    #   instance is not in an error state, this value is blank.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/DBInstanceStatusInfo AWS API Documentation
    #
    class DBInstanceStatusInfo < Struct.new(
      :status_type,
      :normal,
      :status,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A parameter group with the same name already exists.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/DBParameterGroupAlreadyExistsFault AWS API Documentation
    #
    class DBParameterGroupAlreadyExistsFault < Aws::EmptyStructure; end

    # `DBParameterGroupName` doesn't refer to an existing parameter group.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/DBParameterGroupNotFoundFault AWS API Documentation
    #
    class DBParameterGroupNotFoundFault < Aws::EmptyStructure; end

    # This request would cause you to exceed the allowed number of parameter
    # groups.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/DBParameterGroupQuotaExceededFault AWS API Documentation
    #
    class DBParameterGroupQuotaExceededFault < Aws::EmptyStructure; end

    # `DBSecurityGroupName` doesn't refer to an existing security group.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/DBSecurityGroupNotFoundFault AWS API Documentation
    #
    class DBSecurityGroupNotFoundFault < Aws::EmptyStructure; end

    # `DBSnapshotIdentifier` is already being used by an existing snapshot.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/DBSnapshotAlreadyExistsFault AWS API Documentation
    #
    class DBSnapshotAlreadyExistsFault < Aws::EmptyStructure; end

    # `DBSnapshotIdentifier` doesn't refer to an existing snapshot.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/DBSnapshotNotFoundFault AWS API Documentation
    #
    class DBSnapshotNotFoundFault < Aws::EmptyStructure; end

    # Detailed information about a subnet group.
    #
    # @!attribute [rw] db_subnet_group_name
    #   The name of the subnet group.
    #   @return [String]
    #
    # @!attribute [rw] db_subnet_group_description
    #   Provides the description of the subnet group.
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   Provides the virtual private cloud (VPC) ID of the subnet group.
    #   @return [String]
    #
    # @!attribute [rw] subnet_group_status
    #   Provides the status of the subnet group.
    #   @return [String]
    #
    # @!attribute [rw] subnets
    #   Detailed information about one or more subnets within a subnet
    #   group.
    #   @return [Array<Types::Subnet>]
    #
    # @!attribute [rw] db_subnet_group_arn
    #   The Amazon Resource Name (ARN) for the DB subnet group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/DBSubnetGroup AWS API Documentation
    #
    class DBSubnetGroup < Struct.new(
      :db_subnet_group_name,
      :db_subnet_group_description,
      :vpc_id,
      :subnet_group_status,
      :subnets,
      :db_subnet_group_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # `DBSubnetGroupName` is already being used by an existing subnet group.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/DBSubnetGroupAlreadyExistsFault AWS API Documentation
    #
    class DBSubnetGroupAlreadyExistsFault < Aws::EmptyStructure; end

    # Subnets in the subnet group should cover at least two Availability
    # Zones unless there is only one Availability Zone.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/DBSubnetGroupDoesNotCoverEnoughAZs AWS API Documentation
    #
    class DBSubnetGroupDoesNotCoverEnoughAZs < Aws::EmptyStructure; end

    # Represents the output of DescribeDBSubnetGroups.
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond
    #   the marker, up to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @!attribute [rw] db_subnet_groups
    #   Detailed information about one or more subnet groups.
    #   @return [Array<Types::DBSubnetGroup>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/DBSubnetGroupMessage AWS API Documentation
    #
    class DBSubnetGroupMessage < Struct.new(
      :marker,
      :db_subnet_groups)
      SENSITIVE = []
      include Aws::Structure
    end

    # `DBSubnetGroupName` doesn't refer to an existing subnet group.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/DBSubnetGroupNotFoundFault AWS API Documentation
    #
    class DBSubnetGroupNotFoundFault < Aws::EmptyStructure; end

    # The request would cause you to exceed the allowed number of subnet
    # groups.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/DBSubnetGroupQuotaExceededFault AWS API Documentation
    #
    class DBSubnetGroupQuotaExceededFault < Aws::EmptyStructure; end

    # The request would cause you to exceed the allowed number of subnets in
    # a subnet group.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/DBSubnetQuotaExceededFault AWS API Documentation
    #
    class DBSubnetQuotaExceededFault < Aws::EmptyStructure; end

    # The upgrade failed because a resource that the depends on can't be
    # modified.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/DBUpgradeDependencyFailureFault AWS API Documentation
    #
    class DBUpgradeDependencyFailureFault < Aws::EmptyStructure; end

    # Represents the input to DeleteDBCluster.
    #
    # @note When making an API call, you may pass DeleteDBClusterMessage
    #   data as a hash:
    #
    #       {
    #         db_cluster_identifier: "String", # required
    #         skip_final_snapshot: false,
    #         final_db_snapshot_identifier: "String",
    #       }
    #
    # @!attribute [rw] db_cluster_identifier
    #   The cluster identifier for the cluster to be deleted. This parameter
    #   isn't case sensitive.
    #
    #   Constraints:
    #
    #   * Must match an existing `DBClusterIdentifier`.
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] skip_final_snapshot
    #   Determines whether a final cluster snapshot is created before the
    #   cluster is deleted. If `true` is specified, no cluster snapshot is
    #   created. If `false` is specified, a cluster snapshot is created
    #   before the DB cluster is deleted.
    #
    #   <note markdown="1"> If `SkipFinalSnapshot` is `false`, you must specify a
    #   `FinalDBSnapshotIdentifier` parameter.
    #
    #    </note>
    #
    #   Default: `false`
    #   @return [Boolean]
    #
    # @!attribute [rw] final_db_snapshot_identifier
    #   The cluster snapshot identifier of the new cluster snapshot created
    #   when `SkipFinalSnapshot` is set to `false`.
    #
    #   <note markdown="1"> Specifying this parameter and also setting the `SkipFinalShapshot`
    #   parameter to `true` results in an error.
    #
    #    </note>
    #
    #   Constraints:
    #
    #   * Must be from 1 to 255 letters, numbers, or hyphens.
    #
    #   * The first character must be a letter.
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/DeleteDBClusterMessage AWS API Documentation
    #
    class DeleteDBClusterMessage < Struct.new(
      :db_cluster_identifier,
      :skip_final_snapshot,
      :final_db_snapshot_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input to DeleteDBClusterParameterGroup.
    #
    # @note When making an API call, you may pass DeleteDBClusterParameterGroupMessage
    #   data as a hash:
    #
    #       {
    #         db_cluster_parameter_group_name: "String", # required
    #       }
    #
    # @!attribute [rw] db_cluster_parameter_group_name
    #   The name of the cluster parameter group.
    #
    #   Constraints:
    #
    #   * Must be the name of an existing cluster parameter group.
    #
    #   * You can't delete a default cluster parameter group.
    #
    #   * Cannot be associated with any clusters.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/DeleteDBClusterParameterGroupMessage AWS API Documentation
    #
    class DeleteDBClusterParameterGroupMessage < Struct.new(
      :db_cluster_parameter_group_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_cluster
    #   Detailed information about a cluster.
    #   @return [Types::DBCluster]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/DeleteDBClusterResult AWS API Documentation
    #
    class DeleteDBClusterResult < Struct.new(
      :db_cluster)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input to DeleteDBClusterSnapshot.
    #
    # @note When making an API call, you may pass DeleteDBClusterSnapshotMessage
    #   data as a hash:
    #
    #       {
    #         db_cluster_snapshot_identifier: "String", # required
    #       }
    #
    # @!attribute [rw] db_cluster_snapshot_identifier
    #   The identifier of the cluster snapshot to delete.
    #
    #   Constraints: Must be the name of an existing cluster snapshot in the
    #   `available` state.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/DeleteDBClusterSnapshotMessage AWS API Documentation
    #
    class DeleteDBClusterSnapshotMessage < Struct.new(
      :db_cluster_snapshot_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_cluster_snapshot
    #   Detailed information about a cluster snapshot.
    #   @return [Types::DBClusterSnapshot]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/DeleteDBClusterSnapshotResult AWS API Documentation
    #
    class DeleteDBClusterSnapshotResult < Struct.new(
      :db_cluster_snapshot)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input to DeleteDBInstance.
    #
    # @note When making an API call, you may pass DeleteDBInstanceMessage
    #   data as a hash:
    #
    #       {
    #         db_instance_identifier: "String", # required
    #       }
    #
    # @!attribute [rw] db_instance_identifier
    #   The instance identifier for the instance to be deleted. This
    #   parameter isn't case sensitive.
    #
    #   Constraints:
    #
    #   * Must match the name of an existing instance.
    #
    #   ^
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/DeleteDBInstanceMessage AWS API Documentation
    #
    class DeleteDBInstanceMessage < Struct.new(
      :db_instance_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_instance
    #   Detailed information about an instance.
    #   @return [Types::DBInstance]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/DeleteDBInstanceResult AWS API Documentation
    #
    class DeleteDBInstanceResult < Struct.new(
      :db_instance)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input to DeleteDBSubnetGroup.
    #
    # @note When making an API call, you may pass DeleteDBSubnetGroupMessage
    #   data as a hash:
    #
    #       {
    #         db_subnet_group_name: "String", # required
    #       }
    #
    # @!attribute [rw] db_subnet_group_name
    #   The name of the database subnet group to delete.
    #
    #   <note markdown="1"> You can't delete the default subnet group.
    #
    #    </note>
    #
    #   Constraints:
    #
    #   Must match the name of an existing `DBSubnetGroup`. Must not be
    #   default.
    #
    #   Example: `mySubnetgroup`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/DeleteDBSubnetGroupMessage AWS API Documentation
    #
    class DeleteDBSubnetGroupMessage < Struct.new(
      :db_subnet_group_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeCertificatesMessage
    #   data as a hash:
    #
    #       {
    #         certificate_identifier: "String",
    #         filters: [
    #           {
    #             name: "String", # required
    #             values: ["String"], # required
    #           },
    #         ],
    #         max_records: 1,
    #         marker: "String",
    #       }
    #
    # @!attribute [rw] certificate_identifier
    #   The user-supplied certificate identifier. If this parameter is
    #   specified, information for only the specified certificate is
    #   returned. If this parameter is omitted, a list of up to `MaxRecords`
    #   certificates is returned. This parameter is not case sensitive.
    #
    #   Constraints
    #
    #   * Must match an existing `CertificateIdentifier`.
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   This parameter is not currently supported.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token called a marker is included in the response so that the
    #   remaining results can be retrieved.
    #
    #   Default: 100
    #
    #   Constraints:
    #
    #   * Minimum: 20
    #
    #   * Maximum: 100
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous
    #   `DescribeCertificates` request. If this parameter is specified, the
    #   response includes only records beyond the marker, up to the value
    #   specified by `MaxRecords`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/DescribeCertificatesMessage AWS API Documentation
    #
    class DescribeCertificatesMessage < Struct.new(
      :certificate_identifier,
      :filters,
      :max_records,
      :marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input to DescribeDBClusterParameterGroups.
    #
    # @note When making an API call, you may pass DescribeDBClusterParameterGroupsMessage
    #   data as a hash:
    #
    #       {
    #         db_cluster_parameter_group_name: "String",
    #         filters: [
    #           {
    #             name: "String", # required
    #             values: ["String"], # required
    #           },
    #         ],
    #         max_records: 1,
    #         marker: "String",
    #       }
    #
    # @!attribute [rw] db_cluster_parameter_group_name
    #   The name of a specific cluster parameter group to return details
    #   for.
    #
    #   Constraints:
    #
    #   * If provided, must match the name of an existing
    #     `DBClusterParameterGroup`.
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   This parameter is not currently supported.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token (marker) is included in the response so that the remaining
    #   results can be retrieved.
    #
    #   Default: 100
    #
    #   Constraints: Minimum 20, maximum 100.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond
    #   the marker, up to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/DescribeDBClusterParameterGroupsMessage AWS API Documentation
    #
    class DescribeDBClusterParameterGroupsMessage < Struct.new(
      :db_cluster_parameter_group_name,
      :filters,
      :max_records,
      :marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input to DescribeDBClusterParameters.
    #
    # @note When making an API call, you may pass DescribeDBClusterParametersMessage
    #   data as a hash:
    #
    #       {
    #         db_cluster_parameter_group_name: "String", # required
    #         source: "String",
    #         filters: [
    #           {
    #             name: "String", # required
    #             values: ["String"], # required
    #           },
    #         ],
    #         max_records: 1,
    #         marker: "String",
    #       }
    #
    # @!attribute [rw] db_cluster_parameter_group_name
    #   The name of a specific cluster parameter group to return parameter
    #   details for.
    #
    #   Constraints:
    #
    #   * If provided, must match the name of an existing
    #     `DBClusterParameterGroup`.
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] source
    #   A value that indicates to return only parameters for a specific
    #   source. Parameter sources can be `engine`, `service`, or `customer`.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   This parameter is not currently supported.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token (marker) is included in the response so that the remaining
    #   results can be retrieved.
    #
    #   Default: 100
    #
    #   Constraints: Minimum 20, maximum 100.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond
    #   the marker, up to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/DescribeDBClusterParametersMessage AWS API Documentation
    #
    class DescribeDBClusterParametersMessage < Struct.new(
      :db_cluster_parameter_group_name,
      :source,
      :filters,
      :max_records,
      :marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input to DescribeDBClusterSnapshotAttributes.
    #
    # @note When making an API call, you may pass DescribeDBClusterSnapshotAttributesMessage
    #   data as a hash:
    #
    #       {
    #         db_cluster_snapshot_identifier: "String", # required
    #       }
    #
    # @!attribute [rw] db_cluster_snapshot_identifier
    #   The identifier for the cluster snapshot to describe the attributes
    #   for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/DescribeDBClusterSnapshotAttributesMessage AWS API Documentation
    #
    class DescribeDBClusterSnapshotAttributesMessage < Struct.new(
      :db_cluster_snapshot_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_cluster_snapshot_attributes_result
    #   Detailed information about the attributes that are associated with a
    #   cluster snapshot.
    #   @return [Types::DBClusterSnapshotAttributesResult]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/DescribeDBClusterSnapshotAttributesResult AWS API Documentation
    #
    class DescribeDBClusterSnapshotAttributesResult < Struct.new(
      :db_cluster_snapshot_attributes_result)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input to DescribeDBClusterSnapshots.
    #
    # @note When making an API call, you may pass DescribeDBClusterSnapshotsMessage
    #   data as a hash:
    #
    #       {
    #         db_cluster_identifier: "String",
    #         db_cluster_snapshot_identifier: "String",
    #         snapshot_type: "String",
    #         filters: [
    #           {
    #             name: "String", # required
    #             values: ["String"], # required
    #           },
    #         ],
    #         max_records: 1,
    #         marker: "String",
    #         include_shared: false,
    #         include_public: false,
    #       }
    #
    # @!attribute [rw] db_cluster_identifier
    #   The ID of the cluster to retrieve the list of cluster snapshots for.
    #   This parameter can't be used with the `DBClusterSnapshotIdentifier`
    #   parameter. This parameter is not case sensitive.
    #
    #   Constraints:
    #
    #   * If provided, must match the identifier of an existing `DBCluster`.
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] db_cluster_snapshot_identifier
    #   A specific cluster snapshot identifier to describe. This parameter
    #   can't be used with the `DBClusterIdentifier` parameter. This value
    #   is stored as a lowercase string.
    #
    #   Constraints:
    #
    #   * If provided, must match the identifier of an existing
    #     `DBClusterSnapshot`.
    #
    #   * If this identifier is for an automated snapshot, the
    #     `SnapshotType` parameter must also be specified.
    #   @return [String]
    #
    # @!attribute [rw] snapshot_type
    #   The type of cluster snapshots to be returned. You can specify one of
    #   the following values:
    #
    #   * `automated` - Return all cluster snapshots that Amazon DocumentDB
    #     has automatically created for your AWS account.
    #
    #   * `manual` - Return all cluster snapshots that you have manually
    #     created for your AWS account.
    #
    #   * `shared` - Return all manual cluster snapshots that have been
    #     shared to your AWS account.
    #
    #   * `public` - Return all cluster snapshots that have been marked as
    #     public.
    #
    #   If you don't specify a `SnapshotType` value, then both automated
    #   and manual cluster snapshots are returned. You can include shared
    #   cluster snapshots with these results by setting the `IncludeShared`
    #   parameter to `true`. You can include public cluster snapshots with
    #   these results by setting the `IncludePublic` parameter to `true`.
    #
    #   The `IncludeShared` and `IncludePublic` parameters don't apply for
    #   `SnapshotType` values of `manual` or `automated`. The
    #   `IncludePublic` parameter doesn't apply when `SnapshotType` is set
    #   to `shared`. The `IncludeShared` parameter doesn't apply when
    #   `SnapshotType` is set to `public`.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   This parameter is not currently supported.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token (marker) is included in the response so that the remaining
    #   results can be retrieved.
    #
    #   Default: 100
    #
    #   Constraints: Minimum 20, maximum 100.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond
    #   the marker, up to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @!attribute [rw] include_shared
    #   Set to `true` to include shared manual cluster snapshots from other
    #   AWS accounts that this AWS account has been given permission to copy
    #   or restore, and otherwise `false`. The default is `false`.
    #   @return [Boolean]
    #
    # @!attribute [rw] include_public
    #   Set to `true` to include manual cluster snapshots that are public
    #   and can be copied or restored by any AWS account, and otherwise
    #   `false`. The default is `false`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/DescribeDBClusterSnapshotsMessage AWS API Documentation
    #
    class DescribeDBClusterSnapshotsMessage < Struct.new(
      :db_cluster_identifier,
      :db_cluster_snapshot_identifier,
      :snapshot_type,
      :filters,
      :max_records,
      :marker,
      :include_shared,
      :include_public)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input to DescribeDBClusters.
    #
    # @note When making an API call, you may pass DescribeDBClustersMessage
    #   data as a hash:
    #
    #       {
    #         db_cluster_identifier: "String",
    #         filters: [
    #           {
    #             name: "String", # required
    #             values: ["String"], # required
    #           },
    #         ],
    #         max_records: 1,
    #         marker: "String",
    #       }
    #
    # @!attribute [rw] db_cluster_identifier
    #   The user-provided cluster identifier. If this parameter is
    #   specified, information from only the specific cluster is returned.
    #   This parameter isn't case sensitive.
    #
    #   Constraints:
    #
    #   * If provided, must match an existing `DBClusterIdentifier`.
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   A filter that specifies one or more clusters to describe.
    #
    #   Supported filters:
    #
    #   * `db-cluster-id` - Accepts cluster identifiers and cluster Amazon
    #     Resource Names (ARNs). The results list only includes information
    #     about the clusters identified by these ARNs.
    #
    #   ^
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token (marker) is included in the response so that the remaining
    #   results can be retrieved.
    #
    #   Default: 100
    #
    #   Constraints: Minimum 20, maximum 100.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond
    #   the marker, up to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/DescribeDBClustersMessage AWS API Documentation
    #
    class DescribeDBClustersMessage < Struct.new(
      :db_cluster_identifier,
      :filters,
      :max_records,
      :marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input to DescribeDBEngineVersions.
    #
    # @note When making an API call, you may pass DescribeDBEngineVersionsMessage
    #   data as a hash:
    #
    #       {
    #         engine: "String",
    #         engine_version: "String",
    #         db_parameter_group_family: "String",
    #         filters: [
    #           {
    #             name: "String", # required
    #             values: ["String"], # required
    #           },
    #         ],
    #         max_records: 1,
    #         marker: "String",
    #         default_only: false,
    #         list_supported_character_sets: false,
    #         list_supported_timezones: false,
    #       }
    #
    # @!attribute [rw] engine
    #   The database engine to return.
    #   @return [String]
    #
    # @!attribute [rw] engine_version
    #   The database engine version to return.
    #
    #   Example: `3.6.0`
    #   @return [String]
    #
    # @!attribute [rw] db_parameter_group_family
    #   The name of a specific parameter group family to return details for.
    #
    #   Constraints:
    #
    #   * If provided, must match an existing `DBParameterGroupFamily`.
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   This parameter is not currently supported.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token (marker) is included in the response so that the remaining
    #   results can be retrieved.
    #
    #   Default: 100
    #
    #   Constraints: Minimum 20, maximum 100.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond
    #   the marker, up to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @!attribute [rw] default_only
    #   Indicates that only the default version of the specified engine or
    #   engine and major version combination is returned.
    #   @return [Boolean]
    #
    # @!attribute [rw] list_supported_character_sets
    #   If this parameter is specified and the requested engine supports the
    #   `CharacterSetName` parameter for `CreateDBInstance`, the response
    #   includes a list of supported character sets for each engine version.
    #   @return [Boolean]
    #
    # @!attribute [rw] list_supported_timezones
    #   If this parameter is specified and the requested engine supports the
    #   `TimeZone` parameter for `CreateDBInstance`, the response includes a
    #   list of supported time zones for each engine version.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/DescribeDBEngineVersionsMessage AWS API Documentation
    #
    class DescribeDBEngineVersionsMessage < Struct.new(
      :engine,
      :engine_version,
      :db_parameter_group_family,
      :filters,
      :max_records,
      :marker,
      :default_only,
      :list_supported_character_sets,
      :list_supported_timezones)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input to DescribeDBInstances.
    #
    # @note When making an API call, you may pass DescribeDBInstancesMessage
    #   data as a hash:
    #
    #       {
    #         db_instance_identifier: "String",
    #         filters: [
    #           {
    #             name: "String", # required
    #             values: ["String"], # required
    #           },
    #         ],
    #         max_records: 1,
    #         marker: "String",
    #       }
    #
    # @!attribute [rw] db_instance_identifier
    #   The user-provided instance identifier. If this parameter is
    #   specified, information from only the specific instance is returned.
    #   This parameter isn't case sensitive.
    #
    #   Constraints:
    #
    #   * If provided, must match the identifier of an existing
    #     `DBInstance`.
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   A filter that specifies one or more instances to describe.
    #
    #   Supported filters:
    #
    #   * `db-cluster-id` - Accepts cluster identifiers and cluster Amazon
    #     Resource Names (ARNs). The results list includes only the
    #     information about the instances that are associated with the
    #     clusters that are identified by these ARNs.
    #
    #   * `db-instance-id` - Accepts instance identifiers and instance ARNs.
    #     The results list includes only the information about the instances
    #     that are identified by these ARNs.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token (marker) is included in the response so that the remaining
    #   results can be retrieved.
    #
    #   Default: 100
    #
    #   Constraints: Minimum 20, maximum 100.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond
    #   the marker, up to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/DescribeDBInstancesMessage AWS API Documentation
    #
    class DescribeDBInstancesMessage < Struct.new(
      :db_instance_identifier,
      :filters,
      :max_records,
      :marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input to DescribeDBSubnetGroups.
    #
    # @note When making an API call, you may pass DescribeDBSubnetGroupsMessage
    #   data as a hash:
    #
    #       {
    #         db_subnet_group_name: "String",
    #         filters: [
    #           {
    #             name: "String", # required
    #             values: ["String"], # required
    #           },
    #         ],
    #         max_records: 1,
    #         marker: "String",
    #       }
    #
    # @!attribute [rw] db_subnet_group_name
    #   The name of the subnet group to return details for.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   This parameter is not currently supported.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token (marker) is included in the response so that the remaining
    #   results can be retrieved.
    #
    #   Default: 100
    #
    #   Constraints: Minimum 20, maximum 100.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond
    #   the marker, up to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/DescribeDBSubnetGroupsMessage AWS API Documentation
    #
    class DescribeDBSubnetGroupsMessage < Struct.new(
      :db_subnet_group_name,
      :filters,
      :max_records,
      :marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input to DescribeEngineDefaultClusterParameters.
    #
    # @note When making an API call, you may pass DescribeEngineDefaultClusterParametersMessage
    #   data as a hash:
    #
    #       {
    #         db_parameter_group_family: "String", # required
    #         filters: [
    #           {
    #             name: "String", # required
    #             values: ["String"], # required
    #           },
    #         ],
    #         max_records: 1,
    #         marker: "String",
    #       }
    #
    # @!attribute [rw] db_parameter_group_family
    #   The name of the cluster parameter group family to return the engine
    #   parameter information for.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   This parameter is not currently supported.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token (marker) is included in the response so that the remaining
    #   results can be retrieved.
    #
    #   Default: 100
    #
    #   Constraints: Minimum 20, maximum 100.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond
    #   the marker, up to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/DescribeEngineDefaultClusterParametersMessage AWS API Documentation
    #
    class DescribeEngineDefaultClusterParametersMessage < Struct.new(
      :db_parameter_group_family,
      :filters,
      :max_records,
      :marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] engine_defaults
    #   Contains the result of a successful invocation of the
    #   `DescribeEngineDefaultClusterParameters` operation.
    #   @return [Types::EngineDefaults]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/DescribeEngineDefaultClusterParametersResult AWS API Documentation
    #
    class DescribeEngineDefaultClusterParametersResult < Struct.new(
      :engine_defaults)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input to DescribeEventCategories.
    #
    # @note When making an API call, you may pass DescribeEventCategoriesMessage
    #   data as a hash:
    #
    #       {
    #         source_type: "String",
    #         filters: [
    #           {
    #             name: "String", # required
    #             values: ["String"], # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] source_type
    #   The type of source that is generating the events.
    #
    #   Valid values: `db-instance`, `db-parameter-group`,
    #   `db-security-group`, `db-snapshot`
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   This parameter is not currently supported.
    #   @return [Array<Types::Filter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/DescribeEventCategoriesMessage AWS API Documentation
    #
    class DescribeEventCategoriesMessage < Struct.new(
      :source_type,
      :filters)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input to DescribeEvents.
    #
    # @note When making an API call, you may pass DescribeEventsMessage
    #   data as a hash:
    #
    #       {
    #         source_identifier: "String",
    #         source_type: "db-instance", # accepts db-instance, db-parameter-group, db-security-group, db-snapshot, db-cluster, db-cluster-snapshot
    #         start_time: Time.now,
    #         end_time: Time.now,
    #         duration: 1,
    #         event_categories: ["String"],
    #         filters: [
    #           {
    #             name: "String", # required
    #             values: ["String"], # required
    #           },
    #         ],
    #         max_records: 1,
    #         marker: "String",
    #       }
    #
    # @!attribute [rw] source_identifier
    #   The identifier of the event source for which events are returned. If
    #   not specified, then all sources are included in the response.
    #
    #   Constraints:
    #
    #   * If `SourceIdentifier` is provided, `SourceType` must also be
    #     provided.
    #
    #   * If the source type is `DBInstance`, a `DBInstanceIdentifier` must
    #     be provided.
    #
    #   * If the source type is `DBSecurityGroup`, a `DBSecurityGroupName`
    #     must be provided.
    #
    #   * If the source type is `DBParameterGroup`, a `DBParameterGroupName`
    #     must be provided.
    #
    #   * If the source type is `DBSnapshot`, a `DBSnapshotIdentifier` must
    #     be provided.
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens.
    #   @return [String]
    #
    # @!attribute [rw] source_type
    #   The event source to retrieve events for. If no value is specified,
    #   all events are returned.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The beginning of the time interval to retrieve events for, specified
    #   in ISO 8601 format.
    #
    #   Example: 2009-07-08T18:00Z
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The end of the time interval for which to retrieve events, specified
    #   in ISO 8601 format.
    #
    #   Example: 2009-07-08T18:00Z
    #   @return [Time]
    #
    # @!attribute [rw] duration
    #   The number of minutes to retrieve events for.
    #
    #   Default: 60
    #   @return [Integer]
    #
    # @!attribute [rw] event_categories
    #   A list of event categories that trigger notifications for an event
    #   notification subscription.
    #   @return [Array<String>]
    #
    # @!attribute [rw] filters
    #   This parameter is not currently supported.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token (marker) is included in the response so that the remaining
    #   results can be retrieved.
    #
    #   Default: 100
    #
    #   Constraints: Minimum 20, maximum 100.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond
    #   the marker, up to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/DescribeEventsMessage AWS API Documentation
    #
    class DescribeEventsMessage < Struct.new(
      :source_identifier,
      :source_type,
      :start_time,
      :end_time,
      :duration,
      :event_categories,
      :filters,
      :max_records,
      :marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input to DescribeOrderableDBInstanceOptions.
    #
    # @note When making an API call, you may pass DescribeOrderableDBInstanceOptionsMessage
    #   data as a hash:
    #
    #       {
    #         engine: "String", # required
    #         engine_version: "String",
    #         db_instance_class: "String",
    #         license_model: "String",
    #         vpc: false,
    #         filters: [
    #           {
    #             name: "String", # required
    #             values: ["String"], # required
    #           },
    #         ],
    #         max_records: 1,
    #         marker: "String",
    #       }
    #
    # @!attribute [rw] engine
    #   The name of the engine to retrieve instance options for.
    #   @return [String]
    #
    # @!attribute [rw] engine_version
    #   The engine version filter value. Specify this parameter to show only
    #   the available offerings that match the specified engine version.
    #   @return [String]
    #
    # @!attribute [rw] db_instance_class
    #   The instance class filter value. Specify this parameter to show only
    #   the available offerings that match the specified instance class.
    #   @return [String]
    #
    # @!attribute [rw] license_model
    #   The license model filter value. Specify this parameter to show only
    #   the available offerings that match the specified license model.
    #   @return [String]
    #
    # @!attribute [rw] vpc
    #   The virtual private cloud (VPC) filter value. Specify this parameter
    #   to show only the available VPC or non-VPC offerings.
    #   @return [Boolean]
    #
    # @!attribute [rw] filters
    #   This parameter is not currently supported.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token (marker) is included in the response so that the remaining
    #   results can be retrieved.
    #
    #   Default: 100
    #
    #   Constraints: Minimum 20, maximum 100.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond
    #   the marker, up to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/DescribeOrderableDBInstanceOptionsMessage AWS API Documentation
    #
    class DescribeOrderableDBInstanceOptionsMessage < Struct.new(
      :engine,
      :engine_version,
      :db_instance_class,
      :license_model,
      :vpc,
      :filters,
      :max_records,
      :marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input to DescribePendingMaintenanceActions.
    #
    # @note When making an API call, you may pass DescribePendingMaintenanceActionsMessage
    #   data as a hash:
    #
    #       {
    #         resource_identifier: "String",
    #         filters: [
    #           {
    #             name: "String", # required
    #             values: ["String"], # required
    #           },
    #         ],
    #         marker: "String",
    #         max_records: 1,
    #       }
    #
    # @!attribute [rw] resource_identifier
    #   The ARN of a resource to return pending maintenance actions for.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   A filter that specifies one or more resources to return pending
    #   maintenance actions for.
    #
    #   Supported filters:
    #
    #   * `db-cluster-id` - Accepts cluster identifiers and cluster Amazon
    #     Resource Names (ARNs). The results list includes only pending
    #     maintenance actions for the clusters identified by these ARNs.
    #
    #   * `db-instance-id` - Accepts instance identifiers and instance ARNs.
    #     The results list includes only pending maintenance actions for the
    #     DB instances identified by these ARNs.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond
    #   the marker, up to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token (marker) is included in the response so that the remaining
    #   results can be retrieved.
    #
    #   Default: 100
    #
    #   Constraints: Minimum 20, maximum 100.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/DescribePendingMaintenanceActionsMessage AWS API Documentation
    #
    class DescribePendingMaintenanceActionsMessage < Struct.new(
      :resource_identifier,
      :filters,
      :marker,
      :max_records)
      SENSITIVE = []
      include Aws::Structure
    end

    # Network information for accessing a cluster or instance. Client
    # programs must specify a valid endpoint to access these Amazon
    # DocumentDB resources.
    #
    # @!attribute [rw] address
    #   Specifies the DNS address of the instance.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   Specifies the port that the database engine is listening on.
    #   @return [Integer]
    #
    # @!attribute [rw] hosted_zone_id
    #   Specifies the ID that Amazon Route 53 assigns when you create a
    #   hosted zone.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/Endpoint AWS API Documentation
    #
    class Endpoint < Struct.new(
      :address,
      :port,
      :hosted_zone_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the result of a successful invocation of the
    # `DescribeEngineDefaultClusterParameters` operation.
    #
    # @!attribute [rw] db_parameter_group_family
    #   The name of the cluster parameter group family to return the engine
    #   parameter information for.
    #   @return [String]
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond
    #   the marker, up to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   The parameters of a particular cluster parameter group family.
    #   @return [Array<Types::Parameter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/EngineDefaults AWS API Documentation
    #
    class EngineDefaults < Struct.new(
      :db_parameter_group_family,
      :marker,
      :parameters)
      SENSITIVE = []
      include Aws::Structure
    end

    # Detailed information about an event.
    #
    # @!attribute [rw] source_identifier
    #   Provides the identifier for the source of the event.
    #   @return [String]
    #
    # @!attribute [rw] source_type
    #   Specifies the source type for this event.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   Provides the text of this event.
    #   @return [String]
    #
    # @!attribute [rw] event_categories
    #   Specifies the category for the event.
    #   @return [Array<String>]
    #
    # @!attribute [rw] date
    #   Specifies the date and time of the event.
    #   @return [Time]
    #
    # @!attribute [rw] source_arn
    #   The Amazon Resource Name (ARN) for the event.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/Event AWS API Documentation
    #
    class Event < Struct.new(
      :source_identifier,
      :source_type,
      :message,
      :event_categories,
      :date,
      :source_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # An event source type, accompanied by one or more event category names.
    #
    # @!attribute [rw] source_type
    #   The source type that the returned categories belong to.
    #   @return [String]
    #
    # @!attribute [rw] event_categories
    #   The event categories for the specified source type.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/EventCategoriesMap AWS API Documentation
    #
    class EventCategoriesMap < Struct.new(
      :source_type,
      :event_categories)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the output of DescribeEventCategories.
    #
    # @!attribute [rw] event_categories_map_list
    #   A list of event category maps.
    #   @return [Array<Types::EventCategoriesMap>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/EventCategoriesMessage AWS API Documentation
    #
    class EventCategoriesMessage < Struct.new(
      :event_categories_map_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the output of DescribeEvents.
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond
    #   the marker, up to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @!attribute [rw] events
    #   Detailed information about one or more events.
    #   @return [Array<Types::Event>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/EventsMessage AWS API Documentation
    #
    class EventsMessage < Struct.new(
      :marker,
      :events)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input to FailoverDBCluster.
    #
    # @note When making an API call, you may pass FailoverDBClusterMessage
    #   data as a hash:
    #
    #       {
    #         db_cluster_identifier: "String",
    #         target_db_instance_identifier: "String",
    #       }
    #
    # @!attribute [rw] db_cluster_identifier
    #   A cluster identifier to force a failover for. This parameter is not
    #   case sensitive.
    #
    #   Constraints:
    #
    #   * Must match the identifier of an existing `DBCluster`.
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] target_db_instance_identifier
    #   The name of the instance to promote to the primary instance.
    #
    #   You must specify the instance identifier for an Amazon DocumentDB
    #   replica in the cluster. For example, `mydbcluster-replica1`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/FailoverDBClusterMessage AWS API Documentation
    #
    class FailoverDBClusterMessage < Struct.new(
      :db_cluster_identifier,
      :target_db_instance_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_cluster
    #   Detailed information about a cluster.
    #   @return [Types::DBCluster]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/FailoverDBClusterResult AWS API Documentation
    #
    class FailoverDBClusterResult < Struct.new(
      :db_cluster)
      SENSITIVE = []
      include Aws::Structure
    end

    # A named set of filter values, used to return a more specific list of
    # results. You can use a filter to match a set of resources by specific
    # criteria, such as IDs.
    #
    # Wildcards are not supported in filters.
    #
    # @note When making an API call, you may pass Filter
    #   data as a hash:
    #
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the filter. Filter names are case sensitive.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   One or more filter values. Filter values are case sensitive.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/Filter AWS API Documentation
    #
    class Filter < Struct.new(
      :name,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request would cause you to exceed the allowed number of instances.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/InstanceQuotaExceededFault AWS API Documentation
    #
    class InstanceQuotaExceededFault < Aws::EmptyStructure; end

    # The cluster doesn't have enough capacity for the current operation.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/InsufficientDBClusterCapacityFault AWS API Documentation
    #
    class InsufficientDBClusterCapacityFault < Aws::EmptyStructure; end

    # The specified instance class isn't available in the specified
    # Availability Zone.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/InsufficientDBInstanceCapacityFault AWS API Documentation
    #
    class InsufficientDBInstanceCapacityFault < Aws::EmptyStructure; end

    # There is not enough storage available for the current action. You
    # might be able to resolve this error by updating your subnet group to
    # use different Availability Zones that have more storage available.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/InsufficientStorageClusterCapacityFault AWS API Documentation
    #
    class InsufficientStorageClusterCapacityFault < Aws::EmptyStructure; end

    # The provided value isn't a valid cluster snapshot state.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/InvalidDBClusterSnapshotStateFault AWS API Documentation
    #
    class InvalidDBClusterSnapshotStateFault < Aws::EmptyStructure; end

    # The cluster isn't in a valid state.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/InvalidDBClusterStateFault AWS API Documentation
    #
    class InvalidDBClusterStateFault < Aws::EmptyStructure; end

    # The specified instance isn't in the *available* state.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/InvalidDBInstanceStateFault AWS API Documentation
    #
    class InvalidDBInstanceStateFault < Aws::EmptyStructure; end

    # The parameter group is in use, or it is in a state that is not valid.
    # If you are trying to delete the parameter group, you can't delete it
    # when the parameter group is in this state.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/InvalidDBParameterGroupStateFault AWS API Documentation
    #
    class InvalidDBParameterGroupStateFault < Aws::EmptyStructure; end

    # The state of the security group doesn't allow deletion.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/InvalidDBSecurityGroupStateFault AWS API Documentation
    #
    class InvalidDBSecurityGroupStateFault < Aws::EmptyStructure; end

    # The state of the snapshot doesn't allow deletion.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/InvalidDBSnapshotStateFault AWS API Documentation
    #
    class InvalidDBSnapshotStateFault < Aws::EmptyStructure; end

    # The subnet group can't be deleted because it's in use.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/InvalidDBSubnetGroupStateFault AWS API Documentation
    #
    class InvalidDBSubnetGroupStateFault < Aws::EmptyStructure; end

    # The subnet isn't in the *available* state.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/InvalidDBSubnetStateFault AWS API Documentation
    #
    class InvalidDBSubnetStateFault < Aws::EmptyStructure; end

    # You cannot restore from a virtual private cloud (VPC) backup to a
    # non-VPC DB instance.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/InvalidRestoreFault AWS API Documentation
    #
    class InvalidRestoreFault < Aws::EmptyStructure; end

    # The requested subnet is not valid, or multiple subnets were requested
    # that are not all in a common virtual private cloud (VPC).
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/InvalidSubnet AWS API Documentation
    #
    class InvalidSubnet < Aws::EmptyStructure; end

    # The subnet group doesn't cover all Availability Zones after it is
    # created because of changes that were made.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/InvalidVPCNetworkStateFault AWS API Documentation
    #
    class InvalidVPCNetworkStateFault < Aws::EmptyStructure; end

    # An error occurred when accessing an AWS KMS key.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/KMSKeyNotAccessibleFault AWS API Documentation
    #
    class KMSKeyNotAccessibleFault < Aws::EmptyStructure; end

    # Represents the input to ListTagsForResource.
    #
    # @note When making an API call, you may pass ListTagsForResourceMessage
    #   data as a hash:
    #
    #       {
    #         resource_name: "String", # required
    #         filters: [
    #           {
    #             name: "String", # required
    #             values: ["String"], # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] resource_name
    #   The Amazon DocumentDB resource with tags to be listed. This value is
    #   an Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   This parameter is not currently supported.
    #   @return [Array<Types::Filter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/ListTagsForResourceMessage AWS API Documentation
    #
    class ListTagsForResourceMessage < Struct.new(
      :resource_name,
      :filters)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input to ModifyDBCluster.
    #
    # @note When making an API call, you may pass ModifyDBClusterMessage
    #   data as a hash:
    #
    #       {
    #         db_cluster_identifier: "String", # required
    #         new_db_cluster_identifier: "String",
    #         apply_immediately: false,
    #         backup_retention_period: 1,
    #         db_cluster_parameter_group_name: "String",
    #         vpc_security_group_ids: ["String"],
    #         port: 1,
    #         master_user_password: "String",
    #         preferred_backup_window: "String",
    #         preferred_maintenance_window: "String",
    #         cloudwatch_logs_export_configuration: {
    #           enable_log_types: ["String"],
    #           disable_log_types: ["String"],
    #         },
    #         engine_version: "String",
    #         deletion_protection: false,
    #       }
    #
    # @!attribute [rw] db_cluster_identifier
    #   The cluster identifier for the cluster that is being modified. This
    #   parameter is not case sensitive.
    #
    #   Constraints:
    #
    #   * Must match the identifier of an existing `DBCluster`.
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] new_db_cluster_identifier
    #   The new cluster identifier for the cluster when renaming a cluster.
    #   This value is stored as a lowercase string.
    #
    #   Constraints:
    #
    #   * Must contain from 1 to 63 letters, numbers, or hyphens.
    #
    #   * The first character must be a letter.
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens.
    #
    #   Example: `my-cluster2`
    #   @return [String]
    #
    # @!attribute [rw] apply_immediately
    #   A value that specifies whether the changes in this request and any
    #   pending changes are asynchronously applied as soon as possible,
    #   regardless of the `PreferredMaintenanceWindow` setting for the
    #   cluster. If this parameter is set to `false`, changes to the cluster
    #   are applied during the next maintenance window.
    #
    #   The `ApplyImmediately` parameter affects only the
    #   `NewDBClusterIdentifier` and `MasterUserPassword` values. If you set
    #   this parameter value to `false`, the changes to the
    #   `NewDBClusterIdentifier` and `MasterUserPassword` values are applied
    #   during the next maintenance window. All other changes are applied
    #   immediately, regardless of the value of the `ApplyImmediately`
    #   parameter.
    #
    #   Default: `false`
    #   @return [Boolean]
    #
    # @!attribute [rw] backup_retention_period
    #   The number of days for which automated backups are retained. You
    #   must specify a minimum value of 1.
    #
    #   Default: 1
    #
    #   Constraints:
    #
    #   * Must be a value from 1 to 35.
    #
    #   ^
    #   @return [Integer]
    #
    # @!attribute [rw] db_cluster_parameter_group_name
    #   The name of the cluster parameter group to use for the cluster.
    #   @return [String]
    #
    # @!attribute [rw] vpc_security_group_ids
    #   A list of virtual private cloud (VPC) security groups that the
    #   cluster will belong to.
    #   @return [Array<String>]
    #
    # @!attribute [rw] port
    #   The port number on which the cluster accepts connections.
    #
    #   Constraints: Must be a value from `1150` to `65535`.
    #
    #   Default: The same port as the original cluster.
    #   @return [Integer]
    #
    # @!attribute [rw] master_user_password
    #   The password for the master database user. This password can contain
    #   any printable ASCII character except forward slash (/), double quote
    #   ("), or the "at" symbol (@).
    #
    #   Constraints: Must contain from 8 to 100 characters.
    #   @return [String]
    #
    # @!attribute [rw] preferred_backup_window
    #   The daily time range during which automated backups are created if
    #   automated backups are enabled, using the `BackupRetentionPeriod`
    #   parameter.
    #
    #   The default is a 30-minute window selected at random from an 8-hour
    #   block of time for each AWS Region.
    #
    #   Constraints:
    #
    #   * Must be in the format `hh24:mi-hh24:mi`.
    #
    #   * Must be in Universal Coordinated Time (UTC).
    #
    #   * Must not conflict with the preferred maintenance window.
    #
    #   * Must be at least 30 minutes.
    #   @return [String]
    #
    # @!attribute [rw] preferred_maintenance_window
    #   The weekly time range during which system maintenance can occur, in
    #   Universal Coordinated Time (UTC).
    #
    #   Format: `ddd:hh24:mi-ddd:hh24:mi`
    #
    #   The default is a 30-minute window selected at random from an 8-hour
    #   block of time for each AWS Region, occurring on a random day of the
    #   week.
    #
    #   Valid days: Mon, Tue, Wed, Thu, Fri, Sat, Sun
    #
    #   Constraints: Minimum 30-minute window.
    #   @return [String]
    #
    # @!attribute [rw] cloudwatch_logs_export_configuration
    #   The configuration setting for the log types to be enabled for export
    #   to Amazon CloudWatch Logs for a specific instance or cluster. The
    #   `EnableLogTypes` and `DisableLogTypes` arrays determine which logs
    #   are exported (or not exported) to CloudWatch Logs.
    #   @return [Types::CloudwatchLogsExportConfiguration]
    #
    # @!attribute [rw] engine_version
    #   The version number of the database engine to which you want to
    #   upgrade. Changing this parameter results in an outage. The change is
    #   applied during the next maintenance window unless the
    #   `ApplyImmediately` parameter is set to `true`.
    #   @return [String]
    #
    # @!attribute [rw] deletion_protection
    #   Specifies whether this cluster can be deleted. If
    #   `DeletionProtection` is enabled, the cluster cannot be deleted
    #   unless it is modified and `DeletionProtection` is disabled.
    #   `DeletionProtection` protects clusters from being accidentally
    #   deleted.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/ModifyDBClusterMessage AWS API Documentation
    #
    class ModifyDBClusterMessage < Struct.new(
      :db_cluster_identifier,
      :new_db_cluster_identifier,
      :apply_immediately,
      :backup_retention_period,
      :db_cluster_parameter_group_name,
      :vpc_security_group_ids,
      :port,
      :master_user_password,
      :preferred_backup_window,
      :preferred_maintenance_window,
      :cloudwatch_logs_export_configuration,
      :engine_version,
      :deletion_protection)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input to ModifyDBClusterParameterGroup.
    #
    # @note When making an API call, you may pass ModifyDBClusterParameterGroupMessage
    #   data as a hash:
    #
    #       {
    #         db_cluster_parameter_group_name: "String", # required
    #         parameters: [ # required
    #           {
    #             parameter_name: "String",
    #             parameter_value: "String",
    #             description: "String",
    #             source: "String",
    #             apply_type: "String",
    #             data_type: "String",
    #             allowed_values: "String",
    #             is_modifiable: false,
    #             minimum_engine_version: "String",
    #             apply_method: "immediate", # accepts immediate, pending-reboot
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] db_cluster_parameter_group_name
    #   The name of the cluster parameter group to modify.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   A list of parameters in the cluster parameter group to modify.
    #   @return [Array<Types::Parameter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/ModifyDBClusterParameterGroupMessage AWS API Documentation
    #
    class ModifyDBClusterParameterGroupMessage < Struct.new(
      :db_cluster_parameter_group_name,
      :parameters)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_cluster
    #   Detailed information about a cluster.
    #   @return [Types::DBCluster]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/ModifyDBClusterResult AWS API Documentation
    #
    class ModifyDBClusterResult < Struct.new(
      :db_cluster)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input to ModifyDBClusterSnapshotAttribute.
    #
    # @note When making an API call, you may pass ModifyDBClusterSnapshotAttributeMessage
    #   data as a hash:
    #
    #       {
    #         db_cluster_snapshot_identifier: "String", # required
    #         attribute_name: "String", # required
    #         values_to_add: ["String"],
    #         values_to_remove: ["String"],
    #       }
    #
    # @!attribute [rw] db_cluster_snapshot_identifier
    #   The identifier for the cluster snapshot to modify the attributes
    #   for.
    #   @return [String]
    #
    # @!attribute [rw] attribute_name
    #   The name of the cluster snapshot attribute to modify.
    #
    #   To manage authorization for other AWS accounts to copy or restore a
    #   manual cluster snapshot, set this value to `restore`.
    #   @return [String]
    #
    # @!attribute [rw] values_to_add
    #   A list of cluster snapshot attributes to add to the attribute
    #   specified by `AttributeName`.
    #
    #   To authorize other AWS accounts to copy or restore a manual cluster
    #   snapshot, set this list to include one or more AWS account IDs. To
    #   make the manual cluster snapshot restorable by any AWS account, set
    #   it to `all`. Do not add the `all` value for any manual cluster
    #   snapshots that contain private information that you don't want to
    #   be available to all AWS accounts.
    #   @return [Array<String>]
    #
    # @!attribute [rw] values_to_remove
    #   A list of cluster snapshot attributes to remove from the attribute
    #   specified by `AttributeName`.
    #
    #   To remove authorization for other AWS accounts to copy or restore a
    #   manual cluster snapshot, set this list to include one or more AWS
    #   account identifiers. To remove authorization for any AWS account to
    #   copy or restore the cluster snapshot, set it to `all` . If you
    #   specify `all`, an AWS account whose account ID is explicitly added
    #   to the `restore` attribute can still copy or restore a manual
    #   cluster snapshot.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/ModifyDBClusterSnapshotAttributeMessage AWS API Documentation
    #
    class ModifyDBClusterSnapshotAttributeMessage < Struct.new(
      :db_cluster_snapshot_identifier,
      :attribute_name,
      :values_to_add,
      :values_to_remove)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_cluster_snapshot_attributes_result
    #   Detailed information about the attributes that are associated with a
    #   cluster snapshot.
    #   @return [Types::DBClusterSnapshotAttributesResult]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/ModifyDBClusterSnapshotAttributeResult AWS API Documentation
    #
    class ModifyDBClusterSnapshotAttributeResult < Struct.new(
      :db_cluster_snapshot_attributes_result)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input to ModifyDBInstance.
    #
    # @note When making an API call, you may pass ModifyDBInstanceMessage
    #   data as a hash:
    #
    #       {
    #         db_instance_identifier: "String", # required
    #         db_instance_class: "String",
    #         apply_immediately: false,
    #         preferred_maintenance_window: "String",
    #         auto_minor_version_upgrade: false,
    #         new_db_instance_identifier: "String",
    #         ca_certificate_identifier: "String",
    #         promotion_tier: 1,
    #       }
    #
    # @!attribute [rw] db_instance_identifier
    #   The instance identifier. This value is stored as a lowercase string.
    #
    #   Constraints:
    #
    #   * Must match the identifier of an existing `DBInstance`.
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] db_instance_class
    #   The new compute and memory capacity of the instance; for example,
    #   `db.r5.large`. Not all instance classes are available in all AWS
    #   Regions.
    #
    #   If you modify the instance class, an outage occurs during the
    #   change. The change is applied during the next maintenance window,
    #   unless `ApplyImmediately` is specified as `true` for this request.
    #
    #   Default: Uses existing setting.
    #   @return [String]
    #
    # @!attribute [rw] apply_immediately
    #   Specifies whether the modifications in this request and any pending
    #   modifications are asynchronously applied as soon as possible,
    #   regardless of the `PreferredMaintenanceWindow` setting for the
    #   instance.
    #
    #   If this parameter is set to `false`, changes to the instance are
    #   applied during the next maintenance window. Some parameter changes
    #   can cause an outage and are applied on the next reboot.
    #
    #   Default: `false`
    #   @return [Boolean]
    #
    # @!attribute [rw] preferred_maintenance_window
    #   The weekly time range (in UTC) during which system maintenance can
    #   occur, which might result in an outage. Changing this parameter
    #   doesn't result in an outage except in the following situation, and
    #   the change is asynchronously applied as soon as possible. If there
    #   are pending actions that cause a reboot, and the maintenance window
    #   is changed to include the current time, changing this parameter
    #   causes a reboot of the instance. If you are moving this window to
    #   the current time, there must be at least 30 minutes between the
    #   current time and end of the window to ensure that pending changes
    #   are applied.
    #
    #   Default: Uses existing setting.
    #
    #   Format: `ddd:hh24:mi-ddd:hh24:mi`
    #
    #   Valid days: Mon, Tue, Wed, Thu, Fri, Sat, Sun
    #
    #   Constraints: Must be at least 30 minutes.
    #   @return [String]
    #
    # @!attribute [rw] auto_minor_version_upgrade
    #   Indicates that minor version upgrades are applied automatically to
    #   the instance during the maintenance window. Changing this parameter
    #   doesn't result in an outage except in the following case, and the
    #   change is asynchronously applied as soon as possible. An outage
    #   results if this parameter is set to `true` during the maintenance
    #   window, and a newer minor version is available, and Amazon
    #   DocumentDB has enabled automatic patching for that engine version.
    #   @return [Boolean]
    #
    # @!attribute [rw] new_db_instance_identifier
    #   The new instance identifier for the instance when renaming an
    #   instance. When you change the instance identifier, an instance
    #   reboot occurs immediately if you set `Apply Immediately` to `true`.
    #   It occurs during the next maintenance window if you set `Apply
    #   Immediately` to `false`. This value is stored as a lowercase string.
    #
    #   Constraints:
    #
    #   * Must contain from 1 to 63 letters, numbers, or hyphens.
    #
    #   * The first character must be a letter.
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens.
    #
    #   Example: `mydbinstance`
    #   @return [String]
    #
    # @!attribute [rw] ca_certificate_identifier
    #   Indicates the certificate that needs to be associated with the
    #   instance.
    #   @return [String]
    #
    # @!attribute [rw] promotion_tier
    #   A value that specifies the order in which an Amazon DocumentDB
    #   replica is promoted to the primary instance after a failure of the
    #   existing primary instance.
    #
    #   Default: 1
    #
    #   Valid values: 0-15
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/ModifyDBInstanceMessage AWS API Documentation
    #
    class ModifyDBInstanceMessage < Struct.new(
      :db_instance_identifier,
      :db_instance_class,
      :apply_immediately,
      :preferred_maintenance_window,
      :auto_minor_version_upgrade,
      :new_db_instance_identifier,
      :ca_certificate_identifier,
      :promotion_tier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_instance
    #   Detailed information about an instance.
    #   @return [Types::DBInstance]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/ModifyDBInstanceResult AWS API Documentation
    #
    class ModifyDBInstanceResult < Struct.new(
      :db_instance)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input to ModifyDBSubnetGroup.
    #
    # @note When making an API call, you may pass ModifyDBSubnetGroupMessage
    #   data as a hash:
    #
    #       {
    #         db_subnet_group_name: "String", # required
    #         db_subnet_group_description: "String",
    #         subnet_ids: ["String"], # required
    #       }
    #
    # @!attribute [rw] db_subnet_group_name
    #   The name for the subnet group. This value is stored as a lowercase
    #   string. You can't modify the default subnet group.
    #
    #   Constraints: Must match the name of an existing `DBSubnetGroup`.
    #   Must not be default.
    #
    #   Example: `mySubnetgroup`
    #   @return [String]
    #
    # @!attribute [rw] db_subnet_group_description
    #   The description for the subnet group.
    #   @return [String]
    #
    # @!attribute [rw] subnet_ids
    #   The Amazon EC2 subnet IDs for the subnet group.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/ModifyDBSubnetGroupMessage AWS API Documentation
    #
    class ModifyDBSubnetGroupMessage < Struct.new(
      :db_subnet_group_name,
      :db_subnet_group_description,
      :subnet_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_subnet_group
    #   Detailed information about a subnet group.
    #   @return [Types::DBSubnetGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/ModifyDBSubnetGroupResult AWS API Documentation
    #
    class ModifyDBSubnetGroupResult < Struct.new(
      :db_subnet_group)
      SENSITIVE = []
      include Aws::Structure
    end

    # The options that are available for an instance.
    #
    # @!attribute [rw] engine
    #   The engine type of an instance.
    #   @return [String]
    #
    # @!attribute [rw] engine_version
    #   The engine version of an instance.
    #   @return [String]
    #
    # @!attribute [rw] db_instance_class
    #   The instance class for an instance.
    #   @return [String]
    #
    # @!attribute [rw] license_model
    #   The license model for an instance.
    #   @return [String]
    #
    # @!attribute [rw] availability_zones
    #   A list of Availability Zones for an instance.
    #   @return [Array<Types::AvailabilityZone>]
    #
    # @!attribute [rw] vpc
    #   Indicates whether an instance is in a virtual private cloud (VPC).
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/OrderableDBInstanceOption AWS API Documentation
    #
    class OrderableDBInstanceOption < Struct.new(
      :engine,
      :engine_version,
      :db_instance_class,
      :license_model,
      :availability_zones,
      :vpc)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the output of DescribeOrderableDBInstanceOptions.
    #
    # @!attribute [rw] orderable_db_instance_options
    #   The options that are available for a particular orderable instance.
    #   @return [Array<Types::OrderableDBInstanceOption>]
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond
    #   the marker, up to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/OrderableDBInstanceOptionsMessage AWS API Documentation
    #
    class OrderableDBInstanceOptionsMessage < Struct.new(
      :orderable_db_instance_options,
      :marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # Detailed information about an individual parameter.
    #
    # @note When making an API call, you may pass Parameter
    #   data as a hash:
    #
    #       {
    #         parameter_name: "String",
    #         parameter_value: "String",
    #         description: "String",
    #         source: "String",
    #         apply_type: "String",
    #         data_type: "String",
    #         allowed_values: "String",
    #         is_modifiable: false,
    #         minimum_engine_version: "String",
    #         apply_method: "immediate", # accepts immediate, pending-reboot
    #       }
    #
    # @!attribute [rw] parameter_name
    #   Specifies the name of the parameter.
    #   @return [String]
    #
    # @!attribute [rw] parameter_value
    #   Specifies the value of the parameter.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Provides a description of the parameter.
    #   @return [String]
    #
    # @!attribute [rw] source
    #   Indicates the source of the parameter value.
    #   @return [String]
    #
    # @!attribute [rw] apply_type
    #   Specifies the engine-specific parameters type.
    #   @return [String]
    #
    # @!attribute [rw] data_type
    #   Specifies the valid data type for the parameter.
    #   @return [String]
    #
    # @!attribute [rw] allowed_values
    #   Specifies the valid range of values for the parameter.
    #   @return [String]
    #
    # @!attribute [rw] is_modifiable
    #   Indicates whether (`true`) or not (`false`) the parameter can be
    #   modified. Some parameters have security or operational implications
    #   that prevent them from being changed.
    #   @return [Boolean]
    #
    # @!attribute [rw] minimum_engine_version
    #   The earliest engine version to which the parameter can apply.
    #   @return [String]
    #
    # @!attribute [rw] apply_method
    #   Indicates when to apply parameter updates.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/Parameter AWS API Documentation
    #
    class Parameter < Struct.new(
      :parameter_name,
      :parameter_value,
      :description,
      :source,
      :apply_type,
      :data_type,
      :allowed_values,
      :is_modifiable,
      :minimum_engine_version,
      :apply_method)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of the log types whose configuration is still pending. These
    # log types are in the process of being activated or deactivated.
    #
    # @!attribute [rw] log_types_to_enable
    #   Log types that are in the process of being deactivated. After they
    #   are deactivated, these log types aren't exported to CloudWatch
    #   Logs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] log_types_to_disable
    #   Log types that are in the process of being enabled. After they are
    #   enabled, these log types are exported to Amazon CloudWatch Logs.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/PendingCloudwatchLogsExports AWS API Documentation
    #
    class PendingCloudwatchLogsExports < Struct.new(
      :log_types_to_enable,
      :log_types_to_disable)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about a pending maintenance action for a
    # resource.
    #
    # @!attribute [rw] action
    #   The type of pending maintenance action that is available for the
    #   resource.
    #   @return [String]
    #
    # @!attribute [rw] auto_applied_after_date
    #   The date of the maintenance window when the action is applied. The
    #   maintenance action is applied to the resource during its first
    #   maintenance window after this date. If this date is specified, any
    #   `next-maintenance` opt-in requests are ignored.
    #   @return [Time]
    #
    # @!attribute [rw] forced_apply_date
    #   The date when the maintenance action is automatically applied. The
    #   maintenance action is applied to the resource on this date
    #   regardless of the maintenance window for the resource. If this date
    #   is specified, any `immediate` opt-in requests are ignored.
    #   @return [Time]
    #
    # @!attribute [rw] opt_in_status
    #   Indicates the type of opt-in request that has been received for the
    #   resource.
    #   @return [String]
    #
    # @!attribute [rw] current_apply_date
    #   The effective date when the pending maintenance action is applied to
    #   the resource.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   A description providing more detail about the maintenance action.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/PendingMaintenanceAction AWS API Documentation
    #
    class PendingMaintenanceAction < Struct.new(
      :action,
      :auto_applied_after_date,
      :forced_apply_date,
      :opt_in_status,
      :current_apply_date,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the output of DescribePendingMaintenanceActions.
    #
    # @!attribute [rw] pending_maintenance_actions
    #   The maintenance actions to be applied.
    #   @return [Array<Types::ResourcePendingMaintenanceActions>]
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond
    #   the marker, up to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/PendingMaintenanceActionsMessage AWS API Documentation
    #
    class PendingMaintenanceActionsMessage < Struct.new(
      :pending_maintenance_actions,
      :marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # One or more modified settings for an instance. These modified settings
    # have been requested, but haven't been applied yet.
    #
    # @!attribute [rw] db_instance_class
    #   Contains the new `DBInstanceClass` for the instance that will be
    #   applied or is currently being applied.
    #   @return [String]
    #
    # @!attribute [rw] allocated_storage
    #   Contains the new `AllocatedStorage` size for then instance that will
    #   be applied or is currently being applied.
    #   @return [Integer]
    #
    # @!attribute [rw] master_user_password
    #   Contains the pending or currently in-progress change of the master
    #   credentials for the instance.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   Specifies the pending port for the instance.
    #   @return [Integer]
    #
    # @!attribute [rw] backup_retention_period
    #   Specifies the pending number of days for which automated backups are
    #   retained.
    #   @return [Integer]
    #
    # @!attribute [rw] multi_az
    #   Indicates that the Single-AZ instance is to change to a Multi-AZ
    #   deployment.
    #   @return [Boolean]
    #
    # @!attribute [rw] engine_version
    #   Indicates the database engine version.
    #   @return [String]
    #
    # @!attribute [rw] license_model
    #   The license model for the instance.
    #
    #   Valid values: `license-included`, `bring-your-own-license`,
    #   `general-public-license`
    #   @return [String]
    #
    # @!attribute [rw] iops
    #   Specifies the new Provisioned IOPS value for the instance that will
    #   be applied or is currently being applied.
    #   @return [Integer]
    #
    # @!attribute [rw] db_instance_identifier
    #   Contains the new `DBInstanceIdentifier` for the instance that will
    #   be applied or is currently being applied.
    #   @return [String]
    #
    # @!attribute [rw] storage_type
    #   Specifies the storage type to be associated with the instance.
    #   @return [String]
    #
    # @!attribute [rw] ca_certificate_identifier
    #   Specifies the identifier of the certificate authority (CA)
    #   certificate for the DB instance.
    #   @return [String]
    #
    # @!attribute [rw] db_subnet_group_name
    #   The new subnet group for the instance.
    #   @return [String]
    #
    # @!attribute [rw] pending_cloudwatch_logs_exports
    #   A list of the log types whose configuration is still pending. These
    #   log types are in the process of being activated or deactivated.
    #   @return [Types::PendingCloudwatchLogsExports]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/PendingModifiedValues AWS API Documentation
    #
    class PendingModifiedValues < Struct.new(
      :db_instance_class,
      :allocated_storage,
      :master_user_password,
      :port,
      :backup_retention_period,
      :multi_az,
      :engine_version,
      :license_model,
      :iops,
      :db_instance_identifier,
      :storage_type,
      :ca_certificate_identifier,
      :db_subnet_group_name,
      :pending_cloudwatch_logs_exports)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input to RebootDBInstance.
    #
    # @note When making an API call, you may pass RebootDBInstanceMessage
    #   data as a hash:
    #
    #       {
    #         db_instance_identifier: "String", # required
    #         force_failover: false,
    #       }
    #
    # @!attribute [rw] db_instance_identifier
    #   The instance identifier. This parameter is stored as a lowercase
    #   string.
    #
    #   Constraints:
    #
    #   * Must match the identifier of an existing `DBInstance`.
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] force_failover
    #   When `true`, the reboot is conducted through a Multi-AZ failover.
    #
    #   Constraint: You can't specify `true` if the instance is not
    #   configured for Multi-AZ.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/RebootDBInstanceMessage AWS API Documentation
    #
    class RebootDBInstanceMessage < Struct.new(
      :db_instance_identifier,
      :force_failover)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_instance
    #   Detailed information about an instance.
    #   @return [Types::DBInstance]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/RebootDBInstanceResult AWS API Documentation
    #
    class RebootDBInstanceResult < Struct.new(
      :db_instance)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input to RemoveTagsFromResource.
    #
    # @note When making an API call, you may pass RemoveTagsFromResourceMessage
    #   data as a hash:
    #
    #       {
    #         resource_name: "String", # required
    #         tag_keys: ["String"], # required
    #       }
    #
    # @!attribute [rw] resource_name
    #   The Amazon DocumentDB resource that the tags are removed from. This
    #   value is an Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The tag key (name) of the tag to be removed.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/RemoveTagsFromResourceMessage AWS API Documentation
    #
    class RemoveTagsFromResourceMessage < Struct.new(
      :resource_name,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input to ResetDBClusterParameterGroup.
    #
    # @note When making an API call, you may pass ResetDBClusterParameterGroupMessage
    #   data as a hash:
    #
    #       {
    #         db_cluster_parameter_group_name: "String", # required
    #         reset_all_parameters: false,
    #         parameters: [
    #           {
    #             parameter_name: "String",
    #             parameter_value: "String",
    #             description: "String",
    #             source: "String",
    #             apply_type: "String",
    #             data_type: "String",
    #             allowed_values: "String",
    #             is_modifiable: false,
    #             minimum_engine_version: "String",
    #             apply_method: "immediate", # accepts immediate, pending-reboot
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] db_cluster_parameter_group_name
    #   The name of the cluster parameter group to reset.
    #   @return [String]
    #
    # @!attribute [rw] reset_all_parameters
    #   A value that is set to `true` to reset all parameters in the cluster
    #   parameter group to their default values, and `false` otherwise. You
    #   can't use this parameter if there is a list of parameter names
    #   specified for the `Parameters` parameter.
    #   @return [Boolean]
    #
    # @!attribute [rw] parameters
    #   A list of parameter names in the cluster parameter group to reset to
    #   the default values. You can't use this parameter if the
    #   `ResetAllParameters` parameter is set to `true`.
    #   @return [Array<Types::Parameter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/ResetDBClusterParameterGroupMessage AWS API Documentation
    #
    class ResetDBClusterParameterGroupMessage < Struct.new(
      :db_cluster_parameter_group_name,
      :reset_all_parameters,
      :parameters)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified resource ID was not found.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/ResourceNotFoundFault AWS API Documentation
    #
    class ResourceNotFoundFault < Aws::EmptyStructure; end

    # Represents the output of ApplyPendingMaintenanceAction.
    #
    # @!attribute [rw] resource_identifier
    #   The Amazon Resource Name (ARN) of the resource that has pending
    #   maintenance actions.
    #   @return [String]
    #
    # @!attribute [rw] pending_maintenance_action_details
    #   A list that provides details about the pending maintenance actions
    #   for the resource.
    #   @return [Array<Types::PendingMaintenanceAction>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/ResourcePendingMaintenanceActions AWS API Documentation
    #
    class ResourcePendingMaintenanceActions < Struct.new(
      :resource_identifier,
      :pending_maintenance_action_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input to RestoreDBClusterFromSnapshot.
    #
    # @note When making an API call, you may pass RestoreDBClusterFromSnapshotMessage
    #   data as a hash:
    #
    #       {
    #         availability_zones: ["String"],
    #         db_cluster_identifier: "String", # required
    #         snapshot_identifier: "String", # required
    #         engine: "String", # required
    #         engine_version: "String",
    #         port: 1,
    #         db_subnet_group_name: "String",
    #         vpc_security_group_ids: ["String"],
    #         tags: [
    #           {
    #             key: "String",
    #             value: "String",
    #           },
    #         ],
    #         kms_key_id: "String",
    #         enable_cloudwatch_logs_exports: ["String"],
    #         deletion_protection: false,
    #       }
    #
    # @!attribute [rw] availability_zones
    #   Provides the list of Amazon EC2 Availability Zones that instances in
    #   the restored DB cluster can be created in.
    #   @return [Array<String>]
    #
    # @!attribute [rw] db_cluster_identifier
    #   The name of the cluster to create from the snapshot or cluster
    #   snapshot. This parameter isn't case sensitive.
    #
    #   Constraints:
    #
    #   * Must contain from 1 to 63 letters, numbers, or hyphens.
    #
    #   * The first character must be a letter.
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens.
    #
    #   Example: `my-snapshot-id`
    #   @return [String]
    #
    # @!attribute [rw] snapshot_identifier
    #   The identifier for the snapshot or cluster snapshot to restore from.
    #
    #   You can use either the name or the Amazon Resource Name (ARN) to
    #   specify a cluster snapshot. However, you can use only the ARN to
    #   specify a snapshot.
    #
    #   Constraints:
    #
    #   * Must match the identifier of an existing snapshot.
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] engine
    #   The database engine to use for the new cluster.
    #
    #   Default: The same as source.
    #
    #   Constraint: Must be compatible with the engine of the source.
    #   @return [String]
    #
    # @!attribute [rw] engine_version
    #   The version of the database engine to use for the new cluster.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The port number on which the new cluster accepts connections.
    #
    #   Constraints: Must be a value from `1150` to `65535`.
    #
    #   Default: The same port as the original cluster.
    #   @return [Integer]
    #
    # @!attribute [rw] db_subnet_group_name
    #   The name of the subnet group to use for the new cluster.
    #
    #   Constraints: If provided, must match the name of an existing
    #   `DBSubnetGroup`.
    #
    #   Example: `mySubnetgroup`
    #   @return [String]
    #
    # @!attribute [rw] vpc_security_group_ids
    #   A list of virtual private cloud (VPC) security groups that the new
    #   cluster will belong to.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   The tags to be assigned to the restored cluster.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] kms_key_id
    #   The AWS KMS key identifier to use when restoring an encrypted
    #   cluster from a DB snapshot or cluster snapshot.
    #
    #   The AWS KMS key identifier is the Amazon Resource Name (ARN) for the
    #   AWS KMS encryption key. If you are restoring a cluster with the same
    #   AWS account that owns the AWS KMS encryption key used to encrypt the
    #   new cluster, then you can use the AWS KMS key alias instead of the
    #   ARN for the AWS KMS encryption key.
    #
    #   If you do not specify a value for the `KmsKeyId` parameter, then the
    #   following occurs:
    #
    #   * If the snapshot or cluster snapshot in `SnapshotIdentifier` is
    #     encrypted, then the restored cluster is encrypted using the AWS
    #     KMS key that was used to encrypt the snapshot or the cluster
    #     snapshot.
    #
    #   * If the snapshot or the cluster snapshot in `SnapshotIdentifier` is
    #     not encrypted, then the restored DB cluster is not encrypted.
    #   @return [String]
    #
    # @!attribute [rw] enable_cloudwatch_logs_exports
    #   A list of log types that must be enabled for exporting to Amazon
    #   CloudWatch Logs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] deletion_protection
    #   Specifies whether this cluster can be deleted. If
    #   `DeletionProtection` is enabled, the cluster cannot be deleted
    #   unless it is modified and `DeletionProtection` is disabled.
    #   `DeletionProtection` protects clusters from being accidentally
    #   deleted.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/RestoreDBClusterFromSnapshotMessage AWS API Documentation
    #
    class RestoreDBClusterFromSnapshotMessage < Struct.new(
      :availability_zones,
      :db_cluster_identifier,
      :snapshot_identifier,
      :engine,
      :engine_version,
      :port,
      :db_subnet_group_name,
      :vpc_security_group_ids,
      :tags,
      :kms_key_id,
      :enable_cloudwatch_logs_exports,
      :deletion_protection)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_cluster
    #   Detailed information about a cluster.
    #   @return [Types::DBCluster]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/RestoreDBClusterFromSnapshotResult AWS API Documentation
    #
    class RestoreDBClusterFromSnapshotResult < Struct.new(
      :db_cluster)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input to RestoreDBClusterToPointInTime.
    #
    # @note When making an API call, you may pass RestoreDBClusterToPointInTimeMessage
    #   data as a hash:
    #
    #       {
    #         db_cluster_identifier: "String", # required
    #         source_db_cluster_identifier: "String", # required
    #         restore_to_time: Time.now,
    #         use_latest_restorable_time: false,
    #         port: 1,
    #         db_subnet_group_name: "String",
    #         vpc_security_group_ids: ["String"],
    #         tags: [
    #           {
    #             key: "String",
    #             value: "String",
    #           },
    #         ],
    #         kms_key_id: "String",
    #         enable_cloudwatch_logs_exports: ["String"],
    #         deletion_protection: false,
    #       }
    #
    # @!attribute [rw] db_cluster_identifier
    #   The name of the new cluster to be created.
    #
    #   Constraints:
    #
    #   * Must contain from 1 to 63 letters, numbers, or hyphens.
    #
    #   * The first character must be a letter.
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens.
    #   @return [String]
    #
    # @!attribute [rw] source_db_cluster_identifier
    #   The identifier of the source cluster from which to restore.
    #
    #   Constraints:
    #
    #   * Must match the identifier of an existing `DBCluster`.
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] restore_to_time
    #   The date and time to restore the cluster to.
    #
    #   Valid values: A time in Universal Coordinated Time (UTC) format.
    #
    #   Constraints:
    #
    #   * Must be before the latest restorable time for the instance.
    #
    #   * Must be specified if the `UseLatestRestorableTime` parameter is
    #     not provided.
    #
    #   * Cannot be specified if the `UseLatestRestorableTime` parameter is
    #     `true`.
    #
    #   * Cannot be specified if the `RestoreType` parameter is
    #     `copy-on-write`.
    #
    #   Example: `2015-03-07T23:45:00Z`
    #   @return [Time]
    #
    # @!attribute [rw] use_latest_restorable_time
    #   A value that is set to `true` to restore the cluster to the latest
    #   restorable backup time, and `false` otherwise.
    #
    #   Default: `false`
    #
    #   Constraints: Cannot be specified if the `RestoreToTime` parameter is
    #   provided.
    #   @return [Boolean]
    #
    # @!attribute [rw] port
    #   The port number on which the new cluster accepts connections.
    #
    #   Constraints: Must be a value from `1150` to `65535`.
    #
    #   Default: The default port for the engine.
    #   @return [Integer]
    #
    # @!attribute [rw] db_subnet_group_name
    #   The subnet group name to use for the new cluster.
    #
    #   Constraints: If provided, must match the name of an existing
    #   `DBSubnetGroup`.
    #
    #   Example: `mySubnetgroup`
    #   @return [String]
    #
    # @!attribute [rw] vpc_security_group_ids
    #   A list of VPC security groups that the new cluster belongs to.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   The tags to be assigned to the restored cluster.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] kms_key_id
    #   The AWS KMS key identifier to use when restoring an encrypted
    #   cluster from an encrypted cluster.
    #
    #   The AWS KMS key identifier is the Amazon Resource Name (ARN) for the
    #   AWS KMS encryption key. If you are restoring a cluster with the same
    #   AWS account that owns the AWS KMS encryption key used to encrypt the
    #   new cluster, then you can use the AWS KMS key alias instead of the
    #   ARN for the AWS KMS encryption key.
    #
    #   You can restore to a new cluster and encrypt the new cluster with an
    #   AWS KMS key that is different from the AWS KMS key used to encrypt
    #   the source cluster. The new DB cluster is encrypted with the AWS KMS
    #   key identified by the `KmsKeyId` parameter.
    #
    #   If you do not specify a value for the `KmsKeyId` parameter, then the
    #   following occurs:
    #
    #   * If the cluster is encrypted, then the restored cluster is
    #     encrypted using the AWS KMS key that was used to encrypt the
    #     source cluster.
    #
    #   * If the cluster is not encrypted, then the restored cluster is not
    #     encrypted.
    #
    #   If `DBClusterIdentifier` refers to a cluster that is not encrypted,
    #   then the restore request is rejected.
    #   @return [String]
    #
    # @!attribute [rw] enable_cloudwatch_logs_exports
    #   A list of log types that must be enabled for exporting to Amazon
    #   CloudWatch Logs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] deletion_protection
    #   Specifies whether this cluster can be deleted. If
    #   `DeletionProtection` is enabled, the cluster cannot be deleted
    #   unless it is modified and `DeletionProtection` is disabled.
    #   `DeletionProtection` protects clusters from being accidentally
    #   deleted.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/RestoreDBClusterToPointInTimeMessage AWS API Documentation
    #
    class RestoreDBClusterToPointInTimeMessage < Struct.new(
      :db_cluster_identifier,
      :source_db_cluster_identifier,
      :restore_to_time,
      :use_latest_restorable_time,
      :port,
      :db_subnet_group_name,
      :vpc_security_group_ids,
      :tags,
      :kms_key_id,
      :enable_cloudwatch_logs_exports,
      :deletion_protection)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_cluster
    #   Detailed information about a cluster.
    #   @return [Types::DBCluster]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/RestoreDBClusterToPointInTimeResult AWS API Documentation
    #
    class RestoreDBClusterToPointInTimeResult < Struct.new(
      :db_cluster)
      SENSITIVE = []
      include Aws::Structure
    end

    # You have exceeded the maximum number of accounts that you can share a
    # manual DB snapshot with.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/SharedSnapshotQuotaExceededFault AWS API Documentation
    #
    class SharedSnapshotQuotaExceededFault < Aws::EmptyStructure; end

    # The request would cause you to exceed the allowed number of snapshots.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/SnapshotQuotaExceededFault AWS API Documentation
    #
    class SnapshotQuotaExceededFault < Aws::EmptyStructure; end

    # @note When making an API call, you may pass StartDBClusterMessage
    #   data as a hash:
    #
    #       {
    #         db_cluster_identifier: "String", # required
    #       }
    #
    # @!attribute [rw] db_cluster_identifier
    #   The identifier of the cluster to restart. Example:
    #   `docdb-2019-05-28-15-24-52`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/StartDBClusterMessage AWS API Documentation
    #
    class StartDBClusterMessage < Struct.new(
      :db_cluster_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_cluster
    #   Detailed information about a cluster.
    #   @return [Types::DBCluster]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/StartDBClusterResult AWS API Documentation
    #
    class StartDBClusterResult < Struct.new(
      :db_cluster)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass StopDBClusterMessage
    #   data as a hash:
    #
    #       {
    #         db_cluster_identifier: "String", # required
    #       }
    #
    # @!attribute [rw] db_cluster_identifier
    #   The identifier of the cluster to stop. Example:
    #   `docdb-2019-05-28-15-24-52`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/StopDBClusterMessage AWS API Documentation
    #
    class StopDBClusterMessage < Struct.new(
      :db_cluster_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] db_cluster
    #   Detailed information about a cluster.
    #   @return [Types::DBCluster]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/StopDBClusterResult AWS API Documentation
    #
    class StopDBClusterResult < Struct.new(
      :db_cluster)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request would cause you to exceed the allowed amount of storage
    # available across all instances.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/StorageQuotaExceededFault AWS API Documentation
    #
    class StorageQuotaExceededFault < Aws::EmptyStructure; end

    # Storage of the specified `StorageType` can't be associated with the
    # DB instance.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/StorageTypeNotSupportedFault AWS API Documentation
    #
    class StorageTypeNotSupportedFault < Aws::EmptyStructure; end

    # Detailed information about a subnet.
    #
    # @!attribute [rw] subnet_identifier
    #   Specifies the identifier of the subnet.
    #   @return [String]
    #
    # @!attribute [rw] subnet_availability_zone
    #   Specifies the Availability Zone for the subnet.
    #   @return [Types::AvailabilityZone]
    #
    # @!attribute [rw] subnet_status
    #   Specifies the status of the subnet.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/Subnet AWS API Documentation
    #
    class Subnet < Struct.new(
      :subnet_identifier,
      :subnet_availability_zone,
      :subnet_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The subnet is already in use in the Availability Zone.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/SubnetAlreadyInUse AWS API Documentation
    #
    class SubnetAlreadyInUse < Aws::EmptyStructure; end

    # Metadata assigned to an Amazon DocumentDB resource consisting of a
    # key-value pair.
    #
    # @note When making an API call, you may pass Tag
    #   data as a hash:
    #
    #       {
    #         key: "String",
    #         value: "String",
    #       }
    #
    # @!attribute [rw] key
    #   The required name of the tag. The string value can be from 1 to 128
    #   Unicode characters in length and can't be prefixed with "aws:" or
    #   "rds:". The string can contain only the set of Unicode letters,
    #   digits, white space, '\_', '.', '/', '=', '+', '-' (Java
    #   regex:
    #   "^(\[\\\\p\\\{L\\}\\\\p\\\{Z\\}\\\\p\\\{N\\}\_.:/=+\\\\-\]*)$").
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The optional value of the tag. The string value can be from 1 to 256
    #   Unicode characters in length and can't be prefixed with "aws:" or
    #   "rds:". The string can contain only the set of Unicode letters,
    #   digits, white space, '\_', '.', '/', '=', '+', '-' (Java
    #   regex:
    #   "^(\[\\\\p\\\{L\\}\\\\p\\\{Z\\}\\\\p\\\{N\\}\_.:/=+\\\\-\]*)$").
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the output of ListTagsForResource.
    #
    # @!attribute [rw] tag_list
    #   A list of one or more tags.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/TagListMessage AWS API Documentation
    #
    class TagListMessage < Struct.new(
      :tag_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # The version of the database engine that an instance can be upgraded
    # to.
    #
    # @!attribute [rw] engine
    #   The name of the upgrade target database engine.
    #   @return [String]
    #
    # @!attribute [rw] engine_version
    #   The version number of the upgrade target database engine.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The version of the database engine that an instance can be upgraded
    #   to.
    #   @return [String]
    #
    # @!attribute [rw] auto_upgrade
    #   A value that indicates whether the target version is applied to any
    #   source DB instances that have `AutoMinorVersionUpgrade` set to
    #   `true`.
    #   @return [Boolean]
    #
    # @!attribute [rw] is_major_version_upgrade
    #   A value that indicates whether a database engine is upgraded to a
    #   major version.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/UpgradeTarget AWS API Documentation
    #
    class UpgradeTarget < Struct.new(
      :engine,
      :engine_version,
      :description,
      :auto_upgrade,
      :is_major_version_upgrade)
      SENSITIVE = []
      include Aws::Structure
    end

    # Used as a response element for queries on virtual private cloud (VPC)
    # security group membership.
    #
    # @!attribute [rw] vpc_security_group_id
    #   The name of the VPC security group.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the VPC security group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/VpcSecurityGroupMembership AWS API Documentation
    #
    class VpcSecurityGroupMembership < Struct.new(
      :vpc_security_group_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
