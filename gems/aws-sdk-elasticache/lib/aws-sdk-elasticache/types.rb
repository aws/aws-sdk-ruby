# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing for info on making contributions:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws
  module ElastiCache
    module Types

      # Represents the input of an *AddTagsToResource* action.
      # @note When making an API call, pass AddTagsToResourceMessage
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
      # @!attribute [rw] resource_name
      #   The Amazon Resource Name (ARN) of the resource to which the tags are
      #   to be added, for example
      #   `arn:aws:elasticache:us-west-2:0123456789:cluster:myCluster` or
      #   `arn:aws:elasticache:us-west-2:0123456789:snapshot:mySnapshot`.
      #
      #   For more information on ARNs, go to [Amazon Resource Names (ARNs)
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
      class AddTagsToResourceMessage < Struct.new(
        :resource_name,
        :tags)
        include Aws::Structure
      end

      # Represents the allowed node types you can use to modify your cache
      # cluster or replication group.
      # @!attribute [rw] scale_up_modifications
      #   A string list, each element of which specifies a cache node type
      #   which you can use to scale your cache cluster or replication group.
      #
      #   When scaling up a Redis cluster or replication group using
      #   `ModifyCacheCluster` or `ModifyReplicationGroup`, use a value from
      #   this list for the *CacheNodeType* parameter.
      #   @return [Array<String>]
      class AllowedNodeTypeModificationsMessage < Struct.new(
        :scale_up_modifications)
        include Aws::Structure
      end

      # Represents the input of an *AuthorizeCacheSecurityGroupIngress*
      # action.
      # @note When making an API call, pass AuthorizeCacheSecurityGroupIngressMessage
      #   data as a hash:
      #
      #       {
      #         cache_security_group_name: "String", # required
      #         ec2_security_group_name: "String", # required
      #         ec2_security_group_owner_id: "String", # required
      #       }
      # @!attribute [rw] cache_security_group_name
      #   The cache security group which will allow network ingress.
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
      class AuthorizeCacheSecurityGroupIngressMessage < Struct.new(
        :cache_security_group_name,
        :ec2_security_group_name,
        :ec2_security_group_owner_id)
        include Aws::Structure
      end

      # @!attribute [rw] cache_security_group
      #   Represents the output of one of the following actions:
      #
      #   * *AuthorizeCacheSecurityGroupIngress*
      #
      #   * *CreateCacheSecurityGroup*
      #
      #   * *RevokeCacheSecurityGroupIngress*
      #   @return [Types::CacheSecurityGroup]
      class AuthorizeCacheSecurityGroupIngressResult < Struct.new(
        :cache_security_group)
        include Aws::Structure
      end

      # Describes an Availability Zone in which the cache cluster is launched.
      # @!attribute [rw] name
      #   The name of the Availability Zone.
      #   @return [String]
      class AvailabilityZone < Struct.new(
        :name)
        include Aws::Structure
      end

      # Contains all of the attributes of a specific cache cluster.
      # @!attribute [rw] cache_cluster_id
      #   The user-supplied identifier of the cache cluster. This identifier
      #   is a unique key that identifies a cache cluster.
      #   @return [String]
      #
      # @!attribute [rw] configuration_endpoint
      #   Represents the information required for client programs to connect
      #   to a cache node.
      #   @return [Types::Endpoint]
      #
      # @!attribute [rw] client_download_landing_page
      #   The URL of the web page where you can download the latest
      #   ElastiCache client library.
      #   @return [String]
      #
      # @!attribute [rw] cache_node_type
      #   The name of the compute and memory capacity node type for the cache
      #   cluster.
      #
      #   Valid node types are as follows:
      #
      #   * General purpose:
      #
      #     * Current generation: `cache.t2.micro`, `cache.t2.small`,
      #       `cache.t2.medium`, `cache.m3.medium`, `cache.m3.large`,
      #       `cache.m3.xlarge`, `cache.m3.2xlarge`
      #
      #     * Previous generation: `cache.t1.micro`, `cache.m1.small`,
      #       `cache.m1.medium`, `cache.m1.large`, `cache.m1.xlarge`
      #
      #   * Compute optimized: `cache.c1.xlarge`
      #
      #   * Memory optimized:
      #
      #     * Current generation: `cache.r3.large`, `cache.r3.xlarge`,
      #       `cache.r3.2xlarge`, `cache.r3.4xlarge`, `cache.r3.8xlarge`
      #
      #     * Previous generation: `cache.m2.xlarge`, `cache.m2.2xlarge`,
      #       `cache.m2.4xlarge`
      #
      #   **Notes:**
      #
      #   * All t2 instances are created in an Amazon Virtual Private Cloud
      #     (VPC).
      #
      #   * Redis backup/restore is not supported for t2 instances.
      #
      #   * Redis Append-only files (AOF) functionality is not supported for
      #     t1 or t2 instances.
      #
      #   For a complete listing of cache node types and specifications, see
      #   [Amazon ElastiCache Product Features and Details][1] and [Cache Node
      #   Type-Specific Parameters for Memcached][2] or [Cache Node
      #   Type-Specific Parameters for Redis][3].
      #
      #
      #
      #   [1]: http://aws.amazon.com/elasticache/details
      #   [2]: http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/CacheParameterGroups.Memcached.html#CacheParameterGroups.Memcached.NodeSpecific
      #   [3]: http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/CacheParameterGroups.Redis.html#CacheParameterGroups.Redis.NodeSpecific
      #   @return [String]
      #
      # @!attribute [rw] engine
      #   The name of the cache engine (*memcached* or *redis*) to be used for
      #   this cache cluster.
      #   @return [String]
      #
      # @!attribute [rw] engine_version
      #   The version of the cache engine that is used in this cache cluster.
      #   @return [String]
      #
      # @!attribute [rw] cache_cluster_status
      #   The current state of this cache cluster, one of the following
      #   values: *available*, *creating*, *deleted*, *deleting*,
      #   *incompatible-network*, *modifying*, *rebooting cache cluster
      #   nodes*, *restore-failed*, or *snapshotting*.
      #   @return [String]
      #
      # @!attribute [rw] num_cache_nodes
      #   The number of cache nodes in the cache cluster.
      #
      #   For clusters running Redis, this value must be 1. For clusters
      #   running Memcached, this value must be between 1 and 20.
      #   @return [Integer]
      #
      # @!attribute [rw] preferred_availability_zone
      #   The name of the Availability Zone in which the cache cluster is
      #   located or \"Multiple\" if the cache nodes are located in different
      #   Availability Zones.
      #   @return [String]
      #
      # @!attribute [rw] cache_cluster_create_time
      #   The date and time when the cache cluster was created.
      #   @return [Time]
      #
      # @!attribute [rw] preferred_maintenance_window
      #   Specifies the weekly time range during which maintenance on the
      #   cache cluster is performed. It is specified as a range in the format
      #   ddd:hh24:mi-ddd:hh24:mi (24H Clock UTC). The minimum maintenance
      #   window is a 60 minute period. Valid values for `ddd` are:
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
      #   Example: `sun:05:00-sun:09:00`
      #   @return [String]
      #
      # @!attribute [rw] pending_modified_values
      #   A group of settings that will be applied to the cache cluster in the
      #   future, or that are currently being applied.
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
      #   The status of the cache parameter group.
      #   @return [Types::CacheParameterGroupStatus]
      #
      # @!attribute [rw] cache_subnet_group_name
      #   The name of the cache subnet group associated with the cache
      #   cluster.
      #   @return [String]
      #
      # @!attribute [rw] cache_nodes
      #   A list of cache nodes that are members of the cache cluster.
      #   @return [Array<Types::CacheNode>]
      #
      # @!attribute [rw] auto_minor_version_upgrade
      #   This parameter is currently disabled.
      #   @return [Boolean]
      #
      # @!attribute [rw] security_groups
      #   A list of VPC Security Groups associated with the cache cluster.
      #   @return [Array<Types::SecurityGroupMembership>]
      #
      # @!attribute [rw] replication_group_id
      #   The replication group to which this cache cluster belongs. If this
      #   field is empty, the cache cluster is not associated with any
      #   replication group.
      #   @return [String]
      #
      # @!attribute [rw] snapshot_retention_limit
      #   The number of days for which ElastiCache will retain automatic cache
      #   cluster snapshots before deleting them. For example, if you set
      #   *SnapshotRetentionLimit* to 5, then a snapshot that was taken today
      #   will be retained for 5 days before being deleted.
      #
      #   <important markdown="1"> If the value of SnapshotRetentionLimit is set to zero (0), backups
      #   are turned off.
      #
      #    </important>
      #   @return [Integer]
      #
      # @!attribute [rw] snapshot_window
      #   The daily time range (in UTC) during which ElastiCache will begin
      #   taking a daily snapshot of your cache cluster.
      #
      #   Example: `05:00-09:00`
      #   @return [String]
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
        :snapshot_window)
        include Aws::Structure
      end

      # Represents the output of a *DescribeCacheClusters* action.
      # @!attribute [rw] marker
      #   Provides an identifier to allow retrieval of paginated results.
      #   @return [String]
      #
      # @!attribute [rw] cache_clusters
      #   A list of cache clusters. Each item in the list contains detailed
      #   information about one cache cluster.
      #   @return [Array<Types::CacheCluster>]
      class CacheClusterMessage < Struct.new(
        :marker,
        :cache_clusters)
        include Aws::Structure
      end

      # Provides all of the details about a particular cache engine version.
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
      #   @return [String]
      #
      # @!attribute [rw] cache_engine_description
      #   The description of the cache engine.
      #   @return [String]
      #
      # @!attribute [rw] cache_engine_version_description
      #   The description of the cache engine version.
      #   @return [String]
      class CacheEngineVersion < Struct.new(
        :engine,
        :engine_version,
        :cache_parameter_group_family,
        :cache_engine_description,
        :cache_engine_version_description)
        include Aws::Structure
      end

      # Represents the output of a DescribeCacheEngineVersions action.
      # @!attribute [rw] marker
      #   Provides an identifier to allow retrieval of paginated results.
      #   @return [String]
      #
      # @!attribute [rw] cache_engine_versions
      #   A list of cache engine version details. Each element in the list
      #   contains detailed information about one cache engine version.
      #   @return [Array<Types::CacheEngineVersion>]
      class CacheEngineVersionMessage < Struct.new(
        :marker,
        :cache_engine_versions)
        include Aws::Structure
      end

      # Represents an individual cache node within a cache cluster. Each cache
      # node runs its own instance of the cluster\'s protocol-compliant
      # caching software - either Memcached or Redis.
      #
      # Valid node types are as follows:
      #
      # * General purpose:
      #
      #   * Current generation: `cache.t2.micro`, `cache.t2.small`,
      #     `cache.t2.medium`, `cache.m3.medium`, `cache.m3.large`,
      #     `cache.m3.xlarge`, `cache.m3.2xlarge`
      #
      #   * Previous generation: `cache.t1.micro`, `cache.m1.small`,
      #     `cache.m1.medium`, `cache.m1.large`, `cache.m1.xlarge`
      #
      # * Compute optimized: `cache.c1.xlarge`
      #
      # * Memory optimized:
      #
      #   * Current generation: `cache.r3.large`, `cache.r3.xlarge`,
      #     `cache.r3.2xlarge`, `cache.r3.4xlarge`, `cache.r3.8xlarge`
      #
      #   * Previous generation: `cache.m2.xlarge`, `cache.m2.2xlarge`,
      #     `cache.m2.4xlarge`
      #
      # **Notes:**
      #
      # * All t2 instances are created in an Amazon Virtual Private Cloud
      #   (VPC).
      #
      # * Redis backup/restore is not supported for t2 instances.
      #
      # * Redis Append-only files (AOF) functionality is not supported for t1
      #   or t2 instances.
      #
      # For a complete listing of cache node types and specifications, see
      # [Amazon ElastiCache Product Features and Details][1] and either [Cache
      # Node Type-Specific Parameters for Memcached][2] or [Cache Node
      # Type-Specific Parameters for Redis][3].
      #
      #
      #
      # [1]: http://aws.amazon.com/elasticache/details
      # [2]: http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/CacheParameterGroups.Memcached.html#CacheParameterGroups.Memcached.NodeSpecific
      # [3]: http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/CacheParameterGroups.Redis.html#CacheParameterGroups.Redis.NodeSpecific
      # @!attribute [rw] cache_node_id
      #   The cache node identifier. A node ID is a numeric identifier (0001,
      #   0002, etc.). The combination of cluster ID and node ID uniquely
      #   identifies every cache node used in a customer\'s AWS account.
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
      #   synchronized. If this field is empty, then this node is not
      #   associated with a primary cache cluster.
      #   @return [String]
      #
      # @!attribute [rw] customer_availability_zone
      #   The Availability Zone where this node was created and now resides.
      #   @return [String]
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
      # applied to. For example, in a Redis cache cluster, a *cache.m1.large*
      # cache node type would have a larger *maxmemory* value than a
      # *cache.m1.small* type.
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
      #   ChangeType indicates whether a change to the parameter will be
      #   applied immediately or requires a reboot for the change to be
      #   applied. You can force a reboot or wait until the next maintenance
      #   window\'s reboot. For more information, see [Rebooting a
      #   Cluster][1].
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/Clusters.Rebooting.html
      #   @return [String]
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
      # @!attribute [rw] cache_node_type
      #   The cache node type for which this value applies.
      #   @return [String]
      #
      # @!attribute [rw] value
      #   The value for the cache node type.
      #   @return [String]
      class CacheNodeTypeSpecificValue < Struct.new(
        :cache_node_type,
        :value)
        include Aws::Structure
      end

      # Represents the output of a *CreateCacheParameterGroup* action.
      # @!attribute [rw] cache_parameter_group_name
      #   The name of the cache parameter group.
      #   @return [String]
      #
      # @!attribute [rw] cache_parameter_group_family
      #   The name of the cache parameter group family that this cache
      #   parameter group is compatible with.
      #   @return [String]
      #
      # @!attribute [rw] description
      #   The description for this cache parameter group.
      #   @return [String]
      class CacheParameterGroup < Struct.new(
        :cache_parameter_group_name,
        :cache_parameter_group_family,
        :description)
        include Aws::Structure
      end

      # Represents the output of a *DescribeCacheParameters* action.
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
      class CacheParameterGroupDetails < Struct.new(
        :marker,
        :parameters,
        :cache_node_type_specific_parameters)
        include Aws::Structure
      end

      # Represents the output of one of the following actions:
      #
      # * *ModifyCacheParameterGroup*
      #
      # * *ResetCacheParameterGroup*
      # @!attribute [rw] cache_parameter_group_name
      #   The name of the cache parameter group.
      #   @return [String]
      class CacheParameterGroupNameMessage < Struct.new(
        :cache_parameter_group_name)
        include Aws::Structure
      end

      # The status of the cache parameter group.
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
      class CacheParameterGroupStatus < Struct.new(
        :cache_parameter_group_name,
        :parameter_apply_status,
        :cache_node_ids_to_reboot)
        include Aws::Structure
      end

      # Represents the output of a *DescribeCacheParameterGroups* action.
      # @!attribute [rw] marker
      #   Provides an identifier to allow retrieval of paginated results.
      #   @return [String]
      #
      # @!attribute [rw] cache_parameter_groups
      #   A list of cache parameter groups. Each element in the list contains
      #   detailed information about one cache parameter group.
      #   @return [Array<Types::CacheParameterGroup>]
      class CacheParameterGroupsMessage < Struct.new(
        :marker,
        :cache_parameter_groups)
        include Aws::Structure
      end

      # Represents the output of one of the following actions:
      #
      # * *AuthorizeCacheSecurityGroupIngress*
      #
      # * *CreateCacheSecurityGroup*
      #
      # * *RevokeCacheSecurityGroupIngress*
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
      class CacheSecurityGroup < Struct.new(
        :owner_id,
        :cache_security_group_name,
        :description,
        :ec2_security_groups)
        include Aws::Structure
      end

      # Represents a cache cluster\'s status within a particular cache
      # security group.
      # @!attribute [rw] cache_security_group_name
      #   The name of the cache security group.
      #   @return [String]
      #
      # @!attribute [rw] status
      #   The membership status in the cache security group. The status
      #   changes when a cache security group is modified, or when the cache
      #   security groups assigned to a cache cluster are modified.
      #   @return [String]
      class CacheSecurityGroupMembership < Struct.new(
        :cache_security_group_name,
        :status)
        include Aws::Structure
      end

      # Represents the output of a *DescribeCacheSecurityGroups* action.
      # @!attribute [rw] marker
      #   Provides an identifier to allow retrieval of paginated results.
      #   @return [String]
      #
      # @!attribute [rw] cache_security_groups
      #   A list of cache security groups. Each element in the list contains
      #   detailed information about one group.
      #   @return [Array<Types::CacheSecurityGroup>]
      class CacheSecurityGroupMessage < Struct.new(
        :marker,
        :cache_security_groups)
        include Aws::Structure
      end

      # Represents the output of one of the following actions:
      #
      # * *CreateCacheSubnetGroup*
      #
      # * *ModifyCacheSubnetGroup*
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
      class CacheSubnetGroup < Struct.new(
        :cache_subnet_group_name,
        :cache_subnet_group_description,
        :vpc_id,
        :subnets)
        include Aws::Structure
      end

      # Represents the output of a *DescribeCacheSubnetGroups* action.
      # @!attribute [rw] marker
      #   Provides an identifier to allow retrieval of paginated results.
      #   @return [String]
      #
      # @!attribute [rw] cache_subnet_groups
      #   A list of cache subnet groups. Each element in the list contains
      #   detailed information about one group.
      #   @return [Array<Types::CacheSubnetGroup>]
      class CacheSubnetGroupMessage < Struct.new(
        :marker,
        :cache_subnet_groups)
        include Aws::Structure
      end

      # Represents the input of a *CopySnapshotMessage* action.
      # @note When making an API call, pass CopySnapshotMessage
      #   data as a hash:
      #
      #       {
      #         source_snapshot_name: "String", # required
      #         target_snapshot_name: "String", # required
      #         target_bucket: "String",
      #       }
      # @!attribute [rw] source_snapshot_name
      #   The name of an existing snapshot from which to make a copy.
      #   @return [String]
      #
      # @!attribute [rw] target_snapshot_name
      #   A name for the snapshot copy. ElastiCache does not permit
      #   overwriting a snapshot, therefore this name must be unique within
      #   its context - ElastiCache or an Amazon S3 bucket if exporting.
      #
      #   **Error Message**
      #   {: .title}
      #
      #   * **Error Message:** The S3 bucket %s already contains an object
      #     with key %s.
      #
      #     **Solution:** Give the *TargetSnapshotName* a new and unique
      #     value. If exporting a snapshot, you could alternatively create a
      #     new Amazon S3 bucket and use this same value for
      #     *TargetSnapshotName*.
      #   @return [String]
      #
      # @!attribute [rw] target_bucket
      #   The Amazon S3 bucket to which the snapshot will be exported. This
      #   parameter is used only when exporting a snapshot for external
      #   access.
      #
      #   When using this parameter to export a snapshot, be sure Amazon
      #   ElastiCache has the needed permissions to this S3 bucket. For more
      #   information, see [Step 2: Grant ElastiCache Access to Your Amazon S3
      #   Bucket][1] in the *Amazon ElastiCache User Guide*.
      #
      #   **Error Messages:**
      #
      #   You could receive one of the following error messages.
      #
      #   **Erorr Messages**
      #   {: .title}
      #
      #   * <b>Error Message: </b> ElastiCache has not been granted READ
      #     permissions %s on the S3 Bucket.
      #
      #     **Solution:** Add List and Read permissions on the bucket.
      #
      #   * <b>Error Message: </b> ElastiCache has not been granted WRITE
      #     permissions %s on the S3 Bucket.
      #
      #     **Solution:** Add Upload/Delete permissions on the bucket.
      #
      #   * <b>Error Message: </b> ElastiCache has not been granted READ\_ACP
      #     permissions %s on the S3 Bucket.
      #
      #     **Solution:** Add View Permissions permissions on the bucket.
      #
      #   * **Error Message:** The S3 bucket %s is outside of the region.
      #
      #     **Solution:** Before exporting your snapshot, create a new Amazon
      #     S3 bucket in the same region as your snapshot. For more
      #     information, see [Step 1: Create an Amazon S3 Bucket][2].
      #
      #   * **Error Message:** The S3 bucket %s does not exist.
      #
      #     **Solution:** Create an Amazon S3 bucket in the same region as
      #     your snapshot. For more information, see [Step 1: Create an Amazon
      #     S3 Bucket][2].
      #
      #   * **Error Message:** The S3 bucket %s is not owned by the
      #     authenticated user.
      #
      #     **Solution:** Create an Amazon S3 bucket in the same region as
      #     your snapshot. For more information, see [Step 1: Create an Amazon
      #     S3 Bucket][2].
      #
      #   * **Error Message:** The authenticated user does not have sufficient
      #     permissions to perform the desired activity.
      #
      #     **Solution:** Contact your system administrator to get the needed
      #     permissions.
      #
      #   For more information, see [Exporting a Snapshot][3] in the *Amazon
      #   ElastiCache User Guide*.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/AmazonElastiCache/AmazonElastiCache/latest/UserGuide/Snapshots.Exporting.html#Snapshots.Exporting.GrantAccess
      #   [2]: http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/Snapshots.Exporting.html#Snapshots.Exporting.CreateBucket
      #   [3]: http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/Snapshots.Exporting.html
      #   @return [String]
      class CopySnapshotMessage < Struct.new(
        :source_snapshot_name,
        :target_snapshot_name,
        :target_bucket)
        include Aws::Structure
      end

      # @!attribute [rw] snapshot
      #   Represents a copy of an entire cache cluster as of the time when the
      #   snapshot was taken.
      #   @return [Types::Snapshot]
      class CopySnapshotResult < Struct.new(
        :snapshot)
        include Aws::Structure
      end

      # Represents the input of a *CreateCacheCluster* action.
      # @note When making an API call, pass CreateCacheClusterMessage
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
      #       }
      # @!attribute [rw] cache_cluster_id
      #   The node group identifier. This parameter is stored as a lowercase
      #   string.
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
      #   The ID of the replication group to which this cache cluster should
      #   belong. If this parameter is specified, the cache cluster will be
      #   added to the specified replication group as a read replica;
      #   otherwise, the cache cluster will be a standalone primary that is
      #   not part of any replication group.
      #
      #   If the specified replication group is Multi-AZ enabled and the
      #   availability zone is not specified, the cache cluster will be
      #   created in availability zones that provide the best spread of read
      #   replicas across availability zones.
      #
      #   <note markdown="1"> This parameter is only valid if the `Engine` parameter is `redis`.
      #
      #    </note>
      #   @return [String]
      #
      # @!attribute [rw] az_mode
      #   Specifies whether the nodes in this Memcached node group are created
      #   in a single Availability Zone or created across multiple
      #   Availability Zones in the cluster\'s region.
      #
      #   This parameter is only supported for Memcached cache clusters.
      #
      #   If the `AZMode` and `PreferredAvailabilityZones` are not specified,
      #   ElastiCache assumes `single-az` mode.
      #   @return [String]
      #
      # @!attribute [rw] preferred_availability_zone
      #   The EC2 Availability Zone in which the cache cluster will be
      #   created.
      #
      #   All nodes belonging to this Memcached cache cluster are placed in
      #   the preferred Availability Zone. If you want to create your nodes
      #   across multiple Availability Zones, use
      #   `PreferredAvailabilityZones`.
      #
      #   Default: System chosen Availability Zone.
      #   @return [String]
      #
      # @!attribute [rw] preferred_availability_zones
      #   A list of the Availability Zones in which cache nodes will be
      #   created. The order of the zones in the list is not important.
      #
      #   This option is only supported on Memcached.
      #
      #   <note markdown="1"> If you are creating your cache cluster in an Amazon VPC
      #   (recommended) you can only locate nodes in Availability Zones that
      #   are associated with the subnets in the selected subnet group.
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
      #
      #   Example: One Memcached node in each of three different Availability
      #   Zones:
      #   `PreferredAvailabilityZones.member.1=us-west-2a&amp;PreferredAvailabilityZones.member.2=us-west-2b&amp;PreferredAvailabilityZones.member.3=us-west-2c`
      #
      #   Example: All three Memcached nodes in one Availability Zone:
      #   `PreferredAvailabilityZones.member.1=us-west-2a&amp;PreferredAvailabilityZones.member.2=us-west-2a&amp;PreferredAvailabilityZones.member.3=us-west-2a`
      #   @return [Array<String>]
      #
      # @!attribute [rw] num_cache_nodes
      #   The initial number of cache nodes that the cache cluster will have.
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
      #   The compute and memory capacity of the nodes in the node group.
      #
      #   Valid node types are as follows:
      #
      #   * General purpose:
      #
      #     * Current generation: `cache.t2.micro`, `cache.t2.small`,
      #       `cache.t2.medium`, `cache.m3.medium`, `cache.m3.large`,
      #       `cache.m3.xlarge`, `cache.m3.2xlarge`
      #
      #     * Previous generation: `cache.t1.micro`, `cache.m1.small`,
      #       `cache.m1.medium`, `cache.m1.large`, `cache.m1.xlarge`
      #
      #   * Compute optimized: `cache.c1.xlarge`
      #
      #   * Memory optimized:
      #
      #     * Current generation: `cache.r3.large`, `cache.r3.xlarge`,
      #       `cache.r3.2xlarge`, `cache.r3.4xlarge`, `cache.r3.8xlarge`
      #
      #     * Previous generation: `cache.m2.xlarge`, `cache.m2.2xlarge`,
      #       `cache.m2.4xlarge`
      #
      #   **Notes:**
      #
      #   * All t2 instances are created in an Amazon Virtual Private Cloud
      #     (VPC).
      #
      #   * Redis backup/restore is not supported for t2 instances.
      #
      #   * Redis Append-only files (AOF) functionality is not supported for
      #     t1 or t2 instances.
      #
      #   For a complete listing of cache node types and specifications, see
      #   [Amazon ElastiCache Product Features and Details][1] and [Cache Node
      #   Type-Specific Parameters for Memcached][2] or [Cache Node
      #   Type-Specific Parameters for Redis][3].
      #
      #
      #
      #   [1]: http://aws.amazon.com/elasticache/details
      #   [2]: http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/CacheParameterGroups.Memcached.html#CacheParameterGroups.Memcached.NodeSpecific
      #   [3]: http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/CacheParameterGroups.Redis.html#CacheParameterGroups.Redis.NodeSpecific
      #   @return [String]
      #
      # @!attribute [rw] engine
      #   The name of the cache engine to be used for this cache cluster.
      #
      #   Valid values for this parameter are:
      #
      #   `memcached` \| `redis`
      #   @return [String]
      #
      # @!attribute [rw] engine_version
      #   The version number of the cache engine to be used for this cache
      #   cluster. To view the supported cache engine versions, use the
      #   *DescribeCacheEngineVersions* action.
      #
      #   **Important:** You can upgrade to a newer engine version (see
      #   [Selecting a Cache Engine and Version][1]), but you cannot downgrade
      #   to an earlier engine version. If you want to use an earlier engine
      #   version, you must delete the existing cache cluster or replication
      #   group and create it anew with the earlier engine version.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/SelectEngine.html#VersionManagement
      #   @return [String]
      #
      # @!attribute [rw] cache_parameter_group_name
      #   The name of the parameter group to associate with this cache
      #   cluster. If this argument is omitted, the default parameter group
      #   for the specified engine is used.
      #   @return [String]
      #
      # @!attribute [rw] cache_subnet_group_name
      #   The name of the subnet group to be used for the cache cluster.
      #
      #   Use this parameter only when you are creating a cache cluster in an
      #   Amazon Virtual Private Cloud (VPC).
      #   @return [String]
      #
      # @!attribute [rw] cache_security_group_names
      #   A list of security group names to associate with this cache cluster.
      #
      #   Use this parameter only when you are creating a cache cluster
      #   outside of an Amazon Virtual Private Cloud (VPC).
      #   @return [Array<String>]
      #
      # @!attribute [rw] security_group_ids
      #   One or more VPC security groups associated with the cache cluster.
      #
      #   Use this parameter only when you are creating a cache cluster in an
      #   Amazon Virtual Private Cloud (VPC).
      #   @return [Array<String>]
      #
      # @!attribute [rw] tags
      #   A list of cost allocation tags to be added to this resource. A tag
      #   is a key-value pair. A tag key must be accompanied by a tag value.
      #   @return [Array<Types::Tag>]
      #
      # @!attribute [rw] snapshot_arns
      #   A single-element string list containing an Amazon Resource Name
      #   (ARN) that uniquely identifies a Redis RDB snapshot file stored in
      #   Amazon S3. The snapshot file will be used to populate the node
      #   group. The Amazon S3 object name in the ARN cannot contain any
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
      #   The name of a snapshot from which to restore data into the new node
      #   group. The snapshot status changes to `restoring` while the new node
      #   group is being created.
      #
      #   <note markdown="1"> This parameter is only valid if the `Engine` parameter is `redis`.
      #
      #    </note>
      #   @return [String]
      #
      # @!attribute [rw] preferred_maintenance_window
      #   Specifies the weekly time range during which maintenance on the
      #   cache cluster is performed. It is specified as a range in the format
      #   ddd:hh24:mi-ddd:hh24:mi (24H Clock UTC). The minimum maintenance
      #   window is a 60 minute period. Valid values for `ddd` are:
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
      #   Example: `sun:05:00-sun:09:00`
      #   @return [String]
      #
      # @!attribute [rw] port
      #   The port number on which each of the cache nodes will accept
      #   connections.
      #   @return [Integer]
      #
      # @!attribute [rw] notification_topic_arn
      #   The Amazon Resource Name (ARN) of the Amazon Simple Notification
      #   Service (SNS) topic to which notifications will be sent.
      #
      #   <note markdown="1"> The Amazon SNS topic owner must be the same as the cache cluster
      #   owner.
      #
      #    </note>
      #   @return [String]
      #
      # @!attribute [rw] auto_minor_version_upgrade
      #   This parameter is currently disabled.
      #   @return [Boolean]
      #
      # @!attribute [rw] snapshot_retention_limit
      #   The number of days for which ElastiCache will retain automatic
      #   snapshots before deleting them. For example, if you set
      #   `SnapshotRetentionLimit` to 5, then a snapshot that was taken today
      #   will be retained for 5 days before being deleted.
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
      #   The daily time range (in UTC) during which ElastiCache will begin
      #   taking a daily snapshot of your node group.
      #
      #   Example: `05:00-09:00`
      #
      #   If you do not specify this parameter, then ElastiCache will
      #   automatically choose an appropriate time range.
      #
      #   **Note:** This parameter is only valid if the `Engine` parameter is
      #   `redis`.
      #   @return [String]
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
        :snapshot_window)
        include Aws::Structure
      end

      # @!attribute [rw] cache_cluster
      #   Contains all of the attributes of a specific cache cluster.
      #   @return [Types::CacheCluster]
      class CreateCacheClusterResult < Struct.new(
        :cache_cluster)
        include Aws::Structure
      end

      # Represents the input of a *CreateCacheParameterGroup* action.
      # @note When making an API call, pass CreateCacheParameterGroupMessage
      #   data as a hash:
      #
      #       {
      #         cache_parameter_group_name: "String", # required
      #         cache_parameter_group_family: "String", # required
      #         description: "String", # required
      #       }
      # @!attribute [rw] cache_parameter_group_name
      #   A user-specified name for the cache parameter group.
      #   @return [String]
      #
      # @!attribute [rw] cache_parameter_group_family
      #   The name of the cache parameter group family the cache parameter
      #   group can be used with.
      #
      #   Valid values are: `memcached1.4` \| `redis2.6` \| `redis2.8`
      #   @return [String]
      #
      # @!attribute [rw] description
      #   A user-specified description for the cache parameter group.
      #   @return [String]
      class CreateCacheParameterGroupMessage < Struct.new(
        :cache_parameter_group_name,
        :cache_parameter_group_family,
        :description)
        include Aws::Structure
      end

      # @!attribute [rw] cache_parameter_group
      #   Represents the output of a *CreateCacheParameterGroup* action.
      #   @return [Types::CacheParameterGroup]
      class CreateCacheParameterGroupResult < Struct.new(
        :cache_parameter_group)
        include Aws::Structure
      end

      # Represents the input of a *CreateCacheSecurityGroup* action.
      # @note When making an API call, pass CreateCacheSecurityGroupMessage
      #   data as a hash:
      #
      #       {
      #         cache_security_group_name: "String", # required
      #         description: "String", # required
      #       }
      # @!attribute [rw] cache_security_group_name
      #   A name for the cache security group. This value is stored as a
      #   lowercase string.
      #
      #   Constraints: Must contain no more than 255 alphanumeric characters.
      #   Cannot be the word \"Default\".
      #
      #   Example: `mysecuritygroup`
      #   @return [String]
      #
      # @!attribute [rw] description
      #   A description for the cache security group.
      #   @return [String]
      class CreateCacheSecurityGroupMessage < Struct.new(
        :cache_security_group_name,
        :description)
        include Aws::Structure
      end

      # @!attribute [rw] cache_security_group
      #   Represents the output of one of the following actions:
      #
      #   * *AuthorizeCacheSecurityGroupIngress*
      #
      #   * *CreateCacheSecurityGroup*
      #
      #   * *RevokeCacheSecurityGroupIngress*
      #   @return [Types::CacheSecurityGroup]
      class CreateCacheSecurityGroupResult < Struct.new(
        :cache_security_group)
        include Aws::Structure
      end

      # Represents the input of a *CreateCacheSubnetGroup* action.
      # @note When making an API call, pass CreateCacheSubnetGroupMessage
      #   data as a hash:
      #
      #       {
      #         cache_subnet_group_name: "String", # required
      #         cache_subnet_group_description: "String", # required
      #         subnet_ids: ["String"], # required
      #       }
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
      class CreateCacheSubnetGroupMessage < Struct.new(
        :cache_subnet_group_name,
        :cache_subnet_group_description,
        :subnet_ids)
        include Aws::Structure
      end

      # @!attribute [rw] cache_subnet_group
      #   Represents the output of one of the following actions:
      #
      #   * *CreateCacheSubnetGroup*
      #
      #   * *ModifyCacheSubnetGroup*
      #   @return [Types::CacheSubnetGroup]
      class CreateCacheSubnetGroupResult < Struct.new(
        :cache_subnet_group)
        include Aws::Structure
      end

      # Represents the input of a *CreateReplicationGroup* action.
      # @note When making an API call, pass CreateReplicationGroupMessage
      #   data as a hash:
      #
      #       {
      #         replication_group_id: "String", # required
      #         replication_group_description: "String", # required
      #         primary_cluster_id: "String",
      #         automatic_failover_enabled: false,
      #         num_cache_clusters: 1,
      #         preferred_cache_cluster_a_zs: ["String"],
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
      #       }
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
      #   The identifier of the cache cluster that will serve as the primary
      #   for this replication group. This cache cluster must already exist
      #   and have a status of *available*.
      #
      #   This parameter is not required if *NumCacheClusters* is specified.
      #   @return [String]
      #
      # @!attribute [rw] automatic_failover_enabled
      #   Specifies whether a read-only replica will be automatically promoted
      #   to read/write primary if the existing primary fails.
      #
      #   If `true`, Multi-AZ is enabled for this replication group. If
      #   `false`, Multi-AZ is disabled for this replication group.
      #
      #   Default: false
      #
      #   <note markdown="1"> ElastiCache Multi-AZ replication groups is not supported on:
      #
      #    * Redis versions earlier than 2.8.6.
      #
      #   * T1 and T2 cache node types.
      #
      #    </note>
      #   @return [Boolean]
      #
      # @!attribute [rw] num_cache_clusters
      #   The number of cache clusters this replication group will initially
      #   have.
      #
      #   If *Multi-AZ* is `enabled`, the value of this parameter must be at
      #   least 2.
      #
      #   The maximum permitted value for *NumCacheClusters* is 6 (primary
      #   plus 5 replicas). If you need to exceed this limit, please fill out
      #   the ElastiCache Limit Increase Request form at
      #   [http://aws.amazon.com/contact-us/elasticache-node-limit-request][1].
      #
      #
      #
      #   [1]: http://aws.amazon.com/contact-us/elasticache-node-limit-request
      #   @return [Integer]
      #
      # @!attribute [rw] preferred_cache_cluster_a_zs
      #   A list of EC2 availability zones in which the replication group\'s
      #   cache clusters will be created. The order of the availability zones
      #   in the list is not important.
      #
      #   <note markdown="1"> If you are creating your replication group in an Amazon VPC
      #   (recommended), you can only locate cache clusters in availability
      #   zones associated with the subnets in the selected subnet group.
      #
      #    The number of availability zones listed must equal the value of
      #   *NumCacheClusters*.
      #
      #    </note>
      #
      #   Default: system chosen availability zones.
      #
      #   Example: One Redis cache cluster in each of three availability
      #   zones.
      #
      #   `PreferredAvailabilityZones.member.1=us-west-2a
      #   PreferredAvailabilityZones.member.2=us-west-2c
      #   PreferredAvailabilityZones.member.3=us-west-2c`
      #   @return [Array<String>]
      #
      # @!attribute [rw] cache_node_type
      #   The compute and memory capacity of the nodes in the node group.
      #
      #   Valid node types are as follows:
      #
      #   * General purpose:
      #
      #     * Current generation: `cache.t2.micro`, `cache.t2.small`,
      #       `cache.t2.medium`, `cache.m3.medium`, `cache.m3.large`,
      #       `cache.m3.xlarge`, `cache.m3.2xlarge`
      #
      #     * Previous generation: `cache.t1.micro`, `cache.m1.small`,
      #       `cache.m1.medium`, `cache.m1.large`, `cache.m1.xlarge`
      #
      #   * Compute optimized: `cache.c1.xlarge`
      #
      #   * Memory optimized:
      #
      #     * Current generation: `cache.r3.large`, `cache.r3.xlarge`,
      #       `cache.r3.2xlarge`, `cache.r3.4xlarge`, `cache.r3.8xlarge`
      #
      #     * Previous generation: `cache.m2.xlarge`, `cache.m2.2xlarge`,
      #       `cache.m2.4xlarge`
      #
      #   **Notes:**
      #
      #   * All t2 instances are created in an Amazon Virtual Private Cloud
      #     (VPC).
      #
      #   * Redis backup/restore is not supported for t2 instances.
      #
      #   * Redis Append-only files (AOF) functionality is not supported for
      #     t1 or t2 instances.
      #
      #   For a complete listing of cache node types and specifications, see
      #   [Amazon ElastiCache Product Features and Details][1] and [Cache Node
      #   Type-Specific Parameters for Memcached][2] or [Cache Node
      #   Type-Specific Parameters for Redis][3].
      #
      #
      #
      #   [1]: http://aws.amazon.com/elasticache/details
      #   [2]: http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/CacheParameterGroups.Memcached.html#CacheParameterGroups.Memcached.NodeSpecific
      #   [3]: http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/CacheParameterGroups.Redis.html#CacheParameterGroups.Redis.NodeSpecific
      #   @return [String]
      #
      # @!attribute [rw] engine
      #   The name of the cache engine to be used for the cache clusters in
      #   this replication group.
      #
      #   Default: redis
      #   @return [String]
      #
      # @!attribute [rw] engine_version
      #   The version number of the cache engine to be used for the cache
      #   clusters in this replication group. To view the supported cache
      #   engine versions, use the *DescribeCacheEngineVersions* action.
      #
      #   **Important:** You can upgrade to a newer engine version (see
      #   [Selecting a Cache Engine and Version][1]) in the *ElastiCache User
      #   Guide*, but you cannot downgrade to an earlier engine version. If
      #   you want to use an earlier engine version, you must delete the
      #   existing cache cluster or replication group and create it anew with
      #   the earlier engine version.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/SelectEngine.html#VersionManagement
      #   @return [String]
      #
      # @!attribute [rw] cache_parameter_group_name
      #   The name of the parameter group to associate with this replication
      #   group. If this argument is omitted, the default cache parameter
      #   group for the specified engine is used.
      #   @return [String]
      #
      # @!attribute [rw] cache_subnet_group_name
      #   The name of the cache subnet group to be used for the replication
      #   group.
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
      #   an Amazon Virtual Private Cloud (VPC).
      #   @return [Array<String>]
      #
      # @!attribute [rw] tags
      #   A list of cost allocation tags to be added to this resource. A tag
      #   is a key-value pair. A tag key must be accompanied by a tag value.
      #   @return [Array<Types::Tag>]
      #
      # @!attribute [rw] snapshot_arns
      #   A single-element string list containing an Amazon Resource Name
      #   (ARN) that uniquely identifies a Redis RDB snapshot file stored in
      #   Amazon S3. The snapshot file will be used to populate the node
      #   group. The Amazon S3 object name in the ARN cannot contain any
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
      #   The name of a snapshot from which to restore data into the new node
      #   group. The snapshot status changes to `restoring` while the new node
      #   group is being created.
      #
      #   <note markdown="1"> This parameter is only valid if the `Engine` parameter is `redis`.
      #
      #    </note>
      #   @return [String]
      #
      # @!attribute [rw] preferred_maintenance_window
      #   Specifies the weekly time range during which maintenance on the
      #   cache cluster is performed. It is specified as a range in the format
      #   ddd:hh24:mi-ddd:hh24:mi (24H Clock UTC). The minimum maintenance
      #   window is a 60 minute period. Valid values for `ddd` are:
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
      #   Example: `sun:05:00-sun:09:00`
      #   @return [String]
      #
      # @!attribute [rw] port
      #   The port number on which each member of the replication group will
      #   accept connections.
      #   @return [Integer]
      #
      # @!attribute [rw] notification_topic_arn
      #   The Amazon Resource Name (ARN) of the Amazon Simple Notification
      #   Service (SNS) topic to which notifications will be sent.
      #
      #   <note markdown="1"> The Amazon SNS topic owner must be the same as the cache cluster
      #   owner.
      #
      #    </note>
      #   @return [String]
      #
      # @!attribute [rw] auto_minor_version_upgrade
      #   This parameter is currently disabled.
      #   @return [Boolean]
      #
      # @!attribute [rw] snapshot_retention_limit
      #   The number of days for which ElastiCache will retain automatic
      #   snapshots before deleting them. For example, if you set
      #   `SnapshotRetentionLimit` to 5, then a snapshot that was taken today
      #   will be retained for 5 days before being deleted.
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
      #   The daily time range (in UTC) during which ElastiCache will begin
      #   taking a daily snapshot of your node group.
      #
      #   Example: `05:00-09:00`
      #
      #   If you do not specify this parameter, then ElastiCache will
      #   automatically choose an appropriate time range.
      #
      #   <note markdown="1"> This parameter is only valid if the `Engine` parameter is `redis`.
      #
      #    </note>
      #   @return [String]
      class CreateReplicationGroupMessage < Struct.new(
        :replication_group_id,
        :replication_group_description,
        :primary_cluster_id,
        :automatic_failover_enabled,
        :num_cache_clusters,
        :preferred_cache_cluster_a_zs,
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
        :snapshot_window)
        include Aws::Structure
      end

      # @!attribute [rw] replication_group
      #   Contains all of the attributes of a specific replication group.
      #   @return [Types::ReplicationGroup]
      class CreateReplicationGroupResult < Struct.new(
        :replication_group)
        include Aws::Structure
      end

      # Represents the input of a *CreateSnapshot* action.
      # @note When making an API call, pass CreateSnapshotMessage
      #   data as a hash:
      #
      #       {
      #         cache_cluster_id: "String", # required
      #         snapshot_name: "String", # required
      #       }
      # @!attribute [rw] cache_cluster_id
      #   The identifier of an existing cache cluster. The snapshot will be
      #   created from this cache cluster.
      #   @return [String]
      #
      # @!attribute [rw] snapshot_name
      #   A name for the snapshot being created.
      #   @return [String]
      class CreateSnapshotMessage < Struct.new(
        :cache_cluster_id,
        :snapshot_name)
        include Aws::Structure
      end

      # @!attribute [rw] snapshot
      #   Represents a copy of an entire cache cluster as of the time when the
      #   snapshot was taken.
      #   @return [Types::Snapshot]
      class CreateSnapshotResult < Struct.new(
        :snapshot)
        include Aws::Structure
      end

      # Represents the input of a *DeleteCacheCluster* action.
      # @note When making an API call, pass DeleteCacheClusterMessage
      #   data as a hash:
      #
      #       {
      #         cache_cluster_id: "String", # required
      #         final_snapshot_identifier: "String",
      #       }
      # @!attribute [rw] cache_cluster_id
      #   The cache cluster identifier for the cluster to be deleted. This
      #   parameter is not case sensitive.
      #   @return [String]
      #
      # @!attribute [rw] final_snapshot_identifier
      #   The user-supplied name of a final cache cluster snapshot. This is
      #   the unique name that identifies the snapshot. ElastiCache creates
      #   the snapshot, and then deletes the cache cluster immediately
      #   afterward.
      #   @return [String]
      class DeleteCacheClusterMessage < Struct.new(
        :cache_cluster_id,
        :final_snapshot_identifier)
        include Aws::Structure
      end

      # @!attribute [rw] cache_cluster
      #   Contains all of the attributes of a specific cache cluster.
      #   @return [Types::CacheCluster]
      class DeleteCacheClusterResult < Struct.new(
        :cache_cluster)
        include Aws::Structure
      end

      # Represents the input of a *DeleteCacheParameterGroup* action.
      # @note When making an API call, pass DeleteCacheParameterGroupMessage
      #   data as a hash:
      #
      #       {
      #         cache_parameter_group_name: "String", # required
      #       }
      # @!attribute [rw] cache_parameter_group_name
      #   The name of the cache parameter group to delete.
      #
      #   <note markdown="1"> The specified cache security group must not be associated with any
      #   cache clusters.
      #
      #    </note>
      #   @return [String]
      class DeleteCacheParameterGroupMessage < Struct.new(
        :cache_parameter_group_name)
        include Aws::Structure
      end

      # Represents the input of a *DeleteCacheSecurityGroup* action.
      # @note When making an API call, pass DeleteCacheSecurityGroupMessage
      #   data as a hash:
      #
      #       {
      #         cache_security_group_name: "String", # required
      #       }
      # @!attribute [rw] cache_security_group_name
      #   The name of the cache security group to delete.
      #
      #   <note markdown="1"> You cannot delete the default security group.
      #
      #    </note>
      #   @return [String]
      class DeleteCacheSecurityGroupMessage < Struct.new(
        :cache_security_group_name)
        include Aws::Structure
      end

      # Represents the input of a *DeleteCacheSubnetGroup* action.
      # @note When making an API call, pass DeleteCacheSubnetGroupMessage
      #   data as a hash:
      #
      #       {
      #         cache_subnet_group_name: "String", # required
      #       }
      # @!attribute [rw] cache_subnet_group_name
      #   The name of the cache subnet group to delete.
      #
      #   Constraints: Must contain no more than 255 alphanumeric characters
      #   or hyphens.
      #   @return [String]
      class DeleteCacheSubnetGroupMessage < Struct.new(
        :cache_subnet_group_name)
        include Aws::Structure
      end

      # Represents the input of a *DeleteReplicationGroup* action.
      # @note When making an API call, pass DeleteReplicationGroupMessage
      #   data as a hash:
      #
      #       {
      #         replication_group_id: "String", # required
      #         retain_primary_cluster: false,
      #         final_snapshot_identifier: "String",
      #       }
      # @!attribute [rw] replication_group_id
      #   The identifier for the cluster to be deleted. This parameter is not
      #   case sensitive.
      #   @return [String]
      #
      # @!attribute [rw] retain_primary_cluster
      #   If set to *true*, all of the read replicas will be deleted, but the
      #   primary node will be retained.
      #   @return [Boolean]
      #
      # @!attribute [rw] final_snapshot_identifier
      #   The name of a final node group snapshot. ElastiCache creates the
      #   snapshot from the primary node in the cluster, rather than one of
      #   the replicas; this is to ensure that it captures the freshest data.
      #   After the final snapshot is taken, the cluster is immediately
      #   deleted.
      #   @return [String]
      class DeleteReplicationGroupMessage < Struct.new(
        :replication_group_id,
        :retain_primary_cluster,
        :final_snapshot_identifier)
        include Aws::Structure
      end

      # @!attribute [rw] replication_group
      #   Contains all of the attributes of a specific replication group.
      #   @return [Types::ReplicationGroup]
      class DeleteReplicationGroupResult < Struct.new(
        :replication_group)
        include Aws::Structure
      end

      # Represents the input of a *DeleteSnapshot* action.
      # @note When making an API call, pass DeleteSnapshotMessage
      #   data as a hash:
      #
      #       {
      #         snapshot_name: "String", # required
      #       }
      # @!attribute [rw] snapshot_name
      #   The name of the snapshot to be deleted.
      #   @return [String]
      class DeleteSnapshotMessage < Struct.new(
        :snapshot_name)
        include Aws::Structure
      end

      # @!attribute [rw] snapshot
      #   Represents a copy of an entire cache cluster as of the time when the
      #   snapshot was taken.
      #   @return [Types::Snapshot]
      class DeleteSnapshotResult < Struct.new(
        :snapshot)
        include Aws::Structure
      end

      # Represents the input of a *DescribeCacheClusters* action.
      # @note When making an API call, pass DescribeCacheClustersMessage
      #   data as a hash:
      #
      #       {
      #         cache_cluster_id: "String",
      #         max_records: 1,
      #         marker: "String",
      #         show_cache_node_info: false,
      #       }
      # @!attribute [rw] cache_cluster_id
      #   The user-supplied cluster identifier. If this parameter is
      #   specified, only information about that specific cache cluster is
      #   returned. This parameter isn\'t case sensitive.
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
      #   for pagination of results from this action. If this parameter is
      #   specified, the response includes only records beyond the marker, up
      #   to the value specified by *MaxRecords*.
      #   @return [String]
      #
      # @!attribute [rw] show_cache_node_info
      #   An optional flag that can be included in the DescribeCacheCluster
      #   request to retrieve information about the individual cache nodes.
      #   @return [Boolean]
      class DescribeCacheClustersMessage < Struct.new(
        :cache_cluster_id,
        :max_records,
        :marker,
        :show_cache_node_info)
        include Aws::Structure
      end

      # Represents the input of a *DescribeCacheEngineVersions* action.
      # @note When making an API call, pass DescribeCacheEngineVersionsMessage
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
      #   for pagination of results from this action. If this parameter is
      #   specified, the response includes only records beyond the marker, up
      #   to the value specified by *MaxRecords*.
      #   @return [String]
      #
      # @!attribute [rw] default_only
      #   If *true*, specifies that only the default version of the specified
      #   engine or engine and major version combination is to be returned.
      #   @return [Boolean]
      class DescribeCacheEngineVersionsMessage < Struct.new(
        :engine,
        :engine_version,
        :cache_parameter_group_family,
        :max_records,
        :marker,
        :default_only)
        include Aws::Structure
      end

      # Represents the input of a *DescribeCacheParameterGroups* action.
      # @note When making an API call, pass DescribeCacheParameterGroupsMessage
      #   data as a hash:
      #
      #       {
      #         cache_parameter_group_name: "String",
      #         max_records: 1,
      #         marker: "String",
      #       }
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
      #   for pagination of results from this action. If this parameter is
      #   specified, the response includes only records beyond the marker, up
      #   to the value specified by *MaxRecords*.
      #   @return [String]
      class DescribeCacheParameterGroupsMessage < Struct.new(
        :cache_parameter_group_name,
        :max_records,
        :marker)
        include Aws::Structure
      end

      # Represents the input of a *DescribeCacheParameters* action.
      # @note When making an API call, pass DescribeCacheParametersMessage
      #   data as a hash:
      #
      #       {
      #         cache_parameter_group_name: "String", # required
      #         source: "String",
      #         max_records: 1,
      #         marker: "String",
      #       }
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
      #   The maximum number of brecords to include in the response. If more
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
      #   for pagination of results from this action. If this parameter is
      #   specified, the response includes only records beyond the marker, up
      #   to the value specified by *MaxRecords*.
      #   @return [String]
      class DescribeCacheParametersMessage < Struct.new(
        :cache_parameter_group_name,
        :source,
        :max_records,
        :marker)
        include Aws::Structure
      end

      # Represents the input of a *DescribeCacheSecurityGroups* action.
      # @note When making an API call, pass DescribeCacheSecurityGroupsMessage
      #   data as a hash:
      #
      #       {
      #         cache_security_group_name: "String",
      #         max_records: 1,
      #         marker: "String",
      #       }
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
      #   for pagination of results from this action. If this parameter is
      #   specified, the response includes only records beyond the marker, up
      #   to the value specified by *MaxRecords*.
      #   @return [String]
      class DescribeCacheSecurityGroupsMessage < Struct.new(
        :cache_security_group_name,
        :max_records,
        :marker)
        include Aws::Structure
      end

      # Represents the input of a *DescribeCacheSubnetGroups* action.
      # @note When making an API call, pass DescribeCacheSubnetGroupsMessage
      #   data as a hash:
      #
      #       {
      #         cache_subnet_group_name: "String",
      #         max_records: 1,
      #         marker: "String",
      #       }
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
      #   for pagination of results from this action. If this parameter is
      #   specified, the response includes only records beyond the marker, up
      #   to the value specified by *MaxRecords*.
      #   @return [String]
      class DescribeCacheSubnetGroupsMessage < Struct.new(
        :cache_subnet_group_name,
        :max_records,
        :marker)
        include Aws::Structure
      end

      # Represents the input of a *DescribeEngineDefaultParameters* action.
      # @note When making an API call, pass DescribeEngineDefaultParametersMessage
      #   data as a hash:
      #
      #       {
      #         cache_parameter_group_family: "String", # required
      #         max_records: 1,
      #         marker: "String",
      #       }
      # @!attribute [rw] cache_parameter_group_family
      #   The name of the cache parameter group family. Valid values are:
      #   `memcached1.4` \| `redis2.6` \| `redis2.8`
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
      #   for pagination of results from this action. If this parameter is
      #   specified, the response includes only records beyond the marker, up
      #   to the value specified by *MaxRecords*.
      #   @return [String]
      class DescribeEngineDefaultParametersMessage < Struct.new(
        :cache_parameter_group_family,
        :max_records,
        :marker)
        include Aws::Structure
      end

      # @!attribute [rw] engine_defaults
      #   Represents the output of a *DescribeEngineDefaultParameters* action.
      #   @return [Types::EngineDefaults]
      class DescribeEngineDefaultParametersResult < Struct.new(
        :engine_defaults)
        include Aws::Structure
      end

      # Represents the input of a *DescribeEvents* action.
      # @note When making an API call, pass DescribeEventsMessage
      #   data as a hash:
      #
      #       {
      #         source_identifier: "String",
      #         source_type: "cache-cluster", # accepts cache-cluster, cache-parameter-group, cache-security-group, cache-subnet-group
      #         start_time: Time.now,
      #         end_time: Time.now,
      #         duration: 1,
      #         max_records: 1,
      #         marker: "String",
      #       }
      # @!attribute [rw] source_identifier
      #   The identifier of the event source for which events will be
      #   returned. If not specified, then all sources are included in the
      #   response.
      #   @return [String]
      #
      # @!attribute [rw] source_type
      #   The event source to retrieve events for. If no value is specified,
      #   all events are returned.
      #
      #   Valid values are: `cache-cluster` \| `cache-parameter-group` \|
      #   `cache-security-group` \| `cache-subnet-group`
      #   @return [String]
      #
      # @!attribute [rw] start_time
      #   The beginning of the time interval to retrieve events for, specified
      #   in ISO 8601 format.
      #   @return [Time]
      #
      # @!attribute [rw] end_time
      #   The end of the time interval for which to retrieve events, specified
      #   in ISO 8601 format.
      #   @return [Time]
      #
      # @!attribute [rw] duration
      #   The number of minutes\' worth of events to retrieve.
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
      #   for pagination of results from this action. If this parameter is
      #   specified, the response includes only records beyond the marker, up
      #   to the value specified by *MaxRecords*.
      #   @return [String]
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

      # Represents the input of a *DescribeReplicationGroups* action.
      # @note When making an API call, pass DescribeReplicationGroupsMessage
      #   data as a hash:
      #
      #       {
      #         replication_group_id: "String",
      #         max_records: 1,
      #         marker: "String",
      #       }
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
      #   for pagination of results from this action. If this parameter is
      #   specified, the response includes only records beyond the marker, up
      #   to the value specified by *MaxRecords*.
      #   @return [String]
      class DescribeReplicationGroupsMessage < Struct.new(
        :replication_group_id,
        :max_records,
        :marker)
        include Aws::Structure
      end

      # Represents the input of a *DescribeReservedCacheNodes* action.
      # @note When making an API call, pass DescribeReservedCacheNodesMessage
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
      #   Valid node types are as follows:
      #
      #   * General purpose:
      #
      #     * Current generation: `cache.t2.micro`, `cache.t2.small`,
      #       `cache.t2.medium`, `cache.m3.medium`, `cache.m3.large`,
      #       `cache.m3.xlarge`, `cache.m3.2xlarge`
      #
      #     * Previous generation: `cache.t1.micro`, `cache.m1.small`,
      #       `cache.m1.medium`, `cache.m1.large`, `cache.m1.xlarge`
      #
      #   * Compute optimized: `cache.c1.xlarge`
      #
      #   * Memory optimized:
      #
      #     * Current generation: `cache.r3.large`, `cache.r3.xlarge`,
      #       `cache.r3.2xlarge`, `cache.r3.4xlarge`, `cache.r3.8xlarge`
      #
      #     * Previous generation: `cache.m2.xlarge`, `cache.m2.2xlarge`,
      #       `cache.m2.4xlarge`
      #
      #   **Notes:**
      #
      #   * All t2 instances are created in an Amazon Virtual Private Cloud
      #     (VPC).
      #
      #   * Redis backup/restore is not supported for t2 instances.
      #
      #   * Redis Append-only files (AOF) functionality is not supported for
      #     t1 or t2 instances.
      #
      #   For a complete listing of cache node types and specifications, see
      #   [Amazon ElastiCache Product Features and Details][1] and [Cache Node
      #   Type-Specific Parameters for Memcached][2] or [Cache Node
      #   Type-Specific Parameters for Redis][3].
      #
      #
      #
      #   [1]: http://aws.amazon.com/elasticache/details
      #   [2]: http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/CacheParameterGroups.Memcached.html#CacheParameterGroups.Memcached.NodeSpecific
      #   [3]: http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/CacheParameterGroups.Redis.html#CacheParameterGroups.Redis.NodeSpecific
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
      #   for pagination of results from this action. If this parameter is
      #   specified, the response includes only records beyond the marker, up
      #   to the value specified by *MaxRecords*.
      #   @return [String]
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

      # Represents the input of a *DescribeReservedCacheNodesOfferings*
      # action.
      # @note When making an API call, pass DescribeReservedCacheNodesOfferingsMessage
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
      #   Valid node types are as follows:
      #
      #   * General purpose:
      #
      #     * Current generation: `cache.t2.micro`, `cache.t2.small`,
      #       `cache.t2.medium`, `cache.m3.medium`, `cache.m3.large`,
      #       `cache.m3.xlarge`, `cache.m3.2xlarge`
      #
      #     * Previous generation: `cache.t1.micro`, `cache.m1.small`,
      #       `cache.m1.medium`, `cache.m1.large`, `cache.m1.xlarge`
      #
      #   * Compute optimized: `cache.c1.xlarge`
      #
      #   * Memory optimized:
      #
      #     * Current generation: `cache.r3.large`, `cache.r3.xlarge`,
      #       `cache.r3.2xlarge`, `cache.r3.4xlarge`, `cache.r3.8xlarge`
      #
      #     * Previous generation: `cache.m2.xlarge`, `cache.m2.2xlarge`,
      #       `cache.m2.4xlarge`
      #
      #   **Notes:**
      #
      #   * All t2 instances are created in an Amazon Virtual Private Cloud
      #     (VPC).
      #
      #   * Redis backup/restore is not supported for t2 instances.
      #
      #   * Redis Append-only files (AOF) functionality is not supported for
      #     t1 or t2 instances.
      #
      #   For a complete listing of cache node types and specifications, see
      #   [Amazon ElastiCache Product Features and Details][1] and [Cache Node
      #   Type-Specific Parameters for Memcached][2] or [Cache Node
      #   Type-Specific Parameters for Redis][3].
      #
      #
      #
      #   [1]: http://aws.amazon.com/elasticache/details
      #   [2]: http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/CacheParameterGroups.Memcached.html#CacheParameterGroups.Memcached.NodeSpecific
      #   [3]: http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/CacheParameterGroups.Redis.html#CacheParameterGroups.Redis.NodeSpecific
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
      #   for pagination of results from this action. If this parameter is
      #   specified, the response includes only records beyond the marker, up
      #   to the value specified by *MaxRecords*.
      #   @return [String]
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

      # Represents the output of a *DescribeSnapshots* action.
      # @!attribute [rw] marker
      #   An optional marker returned from a prior request. Use this marker
      #   for pagination of results from this action. If this parameter is
      #   specified, the response includes only records beyond the marker, up
      #   to the value specified by *MaxRecords*.
      #   @return [String]
      #
      # @!attribute [rw] snapshots
      #   A list of snapshots. Each item in the list contains detailed
      #   information about one snapshot.
      #   @return [Array<Types::Snapshot>]
      class DescribeSnapshotsListMessage < Struct.new(
        :marker,
        :snapshots)
        include Aws::Structure
      end

      # Represents the input of a *DescribeSnapshotsMessage* action.
      # @note When making an API call, pass DescribeSnapshotsMessage
      #   data as a hash:
      #
      #       {
      #         cache_cluster_id: "String",
      #         snapshot_name: "String",
      #         snapshot_source: "String",
      #         marker: "String",
      #         max_records: 1,
      #       }
      # @!attribute [rw] cache_cluster_id
      #   A user-supplied cluster identifier. If this parameter is specified,
      #   only snapshots associated with that specific cache cluster will be
      #   described.
      #   @return [String]
      #
      # @!attribute [rw] snapshot_name
      #   A user-supplied name of the snapshot. If this parameter is
      #   specified, only this snapshot will be described.
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
      #   for pagination of results from this action. If this parameter is
      #   specified, the response includes only records beyond the marker, up
      #   to the value specified by *MaxRecords*.
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
      class DescribeSnapshotsMessage < Struct.new(
        :cache_cluster_id,
        :snapshot_name,
        :snapshot_source,
        :marker,
        :max_records)
        include Aws::Structure
      end

      # Provides ownership and status information for an Amazon EC2 security
      # group.
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
      class EC2SecurityGroup < Struct.new(
        :status,
        :ec2_security_group_name,
        :ec2_security_group_owner_id)
        include Aws::Structure
      end

      # Represents the information required for client programs to connect to
      # a cache node.
      # @!attribute [rw] address
      #   The DNS hostname of the cache node.
      #   @return [String]
      #
      # @!attribute [rw] port
      #   The port number that the cache engine is listening on.
      #   @return [Integer]
      class Endpoint < Struct.new(
        :address,
        :port)
        include Aws::Structure
      end

      # Represents the output of a *DescribeEngineDefaultParameters* action.
      # @!attribute [rw] cache_parameter_group_family
      #   Specifies the name of the cache parameter group family to which the
      #   engine default parameters apply.
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
      class EngineDefaults < Struct.new(
        :cache_parameter_group_family,
        :marker,
        :parameters,
        :cache_node_type_specific_parameters)
        include Aws::Structure
      end

      # Represents a single occurrence of something interesting within the
      # system. Some examples of events are creating a cache cluster, adding
      # or removing a cache node, or rebooting a node.
      # @!attribute [rw] source_identifier
      #   The identifier for the source of the event. For example, if the
      #   event occurred at the cache cluster level, the identifier would be
      #   the name of the cache cluster.
      #   @return [String]
      #
      # @!attribute [rw] source_type
      #   Specifies the origin of this event - a cache cluster, a parameter
      #   group, a security group, etc.
      #   @return [String]
      #
      # @!attribute [rw] message
      #   The text of the event.
      #   @return [String]
      #
      # @!attribute [rw] date
      #   The date and time when the event occurred.
      #   @return [Time]
      class Event < Struct.new(
        :source_identifier,
        :source_type,
        :message,
        :date)
        include Aws::Structure
      end

      # Represents the output of a *DescribeEvents* action.
      # @!attribute [rw] marker
      #   Provides an identifier to allow retrieval of paginated results.
      #   @return [String]
      #
      # @!attribute [rw] events
      #   A list of events. Each element in the list contains detailed
      #   information about one event.
      #   @return [Array<Types::Event>]
      class EventsMessage < Struct.new(
        :marker,
        :events)
        include Aws::Structure
      end

      # The input parameters for the *ListAllowedNodeTypeModifications*
      # action.
      # @note When making an API call, pass ListAllowedNodeTypeModificationsMessage
      #   data as a hash:
      #
      #       {
      #         cache_cluster_id: "String",
      #         replication_group_id: "String",
      #       }
      # @!attribute [rw] cache_cluster_id
      #   The name of the cache cluster you want to scale up to a larger node
      #   instanced type. ElastiCache uses the cluster id to identify the
      #   current node type of this cluster and from that to to create a list
      #   of node types you can scale up to.
      #
      #   <important markdown="1"> You must provide a value for either the *CacheClusterId* or the
      #   *ReplicationGroupId*.
      #
      #    </important>
      #   @return [String]
      #
      # @!attribute [rw] replication_group_id
      #   The name of the replication group want to scale up to a larger node
      #   type. ElastiCache uses the replication group id to identify the
      #   current node type being used by this replication group, and from
      #   that to create a list of node types you can scale up to.
      #
      #   <important markdown="1"> You must provide a value for either the *CacheClusterId* or the
      #   *ReplicationGroupId*.
      #
      #    </important>
      #   @return [String]
      class ListAllowedNodeTypeModificationsMessage < Struct.new(
        :cache_cluster_id,
        :replication_group_id)
        include Aws::Structure
      end

      # The input parameters for the *ListTagsForResource* action.
      # @note When making an API call, pass ListTagsForResourceMessage
      #   data as a hash:
      #
      #       {
      #         resource_name: "String", # required
      #       }
      # @!attribute [rw] resource_name
      #   The Amazon Resource Name (ARN) of the resource for which you want
      #   the list of tags, for example
      #   `arn:aws:elasticache:us-west-2:0123456789:cluster:myCluster` or
      #   `arn:aws:elasticache:us-west-2:0123456789:snapshot:mySnapshot`.
      #
      #   For more information on ARNs, go to [Amazon Resource Names (ARNs)
      #   and AWS Service Namespaces][1].
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
      #   @return [String]
      class ListTagsForResourceMessage < Struct.new(
        :resource_name)
        include Aws::Structure
      end

      # Represents the input of a *ModifyCacheCluster* action.
      # @note When making an API call, pass ModifyCacheClusterMessage
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
      # @!attribute [rw] cache_cluster_id
      #   The cache cluster identifier. This value is stored as a lowercase
      #   string.
      #   @return [String]
      #
      # @!attribute [rw] num_cache_nodes
      #   The number of cache nodes that the cache cluster should have. If the
      #   value for `NumCacheNodes` is greater than the sum of the number of
      #   current cache nodes and the number of cache nodes pending creation
      #   (which may be zero), then more nodes will be added. If the value is
      #   less than the number of existing cache nodes, then nodes will be
      #   removed. If the value is equal to the number of current cache nodes,
      #   then any pending add or remove requests are canceled.
      #
      #   If you are removing cache nodes, you must use the
      #   `CacheNodeIdsToRemove` parameter to provide the IDs of the specific
      #   cache nodes to remove.
      #
      #   For clusters running Redis, this value must be 1. For clusters
      #   running Memcached, this value must be between 1 and 20.
      #
      #   <note markdown="1"> Adding or removing Memcached cache nodes can be applied immediately
      #   or as a pending action. See `ApplyImmediately`.
      #
      #    A pending action to modify the number of cache nodes in a cluster
      #   during its maintenance window, whether by adding or removing nodes
      #   in accordance with the scale out architecture, is not queued. The
      #   customer\'s latest request to add or remove nodes to the cluster
      #   overrides any previous pending actions to modify the number of cache
      #   nodes in the cluster. For example, a request to remove 2 nodes would
      #   override a previous pending action to remove 3 nodes. Similarly, a
      #   request to add 2 nodes would override a previous pending action to
      #   remove 3 nodes and vice versa. As Memcached cache nodes may now be
      #   provisioned in different Availability Zones with flexible cache node
      #   placement, a request to add nodes does not automatically override a
      #   previous pending action to add nodes. The customer can modify the
      #   previous pending action to add more nodes or explicitly cancel the
      #   pending request and retry the new request. To cancel pending actions
      #   to modify the number of cache nodes in a cluster, use the
      #   `ModifyCacheCluster` request and set *NumCacheNodes* equal to the
      #   number of cache nodes currently in the cache cluster.
      #
      #    </note>
      #   @return [Integer]
      #
      # @!attribute [rw] cache_node_ids_to_remove
      #   A list of cache node IDs to be removed. A node ID is a numeric
      #   identifier (0001, 0002, etc.). This parameter is only valid when
      #   *NumCacheNodes* is less than the existing number of cache nodes. The
      #   number of cache node IDs supplied in this parameter must match the
      #   difference between the existing number of cache nodes in the cluster
      #   or pending cache nodes, whichever is greater, and the value of
      #   *NumCacheNodes* in the request.
      #
      #   For example: If you have 3 active cache nodes, 7 pending cache
      #   nodes, and the number of cache nodes in this `ModifyCacheCluser`
      #   call is 5, you must list 2 (7 - 5) cache node IDs to remove.
      #   @return [Array<String>]
      #
      # @!attribute [rw] az_mode
      #   Specifies whether the new nodes in this Memcached cache cluster are
      #   all created in a single Availability Zone or created across multiple
      #   Availability Zones.
      #
      #   Valid values: `single-az` \| `cross-az`.
      #
      #   This option is only supported for Memcached cache clusters.
      #
      #   <note markdown="1"> You cannot specify `single-az` if the Memcached cache cluster
      #   already has cache nodes in different Availability Zones. If
      #   `cross-az` is specified, existing Memcached nodes remain in their
      #   current Availability Zone.
      #
      #    Only newly created nodes will be located in different Availability
      #   Zones. For instructions on how to move existing Memcached nodes to
      #   different Availability Zones, see the **Availability Zone
      #   Considerations** section of [Cache Node Considerations for
      #   Memcached][1].
      #
      #    </note>
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/CacheNode.Memcached.html
      #   @return [String]
      #
      # @!attribute [rw] new_availability_zones
      #   The list of Availability Zones where the new Memcached cache nodes
      #   will be created.
      #
      #   This parameter is only valid when *NumCacheNodes* in the request is
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
      #   * **Scenario 3:** You want to cancel all pending actions. Specify
      #     `NumCacheNodes=3` to cancel all pending actions.
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
      #       <important markdown="1"> **Important:** If the new create request is **Apply Immediately
      #       - Yes**, all creates are performed immediately. If the new
      #       create request is **Apply Immediately - No**, all creates are
      #       pending.
      #
      #        </important>
      #
      #   Example:
      #
      #   `NewAvailabilityZones.member.1=us-west-2a&amp;NewAvailabilityZones.member.2=us-west-2b&amp;NewAvailabilityZones.member.3=us-west-2c`
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/CacheNode.Memcached.html
      #   @return [Array<String>]
      #
      # @!attribute [rw] cache_security_group_names
      #   A list of cache security group names to authorize on this cache
      #   cluster. This change is asynchronously applied as soon as possible.
      #
      #   This parameter can be used only with clusters that are created
      #   outside of an Amazon Virtual Private Cloud (VPC).
      #
      #   Constraints: Must contain no more than 255 alphanumeric characters.
      #   Must not be \"Default\".
      #   @return [Array<String>]
      #
      # @!attribute [rw] security_group_ids
      #   Specifies the VPC Security Groups associated with the cache cluster.
      #
      #   This parameter can be used only with clusters that are created in an
      #   Amazon Virtual Private Cloud (VPC).
      #   @return [Array<String>]
      #
      # @!attribute [rw] preferred_maintenance_window
      #   Specifies the weekly time range during which maintenance on the
      #   cache cluster is performed. It is specified as a range in the format
      #   ddd:hh24:mi-ddd:hh24:mi (24H Clock UTC). The minimum maintenance
      #   window is a 60 minute period. Valid values for `ddd` are:
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
      #   Example: `sun:05:00-sun:09:00`
      #   @return [String]
      #
      # @!attribute [rw] notification_topic_arn
      #   The Amazon Resource Name (ARN) of the Amazon SNS topic to which
      #   notifications will be sent.
      #
      #   <note markdown="1"> The Amazon SNS topic owner must be same as the cache cluster owner.
      #
      #    </note>
      #   @return [String]
      #
      # @!attribute [rw] cache_parameter_group_name
      #   The name of the cache parameter group to apply to this cache
      #   cluster. This change is asynchronously applied as soon as possible
      #   for parameters when the *ApplyImmediately* parameter is specified as
      #   *true* for this request.
      #   @return [String]
      #
      # @!attribute [rw] notification_topic_status
      #   The status of the Amazon SNS notification topic. Notifications are
      #   sent only if the status is *active*.
      #
      #   Valid values: `active` \| `inactive`
      #   @return [String]
      #
      # @!attribute [rw] apply_immediately
      #   If `true`, this parameter causes the modifications in this request
      #   and any pending modifications to be applied, asynchronously and as
      #   soon as possible, regardless of the *PreferredMaintenanceWindow*
      #   setting for the cache cluster.
      #
      #   If `false`, then changes to the cache cluster are applied on the
      #   next maintenance reboot, or the next failure reboot, whichever
      #   occurs first.
      #
      #   <important markdown="1"> If you perform a `ModifyCacheCluster` before a pending modification
      #   is applied, the pending modification is replaced by the newer
      #   modification.
      #
      #    </important>
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
      #   version, you must delete the existing cache cluster and create it
      #   anew with the earlier engine version.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/SelectEngine.html#VersionManagement
      #   @return [String]
      #
      # @!attribute [rw] auto_minor_version_upgrade
      #   This parameter is currently disabled.
      #   @return [Boolean]
      #
      # @!attribute [rw] snapshot_retention_limit
      #   The number of days for which ElastiCache will retain automatic cache
      #   cluster snapshots before deleting them. For example, if you set
      #   *SnapshotRetentionLimit* to 5, then a snapshot that was taken today
      #   will be retained for 5 days before being deleted.
      #
      #   <note markdown="1"> If the value of SnapshotRetentionLimit is set to zero (0), backups
      #   are turned off.
      #
      #    </note>
      #   @return [Integer]
      #
      # @!attribute [rw] snapshot_window
      #   The daily time range (in UTC) during which ElastiCache will begin
      #   taking a daily snapshot of your cache cluster.
      #   @return [String]
      #
      # @!attribute [rw] cache_node_type
      #   A valid cache node type that you want to scale this cache cluster
      #   to. The value of this parameter must be one of the
      #   *ScaleUpModifications* values returned by the
      #   `ListAllowedCacheNodeTypeModification` action.
      #   @return [String]
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
      #   Contains all of the attributes of a specific cache cluster.
      #   @return [Types::CacheCluster]
      class ModifyCacheClusterResult < Struct.new(
        :cache_cluster)
        include Aws::Structure
      end

      # Represents the input of a *ModifyCacheParameterGroup* action.
      # @note When making an API call, pass ModifyCacheParameterGroupMessage
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
      class ModifyCacheParameterGroupMessage < Struct.new(
        :cache_parameter_group_name,
        :parameter_name_values)
        include Aws::Structure
      end

      # Represents the input of a *ModifyCacheSubnetGroup* action.
      # @note When making an API call, pass ModifyCacheSubnetGroupMessage
      #   data as a hash:
      #
      #       {
      #         cache_subnet_group_name: "String", # required
      #         cache_subnet_group_description: "String",
      #         subnet_ids: ["String"],
      #       }
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
      #   A description for the cache subnet group.
      #   @return [String]
      #
      # @!attribute [rw] subnet_ids
      #   The EC2 subnet IDs for the cache subnet group.
      #   @return [Array<String>]
      class ModifyCacheSubnetGroupMessage < Struct.new(
        :cache_subnet_group_name,
        :cache_subnet_group_description,
        :subnet_ids)
        include Aws::Structure
      end

      # @!attribute [rw] cache_subnet_group
      #   Represents the output of one of the following actions:
      #
      #   * *CreateCacheSubnetGroup*
      #
      #   * *ModifyCacheSubnetGroup*
      #   @return [Types::CacheSubnetGroup]
      class ModifyCacheSubnetGroupResult < Struct.new(
        :cache_subnet_group)
        include Aws::Structure
      end

      # Represents the input of a *ModifyReplicationGroups* action.
      # @note When making an API call, pass ModifyReplicationGroupMessage
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
      #       }
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
      #   If this parameter is specified, ElastiCache will promote the
      #   specified cluster in the specified replication group to the primary
      #   role. The nodes of all other clusters in the replication group will
      #   be read replicas.
      #   @return [String]
      #
      # @!attribute [rw] snapshotting_cluster_id
      #   The cache cluster ID that will be used as the daily snapshot source
      #   for the replication group.
      #   @return [String]
      #
      # @!attribute [rw] automatic_failover_enabled
      #   Whether a read replica will be automatically promoted to read/write
      #   primary if the existing primary encounters a failure.
      #
      #   Valid values: `true` \| `false`
      #
      #   <note markdown="1"> ElastiCache Multi-AZ replication groups are not supported on:
      #
      #    * Redis versions earlier than 2.8.6.
      #
      #   * T1 and T2 cache node types.
      #
      #    </note>
      #   @return [Boolean]
      #
      # @!attribute [rw] cache_security_group_names
      #   A list of cache security group names to authorize for the clusters
      #   in this replication group. This change is asynchronously applied as
      #   soon as possible.
      #
      #   This parameter can be used only with replication group containing
      #   cache clusters running outside of an Amazon Virtual Private Cloud
      #   (VPC).
      #
      #   Constraints: Must contain no more than 255 alphanumeric characters.
      #   Must not be \"Default\".
      #   @return [Array<String>]
      #
      # @!attribute [rw] security_group_ids
      #   Specifies the VPC Security Groups associated with the cache clusters
      #   in the replication group.
      #
      #   This parameter can be used only with replication group containing
      #   cache clusters running in an Amazon Virtual Private Cloud (VPC).
      #   @return [Array<String>]
      #
      # @!attribute [rw] preferred_maintenance_window
      #   Specifies the weekly time range during which maintenance on the
      #   cache cluster is performed. It is specified as a range in the format
      #   ddd:hh24:mi-ddd:hh24:mi (24H Clock UTC). The minimum maintenance
      #   window is a 60 minute period. Valid values for `ddd` are:
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
      #   Example: `sun:05:00-sun:09:00`
      #   @return [String]
      #
      # @!attribute [rw] notification_topic_arn
      #   The Amazon Resource Name (ARN) of the Amazon SNS topic to which
      #   notifications will be sent.
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
      #   *ApplyImmediately* parameter is specified as *true* for this
      #   request.
      #   @return [String]
      #
      # @!attribute [rw] notification_topic_status
      #   The status of the Amazon SNS notification topic for the replication
      #   group. Notifications are sent only if the status is *active*.
      #
      #   Valid values: `active` \| `inactive`
      #   @return [String]
      #
      # @!attribute [rw] apply_immediately
      #   If `true`, this parameter causes the modifications in this request
      #   and any pending modifications to be applied, asynchronously and as
      #   soon as possible, regardless of the *PreferredMaintenanceWindow*
      #   setting for the replication group.
      #
      #   If `false`, then changes to the nodes in the replication group are
      #   applied on the next maintenance reboot, or the next failure reboot,
      #   whichever occurs first.
      #
      #   Valid values: `true` \| `false`
      #
      #   Default: `false`
      #   @return [Boolean]
      #
      # @!attribute [rw] engine_version
      #   The upgraded version of the cache engine to be run on the cache
      #   clusters in the replication group.
      #
      #   **Important:** You can upgrade to a newer engine version (see
      #   [Selecting a Cache Engine and Version][1]), but you cannot downgrade
      #   to an earlier engine version. If you want to use an earlier engine
      #   version, you must delete the existing replication group and create
      #   it anew with the earlier engine version.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/SelectEngine.html#VersionManagement
      #   @return [String]
      #
      # @!attribute [rw] auto_minor_version_upgrade
      #   This parameter is currently disabled.
      #   @return [Boolean]
      #
      # @!attribute [rw] snapshot_retention_limit
      #   The number of days for which ElastiCache will retain automatic node
      #   group snapshots before deleting them. For example, if you set
      #   *SnapshotRetentionLimit* to 5, then a snapshot that was taken today
      #   will be retained for 5 days before being deleted.
      #
      #   **Important** If the value of SnapshotRetentionLimit is set to zero
      #   (0), backups are turned off.
      #   @return [Integer]
      #
      # @!attribute [rw] snapshot_window
      #   The daily time range (in UTC) during which ElastiCache will begin
      #   taking a daily snapshot of the node group specified by
      #   *SnapshottingClusterId*.
      #
      #   Example: `05:00-09:00`
      #
      #   If you do not specify this parameter, then ElastiCache will
      #   automatically choose an appropriate time range.
      #   @return [String]
      #
      # @!attribute [rw] cache_node_type
      #   A valid cache node type that you want to scale this replication
      #   group to. The value of this parameter must be one of the
      #   *ScaleUpModifications* values returned by the
      #   `ListAllowedCacheNodeTypeModification` action.
      #   @return [String]
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
        :cache_node_type)
        include Aws::Structure
      end

      # @!attribute [rw] replication_group
      #   Contains all of the attributes of a specific replication group.
      #   @return [Types::ReplicationGroup]
      class ModifyReplicationGroupResult < Struct.new(
        :replication_group)
        include Aws::Structure
      end

      # Represents a collection of cache nodes in a replication group.
      # @!attribute [rw] node_group_id
      #   The identifier for the node group. A replication group contains only
      #   one node group; therefore, the node group ID is 0001.
      #   @return [String]
      #
      # @!attribute [rw] status
      #   The current state of this replication group - *creating*,
      #   *available*, etc.
      #   @return [String]
      #
      # @!attribute [rw] primary_endpoint
      #   Represents the information required for client programs to connect
      #   to a cache node.
      #   @return [Types::Endpoint]
      #
      # @!attribute [rw] node_group_members
      #   A list containing information about individual nodes within the node
      #   group.
      #   @return [Array<Types::NodeGroupMember>]
      class NodeGroup < Struct.new(
        :node_group_id,
        :status,
        :primary_endpoint,
        :node_group_members)
        include Aws::Structure
      end

      # Represents a single node within a node group.
      # @!attribute [rw] cache_cluster_id
      #   The ID of the cache cluster to which the node belongs.
      #   @return [String]
      #
      # @!attribute [rw] cache_node_id
      #   The ID of the node within its cache cluster. A node ID is a numeric
      #   identifier (0001, 0002, etc.).
      #   @return [String]
      #
      # @!attribute [rw] read_endpoint
      #   Represents the information required for client programs to connect
      #   to a cache node.
      #   @return [Types::Endpoint]
      #
      # @!attribute [rw] preferred_availability_zone
      #   The name of the Availability Zone in which the node is located.
      #   @return [String]
      #
      # @!attribute [rw] current_role
      #   The role that is currently assigned to the node - *primary* or
      #   *replica*.
      #   @return [String]
      class NodeGroupMember < Struct.new(
        :cache_cluster_id,
        :cache_node_id,
        :read_endpoint,
        :preferred_availability_zone,
        :current_role)
        include Aws::Structure
      end

      # Represents an individual cache node in a snapshot of a cache cluster.
      # @!attribute [rw] cache_node_id
      #   The cache node identifier for the node in the source cache cluster.
      #   @return [String]
      #
      # @!attribute [rw] cache_size
      #   The size of the cache on the source cache node.
      #   @return [String]
      #
      # @!attribute [rw] cache_node_create_time
      #   The date and time when the cache node was created in the source
      #   cache cluster.
      #   @return [Time]
      #
      # @!attribute [rw] snapshot_create_time
      #   The date and time when the source node\'s metadata and cache data
      #   set was obtained for the snapshot.
      #   @return [Time]
      class NodeSnapshot < Struct.new(
        :cache_node_id,
        :cache_size,
        :cache_node_create_time,
        :snapshot_create_time)
        include Aws::Structure
      end

      # Describes a notification topic and its status. Notification topics are
      # used for publishing ElastiCache events to subscribers using Amazon
      # Simple Notification Service (SNS).
      # @!attribute [rw] topic_arn
      #   The Amazon Resource Name (ARN) that identifies the topic.
      #   @return [String]
      #
      # @!attribute [rw] topic_status
      #   The current state of the topic.
      #   @return [String]
      class NotificationConfiguration < Struct.new(
        :topic_arn,
        :topic_status)
        include Aws::Structure
      end

      # Describes an individual setting that controls some aspect of
      # ElastiCache behavior.
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
      #   ChangeType indicates whether a change to the parameter will be
      #   applied immediately or requires a reboot for the change to be
      #   applied. You can force a reboot or wait until the next maintenance
      #   window\'s reboot. For more information, see [Rebooting a
      #   Cluster][1].
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/Clusters.Rebooting.html
      #   @return [String]
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
      # @note When making an API call, pass ParameterNameValue
      #   data as a hash:
      #
      #       {
      #         parameter_name: "String",
      #         parameter_value: "String",
      #       }
      # @!attribute [rw] parameter_name
      #   The name of the parameter.
      #   @return [String]
      #
      # @!attribute [rw] parameter_value
      #   The value of the parameter.
      #   @return [String]
      class ParameterNameValue < Struct.new(
        :parameter_name,
        :parameter_value)
        include Aws::Structure
      end

      # A group of settings that will be applied to the cache cluster in the
      # future, or that are currently being applied.
      # @!attribute [rw] num_cache_nodes
      #   The new number of cache nodes for the cache cluster.
      #
      #   For clusters running Redis, this value must be 1. For clusters
      #   running Memcached, this value must be between 1 and 20.
      #   @return [Integer]
      #
      # @!attribute [rw] cache_node_ids_to_remove
      #   A list of cache node IDs that are being removed (or will be removed)
      #   from the cache cluster. A node ID is a numeric identifier (0001,
      #   0002, etc.).
      #   @return [Array<String>]
      #
      # @!attribute [rw] engine_version
      #   The new cache engine version that the cache cluster will run.
      #   @return [String]
      #
      # @!attribute [rw] cache_node_type
      #   The cache node type that this cache cluster or replication group
      #   will be scaled to.
      #   @return [String]
      class PendingModifiedValues < Struct.new(
        :num_cache_nodes,
        :cache_node_ids_to_remove,
        :engine_version,
        :cache_node_type)
        include Aws::Structure
      end

      # Represents the input of a *PurchaseReservedCacheNodesOffering* action.
      # @note When making an API call, pass PurchaseReservedCacheNodesOfferingMessage
      #   data as a hash:
      #
      #       {
      #         reserved_cache_nodes_offering_id: "String", # required
      #         reserved_cache_node_id: "String",
      #         cache_node_count: 1,
      #       }
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
      class PurchaseReservedCacheNodesOfferingMessage < Struct.new(
        :reserved_cache_nodes_offering_id,
        :reserved_cache_node_id,
        :cache_node_count)
        include Aws::Structure
      end

      # @!attribute [rw] reserved_cache_node
      #   Represents the output of a *PurchaseReservedCacheNodesOffering*
      #   action.
      #   @return [Types::ReservedCacheNode]
      class PurchaseReservedCacheNodesOfferingResult < Struct.new(
        :reserved_cache_node)
        include Aws::Structure
      end

      # Represents the input of a *RebootCacheCluster* action.
      # @note When making an API call, pass RebootCacheClusterMessage
      #   data as a hash:
      #
      #       {
      #         cache_cluster_id: "String", # required
      #         cache_node_ids_to_reboot: ["String"], # required
      #       }
      # @!attribute [rw] cache_cluster_id
      #   The cache cluster identifier. This parameter is stored as a
      #   lowercase string.
      #   @return [String]
      #
      # @!attribute [rw] cache_node_ids_to_reboot
      #   A list of cache node IDs to reboot. A node ID is a numeric
      #   identifier (0001, 0002, etc.). To reboot an entire cache cluster,
      #   specify all of the cache node IDs.
      #   @return [Array<String>]
      class RebootCacheClusterMessage < Struct.new(
        :cache_cluster_id,
        :cache_node_ids_to_reboot)
        include Aws::Structure
      end

      # @!attribute [rw] cache_cluster
      #   Contains all of the attributes of a specific cache cluster.
      #   @return [Types::CacheCluster]
      class RebootCacheClusterResult < Struct.new(
        :cache_cluster)
        include Aws::Structure
      end

      # Contains the specific price and frequency of a recurring charges for a
      # reserved cache node, or for a reserved cache node offering.
      # @!attribute [rw] recurring_charge_amount
      #   The monetary amount of the recurring charge.
      #   @return [Float]
      #
      # @!attribute [rw] recurring_charge_frequency
      #   The frequency of the recurring charge.
      #   @return [String]
      class RecurringCharge < Struct.new(
        :recurring_charge_amount,
        :recurring_charge_frequency)
        include Aws::Structure
      end

      # Represents the input of a *RemoveTagsFromResource* action.
      # @note When making an API call, pass RemoveTagsFromResourceMessage
      #   data as a hash:
      #
      #       {
      #         resource_name: "String", # required
      #         tag_keys: ["String"], # required
      #       }
      # @!attribute [rw] resource_name
      #   The Amazon Resource Name (ARN) of the resource from which you want
      #   the tags removed, for example
      #   `arn:aws:elasticache:us-west-2:0123456789:cluster:myCluster` or
      #   `arn:aws:elasticache:us-west-2:0123456789:snapshot:mySnapshot`.
      #
      #   For more information on ARNs, go to [Amazon Resource Names (ARNs)
      #   and AWS Service Namespaces][1].
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
      #   @return [String]
      #
      # @!attribute [rw] tag_keys
      #   A list of `TagKeys` identifying the tags you want removed from the
      #   named resource. For example, `TagKeys.member.1=Region` removes the
      #   cost allocation tag with the key name `Region` from the resource
      #   named by the *ResourceName* parameter.
      #   @return [Array<String>]
      class RemoveTagsFromResourceMessage < Struct.new(
        :resource_name,
        :tag_keys)
        include Aws::Structure
      end

      # Contains all of the attributes of a specific replication group.
      # @!attribute [rw] replication_group_id
      #   The identifier for the replication group.
      #   @return [String]
      #
      # @!attribute [rw] description
      #   The description of the replication group.
      #   @return [String]
      #
      # @!attribute [rw] status
      #   The current state of this replication group - *creating*,
      #   *available*, etc.
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
      #   A single element list with information about the nodes in the
      #   replication group.
      #   @return [Array<Types::NodeGroup>]
      #
      # @!attribute [rw] snapshotting_cluster_id
      #   The cache cluster ID that is used as the daily snapshot source for
      #   the replication group.
      #   @return [String]
      #
      # @!attribute [rw] automatic_failover
      #   Indicates the status of Multi-AZ for this replication group.
      #
      #   <note markdown="1"> ElastiCache Multi-AZ replication groups are not supported on:
      #
      #    * Redis versions earlier than 2.8.6.
      #
      #   * T1 and T2 cache node types.
      #
      #    </note>
      #   @return [String]
      class ReplicationGroup < Struct.new(
        :replication_group_id,
        :description,
        :status,
        :pending_modified_values,
        :member_clusters,
        :node_groups,
        :snapshotting_cluster_id,
        :automatic_failover)
        include Aws::Structure
      end

      # Represents the output of a *DescribeReplicationGroups* action.
      # @!attribute [rw] marker
      #   Provides an identifier to allow retrieval of paginated results.
      #   @return [String]
      #
      # @!attribute [rw] replication_groups
      #   A list of replication groups. Each item in the list contains
      #   detailed information about one replication group.
      #   @return [Array<Types::ReplicationGroup>]
      class ReplicationGroupMessage < Struct.new(
        :marker,
        :replication_groups)
        include Aws::Structure
      end

      # The settings to be applied to the replication group, either
      # immediately or during the next maintenance window.
      # @!attribute [rw] primary_cluster_id
      #   The primary cluster ID which will be applied immediately (if
      #   `--apply-immediately` was specified), or during the next maintenance
      #   window.
      #   @return [String]
      #
      # @!attribute [rw] automatic_failover_status
      #   Indicates the status of Multi-AZ for this replication group.
      #
      #   <note markdown="1"> ElastiCache Multi-AZ replication groups are not supported on:
      #
      #    * Redis versions earlier than 2.8.6.
      #
      #   * T1 and T2 cache node types.
      #
      #    </note>
      #   @return [String]
      class ReplicationGroupPendingModifiedValues < Struct.new(
        :primary_cluster_id,
        :automatic_failover_status)
        include Aws::Structure
      end

      # Represents the output of a *PurchaseReservedCacheNodesOffering*
      # action.
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
      #   Valid node types are as follows:
      #
      #   * General purpose:
      #
      #     * Current generation: `cache.t2.micro`, `cache.t2.small`,
      #       `cache.t2.medium`, `cache.m3.medium`, `cache.m3.large`,
      #       `cache.m3.xlarge`, `cache.m3.2xlarge`
      #
      #     * Previous generation: `cache.t1.micro`, `cache.m1.small`,
      #       `cache.m1.medium`, `cache.m1.large`, `cache.m1.xlarge`
      #
      #   * Compute optimized: `cache.c1.xlarge`
      #
      #   * Memory optimized:
      #
      #     * Current generation: `cache.r3.large`, `cache.r3.xlarge`,
      #       `cache.r3.2xlarge`, `cache.r3.4xlarge`, `cache.r3.8xlarge`
      #
      #     * Previous generation: `cache.m2.xlarge`, `cache.m2.2xlarge`,
      #       `cache.m2.4xlarge`
      #
      #   **Notes:**
      #
      #   * All t2 instances are created in an Amazon Virtual Private Cloud
      #     (VPC).
      #
      #   * Redis backup/restore is not supported for t2 instances.
      #
      #   * Redis Append-only files (AOF) functionality is not supported for
      #     t1 or t2 instances.
      #
      #   For a complete listing of cache node types and specifications, see
      #   [Amazon ElastiCache Product Features and Details][1] and [Cache Node
      #   Type-Specific Parameters for Memcached][2] or [Cache Node
      #   Type-Specific Parameters for Redis][3].
      #
      #
      #
      #   [1]: http://aws.amazon.com/elasticache/details
      #   [2]: http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/CacheParameterGroups.Memcached.html#CacheParameterGroups.Memcached.NodeSpecific
      #   [3]: http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/CacheParameterGroups.Redis.html#CacheParameterGroups.Redis.NodeSpecific
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
        :recurring_charges)
        include Aws::Structure
      end

      # Represents the output of a *DescribeReservedCacheNodes* action.
      # @!attribute [rw] marker
      #   Provides an identifier to allow retrieval of paginated results.
      #   @return [String]
      #
      # @!attribute [rw] reserved_cache_nodes
      #   A list of reserved cache nodes. Each element in the list contains
      #   detailed information about one node.
      #   @return [Array<Types::ReservedCacheNode>]
      class ReservedCacheNodeMessage < Struct.new(
        :marker,
        :reserved_cache_nodes)
        include Aws::Structure
      end

      # Describes all of the attributes of a reserved cache node offering.
      # @!attribute [rw] reserved_cache_nodes_offering_id
      #   A unique identifier for the reserved cache node offering.
      #   @return [String]
      #
      # @!attribute [rw] cache_node_type
      #   The cache node type for the reserved cache node.
      #
      #   Valid node types are as follows:
      #
      #   * General purpose:
      #
      #     * Current generation: `cache.t2.micro`, `cache.t2.small`,
      #       `cache.t2.medium`, `cache.m3.medium`, `cache.m3.large`,
      #       `cache.m3.xlarge`, `cache.m3.2xlarge`
      #
      #     * Previous generation: `cache.t1.micro`, `cache.m1.small`,
      #       `cache.m1.medium`, `cache.m1.large`, `cache.m1.xlarge`
      #
      #   * Compute optimized: `cache.c1.xlarge`
      #
      #   * Memory optimized:
      #
      #     * Current generation: `cache.r3.large`, `cache.r3.xlarge`,
      #       `cache.r3.2xlarge`, `cache.r3.4xlarge`, `cache.r3.8xlarge`
      #
      #     * Previous generation: `cache.m2.xlarge`, `cache.m2.2xlarge`,
      #       `cache.m2.4xlarge`
      #
      #   **Notes:**
      #
      #   * All t2 instances are created in an Amazon Virtual Private Cloud
      #     (VPC).
      #
      #   * Redis backup/restore is not supported for t2 instances.
      #
      #   * Redis Append-only files (AOF) functionality is not supported for
      #     t1 or t2 instances.
      #
      #   For a complete listing of cache node types and specifications, see
      #   [Amazon ElastiCache Product Features and Details][1] and [Cache Node
      #   Type-Specific Parameters for Memcached][2] or [Cache Node
      #   Type-Specific Parameters for Redis][3].
      #
      #
      #
      #   [1]: http://aws.amazon.com/elasticache/details
      #   [2]: http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/CacheParameterGroups.Memcached.html#CacheParameterGroups.Memcached.NodeSpecific
      #   [3]: http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/CacheParameterGroups.Redis.html#CacheParameterGroups.Redis.NodeSpecific
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

      # Represents the output of a *DescribeReservedCacheNodesOfferings*
      # action.
      # @!attribute [rw] marker
      #   Provides an identifier to allow retrieval of paginated results.
      #   @return [String]
      #
      # @!attribute [rw] reserved_cache_nodes_offerings
      #   A list of reserved cache node offerings. Each element in the list
      #   contains detailed information about one offering.
      #   @return [Array<Types::ReservedCacheNodesOffering>]
      class ReservedCacheNodesOfferingMessage < Struct.new(
        :marker,
        :reserved_cache_nodes_offerings)
        include Aws::Structure
      end

      # Represents the input of a *ResetCacheParameterGroup* action.
      # @note When making an API call, pass ResetCacheParameterGroupMessage
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
      # @!attribute [rw] cache_parameter_group_name
      #   The name of the cache parameter group to reset.
      #   @return [String]
      #
      # @!attribute [rw] reset_all_parameters
      #   If *true*, all parameters in the cache parameter group will be reset
      #   to their default values. If *false*, only the parameters listed by
      #   *ParameterNameValues* are reset to their default values.
      #
      #   Valid values: `true` \| `false`
      #   @return [Boolean]
      #
      # @!attribute [rw] parameter_name_values
      #   An array of parameter names to reset to their default values. If
      #   *ResetAllParameters* is *false*, you must specify the name of at
      #   least one parameter to reset.
      #   @return [Array<Types::ParameterNameValue>]
      class ResetCacheParameterGroupMessage < Struct.new(
        :cache_parameter_group_name,
        :reset_all_parameters,
        :parameter_name_values)
        include Aws::Structure
      end

      # Represents the input of a *RevokeCacheSecurityGroupIngress* action.
      # @note When making an API call, pass RevokeCacheSecurityGroupIngressMessage
      #   data as a hash:
      #
      #       {
      #         cache_security_group_name: "String", # required
      #         ec2_security_group_name: "String", # required
      #         ec2_security_group_owner_id: "String", # required
      #       }
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
      class RevokeCacheSecurityGroupIngressMessage < Struct.new(
        :cache_security_group_name,
        :ec2_security_group_name,
        :ec2_security_group_owner_id)
        include Aws::Structure
      end

      # @!attribute [rw] cache_security_group
      #   Represents the output of one of the following actions:
      #
      #   * *AuthorizeCacheSecurityGroupIngress*
      #
      #   * *CreateCacheSecurityGroup*
      #
      #   * *RevokeCacheSecurityGroupIngress*
      #   @return [Types::CacheSecurityGroup]
      class RevokeCacheSecurityGroupIngressResult < Struct.new(
        :cache_security_group)
        include Aws::Structure
      end

      # Represents a single cache security group and its status.
      # @!attribute [rw] security_group_id
      #   The identifier of the cache security group.
      #   @return [String]
      #
      # @!attribute [rw] status
      #   The status of the cache security group membership. The status
      #   changes whenever a cache security group is modified, or when the
      #   cache security groups assigned to a cache cluster are modified.
      #   @return [String]
      class SecurityGroupMembership < Struct.new(
        :security_group_id,
        :status)
        include Aws::Structure
      end

      # Represents a copy of an entire cache cluster as of the time when the
      # snapshot was taken.
      # @!attribute [rw] snapshot_name
      #   The name of a snapshot. For an automatic snapshot, the name is
      #   system-generated; for a manual snapshot, this is the user-provided
      #   name.
      #   @return [String]
      #
      # @!attribute [rw] cache_cluster_id
      #   The user-supplied identifier of the source cache cluster.
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
      #   cache cluster.
      #
      #   Valid node types are as follows:
      #
      #   * General purpose:
      #
      #     * Current generation: `cache.t2.micro`, `cache.t2.small`,
      #       `cache.t2.medium`, `cache.m3.medium`, `cache.m3.large`,
      #       `cache.m3.xlarge`, `cache.m3.2xlarge`
      #
      #     * Previous generation: `cache.t1.micro`, `cache.m1.small`,
      #       `cache.m1.medium`, `cache.m1.large`, `cache.m1.xlarge`
      #
      #   * Compute optimized: `cache.c1.xlarge`
      #
      #   * Memory optimized:
      #
      #     * Current generation: `cache.r3.large`, `cache.r3.xlarge`,
      #       `cache.r3.2xlarge`, `cache.r3.4xlarge`, `cache.r3.8xlarge`
      #
      #     * Previous generation: `cache.m2.xlarge`, `cache.m2.2xlarge`,
      #       `cache.m2.4xlarge`
      #
      #   **Notes:**
      #
      #   * All t2 instances are created in an Amazon Virtual Private Cloud
      #     (VPC).
      #
      #   * Redis backup/restore is not supported for t2 instances.
      #
      #   * Redis Append-only files (AOF) functionality is not supported for
      #     t1 or t2 instances.
      #
      #   For a complete listing of cache node types and specifications, see
      #   [Amazon ElastiCache Product Features and Details][1] and [Cache Node
      #   Type-Specific Parameters for Memcached][2] or [Cache Node
      #   Type-Specific Parameters for Redis][3].
      #
      #
      #
      #   [1]: http://aws.amazon.com/elasticache/details
      #   [2]: http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/CacheParameterGroups.Memcached.html#CacheParameterGroups.Memcached.NodeSpecific
      #   [3]: http://docs.aws.amazon.com/AmazonElastiCache/latest/UserGuide/CacheParameterGroups.Redis.html#CacheParameterGroups.Redis.NodeSpecific
      #   @return [String]
      #
      # @!attribute [rw] engine
      #   The name of the cache engine (*memcached* or *redis*) used by the
      #   source cache cluster.
      #   @return [String]
      #
      # @!attribute [rw] engine_version
      #   The version of the cache engine version that is used by the source
      #   cache cluster.
      #   @return [String]
      #
      # @!attribute [rw] num_cache_nodes
      #   The number of cache nodes in the source cache cluster.
      #
      #   For clusters running Redis, this value must be 1. For clusters
      #   running Memcached, this value must be between 1 and 20.
      #   @return [Integer]
      #
      # @!attribute [rw] preferred_availability_zone
      #   The name of the Availability Zone in which the source cache cluster
      #   is located.
      #   @return [String]
      #
      # @!attribute [rw] cache_cluster_create_time
      #   The date and time when the source cache cluster was created.
      #   @return [Time]
      #
      # @!attribute [rw] preferred_maintenance_window
      #   Specifies the weekly time range during which maintenance on the
      #   cache cluster is performed. It is specified as a range in the format
      #   ddd:hh24:mi-ddd:hh24:mi (24H Clock UTC). The minimum maintenance
      #   window is a 60 minute period. Valid values for `ddd` are:
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
      #   Example: `sun:05:00-sun:09:00`
      #   @return [String]
      #
      # @!attribute [rw] topic_arn
      #   The Amazon Resource Name (ARN) for the topic used by the source
      #   cache cluster for publishing notifications.
      #   @return [String]
      #
      # @!attribute [rw] port
      #   The port number used by each cache nodes in the source cache
      #   cluster.
      #   @return [Integer]
      #
      # @!attribute [rw] cache_parameter_group_name
      #   The cache parameter group that is associated with the source cache
      #   cluster.
      #   @return [String]
      #
      # @!attribute [rw] cache_subnet_group_name
      #   The name of the cache subnet group associated with the source cache
      #   cluster.
      #   @return [String]
      #
      # @!attribute [rw] vpc_id
      #   The Amazon Virtual Private Cloud identifier (VPC ID) of the cache
      #   subnet group for the source cache cluster.
      #   @return [String]
      #
      # @!attribute [rw] auto_minor_version_upgrade
      #   This parameter is currently disabled.
      #   @return [Boolean]
      #
      # @!attribute [rw] snapshot_retention_limit
      #   For an automatic snapshot, the number of days for which ElastiCache
      #   will retain the snapshot before deleting it.
      #
      #   For manual snapshots, this field reflects the
      #   *SnapshotRetentionLimit* for the source cache cluster when the
      #   snapshot was created. This field is otherwise ignored: Manual
      #   snapshots do not expire, and can only be deleted using the
      #   *DeleteSnapshot* action.
      #
      #   **Important** If the value of SnapshotRetentionLimit is set to zero
      #   (0), backups are turned off.
      #   @return [Integer]
      #
      # @!attribute [rw] snapshot_window
      #   The daily time range during which ElastiCache takes daily snapshots
      #   of the source cache cluster.
      #   @return [String]
      #
      # @!attribute [rw] node_snapshots
      #   A list of the cache nodes in the source cache cluster.
      #   @return [Array<Types::NodeSnapshot>]
      class Snapshot < Struct.new(
        :snapshot_name,
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
        :node_snapshots)
        include Aws::Structure
      end

      # Represents the subnet associated with a cache cluster. This parameter
      # refers to subnets defined in Amazon Virtual Private Cloud (Amazon VPC)
      # and used with ElastiCache.
      # @!attribute [rw] subnet_identifier
      #   The unique identifier for the subnet.
      #   @return [String]
      #
      # @!attribute [rw] subnet_availability_zone
      #   The Availability Zone associated with the subnet.
      #   @return [Types::AvailabilityZone]
      class Subnet < Struct.new(
        :subnet_identifier,
        :subnet_availability_zone)
        include Aws::Structure
      end

      # A cost allocation Tag that can be added to an ElastiCache cluster or
      # replication group. Tags are composed of a Key/Value pair. A tag with a
      # null Value is permitted.
      # @note When making an API call, pass Tag
      #   data as a hash:
      #
      #       {
      #         key: "String",
      #         value: "String",
      #       }
      # @!attribute [rw] key
      #   The key for the tag.
      #   @return [String]
      #
      # @!attribute [rw] value
      #   The tag\'s value. May not be null.
      #   @return [String]
      class Tag < Struct.new(
        :key,
        :value)
        include Aws::Structure
      end

      # Represents the output from the *AddTagsToResource*,
      # *ListTagsOnResource*, and *RemoveTagsFromResource* actions.
      # @!attribute [rw] tag_list
      #   A list of cost allocation tags as key-value pairs.
      #   @return [Array<Types::Tag>]
      class TagListMessage < Struct.new(
        :tag_list)
        include Aws::Structure
      end

    end
  end
end
