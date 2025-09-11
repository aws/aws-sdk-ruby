# frozen_string_literal: true

# This is generated code!

module Aws::DAX
  # This module contains the types returned by client operations.
  module Types

    # <p>Contains all of the attributes of a specific DAX cluster.</p>
    # @!attribute cluster_name
    #   <p>The name of the DAX cluster.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the cluster.</p>
    #   @return [String]
    # @!attribute cluster_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies the cluster.
    #           </p>
    #   @return [String]
    # @!attribute total_nodes
    #   <p>The total number of nodes in the cluster.</p>
    #   @return [Integer]
    # @!attribute active_nodes
    #   <p>The number of nodes in the cluster that are active (i.e., capable of serving
    #               requests).</p>
    #   @return [Integer]
    # @!attribute node_type
    #   <p>The node type for the nodes in the cluster. (All nodes in a DAX cluster are of
    #               the same type.)</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the cluster.</p>
    #   @return [String]
    # @!attribute cluster_discovery_endpoint
    #   <p>The endpoint for this DAX cluster, consisting of a DNS name, a port number,
    #                and a URL. Applications should use the URL to configure the DAX client to find
    #                their cluster.</p>
    #   @return [Types::Endpoint]
    # @!attribute node_ids_to_remove
    #   <p>A list of nodes to be removed from the cluster.</p>
    #   @return [Array<String>]
    # @!attribute nodes
    #   <p>A list of nodes that are currently in the cluster.</p>
    #   @return [Array<Types::Node>]
    # @!attribute preferred_maintenance_window
    #   <p>A range of time when maintenance of DAX cluster software will be performed. For
    #               example: <code>sun:01:00-sun:09:00</code>. Cluster maintenance normally takes less than
    #               30 minutes, and is performed automatically within the maintenance window.</p>
    #   @return [String]
    # @!attribute notification_configuration
    #   <p>Describes a notification topic and its status. Notification topics are used for
    #               publishing DAX events to subscribers using Amazon Simple Notification Service
    #               (SNS).</p>
    #   @return [Types::NotificationConfiguration]
    # @!attribute subnet_group
    #   <p>The subnet group where the DAX cluster is running.</p>
    #   @return [String]
    # @!attribute security_groups
    #   <p>A list of security groups, and the status of each, for the nodes in the cluster.</p>
    #   @return [Array<Types::SecurityGroupMembership>]
    # @!attribute iam_role_arn
    #   <p>A valid Amazon Resource Name (ARN) that identifies an IAM role. At runtime, DAX
    #               will assume this role and use the role's permissions to access DynamoDB on your
    #               behalf.</p>
    #   @return [String]
    # @!attribute parameter_group
    #   <p>The parameter group being used by nodes in the cluster.</p>
    #   @return [Types::ParameterGroupStatus]
    # @!attribute sse_description
    #   <p>The description of the server-side encryption status on the specified DAX cluster.</p>
    #   @return [Types::SSEDescription]
    # @!attribute cluster_endpoint_encryption_type
    #   <p>The type of encryption supported by the cluster's endpoint. Values are:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>NONE</code> for no encryption</p>
    #                   <p>
    #                     <code>TLS</code> for Transport Layer Security</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class Cluster < Struct.new(
      :cluster_name,
      :description,
      :cluster_arn,
      :total_nodes,
      :active_nodes,
      :node_type,
      :status,
      :cluster_discovery_endpoint,
      :node_ids_to_remove,
      :nodes,
      :preferred_maintenance_window,
      :notification_configuration,
      :subnet_group,
      :security_groups,
      :iam_role_arn,
      :parameter_group,
      :sse_description,
      :cluster_endpoint_encryption_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>You already have a DAX cluster with the given identifier.</p>
    # @!attribute message
    #   @return [String]
    class ClusterAlreadyExistsFault < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The requested cluster ID does not refer to an existing DAX cluster.</p>
    # @!attribute message
    #   @return [String]
    class ClusterNotFoundFault < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>You have attempted to exceed the maximum number of DAX clusters for your AWS
    #             account.</p>
    # @!attribute message
    #   @return [String]
    class ClusterQuotaForCustomerExceededFault < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster_name
    #   <p>The cluster identifier. This parameter is stored as a lowercase
    #               string.</p>
    #           <p>
    #               <b>Constraints:</b>
    #           </p>
    #           <ul>
    #               <li>
    #                   <p>A name must contain from 1 to 20 alphanumeric characters or
    #                       hyphens.</p>
    #               </li>
    #               <li>
    #                   <p>The first character must be a letter.</p>
    #               </li>
    #               <li>
    #                   <p>A name cannot end with a hyphen or contain two consecutive
    #                       hyphens.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute node_type
    #   <p>The compute and memory capacity of the nodes in the cluster.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the cluster.</p>
    #   @return [String]
    # @!attribute replication_factor
    #   <p>The number of nodes in the DAX cluster. A replication factor of 1 will
    #               create a single-node cluster, without any read replicas. For additional fault tolerance,
    #               you can create a multiple node cluster with one or more read replicas. To do this, set
    #                   <code>ReplicationFactor</code> to a number between 3 (one primary and two read replicas) and 10 (one primary and nine read replicas). 
    #                    <code>If the AvailabilityZones</code> parameter is provided, its length must equal the <code>ReplicationFactor</code>.</p>
    #           <note>
    #               <p>AWS recommends that you have at least two read replicas per cluster.</p>
    #            </note>
    #   @return [Integer]
    # @!attribute availability_zones
    #   <p>The Availability Zones (AZs) in which the cluster nodes will reside after the cluster
    #            has been created or updated. If provided, the length of this list must equal the <code>ReplicationFactor</code> parameter.
    #            If you omit this parameter, DAX will spread the nodes across Availability Zones for the highest availability.</p>
    #   @return [Array<String>]
    # @!attribute subnet_group_name
    #   <p>The name of the subnet group to be used for the replication group.</p>
    #           <important>
    #               <p>DAX clusters can only run in an Amazon VPC environment. All of the subnets
    #                   that you specify in a subnet group must exist in the same VPC.</p>
    #           </important>
    #   @return [String]
    # @!attribute security_group_ids
    #   <p>A list of security group IDs to be assigned to each node in the DAX cluster. (Each of the 
    #                security group ID is system-generated.)</p>
    #           <p>If this parameter is not specified, DAX assigns the default VPC security group to
    #               each node.</p>
    #   @return [Array<String>]
    # @!attribute preferred_maintenance_window
    #   <p>Specifies the weekly time range during which maintenance on the DAX cluster is
    #               performed. It is specified as a range in the format ddd:hh24:mi-ddd:hh24:mi (24H Clock
    #               UTC). The minimum maintenance window is a 60 minute period. Valid values for
    #                   <code>ddd</code> are:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                       <code>sun</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>mon</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>tue</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>wed</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>thu</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>fri</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>sat</code>
    #                   </p>
    #               </li>
    #            </ul>
    #           <p>Example: <code>sun:05:00-sun:09:00</code>
    #           </p>
    #           <note>
    #               <p>If you don't specify a preferred maintenance window when you create or modify a
    #                   cache cluster, DAX assigns a 60-minute maintenance window on a randomly selected day
    #                   of the week.</p>
    #            </note>
    #   @return [String]
    # @!attribute notification_topic_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon SNS topic to which notifications will
    #               be sent.</p>
    #           <note>
    #               <p>The Amazon SNS topic owner must be same as the DAX cluster owner.</p>
    #           </note>
    #   @return [String]
    # @!attribute iam_role_arn
    #   <p>A valid Amazon Resource Name (ARN) that identifies an IAM role. At runtime, DAX
    #               will assume this role and use the role's permissions to access DynamoDB on your
    #               behalf.</p>
    #   @return [String]
    # @!attribute parameter_group_name
    #   <p>The parameter group to be associated with the DAX cluster.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A set of tags to associate with the DAX cluster.  </p>
    #   @return [Array<Types::Tag>]
    # @!attribute sse_specification
    #   <p>Represents the settings used to enable server-side encryption on the cluster.</p>
    #   @return [Types::SSESpecification]
    # @!attribute cluster_endpoint_encryption_type
    #   <p>The type of encryption the cluster's endpoint should support. Values are:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>NONE</code> for no encryption</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>TLS</code> for Transport Layer Security</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class CreateClusterRequest < Struct.new(
      :cluster_name,
      :node_type,
      :description,
      :replication_factor,
      :availability_zones,
      :subnet_group_name,
      :security_group_ids,
      :preferred_maintenance_window,
      :notification_topic_arn,
      :iam_role_arn,
      :parameter_group_name,
      :tags,
      :sse_specification,
      :cluster_endpoint_encryption_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster
    #   <p>A description of the DAX cluster that you have created.</p>
    #   @return [Types::Cluster]
    class CreateClusterResponse < Struct.new(
      :cluster,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute parameter_group_name
    #   <p>The name of the parameter group to apply to all of the clusters in this replication
    #               group.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the parameter group.</p>
    #   @return [String]
    class CreateParameterGroupRequest < Struct.new(
      :parameter_group_name,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute parameter_group
    #   <p>Represents the output of a <i>CreateParameterGroup</i>
    #               action.</p>
    #   @return [Types::ParameterGroup]
    class CreateParameterGroupResponse < Struct.new(
      :parameter_group,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute subnet_group_name
    #   <p>A name for the subnet group. This value is stored as a lowercase string. </p>
    #   @return [String]
    # @!attribute description
    #   <p>A description for the subnet group</p>
    #   @return [String]
    # @!attribute subnet_ids
    #   <p>A list of VPC subnet IDs for the subnet group.</p>
    #   @return [Array<String>]
    class CreateSubnetGroupRequest < Struct.new(
      :subnet_group_name,
      :description,
      :subnet_ids,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute subnet_group
    #   <p>Represents the output of a <i>CreateSubnetGroup</i>
    #               operation.</p>
    #   @return [Types::SubnetGroup]
    class CreateSubnetGroupResponse < Struct.new(
      :subnet_group,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster_name
    #   <p>The name of the DAX cluster from which you want to remove nodes.</p>
    #   @return [String]
    # @!attribute new_replication_factor
    #   <p>The new number of nodes for the DAX cluster.</p>
    #   @return [Integer]
    # @!attribute availability_zones
    #   <p>The Availability Zone(s) from which to remove nodes.</p>
    #   @return [Array<String>]
    # @!attribute node_ids_to_remove
    #   <p>The unique identifiers of the nodes to be removed from the cluster.</p>
    #   @return [Array<String>]
    class DecreaseReplicationFactorRequest < Struct.new(
      :cluster_name,
      :new_replication_factor,
      :availability_zones,
      :node_ids_to_remove,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster
    #   <p>A description of the DAX cluster, after you have decreased its replication
    #               factor.</p>
    #   @return [Types::Cluster]
    class DecreaseReplicationFactorResponse < Struct.new(
      :cluster,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster_name
    #   <p>The name of the cluster to be deleted.</p>
    #   @return [String]
    class DeleteClusterRequest < Struct.new(
      :cluster_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster
    #   <p>A description of the DAX cluster that is being deleted.</p>
    #   @return [Types::Cluster]
    class DeleteClusterResponse < Struct.new(
      :cluster,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute parameter_group_name
    #   <p>The name of the parameter group to delete.</p>
    #   @return [String]
    class DeleteParameterGroupRequest < Struct.new(
      :parameter_group_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute deletion_message
    #   <p>A user-specified message for this action (i.e., a reason for deleting the parameter
    #               group).</p>
    #   @return [String]
    class DeleteParameterGroupResponse < Struct.new(
      :deletion_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute subnet_group_name
    #   <p>The name of the subnet group to delete.</p>
    #   @return [String]
    class DeleteSubnetGroupRequest < Struct.new(
      :subnet_group_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute deletion_message
    #   <p>A user-specified message for this action (i.e., a reason for deleting the subnet
    #               group).</p>
    #   @return [String]
    class DeleteSubnetGroupResponse < Struct.new(
      :deletion_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster_names
    #   <p>The names of the DAX clusters being described.</p>
    #   @return [Array<String>]
    # @!attribute max_results
    #   <p>The maximum number of results to include in the response. If more results exist
    #               than the specified <code>MaxResults</code> value, a token is included in the response so
    #               that the remaining results can be retrieved.</p>
    #           <p>The value for <code>MaxResults</code> must be between 20 and 100.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>An optional token returned from a prior request. Use this token for pagination of
    #               results from this action. If this parameter is specified, the response includes only
    #               results beyond the token, up to the value specified by
    #               <code>MaxResults</code>.</p>
    #   @return [String]
    class DescribeClustersRequest < Struct.new(
      :cluster_names,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>Provides an identifier to allow retrieval of paginated results.</p>
    #   @return [String]
    # @!attribute clusters
    #   <p>The descriptions of your DAX clusters, in response to a
    #               <i>DescribeClusters</i> request.</p>
    #   @return [Array<Types::Cluster>]
    class DescribeClustersResponse < Struct.new(
      :next_token,
      :clusters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results to include in the response. If more results exist
    #               than the specified <code>MaxResults</code> value, a token is included in the response so
    #               that the remaining results can be retrieved.</p>
    #           <p>The value for <code>MaxResults</code> must be between 20 and 100.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>An optional token returned from a prior request. Use this token for pagination of
    #               results from this action. If this parameter is specified, the response includes only
    #               results beyond the token, up to the value specified by
    #               <code>MaxResults</code>.</p>
    #   @return [String]
    class DescribeDefaultParametersRequest < Struct.new(
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>Provides an identifier to allow retrieval of paginated results.</p>
    #   @return [String]
    # @!attribute parameters
    #   <p>A list of parameters.  Each element in the list represents one parameter.</p>
    #   @return [Array<Types::Parameter>]
    class DescribeDefaultParametersResponse < Struct.new(
      :next_token,
      :parameters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute source_name
    #   <p>The identifier of the event source for which events will be returned. If not
    #               specified, then all sources are included in the response.</p>
    #   @return [String]
    # @!attribute source_type
    #   <p>The event source to retrieve events for. If no value is specified, all events are
    #               returned.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>The beginning of the time interval to retrieve events for, specified in ISO 8601
    #               format.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The end of the time interval for which to retrieve events, specified in ISO 8601
    #               format.</p>
    #   @return [Time]
    # @!attribute duration
    #   <p>The number of minutes' worth of events to retrieve.</p>
    #   @return [Integer]
    # @!attribute max_results
    #   <p>The maximum number of results to include in the response. If more results exist
    #               than the specified <code>MaxResults</code> value, a token is included in the response so
    #               that the remaining results can be retrieved.</p>
    #           <p>The value for <code>MaxResults</code> must be between 20 and 100.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>An optional token returned from a prior request. Use this token for pagination of
    #               results from this action. If this parameter is specified, the response includes only
    #               results beyond the token, up to the value specified by
    #               <code>MaxResults</code>.</p>
    #   @return [String]
    class DescribeEventsRequest < Struct.new(
      :source_name,
      :source_type,
      :start_time,
      :end_time,
      :duration,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>Provides an identifier to allow retrieval of paginated results.</p>
    #   @return [String]
    # @!attribute events
    #   <p>An array of events.  Each element in the array represents one event.</p>
    #   @return [Array<Types::Event>]
    class DescribeEventsResponse < Struct.new(
      :next_token,
      :events,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute parameter_group_names
    #   <p>The names of the parameter groups.</p>
    #   @return [Array<String>]
    # @!attribute max_results
    #   <p>The maximum number of results to include in the response. If more results exist
    #               than the specified <code>MaxResults</code> value, a token is included in the response so
    #               that the remaining results can be retrieved.</p>
    #           <p>The value for <code>MaxResults</code> must be between 20 and 100.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>An optional token returned from a prior request. Use this token for pagination of
    #               results from this action. If this parameter is specified, the response includes only
    #               results beyond the token, up to the value specified by
    #               <code>MaxResults</code>.</p>
    #   @return [String]
    class DescribeParameterGroupsRequest < Struct.new(
      :parameter_group_names,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>Provides an identifier to allow retrieval of paginated results.</p>
    #   @return [String]
    # @!attribute parameter_groups
    #   <p>An array of parameter groups.  Each element in the array represents one parameter group.</p>
    #   @return [Array<Types::ParameterGroup>]
    class DescribeParameterGroupsResponse < Struct.new(
      :next_token,
      :parameter_groups,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute parameter_group_name
    #   <p>The name of the parameter group.</p>
    #   @return [String]
    # @!attribute source
    #   <p>How the parameter is defined. For example, <code>system</code> denotes a
    #               system-defined parameter.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to include in the response. If more results exist
    #               than the specified <code>MaxResults</code> value, a token is included in the response so
    #               that the remaining results can be retrieved.</p>
    #           <p>The value for <code>MaxResults</code> must be between 20 and 100.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>An optional token returned from a prior request. Use this token for pagination of
    #               results from this action. If this parameter is specified, the response includes only
    #               results beyond the token, up to the value specified by
    #               <code>MaxResults</code>.</p>
    #   @return [String]
    class DescribeParametersRequest < Struct.new(
      :parameter_group_name,
      :source,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>Provides an identifier to allow retrieval of paginated results.</p>
    #   @return [String]
    # @!attribute parameters
    #   <p>A list of parameters within a parameter group.  Each element in the list represents one parameter.</p>
    #   @return [Array<Types::Parameter>]
    class DescribeParametersResponse < Struct.new(
      :next_token,
      :parameters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute subnet_group_names
    #   <p>The name of the subnet group.</p>
    #   @return [Array<String>]
    # @!attribute max_results
    #   <p>The maximum number of results to include in the response. If more results exist
    #               than the specified <code>MaxResults</code> value, a token is included in the response so
    #               that the remaining results can be retrieved.</p>
    #               <p>The value for <code>MaxResults</code> must be between 20 and 100.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>An optional token returned from a prior request. Use this token for pagination of
    #               results from this action. If this parameter is specified, the response includes only
    #               results beyond the token, up to the value specified by
    #               <code>MaxResults</code>.</p>
    #   @return [String]
    class DescribeSubnetGroupsRequest < Struct.new(
      :subnet_group_names,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>Provides an identifier to allow retrieval of paginated results.</p>
    #   @return [String]
    # @!attribute subnet_groups
    #   <p>An array of subnet groups.  Each element in the array represents a single subnet group.</p>
    #   @return [Array<Types::SubnetGroup>]
    class DescribeSubnetGroupsResponse < Struct.new(
      :next_token,
      :subnet_groups,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the information required for client programs to connect to the
    #             endpoint for a DAX cluster.</p>
    # @!attribute address
    #   <p>The DNS hostname of the endpoint.</p>
    #   @return [String]
    # @!attribute port
    #   <p>The port number that applications should use to connect to the endpoint.</p>
    #   @return [Integer]
    # @!attribute url
    #   <p>The URL that applications should use to connect to the endpoint. The default
    #               ports are 8111 for the "dax" protocol and 9111 for the "daxs" protocol.</p>
    #   @return [String]
    class Endpoint < Struct.new(
      :address,
      :port,
      :url,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:port] = 0 unless options.key?(:port)
        super
      end
    end

    # <p>Represents a single occurrence of something interesting within the system. Some
    #             examples of events are creating a DAX cluster, adding or removing a node, or rebooting
    #             a node.</p>
    # @!attribute source_name
    #   <p>The source of the event. For example, if the event occurred at the node level, the
    #               source would be the node ID.</p>
    #   @return [String]
    # @!attribute source_type
    #   <p>Specifies the origin of this event - a cluster, a parameter group, a node ID,
    #               etc.</p>
    #   @return [String]
    # @!attribute message
    #   <p>A user-defined message associated with the event.</p>
    #   @return [String]
    # @!attribute date
    #   <p>The date and time when the event occurred.</p>
    #   @return [Time]
    class Event < Struct.new(
      :source_name,
      :source_type,
      :message,
      :date,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster_name
    #   <p>The name of the DAX cluster that will receive additional nodes.</p>
    #   @return [String]
    # @!attribute new_replication_factor
    #   <p>The new number of nodes for the DAX cluster.</p>
    #   @return [Integer]
    # @!attribute availability_zones
    #   <p>The Availability Zones (AZs) in which the cluster nodes will be created. All nodes
    #               belonging to the cluster are placed in these Availability Zones. Use this parameter if you want
    #               to distribute the nodes across multiple AZs.</p>
    #   @return [Array<String>]
    class IncreaseReplicationFactorRequest < Struct.new(
      :cluster_name,
      :new_replication_factor,
      :availability_zones,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster
    #   <p>A description of the DAX cluster. with its new replication factor.</p>
    #   @return [Types::Cluster]
    class IncreaseReplicationFactorResponse < Struct.new(
      :cluster,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>There are not enough system resources to create the cluster you requested (or to
    #             resize an already-existing cluster). </p>
    # @!attribute message
    #   @return [String]
    class InsufficientClusterCapacityFault < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The Amazon Resource Name (ARN) supplied in the request is not valid.</p>
    # @!attribute message
    #   @return [String]
    class InvalidARNFault < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The requested DAX cluster is not in the <i>available</i>
    #             state.</p>
    # @!attribute message
    #   @return [String]
    class InvalidClusterStateFault < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Two or more incompatible parameters were specified.</p>
    # @!attribute message
    #   @return [String]
    class InvalidParameterCombinationException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>One or more parameters in a parameter group are in an invalid state.</p>
    # @!attribute message
    #   @return [String]
    class InvalidParameterGroupStateFault < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The value for a parameter is invalid.</p>
    # @!attribute message
    #   @return [String]
    class InvalidParameterValueException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An invalid subnet identifier was specified.</p>
    # @!attribute message
    #   @return [String]
    class InvalidSubnet < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The VPC network is in an invalid state.</p>
    # @!attribute message
    #   @return [String]
    class InvalidVPCNetworkStateFault < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_name
    #   <p>The name of the DAX resource to which the tags belong.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>An optional token returned from a prior request. Use this token for pagination of
    #               results from this action. If this parameter is specified, the response includes only
    #               results beyond the token.</p>
    #   @return [String]
    class ListTagsRequest < Struct.new(
      :resource_name,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>A list of tags currently associated with the DAX cluster.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute next_token
    #   <p>If this value is present, there are additional results to be displayed.  To retrieve them, call 
    #               <code>ListTags</code> again, with <code>NextToken</code> set to this value.</p>
    #   @return [String]
    class ListTagsResponse < Struct.new(
      :tags,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents an individual node within a DAX cluster.</p>
    # @!attribute node_id
    #   <p>A system-generated identifier for the node.</p>
    #   @return [String]
    # @!attribute endpoint
    #   <p>The endpoint for the node, consisting of a DNS name and a port number. Client
    #               applications can connect directly to a node endpoint, if desired (as an alternative to
    #               allowing DAX client software to intelligently route requests and responses to nodes in
    #               the DAX cluster.</p>
    #   @return [Types::Endpoint]
    # @!attribute node_create_time
    #   <p>The date and time (in UNIX epoch format) when the node was launched.</p>
    #   @return [Time]
    # @!attribute availability_zone
    #   <p>The Availability Zone (AZ) in which the node has been deployed.</p>
    #   @return [String]
    # @!attribute node_status
    #   <p>The current status of the node. For example: <code>available</code>.</p>
    #   @return [String]
    # @!attribute parameter_group_status
    #   <p>The status of the parameter group associated with this node. For example,
    #                   <code>in-sync</code>.</p>
    #   @return [String]
    class Node < Struct.new(
      :node_id,
      :endpoint,
      :node_create_time,
      :availability_zone,
      :node_status,
      :parameter_group_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>None of the nodes in the cluster have the given node ID.</p>
    # @!attribute message
    #   @return [String]
    class NodeNotFoundFault < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>You have attempted to exceed the maximum number of nodes for a DAX
    #             cluster.</p>
    # @!attribute message
    #   @return [String]
    class NodeQuotaForClusterExceededFault < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>You have attempted to exceed the maximum number of nodes for your AWS
    #             account.</p>
    # @!attribute message
    #   @return [String]
    class NodeQuotaForCustomerExceededFault < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a parameter value that is applicable to a particular node
    #             type.</p>
    # @!attribute node_type
    #   <p>A node type to which the parameter value applies.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The parameter value for this node type.</p>
    #   @return [String]
    class NodeTypeSpecificValue < Struct.new(
      :node_type,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a notification topic and its status. Notification topics are used for
    #             publishing DAX events to subscribers using Amazon Simple Notification Service
    #             (SNS).</p>
    # @!attribute topic_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the topic. </p>
    #   @return [String]
    # @!attribute topic_status
    #   <p>The current state of the topic. A value of “active” means that notifications will
    #           be sent to the topic. A value of “inactive” means that notifications will not be sent to the
    #           topic.</p>
    #   @return [String]
    class NotificationConfiguration < Struct.new(
      :topic_arn,
      :topic_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an individual setting that controls some aspect of DAX
    #             behavior.</p>
    # @!attribute parameter_name
    #   <p>The name of the parameter.</p>
    #   @return [String]
    # @!attribute parameter_type
    #   <p>Determines whether the parameter can be applied to any nodes, or only nodes of a
    #               particular type.</p>
    #   @return [String]
    # @!attribute parameter_value
    #   <p>The value for the parameter.</p>
    #   @return [String]
    # @!attribute node_type_specific_values
    #   <p>A list of node types, and specific parameter values for each node.</p>
    #   @return [Array<Types::NodeTypeSpecificValue>]
    # @!attribute description
    #   <p>A description of the parameter</p>
    #   @return [String]
    # @!attribute source
    #   <p>How the parameter is defined. For example, <code>system</code> denotes a
    #               system-defined parameter.</p>
    #   @return [String]
    # @!attribute data_type
    #   <p>The data type of the parameter. For example, <code>integer</code>:</p>
    #   @return [String]
    # @!attribute allowed_values
    #   <p>A range of values within which the parameter can be set.</p>
    #   @return [String]
    # @!attribute is_modifiable
    #   <p>Whether the customer is allowed to modify the parameter.</p>
    #   @return [String]
    # @!attribute change_type
    #   <p>The conditions under which changes to this parameter can be applied. For example,
    #                   <code>requires-reboot</code> indicates that a new value for this parameter will only
    #               take effect if a node is rebooted.</p>
    #   @return [String]
    class Parameter < Struct.new(
      :parameter_name,
      :parameter_type,
      :parameter_value,
      :node_type_specific_values,
      :description,
      :source,
      :data_type,
      :allowed_values,
      :is_modifiable,
      :change_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A named set of parameters that are applied to all of the nodes in a DAX
    #             cluster.</p>
    # @!attribute parameter_group_name
    #   <p>The name of the parameter group.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the parameter group.</p>
    #   @return [String]
    class ParameterGroup < Struct.new(
      :parameter_group_name,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified parameter group already exists.</p>
    # @!attribute message
    #   @return [String]
    class ParameterGroupAlreadyExistsFault < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified parameter group does not exist.</p>
    # @!attribute message
    #   @return [String]
    class ParameterGroupNotFoundFault < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>You have attempted to exceed the maximum number of parameter groups.</p>
    # @!attribute message
    #   @return [String]
    class ParameterGroupQuotaExceededFault < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The status of a parameter group.</p>
    # @!attribute parameter_group_name
    #   <p>The name of the parameter group.</p>
    #   @return [String]
    # @!attribute parameter_apply_status
    #   <p>The status of parameter updates. </p>
    #   @return [String]
    # @!attribute node_ids_to_reboot
    #   <p>The node IDs of one or more nodes to be rebooted.</p>
    #   @return [Array<String>]
    class ParameterGroupStatus < Struct.new(
      :parameter_group_name,
      :parameter_apply_status,
      :node_ids_to_reboot,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An individual DAX parameter.</p>
    # @!attribute parameter_name
    #   <p>The name of the parameter.</p>
    #   @return [String]
    # @!attribute parameter_value
    #   <p>The value of the parameter.</p>
    #   @return [String]
    class ParameterNameValue < Struct.new(
      :parameter_name,
      :parameter_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster_name
    #   <p>The name of the DAX cluster containing the node to be rebooted.</p>
    #   @return [String]
    # @!attribute node_id
    #   <p>The system-assigned ID of the node to be rebooted.</p>
    #   @return [String]
    class RebootNodeRequest < Struct.new(
      :cluster_name,
      :node_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster
    #   <p>A description of the DAX cluster after a node has been rebooted.</p>
    #   @return [Types::Cluster]
    class RebootNodeResponse < Struct.new(
      :cluster,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The description of the server-side encryption status on the specified DAX cluster.</p>
    # @!attribute status
    #   <p>The current state of server-side encryption:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ENABLING</code> - Server-side encryption is being enabled.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ENABLED</code> - Server-side encryption is enabled.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DISABLING</code> - Server-side encryption is being disabled.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DISABLED</code> - Server-side encryption is disabled.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class SSEDescription < Struct.new(
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the settings used to enable server-side encryption.</p>
    # @!attribute enabled
    #   <p>Indicates whether server-side encryption is enabled (true) or disabled (false) on the cluster.</p>
    #   @return [Boolean]
    class SSESpecification < Struct.new(
      :enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An individual VPC security group and its status.</p>
    # @!attribute security_group_identifier
    #   <p>The unique ID for this security group.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of this security group.</p>
    #   @return [String]
    class SecurityGroupMembership < Struct.new(
      :security_group_identifier,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified service linked role (SLR) was not found.</p>
    # @!attribute message
    #   @return [String]
    class ServiceLinkedRoleNotFoundFault < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>You have reached the maximum number of x509 certificates that can be created for
    #             encrypted clusters in a 30 day period. Contact AWS customer support to discuss options
    #             for continuing to create encrypted clusters.</p>
    class ServiceQuotaExceededException < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the subnet associated with a DAX cluster. This parameter refers to
    #             subnets defined in Amazon Virtual Private Cloud (Amazon VPC) and used with
    #             DAX.</p>
    # @!attribute subnet_identifier
    #   <p>The system-assigned identifier for the subnet.</p>
    #   @return [String]
    # @!attribute subnet_availability_zone
    #   <p>The Availability Zone (AZ) for the subnet.</p>
    #   @return [String]
    class Subnet < Struct.new(
      :subnet_identifier,
      :subnet_availability_zone,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of one of the following actions:</p>
    #         <ul>
    #             <li>
    #                 <p>
    #                     <i>CreateSubnetGroup</i>
    #                 </p>
    #             </li>
    #             <li>
    #                 <p>
    #                     <i>ModifySubnetGroup</i>
    #                 </p>
    #             </li>
    #          </ul>
    # @!attribute subnet_group_name
    #   <p>The name of the subnet group.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the subnet group.</p>
    #   @return [String]
    # @!attribute vpc_id
    #   <p>The Amazon Virtual Private Cloud identifier (VPC ID) of the subnet group.</p>
    #   @return [String]
    # @!attribute subnets
    #   <p>A list of subnets associated with the subnet group. </p>
    #   @return [Array<Types::Subnet>]
    class SubnetGroup < Struct.new(
      :subnet_group_name,
      :description,
      :vpc_id,
      :subnets,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified subnet group already exists.</p>
    # @!attribute message
    #   @return [String]
    class SubnetGroupAlreadyExistsFault < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified subnet group is currently in use.</p>
    # @!attribute message
    #   @return [String]
    class SubnetGroupInUseFault < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The requested subnet group name does not refer to an existing subnet
    #             group.</p>
    # @!attribute message
    #   @return [String]
    class SubnetGroupNotFoundFault < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request cannot be processed because it would exceed the allowed number of
    #             subnets in a subnet group.</p>
    # @!attribute message
    #   @return [String]
    class SubnetGroupQuotaExceededFault < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The requested subnet is being used by another subnet group.</p>
    # @!attribute message
    #   @return [String]
    class SubnetInUse < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request cannot be processed because it would exceed the allowed number of
    #             subnets in a subnet group.</p>
    # @!attribute message
    #   @return [String]
    class SubnetQuotaExceededFault < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A description of a tag.  Every tag is a key-value pair. You can add up to 50 tags to a single
    #             DAX cluster.</p>
    #         <p>AWS-assigned tag names and values are automatically assigned the <code>aws:</code>
    #             prefix, which the user cannot assign. AWS-assigned tag names do not count towards the
    #             tag limit of 50. User-assigned tag names have the prefix <code>user:</code>.</p> 
    #         <p>You cannot backdate the application of a tag.</p>
    # @!attribute key
    #   <p>The key for the tag.  Tag keys are case sensitive. Every DAX cluster can only have
    #               one tag with the same key. If you try to add an existing tag (same key), the
    #               existing tag value will be updated to the new value.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value of the tag. Tag values are case-sensitive and can be null. </p>
    #   @return [String]
    class Tag < Struct.new(
      :key,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The tag does not exist.</p>
    # @!attribute message
    #   @return [String]
    class TagNotFoundFault < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>You have exceeded the maximum number of tags for this DAX cluster.</p>
    # @!attribute message
    #   @return [String]
    class TagQuotaPerResourceExceeded < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_name
    #   <p>The name of the DAX resource to which tags should be added.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags to be assigned to the DAX resource. </p>
    #   @return [Array<Types::Tag>]
    class TagResourceRequest < Struct.new(
      :resource_name,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>The list of tags that are associated with the DAX resource.</p>
    #   @return [Array<Types::Tag>]
    class TagResourceResponse < Struct.new(
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_name
    #   <p>The name of the DAX resource from which the tags should be removed.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>A list of tag keys. If the DAX cluster has any tags with these keys, then the tags are removed from the cluster.</p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      :resource_name,
      :tag_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>The tag keys that have been removed from the cluster.</p>
    #   @return [Array<Types::Tag>]
    class UntagResourceResponse < Struct.new(
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster_name
    #   <p>The name of the DAX cluster to be modified.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the changes being made to the cluster.</p>
    #   @return [String]
    # @!attribute preferred_maintenance_window
    #   <p>A range of time when maintenance of DAX cluster software will be performed. For
    #               example: <code>sun:01:00-sun:09:00</code>. Cluster maintenance normally takes less than
    #               30 minutes, and is performed automatically within the maintenance window.</p>
    #   @return [String]
    # @!attribute notification_topic_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the topic.</p>
    #   @return [String]
    # @!attribute notification_topic_status
    #   <p>The current state of the topic. A value of “active” means that notifications will
    #           be sent to the topic. A value of “inactive” means that notifications will not be sent to the
    #           topic.</p>
    #   @return [String]
    # @!attribute parameter_group_name
    #   <p>The name of a parameter group for this cluster.</p>
    #   @return [String]
    # @!attribute security_group_ids
    #   <p>A list of user-specified security group IDs to be assigned to each node in the DAX cluster.  If this parameter is not 
    #               specified, DAX assigns the default VPC security group to each node.</p>
    #   @return [Array<String>]
    class UpdateClusterRequest < Struct.new(
      :cluster_name,
      :description,
      :preferred_maintenance_window,
      :notification_topic_arn,
      :notification_topic_status,
      :parameter_group_name,
      :security_group_ids,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute cluster
    #   <p>A description of the DAX cluster, after it has been modified.</p>
    #   @return [Types::Cluster]
    class UpdateClusterResponse < Struct.new(
      :cluster,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute parameter_group_name
    #   <p>The name of the parameter group.</p>
    #   @return [String]
    # @!attribute parameter_name_values
    #   <p>An array of name-value pairs for the parameters in the group. Each element in the
    #               array represents a single parameter.</p>
    #               <note>
    #               <p>
    #                  <code>record-ttl-millis</code> and <code>query-ttl-millis</code> are the only supported parameter names. For more details, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/DAX.cluster-management.html#DAX.cluster-management.custom-settings.ttl">Configuring TTL Settings</a>.</p>
    #           </note>
    #   @return [Array<Types::ParameterNameValue>]
    class UpdateParameterGroupRequest < Struct.new(
      :parameter_group_name,
      :parameter_name_values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute parameter_group
    #   <p>The parameter group that has been modified.</p>
    #   @return [Types::ParameterGroup]
    class UpdateParameterGroupResponse < Struct.new(
      :parameter_group,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute subnet_group_name
    #   <p>The name of the subnet group.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the subnet group.</p>
    #   @return [String]
    # @!attribute subnet_ids
    #   <p>A list of subnet IDs in the subnet group.</p>
    #   @return [Array<String>]
    class UpdateSubnetGroupRequest < Struct.new(
      :subnet_group_name,
      :description,
      :subnet_ids,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute subnet_group
    #   <p>The subnet group that has been modified.</p>
    #   @return [Types::SubnetGroup]
    class UpdateSubnetGroupResponse < Struct.new(
      :subnet_group,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
