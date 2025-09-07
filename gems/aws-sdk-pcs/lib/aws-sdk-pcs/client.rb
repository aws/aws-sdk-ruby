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
require 'smithy-client/plugins/stub_responses'
require 'aws-sdk-core/plugins/sigv4'
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/json_rpc_protocol'

module Aws::PCS
  # An API client for Aws::PCS.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AWSParallelComputingService

    add_plugin(::Aws::PCS::Plugins::Endpoint)
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
    add_plugin(Smithy::Client::Plugins::StubResponses)
    add_plugin(Aws::Core::Plugins::SigV4)
    add_plugin(Aws::Core::Plugins::SharedConfig)
    add_plugin(Aws::Core::Plugins::UserAgent)
    add_plugin(Aws::Core::Plugins::JsonRpcProtocol)

    # @param options [Hash] Client options
    # @option options [String] :access_key_id
    # @option options [String] :account_id
    # @option options [Boolean] :adaptive_retry_wait_to_fill (true)
    #  When true, the request will sleep until there is sufficient client side capacity to retry
    #  the request. When false, the request will raise a `CapacityNotAvailableError` and will
    #  not retry instead of sleeping.
    # @option options [#resolve(context)] :auth_resolver (AuthResolver.new)
    #  An object that resolves authentication schemes for request signing
    # @option options [Boolean] :convert_params (true)
    #  When `true`, request parameters are coerced into the required types.
    # @option options [#identity] :credentials
    #  The credentials provider used to resolve credentials. Any object that responds to `#identity`
    #  and returns a {Aws::Core::Credentials}.
    # @option options [Boolean] :disable_host_prefix_injection
    #  When `true`, the SDK will not prepend the modeled host prefix to the endpoint.
    # @option options [Boolean] :disable_request_compression
    #  When `true`, the request body will not be compressed for supported operations.
    # @option options [String] :endpoint
    #  Custom Endpoint
    # @option options [Aws::PCS::EndpointProvider] :endpoint_provider
    #  The endpoint provider used to resolve endpoints. Any object that responds to `#resolve(parameters)`.
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
    #  TODO
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
    # @option options [Boolean] :use_dual_stack_endpoint
    #  TODO
    # @option options [Boolean] :use_fips_endpoint
    #  TODO
    # @option options [Boolean] :validate_params (true)
    #  When `true`, request parameters are validated before sending the request.
    def initialize(*options)
      super
    end

    # <p>Creates a cluster in your account. Amazon Web Services PCS creates the cluster controller in a service-owned account. The cluster controller communicates with the cluster resources in your account. The subnets and security groups for the cluster must already exist before you use this API action.</p> <note> <p>It takes time for Amazon Web Services PCS to create the cluster. The cluster is in a <code>Creating</code> state until it is ready to use. There can only be 1 cluster in a <code>Creating</code> state per Amazon Web Services Region per Amazon Web Services account. <code>CreateCluster</code> fails with a <code>ServiceQuotaExceededException</code> if there is already a cluster in a <code>Creating</code> state.</p> </note>
    # @param [Hash, Types::CreateClusterRequest] params
    # @option params [String] :cluster_name
    #   <p>A name to identify the cluster. Example: <code>MyCluster</code> </p>
    # @option params [Types::SchedulerRequest] :scheduler
    #   <p>The cluster management and job scheduling software associated with the cluster.</p>
    # @option params [String] :size
    #   <p>A value that determines the maximum number of compute nodes in the cluster and the maximum number of jobs (active and queued).</p> <ul> <li> <p> <code>SMALL</code>: 32 compute nodes and 256 jobs</p> </li> <li> <p> <code>MEDIUM</code>: 512 compute nodes and 8192 jobs</p> </li> <li> <p> <code>LARGE</code>: 2048 compute nodes and 16,384 jobs</p> </li> </ul>
    # @option params [Types::NetworkingRequest] :networking
    #   <p>The networking configuration used to set up the cluster's control plane.</p>
    # @option params [Types::ClusterSlurmConfigurationRequest] :slurm_configuration
    #   <p>Additional options related to the Slurm scheduler.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. Idempotency ensures that an API request completes only once. With an idempotent request, if the original request completes successfully, the subsequent retries with the same client token return the result from the original successful request and they have no additional effect. If you don't specify a client token, the CLI and SDK automatically generate 1 for you.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>1 or more tags added to the resource. Each tag consists of a tag key and tag value. The tag value is optional and can be an empty string.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_name: "ClusterName", # required
    #     scheduler: { # required
    #       type: "SLURM" # One of: ["SLURM"], # required
    #       version: "String", # required
    #     },
    #     size: "SMALL" # One of: ["SMALL", "MEDIUM", "LARGE"], # required
    #     networking: { # required
    #       subnet_ids: ["SubnetId"],
    #       security_group_ids: ["SecurityGroupId"],
    #       network_type: "IPV4" # One of: ["IPV4", "IPV6"]
    #     },
    #     slurm_configuration: {
    #       scale_down_idle_time_in_seconds: 1,
    #       slurm_custom_settings: [
    #         {
    #           parameter_name: "String", # required
    #           parameter_value: "String", # required
    #         }
    #       ],
    #       accounting: {
    #         mode: "STANDARD" # One of: ["STANDARD", "NONE"], # required
    #         default_purge_time_in_days: 1
    #       }
    #     },
    #     client_token: "SBClientToken",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_cluster(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cluster: {
    #       name: "String", # required
    #       id: "String", # required
    #       arn: "String", # required
    #       status: "CREATING" # One of: ["CREATING", "ACTIVE", "UPDATING", "DELETING", "CREATE_FAILED", "DELETE_FAILED", "UPDATE_FAILED", "SUSPENDING", "SUSPENDED"], # required
    #       created_at: Time.now, # required
    #       modified_at: Time.now, # required
    #       scheduler: { # required
    #         type: "SLURM" # One of: ["SLURM"], # required
    #         version: "String", # required
    #       },
    #       size: "SMALL" # One of: ["SMALL", "MEDIUM", "LARGE"], # required
    #       slurm_configuration: {
    #         scale_down_idle_time_in_seconds: 1,
    #         slurm_custom_settings: [
    #           {
    #             parameter_name: "String", # required
    #             parameter_value: "String", # required
    #           }
    #         ],
    #         auth_key: {
    #           secret_arn: "String", # required
    #           secret_version: "String", # required
    #         },
    #         accounting: {
    #           mode: "STANDARD" # One of: ["STANDARD", "NONE"], # required
    #           default_purge_time_in_days: 1
    #         }
    #       },
    #       networking: { # required
    #         subnet_ids: ["SubnetId"],
    #         security_group_ids: ["SecurityGroupId"],
    #         network_type: "IPV4" # One of: ["IPV4", "IPV6"]
    #       },
    #       endpoints: [
    #         {
    #           type: "SLURMCTLD" # One of: ["SLURMCTLD", "SLURMDBD"], # required
    #           private_ip_address: "String", # required
    #           public_ip_address: "String",
    #           ipv6_address: "String",
    #           port: "String", # required
    #         }
    #       ],
    #       error_info: [
    #         {
    #           code: "String",
    #           message: "String"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::CreateClusterResponse]
    def create_cluster(params = {}, options = {})
      request = build_request(:create_cluster, params)
      request.send_request(options)
    end

    # <p>Creates a managed set of compute nodes. You associate a compute node group with a cluster through 1 or more Amazon Web Services PCS queues or as part of the login fleet. A compute node group includes the definition of the compute properties and lifecycle management. Amazon Web Services PCS uses the information you provide to this API action to launch compute nodes in your account. You can only specify subnets in the same Amazon VPC as your cluster. You receive billing charges for the compute nodes that Amazon Web Services PCS launches in your account. You must already have a launch template before you call this API. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-launch-templates.html">Launch an instance from a launch template</a> in the <i>Amazon Elastic Compute Cloud User Guide for Linux Instances</i>.</p>
    # @param [Hash, Types::CreateComputeNodeGroupRequest] params
    # @option params [String] :cluster_identifier
    #   <p>The name or ID of the cluster to create a compute node group in.</p>
    # @option params [String] :compute_node_group_name
    #   <p>A name to identify the cluster. Example: <code>MyCluster</code> </p>
    # @option params [String] :ami_id
    #   <p> The ID of the Amazon Machine Image (AMI) that Amazon Web Services PCS uses to launch compute nodes (Amazon EC2 instances). If you don't provide this value, Amazon Web Services PCS uses the AMI ID specified in the custom launch template.</p>
    # @option params [Array<String>] :subnet_ids
    #   <p>The list of subnet IDs where the compute node group launches instances. Subnets must be in the same VPC as the cluster.</p>
    # @option params [String] :purchase_option
    #   <p>Specifies how EC2 instances are purchased on your behalf. Amazon Web Services PCS supports On-Demand and Spot instances. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-purchasing-options.html">Instance purchasing options</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>. If you don't provide this option, it defaults to On-Demand.</p>
    # @option params [Types::CustomLaunchTemplate] :custom_launch_template
    #   <p>An Amazon EC2 launch template Amazon Web Services PCS uses to launch compute nodes.</p>
    # @option params [String] :iam_instance_profile_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM instance profile used to pass an IAM role when launching EC2 instances. The role contained in your instance profile must have the <code>pcs:RegisterComputeNodeGroupInstance</code> permission. The resource identifier of the ARN must start with <code>AWSPCS</code> or it must have <code>/aws-pcs/</code> in its path.</p> <p class="title"> <b>Examples</b> </p> <ul> <li> <p> <code>arn:aws:iam::111122223333:instance-profile/AWSPCS-example-role-1</code> </p> </li> <li> <p> <code>arn:aws:iam::111122223333:instance-profile/aws-pcs/example-role-2</code> </p> </li> </ul>
    # @option params [Types::ScalingConfigurationRequest] :scaling_configuration
    #   <p>Specifies the boundaries of the compute node group auto scaling.</p>
    # @option params [Array<Types::InstanceConfig>] :instance_configs
    #   <p>A list of EC2 instance configurations that Amazon Web Services PCS can provision in the compute node group.</p>
    # @option params [Types::SpotOptions] :spot_options
    #   <p>Additional configuration when you specify <code>SPOT</code> as the <code>purchaseOption</code> for the <code>CreateComputeNodeGroup</code> API action.</p>
    # @option params [Types::ComputeNodeGroupSlurmConfigurationRequest] :slurm_configuration
    #   <p>Additional options related to the Slurm scheduler.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. Idempotency ensures that an API request completes only once. With an idempotent request, if the original request completes successfully, the subsequent retries with the same client token return the result from the original successful request and they have no additional effect. If you don't specify a client token, the CLI and SDK automatically generate 1 for you.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>1 or more tags added to the resource. Each tag consists of a tag key and tag value. The tag value is optional and can be an empty string.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_identifier: "ClusterIdentifier", # required
    #     compute_node_group_name: "ComputeNodeGroupName", # required
    #     ami_id: "AmiId",
    #     subnet_ids: ["String"], # required
    #     purchase_option: "ONDEMAND" # One of: ["ONDEMAND", "SPOT"],
    #     custom_launch_template: { # required
    #       id: "String", # required
    #       version: "String", # required
    #     },
    #     iam_instance_profile_arn: "InstanceProfileArn", # required
    #     scaling_configuration: { # required
    #       min_instance_count: 1, # required
    #       max_instance_count: 1, # required
    #     },
    #     instance_configs: [ # required
    #       {
    #         instance_type: "String"
    #       }
    #     ],
    #     spot_options: {
    #       allocation_strategy: "lowest-price" # One of: ["lowest-price", "capacity-optimized", "price-capacity-optimized"]
    #     },
    #     slurm_configuration: {
    #       slurm_custom_settings: [
    #         {
    #           parameter_name: "String", # required
    #           parameter_value: "String", # required
    #         }
    #       ]
    #     },
    #     client_token: "SBClientToken",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_compute_node_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     compute_node_group: {
    #       name: "ComputeNodeGroupName", # required
    #       id: "String", # required
    #       arn: "String", # required
    #       cluster_id: "String", # required
    #       created_at: Time.now, # required
    #       modified_at: Time.now, # required
    #       status: "CREATING" # One of: ["CREATING", "ACTIVE", "UPDATING", "DELETING", "CREATE_FAILED", "DELETE_FAILED", "UPDATE_FAILED", "DELETED", "SUSPENDING", "SUSPENDED"], # required
    #       ami_id: "AmiId",
    #       subnet_ids: ["SubnetId"], # required
    #       purchase_option: "ONDEMAND" # One of: ["ONDEMAND", "SPOT"],
    #       custom_launch_template: { # required
    #         id: "String", # required
    #         version: "String", # required
    #       },
    #       iam_instance_profile_arn: "InstanceProfileArn", # required
    #       scaling_configuration: { # required
    #         min_instance_count: 1, # required
    #         max_instance_count: 1, # required
    #       },
    #       instance_configs: [ # required
    #         {
    #           instance_type: "String"
    #         }
    #       ],
    #       spot_options: {
    #         allocation_strategy: "lowest-price" # One of: ["lowest-price", "capacity-optimized", "price-capacity-optimized"]
    #       },
    #       slurm_configuration: {
    #         slurm_custom_settings: [
    #           {
    #             parameter_name: "String", # required
    #             parameter_value: "String", # required
    #           }
    #         ]
    #       },
    #       error_info: [
    #         {
    #           code: "String",
    #           message: "String"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::CreateComputeNodeGroupResponse]
    def create_compute_node_group(params = {}, options = {})
      request = build_request(:create_compute_node_group, params)
      request.send_request(options)
    end

    # <p>Creates a job queue. You must associate 1 or more compute node groups with the queue. You can associate 1 compute node group with multiple queues.</p>
    # @param [Hash, Types::CreateQueueRequest] params
    # @option params [String] :cluster_identifier
    #   <p>The name or ID of the cluster for which to create a queue.</p>
    # @option params [String] :queue_name
    #   <p>A name to identify the queue.</p>
    # @option params [Array<Types::ComputeNodeGroupConfiguration>] :compute_node_group_configurations
    #   <p>The list of compute node group configurations to associate with the queue. Queues assign jobs to associated compute node groups.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. Idempotency ensures that an API request completes only once. With an idempotent request, if the original request completes successfully, the subsequent retries with the same client token return the result from the original successful request and they have no additional effect. If you don't specify a client token, the CLI and SDK automatically generate 1 for you.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>1 or more tags added to the resource. Each tag consists of a tag key and tag value. The tag value is optional and can be an empty string.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_identifier: "ClusterIdentifier", # required
    #     queue_name: "QueueName", # required
    #     compute_node_group_configurations: [
    #       {
    #         compute_node_group_id: "String"
    #       }
    #     ],
    #     client_token: "SBClientToken",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_queue(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     queue: {
    #       name: "QueueName", # required
    #       id: "String", # required
    #       arn: "String", # required
    #       cluster_id: "String", # required
    #       created_at: Time.now, # required
    #       modified_at: Time.now, # required
    #       status: "CREATING" # One of: ["CREATING", "ACTIVE", "UPDATING", "DELETING", "CREATE_FAILED", "DELETE_FAILED", "UPDATE_FAILED", "SUSPENDING", "SUSPENDED"], # required
    #       compute_node_group_configurations: [ # required
    #         {
    #           compute_node_group_id: "String"
    #         }
    #       ],
    #       error_info: [
    #         {
    #           code: "String",
    #           message: "String"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::CreateQueueResponse]
    def create_queue(params = {}, options = {})
      request = build_request(:create_queue, params)
      request.send_request(options)
    end

    # <p>Deletes a cluster and all its linked resources. You must delete all queues and compute node groups associated with the cluster before you can delete the cluster.</p>
    # @param [Hash, Types::DeleteClusterRequest] params
    # @option params [String] :cluster_identifier
    #   <p>The name or ID of the cluster to delete.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. Idempotency ensures that an API request completes only once. With an idempotent request, if the original request completes successfully, the subsequent retries with the same client token return the result from the original successful request and they have no additional effect. If you don't specify a client token, the CLI and SDK automatically generate 1 for you.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_identifier: "ClusterIdentifier", # required
    #     client_token: "SBClientToken"
    #   }
    #   options = {}
    #   response = client.delete_cluster(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteClusterResponse]
    def delete_cluster(params = {}, options = {})
      request = build_request(:delete_cluster, params)
      request.send_request(options)
    end

    # <p>Deletes a compute node group. You must delete all queues associated with the compute node group first.</p>
    # @param [Hash, Types::DeleteComputeNodeGroupRequest] params
    # @option params [String] :cluster_identifier
    #   <p>The name or ID of the cluster of the compute node group.</p>
    # @option params [String] :compute_node_group_identifier
    #   <p>The name or ID of the compute node group to delete.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. Idempotency ensures that an API request completes only once. With an idempotent request, if the original request completes successfully, the subsequent retries with the same client token return the result from the original successful request and they have no additional effect. If you don't specify a client token, the CLI and SDK automatically generate 1 for you.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_identifier: "ClusterIdentifier", # required
    #     compute_node_group_identifier: "ComputeNodeGroupIdentifier", # required
    #     client_token: "SBClientToken"
    #   }
    #   options = {}
    #   response = client.delete_compute_node_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteComputeNodeGroupResponse]
    def delete_compute_node_group(params = {}, options = {})
      request = build_request(:delete_compute_node_group, params)
      request.send_request(options)
    end

    # <p>Deletes a job queue. If the compute node group associated with this queue isn't associated with any other queues, Amazon Web Services PCS terminates all the compute nodes for this queue.</p>
    # @param [Hash, Types::DeleteQueueRequest] params
    # @option params [String] :cluster_identifier
    #   <p>The name or ID of the cluster of the queue.</p>
    # @option params [String] :queue_identifier
    #   <p>The name or ID of the queue to delete.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. Idempotency ensures that an API request completes only once. With an idempotent request, if the original request completes successfully, the subsequent retries with the same client token return the result from the original successful request and they have no additional effect. If you don't specify a client token, the CLI and SDK automatically generate 1 for you.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_identifier: "ClusterIdentifier", # required
    #     queue_identifier: "QueueIdentifier", # required
    #     client_token: "SBClientToken"
    #   }
    #   options = {}
    #   response = client.delete_queue(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteQueueResponse]
    def delete_queue(params = {}, options = {})
      request = build_request(:delete_queue, params)
      request.send_request(options)
    end

    # <p>Returns detailed information about a running cluster in your account. This API action provides networking information, endpoint information for communication with the scheduler, and provisioning status.</p>
    # @param [Hash, Types::GetClusterRequest] params
    # @option params [String] :cluster_identifier
    #   <p>The name or ID of the cluster of the queue.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_identifier: "ClusterIdentifier", # required
    #   }
    #   options = {}
    #   response = client.get_cluster(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cluster: {
    #       name: "String", # required
    #       id: "String", # required
    #       arn: "String", # required
    #       status: "CREATING" # One of: ["CREATING", "ACTIVE", "UPDATING", "DELETING", "CREATE_FAILED", "DELETE_FAILED", "UPDATE_FAILED", "SUSPENDING", "SUSPENDED"], # required
    #       created_at: Time.now, # required
    #       modified_at: Time.now, # required
    #       scheduler: { # required
    #         type: "SLURM" # One of: ["SLURM"], # required
    #         version: "String", # required
    #       },
    #       size: "SMALL" # One of: ["SMALL", "MEDIUM", "LARGE"], # required
    #       slurm_configuration: {
    #         scale_down_idle_time_in_seconds: 1,
    #         slurm_custom_settings: [
    #           {
    #             parameter_name: "String", # required
    #             parameter_value: "String", # required
    #           }
    #         ],
    #         auth_key: {
    #           secret_arn: "String", # required
    #           secret_version: "String", # required
    #         },
    #         accounting: {
    #           mode: "STANDARD" # One of: ["STANDARD", "NONE"], # required
    #           default_purge_time_in_days: 1
    #         }
    #       },
    #       networking: { # required
    #         subnet_ids: ["SubnetId"],
    #         security_group_ids: ["SecurityGroupId"],
    #         network_type: "IPV4" # One of: ["IPV4", "IPV6"]
    #       },
    #       endpoints: [
    #         {
    #           type: "SLURMCTLD" # One of: ["SLURMCTLD", "SLURMDBD"], # required
    #           private_ip_address: "String", # required
    #           public_ip_address: "String",
    #           ipv6_address: "String",
    #           port: "String", # required
    #         }
    #       ],
    #       error_info: [
    #         {
    #           code: "String",
    #           message: "String"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::GetClusterResponse]
    def get_cluster(params = {}, options = {})
      request = build_request(:get_cluster, params)
      request.send_request(options)
    end

    # <p>Returns detailed information about a compute node group. This API action provides networking information, EC2 instance type, compute node group status, and scheduler (such as Slurm) configuration.</p>
    # @param [Hash, Types::GetComputeNodeGroupRequest] params
    # @option params [String] :cluster_identifier
    #   <p>The name or ID of the cluster.</p>
    # @option params [String] :compute_node_group_identifier
    #   <p>The name or ID of the compute node group.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_identifier: "ClusterIdentifier", # required
    #     compute_node_group_identifier: "ComputeNodeGroupIdentifier", # required
    #   }
    #   options = {}
    #   response = client.get_compute_node_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     compute_node_group: {
    #       name: "ComputeNodeGroupName", # required
    #       id: "String", # required
    #       arn: "String", # required
    #       cluster_id: "String", # required
    #       created_at: Time.now, # required
    #       modified_at: Time.now, # required
    #       status: "CREATING" # One of: ["CREATING", "ACTIVE", "UPDATING", "DELETING", "CREATE_FAILED", "DELETE_FAILED", "UPDATE_FAILED", "DELETED", "SUSPENDING", "SUSPENDED"], # required
    #       ami_id: "AmiId",
    #       subnet_ids: ["SubnetId"], # required
    #       purchase_option: "ONDEMAND" # One of: ["ONDEMAND", "SPOT"],
    #       custom_launch_template: { # required
    #         id: "String", # required
    #         version: "String", # required
    #       },
    #       iam_instance_profile_arn: "InstanceProfileArn", # required
    #       scaling_configuration: { # required
    #         min_instance_count: 1, # required
    #         max_instance_count: 1, # required
    #       },
    #       instance_configs: [ # required
    #         {
    #           instance_type: "String"
    #         }
    #       ],
    #       spot_options: {
    #         allocation_strategy: "lowest-price" # One of: ["lowest-price", "capacity-optimized", "price-capacity-optimized"]
    #       },
    #       slurm_configuration: {
    #         slurm_custom_settings: [
    #           {
    #             parameter_name: "String", # required
    #             parameter_value: "String", # required
    #           }
    #         ]
    #       },
    #       error_info: [
    #         {
    #           code: "String",
    #           message: "String"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::GetComputeNodeGroupResponse]
    def get_compute_node_group(params = {}, options = {})
      request = build_request(:get_compute_node_group, params)
      request.send_request(options)
    end

    # <p>Returns detailed information about a queue. The information includes the compute node groups that the queue uses to schedule jobs.</p>
    # @param [Hash, Types::GetQueueRequest] params
    # @option params [String] :cluster_identifier
    #   <p>The name or ID of the cluster of the queue.</p>
    # @option params [String] :queue_identifier
    #   <p>The name or ID of the queue.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_identifier: "ClusterIdentifier", # required
    #     queue_identifier: "QueueIdentifier", # required
    #   }
    #   options = {}
    #   response = client.get_queue(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     queue: {
    #       name: "QueueName", # required
    #       id: "String", # required
    #       arn: "String", # required
    #       cluster_id: "String", # required
    #       created_at: Time.now, # required
    #       modified_at: Time.now, # required
    #       status: "CREATING" # One of: ["CREATING", "ACTIVE", "UPDATING", "DELETING", "CREATE_FAILED", "DELETE_FAILED", "UPDATE_FAILED", "SUSPENDING", "SUSPENDED"], # required
    #       compute_node_group_configurations: [ # required
    #         {
    #           compute_node_group_id: "String"
    #         }
    #       ],
    #       error_info: [
    #         {
    #           code: "String",
    #           message: "String"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::GetQueueResponse]
    def get_queue(params = {}, options = {})
      request = build_request(:get_queue, params)
      request.send_request(options)
    end

    # <p>Returns a list of running clusters in your account.</p>
    # @param [Hash, Types::ListClustersRequest] params
    # @option params [String] :next_token
    #   <p>The value of <code>nextToken</code> is a unique pagination token for each page of results returned. If <code>nextToken</code> is returned, there are more results available. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token returns an <code>HTTP 400 InvalidToken</code> error.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results that are returned per call. You can use <code>nextToken</code> to obtain further pages of results. The default is 10 results, and the maximum allowed page size is 100 results. A value of 0 uses the default.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_clusters(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     clusters: [ # required
    #       {
    #         name: "String", # required
    #         id: "String", # required
    #         arn: "String", # required
    #         created_at: Time.now, # required
    #         modified_at: Time.now, # required
    #         status: "CREATING" # One of: ["CREATING", "ACTIVE", "UPDATING", "DELETING", "CREATE_FAILED", "DELETE_FAILED", "UPDATE_FAILED", "SUSPENDING", "SUSPENDED"], # required
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListClustersResponse]
    def list_clusters(params = {}, options = {})
      request = build_request(:list_clusters, params)
      request.send_request(options)
    end

    # <p>Returns a list of all compute node groups associated with a cluster.</p>
    # @param [Hash, Types::ListComputeNodeGroupsRequest] params
    # @option params [String] :cluster_identifier
    #   <p>The name or ID of the cluster to list compute node groups for.</p>
    # @option params [String] :next_token
    #   <p>The value of <code>nextToken</code> is a unique pagination token for each page of results returned. If <code>nextToken</code> is returned, there are more results available. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token returns an <code>HTTP 400 InvalidToken</code> error.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results that are returned per call. You can use <code>nextToken</code> to obtain further pages of results. The default is 10 results, and the maximum allowed page size is 100 results. A value of 0 uses the default.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_identifier: "ClusterIdentifier", # required
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_compute_node_groups(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     compute_node_groups: [ # required
    #       {
    #         name: "ComputeNodeGroupName", # required
    #         id: "String", # required
    #         arn: "String", # required
    #         cluster_id: "String", # required
    #         created_at: Time.now, # required
    #         modified_at: Time.now, # required
    #         status: "CREATING" # One of: ["CREATING", "ACTIVE", "UPDATING", "DELETING", "CREATE_FAILED", "DELETE_FAILED", "UPDATE_FAILED", "DELETED", "SUSPENDING", "SUSPENDED"], # required
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListComputeNodeGroupsResponse]
    def list_compute_node_groups(params = {}, options = {})
      request = build_request(:list_compute_node_groups, params)
      request.send_request(options)
    end

    # <p>Returns a list of all queues associated with a cluster.</p>
    # @param [Hash, Types::ListQueuesRequest] params
    # @option params [String] :cluster_identifier
    #   <p>The name or ID of the cluster to list queues for.</p>
    # @option params [String] :next_token
    #   <p>The value of <code>nextToken</code> is a unique pagination token for each page of results returned. If <code>nextToken</code> is returned, there are more results available. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token returns an <code>HTTP 400 InvalidToken</code> error.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results that are returned per call. You can use <code>nextToken</code> to obtain further pages of results. The default is 10 results, and the maximum allowed page size is 100 results. A value of 0 uses the default.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_identifier: "ClusterIdentifier", # required
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_queues(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     queues: [ # required
    #       {
    #         name: "QueueName", # required
    #         id: "String", # required
    #         arn: "String", # required
    #         cluster_id: "String", # required
    #         created_at: Time.now, # required
    #         modified_at: Time.now, # required
    #         status: "CREATING" # One of: ["CREATING", "ACTIVE", "UPDATING", "DELETING", "CREATE_FAILED", "DELETE_FAILED", "UPDATE_FAILED", "SUSPENDING", "SUSPENDED"], # required
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListQueuesResponse]
    def list_queues(params = {}, options = {})
      request = build_request(:list_queues, params)
      request.send_request(options)
    end

    # <p>Returns a list of all tags on an Amazon Web Services PCS resource.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource for which to list tags.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::ListTagsForResourceResponse]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <important> <p>This API action isn't intended for you to use.</p> </important> <p>Amazon Web Services PCS uses this API action to register the compute nodes it launches in your account.</p>
    # @param [Hash, Types::RegisterComputeNodeGroupInstanceRequest] params
    # @option params [String] :cluster_identifier
    #   <p>The name or ID of the cluster to register the compute node group instance in.</p>
    # @option params [String] :bootstrap_id
    #   <p>The client-generated token to allow for retries.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_identifier: "ClusterIdentifier", # required
    #     bootstrap_id: "BootstrapId", # required
    #   }
    #   options = {}
    #   response = client.register_compute_node_group_instance(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     node_id: "String", # required
    #     shared_secret: "SharedSecret", # required
    #     endpoints: [ # required
    #       {
    #         type: "SLURMCTLD" # One of: ["SLURMCTLD", "SLURMDBD"], # required
    #         private_ip_address: "String", # required
    #         public_ip_address: "String",
    #         ipv6_address: "String",
    #         port: "String", # required
    #       }
    #     ]
    #   }
    # @return [Types::RegisterComputeNodeGroupInstanceResponse]
    def register_compute_node_group_instance(params = {}, options = {})
      request = build_request(:register_compute_node_group_instance, params)
      request.send_request(options)
    end

    # <p>Adds or edits tags on an Amazon Web Services PCS resource. Each tag consists of a tag key and a tag value. The tag key and tag value are case-sensitive strings. The tag value can be an empty (null) string. To add a tag, specify a new tag key and a tag value. To edit a tag, specify an existing tag key and a new tag value.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>1 or more tags added to the resource. Each tag consists of a tag key and tag value. The tag value is optional and can be an empty string.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "Arn", # required
    #     tags: { # required
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.tag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def tag_resource(params = {}, options = {})
      request = build_request(:tag_resource, params)
      request.send_request(options)
    end

    # <p>Deletes tags from an Amazon Web Services PCS resource. To delete a tag, specify the tag key and the Amazon Resource Name (ARN) of the Amazon Web Services PCS resource.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>1 or more tag keys to remove from the resource. Specify only tag keys and not tag values.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "Arn", # required
    #     tag_keys: ["TagKey"], # required
    #   }
    #   options = {}
    #   response = client.untag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def untag_resource(params = {}, options = {})
      request = build_request(:untag_resource, params)
      request.send_request(options)
    end

    # <p>Updates a compute node group. You can update many of the fields related to your compute node group including the configurations for networking, compute nodes, and settings specific to your scheduler (such as Slurm).</p>
    # @param [Hash, Types::UpdateComputeNodeGroupRequest] params
    # @option params [String] :cluster_identifier
    #   <p>The name or ID of the cluster of the compute node group.</p>
    # @option params [String] :compute_node_group_identifier
    #   <p>The name or ID of the compute node group.</p>
    # @option params [String] :ami_id
    #   <p>The ID of the Amazon Machine Image (AMI) that Amazon Web Services PCS uses to launch instances. If not provided, Amazon Web Services PCS uses the AMI ID specified in the custom launch template.</p>
    # @option params [Array<String>] :subnet_ids
    #   <p>The list of subnet IDs where the compute node group provisions instances. The subnets must be in the same VPC as the cluster.</p>
    # @option params [Types::CustomLaunchTemplate] :custom_launch_template
    #   <p>An Amazon EC2 launch template Amazon Web Services PCS uses to launch compute nodes.</p>
    # @option params [String] :purchase_option
    #   <p>Specifies how EC2 instances are purchased on your behalf. Amazon Web Services PCS supports On-Demand and Spot instances. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-purchasing-options.html">Instance purchasing options</a> in the <i>Amazon Elastic Compute Cloud User Guide</i>. If you don't provide this option, it defaults to On-Demand.</p>
    # @option params [Types::SpotOptions] :spot_options
    #   <p>Additional configuration when you specify <code>SPOT</code> as the <code>purchaseOption</code> for the <code>CreateComputeNodeGroup</code> API action.</p>
    # @option params [Types::ScalingConfigurationRequest] :scaling_configuration
    #   <p>Specifies the boundaries of the compute node group auto scaling.</p>
    # @option params [String] :iam_instance_profile_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM instance profile used to pass an IAM role when launching EC2 instances. The role contained in your instance profile must have the <code>pcs:RegisterComputeNodeGroupInstance</code> permission. The resource identifier of the ARN must start with <code>AWSPCS</code> or it must have <code>/aws-pcs/</code> in its path.</p> <p class="title"> <b>Examples</b> </p> <ul> <li> <p> <code>arn:aws:iam::111122223333:instance-profile/AWSPCS-example-role-1</code> </p> </li> <li> <p> <code>arn:aws:iam::111122223333:instance-profile/aws-pcs/example-role-2</code> </p> </li> </ul>
    # @option params [Types::UpdateComputeNodeGroupSlurmConfigurationRequest] :slurm_configuration
    #   <p>Additional options related to the Slurm scheduler.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. Idempotency ensures that an API request completes only once. With an idempotent request, if the original request completes successfully, the subsequent retries with the same client token return the result from the original successful request and they have no additional effect. If you don't specify a client token, the CLI and SDK automatically generate 1 for you.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_identifier: "ClusterIdentifier", # required
    #     compute_node_group_identifier: "ComputeNodeGroupIdentifier", # required
    #     ami_id: "AmiId",
    #     subnet_ids: ["String"],
    #     custom_launch_template: {
    #       id: "String", # required
    #       version: "String", # required
    #     },
    #     purchase_option: "ONDEMAND" # One of: ["ONDEMAND", "SPOT"],
    #     spot_options: {
    #       allocation_strategy: "lowest-price" # One of: ["lowest-price", "capacity-optimized", "price-capacity-optimized"]
    #     },
    #     scaling_configuration: {
    #       min_instance_count: 1, # required
    #       max_instance_count: 1, # required
    #     },
    #     iam_instance_profile_arn: "InstanceProfileArn",
    #     slurm_configuration: {
    #       slurm_custom_settings: [
    #         {
    #           parameter_name: "String", # required
    #           parameter_value: "String", # required
    #         }
    #       ]
    #     },
    #     client_token: "SBClientToken"
    #   }
    #   options = {}
    #   response = client.update_compute_node_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     compute_node_group: {
    #       name: "ComputeNodeGroupName", # required
    #       id: "String", # required
    #       arn: "String", # required
    #       cluster_id: "String", # required
    #       created_at: Time.now, # required
    #       modified_at: Time.now, # required
    #       status: "CREATING" # One of: ["CREATING", "ACTIVE", "UPDATING", "DELETING", "CREATE_FAILED", "DELETE_FAILED", "UPDATE_FAILED", "DELETED", "SUSPENDING", "SUSPENDED"], # required
    #       ami_id: "AmiId",
    #       subnet_ids: ["SubnetId"], # required
    #       purchase_option: "ONDEMAND" # One of: ["ONDEMAND", "SPOT"],
    #       custom_launch_template: { # required
    #         id: "String", # required
    #         version: "String", # required
    #       },
    #       iam_instance_profile_arn: "InstanceProfileArn", # required
    #       scaling_configuration: { # required
    #         min_instance_count: 1, # required
    #         max_instance_count: 1, # required
    #       },
    #       instance_configs: [ # required
    #         {
    #           instance_type: "String"
    #         }
    #       ],
    #       spot_options: {
    #         allocation_strategy: "lowest-price" # One of: ["lowest-price", "capacity-optimized", "price-capacity-optimized"]
    #       },
    #       slurm_configuration: {
    #         slurm_custom_settings: [
    #           {
    #             parameter_name: "String", # required
    #             parameter_value: "String", # required
    #           }
    #         ]
    #       },
    #       error_info: [
    #         {
    #           code: "String",
    #           message: "String"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::UpdateComputeNodeGroupResponse]
    def update_compute_node_group(params = {}, options = {})
      request = build_request(:update_compute_node_group, params)
      request.send_request(options)
    end

    # <p>Updates the compute node group configuration of a queue. Use this API to change the compute node groups that the queue can send jobs to.</p>
    # @param [Hash, Types::UpdateQueueRequest] params
    # @option params [String] :cluster_identifier
    #   <p>The name or ID of the cluster of the queue.</p>
    # @option params [String] :queue_identifier
    #   <p>The name or ID of the queue.</p>
    # @option params [Array<Types::ComputeNodeGroupConfiguration>] :compute_node_group_configurations
    #   <p>The list of compute node group configurations to associate with the queue. Queues assign jobs to associated compute node groups.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. Idempotency ensures that an API request completes only once. With an idempotent request, if the original request completes successfully, the subsequent retries with the same client token return the result from the original successful request and they have no additional effect. If you don't specify a client token, the CLI and SDK automatically generate 1 for you.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_identifier: "ClusterIdentifier", # required
    #     queue_identifier: "QueueIdentifier", # required
    #     compute_node_group_configurations: [
    #       {
    #         compute_node_group_id: "String"
    #       }
    #     ],
    #     client_token: "SBClientToken"
    #   }
    #   options = {}
    #   response = client.update_queue(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     queue: {
    #       name: "QueueName", # required
    #       id: "String", # required
    #       arn: "String", # required
    #       cluster_id: "String", # required
    #       created_at: Time.now, # required
    #       modified_at: Time.now, # required
    #       status: "CREATING" # One of: ["CREATING", "ACTIVE", "UPDATING", "DELETING", "CREATE_FAILED", "DELETE_FAILED", "UPDATE_FAILED", "SUSPENDING", "SUSPENDED"], # required
    #       compute_node_group_configurations: [ # required
    #         {
    #           compute_node_group_id: "String"
    #         }
    #       ],
    #       error_info: [
    #         {
    #           code: "String",
    #           message: "String"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::UpdateQueueResponse]
    def update_queue(params = {}, options = {})
      request = build_request(:update_queue, params)
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
      context[:gem_name] = 'aws-sdk-pcs'
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
