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
    #   value is an Amazon Resource Name (ARN).
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
      include Aws::Structure
    end

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
      include Aws::Structure
    end

    # The configuration setting for the log types to be enabled for export
    # to Amazon CloudWatch Logs for a specific DB instance or DB cluster.
    #
    # The `EnableLogTypes` and `DisableLogTypes` arrays determine which logs
    # are exported (or not exported) to CloudWatch Logs. The values within
    # these arrays depend on the DB engine that is being used.
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
    #   The identifier or Amazon Resource Name (ARN) for the source DB
    #   cluster parameter group.
    #
    #   Constraints:
    #
    #   * Must specify a valid DB cluster parameter group.
    #
    #   * If the source DB cluster parameter group is in the same AWS Region
    #     as the copy, specify a valid DB parameter group identifier; for
    #     example, `my-db-cluster-param-group`, or a valid ARN.
    #
    #   * If the source DB parameter group is in a different AWS Region than
    #     the copy, specify a valid DB cluster parameter group ARN; for
    #     example,
    #     `arn:aws:rds:us-east-1:123456789012:cluster-pg:custom-cluster-group1`.
    #   @return [String]
    #
    # @!attribute [rw] target_db_cluster_parameter_group_identifier
    #   The identifier for the copied DB cluster parameter group.
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
    #   A description for the copied DB cluster parameter group.
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
      include Aws::Structure
    end

    # @!attribute [rw] db_cluster_parameter_group
    #   Detailed information about a DB cluster parameter group.
    #   @return [Types::DBClusterParameterGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/CopyDBClusterParameterGroupResult AWS API Documentation
    #
    class CopyDBClusterParameterGroupResult < Struct.new(
      :db_cluster_parameter_group)
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
    #   The identifier of the DB cluster snapshot to copy. This parameter is
    #   not case sensitive.
    #
    #   You can't copy an encrypted, shared DB cluster snapshot from one
    #   AWS Region to another.
    #
    #   Constraints:
    #
    #   * Must specify a valid system snapshot in the "available" state.
    #
    #   * If the source snapshot is in the same AWS Region as the copy,
    #     specify a valid DB snapshot identifier.
    #
    #   * If the source snapshot is in a different AWS Region than the copy,
    #     specify a valid DB cluster snapshot ARN.
    #
    #   Example: `my-cluster-snapshot1`
    #   @return [String]
    #
    # @!attribute [rw] target_db_cluster_snapshot_identifier
    #   The identifier of the new DB cluster snapshot to create from the
    #   source DB cluster snapshot. This parameter is not case sensitive.
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
    #   The AWS KMS key ID for an encrypted DB cluster snapshot. The AWS KMS
    #   key ID is the Amazon Resource Name (ARN), AWS KMS key identifier, or
    #   the AWS KMS key alias for the AWS KMS encryption key.
    #
    #   If you copy an encrypted DB cluster snapshot from your AWS account,
    #   you can specify a value for `KmsKeyId` to encrypt the copy with a
    #   new AWS KMS encryption key. If you don't specify a value for
    #   `KmsKeyId`, then the copy of the DB cluster snapshot is encrypted
    #   with the same AWS KMS key as the source DB cluster snapshot.
    #
    #   If you copy an encrypted DB cluster snapshot that is shared from
    #   another AWS account, then you must specify a value for `KmsKeyId`.
    #
    #   To copy an encrypted DB cluster snapshot to another AWS Region, set
    #   `KmsKeyId` to the AWS KMS key ID that you want to use to encrypt the
    #   copy of the DB cluster snapshot in the destination Region. AWS KMS
    #   encryption keys are specific to the AWS Region that they are created
    #   in, and you can't use encryption keys from one Region in another
    #   Region.
    #
    #   If you copy an unencrypted DB cluster snapshot and specify a value
    #   for the `KmsKeyId` parameter, an error is returned.
    #   @return [String]
    #
    # @!attribute [rw] pre_signed_url
    #   The URL that contains a Signature Version 4 signed request for the
    #   `CopyDBClusterSnapshot` API action in the AWS Region that contains
    #   the source DB cluster snapshot to copy. You must use the
    #   `PreSignedUrl` parameter when copying an encrypted DB cluster
    #   snapshot from another AWS Region.
    #
    #   The presigned URL must be a valid request for the
    #   `CopyDBSClusterSnapshot` API action that can be executed in the
    #   source AWS Region that contains the encrypted DB cluster snapshot to
    #   be copied. The presigned URL request must contain the following
    #   parameter values:
    #
    #   * `KmsKeyId` - The AWS KMS key identifier for the key to use to
    #     encrypt the copy of the DB cluster snapshot in the destination AWS
    #     Region. This is the same identifier for both the
    #     `CopyDBClusterSnapshot` action that is called in the destination
    #     AWS Region, and the action contained in the presigned URL.
    #
    #   * `DestinationRegion` - The name of the AWS Region that the DB
    #     cluster snapshot will be created in.
    #
    #   * `SourceDBClusterSnapshotIdentifier` - The DB cluster snapshot
    #     identifier for the encrypted DB cluster snapshot to be copied.
    #     This identifier must be in the Amazon Resource Name (ARN) format
    #     for the source AWS Region. For example, if you are copying an
    #     encrypted DB cluster snapshot from the us-west-2 AWS Region, then
    #     your `SourceDBClusterSnapshotIdentifier` looks like the following
    #     example:
    #     `arn:aws:rds:us-west-2:123456789012:cluster-snapshot:my-cluster-snapshot-20161115`.
    #   @return [String]
    #
    # @!attribute [rw] copy_tags
    #   Set to `true` to copy all tags from the source DB cluster snapshot
    #   to the target DB cluster snapshot, and otherwise `false`. The
    #   default is `false`.
    #   @return [Boolean]
    #
    # @!attribute [rw] tags
    #   The tags to be assigned to the DB cluster snapshot.
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
      include Aws::Structure
    end

    # @!attribute [rw] db_cluster_snapshot
    #   Detailed information about a DB cluster snapshot.
    #   @return [Types::DBClusterSnapshot]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/CopyDBClusterSnapshotResult AWS API Documentation
    #
    class CopyDBClusterSnapshotResult < Struct.new(
      :db_cluster_snapshot)
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
    #         master_username: "String",
    #         master_user_password: "String",
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
    #         enable_cloudwatch_logs_exports: ["String"],
    #       }
    #
    # @!attribute [rw] availability_zones
    #   A list of Amazon EC2 Availability Zones that instances in the DB
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
    #   The DB cluster identifier. This parameter is stored as a lowercase
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
    #   The name of the DB cluster parameter group to associate with this DB
    #   cluster.
    #   @return [String]
    #
    # @!attribute [rw] vpc_security_group_ids
    #   A list of EC2 VPC security groups to associate with this DB cluster.
    #   @return [Array<String>]
    #
    # @!attribute [rw] db_subnet_group_name
    #   A DB subnet group to associate with this DB cluster.
    #
    #   Constraints: Must match the name of an existing `DBSubnetGroup`.
    #   Must not be default.
    #
    #   Example: `mySubnetgroup`
    #   @return [String]
    #
    # @!attribute [rw] engine
    #   The name of the database engine to be used for this DB cluster.
    #
    #   Valid values: `docdb`
    #   @return [String]
    #
    # @!attribute [rw] engine_version
    #   The version number of the database engine to use.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The port number on which the instances in the DB cluster accept
    #   connections.
    #   @return [Integer]
    #
    # @!attribute [rw] master_username
    #   The name of the master user for the DB cluster.
    #
    #   Constraints:
    #
    #   * Must be from 1 to 16 letters or numbers.
    #
    #   * The first character must be a letter.
    #
    #   * Cannot be a reserved word for the chosen database engine.
    #   @return [String]
    #
    # @!attribute [rw] master_user_password
    #   The password for the master database user. This password can contain
    #   any printable ASCII character except "/", """, or "@".
    #
    #   Constraints: Must contain from 8 to 41 characters.
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
    #   The tags to be assigned to the DB cluster.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] storage_encrypted
    #   Specifies whether the DB cluster is encrypted.
    #   @return [Boolean]
    #
    # @!attribute [rw] kms_key_id
    #   The AWS KMS key identifier for an encrypted DB cluster.
    #
    #   The AWS KMS key identifier is the Amazon Resource Name (ARN) for the
    #   AWS KMS encryption key. If you are creating a DB cluster using the
    #   same AWS account that owns the AWS KMS encryption key that is used
    #   to encrypt the new DB cluster, you can use the AWS KMS key alias
    #   instead of the ARN for the AWS KMS encryption key.
    #
    #   If an encryption key is not specified in `KmsKeyId`\:
    #
    #   * If `ReplicationSourceIdentifier` identifies an encrypted source,
    #     then Amazon DocumentDB uses the encryption key that is used to
    #     encrypt the source. Otherwise, Amazon DocumentDB uses your default
    #     encryption key.
    #
    #   * If the `StorageEncrypted` parameter is `true` and
    #     `ReplicationSourceIdentifier` is not specified, Amazon DocumentDB
    #     uses your default encryption key.
    #
    #   AWS KMS creates the default encryption key for your AWS account.
    #   Your AWS account has a different default encryption key for each AWS
    #   Region.
    #
    #   If you create a replica of an encrypted DB cluster in another AWS
    #   Region, you must set `KmsKeyId` to a KMS key ID that is valid in the
    #   destination AWS Region. This key is used to encrypt the replica in
    #   that AWS Region.
    #   @return [String]
    #
    # @!attribute [rw] enable_cloudwatch_logs_exports
    #   A list of log types that need to be enabled for exporting to Amazon
    #   CloudWatch Logs.
    #   @return [Array<String>]
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
      :enable_cloudwatch_logs_exports)
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
    #   The name of the DB cluster parameter group.
    #
    #   Constraints:
    #
    #   * Must match the name of an existing `DBClusterParameterGroup`.
    #
    #   ^
    #
    #   <note markdown="1"> This value is stored as a lowercase string.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] db_parameter_group_family
    #   The DB cluster parameter group family name.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description for the DB cluster parameter group.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to be assigned to the DB cluster parameter group.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/CreateDBClusterParameterGroupMessage AWS API Documentation
    #
    class CreateDBClusterParameterGroupMessage < Struct.new(
      :db_cluster_parameter_group_name,
      :db_parameter_group_family,
      :description,
      :tags)
      include Aws::Structure
    end

    # @!attribute [rw] db_cluster_parameter_group
    #   Detailed information about a DB cluster parameter group.
    #   @return [Types::DBClusterParameterGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/CreateDBClusterParameterGroupResult AWS API Documentation
    #
    class CreateDBClusterParameterGroupResult < Struct.new(
      :db_cluster_parameter_group)
      include Aws::Structure
    end

    # @!attribute [rw] db_cluster
    #   Detailed information about a DB cluster.
    #   @return [Types::DBCluster]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/CreateDBClusterResult AWS API Documentation
    #
    class CreateDBClusterResult < Struct.new(
      :db_cluster)
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
    #   The identifier of the DB cluster snapshot. This parameter is stored
    #   as a lowercase string.
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
    #   The identifier of the DB cluster to create a snapshot for. This
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
    #   The tags to be assigned to the DB cluster snapshot.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/CreateDBClusterSnapshotMessage AWS API Documentation
    #
    class CreateDBClusterSnapshotMessage < Struct.new(
      :db_cluster_snapshot_identifier,
      :db_cluster_identifier,
      :tags)
      include Aws::Structure
    end

    # @!attribute [rw] db_cluster_snapshot
    #   Detailed information about a DB cluster snapshot.
    #   @return [Types::DBClusterSnapshot]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/CreateDBClusterSnapshotResult AWS API Documentation
    #
    class CreateDBClusterSnapshotResult < Struct.new(
      :db_cluster_snapshot)
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
    #   The DB instance identifier. This parameter is stored as a lowercase
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
    #   The compute and memory capacity of the DB instance; for example,
    #   `db.m4.large`.
    #   @return [String]
    #
    # @!attribute [rw] engine
    #   The name of the database engine to be used for this instance.
    #
    #   Valid value: `docdb`
    #   @return [String]
    #
    # @!attribute [rw] availability_zone
    #   The Amazon EC2 Availability Zone that the DB instance is created in.
    #
    #   Default: A random, system-chosen Availability Zone in the
    #   endpoint's AWS Region.
    #
    #   Example: `us-east-1d`
    #
    #   Constraint: The `AvailabilityZone` parameter can't be specified if
    #   the `MultiAZ` parameter is set to `true`. The specified Availability
    #   Zone must be in the same AWS Region as the current endpoint.
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
    #   the DB instance during the maintenance window.
    #
    #   Default: `true`
    #   @return [Boolean]
    #
    # @!attribute [rw] tags
    #   The tags to be assigned to the DB instance.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] db_cluster_identifier
    #   The identifier of the DB cluster that the instance will belong to.
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
      include Aws::Structure
    end

    # @!attribute [rw] db_instance
    #   Detailed information about a DB instance.
    #   @return [Types::DBInstance]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/CreateDBInstanceResult AWS API Documentation
    #
    class CreateDBInstanceResult < Struct.new(
      :db_instance)
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
    #   The name for the DB subnet group. This value is stored as a
    #   lowercase string.
    #
    #   Constraints: Must contain no more than 255 letters, numbers,
    #   periods, underscores, spaces, or hyphens. Must not be default.
    #
    #   Example: `mySubnetgroup`
    #   @return [String]
    #
    # @!attribute [rw] db_subnet_group_description
    #   The description for the DB subnet group.
    #   @return [String]
    #
    # @!attribute [rw] subnet_ids
    #   The Amazon EC2 subnet IDs for the DB subnet group.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   The tags to be assigned to the DB subnet group.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/CreateDBSubnetGroupMessage AWS API Documentation
    #
    class CreateDBSubnetGroupMessage < Struct.new(
      :db_subnet_group_name,
      :db_subnet_group_description,
      :subnet_ids,
      :tags)
      include Aws::Structure
    end

    # @!attribute [rw] db_subnet_group
    #   Detailed information about a DB subnet group.
    #   @return [Types::DBSubnetGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/CreateDBSubnetGroupResult AWS API Documentation
    #
    class CreateDBSubnetGroupResult < Struct.new(
      :db_subnet_group)
      include Aws::Structure
    end

    # Detailed information about a DB cluster.
    #
    # @!attribute [rw] availability_zones
    #   Provides the list of Amazon EC2 Availability Zones that instances in
    #   the DB cluster can be created in.
    #   @return [Array<String>]
    #
    # @!attribute [rw] backup_retention_period
    #   Specifies the number of days for which automatic DB snapshots are
    #   retained.
    #   @return [Integer]
    #
    # @!attribute [rw] db_cluster_identifier
    #   Contains a user-supplied DB cluster identifier. This identifier is
    #   the unique key that identifies a DB cluster.
    #   @return [String]
    #
    # @!attribute [rw] db_cluster_parameter_group
    #   Specifies the name of the DB cluster parameter group for the DB
    #   cluster.
    #   @return [String]
    #
    # @!attribute [rw] db_subnet_group
    #   Specifies information on the subnet group that is associated with
    #   the DB cluster, including the name, description, and subnets in the
    #   subnet group.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Specifies the current state of this DB cluster.
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
    #   Specifies the connection endpoint for the primary instance of the DB
    #   cluster.
    #   @return [String]
    #
    # @!attribute [rw] reader_endpoint
    #   The reader endpoint for the DB cluster. The reader endpoint for a DB
    #   cluster load balances connections across the Amazon DocumentDB
    #   replicas that are available in a DB cluster. As clients request new
    #   connections to the reader endpoint, Amazon DocumentDB distributes
    #   the connection requests among the Amazon DocumentDB replicas in the
    #   DB cluster. This functionality can help balance your read workload
    #   across multiple Amazon DocumentDB replicas in your DB cluster.
    #
    #   If a failover occurs, and the Amazon DocumentDB replica that you are
    #   connected to is promoted to be the primary instance, your connection
    #   is dropped. To continue sending your read workload to other Amazon
    #   DocumentDB replicas in the cluster, you can then reconnect to the
    #   reader endpoint.
    #   @return [String]
    #
    # @!attribute [rw] multi_az
    #   Specifies whether the DB cluster has instances in multiple
    #   Availability Zones.
    #   @return [Boolean]
    #
    # @!attribute [rw] engine
    #   Provides the name of the database engine to be used for this DB
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
    #   Contains the master user name for the DB cluster.
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
    #   Provides the list of instances that make up the DB cluster.
    #   @return [Array<Types::DBClusterMember>]
    #
    # @!attribute [rw] vpc_security_groups
    #   Provides a list of virtual private cloud (VPC) security groups that
    #   the DB cluster belongs to.
    #   @return [Array<Types::VpcSecurityGroupMembership>]
    #
    # @!attribute [rw] hosted_zone_id
    #   Specifies the ID that Amazon Route 53 assigns when you create a
    #   hosted zone.
    #   @return [String]
    #
    # @!attribute [rw] storage_encrypted
    #   Specifies whether the DB cluster is encrypted.
    #   @return [Boolean]
    #
    # @!attribute [rw] kms_key_id
    #   If `StorageEncrypted` is `true`, the AWS KMS key identifier for the
    #   encrypted DB cluster.
    #   @return [String]
    #
    # @!attribute [rw] db_cluster_resource_id
    #   The AWS Region-unique, immutable identifier for the DB cluster. This
    #   identifier is found in AWS CloudTrail log entries whenever the AWS
    #   KMS key for the DB cluster is accessed.
    #   @return [String]
    #
    # @!attribute [rw] db_cluster_arn
    #   The Amazon Resource Name (ARN) for the DB cluster.
    #   @return [String]
    #
    # @!attribute [rw] associated_roles
    #   Provides a list of the AWS Identity and Access Management (IAM)
    #   roles that are associated with the DB cluster. IAM roles that are
    #   associated with a DB cluster grant permission for the DB cluster to
    #   access other AWS services on your behalf.
    #   @return [Array<Types::DBClusterRole>]
    #
    # @!attribute [rw] cluster_create_time
    #   Specifies the time when the DB cluster was created, in Universal
    #   Coordinated Time (UTC).
    #   @return [Time]
    #
    # @!attribute [rw] enabled_cloudwatch_logs_exports
    #   A list of log types that this DB cluster is configured to export to
    #   Amazon CloudWatch Logs.
    #   @return [Array<String>]
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
      :enabled_cloudwatch_logs_exports)
      include Aws::Structure
    end

    # Contains information about an instance that is part of a DB cluster.
    #
    # @!attribute [rw] db_instance_identifier
    #   Specifies the instance identifier for this member of the DB cluster.
    #   @return [String]
    #
    # @!attribute [rw] is_cluster_writer
    #   A value that is `true` if the cluster member is the primary instance
    #   for the DB cluster and `false` otherwise.
    #   @return [Boolean]
    #
    # @!attribute [rw] db_cluster_parameter_group_status
    #   Specifies the status of the DB cluster parameter group for this
    #   member of the DB cluster.
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
    #   A list of DB clusters.
    #   @return [Array<Types::DBCluster>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/DBClusterMessage AWS API Documentation
    #
    class DBClusterMessage < Struct.new(
      :marker,
      :db_clusters)
      include Aws::Structure
    end

    # Detailed information about a DB cluster parameter group.
    #
    # @!attribute [rw] db_cluster_parameter_group_name
    #   Provides the name of the DB cluster parameter group.
    #   @return [String]
    #
    # @!attribute [rw] db_parameter_group_family
    #   Provides the name of the DB parameter group family that this DB
    #   cluster parameter group is compatible with.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Provides the customer-specified description for this DB cluster
    #   parameter group.
    #   @return [String]
    #
    # @!attribute [rw] db_cluster_parameter_group_arn
    #   The Amazon Resource Name (ARN) for the DB cluster parameter group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/DBClusterParameterGroup AWS API Documentation
    #
    class DBClusterParameterGroup < Struct.new(
      :db_cluster_parameter_group_name,
      :db_parameter_group_family,
      :description,
      :db_cluster_parameter_group_arn)
      include Aws::Structure
    end

    # Represents the output of DBClusterParameterGroup.
    #
    # @!attribute [rw] parameters
    #   Provides a list of parameters for the DB cluster parameter group.
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
      include Aws::Structure
    end

    # Contains the name of a DB cluster parameter group.
    #
    # @!attribute [rw] db_cluster_parameter_group_name
    #   The name of a DB cluster parameter group.
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
      include Aws::Structure
    end

    # Represents the output of DBClusterParameterGroups.
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond
    #   the marker, up to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @!attribute [rw] db_cluster_parameter_groups
    #   A list of DB cluster parameter groups.
    #   @return [Array<Types::DBClusterParameterGroup>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/DBClusterParameterGroupsMessage AWS API Documentation
    #
    class DBClusterParameterGroupsMessage < Struct.new(
      :marker,
      :db_cluster_parameter_groups)
      include Aws::Structure
    end

    # Describes an AWS Identity and Access Management (IAM) role that is
    # associated with a DB cluster.
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that is associated
    #   with the DB cluster.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Describes the state of association between the IAM role and the DB
    #   cluster. The `Status` property returns one of the following values:
    #
    #   * `ACTIVE` - The IAM role ARN is associated with the DB cluster and
    #     can be used to access other AWS services on your behalf.
    #
    #   * `PENDING` - The IAM role ARN is being associated with the DB
    #     cluster.
    #
    #   * `INVALID` - The IAM role ARN is associated with the DB cluster,
    #     but the DB cluster cannot assume the IAM role to access other AWS
    #     services on your behalf.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/DBClusterRole AWS API Documentation
    #
    class DBClusterRole < Struct.new(
      :role_arn,
      :status)
      include Aws::Structure
    end

    # Detailed information about a DB cluster snapshot.
    #
    # @!attribute [rw] availability_zones
    #   Provides the list of Amazon EC2 Availability Zones that instances in
    #   the DB cluster snapshot can be restored in.
    #   @return [Array<String>]
    #
    # @!attribute [rw] db_cluster_snapshot_identifier
    #   Specifies the identifier for the DB cluster snapshot.
    #   @return [String]
    #
    # @!attribute [rw] db_cluster_identifier
    #   Specifies the DB cluster identifier of the DB cluster that this DB
    #   cluster snapshot was created from.
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
    #   Specifies the status of this DB cluster snapshot.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   Specifies the port that the DB cluster was listening on at the time
    #   of the snapshot.
    #   @return [Integer]
    #
    # @!attribute [rw] vpc_id
    #   Provides the virtual private cloud (VPC) ID that is associated with
    #   the DB cluster snapshot.
    #   @return [String]
    #
    # @!attribute [rw] cluster_create_time
    #   Specifies the time when the DB cluster was created, in Universal
    #   Coordinated Time (UTC).
    #   @return [Time]
    #
    # @!attribute [rw] master_username
    #   Provides the master user name for the DB cluster snapshot.
    #   @return [String]
    #
    # @!attribute [rw] engine_version
    #   Provides the version of the database engine for this DB cluster
    #   snapshot.
    #   @return [String]
    #
    # @!attribute [rw] snapshot_type
    #   Provides the type of the DB cluster snapshot.
    #   @return [String]
    #
    # @!attribute [rw] percent_progress
    #   Specifies the percentage of the estimated data that has been
    #   transferred.
    #   @return [Integer]
    #
    # @!attribute [rw] storage_encrypted
    #   Specifies whether the DB cluster snapshot is encrypted.
    #   @return [Boolean]
    #
    # @!attribute [rw] kms_key_id
    #   If `StorageEncrypted` is `true`, the AWS KMS key identifier for the
    #   encrypted DB cluster snapshot.
    #   @return [String]
    #
    # @!attribute [rw] db_cluster_snapshot_arn
    #   The Amazon Resource Name (ARN) for the DB cluster snapshot.
    #   @return [String]
    #
    # @!attribute [rw] source_db_cluster_snapshot_arn
    #   If the DB cluster snapshot was copied from a source DB cluster
    #   snapshot, the ARN for the source DB cluster snapshot; otherwise, a
    #   null value.
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
      include Aws::Structure
    end

    # Contains the name and values of a manual DB cluster snapshot
    # attribute.
    #
    # Manual DB cluster snapshot attributes are used to authorize other AWS
    # accounts to restore a manual DB cluster snapshot.
    #
    # @!attribute [rw] attribute_name
    #   The name of the manual DB cluster snapshot attribute.
    #
    #   The attribute named `restore` refers to the list of AWS accounts
    #   that have permission to copy or restore the manual DB cluster
    #   snapshot.
    #   @return [String]
    #
    # @!attribute [rw] attribute_values
    #   The values for the manual DB cluster snapshot attribute.
    #
    #   If the `AttributeName` field is set to `restore`, then this element
    #   returns a list of IDs of the AWS accounts that are authorized to
    #   copy or restore the manual DB cluster snapshot. If a value of `all`
    #   is in the list, then the manual DB cluster snapshot is public and
    #   available for any AWS account to copy or restore.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/DBClusterSnapshotAttribute AWS API Documentation
    #
    class DBClusterSnapshotAttribute < Struct.new(
      :attribute_name,
      :attribute_values)
      include Aws::Structure
    end

    # Detailed information about the attributes that are associated with a
    # DB cluster snapshot.
    #
    # @!attribute [rw] db_cluster_snapshot_identifier
    #   The identifier of the DB cluster snapshot that the attributes apply
    #   to.
    #   @return [String]
    #
    # @!attribute [rw] db_cluster_snapshot_attributes
    #   The list of attributes and values for the DB cluster snapshot.
    #   @return [Array<Types::DBClusterSnapshotAttribute>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/DBClusterSnapshotAttributesResult AWS API Documentation
    #
    class DBClusterSnapshotAttributesResult < Struct.new(
      :db_cluster_snapshot_identifier,
      :db_cluster_snapshot_attributes)
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
    #   Provides a list of DB cluster snapshots.
    #   @return [Array<Types::DBClusterSnapshot>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/DBClusterSnapshotMessage AWS API Documentation
    #
    class DBClusterSnapshotMessage < Struct.new(
      :marker,
      :db_cluster_snapshots)
      include Aws::Structure
    end

    # Detailed information about a DB engine version.
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
    #   The name of the DB parameter group family for the database engine.
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
    #   Detailed information about one or more DB engine versions.
    #   @return [Array<Types::DBEngineVersion>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/DBEngineVersionMessage AWS API Documentation
    #
    class DBEngineVersionMessage < Struct.new(
      :marker,
      :db_engine_versions)
      include Aws::Structure
    end

    # Detailed information about a DB instance.
    #
    # @!attribute [rw] db_instance_identifier
    #   Contains a user-provided database identifier. This identifier is the
    #   unique key that identifies a DB instance.
    #   @return [String]
    #
    # @!attribute [rw] db_instance_class
    #   Contains the name of the compute and memory capacity class of the DB
    #   instance.
    #   @return [String]
    #
    # @!attribute [rw] engine
    #   Provides the name of the database engine to be used for this DB
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
    #   Provides the date and time that the DB instance was created.
    #   @return [Time]
    #
    # @!attribute [rw] preferred_backup_window
    #   Specifies the daily time range during which automated backups are
    #   created if automated backups are enabled, as determined by the
    #   `BackupRetentionPeriod`.
    #   @return [String]
    #
    # @!attribute [rw] backup_retention_period
    #   Specifies the number of days for which automatic DB snapshots are
    #   retained.
    #   @return [Integer]
    #
    # @!attribute [rw] vpc_security_groups
    #   Provides a list of VPC security group elements that the DB instance
    #   belongs to.
    #   @return [Array<Types::VpcSecurityGroupMembership>]
    #
    # @!attribute [rw] availability_zone
    #   Specifies the name of the Availability Zone that the DB instance is
    #   located in.
    #   @return [String]
    #
    # @!attribute [rw] db_subnet_group
    #   Specifies information on the subnet group that is associated with
    #   the DB instance, including the name, description, and subnets in the
    #   subnet group.
    #   @return [Types::DBSubnetGroup]
    #
    # @!attribute [rw] preferred_maintenance_window
    #   Specifies the weekly time range during which system maintenance can
    #   occur, in Universal Coordinated Time (UTC).
    #   @return [String]
    #
    # @!attribute [rw] pending_modified_values
    #   Specifies that changes to the DB instance are pending. This element
    #   is included only when changes are pending. Specific changes are
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
    #   Specifies the availability options for the DB instance. A value of
    #   `true` specifies an internet-facing instance with a publicly
    #   resolvable DNS name, which resolves to a public IP address. A value
    #   of `false` specifies an internal instance with a DNS name that
    #   resolves to a private IP address.
    #   @return [Boolean]
    #
    # @!attribute [rw] status_infos
    #   The status of a read replica. If the instance is not a read replica,
    #   this is blank.
    #   @return [Array<Types::DBInstanceStatusInfo>]
    #
    # @!attribute [rw] db_cluster_identifier
    #   Contains the name of the DB cluster that the DB instance is a member
    #   of if the DB instance is a member of a DB cluster.
    #   @return [String]
    #
    # @!attribute [rw] storage_encrypted
    #   Specifies whether the DB instance is encrypted.
    #   @return [Boolean]
    #
    # @!attribute [rw] kms_key_id
    #   If `StorageEncrypted` is `true`, the AWS KMS key identifier for the
    #   encrypted DB instance.
    #   @return [String]
    #
    # @!attribute [rw] dbi_resource_id
    #   The AWS Region-unique, immutable identifier for the DB instance.
    #   This identifier is found in AWS CloudTrail log entries whenever the
    #   AWS KMS key for the DB instance is accessed.
    #   @return [String]
    #
    # @!attribute [rw] promotion_tier
    #   A value that specifies the order in which an Amazon DocumentDB
    #   replica is promoted to the primary instance after a failure of the
    #   existing primary instance.
    #   @return [Integer]
    #
    # @!attribute [rw] db_instance_arn
    #   The Amazon Resource Name (ARN) for the DB instance.
    #   @return [String]
    #
    # @!attribute [rw] enabled_cloudwatch_logs_exports
    #   A list of log types that this DB instance is configured to export to
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
      :promotion_tier,
      :db_instance_arn,
      :enabled_cloudwatch_logs_exports)
      include Aws::Structure
    end

    # Represents the output of DescribeDBInstances.
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond
    #   the marker, up to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @!attribute [rw] db_instances
    #   Detailed information about one or more DB instances.
    #   @return [Array<Types::DBInstance>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/DBInstanceMessage AWS API Documentation
    #
    class DBInstanceMessage < Struct.new(
      :marker,
      :db_instances)
      include Aws::Structure
    end

    # Provides a list of status information for a DB instance.
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
    #   Status of the DB instance. For a `StatusType` of read replica, the
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
      include Aws::Structure
    end

    # Detailed information about a DB subnet group.
    #
    # @!attribute [rw] db_subnet_group_name
    #   The name of the DB subnet group.
    #   @return [String]
    #
    # @!attribute [rw] db_subnet_group_description
    #   Provides the description of the DB subnet group.
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   Provides the virtual private cloud (VPC) ID of the DB subnet group.
    #   @return [String]
    #
    # @!attribute [rw] subnet_group_status
    #   Provides the status of the DB subnet group.
    #   @return [String]
    #
    # @!attribute [rw] subnets
    #   Detailed information about one or more subnets within a DB subnet
    #   group.
    #   @return [Array<Types::Subnet>]
    #
    # @!attribute [rw] db_subnet_group_arn
    #   The Amazon Resource Identifier (ARN) for the DB subnet group.
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
      include Aws::Structure
    end

    # Represents the output of DescribeDBSubnetGroups.
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond
    #   the marker, up to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @!attribute [rw] db_subnet_groups
    #   Detailed information about one or more DB subnet groups.
    #   @return [Array<Types::DBSubnetGroup>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/DBSubnetGroupMessage AWS API Documentation
    #
    class DBSubnetGroupMessage < Struct.new(
      :marker,
      :db_subnet_groups)
      include Aws::Structure
    end

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
    #   The DB cluster identifier for the DB cluster to be deleted. This
    #   parameter isn't case sensitive.
    #
    #   Constraints:
    #
    #   * Must match an existing `DBClusterIdentifier`.
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] skip_final_snapshot
    #   Determines whether a final DB cluster snapshot is created before the
    #   DB cluster is deleted. If `true` is specified, no DB cluster
    #   snapshot is created. If `false` is specified, a DB cluster snapshot
    #   is created before the DB cluster is deleted.
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
    #   The DB cluster snapshot identifier of the new DB cluster snapshot
    #   created when `SkipFinalSnapshot` is set to `false`.
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
    #   The name of the DB cluster parameter group.
    #
    #   Constraints:
    #
    #   * Must be the name of an existing DB cluster parameter group.
    #
    #   * You can't delete a default DB cluster parameter group.
    #
    #   * Cannot be associated with any DB clusters.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/DeleteDBClusterParameterGroupMessage AWS API Documentation
    #
    class DeleteDBClusterParameterGroupMessage < Struct.new(
      :db_cluster_parameter_group_name)
      include Aws::Structure
    end

    # @!attribute [rw] db_cluster
    #   Detailed information about a DB cluster.
    #   @return [Types::DBCluster]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/DeleteDBClusterResult AWS API Documentation
    #
    class DeleteDBClusterResult < Struct.new(
      :db_cluster)
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
    #   The identifier of the DB cluster snapshot to delete.
    #
    #   Constraints: Must be the name of an existing DB cluster snapshot in
    #   the `available` state.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/DeleteDBClusterSnapshotMessage AWS API Documentation
    #
    class DeleteDBClusterSnapshotMessage < Struct.new(
      :db_cluster_snapshot_identifier)
      include Aws::Structure
    end

    # @!attribute [rw] db_cluster_snapshot
    #   Detailed information about a DB cluster snapshot.
    #   @return [Types::DBClusterSnapshot]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/DeleteDBClusterSnapshotResult AWS API Documentation
    #
    class DeleteDBClusterSnapshotResult < Struct.new(
      :db_cluster_snapshot)
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
    #   The DB instance identifier for the DB instance to be deleted. This
    #   parameter isn't case sensitive.
    #
    #   Constraints:
    #
    #   * Must match the name of an existing DB instance.
    #
    #   ^
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/DeleteDBInstanceMessage AWS API Documentation
    #
    class DeleteDBInstanceMessage < Struct.new(
      :db_instance_identifier)
      include Aws::Structure
    end

    # @!attribute [rw] db_instance
    #   Detailed information about a DB instance.
    #   @return [Types::DBInstance]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/DeleteDBInstanceResult AWS API Documentation
    #
    class DeleteDBInstanceResult < Struct.new(
      :db_instance)
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
    #   The name of a specific DB cluster parameter group to return details
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
    #   The name of a specific DB cluster parameter group to return
    #   parameter details for.
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
    #   The identifier for the DB cluster snapshot to describe the
    #   attributes for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/DescribeDBClusterSnapshotAttributesMessage AWS API Documentation
    #
    class DescribeDBClusterSnapshotAttributesMessage < Struct.new(
      :db_cluster_snapshot_identifier)
      include Aws::Structure
    end

    # @!attribute [rw] db_cluster_snapshot_attributes_result
    #   Detailed information about the attributes that are associated with a
    #   DB cluster snapshot.
    #   @return [Types::DBClusterSnapshotAttributesResult]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/DescribeDBClusterSnapshotAttributesResult AWS API Documentation
    #
    class DescribeDBClusterSnapshotAttributesResult < Struct.new(
      :db_cluster_snapshot_attributes_result)
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
    #   The ID of the DB cluster to retrieve the list of DB cluster
    #   snapshots for. This parameter can't be used with the
    #   `DBClusterSnapshotIdentifier` parameter. This parameter is not case
    #   sensitive.
    #
    #   Constraints:
    #
    #   * If provided, must match the identifier of an existing `DBCluster`.
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] db_cluster_snapshot_identifier
    #   A specific DB cluster snapshot identifier to describe. This
    #   parameter can't be used with the `DBClusterIdentifier` parameter.
    #   This value is stored as a lowercase string.
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
    #   The type of DB cluster snapshots to be returned. You can specify one
    #   of the following values:
    #
    #   * `automated` - Return all DB cluster snapshots that Amazon
    #     DocumentDB has automatically created for your AWS account.
    #
    #   * `manual` - Return all DB cluster snapshots that you have manually
    #     created for your AWS account.
    #
    #   * `shared` - Return all manual DB cluster snapshots that have been
    #     shared to your AWS account.
    #
    #   * `public` - Return all DB cluster snapshots that have been marked
    #     as public.
    #
    #   If you don't specify a `SnapshotType` value, then both automated
    #   and manual DB cluster snapshots are returned. You can include shared
    #   DB cluster snapshots with these results by setting the
    #   `IncludeShared` parameter to `true`. You can include public DB
    #   cluster snapshots with these results by setting the `IncludePublic`
    #   parameter to `true`.
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
    #   Set to `true` to include shared manual DB cluster snapshots from
    #   other AWS accounts that this AWS account has been given permission
    #   to copy or restore, and otherwise `false`. The default is `false`.
    #   @return [Boolean]
    #
    # @!attribute [rw] include_public
    #   Set to `true` to include manual DB cluster snapshots that are public
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
    #   The user-provided DB cluster identifier. If this parameter is
    #   specified, information from only the specific DB cluster is
    #   returned. This parameter isn't case sensitive.
    #
    #   Constraints:
    #
    #   * If provided, must match an existing `DBClusterIdentifier`.
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   A filter that specifies one or more DB clusters to describe.
    #
    #   Supported filters:
    #
    #   * `db-cluster-id` - Accepts DB cluster identifiers and DB cluster
    #     Amazon Resource Names (ARNs). The results list only includes
    #     information about the DB clusters identified by these ARNs.
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
    #   Example: `5.1.49`
    #   @return [String]
    #
    # @!attribute [rw] db_parameter_group_family
    #   The name of a specific DB parameter group family to return details
    #   for.
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
    #   specified, information from only the specific DB instance is
    #   returned. This parameter isn't case sensitive.
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
    #   A filter that specifies one or more DB instances to describe.
    #
    #   Supported filters:
    #
    #   * `db-cluster-id` - Accepts DB cluster identifiers and DB cluster
    #     Amazon Resource Names (ARNs). The results list includes only the
    #     information about the DB instances that are associated with the DB
    #     clusters that are identified by these ARNs.
    #
    #   * `db-instance-id` - Accepts DB instance identifiers and DB instance
    #     ARNs. The results list includes only the information about the DB
    #     instances that are identified by these ARNs.
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
    #   The name of the DB subnet group to return details for.
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
    #   The name of the DB cluster parameter group family to return the
    #   engine parameter information for.
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
    #   The name of the engine to retrieve DB instance options for.
    #   @return [String]
    #
    # @!attribute [rw] engine_version
    #   The engine version filter value. Specify this parameter to show only
    #   the available offerings that match the specified engine version.
    #   @return [String]
    #
    # @!attribute [rw] db_instance_class
    #   The DB instance class filter value. Specify this parameter to show
    #   only the available offerings that match the specified DB instance
    #   class.
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
    #   * `db-cluster-id` - Accepts DB cluster identifiers and DB cluster
    #     Amazon Resource Names (ARNs). The results list includes only
    #     pending maintenance actions for the DB clusters identified by
    #     these ARNs.
    #
    #   * `db-instance-id` - Accepts DB instance identifiers and DB instance
    #     ARNs. The results list includes only pending maintenance actions
    #     for the DB instances identified by these ARNs.
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
      include Aws::Structure
    end

    # Network information for accessing a DB cluster or DB instance. Client
    # programs must specify a valid endpoint to access these Amazon
    # DocumentDB resources.
    #
    # @!attribute [rw] address
    #   Specifies the DNS address of the DB instance.
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
      include Aws::Structure
    end

    # Contains the result of a successful invocation of the
    # `DescribeEngineDefaultClusterParameters` operation.
    #
    # @!attribute [rw] db_parameter_group_family
    #   The name of the DB cluster parameter group family to return the
    #   engine parameter information for.
    #   @return [String]
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond
    #   the marker, up to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   The parameters of a particular DB cluster parameter group family.
    #   @return [Array<Types::Parameter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/EngineDefaults AWS API Documentation
    #
    class EngineDefaults < Struct.new(
      :db_parameter_group_family,
      :marker,
      :parameters)
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
    #   A DB cluster identifier to force a failover for. This parameter is
    #   not case sensitive.
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
    #   replica in the DB cluster. For example, `mydbcluster-replica1`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/FailoverDBClusterMessage AWS API Documentation
    #
    class FailoverDBClusterMessage < Struct.new(
      :db_cluster_identifier,
      :target_db_instance_identifier)
      include Aws::Structure
    end

    # @!attribute [rw] db_cluster
    #   Detailed information about a DB cluster.
    #   @return [Types::DBCluster]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/FailoverDBClusterResult AWS API Documentation
    #
    class FailoverDBClusterResult < Struct.new(
      :db_cluster)
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
      include Aws::Structure
    end

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
    #       }
    #
    # @!attribute [rw] db_cluster_identifier
    #   The DB cluster identifier for the cluster that is being modified.
    #   This parameter is not case sensitive.
    #
    #   Constraints:
    #
    #   * Must match the identifier of an existing `DBCluster`.
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] new_db_cluster_identifier
    #   The new DB cluster identifier for the DB cluster when renaming a DB
    #   cluster. This value is stored as a lowercase string.
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
    #   regardless of the `PreferredMaintenanceWindow` setting for the DB
    #   cluster. If this parameter is set to `false`, changes to the DB
    #   cluster are applied during the next maintenance window.
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
    #   The name of the DB cluster parameter group to use for the DB
    #   cluster.
    #   @return [String]
    #
    # @!attribute [rw] vpc_security_group_ids
    #   A list of virtual private cloud (VPC) security groups that the DB
    #   cluster will belong to.
    #   @return [Array<String>]
    #
    # @!attribute [rw] port
    #   The port number on which the DB cluster accepts connections.
    #
    #   Constraints: Must be a value from `1150` to `65535`.
    #
    #   Default: The same port as the original DB cluster.
    #   @return [Integer]
    #
    # @!attribute [rw] master_user_password
    #   The new password for the master database user. This password can
    #   contain any printable ASCII character except "`/`", "`"`", or
    #   "`@`".
    #
    #   Constraints: Must contain from 8 to 41 characters.
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
    #   to Amazon CloudWatch Logs for a specific DB instance or DB cluster.
    #   The `EnableLogTypes` and `DisableLogTypes` arrays determine which
    #   logs are exported (or not exported) to CloudWatch Logs.
    #   @return [Types::CloudwatchLogsExportConfiguration]
    #
    # @!attribute [rw] engine_version
    #   The version number of the database engine to which you want to
    #   upgrade. Changing this parameter results in an outage. The change is
    #   applied during the next maintenance window unless the
    #   `ApplyImmediately` parameter is set to `true`.
    #   @return [String]
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
      :engine_version)
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
    #   The name of the DB cluster parameter group to modify.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   A list of parameters in the DB cluster parameter group to modify.
    #   @return [Array<Types::Parameter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/ModifyDBClusterParameterGroupMessage AWS API Documentation
    #
    class ModifyDBClusterParameterGroupMessage < Struct.new(
      :db_cluster_parameter_group_name,
      :parameters)
      include Aws::Structure
    end

    # @!attribute [rw] db_cluster
    #   Detailed information about a DB cluster.
    #   @return [Types::DBCluster]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/ModifyDBClusterResult AWS API Documentation
    #
    class ModifyDBClusterResult < Struct.new(
      :db_cluster)
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
    #   The identifier for the DB cluster snapshot to modify the attributes
    #   for.
    #   @return [String]
    #
    # @!attribute [rw] attribute_name
    #   The name of the DB cluster snapshot attribute to modify.
    #
    #   To manage authorization for other AWS accounts to copy or restore a
    #   manual DB cluster snapshot, set this value to `restore`.
    #   @return [String]
    #
    # @!attribute [rw] values_to_add
    #   A list of DB cluster snapshot attributes to add to the attribute
    #   specified by `AttributeName`.
    #
    #   To authorize other AWS accounts to copy or restore a manual DB
    #   cluster snapshot, set this list to include one or more AWS account
    #   IDs. To make the manual DB cluster snapshot restorable by any AWS
    #   account, set it to `all`. Do not add the `all` value for any manual
    #   DB cluster snapshots that contain private information that you
    #   don't want to be available to all AWS accounts.
    #   @return [Array<String>]
    #
    # @!attribute [rw] values_to_remove
    #   A list of DB cluster snapshot attributes to remove from the
    #   attribute specified by `AttributeName`.
    #
    #   To remove authorization for other AWS accounts to copy or restore a
    #   manual DB cluster snapshot, set this list to include one or more AWS
    #   account identifiers. To remove authorization for any AWS account to
    #   copy or restore the DB cluster snapshot, set it to `all` . If you
    #   specify `all`, an AWS account whose account ID is explicitly added
    #   to the `restore` attribute can still copy or restore a manual DB
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
      include Aws::Structure
    end

    # @!attribute [rw] db_cluster_snapshot_attributes_result
    #   Detailed information about the attributes that are associated with a
    #   DB cluster snapshot.
    #   @return [Types::DBClusterSnapshotAttributesResult]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/ModifyDBClusterSnapshotAttributeResult AWS API Documentation
    #
    class ModifyDBClusterSnapshotAttributeResult < Struct.new(
      :db_cluster_snapshot_attributes_result)
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
    #         promotion_tier: 1,
    #       }
    #
    # @!attribute [rw] db_instance_identifier
    #   The DB instance identifier. This value is stored as a lowercase
    #   string.
    #
    #   Constraints:
    #
    #   * Must match the identifier of an existing `DBInstance`.
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] db_instance_class
    #   The new compute and memory capacity of the DB instance; for example,
    #   `db.m4.large`. Not all DB instance classes are available in all AWS
    #   Regions.
    #
    #   If you modify the DB instance class, an outage occurs during the
    #   change. The change is applied during the next maintenance window,
    #   unless `ApplyImmediately` is specified as `true` for this request.
    #
    #   Default: Uses existing setting.
    #   @return [String]
    #
    # @!attribute [rw] apply_immediately
    #   Specifies whether the modifications in this request and any pending
    #   modifications are asynchronously applied as soon as possible,
    #   regardless of the `PreferredMaintenanceWindow` setting for the DB
    #   instance.
    #
    #   If this parameter is set to `false`, changes to the DB instance are
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
    #   causes a reboot of the DB instance. If you are moving this window to
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
    #   the DB instance during the maintenance window. Changing this
    #   parameter doesn't result in an outage except in the following case,
    #   and the change is asynchronously applied as soon as possible. An
    #   outage results if this parameter is set to `true` during the
    #   maintenance window, and a newer minor version is available, and
    #   Amazon DocumentDB has enabled automatic patching for that engine
    #   version.
    #   @return [Boolean]
    #
    # @!attribute [rw] new_db_instance_identifier
    #   The new DB instance identifier for the DB instance when renaming a
    #   DB instance. When you change the DB instance identifier, an instance
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
      :promotion_tier)
      include Aws::Structure
    end

    # @!attribute [rw] db_instance
    #   Detailed information about a DB instance.
    #   @return [Types::DBInstance]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/ModifyDBInstanceResult AWS API Documentation
    #
    class ModifyDBInstanceResult < Struct.new(
      :db_instance)
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
    #   The name for the DB subnet group. This value is stored as a
    #   lowercase string. You can't modify the default subnet group.
    #
    #   Constraints: Must match the name of an existing `DBSubnetGroup`.
    #   Must not be default.
    #
    #   Example: `mySubnetgroup`
    #   @return [String]
    #
    # @!attribute [rw] db_subnet_group_description
    #   The description for the DB subnet group.
    #   @return [String]
    #
    # @!attribute [rw] subnet_ids
    #   The Amazon EC2 subnet IDs for the DB subnet group.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/ModifyDBSubnetGroupMessage AWS API Documentation
    #
    class ModifyDBSubnetGroupMessage < Struct.new(
      :db_subnet_group_name,
      :db_subnet_group_description,
      :subnet_ids)
      include Aws::Structure
    end

    # @!attribute [rw] db_subnet_group
    #   Detailed information about a DB subnet group.
    #   @return [Types::DBSubnetGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/ModifyDBSubnetGroupResult AWS API Documentation
    #
    class ModifyDBSubnetGroupResult < Struct.new(
      :db_subnet_group)
      include Aws::Structure
    end

    # The options that are available for a DB instance.
    #
    # @!attribute [rw] engine
    #   The engine type of a DB instance.
    #   @return [String]
    #
    # @!attribute [rw] engine_version
    #   The engine version of a DB instance.
    #   @return [String]
    #
    # @!attribute [rw] db_instance_class
    #   The DB instance class for a DB instance.
    #   @return [String]
    #
    # @!attribute [rw] license_model
    #   The license model for a DB instance.
    #   @return [String]
    #
    # @!attribute [rw] availability_zones
    #   A list of Availability Zones for a DB instance.
    #   @return [Array<Types::AvailabilityZone>]
    #
    # @!attribute [rw] vpc
    #   Indicates whether a DB instance is in a virtual private cloud (VPC).
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
      include Aws::Structure
    end

    # Represents the output of DescribeOrderableDBInstanceOptions.
    #
    # @!attribute [rw] orderable_db_instance_options
    #   The options that are available for a particular orderable DB
    #   instance.
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
      include Aws::Structure
    end

    # One or more modified settings for a DB instance. These modified
    # settings have been requested, but haven't been applied yet.
    #
    # @!attribute [rw] db_instance_class
    #   Contains the new `DBInstanceClass` for the DB instance that will be
    #   applied or is currently being applied.
    #   @return [String]
    #
    # @!attribute [rw] allocated_storage
    #   Contains the new `AllocatedStorage` size for the DB instance that
    #   will be applied or is currently being applied.
    #   @return [Integer]
    #
    # @!attribute [rw] master_user_password
    #   Contains the pending or currently in-progress change of the master
    #   credentials for the DB instance.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   Specifies the pending port for the DB instance.
    #   @return [Integer]
    #
    # @!attribute [rw] backup_retention_period
    #   Specifies the pending number of days for which automated backups are
    #   retained.
    #   @return [Integer]
    #
    # @!attribute [rw] multi_az
    #   Indicates that the Single-AZ DB instance is to change to a Multi-AZ
    #   deployment.
    #   @return [Boolean]
    #
    # @!attribute [rw] engine_version
    #   Indicates the database engine version.
    #   @return [String]
    #
    # @!attribute [rw] license_model
    #   The license model for the DB instance.
    #
    #   Valid values: `license-included`, `bring-your-own-license`,
    #   `general-public-license`
    #   @return [String]
    #
    # @!attribute [rw] iops
    #   Specifies the new Provisioned IOPS value for the DB instance that
    #   will be applied or is currently being applied.
    #   @return [Integer]
    #
    # @!attribute [rw] db_instance_identifier
    #   Contains the new `DBInstanceIdentifier` for the DB instance that
    #   will be applied or is currently being applied.
    #   @return [String]
    #
    # @!attribute [rw] storage_type
    #   Specifies the storage type to be associated with the DB instance.
    #   @return [String]
    #
    # @!attribute [rw] ca_certificate_identifier
    #   Specifies the identifier of the certificate authority (CA)
    #   certificate for the DB instance.
    #   @return [String]
    #
    # @!attribute [rw] db_subnet_group_name
    #   The new DB subnet group for the DB instance.
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
    #   The DB instance identifier. This parameter is stored as a lowercase
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
      include Aws::Structure
    end

    # @!attribute [rw] db_instance
    #   Detailed information about a DB instance.
    #   @return [Types::DBInstance]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/RebootDBInstanceResult AWS API Documentation
    #
    class RebootDBInstanceResult < Struct.new(
      :db_instance)
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
    #   The name of the DB cluster parameter group to reset.
    #   @return [String]
    #
    # @!attribute [rw] reset_all_parameters
    #   A value that is set to `true` to reset all parameters in the DB
    #   cluster parameter group to their default values, and `false`
    #   otherwise. You can't use this parameter if there is a list of
    #   parameter names specified for the `Parameters` parameter.
    #   @return [Boolean]
    #
    # @!attribute [rw] parameters
    #   A list of parameter names in the DB cluster parameter group to reset
    #   to the default values. You can't use this parameter if the
    #   `ResetAllParameters` parameter is set to `true`.
    #   @return [Array<Types::Parameter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/ResetDBClusterParameterGroupMessage AWS API Documentation
    #
    class ResetDBClusterParameterGroupMessage < Struct.new(
      :db_cluster_parameter_group_name,
      :reset_all_parameters,
      :parameters)
      include Aws::Structure
    end

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
    #       }
    #
    # @!attribute [rw] availability_zones
    #   Provides the list of Amazon EC2 Availability Zones that instances in
    #   the restored DB cluster can be created in.
    #   @return [Array<String>]
    #
    # @!attribute [rw] db_cluster_identifier
    #   The name of the DB cluster to create from the DB snapshot or DB
    #   cluster snapshot. This parameter isn't case sensitive.
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
    #   The identifier for the DB snapshot or DB cluster snapshot to restore
    #   from.
    #
    #   You can use either the name or the Amazon Resource Name (ARN) to
    #   specify a DB cluster snapshot. However, you can use only the ARN to
    #   specify a DB snapshot.
    #
    #   Constraints:
    #
    #   * Must match the identifier of an existing snapshot.
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] engine
    #   The database engine to use for the new DB cluster.
    #
    #   Default: The same as source.
    #
    #   Constraint: Must be compatible with the engine of the source.
    #   @return [String]
    #
    # @!attribute [rw] engine_version
    #   The version of the database engine to use for the new DB cluster.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The port number on which the new DB cluster accepts connections.
    #
    #   Constraints: Must be a value from `1150` to `65535`.
    #
    #   Default: The same port as the original DB cluster.
    #   @return [Integer]
    #
    # @!attribute [rw] db_subnet_group_name
    #   The name of the DB subnet group to use for the new DB cluster.
    #
    #   Constraints: If provided, must match the name of an existing
    #   `DBSubnetGroup`.
    #
    #   Example: `mySubnetgroup`
    #   @return [String]
    #
    # @!attribute [rw] vpc_security_group_ids
    #   A list of virtual private cloud (VPC) security groups that the new
    #   DB cluster will belong to.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   The tags to be assigned to the restored DB cluster.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] kms_key_id
    #   The AWS KMS key identifier to use when restoring an encrypted DB
    #   cluster from a DB snapshot or DB cluster snapshot.
    #
    #   The AWS KMS key identifier is the Amazon Resource Name (ARN) for the
    #   AWS KMS encryption key. If you are restoring a DB cluster with the
    #   same AWS account that owns the AWS KMS encryption key used to
    #   encrypt the new DB cluster, then you can use the AWS KMS key alias
    #   instead of the ARN for the AWS KMS encryption key.
    #
    #   If you do not specify a value for the `KmsKeyId` parameter, then the
    #   following occurs:
    #
    #   * If the DB snapshot or DB cluster snapshot in `SnapshotIdentifier`
    #     is encrypted, then the restored DB cluster is encrypted using the
    #     AWS KMS key that was used to encrypt the DB snapshot or the DB
    #     cluster snapshot.
    #
    #   * If the DB snapshot or the DB cluster snapshot in
    #     `SnapshotIdentifier` is not encrypted, then the restored DB
    #     cluster is not encrypted.
    #   @return [String]
    #
    # @!attribute [rw] enable_cloudwatch_logs_exports
    #   A list of log types that must be enabled for exporting to Amazon
    #   CloudWatch Logs.
    #   @return [Array<String>]
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
      :enable_cloudwatch_logs_exports)
      include Aws::Structure
    end

    # @!attribute [rw] db_cluster
    #   Detailed information about a DB cluster.
    #   @return [Types::DBCluster]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/RestoreDBClusterFromSnapshotResult AWS API Documentation
    #
    class RestoreDBClusterFromSnapshotResult < Struct.new(
      :db_cluster)
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
    #       }
    #
    # @!attribute [rw] db_cluster_identifier
    #   The name of the new DB cluster to be created.
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
    #   The identifier of the source DB cluster from which to restore.
    #
    #   Constraints:
    #
    #   * Must match the identifier of an existing `DBCluster`.
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] restore_to_time
    #   The date and time to restore the DB cluster to.
    #
    #   Valid values: A time in Universal Coordinated Time (UTC) format.
    #
    #   Constraints:
    #
    #   * Must be before the latest restorable time for the DB instance.
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
    #   A value that is set to `true` to restore the DB cluster to the
    #   latest restorable backup time, and `false` otherwise.
    #
    #   Default: `false`
    #
    #   Constraints: Cannot be specified if the `RestoreToTime` parameter is
    #   provided.
    #   @return [Boolean]
    #
    # @!attribute [rw] port
    #   The port number on which the new DB cluster accepts connections.
    #
    #   Constraints: Must be a value from `1150` to `65535`.
    #
    #   Default: The default port for the engine.
    #   @return [Integer]
    #
    # @!attribute [rw] db_subnet_group_name
    #   The DB subnet group name to use for the new DB cluster.
    #
    #   Constraints: If provided, must match the name of an existing
    #   `DBSubnetGroup`.
    #
    #   Example: `mySubnetgroup`
    #   @return [String]
    #
    # @!attribute [rw] vpc_security_group_ids
    #   A list of VPC security groups that the new DB cluster belongs to.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   The tags to be assigned to the restored DB cluster.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] kms_key_id
    #   The AWS KMS key identifier to use when restoring an encrypted DB
    #   cluster from an encrypted DB cluster.
    #
    #   The AWS KMS key identifier is the Amazon Resource Name (ARN) for the
    #   AWS KMS encryption key. If you are restoring a DB cluster with the
    #   same AWS account that owns the AWS KMS encryption key used to
    #   encrypt the new DB cluster, then you can use the AWS KMS key alias
    #   instead of the ARN for the AWS KMS encryption key.
    #
    #   You can restore to a new DB cluster and encrypt the new DB cluster
    #   with an AWS KMS key that is different from the AWS KMS key used to
    #   encrypt the source DB cluster. The new DB cluster is encrypted with
    #   the AWS KMS key identified by the `KmsKeyId` parameter.
    #
    #   If you do not specify a value for the `KmsKeyId` parameter, then the
    #   following occurs:
    #
    #   * If the DB cluster is encrypted, then the restored DB cluster is
    #     encrypted using the AWS KMS key that was used to encrypt the
    #     source DB cluster.
    #
    #   * If the DB cluster is not encrypted, then the restored DB cluster
    #     is not encrypted.
    #
    #   If `DBClusterIdentifier` refers to a DB cluster that is not
    #   encrypted, then the restore request is rejected.
    #   @return [String]
    #
    # @!attribute [rw] enable_cloudwatch_logs_exports
    #   A list of log types that must be enabled for exporting to Amazon
    #   CloudWatch Logs.
    #   @return [Array<String>]
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
      :enable_cloudwatch_logs_exports)
      include Aws::Structure
    end

    # @!attribute [rw] db_cluster
    #   Detailed information about a DB cluster.
    #   @return [Types::DBCluster]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-2014-10-31/RestoreDBClusterToPointInTimeResult AWS API Documentation
    #
    class RestoreDBClusterToPointInTimeResult < Struct.new(
      :db_cluster)
      include Aws::Structure
    end

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
      include Aws::Structure
    end

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
      include Aws::Structure
    end

    # The version of the database engine that a DB instance can be upgraded
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
    #   The version of the database engine that a DB instance can be
    #   upgraded to.
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
      include Aws::Structure
    end

  end
end
