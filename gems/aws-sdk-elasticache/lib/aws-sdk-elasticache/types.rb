# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ElastiCache
  module Types

    # The customer has exceeded the allowed rate of API calls.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/APICallRateForCustomerExceededFault AWS API Documentation
    #
    class APICallRateForCustomerExceededFault < Aws::EmptyStructure; end

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
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
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
    # @!attribute [rw] scale_down_modifications
    #   A string list, each element of which specifies a cache node type
    #   which you can use to scale your cluster or replication group. When
    #   scaling down a Redis cluster or replication group using
    #   ModifyCacheCluster or ModifyReplicationGroup, use a value from this
    #   list for the CacheNodeType parameter.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/AllowedNodeTypeModificationsMessage AWS API Documentation
    #
    class AllowedNodeTypeModificationsMessage < Struct.new(
      :scale_up_modifications,
      :scale_down_modifications)
      include Aws::Structure
    end

    # The specified Amazon EC2 security group is already authorized for the
    # specified cache security group.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/AuthorizationAlreadyExistsFault AWS API Documentation
    #
    class AuthorizationAlreadyExistsFault < Aws::EmptyStructure; end

    # The specified Amazon EC2 security group is not authorized for the
    # specified cache security group.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/AuthorizationNotFoundFault AWS API Documentation
    #
    class AuthorizationNotFoundFault < Aws::EmptyStructure; end

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

    # @note When making an API call, you may pass BatchApplyUpdateActionMessage
    #   data as a hash:
    #
    #       {
    #         replication_group_ids: ["String"],
    #         cache_cluster_ids: ["String"],
    #         service_update_name: "String", # required
    #       }
    #
    # @!attribute [rw] replication_group_ids
    #   The replication group IDs
    #   @return [Array<String>]
    #
    # @!attribute [rw] cache_cluster_ids
    #   The cache cluster IDs
    #   @return [Array<String>]
    #
    # @!attribute [rw] service_update_name
    #   The unique ID of the service update
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/BatchApplyUpdateActionMessage AWS API Documentation
    #
    class BatchApplyUpdateActionMessage < Struct.new(
      :replication_group_ids,
      :cache_cluster_ids,
      :service_update_name)
      include Aws::Structure
    end

    # @note When making an API call, you may pass BatchStopUpdateActionMessage
    #   data as a hash:
    #
    #       {
    #         replication_group_ids: ["String"],
    #         cache_cluster_ids: ["String"],
    #         service_update_name: "String", # required
    #       }
    #
    # @!attribute [rw] replication_group_ids
    #   The replication group IDs
    #   @return [Array<String>]
    #
    # @!attribute [rw] cache_cluster_ids
    #   The cache cluster IDs
    #   @return [Array<String>]
    #
    # @!attribute [rw] service_update_name
    #   The unique ID of the service update
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/BatchStopUpdateActionMessage AWS API Documentation
    #
    class BatchStopUpdateActionMessage < Struct.new(
      :replication_group_ids,
      :cache_cluster_ids,
      :service_update_name)
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
    #       **M5 node types:** `cache.m5.large`, `cache.m5.xlarge`,
    #       `cache.m5.2xlarge`, `cache.m5.4xlarge`, `cache.m5.12xlarge`,
    #       `cache.m5.24xlarge`
    #
    #       **M4 node types:** `cache.m4.large`, `cache.m4.xlarge`,
    #       `cache.m4.2xlarge`, `cache.m4.4xlarge`, `cache.m4.10xlarge`
    #
    #       **T3 node types:** `cache.t3.micro`, `cache.t3.small`,
    #       `cache.t3.medium`
    #
    #       **T2 node types:** `cache.t2.micro`, `cache.t2.small`,
    #       `cache.t2.medium`
    #
    #     * Previous generation: (not recommended)
    #
    #       **T1 node types:** `cache.t1.micro`
    #
    #       **M1 node types:** `cache.m1.small`, `cache.m1.medium`,
    #       `cache.m1.large`, `cache.m1.xlarge`
    #
    #       **M3 node types:** `cache.m3.medium`, `cache.m3.large`,
    #       `cache.m3.xlarge`, `cache.m3.2xlarge`
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
    #       **R5 node types:** `cache.r5.large`, `cache.r5.xlarge`,
    #       `cache.r5.2xlarge`, `cache.r5.4xlarge`, `cache.r5.12xlarge`,
    #       `cache.r5.24xlarge`
    #
    #       **R4 node types:** `cache.r4.large`, `cache.r4.xlarge`,
    #       `cache.r4.2xlarge`, `cache.r4.4xlarge`, `cache.r4.8xlarge`,
    #       `cache.r4.16xlarge`
    #
    #     * Previous generation: (not recommended)
    #
    #       **M2 node types:** `cache.m2.xlarge`, `cache.m2.2xlarge`,
    #       `cache.m2.4xlarge`
    #
    #       **R3 node types:** `cache.r3.large`, `cache.r3.xlarge`,
    #       `cache.r3.2xlarge`, `cache.r3.4xlarge`, `cache.r3.8xlarge`
    #
    #   **Additional node type info**
    #
    #   * All current generation instance types are created in Amazon VPC by
    #     default.
    #
    #   * Redis append-only files (AOF) are not supported for T1 or T2
    #     instances.
    #
    #   * Redis Multi-AZ with automatic failover is not supported on T1
    #     instances.
    #
    #   * Redis configuration variables `appendonly` and `appendfsync` are
    #     not supported on Redis version 2.8.22 and later.
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
    # @!attribute [rw] auth_token_last_modified_date
    #   The date the auth token was last modified
    #   @return [Time]
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
    #   Amazon VPC using redis version `3.2.6`, `4.x` or later.
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
    #   Amazon VPC using redis version `3.2.6`, `4.x` or later.
    #
    #   Default: `false`
    #   @return [Boolean]
    #
    # @!attribute [rw] arn
    #   The ARN (Amazon Resource Name) of the cache cluster.
    #   @return [String]
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
      :auth_token_last_modified_date,
      :transit_encryption_enabled,
      :at_rest_encryption_enabled,
      :arn)
      include Aws::Structure
    end

    # You already have a cluster with the given identifier.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/CacheClusterAlreadyExistsFault AWS API Documentation
    #
    class CacheClusterAlreadyExistsFault < Aws::EmptyStructure; end

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

    # The requested cluster ID does not refer to an existing cluster.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/CacheClusterNotFoundFault AWS API Documentation
    #
    class CacheClusterNotFoundFault < Aws::EmptyStructure; end

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
    #   Valid values are: `memcached1.4` \| `memcached1.5` \| `redis2.6` \|
    #   `redis2.8` \| `redis3.2` \| `redis4.0` \| `redis5.0` \|
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
    #     **M5 node types:** `cache.m5.large`, `cache.m5.xlarge`,
    #     `cache.m5.2xlarge`, `cache.m5.4xlarge`, `cache.m5.12xlarge`,
    #     `cache.m5.24xlarge`
    #
    #     **M4 node types:** `cache.m4.large`, `cache.m4.xlarge`,
    #     `cache.m4.2xlarge`, `cache.m4.4xlarge`, `cache.m4.10xlarge`
    #
    #     **T3 node types:** `cache.t3.micro`, `cache.t3.small`,
    #     `cache.t3.medium`
    #
    #     **T2 node types:** `cache.t2.micro`, `cache.t2.small`,
    #     `cache.t2.medium`
    #
    #   * Previous generation: (not recommended)
    #
    #     **T1 node types:** `cache.t1.micro`
    #
    #     **M1 node types:** `cache.m1.small`, `cache.m1.medium`,
    #     `cache.m1.large`, `cache.m1.xlarge`
    #
    #     **M3 node types:** `cache.m3.medium`, `cache.m3.large`,
    #     `cache.m3.xlarge`, `cache.m3.2xlarge`
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
    #     **R5 node types:** `cache.r5.large`, `cache.r5.xlarge`,
    #     `cache.r5.2xlarge`, `cache.r5.4xlarge`, `cache.r5.12xlarge`,
    #     `cache.r5.24xlarge`
    #
    #     **R4 node types:** `cache.r4.large`, `cache.r4.xlarge`,
    #     `cache.r4.2xlarge`, `cache.r4.4xlarge`, `cache.r4.8xlarge`,
    #     `cache.r4.16xlarge`
    #
    #   * Previous generation: (not recommended)
    #
    #     **M2 node types:** `cache.m2.xlarge`, `cache.m2.2xlarge`,
    #     `cache.m2.4xlarge`
    #
    #     **R3 node types:** `cache.r3.large`, `cache.r3.xlarge`,
    #     `cache.r3.2xlarge`, `cache.r3.4xlarge`, `cache.r3.8xlarge`
    #
    # **Additional node type info**
    #
    # * All current generation instance types are created in Amazon VPC by
    #   default.
    #
    # * Redis append-only files (AOF) are not supported for T1 or T2
    #   instances.
    #
    # * Redis Multi-AZ with automatic failover is not supported on T1
    #   instances.
    #
    # * Redis configuration variables `appendonly` and `appendfsync` are not
    #   supported on Redis version 2.8.22 and later.
    #
    # @!attribute [rw] cache_node_id
    #   The cache node identifier. A node ID is a numeric identifier (0001,
    #   0002, etc.). The combination of cluster ID and node ID uniquely
    #   identifies every cache node used in a customer's AWS account.
    #   @return [String]
    #
    # @!attribute [rw] cache_node_status
    #   The current state of this cache node, one of the following values:
    #   `available`, `creating`, `rebooting`, or `deleting`.
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
    #   [1]: https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/Clusters.Rebooting.html
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

    # The status of the service update on the cache node
    #
    # @!attribute [rw] cache_node_id
    #   The node ID of the cache cluster
    #   @return [String]
    #
    # @!attribute [rw] node_update_status
    #   The update status of the node
    #   @return [String]
    #
    # @!attribute [rw] node_deletion_date
    #   The deletion date of the node
    #   @return [Time]
    #
    # @!attribute [rw] node_update_start_date
    #   The start date of the update for a node
    #   @return [Time]
    #
    # @!attribute [rw] node_update_end_date
    #   The end date of the update for a node
    #   @return [Time]
    #
    # @!attribute [rw] node_update_initiated_by
    #   Reflects whether the update was initiated by the customer or
    #   automatically applied
    #   @return [String]
    #
    # @!attribute [rw] node_update_initiated_date
    #   The date when the update is triggered
    #   @return [Time]
    #
    # @!attribute [rw] node_update_status_modified_date
    #   The date when the NodeUpdateStatus was last modified&gt;
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/CacheNodeUpdateStatus AWS API Documentation
    #
    class CacheNodeUpdateStatus < Struct.new(
      :cache_node_id,
      :node_update_status,
      :node_deletion_date,
      :node_update_start_date,
      :node_update_end_date,
      :node_update_initiated_by,
      :node_update_initiated_date,
      :node_update_status_modified_date)
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
    #   Valid values are: `memcached1.4` \| `memcached1.5` \| `redis2.6` \|
    #   `redis2.8` \| `redis3.2` \| `redis4.0` \| `redis5.0` \|
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description for this cache parameter group.
    #   @return [String]
    #
    # @!attribute [rw] is_global
    #   Indicates whether the parameter group is associated with a Global
    #   Datastore
    #   @return [Boolean]
    #
    # @!attribute [rw] arn
    #   The ARN (Amazon Resource Name) of the cache parameter group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/CacheParameterGroup AWS API Documentation
    #
    class CacheParameterGroup < Struct.new(
      :cache_parameter_group_name,
      :cache_parameter_group_family,
      :description,
      :is_global,
      :arn)
      include Aws::Structure
    end

    # A cache parameter group with the requested name already exists.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/CacheParameterGroupAlreadyExistsFault AWS API Documentation
    #
    class CacheParameterGroupAlreadyExistsFault < Aws::EmptyStructure; end

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

    # The requested cache parameter group name does not refer to an existing
    # cache parameter group.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/CacheParameterGroupNotFoundFault AWS API Documentation
    #
    class CacheParameterGroupNotFoundFault < Aws::EmptyStructure; end

    # The request cannot be processed because it would exceed the maximum
    # number of cache security groups.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/CacheParameterGroupQuotaExceededFault AWS API Documentation
    #
    class CacheParameterGroupQuotaExceededFault < Aws::EmptyStructure; end

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
    # @!attribute [rw] arn
    #   The ARN (Amazon Resource Name) of the cache security group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/CacheSecurityGroup AWS API Documentation
    #
    class CacheSecurityGroup < Struct.new(
      :owner_id,
      :cache_security_group_name,
      :description,
      :ec2_security_groups,
      :arn)
      include Aws::Structure
    end

    # A cache security group with the specified name already exists.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/CacheSecurityGroupAlreadyExistsFault AWS API Documentation
    #
    class CacheSecurityGroupAlreadyExistsFault < Aws::EmptyStructure; end

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

    # The requested cache security group name does not refer to an existing
    # cache security group.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/CacheSecurityGroupNotFoundFault AWS API Documentation
    #
    class CacheSecurityGroupNotFoundFault < Aws::EmptyStructure; end

    # The request cannot be processed because it would exceed the allowed
    # number of cache security groups.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/CacheSecurityGroupQuotaExceededFault AWS API Documentation
    #
    class CacheSecurityGroupQuotaExceededFault < Aws::EmptyStructure; end

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
    # @!attribute [rw] arn
    #   The ARN (Amazon Resource Name) of the cache subnet group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/CacheSubnetGroup AWS API Documentation
    #
    class CacheSubnetGroup < Struct.new(
      :cache_subnet_group_name,
      :cache_subnet_group_description,
      :vpc_id,
      :subnets,
      :arn)
      include Aws::Structure
    end

    # The requested cache subnet group name is already in use by an existing
    # cache subnet group.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/CacheSubnetGroupAlreadyExistsFault AWS API Documentation
    #
    class CacheSubnetGroupAlreadyExistsFault < Aws::EmptyStructure; end

    # The requested cache subnet group is currently in use.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/CacheSubnetGroupInUse AWS API Documentation
    #
    class CacheSubnetGroupInUse < Aws::EmptyStructure; end

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

    # The requested cache subnet group name does not refer to an existing
    # cache subnet group.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/CacheSubnetGroupNotFoundFault AWS API Documentation
    #
    class CacheSubnetGroupNotFoundFault < Aws::EmptyStructure; end

    # The request cannot be processed because it would exceed the allowed
    # number of cache subnet groups.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/CacheSubnetGroupQuotaExceededFault AWS API Documentation
    #
    class CacheSubnetGroupQuotaExceededFault < Aws::EmptyStructure; end

    # The request cannot be processed because it would exceed the allowed
    # number of subnets in a cache subnet group.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/CacheSubnetQuotaExceededFault AWS API Documentation
    #
    class CacheSubnetQuotaExceededFault < Aws::EmptyStructure; end

    # The request cannot be processed because it would exceed the allowed
    # number of clusters per customer.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/ClusterQuotaForCustomerExceededFault AWS API Documentation
    #
    class ClusterQuotaForCustomerExceededFault < Aws::EmptyStructure; end

    # @note When making an API call, you may pass CompleteMigrationMessage
    #   data as a hash:
    #
    #       {
    #         replication_group_id: "String", # required
    #         force: false,
    #       }
    #
    # @!attribute [rw] replication_group_id
    #   The ID of the replication group to which data is being migrated.
    #   @return [String]
    #
    # @!attribute [rw] force
    #   Forces the migration to stop without ensuring that data is in sync.
    #   It is recommended to use this option only to abort the migration and
    #   not recommended when application wants to continue migration to
    #   ElastiCache.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/CompleteMigrationMessage AWS API Documentation
    #
    class CompleteMigrationMessage < Struct.new(
      :replication_group_id,
      :force)
      include Aws::Structure
    end

    # @!attribute [rw] replication_group
    #   Contains all of the attributes of a specific Redis replication
    #   group.
    #   @return [Types::ReplicationGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/CompleteMigrationResponse AWS API Documentation
    #
    class CompleteMigrationResponse < Struct.new(
      :replication_group)
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
    #   [1]: https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/shard-find-id.html
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
    #         kms_key_id: "String",
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
    #   [1]: https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/backups-exporting.html#backups-exporting-grant-access
    #   [2]: https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/Snapshots.Exporting.html
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   The ID of the KMS key used to encrypt the target snapshot.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/CopySnapshotMessage AWS API Documentation
    #
    class CopySnapshotMessage < Struct.new(
      :source_snapshot_name,
      :target_snapshot_name,
      :target_bucket,
      :kms_key_id)
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
    #   * A name must contain from 1 to 50 alphanumeric characters or
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
    #       **M5 node types:** `cache.m5.large`, `cache.m5.xlarge`,
    #       `cache.m5.2xlarge`, `cache.m5.4xlarge`, `cache.m5.12xlarge`,
    #       `cache.m5.24xlarge`
    #
    #       **M4 node types:** `cache.m4.large`, `cache.m4.xlarge`,
    #       `cache.m4.2xlarge`, `cache.m4.4xlarge`, `cache.m4.10xlarge`
    #
    #       **T3 node types:** `cache.t3.micro`, `cache.t3.small`,
    #       `cache.t3.medium`
    #
    #       **T2 node types:** `cache.t2.micro`, `cache.t2.small`,
    #       `cache.t2.medium`
    #
    #     * Previous generation: (not recommended)
    #
    #       **T1 node types:** `cache.t1.micro`
    #
    #       **M1 node types:** `cache.m1.small`, `cache.m1.medium`,
    #       `cache.m1.large`, `cache.m1.xlarge`
    #
    #       **M3 node types:** `cache.m3.medium`, `cache.m3.large`,
    #       `cache.m3.xlarge`, `cache.m3.2xlarge`
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
    #       **R5 node types:** `cache.r5.large`, `cache.r5.xlarge`,
    #       `cache.r5.2xlarge`, `cache.r5.4xlarge`, `cache.r5.12xlarge`,
    #       `cache.r5.24xlarge`
    #
    #       **R4 node types:** `cache.r4.large`, `cache.r4.xlarge`,
    #       `cache.r4.2xlarge`, `cache.r4.4xlarge`, `cache.r4.8xlarge`,
    #       `cache.r4.16xlarge`
    #
    #     * Previous generation: (not recommended)
    #
    #       **M2 node types:** `cache.m2.xlarge`, `cache.m2.2xlarge`,
    #       `cache.m2.4xlarge`
    #
    #       **R3 node types:** `cache.r3.large`, `cache.r3.xlarge`,
    #       `cache.r3.2xlarge`, `cache.r3.4xlarge`, `cache.r3.8xlarge`
    #
    #   **Additional node type info**
    #
    #   * All current generation instance types are created in Amazon VPC by
    #     default.
    #
    #   * Redis append-only files (AOF) are not supported for T1 or T2
    #     instances.
    #
    #   * Redis Multi-AZ with automatic failover is not supported on T1
    #     instances.
    #
    #   * Redis configuration variables `appendonly` and `appendfsync` are
    #     not supported on Redis version 2.8.22 and later.
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
    #   [1]: https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/SelectEngine.html#VersionManagement
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
    #   [1]: https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/SubnetGroups.html
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
    #   * The only permitted printable special characters are !, &amp;, #,
    #     $, ^, &lt;, &gt;, and -. Other printable special characters cannot
    #     be used in the AUTH token.
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
    #   Valid values are: `memcached1.4` \| `memcached1.5` \| `redis2.6` \|
    #   `redis2.8` \| `redis3.2` \| `redis4.0` \| `redis5.0` \|
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

    # @note When making an API call, you may pass CreateGlobalReplicationGroupMessage
    #   data as a hash:
    #
    #       {
    #         global_replication_group_id_suffix: "String", # required
    #         global_replication_group_description: "String",
    #         primary_replication_group_id: "String", # required
    #       }
    #
    # @!attribute [rw] global_replication_group_id_suffix
    #   The suffix name of a Global Datastore. The suffix guarantees
    #   uniqueness of the Global Datastore name across multiple regions.
    #   @return [String]
    #
    # @!attribute [rw] global_replication_group_description
    #   Provides details of the Global Datastore
    #   @return [String]
    #
    # @!attribute [rw] primary_replication_group_id
    #   The name of the primary cluster that accepts writes and will
    #   replicate updates to the secondary cluster.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/CreateGlobalReplicationGroupMessage AWS API Documentation
    #
    class CreateGlobalReplicationGroupMessage < Struct.new(
      :global_replication_group_id_suffix,
      :global_replication_group_description,
      :primary_replication_group_id)
      include Aws::Structure
    end

    # @!attribute [rw] global_replication_group
    #   Consists of a primary cluster that accepts writes and an associated
    #   secondary cluster that resides in a different AWS region. The
    #   secondary cluster accepts only reads. The primary cluster
    #   automatically replicates updates to the secondary cluster.
    #
    #   * The **GlobalReplicationGroupIdSuffix** represents the name of the
    #     Global Datastore, which is what you use to associate a secondary
    #     cluster.
    #
    #   ^
    #   @return [Types::GlobalReplicationGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/CreateGlobalReplicationGroupResult AWS API Documentation
    #
    class CreateGlobalReplicationGroupResult < Struct.new(
      :global_replication_group)
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
    #         global_replication_group_id: "String",
    #         primary_cluster_id: "String",
    #         automatic_failover_enabled: false,
    #         multi_az_enabled: false,
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
    #         kms_key_id: "String",
    #       }
    #
    # @!attribute [rw] replication_group_id
    #   The replication group identifier. This parameter is stored as a
    #   lowercase string.
    #
    #   Constraints:
    #
    #   * A name must contain from 1 to 40 alphanumeric characters or
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
    # @!attribute [rw] global_replication_group_id
    #   The name of the Global Datastore
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
    #   * Redis (cluster mode disabled): T1 node types.
    #
    #   * Redis (cluster mode enabled): T1 node types.
    #   @return [Boolean]
    #
    # @!attribute [rw] multi_az_enabled
    #   @return [Boolean]
    #
    # @!attribute [rw] num_cache_clusters
    #   The number of nodes in the cluster.
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
    #   this parameter. However, it is required when seeding a Redis
    #   (cluster mode enabled) cluster from a S3 rdb file. You must
    #   configure each node group (shard) using this parameter because you
    #   must specify the slots for each node group.
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
    #       **M5 node types:** `cache.m5.large`, `cache.m5.xlarge`,
    #       `cache.m5.2xlarge`, `cache.m5.4xlarge`, `cache.m5.12xlarge`,
    #       `cache.m5.24xlarge`
    #
    #       **M4 node types:** `cache.m4.large`, `cache.m4.xlarge`,
    #       `cache.m4.2xlarge`, `cache.m4.4xlarge`, `cache.m4.10xlarge`
    #
    #       **T3 node types:** `cache.t3.micro`, `cache.t3.small`,
    #       `cache.t3.medium`
    #
    #       **T2 node types:** `cache.t2.micro`, `cache.t2.small`,
    #       `cache.t2.medium`
    #
    #     * Previous generation: (not recommended)
    #
    #       **T1 node types:** `cache.t1.micro`
    #
    #       **M1 node types:** `cache.m1.small`, `cache.m1.medium`,
    #       `cache.m1.large`, `cache.m1.xlarge`
    #
    #       **M3 node types:** `cache.m3.medium`, `cache.m3.large`,
    #       `cache.m3.xlarge`, `cache.m3.2xlarge`
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
    #       **R5 node types:** `cache.r5.large`, `cache.r5.xlarge`,
    #       `cache.r5.2xlarge`, `cache.r5.4xlarge`, `cache.r5.12xlarge`,
    #       `cache.r5.24xlarge`
    #
    #       **R4 node types:** `cache.r4.large`, `cache.r4.xlarge`,
    #       `cache.r4.2xlarge`, `cache.r4.4xlarge`, `cache.r4.8xlarge`,
    #       `cache.r4.16xlarge`
    #
    #     * Previous generation: (not recommended)
    #
    #       **M2 node types:** `cache.m2.xlarge`, `cache.m2.2xlarge`,
    #       `cache.m2.4xlarge`
    #
    #       **R3 node types:** `cache.r3.large`, `cache.r3.xlarge`,
    #       `cache.r3.2xlarge`, `cache.r3.4xlarge`, `cache.r3.8xlarge`
    #
    #   **Additional node type info**
    #
    #   * All current generation instance types are created in Amazon VPC by
    #     default.
    #
    #   * Redis append-only files (AOF) are not supported for T1 or T2
    #     instances.
    #
    #   * Redis Multi-AZ with automatic failover is not supported on T1
    #     instances.
    #
    #   * Redis configuration variables `appendonly` and `appendfsync` are
    #     not supported on Redis version 2.8.22 and later.
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
    #   [1]: https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/SelectEngine.html#VersionManagement
    #   @return [String]
    #
    # @!attribute [rw] cache_parameter_group_name
    #   The name of the parameter group to associate with this replication
    #   group. If this argument is omitted, the default cache parameter
    #   group for the specified engine is used.
    #
    #   <note markdown="1"> If you are restoring to an engine version that is different than the
    #   original, you must specify the default version of that version. For
    #   example, `CacheParameterGroupName=default.redis4.0`.
    #
    #    </note>
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
    #   [1]: https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/SubnetGroups.html
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
    #   A list of cost allocation tags to be added to this resource. Tags
    #   are comma-separated key,value pairs (e.g. Key=`myKey`,
    #   Value=`myKeyValue`. You can include multiple tags as shown
    #   following: Key=`myKey`, Value=`myKeyValue` Key=`mySecondKey`,
    #   Value=`mySecondKeyValue`.
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
    #   * The only permitted printable special characters are !, &amp;, #,
    #     $, ^, &lt;, &gt;, and -. Other printable special characters cannot
    #     be used in the AUTH token.
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
    #   the `EngineVersion` parameter is `3.2.6`, `4.x` or later, and the
    #   cluster is being created in an Amazon VPC.
    #
    #   If you enable in-transit encryption, you must also specify a value
    #   for `CacheSubnetGroup`.
    #
    #   **Required:** Only available when creating a replication group in an
    #   Amazon VPC using redis version `3.2.6`, `4.x` or later.
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
    #   Amazon VPC using redis version `3.2.6`, `4.x` or later.
    #
    #   Default: `false`
    #   @return [Boolean]
    #
    # @!attribute [rw] kms_key_id
    #   The ID of the KMS key used to encrypt the disk in the cluster.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/CreateReplicationGroupMessage AWS API Documentation
    #
    class CreateReplicationGroupMessage < Struct.new(
      :replication_group_id,
      :replication_group_description,
      :global_replication_group_id,
      :primary_cluster_id,
      :automatic_failover_enabled,
      :multi_az_enabled,
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
      :at_rest_encryption_enabled,
      :kms_key_id)
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
    #         kms_key_id: "String",
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
    # @!attribute [rw] kms_key_id
    #   The ID of the KMS key used to encrypt the snapshot.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/CreateSnapshotMessage AWS API Documentation
    #
    class CreateSnapshotMessage < Struct.new(
      :replication_group_id,
      :cache_cluster_id,
      :snapshot_name,
      :kms_key_id)
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

    # The endpoint from which data should be migrated.
    #
    # @note When making an API call, you may pass CustomerNodeEndpoint
    #   data as a hash:
    #
    #       {
    #         address: "String",
    #         port: 1,
    #       }
    #
    # @!attribute [rw] address
    #   The address of the node endpoint
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The port of the node endpoint
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/CustomerNodeEndpoint AWS API Documentation
    #
    class CustomerNodeEndpoint < Struct.new(
      :address,
      :port)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DecreaseNodeGroupsInGlobalReplicationGroupMessage
    #   data as a hash:
    #
    #       {
    #         global_replication_group_id: "String", # required
    #         node_group_count: 1, # required
    #         global_node_groups_to_remove: ["String"],
    #         global_node_groups_to_retain: ["String"],
    #         apply_immediately: false, # required
    #       }
    #
    # @!attribute [rw] global_replication_group_id
    #   The name of the Global Datastore
    #   @return [String]
    #
    # @!attribute [rw] node_group_count
    #   The number of node groups (shards) that results from the
    #   modification of the shard configuration
    #   @return [Integer]
    #
    # @!attribute [rw] global_node_groups_to_remove
    #   If the value of NodeGroupCount is less than the current number of
    #   node groups (shards), then either NodeGroupsToRemove or
    #   NodeGroupsToRetain is required. NodeGroupsToRemove is a list of
    #   NodeGroupIds to remove from the cluster. ElastiCache for Redis will
    #   attempt to remove all node groups listed by NodeGroupsToRemove from
    #   the cluster.
    #   @return [Array<String>]
    #
    # @!attribute [rw] global_node_groups_to_retain
    #   If the value of NodeGroupCount is less than the current number of
    #   node groups (shards), then either NodeGroupsToRemove or
    #   NodeGroupsToRetain is required. NodeGroupsToRemove is a list of
    #   NodeGroupIds to remove from the cluster. ElastiCache for Redis will
    #   attempt to remove all node groups listed by NodeGroupsToRemove from
    #   the cluster.
    #   @return [Array<String>]
    #
    # @!attribute [rw] apply_immediately
    #   Indicates that the shard reconfiguration process begins immediately.
    #   At present, the only permitted value for this parameter is true.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/DecreaseNodeGroupsInGlobalReplicationGroupMessage AWS API Documentation
    #
    class DecreaseNodeGroupsInGlobalReplicationGroupMessage < Struct.new(
      :global_replication_group_id,
      :node_group_count,
      :global_node_groups_to_remove,
      :global_node_groups_to_retain,
      :apply_immediately)
      include Aws::Structure
    end

    # @!attribute [rw] global_replication_group
    #   Consists of a primary cluster that accepts writes and an associated
    #   secondary cluster that resides in a different AWS region. The
    #   secondary cluster accepts only reads. The primary cluster
    #   automatically replicates updates to the secondary cluster.
    #
    #   * The **GlobalReplicationGroupIdSuffix** represents the name of the
    #     Global Datastore, which is what you use to associate a secondary
    #     cluster.
    #
    #   ^
    #   @return [Types::GlobalReplicationGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/DecreaseNodeGroupsInGlobalReplicationGroupResult AWS API Documentation
    #
    class DecreaseNodeGroupsInGlobalReplicationGroupResult < Struct.new(
      :global_replication_group)
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
    #   If `True`, the number of replica nodes is decreased immediately.
    #   `ApplyImmediately=False` is not currently supported.
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

    # @note When making an API call, you may pass DeleteGlobalReplicationGroupMessage
    #   data as a hash:
    #
    #       {
    #         global_replication_group_id: "String", # required
    #         retain_primary_replication_group: false, # required
    #       }
    #
    # @!attribute [rw] global_replication_group_id
    #   The name of the Global Datastore
    #   @return [String]
    #
    # @!attribute [rw] retain_primary_replication_group
    #   The primary replication group is retained as a standalone
    #   replication group.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/DeleteGlobalReplicationGroupMessage AWS API Documentation
    #
    class DeleteGlobalReplicationGroupMessage < Struct.new(
      :global_replication_group_id,
      :retain_primary_replication_group)
      include Aws::Structure
    end

    # @!attribute [rw] global_replication_group
    #   Consists of a primary cluster that accepts writes and an associated
    #   secondary cluster that resides in a different AWS region. The
    #   secondary cluster accepts only reads. The primary cluster
    #   automatically replicates updates to the secondary cluster.
    #
    #   * The **GlobalReplicationGroupIdSuffix** represents the name of the
    #     Global Datastore, which is what you use to associate a secondary
    #     cluster.
    #
    #   ^
    #   @return [Types::GlobalReplicationGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/DeleteGlobalReplicationGroupResult AWS API Documentation
    #
    class DeleteGlobalReplicationGroupResult < Struct.new(
      :global_replication_group)
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
    #   Valid values are: `memcached1.4` \| `memcached1.5` \| `redis2.6` \|
    #   `redis2.8` \| `redis3.2` \| `redis4.0` \| `redis5.0` \|
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
    #   Valid values are: `memcached1.4` \| `memcached1.5` \| `redis2.6` \|
    #   `redis2.8` \| `redis3.2` \| `redis4.0` \| `redis5.0` \|
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

    # @note When making an API call, you may pass DescribeGlobalReplicationGroupsMessage
    #   data as a hash:
    #
    #       {
    #         global_replication_group_id: "String",
    #         max_records: 1,
    #         marker: "String",
    #         show_member_info: false,
    #       }
    #
    # @!attribute [rw] global_replication_group_id
    #   The name of the Global Datastore
    #   @return [String]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified MaxRecords value, a marker is
    #   included in the response so that the remaining results can be
    #   retrieved.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   An optional marker returned from a prior request. Use this marker
    #   for pagination of results from this operation. If this parameter is
    #   specified, the response includes only records beyond the marker, up
    #   to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @!attribute [rw] show_member_info
    #   Returns the list of members that comprise the Global Datastore.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/DescribeGlobalReplicationGroupsMessage AWS API Documentation
    #
    class DescribeGlobalReplicationGroupsMessage < Struct.new(
      :global_replication_group_id,
      :max_records,
      :marker,
      :show_member_info)
      include Aws::Structure
    end

    # @!attribute [rw] marker
    #   An optional marker returned from a prior request. Use this marker
    #   for pagination of results from this operation. If this parameter is
    #   specified, the response includes only records beyond the marker, up
    #   to the value specified by MaxRecords. &gt;
    #   @return [String]
    #
    # @!attribute [rw] global_replication_groups
    #   Indicates the slot configuration and global identifier for each
    #   slice group.
    #   @return [Array<Types::GlobalReplicationGroup>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/DescribeGlobalReplicationGroupsResult AWS API Documentation
    #
    class DescribeGlobalReplicationGroupsResult < Struct.new(
      :marker,
      :global_replication_groups)
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
    #       **M5 node types:** `cache.m5.large`, `cache.m5.xlarge`,
    #       `cache.m5.2xlarge`, `cache.m5.4xlarge`, `cache.m5.12xlarge`,
    #       `cache.m5.24xlarge`
    #
    #       **M4 node types:** `cache.m4.large`, `cache.m4.xlarge`,
    #       `cache.m4.2xlarge`, `cache.m4.4xlarge`, `cache.m4.10xlarge`
    #
    #       **T3 node types:** `cache.t3.micro`, `cache.t3.small`,
    #       `cache.t3.medium`
    #
    #       **T2 node types:** `cache.t2.micro`, `cache.t2.small`,
    #       `cache.t2.medium`
    #
    #     * Previous generation: (not recommended)
    #
    #       **T1 node types:** `cache.t1.micro`
    #
    #       **M1 node types:** `cache.m1.small`, `cache.m1.medium`,
    #       `cache.m1.large`, `cache.m1.xlarge`
    #
    #       **M3 node types:** `cache.m3.medium`, `cache.m3.large`,
    #       `cache.m3.xlarge`, `cache.m3.2xlarge`
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
    #       **R5 node types:** `cache.r5.large`, `cache.r5.xlarge`,
    #       `cache.r5.2xlarge`, `cache.r5.4xlarge`, `cache.r5.12xlarge`,
    #       `cache.r5.24xlarge`
    #
    #       **R4 node types:** `cache.r4.large`, `cache.r4.xlarge`,
    #       `cache.r4.2xlarge`, `cache.r4.4xlarge`, `cache.r4.8xlarge`,
    #       `cache.r4.16xlarge`
    #
    #     * Previous generation: (not recommended)
    #
    #       **M2 node types:** `cache.m2.xlarge`, `cache.m2.2xlarge`,
    #       `cache.m2.4xlarge`
    #
    #       **R3 node types:** `cache.r3.large`, `cache.r3.xlarge`,
    #       `cache.r3.2xlarge`, `cache.r3.4xlarge`, `cache.r3.8xlarge`
    #
    #   **Additional node type info**
    #
    #   * All current generation instance types are created in Amazon VPC by
    #     default.
    #
    #   * Redis append-only files (AOF) are not supported for T1 or T2
    #     instances.
    #
    #   * Redis Multi-AZ with automatic failover is not supported on T1
    #     instances.
    #
    #   * Redis configuration variables `appendonly` and `appendfsync` are
    #     not supported on Redis version 2.8.22 and later.
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
    #       **M5 node types:** `cache.m5.large`, `cache.m5.xlarge`,
    #       `cache.m5.2xlarge`, `cache.m5.4xlarge`, `cache.m5.12xlarge`,
    #       `cache.m5.24xlarge`
    #
    #       **M4 node types:** `cache.m4.large`, `cache.m4.xlarge`,
    #       `cache.m4.2xlarge`, `cache.m4.4xlarge`, `cache.m4.10xlarge`
    #
    #       **T3 node types:** `cache.t3.micro`, `cache.t3.small`,
    #       `cache.t3.medium`
    #
    #       **T2 node types:** `cache.t2.micro`, `cache.t2.small`,
    #       `cache.t2.medium`
    #
    #     * Previous generation: (not recommended)
    #
    #       **T1 node types:** `cache.t1.micro`
    #
    #       **M1 node types:** `cache.m1.small`, `cache.m1.medium`,
    #       `cache.m1.large`, `cache.m1.xlarge`
    #
    #       **M3 node types:** `cache.m3.medium`, `cache.m3.large`,
    #       `cache.m3.xlarge`, `cache.m3.2xlarge`
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
    #       **R5 node types:** `cache.r5.large`, `cache.r5.xlarge`,
    #       `cache.r5.2xlarge`, `cache.r5.4xlarge`, `cache.r5.12xlarge`,
    #       `cache.r5.24xlarge`
    #
    #       **R4 node types:** `cache.r4.large`, `cache.r4.xlarge`,
    #       `cache.r4.2xlarge`, `cache.r4.4xlarge`, `cache.r4.8xlarge`,
    #       `cache.r4.16xlarge`
    #
    #     * Previous generation: (not recommended)
    #
    #       **M2 node types:** `cache.m2.xlarge`, `cache.m2.2xlarge`,
    #       `cache.m2.4xlarge`
    #
    #       **R3 node types:** `cache.r3.large`, `cache.r3.xlarge`,
    #       `cache.r3.2xlarge`, `cache.r3.4xlarge`, `cache.r3.8xlarge`
    #
    #   **Additional node type info**
    #
    #   * All current generation instance types are created in Amazon VPC by
    #     default.
    #
    #   * Redis append-only files (AOF) are not supported for T1 or T2
    #     instances.
    #
    #   * Redis Multi-AZ with automatic failover is not supported on T1
    #     instances.
    #
    #   * Redis configuration variables `appendonly` and `appendfsync` are
    #     not supported on Redis version 2.8.22 and later.
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

    # @note When making an API call, you may pass DescribeServiceUpdatesMessage
    #   data as a hash:
    #
    #       {
    #         service_update_name: "String",
    #         service_update_status: ["available"], # accepts available, cancelled, expired
    #         max_records: 1,
    #         marker: "String",
    #       }
    #
    # @!attribute [rw] service_update_name
    #   The unique ID of the service update
    #   @return [String]
    #
    # @!attribute [rw] service_update_status
    #   The status of the service update
    #   @return [Array<String>]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   An optional marker returned from a prior request. Use this marker
    #   for pagination of results from this operation. If this parameter is
    #   specified, the response includes only records beyond the marker, up
    #   to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/DescribeServiceUpdatesMessage AWS API Documentation
    #
    class DescribeServiceUpdatesMessage < Struct.new(
      :service_update_name,
      :service_update_status,
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

    # @note When making an API call, you may pass DescribeUpdateActionsMessage
    #   data as a hash:
    #
    #       {
    #         service_update_name: "String",
    #         replication_group_ids: ["String"],
    #         cache_cluster_ids: ["String"],
    #         engine: "String",
    #         service_update_status: ["available"], # accepts available, cancelled, expired
    #         service_update_time_range: {
    #           start_time: Time.now,
    #           end_time: Time.now,
    #         },
    #         update_action_status: ["not-applied"], # accepts not-applied, waiting-to-start, in-progress, stopping, stopped, complete, scheduling, scheduled, not-applicable
    #         show_node_level_update_status: false,
    #         max_records: 1,
    #         marker: "String",
    #       }
    #
    # @!attribute [rw] service_update_name
    #   The unique ID of the service update
    #   @return [String]
    #
    # @!attribute [rw] replication_group_ids
    #   The replication group IDs
    #   @return [Array<String>]
    #
    # @!attribute [rw] cache_cluster_ids
    #   The cache cluster IDs
    #   @return [Array<String>]
    #
    # @!attribute [rw] engine
    #   The Elasticache engine to which the update applies. Either Redis or
    #   Memcached
    #   @return [String]
    #
    # @!attribute [rw] service_update_status
    #   The status of the service update
    #   @return [Array<String>]
    #
    # @!attribute [rw] service_update_time_range
    #   The range of time specified to search for service updates that are
    #   in available status
    #   @return [Types::TimeRangeFilter]
    #
    # @!attribute [rw] update_action_status
    #   The status of the update action.
    #   @return [Array<String>]
    #
    # @!attribute [rw] show_node_level_update_status
    #   Dictates whether to include node level update status in the response
    #   @return [Boolean]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   An optional marker returned from a prior request. Use this marker
    #   for pagination of results from this operation. If this parameter is
    #   specified, the response includes only records beyond the marker, up
    #   to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/DescribeUpdateActionsMessage AWS API Documentation
    #
    class DescribeUpdateActionsMessage < Struct.new(
      :service_update_name,
      :replication_group_ids,
      :cache_cluster_ids,
      :engine,
      :service_update_status,
      :service_update_time_range,
      :update_action_status,
      :show_node_level_update_status,
      :max_records,
      :marker)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DisassociateGlobalReplicationGroupMessage
    #   data as a hash:
    #
    #       {
    #         global_replication_group_id: "String", # required
    #         replication_group_id: "String", # required
    #         replication_group_region: "String", # required
    #       }
    #
    # @!attribute [rw] global_replication_group_id
    #   The name of the Global Datastore
    #   @return [String]
    #
    # @!attribute [rw] replication_group_id
    #   The name of the secondary cluster you wish to remove from the Global
    #   Datastore
    #   @return [String]
    #
    # @!attribute [rw] replication_group_region
    #   The AWS region of secondary cluster you wish to remove from the
    #   Global Datastore
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/DisassociateGlobalReplicationGroupMessage AWS API Documentation
    #
    class DisassociateGlobalReplicationGroupMessage < Struct.new(
      :global_replication_group_id,
      :replication_group_id,
      :replication_group_region)
      include Aws::Structure
    end

    # @!attribute [rw] global_replication_group
    #   Consists of a primary cluster that accepts writes and an associated
    #   secondary cluster that resides in a different AWS region. The
    #   secondary cluster accepts only reads. The primary cluster
    #   automatically replicates updates to the secondary cluster.
    #
    #   * The **GlobalReplicationGroupIdSuffix** represents the name of the
    #     Global Datastore, which is what you use to associate a secondary
    #     cluster.
    #
    #   ^
    #   @return [Types::GlobalReplicationGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/DisassociateGlobalReplicationGroupResult AWS API Documentation
    #
    class DisassociateGlobalReplicationGroupResult < Struct.new(
      :global_replication_group)
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
    #   Valid values are: `memcached1.4` \| `memcached1.5` \| `redis2.6` \|
    #   `redis2.8` \| `redis3.2` \| `redis4.0` \| `redis5.0` \|
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

    # @note When making an API call, you may pass FailoverGlobalReplicationGroupMessage
    #   data as a hash:
    #
    #       {
    #         global_replication_group_id: "String", # required
    #         primary_region: "String", # required
    #         primary_replication_group_id: "String", # required
    #       }
    #
    # @!attribute [rw] global_replication_group_id
    #   The name of the Global Datastore
    #   @return [String]
    #
    # @!attribute [rw] primary_region
    #   The AWS region of the primary cluster of the Global Datastore
    #   @return [String]
    #
    # @!attribute [rw] primary_replication_group_id
    #   The name of the primary replication group
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/FailoverGlobalReplicationGroupMessage AWS API Documentation
    #
    class FailoverGlobalReplicationGroupMessage < Struct.new(
      :global_replication_group_id,
      :primary_region,
      :primary_replication_group_id)
      include Aws::Structure
    end

    # @!attribute [rw] global_replication_group
    #   Consists of a primary cluster that accepts writes and an associated
    #   secondary cluster that resides in a different AWS region. The
    #   secondary cluster accepts only reads. The primary cluster
    #   automatically replicates updates to the secondary cluster.
    #
    #   * The **GlobalReplicationGroupIdSuffix** represents the name of the
    #     Global Datastore, which is what you use to associate a secondary
    #     cluster.
    #
    #   ^
    #   @return [Types::GlobalReplicationGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/FailoverGlobalReplicationGroupResult AWS API Documentation
    #
    class FailoverGlobalReplicationGroupResult < Struct.new(
      :global_replication_group)
      include Aws::Structure
    end

    # Indicates the slot configuration and global identifier for a slice
    # group.
    #
    # @!attribute [rw] global_node_group_id
    #   The name of the global node group
    #   @return [String]
    #
    # @!attribute [rw] slots
    #   The keyspace for this node group
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/GlobalNodeGroup AWS API Documentation
    #
    class GlobalNodeGroup < Struct.new(
      :global_node_group_id,
      :slots)
      include Aws::Structure
    end

    # Consists of a primary cluster that accepts writes and an associated
    # secondary cluster that resides in a different AWS region. The
    # secondary cluster accepts only reads. The primary cluster
    # automatically replicates updates to the secondary cluster.
    #
    # * The **GlobalReplicationGroupIdSuffix** represents the name of the
    #   Global Datastore, which is what you use to associate a secondary
    #   cluster.
    #
    # ^
    #
    # @!attribute [rw] global_replication_group_id
    #   The name of the Global Datastore
    #   @return [String]
    #
    # @!attribute [rw] global_replication_group_description
    #   The optional description of the Global Datastore
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the Global Datastore
    #   @return [String]
    #
    # @!attribute [rw] cache_node_type
    #   The cache node type of the Global Datastore
    #   @return [String]
    #
    # @!attribute [rw] engine
    #   The Elasticache engine. For Redis only.
    #   @return [String]
    #
    # @!attribute [rw] engine_version
    #   The Elasticache Redis engine version. For preview, it is Redis
    #   version 5.0.5 only.
    #   @return [String]
    #
    # @!attribute [rw] members
    #   The replication groups that comprise the Global Datastore.
    #   @return [Array<Types::GlobalReplicationGroupMember>]
    #
    # @!attribute [rw] cluster_enabled
    #   A flag that indicates whether the Global Datastore is cluster
    #   enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] global_node_groups
    #   Indicates the slot configuration and global identifier for each
    #   slice group.
    #   @return [Array<Types::GlobalNodeGroup>]
    #
    # @!attribute [rw] auth_token_enabled
    #   A flag that enables using an `AuthToken` (password) when issuing
    #   Redis commands.
    #
    #   Default: `false`
    #   @return [Boolean]
    #
    # @!attribute [rw] transit_encryption_enabled
    #   A flag that enables in-transit encryption when set to true. You
    #   cannot modify the value of `TransitEncryptionEnabled` after the
    #   cluster is created. To enable in-transit encryption on a cluster you
    #   must set `TransitEncryptionEnabled` to true when you create a
    #   cluster.
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
    #   Amazon VPC using redis version `3.2.6`, `4.x` or later.
    #   @return [Boolean]
    #
    # @!attribute [rw] arn
    #   The ARN (Amazon Resource Name) of the global replication group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/GlobalReplicationGroup AWS API Documentation
    #
    class GlobalReplicationGroup < Struct.new(
      :global_replication_group_id,
      :global_replication_group_description,
      :status,
      :cache_node_type,
      :engine,
      :engine_version,
      :members,
      :cluster_enabled,
      :global_node_groups,
      :auth_token_enabled,
      :transit_encryption_enabled,
      :at_rest_encryption_enabled,
      :arn)
      include Aws::Structure
    end

    # The Global Datastore name already exists.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/GlobalReplicationGroupAlreadyExistsFault AWS API Documentation
    #
    class GlobalReplicationGroupAlreadyExistsFault < Aws::EmptyStructure; end

    # The name of the Global Datastore and role of this replication group in
    # the Global Datastore.
    #
    # @!attribute [rw] global_replication_group_id
    #   The name of the Global Datastore
    #   @return [String]
    #
    # @!attribute [rw] global_replication_group_member_role
    #   The role of the replication group in a Global Datastore. Can be
    #   primary or secondary.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/GlobalReplicationGroupInfo AWS API Documentation
    #
    class GlobalReplicationGroupInfo < Struct.new(
      :global_replication_group_id,
      :global_replication_group_member_role)
      include Aws::Structure
    end

    # A member of a Global Datastore. It contains the Replication Group Id,
    # the AWS region and the role of the replication group.
    #
    # @!attribute [rw] replication_group_id
    #   The replication group id of the Global Datastore member.
    #   @return [String]
    #
    # @!attribute [rw] replication_group_region
    #   The AWS region of the Global Datastore member.
    #   @return [String]
    #
    # @!attribute [rw] role
    #   Indicates the role of the replication group, primary or secondary.
    #   @return [String]
    #
    # @!attribute [rw] automatic_failover
    #   Indicates whether automatic failover is enabled for the replication
    #   group.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the membership of the replication group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/GlobalReplicationGroupMember AWS API Documentation
    #
    class GlobalReplicationGroupMember < Struct.new(
      :replication_group_id,
      :replication_group_region,
      :role,
      :automatic_failover,
      :status)
      include Aws::Structure
    end

    # The Global Datastore does not exist
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/GlobalReplicationGroupNotFoundFault AWS API Documentation
    #
    class GlobalReplicationGroupNotFoundFault < Aws::EmptyStructure; end

    # @note When making an API call, you may pass IncreaseNodeGroupsInGlobalReplicationGroupMessage
    #   data as a hash:
    #
    #       {
    #         global_replication_group_id: "String", # required
    #         node_group_count: 1, # required
    #         regional_configurations: [
    #           {
    #             replication_group_id: "String", # required
    #             replication_group_region: "String", # required
    #             resharding_configuration: [ # required
    #               {
    #                 node_group_id: "AllowedNodeGroupId",
    #                 preferred_availability_zones: ["String"],
    #               },
    #             ],
    #           },
    #         ],
    #         apply_immediately: false, # required
    #       }
    #
    # @!attribute [rw] global_replication_group_id
    #   The name of the Global Datastore
    #   @return [String]
    #
    # @!attribute [rw] node_group_count
    #   The number of node groups you wish to add
    #   @return [Integer]
    #
    # @!attribute [rw] regional_configurations
    #   Describes the replication group IDs, the AWS regions where they are
    #   stored and the shard configuration for each that comprise the Global
    #   Datastore
    #   @return [Array<Types::RegionalConfiguration>]
    #
    # @!attribute [rw] apply_immediately
    #   Indicates that the process begins immediately. At present, the only
    #   permitted value for this parameter is true.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/IncreaseNodeGroupsInGlobalReplicationGroupMessage AWS API Documentation
    #
    class IncreaseNodeGroupsInGlobalReplicationGroupMessage < Struct.new(
      :global_replication_group_id,
      :node_group_count,
      :regional_configurations,
      :apply_immediately)
      include Aws::Structure
    end

    # @!attribute [rw] global_replication_group
    #   Consists of a primary cluster that accepts writes and an associated
    #   secondary cluster that resides in a different AWS region. The
    #   secondary cluster accepts only reads. The primary cluster
    #   automatically replicates updates to the secondary cluster.
    #
    #   * The **GlobalReplicationGroupIdSuffix** represents the name of the
    #     Global Datastore, which is what you use to associate a secondary
    #     cluster.
    #
    #   ^
    #   @return [Types::GlobalReplicationGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/IncreaseNodeGroupsInGlobalReplicationGroupResult AWS API Documentation
    #
    class IncreaseNodeGroupsInGlobalReplicationGroupResult < Struct.new(
      :global_replication_group)
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
    #   If `True`, the number of replica nodes is increased immediately.
    #   `ApplyImmediately=False` is not currently supported.
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

    # The requested cache node type is not available in the specified
    # Availability Zone. For more information, see
    # [InsufficientCacheClusterCapacity][1] in the ElastiCache User Guide.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/ErrorMessages.html#ErrorMessages.INSUFFICIENT_CACHE_CLUSTER_CAPACITY
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/InsufficientCacheClusterCapacityFault AWS API Documentation
    #
    class InsufficientCacheClusterCapacityFault < Aws::EmptyStructure; end

    # The requested Amazon Resource Name (ARN) does not refer to an existing
    # resource.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/InvalidARNFault AWS API Documentation
    #
    class InvalidARNFault < Aws::EmptyStructure; end

    # The requested cluster is not in the `available` state.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/InvalidCacheClusterStateFault AWS API Documentation
    #
    class InvalidCacheClusterStateFault < Aws::EmptyStructure; end

    # The current state of the cache parameter group does not allow the
    # requested operation to occur.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/InvalidCacheParameterGroupStateFault AWS API Documentation
    #
    class InvalidCacheParameterGroupStateFault < Aws::EmptyStructure; end

    # The current state of the cache security group does not allow deletion.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/InvalidCacheSecurityGroupStateFault AWS API Documentation
    #
    class InvalidCacheSecurityGroupStateFault < Aws::EmptyStructure; end

    # The Global Datastore is not available or in primary-only state.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/InvalidGlobalReplicationGroupStateFault AWS API Documentation
    #
    class InvalidGlobalReplicationGroupStateFault < Aws::EmptyStructure; end

    # The KMS key supplied is not valid.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/InvalidKMSKeyFault AWS API Documentation
    #
    class InvalidKMSKeyFault < Aws::EmptyStructure; end

    # Two or more incompatible parameters were specified.
    #
    # @!attribute [rw] message
    #   Two or more parameters that must not be used together were used
    #   together.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/InvalidParameterCombinationException AWS API Documentation
    #
    class InvalidParameterCombinationException < Struct.new(
      :message)
      include Aws::Structure
    end

    # The value for a parameter is invalid.
    #
    # @!attribute [rw] message
    #   A parameter value is invalid.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/InvalidParameterValueException AWS API Documentation
    #
    class InvalidParameterValueException < Struct.new(
      :message)
      include Aws::Structure
    end

    # The requested replication group is not in the `available` state.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/InvalidReplicationGroupStateFault AWS API Documentation
    #
    class InvalidReplicationGroupStateFault < Aws::EmptyStructure; end

    # The current state of the snapshot does not allow the requested
    # operation to occur.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/InvalidSnapshotStateFault AWS API Documentation
    #
    class InvalidSnapshotStateFault < Aws::EmptyStructure; end

    # An invalid subnet identifier was specified.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/InvalidSubnet AWS API Documentation
    #
    class InvalidSubnet < Aws::EmptyStructure; end

    # The VPC network is in an invalid state.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/InvalidVPCNetworkStateFault AWS API Documentation
    #
    class InvalidVPCNetworkStateFault < Aws::EmptyStructure; end

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
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
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
    #         auth_token: "String",
    #         auth_token_update_strategy: "SET", # accepts SET, ROTATE
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
    #   Zones.
    #
    #    </note>
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
    #   [1]: https://docs.aws.amazon.com/AmazonElastiCache/latest/mem-ug/CacheNodes.SupportedTypes.html
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
    #   [1]: https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/SelectEngine.html#VersionManagement
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
    # @!attribute [rw] auth_token
    #   Reserved parameter. The password used to access a password protected
    #   server. This parameter must be specified with the
    #   `auth-token-update` parameter. Password constraints:
    #
    #   * Must be only printable ASCII characters
    #
    #   * Must be at least 16 characters and no more than 128 characters in
    #     length
    #
    #   * Cannot contain any of the following characters: '/', '"', or
    #     '@', '%'
    #
    #   For more information, see AUTH password at [AUTH][1].
    #
    #
    #
    #   [1]: http://redis.io/commands/AUTH
    #   @return [String]
    #
    # @!attribute [rw] auth_token_update_strategy
    #   Specifies the strategy to use to update the AUTH token. This
    #   parameter must be specified with the `auth-token` parameter.
    #   Possible values:
    #
    #   * Rotate
    #
    #   * Set
    #
    #   For more information, see [Authenticating Users with Redis AUTH][1]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/auth.html
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
      :cache_node_type,
      :auth_token,
      :auth_token_update_strategy)
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

    # @note When making an API call, you may pass ModifyGlobalReplicationGroupMessage
    #   data as a hash:
    #
    #       {
    #         global_replication_group_id: "String", # required
    #         apply_immediately: false, # required
    #         cache_node_type: "String",
    #         engine_version: "String",
    #         global_replication_group_description: "String",
    #         automatic_failover_enabled: false,
    #       }
    #
    # @!attribute [rw] global_replication_group_id
    #   The name of the Global Datastore
    #   @return [String]
    #
    # @!attribute [rw] apply_immediately
    #   This parameter causes the modifications in this request and any
    #   pending modifications to be applied, asynchronously and as soon as
    #   possible. Modifications to Global Replication Groups cannot be
    #   requested to be applied in PreferredMaintenceWindow.
    #   @return [Boolean]
    #
    # @!attribute [rw] cache_node_type
    #   A valid cache node type that you want to scale this Global Datastore
    #   to.
    #   @return [String]
    #
    # @!attribute [rw] engine_version
    #   The upgraded version of the cache engine to be run on the clusters
    #   in the Global Datastore.
    #   @return [String]
    #
    # @!attribute [rw] global_replication_group_description
    #   A description of the Global Datastore
    #   @return [String]
    #
    # @!attribute [rw] automatic_failover_enabled
    #   Determines whether a read replica is automatically promoted to
    #   read/write primary if the existing primary encounters a failure.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/ModifyGlobalReplicationGroupMessage AWS API Documentation
    #
    class ModifyGlobalReplicationGroupMessage < Struct.new(
      :global_replication_group_id,
      :apply_immediately,
      :cache_node_type,
      :engine_version,
      :global_replication_group_description,
      :automatic_failover_enabled)
      include Aws::Structure
    end

    # @!attribute [rw] global_replication_group
    #   Consists of a primary cluster that accepts writes and an associated
    #   secondary cluster that resides in a different AWS region. The
    #   secondary cluster accepts only reads. The primary cluster
    #   automatically replicates updates to the secondary cluster.
    #
    #   * The **GlobalReplicationGroupIdSuffix** represents the name of the
    #     Global Datastore, which is what you use to associate a secondary
    #     cluster.
    #
    #   ^
    #   @return [Types::GlobalReplicationGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/ModifyGlobalReplicationGroupResult AWS API Documentation
    #
    class ModifyGlobalReplicationGroupResult < Struct.new(
      :global_replication_group)
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
    #         multi_az_enabled: false,
    #         node_group_id: "String",
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
    #         auth_token: "String",
    #         auth_token_update_strategy: "SET", # accepts SET, ROTATE
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
    #   * Redis (cluster mode disabled): T1 node types.
    #
    #   * Redis (cluster mode enabled): T1 node types.
    #   @return [Boolean]
    #
    # @!attribute [rw] multi_az_enabled
    #   @return [Boolean]
    #
    # @!attribute [rw] node_group_id
    #   Deprecated. This parameter is not used.
    #   @return [String]
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
    #   [1]: https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/SelectEngine.html#VersionManagement
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
    # @!attribute [rw] auth_token
    #   Reserved parameter. The password used to access a password protected
    #   server. This parameter must be specified with the
    #   `auth-token-update-strategy ` parameter. Password constraints:
    #
    #   * Must be only printable ASCII characters
    #
    #   * Must be at least 16 characters and no more than 128 characters in
    #     length
    #
    #   * Cannot contain any of the following characters: '/', '"', or
    #     '@', '%'
    #
    #   For more information, see AUTH password at [AUTH][1].
    #
    #
    #
    #   [1]: http://redis.io/commands/AUTH
    #   @return [String]
    #
    # @!attribute [rw] auth_token_update_strategy
    #   Specifies the strategy to use to update the AUTH token. This
    #   parameter must be specified with the `auth-token` parameter.
    #   Possible values:
    #
    #   * Rotate
    #
    #   * Set
    #
    #   For more information, see [Authenticating Users with Redis AUTH][1]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/auth.html
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
      :multi_az_enabled,
      :node_group_id,
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
      :auth_token,
      :auth_token_update_strategy)
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
    #   node groups (shards), then either `NodeGroupsToRemove` or
    #   `NodeGroupsToRetain` is required. `NodeGroupsToRemove` is a list of
    #   `NodeGroupId`s to remove from the cluster.
    #
    #   ElastiCache for Redis will attempt to remove all node groups listed
    #   by `NodeGroupsToRemove` from the cluster.
    #   @return [Array<String>]
    #
    # @!attribute [rw] node_groups_to_retain
    #   If the value of `NodeGroupCount` is less than the current number of
    #   node groups (shards), then either `NodeGroupsToRemove` or
    #   `NodeGroupsToRetain` is required. `NodeGroupsToRetain` is a list of
    #   `NodeGroupId`s to retain in the cluster.
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

    # The operation was not performed because no changes were required.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/NoOperationFault AWS API Documentation
    #
    class NoOperationFault < Aws::EmptyStructure; end

    # Represents a collection of cache nodes in a replication group. One
    # node in the node group is the read/write primary node. All the other
    # nodes are read-only Replica nodes.
    #
    # @!attribute [rw] node_group_id
    #   The identifier for the node group (shard). A Redis (cluster mode
    #   disabled) replication group contains only 1 node group; therefore,
    #   the node group ID is 0001. A Redis (cluster mode enabled)
    #   replication group contains 1 to 90 node groups numbered 0001 to
    #   0090. Optionally, the user can provide the id for a node group.
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
    # @!attribute [rw] reader_endpoint
    #   The endpoint of the replica nodes in this node group (shard).
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
      :reader_endpoint,
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
    #   Either the ElastiCache for Redis supplied 4-digit id or a user
    #   supplied id for the node group these configuration values apply to.
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

    # The status of the service update on the node group member
    #
    # @!attribute [rw] cache_cluster_id
    #   The cache cluster ID
    #   @return [String]
    #
    # @!attribute [rw] cache_node_id
    #   The node ID of the cache cluster
    #   @return [String]
    #
    # @!attribute [rw] node_update_status
    #   The update status of the node
    #   @return [String]
    #
    # @!attribute [rw] node_deletion_date
    #   The deletion date of the node
    #   @return [Time]
    #
    # @!attribute [rw] node_update_start_date
    #   The start date of the update for a node
    #   @return [Time]
    #
    # @!attribute [rw] node_update_end_date
    #   The end date of the update for a node
    #   @return [Time]
    #
    # @!attribute [rw] node_update_initiated_by
    #   Reflects whether the update was initiated by the customer or
    #   automatically applied
    #   @return [String]
    #
    # @!attribute [rw] node_update_initiated_date
    #   The date when the update is triggered
    #   @return [Time]
    #
    # @!attribute [rw] node_update_status_modified_date
    #   The date when the NodeUpdateStatus was last modified
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/NodeGroupMemberUpdateStatus AWS API Documentation
    #
    class NodeGroupMemberUpdateStatus < Struct.new(
      :cache_cluster_id,
      :cache_node_id,
      :node_update_status,
      :node_deletion_date,
      :node_update_start_date,
      :node_update_end_date,
      :node_update_initiated_by,
      :node_update_initiated_date,
      :node_update_status_modified_date)
      include Aws::Structure
    end

    # The node group specified by the `NodeGroupId` parameter could not be
    # found. Please verify that the node group exists and that you spelled
    # the `NodeGroupId` value correctly.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/NodeGroupNotFoundFault AWS API Documentation
    #
    class NodeGroupNotFoundFault < Aws::EmptyStructure; end

    # The status of the service update on the node group
    #
    # @!attribute [rw] node_group_id
    #   The ID of the node group
    #   @return [String]
    #
    # @!attribute [rw] node_group_member_update_status
    #   The status of the service update on the node group member
    #   @return [Array<Types::NodeGroupMemberUpdateStatus>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/NodeGroupUpdateStatus AWS API Documentation
    #
    class NodeGroupUpdateStatus < Struct.new(
      :node_group_id,
      :node_group_member_update_status)
      include Aws::Structure
    end

    # The request cannot be processed because it would exceed the maximum
    # allowed number of node groups (shards) in a single replication group.
    # The default maximum is 90
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/NodeGroupsPerReplicationGroupQuotaExceededFault AWS API Documentation
    #
    class NodeGroupsPerReplicationGroupQuotaExceededFault < Aws::EmptyStructure; end

    # The request cannot be processed because it would exceed the allowed
    # number of cache nodes in a single cluster.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/NodeQuotaForClusterExceededFault AWS API Documentation
    #
    class NodeQuotaForClusterExceededFault < Aws::EmptyStructure; end

    # The request cannot be processed because it would exceed the allowed
    # number of cache nodes per customer.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/NodeQuotaForCustomerExceededFault AWS API Documentation
    #
    class NodeQuotaForCustomerExceededFault < Aws::EmptyStructure; end

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
    #   [1]: https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/Clusters.Rebooting.html
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
    # @!attribute [rw] auth_token_status
    #   The auth token status
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/PendingModifiedValues AWS API Documentation
    #
    class PendingModifiedValues < Struct.new(
      :num_cache_nodes,
      :cache_node_ids_to_remove,
      :engine_version,
      :cache_node_type,
      :auth_token_status)
      include Aws::Structure
    end

    # Update action that has been processed for the corresponding apply/stop
    # request
    #
    # @!attribute [rw] replication_group_id
    #   The ID of the replication group
    #   @return [String]
    #
    # @!attribute [rw] cache_cluster_id
    #   The ID of the cache cluster
    #   @return [String]
    #
    # @!attribute [rw] service_update_name
    #   The unique ID of the service update
    #   @return [String]
    #
    # @!attribute [rw] update_action_status
    #   The status of the update action on the Redis cluster
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/ProcessedUpdateAction AWS API Documentation
    #
    class ProcessedUpdateAction < Struct.new(
      :replication_group_id,
      :cache_cluster_id,
      :service_update_name,
      :update_action_status)
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

    # @note When making an API call, you may pass RebalanceSlotsInGlobalReplicationGroupMessage
    #   data as a hash:
    #
    #       {
    #         global_replication_group_id: "String", # required
    #         apply_immediately: false, # required
    #       }
    #
    # @!attribute [rw] global_replication_group_id
    #   The name of the Global Datastore
    #   @return [String]
    #
    # @!attribute [rw] apply_immediately
    #   If `True`, redistribution is applied immediately.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/RebalanceSlotsInGlobalReplicationGroupMessage AWS API Documentation
    #
    class RebalanceSlotsInGlobalReplicationGroupMessage < Struct.new(
      :global_replication_group_id,
      :apply_immediately)
      include Aws::Structure
    end

    # @!attribute [rw] global_replication_group
    #   Consists of a primary cluster that accepts writes and an associated
    #   secondary cluster that resides in a different AWS region. The
    #   secondary cluster accepts only reads. The primary cluster
    #   automatically replicates updates to the secondary cluster.
    #
    #   * The **GlobalReplicationGroupIdSuffix** represents the name of the
    #     Global Datastore, which is what you use to associate a secondary
    #     cluster.
    #
    #   ^
    #   @return [Types::GlobalReplicationGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/RebalanceSlotsInGlobalReplicationGroupResult AWS API Documentation
    #
    class RebalanceSlotsInGlobalReplicationGroupResult < Struct.new(
      :global_replication_group)
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

    # A list of the replication groups
    #
    # @note When making an API call, you may pass RegionalConfiguration
    #   data as a hash:
    #
    #       {
    #         replication_group_id: "String", # required
    #         replication_group_region: "String", # required
    #         resharding_configuration: [ # required
    #           {
    #             node_group_id: "AllowedNodeGroupId",
    #             preferred_availability_zones: ["String"],
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] replication_group_id
    #   The name of the secondary cluster
    #   @return [String]
    #
    # @!attribute [rw] replication_group_region
    #   The AWS region where the cluster is stored
    #   @return [String]
    #
    # @!attribute [rw] resharding_configuration
    #   A list of `PreferredAvailabilityZones` objects that specifies the
    #   configuration of a node group in the resharded cluster.
    #   @return [Array<Types::ReshardingConfiguration>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/RegionalConfiguration AWS API Documentation
    #
    class RegionalConfiguration < Struct.new(
      :replication_group_id,
      :replication_group_region,
      :resharding_configuration)
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
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
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
    # @!attribute [rw] global_replication_group_info
    #   The name of the Global Datastore and role of this replication group
    #   in the Global Datastore.
    #   @return [Types::GlobalReplicationGroupInfo]
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
    #   * Redis (cluster mode disabled): T1 node types.
    #
    #   * Redis (cluster mode enabled): T1 node types.
    #   @return [String]
    #
    # @!attribute [rw] multi_az
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
    # @!attribute [rw] auth_token_last_modified_date
    #   The date the auth token was last modified
    #   @return [Time]
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
    #   Amazon VPC using redis version `3.2.6`, `4.x` or later.
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
    #   Amazon VPC using redis version `3.2.6`, `4.x` or later.
    #
    #   Default: `false`
    #   @return [Boolean]
    #
    # @!attribute [rw] kms_key_id
    #   The ID of the KMS key used to encrypt the disk in the cluster.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN (Amazon Resource Name) of the replication group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/ReplicationGroup AWS API Documentation
    #
    class ReplicationGroup < Struct.new(
      :replication_group_id,
      :description,
      :global_replication_group_info,
      :status,
      :pending_modified_values,
      :member_clusters,
      :node_groups,
      :snapshotting_cluster_id,
      :automatic_failover,
      :multi_az,
      :configuration_endpoint,
      :snapshot_retention_limit,
      :snapshot_window,
      :cluster_enabled,
      :cache_node_type,
      :auth_token_enabled,
      :auth_token_last_modified_date,
      :transit_encryption_enabled,
      :at_rest_encryption_enabled,
      :kms_key_id,
      :arn)
      include Aws::Structure
    end

    # The specified replication group already exists.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/ReplicationGroupAlreadyExistsFault AWS API Documentation
    #
    class ReplicationGroupAlreadyExistsFault < Aws::EmptyStructure; end

    # The targeted replication group is not available.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/ReplicationGroupAlreadyUnderMigrationFault AWS API Documentation
    #
    class ReplicationGroupAlreadyUnderMigrationFault < Aws::EmptyStructure; end

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

    # The specified replication group does not exist.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/ReplicationGroupNotFoundFault AWS API Documentation
    #
    class ReplicationGroupNotFoundFault < Aws::EmptyStructure; end

    # The designated replication group is not available for data migration.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/ReplicationGroupNotUnderMigrationFault AWS API Documentation
    #
    class ReplicationGroupNotUnderMigrationFault < Aws::EmptyStructure; end

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
    #   * Redis (cluster mode disabled): T1 node types.
    #
    #   * Redis (cluster mode enabled): T1 node types.
    #   @return [String]
    #
    # @!attribute [rw] resharding
    #   The status of an online resharding operation.
    #   @return [Types::ReshardingStatus]
    #
    # @!attribute [rw] auth_token_status
    #   The auth token status
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/ReplicationGroupPendingModifiedValues AWS API Documentation
    #
    class ReplicationGroupPendingModifiedValues < Struct.new(
      :primary_cluster_id,
      :automatic_failover_status,
      :resharding,
      :auth_token_status)
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
    #       **M5 node types:** `cache.m5.large`, `cache.m5.xlarge`,
    #       `cache.m5.2xlarge`, `cache.m5.4xlarge`, `cache.m5.12xlarge`,
    #       `cache.m5.24xlarge`
    #
    #       **M4 node types:** `cache.m4.large`, `cache.m4.xlarge`,
    #       `cache.m4.2xlarge`, `cache.m4.4xlarge`, `cache.m4.10xlarge`
    #
    #       **T3 node types:** `cache.t3.micro`, `cache.t3.small`,
    #       `cache.t3.medium`
    #
    #       **T2 node types:** `cache.t2.micro`, `cache.t2.small`,
    #       `cache.t2.medium`
    #
    #     * Previous generation: (not recommended)
    #
    #       **T1 node types:** `cache.t1.micro`
    #
    #       **M1 node types:** `cache.m1.small`, `cache.m1.medium`,
    #       `cache.m1.large`, `cache.m1.xlarge`
    #
    #       **M3 node types:** `cache.m3.medium`, `cache.m3.large`,
    #       `cache.m3.xlarge`, `cache.m3.2xlarge`
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
    #       **R5 node types:** `cache.r5.large`, `cache.r5.xlarge`,
    #       `cache.r5.2xlarge`, `cache.r5.4xlarge`, `cache.r5.12xlarge`,
    #       `cache.r5.24xlarge`
    #
    #       **R4 node types:** `cache.r4.large`, `cache.r4.xlarge`,
    #       `cache.r4.2xlarge`, `cache.r4.4xlarge`, `cache.r4.8xlarge`,
    #       `cache.r4.16xlarge`
    #
    #     * Previous generation: (not recommended)
    #
    #       **M2 node types:** `cache.m2.xlarge`, `cache.m2.2xlarge`,
    #       `cache.m2.4xlarge`
    #
    #       **R3 node types:** `cache.r3.large`, `cache.r3.xlarge`,
    #       `cache.r3.2xlarge`, `cache.r3.4xlarge`, `cache.r3.8xlarge`
    #
    #   **Additional node type info**
    #
    #   * All current generation instance types are created in Amazon VPC by
    #     default.
    #
    #   * Redis append-only files (AOF) are not supported for T1 or T2
    #     instances.
    #
    #   * Redis Multi-AZ with automatic failover is not supported on T1
    #     instances.
    #
    #   * Redis configuration variables `appendonly` and `appendfsync` are
    #     not supported on Redis version 2.8.22 and later.
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

    # You already have a reservation with the given identifier.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/ReservedCacheNodeAlreadyExistsFault AWS API Documentation
    #
    class ReservedCacheNodeAlreadyExistsFault < Aws::EmptyStructure; end

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

    # The requested reserved cache node was not found.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/ReservedCacheNodeNotFoundFault AWS API Documentation
    #
    class ReservedCacheNodeNotFoundFault < Aws::EmptyStructure; end

    # The request cannot be processed because it would exceed the user's
    # cache node quota.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/ReservedCacheNodeQuotaExceededFault AWS API Documentation
    #
    class ReservedCacheNodeQuotaExceededFault < Aws::EmptyStructure; end

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
    #       **M5 node types:** `cache.m5.large`, `cache.m5.xlarge`,
    #       `cache.m5.2xlarge`, `cache.m5.4xlarge`, `cache.m5.12xlarge`,
    #       `cache.m5.24xlarge`
    #
    #       **M4 node types:** `cache.m4.large`, `cache.m4.xlarge`,
    #       `cache.m4.2xlarge`, `cache.m4.4xlarge`, `cache.m4.10xlarge`
    #
    #       **T3 node types:** `cache.t3.micro`, `cache.t3.small`,
    #       `cache.t3.medium`
    #
    #       **T2 node types:** `cache.t2.micro`, `cache.t2.small`,
    #       `cache.t2.medium`
    #
    #     * Previous generation: (not recommended)
    #
    #       **T1 node types:** `cache.t1.micro`
    #
    #       **M1 node types:** `cache.m1.small`, `cache.m1.medium`,
    #       `cache.m1.large`, `cache.m1.xlarge`
    #
    #       **M3 node types:** `cache.m3.medium`, `cache.m3.large`,
    #       `cache.m3.xlarge`, `cache.m3.2xlarge`
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
    #       **R5 node types:** `cache.r5.large`, `cache.r5.xlarge`,
    #       `cache.r5.2xlarge`, `cache.r5.4xlarge`, `cache.r5.12xlarge`,
    #       `cache.r5.24xlarge`
    #
    #       **R4 node types:** `cache.r4.large`, `cache.r4.xlarge`,
    #       `cache.r4.2xlarge`, `cache.r4.4xlarge`, `cache.r4.8xlarge`,
    #       `cache.r4.16xlarge`
    #
    #     * Previous generation: (not recommended)
    #
    #       **M2 node types:** `cache.m2.xlarge`, `cache.m2.2xlarge`,
    #       `cache.m2.4xlarge`
    #
    #       **R3 node types:** `cache.r3.large`, `cache.r3.xlarge`,
    #       `cache.r3.2xlarge`, `cache.r3.4xlarge`, `cache.r3.8xlarge`
    #
    #   **Additional node type info**
    #
    #   * All current generation instance types are created in Amazon VPC by
    #     default.
    #
    #   * Redis append-only files (AOF) are not supported for T1 or T2
    #     instances.
    #
    #   * Redis Multi-AZ with automatic failover is not supported on T1
    #     instances.
    #
    #   * Redis configuration variables `appendonly` and `appendfsync` are
    #     not supported on Redis version 2.8.22 and later.
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

    # The requested cache node offering does not exist.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/ReservedCacheNodesOfferingNotFoundFault AWS API Documentation
    #
    class ReservedCacheNodesOfferingNotFoundFault < Aws::EmptyStructure; end

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
    #   Either the ElastiCache for Redis supplied 4-digit id or a user
    #   supplied id for the node group these configuration values apply to.
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

    # The specified service linked role (SLR) was not found.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/ServiceLinkedRoleNotFoundFault AWS API Documentation
    #
    class ServiceLinkedRoleNotFoundFault < Aws::EmptyStructure; end

    # An update that you can apply to your Redis clusters.
    #
    # @!attribute [rw] service_update_name
    #   The unique ID of the service update
    #   @return [String]
    #
    # @!attribute [rw] service_update_release_date
    #   The date when the service update is initially available
    #   @return [Time]
    #
    # @!attribute [rw] service_update_end_date
    #   The date after which the service update is no longer available
    #   @return [Time]
    #
    # @!attribute [rw] service_update_severity
    #   The severity of the service update
    #   @return [String]
    #
    # @!attribute [rw] service_update_recommended_apply_by_date
    #   The recommendend date to apply the service update in order to ensure
    #   compliance. For information on compliance, see [Self-Service
    #   Security Updates for Compliance][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/elasticache-compliance.html#elasticache-compliance-self-service
    #   @return [Time]
    #
    # @!attribute [rw] service_update_status
    #   The status of the service update
    #   @return [String]
    #
    # @!attribute [rw] service_update_description
    #   Provides details of the service update
    #   @return [String]
    #
    # @!attribute [rw] service_update_type
    #   Reflects the nature of the service update
    #   @return [String]
    #
    # @!attribute [rw] engine
    #   The Elasticache engine to which the update applies. Either Redis or
    #   Memcached
    #   @return [String]
    #
    # @!attribute [rw] engine_version
    #   The Elasticache engine version to which the update applies. Either
    #   Redis or Memcached engine version
    #   @return [String]
    #
    # @!attribute [rw] auto_update_after_recommended_apply_by_date
    #   Indicates whether the service update will be automatically applied
    #   once the recommended apply-by date has expired.
    #   @return [Boolean]
    #
    # @!attribute [rw] estimated_update_time
    #   The estimated length of time the service update will take
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/ServiceUpdate AWS API Documentation
    #
    class ServiceUpdate < Struct.new(
      :service_update_name,
      :service_update_release_date,
      :service_update_end_date,
      :service_update_severity,
      :service_update_recommended_apply_by_date,
      :service_update_status,
      :service_update_description,
      :service_update_type,
      :engine,
      :engine_version,
      :auto_update_after_recommended_apply_by_date,
      :estimated_update_time)
      include Aws::Structure
    end

    # The service update doesn't exist
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/ServiceUpdateNotFoundFault AWS API Documentation
    #
    class ServiceUpdateNotFoundFault < Aws::EmptyStructure; end

    # @!attribute [rw] marker
    #   An optional marker returned from a prior request. Use this marker
    #   for pagination of results from this operation. If this parameter is
    #   specified, the response includes only records beyond the marker, up
    #   to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @!attribute [rw] service_updates
    #   A list of service updates
    #   @return [Array<Types::ServiceUpdate>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/ServiceUpdatesMessage AWS API Documentation
    #
    class ServiceUpdatesMessage < Struct.new(
      :marker,
      :service_updates)
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
    #       **M5 node types:** `cache.m5.large`, `cache.m5.xlarge`,
    #       `cache.m5.2xlarge`, `cache.m5.4xlarge`, `cache.m5.12xlarge`,
    #       `cache.m5.24xlarge`
    #
    #       **M4 node types:** `cache.m4.large`, `cache.m4.xlarge`,
    #       `cache.m4.2xlarge`, `cache.m4.4xlarge`, `cache.m4.10xlarge`
    #
    #       **T3 node types:** `cache.t3.micro`, `cache.t3.small`,
    #       `cache.t3.medium`
    #
    #       **T2 node types:** `cache.t2.micro`, `cache.t2.small`,
    #       `cache.t2.medium`
    #
    #     * Previous generation: (not recommended)
    #
    #       **T1 node types:** `cache.t1.micro`
    #
    #       **M1 node types:** `cache.m1.small`, `cache.m1.medium`,
    #       `cache.m1.large`, `cache.m1.xlarge`
    #
    #       **M3 node types:** `cache.m3.medium`, `cache.m3.large`,
    #       `cache.m3.xlarge`, `cache.m3.2xlarge`
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
    #       **R5 node types:** `cache.r5.large`, `cache.r5.xlarge`,
    #       `cache.r5.2xlarge`, `cache.r5.4xlarge`, `cache.r5.12xlarge`,
    #       `cache.r5.24xlarge`
    #
    #       **R4 node types:** `cache.r4.large`, `cache.r4.xlarge`,
    #       `cache.r4.2xlarge`, `cache.r4.4xlarge`, `cache.r4.8xlarge`,
    #       `cache.r4.16xlarge`
    #
    #     * Previous generation: (not recommended)
    #
    #       **M2 node types:** `cache.m2.xlarge`, `cache.m2.2xlarge`,
    #       `cache.m2.4xlarge`
    #
    #       **R3 node types:** `cache.r3.large`, `cache.r3.xlarge`,
    #       `cache.r3.2xlarge`, `cache.r3.4xlarge`, `cache.r3.8xlarge`
    #
    #   **Additional node type info**
    #
    #   * All current generation instance types are created in Amazon VPC by
    #     default.
    #
    #   * Redis append-only files (AOF) are not supported for T1 or T2
    #     instances.
    #
    #   * Redis Multi-AZ with automatic failover is not supported on T1
    #     instances.
    #
    #   * Redis configuration variables `appendonly` and `appendfsync` are
    #     not supported on Redis version 2.8.22 and later.
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
    #   * Redis (cluster mode disabled): T1 node types.
    #
    #   * Redis (cluster mode enabled): T1 node types.
    #   @return [String]
    #
    # @!attribute [rw] node_snapshots
    #   A list of the cache nodes in the source cluster.
    #   @return [Array<Types::NodeSnapshot>]
    #
    # @!attribute [rw] kms_key_id
    #   The ID of the KMS key used to encrypt the snapshot.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN (Amazon Resource Name) of the snapshot.
    #   @return [String]
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
      :node_snapshots,
      :kms_key_id,
      :arn)
      include Aws::Structure
    end

    # You already have a snapshot with the given name.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/SnapshotAlreadyExistsFault AWS API Documentation
    #
    class SnapshotAlreadyExistsFault < Aws::EmptyStructure; end

    # You attempted one of the following operations:
    #
    # * Creating a snapshot of a Redis cluster running on a `cache.t1.micro`
    #   cache node.
    #
    # * Creating a snapshot of a cluster that is running Memcached rather
    #   than Redis.
    #
    # Neither of these are supported by ElastiCache.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/SnapshotFeatureNotSupportedFault AWS API Documentation
    #
    class SnapshotFeatureNotSupportedFault < Aws::EmptyStructure; end

    # The requested snapshot name does not refer to an existing snapshot.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/SnapshotNotFoundFault AWS API Documentation
    #
    class SnapshotNotFoundFault < Aws::EmptyStructure; end

    # The request cannot be processed because it would exceed the maximum
    # number of snapshots.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/SnapshotQuotaExceededFault AWS API Documentation
    #
    class SnapshotQuotaExceededFault < Aws::EmptyStructure; end

    # @note When making an API call, you may pass StartMigrationMessage
    #   data as a hash:
    #
    #       {
    #         replication_group_id: "String", # required
    #         customer_node_endpoint_list: [ # required
    #           {
    #             address: "String",
    #             port: 1,
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] replication_group_id
    #   The ID of the replication group to which data should be migrated.
    #   @return [String]
    #
    # @!attribute [rw] customer_node_endpoint_list
    #   List of endpoints from which data should be migrated. For Redis
    #   (cluster mode disabled), list should have only one element.
    #   @return [Array<Types::CustomerNodeEndpoint>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/StartMigrationMessage AWS API Documentation
    #
    class StartMigrationMessage < Struct.new(
      :replication_group_id,
      :customer_node_endpoint_list)
      include Aws::Structure
    end

    # @!attribute [rw] replication_group
    #   Contains all of the attributes of a specific Redis replication
    #   group.
    #   @return [Types::ReplicationGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/StartMigrationResponse AWS API Documentation
    #
    class StartMigrationResponse < Struct.new(
      :replication_group)
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

    # The requested subnet is being used by another cache subnet group.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/SubnetInUse AWS API Documentation
    #
    class SubnetInUse < Aws::EmptyStructure; end

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

    # The requested tag was not found on this resource.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/TagNotFoundFault AWS API Documentation
    #
    class TagNotFoundFault < Aws::EmptyStructure; end

    # The request cannot be processed because it would cause the resource to
    # have more than the allowed number of tags. The maximum number of tags
    # permitted on a resource is 50.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/TagQuotaPerResourceExceeded AWS API Documentation
    #
    class TagQuotaPerResourceExceeded < Aws::EmptyStructure; end

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

    # The `TestFailover` action is not available.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/TestFailoverNotAvailableFault AWS API Documentation
    #
    class TestFailoverNotAvailableFault < Aws::EmptyStructure; end

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

    # Filters update actions from the service updates that are in available
    # status during the time range.
    #
    # @note When making an API call, you may pass TimeRangeFilter
    #   data as a hash:
    #
    #       {
    #         start_time: Time.now,
    #         end_time: Time.now,
    #       }
    #
    # @!attribute [rw] start_time
    #   The start time of the time range filter
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The end time of the time range filter
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/TimeRangeFilter AWS API Documentation
    #
    class TimeRangeFilter < Struct.new(
      :start_time,
      :end_time)
      include Aws::Structure
    end

    # Update action that has failed to be processed for the corresponding
    # apply/stop request
    #
    # @!attribute [rw] replication_group_id
    #   The replication group ID
    #   @return [String]
    #
    # @!attribute [rw] cache_cluster_id
    #   The ID of the cache cluster
    #   @return [String]
    #
    # @!attribute [rw] service_update_name
    #   The unique ID of the service update
    #   @return [String]
    #
    # @!attribute [rw] error_type
    #   The error type for requests that are not processed
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   The error message that describes the reason the request was not
    #   processed
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/UnprocessedUpdateAction AWS API Documentation
    #
    class UnprocessedUpdateAction < Struct.new(
      :replication_group_id,
      :cache_cluster_id,
      :service_update_name,
      :error_type,
      :error_message)
      include Aws::Structure
    end

    # The status of the service update for a specific replication group
    #
    # @!attribute [rw] replication_group_id
    #   The ID of the replication group
    #   @return [String]
    #
    # @!attribute [rw] cache_cluster_id
    #   The ID of the cache cluster
    #   @return [String]
    #
    # @!attribute [rw] service_update_name
    #   The unique ID of the service update
    #   @return [String]
    #
    # @!attribute [rw] service_update_release_date
    #   The date the update is first available
    #   @return [Time]
    #
    # @!attribute [rw] service_update_severity
    #   The severity of the service update
    #   @return [String]
    #
    # @!attribute [rw] service_update_status
    #   The status of the service update
    #   @return [String]
    #
    # @!attribute [rw] service_update_recommended_apply_by_date
    #   The recommended date to apply the service update to ensure
    #   compliance. For information on compliance, see [Self-Service
    #   Security Updates for Compliance][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/elasticache-compliance.html#elasticache-compliance-self-service
    #   @return [Time]
    #
    # @!attribute [rw] service_update_type
    #   Reflects the nature of the service update
    #   @return [String]
    #
    # @!attribute [rw] update_action_available_date
    #   The date that the service update is available to a replication group
    #   @return [Time]
    #
    # @!attribute [rw] update_action_status
    #   The status of the update action
    #   @return [String]
    #
    # @!attribute [rw] nodes_updated
    #   The progress of the service update on the replication group
    #   @return [String]
    #
    # @!attribute [rw] update_action_status_modified_date
    #   The date when the UpdateActionStatus was last modified
    #   @return [Time]
    #
    # @!attribute [rw] sla_met
    #   If yes, all nodes in the replication group have been updated by the
    #   recommended apply-by date. If no, at least one node in the
    #   replication group have not been updated by the recommended apply-by
    #   date. If N/A, the replication group was created after the
    #   recommended apply-by date.
    #   @return [String]
    #
    # @!attribute [rw] node_group_update_status
    #   The status of the service update on the node group
    #   @return [Array<Types::NodeGroupUpdateStatus>]
    #
    # @!attribute [rw] cache_node_update_status
    #   The status of the service update on the cache node
    #   @return [Array<Types::CacheNodeUpdateStatus>]
    #
    # @!attribute [rw] estimated_update_time
    #   The estimated length of time for the update to complete
    #   @return [String]
    #
    # @!attribute [rw] engine
    #   The Elasticache engine to which the update applies. Either Redis or
    #   Memcached
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/UpdateAction AWS API Documentation
    #
    class UpdateAction < Struct.new(
      :replication_group_id,
      :cache_cluster_id,
      :service_update_name,
      :service_update_release_date,
      :service_update_severity,
      :service_update_status,
      :service_update_recommended_apply_by_date,
      :service_update_type,
      :update_action_available_date,
      :update_action_status,
      :nodes_updated,
      :update_action_status_modified_date,
      :sla_met,
      :node_group_update_status,
      :cache_node_update_status,
      :estimated_update_time,
      :engine)
      include Aws::Structure
    end

    # @!attribute [rw] processed_update_actions
    #   Update actions that have been processed successfully
    #   @return [Array<Types::ProcessedUpdateAction>]
    #
    # @!attribute [rw] unprocessed_update_actions
    #   Update actions that haven't been processed successfully
    #   @return [Array<Types::UnprocessedUpdateAction>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/UpdateActionResultsMessage AWS API Documentation
    #
    class UpdateActionResultsMessage < Struct.new(
      :processed_update_actions,
      :unprocessed_update_actions)
      include Aws::Structure
    end

    # @!attribute [rw] marker
    #   An optional marker returned from a prior request. Use this marker
    #   for pagination of results from this operation. If this parameter is
    #   specified, the response includes only records beyond the marker, up
    #   to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @!attribute [rw] update_actions
    #   Returns a list of update actions
    #   @return [Array<Types::UpdateAction>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/UpdateActionsMessage AWS API Documentation
    #
    class UpdateActionsMessage < Struct.new(
      :marker,
      :update_actions)
      include Aws::Structure
    end

  end
end
