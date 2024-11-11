# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::DocDBElastic
  module Types

    # An exception that occurs when there are not sufficient permissions to
    # perform an action.
    #
    # @!attribute [rw] message
    #   An error message explaining why access was denied.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-elastic-2022-11-28/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] apply_action
    #   The pending maintenance action to apply to the resource.
    #
    #   Valid actions are:
    #
    #   * `ENGINE_UPDATE `
    #
    #   * `ENGINE_UPGRADE`
    #
    #   * `SECURITY_UPDATE`
    #
    #   * `OS_UPDATE`
    #
    #   * `MASTER_USER_PASSWORD_UPDATE`
    #   @return [String]
    #
    # @!attribute [rw] apply_on
    #   A specific date to apply the pending maintenance action. Required if
    #   opt-in-type is `APPLY_ON`. Format: `yyyy/MM/dd HH:mm-yyyy/MM/dd
    #   HH:mm`
    #   @return [String]
    #
    # @!attribute [rw] opt_in_type
    #   A value that specifies the type of opt-in request, or undoes an
    #   opt-in request. An opt-in request of type `IMMEDIATE` can't be
    #   undone.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   The Amazon DocumentDB Amazon Resource Name (ARN) of the resource to
    #   which the pending maintenance action applies.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-elastic-2022-11-28/ApplyPendingMaintenanceActionInput AWS API Documentation
    #
    class ApplyPendingMaintenanceActionInput < Struct.new(
      :apply_action,
      :apply_on,
      :opt_in_type,
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_pending_maintenance_action
    #   The output of the pending maintenance action being applied.
    #   @return [Types::ResourcePendingMaintenanceAction]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-elastic-2022-11-28/ApplyPendingMaintenanceActionOutput AWS API Documentation
    #
    class ApplyPendingMaintenanceActionOutput < Struct.new(
      :resource_pending_maintenance_action)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns information about a specific elastic cluster.
    #
    # @!attribute [rw] admin_user_name
    #   The name of the elastic cluster administrator.
    #   @return [String]
    #
    # @!attribute [rw] auth_type
    #   The authentication type for the elastic cluster.
    #   @return [String]
    #
    # @!attribute [rw] backup_retention_period
    #   The number of days for which automatic snapshots are retained.
    #   @return [Integer]
    #
    # @!attribute [rw] cluster_arn
    #   The ARN identifier of the elastic cluster.
    #   @return [String]
    #
    # @!attribute [rw] cluster_endpoint
    #   The URL used to connect to the elastic cluster.
    #   @return [String]
    #
    # @!attribute [rw] cluster_name
    #   The name of the elastic cluster.
    #   @return [String]
    #
    # @!attribute [rw] create_time
    #   The time when the elastic cluster was created in Universal
    #   Coordinated Time (UTC).
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   The KMS key identifier to use to encrypt the elastic cluster.
    #   @return [String]
    #
    # @!attribute [rw] preferred_backup_window
    #   The daily time range during which automated backups are created if
    #   automated backups are enabled, as determined by
    #   `backupRetentionPeriod`.
    #   @return [String]
    #
    # @!attribute [rw] preferred_maintenance_window
    #   The weekly time range during which system maintenance can occur, in
    #   Universal Coordinated Time (UTC).
    #
    #   *Format*: `ddd:hh24:mi-ddd:hh24:mi`
    #   @return [String]
    #
    # @!attribute [rw] shard_capacity
    #   The number of vCPUs assigned to each elastic cluster shard. Maximum
    #   is 64. Allowed values are 2, 4, 8, 16, 32, 64.
    #   @return [Integer]
    #
    # @!attribute [rw] shard_count
    #   The number of shards assigned to the elastic cluster. Maximum is 32.
    #   @return [Integer]
    #
    # @!attribute [rw] shard_instance_count
    #   The number of replica instances applying to all shards in the
    #   cluster. A `shardInstanceCount` value of 1 means there is one writer
    #   instance, and any additional instances are replicas that can be used
    #   for reads and to improve availability.
    #   @return [Integer]
    #
    # @!attribute [rw] shards
    #   The total number of shards in the cluster.
    #   @return [Array<Types::Shard>]
    #
    # @!attribute [rw] status
    #   The status of the elastic cluster.
    #   @return [String]
    #
    # @!attribute [rw] subnet_ids
    #   The Amazon EC2 subnet IDs for the elastic cluster.
    #   @return [Array<String>]
    #
    # @!attribute [rw] vpc_security_group_ids
    #   A list of EC2 VPC security groups associated with thie elastic
    #   cluster.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-elastic-2022-11-28/Cluster AWS API Documentation
    #
    class Cluster < Struct.new(
      :admin_user_name,
      :auth_type,
      :backup_retention_period,
      :cluster_arn,
      :cluster_endpoint,
      :cluster_name,
      :create_time,
      :kms_key_id,
      :preferred_backup_window,
      :preferred_maintenance_window,
      :shard_capacity,
      :shard_count,
      :shard_instance_count,
      :shards,
      :status,
      :subnet_ids,
      :vpc_security_group_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of Amazon DocumentDB elastic clusters.
    #
    # @!attribute [rw] cluster_arn
    #   The ARN identifier of the elastic cluster.
    #   @return [String]
    #
    # @!attribute [rw] cluster_name
    #   The name of the elastic cluster.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the elastic cluster.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-elastic-2022-11-28/ClusterInList AWS API Documentation
    #
    class ClusterInList < Struct.new(
      :cluster_arn,
      :cluster_name,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns information about a specific elastic cluster snapshot.
    #
    # @!attribute [rw] admin_user_name
    #   The name of the elastic cluster administrator.
    #   @return [String]
    #
    # @!attribute [rw] cluster_arn
    #   The ARN identifier of the elastic cluster.
    #   @return [String]
    #
    # @!attribute [rw] cluster_creation_time
    #   The time when the elastic cluster was created in Universal
    #   Coordinated Time (UTC).
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   The KMS key identifier is the Amazon Resource Name (ARN) for the KMS
    #   encryption key. If you are creating a cluster using the same Amazon
    #   account that owns this KMS encryption key, you can use the KMS key
    #   alias instead of the ARN as the KMS encryption key. If an encryption
    #   key is not specified here, Amazon DocumentDB uses the default
    #   encryption key that KMS creates for your account. Your account has a
    #   different default encryption key for each Amazon Region.
    #   @return [String]
    #
    # @!attribute [rw] snapshot_arn
    #   The ARN identifier of the elastic cluster snapshot.
    #   @return [String]
    #
    # @!attribute [rw] snapshot_creation_time
    #   The time when the elastic cluster snapshot was created in Universal
    #   Coordinated Time (UTC).
    #   @return [String]
    #
    # @!attribute [rw] snapshot_name
    #   The name of the elastic cluster snapshot.
    #   @return [String]
    #
    # @!attribute [rw] snapshot_type
    #   The type of cluster snapshots to be returned. You can specify one of
    #   the following values:
    #
    #   * `automated` - Return all cluster snapshots that Amazon DocumentDB
    #     has automatically created for your Amazon Web Services account.
    #
    #   * `manual` - Return all cluster snapshots that you have manually
    #     created for your Amazon Web Services account.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the elastic cluster snapshot.
    #   @return [String]
    #
    # @!attribute [rw] subnet_ids
    #   The Amazon EC2 subnet IDs for the elastic cluster.
    #   @return [Array<String>]
    #
    # @!attribute [rw] vpc_security_group_ids
    #   A list of EC2 VPC security groups to associate with the elastic
    #   cluster.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-elastic-2022-11-28/ClusterSnapshot AWS API Documentation
    #
    class ClusterSnapshot < Struct.new(
      :admin_user_name,
      :cluster_arn,
      :cluster_creation_time,
      :kms_key_id,
      :snapshot_arn,
      :snapshot_creation_time,
      :snapshot_name,
      :snapshot_type,
      :status,
      :subnet_ids,
      :vpc_security_group_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of elastic cluster snapshots.
    #
    # @!attribute [rw] cluster_arn
    #   The ARN identifier of the elastic cluster.
    #   @return [String]
    #
    # @!attribute [rw] snapshot_arn
    #   The ARN identifier of the elastic cluster snapshot.
    #   @return [String]
    #
    # @!attribute [rw] snapshot_creation_time
    #   The time when the elastic cluster snapshot was created in Universal
    #   Coordinated Time (UTC).
    #   @return [String]
    #
    # @!attribute [rw] snapshot_name
    #   The name of the elastic cluster snapshot.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the elastic cluster snapshot.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-elastic-2022-11-28/ClusterSnapshotInList AWS API Documentation
    #
    class ClusterSnapshotInList < Struct.new(
      :cluster_arn,
      :snapshot_arn,
      :snapshot_creation_time,
      :snapshot_name,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # There was an access conflict.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The ID of the resource where there was an access conflict.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of the resource where there was an access conflict.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-elastic-2022-11-28/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] copy_tags
    #   Set to `true` to copy all tags from the source cluster snapshot to
    #   the target elastic cluster snapshot. The default is `false`.
    #   @return [Boolean]
    #
    # @!attribute [rw] kms_key_id
    #   The Amazon Web Services KMS key ID for an encrypted elastic cluster
    #   snapshot. The Amazon Web Services KMS key ID is the Amazon Resource
    #   Name (ARN), Amazon Web Services KMS key identifier, or the Amazon
    #   Web Services KMS key alias for the Amazon Web Services KMS
    #   encryption key.
    #
    #   If you copy an encrypted elastic cluster snapshot from your Amazon
    #   Web Services account, you can specify a value for `KmsKeyId` to
    #   encrypt the copy with a new Amazon Web ServicesS KMS encryption key.
    #   If you don't specify a value for `KmsKeyId`, then the copy of the
    #   elastic cluster snapshot is encrypted with the same `AWS` KMS key as
    #   the source elastic cluster snapshot.
    #
    #   To copy an encrypted elastic cluster snapshot to another Amazon Web
    #   Services region, set `KmsKeyId` to the Amazon Web Services KMS key
    #   ID that you want to use to encrypt the copy of the elastic cluster
    #   snapshot in the destination region. Amazon Web Services KMS
    #   encryption keys are specific to the Amazon Web Services region that
    #   they are created in, and you can't use encryption keys from one
    #   Amazon Web Services region in another Amazon Web Services region.
    #
    #   If you copy an unencrypted elastic cluster snapshot and specify a
    #   value for the `KmsKeyId` parameter, an error is returned.
    #   @return [String]
    #
    # @!attribute [rw] snapshot_arn
    #   The Amazon Resource Name (ARN) identifier of the elastic cluster
    #   snapshot.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to be assigned to the elastic cluster snapshot.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] target_snapshot_name
    #   The identifier of the new elastic cluster snapshot to create from
    #   the source cluster snapshot. This parameter is not case sensitive.
    #
    #   Constraints:
    #
    #   * Must contain from 1 to 63 letters, numbers, or hyphens.
    #
    #   * The first character must be a letter.
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens.
    #
    #   Example: `elastic-cluster-snapshot-5`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-elastic-2022-11-28/CopyClusterSnapshotInput AWS API Documentation
    #
    class CopyClusterSnapshotInput < Struct.new(
      :copy_tags,
      :kms_key_id,
      :snapshot_arn,
      :tags,
      :target_snapshot_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] snapshot
    #   Returns information about a specific elastic cluster snapshot.
    #   @return [Types::ClusterSnapshot]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-elastic-2022-11-28/CopyClusterSnapshotOutput AWS API Documentation
    #
    class CopyClusterSnapshotOutput < Struct.new(
      :snapshot)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] admin_user_name
    #   The name of the Amazon DocumentDB elastic clusters administrator.
    #
    #   *Constraints*:
    #
    #   * Must be from 1 to 63 letters or numbers.
    #
    #   * The first character must be a letter.
    #
    #   * Cannot be a reserved word.
    #   @return [String]
    #
    # @!attribute [rw] admin_user_password
    #   The password for the Amazon DocumentDB elastic clusters
    #   administrator. The password can contain any printable ASCII
    #   characters.
    #
    #   *Constraints*:
    #
    #   * Must contain from 8 to 100 characters.
    #
    #   * Cannot contain a forward slash (/), double quote ("), or the
    #     "at" symbol (@).
    #   @return [String]
    #
    # @!attribute [rw] auth_type
    #   The authentication type used to determine where to fetch the
    #   password used for accessing the elastic cluster. Valid types are
    #   `PLAIN_TEXT` or `SECRET_ARN`.
    #   @return [String]
    #
    # @!attribute [rw] backup_retention_period
    #   The number of days for which automatic snapshots are retained.
    #   @return [Integer]
    #
    # @!attribute [rw] client_token
    #   The client token for the elastic cluster.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] cluster_name
    #   The name of the new elastic cluster. This parameter is stored as a
    #   lowercase string.
    #
    #   *Constraints*:
    #
    #   * Must contain from 1 to 63 letters, numbers, or hyphens.
    #
    #   * The first character must be a letter.
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens.
    #
    #   *Example*: `my-cluster`
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   The KMS key identifier to use to encrypt the new elastic cluster.
    #
    #   The KMS key identifier is the Amazon Resource Name (ARN) for the KMS
    #   encryption key. If you are creating a cluster using the same Amazon
    #   account that owns this KMS encryption key, you can use the KMS key
    #   alias instead of the ARN as the KMS encryption key.
    #
    #   If an encryption key is not specified, Amazon DocumentDB uses the
    #   default encryption key that KMS creates for your account. Your
    #   account has a different default encryption key for each Amazon
    #   Region.
    #   @return [String]
    #
    # @!attribute [rw] preferred_backup_window
    #   The daily time range during which automated backups are created if
    #   automated backups are enabled, as determined by the
    #   `backupRetentionPeriod`.
    #   @return [String]
    #
    # @!attribute [rw] preferred_maintenance_window
    #   The weekly time range during which system maintenance can occur, in
    #   Universal Coordinated Time (UTC).
    #
    #   *Format*: `ddd:hh24:mi-ddd:hh24:mi`
    #
    #   *Default*: a 30-minute window selected at random from an 8-hour
    #   block of time for each Amazon Web Services Region, occurring on a
    #   random day of the week.
    #
    #   *Valid days*: Mon, Tue, Wed, Thu, Fri, Sat, Sun
    #
    #   *Constraints*: Minimum 30-minute window.
    #   @return [String]
    #
    # @!attribute [rw] shard_capacity
    #   The number of vCPUs assigned to each elastic cluster shard. Maximum
    #   is 64. Allowed values are 2, 4, 8, 16, 32, 64.
    #   @return [Integer]
    #
    # @!attribute [rw] shard_count
    #   The number of shards assigned to the elastic cluster. Maximum is 32.
    #   @return [Integer]
    #
    # @!attribute [rw] shard_instance_count
    #   The number of replica instances applying to all shards in the
    #   elastic cluster. A `shardInstanceCount` value of 1 means there is
    #   one writer instance, and any additional instances are replicas that
    #   can be used for reads and to improve availability.
    #   @return [Integer]
    #
    # @!attribute [rw] subnet_ids
    #   The Amazon EC2 subnet IDs for the new elastic cluster.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   The tags to be assigned to the new elastic cluster.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] vpc_security_group_ids
    #   A list of EC2 VPC security groups to associate with the new elastic
    #   cluster.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-elastic-2022-11-28/CreateClusterInput AWS API Documentation
    #
    class CreateClusterInput < Struct.new(
      :admin_user_name,
      :admin_user_password,
      :auth_type,
      :backup_retention_period,
      :client_token,
      :cluster_name,
      :kms_key_id,
      :preferred_backup_window,
      :preferred_maintenance_window,
      :shard_capacity,
      :shard_count,
      :shard_instance_count,
      :subnet_ids,
      :tags,
      :vpc_security_group_ids)
      SENSITIVE = [:admin_user_password]
      include Aws::Structure
    end

    # @!attribute [rw] cluster
    #   The new elastic cluster that has been created.
    #   @return [Types::Cluster]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-elastic-2022-11-28/CreateClusterOutput AWS API Documentation
    #
    class CreateClusterOutput < Struct.new(
      :cluster)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster_arn
    #   The ARN identifier of the elastic cluster of which you want to
    #   create a snapshot.
    #   @return [String]
    #
    # @!attribute [rw] snapshot_name
    #   The name of the new elastic cluster snapshot.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to be assigned to the new elastic cluster snapshot.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-elastic-2022-11-28/CreateClusterSnapshotInput AWS API Documentation
    #
    class CreateClusterSnapshotInput < Struct.new(
      :cluster_arn,
      :snapshot_name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] snapshot
    #   Returns information about the new elastic cluster snapshot.
    #   @return [Types::ClusterSnapshot]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-elastic-2022-11-28/CreateClusterSnapshotOutput AWS API Documentation
    #
    class CreateClusterSnapshotOutput < Struct.new(
      :snapshot)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster_arn
    #   The ARN identifier of the elastic cluster that is to be deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-elastic-2022-11-28/DeleteClusterInput AWS API Documentation
    #
    class DeleteClusterInput < Struct.new(
      :cluster_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster
    #   Returns information about the newly deleted elastic cluster.
    #   @return [Types::Cluster]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-elastic-2022-11-28/DeleteClusterOutput AWS API Documentation
    #
    class DeleteClusterOutput < Struct.new(
      :cluster)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] snapshot_arn
    #   The ARN identifier of the elastic cluster snapshot that is to be
    #   deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-elastic-2022-11-28/DeleteClusterSnapshotInput AWS API Documentation
    #
    class DeleteClusterSnapshotInput < Struct.new(
      :snapshot_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] snapshot
    #   Returns information about the newly deleted elastic cluster
    #   snapshot.
    #   @return [Types::ClusterSnapshot]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-elastic-2022-11-28/DeleteClusterSnapshotOutput AWS API Documentation
    #
    class DeleteClusterSnapshotOutput < Struct.new(
      :snapshot)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster_arn
    #   The ARN identifier of the elastic cluster.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-elastic-2022-11-28/GetClusterInput AWS API Documentation
    #
    class GetClusterInput < Struct.new(
      :cluster_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster
    #   Returns information about a specific elastic cluster.
    #   @return [Types::Cluster]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-elastic-2022-11-28/GetClusterOutput AWS API Documentation
    #
    class GetClusterOutput < Struct.new(
      :cluster)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] snapshot_arn
    #   The ARN identifier of the elastic cluster snapshot.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-elastic-2022-11-28/GetClusterSnapshotInput AWS API Documentation
    #
    class GetClusterSnapshotInput < Struct.new(
      :snapshot_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] snapshot
    #   Returns information about a specific elastic cluster snapshot.
    #   @return [Types::ClusterSnapshot]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-elastic-2022-11-28/GetClusterSnapshotOutput AWS API Documentation
    #
    class GetClusterSnapshotOutput < Struct.new(
      :snapshot)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   Retrieves pending maintenance actions for a specific Amazon Resource
    #   Name (ARN).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-elastic-2022-11-28/GetPendingMaintenanceActionInput AWS API Documentation
    #
    class GetPendingMaintenanceActionInput < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_pending_maintenance_action
    #   Provides information about a pending maintenance action for a
    #   resource.
    #   @return [Types::ResourcePendingMaintenanceAction]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-elastic-2022-11-28/GetPendingMaintenanceActionOutput AWS API Documentation
    #
    class GetPendingMaintenanceActionOutput < Struct.new(
      :resource_pending_maintenance_action)
      SENSITIVE = []
      include Aws::Structure
    end

    # There was an internal server error.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-elastic-2022-11-28/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster_arn
    #   The ARN identifier of the elastic cluster.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of elastic cluster snapshot results to receive in
    #   the response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A pagination token provided by a previous request. If this parameter
    #   is specified, the response includes only records beyond this token,
    #   up to the value specified by `max-results`.
    #
    #   If there is no more data in the responce, the `nextToken` will not
    #   be returned.
    #   @return [String]
    #
    # @!attribute [rw] snapshot_type
    #   The type of cluster snapshots to be returned. You can specify one of
    #   the following values:
    #
    #   * `automated` - Return all cluster snapshots that Amazon DocumentDB
    #     has automatically created for your Amazon Web Services account.
    #
    #   * `manual` - Return all cluster snapshots that you have manually
    #     created for your Amazon Web Services account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-elastic-2022-11-28/ListClusterSnapshotsInput AWS API Documentation
    #
    class ListClusterSnapshotsInput < Struct.new(
      :cluster_arn,
      :max_results,
      :next_token,
      :snapshot_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A pagination token provided by a previous request. If this parameter
    #   is specified, the response includes only records beyond this token,
    #   up to the value specified by `max-results`.
    #
    #   If there is no more data in the responce, the `nextToken` will not
    #   be returned.
    #   @return [String]
    #
    # @!attribute [rw] snapshots
    #   A list of snapshots for a specified elastic cluster.
    #   @return [Array<Types::ClusterSnapshotInList>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-elastic-2022-11-28/ListClusterSnapshotsOutput AWS API Documentation
    #
    class ListClusterSnapshotsOutput < Struct.new(
      :next_token,
      :snapshots)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of elastic cluster snapshot results to receive in
    #   the response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A pagination token provided by a previous request. If this parameter
    #   is specified, the response includes only records beyond this token,
    #   up to the value specified by `max-results`.
    #
    #   If there is no more data in the responce, the `nextToken` will not
    #   be returned.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-elastic-2022-11-28/ListClustersInput AWS API Documentation
    #
    class ListClustersInput < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] clusters
    #   A list of Amazon DocumentDB elastic clusters.
    #   @return [Array<Types::ClusterInList>]
    #
    # @!attribute [rw] next_token
    #   A pagination token provided by a previous request. If this parameter
    #   is specified, the response includes only records beyond this token,
    #   up to the value specified by `max-results`.
    #
    #   If there is no more data in the responce, the `nextToken` will not
    #   be returned.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-elastic-2022-11-28/ListClustersOutput AWS API Documentation
    #
    class ListClustersOutput < Struct.new(
      :clusters,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of results to include in the response. If more
    #   records exist than the specified `maxResults` value, a pagination
    #   token (marker) is included in the response so that the remaining
    #   results can be retrieved.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond
    #   the marker, up to the value specified by `maxResults`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-elastic-2022-11-28/ListPendingMaintenanceActionsInput AWS API Documentation
    #
    class ListPendingMaintenanceActionsInput < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   An optional pagination token provided by a previous request. If this
    #   parameter is displayed, the responses will include only records
    #   beyond the marker, up to the value specified by `maxResults`.
    #   @return [String]
    #
    # @!attribute [rw] resource_pending_maintenance_actions
    #   Provides information about a pending maintenance action for a
    #   resource.
    #   @return [Array<Types::ResourcePendingMaintenanceAction>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-elastic-2022-11-28/ListPendingMaintenanceActionsOutput AWS API Documentation
    #
    class ListPendingMaintenanceActionsOutput < Struct.new(
      :next_token,
      :resource_pending_maintenance_actions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN identifier of the elastic cluster resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-elastic-2022-11-28/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The list of tags for the specified elastic cluster resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-elastic-2022-11-28/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Retrieves the details of maintenance actions that are pending.
    #
    # @!attribute [rw] action
    #   Displays the specific action of a pending maintenance action.
    #   @return [String]
    #
    # @!attribute [rw] auto_applied_after_date
    #   Displays the date of the maintenance window when the action is
    #   applied. The maintenance action is applied to the resource during
    #   its first maintenance window after this date. If this date is
    #   specified, any `NEXT_MAINTENANCE` `optInType` requests are ignored.
    #   @return [String]
    #
    # @!attribute [rw] current_apply_date
    #   Displays the effective date when the pending maintenance action is
    #   applied to the resource.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Displays a description providing more detail about the maintenance
    #   action.
    #   @return [String]
    #
    # @!attribute [rw] forced_apply_date
    #   Displays the date when the maintenance action is automatically
    #   applied. The maintenance action is applied to the resource on this
    #   date regardless of the maintenance window for the resource. If this
    #   date is specified, any `IMMEDIATE` `optInType` requests are ignored.
    #   @return [String]
    #
    # @!attribute [rw] opt_in_status
    #   Displays the type of `optInType` request that has been received for
    #   the resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-elastic-2022-11-28/PendingMaintenanceActionDetails AWS API Documentation
    #
    class PendingMaintenanceActionDetails < Struct.new(
      :action,
      :auto_applied_after_date,
      :current_apply_date,
      :description,
      :forced_apply_date,
      :opt_in_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified resource could not be located.
    #
    # @!attribute [rw] message
    #   An error message describing the failure.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The ID of the resource that could not be located.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of the resource that could not be found.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-elastic-2022-11-28/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about a pending maintenance action for a
    # resource.
    #
    # @!attribute [rw] pending_maintenance_action_details
    #   Provides information about a pending maintenance action for a
    #   resource.
    #   @return [Array<Types::PendingMaintenanceActionDetails>]
    #
    # @!attribute [rw] resource_arn
    #   The Amazon DocumentDB Amazon Resource Name (ARN) of the resource to
    #   which the pending maintenance action applies.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-elastic-2022-11-28/ResourcePendingMaintenanceAction AWS API Documentation
    #
    class ResourcePendingMaintenanceAction < Struct.new(
      :pending_maintenance_action_details,
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster_name
    #   The name of the elastic cluster.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   The KMS key identifier to use to encrypt the new Amazon DocumentDB
    #   elastic clusters cluster.
    #
    #   The KMS key identifier is the Amazon Resource Name (ARN) for the KMS
    #   encryption key. If you are creating a cluster using the same Amazon
    #   account that owns this KMS encryption key, you can use the KMS key
    #   alias instead of the ARN as the KMS encryption key.
    #
    #   If an encryption key is not specified here, Amazon DocumentDB uses
    #   the default encryption key that KMS creates for your account. Your
    #   account has a different default encryption key for each Amazon
    #   Region.
    #   @return [String]
    #
    # @!attribute [rw] shard_capacity
    #   The capacity of each shard in the new restored elastic cluster.
    #   @return [Integer]
    #
    # @!attribute [rw] shard_instance_count
    #   The number of replica instances applying to all shards in the
    #   elastic cluster. A `shardInstanceCount` value of 1 means there is
    #   one writer instance, and any additional instances are replicas that
    #   can be used for reads and to improve availability.
    #   @return [Integer]
    #
    # @!attribute [rw] snapshot_arn
    #   The ARN identifier of the elastic cluster snapshot.
    #   @return [String]
    #
    # @!attribute [rw] subnet_ids
    #   The Amazon EC2 subnet IDs for the elastic cluster.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   A list of the tag names to be assigned to the restored elastic
    #   cluster, in the form of an array of key-value pairs in which the key
    #   is the tag name and the value is the key value.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] vpc_security_group_ids
    #   A list of EC2 VPC security groups to associate with the elastic
    #   cluster.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-elastic-2022-11-28/RestoreClusterFromSnapshotInput AWS API Documentation
    #
    class RestoreClusterFromSnapshotInput < Struct.new(
      :cluster_name,
      :kms_key_id,
      :shard_capacity,
      :shard_instance_count,
      :snapshot_arn,
      :subnet_ids,
      :tags,
      :vpc_security_group_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster
    #   Returns information about a the restored elastic cluster.
    #   @return [Types::Cluster]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-elastic-2022-11-28/RestoreClusterFromSnapshotOutput AWS API Documentation
    #
    class RestoreClusterFromSnapshotOutput < Struct.new(
      :cluster)
      SENSITIVE = []
      include Aws::Structure
    end

    # The service quota for the action was exceeded.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-elastic-2022-11-28/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The name of the shard.
    #
    # @!attribute [rw] create_time
    #   The time when the shard was created in Universal Coordinated Time
    #   (UTC).
    #   @return [String]
    #
    # @!attribute [rw] shard_id
    #   The ID of the shard.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the shard.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-elastic-2022-11-28/Shard AWS API Documentation
    #
    class Shard < Struct.new(
      :create_time,
      :shard_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster_arn
    #   The ARN identifier of the elastic cluster.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-elastic-2022-11-28/StartClusterInput AWS API Documentation
    #
    class StartClusterInput < Struct.new(
      :cluster_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster
    #   Returns information about a specific elastic cluster.
    #   @return [Types::Cluster]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-elastic-2022-11-28/StartClusterOutput AWS API Documentation
    #
    class StartClusterOutput < Struct.new(
      :cluster)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster_arn
    #   The ARN identifier of the elastic cluster.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-elastic-2022-11-28/StopClusterInput AWS API Documentation
    #
    class StopClusterInput < Struct.new(
      :cluster_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster
    #   Returns information about a specific elastic cluster.
    #   @return [Types::Cluster]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-elastic-2022-11-28/StopClusterOutput AWS API Documentation
    #
    class StopClusterOutput < Struct.new(
      :cluster)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN identifier of the elastic cluster resource.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags that are assigned to the elastic cluster resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-elastic-2022-11-28/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-elastic-2022-11-28/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # ThrottlingException will be thrown when request was denied due to
    # request throttling.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] retry_after_seconds
    #   The number of seconds to wait before retrying the operation.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-elastic-2022-11-28/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message,
      :retry_after_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN identifier of the elastic cluster resource.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The tag keys to be removed from the elastic cluster resource.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-elastic-2022-11-28/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-elastic-2022-11-28/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] admin_user_password
    #   The password associated with the elastic cluster administrator. This
    #   password can contain any printable ASCII character except forward
    #   slash (/), double quote ("), or the "at" symbol (@).
    #
    #   *Constraints*: Must contain from 8 to 100 characters.
    #   @return [String]
    #
    # @!attribute [rw] auth_type
    #   The authentication type used to determine where to fetch the
    #   password used for accessing the elastic cluster. Valid types are
    #   `PLAIN_TEXT` or `SECRET_ARN`.
    #   @return [String]
    #
    # @!attribute [rw] backup_retention_period
    #   The number of days for which automatic snapshots are retained.
    #   @return [Integer]
    #
    # @!attribute [rw] client_token
    #   The client token for the elastic cluster.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] cluster_arn
    #   The ARN identifier of the elastic cluster.
    #   @return [String]
    #
    # @!attribute [rw] preferred_backup_window
    #   The daily time range during which automated backups are created if
    #   automated backups are enabled, as determined by the
    #   `backupRetentionPeriod`.
    #   @return [String]
    #
    # @!attribute [rw] preferred_maintenance_window
    #   The weekly time range during which system maintenance can occur, in
    #   Universal Coordinated Time (UTC).
    #
    #   *Format*: `ddd:hh24:mi-ddd:hh24:mi`
    #
    #   *Default*: a 30-minute window selected at random from an 8-hour
    #   block of time for each Amazon Web Services Region, occurring on a
    #   random day of the week.
    #
    #   *Valid days*: Mon, Tue, Wed, Thu, Fri, Sat, Sun
    #
    #   *Constraints*: Minimum 30-minute window.
    #   @return [String]
    #
    # @!attribute [rw] shard_capacity
    #   The number of vCPUs assigned to each elastic cluster shard. Maximum
    #   is 64. Allowed values are 2, 4, 8, 16, 32, 64.
    #   @return [Integer]
    #
    # @!attribute [rw] shard_count
    #   The number of shards assigned to the elastic cluster. Maximum is 32.
    #   @return [Integer]
    #
    # @!attribute [rw] shard_instance_count
    #   The number of replica instances applying to all shards in the
    #   elastic cluster. A `shardInstanceCount` value of 1 means there is
    #   one writer instance, and any additional instances are replicas that
    #   can be used for reads and to improve availability.
    #   @return [Integer]
    #
    # @!attribute [rw] subnet_ids
    #   The Amazon EC2 subnet IDs for the elastic cluster.
    #   @return [Array<String>]
    #
    # @!attribute [rw] vpc_security_group_ids
    #   A list of EC2 VPC security groups to associate with the elastic
    #   cluster.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-elastic-2022-11-28/UpdateClusterInput AWS API Documentation
    #
    class UpdateClusterInput < Struct.new(
      :admin_user_password,
      :auth_type,
      :backup_retention_period,
      :client_token,
      :cluster_arn,
      :preferred_backup_window,
      :preferred_maintenance_window,
      :shard_capacity,
      :shard_count,
      :shard_instance_count,
      :subnet_ids,
      :vpc_security_group_ids)
      SENSITIVE = [:admin_user_password]
      include Aws::Structure
    end

    # @!attribute [rw] cluster
    #   Returns information about the updated elastic cluster.
    #   @return [Types::Cluster]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-elastic-2022-11-28/UpdateClusterOutput AWS API Documentation
    #
    class UpdateClusterOutput < Struct.new(
      :cluster)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure defining a validation exception.
    #
    # @!attribute [rw] field_list
    #   A list of the fields in which the validation exception occurred.
    #   @return [Array<Types::ValidationExceptionField>]
    #
    # @!attribute [rw] message
    #   An error message describing the validation exception.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason why the validation exception occurred (one of
    #   `unknownOperation`, `cannotParse`, `fieldValidationFailed`, or
    #   `other`).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-elastic-2022-11-28/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :field_list,
      :message,
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # A specific field in which a given validation exception occurred.
    #
    # @!attribute [rw] message
    #   An error message describing the validation exception in this field.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the field where the validation exception occurred.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/docdb-elastic-2022-11-28/ValidationExceptionField AWS API Documentation
    #
    class ValidationExceptionField < Struct.new(
      :message,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

