# frozen_string_literal: true

# This is generated code!

module Aws::MemoryDB
  # This module contains the types returned by client operations.
  module Types

    # <p>An Access Control List. You can authenticate users with Access Contol Lists.
    #          
    #          ACLs enable you to control cluster access by grouping users. These Access control lists are designed as a way to organize access to clusters.</p>
    # @!attribute name
    #   <p>The name of the Access Control List</p>
    #   @return [String]
    # @!attribute status
    #   <p>Indicates ACL status. Can be "creating", "active", "modifying", "deleting".</p>
    #   @return [String]
    # @!attribute user_names
    #   <p>The list of user names that belong to the ACL.</p>
    #   @return [Array<String>]
    # @!attribute minimum_engine_version
    #   <p>The minimum engine version supported for the ACL</p>
    #   @return [String]
    # @!attribute pending_changes
    #   <p>A list of updates being applied to the ACL.</p>
    #   @return [Types::ACLPendingChanges]
    # @!attribute clusters
    #   <p>A list of clusters associated with the ACL.</p>
    #   @return [Array<String>]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the ACL</p>
    #   @return [String]
    class ACL < Struct.new(
      :name,
      :status,
      :user_names,
      :minimum_engine_version,
      :pending_changes,
      :clusters,
      :arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute message
    #   @return [String]
    class ACLAlreadyExistsFault < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute message
    #   @return [String]
    class ACLNotFoundFault < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Returns the updates being applied to the ACL.</p>
    # @!attribute user_names_to_remove
    #   <p>A list of user names being removed from the ACL</p>
    #   @return [Array<String>]
    # @!attribute user_names_to_add
    #   <p>A list of users being added to the ACL</p>
    #   @return [Array<String>]
    class ACLPendingChanges < Struct.new(
      :user_names_to_remove,
      :user_names_to_add,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute message
    #   @return [String]
    class ACLQuotaExceededFault < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The status of the ACL update</p>
    # @!attribute acl_to_apply
    #   <p>A list of ACLs pending to be applied.</p>
    #   @return [String]
    class ACLsUpdateStatus < Struct.new(
      :acl_to_apply,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute message
    #   @return [String]
    class APICallRateForCustomerExceededFault < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Denotes the user's authentication properties, such as whether it requires a password to authenticate. Used in output responses.</p>
    # @!attribute type
    #   <p>Indicates whether the user requires a password to authenticate.</p>
    #   @return [String]
    # @!attribute password_count
    #   <p>The number of passwords belonging to the user. The maximum is two.</p>
    #   @return [Integer]
    class Authentication < Struct.new(
      :type,
      :password_count,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Denotes the user's authentication properties, such as whether it requires a password to authenticate. Used in output responses.</p>
    # @!attribute type
    #   <p>Indicates whether the user requires a password to authenticate. All newly-created users require a password.</p>
    #   @return [String]
    # @!attribute passwords
    #   <p>The password(s) used for authentication</p>
    #   @return [Array<String>]
    class AuthenticationMode < Struct.new(
      :type,
      :passwords,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Indicates if the cluster has a Multi-AZ configuration (multiaz) or not (singleaz).</p>
    # @!attribute name
    #   <p>The name of the Availability Zone.</p>
    #   @return [String]
    class AvailabilityZone < Struct.new(
      :name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster_names
    #   <p>The cluster names to apply the updates.</p>
    #   @return [Array<String>]
    # @!attribute service_update
    #   <p>The unique ID of the service update</p>
    #   @return [Types::ServiceUpdateRequest]
    class BatchUpdateClusterRequest < Struct.new(
      :cluster_names,
      :service_update,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute processed_clusters
    #   <p>The list of clusters that have been updated.</p>
    #   @return [Array<Types::Cluster>]
    # @!attribute unprocessed_clusters
    #   <p>The list of clusters where updates have not been applied.</p>
    #   @return [Array<Types::UnprocessedCluster>]
    class BatchUpdateClusterResponse < Struct.new(
      :processed_clusters,
      :unprocessed_clusters,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains all of the attributes of a specific cluster.</p>
    # @!attribute name
    #   <p>The user-supplied name of the cluster. This identifier is a unique key that identifies a cluster.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the cluster</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the cluster. For example, Available, Updating, Creating.</p>
    #   @return [String]
    # @!attribute pending_updates
    #   <p>A group of settings that are currently being applied.</p>
    #   @return [Types::ClusterPendingUpdates]
    # @!attribute multi_region_cluster_name
    #   <p>The name of the multi-Region cluster that this cluster belongs to.</p>
    #   @return [String]
    # @!attribute number_of_shards
    #   <p>The number of shards in the cluster</p>
    #   @return [Integer]
    # @!attribute shards
    #   <p>A list of shards that are members of the cluster.</p>
    #   @return [Array<Types::Shard>]
    # @!attribute availability_mode
    #   <p>Indicates if the cluster has a Multi-AZ configuration (multiaz) or not (singleaz).</p>
    #   @return [String]
    # @!attribute cluster_endpoint
    #   <p>The cluster's configuration endpoint</p>
    #   @return [Types::Endpoint]
    # @!attribute node_type
    #   <p>The cluster's node type</p>
    #   @return [String]
    # @!attribute engine
    #   <p>The name of the engine used by the cluster.</p>
    #   @return [String]
    # @!attribute engine_version
    #   <p>The Redis OSS engine version used by the cluster</p>
    #   @return [String]
    # @!attribute engine_patch_version
    #   <p>The Redis OSS engine patch version used by the cluster</p>
    #   @return [String]
    # @!attribute parameter_group_name
    #   <p>The name of the parameter group used by the cluster</p>
    #   @return [String]
    # @!attribute parameter_group_status
    #   <p>The status of the parameter group used by the cluster, for example 'active' or 'applying'.</p>
    #   @return [String]
    # @!attribute security_groups
    #   <p>A list of security groups used by the cluster</p>
    #   @return [Array<Types::SecurityGroupMembership>]
    # @!attribute subnet_group_name
    #   <p>The name of the subnet group used by the cluster</p>
    #   @return [String]
    # @!attribute tls_enabled
    #   <p>A flag to indicate if In-transit encryption is enabled</p>
    #   @return [Boolean]
    # @!attribute kms_key_id
    #   <p>The ID of the KMS key used to encrypt the cluster</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the cluster.</p>
    #   @return [String]
    # @!attribute sns_topic_arn
    #   <p>The Amazon Resource Name (ARN) of the SNS notification topic</p>
    #   @return [String]
    # @!attribute sns_topic_status
    #   <p>The SNS topic must be in Active status to receive notifications</p>
    #   @return [String]
    # @!attribute snapshot_retention_limit
    #   <p>The number of days for which MemoryDB retains automatic snapshots before deleting them. For example, if you set SnapshotRetentionLimit to 5, a snapshot that was taken today is retained for 5 days before being deleted.</p>
    #   @return [Integer]
    # @!attribute maintenance_window
    #   <p>Specifies the weekly time range during which maintenance on the cluster is performed. It is specified as a range in the format ddd:hh24:mi-ddd:hh24:mi (24H Clock UTC). The minimum maintenance window is a 60 minute period. </p>
    #   @return [String]
    # @!attribute snapshot_window
    #   <p>The daily time range (in UTC) during which MemoryDB begins taking a daily snapshot of your shard.
    #            
    #            Example: 05:00-09:00
    #            
    #            If you do not specify this parameter, MemoryDB automatically chooses an appropriate time range.</p>
    #   @return [String]
    # @!attribute acl_name
    #   <p>The name of the Access Control List associated with this cluster.</p>
    #   @return [String]
    # @!attribute auto_minor_version_upgrade
    #   <p>When set to true, the cluster will automatically receive minor engine version upgrades after launch.</p>
    #   @return [Boolean]
    # @!attribute data_tiering
    #   <p>Enables data tiering. Data tiering is only supported for clusters using the r6gd node type. 
    #               This parameter must be set when using r6gd nodes. For more information, see <a href="https://docs.aws.amazon.com/memorydb/latest/devguide/data-tiering.html">Data tiering</a>.</p>
    #   @return [String]
    # @!attribute network_type
    #   <p>The IP address type for the cluster. Returns 'ipv4' for IPv4 only, 'ipv6' for IPv6 only, or 'dual-stack' if the cluster supports both IPv4 and IPv6 addressing.</p>
    #   @return [String]
    # @!attribute ip_discovery
    #   <p>The mechanism that the cluster uses to discover IP addresses. Returns 'ipv4' when DNS endpoints resolve to IPv4 addresses, or 'ipv6' when DNS endpoints resolve to IPv6 addresses.</p>
    #   @return [String]
    class Cluster < Struct.new(
      :name,
      :description,
      :status,
      :pending_updates,
      :multi_region_cluster_name,
      :number_of_shards,
      :shards,
      :availability_mode,
      :cluster_endpoint,
      :node_type,
      :engine,
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
      :data_tiering,
      :network_type,
      :ip_discovery,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute message
    #   @return [String]
    class ClusterAlreadyExistsFault < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A list of cluster configuration options. </p>
    # @!attribute name
    #   <p>The name of the cluster</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the cluster configuration</p>
    #   @return [String]
    # @!attribute node_type
    #   <p>The node type used for the cluster</p>
    #   @return [String]
    # @!attribute engine
    #   <p>The name of the engine used by the cluster configuration.</p>
    #   @return [String]
    # @!attribute engine_version
    #   <p>The Redis OSS engine version used by the cluster</p>
    #   @return [String]
    # @!attribute maintenance_window
    #   <p>The specified maintenance window for the cluster</p>
    #   @return [String]
    # @!attribute topic_arn
    #   <p>The Amazon Resource Name (ARN) of the SNS notification topic for the cluster</p>
    #   @return [String]
    # @!attribute port
    #   <p>The port used by the cluster</p>
    #   @return [Integer]
    # @!attribute parameter_group_name
    #   <p>The name of parameter group used by the cluster</p>
    #   @return [String]
    # @!attribute subnet_group_name
    #   <p>The name of the subnet group used by the cluster</p>
    #   @return [String]
    # @!attribute vpc_id
    #   <p>The ID of the VPC the cluster belongs to</p>
    #   @return [String]
    # @!attribute snapshot_retention_limit
    #   <p>The snapshot retention limit set by the cluster</p>
    #   @return [Integer]
    # @!attribute snapshot_window
    #   <p>The snapshot window set by the cluster</p>
    #   @return [String]
    # @!attribute num_shards
    #   <p>The number of shards in the cluster</p>
    #   @return [Integer]
    # @!attribute shards
    #   <p>The list of shards in the cluster</p>
    #   @return [Array<Types::ShardDetail>]
    # @!attribute multi_region_parameter_group_name
    #   <p>The name of the multi-Region parameter group associated with the cluster configuration.</p>
    #   @return [String]
    # @!attribute multi_region_cluster_name
    #   <p>The name for the multi-Region cluster associated with the cluster configuration.</p>
    #   @return [String]
    class ClusterConfiguration < Struct.new(
      :name,
      :description,
      :node_type,
      :engine,
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
      :shards,
      :multi_region_parameter_group_name,
      :multi_region_cluster_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute message
    #   @return [String]
    class ClusterNotFoundFault < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A list of updates being applied to the cluster</p>
    # @!attribute resharding
    #   <p>The status of an online resharding operation.</p>
    #   @return [Types::ReshardingStatus]
    # @!attribute ac_ls
    #   <p>A list of ACLs associated with the cluster that are being updated</p>
    #   @return [Types::ACLsUpdateStatus]
    # @!attribute service_updates
    #   <p>A list of service updates being applied to the cluster</p>
    #   @return [Array<Types::PendingModifiedServiceUpdate>]
    class ClusterPendingUpdates < Struct.new(
      :resharding,
      :ac_ls,
      :service_updates,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute message
    #   @return [String]
    class ClusterQuotaForCustomerExceededFault < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute source_snapshot_name
    #   <p>The name of an existing snapshot from which to make a copy.</p>
    #   @return [String]
    # @!attribute target_snapshot_name
    #   <p>A name for the snapshot copy. MemoryDB does not permit overwriting a snapshot, therefore this name must be unique within its context - MemoryDB or an Amazon S3 bucket if exporting.</p>
    #   @return [String]
    # @!attribute target_bucket
    #   <p>The Amazon S3 bucket to which the snapshot is exported. This parameter is used only when exporting a snapshot for external access.
    #          
    #          When using this parameter to export a snapshot, be sure MemoryDB has the needed permissions to this S3 bucket. For more information, see 
    #          
    #          <a href="https://docs.aws.amazon.com/MemoryDB/latest/devguide/snapshots-exporting.html">Step 2: Grant MemoryDB Access to Your Amazon S3 Bucket</a>. 
    #          
    #        </p>
    #   @return [String]
    # @!attribute kms_key_id
    #   <p>The ID of the KMS key used to encrypt the target snapshot.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of tags to be added to this resource. A tag is a key-value pair. A tag key must be accompanied by a tag value, although null is accepted.</p>
    #   @return [Array<Types::Tag>]
    class CopySnapshotRequest < Struct.new(
      :source_snapshot_name,
      :target_snapshot_name,
      :target_bucket,
      :kms_key_id,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute snapshot
    #   <p>Represents a copy of an entire cluster as of the time when the snapshot was taken.</p>
    #   @return [Types::Snapshot]
    class CopySnapshotResponse < Struct.new(
      :snapshot,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute acl_name
    #   <p>The name of the Access Control List.</p>
    #   @return [String]
    # @!attribute user_names
    #   <p>The list of users that belong to the Access Control List.</p>
    #   @return [Array<String>]
    # @!attribute tags
    #   <p>A list of tags to be added to this resource. A tag is a key-value pair. A tag key must be accompanied by a tag value, although null is accepted.</p>
    #   @return [Array<Types::Tag>]
    class CreateACLRequest < Struct.new(
      :acl_name,
      :user_names,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute acl
    #   <p>The newly-created Access Control List.</p>
    #   @return [Types::ACL]
    class CreateACLResponse < Struct.new(
      :acl,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster_name
    #   <p>The name of the cluster. This value must be unique as it also serves as the cluster identifier.</p>
    #   @return [String]
    # @!attribute node_type
    #   <p>The compute and memory capacity of the nodes in the cluster.</p>
    #   @return [String]
    # @!attribute multi_region_cluster_name
    #   <p>The name of the multi-Region cluster to be created.</p>
    #   @return [String]
    # @!attribute parameter_group_name
    #   <p>The name of the parameter group associated with the cluster.</p>
    #   @return [String]
    # @!attribute description
    #   <p>An optional description of the cluster.</p>
    #   @return [String]
    # @!attribute num_shards
    #   <p>The number of shards the cluster will contain. The default value is 1. </p>
    #   @return [Integer]
    # @!attribute num_replicas_per_shard
    #   <p>The number of replicas to apply to each shard. The default value is 1. The maximum is 5. </p>
    #   @return [Integer]
    # @!attribute subnet_group_name
    #   <p>The name of the subnet group to be used for the cluster.</p>
    #   @return [String]
    # @!attribute security_group_ids
    #   <p>A list of security group names to associate with this cluster.</p>
    #   @return [Array<String>]
    # @!attribute maintenance_window
    #   <p>Specifies the weekly time range during which maintenance
    #            on the cluster is performed. It is specified as a range in
    #            the format ddd:hh24:mi-ddd:hh24:mi (24H Clock UTC). The minimum
    #            maintenance window is a 60 minute period.</p>
    #            <p>Valid values for <code>ddd</code> are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>sun</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>mon</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>tue</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>wed</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>thu</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>fri</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>sat</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>Example: <code>sun:23:00-mon:01:30</code>
    #            </p>
    #   @return [String]
    # @!attribute port
    #   <p>The port number on which each of the nodes accepts connections.</p>
    #   @return [Integer]
    # @!attribute sns_topic_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon Simple Notification Service (SNS) topic to which notifications are sent.</p>
    #   @return [String]
    # @!attribute tls_enabled
    #   <p>A flag to enable in-transit encryption on the cluster.</p>
    #   @return [Boolean]
    # @!attribute kms_key_id
    #   <p>The ID of the KMS key used to encrypt the cluster.</p>
    #   @return [String]
    # @!attribute snapshot_arns
    #   <p>A list of Amazon Resource Names (ARN) that uniquely identify the RDB snapshot files stored in Amazon S3. The snapshot files are used to populate the new cluster. The Amazon S3 object name in the ARN cannot contain any commas.</p>
    #   @return [Array<String>]
    # @!attribute snapshot_name
    #   <p>The name of a snapshot from which to restore data into the new cluster. The snapshot status changes to restoring while the new cluster is being created.</p>
    #   @return [String]
    # @!attribute snapshot_retention_limit
    #   <p>The number of days for which MemoryDB retains automatic snapshots before deleting them. For example, if you set SnapshotRetentionLimit to 5, a snapshot that was taken today is retained for 5 days before being deleted.</p>
    #   @return [Integer]
    # @!attribute tags
    #   <p>A list of tags to be added to this resource. Tags are comma-separated key,value pairs (e.g. Key=myKey, Value=myKeyValue. You can include multiple tags as shown following: Key=myKey, Value=myKeyValue Key=mySecondKey, Value=mySecondKeyValue.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute snapshot_window
    #   <p>The daily time range (in UTC) during which MemoryDB begins taking a daily snapshot of your shard.</p>
    #            <p>    Example: 05:00-09:00</p>
    #            <p>    If you do not specify this parameter, MemoryDB automatically chooses an appropriate time range.</p>
    #   @return [String]
    # @!attribute acl_name
    #   <p>The name of the Access Control List to associate with the cluster.</p>
    #   @return [String]
    # @!attribute engine
    #   <p>The name of the engine to be used for the cluster.</p>
    #   @return [String]
    # @!attribute engine_version
    #   <p>The version number of the Redis OSS engine to be used for the cluster.</p>
    #   @return [String]
    # @!attribute auto_minor_version_upgrade
    #   <p>When set to true, the cluster will automatically receive minor engine version upgrades after launch.</p>
    #   @return [Boolean]
    # @!attribute data_tiering
    #   <p>Enables data tiering. Data tiering is only supported for clusters using the r6gd node type. 
    #               This parameter must be set when using r6gd nodes. For more information, see <a href="https://docs.aws.amazon.com/memorydb/latest/devguide/data-tiering.html">Data tiering</a>.</p>
    #   @return [Boolean]
    # @!attribute network_type
    #   <p>Specifies the IP address type for the cluster. Valid values are 'ipv4', 'ipv6', or 'dual_stack'. When set to 'ipv4', the cluster will only be accessible via IPv4 addresses. When set to 'ipv6', the cluster will only be accessible via IPv6 addresses. When set to 'dual_stack', the cluster will be accessible via both IPv4 and IPv6 addresses. If not specified, the default is 'ipv4'.</p>
    #   @return [String]
    # @!attribute ip_discovery
    #   <p>The mechanism for discovering IP addresses for the cluster discovery protocol. Valid values are 'ipv4' or 'ipv6'. When set to 'ipv4', cluster discovery functions such as cluster slots, cluster shards, and cluster nodes return IPv4 addresses for cluster nodes. When set to 'ipv6', the cluster discovery functions return IPv6 addresses for cluster nodes. The value must be compatible with the NetworkType parameter. If not specified, the default is 'ipv4'.</p>
    #   @return [String]
    class CreateClusterRequest < Struct.new(
      :cluster_name,
      :node_type,
      :multi_region_cluster_name,
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
      :engine,
      :engine_version,
      :auto_minor_version_upgrade,
      :data_tiering,
      :network_type,
      :ip_discovery,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster
    #   <p>The newly-created cluster.</p>
    #   @return [Types::Cluster]
    class CreateClusterResponse < Struct.new(
      :cluster,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute multi_region_cluster_name_suffix
    #   <p>A suffix to be added to the Multi-Region cluster name. Amazon MemoryDB automatically applies a prefix to the Multi-Region cluster Name when it is created. Each Amazon Region has its own prefix. For instance, a Multi-Region cluster Name created in the US-West-1 region will begin with "virxk", along with the suffix name you provide. The suffix guarantees uniqueness of the Multi-Region cluster name across multiple regions.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description for the multi-Region cluster.</p>
    #   @return [String]
    # @!attribute engine
    #   <p>The name of the engine to be used for the multi-Region cluster.</p>
    #   @return [String]
    # @!attribute engine_version
    #   <p>The version of the engine to be used for the multi-Region cluster.</p>
    #   @return [String]
    # @!attribute node_type
    #   <p>The node type to be used for the multi-Region cluster.</p>
    #   @return [String]
    # @!attribute multi_region_parameter_group_name
    #   <p>The name of the multi-Region parameter group to be associated with the cluster.</p>
    #   @return [String]
    # @!attribute num_shards
    #   <p>The number of shards for the multi-Region cluster.</p>
    #   @return [Integer]
    # @!attribute tls_enabled
    #   <p>Whether to enable TLS encryption for the multi-Region cluster.</p>
    #   @return [Boolean]
    # @!attribute tags
    #   <p>A list of tags to be applied to the multi-Region cluster.</p>
    #   @return [Array<Types::Tag>]
    class CreateMultiRegionClusterRequest < Struct.new(
      :multi_region_cluster_name_suffix,
      :description,
      :engine,
      :engine_version,
      :node_type,
      :multi_region_parameter_group_name,
      :num_shards,
      :tls_enabled,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute multi_region_cluster
    #   <p>Details about the newly created multi-Region cluster.</p>
    #   @return [Types::MultiRegionCluster]
    class CreateMultiRegionClusterResponse < Struct.new(
      :multi_region_cluster,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute parameter_group_name
    #   <p>The name of the parameter group.</p>
    #   @return [String]
    # @!attribute family
    #   <p>The name of the parameter group family that the parameter group can be used with.</p>
    #   @return [String]
    # @!attribute description
    #   <p>An optional description of the parameter group.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of tags to be added to this resource. A tag is a key-value pair. A tag key must be accompanied by a tag value, although null is accepted.</p>
    #   @return [Array<Types::Tag>]
    class CreateParameterGroupRequest < Struct.new(
      :parameter_group_name,
      :family,
      :description,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute parameter_group
    #   <p>The newly-created parameter group.</p>
    #   @return [Types::ParameterGroup]
    class CreateParameterGroupResponse < Struct.new(
      :parameter_group,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster_name
    #   <p>The snapshot is created from this cluster.</p>
    #   @return [String]
    # @!attribute snapshot_name
    #   <p>A name for the snapshot being created.</p>
    #   @return [String]
    # @!attribute kms_key_id
    #   <p>The ID of the KMS key used to encrypt the snapshot.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of tags to be added to this resource. A tag is a key-value pair. A tag key must be accompanied by a tag value, although null is accepted.</p>
    #   @return [Array<Types::Tag>]
    class CreateSnapshotRequest < Struct.new(
      :cluster_name,
      :snapshot_name,
      :kms_key_id,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute snapshot
    #   <p>The newly-created snapshot.</p>
    #   @return [Types::Snapshot]
    class CreateSnapshotResponse < Struct.new(
      :snapshot,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute subnet_group_name
    #   <p>The name of the subnet group.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description for the subnet group.</p>
    #   @return [String]
    # @!attribute subnet_ids
    #   <p>A list of VPC subnet IDs for the subnet group.</p>
    #   @return [Array<String>]
    # @!attribute tags
    #   <p>A list of tags to be added to this resource. A tag is a key-value pair. A tag key must be accompanied by a tag value, although null is accepted.</p>
    #   @return [Array<Types::Tag>]
    class CreateSubnetGroupRequest < Struct.new(
      :subnet_group_name,
      :description,
      :subnet_ids,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute subnet_group
    #   <p>The newly-created subnet group.</p>
    #   @return [Types::SubnetGroup]
    class CreateSubnetGroupResponse < Struct.new(
      :subnet_group,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute user_name
    #   <p>The name of the user. This value must be unique as it also serves as the user identifier.</p>
    #   @return [String]
    # @!attribute authentication_mode
    #   <p>Denotes the user's authentication properties, such as whether it requires a password to authenticate.</p>
    #   @return [Types::AuthenticationMode]
    # @!attribute access_string
    #   <p>Access permissions string used for this user.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of tags to be added to this resource. A tag is a key-value pair. A tag key must be accompanied by a tag value, although null is accepted.</p>
    #   @return [Array<Types::Tag>]
    class CreateUserRequest < Struct.new(
      :user_name,
      :authentication_mode,
      :access_string,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute user
    #   <p>The newly-created user.</p>
    #   @return [Types::User]
    class CreateUserResponse < Struct.new(
      :user,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute message
    #   @return [String]
    class DefaultUserRequired < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute acl_name
    #   <p>The name of the Access Control List to delete.</p>
    #   @return [String]
    class DeleteACLRequest < Struct.new(
      :acl_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute acl
    #   <p>The Access Control List object that has been deleted.</p>
    #   @return [Types::ACL]
    class DeleteACLResponse < Struct.new(
      :acl,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster_name
    #   <p>The name of the cluster to be deleted</p>
    #   @return [String]
    # @!attribute multi_region_cluster_name
    #   <p>The name of the multi-Region cluster to be deleted.</p>
    #   @return [String]
    # @!attribute final_snapshot_name
    #   <p>The user-supplied name of a final cluster snapshot. This is the unique name that identifies the snapshot. MemoryDB creates the snapshot, and then deletes the cluster immediately afterward.</p>
    #   @return [String]
    class DeleteClusterRequest < Struct.new(
      :cluster_name,
      :multi_region_cluster_name,
      :final_snapshot_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster
    #   <p>The cluster object that has been deleted.</p>
    #   @return [Types::Cluster]
    class DeleteClusterResponse < Struct.new(
      :cluster,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute multi_region_cluster_name
    #   <p>The name of the multi-Region cluster to be deleted.</p>
    #   @return [String]
    class DeleteMultiRegionClusterRequest < Struct.new(
      :multi_region_cluster_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute multi_region_cluster
    #   <p>Details about the deleted multi-Region cluster.</p>
    #   @return [Types::MultiRegionCluster]
    class DeleteMultiRegionClusterResponse < Struct.new(
      :multi_region_cluster,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute parameter_group_name
    #   <p>The name of the parameter group to delete.</p>
    #   @return [String]
    class DeleteParameterGroupRequest < Struct.new(
      :parameter_group_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute parameter_group
    #   <p>The parameter group that has been deleted.</p>
    #   @return [Types::ParameterGroup]
    class DeleteParameterGroupResponse < Struct.new(
      :parameter_group,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute snapshot_name
    #   <p>The name of the snapshot to delete.</p>
    #   @return [String]
    class DeleteSnapshotRequest < Struct.new(
      :snapshot_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute snapshot
    #   <p>The snapshot object that has been deleted.</p>
    #   @return [Types::Snapshot]
    class DeleteSnapshotResponse < Struct.new(
      :snapshot,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute subnet_group_name
    #   <p>The name of the subnet group to delete.</p>
    #   @return [String]
    class DeleteSubnetGroupRequest < Struct.new(
      :subnet_group_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute subnet_group
    #   <p>The subnet group object that has been deleted.</p>
    #   @return [Types::SubnetGroup]
    class DeleteSubnetGroupResponse < Struct.new(
      :subnet_group,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute user_name
    #   <p>The name of the user to delete</p>
    #   @return [String]
    class DeleteUserRequest < Struct.new(
      :user_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute user
    #   <p>The user object that has been deleted.</p>
    #   @return [Types::User]
    class DeleteUserResponse < Struct.new(
      :user,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute acl_name
    #   <p>The name of the ACL.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of records to include in the response. If more records exist than the specified MaxResults value, a token is included in the response so that the remaining results can be retrieved.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>An optional argument to pass in case the total number of records exceeds the value of MaxResults. If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. </p>
    #   @return [String]
    class DescribeACLsRequest < Struct.new(
      :acl_name,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute ac_ls
    #   <p>The list of ACLs.</p>
    #   @return [Array<Types::ACL>]
    # @!attribute next_token
    #   <p>If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. </p>
    #   @return [String]
    class DescribeACLsResponse < Struct.new(
      :ac_ls,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster_name
    #   <p>The name of the cluster.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of records to include in the response. If more records exist than the specified MaxResults value, a token is included in the response so that the remaining results can be retrieved.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>An optional argument to pass in case the total number of records exceeds the value of MaxResults. If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. </p>
    #   @return [String]
    # @!attribute show_shard_details
    #   <p>An optional flag that can be included in the request to retrieve information about the individual shard(s).</p>
    #   @return [Boolean]
    class DescribeClustersRequest < Struct.new(
      :cluster_name,
      :max_results,
      :next_token,
      :show_shard_details,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>An optional argument to pass in case the total number of records exceeds the value of MaxResults. If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. </p>
    #   @return [String]
    # @!attribute clusters
    #   <p>A list of clusters</p>
    #   @return [Array<Types::Cluster>]
    class DescribeClustersResponse < Struct.new(
      :next_token,
      :clusters,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute engine
    #   <p>The name of the engine for which to list available versions.</p>
    #   @return [String]
    # @!attribute engine_version
    #   <p>The Redis OSS engine version</p>
    #   @return [String]
    # @!attribute parameter_group_family
    #   <p>The name of a specific parameter group family to return details for.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of records to include in the response. If more records exist than the specified MaxResults value, a token is included in the response so that the remaining results can be retrieved.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>An optional argument to pass in case the total number of records exceeds the value of MaxResults. If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. </p>
    #   @return [String]
    # @!attribute default_only
    #   <p>If true, specifies that only the default version of the specified engine or engine and major version combination is to be returned.</p>
    #   @return [Boolean]
    class DescribeEngineVersionsRequest < Struct.new(
      :engine,
      :engine_version,
      :parameter_group_family,
      :max_results,
      :next_token,
      :default_only,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>An optional argument to pass in case the total number of records exceeds the value of MaxResults. If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. </p>
    #   @return [String]
    # @!attribute engine_versions
    #   <p>A list of engine version details. Each element in the list contains detailed information about one engine version.</p>
    #   @return [Array<Types::EngineVersionInfo>]
    class DescribeEngineVersionsResponse < Struct.new(
      :next_token,
      :engine_versions,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute source_name
    #   <p>The identifier of the event source for which events are returned. If not specified, all sources are included in the response.</p>
    #   @return [String]
    # @!attribute source_type
    #   <p>The event source to retrieve events for. If no value is specified, all events are returned.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>The beginning of the time interval to retrieve events for, specified in ISO 8601 format.
    #            
    #            Example: 2017-03-30T07:03:49.555Z</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The end of the time interval for which to retrieve events, specified in ISO 8601 format.
    #            
    #            Example: 2017-03-30T07:03:49.555Z</p>
    #   @return [Time]
    # @!attribute duration
    #   <p>The number of minutes worth of events to retrieve.</p>
    #   @return [Integer]
    # @!attribute max_results
    #   <p>The maximum number of records to include in the response. If more records exist than the specified MaxResults value, a token is included in the response so that the remaining results can be retrieved.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>An optional argument to pass in case the total number of records exceeds the value of MaxResults. If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. </p>
    #   @return [String]
    class DescribeEventsRequest < Struct.new(
      :source_name,
      :source_type,
      :start_time,
      :end_time,
      :duration,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>An optional argument to pass in case the total number of records exceeds the value of MaxResults. If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. </p>
    #   @return [String]
    # @!attribute events
    #   <p>A list of events. Each element in the list contains detailed information about one event.</p>
    #   @return [Array<Types::Event>]
    class DescribeEventsResponse < Struct.new(
      :next_token,
      :events,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute multi_region_cluster_name
    #   <p>The name of a specific multi-Region cluster to describe.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token to specify where to start paginating.</p>
    #   @return [String]
    # @!attribute show_cluster_details
    #   <p>Details about the multi-Region cluster.</p>
    #   @return [Boolean]
    class DescribeMultiRegionClustersRequest < Struct.new(
      :multi_region_cluster_name,
      :max_results,
      :next_token,
      :show_cluster_details,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A token to use to retrieve the next page of results.</p>
    #   @return [String]
    # @!attribute multi_region_clusters
    #   <p>A list of multi-Region clusters.</p>
    #   @return [Array<Types::MultiRegionCluster>]
    class DescribeMultiRegionClustersResponse < Struct.new(
      :next_token,
      :multi_region_clusters,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute parameter_group_name
    #   <p>The name of a specific  parameter group to return details for.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of records to include in the response. If more records exist than the specified MaxResults value, a token is included in the response so that the remaining results can be retrieved.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>An optional argument to pass in case the total number of records exceeds the value of MaxResults. If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. </p>
    #   @return [String]
    class DescribeParameterGroupsRequest < Struct.new(
      :parameter_group_name,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>An optional argument to pass in case the total number of records exceeds the value of MaxResults. If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. </p>
    #   @return [String]
    # @!attribute parameter_groups
    #   <p>A list of parameter groups. Each element in the list contains detailed information about one parameter group.</p>
    #   @return [Array<Types::ParameterGroup>]
    class DescribeParameterGroupsResponse < Struct.new(
      :next_token,
      :parameter_groups,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute parameter_group_name
    #   <p>he name of a specific  parameter group to return details for.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of records to include in the response. If more records exist than the specified MaxResults value, a token is included in the response so that the remaining results can be retrieved.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>An optional argument to pass in case the total number of records exceeds the value of MaxResults. If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. </p>
    #   @return [String]
    class DescribeParametersRequest < Struct.new(
      :parameter_group_name,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>An optional argument to pass in case the total number of records exceeds the value of MaxResults. If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. </p>
    #   @return [String]
    # @!attribute parameters
    #   <p>A list of parameters specific to a particular parameter group. Each element in the list contains detailed information about one parameter.</p>
    #   @return [Array<Types::Parameter>]
    class DescribeParametersResponse < Struct.new(
      :next_token,
      :parameters,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute reserved_nodes_offering_id
    #   <p>The offering identifier filter value. Use this parameter to show only the available offering that matches the specified reservation identifier.</p>
    #   @return [String]
    # @!attribute node_type
    #   <p>The node type for the reserved nodes. For more information, see <a href="https://docs.aws.amazon.com/memorydb/latest/devguide/nodes.reserved.html#reserved-nodes-supported">Supported node types</a>.</p>
    #   @return [String]
    # @!attribute duration
    #   <p>Duration filter value, specified in years or seconds. Use this parameter to show only reservations for a given duration.</p>
    #   @return [String]
    # @!attribute offering_type
    #   <p>The offering type filter value. Use this parameter to show only the available offerings matching the specified offering type. 
    #            Valid values: "All Upfront"|"Partial Upfront"| "No Upfront"</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of records to include in the response. If more records exist than the specified MaxRecords value, a marker is included in the response so that the remaining results can be retrieved.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>An optional marker returned from a prior request. Use this marker for pagination of results from this operation. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by MaxRecords.</p>
    #   @return [String]
    class DescribeReservedNodesOfferingsRequest < Struct.new(
      :reserved_nodes_offering_id,
      :node_type,
      :duration,
      :offering_type,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>An optional marker returned from a prior request. Use this marker for pagination of results from this operation. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by MaxRecords.</p>
    #   @return [String]
    # @!attribute reserved_nodes_offerings
    #   <p>Lists available reserved node offerings.</p>
    #   @return [Array<Types::ReservedNodesOffering>]
    class DescribeReservedNodesOfferingsResponse < Struct.new(
      :next_token,
      :reserved_nodes_offerings,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute reservation_id
    #   <p>The reserved node identifier filter value. Use this parameter to show only the reservation that matches the specified reservation ID.</p>
    #   @return [String]
    # @!attribute reserved_nodes_offering_id
    #   <p>The offering identifier filter value. Use this parameter to show only purchased reservations matching the specified offering identifier.</p>
    #   @return [String]
    # @!attribute node_type
    #   <p>The node type filter value. Use this parameter to show only those reservations matching the specified  node type. For more information, see <a href="https://docs.aws.amazon.com/memorydb/latest/devguide/nodes.reserved.html#reserved-nodes-supported">Supported node types</a>.</p>
    #   @return [String]
    # @!attribute duration
    #   <p>The duration filter value, specified in years or seconds. Use this parameter to show only reservations for this duration.</p>
    #   @return [String]
    # @!attribute offering_type
    #   <p>The offering type filter value. Use this parameter to show only the available offerings matching the specified offering type. 
    #            Valid values: "All Upfront"|"Partial Upfront"| "No Upfront"</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of records to include in the response. If more records exist than the specified MaxRecords value, a marker is included in the response so that the remaining results can be retrieved.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>An optional marker returned from a prior request. Use this marker for pagination of results from this operation. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by MaxRecords.</p>
    #   @return [String]
    class DescribeReservedNodesRequest < Struct.new(
      :reservation_id,
      :reserved_nodes_offering_id,
      :node_type,
      :duration,
      :offering_type,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>An optional marker returned from a prior request. Use this marker for pagination of results from this operation. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by MaxRecords.</p>
    #   @return [String]
    # @!attribute reserved_nodes
    #   <p>Returns information about reserved nodes for this account, or about a specified reserved node.</p>
    #   @return [Array<Types::ReservedNode>]
    class DescribeReservedNodesResponse < Struct.new(
      :next_token,
      :reserved_nodes,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_update_name
    #   <p>The unique ID of the service update to describe.</p>
    #   @return [String]
    # @!attribute cluster_names
    #   <p>The list of cluster names to identify service updates to apply.</p>
    #   @return [Array<String>]
    # @!attribute status
    #   <p>The status(es) of the service updates to filter on.</p>
    #   @return [Array<String>]
    # @!attribute max_results
    #   <p>The maximum number of records to include in the response. If more records exist than the specified MaxResults value, a token is included in the response so that the remaining results can be retrieved.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>An optional argument to pass in case the total number of records exceeds the value of MaxResults. If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. </p>
    #   @return [String]
    class DescribeServiceUpdatesRequest < Struct.new(
      :service_update_name,
      :cluster_names,
      :status,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>An optional argument to pass in case the total number of records exceeds the value of MaxResults. If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. </p>
    #   @return [String]
    # @!attribute service_updates
    #   <p>A list of service updates</p>
    #   @return [Array<Types::ServiceUpdate>]
    class DescribeServiceUpdatesResponse < Struct.new(
      :next_token,
      :service_updates,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster_name
    #   <p>A user-supplied cluster identifier. If this parameter is specified, only snapshots associated with that specific cluster are described.</p>
    #   @return [String]
    # @!attribute snapshot_name
    #   <p>A user-supplied name of the snapshot. If this parameter is specified, only this named snapshot is described.</p>
    #   @return [String]
    # @!attribute source
    #   <p>If set to system, the output shows snapshots that were automatically created by MemoryDB. If set to user the output shows snapshots that were manually created. If omitted, the output shows both automatically and manually created snapshots.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>An optional argument to pass in case the total number of records exceeds the value of MaxResults. If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of records to include in the response. If more records exist than the specified MaxResults value, a token is included in the response so that the remaining results can be retrieved.</p>
    #   @return [Integer]
    # @!attribute show_detail
    #   <p>A Boolean value which if true, the shard configuration is included in the snapshot description.</p>
    #   @return [Boolean]
    class DescribeSnapshotsRequest < Struct.new(
      :cluster_name,
      :snapshot_name,
      :source,
      :next_token,
      :max_results,
      :show_detail,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>An optional argument to pass in case the total number of records exceeds the value of MaxResults. If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. </p>
    #   @return [String]
    # @!attribute snapshots
    #   <p>A list of snapshots. Each item in the list contains detailed information about one snapshot.</p>
    #   @return [Array<Types::Snapshot>]
    class DescribeSnapshotsResponse < Struct.new(
      :next_token,
      :snapshots,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute subnet_group_name
    #   <p>The name of the subnet group to return details for.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of records to include in the response. If more records exist than the specified MaxResults value, a token is included in the response so that the remaining results can be retrieved.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>An optional argument to pass in case the total number of records exceeds the value of MaxResults. If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. </p>
    #   @return [String]
    class DescribeSubnetGroupsRequest < Struct.new(
      :subnet_group_name,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>An optional argument to pass in case the total number of records exceeds the value of MaxResults. If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. </p>
    #   @return [String]
    # @!attribute subnet_groups
    #   <p>A list of subnet groups. Each element in the list contains detailed information about one group.</p>
    #   @return [Array<Types::SubnetGroup>]
    class DescribeSubnetGroupsResponse < Struct.new(
      :next_token,
      :subnet_groups,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute user_name
    #   <p>The name of the user.</p>
    #   @return [String]
    # @!attribute filters
    #   <p>Filter to determine the list of users to return.</p>
    #   @return [Array<Types::Filter>]
    # @!attribute max_results
    #   <p>The maximum number of records to include in the response. If more records exist than the specified MaxResults value, a token is included in the response so that the remaining results can be retrieved.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>An optional argument to pass in case the total number of records exceeds the value of MaxResults. If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. </p>
    #   @return [String]
    class DescribeUsersRequest < Struct.new(
      :user_name,
      :filters,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute users
    #   <p>A list of users.</p>
    #   @return [Array<Types::User>]
    # @!attribute next_token
    #   <p>An optional argument to pass in case the total number of records exceeds the value of MaxResults. If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. </p>
    #   @return [String]
    class DescribeUsersResponse < Struct.new(
      :users,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute message
    #   @return [String]
    class DuplicateUserNameFault < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the information required for client programs to connect to the cluster and its nodes.</p>
    # @!attribute address
    #   <p>The DNS hostname of the node.</p>
    #   @return [String]
    # @!attribute port
    #   <p>The port number that the engine is listening on.</p>
    #   @return [Integer]
    class Endpoint < Struct.new(
      :address,
      :port,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:port] = 0 unless options.key?(:port)
        super
      end
    end

    # <p>Provides details of the Redis OSS engine version</p>
    # @!attribute engine
    #   <p>The name of the engine for which version information is provided.</p>
    #   @return [String]
    # @!attribute engine_version
    #   <p>The engine version</p>
    #   @return [String]
    # @!attribute engine_patch_version
    #   <p>The patched engine version</p>
    #   @return [String]
    # @!attribute parameter_group_family
    #   <p>Specifies the name of the parameter group family to which the engine default parameters apply.</p>
    #   @return [String]
    class EngineVersionInfo < Struct.new(
      :engine,
      :engine_version,
      :engine_patch_version,
      :parameter_group_family,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a single occurrence of something interesting within the system. Some examples of events are creating a cluster or adding or removing a 
    #          node.</p>
    # @!attribute source_name
    #   <p>The name for the source of the event. For example, if the event occurred at the cluster level, the identifier would be the name of the cluster.</p>
    #   @return [String]
    # @!attribute source_type
    #   <p>Specifies the origin of this event - a cluster, a parameter group, a security group, etc.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The text of the event.</p>
    #   @return [String]
    # @!attribute date
    #   <p>The date and time when the event occurred.</p>
    #   @return [Time]
    class Event < Struct.new(
      :source_name,
      :source_type,
      :message,
      :date,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster_name
    #   <p>The cluster being failed over.</p>
    #   @return [String]
    # @!attribute shard_name
    #   <p>The name of the shard.</p>
    #   @return [String]
    class FailoverShardRequest < Struct.new(
      :cluster_name,
      :shard_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster
    #   <p>The cluster being failed over.</p>
    #   @return [Types::Cluster]
    class FailoverShardResponse < Struct.new(
      :cluster,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Used to streamline results of a search based on the property being filtered.</p>
    # @!attribute name
    #   <p>The property being filtered. For example, UserName.</p>
    #   @return [String]
    # @!attribute values
    #   <p>The property values to filter on. For example, "user-123".</p>
    #   @return [Array<String>]
    class Filter < Struct.new(
      :name,
      :values,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute message
    #   @return [String]
    class InsufficientClusterCapacityFault < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute message
    #   @return [String]
    class InvalidACLStateFault < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute message
    #   @return [String]
    class InvalidARNFault < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute message
    #   @return [String]
    class InvalidClusterStateFault < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute message
    #   @return [String]
    class InvalidCredentialsException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute message
    #   @return [String]
    class InvalidKMSKeyFault < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The requested operation cannot be performed on the multi-Region cluster in its current state.</p>
    # @!attribute message
    #   @return [String]
    class InvalidMultiRegionClusterStateFault < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute message
    #   @return [String]
    class InvalidNodeStateFault < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute message
    #   @return [String]
    class InvalidParameterCombinationException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute message
    #   @return [String]
    class InvalidParameterGroupStateFault < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute message
    #   @return [String]
    class InvalidParameterValueException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute message
    #   @return [String]
    class InvalidSnapshotStateFault < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute message
    #   @return [String]
    class InvalidSubnet < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute message
    #   @return [String]
    class InvalidUserStateFault < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute message
    #   @return [String]
    class InvalidVPCNetworkStateFault < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute multi_region_cluster_name
    #   <p>The name of the multi-Region cluster.</p>
    #   @return [String]
    class ListAllowedMultiRegionClusterUpdatesRequest < Struct.new(
      :multi_region_cluster_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute scale_up_node_types
    #   <p>The node types that the cluster can be scaled up to.</p>
    #   @return [Array<String>]
    # @!attribute scale_down_node_types
    #   <p>The node types that the cluster can be scaled down to.</p>
    #   @return [Array<String>]
    class ListAllowedMultiRegionClusterUpdatesResponse < Struct.new(
      :scale_up_node_types,
      :scale_down_node_types,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster_name
    #   <p>The name of the cluster you want to scale. MemoryDB uses the cluster name to identify the current node type being used by this cluster, and from that to create a list of node types
    #            you can scale up to.</p>
    #   @return [String]
    class ListAllowedNodeTypeUpdatesRequest < Struct.new(
      :cluster_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute scale_up_node_types
    #   <p>A list node types which you can use to scale up your cluster.</p>
    #   @return [Array<String>]
    # @!attribute scale_down_node_types
    #   <p>A list node types which you can use to scale down your cluster.</p>
    #   @return [Array<String>]
    class ListAllowedNodeTypeUpdatesResponse < Struct.new(
      :scale_up_node_types,
      :scale_down_node_types,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource for which you want the list of tags.</p>
    #   @return [String]
    class ListTagsRequest < Struct.new(
      :resource_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute tag_list
    #   <p>A list of tags as key-value pairs.</p>
    #   @return [Array<Types::Tag>]
    class ListTagsResponse < Struct.new(
      :tag_list,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a multi-Region cluster.</p>
    # @!attribute multi_region_cluster_name
    #   <p>The name of the multi-Region cluster.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the multi-Region cluster.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the multi-Region cluster.</p>
    #   @return [String]
    # @!attribute node_type
    #   <p>The node type used by the multi-Region cluster.</p>
    #   @return [String]
    # @!attribute engine
    #   <p>The name of the engine used by the multi-Region cluster.</p>
    #   @return [String]
    # @!attribute engine_version
    #   <p>The version of the engine used by the multi-Region cluster.</p>
    #   @return [String]
    # @!attribute number_of_shards
    #   <p>The number of shards in the multi-Region cluster.</p>
    #   @return [Integer]
    # @!attribute clusters
    #   <p>The clusters in this multi-Region cluster.</p>
    #   @return [Array<Types::RegionalCluster>]
    # @!attribute multi_region_parameter_group_name
    #   <p>The name of the multi-Region parameter group associated with the cluster.</p>
    #   @return [String]
    # @!attribute tls_enabled
    #   <p>Indiciates if the multi-Region cluster is TLS enabled.</p>
    #   @return [Boolean]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the multi-Region cluster.</p>
    #   @return [String]
    class MultiRegionCluster < Struct.new(
      :multi_region_cluster_name,
      :description,
      :status,
      :node_type,
      :engine,
      :engine_version,
      :number_of_shards,
      :clusters,
      :multi_region_parameter_group_name,
      :tls_enabled,
      :arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A multi-Region cluster with the specified name already exists.</p>
    # @!attribute message
    #   @return [String]
    class MultiRegionClusterAlreadyExistsFault < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The specified multi-Region cluster does not exist.</p>
    # @!attribute message
    #   @return [String]
    class MultiRegionClusterNotFoundFault < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The specified multi-Region parameter group does not exist.</p>
    # @!attribute message
    #   @return [String]
    class MultiRegionParameterGroupNotFoundFault < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute message
    #   @return [String]
    class NoOperationFault < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents an individual node within a cluster. Each node runs its own instance of the cluster's protocol-compliant caching software.</p>
    # @!attribute name
    #   <p>The  node identifier. A node name is a numeric identifier (0001, 0002, etc.). The combination of cluster name, shard name and node name uniquely identifies every node used in a customer's Amazon account.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the service update on the node</p>
    #   @return [String]
    # @!attribute availability_zone
    #   <p>The Availability Zone in which the node resides</p>
    #   @return [String]
    # @!attribute create_time
    #   <p>The date and time when the node was created.</p>
    #   @return [Time]
    # @!attribute endpoint
    #   <p>The hostname for connecting to this node.</p>
    #   @return [Types::Endpoint]
    class Node < Struct.new(
      :name,
      :status,
      :availability_zone,
      :create_time,
      :endpoint,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute message
    #   @return [String]
    class NodeQuotaForClusterExceededFault < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute message
    #   @return [String]
    class NodeQuotaForCustomerExceededFault < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an individual setting that controls some aspect of MemoryDB behavior.</p>
    # @!attribute name
    #   <p>The name of the parameter</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value of the parameter</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the parameter</p>
    #   @return [String]
    # @!attribute data_type
    #   <p>The parameter's data type</p>
    #   @return [String]
    # @!attribute allowed_values
    #   <p>The valid range of values for the parameter.</p>
    #   @return [String]
    # @!attribute minimum_engine_version
    #   <p>The earliest engine version to which the parameter can apply.</p>
    #   @return [String]
    class Parameter < Struct.new(
      :name,
      :value,
      :description,
      :data_type,
      :allowed_values,
      :minimum_engine_version,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a CreateParameterGroup operation. A parameter group represents a combination of specific values for the parameters that are passed to the engine software during startup.</p>
    # @!attribute name
    #   <p>The name of the parameter group</p>
    #   @return [String]
    # @!attribute family
    #   <p>The name of the parameter group family that this  parameter group is compatible with.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the parameter group</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the parameter group</p>
    #   @return [String]
    class ParameterGroup < Struct.new(
      :name,
      :family,
      :description,
      :arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute message
    #   @return [String]
    class ParameterGroupAlreadyExistsFault < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute message
    #   @return [String]
    class ParameterGroupNotFoundFault < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute message
    #   @return [String]
    class ParameterGroupQuotaExceededFault < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a name-value pair that is used to update the value of a parameter.</p>
    # @!attribute parameter_name
    #   <p>The name of the parameter</p>
    #   @return [String]
    # @!attribute parameter_value
    #   <p>The value of the parameter</p>
    #   @return [String]
    class ParameterNameValue < Struct.new(
      :parameter_name,
      :parameter_value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Update action that has yet to be processed for the corresponding apply/stop request</p>
    # @!attribute service_update_name
    #   <p>The unique ID of the service update</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the service update</p>
    #   @return [String]
    class PendingModifiedServiceUpdate < Struct.new(
      :service_update_name,
      :status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute reserved_nodes_offering_id
    #   <p>The ID of the reserved node offering to purchase.</p>
    #   @return [String]
    # @!attribute reservation_id
    #   <p>A customer-specified identifier to track this reservation.</p>
    #   @return [String]
    # @!attribute node_count
    #   <p>The number of node instances to reserve.</p>
    #   @return [Integer]
    # @!attribute tags
    #   <p>A list of tags to be added to this resource. A tag is a key-value pair. A tag key must be accompanied by a tag value, although null is accepted.</p>
    #   @return [Array<Types::Tag>]
    class PurchaseReservedNodesOfferingRequest < Struct.new(
      :reserved_nodes_offering_id,
      :reservation_id,
      :node_count,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute reserved_node
    #   <p>Represents the output of a <code>PurchaseReservedNodesOffering</code> operation.</p>
    #   @return [Types::ReservedNode]
    class PurchaseReservedNodesOfferingResponse < Struct.new(
      :reserved_node,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The recurring charge to run this reserved node.</p>
    # @!attribute recurring_charge_amount
    #   <p>The amount of the recurring charge to run this reserved node.</p>
    #   @return [Float]
    # @!attribute recurring_charge_frequency
    #   <p>The frequency of the recurring price charged to run this reserved node.</p>
    #   @return [String]
    class RecurringCharge < Struct.new(
      :recurring_charge_amount,
      :recurring_charge_frequency,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:recurring_charge_amount] = 0 unless options.key?(:recurring_charge_amount)
        super
      end
    end

    # <p>Represents a Regional cluster</p>
    # @!attribute cluster_name
    #   <p>The name of the Regional cluster</p>
    #   @return [String]
    # @!attribute region
    #   <p>The Region the current Regional cluster is assigned to.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the Regional cluster.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) the Regional cluster</p>
    #   @return [String]
    class RegionalCluster < Struct.new(
      :cluster_name,
      :region,
      :status,
      :arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A request to configure the number of replicas in a shard</p>
    # @!attribute replica_count
    #   <p>The number of replicas to scale up or down to</p>
    #   @return [Integer]
    class ReplicaConfigurationRequest < Struct.new(
      :replica_count,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:replica_count] = 0 unless options.key?(:replica_count)
        super
      end
    end

    # <p>Represents the output of a <code>PurchaseReservedNodesOffering</code> operation.</p>
    # @!attribute reservation_id
    #   <p>A customer-specified identifier to track this reservation.</p>
    #   @return [String]
    # @!attribute reserved_nodes_offering_id
    #   <p>The ID of the reserved node offering to purchase.</p>
    #   @return [String]
    # @!attribute node_type
    #   <p>The node type for the reserved nodes.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>The time the reservation started.</p>
    #   @return [Time]
    # @!attribute duration
    #   <p>The duration of the reservation in seconds.</p>
    #   @return [Integer]
    # @!attribute fixed_price
    #   <p>The fixed price charged for this reserved node.</p>
    #   @return [Float]
    # @!attribute node_count
    #   <p>The number of nodes that have been reserved.</p>
    #   @return [Integer]
    # @!attribute offering_type
    #   <p>The offering type of this reserved node.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The state of the reserved node.</p>
    #   @return [String]
    # @!attribute recurring_charges
    #   <p>The recurring price charged to run this reserved node.</p>
    #   @return [Array<Types::RecurringCharge>]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the reserved node.</p>
    #   @return [String]
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
      :arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:duration] = 0 unless options.key?(:duration)
        options[:fixed_price] = 0 unless options.key?(:fixed_price)
        options[:node_count] = 0 unless options.key?(:node_count)
        super
      end
    end

    # <p>You already have a reservation with the given identifier.</p>
    # @!attribute message
    #   @return [String]
    class ReservedNodeAlreadyExistsFault < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The requested node does not exist.</p>
    # @!attribute message
    #   @return [String]
    class ReservedNodeNotFoundFault < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request cannot be processed because it would exceed the user's node quota.</p>
    # @!attribute message
    #   @return [String]
    class ReservedNodeQuotaExceededFault < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The offering type of this node.</p>
    # @!attribute reserved_nodes_offering_id
    #   <p>The offering identifier.</p>
    #   @return [String]
    # @!attribute node_type
    #   <p>The node type for the reserved nodes. For more information, see <a href="https://docs.aws.amazon.com/memorydb/latest/devguide/nodes.reserved.html#reserved-nodes-supported">Supported node types</a>.</p>
    #   @return [String]
    # @!attribute duration
    #   <p>The duration of the reservation in seconds.</p>
    #   @return [Integer]
    # @!attribute fixed_price
    #   <p>The fixed price charged for this reserved node.</p>
    #   @return [Float]
    # @!attribute offering_type
    #   <p>The offering type of this reserved node.</p>
    #   @return [String]
    # @!attribute recurring_charges
    #   <p>The recurring price charged to run this reserved node.</p>
    #   @return [Array<Types::RecurringCharge>]
    class ReservedNodesOffering < Struct.new(
      :reserved_nodes_offering_id,
      :node_type,
      :duration,
      :fixed_price,
      :offering_type,
      :recurring_charges,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:duration] = 0 unless options.key?(:duration)
        options[:fixed_price] = 0 unless options.key?(:fixed_price)
        super
      end
    end

    # <p>The requested node offering does not exist.
    #          
    #       </p>
    # @!attribute message
    #   @return [String]
    class ReservedNodesOfferingNotFoundFault < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute parameter_group_name
    #   <p>The name of the parameter group to reset.</p>
    #   @return [String]
    # @!attribute all_parameters
    #   <p>If true, all parameters in the parameter group are reset to their default values. If false, only the parameters listed by ParameterNames are reset to their default values.</p>
    #   @return [Boolean]
    # @!attribute parameter_names
    #   <p>An array of parameter names to reset to their default values. If AllParameters is true, do not use ParameterNames. If AllParameters is false, you must specify the name of at least one parameter to reset.</p>
    #   @return [Array<String>]
    class ResetParameterGroupRequest < Struct.new(
      :parameter_group_name,
      :all_parameters,
      :parameter_names,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute parameter_group
    #   <p>The parameter group being reset.</p>
    #   @return [Types::ParameterGroup]
    class ResetParameterGroupResponse < Struct.new(
      :parameter_group,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The status of the online resharding</p>
    # @!attribute slot_migration
    #   <p>The status of the online resharding slot migration</p>
    #   @return [Types::SlotMigration]
    class ReshardingStatus < Struct.new(
      :slot_migration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a single security group and its status.</p>
    # @!attribute security_group_id
    #   <p>The identifier of the security group.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the security group membership. The status changes whenever a security group is modified, or when the security groups assigned to a cluster are modified.</p>
    #   @return [String]
    class SecurityGroupMembership < Struct.new(
      :security_group_id,
      :status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute message
    #   @return [String]
    class ServiceLinkedRoleNotFoundFault < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An update that you can apply to your MemoryDB clusters.</p>
    # @!attribute cluster_name
    #   <p>The name of the cluster to which the service update applies</p>
    #   @return [String]
    # @!attribute service_update_name
    #   <p>The unique ID of the service update</p>
    #   @return [String]
    # @!attribute release_date
    #   <p>The date when the service update is initially available</p>
    #   @return [Time]
    # @!attribute description
    #   <p>Provides details of the service update</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the service update</p>
    #   @return [String]
    # @!attribute type
    #   <p>Reflects the nature of the service update</p>
    #   @return [String]
    # @!attribute engine
    #   <p>The name of the engine for which a service update is available.</p>
    #   @return [String]
    # @!attribute nodes_updated
    #   <p>A list of nodes updated by the service update</p>
    #   @return [String]
    # @!attribute auto_update_start_date
    #   <p>The date at which the service update will be automatically applied</p>
    #   @return [Time]
    class ServiceUpdate < Struct.new(
      :cluster_name,
      :service_update_name,
      :release_date,
      :description,
      :status,
      :type,
      :engine,
      :nodes_updated,
      :auto_update_start_date,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute message
    #   @return [String]
    class ServiceUpdateNotFoundFault < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A request to apply a service update</p>
    # @!attribute service_update_name_to_apply
    #   <p>The unique ID of the service update</p>
    #   @return [String]
    class ServiceUpdateRequest < Struct.new(
      :service_update_name_to_apply,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a collection of nodes in a cluster. One node in the node group is the read/write primary node. All the other nodes are read-only Replica nodes.</p>
    # @!attribute name
    #   <p>The name of the shard</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current state of this replication group - creating, available, modifying, deleting.</p>
    #   @return [String]
    # @!attribute slots
    #   <p>The keyspace for this shard.</p>
    #   @return [String]
    # @!attribute nodes
    #   <p>A list containing information about individual nodes within the shard</p>
    #   @return [Array<Types::Node>]
    # @!attribute number_of_nodes
    #   <p>The number of nodes in the shard</p>
    #   @return [Integer]
    class Shard < Struct.new(
      :name,
      :status,
      :slots,
      :nodes,
      :number_of_nodes,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Shard configuration options. Each shard configuration has the following: Slots and ReplicaCount.</p>
    # @!attribute slots
    #   <p>A string that specifies the keyspace for a particular node group. Keyspaces range from 0 to 16,383. The string is in the format startkey-endkey.</p>
    #   @return [String]
    # @!attribute replica_count
    #   <p>The number of read replica nodes in this shard.</p>
    #   @return [Integer]
    class ShardConfiguration < Struct.new(
      :slots,
      :replica_count,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A request to configure the sharding properties of a cluster</p>
    # @!attribute shard_count
    #   <p>The number of shards in the cluster</p>
    #   @return [Integer]
    class ShardConfigurationRequest < Struct.new(
      :shard_count,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:shard_count] = 0 unless options.key?(:shard_count)
        super
      end
    end

    # <p>Provides details of a shard in a snapshot</p>
    # @!attribute name
    #   <p>The name of the shard</p>
    #   @return [String]
    # @!attribute configuration
    #   <p>The configuration details of the shard</p>
    #   @return [Types::ShardConfiguration]
    # @!attribute size
    #   <p>The size of the shard's snapshot</p>
    #   @return [String]
    # @!attribute snapshot_creation_time
    #   <p>The date and time that the shard's snapshot was created</p>
    #   @return [Time]
    class ShardDetail < Struct.new(
      :name,
      :configuration,
      :size,
      :snapshot_creation_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute message
    #   @return [String]
    class ShardNotFoundFault < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute message
    #   @return [String]
    class ShardsPerClusterQuotaExceededFault < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the progress of an online resharding operation.</p>
    # @!attribute progress_percentage
    #   <p>The percentage of the slot migration that is complete.</p>
    #   @return [Float]
    class SlotMigration < Struct.new(
      :progress_percentage,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:progress_percentage] = 0 unless options.key?(:progress_percentage)
        super
      end
    end

    # <p>Represents a copy of an entire cluster as of the time when the snapshot was taken.</p>
    # @!attribute name
    #   <p>The name of the snapshot</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the snapshot. Valid values: creating | available | restoring | copying | deleting.</p>
    #   @return [String]
    # @!attribute source
    #   <p>Indicates whether the snapshot is from an automatic backup (automated) or was created manually (manual).</p>
    #   @return [String]
    # @!attribute kms_key_id
    #   <p>The ID of the KMS key used to encrypt the snapshot.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The ARN (Amazon Resource Name) of the snapshot.</p>
    #   @return [String]
    # @!attribute cluster_configuration
    #   <p>The configuration of the cluster from which the snapshot was taken</p>
    #   @return [Types::ClusterConfiguration]
    # @!attribute data_tiering
    #   <p>Enables data tiering. Data tiering is only supported for clusters using the r6gd node type. 
    #               This parameter must be set when using r6gd nodes. For more information, see <a href="https://docs.aws.amazon.com/memorydb/latest/devguide/data-tiering.html">Data tiering</a>.</p>
    #   @return [String]
    class Snapshot < Struct.new(
      :name,
      :status,
      :source,
      :kms_key_id,
      :arn,
      :cluster_configuration,
      :data_tiering,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute message
    #   @return [String]
    class SnapshotAlreadyExistsFault < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute message
    #   @return [String]
    class SnapshotNotFoundFault < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute message
    #   @return [String]
    class SnapshotQuotaExceededFault < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the subnet associated with a cluster. This parameter refers to subnets defined in Amazon Virtual Private Cloud (Amazon VPC) and used with MemoryDB.</p>
    # @!attribute identifier
    #   <p>The unique identifier for the subnet.</p>
    #   @return [String]
    # @!attribute availability_zone
    #   <p>The Availability Zone where the subnet resides</p>
    #   @return [Types::AvailabilityZone]
    # @!attribute supported_network_types
    #   <p>The network types supported by this subnet. Returns an array of strings that can include 'ipv4', 'ipv6', or both, indicating whether the subnet supports IPv4 only, IPv6 only, or dual-stack deployments.</p>
    #   @return [Array<String>]
    class Subnet < Struct.new(
      :identifier,
      :availability_zone,
      :supported_network_types,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of one of the following operations:</p>
    #          <ul>
    #             <li>
    #                <p>CreateSubnetGroup</p>
    #             </li>
    #             <li>
    #                <p>UpdateSubnetGroup</p>
    #             </li>
    #          </ul>
    #          <p>A subnet group is a collection of subnets (typically private) that you can designate for your clusters running in an Amazon Virtual Private Cloud (VPC) environment.</p>
    # @!attribute name
    #   <p>The name of the subnet group</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the subnet group</p>
    #   @return [String]
    # @!attribute vpc_id
    #   <p>The Amazon Virtual Private Cloud identifier (VPC ID) of the subnet group.</p>
    #   @return [String]
    # @!attribute subnets
    #   <p>A list of subnets associated with the subnet group.</p>
    #   @return [Array<Types::Subnet>]
    # @!attribute arn
    #   <p>The ARN (Amazon Resource Name) of the subnet group.</p>
    #   @return [String]
    # @!attribute supported_network_types
    #   <p>The network types supported by this subnet group. Returns an array of strings that can include 'ipv4', 'ipv6', or both, indicating the IP address types that can be used for clusters deployed in this subnet group.</p>
    #   @return [Array<String>]
    class SubnetGroup < Struct.new(
      :name,
      :description,
      :vpc_id,
      :subnets,
      :arn,
      :supported_network_types,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute message
    #   @return [String]
    class SubnetGroupAlreadyExistsFault < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute message
    #   @return [String]
    class SubnetGroupInUseFault < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute message
    #   @return [String]
    class SubnetGroupNotFoundFault < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute message
    #   @return [String]
    class SubnetGroupQuotaExceededFault < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute message
    #   @return [String]
    class SubnetInUse < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute message
    #   @return [String]
    class SubnetNotAllowedFault < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute message
    #   @return [String]
    class SubnetQuotaExceededFault < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A tag that can be added to an MemoryDB resource. Tags are composed of a Key/Value pair. You can use tags to categorize and track all your MemoryDB resources. 
    #          When you add or remove tags on clusters, those actions will be replicated to all nodes in the cluster. A tag with a null Value is permitted. For more information, see 
    #          <a href="https://docs.aws.amazon.com/MemoryDB/latest/devguide/tagging-resources.html">Tagging your MemoryDB resources</a>
    #          </p>
    # @!attribute key
    #   <p>The key for the tag. May not be null.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The tag's value. May be null.</p>
    #   @return [String]
    class Tag < Struct.new(
      :key,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute message
    #   @return [String]
    class TagNotFoundFault < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute message
    #   @return [String]
    class TagQuotaPerResourceExceeded < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to which the tags are to be added.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of tags to be added to this resource. A tag is a key-value pair. A tag key must be accompanied by a tag value, although null is accepted.</p>
    #   @return [Array<Types::Tag>]
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute tag_list
    #   <p>A list of tags as key-value pairs.</p>
    #   @return [Array<Types::Tag>]
    class TagResourceResponse < Struct.new(
      :tag_list,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute message
    #   @return [String]
    class TestFailoverNotAvailableFault < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A cluster whose updates have failed</p>
    # @!attribute cluster_name
    #   <p>The name of the cluster</p>
    #   @return [String]
    # @!attribute error_type
    #   <p>The error type associated with the update failure</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>The error message associated with the update failure</p>
    #   @return [String]
    class UnprocessedCluster < Struct.new(
      :cluster_name,
      :error_type,
      :error_message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to which the tags are to be removed.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>The list of keys of the tags that are to be removed.</p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute tag_list
    #   <p>The list of tags removed.</p>
    #   @return [Array<Types::Tag>]
    class UntagResourceResponse < Struct.new(
      :tag_list,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute acl_name
    #   <p>The name of the Access Control List.</p>
    #   @return [String]
    # @!attribute user_names_to_add
    #   <p>The list of users to add to the Access Control List.</p>
    #   @return [Array<String>]
    # @!attribute user_names_to_remove
    #   <p>The list of users to remove from the Access Control List.</p>
    #   @return [Array<String>]
    class UpdateACLRequest < Struct.new(
      :acl_name,
      :user_names_to_add,
      :user_names_to_remove,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute acl
    #   <p>The updated Access Control List.</p>
    #   @return [Types::ACL]
    class UpdateACLResponse < Struct.new(
      :acl,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster_name
    #   <p>The name of the cluster to update.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the cluster to update.</p>
    #   @return [String]
    # @!attribute security_group_ids
    #   <p>The SecurityGroupIds to update.</p>
    #   @return [Array<String>]
    # @!attribute maintenance_window
    #   <p>Specifies the weekly time range during which maintenance
    #            on the cluster is performed. It is specified as a range in
    #            the format ddd:hh24:mi-ddd:hh24:mi (24H Clock UTC). The minimum
    #            maintenance window is a 60 minute period.</p>
    #            <p>Valid values for <code>ddd</code> are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>sun</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>mon</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>tue</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>wed</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>thu</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>fri</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>sat</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>Example: <code>sun:23:00-mon:01:30</code>
    #            </p>
    #   @return [String]
    # @!attribute sns_topic_arn
    #   <p>The SNS topic ARN to update.</p>
    #   @return [String]
    # @!attribute sns_topic_status
    #   <p>The status of the Amazon SNS notification topic. Notifications are sent only if the status is active.</p>
    #   @return [String]
    # @!attribute parameter_group_name
    #   <p>The name of the parameter group to update.</p>
    #   @return [String]
    # @!attribute snapshot_window
    #   <p>The daily time range (in UTC) during which MemoryDB begins taking a daily snapshot of your cluster.</p>
    #   @return [String]
    # @!attribute snapshot_retention_limit
    #   <p>The number of days for which MemoryDB retains automatic cluster snapshots before deleting them. For example, if you set SnapshotRetentionLimit to 5, a snapshot that was taken today is retained for 5 days before being deleted.</p>
    #   @return [Integer]
    # @!attribute node_type
    #   <p>A valid node type that you want to scale this cluster up or down to.</p>
    #   @return [String]
    # @!attribute engine
    #   <p>The name of the engine to be used for the cluster.</p>
    #   @return [String]
    # @!attribute engine_version
    #   <p>The upgraded version of the engine to be run on the nodes. You can upgrade to a newer engine version, but you cannot downgrade to an earlier engine version. If you want to use an earlier engine version, you must delete the existing cluster and create it anew with the earlier engine version.</p>
    #   @return [String]
    # @!attribute replica_configuration
    #   <p>The number of replicas that will reside in each shard.</p>
    #   @return [Types::ReplicaConfigurationRequest]
    # @!attribute shard_configuration
    #   <p>The number of shards in the cluster.</p>
    #   @return [Types::ShardConfigurationRequest]
    # @!attribute acl_name
    #   <p>The Access Control List that is associated with the cluster.</p>
    #   @return [String]
    # @!attribute ip_discovery
    #   <p>The mechanism for discovering IP addresses for the cluster discovery protocol. Valid values are 'ipv4' or 'ipv6'. When set to 'ipv4', cluster discovery functions such as cluster slots, cluster shards, and cluster nodes will return IPv4 addresses for cluster nodes. When set to 'ipv6', the cluster discovery functions return IPv6 addresses for cluster nodes. The value must be compatible with the NetworkType parameter. If not specified, the default is 'ipv4'.</p>
    #   @return [String]
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
      :engine,
      :engine_version,
      :replica_configuration,
      :shard_configuration,
      :acl_name,
      :ip_discovery,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster
    #   <p>The updated cluster.</p>
    #   @return [Types::Cluster]
    class UpdateClusterResponse < Struct.new(
      :cluster,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute multi_region_cluster_name
    #   <p>The name of the multi-Region cluster to be updated.</p>
    #   @return [String]
    # @!attribute node_type
    #   <p>The new node type to be used for the multi-Region cluster.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A new description for the multi-Region cluster.</p>
    #   @return [String]
    # @!attribute engine_version
    #   <p>The new engine version to be used for the multi-Region cluster.</p>
    #   @return [String]
    # @!attribute shard_configuration
    #   <p>A request to configure the sharding properties of a cluster</p>
    #   @return [Types::ShardConfigurationRequest]
    # @!attribute multi_region_parameter_group_name
    #   <p>The new multi-Region parameter group to be associated with the cluster.</p>
    #   @return [String]
    # @!attribute update_strategy
    #   <p>The strategy to use for the update operation. Supported values are "coordinated" or "uncoordinated".</p>
    #   @return [String]
    class UpdateMultiRegionClusterRequest < Struct.new(
      :multi_region_cluster_name,
      :node_type,
      :description,
      :engine_version,
      :shard_configuration,
      :multi_region_parameter_group_name,
      :update_strategy,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute multi_region_cluster
    #   <p>The status of updating the multi-Region cluster.</p>
    #   @return [Types::MultiRegionCluster]
    class UpdateMultiRegionClusterResponse < Struct.new(
      :multi_region_cluster,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute parameter_group_name
    #   <p>The name of the parameter group to update.</p>
    #   @return [String]
    # @!attribute parameter_name_values
    #   <p>An array of parameter names and values for the parameter update. You must supply at least one parameter name and value; subsequent arguments are optional. A maximum of 20 parameters may be updated per request.</p>
    #   @return [Array<Types::ParameterNameValue>]
    class UpdateParameterGroupRequest < Struct.new(
      :parameter_group_name,
      :parameter_name_values,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute parameter_group
    #   <p>The updated parameter group</p>
    #   @return [Types::ParameterGroup]
    class UpdateParameterGroupResponse < Struct.new(
      :parameter_group,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute subnet_group_name
    #   <p>The name of the subnet group</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the subnet group</p>
    #   @return [String]
    # @!attribute subnet_ids
    #   <p>The EC2 subnet IDs for the subnet group.</p>
    #   @return [Array<String>]
    class UpdateSubnetGroupRequest < Struct.new(
      :subnet_group_name,
      :description,
      :subnet_ids,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute subnet_group
    #   <p>The updated subnet group</p>
    #   @return [Types::SubnetGroup]
    class UpdateSubnetGroupResponse < Struct.new(
      :subnet_group,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute user_name
    #   <p>The name of the user</p>
    #   @return [String]
    # @!attribute authentication_mode
    #   <p>Denotes the user's authentication properties, such as whether it requires a password to authenticate.</p>
    #   @return [Types::AuthenticationMode]
    # @!attribute access_string
    #   <p>Access permissions string used for this user.</p>
    #   @return [String]
    class UpdateUserRequest < Struct.new(
      :user_name,
      :authentication_mode,
      :access_string,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute user
    #   <p>The updated user</p>
    #   @return [Types::User]
    class UpdateUserResponse < Struct.new(
      :user,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>You create users and assign them specific permissions by using an access string. You assign the users to Access Control Lists aligned with a specific role (administrators, human resources) that are then deployed to one or more MemoryDB clusters.</p>
    # @!attribute name
    #   <p>The name of the user</p>
    #   @return [String]
    # @!attribute status
    #   <p>Indicates the user status. Can be "active", "modifying" or "deleting".</p>
    #   @return [String]
    # @!attribute access_string
    #   <p>Access permissions string used for this user.</p>
    #   @return [String]
    # @!attribute acl_names
    #   <p>The names of the Access Control Lists to which the user belongs</p>
    #   @return [Array<String>]
    # @!attribute minimum_engine_version
    #   <p>The minimum engine version supported for the user</p>
    #   @return [String]
    # @!attribute authentication
    #   <p>Denotes whether the user requires a password to authenticate.</p>
    #   @return [Types::Authentication]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the user.
    #            
    #         </p>
    #   @return [String]
    class User < Struct.new(
      :name,
      :status,
      :access_string,
      :acl_names,
      :minimum_engine_version,
      :authentication,
      :arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute message
    #   @return [String]
    class UserAlreadyExistsFault < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute message
    #   @return [String]
    class UserNotFoundFault < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute message
    #   @return [String]
    class UserQuotaExceededFault < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

  end
end
