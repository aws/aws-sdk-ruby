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
require 'aws-sdk-core/plugins/sigv4'
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/json_rpc_protocol'

module Aws::ECS
  # An API client for Aws::ECS.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AmazonEC2ContainerServiceV20141113

    add_plugin(::Aws::ECS::Plugins::Endpoint)
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
    #  Custom Endpoint
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::ECS::EndpointProvider)
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

    # <p>Creates a capacity provider. Capacity providers are associated with a cluster and are used in capacity provider strategies to facilitate cluster auto scaling. You can create capacity providers for Amazon ECS Managed Instances and EC2 instances. Fargate has the predefined <code>FARGATE</code> and <code>FARGATE_SPOT</code> capacity providers.</p>
    # @param [Hash, Types::CreateCapacityProviderRequest] params
    # @option params [String] :name
    #   <p>The name of the capacity provider. Up to 255 characters are allowed. They include
    #   			letters (both upper and lowercase letters), numbers, underscores (_), and hyphens (-).
    #   			The name can't be prefixed with "<code>aws</code>", "<code>ecs</code>", or
    #   				"<code>fargate</code>".</p>
    # @option params [String] :cluster
    #   <p>The name of the cluster to associate with the capacity provider. When you create a capacity provider with Amazon ECS Managed Instances, it becomes available only within the specified cluster.</p>
    # @option params [Types::AutoScalingGroupProvider] :auto_scaling_group_provider
    #   <p>The details of the Auto Scaling group for the capacity provider.</p>
    # @option params [Types::CreateManagedInstancesProviderConfiguration] :managed_instances_provider
    #   <p>The configuration for the Amazon ECS Managed Instances provider. This configuration specifies how Amazon ECS manages Amazon EC2 instances on your behalf, including the infrastructure role, instance launch template, and tag propagation settings.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The metadata that you apply to the capacity provider to categorize and organize them
    #   			more conveniently. Each tag consists of a key and an optional value. You define both of
    #   			them.</p>
    #            <p>The following basic restrictions apply to tags:</p>
    #            <ul>
    #               <li>
    #                  <p>Maximum number of tags per resource - 50</p>
    #               </li>
    #               <li>
    #                  <p>For each resource, each tag key must be unique, and each tag key can have only
    #                       one value.</p>
    #               </li>
    #               <li>
    #                  <p>Maximum key length - 128 Unicode characters in UTF-8</p>
    #               </li>
    #               <li>
    #                  <p>Maximum value length - 256 Unicode characters in UTF-8</p>
    #               </li>
    #               <li>
    #                  <p>If your tagging schema is used across multiple services and resources,
    #                       remember that other services may have restrictions on allowed characters.
    #                       Generally allowed characters are: letters, numbers, and spaces representable in
    #                       UTF-8, and the following characters: + - = . _ : / @.</p>
    #               </li>
    #               <li>
    #                  <p>Tag keys and values are case-sensitive.</p>
    #               </li>
    #               <li>
    #                  <p>Do not use <code>aws:</code>, <code>AWS:</code>, or any upper or lowercase
    #                       combination of such as a prefix for either keys or values as it is reserved for
    #                       Amazon Web Services use. You cannot edit or delete tag keys or values with this prefix. Tags with
    #                       this prefix do not count against your tags per resource limit.</p>
    #               </li>
    #            </ul>
    # @example To create a capacity provider 
    #   # This example creates a capacity provider that uses the specified Auto Scaling group MyASG and has managed scaling and manager termination protection enabled. 
    #   params = {
    #     name: "MyCapacityProvider",
    #     auto_scaling_group_provider: {
    #       auto_scaling_group_arn: "arn:aws:autoscaling:us-east-1:123456789012:autoScalingGroup:57ffcb94-11f0-4d6d-bf60-3bac5EXAMPLE:autoScalingGroupName/MyASG",
    #       managed_scaling: {
    #         status: ENABLED,
    #         target_capacity: 100
    #       },
    #       managed_termination_protection: ENABLED
    #     }
    #   }
    #   options = {}
    #   response = client.create_capacity_provider(params, options)
    #   response.to_h #=>
    #   {
    #     capacity_provider: {
    #       capacity_provider_arn: "arn:aws:ecs:us-east-1:123456789012:capacity-provider/MyCapacityProvider",
    #       name: "MyCapacityProvider",
    #       status: ACTIVE,
    #       auto_scaling_group_provider: {
    #         auto_scaling_group_arn: "arn:aws:autoscaling:us-east-1:132456789012:autoScalingGroup:57ffcb94-11f0-4d6d-bf60-3bac5EXAMPLE:autoScalingGroupName/MyASG",
    #         managed_scaling: {
    #           status: ENABLED,
    #           target_capacity: 100,
    #           minimum_scaling_step_size: 1,
    #           maximum_scaling_step_size: 10000,
    #           instance_warmup_period: 300
    #         },
    #         managed_termination_protection: ENABLED
    #       },
    #       tags: [
    #       ]
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "String", # required
    #     cluster: "String",
    #     auto_scaling_group_provider: {
    #       auto_scaling_group_arn: "String", # required
    #       managed_scaling: {
    #         status: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #         target_capacity: 1,
    #         minimum_scaling_step_size: 1,
    #         maximum_scaling_step_size: 1,
    #         instance_warmup_period: 1
    #       },
    #       managed_termination_protection: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #       managed_draining: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #     },
    #     managed_instances_provider: {
    #       infrastructure_role_arn: "String", # required
    #       instance_launch_template: { # required
    #         ec2_instance_profile_arn: "String", # required
    #         network_configuration: { # required
    #           subnets: ["String"],
    #           security_groups: ["String"]
    #         },
    #         storage_configuration: {
    #           storage_size_gi_b: 1
    #         },
    #         monitoring: "BASIC" # One of: ["BASIC", "DETAILED"],
    #         instance_requirements: {
    #           v_cpu_count: { # required
    #             min: 1, # required
    #             max: 1
    #           },
    #           memory_mi_b: { # required
    #             min: 1, # required
    #             max: 1
    #           },
    #           cpu_manufacturers: ["intel" # One of: ["intel", "amd", "amazon-web-services"]],
    #           memory_gi_b_per_v_cpu: {
    #             min: 1.0,
    #             max: 1.0
    #           },
    #           excluded_instance_types: ["ExcludedInstanceType"],
    #           instance_generations: ["current" # One of: ["current", "previous"]],
    #           spot_max_price_percentage_over_lowest_price: 1,
    #           on_demand_max_price_percentage_over_lowest_price: 1,
    #           bare_metal: "included" # One of: ["included", "required", "excluded"],
    #           burstable_performance: "included" # One of: ["included", "required", "excluded"],
    #           require_hibernate_support: false,
    #           network_interface_count: {
    #             min: 1,
    #             max: 1
    #           },
    #           local_storage: "included" # One of: ["included", "required", "excluded"],
    #           local_storage_types: ["hdd" # One of: ["hdd", "ssd"]],
    #           total_local_storage_gb: {
    #             min: 1.0,
    #             max: 1.0
    #           },
    #           baseline_ebs_bandwidth_mbps: {
    #             min: 1,
    #             max: 1
    #           },
    #           accelerator_types: ["gpu" # One of: ["gpu", "fpga", "inference"]],
    #           accelerator_count: {
    #             min: 1,
    #             max: 1
    #           },
    #           accelerator_manufacturers: ["amazon-web-services" # One of: ["amazon-web-services", "amd", "nvidia", "xilinx", "habana"]],
    #           accelerator_names: ["a100" # One of: ["a100", "inferentia", "k520", "k80", "m60", "radeon-pro-v520", "t4", "vu9p", "v100", "a10g", "h100", "t4g"]],
    #           accelerator_total_memory_mi_b: {
    #             min: 1,
    #             max: 1
    #           },
    #           network_bandwidth_gbps: {
    #             min: 1.0,
    #             max: 1.0
    #           },
    #           allowed_instance_types: ["AllowedInstanceType"],
    #           max_spot_price_as_percentage_of_optimal_on_demand_price: 1
    #         }
    #       },
    #       propagate_tags: "CAPACITY_PROVIDER" # One of: ["CAPACITY_PROVIDER", "NONE"]
    #     },
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_capacity_provider(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     capacity_provider: {
    #       capacity_provider_arn: "String",
    #       name: "String",
    #       cluster: "String",
    #       status: "PROVISIONING" # One of: ["PROVISIONING", "ACTIVE", "DEPROVISIONING", "INACTIVE"],
    #       auto_scaling_group_provider: {
    #         auto_scaling_group_arn: "String", # required
    #         managed_scaling: {
    #           status: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #           target_capacity: 1,
    #           minimum_scaling_step_size: 1,
    #           maximum_scaling_step_size: 1,
    #           instance_warmup_period: 1
    #         },
    #         managed_termination_protection: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #         managed_draining: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #       },
    #       managed_instances_provider: {
    #         infrastructure_role_arn: "String",
    #         instance_launch_template: {
    #           ec2_instance_profile_arn: "String", # required
    #           network_configuration: { # required
    #             subnets: ["String"],
    #             security_groups: ["String"]
    #           },
    #           storage_configuration: {
    #             storage_size_gi_b: 1
    #           },
    #           monitoring: "BASIC" # One of: ["BASIC", "DETAILED"],
    #           instance_requirements: {
    #             v_cpu_count: { # required
    #               min: 1, # required
    #               max: 1
    #             },
    #             memory_mi_b: { # required
    #               min: 1, # required
    #               max: 1
    #             },
    #             cpu_manufacturers: ["intel" # One of: ["intel", "amd", "amazon-web-services"]],
    #             memory_gi_b_per_v_cpu: {
    #               min: 1.0,
    #               max: 1.0
    #             },
    #             excluded_instance_types: ["ExcludedInstanceType"],
    #             instance_generations: ["current" # One of: ["current", "previous"]],
    #             spot_max_price_percentage_over_lowest_price: 1,
    #             on_demand_max_price_percentage_over_lowest_price: 1,
    #             bare_metal: "included" # One of: ["included", "required", "excluded"],
    #             burstable_performance: "included" # One of: ["included", "required", "excluded"],
    #             require_hibernate_support: false,
    #             network_interface_count: {
    #               min: 1,
    #               max: 1
    #             },
    #             local_storage: "included" # One of: ["included", "required", "excluded"],
    #             local_storage_types: ["hdd" # One of: ["hdd", "ssd"]],
    #             total_local_storage_gb: {
    #               min: 1.0,
    #               max: 1.0
    #             },
    #             baseline_ebs_bandwidth_mbps: {
    #               min: 1,
    #               max: 1
    #             },
    #             accelerator_types: ["gpu" # One of: ["gpu", "fpga", "inference"]],
    #             accelerator_count: {
    #               min: 1,
    #               max: 1
    #             },
    #             accelerator_manufacturers: ["amazon-web-services" # One of: ["amazon-web-services", "amd", "nvidia", "xilinx", "habana"]],
    #             accelerator_names: ["a100" # One of: ["a100", "inferentia", "k520", "k80", "m60", "radeon-pro-v520", "t4", "vu9p", "v100", "a10g", "h100", "t4g"]],
    #             accelerator_total_memory_mi_b: {
    #               min: 1,
    #               max: 1
    #             },
    #             network_bandwidth_gbps: {
    #               min: 1.0,
    #               max: 1.0
    #             },
    #             allowed_instance_types: ["AllowedInstanceType"],
    #             max_spot_price_as_percentage_of_optimal_on_demand_price: 1
    #           }
    #         },
    #         propagate_tags: "CAPACITY_PROVIDER" # One of: ["CAPACITY_PROVIDER", "NONE"]
    #       },
    #       update_status: "CREATE_IN_PROGRESS" # One of: ["CREATE_IN_PROGRESS", "CREATE_COMPLETE", "CREATE_FAILED", "DELETE_IN_PROGRESS", "DELETE_COMPLETE", "DELETE_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_COMPLETE", "UPDATE_FAILED"],
    #       update_status_reason: "String",
    #       tags: [
    #         {
    #           key: "TagKey",
    #           value: "TagValue"
    #         }
    #       ],
    #       type: "EC2_AUTOSCALING" # One of: ["EC2_AUTOSCALING", "MANAGED_INSTANCES", "FARGATE", "FARGATE_SPOT"]
    #     }
    #   }
    # @return [Types::CreateCapacityProviderResponse]
    def create_capacity_provider(params = {}, options = {})
      request = build_request(:create_capacity_provider, params)
      request.send_request(options)
    end

    # <p>Creates a new Amazon ECS cluster. By default, your account receives a <code>default</code>
    # 			cluster when you launch your first container instance. However, you can create your own
    # 			cluster with a unique name.</p>
    #          <note>
    #             <p>When you call the <a href="https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_CreateCluster.html">CreateCluster</a>
    # 				API operation, Amazon ECS attempts to create the Amazon ECS service-linked role for your
    # 				account. This is so that it can manage required resources in other Amazon Web Services services on
    # 				your behalf. However, if the user that makes the call doesn't have permissions to
    # 				create the service-linked role, it isn't created. For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/using-service-linked-roles.html">Using
    # 					service-linked roles for Amazon ECS</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #          </note>
    # @param [Hash, Types::CreateClusterRequest] params
    # @option params [String] :cluster_name
    #   <p>The name of your cluster. If you don't specify a name for your cluster, you create a
    #   			cluster that's named <code>default</code>. Up to 255 letters (uppercase and lowercase), numbers, underscores, and hyphens are allowed. </p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The metadata that you apply to the cluster to help you categorize and organize them.
    #   			Each tag consists of a key and an optional value. You define both.</p>
    #            <p>The following basic restrictions apply to tags:</p>
    #            <ul>
    #               <li>
    #                  <p>Maximum number of tags per resource - 50</p>
    #               </li>
    #               <li>
    #                  <p>For each resource, each tag key must be unique, and each tag key can have only
    #                       one value.</p>
    #               </li>
    #               <li>
    #                  <p>Maximum key length - 128 Unicode characters in UTF-8</p>
    #               </li>
    #               <li>
    #                  <p>Maximum value length - 256 Unicode characters in UTF-8</p>
    #               </li>
    #               <li>
    #                  <p>If your tagging schema is used across multiple services and resources,
    #                       remember that other services may have restrictions on allowed characters.
    #                       Generally allowed characters are: letters, numbers, and spaces representable in
    #                       UTF-8, and the following characters: + - = . _ : / @.</p>
    #               </li>
    #               <li>
    #                  <p>Tag keys and values are case-sensitive.</p>
    #               </li>
    #               <li>
    #                  <p>Do not use <code>aws:</code>, <code>AWS:</code>, or any upper or lowercase
    #                       combination of such as a prefix for either keys or values as it is reserved for
    #                       Amazon Web Services use. You cannot edit or delete tag keys or values with this prefix. Tags with
    #                       this prefix do not count against your tags per resource limit.</p>
    #               </li>
    #            </ul>
    # @option params [Array<Types::ClusterSetting>] :settings
    #   <p>The setting to use when creating a cluster. This parameter is used to turn on CloudWatch
    #   			Container Insights for a cluster. If this value is specified, it overrides the
    #   				<code>containerInsights</code> value set with <a href="https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_PutAccountSetting.html">PutAccountSetting</a> or <a href="https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_PutAccountSettingDefault.html">PutAccountSettingDefault</a>.</p>
    # @option params [Types::ClusterConfiguration] :configuration
    #   <p>The <code>execute</code> command configuration for the cluster.</p>
    # @option params [Array<String>] :capacity_providers
    #   <p>The short name of one or more capacity providers to associate with the cluster. A
    #   			capacity provider must be associated with a cluster before it can be included as part of
    #   			the default capacity provider strategy of the cluster or used in a capacity provider
    #   			strategy when calling the <a href="https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_CreateService.html">CreateService</a> or
    #   				<a href="https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_RunTask.html">RunTask</a> actions.</p>
    #            <p>If specifying a capacity provider that uses an Auto Scaling group, the capacity
    #   			provider must be created but not associated with another cluster. New Auto Scaling group
    #   			capacity providers can be created with the <a href="https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_CreateCapacityProvider.html">CreateCapacityProvider</a> API operation.</p>
    #            <p>To use a Fargate capacity provider, specify either the <code>FARGATE</code> or
    #   				<code>FARGATE_SPOT</code> capacity providers. The Fargate capacity providers are
    #   			available to all accounts and only need to be associated with a cluster to be
    #   			used.</p>
    #            <p>The <a href="https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_PutCapacityProvider.html">PutCapacityProvider</a> API operation is used to update the list of available
    #   			capacity providers for a cluster after the cluster is created.</p>
    # @option params [Array<Types::CapacityProviderStrategyItem>] :default_capacity_provider_strategy
    #   <p>The capacity provider strategy to set as the default for the cluster. After a default
    #   			capacity provider strategy is set for a cluster, when you call the <a href="https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_CreateService.html">CreateService</a> or <a href="https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_RunTask.html">RunTask</a> APIs with no
    #   			capacity provider strategy or launch type specified, the default capacity provider
    #   			strategy for the cluster is used.</p>
    #            <p>If a default capacity provider strategy isn't defined for a cluster when it was
    #   			created, it can be defined later with the <a href="https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_PutClusterCapacityProviders.html">PutClusterCapacityProviders</a> API operation.</p>
    # @option params [Types::ClusterServiceConnectDefaultsRequest] :service_connect_defaults
    #   <p>Use this parameter to set a default Service Connect namespace. After you set a default 
    #   	Service Connect namespace, any new services with Service Connect turned on that are created in the cluster are added as
    #   	client services in the namespace. This setting only applies to new services that set the <code>enabled</code> parameter to
    #   	<code>true</code> in the <code>ServiceConnectConfiguration</code>.
    #   	You can set the namespace of each service individually in the <code>ServiceConnectConfiguration</code> to override this default
    #   	parameter.</p>
    #            <p>Tasks that run in a namespace can use short names to connect
    #   	to services in the namespace. Tasks can connect to services across all of the clusters in the namespace.
    #   	Tasks connect through a managed proxy container
    #   	that collects logs and metrics for increased visibility.
    #   	Only the tasks that Amazon ECS services create are supported with Service Connect.
    #   	For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-connect.html">Service Connect</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    # @example To create a new cluster
    #   # This example creates a cluster in your default region.
    #   params = {
    #     cluster_name: "my_cluster"
    #   }
    #   options = {}
    #   response = client.create_cluster(params, options)
    #   response.to_h #=>
    #   {
    #     cluster: {
    #       status: "ACTIVE",
    #       cluster_name: "my_cluster",
    #       registered_container_instances_count: 0,
    #       pending_tasks_count: 0,
    #       running_tasks_count: 0,
    #       active_services_count: 0,
    #       cluster_arn: "arn:aws:ecs:us-east-1:012345678910:cluster/my_cluster"
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_name: "String",
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue"
    #       }
    #     ],
    #     settings: [
    #       {
    #         name: "containerInsights" # One of: ["containerInsights"],
    #         value: "String"
    #       }
    #     ],
    #     configuration: {
    #       execute_command_configuration: {
    #         kms_key_id: "String",
    #         logging: "NONE" # One of: ["NONE", "DEFAULT", "OVERRIDE"],
    #         log_configuration: {
    #           cloud_watch_log_group_name: "String",
    #           cloud_watch_encryption_enabled: false,
    #           s3_bucket_name: "String",
    #           s3_encryption_enabled: false,
    #           s3_key_prefix: "String"
    #         }
    #       },
    #       managed_storage_configuration: {
    #         kms_key_id: "String",
    #         fargate_ephemeral_storage_kms_key_id: "String"
    #       }
    #     },
    #     capacity_providers: ["String"],
    #     default_capacity_provider_strategy: [
    #       {
    #         capacity_provider: "String", # required
    #         weight: 1,
    #         base: 1
    #       }
    #     ],
    #     service_connect_defaults: {
    #       namespace: "String", # required
    #     }
    #   }
    #   options = {}
    #   response = client.create_cluster(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cluster: {
    #       cluster_arn: "String",
    #       cluster_name: "String",
    #       configuration: {
    #         execute_command_configuration: {
    #           kms_key_id: "String",
    #           logging: "NONE" # One of: ["NONE", "DEFAULT", "OVERRIDE"],
    #           log_configuration: {
    #             cloud_watch_log_group_name: "String",
    #             cloud_watch_encryption_enabled: false,
    #             s3_bucket_name: "String",
    #             s3_encryption_enabled: false,
    #             s3_key_prefix: "String"
    #           }
    #         },
    #         managed_storage_configuration: {
    #           kms_key_id: "String",
    #           fargate_ephemeral_storage_kms_key_id: "String"
    #         }
    #       },
    #       status: "String",
    #       registered_container_instances_count: 1,
    #       running_tasks_count: 1,
    #       pending_tasks_count: 1,
    #       active_services_count: 1,
    #       statistics: [
    #         {
    #           name: "String",
    #           value: "String"
    #         }
    #       ],
    #       tags: [
    #         {
    #           key: "TagKey",
    #           value: "TagValue"
    #         }
    #       ],
    #       settings: [
    #         {
    #           name: "containerInsights" # One of: ["containerInsights"],
    #           value: "String"
    #         }
    #       ],
    #       capacity_providers: ["String"],
    #       default_capacity_provider_strategy: [
    #         {
    #           capacity_provider: "String", # required
    #           weight: 1,
    #           base: 1
    #         }
    #       ],
    #       attachments: [
    #         {
    #           id: "String",
    #           type: "String",
    #           status: "String",
    #           details: [
    #             {
    #               name: "String",
    #               value: "String"
    #             }
    #           ]
    #         }
    #       ],
    #       attachments_status: "String",
    #       service_connect_defaults: {
    #         namespace: "String"
    #       }
    #     }
    #   }
    # @return [Types::CreateClusterResponse]
    def create_cluster(params = {}, options = {})
      request = build_request(:create_cluster, params)
      request.send_request(options)
    end

    # <p>Runs and maintains your desired number of tasks from a specified task definition. If
    # 			the number of tasks running in a service drops below the <code>desiredCount</code>,
    # 			Amazon ECS runs another copy of the task in the specified cluster. To update an existing
    # 			service, use <a href="https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_UpdateService.html">UpdateService</a>.</p>
    #          <note>
    #             <p>On March 21, 2024, a change was made to resolve the task definition revision before authorization. When a task definition revision is not specified, authorization will occur using the latest revision of a task definition.</p>
    #          </note>
    #          <note>
    #             <p>Amazon Elastic Inference (EI) is no longer available to customers.</p>
    #          </note>
    #          <p>In addition to maintaining the desired count of tasks in your service, you can
    # 			optionally run your service behind one or more load balancers. The load balancers
    # 			distribute traffic across the tasks that are associated with the service. For more
    # 			information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-load-balancing.html">Service load balancing</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #          <p>You can attach Amazon EBS volumes to Amazon ECS tasks by configuring the volume when creating or
    # 			updating a service. <code>volumeConfigurations</code> is only supported for REPLICA
    # 			service and not DAEMON service. For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ebs-volumes.html#ebs-volume-types">Amazon EBS volumes</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #          <p>Tasks for services that don't use a load balancer are considered healthy if they're in
    # 			the <code>RUNNING</code> state. Tasks for services that use a load balancer are
    # 			considered healthy if they're in the <code>RUNNING</code> state and are reported as
    # 			healthy by the load balancer.</p>
    #          <p>There are two service scheduler strategies available:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>REPLICA</code> - The replica scheduling strategy places and
    # 					maintains your desired number of tasks across your cluster. By default, the
    # 					service scheduler spreads tasks across Availability Zones. You can use task
    # 					placement strategies and constraints to customize task placement decisions. For
    # 					more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs_services.html">Service scheduler concepts</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>DAEMON</code> - The daemon scheduling strategy deploys exactly one
    # 					task on each active container instance that meets all of the task placement
    # 					constraints that you specify in your cluster. The service scheduler also
    # 					evaluates the task placement constraints for running tasks. It also stops tasks
    # 					that don't meet the placement constraints. When using this strategy, you don't
    # 					need to specify a desired number of tasks, a task placement strategy, or use
    # 					Service Auto Scaling policies. For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs_services.html">Amazon ECS services</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #             </li>
    #          </ul>
    #          <p>The deployment controller is the mechanism that determines how tasks are deployed for
    # 			your service. The valid options are:</p>
    #          <ul>
    #             <li>
    #                <p>ECS</p>
    #                <p> When you create a service which uses the <code>ECS</code> deployment controller, you can
    # 					choose between the following deployment strategies (which you can set in the
    # 						“<code>strategy</code>” field in “<code>deploymentConfiguration</code>”):
    # 					:</p>
    #                <ul>
    #                   <li>
    #                      <p>
    #                         <code>ROLLING</code>: When you create a service which uses the <i>rolling update</i>
    # 							(<code>ROLLING</code>) deployment strategy, the Amazon ECS service scheduler replaces the
    # 							currently running tasks with new tasks. The number of tasks that Amazon ECS adds or
    # 							removes from the service during a rolling update is controlled by the service
    # 							deployment configuration. For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/deployment-type-ecs.html">Deploy Amazon ECS services by replacing tasks</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #                      <p>Rolling update deployments are best suited for the following scenarios:</p>
    #                      <ul>
    #                         <li>
    #                            <p>Gradual service updates: You need to
    # 									update your service incrementally without taking the entire service
    # 									offline at once.</p>
    #                         </li>
    #                         <li>
    #                            <p>Limited resource requirements: You
    # 									want to avoid the additional resource costs of running two complete
    # 									environments simultaneously (as required by blue/green
    # 									deployments).</p>
    #                         </li>
    #                         <li>
    #                            <p>Acceptable deployment time: Your
    # 									application can tolerate a longer deployment process, as rolling updates
    # 									replace tasks one by one.</p>
    #                         </li>
    #                         <li>
    #                            <p>No need for instant roll back: Your
    # 									service can tolerate a rollback process that takes minutes rather than
    # 									seconds.</p>
    #                         </li>
    #                         <li>
    #                            <p>Simple deployment process: You prefer
    # 									a straightforward deployment approach without the complexity of managing
    # 									multiple environments, target groups, and listeners.</p>
    #                         </li>
    #                         <li>
    #                            <p>No load balancer requirement: Your
    # 									service doesn't use or require a load balancer, Application Load Balancer, Network Load Balancer, or Service Connect (which are required
    # 									for blue/green deployments).</p>
    #                         </li>
    #                         <li>
    #                            <p>Stateful applications: Your
    # 									application maintains state that makes it difficult to run two parallel
    # 									environments.</p>
    #                         </li>
    #                         <li>
    #                            <p>Cost sensitivity: You want to
    # 									minimize deployment costs by not running duplicate environments during
    # 									deployment.</p>
    #                         </li>
    #                      </ul>
    #                      <p>Rolling updates are the default deployment strategy for services and provide a
    # 							balance between deployment safety and resource efficiency for many common
    # 							application scenarios.</p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>BLUE_GREEN</code>: A <i>blue/green</i> deployment strategy (<code>BLUE_GREEN</code>) is a release methodology that reduces downtime and
    # 							risk by running two identical production environments called blue and green.
    # 							With Amazon ECS blue/green deployments, you can validate new service revisions before
    # 							directing production traffic to them. This approach provides a safer way to
    # 							deploy changes with the ability to quickly roll back if needed. For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/deployment-type-blue-green.html">Amazon ECS blue/green deployments</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #                      <p>Amazon ECS blue/green deployments are best suited for the following scenarios:</p>
    #                      <ul>
    #                         <li>
    #                            <p>Service validation: When you need to
    # 									validate new service revisions before directing production traffic to
    # 									them</p>
    #                         </li>
    #                         <li>
    #                            <p>Zero downtime: When your service
    # 									requires zero-downtime deployments</p>
    #                         </li>
    #                         <li>
    #                            <p>Instant roll back: When you
    # 									need the ability to quickly roll back if issues are detected</p>
    #                         </li>
    #                         <li>
    #                            <p>Load balancer requirement: When your
    # 									service uses Application Load Balancer, Network Load Balancer, or Service Connect</p>
    #                         </li>
    #                      </ul>
    #                   </li>
    #                </ul>
    #             </li>
    #             <li>
    #                <p>External</p>
    #                <p>Use a third-party deployment controller.</p>
    #             </li>
    #             <li>
    #                <p>Blue/green deployment (powered by CodeDeploy)</p>
    #                <p>CodeDeploy installs an updated version of the application as a new replacement task
    # 					set and reroutes production traffic from the original application task set to
    # 					the replacement task set. The original task set is terminated after a successful
    # 					deployment. Use this deployment controller to verify a new deployment of a service
    # 					before sending production traffic to it.</p>
    #             </li>
    #          </ul>
    #          <p>When creating a service that uses the <code>EXTERNAL</code> deployment controller, you
    # 			can specify only parameters that aren't controlled at the task set level. The only
    # 			required parameter is the service name. You control your services using the <a href="https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_CreateTaskSet.html">CreateTaskSet</a>. For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/deployment-types.html">Amazon ECS deployment types</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #          <p>When the service scheduler launches new tasks, it determines task placement. For
    # 			information about task placement and task placement strategies, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-placement.html">Amazon ECS
    # 				task placement</a> in the <i>Amazon Elastic Container Service Developer Guide</i>
    #          </p>
    # @param [Hash, Types::CreateServiceRequest] params
    # @option params [String] :cluster
    #   <p>The short name or full Amazon Resource Name (ARN) of the cluster that you run your service on.
    #   			If you do not specify a cluster, the default cluster is assumed.</p>
    # @option params [String] :service_name
    #   <p>The name of your service. Up to 255 letters (uppercase and lowercase), numbers, underscores, and hyphens are allowed. Service names must be unique within
    #   			a cluster, but you can have similarly named services in multiple clusters within a
    #   			Region or across multiple Regions.</p>
    # @option params [String] :task_definition
    #   <p>The <code>family</code> and <code>revision</code> (<code>family:revision</code>) or
    #   			full ARN of the task definition to run in your service. If a <code>revision</code>
    #   			isn't specified, the latest <code>ACTIVE</code> revision is used.</p>
    #            <p>A task definition must be specified if the service uses either the <code>ECS</code> or
    #   				<code>CODE_DEPLOY</code> deployment controllers.</p>
    #            <p>For more information about deployment types, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/deployment-types.html">Amazon ECS deployment
    #   				types</a>.</p>
    # @option params [String] :availability_zone_rebalancing
    #   <p>Indicates whether to use Availability Zone rebalancing for the service.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-rebalancing.html">Balancing an Amazon ECS service across Availability Zones</a> in
    #   			the <i>
    #                  <i>Amazon Elastic Container Service Developer Guide</i>
    #               </i>.</p>
    #            <p>The default behavior of <code>AvailabilityZoneRebalancing</code> differs between create and update requests:</p>
    #            <ul>
    #               <li>
    #                  <p>For create service requests, when no value is specified for <code>AvailabilityZoneRebalancing</code>, Amazon ECS defaults the value to <code>ENABLED</code>.</p>
    #               </li>
    #               <li>
    #                  <p>For update service requests, when no value is specified for <code>AvailabilityZoneRebalancing</code>, Amazon ECS defaults to the existing service’s <code>AvailabilityZoneRebalancing</code> value. If the service never had an <code>AvailabilityZoneRebalancing</code> value set, Amazon ECS treats this as <code>DISABLED</code>.</p>
    #               </li>
    #            </ul>
    # @option params [Array<Types::LoadBalancer>] :load_balancers
    #   <p>A load balancer object representing the load balancers to use with your service. For
    #   			more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-load-balancing.html">Service load balancing</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #            <p>If the service uses the <code>ECS</code> deployment controller and
    #   			using either an Application Load Balancer or Network Load Balancer, you must specify one or more target group ARNs to attach
    #   			to the service. The service-linked role is required for services that use multiple
    #   			target groups. For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/using-service-linked-roles.html">Using service-linked roles for Amazon ECS</a> in the
    #   			<i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #            <p>If the service uses the <code>CODE_DEPLOY</code> deployment controller, the service is
    #   			required to use either an Application Load Balancer or Network Load Balancer. When creating an CodeDeploy deployment group, you
    #   			specify two target groups (referred to as a <code>targetGroupPair</code>). During a
    #   			deployment, CodeDeploy determines which task set in your service has the status
    #   				<code>PRIMARY</code>, and it associates one target group with it. Then, it also
    #   			associates the other target group with the replacement task set. The load balancer can
    #   			also have up to two listeners: a required listener for production traffic and an
    #   			optional listener that you can use to perform validation tests with Lambda functions
    #   			before routing production traffic to it.</p>
    #            <p>If you use the <code>CODE_DEPLOY</code> deployment controller, these values can be
    #   			changed when updating the service.</p>
    #            <p>For Application Load Balancers and Network Load Balancers, this object must contain the load balancer target group ARN,
    #   			the container name, and the container port to access from the load balancer. The
    #   			container name must be as it appears in a container definition. The load balancer name
    #   			parameter must be omitted. When a task from this service is placed on a container
    #   			instance, the container instance and port combination is registered as a target in the
    #   			target group that's specified here.</p>
    #            <p>For Classic Load Balancers, this object must contain the load balancer name, the container name , and
    #   			the container port to access from the load balancer. The container name must be as it
    #   			appears in a container definition. The target group ARN parameter must be omitted.
    #   			When a task from this service is placed on a container instance, the container instance
    #   			is registered with the load balancer that's specified here.</p>
    #            <p>Services with tasks that use the <code>awsvpc</code> network mode (for example, those
    #   			with the Fargate launch type) only support Application Load Balancers and Network Load Balancers. Classic Load Balancers
    #   			aren't supported. Also, when you create any target groups for these services, you must
    #   			choose <code>ip</code> as the target type, not <code>instance</code>. This is because
    #   			tasks that use the <code>awsvpc</code> network mode are associated with an elastic
    #   			network interface, not an Amazon EC2 instance.</p>
    # @option params [Array<Types::ServiceRegistry>] :service_registries
    #   <p>The details of the service discovery registry to associate with this service. For more
    #   			information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-discovery.html">Service
    #   				discovery</a>.</p>
    #            <note>
    #               <p>Each service may be associated with one service registry. Multiple service
    #   				registries for each service isn't supported.</p>
    #            </note>
    # @option params [Integer] :desired_count
    #   <p>The number of instantiations of the specified task definition to place and keep
    #   			running in your service.</p>
    #            <p>This is required if <code>schedulingStrategy</code> is <code>REPLICA</code> or isn't
    #   			specified. If <code>schedulingStrategy</code> is <code>DAEMON</code> then this isn't
    #   			required.</p>
    # @option params [String] :client_token
    #   <p>An identifier that you provide to ensure the idempotency of the request. It must be
    #   			unique and is case sensitive. Up to 36 ASCII characters in the range of 33-126 (inclusive) are allowed.</p>
    # @option params [String] :launch_type
    #   <p>The infrastructure that you run your service on. For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/launch_types.html">Amazon ECS
    #   				launch types</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #            <p>The <code>FARGATE</code> launch type runs your tasks on Fargate On-Demand
    #   			infrastructure.</p>
    #            <note>
    #               <p>Fargate Spot infrastructure is available for use but a capacity provider
    #   				strategy must be used. For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/fargate-capacity-providers.html">Fargate capacity providers</a> in the <i>Amazon ECS
    #   					Developer Guide</i>.</p>
    #            </note>
    #            <p>The <code>EC2</code> launch type runs your tasks on Amazon EC2 instances registered to your
    #   			cluster.</p>
    #            <p>The <code>EXTERNAL</code> launch type runs your tasks on your on-premises server or
    #   			virtual machine (VM) capacity registered to your cluster.</p>
    #            <p>A service can use either a launch type or a capacity provider strategy. If a
    #   				<code>launchType</code> is specified, the <code>capacityProviderStrategy</code>
    #   			parameter must be omitted.</p>
    # @option params [Array<Types::CapacityProviderStrategyItem>] :capacity_provider_strategy
    #   <p>The capacity provider strategy to use for the service.</p>
    #            <p>If a <code>capacityProviderStrategy</code> is specified, the <code>launchType</code>
    #   			parameter must be omitted. If no <code>capacityProviderStrategy</code> or
    #   				<code>launchType</code> is specified, the
    #   				<code>defaultCapacityProviderStrategy</code> for the cluster is used.</p>
    #            <p>A capacity provider strategy can contain a maximum of 20 capacity providers.</p>
    # @option params [String] :platform_version
    #   <p>The platform version that your tasks in the service are running on. A platform version
    #   			is specified only for tasks using the Fargate launch type. If one isn't
    #   			specified, the <code>LATEST</code> platform version is used. For more information, see
    #   				<a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/platform_versions.html">Fargate platform
    #   				versions</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    # @option params [String] :role
    #   <p>The name or full Amazon Resource Name (ARN) of the IAM role that allows Amazon ECS to make calls to your
    #   			load balancer on your behalf. This parameter is only permitted if you are using a load
    #   			balancer with your service and your task definition doesn't use the <code>awsvpc</code>
    #   			network mode. If you specify the <code>role</code> parameter, you must also specify a
    #   			load balancer object with the <code>loadBalancers</code> parameter.</p>
    #            <important>
    #               <p>If your account has already created the Amazon ECS service-linked role, that role is
    #   				used for your service unless you specify a role here. The service-linked role is
    #   				required if your task definition uses the <code>awsvpc</code> network mode or if the
    #   				service is configured to use service discovery, an external deployment controller,
    #   				multiple target groups, or Elastic Inference accelerators in which case you don't
    #   				specify a role here. For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/using-service-linked-roles.html">Using
    #   					service-linked roles for Amazon ECS</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #            </important>
    #            <p>If your specified role has a path other than <code>/</code>, then you must either
    #   			specify the full role ARN (this is recommended) or prefix the role name with the path.
    #   			For example, if a role with the name <code>bar</code> has a path of <code>/foo/</code>
    #   			then you would specify <code>/foo/bar</code> as the role name. For more information, see
    #   				<a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html#identifiers-friendly-names">Friendly names and paths</a> in the <i>IAM User
    #   			Guide</i>.</p>
    # @option params [Types::DeploymentConfiguration] :deployment_configuration
    #   <p>Optional deployment parameters that control how many tasks run during the deployment
    #   			and the ordering of stopping and starting tasks.</p>
    # @option params [Array<Types::PlacementConstraint>] :placement_constraints
    #   <p>An array of placement constraint objects to use for tasks in your service. You can
    #   			specify a maximum of 10 constraints for each task. This limit includes constraints in
    #   			the task definition and those specified at runtime.</p>
    # @option params [Array<Types::PlacementStrategy>] :placement_strategy
    #   <p>The placement strategy objects to use for tasks in your service. You can specify a
    #   			maximum of 5 strategy rules for each service.</p>
    # @option params [Types::NetworkConfiguration] :network_configuration
    #   <p>The network configuration for the service. This parameter is required for task
    #   			definitions that use the <code>awsvpc</code> network mode to receive their own elastic
    #   			network interface, and it isn't supported for other network modes. For more information,
    #   			see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-networking.html">Task networking</a>
    #   			in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    # @option params [Integer] :health_check_grace_period_seconds
    #   <p>The period of time, in seconds, that the Amazon ECS service scheduler ignores unhealthy Elastic Load Balancing, VPC Lattice, and container health checks after a task has first started. If you do not specify a health check grace period value, the default value of 0 is used. If you do not use any of the health checks, then <code>healthCheckGracePeriodSeconds</code> is unused.</p>
    #            <p>If your service has more running tasks than desired, unhealthy tasks in the grace period might be stopped to reach the desired count.</p>
    # @option params [String] :scheduling_strategy
    #   <p>The scheduling strategy to use for the service. For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs_services.html">Services</a>.</p>
    #            <p>There are two service scheduler strategies available:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>REPLICA</code>-The replica scheduling strategy places and
    #   					maintains the desired number of tasks across your cluster. By default, the
    #   					service scheduler spreads tasks across Availability Zones. You can use task
    #   					placement strategies and constraints to customize task placement decisions. This
    #   					scheduler strategy is required if the service uses the <code>CODE_DEPLOY</code>
    #   					or <code>EXTERNAL</code> deployment controller types.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DAEMON</code>-The daemon scheduling strategy deploys exactly one
    #   					task on each active container instance that meets all of the task placement
    #   					constraints that you specify in your cluster. The service scheduler also
    #   					evaluates the task placement constraints for running tasks and will stop tasks
    #   					that don't meet the placement constraints. When you're using this strategy, you
    #   					don't need to specify a desired number of tasks, a task placement strategy, or
    #   					use Service Auto Scaling policies.</p>
    #                  <note>
    #                     <p>Tasks using the Fargate launch type or the
    #   							<code>CODE_DEPLOY</code> or <code>EXTERNAL</code> deployment controller
    #   						types don't support the <code>DAEMON</code> scheduling strategy.</p>
    #                  </note>
    #               </li>
    #            </ul>
    # @option params [Types::DeploymentController] :deployment_controller
    #   <p>The deployment controller to use for the service. If no deployment controller is
    #   			specified, the default value of <code>ECS</code> is used.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The metadata that you apply to the service to help you categorize and organize them.
    #   			Each tag consists of a key and an optional value, both of which you define. When a
    #   			service is deleted, the tags are deleted as well.</p>
    #            <p>The following basic restrictions apply to tags:</p>
    #            <ul>
    #               <li>
    #                  <p>Maximum number of tags per resource - 50</p>
    #               </li>
    #               <li>
    #                  <p>For each resource, each tag key must be unique, and each tag key can have only
    #                       one value.</p>
    #               </li>
    #               <li>
    #                  <p>Maximum key length - 128 Unicode characters in UTF-8</p>
    #               </li>
    #               <li>
    #                  <p>Maximum value length - 256 Unicode characters in UTF-8</p>
    #               </li>
    #               <li>
    #                  <p>If your tagging schema is used across multiple services and resources,
    #                       remember that other services may have restrictions on allowed characters.
    #                       Generally allowed characters are: letters, numbers, and spaces representable in
    #                       UTF-8, and the following characters: + - = . _ : / @.</p>
    #               </li>
    #               <li>
    #                  <p>Tag keys and values are case-sensitive.</p>
    #               </li>
    #               <li>
    #                  <p>Do not use <code>aws:</code>, <code>AWS:</code>, or any upper or lowercase
    #                       combination of such as a prefix for either keys or values as it is reserved for
    #                       Amazon Web Services use. You cannot edit or delete tag keys or values with this prefix. Tags with
    #                       this prefix do not count against your tags per resource limit.</p>
    #               </li>
    #            </ul>
    # @option params [Boolean] :enable_ecs_managed_tags
    #   <p>Specifies whether to turn on Amazon ECS managed tags for the tasks within the service. For
    #   			more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-using-tags.html">Tagging your Amazon ECS
    #   				resources</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #            <p>When you use Amazon ECS managed tags, you must set the <code>propagateTags</code>
    #   			request parameter.</p>
    # @option params [String] :propagate_tags
    #   <p>Specifies whether to propagate the tags from the task definition to the task. If no
    #   			value is specified, the tags aren't propagated. Tags can only be propagated to the task
    #   			during task creation. To add tags to a task after task creation, use the <a href="https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_TagResource.html">TagResource</a> API action.</p>
    #            <p>You must set this to a value other than <code>NONE</code> when you use Cost Explorer.
    #   			For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/usage-reports.html">Amazon ECS usage reports</a>
    #   			in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #            <p>The default is <code>NONE</code>.</p>
    # @option params [Boolean] :enable_execute_command
    #   <p>Determines whether the execute command functionality is turned on for the service. If
    #   				<code>true</code>, this enables execute command functionality on all containers in
    #   			the service tasks.</p>
    # @option params [Types::ServiceConnectConfiguration] :service_connect_configuration
    #   <p>The configuration for this service to discover and connect to
    #   	services, and be discovered by, and connected from, other services within a namespace.</p>
    #            <p>Tasks that run in a namespace can use short names to connect
    #   	to services in the namespace. Tasks can connect to services across all of the clusters in the namespace.
    #   	Tasks connect through a managed proxy container
    #   	that collects logs and metrics for increased visibility.
    #   	Only the tasks that Amazon ECS services create are supported with Service Connect.
    #   	For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-connect.html">Service Connect</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    # @option params [Array<Types::ServiceVolumeConfiguration>] :volume_configurations
    #   <p>The configuration for a volume specified in the task definition as a volume that is
    #   			configured at launch time. Currently, the only supported volume type is an Amazon EBS
    #   			volume.</p>
    # @option params [Array<Types::VpcLatticeConfiguration>] :vpc_lattice_configurations
    #   <p>The VPC Lattice configuration for the service being created.</p>
    # @example To create a new service
    #   # This example creates a service in your default region called ``ecs-simple-service``. The service uses the ``hello_world`` task definition and it maintains 10 copies of that task.
    #   params = {
    #     service_name: "ecs-simple-service",
    #     task_definition: "hello_world",
    #     desired_count: 10
    #   }
    #   options = {}
    #   response = client.create_service(params, options)
    #   response.to_h #=>
    #   {
    #     service: {
    #       cluster_arn: "arn:aws:ecs:us-east-1:012345678910:cluster/default",
    #       created_at: Time.parse("2016-08-29T16:13:47.298Z"),
    #       deployment_configuration: {
    #         maximum_percent: 200,
    #         minimum_healthy_percent: 100
    #       },
    #       deployments: [
    #         {
    #           created_at: Time.parse("2016-08-29T16:13:47.298Z"),
    #           desired_count: 10,
    #           id: "ecs-svc/9223370564342348388",
    #           pending_count: 0,
    #           running_count: 0,
    #           status: "PRIMARY",
    #           task_definition: "arn:aws:ecs:us-east-1:012345678910:task-definition/hello_world:6",
    #           updated_at: Time.parse("2016-08-29T16:13:47.298Z")
    #         },
    #         {
    #           created_at: Time.parse("2016-08-29T15:52:44.481Z"),
    #           desired_count: 0,
    #           id: "ecs-svc/9223370564343611322",
    #           pending_count: 0,
    #           running_count: 0,
    #           status: "ACTIVE",
    #           task_definition: "arn:aws:ecs:us-east-1:012345678910:task-definition/hello_world:6",
    #           updated_at: Time.parse("2016-08-29T16:11:38.941Z")
    #         }
    #       ],
    #       desired_count: 10,
    #       events: [
    #       ],
    #       load_balancers: [
    #       ],
    #       pending_count: 0,
    #       running_count: 0,
    #       service_arn: "arn:aws:ecs:us-east-1:012345678910:service/default/ecs-simple-service",
    #       service_name: "ecs-simple-service",
    #       status: "ACTIVE",
    #       task_definition: "arn:aws:ecs:us-east-1:012345678910:task-definition/default/hello_world:6"
    #     }
    #   }
    # @example To create a new service behind a load balancer
    #   # This example creates a service in your default region called ``ecs-simple-service-elb``. The service uses the ``ecs-demo`` task definition and it maintains 10 copies of that task. You must reference an existing load balancer in the same region by its name.
    #   params = {
    #     load_balancers: [
    #       {
    #         container_name: "simple-app",
    #         container_port: 80,
    #         load_balancer_name: "EC2Contai-EcsElast-15DCDAURT3ZO2"
    #       }
    #     ],
    #     service_name: "ecs-simple-service-elb",
    #     role: "ecsServiceRole",
    #     task_definition: "console-sample-app-static",
    #     desired_count: 10
    #   }
    #   options = {}
    #   response = client.create_service(params, options)
    #   response.to_h #=>
    #   {
    #     service: {
    #       cluster_arn: "arn:aws:ecs:us-east-1:012345678910:cluster/default",
    #       created_at: Time.parse("2016-08-29T16:02:54.884Z"),
    #       deployment_configuration: {
    #         maximum_percent: 200,
    #         minimum_healthy_percent: 100
    #       },
    #       deployments: [
    #         {
    #           created_at: Time.parse("2016-08-29T16:02:54.884Z"),
    #           desired_count: 10,
    #           id: "ecs-svc/9223370564343000923",
    #           pending_count: 0,
    #           running_count: 0,
    #           status: "PRIMARY",
    #           task_definition: "arn:aws:ecs:us-east-1:012345678910:task-definition/console-sample-app-static:6",
    #           updated_at: Time.parse("2016-08-29T16:02:54.884Z")
    #         }
    #       ],
    #       desired_count: 10,
    #       events: [
    #       ],
    #       load_balancers: [
    #         {
    #           container_name: "simple-app",
    #           container_port: 80,
    #           load_balancer_name: "EC2Contai-EcsElast-15DCDAURT3ZO2"
    #         }
    #       ],
    #       pending_count: 0,
    #       role_arn: "arn:aws:iam::012345678910:role/ecsServiceRole",
    #       running_count: 0,
    #       service_arn: "arn:aws:ecs:us-east-1:012345678910:service/default/ecs-simple-service-elb",
    #       service_name: "ecs-simple-service-elb",
    #       status: "ACTIVE",
    #       task_definition: "arn:aws:ecs:us-east-1:012345678910:task-definition/default/console-sample-app-static:6"
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster: "String",
    #     service_name: "String", # required
    #     task_definition: "String",
    #     availability_zone_rebalancing: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #     load_balancers: [
    #       {
    #         target_group_arn: "String",
    #         load_balancer_name: "String",
    #         container_name: "String",
    #         container_port: 1,
    #         advanced_configuration: {
    #           alternate_target_group_arn: "String",
    #           production_listener_rule: "String",
    #           test_listener_rule: "String",
    #           role_arn: "String"
    #         }
    #       }
    #     ],
    #     service_registries: [
    #       {
    #         registry_arn: "String",
    #         port: 1,
    #         container_name: "String",
    #         container_port: 1
    #       }
    #     ],
    #     desired_count: 1,
    #     client_token: "String",
    #     launch_type: "EC2" # One of: ["EC2", "FARGATE", "EXTERNAL", "MANAGED_INSTANCES"],
    #     capacity_provider_strategy: [
    #       {
    #         capacity_provider: "String", # required
    #         weight: 1,
    #         base: 1
    #       }
    #     ],
    #     platform_version: "String",
    #     role: "String",
    #     deployment_configuration: {
    #       deployment_circuit_breaker: {
    #         enable: false, # required
    #         rollback: false, # required
    #       },
    #       maximum_percent: 1,
    #       minimum_healthy_percent: 1,
    #       alarms: {
    #         alarm_names: ["String"], # required
    #         rollback: false, # required
    #         enable: false, # required
    #       },
    #       strategy: "ROLLING" # One of: ["ROLLING", "BLUE_GREEN"],
    #       bake_time_in_minutes: 1,
    #       lifecycle_hooks: [
    #         {
    #           hook_target_arn: "String",
    #           role_arn: "IAMRoleArn",
    #           lifecycle_stages: ["RECONCILE_SERVICE" # One of: ["RECONCILE_SERVICE", "PRE_SCALE_UP", "POST_SCALE_UP", "TEST_TRAFFIC_SHIFT", "POST_TEST_TRAFFIC_SHIFT", "PRODUCTION_TRAFFIC_SHIFT", "POST_PRODUCTION_TRAFFIC_SHIFT"]],
    #           hook_details: ""null""
    #         }
    #       ]
    #     },
    #     placement_constraints: [
    #       {
    #         type: "distinctInstance" # One of: ["distinctInstance", "memberOf"],
    #         expression: "String"
    #       }
    #     ],
    #     placement_strategy: [
    #       {
    #         type: "random" # One of: ["random", "spread", "binpack"],
    #         field: "String"
    #       }
    #     ],
    #     network_configuration: {
    #       awsvpc_configuration: {
    #         subnets: ["String"], # required
    #         security_groups: ["String"],
    #         assign_public_ip: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #       }
    #     },
    #     health_check_grace_period_seconds: 1,
    #     scheduling_strategy: "REPLICA" # One of: ["REPLICA", "DAEMON"],
    #     deployment_controller: {
    #       type: "ECS" # One of: ["ECS", "CODE_DEPLOY", "EXTERNAL"], # required
    #     },
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue"
    #       }
    #     ],
    #     enable_ecs_managed_tags: false,
    #     propagate_tags: "TASK_DEFINITION" # One of: ["TASK_DEFINITION", "SERVICE", "NONE"],
    #     enable_execute_command: false,
    #     service_connect_configuration: {
    #       enabled: false, # required
    #       namespace: "String",
    #       services: [
    #         {
    #           port_name: "String", # required
    #           discovery_name: "String",
    #           client_aliases: [
    #             {
    #               port: 1, # required
    #               dns_name: "String",
    #               test_traffic_rules: {
    #                 header: { # required
    #                   name: "String", # required
    #                   value: {
    #                     exact: "String", # required
    #                   }
    #                 }
    #               }
    #             }
    #           ],
    #           ingress_port_override: 1,
    #           timeout: {
    #             idle_timeout_seconds: 1,
    #             per_request_timeout_seconds: 1
    #           },
    #           tls: {
    #             issuer_certificate_authority: { # required
    #               aws_pca_authority_arn: "String"
    #             },
    #             kms_key: "String",
    #             role_arn: "String"
    #           }
    #         }
    #       ],
    #       log_configuration: {
    #         log_driver: "json-file" # One of: ["json-file", "syslog", "journald", "gelf", "fluentd", "awslogs", "splunk", "awsfirelens"], # required
    #         options: {
    #           "String" => "String"
    #         },
    #         secret_options: [
    #           {
    #             name: "String", # required
    #             value_from: "String", # required
    #           }
    #         ]
    #       }
    #     },
    #     volume_configurations: [
    #       {
    #         name: "ECSVolumeName", # required
    #         managed_ebs_volume: {
    #           encrypted: false,
    #           kms_key_id: "EBSKMSKeyId",
    #           volume_type: "EBSVolumeType",
    #           size_in_gi_b: 1,
    #           snapshot_id: "EBSSnapshotId",
    #           volume_initialization_rate: 1,
    #           iops: 1,
    #           throughput: 1,
    #           tag_specifications: [
    #             {
    #               resource_type: "volume" # One of: ["volume"], # required
    #               tags: [
    #                 {
    #                   key: "TagKey",
    #                   value: "TagValue"
    #                 }
    #               ],
    #               propagate_tags: "TASK_DEFINITION" # One of: ["TASK_DEFINITION", "SERVICE", "NONE"]
    #             }
    #           ],
    #           role_arn: "IAMRoleArn", # required
    #           filesystem_type: "ext3" # One of: ["ext3", "ext4", "xfs", "ntfs"]
    #         }
    #       }
    #     ],
    #     vpc_lattice_configurations: [
    #       {
    #         role_arn: "IAMRoleArn", # required
    #         target_group_arn: "String", # required
    #         port_name: "String", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_service(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     service: {
    #       service_arn: "String",
    #       service_name: "String",
    #       cluster_arn: "String",
    #       load_balancers: [
    #         {
    #           target_group_arn: "String",
    #           load_balancer_name: "String",
    #           container_name: "String",
    #           container_port: 1,
    #           advanced_configuration: {
    #             alternate_target_group_arn: "String",
    #             production_listener_rule: "String",
    #             test_listener_rule: "String",
    #             role_arn: "String"
    #           }
    #         }
    #       ],
    #       service_registries: [
    #         {
    #           registry_arn: "String",
    #           port: 1,
    #           container_name: "String",
    #           container_port: 1
    #         }
    #       ],
    #       status: "String",
    #       desired_count: 1,
    #       running_count: 1,
    #       pending_count: 1,
    #       launch_type: "EC2" # One of: ["EC2", "FARGATE", "EXTERNAL", "MANAGED_INSTANCES"],
    #       capacity_provider_strategy: [
    #         {
    #           capacity_provider: "String", # required
    #           weight: 1,
    #           base: 1
    #         }
    #       ],
    #       platform_version: "String",
    #       platform_family: "String",
    #       task_definition: "String",
    #       deployment_configuration: {
    #         deployment_circuit_breaker: {
    #           enable: false, # required
    #           rollback: false, # required
    #         },
    #         maximum_percent: 1,
    #         minimum_healthy_percent: 1,
    #         alarms: {
    #           alarm_names: ["String"], # required
    #           rollback: false, # required
    #           enable: false, # required
    #         },
    #         strategy: "ROLLING" # One of: ["ROLLING", "BLUE_GREEN"],
    #         bake_time_in_minutes: 1,
    #         lifecycle_hooks: [
    #           {
    #             hook_target_arn: "String",
    #             role_arn: "IAMRoleArn",
    #             lifecycle_stages: ["RECONCILE_SERVICE" # One of: ["RECONCILE_SERVICE", "PRE_SCALE_UP", "POST_SCALE_UP", "TEST_TRAFFIC_SHIFT", "POST_TEST_TRAFFIC_SHIFT", "PRODUCTION_TRAFFIC_SHIFT", "POST_PRODUCTION_TRAFFIC_SHIFT"]],
    #             hook_details: ""null""
    #           }
    #         ]
    #       },
    #       task_sets: [
    #         {
    #           id: "String",
    #           task_set_arn: "String",
    #           service_arn: "String",
    #           cluster_arn: "String",
    #           started_by: "String",
    #           external_id: "String",
    #           status: "String",
    #           task_definition: "String",
    #           computed_desired_count: 1,
    #           pending_count: 1,
    #           running_count: 1,
    #           created_at: Time.now,
    #           updated_at: Time.now,
    #           launch_type: "EC2" # One of: ["EC2", "FARGATE", "EXTERNAL", "MANAGED_INSTANCES"],
    #           capacity_provider_strategy: [
    #             {
    #               capacity_provider: "String", # required
    #               weight: 1,
    #               base: 1
    #             }
    #           ],
    #           platform_version: "String",
    #           platform_family: "String",
    #           network_configuration: {
    #             awsvpc_configuration: {
    #               subnets: ["String"], # required
    #               security_groups: ["String"],
    #               assign_public_ip: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #             }
    #           },
    #           load_balancers: [
    #             {
    #               target_group_arn: "String",
    #               load_balancer_name: "String",
    #               container_name: "String",
    #               container_port: 1,
    #               advanced_configuration: {
    #                 alternate_target_group_arn: "String",
    #                 production_listener_rule: "String",
    #                 test_listener_rule: "String",
    #                 role_arn: "String"
    #               }
    #             }
    #           ],
    #           service_registries: [
    #             {
    #               registry_arn: "String",
    #               port: 1,
    #               container_name: "String",
    #               container_port: 1
    #             }
    #           ],
    #           scale: {
    #             value: 1.0,
    #             unit: "PERCENT" # One of: ["PERCENT"]
    #           },
    #           stability_status: "STEADY_STATE" # One of: ["STEADY_STATE", "STABILIZING"],
    #           stability_status_at: Time.now,
    #           tags: [
    #             {
    #               key: "TagKey",
    #               value: "TagValue"
    #             }
    #           ],
    #           fargate_ephemeral_storage: {
    #             kms_key_id: "String"
    #           }
    #         }
    #       ],
    #       deployments: [
    #         {
    #           id: "String",
    #           status: "String",
    #           task_definition: "String",
    #           desired_count: 1,
    #           pending_count: 1,
    #           running_count: 1,
    #           failed_tasks: 1,
    #           created_at: Time.now,
    #           updated_at: Time.now,
    #           capacity_provider_strategy: [
    #             {
    #               capacity_provider: "String", # required
    #               weight: 1,
    #               base: 1
    #             }
    #           ],
    #           launch_type: "EC2" # One of: ["EC2", "FARGATE", "EXTERNAL", "MANAGED_INSTANCES"],
    #           platform_version: "String",
    #           platform_family: "String",
    #           network_configuration: {
    #             awsvpc_configuration: {
    #               subnets: ["String"], # required
    #               security_groups: ["String"],
    #               assign_public_ip: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #             }
    #           },
    #           rollout_state: "COMPLETED" # One of: ["COMPLETED", "FAILED", "IN_PROGRESS"],
    #           rollout_state_reason: "String",
    #           service_connect_configuration: {
    #             enabled: false, # required
    #             namespace: "String",
    #             services: [
    #               {
    #                 port_name: "String", # required
    #                 discovery_name: "String",
    #                 client_aliases: [
    #                   {
    #                     port: 1, # required
    #                     dns_name: "String",
    #                     test_traffic_rules: {
    #                       header: { # required
    #                         name: "String", # required
    #                         value: {
    #                           exact: "String", # required
    #                         }
    #                       }
    #                     }
    #                   }
    #                 ],
    #                 ingress_port_override: 1,
    #                 timeout: {
    #                   idle_timeout_seconds: 1,
    #                   per_request_timeout_seconds: 1
    #                 },
    #                 tls: {
    #                   issuer_certificate_authority: { # required
    #                     aws_pca_authority_arn: "String"
    #                   },
    #                   kms_key: "String",
    #                   role_arn: "String"
    #                 }
    #               }
    #             ],
    #             log_configuration: {
    #               log_driver: "json-file" # One of: ["json-file", "syslog", "journald", "gelf", "fluentd", "awslogs", "splunk", "awsfirelens"], # required
    #               options: {
    #                 "String" => "String"
    #               },
    #               secret_options: [
    #                 {
    #                   name: "String", # required
    #                   value_from: "String", # required
    #                 }
    #               ]
    #             }
    #           },
    #           service_connect_resources: [
    #             {
    #               discovery_name: "String",
    #               discovery_arn: "String"
    #             }
    #           ],
    #           volume_configurations: [
    #             {
    #               name: "ECSVolumeName", # required
    #               managed_ebs_volume: {
    #                 encrypted: false,
    #                 kms_key_id: "EBSKMSKeyId",
    #                 volume_type: "EBSVolumeType",
    #                 size_in_gi_b: 1,
    #                 snapshot_id: "EBSSnapshotId",
    #                 volume_initialization_rate: 1,
    #                 iops: 1,
    #                 throughput: 1,
    #                 tag_specifications: [
    #                   {
    #                     resource_type: "volume" # One of: ["volume"], # required
    #                     tags: [
    #                       {
    #                         key: "TagKey",
    #                         value: "TagValue"
    #                       }
    #                     ],
    #                     propagate_tags: "TASK_DEFINITION" # One of: ["TASK_DEFINITION", "SERVICE", "NONE"]
    #                   }
    #                 ],
    #                 role_arn: "IAMRoleArn", # required
    #                 filesystem_type: "ext3" # One of: ["ext3", "ext4", "xfs", "ntfs"]
    #               }
    #             }
    #           ],
    #           fargate_ephemeral_storage: {
    #             kms_key_id: "String"
    #           },
    #           vpc_lattice_configurations: [
    #             {
    #               role_arn: "IAMRoleArn", # required
    #               target_group_arn: "String", # required
    #               port_name: "String", # required
    #             }
    #           ]
    #         }
    #       ],
    #       role_arn: "String",
    #       events: [
    #         {
    #           id: "String",
    #           created_at: Time.now,
    #           message: "String"
    #         }
    #       ],
    #       created_at: Time.now,
    #       placement_constraints: [
    #         {
    #           type: "distinctInstance" # One of: ["distinctInstance", "memberOf"],
    #           expression: "String"
    #         }
    #       ],
    #       placement_strategy: [
    #         {
    #           type: "random" # One of: ["random", "spread", "binpack"],
    #           field: "String"
    #         }
    #       ],
    #       network_configuration: {
    #         awsvpc_configuration: {
    #           subnets: ["String"], # required
    #           security_groups: ["String"],
    #           assign_public_ip: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #         }
    #       },
    #       health_check_grace_period_seconds: 1,
    #       scheduling_strategy: "REPLICA" # One of: ["REPLICA", "DAEMON"],
    #       deployment_controller: {
    #         type: "ECS" # One of: ["ECS", "CODE_DEPLOY", "EXTERNAL"], # required
    #       },
    #       tags: [
    #         {
    #           key: "TagKey",
    #           value: "TagValue"
    #         }
    #       ],
    #       created_by: "String",
    #       enable_ecs_managed_tags: false,
    #       propagate_tags: "TASK_DEFINITION" # One of: ["TASK_DEFINITION", "SERVICE", "NONE"],
    #       enable_execute_command: false,
    #       availability_zone_rebalancing: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #     }
    #   }
    # @return [Types::CreateServiceResponse]
    def create_service(params = {}, options = {})
      request = build_request(:create_service, params)
      request.send_request(options)
    end

    # <p>Create a task set in the specified cluster and service. This is used when a service
    # 			uses the <code>EXTERNAL</code> deployment controller type. For more information, see
    # 				<a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/deployment-types.html">Amazon ECS deployment
    # 				types</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #          <note>
    #             <p>On March 21, 2024, a change was made to resolve the task definition revision before authorization. When a task definition revision is not specified, authorization will occur using the latest revision of a task definition.</p>
    #          </note>
    #          <p>For information about the maximum number of task sets and other quotas, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-quotas.html">Amazon ECS
    # 				service quotas</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    # @param [Hash, Types::CreateTaskSetRequest] params
    # @option params [String] :service
    #   <p>The short name or full Amazon Resource Name (ARN) of the service to create the task set in.</p>
    # @option params [String] :cluster
    #   <p>The short name or full Amazon Resource Name (ARN) of the cluster that hosts the service to create the
    #   			task set in.</p>
    # @option params [String] :external_id
    #   <p>An optional non-unique tag that identifies this task set in external systems. If the
    #   			task set is associated with a service discovery registry, the tasks in this task set
    #   			will have the <code>ECS_TASK_SET_EXTERNAL_ID</code> Cloud Map attribute set to the provided
    #   			value.</p>
    # @option params [String] :task_definition
    #   <p>The task definition for the tasks in the task set to use. If a revision isn't
    #   			specified, the latest <code>ACTIVE</code> revision is used.</p>
    # @option params [Types::NetworkConfiguration] :network_configuration
    #   <p>An object representing the network configuration for a task set.</p>
    # @option params [Array<Types::LoadBalancer>] :load_balancers
    #   <p>A load balancer object representing the load balancer to use with the task set. The
    #   			supported load balancer types are either an Application Load Balancer or a Network Load Balancer.</p>
    # @option params [Array<Types::ServiceRegistry>] :service_registries
    #   <p>The details of the service discovery registries to assign to this task set. For more
    #   			information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-discovery.html">Service
    #   				discovery</a>.</p>
    # @option params [String] :launch_type
    #   <p>The launch type that new tasks in the task set uses. For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/launch_types.html">Amazon ECS
    #   				launch types</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #            <p>If a <code>launchType</code> is specified, the <code>capacityProviderStrategy</code>
    #   			parameter must be omitted.</p>
    # @option params [Array<Types::CapacityProviderStrategyItem>] :capacity_provider_strategy
    #   <p>The capacity provider strategy to use for the task set.</p>
    #            <p>A capacity provider strategy consists of one or more capacity providers along with the
    #   				<code>base</code> and <code>weight</code> to assign to them. A capacity provider
    #   			must be associated with the cluster to be used in a capacity provider strategy. The
    #   				<a href="https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_PutClusterCapacityProviders.html">PutClusterCapacityProviders</a> API is used to associate a capacity provider
    #   			with a cluster. Only capacity providers with an <code>ACTIVE</code> or
    #   				<code>UPDATING</code> status can be used.</p>
    #            <p>If a <code>capacityProviderStrategy</code> is specified, the <code>launchType</code>
    #   			parameter must be omitted. If no <code>capacityProviderStrategy</code> or
    #   				<code>launchType</code> is specified, the
    #   				<code>defaultCapacityProviderStrategy</code> for the cluster is used.</p>
    #            <p>If specifying a capacity provider that uses an Auto Scaling group, the capacity
    #   			provider must already be created. New capacity providers can be created with the <a href="https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_CreateCapacityProviderProvider.html">CreateCapacityProviderProvider</a>API operation.</p>
    #            <p>To use a Fargate capacity provider, specify either the <code>FARGATE</code> or
    #   				<code>FARGATE_SPOT</code> capacity providers. The Fargate capacity providers are
    #   			available to all accounts and only need to be associated with a cluster to be
    #   			used.</p>
    #            <p>The <a href="https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_PutClusterCapacityProviders.html">PutClusterCapacityProviders</a> API operation is used to update the list of
    #   			available capacity providers for a cluster after the cluster is created.</p>
    # @option params [String] :platform_version
    #   <p>The platform version that the tasks in the task set uses. A platform version is
    #   			specified only for tasks using the Fargate launch type. If one isn't
    #   			specified, the <code>LATEST</code> platform version is used.</p>
    # @option params [Types::Scale] :scale
    #   <p>A floating-point percentage of the desired number of tasks to place and keep running
    #   			in the task set.</p>
    # @option params [String] :client_token
    #   <p>An identifier that you provide to ensure the idempotency of the request. It must be
    #   			unique and is case sensitive. Up to 36 ASCII characters in the range of 33-126 (inclusive) are allowed.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The metadata that you apply to the task set to help you categorize and organize them.
    #   			Each tag consists of a key and an optional value. You define both. When a service is
    #   			deleted, the tags are deleted.</p>
    #            <p>The following basic restrictions apply to tags:</p>
    #            <ul>
    #               <li>
    #                  <p>Maximum number of tags per resource - 50</p>
    #               </li>
    #               <li>
    #                  <p>For each resource, each tag key must be unique, and each tag key can have only
    #                       one value.</p>
    #               </li>
    #               <li>
    #                  <p>Maximum key length - 128 Unicode characters in UTF-8</p>
    #               </li>
    #               <li>
    #                  <p>Maximum value length - 256 Unicode characters in UTF-8</p>
    #               </li>
    #               <li>
    #                  <p>If your tagging schema is used across multiple services and resources,
    #                       remember that other services may have restrictions on allowed characters.
    #                       Generally allowed characters are: letters, numbers, and spaces representable in
    #                       UTF-8, and the following characters: + - = . _ : / @.</p>
    #               </li>
    #               <li>
    #                  <p>Tag keys and values are case-sensitive.</p>
    #               </li>
    #               <li>
    #                  <p>Do not use <code>aws:</code>, <code>AWS:</code>, or any upper or lowercase
    #                       combination of such as a prefix for either keys or values as it is reserved for
    #                       Amazon Web Services use. You cannot edit or delete tag keys or values with this prefix. Tags with
    #                       this prefix do not count against your tags per resource limit.</p>
    #               </li>
    #            </ul>
    # @example To create a task set
    #   # This example creates a task set in a service that uses the EXTERNAL deployment controller.
    #   params = {
    #     service: "MyService",
    #     cluster: "MyCluster",
    #     task_definition: "MyTaskDefinition:2",
    #     network_configuration: {
    #       awsvpc_configuration: {
    #         subnets: [
    #           "subnet-12344321"
    #         ],
    #         security_groups: [
    #           "sg-12344321"
    #         ]
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.create_task_set(params, options)
    #   response.to_h #=>
    #   {
    #     task_set: {
    #       id: "ecs-svc/1234567890123456789",
    #       task_set_arn: "arn:aws:ecs:us-west-2:123456789012:task-set/MyCluster/MyService/ecs-svc/1234567890123456789",
    #       status: "ACTIVE",
    #       task_definition: "arn:aws:ecs:us-west-2:123456789012:task-definition/MyTaskDefinition:2",
    #       computed_desired_count: 0,
    #       pending_count: 0,
    #       running_count: 0,
    #       created_at: Time.parse(1557128360.711),
    #       updated_at: Time.parse(1557128360.711),
    #       launch_type: EC2,
    #       network_configuration: {
    #         awsvpc_configuration: {
    #           subnets: [
    #             "subnet-12344321"
    #           ],
    #           security_groups: [
    #             "sg-12344321"
    #           ],
    #           assign_public_ip: DISABLED
    #         }
    #       },
    #       load_balancers: [
    #       ],
    #       service_registries: [
    #       ],
    #       scale: {
    #         value: 0,
    #         unit: PERCENT
    #       },
    #       stability_status: STABILIZING,
    #       stability_status_at: Time.parse(1557128360.711)
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     service: "String", # required
    #     cluster: "String", # required
    #     external_id: "String",
    #     task_definition: "String", # required
    #     network_configuration: {
    #       awsvpc_configuration: {
    #         subnets: ["String"], # required
    #         security_groups: ["String"],
    #         assign_public_ip: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #       }
    #     },
    #     load_balancers: [
    #       {
    #         target_group_arn: "String",
    #         load_balancer_name: "String",
    #         container_name: "String",
    #         container_port: 1,
    #         advanced_configuration: {
    #           alternate_target_group_arn: "String",
    #           production_listener_rule: "String",
    #           test_listener_rule: "String",
    #           role_arn: "String"
    #         }
    #       }
    #     ],
    #     service_registries: [
    #       {
    #         registry_arn: "String",
    #         port: 1,
    #         container_name: "String",
    #         container_port: 1
    #       }
    #     ],
    #     launch_type: "EC2" # One of: ["EC2", "FARGATE", "EXTERNAL", "MANAGED_INSTANCES"],
    #     capacity_provider_strategy: [
    #       {
    #         capacity_provider: "String", # required
    #         weight: 1,
    #         base: 1
    #       }
    #     ],
    #     platform_version: "String",
    #     scale: {
    #       value: 1.0,
    #       unit: "PERCENT" # One of: ["PERCENT"]
    #     },
    #     client_token: "String",
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_task_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     task_set: {
    #       id: "String",
    #       task_set_arn: "String",
    #       service_arn: "String",
    #       cluster_arn: "String",
    #       started_by: "String",
    #       external_id: "String",
    #       status: "String",
    #       task_definition: "String",
    #       computed_desired_count: 1,
    #       pending_count: 1,
    #       running_count: 1,
    #       created_at: Time.now,
    #       updated_at: Time.now,
    #       launch_type: "EC2" # One of: ["EC2", "FARGATE", "EXTERNAL", "MANAGED_INSTANCES"],
    #       capacity_provider_strategy: [
    #         {
    #           capacity_provider: "String", # required
    #           weight: 1,
    #           base: 1
    #         }
    #       ],
    #       platform_version: "String",
    #       platform_family: "String",
    #       network_configuration: {
    #         awsvpc_configuration: {
    #           subnets: ["String"], # required
    #           security_groups: ["String"],
    #           assign_public_ip: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #         }
    #       },
    #       load_balancers: [
    #         {
    #           target_group_arn: "String",
    #           load_balancer_name: "String",
    #           container_name: "String",
    #           container_port: 1,
    #           advanced_configuration: {
    #             alternate_target_group_arn: "String",
    #             production_listener_rule: "String",
    #             test_listener_rule: "String",
    #             role_arn: "String"
    #           }
    #         }
    #       ],
    #       service_registries: [
    #         {
    #           registry_arn: "String",
    #           port: 1,
    #           container_name: "String",
    #           container_port: 1
    #         }
    #       ],
    #       scale: {
    #         value: 1.0,
    #         unit: "PERCENT" # One of: ["PERCENT"]
    #       },
    #       stability_status: "STEADY_STATE" # One of: ["STEADY_STATE", "STABILIZING"],
    #       stability_status_at: Time.now,
    #       tags: [
    #         {
    #           key: "TagKey",
    #           value: "TagValue"
    #         }
    #       ],
    #       fargate_ephemeral_storage: {
    #         kms_key_id: "String"
    #       }
    #     }
    #   }
    # @return [Types::CreateTaskSetResponse]
    def create_task_set(params = {}, options = {})
      request = build_request(:create_task_set, params)
      request.send_request(options)
    end

    # <p>Disables an account setting for a specified user, role, or the root user for an
    # 			account.</p>
    # @param [Hash, Types::DeleteAccountSettingRequest] params
    # @option params [String] :name
    #   <p>The resource name to disable the account setting for. If
    #   				<code>serviceLongArnFormat</code> is specified, the ARN for your Amazon ECS services is
    #   			affected. If <code>taskLongArnFormat</code> is specified, the ARN and resource ID for
    #   			your Amazon ECS tasks is affected. If <code>containerInstanceLongArnFormat</code> is
    #   			specified, the ARN and resource ID for your Amazon ECS container instances is affected. If
    #   				<code>awsvpcTrunking</code> is specified, the ENI limit for your Amazon ECS container
    #   			instances is affected.</p>
    # @option params [String] :principal_arn
    #   <p>The Amazon Resource Name (ARN) of the principal. It can be a user, role, or the
    #   			root user. If you specify the root user, it disables the account setting for all users, roles,
    #   			and the root user of the account unless a user or role explicitly overrides these settings.
    #   			If this field is omitted, the setting is changed only for the authenticated user.</p>
    #            <p>In order to use this parameter, you must be the root user, or the principal.</p>
    # @example To delete the account settings for a specific IAM user or IAM role
    #   # This example deletes the account setting for a specific IAM user or IAM role for the specified resource type. Only the root user can view or modify the account settings for another user.
    #   params = {
    #     name: containerInstanceLongArnFormat,
    #     principal_arn: "arn:aws:iam::<aws_account_id>:user/principalName"
    #   }
    #   options = {}
    #   response = client.delete_account_setting(params, options)
    #   response.to_h #=>
    #   {
    #     setting: {
    #       name: containerInstanceLongArnFormat,
    #       value: "enabled",
    #       principal_arn: "arn:aws:iam::<aws_account_id>:user/principalName"
    #     }
    #   }
    # @example To delete your account setting
    #   # This example deletes the account setting for your user for the specified resource type.
    #   params = {
    #     name: serviceLongArnFormat
    #   }
    #   options = {}
    #   response = client.delete_account_setting(params, options)
    #   response.to_h #=>
    #   {
    #     setting: {
    #       name: serviceLongArnFormat,
    #       value: "enabled",
    #       principal_arn: "arn:aws:iam::<aws_account_id>:user/principalName"
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "serviceLongArnFormat" # One of: ["serviceLongArnFormat", "taskLongArnFormat", "containerInstanceLongArnFormat", "awsvpcTrunking", "containerInsights", "fargateFIPSMode", "tagResourceAuthorization", "fargateTaskRetirementWaitPeriod", "guardDutyActivate", "defaultLogDriverMode"], # required
    #     principal_arn: "String"
    #   }
    #   options = {}
    #   response = client.delete_account_setting(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     setting: {
    #       name: "serviceLongArnFormat" # One of: ["serviceLongArnFormat", "taskLongArnFormat", "containerInstanceLongArnFormat", "awsvpcTrunking", "containerInsights", "fargateFIPSMode", "tagResourceAuthorization", "fargateTaskRetirementWaitPeriod", "guardDutyActivate", "defaultLogDriverMode"],
    #       value: "String",
    #       principal_arn: "String",
    #       type: "user" # One of: ["user", "aws_managed"]
    #     }
    #   }
    # @return [Types::DeleteAccountSettingResponse]
    def delete_account_setting(params = {}, options = {})
      request = build_request(:delete_account_setting, params)
      request.send_request(options)
    end

    # <p>Deletes one or more custom attributes from an Amazon ECS resource.</p>
    # @param [Hash, Types::DeleteAttributesRequest] params
    # @option params [String] :cluster
    #   <p>The short name or full Amazon Resource Name (ARN) of the cluster that contains the resource to delete
    #   			attributes. If you do not specify a cluster, the default cluster is assumed.</p>
    # @option params [Array<Types::Attribute>] :attributes
    #   <p>The attributes to delete from your resource. You can specify up to 10 attributes for
    #   			each request. For custom attributes, specify the attribute name and target ID, but don't
    #   			specify the value. If you specify the target ID using the short form, you must also
    #   			specify the target type.</p>
    # @example To delete a custom attribute from an Amazon ECS instance
    #   # This example deletes an attribute named stack from a container instance. 
    #   params = {
    #     attributes: [
    #       {
    #         name: "stack",
    #         target_id: "aws:ecs:us-west-2:130757420319:container-instance/1c3be8ed-df30-47b4-8f1e-6e68ebd01f34"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.delete_attributes(params, options)
    #   response.to_h #=>
    #   {
    #     attributes: [
    #       {
    #         name: "stack",
    #         target_id: "aws:ecs:us-west-2:130757420319:container-instance/1c3be8ed-df30-47b4-8f1e-6e68ebd01f34",
    #         value: "production"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster: "String",
    #     attributes: [ # required
    #       {
    #         name: "String", # required
    #         value: "String",
    #         target_type: "container-instance" # One of: ["container-instance"],
    #         target_id: "String"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.delete_attributes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     attributes: [
    #       {
    #         name: "String", # required
    #         value: "String",
    #         target_type: "container-instance" # One of: ["container-instance"],
    #         target_id: "String"
    #       }
    #     ]
    #   }
    # @return [Types::DeleteAttributesResponse]
    def delete_attributes(params = {}, options = {})
      request = build_request(:delete_attributes, params)
      request.send_request(options)
    end

    # <p>Deletes the specified capacity provider.</p>
    #          <note>
    #             <p>The <code>FARGATE</code> and <code>FARGATE_SPOT</code> capacity providers are
    # 				reserved and can't be deleted. You can disassociate them from a cluster using either
    # 					<a href="https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_PutClusterCapacityProviders.html">PutClusterCapacityProviders</a> or by deleting the cluster.</p>
    #          </note>
    #          <p>Prior to a capacity provider being deleted, the capacity provider must be removed from
    # 			the capacity provider strategy from all services. The <a href="https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_UpdateService.html">UpdateService</a> API
    # 			can be used to remove a capacity provider from a service's capacity provider strategy.
    # 			When updating a service, the <code>forceNewDeployment</code> option can be used to
    # 			ensure that any tasks using the Amazon EC2 instance capacity provided by the capacity
    # 			provider are transitioned to use the capacity from the remaining capacity providers.
    # 			Only capacity providers that aren't associated with a cluster can be deleted. To remove
    # 			a capacity provider from a cluster, you can either use <a href="https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_PutClusterCapacityProviders.html">PutClusterCapacityProviders</a> or delete the cluster.</p>
    # @param [Hash, Types::DeleteCapacityProviderRequest] params
    # @option params [String] :capacity_provider
    #   <p>The short name or full Amazon Resource Name (ARN) of the capacity provider to delete.</p>
    # @option params [String] :cluster
    #   <p>The name of the cluster that contains the capacity provider to delete. Managed instances capacity providers are cluster-scoped and can only be deleted from their associated cluster.</p>
    # @example To delete a specified capacity provider
    #   # This example deletes a specified capacity provider. 
    #   params = {
    #     capacity_provider: "arn:aws:ecs:us-west-2:123456789012:capacity-provider/ExampleCapacityProvider"
    #   }
    #   options = {}
    #   response = client.delete_capacity_provider(params, options)
    #   response.to_h #=>
    #   {
    #     capacity_provider: {
    #       capacity_provider_arn: "arn:aws:ecs:us-west-2:123456789012:capacity-provider/ExampleCapacityProvider",
    #       name: "ExampleCapacityProvider",
    #       status: ACTIVE,
    #       auto_scaling_group_provider: {
    #         auto_scaling_group_arn: "arn:aws:autoscaling:us-west-2:123456789012:autoScalingGroup:a1b2c3d4-5678-90ab-cdef-EXAMPLE11111:autoScalingGroupName/MyAutoScalingGroup",
    #         managed_scaling: {
    #           status: ENABLED,
    #           target_capacity: 100,
    #           minimum_scaling_step_size: 1,
    #           maximum_scaling_step_size: 10000
    #         },
    #         managed_termination_protection: DISABLED
    #       },
    #       update_status: DELETE_IN_PROGRESS,
    #       tags: [
    #       ]
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     capacity_provider: "String", # required
    #     cluster: "String"
    #   }
    #   options = {}
    #   response = client.delete_capacity_provider(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     capacity_provider: {
    #       capacity_provider_arn: "String",
    #       name: "String",
    #       cluster: "String",
    #       status: "PROVISIONING" # One of: ["PROVISIONING", "ACTIVE", "DEPROVISIONING", "INACTIVE"],
    #       auto_scaling_group_provider: {
    #         auto_scaling_group_arn: "String", # required
    #         managed_scaling: {
    #           status: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #           target_capacity: 1,
    #           minimum_scaling_step_size: 1,
    #           maximum_scaling_step_size: 1,
    #           instance_warmup_period: 1
    #         },
    #         managed_termination_protection: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #         managed_draining: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #       },
    #       managed_instances_provider: {
    #         infrastructure_role_arn: "String",
    #         instance_launch_template: {
    #           ec2_instance_profile_arn: "String", # required
    #           network_configuration: { # required
    #             subnets: ["String"],
    #             security_groups: ["String"]
    #           },
    #           storage_configuration: {
    #             storage_size_gi_b: 1
    #           },
    #           monitoring: "BASIC" # One of: ["BASIC", "DETAILED"],
    #           instance_requirements: {
    #             v_cpu_count: { # required
    #               min: 1, # required
    #               max: 1
    #             },
    #             memory_mi_b: { # required
    #               min: 1, # required
    #               max: 1
    #             },
    #             cpu_manufacturers: ["intel" # One of: ["intel", "amd", "amazon-web-services"]],
    #             memory_gi_b_per_v_cpu: {
    #               min: 1.0,
    #               max: 1.0
    #             },
    #             excluded_instance_types: ["ExcludedInstanceType"],
    #             instance_generations: ["current" # One of: ["current", "previous"]],
    #             spot_max_price_percentage_over_lowest_price: 1,
    #             on_demand_max_price_percentage_over_lowest_price: 1,
    #             bare_metal: "included" # One of: ["included", "required", "excluded"],
    #             burstable_performance: "included" # One of: ["included", "required", "excluded"],
    #             require_hibernate_support: false,
    #             network_interface_count: {
    #               min: 1,
    #               max: 1
    #             },
    #             local_storage: "included" # One of: ["included", "required", "excluded"],
    #             local_storage_types: ["hdd" # One of: ["hdd", "ssd"]],
    #             total_local_storage_gb: {
    #               min: 1.0,
    #               max: 1.0
    #             },
    #             baseline_ebs_bandwidth_mbps: {
    #               min: 1,
    #               max: 1
    #             },
    #             accelerator_types: ["gpu" # One of: ["gpu", "fpga", "inference"]],
    #             accelerator_count: {
    #               min: 1,
    #               max: 1
    #             },
    #             accelerator_manufacturers: ["amazon-web-services" # One of: ["amazon-web-services", "amd", "nvidia", "xilinx", "habana"]],
    #             accelerator_names: ["a100" # One of: ["a100", "inferentia", "k520", "k80", "m60", "radeon-pro-v520", "t4", "vu9p", "v100", "a10g", "h100", "t4g"]],
    #             accelerator_total_memory_mi_b: {
    #               min: 1,
    #               max: 1
    #             },
    #             network_bandwidth_gbps: {
    #               min: 1.0,
    #               max: 1.0
    #             },
    #             allowed_instance_types: ["AllowedInstanceType"],
    #             max_spot_price_as_percentage_of_optimal_on_demand_price: 1
    #           }
    #         },
    #         propagate_tags: "CAPACITY_PROVIDER" # One of: ["CAPACITY_PROVIDER", "NONE"]
    #       },
    #       update_status: "CREATE_IN_PROGRESS" # One of: ["CREATE_IN_PROGRESS", "CREATE_COMPLETE", "CREATE_FAILED", "DELETE_IN_PROGRESS", "DELETE_COMPLETE", "DELETE_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_COMPLETE", "UPDATE_FAILED"],
    #       update_status_reason: "String",
    #       tags: [
    #         {
    #           key: "TagKey",
    #           value: "TagValue"
    #         }
    #       ],
    #       type: "EC2_AUTOSCALING" # One of: ["EC2_AUTOSCALING", "MANAGED_INSTANCES", "FARGATE", "FARGATE_SPOT"]
    #     }
    #   }
    # @return [Types::DeleteCapacityProviderResponse]
    def delete_capacity_provider(params = {}, options = {})
      request = build_request(:delete_capacity_provider, params)
      request.send_request(options)
    end

    # <p>Deletes the specified cluster. The cluster transitions to the <code>INACTIVE</code>
    # 			state. Clusters with an <code>INACTIVE</code> status might remain discoverable in your
    # 			account for a period of time. However, this behavior is subject to change in the future.
    # 			We don't recommend that you rely on <code>INACTIVE</code> clusters persisting.</p>
    #          <p>You must deregister all container instances from this cluster before you may delete
    # 			it. You can list the container instances in a cluster with <a href="https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_ListContainerInstances.html">ListContainerInstances</a> and deregister them with <a href="https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_DeregisterContainerInstance.html">DeregisterContainerInstance</a>.</p>
    # @param [Hash, Types::DeleteClusterRequest] params
    # @option params [String] :cluster
    #   <p>The short name or full Amazon Resource Name (ARN) of the cluster to delete.</p>
    # @example To delete an empty cluster
    #   # This example deletes an empty cluster in your default region.
    #   params = {
    #     cluster: "my_cluster"
    #   }
    #   options = {}
    #   response = client.delete_cluster(params, options)
    #   response.to_h #=>
    #   {
    #     cluster: {
    #       active_services_count: 0,
    #       cluster_arn: "arn:aws:ecs:us-east-1:012345678910:cluster/my_cluster",
    #       cluster_name: "my_cluster",
    #       pending_tasks_count: 0,
    #       registered_container_instances_count: 0,
    #       running_tasks_count: 0,
    #       status: "INACTIVE"
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster: "String", # required
    #   }
    #   options = {}
    #   response = client.delete_cluster(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cluster: {
    #       cluster_arn: "String",
    #       cluster_name: "String",
    #       configuration: {
    #         execute_command_configuration: {
    #           kms_key_id: "String",
    #           logging: "NONE" # One of: ["NONE", "DEFAULT", "OVERRIDE"],
    #           log_configuration: {
    #             cloud_watch_log_group_name: "String",
    #             cloud_watch_encryption_enabled: false,
    #             s3_bucket_name: "String",
    #             s3_encryption_enabled: false,
    #             s3_key_prefix: "String"
    #           }
    #         },
    #         managed_storage_configuration: {
    #           kms_key_id: "String",
    #           fargate_ephemeral_storage_kms_key_id: "String"
    #         }
    #       },
    #       status: "String",
    #       registered_container_instances_count: 1,
    #       running_tasks_count: 1,
    #       pending_tasks_count: 1,
    #       active_services_count: 1,
    #       statistics: [
    #         {
    #           name: "String",
    #           value: "String"
    #         }
    #       ],
    #       tags: [
    #         {
    #           key: "TagKey",
    #           value: "TagValue"
    #         }
    #       ],
    #       settings: [
    #         {
    #           name: "containerInsights" # One of: ["containerInsights"],
    #           value: "String"
    #         }
    #       ],
    #       capacity_providers: ["String"],
    #       default_capacity_provider_strategy: [
    #         {
    #           capacity_provider: "String", # required
    #           weight: 1,
    #           base: 1
    #         }
    #       ],
    #       attachments: [
    #         {
    #           id: "String",
    #           type: "String",
    #           status: "String",
    #           details: [
    #             {
    #               name: "String",
    #               value: "String"
    #             }
    #           ]
    #         }
    #       ],
    #       attachments_status: "String",
    #       service_connect_defaults: {
    #         namespace: "String"
    #       }
    #     }
    #   }
    # @return [Types::DeleteClusterResponse]
    def delete_cluster(params = {}, options = {})
      request = build_request(:delete_cluster, params)
      request.send_request(options)
    end

    # <p>Deletes a specified service within a cluster. You can delete a service if you have no
    # 			running tasks in it and the desired task count is zero. If the service is actively
    # 			maintaining tasks, you can't delete it, and you must update the service to a desired
    # 			task count of zero. For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_UpdateService.html">UpdateService</a>.</p>
    #          <note>
    #             <p>When you delete a service, if there are still running tasks that require cleanup,
    # 				the service status moves from <code>ACTIVE</code> to <code>DRAINING</code>, and the
    # 				service is no longer visible in the console or in the <a href="https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_ListServices.html">ListServices</a>
    # 				API operation. After all tasks have transitioned to either <code>STOPPING</code> or
    # 					<code>STOPPED</code> status, the service status moves from <code>DRAINING</code>
    # 				to <code>INACTIVE</code>. Services in the <code>DRAINING</code> or
    # 					<code>INACTIVE</code> status can still be viewed with the <a href="https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_DescribeServices.html">DescribeServices</a> API operation. However, in the future,
    # 					<code>INACTIVE</code> services may be cleaned up and purged from Amazon ECS record
    # 				keeping, and <a href="https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_DescribeServices.html">DescribeServices</a> calls on those services return a
    # 					<code>ServiceNotFoundException</code> error.</p>
    #          </note>
    #          <important>
    #             <p>If you attempt to create a new service with the same name as an existing service
    # 				in either <code>ACTIVE</code> or <code>DRAINING</code> status, you receive an
    # 				error.</p>
    #          </important>
    # @param [Hash, Types::DeleteServiceRequest] params
    # @option params [String] :cluster
    #   <p>The short name or full Amazon Resource Name (ARN) of the cluster that hosts the service to delete.
    #   			If you do not specify a cluster, the default cluster is assumed.</p>
    # @option params [String] :service
    #   <p>The name of the service to delete.</p>
    # @option params [Boolean] :force
    #   <p>If <code>true</code>, allows you to delete a service even if it wasn't scaled down to
    #   			zero tasks. It's only necessary to use this if the service uses the <code>REPLICA</code>
    #   			scheduling strategy.</p>
    # @example To delete a service
    #   # This example deletes the my-http-service service. The service must have a desired count and running count of 0 before you can delete it.
    #   params = {
    #     service: "my-http-service"
    #   }
    #   options = {}
    #   response = client.delete_service(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster: "String",
    #     service: "String", # required
    #     force: false
    #   }
    #   options = {}
    #   response = client.delete_service(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     service: {
    #       service_arn: "String",
    #       service_name: "String",
    #       cluster_arn: "String",
    #       load_balancers: [
    #         {
    #           target_group_arn: "String",
    #           load_balancer_name: "String",
    #           container_name: "String",
    #           container_port: 1,
    #           advanced_configuration: {
    #             alternate_target_group_arn: "String",
    #             production_listener_rule: "String",
    #             test_listener_rule: "String",
    #             role_arn: "String"
    #           }
    #         }
    #       ],
    #       service_registries: [
    #         {
    #           registry_arn: "String",
    #           port: 1,
    #           container_name: "String",
    #           container_port: 1
    #         }
    #       ],
    #       status: "String",
    #       desired_count: 1,
    #       running_count: 1,
    #       pending_count: 1,
    #       launch_type: "EC2" # One of: ["EC2", "FARGATE", "EXTERNAL", "MANAGED_INSTANCES"],
    #       capacity_provider_strategy: [
    #         {
    #           capacity_provider: "String", # required
    #           weight: 1,
    #           base: 1
    #         }
    #       ],
    #       platform_version: "String",
    #       platform_family: "String",
    #       task_definition: "String",
    #       deployment_configuration: {
    #         deployment_circuit_breaker: {
    #           enable: false, # required
    #           rollback: false, # required
    #         },
    #         maximum_percent: 1,
    #         minimum_healthy_percent: 1,
    #         alarms: {
    #           alarm_names: ["String"], # required
    #           rollback: false, # required
    #           enable: false, # required
    #         },
    #         strategy: "ROLLING" # One of: ["ROLLING", "BLUE_GREEN"],
    #         bake_time_in_minutes: 1,
    #         lifecycle_hooks: [
    #           {
    #             hook_target_arn: "String",
    #             role_arn: "IAMRoleArn",
    #             lifecycle_stages: ["RECONCILE_SERVICE" # One of: ["RECONCILE_SERVICE", "PRE_SCALE_UP", "POST_SCALE_UP", "TEST_TRAFFIC_SHIFT", "POST_TEST_TRAFFIC_SHIFT", "PRODUCTION_TRAFFIC_SHIFT", "POST_PRODUCTION_TRAFFIC_SHIFT"]],
    #             hook_details: ""null""
    #           }
    #         ]
    #       },
    #       task_sets: [
    #         {
    #           id: "String",
    #           task_set_arn: "String",
    #           service_arn: "String",
    #           cluster_arn: "String",
    #           started_by: "String",
    #           external_id: "String",
    #           status: "String",
    #           task_definition: "String",
    #           computed_desired_count: 1,
    #           pending_count: 1,
    #           running_count: 1,
    #           created_at: Time.now,
    #           updated_at: Time.now,
    #           launch_type: "EC2" # One of: ["EC2", "FARGATE", "EXTERNAL", "MANAGED_INSTANCES"],
    #           capacity_provider_strategy: [
    #             {
    #               capacity_provider: "String", # required
    #               weight: 1,
    #               base: 1
    #             }
    #           ],
    #           platform_version: "String",
    #           platform_family: "String",
    #           network_configuration: {
    #             awsvpc_configuration: {
    #               subnets: ["String"], # required
    #               security_groups: ["String"],
    #               assign_public_ip: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #             }
    #           },
    #           load_balancers: [
    #             {
    #               target_group_arn: "String",
    #               load_balancer_name: "String",
    #               container_name: "String",
    #               container_port: 1,
    #               advanced_configuration: {
    #                 alternate_target_group_arn: "String",
    #                 production_listener_rule: "String",
    #                 test_listener_rule: "String",
    #                 role_arn: "String"
    #               }
    #             }
    #           ],
    #           service_registries: [
    #             {
    #               registry_arn: "String",
    #               port: 1,
    #               container_name: "String",
    #               container_port: 1
    #             }
    #           ],
    #           scale: {
    #             value: 1.0,
    #             unit: "PERCENT" # One of: ["PERCENT"]
    #           },
    #           stability_status: "STEADY_STATE" # One of: ["STEADY_STATE", "STABILIZING"],
    #           stability_status_at: Time.now,
    #           tags: [
    #             {
    #               key: "TagKey",
    #               value: "TagValue"
    #             }
    #           ],
    #           fargate_ephemeral_storage: {
    #             kms_key_id: "String"
    #           }
    #         }
    #       ],
    #       deployments: [
    #         {
    #           id: "String",
    #           status: "String",
    #           task_definition: "String",
    #           desired_count: 1,
    #           pending_count: 1,
    #           running_count: 1,
    #           failed_tasks: 1,
    #           created_at: Time.now,
    #           updated_at: Time.now,
    #           capacity_provider_strategy: [
    #             {
    #               capacity_provider: "String", # required
    #               weight: 1,
    #               base: 1
    #             }
    #           ],
    #           launch_type: "EC2" # One of: ["EC2", "FARGATE", "EXTERNAL", "MANAGED_INSTANCES"],
    #           platform_version: "String",
    #           platform_family: "String",
    #           network_configuration: {
    #             awsvpc_configuration: {
    #               subnets: ["String"], # required
    #               security_groups: ["String"],
    #               assign_public_ip: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #             }
    #           },
    #           rollout_state: "COMPLETED" # One of: ["COMPLETED", "FAILED", "IN_PROGRESS"],
    #           rollout_state_reason: "String",
    #           service_connect_configuration: {
    #             enabled: false, # required
    #             namespace: "String",
    #             services: [
    #               {
    #                 port_name: "String", # required
    #                 discovery_name: "String",
    #                 client_aliases: [
    #                   {
    #                     port: 1, # required
    #                     dns_name: "String",
    #                     test_traffic_rules: {
    #                       header: { # required
    #                         name: "String", # required
    #                         value: {
    #                           exact: "String", # required
    #                         }
    #                       }
    #                     }
    #                   }
    #                 ],
    #                 ingress_port_override: 1,
    #                 timeout: {
    #                   idle_timeout_seconds: 1,
    #                   per_request_timeout_seconds: 1
    #                 },
    #                 tls: {
    #                   issuer_certificate_authority: { # required
    #                     aws_pca_authority_arn: "String"
    #                   },
    #                   kms_key: "String",
    #                   role_arn: "String"
    #                 }
    #               }
    #             ],
    #             log_configuration: {
    #               log_driver: "json-file" # One of: ["json-file", "syslog", "journald", "gelf", "fluentd", "awslogs", "splunk", "awsfirelens"], # required
    #               options: {
    #                 "String" => "String"
    #               },
    #               secret_options: [
    #                 {
    #                   name: "String", # required
    #                   value_from: "String", # required
    #                 }
    #               ]
    #             }
    #           },
    #           service_connect_resources: [
    #             {
    #               discovery_name: "String",
    #               discovery_arn: "String"
    #             }
    #           ],
    #           volume_configurations: [
    #             {
    #               name: "ECSVolumeName", # required
    #               managed_ebs_volume: {
    #                 encrypted: false,
    #                 kms_key_id: "EBSKMSKeyId",
    #                 volume_type: "EBSVolumeType",
    #                 size_in_gi_b: 1,
    #                 snapshot_id: "EBSSnapshotId",
    #                 volume_initialization_rate: 1,
    #                 iops: 1,
    #                 throughput: 1,
    #                 tag_specifications: [
    #                   {
    #                     resource_type: "volume" # One of: ["volume"], # required
    #                     tags: [
    #                       {
    #                         key: "TagKey",
    #                         value: "TagValue"
    #                       }
    #                     ],
    #                     propagate_tags: "TASK_DEFINITION" # One of: ["TASK_DEFINITION", "SERVICE", "NONE"]
    #                   }
    #                 ],
    #                 role_arn: "IAMRoleArn", # required
    #                 filesystem_type: "ext3" # One of: ["ext3", "ext4", "xfs", "ntfs"]
    #               }
    #             }
    #           ],
    #           fargate_ephemeral_storage: {
    #             kms_key_id: "String"
    #           },
    #           vpc_lattice_configurations: [
    #             {
    #               role_arn: "IAMRoleArn", # required
    #               target_group_arn: "String", # required
    #               port_name: "String", # required
    #             }
    #           ]
    #         }
    #       ],
    #       role_arn: "String",
    #       events: [
    #         {
    #           id: "String",
    #           created_at: Time.now,
    #           message: "String"
    #         }
    #       ],
    #       created_at: Time.now,
    #       placement_constraints: [
    #         {
    #           type: "distinctInstance" # One of: ["distinctInstance", "memberOf"],
    #           expression: "String"
    #         }
    #       ],
    #       placement_strategy: [
    #         {
    #           type: "random" # One of: ["random", "spread", "binpack"],
    #           field: "String"
    #         }
    #       ],
    #       network_configuration: {
    #         awsvpc_configuration: {
    #           subnets: ["String"], # required
    #           security_groups: ["String"],
    #           assign_public_ip: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #         }
    #       },
    #       health_check_grace_period_seconds: 1,
    #       scheduling_strategy: "REPLICA" # One of: ["REPLICA", "DAEMON"],
    #       deployment_controller: {
    #         type: "ECS" # One of: ["ECS", "CODE_DEPLOY", "EXTERNAL"], # required
    #       },
    #       tags: [
    #         {
    #           key: "TagKey",
    #           value: "TagValue"
    #         }
    #       ],
    #       created_by: "String",
    #       enable_ecs_managed_tags: false,
    #       propagate_tags: "TASK_DEFINITION" # One of: ["TASK_DEFINITION", "SERVICE", "NONE"],
    #       enable_execute_command: false,
    #       availability_zone_rebalancing: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #     }
    #   }
    # @return [Types::DeleteServiceResponse]
    def delete_service(params = {}, options = {})
      request = build_request(:delete_service, params)
      request.send_request(options)
    end

    # <p>Deletes one or more task definitions.</p>
    #          <p>You must deregister a task definition revision before you delete it. For more
    # 			information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_DeregisterTaskDefinition.html">DeregisterTaskDefinition</a>.</p>
    #          <p>When you delete a task definition revision, it is immediately transitions from the
    # 				<code>INACTIVE</code> to <code>DELETE_IN_PROGRESS</code>. Existing tasks and
    # 			services that reference a <code>DELETE_IN_PROGRESS</code> task definition revision
    # 			continue to run without disruption. Existing services that reference a
    # 				<code>DELETE_IN_PROGRESS</code> task definition revision can still scale up or down
    # 			by modifying the service's desired count.</p>
    #          <p>You can't use a <code>DELETE_IN_PROGRESS</code> task definition revision to run new
    # 			tasks or create new services. You also can't update an existing service to reference a
    # 				<code>DELETE_IN_PROGRESS</code> task definition revision.</p>
    #          <p> A task definition revision will stay in <code>DELETE_IN_PROGRESS</code> status until
    # 			all the associated tasks and services have been terminated.</p>
    #          <p>When you delete all <code>INACTIVE</code> task definition revisions, the task
    # 			definition name is not displayed in the console and not returned in the API. If a task
    # 			definition revisions are in the <code>DELETE_IN_PROGRESS</code> state, the task
    # 			definition name is displayed in the console and returned in the API. The task definition
    # 			name is retained by Amazon ECS and the revision is incremented the next time you create a
    # 			task definition with that name.</p>
    # @param [Hash, Types::DeleteTaskDefinitionsRequest] params
    # @option params [Array<String>] :task_definitions
    #   <p>The <code>family</code> and <code>revision</code> (<code>family:revision</code>) or
    #   			full Amazon Resource Name (ARN) of the task definition to delete. You must specify a
    #   				<code>revision</code>.</p>
    #            <p>You can specify up to 10 task definitions as a comma separated list.</p>
    # @example To delete a task definition that has been deregistered
    #   # This example deletes a specified deregistered task definition. 
    #   params = {
    #     task_definitions: [
    #       "Example-task-definition:1"
    #     ]
    #   }
    #   options = {}
    #   response = client.delete_task_definitions(params, options)
    #   response.to_h #=>
    #   {
    #     failures: [
    #     ],
    #     task_definitions: [
    #       {
    #         container_definitions: [
    #           {
    #             command: [
    #               "apt-get update; apt-get install stress; while true; do stress --cpu $(( RANDOM % 4 )) -t $(( RANDOM % 10 )); done"
    #             ],
    #             cpu: 50,
    #             entry_point: [
    #               "bash",
    #               "-c"
    #             ],
    #             environment: [
    #             ],
    #             essential: true,
    #             image: "public.ecr.aws/docker/library/ubuntu:latest",
    #             memory: 100,
    #             mount_points: [
    #             ],
    #             name: "wave",
    #             port_mappings: [
    #             ],
    #             volumes_from: [
    #             ]
    #           }
    #         ],
    #         family: "cpu-wave",
    #         revision: 1,
    #         status: DELETE_IN_PROGRESS,
    #         task_definition_arn: "arn:aws:ecs:us-east-1:012345678910:task-definition/Example-task-definition:1",
    #         volumes: [
    #         ]
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     task_definitions: ["String"], # required
    #   }
    #   options = {}
    #   response = client.delete_task_definitions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     task_definitions: [
    #       {
    #         task_definition_arn: "String",
    #         container_definitions: [
    #           {
    #             name: "String",
    #             image: "String",
    #             repository_credentials: {
    #               credentials_parameter: "String", # required
    #             },
    #             cpu: 1,
    #             memory: 1,
    #             memory_reservation: 1,
    #             links: ["String"],
    #             port_mappings: [
    #               {
    #                 container_port: 1,
    #                 host_port: 1,
    #                 protocol: "tcp" # One of: ["tcp", "udp"],
    #                 name: "String",
    #                 app_protocol: "http" # One of: ["http", "http2", "grpc"],
    #                 container_port_range: "String"
    #               }
    #             ],
    #             essential: false,
    #             restart_policy: {
    #               enabled: false, # required
    #               ignored_exit_codes: [1],
    #               restart_attempt_period: 1
    #             },
    #             entry_point: ["String"],
    #             command: ["String"],
    #             environment: [
    #               {
    #                 name: "String",
    #                 value: "String"
    #               }
    #             ],
    #             environment_files: [
    #               {
    #                 value: "String", # required
    #                 type: "s3" # One of: ["s3"], # required
    #               }
    #             ],
    #             mount_points: [
    #               {
    #                 source_volume: "String",
    #                 container_path: "String",
    #                 read_only: false
    #               }
    #             ],
    #             volumes_from: [
    #               {
    #                 source_container: "String",
    #                 read_only: false
    #               }
    #             ],
    #             linux_parameters: {
    #               capabilities: {
    #                 add: ["String"],
    #                 drop: ["String"]
    #               },
    #               devices: [
    #                 {
    #                   host_path: "String", # required
    #                   container_path: "String",
    #                   permissions: ["read" # One of: ["read", "write", "mknod"]]
    #                 }
    #               ],
    #               init_process_enabled: false,
    #               shared_memory_size: 1,
    #               tmpfs: [
    #                 {
    #                   container_path: "String", # required
    #                   size: 1, # required
    #                   mount_options: ["String"]
    #                 }
    #               ],
    #               max_swap: 1,
    #               swappiness: 1
    #             },
    #             secrets: [
    #               {
    #                 name: "String", # required
    #                 value_from: "String", # required
    #               }
    #             ],
    #             depends_on: [
    #               {
    #                 container_name: "String", # required
    #                 condition: "START" # One of: ["START", "COMPLETE", "SUCCESS", "HEALTHY"], # required
    #               }
    #             ],
    #             start_timeout: 1,
    #             stop_timeout: 1,
    #             version_consistency: "enabled" # One of: ["enabled", "disabled"],
    #             hostname: "String",
    #             user: "String",
    #             working_directory: "String",
    #             disable_networking: false,
    #             privileged: false,
    #             readonly_root_filesystem: false,
    #             dns_servers: ["String"],
    #             dns_search_domains: ["String"],
    #             extra_hosts: [
    #               {
    #                 hostname: "String", # required
    #                 ip_address: "String", # required
    #               }
    #             ],
    #             docker_security_options: ["String"],
    #             interactive: false,
    #             pseudo_terminal: false,
    #             docker_labels: {
    #               "String" => "String"
    #             },
    #             ulimits: [
    #               {
    #                 name: "core" # One of: ["core", "cpu", "data", "fsize", "locks", "memlock", "msgqueue", "nice", "nofile", "nproc", "rss", "rtprio", "rttime", "sigpending", "stack"], # required
    #                 soft_limit: 1, # required
    #                 hard_limit: 1, # required
    #               }
    #             ],
    #             log_configuration: {
    #               log_driver: "json-file" # One of: ["json-file", "syslog", "journald", "gelf", "fluentd", "awslogs", "splunk", "awsfirelens"], # required
    #               options: {
    #                 "String" => "String"
    #               },
    #               secret_options: [
    #                 {
    #                   name: "String", # required
    #                   value_from: "String", # required
    #                 }
    #               ]
    #             },
    #             health_check: {
    #               command: ["String"], # required
    #               interval: 1,
    #               timeout: 1,
    #               retries: 1,
    #               start_period: 1
    #             },
    #             system_controls: [
    #               {
    #                 namespace: "String",
    #                 value: "String"
    #               }
    #             ],
    #             resource_requirements: [
    #               {
    #                 value: "String", # required
    #                 type: "GPU" # One of: ["GPU", "InferenceAccelerator"], # required
    #               }
    #             ],
    #             firelens_configuration: {
    #               type: "fluentd" # One of: ["fluentd", "fluentbit"], # required
    #               options: {
    #                 "String" => "String"
    #               }
    #             },
    #             credential_specs: ["String"]
    #           }
    #         ],
    #         family: "String",
    #         task_role_arn: "String",
    #         execution_role_arn: "String",
    #         network_mode: "bridge" # One of: ["bridge", "host", "awsvpc", "none"],
    #         revision: 1,
    #         volumes: [
    #           {
    #             name: "String",
    #             host: {
    #               source_path: "String"
    #             },
    #             docker_volume_configuration: {
    #               scope: "task" # One of: ["task", "shared"],
    #               autoprovision: false,
    #               driver: "String",
    #               driver_opts: {
    #                 "String" => "String"
    #               },
    #               labels: {
    #                 "String" => "String"
    #               }
    #             },
    #             efs_volume_configuration: {
    #               file_system_id: "String", # required
    #               root_directory: "String",
    #               transit_encryption: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #               transit_encryption_port: 1,
    #               authorization_config: {
    #                 access_point_id: "String",
    #                 iam: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #               }
    #             },
    #             fsx_windows_file_server_volume_configuration: {
    #               file_system_id: "String", # required
    #               root_directory: "String", # required
    #               authorization_config: { # required
    #                 credentials_parameter: "String", # required
    #                 domain: "String", # required
    #               }
    #             },
    #             configured_at_launch: false
    #           }
    #         ],
    #         status: "ACTIVE" # One of: ["ACTIVE", "INACTIVE", "DELETE_IN_PROGRESS"],
    #         requires_attributes: [
    #           {
    #             name: "String", # required
    #             value: "String",
    #             target_type: "container-instance" # One of: ["container-instance"],
    #             target_id: "String"
    #           }
    #         ],
    #         placement_constraints: [
    #           {
    #             type: "memberOf" # One of: ["memberOf"],
    #             expression: "String"
    #           }
    #         ],
    #         compatibilities: ["EC2" # One of: ["EC2", "FARGATE", "EXTERNAL", "MANAGED_INSTANCES"]],
    #         runtime_platform: {
    #           cpu_architecture: "X86_64" # One of: ["X86_64", "ARM64"],
    #           operating_system_family: "WINDOWS_SERVER_2019_FULL" # One of: ["WINDOWS_SERVER_2019_FULL", "WINDOWS_SERVER_2019_CORE", "WINDOWS_SERVER_2016_FULL", "WINDOWS_SERVER_2004_CORE", "WINDOWS_SERVER_2022_CORE", "WINDOWS_SERVER_2022_FULL", "WINDOWS_SERVER_2025_CORE", "WINDOWS_SERVER_2025_FULL", "WINDOWS_SERVER_20H2_CORE", "LINUX"]
    #         },
    #         requires_compatibilities: ["EC2" # One of: ["EC2", "FARGATE", "EXTERNAL", "MANAGED_INSTANCES"]],
    #         cpu: "String",
    #         memory: "String",
    #         inference_accelerators: [
    #           {
    #             device_name: "String", # required
    #             device_type: "String", # required
    #           }
    #         ],
    #         pid_mode: "host" # One of: ["host", "task"],
    #         ipc_mode: "host" # One of: ["host", "task", "none"],
    #         proxy_configuration: {
    #           type: "APPMESH" # One of: ["APPMESH"],
    #           container_name: "String", # required
    #           properties: [
    #             {
    #               name: "String",
    #               value: "String"
    #             }
    #           ]
    #         },
    #         registered_at: Time.now,
    #         deregistered_at: Time.now,
    #         registered_by: "String",
    #         ephemeral_storage: {
    #           size_in_gi_b: 1, # required
    #         },
    #         enable_fault_injection: false
    #       }
    #     ],
    #     failures: [
    #       {
    #         arn: "String",
    #         reason: "String",
    #         detail: "String"
    #       }
    #     ]
    #   }
    # @return [Types::DeleteTaskDefinitionsResponse]
    def delete_task_definitions(params = {}, options = {})
      request = build_request(:delete_task_definitions, params)
      request.send_request(options)
    end

    # <p>Deletes a specified task set within a service. This is used when a service uses the
    # 				<code>EXTERNAL</code> deployment controller type. For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/deployment-types.html">Amazon ECS deployment types</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    # @param [Hash, Types::DeleteTaskSetRequest] params
    # @option params [String] :cluster
    #   <p>The short name or full Amazon Resource Name (ARN) of the cluster that hosts the service that the task
    #   			set found in to delete.</p>
    # @option params [String] :service
    #   <p>The short name or full Amazon Resource Name (ARN) of the service that hosts the task set to
    #   			delete.</p>
    # @option params [String] :task_set
    #   <p>The task set ID or full Amazon Resource Name (ARN) of the task set to delete.</p>
    # @option params [Boolean] :force
    #   <p>If <code>true</code>, you can delete a task set even if it hasn't been scaled down to
    #   			zero.</p>
    # @example To delete a task set within a service that uses the EXTERNAL deployment controller type
    #   # This example deletes a task set and uses the force flag to force deletion if it hasn't scaled to zero.
    #   params = {
    #     cluster: "MyCluster",
    #     service: "MyService",
    #     task_set: "arn:aws:ecs:us-west-2:123456789012:task-set/MyCluster/MyService/ecs-svc/1234567890123456789",
    #     force: true
    #   }
    #   options = {}
    #   response = client.delete_task_set(params, options)
    #   response.to_h #=>
    #   {
    #     task_set: {
    #       id: "ecs-svc/1234567890123456789",
    #       task_set_arn: "arn:aws:ecs:us-west-2:123456789012:task-set/MyCluster/MyService/ecs-svc/1234567890123456789",
    #       status: "DRAINING",
    #       task_definition: "arn:aws:ecs:us-west-2:123456789012:task-definition/sample-fargate:2",
    #       computed_desired_count: 0,
    #       pending_count: 0,
    #       running_count: 0,
    #       created_at: Time.parse(1557130260.276),
    #       updated_at: Time.parse(1557130290.707),
    #       launch_type: EC2,
    #       network_configuration: {
    #         awsvpc_configuration: {
    #           subnets: [
    #             "subnet-12345678"
    #           ],
    #           security_groups: [
    #             "sg-12345678"
    #           ],
    #           assign_public_ip: DISABLED
    #         }
    #       },
    #       load_balancers: [
    #       ],
    #       service_registries: [
    #       ],
    #       scale: {
    #         value: 0,
    #         unit: PERCENT
    #       },
    #       stability_status: STABILIZING,
    #       stability_status_at: Time.parse(1557130290.707)
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster: "String", # required
    #     service: "String", # required
    #     task_set: "String", # required
    #     force: false
    #   }
    #   options = {}
    #   response = client.delete_task_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     task_set: {
    #       id: "String",
    #       task_set_arn: "String",
    #       service_arn: "String",
    #       cluster_arn: "String",
    #       started_by: "String",
    #       external_id: "String",
    #       status: "String",
    #       task_definition: "String",
    #       computed_desired_count: 1,
    #       pending_count: 1,
    #       running_count: 1,
    #       created_at: Time.now,
    #       updated_at: Time.now,
    #       launch_type: "EC2" # One of: ["EC2", "FARGATE", "EXTERNAL", "MANAGED_INSTANCES"],
    #       capacity_provider_strategy: [
    #         {
    #           capacity_provider: "String", # required
    #           weight: 1,
    #           base: 1
    #         }
    #       ],
    #       platform_version: "String",
    #       platform_family: "String",
    #       network_configuration: {
    #         awsvpc_configuration: {
    #           subnets: ["String"], # required
    #           security_groups: ["String"],
    #           assign_public_ip: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #         }
    #       },
    #       load_balancers: [
    #         {
    #           target_group_arn: "String",
    #           load_balancer_name: "String",
    #           container_name: "String",
    #           container_port: 1,
    #           advanced_configuration: {
    #             alternate_target_group_arn: "String",
    #             production_listener_rule: "String",
    #             test_listener_rule: "String",
    #             role_arn: "String"
    #           }
    #         }
    #       ],
    #       service_registries: [
    #         {
    #           registry_arn: "String",
    #           port: 1,
    #           container_name: "String",
    #           container_port: 1
    #         }
    #       ],
    #       scale: {
    #         value: 1.0,
    #         unit: "PERCENT" # One of: ["PERCENT"]
    #       },
    #       stability_status: "STEADY_STATE" # One of: ["STEADY_STATE", "STABILIZING"],
    #       stability_status_at: Time.now,
    #       tags: [
    #         {
    #           key: "TagKey",
    #           value: "TagValue"
    #         }
    #       ],
    #       fargate_ephemeral_storage: {
    #         kms_key_id: "String"
    #       }
    #     }
    #   }
    # @return [Types::DeleteTaskSetResponse]
    def delete_task_set(params = {}, options = {})
      request = build_request(:delete_task_set, params)
      request.send_request(options)
    end

    # <p>Deregisters an Amazon ECS container instance from the specified cluster. This instance is
    # 			no longer available to run tasks.</p>
    #          <p>If you intend to use the container instance for some other purpose after
    # 			deregistration, we recommend that you stop all of the tasks running on the container
    # 			instance before deregistration. That prevents any orphaned tasks from consuming
    # 			resources.</p>
    #          <p>Deregistering a container instance removes the instance from a cluster, but it doesn't
    # 			terminate the EC2 instance. If you are finished using the instance, be sure to terminate
    # 			it in the Amazon EC2 console to stop billing.</p>
    #          <note>
    #             <p>If you terminate a running container instance, Amazon ECS automatically deregisters the
    # 				instance from your cluster (stopped container instances or instances with
    # 				disconnected agents aren't automatically deregistered when terminated).</p>
    #          </note>
    # @param [Hash, Types::DeregisterContainerInstanceRequest] params
    # @option params [String] :cluster
    #   <p>The short name or full Amazon Resource Name (ARN) of the cluster that hosts the container instance to
    #   			deregister. If you do not specify a cluster, the default cluster is assumed.</p>
    # @option params [String] :container_instance
    #   <p>The container instance ID or full ARN of the container instance to deregister. For
    #   			more information about the ARN format, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-account-settings.html#ecs-resource-ids">Amazon Resource Name (ARN)</a> in the <i>Amazon ECS Developer Guide</i>.</p>
    # @option params [Boolean] :force
    #   <p>Forces the container instance to be deregistered. If you have tasks running on the
    #   			container instance when you deregister it with the <code>force</code> option, these
    #   			tasks remain running until you terminate the instance or the tasks stop through some
    #   			other means, but they're orphaned (no longer monitored or accounted for by Amazon ECS). If an
    #   			orphaned task on your container instance is part of an Amazon ECS service, then the service
    #   			scheduler starts another copy of that task, on a different container instance if
    #   			possible. </p>
    #            <p>Any containers in orphaned service tasks that are registered with a Classic Load Balancer or an Application Load Balancer
    #   			target group are deregistered. They begin connection draining according to the settings
    #   			on the load balancer or target group.</p>
    # @example To deregister a container instance from a cluster
    #   # This example deregisters a container instance from the specified cluster in your default region. If there are still tasks running on the container instance, you must either stop those tasks before deregistering, or use the force option.
    #   params = {
    #     cluster: "default",
    #     force: true,
    #     container_instance: "container_instance_UUID"
    #   }
    #   options = {}
    #   response = client.deregister_container_instance(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster: "String",
    #     container_instance: "String", # required
    #     force: false
    #   }
    #   options = {}
    #   response = client.deregister_container_instance(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     container_instance: {
    #       container_instance_arn: "String",
    #       ec2_instance_id: "String",
    #       capacity_provider_name: "String",
    #       version: 1,
    #       version_info: {
    #         agent_version: "String",
    #         agent_hash: "String",
    #         docker_version: "String"
    #       },
    #       remaining_resources: [
    #         {
    #           name: "String",
    #           type: "String",
    #           double_value: 1.0,
    #           long_value: 1,
    #           integer_value: 1,
    #           string_set_value: ["String"]
    #         }
    #       ],
    #       registered_resources: [
    #         {
    #           name: "String",
    #           type: "String",
    #           double_value: 1.0,
    #           long_value: 1,
    #           integer_value: 1,
    #           string_set_value: ["String"]
    #         }
    #       ],
    #       status: "String",
    #       status_reason: "String",
    #       agent_connected: false,
    #       running_tasks_count: 1,
    #       pending_tasks_count: 1,
    #       agent_update_status: "PENDING" # One of: ["PENDING", "STAGING", "STAGED", "UPDATING", "UPDATED", "FAILED"],
    #       attributes: [
    #         {
    #           name: "String", # required
    #           value: "String",
    #           target_type: "container-instance" # One of: ["container-instance"],
    #           target_id: "String"
    #         }
    #       ],
    #       registered_at: Time.now,
    #       attachments: [
    #         {
    #           id: "String",
    #           type: "String",
    #           status: "String",
    #           details: [
    #             {
    #               name: "String",
    #               value: "String"
    #             }
    #           ]
    #         }
    #       ],
    #       tags: [
    #         {
    #           key: "TagKey",
    #           value: "TagValue"
    #         }
    #       ],
    #       health_status: {
    #         overall_status: "OK" # One of: ["OK", "IMPAIRED", "INSUFFICIENT_DATA", "INITIALIZING"],
    #         details: [
    #           {
    #             type: "CONTAINER_RUNTIME" # One of: ["CONTAINER_RUNTIME"],
    #             status: "OK" # One of: ["OK", "IMPAIRED", "INSUFFICIENT_DATA", "INITIALIZING"],
    #             last_updated: Time.now,
    #             last_status_change: Time.now
    #           }
    #         ]
    #       }
    #     }
    #   }
    # @return [Types::DeregisterContainerInstanceResponse]
    def deregister_container_instance(params = {}, options = {})
      request = build_request(:deregister_container_instance, params)
      request.send_request(options)
    end

    # <p>Deregisters the specified task definition by family and revision. Upon deregistration,
    # 			the task definition is marked as <code>INACTIVE</code>. Existing tasks and services that
    # 			reference an <code>INACTIVE</code> task definition continue to run without disruption.
    # 			Existing services that reference an <code>INACTIVE</code> task definition can still
    # 			scale up or down by modifying the service's desired count. If you want to delete a task
    # 			definition revision, you must first deregister the task definition revision.</p>
    #          <p>You can't use an <code>INACTIVE</code> task definition to run new tasks or create new
    # 			services, and you can't update an existing service to reference an <code>INACTIVE</code>
    # 			task definition. However, there may be up to a 10-minute window following deregistration
    # 			where these restrictions have not yet taken effect.</p>
    #          <note>
    #             <p>At this time, <code>INACTIVE</code> task definitions remain discoverable in your
    # 				account indefinitely. However, this behavior is subject to change in the future. We
    # 				don't recommend that you rely on <code>INACTIVE</code> task definitions persisting
    # 				beyond the lifecycle of any associated tasks and services.</p>
    #          </note>
    #          <p>You must deregister a task definition revision before you delete it. For more
    # 			information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_DeleteTaskDefinitions.html">DeleteTaskDefinitions</a>.</p>
    # @param [Hash, Types::DeregisterTaskDefinitionRequest] params
    # @option params [String] :task_definition
    #   <p>The <code>family</code> and <code>revision</code> (<code>family:revision</code>) or
    #   			full Amazon Resource Name (ARN) of the task definition to deregister. You must specify a
    #   				<code>revision</code>.</p>
    # @example To deregister a revision of a task definition
    #   # This example deregisters the first revision of the fargate-task task definition
    #   params = {
    #     task_definition: "fargate-task:1"
    #   }
    #   options = {}
    #   response = client.deregister_task_definition(params, options)
    #   response.to_h #=>
    #   {
    #     task_definition: {
    #       status: INACTIVE,
    #       family: "fargate-task",
    #       volumes: [
    #       ],
    #       task_definition_arn: "arn:aws:ecs:us-west-2:123456789012:task-definition/fargate-task:1",
    #       container_definitions: [
    #         {
    #           memory: 128,
    #           cpu: 256,
    #           port_mappings: [
    #             {
    #               host_port: 80,
    #               container_port: 80,
    #               protocol: tcp
    #             }
    #           ],
    #           essential: true,
    #           name: "nginx",
    #           image: "public.ecr.aws/docker/library/nginx:latest"
    #         }
    #       ]
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     task_definition: "String", # required
    #   }
    #   options = {}
    #   response = client.deregister_task_definition(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     task_definition: {
    #       task_definition_arn: "String",
    #       container_definitions: [
    #         {
    #           name: "String",
    #           image: "String",
    #           repository_credentials: {
    #             credentials_parameter: "String", # required
    #           },
    #           cpu: 1,
    #           memory: 1,
    #           memory_reservation: 1,
    #           links: ["String"],
    #           port_mappings: [
    #             {
    #               container_port: 1,
    #               host_port: 1,
    #               protocol: "tcp" # One of: ["tcp", "udp"],
    #               name: "String",
    #               app_protocol: "http" # One of: ["http", "http2", "grpc"],
    #               container_port_range: "String"
    #             }
    #           ],
    #           essential: false,
    #           restart_policy: {
    #             enabled: false, # required
    #             ignored_exit_codes: [1],
    #             restart_attempt_period: 1
    #           },
    #           entry_point: ["String"],
    #           command: ["String"],
    #           environment: [
    #             {
    #               name: "String",
    #               value: "String"
    #             }
    #           ],
    #           environment_files: [
    #             {
    #               value: "String", # required
    #               type: "s3" # One of: ["s3"], # required
    #             }
    #           ],
    #           mount_points: [
    #             {
    #               source_volume: "String",
    #               container_path: "String",
    #               read_only: false
    #             }
    #           ],
    #           volumes_from: [
    #             {
    #               source_container: "String",
    #               read_only: false
    #             }
    #           ],
    #           linux_parameters: {
    #             capabilities: {
    #               add: ["String"],
    #               drop: ["String"]
    #             },
    #             devices: [
    #               {
    #                 host_path: "String", # required
    #                 container_path: "String",
    #                 permissions: ["read" # One of: ["read", "write", "mknod"]]
    #               }
    #             ],
    #             init_process_enabled: false,
    #             shared_memory_size: 1,
    #             tmpfs: [
    #               {
    #                 container_path: "String", # required
    #                 size: 1, # required
    #                 mount_options: ["String"]
    #               }
    #             ],
    #             max_swap: 1,
    #             swappiness: 1
    #           },
    #           secrets: [
    #             {
    #               name: "String", # required
    #               value_from: "String", # required
    #             }
    #           ],
    #           depends_on: [
    #             {
    #               container_name: "String", # required
    #               condition: "START" # One of: ["START", "COMPLETE", "SUCCESS", "HEALTHY"], # required
    #             }
    #           ],
    #           start_timeout: 1,
    #           stop_timeout: 1,
    #           version_consistency: "enabled" # One of: ["enabled", "disabled"],
    #           hostname: "String",
    #           user: "String",
    #           working_directory: "String",
    #           disable_networking: false,
    #           privileged: false,
    #           readonly_root_filesystem: false,
    #           dns_servers: ["String"],
    #           dns_search_domains: ["String"],
    #           extra_hosts: [
    #             {
    #               hostname: "String", # required
    #               ip_address: "String", # required
    #             }
    #           ],
    #           docker_security_options: ["String"],
    #           interactive: false,
    #           pseudo_terminal: false,
    #           docker_labels: {
    #             "String" => "String"
    #           },
    #           ulimits: [
    #             {
    #               name: "core" # One of: ["core", "cpu", "data", "fsize", "locks", "memlock", "msgqueue", "nice", "nofile", "nproc", "rss", "rtprio", "rttime", "sigpending", "stack"], # required
    #               soft_limit: 1, # required
    #               hard_limit: 1, # required
    #             }
    #           ],
    #           log_configuration: {
    #             log_driver: "json-file" # One of: ["json-file", "syslog", "journald", "gelf", "fluentd", "awslogs", "splunk", "awsfirelens"], # required
    #             options: {
    #               "String" => "String"
    #             },
    #             secret_options: [
    #               {
    #                 name: "String", # required
    #                 value_from: "String", # required
    #               }
    #             ]
    #           },
    #           health_check: {
    #             command: ["String"], # required
    #             interval: 1,
    #             timeout: 1,
    #             retries: 1,
    #             start_period: 1
    #           },
    #           system_controls: [
    #             {
    #               namespace: "String",
    #               value: "String"
    #             }
    #           ],
    #           resource_requirements: [
    #             {
    #               value: "String", # required
    #               type: "GPU" # One of: ["GPU", "InferenceAccelerator"], # required
    #             }
    #           ],
    #           firelens_configuration: {
    #             type: "fluentd" # One of: ["fluentd", "fluentbit"], # required
    #             options: {
    #               "String" => "String"
    #             }
    #           },
    #           credential_specs: ["String"]
    #         }
    #       ],
    #       family: "String",
    #       task_role_arn: "String",
    #       execution_role_arn: "String",
    #       network_mode: "bridge" # One of: ["bridge", "host", "awsvpc", "none"],
    #       revision: 1,
    #       volumes: [
    #         {
    #           name: "String",
    #           host: {
    #             source_path: "String"
    #           },
    #           docker_volume_configuration: {
    #             scope: "task" # One of: ["task", "shared"],
    #             autoprovision: false,
    #             driver: "String",
    #             driver_opts: {
    #               "String" => "String"
    #             },
    #             labels: {
    #               "String" => "String"
    #             }
    #           },
    #           efs_volume_configuration: {
    #             file_system_id: "String", # required
    #             root_directory: "String",
    #             transit_encryption: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #             transit_encryption_port: 1,
    #             authorization_config: {
    #               access_point_id: "String",
    #               iam: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #             }
    #           },
    #           fsx_windows_file_server_volume_configuration: {
    #             file_system_id: "String", # required
    #             root_directory: "String", # required
    #             authorization_config: { # required
    #               credentials_parameter: "String", # required
    #               domain: "String", # required
    #             }
    #           },
    #           configured_at_launch: false
    #         }
    #       ],
    #       status: "ACTIVE" # One of: ["ACTIVE", "INACTIVE", "DELETE_IN_PROGRESS"],
    #       requires_attributes: [
    #         {
    #           name: "String", # required
    #           value: "String",
    #           target_type: "container-instance" # One of: ["container-instance"],
    #           target_id: "String"
    #         }
    #       ],
    #       placement_constraints: [
    #         {
    #           type: "memberOf" # One of: ["memberOf"],
    #           expression: "String"
    #         }
    #       ],
    #       compatibilities: ["EC2" # One of: ["EC2", "FARGATE", "EXTERNAL", "MANAGED_INSTANCES"]],
    #       runtime_platform: {
    #         cpu_architecture: "X86_64" # One of: ["X86_64", "ARM64"],
    #         operating_system_family: "WINDOWS_SERVER_2019_FULL" # One of: ["WINDOWS_SERVER_2019_FULL", "WINDOWS_SERVER_2019_CORE", "WINDOWS_SERVER_2016_FULL", "WINDOWS_SERVER_2004_CORE", "WINDOWS_SERVER_2022_CORE", "WINDOWS_SERVER_2022_FULL", "WINDOWS_SERVER_2025_CORE", "WINDOWS_SERVER_2025_FULL", "WINDOWS_SERVER_20H2_CORE", "LINUX"]
    #       },
    #       requires_compatibilities: ["EC2" # One of: ["EC2", "FARGATE", "EXTERNAL", "MANAGED_INSTANCES"]],
    #       cpu: "String",
    #       memory: "String",
    #       inference_accelerators: [
    #         {
    #           device_name: "String", # required
    #           device_type: "String", # required
    #         }
    #       ],
    #       pid_mode: "host" # One of: ["host", "task"],
    #       ipc_mode: "host" # One of: ["host", "task", "none"],
    #       proxy_configuration: {
    #         type: "APPMESH" # One of: ["APPMESH"],
    #         container_name: "String", # required
    #         properties: [
    #           {
    #             name: "String",
    #             value: "String"
    #           }
    #         ]
    #       },
    #       registered_at: Time.now,
    #       deregistered_at: Time.now,
    #       registered_by: "String",
    #       ephemeral_storage: {
    #         size_in_gi_b: 1, # required
    #       },
    #       enable_fault_injection: false
    #     }
    #   }
    # @return [Types::DeregisterTaskDefinitionResponse]
    def deregister_task_definition(params = {}, options = {})
      request = build_request(:deregister_task_definition, params)
      request.send_request(options)
    end

    # <p>Describes one or more of your capacity providers.</p>
    # @param [Hash, Types::DescribeCapacityProvidersRequest] params
    # @option params [Array<String>] :capacity_providers
    #   <p>The short name or full Amazon Resource Name (ARN) of one or more capacity providers. Up to
    #   				<code>100</code> capacity providers can be described in an action.</p>
    # @option params [String] :cluster
    #   <p>The name of the cluster to describe capacity providers for. When specified, only capacity providers associated with this cluster are returned, including Amazon ECS Managed Instances capacity providers.</p>
    # @option params [Array<String>] :include
    #   <p>Specifies whether or not you want to see the resource tags for the capacity provider.
    #   			If <code>TAGS</code> is specified, the tags are included in the response. If this field
    #   			is omitted, tags aren't included in the response.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of account setting results returned by
    #   				<code>DescribeCapacityProviders</code> in paginated output. When this parameter is
    #   			used, <code>DescribeCapacityProviders</code> only returns <code>maxResults</code>
    #   			results in a single page along with a <code>nextToken</code> response element. The
    #   			remaining results of the initial request can be seen by sending another
    #   				<code>DescribeCapacityProviders</code> request with the returned
    #   				<code>nextToken</code> value. This value can be between
    #   			1 and 10. If this
    #   			parameter is not used, then <code>DescribeCapacityProviders</code> returns up to
    #   			10 results and a <code>nextToken</code> value
    #   			if applicable.</p>
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated
    #   				<code>DescribeCapacityProviders</code> request where <code>maxResults</code> was
    #   			used and the results exceeded the value of that parameter. Pagination continues from the
    #   			end of the previous results that returned the <code>nextToken</code> value.</p>
    #            <note>
    #               <p>This token should be treated as an opaque identifier that is only used to
    #                   retrieve the next items in a list and not for other programmatic purposes.</p>
    #            </note>
    # @example To describe a specific capacity provider
    #   # This example retrieves details about the capacity provider MyCapacityProvider
    #   params = {
    #     capacity_providers: [
    #       "MyCapacityProvider"
    #     ],
    #     include: [
    #       TAGS
    #     ]
    #   }
    #   options = {}
    #   response = client.describe_capacity_providers(params, options)
    #   response.to_h #=>
    #   {
    #     capacity_providers: [
    #       {
    #         capacity_provider_arn: "arn:aws:ecs:us-west-2:123456789012:capacity-provider/MyCapacityProvider",
    #         name: "MyCapacityProvider",
    #         status: ACTIVE,
    #         auto_scaling_group_provider: {
    #           auto_scaling_group_arn: "arn:aws:autoscaling:us-west-2:123456789012:autoScalingGroup:a1b2c3d4-5678-90ab-cdef-EXAMPLE11111:autoScalingGroupName/MyAutoScalingGroup",
    #           managed_scaling: {
    #             status: ENABLED,
    #             target_capacity: 100,
    #             minimum_scaling_step_size: 1,
    #             maximum_scaling_step_size: 1000
    #           },
    #           managed_termination_protection: ENABLED
    #         },
    #         tags: [
    #           {
    #             key: "environment",
    #             value: "production"
    #           }
    #         ]
    #       }
    #     ]
    #   }
    # @example To describe all capacity providers
    #   # This example retrieves details about all capacity providers. 
    #   params = {}
    #   options = {}
    #   response = client.describe_capacity_providers(params, options)
    #   response.to_h #=>
    #   {
    #     capacity_providers: [
    #       {
    #         capacity_provider_arn: "arn:aws:ecs:us-west-2:123456789012:capacity-provider/MyCapacityProvider",
    #         name: "MyCapacityProvider",
    #         status: ACTIVE,
    #         auto_scaling_group_provider: {
    #           auto_scaling_group_arn: "arn:aws:autoscaling:us-west-2:123456789012:autoScalingGroup:a1b2c3d4-5678-90ab-cdef-EXAMPLE11111:autoScalingGroupName/MyAutoScalingGroup",
    #           managed_scaling: {
    #             status: ENABLED,
    #             target_capacity: 100,
    #             minimum_scaling_step_size: 1,
    #             maximum_scaling_step_size: 1000
    #           },
    #           managed_termination_protection: ENABLED
    #         },
    #         tags: [
    #         ]
    #       },
    #       {
    #         capacity_provider_arn: "arn:aws:ecs:us-west-2:123456789012:capacity-provider/FARGATE",
    #         name: "FARGATE",
    #         status: ACTIVE,
    #         tags: [
    #         ]
    #       },
    #       {
    #         capacity_provider_arn: "arn:aws:ecs:us-west-2:123456789012:capacity-provider/FARGATE_SPOT",
    #         name: "FARGATE_SPOT",
    #         status: ACTIVE,
    #         tags: [
    #         ]
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     capacity_providers: ["String"],
    #     cluster: "String",
    #     include: ["TAGS" # One of: ["TAGS"]],
    #     max_results: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.describe_capacity_providers(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     capacity_providers: [
    #       {
    #         capacity_provider_arn: "String",
    #         name: "String",
    #         cluster: "String",
    #         status: "PROVISIONING" # One of: ["PROVISIONING", "ACTIVE", "DEPROVISIONING", "INACTIVE"],
    #         auto_scaling_group_provider: {
    #           auto_scaling_group_arn: "String", # required
    #           managed_scaling: {
    #             status: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #             target_capacity: 1,
    #             minimum_scaling_step_size: 1,
    #             maximum_scaling_step_size: 1,
    #             instance_warmup_period: 1
    #           },
    #           managed_termination_protection: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #           managed_draining: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #         },
    #         managed_instances_provider: {
    #           infrastructure_role_arn: "String",
    #           instance_launch_template: {
    #             ec2_instance_profile_arn: "String", # required
    #             network_configuration: { # required
    #               subnets: ["String"],
    #               security_groups: ["String"]
    #             },
    #             storage_configuration: {
    #               storage_size_gi_b: 1
    #             },
    #             monitoring: "BASIC" # One of: ["BASIC", "DETAILED"],
    #             instance_requirements: {
    #               v_cpu_count: { # required
    #                 min: 1, # required
    #                 max: 1
    #               },
    #               memory_mi_b: { # required
    #                 min: 1, # required
    #                 max: 1
    #               },
    #               cpu_manufacturers: ["intel" # One of: ["intel", "amd", "amazon-web-services"]],
    #               memory_gi_b_per_v_cpu: {
    #                 min: 1.0,
    #                 max: 1.0
    #               },
    #               excluded_instance_types: ["ExcludedInstanceType"],
    #               instance_generations: ["current" # One of: ["current", "previous"]],
    #               spot_max_price_percentage_over_lowest_price: 1,
    #               on_demand_max_price_percentage_over_lowest_price: 1,
    #               bare_metal: "included" # One of: ["included", "required", "excluded"],
    #               burstable_performance: "included" # One of: ["included", "required", "excluded"],
    #               require_hibernate_support: false,
    #               network_interface_count: {
    #                 min: 1,
    #                 max: 1
    #               },
    #               local_storage: "included" # One of: ["included", "required", "excluded"],
    #               local_storage_types: ["hdd" # One of: ["hdd", "ssd"]],
    #               total_local_storage_gb: {
    #                 min: 1.0,
    #                 max: 1.0
    #               },
    #               baseline_ebs_bandwidth_mbps: {
    #                 min: 1,
    #                 max: 1
    #               },
    #               accelerator_types: ["gpu" # One of: ["gpu", "fpga", "inference"]],
    #               accelerator_count: {
    #                 min: 1,
    #                 max: 1
    #               },
    #               accelerator_manufacturers: ["amazon-web-services" # One of: ["amazon-web-services", "amd", "nvidia", "xilinx", "habana"]],
    #               accelerator_names: ["a100" # One of: ["a100", "inferentia", "k520", "k80", "m60", "radeon-pro-v520", "t4", "vu9p", "v100", "a10g", "h100", "t4g"]],
    #               accelerator_total_memory_mi_b: {
    #                 min: 1,
    #                 max: 1
    #               },
    #               network_bandwidth_gbps: {
    #                 min: 1.0,
    #                 max: 1.0
    #               },
    #               allowed_instance_types: ["AllowedInstanceType"],
    #               max_spot_price_as_percentage_of_optimal_on_demand_price: 1
    #             }
    #           },
    #           propagate_tags: "CAPACITY_PROVIDER" # One of: ["CAPACITY_PROVIDER", "NONE"]
    #         },
    #         update_status: "CREATE_IN_PROGRESS" # One of: ["CREATE_IN_PROGRESS", "CREATE_COMPLETE", "CREATE_FAILED", "DELETE_IN_PROGRESS", "DELETE_COMPLETE", "DELETE_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_COMPLETE", "UPDATE_FAILED"],
    #         update_status_reason: "String",
    #         tags: [
    #           {
    #             key: "TagKey",
    #             value: "TagValue"
    #           }
    #         ],
    #         type: "EC2_AUTOSCALING" # One of: ["EC2_AUTOSCALING", "MANAGED_INSTANCES", "FARGATE", "FARGATE_SPOT"]
    #       }
    #     ],
    #     failures: [
    #       {
    #         arn: "String",
    #         reason: "String",
    #         detail: "String"
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::DescribeCapacityProvidersResponse]
    def describe_capacity_providers(params = {}, options = {})
      request = build_request(:describe_capacity_providers, params)
      request.send_request(options)
    end

    # <p>Describes one or more of your clusters.</p>
    #          <p> For CLI examples, see <a href="https://github.com/aws/aws-cli/blob/develop/awscli/examples/ecs/describe-clusters.rst">describe-clusters.rst</a> on GitHub.</p>
    # @param [Hash, Types::DescribeClustersRequest] params
    # @option params [Array<String>] :clusters
    #   <p>A list of up to 100 cluster names or full cluster Amazon Resource Name (ARN) entries.
    #   			If you do not specify a cluster, the default cluster is assumed.</p>
    # @option params [Array<String>] :include
    #   <p>Determines whether to include additional information about the clusters in the
    #   			response. If this field is omitted, this information isn't included.</p>
    #            <p>If <code>ATTACHMENTS</code> is specified, the attachments for the container instances
    #   			or tasks within the cluster are included, for example the capacity providers.</p>
    #            <p>If <code>SETTINGS</code> is specified, the settings for the cluster are
    #   			included.</p>
    #            <p>If <code>CONFIGURATIONS</code> is specified, the configuration for the cluster is
    #   			included.</p>
    #            <p>If <code>STATISTICS</code> is specified, the task and service count is included,
    #   			separated by launch type.</p>
    #            <p>If <code>TAGS</code> is specified, the metadata tags associated with the cluster are
    #   			included.</p>
    # @example To describe a cluster
    #   # This example provides a description of the specified cluster in your default region.
    #   params = {
    #     clusters: [
    #       "default"
    #     ]
    #   }
    #   options = {}
    #   response = client.describe_clusters(params, options)
    #   response.to_h #=>
    #   {
    #     clusters: [
    #       {
    #         cluster_name: "default",
    #         status: "ACTIVE",
    #         cluster_arn: "arn:aws:ecs:us-east-1:aws_account_id:cluster/default"
    #       }
    #     ],
    #     failures: [
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     clusters: ["String"],
    #     include: ["ATTACHMENTS" # One of: ["ATTACHMENTS", "CONFIGURATIONS", "SETTINGS", "STATISTICS", "TAGS"]]
    #   }
    #   options = {}
    #   response = client.describe_clusters(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     clusters: [
    #       {
    #         cluster_arn: "String",
    #         cluster_name: "String",
    #         configuration: {
    #           execute_command_configuration: {
    #             kms_key_id: "String",
    #             logging: "NONE" # One of: ["NONE", "DEFAULT", "OVERRIDE"],
    #             log_configuration: {
    #               cloud_watch_log_group_name: "String",
    #               cloud_watch_encryption_enabled: false,
    #               s3_bucket_name: "String",
    #               s3_encryption_enabled: false,
    #               s3_key_prefix: "String"
    #             }
    #           },
    #           managed_storage_configuration: {
    #             kms_key_id: "String",
    #             fargate_ephemeral_storage_kms_key_id: "String"
    #           }
    #         },
    #         status: "String",
    #         registered_container_instances_count: 1,
    #         running_tasks_count: 1,
    #         pending_tasks_count: 1,
    #         active_services_count: 1,
    #         statistics: [
    #           {
    #             name: "String",
    #             value: "String"
    #           }
    #         ],
    #         tags: [
    #           {
    #             key: "TagKey",
    #             value: "TagValue"
    #           }
    #         ],
    #         settings: [
    #           {
    #             name: "containerInsights" # One of: ["containerInsights"],
    #             value: "String"
    #           }
    #         ],
    #         capacity_providers: ["String"],
    #         default_capacity_provider_strategy: [
    #           {
    #             capacity_provider: "String", # required
    #             weight: 1,
    #             base: 1
    #           }
    #         ],
    #         attachments: [
    #           {
    #             id: "String",
    #             type: "String",
    #             status: "String",
    #             details: [
    #               {
    #                 name: "String",
    #                 value: "String"
    #               }
    #             ]
    #           }
    #         ],
    #         attachments_status: "String",
    #         service_connect_defaults: {
    #           namespace: "String"
    #         }
    #       }
    #     ],
    #     failures: [
    #       {
    #         arn: "String",
    #         reason: "String",
    #         detail: "String"
    #       }
    #     ]
    #   }
    # @return [Types::DescribeClustersResponse]
    def describe_clusters(params = {}, options = {})
      request = build_request(:describe_clusters, params)
      request.send_request(options)
    end

    # <p>Describes one or more container instances. Returns metadata about each container
    # 			instance requested.</p>
    # @param [Hash, Types::DescribeContainerInstancesRequest] params
    # @option params [String] :cluster
    #   <p>The short name or full Amazon Resource Name (ARN) of the cluster that hosts the container instances to
    #   			describe. If you do not specify a cluster, the default cluster is assumed. This parameter is required if the container instance
    #   			or container instances you are describing were launched in any cluster other than the
    #   			default cluster.</p>
    # @option params [Array<String>] :container_instances
    #   <p>A list of up to 100 container instance IDs or full Amazon Resource Name (ARN) entries.</p>
    # @option params [Array<String>] :include
    #   <p>Specifies whether you want to see the resource tags for the container instance. If
    #   				<code>TAGS</code> is specified, the tags are included in the response. If
    #   				<code>CONTAINER_INSTANCE_HEALTH</code> is specified, the container instance health
    #   			is included in the response. If this field is omitted, tags and container instance
    #   			health status aren't included in the response.</p>
    # @example To describe container instance
    #   # This example provides a description of the specified container instance in your default region, using the container instance UUID as an identifier.
    #   params = {
    #     cluster: "default",
    #     container_instances: [
    #       "f2756532-8f13-4d53-87c9-aed50dc94cd7"
    #     ]
    #   }
    #   options = {}
    #   response = client.describe_container_instances(params, options)
    #   response.to_h #=>
    #   {
    #     failures: [
    #     ],
    #     container_instances: [
    #       {
    #         status: "ACTIVE",
    #         registered_resources: [
    #           {
    #             double_value: 0.0,
    #             type: "INTEGER",
    #             long_value: 0,
    #             integer_value: 2048,
    #             name: "CPU"
    #           },
    #           {
    #             double_value: 0.0,
    #             type: "INTEGER",
    #             long_value: 0,
    #             integer_value: 3768,
    #             name: "MEMORY"
    #           },
    #           {
    #             name: "PORTS",
    #             long_value: 0,
    #             double_value: 0.0,
    #             string_set_value: [
    #               "2376",
    #               "22",
    #               "51678",
    #               "2375"
    #             ],
    #             type: "STRINGSET",
    #             integer_value: 0
    #           }
    #         ],
    #         ec2_instance_id: "i-807f3249",
    #         agent_connected: true,
    #         container_instance_arn: "arn:aws:ecs:us-east-1:012345678910:container-instance/default/f2756532-8f13-4d53-87c9-aed50dc94cd7",
    #         pending_tasks_count: 0,
    #         remaining_resources: [
    #           {
    #             double_value: 0.0,
    #             type: "INTEGER",
    #             long_value: 0,
    #             integer_value: 1948,
    #             name: "CPU"
    #           },
    #           {
    #             double_value: 0.0,
    #             type: "INTEGER",
    #             long_value: 0,
    #             integer_value: 3668,
    #             name: "MEMORY"
    #           },
    #           {
    #             name: "PORTS",
    #             long_value: 0,
    #             double_value: 0.0,
    #             string_set_value: [
    #               "2376",
    #               "22",
    #               "80",
    #               "51678",
    #               "2375"
    #             ],
    #             type: "STRINGSET",
    #             integer_value: 0
    #           }
    #         ],
    #         running_tasks_count: 1
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster: "String",
    #     container_instances: ["String"], # required
    #     include: ["TAGS" # One of: ["TAGS", "CONTAINER_INSTANCE_HEALTH"]]
    #   }
    #   options = {}
    #   response = client.describe_container_instances(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     container_instances: [
    #       {
    #         container_instance_arn: "String",
    #         ec2_instance_id: "String",
    #         capacity_provider_name: "String",
    #         version: 1,
    #         version_info: {
    #           agent_version: "String",
    #           agent_hash: "String",
    #           docker_version: "String"
    #         },
    #         remaining_resources: [
    #           {
    #             name: "String",
    #             type: "String",
    #             double_value: 1.0,
    #             long_value: 1,
    #             integer_value: 1,
    #             string_set_value: ["String"]
    #           }
    #         ],
    #         registered_resources: [
    #           {
    #             name: "String",
    #             type: "String",
    #             double_value: 1.0,
    #             long_value: 1,
    #             integer_value: 1,
    #             string_set_value: ["String"]
    #           }
    #         ],
    #         status: "String",
    #         status_reason: "String",
    #         agent_connected: false,
    #         running_tasks_count: 1,
    #         pending_tasks_count: 1,
    #         agent_update_status: "PENDING" # One of: ["PENDING", "STAGING", "STAGED", "UPDATING", "UPDATED", "FAILED"],
    #         attributes: [
    #           {
    #             name: "String", # required
    #             value: "String",
    #             target_type: "container-instance" # One of: ["container-instance"],
    #             target_id: "String"
    #           }
    #         ],
    #         registered_at: Time.now,
    #         attachments: [
    #           {
    #             id: "String",
    #             type: "String",
    #             status: "String",
    #             details: [
    #               {
    #                 name: "String",
    #                 value: "String"
    #               }
    #             ]
    #           }
    #         ],
    #         tags: [
    #           {
    #             key: "TagKey",
    #             value: "TagValue"
    #           }
    #         ],
    #         health_status: {
    #           overall_status: "OK" # One of: ["OK", "IMPAIRED", "INSUFFICIENT_DATA", "INITIALIZING"],
    #           details: [
    #             {
    #               type: "CONTAINER_RUNTIME" # One of: ["CONTAINER_RUNTIME"],
    #               status: "OK" # One of: ["OK", "IMPAIRED", "INSUFFICIENT_DATA", "INITIALIZING"],
    #               last_updated: Time.now,
    #               last_status_change: Time.now
    #             }
    #           ]
    #         }
    #       }
    #     ],
    #     failures: [
    #       {
    #         arn: "String",
    #         reason: "String",
    #         detail: "String"
    #       }
    #     ]
    #   }
    # @return [Types::DescribeContainerInstancesResponse]
    def describe_container_instances(params = {}, options = {})
      request = build_request(:describe_container_instances, params)
      request.send_request(options)
    end

    # <p>Describes one or more of your service deployments.</p>
    #          <p>A service deployment happens when you release a software update for the service. For
    # 			more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-deployment.html">View service history using Amazon ECS service deployments</a>.</p>
    # @param [Hash, Types::DescribeServiceDeploymentsRequest] params
    # @option params [Array<String>] :service_deployment_arns
    #   <p>The ARN of the service deployment.</p>
    #            <p>You can specify a maximum of 20 ARNs.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_deployment_arns: ["String"], # required
    #   }
    #   options = {}
    #   response = client.describe_service_deployments(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     service_deployments: [
    #       {
    #         service_deployment_arn: "String",
    #         service_arn: "String",
    #         cluster_arn: "String",
    #         created_at: Time.now,
    #         started_at: Time.now,
    #         finished_at: Time.now,
    #         stopped_at: Time.now,
    #         updated_at: Time.now,
    #         source_service_revisions: [
    #           {
    #             arn: "String",
    #             requested_task_count: 1,
    #             running_task_count: 1,
    #             pending_task_count: 1
    #           }
    #         ],
    #         target_service_revision: {
    #           arn: "String",
    #           requested_task_count: 1,
    #           running_task_count: 1,
    #           pending_task_count: 1
    #         },
    #         status: "PENDING" # One of: ["PENDING", "SUCCESSFUL", "STOPPED", "STOP_REQUESTED", "IN_PROGRESS", "ROLLBACK_REQUESTED", "ROLLBACK_IN_PROGRESS", "ROLLBACK_SUCCESSFUL", "ROLLBACK_FAILED"],
    #         status_reason: "String",
    #         lifecycle_stage: "RECONCILE_SERVICE" # One of: ["RECONCILE_SERVICE", "PRE_SCALE_UP", "SCALE_UP", "POST_SCALE_UP", "TEST_TRAFFIC_SHIFT", "POST_TEST_TRAFFIC_SHIFT", "PRODUCTION_TRAFFIC_SHIFT", "POST_PRODUCTION_TRAFFIC_SHIFT", "BAKE_TIME", "CLEAN_UP"],
    #         deployment_configuration: {
    #           deployment_circuit_breaker: {
    #             enable: false, # required
    #             rollback: false, # required
    #           },
    #           maximum_percent: 1,
    #           minimum_healthy_percent: 1,
    #           alarms: {
    #             alarm_names: ["String"], # required
    #             rollback: false, # required
    #             enable: false, # required
    #           },
    #           strategy: "ROLLING" # One of: ["ROLLING", "BLUE_GREEN"],
    #           bake_time_in_minutes: 1,
    #           lifecycle_hooks: [
    #             {
    #               hook_target_arn: "String",
    #               role_arn: "IAMRoleArn",
    #               lifecycle_stages: ["RECONCILE_SERVICE" # One of: ["RECONCILE_SERVICE", "PRE_SCALE_UP", "POST_SCALE_UP", "TEST_TRAFFIC_SHIFT", "POST_TEST_TRAFFIC_SHIFT", "PRODUCTION_TRAFFIC_SHIFT", "POST_PRODUCTION_TRAFFIC_SHIFT"]],
    #               hook_details: ""null""
    #             }
    #           ]
    #         },
    #         rollback: {
    #           reason: "String",
    #           started_at: Time.now,
    #           service_revision_arn: "String"
    #         },
    #         deployment_circuit_breaker: {
    #           status: "TRIGGERED" # One of: ["TRIGGERED", "MONITORING", "MONITORING_COMPLETE", "DISABLED"],
    #           failure_count: 1,
    #           threshold: 1
    #         },
    #         alarms: {
    #           status: "TRIGGERED" # One of: ["TRIGGERED", "MONITORING", "MONITORING_COMPLETE", "DISABLED"],
    #           alarm_names: ["String"],
    #           triggered_alarm_names: ["String"]
    #         }
    #       }
    #     ],
    #     failures: [
    #       {
    #         arn: "String",
    #         reason: "String",
    #         detail: "String"
    #       }
    #     ]
    #   }
    # @return [Types::DescribeServiceDeploymentsResponse]
    def describe_service_deployments(params = {}, options = {})
      request = build_request(:describe_service_deployments, params)
      request.send_request(options)
    end

    # <p>Describes one or more service revisions.</p>
    #          <p>A service revision is a version of the service that includes the values for the Amazon
    # 			ECS resources (for example, task definition) and the environment resources (for example,
    # 			load balancers, subnets, and security groups). For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-revision.html">Amazon ECS service revisions</a>.</p>
    #          <p>You can't describe a service revision that was created before October 25, 2024.</p>
    # @param [Hash, Types::DescribeServiceRevisionsRequest] params
    # @option params [Array<String>] :service_revision_arns
    #   <p>The ARN of the service revision. </p>
    #            <p>You can specify a maximum of 20 ARNs.</p>
    #            <p>You can call <a href="https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_ListServiceDeployments.html">ListServiceDeployments</a> to get the ARNs.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_revision_arns: ["String"], # required
    #   }
    #   options = {}
    #   response = client.describe_service_revisions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     service_revisions: [
    #       {
    #         service_revision_arn: "String",
    #         service_arn: "String",
    #         cluster_arn: "String",
    #         task_definition: "String",
    #         capacity_provider_strategy: [
    #           {
    #             capacity_provider: "String", # required
    #             weight: 1,
    #             base: 1
    #           }
    #         ],
    #         launch_type: "EC2" # One of: ["EC2", "FARGATE", "EXTERNAL", "MANAGED_INSTANCES"],
    #         platform_version: "String",
    #         platform_family: "String",
    #         load_balancers: [
    #           {
    #             target_group_arn: "String",
    #             load_balancer_name: "String",
    #             container_name: "String",
    #             container_port: 1,
    #             advanced_configuration: {
    #               alternate_target_group_arn: "String",
    #               production_listener_rule: "String",
    #               test_listener_rule: "String",
    #               role_arn: "String"
    #             }
    #           }
    #         ],
    #         service_registries: [
    #           {
    #             registry_arn: "String",
    #             port: 1,
    #             container_name: "String",
    #             container_port: 1
    #           }
    #         ],
    #         network_configuration: {
    #           awsvpc_configuration: {
    #             subnets: ["String"], # required
    #             security_groups: ["String"],
    #             assign_public_ip: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #           }
    #         },
    #         container_images: [
    #           {
    #             container_name: "String",
    #             image_digest: "String",
    #             image: "String"
    #           }
    #         ],
    #         guard_duty_enabled: false,
    #         service_connect_configuration: {
    #           enabled: false, # required
    #           namespace: "String",
    #           services: [
    #             {
    #               port_name: "String", # required
    #               discovery_name: "String",
    #               client_aliases: [
    #                 {
    #                   port: 1, # required
    #                   dns_name: "String",
    #                   test_traffic_rules: {
    #                     header: { # required
    #                       name: "String", # required
    #                       value: {
    #                         exact: "String", # required
    #                       }
    #                     }
    #                   }
    #                 }
    #               ],
    #               ingress_port_override: 1,
    #               timeout: {
    #                 idle_timeout_seconds: 1,
    #                 per_request_timeout_seconds: 1
    #               },
    #               tls: {
    #                 issuer_certificate_authority: { # required
    #                   aws_pca_authority_arn: "String"
    #                 },
    #                 kms_key: "String",
    #                 role_arn: "String"
    #               }
    #             }
    #           ],
    #           log_configuration: {
    #             log_driver: "json-file" # One of: ["json-file", "syslog", "journald", "gelf", "fluentd", "awslogs", "splunk", "awsfirelens"], # required
    #             options: {
    #               "String" => "String"
    #             },
    #             secret_options: [
    #               {
    #                 name: "String", # required
    #                 value_from: "String", # required
    #               }
    #             ]
    #           }
    #         },
    #         volume_configurations: [
    #           {
    #             name: "ECSVolumeName", # required
    #             managed_ebs_volume: {
    #               encrypted: false,
    #               kms_key_id: "EBSKMSKeyId",
    #               volume_type: "EBSVolumeType",
    #               size_in_gi_b: 1,
    #               snapshot_id: "EBSSnapshotId",
    #               volume_initialization_rate: 1,
    #               iops: 1,
    #               throughput: 1,
    #               tag_specifications: [
    #                 {
    #                   resource_type: "volume" # One of: ["volume"], # required
    #                   tags: [
    #                     {
    #                       key: "TagKey",
    #                       value: "TagValue"
    #                     }
    #                   ],
    #                   propagate_tags: "TASK_DEFINITION" # One of: ["TASK_DEFINITION", "SERVICE", "NONE"]
    #                 }
    #               ],
    #               role_arn: "IAMRoleArn", # required
    #               filesystem_type: "ext3" # One of: ["ext3", "ext4", "xfs", "ntfs"]
    #             }
    #           }
    #         ],
    #         fargate_ephemeral_storage: {
    #           kms_key_id: "String"
    #         },
    #         created_at: Time.now,
    #         vpc_lattice_configurations: [
    #           {
    #             role_arn: "IAMRoleArn", # required
    #             target_group_arn: "String", # required
    #             port_name: "String", # required
    #           }
    #         ],
    #         resolved_configuration: {
    #           load_balancers: [
    #             {
    #               target_group_arn: "String",
    #               production_listener_rule: "String"
    #             }
    #           ]
    #         }
    #       }
    #     ],
    #     failures: [
    #       {
    #         arn: "String",
    #         reason: "String",
    #         detail: "String"
    #       }
    #     ]
    #   }
    # @return [Types::DescribeServiceRevisionsResponse]
    def describe_service_revisions(params = {}, options = {})
      request = build_request(:describe_service_revisions, params)
      request.send_request(options)
    end

    # <p>Describes the specified services running in your cluster.</p>
    # @param [Hash, Types::DescribeServicesRequest] params
    # @option params [String] :cluster
    #   <p>The short name or full Amazon Resource Name (ARN)the cluster that hosts the service to describe.
    #   			If you do not specify a cluster, the default cluster is assumed. This parameter is required if the service or services you are
    #   			describing were launched in any cluster other than the default cluster.</p>
    # @option params [Array<String>] :services
    #   <p>A list of services to describe. You may specify up to 10 services to describe in a
    #   			single operation.</p>
    # @option params [Array<String>] :include
    #   <p>Determines whether you want to see the resource tags for the service. If
    #   				<code>TAGS</code> is specified, the tags are included in the response. If this field
    #   			is omitted, tags aren't included in the response.</p>
    # @example To describe a service
    #   # This example provides descriptive information about the service named ``ecs-simple-service``.
    #   params = {
    #     services: [
    #       "ecs-simple-service"
    #     ]
    #   }
    #   options = {}
    #   response = client.describe_services(params, options)
    #   response.to_h #=>
    #   {
    #     failures: [
    #     ],
    #     services: [
    #       {
    #         cluster_arn: "arn:aws:ecs:us-east-1:012345678910:cluster/default",
    #         created_at: Time.parse("2016-08-29T16:25:52.130Z"),
    #         deployment_configuration: {
    #           maximum_percent: 200,
    #           minimum_healthy_percent: 100
    #         },
    #         deployments: [
    #           {
    #             created_at: Time.parse("2016-08-29T16:25:52.130Z"),
    #             desired_count: 1,
    #             id: "ecs-svc/9223370564341623665",
    #             pending_count: 0,
    #             running_count: 0,
    #             status: "PRIMARY",
    #             task_definition: "arn:aws:ecs:us-east-1:012345678910:task-definition/hello_world:6",
    #             updated_at: Time.parse("2016-08-29T16:25:52.130Z")
    #           }
    #         ],
    #         desired_count: 1,
    #         events: [
    #           {
    #             created_at: Time.parse("2016-08-29T16:25:58.520Z"),
    #             id: "38c285e5-d335-4b68-8b15-e46dedc8e88d",
    #             message: "(service ecs-simple-service) was unable to place a task because no container instance met all of its requirements. The closest matching (container-instance 3f4de1c5-ffdd-4954-af7e-75b4be0c8841) is already using a port required by your task. For more information, see the Troubleshooting section of the Amazon ECS Developer Guide."
    #           }
    #         ],
    #         load_balancers: [
    #         ],
    #         pending_count: 0,
    #         running_count: 0,
    #         service_arn: "arn:aws:ecs:us-east-1:012345678910:service/default/ecs-simple-service",
    #         service_name: "ecs-simple-service",
    #         status: "ACTIVE",
    #         task_definition: "arn:aws:ecs:us-east-1:012345678910:task-definition/default/hello_world:6"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster: "String",
    #     services: ["String"], # required
    #     include: ["TAGS" # One of: ["TAGS"]]
    #   }
    #   options = {}
    #   response = client.describe_services(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     services: [
    #       {
    #         service_arn: "String",
    #         service_name: "String",
    #         cluster_arn: "String",
    #         load_balancers: [
    #           {
    #             target_group_arn: "String",
    #             load_balancer_name: "String",
    #             container_name: "String",
    #             container_port: 1,
    #             advanced_configuration: {
    #               alternate_target_group_arn: "String",
    #               production_listener_rule: "String",
    #               test_listener_rule: "String",
    #               role_arn: "String"
    #             }
    #           }
    #         ],
    #         service_registries: [
    #           {
    #             registry_arn: "String",
    #             port: 1,
    #             container_name: "String",
    #             container_port: 1
    #           }
    #         ],
    #         status: "String",
    #         desired_count: 1,
    #         running_count: 1,
    #         pending_count: 1,
    #         launch_type: "EC2" # One of: ["EC2", "FARGATE", "EXTERNAL", "MANAGED_INSTANCES"],
    #         capacity_provider_strategy: [
    #           {
    #             capacity_provider: "String", # required
    #             weight: 1,
    #             base: 1
    #           }
    #         ],
    #         platform_version: "String",
    #         platform_family: "String",
    #         task_definition: "String",
    #         deployment_configuration: {
    #           deployment_circuit_breaker: {
    #             enable: false, # required
    #             rollback: false, # required
    #           },
    #           maximum_percent: 1,
    #           minimum_healthy_percent: 1,
    #           alarms: {
    #             alarm_names: ["String"], # required
    #             rollback: false, # required
    #             enable: false, # required
    #           },
    #           strategy: "ROLLING" # One of: ["ROLLING", "BLUE_GREEN"],
    #           bake_time_in_minutes: 1,
    #           lifecycle_hooks: [
    #             {
    #               hook_target_arn: "String",
    #               role_arn: "IAMRoleArn",
    #               lifecycle_stages: ["RECONCILE_SERVICE" # One of: ["RECONCILE_SERVICE", "PRE_SCALE_UP", "POST_SCALE_UP", "TEST_TRAFFIC_SHIFT", "POST_TEST_TRAFFIC_SHIFT", "PRODUCTION_TRAFFIC_SHIFT", "POST_PRODUCTION_TRAFFIC_SHIFT"]],
    #               hook_details: ""null""
    #             }
    #           ]
    #         },
    #         task_sets: [
    #           {
    #             id: "String",
    #             task_set_arn: "String",
    #             service_arn: "String",
    #             cluster_arn: "String",
    #             started_by: "String",
    #             external_id: "String",
    #             status: "String",
    #             task_definition: "String",
    #             computed_desired_count: 1,
    #             pending_count: 1,
    #             running_count: 1,
    #             created_at: Time.now,
    #             updated_at: Time.now,
    #             launch_type: "EC2" # One of: ["EC2", "FARGATE", "EXTERNAL", "MANAGED_INSTANCES"],
    #             capacity_provider_strategy: [
    #               {
    #                 capacity_provider: "String", # required
    #                 weight: 1,
    #                 base: 1
    #               }
    #             ],
    #             platform_version: "String",
    #             platform_family: "String",
    #             network_configuration: {
    #               awsvpc_configuration: {
    #                 subnets: ["String"], # required
    #                 security_groups: ["String"],
    #                 assign_public_ip: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #               }
    #             },
    #             load_balancers: [
    #               {
    #                 target_group_arn: "String",
    #                 load_balancer_name: "String",
    #                 container_name: "String",
    #                 container_port: 1,
    #                 advanced_configuration: {
    #                   alternate_target_group_arn: "String",
    #                   production_listener_rule: "String",
    #                   test_listener_rule: "String",
    #                   role_arn: "String"
    #                 }
    #               }
    #             ],
    #             service_registries: [
    #               {
    #                 registry_arn: "String",
    #                 port: 1,
    #                 container_name: "String",
    #                 container_port: 1
    #               }
    #             ],
    #             scale: {
    #               value: 1.0,
    #               unit: "PERCENT" # One of: ["PERCENT"]
    #             },
    #             stability_status: "STEADY_STATE" # One of: ["STEADY_STATE", "STABILIZING"],
    #             stability_status_at: Time.now,
    #             tags: [
    #               {
    #                 key: "TagKey",
    #                 value: "TagValue"
    #               }
    #             ],
    #             fargate_ephemeral_storage: {
    #               kms_key_id: "String"
    #             }
    #           }
    #         ],
    #         deployments: [
    #           {
    #             id: "String",
    #             status: "String",
    #             task_definition: "String",
    #             desired_count: 1,
    #             pending_count: 1,
    #             running_count: 1,
    #             failed_tasks: 1,
    #             created_at: Time.now,
    #             updated_at: Time.now,
    #             capacity_provider_strategy: [
    #               {
    #                 capacity_provider: "String", # required
    #                 weight: 1,
    #                 base: 1
    #               }
    #             ],
    #             launch_type: "EC2" # One of: ["EC2", "FARGATE", "EXTERNAL", "MANAGED_INSTANCES"],
    #             platform_version: "String",
    #             platform_family: "String",
    #             network_configuration: {
    #               awsvpc_configuration: {
    #                 subnets: ["String"], # required
    #                 security_groups: ["String"],
    #                 assign_public_ip: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #               }
    #             },
    #             rollout_state: "COMPLETED" # One of: ["COMPLETED", "FAILED", "IN_PROGRESS"],
    #             rollout_state_reason: "String",
    #             service_connect_configuration: {
    #               enabled: false, # required
    #               namespace: "String",
    #               services: [
    #                 {
    #                   port_name: "String", # required
    #                   discovery_name: "String",
    #                   client_aliases: [
    #                     {
    #                       port: 1, # required
    #                       dns_name: "String",
    #                       test_traffic_rules: {
    #                         header: { # required
    #                           name: "String", # required
    #                           value: {
    #                             exact: "String", # required
    #                           }
    #                         }
    #                       }
    #                     }
    #                   ],
    #                   ingress_port_override: 1,
    #                   timeout: {
    #                     idle_timeout_seconds: 1,
    #                     per_request_timeout_seconds: 1
    #                   },
    #                   tls: {
    #                     issuer_certificate_authority: { # required
    #                       aws_pca_authority_arn: "String"
    #                     },
    #                     kms_key: "String",
    #                     role_arn: "String"
    #                   }
    #                 }
    #               ],
    #               log_configuration: {
    #                 log_driver: "json-file" # One of: ["json-file", "syslog", "journald", "gelf", "fluentd", "awslogs", "splunk", "awsfirelens"], # required
    #                 options: {
    #                   "String" => "String"
    #                 },
    #                 secret_options: [
    #                   {
    #                     name: "String", # required
    #                     value_from: "String", # required
    #                   }
    #                 ]
    #               }
    #             },
    #             service_connect_resources: [
    #               {
    #                 discovery_name: "String",
    #                 discovery_arn: "String"
    #               }
    #             ],
    #             volume_configurations: [
    #               {
    #                 name: "ECSVolumeName", # required
    #                 managed_ebs_volume: {
    #                   encrypted: false,
    #                   kms_key_id: "EBSKMSKeyId",
    #                   volume_type: "EBSVolumeType",
    #                   size_in_gi_b: 1,
    #                   snapshot_id: "EBSSnapshotId",
    #                   volume_initialization_rate: 1,
    #                   iops: 1,
    #                   throughput: 1,
    #                   tag_specifications: [
    #                     {
    #                       resource_type: "volume" # One of: ["volume"], # required
    #                       tags: [
    #                         {
    #                           key: "TagKey",
    #                           value: "TagValue"
    #                         }
    #                       ],
    #                       propagate_tags: "TASK_DEFINITION" # One of: ["TASK_DEFINITION", "SERVICE", "NONE"]
    #                     }
    #                   ],
    #                   role_arn: "IAMRoleArn", # required
    #                   filesystem_type: "ext3" # One of: ["ext3", "ext4", "xfs", "ntfs"]
    #                 }
    #               }
    #             ],
    #             fargate_ephemeral_storage: {
    #               kms_key_id: "String"
    #             },
    #             vpc_lattice_configurations: [
    #               {
    #                 role_arn: "IAMRoleArn", # required
    #                 target_group_arn: "String", # required
    #                 port_name: "String", # required
    #               }
    #             ]
    #           }
    #         ],
    #         role_arn: "String",
    #         events: [
    #           {
    #             id: "String",
    #             created_at: Time.now,
    #             message: "String"
    #           }
    #         ],
    #         created_at: Time.now,
    #         placement_constraints: [
    #           {
    #             type: "distinctInstance" # One of: ["distinctInstance", "memberOf"],
    #             expression: "String"
    #           }
    #         ],
    #         placement_strategy: [
    #           {
    #             type: "random" # One of: ["random", "spread", "binpack"],
    #             field: "String"
    #           }
    #         ],
    #         network_configuration: {
    #           awsvpc_configuration: {
    #             subnets: ["String"], # required
    #             security_groups: ["String"],
    #             assign_public_ip: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #           }
    #         },
    #         health_check_grace_period_seconds: 1,
    #         scheduling_strategy: "REPLICA" # One of: ["REPLICA", "DAEMON"],
    #         deployment_controller: {
    #           type: "ECS" # One of: ["ECS", "CODE_DEPLOY", "EXTERNAL"], # required
    #         },
    #         tags: [
    #           {
    #             key: "TagKey",
    #             value: "TagValue"
    #           }
    #         ],
    #         created_by: "String",
    #         enable_ecs_managed_tags: false,
    #         propagate_tags: "TASK_DEFINITION" # One of: ["TASK_DEFINITION", "SERVICE", "NONE"],
    #         enable_execute_command: false,
    #         availability_zone_rebalancing: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #       }
    #     ],
    #     failures: [
    #       {
    #         arn: "String",
    #         reason: "String",
    #         detail: "String"
    #       }
    #     ]
    #   }
    # @return [Types::DescribeServicesResponse]
    def describe_services(params = {}, options = {})
      request = build_request(:describe_services, params)
      request.send_request(options)
    end

    # <p>Describes a task definition. You can specify a <code>family</code> and
    # 				<code>revision</code> to find information about a specific task definition, or you
    # 			can simply specify the family to find the latest <code>ACTIVE</code> revision in that
    # 			family.</p>
    #          <note>
    #             <p>You can only describe <code>INACTIVE</code> task definitions while an active task
    # 				or service references them.</p>
    #          </note>
    # @param [Hash, Types::DescribeTaskDefinitionRequest] params
    # @option params [String] :task_definition
    #   <p>The <code>family</code> for the latest <code>ACTIVE</code> revision,
    #   				<code>family</code> and <code>revision</code> (<code>family:revision</code>) for a
    #   			specific revision in the family, or full Amazon Resource Name (ARN) of the task definition to
    #   			describe.</p>
    # @option params [Array<String>] :include
    #   <p>Determines whether to see the resource tags for the task definition. If
    #   				<code>TAGS</code> is specified, the tags are included in the response. If this field
    #   			is omitted, tags aren't included in the response.</p>
    # @example To describe a task definition
    #   # This example provides a description of the specified task definition.
    #   params = {
    #     task_definition: "hello_world:8"
    #   }
    #   options = {}
    #   response = client.describe_task_definition(params, options)
    #   response.to_h #=>
    #   {
    #     task_definition: {
    #       family: "hello_world",
    #       task_definition_arn: "arn:aws:ecs:us-east-1:<aws_account_id>:task-definition/hello_world:8",
    #       container_definitions: [
    #         {
    #           mount_points: [
    #           ],
    #           name: "wordpress",
    #           links: [
    #             "mysql"
    #           ],
    #           image: "wordpress",
    #           cpu: 10,
    #           environment: [
    #           ],
    #           memory: 500,
    #           port_mappings: [
    #             {
    #               container_port: 80,
    #               host_port: 80
    #             }
    #           ],
    #           essential: true,
    #           volumes_from: [
    #           ]
    #         },
    #         {
    #           mount_points: [
    #           ],
    #           name: "mysql",
    #           image: "mysql",
    #           cpu: 10,
    #           environment: [
    #             {
    #               name: "MYSQL_ROOT_PASSWORD",
    #               value: "password"
    #             }
    #           ],
    #           memory: 500,
    #           port_mappings: [
    #           ],
    #           volumes_from: [
    #           ],
    #           essential: true
    #         }
    #       ],
    #       volumes: [
    #       ],
    #       revision: 8
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     task_definition: "String", # required
    #     include: ["TAGS" # One of: ["TAGS"]]
    #   }
    #   options = {}
    #   response = client.describe_task_definition(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     task_definition: {
    #       task_definition_arn: "String",
    #       container_definitions: [
    #         {
    #           name: "String",
    #           image: "String",
    #           repository_credentials: {
    #             credentials_parameter: "String", # required
    #           },
    #           cpu: 1,
    #           memory: 1,
    #           memory_reservation: 1,
    #           links: ["String"],
    #           port_mappings: [
    #             {
    #               container_port: 1,
    #               host_port: 1,
    #               protocol: "tcp" # One of: ["tcp", "udp"],
    #               name: "String",
    #               app_protocol: "http" # One of: ["http", "http2", "grpc"],
    #               container_port_range: "String"
    #             }
    #           ],
    #           essential: false,
    #           restart_policy: {
    #             enabled: false, # required
    #             ignored_exit_codes: [1],
    #             restart_attempt_period: 1
    #           },
    #           entry_point: ["String"],
    #           command: ["String"],
    #           environment: [
    #             {
    #               name: "String",
    #               value: "String"
    #             }
    #           ],
    #           environment_files: [
    #             {
    #               value: "String", # required
    #               type: "s3" # One of: ["s3"], # required
    #             }
    #           ],
    #           mount_points: [
    #             {
    #               source_volume: "String",
    #               container_path: "String",
    #               read_only: false
    #             }
    #           ],
    #           volumes_from: [
    #             {
    #               source_container: "String",
    #               read_only: false
    #             }
    #           ],
    #           linux_parameters: {
    #             capabilities: {
    #               add: ["String"],
    #               drop: ["String"]
    #             },
    #             devices: [
    #               {
    #                 host_path: "String", # required
    #                 container_path: "String",
    #                 permissions: ["read" # One of: ["read", "write", "mknod"]]
    #               }
    #             ],
    #             init_process_enabled: false,
    #             shared_memory_size: 1,
    #             tmpfs: [
    #               {
    #                 container_path: "String", # required
    #                 size: 1, # required
    #                 mount_options: ["String"]
    #               }
    #             ],
    #             max_swap: 1,
    #             swappiness: 1
    #           },
    #           secrets: [
    #             {
    #               name: "String", # required
    #               value_from: "String", # required
    #             }
    #           ],
    #           depends_on: [
    #             {
    #               container_name: "String", # required
    #               condition: "START" # One of: ["START", "COMPLETE", "SUCCESS", "HEALTHY"], # required
    #             }
    #           ],
    #           start_timeout: 1,
    #           stop_timeout: 1,
    #           version_consistency: "enabled" # One of: ["enabled", "disabled"],
    #           hostname: "String",
    #           user: "String",
    #           working_directory: "String",
    #           disable_networking: false,
    #           privileged: false,
    #           readonly_root_filesystem: false,
    #           dns_servers: ["String"],
    #           dns_search_domains: ["String"],
    #           extra_hosts: [
    #             {
    #               hostname: "String", # required
    #               ip_address: "String", # required
    #             }
    #           ],
    #           docker_security_options: ["String"],
    #           interactive: false,
    #           pseudo_terminal: false,
    #           docker_labels: {
    #             "String" => "String"
    #           },
    #           ulimits: [
    #             {
    #               name: "core" # One of: ["core", "cpu", "data", "fsize", "locks", "memlock", "msgqueue", "nice", "nofile", "nproc", "rss", "rtprio", "rttime", "sigpending", "stack"], # required
    #               soft_limit: 1, # required
    #               hard_limit: 1, # required
    #             }
    #           ],
    #           log_configuration: {
    #             log_driver: "json-file" # One of: ["json-file", "syslog", "journald", "gelf", "fluentd", "awslogs", "splunk", "awsfirelens"], # required
    #             options: {
    #               "String" => "String"
    #             },
    #             secret_options: [
    #               {
    #                 name: "String", # required
    #                 value_from: "String", # required
    #               }
    #             ]
    #           },
    #           health_check: {
    #             command: ["String"], # required
    #             interval: 1,
    #             timeout: 1,
    #             retries: 1,
    #             start_period: 1
    #           },
    #           system_controls: [
    #             {
    #               namespace: "String",
    #               value: "String"
    #             }
    #           ],
    #           resource_requirements: [
    #             {
    #               value: "String", # required
    #               type: "GPU" # One of: ["GPU", "InferenceAccelerator"], # required
    #             }
    #           ],
    #           firelens_configuration: {
    #             type: "fluentd" # One of: ["fluentd", "fluentbit"], # required
    #             options: {
    #               "String" => "String"
    #             }
    #           },
    #           credential_specs: ["String"]
    #         }
    #       ],
    #       family: "String",
    #       task_role_arn: "String",
    #       execution_role_arn: "String",
    #       network_mode: "bridge" # One of: ["bridge", "host", "awsvpc", "none"],
    #       revision: 1,
    #       volumes: [
    #         {
    #           name: "String",
    #           host: {
    #             source_path: "String"
    #           },
    #           docker_volume_configuration: {
    #             scope: "task" # One of: ["task", "shared"],
    #             autoprovision: false,
    #             driver: "String",
    #             driver_opts: {
    #               "String" => "String"
    #             },
    #             labels: {
    #               "String" => "String"
    #             }
    #           },
    #           efs_volume_configuration: {
    #             file_system_id: "String", # required
    #             root_directory: "String",
    #             transit_encryption: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #             transit_encryption_port: 1,
    #             authorization_config: {
    #               access_point_id: "String",
    #               iam: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #             }
    #           },
    #           fsx_windows_file_server_volume_configuration: {
    #             file_system_id: "String", # required
    #             root_directory: "String", # required
    #             authorization_config: { # required
    #               credentials_parameter: "String", # required
    #               domain: "String", # required
    #             }
    #           },
    #           configured_at_launch: false
    #         }
    #       ],
    #       status: "ACTIVE" # One of: ["ACTIVE", "INACTIVE", "DELETE_IN_PROGRESS"],
    #       requires_attributes: [
    #         {
    #           name: "String", # required
    #           value: "String",
    #           target_type: "container-instance" # One of: ["container-instance"],
    #           target_id: "String"
    #         }
    #       ],
    #       placement_constraints: [
    #         {
    #           type: "memberOf" # One of: ["memberOf"],
    #           expression: "String"
    #         }
    #       ],
    #       compatibilities: ["EC2" # One of: ["EC2", "FARGATE", "EXTERNAL", "MANAGED_INSTANCES"]],
    #       runtime_platform: {
    #         cpu_architecture: "X86_64" # One of: ["X86_64", "ARM64"],
    #         operating_system_family: "WINDOWS_SERVER_2019_FULL" # One of: ["WINDOWS_SERVER_2019_FULL", "WINDOWS_SERVER_2019_CORE", "WINDOWS_SERVER_2016_FULL", "WINDOWS_SERVER_2004_CORE", "WINDOWS_SERVER_2022_CORE", "WINDOWS_SERVER_2022_FULL", "WINDOWS_SERVER_2025_CORE", "WINDOWS_SERVER_2025_FULL", "WINDOWS_SERVER_20H2_CORE", "LINUX"]
    #       },
    #       requires_compatibilities: ["EC2" # One of: ["EC2", "FARGATE", "EXTERNAL", "MANAGED_INSTANCES"]],
    #       cpu: "String",
    #       memory: "String",
    #       inference_accelerators: [
    #         {
    #           device_name: "String", # required
    #           device_type: "String", # required
    #         }
    #       ],
    #       pid_mode: "host" # One of: ["host", "task"],
    #       ipc_mode: "host" # One of: ["host", "task", "none"],
    #       proxy_configuration: {
    #         type: "APPMESH" # One of: ["APPMESH"],
    #         container_name: "String", # required
    #         properties: [
    #           {
    #             name: "String",
    #             value: "String"
    #           }
    #         ]
    #       },
    #       registered_at: Time.now,
    #       deregistered_at: Time.now,
    #       registered_by: "String",
    #       ephemeral_storage: {
    #         size_in_gi_b: 1, # required
    #       },
    #       enable_fault_injection: false
    #     },
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue"
    #       }
    #     ]
    #   }
    # @return [Types::DescribeTaskDefinitionResponse]
    def describe_task_definition(params = {}, options = {})
      request = build_request(:describe_task_definition, params)
      request.send_request(options)
    end

    # <p>Describes the task sets in the specified cluster and service. This is used when a
    # 			service uses the <code>EXTERNAL</code> deployment controller type. For more information,
    # 			see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/deployment-types.html">Amazon ECS Deployment
    # 				Types</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    # @param [Hash, Types::DescribeTaskSetsRequest] params
    # @option params [String] :cluster
    #   <p>The short name or full Amazon Resource Name (ARN) of the cluster that hosts the service that the task
    #   			sets exist in.</p>
    # @option params [String] :service
    #   <p>The short name or full Amazon Resource Name (ARN) of the service that the task sets exist in.</p>
    # @option params [Array<String>] :task_sets
    #   <p>The ID or full Amazon Resource Name (ARN) of task sets to
    #   			describe.</p>
    # @option params [Array<String>] :include
    #   <p>Specifies whether to see the resource tags for the task set. If <code>TAGS</code> is
    #   			specified, the tags are included in the response. If this field is omitted, tags aren't
    #   			included in the response.</p>
    # @example To describe a task set 
    #   # This example describes a task set in service MyService that uses an EXTERNAL deployment controller. 
    #   params = {
    #     cluster: "MyCluster",
    #     service: "MyService",
    #     task_sets: [
    #       "arn:aws:ecs:us-west-2:123456789012:task-set/MyCluster/MyService/ecs-svc/1234567890123456789"
    #     ]
    #   }
    #   options = {}
    #   response = client.describe_task_sets(params, options)
    #   response.to_h #=>
    #   {
    #     task_sets: [
    #       {
    #         id: "ecs-svc/1234567890123456789",
    #         task_set_arn: "arn:aws:ecs:us-west-2:123456789012:task-set/MyCluster/MyService/ecs-svc/1234567890123456789",
    #         status: "ACTIVE",
    #         task_definition: "arn:aws:ecs:us-west-2:123456789012:task-definition/sample-fargate:2",
    #         computed_desired_count: 0,
    #         pending_count: 0,
    #         running_count: 0,
    #         created_at: Time.parse(1557207715.195),
    #         updated_at: Time.parse(1557207740.014),
    #         launch_type: EC2,
    #         network_configuration: {
    #           awsvpc_configuration: {
    #             subnets: [
    #               "subnet-12344321"
    #             ],
    #             security_groups: [
    #               "sg-1234431"
    #             ],
    #             assign_public_ip: DISABLED
    #           }
    #         },
    #         load_balancers: [
    #         ],
    #         service_registries: [
    #         ],
    #         scale: {
    #           value: 0,
    #           unit: PERCENT
    #         },
    #         stability_status: STEADY_STATE,
    #         stability_status_at: Time.parse(1557207740.014)
    #       }
    #     ],
    #     failures: [
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster: "String", # required
    #     service: "String", # required
    #     task_sets: ["String"],
    #     include: ["TAGS" # One of: ["TAGS"]]
    #   }
    #   options = {}
    #   response = client.describe_task_sets(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     task_sets: [
    #       {
    #         id: "String",
    #         task_set_arn: "String",
    #         service_arn: "String",
    #         cluster_arn: "String",
    #         started_by: "String",
    #         external_id: "String",
    #         status: "String",
    #         task_definition: "String",
    #         computed_desired_count: 1,
    #         pending_count: 1,
    #         running_count: 1,
    #         created_at: Time.now,
    #         updated_at: Time.now,
    #         launch_type: "EC2" # One of: ["EC2", "FARGATE", "EXTERNAL", "MANAGED_INSTANCES"],
    #         capacity_provider_strategy: [
    #           {
    #             capacity_provider: "String", # required
    #             weight: 1,
    #             base: 1
    #           }
    #         ],
    #         platform_version: "String",
    #         platform_family: "String",
    #         network_configuration: {
    #           awsvpc_configuration: {
    #             subnets: ["String"], # required
    #             security_groups: ["String"],
    #             assign_public_ip: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #           }
    #         },
    #         load_balancers: [
    #           {
    #             target_group_arn: "String",
    #             load_balancer_name: "String",
    #             container_name: "String",
    #             container_port: 1,
    #             advanced_configuration: {
    #               alternate_target_group_arn: "String",
    #               production_listener_rule: "String",
    #               test_listener_rule: "String",
    #               role_arn: "String"
    #             }
    #           }
    #         ],
    #         service_registries: [
    #           {
    #             registry_arn: "String",
    #             port: 1,
    #             container_name: "String",
    #             container_port: 1
    #           }
    #         ],
    #         scale: {
    #           value: 1.0,
    #           unit: "PERCENT" # One of: ["PERCENT"]
    #         },
    #         stability_status: "STEADY_STATE" # One of: ["STEADY_STATE", "STABILIZING"],
    #         stability_status_at: Time.now,
    #         tags: [
    #           {
    #             key: "TagKey",
    #             value: "TagValue"
    #           }
    #         ],
    #         fargate_ephemeral_storage: {
    #           kms_key_id: "String"
    #         }
    #       }
    #     ],
    #     failures: [
    #       {
    #         arn: "String",
    #         reason: "String",
    #         detail: "String"
    #       }
    #     ]
    #   }
    # @return [Types::DescribeTaskSetsResponse]
    def describe_task_sets(params = {}, options = {})
      request = build_request(:describe_task_sets, params)
      request.send_request(options)
    end

    # <p>Describes a specified task or tasks.</p>
    #          <p>Currently, stopped tasks appear in the returned results for at least one hour.</p>
    #          <p>If you have tasks with tags, and then delete the cluster, the tagged tasks are
    # 			returned in the response. If you create a new cluster with the same name as the deleted
    # 			cluster, the tagged tasks are not included in the response.</p>
    # @param [Hash, Types::DescribeTasksRequest] params
    # @option params [String] :cluster
    #   <p>The short name or full Amazon Resource Name (ARN) of the cluster that hosts the task or tasks to
    #   			describe. If you do not specify a cluster, the default cluster is assumed.</p>
    # @option params [Array<String>] :tasks
    #   <p>A list of up to 100 task IDs or full ARN entries.</p>
    # @option params [Array<String>] :include
    #   <p>Specifies whether you want to see the resource tags for the task. If <code>TAGS</code>
    #   			is specified, the tags are included in the response. If this field is omitted, tags
    #   			aren't included in the response.</p>
    # @example To describe a task
    #   # This example provides a description of the specified task, using the task UUID as an identifier.
    #   params = {
    #     tasks: [
    #       "c5cba4eb-5dad-405e-96db-71ef8eefe6a8"
    #     ]
    #   }
    #   options = {}
    #   response = client.describe_tasks(params, options)
    #   response.to_h #=>
    #   {
    #     failures: [
    #     ],
    #     tasks: [
    #       {
    #         task_arn: "arn:aws:ecs:<region>:<aws_account_id>:task/default/c5cba4eb-5dad-405e-96db-71ef8eefe6a8",
    #         overrides: {
    #           container_overrides: [
    #             {
    #               name: "ecs-demo"
    #             }
    #           ]
    #         },
    #         last_status: "RUNNING",
    #         container_instance_arn: "arn:aws:ecs:<region>:<aws_account_id>:container-instance/default/18f9eda5-27d7-4c19-b133-45adc516e8fb",
    #         cluster_arn: "arn:aws:ecs:<region>:<aws_account_id>:cluster/default",
    #         desired_status: "RUNNING",
    #         task_definition_arn: "arn:aws:ecs:<region>:<aws_account_id>:task-definition/amazon-ecs-sample:1",
    #         started_by: "ecs-svc/9223370608528463088",
    #         containers: [
    #           {
    #             container_arn: "arn:aws:ecs:<region>:<aws_account_id>:container/7c01765b-c588-45b3-8290-4ba38bd6c5a6",
    #             task_arn: "arn:aws:ecs:<region>:<aws_account_id>:task/default/c5cba4eb-5dad-405e-96db-71ef8eefe6a8",
    #             last_status: "RUNNING",
    #             name: "ecs-demo",
    #             network_bindings: [
    #               {
    #                 bind_ip: "0.0.0.0",
    #                 container_port: 80,
    #                 host_port: 80
    #               }
    #             ]
    #           }
    #         ]
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster: "String",
    #     tasks: ["String"], # required
    #     include: ["TAGS" # One of: ["TAGS"]]
    #   }
    #   options = {}
    #   response = client.describe_tasks(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tasks: [
    #       {
    #         attachments: [
    #           {
    #             id: "String",
    #             type: "String",
    #             status: "String",
    #             details: [
    #               {
    #                 name: "String",
    #                 value: "String"
    #               }
    #             ]
    #           }
    #         ],
    #         attributes: [
    #           {
    #             name: "String", # required
    #             value: "String",
    #             target_type: "container-instance" # One of: ["container-instance"],
    #             target_id: "String"
    #           }
    #         ],
    #         availability_zone: "String",
    #         capacity_provider_name: "String",
    #         cluster_arn: "String",
    #         connectivity: "CONNECTED" # One of: ["CONNECTED", "DISCONNECTED"],
    #         connectivity_at: Time.now,
    #         container_instance_arn: "String",
    #         containers: [
    #           {
    #             container_arn: "String",
    #             task_arn: "String",
    #             name: "String",
    #             image: "String",
    #             image_digest: "String",
    #             runtime_id: "String",
    #             last_status: "String",
    #             exit_code: 1,
    #             reason: "String",
    #             network_bindings: [
    #               {
    #                 bind_ip: "String",
    #                 container_port: 1,
    #                 host_port: 1,
    #                 protocol: "tcp" # One of: ["tcp", "udp"],
    #                 container_port_range: "String",
    #                 host_port_range: "String"
    #               }
    #             ],
    #             network_interfaces: [
    #               {
    #                 attachment_id: "String",
    #                 private_ipv4_address: "String",
    #                 ipv6_address: "String"
    #               }
    #             ],
    #             health_status: "HEALTHY" # One of: ["HEALTHY", "UNHEALTHY", "UNKNOWN"],
    #             managed_agents: [
    #               {
    #                 last_started_at: Time.now,
    #                 name: "ExecuteCommandAgent" # One of: ["ExecuteCommandAgent"],
    #                 reason: "String",
    #                 last_status: "String"
    #               }
    #             ],
    #             cpu: "String",
    #             memory: "String",
    #             memory_reservation: "String",
    #             gpu_ids: ["String"]
    #           }
    #         ],
    #         cpu: "String",
    #         created_at: Time.now,
    #         desired_status: "String",
    #         enable_execute_command: false,
    #         execution_stopped_at: Time.now,
    #         group: "String",
    #         health_status: "HEALTHY" # One of: ["HEALTHY", "UNHEALTHY", "UNKNOWN"],
    #         inference_accelerators: [
    #           {
    #             device_name: "String", # required
    #             device_type: "String", # required
    #           }
    #         ],
    #         last_status: "String",
    #         launch_type: "EC2" # One of: ["EC2", "FARGATE", "EXTERNAL", "MANAGED_INSTANCES"],
    #         memory: "String",
    #         overrides: {
    #           container_overrides: [
    #             {
    #               name: "String",
    #               command: ["String"],
    #               environment: [
    #                 {
    #                   name: "String",
    #                   value: "String"
    #                 }
    #               ],
    #               environment_files: [
    #                 {
    #                   value: "String", # required
    #                   type: "s3" # One of: ["s3"], # required
    #                 }
    #               ],
    #               cpu: 1,
    #               memory: 1,
    #               memory_reservation: 1,
    #               resource_requirements: [
    #                 {
    #                   value: "String", # required
    #                   type: "GPU" # One of: ["GPU", "InferenceAccelerator"], # required
    #                 }
    #               ]
    #             }
    #           ],
    #           cpu: "String",
    #           inference_accelerator_overrides: [
    #             {
    #               device_name: "String",
    #               device_type: "String"
    #             }
    #           ],
    #           execution_role_arn: "String",
    #           memory: "String",
    #           task_role_arn: "String",
    #           ephemeral_storage: {
    #             size_in_gi_b: 1, # required
    #           }
    #         },
    #         platform_version: "String",
    #         platform_family: "String",
    #         pull_started_at: Time.now,
    #         pull_stopped_at: Time.now,
    #         started_at: Time.now,
    #         started_by: "String",
    #         stop_code: "TaskFailedToStart" # One of: ["TaskFailedToStart", "EssentialContainerExited", "UserInitiated", "ServiceSchedulerInitiated", "SpotInterruption", "TerminationNotice"],
    #         stopped_at: Time.now,
    #         stopped_reason: "String",
    #         stopping_at: Time.now,
    #         tags: [
    #           {
    #             key: "TagKey",
    #             value: "TagValue"
    #           }
    #         ],
    #         task_arn: "String",
    #         task_definition_arn: "String",
    #         version: 1,
    #         ephemeral_storage: {
    #           size_in_gi_b: 1, # required
    #         },
    #         fargate_ephemeral_storage: {
    #           size_in_gi_b: 1,
    #           kms_key_id: "String"
    #         }
    #       }
    #     ],
    #     failures: [
    #       {
    #         arn: "String",
    #         reason: "String",
    #         detail: "String"
    #       }
    #     ]
    #   }
    # @return [Types::DescribeTasksResponse]
    def describe_tasks(params = {}, options = {})
      request = build_request(:describe_tasks, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This action is only used by the Amazon ECS agent, and it is not intended for use outside of the agent.</p>
    #          </note>
    #          <p>Returns an endpoint for the Amazon ECS agent to poll for updates.</p>
    # @param [Hash, Types::DiscoverPollEndpointRequest] params
    # @option params [String] :container_instance
    #   <p>The container instance ID or full ARN of the container instance. For more
    #   			information about the ARN format, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-account-settings.html#ecs-resource-ids">Amazon Resource Name (ARN)</a> in the <i>Amazon ECS Developer Guide</i>.</p>
    # @option params [String] :cluster
    #   <p>The short name or full Amazon Resource Name (ARN) of the cluster that the container instance belongs
    #   			to.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     container_instance: "String",
    #     cluster: "String"
    #   }
    #   options = {}
    #   response = client.discover_poll_endpoint(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     endpoint: "String",
    #     telemetry_endpoint: "String",
    #     service_connect_endpoint: "String"
    #   }
    # @return [Types::DiscoverPollEndpointResponse]
    def discover_poll_endpoint(params = {}, options = {})
      request = build_request(:discover_poll_endpoint, params)
      request.send_request(options)
    end

    # <p>Runs a command remotely on a container within a task.</p>
    #          <p>If you use a condition key in your IAM policy to refine the conditions for the
    # 			policy statement, for example limit the actions to a specific cluster, you receive an
    # 				<code>AccessDeniedException</code> when there is a mismatch between the condition
    # 			key value and the corresponding parameter value.</p>
    #          <p>For information about required permissions and considerations, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-exec.html">Using Amazon ECS
    # 				Exec for debugging</a> in the <i>Amazon ECS Developer Guide</i>.
    # 		</p>
    # @param [Hash, Types::ExecuteCommandRequest] params
    # @option params [String] :cluster
    #   <p>The Amazon Resource Name (ARN) or short name of the cluster the task is running in.
    #   			If you do not specify a cluster, the default cluster is assumed.</p>
    # @option params [String] :container
    #   <p>The name of the container to execute the command on. A container name only needs to be
    #   			specified for tasks containing multiple containers.</p>
    # @option params [String] :command
    #   <p>The command to run on the container.</p>
    # @option params [Boolean] :interactive
    #   <p>Use this flag to run your command in interactive mode.</p>
    # @option params [String] :task
    #   <p>The Amazon Resource Name (ARN) or ID of the task the container is part of.</p>
    # @example To run a command remotely on a container in a task
    #   # This example runs an interactive /bin/sh command on a container MyContainer. 
    #   params = {
    #     cluster: "MyCluster",
    #     container: "MyContainer",
    #     command: "/bin/sh",
    #     interactive: true,
    #     task: "arn:aws:ecs:us-east-1:123456789012:task/MyCluster/d789e94343414c25b9f6bd59eEXAMPLE"
    #   }
    #   options = {}
    #   response = client.execute_command(params, options)
    #   response.to_h #=>
    #   {
    #     cluster_arn: "arn:aws:ecs:us-east-1:123456789012:cluster/MyCluster",
    #     container_arn: "arn:aws:ecs:us-east-1:123456789012:container/MyCluster/d789e94343414c25b9f6bd59eEXAMPLE/43ba4b77-37f7-4a41-b923-69d4abEXAMPLE",
    #     container_name: "MyContainer",
    #     interactive: true,
    #     session: {
    #       session_id: "ecs-execute-command-794nnsxobsg4p2hiur6gxu9a9e",
    #       stream_url: "wss://ssmmessages.us-east-1.amazonaws.com/v1/data-channel/ecs-execute-command-794nnsxobsg4p2hiur6gxu9a9e?role=publish_subscribe&cell-number=AAEAAfiZG4oybxqsYj3Zhm15s4J0W1k7d9nxVRenNO8Kl5nzAAAAAGdbWGl479/y/4IrTWPadUic3eBrMu3vmB7aPvI+s12lbpDc142y1KZy",
    #       token_value: "AAEAAcVb7ww10N9aNUI5Cl7K7DbHjbD2Ed4Mw6uaGYIc+UFNAAAAAGdbWGmMDaPbGfDkzrVIhyKEsc4CPT2hcToPU6yzlddPm7rRZvYQtpaAgsvQdjbCAd9OB6ohtDYfqZI9gzMqLKegXq0E+KbDcGPnQVODFNHmQxnR1BvC6vNcHqh6HAJuKnQD7RSYx/J5bfYNHj4hCYHuN0HNcueSDOOTRB/MBt5DBDY7Djv2uzs9FD0N1kcsGljZkZWLuPTVKHHyrU3zh0awfrFFC3RXvgaUCBnloIIvZeq2CjTesxn9JJS+3N4I0DVxfkHdWWBbBY/5+wH82JVTJpqN3yOAt74u/W7TvYBd7Xu2lQbvtpuAnEszl++bFG2ZoV3dfnmBkSnfD/qV1FJcEskbxUHKgmqe0Paouv4zwrQKNfWYfcv9xkWskqcExh07IeaxZz1tp/WegZ5D76sD6xYeuH+35TMNXMoY7oudLgxIXsA7b39ElM7orGi4Jy3W2tLyuNIvDoI2JI6ww4tYdEjYZnld9rhKwV9rDHk1Z8wjHMs++3BIkHrFQRsv7BFUWlZ9lyqO9GWlXeBe7dQtOeFNahBuJUE9z/xLHJn1x13VkdROKqUVHTJrT4sXAnI5roWiGPoQPVY7aHVYJnwjSxrPRWJBsgyHiVN3dAWTmeVMjp0VbOiJaLlpBI+AUWs8OeVRzuJSZ+1alETpK7Ukag7ma9K4lxq/N7IxYo2ub0cG/bvX42zQqdJAW+9St9sQ1QMaMvkSq1tdbLoOuY0QjN7JrkuKLFQA5bhs+o1YwItzIp7bNrzQ9Z9IN51qoGL5HDXQzi1kNFfYtAryhwt6BgtQU9Z0k+RpE+V5G+V68E0MMUvb313f0nRBYj1u5VKonWb708wADPbUU+s7nvbWuD5oLp1Z6A4iqI9Om0R4RrFASj/7fVY7r3raNXcIYA="
    #     },
    #     task_arn: "arn:aws:ecs:us-east-1:123456789012:task/MyCluster/d789e94343414c25b9f6bd59eEXAMPLE"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster: "String",
    #     container: "String",
    #     command: "String", # required
    #     interactive: false, # required
    #     task: "String", # required
    #   }
    #   options = {}
    #   response = client.execute_command(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cluster_arn: "String",
    #     container_arn: "String",
    #     container_name: "String",
    #     interactive: false,
    #     session: {
    #       session_id: "String",
    #       stream_url: "String",
    #       token_value: "SensitiveString"
    #     },
    #     task_arn: "String"
    #   }
    # @return [Types::ExecuteCommandResponse]
    def execute_command(params = {}, options = {})
      request = build_request(:execute_command, params)
      request.send_request(options)
    end

    # <p>Retrieves the protection status of tasks in an Amazon ECS service.</p>
    # @param [Hash, Types::GetTaskProtectionRequest] params
    # @option params [String] :cluster
    #   <p>The short name or full Amazon Resource Name (ARN) of the cluster that hosts the service that the task
    #   			sets exist in.</p>
    # @option params [Array<String>] :tasks
    #   <p>A list of up to 100 task IDs or full ARN entries.</p>
    # @example To get the protection status of a task
    #   # In this example, we get the protection status for a single task.
    #   params = {
    #     cluster: "test-task-protection",
    #     tasks: [
    #       "b8b1cf532d0e46ba8d44a40d1de16772"
    #     ]
    #   }
    #   options = {}
    #   response = client.get_task_protection(params, options)
    #   response.to_h #=>
    #   {
    #     protected_tasks: [
    #       {
    #         task_arn: "arn:aws:ecs:us-west-2:012345678910:task/default/b8b1cf532d0e46ba8d44a40d1de16772",
    #         protection_enabled: true,
    #         expiration_date: Time.parse("2022-11-02T06:56:32.553Z")
    #       }
    #     ],
    #     failures: [
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster: "String", # required
    #     tasks: ["String"]
    #   }
    #   options = {}
    #   response = client.get_task_protection(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     protected_tasks: [
    #       {
    #         task_arn: "String",
    #         protection_enabled: false,
    #         expiration_date: Time.now
    #       }
    #     ],
    #     failures: [
    #       {
    #         arn: "String",
    #         reason: "String",
    #         detail: "String"
    #       }
    #     ]
    #   }
    # @return [Types::GetTaskProtectionResponse]
    def get_task_protection(params = {}, options = {})
      request = build_request(:get_task_protection, params)
      request.send_request(options)
    end

    # <p>Lists the account settings for a specified principal.</p>
    # @param [Hash, Types::ListAccountSettingsRequest] params
    # @option params [String] :name
    #   <p>The name of the account setting you want to list the settings for.</p>
    # @option params [String] :value
    #   <p>The value of the account settings to filter results with. You must also specify an
    #   			account setting name to use this parameter.</p>
    # @option params [String] :principal_arn
    #   <p>The ARN of the principal, which can be a user, role, or the root user. If this field is
    #   			omitted, the account settings are listed only for the authenticated user.</p>
    #            <p>In order to use this parameter, you must be the root user, or the principal.</p>
    #            <note>
    #               <p>Federated users assume the account setting of the root user and can't have explicit
    #   				account settings set for them.</p>
    #            </note>
    # @option params [Boolean] :effective_settings
    #   <p>Determines whether to return the effective settings. If <code>true</code>, the account
    #   			settings for the root user or the default setting for the <code>principalArn</code> are
    #   			returned. If <code>false</code>, the account settings for the <code>principalArn</code>
    #   			are returned if they're set. Otherwise, no account settings are returned.</p>
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> value returned from a <code>ListAccountSettings</code>
    #   			request indicating that more results are available to fulfill the request and further
    #   			calls will be needed. If <code>maxResults</code> was provided, it's possible the number
    #   			of results to be fewer than <code>maxResults</code>.</p>
    #            <note>
    #               <p>This token should be treated as an opaque identifier that is only used to
    #                   retrieve the next items in a list and not for other programmatic purposes.</p>
    #            </note>
    # @option params [Integer] :max_results
    #   <p>The maximum number of account setting results returned by
    #   				<code>ListAccountSettings</code> in paginated output. When this parameter is used,
    #   				<code>ListAccountSettings</code> only returns <code>maxResults</code> results in a
    #   			single page along with a <code>nextToken</code> response element. The remaining results
    #   			of the initial request can be seen by sending another <code>ListAccountSettings</code>
    #   			request with the returned <code>nextToken</code> value. This value can be between
    #   			1 and 10. If this
    #   			parameter isn't used, then <code>ListAccountSettings</code> returns up to
    #   			10 results and a <code>nextToken</code> value
    #   			if applicable.</p>
    # @example To view the effective account settings for a specific IAM user or IAM role
    #   # This example displays the effective account settings for the specified user or role.
    #   params = {
    #     effective_settings: true,
    #     principal_arn: "arn:aws:iam::<aws_account_id>:user/principalName"
    #   }
    #   options = {}
    #   response = client.list_account_settings(params, options)
    #   response.to_h #=>
    #   {
    #     settings: [
    #       {
    #         name: containerInstanceLongArnFormat,
    #         value: "disabled",
    #         principal_arn: "arn:aws:iam::<aws_account_id>:user/principalName"
    #       },
    #       {
    #         name: serviceLongArnFormat,
    #         value: "enabled",
    #         principal_arn: "arn:aws:iam::<aws_account_id>:user/principalName"
    #       },
    #       {
    #         name: taskLongArnFormat,
    #         value: "disabled",
    #         principal_arn: "arn:aws:iam::<aws_account_id>:user/principalName"
    #       }
    #     ]
    #   }
    # @example To view your effective account settings
    #   # This example displays the effective account settings for your account.
    #   params = {
    #     effective_settings: true
    #   }
    #   options = {}
    #   response = client.list_account_settings(params, options)
    #   response.to_h #=>
    #   {
    #     settings: [
    #       {
    #         name: containerInstanceLongArnFormat,
    #         value: "disabled",
    #         principal_arn: "arn:aws:iam::<aws_account_id>:user/principalName"
    #       },
    #       {
    #         name: serviceLongArnFormat,
    #         value: "enabled",
    #         principal_arn: "arn:aws:iam::<aws_account_id>:user/principalName"
    #       },
    #       {
    #         name: taskLongArnFormat,
    #         value: "disabled",
    #         principal_arn: "arn:aws:iam::<aws_account_id>:user/principalName"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "serviceLongArnFormat" # One of: ["serviceLongArnFormat", "taskLongArnFormat", "containerInstanceLongArnFormat", "awsvpcTrunking", "containerInsights", "fargateFIPSMode", "tagResourceAuthorization", "fargateTaskRetirementWaitPeriod", "guardDutyActivate", "defaultLogDriverMode"],
    #     value: "String",
    #     principal_arn: "String",
    #     effective_settings: false,
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_account_settings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     settings: [
    #       {
    #         name: "serviceLongArnFormat" # One of: ["serviceLongArnFormat", "taskLongArnFormat", "containerInstanceLongArnFormat", "awsvpcTrunking", "containerInsights", "fargateFIPSMode", "tagResourceAuthorization", "fargateTaskRetirementWaitPeriod", "guardDutyActivate", "defaultLogDriverMode"],
    #         value: "String",
    #         principal_arn: "String",
    #         type: "user" # One of: ["user", "aws_managed"]
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListAccountSettingsResponse]
    def list_account_settings(params = {}, options = {})
      request = build_request(:list_account_settings, params)
      request.send_request(options)
    end

    # <p>Lists the attributes for Amazon ECS resources within a specified target type and cluster.
    # 			When you specify a target type and cluster, <code>ListAttributes</code> returns a list
    # 			of attribute objects, one for each attribute on each resource. You can filter the list
    # 			of results to a single attribute name to only return results that have that name. You
    # 			can also filter the results by attribute name and value. You can do this, for example,
    # 			to see which container instances in a cluster are running a Linux AMI
    # 				(<code>ecs.os-type=linux</code>). </p>
    # @param [Hash, Types::ListAttributesRequest] params
    # @option params [String] :cluster
    #   <p>The short name or full Amazon Resource Name (ARN) of the cluster to list attributes.
    #   			If you do not specify a cluster, the default cluster is assumed.</p>
    # @option params [String] :target_type
    #   <p>The type of the target to list attributes with.</p>
    # @option params [String] :attribute_name
    #   <p>The name of the attribute to filter the results with. </p>
    # @option params [String] :attribute_value
    #   <p>The value of the attribute to filter results with. You must also specify an attribute
    #   			name to use this parameter.</p>
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> value returned from a <code>ListAttributes</code> request
    #   			indicating that more results are available to fulfill the request and further calls are
    #   			needed. If <code>maxResults</code> was provided, it's possible the number of results to
    #   			be fewer than <code>maxResults</code>.</p>
    #            <note>
    #               <p>This token should be treated as an opaque identifier that is only used to
    #                   retrieve the next items in a list and not for other programmatic purposes.</p>
    #            </note>
    # @option params [Integer] :max_results
    #   <p>The maximum number of cluster results that <code>ListAttributes</code> returned in
    #   			paginated output. When this parameter is used, <code>ListAttributes</code> only returns
    #   				<code>maxResults</code> results in a single page along with a <code>nextToken</code>
    #   			response element. The remaining results of the initial request can be seen by sending
    #   			another <code>ListAttributes</code> request with the returned <code>nextToken</code>
    #   			value. This value can be between 1 and 100. If this
    #   			parameter isn't used, then <code>ListAttributes</code> returns up to
    #   			100 results and a <code>nextToken</code> value if applicable.</p>
    # @example To list container instances that have a specific attribute
    #   # This example lists attributes for a container instance with the attribute "stack" equal to the value "production".
    #   params = {
    #     cluster: "MyCluster",
    #     target_type: container-instance,
    #     attribute_name: "stack",
    #     attribute_value: "production"
    #   }
    #   options = {}
    #   response = client.list_attributes(params, options)
    #   response.to_h #=>
    #   {
    #     attributes: [
    #       {
    #         name: "stack",
    #         target_id: "arn:aws:ecs:us-west-2:123456789012:container-instance/1c3be8ed-df30-47b4-8f1e-6e68ebd01f34",
    #         value: "production"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster: "String",
    #     target_type: "container-instance" # One of: ["container-instance"], # required
    #     attribute_name: "String",
    #     attribute_value: "String",
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_attributes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     attributes: [
    #       {
    #         name: "String", # required
    #         value: "String",
    #         target_type: "container-instance" # One of: ["container-instance"],
    #         target_id: "String"
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListAttributesResponse]
    def list_attributes(params = {}, options = {})
      request = build_request(:list_attributes, params)
      request.send_request(options)
    end

    # <p>Returns a list of existing clusters.</p>
    # @param [Hash, Types::ListClustersRequest] params
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> value returned from a <code>ListClusters</code> request
    #   			indicating that more results are available to fulfill the request and further calls are
    #   			needed. If <code>maxResults</code> was provided, it's possible the number of results to
    #   			be fewer than <code>maxResults</code>.</p>
    #            <note>
    #               <p>This token should be treated as an opaque identifier that is only used to
    #                   retrieve the next items in a list and not for other programmatic purposes.</p>
    #            </note>
    # @option params [Integer] :max_results
    #   <p>The maximum number of cluster results that <code>ListClusters</code> returned in
    #   			paginated output. When this parameter is used, <code>ListClusters</code> only returns
    #   				<code>maxResults</code> results in a single page along with a <code>nextToken</code>
    #   			response element. The remaining results of the initial request can be seen by sending
    #   			another <code>ListClusters</code> request with the returned <code>nextToken</code>
    #   			value. This value can be between 1 and 100. If this
    #   			parameter isn't used, then <code>ListClusters</code> returns up to 100
    #   			results and a <code>nextToken</code> value if applicable.</p>
    # @example To list your available clusters
    #   # This example lists all of your available clusters in your default region.
    #   params = {}
    #   options = {}
    #   response = client.list_clusters(params, options)
    #   response.to_h #=>
    #   {
    #     cluster_arns: [
    #       "arn:aws:ecs:us-east-1:<aws_account_id>:cluster/test",
    #       "arn:aws:ecs:us-east-1:<aws_account_id>:cluster/default"
    #     ]
    #   }
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
    #     cluster_arns: ["String"],
    #     next_token: "String"
    #   }
    # @return [Types::ListClustersResponse]
    def list_clusters(params = {}, options = {})
      request = build_request(:list_clusters, params)
      request.send_request(options)
    end

    # <p>Returns a list of container instances in a specified cluster. You can filter the
    # 			results of a <code>ListContainerInstances</code> operation with cluster query language
    # 			statements inside the <code>filter</code> parameter. For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/cluster-query-language.html">Cluster Query Language</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    # @param [Hash, Types::ListContainerInstancesRequest] params
    # @option params [String] :cluster
    #   <p>The short name or full Amazon Resource Name (ARN) of the cluster that hosts the container instances to
    #   			list. If you do not specify a cluster, the default cluster is assumed.</p>
    # @option params [String] :filter
    #   <p>You can filter the results of a <code>ListContainerInstances</code> operation with
    #   			cluster query language statements. For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/cluster-query-language.html">Cluster Query Language</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> value returned from a <code>ListContainerInstances</code>
    #   			request indicating that more results are available to fulfill the request and further
    #   			calls are needed. If <code>maxResults</code> was provided, it's possible the number of
    #   			results to be fewer than <code>maxResults</code>.</p>
    #            <note>
    #               <p>This token should be treated as an opaque identifier that is only used to
    #                   retrieve the next items in a list and not for other programmatic purposes.</p>
    #            </note>
    # @option params [Integer] :max_results
    #   <p>The maximum number of container instance results that
    #   				<code>ListContainerInstances</code> returned in paginated output. When this
    #   			parameter is used, <code>ListContainerInstances</code> only returns
    #   				<code>maxResults</code> results in a single page along with a <code>nextToken</code>
    #   			response element. The remaining results of the initial request can be seen by sending
    #   			another <code>ListContainerInstances</code> request with the returned
    #   				<code>nextToken</code> value. This value can be between 1 and
    #   			100. If this parameter isn't used, then
    #   				<code>ListContainerInstances</code> returns up to 100 results and
    #   			a <code>nextToken</code> value if applicable.</p>
    # @option params [String] :status
    #   <p>Filters the container instances by status. For example, if you specify the
    #   				<code>DRAINING</code> status, the results include only container instances that have
    #   			been set to <code>DRAINING</code> using <a href="https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_UpdateContainerInstancesState.html">UpdateContainerInstancesState</a>. If you don't specify this parameter, the
    #   			default is to include container instances set to all states other than
    #   				<code>INACTIVE</code>.</p>
    # @example To list your available container instances in a cluster
    #   # This example lists all of your available container instances in the specified cluster in your default region.
    #   params = {
    #     cluster: "default"
    #   }
    #   options = {}
    #   response = client.list_container_instances(params, options)
    #   response.to_h #=>
    #   {
    #     container_instance_arns: [
    #       "arn:aws:ecs:us-east-1:<aws_account_id>:container-instance/default/f6bbb147-5370-4ace-8c73-c7181ded911f",
    #       "arn:aws:ecs:us-east-1:<aws_account_id>:container-instance/default/ffe3d344-77e2-476c-a4d0-bf560ad50acb"
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster: "String",
    #     filter: "String",
    #     next_token: "String",
    #     max_results: 1,
    #     status: "ACTIVE" # One of: ["ACTIVE", "DRAINING", "REGISTERING", "DEREGISTERING", "REGISTRATION_FAILED"]
    #   }
    #   options = {}
    #   response = client.list_container_instances(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     container_instance_arns: ["String"],
    #     next_token: "String"
    #   }
    # @return [Types::ListContainerInstancesResponse]
    def list_container_instances(params = {}, options = {})
      request = build_request(:list_container_instances, params)
      request.send_request(options)
    end

    # <p>This operation lists all the service deployments that meet the specified filter
    # 			criteria.</p>
    #          <p>A service deployment happens when you release a software update for the service. You
    # 			route traffic from the running service revisions to the new service revison and control
    # 			the number of running tasks. </p>
    #          <p>This API returns the values that you use for the request parameters in <a href="https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_DescribeServiceRevisions.html">DescribeServiceRevisions</a>.</p>
    # @param [Hash, Types::ListServiceDeploymentsRequest] params
    # @option params [String] :service
    #   <p>The ARN or name of the service</p>
    # @option params [String] :cluster
    #   <p>The cluster that hosts the service. This can either be the cluster name or ARN.
    #   			Starting April 15, 2023, Amazon Web Services will not onboard new customers to Amazon
    #   			Elastic Inference (EI), and will help current customers migrate their workloads to
    #   			options that offer better price and performance. If you don't specify a cluster,
    #   				<code>default</code> is used.</p>
    # @option params [Array<String>] :status
    #   <p>An optional filter you can use to narrow the results. If you do not specify a status,
    #   			then all status values are included in the result.</p>
    # @option params [Types::CreatedAt] :created_at
    #   <p>An optional filter you can use to narrow the results by the service creation date. If
    #   			you do not specify a value, the result includes all services created before the current
    #   			time. The format is yyyy-MM-dd HH:mm:ss.SSSSSS.</p>
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> value returned from a <code>ListServiceDeployments</code>
    #   			request indicating that more results are available to fulfill the request and further
    #   			calls are needed. If you provided <code>maxResults</code>, it's possible the number of
    #   			results is fewer than <code>maxResults</code>.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of service deployment results that
    #   				<code>ListServiceDeployments</code> returned in paginated output. When this
    #   			parameter is used, <code>ListServiceDeployments</code> only returns
    #   				<code>maxResults</code> results in a single page along with a <code>nextToken</code>
    #   			response element. The remaining results of the initial request can be seen by sending
    #   			another <code>ListServiceDeployments</code> request with the returned
    #   				<code>nextToken</code> value. This value can be between 1 and 100. If this parameter
    #   			isn't used, then <code>ListServiceDeployments</code> returns up to 20 results and a
    #   				<code>nextToken</code> value if applicable.</p>
    # @example To list service deployments that meet the specified criteria
    #   # This example lists all successful service deployments for the service "sd-example" in the cluster "example".
    #   params = {
    #     service: "sd-example",
    #     cluster: "example",
    #     status: [
    #       SUCCESSFUL
    #     ]
    #   }
    #   options = {}
    #   response = client.list_service_deployments(params, options)
    #   response.to_h #=>
    #   {
    #     service_deployments: [
    #       {
    #         service_deployment_arn: "arn:aws:ecs:us-west-2:123456789012:service-deployment/example/sd-example/NCWGC2ZR-taawPAYrIaU5",
    #         service_arn: "arn:aws:ecs:us-west-2:123456789012:service/example/sd-example",
    #         cluster_arn: "arn:aws:ecs:us-west-2:123456789012:cluster/example",
    #         target_service_revision_arn: "arn:aws:ecs:us-west-2:123456789012:service-revision/example/sd-example/4980306466373577095",
    #         status: SUCCESSFUL
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     service: "String", # required
    #     cluster: "String",
    #     status: ["PENDING" # One of: ["PENDING", "SUCCESSFUL", "STOPPED", "STOP_REQUESTED", "IN_PROGRESS", "ROLLBACK_REQUESTED", "ROLLBACK_IN_PROGRESS", "ROLLBACK_SUCCESSFUL", "ROLLBACK_FAILED"]],
    #     created_at: {
    #       before: Time.now,
    #       after: Time.now
    #     },
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_service_deployments(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     service_deployments: [
    #       {
    #         service_deployment_arn: "String",
    #         service_arn: "String",
    #         cluster_arn: "String",
    #         started_at: Time.now,
    #         created_at: Time.now,
    #         finished_at: Time.now,
    #         target_service_revision_arn: "String",
    #         status: "PENDING" # One of: ["PENDING", "SUCCESSFUL", "STOPPED", "STOP_REQUESTED", "IN_PROGRESS", "ROLLBACK_REQUESTED", "ROLLBACK_IN_PROGRESS", "ROLLBACK_SUCCESSFUL", "ROLLBACK_FAILED"],
    #         status_reason: "String"
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListServiceDeploymentsResponse]
    def list_service_deployments(params = {}, options = {})
      request = build_request(:list_service_deployments, params)
      request.send_request(options)
    end

    # <p>Returns a list of services. You can filter the results by cluster, launch type, and
    # 			scheduling strategy.</p>
    # @param [Hash, Types::ListServicesRequest] params
    # @option params [String] :cluster
    #   <p>The short name or full Amazon Resource Name (ARN) of the cluster to use when filtering the
    #   				<code>ListServices</code> results. If you do not specify a cluster, the default cluster is assumed.</p>
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> value returned from a <code>ListServices</code> request
    #   			indicating that more results are available to fulfill the request and further calls will
    #   			be needed. If <code>maxResults</code> was provided, it is possible the number of results
    #   			to be fewer than <code>maxResults</code>.</p>
    #            <note>
    #               <p>This token should be treated as an opaque identifier that is only used to
    #                   retrieve the next items in a list and not for other programmatic purposes.</p>
    #            </note>
    # @option params [Integer] :max_results
    #   <p>The maximum number of service results that <code>ListServices</code> returned in
    #   			paginated output. When this parameter is used, <code>ListServices</code> only returns
    #   				<code>maxResults</code> results in a single page along with a <code>nextToken</code>
    #   			response element. The remaining results of the initial request can be seen by sending
    #   			another <code>ListServices</code> request with the returned <code>nextToken</code>
    #   			value. This value can be between 1 and 100. If
    #   			this parameter isn't used, then <code>ListServices</code> returns up to
    #   			10 results and a <code>nextToken</code> value if
    #   			applicable.</p>
    # @option params [String] :launch_type
    #   <p>The launch type to use when filtering the <code>ListServices</code> results.</p>
    # @option params [String] :scheduling_strategy
    #   <p>The scheduling strategy to use when filtering the <code>ListServices</code>
    #   			results.</p>
    # @example To list the services in a cluster
    #   # This example lists the services running in the default cluster for an account.
    #   params = {}
    #   options = {}
    #   response = client.list_services(params, options)
    #   response.to_h #=>
    #   {
    #     service_arns: [
    #       "arn:aws:ecs:us-east-1:012345678910:service/default/my-http-service"
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster: "String",
    #     next_token: "String",
    #     max_results: 1,
    #     launch_type: "EC2" # One of: ["EC2", "FARGATE", "EXTERNAL", "MANAGED_INSTANCES"],
    #     scheduling_strategy: "REPLICA" # One of: ["REPLICA", "DAEMON"]
    #   }
    #   options = {}
    #   response = client.list_services(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     service_arns: ["String"],
    #     next_token: "String"
    #   }
    # @return [Types::ListServicesResponse]
    def list_services(params = {}, options = {})
      request = build_request(:list_services, params)
      request.send_request(options)
    end

    # <p>This operation lists all of the services that are associated with a Cloud Map
    # 			namespace. This list might include services in different clusters. In contrast,
    # 				<code>ListServices</code> can only list services in one cluster at a time. If you
    # 			need to filter the list of services in a single cluster by various parameters, use
    # 				<code>ListServices</code>. For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-connect.html">Service Connect</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    # @param [Hash, Types::ListServicesByNamespaceRequest] params
    # @option params [String] :namespace
    #   <p>The namespace name or full Amazon Resource Name (ARN) of the Cloud Map namespace to list the services in.</p>
    #            <p>Tasks that run in a namespace can use short names to connect
    #   	to services in the namespace. Tasks can connect to services across all of the clusters in the namespace.
    #   	Tasks connect through a managed proxy container
    #   	that collects logs and metrics for increased visibility.
    #   	Only the tasks that Amazon ECS services create are supported with Service Connect.
    #   	For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-connect.html">Service Connect</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> value that's returned from a
    #   				<code>ListServicesByNamespace</code> request. It indicates that more results are
    #   			available to fulfill the request and further calls are needed. If
    #   				<code>maxResults</code> is returned, it is possible the number of results is less
    #   			than <code>maxResults</code>.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of service results that <code>ListServicesByNamespace</code>
    #   			returns in paginated output. When this parameter is used,
    #   				<code>ListServicesByNamespace</code> only returns <code>maxResults</code> results in
    #   			a single page along with a <code>nextToken</code> response element. The remaining
    #   			results of the initial request can be seen by sending another
    #   				<code>ListServicesByNamespace</code> request with the returned
    #   				<code>nextToken</code> value. This value can be between 1 and
    #   			100. If this parameter isn't used, then
    #   				<code>ListServicesByNamespace</code> returns up to
    #   			10 results and a <code>nextToken</code>
    #   			value if applicable.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     namespace: "String", # required
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_services_by_namespace(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     service_arns: ["String"],
    #     next_token: "String"
    #   }
    # @return [Types::ListServicesByNamespaceResponse]
    def list_services_by_namespace(params = {}, options = {})
      request = build_request(:list_services_by_namespace, params)
      request.send_request(options)
    end

    # <p>List the tags for an Amazon ECS resource.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the resource to list the tags for. Currently, the
    #   			supported resources are Amazon ECS tasks, services, task definitions, clusters, and container
    #   			instances.</p>
    # @example To list the tags for a cluster.
    #   # This example lists the tags for the 'dev' cluster.
    #   params = {
    #     resource_arn: "arn:aws:ecs:region:aws_account_id:cluster/dev"
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    #   response.to_h #=>
    #   {
    #     tags: [
    #       {
    #         key: "team",
    #         value: "dev"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "String", # required
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue"
    #       }
    #     ]
    #   }
    # @return [Types::ListTagsForResourceResponse]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Returns a list of task definition families that are registered to your account. This
    # 			list includes task definition families that no longer have any <code>ACTIVE</code> task
    # 			definition revisions.</p>
    #          <p>You can filter out task definition families that don't contain any <code>ACTIVE</code>
    # 			task definition revisions by setting the <code>status</code> parameter to
    # 				<code>ACTIVE</code>. You can also filter the results with the
    # 				<code>familyPrefix</code> parameter.</p>
    # @param [Hash, Types::ListTaskDefinitionFamiliesRequest] params
    # @option params [String] :family_prefix
    #   <p>The <code>familyPrefix</code> is a string that's used to filter the results of
    #   				<code>ListTaskDefinitionFamilies</code>. If you specify a <code>familyPrefix</code>,
    #   			only task definition family names that begin with the <code>familyPrefix</code> string
    #   			are returned.</p>
    # @option params [String] :status
    #   <p>The task definition family status to filter the
    #   				<code>ListTaskDefinitionFamilies</code> results with. By default, both
    #   				<code>ACTIVE</code> and <code>INACTIVE</code> task definition families are listed.
    #   			If this parameter is set to <code>ACTIVE</code>, only task definition families that have
    #   			an <code>ACTIVE</code> task definition revision are returned. If this parameter is set
    #   			to <code>INACTIVE</code>, only task definition families that do not have any
    #   				<code>ACTIVE</code> task definition revisions are returned. If you paginate the
    #   			resulting output, be sure to keep the <code>status</code> value constant in each
    #   			subsequent request.</p>
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> value returned from a
    #   				<code>ListTaskDefinitionFamilies</code> request indicating that more results are
    #   			available to fulfill the request and further calls will be needed. If
    #   				<code>maxResults</code> was provided, it is possible the number of results to be
    #   			fewer than <code>maxResults</code>.</p>
    #            <note>
    #               <p>This token should be treated as an opaque identifier that is only used to
    #                   retrieve the next items in a list and not for other programmatic purposes.</p>
    #            </note>
    # @option params [Integer] :max_results
    #   <p>The maximum number of task definition family results that
    #   				<code>ListTaskDefinitionFamilies</code> returned in paginated output. When this
    #   			parameter is used, <code>ListTaskDefinitions</code> only returns <code>maxResults</code>
    #   			results in a single page along with a <code>nextToken</code> response element. The
    #   			remaining results of the initial request can be seen by sending another
    #   				<code>ListTaskDefinitionFamilies</code> request with the returned
    #   				<code>nextToken</code> value. This value can be between 1 and
    #   			100. If this parameter isn't used, then
    #   				<code>ListTaskDefinitionFamilies</code> returns up to 100 results
    #   			and a <code>nextToken</code> value if applicable.</p>
    # @example To filter your registered task definition families
    #   # This example lists the task definition revisions that start with "hpcc".
    #   params = {
    #     family_prefix: "hpcc"
    #   }
    #   options = {}
    #   response = client.list_task_definition_families(params, options)
    #   response.to_h #=>
    #   {
    #     families: [
    #       "hpcc",
    #       "hpcc-c4-8xlarge"
    #     ]
    #   }
    # @example To list your registered task definition families
    #   # This example lists all of your registered task definition families.
    #   params = {}
    #   options = {}
    #   response = client.list_task_definition_families(params, options)
    #   response.to_h #=>
    #   {
    #     families: [
    #       "node-js-app",
    #       "web-timer",
    #       "hpcc",
    #       "hpcc-c4-8xlarge"
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     family_prefix: "String",
    #     status: "ACTIVE" # One of: ["ACTIVE", "INACTIVE", "ALL"],
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_task_definition_families(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     families: ["String"],
    #     next_token: "String"
    #   }
    # @return [Types::ListTaskDefinitionFamiliesResponse]
    def list_task_definition_families(params = {}, options = {})
      request = build_request(:list_task_definition_families, params)
      request.send_request(options)
    end

    # <p>Returns a list of task definitions that are registered to your account. You can filter
    # 			the results by family name with the <code>familyPrefix</code> parameter or by status
    # 			with the <code>status</code> parameter.</p>
    # @param [Hash, Types::ListTaskDefinitionsRequest] params
    # @option params [String] :family_prefix
    #   <p>The full family name to filter the <code>ListTaskDefinitions</code> results with.
    #   			Specifying a <code>familyPrefix</code> limits the listed task definitions to task
    #   			definition revisions that belong to that family.</p>
    # @option params [String] :status
    #   <p>The task definition status to filter the <code>ListTaskDefinitions</code> results
    #   			with. By default, only <code>ACTIVE</code> task definitions are listed. By setting this
    #   			parameter to <code>INACTIVE</code>, you can view task definitions that are
    #   				<code>INACTIVE</code> as long as an active task or service still references them. If
    #   			you paginate the resulting output, be sure to keep the <code>status</code> value
    #   			constant in each subsequent request.</p>
    # @option params [String] :sort
    #   <p>The order to sort the results in. Valid values are <code>ASC</code> and
    #   				<code>DESC</code>. By default, (<code>ASC</code>) task definitions are listed
    #   			lexicographically by family name and in ascending numerical order by revision so that
    #   			the newest task definitions in a family are listed last. Setting this parameter to
    #   				<code>DESC</code> reverses the sort order on family name and revision. This is so
    #   			that the newest task definitions in a family are listed first.</p>
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> value returned from a <code>ListTaskDefinitions</code>
    #   			request indicating that more results are available to fulfill the request and further
    #   			calls will be needed. If <code>maxResults</code> was provided, it is possible the number
    #   			of results to be fewer than <code>maxResults</code>.</p>
    #            <note>
    #               <p>This token should be treated as an opaque identifier that is only used to
    #                   retrieve the next items in a list and not for other programmatic purposes.</p>
    #            </note>
    # @option params [Integer] :max_results
    #   <p>The maximum number of task definition results that <code>ListTaskDefinitions</code>
    #   			returned in paginated output. When this parameter is used,
    #   				<code>ListTaskDefinitions</code> only returns <code>maxResults</code> results in a
    #   			single page along with a <code>nextToken</code> response element. The remaining results
    #   			of the initial request can be seen by sending another <code>ListTaskDefinitions</code>
    #   			request with the returned <code>nextToken</code> value. This value can be between
    #   			1 and 100. If this parameter isn't used, then
    #   				<code>ListTaskDefinitions</code> returns up to 100 results and a
    #   				<code>nextToken</code> value if applicable.</p>
    # @example To list the registered task definitions in a family
    #   # This example lists the task definition revisions of a specified family.
    #   params = {
    #     family_prefix: "wordpress"
    #   }
    #   options = {}
    #   response = client.list_task_definitions(params, options)
    #   response.to_h #=>
    #   {
    #     task_definition_arns: [
    #       "arn:aws:ecs:us-east-1:<aws_account_id>:task-definition/wordpress:3",
    #       "arn:aws:ecs:us-east-1:<aws_account_id>:task-definition/wordpress:4",
    #       "arn:aws:ecs:us-east-1:<aws_account_id>:task-definition/wordpress:5",
    #       "arn:aws:ecs:us-east-1:<aws_account_id>:task-definition/wordpress:6"
    #     ]
    #   }
    # @example To list your registered task definitions
    #   # This example lists all of your registered task definitions.
    #   params = {}
    #   options = {}
    #   response = client.list_task_definitions(params, options)
    #   response.to_h #=>
    #   {
    #     task_definition_arns: [
    #       "arn:aws:ecs:us-east-1:<aws_account_id>:task-definition/sleep300:2",
    #       "arn:aws:ecs:us-east-1:<aws_account_id>:task-definition/sleep360:1",
    #       "arn:aws:ecs:us-east-1:<aws_account_id>:task-definition/wordpress:3",
    #       "arn:aws:ecs:us-east-1:<aws_account_id>:task-definition/wordpress:4",
    #       "arn:aws:ecs:us-east-1:<aws_account_id>:task-definition/wordpress:5",
    #       "arn:aws:ecs:us-east-1:<aws_account_id>:task-definition/wordpress:6"
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     family_prefix: "String",
    #     status: "ACTIVE" # One of: ["ACTIVE", "INACTIVE", "DELETE_IN_PROGRESS"],
    #     sort: "ASC" # One of: ["ASC", "DESC"],
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_task_definitions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     task_definition_arns: ["String"],
    #     next_token: "String"
    #   }
    # @return [Types::ListTaskDefinitionsResponse]
    def list_task_definitions(params = {}, options = {})
      request = build_request(:list_task_definitions, params)
      request.send_request(options)
    end

    # <p>Returns a list of tasks. You can filter the results by cluster, task definition
    # 			family, container instance, launch type, what IAM principal started the task, or by
    # 			the desired status of the task.</p>
    #          <p>Recently stopped tasks might appear in the returned results. </p>
    # @param [Hash, Types::ListTasksRequest] params
    # @option params [String] :cluster
    #   <p>The short name or full Amazon Resource Name (ARN) of the cluster to use when filtering the
    #   				<code>ListTasks</code> results. If you do not specify a cluster, the default cluster is assumed.</p>
    # @option params [String] :container_instance
    #   <p>The container instance ID or full ARN of the container instance to use when
    #   			filtering the <code>ListTasks</code> results. Specifying a
    #   				<code>containerInstance</code> limits the results to tasks that belong to that
    #   			container instance.</p>
    # @option params [String] :family
    #   <p>The name of the task definition family to use when filtering the
    #   				<code>ListTasks</code> results. Specifying a <code>family</code> limits the results
    #   			to tasks that belong to that family.</p>
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> value returned from a <code>ListTasks</code> request
    #   			indicating that more results are available to fulfill the request and further calls will
    #   			be needed. If <code>maxResults</code> was provided, it's possible the number of results
    #   			to be fewer than <code>maxResults</code>.</p>
    #            <note>
    #               <p>This token should be treated as an opaque identifier that is only used to
    #                   retrieve the next items in a list and not for other programmatic purposes.</p>
    #            </note>
    # @option params [Integer] :max_results
    #   <p>The maximum number of task results that <code>ListTasks</code> returned in paginated
    #   			output. When this parameter is used, <code>ListTasks</code> only returns
    #   				<code>maxResults</code> results in a single page along with a <code>nextToken</code>
    #   			response element. The remaining results of the initial request can be seen by sending
    #   			another <code>ListTasks</code> request with the returned <code>nextToken</code> value.
    #   			This value can be between 1 and 100. If this parameter
    #   			isn't used, then <code>ListTasks</code> returns up to 100 results and
    #   			a <code>nextToken</code> value if applicable.</p>
    # @option params [String] :started_by
    #   <p>The <code>startedBy</code> value to filter the task results with. Specifying a
    #   				<code>startedBy</code> value limits the results to tasks that were started with that
    #   			value.</p>
    #            <p>When you specify <code>startedBy</code> as the filter, it must be the only filter that
    #   			you use.</p>
    # @option params [String] :service_name
    #   <p>The name of the service to use when filtering the <code>ListTasks</code> results.
    #   			Specifying a <code>serviceName</code> limits the results to tasks that belong to that
    #   			service.</p>
    # @option params [String] :desired_status
    #   <p>The task desired status to use when filtering the <code>ListTasks</code> results.
    #   			Specifying a <code>desiredStatus</code> of <code>STOPPED</code> limits the results to
    #   			tasks that Amazon ECS has set the desired status to <code>STOPPED</code>. This can be useful
    #   			for debugging tasks that aren't starting properly or have died or finished. The default
    #   			status filter is <code>RUNNING</code>, which shows tasks that Amazon ECS has set the desired
    #   			status to <code>RUNNING</code>.</p>
    #            <note>
    #               <p>Although you can filter results based on a desired status of <code>PENDING</code>,
    #   				this doesn't return any results. Amazon ECS never sets the desired status of a task to
    #   				that value (only a task's <code>lastStatus</code> may have a value of
    #   					<code>PENDING</code>).</p>
    #            </note>
    # @option params [String] :launch_type
    #   <p>The launch type to use when filtering the <code>ListTasks</code> results.</p>
    # @example To list the tasks on a particular container instance
    #   # This example lists the tasks of a specified container instance. Specifying a ``containerInstance`` value limits  the  results  to  tasks  that belong to that container instance.
    #   params = {
    #     cluster: "default",
    #     container_instance: "f6bbb147-5370-4ace-8c73-c7181ded911f"
    #   }
    #   options = {}
    #   response = client.list_tasks(params, options)
    #   response.to_h #=>
    #   {
    #     task_arns: [
    #       "arn:aws:ecs:us-east-1:012345678910:task/default/0cc43cdb-3bee-4407-9c26-c0e6ea5bee84"
    #     ]
    #   }
    # @example To list the tasks in a cluster
    #   # This example lists all of the tasks in a cluster.
    #   params = {
    #     cluster: "default"
    #   }
    #   options = {}
    #   response = client.list_tasks(params, options)
    #   response.to_h #=>
    #   {
    #     task_arns: [
    #       "arn:aws:ecs:us-east-1:012345678910:task/default/0cc43cdb-3bee-4407-9c26-c0e6ea5bee84",
    #       "arn:aws:ecs:us-east-1:012345678910:task/default/6b809ef6-c67e-4467-921f-ee261c15a0a1"
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster: "String",
    #     container_instance: "String",
    #     family: "String",
    #     next_token: "String",
    #     max_results: 1,
    #     started_by: "String",
    #     service_name: "String",
    #     desired_status: "RUNNING" # One of: ["RUNNING", "PENDING", "STOPPED"],
    #     launch_type: "EC2" # One of: ["EC2", "FARGATE", "EXTERNAL", "MANAGED_INSTANCES"]
    #   }
    #   options = {}
    #   response = client.list_tasks(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     task_arns: ["String"],
    #     next_token: "String"
    #   }
    # @return [Types::ListTasksResponse]
    def list_tasks(params = {}, options = {})
      request = build_request(:list_tasks, params)
      request.send_request(options)
    end

    # <p>Modifies an account setting. Account settings are set on a per-Region basis.</p>
    #          <p>If you change the root user account setting, the default settings are reset for users and
    # 			roles that do not have specified individual account settings. For more information, see
    # 				<a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-account-settings.html">Account
    # 				Settings</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    # @param [Hash, Types::PutAccountSettingRequest] params
    # @option params [String] :name
    #   <p>The Amazon ECS account setting name to modify.</p>
    #            <p>The following are the valid values for the account setting name.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>serviceLongArnFormat</code> - When modified, the Amazon Resource Name
    #   					(ARN) and resource ID format of the resource type for a specified user, role, or
    #   					the root user for an account is affected. The opt-in and opt-out account setting
    #   					must be set for each Amazon ECS resource separately. The ARN and resource ID format
    #   					of a resource is defined by the opt-in status of the user or role that created
    #   					the resource. You must turn on this setting to use Amazon ECS features such as
    #   					resource tagging.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>taskLongArnFormat</code> - When modified, the Amazon Resource Name (ARN)
    #   					and resource ID format of the resource type for a specified user, role, or the
    #   					root user for an account is affected. The opt-in and opt-out account setting must
    #   					be set for each Amazon ECS resource separately. The ARN and resource ID format of a
    #   					resource is defined by the opt-in status of the user or role that created the
    #   					resource. You must turn on this setting to use Amazon ECS features such as resource
    #   					tagging.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>containerInstanceLongArnFormat</code> - When modified, the Amazon
    #   					Resource Name (ARN) and resource ID format of the resource type for a specified
    #   					user, role, or the root user for an account is affected. The opt-in and opt-out
    #   					account setting must be set for each Amazon ECS resource separately. The ARN and
    #   					resource ID format of a resource is defined by the opt-in status of the user or
    #   					role that created the resource. You must turn on this setting to use Amazon ECS
    #   					features such as resource tagging.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>awsvpcTrunking</code> - When modified, the elastic network interface
    #   					(ENI) limit for any new container instances that support the feature is changed.
    #   					If <code>awsvpcTrunking</code> is turned on, any new container instances that
    #   					support the feature are launched have the increased ENI limits available to
    #   					them. For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/container-instance-eni.html">Elastic
    #   						Network Interface Trunking</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>containerInsights</code> - Container Insights with enhanced
    #   					observability provides all the Container Insights metrics, plus additional task
    #   					and container metrics. This version supports enhanced observability for Amazon ECS
    #   					clusters using the Amazon EC2 and Fargate launch types. After you configure
    #   					Container Insights with enhanced observability on Amazon ECS, Container Insights
    #   					auto-collects detailed infrastructure telemetry from the cluster level down to
    #   					the container level in your environment and displays these critical performance
    #   					data in curated dashboards removing the heavy lifting in observability set-up. </p>
    #                  <p>To use Container Insights with enhanced observability, set the
    #   						<code>containerInsights</code> account setting to
    #   					<code>enhanced</code>.</p>
    #                  <p>To use Container Insights, set the <code>containerInsights</code> account
    #   					setting to <code>enabled</code>.</p>
    #                  <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/cloudwatch-container-insights.html">Monitor Amazon ECS containers using Container Insights with enhanced
    #   						observability</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>dualStackIPv6</code> - When turned on, when using a VPC in dual stack
    #   					mode, your tasks using the <code>awsvpc</code> network mode can have an IPv6
    #   					address assigned. For more information on using IPv6 with tasks launched on
    #   					Amazon EC2 instances, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-networking-awsvpc.html#task-networking-vpc-dual-stack">Using a VPC in dual-stack mode</a>. For more information on using IPv6
    #   					with tasks launched on Fargate, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/fargate-task-networking.html#fargate-task-networking-vpc-dual-stack">Using a VPC in dual-stack mode</a>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>fargateTaskRetirementWaitPeriod</code> - When Amazon Web Services determines that a
    #   					security or infrastructure update is needed for an Amazon ECS task hosted on
    #   					Fargate, the tasks need to be stopped and new tasks launched to replace them.
    #   					Use <code>fargateTaskRetirementWaitPeriod</code> to configure the wait time to
    #   					retire a Fargate task. For information about the Fargate tasks maintenance,
    #   					see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-maintenance.html">Amazon Web Services Fargate
    #   						task maintenance</a> in the <i>Amazon ECS Developer
    #   					Guide</i>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>tagResourceAuthorization</code> - Amazon ECS is introducing tagging
    #   					authorization for resource creation. Users must have permissions for actions
    #   					that create the resource, such as <code>ecsCreateCluster</code>. If tags are
    #   					specified when you create a resource, Amazon Web Services performs additional authorization to
    #   					verify if users or roles have permissions to create tags. Therefore, you must
    #   					grant explicit permissions to use the <code>ecs:TagResource</code> action. For
    #   					more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/supported-iam-actions-tagging.html">Grant permission to tag resources on creation</a> in the
    #   						<i>Amazon ECS Developer Guide</i>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>defaultLogDriverMode</code> - Amazon ECS supports setting a default delivery
    #   					mode of log messages from a container to the <code>logDriver</code> that you specify in the container's <code>logConfiguration</code>. The delivery mode affects
    #   					application stability when the flow of logs from the container to the log driver is
    #   					interrupted. The <code>defaultLogDriverMode</code> setting supports two values:
    #   					<code>blocking</code> and <code>non-blocking</code>. If you don't specify a
    #   					delivery mode in your container definition's <code>logConfiguration</code>, the
    #   					mode you specify using this account setting will be used as the default. For
    #   					more information about log delivery modes, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_LogConfiguration.html">LogConfiguration</a>.
    #   				</p>
    #                  <note>
    #                     <p>On June 25, 2025, Amazon ECS changed the default log driver mode from <code>blocking</code> to <code>non-blocking</code> to prioritize task availability over logging. To continue using the <code>blocking</code> mode after this change, do one of the following:</p>
    #                     <ul>
    #                        <li>
    #                           <p>Set the <code>mode</code> option in your container definition's <code>logConfiguration</code> as <code>blocking</code>.</p>
    #                        </li>
    #                        <li>
    #                           <p>Set the <code>defaultLogDriverMode</code> account setting to <code>blocking</code>.</p>
    #                        </li>
    #                     </ul>
    #                  </note>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>guardDutyActivate</code> - The <code>guardDutyActivate</code> parameter is read-only in Amazon ECS and indicates whether
    #   			Amazon ECS Runtime Monitoring is enabled or disabled by your security administrator in your
    #   			Amazon ECS account. Amazon GuardDuty controls this account setting on your behalf. For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-guard-duty-integration.html">Protecting Amazon ECS workloads with Amazon ECS Runtime Monitoring</a>.</p>
    #               </li>
    #            </ul>
    # @option params [String] :value
    #   <p>The account setting value for the specified principal ARN. Accepted values are
    #   				<code>enabled</code>, <code>disabled</code>, <code>enhanced</code>, <code>on</code>,
    #   			and <code>off</code>.</p>
    #            <p>When you specify <code>fargateTaskRetirementWaitPeriod</code> for the
    #   				<code>name</code>, the following are the valid values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>0</code> - Amazon Web Services sends the notification, and immediately retires the
    #   					affected tasks.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>7</code> - Amazon Web Services sends the notification, and waits 7 calendar days to
    #   					retire the tasks.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>14</code> - Amazon Web Services sends the notification, and waits 14 calendar days to
    #   					retire the tasks.</p>
    #               </li>
    #            </ul>
    # @option params [String] :principal_arn
    #   <p>The ARN of the principal, which can be a user, role, or the root user. If you specify
    #   			the root user, it modifies the account setting for all users, roles, and the root user of the
    #   			account unless a user or role explicitly overrides these settings. If this field is
    #   			omitted, the setting is changed only for the authenticated user.</p>
    #            <p>In order to use this parameter, you must be the root user, or the principal.</p>
    #            <note>
    #               <p>You must use the root user when you set the Fargate wait time
    #   					(<code>fargateTaskRetirementWaitPeriod</code>). </p>
    #               <p>Federated users assume the account setting of the root user and can't have explicit
    #   				account settings set for them.</p>
    #            </note>
    # @example To modify the account settings for a specific IAM user or IAM role
    #   # This example modifies the account setting for a specific IAM user or IAM role to opt in to the new ARN and resource ID format for Amazon ECS container instances. If you’re using this command as the root user, then changes apply to the entire AWS account, unless an IAM user or role explicitly overrides these settings for themselves.
    #   params = {
    #     name: containerInstanceLongArnFormat,
    #     value: "enabled",
    #     principal_arn: "arn:aws:iam::<aws_account_id>:user/principalName"
    #   }
    #   options = {}
    #   response = client.put_account_setting(params, options)
    #   response.to_h #=>
    #   {
    #     setting: {
    #       name: containerInstanceLongArnFormat,
    #       value: "enabled",
    #       principal_arn: "arn:aws:iam::<aws_account_id>:user/principalName"
    #     }
    #   }
    # @example To modify your account settings
    #   # This example modifies your account settings to opt in to the new ARN and resource ID format for Amazon ECS services. If you’re using this command as the root user, then changes apply to the entire AWS account, unless an IAM user or role explicitly overrides these settings for themselves.
    #   params = {
    #     name: serviceLongArnFormat,
    #     value: "enabled"
    #   }
    #   options = {}
    #   response = client.put_account_setting(params, options)
    #   response.to_h #=>
    #   {
    #     setting: {
    #       name: serviceLongArnFormat,
    #       value: "enabled",
    #       principal_arn: "arn:aws:iam::<aws_account_id>:user/principalName"
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "serviceLongArnFormat" # One of: ["serviceLongArnFormat", "taskLongArnFormat", "containerInstanceLongArnFormat", "awsvpcTrunking", "containerInsights", "fargateFIPSMode", "tagResourceAuthorization", "fargateTaskRetirementWaitPeriod", "guardDutyActivate", "defaultLogDriverMode"], # required
    #     value: "String", # required
    #     principal_arn: "String"
    #   }
    #   options = {}
    #   response = client.put_account_setting(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     setting: {
    #       name: "serviceLongArnFormat" # One of: ["serviceLongArnFormat", "taskLongArnFormat", "containerInstanceLongArnFormat", "awsvpcTrunking", "containerInsights", "fargateFIPSMode", "tagResourceAuthorization", "fargateTaskRetirementWaitPeriod", "guardDutyActivate", "defaultLogDriverMode"],
    #       value: "String",
    #       principal_arn: "String",
    #       type: "user" # One of: ["user", "aws_managed"]
    #     }
    #   }
    # @return [Types::PutAccountSettingResponse]
    def put_account_setting(params = {}, options = {})
      request = build_request(:put_account_setting, params)
      request.send_request(options)
    end

    # <p>Modifies an account setting for all users on an account for whom no individual account
    # 			setting has been specified. Account settings are set on a per-Region basis.</p>
    # @param [Hash, Types::PutAccountSettingDefaultRequest] params
    # @option params [String] :name
    #   <p>The resource name for which to modify the account setting.</p>
    #            <p>The following are the valid values for the account setting name.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>serviceLongArnFormat</code> - When modified, the Amazon Resource Name
    #   					(ARN) and resource ID format of the resource type for a specified user, role, or
    #   					the root user for an account is affected. The opt-in and opt-out account setting
    #   					must be set for each Amazon ECS resource separately. The ARN and resource ID format
    #   					of a resource is defined by the opt-in status of the user or role that created
    #   					the resource. You must turn on this setting to use Amazon ECS features such as
    #   					resource tagging.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>taskLongArnFormat</code> - When modified, the Amazon Resource Name (ARN)
    #   					and resource ID format of the resource type for a specified user, role, or the
    #   					root user for an account is affected. The opt-in and opt-out account setting must
    #   					be set for each Amazon ECS resource separately. The ARN and resource ID format of a
    #   					resource is defined by the opt-in status of the user or role that created the
    #   					resource. You must turn on this setting to use Amazon ECS features such as resource
    #   					tagging.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>containerInstanceLongArnFormat</code> - When modified, the Amazon
    #   					Resource Name (ARN) and resource ID format of the resource type for a specified
    #   					user, role, or the root user for an account is affected. The opt-in and opt-out
    #   					account setting must be set for each Amazon ECS resource separately. The ARN and
    #   					resource ID format of a resource is defined by the opt-in status of the user or
    #   					role that created the resource. You must turn on this setting to use Amazon ECS
    #   					features such as resource tagging.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>awsvpcTrunking</code> - When modified, the elastic network interface
    #   					(ENI) limit for any new container instances that support the feature is changed.
    #   					If <code>awsvpcTrunking</code> is turned on, any new container instances that
    #   					support the feature are launched have the increased ENI limits available to
    #   					them. For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/container-instance-eni.html">Elastic
    #   						Network Interface Trunking</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>containerInsights</code> - Container Insights with enhanced
    #   					observability provides all the Container Insights metrics, plus additional task
    #   					and container metrics. This version supports enhanced observability for Amazon ECS
    #   					clusters using the Amazon EC2 and Fargate launch types. After you configure
    #   					Container Insights with enhanced observability on Amazon ECS, Container Insights
    #   					auto-collects detailed infrastructure telemetry from the cluster level down to
    #   					the container level in your environment and displays these critical performance
    #   					data in curated dashboards removing the heavy lifting in observability set-up. </p>
    #                  <p>To use Container Insights with enhanced observability, set the
    #   						<code>containerInsights</code> account setting to
    #   					<code>enhanced</code>.</p>
    #                  <p>To use Container Insights, set the <code>containerInsights</code> account
    #   					setting to <code>enabled</code>.</p>
    #                  <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/cloudwatch-container-insights.html">Monitor Amazon ECS containers using Container Insights with enhanced
    #   						observability</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>dualStackIPv6</code> - When turned on, when using a VPC in dual stack
    #   					mode, your tasks using the <code>awsvpc</code> network mode can have an IPv6
    #   					address assigned. For more information on using IPv6 with tasks launched on
    #   					Amazon EC2 instances, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-networking-awsvpc.html#task-networking-vpc-dual-stack">Using a VPC in dual-stack mode</a>. For more information on using IPv6
    #   					with tasks launched on Fargate, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/fargate-task-networking.html#fargate-task-networking-vpc-dual-stack">Using a VPC in dual-stack mode</a>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>fargateFIPSMode</code> - If you specify <code>fargateFIPSMode</code>,
    #   					Fargate FIPS 140 compliance is affected.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>fargateTaskRetirementWaitPeriod</code> - When Amazon Web Services determines that a
    #   					security or infrastructure update is needed for an Amazon ECS task hosted on
    #   					Fargate, the tasks need to be stopped and new tasks launched to replace them.
    #   					Use <code>fargateTaskRetirementWaitPeriod</code> to configure the wait time to
    #   					retire a Fargate task. For information about the Fargate tasks maintenance,
    #   					see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-maintenance.html">Amazon Web Services Fargate
    #   						task maintenance</a> in the <i>Amazon ECS Developer
    #   					Guide</i>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>tagResourceAuthorization</code> - Amazon ECS is introducing tagging
    #   					authorization for resource creation. Users must have permissions for actions
    #   					that create the resource, such as <code>ecsCreateCluster</code>. If tags are
    #   					specified when you create a resource, Amazon Web Services performs additional authorization to
    #   					verify if users or roles have permissions to create tags. Therefore, you must
    #   					grant explicit permissions to use the <code>ecs:TagResource</code> action. For
    #   					more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/supported-iam-actions-tagging.html">Grant permission to tag resources on creation</a> in the
    #   						<i>Amazon ECS Developer Guide</i>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>defaultLogDriverMode</code> -Amazon ECS supports setting a default delivery
    #   					mode of log messages from a container to the <code>logDriver</code> that you specify in the container's <code>logConfiguration</code>. The delivery mode affects
    #   					application stability when the flow of logs from the container to the log driver is
    #   					interrupted. The <code>defaultLogDriverMode</code> setting supports two values:
    #   						<code>blocking</code> and <code>non-blocking</code>. If you don't specify a
    #   					delivery mode in your container definition's <code>logConfiguration</code>, the
    #   					mode you specify using this account setting will be used as the default. For
    #   					more information about log delivery modes, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_LogConfiguration.html">LogConfiguration</a>.</p>
    #                  <note>
    #                     <p>On June 25, 2025, Amazon ECS changed the default log driver mode from <code>blocking</code> to <code>non-blocking</code> to prioritize task availability over logging. To continue using the <code>blocking</code> mode after this change, do one of the following:</p>
    #                     <ul>
    #                        <li>
    #                           <p>Set the <code>mode</code> option in your container definition's <code>logConfiguration</code> as <code>blocking</code>.</p>
    #                        </li>
    #                        <li>
    #                           <p>Set the <code>defaultLogDriverMode</code> account setting to <code>blocking</code>.</p>
    #                        </li>
    #                     </ul>
    #                  </note>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>guardDutyActivate</code> - The <code>guardDutyActivate</code> parameter is read-only in Amazon ECS and indicates whether
    #   			Amazon ECS Runtime Monitoring is enabled or disabled by your security administrator in your
    #   			Amazon ECS account. Amazon GuardDuty controls this account setting on your behalf. For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-guard-duty-integration.html">Protecting Amazon ECS workloads with Amazon ECS Runtime Monitoring</a>.</p>
    #               </li>
    #            </ul>
    # @option params [String] :value
    #   <p>The account setting value for the specified principal ARN. Accepted values are
    #   				<code>enabled</code>, <code>disabled</code>, <code>on</code>, <code>enhanced</code>,
    #   			and <code>off</code>.</p>
    #            <p>When you specify <code>fargateTaskRetirementWaitPeriod</code> for the
    #   				<code>name</code>, the following are the valid values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>0</code> - Amazon Web Services sends the notification, and immediately retires the
    #   					affected tasks.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>7</code> - Amazon Web Services sends the notification, and waits 7 calendar days to
    #   					retire the tasks.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>14</code> - Amazon Web Services sends the notification, and waits 14 calendar days to
    #   					retire the tasks.</p>
    #               </li>
    #            </ul>
    # @example To modify the default account settings for all IAM users or roles on an account
    #   # This example modifies the default account setting for the specified resource for all IAM users or roles on an account. These changes apply to the entire AWS account, unless an IAM user or role explicitly overrides these settings for themselves.
    #   params = {
    #     name: serviceLongArnFormat,
    #     value: "enabled"
    #   }
    #   options = {}
    #   response = client.put_account_setting_default(params, options)
    #   response.to_h #=>
    #   {
    #     setting: {
    #       name: serviceLongArnFormat,
    #       value: "enabled",
    #       principal_arn: "arn:aws:iam::<aws_account_id>:root"
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "serviceLongArnFormat" # One of: ["serviceLongArnFormat", "taskLongArnFormat", "containerInstanceLongArnFormat", "awsvpcTrunking", "containerInsights", "fargateFIPSMode", "tagResourceAuthorization", "fargateTaskRetirementWaitPeriod", "guardDutyActivate", "defaultLogDriverMode"], # required
    #     value: "String", # required
    #   }
    #   options = {}
    #   response = client.put_account_setting_default(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     setting: {
    #       name: "serviceLongArnFormat" # One of: ["serviceLongArnFormat", "taskLongArnFormat", "containerInstanceLongArnFormat", "awsvpcTrunking", "containerInsights", "fargateFIPSMode", "tagResourceAuthorization", "fargateTaskRetirementWaitPeriod", "guardDutyActivate", "defaultLogDriverMode"],
    #       value: "String",
    #       principal_arn: "String",
    #       type: "user" # One of: ["user", "aws_managed"]
    #     }
    #   }
    # @return [Types::PutAccountSettingDefaultResponse]
    def put_account_setting_default(params = {}, options = {})
      request = build_request(:put_account_setting_default, params)
      request.send_request(options)
    end

    # <p>Create or update an attribute on an Amazon ECS resource. If the attribute doesn't exist,
    # 			it's created. If the attribute exists, its value is replaced with the specified value.
    # 			To delete an attribute, use <a href="https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_DeleteAttributes.html">DeleteAttributes</a>. For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-placement-constraints.html#attributes">Attributes</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    # @param [Hash, Types::PutAttributesRequest] params
    # @option params [String] :cluster
    #   <p>The short name or full Amazon Resource Name (ARN) of the cluster that contains the resource to apply
    #   			attributes. If you do not specify a cluster, the default cluster is assumed.</p>
    # @option params [Array<Types::Attribute>] :attributes
    #   <p>The attributes to apply to your resource. You can specify up to 10 custom attributes
    #   			for each resource. You can specify up to 10 attributes in a single call.</p>
    # @example To create or update an attribute on a resource
    #   # This example adds an attribute "stack" with the value "production" to a container instance.
    #   params = {
    #     cluster: "MyCluster",
    #     attributes: [
    #       {
    #         target_id: "arn:aws:ecs:us-west-2:123456789012:container-instance/1c3be8ed-df30-47b4-8f1e-6e68ebd01f34",
    #         name: "stack",
    #         value: "production"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.put_attributes(params, options)
    #   response.to_h #=>
    #   {
    #     attributes: [
    #       {
    #         name: "stack",
    #         target_id: "arn:aws:ecs:us-west-2:123456789012:container-instance/1c3be8ed-df30-47b4-8f1e-6e68ebd01f34",
    #         value: "production"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster: "String",
    #     attributes: [ # required
    #       {
    #         name: "String", # required
    #         value: "String",
    #         target_type: "container-instance" # One of: ["container-instance"],
    #         target_id: "String"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.put_attributes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     attributes: [
    #       {
    #         name: "String", # required
    #         value: "String",
    #         target_type: "container-instance" # One of: ["container-instance"],
    #         target_id: "String"
    #       }
    #     ]
    #   }
    # @return [Types::PutAttributesResponse]
    def put_attributes(params = {}, options = {})
      request = build_request(:put_attributes, params)
      request.send_request(options)
    end

    # <p>Modifies the available capacity providers and the default capacity provider strategy
    # 			for a cluster.</p>
    #          <p>You must specify both the available capacity providers and a default capacity provider
    # 			strategy for the cluster. If the specified cluster has existing capacity providers
    # 			associated with it, you must specify all existing capacity providers in addition to any
    # 			new ones you want to add. Any existing capacity providers that are associated with a
    # 			cluster that are omitted from a <a href="https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_PutClusterCapacityProviders.html">PutClusterCapacityProviders</a> API call will be disassociated with the
    # 			cluster. You can only disassociate an existing capacity provider from a cluster if it's
    # 			not being used by any existing tasks.</p>
    #          <p>When creating a service or running a task on a cluster, if no capacity provider or
    # 			launch type is specified, then the cluster's default capacity provider strategy is used.
    # 			We recommend that you define a default capacity provider strategy for your cluster.
    # 			However, you must specify an empty array (<code>[]</code>) to bypass defining a default
    # 			strategy.</p>
    #          <p>Amazon ECS Managed Instances doesn't support this, because when you create a capacity provider with Amazon ECS Managed Instances, it becomes available only within the specified cluster.</p>
    # @param [Hash, Types::PutClusterCapacityProvidersRequest] params
    # @option params [String] :cluster
    #   <p>The short name or full Amazon Resource Name (ARN) of the cluster to modify the capacity provider
    #   			settings for. If you don't specify a cluster, the default cluster is assumed.</p>
    # @option params [Array<String>] :capacity_providers
    #   <p>The name of one or more capacity providers to associate with the cluster.</p>
    #            <p>If specifying a capacity provider that uses an Auto Scaling group, the capacity
    #   			provider must already be created. New capacity providers can be created with the <a href="https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_CreateCapacityProvider.html">CreateCapacityProvider</a> API operation.</p>
    #            <p>To use a Fargate capacity provider, specify either the <code>FARGATE</code> or
    #   				<code>FARGATE_SPOT</code> capacity providers. The Fargate capacity providers are
    #   			available to all accounts and only need to be associated with a cluster to be
    #   			used.</p>
    # @option params [Array<Types::CapacityProviderStrategyItem>] :default_capacity_provider_strategy
    #   <p>The capacity provider strategy to use by default for the cluster.</p>
    #            <p>When creating a service or running a task on a cluster, if no capacity provider or
    #   			launch type is specified then the default capacity provider strategy for the cluster is
    #   			used.</p>
    #            <p>A capacity provider strategy consists of one or more capacity providers along with the
    #   				<code>base</code> and <code>weight</code> to assign to them. A capacity provider
    #   			must be associated with the cluster to be used in a capacity provider strategy. The
    #   				<a href="https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_PutClusterCapacityProviders.html">PutClusterCapacityProviders</a> API is used to associate a capacity provider
    #   			with a cluster. Only capacity providers with an <code>ACTIVE</code> or
    #   				<code>UPDATING</code> status can be used.</p>
    #            <p>If specifying a capacity provider that uses an Auto Scaling group, the capacity
    #   			provider must already be created. New capacity providers can be created with the <a href="https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_CreateCapacityProvider.html">CreateCapacityProvider</a> API operation.</p>
    #            <p>To use a Fargate capacity provider, specify either the <code>FARGATE</code> or
    #   				<code>FARGATE_SPOT</code> capacity providers. The Fargate capacity providers are
    #   			available to all accounts and only need to be associated with a cluster to be
    #   			used.</p>
    # @example To add an existing capacity provider to a cluuster
    #   # This example adds an existing capacity provider "MyCapacityProvider2" to a cluster that already has the capacity provider "MyCapacityProvider1" associated with it. Both "MyCapacityProvider2" and "MyCapacityProvider1" need to be specified. 
    #   params = {
    #     cluster: "MyCluster",
    #     capacity_providers: [
    #       "MyCapacityProvider1",
    #       "MyCapacityProvider2"
    #     ],
    #     default_capacity_provider_strategy: [
    #       {
    #         capacity_provider: "MyCapacityProvider1",
    #         weight: 1
    #       },
    #       {
    #         capacity_provider: "MyCapacityProvider2",
    #         weight: 1
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.put_cluster_capacity_providers(params, options)
    #   response.to_h #=>
    #   {
    #     cluster: {
    #       cluster_arn: "arn:aws:ecs:us-west-2:123456789012:cluster/MyCluster",
    #       cluster_name: "MyCluster",
    #       status: "ACTIVE",
    #       registered_container_instances_count: 0,
    #       running_tasks_count: 0,
    #       pending_tasks_count: 0,
    #       active_services_count: 0,
    #       statistics: [
    #       ],
    #       tags: [
    #       ],
    #       settings: [
    #         {
    #           name: containerInsights,
    #           value: "enabled"
    #         }
    #       ],
    #       capacity_providers: [
    #         "MyCapacityProvider1",
    #         "MyCapacityProvider2"
    #       ],
    #       default_capacity_provider_strategy: [
    #         {
    #           capacity_provider: "MyCapacityProvider1",
    #           weight: 1,
    #           base: 0
    #         },
    #         {
    #           capacity_provider: "MyCapacityProvider2",
    #           weight: 1,
    #           base: 0
    #         }
    #       ],
    #       attachments: [
    #         {
    #           id: "0fb0c8f4-6edd-4de1-9b09-17e470ee1918",
    #           type: "as_policy",
    #           status: "ACTIVE",
    #           details: [
    #             {
    #               name: "capacityProviderName",
    #               value: "MyCapacityProvider1"
    #             },
    #             {
    #               name: "scalingPolicyName",
    #               value: "ECSManagedAutoScalingPolicy-a1b2c3d4-5678-90ab-cdef-EXAMPLE11111"
    #             }
    #           ]
    #         },
    #         {
    #           id: "ae592060-2382-4663-9476-b015c685593c",
    #           type: "as_policy",
    #           status: "ACTIVE",
    #           details: [
    #             {
    #               name: "capacityProviderName",
    #               value: "MyCapacityProvider2"
    #             },
    #             {
    #               name: "scalingPolicyName",
    #               value: "ECSManagedAutoScalingPolicy-a1b2c3d4-5678-90ab-cdef-EXAMPLE22222"
    #             }
    #           ]
    #         }
    #       ],
    #       attachments_status: "UPDATE_IN_PROGRESS"
    #     }
    #   }
    # @example To remove a capacity provider from a cluster
    #   # This example removes a capacity provider "MyCapacityProvider2" from a cluster that has both "MyCapacityProvider2" and "MyCapacityProvider1" associated with it. Only "MyCapacityProvider1" needs to be specified in this scenario. 
    #   params = {
    #     cluster: "MyCluster",
    #     capacity_providers: [
    #       "MyCapacityProvider1"
    #     ],
    #     default_capacity_provider_strategy: [
    #       {
    #         capacity_provider: "MyCapacityProvider1",
    #         weight: 1,
    #         base: 0
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.put_cluster_capacity_providers(params, options)
    #   response.to_h #=>
    #   {
    #     cluster: {
    #       cluster_arn: "arn:aws:ecs:us-west-2:123456789012:cluster/MyCluster",
    #       cluster_name: "MyCluster",
    #       status: "ACTIVE",
    #       registered_container_instances_count: 0,
    #       running_tasks_count: 0,
    #       pending_tasks_count: 0,
    #       active_services_count: 0,
    #       statistics: [
    #       ],
    #       tags: [
    #       ],
    #       settings: [
    #         {
    #           name: containerInsights,
    #           value: "enabled"
    #         }
    #       ],
    #       capacity_providers: [
    #         "MyCapacityProvider1"
    #       ],
    #       default_capacity_provider_strategy: [
    #         {
    #           capacity_provider: "MyCapacityProvider1",
    #           weight: 1,
    #           base: 0
    #         }
    #       ],
    #       attachments: [
    #         {
    #           id: "0fb0c8f4-6edd-4de1-9b09-17e470ee1918",
    #           type: "as_policy",
    #           status: "ACTIVE",
    #           details: [
    #             {
    #               name: "capacityProviderName",
    #               value: "MyCapacityProvider1"
    #             },
    #             {
    #               name: "scalingPolicyName",
    #               value: "ECSManagedAutoScalingPolicy-a1b2c3d4-5678-90ab-cdef-EXAMPLE11111"
    #             }
    #           ]
    #         },
    #         {
    #           id: "ae592060-2382-4663-9476-b015c685593c",
    #           type: "as_policy",
    #           status: "DELETING",
    #           details: [
    #             {
    #               name: "capacityProviderName",
    #               value: "MyCapacityProvider2"
    #             },
    #             {
    #               name: "scalingPolicyName",
    #               value: "ECSManagedAutoScalingPolicy-a1b2c3d4-5678-90ab-cdef-EXAMPLE22222"
    #             }
    #           ]
    #         }
    #       ],
    #       attachments_status: "UPDATE_IN_PROGRESS"
    #     }
    #   }
    # @example To remove all capacity providers from a cluster
    #   # This example removes all capacity providers associated with a cluster. 
    #   params = {
    #     cluster: "MyCluster",
    #     capacity_providers: [
    #     ],
    #     default_capacity_provider_strategy: [
    #     ]
    #   }
    #   options = {}
    #   response = client.put_cluster_capacity_providers(params, options)
    #   response.to_h #=>
    #   {
    #     cluster: {
    #       cluster_arn: "arn:aws:ecs:us-west-2:123456789012:cluster/MyCluster",
    #       cluster_name: "MyCluster",
    #       status: "ACTIVE",
    #       registered_container_instances_count: 0,
    #       running_tasks_count: 0,
    #       pending_tasks_count: 0,
    #       active_services_count: 0,
    #       statistics: [
    #       ],
    #       tags: [
    #       ],
    #       settings: [
    #         {
    #           name: containerInsights,
    #           value: "enabled"
    #         }
    #       ],
    #       capacity_providers: [
    #       ],
    #       default_capacity_provider_strategy: [
    #       ],
    #       attachments: [
    #         {
    #           id: "0fb0c8f4-6edd-4de1-9b09-17e470ee1918",
    #           type: "as_policy",
    #           status: "DELETING",
    #           details: [
    #             {
    #               name: "capacityProviderName",
    #               value: "MyCapacityProvider1"
    #             },
    #             {
    #               name: "scalingPolicyName",
    #               value: "ECSManagedAutoScalingPolicy-a1b2c3d4-5678-90ab-cdef-EXAMPLE11111"
    #             }
    #           ]
    #         },
    #         {
    #           id: "ae592060-2382-4663-9476-b015c685593c",
    #           type: "as_policy",
    #           status: "DELETING",
    #           details: [
    #             {
    #               name: "capacityProviderName",
    #               value: "MyCapacityProvider2"
    #             },
    #             {
    #               name: "scalingPolicyName",
    #               value: "ECSManagedAutoScalingPolicy-a1b2c3d4-5678-90ab-cdef-EXAMPLE22222"
    #             }
    #           ]
    #         }
    #       ],
    #       attachments_status: "UPDATE_IN_PROGRESS"
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster: "String", # required
    #     capacity_providers: ["String"], # required
    #     default_capacity_provider_strategy: [ # required
    #       {
    #         capacity_provider: "String", # required
    #         weight: 1,
    #         base: 1
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.put_cluster_capacity_providers(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cluster: {
    #       cluster_arn: "String",
    #       cluster_name: "String",
    #       configuration: {
    #         execute_command_configuration: {
    #           kms_key_id: "String",
    #           logging: "NONE" # One of: ["NONE", "DEFAULT", "OVERRIDE"],
    #           log_configuration: {
    #             cloud_watch_log_group_name: "String",
    #             cloud_watch_encryption_enabled: false,
    #             s3_bucket_name: "String",
    #             s3_encryption_enabled: false,
    #             s3_key_prefix: "String"
    #           }
    #         },
    #         managed_storage_configuration: {
    #           kms_key_id: "String",
    #           fargate_ephemeral_storage_kms_key_id: "String"
    #         }
    #       },
    #       status: "String",
    #       registered_container_instances_count: 1,
    #       running_tasks_count: 1,
    #       pending_tasks_count: 1,
    #       active_services_count: 1,
    #       statistics: [
    #         {
    #           name: "String",
    #           value: "String"
    #         }
    #       ],
    #       tags: [
    #         {
    #           key: "TagKey",
    #           value: "TagValue"
    #         }
    #       ],
    #       settings: [
    #         {
    #           name: "containerInsights" # One of: ["containerInsights"],
    #           value: "String"
    #         }
    #       ],
    #       capacity_providers: ["String"],
    #       default_capacity_provider_strategy: [
    #         {
    #           capacity_provider: "String", # required
    #           weight: 1,
    #           base: 1
    #         }
    #       ],
    #       attachments: [
    #         {
    #           id: "String",
    #           type: "String",
    #           status: "String",
    #           details: [
    #             {
    #               name: "String",
    #               value: "String"
    #             }
    #           ]
    #         }
    #       ],
    #       attachments_status: "String",
    #       service_connect_defaults: {
    #         namespace: "String"
    #       }
    #     }
    #   }
    # @return [Types::PutClusterCapacityProvidersResponse]
    def put_cluster_capacity_providers(params = {}, options = {})
      request = build_request(:put_cluster_capacity_providers, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This action is only used by the Amazon ECS agent, and it is not intended for use outside of the agent.</p>
    #          </note>
    #          <p>Registers an EC2 instance into the specified cluster. This instance becomes available
    # 			to place containers on.</p>
    # @param [Hash, Types::RegisterContainerInstanceRequest] params
    # @option params [String] :cluster
    #   <p>The short name or full Amazon Resource Name (ARN) of the cluster to register your container instance
    #   			with. If you do not specify a cluster, the default cluster is assumed.</p>
    # @option params [String] :instance_identity_document
    #   <p>The instance identity document for the EC2 instance to register. This document can be
    #   			found by running the following command from the instance: <code>curl
    #   				http://169.254.169.254/latest/dynamic/instance-identity/document/</code>
    #            </p>
    # @option params [String] :instance_identity_document_signature
    #   <p>The instance identity document signature for the EC2 instance to register. This
    #   			signature can be found by running the following command from the instance: <code>curl
    #   				http://169.254.169.254/latest/dynamic/instance-identity/signature/</code>
    #            </p>
    # @option params [Array<Types::Resource>] :total_resources
    #   <p>The resources available on the instance.</p>
    # @option params [Types::VersionInfo] :version_info
    #   <p>The version information for the Amazon ECS container agent and Docker daemon that runs on
    #   			the container instance.</p>
    # @option params [String] :container_instance_arn
    #   <p>The ARN of the container instance (if it was previously registered).</p>
    # @option params [Array<Types::Attribute>] :attributes
    #   <p>The container instance attributes that this container instance supports.</p>
    # @option params [Array<Types::PlatformDevice>] :platform_devices
    #   <p>The devices that are available on the container instance. The only supported device
    #   			type is a GPU.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The metadata that you apply to the container instance to help you categorize and
    #   			organize them. Each tag consists of a key and an optional value. You define both.</p>
    #            <p>The following basic restrictions apply to tags:</p>
    #            <ul>
    #               <li>
    #                  <p>Maximum number of tags per resource - 50</p>
    #               </li>
    #               <li>
    #                  <p>For each resource, each tag key must be unique, and each tag key can have only
    #                       one value.</p>
    #               </li>
    #               <li>
    #                  <p>Maximum key length - 128 Unicode characters in UTF-8</p>
    #               </li>
    #               <li>
    #                  <p>Maximum value length - 256 Unicode characters in UTF-8</p>
    #               </li>
    #               <li>
    #                  <p>If your tagging schema is used across multiple services and resources,
    #                       remember that other services may have restrictions on allowed characters.
    #                       Generally allowed characters are: letters, numbers, and spaces representable in
    #                       UTF-8, and the following characters: + - = . _ : / @.</p>
    #               </li>
    #               <li>
    #                  <p>Tag keys and values are case-sensitive.</p>
    #               </li>
    #               <li>
    #                  <p>Do not use <code>aws:</code>, <code>AWS:</code>, or any upper or lowercase
    #                       combination of such as a prefix for either keys or values as it is reserved for
    #                       Amazon Web Services use. You cannot edit or delete tag keys or values with this prefix. Tags with
    #                       this prefix do not count against your tags per resource limit.</p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster: "String",
    #     instance_identity_document: "String",
    #     instance_identity_document_signature: "String",
    #     total_resources: [
    #       {
    #         name: "String",
    #         type: "String",
    #         double_value: 1.0,
    #         long_value: 1,
    #         integer_value: 1,
    #         string_set_value: ["String"]
    #       }
    #     ],
    #     version_info: {
    #       agent_version: "String",
    #       agent_hash: "String",
    #       docker_version: "String"
    #     },
    #     container_instance_arn: "String",
    #     attributes: [
    #       {
    #         name: "String", # required
    #         value: "String",
    #         target_type: "container-instance" # One of: ["container-instance"],
    #         target_id: "String"
    #       }
    #     ],
    #     platform_devices: [
    #       {
    #         id: "String", # required
    #         type: "GPU" # One of: ["GPU"], # required
    #       }
    #     ],
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.register_container_instance(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     container_instance: {
    #       container_instance_arn: "String",
    #       ec2_instance_id: "String",
    #       capacity_provider_name: "String",
    #       version: 1,
    #       version_info: {
    #         agent_version: "String",
    #         agent_hash: "String",
    #         docker_version: "String"
    #       },
    #       remaining_resources: [
    #         {
    #           name: "String",
    #           type: "String",
    #           double_value: 1.0,
    #           long_value: 1,
    #           integer_value: 1,
    #           string_set_value: ["String"]
    #         }
    #       ],
    #       registered_resources: [
    #         {
    #           name: "String",
    #           type: "String",
    #           double_value: 1.0,
    #           long_value: 1,
    #           integer_value: 1,
    #           string_set_value: ["String"]
    #         }
    #       ],
    #       status: "String",
    #       status_reason: "String",
    #       agent_connected: false,
    #       running_tasks_count: 1,
    #       pending_tasks_count: 1,
    #       agent_update_status: "PENDING" # One of: ["PENDING", "STAGING", "STAGED", "UPDATING", "UPDATED", "FAILED"],
    #       attributes: [
    #         {
    #           name: "String", # required
    #           value: "String",
    #           target_type: "container-instance" # One of: ["container-instance"],
    #           target_id: "String"
    #         }
    #       ],
    #       registered_at: Time.now,
    #       attachments: [
    #         {
    #           id: "String",
    #           type: "String",
    #           status: "String",
    #           details: [
    #             {
    #               name: "String",
    #               value: "String"
    #             }
    #           ]
    #         }
    #       ],
    #       tags: [
    #         {
    #           key: "TagKey",
    #           value: "TagValue"
    #         }
    #       ],
    #       health_status: {
    #         overall_status: "OK" # One of: ["OK", "IMPAIRED", "INSUFFICIENT_DATA", "INITIALIZING"],
    #         details: [
    #           {
    #             type: "CONTAINER_RUNTIME" # One of: ["CONTAINER_RUNTIME"],
    #             status: "OK" # One of: ["OK", "IMPAIRED", "INSUFFICIENT_DATA", "INITIALIZING"],
    #             last_updated: Time.now,
    #             last_status_change: Time.now
    #           }
    #         ]
    #       }
    #     }
    #   }
    # @return [Types::RegisterContainerInstanceResponse]
    def register_container_instance(params = {}, options = {})
      request = build_request(:register_container_instance, params)
      request.send_request(options)
    end

    # <p>Registers a new task definition from the supplied <code>family</code> and
    # 				<code>containerDefinitions</code>. Optionally, you can add data volumes to your
    # 			containers with the <code>volumes</code> parameter. For more information about task
    # 			definition parameters and defaults, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_defintions.html">Amazon ECS Task
    # 				Definitions</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #          <p>You can specify a role for your task with the <code>taskRoleArn</code> parameter. When
    # 			you specify a role for a task, its containers can then use the latest versions of the
    # 			CLI or SDKs to make API requests to the Amazon Web Services services that are specified in the
    # 			policy that's associated with the role. For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-iam-roles.html">IAM
    # 				Roles for Tasks</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #          <p>You can specify a Docker networking mode for the containers in your task definition
    # 			with the <code>networkMode</code> parameter. If you specify the <code>awsvpc</code>
    # 			network mode, the task is allocated an elastic network interface, and you must specify a
    # 				<a href="https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_NetworkConfiguration.html">NetworkConfiguration</a> when you create a service or run a task with the task
    # 			definition. For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-networking.html">Task Networking</a>
    # 			in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    # @param [Hash, Types::RegisterTaskDefinitionRequest] params
    # @option params [String] :family
    #   <p>You must specify a <code>family</code> for a task definition. You can use it track
    #   			multiple versions of the same task definition. The <code>family</code> is used as a name
    #   			for your task definition. Up to 255 letters (uppercase and lowercase), numbers, underscores, and hyphens are allowed.</p>
    # @option params [String] :task_role_arn
    #   <p>The short name or full Amazon Resource Name (ARN) of the IAM role that containers in this task can
    #   			assume. All containers in this task are granted the permissions that are specified in
    #   			this role. For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-iam-roles.html">IAM Roles for
    #   				Tasks</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    # @option params [String] :execution_role_arn
    #   <p>The Amazon Resource Name (ARN) of the task execution role that grants the Amazon ECS container agent
    #               permission to make Amazon Web Services API calls on your behalf. For informationabout the required IAM roles for Amazon ECS, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/security-ecs-iam-role-overview.html">IAM roles for Amazon ECS</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    # @option params [String] :network_mode
    #   <p>The Docker networking mode to use for the containers in the task. The valid values are
    #                   <code>none</code>, <code>bridge</code>, <code>awsvpc</code>, and <code>host</code>.
    #               If no network mode is specified, the default is <code>bridge</code>.</p>
    #            <p>For Amazon ECS tasks on Fargate, the <code>awsvpc</code> network mode is required. 
    #               For Amazon ECS tasks on Amazon EC2 Linux instances, any network mode can be used.  For Amazon ECS tasks on Amazon EC2 Windows instances, <code><default></code> or <code>awsvpc</code> can be used. If the network
    #               mode is set to <code>none</code>, you cannot specify port mappings in your container
    #               definitions, and the tasks containers do not have external connectivity. The
    #                   <code>host</code> and <code>awsvpc</code> network modes offer the highest networking
    #               performance for containers because they use the EC2 network stack instead of the
    #               virtualized network stack provided by the <code>bridge</code> mode.</p>
    #            <p>With the <code>host</code> and <code>awsvpc</code> network modes, exposed container
    #               ports are mapped directly to the corresponding host port (for the <code>host</code>
    #               network mode) or the attached elastic network interface port (for the
    #                   <code>awsvpc</code> network mode), so you cannot take advantage of dynamic host port
    #               mappings. </p>
    #            <important>
    #               <p>When using the <code>host</code> network mode, you should not run
    #                               containers using the root user (UID 0). It is considered best practice
    #                               to use a non-root user.</p>
    #            </important>
    #            <p>If the network mode is <code>awsvpc</code>, the task is allocated an elastic network
    #               interface, and you must specify a <a href="https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_NetworkConfiguration.html">NetworkConfiguration</a> value when you create
    #               a service or run a task with the task definition. For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-networking.html">Task Networking</a> in the
    #                   <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #            <p>If the network mode is <code>host</code>, you cannot run multiple instantiations of the
    #               same task on a single container instance when port mappings are used.</p>
    # @option params [Array<Types::ContainerDefinition>] :container_definitions
    #   <p>A list of container definitions in JSON format that describe the different containers
    #   			that make up your task.</p>
    # @option params [Array<Types::Volume>] :volumes
    #   <p>A list of volume definitions in JSON format that containers in your task might
    #   			use.</p>
    # @option params [Array<Types::TaskDefinitionPlacementConstraint>] :placement_constraints
    #   <p>An array of placement constraint objects to use for the task. You can specify a
    #   			maximum of 10 constraints for each task. This limit includes constraints in the task
    #   			definition and those specified at runtime.</p>
    # @option params [Array<String>] :requires_compatibilities
    #   <p>The task launch type that Amazon ECS validates the task definition against. A client
    #   			exception is returned if the task definition doesn't validate against the
    #   			compatibilities specified. If no value is specified, the parameter is omitted from the
    #   			response.</p>
    # @option params [String] :cpu
    #   <p>The number of CPU units used by the task. It can be expressed as an integer using CPU
    #   			units (for example, <code>1024</code>) or as a string using vCPUs (for example, <code>1
    #   				vCPU</code> or <code>1 vcpu</code>) in a task definition. String values are
    #   			converted to an integer indicating the CPU units when the task definition is
    #   			registered.</p>
    #            <note>
    #               <p>Task-level CPU and memory parameters are ignored for Windows containers. We
    #   				recommend specifying container-level resources for Windows containers.</p>
    #            </note>
    #            <p>If you're using the EC2 launch type or external launch type, this field
    #   			is optional. Supported values are between <code>128</code> CPU units (<code>0.125</code>
    #   			vCPUs) and <code>196608</code> CPU units (<code>192</code> vCPUs). If you do not specify
    #   			a value, the parameter is ignored.</p>
    #            <p>This field is required for Fargate. For information about the valid values, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_definition_parameters.html#task_size">Task size</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    # @option params [String] :memory
    #   <p>The amount of memory (in MiB) used by the task. It can be expressed as an integer
    #   			using MiB (for example ,<code>1024</code>) or as a string using GB (for example,
    #   				<code>1GB</code> or <code>1 GB</code>) in a task definition. String values are
    #   			converted to an integer indicating the MiB when the task definition is
    #   			registered.</p>
    #            <note>
    #               <p>Task-level CPU and memory parameters are ignored for Windows containers. We
    #   				recommend specifying container-level resources for Windows containers.</p>
    #            </note>
    #            <p>If using the EC2 launch type, this field is optional.</p>
    #            <p>If using the Fargate launch type, this field is required and you must
    #   			use one of the following values. This determines your range of supported values for the
    #   				<code>cpu</code> parameter.</p>
    #            <p>The CPU units cannot be less than 1 vCPU when you use Windows containers on
    #   			Fargate.</p>
    #            <ul>
    #               <li>
    #                  <p>512 (0.5 GB), 1024 (1 GB), 2048 (2 GB) - Available <code>cpu</code> values: 256 (.25 vCPU)</p>
    #               </li>
    #               <li>
    #                  <p>1024 (1 GB), 2048 (2 GB), 3072 (3 GB), 4096 (4 GB) - Available <code>cpu</code> values: 512 (.5 vCPU)</p>
    #               </li>
    #               <li>
    #                  <p>2048 (2 GB), 3072 (3 GB), 4096 (4 GB), 5120 (5 GB), 6144 (6 GB), 7168 (7 GB), 8192 (8 GB) - Available <code>cpu</code> values: 1024 (1 vCPU)</p>
    #               </li>
    #               <li>
    #                  <p>Between 4096 (4 GB) and 16384 (16 GB) in increments of 1024 (1 GB) - Available <code>cpu</code> values: 2048 (2 vCPU)</p>
    #               </li>
    #               <li>
    #                  <p>Between 8192 (8 GB) and 30720 (30 GB) in increments of 1024 (1 GB) - Available <code>cpu</code> values: 4096 (4 vCPU)</p>
    #               </li>
    #               <li>
    #                  <p>Between 16 GB and 60 GB in 4 GB increments - Available <code>cpu</code> values: 8192 (8 vCPU)</p>
    #                  <p>This option requires Linux platform <code>1.4.0</code> or
    #                                           later.</p>
    #               </li>
    #               <li>
    #                  <p>Between 32GB and 120 GB in 8 GB increments - Available <code>cpu</code> values: 16384 (16 vCPU)</p>
    #                  <p>This option requires Linux platform <code>1.4.0</code> or
    #                                           later.</p>
    #               </li>
    #            </ul>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The metadata that you apply to the task definition to help you categorize and organize
    #   			them. Each tag consists of a key and an optional value. You define both of them.</p>
    #            <p>The following basic restrictions apply to tags:</p>
    #            <ul>
    #               <li>
    #                  <p>Maximum number of tags per resource - 50</p>
    #               </li>
    #               <li>
    #                  <p>For each resource, each tag key must be unique, and each tag key can have only
    #                       one value.</p>
    #               </li>
    #               <li>
    #                  <p>Maximum key length - 128 Unicode characters in UTF-8</p>
    #               </li>
    #               <li>
    #                  <p>Maximum value length - 256 Unicode characters in UTF-8</p>
    #               </li>
    #               <li>
    #                  <p>If your tagging schema is used across multiple services and resources,
    #                       remember that other services may have restrictions on allowed characters.
    #                       Generally allowed characters are: letters, numbers, and spaces representable in
    #                       UTF-8, and the following characters: + - = . _ : / @.</p>
    #               </li>
    #               <li>
    #                  <p>Tag keys and values are case-sensitive.</p>
    #               </li>
    #               <li>
    #                  <p>Do not use <code>aws:</code>, <code>AWS:</code>, or any upper or lowercase
    #                       combination of such as a prefix for either keys or values as it is reserved for
    #                       Amazon Web Services use. You cannot edit or delete tag keys or values with this prefix. Tags with
    #                       this prefix do not count against your tags per resource limit.</p>
    #               </li>
    #            </ul>
    # @option params [String] :pid_mode
    #   <p>The process namespace to use for the containers in the task. The valid
    #                               values are <code>host</code> or <code>task</code>. On Fargate for
    #                               Linux containers, the only valid value is <code>task</code>. For
    #                               example, monitoring sidecars might need <code>pidMode</code> to access
    #                               information about other containers running in the same task.</p>
    #            <p>If <code>host</code> is specified, all containers within the tasks
    #                               that specified the <code>host</code> PID mode on the same container
    #                               instance share the same process namespace with the host Amazon EC2
    #                               instance.</p>
    #            <p>If <code>task</code> is specified, all containers within the specified
    #                               task share the same process namespace.</p>
    #            <p>If no value is specified, the
    #                               default is a private namespace for each container.</p>
    #            <p>If the <code>host</code> PID mode is used, there's a heightened risk
    #                               of undesired process namespace exposure.</p>
    #            <note>
    #               <p>This parameter is not supported for Windows containers.</p>
    #            </note>
    #            <note>
    #               <p>This parameter is only supported for tasks that are hosted on
    #           Fargate if the tasks are using platform version <code>1.4.0</code> or later
    #           (Linux). This isn't supported for Windows containers on
    #           Fargate.</p>
    #            </note>
    # @option params [String] :ipc_mode
    #   <p>The IPC resource namespace to use for the containers in the task. The valid values are
    #                   <code>host</code>, <code>task</code>, or <code>none</code>. If <code>host</code> is
    #               specified, then all containers within the tasks that specified the <code>host</code> IPC
    #               mode on the same container instance share the same IPC resources with the host Amazon EC2
    #               instance. If <code>task</code> is specified, all containers within the specified task
    #               share the same IPC resources. If <code>none</code> is specified, then IPC resources
    #               within the containers of a task are private and not shared with other containers in a
    #               task or on the container instance. If no value is specified, then the IPC resource
    #               namespace sharing depends on the Docker daemon setting on the container instance.</p>
    #            <p>If the <code>host</code> IPC mode is used, be aware that there is a heightened risk of
    #               undesired IPC namespace expose.</p>
    #            <p>If you are setting namespaced kernel parameters using <code>systemControls</code> for
    #               the containers in the task, the following will apply to your IPC resource namespace. For
    #               more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_definition_parameters.html">System
    #                   Controls</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #            <ul>
    #               <li>
    #                  <p>For tasks that use the <code>host</code> IPC mode, IPC namespace related
    #                           <code>systemControls</code> are not supported.</p>
    #               </li>
    #               <li>
    #                  <p>For tasks that use the <code>task</code> IPC mode, IPC namespace related
    #                           <code>systemControls</code> will apply to all containers within a
    #                       task.</p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>This parameter is not supported for Windows containers or tasks run on Fargate.</p>
    #            </note>
    # @option params [Types::ProxyConfiguration] :proxy_configuration
    #   <p>The configuration details for the App Mesh proxy.</p>
    #            <p>For tasks hosted on Amazon EC2 instances, the container instances require at least version
    #   				<code>1.26.0</code> of the container agent and at least version
    #   				<code>1.26.0-1</code> of the <code>ecs-init</code> package to use a proxy
    #   			configuration. If your container instances are launched from the Amazon ECS-optimized
    #   			AMI version <code>20190301</code> or later, then they contain the required versions of
    #   			the container agent and <code>ecs-init</code>. For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-ami-versions.html">Amazon ECS-optimized AMI versions</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    # @option params [Array<Types::InferenceAccelerator>] :inference_accelerators
    #   <p>The Elastic Inference accelerators to use for the containers in the task.</p>
    # @option params [Types::EphemeralStorage] :ephemeral_storage
    #   <p>The amount of ephemeral storage to allocate for the task. This parameter is used to
    #   			expand the total amount of ephemeral storage available, beyond the default amount, for
    #   			tasks hosted on Fargate. For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/using_data_volumes.html">Using data volumes in
    #   				tasks</a> in the <i>Amazon ECS Developer Guide</i>.</p>
    #            <note>
    #               <p>For tasks using the Fargate launch type, the task requires the
    #   				following platforms:</p>
    #               <ul>
    #                  <li>
    #                     <p>Linux platform version <code>1.4.0</code> or later.</p>
    #                  </li>
    #                  <li>
    #                     <p>Windows platform version <code>1.0.0</code> or later.</p>
    #                  </li>
    #               </ul>
    #            </note>
    # @option params [Types::RuntimePlatform] :runtime_platform
    #   <p>The operating system that your tasks definitions run on. A platform family is
    #   			specified only for tasks using the Fargate launch type. </p>
    # @option params [Boolean] :enable_fault_injection
    #   <p>Enables fault injection when you register your task definition and allows for fault
    #   			injection requests to be accepted from the task's containers. The default value is
    #   				<code>false</code>.</p>
    # @example To register a task definition
    #   # This example registers a task definition to the specified family.
    #   params = {
    #     family: "sleep360",
    #     task_role_arn: "",
    #     container_definitions: [
    #       {
    #         name: "sleep",
    #         image: "public.ecr.aws/docker/library/busybox:latest",
    #         cpu: 10,
    #         command: [
    #           "sleep",
    #           "360"
    #         ],
    #         memory: 10,
    #         essential: true
    #       }
    #     ],
    #     volumes: [
    #     ]
    #   }
    #   options = {}
    #   response = client.register_task_definition(params, options)
    #   response.to_h #=>
    #   {
    #     task_definition: {
    #       volumes: [
    #       ],
    #       task_definition_arn: "arn:aws:ecs:us-east-1:<aws_account_id>:task-definition/sleep360:19",
    #       container_definitions: [
    #         {
    #           environment: [
    #           ],
    #           name: "sleep",
    #           mount_points: [
    #           ],
    #           image: "public.ecr.aws/docker/library/busybox:latest",
    #           cpu: 10,
    #           port_mappings: [
    #           ],
    #           command: [
    #             "sleep",
    #             "360"
    #           ],
    #           memory: 10,
    #           essential: true,
    #           volumes_from: [
    #           ]
    #         }
    #       ],
    #       family: "sleep360",
    #       revision: 1
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     family: "String", # required
    #     task_role_arn: "String",
    #     execution_role_arn: "String",
    #     network_mode: "bridge" # One of: ["bridge", "host", "awsvpc", "none"],
    #     container_definitions: [ # required
    #       {
    #         name: "String",
    #         image: "String",
    #         repository_credentials: {
    #           credentials_parameter: "String", # required
    #         },
    #         cpu: 1,
    #         memory: 1,
    #         memory_reservation: 1,
    #         links: ["String"],
    #         port_mappings: [
    #           {
    #             container_port: 1,
    #             host_port: 1,
    #             protocol: "tcp" # One of: ["tcp", "udp"],
    #             name: "String",
    #             app_protocol: "http" # One of: ["http", "http2", "grpc"],
    #             container_port_range: "String"
    #           }
    #         ],
    #         essential: false,
    #         restart_policy: {
    #           enabled: false, # required
    #           ignored_exit_codes: [1],
    #           restart_attempt_period: 1
    #         },
    #         entry_point: ["String"],
    #         command: ["String"],
    #         environment: [
    #           {
    #             name: "String",
    #             value: "String"
    #           }
    #         ],
    #         environment_files: [
    #           {
    #             value: "String", # required
    #             type: "s3" # One of: ["s3"], # required
    #           }
    #         ],
    #         mount_points: [
    #           {
    #             source_volume: "String",
    #             container_path: "String",
    #             read_only: false
    #           }
    #         ],
    #         volumes_from: [
    #           {
    #             source_container: "String",
    #             read_only: false
    #           }
    #         ],
    #         linux_parameters: {
    #           capabilities: {
    #             add: ["String"],
    #             drop: ["String"]
    #           },
    #           devices: [
    #             {
    #               host_path: "String", # required
    #               container_path: "String",
    #               permissions: ["read" # One of: ["read", "write", "mknod"]]
    #             }
    #           ],
    #           init_process_enabled: false,
    #           shared_memory_size: 1,
    #           tmpfs: [
    #             {
    #               container_path: "String", # required
    #               size: 1, # required
    #               mount_options: ["String"]
    #             }
    #           ],
    #           max_swap: 1,
    #           swappiness: 1
    #         },
    #         secrets: [
    #           {
    #             name: "String", # required
    #             value_from: "String", # required
    #           }
    #         ],
    #         depends_on: [
    #           {
    #             container_name: "String", # required
    #             condition: "START" # One of: ["START", "COMPLETE", "SUCCESS", "HEALTHY"], # required
    #           }
    #         ],
    #         start_timeout: 1,
    #         stop_timeout: 1,
    #         version_consistency: "enabled" # One of: ["enabled", "disabled"],
    #         hostname: "String",
    #         user: "String",
    #         working_directory: "String",
    #         disable_networking: false,
    #         privileged: false,
    #         readonly_root_filesystem: false,
    #         dns_servers: ["String"],
    #         dns_search_domains: ["String"],
    #         extra_hosts: [
    #           {
    #             hostname: "String", # required
    #             ip_address: "String", # required
    #           }
    #         ],
    #         docker_security_options: ["String"],
    #         interactive: false,
    #         pseudo_terminal: false,
    #         docker_labels: {
    #           "String" => "String"
    #         },
    #         ulimits: [
    #           {
    #             name: "core" # One of: ["core", "cpu", "data", "fsize", "locks", "memlock", "msgqueue", "nice", "nofile", "nproc", "rss", "rtprio", "rttime", "sigpending", "stack"], # required
    #             soft_limit: 1, # required
    #             hard_limit: 1, # required
    #           }
    #         ],
    #         log_configuration: {
    #           log_driver: "json-file" # One of: ["json-file", "syslog", "journald", "gelf", "fluentd", "awslogs", "splunk", "awsfirelens"], # required
    #           options: {
    #             "String" => "String"
    #           },
    #           secret_options: [
    #             {
    #               name: "String", # required
    #               value_from: "String", # required
    #             }
    #           ]
    #         },
    #         health_check: {
    #           command: ["String"], # required
    #           interval: 1,
    #           timeout: 1,
    #           retries: 1,
    #           start_period: 1
    #         },
    #         system_controls: [
    #           {
    #             namespace: "String",
    #             value: "String"
    #           }
    #         ],
    #         resource_requirements: [
    #           {
    #             value: "String", # required
    #             type: "GPU" # One of: ["GPU", "InferenceAccelerator"], # required
    #           }
    #         ],
    #         firelens_configuration: {
    #           type: "fluentd" # One of: ["fluentd", "fluentbit"], # required
    #           options: {
    #             "String" => "String"
    #           }
    #         },
    #         credential_specs: ["String"]
    #       }
    #     ],
    #     volumes: [
    #       {
    #         name: "String",
    #         host: {
    #           source_path: "String"
    #         },
    #         docker_volume_configuration: {
    #           scope: "task" # One of: ["task", "shared"],
    #           autoprovision: false,
    #           driver: "String",
    #           driver_opts: {
    #             "String" => "String"
    #           },
    #           labels: {
    #             "String" => "String"
    #           }
    #         },
    #         efs_volume_configuration: {
    #           file_system_id: "String", # required
    #           root_directory: "String",
    #           transit_encryption: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #           transit_encryption_port: 1,
    #           authorization_config: {
    #             access_point_id: "String",
    #             iam: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #           }
    #         },
    #         fsx_windows_file_server_volume_configuration: {
    #           file_system_id: "String", # required
    #           root_directory: "String", # required
    #           authorization_config: { # required
    #             credentials_parameter: "String", # required
    #             domain: "String", # required
    #           }
    #         },
    #         configured_at_launch: false
    #       }
    #     ],
    #     placement_constraints: [
    #       {
    #         type: "memberOf" # One of: ["memberOf"],
    #         expression: "String"
    #       }
    #     ],
    #     requires_compatibilities: ["EC2" # One of: ["EC2", "FARGATE", "EXTERNAL", "MANAGED_INSTANCES"]],
    #     cpu: "String",
    #     memory: "String",
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue"
    #       }
    #     ],
    #     pid_mode: "host" # One of: ["host", "task"],
    #     ipc_mode: "host" # One of: ["host", "task", "none"],
    #     proxy_configuration: {
    #       type: "APPMESH" # One of: ["APPMESH"],
    #       container_name: "String", # required
    #       properties: [
    #         {
    #           name: "String",
    #           value: "String"
    #         }
    #       ]
    #     },
    #     inference_accelerators: [
    #       {
    #         device_name: "String", # required
    #         device_type: "String", # required
    #       }
    #     ],
    #     ephemeral_storage: {
    #       size_in_gi_b: 1, # required
    #     },
    #     runtime_platform: {
    #       cpu_architecture: "X86_64" # One of: ["X86_64", "ARM64"],
    #       operating_system_family: "WINDOWS_SERVER_2019_FULL" # One of: ["WINDOWS_SERVER_2019_FULL", "WINDOWS_SERVER_2019_CORE", "WINDOWS_SERVER_2016_FULL", "WINDOWS_SERVER_2004_CORE", "WINDOWS_SERVER_2022_CORE", "WINDOWS_SERVER_2022_FULL", "WINDOWS_SERVER_2025_CORE", "WINDOWS_SERVER_2025_FULL", "WINDOWS_SERVER_20H2_CORE", "LINUX"]
    #     },
    #     enable_fault_injection: false
    #   }
    #   options = {}
    #   response = client.register_task_definition(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     task_definition: {
    #       task_definition_arn: "String",
    #       container_definitions: [
    #         {
    #           name: "String",
    #           image: "String",
    #           repository_credentials: {
    #             credentials_parameter: "String", # required
    #           },
    #           cpu: 1,
    #           memory: 1,
    #           memory_reservation: 1,
    #           links: ["String"],
    #           port_mappings: [
    #             {
    #               container_port: 1,
    #               host_port: 1,
    #               protocol: "tcp" # One of: ["tcp", "udp"],
    #               name: "String",
    #               app_protocol: "http" # One of: ["http", "http2", "grpc"],
    #               container_port_range: "String"
    #             }
    #           ],
    #           essential: false,
    #           restart_policy: {
    #             enabled: false, # required
    #             ignored_exit_codes: [1],
    #             restart_attempt_period: 1
    #           },
    #           entry_point: ["String"],
    #           command: ["String"],
    #           environment: [
    #             {
    #               name: "String",
    #               value: "String"
    #             }
    #           ],
    #           environment_files: [
    #             {
    #               value: "String", # required
    #               type: "s3" # One of: ["s3"], # required
    #             }
    #           ],
    #           mount_points: [
    #             {
    #               source_volume: "String",
    #               container_path: "String",
    #               read_only: false
    #             }
    #           ],
    #           volumes_from: [
    #             {
    #               source_container: "String",
    #               read_only: false
    #             }
    #           ],
    #           linux_parameters: {
    #             capabilities: {
    #               add: ["String"],
    #               drop: ["String"]
    #             },
    #             devices: [
    #               {
    #                 host_path: "String", # required
    #                 container_path: "String",
    #                 permissions: ["read" # One of: ["read", "write", "mknod"]]
    #               }
    #             ],
    #             init_process_enabled: false,
    #             shared_memory_size: 1,
    #             tmpfs: [
    #               {
    #                 container_path: "String", # required
    #                 size: 1, # required
    #                 mount_options: ["String"]
    #               }
    #             ],
    #             max_swap: 1,
    #             swappiness: 1
    #           },
    #           secrets: [
    #             {
    #               name: "String", # required
    #               value_from: "String", # required
    #             }
    #           ],
    #           depends_on: [
    #             {
    #               container_name: "String", # required
    #               condition: "START" # One of: ["START", "COMPLETE", "SUCCESS", "HEALTHY"], # required
    #             }
    #           ],
    #           start_timeout: 1,
    #           stop_timeout: 1,
    #           version_consistency: "enabled" # One of: ["enabled", "disabled"],
    #           hostname: "String",
    #           user: "String",
    #           working_directory: "String",
    #           disable_networking: false,
    #           privileged: false,
    #           readonly_root_filesystem: false,
    #           dns_servers: ["String"],
    #           dns_search_domains: ["String"],
    #           extra_hosts: [
    #             {
    #               hostname: "String", # required
    #               ip_address: "String", # required
    #             }
    #           ],
    #           docker_security_options: ["String"],
    #           interactive: false,
    #           pseudo_terminal: false,
    #           docker_labels: {
    #             "String" => "String"
    #           },
    #           ulimits: [
    #             {
    #               name: "core" # One of: ["core", "cpu", "data", "fsize", "locks", "memlock", "msgqueue", "nice", "nofile", "nproc", "rss", "rtprio", "rttime", "sigpending", "stack"], # required
    #               soft_limit: 1, # required
    #               hard_limit: 1, # required
    #             }
    #           ],
    #           log_configuration: {
    #             log_driver: "json-file" # One of: ["json-file", "syslog", "journald", "gelf", "fluentd", "awslogs", "splunk", "awsfirelens"], # required
    #             options: {
    #               "String" => "String"
    #             },
    #             secret_options: [
    #               {
    #                 name: "String", # required
    #                 value_from: "String", # required
    #               }
    #             ]
    #           },
    #           health_check: {
    #             command: ["String"], # required
    #             interval: 1,
    #             timeout: 1,
    #             retries: 1,
    #             start_period: 1
    #           },
    #           system_controls: [
    #             {
    #               namespace: "String",
    #               value: "String"
    #             }
    #           ],
    #           resource_requirements: [
    #             {
    #               value: "String", # required
    #               type: "GPU" # One of: ["GPU", "InferenceAccelerator"], # required
    #             }
    #           ],
    #           firelens_configuration: {
    #             type: "fluentd" # One of: ["fluentd", "fluentbit"], # required
    #             options: {
    #               "String" => "String"
    #             }
    #           },
    #           credential_specs: ["String"]
    #         }
    #       ],
    #       family: "String",
    #       task_role_arn: "String",
    #       execution_role_arn: "String",
    #       network_mode: "bridge" # One of: ["bridge", "host", "awsvpc", "none"],
    #       revision: 1,
    #       volumes: [
    #         {
    #           name: "String",
    #           host: {
    #             source_path: "String"
    #           },
    #           docker_volume_configuration: {
    #             scope: "task" # One of: ["task", "shared"],
    #             autoprovision: false,
    #             driver: "String",
    #             driver_opts: {
    #               "String" => "String"
    #             },
    #             labels: {
    #               "String" => "String"
    #             }
    #           },
    #           efs_volume_configuration: {
    #             file_system_id: "String", # required
    #             root_directory: "String",
    #             transit_encryption: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #             transit_encryption_port: 1,
    #             authorization_config: {
    #               access_point_id: "String",
    #               iam: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #             }
    #           },
    #           fsx_windows_file_server_volume_configuration: {
    #             file_system_id: "String", # required
    #             root_directory: "String", # required
    #             authorization_config: { # required
    #               credentials_parameter: "String", # required
    #               domain: "String", # required
    #             }
    #           },
    #           configured_at_launch: false
    #         }
    #       ],
    #       status: "ACTIVE" # One of: ["ACTIVE", "INACTIVE", "DELETE_IN_PROGRESS"],
    #       requires_attributes: [
    #         {
    #           name: "String", # required
    #           value: "String",
    #           target_type: "container-instance" # One of: ["container-instance"],
    #           target_id: "String"
    #         }
    #       ],
    #       placement_constraints: [
    #         {
    #           type: "memberOf" # One of: ["memberOf"],
    #           expression: "String"
    #         }
    #       ],
    #       compatibilities: ["EC2" # One of: ["EC2", "FARGATE", "EXTERNAL", "MANAGED_INSTANCES"]],
    #       runtime_platform: {
    #         cpu_architecture: "X86_64" # One of: ["X86_64", "ARM64"],
    #         operating_system_family: "WINDOWS_SERVER_2019_FULL" # One of: ["WINDOWS_SERVER_2019_FULL", "WINDOWS_SERVER_2019_CORE", "WINDOWS_SERVER_2016_FULL", "WINDOWS_SERVER_2004_CORE", "WINDOWS_SERVER_2022_CORE", "WINDOWS_SERVER_2022_FULL", "WINDOWS_SERVER_2025_CORE", "WINDOWS_SERVER_2025_FULL", "WINDOWS_SERVER_20H2_CORE", "LINUX"]
    #       },
    #       requires_compatibilities: ["EC2" # One of: ["EC2", "FARGATE", "EXTERNAL", "MANAGED_INSTANCES"]],
    #       cpu: "String",
    #       memory: "String",
    #       inference_accelerators: [
    #         {
    #           device_name: "String", # required
    #           device_type: "String", # required
    #         }
    #       ],
    #       pid_mode: "host" # One of: ["host", "task"],
    #       ipc_mode: "host" # One of: ["host", "task", "none"],
    #       proxy_configuration: {
    #         type: "APPMESH" # One of: ["APPMESH"],
    #         container_name: "String", # required
    #         properties: [
    #           {
    #             name: "String",
    #             value: "String"
    #           }
    #         ]
    #       },
    #       registered_at: Time.now,
    #       deregistered_at: Time.now,
    #       registered_by: "String",
    #       ephemeral_storage: {
    #         size_in_gi_b: 1, # required
    #       },
    #       enable_fault_injection: false
    #     },
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue"
    #       }
    #     ]
    #   }
    # @return [Types::RegisterTaskDefinitionResponse]
    def register_task_definition(params = {}, options = {})
      request = build_request(:register_task_definition, params)
      request.send_request(options)
    end

    # <p>Starts a new task using the specified task definition.</p>
    #          <note>
    #             <p>On March 21, 2024, a change was made to resolve the task definition revision before authorization. When a task definition revision is not specified, authorization will occur using the latest revision of a task definition.</p>
    #          </note>
    #          <note>
    #             <p>Amazon Elastic Inference (EI) is no longer available to customers.</p>
    #          </note>
    #          <p>You can allow Amazon ECS to place tasks for you, or you can customize how Amazon ECS places
    # 			tasks using placement constraints and placement strategies. For more information, see
    # 				<a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/scheduling_tasks.html">Scheduling Tasks</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #          <p>Alternatively, you can use <code>StartTask</code> to use your own scheduler or place
    # 			tasks manually on specific container instances.</p>
    #          <p>You can attach Amazon EBS volumes to Amazon ECS tasks by configuring the volume when creating or
    # 			updating a service. For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ebs-volumes.html#ebs-volume-types">Amazon EBS volumes</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #          <p>The Amazon ECS API follows an eventual consistency model. This is because of the
    # 			distributed nature of the system supporting the API. This means that the result of an
    # 			API command you run that affects your Amazon ECS resources might not be immediately visible
    # 			to all subsequent commands you run. Keep this in mind when you carry out an API command
    # 			that immediately follows a previous API command.</p>
    #          <p>To manage eventual consistency, you can do the following:</p>
    #          <ul>
    #             <li>
    #                <p>Confirm the state of the resource before you run a command to modify it. Run
    # 					the DescribeTasks command using an exponential backoff algorithm to ensure that
    # 					you allow enough time for the previous command to propagate through the system.
    # 					To do this, run the DescribeTasks command repeatedly, starting with a couple of
    # 					seconds of wait time and increasing gradually up to five minutes of wait
    # 					time.</p>
    #             </li>
    #             <li>
    #                <p>Add wait time between subsequent commands, even if the DescribeTasks command
    # 					returns an accurate response. Apply an exponential backoff algorithm starting
    # 					with a couple of seconds of wait time, and increase gradually up to about five
    # 					minutes of wait time.</p>
    #             </li>
    #          </ul>
    #          <p>If you get a <code>ConflictException</code> error, the <code>RunTask</code> request could
    # 			not be processed due to conflicts. The provided <code>clientToken</code> is already in
    # 			use with a different <code>RunTask</code> request. The <code>resourceIds</code> are the
    # 			existing task ARNs which are already associated with the <code>clientToken</code>. </p>
    #          <p>To fix this issue:</p>
    #          <ul>
    #             <li>
    #                <p>Run <code>RunTask</code> with a unique <code>clientToken</code>.</p>
    #             </li>
    #             <li>
    #                <p>Run <code>RunTask</code> with the <code>clientToken</code> and the original
    # 					set of parameters</p>
    #             </li>
    #          </ul>
    #          <p>If you get a <code>ClientException</code>error, the <code>RunTask</code> could not be processed because you use managed
    # 					scaling and there is a capacity error because the quota of tasks in the
    # 					<code>PROVISIONING</code> per cluster has been reached. For information
    # 					about the service quotas, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-quotas.html">Amazon ECS
    # 						service quotas</a>.</p>
    # @param [Hash, Types::RunTaskRequest] params
    # @option params [Array<Types::CapacityProviderStrategyItem>] :capacity_provider_strategy
    #   <p>The capacity provider strategy to use for the task.</p>
    #            <p>If a <code>capacityProviderStrategy</code> is specified, the <code>launchType</code>
    #   			parameter must be omitted. If no <code>capacityProviderStrategy</code> or
    #   				<code>launchType</code> is specified, the
    #   				<code>defaultCapacityProviderStrategy</code> for the cluster is used.</p>
    #            <p>When you use cluster auto scaling, you must specify
    #   				<code>capacityProviderStrategy</code> and not <code>launchType</code>. </p>
    #            <p>A capacity provider strategy can contain a maximum of 20 capacity providers.</p>
    # @option params [String] :cluster
    #   <p>The short name or full Amazon Resource Name (ARN) of the cluster to run your task on.
    #   			If you do not specify a cluster, the default cluster is assumed.</p>
    #            <p>Each account receives a default cluster the first time you use the service, but you
    #   			may also create other clusters.</p>
    # @option params [Integer] :count
    #   <p>The number of instantiations of the specified task to place on your cluster. You can
    #   			specify up to 10 tasks for each call.</p>
    # @option params [Boolean] :enable_ecs_managed_tags
    #   <p>Specifies whether to use Amazon ECS managed tags for the task. For more information, see
    #   				<a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-using-tags.html">Tagging Your Amazon ECS
    #   				Resources</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    # @option params [Boolean] :enable_execute_command
    #   <p>Determines whether to use the execute command functionality for the containers in this
    #   			task. If <code>true</code>, this enables execute command functionality on all containers
    #   			in the task.</p>
    #            <p>If <code>true</code>, then the task definition must have a task role, or you must
    #   			provide one as an override.</p>
    # @option params [String] :group
    #   <p>The name of the task group to associate with the task. The default value is the family
    #   			name of the task definition (for example, <code>family:my-family-name</code>).</p>
    # @option params [String] :launch_type
    #   <p>The infrastructure to run your standalone task on. For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/launch_types.html">Amazon ECS
    #   				launch types</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #            <p>The <code>FARGATE</code> launch type runs your tasks on Fargate On-Demand
    #   			infrastructure.</p>
    #            <note>
    #               <p>Fargate Spot infrastructure is available for use but a capacity provider
    #   				strategy must be used. For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/fargate-capacity-providers.html">Fargate capacity providers</a> in the
    #   					<i>Amazon ECS Developer Guide</i>.</p>
    #            </note>
    #            <p>The <code>EC2</code> launch type runs your tasks on Amazon EC2 instances registered to your
    #   			cluster.</p>
    #            <p>The <code>EXTERNAL</code> launch type runs your tasks on your on-premises server or
    #   			virtual machine (VM) capacity registered to your cluster.</p>
    #            <p>A task can use either a launch type or a capacity provider strategy. If a
    #   				<code>launchType</code> is specified, the <code>capacityProviderStrategy</code>
    #   			parameter must be omitted.</p>
    #            <p>When you use cluster auto scaling, you must specify
    #   				<code>capacityProviderStrategy</code> and not <code>launchType</code>. </p>
    # @option params [Types::NetworkConfiguration] :network_configuration
    #   <p>The network configuration for the task. This parameter is required for task
    #   			definitions that use the <code>awsvpc</code> network mode to receive their own elastic
    #   			network interface, and it isn't supported for other network modes. For more information,
    #   			see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-networking.html">Task networking</a>
    #   			in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    # @option params [Types::TaskOverride] :overrides
    #   <p>A list of container overrides in JSON format that specify the name of a container in
    #   			the specified task definition and the overrides it should receive. You can override the
    #   			default command for a container (that's specified in the task definition or Docker
    #   			image) with a <code>command</code> override. You can also override existing environment
    #   			variables (that are specified in the task definition or Docker image) on a container or
    #   			add new environment variables to it with an <code>environment</code> override.</p>
    #            <p>A total of 8192 characters are allowed for overrides. This limit includes the JSON
    #   			formatting characters of the override structure.</p>
    # @option params [Array<Types::PlacementConstraint>] :placement_constraints
    #   <p>An array of placement constraint objects to use for the task. You can specify up to 10
    #   			constraints for each task (including constraints in the task definition and those
    #   			specified at runtime).</p>
    # @option params [Array<Types::PlacementStrategy>] :placement_strategy
    #   <p>The placement strategy objects to use for the task. You can specify a maximum of 5
    #   			strategy rules for each task.</p>
    # @option params [String] :platform_version
    #   <p>The platform version the task uses. A platform version is only specified for tasks
    #   			hosted on Fargate. If one isn't specified, the <code>LATEST</code>
    #   			platform version is used. For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/platform_versions.html">Fargate platform
    #   				versions</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    # @option params [String] :propagate_tags
    #   <p>Specifies whether to propagate the tags from the task definition to the task. If no
    #   			value is specified, the tags aren't propagated. Tags can only be propagated to the task
    #   			during task creation. To add tags to a task after task creation, use the<a href="https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_TagResource.html">TagResource</a> API action.</p>
    #            <note>
    #               <p>An error will be received if you specify the <code>SERVICE</code> option when
    #   				running a task.</p>
    #            </note>
    # @option params [String] :reference_id
    #   <p>This parameter is only used by Amazon ECS. It is not intended for use by customers.</p>
    # @option params [String] :started_by
    #   <p>An optional tag specified when a task is started. For example, if you automatically
    #   			trigger a task to run a batch process job, you could apply a unique identifier for that
    #   			job to your task with the <code>startedBy</code> parameter. You can then identify which
    #   			tasks belong to that job by filtering the results of a <a href="https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_ListTasks.html">ListTasks</a> call with
    #   			the <code>startedBy</code> value. Up to 128 letters (uppercase and lowercase), numbers,
    #   			hyphens (-), forward slash (/), and underscores (_) are allowed.</p>
    #            <p>If a task is started by an Amazon ECS service, then the <code>startedBy</code> parameter
    #   			contains the deployment ID of the service that starts it.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The metadata that you apply to the task to help you categorize and organize them. Each
    #   			tag consists of a key and an optional value, both of which you define.</p>
    #            <p>The following basic restrictions apply to tags:</p>
    #            <ul>
    #               <li>
    #                  <p>Maximum number of tags per resource - 50</p>
    #               </li>
    #               <li>
    #                  <p>For each resource, each tag key must be unique, and each tag key can have only
    #                       one value.</p>
    #               </li>
    #               <li>
    #                  <p>Maximum key length - 128 Unicode characters in UTF-8</p>
    #               </li>
    #               <li>
    #                  <p>Maximum value length - 256 Unicode characters in UTF-8</p>
    #               </li>
    #               <li>
    #                  <p>If your tagging schema is used across multiple services and resources,
    #                       remember that other services may have restrictions on allowed characters.
    #                       Generally allowed characters are: letters, numbers, and spaces representable in
    #                       UTF-8, and the following characters: + - = . _ : / @.</p>
    #               </li>
    #               <li>
    #                  <p>Tag keys and values are case-sensitive.</p>
    #               </li>
    #               <li>
    #                  <p>Do not use <code>aws:</code>, <code>AWS:</code>, or any upper or lowercase
    #                       combination of such as a prefix for either keys or values as it is reserved for
    #                       Amazon Web Services use. You cannot edit or delete tag keys or values with this prefix. Tags with
    #                       this prefix do not count against your tags per resource limit.</p>
    #               </li>
    #            </ul>
    # @option params [String] :task_definition
    #   <p>The <code>family</code> and <code>revision</code> (<code>family:revision</code>) or
    #   			full ARN of the task definition to run. If a <code>revision</code> isn't specified,
    #   			the latest <code>ACTIVE</code> revision is used.</p>
    #            <p>The full ARN value must match the value that you specified as the
    #   				<code>Resource</code> of the principal's permissions policy.</p>
    #            <p>When you specify a task definition, you must either specify a specific revision, or
    #   			all revisions in the ARN.</p>
    #            <p>To specify a specific revision, include the revision number in the ARN. For example,
    #   			to specify revision 2, use
    #   				<code>arn:aws:ecs:us-east-1:111122223333:task-definition/TaskFamilyName:2</code>.</p>
    #            <p>To specify all revisions, use the wildcard (*) in the ARN. For example, to specify
    #   			all revisions, use
    #   				<code>arn:aws:ecs:us-east-1:111122223333:task-definition/TaskFamilyName:*</code>.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/security_iam_service-with-iam.html#security_iam_service-with-iam-id-based-policies-resources">Policy Resources for Amazon ECS</a> in the Amazon Elastic Container Service Developer Guide.</p>
    # @option params [String] :client_token
    #   <p>An identifier that you provide to ensure the idempotency of the request. It must be
    #   			unique and is case sensitive. Up to 64 characters are allowed. The valid characters are
    #   			characters in the range of 33-126, inclusive. For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/APIReference/ECS_Idempotency.html">Ensuring idempotency</a>.</p>
    # @option params [Array<Types::TaskVolumeConfiguration>] :volume_configurations
    #   <p>The details of the volume that was <code>configuredAtLaunch</code>. You can configure
    #   			the size, volumeType, IOPS, throughput, snapshot and encryption in <a href="https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_TaskManagedEBSVolumeConfiguration.html">TaskManagedEBSVolumeConfiguration</a>. The <code>name</code> of the volume must
    #   			match the <code>name</code> from the task definition.</p>
    # @example To run a task on your default cluster
    #   # This example runs the specified task definition on your default cluster.
    #   params = {
    #     cluster: "default",
    #     task_definition: "sleep360:1"
    #   }
    #   options = {}
    #   response = client.run_task(params, options)
    #   response.to_h #=>
    #   {
    #     tasks: [
    #       {
    #         task_arn: "arn:aws:ecs:us-east-1:<aws_account_id>:task/default/a9f21ea7-c9f5-44b1-b8e6-b31f50ed33c0",
    #         overrides: {
    #           container_overrides: [
    #             {
    #               name: "sleep"
    #             }
    #           ]
    #         },
    #         last_status: "PENDING",
    #         container_instance_arn: "arn:aws:ecs:us-east-1:<aws_account_id>:container-instance/default/ffe3d344-77e2-476c-a4d0-bf560ad50acb",
    #         desired_status: "RUNNING",
    #         task_definition_arn: "arn:aws:ecs:us-east-1:<aws_account_id>:task-definition/sleep360:1",
    #         containers: [
    #           {
    #             container_arn: "arn:aws:ecs:us-east-1:<aws_account_id>:container/default/58591c8e-be29-4ddf-95aa-ee459d4c59fd",
    #             task_arn: "arn:aws:ecs:us-east-1:<aws_account_id>:task/default/a9f21ea7-c9f5-44b1-b8e6-b31f50ed33c0",
    #             last_status: "PENDING",
    #             name: "sleep"
    #           }
    #         ]
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     capacity_provider_strategy: [
    #       {
    #         capacity_provider: "String", # required
    #         weight: 1,
    #         base: 1
    #       }
    #     ],
    #     cluster: "String",
    #     count: 1,
    #     enable_ecs_managed_tags: false,
    #     enable_execute_command: false,
    #     group: "String",
    #     launch_type: "EC2" # One of: ["EC2", "FARGATE", "EXTERNAL", "MANAGED_INSTANCES"],
    #     network_configuration: {
    #       awsvpc_configuration: {
    #         subnets: ["String"], # required
    #         security_groups: ["String"],
    #         assign_public_ip: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #       }
    #     },
    #     overrides: {
    #       container_overrides: [
    #         {
    #           name: "String",
    #           command: ["String"],
    #           environment: [
    #             {
    #               name: "String",
    #               value: "String"
    #             }
    #           ],
    #           environment_files: [
    #             {
    #               value: "String", # required
    #               type: "s3" # One of: ["s3"], # required
    #             }
    #           ],
    #           cpu: 1,
    #           memory: 1,
    #           memory_reservation: 1,
    #           resource_requirements: [
    #             {
    #               value: "String", # required
    #               type: "GPU" # One of: ["GPU", "InferenceAccelerator"], # required
    #             }
    #           ]
    #         }
    #       ],
    #       cpu: "String",
    #       inference_accelerator_overrides: [
    #         {
    #           device_name: "String",
    #           device_type: "String"
    #         }
    #       ],
    #       execution_role_arn: "String",
    #       memory: "String",
    #       task_role_arn: "String",
    #       ephemeral_storage: {
    #         size_in_gi_b: 1, # required
    #       }
    #     },
    #     placement_constraints: [
    #       {
    #         type: "distinctInstance" # One of: ["distinctInstance", "memberOf"],
    #         expression: "String"
    #       }
    #     ],
    #     placement_strategy: [
    #       {
    #         type: "random" # One of: ["random", "spread", "binpack"],
    #         field: "String"
    #       }
    #     ],
    #     platform_version: "String",
    #     propagate_tags: "TASK_DEFINITION" # One of: ["TASK_DEFINITION", "SERVICE", "NONE"],
    #     reference_id: "String",
    #     started_by: "String",
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue"
    #       }
    #     ],
    #     task_definition: "String", # required
    #     client_token: "String",
    #     volume_configurations: [
    #       {
    #         name: "ECSVolumeName", # required
    #         managed_ebs_volume: {
    #           encrypted: false,
    #           kms_key_id: "EBSKMSKeyId",
    #           volume_type: "EBSVolumeType",
    #           size_in_gi_b: 1,
    #           snapshot_id: "EBSSnapshotId",
    #           volume_initialization_rate: 1,
    #           iops: 1,
    #           throughput: 1,
    #           tag_specifications: [
    #             {
    #               resource_type: "volume" # One of: ["volume"], # required
    #               tags: [
    #                 {
    #                   key: "TagKey",
    #                   value: "TagValue"
    #                 }
    #               ],
    #               propagate_tags: "TASK_DEFINITION" # One of: ["TASK_DEFINITION", "SERVICE", "NONE"]
    #             }
    #           ],
    #           role_arn: "IAMRoleArn", # required
    #           termination_policy: {
    #             delete_on_termination: false, # required
    #           },
    #           filesystem_type: "ext3" # One of: ["ext3", "ext4", "xfs", "ntfs"]
    #         }
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.run_task(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tasks: [
    #       {
    #         attachments: [
    #           {
    #             id: "String",
    #             type: "String",
    #             status: "String",
    #             details: [
    #               {
    #                 name: "String",
    #                 value: "String"
    #               }
    #             ]
    #           }
    #         ],
    #         attributes: [
    #           {
    #             name: "String", # required
    #             value: "String",
    #             target_type: "container-instance" # One of: ["container-instance"],
    #             target_id: "String"
    #           }
    #         ],
    #         availability_zone: "String",
    #         capacity_provider_name: "String",
    #         cluster_arn: "String",
    #         connectivity: "CONNECTED" # One of: ["CONNECTED", "DISCONNECTED"],
    #         connectivity_at: Time.now,
    #         container_instance_arn: "String",
    #         containers: [
    #           {
    #             container_arn: "String",
    #             task_arn: "String",
    #             name: "String",
    #             image: "String",
    #             image_digest: "String",
    #             runtime_id: "String",
    #             last_status: "String",
    #             exit_code: 1,
    #             reason: "String",
    #             network_bindings: [
    #               {
    #                 bind_ip: "String",
    #                 container_port: 1,
    #                 host_port: 1,
    #                 protocol: "tcp" # One of: ["tcp", "udp"],
    #                 container_port_range: "String",
    #                 host_port_range: "String"
    #               }
    #             ],
    #             network_interfaces: [
    #               {
    #                 attachment_id: "String",
    #                 private_ipv4_address: "String",
    #                 ipv6_address: "String"
    #               }
    #             ],
    #             health_status: "HEALTHY" # One of: ["HEALTHY", "UNHEALTHY", "UNKNOWN"],
    #             managed_agents: [
    #               {
    #                 last_started_at: Time.now,
    #                 name: "ExecuteCommandAgent" # One of: ["ExecuteCommandAgent"],
    #                 reason: "String",
    #                 last_status: "String"
    #               }
    #             ],
    #             cpu: "String",
    #             memory: "String",
    #             memory_reservation: "String",
    #             gpu_ids: ["String"]
    #           }
    #         ],
    #         cpu: "String",
    #         created_at: Time.now,
    #         desired_status: "String",
    #         enable_execute_command: false,
    #         execution_stopped_at: Time.now,
    #         group: "String",
    #         health_status: "HEALTHY" # One of: ["HEALTHY", "UNHEALTHY", "UNKNOWN"],
    #         inference_accelerators: [
    #           {
    #             device_name: "String", # required
    #             device_type: "String", # required
    #           }
    #         ],
    #         last_status: "String",
    #         launch_type: "EC2" # One of: ["EC2", "FARGATE", "EXTERNAL", "MANAGED_INSTANCES"],
    #         memory: "String",
    #         overrides: {
    #           container_overrides: [
    #             {
    #               name: "String",
    #               command: ["String"],
    #               environment: [
    #                 {
    #                   name: "String",
    #                   value: "String"
    #                 }
    #               ],
    #               environment_files: [
    #                 {
    #                   value: "String", # required
    #                   type: "s3" # One of: ["s3"], # required
    #                 }
    #               ],
    #               cpu: 1,
    #               memory: 1,
    #               memory_reservation: 1,
    #               resource_requirements: [
    #                 {
    #                   value: "String", # required
    #                   type: "GPU" # One of: ["GPU", "InferenceAccelerator"], # required
    #                 }
    #               ]
    #             }
    #           ],
    #           cpu: "String",
    #           inference_accelerator_overrides: [
    #             {
    #               device_name: "String",
    #               device_type: "String"
    #             }
    #           ],
    #           execution_role_arn: "String",
    #           memory: "String",
    #           task_role_arn: "String",
    #           ephemeral_storage: {
    #             size_in_gi_b: 1, # required
    #           }
    #         },
    #         platform_version: "String",
    #         platform_family: "String",
    #         pull_started_at: Time.now,
    #         pull_stopped_at: Time.now,
    #         started_at: Time.now,
    #         started_by: "String",
    #         stop_code: "TaskFailedToStart" # One of: ["TaskFailedToStart", "EssentialContainerExited", "UserInitiated", "ServiceSchedulerInitiated", "SpotInterruption", "TerminationNotice"],
    #         stopped_at: Time.now,
    #         stopped_reason: "String",
    #         stopping_at: Time.now,
    #         tags: [
    #           {
    #             key: "TagKey",
    #             value: "TagValue"
    #           }
    #         ],
    #         task_arn: "String",
    #         task_definition_arn: "String",
    #         version: 1,
    #         ephemeral_storage: {
    #           size_in_gi_b: 1, # required
    #         },
    #         fargate_ephemeral_storage: {
    #           size_in_gi_b: 1,
    #           kms_key_id: "String"
    #         }
    #       }
    #     ],
    #     failures: [
    #       {
    #         arn: "String",
    #         reason: "String",
    #         detail: "String"
    #       }
    #     ]
    #   }
    # @return [Types::RunTaskResponse]
    def run_task(params = {}, options = {})
      request = build_request(:run_task, params)
      request.send_request(options)
    end

    # <p>Starts a new task from the specified task definition on the specified container
    # 			instance or instances.</p>
    #          <note>
    #             <p>On March 21, 2024, a change was made to resolve the task definition revision before authorization. When a task definition revision is not specified, authorization will occur using the latest revision of a task definition.</p>
    #          </note>
    #          <note>
    #             <p>Amazon Elastic Inference (EI) is no longer available to customers.</p>
    #          </note>
    #          <p>Alternatively, you can use<code>RunTask</code> to place tasks for you. For more
    # 			information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/scheduling_tasks.html">Scheduling Tasks</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #          <p>You can attach Amazon EBS volumes to Amazon ECS tasks by configuring the volume when creating or
    # 			updating a service. For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ebs-volumes.html#ebs-volume-types">Amazon EBS volumes</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    # @param [Hash, Types::StartTaskRequest] params
    # @option params [String] :cluster
    #   <p>The short name or full Amazon Resource Name (ARN) of the cluster where to start your task.
    #   			If you do not specify a cluster, the default cluster is assumed.</p>
    # @option params [Array<String>] :container_instances
    #   <p>The container instance IDs or full ARN entries for the container instances where you
    #   			would like to place your task. You can specify up to 10 container instances.</p>
    # @option params [Boolean] :enable_ecs_managed_tags
    #   <p>Specifies whether to use Amazon ECS managed tags for the task. For more information, see
    #   				<a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-using-tags.html">Tagging Your Amazon ECS
    #   				Resources</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    # @option params [Boolean] :enable_execute_command
    #   <p>Whether or not the execute command functionality is turned on for the task. If
    #   				<code>true</code>, this turns on the execute command functionality on all containers
    #   			in the task.</p>
    # @option params [String] :group
    #   <p>The name of the task group to associate with the task. The default value is the family
    #   			name of the task definition (for example, family:my-family-name).</p>
    # @option params [Types::NetworkConfiguration] :network_configuration
    #   <p>The VPC subnet and security group configuration for tasks that receive their own
    #               elastic network interface by using the <code>awsvpc</code> networking mode.</p>
    # @option params [Types::TaskOverride] :overrides
    #   <p>A list of container overrides in JSON format that specify the name of a container in
    #   			the specified task definition and the overrides it receives. You can override the
    #   			default command for a container (that's specified in the task definition or Docker
    #   			image) with a <code>command</code> override. You can also override existing environment
    #   			variables (that are specified in the task definition or Docker image) on a container or
    #   			add new environment variables to it with an <code>environment</code> override.</p>
    #            <note>
    #               <p>A total of 8192 characters are allowed for overrides. This limit includes the JSON
    #   				formatting characters of the override structure.</p>
    #            </note>
    # @option params [String] :propagate_tags
    #   <p>Specifies whether to propagate the tags from the task definition or the service to the
    #   			task. If no value is specified, the tags aren't propagated.</p>
    # @option params [String] :reference_id
    #   <p>This parameter is only used by Amazon ECS. It is not intended for use by customers.</p>
    # @option params [String] :started_by
    #   <p>An optional tag specified when a task is started. For example, if you automatically
    #   			trigger a task to run a batch process job, you could apply a unique identifier for that
    #   			job to your task with the <code>startedBy</code> parameter. You can then identify which
    #   			tasks belong to that job by filtering the results of a <a href="https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_ListTasks.html">ListTasks</a> call with
    #   			the <code>startedBy</code> value. Up to 36 letters (uppercase and lowercase), numbers,
    #   			hyphens (-), forward slash (/), and underscores (_) are allowed.</p>
    #            <p>If a task is started by an Amazon ECS service, the <code>startedBy</code> parameter
    #   			contains the deployment ID of the service that starts it.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The metadata that you apply to the task to help you categorize and organize them. Each
    #   			tag consists of a key and an optional value, both of which you define.</p>
    #            <p>The following basic restrictions apply to tags:</p>
    #            <ul>
    #               <li>
    #                  <p>Maximum number of tags per resource - 50</p>
    #               </li>
    #               <li>
    #                  <p>For each resource, each tag key must be unique, and each tag key can have only
    #                       one value.</p>
    #               </li>
    #               <li>
    #                  <p>Maximum key length - 128 Unicode characters in UTF-8</p>
    #               </li>
    #               <li>
    #                  <p>Maximum value length - 256 Unicode characters in UTF-8</p>
    #               </li>
    #               <li>
    #                  <p>If your tagging schema is used across multiple services and resources,
    #                       remember that other services may have restrictions on allowed characters.
    #                       Generally allowed characters are: letters, numbers, and spaces representable in
    #                       UTF-8, and the following characters: + - = . _ : / @.</p>
    #               </li>
    #               <li>
    #                  <p>Tag keys and values are case-sensitive.</p>
    #               </li>
    #               <li>
    #                  <p>Do not use <code>aws:</code>, <code>AWS:</code>, or any upper or lowercase
    #                       combination of such as a prefix for either keys or values as it is reserved for
    #                       Amazon Web Services use. You cannot edit or delete tag keys or values with this prefix. Tags with
    #                       this prefix do not count against your tags per resource limit.</p>
    #               </li>
    #            </ul>
    # @option params [String] :task_definition
    #   <p>The <code>family</code> and <code>revision</code> (<code>family:revision</code>) or
    #   			full ARN of the task definition to start. If a <code>revision</code> isn't specified,
    #   			the latest <code>ACTIVE</code> revision is used.</p>
    # @option params [Array<Types::TaskVolumeConfiguration>] :volume_configurations
    #   <p>The details of the volume that was <code>configuredAtLaunch</code>. You can configure
    #   			the size, volumeType, IOPS, throughput, snapshot and encryption in <a href="https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_TaskManagedEBSVolumeConfiguration.html">TaskManagedEBSVolumeConfiguration</a>. The <code>name</code> of the volume must
    #   			match the <code>name</code> from the task definition.</p>
    # @example To start a new task
    #   # This example starts a new task in the cluster "MyCluster" on the specified container instance using the latest revision of the "hello-world" task definition.
    #   params = {
    #     cluster: "MyCluster",
    #     container_instances: [
    #       "4c543eed-f83f-47da-b1d8-3d23f1da4c64"
    #     ],
    #     task_definition: "hello-world"
    #   }
    #   options = {}
    #   response = client.start_task(params, options)
    #   response.to_h #=>
    #   {
    #     tasks: [
    #       {
    #         cluster_arn: "arn:aws:ecs:us-east-1:012345678910:cluster/default",
    #         container_instance_arn: "arn:aws:ecs:us-east-1:012345678910:container-instance/default/4c543eed-f83f-47da-b1d8-3d23f1da4c64",
    #         containers: [
    #           {
    #             container_arn: "arn:aws:ecs:us-east-1:012345678910:container/e76594d4-27e1-4c74-98b5-46a6435eb769",
    #             last_status: "PENDING",
    #             name: "wordpress",
    #             task_arn: "arn:aws:ecs:us-east-1:012345678910:task/default/fdf2c302-468c-4e55-b884-5331d816e7fb"
    #           },
    #           {
    #             container_arn: "arn:aws:ecs:us-east-1:012345678910:container/default/b19106ea-4fa8-4f1d-9767-96922c82b070",
    #             last_status: "PENDING",
    #             name: "mysql",
    #             task_arn: "arn:aws:ecs:us-east-1:012345678910:task/default/fdf2c302-468c-4e55-b884-5331d816e7fb"
    #           }
    #         ],
    #         created_at: Time.parse(1479765460.842),
    #         desired_status: "RUNNING",
    #         last_status: "PENDING",
    #         overrides: {
    #           container_overrides: [
    #             {
    #               name: "wordpress"
    #             },
    #             {
    #               name: "mysql"
    #             }
    #           ]
    #         },
    #         task_arn: "arn:aws:ecs:us-east-1:012345678910:task/default/fdf2c302-468c-4e55-b884-5331d816e7fb",
    #         task_definition_arn: "arn:aws:ecs:us-east-1:012345678910:task-definition/hello_world:6",
    #         version: 1
    #       }
    #     ],
    #     failures: [
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster: "String",
    #     container_instances: ["String"], # required
    #     enable_ecs_managed_tags: false,
    #     enable_execute_command: false,
    #     group: "String",
    #     network_configuration: {
    #       awsvpc_configuration: {
    #         subnets: ["String"], # required
    #         security_groups: ["String"],
    #         assign_public_ip: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #       }
    #     },
    #     overrides: {
    #       container_overrides: [
    #         {
    #           name: "String",
    #           command: ["String"],
    #           environment: [
    #             {
    #               name: "String",
    #               value: "String"
    #             }
    #           ],
    #           environment_files: [
    #             {
    #               value: "String", # required
    #               type: "s3" # One of: ["s3"], # required
    #             }
    #           ],
    #           cpu: 1,
    #           memory: 1,
    #           memory_reservation: 1,
    #           resource_requirements: [
    #             {
    #               value: "String", # required
    #               type: "GPU" # One of: ["GPU", "InferenceAccelerator"], # required
    #             }
    #           ]
    #         }
    #       ],
    #       cpu: "String",
    #       inference_accelerator_overrides: [
    #         {
    #           device_name: "String",
    #           device_type: "String"
    #         }
    #       ],
    #       execution_role_arn: "String",
    #       memory: "String",
    #       task_role_arn: "String",
    #       ephemeral_storage: {
    #         size_in_gi_b: 1, # required
    #       }
    #     },
    #     propagate_tags: "TASK_DEFINITION" # One of: ["TASK_DEFINITION", "SERVICE", "NONE"],
    #     reference_id: "String",
    #     started_by: "String",
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue"
    #       }
    #     ],
    #     task_definition: "String", # required
    #     volume_configurations: [
    #       {
    #         name: "ECSVolumeName", # required
    #         managed_ebs_volume: {
    #           encrypted: false,
    #           kms_key_id: "EBSKMSKeyId",
    #           volume_type: "EBSVolumeType",
    #           size_in_gi_b: 1,
    #           snapshot_id: "EBSSnapshotId",
    #           volume_initialization_rate: 1,
    #           iops: 1,
    #           throughput: 1,
    #           tag_specifications: [
    #             {
    #               resource_type: "volume" # One of: ["volume"], # required
    #               tags: [
    #                 {
    #                   key: "TagKey",
    #                   value: "TagValue"
    #                 }
    #               ],
    #               propagate_tags: "TASK_DEFINITION" # One of: ["TASK_DEFINITION", "SERVICE", "NONE"]
    #             }
    #           ],
    #           role_arn: "IAMRoleArn", # required
    #           termination_policy: {
    #             delete_on_termination: false, # required
    #           },
    #           filesystem_type: "ext3" # One of: ["ext3", "ext4", "xfs", "ntfs"]
    #         }
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.start_task(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tasks: [
    #       {
    #         attachments: [
    #           {
    #             id: "String",
    #             type: "String",
    #             status: "String",
    #             details: [
    #               {
    #                 name: "String",
    #                 value: "String"
    #               }
    #             ]
    #           }
    #         ],
    #         attributes: [
    #           {
    #             name: "String", # required
    #             value: "String",
    #             target_type: "container-instance" # One of: ["container-instance"],
    #             target_id: "String"
    #           }
    #         ],
    #         availability_zone: "String",
    #         capacity_provider_name: "String",
    #         cluster_arn: "String",
    #         connectivity: "CONNECTED" # One of: ["CONNECTED", "DISCONNECTED"],
    #         connectivity_at: Time.now,
    #         container_instance_arn: "String",
    #         containers: [
    #           {
    #             container_arn: "String",
    #             task_arn: "String",
    #             name: "String",
    #             image: "String",
    #             image_digest: "String",
    #             runtime_id: "String",
    #             last_status: "String",
    #             exit_code: 1,
    #             reason: "String",
    #             network_bindings: [
    #               {
    #                 bind_ip: "String",
    #                 container_port: 1,
    #                 host_port: 1,
    #                 protocol: "tcp" # One of: ["tcp", "udp"],
    #                 container_port_range: "String",
    #                 host_port_range: "String"
    #               }
    #             ],
    #             network_interfaces: [
    #               {
    #                 attachment_id: "String",
    #                 private_ipv4_address: "String",
    #                 ipv6_address: "String"
    #               }
    #             ],
    #             health_status: "HEALTHY" # One of: ["HEALTHY", "UNHEALTHY", "UNKNOWN"],
    #             managed_agents: [
    #               {
    #                 last_started_at: Time.now,
    #                 name: "ExecuteCommandAgent" # One of: ["ExecuteCommandAgent"],
    #                 reason: "String",
    #                 last_status: "String"
    #               }
    #             ],
    #             cpu: "String",
    #             memory: "String",
    #             memory_reservation: "String",
    #             gpu_ids: ["String"]
    #           }
    #         ],
    #         cpu: "String",
    #         created_at: Time.now,
    #         desired_status: "String",
    #         enable_execute_command: false,
    #         execution_stopped_at: Time.now,
    #         group: "String",
    #         health_status: "HEALTHY" # One of: ["HEALTHY", "UNHEALTHY", "UNKNOWN"],
    #         inference_accelerators: [
    #           {
    #             device_name: "String", # required
    #             device_type: "String", # required
    #           }
    #         ],
    #         last_status: "String",
    #         launch_type: "EC2" # One of: ["EC2", "FARGATE", "EXTERNAL", "MANAGED_INSTANCES"],
    #         memory: "String",
    #         overrides: {
    #           container_overrides: [
    #             {
    #               name: "String",
    #               command: ["String"],
    #               environment: [
    #                 {
    #                   name: "String",
    #                   value: "String"
    #                 }
    #               ],
    #               environment_files: [
    #                 {
    #                   value: "String", # required
    #                   type: "s3" # One of: ["s3"], # required
    #                 }
    #               ],
    #               cpu: 1,
    #               memory: 1,
    #               memory_reservation: 1,
    #               resource_requirements: [
    #                 {
    #                   value: "String", # required
    #                   type: "GPU" # One of: ["GPU", "InferenceAccelerator"], # required
    #                 }
    #               ]
    #             }
    #           ],
    #           cpu: "String",
    #           inference_accelerator_overrides: [
    #             {
    #               device_name: "String",
    #               device_type: "String"
    #             }
    #           ],
    #           execution_role_arn: "String",
    #           memory: "String",
    #           task_role_arn: "String",
    #           ephemeral_storage: {
    #             size_in_gi_b: 1, # required
    #           }
    #         },
    #         platform_version: "String",
    #         platform_family: "String",
    #         pull_started_at: Time.now,
    #         pull_stopped_at: Time.now,
    #         started_at: Time.now,
    #         started_by: "String",
    #         stop_code: "TaskFailedToStart" # One of: ["TaskFailedToStart", "EssentialContainerExited", "UserInitiated", "ServiceSchedulerInitiated", "SpotInterruption", "TerminationNotice"],
    #         stopped_at: Time.now,
    #         stopped_reason: "String",
    #         stopping_at: Time.now,
    #         tags: [
    #           {
    #             key: "TagKey",
    #             value: "TagValue"
    #           }
    #         ],
    #         task_arn: "String",
    #         task_definition_arn: "String",
    #         version: 1,
    #         ephemeral_storage: {
    #           size_in_gi_b: 1, # required
    #         },
    #         fargate_ephemeral_storage: {
    #           size_in_gi_b: 1,
    #           kms_key_id: "String"
    #         }
    #       }
    #     ],
    #     failures: [
    #       {
    #         arn: "String",
    #         reason: "String",
    #         detail: "String"
    #       }
    #     ]
    #   }
    # @return [Types::StartTaskResponse]
    def start_task(params = {}, options = {})
      request = build_request(:start_task, params)
      request.send_request(options)
    end

    # <p>Stops an ongoing service deployment.</p>
    #          <p>The following stop types are avaiable:</p>
    #          <ul>
    #             <li>
    #                <p>ROLLBACK - This option rolls back the service deployment to the previous
    # 					service revision. </p>
    #                <p>You can use this option even if you didn't configure the service deployment
    # 					for the rollback option. </p>
    #             </li>
    #          </ul>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/stop-service-deployment.html">Stopping Amazon ECS
    # 				service deployments</a> in the <i>Amazon Elastic Container Service Developer
    # 			Guide</i>.</p>
    # @param [Hash, Types::StopServiceDeploymentRequest] params
    # @option params [String] :service_deployment_arn
    #   <p>The ARN of the service deployment that you want to stop.</p>
    # @option params [String] :stop_type
    #   <p>How you want Amazon ECS to stop the service. </p>
    #            <p>The valid values are <code>ROLLBACK</code>.</p>
    # @example To stop a service deployment
    #   # This example stops the service deployment using the ROLLBACK option.
    #   params = {
    #     service_deployment_arn: "arn:aws:ecs:us-east-1:123456789012:service-deployment/MyCluster/MyService/r9i43YFjvgF_xlg7m2eJ1r",
    #     stop_type: ROLLBACK
    #   }
    #   options = {}
    #   response = client.stop_service_deployment(params, options)
    #   response.to_h #=>
    #   {
    #     service_deployment_arn: "arn:aws:ecs:us-east-1:123456789012:service-deployment/MyCluster/MyService/r9i43YFjvgF_xlg7m2eJ1r"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     service_deployment_arn: "String", # required
    #     stop_type: "ABORT" # One of: ["ABORT", "ROLLBACK"]
    #   }
    #   options = {}
    #   response = client.stop_service_deployment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     service_deployment_arn: "String"
    #   }
    # @return [Types::StopServiceDeploymentResponse]
    def stop_service_deployment(params = {}, options = {})
      request = build_request(:stop_service_deployment, params)
      request.send_request(options)
    end

    # <p>Stops a running task. Any tags associated with the task will be deleted.</p>
    #          <p>When you call <code>StopTask</code> on a task, the equivalent of <code>docker
    # 				stop</code> is issued to the containers running in the task. This results in a
    # 				<code>SIGTERM</code> value and a default 30-second timeout, after which the
    # 				<code>SIGKILL</code> value is sent and the containers are forcibly stopped. If the
    # 			container handles the <code>SIGTERM</code> value gracefully and exits within 30 seconds
    # 			from receiving it, no <code>SIGKILL</code> value is sent.</p>
    #          <p>For Windows containers, POSIX signals do not work and runtime stops the container by
    # 			sending a <code>CTRL_SHUTDOWN_EVENT</code>. For more information, see <a href="https://github.com/moby/moby/issues/25982">Unable to react to graceful shutdown
    # 				of (Windows) container #25982</a> on GitHub.</p>
    #          <note>
    #             <p>The default 30-second timeout can be configured on the Amazon ECS container agent with
    # 				the <code>ECS_CONTAINER_STOP_TIMEOUT</code> variable. For more information, see
    # 					<a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-agent-config.html">Amazon ECS Container Agent Configuration</a> in the
    # 				<i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #          </note>
    # @param [Hash, Types::StopTaskRequest] params
    # @option params [String] :cluster
    #   <p>The short name or full Amazon Resource Name (ARN) of the cluster that hosts the task to stop.
    #   			If you do not specify a cluster, the default cluster is assumed.</p>
    # @option params [String] :task
    #   <p>Thefull Amazon Resource Name (ARN) of the task.</p>
    # @option params [String] :reason
    #   <p>An optional message specified when a task is stopped. For example, if you're using a
    #   			custom scheduler, you can use this parameter to specify the reason for stopping the task
    #   			here, and the message appears in subsequent <a href="https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_DescribeTasks.html">DescribeTasks</a>>
    #   			API operations on this task.</p>
    # @example To stop a task
    #   # This example stops a task with ID "1dc5c17a-422b-4dc4-b493-371970c6c4d6" in cluster "MyCluster".
    #   params = {
    #     cluster: "MyCluster",
    #     task: "1dc5c17a-422b-4dc4-b493-371970c6c4d6",
    #     reason: "testing stop task."
    #   }
    #   options = {}
    #   response = client.stop_task(params, options)
    #   response.to_h #=>
    #   {
    #     task: {
    #       cluster_arn: "arn:aws:ecs:us-east-1:012345678910:cluster/MyCluster",
    #       container_instance_arn: "arn:aws:ecs:us-east-1:012345678910:container-instance/MyCluster/5991d8da-1d59-49d2-a31f-4230f9e73140",
    #       containers: [
    #         {
    #           container_arn: "arn:aws:ecs:us-east-1:012345678910:container/4df26bb4-f057-467b-a079-961675296e64",
    #           last_status: "RUNNING",
    #           name: "simple-app",
    #           network_bindings: [
    #             {
    #               bind_ip: "0.0.0.0",
    #               container_port: 80,
    #               host_port: 32774,
    #               protocol: tcp
    #             }
    #           ],
    #           task_arn: "arn:aws:ecs:us-east-1:012345678910:task/MyCluster/1dc5c17a-422b-4dc4-b493-371970c6c4d6"
    #         },
    #         {
    #           container_arn: "arn:aws:ecs:us-east-1:012345678910:container/e09064f7-7361-4c87-8ab9-8d073bbdbcb9",
    #           last_status: "RUNNING",
    #           name: "busybox",
    #           network_bindings: [
    #           ],
    #           task_arn: "arn:aws:ecs:us-east-1:012345678910:task/MyCluster/1dc5c17a-422b-4dc4-b493-371970c6c4d6"
    #         }
    #       ],
    #       created_at: Time.parse(1476822811.295),
    #       desired_status: "STOPPED",
    #       last_status: "RUNNING",
    #       overrides: {
    #         container_overrides: [
    #           {
    #             name: "simple-app"
    #           },
    #           {
    #             name: "busybox"
    #           }
    #         ]
    #       },
    #       started_at: Time.parse(1476822833.998),
    #       started_by: "ecs-svc/9223370560032507596",
    #       stopped_reason: "testing stop task.",
    #       task_arn: "arn:aws:ecs:us-east-1:012345678910:task/1dc5c17a-422b-4dc4-b493-371970c6c4d6",
    #       task_definition_arn: "arn:aws:ecs:us-east-1:012345678910:task-definition/console-sample-app-dynamic-ports:1",
    #       version: 0
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster: "String",
    #     task: "String", # required
    #     reason: "String"
    #   }
    #   options = {}
    #   response = client.stop_task(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     task: {
    #       attachments: [
    #         {
    #           id: "String",
    #           type: "String",
    #           status: "String",
    #           details: [
    #             {
    #               name: "String",
    #               value: "String"
    #             }
    #           ]
    #         }
    #       ],
    #       attributes: [
    #         {
    #           name: "String", # required
    #           value: "String",
    #           target_type: "container-instance" # One of: ["container-instance"],
    #           target_id: "String"
    #         }
    #       ],
    #       availability_zone: "String",
    #       capacity_provider_name: "String",
    #       cluster_arn: "String",
    #       connectivity: "CONNECTED" # One of: ["CONNECTED", "DISCONNECTED"],
    #       connectivity_at: Time.now,
    #       container_instance_arn: "String",
    #       containers: [
    #         {
    #           container_arn: "String",
    #           task_arn: "String",
    #           name: "String",
    #           image: "String",
    #           image_digest: "String",
    #           runtime_id: "String",
    #           last_status: "String",
    #           exit_code: 1,
    #           reason: "String",
    #           network_bindings: [
    #             {
    #               bind_ip: "String",
    #               container_port: 1,
    #               host_port: 1,
    #               protocol: "tcp" # One of: ["tcp", "udp"],
    #               container_port_range: "String",
    #               host_port_range: "String"
    #             }
    #           ],
    #           network_interfaces: [
    #             {
    #               attachment_id: "String",
    #               private_ipv4_address: "String",
    #               ipv6_address: "String"
    #             }
    #           ],
    #           health_status: "HEALTHY" # One of: ["HEALTHY", "UNHEALTHY", "UNKNOWN"],
    #           managed_agents: [
    #             {
    #               last_started_at: Time.now,
    #               name: "ExecuteCommandAgent" # One of: ["ExecuteCommandAgent"],
    #               reason: "String",
    #               last_status: "String"
    #             }
    #           ],
    #           cpu: "String",
    #           memory: "String",
    #           memory_reservation: "String",
    #           gpu_ids: ["String"]
    #         }
    #       ],
    #       cpu: "String",
    #       created_at: Time.now,
    #       desired_status: "String",
    #       enable_execute_command: false,
    #       execution_stopped_at: Time.now,
    #       group: "String",
    #       health_status: "HEALTHY" # One of: ["HEALTHY", "UNHEALTHY", "UNKNOWN"],
    #       inference_accelerators: [
    #         {
    #           device_name: "String", # required
    #           device_type: "String", # required
    #         }
    #       ],
    #       last_status: "String",
    #       launch_type: "EC2" # One of: ["EC2", "FARGATE", "EXTERNAL", "MANAGED_INSTANCES"],
    #       memory: "String",
    #       overrides: {
    #         container_overrides: [
    #           {
    #             name: "String",
    #             command: ["String"],
    #             environment: [
    #               {
    #                 name: "String",
    #                 value: "String"
    #               }
    #             ],
    #             environment_files: [
    #               {
    #                 value: "String", # required
    #                 type: "s3" # One of: ["s3"], # required
    #               }
    #             ],
    #             cpu: 1,
    #             memory: 1,
    #             memory_reservation: 1,
    #             resource_requirements: [
    #               {
    #                 value: "String", # required
    #                 type: "GPU" # One of: ["GPU", "InferenceAccelerator"], # required
    #               }
    #             ]
    #           }
    #         ],
    #         cpu: "String",
    #         inference_accelerator_overrides: [
    #           {
    #             device_name: "String",
    #             device_type: "String"
    #           }
    #         ],
    #         execution_role_arn: "String",
    #         memory: "String",
    #         task_role_arn: "String",
    #         ephemeral_storage: {
    #           size_in_gi_b: 1, # required
    #         }
    #       },
    #       platform_version: "String",
    #       platform_family: "String",
    #       pull_started_at: Time.now,
    #       pull_stopped_at: Time.now,
    #       started_at: Time.now,
    #       started_by: "String",
    #       stop_code: "TaskFailedToStart" # One of: ["TaskFailedToStart", "EssentialContainerExited", "UserInitiated", "ServiceSchedulerInitiated", "SpotInterruption", "TerminationNotice"],
    #       stopped_at: Time.now,
    #       stopped_reason: "String",
    #       stopping_at: Time.now,
    #       tags: [
    #         {
    #           key: "TagKey",
    #           value: "TagValue"
    #         }
    #       ],
    #       task_arn: "String",
    #       task_definition_arn: "String",
    #       version: 1,
    #       ephemeral_storage: {
    #         size_in_gi_b: 1, # required
    #       },
    #       fargate_ephemeral_storage: {
    #         size_in_gi_b: 1,
    #         kms_key_id: "String"
    #       }
    #     }
    #   }
    # @return [Types::StopTaskResponse]
    def stop_task(params = {}, options = {})
      request = build_request(:stop_task, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This action is only used by the Amazon ECS agent, and it is not intended for use outside of the agent.</p>
    #          </note>
    #          <p>Sent to acknowledge that an attachment changed states.</p>
    # @param [Hash, Types::SubmitAttachmentStateChangesRequest] params
    # @option params [String] :cluster
    #   <p>The short name or full ARN of the cluster that hosts the container instance the
    #   			attachment belongs to.</p>
    # @option params [Array<Types::AttachmentStateChange>] :attachments
    #   <p>Any attachments associated with the state change request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster: "String",
    #     attachments: [ # required
    #       {
    #         attachment_arn: "String", # required
    #         status: "String", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.submit_attachment_state_changes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     acknowledgment: "String"
    #   }
    # @return [Types::SubmitAttachmentStateChangesResponse]
    def submit_attachment_state_changes(params = {}, options = {})
      request = build_request(:submit_attachment_state_changes, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This action is only used by the Amazon ECS agent, and it is not intended for use outside of the agent.</p>
    #          </note>
    #          <p>Sent to acknowledge that a container changed states.</p>
    # @param [Hash, Types::SubmitContainerStateChangeRequest] params
    # @option params [String] :cluster
    #   <p>The short name or full ARN of the cluster that hosts the container.</p>
    # @option params [String] :task
    #   <p>The task ID or full Amazon Resource Name (ARN) of the task that hosts the container.</p>
    # @option params [String] :container_name
    #   <p>The name of the container.</p>
    # @option params [String] :runtime_id
    #   <p>The ID of the Docker container.</p>
    # @option params [String] :status
    #   <p>The status of the state change request.</p>
    # @option params [Integer] :exit_code
    #   <p>The exit code that's returned for the state change request.</p>
    # @option params [String] :reason
    #   <p>The reason for the state change request.</p>
    # @option params [Array<Types::NetworkBinding>] :network_bindings
    #   <p>The network bindings of the container.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster: "String",
    #     task: "String",
    #     container_name: "String",
    #     runtime_id: "String",
    #     status: "String",
    #     exit_code: 1,
    #     reason: "String",
    #     network_bindings: [
    #       {
    #         bind_ip: "String",
    #         container_port: 1,
    #         host_port: 1,
    #         protocol: "tcp" # One of: ["tcp", "udp"],
    #         container_port_range: "String",
    #         host_port_range: "String"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.submit_container_state_change(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     acknowledgment: "String"
    #   }
    # @return [Types::SubmitContainerStateChangeResponse]
    def submit_container_state_change(params = {}, options = {})
      request = build_request(:submit_container_state_change, params)
      request.send_request(options)
    end

    # <note>
    #             <p>This action is only used by the Amazon ECS agent, and it is not intended for use outside of the agent.</p>
    #          </note>
    #          <p>Sent to acknowledge that a task changed states.</p>
    # @param [Hash, Types::SubmitTaskStateChangeRequest] params
    # @option params [String] :cluster
    #   <p>The short name or full Amazon Resource Name (ARN) of the cluster that hosts the task.</p>
    # @option params [String] :task
    #   <p>The task ID or full ARN of the task in the state change request.</p>
    # @option params [String] :status
    #   <p>The status of the state change request.</p>
    # @option params [String] :reason
    #   <p>The reason for the state change request.</p>
    # @option params [Array<Types::ContainerStateChange>] :containers
    #   <p>Any containers that's associated with the state change request.</p>
    # @option params [Array<Types::AttachmentStateChange>] :attachments
    #   <p>Any attachments associated with the state change request.</p>
    # @option params [Array<Types::ManagedAgentStateChange>] :managed_agents
    #   <p>The details for the managed agent that's associated with the task.</p>
    # @option params [Time] :pull_started_at
    #   <p>The Unix timestamp for the time when the container image pull started.</p>
    # @option params [Time] :pull_stopped_at
    #   <p>The Unix timestamp for the time when the container image pull completed.</p>
    # @option params [Time] :execution_stopped_at
    #   <p>The Unix timestamp for the time when the task execution stopped.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster: "String",
    #     task: "String",
    #     status: "String",
    #     reason: "String",
    #     containers: [
    #       {
    #         container_name: "String",
    #         image_digest: "String",
    #         runtime_id: "String",
    #         exit_code: 1,
    #         network_bindings: [
    #           {
    #             bind_ip: "String",
    #             container_port: 1,
    #             host_port: 1,
    #             protocol: "tcp" # One of: ["tcp", "udp"],
    #             container_port_range: "String",
    #             host_port_range: "String"
    #           }
    #         ],
    #         reason: "String",
    #         status: "String"
    #       }
    #     ],
    #     attachments: [
    #       {
    #         attachment_arn: "String", # required
    #         status: "String", # required
    #       }
    #     ],
    #     managed_agents: [
    #       {
    #         container_name: "String", # required
    #         managed_agent_name: "ExecuteCommandAgent" # One of: ["ExecuteCommandAgent"], # required
    #         status: "String", # required
    #         reason: "String"
    #       }
    #     ],
    #     pull_started_at: Time.now,
    #     pull_stopped_at: Time.now,
    #     execution_stopped_at: Time.now
    #   }
    #   options = {}
    #   response = client.submit_task_state_change(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     acknowledgment: "String"
    #   }
    # @return [Types::SubmitTaskStateChangeResponse]
    def submit_task_state_change(params = {}, options = {})
      request = build_request(:submit_task_state_change, params)
      request.send_request(options)
    end

    # <p>Associates the specified tags to a resource with the specified
    # 				<code>resourceArn</code>. If existing tags on a resource aren't specified in the
    # 			request parameters, they aren't changed. When a resource is deleted, the tags that are
    # 			associated with that resource are deleted as well.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to add tags to. Currently, the supported resources are
    #   			Amazon ECS capacity providers, tasks, services, task definitions, clusters, and container
    #   			instances.</p>
    #            <p>In order to tag a service that has the following ARN format, you need to migrate the
    #   			service to the long ARN. For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-arn-migration.html">Migrate an Amazon ECS short service ARN to a long ARN</a> in the <i>Amazon Elastic Container Service
    #   				Developer Guide</i>.</p>
    #            <p>
    #               <code>arn:aws:ecs:region:aws_account_id:service/service-name</code>
    #            </p>
    #            <p>After the migration is complete, the service has the long ARN format, as shown below. Use this ARN to tag the service.</p>
    #            <p>
    #               <code>arn:aws:ecs:region:aws_account_id:service/cluster-name/service-name</code>
    #            </p>
    #            <p>If you try to tag a service with a short ARN, you receive an
    #   				<code>InvalidParameterException</code> error.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags to add to the resource. A tag is an array of key-value pairs.</p>
    #            <p>The following basic restrictions apply to tags:</p>
    #            <ul>
    #               <li>
    #                  <p>Maximum number of tags per resource - 50</p>
    #               </li>
    #               <li>
    #                  <p>For each resource, each tag key must be unique, and each tag key can have only
    #                       one value.</p>
    #               </li>
    #               <li>
    #                  <p>Maximum key length - 128 Unicode characters in UTF-8</p>
    #               </li>
    #               <li>
    #                  <p>Maximum value length - 256 Unicode characters in UTF-8</p>
    #               </li>
    #               <li>
    #                  <p>If your tagging schema is used across multiple services and resources,
    #                       remember that other services may have restrictions on allowed characters.
    #                       Generally allowed characters are: letters, numbers, and spaces representable in
    #                       UTF-8, and the following characters: + - = . _ : / @.</p>
    #               </li>
    #               <li>
    #                  <p>Tag keys and values are case-sensitive.</p>
    #               </li>
    #               <li>
    #                  <p>Do not use <code>aws:</code>, <code>AWS:</code>, or any upper or lowercase
    #                       combination of such as a prefix for either keys or values as it is reserved for
    #                       Amazon Web Services use. You cannot edit or delete tag keys or values with this prefix. Tags with
    #                       this prefix do not count against your tags per resource limit.</p>
    #               </li>
    #            </ul>
    # @example To tag a cluster.
    #   # This example tags the 'dev' cluster with key 'team' and value 'dev'.
    #   params = {
    #     resource_arn: "arn:aws:ecs:region:aws_account_id:cluster/dev",
    #     tags: [
    #       {
    #         key: "team",
    #         value: "dev"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.tag_resource(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "String", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey",
    #         value: "TagValue"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.tag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::TagResourceResponse]
    def tag_resource(params = {}, options = {})
      request = build_request(:tag_resource, params)
      request.send_request(options)
    end

    # <p>Deletes specified tags from a resource.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to delete tags from. Currently, the supported resources
    #   			are Amazon ECS capacity providers, tasks, services, task definitions, clusters, and container
    #   			instances.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>The keys of the tags to be removed.</p>
    # @example To untag a cluster.
    #   # This example deletes the 'team' tag from the 'dev' cluster.
    #   params = {
    #     resource_arn: "arn:aws:ecs:region:aws_account_id:cluster/dev",
    #     tag_keys: [
    #       "team"
    #     ]
    #   }
    #   options = {}
    #   response = client.untag_resource(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "String", # required
    #     tag_keys: ["TagKey"], # required
    #   }
    #   options = {}
    #   response = client.untag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UntagResourceResponse]
    def untag_resource(params = {}, options = {})
      request = build_request(:untag_resource, params)
      request.send_request(options)
    end

    # <p>Modifies the parameters for a capacity provider.</p>
    #          <p>These changes only apply to new Amazon ECS Managed Instances, or EC2 instances, not existing ones.</p>
    # @param [Hash, Types::UpdateCapacityProviderRequest] params
    # @option params [String] :name
    #   <p>The name of the capacity provider to update.</p>
    # @option params [String] :cluster
    #   <p>The name of the cluster that contains the capacity provider to update. Managed instances capacity providers are cluster-scoped and can only be updated within their associated cluster.</p>
    # @option params [Types::AutoScalingGroupProviderUpdate] :auto_scaling_group_provider
    #   <p>An object that represent the parameters to update for the Auto Scaling group capacity
    #   			provider.</p>
    # @option params [Types::UpdateManagedInstancesProviderConfiguration] :managed_instances_provider
    #   <p>The updated configuration for the Amazon ECS Managed Instances provider. You can modify the infrastructure role, instance launch template, and tag propagation settings. Changes take effect for new instances launched after the update.</p>
    # @example To update a capacity provider's parameters
    #   # This example updates the targetCapacity and instanceWarmupPeriod parameters for the capacity provider MyCapacityProvider to 90 and 150 respectively.
    #   params = {
    #     name: "MyCapacityProvider",
    #     auto_scaling_group_provider: {
    #       managed_scaling: {
    #         status: ENABLED,
    #         target_capacity: 90,
    #         instance_warmup_period: 150
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.update_capacity_provider(params, options)
    #   response.to_h #=>
    #   {
    #     capacity_provider: {
    #       capacity_provider_arn: "arn:aws:ecs:us-east-1:123456789012:capacity-provider/MyCapacityProvider",
    #       name: "MyCapacityProvider",
    #       status: ACTIVE,
    #       auto_scaling_group_provider: {
    #         auto_scaling_group_arn: "arn:aws:autoscaling:us-east-1:132456789012:autoScalingGroup:57ffcb94-11f0-4d6d-bf60-3bac5EXAMPLE:autoScalingGroupName/MyASG",
    #         managed_scaling: {
    #           status: ENABLED,
    #           target_capacity: 90,
    #           minimum_scaling_step_size: 1,
    #           maximum_scaling_step_size: 10000,
    #           instance_warmup_period: 150
    #         },
    #         managed_termination_protection: ENABLED
    #       },
    #       update_status: UPDATE_COMPLETE,
    #       tags: [
    #       ]
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "String", # required
    #     cluster: "String",
    #     auto_scaling_group_provider: {
    #       managed_scaling: {
    #         status: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #         target_capacity: 1,
    #         minimum_scaling_step_size: 1,
    #         maximum_scaling_step_size: 1,
    #         instance_warmup_period: 1
    #       },
    #       managed_termination_protection: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #       managed_draining: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #     },
    #     managed_instances_provider: {
    #       infrastructure_role_arn: "String", # required
    #       instance_launch_template: { # required
    #         ec2_instance_profile_arn: "String",
    #         network_configuration: {
    #           subnets: ["String"],
    #           security_groups: ["String"]
    #         },
    #         storage_configuration: {
    #           storage_size_gi_b: 1
    #         },
    #         monitoring: "BASIC" # One of: ["BASIC", "DETAILED"],
    #         instance_requirements: {
    #           v_cpu_count: { # required
    #             min: 1, # required
    #             max: 1
    #           },
    #           memory_mi_b: { # required
    #             min: 1, # required
    #             max: 1
    #           },
    #           cpu_manufacturers: ["intel" # One of: ["intel", "amd", "amazon-web-services"]],
    #           memory_gi_b_per_v_cpu: {
    #             min: 1.0,
    #             max: 1.0
    #           },
    #           excluded_instance_types: ["ExcludedInstanceType"],
    #           instance_generations: ["current" # One of: ["current", "previous"]],
    #           spot_max_price_percentage_over_lowest_price: 1,
    #           on_demand_max_price_percentage_over_lowest_price: 1,
    #           bare_metal: "included" # One of: ["included", "required", "excluded"],
    #           burstable_performance: "included" # One of: ["included", "required", "excluded"],
    #           require_hibernate_support: false,
    #           network_interface_count: {
    #             min: 1,
    #             max: 1
    #           },
    #           local_storage: "included" # One of: ["included", "required", "excluded"],
    #           local_storage_types: ["hdd" # One of: ["hdd", "ssd"]],
    #           total_local_storage_gb: {
    #             min: 1.0,
    #             max: 1.0
    #           },
    #           baseline_ebs_bandwidth_mbps: {
    #             min: 1,
    #             max: 1
    #           },
    #           accelerator_types: ["gpu" # One of: ["gpu", "fpga", "inference"]],
    #           accelerator_count: {
    #             min: 1,
    #             max: 1
    #           },
    #           accelerator_manufacturers: ["amazon-web-services" # One of: ["amazon-web-services", "amd", "nvidia", "xilinx", "habana"]],
    #           accelerator_names: ["a100" # One of: ["a100", "inferentia", "k520", "k80", "m60", "radeon-pro-v520", "t4", "vu9p", "v100", "a10g", "h100", "t4g"]],
    #           accelerator_total_memory_mi_b: {
    #             min: 1,
    #             max: 1
    #           },
    #           network_bandwidth_gbps: {
    #             min: 1.0,
    #             max: 1.0
    #           },
    #           allowed_instance_types: ["AllowedInstanceType"],
    #           max_spot_price_as_percentage_of_optimal_on_demand_price: 1
    #         }
    #       },
    #       propagate_tags: "CAPACITY_PROVIDER" # One of: ["CAPACITY_PROVIDER", "NONE"]
    #     }
    #   }
    #   options = {}
    #   response = client.update_capacity_provider(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     capacity_provider: {
    #       capacity_provider_arn: "String",
    #       name: "String",
    #       cluster: "String",
    #       status: "PROVISIONING" # One of: ["PROVISIONING", "ACTIVE", "DEPROVISIONING", "INACTIVE"],
    #       auto_scaling_group_provider: {
    #         auto_scaling_group_arn: "String", # required
    #         managed_scaling: {
    #           status: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #           target_capacity: 1,
    #           minimum_scaling_step_size: 1,
    #           maximum_scaling_step_size: 1,
    #           instance_warmup_period: 1
    #         },
    #         managed_termination_protection: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #         managed_draining: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #       },
    #       managed_instances_provider: {
    #         infrastructure_role_arn: "String",
    #         instance_launch_template: {
    #           ec2_instance_profile_arn: "String", # required
    #           network_configuration: { # required
    #             subnets: ["String"],
    #             security_groups: ["String"]
    #           },
    #           storage_configuration: {
    #             storage_size_gi_b: 1
    #           },
    #           monitoring: "BASIC" # One of: ["BASIC", "DETAILED"],
    #           instance_requirements: {
    #             v_cpu_count: { # required
    #               min: 1, # required
    #               max: 1
    #             },
    #             memory_mi_b: { # required
    #               min: 1, # required
    #               max: 1
    #             },
    #             cpu_manufacturers: ["intel" # One of: ["intel", "amd", "amazon-web-services"]],
    #             memory_gi_b_per_v_cpu: {
    #               min: 1.0,
    #               max: 1.0
    #             },
    #             excluded_instance_types: ["ExcludedInstanceType"],
    #             instance_generations: ["current" # One of: ["current", "previous"]],
    #             spot_max_price_percentage_over_lowest_price: 1,
    #             on_demand_max_price_percentage_over_lowest_price: 1,
    #             bare_metal: "included" # One of: ["included", "required", "excluded"],
    #             burstable_performance: "included" # One of: ["included", "required", "excluded"],
    #             require_hibernate_support: false,
    #             network_interface_count: {
    #               min: 1,
    #               max: 1
    #             },
    #             local_storage: "included" # One of: ["included", "required", "excluded"],
    #             local_storage_types: ["hdd" # One of: ["hdd", "ssd"]],
    #             total_local_storage_gb: {
    #               min: 1.0,
    #               max: 1.0
    #             },
    #             baseline_ebs_bandwidth_mbps: {
    #               min: 1,
    #               max: 1
    #             },
    #             accelerator_types: ["gpu" # One of: ["gpu", "fpga", "inference"]],
    #             accelerator_count: {
    #               min: 1,
    #               max: 1
    #             },
    #             accelerator_manufacturers: ["amazon-web-services" # One of: ["amazon-web-services", "amd", "nvidia", "xilinx", "habana"]],
    #             accelerator_names: ["a100" # One of: ["a100", "inferentia", "k520", "k80", "m60", "radeon-pro-v520", "t4", "vu9p", "v100", "a10g", "h100", "t4g"]],
    #             accelerator_total_memory_mi_b: {
    #               min: 1,
    #               max: 1
    #             },
    #             network_bandwidth_gbps: {
    #               min: 1.0,
    #               max: 1.0
    #             },
    #             allowed_instance_types: ["AllowedInstanceType"],
    #             max_spot_price_as_percentage_of_optimal_on_demand_price: 1
    #           }
    #         },
    #         propagate_tags: "CAPACITY_PROVIDER" # One of: ["CAPACITY_PROVIDER", "NONE"]
    #       },
    #       update_status: "CREATE_IN_PROGRESS" # One of: ["CREATE_IN_PROGRESS", "CREATE_COMPLETE", "CREATE_FAILED", "DELETE_IN_PROGRESS", "DELETE_COMPLETE", "DELETE_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_COMPLETE", "UPDATE_FAILED"],
    #       update_status_reason: "String",
    #       tags: [
    #         {
    #           key: "TagKey",
    #           value: "TagValue"
    #         }
    #       ],
    #       type: "EC2_AUTOSCALING" # One of: ["EC2_AUTOSCALING", "MANAGED_INSTANCES", "FARGATE", "FARGATE_SPOT"]
    #     }
    #   }
    # @return [Types::UpdateCapacityProviderResponse]
    def update_capacity_provider(params = {}, options = {})
      request = build_request(:update_capacity_provider, params)
      request.send_request(options)
    end

    # <p>Updates the cluster.</p>
    # @param [Hash, Types::UpdateClusterRequest] params
    # @option params [String] :cluster
    #   <p>The name of the cluster to modify the settings for.</p>
    # @option params [Array<Types::ClusterSetting>] :settings
    #   <p>The cluster settings for your cluster.</p>
    # @option params [Types::ClusterConfiguration] :configuration
    #   <p>The execute command configuration for the cluster.</p>
    # @option params [Types::ClusterServiceConnectDefaultsRequest] :service_connect_defaults
    #   <p>Use this parameter to set a default Service Connect namespace. After you set a default 
    #   	Service Connect namespace, any new services with Service Connect turned on that are created in the cluster are added as
    #   	client services in the namespace. This setting only applies to new services that set the <code>enabled</code> parameter to
    #   	<code>true</code> in the <code>ServiceConnectConfiguration</code>.
    #   	You can set the namespace of each service individually in the <code>ServiceConnectConfiguration</code> to override this default
    #   	parameter.</p>
    #            <p>Tasks that run in a namespace can use short names to connect
    #   	to services in the namespace. Tasks can connect to services across all of the clusters in the namespace.
    #   	Tasks connect through a managed proxy container
    #   	that collects logs and metrics for increased visibility.
    #   	Only the tasks that Amazon ECS services create are supported with Service Connect.
    #   	For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-connect.html">Service Connect</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    # @example To update a cluster's observability settings.
    #   # This example turns on enhanced containerInsights in an existing cluster. 
    #   params = {
    #     cluster: "ECS-project-update-cluster",
    #     settings: [
    #       {
    #         name: containerInsights,
    #         value: "enhanced"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_cluster(params, options)
    #   response.to_h #=>
    #   {
    #     cluster: {
    #       cluster_arn: "arn:aws:ecs:us-west-2:123456789012:cluster/ECS-project-update-cluster",
    #       cluster_name: "ECS-project-update-cluster",
    #       status: "ACTIVE",
    #       registered_container_instances_count: 0,
    #       running_tasks_count: 0,
    #       pending_tasks_count: 0,
    #       active_services_count: 0,
    #       statistics: [
    #       ],
    #       tags: [
    #       ],
    #       settings: [
    #         {
    #           name: containerInsights,
    #           value: "enhanced"
    #         }
    #       ],
    #       capacity_providers: [
    #         "Infra-ECS-Cluster-ECS-project-update-cluster-d6bb6d5b-EC2CapacityProvider-3fIpdkLywwFt"
    #       ],
    #       default_capacity_provider_strategy: [
    #         {
    #           capacity_provider: "Infra-ECS-Cluster-ECS-project-update-cluster-d6bb6d5b-EC2CapacityProvider-3fIpdkLywwFt",
    #           weight: 1,
    #           base: 0
    #         }
    #       ],
    #       attachments: [
    #         {
    #           id: "069d002b-7634-42e4-b1d4-544f4c8f6380",
    #           type: "as_policy",
    #           status: "CREATED",
    #           details: [
    #             {
    #               name: "capacityProviderName",
    #               value: "Infra-ECS-Cluster-ECS-project-update-cluster-d6bb6d5b-EC2CapacityProvider-3fIpdkLywwFt"
    #             },
    #             {
    #               name: "scalingPolicyName",
    #               value: "ECSManagedAutoScalingPolicy-152363a6-8c65-484c-b721-42c3e070ae93"
    #             }
    #           ]
    #         },
    #         {
    #           id: "08b5b6ca-45e9-4209-a65d-e962a27c490a",
    #           type: "managed_draining",
    #           status: "CREATED",
    #           details: [
    #             {
    #               name: "capacityProviderName",
    #               value: "Infra-ECS-Cluster-ECS-project-update-cluster-d6bb6d5b-EC2CapacityProvider-3fIpdkLywwFt"
    #             },
    #             {
    #               name: "autoScalingLifecycleHookName",
    #               value: "ecs-managed-draining-termination-hook"
    #             }
    #           ]
    #         },
    #         {
    #           id: "45d0b36f-8cff-46b6-9380-1288744802ab",
    #           type: "sc",
    #           status: "ATTACHED",
    #           details: [
    #           ]
    #         }
    #       ],
    #       attachments_status: "UPDATE_COMPLETE",
    #       service_connect_defaults: {
    #         namespace: "arn:aws:servicediscovery:us-west-2:123456789012:namespace/ns-igwrsylmy3kwvcdx"
    #       }
    #     }
    #   }
    # @example To update a cluster's Service Connect defaults.
    #   # This example sets a default Service Connect namespace. 
    #   params = {
    #     cluster: "ECS-project-update-cluster",
    #     service_connect_defaults: {
    #       namespace: "test"
    #     }
    #   }
    #   options = {}
    #   response = client.update_cluster(params, options)
    #   response.to_h #=>
    #   {
    #     cluster: {
    #       cluster_arn: "arn:aws:ecs:us-west-2:123456789012:cluster/ECS-project-update-cluster",
    #       cluster_name: "ECS-project-update-cluster",
    #       status: "ACTIVE",
    #       registered_container_instances_count: 0,
    #       running_tasks_count: 0,
    #       pending_tasks_count: 0,
    #       active_services_count: 0,
    #       statistics: [
    #       ],
    #       tags: [
    #       ],
    #       settings: [
    #         {
    #           name: containerInsights,
    #           value: "enhanced"
    #         }
    #       ],
    #       capacity_providers: [
    #         "Infra-ECS-Cluster-ECS-project-update-cluster-d6bb6d5b-EC2CapacityProvider-3fIpdkLywwFt"
    #       ],
    #       default_capacity_provider_strategy: [
    #         {
    #           capacity_provider: "Infra-ECS-Cluster-ECS-project-update-cluster-d6bb6d5b-EC2CapacityProvider-3fIpdkLywwFt",
    #           weight: 1,
    #           base: 0
    #         }
    #       ],
    #       attachments: [
    #         {
    #           id: "069d002b-7634-42e4-b1d4-544f4c8f6380",
    #           type: "as_policy",
    #           status: "CREATED",
    #           details: [
    #             {
    #               name: "capacityProviderName",
    #               value: "Infra-ECS-Cluster-ECS-project-update-cluster-d6bb6d5b-EC2CapacityProvider-3fIpdkLywwFt"
    #             },
    #             {
    #               name: "scalingPolicyName",
    #               value: "ECSManagedAutoScalingPolicy-152363a6-8c65-484c-b721-42c3e070ae93"
    #             }
    #           ]
    #         },
    #         {
    #           id: "08b5b6ca-45e9-4209-a65d-e962a27c490a",
    #           type: "managed_draining",
    #           status: "CREATED",
    #           details: [
    #             {
    #               name: "capacityProviderName",
    #               value: "Infra-ECS-Cluster-ECS-project-update-cluster-d6bb6d5b-EC2CapacityProvider-3fIpdkLywwFt"
    #             },
    #             {
    #               name: "autoScalingLifecycleHookName",
    #               value: "ecs-managed-draining-termination-hook"
    #             }
    #           ]
    #         },
    #         {
    #           id: "45d0b36f-8cff-46b6-9380-1288744802ab",
    #           type: "sc",
    #           status: "DELETED",
    #           details: [
    #           ]
    #         },
    #         {
    #           id: "3e6890c3-609c-4832-91de-d6ca891b3ef1",
    #           type: "sc",
    #           status: "ATTACHED",
    #           details: [
    #           ]
    #         },
    #         {
    #           id: "961b8ec1-c2f1-4070-8495-e669b7668e90",
    #           type: "sc",
    #           status: "DELETED",
    #           details: [
    #           ]
    #         }
    #       ],
    #       attachments_status: "UPDATE_COMPLETE",
    #       service_connect_defaults: {
    #         namespace: "arn:aws:servicediscovery:us-west-2:123456789012:namespace/ns-dtjmxqpfi46ht7dr"
    #       }
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster: "String", # required
    #     settings: [
    #       {
    #         name: "containerInsights" # One of: ["containerInsights"],
    #         value: "String"
    #       }
    #     ],
    #     configuration: {
    #       execute_command_configuration: {
    #         kms_key_id: "String",
    #         logging: "NONE" # One of: ["NONE", "DEFAULT", "OVERRIDE"],
    #         log_configuration: {
    #           cloud_watch_log_group_name: "String",
    #           cloud_watch_encryption_enabled: false,
    #           s3_bucket_name: "String",
    #           s3_encryption_enabled: false,
    #           s3_key_prefix: "String"
    #         }
    #       },
    #       managed_storage_configuration: {
    #         kms_key_id: "String",
    #         fargate_ephemeral_storage_kms_key_id: "String"
    #       }
    #     },
    #     service_connect_defaults: {
    #       namespace: "String", # required
    #     }
    #   }
    #   options = {}
    #   response = client.update_cluster(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cluster: {
    #       cluster_arn: "String",
    #       cluster_name: "String",
    #       configuration: {
    #         execute_command_configuration: {
    #           kms_key_id: "String",
    #           logging: "NONE" # One of: ["NONE", "DEFAULT", "OVERRIDE"],
    #           log_configuration: {
    #             cloud_watch_log_group_name: "String",
    #             cloud_watch_encryption_enabled: false,
    #             s3_bucket_name: "String",
    #             s3_encryption_enabled: false,
    #             s3_key_prefix: "String"
    #           }
    #         },
    #         managed_storage_configuration: {
    #           kms_key_id: "String",
    #           fargate_ephemeral_storage_kms_key_id: "String"
    #         }
    #       },
    #       status: "String",
    #       registered_container_instances_count: 1,
    #       running_tasks_count: 1,
    #       pending_tasks_count: 1,
    #       active_services_count: 1,
    #       statistics: [
    #         {
    #           name: "String",
    #           value: "String"
    #         }
    #       ],
    #       tags: [
    #         {
    #           key: "TagKey",
    #           value: "TagValue"
    #         }
    #       ],
    #       settings: [
    #         {
    #           name: "containerInsights" # One of: ["containerInsights"],
    #           value: "String"
    #         }
    #       ],
    #       capacity_providers: ["String"],
    #       default_capacity_provider_strategy: [
    #         {
    #           capacity_provider: "String", # required
    #           weight: 1,
    #           base: 1
    #         }
    #       ],
    #       attachments: [
    #         {
    #           id: "String",
    #           type: "String",
    #           status: "String",
    #           details: [
    #             {
    #               name: "String",
    #               value: "String"
    #             }
    #           ]
    #         }
    #       ],
    #       attachments_status: "String",
    #       service_connect_defaults: {
    #         namespace: "String"
    #       }
    #     }
    #   }
    # @return [Types::UpdateClusterResponse]
    def update_cluster(params = {}, options = {})
      request = build_request(:update_cluster, params)
      request.send_request(options)
    end

    # <p>Modifies the settings to use for a cluster.</p>
    # @param [Hash, Types::UpdateClusterSettingsRequest] params
    # @option params [String] :cluster
    #   <p>The name of the cluster to modify the settings for.</p>
    # @option params [Array<Types::ClusterSetting>] :settings
    #   <p>The setting to use by default for a cluster. This parameter is used to turn on CloudWatch
    #   			Container Insights for a cluster. If this value is specified, it overrides the
    #   				<code>containerInsights</code> value set with <a href="https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_PutAccountSetting.html">PutAccountSetting</a> or <a href="https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_PutAccountSettingDefault.html">PutAccountSettingDefault</a>.</p>
    #            <important>
    #               <p>Currently, if you delete an existing cluster that does not have Container Insights
    #   				turned on, and then create a new cluster with the same name with Container Insights
    #   				tuned on, Container Insights will not actually be turned on. If you want to preserve
    #   				the same name for your existing cluster and turn on Container Insights, you must
    #   				wait 7 days before you can re-create it.</p>
    #            </important>
    # @example To update a cluster's settings
    #   # This example enables CloudWatch Container Insights for the default cluster.
    #   params = {
    #     cluster: "default",
    #     settings: [
    #       {
    #         name: containerInsights,
    #         value: "enabled"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_cluster_settings(params, options)
    #   response.to_h #=>
    #   {
    #     cluster: {
    #       cluster_arn: "arn:aws:ecs:us-west-2:123456789012:cluster/MyCluster",
    #       cluster_name: "default",
    #       status: "ACTIVE",
    #       registered_container_instances_count: 0,
    #       running_tasks_count: 0,
    #       pending_tasks_count: 0,
    #       active_services_count: 0,
    #       statistics: [
    #       ],
    #       tags: [
    #       ],
    #       settings: [
    #         {
    #           name: containerInsights,
    #           value: "enabled"
    #         }
    #       ]
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster: "String", # required
    #     settings: [ # required
    #       {
    #         name: "containerInsights" # One of: ["containerInsights"],
    #         value: "String"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_cluster_settings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cluster: {
    #       cluster_arn: "String",
    #       cluster_name: "String",
    #       configuration: {
    #         execute_command_configuration: {
    #           kms_key_id: "String",
    #           logging: "NONE" # One of: ["NONE", "DEFAULT", "OVERRIDE"],
    #           log_configuration: {
    #             cloud_watch_log_group_name: "String",
    #             cloud_watch_encryption_enabled: false,
    #             s3_bucket_name: "String",
    #             s3_encryption_enabled: false,
    #             s3_key_prefix: "String"
    #           }
    #         },
    #         managed_storage_configuration: {
    #           kms_key_id: "String",
    #           fargate_ephemeral_storage_kms_key_id: "String"
    #         }
    #       },
    #       status: "String",
    #       registered_container_instances_count: 1,
    #       running_tasks_count: 1,
    #       pending_tasks_count: 1,
    #       active_services_count: 1,
    #       statistics: [
    #         {
    #           name: "String",
    #           value: "String"
    #         }
    #       ],
    #       tags: [
    #         {
    #           key: "TagKey",
    #           value: "TagValue"
    #         }
    #       ],
    #       settings: [
    #         {
    #           name: "containerInsights" # One of: ["containerInsights"],
    #           value: "String"
    #         }
    #       ],
    #       capacity_providers: ["String"],
    #       default_capacity_provider_strategy: [
    #         {
    #           capacity_provider: "String", # required
    #           weight: 1,
    #           base: 1
    #         }
    #       ],
    #       attachments: [
    #         {
    #           id: "String",
    #           type: "String",
    #           status: "String",
    #           details: [
    #             {
    #               name: "String",
    #               value: "String"
    #             }
    #           ]
    #         }
    #       ],
    #       attachments_status: "String",
    #       service_connect_defaults: {
    #         namespace: "String"
    #       }
    #     }
    #   }
    # @return [Types::UpdateClusterSettingsResponse]
    def update_cluster_settings(params = {}, options = {})
      request = build_request(:update_cluster_settings, params)
      request.send_request(options)
    end

    # <p>Updates the Amazon ECS container agent on a specified container instance. Updating the
    # 			Amazon ECS container agent doesn't interrupt running tasks or services on the container
    # 			instance. The process for updating the agent differs depending on whether your container
    # 			instance was launched with the Amazon ECS-optimized AMI or another operating system.</p>
    #          <note>
    #             <p>The <code>UpdateContainerAgent</code> API isn't supported for container instances
    # 				using the Amazon ECS-optimized Amazon Linux 2 (arm64) AMI. To update the container agent,
    # 				you can update the <code>ecs-init</code> package. This updates the agent. For more
    # 				information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/agent-update-ecs-ami.html">Updating the
    # 					Amazon ECS container agent</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #          </note>
    #          <note>
    #             <p>Agent updates with the <code>UpdateContainerAgent</code> API operation do not
    # 				apply to Windows container instances. We recommend that you launch new container
    # 				instances to update the agent version in your Windows clusters.</p>
    #          </note>
    #          <p>The <code>UpdateContainerAgent</code> API requires an Amazon ECS-optimized AMI or Amazon
    # 			Linux AMI with the <code>ecs-init</code> service installed and running. For help
    # 			updating the Amazon ECS container agent on other operating systems, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-agent-update.html#manually_update_agent">Manually updating the Amazon ECS container agent</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    # @param [Hash, Types::UpdateContainerAgentRequest] params
    # @option params [String] :cluster
    #   <p>The short name or full Amazon Resource Name (ARN) of the cluster that your container instance is
    #   			running on. If you do not specify a cluster, the default cluster is assumed.</p>
    # @option params [String] :container_instance
    #   <p>The container instance ID or full ARN entries for the container instance where you
    #   			would like to update the Amazon ECS container agent.</p>
    # @example To update the container agent version on a container instance
    #   # This example updates the container agent version on the specified container instance in cluster MyCluster.
    #   params = {
    #     cluster: "MyCluster",
    #     container_instance: "53ac7152-dcd1-4102-81f5-208962864132"
    #   }
    #   options = {}
    #   response = client.update_container_agent(params, options)
    #   response.to_h #=>
    #   {
    #     container_instance: {
    #       agent_connected: true,
    #       agent_update_status: PENDING,
    #       version_info: {
    #         agent_hash: "4023248",
    #         agent_version: "1.0.0",
    #         docker_version: "DockerVersion: 1.5.0"
    #       }
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster: "String",
    #     container_instance: "String", # required
    #   }
    #   options = {}
    #   response = client.update_container_agent(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     container_instance: {
    #       container_instance_arn: "String",
    #       ec2_instance_id: "String",
    #       capacity_provider_name: "String",
    #       version: 1,
    #       version_info: {
    #         agent_version: "String",
    #         agent_hash: "String",
    #         docker_version: "String"
    #       },
    #       remaining_resources: [
    #         {
    #           name: "String",
    #           type: "String",
    #           double_value: 1.0,
    #           long_value: 1,
    #           integer_value: 1,
    #           string_set_value: ["String"]
    #         }
    #       ],
    #       registered_resources: [
    #         {
    #           name: "String",
    #           type: "String",
    #           double_value: 1.0,
    #           long_value: 1,
    #           integer_value: 1,
    #           string_set_value: ["String"]
    #         }
    #       ],
    #       status: "String",
    #       status_reason: "String",
    #       agent_connected: false,
    #       running_tasks_count: 1,
    #       pending_tasks_count: 1,
    #       agent_update_status: "PENDING" # One of: ["PENDING", "STAGING", "STAGED", "UPDATING", "UPDATED", "FAILED"],
    #       attributes: [
    #         {
    #           name: "String", # required
    #           value: "String",
    #           target_type: "container-instance" # One of: ["container-instance"],
    #           target_id: "String"
    #         }
    #       ],
    #       registered_at: Time.now,
    #       attachments: [
    #         {
    #           id: "String",
    #           type: "String",
    #           status: "String",
    #           details: [
    #             {
    #               name: "String",
    #               value: "String"
    #             }
    #           ]
    #         }
    #       ],
    #       tags: [
    #         {
    #           key: "TagKey",
    #           value: "TagValue"
    #         }
    #       ],
    #       health_status: {
    #         overall_status: "OK" # One of: ["OK", "IMPAIRED", "INSUFFICIENT_DATA", "INITIALIZING"],
    #         details: [
    #           {
    #             type: "CONTAINER_RUNTIME" # One of: ["CONTAINER_RUNTIME"],
    #             status: "OK" # One of: ["OK", "IMPAIRED", "INSUFFICIENT_DATA", "INITIALIZING"],
    #             last_updated: Time.now,
    #             last_status_change: Time.now
    #           }
    #         ]
    #       }
    #     }
    #   }
    # @return [Types::UpdateContainerAgentResponse]
    def update_container_agent(params = {}, options = {})
      request = build_request(:update_container_agent, params)
      request.send_request(options)
    end

    # <p>Modifies the status of an Amazon ECS container instance.</p>
    #          <p>Once a container instance has reached an <code>ACTIVE</code> state, you can change the
    # 			status of a container instance to <code>DRAINING</code> to manually remove an instance
    # 			from a cluster, for example to perform system updates, update the Docker daemon, or
    # 			scale down the cluster size.</p>
    #          <important>
    #             <p>A container instance can't be changed to <code>DRAINING</code> until it has
    # 				reached an <code>ACTIVE</code> status. If the instance is in any other status, an
    # 				error will be received.</p>
    #          </important>
    #          <p>When you set a container instance to <code>DRAINING</code>, Amazon ECS prevents new tasks
    # 			from being scheduled for placement on the container instance and replacement service
    # 			tasks are started on other container instances in the cluster if the resources are
    # 			available. Service tasks on the container instance that are in the <code>PENDING</code>
    # 			state are stopped immediately.</p>
    #          <p>Service tasks on the container instance that are in the <code>RUNNING</code> state are
    # 			stopped and replaced according to the service's deployment configuration parameters,
    # 				<code>minimumHealthyPercent</code> and <code>maximumPercent</code>. You can change
    # 			the deployment configuration of your service using <a href="https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_UpdateService.html">UpdateService</a>.</p>
    #          <ul>
    #             <li>
    #                <p>If <code>minimumHealthyPercent</code> is below 100%, the scheduler can ignore
    # 						<code>desiredCount</code> temporarily during task replacement. For example,
    # 						<code>desiredCount</code> is four tasks, a minimum of 50% allows the
    # 					scheduler to stop two existing tasks before starting two new tasks. If the
    # 					minimum is 100%, the service scheduler can't remove existing tasks until the
    # 					replacement tasks are considered healthy. Tasks for services that do not use a
    # 					load balancer are considered healthy if they're in the <code>RUNNING</code>
    # 					state. Tasks for services that use a load balancer are considered healthy if
    # 					they're in the <code>RUNNING</code> state and are reported as healthy by the
    # 					load balancer.</p>
    #             </li>
    #             <li>
    #                <p>The <code>maximumPercent</code> parameter represents an upper limit on the
    # 					number of running tasks during task replacement. You can use this to define the
    # 					replacement batch size. For example, if <code>desiredCount</code> is four tasks,
    # 					a maximum of 200% starts four new tasks before stopping the four tasks to be
    # 					drained, provided that the cluster resources required to do this are available.
    # 					If the maximum is 100%, then replacement tasks can't start until the draining
    # 					tasks have stopped.</p>
    #             </li>
    #          </ul>
    #          <p>Any <code>PENDING</code> or <code>RUNNING</code> tasks that do not belong to a service
    # 			aren't affected. You must wait for them to finish or stop them manually.</p>
    #          <p>A container instance has completed draining when it has no more <code>RUNNING</code>
    # 			tasks. You can verify this using <a href="https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_ListTasks.html">ListTasks</a>.</p>
    #          <p>When a container instance has been drained, you can set a container instance to
    # 				<code>ACTIVE</code> status and once it has reached that status the Amazon ECS scheduler
    # 			can begin scheduling tasks on the instance again.</p>
    # @param [Hash, Types::UpdateContainerInstancesStateRequest] params
    # @option params [String] :cluster
    #   <p>The short name or full Amazon Resource Name (ARN) of the cluster that hosts the container instance to
    #   			update. If you do not specify a cluster, the default cluster is assumed.</p>
    # @option params [Array<String>] :container_instances
    #   <p>A list of up to 10 container instance IDs or full ARN entries.</p>
    # @option params [String] :status
    #   <p>The container instance state to update the container instance with. The only valid
    #   			values for this action are <code>ACTIVE</code> and <code>DRAINING</code>. A container
    #   			instance can only be updated to <code>DRAINING</code> status once it has reached an
    #   				<code>ACTIVE</code> state. If a container instance is in <code>REGISTERING</code>,
    #   				<code>DEREGISTERING</code>, or <code>REGISTRATION_FAILED</code> state you can
    #   			describe the container instance but can't update the container instance state.</p>
    # @example To update the state of a container instance
    #   # This example updates the state of the specified container instance in the default cluster to DRAINING. 
    #   params = {
    #     cluster: "default",
    #     container_instances: [
    #       "1c3be8ed-df30-47b4-8f1e-6e68ebd01f34"
    #     ],
    #     status: DRAINING
    #   }
    #   options = {}
    #   response = client.update_container_instances_state(params, options)
    #   response.to_h #=>
    #   {
    #     container_instances: [
    #       {
    #         agent_connected: true,
    #         attributes: [
    #           {
    #             name: "ecs.availability-zone",
    #             value: "us-west-2b"
    #           },
    #           {
    #             name: "com.amazonaws.ecs.capability.logging-driver.syslog"
    #           },
    #           {
    #             name: "ecs.instance-type",
    #             value: "c4.xlarge"
    #           },
    #           {
    #             name: "ecs.ami-id",
    #             value: "ami-a2ca61c2"
    #           },
    #           {
    #             name: "com.amazonaws.ecs.capability.task-iam-role-network-host"
    #           },
    #           {
    #             name: "com.amazonaws.ecs.capability.logging-driver.awslogs"
    #           },
    #           {
    #             name: "com.amazonaws.ecs.capability.logging-driver.json-file"
    #           },
    #           {
    #             name: "com.amazonaws.ecs.capability.docker-remote-api.1.17"
    #           },
    #           {
    #             name: "com.amazonaws.ecs.capability.privileged-container"
    #           },
    #           {
    #             name: "com.amazonaws.ecs.capability.docker-remote-api.1.18"
    #           },
    #           {
    #             name: "com.amazonaws.ecs.capability.docker-remote-api.1.19"
    #           },
    #           {
    #             name: "com.amazonaws.ecs.capability.ecr-auth"
    #           },
    #           {
    #             name: "ecs.os-type",
    #             value: "linux"
    #           },
    #           {
    #             name: "com.amazonaws.ecs.capability.docker-remote-api.1.20"
    #           },
    #           {
    #             name: "com.amazonaws.ecs.capability.docker-remote-api.1.21"
    #           },
    #           {
    #             name: "com.amazonaws.ecs.capability.docker-remote-api.1.22"
    #           },
    #           {
    #             name: "com.amazonaws.ecs.capability.task-iam-role"
    #           },
    #           {
    #             name: "com.amazonaws.ecs.capability.docker-remote-api.1.23"
    #           }
    #         ],
    #         container_instance_arn: "arn:aws:ecs:us-west-2:012345678910:container-instance/default/1c3be8ed-df30-47b4-8f1e-6e68ebd01f34",
    #         ec2_instance_id: "i-05d99c76955727ec6",
    #         pending_tasks_count: 0,
    #         registered_resources: [
    #           {
    #             double_value: 0,
    #             integer_value: 4096,
    #             long_value: 0,
    #             name: "CPU",
    #             type: "INTEGER"
    #           },
    #           {
    #             double_value: 0,
    #             integer_value: 7482,
    #             long_value: 0,
    #             name: "MEMORY",
    #             type: "INTEGER"
    #           },
    #           {
    #             double_value: 0,
    #             integer_value: 0,
    #             long_value: 0,
    #             name: "PORTS",
    #             string_set_value: [
    #               "22",
    #               "2376",
    #               "2375",
    #               "51678",
    #               "51679"
    #             ],
    #             type: "STRINGSET"
    #           },
    #           {
    #             double_value: 0,
    #             integer_value: 0,
    #             long_value: 0,
    #             name: "PORTS_UDP",
    #             string_set_value: [
    #             ],
    #             type: "STRINGSET"
    #           }
    #         ],
    #         remaining_resources: [
    #           {
    #             double_value: 0,
    #             integer_value: 4096,
    #             long_value: 0,
    #             name: "CPU",
    #             type: "INTEGER"
    #           },
    #           {
    #             double_value: 0,
    #             integer_value: 7482,
    #             long_value: 0,
    #             name: "MEMORY",
    #             type: "INTEGER"
    #           },
    #           {
    #             double_value: 0,
    #             integer_value: 0,
    #             long_value: 0,
    #             name: "PORTS",
    #             string_set_value: [
    #               "22",
    #               "2376",
    #               "2375",
    #               "51678",
    #               "51679"
    #             ],
    #             type: "STRINGSET"
    #           },
    #           {
    #             double_value: 0,
    #             integer_value: 0,
    #             long_value: 0,
    #             name: "PORTS_UDP",
    #             string_set_value: [
    #             ],
    #             type: "STRINGSET"
    #           }
    #         ],
    #         running_tasks_count: 0,
    #         status: "DRAINING",
    #         version: 30,
    #         version_info: {
    #           agent_hash: "efe53c6",
    #           agent_version: "1.13.1",
    #           docker_version: "DockerVersion: 1.11.2"
    #         }
    #       }
    #     ],
    #     failures: [
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster: "String",
    #     container_instances: ["String"], # required
    #     status: "ACTIVE" # One of: ["ACTIVE", "DRAINING", "REGISTERING", "DEREGISTERING", "REGISTRATION_FAILED"], # required
    #   }
    #   options = {}
    #   response = client.update_container_instances_state(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     container_instances: [
    #       {
    #         container_instance_arn: "String",
    #         ec2_instance_id: "String",
    #         capacity_provider_name: "String",
    #         version: 1,
    #         version_info: {
    #           agent_version: "String",
    #           agent_hash: "String",
    #           docker_version: "String"
    #         },
    #         remaining_resources: [
    #           {
    #             name: "String",
    #             type: "String",
    #             double_value: 1.0,
    #             long_value: 1,
    #             integer_value: 1,
    #             string_set_value: ["String"]
    #           }
    #         ],
    #         registered_resources: [
    #           {
    #             name: "String",
    #             type: "String",
    #             double_value: 1.0,
    #             long_value: 1,
    #             integer_value: 1,
    #             string_set_value: ["String"]
    #           }
    #         ],
    #         status: "String",
    #         status_reason: "String",
    #         agent_connected: false,
    #         running_tasks_count: 1,
    #         pending_tasks_count: 1,
    #         agent_update_status: "PENDING" # One of: ["PENDING", "STAGING", "STAGED", "UPDATING", "UPDATED", "FAILED"],
    #         attributes: [
    #           {
    #             name: "String", # required
    #             value: "String",
    #             target_type: "container-instance" # One of: ["container-instance"],
    #             target_id: "String"
    #           }
    #         ],
    #         registered_at: Time.now,
    #         attachments: [
    #           {
    #             id: "String",
    #             type: "String",
    #             status: "String",
    #             details: [
    #               {
    #                 name: "String",
    #                 value: "String"
    #               }
    #             ]
    #           }
    #         ],
    #         tags: [
    #           {
    #             key: "TagKey",
    #             value: "TagValue"
    #           }
    #         ],
    #         health_status: {
    #           overall_status: "OK" # One of: ["OK", "IMPAIRED", "INSUFFICIENT_DATA", "INITIALIZING"],
    #           details: [
    #             {
    #               type: "CONTAINER_RUNTIME" # One of: ["CONTAINER_RUNTIME"],
    #               status: "OK" # One of: ["OK", "IMPAIRED", "INSUFFICIENT_DATA", "INITIALIZING"],
    #               last_updated: Time.now,
    #               last_status_change: Time.now
    #             }
    #           ]
    #         }
    #       }
    #     ],
    #     failures: [
    #       {
    #         arn: "String",
    #         reason: "String",
    #         detail: "String"
    #       }
    #     ]
    #   }
    # @return [Types::UpdateContainerInstancesStateResponse]
    def update_container_instances_state(params = {}, options = {})
      request = build_request(:update_container_instances_state, params)
      request.send_request(options)
    end

    # <p>Modifies the parameters of a service.</p>
    #          <note>
    #             <p>On March 21, 2024, a change was made to resolve the task definition revision before authorization. When a task definition revision is not specified, authorization will occur using the latest revision of a task definition.</p>
    #          </note>
    #          <p>For services using the rolling update (<code>ECS</code>) you can update the desired
    # 			count, deployment configuration, network configuration, load balancers, service
    # 			registries, enable ECS managed tags option, propagate tags option, task placement
    # 			constraints and strategies, and task definition. When you update any of these
    # 			parameters, Amazon ECS starts new tasks with the new configuration. </p>
    #          <p>You can attach Amazon EBS volumes to Amazon ECS tasks by configuring the volume when starting or
    # 			running a task, or when creating or updating a service. For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ebs-volumes.html#ebs-volume-types">Amazon EBS volumes</a> in the <i>Amazon Elastic Container Service Developer Guide</i>. You can update
    # 			your volume configurations and trigger a new deployment.
    # 				<code>volumeConfigurations</code> is only supported for REPLICA service and not
    # 			DAEMON service. If you leave <code>volumeConfigurations</code>
    #             <code>null</code>, it doesn't trigger a new deployment. For more information on volumes,
    # 			see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ebs-volumes.html#ebs-volume-types">Amazon EBS volumes</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #          <p>For services using the blue/green (<code>CODE_DEPLOY</code>) deployment controller,
    # 			only the desired count, deployment configuration, health check grace period, task
    # 			placement constraints and strategies, enable ECS managed tags option, and propagate tags
    # 			can be updated using this API. If the network configuration, platform version, task
    # 			definition, or load balancer need to be updated, create a new CodeDeploy deployment. For more
    # 			information, see <a href="https://docs.aws.amazon.com/codedeploy/latest/APIReference/API_CreateDeployment.html">CreateDeployment</a> in the <i>CodeDeploy API Reference</i>.</p>
    #          <p>For services using an external deployment controller, you can update only the desired
    # 			count, task placement constraints and strategies, health check grace period, enable ECS
    # 			managed tags option, and propagate tags option, using this API. If the launch type, load
    # 			balancer, network configuration, platform version, or task definition need to be
    # 			updated, create a new task set For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_CreateTaskSet.html">CreateTaskSet</a>.</p>
    #          <p>You can add to or subtract from the number of instantiations of a task definition in a
    # 			service by specifying the cluster that the service is running in and a new
    # 				<code>desiredCount</code> parameter.</p>
    #          <p>You can attach Amazon EBS volumes to Amazon ECS tasks by configuring the volume when starting or
    # 			running a task, or when creating or updating a service. For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ebs-volumes.html#ebs-volume-types">Amazon EBS volumes</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #          <p>If you have updated the container image of your application, you can create a new task
    # 			definition with that image and deploy it to your service. The service scheduler uses the
    # 			minimum healthy percent and maximum percent parameters (in the service's deployment
    # 			configuration) to determine the deployment strategy.</p>
    #          <note>
    #             <p>If your updated Docker image uses the same tag as what is in the existing task
    # 				definition for your service (for example, <code>my_image:latest</code>), you don't
    # 				need to create a new revision of your task definition. You can update the service
    # 				using the <code>forceNewDeployment</code> option. The new tasks launched by the
    # 				deployment pull the current image/tag combination from your repository when they
    # 				start.</p>
    #          </note>
    #          <p>You can also update the deployment configuration of a service. When a deployment is
    # 			triggered by updating the task definition of a service, the service scheduler uses the
    # 			deployment configuration parameters, <code>minimumHealthyPercent</code> and
    # 				<code>maximumPercent</code>, to determine the deployment strategy.</p>
    #          <ul>
    #             <li>
    #                <p>If <code>minimumHealthyPercent</code> is below 100%, the scheduler can ignore
    # 						<code>desiredCount</code> temporarily during a deployment. For example, if
    # 						<code>desiredCount</code> is four tasks, a minimum of 50% allows the
    # 					scheduler to stop two existing tasks before starting two new tasks. Tasks for
    # 					services that don't use a load balancer are considered healthy if they're in the
    # 						<code>RUNNING</code> state. Tasks for services that use a load balancer are
    # 					considered healthy if they're in the <code>RUNNING</code> state and are reported
    # 					as healthy by the load balancer.</p>
    #             </li>
    #             <li>
    #                <p>The <code>maximumPercent</code> parameter represents an upper limit on the
    # 					number of running tasks during a deployment. You can use it to define the
    # 					deployment batch size. For example, if <code>desiredCount</code> is four tasks,
    # 					a maximum of 200% starts four new tasks before stopping the four older tasks
    # 					(provided that the cluster resources required to do this are available).</p>
    #             </li>
    #          </ul>
    #          <p>When <a href="https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_UpdateService.html">UpdateService</a>
    # 			stops a task during a deployment, the equivalent of <code>docker stop</code> is issued
    # 			to the containers running in the task. This results in a <code>SIGTERM</code> and a
    # 			30-second timeout. After this, <code>SIGKILL</code> is sent and the containers are
    # 			forcibly stopped. If the container handles the <code>SIGTERM</code> gracefully and exits
    # 			within 30 seconds from receiving it, no <code>SIGKILL</code> is sent.</p>
    #          <p>When the service scheduler launches new tasks, it determines task placement in your
    # 			cluster with the following logic.</p>
    #          <ul>
    #             <li>
    #                <p>Determine which of the container instances in your cluster can support your
    # 					service's task definition. For example, they have the required CPU, memory,
    # 					ports, and container instance attributes.</p>
    #             </li>
    #             <li>
    #                <p>By default, the service scheduler attempts to balance tasks across
    # 					Availability Zones in this manner even though you can choose a different
    # 					placement strategy.</p>
    #                <ul>
    #                   <li>
    #                      <p>Sort the valid container instances by the fewest number of running
    # 							tasks for this service in the same Availability Zone as the instance.
    # 							For example, if zone A has one running service task and zones B and C
    # 							each have zero, valid container instances in either zone B or C are
    # 							considered optimal for placement.</p>
    #                   </li>
    #                   <li>
    #                      <p>Place the new service task on a valid container instance in an optimal
    # 							Availability Zone (based on the previous steps), favoring container
    # 							instances with the fewest number of running tasks for this
    # 							service.</p>
    #                   </li>
    #                </ul>
    #             </li>
    #          </ul>
    #          <p>When the service scheduler stops running tasks, it attempts to maintain balance across
    # 			the Availability Zones in your cluster using the following logic: </p>
    #          <ul>
    #             <li>
    #                <p>Sort the container instances by the largest number of running tasks for this
    # 					service in the same Availability Zone as the instance. For example, if zone A
    # 					has one running service task and zones B and C each have two, container
    # 					instances in either zone B or C are considered optimal for termination.</p>
    #             </li>
    #             <li>
    #                <p>Stop the task on a container instance in an optimal Availability Zone (based
    # 					on the previous steps), favoring container instances with the largest number of
    # 					running tasks for this service.</p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::UpdateServiceRequest] params
    # @option params [String] :cluster
    #   <p>The short name or full Amazon Resource Name (ARN) of the cluster that your service runs on.
    #   			If you do not specify a cluster, the default cluster is assumed.</p>
    #            <p>You can't change the cluster name.</p>
    # @option params [String] :service
    #   <p>The name of the service to update.</p>
    # @option params [Integer] :desired_count
    #   <p>The number of instantiations of the task to place and keep running in your
    #   			service.</p>
    #            <p>This parameter doesn't trigger a new service deployment.</p>
    # @option params [String] :task_definition
    #   <p>The <code>family</code> and <code>revision</code> (<code>family:revision</code>) or
    #   			full ARN of the task definition to run in your service. If a <code>revision</code> is
    #   			not specified, the latest <code>ACTIVE</code> revision is used. If you modify the task
    #   			definition with <code>UpdateService</code>, Amazon ECS spawns a task with the new version of
    #   			the task definition and then stops an old task after the new version is running.</p>
    #            <p>This parameter triggers a new service deployment.</p>
    # @option params [Array<Types::CapacityProviderStrategyItem>] :capacity_provider_strategy
    #   <p>The details of a capacity provider strategy. You can set a capacity provider when you
    #   			create a cluster, run a task, or update a service.</p>
    #            <p>When you use Fargate, the capacity providers are <code>FARGATE</code> or
    #   				<code>FARGATE_SPOT</code>.</p>
    #            <p>When you use Amazon EC2, the capacity providers are Auto Scaling groups.</p>
    #            <p>You can change capacity providers for rolling deployments and blue/green
    #   			deployments.</p>
    #            <p>The following list provides the valid transitions:</p>
    #            <ul>
    #               <li>
    #                  <p>Update the Fargate launch type to an Auto Scaling group capacity provider.</p>
    #               </li>
    #               <li>
    #                  <p>Update the Amazon EC2 launch type to a Fargate capacity provider.</p>
    #               </li>
    #               <li>
    #                  <p>Update the Fargate capacity provider to an Auto Scaling group capacity provider.</p>
    #               </li>
    #               <li>
    #                  <p>Update the Amazon EC2 capacity provider to a Fargate capacity provider. </p>
    #               </li>
    #               <li>
    #                  <p>Update the Auto Scaling group or Fargate capacity provider back to the launch type.</p>
    #                  <p>Pass an empty list in the <code>capacityProviderStrategy</code> parameter.</p>
    #               </li>
    #            </ul>
    #            <p>For information about Amazon Web Services CDK considerations, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/update-service-parameters.html">Amazon Web Services CDK considerations</a>.</p>
    #            <p>This parameter doesn't trigger a new service deployment.</p>
    # @option params [Types::DeploymentConfiguration] :deployment_configuration
    #   <p>Optional deployment parameters that control how many tasks run during the deployment
    #   			and the ordering of stopping and starting tasks.</p>
    #            <p>This parameter doesn't trigger a new service deployment.</p>
    # @option params [String] :availability_zone_rebalancing
    #   <p>Indicates whether to use Availability Zone rebalancing for the service.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-rebalancing.html">Balancing an Amazon ECS service across Availability Zones</a> in
    #   			the <i>
    #                  <i>Amazon Elastic Container Service Developer Guide</i>
    #               </i>.</p>
    #            <p>The default behavior of <code>AvailabilityZoneRebalancing</code> differs between create and update requests:</p>
    #            <ul>
    #               <li>
    #                  <p>For create service requests, when no value is specified for <code>AvailabilityZoneRebalancing</code>, Amazon ECS defaults the value to <code>ENABLED</code>.</p>
    #               </li>
    #               <li>
    #                  <p>For update service requests, when no value is specified for <code>AvailabilityZoneRebalancing</code>, Amazon ECS defaults to the existing service’s <code>AvailabilityZoneRebalancing</code> value. If the service never had an <code>AvailabilityZoneRebalancing</code> value set, Amazon ECS treats this as <code>DISABLED</code>.</p>
    #               </li>
    #            </ul>
    #            <p>This parameter doesn't trigger a new service deployment.</p>
    # @option params [Types::NetworkConfiguration] :network_configuration
    #   <p>An object representing the network configuration for the service.</p>
    #            <p>This parameter triggers a new service deployment.</p>
    # @option params [Array<Types::PlacementConstraint>] :placement_constraints
    #   <p>An array of task placement constraint objects to update the service to use. If no
    #   			value is specified, the existing placement constraints for the service will remain
    #   			unchanged. If this value is specified, it will override any existing placement
    #   			constraints defined for the service. To remove all existing placement constraints,
    #   			specify an empty array.</p>
    #            <p>You can specify a maximum of 10 constraints for each task. This limit includes
    #   			constraints in the task definition and those specified at runtime.</p>
    #            <p>This parameter doesn't trigger a new service deployment.</p>
    # @option params [Array<Types::PlacementStrategy>] :placement_strategy
    #   <p>The task placement strategy objects to update the service to use. If no value is
    #   			specified, the existing placement strategy for the service will remain unchanged. If
    #   			this value is specified, it will override the existing placement strategy defined for
    #   			the service. To remove an existing placement strategy, specify an empty object.</p>
    #            <p>You can specify a maximum of five strategy rules for each service.</p>
    #            <p>This parameter doesn't trigger a new service deployment.</p>
    # @option params [String] :platform_version
    #   <p>The platform version that your tasks in the service run on. A platform version is only
    #   			specified for tasks using the Fargate launch type. If a platform version
    #   			is not specified, the <code>LATEST</code> platform version is used. For more
    #   			information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/platform_versions.html">Fargate Platform
    #   				Versions</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #            <p>This parameter triggers a new service deployment.</p>
    # @option params [Boolean] :force_new_deployment
    #   <p>Determines whether to force a new deployment of the service. By default, deployments
    #   			aren't forced. You can use this option to start a new deployment with no service
    #   			definition changes. For example, you can update a service's tasks to use a newer Docker
    #   			image with the same image/tag combination (<code>my_image:latest</code>) or to roll
    #   			Fargate tasks onto a newer platform version.</p>
    # @option params [Integer] :health_check_grace_period_seconds
    #   <p>The period of time, in seconds, that the Amazon ECS service scheduler ignores unhealthy
    #   			Elastic Load Balancing, VPC Lattice, and container health checks after a task has first started. If you don't
    #   			specify a health check grace period value, the default value of <code>0</code> is used.
    #   			If you don't use any of the health checks, then
    #   				<code>healthCheckGracePeriodSeconds</code> is unused.</p>
    #            <p>If your service's tasks take a while to start and respond to health checks, you can
    #   			specify a health check grace period of up to 2,147,483,647 seconds (about 69 years).
    #   			During that time, the Amazon ECS service scheduler ignores health check status. This grace
    #   			period can prevent the service scheduler from marking tasks as unhealthy and stopping
    #   			them before they have time to come up.</p>
    #            <p>If your service has more running tasks than desired, unhealthy tasks in the grace period might be stopped to reach the desired count.</p>
    #            <p>This parameter doesn't trigger a new service deployment.</p>
    # @option params [Types::DeploymentController] :deployment_controller
    #   <p>The deployment controller to use for the service. </p>
    # @option params [Boolean] :enable_execute_command
    #   <p>If <code>true</code>, this enables execute command functionality on all task
    #   			containers.</p>
    #            <p>If you do not want to override the value that was set when the service was created,
    #   			you can set this to <code>null</code> when performing this action.</p>
    #            <p>This parameter doesn't trigger a new service deployment.</p>
    # @option params [Boolean] :enable_ecs_managed_tags
    #   <p>Determines whether to turn on Amazon ECS managed tags for the tasks in the service. For
    #   			more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-using-tags.html">Tagging Your Amazon ECS
    #   				Resources</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #            <p>Only tasks launched after the update will reflect the update. To update the tags on
    #   			all tasks, set <code>forceNewDeployment</code> to <code>true</code>, so that Amazon ECS
    #   			starts new tasks with the updated tags.</p>
    #            <p>This parameter doesn't trigger a new service deployment.</p>
    # @option params [Array<Types::LoadBalancer>] :load_balancers
    #   <note>
    #               <p>You must have a service-linked role when you update this property</p>
    #            </note>
    #            <p>A list of Elastic Load Balancing load balancer objects. It contains the load balancer name, the
    #   			container name, and the container port to access from the load balancer. The container
    #   			name is as it appears in a container definition.</p>
    #            <p>When you add, update, or remove a load balancer configuration, Amazon ECS starts new tasks
    #   			with the updated Elastic Load Balancing configuration, and then stops the old tasks when the new tasks
    #   			are running.</p>
    #            <p>For services that use rolling updates, you can add, update, or remove Elastic Load Balancing target
    #   			groups. You can update from a single target group to multiple target groups and from
    #   			multiple target groups to a single target group.</p>
    #            <p>For services that use blue/green deployments, you can update Elastic Load Balancing target groups by
    #   			using <code>
    #                  <a href="https://docs.aws.amazon.com/codedeploy/latest/APIReference/API_CreateDeployment.html">CreateDeployment</a>
    #               </code> through CodeDeploy. Note that multiple target groups
    #   			are not supported for blue/green deployments. For more information see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/register-multiple-targetgroups.html">Register
    #   				multiple target groups with a service</a> in the <i>Amazon Elastic Container Service Developer Guide</i>. </p>
    #            <p>For services that use the external deployment controller, you can add, update, or
    #   			remove load balancers by using <a href="https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_CreateTaskSet.html">CreateTaskSet</a>.
    #   			Note that multiple target groups are not supported for external deployments. For more
    #   			information see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/register-multiple-targetgroups.html">Register
    #   				multiple target groups with a service</a> in the <i>Amazon Elastic Container Service Developer Guide</i>. </p>
    #            <p>You can remove existing <code>loadBalancers</code> by passing an empty list.</p>
    #            <p>This parameter triggers a new service deployment.</p>
    # @option params [String] :propagate_tags
    #   <p>Determines whether to propagate the tags from the task definition or the service to
    #   			the task. If no value is specified, the tags aren't propagated.</p>
    #            <p>Only tasks launched after the update will reflect the update. To update the tags on
    #   			all tasks, set <code>forceNewDeployment</code> to <code>true</code>, so that Amazon ECS
    #   			starts new tasks with the updated tags.</p>
    #            <p>This parameter doesn't trigger a new service deployment.</p>
    # @option params [Array<Types::ServiceRegistry>] :service_registries
    #   <note>
    #               <p>You must have a service-linked role when you update this property.</p>
    #               <p>For more information about the role see the <code>CreateService</code> request
    #   				parameter <a href="https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_CreateService.html#ECS-CreateService-request-role">
    #                     <code>role</code>
    #                  </a>. </p>
    #            </note>
    #            <p>The details for the service discovery registries to assign to this service. For more
    #   			information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-discovery.html">Service
    #   				Discovery</a>.</p>
    #            <p>When you add, update, or remove the service registries configuration, Amazon ECS starts new
    #   			tasks with the updated service registries configuration, and then stops the old tasks
    #   			when the new tasks are running.</p>
    #            <p>You can remove existing <code>serviceRegistries</code> by passing an empty
    #   			list.</p>
    #            <p>This parameter triggers a new service deployment.</p>
    # @option params [Types::ServiceConnectConfiguration] :service_connect_configuration
    #   <p>The configuration for this service to discover and connect to
    #   	services, and be discovered by, and connected from, other services within a namespace.</p>
    #            <p>Tasks that run in a namespace can use short names to connect
    #   	to services in the namespace. Tasks can connect to services across all of the clusters in the namespace.
    #   	Tasks connect through a managed proxy container
    #   	that collects logs and metrics for increased visibility.
    #   	Only the tasks that Amazon ECS services create are supported with Service Connect.
    #   	For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-connect.html">Service Connect</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    #            <p>This parameter triggers a new service deployment.</p>
    # @option params [Array<Types::ServiceVolumeConfiguration>] :volume_configurations
    #   <p>The details of the volume that was <code>configuredAtLaunch</code>. You can configure
    #   			the size, volumeType, IOPS, throughput, snapshot and encryption in <a href="https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_ServiceManagedEBSVolumeConfiguration.html">ServiceManagedEBSVolumeConfiguration</a>. The <code>name</code> of the volume
    #   			must match the <code>name</code> from the task definition. If set to null, no new
    #   			deployment is triggered. Otherwise, if this configuration differs from the existing one,
    #   			it triggers a new deployment.</p>
    #            <p>This parameter triggers a new service deployment.</p>
    # @option params [Array<Types::VpcLatticeConfiguration>] :vpc_lattice_configurations
    #   <p>An object representing the VPC Lattice configuration for the service being
    #   			updated.</p>
    #            <p>This parameter triggers a new service deployment.</p>
    # @example To change the number of tasks in a service
    #   # This example updates the desired count of the my-http-service service to 10.
    #   params = {
    #     service: "my-http-service",
    #     desired_count: 10
    #   }
    #   options = {}
    #   response = client.update_service(params, options)
    #   response.to_h #=>
    #   {}
    # @example To change the task definition used in a service
    #   # This example updates the my-http-service service to use the amazon-ecs-sample task definition.
    #   params = {
    #     service: "my-http-service",
    #     task_definition: "amazon-ecs-sample"
    #   }
    #   options = {}
    #   response = client.update_service(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster: "String",
    #     service: "String", # required
    #     desired_count: 1,
    #     task_definition: "String",
    #     capacity_provider_strategy: [
    #       {
    #         capacity_provider: "String", # required
    #         weight: 1,
    #         base: 1
    #       }
    #     ],
    #     deployment_configuration: {
    #       deployment_circuit_breaker: {
    #         enable: false, # required
    #         rollback: false, # required
    #       },
    #       maximum_percent: 1,
    #       minimum_healthy_percent: 1,
    #       alarms: {
    #         alarm_names: ["String"], # required
    #         rollback: false, # required
    #         enable: false, # required
    #       },
    #       strategy: "ROLLING" # One of: ["ROLLING", "BLUE_GREEN"],
    #       bake_time_in_minutes: 1,
    #       lifecycle_hooks: [
    #         {
    #           hook_target_arn: "String",
    #           role_arn: "IAMRoleArn",
    #           lifecycle_stages: ["RECONCILE_SERVICE" # One of: ["RECONCILE_SERVICE", "PRE_SCALE_UP", "POST_SCALE_UP", "TEST_TRAFFIC_SHIFT", "POST_TEST_TRAFFIC_SHIFT", "PRODUCTION_TRAFFIC_SHIFT", "POST_PRODUCTION_TRAFFIC_SHIFT"]],
    #           hook_details: ""null""
    #         }
    #       ]
    #     },
    #     availability_zone_rebalancing: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #     network_configuration: {
    #       awsvpc_configuration: {
    #         subnets: ["String"], # required
    #         security_groups: ["String"],
    #         assign_public_ip: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #       }
    #     },
    #     placement_constraints: [
    #       {
    #         type: "distinctInstance" # One of: ["distinctInstance", "memberOf"],
    #         expression: "String"
    #       }
    #     ],
    #     placement_strategy: [
    #       {
    #         type: "random" # One of: ["random", "spread", "binpack"],
    #         field: "String"
    #       }
    #     ],
    #     platform_version: "String",
    #     force_new_deployment: false,
    #     health_check_grace_period_seconds: 1,
    #     deployment_controller: {
    #       type: "ECS" # One of: ["ECS", "CODE_DEPLOY", "EXTERNAL"], # required
    #     },
    #     enable_execute_command: false,
    #     enable_ecs_managed_tags: false,
    #     load_balancers: [
    #       {
    #         target_group_arn: "String",
    #         load_balancer_name: "String",
    #         container_name: "String",
    #         container_port: 1,
    #         advanced_configuration: {
    #           alternate_target_group_arn: "String",
    #           production_listener_rule: "String",
    #           test_listener_rule: "String",
    #           role_arn: "String"
    #         }
    #       }
    #     ],
    #     propagate_tags: "TASK_DEFINITION" # One of: ["TASK_DEFINITION", "SERVICE", "NONE"],
    #     service_registries: [
    #       {
    #         registry_arn: "String",
    #         port: 1,
    #         container_name: "String",
    #         container_port: 1
    #       }
    #     ],
    #     service_connect_configuration: {
    #       enabled: false, # required
    #       namespace: "String",
    #       services: [
    #         {
    #           port_name: "String", # required
    #           discovery_name: "String",
    #           client_aliases: [
    #             {
    #               port: 1, # required
    #               dns_name: "String",
    #               test_traffic_rules: {
    #                 header: { # required
    #                   name: "String", # required
    #                   value: {
    #                     exact: "String", # required
    #                   }
    #                 }
    #               }
    #             }
    #           ],
    #           ingress_port_override: 1,
    #           timeout: {
    #             idle_timeout_seconds: 1,
    #             per_request_timeout_seconds: 1
    #           },
    #           tls: {
    #             issuer_certificate_authority: { # required
    #               aws_pca_authority_arn: "String"
    #             },
    #             kms_key: "String",
    #             role_arn: "String"
    #           }
    #         }
    #       ],
    #       log_configuration: {
    #         log_driver: "json-file" # One of: ["json-file", "syslog", "journald", "gelf", "fluentd", "awslogs", "splunk", "awsfirelens"], # required
    #         options: {
    #           "String" => "String"
    #         },
    #         secret_options: [
    #           {
    #             name: "String", # required
    #             value_from: "String", # required
    #           }
    #         ]
    #       }
    #     },
    #     volume_configurations: [
    #       {
    #         name: "ECSVolumeName", # required
    #         managed_ebs_volume: {
    #           encrypted: false,
    #           kms_key_id: "EBSKMSKeyId",
    #           volume_type: "EBSVolumeType",
    #           size_in_gi_b: 1,
    #           snapshot_id: "EBSSnapshotId",
    #           volume_initialization_rate: 1,
    #           iops: 1,
    #           throughput: 1,
    #           tag_specifications: [
    #             {
    #               resource_type: "volume" # One of: ["volume"], # required
    #               tags: [
    #                 {
    #                   key: "TagKey",
    #                   value: "TagValue"
    #                 }
    #               ],
    #               propagate_tags: "TASK_DEFINITION" # One of: ["TASK_DEFINITION", "SERVICE", "NONE"]
    #             }
    #           ],
    #           role_arn: "IAMRoleArn", # required
    #           filesystem_type: "ext3" # One of: ["ext3", "ext4", "xfs", "ntfs"]
    #         }
    #       }
    #     ],
    #     vpc_lattice_configurations: [
    #       {
    #         role_arn: "IAMRoleArn", # required
    #         target_group_arn: "String", # required
    #         port_name: "String", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_service(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     service: {
    #       service_arn: "String",
    #       service_name: "String",
    #       cluster_arn: "String",
    #       load_balancers: [
    #         {
    #           target_group_arn: "String",
    #           load_balancer_name: "String",
    #           container_name: "String",
    #           container_port: 1,
    #           advanced_configuration: {
    #             alternate_target_group_arn: "String",
    #             production_listener_rule: "String",
    #             test_listener_rule: "String",
    #             role_arn: "String"
    #           }
    #         }
    #       ],
    #       service_registries: [
    #         {
    #           registry_arn: "String",
    #           port: 1,
    #           container_name: "String",
    #           container_port: 1
    #         }
    #       ],
    #       status: "String",
    #       desired_count: 1,
    #       running_count: 1,
    #       pending_count: 1,
    #       launch_type: "EC2" # One of: ["EC2", "FARGATE", "EXTERNAL", "MANAGED_INSTANCES"],
    #       capacity_provider_strategy: [
    #         {
    #           capacity_provider: "String", # required
    #           weight: 1,
    #           base: 1
    #         }
    #       ],
    #       platform_version: "String",
    #       platform_family: "String",
    #       task_definition: "String",
    #       deployment_configuration: {
    #         deployment_circuit_breaker: {
    #           enable: false, # required
    #           rollback: false, # required
    #         },
    #         maximum_percent: 1,
    #         minimum_healthy_percent: 1,
    #         alarms: {
    #           alarm_names: ["String"], # required
    #           rollback: false, # required
    #           enable: false, # required
    #         },
    #         strategy: "ROLLING" # One of: ["ROLLING", "BLUE_GREEN"],
    #         bake_time_in_minutes: 1,
    #         lifecycle_hooks: [
    #           {
    #             hook_target_arn: "String",
    #             role_arn: "IAMRoleArn",
    #             lifecycle_stages: ["RECONCILE_SERVICE" # One of: ["RECONCILE_SERVICE", "PRE_SCALE_UP", "POST_SCALE_UP", "TEST_TRAFFIC_SHIFT", "POST_TEST_TRAFFIC_SHIFT", "PRODUCTION_TRAFFIC_SHIFT", "POST_PRODUCTION_TRAFFIC_SHIFT"]],
    #             hook_details: ""null""
    #           }
    #         ]
    #       },
    #       task_sets: [
    #         {
    #           id: "String",
    #           task_set_arn: "String",
    #           service_arn: "String",
    #           cluster_arn: "String",
    #           started_by: "String",
    #           external_id: "String",
    #           status: "String",
    #           task_definition: "String",
    #           computed_desired_count: 1,
    #           pending_count: 1,
    #           running_count: 1,
    #           created_at: Time.now,
    #           updated_at: Time.now,
    #           launch_type: "EC2" # One of: ["EC2", "FARGATE", "EXTERNAL", "MANAGED_INSTANCES"],
    #           capacity_provider_strategy: [
    #             {
    #               capacity_provider: "String", # required
    #               weight: 1,
    #               base: 1
    #             }
    #           ],
    #           platform_version: "String",
    #           platform_family: "String",
    #           network_configuration: {
    #             awsvpc_configuration: {
    #               subnets: ["String"], # required
    #               security_groups: ["String"],
    #               assign_public_ip: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #             }
    #           },
    #           load_balancers: [
    #             {
    #               target_group_arn: "String",
    #               load_balancer_name: "String",
    #               container_name: "String",
    #               container_port: 1,
    #               advanced_configuration: {
    #                 alternate_target_group_arn: "String",
    #                 production_listener_rule: "String",
    #                 test_listener_rule: "String",
    #                 role_arn: "String"
    #               }
    #             }
    #           ],
    #           service_registries: [
    #             {
    #               registry_arn: "String",
    #               port: 1,
    #               container_name: "String",
    #               container_port: 1
    #             }
    #           ],
    #           scale: {
    #             value: 1.0,
    #             unit: "PERCENT" # One of: ["PERCENT"]
    #           },
    #           stability_status: "STEADY_STATE" # One of: ["STEADY_STATE", "STABILIZING"],
    #           stability_status_at: Time.now,
    #           tags: [
    #             {
    #               key: "TagKey",
    #               value: "TagValue"
    #             }
    #           ],
    #           fargate_ephemeral_storage: {
    #             kms_key_id: "String"
    #           }
    #         }
    #       ],
    #       deployments: [
    #         {
    #           id: "String",
    #           status: "String",
    #           task_definition: "String",
    #           desired_count: 1,
    #           pending_count: 1,
    #           running_count: 1,
    #           failed_tasks: 1,
    #           created_at: Time.now,
    #           updated_at: Time.now,
    #           capacity_provider_strategy: [
    #             {
    #               capacity_provider: "String", # required
    #               weight: 1,
    #               base: 1
    #             }
    #           ],
    #           launch_type: "EC2" # One of: ["EC2", "FARGATE", "EXTERNAL", "MANAGED_INSTANCES"],
    #           platform_version: "String",
    #           platform_family: "String",
    #           network_configuration: {
    #             awsvpc_configuration: {
    #               subnets: ["String"], # required
    #               security_groups: ["String"],
    #               assign_public_ip: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #             }
    #           },
    #           rollout_state: "COMPLETED" # One of: ["COMPLETED", "FAILED", "IN_PROGRESS"],
    #           rollout_state_reason: "String",
    #           service_connect_configuration: {
    #             enabled: false, # required
    #             namespace: "String",
    #             services: [
    #               {
    #                 port_name: "String", # required
    #                 discovery_name: "String",
    #                 client_aliases: [
    #                   {
    #                     port: 1, # required
    #                     dns_name: "String",
    #                     test_traffic_rules: {
    #                       header: { # required
    #                         name: "String", # required
    #                         value: {
    #                           exact: "String", # required
    #                         }
    #                       }
    #                     }
    #                   }
    #                 ],
    #                 ingress_port_override: 1,
    #                 timeout: {
    #                   idle_timeout_seconds: 1,
    #                   per_request_timeout_seconds: 1
    #                 },
    #                 tls: {
    #                   issuer_certificate_authority: { # required
    #                     aws_pca_authority_arn: "String"
    #                   },
    #                   kms_key: "String",
    #                   role_arn: "String"
    #                 }
    #               }
    #             ],
    #             log_configuration: {
    #               log_driver: "json-file" # One of: ["json-file", "syslog", "journald", "gelf", "fluentd", "awslogs", "splunk", "awsfirelens"], # required
    #               options: {
    #                 "String" => "String"
    #               },
    #               secret_options: [
    #                 {
    #                   name: "String", # required
    #                   value_from: "String", # required
    #                 }
    #               ]
    #             }
    #           },
    #           service_connect_resources: [
    #             {
    #               discovery_name: "String",
    #               discovery_arn: "String"
    #             }
    #           ],
    #           volume_configurations: [
    #             {
    #               name: "ECSVolumeName", # required
    #               managed_ebs_volume: {
    #                 encrypted: false,
    #                 kms_key_id: "EBSKMSKeyId",
    #                 volume_type: "EBSVolumeType",
    #                 size_in_gi_b: 1,
    #                 snapshot_id: "EBSSnapshotId",
    #                 volume_initialization_rate: 1,
    #                 iops: 1,
    #                 throughput: 1,
    #                 tag_specifications: [
    #                   {
    #                     resource_type: "volume" # One of: ["volume"], # required
    #                     tags: [
    #                       {
    #                         key: "TagKey",
    #                         value: "TagValue"
    #                       }
    #                     ],
    #                     propagate_tags: "TASK_DEFINITION" # One of: ["TASK_DEFINITION", "SERVICE", "NONE"]
    #                   }
    #                 ],
    #                 role_arn: "IAMRoleArn", # required
    #                 filesystem_type: "ext3" # One of: ["ext3", "ext4", "xfs", "ntfs"]
    #               }
    #             }
    #           ],
    #           fargate_ephemeral_storage: {
    #             kms_key_id: "String"
    #           },
    #           vpc_lattice_configurations: [
    #             {
    #               role_arn: "IAMRoleArn", # required
    #               target_group_arn: "String", # required
    #               port_name: "String", # required
    #             }
    #           ]
    #         }
    #       ],
    #       role_arn: "String",
    #       events: [
    #         {
    #           id: "String",
    #           created_at: Time.now,
    #           message: "String"
    #         }
    #       ],
    #       created_at: Time.now,
    #       placement_constraints: [
    #         {
    #           type: "distinctInstance" # One of: ["distinctInstance", "memberOf"],
    #           expression: "String"
    #         }
    #       ],
    #       placement_strategy: [
    #         {
    #           type: "random" # One of: ["random", "spread", "binpack"],
    #           field: "String"
    #         }
    #       ],
    #       network_configuration: {
    #         awsvpc_configuration: {
    #           subnets: ["String"], # required
    #           security_groups: ["String"],
    #           assign_public_ip: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #         }
    #       },
    #       health_check_grace_period_seconds: 1,
    #       scheduling_strategy: "REPLICA" # One of: ["REPLICA", "DAEMON"],
    #       deployment_controller: {
    #         type: "ECS" # One of: ["ECS", "CODE_DEPLOY", "EXTERNAL"], # required
    #       },
    #       tags: [
    #         {
    #           key: "TagKey",
    #           value: "TagValue"
    #         }
    #       ],
    #       created_by: "String",
    #       enable_ecs_managed_tags: false,
    #       propagate_tags: "TASK_DEFINITION" # One of: ["TASK_DEFINITION", "SERVICE", "NONE"],
    #       enable_execute_command: false,
    #       availability_zone_rebalancing: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #     }
    #   }
    # @return [Types::UpdateServiceResponse]
    def update_service(params = {}, options = {})
      request = build_request(:update_service, params)
      request.send_request(options)
    end

    # <p>Modifies which task set in a service is the primary task set. Any parameters that are
    # 			updated on the primary task set in a service will transition to the service. This is
    # 			used when a service uses the <code>EXTERNAL</code> deployment controller type. For more
    # 			information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/deployment-types.html">Amazon ECS Deployment
    # 				Types</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    # @param [Hash, Types::UpdateServicePrimaryTaskSetRequest] params
    # @option params [String] :cluster
    #   <p>The short name or full Amazon Resource Name (ARN) of the cluster that hosts the service that the task
    #   			set exists in.</p>
    # @option params [String] :service
    #   <p>The short name or full Amazon Resource Name (ARN) of the service that the task set exists in.</p>
    # @option params [String] :primary_task_set
    #   <p>The short name or full Amazon Resource Name (ARN) of the task set to set as the primary task set in the
    #   			deployment.</p>
    # @example To update the primary task set for a service
    #   # This example updates the primary task set for a service MyService that uses the EXTERNAL deployment controller type. 
    #   params = {
    #     cluster: "MyCluster",
    #     service: "MyService",
    #     primary_task_set: "arn:aws:ecs:us-west-2:123456789012:task-set/MyCluster/MyService/ecs-svc/1234567890123456789"
    #   }
    #   options = {}
    #   response = client.update_service_primary_task_set(params, options)
    #   response.to_h #=>
    #   {
    #     task_set: {
    #       id: "ecs-svc/1234567890123456789",
    #       task_set_arn: "arn:aws:ecs:us-west-2:123456789012:task-set/MyCluster/MyService/ecs-svc/1234567890123456789",
    #       status: "PRIMARY",
    #       task_definition: "arn:aws:ecs:us-west-2:123456789012:task-definition/sample-fargate:2",
    #       computed_desired_count: 1,
    #       pending_count: 0,
    #       running_count: 0,
    #       created_at: Time.parse(1557128360.711),
    #       updated_at: Time.parse(1557129412.653),
    #       launch_type: EC2,
    #       network_configuration: {
    #         awsvpc_configuration: {
    #           subnets: [
    #             "subnet-12344321"
    #           ],
    #           security_groups: [
    #             "sg-12344312"
    #           ],
    #           assign_public_ip: DISABLED
    #         }
    #       },
    #       load_balancers: [
    #       ],
    #       service_registries: [
    #       ],
    #       scale: {
    #         value: 50,
    #         unit: PERCENT
    #       },
    #       stability_status: STABILIZING,
    #       stability_status_at: Time.parse(1557129279.914)
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster: "String", # required
    #     service: "String", # required
    #     primary_task_set: "String", # required
    #   }
    #   options = {}
    #   response = client.update_service_primary_task_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     task_set: {
    #       id: "String",
    #       task_set_arn: "String",
    #       service_arn: "String",
    #       cluster_arn: "String",
    #       started_by: "String",
    #       external_id: "String",
    #       status: "String",
    #       task_definition: "String",
    #       computed_desired_count: 1,
    #       pending_count: 1,
    #       running_count: 1,
    #       created_at: Time.now,
    #       updated_at: Time.now,
    #       launch_type: "EC2" # One of: ["EC2", "FARGATE", "EXTERNAL", "MANAGED_INSTANCES"],
    #       capacity_provider_strategy: [
    #         {
    #           capacity_provider: "String", # required
    #           weight: 1,
    #           base: 1
    #         }
    #       ],
    #       platform_version: "String",
    #       platform_family: "String",
    #       network_configuration: {
    #         awsvpc_configuration: {
    #           subnets: ["String"], # required
    #           security_groups: ["String"],
    #           assign_public_ip: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #         }
    #       },
    #       load_balancers: [
    #         {
    #           target_group_arn: "String",
    #           load_balancer_name: "String",
    #           container_name: "String",
    #           container_port: 1,
    #           advanced_configuration: {
    #             alternate_target_group_arn: "String",
    #             production_listener_rule: "String",
    #             test_listener_rule: "String",
    #             role_arn: "String"
    #           }
    #         }
    #       ],
    #       service_registries: [
    #         {
    #           registry_arn: "String",
    #           port: 1,
    #           container_name: "String",
    #           container_port: 1
    #         }
    #       ],
    #       scale: {
    #         value: 1.0,
    #         unit: "PERCENT" # One of: ["PERCENT"]
    #       },
    #       stability_status: "STEADY_STATE" # One of: ["STEADY_STATE", "STABILIZING"],
    #       stability_status_at: Time.now,
    #       tags: [
    #         {
    #           key: "TagKey",
    #           value: "TagValue"
    #         }
    #       ],
    #       fargate_ephemeral_storage: {
    #         kms_key_id: "String"
    #       }
    #     }
    #   }
    # @return [Types::UpdateServicePrimaryTaskSetResponse]
    def update_service_primary_task_set(params = {}, options = {})
      request = build_request(:update_service_primary_task_set, params)
      request.send_request(options)
    end

    # <p>Updates the protection status of a task. You can set <code>protectionEnabled</code> to
    # 				<code>true</code> to protect your task from termination during scale-in events from
    # 				<a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-auto-scaling.html">Service
    # 				Autoscaling</a> or <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/deployment-types.html">deployments</a>.</p>
    #          <p>Task-protection, by default, expires after 2 hours at which point Amazon ECS clears the
    # 				<code>protectionEnabled</code> property making the task eligible for termination by
    # 			a subsequent scale-in event.</p>
    #          <p>You can specify a custom expiration period for task protection from 1 minute to up to
    # 			2,880 minutes (48 hours). To specify the custom expiration period, set the
    # 				<code>expiresInMinutes</code> property. The <code>expiresInMinutes</code> property
    # 			is always reset when you invoke this operation for a task that already has
    # 				<code>protectionEnabled</code> set to <code>true</code>. You can keep extending the
    # 			protection expiration period of a task by invoking this operation repeatedly.</p>
    #          <p>To learn more about Amazon ECS task protection, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-scale-in-protection.html">Task scale-in
    # 				protection</a> in the <i>
    #                <i>Amazon Elastic Container Service Developer Guide</i>
    #             </i>.</p>
    #          <note>
    #             <p>This operation is only supported for tasks belonging to an Amazon ECS service. Invoking
    # 				this operation for a standalone task will result in an <code>TASK_NOT_VALID</code>
    # 				failure. For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/api_failures_messages.html">API failure
    # 					reasons</a>.</p>
    #          </note>
    #          <important>
    #             <p>If you prefer to set task protection from within the container, we recommend using
    # 				the <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-scale-in-protection-endpoint.html">Task scale-in protection endpoint</a>.</p>
    #          </important>
    # @param [Hash, Types::UpdateTaskProtectionRequest] params
    # @option params [String] :cluster
    #   <p>The short name or full Amazon Resource Name (ARN) of the cluster that hosts the service that the task
    #   			sets exist in.</p>
    # @option params [Array<String>] :tasks
    #   <p>A list of up to 10 task IDs or full ARN entries.</p>
    # @option params [Boolean] :protection_enabled
    #   <p>Specify <code>true</code> to mark a task for protection and <code>false</code> to
    #   			unset protection, making it eligible for termination.</p>
    # @option params [Integer] :expires_in_minutes
    #   <p>If you set <code>protectionEnabled</code> to <code>true</code>, you can specify the
    #   			duration for task protection in minutes. You can specify a value from 1 minute to up to
    #   			2,880 minutes (48 hours). During this time, your task will not be terminated by scale-in
    #   			events from Service Auto Scaling or deployments. After this time period lapses,
    #   				<code>protectionEnabled</code> will be reset to <code>false</code>.</p>
    #            <p>If you don’t specify the time, then the task is automatically protected for 120
    #   			minutes (2 hours).</p>
    # @example To remove task scale-in protection
    #   # This example removes scale-in protection for a task.
    #   params = {
    #     cluster: "test-task-protection",
    #     tasks: [
    #       "b8b1cf532d0e46ba8d44a40d1de16772"
    #     ],
    #     protection_enabled: false
    #   }
    #   options = {}
    #   response = client.update_task_protection(params, options)
    #   response.to_h #=>
    #   {
    #     protected_tasks: [
    #       {
    #         task_arn: "arn:aws:ecs:us-west-2:012345678910:task/default/b8b1cf532d0e46ba8d44a40d1de16772",
    #         protection_enabled: false
    #       }
    #     ],
    #     failures: [
    #     ]
    #   }
    # @example To set task scale-in protection for a task for 60 minutes
    #   # This example enables scale-in protection for a task for 60 minutes.
    #   params = {
    #     cluster: "test-task-protection",
    #     tasks: [
    #       "b8b1cf532d0e46ba8d44a40d1de16772"
    #     ],
    #     protection_enabled: true,
    #     expires_in_minutes: 60
    #   }
    #   options = {}
    #   response = client.update_task_protection(params, options)
    #   response.to_h #=>
    #   {
    #     protected_tasks: [
    #       {
    #         task_arn: "arn:aws:ecs:us-west-2:012345678910:task/default/b8b1cf532d0e46ba8d44a40d1de16772",
    #         protection_enabled: true,
    #         expiration_date: Time.parse("2022-11-02T06:56:32.553Z")
    #       }
    #     ],
    #     failures: [
    #     ]
    #   }
    # @example To set task scale-in protection for the default time period in minutes
    #   # This example enables task scale-in protection for a task, without specifying the expiresInMinutes parameter, for the default protection period of 120 minutes.
    #   params = {
    #     cluster: "test-task-protection",
    #     tasks: [
    #       "b8b1cf532d0e46ba8d44a40d1de16772"
    #     ],
    #     protection_enabled: true
    #   }
    #   options = {}
    #   response = client.update_task_protection(params, options)
    #   response.to_h #=>
    #   {
    #     protected_tasks: [
    #       {
    #         task_arn: "arn:aws:ecs:us-west-2:012345678910:task/default/b8b1cf532d0e46ba8d44a40d1de16772",
    #         protection_enabled: true,
    #         expiration_date: Time.parse("2022-11-02T06:56:32.553Z")
    #       }
    #     ],
    #     failures: [
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster: "String", # required
    #     tasks: ["String"], # required
    #     protection_enabled: false, # required
    #     expires_in_minutes: 1
    #   }
    #   options = {}
    #   response = client.update_task_protection(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     protected_tasks: [
    #       {
    #         task_arn: "String",
    #         protection_enabled: false,
    #         expiration_date: Time.now
    #       }
    #     ],
    #     failures: [
    #       {
    #         arn: "String",
    #         reason: "String",
    #         detail: "String"
    #       }
    #     ]
    #   }
    # @return [Types::UpdateTaskProtectionResponse]
    def update_task_protection(params = {}, options = {})
      request = build_request(:update_task_protection, params)
      request.send_request(options)
    end

    # <p>Modifies a task set. This is used when a service uses the <code>EXTERNAL</code>
    # 			deployment controller type. For more information, see <a href="https://docs.aws.amazon.com/AmazonECS/latest/developerguide/deployment-types.html">Amazon ECS Deployment
    # 				Types</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
    # @param [Hash, Types::UpdateTaskSetRequest] params
    # @option params [String] :cluster
    #   <p>The short name or full Amazon Resource Name (ARN) of the cluster that hosts the service that the task
    #   			set is found in.</p>
    # @option params [String] :service
    #   <p>The short name or full Amazon Resource Name (ARN) of the service that the task set is found in.</p>
    # @option params [String] :task_set
    #   <p>The short name or full Amazon Resource Name (ARN) of the task set to update.</p>
    # @option params [Types::Scale] :scale
    #   <p>A floating-point percentage of the desired number of tasks to place and keep running
    #   			in the task set.</p>
    # @example To update a task set
    #   # This example updates the task set to adjust the scale.
    #   params = {
    #     cluster: "MyCluster",
    #     service: "MyService",
    #     task_set: "arn:aws:ecs:us-west-2:123456789012:task-set/MyCluster/MyService/ecs-svc/1234567890123456789",
    #     scale: {
    #       value: 50,
    #       unit: PERCENT
    #     }
    #   }
    #   options = {}
    #   response = client.update_task_set(params, options)
    #   response.to_h #=>
    #   {
    #     task_set: {
    #       id: "ecs-svc/1234567890123456789",
    #       task_set_arn: "arn:aws:ecs:us-west-2:123456789012:task-set/MyCluster/MyService/ecs-svc/1234567890123456789",
    #       status: "ACTIVE",
    #       task_definition: "arn:aws:ecs:us-west-2:123456789012:task-definition/sample-fargate:2",
    #       computed_desired_count: 0,
    #       pending_count: 0,
    #       running_count: 0,
    #       created_at: Time.parse(1557128360.711),
    #       updated_at: Time.parse(1557129279.914),
    #       launch_type: EC2,
    #       network_configuration: {
    #         awsvpc_configuration: {
    #           subnets: [
    #             "subnet-12344321"
    #           ],
    #           security_groups: [
    #             "sg-12344321"
    #           ],
    #           assign_public_ip: DISABLED
    #         }
    #       },
    #       load_balancers: [
    #       ],
    #       service_registries: [
    #       ],
    #       scale: {
    #         value: 50,
    #         unit: PERCENT
    #       },
    #       stability_status: STABILIZING,
    #       stability_status_at: Time.parse(1557129279.914)
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster: "String", # required
    #     service: "String", # required
    #     task_set: "String", # required
    #     scale: { # required
    #       value: 1.0,
    #       unit: "PERCENT" # One of: ["PERCENT"]
    #     }
    #   }
    #   options = {}
    #   response = client.update_task_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     task_set: {
    #       id: "String",
    #       task_set_arn: "String",
    #       service_arn: "String",
    #       cluster_arn: "String",
    #       started_by: "String",
    #       external_id: "String",
    #       status: "String",
    #       task_definition: "String",
    #       computed_desired_count: 1,
    #       pending_count: 1,
    #       running_count: 1,
    #       created_at: Time.now,
    #       updated_at: Time.now,
    #       launch_type: "EC2" # One of: ["EC2", "FARGATE", "EXTERNAL", "MANAGED_INSTANCES"],
    #       capacity_provider_strategy: [
    #         {
    #           capacity_provider: "String", # required
    #           weight: 1,
    #           base: 1
    #         }
    #       ],
    #       platform_version: "String",
    #       platform_family: "String",
    #       network_configuration: {
    #         awsvpc_configuration: {
    #           subnets: ["String"], # required
    #           security_groups: ["String"],
    #           assign_public_ip: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #         }
    #       },
    #       load_balancers: [
    #         {
    #           target_group_arn: "String",
    #           load_balancer_name: "String",
    #           container_name: "String",
    #           container_port: 1,
    #           advanced_configuration: {
    #             alternate_target_group_arn: "String",
    #             production_listener_rule: "String",
    #             test_listener_rule: "String",
    #             role_arn: "String"
    #           }
    #         }
    #       ],
    #       service_registries: [
    #         {
    #           registry_arn: "String",
    #           port: 1,
    #           container_name: "String",
    #           container_port: 1
    #         }
    #       ],
    #       scale: {
    #         value: 1.0,
    #         unit: "PERCENT" # One of: ["PERCENT"]
    #       },
    #       stability_status: "STEADY_STATE" # One of: ["STEADY_STATE", "STABILIZING"],
    #       stability_status_at: Time.now,
    #       tags: [
    #         {
    #           key: "TagKey",
    #           value: "TagValue"
    #         }
    #       ],
    #       fargate_ephemeral_storage: {
    #         kms_key_id: "String"
    #       }
    #     }
    #   }
    # @return [Types::UpdateTaskSetResponse]
    def update_task_set(params = {}, options = {})
      request = build_request(:update_task_set, params)
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
      context[:gem_name] = 'aws-sdk-ecs'
      context[:gem_version] = '2.0.0.pre0'
      Smithy::Client::Request.new(handlers: handlers, context: context)
    end

    private

    def waiters
      {
        services_inactive: Waiters::ServicesInactive,
        services_stable: Waiters::ServicesStable,
        tasks_running: Waiters::TasksRunning,
        tasks_stopped: Waiters::TasksStopped
      }
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
