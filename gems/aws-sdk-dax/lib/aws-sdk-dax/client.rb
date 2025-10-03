# frozen_string_literal: true

# This is generated code!

require_relative 'plugins/endpoint'
require 'smithy-client/plugins/checksum_required'
require 'smithy-client/plugins/content_length'
require 'smithy-client/plugins/default_params'
require 'smithy-client/plugins/host_prefix'
require 'smithy-client/plugins/idempotency_token'
require 'smithy-client/plugins/logging'
require 'smithy-client/plugins/net_http'
require 'smithy-client/plugins/pageable_response'
require 'smithy-client/plugins/param_converter'
require 'smithy-client/plugins/param_validator'
require 'smithy-client/plugins/raise_response_errors'
require 'smithy-client/plugins/request_compression'
require 'smithy-client/plugins/resolve_auth'
require 'smithy-client/plugins/response_target'
require 'smithy-client/plugins/retry_errors'
require 'smithy-client/plugins/sign_requests'
require 'smithy-client/plugins/stub_responses'
require 'aws-sdk-core/plugins/regional_endpoints'
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/json_rpc_protocol'
require 'aws-sdk-core/plugins/sigv4'

module Aws::DAX
  # An API client for Aws::DAX.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AmazonDAXV3

    add_plugin(::Aws::DAX::Plugins::Endpoint)
    add_plugin(Smithy::Client::Plugins::ChecksumRequired)
    add_plugin(Smithy::Client::Plugins::ContentLength)
    add_plugin(Smithy::Client::Plugins::DefaultParams)
    add_plugin(Smithy::Client::Plugins::HostPrefix)
    add_plugin(Smithy::Client::Plugins::IdempotencyToken)
    add_plugin(Smithy::Client::Plugins::Logging)
    add_plugin(Smithy::Client::Plugins::NetHTTP)
    add_plugin(Smithy::Client::Plugins::PageableResponse)
    add_plugin(Smithy::Client::Plugins::ParamConverter)
    add_plugin(Smithy::Client::Plugins::ParamValidator)
    add_plugin(Smithy::Client::Plugins::RaiseResponseErrors)
    add_plugin(Smithy::Client::Plugins::RequestCompression)
    add_plugin(Smithy::Client::Plugins::ResolveAuth)
    add_plugin(Smithy::Client::Plugins::ResponseTarget)
    add_plugin(Smithy::Client::Plugins::RetryErrors)
    add_plugin(Smithy::Client::Plugins::SignRequests)
    add_plugin(Smithy::Client::Plugins::StubResponses)
    add_plugin(Aws::Core::Plugins::RegionalEndpoints)
    add_plugin(Aws::Core::Plugins::SharedConfig)
    add_plugin(Aws::Core::Plugins::UserAgent)
    add_plugin(Aws::Core::Plugins::JsonRpcProtocol)
    add_plugin(Aws::Core::Plugins::SigV4)

    # @param options [Hash] Client options
    # @option options [String] :access_key_id
    # @option options [String] :account_id
    # @option options [Boolean] :adaptive_retry_wait_to_fill (true)
    #  When true, the request will sleep until there is sufficient client side capacity to retry
    #  the request. When false, the request will raise a `CapacityNotAvailableError` and will
    #  not retry instead of sleeping.
    # @option options [#resolve(context)] :auth_resolver (AuthResolver.new)
    #  An object that resolves authentication schemes for request signing.
    # @option options [Array<String>] :auth_scheme_preference
    #  An ordered list of preferred authentication schemes to use when making a request.
    #  The items in the list must be a fully qualified scheme IDs, such as `smithy.api#httpBearerAuth`.
    # @option options [Boolean] :convert_params (true)
    #  When `true`, request parameters are coerced into the required types.
    # @option options [#identity] :credentials_provider
    #  The credentials provider used to resolve credentials. Any object that responds to `#identity`
    #  and returns a {Aws::Core::Credentials}.
    # @option options [Boolean] :disable_host_prefix_injection
    #  When `true`, the SDK will not prepend the modeled host prefix to the endpoint.
    # @option options [Boolean] :disable_request_compression
    #  When `true`, the request body will not be compressed for supported operations.
    # @option options [String] :endpoint
    #  The endpoint to send requests to.
    #  The endpoint should be a URI formatted like "http://example.com:123"'
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::DAX::EndpointProvider)
    #  An object that provides an endpoint to use for the request.
    # @option options [String] :http_ca_file
    #  The path to a CA certification file in PEM format. Defaults to `nil` which uses
    #  the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-ca_file Net::HTTP#ca_file}.
    # @option options [String] :http_ca_path
    #  The path of to CA directory containing certification files in PEM format. Defaults to
    #  `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-ca_path Net::HTTP#ca_path}.
    # @option options [OpenSSL::X509::Certificate] :http_cert
    #  Sets the OpenSSL::X509::Certificate object to be used for client certification. Defaults
    #  to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-cert Net::HTTP#cert}.
    # @option options [OpenSSL::X509::Store] :http_cert_store
    #  Sets the OpenSSL::X509::Store to be used for verifying peer certificate. Defaults to
    #  `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-cert_store Net::HTTP#cert_store}.
    # @option options [Numeric] :http_continue_timeout
    #  Sets the continue timeout value, which is the number of seconds to wait for an
    #  expected 100 Continue response. If the HTTP object does not receive a response
    #  in this many seconds it sends the request body. Defaults to `nil` which uses the
    #  Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-continue_timeout Net::HTTP#continue_timeout}.
    # @option options [Boolean] :http_debug_output
    #  When `true`, Net::HTTP debug output will be sent to the configured logger.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#method-i-set_debug_output Net::HTTP#set_debug_output}.
    # @option options [Numeric] :http_keep_alive_timeout
    #  The number of seconds to keep the connection open after a request is sent. If a
    #  new request is made during the given interval, the still-open connection is used;
    #  otherwise the connection will have been closed and a new connection is opened.
    #  Defaults to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-keep_alive_timeout Net::HTTP#keep_alive_timeout}.
    # @option options [OpenSSL::PKey::RSA, OpenSSL::PKey::DSA] :http_key
    #  Sets the OpenSSL::PKey object to be used for client private key. Defaults to `nil` which
    #  uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-key Net::HTTP#key}.
    # @option options [Numeric] :http_open_timeout
    #  The number of seconds to wait for a connection to open. If the connection is not
    #  made in the given interval, an exception is raised. Defaults to `nil` which uses
    #  the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-open_timeout Net::HTTP#open_timeout}.
    # @option options [URI::HTTP, String] :http_proxy
    #  A proxy to send requests through. Formatted like 'http://proxy.com:123'.
    # @option options [Numeric] :http_read_timeout
    #  The number of seconds to wait for one block to be read (via one read(2) call).
    #  Defaults to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-read_timeout Net::HTTP#read_timeout}.
    # @option options [Numeric] :http_ssl_timeout
    #  Sets the SSL timeout seconds. Defaults to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-ssl_timeout Net::HTTP#ssl_timeout}.
    # @option options [Integer] :http_verify_mode (OpenSSL::SSL::VERIFY_PEER)
    #  Sets the verify mode for SSL. Defaults to `OpenSSL::SSL::VERIFY_PEER`.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-verify_mode Net::HTTP#verify_mode}.
    # @option options [Numeric] :http_write_timeout
    #  The number of seconds to wait for one block to be written (via one write(2) call).
    #  Defaults to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-write_timeout Net::HTTP#write_timeout}.
    # @option options [Smithy::Client::LogFormatter] :log_formatter (Aws::Log::Formatter.default)
    #  The log formatter used by the logger.
    # @option options [Symbol] :log_level (:info)
    #  The log level to send messages to the logger at.
    # @option options [Logger] :logger
    #  The Logger instance to send log messages to. If this option is not set, logging is disabled.
    # @option options [String] :profile (default)
    #  Used when loading credentials from the shared config file and credentials file
    #  at ~/.aws/config and ~/.aws/credentials, respectively.  When not specified, 'default' is used.
    # @option options [Boolean] :raise_response_errors (true)
    #  When `true`, response errors are raised. When `false`, the error is placed on the
    #  output in the {Smithy::Client::Response#error error accessor}.
    # @option options [String] :region
    #  The AWS region to connect to. The configured `:region` is used to determine the service `:endpoint`.
    #  When not provided, a default region is searched for in the following locations:
    #  * `Aws.config[:region]`
    #  * `ENV['AWS_REGION']`
    #  * `ENV['AWS_DEFAULT_REGION']`
    #  * `~/.aws/credentials` as `region` under a profile
    #  * `~/.aws/config` as `region` under a profile
    # @option options [Integer] :request_min_compression_size_bytes (10240)
    #  The minimum size in bytes that triggers compression for request bodies.
    #  The value must be non-negative integer value between 0 and 10,485,780 bytes inclusive.
    # @option options [lambda] :retry_backoff (Smithy::Client::Retry::EXPONENTIAL_BACKOFF)
    #  A callable object that calculates a backoff delay for a retry attempt. The callable
    #  should accept a single argument, `attempts`, that represents the number of attempts
    #  that have been made. Used in the `standard` and `adaptive` retry strategies.
    # @option options [Integer] :retry_max_attempts (3)
    #  The maximum number attempts that will be made for a single request, including
    #  the initial attempt. Used in the `standard` and `adaptive` retry strategies.
    # @option options [String, Class] :retry_strategy ('standard')
    #  The retry strategy to use when retrying errors. This can be one of the following:
    #  * `standard` - A standardized retry strategy used by the AWS SDKs. This includes support
    #    for retry quotas, which limit the number of unsuccessful retries a client can make.
    #  * `adaptive` - An experimental retry strategy that includes all the functionality of the
    #    `standard` strategy along with automatic client side throttling. This is a provisional
    #    strategy that may change behavior in the future.
    #  * Any instance of a class that implements the following methods:
    #    - `acquire_initial_retry_token(token_scope)`
    #    - `refresh_retry_token(retry_token, error_info)`
    #    - `record_success(retry_token)`
    # @option options [String] :sdk_ua_app_id
    #  A unique and opaque application ID that is appended to the User-Agent header as app/sdk_ua_app_id.
    #  It should have a maximum length of 50. This variable is sourced from environment variable
    #  `AWS_SDK_UA_APP_ID` or the shared config profile attribute `sdk_ua_app_id`.
    # @option options [String] :secret_access_key
    # @option options [String] :session_token
    # @option options [Boolean] :stub_responses
    #  When `true`, the client will return stubbed responses instead of networking requests.
    #  By default fake responses are generated and returned. You can specify the response data
    #  to return or errors to raise by calling {Stubs#stub_responses}.
    #  @see Stubs
    # @option options [Boolean] :use_dualstack_endpoint
    #  When set to `true`, dualstack enabled endpoints (with `.aws` TLD) will be used if available.
    #  This option can also be configured in the following locations:
    #  * `ENV['AWS_USE_DUALSTACK_ENDPOINT']`
    #  * `~/.aws/credentials` as `use_dualstack_endpoint` under a profile
    #  * `~/.aws/config` as `use_dualstack_endpoint` under a profile
    # @option options [Boolean] :use_fips_endpoint
    #  When set to `true`, FIPS compatible endpoints will be used if available.
    #  This option can also be configured in the following locations:
    #  * `ENV['AWS_USE_FIPS_ENDPOINT']`
    #  * `~/.aws/credentials` as `use_fips_endpoint` under a profile
    #  * `~/.aws/config` as `use_fips_endpoint` under a profile
    # @option options [Boolean] :validate_params (true)
    #  When `true`, request parameters are validated before sending the request.
    def initialize(*options)
      super
    end

    # <p>Creates a DAX cluster. All nodes in the cluster run the same DAX caching software.</p>
    # @param [Hash, Types::CreateClusterRequest] params
    # @option params [String] :cluster_name
    #   <p>The cluster identifier. This parameter is stored as a lowercase string.</p>
    #            <p>
    #               <b>Constraints:</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>A name must contain from 1 to 20 alphanumeric characters or
    #                       hyphens.</p>
    #               </li>
    #               <li>
    #                  <p>The first character must be a letter.</p>
    #               </li>
    #               <li>
    #                  <p>A name cannot end with a hyphen or contain two consecutive
    #                       hyphens.</p>
    #               </li>
    #            </ul>
    # @option params [String] :node_type
    #   <p>The compute and memory capacity of the nodes in the cluster.</p>
    # @option params [String] :description
    #   <p>A description of the cluster.</p>
    # @option params [Integer] :replication_factor
    #   <p>The number of nodes in the DAX cluster. A replication factor of 1
    #               will create a single-node cluster, without any read replicas. For additional fault
    #               tolerance, you can create a multiple node cluster with one or more read replicas. To do
    #               this, set <code>ReplicationFactor</code> to a number between 3 (one primary and two read
    #               replicas) and 10 (one primary and nine read replicas). <code>If the
    #                   AvailabilityZones</code> parameter is provided, its length must equal the
    #                   <code>ReplicationFactor</code>.</p>
    #            <note>
    #               <p>Amazon Web Services recommends that you have at least two read replicas per
    #                   cluster.</p>
    #            </note>
    # @option params [Array<String>] :availability_zones
    #   <p>The Availability Zones (AZs) in which the cluster nodes will reside after the
    #               cluster has been created or updated. If provided, the length of this list must equal the
    #                   <code>ReplicationFactor</code> parameter. If you omit this parameter, DAX will spread the nodes across Availability Zones for the highest
    #               availability.</p>
    # @option params [String] :subnet_group_name
    #   <p>The name of the subnet group to be used for the replication group.</p>
    #            <important>
    #               <p>DAX clusters can only run in an Amazon VPC environment.
    #                   All of the subnets that you specify in a subnet group must exist in the same
    #                   VPC.</p>
    #            </important>
    # @option params [Array<String>] :security_group_ids
    #   <p>A list of security group IDs to be assigned to each node in the DAX
    #               cluster. (Each of the security group ID is system-generated.)</p>
    #            <p>If this parameter is not specified, DAX assigns the default VPC
    #               security group to each node.</p>
    # @option params [String] :preferred_maintenance_window
    #   <p>Specifies the weekly time range during which maintenance on the DAX cluster is
    #               performed. It is specified as a range in the format ddd:hh24:mi-ddd:hh24:mi (24H Clock
    #               UTC). The minimum maintenance window is a 60 minute period. Valid values for
    #                   <code>ddd</code> are:</p>
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
    #            <p>Example: <code>sun:05:00-sun:09:00</code>
    #            </p>
    #            <note>
    #               <p>If you don't specify a preferred maintenance window when you create or modify a
    #                   cache cluster, DAX assigns a 60-minute maintenance window on a
    #                   randomly selected day of the week.</p>
    #            </note>
    # @option params [String] :notification_topic_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon SNS topic to which
    #               notifications will be sent.</p>
    #            <note>
    #               <p>The Amazon SNS topic owner must be same as the DAX
    #                   cluster owner.</p>
    #            </note>
    # @option params [String] :iam_role_arn
    #   <p>A valid Amazon Resource Name (ARN) that identifies an IAM role. At
    #               runtime, DAX will assume this role and use the role's permissions to
    #               access DynamoDB on your behalf.</p>
    # @option params [String] :parameter_group_name
    #   <p>The parameter group to be associated with the DAX cluster.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A set of tags to associate with the DAX cluster.
    #               </p>
    # @option params [Types::SSESpecification] :sse_specification
    #   <p>Represents the settings used to enable server-side encryption on the
    #               cluster.</p>
    # @option params [String] :cluster_endpoint_encryption_type
    #   <p>The type of encryption the cluster's endpoint should support. Values are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>NONE</code> for no encryption</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TLS</code> for Transport Layer Security</p>
    #               </li>
    #            </ul>
    # @option params [String] :network_type
    #   <p>Specifies the IP protocol(s) the cluster uses for network communications. Values
    #               are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ipv4</code> - The cluster is accessible only through IPv4
    #                       addresses</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ipv6</code> - The cluster is accessible only through IPv6
    #                       addresses</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>dual_stack</code> - The cluster is accessible through both IPv4 and
    #                       IPv6 addresses.</p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>If no explicit <code>NetworkType</code> is provided, the network type is
    #                   derived based on the subnet group's configuration.</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
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
    #         value: "String"
    #       }
    #     ],
    #     sse_specification: {
    #       enabled: false, # required
    #     },
    #     cluster_endpoint_encryption_type: "NONE" # One of: ["NONE", "TLS"],
    #     network_type: "ipv4" # One of: ["ipv4", "ipv6", "dual_stack"]
    #   }
    #   options = {}
    #   response = client.create_cluster(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cluster: {
    #       cluster_name: "String",
    #       description: "String",
    #       cluster_arn: "String",
    #       total_nodes: 1,
    #       active_nodes: 1,
    #       node_type: "String",
    #       status: "String",
    #       cluster_discovery_endpoint: {
    #         address: "String",
    #         port: 1,
    #         url: "String"
    #       },
    #       node_ids_to_remove: ["String"],
    #       nodes: [
    #         {
    #           node_id: "String",
    #           endpoint: {
    #             address: "String",
    #             port: 1,
    #             url: "String"
    #           },
    #           node_create_time: Time.now,
    #           availability_zone: "String",
    #           node_status: "String",
    #           parameter_group_status: "String"
    #         }
    #       ],
    #       preferred_maintenance_window: "String",
    #       notification_configuration: {
    #         topic_arn: "String",
    #         topic_status: "String"
    #       },
    #       subnet_group: "String",
    #       security_groups: [
    #         {
    #           security_group_identifier: "String",
    #           status: "String"
    #         }
    #       ],
    #       iam_role_arn: "String",
    #       parameter_group: {
    #         parameter_group_name: "String",
    #         parameter_apply_status: "String",
    #         node_ids_to_reboot: ["String"]
    #       },
    #       sse_description: {
    #         status: "ENABLING" # One of: ["ENABLING", "ENABLED", "DISABLING", "DISABLED"]
    #       },
    #       cluster_endpoint_encryption_type: "NONE" # One of: ["NONE", "TLS"],
    #       network_type: "ipv4" # One of: ["ipv4", "ipv6", "dual_stack"]
    #     }
    #   }
    # @return [Types::CreateClusterResponse]
    def create_cluster(params = {}, options = {})
      request = build_request(:create_cluster, params)
      request.send_request(options)
    end

    # <p>Creates a new parameter group. A parameter group is a collection of parameters that
    #             you apply to all of the nodes in a DAX cluster.</p>
    # @param [Hash, Types::CreateParameterGroupRequest] params
    # @option params [String] :parameter_group_name
    #   <p>The name of the parameter group to apply to all of the clusters in this replication
    #               group.</p>
    # @option params [String] :description
    #   <p>A description of the parameter group.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     parameter_group_name: "String", # required
    #     description: "String"
    #   }
    #   options = {}
    #   response = client.create_parameter_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     parameter_group: {
    #       parameter_group_name: "String",
    #       description: "String"
    #     }
    #   }
    # @return [Types::CreateParameterGroupResponse]
    def create_parameter_group(params = {}, options = {})
      request = build_request(:create_parameter_group, params)
      request.send_request(options)
    end

    # <p>Creates a new subnet group.</p>
    # @param [Hash, Types::CreateSubnetGroupRequest] params
    # @option params [String] :subnet_group_name
    #   <p>A name for the subnet group. This value is stored as a lowercase string. </p>
    # @option params [String] :description
    #   <p>A description for the subnet group</p>
    # @option params [Array<String>] :subnet_ids
    #   <p>A list of VPC subnet IDs for the subnet group.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     subnet_group_name: "String", # required
    #     description: "String",
    #     subnet_ids: ["String"], # required
    #   }
    #   options = {}
    #   response = client.create_subnet_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     subnet_group: {
    #       subnet_group_name: "String",
    #       description: "String",
    #       vpc_id: "String",
    #       subnets: [
    #         {
    #           subnet_identifier: "String",
    #           subnet_availability_zone: "String",
    #           supported_network_types: ["ipv4" # One of: ["ipv4", "ipv6", "dual_stack"]]
    #         }
    #       ],
    #       supported_network_types: ["ipv4" # One of: ["ipv4", "ipv6", "dual_stack"]]
    #     }
    #   }
    # @return [Types::CreateSubnetGroupResponse]
    def create_subnet_group(params = {}, options = {})
      request = build_request(:create_subnet_group, params)
      request.send_request(options)
    end

    # <p>Removes one or more nodes from a DAX cluster.</p>
    #          <note>
    #             <p>You cannot use <code>DecreaseReplicationFactor</code> to remove the last node
    #                 in a DAX cluster. If you need to do this, use
    #                     <code>DeleteCluster</code> instead.</p>
    #          </note>
    # @param [Hash, Types::DecreaseReplicationFactorRequest] params
    # @option params [String] :cluster_name
    #   <p>The name of the DAX cluster from which you want to remove
    #               nodes.</p>
    # @option params [Integer] :new_replication_factor
    #   <p>The new number of nodes for the DAX cluster.</p>
    # @option params [Array<String>] :availability_zones
    #   <p>The Availability Zone(s) from which to remove nodes.</p>
    # @option params [Array<String>] :node_ids_to_remove
    #   <p>The unique identifiers of the nodes to be removed from the cluster.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_name: "String", # required
    #     new_replication_factor: 1, # required
    #     availability_zones: ["String"],
    #     node_ids_to_remove: ["String"]
    #   }
    #   options = {}
    #   response = client.decrease_replication_factor(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cluster: {
    #       cluster_name: "String",
    #       description: "String",
    #       cluster_arn: "String",
    #       total_nodes: 1,
    #       active_nodes: 1,
    #       node_type: "String",
    #       status: "String",
    #       cluster_discovery_endpoint: {
    #         address: "String",
    #         port: 1,
    #         url: "String"
    #       },
    #       node_ids_to_remove: ["String"],
    #       nodes: [
    #         {
    #           node_id: "String",
    #           endpoint: {
    #             address: "String",
    #             port: 1,
    #             url: "String"
    #           },
    #           node_create_time: Time.now,
    #           availability_zone: "String",
    #           node_status: "String",
    #           parameter_group_status: "String"
    #         }
    #       ],
    #       preferred_maintenance_window: "String",
    #       notification_configuration: {
    #         topic_arn: "String",
    #         topic_status: "String"
    #       },
    #       subnet_group: "String",
    #       security_groups: [
    #         {
    #           security_group_identifier: "String",
    #           status: "String"
    #         }
    #       ],
    #       iam_role_arn: "String",
    #       parameter_group: {
    #         parameter_group_name: "String",
    #         parameter_apply_status: "String",
    #         node_ids_to_reboot: ["String"]
    #       },
    #       sse_description: {
    #         status: "ENABLING" # One of: ["ENABLING", "ENABLED", "DISABLING", "DISABLED"]
    #       },
    #       cluster_endpoint_encryption_type: "NONE" # One of: ["NONE", "TLS"],
    #       network_type: "ipv4" # One of: ["ipv4", "ipv6", "dual_stack"]
    #     }
    #   }
    # @return [Types::DecreaseReplicationFactorResponse]
    def decrease_replication_factor(params = {}, options = {})
      request = build_request(:decrease_replication_factor, params)
      request.send_request(options)
    end

    # <p>Deletes a previously provisioned DAX cluster.
    #                 <i>DeleteCluster</i> deletes all associated nodes, node endpoints and
    #             the DAX cluster itself. When you receive a successful response from this
    #             action, DAX immediately begins deleting the cluster; you cannot cancel or
    #             revert this action.</p>
    # @param [Hash, Types::DeleteClusterRequest] params
    # @option params [String] :cluster_name
    #   <p>The name of the cluster to be deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_name: "String", # required
    #   }
    #   options = {}
    #   response = client.delete_cluster(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cluster: {
    #       cluster_name: "String",
    #       description: "String",
    #       cluster_arn: "String",
    #       total_nodes: 1,
    #       active_nodes: 1,
    #       node_type: "String",
    #       status: "String",
    #       cluster_discovery_endpoint: {
    #         address: "String",
    #         port: 1,
    #         url: "String"
    #       },
    #       node_ids_to_remove: ["String"],
    #       nodes: [
    #         {
    #           node_id: "String",
    #           endpoint: {
    #             address: "String",
    #             port: 1,
    #             url: "String"
    #           },
    #           node_create_time: Time.now,
    #           availability_zone: "String",
    #           node_status: "String",
    #           parameter_group_status: "String"
    #         }
    #       ],
    #       preferred_maintenance_window: "String",
    #       notification_configuration: {
    #         topic_arn: "String",
    #         topic_status: "String"
    #       },
    #       subnet_group: "String",
    #       security_groups: [
    #         {
    #           security_group_identifier: "String",
    #           status: "String"
    #         }
    #       ],
    #       iam_role_arn: "String",
    #       parameter_group: {
    #         parameter_group_name: "String",
    #         parameter_apply_status: "String",
    #         node_ids_to_reboot: ["String"]
    #       },
    #       sse_description: {
    #         status: "ENABLING" # One of: ["ENABLING", "ENABLED", "DISABLING", "DISABLED"]
    #       },
    #       cluster_endpoint_encryption_type: "NONE" # One of: ["NONE", "TLS"],
    #       network_type: "ipv4" # One of: ["ipv4", "ipv6", "dual_stack"]
    #     }
    #   }
    # @return [Types::DeleteClusterResponse]
    def delete_cluster(params = {}, options = {})
      request = build_request(:delete_cluster, params)
      request.send_request(options)
    end

    # <p>Deletes the specified parameter group. You cannot delete a parameter group if it is
    #             associated with any DAX clusters.</p>
    # @param [Hash, Types::DeleteParameterGroupRequest] params
    # @option params [String] :parameter_group_name
    #   <p>The name of the parameter group to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     parameter_group_name: "String", # required
    #   }
    #   options = {}
    #   response = client.delete_parameter_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     deletion_message: "String"
    #   }
    # @return [Types::DeleteParameterGroupResponse]
    def delete_parameter_group(params = {}, options = {})
      request = build_request(:delete_parameter_group, params)
      request.send_request(options)
    end

    # <p>Deletes a subnet group.</p>
    #          <note>
    #             <p>You cannot delete a subnet group if it is associated with any DAX
    #                 clusters.</p>
    #          </note>
    # @param [Hash, Types::DeleteSubnetGroupRequest] params
    # @option params [String] :subnet_group_name
    #   <p>The name of the subnet group to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     subnet_group_name: "String", # required
    #   }
    #   options = {}
    #   response = client.delete_subnet_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     deletion_message: "String"
    #   }
    # @return [Types::DeleteSubnetGroupResponse]
    def delete_subnet_group(params = {}, options = {})
      request = build_request(:delete_subnet_group, params)
      request.send_request(options)
    end

    # <p>Returns information about all provisioned DAX clusters if no cluster identifier is
    #             specified, or about a specific DAX cluster if a cluster identifier is
    #             supplied.</p>
    #          <p>If the cluster is in the CREATING state, only cluster level information will be
    #             displayed until all of the nodes are successfully provisioned.</p>
    #          <p>If the cluster is in the DELETING state, only cluster level information will be
    #             displayed.</p>
    #          <p>If nodes are currently being added to the DAX cluster, node endpoint information
    #             and creation time for the additional nodes will not be displayed until they are
    #             completely provisioned. When the DAX cluster state is
    #                 <i>available</i>, the cluster is ready for use.</p>
    #          <p>If nodes are currently being removed from the DAX cluster, no
    #             endpoint information for the removed nodes is displayed.</p>
    # @param [Hash, Types::DescribeClustersRequest] params
    # @option params [Array<String>] :cluster_names
    #   <p>The names of the DAX clusters being described.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to include in the response. If more results exist
    #               than the specified <code>MaxResults</code> value, a token is included in the response so
    #               that the remaining results can be retrieved.</p>
    #            <p>The value for <code>MaxResults</code> must be between 20 and 100.</p>
    # @option params [String] :next_token
    #   <p>An optional token returned from a prior request. Use this token for pagination of
    #               results from this action. If this parameter is specified, the response includes only
    #               results beyond the token, up to the value specified by
    #               <code>MaxResults</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_names: ["String"],
    #     max_results: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.describe_clusters(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "String",
    #     clusters: [
    #       {
    #         cluster_name: "String",
    #         description: "String",
    #         cluster_arn: "String",
    #         total_nodes: 1,
    #         active_nodes: 1,
    #         node_type: "String",
    #         status: "String",
    #         cluster_discovery_endpoint: {
    #           address: "String",
    #           port: 1,
    #           url: "String"
    #         },
    #         node_ids_to_remove: ["String"],
    #         nodes: [
    #           {
    #             node_id: "String",
    #             endpoint: {
    #               address: "String",
    #               port: 1,
    #               url: "String"
    #             },
    #             node_create_time: Time.now,
    #             availability_zone: "String",
    #             node_status: "String",
    #             parameter_group_status: "String"
    #           }
    #         ],
    #         preferred_maintenance_window: "String",
    #         notification_configuration: {
    #           topic_arn: "String",
    #           topic_status: "String"
    #         },
    #         subnet_group: "String",
    #         security_groups: [
    #           {
    #             security_group_identifier: "String",
    #             status: "String"
    #           }
    #         ],
    #         iam_role_arn: "String",
    #         parameter_group: {
    #           parameter_group_name: "String",
    #           parameter_apply_status: "String",
    #           node_ids_to_reboot: ["String"]
    #         },
    #         sse_description: {
    #           status: "ENABLING" # One of: ["ENABLING", "ENABLED", "DISABLING", "DISABLED"]
    #         },
    #         cluster_endpoint_encryption_type: "NONE" # One of: ["NONE", "TLS"],
    #         network_type: "ipv4" # One of: ["ipv4", "ipv6", "dual_stack"]
    #       }
    #     ]
    #   }
    # @return [Types::DescribeClustersResponse]
    def describe_clusters(params = {}, options = {})
      request = build_request(:describe_clusters, params)
      request.send_request(options)
    end

    # <p>Returns the default system parameter information for the DAX caching
    #             software.</p>
    # @param [Hash, Types::DescribeDefaultParametersRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to include in the response. If more results exist
    #               than the specified <code>MaxResults</code> value, a token is included in the response so
    #               that the remaining results can be retrieved.</p>
    #            <p>The value for <code>MaxResults</code> must be between 20 and 100.</p>
    # @option params [String] :next_token
    #   <p>An optional token returned from a prior request. Use this token for pagination of
    #               results from this action. If this parameter is specified, the response includes only
    #               results beyond the token, up to the value specified by
    #               <code>MaxResults</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.describe_default_parameters(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "String",
    #     parameters: [
    #       {
    #         parameter_name: "String",
    #         parameter_type: "DEFAULT" # One of: ["DEFAULT", "NODE_TYPE_SPECIFIC"],
    #         parameter_value: "String",
    #         node_type_specific_values: [
    #           {
    #             node_type: "String",
    #             value: "String"
    #           }
    #         ],
    #         description: "String",
    #         source: "String",
    #         data_type: "String",
    #         allowed_values: "String",
    #         is_modifiable: "TRUE" # One of: ["TRUE", "FALSE", "CONDITIONAL"],
    #         change_type: "IMMEDIATE" # One of: ["IMMEDIATE", "REQUIRES_REBOOT"]
    #       }
    #     ]
    #   }
    # @return [Types::DescribeDefaultParametersResponse]
    def describe_default_parameters(params = {}, options = {})
      request = build_request(:describe_default_parameters, params)
      request.send_request(options)
    end

    # <p>Returns events related to DAX clusters and parameter groups. You can
    #             obtain events specific to a particular DAX cluster or parameter group by
    #             providing the name as a parameter.</p>
    #          <p>By default, only the events occurring within the last 24 hours are returned;
    #             however, you can retrieve up to 14 days' worth of events if necessary.</p>
    # @param [Hash, Types::DescribeEventsRequest] params
    # @option params [String] :source_name
    #   <p>The identifier of the event source for which events will be returned. If not
    #               specified, then all sources are included in the response.</p>
    # @option params [String] :source_type
    #   <p>The event source to retrieve events for. If no value is specified, all events are
    #               returned.</p>
    # @option params [Time] :start_time
    #   <p>The beginning of the time interval to retrieve events for, specified in ISO 8601
    #               format.</p>
    # @option params [Time] :end_time
    #   <p>The end of the time interval for which to retrieve events, specified in ISO 8601
    #               format.</p>
    # @option params [Integer] :duration
    #   <p>The number of minutes' worth of events to retrieve.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to include in the response. If more results exist
    #               than the specified <code>MaxResults</code> value, a token is included in the response so
    #               that the remaining results can be retrieved.</p>
    #            <p>The value for <code>MaxResults</code> must be between 20 and 100.</p>
    # @option params [String] :next_token
    #   <p>An optional token returned from a prior request. Use this token for pagination of
    #               results from this action. If this parameter is specified, the response includes only
    #               results beyond the token, up to the value specified by
    #               <code>MaxResults</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     source_name: "String",
    #     source_type: "CLUSTER" # One of: ["CLUSTER", "PARAMETER_GROUP", "SUBNET_GROUP"],
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     duration: 1,
    #     max_results: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.describe_events(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "String",
    #     events: [
    #       {
    #         source_name: "String",
    #         source_type: "CLUSTER" # One of: ["CLUSTER", "PARAMETER_GROUP", "SUBNET_GROUP"],
    #         message: "String",
    #         date: Time.now
    #       }
    #     ]
    #   }
    # @return [Types::DescribeEventsResponse]
    def describe_events(params = {}, options = {})
      request = build_request(:describe_events, params)
      request.send_request(options)
    end

    # <p>Returns a list of parameter group descriptions. If a parameter group name is
    #             specified, the list will contain only the descriptions for that group.</p>
    # @param [Hash, Types::DescribeParameterGroupsRequest] params
    # @option params [Array<String>] :parameter_group_names
    #   <p>The names of the parameter groups.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to include in the response. If more results exist
    #               than the specified <code>MaxResults</code> value, a token is included in the response so
    #               that the remaining results can be retrieved.</p>
    #            <p>The value for <code>MaxResults</code> must be between 20 and 100.</p>
    # @option params [String] :next_token
    #   <p>An optional token returned from a prior request. Use this token for pagination of
    #               results from this action. If this parameter is specified, the response includes only
    #               results beyond the token, up to the value specified by
    #               <code>MaxResults</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     parameter_group_names: ["String"],
    #     max_results: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.describe_parameter_groups(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "String",
    #     parameter_groups: [
    #       {
    #         parameter_group_name: "String",
    #         description: "String"
    #       }
    #     ]
    #   }
    # @return [Types::DescribeParameterGroupsResponse]
    def describe_parameter_groups(params = {}, options = {})
      request = build_request(:describe_parameter_groups, params)
      request.send_request(options)
    end

    # <p>Returns the detailed parameter list for a particular parameter group.</p>
    # @param [Hash, Types::DescribeParametersRequest] params
    # @option params [String] :parameter_group_name
    #   <p>The name of the parameter group.</p>
    # @option params [String] :source
    #   <p>How the parameter is defined. For example, <code>system</code> denotes a
    #               system-defined parameter.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to include in the response. If more results exist
    #               than the specified <code>MaxResults</code> value, a token is included in the response so
    #               that the remaining results can be retrieved.</p>
    #            <p>The value for <code>MaxResults</code> must be between 20 and 100.</p>
    # @option params [String] :next_token
    #   <p>An optional token returned from a prior request. Use this token for pagination of
    #               results from this action. If this parameter is specified, the response includes only
    #               results beyond the token, up to the value specified by
    #               <code>MaxResults</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     parameter_group_name: "String", # required
    #     source: "String",
    #     max_results: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.describe_parameters(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "String",
    #     parameters: [
    #       {
    #         parameter_name: "String",
    #         parameter_type: "DEFAULT" # One of: ["DEFAULT", "NODE_TYPE_SPECIFIC"],
    #         parameter_value: "String",
    #         node_type_specific_values: [
    #           {
    #             node_type: "String",
    #             value: "String"
    #           }
    #         ],
    #         description: "String",
    #         source: "String",
    #         data_type: "String",
    #         allowed_values: "String",
    #         is_modifiable: "TRUE" # One of: ["TRUE", "FALSE", "CONDITIONAL"],
    #         change_type: "IMMEDIATE" # One of: ["IMMEDIATE", "REQUIRES_REBOOT"]
    #       }
    #     ]
    #   }
    # @return [Types::DescribeParametersResponse]
    def describe_parameters(params = {}, options = {})
      request = build_request(:describe_parameters, params)
      request.send_request(options)
    end

    # <p>Returns a list of subnet group descriptions. If a subnet group name is specified,
    #             the list will contain only the description of that group.</p>
    # @param [Hash, Types::DescribeSubnetGroupsRequest] params
    # @option params [Array<String>] :subnet_group_names
    #   <p>The name of the subnet group.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to include in the response. If more results exist
    #               than the specified <code>MaxResults</code> value, a token is included in the response so
    #               that the remaining results can be retrieved.</p>
    #            <p>The value for <code>MaxResults</code> must be between 20 and 100.</p>
    # @option params [String] :next_token
    #   <p>An optional token returned from a prior request. Use this token for pagination of
    #               results from this action. If this parameter is specified, the response includes only
    #               results beyond the token, up to the value specified by
    #               <code>MaxResults</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     subnet_group_names: ["String"],
    #     max_results: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.describe_subnet_groups(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "String",
    #     subnet_groups: [
    #       {
    #         subnet_group_name: "String",
    #         description: "String",
    #         vpc_id: "String",
    #         subnets: [
    #           {
    #             subnet_identifier: "String",
    #             subnet_availability_zone: "String",
    #             supported_network_types: ["ipv4" # One of: ["ipv4", "ipv6", "dual_stack"]]
    #           }
    #         ],
    #         supported_network_types: ["ipv4" # One of: ["ipv4", "ipv6", "dual_stack"]]
    #       }
    #     ]
    #   }
    # @return [Types::DescribeSubnetGroupsResponse]
    def describe_subnet_groups(params = {}, options = {})
      request = build_request(:describe_subnet_groups, params)
      request.send_request(options)
    end

    # <p>Adds one or more nodes to a DAX cluster.</p>
    # @param [Hash, Types::IncreaseReplicationFactorRequest] params
    # @option params [String] :cluster_name
    #   <p>The name of the DAX cluster that will receive additional nodes.</p>
    # @option params [Integer] :new_replication_factor
    #   <p>The new number of nodes for the DAX cluster.</p>
    # @option params [Array<String>] :availability_zones
    #   <p>The Availability Zones (AZs) in which the cluster nodes will be created. All nodes
    #               belonging to the cluster are placed in these Availability Zones. Use this parameter if
    #               you want to distribute the nodes across multiple AZs.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_name: "String", # required
    #     new_replication_factor: 1, # required
    #     availability_zones: ["String"]
    #   }
    #   options = {}
    #   response = client.increase_replication_factor(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cluster: {
    #       cluster_name: "String",
    #       description: "String",
    #       cluster_arn: "String",
    #       total_nodes: 1,
    #       active_nodes: 1,
    #       node_type: "String",
    #       status: "String",
    #       cluster_discovery_endpoint: {
    #         address: "String",
    #         port: 1,
    #         url: "String"
    #       },
    #       node_ids_to_remove: ["String"],
    #       nodes: [
    #         {
    #           node_id: "String",
    #           endpoint: {
    #             address: "String",
    #             port: 1,
    #             url: "String"
    #           },
    #           node_create_time: Time.now,
    #           availability_zone: "String",
    #           node_status: "String",
    #           parameter_group_status: "String"
    #         }
    #       ],
    #       preferred_maintenance_window: "String",
    #       notification_configuration: {
    #         topic_arn: "String",
    #         topic_status: "String"
    #       },
    #       subnet_group: "String",
    #       security_groups: [
    #         {
    #           security_group_identifier: "String",
    #           status: "String"
    #         }
    #       ],
    #       iam_role_arn: "String",
    #       parameter_group: {
    #         parameter_group_name: "String",
    #         parameter_apply_status: "String",
    #         node_ids_to_reboot: ["String"]
    #       },
    #       sse_description: {
    #         status: "ENABLING" # One of: ["ENABLING", "ENABLED", "DISABLING", "DISABLED"]
    #       },
    #       cluster_endpoint_encryption_type: "NONE" # One of: ["NONE", "TLS"],
    #       network_type: "ipv4" # One of: ["ipv4", "ipv6", "dual_stack"]
    #     }
    #   }
    # @return [Types::IncreaseReplicationFactorResponse]
    def increase_replication_factor(params = {}, options = {})
      request = build_request(:increase_replication_factor, params)
      request.send_request(options)
    end

    # <p>List all of the tags for a DAX cluster. You can call
    #                 <code>ListTags</code> up to 10 times per second, per account.</p>
    # @param [Hash, Types::ListTagsRequest] params
    # @option params [String] :resource_name
    #   <p>The name of the DAX resource to which the tags belong.</p>
    # @option params [String] :next_token
    #   <p>An optional token returned from a prior request. Use this token for pagination of
    #               results from this action. If this parameter is specified, the response includes only
    #               results beyond the token.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_name: "String", # required
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.list_tags(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String"
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListTagsResponse]
    def list_tags(params = {}, options = {})
      request = build_request(:list_tags, params)
      request.send_request(options)
    end

    # <p>Reboots a single node of a DAX cluster. The reboot action takes
    #             place as soon as possible. During the reboot, the node status is set to
    #             REBOOTING.</p>
    #          <note>
    #             <p>
    #                <code>RebootNode</code> restarts the DAX engine process and does not remove the
    #                 contents of the cache.</p>
    #          </note>
    # @param [Hash, Types::RebootNodeRequest] params
    # @option params [String] :cluster_name
    #   <p>The name of the DAX cluster containing the node to be
    #               rebooted.</p>
    # @option params [String] :node_id
    #   <p>The system-assigned ID of the node to be rebooted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_name: "String", # required
    #     node_id: "String", # required
    #   }
    #   options = {}
    #   response = client.reboot_node(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cluster: {
    #       cluster_name: "String",
    #       description: "String",
    #       cluster_arn: "String",
    #       total_nodes: 1,
    #       active_nodes: 1,
    #       node_type: "String",
    #       status: "String",
    #       cluster_discovery_endpoint: {
    #         address: "String",
    #         port: 1,
    #         url: "String"
    #       },
    #       node_ids_to_remove: ["String"],
    #       nodes: [
    #         {
    #           node_id: "String",
    #           endpoint: {
    #             address: "String",
    #             port: 1,
    #             url: "String"
    #           },
    #           node_create_time: Time.now,
    #           availability_zone: "String",
    #           node_status: "String",
    #           parameter_group_status: "String"
    #         }
    #       ],
    #       preferred_maintenance_window: "String",
    #       notification_configuration: {
    #         topic_arn: "String",
    #         topic_status: "String"
    #       },
    #       subnet_group: "String",
    #       security_groups: [
    #         {
    #           security_group_identifier: "String",
    #           status: "String"
    #         }
    #       ],
    #       iam_role_arn: "String",
    #       parameter_group: {
    #         parameter_group_name: "String",
    #         parameter_apply_status: "String",
    #         node_ids_to_reboot: ["String"]
    #       },
    #       sse_description: {
    #         status: "ENABLING" # One of: ["ENABLING", "ENABLED", "DISABLING", "DISABLED"]
    #       },
    #       cluster_endpoint_encryption_type: "NONE" # One of: ["NONE", "TLS"],
    #       network_type: "ipv4" # One of: ["ipv4", "ipv6", "dual_stack"]
    #     }
    #   }
    # @return [Types::RebootNodeResponse]
    def reboot_node(params = {}, options = {})
      request = build_request(:reboot_node, params)
      request.send_request(options)
    end

    # <p>Associates a set of tags with a DAX resource.
    #              You can call <code>TagResource</code> up to
    #             5 times per second, per account. </p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_name
    #   <p>The name of the DAX resource to which tags should be
    #               added.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags to be assigned to the DAX resource. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_name: "String", # required
    #     tags: [ # required
    #       {
    #         key: "String",
    #         value: "String"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.tag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String"
    #       }
    #     ]
    #   }
    # @return [Types::TagResourceResponse]
    def tag_resource(params = {}, options = {})
      request = build_request(:tag_resource, params)
      request.send_request(options)
    end

    # <p>Removes the association of tags from a DAX resource. You can call
    #                 <code>UntagResource</code> up to 5 times per second, per account. </p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_name
    #   <p>The name of the DAX resource from which the tags should be
    #               removed.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>A list of tag keys. If the DAX cluster has any tags with these keys,
    #               then the tags are removed from the cluster.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_name: "String", # required
    #     tag_keys: ["String"], # required
    #   }
    #   options = {}
    #   response = client.untag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String"
    #       }
    #     ]
    #   }
    # @return [Types::UntagResourceResponse]
    def untag_resource(params = {}, options = {})
      request = build_request(:untag_resource, params)
      request.send_request(options)
    end

    # <p>Modifies the settings for a DAX cluster. You can use this action to
    #             change one or more cluster configuration parameters by specifying the parameters and the
    #             new values.</p>
    # @param [Hash, Types::UpdateClusterRequest] params
    # @option params [String] :cluster_name
    #   <p>The name of the DAX cluster to be modified.</p>
    # @option params [String] :description
    #   <p>A description of the changes being made to the cluster.</p>
    # @option params [String] :preferred_maintenance_window
    #   <p>A range of time when maintenance of DAX cluster software will be performed. For
    #               example: <code>sun:01:00-sun:09:00</code>. Cluster maintenance normally takes less than
    #               30 minutes, and is performed automatically within the maintenance window.</p>
    # @option params [String] :notification_topic_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the topic.</p>
    # @option params [String] :notification_topic_status
    #   <p>The current state of the topic. A value of “active” means that notifications will
    #               be sent to the topic. A value of “inactive” means that notifications will not be sent to
    #               the topic.</p>
    # @option params [String] :parameter_group_name
    #   <p>The name of a parameter group for this cluster.</p>
    # @option params [Array<String>] :security_group_ids
    #   <p>A list of user-specified security group IDs to be assigned to each node in the DAX
    #               cluster. If this parameter is not specified, DAX assigns the default VPC security group
    #               to each node.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_name: "String", # required
    #     description: "String",
    #     preferred_maintenance_window: "String",
    #     notification_topic_arn: "String",
    #     notification_topic_status: "String",
    #     parameter_group_name: "String",
    #     security_group_ids: ["String"]
    #   }
    #   options = {}
    #   response = client.update_cluster(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cluster: {
    #       cluster_name: "String",
    #       description: "String",
    #       cluster_arn: "String",
    #       total_nodes: 1,
    #       active_nodes: 1,
    #       node_type: "String",
    #       status: "String",
    #       cluster_discovery_endpoint: {
    #         address: "String",
    #         port: 1,
    #         url: "String"
    #       },
    #       node_ids_to_remove: ["String"],
    #       nodes: [
    #         {
    #           node_id: "String",
    #           endpoint: {
    #             address: "String",
    #             port: 1,
    #             url: "String"
    #           },
    #           node_create_time: Time.now,
    #           availability_zone: "String",
    #           node_status: "String",
    #           parameter_group_status: "String"
    #         }
    #       ],
    #       preferred_maintenance_window: "String",
    #       notification_configuration: {
    #         topic_arn: "String",
    #         topic_status: "String"
    #       },
    #       subnet_group: "String",
    #       security_groups: [
    #         {
    #           security_group_identifier: "String",
    #           status: "String"
    #         }
    #       ],
    #       iam_role_arn: "String",
    #       parameter_group: {
    #         parameter_group_name: "String",
    #         parameter_apply_status: "String",
    #         node_ids_to_reboot: ["String"]
    #       },
    #       sse_description: {
    #         status: "ENABLING" # One of: ["ENABLING", "ENABLED", "DISABLING", "DISABLED"]
    #       },
    #       cluster_endpoint_encryption_type: "NONE" # One of: ["NONE", "TLS"],
    #       network_type: "ipv4" # One of: ["ipv4", "ipv6", "dual_stack"]
    #     }
    #   }
    # @return [Types::UpdateClusterResponse]
    def update_cluster(params = {}, options = {})
      request = build_request(:update_cluster, params)
      request.send_request(options)
    end

    # <p>Modifies the parameters of a parameter group. You can modify up to 20 parameters in
    #             a single request by submitting a list parameter name and value pairs.</p>
    # @param [Hash, Types::UpdateParameterGroupRequest] params
    # @option params [String] :parameter_group_name
    #   <p>The name of the parameter group.</p>
    # @option params [Array<Types::ParameterNameValue>] :parameter_name_values
    #   <p>An array of name-value pairs for the parameters in the group. Each element in the
    #               array represents a single parameter.</p>
    #            <note>
    #               <p>
    #                  <code>record-ttl-millis</code> and <code>query-ttl-millis</code> are the only
    #                   supported parameter names. For more details, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/DAX.cluster-management.html#DAX.cluster-management.custom-settings.ttl">Configuring TTL Settings</a>.</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     parameter_group_name: "String", # required
    #     parameter_name_values: [ # required
    #       {
    #         parameter_name: "String",
    #         parameter_value: "String"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_parameter_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     parameter_group: {
    #       parameter_group_name: "String",
    #       description: "String"
    #     }
    #   }
    # @return [Types::UpdateParameterGroupResponse]
    def update_parameter_group(params = {}, options = {})
      request = build_request(:update_parameter_group, params)
      request.send_request(options)
    end

    # <p>Modifies an existing subnet group.</p>
    # @param [Hash, Types::UpdateSubnetGroupRequest] params
    # @option params [String] :subnet_group_name
    #   <p>The name of the subnet group.</p>
    # @option params [String] :description
    #   <p>A description of the subnet group.</p>
    # @option params [Array<String>] :subnet_ids
    #   <p>A list of subnet IDs in the subnet group.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     subnet_group_name: "String", # required
    #     description: "String",
    #     subnet_ids: ["String"]
    #   }
    #   options = {}
    #   response = client.update_subnet_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     subnet_group: {
    #       subnet_group_name: "String",
    #       description: "String",
    #       vpc_id: "String",
    #       subnets: [
    #         {
    #           subnet_identifier: "String",
    #           subnet_availability_zone: "String",
    #           supported_network_types: ["ipv4" # One of: ["ipv4", "ipv6", "dual_stack"]]
    #         }
    #       ],
    #       supported_network_types: ["ipv4" # One of: ["ipv4", "ipv6", "dual_stack"]]
    #     }
    #   }
    # @return [Types::UpdateSubnetGroupResponse]
    def update_subnet_group(params = {}, options = {})
      request = build_request(:update_subnet_group, params)
      request.send_request(options)
    end

    # Polls an API operation until a resource enters a desired state.
    #
    # ## Basic Usage
    #
    # A waiter will call an API operation until:
    #
    # * It is successful
    # * It enters a terminal state
    # * It reaches the maximum wait time allowed
    #
    # In between attempts, the waiter will sleep.
    #
    #     # polls in a loop, sleeping between attempts
    #     client.wait_until(waiter_name, params, options)
    #
    # ## Configuration
    #
    # You must configure the maximum amount of time in seconds a
    # waiter should wait for. You may also configure the minimum
    # and maximum amount of time in seconds to delay between
    # retries. You can pass these configuration as the final
    # arguments hash.
    #
    #     weather = Weather::Client.new
    #
    #     # poll for a maximum of 25 seconds
    #     weather.wait_until(:forecast_exists, { forecast_id: '1' }, {
    #       max_wait_time: 25,
    #       min_delay: 2,
    #       max_delay: 10
    #     })
    #
    # ## Handling Errors
    #
    # When a waiter is unsuccessful, it will raise an error.
    # All the failure errors extend from
    # {Smithy::Client::Waiters::WaiterFailed}.
    #
    #     weather = Weather::Client.new
    #     begin
    #       weather.wait_until(:forecast_exists, { forecast_id: '1' }, max_wait_time: 60)
    #     rescue Smithy::Client::Waiters::WaiterFailed
    #       # resource did not enter the desired state in time
    #     end
    #
    # @param [Symbol] waiter_name
    # @param [Hash] params ({})
    # @param [Hash] options ({})
    # @option options [Integer] :max_wait_time
    # @option options [Integer] :min_delay
    # @option options [Integer] :max_delay
    # @return [nil] Returns `nil` if the waiter was successful.
    # @raise [FailureStateError] Raised when the waiter terminates
    #   because the waiter has entered a state that it will not transition
    #   out of, preventing success.
    # @raise [MaxWaitTimeExceededError] Raised when the configured
    #   maximum wait time is reached and the waiter is not yet successful.
    # @raise [UnexpectedError] Raised when an error that is not
    #   expected is encountered while polling for a resource.
    # @raise [NoSuchWaiterError] Raised when you request to wait
    #   for an unknown state.
    def wait_until(waiter_name, params = {}, options = {})
      waiter(waiter_name, options).wait(params)
    end

    # @api private
    def build_request(operation_name, params)
      handlers = @handlers.for(operation_name)
      context = Smithy::Client::HandlerContext.new(
        operation_name: operation_name,
        operation: config.service.operation(operation_name),
        client: self,
        config: config,
        params: params
      )
      context[:gem_name] = 'aws-sdk-dax'
      context[:gem_version] = '2.0.0.pre0'
      Smithy::Client::Request.new(handlers: handlers, context: context)
    end

    private

    def waiters
      {}
    end

    class << self
      # @api private
      attr_reader :identifier

      # @api private
      def auth_parameters
        AuthParameters
      end

      # @api private
      def auth_resolver
        AuthResolver
      end

      # @api private
      def errors_module
        Errors
      end
    end
  end
end
