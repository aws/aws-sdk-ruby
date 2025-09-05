# frozen_string_literal: true

# This is generated code!

module Aws::DocDBElastic
  # This module contains the types returned by client operations.
  module Types

    # <p>An exception that occurs when there are not sufficient permissions to perform an action.</p>
    # @!attribute message
    #   <p>An error message explaining why access was denied.</p>
    #   @return [String]
    class AccessDeniedException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon DocumentDB Amazon Resource Name (ARN) of the resource to which the pending maintenance action applies.</p>
    #   @return [String]
    # @!attribute apply_action
    #   <p>The pending maintenance action to apply to the resource.</p>
    #            <p>Valid actions are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ENGINE_UPDATE<i/>
    #                     </code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ENGINE_UPGRADE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SECURITY_UPDATE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OS_UPDATE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MASTER_USER_PASSWORD_UPDATE</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute opt_in_type
    #   <p>A value that specifies the type of opt-in request, or undoes an opt-in request. An opt-in request of type <code>IMMEDIATE</code> can't be undone.</p>
    #   @return [String]
    # @!attribute apply_on
    #   <p>A specific date to apply the pending maintenance action. Required if opt-in-type is <code>APPLY_ON</code>. Format: <code>yyyy/MM/dd HH:mm-yyyy/MM/dd HH:mm</code>
    #            </p>
    #   @return [String]
    class ApplyPendingMaintenanceActionInput < Struct.new(
      :resource_arn,
      :apply_action,
      :opt_in_type,
      :apply_on,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_pending_maintenance_action
    #   <p>The output of the pending maintenance action being applied.</p>
    #   @return [Types::ResourcePendingMaintenanceAction]
    class ApplyPendingMaintenanceActionOutput < Struct.new(
      :resource_pending_maintenance_action,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Returns information about a specific elastic cluster.</p>
    # @!attribute cluster_name
    #   <p>The name of the elastic cluster.</p>
    #   @return [String]
    # @!attribute cluster_arn
    #   <p>The ARN identifier of the elastic cluster.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the elastic cluster.</p>
    #   @return [String]
    # @!attribute cluster_endpoint
    #   <p>The URL used to connect to the elastic cluster.</p>
    #   @return [String]
    # @!attribute create_time
    #   <p>The time when the elastic cluster was created in Universal Coordinated Time (UTC).</p>
    #   @return [String]
    # @!attribute admin_user_name
    #   <p>The name of the elastic cluster administrator.</p>
    #   @return [String]
    # @!attribute auth_type
    #   <p>The authentication type for the elastic cluster.</p>
    #   @return [String]
    # @!attribute shard_capacity
    #   <p>The number of vCPUs assigned to each elastic cluster shard. Maximum is 64. 
    #         Allowed values are 2, 4, 8, 16, 32, 64.</p>
    #   @return [Integer]
    # @!attribute shard_count
    #   <p>The number of shards assigned to the elastic cluster. Maximum is 32.</p>
    #   @return [Integer]
    # @!attribute vpc_security_group_ids
    #   <p>A list of EC2 VPC security groups associated with thie elastic cluster.</p>
    #   @return [Array<String>]
    # @!attribute subnet_ids
    #   <p>The Amazon EC2 subnet IDs for the elastic cluster.</p>
    #   @return [Array<String>]
    # @!attribute preferred_maintenance_window
    #   <p>The weekly time range during which system maintenance can occur, in Universal Coordinated Time (UTC).</p>
    #            <p>
    #               <i>Format</i>: <code>ddd:hh24:mi-ddd:hh24:mi</code>
    #            </p>
    #   @return [String]
    # @!attribute kms_key_id
    #   <p>The KMS key identifier to use to encrypt the elastic cluster.</p>
    #   @return [String]
    # @!attribute shards
    #   <p>The total number of shards in the cluster.</p>
    #   @return [Array<Types::Shard>]
    # @!attribute backup_retention_period
    #   <p>The number of days for which automatic snapshots are retained.</p>
    #   @return [Integer]
    # @!attribute preferred_backup_window
    #   <p>The daily time range during which automated backups are created if automated backups are enabled, as determined by <code>backupRetentionPeriod</code>.</p>
    #   @return [String]
    # @!attribute shard_instance_count
    #   <p>The number of replica instances applying to all shards in the cluster. 
    #         A <code>shardInstanceCount</code> value of 1 means there is one writer instance, and any additional instances are replicas that can be used for reads and to improve availability.</p>
    #   @return [Integer]
    class Cluster < Struct.new(
      :cluster_name,
      :cluster_arn,
      :status,
      :cluster_endpoint,
      :create_time,
      :admin_user_name,
      :auth_type,
      :shard_capacity,
      :shard_count,
      :vpc_security_group_ids,
      :subnet_ids,
      :preferred_maintenance_window,
      :kms_key_id,
      :shards,
      :backup_retention_period,
      :preferred_backup_window,
      :shard_instance_count,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A list of Amazon DocumentDB elastic clusters.</p>
    # @!attribute cluster_name
    #   <p>The name of the elastic cluster.</p>
    #   @return [String]
    # @!attribute cluster_arn
    #   <p>The ARN identifier of the elastic cluster.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the elastic cluster.</p>
    #   @return [String]
    class ClusterInList < Struct.new(
      :cluster_name,
      :cluster_arn,
      :status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Returns information about a specific elastic cluster snapshot.</p>
    # @!attribute subnet_ids
    #   <p>The Amazon EC2 subnet IDs for the elastic cluster.</p>
    #   @return [Array<String>]
    # @!attribute snapshot_name
    #   <p>The name of the elastic cluster snapshot.</p>
    #   @return [String]
    # @!attribute snapshot_arn
    #   <p>The ARN identifier of the elastic cluster snapshot.</p>
    #   @return [String]
    # @!attribute snapshot_creation_time
    #   <p>The time when the elastic cluster snapshot was created in Universal Coordinated Time (UTC).</p>
    #   @return [String]
    # @!attribute cluster_arn
    #   <p>The ARN identifier of the elastic cluster.</p>
    #   @return [String]
    # @!attribute cluster_creation_time
    #   <p>The time when the elastic cluster was created in Universal Coordinated Time (UTC).</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the elastic cluster snapshot.</p>
    #   @return [String]
    # @!attribute vpc_security_group_ids
    #   <p>A list of EC2 VPC security groups to associate with the elastic cluster.</p>
    #   @return [Array<String>]
    # @!attribute admin_user_name
    #   <p>The name of the elastic cluster administrator.</p>
    #   @return [String]
    # @!attribute kms_key_id
    #   <p>The KMS key identifier is the Amazon Resource Name (ARN) for the KMS encryption key. 
    #         If you are creating a cluster using the same Amazon account that owns this KMS encryption key, you can use the KMS key alias instead of the ARN as the KMS encryption key.
    #         If an encryption key is not specified here, Amazon DocumentDB uses the default encryption key that KMS creates for your account. 
    #         Your account has a different default encryption key for each Amazon Region.
    #       </p>
    #   @return [String]
    # @!attribute snapshot_type
    #   <p>The type of cluster snapshots to be returned. 
    #         You can specify one of the following values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>automated</code> - Return all cluster snapshots that Amazon DocumentDB has automatically created for your Amazon Web Services account.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>manual</code> - Return all cluster snapshots that you have manually created for your Amazon Web Services account.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class ClusterSnapshot < Struct.new(
      :subnet_ids,
      :snapshot_name,
      :snapshot_arn,
      :snapshot_creation_time,
      :cluster_arn,
      :cluster_creation_time,
      :status,
      :vpc_security_group_ids,
      :admin_user_name,
      :kms_key_id,
      :snapshot_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A list of elastic cluster snapshots.</p>
    # @!attribute snapshot_name
    #   <p>The name of the elastic cluster snapshot.</p>
    #   @return [String]
    # @!attribute snapshot_arn
    #   <p>The ARN identifier of the elastic cluster snapshot.</p>
    #   @return [String]
    # @!attribute cluster_arn
    #   <p>The ARN identifier of the elastic cluster.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the elastic cluster snapshot.</p>
    #   @return [String]
    # @!attribute snapshot_creation_time
    #   <p>The time when the elastic cluster snapshot was created in Universal Coordinated Time (UTC).</p>
    #   @return [String]
    class ClusterSnapshotInList < Struct.new(
      :snapshot_name,
      :snapshot_arn,
      :cluster_arn,
      :status,
      :snapshot_creation_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>There was an access conflict.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   <p>The ID of the resource where there was an access conflict.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of the resource where there was an access conflict.</p>
    #   @return [String]
    class ConflictException < Struct.new(
      :message,
      :resource_id,
      :resource_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute snapshot_arn
    #   <p>The Amazon Resource Name (ARN) identifier of the elastic cluster snapshot.</p>
    #   @return [String]
    # @!attribute target_snapshot_name
    #   <p>The identifier of the new elastic cluster snapshot to create from the source cluster snapshot. 
    #         This parameter is not case sensitive.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must contain from 1 to 63 letters, numbers, or hyphens.</p>
    #               </li>
    #               <li>
    #                  <p>The first character must be a letter.</p>
    #               </li>
    #               <li>
    #                  <p>Cannot end with a hyphen or contain two consecutive hyphens.</p>
    #               </li>
    #            </ul>
    #            <p>Example: <code>elastic-cluster-snapshot-5</code>
    #            </p>
    #   @return [String]
    # @!attribute kms_key_id
    #   <p>The Amazon Web Services KMS key ID for an encrypted elastic cluster snapshot. 
    #         The Amazon Web Services KMS key ID is the Amazon Resource Name (ARN), Amazon Web Services KMS key identifier, or the Amazon Web Services KMS key alias for the Amazon Web Services KMS encryption key.</p>
    #            <p>If you copy an encrypted elastic cluster snapshot from your Amazon Web Services account, you can specify a value for <code>KmsKeyId</code> to encrypt the copy with a new Amazon Web ServicesS KMS encryption key. 
    #         If you don't specify a value for <code>KmsKeyId</code>, then the copy of the elastic cluster snapshot is encrypted with the same <code>AWS</code> KMS key as the source elastic cluster snapshot.</p>
    #            <p>To copy an encrypted elastic cluster snapshot to another Amazon Web Services region, set <code>KmsKeyId</code> to the Amazon Web Services KMS key ID that you want to use to encrypt the copy of the elastic cluster snapshot in the destination region. 
    #         Amazon Web Services KMS encryption keys are specific to the Amazon Web Services region that they are created in, and you can't use encryption keys from one Amazon Web Services region in another Amazon Web Services region.</p>
    #            <p>If you copy an unencrypted elastic cluster snapshot and specify a value for the <code>KmsKeyId</code> parameter, an error is returned.</p>
    #   @return [String]
    # @!attribute copy_tags
    #   <p>Set to <code>true</code> to copy all tags from the source cluster snapshot to the target elastic cluster snapshot. 
    #         The default is <code>false</code>.</p>
    #   @return [Boolean]
    # @!attribute tags
    #   <p>The tags to be assigned to the elastic cluster snapshot.</p>
    #   @return [Hash<String, String>]
    class CopyClusterSnapshotInput < Struct.new(
      :snapshot_arn,
      :target_snapshot_name,
      :kms_key_id,
      :copy_tags,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute snapshot
    #   <p>Returns information about a specific elastic cluster snapshot.</p>
    #   @return [Types::ClusterSnapshot]
    class CopyClusterSnapshotOutput < Struct.new(
      :snapshot,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster_name
    #   <p>The name of the new elastic cluster. This parameter is stored as
    #         a lowercase string.</p>
    #            <p>
    #               <i>Constraints</i>:</p>
    #            <ul>
    #               <li>
    #                  <p>Must contain from 1 to 63 letters, numbers, or hyphens.</p>
    #               </li>
    #               <li>
    #                  <p>The first character must be a letter.</p>
    #               </li>
    #               <li>
    #                  <p>Cannot end with a hyphen or contain two consecutive hyphens.</p>
    #               </li>
    #            </ul>
    #            <p>
    #               <i>Example</i>: <code>my-cluster</code>
    #            </p>
    #   @return [String]
    # @!attribute auth_type
    #   <p>The authentication type used to determine where to fetch the password used for accessing the elastic cluster. 
    #         Valid types are <code>PLAIN_TEXT</code> or <code>SECRET_ARN</code>.</p>
    #   @return [String]
    # @!attribute admin_user_name
    #   <p>The name of the Amazon DocumentDB elastic clusters administrator.</p>
    #            <p>
    #               <i>Constraints</i>:</p>
    #            <ul>
    #               <li>
    #                  <p>Must be from 1 to 63 letters or numbers.</p>
    #               </li>
    #               <li>
    #                  <p>The first character must be a letter.</p>
    #               </li>
    #               <li>
    #                  <p>Cannot be a reserved word.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute admin_user_password
    #   <p>The password for the Amazon DocumentDB elastic clusters administrator. The password can contain any printable ASCII characters.</p>
    #            <p>
    #               <i>Constraints</i>:</p>
    #            <ul>
    #               <li>
    #                  <p>Must contain from 8 to 100 characters.</p>
    #               </li>
    #               <li>
    #                  <p>Cannot contain a forward slash (/), double quote ("), or the "at" symbol (@).</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute shard_capacity
    #   <p>The number of vCPUs assigned to each elastic cluster shard. Maximum is 64. Allowed values are 2, 4, 8, 16, 32, 64.</p>
    #   @return [Integer]
    # @!attribute shard_count
    #   <p>The number of shards assigned to the elastic cluster. Maximum is 32.</p>
    #   @return [Integer]
    # @!attribute vpc_security_group_ids
    #   <p>A list of EC2 VPC security groups to associate with the new
    #         elastic cluster.</p>
    #   @return [Array<String>]
    # @!attribute subnet_ids
    #   <p>The Amazon EC2 subnet IDs for the new elastic cluster.</p>
    #   @return [Array<String>]
    # @!attribute kms_key_id
    #   <p>The KMS key identifier to use to encrypt the new elastic cluster.</p>
    #            <p>The KMS key identifier is the Amazon Resource Name (ARN) for the KMS
    #           encryption key. If you are creating a cluster using the same Amazon account
    #           that owns this KMS encryption key, you can use the KMS key alias instead
    #           of the ARN as the KMS encryption key.</p>
    #            <p>If an encryption key is not specified, Amazon DocumentDB uses the
    #           default encryption key that KMS creates for your account. Your account
    #           has a different default encryption key for each Amazon Region.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>The client token for the elastic cluster.</p>
    #   @return [String]
    # @!attribute preferred_maintenance_window
    #   <p>The weekly time range during which system maintenance can occur,
    #         in Universal Coordinated Time (UTC).</p>
    #            <p>
    #               <i>Format</i>: <code>ddd:hh24:mi-ddd:hh24:mi</code>
    #            </p>
    #            <p>
    #               <i>Default</i>: a 30-minute window selected at random from an 8-hour block of time for each Amazon Web Services Region, occurring on a random day of the week.</p>
    #            <p>
    #               <i>Valid days</i>: Mon, Tue, Wed, Thu, Fri, Sat, Sun</p>
    #            <p>
    #               <i>Constraints</i>: Minimum 30-minute window.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags to be assigned to the new elastic cluster.</p>
    #   @return [Hash<String, String>]
    # @!attribute backup_retention_period
    #   <p>The number of days for which automatic snapshots are retained.</p>
    #   @return [Integer]
    # @!attribute preferred_backup_window
    #   <p>The daily time range during which automated backups are created if automated backups are enabled, as determined by the <code>backupRetentionPeriod</code>.</p>
    #   @return [String]
    # @!attribute shard_instance_count
    #   <p>The number of replica instances applying to all shards in the elastic cluster. 
    #         A <code>shardInstanceCount</code> value of 1 means there is one writer instance, and any additional instances are replicas that can be used for reads and to improve availability.</p>
    #   @return [Integer]
    class CreateClusterOperationInput < Struct.new(
      :cluster_name,
      :auth_type,
      :admin_user_name,
      :admin_user_password,
      :shard_capacity,
      :shard_count,
      :vpc_security_group_ids,
      :subnet_ids,
      :kms_key_id,
      :client_token,
      :preferred_maintenance_window,
      :tags,
      :backup_retention_period,
      :preferred_backup_window,
      :shard_instance_count,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster
    #   <p>The new elastic cluster that has been created.</p>
    #   @return [Types::Cluster]
    class CreateClusterOperationOutput < Struct.new(
      :cluster,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster_arn
    #   <p>The ARN identifier of the elastic cluster of which you want to create a snapshot.</p>
    #   @return [String]
    # @!attribute snapshot_name
    #   <p>The name of the new elastic cluster snapshot.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags to be assigned to the new elastic cluster snapshot.</p>
    #   @return [Hash<String, String>]
    class CreateClusterSnapshotOperationInput < Struct.new(
      :cluster_arn,
      :snapshot_name,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute snapshot
    #   <p>Returns information about the new elastic cluster snapshot.</p>
    #   @return [Types::ClusterSnapshot]
    class CreateClusterSnapshotOperationOutput < Struct.new(
      :snapshot,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster_arn
    #   <p>The ARN identifier of the elastic cluster that is to be deleted.</p>
    #   @return [String]
    class DeleteClusterOperationInput < Struct.new(
      :cluster_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster
    #   <p>Returns information about the newly deleted elastic cluster.</p>
    #   @return [Types::Cluster]
    class DeleteClusterOperationOutput < Struct.new(
      :cluster,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute snapshot_arn
    #   <p>The ARN identifier of the elastic cluster snapshot that is to be deleted.</p>
    #   @return [String]
    class DeleteClusterSnapshotOperationInput < Struct.new(
      :snapshot_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute snapshot
    #   <p>Returns information about the newly deleted elastic cluster snapshot.</p>
    #   @return [Types::ClusterSnapshot]
    class DeleteClusterSnapshotOperationOutput < Struct.new(
      :snapshot,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster_arn
    #   <p>The ARN identifier of the elastic cluster.</p>
    #   @return [String]
    class GetClusterOperationInput < Struct.new(
      :cluster_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster
    #   <p>Returns information about a specific elastic cluster.</p>
    #   @return [Types::Cluster]
    class GetClusterOperationOutput < Struct.new(
      :cluster,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute snapshot_arn
    #   <p>The ARN identifier of the elastic cluster snapshot.</p>
    #   @return [String]
    class GetClusterSnapshotOperationInput < Struct.new(
      :snapshot_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute snapshot
    #   <p>Returns information about a specific elastic cluster snapshot.</p>
    #   @return [Types::ClusterSnapshot]
    class GetClusterSnapshotOperationOutput < Struct.new(
      :snapshot,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>Retrieves pending maintenance actions for a specific Amazon Resource Name (ARN).</p>
    #   @return [String]
    class GetPendingMaintenanceActionInput < Struct.new(
      :resource_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_pending_maintenance_action
    #   <p>Provides information about a pending maintenance action for a resource.</p>
    #   @return [Types::ResourcePendingMaintenanceAction]
    class GetPendingMaintenanceActionOutput < Struct.new(
      :resource_pending_maintenance_action,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>There was an internal server error.</p>
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster_arn
    #   <p>The ARN identifier of the elastic cluster.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>A pagination token provided by a previous request. 
    #         If this parameter is specified, the response includes only records beyond this token, up to the value specified by <code>max-results</code>.</p>
    #            <p>If there is no more data in the responce, the <code>nextToken</code> will not be returned.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of elastic cluster snapshot results to receive in the response.</p>
    #   @return [Integer]
    # @!attribute snapshot_type
    #   <p>The type of cluster snapshots to be returned. You can specify one of the following values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>automated</code> - Return all cluster snapshots that Amazon DocumentDB has automatically created for your Amazon Web Services account.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>manual</code> - Return all cluster snapshots that you have manually created for your Amazon Web Services account.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class ListClusterSnapshotsOperationInput < Struct.new(
      :cluster_arn,
      :next_token,
      :max_results,
      :snapshot_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute snapshots
    #   <p>A list of snapshots for a specified elastic cluster.</p>
    #   @return [Array<Types::ClusterSnapshotInList>]
    # @!attribute next_token
    #   <p>A pagination token provided by a previous request. 
    #         If this parameter is specified, the response includes only records beyond this token, up to the value specified by <code>max-results</code>.</p>
    #            <p>If there is no more data in the responce, the <code>nextToken</code> will not be returned.</p>
    #   @return [String]
    class ListClusterSnapshotsOperationOutput < Struct.new(
      :snapshots,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A pagination token provided by a previous request. 
    #         If this parameter is specified, the response includes only records beyond this token, up to the value specified by <code>max-results</code>.</p>
    #            <p>If there is no more data in the responce, the <code>nextToken</code> will not be returned.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of elastic cluster snapshot results to receive in the response.</p>
    #   @return [Integer]
    class ListClustersOperationInput < Struct.new(
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute clusters
    #   <p>A list of Amazon DocumentDB elastic clusters.</p>
    #   @return [Array<Types::ClusterInList>]
    # @!attribute next_token
    #   <p>A pagination token provided by a previous request. 
    #         If this parameter is specified, the response includes only records beyond this token, up to the value specified by <code>max-results</code>.</p>
    #            <p>If there is no more data in the responce, the <code>nextToken</code> will not be returned.</p>
    #   @return [String]
    class ListClustersOperationOutput < Struct.new(
      :clusters,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by <code>maxResults</code>.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to include in the response. 
    #         If more records exist than the specified <code>maxResults</code> value, a pagination token (marker) is included in the response so that the remaining results can be retrieved.</p>
    #   @return [Integer]
    class ListPendingMaintenanceActionsInput < Struct.new(
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_pending_maintenance_actions
    #   <p>Provides information about a pending maintenance action for a resource.</p>
    #   @return [Array<Types::ResourcePendingMaintenanceAction>]
    # @!attribute next_token
    #   <p>An optional pagination token provided by a previous request. If this parameter is displayed, the responses will include only records beyond the marker, up to the value specified by <code>maxResults</code>.</p>
    #   @return [String]
    class ListPendingMaintenanceActionsOutput < Struct.new(
      :resource_pending_maintenance_actions,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN identifier of the elastic cluster resource.</p>
    #   @return [String]
    class ListTagsForResourceInput < Struct.new(
      :resource_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>The list of tags for the specified elastic cluster resource.</p>
    #   @return [Hash<String, String>]
    class ListTagsForResourceOutput < Struct.new(
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Retrieves the details of maintenance actions that are pending.</p>
    # @!attribute action
    #   <p>Displays the specific action of a pending maintenance action.</p>
    #   @return [String]
    # @!attribute auto_applied_after_date
    #   <p>Displays the date of the maintenance window when the action is applied. 
    #         The maintenance action is applied to the resource during its first maintenance window after this date. 
    #         If this date is specified, any <code>NEXT_MAINTENANCE</code>
    #               <code>optInType</code> requests are ignored.</p>
    #   @return [String]
    # @!attribute forced_apply_date
    #   <p>Displays the date when the maintenance action is automatically applied. 
    #         The maintenance action is applied to the resource on this date regardless of the maintenance window for the resource. 
    #         If this date is specified, any <code>IMMEDIATE</code>
    #               <code>optInType</code> requests are ignored.</p>
    #   @return [String]
    # @!attribute opt_in_status
    #   <p>Displays the type of <code>optInType</code> request that has been received for the resource.</p>
    #   @return [String]
    # @!attribute current_apply_date
    #   <p>Displays the effective date when the pending maintenance action is applied to the resource.</p>
    #   @return [String]
    # @!attribute description
    #   <p>Displays a description providing more detail about the maintenance action.</p>
    #   @return [String]
    class PendingMaintenanceActionDetails < Struct.new(
      :action,
      :auto_applied_after_date,
      :forced_apply_date,
      :opt_in_status,
      :current_apply_date,
      :description,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The specified resource could not be located.</p>
    # @!attribute message
    #   <p>An error message describing the failure.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The ID of the resource that could not be located.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of the resource that could not be found.</p>
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_id,
      :resource_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provides information about a pending maintenance action for a resource.</p>
    # @!attribute resource_arn
    #   <p>The Amazon DocumentDB Amazon Resource Name (ARN) of the resource to which the pending maintenance action applies.</p>
    #   @return [String]
    # @!attribute pending_maintenance_action_details
    #   <p>Provides information about a pending maintenance action for a resource.</p>
    #   @return [Array<Types::PendingMaintenanceActionDetails>]
    class ResourcePendingMaintenanceAction < Struct.new(
      :resource_arn,
      :pending_maintenance_action_details,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster_name
    #   <p>The name of the elastic cluster.</p>
    #   @return [String]
    # @!attribute snapshot_arn
    #   <p>The ARN identifier of the elastic cluster snapshot.</p>
    #   @return [String]
    # @!attribute vpc_security_group_ids
    #   <p>A list of EC2 VPC security groups to associate with the elastic cluster.</p>
    #   @return [Array<String>]
    # @!attribute subnet_ids
    #   <p>The Amazon EC2 subnet IDs for the elastic cluster.</p>
    #   @return [Array<String>]
    # @!attribute kms_key_id
    #   <p>The KMS key identifier to use to encrypt the new Amazon DocumentDB elastic clusters cluster.</p>
    #            <p>The KMS key identifier is the Amazon Resource Name (ARN) for the KMS
    #           encryption key. If you are creating a cluster using the same Amazon account
    #           that owns this KMS encryption key, you can use the KMS key alias instead
    #           of the ARN as the KMS encryption key.</p>
    #            <p>If an encryption key is not specified here, Amazon DocumentDB uses the
    #           default encryption key that KMS creates for your account. Your account
    #           has a different default encryption key for each Amazon Region.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of the tag names to be assigned to the restored elastic cluster, in the form of an array of key-value pairs in which the key is the tag name and the value is the key value.</p>
    #   @return [Hash<String, String>]
    # @!attribute shard_capacity
    #   <p>The capacity of each shard in the new restored elastic cluster.</p>
    #   @return [Integer]
    # @!attribute shard_instance_count
    #   <p>The number of replica instances applying to all shards in the elastic cluster. 
    #         A <code>shardInstanceCount</code> value of 1 means there is one writer instance, and any additional instances are replicas that can be used for reads and to improve availability.</p>
    #   @return [Integer]
    class RestoreClusterFromSnapshotOperationInput < Struct.new(
      :cluster_name,
      :snapshot_arn,
      :vpc_security_group_ids,
      :subnet_ids,
      :kms_key_id,
      :tags,
      :shard_capacity,
      :shard_instance_count,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster
    #   <p>Returns information about a the restored elastic cluster.</p>
    #   @return [Types::Cluster]
    class RestoreClusterFromSnapshotOperationOutput < Struct.new(
      :cluster,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The service quota for the action was exceeded.</p>
    # @!attribute message
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The name of the shard.</p>
    # @!attribute shard_id
    #   <p>The ID of the shard.</p>
    #   @return [String]
    # @!attribute create_time
    #   <p>The time when the shard was created in Universal Coordinated Time (UTC).</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the shard.</p>
    #   @return [String]
    class Shard < Struct.new(
      :shard_id,
      :create_time,
      :status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster_arn
    #   <p>The ARN identifier of the elastic cluster.</p>
    #   @return [String]
    class StartClusterInput < Struct.new(
      :cluster_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster
    #   <p>Returns information about a specific elastic cluster.</p>
    #   @return [Types::Cluster]
    class StartClusterOutput < Struct.new(
      :cluster,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster_arn
    #   <p>The ARN identifier of the elastic cluster.</p>
    #   @return [String]
    class StopClusterInput < Struct.new(
      :cluster_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster
    #   <p>Returns information about a specific elastic cluster.</p>
    #   @return [Types::Cluster]
    class StopClusterOutput < Struct.new(
      :cluster,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN identifier of the elastic cluster resource.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags that are assigned to the elastic cluster resource.</p>
    #   @return [Hash<String, String>]
    class TagResourceInput < Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class TagResourceOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>ThrottlingException will be thrown when request was denied due to request throttling.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute retry_after_seconds
    #   <p>The number of seconds to wait before retrying the operation.</p>
    #   @return [Integer]
    class ThrottlingException < Struct.new(
      :message,
      :retry_after_seconds,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN identifier of the elastic cluster resource.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>The tag keys to be removed from the elastic cluster resource.</p>
    #   @return [Array<String>]
    class UntagResourceInput < Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class UntagResourceOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster_arn
    #   <p>The ARN identifier of the elastic cluster.</p>
    #   @return [String]
    # @!attribute auth_type
    #   <p>The authentication type used to determine where to fetch the password used for accessing the elastic cluster. 
    #         Valid types are <code>PLAIN_TEXT</code> or <code>SECRET_ARN</code>.</p>
    #   @return [String]
    # @!attribute shard_capacity
    #   <p>The number of vCPUs assigned to each elastic cluster shard. 
    #         Maximum is 64. Allowed values are 2, 4, 8, 16, 32, 64.</p>
    #   @return [Integer]
    # @!attribute shard_count
    #   <p>The number of shards assigned to the elastic cluster. Maximum is 32.</p>
    #   @return [Integer]
    # @!attribute vpc_security_group_ids
    #   <p>A list of EC2 VPC security groups to associate with the elastic cluster.</p>
    #   @return [Array<String>]
    # @!attribute subnet_ids
    #   <p>The Amazon EC2 subnet IDs for the elastic cluster.</p>
    #   @return [Array<String>]
    # @!attribute admin_user_password
    #   <p>The password associated with the elastic cluster administrator. 
    #         This password can contain any printable ASCII character except forward slash (/), double quote ("), or the "at" symbol (@).</p>
    #            <p>
    #               <i>Constraints</i>: Must contain from 8 to 100 characters.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>The client token for the elastic cluster.</p>
    #   @return [String]
    # @!attribute preferred_maintenance_window
    #   <p>The weekly time range during which system maintenance can occur, in Universal Coordinated Time (UTC).</p>
    #            <p>
    #               <i>Format</i>: <code>ddd:hh24:mi-ddd:hh24:mi</code>
    #            </p>
    #            <p>
    #               <i>Default</i>: a 30-minute window selected at random from an 8-hour block of time for each Amazon Web Services Region, occurring on a random day of the week.</p>
    #            <p>
    #               <i>Valid days</i>: Mon, Tue, Wed, Thu, Fri, Sat, Sun</p>
    #            <p>
    #               <i>Constraints</i>: Minimum 30-minute window.</p>
    #   @return [String]
    # @!attribute backup_retention_period
    #   <p>The number of days for which automatic snapshots are retained.</p>
    #   @return [Integer]
    # @!attribute preferred_backup_window
    #   <p>The daily time range during which automated backups are created if automated backups are enabled, as determined by the <code>backupRetentionPeriod</code>.</p>
    #   @return [String]
    # @!attribute shard_instance_count
    #   <p>The number of replica instances applying to all shards in the elastic cluster. 
    #         A <code>shardInstanceCount</code> value of 1 means there is one writer instance, and any additional instances are replicas that can be used for reads and to improve availability.</p>
    #   @return [Integer]
    class UpdateClusterOperationInput < Struct.new(
      :cluster_arn,
      :auth_type,
      :shard_capacity,
      :shard_count,
      :vpc_security_group_ids,
      :subnet_ids,
      :admin_user_password,
      :client_token,
      :preferred_maintenance_window,
      :backup_retention_period,
      :preferred_backup_window,
      :shard_instance_count,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster
    #   <p>Returns information about the updated elastic cluster.</p>
    #   @return [Types::Cluster]
    class UpdateClusterOperationOutput < Struct.new(
      :cluster,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A structure defining a validation exception.</p>
    # @!attribute message
    #   <p>An error message describing the validation exception.</p>
    #   @return [String]
    # @!attribute reason
    #   <p>The reason why the validation exception occurred (one of <code>unknownOperation</code>,
    #         <code>cannotParse</code>, <code>fieldValidationFailed</code>, or <code>other</code>).</p>
    #   @return [String]
    # @!attribute field_list
    #   <p>A list of the fields in which the validation exception occurred.</p>
    #   @return [Array<Types::ValidationExceptionField>]
    class ValidationException < Struct.new(
      :message,
      :reason,
      :field_list,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A specific field in which a given validation exception occurred.</p>
    # @!attribute name
    #   <p>The name of the field where the validation exception occurred.</p>
    #   @return [String]
    # @!attribute message
    #   <p>An error message describing the validation exception in this field.</p>
    #   @return [String]
    class ValidationExceptionField < Struct.new(
      :name,
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

  end
end
