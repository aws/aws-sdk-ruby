# frozen_string_literal: true

# This is generated code!

module Aws::ElastiCache
  # This module contains the types returned by client operations.
  module Types

    # <p>The customer has exceeded the allowed rate of API calls.</p>
    # @!attribute message
    #   @return [String]
    class APICallRateForCustomerExceededFault < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of an AddTagsToResource operation.</p>
    # @!attribute resource_name
    #   <p>The Amazon Resource Name (ARN) of the resource to which the tags are to be added, for
    #               example <code>arn:aws:elasticache:us-west-2:0123456789:cluster:myCluster</code> or
    #                   <code>arn:aws:elasticache:us-west-2:0123456789:snapshot:mySnapshot</code>.
    #               ElastiCache resources are <i>cluster</i> and
    #               <i>snapshot</i>.</p>
    #            <p>For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)
    #                   and Amazon Service Namespaces</a>.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of tags to be added to this resource. A tag is a key-value pair. A tag key must
    #               be accompanied by a tag value, although null is accepted.</p>
    #   @return [Array<Types::Tag>]
    class AddTagsToResourceMessage < Struct.new(
      :resource_name,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output from the <code>AddTagsToResource</code>,
    #                 <code>ListTagsForResource</code>, and <code>RemoveTagsFromResource</code>
    #             operations.</p>
    # @!attribute tag_list
    #   <p>A list of tags as key-value pairs.</p>
    #   @return [Array<Types::Tag>]
    class AddTagsToResourceOutput < Struct.new(
      :tag_list,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the allowed node types you can use to modify your cluster or replication
    #             group.</p>
    # @!attribute scale_up_modifications
    #   <p>A string list, each element of which specifies a cache node type which you can use to
    #               scale your cluster or replication group.</p>
    #            <p>When scaling up a Valkey or Redis OSS cluster or replication group using
    #                   <code>ModifyCacheCluster</code> or <code>ModifyReplicationGroup</code>, use a value
    #               from this list for the <code>CacheNodeType</code> parameter.</p>
    #   @return [Array<String>]
    # @!attribute scale_down_modifications
    #   <p>A string list, each element of which specifies a cache node type which you can use to
    #               scale your cluster or replication group. When scaling down a Valkey or Redis OSS cluster or
    #               replication group using ModifyCacheCluster or ModifyReplicationGroup, use a value from
    #               this list for the CacheNodeType parameter. </p>
    #   @return [Array<String>]
    class AllowedNodeTypeModificationsMessage < Struct.new(
      :scale_up_modifications,
      :scale_down_modifications,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Indicates whether the user requires a password to authenticate.</p>
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

    # <p>Specifies the authentication mode to use.</p>
    # @!attribute type
    #   <p>Specifies the authentication type. Possible options are IAM authentication, password
    #               and no password.</p>
    #   @return [String]
    # @!attribute passwords
    #   <p>Specifies the passwords to use for authentication if <code>Type</code> is set to
    #                   <code>password</code>.</p>
    #   @return [Array<String>]
    class AuthenticationMode < Struct.new(
      :type,
      :passwords,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The specified Amazon EC2 security group is already authorized for the specified cache
    #             security group.</p>
    # @!attribute message
    #   @return [String]
    class AuthorizationAlreadyExistsFault < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The specified Amazon EC2 security group is not authorized for the specified cache
    #             security group.</p>
    # @!attribute message
    #   @return [String]
    class AuthorizationNotFoundFault < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of an AuthorizeCacheSecurityGroupIngress operation.</p>
    # @!attribute cache_security_group_name
    #   <p>The cache security group that allows network ingress.</p>
    #   @return [String]
    # @!attribute ec2_security_group_name
    #   <p>The Amazon EC2 security group to be authorized for ingress to the cache security
    #               group.</p>
    #   @return [String]
    # @!attribute ec2_security_group_owner_id
    #   <p>The Amazon account number of the Amazon EC2 security group owner. Note that this is
    #               not the same thing as an Amazon access key ID - you must provide a valid Amazon account
    #               number for this parameter.</p>
    #   @return [String]
    class AuthorizeCacheSecurityGroupIngressMessage < Struct.new(
      :cache_security_group_name,
      :ec2_security_group_name,
      :ec2_security_group_owner_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute cache_security_group
    #   <p>Represents the output of one of the following operations:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>AuthorizeCacheSecurityGroupIngress</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CreateCacheSecurityGroup</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>RevokeCacheSecurityGroupIngress</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [Types::CacheSecurityGroup]
    class AuthorizeCacheSecurityGroupIngressResult < Struct.new(
      :cache_security_group,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an Availability Zone in which the cluster is launched.</p>
    # @!attribute name
    #   <p>The name of the Availability Zone.</p>
    #   @return [String]
    class AvailabilityZone < Struct.new(
      :name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute replication_group_ids
    #   <p>The replication group IDs</p>
    #   @return [Array<String>]
    # @!attribute cache_cluster_ids
    #   <p>The cache cluster IDs</p>
    #   @return [Array<String>]
    # @!attribute service_update_name
    #   <p>The unique ID of the service update</p>
    #   @return [String]
    class BatchApplyUpdateActionMessage < Struct.new(
      :replication_group_ids,
      :cache_cluster_ids,
      :service_update_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute processed_update_actions
    #   <p>Update actions that have been processed successfully</p>
    #   @return [Array<Types::ProcessedUpdateAction>]
    # @!attribute unprocessed_update_actions
    #   <p>Update actions that haven't been processed successfully</p>
    #   @return [Array<Types::UnprocessedUpdateAction>]
    class BatchApplyUpdateActionOutput < Struct.new(
      :processed_update_actions,
      :unprocessed_update_actions,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute replication_group_ids
    #   <p>The replication group IDs</p>
    #   @return [Array<String>]
    # @!attribute cache_cluster_ids
    #   <p>The cache cluster IDs</p>
    #   @return [Array<String>]
    # @!attribute service_update_name
    #   <p>The unique ID of the service update</p>
    #   @return [String]
    class BatchStopUpdateActionMessage < Struct.new(
      :replication_group_ids,
      :cache_cluster_ids,
      :service_update_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute processed_update_actions
    #   <p>Update actions that have been processed successfully</p>
    #   @return [Array<Types::ProcessedUpdateAction>]
    # @!attribute unprocessed_update_actions
    #   <p>Update actions that haven't been processed successfully</p>
    #   @return [Array<Types::UnprocessedUpdateAction>]
    class BatchStopUpdateActionOutput < Struct.new(
      :processed_update_actions,
      :unprocessed_update_actions,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains all of the attributes of a specific cluster.</p>
    # @!attribute cache_cluster_id
    #   <p>The user-supplied identifier of the cluster. This identifier is a unique key that
    #               identifies a cluster.</p>
    #   @return [String]
    # @!attribute configuration_endpoint
    #   <p>Represents a Memcached cluster endpoint which can be used by an application to connect
    #               to any node in the cluster. The configuration endpoint will always have
    #                   <code>.cfg</code> in it.</p>
    #            <p>Example: <code>mem-3.9dvc4r<u>.cfg</u>.usw2.cache.amazonaws.com:11211</code>
    #            </p>
    #   @return [Types::Endpoint]
    # @!attribute client_download_landing_page
    #   <p>The URL of the web page where you can download the latest ElastiCache client
    #               library.</p>
    #   @return [String]
    # @!attribute cache_node_type
    #   <p>The name of the compute and memory capacity node type for the cluster.</p>
    #            <p>The following node types are supported by ElastiCache. Generally speaking, the current
    #               generation types provide more memory and computational power at lower cost when compared
    #               to their equivalent previous generation counterparts.</p>
    #            <ul>
    #               <li>
    #                  <p>General purpose:</p>
    #                  <ul>
    #                     <li>
    #                        <p>Current generation: </p>
    #                        <p>
    #                           <b>M7g node types</b>:
    #       					<code>cache.m7g.large</code>,
    #       					<code>cache.m7g.xlarge</code>,
    #       					<code>cache.m7g.2xlarge</code>,
    #       					<code>cache.m7g.4xlarge</code>,
    #       					<code>cache.m7g.8xlarge</code>,
    #       					<code>cache.m7g.12xlarge</code>,
    #       					<code>cache.m7g.16xlarge</code>
    #                        </p>
    #                        <note>
    #                           <p>For region availability, see <a href="https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/CacheNodes.SupportedTypes.html#CacheNodes.SupportedTypesByRegion">Supported Node Types</a>
    #                           </p>
    #                        </note>
    #                        <p>
    #                           <b>M6g node types</b> (available only for Redis OSS engine version 5.0.6 onward and for Memcached engine version 1.5.16 onward):
    #   					    
    #   					 	<code>cache.m6g.large</code>,
    #   							<code>cache.m6g.xlarge</code>,
    #   							<code>cache.m6g.2xlarge</code>,
    #   							<code>cache.m6g.4xlarge</code>,
    #   							<code>cache.m6g.8xlarge</code>,
    #   							<code>cache.m6g.12xlarge</code>,
    #   							<code>cache.m6g.16xlarge</code>
    #                        </p>
    #                        <p>
    #                           <b>M5 node types:</b>
    #                           <code>cache.m5.large</code>,
    #       						<code>cache.m5.xlarge</code>,
    #       						<code>cache.m5.2xlarge</code>,
    #       						<code>cache.m5.4xlarge</code>,
    #       						<code>cache.m5.12xlarge</code>,
    #       						<code>cache.m5.24xlarge</code>
    #                        </p>
    #                        <p>
    #                           <b>M4 node types:</b>
    #                           <code>cache.m4.large</code>,
    #       						<code>cache.m4.xlarge</code>,
    #       						<code>cache.m4.2xlarge</code>,
    #       						<code>cache.m4.4xlarge</code>,
    #       						<code>cache.m4.10xlarge</code>
    #                        </p>
    #                        <p>
    #                           <b>T4g node types</b> (available only for Redis OSS engine version 5.0.6 onward and Memcached engine version 1.5.16 onward):
    #   					        <code>cache.t4g.micro</code>,
    #   					        <code>cache.t4g.small</code>,
    #   					        <code>cache.t4g.medium</code>
    #                        </p>
    #                        <p>
    #                           <b>T3 node types:</b>
    #                           <code>cache.t3.micro</code>, 
    #       						<code>cache.t3.small</code>,
    #       						<code>cache.t3.medium</code>
    #                        </p>
    #                        <p>
    #                           <b>T2 node types:</b>
    #                           <code>cache.t2.micro</code>, 
    #       						<code>cache.t2.small</code>,
    #       						<code>cache.t2.medium</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>Previous generation: (not recommended. Existing clusters are still supported but creation of new clusters is not supported for these types.)</p>
    #                        <p>
    #                           <b>T1 node types:</b>
    #                           <code>cache.t1.micro</code>
    #                        </p>
    #                        <p>
    #                           <b>M1 node types:</b>
    #                           <code>cache.m1.small</code>, 
    #   						   <code>cache.m1.medium</code>, 
    #   						   <code>cache.m1.large</code>,
    #   						   <code>cache.m1.xlarge</code>
    #                        </p>
    #                        <p>
    #                           <b>M3 node types:</b>
    #                           <code>cache.m3.medium</code>,
    #       						<code>cache.m3.large</code>, 
    #       						<code>cache.m3.xlarge</code>,
    #       						<code>cache.m3.2xlarge</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>Compute optimized:</p>
    #                  <ul>
    #                     <li>
    #                        <p>Previous generation: (not recommended. Existing clusters are still supported but creation of new clusters is not supported for these types.)</p>
    #                        <p>
    #                           <b>C1 node types:</b>
    #                           <code>cache.c1.xlarge</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>Memory optimized:</p>
    #                  <ul>
    #                     <li>
    #                        <p>Current generation: </p>
    #                        <p>
    #                           <b>R7g node types</b>:	
    #   							<code>cache.r7g.large</code>,
    #   							<code>cache.r7g.xlarge</code>,
    #   							<code>cache.r7g.2xlarge</code>,
    #   							<code>cache.r7g.4xlarge</code>,
    #   							<code>cache.r7g.8xlarge</code>,
    #   							<code>cache.r7g.12xlarge</code>,
    #   							<code>cache.r7g.16xlarge</code>
    #                        </p>
    #                        <note>
    #                           <p>For region availability, see <a href="https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/CacheNodes.SupportedTypes.html#CacheNodes.SupportedTypesByRegion">Supported Node Types</a>
    #                           </p>
    #                        </note>
    #                        <p>
    #                           <b>R6g node types</b> (available only for Redis OSS engine version 5.0.6 onward and for Memcached engine version 1.5.16 onward):
    #   							<code>cache.r6g.large</code>,
    #   							<code>cache.r6g.xlarge</code>,
    #   							<code>cache.r6g.2xlarge</code>,
    #   							<code>cache.r6g.4xlarge</code>,
    #   							<code>cache.r6g.8xlarge</code>,
    #   							<code>cache.r6g.12xlarge</code>,
    #   							<code>cache.r6g.16xlarge</code>
    #                        </p>
    #                        <p>
    #                           <b>R5 node types:</b>
    #                           <code>cache.r5.large</code>,
    #       					   <code>cache.r5.xlarge</code>,
    #       					   <code>cache.r5.2xlarge</code>,
    #       					   <code>cache.r5.4xlarge</code>,
    #       					   <code>cache.r5.12xlarge</code>,
    #       					   <code>cache.r5.24xlarge</code>
    #                        </p>
    #                        <p>
    #                           <b>R4 node types:</b>
    #                           <code>cache.r4.large</code>,
    #       					   <code>cache.r4.xlarge</code>,
    #       					   <code>cache.r4.2xlarge</code>,
    #       					   <code>cache.r4.4xlarge</code>,
    #       					   <code>cache.r4.8xlarge</code>,
    #       					   <code>cache.r4.16xlarge</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>Previous generation: (not recommended. Existing clusters are still supported but creation of new clusters is not supported for these types.)</p>
    #                        <p>
    #                           <b>M2 node types:</b>
    #                           <code>cache.m2.xlarge</code>, 
    #       						<code>cache.m2.2xlarge</code>,
    #       						<code>cache.m2.4xlarge</code>
    #                        </p>
    #                        <p>
    #                           <b>R3 node types:</b>
    #                           <code>cache.r3.large</code>, 
    #       						<code>cache.r3.xlarge</code>,
    #       						<code>cache.r3.2xlarge</code>,  
    #       						<code>cache.r3.4xlarge</code>,
    #       						<code>cache.r3.8xlarge</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #            </ul>
    #            <p>
    #               <b>Additional node type info</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>All current generation instance types are created in Amazon VPC by
    #                       default.</p>
    #               </li>
    #               <li>
    #                  <p>Valkey or Redis OSS append-only files (AOF) are not supported for T1 or T2 instances.</p>
    #               </li>
    #               <li>
    #                  <p>Valkey or Redis OSS Multi-AZ with automatic failover is not supported on T1
    #                       instances.</p>
    #               </li>
    #               <li>
    #                  <p>The configuration variables <code>appendonly</code> and
    #                           <code>appendfsync</code> are not supported on Valkey, or on Redis OSS version 2.8.22 and
    #                       later.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute engine
    #   <p>The name of the cache engine (<code>memcached</code> or <code>redis</code>) to be used
    #               for this cluster.</p>
    #   @return [String]
    # @!attribute engine_version
    #   <p>The version of the cache engine that is used in this cluster.</p>
    #   @return [String]
    # @!attribute cache_cluster_status
    #   <p>The current state of this cluster, one of the following values:
    #               <code>available</code>, <code>creating</code>, <code>deleted</code>,
    #                   <code>deleting</code>, <code>incompatible-network</code>, <code>modifying</code>,
    #                   <code>rebooting cluster nodes</code>, <code>restore-failed</code>, or
    #                   <code>snapshotting</code>.</p>
    #   @return [String]
    # @!attribute num_cache_nodes
    #   <p>The number of cache nodes in the cluster.</p>
    #            <p>For clusters running Valkey or Redis OSS, this value must be 1. For clusters running Memcached, this
    #               value must be between 1 and 40.</p>
    #   @return [Integer]
    # @!attribute preferred_availability_zone
    #   <p>The name of the Availability Zone in which the cluster is located or "Multiple" if the
    #               cache nodes are located in different Availability Zones.</p>
    #   @return [String]
    # @!attribute preferred_outpost_arn
    #   <p>The outpost ARN in which the cache cluster is created.</p>
    #   @return [String]
    # @!attribute cache_cluster_create_time
    #   <p>The date and time when the cluster was created.</p>
    #   @return [Time]
    # @!attribute preferred_maintenance_window
    #   <p>Specifies the weekly time range during which maintenance on the cluster is performed.
    #               It is specified as a range in the format ddd:hh24:mi-ddd:hh24:mi (24H Clock UTC). The
    #               minimum maintenance window is a 60 minute period.</p>
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
    # @!attribute pending_modified_values
    #   <p>A group of settings that are applied to the cluster in the future, or that are
    #               currently being applied.</p>
    #   @return [Types::PendingModifiedValues]
    # @!attribute notification_configuration
    #   <p>Describes a notification topic and its status. Notification topics are used for
    #               publishing ElastiCache events to subscribers using Amazon Simple Notification Service
    #               (SNS). </p>
    #   @return [Types::NotificationConfiguration]
    # @!attribute cache_security_groups
    #   <p>A list of cache security group elements, composed of name and status
    #               sub-elements.</p>
    #   @return [Array<Types::CacheSecurityGroupMembership>]
    # @!attribute cache_parameter_group
    #   <p>Status of the cache parameter group.</p>
    #   @return [Types::CacheParameterGroupStatus]
    # @!attribute cache_subnet_group_name
    #   <p>The name of the cache subnet group associated with the cluster.</p>
    #   @return [String]
    # @!attribute cache_nodes
    #   <p>A list of cache nodes that are members of the cluster.</p>
    #   @return [Array<Types::CacheNode>]
    # @!attribute auto_minor_version_upgrade
    #   <p> If you are running Valkey or Redis OSS engine version 6.0 or later, set this parameter to yes if
    #               you want to opt-in to the next auto minor version upgrade campaign. This parameter is
    #               disabled for previous versions.  </p>
    #   @return [Boolean]
    # @!attribute security_groups
    #   <p>A list of VPC Security Groups associated with the cluster.</p>
    #   @return [Array<Types::SecurityGroupMembership>]
    # @!attribute replication_group_id
    #   <p>The replication group to which this cluster belongs. If this field is empty, the
    #               cluster is not associated with any replication group.</p>
    #   @return [String]
    # @!attribute snapshot_retention_limit
    #   <p>The number of days for which ElastiCache retains automatic cluster snapshots before
    #               deleting them. For example, if you set <code>SnapshotRetentionLimit</code> to 5, a
    #               snapshot that was taken today is retained for 5 days before being deleted.</p>
    #            <important>
    #               <p> If the value of SnapshotRetentionLimit is set to zero (0), backups are turned
    #                   off.</p>
    #            </important>
    #   @return [Integer]
    # @!attribute snapshot_window
    #   <p>The daily time range (in UTC) during which ElastiCache begins taking a daily snapshot
    #               of your cluster.</p>
    #            <p>Example: <code>05:00-09:00</code>
    #            </p>
    #   @return [String]
    # @!attribute auth_token_enabled
    #   <p>A flag that enables using an <code>AuthToken</code> (password) when issuing Valkey or Redis OSS 
    #               commands.</p>
    #            <p>Default: <code>false</code>
    #            </p>
    #   @return [Boolean]
    # @!attribute auth_token_last_modified_date
    #   <p>The date the auth token was last modified</p>
    #   @return [Time]
    # @!attribute transit_encryption_enabled
    #   <p>A flag that enables in-transit encryption when set to <code>true</code>.</p>
    #            <p>
    #               <b>Required:</b> Only available when creating a replication
    #               group in an Amazon VPC using Redis OSS version <code>3.2.6</code>, <code>4.x</code> or
    #               later.</p>
    #            <p>Default: <code>false</code>
    #            </p>
    #   @return [Boolean]
    # @!attribute at_rest_encryption_enabled
    #   <p>A flag that enables encryption at-rest when set to <code>true</code>.</p>
    #            <p>You cannot modify the value of <code>AtRestEncryptionEnabled</code> after the cluster
    #               is created. To enable at-rest encryption on a cluster you must set
    #                   <code>AtRestEncryptionEnabled</code> to <code>true</code> when you create a
    #               cluster.</p>
    #            <p>
    #               <b>Required:</b> Only available when creating a replication
    #               group in an Amazon VPC using Redis OSS version <code>3.2.6</code>, <code>4.x</code> or
    #               later.</p>
    #            <p>Default: <code>false</code>
    #            </p>
    #   @return [Boolean]
    # @!attribute arn
    #   <p>The ARN (Amazon Resource Name) of the cache cluster.</p>
    #   @return [String]
    # @!attribute replication_group_log_delivery_enabled
    #   <p>A boolean value indicating whether log delivery is enabled for the replication
    #               group.</p>
    #   @return [Boolean]
    # @!attribute log_delivery_configurations
    #   <p>Returns the destination, format and type of the logs.</p>
    #   @return [Array<Types::LogDeliveryConfiguration>]
    # @!attribute network_type
    #   <p>Must be either <code>ipv4</code> | <code>ipv6</code> | <code>dual_stack</code>. IPv6
    #               is supported for workloads using Valkey 7.2 and above, Redis OSS engine version 6.2
    #               7.1 or Memcached engine version 1.6.6 and above on all instances built on the <a href="http://aws.amazon.com/ec2/nitro/">Nitro system</a>.</p>
    #   @return [String]
    # @!attribute ip_discovery
    #   <p>The network type associated with the cluster, either <code>ipv4</code> |
    #                   <code>ipv6</code>. IPv6 is supported for workloads using Valkey 7.2 and above, Redis OSS engine version 6.2
    #               to 7.1 or Memcached engine version 1.6.6 and above on all instances built on the <a href="http://aws.amazon.com/ec2/nitro/">Nitro system</a>.</p>
    #   @return [String]
    # @!attribute transit_encryption_mode
    #   <p>A setting that allows you to migrate your clients to use in-transit encryption, with
    #               no downtime.</p>
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
      :preferred_outpost_arn,
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
      :arn,
      :replication_group_log_delivery_enabled,
      :log_delivery_configurations,
      :network_type,
      :ip_discovery,
      :transit_encryption_mode,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>You already have a cluster with the given identifier.</p>
    # @!attribute message
    #   @return [String]
    class CacheClusterAlreadyExistsFault < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a <code>DescribeCacheClusters</code> operation.</p>
    # @!attribute marker
    #   <p>Provides an identifier to allow retrieval of paginated results.</p>
    #   @return [String]
    # @!attribute cache_clusters
    #   <p>A list of clusters. Each item in the list contains detailed information about one
    #               cluster.</p>
    #   @return [Array<Types::CacheCluster>]
    class CacheClusterMessage < Struct.new(
      :marker,
      :cache_clusters,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The requested cluster ID does not refer to an existing cluster.</p>
    # @!attribute message
    #   @return [String]
    class CacheClusterNotFoundFault < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provides all of the details about a particular cache engine version.</p>
    # @!attribute engine
    #   <p>The name of the cache engine.</p>
    #   @return [String]
    # @!attribute engine_version
    #   <p>The version number of the cache engine.</p>
    #   @return [String]
    # @!attribute cache_parameter_group_family
    #   <p>The name of the cache parameter group family associated with this cache engine.</p>
    #            <p>Valid values are: <code>memcached1.4</code> | <code>memcached1.5</code> |
    #                   <code>memcached1.6</code> | <code>redis2.6</code> | <code>redis2.8</code> |
    #                   <code>redis3.2</code> | <code>redis4.0</code> | <code>redis5.0</code> |
    #                   <code>redis6.x</code> | <code>redis7</code>
    #            </p>
    #   @return [String]
    # @!attribute cache_engine_description
    #   <p>The description of the cache engine.</p>
    #   @return [String]
    # @!attribute cache_engine_version_description
    #   <p>The description of the cache engine version.</p>
    #   @return [String]
    class CacheEngineVersion < Struct.new(
      :engine,
      :engine_version,
      :cache_parameter_group_family,
      :cache_engine_description,
      :cache_engine_version_description,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a <a>DescribeCacheEngineVersions</a>
    #             operation.</p>
    # @!attribute marker
    #   <p>Provides an identifier to allow retrieval of paginated results.</p>
    #   @return [String]
    # @!attribute cache_engine_versions
    #   <p>A list of cache engine version details. Each element in the list contains detailed
    #               information about one cache engine version.</p>
    #   @return [Array<Types::CacheEngineVersion>]
    class CacheEngineVersionMessage < Struct.new(
      :marker,
      :cache_engine_versions,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents an individual cache node within a cluster. Each cache node runs its own
    #             instance of the cluster's protocol-compliant caching software - either Memcached, Valkey or Redis OSS.</p>
    #          <p>The following node types are supported by ElastiCache. Generally speaking, the current
    #             generation types provide more memory and computational power at lower cost when compared
    #             to their equivalent previous generation counterparts.</p>
    #          <ul>
    #             <li>
    #                <p>General purpose:</p>
    #                <ul>
    #                   <li>
    #                      <p>Current generation: </p>
    #                      <p>
    #                         <b>M7g node types</b>:
    #     					<code>cache.m7g.large</code>,
    #     					<code>cache.m7g.xlarge</code>,
    #     					<code>cache.m7g.2xlarge</code>,
    #     					<code>cache.m7g.4xlarge</code>,
    #     					<code>cache.m7g.8xlarge</code>,
    #     					<code>cache.m7g.12xlarge</code>,
    #     					<code>cache.m7g.16xlarge</code>
    #                      </p>
    #                      <note>
    #                         <p>For region availability, see <a href="https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/CacheNodes.SupportedTypes.html#CacheNodes.SupportedTypesByRegion">Supported Node Types</a>
    #                         </p>
    #                      </note>
    #                      <p>
    #                         <b>M6g node types</b> (available only for Redis OSS engine version 5.0.6 onward and for Memcached engine version 1.5.16 onward):
    # 					    
    # 					 	<code>cache.m6g.large</code>,
    # 							<code>cache.m6g.xlarge</code>,
    # 							<code>cache.m6g.2xlarge</code>,
    # 							<code>cache.m6g.4xlarge</code>,
    # 							<code>cache.m6g.8xlarge</code>,
    # 							<code>cache.m6g.12xlarge</code>,
    # 							<code>cache.m6g.16xlarge</code>
    #                      </p>
    #                      <p>
    #                         <b>M5 node types:</b>
    #                         <code>cache.m5.large</code>,
    #     						<code>cache.m5.xlarge</code>,
    #     						<code>cache.m5.2xlarge</code>,
    #     						<code>cache.m5.4xlarge</code>,
    #     						<code>cache.m5.12xlarge</code>,
    #     						<code>cache.m5.24xlarge</code>
    #                      </p>
    #                      <p>
    #                         <b>M4 node types:</b>
    #                         <code>cache.m4.large</code>,
    #     						<code>cache.m4.xlarge</code>,
    #     						<code>cache.m4.2xlarge</code>,
    #     						<code>cache.m4.4xlarge</code>,
    #     						<code>cache.m4.10xlarge</code>
    #                      </p>
    #                      <p>
    #                         <b>T4g node types</b> (available only for Redis OSS engine version 5.0.6 onward and Memcached engine version 1.5.16 onward):
    # 					        <code>cache.t4g.micro</code>,
    # 					        <code>cache.t4g.small</code>,
    # 					        <code>cache.t4g.medium</code>
    #                      </p>
    #                      <p>
    #                         <b>T3 node types:</b>
    #                         <code>cache.t3.micro</code>, 
    #     						<code>cache.t3.small</code>,
    #     						<code>cache.t3.medium</code>
    #                      </p>
    #                      <p>
    #                         <b>T2 node types:</b>
    #                         <code>cache.t2.micro</code>, 
    #     						<code>cache.t2.small</code>,
    #     						<code>cache.t2.medium</code>
    #                      </p>
    #                   </li>
    #                   <li>
    #                      <p>Previous generation: (not recommended. Existing clusters are still supported but creation of new clusters is not supported for these types.)</p>
    #                      <p>
    #                         <b>T1 node types:</b>
    #                         <code>cache.t1.micro</code>
    #                      </p>
    #                      <p>
    #                         <b>M1 node types:</b>
    #                         <code>cache.m1.small</code>, 
    # 						   <code>cache.m1.medium</code>, 
    # 						   <code>cache.m1.large</code>,
    # 						   <code>cache.m1.xlarge</code>
    #                      </p>
    #                      <p>
    #                         <b>M3 node types:</b>
    #                         <code>cache.m3.medium</code>,
    #     						<code>cache.m3.large</code>, 
    #     						<code>cache.m3.xlarge</code>,
    #     						<code>cache.m3.2xlarge</code>
    #                      </p>
    #                   </li>
    #                </ul>
    #             </li>
    #             <li>
    #                <p>Compute optimized:</p>
    #                <ul>
    #                   <li>
    #                      <p>Previous generation: (not recommended. Existing clusters are still supported but creation of new clusters is not supported for these types.)</p>
    #                      <p>
    #                         <b>C1 node types:</b>
    #                         <code>cache.c1.xlarge</code>
    #                      </p>
    #                   </li>
    #                </ul>
    #             </li>
    #             <li>
    #                <p>Memory optimized:</p>
    #                <ul>
    #                   <li>
    #                      <p>Current generation: </p>
    #                      <p>
    #                         <b>R7g node types</b>:	
    # 							<code>cache.r7g.large</code>,
    # 							<code>cache.r7g.xlarge</code>,
    # 							<code>cache.r7g.2xlarge</code>,
    # 							<code>cache.r7g.4xlarge</code>,
    # 							<code>cache.r7g.8xlarge</code>,
    # 							<code>cache.r7g.12xlarge</code>,
    # 							<code>cache.r7g.16xlarge</code>
    #                      </p>
    #                      <note>
    #                         <p>For region availability, see <a href="https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/CacheNodes.SupportedTypes.html#CacheNodes.SupportedTypesByRegion">Supported Node Types</a>
    #                         </p>
    #                      </note>
    #                      <p>
    #                         <b>R6g node types</b> (available only for Redis OSS engine version 5.0.6 onward and for Memcached engine version 1.5.16 onward):
    # 							<code>cache.r6g.large</code>,
    # 							<code>cache.r6g.xlarge</code>,
    # 							<code>cache.r6g.2xlarge</code>,
    # 							<code>cache.r6g.4xlarge</code>,
    # 							<code>cache.r6g.8xlarge</code>,
    # 							<code>cache.r6g.12xlarge</code>,
    # 							<code>cache.r6g.16xlarge</code>
    #                      </p>
    #                      <p>
    #                         <b>R5 node types:</b>
    #                         <code>cache.r5.large</code>,
    #     					   <code>cache.r5.xlarge</code>,
    #     					   <code>cache.r5.2xlarge</code>,
    #     					   <code>cache.r5.4xlarge</code>,
    #     					   <code>cache.r5.12xlarge</code>,
    #     					   <code>cache.r5.24xlarge</code>
    #                      </p>
    #                      <p>
    #                         <b>R4 node types:</b>
    #                         <code>cache.r4.large</code>,
    #     					   <code>cache.r4.xlarge</code>,
    #     					   <code>cache.r4.2xlarge</code>,
    #     					   <code>cache.r4.4xlarge</code>,
    #     					   <code>cache.r4.8xlarge</code>,
    #     					   <code>cache.r4.16xlarge</code>
    #                      </p>
    #                   </li>
    #                   <li>
    #                      <p>Previous generation: (not recommended. Existing clusters are still supported but creation of new clusters is not supported for these types.)</p>
    #                      <p>
    #                         <b>M2 node types:</b>
    #                         <code>cache.m2.xlarge</code>, 
    #     						<code>cache.m2.2xlarge</code>,
    #     						<code>cache.m2.4xlarge</code>
    #                      </p>
    #                      <p>
    #                         <b>R3 node types:</b>
    #                         <code>cache.r3.large</code>, 
    #     						<code>cache.r3.xlarge</code>,
    #     						<code>cache.r3.2xlarge</code>,  
    #     						<code>cache.r3.4xlarge</code>,
    #     						<code>cache.r3.8xlarge</code>
    #                      </p>
    #                   </li>
    #                </ul>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Additional node type info</b>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>All current generation instance types are created in Amazon VPC by
    #                     default.</p>
    #             </li>
    #             <li>
    #                <p>Valkey or Redis OSS append-only files (AOF) are not supported for T1 or T2 instances.</p>
    #             </li>
    #             <li>
    #                <p>Valkey or Redis OSS Multi-AZ with automatic failover is not supported on T1
    #                     instances.</p>
    #             </li>
    #             <li>
    #                <p>The configuration variables <code>appendonly</code> and
    #                         <code>appendfsync</code> are not supported on Valkey, or on Redis OSS version 2.8.22 and
    #                     later.</p>
    #             </li>
    #          </ul>
    # @!attribute cache_node_id
    #   <p>The cache node identifier. A node ID is a numeric identifier (0001, 0002, etc.). The
    #               combination of cluster ID and node ID uniquely identifies every cache node used in a
    #               customer's Amazon account.</p>
    #   @return [String]
    # @!attribute cache_node_status
    #   <p>The current state of this cache node, one of the following values:
    #                   <code>available</code>, <code>creating</code>, <code>rebooting</code>, or
    #                   <code>deleting</code>.</p>
    #   @return [String]
    # @!attribute cache_node_create_time
    #   <p>The date and time when the cache node was created.</p>
    #   @return [Time]
    # @!attribute endpoint
    #   <p>The hostname for connecting to this cache node.</p>
    #   @return [Types::Endpoint]
    # @!attribute parameter_group_status
    #   <p>The status of the parameter group applied to this cache node.</p>
    #   @return [String]
    # @!attribute source_cache_node_id
    #   <p>The ID of the primary node to which this read replica node is synchronized. If this
    #               field is empty, this node is not associated with a primary cluster.</p>
    #   @return [String]
    # @!attribute customer_availability_zone
    #   <p>The Availability Zone where this node was created and now resides.</p>
    #   @return [String]
    # @!attribute customer_outpost_arn
    #   <p>The customer outpost ARN of the cache node.</p>
    #   @return [String]
    class CacheNode < Struct.new(
      :cache_node_id,
      :cache_node_status,
      :cache_node_create_time,
      :endpoint,
      :parameter_group_status,
      :source_cache_node_id,
      :customer_availability_zone,
      :customer_outpost_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A parameter that has a different value for each cache node type it is applied to. For
    #             example, in a Valkey or Redis OSS cluster, a <code>cache.m1.large</code> cache node type would have a
    #             larger <code>maxmemory</code> value than a <code>cache.m1.small</code> type.</p>
    # @!attribute parameter_name
    #   <p>The name of the parameter.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the parameter.</p>
    #   @return [String]
    # @!attribute source
    #   <p>The source of the parameter value.</p>
    #   @return [String]
    # @!attribute data_type
    #   <p>The valid data type for the parameter.</p>
    #   @return [String]
    # @!attribute allowed_values
    #   <p>The valid range of values for the parameter.</p>
    #   @return [String]
    # @!attribute is_modifiable
    #   <p>Indicates whether (<code>true</code>) or not (<code>false</code>) the parameter can be
    #               modified. Some parameters have security or operational implications that prevent them
    #               from being changed.</p>
    #   @return [Boolean]
    # @!attribute minimum_engine_version
    #   <p>The earliest cache engine version to which the parameter can apply.</p>
    #   @return [String]
    # @!attribute cache_node_type_specific_values
    #   <p>A list of cache node types and their corresponding values for this parameter.</p>
    #   @return [Array<Types::CacheNodeTypeSpecificValue>]
    # @!attribute change_type
    #   <p>Indicates whether a change to the parameter is applied immediately or requires a
    #               reboot for the change to be applied. You can force a reboot or wait until the next
    #               maintenance window's reboot. For more information, see <a href="https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/Clusters.Rebooting.html">Rebooting a
    #                   Cluster</a>.</p>
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
      :change_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A value that applies only to a certain cache node type.</p>
    # @!attribute cache_node_type
    #   <p>The cache node type for which this value applies.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value for the cache node type.</p>
    #   @return [String]
    class CacheNodeTypeSpecificValue < Struct.new(
      :cache_node_type,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The status of the service update on the cache node</p>
    # @!attribute cache_node_id
    #   <p>The node ID of the cache cluster</p>
    #   @return [String]
    # @!attribute node_update_status
    #   <p>The update status of the node</p>
    #   @return [String]
    # @!attribute node_deletion_date
    #   <p>The deletion date of the node</p>
    #   @return [Time]
    # @!attribute node_update_start_date
    #   <p>The start date of the update for a node</p>
    #   @return [Time]
    # @!attribute node_update_end_date
    #   <p>The end date of the update for a node</p>
    #   @return [Time]
    # @!attribute node_update_initiated_by
    #   <p>Reflects whether the update was initiated by the customer or automatically
    #               applied</p>
    #   @return [String]
    # @!attribute node_update_initiated_date
    #   <p>The date when the update is triggered</p>
    #   @return [Time]
    # @!attribute node_update_status_modified_date
    #   <p>The date when the NodeUpdateStatus was last modified></p>
    #   @return [Time]
    class CacheNodeUpdateStatus < Struct.new(
      :cache_node_id,
      :node_update_status,
      :node_deletion_date,
      :node_update_start_date,
      :node_update_end_date,
      :node_update_initiated_by,
      :node_update_initiated_date,
      :node_update_status_modified_date,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a <code>CreateCacheParameterGroup</code> operation.</p>
    # @!attribute cache_parameter_group_name
    #   <p>The name of the cache parameter group.</p>
    #   @return [String]
    # @!attribute cache_parameter_group_family
    #   <p>The name of the cache parameter group family that this cache parameter group is
    #               compatible with.</p>
    #            <p>Valid values are: <code>memcached1.4</code> | <code>memcached1.5</code> |
    #                   <code>memcached1.6</code> | <code>redis2.6</code> | <code>redis2.8</code> |
    #                   <code>redis3.2</code> | <code>redis4.0</code> | <code>redis5.0</code> |
    #                   <code>redis6.x</code> | <code>redis7</code>
    #            </p>
    #   @return [String]
    # @!attribute description
    #   <p>The description for this cache parameter group.</p>
    #   @return [String]
    # @!attribute is_global
    #   <p>Indicates whether the parameter group is associated with a Global datastore</p>
    #   @return [Boolean]
    # @!attribute arn
    #   <p>The ARN (Amazon Resource Name) of the cache parameter group.</p>
    #   @return [String]
    class CacheParameterGroup < Struct.new(
      :cache_parameter_group_name,
      :cache_parameter_group_family,
      :description,
      :is_global,
      :arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A cache parameter group with the requested name already exists.</p>
    # @!attribute message
    #   @return [String]
    class CacheParameterGroupAlreadyExistsFault < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The requested cache parameter group name does not refer to an existing cache parameter
    #             group.</p>
    # @!attribute message
    #   @return [String]
    class CacheParameterGroupNotFoundFault < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request cannot be processed because it would exceed the maximum number of cache
    #             security groups.</p>
    # @!attribute message
    #   @return [String]
    class CacheParameterGroupQuotaExceededFault < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Status of the cache parameter group.</p>
    # @!attribute cache_parameter_group_name
    #   <p>The name of the cache parameter group.</p>
    #   @return [String]
    # @!attribute parameter_apply_status
    #   <p>The status of parameter updates.</p>
    #   @return [String]
    # @!attribute cache_node_ids_to_reboot
    #   <p>A list of the cache node IDs which need to be rebooted for parameter changes to be
    #               applied. A node ID is a numeric identifier (0001, 0002, etc.).</p>
    #   @return [Array<String>]
    class CacheParameterGroupStatus < Struct.new(
      :cache_parameter_group_name,
      :parameter_apply_status,
      :cache_node_ids_to_reboot,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a <code>DescribeCacheParameterGroups</code> operation.</p>
    # @!attribute marker
    #   <p>Provides an identifier to allow retrieval of paginated results.</p>
    #   @return [String]
    # @!attribute cache_parameter_groups
    #   <p>A list of cache parameter groups. Each element in the list contains detailed
    #               information about one cache parameter group.</p>
    #   @return [Array<Types::CacheParameterGroup>]
    class CacheParameterGroupsMessage < Struct.new(
      :marker,
      :cache_parameter_groups,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of one of the following operations:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>AuthorizeCacheSecurityGroupIngress</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>CreateCacheSecurityGroup</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>RevokeCacheSecurityGroupIngress</code>
    #                </p>
    #             </li>
    #          </ul>
    # @!attribute owner_id
    #   <p>The Amazon account ID of the cache security group owner.</p>
    #   @return [String]
    # @!attribute cache_security_group_name
    #   <p>The name of the cache security group.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the cache security group.</p>
    #   @return [String]
    # @!attribute ec2_security_groups
    #   <p>A list of Amazon EC2 security groups that are associated with this cache security
    #               group.</p>
    #   @return [Array<Types::EC2SecurityGroup>]
    # @!attribute arn
    #   <p>The ARN of the cache security group,</p>
    #   @return [String]
    class CacheSecurityGroup < Struct.new(
      :owner_id,
      :cache_security_group_name,
      :description,
      :ec2_security_groups,
      :arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A cache security group with the specified name already exists.</p>
    # @!attribute message
    #   @return [String]
    class CacheSecurityGroupAlreadyExistsFault < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a cluster's status within a particular cache security group.</p>
    # @!attribute cache_security_group_name
    #   <p>The name of the cache security group.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The membership status in the cache security group. The status changes when a cache
    #               security group is modified, or when the cache security groups assigned to a cluster are
    #               modified.</p>
    #   @return [String]
    class CacheSecurityGroupMembership < Struct.new(
      :cache_security_group_name,
      :status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a <code>DescribeCacheSecurityGroups</code> operation.</p>
    # @!attribute marker
    #   <p>Provides an identifier to allow retrieval of paginated results.</p>
    #   @return [String]
    # @!attribute cache_security_groups
    #   <p>A list of cache security groups. Each element in the list contains detailed
    #               information about one group.</p>
    #   @return [Array<Types::CacheSecurityGroup>]
    class CacheSecurityGroupMessage < Struct.new(
      :marker,
      :cache_security_groups,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The requested cache security group name does not refer to an existing cache security
    #             group.</p>
    # @!attribute message
    #   @return [String]
    class CacheSecurityGroupNotFoundFault < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request cannot be processed because it would exceed the allowed number of cache
    #             security groups.</p>
    # @!attribute message
    #   @return [String]
    class CacheSecurityGroupQuotaExceededFault < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of one of the following operations:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>CreateCacheSubnetGroup</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>ModifyCacheSubnetGroup</code>
    #                </p>
    #             </li>
    #          </ul>
    # @!attribute cache_subnet_group_name
    #   <p>The name of the cache subnet group.</p>
    #   @return [String]
    # @!attribute cache_subnet_group_description
    #   <p>The description of the cache subnet group.</p>
    #   @return [String]
    # @!attribute vpc_id
    #   <p>The Amazon Virtual Private Cloud identifier (VPC ID) of the cache subnet group.</p>
    #   @return [String]
    # @!attribute subnets
    #   <p>A list of subnets associated with the cache subnet group.</p>
    #   @return [Array<Types::Subnet>]
    # @!attribute arn
    #   <p>The ARN (Amazon Resource Name) of the cache subnet group.</p>
    #   @return [String]
    # @!attribute supported_network_types
    #   <p>Either <code>ipv4</code> | <code>ipv6</code> | <code>dual_stack</code>. IPv6 is
    #               supported for workloads using Valkey 7.2 and above, Redis OSS engine version 6.2
    #               to 7.1 or Memcached engine version 1.6.6 and above on all instances built on the <a href="http://aws.amazon.com/ec2/nitro/">Nitro system</a>.</p>
    #   @return [Array<String>]
    class CacheSubnetGroup < Struct.new(
      :cache_subnet_group_name,
      :cache_subnet_group_description,
      :vpc_id,
      :subnets,
      :arn,
      :supported_network_types,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The requested cache subnet group name is already in use by an existing cache subnet
    #             group.</p>
    # @!attribute message
    #   @return [String]
    class CacheSubnetGroupAlreadyExistsFault < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The requested cache subnet group is currently in use.</p>
    # @!attribute message
    #   @return [String]
    class CacheSubnetGroupInUse < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a <code>DescribeCacheSubnetGroups</code> operation.</p>
    # @!attribute marker
    #   <p>Provides an identifier to allow retrieval of paginated results.</p>
    #   @return [String]
    # @!attribute cache_subnet_groups
    #   <p>A list of cache subnet groups. Each element in the list contains detailed information
    #               about one group.</p>
    #   @return [Array<Types::CacheSubnetGroup>]
    class CacheSubnetGroupMessage < Struct.new(
      :marker,
      :cache_subnet_groups,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The requested cache subnet group name does not refer to an existing cache subnet
    #             group.</p>
    # @!attribute message
    #   @return [String]
    class CacheSubnetGroupNotFoundFault < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request cannot be processed because it would exceed the allowed number of cache
    #             subnet groups.</p>
    # @!attribute message
    #   @return [String]
    class CacheSubnetGroupQuotaExceededFault < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request cannot be processed because it would exceed the allowed number of subnets
    #             in a cache subnet group.</p>
    # @!attribute message
    #   @return [String]
    class CacheSubnetQuotaExceededFault < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The usage limits for storage and ElastiCache Processing Units for the cache.</p>
    # @!attribute data_storage
    #   <p> 
    #               The maximum data storage limit in the cache, expressed in Gigabytes.
    #           </p>
    #   @return [Types::DataStorage]
    # @!attribute ecpu_per_second
    #   <p>The configuration for the number of ElastiCache Processing Units (ECPU) the cache can consume per second.</p>
    #   @return [Types::ECPUPerSecond]
    class CacheUsageLimits < Struct.new(
      :data_storage,
      :ecpu_per_second,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration details of the CloudWatch Logs destination.</p>
    # @!attribute log_group
    #   <p>The name of the CloudWatch Logs log group.</p>
    #   @return [String]
    class CloudWatchLogsDestinationDetails < Struct.new(
      :log_group,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request cannot be processed because it would exceed the allowed number of clusters
    #             per customer.</p>
    # @!attribute message
    #   @return [String]
    class ClusterQuotaForCustomerExceededFault < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute replication_group_id
    #   <p>The ID of the replication group to which data is being migrated.</p>
    #   @return [String]
    # @!attribute force
    #   <p>Forces the migration to stop without ensuring that data is in sync. It is recommended
    #               to use this option only to abort the migration and not recommended when application
    #               wants to continue migration to ElastiCache.</p>
    #   @return [Boolean]
    class CompleteMigrationMessage < Struct.new(
      :replication_group_id,
      :force,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute replication_group
    #   <p>Contains all of the attributes of a specific Valkey or Redis OSS replication group.</p>
    #   @return [Types::ReplicationGroup]
    class CompleteMigrationResponse < Struct.new(
      :replication_group,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Node group (shard) configuration options when adding or removing replicas. Each
    #             node group (shard) configuration has the following members: NodeGroupId,
    #             NewReplicaCount, and PreferredAvailabilityZones. </p>
    # @!attribute node_group_id
    #   <p>The 4-digit id for the node group you are configuring. For Valkey or Redis OSS (cluster mode
    #               disabled) replication groups, the node group id is always 0001. To find a Valkey or Redis OSS (cluster mode enabled)'s node group's (shard's) id, see <a href="https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/shard-find-id.html">Finding a Shard's
    #                   Id</a>.</p>
    #   @return [String]
    # @!attribute new_replica_count
    #   <p>The number of replicas you want in this node group at the end of this operation.
    #               The maximum value for <code>NewReplicaCount</code> is 5. The minimum value depends upon
    #               the type of Valkey or Redis OSS replication group you are working with.</p>
    #            <p>The minimum number of replicas in a shard or replication group is:</p>
    #            <ul>
    #               <li>
    #                  <p>Valkey or Redis OSS (cluster mode disabled)</p>
    #                  <ul>
    #                     <li>
    #                        <p>If Multi-AZ: 1</p>
    #                     </li>
    #                     <li>
    #                        <p>If Multi-AZ: 0</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>Valkey or Redis OSS (cluster mode enabled): 0 (though you will not be able to failover to
    #                       a replica if your primary node fails)</p>
    #               </li>
    #            </ul>
    #   @return [Integer]
    # @!attribute preferred_availability_zones
    #   <p>A list of <code>PreferredAvailabilityZone</code> strings that specify which
    #               availability zones the replication group's nodes are to be in. The nummber of
    #                   <code>PreferredAvailabilityZone</code> values must equal the value of
    #                   <code>NewReplicaCount</code> plus 1 to account for the primary node. If this member
    #               of <code>ReplicaConfiguration</code> is omitted, ElastiCache selects the
    #               availability zone for each of the replicas.</p>
    #   @return [Array<String>]
    # @!attribute preferred_outpost_arns
    #   <p>The outpost ARNs in which the cache cluster is created.</p>
    #   @return [Array<String>]
    class ConfigureShard < Struct.new(
      :node_group_id,
      :new_replica_count,
      :preferred_availability_zones,
      :preferred_outpost_arns,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute source_serverless_cache_snapshot_name
    #   <p>The identifier of the existing serverless cache’s snapshot to be copied. Available for Valkey, Redis OSS and Serverless Memcached only.</p>
    #   @return [String]
    # @!attribute target_serverless_cache_snapshot_name
    #   <p>The identifier for the snapshot to be created. Available for Valkey, Redis OSS and Serverless Memcached only.</p>
    #   @return [String]
    # @!attribute kms_key_id
    #   <p>The identifier of the KMS key used to encrypt the target snapshot. Available for Valkey, Redis OSS and Serverless Memcached only.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of tags to be added to the target snapshot resource. A tag is a key-value pair. Available for Valkey, Redis OSS and Serverless Memcached only. Default: NULL</p>
    #   @return [Array<Types::Tag>]
    class CopyServerlessCacheSnapshotRequest < Struct.new(
      :source_serverless_cache_snapshot_name,
      :target_serverless_cache_snapshot_name,
      :kms_key_id,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute serverless_cache_snapshot
    #   <p>The response for the attempt to copy the serverless cache snapshot. Available for Valkey, Redis OSS and Serverless Memcached only.</p>
    #   @return [Types::ServerlessCacheSnapshot]
    class CopyServerlessCacheSnapshotResponse < Struct.new(
      :serverless_cache_snapshot,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of a <code>CopySnapshotMessage</code> operation.</p>
    # @!attribute source_snapshot_name
    #   <p>The name of an existing snapshot from which to make a copy.</p>
    #   @return [String]
    # @!attribute target_snapshot_name
    #   <p>A name for the snapshot copy. ElastiCache does not permit overwriting a snapshot,
    #               therefore this name must be unique within its context - ElastiCache or an Amazon S3
    #               bucket if exporting.</p>
    #   @return [String]
    # @!attribute target_bucket
    #   <p>The Amazon S3 bucket to which the snapshot is exported. This parameter is used only
    #               when exporting a snapshot for external access.</p>
    #            <p>When using this parameter to export a snapshot, be sure Amazon ElastiCache has the
    #               needed permissions to this S3 bucket. For more information, see <a href="https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/backups-exporting.html#backups-exporting-grant-access">Step 2: Grant ElastiCache Access to Your Amazon S3 Bucket</a> in the
    #                   <i>Amazon ElastiCache User Guide</i>.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/backups-exporting.html">Exporting a
    #                   Snapshot</a> in the <i>Amazon ElastiCache User Guide</i>.</p>
    #   @return [String]
    # @!attribute kms_key_id
    #   <p>The ID of the KMS key used to encrypt the target snapshot.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of tags to be added to this resource. A tag is a key-value pair. A tag key must
    #               be accompanied by a tag value, although null is accepted.</p>
    #   @return [Array<Types::Tag>]
    class CopySnapshotMessage < Struct.new(
      :source_snapshot_name,
      :target_snapshot_name,
      :target_bucket,
      :kms_key_id,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute snapshot
    #   <p>Represents a copy of an entire Valkey or Redis OSS cluster as of the time when the snapshot was
    #               taken.</p>
    #   @return [Types::Snapshot]
    class CopySnapshotResult < Struct.new(
      :snapshot,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of a CreateCacheCluster operation.</p>
    # @!attribute cache_cluster_id
    #   <p>The node group (shard) identifier. This parameter is stored as a lowercase
    #               string.</p>
    #            <p>
    #               <b>Constraints:</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>A name must contain from 1 to 50 alphanumeric characters or hyphens.</p>
    #               </li>
    #               <li>
    #                  <p>The first character must be a letter.</p>
    #               </li>
    #               <li>
    #                  <p>A name cannot end with a hyphen or contain two consecutive hyphens.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute replication_group_id
    #   <p>The ID of the replication group to which this cluster should belong. If this parameter
    #               is specified, the cluster is added to the specified replication group as a read replica;
    #               otherwise, the cluster is a standalone primary that is not part of any replication
    #               group.</p>
    #            <p>If the specified replication group is Multi-AZ enabled and the Availability Zone is
    #               not specified, the cluster is created in Availability Zones that provide the best spread
    #               of read replicas across Availability Zones.</p>
    #            <note>
    #               <p>This parameter is only valid if the <code>Engine</code> parameter is
    #                       <code>redis</code>.</p>
    #            </note>
    #   @return [String]
    # @!attribute az_mode
    #   <p>Specifies whether the nodes in this Memcached cluster are created in a single
    #               Availability Zone or created across multiple Availability Zones in the cluster's
    #               region.</p>
    #            <p>This parameter is only supported for Memcached clusters.</p>
    #            <p>If the <code>AZMode</code> and <code>PreferredAvailabilityZones</code> are not
    #               specified, ElastiCache assumes <code>single-az</code> mode.</p>
    #   @return [String]
    # @!attribute preferred_availability_zone
    #   <p>The EC2 Availability Zone in which the cluster is created.</p>
    #            <p>All nodes belonging to this cluster are placed in the preferred Availability Zone. If
    #               you want to create your nodes across multiple Availability Zones, use
    #                   <code>PreferredAvailabilityZones</code>.</p>
    #            <p>Default: System chosen Availability Zone.</p>
    #   @return [String]
    # @!attribute preferred_availability_zones
    #   <p>A list of the Availability Zones in which cache nodes are created. The order of the
    #               zones in the list is not important.</p>
    #            <p>This option is only supported on Memcached.</p>
    #            <note>
    #               <p>If you are creating your cluster in an Amazon VPC (recommended) you can only
    #                   locate nodes in Availability Zones that are associated with the subnets in the
    #                   selected subnet group.</p>
    #               <p>The number of Availability Zones listed must equal the value of
    #                       <code>NumCacheNodes</code>.</p>
    #            </note>
    #            <p>If you want all the nodes in the same Availability Zone, use
    #                   <code>PreferredAvailabilityZone</code> instead, or repeat the Availability Zone
    #               multiple times in the list.</p>
    #            <p>Default: System chosen Availability Zones.</p>
    #   @return [Array<String>]
    # @!attribute num_cache_nodes
    #   <p>The initial number of cache nodes that the cluster has.</p>
    #            <p>For clusters running Valkey or Redis OSS, this value must be 1. For clusters running Memcached, this
    #               value must be between 1 and 40.</p>
    #            <p>If you need more than 40 nodes for your Memcached cluster, please fill out the
    #               ElastiCache Limit Increase Request form at <a href="http://aws.amazon.com/contact-us/elasticache-node-limit-request/">http://aws.amazon.com/contact-us/elasticache-node-limit-request/</a>.</p>
    #   @return [Integer]
    # @!attribute cache_node_type
    #   <p>The compute and memory capacity of the nodes in the node group (shard).</p>
    #            <p>The following node types are supported by ElastiCache. Generally speaking, the current
    #               generation types provide more memory and computational power at lower cost when compared
    #               to their equivalent previous generation counterparts.</p>
    #            <ul>
    #               <li>
    #                  <p>General purpose:</p>
    #                  <ul>
    #                     <li>
    #                        <p>Current generation: </p>
    #                        <p>
    #                           <b>M7g node types</b>:
    #       					<code>cache.m7g.large</code>,
    #       					<code>cache.m7g.xlarge</code>,
    #       					<code>cache.m7g.2xlarge</code>,
    #       					<code>cache.m7g.4xlarge</code>,
    #       					<code>cache.m7g.8xlarge</code>,
    #       					<code>cache.m7g.12xlarge</code>,
    #       					<code>cache.m7g.16xlarge</code>
    #                        </p>
    #                        <note>
    #                           <p>For region availability, see <a href="https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/CacheNodes.SupportedTypes.html#CacheNodes.SupportedTypesByRegion">Supported Node Types</a>
    #                           </p>
    #                        </note>
    #                        <p>
    #                           <b>M6g node types</b> (available only for Redis OSS engine version 5.0.6 onward and for Memcached engine version 1.5.16 onward):
    #   					    
    #   					 	<code>cache.m6g.large</code>,
    #   							<code>cache.m6g.xlarge</code>,
    #   							<code>cache.m6g.2xlarge</code>,
    #   							<code>cache.m6g.4xlarge</code>,
    #   							<code>cache.m6g.8xlarge</code>,
    #   							<code>cache.m6g.12xlarge</code>,
    #   							<code>cache.m6g.16xlarge</code>
    #                        </p>
    #                        <p>
    #                           <b>M5 node types:</b>
    #                           <code>cache.m5.large</code>,
    #       						<code>cache.m5.xlarge</code>,
    #       						<code>cache.m5.2xlarge</code>,
    #       						<code>cache.m5.4xlarge</code>,
    #       						<code>cache.m5.12xlarge</code>,
    #       						<code>cache.m5.24xlarge</code>
    #                        </p>
    #                        <p>
    #                           <b>M4 node types:</b>
    #                           <code>cache.m4.large</code>,
    #       						<code>cache.m4.xlarge</code>,
    #       						<code>cache.m4.2xlarge</code>,
    #       						<code>cache.m4.4xlarge</code>,
    #       						<code>cache.m4.10xlarge</code>
    #                        </p>
    #                        <p>
    #                           <b>T4g node types</b> (available only for Redis OSS engine version 5.0.6 onward and Memcached engine version 1.5.16 onward):
    #   					        <code>cache.t4g.micro</code>,
    #   					        <code>cache.t4g.small</code>,
    #   					        <code>cache.t4g.medium</code>
    #                        </p>
    #                        <p>
    #                           <b>T3 node types:</b>
    #                           <code>cache.t3.micro</code>, 
    #       						<code>cache.t3.small</code>,
    #       						<code>cache.t3.medium</code>
    #                        </p>
    #                        <p>
    #                           <b>T2 node types:</b>
    #                           <code>cache.t2.micro</code>, 
    #       						<code>cache.t2.small</code>,
    #       						<code>cache.t2.medium</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>Previous generation: (not recommended. Existing clusters are still supported but creation of new clusters is not supported for these types.)</p>
    #                        <p>
    #                           <b>T1 node types:</b>
    #                           <code>cache.t1.micro</code>
    #                        </p>
    #                        <p>
    #                           <b>M1 node types:</b>
    #                           <code>cache.m1.small</code>, 
    #   						   <code>cache.m1.medium</code>, 
    #   						   <code>cache.m1.large</code>,
    #   						   <code>cache.m1.xlarge</code>
    #                        </p>
    #                        <p>
    #                           <b>M3 node types:</b>
    #                           <code>cache.m3.medium</code>,
    #       						<code>cache.m3.large</code>, 
    #       						<code>cache.m3.xlarge</code>,
    #       						<code>cache.m3.2xlarge</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>Compute optimized:</p>
    #                  <ul>
    #                     <li>
    #                        <p>Previous generation: (not recommended. Existing clusters are still supported but creation of new clusters is not supported for these types.)</p>
    #                        <p>
    #                           <b>C1 node types:</b>
    #                           <code>cache.c1.xlarge</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>Memory optimized:</p>
    #                  <ul>
    #                     <li>
    #                        <p>Current generation: </p>
    #                        <p>
    #                           <b>R7g node types</b>:	
    #   							<code>cache.r7g.large</code>,
    #   							<code>cache.r7g.xlarge</code>,
    #   							<code>cache.r7g.2xlarge</code>,
    #   							<code>cache.r7g.4xlarge</code>,
    #   							<code>cache.r7g.8xlarge</code>,
    #   							<code>cache.r7g.12xlarge</code>,
    #   							<code>cache.r7g.16xlarge</code>
    #                        </p>
    #                        <note>
    #                           <p>For region availability, see <a href="https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/CacheNodes.SupportedTypes.html#CacheNodes.SupportedTypesByRegion">Supported Node Types</a>
    #                           </p>
    #                        </note>
    #                        <p>
    #                           <b>R6g node types</b> (available only for Redis OSS engine version 5.0.6 onward and for Memcached engine version 1.5.16 onward):
    #   							<code>cache.r6g.large</code>,
    #   							<code>cache.r6g.xlarge</code>,
    #   							<code>cache.r6g.2xlarge</code>,
    #   							<code>cache.r6g.4xlarge</code>,
    #   							<code>cache.r6g.8xlarge</code>,
    #   							<code>cache.r6g.12xlarge</code>,
    #   							<code>cache.r6g.16xlarge</code>
    #                        </p>
    #                        <p>
    #                           <b>R5 node types:</b>
    #                           <code>cache.r5.large</code>,
    #       					   <code>cache.r5.xlarge</code>,
    #       					   <code>cache.r5.2xlarge</code>,
    #       					   <code>cache.r5.4xlarge</code>,
    #       					   <code>cache.r5.12xlarge</code>,
    #       					   <code>cache.r5.24xlarge</code>
    #                        </p>
    #                        <p>
    #                           <b>R4 node types:</b>
    #                           <code>cache.r4.large</code>,
    #       					   <code>cache.r4.xlarge</code>,
    #       					   <code>cache.r4.2xlarge</code>,
    #       					   <code>cache.r4.4xlarge</code>,
    #       					   <code>cache.r4.8xlarge</code>,
    #       					   <code>cache.r4.16xlarge</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>Previous generation: (not recommended. Existing clusters are still supported but creation of new clusters is not supported for these types.)</p>
    #                        <p>
    #                           <b>M2 node types:</b>
    #                           <code>cache.m2.xlarge</code>, 
    #       						<code>cache.m2.2xlarge</code>,
    #       						<code>cache.m2.4xlarge</code>
    #                        </p>
    #                        <p>
    #                           <b>R3 node types:</b>
    #                           <code>cache.r3.large</code>, 
    #       						<code>cache.r3.xlarge</code>,
    #       						<code>cache.r3.2xlarge</code>,  
    #       						<code>cache.r3.4xlarge</code>,
    #       						<code>cache.r3.8xlarge</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #            </ul>
    #            <p>
    #               <b>Additional node type info</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>All current generation instance types are created in Amazon VPC by
    #                       default.</p>
    #               </li>
    #               <li>
    #                  <p>Valkey or Redis OSS append-only files (AOF) are not supported for T1 or T2 instances.</p>
    #               </li>
    #               <li>
    #                  <p>Valkey or Redis OSS Multi-AZ with automatic failover is not supported on T1
    #                       instances.</p>
    #               </li>
    #               <li>
    #                  <p>The configuration variables <code>appendonly</code> and
    #                           <code>appendfsync</code> are not supported on Valkey, or on Redis OSS version 2.8.22 and
    #                       later.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute engine
    #   <p>The name of the cache engine to be used for this cluster.</p>
    #            <p>Valid values for this parameter are: <code>memcached</code> |
    #               <code>redis</code>
    #            </p>
    #   @return [String]
    # @!attribute engine_version
    #   <p>The version number of the cache engine to be used for this cluster. To view the
    #               supported cache engine versions, use the DescribeCacheEngineVersions operation.</p>
    #            <p>
    #               <b>Important:</b> You can upgrade to a newer engine version
    #               (see <a href="https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/SelectEngine.html#VersionManagement">Selecting
    #                   a Cache Engine and Version</a>), but you cannot downgrade to an earlier engine
    #               version. If you want to use an earlier engine version, you must delete the existing
    #               cluster or replication group and create it anew with the earlier engine version. </p>
    #   @return [String]
    # @!attribute cache_parameter_group_name
    #   <p>The name of the parameter group to associate with this cluster. If this argument is
    #               omitted, the default parameter group for the specified engine is used. You cannot use
    #               any parameter group which has <code>cluster-enabled='yes'</code> when creating a
    #               cluster.</p>
    #   @return [String]
    # @!attribute cache_subnet_group_name
    #   <p>The name of the subnet group to be used for the cluster.</p>
    #            <p>Use this parameter only when you are creating a cluster in an Amazon Virtual Private
    #               Cloud (Amazon VPC).</p>
    #            <important>
    #               <p>If you're going to launch your cluster in an Amazon VPC, you need to create a
    #                   subnet group before you start creating a cluster. For more information, see <a href="https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/SubnetGroups.html">Subnets and Subnet Groups</a>.</p>
    #            </important>
    #   @return [String]
    # @!attribute cache_security_group_names
    #   <p>A list of security group names to associate with this cluster.</p>
    #            <p>Use this parameter only when you are creating a cluster outside of an Amazon Virtual
    #               Private Cloud (Amazon VPC).</p>
    #   @return [Array<String>]
    # @!attribute security_group_ids
    #   <p>One or more VPC security groups associated with the cluster.</p>
    #            <p>Use this parameter only when you are creating a cluster in an Amazon Virtual Private
    #               Cloud (Amazon VPC).</p>
    #   @return [Array<String>]
    # @!attribute tags
    #   <p>A list of tags to be added to this resource.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute snapshot_arns
    #   <p>A single-element string list containing an Amazon Resource Name (ARN) that uniquely
    #               identifies a Valkey or Redis OSS RDB snapshot file stored in Amazon S3. The snapshot file is used to
    #               populate the node group (shard). The Amazon S3 object name in the ARN cannot contain any
    #               commas.</p>
    #            <note>
    #               <p>This parameter is only valid if the <code>Engine</code> parameter is
    #                       <code>redis</code>.</p>
    #            </note>
    #            <p>Example of an Amazon S3 ARN: <code>arn:aws:s3:::my_bucket/snapshot1.rdb</code>
    #            </p>
    #   @return [Array<String>]
    # @!attribute snapshot_name
    #   <p>The name of a Valkey or Redis OSS snapshot from which to restore data into the new node group
    #               (shard). The snapshot status changes to <code>restoring</code> while the new node group
    #               (shard) is being created.</p>
    #            <note>
    #               <p>This parameter is only valid if the <code>Engine</code> parameter is
    #                       <code>redis</code>.</p>
    #            </note>
    #   @return [String]
    # @!attribute preferred_maintenance_window
    #   <p>Specifies the weekly time range during which maintenance on the cluster is performed.
    #               It is specified as a range in the format ddd:hh24:mi-ddd:hh24:mi (24H Clock UTC). The
    #               minimum maintenance window is a 60 minute period. </p>
    #   @return [String]
    # @!attribute port
    #   <p>The port number on which each of the cache nodes accepts connections.</p>
    #   @return [Integer]
    # @!attribute notification_topic_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon Simple Notification Service (SNS) topic
    #               to which notifications are sent.</p>
    #            <note>
    #               <p>The Amazon SNS topic owner must be the same as the cluster owner.</p>
    #            </note>
    #   @return [String]
    # @!attribute auto_minor_version_upgrade
    #   <p> If you are running Valkey 7.2 and above or Redis OSS engine version 6.0 and above, set this parameter to yes 
    #               to opt-in to the next auto minor version upgrade campaign. This parameter is
    #               disabled for previous versions.  </p>
    #   @return [Boolean]
    # @!attribute snapshot_retention_limit
    #   <p>The number of days for which ElastiCache retains automatic snapshots before deleting
    #               them. For example, if you set <code>SnapshotRetentionLimit</code> to 5, a snapshot taken
    #               today is retained for 5 days before being deleted.</p>
    #            <note>
    #               <p>This parameter is only valid if the <code>Engine</code> parameter is
    #                       <code>redis</code>.</p>
    #            </note>
    #            <p>Default: 0 (i.e., automatic backups are disabled for this cache cluster).</p>
    #   @return [Integer]
    # @!attribute snapshot_window
    #   <p>The daily time range (in UTC) during which ElastiCache begins taking a daily snapshot
    #               of your node group (shard).</p>
    #            <p>Example: <code>05:00-09:00</code>
    #            </p>
    #            <p>If you do not specify this parameter, ElastiCache automatically chooses an appropriate
    #               time range.</p>
    #            <note>
    #               <p>This parameter is only valid if the <code>Engine</code> parameter is
    #                       <code>redis</code>.</p>
    #            </note>
    #   @return [String]
    # @!attribute auth_token
    #   <p>
    #               <b>Reserved parameter.</b> The password used to access a
    #               password protected server.</p>
    #            <p>Password constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must be only printable ASCII characters.</p>
    #               </li>
    #               <li>
    #                  <p>Must be at least 16 characters and no more than 128 characters in
    #                       length.</p>
    #               </li>
    #               <li>
    #                  <p>The only permitted printable special characters are !, &, #, $, ^, <,
    #                       >, and -. Other printable special characters cannot be used in the AUTH
    #                       token.</p>
    #               </li>
    #            </ul>
    #            <p>For more information, see <a href="http://redis.io/commands/AUTH">AUTH
    #                   password</a> at http://redis.io/commands/AUTH.</p>
    #   @return [String]
    # @!attribute outpost_mode
    #   <p>Specifies whether the nodes in the cluster are created in a single outpost or across
    #               multiple outposts.</p>
    #   @return [String]
    # @!attribute preferred_outpost_arn
    #   <p>The outpost ARN in which the cache cluster is created.</p>
    #   @return [String]
    # @!attribute preferred_outpost_arns
    #   <p>The outpost ARNs in which the cache cluster is created.</p>
    #   @return [Array<String>]
    # @!attribute log_delivery_configurations
    #   <p>Specifies the destination, format and type of the logs. </p>
    #   @return [Array<Types::LogDeliveryConfigurationRequest>]
    # @!attribute transit_encryption_enabled
    #   <p>A flag that enables in-transit encryption when set to true.</p>
    #   @return [Boolean]
    # @!attribute network_type
    #   <p>Must be either <code>ipv4</code> | <code>ipv6</code> | <code>dual_stack</code>. IPv6
    #               is supported for workloads using Valkey 7.2 and above, Redis OSS engine version 6.2 to 7.1
    #               and Memcached engine version 1.6.6 and above on all instances built on the <a href="http://aws.amazon.com/ec2/nitro/">Nitro system</a>. </p>
    #   @return [String]
    # @!attribute ip_discovery
    #   <p>The network type you choose when modifying a cluster, either <code>ipv4</code> |
    #               <code>ipv6</code>. IPv6 is supported for workloads using Valkey 7.2 and above, Redis OSS engine version 6.2
    #               to 7.1 and Memcached engine version 1.6.6 and above on all instances built on the <a href="http://aws.amazon.com/ec2/nitro/">Nitro system</a>.</p>
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
      :snapshot_window,
      :auth_token,
      :outpost_mode,
      :preferred_outpost_arn,
      :preferred_outpost_arns,
      :log_delivery_configurations,
      :transit_encryption_enabled,
      :network_type,
      :ip_discovery,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute cache_cluster
    #   <p>Contains all of the attributes of a specific cluster.</p>
    #   @return [Types::CacheCluster]
    class CreateCacheClusterResult < Struct.new(
      :cache_cluster,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of a <code>CreateCacheParameterGroup</code> operation.</p>
    # @!attribute cache_parameter_group_name
    #   <p>A user-specified name for the cache parameter group.</p>
    #   @return [String]
    # @!attribute cache_parameter_group_family
    #   <p>The name of the cache parameter group family that the cache parameter group can be
    #               used with.</p>
    #            <p>Valid values are: <code>valkey8</code> | <code>valkey7</code> | <code>memcached1.4</code> | <code>memcached1.5</code> | <code>memcached1.6</code> | <code>redis2.6</code> | <code>redis2.8</code> |
    #   <code>redis3.2</code> | <code>redis4.0</code> | <code>redis5.0</code> | <code>redis6.x</code> | <code>redis7</code>
    #            </p>
    #   @return [String]
    # @!attribute description
    #   <p>A user-specified description for the cache parameter group.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of tags to be added to this resource. A tag is a key-value pair. A tag key must
    #               be accompanied by a tag value, although null is accepted.</p>
    #   @return [Array<Types::Tag>]
    class CreateCacheParameterGroupMessage < Struct.new(
      :cache_parameter_group_name,
      :cache_parameter_group_family,
      :description,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute cache_parameter_group
    #   <p>Represents the output of a <code>CreateCacheParameterGroup</code> operation.</p>
    #   @return [Types::CacheParameterGroup]
    class CreateCacheParameterGroupResult < Struct.new(
      :cache_parameter_group,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of a <code>CreateCacheSecurityGroup</code> operation.</p>
    # @!attribute cache_security_group_name
    #   <p>A name for the cache security group. This value is stored as a lowercase
    #               string.</p>
    #            <p>Constraints: Must contain no more than 255 alphanumeric characters. Cannot be the word
    #               "Default".</p>
    #            <p>Example: <code>mysecuritygroup</code>
    #            </p>
    #   @return [String]
    # @!attribute description
    #   <p>A description for the cache security group.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of tags to be added to this resource. A tag is a key-value pair. A tag key must
    #               be accompanied by a tag value, although null is accepted.</p>
    #   @return [Array<Types::Tag>]
    class CreateCacheSecurityGroupMessage < Struct.new(
      :cache_security_group_name,
      :description,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute cache_security_group
    #   <p>Represents the output of one of the following operations:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>AuthorizeCacheSecurityGroupIngress</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CreateCacheSecurityGroup</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>RevokeCacheSecurityGroupIngress</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [Types::CacheSecurityGroup]
    class CreateCacheSecurityGroupResult < Struct.new(
      :cache_security_group,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of a <code>CreateCacheSubnetGroup</code> operation.</p>
    # @!attribute cache_subnet_group_name
    #   <p>A name for the cache subnet group. This value is stored as a lowercase string.</p>
    #            <p>Constraints: Must contain no more than 255 alphanumeric characters or hyphens.</p>
    #            <p>Example: <code>mysubnetgroup</code>
    #            </p>
    #   @return [String]
    # @!attribute cache_subnet_group_description
    #   <p>A description for the cache subnet group.</p>
    #   @return [String]
    # @!attribute subnet_ids
    #   <p>A list of VPC subnet IDs for the cache subnet group.</p>
    #   @return [Array<String>]
    # @!attribute tags
    #   <p>A list of tags to be added to this resource. A tag is a key-value pair. A tag key must
    #               be accompanied by a tag value, although null is accepted.</p>
    #   @return [Array<Types::Tag>]
    class CreateCacheSubnetGroupMessage < Struct.new(
      :cache_subnet_group_name,
      :cache_subnet_group_description,
      :subnet_ids,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute cache_subnet_group
    #   <p>Represents the output of one of the following operations:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CreateCacheSubnetGroup</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ModifyCacheSubnetGroup</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [Types::CacheSubnetGroup]
    class CreateCacheSubnetGroupResult < Struct.new(
      :cache_subnet_group,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute global_replication_group_id_suffix
    #   <p>The suffix name of a Global datastore. Amazon ElastiCache automatically applies a
    #               prefix to the Global datastore ID when it is created. Each Amazon Region has its own
    #               prefix. For instance, a Global datastore ID created in the US-West-1 region will begin
    #               with "dsdfu" along with the suffix name you provide. The suffix, combined with the
    #               auto-generated prefix, guarantees uniqueness of the Global datastore name across
    #               multiple regions. </p>
    #            <p>For a full list of Amazon Regions and their respective Global datastore iD prefixes,
    #               see <a href="http://docs.aws.amazon.com/AmazonElastiCache/latest/dg/Redis-Global-Datastores-CLI.html">Using the Amazon CLI with Global datastores </a>.</p>
    #   @return [String]
    # @!attribute global_replication_group_description
    #   <p>Provides details of the Global datastore</p>
    #   @return [String]
    # @!attribute primary_replication_group_id
    #   <p>The name of the primary cluster that accepts writes and will replicate updates to the
    #               secondary cluster.</p>
    #   @return [String]
    class CreateGlobalReplicationGroupMessage < Struct.new(
      :global_replication_group_id_suffix,
      :global_replication_group_description,
      :primary_replication_group_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute global_replication_group
    #   <p>Consists of a primary cluster that accepts writes and an associated secondary cluster
    #               that resides in a different Amazon region. The secondary cluster accepts only reads. The
    #               primary cluster automatically replicates updates to the secondary cluster.</p>
    #            <ul>
    #               <li>
    #                  <p>The <b>GlobalReplicationGroupIdSuffix</b> represents
    #                       the name of the Global datastore, which is what you use to associate a secondary
    #                       cluster.</p>
    #               </li>
    #            </ul>
    #   @return [Types::GlobalReplicationGroup]
    class CreateGlobalReplicationGroupResult < Struct.new(
      :global_replication_group,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of a <code>CreateReplicationGroup</code> operation.</p>
    # @!attribute replication_group_id
    #   <p>The replication group identifier. This parameter is stored as a lowercase
    #               string.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>A name must contain from 1 to 40 alphanumeric characters or hyphens.</p>
    #               </li>
    #               <li>
    #                  <p>The first character must be a letter.</p>
    #               </li>
    #               <li>
    #                  <p>A name cannot end with a hyphen or contain two consecutive hyphens.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute replication_group_description
    #   <p>A user-created description for the replication group.</p>
    #   @return [String]
    # @!attribute global_replication_group_id
    #   <p>The name of the Global datastore</p>
    #   @return [String]
    # @!attribute primary_cluster_id
    #   <p>The identifier of the cluster that serves as the primary for this replication group.
    #               This cluster must already exist and have a status of <code>available</code>.</p>
    #            <p>This parameter is not required if <code>NumCacheClusters</code>,
    #                   <code>NumNodeGroups</code>, or <code>ReplicasPerNodeGroup</code> is
    #               specified.</p>
    #   @return [String]
    # @!attribute automatic_failover_enabled
    #   <p>Specifies whether a read-only replica is automatically promoted to read/write primary
    #               if the existing primary fails.</p>
    #            <p>
    #               <code>AutomaticFailoverEnabled</code> must be enabled for Valkey or Redis OSS (cluster mode enabled)
    #               replication groups.</p>
    #            <p>Default: false</p>
    #   @return [Boolean]
    # @!attribute multi_az_enabled
    #   <p>A flag indicating if you have Multi-AZ enabled to enhance fault tolerance. For more
    #               information, see <a href="http://docs.aws.amazon.com/AmazonElastiCache/latest/dg/AutoFailover.html">Minimizing Downtime: Multi-AZ</a>.</p>
    #   @return [Boolean]
    # @!attribute num_cache_clusters
    #   <p>The number of clusters this replication group initially has.</p>
    #            <p>This parameter is not used if there is more than one node group (shard). You should
    #               use <code>ReplicasPerNodeGroup</code> instead.</p>
    #            <p>If <code>AutomaticFailoverEnabled</code> is <code>true</code>, the value of this
    #               parameter must be at least 2. If <code>AutomaticFailoverEnabled</code> is
    #                   <code>false</code> you can omit this parameter (it will default to 1), or you can
    #               explicitly set it to a value between 2 and 6.</p>
    #            <p>The maximum permitted value for <code>NumCacheClusters</code> is 6 (1 primary plus 5
    #               replicas).</p>
    #   @return [Integer]
    # @!attribute preferred_cache_cluster_a_zs
    #   <p>A list of EC2 Availability Zones in which the replication group's clusters are
    #               created. The order of the Availability Zones in the list is the order in which clusters
    #               are allocated. The primary cluster is created in the first AZ in the list.</p>
    #            <p>This parameter is not used if there is more than one node group (shard). You should
    #               use <code>NodeGroupConfiguration</code> instead.</p>
    #            <note>
    #               <p>If you are creating your replication group in an Amazon VPC (recommended), you can
    #                   only locate clusters in Availability Zones associated with the subnets in the
    #                   selected subnet group.</p>
    #               <p>The number of Availability Zones listed must equal the value of
    #                       <code>NumCacheClusters</code>.</p>
    #            </note>
    #            <p>Default: system chosen Availability Zones.</p>
    #   @return [Array<String>]
    # @!attribute num_node_groups
    #   <p>An optional parameter that specifies the number of node groups (shards) for this Valkey or Redis OSS (cluster mode enabled) replication group. For Valkey or Redis OSS (cluster mode disabled) either omit
    #               this parameter or set it to 1.</p>
    #            <p>Default: 1</p>
    #   @return [Integer]
    # @!attribute replicas_per_node_group
    #   <p>An optional parameter that specifies the number of replica nodes in each node group
    #               (shard). Valid values are 0 to 5.</p>
    #   @return [Integer]
    # @!attribute node_group_configuration
    #   <p>A list of node group (shard) configuration options. Each node group (shard)
    #               configuration has the following members: <code>PrimaryAvailabilityZone</code>,
    #                   <code>ReplicaAvailabilityZones</code>, <code>ReplicaCount</code>, and
    #                   <code>Slots</code>.</p>
    #            <p>If you're creating a Valkey or Redis OSS (cluster mode disabled) or a Valkey or Redis OSS (cluster mode enabled)
    #               replication group, you can use this parameter to individually configure each node group
    #               (shard), or you can omit this parameter. However, it is required when seeding a Valkey or Redis OSS (cluster mode enabled) cluster from a S3 rdb file. You must configure each node group
    #               (shard) using this parameter because you must specify the slots for each node
    #               group.</p>
    #   @return [Array<Types::NodeGroupConfiguration>]
    # @!attribute cache_node_type
    #   <p>The compute and memory capacity of the nodes in the node group (shard).</p>
    #            <p>The following node types are supported by ElastiCache. Generally speaking, the current
    #               generation types provide more memory and computational power at lower cost when compared
    #               to their equivalent previous generation counterparts.</p>
    #            <ul>
    #               <li>
    #                  <p>General purpose:</p>
    #                  <ul>
    #                     <li>
    #                        <p>Current generation: </p>
    #                        <p>
    #                           <b>M7g node types</b>:
    #       					<code>cache.m7g.large</code>,
    #       					<code>cache.m7g.xlarge</code>,
    #       					<code>cache.m7g.2xlarge</code>,
    #       					<code>cache.m7g.4xlarge</code>,
    #       					<code>cache.m7g.8xlarge</code>,
    #       					<code>cache.m7g.12xlarge</code>,
    #       					<code>cache.m7g.16xlarge</code>
    #                        </p>
    #                        <note>
    #                           <p>For region availability, see <a href="https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/CacheNodes.SupportedTypes.html#CacheNodes.SupportedTypesByRegion">Supported Node Types</a>
    #                           </p>
    #                        </note>
    #                        <p>
    #                           <b>M6g node types</b> (available only for Redis OSS engine version 5.0.6 onward and for Memcached engine version 1.5.16 onward):
    #   					    
    #   					 	<code>cache.m6g.large</code>,
    #   							<code>cache.m6g.xlarge</code>,
    #   							<code>cache.m6g.2xlarge</code>,
    #   							<code>cache.m6g.4xlarge</code>,
    #   							<code>cache.m6g.8xlarge</code>,
    #   							<code>cache.m6g.12xlarge</code>,
    #   							<code>cache.m6g.16xlarge</code>
    #                        </p>
    #                        <p>
    #                           <b>M5 node types:</b>
    #                           <code>cache.m5.large</code>,
    #       						<code>cache.m5.xlarge</code>,
    #       						<code>cache.m5.2xlarge</code>,
    #       						<code>cache.m5.4xlarge</code>,
    #       						<code>cache.m5.12xlarge</code>,
    #       						<code>cache.m5.24xlarge</code>
    #                        </p>
    #                        <p>
    #                           <b>M4 node types:</b>
    #                           <code>cache.m4.large</code>,
    #       						<code>cache.m4.xlarge</code>,
    #       						<code>cache.m4.2xlarge</code>,
    #       						<code>cache.m4.4xlarge</code>,
    #       						<code>cache.m4.10xlarge</code>
    #                        </p>
    #                        <p>
    #                           <b>T4g node types</b> (available only for Redis OSS engine version 5.0.6 onward and Memcached engine version 1.5.16 onward):
    #   					        <code>cache.t4g.micro</code>,
    #   					        <code>cache.t4g.small</code>,
    #   					        <code>cache.t4g.medium</code>
    #                        </p>
    #                        <p>
    #                           <b>T3 node types:</b>
    #                           <code>cache.t3.micro</code>, 
    #       						<code>cache.t3.small</code>,
    #       						<code>cache.t3.medium</code>
    #                        </p>
    #                        <p>
    #                           <b>T2 node types:</b>
    #                           <code>cache.t2.micro</code>, 
    #       						<code>cache.t2.small</code>,
    #       						<code>cache.t2.medium</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>Previous generation: (not recommended. Existing clusters are still supported but creation of new clusters is not supported for these types.)</p>
    #                        <p>
    #                           <b>T1 node types:</b>
    #                           <code>cache.t1.micro</code>
    #                        </p>
    #                        <p>
    #                           <b>M1 node types:</b>
    #                           <code>cache.m1.small</code>, 
    #   						   <code>cache.m1.medium</code>, 
    #   						   <code>cache.m1.large</code>,
    #   						   <code>cache.m1.xlarge</code>
    #                        </p>
    #                        <p>
    #                           <b>M3 node types:</b>
    #                           <code>cache.m3.medium</code>,
    #       						<code>cache.m3.large</code>, 
    #       						<code>cache.m3.xlarge</code>,
    #       						<code>cache.m3.2xlarge</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>Compute optimized:</p>
    #                  <ul>
    #                     <li>
    #                        <p>Previous generation: (not recommended. Existing clusters are still supported but creation of new clusters is not supported for these types.)</p>
    #                        <p>
    #                           <b>C1 node types:</b>
    #                           <code>cache.c1.xlarge</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>Memory optimized:</p>
    #                  <ul>
    #                     <li>
    #                        <p>Current generation: </p>
    #                        <p>
    #                           <b>R7g node types</b>:	
    #   							<code>cache.r7g.large</code>,
    #   							<code>cache.r7g.xlarge</code>,
    #   							<code>cache.r7g.2xlarge</code>,
    #   							<code>cache.r7g.4xlarge</code>,
    #   							<code>cache.r7g.8xlarge</code>,
    #   							<code>cache.r7g.12xlarge</code>,
    #   							<code>cache.r7g.16xlarge</code>
    #                        </p>
    #                        <note>
    #                           <p>For region availability, see <a href="https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/CacheNodes.SupportedTypes.html#CacheNodes.SupportedTypesByRegion">Supported Node Types</a>
    #                           </p>
    #                        </note>
    #                        <p>
    #                           <b>R6g node types</b> (available only for Redis OSS engine version 5.0.6 onward and for Memcached engine version 1.5.16 onward):
    #   							<code>cache.r6g.large</code>,
    #   							<code>cache.r6g.xlarge</code>,
    #   							<code>cache.r6g.2xlarge</code>,
    #   							<code>cache.r6g.4xlarge</code>,
    #   							<code>cache.r6g.8xlarge</code>,
    #   							<code>cache.r6g.12xlarge</code>,
    #   							<code>cache.r6g.16xlarge</code>
    #                        </p>
    #                        <p>
    #                           <b>R5 node types:</b>
    #                           <code>cache.r5.large</code>,
    #       					   <code>cache.r5.xlarge</code>,
    #       					   <code>cache.r5.2xlarge</code>,
    #       					   <code>cache.r5.4xlarge</code>,
    #       					   <code>cache.r5.12xlarge</code>,
    #       					   <code>cache.r5.24xlarge</code>
    #                        </p>
    #                        <p>
    #                           <b>R4 node types:</b>
    #                           <code>cache.r4.large</code>,
    #       					   <code>cache.r4.xlarge</code>,
    #       					   <code>cache.r4.2xlarge</code>,
    #       					   <code>cache.r4.4xlarge</code>,
    #       					   <code>cache.r4.8xlarge</code>,
    #       					   <code>cache.r4.16xlarge</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>Previous generation: (not recommended. Existing clusters are still supported but creation of new clusters is not supported for these types.)</p>
    #                        <p>
    #                           <b>M2 node types:</b>
    #                           <code>cache.m2.xlarge</code>, 
    #       						<code>cache.m2.2xlarge</code>,
    #       						<code>cache.m2.4xlarge</code>
    #                        </p>
    #                        <p>
    #                           <b>R3 node types:</b>
    #                           <code>cache.r3.large</code>, 
    #       						<code>cache.r3.xlarge</code>,
    #       						<code>cache.r3.2xlarge</code>,  
    #       						<code>cache.r3.4xlarge</code>,
    #       						<code>cache.r3.8xlarge</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #            </ul>
    #            <p>
    #               <b>Additional node type info</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>All current generation instance types are created in Amazon VPC by
    #                       default.</p>
    #               </li>
    #               <li>
    #                  <p>Valkey or Redis OSS append-only files (AOF) are not supported for T1 or T2 instances.</p>
    #               </li>
    #               <li>
    #                  <p>Valkey or Redis OSS Multi-AZ with automatic failover is not supported on T1
    #                       instances.</p>
    #               </li>
    #               <li>
    #                  <p>The configuration variables <code>appendonly</code> and
    #                           <code>appendfsync</code> are not supported on Valkey, or on Redis OSS version 2.8.22 and
    #                       later.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute engine
    #   <p>The name of the cache engine to be used for the clusters in this replication group.
    #               The value must be set to <code>valkey</code> or <code>redis</code>.</p>
    #   @return [String]
    # @!attribute engine_version
    #   <p>The version number of the cache engine to be used for the clusters in this replication
    #               group. To view the supported cache engine versions, use the
    #                   <code>DescribeCacheEngineVersions</code> operation.</p>
    #            <p>
    #               <b>Important:</b> You can upgrade to a newer engine version
    #               (see <a href="https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/SelectEngine.html#VersionManagement">Selecting
    #                   a Cache Engine and Version</a>) in the <i>ElastiCache User
    #                   Guide</i>, but you cannot downgrade to an earlier engine version. If you want
    #               to use an earlier engine version, you must delete the existing cluster or replication
    #               group and create it anew with the earlier engine version. </p>
    #   @return [String]
    # @!attribute cache_parameter_group_name
    #   <p>The name of the parameter group to associate with this replication group. If this
    #               argument is omitted, the default cache parameter group for the specified engine is
    #               used.</p>
    #            <p>If you are running Valkey or Redis OSS version 3.2.4 or later, only one node group (shard), and want
    #               to use a default parameter group, we recommend that you specify the parameter group by
    #               name. </p>
    #            <ul>
    #               <li>
    #                  <p>To create a Valkey or Redis OSS (cluster mode disabled) replication group, use
    #                           <code>CacheParameterGroupName=default.redis3.2</code>.</p>
    #               </li>
    #               <li>
    #                  <p>To create a Valkey or Redis OSS (cluster mode enabled) replication group, use
    #                           <code>CacheParameterGroupName=default.redis3.2.cluster.on</code>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute cache_subnet_group_name
    #   <p>The name of the cache subnet group to be used for the replication group.</p>
    #            <important>
    #               <p>If you're going to launch your cluster in an Amazon VPC, you need to create a
    #                   subnet group before you start creating a cluster. For more information, see <a href="https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/SubnetGroups.html">Subnets and Subnet Groups</a>.</p>
    #            </important>
    #   @return [String]
    # @!attribute cache_security_group_names
    #   <p>A list of cache security group names to associate with this replication group.</p>
    #   @return [Array<String>]
    # @!attribute security_group_ids
    #   <p>One or more Amazon VPC security groups associated with this replication group.</p>
    #            <p>Use this parameter only when you are creating a replication group in an Amazon Virtual
    #               Private Cloud (Amazon VPC).</p>
    #   @return [Array<String>]
    # @!attribute tags
    #   <p>A list of tags to be added to this resource. Tags are comma-separated key,value pairs
    #               (e.g. Key=<code>myKey</code>, Value=<code>myKeyValue</code>. You can include multiple
    #               tags as shown following: Key=<code>myKey</code>, Value=<code>myKeyValue</code>
    #                   Key=<code>mySecondKey</code>, Value=<code>mySecondKeyValue</code>. Tags on
    #               replication groups will be replicated to all nodes.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute snapshot_arns
    #   <p>A list of Amazon Resource Names (ARN) that uniquely identify the Valkey or Redis OSS RDB snapshot
    #               files stored in Amazon S3. The snapshot files are used to populate the new replication
    #               group. The Amazon S3 object name in the ARN cannot contain any commas. The new
    #               replication group will have the number of node groups (console: shards) specified by the
    #               parameter <i>NumNodeGroups</i> or the number of node groups configured by
    #                   <i>NodeGroupConfiguration</i> regardless of the number of ARNs
    #               specified here.</p>
    #            <p>Example of an Amazon S3 ARN: <code>arn:aws:s3:::my_bucket/snapshot1.rdb</code>
    #            </p>
    #   @return [Array<String>]
    # @!attribute snapshot_name
    #   <p>The name of a snapshot from which to restore data into the new replication group. The
    #               snapshot status changes to <code>restoring</code> while the new replication group is
    #               being created.</p>
    #   @return [String]
    # @!attribute preferred_maintenance_window
    #   <p>Specifies the weekly time range during which maintenance on the cluster is performed.
    #               It is specified as a range in the format ddd:hh24:mi-ddd:hh24:mi (24H Clock UTC). The
    #               minimum maintenance window is a 60 minute period.</p>
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
    #   <p>The port number on which each member of the replication group accepts
    #               connections.</p>
    #   @return [Integer]
    # @!attribute notification_topic_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon Simple Notification Service (SNS) topic
    #               to which notifications are sent.</p>
    #            <note>
    #               <p>The Amazon SNS topic owner must be the same as the cluster owner.</p>
    #            </note>
    #   @return [String]
    # @!attribute auto_minor_version_upgrade
    #   <p> If you are running Valkey 7.2 and above or Redis OSS engine version 6.0 and above, set this parameter to yes 
    #               to opt-in to the next auto minor version upgrade campaign. This parameter is
    #               disabled for previous versions.  </p>
    #   @return [Boolean]
    # @!attribute snapshot_retention_limit
    #   <p>The number of days for which ElastiCache retains automatic snapshots before deleting
    #               them. For example, if you set <code>SnapshotRetentionLimit</code> to 5, a snapshot that
    #               was taken today is retained for 5 days before being deleted.</p>
    #            <p>Default: 0 (i.e., automatic backups are disabled for this cluster).</p>
    #   @return [Integer]
    # @!attribute snapshot_window
    #   <p>The daily time range (in UTC) during which ElastiCache begins taking a daily snapshot
    #               of your node group (shard).</p>
    #            <p>Example: <code>05:00-09:00</code>
    #            </p>
    #            <p>If you do not specify this parameter, ElastiCache automatically chooses an appropriate
    #               time range.</p>
    #   @return [String]
    # @!attribute auth_token
    #   <p>
    #               <b>Reserved parameter.</b> The password used to access a
    #               password protected server.</p>
    #            <p>
    #               <code>AuthToken</code> can be specified only on replication groups where
    #                   <code>TransitEncryptionEnabled</code> is <code>true</code>.</p>
    #            <important>
    #               <p>For HIPAA compliance, you must specify <code>TransitEncryptionEnabled</code> as
    #                       <code>true</code>, an <code>AuthToken</code>, and a
    #                       <code>CacheSubnetGroup</code>.</p>
    #            </important>
    #            <p>Password constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must be only printable ASCII characters.</p>
    #               </li>
    #               <li>
    #                  <p>Must be at least 16 characters and no more than 128 characters in
    #                       length.</p>
    #               </li>
    #               <li>
    #                  <p>The only permitted printable special characters are !, &, #, $, ^, <,
    #                       >, and -. Other printable special characters cannot be used in the AUTH
    #                       token.</p>
    #               </li>
    #            </ul>
    #            <p>For more information, see <a href="http://redis.io/commands/AUTH">AUTH
    #                   password</a> at http://redis.io/commands/AUTH.</p>
    #   @return [String]
    # @!attribute transit_encryption_enabled
    #   <p>A flag that enables in-transit encryption when set to <code>true</code>.</p>
    #            <p>This parameter is valid only if the <code>Engine</code> parameter is
    #                   <code>redis</code>, the <code>EngineVersion</code> parameter is <code>3.2.6</code>,
    #                   <code>4.x</code> or later, and the cluster is being created in an Amazon VPC.</p>
    #            <p>If you enable in-transit encryption, you must also specify a value for
    #                   <code>CacheSubnetGroup</code>.</p>
    #            <p>
    #               <b>Required:</b> Only available when creating a replication
    #               group in an Amazon VPC using Redis OSS version <code>3.2.6</code>, <code>4.x</code> or
    #               later.</p>
    #            <p>Default: <code>false</code>
    #            </p>
    #            <important>
    #               <p>For HIPAA compliance, you must specify <code>TransitEncryptionEnabled</code> as
    #                       <code>true</code>, an <code>AuthToken</code>, and a
    #                       <code>CacheSubnetGroup</code>.</p>
    #            </important>
    #   @return [Boolean]
    # @!attribute at_rest_encryption_enabled
    #   <p>A flag that enables encryption at rest when set to <code>true</code>.</p>
    #            <p>You cannot modify the value of <code>AtRestEncryptionEnabled</code> after the
    #               replication group is created. To enable encryption at rest on a replication group you
    #               must set <code>AtRestEncryptionEnabled</code> to <code>true</code> when you create the
    #               replication group. </p>
    #            <p>
    #               <b>Required:</b> Only available when creating a replication
    #               group in an Amazon VPC using Valkey 7.2 and later, Redis OSS version <code>3.2.6</code>, or Redis OSS <code>4.x</code> and
    #               later.</p>
    #            <p>Default: <code>true</code> when using Valkey, <code>false</code> when using Redis OSS</p>
    #   @return [Boolean]
    # @!attribute kms_key_id
    #   <p>The ID of the KMS key used to encrypt the disk in the cluster.</p>
    #   @return [String]
    # @!attribute user_group_ids
    #   <p>The user group to associate with the replication group.</p>
    #   @return [Array<String>]
    # @!attribute log_delivery_configurations
    #   <p>Specifies the destination, format and type of the logs.</p>
    #   @return [Array<Types::LogDeliveryConfigurationRequest>]
    # @!attribute data_tiering_enabled
    #   <p>Enables data tiering. Data tiering is only supported for replication groups using the
    #               r6gd node type. This parameter must be set to true when using r6gd nodes. For more
    #               information, see <a href="https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/data-tiering.html">Data tiering</a>.</p>
    #   @return [Boolean]
    # @!attribute network_type
    #   <p>Must be either <code>ipv4</code> | <code>ipv6</code> | <code>dual_stack</code>. IPv6
    #               is supported for workloads using Valkey 7.2 and above, Redis OSS engine version 6.2
    #               to 7.1 and Memcached engine version 1.6.6 and above on all instances built on the <a href="http://aws.amazon.com/ec2/nitro/">Nitro system</a>.</p>
    #   @return [String]
    # @!attribute ip_discovery
    #   <p>The network type you choose when creating a replication group, either
    #               <code>ipv4</code> | <code>ipv6</code>. IPv6 is supported for workloads using Valkey 7.2 and above, Redis OSS engine version 6.2
    #               to 7.1 or Memcached engine version 1.6.6 and above on all instances built on
    #               the <a href="http://aws.amazon.com/ec2/nitro/">Nitro system</a>.</p>
    #   @return [String]
    # @!attribute transit_encryption_mode
    #   <p>A setting that allows you to migrate your clients to use in-transit encryption, with
    #               no downtime.</p>
    #            <p>When setting <code>TransitEncryptionEnabled</code> to <code>true</code>, you can set
    #               your <code>TransitEncryptionMode</code> to <code>preferred</code> in the same request,
    #               to allow both encrypted and unencrypted connections at the same time. Once you migrate
    #               all your Valkey or Redis OSS clients to use encrypted connections you can modify the value to
    #                   <code>required</code> to allow encrypted connections only.</p>
    #            <p>Setting <code>TransitEncryptionMode</code> to <code>required</code> is a two-step
    #               process that requires you to first set the <code>TransitEncryptionMode</code> to
    #                   <code>preferred</code>, after that you can set <code>TransitEncryptionMode</code> to
    #                   <code>required</code>.</p>
    #            <p>This process will not trigger the replacement of the replication group.</p>
    #   @return [String]
    # @!attribute cluster_mode
    #   <p>Enabled or Disabled. To modify cluster mode from Disabled to Enabled, you must first
    #               set the cluster mode to Compatible. Compatible mode allows your Valkey or Redis OSS clients to connect
    #               using both cluster mode enabled and cluster mode disabled. After you migrate all Valkey or Redis OSS 
    #               clients to use cluster mode enabled, you can then complete cluster mode configuration
    #               and set the cluster mode to Enabled.</p>
    #   @return [String]
    # @!attribute serverless_cache_snapshot_name
    #   <p>The name of the snapshot used to create a replication group. Available for Valkey, Redis OSS only.</p>
    #   @return [String]
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
      :kms_key_id,
      :user_group_ids,
      :log_delivery_configurations,
      :data_tiering_enabled,
      :network_type,
      :ip_discovery,
      :transit_encryption_mode,
      :cluster_mode,
      :serverless_cache_snapshot_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute replication_group
    #   <p>Contains all of the attributes of a specific Valkey or Redis OSS replication group.</p>
    #   @return [Types::ReplicationGroup]
    class CreateReplicationGroupResult < Struct.new(
      :replication_group,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute serverless_cache_name
    #   <p>User-provided identifier for the serverless cache. This parameter is stored as a lowercase string.</p>
    #   @return [String]
    # @!attribute description
    #   <p>User-provided description for the serverless cache.  
    #              The default is NULL, i.e. if no description is provided then an empty string will be returned. 
    #              The maximum length is 255 characters. </p>
    #   @return [String]
    # @!attribute engine
    #   <p>The name of the cache engine to be used for creating the serverless cache.</p>
    #   @return [String]
    # @!attribute major_engine_version
    #   <p>The version of the cache engine that will be used to create the serverless cache.</p>
    #   @return [String]
    # @!attribute cache_usage_limits
    #   <p>Sets the cache usage limits for storage and ElastiCache Processing Units for the cache.</p>
    #   @return [Types::CacheUsageLimits]
    # @!attribute kms_key_id
    #   <p>ARN of the customer managed key for encrypting the data at rest. If no KMS key is provided, a default service key is used.</p>
    #   @return [String]
    # @!attribute security_group_ids
    #   <p>A list of the one or more VPC security groups to be associated with the serverless cache. 
    #              The security group will authorize traffic access for the VPC end-point (private-link). 
    #              If no other information is given this will be the VPC’s Default Security Group that is associated with the cluster VPC 
    #              end-point.</p>
    #   @return [Array<String>]
    # @!attribute snapshot_arns_to_restore
    #   <p>The ARN(s) of the snapshot that the new serverless cache will be created from. Available for Valkey, Redis OSS and Serverless Memcached only.</p>
    #   @return [Array<String>]
    # @!attribute tags
    #   <p>The list of tags (key, value) pairs to be added to the serverless cache resource. Default is NULL.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute user_group_id
    #   <p>The identifier of the UserGroup to be associated with the serverless cache.  Available for Valkey and Redis OSS only. Default is NULL.</p>
    #   @return [String]
    # @!attribute subnet_ids
    #   <p>A list of the identifiers of the subnets where the VPC endpoint for the serverless cache will be deployed. 
    #              All the subnetIds must belong to the same VPC.</p>
    #   @return [Array<String>]
    # @!attribute snapshot_retention_limit
    #   <p>The number of snapshots that will be retained for the serverless cache that is being created. 
    #              As new snapshots beyond this limit are added, the oldest snapshots will be deleted on a rolling basis. Available for Valkey, Redis OSS and Serverless Memcached only.</p>
    #   @return [Integer]
    # @!attribute daily_snapshot_time
    #   <p>The daily time that snapshots will be created from the new serverless cache. By default this number is populated with 
    #              0, i.e. no snapshots will be created on an automatic daily basis. Available for Valkey, Redis OSS and Serverless Memcached only.</p>
    #   @return [String]
    class CreateServerlessCacheRequest < Struct.new(
      :serverless_cache_name,
      :description,
      :engine,
      :major_engine_version,
      :cache_usage_limits,
      :kms_key_id,
      :security_group_ids,
      :snapshot_arns_to_restore,
      :tags,
      :user_group_id,
      :subnet_ids,
      :snapshot_retention_limit,
      :daily_snapshot_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute serverless_cache
    #   <p>The response for the attempt to create the serverless cache.</p>
    #   @return [Types::ServerlessCache]
    class CreateServerlessCacheResponse < Struct.new(
      :serverless_cache,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute serverless_cache_snapshot_name
    #   <p>The name for the snapshot being created. Must be unique for the customer account. Available for Valkey, Redis OSS and Serverless Memcached only.
    #              Must be between 1 and 255 characters.</p>
    #   @return [String]
    # @!attribute serverless_cache_name
    #   <p>The name of an existing serverless cache. The snapshot is created from this cache. Available for Valkey, Redis OSS and Serverless Memcached only.</p>
    #   @return [String]
    # @!attribute kms_key_id
    #   <p>The ID of the KMS key used to encrypt the snapshot.  Available for Valkey, Redis OSS and Serverless Memcached only. Default: NULL</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of tags to be added to the snapshot resource. A tag is a key-value pair. Available for Valkey, Redis OSS and Serverless Memcached only.</p>
    #   @return [Array<Types::Tag>]
    class CreateServerlessCacheSnapshotRequest < Struct.new(
      :serverless_cache_snapshot_name,
      :serverless_cache_name,
      :kms_key_id,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute serverless_cache_snapshot
    #   <p>The state of a serverless cache snapshot at a specific point in time, to the millisecond. Available for Valkey, Redis OSS and Serverless Memcached only.</p>
    #   @return [Types::ServerlessCacheSnapshot]
    class CreateServerlessCacheSnapshotResponse < Struct.new(
      :serverless_cache_snapshot,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of a <code>CreateSnapshot</code> operation.</p>
    # @!attribute replication_group_id
    #   <p>The identifier of an existing replication group. The snapshot is created from this
    #               replication group.</p>
    #   @return [String]
    # @!attribute cache_cluster_id
    #   <p>The identifier of an existing cluster. The snapshot is created from this
    #               cluster.</p>
    #   @return [String]
    # @!attribute snapshot_name
    #   <p>A name for the snapshot being created.</p>
    #   @return [String]
    # @!attribute kms_key_id
    #   <p>The ID of the KMS key used to encrypt the snapshot.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of tags to be added to this resource. A tag is a key-value pair. A tag key must
    #               be accompanied by a tag value, although null is accepted.</p>
    #   @return [Array<Types::Tag>]
    class CreateSnapshotMessage < Struct.new(
      :replication_group_id,
      :cache_cluster_id,
      :snapshot_name,
      :kms_key_id,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute snapshot
    #   <p>Represents a copy of an entire Valkey or Redis OSS cluster as of the time when the snapshot was
    #               taken.</p>
    #   @return [Types::Snapshot]
    class CreateSnapshotResult < Struct.new(
      :snapshot,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute user_group_id
    #   <p>The ID of the user group.</p>
    #   @return [String]
    # @!attribute engine
    #   <p>Sets the engine listed in a user group. The options are valkey or redis.</p>
    #   @return [String]
    # @!attribute user_ids
    #   <p>The list of user IDs that belong to the user group.</p>
    #   @return [Array<String>]
    # @!attribute tags
    #   <p>A list of tags to be added to this resource. A tag is a key-value pair. A tag key must
    #               be accompanied by a tag value, although null is accepted. Available for Valkey and Redis OSS only.</p>
    #   @return [Array<Types::Tag>]
    class CreateUserGroupMessage < Struct.new(
      :user_group_id,
      :engine,
      :user_ids,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute user_group_id
    #   <p>The ID of the user group.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Indicates user group status. Can be "creating", "active", "modifying",
    #               "deleting".</p>
    #   @return [String]
    # @!attribute engine
    #   <p>The options are valkey or redis.</p>
    #   @return [String]
    # @!attribute user_ids
    #   <p>The list of user IDs that belong to the user group.</p>
    #   @return [Array<String>]
    # @!attribute minimum_engine_version
    #   <p>The minimum engine version required, which is Redis OSS 6.0</p>
    #   @return [String]
    # @!attribute pending_changes
    #   <p>A list of updates being applied to the user group.</p>
    #   @return [Types::UserGroupPendingChanges]
    # @!attribute replication_groups
    #   <p>A list of replication groups that the user group can access.</p>
    #   @return [Array<String>]
    # @!attribute serverless_caches
    #   <p>Indicates which serverless caches the specified user group is associated with. Available for Valkey, Redis OSS and Serverless Memcached only.</p>
    #   @return [Array<String>]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the user group.</p>
    #   @return [String]
    class CreateUserGroupOutput < Struct.new(
      :user_group_id,
      :status,
      :engine,
      :user_ids,
      :minimum_engine_version,
      :pending_changes,
      :replication_groups,
      :serverless_caches,
      :arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute user_id
    #   <p>The ID of the user.</p>
    #   @return [String]
    # @!attribute user_name
    #   <p>The username of the user.</p>
    #   @return [String]
    # @!attribute engine
    #   <p>The options are valkey or redis. </p>
    #   @return [String]
    # @!attribute passwords
    #   <p>Passwords used for this user. You can create up to two passwords for each user.</p>
    #   @return [Array<String>]
    # @!attribute access_string
    #   <p>Access permissions string used for this user.</p>
    #   @return [String]
    # @!attribute no_password_required
    #   <p>Indicates a password is not required for this user.</p>
    #   @return [Boolean]
    # @!attribute tags
    #   <p>A list of tags to be added to this resource. A tag is a key-value pair. A tag key must
    #               be accompanied by a tag value, although null is accepted.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute authentication_mode
    #   <p>Specifies how to authenticate the user.</p>
    #   @return [Types::AuthenticationMode]
    class CreateUserMessage < Struct.new(
      :user_id,
      :user_name,
      :engine,
      :passwords,
      :access_string,
      :no_password_required,
      :tags,
      :authentication_mode,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute user_id
    #   <p>The ID of the user.</p>
    #   @return [String]
    # @!attribute user_name
    #   <p>The username of the user.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Indicates the user status. Can be "active", "modifying" or "deleting".</p>
    #   @return [String]
    # @!attribute engine
    #   <p>The options are valkey or redis.</p>
    #   @return [String]
    # @!attribute minimum_engine_version
    #   <p>The minimum engine version required, which is Redis OSS 6.0</p>
    #   @return [String]
    # @!attribute access_string
    #   <p>Access permissions string used for this user.</p>
    #   @return [String]
    # @!attribute user_group_ids
    #   <p>Returns a list of the user group IDs the user belongs to.</p>
    #   @return [Array<String>]
    # @!attribute authentication
    #   <p>Denotes whether the user requires a password to authenticate.</p>
    #   @return [Types::Authentication]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the user.</p>
    #   @return [String]
    class CreateUserOutput < Struct.new(
      :user_id,
      :user_name,
      :status,
      :engine,
      :minimum_engine_version,
      :access_string,
      :user_group_ids,
      :authentication,
      :arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The endpoint from which data should be migrated.</p>
    # @!attribute address
    #   <p>The address of the node endpoint</p>
    #   @return [String]
    # @!attribute port
    #   <p>The port of the node endpoint</p>
    #   @return [Integer]
    class CustomerNodeEndpoint < Struct.new(
      :address,
      :port,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The data storage limit.</p>
    # @!attribute maximum
    #   <p>The upper limit for data storage the cache is set to use.</p>
    #   @return [Integer]
    # @!attribute minimum
    #   <p>The lower limit for data storage the cache is set to use.</p>
    #   @return [Integer]
    # @!attribute unit
    #   <p>The unit that the storage is measured in, in GB.</p>
    #   @return [String]
    class DataStorage < Struct.new(
      :maximum,
      :minimum,
      :unit,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute global_replication_group_id
    #   <p>The name of the Global datastore</p>
    #   @return [String]
    # @!attribute node_group_count
    #   <p>The number of node groups (shards) that results from the modification of the shard
    #               configuration</p>
    #   @return [Integer]
    # @!attribute global_node_groups_to_remove
    #   <p>If the value of NodeGroupCount is less than the current number of node groups
    #               (shards), then either NodeGroupsToRemove or NodeGroupsToRetain is required.
    #               GlobalNodeGroupsToRemove is a list of NodeGroupIds to remove from the cluster.
    #               ElastiCache will attempt to remove all node groups listed by
    #               GlobalNodeGroupsToRemove from the cluster. </p>
    #   @return [Array<String>]
    # @!attribute global_node_groups_to_retain
    #   <p>If the value of NodeGroupCount is less than the current number of node groups
    #               (shards), then either NodeGroupsToRemove or NodeGroupsToRetain is required.
    #               GlobalNodeGroupsToRetain is a list of NodeGroupIds to retain from the cluster.
    #               ElastiCache will attempt to retain all node groups listed by
    #               GlobalNodeGroupsToRetain from the cluster. </p>
    #   @return [Array<String>]
    # @!attribute apply_immediately
    #   <p>Indicates that the shard reconfiguration process begins immediately. At present, the
    #               only permitted value for this parameter is true. </p>
    #   @return [Boolean]
    class DecreaseNodeGroupsInGlobalReplicationGroupMessage < Struct.new(
      :global_replication_group_id,
      :node_group_count,
      :global_node_groups_to_remove,
      :global_node_groups_to_retain,
      :apply_immediately,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute global_replication_group
    #   <p>Consists of a primary cluster that accepts writes and an associated secondary cluster
    #               that resides in a different Amazon region. The secondary cluster accepts only reads. The
    #               primary cluster automatically replicates updates to the secondary cluster.</p>
    #            <ul>
    #               <li>
    #                  <p>The <b>GlobalReplicationGroupIdSuffix</b> represents
    #                       the name of the Global datastore, which is what you use to associate a secondary
    #                       cluster.</p>
    #               </li>
    #            </ul>
    #   @return [Types::GlobalReplicationGroup]
    class DecreaseNodeGroupsInGlobalReplicationGroupResult < Struct.new(
      :global_replication_group,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute replication_group_id
    #   <p>The id of the replication group from which you want to remove replica
    #               nodes.</p>
    #   @return [String]
    # @!attribute new_replica_count
    #   <p>The number of read replica nodes you want at the completion of this operation. For Valkey or Redis OSS (cluster mode disabled) replication groups, this is the number of replica nodes in
    #               the replication group. For Valkey or Redis OSS (cluster mode enabled) replication groups, this is the
    #               number of replica nodes in each of the replication group's node groups.</p>
    #            <p>The minimum number of replicas in a shard or replication group is:</p>
    #            <ul>
    #               <li>
    #                  <p>Valkey or Redis OSS (cluster mode disabled)</p>
    #                  <ul>
    #                     <li>
    #                        <p>If Multi-AZ is enabled: 1</p>
    #                     </li>
    #                     <li>
    #                        <p>If Multi-AZ is not enabled: 0</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>Valkey or Redis OSS (cluster mode enabled): 0 (though you will not be able to failover to
    #                       a replica if your primary node fails)</p>
    #               </li>
    #            </ul>
    #   @return [Integer]
    # @!attribute replica_configuration
    #   <p>A list of <code>ConfigureShard</code> objects that can be used to configure each
    #               shard in a Valkey or Redis OSS replication group. The
    #                   <code>ConfigureShard</code> has three members: <code>NewReplicaCount</code>,
    #                   <code>NodeGroupId</code>, and <code>PreferredAvailabilityZones</code>.</p>
    #   @return [Array<Types::ConfigureShard>]
    # @!attribute replicas_to_remove
    #   <p>A list of the node ids to remove from the replication group or node group
    #               (shard).</p>
    #   @return [Array<String>]
    # @!attribute apply_immediately
    #   <p>If <code>True</code>, the number of replica nodes is decreased immediately.
    #                   <code>ApplyImmediately=False</code> is not currently supported.</p>
    #   @return [Boolean]
    class DecreaseReplicaCountMessage < Struct.new(
      :replication_group_id,
      :new_replica_count,
      :replica_configuration,
      :replicas_to_remove,
      :apply_immediately,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute replication_group
    #   <p>Contains all of the attributes of a specific Valkey or Redis OSS replication group.</p>
    #   @return [Types::ReplicationGroup]
    class DecreaseReplicaCountResult < Struct.new(
      :replication_group,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The default user assigned to the user group.</p>
    # @!attribute message
    #   @return [String]
    class DefaultUserAssociatedToUserGroupFault < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>You must add default user to a user group.</p>
    # @!attribute message
    #   @return [String]
    class DefaultUserRequired < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of a <code>DeleteCacheCluster</code> operation.</p>
    # @!attribute cache_cluster_id
    #   <p>The cluster identifier for the cluster to be deleted. This parameter is not case
    #               sensitive.</p>
    #   @return [String]
    # @!attribute final_snapshot_identifier
    #   <p>The user-supplied name of a final cluster snapshot. This is the unique name that
    #               identifies the snapshot. ElastiCache creates the snapshot, and then deletes the cluster
    #               immediately afterward.</p>
    #   @return [String]
    class DeleteCacheClusterMessage < Struct.new(
      :cache_cluster_id,
      :final_snapshot_identifier,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute cache_cluster
    #   <p>Contains all of the attributes of a specific cluster.</p>
    #   @return [Types::CacheCluster]
    class DeleteCacheClusterResult < Struct.new(
      :cache_cluster,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of a <code>DeleteCacheParameterGroup</code> operation.</p>
    # @!attribute cache_parameter_group_name
    #   <p>The name of the cache parameter group to delete.</p>
    #            <note>
    #               <p>The specified cache security group must not be associated with any
    #                   clusters.</p>
    #            </note>
    #   @return [String]
    class DeleteCacheParameterGroupMessage < Struct.new(
      :cache_parameter_group_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of a <code>DeleteCacheSecurityGroup</code> operation.</p>
    # @!attribute cache_security_group_name
    #   <p>The name of the cache security group to delete.</p>
    #            <note>
    #               <p>You cannot delete the default security group.</p>
    #            </note>
    #   @return [String]
    class DeleteCacheSecurityGroupMessage < Struct.new(
      :cache_security_group_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of a <code>DeleteCacheSubnetGroup</code> operation.</p>
    # @!attribute cache_subnet_group_name
    #   <p>The name of the cache subnet group to delete.</p>
    #            <p>Constraints: Must contain no more than 255 alphanumeric characters or hyphens.</p>
    #   @return [String]
    class DeleteCacheSubnetGroupMessage < Struct.new(
      :cache_subnet_group_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute global_replication_group_id
    #   <p>The name of the Global datastore</p>
    #   @return [String]
    # @!attribute retain_primary_replication_group
    #   <p>The primary replication group is retained as a standalone replication group. </p>
    #   @return [Boolean]
    class DeleteGlobalReplicationGroupMessage < Struct.new(
      :global_replication_group_id,
      :retain_primary_replication_group,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute global_replication_group
    #   <p>Consists of a primary cluster that accepts writes and an associated secondary cluster
    #               that resides in a different Amazon region. The secondary cluster accepts only reads. The
    #               primary cluster automatically replicates updates to the secondary cluster.</p>
    #            <ul>
    #               <li>
    #                  <p>The <b>GlobalReplicationGroupIdSuffix</b> represents
    #                       the name of the Global datastore, which is what you use to associate a secondary
    #                       cluster.</p>
    #               </li>
    #            </ul>
    #   @return [Types::GlobalReplicationGroup]
    class DeleteGlobalReplicationGroupResult < Struct.new(
      :global_replication_group,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of a <code>DeleteReplicationGroup</code> operation.</p>
    # @!attribute replication_group_id
    #   <p>The identifier for the cluster to be deleted. This parameter is not case
    #               sensitive.</p>
    #   @return [String]
    # @!attribute retain_primary_cluster
    #   <p>If set to <code>true</code>, all of the read replicas are deleted, but the primary
    #               node is retained.</p>
    #   @return [Boolean]
    # @!attribute final_snapshot_identifier
    #   <p>The name of a final node group (shard) snapshot. ElastiCache creates the snapshot from
    #               the primary node in the cluster, rather than one of the replicas; this is to ensure that
    #               it captures the freshest data. After the final snapshot is taken, the replication group
    #               is immediately deleted.</p>
    #   @return [String]
    class DeleteReplicationGroupMessage < Struct.new(
      :replication_group_id,
      :retain_primary_cluster,
      :final_snapshot_identifier,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute replication_group
    #   <p>Contains all of the attributes of a specific Valkey or Redis OSS replication group.</p>
    #   @return [Types::ReplicationGroup]
    class DeleteReplicationGroupResult < Struct.new(
      :replication_group,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute serverless_cache_name
    #   <p>The identifier of the serverless cache to be deleted.</p>
    #   @return [String]
    # @!attribute final_snapshot_name
    #   <p>Name of the final snapshot to be taken before the serverless cache is deleted.  Available for Valkey, Redis OSS and Serverless Memcached only.
    #              Default: NULL, i.e. a final snapshot is not taken.</p>
    #   @return [String]
    class DeleteServerlessCacheRequest < Struct.new(
      :serverless_cache_name,
      :final_snapshot_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute serverless_cache
    #   <p>Provides the details of the specified serverless cache that is about to be deleted.</p>
    #   @return [Types::ServerlessCache]
    class DeleteServerlessCacheResponse < Struct.new(
      :serverless_cache,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute serverless_cache_snapshot_name
    #   <p>Idenfitier of the snapshot to be deleted. Available for Valkey, Redis OSS and Serverless Memcached only.</p>
    #   @return [String]
    class DeleteServerlessCacheSnapshotRequest < Struct.new(
      :serverless_cache_snapshot_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute serverless_cache_snapshot
    #   <p>The snapshot to be deleted. Available for Valkey, Redis OSS and Serverless Memcached only.</p>
    #   @return [Types::ServerlessCacheSnapshot]
    class DeleteServerlessCacheSnapshotResponse < Struct.new(
      :serverless_cache_snapshot,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of a <code>DeleteSnapshot</code> operation.</p>
    # @!attribute snapshot_name
    #   <p>The name of the snapshot to be deleted.</p>
    #   @return [String]
    class DeleteSnapshotMessage < Struct.new(
      :snapshot_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute snapshot
    #   <p>Represents a copy of an entire Valkey or Redis OSS cluster as of the time when the snapshot was
    #               taken.</p>
    #   @return [Types::Snapshot]
    class DeleteSnapshotResult < Struct.new(
      :snapshot,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute user_group_id
    #   <p>The ID of the user group.</p>
    #   @return [String]
    class DeleteUserGroupMessage < Struct.new(
      :user_group_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute user_group_id
    #   <p>The ID of the user group.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Indicates user group status. Can be "creating", "active", "modifying",
    #               "deleting".</p>
    #   @return [String]
    # @!attribute engine
    #   <p>The options are valkey or redis.</p>
    #   @return [String]
    # @!attribute user_ids
    #   <p>The list of user IDs that belong to the user group.</p>
    #   @return [Array<String>]
    # @!attribute minimum_engine_version
    #   <p>The minimum engine version required, which is Redis OSS 6.0</p>
    #   @return [String]
    # @!attribute pending_changes
    #   <p>A list of updates being applied to the user group.</p>
    #   @return [Types::UserGroupPendingChanges]
    # @!attribute replication_groups
    #   <p>A list of replication groups that the user group can access.</p>
    #   @return [Array<String>]
    # @!attribute serverless_caches
    #   <p>Indicates which serverless caches the specified user group is associated with. Available for Valkey, Redis OSS and Serverless Memcached only.</p>
    #   @return [Array<String>]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the user group.</p>
    #   @return [String]
    class DeleteUserGroupOutput < Struct.new(
      :user_group_id,
      :status,
      :engine,
      :user_ids,
      :minimum_engine_version,
      :pending_changes,
      :replication_groups,
      :serverless_caches,
      :arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute user_id
    #   <p>The ID of the user.</p>
    #   @return [String]
    class DeleteUserMessage < Struct.new(
      :user_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute user_id
    #   <p>The ID of the user.</p>
    #   @return [String]
    # @!attribute user_name
    #   <p>The username of the user.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Indicates the user status. Can be "active", "modifying" or "deleting".</p>
    #   @return [String]
    # @!attribute engine
    #   <p>The options are valkey or redis.</p>
    #   @return [String]
    # @!attribute minimum_engine_version
    #   <p>The minimum engine version required, which is Redis OSS 6.0</p>
    #   @return [String]
    # @!attribute access_string
    #   <p>Access permissions string used for this user.</p>
    #   @return [String]
    # @!attribute user_group_ids
    #   <p>Returns a list of the user group IDs the user belongs to.</p>
    #   @return [Array<String>]
    # @!attribute authentication
    #   <p>Denotes whether the user requires a password to authenticate.</p>
    #   @return [Types::Authentication]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the user.</p>
    #   @return [String]
    class DeleteUserOutput < Struct.new(
      :user_id,
      :user_name,
      :status,
      :engine,
      :minimum_engine_version,
      :access_string,
      :user_group_ids,
      :authentication,
      :arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of a <code>DescribeCacheClusters</code> operation.</p>
    # @!attribute cache_cluster_id
    #   <p>The user-supplied cluster identifier. If this parameter is specified, only information
    #               about that specific cluster is returned. This parameter isn't case sensitive.</p>
    #   @return [String]
    # @!attribute max_records
    #   <p>The maximum number of records to include in the response. If more records exist than
    #               the specified <code>MaxRecords</code> value, a marker is included in the response so
    #               that the remaining results can be retrieved.</p>
    #            <p>Default: 100</p>
    #            <p>Constraints: minimum 20; maximum 100.</p>
    #   @return [Integer]
    # @!attribute marker
    #   <p>An optional marker returned from a prior request. Use this marker for pagination of
    #               results from this operation. If this parameter is specified, the response includes only
    #               records beyond the marker, up to the value specified by <code>MaxRecords</code>.</p>
    #   @return [String]
    # @!attribute show_cache_node_info
    #   <p>An optional flag that can be included in the <code>DescribeCacheCluster</code> request
    #               to retrieve information about the individual cache nodes.</p>
    #   @return [Boolean]
    # @!attribute show_cache_clusters_not_in_replication_groups
    #   <p>An optional flag that can be included in the <code>DescribeCacheCluster</code> request
    #               to show only nodes (API/CLI: clusters) that are not members of a replication group. In
    #               practice, this means Memcached and single node Valkey or Redis OSS clusters.</p>
    #   @return [Boolean]
    class DescribeCacheClustersMessage < Struct.new(
      :cache_cluster_id,
      :max_records,
      :marker,
      :show_cache_node_info,
      :show_cache_clusters_not_in_replication_groups,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of a <code>DescribeCacheEngineVersions</code> operation.</p>
    # @!attribute engine
    #   <p>The cache engine to return. Valid values: <code>memcached</code> |
    #               <code>redis</code>
    #            </p>
    #   @return [String]
    # @!attribute engine_version
    #   <p>The cache engine version to return.</p>
    #            <p>Example: <code>1.4.14</code>
    #            </p>
    #   @return [String]
    # @!attribute cache_parameter_group_family
    #   <p>The name of a specific cache parameter group family to return details for.</p>
    #            <p>Valid values are: <code>memcached1.4</code> | <code>memcached1.5</code> |
    #                   <code>memcached1.6</code> | <code>redis2.6</code> | <code>redis2.8</code> |
    #                   <code>redis3.2</code> | <code>redis4.0</code> | <code>redis5.0</code> |
    #                   <code>redis6.x</code> | <code>redis6.2</code> | <code>redis7</code> | <code>valkey7</code>
    #            </p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must be 1 to 255 alphanumeric characters</p>
    #               </li>
    #               <li>
    #                  <p>First character must be a letter</p>
    #               </li>
    #               <li>
    #                  <p>Cannot end with a hyphen or contain two consecutive hyphens</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute max_records
    #   <p>The maximum number of records to include in the response. If more records exist than
    #               the specified <code>MaxRecords</code> value, a marker is included in the response so
    #               that the remaining results can be retrieved.</p>
    #            <p>Default: 100</p>
    #            <p>Constraints: minimum 20; maximum 100.</p>
    #   @return [Integer]
    # @!attribute marker
    #   <p>An optional marker returned from a prior request. Use this marker for pagination of
    #               results from this operation. If this parameter is specified, the response includes only
    #               records beyond the marker, up to the value specified by <code>MaxRecords</code>.</p>
    #   @return [String]
    # @!attribute default_only
    #   <p>If <code>true</code>, specifies that only the default version of the specified engine
    #               or engine and major version combination is to be returned.</p>
    #   @return [Boolean]
    class DescribeCacheEngineVersionsMessage < Struct.new(
      :engine,
      :engine_version,
      :cache_parameter_group_family,
      :max_records,
      :marker,
      :default_only,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of a <code>DescribeCacheParameterGroups</code> operation.</p>
    # @!attribute cache_parameter_group_name
    #   <p>The name of a specific cache parameter group to return details for.</p>
    #   @return [String]
    # @!attribute max_records
    #   <p>The maximum number of records to include in the response. If more records exist than
    #               the specified <code>MaxRecords</code> value, a marker is included in the response so
    #               that the remaining results can be retrieved.</p>
    #            <p>Default: 100</p>
    #            <p>Constraints: minimum 20; maximum 100.</p>
    #   @return [Integer]
    # @!attribute marker
    #   <p>An optional marker returned from a prior request. Use this marker for pagination of
    #               results from this operation. If this parameter is specified, the response includes only
    #               records beyond the marker, up to the value specified by <code>MaxRecords</code>.</p>
    #   @return [String]
    class DescribeCacheParameterGroupsMessage < Struct.new(
      :cache_parameter_group_name,
      :max_records,
      :marker,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of a <code>DescribeCacheParameters</code> operation.</p>
    # @!attribute cache_parameter_group_name
    #   <p>The name of a specific cache parameter group to return details for.</p>
    #   @return [String]
    # @!attribute source
    #   <p>The parameter types to return.</p>
    #            <p>Valid values: <code>user</code> | <code>system</code> |
    #               <code>engine-default</code>
    #            </p>
    #   @return [String]
    # @!attribute max_records
    #   <p>The maximum number of records to include in the response. If more records exist than
    #               the specified <code>MaxRecords</code> value, a marker is included in the response so
    #               that the remaining results can be retrieved.</p>
    #            <p>Default: 100</p>
    #            <p>Constraints: minimum 20; maximum 100.</p>
    #   @return [Integer]
    # @!attribute marker
    #   <p>An optional marker returned from a prior request. Use this marker for pagination of
    #               results from this operation. If this parameter is specified, the response includes only
    #               records beyond the marker, up to the value specified by <code>MaxRecords</code>.</p>
    #   @return [String]
    class DescribeCacheParametersMessage < Struct.new(
      :cache_parameter_group_name,
      :source,
      :max_records,
      :marker,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a <code>DescribeCacheParameters</code> operation.</p>
    # @!attribute marker
    #   <p>Provides an identifier to allow retrieval of paginated results.</p>
    #   @return [String]
    # @!attribute parameters
    #   <p>A list of <a>Parameter</a> instances.</p>
    #   @return [Array<Types::Parameter>]
    # @!attribute cache_node_type_specific_parameters
    #   <p>A list of parameters specific to a particular cache node type. Each element in the
    #               list contains detailed information about one parameter.</p>
    #   @return [Array<Types::CacheNodeTypeSpecificParameter>]
    class DescribeCacheParametersOutput < Struct.new(
      :marker,
      :parameters,
      :cache_node_type_specific_parameters,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of a <code>DescribeCacheSecurityGroups</code> operation.</p>
    # @!attribute cache_security_group_name
    #   <p>The name of the cache security group to return details for.</p>
    #   @return [String]
    # @!attribute max_records
    #   <p>The maximum number of records to include in the response. If more records exist than
    #               the specified <code>MaxRecords</code> value, a marker is included in the response so
    #               that the remaining results can be retrieved.</p>
    #            <p>Default: 100</p>
    #            <p>Constraints: minimum 20; maximum 100.</p>
    #   @return [Integer]
    # @!attribute marker
    #   <p>An optional marker returned from a prior request. Use this marker for pagination of
    #               results from this operation. If this parameter is specified, the response includes only
    #               records beyond the marker, up to the value specified by <code>MaxRecords</code>.</p>
    #   @return [String]
    class DescribeCacheSecurityGroupsMessage < Struct.new(
      :cache_security_group_name,
      :max_records,
      :marker,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of a <code>DescribeCacheSubnetGroups</code> operation.</p>
    # @!attribute cache_subnet_group_name
    #   <p>The name of the cache subnet group to return details for.</p>
    #   @return [String]
    # @!attribute max_records
    #   <p>The maximum number of records to include in the response. If more records exist than
    #               the specified <code>MaxRecords</code> value, a marker is included in the response so
    #               that the remaining results can be retrieved.</p>
    #            <p>Default: 100</p>
    #            <p>Constraints: minimum 20; maximum 100.</p>
    #   @return [Integer]
    # @!attribute marker
    #   <p>An optional marker returned from a prior request. Use this marker for pagination of
    #               results from this operation. If this parameter is specified, the response includes only
    #               records beyond the marker, up to the value specified by <code>MaxRecords</code>.</p>
    #   @return [String]
    class DescribeCacheSubnetGroupsMessage < Struct.new(
      :cache_subnet_group_name,
      :max_records,
      :marker,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of a <code>DescribeEngineDefaultParameters</code>
    #             operation.</p>
    # @!attribute cache_parameter_group_family
    #   <p>The name of the cache parameter group family.</p>
    #            <p>Valid values are: <code>memcached1.4</code> | <code>memcached1.5</code> |
    #                   <code>memcached1.6</code> | <code>redis2.6</code> | <code>redis2.8</code> |
    #                   <code>redis3.2</code> | <code>redis4.0</code> | <code>redis5.0</code> |
    #                   <code>redis6.x</code> | <code>redis6.2</code> | <code>redis7</code>
    #            </p>
    #   @return [String]
    # @!attribute max_records
    #   <p>The maximum number of records to include in the response. If more records exist than
    #               the specified <code>MaxRecords</code> value, a marker is included in the response so
    #               that the remaining results can be retrieved.</p>
    #            <p>Default: 100</p>
    #            <p>Constraints: minimum 20; maximum 100.</p>
    #   @return [Integer]
    # @!attribute marker
    #   <p>An optional marker returned from a prior request. Use this marker for pagination of
    #               results from this operation. If this parameter is specified, the response includes only
    #               records beyond the marker, up to the value specified by <code>MaxRecords</code>.</p>
    #   @return [String]
    class DescribeEngineDefaultParametersMessage < Struct.new(
      :cache_parameter_group_family,
      :max_records,
      :marker,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute engine_defaults
    #   <p>Represents the output of a <code>DescribeEngineDefaultParameters</code>
    #               operation.</p>
    #   @return [Types::EngineDefaults]
    class DescribeEngineDefaultParametersResult < Struct.new(
      :engine_defaults,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of a <code>DescribeEvents</code> operation.</p>
    # @!attribute source_identifier
    #   <p>The identifier of the event source for which events are returned. If not specified,
    #               all sources are included in the response.</p>
    #   @return [String]
    # @!attribute source_type
    #   <p>The event source to retrieve events for. If no value is specified, all events are
    #               returned.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>The beginning of the time interval to retrieve events for, specified in ISO 8601
    #               format.</p>
    #            <p>
    #               <b>Example:</b> 2017-03-30T07:03:49.555Z</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The end of the time interval for which to retrieve events, specified in ISO 8601
    #               format.</p>
    #            <p>
    #               <b>Example:</b> 2017-03-30T07:03:49.555Z</p>
    #   @return [Time]
    # @!attribute duration
    #   <p>The number of minutes worth of events to retrieve.</p>
    #   @return [Integer]
    # @!attribute max_records
    #   <p>The maximum number of records to include in the response. If more records exist than
    #               the specified <code>MaxRecords</code> value, a marker is included in the response so
    #               that the remaining results can be retrieved.</p>
    #            <p>Default: 100</p>
    #            <p>Constraints: minimum 20; maximum 100.</p>
    #   @return [Integer]
    # @!attribute marker
    #   <p>An optional marker returned from a prior request. Use this marker for pagination of
    #               results from this operation. If this parameter is specified, the response includes only
    #               records beyond the marker, up to the value specified by <code>MaxRecords</code>.</p>
    #   @return [String]
    class DescribeEventsMessage < Struct.new(
      :source_identifier,
      :source_type,
      :start_time,
      :end_time,
      :duration,
      :max_records,
      :marker,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute global_replication_group_id
    #   <p>The name of the Global datastore</p>
    #   @return [String]
    # @!attribute max_records
    #   <p>The maximum number of records to include in the response. If more records exist than
    #               the specified MaxRecords value, a marker is included in the response so that the
    #               remaining results can be retrieved. </p>
    #   @return [Integer]
    # @!attribute marker
    #   <p>An optional marker returned from a prior request. Use this marker for pagination of
    #               results from this operation. If this parameter is specified, the response includes only
    #               records beyond the marker, up to the value specified by <code>MaxRecords</code>. </p>
    #   @return [String]
    # @!attribute show_member_info
    #   <p>Returns the list of members that comprise the Global datastore.</p>
    #   @return [Boolean]
    class DescribeGlobalReplicationGroupsMessage < Struct.new(
      :global_replication_group_id,
      :max_records,
      :marker,
      :show_member_info,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute marker
    #   <p>An optional marker returned from a prior request. Use this marker for pagination of
    #               results from this operation. If this parameter is specified, the response includes only
    #               records beyond the marker, up to the value specified by MaxRecords. ></p>
    #   @return [String]
    # @!attribute global_replication_groups
    #   <p>Indicates the slot configuration and global identifier for each slice group.</p>
    #   @return [Array<Types::GlobalReplicationGroup>]
    class DescribeGlobalReplicationGroupsResult < Struct.new(
      :marker,
      :global_replication_groups,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of a <code>DescribeReplicationGroups</code> operation.</p>
    # @!attribute replication_group_id
    #   <p>The identifier for the replication group to be described. This parameter is not case
    #               sensitive.</p>
    #            <p>If you do not specify this parameter, information about all replication groups is
    #               returned.</p>
    #   @return [String]
    # @!attribute max_records
    #   <p>The maximum number of records to include in the response. If more records exist than
    #               the specified <code>MaxRecords</code> value, a marker is included in the response so
    #               that the remaining results can be retrieved.</p>
    #            <p>Default: 100</p>
    #            <p>Constraints: minimum 20; maximum 100.</p>
    #   @return [Integer]
    # @!attribute marker
    #   <p>An optional marker returned from a prior request. Use this marker for pagination of
    #               results from this operation. If this parameter is specified, the response includes only
    #               records beyond the marker, up to the value specified by <code>MaxRecords</code>.</p>
    #   @return [String]
    class DescribeReplicationGroupsMessage < Struct.new(
      :replication_group_id,
      :max_records,
      :marker,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of a <code>DescribeReservedCacheNodes</code> operation.</p>
    # @!attribute reserved_cache_node_id
    #   <p>The reserved cache node identifier filter value. Use this parameter to show only the
    #               reservation that matches the specified reservation ID.</p>
    #   @return [String]
    # @!attribute reserved_cache_nodes_offering_id
    #   <p>The offering identifier filter value. Use this parameter to show only purchased
    #               reservations matching the specified offering identifier.</p>
    #   @return [String]
    # @!attribute cache_node_type
    #   <p>The cache node type filter value. Use this parameter to show only those reservations
    #               matching the specified cache node type.</p>
    #            <p>The following node types are supported by ElastiCache. Generally speaking, the current
    #               generation types provide more memory and computational power at lower cost when compared
    #               to their equivalent previous generation counterparts.</p>
    #            <ul>
    #               <li>
    #                  <p>General purpose:</p>
    #                  <ul>
    #                     <li>
    #                        <p>Current generation: </p>
    #                        <p>
    #                           <b>M7g node types</b>:
    #       					<code>cache.m7g.large</code>,
    #       					<code>cache.m7g.xlarge</code>,
    #       					<code>cache.m7g.2xlarge</code>,
    #       					<code>cache.m7g.4xlarge</code>,
    #       					<code>cache.m7g.8xlarge</code>,
    #       					<code>cache.m7g.12xlarge</code>,
    #       					<code>cache.m7g.16xlarge</code>
    #                        </p>
    #                        <note>
    #                           <p>For region availability, see <a href="https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/CacheNodes.SupportedTypes.html#CacheNodes.SupportedTypesByRegion">Supported Node Types</a>
    #                           </p>
    #                        </note>
    #                        <p>
    #                           <b>M6g node types</b> (available only for Redis OSS engine version 5.0.6 onward and for Memcached engine version 1.5.16 onward):
    #   					    
    #   					 	<code>cache.m6g.large</code>,
    #   							<code>cache.m6g.xlarge</code>,
    #   							<code>cache.m6g.2xlarge</code>,
    #   							<code>cache.m6g.4xlarge</code>,
    #   							<code>cache.m6g.8xlarge</code>,
    #   							<code>cache.m6g.12xlarge</code>,
    #   							<code>cache.m6g.16xlarge</code>
    #                        </p>
    #                        <p>
    #                           <b>M5 node types:</b>
    #                           <code>cache.m5.large</code>,
    #       						<code>cache.m5.xlarge</code>,
    #       						<code>cache.m5.2xlarge</code>,
    #       						<code>cache.m5.4xlarge</code>,
    #       						<code>cache.m5.12xlarge</code>,
    #       						<code>cache.m5.24xlarge</code>
    #                        </p>
    #                        <p>
    #                           <b>M4 node types:</b>
    #                           <code>cache.m4.large</code>,
    #       						<code>cache.m4.xlarge</code>,
    #       						<code>cache.m4.2xlarge</code>,
    #       						<code>cache.m4.4xlarge</code>,
    #       						<code>cache.m4.10xlarge</code>
    #                        </p>
    #                        <p>
    #                           <b>T4g node types</b> (available only for Redis OSS engine version 5.0.6 onward and Memcached engine version 1.5.16 onward):
    #   					        <code>cache.t4g.micro</code>,
    #   					        <code>cache.t4g.small</code>,
    #   					        <code>cache.t4g.medium</code>
    #                        </p>
    #                        <p>
    #                           <b>T3 node types:</b>
    #                           <code>cache.t3.micro</code>, 
    #       						<code>cache.t3.small</code>,
    #       						<code>cache.t3.medium</code>
    #                        </p>
    #                        <p>
    #                           <b>T2 node types:</b>
    #                           <code>cache.t2.micro</code>, 
    #       						<code>cache.t2.small</code>,
    #       						<code>cache.t2.medium</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>Previous generation: (not recommended. Existing clusters are still supported but creation of new clusters is not supported for these types.)</p>
    #                        <p>
    #                           <b>T1 node types:</b>
    #                           <code>cache.t1.micro</code>
    #                        </p>
    #                        <p>
    #                           <b>M1 node types:</b>
    #                           <code>cache.m1.small</code>, 
    #   						   <code>cache.m1.medium</code>, 
    #   						   <code>cache.m1.large</code>,
    #   						   <code>cache.m1.xlarge</code>
    #                        </p>
    #                        <p>
    #                           <b>M3 node types:</b>
    #                           <code>cache.m3.medium</code>,
    #       						<code>cache.m3.large</code>, 
    #       						<code>cache.m3.xlarge</code>,
    #       						<code>cache.m3.2xlarge</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>Compute optimized:</p>
    #                  <ul>
    #                     <li>
    #                        <p>Previous generation: (not recommended. Existing clusters are still supported but creation of new clusters is not supported for these types.)</p>
    #                        <p>
    #                           <b>C1 node types:</b>
    #                           <code>cache.c1.xlarge</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>Memory optimized:</p>
    #                  <ul>
    #                     <li>
    #                        <p>Current generation: </p>
    #                        <p>
    #                           <b>R7g node types</b>:	
    #   							<code>cache.r7g.large</code>,
    #   							<code>cache.r7g.xlarge</code>,
    #   							<code>cache.r7g.2xlarge</code>,
    #   							<code>cache.r7g.4xlarge</code>,
    #   							<code>cache.r7g.8xlarge</code>,
    #   							<code>cache.r7g.12xlarge</code>,
    #   							<code>cache.r7g.16xlarge</code>
    #                        </p>
    #                        <note>
    #                           <p>For region availability, see <a href="https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/CacheNodes.SupportedTypes.html#CacheNodes.SupportedTypesByRegion">Supported Node Types</a>
    #                           </p>
    #                        </note>
    #                        <p>
    #                           <b>R6g node types</b> (available only for Redis OSS engine version 5.0.6 onward and for Memcached engine version 1.5.16 onward):
    #   							<code>cache.r6g.large</code>,
    #   							<code>cache.r6g.xlarge</code>,
    #   							<code>cache.r6g.2xlarge</code>,
    #   							<code>cache.r6g.4xlarge</code>,
    #   							<code>cache.r6g.8xlarge</code>,
    #   							<code>cache.r6g.12xlarge</code>,
    #   							<code>cache.r6g.16xlarge</code>
    #                        </p>
    #                        <p>
    #                           <b>R5 node types:</b>
    #                           <code>cache.r5.large</code>,
    #       					   <code>cache.r5.xlarge</code>,
    #       					   <code>cache.r5.2xlarge</code>,
    #       					   <code>cache.r5.4xlarge</code>,
    #       					   <code>cache.r5.12xlarge</code>,
    #       					   <code>cache.r5.24xlarge</code>
    #                        </p>
    #                        <p>
    #                           <b>R4 node types:</b>
    #                           <code>cache.r4.large</code>,
    #       					   <code>cache.r4.xlarge</code>,
    #       					   <code>cache.r4.2xlarge</code>,
    #       					   <code>cache.r4.4xlarge</code>,
    #       					   <code>cache.r4.8xlarge</code>,
    #       					   <code>cache.r4.16xlarge</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>Previous generation: (not recommended. Existing clusters are still supported but creation of new clusters is not supported for these types.)</p>
    #                        <p>
    #                           <b>M2 node types:</b>
    #                           <code>cache.m2.xlarge</code>, 
    #       						<code>cache.m2.2xlarge</code>,
    #       						<code>cache.m2.4xlarge</code>
    #                        </p>
    #                        <p>
    #                           <b>R3 node types:</b>
    #                           <code>cache.r3.large</code>, 
    #       						<code>cache.r3.xlarge</code>,
    #       						<code>cache.r3.2xlarge</code>,  
    #       						<code>cache.r3.4xlarge</code>,
    #       						<code>cache.r3.8xlarge</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #            </ul>
    #            <p>
    #               <b>Additional node type info</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>All current generation instance types are created in Amazon VPC by
    #                       default.</p>
    #               </li>
    #               <li>
    #                  <p>Valkey or Redis OSS append-only files (AOF) are not supported for T1 or T2 instances.</p>
    #               </li>
    #               <li>
    #                  <p>Valkey or Redis OSS Multi-AZ with automatic failover is not supported on T1
    #                       instances.</p>
    #               </li>
    #               <li>
    #                  <p>The configuration variables <code>appendonly</code> and
    #                           <code>appendfsync</code> are not supported on Valkey, or on Redis OSS version 2.8.22 and
    #                       later.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute duration
    #   <p>The duration filter value, specified in years or seconds. Use this parameter to show
    #               only reservations for this duration.</p>
    #            <p>Valid Values: <code>1 | 3 | 31536000 | 94608000</code>
    #            </p>
    #   @return [String]
    # @!attribute product_description
    #   <p>The product description filter value. Use this parameter to show only those
    #               reservations matching the specified product description.</p>
    #   @return [String]
    # @!attribute offering_type
    #   <p>The offering type filter value. Use this parameter to show only the available
    #               offerings matching the specified offering type.</p>
    #            <p>Valid values: <code>"Light Utilization"|"Medium Utilization"|"Heavy Utilization"|"All
    #                   Upfront"|"Partial Upfront"| "No Upfront"</code>
    #            </p>
    #   @return [String]
    # @!attribute max_records
    #   <p>The maximum number of records to include in the response. If more records exist than
    #               the specified <code>MaxRecords</code> value, a marker is included in the response so
    #               that the remaining results can be retrieved.</p>
    #            <p>Default: 100</p>
    #            <p>Constraints: minimum 20; maximum 100.</p>
    #   @return [Integer]
    # @!attribute marker
    #   <p>An optional marker returned from a prior request. Use this marker for pagination of
    #               results from this operation. If this parameter is specified, the response includes only
    #               records beyond the marker, up to the value specified by <code>MaxRecords</code>.</p>
    #   @return [String]
    class DescribeReservedCacheNodesMessage < Struct.new(
      :reserved_cache_node_id,
      :reserved_cache_nodes_offering_id,
      :cache_node_type,
      :duration,
      :product_description,
      :offering_type,
      :max_records,
      :marker,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of a <code>DescribeReservedCacheNodesOfferings</code>
    #             operation.</p>
    # @!attribute reserved_cache_nodes_offering_id
    #   <p>The offering identifier filter value. Use this parameter to show only the available
    #               offering that matches the specified reservation identifier.</p>
    #            <p>Example: <code>438012d3-4052-4cc7-b2e3-8d3372e0e706</code>
    #            </p>
    #   @return [String]
    # @!attribute cache_node_type
    #   <p>The cache node type filter value. Use this parameter to show only the available
    #               offerings matching the specified cache node type.</p>
    #            <p>The following node types are supported by ElastiCache. Generally speaking, the current
    #               generation types provide more memory and computational power at lower cost when compared
    #               to their equivalent previous generation counterparts.</p>
    #            <ul>
    #               <li>
    #                  <p>General purpose:</p>
    #                  <ul>
    #                     <li>
    #                        <p>Current generation: </p>
    #                        <p>
    #                           <b>M7g node types</b>:
    #       					<code>cache.m7g.large</code>,
    #       					<code>cache.m7g.xlarge</code>,
    #       					<code>cache.m7g.2xlarge</code>,
    #       					<code>cache.m7g.4xlarge</code>,
    #       					<code>cache.m7g.8xlarge</code>,
    #       					<code>cache.m7g.12xlarge</code>,
    #       					<code>cache.m7g.16xlarge</code>
    #                        </p>
    #                        <note>
    #                           <p>For region availability, see <a href="https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/CacheNodes.SupportedTypes.html#CacheNodes.SupportedTypesByRegion">Supported Node Types</a>
    #                           </p>
    #                        </note>
    #                        <p>
    #                           <b>M6g node types</b> (available only for Redis OSS engine version 5.0.6 onward and for Memcached engine version 1.5.16 onward):
    #   					    
    #   					 	<code>cache.m6g.large</code>,
    #   							<code>cache.m6g.xlarge</code>,
    #   							<code>cache.m6g.2xlarge</code>,
    #   							<code>cache.m6g.4xlarge</code>,
    #   							<code>cache.m6g.8xlarge</code>,
    #   							<code>cache.m6g.12xlarge</code>,
    #   							<code>cache.m6g.16xlarge</code>
    #                        </p>
    #                        <p>
    #                           <b>M5 node types:</b>
    #                           <code>cache.m5.large</code>,
    #       						<code>cache.m5.xlarge</code>,
    #       						<code>cache.m5.2xlarge</code>,
    #       						<code>cache.m5.4xlarge</code>,
    #       						<code>cache.m5.12xlarge</code>,
    #       						<code>cache.m5.24xlarge</code>
    #                        </p>
    #                        <p>
    #                           <b>M4 node types:</b>
    #                           <code>cache.m4.large</code>,
    #       						<code>cache.m4.xlarge</code>,
    #       						<code>cache.m4.2xlarge</code>,
    #       						<code>cache.m4.4xlarge</code>,
    #       						<code>cache.m4.10xlarge</code>
    #                        </p>
    #                        <p>
    #                           <b>T4g node types</b> (available only for Redis OSS engine version 5.0.6 onward and Memcached engine version 1.5.16 onward):
    #   					        <code>cache.t4g.micro</code>,
    #   					        <code>cache.t4g.small</code>,
    #   					        <code>cache.t4g.medium</code>
    #                        </p>
    #                        <p>
    #                           <b>T3 node types:</b>
    #                           <code>cache.t3.micro</code>, 
    #       						<code>cache.t3.small</code>,
    #       						<code>cache.t3.medium</code>
    #                        </p>
    #                        <p>
    #                           <b>T2 node types:</b>
    #                           <code>cache.t2.micro</code>, 
    #       						<code>cache.t2.small</code>,
    #       						<code>cache.t2.medium</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>Previous generation: (not recommended. Existing clusters are still supported but creation of new clusters is not supported for these types.)</p>
    #                        <p>
    #                           <b>T1 node types:</b>
    #                           <code>cache.t1.micro</code>
    #                        </p>
    #                        <p>
    #                           <b>M1 node types:</b>
    #                           <code>cache.m1.small</code>, 
    #   						   <code>cache.m1.medium</code>, 
    #   						   <code>cache.m1.large</code>,
    #   						   <code>cache.m1.xlarge</code>
    #                        </p>
    #                        <p>
    #                           <b>M3 node types:</b>
    #                           <code>cache.m3.medium</code>,
    #       						<code>cache.m3.large</code>, 
    #       						<code>cache.m3.xlarge</code>,
    #       						<code>cache.m3.2xlarge</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>Compute optimized:</p>
    #                  <ul>
    #                     <li>
    #                        <p>Previous generation: (not recommended. Existing clusters are still supported but creation of new clusters is not supported for these types.)</p>
    #                        <p>
    #                           <b>C1 node types:</b>
    #                           <code>cache.c1.xlarge</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>Memory optimized:</p>
    #                  <ul>
    #                     <li>
    #                        <p>Current generation: </p>
    #                        <p>
    #                           <b>R7g node types</b>:	
    #   							<code>cache.r7g.large</code>,
    #   							<code>cache.r7g.xlarge</code>,
    #   							<code>cache.r7g.2xlarge</code>,
    #   							<code>cache.r7g.4xlarge</code>,
    #   							<code>cache.r7g.8xlarge</code>,
    #   							<code>cache.r7g.12xlarge</code>,
    #   							<code>cache.r7g.16xlarge</code>
    #                        </p>
    #                        <note>
    #                           <p>For region availability, see <a href="https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/CacheNodes.SupportedTypes.html#CacheNodes.SupportedTypesByRegion">Supported Node Types</a>
    #                           </p>
    #                        </note>
    #                        <p>
    #                           <b>R6g node types</b> (available only for Redis OSS engine version 5.0.6 onward and for Memcached engine version 1.5.16 onward):
    #   							<code>cache.r6g.large</code>,
    #   							<code>cache.r6g.xlarge</code>,
    #   							<code>cache.r6g.2xlarge</code>,
    #   							<code>cache.r6g.4xlarge</code>,
    #   							<code>cache.r6g.8xlarge</code>,
    #   							<code>cache.r6g.12xlarge</code>,
    #   							<code>cache.r6g.16xlarge</code>
    #                        </p>
    #                        <p>
    #                           <b>R5 node types:</b>
    #                           <code>cache.r5.large</code>,
    #       					   <code>cache.r5.xlarge</code>,
    #       					   <code>cache.r5.2xlarge</code>,
    #       					   <code>cache.r5.4xlarge</code>,
    #       					   <code>cache.r5.12xlarge</code>,
    #       					   <code>cache.r5.24xlarge</code>
    #                        </p>
    #                        <p>
    #                           <b>R4 node types:</b>
    #                           <code>cache.r4.large</code>,
    #       					   <code>cache.r4.xlarge</code>,
    #       					   <code>cache.r4.2xlarge</code>,
    #       					   <code>cache.r4.4xlarge</code>,
    #       					   <code>cache.r4.8xlarge</code>,
    #       					   <code>cache.r4.16xlarge</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>Previous generation: (not recommended. Existing clusters are still supported but creation of new clusters is not supported for these types.)</p>
    #                        <p>
    #                           <b>M2 node types:</b>
    #                           <code>cache.m2.xlarge</code>, 
    #       						<code>cache.m2.2xlarge</code>,
    #       						<code>cache.m2.4xlarge</code>
    #                        </p>
    #                        <p>
    #                           <b>R3 node types:</b>
    #                           <code>cache.r3.large</code>, 
    #       						<code>cache.r3.xlarge</code>,
    #       						<code>cache.r3.2xlarge</code>,  
    #       						<code>cache.r3.4xlarge</code>,
    #       						<code>cache.r3.8xlarge</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #            </ul>
    #            <p>
    #               <b>Additional node type info</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>All current generation instance types are created in Amazon VPC by
    #                       default.</p>
    #               </li>
    #               <li>
    #                  <p>Valkey or Redis OSS append-only files (AOF) are not supported for T1 or T2 instances.</p>
    #               </li>
    #               <li>
    #                  <p>Valkey or Redis OSS Multi-AZ with automatic failover is not supported on T1
    #                       instances.</p>
    #               </li>
    #               <li>
    #                  <p>The configuration variables <code>appendonly</code> and
    #                           <code>appendfsync</code> are not supported on Valkey, or on Redis OSS version 2.8.22 and
    #                       later.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute duration
    #   <p>Duration filter value, specified in years or seconds. Use this parameter to show only
    #               reservations for a given duration.</p>
    #            <p>Valid Values: <code>1 | 3 | 31536000 | 94608000</code>
    #            </p>
    #   @return [String]
    # @!attribute product_description
    #   <p>The product description filter value. Use this parameter to show only the available
    #               offerings matching the specified product description.</p>
    #   @return [String]
    # @!attribute offering_type
    #   <p>The offering type filter value. Use this parameter to show only the available
    #               offerings matching the specified offering type.</p>
    #            <p>Valid Values: <code>"Light Utilization"|"Medium Utilization"|"Heavy Utilization" |"All
    #                   Upfront"|"Partial Upfront"| "No Upfront"</code>
    #            </p>
    #   @return [String]
    # @!attribute max_records
    #   <p>The maximum number of records to include in the response. If more records exist than
    #               the specified <code>MaxRecords</code> value, a marker is included in the response so
    #               that the remaining results can be retrieved.</p>
    #            <p>Default: 100</p>
    #            <p>Constraints: minimum 20; maximum 100.</p>
    #   @return [Integer]
    # @!attribute marker
    #   <p>An optional marker returned from a prior request. Use this marker for pagination of
    #               results from this operation. If this parameter is specified, the response includes only
    #               records beyond the marker, up to the value specified by <code>MaxRecords</code>.</p>
    #   @return [String]
    class DescribeReservedCacheNodesOfferingsMessage < Struct.new(
      :reserved_cache_nodes_offering_id,
      :cache_node_type,
      :duration,
      :product_description,
      :offering_type,
      :max_records,
      :marker,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute serverless_cache_name
    #   <p>The identifier of serverless cache. If this parameter is specified, 
    #              only snapshots associated with that specific serverless cache are described. Available for Valkey, Redis OSS and Serverless Memcached only.</p>
    #   @return [String]
    # @!attribute serverless_cache_snapshot_name
    #   <p>The identifier of the serverless cache’s snapshot.
    #              If this parameter is specified, only this snapshot is described. Available for Valkey, Redis OSS and Serverless Memcached only.</p>
    #   @return [String]
    # @!attribute snapshot_type
    #   <p>The type of snapshot that is being described. Available for Valkey, Redis OSS and Serverless Memcached only.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>An optional marker returned from a prior request to support pagination of results from this operation. 
    #              If this parameter is specified, the response includes only records beyond the marker, 
    #              up to the value specified by max-results. Available for Valkey, Redis OSS and Serverless Memcached only.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of records to include in the response. If more records exist than 
    #              the specified max-results value, a market is included in the response so that remaining results 
    #              can be retrieved. Available for Valkey, Redis OSS and Serverless Memcached only.The default is 50. The Validation Constraints are a maximum of 50.</p>
    #   @return [Integer]
    class DescribeServerlessCacheSnapshotsRequest < Struct.new(
      :serverless_cache_name,
      :serverless_cache_snapshot_name,
      :snapshot_type,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>An optional marker returned from a prior request to support pagination of results from this operation. 
    #              If this parameter is specified, the response includes only records beyond the marker, 
    #              up to the value specified by max-results. Available for Valkey, Redis OSS and Serverless Memcached only.</p>
    #   @return [String]
    # @!attribute serverless_cache_snapshots
    #   <p>The serverless caches snapshots associated with a given description request. Available for Valkey, Redis OSS and Serverless Memcached only.</p>
    #   @return [Array<Types::ServerlessCacheSnapshot>]
    class DescribeServerlessCacheSnapshotsResponse < Struct.new(
      :next_token,
      :serverless_cache_snapshots,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute serverless_cache_name
    #   <p>The identifier for the serverless cache. If this parameter is specified, 
    #              only information about that specific serverless cache is returned. Default: NULL</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of records in the response. If more records exist than the specified max-records value, 
    #              the next token is included in the response so that remaining results can be retrieved. 
    #              The default is 50.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>An optional marker returned from a prior request to support pagination of results from this operation. 
    #              If this parameter is specified, the response includes only records beyond the marker, 
    #              up to the value specified by MaxResults.</p>
    #   @return [String]
    class DescribeServerlessCachesRequest < Struct.new(
      :serverless_cache_name,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>An optional marker returned from a prior request to support pagination of results from this operation. 
    #              If this parameter is specified, the response includes only records beyond the marker, 
    #              up to the value specified by MaxResults.</p>
    #   @return [String]
    # @!attribute serverless_caches
    #   <p>The serverless caches associated with a given description request.</p>
    #   @return [Array<Types::ServerlessCache>]
    class DescribeServerlessCachesResponse < Struct.new(
      :next_token,
      :serverless_caches,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_update_name
    #   <p>The unique ID of the service update</p>
    #   @return [String]
    # @!attribute service_update_status
    #   <p>The status of the service update</p>
    #   @return [Array<String>]
    # @!attribute max_records
    #   <p>The maximum number of records to include in the response</p>
    #   @return [Integer]
    # @!attribute marker
    #   <p>An optional marker returned from a prior request. Use this marker for pagination of
    #               results from this operation. If this parameter is specified, the response includes only
    #               records beyond the marker, up to the value specified by <code>MaxRecords</code>.</p>
    #   @return [String]
    class DescribeServiceUpdatesMessage < Struct.new(
      :service_update_name,
      :service_update_status,
      :max_records,
      :marker,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a <code>DescribeSnapshots</code> operation.</p>
    # @!attribute marker
    #   <p>An optional marker returned from a prior request. Use this marker for pagination of
    #               results from this operation. If this parameter is specified, the response includes only
    #               records beyond the marker, up to the value specified by <code>MaxRecords</code>.</p>
    #   @return [String]
    # @!attribute snapshots
    #   <p>A list of snapshots. Each item in the list contains detailed information about one
    #               snapshot.</p>
    #   @return [Array<Types::Snapshot>]
    class DescribeSnapshotsListMessage < Struct.new(
      :marker,
      :snapshots,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of a <code>DescribeSnapshotsMessage</code> operation.</p>
    # @!attribute replication_group_id
    #   <p>A user-supplied replication group identifier. If this parameter is specified, only
    #               snapshots associated with that specific replication group are described.</p>
    #   @return [String]
    # @!attribute cache_cluster_id
    #   <p>A user-supplied cluster identifier. If this parameter is specified, only snapshots
    #               associated with that specific cluster are described.</p>
    #   @return [String]
    # @!attribute snapshot_name
    #   <p>A user-supplied name of the snapshot. If this parameter is specified, only this
    #               snapshot are described.</p>
    #   @return [String]
    # @!attribute snapshot_source
    #   <p>If set to <code>system</code>, the output shows snapshots that were automatically
    #               created by ElastiCache. If set to <code>user</code> the output shows snapshots that were
    #               manually created. If omitted, the output shows both automatically and manually created
    #               snapshots.</p>
    #   @return [String]
    # @!attribute marker
    #   <p>An optional marker returned from a prior request. Use this marker for pagination of
    #               results from this operation. If this parameter is specified, the response includes only
    #               records beyond the marker, up to the value specified by <code>MaxRecords</code>.</p>
    #   @return [String]
    # @!attribute max_records
    #   <p>The maximum number of records to include in the response. If more records exist than
    #               the specified <code>MaxRecords</code> value, a marker is included in the response so
    #               that the remaining results can be retrieved.</p>
    #            <p>Default: 50</p>
    #            <p>Constraints: minimum 20; maximum 50.</p>
    #   @return [Integer]
    # @!attribute show_node_group_config
    #   <p>A Boolean value which if true, the node group (shard) configuration is included in the
    #               snapshot description.</p>
    #   @return [Boolean]
    class DescribeSnapshotsMessage < Struct.new(
      :replication_group_id,
      :cache_cluster_id,
      :snapshot_name,
      :snapshot_source,
      :marker,
      :max_records,
      :show_node_group_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_update_name
    #   <p>The unique ID of the service update</p>
    #   @return [String]
    # @!attribute replication_group_ids
    #   <p>The replication group IDs</p>
    #   @return [Array<String>]
    # @!attribute cache_cluster_ids
    #   <p>The cache cluster IDs</p>
    #   @return [Array<String>]
    # @!attribute engine
    #   <p>The Elasticache engine to which the update applies. Either Valkey, Redis OSS or Memcached.</p>
    #   @return [String]
    # @!attribute service_update_status
    #   <p>The status of the service update</p>
    #   @return [Array<String>]
    # @!attribute service_update_time_range
    #   <p>The range of time specified to search for service updates that are in available
    #               status</p>
    #   @return [Types::TimeRangeFilter]
    # @!attribute update_action_status
    #   <p>The status of the update action.</p>
    #   @return [Array<String>]
    # @!attribute show_node_level_update_status
    #   <p>Dictates whether to include node level update status in the response </p>
    #   @return [Boolean]
    # @!attribute max_records
    #   <p>The maximum number of records to include in the response</p>
    #   @return [Integer]
    # @!attribute marker
    #   <p>An optional marker returned from a prior request. Use this marker for pagination of
    #               results from this operation. If this parameter is specified, the response includes only
    #               records beyond the marker, up to the value specified by <code>MaxRecords</code>.</p>
    #   @return [String]
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
      :marker,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute user_group_id
    #   <p>The ID of the user group.</p>
    #   @return [String]
    # @!attribute max_records
    #   <p>The maximum number of records to include in the response. If more records exist than
    #               the specified MaxRecords value, a marker is included in the response so that the
    #               remaining results can be retrieved. </p>
    #   @return [Integer]
    # @!attribute marker
    #   <p>An optional marker returned from a prior request. Use this marker for pagination of
    #               results from this operation. If this parameter is specified, the response includes only
    #               records beyond the marker, up to the value specified by MaxRecords. ></p>
    #   @return [String]
    class DescribeUserGroupsMessage < Struct.new(
      :user_group_id,
      :max_records,
      :marker,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute user_groups
    #   <p>Returns a list of user groups.</p>
    #   @return [Array<Types::UserGroup>]
    # @!attribute marker
    #   <p>An optional marker returned from a prior request. Use this marker for pagination of
    #               results from this operation. If this parameter is specified, the response includes only
    #               records beyond the marker, up to the value specified by MaxRecords.></p>
    #   @return [String]
    class DescribeUserGroupsResult < Struct.new(
      :user_groups,
      :marker,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute engine
    #   <p>The engine. </p>
    #   @return [String]
    # @!attribute user_id
    #   <p>The ID of the user.</p>
    #   @return [String]
    # @!attribute filters
    #   <p>Filter to determine the list of User IDs to return.</p>
    #   @return [Array<Types::Filter>]
    # @!attribute max_records
    #   <p>The maximum number of records to include in the response. If more records exist than
    #               the specified MaxRecords value, a marker is included in the response so that the
    #               remaining results can be retrieved. </p>
    #   @return [Integer]
    # @!attribute marker
    #   <p>An optional marker returned from a prior request. Use this marker for pagination of
    #               results from this operation. If this parameter is specified, the response includes only
    #               records beyond the marker, up to the value specified by MaxRecords. ></p>
    #   @return [String]
    class DescribeUsersMessage < Struct.new(
      :engine,
      :user_id,
      :filters,
      :max_records,
      :marker,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute users
    #   <p>A list of users.</p>
    #   @return [Array<Types::User>]
    # @!attribute marker
    #   <p>An optional marker returned from a prior request. Use this marker for pagination of
    #               results from this operation. If this parameter is specified, the response includes only
    #               records beyond the marker, up to the value specified by MaxRecords. ></p>
    #   @return [String]
    class DescribeUsersResult < Struct.new(
      :users,
      :marker,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration details of either a CloudWatch Logs destination or Kinesis Data Firehose
    #             destination.</p>
    # @!attribute cloud_watch_logs_details
    #   <p>The configuration details of the CloudWatch Logs destination.</p>
    #   @return [Types::CloudWatchLogsDestinationDetails]
    # @!attribute kinesis_firehose_details
    #   <p>The configuration details of the Kinesis Data Firehose destination.</p>
    #   @return [Types::KinesisFirehoseDestinationDetails]
    class DestinationDetails < Struct.new(
      :cloud_watch_logs_details,
      :kinesis_firehose_details,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute global_replication_group_id
    #   <p>The name of the Global datastore</p>
    #   @return [String]
    # @!attribute replication_group_id
    #   <p>The name of the secondary cluster you wish to remove from the Global datastore</p>
    #   @return [String]
    # @!attribute replication_group_region
    #   <p>The Amazon region of secondary cluster you wish to remove from the Global
    #               datastore</p>
    #   @return [String]
    class DisassociateGlobalReplicationGroupMessage < Struct.new(
      :global_replication_group_id,
      :replication_group_id,
      :replication_group_region,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute global_replication_group
    #   <p>Consists of a primary cluster that accepts writes and an associated secondary cluster
    #               that resides in a different Amazon region. The secondary cluster accepts only reads. The
    #               primary cluster automatically replicates updates to the secondary cluster.</p>
    #            <ul>
    #               <li>
    #                  <p>The <b>GlobalReplicationGroupIdSuffix</b> represents
    #                       the name of the Global datastore, which is what you use to associate a secondary
    #                       cluster.</p>
    #               </li>
    #            </ul>
    #   @return [Types::GlobalReplicationGroup]
    class DisassociateGlobalReplicationGroupResult < Struct.new(
      :global_replication_group,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A user with this username already exists.</p>
    # @!attribute message
    #   @return [String]
    class DuplicateUserNameFault < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provides ownership and status information for an Amazon EC2 security group.</p>
    # @!attribute status
    #   <p>The status of the Amazon EC2 security group.</p>
    #   @return [String]
    # @!attribute ec2_security_group_name
    #   <p>The name of the Amazon EC2 security group.</p>
    #   @return [String]
    # @!attribute ec2_security_group_owner_id
    #   <p>The Amazon account ID of the Amazon EC2 security group owner.</p>
    #   @return [String]
    class EC2SecurityGroup < Struct.new(
      :status,
      :ec2_security_group_name,
      :ec2_security_group_owner_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration for the number of ElastiCache Processing Units (ECPU) the cache can consume per second.</p>
    # @!attribute maximum
    #   <p>The configuration for the maximum number of ECPUs the cache can consume per second.</p>
    #   @return [Integer]
    # @!attribute minimum
    #   <p>The configuration for the minimum number of ECPUs the cache should be able consume per second.</p>
    #   @return [Integer]
    class ECPUPerSecond < Struct.new(
      :maximum,
      :minimum,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the information required for client programs to connect to a cache
    #             node. This value is read-only.</p>
    # @!attribute address
    #   <p>The DNS hostname of the cache node.</p>
    #   @return [String]
    # @!attribute port
    #   <p>The port number that the cache engine is listening on.</p>
    #   @return [Integer]
    class Endpoint < Struct.new(
      :address,
      :port,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a <code>DescribeEngineDefaultParameters</code>
    #             operation.</p>
    # @!attribute cache_parameter_group_family
    #   <p>Specifies the name of the cache parameter group family to which the engine default
    #               parameters apply.</p>
    #            <p>Valid values are: <code>memcached1.4</code> | <code>memcached1.5</code> |
    #                   <code>memcached1.6</code> | <code>redis2.6</code> | <code>redis2.8</code> |
    #                   <code>redis3.2</code> | <code>redis4.0</code> | <code>redis5.0</code> |
    #                   <code>redis6.0</code> | <code>redis6.x</code> | <code>redis7</code>
    #            </p>
    #   @return [String]
    # @!attribute marker
    #   <p>Provides an identifier to allow retrieval of paginated results.</p>
    #   @return [String]
    # @!attribute parameters
    #   <p>Contains a list of engine default parameters.</p>
    #   @return [Array<Types::Parameter>]
    # @!attribute cache_node_type_specific_parameters
    #   <p>A list of parameters specific to a particular cache node type. Each element in the
    #               list contains detailed information about one parameter.</p>
    #   @return [Array<Types::CacheNodeTypeSpecificParameter>]
    class EngineDefaults < Struct.new(
      :cache_parameter_group_family,
      :marker,
      :parameters,
      :cache_node_type_specific_parameters,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a single occurrence of something interesting within the system. Some
    #             examples of events are creating a cluster, adding or removing a cache node, or rebooting
    #             a node.</p>
    # @!attribute source_identifier
    #   <p>The identifier for the source of the event. For example, if the event occurred at the
    #               cluster level, the identifier would be the name of the cluster.</p>
    #   @return [String]
    # @!attribute source_type
    #   <p>Specifies the origin of this event - a cluster, a parameter group, a security group,
    #               etc.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The text of the event.</p>
    #   @return [String]
    # @!attribute date
    #   <p>The date and time when the event occurred.</p>
    #   @return [Time]
    class Event < Struct.new(
      :source_identifier,
      :source_type,
      :message,
      :date,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a <code>DescribeEvents</code> operation.</p>
    # @!attribute marker
    #   <p>Provides an identifier to allow retrieval of paginated results.</p>
    #   @return [String]
    # @!attribute events
    #   <p>A list of events. Each element in the list contains detailed information about one
    #               event.</p>
    #   @return [Array<Types::Event>]
    class EventsMessage < Struct.new(
      :marker,
      :events,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute serverless_cache_snapshot_name
    #   <p>The identifier of the serverless cache snapshot to be exported to S3. Available for Valkey and Redis OSS only.</p>
    #   @return [String]
    # @!attribute s3_bucket_name
    #   <p>Name of the Amazon S3 bucket to export the snapshot to. The Amazon S3 bucket must also be in same region 
    #              as the snapshot. Available for Valkey and Redis OSS only.</p>
    #   @return [String]
    class ExportServerlessCacheSnapshotRequest < Struct.new(
      :serverless_cache_snapshot_name,
      :s3_bucket_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute serverless_cache_snapshot
    #   <p>The state of a serverless cache at a specific point in time, to the millisecond. Available for Valkey, Redis OSS and Serverless Memcached only.</p>
    #   @return [Types::ServerlessCacheSnapshot]
    class ExportServerlessCacheSnapshotResponse < Struct.new(
      :serverless_cache_snapshot,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute global_replication_group_id
    #   <p>The name of the Global datastore</p>
    #   @return [String]
    # @!attribute primary_region
    #   <p>The Amazon region of the primary cluster of the Global datastore</p>
    #   @return [String]
    # @!attribute primary_replication_group_id
    #   <p>The name of the primary replication group</p>
    #   @return [String]
    class FailoverGlobalReplicationGroupMessage < Struct.new(
      :global_replication_group_id,
      :primary_region,
      :primary_replication_group_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute global_replication_group
    #   <p>Consists of a primary cluster that accepts writes and an associated secondary cluster
    #               that resides in a different Amazon region. The secondary cluster accepts only reads. The
    #               primary cluster automatically replicates updates to the secondary cluster.</p>
    #            <ul>
    #               <li>
    #                  <p>The <b>GlobalReplicationGroupIdSuffix</b> represents
    #                       the name of the Global datastore, which is what you use to associate a secondary
    #                       cluster.</p>
    #               </li>
    #            </ul>
    #   @return [Types::GlobalReplicationGroup]
    class FailoverGlobalReplicationGroupResult < Struct.new(
      :global_replication_group,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Used to streamline results of a search based on the property being filtered.</p>
    # @!attribute name
    #   <p>The property being filtered. For example, UserId.</p>
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

    # <p>Indicates the slot configuration and global identifier for a slice group.</p>
    # @!attribute global_node_group_id
    #   <p>The name of the global node group</p>
    #   @return [String]
    # @!attribute slots
    #   <p>The keyspace for this node group</p>
    #   @return [String]
    class GlobalNodeGroup < Struct.new(
      :global_node_group_id,
      :slots,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Consists of a primary cluster that accepts writes and an associated secondary cluster
    #             that resides in a different Amazon region. The secondary cluster accepts only reads. The
    #             primary cluster automatically replicates updates to the secondary cluster.</p>
    #          <ul>
    #             <li>
    #                <p>The <b>GlobalReplicationGroupIdSuffix</b> represents
    #                     the name of the Global datastore, which is what you use to associate a secondary
    #                     cluster.</p>
    #             </li>
    #          </ul>
    # @!attribute global_replication_group_id
    #   <p>The name of the Global datastore</p>
    #   @return [String]
    # @!attribute global_replication_group_description
    #   <p>The optional description of the Global datastore</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the Global datastore</p>
    #   @return [String]
    # @!attribute cache_node_type
    #   <p>The cache node type of the Global datastore</p>
    #   @return [String]
    # @!attribute engine
    #   <p>The ElastiCache engine. For Valkey or Redis OSS only.</p>
    #   @return [String]
    # @!attribute engine_version
    #   <p>The ElastiCache engine version.</p>
    #   @return [String]
    # @!attribute members
    #   <p>The replication groups that comprise the Global datastore.</p>
    #   @return [Array<Types::GlobalReplicationGroupMember>]
    # @!attribute cluster_enabled
    #   <p>A flag that indicates whether the Global datastore is cluster enabled.</p>
    #   @return [Boolean]
    # @!attribute global_node_groups
    #   <p>Indicates the slot configuration and global identifier for each slice group.</p>
    #   @return [Array<Types::GlobalNodeGroup>]
    # @!attribute auth_token_enabled
    #   <p>A flag that enables using an <code>AuthToken</code> (password) when issuing Valkey or Redis OSS 
    #               commands.</p>
    #            <p>Default: <code>false</code>
    #            </p>
    #   @return [Boolean]
    # @!attribute transit_encryption_enabled
    #   <p>A flag that enables in-transit encryption when set to true.</p>
    #            <p>
    #               <b>Required:</b> Only available when creating a replication
    #               group in an Amazon VPC using Redis OSS version <code>3.2.6</code>, <code>4.x</code> or
    #               later.</p>
    #   @return [Boolean]
    # @!attribute at_rest_encryption_enabled
    #   <p>A flag that enables encryption at rest when set to <code>true</code>.</p>
    #            <p>You cannot modify the value of <code>AtRestEncryptionEnabled</code> after the
    #               replication group is created. To enable encryption at rest on a replication group you
    #               must set <code>AtRestEncryptionEnabled</code> to <code>true</code> when you create the
    #               replication group. </p>
    #            <p>
    #               <b>Required:</b> Only available when creating a replication
    #               group in an Amazon VPC using Redis OSS version <code>3.2.6</code>, <code>4.x</code> or
    #               later.</p>
    #   @return [Boolean]
    # @!attribute arn
    #   <p>The ARN (Amazon Resource Name) of the global replication group.</p>
    #   @return [String]
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
      :arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The Global datastore name already exists.</p>
    # @!attribute message
    #   @return [String]
    class GlobalReplicationGroupAlreadyExistsFault < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The name of the Global datastore and role of this replication group in the Global
    #             datastore.</p>
    # @!attribute global_replication_group_id
    #   <p>The name of the Global datastore</p>
    #   @return [String]
    # @!attribute global_replication_group_member_role
    #   <p>The role of the replication group in a Global datastore. Can be primary or
    #               secondary.</p>
    #   @return [String]
    class GlobalReplicationGroupInfo < Struct.new(
      :global_replication_group_id,
      :global_replication_group_member_role,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A member of a Global datastore. It contains the Replication Group Id, the Amazon
    #             region and the role of the replication group. </p>
    # @!attribute replication_group_id
    #   <p>The replication group id of the Global datastore member.</p>
    #   @return [String]
    # @!attribute replication_group_region
    #   <p>The Amazon region of the Global datastore member.</p>
    #   @return [String]
    # @!attribute role
    #   <p>Indicates the role of the replication group, primary or secondary.</p>
    #   @return [String]
    # @!attribute automatic_failover
    #   <p>Indicates whether automatic failover is enabled for the replication group.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the membership of the replication group.</p>
    #   @return [String]
    class GlobalReplicationGroupMember < Struct.new(
      :replication_group_id,
      :replication_group_region,
      :role,
      :automatic_failover,
      :status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The Global datastore does not exist</p>
    # @!attribute message
    #   @return [String]
    class GlobalReplicationGroupNotFoundFault < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute global_replication_group_id
    #   <p>The name of the Global datastore</p>
    #   @return [String]
    # @!attribute node_group_count
    #   <p>Total number of node groups you want</p>
    #   @return [Integer]
    # @!attribute regional_configurations
    #   <p>Describes the replication group IDs, the Amazon regions where they are stored and the
    #               shard configuration for each that comprise the Global datastore</p>
    #   @return [Array<Types::RegionalConfiguration>]
    # @!attribute apply_immediately
    #   <p>Indicates that the process begins immediately. At present, the only permitted value
    #               for this parameter is true.</p>
    #   @return [Boolean]
    class IncreaseNodeGroupsInGlobalReplicationGroupMessage < Struct.new(
      :global_replication_group_id,
      :node_group_count,
      :regional_configurations,
      :apply_immediately,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute global_replication_group
    #   <p>Consists of a primary cluster that accepts writes and an associated secondary cluster
    #               that resides in a different Amazon region. The secondary cluster accepts only reads. The
    #               primary cluster automatically replicates updates to the secondary cluster.</p>
    #            <ul>
    #               <li>
    #                  <p>The <b>GlobalReplicationGroupIdSuffix</b> represents
    #                       the name of the Global datastore, which is what you use to associate a secondary
    #                       cluster.</p>
    #               </li>
    #            </ul>
    #   @return [Types::GlobalReplicationGroup]
    class IncreaseNodeGroupsInGlobalReplicationGroupResult < Struct.new(
      :global_replication_group,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute replication_group_id
    #   <p>The id of the replication group to which you want to add replica nodes.</p>
    #   @return [String]
    # @!attribute new_replica_count
    #   <p>The number of read replica nodes you want at the completion of this operation. For Valkey or Redis OSS (cluster mode disabled) replication groups, this is the number of replica nodes in
    #               the replication group. For Valkey or Redis OSS (cluster mode enabled) replication groups, this is the
    #               number of replica nodes in each of the replication group's node groups.</p>
    #   @return [Integer]
    # @!attribute replica_configuration
    #   <p>A list of <code>ConfigureShard</code> objects that can be used to configure each
    #               shard in a Valkey or Redis OSS (cluster mode enabled) replication group. The
    #                   <code>ConfigureShard</code> has three members: <code>NewReplicaCount</code>,
    #                   <code>NodeGroupId</code>, and <code>PreferredAvailabilityZones</code>.</p>
    #   @return [Array<Types::ConfigureShard>]
    # @!attribute apply_immediately
    #   <p>If <code>True</code>, the number of replica nodes is increased immediately.
    #                   <code>ApplyImmediately=False</code> is not currently supported.</p>
    #   @return [Boolean]
    class IncreaseReplicaCountMessage < Struct.new(
      :replication_group_id,
      :new_replica_count,
      :replica_configuration,
      :apply_immediately,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute replication_group
    #   <p>Contains all of the attributes of a specific Valkey or Redis OSS replication group.</p>
    #   @return [Types::ReplicationGroup]
    class IncreaseReplicaCountResult < Struct.new(
      :replication_group,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The requested cache node type is not available in the specified Availability Zone. For
    #             more information, see <a href="http://docs.aws.amazon.com/AmazonElastiCache/latest/dg/ErrorMessages.html#ErrorMessages.INSUFFICIENT_CACHE_CLUSTER_CAPACITY">InsufficientCacheClusterCapacity</a> in the ElastiCache User Guide.</p>
    # @!attribute message
    #   @return [String]
    class InsufficientCacheClusterCapacityFault < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The requested Amazon Resource Name (ARN) does not refer to an existing
    #             resource.</p>
    # @!attribute message
    #   @return [String]
    class InvalidARNFault < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The requested cluster is not in the <code>available</code> state.</p>
    # @!attribute message
    #   @return [String]
    class InvalidCacheClusterStateFault < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The current state of the cache parameter group does not allow the requested operation
    #             to occur.</p>
    # @!attribute message
    #   @return [String]
    class InvalidCacheParameterGroupStateFault < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The current state of the cache security group does not allow deletion.</p>
    # @!attribute message
    #   @return [String]
    class InvalidCacheSecurityGroupStateFault < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>You must enter valid credentials.</p>
    # @!attribute message
    #   @return [String]
    class InvalidCredentialsException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The Global datastore is not available or in primary-only state.</p>
    # @!attribute message
    #   @return [String]
    class InvalidGlobalReplicationGroupStateFault < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The KMS key supplied is not valid.</p>
    # @!attribute message
    #   @return [String]
    class InvalidKMSKeyFault < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Two or more incompatible parameters were specified.</p>
    # @!attribute message
    #   <p>Two or more parameters that must not be used together were used together.</p>
    #   @return [String]
    class InvalidParameterCombinationException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The value for a parameter is invalid.</p>
    # @!attribute message
    #   <p>A parameter value is invalid.</p>
    #   @return [String]
    class InvalidParameterValueException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The requested replication group is not in the <code>available</code> state.</p>
    # @!attribute message
    #   @return [String]
    class InvalidReplicationGroupStateFault < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The state of the serverless cache snapshot was not received. Available for Valkey, Redis OSS and Serverless Memcached only.</p>
    # @!attribute message
    #   @return [String]
    class InvalidServerlessCacheSnapshotStateFault < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The account for these credentials is not currently active.</p>
    # @!attribute message
    #   @return [String]
    class InvalidServerlessCacheStateFault < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The current state of the snapshot does not allow the requested operation to
    #             occur.</p>
    # @!attribute message
    #   @return [String]
    class InvalidSnapshotStateFault < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An invalid subnet identifier was specified.</p>
    # @!attribute message
    #   @return [String]
    class InvalidSubnet < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The user group is not in an active state.</p>
    # @!attribute message
    #   @return [String]
    class InvalidUserGroupStateFault < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The user is not in active state.</p>
    # @!attribute message
    #   @return [String]
    class InvalidUserStateFault < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The VPC network is in an invalid state.</p>
    # @!attribute message
    #   @return [String]
    class InvalidVPCNetworkStateFault < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration details of the Kinesis Data Firehose destination.</p>
    # @!attribute delivery_stream
    #   <p>The name of the Kinesis Data Firehose delivery stream.</p>
    #   @return [String]
    class KinesisFirehoseDestinationDetails < Struct.new(
      :delivery_stream,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The input parameters for the <code>ListAllowedNodeTypeModifications</code>
    #             operation.</p>
    # @!attribute cache_cluster_id
    #   <p>The name of the cluster you want to scale up to a larger node instanced type.
    #               ElastiCache uses the cluster id to identify the current node type of this cluster and
    #               from that to create a list of node types you can scale up to.</p>
    #            <important>
    #               <p>You must provide a value for either the <code>CacheClusterId</code> or the
    #                       <code>ReplicationGroupId</code>.</p>
    #            </important>
    #   @return [String]
    # @!attribute replication_group_id
    #   <p>The name of the replication group want to scale up to a larger node type. ElastiCache
    #               uses the replication group id to identify the current node type being used by this
    #               replication group, and from that to create a list of node types you can scale up
    #               to.</p>
    #            <important>
    #               <p>You must provide a value for either the <code>CacheClusterId</code> or the
    #                       <code>ReplicationGroupId</code>.</p>
    #            </important>
    #   @return [String]
    class ListAllowedNodeTypeModificationsMessage < Struct.new(
      :cache_cluster_id,
      :replication_group_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The input parameters for the <code>ListTagsForResource</code> operation.</p>
    # @!attribute resource_name
    #   <p>The Amazon Resource Name (ARN) of the resource for which you want the list of tags,
    #               for example <code>arn:aws:elasticache:us-west-2:0123456789:cluster:myCluster</code> or
    #                   <code>arn:aws:elasticache:us-west-2:0123456789:snapshot:mySnapshot</code>.</p>
    #            <p>For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)
    #                   and Amazon Web
    #                       Services Service Namespaces</a>.</p>
    #   @return [String]
    class ListTagsForResourceMessage < Struct.new(
      :resource_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output from the <code>AddTagsToResource</code>,
    #                 <code>ListTagsForResource</code>, and <code>RemoveTagsFromResource</code>
    #             operations.</p>
    # @!attribute tag_list
    #   <p>A list of tags as key-value pairs.</p>
    #   @return [Array<Types::Tag>]
    class ListTagsForResourceOutput < Struct.new(
      :tag_list,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Returns the destination, format and type of the logs. </p>
    # @!attribute log_type
    #   <p>Refers to <a href="https://redis.io/commands/slowlog">slow-log</a> or
    #               engine-log.</p>
    #   @return [String]
    # @!attribute destination_type
    #   <p>Returns the destination type, either <code>cloudwatch-logs</code> or
    #                   <code>kinesis-firehose</code>.</p>
    #   @return [String]
    # @!attribute destination_details
    #   <p>Configuration details of either a CloudWatch Logs destination or Kinesis Data Firehose
    #               destination.</p>
    #   @return [Types::DestinationDetails]
    # @!attribute log_format
    #   <p>Returns the log format, either JSON or TEXT.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Returns the log delivery configuration status. Values are one of <code>enabling</code>
    #               | <code>disabling</code> | <code>modifying</code> | <code>active</code> |
    #                   <code>error</code>
    #            </p>
    #   @return [String]
    # @!attribute message
    #   <p>Returns an error message for the log delivery configuration.</p>
    #   @return [String]
    class LogDeliveryConfiguration < Struct.new(
      :log_type,
      :destination_type,
      :destination_details,
      :log_format,
      :status,
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the destination, format and type of the logs. </p>
    # @!attribute log_type
    #   <p>Refers to <a href="https://redis.io/commands/slowlog">slow-log</a> or
    #               engine-log..</p>
    #   @return [String]
    # @!attribute destination_type
    #   <p>Specify either <code>cloudwatch-logs</code> or <code>kinesis-firehose</code> as the
    #               destination type.</p>
    #   @return [String]
    # @!attribute destination_details
    #   <p>Configuration details of either a CloudWatch Logs destination or Kinesis Data Firehose
    #               destination.</p>
    #   @return [Types::DestinationDetails]
    # @!attribute log_format
    #   <p>Specifies either JSON or TEXT</p>
    #   @return [String]
    # @!attribute enabled
    #   <p>Specify if log delivery is enabled. Default <code>true</code>.</p>
    #   @return [Boolean]
    class LogDeliveryConfigurationRequest < Struct.new(
      :log_type,
      :destination_type,
      :destination_details,
      :log_format,
      :enabled,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of a <code>ModifyCacheCluster</code> operation.</p>
    # @!attribute cache_cluster_id
    #   <p>The cluster identifier. This value is stored as a lowercase string.</p>
    #   @return [String]
    # @!attribute num_cache_nodes
    #   <p>The number of cache nodes that the cluster should have. If the value for
    #                   <code>NumCacheNodes</code> is greater than the sum of the number of current cache
    #               nodes and the number of cache nodes pending creation (which may be zero), more nodes are
    #               added. If the value is less than the number of existing cache nodes, nodes are removed.
    #               If the value is equal to the number of current cache nodes, any pending add or remove
    #               requests are canceled.</p>
    #            <p>If you are removing cache nodes, you must use the <code>CacheNodeIdsToRemove</code>
    #               parameter to provide the IDs of the specific cache nodes to remove.</p>
    #            <p>For clusters running Valkey or Redis OSS, this value must be 1. For clusters running Memcached, this
    #               value must be between 1 and 40.</p>
    #            <note>
    #               <p>Adding or removing Memcached cache nodes can be applied immediately or as a
    #                   pending operation (see <code>ApplyImmediately</code>).</p>
    #               <p>A pending operation to modify the number of cache nodes in a cluster during its
    #                   maintenance window, whether by adding or removing nodes in accordance with the scale
    #                   out architecture, is not queued. The customer's latest request to add or remove
    #                   nodes to the cluster overrides any previous pending operations to modify the number
    #                   of cache nodes in the cluster. For example, a request to remove 2 nodes would
    #                   override a previous pending operation to remove 3 nodes. Similarly, a request to add
    #                   2 nodes would override a previous pending operation to remove 3 nodes and vice
    #                   versa. As Memcached cache nodes may now be provisioned in different Availability
    #                   Zones with flexible cache node placement, a request to add nodes does not
    #                   automatically override a previous pending operation to add nodes. The customer can
    #                   modify the previous pending operation to add more nodes or explicitly cancel the
    #                   pending request and retry the new request. To cancel pending operations to modify
    #                   the number of cache nodes in a cluster, use the <code>ModifyCacheCluster</code>
    #                   request and set <code>NumCacheNodes</code> equal to the number of cache nodes
    #                   currently in the cluster.</p>
    #            </note>
    #   @return [Integer]
    # @!attribute cache_node_ids_to_remove
    #   <p>A list of cache node IDs to be removed. A node ID is a numeric identifier (0001, 0002,
    #               etc.). This parameter is only valid when <code>NumCacheNodes</code> is less than the
    #               existing number of cache nodes. The number of cache node IDs supplied in this parameter
    #               must match the difference between the existing number of cache nodes in the cluster or
    #               pending cache nodes, whichever is greater, and the value of <code>NumCacheNodes</code>
    #               in the request.</p>
    #            <p>For example: If you have 3 active cache nodes, 7 pending cache nodes, and the number
    #               of cache nodes in this <code>ModifyCacheCluster</code> call is 5, you must list 2 (7 -
    #               5) cache node IDs to remove.</p>
    #   @return [Array<String>]
    # @!attribute az_mode
    #   <p>Specifies whether the new nodes in this Memcached cluster are all created in a single
    #               Availability Zone or created across multiple Availability Zones.</p>
    #            <p>Valid values: <code>single-az</code> | <code>cross-az</code>.</p>
    #            <p>This option is only supported for Memcached clusters.</p>
    #            <note>
    #               <p>You cannot specify <code>single-az</code> if the Memcached cluster already has
    #                   cache nodes in different Availability Zones. If <code>cross-az</code> is specified,
    #                   existing Memcached nodes remain in their current Availability Zone.</p>
    #               <p>Only newly created nodes are located in different Availability Zones. </p>
    #            </note>
    #   @return [String]
    # @!attribute new_availability_zones
    #   <note>
    #               <p>This option is only supported on Memcached clusters.</p>
    #            </note>
    #            <p>The list of Availability Zones where the new Memcached cache nodes are created.</p>
    #            <p>This parameter is only valid when <code>NumCacheNodes</code> in the request is greater
    #               than the sum of the number of active cache nodes and the number of cache nodes pending
    #               creation (which may be zero). The number of Availability Zones supplied in this list
    #               must match the cache nodes being added in this request.</p>
    #            <p>Scenarios:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Scenario 1:</b> You have 3 active nodes and wish
    #                       to add 2 nodes. Specify <code>NumCacheNodes=5</code> (3 + 2) and optionally
    #                       specify two Availability Zones for the two new nodes.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Scenario 2:</b> You have 3 active nodes and 2
    #                       nodes pending creation (from the scenario 1 call) and want to add 1 more node.
    #                       Specify <code>NumCacheNodes=6</code> ((3 + 2) + 1) and optionally specify an
    #                       Availability Zone for the new node.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Scenario 3:</b> You want to cancel all pending
    #                       operations. Specify <code>NumCacheNodes=3</code> to cancel all pending
    #                       operations.</p>
    #               </li>
    #            </ul>
    #            <p>The Availability Zone placement of nodes pending creation cannot be modified. If you
    #               wish to cancel any nodes pending creation, add 0 nodes by setting
    #                   <code>NumCacheNodes</code> to the number of current nodes.</p>
    #            <p>If <code>cross-az</code> is specified, existing Memcached nodes remain in their
    #               current Availability Zone. Only newly created nodes can be located in different
    #               Availability Zones. For guidance on how to move existing Memcached nodes to different
    #               Availability Zones, see the <b>Availability Zone
    #                   Considerations</b> section of <a href="https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/CacheNodes.SupportedTypes.html">Cache Node
    #                   Considerations for Memcached</a>.</p>
    #            <p>
    #               <b>Impact of new add/remove requests upon pending requests</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>Scenario-1</p>
    #                  <ul>
    #                     <li>
    #                        <p>Pending Action: Delete</p>
    #                     </li>
    #                     <li>
    #                        <p>New Request: Delete</p>
    #                     </li>
    #                     <li>
    #                        <p>Result: The new delete, pending or immediate, replaces the pending
    #                               delete.</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>Scenario-2</p>
    #                  <ul>
    #                     <li>
    #                        <p>Pending Action: Delete</p>
    #                     </li>
    #                     <li>
    #                        <p>New Request: Create</p>
    #                     </li>
    #                     <li>
    #                        <p>Result: The new create, pending or immediate, replaces the pending
    #                               delete.</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>Scenario-3</p>
    #                  <ul>
    #                     <li>
    #                        <p>Pending Action: Create</p>
    #                     </li>
    #                     <li>
    #                        <p>New Request: Delete</p>
    #                     </li>
    #                     <li>
    #                        <p>Result: The new delete, pending or immediate, replaces the pending
    #                               create.</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>Scenario-4</p>
    #                  <ul>
    #                     <li>
    #                        <p>Pending Action: Create</p>
    #                     </li>
    #                     <li>
    #                        <p>New Request: Create</p>
    #                     </li>
    #                     <li>
    #                        <p>Result: The new create is added to the pending create.</p>
    #                        <important>
    #                           <p>
    #                              <b>Important:</b> If the new create
    #                                   request is <b>Apply Immediately - Yes</b>,
    #                                   all creates are performed immediately. If the new create request is
    #                                       <b>Apply Immediately - No</b>, all
    #                                   creates are pending.</p>
    #                        </important>
    #                     </li>
    #                  </ul>
    #               </li>
    #            </ul>
    #   @return [Array<String>]
    # @!attribute cache_security_group_names
    #   <p>A list of cache security group names to authorize on this cluster. This change is
    #               asynchronously applied as soon as possible.</p>
    #            <p>You can use this parameter only with clusters that are created outside of an Amazon
    #               Virtual Private Cloud (Amazon VPC).</p>
    #            <p>Constraints: Must contain no more than 255 alphanumeric characters. Must not be
    #               "Default".</p>
    #   @return [Array<String>]
    # @!attribute security_group_ids
    #   <p>Specifies the VPC Security Groups associated with the cluster.</p>
    #            <p>This parameter can be used only with clusters that are created in an Amazon Virtual
    #               Private Cloud (Amazon VPC).</p>
    #   @return [Array<String>]
    # @!attribute preferred_maintenance_window
    #   <p>Specifies the weekly time range during which maintenance on the cluster is performed.
    #               It is specified as a range in the format ddd:hh24:mi-ddd:hh24:mi (24H Clock UTC). The
    #               minimum maintenance window is a 60 minute period.</p>
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
    # @!attribute notification_topic_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon SNS topic to which notifications are
    #               sent.</p>
    #            <note>
    #               <p>The Amazon SNS topic owner must be same as the cluster owner.</p>
    #            </note>
    #   @return [String]
    # @!attribute cache_parameter_group_name
    #   <p>The name of the cache parameter group to apply to this cluster. This change is
    #               asynchronously applied as soon as possible for parameters when the
    #                   <code>ApplyImmediately</code> parameter is specified as <code>true</code> for this
    #               request.</p>
    #   @return [String]
    # @!attribute notification_topic_status
    #   <p>The status of the Amazon SNS notification topic. Notifications are sent only if the
    #               status is <code>active</code>.</p>
    #            <p>Valid values: <code>active</code> | <code>inactive</code>
    #            </p>
    #   @return [String]
    # @!attribute apply_immediately
    #   <p>If <code>true</code>, this parameter causes the modifications in this request and any
    #               pending modifications to be applied, asynchronously and as soon as possible, regardless
    #               of the <code>PreferredMaintenanceWindow</code> setting for the cluster.</p>
    #            <p>If <code>false</code>, changes to the cluster are applied on the next maintenance
    #               reboot, or the next failure reboot, whichever occurs first.</p>
    #            <important>
    #               <p>If you perform a <code>ModifyCacheCluster</code> before a pending modification is
    #                   applied, the pending modification is replaced by the newer modification.</p>
    #            </important>
    #            <p>Valid values: <code>true</code> | <code>false</code>
    #            </p>
    #            <p>Default: <code>false</code>
    #            </p>
    #   @return [Boolean]
    # @!attribute engine
    #   <p>The engine type used by the cache cluster. The options are valkey, memcached or redis.</p>
    #   @return [String]
    # @!attribute engine_version
    #   <p>The upgraded version of the cache engine to be run on the cache nodes.</p>
    #            <p>
    #               <b>Important:</b> You can upgrade to a newer engine version
    #               (see <a href="https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/SelectEngine.html#VersionManagement">Selecting
    #                   a Cache Engine and Version</a>), but you cannot downgrade to an earlier engine
    #               version. If you want to use an earlier engine version, you must delete the existing
    #               cluster and create it anew with the earlier engine version. </p>
    #   @return [String]
    # @!attribute auto_minor_version_upgrade
    #   <p> If you are running Valkey 7.2 or Redis OSS engine version 6.0 or later, set this parameter to yes 
    #               to opt-in to the next auto minor version upgrade campaign. This parameter is
    #               disabled for previous versions.  </p>
    #   @return [Boolean]
    # @!attribute snapshot_retention_limit
    #   <p>The number of days for which ElastiCache retains automatic cluster snapshots before
    #               deleting them. For example, if you set <code>SnapshotRetentionLimit</code> to 5, a
    #               snapshot that was taken today is retained for 5 days before being deleted.</p>
    #            <note>
    #               <p>If the value of <code>SnapshotRetentionLimit</code> is set to zero (0), backups
    #                   are turned off.</p>
    #            </note>
    #   @return [Integer]
    # @!attribute snapshot_window
    #   <p>The daily time range (in UTC) during which ElastiCache begins taking a daily snapshot
    #               of your cluster. </p>
    #   @return [String]
    # @!attribute cache_node_type
    #   <p>A valid cache node type that you want to scale this cluster up to.</p>
    #   @return [String]
    # @!attribute auth_token
    #   <p>Reserved parameter. The password used to access a password protected server. This
    #               parameter must be specified with the <code>auth-token-update</code> parameter. Password
    #               constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must be only printable ASCII characters</p>
    #               </li>
    #               <li>
    #                  <p>Must be at least 16 characters and no more than 128 characters in
    #                       length</p>
    #               </li>
    #               <li>
    #                  <p>Cannot contain any of the following characters: '/', '"', or '@', '%'</p>
    #               </li>
    #            </ul>
    #            <p> For more information, see AUTH password at <a href="http://redis.io/commands/AUTH">AUTH</a>.</p>
    #   @return [String]
    # @!attribute auth_token_update_strategy
    #   <p>Specifies the strategy to use to update the AUTH token. This parameter must be
    #               specified with the <code>auth-token</code> parameter. Possible values:</p>
    #            <ul>
    #               <li>
    #                  <p>ROTATE - default, if no update strategy is provided</p>
    #               </li>
    #               <li>
    #                  <p>SET - allowed only after ROTATE</p>
    #               </li>
    #               <li>
    #                  <p>DELETE - allowed only when transitioning to RBAC</p>
    #               </li>
    #            </ul>
    #            <p> For more information, see <a href="http://docs.aws.amazon.com/AmazonElastiCache/latest/dg/auth.html">Authenticating Users with AUTH</a>
    #            </p>
    #   @return [String]
    # @!attribute log_delivery_configurations
    #   <p>Specifies the destination, format and type of the logs.</p>
    #   @return [Array<Types::LogDeliveryConfigurationRequest>]
    # @!attribute ip_discovery
    #   <p>The network type you choose when modifying a cluster, either <code>ipv4</code> |
    #               <code>ipv6</code>. IPv6 is supported for workloads using Valkey 7.2 and above, Redis OSS engine version 6.2
    #               to 7.1 or Memcached engine version 1.6.6 and above on all instances built on the <a href="http://aws.amazon.com/ec2/nitro/">Nitro system</a>.</p>
    #   @return [String]
    # @!attribute scale_config
    #   <p>Configures horizontal or vertical scaling for Memcached clusters, specifying the scaling percentage and interval.</p>
    #   @return [Types::ScaleConfig]
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
      :engine,
      :engine_version,
      :auto_minor_version_upgrade,
      :snapshot_retention_limit,
      :snapshot_window,
      :cache_node_type,
      :auth_token,
      :auth_token_update_strategy,
      :log_delivery_configurations,
      :ip_discovery,
      :scale_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute cache_cluster
    #   <p>Contains all of the attributes of a specific cluster.</p>
    #   @return [Types::CacheCluster]
    class ModifyCacheClusterResult < Struct.new(
      :cache_cluster,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of a <code>ModifyCacheParameterGroup</code> operation.</p>
    # @!attribute cache_parameter_group_name
    #   <p>The name of the cache parameter group to modify.</p>
    #   @return [String]
    # @!attribute parameter_name_values
    #   <p>An array of parameter names and values for the parameter update. You must supply at
    #               least one parameter name and value; subsequent arguments are optional. A maximum of 20
    #               parameters may be modified per request.</p>
    #   @return [Array<Types::ParameterNameValue>]
    class ModifyCacheParameterGroupMessage < Struct.new(
      :cache_parameter_group_name,
      :parameter_name_values,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of one of the following operations:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>ModifyCacheParameterGroup</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>ResetCacheParameterGroup</code>
    #                </p>
    #             </li>
    #          </ul>
    # @!attribute cache_parameter_group_name
    #   <p>The name of the cache parameter group.</p>
    #   @return [String]
    class ModifyCacheParameterGroupOutput < Struct.new(
      :cache_parameter_group_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of a <code>ModifyCacheSubnetGroup</code> operation.</p>
    # @!attribute cache_subnet_group_name
    #   <p>The name for the cache subnet group. This value is stored as a lowercase
    #               string.</p>
    #            <p>Constraints: Must contain no more than 255 alphanumeric characters or hyphens.</p>
    #            <p>Example: <code>mysubnetgroup</code>
    #            </p>
    #   @return [String]
    # @!attribute cache_subnet_group_description
    #   <p>A description of the cache subnet group.</p>
    #   @return [String]
    # @!attribute subnet_ids
    #   <p>The EC2 subnet IDs for the cache subnet group.</p>
    #   @return [Array<String>]
    class ModifyCacheSubnetGroupMessage < Struct.new(
      :cache_subnet_group_name,
      :cache_subnet_group_description,
      :subnet_ids,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute cache_subnet_group
    #   <p>Represents the output of one of the following operations:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CreateCacheSubnetGroup</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ModifyCacheSubnetGroup</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [Types::CacheSubnetGroup]
    class ModifyCacheSubnetGroupResult < Struct.new(
      :cache_subnet_group,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute global_replication_group_id
    #   <p>The name of the Global datastore</p>
    #   @return [String]
    # @!attribute apply_immediately
    #   <p>This parameter causes the modifications in this request and any pending modifications
    #               to be applied, asynchronously and as soon as possible. Modifications to Global
    #               Replication Groups cannot be requested to be applied in PreferredMaintenceWindow.
    #           </p>
    #   @return [Boolean]
    # @!attribute cache_node_type
    #   <p>A valid cache node type that you want to scale this Global datastore to.</p>
    #   @return [String]
    # @!attribute engine
    #   <p>Modifies the engine listed in a global replication group message. The options are redis, memcached or valkey.</p>
    #   @return [String]
    # @!attribute engine_version
    #   <p>The upgraded version of the cache engine to be run on the clusters in the Global
    #               datastore. </p>
    #   @return [String]
    # @!attribute cache_parameter_group_name
    #   <p>The name of the cache parameter group to use with the Global datastore. It must be
    #               compatible with the major engine version used by the Global datastore.</p>
    #   @return [String]
    # @!attribute global_replication_group_description
    #   <p>A description of the Global datastore</p>
    #   @return [String]
    # @!attribute automatic_failover_enabled
    #   <p>Determines whether a read replica is automatically promoted to read/write primary if
    #               the existing primary encounters a failure. </p>
    #   @return [Boolean]
    class ModifyGlobalReplicationGroupMessage < Struct.new(
      :global_replication_group_id,
      :apply_immediately,
      :cache_node_type,
      :engine,
      :engine_version,
      :cache_parameter_group_name,
      :global_replication_group_description,
      :automatic_failover_enabled,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute global_replication_group
    #   <p>Consists of a primary cluster that accepts writes and an associated secondary cluster
    #               that resides in a different Amazon region. The secondary cluster accepts only reads. The
    #               primary cluster automatically replicates updates to the secondary cluster.</p>
    #            <ul>
    #               <li>
    #                  <p>The <b>GlobalReplicationGroupIdSuffix</b> represents
    #                       the name of the Global datastore, which is what you use to associate a secondary
    #                       cluster.</p>
    #               </li>
    #            </ul>
    #   @return [Types::GlobalReplicationGroup]
    class ModifyGlobalReplicationGroupResult < Struct.new(
      :global_replication_group,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of a <code>ModifyReplicationGroups</code> operation.</p>
    # @!attribute replication_group_id
    #   <p>The identifier of the replication group to modify.</p>
    #   @return [String]
    # @!attribute replication_group_description
    #   <p>A description for the replication group. Maximum length is 255 characters.</p>
    #   @return [String]
    # @!attribute primary_cluster_id
    #   <p>For replication groups with a single primary, if this parameter is specified,
    #               ElastiCache promotes the specified cluster in the specified replication group to the
    #               primary role. The nodes of all other clusters in the replication group are read
    #               replicas.</p>
    #   @return [String]
    # @!attribute snapshotting_cluster_id
    #   <p>The cluster ID that is used as the daily snapshot source for the replication group.
    #               This parameter cannot be set for Valkey or Redis OSS (cluster mode enabled) replication groups.</p>
    #   @return [String]
    # @!attribute automatic_failover_enabled
    #   <p>Determines whether a read replica is automatically promoted to read/write primary if
    #               the existing primary encounters a failure.</p>
    #            <p>Valid values: <code>true</code> | <code>false</code>
    #            </p>
    #   @return [Boolean]
    # @!attribute multi_az_enabled
    #   <p>A flag to indicate MultiAZ is enabled.</p>
    #   @return [Boolean]
    # @!attribute node_group_id
    #   <p>Deprecated. This parameter is not used.</p>
    #   @deprecated
    #   @return [String]
    # @!attribute cache_security_group_names
    #   <p>A list of cache security group names to authorize for the clusters in this replication
    #               group. This change is asynchronously applied as soon as possible.</p>
    #            <p>This parameter can be used only with replication group containing clusters running
    #               outside of an Amazon Virtual Private Cloud (Amazon VPC).</p>
    #            <p>Constraints: Must contain no more than 255 alphanumeric characters. Must not be
    #                   <code>Default</code>.</p>
    #   @return [Array<String>]
    # @!attribute security_group_ids
    #   <p>Specifies the VPC Security Groups associated with the clusters in the replication
    #               group.</p>
    #            <p>This parameter can be used only with replication group containing clusters running in
    #               an Amazon Virtual Private Cloud (Amazon VPC).</p>
    #   @return [Array<String>]
    # @!attribute preferred_maintenance_window
    #   <p>Specifies the weekly time range during which maintenance on the cluster is performed.
    #               It is specified as a range in the format ddd:hh24:mi-ddd:hh24:mi (24H Clock UTC). The
    #               minimum maintenance window is a 60 minute period.</p>
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
    # @!attribute notification_topic_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon SNS topic to which notifications are
    #               sent.</p>
    #            <note>
    #               <p>The Amazon SNS topic owner must be same as the replication group owner. </p>
    #            </note>
    #   @return [String]
    # @!attribute cache_parameter_group_name
    #   <p>The name of the cache parameter group to apply to all of the clusters in this
    #               replication group. This change is asynchronously applied as soon as possible for
    #               parameters when the <code>ApplyImmediately</code> parameter is specified as
    #                   <code>true</code> for this request.</p>
    #   @return [String]
    # @!attribute notification_topic_status
    #   <p>The status of the Amazon SNS notification topic for the replication group.
    #               Notifications are sent only if the status is <code>active</code>.</p>
    #            <p>Valid values: <code>active</code> | <code>inactive</code>
    #            </p>
    #   @return [String]
    # @!attribute apply_immediately
    #   <p>If <code>true</code>, this parameter causes the modifications in this request and any
    #               pending modifications to be applied, asynchronously and as soon as possible, regardless
    #               of the <code>PreferredMaintenanceWindow</code> setting for the replication group.</p>
    #            <p>If <code>false</code>, changes to the nodes in the replication group are applied on
    #               the next maintenance reboot, or the next failure reboot, whichever occurs first.</p>
    #            <p>Valid values: <code>true</code> | <code>false</code>
    #            </p>
    #            <p>Default: <code>false</code>
    #            </p>
    #   @return [Boolean]
    # @!attribute engine
    #   <p>Modifies the engine listed in a replication group message. The options are redis, memcached or valkey.</p>
    #   @return [String]
    # @!attribute engine_version
    #   <p>The upgraded version of the cache engine to be run on the clusters in the replication
    #               group.</p>
    #            <p>
    #               <b>Important:</b> You can upgrade to a newer engine version
    #               (see <a href="https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/SelectEngine.html#VersionManagement">Selecting
    #                   a Cache Engine and Version</a>), but you cannot downgrade to an earlier engine
    #               version. If you want to use an earlier engine version, you must delete the existing
    #               replication group and create it anew with the earlier engine version. </p>
    #   @return [String]
    # @!attribute auto_minor_version_upgrade
    #   <p> If you are running Valkey or Redis OSS engine version 6.0 or later, set this parameter to yes if
    #               you want to opt-in to the next auto minor version upgrade campaign. This parameter is
    #               disabled for previous versions.  </p>
    #   @return [Boolean]
    # @!attribute snapshot_retention_limit
    #   <p>The number of days for which ElastiCache retains automatic node group (shard)
    #               snapshots before deleting them. For example, if you set
    #                   <code>SnapshotRetentionLimit</code> to 5, a snapshot that was taken today is
    #               retained for 5 days before being deleted.</p>
    #            <p>
    #               <b>Important</b> If the value of SnapshotRetentionLimit is
    #               set to zero (0), backups are turned off.</p>
    #   @return [Integer]
    # @!attribute snapshot_window
    #   <p>The daily time range (in UTC) during which ElastiCache begins taking a daily snapshot
    #               of the node group (shard) specified by <code>SnapshottingClusterId</code>.</p>
    #            <p>Example: <code>05:00-09:00</code>
    #            </p>
    #            <p>If you do not specify this parameter, ElastiCache automatically chooses an appropriate
    #               time range.</p>
    #   @return [String]
    # @!attribute cache_node_type
    #   <p>A valid cache node type that you want to scale this replication group to.</p>
    #   @return [String]
    # @!attribute auth_token
    #   <p>Reserved parameter. The password used to access a password protected server. This
    #               parameter must be specified with the <code>auth-token-update-strategy </code> parameter.
    #               Password constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must be only printable ASCII characters</p>
    #               </li>
    #               <li>
    #                  <p>Must be at least 16 characters and no more than 128 characters in
    #                       length</p>
    #               </li>
    #               <li>
    #                  <p>Cannot contain any of the following characters: '/', '"', or '@', '%'</p>
    #               </li>
    #            </ul>
    #            <p> For more information, see AUTH password at <a href="http://redis.io/commands/AUTH">AUTH</a>.</p>
    #   @return [String]
    # @!attribute auth_token_update_strategy
    #   <p>Specifies the strategy to use to update the AUTH token. This parameter must be
    #               specified with the <code>auth-token</code> parameter. Possible values:</p>
    #            <ul>
    #               <li>
    #                  <p>ROTATE - default, if no update strategy is provided</p>
    #               </li>
    #               <li>
    #                  <p>SET - allowed only after ROTATE</p>
    #               </li>
    #               <li>
    #                  <p>DELETE - allowed only when transitioning to RBAC</p>
    #               </li>
    #            </ul>
    #            <p> For more information, see <a href="http://docs.aws.amazon.com/AmazonElastiCache/latest/dg/auth.html">Authenticating Users with AUTH</a>
    #            </p>
    #   @return [String]
    # @!attribute user_group_ids_to_add
    #   <p>The ID of the user group you are associating with the replication group.</p>
    #   @return [Array<String>]
    # @!attribute user_group_ids_to_remove
    #   <p>The ID of the user group to disassociate from the replication group, meaning the users
    #               in the group no longer can access the replication group.</p>
    #   @return [Array<String>]
    # @!attribute remove_user_groups
    #   <p>Removes the user group associated with this replication group.</p>
    #   @return [Boolean]
    # @!attribute log_delivery_configurations
    #   <p>Specifies the destination, format and type of the logs.</p>
    #   @return [Array<Types::LogDeliveryConfigurationRequest>]
    # @!attribute ip_discovery
    #   <p>The network type you choose when modifying a cluster, either <code>ipv4</code> |
    #               <code>ipv6</code>. IPv6 is supported for workloads using Valkey 7.2 and above, Redis OSS engine version 6.2
    #               to 7.1 and Memcached engine version 1.6.6 and above on all instances built on the <a href="http://aws.amazon.com/ec2/nitro/">Nitro system</a>.</p>
    #   @return [String]
    # @!attribute transit_encryption_enabled
    #   <p>A flag that enables in-transit encryption when set to true. If you are enabling
    #               in-transit encryption for an existing cluster, you must also set
    #                   <code>TransitEncryptionMode</code> to <code>preferred</code>.</p>
    #   @return [Boolean]
    # @!attribute transit_encryption_mode
    #   <p>A setting that allows you to migrate your clients to use in-transit encryption, with
    #               no downtime.</p>
    #            <p>You must set <code>TransitEncryptionEnabled</code> to <code>true</code>, for your
    #               existing cluster, and set <code>TransitEncryptionMode</code> to <code>preferred</code>
    #               in the same request to allow both encrypted and unencrypted connections at the same
    #               time. Once you migrate all your Valkey or Redis OSS clients to use encrypted connections you can set
    #               the value to <code>required</code> to allow encrypted connections only.</p>
    #            <p>Setting <code>TransitEncryptionMode</code> to <code>required</code> is a two-step
    #               process that requires you to first set the <code>TransitEncryptionMode</code> to
    #                   <code>preferred</code>, after that you can set <code>TransitEncryptionMode</code> to
    #                   <code>required</code>. </p>
    #   @return [String]
    # @!attribute cluster_mode
    #   <p>Enabled or Disabled. To modify cluster mode from Disabled to Enabled, you must first
    #               set the cluster mode to Compatible. Compatible mode allows your Valkey or Redis OSS clients to connect
    #               using both cluster mode enabled and cluster mode disabled. After you migrate all Valkey or Redis OSS
    #               clients to use cluster mode enabled, you can then complete cluster mode configuration
    #               and set the cluster mode to Enabled.</p>
    #   @return [String]
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
      :engine,
      :engine_version,
      :auto_minor_version_upgrade,
      :snapshot_retention_limit,
      :snapshot_window,
      :cache_node_type,
      :auth_token,
      :auth_token_update_strategy,
      :user_group_ids_to_add,
      :user_group_ids_to_remove,
      :remove_user_groups,
      :log_delivery_configurations,
      :ip_discovery,
      :transit_encryption_enabled,
      :transit_encryption_mode,
      :cluster_mode,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute replication_group
    #   <p>Contains all of the attributes of a specific Valkey or Redis OSS replication group.</p>
    #   @return [Types::ReplicationGroup]
    class ModifyReplicationGroupResult < Struct.new(
      :replication_group,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input for a <code>ModifyReplicationGroupShardConfiguration</code>
    #             operation.</p>
    # @!attribute replication_group_id
    #   <p>The name of the Valkey or Redis OSS (cluster mode enabled) cluster (replication group) on which the
    #               shards are to be configured.</p>
    #   @return [String]
    # @!attribute node_group_count
    #   <p>The number of node groups (shards) that results from the modification of the shard
    #               configuration.</p>
    #   @return [Integer]
    # @!attribute apply_immediately
    #   <p>Indicates that the shard reconfiguration process begins immediately. At present, the
    #               only permitted value for this parameter is <code>true</code>.</p>
    #            <p>Value: true</p>
    #   @return [Boolean]
    # @!attribute resharding_configuration
    #   <p>Specifies the preferred availability zones for each node group in the cluster. If the
    #               value of <code>NodeGroupCount</code> is greater than the current number of node groups
    #               (shards), you can use this parameter to specify the preferred availability zones of the
    #               cluster's shards. If you omit this parameter ElastiCache selects availability zones for
    #               you.</p>
    #            <p>You can specify this parameter only if the value of <code>NodeGroupCount</code> is
    #               greater than the current number of node groups (shards).</p>
    #   @return [Array<Types::ReshardingConfiguration>]
    # @!attribute node_groups_to_remove
    #   <p>If the value of <code>NodeGroupCount</code> is less than the current number of node
    #               groups (shards), then either <code>NodeGroupsToRemove</code> or
    #                   <code>NodeGroupsToRetain</code> is required. <code>NodeGroupsToRemove</code> is a
    #               list of <code>NodeGroupId</code>s to remove from the cluster.</p>
    #            <p>ElastiCache will attempt to remove all node groups listed by
    #                   <code>NodeGroupsToRemove</code> from the cluster.</p>
    #   @return [Array<String>]
    # @!attribute node_groups_to_retain
    #   <p>If the value of <code>NodeGroupCount</code> is less than the current number of node
    #               groups (shards), then either <code>NodeGroupsToRemove</code> or
    #                   <code>NodeGroupsToRetain</code> is required. <code>NodeGroupsToRetain</code> is a
    #               list of <code>NodeGroupId</code>s to retain in the cluster.</p>
    #            <p>ElastiCache will attempt to remove all node groups except those listed by
    #                   <code>NodeGroupsToRetain</code> from the cluster.</p>
    #   @return [Array<String>]
    class ModifyReplicationGroupShardConfigurationMessage < Struct.new(
      :replication_group_id,
      :node_group_count,
      :apply_immediately,
      :resharding_configuration,
      :node_groups_to_remove,
      :node_groups_to_retain,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute replication_group
    #   <p>Contains all of the attributes of a specific Valkey or Redis OSS replication group.</p>
    #   @return [Types::ReplicationGroup]
    class ModifyReplicationGroupShardConfigurationResult < Struct.new(
      :replication_group,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute serverless_cache_name
    #   <p>User-provided identifier for the serverless cache to be modified.</p>
    #   @return [String]
    # @!attribute description
    #   <p>User provided description for the serverless cache. 
    #              Default = NULL, i.e. the existing description is not removed/modified. 
    #              The description has a maximum length of 255 characters.</p>
    #   @return [String]
    # @!attribute cache_usage_limits
    #   <p>Modify the cache usage limit for the serverless cache.</p>
    #   @return [Types::CacheUsageLimits]
    # @!attribute remove_user_group
    #   <p>The identifier of the UserGroup to be removed from association with the Valkey and Redis OSS serverless cache.  Available for Valkey and Redis OSS only. Default is NULL.</p>
    #   @return [Boolean]
    # @!attribute user_group_id
    #   <p>The identifier of the UserGroup to be associated with the serverless cache. Available for Valkey and Redis OSS only. 
    #              Default is NULL -  the existing UserGroup is not removed.</p>
    #   @return [String]
    # @!attribute security_group_ids
    #   <p>The new list of VPC security groups to be associated with the serverless cache. 
    #              Populating this list means the current VPC security groups will be removed. 
    #              This security group is used to authorize traffic access for the VPC end-point (private-link). 
    #              Default = NULL -  the existing list of VPC security groups is not removed.</p>
    #   @return [Array<String>]
    # @!attribute snapshot_retention_limit
    #   <p>The number of days for which Elasticache retains automatic snapshots before deleting them. 
    #              Available for Valkey, Redis OSS and Serverless Memcached only.
    #              Default = NULL, i.e. the existing snapshot-retention-limit will not be removed or modified. 
    #              The maximum value allowed is 35 days.</p>
    #   @return [Integer]
    # @!attribute daily_snapshot_time
    #   <p>The daily time during which Elasticache begins taking a daily snapshot of the serverless cache.  Available for Valkey, Redis OSS and Serverless Memcached only.
    #              The default is NULL, i.e. the existing snapshot time configured for the cluster is not removed.</p>
    #   @return [String]
    # @!attribute engine
    #   <p>Modifies the engine listed in a serverless cache request. The options are redis, memcached or valkey.</p>
    #   @return [String]
    # @!attribute major_engine_version
    #   <p>Modifies the engine vesion listed in a serverless cache request. </p>
    #   @return [String]
    class ModifyServerlessCacheRequest < Struct.new(
      :serverless_cache_name,
      :description,
      :cache_usage_limits,
      :remove_user_group,
      :user_group_id,
      :security_group_ids,
      :snapshot_retention_limit,
      :daily_snapshot_time,
      :engine,
      :major_engine_version,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute serverless_cache
    #   <p>The response for the attempt to modify the serverless cache.</p>
    #   @return [Types::ServerlessCache]
    class ModifyServerlessCacheResponse < Struct.new(
      :serverless_cache,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute user_group_id
    #   <p>The ID of the user group.</p>
    #   @return [String]
    # @!attribute user_ids_to_add
    #   <p>The list of user IDs to add to the user group.</p>
    #   @return [Array<String>]
    # @!attribute user_ids_to_remove
    #   <p>The list of user IDs to remove from the user group.</p>
    #   @return [Array<String>]
    # @!attribute engine
    #   <p>Modifies the engine listed in a user group. The options are valkey or redis.</p>
    #   @return [String]
    class ModifyUserGroupMessage < Struct.new(
      :user_group_id,
      :user_ids_to_add,
      :user_ids_to_remove,
      :engine,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute user_group_id
    #   <p>The ID of the user group.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Indicates user group status. Can be "creating", "active", "modifying",
    #               "deleting".</p>
    #   @return [String]
    # @!attribute engine
    #   <p>The options are valkey or redis.</p>
    #   @return [String]
    # @!attribute user_ids
    #   <p>The list of user IDs that belong to the user group.</p>
    #   @return [Array<String>]
    # @!attribute minimum_engine_version
    #   <p>The minimum engine version required, which is Redis OSS 6.0</p>
    #   @return [String]
    # @!attribute pending_changes
    #   <p>A list of updates being applied to the user group.</p>
    #   @return [Types::UserGroupPendingChanges]
    # @!attribute replication_groups
    #   <p>A list of replication groups that the user group can access.</p>
    #   @return [Array<String>]
    # @!attribute serverless_caches
    #   <p>Indicates which serverless caches the specified user group is associated with. Available for Valkey, Redis OSS and Serverless Memcached only.</p>
    #   @return [Array<String>]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the user group.</p>
    #   @return [String]
    class ModifyUserGroupOutput < Struct.new(
      :user_group_id,
      :status,
      :engine,
      :user_ids,
      :minimum_engine_version,
      :pending_changes,
      :replication_groups,
      :serverless_caches,
      :arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute user_id
    #   <p>The ID of the user.</p>
    #   @return [String]
    # @!attribute access_string
    #   <p>Access permissions string used for this user.</p>
    #   @return [String]
    # @!attribute append_access_string
    #   <p>Adds additional user permissions to the access string.</p>
    #   @return [String]
    # @!attribute passwords
    #   <p>The passwords belonging to the user. You are allowed up to two.</p>
    #   @return [Array<String>]
    # @!attribute no_password_required
    #   <p>Indicates no password is required for the user.</p>
    #   @return [Boolean]
    # @!attribute authentication_mode
    #   <p>Specifies how to authenticate the user.</p>
    #   @return [Types::AuthenticationMode]
    # @!attribute engine
    #   <p>Modifies the engine listed for a user. The options are valkey or redis.</p>
    #   @return [String]
    class ModifyUserMessage < Struct.new(
      :user_id,
      :access_string,
      :append_access_string,
      :passwords,
      :no_password_required,
      :authentication_mode,
      :engine,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute user_id
    #   <p>The ID of the user.</p>
    #   @return [String]
    # @!attribute user_name
    #   <p>The username of the user.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Indicates the user status. Can be "active", "modifying" or "deleting".</p>
    #   @return [String]
    # @!attribute engine
    #   <p>The options are valkey or redis.</p>
    #   @return [String]
    # @!attribute minimum_engine_version
    #   <p>The minimum engine version required, which is Redis OSS 6.0</p>
    #   @return [String]
    # @!attribute access_string
    #   <p>Access permissions string used for this user.</p>
    #   @return [String]
    # @!attribute user_group_ids
    #   <p>Returns a list of the user group IDs the user belongs to.</p>
    #   @return [Array<String>]
    # @!attribute authentication
    #   <p>Denotes whether the user requires a password to authenticate.</p>
    #   @return [Types::Authentication]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the user.</p>
    #   @return [String]
    class ModifyUserOutput < Struct.new(
      :user_id,
      :user_name,
      :status,
      :engine,
      :minimum_engine_version,
      :access_string,
      :user_group_ids,
      :authentication,
      :arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The operation was not performed because no changes were required.</p>
    # @!attribute message
    #   @return [String]
    class NoOperationFault < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a collection of cache nodes in a replication group. One node in the node
    #             group is the read/write primary node. All the other nodes are read-only Replica
    #             nodes.</p>
    # @!attribute node_group_id
    #   <p>The identifier for the node group (shard). A Valkey or Redis OSS (cluster mode disabled) replication
    #               group contains only 1 node group; therefore, the node group ID is 0001. A Valkey or Redis OSS (cluster mode enabled) replication group contains 1 to 90 node groups numbered 0001 to 0090.
    #               Optionally, the user can provide the id for a node group. </p>
    #   @return [String]
    # @!attribute status
    #   <p>The current state of this replication group - <code>creating</code>,
    #                   <code>available</code>, <code>modifying</code>, <code>deleting</code>.</p>
    #   @return [String]
    # @!attribute primary_endpoint
    #   <p>The endpoint of the primary node in this node group (shard).</p>
    #   @return [Types::Endpoint]
    # @!attribute reader_endpoint
    #   <p>The endpoint of the replica nodes in this node group (shard). This value is read-only.</p>
    #   @return [Types::Endpoint]
    # @!attribute slots
    #   <p>The keyspace for this node group (shard).</p>
    #   @return [String]
    # @!attribute node_group_members
    #   <p>A list containing information about individual nodes within the node group
    #               (shard).</p>
    #   @return [Array<Types::NodeGroupMember>]
    class NodeGroup < Struct.new(
      :node_group_id,
      :status,
      :primary_endpoint,
      :reader_endpoint,
      :slots,
      :node_group_members,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Node group (shard) configuration options. Each node group (shard) configuration has
    #             the following: <code>Slots</code>, <code>PrimaryAvailabilityZone</code>,
    #                 <code>ReplicaAvailabilityZones</code>, <code>ReplicaCount</code>.</p>
    # @!attribute node_group_id
    #   <p>Either the ElastiCache supplied 4-digit id or a user supplied id for the
    #               node group these configuration values apply to.</p>
    #   @return [String]
    # @!attribute slots
    #   <p>A string that specifies the keyspace for a particular node group. Keyspaces range from
    #               0 to 16,383. The string is in the format <code>startkey-endkey</code>.</p>
    #            <p>Example: <code>"0-3999"</code>
    #            </p>
    #   @return [String]
    # @!attribute replica_count
    #   <p>The number of read replica nodes in this node group (shard).</p>
    #   @return [Integer]
    # @!attribute primary_availability_zone
    #   <p>The Availability Zone where the primary node of this node group (shard) is
    #               launched.</p>
    #   @return [String]
    # @!attribute replica_availability_zones
    #   <p>A list of Availability Zones to be used for the read replicas. The number of
    #               Availability Zones in this list must match the value of <code>ReplicaCount</code> or
    #                   <code>ReplicasPerNodeGroup</code> if not specified.</p>
    #   @return [Array<String>]
    # @!attribute primary_outpost_arn
    #   <p>The outpost ARN of the primary node.</p>
    #   @return [String]
    # @!attribute replica_outpost_arns
    #   <p>The outpost ARN of the node replicas.</p>
    #   @return [Array<String>]
    class NodeGroupConfiguration < Struct.new(
      :node_group_id,
      :slots,
      :replica_count,
      :primary_availability_zone,
      :replica_availability_zones,
      :primary_outpost_arn,
      :replica_outpost_arns,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a single node within a node group (shard).</p>
    # @!attribute cache_cluster_id
    #   <p>The ID of the cluster to which the node belongs.</p>
    #   @return [String]
    # @!attribute cache_node_id
    #   <p>The ID of the node within its cluster. A node ID is a numeric identifier (0001, 0002,
    #               etc.).</p>
    #   @return [String]
    # @!attribute read_endpoint
    #   <p>The information required for client programs to connect to a node for read operations.
    #               The read endpoint is only applicable on Valkey or Redis OSS (cluster mode disabled) clusters.</p>
    #   @return [Types::Endpoint]
    # @!attribute preferred_availability_zone
    #   <p>The name of the Availability Zone in which the node is located.</p>
    #   @return [String]
    # @!attribute preferred_outpost_arn
    #   <p>The outpost ARN of the node group member.</p>
    #   @return [String]
    # @!attribute current_role
    #   <p>The role that is currently assigned to the node - <code>primary</code> or
    #                   <code>replica</code>. This member is only applicable for Valkey or Redis OSS (cluster mode
    #               disabled) replication groups.</p>
    #   @return [String]
    class NodeGroupMember < Struct.new(
      :cache_cluster_id,
      :cache_node_id,
      :read_endpoint,
      :preferred_availability_zone,
      :preferred_outpost_arn,
      :current_role,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The status of the service update on the node group member </p>
    # @!attribute cache_cluster_id
    #   <p>The cache cluster ID</p>
    #   @return [String]
    # @!attribute cache_node_id
    #   <p>The node ID of the cache cluster</p>
    #   @return [String]
    # @!attribute node_update_status
    #   <p>The update status of the node</p>
    #   @return [String]
    # @!attribute node_deletion_date
    #   <p>The deletion date of the node</p>
    #   @return [Time]
    # @!attribute node_update_start_date
    #   <p>The start date of the update for a node</p>
    #   @return [Time]
    # @!attribute node_update_end_date
    #   <p>The end date of the update for a node</p>
    #   @return [Time]
    # @!attribute node_update_initiated_by
    #   <p>Reflects whether the update was initiated by the customer or automatically
    #               applied</p>
    #   @return [String]
    # @!attribute node_update_initiated_date
    #   <p>The date when the update is triggered</p>
    #   @return [Time]
    # @!attribute node_update_status_modified_date
    #   <p>The date when the NodeUpdateStatus was last modified</p>
    #   @return [Time]
    class NodeGroupMemberUpdateStatus < Struct.new(
      :cache_cluster_id,
      :cache_node_id,
      :node_update_status,
      :node_deletion_date,
      :node_update_start_date,
      :node_update_end_date,
      :node_update_initiated_by,
      :node_update_initiated_date,
      :node_update_status_modified_date,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The node group specified by the <code>NodeGroupId</code> parameter could not be found.
    #             Please verify that the node group exists and that you spelled the
    #                 <code>NodeGroupId</code> value correctly.</p>
    # @!attribute message
    #   @return [String]
    class NodeGroupNotFoundFault < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The status of the service update on the node group </p>
    # @!attribute node_group_id
    #   <p>The ID of the node group</p>
    #   @return [String]
    # @!attribute node_group_member_update_status
    #   <p>The status of the service update on the node group member</p>
    #   @return [Array<Types::NodeGroupMemberUpdateStatus>]
    class NodeGroupUpdateStatus < Struct.new(
      :node_group_id,
      :node_group_member_update_status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request cannot be processed because it would exceed the maximum allowed number of
    #             node groups (shards) in a single replication group. The default maximum is 90</p>
    # @!attribute message
    #   @return [String]
    class NodeGroupsPerReplicationGroupQuotaExceededFault < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request cannot be processed because it would exceed the allowed number of cache
    #             nodes in a single cluster.</p>
    # @!attribute message
    #   @return [String]
    class NodeQuotaForClusterExceededFault < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request cannot be processed because it would exceed the allowed number of cache
    #             nodes per customer.</p>
    # @!attribute message
    #   @return [String]
    class NodeQuotaForCustomerExceededFault < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents an individual cache node in a snapshot of a cluster.</p>
    # @!attribute cache_cluster_id
    #   <p>A unique identifier for the source cluster.</p>
    #   @return [String]
    # @!attribute node_group_id
    #   <p>A unique identifier for the source node group (shard).</p>
    #   @return [String]
    # @!attribute cache_node_id
    #   <p>The cache node identifier for the node in the source cluster.</p>
    #   @return [String]
    # @!attribute node_group_configuration
    #   <p>The configuration for the source node group (shard).</p>
    #   @return [Types::NodeGroupConfiguration]
    # @!attribute cache_size
    #   <p>The size of the cache on the source cache node.</p>
    #   @return [String]
    # @!attribute cache_node_create_time
    #   <p>The date and time when the cache node was created in the source cluster.</p>
    #   @return [Time]
    # @!attribute snapshot_create_time
    #   <p>The date and time when the source node's metadata and cache data set was obtained for
    #               the snapshot.</p>
    #   @return [Time]
    class NodeSnapshot < Struct.new(
      :cache_cluster_id,
      :node_group_id,
      :cache_node_id,
      :node_group_configuration,
      :cache_size,
      :cache_node_create_time,
      :snapshot_create_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a notification topic and its status. Notification topics are used for
    #             publishing ElastiCache events to subscribers using Amazon Simple Notification Service
    #             (SNS).</p>
    # @!attribute topic_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the topic.</p>
    #   @return [String]
    # @!attribute topic_status
    #   <p>The current state of the topic.</p>
    #   @return [String]
    class NotificationConfiguration < Struct.new(
      :topic_arn,
      :topic_status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an individual setting that controls some aspect of ElastiCache
    #             behavior.</p>
    # @!attribute parameter_name
    #   <p>The name of the parameter.</p>
    #   @return [String]
    # @!attribute parameter_value
    #   <p>The value of the parameter.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the parameter.</p>
    #   @return [String]
    # @!attribute source
    #   <p>The source of the parameter.</p>
    #   @return [String]
    # @!attribute data_type
    #   <p>The valid data type for the parameter.</p>
    #   @return [String]
    # @!attribute allowed_values
    #   <p>The valid range of values for the parameter.</p>
    #   @return [String]
    # @!attribute is_modifiable
    #   <p>Indicates whether (<code>true</code>) or not (<code>false</code>) the parameter can be
    #               modified. Some parameters have security or operational implications that prevent them
    #               from being changed.</p>
    #   @return [Boolean]
    # @!attribute minimum_engine_version
    #   <p>The earliest cache engine version to which the parameter can apply.</p>
    #   @return [String]
    # @!attribute change_type
    #   <p>Indicates whether a change to the parameter is applied immediately or requires a
    #               reboot for the change to be applied. You can force a reboot or wait until the next
    #               maintenance window's reboot. For more information, see <a href="https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/Clusters.Rebooting.html">Rebooting a
    #                   Cluster</a>.</p>
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
      :change_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a name-value pair that is used to update the value of a parameter.</p>
    # @!attribute parameter_name
    #   <p>The name of the parameter.</p>
    #   @return [String]
    # @!attribute parameter_value
    #   <p>The value of the parameter.</p>
    #   @return [String]
    class ParameterNameValue < Struct.new(
      :parameter_name,
      :parameter_value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The log delivery configurations being modified </p>
    # @!attribute log_type
    #   <p>Refers to <a href="https://redis.io/commands/slowlog">slow-log</a> or
    #               engine-log..</p>
    #   @return [String]
    # @!attribute destination_type
    #   <p>Returns the destination type, either CloudWatch Logs or Kinesis Data Firehose.</p>
    #   @return [String]
    # @!attribute destination_details
    #   <p>Configuration details of either a CloudWatch Logs destination or Kinesis Data Firehose
    #               destination.</p>
    #   @return [Types::DestinationDetails]
    # @!attribute log_format
    #   <p>Returns the log format, either JSON or TEXT</p>
    #   @return [String]
    class PendingLogDeliveryConfiguration < Struct.new(
      :log_type,
      :destination_type,
      :destination_details,
      :log_format,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A group of settings that are applied to the cluster in the future, or that are
    #             currently being applied.</p>
    # @!attribute num_cache_nodes
    #   <p>The new number of cache nodes for the cluster.</p>
    #            <p>For clusters running Valkey or Redis OSS, this value must be 1. For clusters running Memcached, this
    #               value must be between 1 and 40.</p>
    #   @return [Integer]
    # @!attribute cache_node_ids_to_remove
    #   <p>A list of cache node IDs that are being removed (or will be removed) from the cluster.
    #               A node ID is a 4-digit numeric identifier (0001, 0002, etc.).</p>
    #   @return [Array<String>]
    # @!attribute engine_version
    #   <p>The new cache engine version that the cluster runs.</p>
    #   @return [String]
    # @!attribute cache_node_type
    #   <p>The cache node type that this cluster or replication group is scaled to.</p>
    #   @return [String]
    # @!attribute auth_token_status
    #   <p>The auth token status</p>
    #   @return [String]
    # @!attribute log_delivery_configurations
    #   <p>The log delivery configurations being modified </p>
    #   @return [Array<Types::PendingLogDeliveryConfiguration>]
    # @!attribute transit_encryption_enabled
    #   <p>A flag that enables in-transit encryption when set to true.</p>
    #   @return [Boolean]
    # @!attribute transit_encryption_mode
    #   <p>A setting that allows you to migrate your clients to use in-transit encryption, with
    #               no downtime.</p>
    #   @return [String]
    # @!attribute scale_config
    #   <p>The scaling configuration changes that are pending for the Memcached cluster.</p>
    #   @return [Types::ScaleConfig]
    class PendingModifiedValues < Struct.new(
      :num_cache_nodes,
      :cache_node_ids_to_remove,
      :engine_version,
      :cache_node_type,
      :auth_token_status,
      :log_delivery_configurations,
      :transit_encryption_enabled,
      :transit_encryption_mode,
      :scale_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Update action that has been processed for the corresponding apply/stop request</p>
    # @!attribute replication_group_id
    #   <p>The ID of the replication group</p>
    #   @return [String]
    # @!attribute cache_cluster_id
    #   <p>The ID of the cache cluster</p>
    #   @return [String]
    # @!attribute service_update_name
    #   <p>The unique ID of the service update</p>
    #   @return [String]
    # @!attribute update_action_status
    #   <p>The status of the update action on the Valkey or Redis OSS cluster</p>
    #   @return [String]
    class ProcessedUpdateAction < Struct.new(
      :replication_group_id,
      :cache_cluster_id,
      :service_update_name,
      :update_action_status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of a <code>PurchaseReservedCacheNodesOffering</code>
    #             operation.</p>
    # @!attribute reserved_cache_nodes_offering_id
    #   <p>The ID of the reserved cache node offering to purchase.</p>
    #            <p>Example: <code>438012d3-4052-4cc7-b2e3-8d3372e0e706</code>
    #            </p>
    #   @return [String]
    # @!attribute reserved_cache_node_id
    #   <p>A customer-specified identifier to track this reservation.</p>
    #            <note>
    #               <p>The Reserved Cache Node ID is an unique customer-specified identifier to track
    #                   this reservation. If this parameter is not specified, ElastiCache automatically
    #                   generates an identifier for the reservation.</p>
    #            </note>
    #            <p>Example: myreservationID</p>
    #   @return [String]
    # @!attribute cache_node_count
    #   <p>The number of cache node instances to reserve.</p>
    #            <p>Default: <code>1</code>
    #            </p>
    #   @return [Integer]
    # @!attribute tags
    #   <p>A list of tags to be added to this resource. A tag is a key-value pair. A tag key must
    #               be accompanied by a tag value, although null is accepted.</p>
    #   @return [Array<Types::Tag>]
    class PurchaseReservedCacheNodesOfferingMessage < Struct.new(
      :reserved_cache_nodes_offering_id,
      :reserved_cache_node_id,
      :cache_node_count,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute reserved_cache_node
    #   <p>Represents the output of a <code>PurchaseReservedCacheNodesOffering</code>
    #               operation.</p>
    #   @return [Types::ReservedCacheNode]
    class PurchaseReservedCacheNodesOfferingResult < Struct.new(
      :reserved_cache_node,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute global_replication_group_id
    #   <p>The name of the Global datastore</p>
    #   @return [String]
    # @!attribute apply_immediately
    #   <p>If <code>True</code>, redistribution is applied immediately.</p>
    #   @return [Boolean]
    class RebalanceSlotsInGlobalReplicationGroupMessage < Struct.new(
      :global_replication_group_id,
      :apply_immediately,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute global_replication_group
    #   <p>Consists of a primary cluster that accepts writes and an associated secondary cluster
    #               that resides in a different Amazon region. The secondary cluster accepts only reads. The
    #               primary cluster automatically replicates updates to the secondary cluster.</p>
    #            <ul>
    #               <li>
    #                  <p>The <b>GlobalReplicationGroupIdSuffix</b> represents
    #                       the name of the Global datastore, which is what you use to associate a secondary
    #                       cluster.</p>
    #               </li>
    #            </ul>
    #   @return [Types::GlobalReplicationGroup]
    class RebalanceSlotsInGlobalReplicationGroupResult < Struct.new(
      :global_replication_group,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of a <code>RebootCacheCluster</code> operation.</p>
    # @!attribute cache_cluster_id
    #   <p>The cluster identifier. This parameter is stored as a lowercase string.</p>
    #   @return [String]
    # @!attribute cache_node_ids_to_reboot
    #   <p>A list of cache node IDs to reboot. A node ID is a numeric identifier (0001, 0002,
    #               etc.). To reboot an entire cluster, specify all of the cache node IDs.</p>
    #   @return [Array<String>]
    class RebootCacheClusterMessage < Struct.new(
      :cache_cluster_id,
      :cache_node_ids_to_reboot,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute cache_cluster
    #   <p>Contains all of the attributes of a specific cluster.</p>
    #   @return [Types::CacheCluster]
    class RebootCacheClusterResult < Struct.new(
      :cache_cluster,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the specific price and frequency of a recurring charges for a reserved cache
    #             node, or for a reserved cache node offering.</p>
    # @!attribute recurring_charge_amount
    #   <p>The monetary amount of the recurring charge.</p>
    #   @return [Float]
    # @!attribute recurring_charge_frequency
    #   <p>The frequency of the recurring charge.</p>
    #   @return [String]
    class RecurringCharge < Struct.new(
      :recurring_charge_amount,
      :recurring_charge_frequency,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A list of the replication groups </p>
    # @!attribute replication_group_id
    #   <p>The name of the secondary cluster</p>
    #   @return [String]
    # @!attribute replication_group_region
    #   <p>The Amazon region where the cluster is stored</p>
    #   @return [String]
    # @!attribute resharding_configuration
    #   <p>A list of <code>PreferredAvailabilityZones</code> objects that specifies the
    #               configuration of a node group in the resharded cluster. </p>
    #   @return [Array<Types::ReshardingConfiguration>]
    class RegionalConfiguration < Struct.new(
      :replication_group_id,
      :replication_group_region,
      :resharding_configuration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of a <code>RemoveTagsFromResource</code> operation.</p>
    # @!attribute resource_name
    #   <p>The Amazon Resource Name (ARN) of the resource from which you want the tags removed,
    #               for example <code>arn:aws:elasticache:us-west-2:0123456789:cluster:myCluster</code> or
    #                   <code>arn:aws:elasticache:us-west-2:0123456789:snapshot:mySnapshot</code>.</p>
    #            <p>For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)
    #                   and Amazon Service Namespaces</a>.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>A list of <code>TagKeys</code> identifying the tags you want removed from the named
    #               resource.</p>
    #   @return [Array<String>]
    class RemoveTagsFromResourceMessage < Struct.new(
      :resource_name,
      :tag_keys,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output from the <code>AddTagsToResource</code>,
    #                 <code>ListTagsForResource</code>, and <code>RemoveTagsFromResource</code>
    #             operations.</p>
    # @!attribute tag_list
    #   <p>A list of tags as key-value pairs.</p>
    #   @return [Array<Types::Tag>]
    class RemoveTagsFromResourceOutput < Struct.new(
      :tag_list,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains all of the attributes of a specific Valkey or Redis OSS replication group.</p>
    # @!attribute replication_group_id
    #   <p>The identifier for the replication group.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The user supplied description of the replication group.</p>
    #   @return [String]
    # @!attribute global_replication_group_info
    #   <p>The name of the Global datastore and role of this replication group in the Global
    #               datastore.</p>
    #   @return [Types::GlobalReplicationGroupInfo]
    # @!attribute status
    #   <p>The current state of this replication group - <code>creating</code>,
    #                   <code>available</code>, <code>modifying</code>, <code>deleting</code>,
    #                   <code>create-failed</code>, <code>snapshotting</code>.</p>
    #   @return [String]
    # @!attribute pending_modified_values
    #   <p>A group of settings to be applied to the replication group, either immediately or
    #               during the next maintenance window.</p>
    #   @return [Types::ReplicationGroupPendingModifiedValues]
    # @!attribute member_clusters
    #   <p>The names of all the cache clusters that are part of this replication group.</p>
    #   @return [Array<String>]
    # @!attribute node_groups
    #   <p>A list of node groups in this replication group. For Valkey or Redis OSS (cluster mode disabled)
    #               replication groups, this is a single-element list. For Valkey or Redis OSS (cluster mode enabled)
    #               replication groups, the list contains an entry for each node group (shard).</p>
    #   @return [Array<Types::NodeGroup>]
    # @!attribute snapshotting_cluster_id
    #   <p>The cluster ID that is used as the daily snapshot source for the replication
    #               group.</p>
    #   @return [String]
    # @!attribute automatic_failover
    #   <p>Indicates the status of automatic failover for this Valkey or Redis OSS replication group.</p>
    #   @return [String]
    # @!attribute multi_az
    #   <p>A flag indicating if you have Multi-AZ enabled to enhance fault tolerance. For more
    #               information, see <a href="http://docs.aws.amazon.com/AmazonElastiCache/latest/dg/AutoFailover.html">Minimizing Downtime: Multi-AZ</a>
    #            </p>
    #   @return [String]
    # @!attribute configuration_endpoint
    #   <p>The configuration endpoint for this replication group. Use the configuration endpoint
    #               to connect to this replication group.</p>
    #   @return [Types::Endpoint]
    # @!attribute snapshot_retention_limit
    #   <p>The number of days for which ElastiCache retains automatic cluster snapshots before
    #               deleting them. For example, if you set <code>SnapshotRetentionLimit</code> to 5, a
    #               snapshot that was taken today is retained for 5 days before being deleted.</p>
    #            <important>
    #               <p> If the value of <code>SnapshotRetentionLimit</code> is set to zero (0), backups
    #                   are turned off.</p>
    #            </important>
    #   @return [Integer]
    # @!attribute snapshot_window
    #   <p>The daily time range (in UTC) during which ElastiCache begins taking a daily snapshot
    #               of your node group (shard).</p>
    #            <p>Example: <code>05:00-09:00</code>
    #            </p>
    #            <p>If you do not specify this parameter, ElastiCache automatically chooses an appropriate
    #               time range.</p>
    #            <note>
    #               <p>This parameter is only valid if the <code>Engine</code> parameter is
    #                       <code>redis</code>.</p>
    #            </note>
    #   @return [String]
    # @!attribute cluster_enabled
    #   <p>A flag indicating whether or not this replication group is cluster enabled; i.e.,
    #               whether its data can be partitioned across multiple shards (API/CLI: node
    #               groups).</p>
    #            <p>Valid values: <code>true</code> | <code>false</code>
    #            </p>
    #   @return [Boolean]
    # @!attribute cache_node_type
    #   <p>The name of the compute and memory capacity node type for each node in the replication
    #               group.</p>
    #   @return [String]
    # @!attribute auth_token_enabled
    #   <p>A flag that enables using an <code>AuthToken</code> (password) when issuing Valkey or Redis OSS 
    #               commands.</p>
    #            <p>Default: <code>false</code>
    #            </p>
    #   @return [Boolean]
    # @!attribute auth_token_last_modified_date
    #   <p>The date the auth token was last modified</p>
    #   @return [Time]
    # @!attribute transit_encryption_enabled
    #   <p>A flag that enables in-transit encryption when set to <code>true</code>.</p>
    #            <p>
    #               <b>Required:</b> Only available when creating a replication
    #               group in an Amazon VPC using Redis OSS version <code>3.2.6</code>, <code>4.x</code> or
    #               later.</p>
    #            <p>Default: <code>false</code>
    #            </p>
    #   @return [Boolean]
    # @!attribute at_rest_encryption_enabled
    #   <p>A flag that enables encryption at-rest when set to <code>true</code>.</p>
    #            <p>You cannot modify the value of <code>AtRestEncryptionEnabled</code> after the cluster
    #               is created. To enable encryption at-rest on a cluster you must set
    #                   <code>AtRestEncryptionEnabled</code> to <code>true</code> when you create a
    #               cluster.</p>
    #            <p>
    #               <b>Required:</b> Only available when creating a replication
    #               group in an Amazon VPC using Redis OSS version <code>3.2.6</code>, <code>4.x</code> or
    #               later.</p>
    #            <p>Default: <code>false</code>
    #            </p>
    #   @return [Boolean]
    # @!attribute member_clusters_outpost_arns
    #   <p>The outpost ARNs of the replication group's member clusters.</p>
    #   @return [Array<String>]
    # @!attribute kms_key_id
    #   <p>The ID of the KMS key used to encrypt the disk in the cluster.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The ARN (Amazon Resource Name) of the replication group.</p>
    #   @return [String]
    # @!attribute user_group_ids
    #   <p>The ID of the user group associated to the replication group.</p>
    #   @return [Array<String>]
    # @!attribute log_delivery_configurations
    #   <p>Returns the destination, format and type of the logs. </p>
    #   @return [Array<Types::LogDeliveryConfiguration>]
    # @!attribute replication_group_create_time
    #   <p>The date and time when the cluster was created.</p>
    #   @return [Time]
    # @!attribute data_tiering
    #   <p>Enables data tiering. Data tiering is only supported for replication groups using the
    #               r6gd node type. This parameter must be set to true when using r6gd nodes. For more
    #               information, see <a href="https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/data-tiering.html">Data tiering</a>.</p>
    #   @return [String]
    # @!attribute auto_minor_version_upgrade
    #   <p>If you are running Valkey 7.2 and above, or Redis OSS engine version 6.0 and above, set this parameter to yes if you
    #               want to opt-in to the next auto minor version upgrade campaign. This parameter is
    #               disabled for previous versions. </p>
    #   @return [Boolean]
    # @!attribute network_type
    #   <p>Must be either <code>ipv4</code> | <code>ipv6</code> | <code>dual_stack</code>. IPv6
    #               is supported for workloads using Valkey 7.2 and above, Redis OSS engine version 6.2
    #               to 7.1 or Memcached engine version 1.6.6 and above on all instances built on the <a href="http://aws.amazon.com/ec2/nitro/">Nitro system</a>.</p>
    #   @return [String]
    # @!attribute ip_discovery
    #   <p>The network type you choose when modifying a cluster, either <code>ipv4</code> |
    #               <code>ipv6</code>. IPv6 is supported for workloads using Valkey 7.2 and above, Redis OSS engine version 6.2
    #               to 7.1 or Memcached engine version 1.6.6 and above on all instances built on the <a href="http://aws.amazon.com/ec2/nitro/">Nitro system</a>.</p>
    #   @return [String]
    # @!attribute transit_encryption_mode
    #   <p>A setting that allows you to migrate your clients to use in-transit encryption, with
    #               no downtime.</p>
    #   @return [String]
    # @!attribute cluster_mode
    #   <p>Enabled or Disabled. To modify cluster mode from Disabled to Enabled, you must first
    #               set the cluster mode to Compatible. Compatible mode allows your Valkey or Redis OSS clients to connect
    #               using both cluster mode enabled and cluster mode disabled. After you migrate all Valkey or Redis OSS 
    #               clients to use cluster mode enabled, you can then complete cluster mode configuration
    #               and set the cluster mode to Enabled.</p>
    #   @return [String]
    # @!attribute engine
    #   <p>The engine used in a replication group. The options are redis, memcached or valkey.</p>
    #   @return [String]
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
      :member_clusters_outpost_arns,
      :kms_key_id,
      :arn,
      :user_group_ids,
      :log_delivery_configurations,
      :replication_group_create_time,
      :data_tiering,
      :auto_minor_version_upgrade,
      :network_type,
      :ip_discovery,
      :transit_encryption_mode,
      :cluster_mode,
      :engine,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The specified replication group already exists.</p>
    # @!attribute message
    #   @return [String]
    class ReplicationGroupAlreadyExistsFault < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The targeted replication group is not available. </p>
    # @!attribute message
    #   @return [String]
    class ReplicationGroupAlreadyUnderMigrationFault < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a <code>DescribeReplicationGroups</code> operation.</p>
    # @!attribute marker
    #   <p>Provides an identifier to allow retrieval of paginated results.</p>
    #   @return [String]
    # @!attribute replication_groups
    #   <p>A list of replication groups. Each item in the list contains detailed information
    #               about one replication group.</p>
    #   @return [Array<Types::ReplicationGroup>]
    class ReplicationGroupMessage < Struct.new(
      :marker,
      :replication_groups,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The specified replication group does not exist.</p>
    # @!attribute message
    #   @return [String]
    class ReplicationGroupNotFoundFault < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The designated replication group is not available for data migration.</p>
    # @!attribute message
    #   @return [String]
    class ReplicationGroupNotUnderMigrationFault < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The settings to be applied to the Valkey or Redis OSS replication group, either immediately or
    #             during the next maintenance window.</p>
    # @!attribute primary_cluster_id
    #   <p>The primary cluster ID that is applied immediately (if
    #                   <code>--apply-immediately</code> was specified), or during the next maintenance
    #               window.</p>
    #   @return [String]
    # @!attribute automatic_failover_status
    #   <p>Indicates the status of automatic failover for this Valkey or Redis OSS replication group.</p>
    #   @return [String]
    # @!attribute resharding
    #   <p>The status of an online resharding operation.</p>
    #   @return [Types::ReshardingStatus]
    # @!attribute auth_token_status
    #   <p>The auth token status</p>
    #   @return [String]
    # @!attribute user_groups
    #   <p>The user group being modified.</p>
    #   @return [Types::UserGroupsUpdateStatus]
    # @!attribute log_delivery_configurations
    #   <p>The log delivery configurations being modified </p>
    #   @return [Array<Types::PendingLogDeliveryConfiguration>]
    # @!attribute transit_encryption_enabled
    #   <p>A flag that enables in-transit encryption when set to true.</p>
    #   @return [Boolean]
    # @!attribute transit_encryption_mode
    #   <p>A setting that allows you to migrate your clients to use in-transit encryption, with
    #               no downtime.</p>
    #   @return [String]
    # @!attribute cluster_mode
    #   <p>Enabled or Disabled. To modify cluster mode from Disabled to Enabled, you must first
    #               set the cluster mode to Compatible. Compatible mode allows your Valkey or Redis OSS clients to connect
    #               using both cluster mode enabled and cluster mode disabled. After you migrate all Valkey or Redis OSS
    #               clients to use cluster mode enabled, you can then complete cluster mode configuration
    #               and set the cluster mode to Enabled.</p>
    #   @return [String]
    class ReplicationGroupPendingModifiedValues < Struct.new(
      :primary_cluster_id,
      :automatic_failover_status,
      :resharding,
      :auth_token_status,
      :user_groups,
      :log_delivery_configurations,
      :transit_encryption_enabled,
      :transit_encryption_mode,
      :cluster_mode,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a <code>PurchaseReservedCacheNodesOffering</code>
    #             operation.</p>
    # @!attribute reserved_cache_node_id
    #   <p>The unique identifier for the reservation.</p>
    #   @return [String]
    # @!attribute reserved_cache_nodes_offering_id
    #   <p>The offering identifier.</p>
    #   @return [String]
    # @!attribute cache_node_type
    #   <p>The cache node type for the reserved cache nodes.</p>
    #            <p>The following node types are supported by ElastiCache. Generally speaking, the current
    #               generation types provide more memory and computational power at lower cost when compared
    #               to their equivalent previous generation counterparts.</p>
    #            <ul>
    #               <li>
    #                  <p>General purpose:</p>
    #                  <ul>
    #                     <li>
    #                        <p>Current generation: </p>
    #                        <p>
    #                           <b>M7g node types</b>:
    #       					<code>cache.m7g.large</code>,
    #       					<code>cache.m7g.xlarge</code>,
    #       					<code>cache.m7g.2xlarge</code>,
    #       					<code>cache.m7g.4xlarge</code>,
    #       					<code>cache.m7g.8xlarge</code>,
    #       					<code>cache.m7g.12xlarge</code>,
    #       					<code>cache.m7g.16xlarge</code>
    #                        </p>
    #                        <note>
    #                           <p>For region availability, see <a href="https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/CacheNodes.SupportedTypes.html#CacheNodes.SupportedTypesByRegion">Supported Node Types</a>
    #                           </p>
    #                        </note>
    #                        <p>
    #                           <b>M6g node types</b> (available only for Redis OSS engine version 5.0.6 onward and for Memcached engine version 1.5.16 onward):
    #   					    
    #   					 	<code>cache.m6g.large</code>,
    #   							<code>cache.m6g.xlarge</code>,
    #   							<code>cache.m6g.2xlarge</code>,
    #   							<code>cache.m6g.4xlarge</code>,
    #   							<code>cache.m6g.8xlarge</code>,
    #   							<code>cache.m6g.12xlarge</code>,
    #   							<code>cache.m6g.16xlarge</code>
    #                        </p>
    #                        <p>
    #                           <b>M5 node types:</b>
    #                           <code>cache.m5.large</code>,
    #       						<code>cache.m5.xlarge</code>,
    #       						<code>cache.m5.2xlarge</code>,
    #       						<code>cache.m5.4xlarge</code>,
    #       						<code>cache.m5.12xlarge</code>,
    #       						<code>cache.m5.24xlarge</code>
    #                        </p>
    #                        <p>
    #                           <b>M4 node types:</b>
    #                           <code>cache.m4.large</code>,
    #       						<code>cache.m4.xlarge</code>,
    #       						<code>cache.m4.2xlarge</code>,
    #       						<code>cache.m4.4xlarge</code>,
    #       						<code>cache.m4.10xlarge</code>
    #                        </p>
    #                        <p>
    #                           <b>T4g node types</b> (available only for Redis OSS engine version 5.0.6 onward and Memcached engine version 1.5.16 onward):
    #   					        <code>cache.t4g.micro</code>,
    #   					        <code>cache.t4g.small</code>,
    #   					        <code>cache.t4g.medium</code>
    #                        </p>
    #                        <p>
    #                           <b>T3 node types:</b>
    #                           <code>cache.t3.micro</code>, 
    #       						<code>cache.t3.small</code>,
    #       						<code>cache.t3.medium</code>
    #                        </p>
    #                        <p>
    #                           <b>T2 node types:</b>
    #                           <code>cache.t2.micro</code>, 
    #       						<code>cache.t2.small</code>,
    #       						<code>cache.t2.medium</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>Previous generation: (not recommended. Existing clusters are still supported but creation of new clusters is not supported for these types.)</p>
    #                        <p>
    #                           <b>T1 node types:</b>
    #                           <code>cache.t1.micro</code>
    #                        </p>
    #                        <p>
    #                           <b>M1 node types:</b>
    #                           <code>cache.m1.small</code>, 
    #   						   <code>cache.m1.medium</code>, 
    #   						   <code>cache.m1.large</code>,
    #   						   <code>cache.m1.xlarge</code>
    #                        </p>
    #                        <p>
    #                           <b>M3 node types:</b>
    #                           <code>cache.m3.medium</code>,
    #       						<code>cache.m3.large</code>, 
    #       						<code>cache.m3.xlarge</code>,
    #       						<code>cache.m3.2xlarge</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>Compute optimized:</p>
    #                  <ul>
    #                     <li>
    #                        <p>Previous generation: (not recommended. Existing clusters are still supported but creation of new clusters is not supported for these types.)</p>
    #                        <p>
    #                           <b>C1 node types:</b>
    #                           <code>cache.c1.xlarge</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>Memory optimized:</p>
    #                  <ul>
    #                     <li>
    #                        <p>Current generation: </p>
    #                        <p>
    #                           <b>R7g node types</b>:	
    #   							<code>cache.r7g.large</code>,
    #   							<code>cache.r7g.xlarge</code>,
    #   							<code>cache.r7g.2xlarge</code>,
    #   							<code>cache.r7g.4xlarge</code>,
    #   							<code>cache.r7g.8xlarge</code>,
    #   							<code>cache.r7g.12xlarge</code>,
    #   							<code>cache.r7g.16xlarge</code>
    #                        </p>
    #                        <note>
    #                           <p>For region availability, see <a href="https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/CacheNodes.SupportedTypes.html#CacheNodes.SupportedTypesByRegion">Supported Node Types</a>
    #                           </p>
    #                        </note>
    #                        <p>
    #                           <b>R6g node types</b> (available only for Redis OSS engine version 5.0.6 onward and for Memcached engine version 1.5.16 onward):
    #   							<code>cache.r6g.large</code>,
    #   							<code>cache.r6g.xlarge</code>,
    #   							<code>cache.r6g.2xlarge</code>,
    #   							<code>cache.r6g.4xlarge</code>,
    #   							<code>cache.r6g.8xlarge</code>,
    #   							<code>cache.r6g.12xlarge</code>,
    #   							<code>cache.r6g.16xlarge</code>
    #                        </p>
    #                        <p>
    #                           <b>R5 node types:</b>
    #                           <code>cache.r5.large</code>,
    #       					   <code>cache.r5.xlarge</code>,
    #       					   <code>cache.r5.2xlarge</code>,
    #       					   <code>cache.r5.4xlarge</code>,
    #       					   <code>cache.r5.12xlarge</code>,
    #       					   <code>cache.r5.24xlarge</code>
    #                        </p>
    #                        <p>
    #                           <b>R4 node types:</b>
    #                           <code>cache.r4.large</code>,
    #       					   <code>cache.r4.xlarge</code>,
    #       					   <code>cache.r4.2xlarge</code>,
    #       					   <code>cache.r4.4xlarge</code>,
    #       					   <code>cache.r4.8xlarge</code>,
    #       					   <code>cache.r4.16xlarge</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>Previous generation: (not recommended. Existing clusters are still supported but creation of new clusters is not supported for these types.)</p>
    #                        <p>
    #                           <b>M2 node types:</b>
    #                           <code>cache.m2.xlarge</code>, 
    #       						<code>cache.m2.2xlarge</code>,
    #       						<code>cache.m2.4xlarge</code>
    #                        </p>
    #                        <p>
    #                           <b>R3 node types:</b>
    #                           <code>cache.r3.large</code>, 
    #       						<code>cache.r3.xlarge</code>,
    #       						<code>cache.r3.2xlarge</code>,  
    #       						<code>cache.r3.4xlarge</code>,
    #       						<code>cache.r3.8xlarge</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #            </ul>
    #            <p>
    #               <b>Additional node type info</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>All current generation instance types are created in Amazon VPC by
    #                       default.</p>
    #               </li>
    #               <li>
    #                  <p>Valkey or Redis OSS append-only files (AOF) are not supported for T1 or T2 instances.</p>
    #               </li>
    #               <li>
    #                  <p>Valkey or Redis OSS Multi-AZ with automatic failover is not supported on T1
    #                       instances.</p>
    #               </li>
    #               <li>
    #                  <p>The configuration variables <code>appendonly</code> and
    #                           <code>appendfsync</code> are not supported on Valkey, or on Redis OSS version 2.8.22 and
    #                       later.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute start_time
    #   <p>The time the reservation started.</p>
    #   @return [Time]
    # @!attribute duration
    #   <p>The duration of the reservation in seconds.</p>
    #   @return [Integer]
    # @!attribute fixed_price
    #   <p>The fixed price charged for this reserved cache node.</p>
    #   @return [Float]
    # @!attribute usage_price
    #   <p>The hourly price charged for this reserved cache node.</p>
    #   @return [Float]
    # @!attribute cache_node_count
    #   <p>The number of cache nodes that have been reserved.</p>
    #   @return [Integer]
    # @!attribute product_description
    #   <p>The description of the reserved cache node.</p>
    #   @return [String]
    # @!attribute offering_type
    #   <p>The offering type of this reserved cache node.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The state of the reserved cache node.</p>
    #   @return [String]
    # @!attribute recurring_charges
    #   <p>The recurring price charged to run this reserved cache node.</p>
    #   @return [Array<Types::RecurringCharge>]
    # @!attribute reservation_arn
    #   <p>The Amazon Resource Name (ARN) of the reserved cache node.</p>
    #            <p>Example:
    #                   <code>arn:aws:elasticache:us-east-1:123456789012:reserved-instance:ri-2017-03-27-08-33-25-582</code>
    #            </p>
    #   @return [String]
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
      :reservation_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>You already have a reservation with the given identifier.</p>
    # @!attribute message
    #   @return [String]
    class ReservedCacheNodeAlreadyExistsFault < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a <code>DescribeReservedCacheNodes</code> operation.</p>
    # @!attribute marker
    #   <p>Provides an identifier to allow retrieval of paginated results.</p>
    #   @return [String]
    # @!attribute reserved_cache_nodes
    #   <p>A list of reserved cache nodes. Each element in the list contains detailed information
    #               about one node.</p>
    #   @return [Array<Types::ReservedCacheNode>]
    class ReservedCacheNodeMessage < Struct.new(
      :marker,
      :reserved_cache_nodes,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The requested reserved cache node was not found.</p>
    # @!attribute message
    #   @return [String]
    class ReservedCacheNodeNotFoundFault < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request cannot be processed because it would exceed the user's cache node
    #             quota.</p>
    # @!attribute message
    #   @return [String]
    class ReservedCacheNodeQuotaExceededFault < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes all of the attributes of a reserved cache node offering.</p>
    # @!attribute reserved_cache_nodes_offering_id
    #   <p>A unique identifier for the reserved cache node offering.</p>
    #   @return [String]
    # @!attribute cache_node_type
    #   <p>The cache node type for the reserved cache node.</p>
    #            <p>The following node types are supported by ElastiCache. Generally speaking, the current
    #               generation types provide more memory and computational power at lower cost when compared
    #               to their equivalent previous generation counterparts.</p>
    #            <ul>
    #               <li>
    #                  <p>General purpose:</p>
    #                  <ul>
    #                     <li>
    #                        <p>Current generation: </p>
    #                        <p>
    #                           <b>M7g node types</b>:
    #       					<code>cache.m7g.large</code>,
    #       					<code>cache.m7g.xlarge</code>,
    #       					<code>cache.m7g.2xlarge</code>,
    #       					<code>cache.m7g.4xlarge</code>,
    #       					<code>cache.m7g.8xlarge</code>,
    #       					<code>cache.m7g.12xlarge</code>,
    #       					<code>cache.m7g.16xlarge</code>
    #                        </p>
    #                        <note>
    #                           <p>For region availability, see <a href="https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/CacheNodes.SupportedTypes.html#CacheNodes.SupportedTypesByRegion">Supported Node Types</a>
    #                           </p>
    #                        </note>
    #                        <p>
    #                           <b>M6g node types</b> (available only for Redis OSS engine version 5.0.6 onward and for Memcached engine version 1.5.16 onward):
    #   					    
    #   					 	<code>cache.m6g.large</code>,
    #   							<code>cache.m6g.xlarge</code>,
    #   							<code>cache.m6g.2xlarge</code>,
    #   							<code>cache.m6g.4xlarge</code>,
    #   							<code>cache.m6g.8xlarge</code>,
    #   							<code>cache.m6g.12xlarge</code>,
    #   							<code>cache.m6g.16xlarge</code>
    #                        </p>
    #                        <p>
    #                           <b>M5 node types:</b>
    #                           <code>cache.m5.large</code>,
    #       						<code>cache.m5.xlarge</code>,
    #       						<code>cache.m5.2xlarge</code>,
    #       						<code>cache.m5.4xlarge</code>,
    #       						<code>cache.m5.12xlarge</code>,
    #       						<code>cache.m5.24xlarge</code>
    #                        </p>
    #                        <p>
    #                           <b>M4 node types:</b>
    #                           <code>cache.m4.large</code>,
    #       						<code>cache.m4.xlarge</code>,
    #       						<code>cache.m4.2xlarge</code>,
    #       						<code>cache.m4.4xlarge</code>,
    #       						<code>cache.m4.10xlarge</code>
    #                        </p>
    #                        <p>
    #                           <b>T4g node types</b> (available only for Redis OSS engine version 5.0.6 onward and Memcached engine version 1.5.16 onward):
    #   					        <code>cache.t4g.micro</code>,
    #   					        <code>cache.t4g.small</code>,
    #   					        <code>cache.t4g.medium</code>
    #                        </p>
    #                        <p>
    #                           <b>T3 node types:</b>
    #                           <code>cache.t3.micro</code>, 
    #       						<code>cache.t3.small</code>,
    #       						<code>cache.t3.medium</code>
    #                        </p>
    #                        <p>
    #                           <b>T2 node types:</b>
    #                           <code>cache.t2.micro</code>, 
    #       						<code>cache.t2.small</code>,
    #       						<code>cache.t2.medium</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>Previous generation: (not recommended. Existing clusters are still supported but creation of new clusters is not supported for these types.)</p>
    #                        <p>
    #                           <b>T1 node types:</b>
    #                           <code>cache.t1.micro</code>
    #                        </p>
    #                        <p>
    #                           <b>M1 node types:</b>
    #                           <code>cache.m1.small</code>, 
    #   						   <code>cache.m1.medium</code>, 
    #   						   <code>cache.m1.large</code>,
    #   						   <code>cache.m1.xlarge</code>
    #                        </p>
    #                        <p>
    #                           <b>M3 node types:</b>
    #                           <code>cache.m3.medium</code>,
    #       						<code>cache.m3.large</code>, 
    #       						<code>cache.m3.xlarge</code>,
    #       						<code>cache.m3.2xlarge</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>Compute optimized:</p>
    #                  <ul>
    #                     <li>
    #                        <p>Previous generation: (not recommended. Existing clusters are still supported but creation of new clusters is not supported for these types.)</p>
    #                        <p>
    #                           <b>C1 node types:</b>
    #                           <code>cache.c1.xlarge</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>Memory optimized:</p>
    #                  <ul>
    #                     <li>
    #                        <p>Current generation: </p>
    #                        <p>
    #                           <b>R7g node types</b>:	
    #   							<code>cache.r7g.large</code>,
    #   							<code>cache.r7g.xlarge</code>,
    #   							<code>cache.r7g.2xlarge</code>,
    #   							<code>cache.r7g.4xlarge</code>,
    #   							<code>cache.r7g.8xlarge</code>,
    #   							<code>cache.r7g.12xlarge</code>,
    #   							<code>cache.r7g.16xlarge</code>
    #                        </p>
    #                        <note>
    #                           <p>For region availability, see <a href="https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/CacheNodes.SupportedTypes.html#CacheNodes.SupportedTypesByRegion">Supported Node Types</a>
    #                           </p>
    #                        </note>
    #                        <p>
    #                           <b>R6g node types</b> (available only for Redis OSS engine version 5.0.6 onward and for Memcached engine version 1.5.16 onward):
    #   							<code>cache.r6g.large</code>,
    #   							<code>cache.r6g.xlarge</code>,
    #   							<code>cache.r6g.2xlarge</code>,
    #   							<code>cache.r6g.4xlarge</code>,
    #   							<code>cache.r6g.8xlarge</code>,
    #   							<code>cache.r6g.12xlarge</code>,
    #   							<code>cache.r6g.16xlarge</code>
    #                        </p>
    #                        <p>
    #                           <b>R5 node types:</b>
    #                           <code>cache.r5.large</code>,
    #       					   <code>cache.r5.xlarge</code>,
    #       					   <code>cache.r5.2xlarge</code>,
    #       					   <code>cache.r5.4xlarge</code>,
    #       					   <code>cache.r5.12xlarge</code>,
    #       					   <code>cache.r5.24xlarge</code>
    #                        </p>
    #                        <p>
    #                           <b>R4 node types:</b>
    #                           <code>cache.r4.large</code>,
    #       					   <code>cache.r4.xlarge</code>,
    #       					   <code>cache.r4.2xlarge</code>,
    #       					   <code>cache.r4.4xlarge</code>,
    #       					   <code>cache.r4.8xlarge</code>,
    #       					   <code>cache.r4.16xlarge</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>Previous generation: (not recommended. Existing clusters are still supported but creation of new clusters is not supported for these types.)</p>
    #                        <p>
    #                           <b>M2 node types:</b>
    #                           <code>cache.m2.xlarge</code>, 
    #       						<code>cache.m2.2xlarge</code>,
    #       						<code>cache.m2.4xlarge</code>
    #                        </p>
    #                        <p>
    #                           <b>R3 node types:</b>
    #                           <code>cache.r3.large</code>, 
    #       						<code>cache.r3.xlarge</code>,
    #       						<code>cache.r3.2xlarge</code>,  
    #       						<code>cache.r3.4xlarge</code>,
    #       						<code>cache.r3.8xlarge</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #            </ul>
    #            <p>
    #               <b>Additional node type info</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>All current generation instance types are created in Amazon VPC by
    #                       default.</p>
    #               </li>
    #               <li>
    #                  <p>Valkey or Redis OSS append-only files (AOF) are not supported for T1 or T2 instances.</p>
    #               </li>
    #               <li>
    #                  <p>Valkey or Redis OSS Multi-AZ with automatic failover is not supported on T1
    #                       instances.</p>
    #               </li>
    #               <li>
    #                  <p>The configuration variables <code>appendonly</code> and
    #                           <code>appendfsync</code> are not supported on Valkey, or on Redis OSS version 2.8.22 and
    #                       later.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute duration
    #   <p>The duration of the offering. in seconds.</p>
    #   @return [Integer]
    # @!attribute fixed_price
    #   <p>The fixed price charged for this offering.</p>
    #   @return [Float]
    # @!attribute usage_price
    #   <p>The hourly price charged for this offering.</p>
    #   @return [Float]
    # @!attribute product_description
    #   <p>The cache engine used by the offering.</p>
    #   @return [String]
    # @!attribute offering_type
    #   <p>The offering type.</p>
    #   @return [String]
    # @!attribute recurring_charges
    #   <p>The recurring price charged to run this reserved cache node.</p>
    #   @return [Array<Types::RecurringCharge>]
    class ReservedCacheNodesOffering < Struct.new(
      :reserved_cache_nodes_offering_id,
      :cache_node_type,
      :duration,
      :fixed_price,
      :usage_price,
      :product_description,
      :offering_type,
      :recurring_charges,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a <code>DescribeReservedCacheNodesOfferings</code>
    #             operation.</p>
    # @!attribute marker
    #   <p>Provides an identifier to allow retrieval of paginated results.</p>
    #   @return [String]
    # @!attribute reserved_cache_nodes_offerings
    #   <p>A list of reserved cache node offerings. Each element in the list contains detailed
    #               information about one offering.</p>
    #   @return [Array<Types::ReservedCacheNodesOffering>]
    class ReservedCacheNodesOfferingMessage < Struct.new(
      :marker,
      :reserved_cache_nodes_offerings,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The requested cache node offering does not exist.</p>
    # @!attribute message
    #   @return [String]
    class ReservedCacheNodesOfferingNotFoundFault < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of a <code>ResetCacheParameterGroup</code> operation.</p>
    # @!attribute cache_parameter_group_name
    #   <p>The name of the cache parameter group to reset.</p>
    #   @return [String]
    # @!attribute reset_all_parameters
    #   <p>If <code>true</code>, all parameters in the cache parameter group are reset to their
    #               default values. If <code>false</code>, only the parameters listed by
    #                   <code>ParameterNameValues</code> are reset to their default values.</p>
    #            <p>Valid values: <code>true</code> | <code>false</code>
    #            </p>
    #   @return [Boolean]
    # @!attribute parameter_name_values
    #   <p>An array of parameter names to reset to their default values. If
    #                   <code>ResetAllParameters</code> is <code>true</code>, do not use
    #                   <code>ParameterNameValues</code>. If <code>ResetAllParameters</code> is
    #                   <code>false</code>, you must specify the name of at least one parameter to
    #               reset.</p>
    #   @return [Array<Types::ParameterNameValue>]
    class ResetCacheParameterGroupMessage < Struct.new(
      :cache_parameter_group_name,
      :reset_all_parameters,
      :parameter_name_values,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of one of the following operations:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>ModifyCacheParameterGroup</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>ResetCacheParameterGroup</code>
    #                </p>
    #             </li>
    #          </ul>
    # @!attribute cache_parameter_group_name
    #   <p>The name of the cache parameter group.</p>
    #   @return [String]
    class ResetCacheParameterGroupOutput < Struct.new(
      :cache_parameter_group_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A list of <code>PreferredAvailabilityZones</code> objects that specifies the
    #             configuration of a node group in the resharded cluster.</p>
    # @!attribute node_group_id
    #   <p>Either the ElastiCache supplied 4-digit id or a user supplied id for the
    #               node group these configuration values apply to.</p>
    #   @return [String]
    # @!attribute preferred_availability_zones
    #   <p>A list of preferred availability zones for the nodes in this cluster.</p>
    #   @return [Array<String>]
    class ReshardingConfiguration < Struct.new(
      :node_group_id,
      :preferred_availability_zones,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The status of an online resharding operation.</p>
    # @!attribute slot_migration
    #   <p>Represents the progress of an online resharding operation.</p>
    #   @return [Types::SlotMigration]
    class ReshardingStatus < Struct.new(
      :slot_migration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of a <code>RevokeCacheSecurityGroupIngress</code>
    #             operation.</p>
    # @!attribute cache_security_group_name
    #   <p>The name of the cache security group to revoke ingress from.</p>
    #   @return [String]
    # @!attribute ec2_security_group_name
    #   <p>The name of the Amazon EC2 security group to revoke access from.</p>
    #   @return [String]
    # @!attribute ec2_security_group_owner_id
    #   <p>The Amazon account number of the Amazon EC2 security group owner. Note that this is
    #               not the same thing as an Amazon access key ID - you must provide a valid Amazon account
    #               number for this parameter.</p>
    #   @return [String]
    class RevokeCacheSecurityGroupIngressMessage < Struct.new(
      :cache_security_group_name,
      :ec2_security_group_name,
      :ec2_security_group_owner_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute cache_security_group
    #   <p>Represents the output of one of the following operations:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>AuthorizeCacheSecurityGroupIngress</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CreateCacheSecurityGroup</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>RevokeCacheSecurityGroupIngress</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [Types::CacheSecurityGroup]
    class RevokeCacheSecurityGroupIngressResult < Struct.new(
      :cache_security_group,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration settings for horizontal or vertical scaling operations on Memcached clusters.</p>
    # @!attribute scale_percentage
    #   <p>The percentage by which to scale the Memcached cluster, either horizontally by adding nodes or vertically by increasing resources.</p>
    #   @return [Integer]
    # @!attribute scale_interval_minutes
    #   <p>The time interval in seconds between scaling operations when performing gradual scaling for a Memcached cluster.</p>
    #   @return [Integer]
    class ScaleConfig < Struct.new(
      :scale_percentage,
      :scale_interval_minutes,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a single cache security group and its status.</p>
    # @!attribute security_group_id
    #   <p>The identifier of the cache security group.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the cache security group membership. The status changes whenever a cache
    #               security group is modified, or when the cache security groups assigned to a cluster are
    #               modified.</p>
    #   @return [String]
    class SecurityGroupMembership < Struct.new(
      :security_group_id,
      :status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The resource representing a serverless cache.</p>
    # @!attribute serverless_cache_name
    #   <p>The unique identifier of the serverless cache.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the serverless cache.</p>
    #   @return [String]
    # @!attribute create_time
    #   <p>When the serverless cache was created. </p>
    #   @return [Time]
    # @!attribute status
    #   <p>The current status of the serverless cache. The allowed values are CREATING, AVAILABLE, DELETING, CREATE-FAILED and MODIFYING.</p>
    #   @return [String]
    # @!attribute engine
    #   <p>The engine the serverless cache is compatible with.</p>
    #   @return [String]
    # @!attribute major_engine_version
    #   <p>The version number of the engine the serverless cache is compatible with.</p>
    #   @return [String]
    # @!attribute full_engine_version
    #   <p>The name and version number of the engine the serverless cache is compatible with.</p>
    #   @return [String]
    # @!attribute cache_usage_limits
    #   <p>The cache usage limit for the serverless cache.</p>
    #   @return [Types::CacheUsageLimits]
    # @!attribute kms_key_id
    #   <p>The ID of the Amazon Web Services Key Management Service (KMS) key that is used to encrypt data at rest in the serverless cache.</p>
    #   @return [String]
    # @!attribute security_group_ids
    #   <p>The IDs of the EC2 security groups associated with the serverless 
    #              cache.</p>
    #   @return [Array<String>]
    # @!attribute endpoint
    #   <p>Represents the information required for client programs to connect to a cache
    #               node. This value is read-only.</p>
    #   @return [Types::Endpoint]
    # @!attribute reader_endpoint
    #   <p>Represents the information required for client programs to connect to a cache
    #               node. This value is read-only.</p>
    #   @return [Types::Endpoint]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the serverless cache.</p>
    #   @return [String]
    # @!attribute user_group_id
    #   <p>The identifier of the user group associated with the serverless cache. Available for Valkey and Redis OSS only. Default is NULL.</p>
    #   @return [String]
    # @!attribute subnet_ids
    #   <p>If no subnet IDs are given and your VPC is in us-west-1, then ElastiCache will select 2 default subnets across AZs in your VPC. 
    #              For all other Regions, if no subnet IDs are given then ElastiCache will select 3 default subnets across AZs in your default VPC.</p>
    #   @return [Array<String>]
    # @!attribute snapshot_retention_limit
    #   <p>The current setting for the number of serverless cache snapshots the system will retain. Available for Valkey, Redis OSS and Serverless Memcached only.</p>
    #   @return [Integer]
    # @!attribute daily_snapshot_time
    #   <p>The daily time that a cache snapshot will be created. Default is NULL, i.e. snapshots will not be created at a
    #              specific time on a daily basis. Available for Valkey, Redis OSS and Serverless Memcached only.</p>
    #   @return [String]
    class ServerlessCache < Struct.new(
      :serverless_cache_name,
      :description,
      :create_time,
      :status,
      :engine,
      :major_engine_version,
      :full_engine_version,
      :cache_usage_limits,
      :kms_key_id,
      :security_group_ids,
      :endpoint,
      :reader_endpoint,
      :arn,
      :user_group_id,
      :subnet_ids,
      :snapshot_retention_limit,
      :daily_snapshot_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A serverless cache with this name already exists.</p>
    # @!attribute message
    #   @return [String]
    class ServerlessCacheAlreadyExistsFault < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration settings for a specific serverless cache.</p>
    # @!attribute serverless_cache_name
    #   <p>The identifier of a serverless cache.</p>
    #   @return [String]
    # @!attribute engine
    #   <p>The engine that the serverless cache is configured with.</p>
    #   @return [String]
    # @!attribute major_engine_version
    #   <p>The engine version number that the serverless cache is configured with.</p>
    #   @return [String]
    class ServerlessCacheConfiguration < Struct.new(
      :serverless_cache_name,
      :engine,
      :major_engine_version,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The serverless cache was not found or does not exist.</p>
    # @!attribute message
    #   @return [String]
    class ServerlessCacheNotFoundFault < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The number of serverless caches exceeds the customer quota.</p>
    # @!attribute message
    #   @return [String]
    class ServerlessCacheQuotaForCustomerExceededFault < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The resource representing a serverless cache snapshot. Available for Valkey, Redis OSS and Serverless Memcached only.</p>
    # @!attribute serverless_cache_snapshot_name
    #   <p>The identifier of a serverless cache snapshot. Available for Valkey, Redis OSS and Serverless Memcached only.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of a serverless cache snapshot. Available for Valkey, Redis OSS and Serverless Memcached only.</p>
    #   @return [String]
    # @!attribute kms_key_id
    #   <p>The ID of the Amazon Web Services Key Management Service (KMS) key of a serverless cache snapshot. Available for Valkey, Redis OSS and Serverless Memcached only.</p>
    #   @return [String]
    # @!attribute snapshot_type
    #   <p>The type of snapshot of serverless cache. Available for Valkey, Redis OSS and Serverless Memcached only.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the serverless cache. Available for Valkey, Redis OSS and Serverless Memcached only.</p>
    #   @return [String]
    # @!attribute create_time
    #   <p>The date and time that the source serverless cache's metadata and cache data set was obtained for
    #              the snapshot. Available for Valkey, Redis OSS and Serverless Memcached only.</p>
    #   @return [Time]
    # @!attribute expiry_time
    #   <p>The time that the serverless cache snapshot will expire. Available for Valkey, Redis OSS and Serverless Memcached only.</p>
    #   @return [Time]
    # @!attribute bytes_used_for_cache
    #   <p>The total size of a serverless cache snapshot, in bytes. Available for Valkey, Redis OSS and Serverless Memcached only.</p>
    #   @return [String]
    # @!attribute serverless_cache_configuration
    #   <p>The configuration of the serverless cache, at the time the snapshot was taken. Available for Valkey, Redis OSS and Serverless Memcached only.</p>
    #   @return [Types::ServerlessCacheConfiguration]
    class ServerlessCacheSnapshot < Struct.new(
      :serverless_cache_snapshot_name,
      :arn,
      :kms_key_id,
      :snapshot_type,
      :status,
      :create_time,
      :expiry_time,
      :bytes_used_for_cache,
      :serverless_cache_configuration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A serverless cache snapshot with this name already exists. Available for Valkey, Redis OSS and Serverless Memcached only.</p>
    # @!attribute message
    #   @return [String]
    class ServerlessCacheSnapshotAlreadyExistsFault < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>This serverless cache snapshot could not be found or does not exist. Available for Valkey, Redis OSS and Serverless Memcached only.</p>
    # @!attribute message
    #   @return [String]
    class ServerlessCacheSnapshotNotFoundFault < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The number of serverless cache snapshots exceeds the customer snapshot quota. Available for Valkey, Redis OSS and Serverless Memcached only.</p>
    # @!attribute message
    #   @return [String]
    class ServerlessCacheSnapshotQuotaExceededFault < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The specified service linked role (SLR) was not found.</p>
    # @!attribute message
    #   @return [String]
    class ServiceLinkedRoleNotFoundFault < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An update that you can apply to your Valkey or Redis OSS clusters.</p>
    # @!attribute service_update_name
    #   <p>The unique ID of the service update</p>
    #   @return [String]
    # @!attribute service_update_release_date
    #   <p>The date when the service update is initially available</p>
    #   @return [Time]
    # @!attribute service_update_end_date
    #   <p>The date after which the service update is no longer available</p>
    #   @return [Time]
    # @!attribute service_update_severity
    #   <p>The severity of the service update</p>
    #   @return [String]
    # @!attribute service_update_recommended_apply_by_date
    #   <p>The recommendend date to apply the service update in order to ensure compliance. For
    #               information on compliance, see <a href="https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/elasticache-compliance.html#elasticache-compliance-self-service">Self-Service Security Updates for Compliance</a>.</p>
    #   @return [Time]
    # @!attribute service_update_status
    #   <p>The status of the service update</p>
    #   @return [String]
    # @!attribute service_update_description
    #   <p>Provides details of the service update</p>
    #   @return [String]
    # @!attribute service_update_type
    #   <p>Reflects the nature of the service update</p>
    #   @return [String]
    # @!attribute engine
    #   <p>The Elasticache engine to which the update applies. Either Valkey, Redis OSS or Memcached.</p>
    #   @return [String]
    # @!attribute engine_version
    #   <p>The Elasticache engine version to which the update applies. Either Valkey, Redis OSS or Memcached
    #               engine version.</p>
    #   @return [String]
    # @!attribute auto_update_after_recommended_apply_by_date
    #   <p>Indicates whether the service update will be automatically applied once the
    #               recommended apply-by date has expired. </p>
    #   @return [Boolean]
    # @!attribute estimated_update_time
    #   <p>The estimated length of time the service update will take</p>
    #   @return [String]
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
      :estimated_update_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The service update doesn't exist</p>
    # @!attribute message
    #   @return [String]
    class ServiceUpdateNotFoundFault < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute marker
    #   <p>An optional marker returned from a prior request. Use this marker for pagination of
    #               results from this operation. If this parameter is specified, the response includes only
    #               records beyond the marker, up to the value specified by <code>MaxRecords</code>.</p>
    #   @return [String]
    # @!attribute service_updates
    #   <p>A list of service updates</p>
    #   @return [Array<Types::ServiceUpdate>]
    class ServiceUpdatesMessage < Struct.new(
      :marker,
      :service_updates,
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
    end

    # <p>Represents a copy of an entire Valkey or Redis OSS cluster as of the time when the snapshot was
    #             taken.</p>
    # @!attribute snapshot_name
    #   <p>The name of a snapshot. For an automatic snapshot, the name is system-generated. For a
    #               manual snapshot, this is the user-provided name.</p>
    #   @return [String]
    # @!attribute replication_group_id
    #   <p>The unique identifier of the source replication group.</p>
    #   @return [String]
    # @!attribute replication_group_description
    #   <p>A description of the source replication group.</p>
    #   @return [String]
    # @!attribute cache_cluster_id
    #   <p>The user-supplied identifier of the source cluster.</p>
    #   @return [String]
    # @!attribute snapshot_status
    #   <p>The status of the snapshot. Valid values: <code>creating</code> |
    #                   <code>available</code> | <code>restoring</code> | <code>copying</code> |
    #                   <code>deleting</code>.</p>
    #   @return [String]
    # @!attribute snapshot_source
    #   <p>Indicates whether the snapshot is from an automatic backup (<code>automated</code>) or
    #               was created manually (<code>manual</code>).</p>
    #   @return [String]
    # @!attribute cache_node_type
    #   <p>The name of the compute and memory capacity node type for the source cluster.</p>
    #            <p>The following node types are supported by ElastiCache. Generally speaking, the current
    #               generation types provide more memory and computational power at lower cost when compared
    #               to their equivalent previous generation counterparts.</p>
    #            <ul>
    #               <li>
    #                  <p>General purpose:</p>
    #                  <ul>
    #                     <li>
    #                        <p>Current generation: </p>
    #                        <p>
    #                           <b>M7g node types</b>:
    #       					<code>cache.m7g.large</code>,
    #       					<code>cache.m7g.xlarge</code>,
    #       					<code>cache.m7g.2xlarge</code>,
    #       					<code>cache.m7g.4xlarge</code>,
    #       					<code>cache.m7g.8xlarge</code>,
    #       					<code>cache.m7g.12xlarge</code>,
    #       					<code>cache.m7g.16xlarge</code>
    #                        </p>
    #                        <note>
    #                           <p>For region availability, see <a href="https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/CacheNodes.SupportedTypes.html#CacheNodes.SupportedTypesByRegion">Supported Node Types</a>
    #                           </p>
    #                        </note>
    #                        <p>
    #                           <b>M6g node types</b> (available only for Redis OSS engine version 5.0.6 onward and for Memcached engine version 1.5.16 onward):
    #   					    
    #   					 	<code>cache.m6g.large</code>,
    #   							<code>cache.m6g.xlarge</code>,
    #   							<code>cache.m6g.2xlarge</code>,
    #   							<code>cache.m6g.4xlarge</code>,
    #   							<code>cache.m6g.8xlarge</code>,
    #   							<code>cache.m6g.12xlarge</code>,
    #   							<code>cache.m6g.16xlarge</code>
    #                        </p>
    #                        <p>
    #                           <b>M5 node types:</b>
    #                           <code>cache.m5.large</code>,
    #       						<code>cache.m5.xlarge</code>,
    #       						<code>cache.m5.2xlarge</code>,
    #       						<code>cache.m5.4xlarge</code>,
    #       						<code>cache.m5.12xlarge</code>,
    #       						<code>cache.m5.24xlarge</code>
    #                        </p>
    #                        <p>
    #                           <b>M4 node types:</b>
    #                           <code>cache.m4.large</code>,
    #       						<code>cache.m4.xlarge</code>,
    #       						<code>cache.m4.2xlarge</code>,
    #       						<code>cache.m4.4xlarge</code>,
    #       						<code>cache.m4.10xlarge</code>
    #                        </p>
    #                        <p>
    #                           <b>T4g node types</b> (available only for Redis OSS engine version 5.0.6 onward and Memcached engine version 1.5.16 onward):
    #   					        <code>cache.t4g.micro</code>,
    #   					        <code>cache.t4g.small</code>,
    #   					        <code>cache.t4g.medium</code>
    #                        </p>
    #                        <p>
    #                           <b>T3 node types:</b>
    #                           <code>cache.t3.micro</code>, 
    #       						<code>cache.t3.small</code>,
    #       						<code>cache.t3.medium</code>
    #                        </p>
    #                        <p>
    #                           <b>T2 node types:</b>
    #                           <code>cache.t2.micro</code>, 
    #       						<code>cache.t2.small</code>,
    #       						<code>cache.t2.medium</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>Previous generation: (not recommended. Existing clusters are still supported but creation of new clusters is not supported for these types.)</p>
    #                        <p>
    #                           <b>T1 node types:</b>
    #                           <code>cache.t1.micro</code>
    #                        </p>
    #                        <p>
    #                           <b>M1 node types:</b>
    #                           <code>cache.m1.small</code>, 
    #   						   <code>cache.m1.medium</code>, 
    #   						   <code>cache.m1.large</code>,
    #   						   <code>cache.m1.xlarge</code>
    #                        </p>
    #                        <p>
    #                           <b>M3 node types:</b>
    #                           <code>cache.m3.medium</code>,
    #       						<code>cache.m3.large</code>, 
    #       						<code>cache.m3.xlarge</code>,
    #       						<code>cache.m3.2xlarge</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>Compute optimized:</p>
    #                  <ul>
    #                     <li>
    #                        <p>Previous generation: (not recommended. Existing clusters are still supported but creation of new clusters is not supported for these types.)</p>
    #                        <p>
    #                           <b>C1 node types:</b>
    #                           <code>cache.c1.xlarge</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>Memory optimized:</p>
    #                  <ul>
    #                     <li>
    #                        <p>Current generation: </p>
    #                        <p>
    #                           <b>R7g node types</b>:	
    #   							<code>cache.r7g.large</code>,
    #   							<code>cache.r7g.xlarge</code>,
    #   							<code>cache.r7g.2xlarge</code>,
    #   							<code>cache.r7g.4xlarge</code>,
    #   							<code>cache.r7g.8xlarge</code>,
    #   							<code>cache.r7g.12xlarge</code>,
    #   							<code>cache.r7g.16xlarge</code>
    #                        </p>
    #                        <note>
    #                           <p>For region availability, see <a href="https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/CacheNodes.SupportedTypes.html#CacheNodes.SupportedTypesByRegion">Supported Node Types</a>
    #                           </p>
    #                        </note>
    #                        <p>
    #                           <b>R6g node types</b> (available only for Redis OSS engine version 5.0.6 onward and for Memcached engine version 1.5.16 onward):
    #   							<code>cache.r6g.large</code>,
    #   							<code>cache.r6g.xlarge</code>,
    #   							<code>cache.r6g.2xlarge</code>,
    #   							<code>cache.r6g.4xlarge</code>,
    #   							<code>cache.r6g.8xlarge</code>,
    #   							<code>cache.r6g.12xlarge</code>,
    #   							<code>cache.r6g.16xlarge</code>
    #                        </p>
    #                        <p>
    #                           <b>R5 node types:</b>
    #                           <code>cache.r5.large</code>,
    #       					   <code>cache.r5.xlarge</code>,
    #       					   <code>cache.r5.2xlarge</code>,
    #       					   <code>cache.r5.4xlarge</code>,
    #       					   <code>cache.r5.12xlarge</code>,
    #       					   <code>cache.r5.24xlarge</code>
    #                        </p>
    #                        <p>
    #                           <b>R4 node types:</b>
    #                           <code>cache.r4.large</code>,
    #       					   <code>cache.r4.xlarge</code>,
    #       					   <code>cache.r4.2xlarge</code>,
    #       					   <code>cache.r4.4xlarge</code>,
    #       					   <code>cache.r4.8xlarge</code>,
    #       					   <code>cache.r4.16xlarge</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>Previous generation: (not recommended. Existing clusters are still supported but creation of new clusters is not supported for these types.)</p>
    #                        <p>
    #                           <b>M2 node types:</b>
    #                           <code>cache.m2.xlarge</code>, 
    #       						<code>cache.m2.2xlarge</code>,
    #       						<code>cache.m2.4xlarge</code>
    #                        </p>
    #                        <p>
    #                           <b>R3 node types:</b>
    #                           <code>cache.r3.large</code>, 
    #       						<code>cache.r3.xlarge</code>,
    #       						<code>cache.r3.2xlarge</code>,  
    #       						<code>cache.r3.4xlarge</code>,
    #       						<code>cache.r3.8xlarge</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #            </ul>
    #            <p>
    #               <b>Additional node type info</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>All current generation instance types are created in Amazon VPC by
    #                       default.</p>
    #               </li>
    #               <li>
    #                  <p>Valkey or Redis OSS append-only files (AOF) are not supported for T1 or T2 instances.</p>
    #               </li>
    #               <li>
    #                  <p>Valkey or Redis OSS Multi-AZ with automatic failover is not supported on T1
    #                       instances.</p>
    #               </li>
    #               <li>
    #                  <p>The configuration variables <code>appendonly</code> and
    #                           <code>appendfsync</code> are not supported on Valkey, or on Redis OSS version 2.8.22 and
    #                       later.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute engine
    #   <p>The name of the cache engine (<code>memcached</code> or <code>redis</code>) used by
    #               the source cluster.</p>
    #   @return [String]
    # @!attribute engine_version
    #   <p>The version of the cache engine version that is used by the source cluster.</p>
    #   @return [String]
    # @!attribute num_cache_nodes
    #   <p>The number of cache nodes in the source cluster.</p>
    #            <p>For clusters running Valkey or Redis OSS, this value must be 1. For clusters running Memcached, this
    #               value must be between 1 and 40.</p>
    #   @return [Integer]
    # @!attribute preferred_availability_zone
    #   <p>The name of the Availability Zone in which the source cluster is located.</p>
    #   @return [String]
    # @!attribute preferred_outpost_arn
    #   <p>The ARN (Amazon Resource Name) of the preferred outpost.</p>
    #   @return [String]
    # @!attribute cache_cluster_create_time
    #   <p>The date and time when the source cluster was created.</p>
    #   @return [Time]
    # @!attribute preferred_maintenance_window
    #   <p>Specifies the weekly time range during which maintenance on the cluster is performed.
    #               It is specified as a range in the format ddd:hh24:mi-ddd:hh24:mi (24H Clock UTC). The
    #               minimum maintenance window is a 60 minute period.</p>
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
    # @!attribute topic_arn
    #   <p>The Amazon Resource Name (ARN) for the topic used by the source cluster for publishing
    #               notifications.</p>
    #   @return [String]
    # @!attribute port
    #   <p>The port number used by each cache nodes in the source cluster.</p>
    #   @return [Integer]
    # @!attribute cache_parameter_group_name
    #   <p>The cache parameter group that is associated with the source cluster.</p>
    #   @return [String]
    # @!attribute cache_subnet_group_name
    #   <p>The name of the cache subnet group associated with the source cluster.</p>
    #   @return [String]
    # @!attribute vpc_id
    #   <p>The Amazon Virtual Private Cloud identifier (VPC ID) of the cache subnet group for the
    #               source cluster.</p>
    #   @return [String]
    # @!attribute auto_minor_version_upgrade
    #   <p> If you are running Valkey 7.2 and above or Redis OSS engine version 6.0 and above, set this parameter to yes if
    #               you want to opt-in to the next auto minor version upgrade campaign. This parameter is
    #               disabled for previous versions.  </p>
    #   @return [Boolean]
    # @!attribute snapshot_retention_limit
    #   <p>For an automatic snapshot, the number of days for which ElastiCache retains the
    #               snapshot before deleting it.</p>
    #            <p>For manual snapshots, this field reflects the <code>SnapshotRetentionLimit</code> for
    #               the source cluster when the snapshot was created. This field is otherwise ignored:
    #               Manual snapshots do not expire, and can only be deleted using the
    #                   <code>DeleteSnapshot</code> operation. </p>
    #            <p>
    #               <b>Important</b> If the value of SnapshotRetentionLimit is set
    #               to zero (0), backups are turned off.</p>
    #   @return [Integer]
    # @!attribute snapshot_window
    #   <p>The daily time range during which ElastiCache takes daily snapshots of the source
    #               cluster.</p>
    #   @return [String]
    # @!attribute num_node_groups
    #   <p>The number of node groups (shards) in this snapshot. When restoring from a snapshot,
    #               the number of node groups (shards) in the snapshot and in the restored replication group
    #               must be the same.</p>
    #   @return [Integer]
    # @!attribute automatic_failover
    #   <p>Indicates the status of automatic failover for the source Valkey or Redis OSS replication
    #               group.</p>
    #   @return [String]
    # @!attribute node_snapshots
    #   <p>A list of the cache nodes in the source cluster.</p>
    #   @return [Array<Types::NodeSnapshot>]
    # @!attribute kms_key_id
    #   <p>The ID of the KMS key used to encrypt the snapshot.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The ARN (Amazon Resource Name) of the snapshot.</p>
    #   @return [String]
    # @!attribute data_tiering
    #   <p>Enables data tiering. Data tiering is only supported for replication groups using the
    #               r6gd node type. This parameter must be set to true when using r6gd nodes. For more
    #               information, see <a href="https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/data-tiering.html">Data tiering</a>.</p>
    #   @return [String]
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
      :preferred_outpost_arn,
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
      :arn,
      :data_tiering,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>You already have a snapshot with the given name.</p>
    # @!attribute message
    #   @return [String]
    class SnapshotAlreadyExistsFault < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>You attempted one of the following operations:</p>
    #          <ul>
    #             <li>
    #                <p>Creating a snapshot of a Valkey or Redis OSS cluster running on a
    #                         <code>cache.t1.micro</code> cache node.</p>
    #             </li>
    #             <li>
    #                <p>Creating a snapshot of a cluster that is running Memcached rather than
    #                     Valkey or Redis OSS.</p>
    #             </li>
    #          </ul>
    #          <p>Neither of these are supported by ElastiCache.</p>
    # @!attribute message
    #   @return [String]
    class SnapshotFeatureNotSupportedFault < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The requested snapshot name does not refer to an existing snapshot.</p>
    # @!attribute message
    #   @return [String]
    class SnapshotNotFoundFault < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request cannot be processed because it would exceed the maximum number of
    #             snapshots.</p>
    # @!attribute message
    #   @return [String]
    class SnapshotQuotaExceededFault < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute replication_group_id
    #   <p>The ID of the replication group to which data should be migrated.</p>
    #   @return [String]
    # @!attribute customer_node_endpoint_list
    #   <p>List of endpoints from which data should be migrated. For Valkey or Redis OSS (cluster mode
    #               disabled), the list should have only one element.</p>
    #   @return [Array<Types::CustomerNodeEndpoint>]
    class StartMigrationMessage < Struct.new(
      :replication_group_id,
      :customer_node_endpoint_list,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute replication_group
    #   <p>Contains all of the attributes of a specific Valkey or Redis OSS replication group.</p>
    #   @return [Types::ReplicationGroup]
    class StartMigrationResponse < Struct.new(
      :replication_group,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the subnet associated with a cluster. This parameter refers to subnets
    #             defined in Amazon Virtual Private Cloud (Amazon VPC) and used with ElastiCache.</p>
    # @!attribute subnet_identifier
    #   <p>The unique identifier for the subnet.</p>
    #   @return [String]
    # @!attribute subnet_availability_zone
    #   <p>The Availability Zone associated with the subnet.</p>
    #   @return [Types::AvailabilityZone]
    # @!attribute subnet_outpost
    #   <p>The outpost ARN of the subnet.</p>
    #   @return [Types::SubnetOutpost]
    # @!attribute supported_network_types
    #   <p>Either <code>ipv4</code> | <code>ipv6</code> | <code>dual_stack</code>. IPv6 is
    #               supported for workloads using Valkey 7.2 and above, Redis OSS engine version 6.2
    #               to 7.1 or Memcached engine version 1.6.6 and above on all instances built on the <a href="http://aws.amazon.com/ec2/nitro/">Nitro system</a>.</p>
    #   @return [Array<String>]
    class Subnet < Struct.new(
      :subnet_identifier,
      :subnet_availability_zone,
      :subnet_outpost,
      :supported_network_types,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The requested subnet is being used by another cache subnet group.</p>
    # @!attribute message
    #   @return [String]
    class SubnetInUse < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>At least one subnet ID does not match the other subnet IDs. This mismatch typically
    #             occurs when a user sets one subnet ID to a regional Availability Zone and a different
    #             one to an outpost. Or when a user sets the subnet ID to an Outpost when not subscribed
    #             on this service.</p>
    # @!attribute message
    #   @return [String]
    class SubnetNotAllowedFault < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The ID of the outpost subnet.</p>
    # @!attribute subnet_outpost_arn
    #   <p>The outpost ARN of the subnet.</p>
    #   @return [String]
    class SubnetOutpost < Struct.new(
      :subnet_outpost_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A tag that can be added to an ElastiCache cluster or replication group. Tags are
    #             composed of a Key/Value pair. You can use tags to categorize and track all your
    #             ElastiCache resources, with the exception of global replication group. When you add or
    #             remove tags on replication groups, those actions will be replicated to all nodes in the
    #             replication group. A tag with a null Value is permitted.</p>
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

    # <p>The requested tag was not found on this resource.</p>
    # @!attribute message
    #   @return [String]
    class TagNotFoundFault < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request cannot be processed because it would cause the resource to have more than
    #             the allowed number of tags. The maximum number of tags permitted on a resource is
    #             50.</p>
    # @!attribute message
    #   @return [String]
    class TagQuotaPerResourceExceeded < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute replication_group_id
    #   <p>The name of the replication group (console: cluster) whose automatic failover is being
    #               tested by this operation.</p>
    #   @return [String]
    # @!attribute node_group_id
    #   <p>The name of the node group (called shard in the console) in this replication group on
    #               which automatic failover is to be tested. You may test automatic failover on up to 15
    #               node groups in any rolling 24-hour period.</p>
    #   @return [String]
    class TestFailoverMessage < Struct.new(
      :replication_group_id,
      :node_group_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The <code>TestFailover</code> action is not available.</p>
    # @!attribute message
    #   @return [String]
    class TestFailoverNotAvailableFault < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute replication_group
    #   <p>Contains all of the attributes of a specific Valkey or Redis OSS replication group.</p>
    #   @return [Types::ReplicationGroup]
    class TestFailoverResult < Struct.new(
      :replication_group,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute replication_group_id
    #   <p> The ID of the replication group to which data is to be migrated. </p>
    #   @return [String]
    # @!attribute customer_node_endpoint_list
    #   <p> List of endpoints from which data should be migrated. List should have only one
    #               element. </p>
    #   @return [Array<Types::CustomerNodeEndpoint>]
    class TestMigrationMessage < Struct.new(
      :replication_group_id,
      :customer_node_endpoint_list,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute replication_group
    #   <p>Contains all of the attributes of a specific Valkey or Redis OSS replication group.</p>
    #   @return [Types::ReplicationGroup]
    class TestMigrationResponse < Struct.new(
      :replication_group,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Filters update actions from the service updates that are in available status during
    #             the time range.</p>
    # @!attribute start_time
    #   <p>The start time of the time range filter</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The end time of the time range filter</p>
    #   @return [Time]
    class TimeRangeFilter < Struct.new(
      :start_time,
      :end_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Update action that has failed to be processed for the corresponding apply/stop
    #             request</p>
    # @!attribute replication_group_id
    #   <p>The replication group ID</p>
    #   @return [String]
    # @!attribute cache_cluster_id
    #   <p>The ID of the cache cluster</p>
    #   @return [String]
    # @!attribute service_update_name
    #   <p>The unique ID of the service update</p>
    #   @return [String]
    # @!attribute error_type
    #   <p>The error type for requests that are not processed</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>The error message that describes the reason the request was not processed</p>
    #   @return [String]
    class UnprocessedUpdateAction < Struct.new(
      :replication_group_id,
      :cache_cluster_id,
      :service_update_name,
      :error_type,
      :error_message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The status of the service update for a specific replication group</p>
    # @!attribute replication_group_id
    #   <p>The ID of the replication group</p>
    #   @return [String]
    # @!attribute cache_cluster_id
    #   <p>The ID of the cache cluster</p>
    #   @return [String]
    # @!attribute service_update_name
    #   <p>The unique ID of the service update</p>
    #   @return [String]
    # @!attribute service_update_release_date
    #   <p>The date the update is first available</p>
    #   @return [Time]
    # @!attribute service_update_severity
    #   <p>The severity of the service update</p>
    #   @return [String]
    # @!attribute service_update_status
    #   <p>The status of the service update</p>
    #   @return [String]
    # @!attribute service_update_recommended_apply_by_date
    #   <p>The recommended date to apply the service update to ensure compliance. For information
    #               on compliance, see <a href="https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/elasticache-compliance.html#elasticache-compliance-self-service">Self-Service Security Updates for Compliance</a>.</p>
    #   @return [Time]
    # @!attribute service_update_type
    #   <p>Reflects the nature of the service update </p>
    #   @return [String]
    # @!attribute update_action_available_date
    #   <p>The date that the service update is available to a replication group</p>
    #   @return [Time]
    # @!attribute update_action_status
    #   <p>The status of the update action</p>
    #   @return [String]
    # @!attribute nodes_updated
    #   <p>The progress of the service update on the replication group</p>
    #   @return [String]
    # @!attribute update_action_status_modified_date
    #   <p>The date when the UpdateActionStatus was last modified</p>
    #   @return [Time]
    # @!attribute sla_met
    #   <p>If yes, all nodes in the replication group have been updated by the recommended
    #               apply-by date. If no, at least one node in the replication group have not been updated
    #               by the recommended apply-by date. If N/A, the replication group was created after the
    #               recommended apply-by date.</p>
    #   @return [String]
    # @!attribute node_group_update_status
    #   <p>The status of the service update on the node group</p>
    #   @return [Array<Types::NodeGroupUpdateStatus>]
    # @!attribute cache_node_update_status
    #   <p>The status of the service update on the cache node</p>
    #   @return [Array<Types::CacheNodeUpdateStatus>]
    # @!attribute estimated_update_time
    #   <p>The estimated length of time for the update to complete</p>
    #   @return [String]
    # @!attribute engine
    #   <p>The Elasticache engine to which the update applies. Either Valkey, Redis OSS or Memcached.</p>
    #   @return [String]
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
      :engine,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute marker
    #   <p>An optional marker returned from a prior request. Use this marker for pagination of
    #               results from this operation. If this parameter is specified, the response includes only
    #               records beyond the marker, up to the value specified by <code>MaxRecords</code>.</p>
    #   @return [String]
    # @!attribute update_actions
    #   <p>Returns a list of update actions</p>
    #   @return [Array<Types::UpdateAction>]
    class UpdateActionsMessage < Struct.new(
      :marker,
      :update_actions,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute user_id
    #   <p>The ID of the user.</p>
    #   @return [String]
    # @!attribute user_name
    #   <p>The username of the user.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Indicates the user status. Can be "active", "modifying" or "deleting".</p>
    #   @return [String]
    # @!attribute engine
    #   <p>The options are valkey or redis.</p>
    #   @return [String]
    # @!attribute minimum_engine_version
    #   <p>The minimum engine version required, which is Redis OSS 6.0</p>
    #   @return [String]
    # @!attribute access_string
    #   <p>Access permissions string used for this user.</p>
    #   @return [String]
    # @!attribute user_group_ids
    #   <p>Returns a list of the user group IDs the user belongs to.</p>
    #   @return [Array<String>]
    # @!attribute authentication
    #   <p>Denotes whether the user requires a password to authenticate.</p>
    #   @return [Types::Authentication]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the user.</p>
    #   @return [String]
    class User < Struct.new(
      :user_id,
      :user_name,
      :status,
      :engine,
      :minimum_engine_version,
      :access_string,
      :user_group_ids,
      :authentication,
      :arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A user with this ID already exists.</p>
    # @!attribute message
    #   @return [String]
    class UserAlreadyExistsFault < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute user_group_id
    #   <p>The ID of the user group.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Indicates user group status. Can be "creating", "active", "modifying",
    #               "deleting".</p>
    #   @return [String]
    # @!attribute engine
    #   <p>The options are valkey or redis.</p>
    #   @return [String]
    # @!attribute user_ids
    #   <p>The list of user IDs that belong to the user group.</p>
    #   @return [Array<String>]
    # @!attribute minimum_engine_version
    #   <p>The minimum engine version required, which is Redis OSS 6.0</p>
    #   @return [String]
    # @!attribute pending_changes
    #   <p>A list of updates being applied to the user group.</p>
    #   @return [Types::UserGroupPendingChanges]
    # @!attribute replication_groups
    #   <p>A list of replication groups that the user group can access.</p>
    #   @return [Array<String>]
    # @!attribute serverless_caches
    #   <p>Indicates which serverless caches the specified user group is associated with. Available for Valkey, Redis OSS and Serverless Memcached only.</p>
    #   @return [Array<String>]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the user group.</p>
    #   @return [String]
    class UserGroup < Struct.new(
      :user_group_id,
      :status,
      :engine,
      :user_ids,
      :minimum_engine_version,
      :pending_changes,
      :replication_groups,
      :serverless_caches,
      :arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The user group with this ID already exists.</p>
    # @!attribute message
    #   @return [String]
    class UserGroupAlreadyExistsFault < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The user group was not found or does not exist</p>
    # @!attribute message
    #   @return [String]
    class UserGroupNotFoundFault < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Returns the updates being applied to the user group.</p>
    # @!attribute user_ids_to_remove
    #   <p>The list of user IDs to remove.</p>
    #   @return [Array<String>]
    # @!attribute user_ids_to_add
    #   <p>The list of user IDs to add.</p>
    #   @return [Array<String>]
    class UserGroupPendingChanges < Struct.new(
      :user_ids_to_remove,
      :user_ids_to_add,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The number of users exceeds the user group limit.</p>
    # @!attribute message
    #   @return [String]
    class UserGroupQuotaExceededFault < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The status of the user group update.</p>
    # @!attribute user_group_ids_to_add
    #   <p>The ID of the user group to add.</p>
    #   @return [Array<String>]
    # @!attribute user_group_ids_to_remove
    #   <p>The ID of the user group to remove.</p>
    #   @return [Array<String>]
    class UserGroupsUpdateStatus < Struct.new(
      :user_group_ids_to_add,
      :user_group_ids_to_remove,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The user does not exist or could not be found.</p>
    # @!attribute message
    #   @return [String]
    class UserNotFoundFault < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The quota of users has been exceeded.</p>
    # @!attribute message
    #   @return [String]
    class UserQuotaExceededFault < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

  end
end
