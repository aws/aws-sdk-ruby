# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::MemoryDB
  module Types

    # An Access Control List. You can authenticate users with Access Contol
    # Lists. ACLs enable you to control cluster access by grouping users.
    # These Access control lists are designed as a way to organize access to
    # clusters.
    #
    # @!attribute [rw] name
    #   The name of the Access Control List
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Indicates ACL status. Can be "creating", "active",
    #   "modifying", "deleting".
    #   @return [String]
    #
    # @!attribute [rw] user_names
    #   The list of user names that belong to the ACL.
    #   @return [Array<String>]
    #
    # @!attribute [rw] minimum_engine_version
    #   The minimum engine version supported for the ACL
    #   @return [String]
    #
    # @!attribute [rw] pending_changes
    #   A list of updates being applied to the ACL.
    #   @return [Types::ACLPendingChanges]
    #
    # @!attribute [rw] clusters
    #   A list of clusters associated with the ACL.
    #   @return [Array<String>]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the ACL
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/ACL AWS API Documentation
    #
    class ACL < Struct.new(
      :name,
      :status,
      :user_names,
      :minimum_engine_version,
      :pending_changes,
      :clusters,
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/ACLAlreadyExistsFault AWS API Documentation
    #
    class ACLAlreadyExistsFault < Aws::EmptyStructure; end

    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/ACLNotFoundFault AWS API Documentation
    #
    class ACLNotFoundFault < Aws::EmptyStructure; end

    # Returns the updates being applied to the ACL.
    #
    # @!attribute [rw] user_names_to_remove
    #   A list of user names being removed from the ACL
    #   @return [Array<String>]
    #
    # @!attribute [rw] user_names_to_add
    #   A list of users being added to the ACL
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/ACLPendingChanges AWS API Documentation
    #
    class ACLPendingChanges < Struct.new(
      :user_names_to_remove,
      :user_names_to_add)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/ACLQuotaExceededFault AWS API Documentation
    #
    class ACLQuotaExceededFault < Aws::EmptyStructure; end

    # The status of the ACL update
    #
    # @!attribute [rw] acl_to_apply
    #   A list of ACLs pending to be applied.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/ACLsUpdateStatus AWS API Documentation
    #
    class ACLsUpdateStatus < Struct.new(
      :acl_to_apply)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/APICallRateForCustomerExceededFault AWS API Documentation
    #
    class APICallRateForCustomerExceededFault < Aws::EmptyStructure; end

    # Denotes the user's authentication properties, such as whether it
    # requires a password to authenticate. Used in output responses.
    #
    # @!attribute [rw] type
    #   Indicates whether the user requires a password to authenticate.
    #   @return [String]
    #
    # @!attribute [rw] password_count
    #   The number of passwords belonging to the user. The maximum is two.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/Authentication AWS API Documentation
    #
    class Authentication < Struct.new(
      :type,
      :password_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # Denotes the user's authentication properties, such as whether it
    # requires a password to authenticate. Used in output responses.
    #
    # @!attribute [rw] type
    #   Indicates whether the user requires a password to authenticate. All
    #   newly-created users require a password.
    #   @return [String]
    #
    # @!attribute [rw] passwords
    #   The password(s) used for authentication
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/AuthenticationMode AWS API Documentation
    #
    class AuthenticationMode < Struct.new(
      :type,
      :passwords)
      SENSITIVE = []
      include Aws::Structure
    end

    # Indicates if the cluster has a Multi-AZ configuration (multiaz) or not
    # (singleaz).
    #
    # @!attribute [rw] name
    #   The name of the Availability Zone.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/AvailabilityZone AWS API Documentation
    #
    class AvailabilityZone < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster_names
    #   The cluster names to apply the updates.
    #   @return [Array<String>]
    #
    # @!attribute [rw] service_update
    #   The unique ID of the service update
    #   @return [Types::ServiceUpdateRequest]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/BatchUpdateClusterRequest AWS API Documentation
    #
    class BatchUpdateClusterRequest < Struct.new(
      :cluster_names,
      :service_update)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] processed_clusters
    #   The list of clusters that have been updated.
    #   @return [Array<Types::Cluster>]
    #
    # @!attribute [rw] unprocessed_clusters
    #   The list of clusters where updates have not been applied.
    #   @return [Array<Types::UnprocessedCluster>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/BatchUpdateClusterResponse AWS API Documentation
    #
    class BatchUpdateClusterResponse < Struct.new(
      :processed_clusters,
      :unprocessed_clusters)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains all of the attributes of a specific cluster.
    #
    # @!attribute [rw] name
    #   The user-supplied name of the cluster. This identifier is a unique
    #   key that identifies a cluster.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the cluster
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the cluster. For example, Available, Updating,
    #   Creating.
    #   @return [String]
    #
    # @!attribute [rw] pending_updates
    #   A group of settings that are currently being applied.
    #   @return [Types::ClusterPendingUpdates]
    #
    # @!attribute [rw] number_of_shards
    #   The number of shards in the cluster
    #   @return [Integer]
    #
    # @!attribute [rw] shards
    #   A list of shards that are members of the cluster.
    #   @return [Array<Types::Shard>]
    #
    # @!attribute [rw] availability_mode
    #   Indicates if the cluster has a Multi-AZ configuration (multiaz) or
    #   not (singleaz).
    #   @return [String]
    #
    # @!attribute [rw] cluster_endpoint
    #   The cluster's configuration endpoint
    #   @return [Types::Endpoint]
    #
    # @!attribute [rw] node_type
    #   The cluster's node type
    #   @return [String]
    #
    # @!attribute [rw] engine_version
    #   The Redis engine version used by the cluster
    #   @return [String]
    #
    # @!attribute [rw] engine_patch_version
    #   The Redis engine patch version used by the cluster
    #   @return [String]
    #
    # @!attribute [rw] parameter_group_name
    #   The name of the parameter group used by the cluster
    #   @return [String]
    #
    # @!attribute [rw] parameter_group_status
    #   The status of the parameter group used by the cluster, for example
    #   'active' or 'applying'.
    #   @return [String]
    #
    # @!attribute [rw] security_groups
    #   A list of security groups used by the cluster
    #   @return [Array<Types::SecurityGroupMembership>]
    #
    # @!attribute [rw] subnet_group_name
    #   The name of the subnet group used by the cluster
    #   @return [String]
    #
    # @!attribute [rw] tls_enabled
    #   A flag to indicate if In-transit encryption is enabled
    #   @return [Boolean]
    #
    # @!attribute [rw] kms_key_id
    #   The ID of the KMS key used to encrypt the cluster
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the cluster.
    #   @return [String]
    #
    # @!attribute [rw] sns_topic_arn
    #   The Amazon Resource Name (ARN) of the SNS notification topic
    #   @return [String]
    #
    # @!attribute [rw] sns_topic_status
    #   The SNS topic must be in Active status to receive notifications
    #   @return [String]
    #
    # @!attribute [rw] snapshot_retention_limit
    #   The number of days for which MemoryDB retains automatic snapshots
    #   before deleting them. For example, if you set SnapshotRetentionLimit
    #   to 5, a snapshot that was taken today is retained for 5 days before
    #   being deleted.
    #   @return [Integer]
    #
    # @!attribute [rw] maintenance_window
    #   Specifies the weekly time range during which maintenance on the
    #   cluster is performed. It is specified as a range in the format
    #   ddd:hh24:mi-ddd:hh24:mi (24H Clock UTC). The minimum maintenance
    #   window is a 60 minute period.
    #   @return [String]
    #
    # @!attribute [rw] snapshot_window
    #   The daily time range (in UTC) during which MemoryDB begins taking a
    #   daily snapshot of your shard. Example: 05:00-09:00 If you do not
    #   specify this parameter, MemoryDB automatically chooses an
    #   appropriate time range.
    #   @return [String]
    #
    # @!attribute [rw] acl_name
    #   The name of the Access Control List associated with this cluster.
    #   @return [String]
    #
    # @!attribute [rw] auto_minor_version_upgrade
    #   When set to true, the cluster will automatically receive minor
    #   engine version upgrades after launch.
    #   @return [Boolean]
    #
    # @!attribute [rw] data_tiering
    #   Enables data tiering. Data tiering is only supported for clusters
    #   using the r6gd node type. This parameter must be set when using r6gd
    #   nodes. For more information, see [Data tiering][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/memorydb/latest/devguide/data-tiering.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/Cluster AWS API Documentation
    #
    class Cluster < Struct.new(
      :name,
      :description,
      :status,
      :pending_updates,
      :number_of_shards,
      :shards,
      :availability_mode,
      :cluster_endpoint,
      :node_type,
      :engine_version,
      :engine_patch_version,
      :parameter_group_name,
      :parameter_group_status,
      :security_groups,
      :subnet_group_name,
      :tls_enabled,
      :kms_key_id,
      :arn,
      :sns_topic_arn,
      :sns_topic_status,
      :snapshot_retention_limit,
      :maintenance_window,
      :snapshot_window,
      :acl_name,
      :auto_minor_version_upgrade,
      :data_tiering)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/ClusterAlreadyExistsFault AWS API Documentation
    #
    class ClusterAlreadyExistsFault < Aws::EmptyStructure; end

    # A list of cluster configuration options.
    #
    # @!attribute [rw] name
    #   The name of the cluster
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the cluster configuration
    #   @return [String]
    #
    # @!attribute [rw] node_type
    #   The node type used for the cluster
    #   @return [String]
    #
    # @!attribute [rw] engine_version
    #   The Redis engine version used by the cluster
    #   @return [String]
    #
    # @!attribute [rw] maintenance_window
    #   The specified maintenance window for the cluster
    #   @return [String]
    #
    # @!attribute [rw] topic_arn
    #   The Amazon Resource Name (ARN) of the SNS notification topic for the
    #   cluster
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The port used by the cluster
    #   @return [Integer]
    #
    # @!attribute [rw] parameter_group_name
    #   The name of parameter group used by the cluster
    #   @return [String]
    #
    # @!attribute [rw] subnet_group_name
    #   The name of the subnet group used by the cluster
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   The ID of the VPC the cluster belongs to
    #   @return [String]
    #
    # @!attribute [rw] snapshot_retention_limit
    #   The snapshot retention limit set by the cluster
    #   @return [Integer]
    #
    # @!attribute [rw] snapshot_window
    #   The snapshot window set by the cluster
    #   @return [String]
    #
    # @!attribute [rw] num_shards
    #   The number of shards in the cluster
    #   @return [Integer]
    #
    # @!attribute [rw] shards
    #   The list of shards in the cluster
    #   @return [Array<Types::ShardDetail>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/ClusterConfiguration AWS API Documentation
    #
    class ClusterConfiguration < Struct.new(
      :name,
      :description,
      :node_type,
      :engine_version,
      :maintenance_window,
      :topic_arn,
      :port,
      :parameter_group_name,
      :subnet_group_name,
      :vpc_id,
      :snapshot_retention_limit,
      :snapshot_window,
      :num_shards,
      :shards)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/ClusterNotFoundFault AWS API Documentation
    #
    class ClusterNotFoundFault < Aws::EmptyStructure; end

    # A list of updates being applied to the cluster
    #
    # @!attribute [rw] resharding
    #   The status of an online resharding operation.
    #   @return [Types::ReshardingStatus]
    #
    # @!attribute [rw] acls
    #   A list of ACLs associated with the cluster that are being updated
    #   @return [Types::ACLsUpdateStatus]
    #
    # @!attribute [rw] service_updates
    #   A list of service updates being applied to the cluster
    #   @return [Array<Types::PendingModifiedServiceUpdate>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/ClusterPendingUpdates AWS API Documentation
    #
    class ClusterPendingUpdates < Struct.new(
      :resharding,
      :acls,
      :service_updates)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/ClusterQuotaForCustomerExceededFault AWS API Documentation
    #
    class ClusterQuotaForCustomerExceededFault < Aws::EmptyStructure; end

    # @!attribute [rw] source_snapshot_name
    #   The name of an existing snapshot from which to make a copy.
    #   @return [String]
    #
    # @!attribute [rw] target_snapshot_name
    #   A name for the snapshot copy. MemoryDB does not permit overwriting a
    #   snapshot, therefore this name must be unique within its context -
    #   MemoryDB or an Amazon S3 bucket if exporting.
    #   @return [String]
    #
    # @!attribute [rw] target_bucket
    #   The Amazon S3 bucket to which the snapshot is exported. This
    #   parameter is used only when exporting a snapshot for external
    #   access. When using this parameter to export a snapshot, be sure
    #   MemoryDB has the needed permissions to this S3 bucket. For more
    #   information, see [Step 2: Grant MemoryDB Access to Your Amazon S3
    #   Bucket][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/MemoryDB/latest/devguide/snapshots-exporting.html
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   The ID of the KMS key used to encrypt the target snapshot.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of tags to be added to this resource. A tag is a key-value
    #   pair. A tag key must be accompanied by a tag value, although null is
    #   accepted.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/CopySnapshotRequest AWS API Documentation
    #
    class CopySnapshotRequest < Struct.new(
      :source_snapshot_name,
      :target_snapshot_name,
      :target_bucket,
      :kms_key_id,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] snapshot
    #   Represents a copy of an entire cluster as of the time when the
    #   snapshot was taken.
    #   @return [Types::Snapshot]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/CopySnapshotResponse AWS API Documentation
    #
    class CopySnapshotResponse < Struct.new(
      :snapshot)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] acl_name
    #   The name of the Access Control List.
    #   @return [String]
    #
    # @!attribute [rw] user_names
    #   The list of users that belong to the Access Control List.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   A list of tags to be added to this resource. A tag is a key-value
    #   pair. A tag key must be accompanied by a tag value, although null is
    #   accepted.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/CreateACLRequest AWS API Documentation
    #
    class CreateACLRequest < Struct.new(
      :acl_name,
      :user_names,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] acl
    #   The newly-created Access Control List.
    #   @return [Types::ACL]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/CreateACLResponse AWS API Documentation
    #
    class CreateACLResponse < Struct.new(
      :acl)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster_name
    #   The name of the cluster. This value must be unique as it also serves
    #   as the cluster identifier.
    #   @return [String]
    #
    # @!attribute [rw] node_type
    #   The compute and memory capacity of the nodes in the cluster.
    #   @return [String]
    #
    # @!attribute [rw] parameter_group_name
    #   The name of the parameter group associated with the cluster.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   An optional description of the cluster.
    #   @return [String]
    #
    # @!attribute [rw] num_shards
    #   The number of shards the cluster will contain. The default value is
    #   1.
    #   @return [Integer]
    #
    # @!attribute [rw] num_replicas_per_shard
    #   The number of replicas to apply to each shard. The default value is
    #   1. The maximum is 5.
    #   @return [Integer]
    #
    # @!attribute [rw] subnet_group_name
    #   The name of the subnet group to be used for the cluster.
    #   @return [String]
    #
    # @!attribute [rw] security_group_ids
    #   A list of security group names to associate with this cluster.
    #   @return [Array<String>]
    #
    # @!attribute [rw] maintenance_window
    #   Specifies the weekly time range during which maintenance on the
    #   cluster is performed. It is specified as a range in the format
    #   ddd:hh24:mi-ddd:hh24:mi (24H Clock UTC). The minimum maintenance
    #   window is a 60 minute period.
    #
    #   Valid values for `ddd` are:
    #
    #   * `sun`
    #
    #   * `mon`
    #
    #   * `tue`
    #
    #   * `wed`
    #
    #   * `thu`
    #
    #   * `fri`
    #
    #   * `sat`
    #
    #   Example: `sun:23:00-mon:01:30`
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The port number on which each of the nodes accepts connections.
    #   @return [Integer]
    #
    # @!attribute [rw] sns_topic_arn
    #   The Amazon Resource Name (ARN) of the Amazon Simple Notification
    #   Service (SNS) topic to which notifications are sent.
    #   @return [String]
    #
    # @!attribute [rw] tls_enabled
    #   A flag to enable in-transit encryption on the cluster.
    #   @return [Boolean]
    #
    # @!attribute [rw] kms_key_id
    #   The ID of the KMS key used to encrypt the cluster.
    #   @return [String]
    #
    # @!attribute [rw] snapshot_arns
    #   A list of Amazon Resource Names (ARN) that uniquely identify the RDB
    #   snapshot files stored in Amazon S3. The snapshot files are used to
    #   populate the new cluster. The Amazon S3 object name in the ARN
    #   cannot contain any commas.
    #   @return [Array<String>]
    #
    # @!attribute [rw] snapshot_name
    #   The name of a snapshot from which to restore data into the new
    #   cluster. The snapshot status changes to restoring while the new
    #   cluster is being created.
    #   @return [String]
    #
    # @!attribute [rw] snapshot_retention_limit
    #   The number of days for which MemoryDB retains automatic snapshots
    #   before deleting them. For example, if you set SnapshotRetentionLimit
    #   to 5, a snapshot that was taken today is retained for 5 days before
    #   being deleted.
    #   @return [Integer]
    #
    # @!attribute [rw] tags
    #   A list of tags to be added to this resource. Tags are
    #   comma-separated key,value pairs (e.g. Key=myKey, Value=myKeyValue.
    #   You can include multiple tags as shown following: Key=myKey,
    #   Value=myKeyValue Key=mySecondKey, Value=mySecondKeyValue.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] snapshot_window
    #   The daily time range (in UTC) during which MemoryDB begins taking a
    #   daily snapshot of your shard.
    #
    #   Example: 05:00-09:00
    #
    #   If you do not specify this parameter, MemoryDB automatically chooses
    #   an appropriate time range.
    #   @return [String]
    #
    # @!attribute [rw] acl_name
    #   The name of the Access Control List to associate with the cluster.
    #   @return [String]
    #
    # @!attribute [rw] engine_version
    #   The version number of the Redis engine to be used for the cluster.
    #   @return [String]
    #
    # @!attribute [rw] auto_minor_version_upgrade
    #   When set to true, the cluster will automatically receive minor
    #   engine version upgrades after launch.
    #   @return [Boolean]
    #
    # @!attribute [rw] data_tiering
    #   Enables data tiering. Data tiering is only supported for clusters
    #   using the r6gd node type. This parameter must be set when using r6gd
    #   nodes. For more information, see [Data tiering][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/memorydb/latest/devguide/data-tiering.html
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/CreateClusterRequest AWS API Documentation
    #
    class CreateClusterRequest < Struct.new(
      :cluster_name,
      :node_type,
      :parameter_group_name,
      :description,
      :num_shards,
      :num_replicas_per_shard,
      :subnet_group_name,
      :security_group_ids,
      :maintenance_window,
      :port,
      :sns_topic_arn,
      :tls_enabled,
      :kms_key_id,
      :snapshot_arns,
      :snapshot_name,
      :snapshot_retention_limit,
      :tags,
      :snapshot_window,
      :acl_name,
      :engine_version,
      :auto_minor_version_upgrade,
      :data_tiering)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster
    #   The newly-created cluster.
    #   @return [Types::Cluster]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/CreateClusterResponse AWS API Documentation
    #
    class CreateClusterResponse < Struct.new(
      :cluster)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] parameter_group_name
    #   The name of the parameter group.
    #   @return [String]
    #
    # @!attribute [rw] family
    #   The name of the parameter group family that the parameter group can
    #   be used with.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   An optional description of the parameter group.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of tags to be added to this resource. A tag is a key-value
    #   pair. A tag key must be accompanied by a tag value, although null is
    #   accepted.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/CreateParameterGroupRequest AWS API Documentation
    #
    class CreateParameterGroupRequest < Struct.new(
      :parameter_group_name,
      :family,
      :description,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] parameter_group
    #   The newly-created parameter group.
    #   @return [Types::ParameterGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/CreateParameterGroupResponse AWS API Documentation
    #
    class CreateParameterGroupResponse < Struct.new(
      :parameter_group)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster_name
    #   The snapshot is created from this cluster.
    #   @return [String]
    #
    # @!attribute [rw] snapshot_name
    #   A name for the snapshot being created.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   The ID of the KMS key used to encrypt the snapshot.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of tags to be added to this resource. A tag is a key-value
    #   pair. A tag key must be accompanied by a tag value, although null is
    #   accepted.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/CreateSnapshotRequest AWS API Documentation
    #
    class CreateSnapshotRequest < Struct.new(
      :cluster_name,
      :snapshot_name,
      :kms_key_id,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] snapshot
    #   The newly-created snapshot.
    #   @return [Types::Snapshot]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/CreateSnapshotResponse AWS API Documentation
    #
    class CreateSnapshotResponse < Struct.new(
      :snapshot)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] subnet_group_name
    #   The name of the subnet group.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description for the subnet group.
    #   @return [String]
    #
    # @!attribute [rw] subnet_ids
    #   A list of VPC subnet IDs for the subnet group.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   A list of tags to be added to this resource. A tag is a key-value
    #   pair. A tag key must be accompanied by a tag value, although null is
    #   accepted.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/CreateSubnetGroupRequest AWS API Documentation
    #
    class CreateSubnetGroupRequest < Struct.new(
      :subnet_group_name,
      :description,
      :subnet_ids,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] subnet_group
    #   The newly-created subnet group
    #   @return [Types::SubnetGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/CreateSubnetGroupResponse AWS API Documentation
    #
    class CreateSubnetGroupResponse < Struct.new(
      :subnet_group)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user_name
    #   The name of the user. This value must be unique as it also serves as
    #   the user identifier.
    #   @return [String]
    #
    # @!attribute [rw] authentication_mode
    #   Denotes the user's authentication properties, such as whether it
    #   requires a password to authenticate.
    #   @return [Types::AuthenticationMode]
    #
    # @!attribute [rw] access_string
    #   Access permissions string used for this user.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of tags to be added to this resource. A tag is a key-value
    #   pair. A tag key must be accompanied by a tag value, although null is
    #   accepted.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/CreateUserRequest AWS API Documentation
    #
    class CreateUserRequest < Struct.new(
      :user_name,
      :authentication_mode,
      :access_string,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user
    #   The newly-created user.
    #   @return [Types::User]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/CreateUserResponse AWS API Documentation
    #
    class CreateUserResponse < Struct.new(
      :user)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/DefaultUserRequired AWS API Documentation
    #
    class DefaultUserRequired < Aws::EmptyStructure; end

    # @!attribute [rw] acl_name
    #   The name of the Access Control List to delete
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/DeleteACLRequest AWS API Documentation
    #
    class DeleteACLRequest < Struct.new(
      :acl_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] acl
    #   The Access Control List object that has been deleted.
    #   @return [Types::ACL]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/DeleteACLResponse AWS API Documentation
    #
    class DeleteACLResponse < Struct.new(
      :acl)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster_name
    #   The name of the cluster to be deleted
    #   @return [String]
    #
    # @!attribute [rw] final_snapshot_name
    #   The user-supplied name of a final cluster snapshot. This is the
    #   unique name that identifies the snapshot. MemoryDB creates the
    #   snapshot, and then deletes the cluster immediately afterward.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/DeleteClusterRequest AWS API Documentation
    #
    class DeleteClusterRequest < Struct.new(
      :cluster_name,
      :final_snapshot_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster
    #   The cluster object that has been deleted
    #   @return [Types::Cluster]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/DeleteClusterResponse AWS API Documentation
    #
    class DeleteClusterResponse < Struct.new(
      :cluster)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] parameter_group_name
    #   The name of the parameter group to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/DeleteParameterGroupRequest AWS API Documentation
    #
    class DeleteParameterGroupRequest < Struct.new(
      :parameter_group_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] parameter_group
    #   The parameter group that has been deleted.
    #   @return [Types::ParameterGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/DeleteParameterGroupResponse AWS API Documentation
    #
    class DeleteParameterGroupResponse < Struct.new(
      :parameter_group)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] snapshot_name
    #   The name of the snapshot to delete
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/DeleteSnapshotRequest AWS API Documentation
    #
    class DeleteSnapshotRequest < Struct.new(
      :snapshot_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] snapshot
    #   The snapshot object that has been deleted.
    #   @return [Types::Snapshot]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/DeleteSnapshotResponse AWS API Documentation
    #
    class DeleteSnapshotResponse < Struct.new(
      :snapshot)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] subnet_group_name
    #   The name of the subnet group to delete
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/DeleteSubnetGroupRequest AWS API Documentation
    #
    class DeleteSubnetGroupRequest < Struct.new(
      :subnet_group_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] subnet_group
    #   The subnet group object that has been deleted.
    #   @return [Types::SubnetGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/DeleteSubnetGroupResponse AWS API Documentation
    #
    class DeleteSubnetGroupResponse < Struct.new(
      :subnet_group)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user_name
    #   The name of the user to delete
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/DeleteUserRequest AWS API Documentation
    #
    class DeleteUserRequest < Struct.new(
      :user_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user
    #   The user object that has been deleted.
    #   @return [Types::User]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/DeleteUserResponse AWS API Documentation
    #
    class DeleteUserResponse < Struct.new(
      :user)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] acl_name
    #   The name of the ACL
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified MaxResults value, a token is
    #   included in the response so that the remaining results can be
    #   retrieved.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   An optional argument to pass in case the total number of records
    #   exceeds the value of MaxResults. If nextToken is returned, there are
    #   more results available. The value of nextToken is a unique
    #   pagination token for each page. Make the call again using the
    #   returned token to retrieve the next page. Keep all other arguments
    #   unchanged.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/DescribeACLsRequest AWS API Documentation
    #
    class DescribeACLsRequest < Struct.new(
      :acl_name,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] acls
    #   The list of ACLs
    #   @return [Array<Types::ACL>]
    #
    # @!attribute [rw] next_token
    #   If nextToken is returned, there are more results available. The
    #   value of nextToken is a unique pagination token for each page. Make
    #   the call again using the returned token to retrieve the next page.
    #   Keep all other arguments unchanged.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/DescribeACLsResponse AWS API Documentation
    #
    class DescribeACLsResponse < Struct.new(
      :acls,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster_name
    #   The name of the cluster
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified MaxResults value, a token is
    #   included in the response so that the remaining results can be
    #   retrieved.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   An optional argument to pass in case the total number of records
    #   exceeds the value of MaxResults. If nextToken is returned, there are
    #   more results available. The value of nextToken is a unique
    #   pagination token for each page. Make the call again using the
    #   returned token to retrieve the next page. Keep all other arguments
    #   unchanged.
    #   @return [String]
    #
    # @!attribute [rw] show_shard_details
    #   An optional flag that can be included in the request to retrieve
    #   information about the individual shard(s).
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/DescribeClustersRequest AWS API Documentation
    #
    class DescribeClustersRequest < Struct.new(
      :cluster_name,
      :max_results,
      :next_token,
      :show_shard_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   An optional argument to pass in case the total number of records
    #   exceeds the value of MaxResults. If nextToken is returned, there are
    #   more results available. The value of nextToken is a unique
    #   pagination token for each page. Make the call again using the
    #   returned token to retrieve the next page. Keep all other arguments
    #   unchanged.
    #   @return [String]
    #
    # @!attribute [rw] clusters
    #   A list of clusters
    #   @return [Array<Types::Cluster>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/DescribeClustersResponse AWS API Documentation
    #
    class DescribeClustersResponse < Struct.new(
      :next_token,
      :clusters)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] engine_version
    #   The Redis engine version
    #   @return [String]
    #
    # @!attribute [rw] parameter_group_family
    #   The name of a specific parameter group family to return details for.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified MaxResults value, a token is
    #   included in the response so that the remaining results can be
    #   retrieved.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   An optional argument to pass in case the total number of records
    #   exceeds the value of MaxResults. If nextToken is returned, there are
    #   more results available. The value of nextToken is a unique
    #   pagination token for each page. Make the call again using the
    #   returned token to retrieve the next page. Keep all other arguments
    #   unchanged.
    #   @return [String]
    #
    # @!attribute [rw] default_only
    #   If true, specifies that only the default version of the specified
    #   engine or engine and major version combination is to be returned.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/DescribeEngineVersionsRequest AWS API Documentation
    #
    class DescribeEngineVersionsRequest < Struct.new(
      :engine_version,
      :parameter_group_family,
      :max_results,
      :next_token,
      :default_only)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   An optional argument to pass in case the total number of records
    #   exceeds the value of MaxResults. If nextToken is returned, there are
    #   more results available. The value of nextToken is a unique
    #   pagination token for each page. Make the call again using the
    #   returned token to retrieve the next page. Keep all other arguments
    #   unchanged.
    #   @return [String]
    #
    # @!attribute [rw] engine_versions
    #   A list of engine version details. Each element in the list contains
    #   detailed information about one engine version.
    #   @return [Array<Types::EngineVersionInfo>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/DescribeEngineVersionsResponse AWS API Documentation
    #
    class DescribeEngineVersionsResponse < Struct.new(
      :next_token,
      :engine_versions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] source_name
    #   The identifier of the event source for which events are returned. If
    #   not specified, all sources are included in the response.
    #   @return [String]
    #
    # @!attribute [rw] source_type
    #   The event source to retrieve events for. If no value is specified,
    #   all events are returned.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The beginning of the time interval to retrieve events for, specified
    #   in ISO 8601 format. Example: 2017-03-30T07:03:49.555Z
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The end of the time interval for which to retrieve events, specified
    #   in ISO 8601 format. Example: 2017-03-30T07:03:49.555Z
    #   @return [Time]
    #
    # @!attribute [rw] duration
    #   The number of minutes worth of events to retrieve.
    #   @return [Integer]
    #
    # @!attribute [rw] max_results
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified MaxResults value, a token is
    #   included in the response so that the remaining results can be
    #   retrieved.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   An optional argument to pass in case the total number of records
    #   exceeds the value of MaxResults. If nextToken is returned, there are
    #   more results available. The value of nextToken is a unique
    #   pagination token for each page. Make the call again using the
    #   returned token to retrieve the next page. Keep all other arguments
    #   unchanged.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/DescribeEventsRequest AWS API Documentation
    #
    class DescribeEventsRequest < Struct.new(
      :source_name,
      :source_type,
      :start_time,
      :end_time,
      :duration,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   An optional argument to pass in case the total number of records
    #   exceeds the value of MaxResults. If nextToken is returned, there are
    #   more results available. The value of nextToken is a unique
    #   pagination token for each page. Make the call again using the
    #   returned token to retrieve the next page. Keep all other arguments
    #   unchanged.
    #   @return [String]
    #
    # @!attribute [rw] events
    #   A list of events. Each element in the list contains detailed
    #   information about one event.
    #   @return [Array<Types::Event>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/DescribeEventsResponse AWS API Documentation
    #
    class DescribeEventsResponse < Struct.new(
      :next_token,
      :events)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] parameter_group_name
    #   The name of a specific parameter group to return details for.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified MaxResults value, a token is
    #   included in the response so that the remaining results can be
    #   retrieved.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   An optional argument to pass in case the total number of records
    #   exceeds the value of MaxResults. If nextToken is returned, there are
    #   more results available. The value of nextToken is a unique
    #   pagination token for each page. Make the call again using the
    #   returned token to retrieve the next page. Keep all other arguments
    #   unchanged.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/DescribeParameterGroupsRequest AWS API Documentation
    #
    class DescribeParameterGroupsRequest < Struct.new(
      :parameter_group_name,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   An optional argument to pass in case the total number of records
    #   exceeds the value of MaxResults. If nextToken is returned, there are
    #   more results available. The value of nextToken is a unique
    #   pagination token for each page. Make the call again using the
    #   returned token to retrieve the next page. Keep all other arguments
    #   unchanged.
    #   @return [String]
    #
    # @!attribute [rw] parameter_groups
    #   A list of parameter groups. Each element in the list contains
    #   detailed information about one parameter group.
    #   @return [Array<Types::ParameterGroup>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/DescribeParameterGroupsResponse AWS API Documentation
    #
    class DescribeParameterGroupsResponse < Struct.new(
      :next_token,
      :parameter_groups)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] parameter_group_name
    #   he name of a specific parameter group to return details for.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified MaxResults value, a token is
    #   included in the response so that the remaining results can be
    #   retrieved.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   An optional argument to pass in case the total number of records
    #   exceeds the value of MaxResults. If nextToken is returned, there are
    #   more results available. The value of nextToken is a unique
    #   pagination token for each page. Make the call again using the
    #   returned token to retrieve the next page. Keep all other arguments
    #   unchanged.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/DescribeParametersRequest AWS API Documentation
    #
    class DescribeParametersRequest < Struct.new(
      :parameter_group_name,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   An optional argument to pass in case the total number of records
    #   exceeds the value of MaxResults. If nextToken is returned, there are
    #   more results available. The value of nextToken is a unique
    #   pagination token for each page. Make the call again using the
    #   returned token to retrieve the next page. Keep all other arguments
    #   unchanged.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   A list of parameters specific to a particular parameter group. Each
    #   element in the list contains detailed information about one
    #   parameter.
    #   @return [Array<Types::Parameter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/DescribeParametersResponse AWS API Documentation
    #
    class DescribeParametersResponse < Struct.new(
      :next_token,
      :parameters)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] reserved_nodes_offering_id
    #   The offering identifier filter value. Use this parameter to show
    #   only the available offering that matches the specified reservation
    #   identifier.
    #   @return [String]
    #
    # @!attribute [rw] node_type
    #   The node type for the reserved nodes. For more information, see
    #   [Supported node types][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/memorydb/latest/devguide/nodes.reserved.html#reserved-nodes-supported
    #   @return [String]
    #
    # @!attribute [rw] duration
    #   Duration filter value, specified in years or seconds. Use this
    #   parameter to show only reservations for a given duration.
    #   @return [String]
    #
    # @!attribute [rw] offering_type
    #   The offering type filter value. Use this parameter to show only the
    #   available offerings matching the specified offering type. Valid
    #   values: "All Upfront"\|"Partial Upfront"\| "No Upfront"
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified MaxRecords value, a marker is
    #   included in the response so that the remaining results can be
    #   retrieved.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   An optional marker returned from a prior request. Use this marker
    #   for pagination of results from this operation. If this parameter is
    #   specified, the response includes only records beyond the marker, up
    #   to the value specified by MaxRecords.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/DescribeReservedNodesOfferingsRequest AWS API Documentation
    #
    class DescribeReservedNodesOfferingsRequest < Struct.new(
      :reserved_nodes_offering_id,
      :node_type,
      :duration,
      :offering_type,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   An optional marker returned from a prior request. Use this marker
    #   for pagination of results from this operation. If this parameter is
    #   specified, the response includes only records beyond the marker, up
    #   to the value specified by MaxRecords.
    #   @return [String]
    #
    # @!attribute [rw] reserved_nodes_offerings
    #   Lists available reserved node offerings.
    #   @return [Array<Types::ReservedNodesOffering>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/DescribeReservedNodesOfferingsResponse AWS API Documentation
    #
    class DescribeReservedNodesOfferingsResponse < Struct.new(
      :next_token,
      :reserved_nodes_offerings)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] reservation_id
    #   The reserved node identifier filter value. Use this parameter to
    #   show only the reservation that matches the specified reservation ID.
    #   @return [String]
    #
    # @!attribute [rw] reserved_nodes_offering_id
    #   The offering identifier filter value. Use this parameter to show
    #   only purchased reservations matching the specified offering
    #   identifier.
    #   @return [String]
    #
    # @!attribute [rw] node_type
    #   The node type filter value. Use this parameter to show only those
    #   reservations matching the specified node type. For more information,
    #   see [Supported node types][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/memorydb/latest/devguide/nodes.reserved.html#reserved-nodes-supported
    #   @return [String]
    #
    # @!attribute [rw] duration
    #   The duration filter value, specified in years or seconds. Use this
    #   parameter to show only reservations for this duration.
    #   @return [String]
    #
    # @!attribute [rw] offering_type
    #   The offering type filter value. Use this parameter to show only the
    #   available offerings matching the specified offering type. Valid
    #   values: "All Upfront"\|"Partial Upfront"\| "No Upfront"
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified MaxRecords value, a marker is
    #   included in the response so that the remaining results can be
    #   retrieved.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   An optional marker returned from a prior request. Use this marker
    #   for pagination of results from this operation. If this parameter is
    #   specified, the response includes only records beyond the marker, up
    #   to the value specified by MaxRecords.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/DescribeReservedNodesRequest AWS API Documentation
    #
    class DescribeReservedNodesRequest < Struct.new(
      :reservation_id,
      :reserved_nodes_offering_id,
      :node_type,
      :duration,
      :offering_type,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   An optional marker returned from a prior request. Use this marker
    #   for pagination of results from this operation. If this parameter is
    #   specified, the response includes only records beyond the marker, up
    #   to the value specified by MaxRecords.
    #   @return [String]
    #
    # @!attribute [rw] reserved_nodes
    #   Returns information about reserved nodes for this account, or about
    #   a specified reserved node.
    #   @return [Array<Types::ReservedNode>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/DescribeReservedNodesResponse AWS API Documentation
    #
    class DescribeReservedNodesResponse < Struct.new(
      :next_token,
      :reserved_nodes)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service_update_name
    #   The unique ID of the service update to describe.
    #   @return [String]
    #
    # @!attribute [rw] cluster_names
    #   The list of cluster names to identify service updates to apply
    #   @return [Array<String>]
    #
    # @!attribute [rw] status
    #   The status(es) of the service updates to filter on
    #   @return [Array<String>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified MaxResults value, a token is
    #   included in the response so that the remaining results can be
    #   retrieved.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   An optional argument to pass in case the total number of records
    #   exceeds the value of MaxResults. If nextToken is returned, there are
    #   more results available. The value of nextToken is a unique
    #   pagination token for each page. Make the call again using the
    #   returned token to retrieve the next page. Keep all other arguments
    #   unchanged.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/DescribeServiceUpdatesRequest AWS API Documentation
    #
    class DescribeServiceUpdatesRequest < Struct.new(
      :service_update_name,
      :cluster_names,
      :status,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   An optional argument to pass in case the total number of records
    #   exceeds the value of MaxResults. If nextToken is returned, there are
    #   more results available. The value of nextToken is a unique
    #   pagination token for each page. Make the call again using the
    #   returned token to retrieve the next page. Keep all other arguments
    #   unchanged.
    #   @return [String]
    #
    # @!attribute [rw] service_updates
    #   A list of service updates
    #   @return [Array<Types::ServiceUpdate>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/DescribeServiceUpdatesResponse AWS API Documentation
    #
    class DescribeServiceUpdatesResponse < Struct.new(
      :next_token,
      :service_updates)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster_name
    #   A user-supplied cluster identifier. If this parameter is specified,
    #   only snapshots associated with that specific cluster are described.
    #   @return [String]
    #
    # @!attribute [rw] snapshot_name
    #   A user-supplied name of the snapshot. If this parameter is
    #   specified, only this named snapshot is described.
    #   @return [String]
    #
    # @!attribute [rw] source
    #   If set to system, the output shows snapshots that were automatically
    #   created by MemoryDB. If set to user the output shows snapshots that
    #   were manually created. If omitted, the output shows both
    #   automatically and manually created snapshots.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   An optional argument to pass in case the total number of records
    #   exceeds the value of MaxResults. If nextToken is returned, there are
    #   more results available. The value of nextToken is a unique
    #   pagination token for each page. Make the call again using the
    #   returned token to retrieve the next page. Keep all other arguments
    #   unchanged.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified MaxResults value, a token is
    #   included in the response so that the remaining results can be
    #   retrieved.
    #   @return [Integer]
    #
    # @!attribute [rw] show_detail
    #   A Boolean value which if true, the shard configuration is included
    #   in the snapshot description.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/DescribeSnapshotsRequest AWS API Documentation
    #
    class DescribeSnapshotsRequest < Struct.new(
      :cluster_name,
      :snapshot_name,
      :source,
      :next_token,
      :max_results,
      :show_detail)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   An optional argument to pass in case the total number of records
    #   exceeds the value of MaxResults. If nextToken is returned, there are
    #   more results available. The value of nextToken is a unique
    #   pagination token for each page. Make the call again using the
    #   returned token to retrieve the next page. Keep all other arguments
    #   unchanged.
    #   @return [String]
    #
    # @!attribute [rw] snapshots
    #   A list of snapshots. Each item in the list contains detailed
    #   information about one snapshot.
    #   @return [Array<Types::Snapshot>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/DescribeSnapshotsResponse AWS API Documentation
    #
    class DescribeSnapshotsResponse < Struct.new(
      :next_token,
      :snapshots)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] subnet_group_name
    #   The name of the subnet group to return details for.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified MaxResults value, a token is
    #   included in the response so that the remaining results can be
    #   retrieved.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   An optional argument to pass in case the total number of records
    #   exceeds the value of MaxResults. If nextToken is returned, there are
    #   more results available. The value of nextToken is a unique
    #   pagination token for each page. Make the call again using the
    #   returned token to retrieve the next page. Keep all other arguments
    #   unchanged.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/DescribeSubnetGroupsRequest AWS API Documentation
    #
    class DescribeSubnetGroupsRequest < Struct.new(
      :subnet_group_name,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   An optional argument to pass in case the total number of records
    #   exceeds the value of MaxResults. If nextToken is returned, there are
    #   more results available. The value of nextToken is a unique
    #   pagination token for each page. Make the call again using the
    #   returned token to retrieve the next page. Keep all other arguments
    #   unchanged.
    #   @return [String]
    #
    # @!attribute [rw] subnet_groups
    #   A list of subnet groups. Each element in the list contains detailed
    #   information about one group.
    #   @return [Array<Types::SubnetGroup>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/DescribeSubnetGroupsResponse AWS API Documentation
    #
    class DescribeSubnetGroupsResponse < Struct.new(
      :next_token,
      :subnet_groups)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user_name
    #   The name of the user
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   Filter to determine the list of users to return.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified MaxResults value, a token is
    #   included in the response so that the remaining results can be
    #   retrieved.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   An optional argument to pass in case the total number of records
    #   exceeds the value of MaxResults. If nextToken is returned, there are
    #   more results available. The value of nextToken is a unique
    #   pagination token for each page. Make the call again using the
    #   returned token to retrieve the next page. Keep all other arguments
    #   unchanged.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/DescribeUsersRequest AWS API Documentation
    #
    class DescribeUsersRequest < Struct.new(
      :user_name,
      :filters,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] users
    #   A list of users.
    #   @return [Array<Types::User>]
    #
    # @!attribute [rw] next_token
    #   An optional argument to pass in case the total number of records
    #   exceeds the value of MaxResults. If nextToken is returned, there are
    #   more results available. The value of nextToken is a unique
    #   pagination token for each page. Make the call again using the
    #   returned token to retrieve the next page. Keep all other arguments
    #   unchanged.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/DescribeUsersResponse AWS API Documentation
    #
    class DescribeUsersResponse < Struct.new(
      :users,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/DuplicateUserNameFault AWS API Documentation
    #
    class DuplicateUserNameFault < Aws::EmptyStructure; end

    # Represents the information required for client programs to connect to
    # the cluster and its nodes.
    #
    # @!attribute [rw] address
    #   The DNS hostname of the node.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The port number that the engine is listening on.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/Endpoint AWS API Documentation
    #
    class Endpoint < Struct.new(
      :address,
      :port)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides details of the Redis engine version
    #
    # @!attribute [rw] engine_version
    #   The engine version
    #   @return [String]
    #
    # @!attribute [rw] engine_patch_version
    #   The patched engine version
    #   @return [String]
    #
    # @!attribute [rw] parameter_group_family
    #   Specifies the name of the parameter group family to which the engine
    #   default parameters apply.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/EngineVersionInfo AWS API Documentation
    #
    class EngineVersionInfo < Struct.new(
      :engine_version,
      :engine_patch_version,
      :parameter_group_family)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a single occurrence of something interesting within the
    # system. Some examples of events are creating a cluster or adding or
    # removing a node.
    #
    # @!attribute [rw] source_name
    #   The name for the source of the event. For example, if the event
    #   occurred at the cluster level, the identifier would be the name of
    #   the cluster.
    #   @return [String]
    #
    # @!attribute [rw] source_type
    #   Specifies the origin of this event - a cluster, a parameter group, a
    #   security group, etc.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The text of the event.
    #   @return [String]
    #
    # @!attribute [rw] date
    #   The date and time when the event occurred.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/Event AWS API Documentation
    #
    class Event < Struct.new(
      :source_name,
      :source_type,
      :message,
      :date)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster_name
    #   The cluster being failed over
    #   @return [String]
    #
    # @!attribute [rw] shard_name
    #   The name of the shard
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/FailoverShardRequest AWS API Documentation
    #
    class FailoverShardRequest < Struct.new(
      :cluster_name,
      :shard_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster
    #   The cluster being failed over
    #   @return [Types::Cluster]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/FailoverShardResponse AWS API Documentation
    #
    class FailoverShardResponse < Struct.new(
      :cluster)
      SENSITIVE = []
      include Aws::Structure
    end

    # Used to streamline results of a search based on the property being
    # filtered.
    #
    # @!attribute [rw] name
    #   The property being filtered. For example, UserName.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The property values to filter on. For example, "user-123".
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/Filter AWS API Documentation
    #
    class Filter < Struct.new(
      :name,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/InsufficientClusterCapacityFault AWS API Documentation
    #
    class InsufficientClusterCapacityFault < Aws::EmptyStructure; end

    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/InvalidACLStateFault AWS API Documentation
    #
    class InvalidACLStateFault < Aws::EmptyStructure; end

    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/InvalidARNFault AWS API Documentation
    #
    class InvalidARNFault < Aws::EmptyStructure; end

    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/InvalidClusterStateFault AWS API Documentation
    #
    class InvalidClusterStateFault < Aws::EmptyStructure; end

    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/InvalidCredentialsException AWS API Documentation
    #
    class InvalidCredentialsException < Aws::EmptyStructure; end

    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/InvalidKMSKeyFault AWS API Documentation
    #
    class InvalidKMSKeyFault < Aws::EmptyStructure; end

    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/InvalidNodeStateFault AWS API Documentation
    #
    class InvalidNodeStateFault < Aws::EmptyStructure; end

    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/InvalidParameterCombinationException AWS API Documentation
    #
    class InvalidParameterCombinationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/InvalidParameterGroupStateFault AWS API Documentation
    #
    class InvalidParameterGroupStateFault < Aws::EmptyStructure; end

    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/InvalidParameterValueException AWS API Documentation
    #
    class InvalidParameterValueException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/InvalidSnapshotStateFault AWS API Documentation
    #
    class InvalidSnapshotStateFault < Aws::EmptyStructure; end

    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/InvalidSubnet AWS API Documentation
    #
    class InvalidSubnet < Aws::EmptyStructure; end

    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/InvalidUserStateFault AWS API Documentation
    #
    class InvalidUserStateFault < Aws::EmptyStructure; end

    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/InvalidVPCNetworkStateFault AWS API Documentation
    #
    class InvalidVPCNetworkStateFault < Aws::EmptyStructure; end

    # @!attribute [rw] cluster_name
    #   The name of the cluster you want to scale. MemoryDB uses the cluster
    #   name to identify the current node type being used by this cluster,
    #   and from that to create a list of node types you can scale up to.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/ListAllowedNodeTypeUpdatesRequest AWS API Documentation
    #
    class ListAllowedNodeTypeUpdatesRequest < Struct.new(
      :cluster_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] scale_up_node_types
    #   A list node types which you can use to scale up your cluster.
    #   @return [Array<String>]
    #
    # @!attribute [rw] scale_down_node_types
    #   A list node types which you can use to scale down your cluster.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/ListAllowedNodeTypeUpdatesResponse AWS API Documentation
    #
    class ListAllowedNodeTypeUpdatesResponse < Struct.new(
      :scale_up_node_types,
      :scale_down_node_types)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource for which you want
    #   the list of tags
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/ListTagsRequest AWS API Documentation
    #
    class ListTagsRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tag_list
    #   A list of tags as key-value pairs.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/ListTagsResponse AWS API Documentation
    #
    class ListTagsResponse < Struct.new(
      :tag_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/NoOperationFault AWS API Documentation
    #
    class NoOperationFault < Aws::EmptyStructure; end

    # Represents an individual node within a cluster. Each node runs its own
    # instance of the cluster's protocol-compliant caching software.
    #
    # @!attribute [rw] name
    #   The node identifier. A node name is a numeric identifier (0001,
    #   0002, etc.). The combination of cluster name, shard name and node
    #   name uniquely identifies every node used in a customer's Amazon
    #   account.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the service update on the node
    #   @return [String]
    #
    # @!attribute [rw] availability_zone
    #   The Availability Zone in which the node resides
    #   @return [String]
    #
    # @!attribute [rw] create_time
    #   The date and time when the node was created.
    #   @return [Time]
    #
    # @!attribute [rw] endpoint
    #   The hostname for connecting to this node.
    #   @return [Types::Endpoint]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/Node AWS API Documentation
    #
    class Node < Struct.new(
      :name,
      :status,
      :availability_zone,
      :create_time,
      :endpoint)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/NodeQuotaForClusterExceededFault AWS API Documentation
    #
    class NodeQuotaForClusterExceededFault < Aws::EmptyStructure; end

    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/NodeQuotaForCustomerExceededFault AWS API Documentation
    #
    class NodeQuotaForCustomerExceededFault < Aws::EmptyStructure; end

    # Describes an individual setting that controls some aspect of MemoryDB
    # behavior.
    #
    # @!attribute [rw] name
    #   The name of the parameter
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the parameter
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the parameter
    #   @return [String]
    #
    # @!attribute [rw] data_type
    #   The parameter's data type
    #   @return [String]
    #
    # @!attribute [rw] allowed_values
    #   The valid range of values for the parameter.
    #   @return [String]
    #
    # @!attribute [rw] minimum_engine_version
    #   The earliest engine version to which the parameter can apply.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/Parameter AWS API Documentation
    #
    class Parameter < Struct.new(
      :name,
      :value,
      :description,
      :data_type,
      :allowed_values,
      :minimum_engine_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the output of a CreateParameterGroup operation. A parameter
    # group represents a combination of specific values for the parameters
    # that are passed to the engine software during startup.
    #
    # @!attribute [rw] name
    #   The name of the parameter group
    #   @return [String]
    #
    # @!attribute [rw] family
    #   The name of the parameter group family that this parameter group is
    #   compatible with.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the parameter group
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the parameter group
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/ParameterGroup AWS API Documentation
    #
    class ParameterGroup < Struct.new(
      :name,
      :family,
      :description,
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/ParameterGroupAlreadyExistsFault AWS API Documentation
    #
    class ParameterGroupAlreadyExistsFault < Aws::EmptyStructure; end

    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/ParameterGroupNotFoundFault AWS API Documentation
    #
    class ParameterGroupNotFoundFault < Aws::EmptyStructure; end

    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/ParameterGroupQuotaExceededFault AWS API Documentation
    #
    class ParameterGroupQuotaExceededFault < Aws::EmptyStructure; end

    # Describes a name-value pair that is used to update the value of a
    # parameter.
    #
    # @!attribute [rw] parameter_name
    #   The name of the parameter
    #   @return [String]
    #
    # @!attribute [rw] parameter_value
    #   The value of the parameter
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/ParameterNameValue AWS API Documentation
    #
    class ParameterNameValue < Struct.new(
      :parameter_name,
      :parameter_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Update action that has yet to be processed for the corresponding
    # apply/stop request
    #
    # @!attribute [rw] service_update_name
    #   The unique ID of the service update
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the service update
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/PendingModifiedServiceUpdate AWS API Documentation
    #
    class PendingModifiedServiceUpdate < Struct.new(
      :service_update_name,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] reserved_nodes_offering_id
    #   The ID of the reserved node offering to purchase.
    #   @return [String]
    #
    # @!attribute [rw] reservation_id
    #   A customer-specified identifier to track this reservation.
    #   @return [String]
    #
    # @!attribute [rw] node_count
    #   The number of node instances to reserve.
    #   @return [Integer]
    #
    # @!attribute [rw] tags
    #   A list of tags to be added to this resource. A tag is a key-value
    #   pair. A tag key must be accompanied by a tag value, although null is
    #   accepted.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/PurchaseReservedNodesOfferingRequest AWS API Documentation
    #
    class PurchaseReservedNodesOfferingRequest < Struct.new(
      :reserved_nodes_offering_id,
      :reservation_id,
      :node_count,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] reserved_node
    #   Represents the output of a `PurchaseReservedNodesOffering`
    #   operation.
    #   @return [Types::ReservedNode]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/PurchaseReservedNodesOfferingResponse AWS API Documentation
    #
    class PurchaseReservedNodesOfferingResponse < Struct.new(
      :reserved_node)
      SENSITIVE = []
      include Aws::Structure
    end

    # The recurring charge to run this reserved node.
    #
    # @!attribute [rw] recurring_charge_amount
    #   The amount of the recurring charge to run this reserved node.
    #   @return [Float]
    #
    # @!attribute [rw] recurring_charge_frequency
    #   The frequency of the recurring price charged to run this reserved
    #   node.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/RecurringCharge AWS API Documentation
    #
    class RecurringCharge < Struct.new(
      :recurring_charge_amount,
      :recurring_charge_frequency)
      SENSITIVE = []
      include Aws::Structure
    end

    # A request to configure the number of replicas in a shard
    #
    # @!attribute [rw] replica_count
    #   The number of replicas to scale up or down to
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/ReplicaConfigurationRequest AWS API Documentation
    #
    class ReplicaConfigurationRequest < Struct.new(
      :replica_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the output of a `PurchaseReservedNodesOffering` operation.
    #
    # @!attribute [rw] reservation_id
    #   A customer-specified identifier to track this reservation.
    #   @return [String]
    #
    # @!attribute [rw] reserved_nodes_offering_id
    #   The ID of the reserved node offering to purchase.
    #   @return [String]
    #
    # @!attribute [rw] node_type
    #   The node type for the reserved nodes.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The time the reservation started.
    #   @return [Time]
    #
    # @!attribute [rw] duration
    #   The duration of the reservation in seconds.
    #   @return [Integer]
    #
    # @!attribute [rw] fixed_price
    #   The fixed price charged for this reserved node.
    #   @return [Float]
    #
    # @!attribute [rw] node_count
    #   The number of nodes that have been reserved.
    #   @return [Integer]
    #
    # @!attribute [rw] offering_type
    #   The offering type of this reserved node.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the reserved node.
    #   @return [String]
    #
    # @!attribute [rw] recurring_charges
    #   The recurring price charged to run this reserved node.
    #   @return [Array<Types::RecurringCharge>]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the reserved node.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/ReservedNode AWS API Documentation
    #
    class ReservedNode < Struct.new(
      :reservation_id,
      :reserved_nodes_offering_id,
      :node_type,
      :start_time,
      :duration,
      :fixed_price,
      :node_count,
      :offering_type,
      :state,
      :recurring_charges,
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # You already have a reservation with the given identifier.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/ReservedNodeAlreadyExistsFault AWS API Documentation
    #
    class ReservedNodeAlreadyExistsFault < Aws::EmptyStructure; end

    # The requested node does not exist.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/ReservedNodeNotFoundFault AWS API Documentation
    #
    class ReservedNodeNotFoundFault < Aws::EmptyStructure; end

    # The request cannot be processed because it would exceed the user's
    # node quota.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/ReservedNodeQuotaExceededFault AWS API Documentation
    #
    class ReservedNodeQuotaExceededFault < Aws::EmptyStructure; end

    # The offering type of this node.
    #
    # @!attribute [rw] reserved_nodes_offering_id
    #   The offering identifier.
    #   @return [String]
    #
    # @!attribute [rw] node_type
    #   The node type for the reserved nodes. For more information, see
    #   [Supported node types][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/memorydb/latest/devguide/nodes.reserved.html#reserved-nodes-supported
    #   @return [String]
    #
    # @!attribute [rw] duration
    #   The duration of the reservation in seconds.
    #   @return [Integer]
    #
    # @!attribute [rw] fixed_price
    #   The fixed price charged for this reserved node.
    #   @return [Float]
    #
    # @!attribute [rw] offering_type
    #   The offering type of this reserved node.
    #   @return [String]
    #
    # @!attribute [rw] recurring_charges
    #   The recurring price charged to run this reserved node.
    #   @return [Array<Types::RecurringCharge>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/ReservedNodesOffering AWS API Documentation
    #
    class ReservedNodesOffering < Struct.new(
      :reserved_nodes_offering_id,
      :node_type,
      :duration,
      :fixed_price,
      :offering_type,
      :recurring_charges)
      SENSITIVE = []
      include Aws::Structure
    end

    # The requested node offering does not exist.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/ReservedNodesOfferingNotFoundFault AWS API Documentation
    #
    class ReservedNodesOfferingNotFoundFault < Aws::EmptyStructure; end

    # @!attribute [rw] parameter_group_name
    #   The name of the parameter group to reset.
    #   @return [String]
    #
    # @!attribute [rw] all_parameters
    #   If true, all parameters in the parameter group are reset to their
    #   default values. If false, only the parameters listed by
    #   ParameterNames are reset to their default values.
    #   @return [Boolean]
    #
    # @!attribute [rw] parameter_names
    #   An array of parameter names to reset to their default values. If
    #   AllParameters is true, do not use ParameterNames. If AllParameters
    #   is false, you must specify the name of at least one parameter to
    #   reset.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/ResetParameterGroupRequest AWS API Documentation
    #
    class ResetParameterGroupRequest < Struct.new(
      :parameter_group_name,
      :all_parameters,
      :parameter_names)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] parameter_group
    #   The parameter group being reset.
    #   @return [Types::ParameterGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/ResetParameterGroupResponse AWS API Documentation
    #
    class ResetParameterGroupResponse < Struct.new(
      :parameter_group)
      SENSITIVE = []
      include Aws::Structure
    end

    # The status of the online resharding
    #
    # @!attribute [rw] slot_migration
    #   The status of the online resharding slot migration
    #   @return [Types::SlotMigration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/ReshardingStatus AWS API Documentation
    #
    class ReshardingStatus < Struct.new(
      :slot_migration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a single security group and its status.
    #
    # @!attribute [rw] security_group_id
    #   The identifier of the security group.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the security group membership. The status changes
    #   whenever a security group is modified, or when the security groups
    #   assigned to a cluster are modified.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/SecurityGroupMembership AWS API Documentation
    #
    class SecurityGroupMembership < Struct.new(
      :security_group_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/ServiceLinkedRoleNotFoundFault AWS API Documentation
    #
    class ServiceLinkedRoleNotFoundFault < Aws::EmptyStructure; end

    # An update that you can apply to your MemoryDB clusters.
    #
    # @!attribute [rw] cluster_name
    #   The name of the cluster to which the service update applies
    #   @return [String]
    #
    # @!attribute [rw] service_update_name
    #   The unique ID of the service update
    #   @return [String]
    #
    # @!attribute [rw] release_date
    #   The date when the service update is initially available
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   Provides details of the service update
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the service update
    #   @return [String]
    #
    # @!attribute [rw] type
    #   Reflects the nature of the service update
    #   @return [String]
    #
    # @!attribute [rw] nodes_updated
    #   A list of nodes updated by the service update
    #   @return [String]
    #
    # @!attribute [rw] auto_update_start_date
    #   The date at which the service update will be automatically applied
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/ServiceUpdate AWS API Documentation
    #
    class ServiceUpdate < Struct.new(
      :cluster_name,
      :service_update_name,
      :release_date,
      :description,
      :status,
      :type,
      :nodes_updated,
      :auto_update_start_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/ServiceUpdateNotFoundFault AWS API Documentation
    #
    class ServiceUpdateNotFoundFault < Aws::EmptyStructure; end

    # A request to apply a service update
    #
    # @!attribute [rw] service_update_name_to_apply
    #   The unique ID of the service update
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/ServiceUpdateRequest AWS API Documentation
    #
    class ServiceUpdateRequest < Struct.new(
      :service_update_name_to_apply)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a collection of nodes in a cluster. One node in the node
    # group is the read/write primary node. All the other nodes are
    # read-only Replica nodes.
    #
    # @!attribute [rw] name
    #   The name of the shard
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current state of this replication group - creating, available,
    #   modifying, deleting.
    #   @return [String]
    #
    # @!attribute [rw] slots
    #   The keyspace for this shard.
    #   @return [String]
    #
    # @!attribute [rw] nodes
    #   A list containing information about individual nodes within the
    #   shard
    #   @return [Array<Types::Node>]
    #
    # @!attribute [rw] number_of_nodes
    #   The number of nodes in the shard
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/Shard AWS API Documentation
    #
    class Shard < Struct.new(
      :name,
      :status,
      :slots,
      :nodes,
      :number_of_nodes)
      SENSITIVE = []
      include Aws::Structure
    end

    # Shard configuration options. Each shard configuration has the
    # following: Slots and ReplicaCount.
    #
    # @!attribute [rw] slots
    #   A string that specifies the keyspace for a particular node group.
    #   Keyspaces range from 0 to 16,383. The string is in the format
    #   startkey-endkey.
    #   @return [String]
    #
    # @!attribute [rw] replica_count
    #   The number of read replica nodes in this shard.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/ShardConfiguration AWS API Documentation
    #
    class ShardConfiguration < Struct.new(
      :slots,
      :replica_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # A request to configure the sharding properties of a cluster
    #
    # @!attribute [rw] shard_count
    #   The number of shards in the cluster
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/ShardConfigurationRequest AWS API Documentation
    #
    class ShardConfigurationRequest < Struct.new(
      :shard_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides details of a shard in a snapshot
    #
    # @!attribute [rw] name
    #   The name of the shard
    #   @return [String]
    #
    # @!attribute [rw] configuration
    #   The configuration details of the shard
    #   @return [Types::ShardConfiguration]
    #
    # @!attribute [rw] size
    #   The size of the shard's snapshot
    #   @return [String]
    #
    # @!attribute [rw] snapshot_creation_time
    #   The date and time that the shard's snapshot was created
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/ShardDetail AWS API Documentation
    #
    class ShardDetail < Struct.new(
      :name,
      :configuration,
      :size,
      :snapshot_creation_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/ShardNotFoundFault AWS API Documentation
    #
    class ShardNotFoundFault < Aws::EmptyStructure; end

    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/ShardsPerClusterQuotaExceededFault AWS API Documentation
    #
    class ShardsPerClusterQuotaExceededFault < Aws::EmptyStructure; end

    # Represents the progress of an online resharding operation.
    #
    # @!attribute [rw] progress_percentage
    #   The percentage of the slot migration that is complete.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/SlotMigration AWS API Documentation
    #
    class SlotMigration < Struct.new(
      :progress_percentage)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a copy of an entire cluster as of the time when the
    # snapshot was taken.
    #
    # @!attribute [rw] name
    #   The name of the snapshot
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the snapshot. Valid values: creating \| available \|
    #   restoring \| copying \| deleting.
    #   @return [String]
    #
    # @!attribute [rw] source
    #   Indicates whether the snapshot is from an automatic backup
    #   (automated) or was created manually (manual).
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   The ID of the KMS key used to encrypt the snapshot.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN (Amazon Resource Name) of the snapshot.
    #   @return [String]
    #
    # @!attribute [rw] cluster_configuration
    #   The configuration of the cluster from which the snapshot was taken
    #   @return [Types::ClusterConfiguration]
    #
    # @!attribute [rw] data_tiering
    #   Enables data tiering. Data tiering is only supported for clusters
    #   using the r6gd node type. This parameter must be set when using r6gd
    #   nodes. For more information, see [Data tiering][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/memorydb/latest/devguide/data-tiering.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/Snapshot AWS API Documentation
    #
    class Snapshot < Struct.new(
      :name,
      :status,
      :source,
      :kms_key_id,
      :arn,
      :cluster_configuration,
      :data_tiering)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/SnapshotAlreadyExistsFault AWS API Documentation
    #
    class SnapshotAlreadyExistsFault < Aws::EmptyStructure; end

    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/SnapshotNotFoundFault AWS API Documentation
    #
    class SnapshotNotFoundFault < Aws::EmptyStructure; end

    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/SnapshotQuotaExceededFault AWS API Documentation
    #
    class SnapshotQuotaExceededFault < Aws::EmptyStructure; end

    # Represents the subnet associated with a cluster. This parameter refers
    # to subnets defined in Amazon Virtual Private Cloud (Amazon VPC) and
    # used with MemoryDB.
    #
    # @!attribute [rw] identifier
    #   The unique identifier for the subnet.
    #   @return [String]
    #
    # @!attribute [rw] availability_zone
    #   The Availability Zone where the subnet resides
    #   @return [Types::AvailabilityZone]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/Subnet AWS API Documentation
    #
    class Subnet < Struct.new(
      :identifier,
      :availability_zone)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the output of one of the following operations:
    #
    # * CreateSubnetGroup
    #
    # * UpdateSubnetGroup
    #
    # A subnet group is a collection of subnets (typically private) that you
    # can designate for your clusters running in an Amazon Virtual Private
    # Cloud (VPC) environment.
    #
    # @!attribute [rw] name
    #   The name of the subnet group
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the subnet group
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   The Amazon Virtual Private Cloud identifier (VPC ID) of the subnet
    #   group.
    #   @return [String]
    #
    # @!attribute [rw] subnets
    #   A list of subnets associated with the subnet group.
    #   @return [Array<Types::Subnet>]
    #
    # @!attribute [rw] arn
    #   The ARN (Amazon Resource Name) of the subnet group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/SubnetGroup AWS API Documentation
    #
    class SubnetGroup < Struct.new(
      :name,
      :description,
      :vpc_id,
      :subnets,
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/SubnetGroupAlreadyExistsFault AWS API Documentation
    #
    class SubnetGroupAlreadyExistsFault < Aws::EmptyStructure; end

    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/SubnetGroupInUseFault AWS API Documentation
    #
    class SubnetGroupInUseFault < Aws::EmptyStructure; end

    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/SubnetGroupNotFoundFault AWS API Documentation
    #
    class SubnetGroupNotFoundFault < Aws::EmptyStructure; end

    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/SubnetGroupQuotaExceededFault AWS API Documentation
    #
    class SubnetGroupQuotaExceededFault < Aws::EmptyStructure; end

    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/SubnetInUse AWS API Documentation
    #
    class SubnetInUse < Aws::EmptyStructure; end

    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/SubnetNotAllowedFault AWS API Documentation
    #
    class SubnetNotAllowedFault < Aws::EmptyStructure; end

    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/SubnetQuotaExceededFault AWS API Documentation
    #
    class SubnetQuotaExceededFault < Aws::EmptyStructure; end

    # A tag that can be added to an MemoryDB resource. Tags are composed of
    # a Key/Value pair. You can use tags to categorize and track all your
    # MemoryDB resources. When you add or remove tags on clusters, those
    # actions will be replicated to all nodes in the cluster. A tag with a
    # null Value is permitted. For more information, see [Tagging your
    # MemoryDB resources][1]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/MemoryDB/latest/devguide/tagging-resources.html
    #
    # @!attribute [rw] key
    #   The key for the tag. May not be null.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The tag's value. May be null.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/TagNotFoundFault AWS API Documentation
    #
    class TagNotFoundFault < Aws::EmptyStructure; end

    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/TagQuotaPerResourceExceeded AWS API Documentation
    #
    class TagQuotaPerResourceExceeded < Aws::EmptyStructure; end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource to which the tags are
    #   to be added
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of tags to be added to this resource. A tag is a key-value
    #   pair. A tag key must be accompanied by a tag value, although null is
    #   accepted.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tag_list
    #   A list of tags as key-value pairs.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Struct.new(
      :tag_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/TestFailoverNotAvailableFault AWS API Documentation
    #
    class TestFailoverNotAvailableFault < Aws::EmptyStructure; end

    # A cluster whose updates have failed
    #
    # @!attribute [rw] cluster_name
    #   The name of the cluster
    #   @return [String]
    #
    # @!attribute [rw] error_type
    #   The error type associated with the update failure
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   The error message associated with the update failure
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/UnprocessedCluster AWS API Documentation
    #
    class UnprocessedCluster < Struct.new(
      :cluster_name,
      :error_type,
      :error_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource to which the tags are
    #   to be removed
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The list of keys of the tags that are to be removed
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tag_list
    #   The list of tags removed
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Struct.new(
      :tag_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] acl_name
    #   The name of the Access Control List
    #   @return [String]
    #
    # @!attribute [rw] user_names_to_add
    #   The list of users to add to the Access Control List
    #   @return [Array<String>]
    #
    # @!attribute [rw] user_names_to_remove
    #   The list of users to remove from the Access Control List
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/UpdateACLRequest AWS API Documentation
    #
    class UpdateACLRequest < Struct.new(
      :acl_name,
      :user_names_to_add,
      :user_names_to_remove)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] acl
    #   The updated Access Control List
    #   @return [Types::ACL]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/UpdateACLResponse AWS API Documentation
    #
    class UpdateACLResponse < Struct.new(
      :acl)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster_name
    #   The name of the cluster to update
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the cluster to update
    #   @return [String]
    #
    # @!attribute [rw] security_group_ids
    #   The SecurityGroupIds to update
    #   @return [Array<String>]
    #
    # @!attribute [rw] maintenance_window
    #   Specifies the weekly time range during which maintenance on the
    #   cluster is performed. It is specified as a range in the format
    #   ddd:hh24:mi-ddd:hh24:mi (24H Clock UTC). The minimum maintenance
    #   window is a 60 minute period.
    #
    #   Valid values for `ddd` are:
    #
    #   * `sun`
    #
    #   * `mon`
    #
    #   * `tue`
    #
    #   * `wed`
    #
    #   * `thu`
    #
    #   * `fri`
    #
    #   * `sat`
    #
    #   Example: `sun:23:00-mon:01:30`
    #   @return [String]
    #
    # @!attribute [rw] sns_topic_arn
    #   The SNS topic ARN to update
    #   @return [String]
    #
    # @!attribute [rw] sns_topic_status
    #   The status of the Amazon SNS notification topic. Notifications are
    #   sent only if the status is active.
    #   @return [String]
    #
    # @!attribute [rw] parameter_group_name
    #   The name of the parameter group to update
    #   @return [String]
    #
    # @!attribute [rw] snapshot_window
    #   The daily time range (in UTC) during which MemoryDB begins taking a
    #   daily snapshot of your cluster.
    #   @return [String]
    #
    # @!attribute [rw] snapshot_retention_limit
    #   The number of days for which MemoryDB retains automatic cluster
    #   snapshots before deleting them. For example, if you set
    #   SnapshotRetentionLimit to 5, a snapshot that was taken today is
    #   retained for 5 days before being deleted.
    #   @return [Integer]
    #
    # @!attribute [rw] node_type
    #   A valid node type that you want to scale this cluster up or down to.
    #   @return [String]
    #
    # @!attribute [rw] engine_version
    #   The upgraded version of the engine to be run on the nodes. You can
    #   upgrade to a newer engine version, but you cannot downgrade to an
    #   earlier engine version. If you want to use an earlier engine
    #   version, you must delete the existing cluster and create it anew
    #   with the earlier engine version.
    #   @return [String]
    #
    # @!attribute [rw] replica_configuration
    #   The number of replicas that will reside in each shard
    #   @return [Types::ReplicaConfigurationRequest]
    #
    # @!attribute [rw] shard_configuration
    #   The number of shards in the cluster
    #   @return [Types::ShardConfigurationRequest]
    #
    # @!attribute [rw] acl_name
    #   The Access Control List that is associated with the cluster
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/UpdateClusterRequest AWS API Documentation
    #
    class UpdateClusterRequest < Struct.new(
      :cluster_name,
      :description,
      :security_group_ids,
      :maintenance_window,
      :sns_topic_arn,
      :sns_topic_status,
      :parameter_group_name,
      :snapshot_window,
      :snapshot_retention_limit,
      :node_type,
      :engine_version,
      :replica_configuration,
      :shard_configuration,
      :acl_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cluster
    #   The updated cluster
    #   @return [Types::Cluster]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/UpdateClusterResponse AWS API Documentation
    #
    class UpdateClusterResponse < Struct.new(
      :cluster)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] parameter_group_name
    #   The name of the parameter group to update.
    #   @return [String]
    #
    # @!attribute [rw] parameter_name_values
    #   An array of parameter names and values for the parameter update. You
    #   must supply at least one parameter name and value; subsequent
    #   arguments are optional. A maximum of 20 parameters may be updated
    #   per request.
    #   @return [Array<Types::ParameterNameValue>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/UpdateParameterGroupRequest AWS API Documentation
    #
    class UpdateParameterGroupRequest < Struct.new(
      :parameter_group_name,
      :parameter_name_values)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] parameter_group
    #   The updated parameter group
    #   @return [Types::ParameterGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/UpdateParameterGroupResponse AWS API Documentation
    #
    class UpdateParameterGroupResponse < Struct.new(
      :parameter_group)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] subnet_group_name
    #   The name of the subnet group
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the subnet group
    #   @return [String]
    #
    # @!attribute [rw] subnet_ids
    #   The EC2 subnet IDs for the subnet group.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/UpdateSubnetGroupRequest AWS API Documentation
    #
    class UpdateSubnetGroupRequest < Struct.new(
      :subnet_group_name,
      :description,
      :subnet_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] subnet_group
    #   The updated subnet group
    #   @return [Types::SubnetGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/UpdateSubnetGroupResponse AWS API Documentation
    #
    class UpdateSubnetGroupResponse < Struct.new(
      :subnet_group)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user_name
    #   The name of the user
    #   @return [String]
    #
    # @!attribute [rw] authentication_mode
    #   Denotes the user's authentication properties, such as whether it
    #   requires a password to authenticate.
    #   @return [Types::AuthenticationMode]
    #
    # @!attribute [rw] access_string
    #   Access permissions string used for this user.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/UpdateUserRequest AWS API Documentation
    #
    class UpdateUserRequest < Struct.new(
      :user_name,
      :authentication_mode,
      :access_string)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user
    #   The updated user
    #   @return [Types::User]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/UpdateUserResponse AWS API Documentation
    #
    class UpdateUserResponse < Struct.new(
      :user)
      SENSITIVE = []
      include Aws::Structure
    end

    # You create users and assign them specific permissions by using an
    # access string. You assign the users to Access Control Lists aligned
    # with a specific role (administrators, human resources) that are then
    # deployed to one or more MemoryDB clusters.
    #
    # @!attribute [rw] name
    #   The name of the user
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Indicates the user status. Can be "active", "modifying" or
    #   "deleting".
    #   @return [String]
    #
    # @!attribute [rw] access_string
    #   Access permissions string used for this user.
    #   @return [String]
    #
    # @!attribute [rw] acl_names
    #   The names of the Access Control Lists to which the user belongs
    #   @return [Array<String>]
    #
    # @!attribute [rw] minimum_engine_version
    #   The minimum engine version supported for the user
    #   @return [String]
    #
    # @!attribute [rw] authentication
    #   Denotes whether the user requires a password to authenticate.
    #   @return [Types::Authentication]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the user.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/User AWS API Documentation
    #
    class User < Struct.new(
      :name,
      :status,
      :access_string,
      :acl_names,
      :minimum_engine_version,
      :authentication,
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/UserAlreadyExistsFault AWS API Documentation
    #
    class UserAlreadyExistsFault < Aws::EmptyStructure; end

    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/UserNotFoundFault AWS API Documentation
    #
    class UserNotFoundFault < Aws::EmptyStructure; end

    # @see http://docs.aws.amazon.com/goto/WebAPI/memorydb-2021-01-01/UserQuotaExceededFault AWS API Documentation
    #
    class UserQuotaExceededFault < Aws::EmptyStructure; end

  end
end
