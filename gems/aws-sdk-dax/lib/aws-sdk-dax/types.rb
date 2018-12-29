# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::DAX
  module Types

    # Contains all of the attributes of a specific DAX cluster.
    #
    # @!attribute [rw] cluster_name
    #   The name of the DAX cluster.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the cluster.
    #   @return [String]
    #
    # @!attribute [rw] cluster_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies the cluster.
    #   @return [String]
    #
    # @!attribute [rw] total_nodes
    #   The total number of nodes in the cluster.
    #   @return [Integer]
    #
    # @!attribute [rw] active_nodes
    #   The number of nodes in the cluster that are active (i.e., capable of
    #   serving requests).
    #   @return [Integer]
    #
    # @!attribute [rw] node_type
    #   The node type for the nodes in the cluster. (All nodes in a DAX
    #   cluster are of the same type.)
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the cluster.
    #   @return [String]
    #
    # @!attribute [rw] cluster_discovery_endpoint
    #   The configuration endpoint for this DAX cluster, consisting of a DNS
    #   name and a port number. Client applications can specify this
    #   endpoint, rather than an individual node endpoint, and allow the DAX
    #   client software to intelligently route requests and responses to
    #   nodes in the DAX cluster.
    #   @return [Types::Endpoint]
    #
    # @!attribute [rw] node_ids_to_remove
    #   A list of nodes to be removed from the cluster.
    #   @return [Array<String>]
    #
    # @!attribute [rw] nodes
    #   A list of nodes that are currently in the cluster.
    #   @return [Array<Types::Node>]
    #
    # @!attribute [rw] preferred_maintenance_window
    #   A range of time when maintenance of DAX cluster software will be
    #   performed. For example: `sun:01:00-sun:09:00`. Cluster maintenance
    #   normally takes less than 30 minutes, and is performed automatically
    #   within the maintenance window.
    #   @return [String]
    #
    # @!attribute [rw] notification_configuration
    #   Describes a notification topic and its status. Notification topics
    #   are used for publishing DAX events to subscribers using Amazon
    #   Simple Notification Service (SNS).
    #   @return [Types::NotificationConfiguration]
    #
    # @!attribute [rw] subnet_group
    #   The subnet group where the DAX cluster is running.
    #   @return [String]
    #
    # @!attribute [rw] security_groups
    #   A list of security groups, and the status of each, for the nodes in
    #   the cluster.
    #   @return [Array<Types::SecurityGroupMembership>]
    #
    # @!attribute [rw] iam_role_arn
    #   A valid Amazon Resource Name (ARN) that identifies an IAM role. At
    #   runtime, DAX will assume this role and use the role's permissions
    #   to access DynamoDB on your behalf.
    #   @return [String]
    #
    # @!attribute [rw] parameter_group
    #   The parameter group being used by nodes in the cluster.
    #   @return [Types::ParameterGroupStatus]
    #
    # @!attribute [rw] sse_description
    #   The description of the server-side encryption status on the
    #   specified DAX cluster.
    #   @return [Types::SSEDescription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dax-2017-04-19/Cluster AWS API Documentation
    #
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
      :sse_description)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateClusterRequest
    #   data as a hash:
    #
    #       {
    #         cluster_name: "String", # required
    #         node_type: "String", # required
    #         description: "String",
    #         replication_factor: 1, # required
    #         availability_zones: ["String"],
    #         subnet_group_name: "String",
    #         security_group_ids: ["String"],
    #         preferred_maintenance_window: "String",
    #         notification_topic_arn: "String",
    #         iam_role_arn: "String", # required
    #         parameter_group_name: "String",
    #         tags: [
    #           {
    #             key: "String",
    #             value: "String",
    #           },
    #         ],
    #         sse_specification: {
    #           enabled: false, # required
    #         },
    #       }
    #
    # @!attribute [rw] cluster_name
    #   The cluster identifier. This parameter is stored as a lowercase
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
    # @!attribute [rw] node_type
    #   The compute and memory capacity of the nodes in the cluster.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the cluster.
    #   @return [String]
    #
    # @!attribute [rw] replication_factor
    #   The number of nodes in the DAX cluster. A replication factor of 1
    #   will create a single-node cluster, without any read replicas. For
    #   additional fault tolerance, you can create a multiple node cluster
    #   with one or more read replicas. To do this, set *ReplicationFactor*
    #   to 2 or more.
    #
    #   <note markdown="1"> AWS recommends that you have at least two read replicas per cluster.
    #
    #    </note>
    #   @return [Integer]
    #
    # @!attribute [rw] availability_zones
    #   The Availability Zones (AZs) in which the cluster nodes will be
    #   created. All nodes belonging to the cluster are placed in these
    #   Availability Zones. Use this parameter if you want to distribute the
    #   nodes across multiple AZs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] subnet_group_name
    #   The name of the subnet group to be used for the replication group.
    #
    #   DAX clusters can only run in an Amazon VPC environment. All of the
    #   subnets that you specify in a subnet group must exist in the same
    #   VPC.
    #   @return [String]
    #
    # @!attribute [rw] security_group_ids
    #   A list of security group IDs to be assigned to each node in the DAX
    #   cluster. (Each of the security group ID is system-generated.)
    #
    #   If this parameter is not specified, DAX assigns the default VPC
    #   security group to each node.
    #   @return [Array<String>]
    #
    # @!attribute [rw] preferred_maintenance_window
    #   Specifies the weekly time range during which maintenance on the DAX
    #   cluster is performed. It is specified as a range in the format
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
    #
    #   <note markdown="1"> If you don't specify a preferred maintenance window when you create
    #   or modify a cache cluster, DAX assigns a 60-minute maintenance
    #   window on a randomly selected day of the week.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] notification_topic_arn
    #   The Amazon Resource Name (ARN) of the Amazon SNS topic to which
    #   notifications will be sent.
    #
    #   <note markdown="1"> The Amazon SNS topic owner must be same as the DAX cluster owner.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] iam_role_arn
    #   A valid Amazon Resource Name (ARN) that identifies an IAM role. At
    #   runtime, DAX will assume this role and use the role's permissions
    #   to access DynamoDB on your behalf.
    #   @return [String]
    #
    # @!attribute [rw] parameter_group_name
    #   The parameter group to be associated with the DAX cluster.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A set of tags to associate with the DAX cluster.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] sse_specification
    #   Represents the settings used to enable server-side encryption on the
    #   cluster.
    #   @return [Types::SSESpecification]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dax-2017-04-19/CreateClusterRequest AWS API Documentation
    #
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
      :sse_specification)
      include Aws::Structure
    end

    # @!attribute [rw] cluster
    #   A description of the DAX cluster that you have created.
    #   @return [Types::Cluster]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dax-2017-04-19/CreateClusterResponse AWS API Documentation
    #
    class CreateClusterResponse < Struct.new(
      :cluster)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateParameterGroupRequest
    #   data as a hash:
    #
    #       {
    #         parameter_group_name: "String", # required
    #         description: "String",
    #       }
    #
    # @!attribute [rw] parameter_group_name
    #   The name of the parameter group to apply to all of the clusters in
    #   this replication group.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the parameter group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dax-2017-04-19/CreateParameterGroupRequest AWS API Documentation
    #
    class CreateParameterGroupRequest < Struct.new(
      :parameter_group_name,
      :description)
      include Aws::Structure
    end

    # @!attribute [rw] parameter_group
    #   Represents the output of a *CreateParameterGroup* action.
    #   @return [Types::ParameterGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dax-2017-04-19/CreateParameterGroupResponse AWS API Documentation
    #
    class CreateParameterGroupResponse < Struct.new(
      :parameter_group)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateSubnetGroupRequest
    #   data as a hash:
    #
    #       {
    #         subnet_group_name: "String", # required
    #         description: "String",
    #         subnet_ids: ["String"], # required
    #       }
    #
    # @!attribute [rw] subnet_group_name
    #   A name for the subnet group. This value is stored as a lowercase
    #   string.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description for the subnet group
    #   @return [String]
    #
    # @!attribute [rw] subnet_ids
    #   A list of VPC subnet IDs for the subnet group.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dax-2017-04-19/CreateSubnetGroupRequest AWS API Documentation
    #
    class CreateSubnetGroupRequest < Struct.new(
      :subnet_group_name,
      :description,
      :subnet_ids)
      include Aws::Structure
    end

    # @!attribute [rw] subnet_group
    #   Represents the output of a *CreateSubnetGroup* operation.
    #   @return [Types::SubnetGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dax-2017-04-19/CreateSubnetGroupResponse AWS API Documentation
    #
    class CreateSubnetGroupResponse < Struct.new(
      :subnet_group)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DecreaseReplicationFactorRequest
    #   data as a hash:
    #
    #       {
    #         cluster_name: "String", # required
    #         new_replication_factor: 1, # required
    #         availability_zones: ["String"],
    #         node_ids_to_remove: ["String"],
    #       }
    #
    # @!attribute [rw] cluster_name
    #   The name of the DAX cluster from which you want to remove nodes.
    #   @return [String]
    #
    # @!attribute [rw] new_replication_factor
    #   The new number of nodes for the DAX cluster.
    #   @return [Integer]
    #
    # @!attribute [rw] availability_zones
    #   The Availability Zone(s) from which to remove nodes.
    #   @return [Array<String>]
    #
    # @!attribute [rw] node_ids_to_remove
    #   The unique identifiers of the nodes to be removed from the cluster.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dax-2017-04-19/DecreaseReplicationFactorRequest AWS API Documentation
    #
    class DecreaseReplicationFactorRequest < Struct.new(
      :cluster_name,
      :new_replication_factor,
      :availability_zones,
      :node_ids_to_remove)
      include Aws::Structure
    end

    # @!attribute [rw] cluster
    #   A description of the DAX cluster, after you have decreased its
    #   replication factor.
    #   @return [Types::Cluster]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dax-2017-04-19/DecreaseReplicationFactorResponse AWS API Documentation
    #
    class DecreaseReplicationFactorResponse < Struct.new(
      :cluster)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteClusterRequest
    #   data as a hash:
    #
    #       {
    #         cluster_name: "String", # required
    #       }
    #
    # @!attribute [rw] cluster_name
    #   The name of the cluster to be deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dax-2017-04-19/DeleteClusterRequest AWS API Documentation
    #
    class DeleteClusterRequest < Struct.new(
      :cluster_name)
      include Aws::Structure
    end

    # @!attribute [rw] cluster
    #   A description of the DAX cluster that is being deleted.
    #   @return [Types::Cluster]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dax-2017-04-19/DeleteClusterResponse AWS API Documentation
    #
    class DeleteClusterResponse < Struct.new(
      :cluster)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteParameterGroupRequest
    #   data as a hash:
    #
    #       {
    #         parameter_group_name: "String", # required
    #       }
    #
    # @!attribute [rw] parameter_group_name
    #   The name of the parameter group to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dax-2017-04-19/DeleteParameterGroupRequest AWS API Documentation
    #
    class DeleteParameterGroupRequest < Struct.new(
      :parameter_group_name)
      include Aws::Structure
    end

    # @!attribute [rw] deletion_message
    #   A user-specified message for this action (i.e., a reason for
    #   deleting the parameter group).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dax-2017-04-19/DeleteParameterGroupResponse AWS API Documentation
    #
    class DeleteParameterGroupResponse < Struct.new(
      :deletion_message)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteSubnetGroupRequest
    #   data as a hash:
    #
    #       {
    #         subnet_group_name: "String", # required
    #       }
    #
    # @!attribute [rw] subnet_group_name
    #   The name of the subnet group to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dax-2017-04-19/DeleteSubnetGroupRequest AWS API Documentation
    #
    class DeleteSubnetGroupRequest < Struct.new(
      :subnet_group_name)
      include Aws::Structure
    end

    # @!attribute [rw] deletion_message
    #   A user-specified message for this action (i.e., a reason for
    #   deleting the subnet group).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dax-2017-04-19/DeleteSubnetGroupResponse AWS API Documentation
    #
    class DeleteSubnetGroupResponse < Struct.new(
      :deletion_message)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeClustersRequest
    #   data as a hash:
    #
    #       {
    #         cluster_names: ["String"],
    #         max_results: 1,
    #         next_token: "String",
    #       }
    #
    # @!attribute [rw] cluster_names
    #   The names of the DAX clusters being described.
    #   @return [Array<String>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to include in the response. If more
    #   results exist than the specified `MaxResults` value, a token is
    #   included in the response so that the remaining results can be
    #   retrieved.
    #
    #   The value for `MaxResults` must be between 20 and 100.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   An optional token returned from a prior request. Use this token for
    #   pagination of results from this action. If this parameter is
    #   specified, the response includes only results beyond the token, up
    #   to the value specified by `MaxResults`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dax-2017-04-19/DescribeClustersRequest AWS API Documentation
    #
    class DescribeClustersRequest < Struct.new(
      :cluster_names,
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   Provides an identifier to allow retrieval of paginated results.
    #   @return [String]
    #
    # @!attribute [rw] clusters
    #   The descriptions of your DAX clusters, in response to a
    #   *DescribeClusters* request.
    #   @return [Array<Types::Cluster>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dax-2017-04-19/DescribeClustersResponse AWS API Documentation
    #
    class DescribeClustersResponse < Struct.new(
      :next_token,
      :clusters)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeDefaultParametersRequest
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "String",
    #       }
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to include in the response. If more
    #   results exist than the specified `MaxResults` value, a token is
    #   included in the response so that the remaining results can be
    #   retrieved.
    #
    #   The value for `MaxResults` must be between 20 and 100.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   An optional token returned from a prior request. Use this token for
    #   pagination of results from this action. If this parameter is
    #   specified, the response includes only results beyond the token, up
    #   to the value specified by `MaxResults`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dax-2017-04-19/DescribeDefaultParametersRequest AWS API Documentation
    #
    class DescribeDefaultParametersRequest < Struct.new(
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   Provides an identifier to allow retrieval of paginated results.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   A list of parameters. Each element in the list represents one
    #   parameter.
    #   @return [Array<Types::Parameter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dax-2017-04-19/DescribeDefaultParametersResponse AWS API Documentation
    #
    class DescribeDefaultParametersResponse < Struct.new(
      :next_token,
      :parameters)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeEventsRequest
    #   data as a hash:
    #
    #       {
    #         source_name: "String",
    #         source_type: "CLUSTER", # accepts CLUSTER, PARAMETER_GROUP, SUBNET_GROUP
    #         start_time: Time.now,
    #         end_time: Time.now,
    #         duration: 1,
    #         max_results: 1,
    #         next_token: "String",
    #       }
    #
    # @!attribute [rw] source_name
    #   The identifier of the event source for which events will be
    #   returned. If not specified, then all sources are included in the
    #   response.
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
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The end of the time interval for which to retrieve events, specified
    #   in ISO 8601 format.
    #   @return [Time]
    #
    # @!attribute [rw] duration
    #   The number of minutes' worth of events to retrieve.
    #   @return [Integer]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to include in the response. If more
    #   results exist than the specified `MaxResults` value, a token is
    #   included in the response so that the remaining results can be
    #   retrieved.
    #
    #   The value for `MaxResults` must be between 20 and 100.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   An optional token returned from a prior request. Use this token for
    #   pagination of results from this action. If this parameter is
    #   specified, the response includes only results beyond the token, up
    #   to the value specified by `MaxResults`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dax-2017-04-19/DescribeEventsRequest AWS API Documentation
    #
    class DescribeEventsRequest < Struct.new(
      :source_name,
      :source_type,
      :start_time,
      :end_time,
      :duration,
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   Provides an identifier to allow retrieval of paginated results.
    #   @return [String]
    #
    # @!attribute [rw] events
    #   An array of events. Each element in the array represents one event.
    #   @return [Array<Types::Event>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dax-2017-04-19/DescribeEventsResponse AWS API Documentation
    #
    class DescribeEventsResponse < Struct.new(
      :next_token,
      :events)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeParameterGroupsRequest
    #   data as a hash:
    #
    #       {
    #         parameter_group_names: ["String"],
    #         max_results: 1,
    #         next_token: "String",
    #       }
    #
    # @!attribute [rw] parameter_group_names
    #   The names of the parameter groups.
    #   @return [Array<String>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to include in the response. If more
    #   results exist than the specified `MaxResults` value, a token is
    #   included in the response so that the remaining results can be
    #   retrieved.
    #
    #   The value for `MaxResults` must be between 20 and 100.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   An optional token returned from a prior request. Use this token for
    #   pagination of results from this action. If this parameter is
    #   specified, the response includes only results beyond the token, up
    #   to the value specified by `MaxResults`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dax-2017-04-19/DescribeParameterGroupsRequest AWS API Documentation
    #
    class DescribeParameterGroupsRequest < Struct.new(
      :parameter_group_names,
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   Provides an identifier to allow retrieval of paginated results.
    #   @return [String]
    #
    # @!attribute [rw] parameter_groups
    #   An array of parameter groups. Each element in the array represents
    #   one parameter group.
    #   @return [Array<Types::ParameterGroup>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dax-2017-04-19/DescribeParameterGroupsResponse AWS API Documentation
    #
    class DescribeParameterGroupsResponse < Struct.new(
      :next_token,
      :parameter_groups)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeParametersRequest
    #   data as a hash:
    #
    #       {
    #         parameter_group_name: "String", # required
    #         source: "String",
    #         max_results: 1,
    #         next_token: "String",
    #       }
    #
    # @!attribute [rw] parameter_group_name
    #   The name of the parameter group.
    #   @return [String]
    #
    # @!attribute [rw] source
    #   How the parameter is defined. For example, `system` denotes a
    #   system-defined parameter.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to include in the response. If more
    #   results exist than the specified `MaxResults` value, a token is
    #   included in the response so that the remaining results can be
    #   retrieved.
    #
    #   The value for `MaxResults` must be between 20 and 100.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   An optional token returned from a prior request. Use this token for
    #   pagination of results from this action. If this parameter is
    #   specified, the response includes only results beyond the token, up
    #   to the value specified by `MaxResults`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dax-2017-04-19/DescribeParametersRequest AWS API Documentation
    #
    class DescribeParametersRequest < Struct.new(
      :parameter_group_name,
      :source,
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   Provides an identifier to allow retrieval of paginated results.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   A list of parameters within a parameter group. Each element in the
    #   list represents one parameter.
    #   @return [Array<Types::Parameter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dax-2017-04-19/DescribeParametersResponse AWS API Documentation
    #
    class DescribeParametersResponse < Struct.new(
      :next_token,
      :parameters)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeSubnetGroupsRequest
    #   data as a hash:
    #
    #       {
    #         subnet_group_names: ["String"],
    #         max_results: 1,
    #         next_token: "String",
    #       }
    #
    # @!attribute [rw] subnet_group_names
    #   The name of the subnet group.
    #   @return [Array<String>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to include in the response. If more
    #   results exist than the specified `MaxResults` value, a token is
    #   included in the response so that the remaining results can be
    #   retrieved.
    #
    #   The value for `MaxResults` must be between 20 and 100.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   An optional token returned from a prior request. Use this token for
    #   pagination of results from this action. If this parameter is
    #   specified, the response includes only results beyond the token, up
    #   to the value specified by `MaxResults`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dax-2017-04-19/DescribeSubnetGroupsRequest AWS API Documentation
    #
    class DescribeSubnetGroupsRequest < Struct.new(
      :subnet_group_names,
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   Provides an identifier to allow retrieval of paginated results.
    #   @return [String]
    #
    # @!attribute [rw] subnet_groups
    #   An array of subnet groups. Each element in the array represents a
    #   single subnet group.
    #   @return [Array<Types::SubnetGroup>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dax-2017-04-19/DescribeSubnetGroupsResponse AWS API Documentation
    #
    class DescribeSubnetGroupsResponse < Struct.new(
      :next_token,
      :subnet_groups)
      include Aws::Structure
    end

    # Represents the information required for client programs to connect to
    # the configuration endpoint for a DAX cluster, or to an individual node
    # within the cluster.
    #
    # @!attribute [rw] address
    #   The DNS hostname of the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The port number that applications should use to connect to the
    #   endpoint.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dax-2017-04-19/Endpoint AWS API Documentation
    #
    class Endpoint < Struct.new(
      :address,
      :port)
      include Aws::Structure
    end

    # Represents a single occurrence of something interesting within the
    # system. Some examples of events are creating a DAX cluster, adding or
    # removing a node, or rebooting a node.
    #
    # @!attribute [rw] source_name
    #   The source of the event. For example, if the event occurred at the
    #   node level, the source would be the node ID.
    #   @return [String]
    #
    # @!attribute [rw] source_type
    #   Specifies the origin of this event - a cluster, a parameter group, a
    #   node ID, etc.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   A user-defined message associated with the event.
    #   @return [String]
    #
    # @!attribute [rw] date
    #   The date and time when the event occurred.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dax-2017-04-19/Event AWS API Documentation
    #
    class Event < Struct.new(
      :source_name,
      :source_type,
      :message,
      :date)
      include Aws::Structure
    end

    # @note When making an API call, you may pass IncreaseReplicationFactorRequest
    #   data as a hash:
    #
    #       {
    #         cluster_name: "String", # required
    #         new_replication_factor: 1, # required
    #         availability_zones: ["String"],
    #       }
    #
    # @!attribute [rw] cluster_name
    #   The name of the DAX cluster that will receive additional nodes.
    #   @return [String]
    #
    # @!attribute [rw] new_replication_factor
    #   The new number of nodes for the DAX cluster.
    #   @return [Integer]
    #
    # @!attribute [rw] availability_zones
    #   The Availability Zones (AZs) in which the cluster nodes will be
    #   created. All nodes belonging to the cluster are placed in these
    #   Availability Zones. Use this parameter if you want to distribute the
    #   nodes across multiple AZs.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dax-2017-04-19/IncreaseReplicationFactorRequest AWS API Documentation
    #
    class IncreaseReplicationFactorRequest < Struct.new(
      :cluster_name,
      :new_replication_factor,
      :availability_zones)
      include Aws::Structure
    end

    # @!attribute [rw] cluster
    #   A description of the DAX cluster. with its new replication factor.
    #   @return [Types::Cluster]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dax-2017-04-19/IncreaseReplicationFactorResponse AWS API Documentation
    #
    class IncreaseReplicationFactorResponse < Struct.new(
      :cluster)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListTagsRequest
    #   data as a hash:
    #
    #       {
    #         resource_name: "String", # required
    #         next_token: "String",
    #       }
    #
    # @!attribute [rw] resource_name
    #   The name of the DAX resource to which the tags belong.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   An optional token returned from a prior request. Use this token for
    #   pagination of results from this action. If this parameter is
    #   specified, the response includes only results beyond the token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dax-2017-04-19/ListTagsRequest AWS API Documentation
    #
    class ListTagsRequest < Struct.new(
      :resource_name,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   A list of tags currently associated with the DAX cluster.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] next_token
    #   If this value is present, there are additional results to be
    #   displayed. To retrieve them, call `ListTags` again, with `NextToken`
    #   set to this value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dax-2017-04-19/ListTagsResponse AWS API Documentation
    #
    class ListTagsResponse < Struct.new(
      :tags,
      :next_token)
      include Aws::Structure
    end

    # Represents an individual node within a DAX cluster.
    #
    # @!attribute [rw] node_id
    #   A system-generated identifier for the node.
    #   @return [String]
    #
    # @!attribute [rw] endpoint
    #   The endpoint for the node, consisting of a DNS name and a port
    #   number. Client applications can connect directly to a node endpoint,
    #   if desired (as an alternative to allowing DAX client software to
    #   intelligently route requests and responses to nodes in the DAX
    #   cluster.
    #   @return [Types::Endpoint]
    #
    # @!attribute [rw] node_create_time
    #   The date and time (in UNIX epoch format) when the node was launched.
    #   @return [Time]
    #
    # @!attribute [rw] availability_zone
    #   The Availability Zone (AZ) in which the node has been deployed.
    #   @return [String]
    #
    # @!attribute [rw] node_status
    #   The current status of the node. For example: `available`.
    #   @return [String]
    #
    # @!attribute [rw] parameter_group_status
    #   The status of the parameter group associated with this node. For
    #   example, `in-sync`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dax-2017-04-19/Node AWS API Documentation
    #
    class Node < Struct.new(
      :node_id,
      :endpoint,
      :node_create_time,
      :availability_zone,
      :node_status,
      :parameter_group_status)
      include Aws::Structure
    end

    # Represents a parameter value that is applicable to a particular node
    # type.
    #
    # @!attribute [rw] node_type
    #   A node type to which the parameter value applies.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The parameter value for this node type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dax-2017-04-19/NodeTypeSpecificValue AWS API Documentation
    #
    class NodeTypeSpecificValue < Struct.new(
      :node_type,
      :value)
      include Aws::Structure
    end

    # Describes a notification topic and its status. Notification topics are
    # used for publishing DAX events to subscribers using Amazon Simple
    # Notification Service (SNS).
    #
    # @!attribute [rw] topic_arn
    #   The Amazon Resource Name (ARN) that identifies the topic.
    #   @return [String]
    #
    # @!attribute [rw] topic_status
    #   The current state of the topic.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dax-2017-04-19/NotificationConfiguration AWS API Documentation
    #
    class NotificationConfiguration < Struct.new(
      :topic_arn,
      :topic_status)
      include Aws::Structure
    end

    # Describes an individual setting that controls some aspect of DAX
    # behavior.
    #
    # @!attribute [rw] parameter_name
    #   The name of the parameter.
    #   @return [String]
    #
    # @!attribute [rw] parameter_type
    #   Determines whether the parameter can be applied to any nodes, or
    #   only nodes of a particular type.
    #   @return [String]
    #
    # @!attribute [rw] parameter_value
    #   The value for the parameter.
    #   @return [String]
    #
    # @!attribute [rw] node_type_specific_values
    #   A list of node types, and specific parameter values for each node.
    #   @return [Array<Types::NodeTypeSpecificValue>]
    #
    # @!attribute [rw] description
    #   A description of the parameter
    #   @return [String]
    #
    # @!attribute [rw] source
    #   How the parameter is defined. For example, `system` denotes a
    #   system-defined parameter.
    #   @return [String]
    #
    # @!attribute [rw] data_type
    #   The data type of the parameter. For example, `integer`\:
    #   @return [String]
    #
    # @!attribute [rw] allowed_values
    #   A range of values within which the parameter can be set.
    #   @return [String]
    #
    # @!attribute [rw] is_modifiable
    #   Whether the customer is allowed to modify the parameter.
    #   @return [String]
    #
    # @!attribute [rw] change_type
    #   The conditions under which changes to this parameter can be applied.
    #   For example, `requires-reboot` indicates that a new value for this
    #   parameter will only take effect if a node is rebooted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dax-2017-04-19/Parameter AWS API Documentation
    #
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
      :change_type)
      include Aws::Structure
    end

    # A named set of parameters that are applied to all of the nodes in a
    # DAX cluster.
    #
    # @!attribute [rw] parameter_group_name
    #   The name of the parameter group.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the parameter group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dax-2017-04-19/ParameterGroup AWS API Documentation
    #
    class ParameterGroup < Struct.new(
      :parameter_group_name,
      :description)
      include Aws::Structure
    end

    # The status of a parameter group.
    #
    # @!attribute [rw] parameter_group_name
    #   The name of the parameter group.
    #   @return [String]
    #
    # @!attribute [rw] parameter_apply_status
    #   The status of parameter updates.
    #   @return [String]
    #
    # @!attribute [rw] node_ids_to_reboot
    #   The node IDs of one or more nodes to be rebooted.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dax-2017-04-19/ParameterGroupStatus AWS API Documentation
    #
    class ParameterGroupStatus < Struct.new(
      :parameter_group_name,
      :parameter_apply_status,
      :node_ids_to_reboot)
      include Aws::Structure
    end

    # An individual DAX parameter.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/dax-2017-04-19/ParameterNameValue AWS API Documentation
    #
    class ParameterNameValue < Struct.new(
      :parameter_name,
      :parameter_value)
      include Aws::Structure
    end

    # @note When making an API call, you may pass RebootNodeRequest
    #   data as a hash:
    #
    #       {
    #         cluster_name: "String", # required
    #         node_id: "String", # required
    #       }
    #
    # @!attribute [rw] cluster_name
    #   The name of the DAX cluster containing the node to be rebooted.
    #   @return [String]
    #
    # @!attribute [rw] node_id
    #   The system-assigned ID of the node to be rebooted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dax-2017-04-19/RebootNodeRequest AWS API Documentation
    #
    class RebootNodeRequest < Struct.new(
      :cluster_name,
      :node_id)
      include Aws::Structure
    end

    # @!attribute [rw] cluster
    #   A description of the DAX cluster after a node has been rebooted.
    #   @return [Types::Cluster]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dax-2017-04-19/RebootNodeResponse AWS API Documentation
    #
    class RebootNodeResponse < Struct.new(
      :cluster)
      include Aws::Structure
    end

    # The description of the server-side encryption status on the specified
    # DAX cluster.
    #
    # @!attribute [rw] status
    #   The current state of server-side encryption:
    #
    #   * `ENABLING` - Server-side encryption is being enabled.
    #
    #   * `ENABLED` - Server-side encryption is enabled.
    #
    #   * `DISABLING` - Server-side encryption is being disabled.
    #
    #   * `DISABLED` - Server-side encryption is disabled.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dax-2017-04-19/SSEDescription AWS API Documentation
    #
    class SSEDescription < Struct.new(
      :status)
      include Aws::Structure
    end

    # Represents the settings used to enable server-side encryption.
    #
    # @note When making an API call, you may pass SSESpecification
    #   data as a hash:
    #
    #       {
    #         enabled: false, # required
    #       }
    #
    # @!attribute [rw] enabled
    #   Indicates whether server-side encryption is enabled (true) or
    #   disabled (false) on the cluster.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dax-2017-04-19/SSESpecification AWS API Documentation
    #
    class SSESpecification < Struct.new(
      :enabled)
      include Aws::Structure
    end

    # An individual VPC security group and its status.
    #
    # @!attribute [rw] security_group_identifier
    #   The unique ID for this security group.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of this security group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dax-2017-04-19/SecurityGroupMembership AWS API Documentation
    #
    class SecurityGroupMembership < Struct.new(
      :security_group_identifier,
      :status)
      include Aws::Structure
    end

    # Represents the subnet associated with a DAX cluster. This parameter
    # refers to subnets defined in Amazon Virtual Private Cloud (Amazon VPC)
    # and used with DAX.
    #
    # @!attribute [rw] subnet_identifier
    #   The system-assigned identifier for the subnet.
    #   @return [String]
    #
    # @!attribute [rw] subnet_availability_zone
    #   The Availability Zone (AZ) for subnet subnet.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dax-2017-04-19/Subnet AWS API Documentation
    #
    class Subnet < Struct.new(
      :subnet_identifier,
      :subnet_availability_zone)
      include Aws::Structure
    end

    # Represents the output of one of the following actions:
    #
    # * *CreateSubnetGroup*
    #
    # * *ModifySubnetGroup*
    #
    # @!attribute [rw] subnet_group_name
    #   The name of the subnet group.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the subnet group.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/dax-2017-04-19/SubnetGroup AWS API Documentation
    #
    class SubnetGroup < Struct.new(
      :subnet_group_name,
      :description,
      :vpc_id,
      :subnets)
      include Aws::Structure
    end

    # A description of a tag. Every tag is a key-value pair. You can add up
    # to 50 tags to a single DAX cluster.
    #
    # AWS-assigned tag names and values are automatically assigned the
    # `aws:` prefix, which the user cannot assign. AWS-assigned tag names do
    # not count towards the tag limit of 50. User-assigned tag names have
    # the prefix `user:`.
    #
    # You cannot backdate the application of a tag.
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
    #   The key for the tag. Tag keys are case sensitive. Every DAX cluster
    #   can only have one tag with the same key. If you try to add an
    #   existing tag (same key), the existing tag value will be updated to
    #   the new value.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the tag. Tag values are case-sensitive and can be null.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dax-2017-04-19/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      include Aws::Structure
    end

    # @note When making an API call, you may pass TagResourceRequest
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
    #   The name of the DAX resource to which tags should be added.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to be assigned to the DAX resource.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dax-2017-04-19/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_name,
      :tags)
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The list of tags that are associated with the DAX resource.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dax-2017-04-19/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Struct.new(
      :tags)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UntagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_name: "String", # required
    #         tag_keys: ["String"], # required
    #       }
    #
    # @!attribute [rw] resource_name
    #   The name of the DAX resource from which the tags should be removed.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   A list of tag keys. If the DAX cluster has any tags with these keys,
    #   then the tags are removed from the cluster.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dax-2017-04-19/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_name,
      :tag_keys)
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The tag keys that have been removed from the cluster.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dax-2017-04-19/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Struct.new(
      :tags)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateClusterRequest
    #   data as a hash:
    #
    #       {
    #         cluster_name: "String", # required
    #         description: "String",
    #         preferred_maintenance_window: "String",
    #         notification_topic_arn: "String",
    #         notification_topic_status: "String",
    #         parameter_group_name: "String",
    #         security_group_ids: ["String"],
    #       }
    #
    # @!attribute [rw] cluster_name
    #   The name of the DAX cluster to be modified.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the changes being made to the cluster.
    #   @return [String]
    #
    # @!attribute [rw] preferred_maintenance_window
    #   A range of time when maintenance of DAX cluster software will be
    #   performed. For example: `sun:01:00-sun:09:00`. Cluster maintenance
    #   normally takes less than 30 minutes, and is performed automatically
    #   within the maintenance window.
    #   @return [String]
    #
    # @!attribute [rw] notification_topic_arn
    #   The Amazon Resource Name (ARN) that identifies the topic.
    #   @return [String]
    #
    # @!attribute [rw] notification_topic_status
    #   The current state of the topic.
    #   @return [String]
    #
    # @!attribute [rw] parameter_group_name
    #   The name of a parameter group for this cluster.
    #   @return [String]
    #
    # @!attribute [rw] security_group_ids
    #   A list of user-specified security group IDs to be assigned to each
    #   node in the DAX cluster. If this parameter is not specified, DAX
    #   assigns the default VPC security group to each node.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dax-2017-04-19/UpdateClusterRequest AWS API Documentation
    #
    class UpdateClusterRequest < Struct.new(
      :cluster_name,
      :description,
      :preferred_maintenance_window,
      :notification_topic_arn,
      :notification_topic_status,
      :parameter_group_name,
      :security_group_ids)
      include Aws::Structure
    end

    # @!attribute [rw] cluster
    #   A description of the DAX cluster, after it has been modified.
    #   @return [Types::Cluster]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dax-2017-04-19/UpdateClusterResponse AWS API Documentation
    #
    class UpdateClusterResponse < Struct.new(
      :cluster)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateParameterGroupRequest
    #   data as a hash:
    #
    #       {
    #         parameter_group_name: "String", # required
    #         parameter_name_values: [ # required
    #           {
    #             parameter_name: "String",
    #             parameter_value: "String",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] parameter_group_name
    #   The name of the parameter group.
    #   @return [String]
    #
    # @!attribute [rw] parameter_name_values
    #   An array of name-value pairs for the parameters in the group. Each
    #   element in the array represents a single parameter.
    #   @return [Array<Types::ParameterNameValue>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dax-2017-04-19/UpdateParameterGroupRequest AWS API Documentation
    #
    class UpdateParameterGroupRequest < Struct.new(
      :parameter_group_name,
      :parameter_name_values)
      include Aws::Structure
    end

    # @!attribute [rw] parameter_group
    #   The parameter group that has been modified.
    #   @return [Types::ParameterGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dax-2017-04-19/UpdateParameterGroupResponse AWS API Documentation
    #
    class UpdateParameterGroupResponse < Struct.new(
      :parameter_group)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateSubnetGroupRequest
    #   data as a hash:
    #
    #       {
    #         subnet_group_name: "String", # required
    #         description: "String",
    #         subnet_ids: ["String"],
    #       }
    #
    # @!attribute [rw] subnet_group_name
    #   The name of the subnet group.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the subnet group.
    #   @return [String]
    #
    # @!attribute [rw] subnet_ids
    #   A list of subnet IDs in the subnet group.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dax-2017-04-19/UpdateSubnetGroupRequest AWS API Documentation
    #
    class UpdateSubnetGroupRequest < Struct.new(
      :subnet_group_name,
      :description,
      :subnet_ids)
      include Aws::Structure
    end

    # @!attribute [rw] subnet_group
    #   The subnet group that has been modified.
    #   @return [Types::SubnetGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dax-2017-04-19/UpdateSubnetGroupResponse AWS API Documentation
    #
    class UpdateSubnetGroupResponse < Struct.new(
      :subnet_group)
      include Aws::Structure
    end

  end
end
