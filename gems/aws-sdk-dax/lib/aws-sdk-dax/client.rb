# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'seahorse/client/plugins/content_length.rb'
require 'aws-sdk-core/plugins/credentials_configuration.rb'
require 'aws-sdk-core/plugins/logging.rb'
require 'aws-sdk-core/plugins/param_converter.rb'
require 'aws-sdk-core/plugins/param_validator.rb'
require 'aws-sdk-core/plugins/user_agent.rb'
require 'aws-sdk-core/plugins/helpful_socket_errors.rb'
require 'aws-sdk-core/plugins/retry_errors.rb'
require 'aws-sdk-core/plugins/global_configuration.rb'
require 'aws-sdk-core/plugins/regional_endpoint.rb'
require 'aws-sdk-core/plugins/response_paging.rb'
require 'aws-sdk-core/plugins/stub_responses.rb'
require 'aws-sdk-core/plugins/idempotency_token.rb'
require 'aws-sdk-core/plugins/jsonvalue_converter.rb'
require 'aws-sdk-core/plugins/client_metrics_plugin.rb'
require 'aws-sdk-core/plugins/client_metrics_send_plugin.rb'
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/json_rpc.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:dax)

module Aws::DAX
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :dax

    set_api(ClientApi::API)

    add_plugin(Seahorse::Client::Plugins::ContentLength)
    add_plugin(Aws::Plugins::CredentialsConfiguration)
    add_plugin(Aws::Plugins::Logging)
    add_plugin(Aws::Plugins::ParamConverter)
    add_plugin(Aws::Plugins::ParamValidator)
    add_plugin(Aws::Plugins::UserAgent)
    add_plugin(Aws::Plugins::HelpfulSocketErrors)
    add_plugin(Aws::Plugins::RetryErrors)
    add_plugin(Aws::Plugins::GlobalConfiguration)
    add_plugin(Aws::Plugins::RegionalEndpoint)
    add_plugin(Aws::Plugins::ResponsePaging)
    add_plugin(Aws::Plugins::StubResponses)
    add_plugin(Aws::Plugins::IdempotencyToken)
    add_plugin(Aws::Plugins::JsonvalueConverter)
    add_plugin(Aws::Plugins::ClientMetricsPlugin)
    add_plugin(Aws::Plugins::ClientMetricsSendPlugin)
    add_plugin(Aws::Plugins::SignatureV4)
    add_plugin(Aws::Plugins::Protocols::JsonRpc)

    # @option options [required, Aws::CredentialProvider] :credentials
    #   Your AWS credentials. This can be an instance of any one of the
    #   following classes:
    #
    #   * `Aws::Credentials` - Used for configuring static, non-refreshing
    #     credentials.
    #
    #   * `Aws::InstanceProfileCredentials` - Used for loading credentials
    #     from an EC2 IMDS on an EC2 instance.
    #
    #   * `Aws::SharedCredentials` - Used for loading credentials from a
    #     shared file, such as `~/.aws/config`.
    #
    #   * `Aws::AssumeRoleCredentials` - Used when you need to assume a role.
    #
    #   When `:credentials` are not configured directly, the following
    #   locations will be searched for credentials:
    #
    #   * `Aws.config[:credentials]`
    #   * The `:access_key_id`, `:secret_access_key`, and `:session_token` options.
    #   * ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY']
    #   * `~/.aws/credentials`
    #   * `~/.aws/config`
    #   * EC2 IMDS instance profile - When used by default, the timeouts are
    #     very aggressive. Construct and pass an instance of
    #     `Aws::InstanceProfileCredentails` to enable retries and extended
    #     timeouts.
    #
    # @option options [required, String] :region
    #   The AWS region to connect to.  The configured `:region` is
    #   used to determine the service `:endpoint`. When not passed,
    #   a default `:region` is search for in the following locations:
    #
    #   * `Aws.config[:region]`
    #   * `ENV['AWS_REGION']`
    #   * `ENV['AMAZON_REGION']`
    #   * `ENV['AWS_DEFAULT_REGION']`
    #   * `~/.aws/credentials`
    #   * `~/.aws/config`
    #
    # @option options [String] :access_key_id
    #
    # @option options [] :client_side_monitoring (false)
    #   When `true`, client-side metrics will be collected for all API requests from
    #   this client.
    #
    # @option options [] :client_side_monitoring_client_id ("")
    #   Allows you to provide an identifier for this client which will be attached to
    #   all generated client side metrics. Defaults to an empty string.
    #
    # @option options [] :client_side_monitoring_port (31000)
    #   Required for publishing client metrics. The port that the client side monitoring
    #   agent is running on, where client metrics will be published via UDP.
    #
    # @option options [] :client_side_monitoring_publisher (Aws::ClientSideMonitoring::Publisher)
    #   Allows you to provide a custom client-side monitoring publisher class. By default,
    #   will use the Client Side Monitoring Agent Publisher.
    #
    # @option options [Boolean] :convert_params (true)
    #   When `true`, an attempt is made to coerce request parameters into
    #   the required types.
    #
    # @option options [String] :endpoint
    #   The client endpoint is normally constructed from the `:region`
    #   option. You should only configure an `:endpoint` when connecting
    #   to test endpoints. This should be avalid HTTP(S) URI.
    #
    # @option options [Aws::Log::Formatter] :log_formatter (Aws::Log::Formatter.default)
    #   The log formatter.
    #
    # @option options [Symbol] :log_level (:info)
    #   The log level to send messages to the `:logger` at.
    #
    # @option options [Logger] :logger
    #   The Logger instance to send log messages to.  If this option
    #   is not set, logging will be disabled.
    #
    # @option options [String] :profile ("default")
    #   Used when loading credentials from the shared credentials file
    #   at HOME/.aws/credentials.  When not specified, 'default' is used.
    #
    # @option options [Float] :retry_base_delay (0.3)
    #   The base delay in seconds used by the default backoff function.
    #
    # @option options [Symbol] :retry_jitter (:none)
    #   A delay randomiser function used by the default backoff function. Some predefined functions can be referenced by name - :none, :equal, :full, otherwise a Proc that takes and returns a number.
    #
    #   @see https://www.awsarchitectureblog.com/2015/03/backoff.html
    #
    # @option options [Integer] :retry_limit (3)
    #   The maximum number of times to retry failed requests.  Only
    #   ~ 500 level server errors and certain ~ 400 level client errors
    #   are retried.  Generally, these are throttling errors, data
    #   checksum errors, networking errors, timeout errors and auth
    #   errors from expired credentials.
    #
    # @option options [Integer] :retry_max_delay (0)
    #   The maximum number of seconds to delay between retries (0 for no limit) used by the default backoff function.
    #
    # @option options [String] :secret_access_key
    #
    # @option options [String] :session_token
    #
    # @option options [Boolean] :simple_json (false)
    #   Disables request parameter conversion, validation, and formatting.
    #   Also disable response data type conversions. This option is useful
    #   when you want to ensure the highest level of performance by
    #   avoiding overhead of walking request parameters and response data
    #   structures.
    #
    #   When `:simple_json` is enabled, the request parameters hash must
    #   be formatted exactly as the DynamoDB API expects.
    #
    # @option options [Boolean] :stub_responses (false)
    #   Causes the client to return stubbed responses. By default
    #   fake responses are generated and returned. You can specify
    #   the response data to return or errors to raise by calling
    #   {ClientStubs#stub_responses}. See {ClientStubs} for more information.
    #
    #   ** Please note ** When response stubbing is enabled, no HTTP
    #   requests are made, and retries are disabled.
    #
    # @option options [Boolean] :validate_params (true)
    #   When `true`, request parameters are validated before
    #   sending the request.
    #
    def initialize(*args)
      super
    end

    # @!group API Operations

    # Creates a DAX cluster. All nodes in the cluster run the same DAX
    # caching software.
    #
    # @option params [required, String] :cluster_name
    #   The cluster identifier. This parameter is stored as a lowercase
    #   string.
    #
    #   **Constraints:**
    #
    #   * A name must contain from 1 to 20 alphanumeric characters or hyphens.
    #
    #   * The first character must be a letter.
    #
    #   * A name cannot end with a hyphen or contain two consecutive hyphens.
    #
    # @option params [required, String] :node_type
    #   The compute and memory capacity of the nodes in the cluster.
    #
    # @option params [String] :description
    #   A description of the cluster.
    #
    # @option params [required, Integer] :replication_factor
    #   The number of nodes in the DAX cluster. A replication factor of 1 will
    #   create a single-node cluster, without any read replicas. For
    #   additional fault tolerance, you can create a multiple node cluster
    #   with one or more read replicas. To do this, set *ReplicationFactor* to
    #   2 or more.
    #
    #   <note markdown="1"> AWS recommends that you have at least two read replicas per cluster.
    #
    #    </note>
    #
    # @option params [Array<String>] :availability_zones
    #   The Availability Zones (AZs) in which the cluster nodes will be
    #   created. All nodes belonging to the cluster are placed in these
    #   Availability Zones. Use this parameter if you want to distribute the
    #   nodes across multiple AZs.
    #
    # @option params [String] :subnet_group_name
    #   The name of the subnet group to be used for the replication group.
    #
    #   DAX clusters can only run in an Amazon VPC environment. All of the
    #   subnets that you specify in a subnet group must exist in the same VPC.
    #
    # @option params [Array<String>] :security_group_ids
    #   A list of security group IDs to be assigned to each node in the DAX
    #   cluster. (Each of the security group ID is system-generated.)
    #
    #   If this parameter is not specified, DAX assigns the default VPC
    #   security group to each node.
    #
    # @option params [String] :preferred_maintenance_window
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
    #   or modify a cache cluster, DAX assigns a 60-minute maintenance window
    #   on a randomly selected day of the week.
    #
    #    </note>
    #
    # @option params [String] :notification_topic_arn
    #   The Amazon Resource Name (ARN) of the Amazon SNS topic to which
    #   notifications will be sent.
    #
    #   <note markdown="1"> The Amazon SNS topic owner must be same as the DAX cluster owner.
    #
    #    </note>
    #
    # @option params [required, String] :iam_role_arn
    #   A valid Amazon Resource Name (ARN) that identifies an IAM role. At
    #   runtime, DAX will assume this role and use the role's permissions to
    #   access DynamoDB on your behalf.
    #
    # @option params [String] :parameter_group_name
    #   The parameter group to be associated with the DAX cluster.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A set of tags to associate with the DAX cluster.
    #
    # @option params [Types::SSESpecification] :sse_specification
    #   Represents the settings used to enable server-side encryption on the
    #   cluster.
    #
    # @return [Types::CreateClusterResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateClusterResponse#cluster #cluster} => Types::Cluster
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_cluster({
    #     cluster_name: "String", # required
    #     node_type: "String", # required
    #     description: "String",
    #     replication_factor: 1, # required
    #     availability_zones: ["String"],
    #     subnet_group_name: "String",
    #     security_group_ids: ["String"],
    #     preferred_maintenance_window: "String",
    #     notification_topic_arn: "String",
    #     iam_role_arn: "String", # required
    #     parameter_group_name: "String",
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String",
    #       },
    #     ],
    #     sse_specification: {
    #       enabled: false, # required
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.cluster.cluster_name #=> String
    #   resp.cluster.description #=> String
    #   resp.cluster.cluster_arn #=> String
    #   resp.cluster.total_nodes #=> Integer
    #   resp.cluster.active_nodes #=> Integer
    #   resp.cluster.node_type #=> String
    #   resp.cluster.status #=> String
    #   resp.cluster.cluster_discovery_endpoint.address #=> String
    #   resp.cluster.cluster_discovery_endpoint.port #=> Integer
    #   resp.cluster.node_ids_to_remove #=> Array
    #   resp.cluster.node_ids_to_remove[0] #=> String
    #   resp.cluster.nodes #=> Array
    #   resp.cluster.nodes[0].node_id #=> String
    #   resp.cluster.nodes[0].endpoint.address #=> String
    #   resp.cluster.nodes[0].endpoint.port #=> Integer
    #   resp.cluster.nodes[0].node_create_time #=> Time
    #   resp.cluster.nodes[0].availability_zone #=> String
    #   resp.cluster.nodes[0].node_status #=> String
    #   resp.cluster.nodes[0].parameter_group_status #=> String
    #   resp.cluster.preferred_maintenance_window #=> String
    #   resp.cluster.notification_configuration.topic_arn #=> String
    #   resp.cluster.notification_configuration.topic_status #=> String
    #   resp.cluster.subnet_group #=> String
    #   resp.cluster.security_groups #=> Array
    #   resp.cluster.security_groups[0].security_group_identifier #=> String
    #   resp.cluster.security_groups[0].status #=> String
    #   resp.cluster.iam_role_arn #=> String
    #   resp.cluster.parameter_group.parameter_group_name #=> String
    #   resp.cluster.parameter_group.parameter_apply_status #=> String
    #   resp.cluster.parameter_group.node_ids_to_reboot #=> Array
    #   resp.cluster.parameter_group.node_ids_to_reboot[0] #=> String
    #   resp.cluster.sse_description.status #=> String, one of "ENABLING", "ENABLED", "DISABLING", "DISABLED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dax-2017-04-19/CreateCluster AWS API Documentation
    #
    # @overload create_cluster(params = {})
    # @param [Hash] params ({})
    def create_cluster(params = {}, options = {})
      req = build_request(:create_cluster, params)
      req.send_request(options)
    end

    # Creates a new parameter group. A parameter group is a collection of
    # parameters that you apply to all of the nodes in a DAX cluster.
    #
    # @option params [required, String] :parameter_group_name
    #   The name of the parameter group to apply to all of the clusters in
    #   this replication group.
    #
    # @option params [String] :description
    #   A description of the parameter group.
    #
    # @return [Types::CreateParameterGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateParameterGroupResponse#parameter_group #parameter_group} => Types::ParameterGroup
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_parameter_group({
    #     parameter_group_name: "String", # required
    #     description: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.parameter_group.parameter_group_name #=> String
    #   resp.parameter_group.description #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dax-2017-04-19/CreateParameterGroup AWS API Documentation
    #
    # @overload create_parameter_group(params = {})
    # @param [Hash] params ({})
    def create_parameter_group(params = {}, options = {})
      req = build_request(:create_parameter_group, params)
      req.send_request(options)
    end

    # Creates a new subnet group.
    #
    # @option params [required, String] :subnet_group_name
    #   A name for the subnet group. This value is stored as a lowercase
    #   string.
    #
    # @option params [String] :description
    #   A description for the subnet group
    #
    # @option params [required, Array<String>] :subnet_ids
    #   A list of VPC subnet IDs for the subnet group.
    #
    # @return [Types::CreateSubnetGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateSubnetGroupResponse#subnet_group #subnet_group} => Types::SubnetGroup
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_subnet_group({
    #     subnet_group_name: "String", # required
    #     description: "String",
    #     subnet_ids: ["String"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.subnet_group.subnet_group_name #=> String
    #   resp.subnet_group.description #=> String
    #   resp.subnet_group.vpc_id #=> String
    #   resp.subnet_group.subnets #=> Array
    #   resp.subnet_group.subnets[0].subnet_identifier #=> String
    #   resp.subnet_group.subnets[0].subnet_availability_zone #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dax-2017-04-19/CreateSubnetGroup AWS API Documentation
    #
    # @overload create_subnet_group(params = {})
    # @param [Hash] params ({})
    def create_subnet_group(params = {}, options = {})
      req = build_request(:create_subnet_group, params)
      req.send_request(options)
    end

    # Removes one or more nodes from a DAX cluster.
    #
    # <note markdown="1"> You cannot use `DecreaseReplicationFactor` to remove the last node in
    # a DAX cluster. If you need to do this, use `DeleteCluster` instead.
    #
    #  </note>
    #
    # @option params [required, String] :cluster_name
    #   The name of the DAX cluster from which you want to remove nodes.
    #
    # @option params [required, Integer] :new_replication_factor
    #   The new number of nodes for the DAX cluster.
    #
    # @option params [Array<String>] :availability_zones
    #   The Availability Zone(s) from which to remove nodes.
    #
    # @option params [Array<String>] :node_ids_to_remove
    #   The unique identifiers of the nodes to be removed from the cluster.
    #
    # @return [Types::DecreaseReplicationFactorResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DecreaseReplicationFactorResponse#cluster #cluster} => Types::Cluster
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.decrease_replication_factor({
    #     cluster_name: "String", # required
    #     new_replication_factor: 1, # required
    #     availability_zones: ["String"],
    #     node_ids_to_remove: ["String"],
    #   })
    #
    # @example Response structure
    #
    #   resp.cluster.cluster_name #=> String
    #   resp.cluster.description #=> String
    #   resp.cluster.cluster_arn #=> String
    #   resp.cluster.total_nodes #=> Integer
    #   resp.cluster.active_nodes #=> Integer
    #   resp.cluster.node_type #=> String
    #   resp.cluster.status #=> String
    #   resp.cluster.cluster_discovery_endpoint.address #=> String
    #   resp.cluster.cluster_discovery_endpoint.port #=> Integer
    #   resp.cluster.node_ids_to_remove #=> Array
    #   resp.cluster.node_ids_to_remove[0] #=> String
    #   resp.cluster.nodes #=> Array
    #   resp.cluster.nodes[0].node_id #=> String
    #   resp.cluster.nodes[0].endpoint.address #=> String
    #   resp.cluster.nodes[0].endpoint.port #=> Integer
    #   resp.cluster.nodes[0].node_create_time #=> Time
    #   resp.cluster.nodes[0].availability_zone #=> String
    #   resp.cluster.nodes[0].node_status #=> String
    #   resp.cluster.nodes[0].parameter_group_status #=> String
    #   resp.cluster.preferred_maintenance_window #=> String
    #   resp.cluster.notification_configuration.topic_arn #=> String
    #   resp.cluster.notification_configuration.topic_status #=> String
    #   resp.cluster.subnet_group #=> String
    #   resp.cluster.security_groups #=> Array
    #   resp.cluster.security_groups[0].security_group_identifier #=> String
    #   resp.cluster.security_groups[0].status #=> String
    #   resp.cluster.iam_role_arn #=> String
    #   resp.cluster.parameter_group.parameter_group_name #=> String
    #   resp.cluster.parameter_group.parameter_apply_status #=> String
    #   resp.cluster.parameter_group.node_ids_to_reboot #=> Array
    #   resp.cluster.parameter_group.node_ids_to_reboot[0] #=> String
    #   resp.cluster.sse_description.status #=> String, one of "ENABLING", "ENABLED", "DISABLING", "DISABLED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dax-2017-04-19/DecreaseReplicationFactor AWS API Documentation
    #
    # @overload decrease_replication_factor(params = {})
    # @param [Hash] params ({})
    def decrease_replication_factor(params = {}, options = {})
      req = build_request(:decrease_replication_factor, params)
      req.send_request(options)
    end

    # Deletes a previously provisioned DAX cluster. *DeleteCluster* deletes
    # all associated nodes, node endpoints and the DAX cluster itself. When
    # you receive a successful response from this action, DAX immediately
    # begins deleting the cluster; you cannot cancel or revert this action.
    #
    # @option params [required, String] :cluster_name
    #   The name of the cluster to be deleted.
    #
    # @return [Types::DeleteClusterResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteClusterResponse#cluster #cluster} => Types::Cluster
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_cluster({
    #     cluster_name: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.cluster.cluster_name #=> String
    #   resp.cluster.description #=> String
    #   resp.cluster.cluster_arn #=> String
    #   resp.cluster.total_nodes #=> Integer
    #   resp.cluster.active_nodes #=> Integer
    #   resp.cluster.node_type #=> String
    #   resp.cluster.status #=> String
    #   resp.cluster.cluster_discovery_endpoint.address #=> String
    #   resp.cluster.cluster_discovery_endpoint.port #=> Integer
    #   resp.cluster.node_ids_to_remove #=> Array
    #   resp.cluster.node_ids_to_remove[0] #=> String
    #   resp.cluster.nodes #=> Array
    #   resp.cluster.nodes[0].node_id #=> String
    #   resp.cluster.nodes[0].endpoint.address #=> String
    #   resp.cluster.nodes[0].endpoint.port #=> Integer
    #   resp.cluster.nodes[0].node_create_time #=> Time
    #   resp.cluster.nodes[0].availability_zone #=> String
    #   resp.cluster.nodes[0].node_status #=> String
    #   resp.cluster.nodes[0].parameter_group_status #=> String
    #   resp.cluster.preferred_maintenance_window #=> String
    #   resp.cluster.notification_configuration.topic_arn #=> String
    #   resp.cluster.notification_configuration.topic_status #=> String
    #   resp.cluster.subnet_group #=> String
    #   resp.cluster.security_groups #=> Array
    #   resp.cluster.security_groups[0].security_group_identifier #=> String
    #   resp.cluster.security_groups[0].status #=> String
    #   resp.cluster.iam_role_arn #=> String
    #   resp.cluster.parameter_group.parameter_group_name #=> String
    #   resp.cluster.parameter_group.parameter_apply_status #=> String
    #   resp.cluster.parameter_group.node_ids_to_reboot #=> Array
    #   resp.cluster.parameter_group.node_ids_to_reboot[0] #=> String
    #   resp.cluster.sse_description.status #=> String, one of "ENABLING", "ENABLED", "DISABLING", "DISABLED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dax-2017-04-19/DeleteCluster AWS API Documentation
    #
    # @overload delete_cluster(params = {})
    # @param [Hash] params ({})
    def delete_cluster(params = {}, options = {})
      req = build_request(:delete_cluster, params)
      req.send_request(options)
    end

    # Deletes the specified parameter group. You cannot delete a parameter
    # group if it is associated with any DAX clusters.
    #
    # @option params [required, String] :parameter_group_name
    #   The name of the parameter group to delete.
    #
    # @return [Types::DeleteParameterGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteParameterGroupResponse#deletion_message #deletion_message} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_parameter_group({
    #     parameter_group_name: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.deletion_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dax-2017-04-19/DeleteParameterGroup AWS API Documentation
    #
    # @overload delete_parameter_group(params = {})
    # @param [Hash] params ({})
    def delete_parameter_group(params = {}, options = {})
      req = build_request(:delete_parameter_group, params)
      req.send_request(options)
    end

    # Deletes a subnet group.
    #
    # <note markdown="1"> You cannot delete a subnet group if it is associated with any DAX
    # clusters.
    #
    #  </note>
    #
    # @option params [required, String] :subnet_group_name
    #   The name of the subnet group to delete.
    #
    # @return [Types::DeleteSubnetGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteSubnetGroupResponse#deletion_message #deletion_message} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_subnet_group({
    #     subnet_group_name: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.deletion_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dax-2017-04-19/DeleteSubnetGroup AWS API Documentation
    #
    # @overload delete_subnet_group(params = {})
    # @param [Hash] params ({})
    def delete_subnet_group(params = {}, options = {})
      req = build_request(:delete_subnet_group, params)
      req.send_request(options)
    end

    # Returns information about all provisioned DAX clusters if no cluster
    # identifier is specified, or about a specific DAX cluster if a cluster
    # identifier is supplied.
    #
    # If the cluster is in the CREATING state, only cluster level
    # information will be displayed until all of the nodes are successfully
    # provisioned.
    #
    # If the cluster is in the DELETING state, only cluster level
    # information will be displayed.
    #
    # If nodes are currently being added to the DAX cluster, node endpoint
    # information and creation time for the additional nodes will not be
    # displayed until they are completely provisioned. When the DAX cluster
    # state is *available*, the cluster is ready for use.
    #
    # If nodes are currently being removed from the DAX cluster, no endpoint
    # information for the removed nodes is displayed.
    #
    # @option params [Array<String>] :cluster_names
    #   The names of the DAX clusters being described.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to include in the response. If more
    #   results exist than the specified `MaxResults` value, a token is
    #   included in the response so that the remaining results can be
    #   retrieved.
    #
    #   The value for `MaxResults` must be between 20 and 100.
    #
    # @option params [String] :next_token
    #   An optional token returned from a prior request. Use this token for
    #   pagination of results from this action. If this parameter is
    #   specified, the response includes only results beyond the token, up to
    #   the value specified by `MaxResults`.
    #
    # @return [Types::DescribeClustersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeClustersResponse#next_token #next_token} => String
    #   * {Types::DescribeClustersResponse#clusters #clusters} => Array&lt;Types::Cluster&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_clusters({
    #     cluster_names: ["String"],
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.clusters #=> Array
    #   resp.clusters[0].cluster_name #=> String
    #   resp.clusters[0].description #=> String
    #   resp.clusters[0].cluster_arn #=> String
    #   resp.clusters[0].total_nodes #=> Integer
    #   resp.clusters[0].active_nodes #=> Integer
    #   resp.clusters[0].node_type #=> String
    #   resp.clusters[0].status #=> String
    #   resp.clusters[0].cluster_discovery_endpoint.address #=> String
    #   resp.clusters[0].cluster_discovery_endpoint.port #=> Integer
    #   resp.clusters[0].node_ids_to_remove #=> Array
    #   resp.clusters[0].node_ids_to_remove[0] #=> String
    #   resp.clusters[0].nodes #=> Array
    #   resp.clusters[0].nodes[0].node_id #=> String
    #   resp.clusters[0].nodes[0].endpoint.address #=> String
    #   resp.clusters[0].nodes[0].endpoint.port #=> Integer
    #   resp.clusters[0].nodes[0].node_create_time #=> Time
    #   resp.clusters[0].nodes[0].availability_zone #=> String
    #   resp.clusters[0].nodes[0].node_status #=> String
    #   resp.clusters[0].nodes[0].parameter_group_status #=> String
    #   resp.clusters[0].preferred_maintenance_window #=> String
    #   resp.clusters[0].notification_configuration.topic_arn #=> String
    #   resp.clusters[0].notification_configuration.topic_status #=> String
    #   resp.clusters[0].subnet_group #=> String
    #   resp.clusters[0].security_groups #=> Array
    #   resp.clusters[0].security_groups[0].security_group_identifier #=> String
    #   resp.clusters[0].security_groups[0].status #=> String
    #   resp.clusters[0].iam_role_arn #=> String
    #   resp.clusters[0].parameter_group.parameter_group_name #=> String
    #   resp.clusters[0].parameter_group.parameter_apply_status #=> String
    #   resp.clusters[0].parameter_group.node_ids_to_reboot #=> Array
    #   resp.clusters[0].parameter_group.node_ids_to_reboot[0] #=> String
    #   resp.clusters[0].sse_description.status #=> String, one of "ENABLING", "ENABLED", "DISABLING", "DISABLED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dax-2017-04-19/DescribeClusters AWS API Documentation
    #
    # @overload describe_clusters(params = {})
    # @param [Hash] params ({})
    def describe_clusters(params = {}, options = {})
      req = build_request(:describe_clusters, params)
      req.send_request(options)
    end

    # Returns the default system parameter information for the DAX caching
    # software.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to include in the response. If more
    #   results exist than the specified `MaxResults` value, a token is
    #   included in the response so that the remaining results can be
    #   retrieved.
    #
    #   The value for `MaxResults` must be between 20 and 100.
    #
    # @option params [String] :next_token
    #   An optional token returned from a prior request. Use this token for
    #   pagination of results from this action. If this parameter is
    #   specified, the response includes only results beyond the token, up to
    #   the value specified by `MaxResults`.
    #
    # @return [Types::DescribeDefaultParametersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeDefaultParametersResponse#next_token #next_token} => String
    #   * {Types::DescribeDefaultParametersResponse#parameters #parameters} => Array&lt;Types::Parameter&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_default_parameters({
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.parameters #=> Array
    #   resp.parameters[0].parameter_name #=> String
    #   resp.parameters[0].parameter_type #=> String, one of "DEFAULT", "NODE_TYPE_SPECIFIC"
    #   resp.parameters[0].parameter_value #=> String
    #   resp.parameters[0].node_type_specific_values #=> Array
    #   resp.parameters[0].node_type_specific_values[0].node_type #=> String
    #   resp.parameters[0].node_type_specific_values[0].value #=> String
    #   resp.parameters[0].description #=> String
    #   resp.parameters[0].source #=> String
    #   resp.parameters[0].data_type #=> String
    #   resp.parameters[0].allowed_values #=> String
    #   resp.parameters[0].is_modifiable #=> String, one of "TRUE", "FALSE", "CONDITIONAL"
    #   resp.parameters[0].change_type #=> String, one of "IMMEDIATE", "REQUIRES_REBOOT"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dax-2017-04-19/DescribeDefaultParameters AWS API Documentation
    #
    # @overload describe_default_parameters(params = {})
    # @param [Hash] params ({})
    def describe_default_parameters(params = {}, options = {})
      req = build_request(:describe_default_parameters, params)
      req.send_request(options)
    end

    # Returns events related to DAX clusters and parameter groups. You can
    # obtain events specific to a particular DAX cluster or parameter group
    # by providing the name as a parameter.
    #
    # By default, only the events occurring within the last hour are
    # returned; however, you can retrieve up to 14 days' worth of events if
    # necessary.
    #
    # @option params [String] :source_name
    #   The identifier of the event source for which events will be returned.
    #   If not specified, then all sources are included in the response.
    #
    # @option params [String] :source_type
    #   The event source to retrieve events for. If no value is specified, all
    #   events are returned.
    #
    # @option params [Time,DateTime,Date,Integer,String] :start_time
    #   The beginning of the time interval to retrieve events for, specified
    #   in ISO 8601 format.
    #
    # @option params [Time,DateTime,Date,Integer,String] :end_time
    #   The end of the time interval for which to retrieve events, specified
    #   in ISO 8601 format.
    #
    # @option params [Integer] :duration
    #   The number of minutes' worth of events to retrieve.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to include in the response. If more
    #   results exist than the specified `MaxResults` value, a token is
    #   included in the response so that the remaining results can be
    #   retrieved.
    #
    #   The value for `MaxResults` must be between 20 and 100.
    #
    # @option params [String] :next_token
    #   An optional token returned from a prior request. Use this token for
    #   pagination of results from this action. If this parameter is
    #   specified, the response includes only results beyond the token, up to
    #   the value specified by `MaxResults`.
    #
    # @return [Types::DescribeEventsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeEventsResponse#next_token #next_token} => String
    #   * {Types::DescribeEventsResponse#events #events} => Array&lt;Types::Event&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_events({
    #     source_name: "String",
    #     source_type: "CLUSTER", # accepts CLUSTER, PARAMETER_GROUP, SUBNET_GROUP
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     duration: 1,
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.events #=> Array
    #   resp.events[0].source_name #=> String
    #   resp.events[0].source_type #=> String, one of "CLUSTER", "PARAMETER_GROUP", "SUBNET_GROUP"
    #   resp.events[0].message #=> String
    #   resp.events[0].date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dax-2017-04-19/DescribeEvents AWS API Documentation
    #
    # @overload describe_events(params = {})
    # @param [Hash] params ({})
    def describe_events(params = {}, options = {})
      req = build_request(:describe_events, params)
      req.send_request(options)
    end

    # Returns a list of parameter group descriptions. If a parameter group
    # name is specified, the list will contain only the descriptions for
    # that group.
    #
    # @option params [Array<String>] :parameter_group_names
    #   The names of the parameter groups.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to include in the response. If more
    #   results exist than the specified `MaxResults` value, a token is
    #   included in the response so that the remaining results can be
    #   retrieved.
    #
    #   The value for `MaxResults` must be between 20 and 100.
    #
    # @option params [String] :next_token
    #   An optional token returned from a prior request. Use this token for
    #   pagination of results from this action. If this parameter is
    #   specified, the response includes only results beyond the token, up to
    #   the value specified by `MaxResults`.
    #
    # @return [Types::DescribeParameterGroupsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeParameterGroupsResponse#next_token #next_token} => String
    #   * {Types::DescribeParameterGroupsResponse#parameter_groups #parameter_groups} => Array&lt;Types::ParameterGroup&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_parameter_groups({
    #     parameter_group_names: ["String"],
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.parameter_groups #=> Array
    #   resp.parameter_groups[0].parameter_group_name #=> String
    #   resp.parameter_groups[0].description #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dax-2017-04-19/DescribeParameterGroups AWS API Documentation
    #
    # @overload describe_parameter_groups(params = {})
    # @param [Hash] params ({})
    def describe_parameter_groups(params = {}, options = {})
      req = build_request(:describe_parameter_groups, params)
      req.send_request(options)
    end

    # Returns the detailed parameter list for a particular parameter group.
    #
    # @option params [required, String] :parameter_group_name
    #   The name of the parameter group.
    #
    # @option params [String] :source
    #   How the parameter is defined. For example, `system` denotes a
    #   system-defined parameter.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to include in the response. If more
    #   results exist than the specified `MaxResults` value, a token is
    #   included in the response so that the remaining results can be
    #   retrieved.
    #
    #   The value for `MaxResults` must be between 20 and 100.
    #
    # @option params [String] :next_token
    #   An optional token returned from a prior request. Use this token for
    #   pagination of results from this action. If this parameter is
    #   specified, the response includes only results beyond the token, up to
    #   the value specified by `MaxResults`.
    #
    # @return [Types::DescribeParametersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeParametersResponse#next_token #next_token} => String
    #   * {Types::DescribeParametersResponse#parameters #parameters} => Array&lt;Types::Parameter&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_parameters({
    #     parameter_group_name: "String", # required
    #     source: "String",
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.parameters #=> Array
    #   resp.parameters[0].parameter_name #=> String
    #   resp.parameters[0].parameter_type #=> String, one of "DEFAULT", "NODE_TYPE_SPECIFIC"
    #   resp.parameters[0].parameter_value #=> String
    #   resp.parameters[0].node_type_specific_values #=> Array
    #   resp.parameters[0].node_type_specific_values[0].node_type #=> String
    #   resp.parameters[0].node_type_specific_values[0].value #=> String
    #   resp.parameters[0].description #=> String
    #   resp.parameters[0].source #=> String
    #   resp.parameters[0].data_type #=> String
    #   resp.parameters[0].allowed_values #=> String
    #   resp.parameters[0].is_modifiable #=> String, one of "TRUE", "FALSE", "CONDITIONAL"
    #   resp.parameters[0].change_type #=> String, one of "IMMEDIATE", "REQUIRES_REBOOT"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dax-2017-04-19/DescribeParameters AWS API Documentation
    #
    # @overload describe_parameters(params = {})
    # @param [Hash] params ({})
    def describe_parameters(params = {}, options = {})
      req = build_request(:describe_parameters, params)
      req.send_request(options)
    end

    # Returns a list of subnet group descriptions. If a subnet group name is
    # specified, the list will contain only the description of that group.
    #
    # @option params [Array<String>] :subnet_group_names
    #   The name of the subnet group.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to include in the response. If more
    #   results exist than the specified `MaxResults` value, a token is
    #   included in the response so that the remaining results can be
    #   retrieved.
    #
    #   The value for `MaxResults` must be between 20 and 100.
    #
    # @option params [String] :next_token
    #   An optional token returned from a prior request. Use this token for
    #   pagination of results from this action. If this parameter is
    #   specified, the response includes only results beyond the token, up to
    #   the value specified by `MaxResults`.
    #
    # @return [Types::DescribeSubnetGroupsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeSubnetGroupsResponse#next_token #next_token} => String
    #   * {Types::DescribeSubnetGroupsResponse#subnet_groups #subnet_groups} => Array&lt;Types::SubnetGroup&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_subnet_groups({
    #     subnet_group_names: ["String"],
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.subnet_groups #=> Array
    #   resp.subnet_groups[0].subnet_group_name #=> String
    #   resp.subnet_groups[0].description #=> String
    #   resp.subnet_groups[0].vpc_id #=> String
    #   resp.subnet_groups[0].subnets #=> Array
    #   resp.subnet_groups[0].subnets[0].subnet_identifier #=> String
    #   resp.subnet_groups[0].subnets[0].subnet_availability_zone #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dax-2017-04-19/DescribeSubnetGroups AWS API Documentation
    #
    # @overload describe_subnet_groups(params = {})
    # @param [Hash] params ({})
    def describe_subnet_groups(params = {}, options = {})
      req = build_request(:describe_subnet_groups, params)
      req.send_request(options)
    end

    # Adds one or more nodes to a DAX cluster.
    #
    # @option params [required, String] :cluster_name
    #   The name of the DAX cluster that will receive additional nodes.
    #
    # @option params [required, Integer] :new_replication_factor
    #   The new number of nodes for the DAX cluster.
    #
    # @option params [Array<String>] :availability_zones
    #   The Availability Zones (AZs) in which the cluster nodes will be
    #   created. All nodes belonging to the cluster are placed in these
    #   Availability Zones. Use this parameter if you want to distribute the
    #   nodes across multiple AZs.
    #
    # @return [Types::IncreaseReplicationFactorResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::IncreaseReplicationFactorResponse#cluster #cluster} => Types::Cluster
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.increase_replication_factor({
    #     cluster_name: "String", # required
    #     new_replication_factor: 1, # required
    #     availability_zones: ["String"],
    #   })
    #
    # @example Response structure
    #
    #   resp.cluster.cluster_name #=> String
    #   resp.cluster.description #=> String
    #   resp.cluster.cluster_arn #=> String
    #   resp.cluster.total_nodes #=> Integer
    #   resp.cluster.active_nodes #=> Integer
    #   resp.cluster.node_type #=> String
    #   resp.cluster.status #=> String
    #   resp.cluster.cluster_discovery_endpoint.address #=> String
    #   resp.cluster.cluster_discovery_endpoint.port #=> Integer
    #   resp.cluster.node_ids_to_remove #=> Array
    #   resp.cluster.node_ids_to_remove[0] #=> String
    #   resp.cluster.nodes #=> Array
    #   resp.cluster.nodes[0].node_id #=> String
    #   resp.cluster.nodes[0].endpoint.address #=> String
    #   resp.cluster.nodes[0].endpoint.port #=> Integer
    #   resp.cluster.nodes[0].node_create_time #=> Time
    #   resp.cluster.nodes[0].availability_zone #=> String
    #   resp.cluster.nodes[0].node_status #=> String
    #   resp.cluster.nodes[0].parameter_group_status #=> String
    #   resp.cluster.preferred_maintenance_window #=> String
    #   resp.cluster.notification_configuration.topic_arn #=> String
    #   resp.cluster.notification_configuration.topic_status #=> String
    #   resp.cluster.subnet_group #=> String
    #   resp.cluster.security_groups #=> Array
    #   resp.cluster.security_groups[0].security_group_identifier #=> String
    #   resp.cluster.security_groups[0].status #=> String
    #   resp.cluster.iam_role_arn #=> String
    #   resp.cluster.parameter_group.parameter_group_name #=> String
    #   resp.cluster.parameter_group.parameter_apply_status #=> String
    #   resp.cluster.parameter_group.node_ids_to_reboot #=> Array
    #   resp.cluster.parameter_group.node_ids_to_reboot[0] #=> String
    #   resp.cluster.sse_description.status #=> String, one of "ENABLING", "ENABLED", "DISABLING", "DISABLED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dax-2017-04-19/IncreaseReplicationFactor AWS API Documentation
    #
    # @overload increase_replication_factor(params = {})
    # @param [Hash] params ({})
    def increase_replication_factor(params = {}, options = {})
      req = build_request(:increase_replication_factor, params)
      req.send_request(options)
    end

    # List all of the tags for a DAX cluster. You can call `ListTags` up to
    # 10 times per second, per account.
    #
    # @option params [required, String] :resource_name
    #   The name of the DAX resource to which the tags belong.
    #
    # @option params [String] :next_token
    #   An optional token returned from a prior request. Use this token for
    #   pagination of results from this action. If this parameter is
    #   specified, the response includes only results beyond the token.
    #
    # @return [Types::ListTagsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsResponse#tags #tags} => Array&lt;Types::Tag&gt;
    #   * {Types::ListTagsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags({
    #     resource_name: "String", # required
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dax-2017-04-19/ListTags AWS API Documentation
    #
    # @overload list_tags(params = {})
    # @param [Hash] params ({})
    def list_tags(params = {}, options = {})
      req = build_request(:list_tags, params)
      req.send_request(options)
    end

    # Reboots a single node of a DAX cluster. The reboot action takes place
    # as soon as possible. During the reboot, the node status is set to
    # REBOOTING.
    #
    # @option params [required, String] :cluster_name
    #   The name of the DAX cluster containing the node to be rebooted.
    #
    # @option params [required, String] :node_id
    #   The system-assigned ID of the node to be rebooted.
    #
    # @return [Types::RebootNodeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RebootNodeResponse#cluster #cluster} => Types::Cluster
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reboot_node({
    #     cluster_name: "String", # required
    #     node_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.cluster.cluster_name #=> String
    #   resp.cluster.description #=> String
    #   resp.cluster.cluster_arn #=> String
    #   resp.cluster.total_nodes #=> Integer
    #   resp.cluster.active_nodes #=> Integer
    #   resp.cluster.node_type #=> String
    #   resp.cluster.status #=> String
    #   resp.cluster.cluster_discovery_endpoint.address #=> String
    #   resp.cluster.cluster_discovery_endpoint.port #=> Integer
    #   resp.cluster.node_ids_to_remove #=> Array
    #   resp.cluster.node_ids_to_remove[0] #=> String
    #   resp.cluster.nodes #=> Array
    #   resp.cluster.nodes[0].node_id #=> String
    #   resp.cluster.nodes[0].endpoint.address #=> String
    #   resp.cluster.nodes[0].endpoint.port #=> Integer
    #   resp.cluster.nodes[0].node_create_time #=> Time
    #   resp.cluster.nodes[0].availability_zone #=> String
    #   resp.cluster.nodes[0].node_status #=> String
    #   resp.cluster.nodes[0].parameter_group_status #=> String
    #   resp.cluster.preferred_maintenance_window #=> String
    #   resp.cluster.notification_configuration.topic_arn #=> String
    #   resp.cluster.notification_configuration.topic_status #=> String
    #   resp.cluster.subnet_group #=> String
    #   resp.cluster.security_groups #=> Array
    #   resp.cluster.security_groups[0].security_group_identifier #=> String
    #   resp.cluster.security_groups[0].status #=> String
    #   resp.cluster.iam_role_arn #=> String
    #   resp.cluster.parameter_group.parameter_group_name #=> String
    #   resp.cluster.parameter_group.parameter_apply_status #=> String
    #   resp.cluster.parameter_group.node_ids_to_reboot #=> Array
    #   resp.cluster.parameter_group.node_ids_to_reboot[0] #=> String
    #   resp.cluster.sse_description.status #=> String, one of "ENABLING", "ENABLED", "DISABLING", "DISABLED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dax-2017-04-19/RebootNode AWS API Documentation
    #
    # @overload reboot_node(params = {})
    # @param [Hash] params ({})
    def reboot_node(params = {}, options = {})
      req = build_request(:reboot_node, params)
      req.send_request(options)
    end

    # Associates a set of tags with a DAX resource. You can call
    # `TagResource` up to 5 times per second, per account.
    #
    # @option params [required, String] :resource_name
    #   The name of the DAX resource to which tags should be added.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   The tags to be assigned to the DAX resource.
    #
    # @return [Types::TagResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::TagResourceResponse#tags #tags} => Array&lt;Types::Tag&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_name: "String", # required
    #     tags: [ # required
    #       {
    #         key: "String",
    #         value: "String",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dax-2017-04-19/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes the association of tags from a DAX resource. You can call
    # `UntagResource` up to 5 times per second, per account.
    #
    # @option params [required, String] :resource_name
    #   The name of the DAX resource from which the tags should be removed.
    #
    # @option params [required, Array<String>] :tag_keys
    #   A list of tag keys. If the DAX cluster has any tags with these keys,
    #   then the tags are removed from the cluster.
    #
    # @return [Types::UntagResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UntagResourceResponse#tags #tags} => Array&lt;Types::Tag&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_name: "String", # required
    #     tag_keys: ["String"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dax-2017-04-19/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Modifies the settings for a DAX cluster. You can use this action to
    # change one or more cluster configuration parameters by specifying the
    # parameters and the new values.
    #
    # @option params [required, String] :cluster_name
    #   The name of the DAX cluster to be modified.
    #
    # @option params [String] :description
    #   A description of the changes being made to the cluster.
    #
    # @option params [String] :preferred_maintenance_window
    #   A range of time when maintenance of DAX cluster software will be
    #   performed. For example: `sun:01:00-sun:09:00`. Cluster maintenance
    #   normally takes less than 30 minutes, and is performed automatically
    #   within the maintenance window.
    #
    # @option params [String] :notification_topic_arn
    #   The Amazon Resource Name (ARN) that identifies the topic.
    #
    # @option params [String] :notification_topic_status
    #   The current state of the topic.
    #
    # @option params [String] :parameter_group_name
    #   The name of a parameter group for this cluster.
    #
    # @option params [Array<String>] :security_group_ids
    #   A list of user-specified security group IDs to be assigned to each
    #   node in the DAX cluster. If this parameter is not specified, DAX
    #   assigns the default VPC security group to each node.
    #
    # @return [Types::UpdateClusterResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateClusterResponse#cluster #cluster} => Types::Cluster
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_cluster({
    #     cluster_name: "String", # required
    #     description: "String",
    #     preferred_maintenance_window: "String",
    #     notification_topic_arn: "String",
    #     notification_topic_status: "String",
    #     parameter_group_name: "String",
    #     security_group_ids: ["String"],
    #   })
    #
    # @example Response structure
    #
    #   resp.cluster.cluster_name #=> String
    #   resp.cluster.description #=> String
    #   resp.cluster.cluster_arn #=> String
    #   resp.cluster.total_nodes #=> Integer
    #   resp.cluster.active_nodes #=> Integer
    #   resp.cluster.node_type #=> String
    #   resp.cluster.status #=> String
    #   resp.cluster.cluster_discovery_endpoint.address #=> String
    #   resp.cluster.cluster_discovery_endpoint.port #=> Integer
    #   resp.cluster.node_ids_to_remove #=> Array
    #   resp.cluster.node_ids_to_remove[0] #=> String
    #   resp.cluster.nodes #=> Array
    #   resp.cluster.nodes[0].node_id #=> String
    #   resp.cluster.nodes[0].endpoint.address #=> String
    #   resp.cluster.nodes[0].endpoint.port #=> Integer
    #   resp.cluster.nodes[0].node_create_time #=> Time
    #   resp.cluster.nodes[0].availability_zone #=> String
    #   resp.cluster.nodes[0].node_status #=> String
    #   resp.cluster.nodes[0].parameter_group_status #=> String
    #   resp.cluster.preferred_maintenance_window #=> String
    #   resp.cluster.notification_configuration.topic_arn #=> String
    #   resp.cluster.notification_configuration.topic_status #=> String
    #   resp.cluster.subnet_group #=> String
    #   resp.cluster.security_groups #=> Array
    #   resp.cluster.security_groups[0].security_group_identifier #=> String
    #   resp.cluster.security_groups[0].status #=> String
    #   resp.cluster.iam_role_arn #=> String
    #   resp.cluster.parameter_group.parameter_group_name #=> String
    #   resp.cluster.parameter_group.parameter_apply_status #=> String
    #   resp.cluster.parameter_group.node_ids_to_reboot #=> Array
    #   resp.cluster.parameter_group.node_ids_to_reboot[0] #=> String
    #   resp.cluster.sse_description.status #=> String, one of "ENABLING", "ENABLED", "DISABLING", "DISABLED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dax-2017-04-19/UpdateCluster AWS API Documentation
    #
    # @overload update_cluster(params = {})
    # @param [Hash] params ({})
    def update_cluster(params = {}, options = {})
      req = build_request(:update_cluster, params)
      req.send_request(options)
    end

    # Modifies the parameters of a parameter group. You can modify up to 20
    # parameters in a single request by submitting a list parameter name and
    # value pairs.
    #
    # @option params [required, String] :parameter_group_name
    #   The name of the parameter group.
    #
    # @option params [required, Array<Types::ParameterNameValue>] :parameter_name_values
    #   An array of name-value pairs for the parameters in the group. Each
    #   element in the array represents a single parameter.
    #
    # @return [Types::UpdateParameterGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateParameterGroupResponse#parameter_group #parameter_group} => Types::ParameterGroup
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_parameter_group({
    #     parameter_group_name: "String", # required
    #     parameter_name_values: [ # required
    #       {
    #         parameter_name: "String",
    #         parameter_value: "String",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.parameter_group.parameter_group_name #=> String
    #   resp.parameter_group.description #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dax-2017-04-19/UpdateParameterGroup AWS API Documentation
    #
    # @overload update_parameter_group(params = {})
    # @param [Hash] params ({})
    def update_parameter_group(params = {}, options = {})
      req = build_request(:update_parameter_group, params)
      req.send_request(options)
    end

    # Modifies an existing subnet group.
    #
    # @option params [required, String] :subnet_group_name
    #   The name of the subnet group.
    #
    # @option params [String] :description
    #   A description of the subnet group.
    #
    # @option params [Array<String>] :subnet_ids
    #   A list of subnet IDs in the subnet group.
    #
    # @return [Types::UpdateSubnetGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateSubnetGroupResponse#subnet_group #subnet_group} => Types::SubnetGroup
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_subnet_group({
    #     subnet_group_name: "String", # required
    #     description: "String",
    #     subnet_ids: ["String"],
    #   })
    #
    # @example Response structure
    #
    #   resp.subnet_group.subnet_group_name #=> String
    #   resp.subnet_group.description #=> String
    #   resp.subnet_group.vpc_id #=> String
    #   resp.subnet_group.subnets #=> Array
    #   resp.subnet_group.subnets[0].subnet_identifier #=> String
    #   resp.subnet_group.subnets[0].subnet_availability_zone #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dax-2017-04-19/UpdateSubnetGroup AWS API Documentation
    #
    # @overload update_subnet_group(params = {})
    # @param [Hash] params ({})
    def update_subnet_group(params = {}, options = {})
      req = build_request(:update_subnet_group, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config)
      context[:gem_name] = 'aws-sdk-dax'
      context[:gem_version] = '1.5.0'
      Seahorse::Client::Request.new(handlers, context)
    end

    # @api private
    # @deprecated
    def waiter_names
      []
    end

    class << self

      # @api private
      attr_reader :identifier

      # @api private
      def errors_module
        Errors
      end

    end
  end
end
