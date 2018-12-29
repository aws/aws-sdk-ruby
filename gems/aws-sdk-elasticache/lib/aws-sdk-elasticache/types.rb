# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ElastiCache
  module Types

    # Represents the input of an AddTagsToResource operation.
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
    #   The Amazon Resource Name (ARN) of the resource to which the tags are
    #   to be added, for example
    #   `arn:aws:elasticache:us-west-2:0123456789:cluster:myCluster` or
    #   `arn:aws:elasticache:us-west-2:0123456789:snapshot:mySnapshot`.
    #   ElastiCache resources are *cluster* and *snapshot*.
    #
    #   For more information about ARNs, see [Amazon Resource Names (ARNs)
    #   and AWS Service Namespaces][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of cost allocation tags to be added to this resource. A tag
    #   is a key-value pair. A tag key must be accompanied by a tag value.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/AddTagsToResourceMessage AWS API Documentation
    #
    class AddTagsToResourceMessage < Struct.new(
      :resource_name,
      :tags)
      include Aws::Structure
    end

    # Represents the allowed node types you can use to modify your cluster
    # or replication group.
    #
    # @!attribute [rw] scale_up_modifications
    #   A string list, each element of which specifies a cache node type
    #   which you can use to scale your cluster or replication group.
    #
    #   When scaling up a Redis cluster or replication group using
    #   `ModifyCacheCluster` or `ModifyReplicationGroup`, use a value from
    #   this list for the `CacheNodeType` parameter.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/AllowedNodeTypeModificationsMessage AWS API Documentation
    #
    class AllowedNodeTypeModificationsMessage < Struct.new(
      :scale_up_modifications)
      include Aws::Structure
    end

    # Represents the input of an AuthorizeCacheSecurityGroupIngress
    # operation.
    #
    # @note When making an API call, you may pass AuthorizeCacheSecurityGroupIngressMessage
    #   data as a hash:
    #
    #       {
    #         cache_security_group_name: "String", # required
    #         ec2_security_group_name: "String", # required
    #         ec2_security_group_owner_id: "String", # required
    #       }
    #
    # @!attribute [rw] cache_security_group_name
    #   The cache security group that allows network ingress.
    #   @return [String]
    #
    # @!attribute [rw] ec2_security_group_name
    #   The Amazon EC2 security group to be authorized for ingress to the
    #   cache security group.
    #   @return [String]
    #
    # @!attribute [rw] ec2_security_group_owner_id
    #   The AWS account number of the Amazon EC2 security group owner. Note
    #   that this is not the same thing as an AWS access key ID - you must
    #   provide a valid AWS account number for this parameter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/AuthorizeCacheSecurityGroupIngressMessage AWS API Documentation
    #
    class AuthorizeCacheSecurityGroupIngressMessage < Struct.new(
      :cache_security_group_name,
      :ec2_security_group_name,
      :ec2_security_group_owner_id)
      include Aws::Structure
    end

    # @!attribute [rw] cache_security_group
    #   Represents the output of one of the following operations:
    #
    #   * `AuthorizeCacheSecurityGroupIngress`
    #
    #   * `CreateCacheSecurityGroup`
    #
    #   * `RevokeCacheSecurityGroupIngress`
    #   @return [Types::CacheSecurityGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/AuthorizeCacheSecurityGroupIngressResult AWS API Documentation
    #
    class AuthorizeCacheSecurityGroupIngressResult < Struct.new(
      :cache_security_group)
      include Aws::Structure
    end

    # Describes an Availability Zone in which the cluster is launched.
    #
    # @!attribute [rw] name
    #   The name of the Availability Zone.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/AvailabilityZone AWS API Documentation
    #
    class AvailabilityZone < Struct.new(
      :name)
      include Aws::Structure
    end

    # Contains all of the attributes of a specific cluster.
    #
    # @!attribute [rw] cache_cluster_id
    #   The user-supplied identifier of the cluster. This identifier is a
    #   unique key that identifies a cluster.
    #   @return [String]
    #
    # @!attribute [rw] configuration_endpoint
    #   Represents a Memcached cluster endpoint which, if Automatic
    #   Discovery is enabled on the cluster, can be used by an application
    #   to connect to any node in the cluster. The configuration endpoint
    #   will always have `.cfg` in it.
    #
    #   Example: `mem-3.9dvc4r.cfg.usw2.cache.amazonaws.com:11211`
    #   @return [Types::Endpoint]
    #
    # @!attribute [rw] client_download_landing_page
    #   The URL of the web page where you can download the latest
    #   ElastiCache client library.
    #   @return [String]
    #
    # @!attribute [rw] cache_node_type
    #   The name of the compute and memory capacity node type for the
    #   cluster.
    #
    #   The following node types are supported by ElastiCache. Generally
    #   speaking, the current generation types provide more memory and
    #   computational power at lower cost when compared to their equivalent
    #   previous generation counterparts.
    #
    #   * General purpose:
    #
    #     * Current generation:
    #
    #       **T2 node types:** `cache.t2.micro`, `cache.t2.small`,
    #       `cache.t2.medium`
    #
    #       **M3 node types:** `cache.m3.medium`, `cache.m3.large`,
    #       `cache.m3.xlarge`, `cache.m3.2xlarge`
    #
    #       **M4 node types:** `cache.m4.large`, `cache.m4.xlarge`,
    #       `cache.m4.2xlarge`, `cache.m4.4xlarge`, `cache.m4.10xlarge`
    #
    #     * Previous generation: (not recommended)
    #
    #       **T1 node types:** `cache.t1.micro`
    #
    #       **M1 node types:** `cache.m1.small`, `cache.m1.medium`,
    #       `cache.m1.large`, `cache.m1.xlarge`
    #
    #   * Compute optimized:
    #
    #     * Previous generation: (not recommended)
    #
    #       **C1 node types:** `cache.c1.xlarge`
    #
    #   * Memory optimized:
    #
    #     * Current generation:
    #
    #       **R3 node types:** `cache.r3.large`, `cache.r3.xlarge`,
    #       `cache.r3.2xlarge`, `cache.r3.4xlarge`, `cache.r3.8xlarge`
    #
    #       **R4 node types;** `cache.r4.large`, `cache.r4.xlarge`,
    #       `cache.r4.2xlarge`, `cache.r4.4xlarge`, `cache.r4.8xlarge`,
    #       `cache.r4.16xlarge`
    #
    #     * Previous generation: (not recommended)
    #
    #       **M2 node types:** `cache.m2.xlarge`, `cache.m2.2xlarge`,
    #       `cache.m2.4xlarge`
    #
    #   **Notes:**
    #
    #   * All T2 instances are created in an Amazon Virtual Private Cloud
    #     (Amazon VPC).
    #
    #   * Redis (cluster mode disabled): Redis backup/restore is not
    #     supported on T1 and T2 instances.
    #
    #   * Redis (cluster mode enabled): Backup/restore is not supported on
    #     T1 instances.
    #
    #   * Redis Append-only files (AOF) functionality is not supported for
    #     T1 or T2 instances.
    #
    #   For a complete listing of node types and specifications, see:
    #
    #   * [Amazon ElastiCache Product Features and Details][1]
    #
    #   * [Cache Node Type-Specific Parameters for Memcached][2]
    #
    #   * [Cache Node Type-Specific Parameters for Redis][3]
    #
    #
    #
    #   [1]: http://aws.amazon.com/elasticache/details
    #   [2]: http://docs.aws.amazon.com/AmazonElastiCache/latest/mem-ug/ParameterGroups.Memcached.html#ParameterGroups.Memcached.NodeSpecific
    #   [3]: http://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/ParameterGroups.Redis.html#ParameterGroups.Redis.NodeSpecific
    #   @return [String]
    #
    # @!attribute [rw] engine
    #   The name of the cache engine (`memcached` or `redis`) to be used for
    #   this cluster.
    #   @return [String]
    #
    # @!attribute [rw] engine_version
    #   The version of the cache engine that is used in this cluster.
    #   @return [String]
    #
    # @!attribute [rw] cache_cluster_status
    #   The current state of this cluster, one of the following values:
    #   `available`, `creating`, `deleted`, `deleting`,
    #   `incompatible-network`, `modifying`, `rebooting cluster nodes`,
    #   `restore-failed`, or `snapshotting`.
    #   @return [String]
    #
    # @!attribute [rw] num_cache_nodes
    #   The number of cache nodes in the cluster.
    #
    #   For clusters running Redis, this value must be 1. For clusters
    #   running Memcached, this value must be between 1 and 20.
    #   @return [Integer]
    #
    # @!attribute [rw] preferred_availability_zone
    #   The name of the Availability Zone in which the cluster is located or
    #   "Multiple" if the cache nodes are located in different
    #   Availability Zones.
    #   @return [String]
    #
    # @!attribute [rw] cache_cluster_create_time
    #   The date and time when the cluster was created.
    #   @return [Time]
    #
    # @!attribute [rw] preferred_maintenance_window
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
    # @!attribute [rw] pending_modified_values
    #   A group of settings that are applied to the cluster in the future,
    #   or that are currently being applied.
    #   @return [Types::PendingModifiedValues]
    #
    # @!attribute [rw] notification_configuration
    #   Describes a notification topic and its status. Notification topics
    #   are used for publishing ElastiCache events to subscribers using
    #   Amazon Simple Notification Service (SNS).
    #   @return [Types::NotificationConfiguration]
    #
    # @!attribute [rw] cache_security_groups
    #   A list of cache security group elements, composed of name and status
    #   sub-elements.
    #   @return [Array<Types::CacheSecurityGroupMembership>]
    #
    # @!attribute [rw] cache_parameter_group
    #   Status of the cache parameter group.
    #   @return [Types::CacheParameterGroupStatus]
    #
    # @!attribute [rw] cache_subnet_group_name
    #   The name of the cache subnet group associated with the cluster.
    #   @return [String]
    #
    # @!attribute [rw] cache_nodes
    #   A list of cache nodes that are members of the cluster.
    #   @return [Array<Types::CacheNode>]
    #
    # @!attribute [rw] auto_minor_version_upgrade
    #   This parameter is currently disabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] security_groups
    #   A list of VPC Security Groups associated with the cluster.
    #   @return [Array<Types::SecurityGroupMembership>]
    #
    # @!attribute [rw] replication_group_id
    #   The replication group to which this cluster belongs. If this field
    #   is empty, the cluster is not associated with any replication group.
    #   @return [String]
    #
    # @!attribute [rw] snapshot_retention_limit
    #   The number of days for which ElastiCache retains automatic cluster
    #   snapshots before deleting them. For example, if you set
    #   `SnapshotRetentionLimit` to 5, a snapshot that was taken today is
    #   retained for 5 days before being deleted.
    #
    #   If the value of SnapshotRetentionLimit is set to zero (0), backups
    #   are turned off.
    #   @return [Integer]
    #
    # @!attribute [rw] snapshot_window
    #   The daily time range (in UTC) during which ElastiCache begins taking
    #   a daily snapshot of your cluster.
    #
    #   Example: `05:00-09:00`
    #   @return [String]
    #
    # @!attribute [rw] auth_token_enabled
    #   A flag that enables using an `AuthToken` (password) when issuing
    #   Redis commands.
    #
    #   Default: `false`
    #   @return [Boolean]
    #
    # @!attribute [rw] transit_encryption_enabled
    #   A flag that enables in-transit encryption when set to `true`.
    #
    #   You cannot modify the value of `TransitEncryptionEnabled` after the
    #   cluster is created. To enable in-transit encryption on a cluster you
    #   must set `TransitEncryptionEnabled` to `true` when you create a
    #   cluster.
    #
    #   **Required:** Only available when creating a replication group in an
    #   Amazon VPC using redis version `3.2.6` or `4.x`.
    #
    #   Default: `false`
    #   @return [Boolean]
    #
    # @!attribute [rw] at_rest_encryption_enabled
    #   A flag that enables encryption at-rest when set to `true`.
    #
    #   You cannot modify the value of `AtRestEncryptionEnabled` after the
    #   cluster is created. To enable at-rest encryption on a cluster you
    #   must set `AtRestEncryptionEnabled` to `true` when you create a
    #   cluster.
    #
    #   **Required:** Only available when creating a replication group in an
    #   Amazon VPC using redis version `3.2.6` or `4.x`.
    #
    #   Default: `false`
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/CacheCluster AWS API Documentation
    #
    class CacheCluster < Struct.new(
      :cache_cluster_id,
      :configuration_endpoint,
      :client_download_landing_page,
      :cache_node_type,
      :engine,
      :engine_version,
      :cache_cluster_status,
      :num_cache_nodes,
      :preferred_availability_zone,
      :cache_cluster_create_time,
      :preferred_maintenance_window,
      :pending_modified_values,
      :notification_configuration,
      :cache_security_groups,
      :cache_parameter_group,
      :cache_subnet_group_name,
      :cache_nodes,
      :auto_minor_version_upgrade,
      :security_groups,
      :replication_group_id,
      :snapshot_retention_limit,
      :snapshot_window,
      :auth_token_enabled,
      :transit_encryption_enabled,
      :at_rest_encryption_enabled)
      include Aws::Structure
    end

    # Represents the output of a `DescribeCacheClusters` operation.
    #
    # @!attribute [rw] marker
    #   Provides an identifier to allow retrieval of paginated results.
    #   @return [String]
    #
    # @!attribute [rw] cache_clusters
    #   A list of clusters. Each item in the list contains detailed
    #   information about one cluster.
    #   @return [Array<Types::CacheCluster>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/CacheClusterMessage AWS API Documentation
    #
    class CacheClusterMessage < Struct.new(
      :marker,
      :cache_clusters)
      include Aws::Structure
    end

    # Provides all of the details about a particular cache engine version.
    #
    # @!attribute [rw] engine
    #   The name of the cache engine.
    #   @return [String]
    #
    # @!attribute [rw] engine_version
    #   The version number of the cache engine.
    #   @return [String]
    #
    # @!attribute [rw] cache_parameter_group_family
    #   The name of the cache parameter group family associated with this
    #   cache engine.
    #
    #   Valid values are: `memcached1.4` \| `redis2.6` \| `redis2.8` \|
    #   `redis3.2` \| `redis4.0`
    #   @return [String]
    #
    # @!attribute [rw] cache_engine_description
    #   The description of the cache engine.
    #   @return [String]
    #
    # @!attribute [rw] cache_engine_version_description
    #   The description of the cache engine version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/CacheEngineVersion AWS API Documentation
    #
    class CacheEngineVersion < Struct.new(
      :engine,
      :engine_version,
      :cache_parameter_group_family,
      :cache_engine_description,
      :cache_engine_version_description)
      include Aws::Structure
    end

    # Represents the output of a DescribeCacheEngineVersions operation.
    #
    # @!attribute [rw] marker
    #   Provides an identifier to allow retrieval of paginated results.
    #   @return [String]
    #
    # @!attribute [rw] cache_engine_versions
    #   A list of cache engine version details. Each element in the list
    #   contains detailed information about one cache engine version.
    #   @return [Array<Types::CacheEngineVersion>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/CacheEngineVersionMessage AWS API Documentation
    #
    class CacheEngineVersionMessage < Struct.new(
      :marker,
      :cache_engine_versions)
      include Aws::Structure
    end

    # Represents an individual cache node within a cluster. Each cache node
    # runs its own instance of the cluster's protocol-compliant caching
    # software - either Memcached or Redis.
    #
    # The following node types are supported by ElastiCache. Generally
    # speaking, the current generation types provide more memory and
    # computational power at lower cost when compared to their equivalent
    # previous generation counterparts.
    #
    # * General purpose:
    #
    #   * Current generation:
    #
    #     **T2 node types:** `cache.t2.micro`, `cache.t2.small`,
    #     `cache.t2.medium`
    #
    #     **M3 node types:** `cache.m3.medium`, `cache.m3.large`,
    #     `cache.m3.xlarge`, `cache.m3.2xlarge`
    #
    #     **M4 node types:** `cache.m4.large`, `cache.m4.xlarge`,
    #     `cache.m4.2xlarge`, `cache.m4.4xlarge`, `cache.m4.10xlarge`
    #
    #   * Previous generation: (not recommended)
    #
    #     **T1 node types:** `cache.t1.micro`
    #
    #     **M1 node types:** `cache.m1.small`, `cache.m1.medium`,
    #     `cache.m1.large`, `cache.m1.xlarge`
    #
    # * Compute optimized:
    #
    #   * Previous generation: (not recommended)
    #
    #     **C1 node types:** `cache.c1.xlarge`
    #
    # * Memory optimized:
    #
    #   * Current generation:
    #
    #     **R3 node types:** `cache.r3.large`, `cache.r3.xlarge`,
    #     `cache.r3.2xlarge`, `cache.r3.4xlarge`, `cache.r3.8xlarge`
    #
    #     **R4 node types;** `cache.r4.large`, `cache.r4.xlarge`,
    #     `cache.r4.2xlarge`, `cache.r4.4xlarge`, `cache.r4.8xlarge`,
    #     `cache.r4.16xlarge`
    #
    #   * Previous generation: (not recommended)
    #
    #     **M2 node types:** `cache.m2.xlarge`, `cache.m2.2xlarge`,
    #     `cache.m2.4xlarge`
    #
    # **Notes:**
    #
    # * All T2 instances are created in an Amazon Virtual Private Cloud
    #   (Amazon VPC).
    #
    # * Redis (cluster mode disabled): Redis backup/restore is not supported
    #   on T1 and T2 instances.
    #
    # * Redis (cluster mode enabled): Backup/restore is not supported on T1
    #   instances.
    #
    # * Redis Append-only files (AOF) functionality is not supported for T1
    #   or T2 instances.
    #
    # For a complete listing of node types and specifications, see:
    #
    # * [Amazon ElastiCache Product Features and Details][1]
    #
    # * [Cache Node Type-Specific Parameters for Memcached][2]
    #
    # * [Cache Node Type-Specific Parameters for Redis][3]
    #
    #
    #
    # [1]: http://aws.amazon.com/elasticache/details
    # [2]: http://docs.aws.amazon.com/AmazonElastiCache/latest/mem-ug/ParameterGroups.Memcached.html#ParameterGroups.Memcached.NodeSpecific
    # [3]: http://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/ParameterGroups.Redis.html#ParameterGroups.Redis.NodeSpecific
    #
    # @!attribute [rw] cache_node_id
    #   The cache node identifier. A node ID is a numeric identifier (0001,
    #   0002, etc.). The combination of cluster ID and node ID uniquely
    #   identifies every cache node used in a customer's AWS account.
    #   @return [String]
    #
    # @!attribute [rw] cache_node_status
    #   The current state of this cache node.
    #   @return [String]
    #
    # @!attribute [rw] cache_node_create_time
    #   The date and time when the cache node was created.
    #   @return [Time]
    #
    # @!attribute [rw] endpoint
    #   The hostname for connecting to this cache node.
    #   @return [Types::Endpoint]
    #
    # @!attribute [rw] parameter_group_status
    #   The status of the parameter group applied to this cache node.
    #   @return [String]
    #
    # @!attribute [rw] source_cache_node_id
    #   The ID of the primary node to which this read replica node is
    #   synchronized. If this field is empty, this node is not associated
    #   with a primary cluster.
    #   @return [String]
    #
    # @!attribute [rw] customer_availability_zone
    #   The Availability Zone where this node was created and now resides.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/CacheNode AWS API Documentation
    #
    class CacheNode < Struct.new(
      :cache_node_id,
      :cache_node_status,
      :cache_node_create_time,
      :endpoint,
      :parameter_group_status,
      :source_cache_node_id,
      :customer_availability_zone)
      include Aws::Structure
    end

    # A parameter that has a different value for each cache node type it is
    # applied to. For example, in a Redis cluster, a `cache.m1.large` cache
    # node type would have a larger `maxmemory` value than a
    # `cache.m1.small` type.
    #
    # @!attribute [rw] parameter_name
    #   The name of the parameter.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the parameter.
    #   @return [String]
    #
    # @!attribute [rw] source
    #   The source of the parameter value.
    #   @return [String]
    #
    # @!attribute [rw] data_type
    #   The valid data type for the parameter.
    #   @return [String]
    #
    # @!attribute [rw] allowed_values
    #   The valid range of values for the parameter.
    #   @return [String]
    #
    # @!attribute [rw] is_modifiable
    #   Indicates whether (`true`) or not (`false`) the parameter can be
    #   modified. Some parameters have security or operational implications
    #   that prevent them from being changed.
    #   @return [Boolean]
    #
    # @!attribute [rw] minimum_engine_version
    #   The earliest cache engine version to which the parameter can apply.
    #   @return [String]
    #
    # @!attribute [rw] cache_node_type_specific_values
    #   A list of cache node types and their corresponding values for this
    #   parameter.
    #   @return [Array<Types::CacheNodeTypeSpecificValue>]
    #
    # @!attribute [rw] change_type
    #   Indicates whether a change to the parameter is applied immediately
    #   or requires a reboot for the change to be applied. You can force a
    #   reboot or wait until the next maintenance window's reboot. For more
    #   information, see [Rebooting a Cluster][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/Clusters.Rebooting.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/CacheNodeTypeSpecificParameter AWS API Documentation
    #
    class CacheNodeTypeSpecificParameter < Struct.new(
      :parameter_name,
      :description,
      :source,
      :data_type,
      :allowed_values,
      :is_modifiable,
      :minimum_engine_version,
      :cache_node_type_specific_values,
      :change_type)
      include Aws::Structure
    end

    # A value that applies only to a certain cache node type.
    #
    # @!attribute [rw] cache_node_type
    #   The cache node type for which this value applies.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value for the cache node type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/CacheNodeTypeSpecificValue AWS API Documentation
    #
    class CacheNodeTypeSpecificValue < Struct.new(
      :cache_node_type,
      :value)
      include Aws::Structure
    end

    # Represents the output of a `CreateCacheParameterGroup` operation.
    #
    # @!attribute [rw] cache_parameter_group_name
    #   The name of the cache parameter group.
    #   @return [String]
    #
    # @!attribute [rw] cache_parameter_group_family
    #   The name of the cache parameter group family that this cache
    #   parameter group is compatible with.
    #
    #   Valid values are: `memcached1.4` \| `redis2.6` \| `redis2.8` \|
    #   `redis3.2` \| `redis4.0`
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description for this cache parameter group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/CacheParameterGroup AWS API Documentation
    #
    class CacheParameterGroup < Struct.new(
      :cache_parameter_group_name,
      :cache_parameter_group_family,
      :description)
      include Aws::Structure
    end

    # Represents the output of a `DescribeCacheParameters` operation.
    #
    # @!attribute [rw] marker
    #   Provides an identifier to allow retrieval of paginated results.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   A list of Parameter instances.
    #   @return [Array<Types::Parameter>]
    #
    # @!attribute [rw] cache_node_type_specific_parameters
    #   A list of parameters specific to a particular cache node type. Each
    #   element in the list contains detailed information about one
    #   parameter.
    #   @return [Array<Types::CacheNodeTypeSpecificParameter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/CacheParameterGroupDetails AWS API Documentation
    #
    class CacheParameterGroupDetails < Struct.new(
      :marker,
      :parameters,
      :cache_node_type_specific_parameters)
      include Aws::Structure
    end

    # Represents the output of one of the following operations:
    #
    # * `ModifyCacheParameterGroup`
    #
    # * `ResetCacheParameterGroup`
    #
    # @!attribute [rw] cache_parameter_group_name
    #   The name of the cache parameter group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/CacheParameterGroupNameMessage AWS API Documentation
    #
    class CacheParameterGroupNameMessage < Struct.new(
      :cache_parameter_group_name)
      include Aws::Structure
    end

    # Status of the cache parameter group.
    #
    # @!attribute [rw] cache_parameter_group_name
    #   The name of the cache parameter group.
    #   @return [String]
    #
    # @!attribute [rw] parameter_apply_status
    #   The status of parameter updates.
    #   @return [String]
    #
    # @!attribute [rw] cache_node_ids_to_reboot
    #   A list of the cache node IDs which need to be rebooted for parameter
    #   changes to be applied. A node ID is a numeric identifier (0001,
    #   0002, etc.).
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/CacheParameterGroupStatus AWS API Documentation
    #
    class CacheParameterGroupStatus < Struct.new(
      :cache_parameter_group_name,
      :parameter_apply_status,
      :cache_node_ids_to_reboot)
      include Aws::Structure
    end

    # Represents the output of a `DescribeCacheParameterGroups` operation.
    #
    # @!attribute [rw] marker
    #   Provides an identifier to allow retrieval of paginated results.
    #   @return [String]
    #
    # @!attribute [rw] cache_parameter_groups
    #   A list of cache parameter groups. Each element in the list contains
    #   detailed information about one cache parameter group.
    #   @return [Array<Types::CacheParameterGroup>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/CacheParameterGroupsMessage AWS API Documentation
    #
    class CacheParameterGroupsMessage < Struct.new(
      :marker,
      :cache_parameter_groups)
      include Aws::Structure
    end

    # Represents the output of one of the following operations:
    #
    # * `AuthorizeCacheSecurityGroupIngress`
    #
    # * `CreateCacheSecurityGroup`
    #
    # * `RevokeCacheSecurityGroupIngress`
    #
    # @!attribute [rw] owner_id
    #   The AWS account ID of the cache security group owner.
    #   @return [String]
    #
    # @!attribute [rw] cache_security_group_name
    #   The name of the cache security group.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the cache security group.
    #   @return [String]
    #
    # @!attribute [rw] ec2_security_groups
    #   A list of Amazon EC2 security groups that are associated with this
    #   cache security group.
    #   @return [Array<Types::EC2SecurityGroup>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/CacheSecurityGroup AWS API Documentation
    #
    class CacheSecurityGroup < Struct.new(
      :owner_id,
      :cache_security_group_name,
      :description,
      :ec2_security_groups)
      include Aws::Structure
    end

    # Represents a cluster's status within a particular cache security
    # group.
    #
    # @!attribute [rw] cache_security_group_name
    #   The name of the cache security group.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The membership status in the cache security group. The status
    #   changes when a cache security group is modified, or when the cache
    #   security groups assigned to a cluster are modified.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/CacheSecurityGroupMembership AWS API Documentation
    #
    class CacheSecurityGroupMembership < Struct.new(
      :cache_security_group_name,
      :status)
      include Aws::Structure
    end

    # Represents the output of a `DescribeCacheSecurityGroups` operation.
    #
    # @!attribute [rw] marker
    #   Provides an identifier to allow retrieval of paginated results.
    #   @return [String]
    #
    # @!attribute [rw] cache_security_groups
    #   A list of cache security groups. Each element in the list contains
    #   detailed information about one group.
    #   @return [Array<Types::CacheSecurityGroup>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/CacheSecurityGroupMessage AWS API Documentation
    #
    class CacheSecurityGroupMessage < Struct.new(
      :marker,
      :cache_security_groups)
      include Aws::Structure
    end

    # Represents the output of one of the following operations:
    #
    # * `CreateCacheSubnetGroup`
    #
    # * `ModifyCacheSubnetGroup`
    #
    # @!attribute [rw] cache_subnet_group_name
    #   The name of the cache subnet group.
    #   @return [String]
    #
    # @!attribute [rw] cache_subnet_group_description
    #   The description of the cache subnet group.
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   The Amazon Virtual Private Cloud identifier (VPC ID) of the cache
    #   subnet group.
    #   @return [String]
    #
    # @!attribute [rw] subnets
    #   A list of subnets associated with the cache subnet group.
    #   @return [Array<Types::Subnet>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/CacheSubnetGroup AWS API Documentation
    #
    class CacheSubnetGroup < Struct.new(
      :cache_subnet_group_name,
      :cache_subnet_group_description,
      :vpc_id,
      :subnets)
      include Aws::Structure
    end

    # Represents the output of a `DescribeCacheSubnetGroups` operation.
    #
    # @!attribute [rw] marker
    #   Provides an identifier to allow retrieval of paginated results.
    #   @return [String]
    #
    # @!attribute [rw] cache_subnet_groups
    #   A list of cache subnet groups. Each element in the list contains
    #   detailed information about one group.
    #   @return [Array<Types::CacheSubnetGroup>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/CacheSubnetGroupMessage AWS API Documentation
    #
    class CacheSubnetGroupMessage < Struct.new(
      :marker,
      :cache_subnet_groups)
      include Aws::Structure
    end

    # Node group (shard) configuration options when adding or removing
    # replicas. Each node group (shard) configuration has the following
    # members: NodeGroupId, NewReplicaCount, and PreferredAvailabilityZones.
    #
    # @note When making an API call, you may pass ConfigureShard
    #   data as a hash:
    #
    #       {
    #         node_group_id: "AllowedNodeGroupId", # required
    #         new_replica_count: 1, # required
    #         preferred_availability_zones: ["String"],
    #       }
    #
    # @!attribute [rw] node_group_id
    #   The 4-digit id for the node group you are configuring. For Redis
    #   (cluster mode disabled) replication groups, the node group id is
    #   always 0001. To find a Redis (cluster mode enabled)'s node group's
    #   (shard's) id, see [Finding a Shard's Id][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/shard-find-id.html
    #   @return [String]
    #
    # @!attribute [rw] new_replica_count
    #   The number of replicas you want in this node group at the end of
    #   this operation. The maximum value for `NewReplicaCount` is 5. The
    #   minimum value depends upon the type of Redis replication group you
    #   are working with.
    #
    #   The minimum number of replicas in a shard or replication group is:
    #
    #   * Redis (cluster mode disabled)
    #
    #     * If Multi-AZ with Automatic Failover is enabled: 1
    #
    #     * If Multi-AZ with Automatic Failover is not enable: 0
    #
    #   * Redis (cluster mode enabled): 0 (though you will not be able to
    #     failover to a replica if your primary node fails)
    #   @return [Integer]
    #
    # @!attribute [rw] preferred_availability_zones
    #   A list of `PreferredAvailabilityZone` strings that specify which
    #   availability zones the replication group's nodes are to be in. The
    #   nummber of `PreferredAvailabilityZone` values must equal the value
    #   of `NewReplicaCount` plus 1 to account for the primary node. If this
    #   member of `ReplicaConfiguration` is omitted, ElastiCache for Redis
    #   selects the availability zone for each of the replicas.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/ConfigureShard AWS API Documentation
    #
    class ConfigureShard < Struct.new(
      :node_group_id,
      :new_replica_count,
      :preferred_availability_zones)
      include Aws::Structure
    end

    # Represents the input of a `CopySnapshotMessage` operation.
    #
    # @note When making an API call, you may pass CopySnapshotMessage
    #   data as a hash:
    #
    #       {
    #         source_snapshot_name: "String", # required
    #         target_snapshot_name: "String", # required
    #         target_bucket: "String",
    #       }
    #
    # @!attribute [rw] source_snapshot_name
    #   The name of an existing snapshot from which to make a copy.
    #   @return [String]
    #
    # @!attribute [rw] target_snapshot_name
    #   A name for the snapshot copy. ElastiCache does not permit
    #   overwriting a snapshot, therefore this name must be unique within
    #   its context - ElastiCache or an Amazon S3 bucket if exporting.
    #   @return [String]
    #
    # @!attribute [rw] target_bucket
    #   The Amazon S3 bucket to which the snapshot is exported. This
    #   parameter is used only when exporting a snapshot for external
    #   access.
    #
    #   When using this parameter to export a snapshot, be sure Amazon
    #   ElastiCache has the needed permissions to this S3 bucket. For more
    #   information, see [Step 2: Grant ElastiCache Access to Your Amazon S3
    #   Bucket][1] in the *Amazon ElastiCache User Guide*.
    #
    #   For more information, see [Exporting a Snapshot][2] in the *Amazon
    #   ElastiCache User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/Snapshots.Exporting.html#Snapshots.Exporting.GrantAccess
    #   [2]: http://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/Snapshots.Exporting.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/CopySnapshotMessage AWS API Documentation
    #
    class CopySnapshotMessage < Struct.new(
      :source_snapshot_name,
      :target_snapshot_name,
      :target_bucket)
      include Aws::Structure
    end

    # @!attribute [rw] snapshot
    #   Represents a copy of an entire Redis cluster as of the time when the
    #   snapshot was taken.
    #   @return [Types::Snapshot]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/CopySnapshotResult AWS API Documentation
    #
    class CopySnapshotResult < Struct.new(
      :snapshot)
      include Aws::Structure
    end

    # Represents the input of a CreateCacheCluster operation.
    #
    # @note When making an API call, you may pass CreateCacheClusterMessage
    #   data as a hash:
    #
    #       {
    #         cache_cluster_id: "String", # required
    #         replication_group_id: "String",
    #         az_mode: "single-az", # accepts single-az, cross-az
    #         preferred_availability_zone: "String",
    #         preferred_availability_zones: ["String"],
    #         num_cache_nodes: 1,
    #         cache_node_type: "String",
    #         engine: "String",
    #         engine_version: "String",
    #         cache_parameter_group_name: "String",
    #         cache_subnet_group_name: "String",
    #         cache_security_group_names: ["String"],
    #         security_group_ids: ["String"],
    #         tags: [
    #           {
    #             key: "String",
    #             value: "String",
    #           },
    #         ],
    #         snapshot_arns: ["String"],
    #         snapshot_name: "String",
    #         preferred_maintenance_window: "String",
    #         port: 1,
    #         notification_topic_arn: "String",
    #         auto_minor_version_upgrade: false,
    #         snapshot_retention_limit: 1,
    #         snapshot_window: "String",
    #         auth_token: "String",
    #       }
    #
    # @!attribute [rw] cache_cluster_id
    #   The node group (shard) identifier. This parameter is stored as a
    #   lowercase string.
    #
    #   **Constraints:**
    #
    #   * A name must contain from 1 to 20 alphanumeric characters or
    #     hyphens.
    #
    #   * The first character must be a letter.
    #
    #   * A name cannot end with a hyphen or contain two consecutive
    #     hyphens.
    #   @return [String]
    #
    # @!attribute [rw] replication_group_id
    #   The ID of the replication group to which this cluster should belong.
    #   If this parameter is specified, the cluster is added to the
    #   specified replication group as a read replica; otherwise, the
    #   cluster is a standalone primary that is not part of any replication
    #   group.
    #
    #   If the specified replication group is Multi-AZ enabled and the
    #   Availability Zone is not specified, the cluster is created in
    #   Availability Zones that provide the best spread of read replicas
    #   across Availability Zones.
    #
    #   <note markdown="1"> This parameter is only valid if the `Engine` parameter is `redis`.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] az_mode
    #   Specifies whether the nodes in this Memcached cluster are created in
    #   a single Availability Zone or created across multiple Availability
    #   Zones in the cluster's region.
    #
    #   This parameter is only supported for Memcached clusters.
    #
    #   If the `AZMode` and `PreferredAvailabilityZones` are not specified,
    #   ElastiCache assumes `single-az` mode.
    #   @return [String]
    #
    # @!attribute [rw] preferred_availability_zone
    #   The EC2 Availability Zone in which the cluster is created.
    #
    #   All nodes belonging to this Memcached cluster are placed in the
    #   preferred Availability Zone. If you want to create your nodes across
    #   multiple Availability Zones, use `PreferredAvailabilityZones`.
    #
    #   Default: System chosen Availability Zone.
    #   @return [String]
    #
    # @!attribute [rw] preferred_availability_zones
    #   A list of the Availability Zones in which cache nodes are created.
    #   The order of the zones in the list is not important.
    #
    #   This option is only supported on Memcached.
    #
    #   <note markdown="1"> If you are creating your cluster in an Amazon VPC (recommended) you
    #   can only locate nodes in Availability Zones that are associated with
    #   the subnets in the selected subnet group.
    #
    #    The number of Availability Zones listed must equal the value of
    #   `NumCacheNodes`.
    #
    #    </note>
    #
    #   If you want all the nodes in the same Availability Zone, use
    #   `PreferredAvailabilityZone` instead, or repeat the Availability Zone
    #   multiple times in the list.
    #
    #   Default: System chosen Availability Zones.
    #   @return [Array<String>]
    #
    # @!attribute [rw] num_cache_nodes
    #   The initial number of cache nodes that the cluster has.
    #
    #   For clusters running Redis, this value must be 1. For clusters
    #   running Memcached, this value must be between 1 and 20.
    #
    #   If you need more than 20 nodes for your Memcached cluster, please
    #   fill out the ElastiCache Limit Increase Request form at
    #   [http://aws.amazon.com/contact-us/elasticache-node-limit-request/][1].
    #
    #
    #
    #   [1]: http://aws.amazon.com/contact-us/elasticache-node-limit-request/
    #   @return [Integer]
    #
    # @!attribute [rw] cache_node_type
    #   The compute and memory capacity of the nodes in the node group
    #   (shard).
    #
    #   The following node types are supported by ElastiCache. Generally
    #   speaking, the current generation types provide more memory and
    #   computational power at lower cost when compared to their equivalent
    #   previous generation counterparts.
    #
    #   * General purpose:
    #
    #     * Current generation:
    #
    #       **T2 node types:** `cache.t2.micro`, `cache.t2.small`,
    #       `cache.t2.medium`
    #
    #       **M3 node types:** `cache.m3.medium`, `cache.m3.large`,
    #       `cache.m3.xlarge`, `cache.m3.2xlarge`
    #
    #       **M4 node types:** `cache.m4.large`, `cache.m4.xlarge`,
    #       `cache.m4.2xlarge`, `cache.m4.4xlarge`, `cache.m4.10xlarge`
    #
    #     * Previous generation: (not recommended)
    #
    #       **T1 node types:** `cache.t1.micro`
    #
    #       **M1 node types:** `cache.m1.small`, `cache.m1.medium`,
    #       `cache.m1.large`, `cache.m1.xlarge`
    #
    #   * Compute optimized:
    #
    #     * Previous generation: (not recommended)
    #
    #       **C1 node types:** `cache.c1.xlarge`
    #
    #   * Memory optimized:
    #
    #     * Current generation:
    #
    #       **R3 node types:** `cache.r3.large`, `cache.r3.xlarge`,
    #       `cache.r3.2xlarge`, `cache.r3.4xlarge`, `cache.r3.8xlarge`
    #
    #       **R4 node types;** `cache.r4.large`, `cache.r4.xlarge`,
    #       `cache.r4.2xlarge`, `cache.r4.4xlarge`, `cache.r4.8xlarge`,
    #       `cache.r4.16xlarge`
    #
    #     * Previous generation: (not recommended)
    #
    #       **M2 node types:** `cache.m2.xlarge`, `cache.m2.2xlarge`,
    #       `cache.m2.4xlarge`
    #
    #   **Notes:**
    #
    #   * All T2 instances are created in an Amazon Virtual Private Cloud
    #     (Amazon VPC).
    #
    #   * Redis (cluster mode disabled): Redis backup/restore is not
    #     supported on T1 and T2 instances.
    #
    #   * Redis (cluster mode enabled): Backup/restore is not supported on
    #     T1 instances.
    #
    #   * Redis Append-only files (AOF) functionality is not supported for
    #     T1 or T2 instances.
    #
    #   For a complete listing of node types and specifications, see:
    #
    #   * [Amazon ElastiCache Product Features and Details][1]
    #
    #   * [Cache Node Type-Specific Parameters for Memcached][2]
    #
    #   * [Cache Node Type-Specific Parameters for Redis][3]
    #
    #
    #
    #   [1]: http://aws.amazon.com/elasticache/details
    #   [2]: http://docs.aws.amazon.com/AmazonElastiCache/latest/mem-ug/ParameterGroups.Memcached.html#ParameterGroups.Memcached.NodeSpecific
    #   [3]: http://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/ParameterGroups.Redis.html#ParameterGroups.Redis.NodeSpecific
    #   @return [String]
    #
    # @!attribute [rw] engine
    #   The name of the cache engine to be used for this cluster.
    #
    #   Valid values for this parameter are: `memcached` \| `redis`
    #   @return [String]
    #
    # @!attribute [rw] engine_version
    #   The version number of the cache engine to be used for this cluster.
    #   To view the supported cache engine versions, use the
    #   DescribeCacheEngineVersions operation.
    #
    #   **Important:** You can upgrade to a newer engine version (see
    #   [Selecting a Cache Engine and Version][1]), but you cannot downgrade
    #   to an earlier engine version. If you want to use an earlier engine
    #   version, you must delete the existing cluster or replication group
    #   and create it anew with the earlier engine version.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/SelectEngine.html#VersionManagement
    #   @return [String]
    #
    # @!attribute [rw] cache_parameter_group_name
    #   The name of the parameter group to associate with this cluster. If
    #   this argument is omitted, the default parameter group for the
    #   specified engine is used. You cannot use any parameter group which
    #   has `cluster-enabled='yes'` when creating a cluster.
    #   @return [String]
    #
    # @!attribute [rw] cache_subnet_group_name
    #   The name of the subnet group to be used for the cluster.
    #
    #   Use this parameter only when you are creating a cluster in an Amazon
    #   Virtual Private Cloud (Amazon VPC).
    #
    #   If you're going to launch your cluster in an Amazon VPC, you need
    #   to create a subnet group before you start creating a cluster. For
    #   more information, see [Subnets and Subnet Groups][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/SubnetGroups.html
    #   @return [String]
    #
    # @!attribute [rw] cache_security_group_names
    #   A list of security group names to associate with this cluster.
    #
    #   Use this parameter only when you are creating a cluster outside of
    #   an Amazon Virtual Private Cloud (Amazon VPC).
    #   @return [Array<String>]
    #
    # @!attribute [rw] security_group_ids
    #   One or more VPC security groups associated with the cluster.
    #
    #   Use this parameter only when you are creating a cluster in an Amazon
    #   Virtual Private Cloud (Amazon VPC).
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   A list of cost allocation tags to be added to this resource.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] snapshot_arns
    #   A single-element string list containing an Amazon Resource Name
    #   (ARN) that uniquely identifies a Redis RDB snapshot file stored in
    #   Amazon S3. The snapshot file is used to populate the node group
    #   (shard). The Amazon S3 object name in the ARN cannot contain any
    #   commas.
    #
    #   <note markdown="1"> This parameter is only valid if the `Engine` parameter is `redis`.
    #
    #    </note>
    #
    #   Example of an Amazon S3 ARN: `arn:aws:s3:::my_bucket/snapshot1.rdb`
    #   @return [Array<String>]
    #
    # @!attribute [rw] snapshot_name
    #   The name of a Redis snapshot from which to restore data into the new
    #   node group (shard). The snapshot status changes to `restoring` while
    #   the new node group (shard) is being created.
    #
    #   <note markdown="1"> This parameter is only valid if the `Engine` parameter is `redis`.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] preferred_maintenance_window
    #   Specifies the weekly time range during which maintenance on the
    #   cluster is performed. It is specified as a range in the format
    #   ddd:hh24:mi-ddd:hh24:mi (24H Clock UTC). The minimum maintenance
    #   window is a 60 minute period. Valid values for `ddd` are:
    #
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
    #   The port number on which each of the cache nodes accepts
    #   connections.
    #   @return [Integer]
    #
    # @!attribute [rw] notification_topic_arn
    #   The Amazon Resource Name (ARN) of the Amazon Simple Notification
    #   Service (SNS) topic to which notifications are sent.
    #
    #   <note markdown="1"> The Amazon SNS topic owner must be the same as the cluster owner.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] auto_minor_version_upgrade
    #   This parameter is currently disabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] snapshot_retention_limit
    #   The number of days for which ElastiCache retains automatic snapshots
    #   before deleting them. For example, if you set
    #   `SnapshotRetentionLimit` to 5, a snapshot taken today is retained
    #   for 5 days before being deleted.
    #
    #   <note markdown="1"> This parameter is only valid if the `Engine` parameter is `redis`.
    #
    #    </note>
    #
    #   Default: 0 (i.e., automatic backups are disabled for this cache
    #   cluster).
    #   @return [Integer]
    #
    # @!attribute [rw] snapshot_window
    #   The daily time range (in UTC) during which ElastiCache begins taking
    #   a daily snapshot of your node group (shard).
    #
    #   Example: `05:00-09:00`
    #
    #   If you do not specify this parameter, ElastiCache automatically
    #   chooses an appropriate time range.
    #
    #   <note markdown="1"> This parameter is only valid if the `Engine` parameter is `redis`.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] auth_token
    #   **Reserved parameter.** The password used to access a password
    #   protected server.
    #
    #   Password constraints:
    #
    #   * Must be only printable ASCII characters.
    #
    #   * Must be at least 16 characters and no more than 128 characters in
    #     length.
    #
    #   * Cannot contain any of the following characters: '/', '"', or
    #     '@'.
    #
    #   For more information, see [AUTH password][1] at
    #   http://redis.io/commands/AUTH.
    #
    #
    #
    #   [1]: http://redis.io/commands/AUTH
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/CreateCacheClusterMessage AWS API Documentation
    #
    class CreateCacheClusterMessage < Struct.new(
      :cache_cluster_id,
      :replication_group_id,
      :az_mode,
      :preferred_availability_zone,
      :preferred_availability_zones,
      :num_cache_nodes,
      :cache_node_type,
      :engine,
      :engine_version,
      :cache_parameter_group_name,
      :cache_subnet_group_name,
      :cache_security_group_names,
      :security_group_ids,
      :tags,
      :snapshot_arns,
      :snapshot_name,
      :preferred_maintenance_window,
      :port,
      :notification_topic_arn,
      :auto_minor_version_upgrade,
      :snapshot_retention_limit,
      :snapshot_window,
      :auth_token)
      include Aws::Structure
    end

    # @!attribute [rw] cache_cluster
    #   Contains all of the attributes of a specific cluster.
    #   @return [Types::CacheCluster]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/CreateCacheClusterResult AWS API Documentation
    #
    class CreateCacheClusterResult < Struct.new(
      :cache_cluster)
      include Aws::Structure
    end

    # Represents the input of a `CreateCacheParameterGroup` operation.
    #
    # @note When making an API call, you may pass CreateCacheParameterGroupMessage
    #   data as a hash:
    #
    #       {
    #         cache_parameter_group_name: "String", # required
    #         cache_parameter_group_family: "String", # required
    #         description: "String", # required
    #       }
    #
    # @!attribute [rw] cache_parameter_group_name
    #   A user-specified name for the cache parameter group.
    #   @return [String]
    #
    # @!attribute [rw] cache_parameter_group_family
    #   The name of the cache parameter group family that the cache
    #   parameter group can be used with.
    #
    #   Valid values are: `memcached1.4` \| `redis2.6` \| `redis2.8` \|
    #   `redis3.2` \| `redis4.0`
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A user-specified description for the cache parameter group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/CreateCacheParameterGroupMessage AWS API Documentation
    #
    class CreateCacheParameterGroupMessage < Struct.new(
      :cache_parameter_group_name,
      :cache_parameter_group_family,
      :description)
      include Aws::Structure
    end

    # @!attribute [rw] cache_parameter_group
    #   Represents the output of a `CreateCacheParameterGroup` operation.
    #   @return [Types::CacheParameterGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/CreateCacheParameterGroupResult AWS API Documentation
    #
    class CreateCacheParameterGroupResult < Struct.new(
      :cache_parameter_group)
      include Aws::Structure
    end

    # Represents the input of a `CreateCacheSecurityGroup` operation.
    #
    # @note When making an API call, you may pass CreateCacheSecurityGroupMessage
    #   data as a hash:
    #
    #       {
    #         cache_security_group_name: "String", # required
    #         description: "String", # required
    #       }
    #
    # @!attribute [rw] cache_security_group_name
    #   A name for the cache security group. This value is stored as a
    #   lowercase string.
    #
    #   Constraints: Must contain no more than 255 alphanumeric characters.
    #   Cannot be the word "Default".
    #
    #   Example: `mysecuritygroup`
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description for the cache security group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/CreateCacheSecurityGroupMessage AWS API Documentation
    #
    class CreateCacheSecurityGroupMessage < Struct.new(
      :cache_security_group_name,
      :description)
      include Aws::Structure
    end

    # @!attribute [rw] cache_security_group
    #   Represents the output of one of the following operations:
    #
    #   * `AuthorizeCacheSecurityGroupIngress`
    #
    #   * `CreateCacheSecurityGroup`
    #
    #   * `RevokeCacheSecurityGroupIngress`
    #   @return [Types::CacheSecurityGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/CreateCacheSecurityGroupResult AWS API Documentation
    #
    class CreateCacheSecurityGroupResult < Struct.new(
      :cache_security_group)
      include Aws::Structure
    end

    # Represents the input of a `CreateCacheSubnetGroup` operation.
    #
    # @note When making an API call, you may pass CreateCacheSubnetGroupMessage
    #   data as a hash:
    #
    #       {
    #         cache_subnet_group_name: "String", # required
    #         cache_subnet_group_description: "String", # required
    #         subnet_ids: ["String"], # required
    #       }
    #
    # @!attribute [rw] cache_subnet_group_name
    #   A name for the cache subnet group. This value is stored as a
    #   lowercase string.
    #
    #   Constraints: Must contain no more than 255 alphanumeric characters
    #   or hyphens.
    #
    #   Example: `mysubnetgroup`
    #   @return [String]
    #
    # @!attribute [rw] cache_subnet_group_description
    #   A description for the cache subnet group.
    #   @return [String]
    #
    # @!attribute [rw] subnet_ids
    #   A list of VPC subnet IDs for the cache subnet group.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/CreateCacheSubnetGroupMessage AWS API Documentation
    #
    class CreateCacheSubnetGroupMessage < Struct.new(
      :cache_subnet_group_name,
      :cache_subnet_group_description,
      :subnet_ids)
      include Aws::Structure
    end

    # @!attribute [rw] cache_subnet_group
    #   Represents the output of one of the following operations:
    #
    #   * `CreateCacheSubnetGroup`
    #
    #   * `ModifyCacheSubnetGroup`
    #   @return [Types::CacheSubnetGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/CreateCacheSubnetGroupResult AWS API Documentation
    #
    class CreateCacheSubnetGroupResult < Struct.new(
      :cache_subnet_group)
      include Aws::Structure
    end

    # Represents the input of a `CreateReplicationGroup` operation.
    #
    # @note When making an API call, you may pass CreateReplicationGroupMessage
    #   data as a hash:
    #
    #       {
    #         replication_group_id: "String", # required
    #         replication_group_description: "String", # required
    #         primary_cluster_id: "String",
    #         automatic_failover_enabled: false,
    #         num_cache_clusters: 1,
    #         preferred_cache_cluster_a_zs: ["String"],
    #         num_node_groups: 1,
    #         replicas_per_node_group: 1,
    #         node_group_configuration: [
    #           {
    #             node_group_id: "AllowedNodeGroupId",
    #             slots: "String",
    #             replica_count: 1,
    #             primary_availability_zone: "String",
    #             replica_availability_zones: ["String"],
    #           },
    #         ],
    #         cache_node_type: "String",
    #         engine: "String",
    #         engine_version: "String",
    #         cache_parameter_group_name: "String",
    #         cache_subnet_group_name: "String",
    #         cache_security_group_names: ["String"],
    #         security_group_ids: ["String"],
    #         tags: [
    #           {
    #             key: "String",
    #             value: "String",
    #           },
    #         ],
    #         snapshot_arns: ["String"],
    #         snapshot_name: "String",
    #         preferred_maintenance_window: "String",
    #         port: 1,
    #         notification_topic_arn: "String",
    #         auto_minor_version_upgrade: false,
    #         snapshot_retention_limit: 1,
    #         snapshot_window: "String",
    #         auth_token: "String",
    #         transit_encryption_enabled: false,
    #         at_rest_encryption_enabled: false,
    #       }
    #
    # @!attribute [rw] replication_group_id
    #   The replication group identifier. This parameter is stored as a
    #   lowercase string.
    #
    #   Constraints:
    #
    #   * A name must contain from 1 to 20 alphanumeric characters or
    #     hyphens.
    #
    #   * The first character must be a letter.
    #
    #   * A name cannot end with a hyphen or contain two consecutive
    #     hyphens.
    #   @return [String]
    #
    # @!attribute [rw] replication_group_description
    #   A user-created description for the replication group.
    #   @return [String]
    #
    # @!attribute [rw] primary_cluster_id
    #   The identifier of the cluster that serves as the primary for this
    #   replication group. This cluster must already exist and have a status
    #   of `available`.
    #
    #   This parameter is not required if `NumCacheClusters`,
    #   `NumNodeGroups`, or `ReplicasPerNodeGroup` is specified.
    #   @return [String]
    #
    # @!attribute [rw] automatic_failover_enabled
    #   Specifies whether a read-only replica is automatically promoted to
    #   read/write primary if the existing primary fails.
    #
    #   If `true`, Multi-AZ is enabled for this replication group. If
    #   `false`, Multi-AZ is disabled for this replication group.
    #
    #   `AutomaticFailoverEnabled` must be enabled for Redis (cluster mode
    #   enabled) replication groups.
    #
    #   Default: false
    #
    #   Amazon ElastiCache for Redis does not support Multi-AZ with
    #   automatic failover on:
    #
    #   * Redis versions earlier than 2.8.6.
    #
    #   * Redis (cluster mode disabled): T1 and T2 cache node types.
    #
    #   * Redis (cluster mode enabled): T1 node types.
    #   @return [Boolean]
    #
    # @!attribute [rw] num_cache_clusters
    #   The number of clusters this replication group initially has.
    #
    #   This parameter is not used if there is more than one node group
    #   (shard). You should use `ReplicasPerNodeGroup` instead.
    #
    #   If `AutomaticFailoverEnabled` is `true`, the value of this parameter
    #   must be at least 2. If `AutomaticFailoverEnabled` is `false` you can
    #   omit this parameter (it will default to 1), or you can explicitly
    #   set it to a value between 2 and 6.
    #
    #   The maximum permitted value for `NumCacheClusters` is 6 (1 primary
    #   plus 5 replicas).
    #   @return [Integer]
    #
    # @!attribute [rw] preferred_cache_cluster_a_zs
    #   A list of EC2 Availability Zones in which the replication group's
    #   clusters are created. The order of the Availability Zones in the
    #   list is the order in which clusters are allocated. The primary
    #   cluster is created in the first AZ in the list.
    #
    #   This parameter is not used if there is more than one node group
    #   (shard). You should use `NodeGroupConfiguration` instead.
    #
    #   <note markdown="1"> If you are creating your replication group in an Amazon VPC
    #   (recommended), you can only locate clusters in Availability Zones
    #   associated with the subnets in the selected subnet group.
    #
    #    The number of Availability Zones listed must equal the value of
    #   `NumCacheClusters`.
    #
    #    </note>
    #
    #   Default: system chosen Availability Zones.
    #   @return [Array<String>]
    #
    # @!attribute [rw] num_node_groups
    #   An optional parameter that specifies the number of node groups
    #   (shards) for this Redis (cluster mode enabled) replication group.
    #   For Redis (cluster mode disabled) either omit this parameter or set
    #   it to 1.
    #
    #   Default: 1
    #   @return [Integer]
    #
    # @!attribute [rw] replicas_per_node_group
    #   An optional parameter that specifies the number of replica nodes in
    #   each node group (shard). Valid values are 0 to 5.
    #   @return [Integer]
    #
    # @!attribute [rw] node_group_configuration
    #   A list of node group (shard) configuration options. Each node group
    #   (shard) configuration has the following members:
    #   `PrimaryAvailabilityZone`, `ReplicaAvailabilityZones`,
    #   `ReplicaCount`, and `Slots`.
    #
    #   If you're creating a Redis (cluster mode disabled) or a Redis
    #   (cluster mode enabled) replication group, you can use this parameter
    #   to individually configure each node group (shard), or you can omit
    #   this parameter. However, when seeding a Redis (cluster mode enabled)
    #   cluster from a S3 rdb file, you must configure each node group
    #   (shard) using this parameter because you must specify the slots for
    #   each node group.
    #   @return [Array<Types::NodeGroupConfiguration>]
    #
    # @!attribute [rw] cache_node_type
    #   The compute and memory capacity of the nodes in the node group
    #   (shard).
    #
    #   The following node types are supported by ElastiCache. Generally
    #   speaking, the current generation types provide more memory and
    #   computational power at lower cost when compared to their equivalent
    #   previous generation counterparts.
    #
    #   * General purpose:
    #
    #     * Current generation:
    #
    #       **T2 node types:** `cache.t2.micro`, `cache.t2.small`,
    #       `cache.t2.medium`
    #
    #       **M3 node types:** `cache.m3.medium`, `cache.m3.large`,
    #       `cache.m3.xlarge`, `cache.m3.2xlarge`
    #
    #       **M4 node types:** `cache.m4.large`, `cache.m4.xlarge`,
    #       `cache.m4.2xlarge`, `cache.m4.4xlarge`, `cache.m4.10xlarge`
    #
    #     * Previous generation: (not recommended)
    #
    #       **T1 node types:** `cache.t1.micro`
    #
    #       **M1 node types:** `cache.m1.small`, `cache.m1.medium`,
    #       `cache.m1.large`, `cache.m1.xlarge`
    #
    #   * Compute optimized:
    #
    #     * Previous generation: (not recommended)
    #
    #       **C1 node types:** `cache.c1.xlarge`
    #
    #   * Memory optimized:
    #
    #     * Current generation:
    #
    #       **R3 node types:** `cache.r3.large`, `cache.r3.xlarge`,
    #       `cache.r3.2xlarge`, `cache.r3.4xlarge`, `cache.r3.8xlarge`
    #
    #       **R4 node types;** `cache.r4.large`, `cache.r4.xlarge`,
    #       `cache.r4.2xlarge`, `cache.r4.4xlarge`, `cache.r4.8xlarge`,
    #       `cache.r4.16xlarge`
    #
    #     * Previous generation: (not recommended)
    #
    #       **M2 node types:** `cache.m2.xlarge`, `cache.m2.2xlarge`,
    #       `cache.m2.4xlarge`
    #
    #   **Notes:**
    #
    #   * All T2 instances are created in an Amazon Virtual Private Cloud
    #     (Amazon VPC).
    #
    #   * Redis (cluster mode disabled): Redis backup/restore is not
    #     supported on T1 and T2 instances.
    #
    #   * Redis (cluster mode enabled): Backup/restore is not supported on
    #     T1 instances.
    #
    #   * Redis Append-only files (AOF) functionality is not supported for
    #     T1 or T2 instances.
    #
    #   For a complete listing of node types and specifications, see:
    #
    #   * [Amazon ElastiCache Product Features and Details][1]
    #
    #   * [Cache Node Type-Specific Parameters for Memcached][2]
    #
    #   * [Cache Node Type-Specific Parameters for Redis][3]
    #
    #
    #
    #   [1]: http://aws.amazon.com/elasticache/details
    #   [2]: http://docs.aws.amazon.com/AmazonElastiCache/latest/mem-ug/ParameterGroups.Memcached.html#ParameterGroups.Memcached.NodeSpecific
    #   [3]: http://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/ParameterGroups.Redis.html#ParameterGroups.Redis.NodeSpecific
    #   @return [String]
    #
    # @!attribute [rw] engine
    #   The name of the cache engine to be used for the clusters in this
    #   replication group.
    #   @return [String]
    #
    # @!attribute [rw] engine_version
    #   The version number of the cache engine to be used for the clusters
    #   in this replication group. To view the supported cache engine
    #   versions, use the `DescribeCacheEngineVersions` operation.
    #
    #   **Important:** You can upgrade to a newer engine version (see
    #   [Selecting a Cache Engine and Version][1]) in the *ElastiCache User
    #   Guide*, but you cannot downgrade to an earlier engine version. If
    #   you want to use an earlier engine version, you must delete the
    #   existing cluster or replication group and create it anew with the
    #   earlier engine version.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/SelectEngine.html#VersionManagement
    #   @return [String]
    #
    # @!attribute [rw] cache_parameter_group_name
    #   The name of the parameter group to associate with this replication
    #   group. If this argument is omitted, the default cache parameter
    #   group for the specified engine is used.
    #
    #   If you are running Redis version 3.2.4 or later, only one node group
    #   (shard), and want to use a default parameter group, we recommend
    #   that you specify the parameter group by name.
    #
    #   * To create a Redis (cluster mode disabled) replication group, use
    #     `CacheParameterGroupName=default.redis3.2`.
    #
    #   * To create a Redis (cluster mode enabled) replication group, use
    #     `CacheParameterGroupName=default.redis3.2.cluster.on`.
    #   @return [String]
    #
    # @!attribute [rw] cache_subnet_group_name
    #   The name of the cache subnet group to be used for the replication
    #   group.
    #
    #   If you're going to launch your cluster in an Amazon VPC, you need
    #   to create a subnet group before you start creating a cluster. For
    #   more information, see [Subnets and Subnet Groups][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/SubnetGroups.html
    #   @return [String]
    #
    # @!attribute [rw] cache_security_group_names
    #   A list of cache security group names to associate with this
    #   replication group.
    #   @return [Array<String>]
    #
    # @!attribute [rw] security_group_ids
    #   One or more Amazon VPC security groups associated with this
    #   replication group.
    #
    #   Use this parameter only when you are creating a replication group in
    #   an Amazon Virtual Private Cloud (Amazon VPC).
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   A list of cost allocation tags to be added to this resource. A tag
    #   is a key-value pair.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] snapshot_arns
    #   A list of Amazon Resource Names (ARN) that uniquely identify the
    #   Redis RDB snapshot files stored in Amazon S3. The snapshot files are
    #   used to populate the new replication group. The Amazon S3 object
    #   name in the ARN cannot contain any commas. The new replication group
    #   will have the number of node groups (console: shards) specified by
    #   the parameter *NumNodeGroups* or the number of node groups
    #   configured by *NodeGroupConfiguration* regardless of the number of
    #   ARNs specified here.
    #
    #   Example of an Amazon S3 ARN: `arn:aws:s3:::my_bucket/snapshot1.rdb`
    #   @return [Array<String>]
    #
    # @!attribute [rw] snapshot_name
    #   The name of a snapshot from which to restore data into the new
    #   replication group. The snapshot status changes to `restoring` while
    #   the new replication group is being created.
    #   @return [String]
    #
    # @!attribute [rw] preferred_maintenance_window
    #   Specifies the weekly time range during which maintenance on the
    #   cluster is performed. It is specified as a range in the format
    #   ddd:hh24:mi-ddd:hh24:mi (24H Clock UTC). The minimum maintenance
    #   window is a 60 minute period. Valid values for `ddd` are:
    #
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
    #   The port number on which each member of the replication group
    #   accepts connections.
    #   @return [Integer]
    #
    # @!attribute [rw] notification_topic_arn
    #   The Amazon Resource Name (ARN) of the Amazon Simple Notification
    #   Service (SNS) topic to which notifications are sent.
    #
    #   <note markdown="1"> The Amazon SNS topic owner must be the same as the cluster owner.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] auto_minor_version_upgrade
    #   This parameter is currently disabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] snapshot_retention_limit
    #   The number of days for which ElastiCache retains automatic snapshots
    #   before deleting them. For example, if you set
    #   `SnapshotRetentionLimit` to 5, a snapshot that was taken today is
    #   retained for 5 days before being deleted.
    #
    #   Default: 0 (i.e., automatic backups are disabled for this cluster).
    #   @return [Integer]
    #
    # @!attribute [rw] snapshot_window
    #   The daily time range (in UTC) during which ElastiCache begins taking
    #   a daily snapshot of your node group (shard).
    #
    #   Example: `05:00-09:00`
    #
    #   If you do not specify this parameter, ElastiCache automatically
    #   chooses an appropriate time range.
    #   @return [String]
    #
    # @!attribute [rw] auth_token
    #   **Reserved parameter.** The password used to access a password
    #   protected server.
    #
    #   `AuthToken` can be specified only on replication groups where
    #   `TransitEncryptionEnabled` is `true`.
    #
    #   For HIPAA compliance, you must specify `TransitEncryptionEnabled` as
    #   `true`, an `AuthToken`, and a `CacheSubnetGroup`.
    #
    #   Password constraints:
    #
    #   * Must be only printable ASCII characters.
    #
    #   * Must be at least 16 characters and no more than 128 characters in
    #     length.
    #
    #   * Cannot contain any of the following characters: '/', '"', or
    #     '@'.
    #
    #   For more information, see [AUTH password][1] at
    #   http://redis.io/commands/AUTH.
    #
    #
    #
    #   [1]: http://redis.io/commands/AUTH
    #   @return [String]
    #
    # @!attribute [rw] transit_encryption_enabled
    #   A flag that enables in-transit encryption when set to `true`.
    #
    #   You cannot modify the value of `TransitEncryptionEnabled` after the
    #   cluster is created. To enable in-transit encryption on a cluster you
    #   must set `TransitEncryptionEnabled` to `true` when you create a
    #   cluster.
    #
    #   This parameter is valid only if the `Engine` parameter is `redis`,
    #   the `EngineVersion` parameter is `3.2.6` or `4.x`, and the cluster
    #   is being created in an Amazon VPC.
    #
    #   If you enable in-transit encryption, you must also specify a value
    #   for `CacheSubnetGroup`.
    #
    #   **Required:** Only available when creating a replication group in an
    #   Amazon VPC using redis version `3.2.6` or `4.x`.
    #
    #   Default: `false`
    #
    #   For HIPAA compliance, you must specify `TransitEncryptionEnabled` as
    #   `true`, an `AuthToken`, and a `CacheSubnetGroup`.
    #   @return [Boolean]
    #
    # @!attribute [rw] at_rest_encryption_enabled
    #   A flag that enables encryption at rest when set to `true`.
    #
    #   You cannot modify the value of `AtRestEncryptionEnabled` after the
    #   replication group is created. To enable encryption at rest on a
    #   replication group you must set `AtRestEncryptionEnabled` to `true`
    #   when you create the replication group.
    #
    #   **Required:** Only available when creating a replication group in an
    #   Amazon VPC using redis version `3.2.6` or `4.x`.
    #
    #   Default: `false`
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/CreateReplicationGroupMessage AWS API Documentation
    #
    class CreateReplicationGroupMessage < Struct.new(
      :replication_group_id,
      :replication_group_description,
      :primary_cluster_id,
      :automatic_failover_enabled,
      :num_cache_clusters,
      :preferred_cache_cluster_a_zs,
      :num_node_groups,
      :replicas_per_node_group,
      :node_group_configuration,
      :cache_node_type,
      :engine,
      :engine_version,
      :cache_parameter_group_name,
      :cache_subnet_group_name,
      :cache_security_group_names,
      :security_group_ids,
      :tags,
      :snapshot_arns,
      :snapshot_name,
      :preferred_maintenance_window,
      :port,
      :notification_topic_arn,
      :auto_minor_version_upgrade,
      :snapshot_retention_limit,
      :snapshot_window,
      :auth_token,
      :transit_encryption_enabled,
      :at_rest_encryption_enabled)
      include Aws::Structure
    end

    # @!attribute [rw] replication_group
    #   Contains all of the attributes of a specific Redis replication
    #   group.
    #   @return [Types::ReplicationGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/CreateReplicationGroupResult AWS API Documentation
    #
    class CreateReplicationGroupResult < Struct.new(
      :replication_group)
      include Aws::Structure
    end

    # Represents the input of a `CreateSnapshot` operation.
    #
    # @note When making an API call, you may pass CreateSnapshotMessage
    #   data as a hash:
    #
    #       {
    #         replication_group_id: "String",
    #         cache_cluster_id: "String",
    #         snapshot_name: "String", # required
    #       }
    #
    # @!attribute [rw] replication_group_id
    #   The identifier of an existing replication group. The snapshot is
    #   created from this replication group.
    #   @return [String]
    #
    # @!attribute [rw] cache_cluster_id
    #   The identifier of an existing cluster. The snapshot is created from
    #   this cluster.
    #   @return [String]
    #
    # @!attribute [rw] snapshot_name
    #   A name for the snapshot being created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/CreateSnapshotMessage AWS API Documentation
    #
    class CreateSnapshotMessage < Struct.new(
      :replication_group_id,
      :cache_cluster_id,
      :snapshot_name)
      include Aws::Structure
    end

    # @!attribute [rw] snapshot
    #   Represents a copy of an entire Redis cluster as of the time when the
    #   snapshot was taken.
    #   @return [Types::Snapshot]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/CreateSnapshotResult AWS API Documentation
    #
    class CreateSnapshotResult < Struct.new(
      :snapshot)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DecreaseReplicaCountMessage
    #   data as a hash:
    #
    #       {
    #         replication_group_id: "String", # required
    #         new_replica_count: 1,
    #         replica_configuration: [
    #           {
    #             node_group_id: "AllowedNodeGroupId", # required
    #             new_replica_count: 1, # required
    #             preferred_availability_zones: ["String"],
    #           },
    #         ],
    #         replicas_to_remove: ["String"],
    #         apply_immediately: false, # required
    #       }
    #
    # @!attribute [rw] replication_group_id
    #   The id of the replication group from which you want to remove
    #   replica nodes.
    #   @return [String]
    #
    # @!attribute [rw] new_replica_count
    #   The number of read replica nodes you want at the completion of this
    #   operation. For Redis (cluster mode disabled) replication groups,
    #   this is the number of replica nodes in the replication group. For
    #   Redis (cluster mode enabled) replication groups, this is the number
    #   of replica nodes in each of the replication group's node groups.
    #
    #   The minimum number of replicas in a shard or replication group is:
    #
    #   * Redis (cluster mode disabled)
    #
    #     * If Multi-AZ with Automatic Failover is enabled: 1
    #
    #     * If Multi-AZ with Automatic Failover is not enabled: 0
    #
    #   * Redis (cluster mode enabled): 0 (though you will not be able to
    #     failover to a replica if your primary node fails)
    #   @return [Integer]
    #
    # @!attribute [rw] replica_configuration
    #   A list of `ConfigureShard` objects that can be used to configure
    #   each shard in a Redis (cluster mode enabled) replication group. The
    #   `ConfigureShard` has three members: `NewReplicaCount`,
    #   `NodeGroupId`, and `PreferredAvailabilityZones`.
    #   @return [Array<Types::ConfigureShard>]
    #
    # @!attribute [rw] replicas_to_remove
    #   A list of the node ids to remove from the replication group or node
    #   group (shard).
    #   @return [Array<String>]
    #
    # @!attribute [rw] apply_immediately
    #   If `True`, the number of replica nodes is decreased immediately. If
    #   `False`, the number of replica nodes is decreased during the next
    #   maintenance window.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/DecreaseReplicaCountMessage AWS API Documentation
    #
    class DecreaseReplicaCountMessage < Struct.new(
      :replication_group_id,
      :new_replica_count,
      :replica_configuration,
      :replicas_to_remove,
      :apply_immediately)
      include Aws::Structure
    end

    # @!attribute [rw] replication_group
    #   Contains all of the attributes of a specific Redis replication
    #   group.
    #   @return [Types::ReplicationGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/DecreaseReplicaCountResult AWS API Documentation
    #
    class DecreaseReplicaCountResult < Struct.new(
      :replication_group)
      include Aws::Structure
    end

    # Represents the input of a `DeleteCacheCluster` operation.
    #
    # @note When making an API call, you may pass DeleteCacheClusterMessage
    #   data as a hash:
    #
    #       {
    #         cache_cluster_id: "String", # required
    #         final_snapshot_identifier: "String",
    #       }
    #
    # @!attribute [rw] cache_cluster_id
    #   The cluster identifier for the cluster to be deleted. This parameter
    #   is not case sensitive.
    #   @return [String]
    #
    # @!attribute [rw] final_snapshot_identifier
    #   The user-supplied name of a final cluster snapshot. This is the
    #   unique name that identifies the snapshot. ElastiCache creates the
    #   snapshot, and then deletes the cluster immediately afterward.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/DeleteCacheClusterMessage AWS API Documentation
    #
    class DeleteCacheClusterMessage < Struct.new(
      :cache_cluster_id,
      :final_snapshot_identifier)
      include Aws::Structure
    end

    # @!attribute [rw] cache_cluster
    #   Contains all of the attributes of a specific cluster.
    #   @return [Types::CacheCluster]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/DeleteCacheClusterResult AWS API Documentation
    #
    class DeleteCacheClusterResult < Struct.new(
      :cache_cluster)
      include Aws::Structure
    end

    # Represents the input of a `DeleteCacheParameterGroup` operation.
    #
    # @note When making an API call, you may pass DeleteCacheParameterGroupMessage
    #   data as a hash:
    #
    #       {
    #         cache_parameter_group_name: "String", # required
    #       }
    #
    # @!attribute [rw] cache_parameter_group_name
    #   The name of the cache parameter group to delete.
    #
    #   <note markdown="1"> The specified cache security group must not be associated with any
    #   clusters.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/DeleteCacheParameterGroupMessage AWS API Documentation
    #
    class DeleteCacheParameterGroupMessage < Struct.new(
      :cache_parameter_group_name)
      include Aws::Structure
    end

    # Represents the input of a `DeleteCacheSecurityGroup` operation.
    #
    # @note When making an API call, you may pass DeleteCacheSecurityGroupMessage
    #   data as a hash:
    #
    #       {
    #         cache_security_group_name: "String", # required
    #       }
    #
    # @!attribute [rw] cache_security_group_name
    #   The name of the cache security group to delete.
    #
    #   <note markdown="1"> You cannot delete the default security group.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/DeleteCacheSecurityGroupMessage AWS API Documentation
    #
    class DeleteCacheSecurityGroupMessage < Struct.new(
      :cache_security_group_name)
      include Aws::Structure
    end

    # Represents the input of a `DeleteCacheSubnetGroup` operation.
    #
    # @note When making an API call, you may pass DeleteCacheSubnetGroupMessage
    #   data as a hash:
    #
    #       {
    #         cache_subnet_group_name: "String", # required
    #       }
    #
    # @!attribute [rw] cache_subnet_group_name
    #   The name of the cache subnet group to delete.
    #
    #   Constraints: Must contain no more than 255 alphanumeric characters
    #   or hyphens.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/DeleteCacheSubnetGroupMessage AWS API Documentation
    #
    class DeleteCacheSubnetGroupMessage < Struct.new(
      :cache_subnet_group_name)
      include Aws::Structure
    end

    # Represents the input of a `DeleteReplicationGroup` operation.
    #
    # @note When making an API call, you may pass DeleteReplicationGroupMessage
    #   data as a hash:
    #
    #       {
    #         replication_group_id: "String", # required
    #         retain_primary_cluster: false,
    #         final_snapshot_identifier: "String",
    #       }
    #
    # @!attribute [rw] replication_group_id
    #   The identifier for the cluster to be deleted. This parameter is not
    #   case sensitive.
    #   @return [String]
    #
    # @!attribute [rw] retain_primary_cluster
    #   If set to `true`, all of the read replicas are deleted, but the
    #   primary node is retained.
    #   @return [Boolean]
    #
    # @!attribute [rw] final_snapshot_identifier
    #   The name of a final node group (shard) snapshot. ElastiCache creates
    #   the snapshot from the primary node in the cluster, rather than one
    #   of the replicas; this is to ensure that it captures the freshest
    #   data. After the final snapshot is taken, the replication group is
    #   immediately deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/DeleteReplicationGroupMessage AWS API Documentation
    #
    class DeleteReplicationGroupMessage < Struct.new(
      :replication_group_id,
      :retain_primary_cluster,
      :final_snapshot_identifier)
      include Aws::Structure
    end

    # @!attribute [rw] replication_group
    #   Contains all of the attributes of a specific Redis replication
    #   group.
    #   @return [Types::ReplicationGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/DeleteReplicationGroupResult AWS API Documentation
    #
    class DeleteReplicationGroupResult < Struct.new(
      :replication_group)
      include Aws::Structure
    end

    # Represents the input of a `DeleteSnapshot` operation.
    #
    # @note When making an API call, you may pass DeleteSnapshotMessage
    #   data as a hash:
    #
    #       {
    #         snapshot_name: "String", # required
    #       }
    #
    # @!attribute [rw] snapshot_name
    #   The name of the snapshot to be deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/DeleteSnapshotMessage AWS API Documentation
    #
    class DeleteSnapshotMessage < Struct.new(
      :snapshot_name)
      include Aws::Structure
    end

    # @!attribute [rw] snapshot
    #   Represents a copy of an entire Redis cluster as of the time when the
    #   snapshot was taken.
    #   @return [Types::Snapshot]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/DeleteSnapshotResult AWS API Documentation
    #
    class DeleteSnapshotResult < Struct.new(
      :snapshot)
      include Aws::Structure
    end

    # Represents the input of a `DescribeCacheClusters` operation.
    #
    # @note When making an API call, you may pass DescribeCacheClustersMessage
    #   data as a hash:
    #
    #       {
    #         cache_cluster_id: "String",
    #         max_records: 1,
    #         marker: "String",
    #         show_cache_node_info: false,
    #         show_cache_clusters_not_in_replication_groups: false,
    #       }
    #
    # @!attribute [rw] cache_cluster_id
    #   The user-supplied cluster identifier. If this parameter is
    #   specified, only information about that specific cluster is returned.
    #   This parameter isn't case sensitive.
    #   @return [String]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a marker is
    #   included in the response so that the remaining results can be
    #   retrieved.
    #
    #   Default: 100
    #
    #   Constraints: minimum 20; maximum 100.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   An optional marker returned from a prior request. Use this marker
    #   for pagination of results from this operation. If this parameter is
    #   specified, the response includes only records beyond the marker, up
    #   to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @!attribute [rw] show_cache_node_info
    #   An optional flag that can be included in the `DescribeCacheCluster`
    #   request to retrieve information about the individual cache nodes.
    #   @return [Boolean]
    #
    # @!attribute [rw] show_cache_clusters_not_in_replication_groups
    #   An optional flag that can be included in the `DescribeCacheCluster`
    #   request to show only nodes (API/CLI: clusters) that are not members
    #   of a replication group. In practice, this mean Memcached and single
    #   node Redis clusters.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/DescribeCacheClustersMessage AWS API Documentation
    #
    class DescribeCacheClustersMessage < Struct.new(
      :cache_cluster_id,
      :max_records,
      :marker,
      :show_cache_node_info,
      :show_cache_clusters_not_in_replication_groups)
      include Aws::Structure
    end

    # Represents the input of a `DescribeCacheEngineVersions` operation.
    #
    # @note When making an API call, you may pass DescribeCacheEngineVersionsMessage
    #   data as a hash:
    #
    #       {
    #         engine: "String",
    #         engine_version: "String",
    #         cache_parameter_group_family: "String",
    #         max_records: 1,
    #         marker: "String",
    #         default_only: false,
    #       }
    #
    # @!attribute [rw] engine
    #   The cache engine to return. Valid values: `memcached` \| `redis`
    #   @return [String]
    #
    # @!attribute [rw] engine_version
    #   The cache engine version to return.
    #
    #   Example: `1.4.14`
    #   @return [String]
    #
    # @!attribute [rw] cache_parameter_group_family
    #   The name of a specific cache parameter group family to return
    #   details for.
    #
    #   Valid values are: `memcached1.4` \| `redis2.6` \| `redis2.8` \|
    #   `redis3.2` \| `redis4.0`
    #
    #   Constraints:
    #
    #   * Must be 1 to 255 alphanumeric characters
    #
    #   * First character must be a letter
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens
    #   @return [String]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a marker is
    #   included in the response so that the remaining results can be
    #   retrieved.
    #
    #   Default: 100
    #
    #   Constraints: minimum 20; maximum 100.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   An optional marker returned from a prior request. Use this marker
    #   for pagination of results from this operation. If this parameter is
    #   specified, the response includes only records beyond the marker, up
    #   to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @!attribute [rw] default_only
    #   If `true`, specifies that only the default version of the specified
    #   engine or engine and major version combination is to be returned.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/DescribeCacheEngineVersionsMessage AWS API Documentation
    #
    class DescribeCacheEngineVersionsMessage < Struct.new(
      :engine,
      :engine_version,
      :cache_parameter_group_family,
      :max_records,
      :marker,
      :default_only)
      include Aws::Structure
    end

    # Represents the input of a `DescribeCacheParameterGroups` operation.
    #
    # @note When making an API call, you may pass DescribeCacheParameterGroupsMessage
    #   data as a hash:
    #
    #       {
    #         cache_parameter_group_name: "String",
    #         max_records: 1,
    #         marker: "String",
    #       }
    #
    # @!attribute [rw] cache_parameter_group_name
    #   The name of a specific cache parameter group to return details for.
    #   @return [String]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a marker is
    #   included in the response so that the remaining results can be
    #   retrieved.
    #
    #   Default: 100
    #
    #   Constraints: minimum 20; maximum 100.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   An optional marker returned from a prior request. Use this marker
    #   for pagination of results from this operation. If this parameter is
    #   specified, the response includes only records beyond the marker, up
    #   to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/DescribeCacheParameterGroupsMessage AWS API Documentation
    #
    class DescribeCacheParameterGroupsMessage < Struct.new(
      :cache_parameter_group_name,
      :max_records,
      :marker)
      include Aws::Structure
    end

    # Represents the input of a `DescribeCacheParameters` operation.
    #
    # @note When making an API call, you may pass DescribeCacheParametersMessage
    #   data as a hash:
    #
    #       {
    #         cache_parameter_group_name: "String", # required
    #         source: "String",
    #         max_records: 1,
    #         marker: "String",
    #       }
    #
    # @!attribute [rw] cache_parameter_group_name
    #   The name of a specific cache parameter group to return details for.
    #   @return [String]
    #
    # @!attribute [rw] source
    #   The parameter types to return.
    #
    #   Valid values: `user` \| `system` \| `engine-default`
    #   @return [String]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a marker is
    #   included in the response so that the remaining results can be
    #   retrieved.
    #
    #   Default: 100
    #
    #   Constraints: minimum 20; maximum 100.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   An optional marker returned from a prior request. Use this marker
    #   for pagination of results from this operation. If this parameter is
    #   specified, the response includes only records beyond the marker, up
    #   to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/DescribeCacheParametersMessage AWS API Documentation
    #
    class DescribeCacheParametersMessage < Struct.new(
      :cache_parameter_group_name,
      :source,
      :max_records,
      :marker)
      include Aws::Structure
    end

    # Represents the input of a `DescribeCacheSecurityGroups` operation.
    #
    # @note When making an API call, you may pass DescribeCacheSecurityGroupsMessage
    #   data as a hash:
    #
    #       {
    #         cache_security_group_name: "String",
    #         max_records: 1,
    #         marker: "String",
    #       }
    #
    # @!attribute [rw] cache_security_group_name
    #   The name of the cache security group to return details for.
    #   @return [String]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a marker is
    #   included in the response so that the remaining results can be
    #   retrieved.
    #
    #   Default: 100
    #
    #   Constraints: minimum 20; maximum 100.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   An optional marker returned from a prior request. Use this marker
    #   for pagination of results from this operation. If this parameter is
    #   specified, the response includes only records beyond the marker, up
    #   to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/DescribeCacheSecurityGroupsMessage AWS API Documentation
    #
    class DescribeCacheSecurityGroupsMessage < Struct.new(
      :cache_security_group_name,
      :max_records,
      :marker)
      include Aws::Structure
    end

    # Represents the input of a `DescribeCacheSubnetGroups` operation.
    #
    # @note When making an API call, you may pass DescribeCacheSubnetGroupsMessage
    #   data as a hash:
    #
    #       {
    #         cache_subnet_group_name: "String",
    #         max_records: 1,
    #         marker: "String",
    #       }
    #
    # @!attribute [rw] cache_subnet_group_name
    #   The name of the cache subnet group to return details for.
    #   @return [String]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a marker is
    #   included in the response so that the remaining results can be
    #   retrieved.
    #
    #   Default: 100
    #
    #   Constraints: minimum 20; maximum 100.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   An optional marker returned from a prior request. Use this marker
    #   for pagination of results from this operation. If this parameter is
    #   specified, the response includes only records beyond the marker, up
    #   to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/DescribeCacheSubnetGroupsMessage AWS API Documentation
    #
    class DescribeCacheSubnetGroupsMessage < Struct.new(
      :cache_subnet_group_name,
      :max_records,
      :marker)
      include Aws::Structure
    end

    # Represents the input of a `DescribeEngineDefaultParameters` operation.
    #
    # @note When making an API call, you may pass DescribeEngineDefaultParametersMessage
    #   data as a hash:
    #
    #       {
    #         cache_parameter_group_family: "String", # required
    #         max_records: 1,
    #         marker: "String",
    #       }
    #
    # @!attribute [rw] cache_parameter_group_family
    #   The name of the cache parameter group family.
    #
    #   Valid values are: `memcached1.4` \| `redis2.6` \| `redis2.8` \|
    #   `redis3.2` \| `redis4.0`
    #   @return [String]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a marker is
    #   included in the response so that the remaining results can be
    #   retrieved.
    #
    #   Default: 100
    #
    #   Constraints: minimum 20; maximum 100.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   An optional marker returned from a prior request. Use this marker
    #   for pagination of results from this operation. If this parameter is
    #   specified, the response includes only records beyond the marker, up
    #   to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/DescribeEngineDefaultParametersMessage AWS API Documentation
    #
    class DescribeEngineDefaultParametersMessage < Struct.new(
      :cache_parameter_group_family,
      :max_records,
      :marker)
      include Aws::Structure
    end

    # @!attribute [rw] engine_defaults
    #   Represents the output of a `DescribeEngineDefaultParameters`
    #   operation.
    #   @return [Types::EngineDefaults]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/DescribeEngineDefaultParametersResult AWS API Documentation
    #
    class DescribeEngineDefaultParametersResult < Struct.new(
      :engine_defaults)
      include Aws::Structure
    end

    # Represents the input of a `DescribeEvents` operation.
    #
    # @note When making an API call, you may pass DescribeEventsMessage
    #   data as a hash:
    #
    #       {
    #         source_identifier: "String",
    #         source_type: "cache-cluster", # accepts cache-cluster, cache-parameter-group, cache-security-group, cache-subnet-group, replication-group
    #         start_time: Time.now,
    #         end_time: Time.now,
    #         duration: 1,
    #         max_records: 1,
    #         marker: "String",
    #       }
    #
    # @!attribute [rw] source_identifier
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
    #   in ISO 8601 format.
    #
    #   **Example:** 2017-03-30T07:03:49.555Z
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The end of the time interval for which to retrieve events, specified
    #   in ISO 8601 format.
    #
    #   **Example:** 2017-03-30T07:03:49.555Z
    #   @return [Time]
    #
    # @!attribute [rw] duration
    #   The number of minutes worth of events to retrieve.
    #   @return [Integer]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a marker is
    #   included in the response so that the remaining results can be
    #   retrieved.
    #
    #   Default: 100
    #
    #   Constraints: minimum 20; maximum 100.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   An optional marker returned from a prior request. Use this marker
    #   for pagination of results from this operation. If this parameter is
    #   specified, the response includes only records beyond the marker, up
    #   to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/DescribeEventsMessage AWS API Documentation
    #
    class DescribeEventsMessage < Struct.new(
      :source_identifier,
      :source_type,
      :start_time,
      :end_time,
      :duration,
      :max_records,
      :marker)
      include Aws::Structure
    end

    # Represents the input of a `DescribeReplicationGroups` operation.
    #
    # @note When making an API call, you may pass DescribeReplicationGroupsMessage
    #   data as a hash:
    #
    #       {
    #         replication_group_id: "String",
    #         max_records: 1,
    #         marker: "String",
    #       }
    #
    # @!attribute [rw] replication_group_id
    #   The identifier for the replication group to be described. This
    #   parameter is not case sensitive.
    #
    #   If you do not specify this parameter, information about all
    #   replication groups is returned.
    #   @return [String]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a marker is
    #   included in the response so that the remaining results can be
    #   retrieved.
    #
    #   Default: 100
    #
    #   Constraints: minimum 20; maximum 100.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   An optional marker returned from a prior request. Use this marker
    #   for pagination of results from this operation. If this parameter is
    #   specified, the response includes only records beyond the marker, up
    #   to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/DescribeReplicationGroupsMessage AWS API Documentation
    #
    class DescribeReplicationGroupsMessage < Struct.new(
      :replication_group_id,
      :max_records,
      :marker)
      include Aws::Structure
    end

    # Represents the input of a `DescribeReservedCacheNodes` operation.
    #
    # @note When making an API call, you may pass DescribeReservedCacheNodesMessage
    #   data as a hash:
    #
    #       {
    #         reserved_cache_node_id: "String",
    #         reserved_cache_nodes_offering_id: "String",
    #         cache_node_type: "String",
    #         duration: "String",
    #         product_description: "String",
    #         offering_type: "String",
    #         max_records: 1,
    #         marker: "String",
    #       }
    #
    # @!attribute [rw] reserved_cache_node_id
    #   The reserved cache node identifier filter value. Use this parameter
    #   to show only the reservation that matches the specified reservation
    #   ID.
    #   @return [String]
    #
    # @!attribute [rw] reserved_cache_nodes_offering_id
    #   The offering identifier filter value. Use this parameter to show
    #   only purchased reservations matching the specified offering
    #   identifier.
    #   @return [String]
    #
    # @!attribute [rw] cache_node_type
    #   The cache node type filter value. Use this parameter to show only
    #   those reservations matching the specified cache node type.
    #
    #   The following node types are supported by ElastiCache. Generally
    #   speaking, the current generation types provide more memory and
    #   computational power at lower cost when compared to their equivalent
    #   previous generation counterparts.
    #
    #   * General purpose:
    #
    #     * Current generation:
    #
    #       **T2 node types:** `cache.t2.micro`, `cache.t2.small`,
    #       `cache.t2.medium`
    #
    #       **M3 node types:** `cache.m3.medium`, `cache.m3.large`,
    #       `cache.m3.xlarge`, `cache.m3.2xlarge`
    #
    #       **M4 node types:** `cache.m4.large`, `cache.m4.xlarge`,
    #       `cache.m4.2xlarge`, `cache.m4.4xlarge`, `cache.m4.10xlarge`
    #
    #     * Previous generation: (not recommended)
    #
    #       **T1 node types:** `cache.t1.micro`
    #
    #       **M1 node types:** `cache.m1.small`, `cache.m1.medium`,
    #       `cache.m1.large`, `cache.m1.xlarge`
    #
    #   * Compute optimized:
    #
    #     * Previous generation: (not recommended)
    #
    #       **C1 node types:** `cache.c1.xlarge`
    #
    #   * Memory optimized:
    #
    #     * Current generation:
    #
    #       **R3 node types:** `cache.r3.large`, `cache.r3.xlarge`,
    #       `cache.r3.2xlarge`, `cache.r3.4xlarge`, `cache.r3.8xlarge`
    #
    #       **R4 node types;** `cache.r4.large`, `cache.r4.xlarge`,
    #       `cache.r4.2xlarge`, `cache.r4.4xlarge`, `cache.r4.8xlarge`,
    #       `cache.r4.16xlarge`
    #
    #     * Previous generation: (not recommended)
    #
    #       **M2 node types:** `cache.m2.xlarge`, `cache.m2.2xlarge`,
    #       `cache.m2.4xlarge`
    #
    #   **Notes:**
    #
    #   * All T2 instances are created in an Amazon Virtual Private Cloud
    #     (Amazon VPC).
    #
    #   * Redis (cluster mode disabled): Redis backup/restore is not
    #     supported on T1 and T2 instances.
    #
    #   * Redis (cluster mode enabled): Backup/restore is not supported on
    #     T1 instances.
    #
    #   * Redis Append-only files (AOF) functionality is not supported for
    #     T1 or T2 instances.
    #
    #   For a complete listing of node types and specifications, see:
    #
    #   * [Amazon ElastiCache Product Features and Details][1]
    #
    #   * [Cache Node Type-Specific Parameters for Memcached][2]
    #
    #   * [Cache Node Type-Specific Parameters for Redis][3]
    #
    #
    #
    #   [1]: http://aws.amazon.com/elasticache/details
    #   [2]: http://docs.aws.amazon.com/AmazonElastiCache/latest/mem-ug/ParameterGroups.Memcached.html#ParameterGroups.Memcached.NodeSpecific
    #   [3]: http://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/ParameterGroups.Redis.html#ParameterGroups.Redis.NodeSpecific
    #   @return [String]
    #
    # @!attribute [rw] duration
    #   The duration filter value, specified in years or seconds. Use this
    #   parameter to show only reservations for this duration.
    #
    #   Valid Values: `1 | 3 | 31536000 | 94608000`
    #   @return [String]
    #
    # @!attribute [rw] product_description
    #   The product description filter value. Use this parameter to show
    #   only those reservations matching the specified product description.
    #   @return [String]
    #
    # @!attribute [rw] offering_type
    #   The offering type filter value. Use this parameter to show only the
    #   available offerings matching the specified offering type.
    #
    #   Valid values: `"Light Utilization"|"Medium Utilization"|"Heavy
    #   Utilization"`
    #   @return [String]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a marker is
    #   included in the response so that the remaining results can be
    #   retrieved.
    #
    #   Default: 100
    #
    #   Constraints: minimum 20; maximum 100.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   An optional marker returned from a prior request. Use this marker
    #   for pagination of results from this operation. If this parameter is
    #   specified, the response includes only records beyond the marker, up
    #   to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/DescribeReservedCacheNodesMessage AWS API Documentation
    #
    class DescribeReservedCacheNodesMessage < Struct.new(
      :reserved_cache_node_id,
      :reserved_cache_nodes_offering_id,
      :cache_node_type,
      :duration,
      :product_description,
      :offering_type,
      :max_records,
      :marker)
      include Aws::Structure
    end

    # Represents the input of a `DescribeReservedCacheNodesOfferings`
    # operation.
    #
    # @note When making an API call, you may pass DescribeReservedCacheNodesOfferingsMessage
    #   data as a hash:
    #
    #       {
    #         reserved_cache_nodes_offering_id: "String",
    #         cache_node_type: "String",
    #         duration: "String",
    #         product_description: "String",
    #         offering_type: "String",
    #         max_records: 1,
    #         marker: "String",
    #       }
    #
    # @!attribute [rw] reserved_cache_nodes_offering_id
    #   The offering identifier filter value. Use this parameter to show
    #   only the available offering that matches the specified reservation
    #   identifier.
    #
    #   Example: `438012d3-4052-4cc7-b2e3-8d3372e0e706`
    #   @return [String]
    #
    # @!attribute [rw] cache_node_type
    #   The cache node type filter value. Use this parameter to show only
    #   the available offerings matching the specified cache node type.
    #
    #   The following node types are supported by ElastiCache. Generally
    #   speaking, the current generation types provide more memory and
    #   computational power at lower cost when compared to their equivalent
    #   previous generation counterparts.
    #
    #   * General purpose:
    #
    #     * Current generation:
    #
    #       **T2 node types:** `cache.t2.micro`, `cache.t2.small`,
    #       `cache.t2.medium`
    #
    #       **M3 node types:** `cache.m3.medium`, `cache.m3.large`,
    #       `cache.m3.xlarge`, `cache.m3.2xlarge`
    #
    #       **M4 node types:** `cache.m4.large`, `cache.m4.xlarge`,
    #       `cache.m4.2xlarge`, `cache.m4.4xlarge`, `cache.m4.10xlarge`
    #
    #     * Previous generation: (not recommended)
    #
    #       **T1 node types:** `cache.t1.micro`
    #
    #       **M1 node types:** `cache.m1.small`, `cache.m1.medium`,
    #       `cache.m1.large`, `cache.m1.xlarge`
    #
    #   * Compute optimized:
    #
    #     * Previous generation: (not recommended)
    #
    #       **C1 node types:** `cache.c1.xlarge`
    #
    #   * Memory optimized:
    #
    #     * Current generation:
    #
    #       **R3 node types:** `cache.r3.large`, `cache.r3.xlarge`,
    #       `cache.r3.2xlarge`, `cache.r3.4xlarge`, `cache.r3.8xlarge`
    #
    #       **R4 node types;** `cache.r4.large`, `cache.r4.xlarge`,
    #       `cache.r4.2xlarge`, `cache.r4.4xlarge`, `cache.r4.8xlarge`,
    #       `cache.r4.16xlarge`
    #
    #     * Previous generation: (not recommended)
    #
    #       **M2 node types:** `cache.m2.xlarge`, `cache.m2.2xlarge`,
    #       `cache.m2.4xlarge`
    #
    #   **Notes:**
    #
    #   * All T2 instances are created in an Amazon Virtual Private Cloud
    #     (Amazon VPC).
    #
    #   * Redis (cluster mode disabled): Redis backup/restore is not
    #     supported on T1 and T2 instances.
    #
    #   * Redis (cluster mode enabled): Backup/restore is not supported on
    #     T1 instances.
    #
    #   * Redis Append-only files (AOF) functionality is not supported for
    #     T1 or T2 instances.
    #
    #   For a complete listing of node types and specifications, see:
    #
    #   * [Amazon ElastiCache Product Features and Details][1]
    #
    #   * [Cache Node Type-Specific Parameters for Memcached][2]
    #
    #   * [Cache Node Type-Specific Parameters for Redis][3]
    #
    #
    #
    #   [1]: http://aws.amazon.com/elasticache/details
    #   [2]: http://docs.aws.amazon.com/AmazonElastiCache/latest/mem-ug/ParameterGroups.Memcached.html#ParameterGroups.Memcached.NodeSpecific
    #   [3]: http://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/ParameterGroups.Redis.html#ParameterGroups.Redis.NodeSpecific
    #   @return [String]
    #
    # @!attribute [rw] duration
    #   Duration filter value, specified in years or seconds. Use this
    #   parameter to show only reservations for a given duration.
    #
    #   Valid Values: `1 | 3 | 31536000 | 94608000`
    #   @return [String]
    #
    # @!attribute [rw] product_description
    #   The product description filter value. Use this parameter to show
    #   only the available offerings matching the specified product
    #   description.
    #   @return [String]
    #
    # @!attribute [rw] offering_type
    #   The offering type filter value. Use this parameter to show only the
    #   available offerings matching the specified offering type.
    #
    #   Valid Values: `"Light Utilization"|"Medium Utilization"|"Heavy
    #   Utilization"`
    #   @return [String]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a marker is
    #   included in the response so that the remaining results can be
    #   retrieved.
    #
    #   Default: 100
    #
    #   Constraints: minimum 20; maximum 100.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   An optional marker returned from a prior request. Use this marker
    #   for pagination of results from this operation. If this parameter is
    #   specified, the response includes only records beyond the marker, up
    #   to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/DescribeReservedCacheNodesOfferingsMessage AWS API Documentation
    #
    class DescribeReservedCacheNodesOfferingsMessage < Struct.new(
      :reserved_cache_nodes_offering_id,
      :cache_node_type,
      :duration,
      :product_description,
      :offering_type,
      :max_records,
      :marker)
      include Aws::Structure
    end

    # Represents the output of a `DescribeSnapshots` operation.
    #
    # @!attribute [rw] marker
    #   An optional marker returned from a prior request. Use this marker
    #   for pagination of results from this operation. If this parameter is
    #   specified, the response includes only records beyond the marker, up
    #   to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @!attribute [rw] snapshots
    #   A list of snapshots. Each item in the list contains detailed
    #   information about one snapshot.
    #   @return [Array<Types::Snapshot>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/DescribeSnapshotsListMessage AWS API Documentation
    #
    class DescribeSnapshotsListMessage < Struct.new(
      :marker,
      :snapshots)
      include Aws::Structure
    end

    # Represents the input of a `DescribeSnapshotsMessage` operation.
    #
    # @note When making an API call, you may pass DescribeSnapshotsMessage
    #   data as a hash:
    #
    #       {
    #         replication_group_id: "String",
    #         cache_cluster_id: "String",
    #         snapshot_name: "String",
    #         snapshot_source: "String",
    #         marker: "String",
    #         max_records: 1,
    #         show_node_group_config: false,
    #       }
    #
    # @!attribute [rw] replication_group_id
    #   A user-supplied replication group identifier. If this parameter is
    #   specified, only snapshots associated with that specific replication
    #   group are described.
    #   @return [String]
    #
    # @!attribute [rw] cache_cluster_id
    #   A user-supplied cluster identifier. If this parameter is specified,
    #   only snapshots associated with that specific cluster are described.
    #   @return [String]
    #
    # @!attribute [rw] snapshot_name
    #   A user-supplied name of the snapshot. If this parameter is
    #   specified, only this snapshot are described.
    #   @return [String]
    #
    # @!attribute [rw] snapshot_source
    #   If set to `system`, the output shows snapshots that were
    #   automatically created by ElastiCache. If set to `user` the output
    #   shows snapshots that were manually created. If omitted, the output
    #   shows both automatically and manually created snapshots.
    #   @return [String]
    #
    # @!attribute [rw] marker
    #   An optional marker returned from a prior request. Use this marker
    #   for pagination of results from this operation. If this parameter is
    #   specified, the response includes only records beyond the marker, up
    #   to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a marker is
    #   included in the response so that the remaining results can be
    #   retrieved.
    #
    #   Default: 50
    #
    #   Constraints: minimum 20; maximum 50.
    #   @return [Integer]
    #
    # @!attribute [rw] show_node_group_config
    #   A Boolean value which if true, the node group (shard) configuration
    #   is included in the snapshot description.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/DescribeSnapshotsMessage AWS API Documentation
    #
    class DescribeSnapshotsMessage < Struct.new(
      :replication_group_id,
      :cache_cluster_id,
      :snapshot_name,
      :snapshot_source,
      :marker,
      :max_records,
      :show_node_group_config)
      include Aws::Structure
    end

    # Provides ownership and status information for an Amazon EC2 security
    # group.
    #
    # @!attribute [rw] status
    #   The status of the Amazon EC2 security group.
    #   @return [String]
    #
    # @!attribute [rw] ec2_security_group_name
    #   The name of the Amazon EC2 security group.
    #   @return [String]
    #
    # @!attribute [rw] ec2_security_group_owner_id
    #   The AWS account ID of the Amazon EC2 security group owner.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/EC2SecurityGroup AWS API Documentation
    #
    class EC2SecurityGroup < Struct.new(
      :status,
      :ec2_security_group_name,
      :ec2_security_group_owner_id)
      include Aws::Structure
    end

    # Represents the information required for client programs to connect to
    # a cache node.
    #
    # @!attribute [rw] address
    #   The DNS hostname of the cache node.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The port number that the cache engine is listening on.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/Endpoint AWS API Documentation
    #
    class Endpoint < Struct.new(
      :address,
      :port)
      include Aws::Structure
    end

    # Represents the output of a `DescribeEngineDefaultParameters`
    # operation.
    #
    # @!attribute [rw] cache_parameter_group_family
    #   Specifies the name of the cache parameter group family to which the
    #   engine default parameters apply.
    #
    #   Valid values are: `memcached1.4` \| `redis2.6` \| `redis2.8` \|
    #   `redis3.2` \| `redis4.0`
    #   @return [String]
    #
    # @!attribute [rw] marker
    #   Provides an identifier to allow retrieval of paginated results.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   Contains a list of engine default parameters.
    #   @return [Array<Types::Parameter>]
    #
    # @!attribute [rw] cache_node_type_specific_parameters
    #   A list of parameters specific to a particular cache node type. Each
    #   element in the list contains detailed information about one
    #   parameter.
    #   @return [Array<Types::CacheNodeTypeSpecificParameter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/EngineDefaults AWS API Documentation
    #
    class EngineDefaults < Struct.new(
      :cache_parameter_group_family,
      :marker,
      :parameters,
      :cache_node_type_specific_parameters)
      include Aws::Structure
    end

    # Represents a single occurrence of something interesting within the
    # system. Some examples of events are creating a cluster, adding or
    # removing a cache node, or rebooting a node.
    #
    # @!attribute [rw] source_identifier
    #   The identifier for the source of the event. For example, if the
    #   event occurred at the cluster level, the identifier would be the
    #   name of the cluster.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/Event AWS API Documentation
    #
    class Event < Struct.new(
      :source_identifier,
      :source_type,
      :message,
      :date)
      include Aws::Structure
    end

    # Represents the output of a `DescribeEvents` operation.
    #
    # @!attribute [rw] marker
    #   Provides an identifier to allow retrieval of paginated results.
    #   @return [String]
    #
    # @!attribute [rw] events
    #   A list of events. Each element in the list contains detailed
    #   information about one event.
    #   @return [Array<Types::Event>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/EventsMessage AWS API Documentation
    #
    class EventsMessage < Struct.new(
      :marker,
      :events)
      include Aws::Structure
    end

    # @note When making an API call, you may pass IncreaseReplicaCountMessage
    #   data as a hash:
    #
    #       {
    #         replication_group_id: "String", # required
    #         new_replica_count: 1,
    #         replica_configuration: [
    #           {
    #             node_group_id: "AllowedNodeGroupId", # required
    #             new_replica_count: 1, # required
    #             preferred_availability_zones: ["String"],
    #           },
    #         ],
    #         apply_immediately: false, # required
    #       }
    #
    # @!attribute [rw] replication_group_id
    #   The id of the replication group to which you want to add replica
    #   nodes.
    #   @return [String]
    #
    # @!attribute [rw] new_replica_count
    #   The number of read replica nodes you want at the completion of this
    #   operation. For Redis (cluster mode disabled) replication groups,
    #   this is the number of replica nodes in the replication group. For
    #   Redis (cluster mode enabled) replication groups, this is the number
    #   of replica nodes in each of the replication group's node groups.
    #   @return [Integer]
    #
    # @!attribute [rw] replica_configuration
    #   A list of `ConfigureShard` objects that can be used to configure
    #   each shard in a Redis (cluster mode enabled) replication group. The
    #   `ConfigureShard` has three members: `NewReplicaCount`,
    #   `NodeGroupId`, and `PreferredAvailabilityZones`.
    #   @return [Array<Types::ConfigureShard>]
    #
    # @!attribute [rw] apply_immediately
    #   If `True`, the number of replica nodes is increased immediately. If
    #   `False`, the number of replica nodes is increased during the next
    #   maintenance window.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/IncreaseReplicaCountMessage AWS API Documentation
    #
    class IncreaseReplicaCountMessage < Struct.new(
      :replication_group_id,
      :new_replica_count,
      :replica_configuration,
      :apply_immediately)
      include Aws::Structure
    end

    # @!attribute [rw] replication_group
    #   Contains all of the attributes of a specific Redis replication
    #   group.
    #   @return [Types::ReplicationGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/IncreaseReplicaCountResult AWS API Documentation
    #
    class IncreaseReplicaCountResult < Struct.new(
      :replication_group)
      include Aws::Structure
    end

    # The input parameters for the `ListAllowedNodeTypeModifications`
    # operation.
    #
    # @note When making an API call, you may pass ListAllowedNodeTypeModificationsMessage
    #   data as a hash:
    #
    #       {
    #         cache_cluster_id: "String",
    #         replication_group_id: "String",
    #       }
    #
    # @!attribute [rw] cache_cluster_id
    #   The name of the cluster you want to scale up to a larger node
    #   instanced type. ElastiCache uses the cluster id to identify the
    #   current node type of this cluster and from that to create a list of
    #   node types you can scale up to.
    #
    #   You must provide a value for either the `CacheClusterId` or the
    #   `ReplicationGroupId`.
    #   @return [String]
    #
    # @!attribute [rw] replication_group_id
    #   The name of the replication group want to scale up to a larger node
    #   type. ElastiCache uses the replication group id to identify the
    #   current node type being used by this replication group, and from
    #   that to create a list of node types you can scale up to.
    #
    #   You must provide a value for either the `CacheClusterId` or the
    #   `ReplicationGroupId`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/ListAllowedNodeTypeModificationsMessage AWS API Documentation
    #
    class ListAllowedNodeTypeModificationsMessage < Struct.new(
      :cache_cluster_id,
      :replication_group_id)
      include Aws::Structure
    end

    # The input parameters for the `ListTagsForResource` operation.
    #
    # @note When making an API call, you may pass ListTagsForResourceMessage
    #   data as a hash:
    #
    #       {
    #         resource_name: "String", # required
    #       }
    #
    # @!attribute [rw] resource_name
    #   The Amazon Resource Name (ARN) of the resource for which you want
    #   the list of tags, for example
    #   `arn:aws:elasticache:us-west-2:0123456789:cluster:myCluster` or
    #   `arn:aws:elasticache:us-west-2:0123456789:snapshot:mySnapshot`.
    #
    #   For more information about ARNs, see [Amazon Resource Names (ARNs)
    #   and AWS Service Namespaces][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/ListTagsForResourceMessage AWS API Documentation
    #
    class ListTagsForResourceMessage < Struct.new(
      :resource_name)
      include Aws::Structure
    end

    # Represents the input of a `ModifyCacheCluster` operation.
    #
    # @note When making an API call, you may pass ModifyCacheClusterMessage
    #   data as a hash:
    #
    #       {
    #         cache_cluster_id: "String", # required
    #         num_cache_nodes: 1,
    #         cache_node_ids_to_remove: ["String"],
    #         az_mode: "single-az", # accepts single-az, cross-az
    #         new_availability_zones: ["String"],
    #         cache_security_group_names: ["String"],
    #         security_group_ids: ["String"],
    #         preferred_maintenance_window: "String",
    #         notification_topic_arn: "String",
    #         cache_parameter_group_name: "String",
    #         notification_topic_status: "String",
    #         apply_immediately: false,
    #         engine_version: "String",
    #         auto_minor_version_upgrade: false,
    #         snapshot_retention_limit: 1,
    #         snapshot_window: "String",
    #         cache_node_type: "String",
    #       }
    #
    # @!attribute [rw] cache_cluster_id
    #   The cluster identifier. This value is stored as a lowercase string.
    #   @return [String]
    #
    # @!attribute [rw] num_cache_nodes
    #   The number of cache nodes that the cluster should have. If the value
    #   for `NumCacheNodes` is greater than the sum of the number of current
    #   cache nodes and the number of cache nodes pending creation (which
    #   may be zero), more nodes are added. If the value is less than the
    #   number of existing cache nodes, nodes are removed. If the value is
    #   equal to the number of current cache nodes, any pending add or
    #   remove requests are canceled.
    #
    #   If you are removing cache nodes, you must use the
    #   `CacheNodeIdsToRemove` parameter to provide the IDs of the specific
    #   cache nodes to remove.
    #
    #   For clusters running Redis, this value must be 1. For clusters
    #   running Memcached, this value must be between 1 and 20.
    #
    #   <note markdown="1"> Adding or removing Memcached cache nodes can be applied immediately
    #   or as a pending operation (see `ApplyImmediately`).
    #
    #    A pending operation to modify the number of cache nodes in a cluster
    #   during its maintenance window, whether by adding or removing nodes
    #   in accordance with the scale out architecture, is not queued. The
    #   customer's latest request to add or remove nodes to the cluster
    #   overrides any previous pending operations to modify the number of
    #   cache nodes in the cluster. For example, a request to remove 2 nodes
    #   would override a previous pending operation to remove 3 nodes.
    #   Similarly, a request to add 2 nodes would override a previous
    #   pending operation to remove 3 nodes and vice versa. As Memcached
    #   cache nodes may now be provisioned in different Availability Zones
    #   with flexible cache node placement, a request to add nodes does not
    #   automatically override a previous pending operation to add nodes.
    #   The customer can modify the previous pending operation to add more
    #   nodes or explicitly cancel the pending request and retry the new
    #   request. To cancel pending operations to modify the number of cache
    #   nodes in a cluster, use the `ModifyCacheCluster` request and set
    #   `NumCacheNodes` equal to the number of cache nodes currently in the
    #   cluster.
    #
    #    </note>
    #   @return [Integer]
    #
    # @!attribute [rw] cache_node_ids_to_remove
    #   A list of cache node IDs to be removed. A node ID is a numeric
    #   identifier (0001, 0002, etc.). This parameter is only valid when
    #   `NumCacheNodes` is less than the existing number of cache nodes. The
    #   number of cache node IDs supplied in this parameter must match the
    #   difference between the existing number of cache nodes in the cluster
    #   or pending cache nodes, whichever is greater, and the value of
    #   `NumCacheNodes` in the request.
    #
    #   For example: If you have 3 active cache nodes, 7 pending cache
    #   nodes, and the number of cache nodes in this `ModifyCacheCluster`
    #   call is 5, you must list 2 (7 - 5) cache node IDs to remove.
    #   @return [Array<String>]
    #
    # @!attribute [rw] az_mode
    #   Specifies whether the new nodes in this Memcached cluster are all
    #   created in a single Availability Zone or created across multiple
    #   Availability Zones.
    #
    #   Valid values: `single-az` \| `cross-az`.
    #
    #   This option is only supported for Memcached clusters.
    #
    #   <note markdown="1"> You cannot specify `single-az` if the Memcached cluster already has
    #   cache nodes in different Availability Zones. If `cross-az` is
    #   specified, existing Memcached nodes remain in their current
    #   Availability Zone.
    #
    #    Only newly created nodes are located in different Availability
    #   Zones. For instructions on how to move existing Memcached nodes to
    #   different Availability Zones, see the **Availability Zone
    #   Considerations** section of [Cache Node Considerations for
    #   Memcached][1].
    #
    #    </note>
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonElastiCache/latest/mem-ug/CacheNode.Memcached.html
    #   @return [String]
    #
    # @!attribute [rw] new_availability_zones
    #   The list of Availability Zones where the new Memcached cache nodes
    #   are created.
    #
    #   This parameter is only valid when `NumCacheNodes` in the request is
    #   greater than the sum of the number of active cache nodes and the
    #   number of cache nodes pending creation (which may be zero). The
    #   number of Availability Zones supplied in this list must match the
    #   cache nodes being added in this request.
    #
    #   This option is only supported on Memcached clusters.
    #
    #   Scenarios:
    #
    #   * **Scenario 1:** You have 3 active nodes and wish to add 2 nodes.
    #     Specify `NumCacheNodes=5` (3 + 2) and optionally specify two
    #     Availability Zones for the two new nodes.
    #
    #   * **Scenario 2:** You have 3 active nodes and 2 nodes pending
    #     creation (from the scenario 1 call) and want to add 1 more node.
    #     Specify `NumCacheNodes=6` ((3 + 2) + 1) and optionally specify an
    #     Availability Zone for the new node.
    #
    #   * **Scenario 3:** You want to cancel all pending operations. Specify
    #     `NumCacheNodes=3` to cancel all pending operations.
    #
    #   The Availability Zone placement of nodes pending creation cannot be
    #   modified. If you wish to cancel any nodes pending creation, add 0
    #   nodes by setting `NumCacheNodes` to the number of current nodes.
    #
    #   If `cross-az` is specified, existing Memcached nodes remain in their
    #   current Availability Zone. Only newly created nodes can be located
    #   in different Availability Zones. For guidance on how to move
    #   existing Memcached nodes to different Availability Zones, see the
    #   **Availability Zone Considerations** section of [Cache Node
    #   Considerations for Memcached][1].
    #
    #   **Impact of new add/remove requests upon pending requests**
    #
    #   * Scenario-1
    #
    #     * Pending Action: Delete
    #
    #     * New Request: Delete
    #
    #     * Result: The new delete, pending or immediate, replaces the
    #       pending delete.
    #
    #   * Scenario-2
    #
    #     * Pending Action: Delete
    #
    #     * New Request: Create
    #
    #     * Result: The new create, pending or immediate, replaces the
    #       pending delete.
    #
    #   * Scenario-3
    #
    #     * Pending Action: Create
    #
    #     * New Request: Delete
    #
    #     * Result: The new delete, pending or immediate, replaces the
    #       pending create.
    #
    #   * Scenario-4
    #
    #     * Pending Action: Create
    #
    #     * New Request: Create
    #
    #     * Result: The new create is added to the pending create.
    #
    #       **Important:** If the new create request is **Apply Immediately
    #       - Yes**, all creates are performed immediately. If the new
    #       create request is **Apply Immediately - No**, all creates are
    #       pending.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonElastiCache/latest/mem-ug/CacheNode.Memcached.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] cache_security_group_names
    #   A list of cache security group names to authorize on this cluster.
    #   This change is asynchronously applied as soon as possible.
    #
    #   You can use this parameter only with clusters that are created
    #   outside of an Amazon Virtual Private Cloud (Amazon VPC).
    #
    #   Constraints: Must contain no more than 255 alphanumeric characters.
    #   Must not be "Default".
    #   @return [Array<String>]
    #
    # @!attribute [rw] security_group_ids
    #   Specifies the VPC Security Groups associated with the cluster.
    #
    #   This parameter can be used only with clusters that are created in an
    #   Amazon Virtual Private Cloud (Amazon VPC).
    #   @return [Array<String>]
    #
    # @!attribute [rw] preferred_maintenance_window
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
    # @!attribute [rw] notification_topic_arn
    #   The Amazon Resource Name (ARN) of the Amazon SNS topic to which
    #   notifications are sent.
    #
    #   <note markdown="1"> The Amazon SNS topic owner must be same as the cluster owner.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] cache_parameter_group_name
    #   The name of the cache parameter group to apply to this cluster. This
    #   change is asynchronously applied as soon as possible for parameters
    #   when the `ApplyImmediately` parameter is specified as `true` for
    #   this request.
    #   @return [String]
    #
    # @!attribute [rw] notification_topic_status
    #   The status of the Amazon SNS notification topic. Notifications are
    #   sent only if the status is `active`.
    #
    #   Valid values: `active` \| `inactive`
    #   @return [String]
    #
    # @!attribute [rw] apply_immediately
    #   If `true`, this parameter causes the modifications in this request
    #   and any pending modifications to be applied, asynchronously and as
    #   soon as possible, regardless of the `PreferredMaintenanceWindow`
    #   setting for the cluster.
    #
    #   If `false`, changes to the cluster are applied on the next
    #   maintenance reboot, or the next failure reboot, whichever occurs
    #   first.
    #
    #   If you perform a `ModifyCacheCluster` before a pending modification
    #   is applied, the pending modification is replaced by the newer
    #   modification.
    #
    #   Valid values: `true` \| `false`
    #
    #   Default: `false`
    #   @return [Boolean]
    #
    # @!attribute [rw] engine_version
    #   The upgraded version of the cache engine to be run on the cache
    #   nodes.
    #
    #   **Important:** You can upgrade to a newer engine version (see
    #   [Selecting a Cache Engine and Version][1]), but you cannot downgrade
    #   to an earlier engine version. If you want to use an earlier engine
    #   version, you must delete the existing cluster and create it anew
    #   with the earlier engine version.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/SelectEngine.html#VersionManagement
    #   @return [String]
    #
    # @!attribute [rw] auto_minor_version_upgrade
    #   This parameter is currently disabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] snapshot_retention_limit
    #   The number of days for which ElastiCache retains automatic cluster
    #   snapshots before deleting them. For example, if you set
    #   `SnapshotRetentionLimit` to 5, a snapshot that was taken today is
    #   retained for 5 days before being deleted.
    #
    #   <note markdown="1"> If the value of `SnapshotRetentionLimit` is set to zero (0), backups
    #   are turned off.
    #
    #    </note>
    #   @return [Integer]
    #
    # @!attribute [rw] snapshot_window
    #   The daily time range (in UTC) during which ElastiCache begins taking
    #   a daily snapshot of your cluster.
    #   @return [String]
    #
    # @!attribute [rw] cache_node_type
    #   A valid cache node type that you want to scale this cluster up to.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/ModifyCacheClusterMessage AWS API Documentation
    #
    class ModifyCacheClusterMessage < Struct.new(
      :cache_cluster_id,
      :num_cache_nodes,
      :cache_node_ids_to_remove,
      :az_mode,
      :new_availability_zones,
      :cache_security_group_names,
      :security_group_ids,
      :preferred_maintenance_window,
      :notification_topic_arn,
      :cache_parameter_group_name,
      :notification_topic_status,
      :apply_immediately,
      :engine_version,
      :auto_minor_version_upgrade,
      :snapshot_retention_limit,
      :snapshot_window,
      :cache_node_type)
      include Aws::Structure
    end

    # @!attribute [rw] cache_cluster
    #   Contains all of the attributes of a specific cluster.
    #   @return [Types::CacheCluster]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/ModifyCacheClusterResult AWS API Documentation
    #
    class ModifyCacheClusterResult < Struct.new(
      :cache_cluster)
      include Aws::Structure
    end

    # Represents the input of a `ModifyCacheParameterGroup` operation.
    #
    # @note When making an API call, you may pass ModifyCacheParameterGroupMessage
    #   data as a hash:
    #
    #       {
    #         cache_parameter_group_name: "String", # required
    #         parameter_name_values: [ # required
    #           {
    #             parameter_name: "String",
    #             parameter_value: "String",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] cache_parameter_group_name
    #   The name of the cache parameter group to modify.
    #   @return [String]
    #
    # @!attribute [rw] parameter_name_values
    #   An array of parameter names and values for the parameter update. You
    #   must supply at least one parameter name and value; subsequent
    #   arguments are optional. A maximum of 20 parameters may be modified
    #   per request.
    #   @return [Array<Types::ParameterNameValue>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/ModifyCacheParameterGroupMessage AWS API Documentation
    #
    class ModifyCacheParameterGroupMessage < Struct.new(
      :cache_parameter_group_name,
      :parameter_name_values)
      include Aws::Structure
    end

    # Represents the input of a `ModifyCacheSubnetGroup` operation.
    #
    # @note When making an API call, you may pass ModifyCacheSubnetGroupMessage
    #   data as a hash:
    #
    #       {
    #         cache_subnet_group_name: "String", # required
    #         cache_subnet_group_description: "String",
    #         subnet_ids: ["String"],
    #       }
    #
    # @!attribute [rw] cache_subnet_group_name
    #   The name for the cache subnet group. This value is stored as a
    #   lowercase string.
    #
    #   Constraints: Must contain no more than 255 alphanumeric characters
    #   or hyphens.
    #
    #   Example: `mysubnetgroup`
    #   @return [String]
    #
    # @!attribute [rw] cache_subnet_group_description
    #   A description of the cache subnet group.
    #   @return [String]
    #
    # @!attribute [rw] subnet_ids
    #   The EC2 subnet IDs for the cache subnet group.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/ModifyCacheSubnetGroupMessage AWS API Documentation
    #
    class ModifyCacheSubnetGroupMessage < Struct.new(
      :cache_subnet_group_name,
      :cache_subnet_group_description,
      :subnet_ids)
      include Aws::Structure
    end

    # @!attribute [rw] cache_subnet_group
    #   Represents the output of one of the following operations:
    #
    #   * `CreateCacheSubnetGroup`
    #
    #   * `ModifyCacheSubnetGroup`
    #   @return [Types::CacheSubnetGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/ModifyCacheSubnetGroupResult AWS API Documentation
    #
    class ModifyCacheSubnetGroupResult < Struct.new(
      :cache_subnet_group)
      include Aws::Structure
    end

    # Represents the input of a `ModifyReplicationGroups` operation.
    #
    # @note When making an API call, you may pass ModifyReplicationGroupMessage
    #   data as a hash:
    #
    #       {
    #         replication_group_id: "String", # required
    #         replication_group_description: "String",
    #         primary_cluster_id: "String",
    #         snapshotting_cluster_id: "String",
    #         automatic_failover_enabled: false,
    #         cache_security_group_names: ["String"],
    #         security_group_ids: ["String"],
    #         preferred_maintenance_window: "String",
    #         notification_topic_arn: "String",
    #         cache_parameter_group_name: "String",
    #         notification_topic_status: "String",
    #         apply_immediately: false,
    #         engine_version: "String",
    #         auto_minor_version_upgrade: false,
    #         snapshot_retention_limit: 1,
    #         snapshot_window: "String",
    #         cache_node_type: "String",
    #         node_group_id: "String",
    #       }
    #
    # @!attribute [rw] replication_group_id
    #   The identifier of the replication group to modify.
    #   @return [String]
    #
    # @!attribute [rw] replication_group_description
    #   A description for the replication group. Maximum length is 255
    #   characters.
    #   @return [String]
    #
    # @!attribute [rw] primary_cluster_id
    #   For replication groups with a single primary, if this parameter is
    #   specified, ElastiCache promotes the specified cluster in the
    #   specified replication group to the primary role. The nodes of all
    #   other clusters in the replication group are read replicas.
    #   @return [String]
    #
    # @!attribute [rw] snapshotting_cluster_id
    #   The cluster ID that is used as the daily snapshot source for the
    #   replication group. This parameter cannot be set for Redis (cluster
    #   mode enabled) replication groups.
    #   @return [String]
    #
    # @!attribute [rw] automatic_failover_enabled
    #   Determines whether a read replica is automatically promoted to
    #   read/write primary if the existing primary encounters a failure.
    #
    #   Valid values: `true` \| `false`
    #
    #   Amazon ElastiCache for Redis does not support Multi-AZ with
    #   automatic failover on:
    #
    #   * Redis versions earlier than 2.8.6.
    #
    #   * Redis (cluster mode disabled): T1 and T2 cache node types.
    #
    #   * Redis (cluster mode enabled): T1 node types.
    #   @return [Boolean]
    #
    # @!attribute [rw] cache_security_group_names
    #   A list of cache security group names to authorize for the clusters
    #   in this replication group. This change is asynchronously applied as
    #   soon as possible.
    #
    #   This parameter can be used only with replication group containing
    #   clusters running outside of an Amazon Virtual Private Cloud (Amazon
    #   VPC).
    #
    #   Constraints: Must contain no more than 255 alphanumeric characters.
    #   Must not be `Default`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] security_group_ids
    #   Specifies the VPC Security Groups associated with the clusters in
    #   the replication group.
    #
    #   This parameter can be used only with replication group containing
    #   clusters running in an Amazon Virtual Private Cloud (Amazon VPC).
    #   @return [Array<String>]
    #
    # @!attribute [rw] preferred_maintenance_window
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
    # @!attribute [rw] notification_topic_arn
    #   The Amazon Resource Name (ARN) of the Amazon SNS topic to which
    #   notifications are sent.
    #
    #   <note markdown="1"> The Amazon SNS topic owner must be same as the replication group
    #   owner.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] cache_parameter_group_name
    #   The name of the cache parameter group to apply to all of the
    #   clusters in this replication group. This change is asynchronously
    #   applied as soon as possible for parameters when the
    #   `ApplyImmediately` parameter is specified as `true` for this
    #   request.
    #   @return [String]
    #
    # @!attribute [rw] notification_topic_status
    #   The status of the Amazon SNS notification topic for the replication
    #   group. Notifications are sent only if the status is `active`.
    #
    #   Valid values: `active` \| `inactive`
    #   @return [String]
    #
    # @!attribute [rw] apply_immediately
    #   If `true`, this parameter causes the modifications in this request
    #   and any pending modifications to be applied, asynchronously and as
    #   soon as possible, regardless of the `PreferredMaintenanceWindow`
    #   setting for the replication group.
    #
    #   If `false`, changes to the nodes in the replication group are
    #   applied on the next maintenance reboot, or the next failure reboot,
    #   whichever occurs first.
    #
    #   Valid values: `true` \| `false`
    #
    #   Default: `false`
    #   @return [Boolean]
    #
    # @!attribute [rw] engine_version
    #   The upgraded version of the cache engine to be run on the clusters
    #   in the replication group.
    #
    #   **Important:** You can upgrade to a newer engine version (see
    #   [Selecting a Cache Engine and Version][1]), but you cannot downgrade
    #   to an earlier engine version. If you want to use an earlier engine
    #   version, you must delete the existing replication group and create
    #   it anew with the earlier engine version.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/SelectEngine.html#VersionManagement
    #   @return [String]
    #
    # @!attribute [rw] auto_minor_version_upgrade
    #   This parameter is currently disabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] snapshot_retention_limit
    #   The number of days for which ElastiCache retains automatic node
    #   group (shard) snapshots before deleting them. For example, if you
    #   set `SnapshotRetentionLimit` to 5, a snapshot that was taken today
    #   is retained for 5 days before being deleted.
    #
    #   **Important** If the value of SnapshotRetentionLimit is set to zero
    #   (0), backups are turned off.
    #   @return [Integer]
    #
    # @!attribute [rw] snapshot_window
    #   The daily time range (in UTC) during which ElastiCache begins taking
    #   a daily snapshot of the node group (shard) specified by
    #   `SnapshottingClusterId`.
    #
    #   Example: `05:00-09:00`
    #
    #   If you do not specify this parameter, ElastiCache automatically
    #   chooses an appropriate time range.
    #   @return [String]
    #
    # @!attribute [rw] cache_node_type
    #   A valid cache node type that you want to scale this replication
    #   group to.
    #   @return [String]
    #
    # @!attribute [rw] node_group_id
    #   Deprecated. This parameter is not used.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/ModifyReplicationGroupMessage AWS API Documentation
    #
    class ModifyReplicationGroupMessage < Struct.new(
      :replication_group_id,
      :replication_group_description,
      :primary_cluster_id,
      :snapshotting_cluster_id,
      :automatic_failover_enabled,
      :cache_security_group_names,
      :security_group_ids,
      :preferred_maintenance_window,
      :notification_topic_arn,
      :cache_parameter_group_name,
      :notification_topic_status,
      :apply_immediately,
      :engine_version,
      :auto_minor_version_upgrade,
      :snapshot_retention_limit,
      :snapshot_window,
      :cache_node_type,
      :node_group_id)
      include Aws::Structure
    end

    # @!attribute [rw] replication_group
    #   Contains all of the attributes of a specific Redis replication
    #   group.
    #   @return [Types::ReplicationGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/ModifyReplicationGroupResult AWS API Documentation
    #
    class ModifyReplicationGroupResult < Struct.new(
      :replication_group)
      include Aws::Structure
    end

    # Represents the input for a `ModifyReplicationGroupShardConfiguration`
    # operation.
    #
    # @note When making an API call, you may pass ModifyReplicationGroupShardConfigurationMessage
    #   data as a hash:
    #
    #       {
    #         replication_group_id: "String", # required
    #         node_group_count: 1, # required
    #         apply_immediately: false, # required
    #         resharding_configuration: [
    #           {
    #             node_group_id: "AllowedNodeGroupId",
    #             preferred_availability_zones: ["String"],
    #           },
    #         ],
    #         node_groups_to_remove: ["AllowedNodeGroupId"],
    #         node_groups_to_retain: ["AllowedNodeGroupId"],
    #       }
    #
    # @!attribute [rw] replication_group_id
    #   The name of the Redis (cluster mode enabled) cluster (replication
    #   group) on which the shards are to be configured.
    #   @return [String]
    #
    # @!attribute [rw] node_group_count
    #   The number of node groups (shards) that results from the
    #   modification of the shard configuration.
    #   @return [Integer]
    #
    # @!attribute [rw] apply_immediately
    #   Indicates that the shard reconfiguration process begins immediately.
    #   At present, the only permitted value for this parameter is `true`.
    #
    #   Value: true
    #   @return [Boolean]
    #
    # @!attribute [rw] resharding_configuration
    #   Specifies the preferred availability zones for each node group in
    #   the cluster. If the value of `NodeGroupCount` is greater than the
    #   current number of node groups (shards), you can use this parameter
    #   to specify the preferred availability zones of the cluster's
    #   shards. If you omit this parameter ElastiCache selects availability
    #   zones for you.
    #
    #   You can specify this parameter only if the value of `NodeGroupCount`
    #   is greater than the current number of node groups (shards).
    #   @return [Array<Types::ReshardingConfiguration>]
    #
    # @!attribute [rw] node_groups_to_remove
    #   If the value of `NodeGroupCount` is less than the current number of
    #   node groups (shards), the `NodeGroupsToRemove` or
    #   `NodeGroupsToRetain` is a required list of node group ids to remove
    #   from or retain in the cluster.
    #
    #   ElastiCache for Redis will attempt to remove all node groups listed
    #   by `NodeGroupsToRemove` from the cluster.
    #   @return [Array<String>]
    #
    # @!attribute [rw] node_groups_to_retain
    #   If the value of `NodeGroupCount` is less than the current number of
    #   node groups (shards), the `NodeGroupsToRemove` or
    #   `NodeGroupsToRetain` is a required list of node group ids to remove
    #   from or retain in the cluster.
    #
    #   ElastiCache for Redis will attempt to remove all node groups except
    #   those listed by `NodeGroupsToRetain` from the cluster.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/ModifyReplicationGroupShardConfigurationMessage AWS API Documentation
    #
    class ModifyReplicationGroupShardConfigurationMessage < Struct.new(
      :replication_group_id,
      :node_group_count,
      :apply_immediately,
      :resharding_configuration,
      :node_groups_to_remove,
      :node_groups_to_retain)
      include Aws::Structure
    end

    # @!attribute [rw] replication_group
    #   Contains all of the attributes of a specific Redis replication
    #   group.
    #   @return [Types::ReplicationGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/ModifyReplicationGroupShardConfigurationResult AWS API Documentation
    #
    class ModifyReplicationGroupShardConfigurationResult < Struct.new(
      :replication_group)
      include Aws::Structure
    end

    # Represents a collection of cache nodes in a replication group. One
    # node in the node group is the read/write primary node. All the other
    # nodes are read-only Replica nodes.
    #
    # @!attribute [rw] node_group_id
    #   The identifier for the node group (shard). A Redis (cluster mode
    #   disabled) replication group contains only 1 node group; therefore,
    #   the node group ID is 0001. A Redis (cluster mode enabled)
    #   replication group contains 1 to 15 node groups numbered 0001 to
    #   0015.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current state of this replication group - `creating`,
    #   `available`, etc.
    #   @return [String]
    #
    # @!attribute [rw] primary_endpoint
    #   The endpoint of the primary node in this node group (shard).
    #   @return [Types::Endpoint]
    #
    # @!attribute [rw] slots
    #   The keyspace for this node group (shard).
    #   @return [String]
    #
    # @!attribute [rw] node_group_members
    #   A list containing information about individual nodes within the node
    #   group (shard).
    #   @return [Array<Types::NodeGroupMember>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/NodeGroup AWS API Documentation
    #
    class NodeGroup < Struct.new(
      :node_group_id,
      :status,
      :primary_endpoint,
      :slots,
      :node_group_members)
      include Aws::Structure
    end

    # Node group (shard) configuration options. Each node group (shard)
    # configuration has the following: `Slots`, `PrimaryAvailabilityZone`,
    # `ReplicaAvailabilityZones`, `ReplicaCount`.
    #
    # @note When making an API call, you may pass NodeGroupConfiguration
    #   data as a hash:
    #
    #       {
    #         node_group_id: "AllowedNodeGroupId",
    #         slots: "String",
    #         replica_count: 1,
    #         primary_availability_zone: "String",
    #         replica_availability_zones: ["String"],
    #       }
    #
    # @!attribute [rw] node_group_id
    #   The 4-digit id for the node group these configuration values apply
    #   to.
    #   @return [String]
    #
    # @!attribute [rw] slots
    #   A string that specifies the keyspace for a particular node group.
    #   Keyspaces range from 0 to 16,383. The string is in the format
    #   `startkey-endkey`.
    #
    #   Example: `"0-3999"`
    #   @return [String]
    #
    # @!attribute [rw] replica_count
    #   The number of read replica nodes in this node group (shard).
    #   @return [Integer]
    #
    # @!attribute [rw] primary_availability_zone
    #   The Availability Zone where the primary node of this node group
    #   (shard) is launched.
    #   @return [String]
    #
    # @!attribute [rw] replica_availability_zones
    #   A list of Availability Zones to be used for the read replicas. The
    #   number of Availability Zones in this list must match the value of
    #   `ReplicaCount` or `ReplicasPerNodeGroup` if not specified.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/NodeGroupConfiguration AWS API Documentation
    #
    class NodeGroupConfiguration < Struct.new(
      :node_group_id,
      :slots,
      :replica_count,
      :primary_availability_zone,
      :replica_availability_zones)
      include Aws::Structure
    end

    # Represents a single node within a node group (shard).
    #
    # @!attribute [rw] cache_cluster_id
    #   The ID of the cluster to which the node belongs.
    #   @return [String]
    #
    # @!attribute [rw] cache_node_id
    #   The ID of the node within its cluster. A node ID is a numeric
    #   identifier (0001, 0002, etc.).
    #   @return [String]
    #
    # @!attribute [rw] read_endpoint
    #   The information required for client programs to connect to a node
    #   for read operations. The read endpoint is only applicable on Redis
    #   (cluster mode disabled) clusters.
    #   @return [Types::Endpoint]
    #
    # @!attribute [rw] preferred_availability_zone
    #   The name of the Availability Zone in which the node is located.
    #   @return [String]
    #
    # @!attribute [rw] current_role
    #   The role that is currently assigned to the node - `primary` or
    #   `replica`. This member is only applicable for Redis (cluster mode
    #   disabled) replication groups.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/NodeGroupMember AWS API Documentation
    #
    class NodeGroupMember < Struct.new(
      :cache_cluster_id,
      :cache_node_id,
      :read_endpoint,
      :preferred_availability_zone,
      :current_role)
      include Aws::Structure
    end

    # Represents an individual cache node in a snapshot of a cluster.
    #
    # @!attribute [rw] cache_cluster_id
    #   A unique identifier for the source cluster.
    #   @return [String]
    #
    # @!attribute [rw] node_group_id
    #   A unique identifier for the source node group (shard).
    #   @return [String]
    #
    # @!attribute [rw] cache_node_id
    #   The cache node identifier for the node in the source cluster.
    #   @return [String]
    #
    # @!attribute [rw] node_group_configuration
    #   The configuration for the source node group (shard).
    #   @return [Types::NodeGroupConfiguration]
    #
    # @!attribute [rw] cache_size
    #   The size of the cache on the source cache node.
    #   @return [String]
    #
    # @!attribute [rw] cache_node_create_time
    #   The date and time when the cache node was created in the source
    #   cluster.
    #   @return [Time]
    #
    # @!attribute [rw] snapshot_create_time
    #   The date and time when the source node's metadata and cache data
    #   set was obtained for the snapshot.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/NodeSnapshot AWS API Documentation
    #
    class NodeSnapshot < Struct.new(
      :cache_cluster_id,
      :node_group_id,
      :cache_node_id,
      :node_group_configuration,
      :cache_size,
      :cache_node_create_time,
      :snapshot_create_time)
      include Aws::Structure
    end

    # Describes a notification topic and its status. Notification topics are
    # used for publishing ElastiCache events to subscribers using Amazon
    # Simple Notification Service (SNS).
    #
    # @!attribute [rw] topic_arn
    #   The Amazon Resource Name (ARN) that identifies the topic.
    #   @return [String]
    #
    # @!attribute [rw] topic_status
    #   The current state of the topic.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/NotificationConfiguration AWS API Documentation
    #
    class NotificationConfiguration < Struct.new(
      :topic_arn,
      :topic_status)
      include Aws::Structure
    end

    # Describes an individual setting that controls some aspect of
    # ElastiCache behavior.
    #
    # @!attribute [rw] parameter_name
    #   The name of the parameter.
    #   @return [String]
    #
    # @!attribute [rw] parameter_value
    #   The value of the parameter.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the parameter.
    #   @return [String]
    #
    # @!attribute [rw] source
    #   The source of the parameter.
    #   @return [String]
    #
    # @!attribute [rw] data_type
    #   The valid data type for the parameter.
    #   @return [String]
    #
    # @!attribute [rw] allowed_values
    #   The valid range of values for the parameter.
    #   @return [String]
    #
    # @!attribute [rw] is_modifiable
    #   Indicates whether (`true`) or not (`false`) the parameter can be
    #   modified. Some parameters have security or operational implications
    #   that prevent them from being changed.
    #   @return [Boolean]
    #
    # @!attribute [rw] minimum_engine_version
    #   The earliest cache engine version to which the parameter can apply.
    #   @return [String]
    #
    # @!attribute [rw] change_type
    #   Indicates whether a change to the parameter is applied immediately
    #   or requires a reboot for the change to be applied. You can force a
    #   reboot or wait until the next maintenance window's reboot. For more
    #   information, see [Rebooting a Cluster][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/Clusters.Rebooting.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/Parameter AWS API Documentation
    #
    class Parameter < Struct.new(
      :parameter_name,
      :parameter_value,
      :description,
      :source,
      :data_type,
      :allowed_values,
      :is_modifiable,
      :minimum_engine_version,
      :change_type)
      include Aws::Structure
    end

    # Describes a name-value pair that is used to update the value of a
    # parameter.
    #
    # @note When making an API call, you may pass ParameterNameValue
    #   data as a hash:
    #
    #       {
    #         parameter_name: "String",
    #         parameter_value: "String",
    #       }
    #
    # @!attribute [rw] parameter_name
    #   The name of the parameter.
    #   @return [String]
    #
    # @!attribute [rw] parameter_value
    #   The value of the parameter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/ParameterNameValue AWS API Documentation
    #
    class ParameterNameValue < Struct.new(
      :parameter_name,
      :parameter_value)
      include Aws::Structure
    end

    # A group of settings that are applied to the cluster in the future, or
    # that are currently being applied.
    #
    # @!attribute [rw] num_cache_nodes
    #   The new number of cache nodes for the cluster.
    #
    #   For clusters running Redis, this value must be 1. For clusters
    #   running Memcached, this value must be between 1 and 20.
    #   @return [Integer]
    #
    # @!attribute [rw] cache_node_ids_to_remove
    #   A list of cache node IDs that are being removed (or will be removed)
    #   from the cluster. A node ID is a 4-digit numeric identifier (0001,
    #   0002, etc.).
    #   @return [Array<String>]
    #
    # @!attribute [rw] engine_version
    #   The new cache engine version that the cluster runs.
    #   @return [String]
    #
    # @!attribute [rw] cache_node_type
    #   The cache node type that this cluster or replication group is scaled
    #   to.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/PendingModifiedValues AWS API Documentation
    #
    class PendingModifiedValues < Struct.new(
      :num_cache_nodes,
      :cache_node_ids_to_remove,
      :engine_version,
      :cache_node_type)
      include Aws::Structure
    end

    # Represents the input of a `PurchaseReservedCacheNodesOffering`
    # operation.
    #
    # @note When making an API call, you may pass PurchaseReservedCacheNodesOfferingMessage
    #   data as a hash:
    #
    #       {
    #         reserved_cache_nodes_offering_id: "String", # required
    #         reserved_cache_node_id: "String",
    #         cache_node_count: 1,
    #       }
    #
    # @!attribute [rw] reserved_cache_nodes_offering_id
    #   The ID of the reserved cache node offering to purchase.
    #
    #   Example: `438012d3-4052-4cc7-b2e3-8d3372e0e706`
    #   @return [String]
    #
    # @!attribute [rw] reserved_cache_node_id
    #   A customer-specified identifier to track this reservation.
    #
    #   <note markdown="1"> The Reserved Cache Node ID is an unique customer-specified
    #   identifier to track this reservation. If this parameter is not
    #   specified, ElastiCache automatically generates an identifier for the
    #   reservation.
    #
    #    </note>
    #
    #   Example: myreservationID
    #   @return [String]
    #
    # @!attribute [rw] cache_node_count
    #   The number of cache node instances to reserve.
    #
    #   Default: `1`
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/PurchaseReservedCacheNodesOfferingMessage AWS API Documentation
    #
    class PurchaseReservedCacheNodesOfferingMessage < Struct.new(
      :reserved_cache_nodes_offering_id,
      :reserved_cache_node_id,
      :cache_node_count)
      include Aws::Structure
    end

    # @!attribute [rw] reserved_cache_node
    #   Represents the output of a `PurchaseReservedCacheNodesOffering`
    #   operation.
    #   @return [Types::ReservedCacheNode]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/PurchaseReservedCacheNodesOfferingResult AWS API Documentation
    #
    class PurchaseReservedCacheNodesOfferingResult < Struct.new(
      :reserved_cache_node)
      include Aws::Structure
    end

    # Represents the input of a `RebootCacheCluster` operation.
    #
    # @note When making an API call, you may pass RebootCacheClusterMessage
    #   data as a hash:
    #
    #       {
    #         cache_cluster_id: "String", # required
    #         cache_node_ids_to_reboot: ["String"], # required
    #       }
    #
    # @!attribute [rw] cache_cluster_id
    #   The cluster identifier. This parameter is stored as a lowercase
    #   string.
    #   @return [String]
    #
    # @!attribute [rw] cache_node_ids_to_reboot
    #   A list of cache node IDs to reboot. A node ID is a numeric
    #   identifier (0001, 0002, etc.). To reboot an entire cluster, specify
    #   all of the cache node IDs.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/RebootCacheClusterMessage AWS API Documentation
    #
    class RebootCacheClusterMessage < Struct.new(
      :cache_cluster_id,
      :cache_node_ids_to_reboot)
      include Aws::Structure
    end

    # @!attribute [rw] cache_cluster
    #   Contains all of the attributes of a specific cluster.
    #   @return [Types::CacheCluster]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/RebootCacheClusterResult AWS API Documentation
    #
    class RebootCacheClusterResult < Struct.new(
      :cache_cluster)
      include Aws::Structure
    end

    # Contains the specific price and frequency of a recurring charges for a
    # reserved cache node, or for a reserved cache node offering.
    #
    # @!attribute [rw] recurring_charge_amount
    #   The monetary amount of the recurring charge.
    #   @return [Float]
    #
    # @!attribute [rw] recurring_charge_frequency
    #   The frequency of the recurring charge.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/RecurringCharge AWS API Documentation
    #
    class RecurringCharge < Struct.new(
      :recurring_charge_amount,
      :recurring_charge_frequency)
      include Aws::Structure
    end

    # Represents the input of a `RemoveTagsFromResource` operation.
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
    #   The Amazon Resource Name (ARN) of the resource from which you want
    #   the tags removed, for example
    #   `arn:aws:elasticache:us-west-2:0123456789:cluster:myCluster` or
    #   `arn:aws:elasticache:us-west-2:0123456789:snapshot:mySnapshot`.
    #
    #   For more information about ARNs, see [Amazon Resource Names (ARNs)
    #   and AWS Service Namespaces][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   A list of `TagKeys` identifying the tags you want removed from the
    #   named resource.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/RemoveTagsFromResourceMessage AWS API Documentation
    #
    class RemoveTagsFromResourceMessage < Struct.new(
      :resource_name,
      :tag_keys)
      include Aws::Structure
    end

    # Contains all of the attributes of a specific Redis replication group.
    #
    # @!attribute [rw] replication_group_id
    #   The identifier for the replication group.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The user supplied description of the replication group.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current state of this replication group - `creating`,
    #   `available`, `modifying`, `deleting`, `create-failed`,
    #   `snapshotting`.
    #   @return [String]
    #
    # @!attribute [rw] pending_modified_values
    #   A group of settings to be applied to the replication group, either
    #   immediately or during the next maintenance window.
    #   @return [Types::ReplicationGroupPendingModifiedValues]
    #
    # @!attribute [rw] member_clusters
    #   The names of all the cache clusters that are part of this
    #   replication group.
    #   @return [Array<String>]
    #
    # @!attribute [rw] node_groups
    #   A list of node groups in this replication group. For Redis (cluster
    #   mode disabled) replication groups, this is a single-element list.
    #   For Redis (cluster mode enabled) replication groups, the list
    #   contains an entry for each node group (shard).
    #   @return [Array<Types::NodeGroup>]
    #
    # @!attribute [rw] snapshotting_cluster_id
    #   The cluster ID that is used as the daily snapshot source for the
    #   replication group.
    #   @return [String]
    #
    # @!attribute [rw] automatic_failover
    #   Indicates the status of Multi-AZ with automatic failover for this
    #   Redis replication group.
    #
    #   Amazon ElastiCache for Redis does not support Multi-AZ with
    #   automatic failover on:
    #
    #   * Redis versions earlier than 2.8.6.
    #
    #   * Redis (cluster mode disabled): T1 and T2 cache node types.
    #
    #   * Redis (cluster mode enabled): T1 node types.
    #   @return [String]
    #
    # @!attribute [rw] configuration_endpoint
    #   The configuration endpoint for this replication group. Use the
    #   configuration endpoint to connect to this replication group.
    #   @return [Types::Endpoint]
    #
    # @!attribute [rw] snapshot_retention_limit
    #   The number of days for which ElastiCache retains automatic cluster
    #   snapshots before deleting them. For example, if you set
    #   `SnapshotRetentionLimit` to 5, a snapshot that was taken today is
    #   retained for 5 days before being deleted.
    #
    #   If the value of `SnapshotRetentionLimit` is set to zero (0), backups
    #   are turned off.
    #   @return [Integer]
    #
    # @!attribute [rw] snapshot_window
    #   The daily time range (in UTC) during which ElastiCache begins taking
    #   a daily snapshot of your node group (shard).
    #
    #   Example: `05:00-09:00`
    #
    #   If you do not specify this parameter, ElastiCache automatically
    #   chooses an appropriate time range.
    #
    #   <note markdown="1"> This parameter is only valid if the `Engine` parameter is `redis`.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] cluster_enabled
    #   A flag indicating whether or not this replication group is cluster
    #   enabled; i.e., whether its data can be partitioned across multiple
    #   shards (API/CLI: node groups).
    #
    #   Valid values: `true` \| `false`
    #   @return [Boolean]
    #
    # @!attribute [rw] cache_node_type
    #   The name of the compute and memory capacity node type for each node
    #   in the replication group.
    #   @return [String]
    #
    # @!attribute [rw] auth_token_enabled
    #   A flag that enables using an `AuthToken` (password) when issuing
    #   Redis commands.
    #
    #   Default: `false`
    #   @return [Boolean]
    #
    # @!attribute [rw] transit_encryption_enabled
    #   A flag that enables in-transit encryption when set to `true`.
    #
    #   You cannot modify the value of `TransitEncryptionEnabled` after the
    #   cluster is created. To enable in-transit encryption on a cluster you
    #   must set `TransitEncryptionEnabled` to `true` when you create a
    #   cluster.
    #
    #   **Required:** Only available when creating a replication group in an
    #   Amazon VPC using redis version `3.2.6` or `4.x`.
    #
    #   Default: `false`
    #   @return [Boolean]
    #
    # @!attribute [rw] at_rest_encryption_enabled
    #   A flag that enables encryption at-rest when set to `true`.
    #
    #   You cannot modify the value of `AtRestEncryptionEnabled` after the
    #   cluster is created. To enable encryption at-rest on a cluster you
    #   must set `AtRestEncryptionEnabled` to `true` when you create a
    #   cluster.
    #
    #   **Required:** Only available when creating a replication group in an
    #   Amazon VPC using redis version `3.2.6` or `4.x`.
    #
    #   Default: `false`
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/ReplicationGroup AWS API Documentation
    #
    class ReplicationGroup < Struct.new(
      :replication_group_id,
      :description,
      :status,
      :pending_modified_values,
      :member_clusters,
      :node_groups,
      :snapshotting_cluster_id,
      :automatic_failover,
      :configuration_endpoint,
      :snapshot_retention_limit,
      :snapshot_window,
      :cluster_enabled,
      :cache_node_type,
      :auth_token_enabled,
      :transit_encryption_enabled,
      :at_rest_encryption_enabled)
      include Aws::Structure
    end

    # Represents the output of a `DescribeReplicationGroups` operation.
    #
    # @!attribute [rw] marker
    #   Provides an identifier to allow retrieval of paginated results.
    #   @return [String]
    #
    # @!attribute [rw] replication_groups
    #   A list of replication groups. Each item in the list contains
    #   detailed information about one replication group.
    #   @return [Array<Types::ReplicationGroup>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/ReplicationGroupMessage AWS API Documentation
    #
    class ReplicationGroupMessage < Struct.new(
      :marker,
      :replication_groups)
      include Aws::Structure
    end

    # The settings to be applied to the Redis replication group, either
    # immediately or during the next maintenance window.
    #
    # @!attribute [rw] primary_cluster_id
    #   The primary cluster ID that is applied immediately (if
    #   `--apply-immediately` was specified), or during the next maintenance
    #   window.
    #   @return [String]
    #
    # @!attribute [rw] automatic_failover_status
    #   Indicates the status of Multi-AZ with automatic failover for this
    #   Redis replication group.
    #
    #   Amazon ElastiCache for Redis does not support Multi-AZ with
    #   automatic failover on:
    #
    #   * Redis versions earlier than 2.8.6.
    #
    #   * Redis (cluster mode disabled): T1 and T2 cache node types.
    #
    #   * Redis (cluster mode enabled): T1 node types.
    #   @return [String]
    #
    # @!attribute [rw] resharding
    #   The status of an online resharding operation.
    #   @return [Types::ReshardingStatus]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/ReplicationGroupPendingModifiedValues AWS API Documentation
    #
    class ReplicationGroupPendingModifiedValues < Struct.new(
      :primary_cluster_id,
      :automatic_failover_status,
      :resharding)
      include Aws::Structure
    end

    # Represents the output of a `PurchaseReservedCacheNodesOffering`
    # operation.
    #
    # @!attribute [rw] reserved_cache_node_id
    #   The unique identifier for the reservation.
    #   @return [String]
    #
    # @!attribute [rw] reserved_cache_nodes_offering_id
    #   The offering identifier.
    #   @return [String]
    #
    # @!attribute [rw] cache_node_type
    #   The cache node type for the reserved cache nodes.
    #
    #   The following node types are supported by ElastiCache. Generally
    #   speaking, the current generation types provide more memory and
    #   computational power at lower cost when compared to their equivalent
    #   previous generation counterparts.
    #
    #   * General purpose:
    #
    #     * Current generation:
    #
    #       **T2 node types:** `cache.t2.micro`, `cache.t2.small`,
    #       `cache.t2.medium`
    #
    #       **M3 node types:** `cache.m3.medium`, `cache.m3.large`,
    #       `cache.m3.xlarge`, `cache.m3.2xlarge`
    #
    #       **M4 node types:** `cache.m4.large`, `cache.m4.xlarge`,
    #       `cache.m4.2xlarge`, `cache.m4.4xlarge`, `cache.m4.10xlarge`
    #
    #     * Previous generation: (not recommended)
    #
    #       **T1 node types:** `cache.t1.micro`
    #
    #       **M1 node types:** `cache.m1.small`, `cache.m1.medium`,
    #       `cache.m1.large`, `cache.m1.xlarge`
    #
    #   * Compute optimized:
    #
    #     * Previous generation: (not recommended)
    #
    #       **C1 node types:** `cache.c1.xlarge`
    #
    #   * Memory optimized:
    #
    #     * Current generation:
    #
    #       **R3 node types:** `cache.r3.large`, `cache.r3.xlarge`,
    #       `cache.r3.2xlarge`, `cache.r3.4xlarge`, `cache.r3.8xlarge`
    #
    #       **R4 node types;** `cache.r4.large`, `cache.r4.xlarge`,
    #       `cache.r4.2xlarge`, `cache.r4.4xlarge`, `cache.r4.8xlarge`,
    #       `cache.r4.16xlarge`
    #
    #     * Previous generation: (not recommended)
    #
    #       **M2 node types:** `cache.m2.xlarge`, `cache.m2.2xlarge`,
    #       `cache.m2.4xlarge`
    #
    #   **Notes:**
    #
    #   * All T2 instances are created in an Amazon Virtual Private Cloud
    #     (Amazon VPC).
    #
    #   * Redis (cluster mode disabled): Redis backup/restore is not
    #     supported on T1 and T2 instances.
    #
    #   * Redis (cluster mode enabled): Backup/restore is not supported on
    #     T1 instances.
    #
    #   * Redis Append-only files (AOF) functionality is not supported for
    #     T1 or T2 instances.
    #
    #   For a complete listing of node types and specifications, see:
    #
    #   * [Amazon ElastiCache Product Features and Details][1]
    #
    #   * [Cache Node Type-Specific Parameters for Memcached][2]
    #
    #   * [Cache Node Type-Specific Parameters for Redis][3]
    #
    #
    #
    #   [1]: http://aws.amazon.com/elasticache/details
    #   [2]: http://docs.aws.amazon.com/AmazonElastiCache/latest/mem-ug/ParameterGroups.Memcached.html#ParameterGroups.Memcached.NodeSpecific
    #   [3]: http://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/ParameterGroups.Redis.html#ParameterGroups.Redis.NodeSpecific
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
    #   The fixed price charged for this reserved cache node.
    #   @return [Float]
    #
    # @!attribute [rw] usage_price
    #   The hourly price charged for this reserved cache node.
    #   @return [Float]
    #
    # @!attribute [rw] cache_node_count
    #   The number of cache nodes that have been reserved.
    #   @return [Integer]
    #
    # @!attribute [rw] product_description
    #   The description of the reserved cache node.
    #   @return [String]
    #
    # @!attribute [rw] offering_type
    #   The offering type of this reserved cache node.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the reserved cache node.
    #   @return [String]
    #
    # @!attribute [rw] recurring_charges
    #   The recurring price charged to run this reserved cache node.
    #   @return [Array<Types::RecurringCharge>]
    #
    # @!attribute [rw] reservation_arn
    #   The Amazon Resource Name (ARN) of the reserved cache node.
    #
    #   Example:
    #   `arn:aws:elasticache:us-east-1:123456789012:reserved-instance:ri-2017-03-27-08-33-25-582`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/ReservedCacheNode AWS API Documentation
    #
    class ReservedCacheNode < Struct.new(
      :reserved_cache_node_id,
      :reserved_cache_nodes_offering_id,
      :cache_node_type,
      :start_time,
      :duration,
      :fixed_price,
      :usage_price,
      :cache_node_count,
      :product_description,
      :offering_type,
      :state,
      :recurring_charges,
      :reservation_arn)
      include Aws::Structure
    end

    # Represents the output of a `DescribeReservedCacheNodes` operation.
    #
    # @!attribute [rw] marker
    #   Provides an identifier to allow retrieval of paginated results.
    #   @return [String]
    #
    # @!attribute [rw] reserved_cache_nodes
    #   A list of reserved cache nodes. Each element in the list contains
    #   detailed information about one node.
    #   @return [Array<Types::ReservedCacheNode>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/ReservedCacheNodeMessage AWS API Documentation
    #
    class ReservedCacheNodeMessage < Struct.new(
      :marker,
      :reserved_cache_nodes)
      include Aws::Structure
    end

    # Describes all of the attributes of a reserved cache node offering.
    #
    # @!attribute [rw] reserved_cache_nodes_offering_id
    #   A unique identifier for the reserved cache node offering.
    #   @return [String]
    #
    # @!attribute [rw] cache_node_type
    #   The cache node type for the reserved cache node.
    #
    #   The following node types are supported by ElastiCache. Generally
    #   speaking, the current generation types provide more memory and
    #   computational power at lower cost when compared to their equivalent
    #   previous generation counterparts.
    #
    #   * General purpose:
    #
    #     * Current generation:
    #
    #       **T2 node types:** `cache.t2.micro`, `cache.t2.small`,
    #       `cache.t2.medium`
    #
    #       **M3 node types:** `cache.m3.medium`, `cache.m3.large`,
    #       `cache.m3.xlarge`, `cache.m3.2xlarge`
    #
    #       **M4 node types:** `cache.m4.large`, `cache.m4.xlarge`,
    #       `cache.m4.2xlarge`, `cache.m4.4xlarge`, `cache.m4.10xlarge`
    #
    #     * Previous generation: (not recommended)
    #
    #       **T1 node types:** `cache.t1.micro`
    #
    #       **M1 node types:** `cache.m1.small`, `cache.m1.medium`,
    #       `cache.m1.large`, `cache.m1.xlarge`
    #
    #   * Compute optimized:
    #
    #     * Previous generation: (not recommended)
    #
    #       **C1 node types:** `cache.c1.xlarge`
    #
    #   * Memory optimized:
    #
    #     * Current generation:
    #
    #       **R3 node types:** `cache.r3.large`, `cache.r3.xlarge`,
    #       `cache.r3.2xlarge`, `cache.r3.4xlarge`, `cache.r3.8xlarge`
    #
    #       **R4 node types;** `cache.r4.large`, `cache.r4.xlarge`,
    #       `cache.r4.2xlarge`, `cache.r4.4xlarge`, `cache.r4.8xlarge`,
    #       `cache.r4.16xlarge`
    #
    #     * Previous generation: (not recommended)
    #
    #       **M2 node types:** `cache.m2.xlarge`, `cache.m2.2xlarge`,
    #       `cache.m2.4xlarge`
    #
    #   **Notes:**
    #
    #   * All T2 instances are created in an Amazon Virtual Private Cloud
    #     (Amazon VPC).
    #
    #   * Redis (cluster mode disabled): Redis backup/restore is not
    #     supported on T1 and T2 instances.
    #
    #   * Redis (cluster mode enabled): Backup/restore is not supported on
    #     T1 instances.
    #
    #   * Redis Append-only files (AOF) functionality is not supported for
    #     T1 or T2 instances.
    #
    #   For a complete listing of node types and specifications, see:
    #
    #   * [Amazon ElastiCache Product Features and Details][1]
    #
    #   * [Cache Node Type-Specific Parameters for Memcached][2]
    #
    #   * [Cache Node Type-Specific Parameters for Redis][3]
    #
    #
    #
    #   [1]: http://aws.amazon.com/elasticache/details
    #   [2]: http://docs.aws.amazon.com/AmazonElastiCache/latest/mem-ug/ParameterGroups.Memcached.html#ParameterGroups.Memcached.NodeSpecific
    #   [3]: http://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/ParameterGroups.Redis.html#ParameterGroups.Redis.NodeSpecific
    #   @return [String]
    #
    # @!attribute [rw] duration
    #   The duration of the offering. in seconds.
    #   @return [Integer]
    #
    # @!attribute [rw] fixed_price
    #   The fixed price charged for this offering.
    #   @return [Float]
    #
    # @!attribute [rw] usage_price
    #   The hourly price charged for this offering.
    #   @return [Float]
    #
    # @!attribute [rw] product_description
    #   The cache engine used by the offering.
    #   @return [String]
    #
    # @!attribute [rw] offering_type
    #   The offering type.
    #   @return [String]
    #
    # @!attribute [rw] recurring_charges
    #   The recurring price charged to run this reserved cache node.
    #   @return [Array<Types::RecurringCharge>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/ReservedCacheNodesOffering AWS API Documentation
    #
    class ReservedCacheNodesOffering < Struct.new(
      :reserved_cache_nodes_offering_id,
      :cache_node_type,
      :duration,
      :fixed_price,
      :usage_price,
      :product_description,
      :offering_type,
      :recurring_charges)
      include Aws::Structure
    end

    # Represents the output of a `DescribeReservedCacheNodesOfferings`
    # operation.
    #
    # @!attribute [rw] marker
    #   Provides an identifier to allow retrieval of paginated results.
    #   @return [String]
    #
    # @!attribute [rw] reserved_cache_nodes_offerings
    #   A list of reserved cache node offerings. Each element in the list
    #   contains detailed information about one offering.
    #   @return [Array<Types::ReservedCacheNodesOffering>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/ReservedCacheNodesOfferingMessage AWS API Documentation
    #
    class ReservedCacheNodesOfferingMessage < Struct.new(
      :marker,
      :reserved_cache_nodes_offerings)
      include Aws::Structure
    end

    # Represents the input of a `ResetCacheParameterGroup` operation.
    #
    # @note When making an API call, you may pass ResetCacheParameterGroupMessage
    #   data as a hash:
    #
    #       {
    #         cache_parameter_group_name: "String", # required
    #         reset_all_parameters: false,
    #         parameter_name_values: [
    #           {
    #             parameter_name: "String",
    #             parameter_value: "String",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] cache_parameter_group_name
    #   The name of the cache parameter group to reset.
    #   @return [String]
    #
    # @!attribute [rw] reset_all_parameters
    #   If `true`, all parameters in the cache parameter group are reset to
    #   their default values. If `false`, only the parameters listed by
    #   `ParameterNameValues` are reset to their default values.
    #
    #   Valid values: `true` \| `false`
    #   @return [Boolean]
    #
    # @!attribute [rw] parameter_name_values
    #   An array of parameter names to reset to their default values. If
    #   `ResetAllParameters` is `true`, do not use `ParameterNameValues`. If
    #   `ResetAllParameters` is `false`, you must specify the name of at
    #   least one parameter to reset.
    #   @return [Array<Types::ParameterNameValue>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/ResetCacheParameterGroupMessage AWS API Documentation
    #
    class ResetCacheParameterGroupMessage < Struct.new(
      :cache_parameter_group_name,
      :reset_all_parameters,
      :parameter_name_values)
      include Aws::Structure
    end

    # A list of `PreferredAvailabilityZones` objects that specifies the
    # configuration of a node group in the resharded cluster.
    #
    # @note When making an API call, you may pass ReshardingConfiguration
    #   data as a hash:
    #
    #       {
    #         node_group_id: "AllowedNodeGroupId",
    #         preferred_availability_zones: ["String"],
    #       }
    #
    # @!attribute [rw] node_group_id
    #   The 4-digit id for the node group these configuration values apply
    #   to.
    #   @return [String]
    #
    # @!attribute [rw] preferred_availability_zones
    #   A list of preferred availability zones for the nodes in this
    #   cluster.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/ReshardingConfiguration AWS API Documentation
    #
    class ReshardingConfiguration < Struct.new(
      :node_group_id,
      :preferred_availability_zones)
      include Aws::Structure
    end

    # The status of an online resharding operation.
    #
    # @!attribute [rw] slot_migration
    #   Represents the progress of an online resharding operation.
    #   @return [Types::SlotMigration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/ReshardingStatus AWS API Documentation
    #
    class ReshardingStatus < Struct.new(
      :slot_migration)
      include Aws::Structure
    end

    # Represents the input of a `RevokeCacheSecurityGroupIngress` operation.
    #
    # @note When making an API call, you may pass RevokeCacheSecurityGroupIngressMessage
    #   data as a hash:
    #
    #       {
    #         cache_security_group_name: "String", # required
    #         ec2_security_group_name: "String", # required
    #         ec2_security_group_owner_id: "String", # required
    #       }
    #
    # @!attribute [rw] cache_security_group_name
    #   The name of the cache security group to revoke ingress from.
    #   @return [String]
    #
    # @!attribute [rw] ec2_security_group_name
    #   The name of the Amazon EC2 security group to revoke access from.
    #   @return [String]
    #
    # @!attribute [rw] ec2_security_group_owner_id
    #   The AWS account number of the Amazon EC2 security group owner. Note
    #   that this is not the same thing as an AWS access key ID - you must
    #   provide a valid AWS account number for this parameter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/RevokeCacheSecurityGroupIngressMessage AWS API Documentation
    #
    class RevokeCacheSecurityGroupIngressMessage < Struct.new(
      :cache_security_group_name,
      :ec2_security_group_name,
      :ec2_security_group_owner_id)
      include Aws::Structure
    end

    # @!attribute [rw] cache_security_group
    #   Represents the output of one of the following operations:
    #
    #   * `AuthorizeCacheSecurityGroupIngress`
    #
    #   * `CreateCacheSecurityGroup`
    #
    #   * `RevokeCacheSecurityGroupIngress`
    #   @return [Types::CacheSecurityGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/RevokeCacheSecurityGroupIngressResult AWS API Documentation
    #
    class RevokeCacheSecurityGroupIngressResult < Struct.new(
      :cache_security_group)
      include Aws::Structure
    end

    # Represents a single cache security group and its status.
    #
    # @!attribute [rw] security_group_id
    #   The identifier of the cache security group.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the cache security group membership. The status
    #   changes whenever a cache security group is modified, or when the
    #   cache security groups assigned to a cluster are modified.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/SecurityGroupMembership AWS API Documentation
    #
    class SecurityGroupMembership < Struct.new(
      :security_group_id,
      :status)
      include Aws::Structure
    end

    # Represents the progress of an online resharding operation.
    #
    # @!attribute [rw] progress_percentage
    #   The percentage of the slot migration that is complete.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/SlotMigration AWS API Documentation
    #
    class SlotMigration < Struct.new(
      :progress_percentage)
      include Aws::Structure
    end

    # Represents a copy of an entire Redis cluster as of the time when the
    # snapshot was taken.
    #
    # @!attribute [rw] snapshot_name
    #   The name of a snapshot. For an automatic snapshot, the name is
    #   system-generated. For a manual snapshot, this is the user-provided
    #   name.
    #   @return [String]
    #
    # @!attribute [rw] replication_group_id
    #   The unique identifier of the source replication group.
    #   @return [String]
    #
    # @!attribute [rw] replication_group_description
    #   A description of the source replication group.
    #   @return [String]
    #
    # @!attribute [rw] cache_cluster_id
    #   The user-supplied identifier of the source cluster.
    #   @return [String]
    #
    # @!attribute [rw] snapshot_status
    #   The status of the snapshot. Valid values: `creating` \| `available`
    #   \| `restoring` \| `copying` \| `deleting`.
    #   @return [String]
    #
    # @!attribute [rw] snapshot_source
    #   Indicates whether the snapshot is from an automatic backup
    #   (`automated`) or was created manually (`manual`).
    #   @return [String]
    #
    # @!attribute [rw] cache_node_type
    #   The name of the compute and memory capacity node type for the source
    #   cluster.
    #
    #   The following node types are supported by ElastiCache. Generally
    #   speaking, the current generation types provide more memory and
    #   computational power at lower cost when compared to their equivalent
    #   previous generation counterparts.
    #
    #   * General purpose:
    #
    #     * Current generation:
    #
    #       **T2 node types:** `cache.t2.micro`, `cache.t2.small`,
    #       `cache.t2.medium`
    #
    #       **M3 node types:** `cache.m3.medium`, `cache.m3.large`,
    #       `cache.m3.xlarge`, `cache.m3.2xlarge`
    #
    #       **M4 node types:** `cache.m4.large`, `cache.m4.xlarge`,
    #       `cache.m4.2xlarge`, `cache.m4.4xlarge`, `cache.m4.10xlarge`
    #
    #     * Previous generation: (not recommended)
    #
    #       **T1 node types:** `cache.t1.micro`
    #
    #       **M1 node types:** `cache.m1.small`, `cache.m1.medium`,
    #       `cache.m1.large`, `cache.m1.xlarge`
    #
    #   * Compute optimized:
    #
    #     * Previous generation: (not recommended)
    #
    #       **C1 node types:** `cache.c1.xlarge`
    #
    #   * Memory optimized:
    #
    #     * Current generation:
    #
    #       **R3 node types:** `cache.r3.large`, `cache.r3.xlarge`,
    #       `cache.r3.2xlarge`, `cache.r3.4xlarge`, `cache.r3.8xlarge`
    #
    #       **R4 node types;** `cache.r4.large`, `cache.r4.xlarge`,
    #       `cache.r4.2xlarge`, `cache.r4.4xlarge`, `cache.r4.8xlarge`,
    #       `cache.r4.16xlarge`
    #
    #     * Previous generation: (not recommended)
    #
    #       **M2 node types:** `cache.m2.xlarge`, `cache.m2.2xlarge`,
    #       `cache.m2.4xlarge`
    #
    #   **Notes:**
    #
    #   * All T2 instances are created in an Amazon Virtual Private Cloud
    #     (Amazon VPC).
    #
    #   * Redis (cluster mode disabled): Redis backup/restore is not
    #     supported on T1 and T2 instances.
    #
    #   * Redis (cluster mode enabled): Backup/restore is not supported on
    #     T1 instances.
    #
    #   * Redis Append-only files (AOF) functionality is not supported for
    #     T1 or T2 instances.
    #
    #   For a complete listing of node types and specifications, see:
    #
    #   * [Amazon ElastiCache Product Features and Details][1]
    #
    #   * [Cache Node Type-Specific Parameters for Memcached][2]
    #
    #   * [Cache Node Type-Specific Parameters for Redis][3]
    #
    #
    #
    #   [1]: http://aws.amazon.com/elasticache/details
    #   [2]: http://docs.aws.amazon.com/AmazonElastiCache/latest/mem-ug/ParameterGroups.Memcached.html#ParameterGroups.Memcached.NodeSpecific
    #   [3]: http://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/ParameterGroups.Redis.html#ParameterGroups.Redis.NodeSpecific
    #   @return [String]
    #
    # @!attribute [rw] engine
    #   The name of the cache engine (`memcached` or `redis`) used by the
    #   source cluster.
    #   @return [String]
    #
    # @!attribute [rw] engine_version
    #   The version of the cache engine version that is used by the source
    #   cluster.
    #   @return [String]
    #
    # @!attribute [rw] num_cache_nodes
    #   The number of cache nodes in the source cluster.
    #
    #   For clusters running Redis, this value must be 1. For clusters
    #   running Memcached, this value must be between 1 and 20.
    #   @return [Integer]
    #
    # @!attribute [rw] preferred_availability_zone
    #   The name of the Availability Zone in which the source cluster is
    #   located.
    #   @return [String]
    #
    # @!attribute [rw] cache_cluster_create_time
    #   The date and time when the source cluster was created.
    #   @return [Time]
    #
    # @!attribute [rw] preferred_maintenance_window
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
    # @!attribute [rw] topic_arn
    #   The Amazon Resource Name (ARN) for the topic used by the source
    #   cluster for publishing notifications.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The port number used by each cache nodes in the source cluster.
    #   @return [Integer]
    #
    # @!attribute [rw] cache_parameter_group_name
    #   The cache parameter group that is associated with the source
    #   cluster.
    #   @return [String]
    #
    # @!attribute [rw] cache_subnet_group_name
    #   The name of the cache subnet group associated with the source
    #   cluster.
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   The Amazon Virtual Private Cloud identifier (VPC ID) of the cache
    #   subnet group for the source cluster.
    #   @return [String]
    #
    # @!attribute [rw] auto_minor_version_upgrade
    #   This parameter is currently disabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] snapshot_retention_limit
    #   For an automatic snapshot, the number of days for which ElastiCache
    #   retains the snapshot before deleting it.
    #
    #   For manual snapshots, this field reflects the
    #   `SnapshotRetentionLimit` for the source cluster when the snapshot
    #   was created. This field is otherwise ignored: Manual snapshots do
    #   not expire, and can only be deleted using the `DeleteSnapshot`
    #   operation.
    #
    #   **Important** If the value of SnapshotRetentionLimit is set to zero
    #   (0), backups are turned off.
    #   @return [Integer]
    #
    # @!attribute [rw] snapshot_window
    #   The daily time range during which ElastiCache takes daily snapshots
    #   of the source cluster.
    #   @return [String]
    #
    # @!attribute [rw] num_node_groups
    #   The number of node groups (shards) in this snapshot. When restoring
    #   from a snapshot, the number of node groups (shards) in the snapshot
    #   and in the restored replication group must be the same.
    #   @return [Integer]
    #
    # @!attribute [rw] automatic_failover
    #   Indicates the status of Multi-AZ with automatic failover for the
    #   source Redis replication group.
    #
    #   Amazon ElastiCache for Redis does not support Multi-AZ with
    #   automatic failover on:
    #
    #   * Redis versions earlier than 2.8.6.
    #
    #   * Redis (cluster mode disabled): T1 and T2 cache node types.
    #
    #   * Redis (cluster mode enabled): T1 node types.
    #   @return [String]
    #
    # @!attribute [rw] node_snapshots
    #   A list of the cache nodes in the source cluster.
    #   @return [Array<Types::NodeSnapshot>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/Snapshot AWS API Documentation
    #
    class Snapshot < Struct.new(
      :snapshot_name,
      :replication_group_id,
      :replication_group_description,
      :cache_cluster_id,
      :snapshot_status,
      :snapshot_source,
      :cache_node_type,
      :engine,
      :engine_version,
      :num_cache_nodes,
      :preferred_availability_zone,
      :cache_cluster_create_time,
      :preferred_maintenance_window,
      :topic_arn,
      :port,
      :cache_parameter_group_name,
      :cache_subnet_group_name,
      :vpc_id,
      :auto_minor_version_upgrade,
      :snapshot_retention_limit,
      :snapshot_window,
      :num_node_groups,
      :automatic_failover,
      :node_snapshots)
      include Aws::Structure
    end

    # Represents the subnet associated with a cluster. This parameter refers
    # to subnets defined in Amazon Virtual Private Cloud (Amazon VPC) and
    # used with ElastiCache.
    #
    # @!attribute [rw] subnet_identifier
    #   The unique identifier for the subnet.
    #   @return [String]
    #
    # @!attribute [rw] subnet_availability_zone
    #   The Availability Zone associated with the subnet.
    #   @return [Types::AvailabilityZone]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/Subnet AWS API Documentation
    #
    class Subnet < Struct.new(
      :subnet_identifier,
      :subnet_availability_zone)
      include Aws::Structure
    end

    # A cost allocation Tag that can be added to an ElastiCache cluster or
    # replication group. Tags are composed of a Key/Value pair. A tag with a
    # null Value is permitted.
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
    #   The key for the tag. May not be null.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The tag's value. May be null.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      include Aws::Structure
    end

    # Represents the output from the `AddTagsToResource`,
    # `ListTagsForResource`, and `RemoveTagsFromResource` operations.
    #
    # @!attribute [rw] tag_list
    #   A list of cost allocation tags as key-value pairs.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/TagListMessage AWS API Documentation
    #
    class TagListMessage < Struct.new(
      :tag_list)
      include Aws::Structure
    end

    # @note When making an API call, you may pass TestFailoverMessage
    #   data as a hash:
    #
    #       {
    #         replication_group_id: "String", # required
    #         node_group_id: "AllowedNodeGroupId", # required
    #       }
    #
    # @!attribute [rw] replication_group_id
    #   The name of the replication group (console: cluster) whose automatic
    #   failover is being tested by this operation.
    #   @return [String]
    #
    # @!attribute [rw] node_group_id
    #   The name of the node group (called shard in the console) in this
    #   replication group on which automatic failover is to be tested. You
    #   may test automatic failover on up to 5 node groups in any rolling
    #   24-hour period.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/TestFailoverMessage AWS API Documentation
    #
    class TestFailoverMessage < Struct.new(
      :replication_group_id,
      :node_group_id)
      include Aws::Structure
    end

    # @!attribute [rw] replication_group
    #   Contains all of the attributes of a specific Redis replication
    #   group.
    #   @return [Types::ReplicationGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/TestFailoverResult AWS API Documentation
    #
    class TestFailoverResult < Struct.new(
      :replication_group)
      include Aws::Structure
    end

  end
end
