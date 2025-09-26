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

module Aws::EMR
  # An API client for Aws::EMR.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::ElasticMapReduce

    add_plugin(::Aws::EMR::Plugins::Endpoint)
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
    # @option options [#identity] :credentials_provider
    #  The credentials provider used to resolve credentials. Any object that responds to `#identity`
    #  and returns a {Aws::Core::Credentials}.
    # @option options [Boolean] :disable_host_prefix_injection
    #  When `true`, the SDK will not prepend the modeled host prefix to the endpoint.
    # @option options [Boolean] :disable_request_compression
    #  When `true`, the request body will not be compressed for supported operations.
    # @option options [String] :endpoint
    #  Custom Endpoint
    # @option options [Aws::EMR::EndpointProvider] :endpoint_provider
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

    # <p>Adds an instance fleet to a running cluster.</p>
    #          <note>
    #             <p>The instance fleet configuration is available only in Amazon EMR releases
    #             4.8.0 and later, excluding 5.0.x.</p>
    #          </note>
    # @param [Hash, Types::AddInstanceFleetInput] params
    # @option params [String] :cluster_id
    #   <p>The unique identifier of the cluster.</p>
    # @option params [Types::InstanceFleetConfig] :instance_fleet
    #   <p>Specifies the configuration of the instance fleet.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_id: "XmlStringMaxLen256", # required
    #     instance_fleet: { # required
    #       name: "XmlStringMaxLen256",
    #       instance_fleet_type: "MASTER" # One of: ["MASTER", "CORE", "TASK"], # required
    #       target_on_demand_capacity: 1,
    #       target_spot_capacity: 1,
    #       instance_type_configs: [
    #         {
    #           instance_type: "InstanceType", # required
    #           weighted_capacity: 1,
    #           bid_price: "XmlStringMaxLen256",
    #           bid_price_as_percentage_of_on_demand_price: 1.0,
    #           ebs_configuration: {
    #             ebs_block_device_configs: [
    #               {
    #                 volume_specification: { # required
    #                   volume_type: "String", # required
    #                   iops: 1,
    #                   size_in_gb: 1, # required
    #                   throughput: 1
    #                 },
    #                 volumes_per_instance: 1
    #               }
    #             ],
    #             ebs_optimized: false
    #           },
    #           configurations: [
    #             {
    #               classification: "String",
    #               configurations: {
    #                 # recursive ConfigurationList
    #               },
    #               properties: {
    #                 "String" => "String"
    #               }
    #             }
    #           ],
    #           custom_ami_id: "XmlStringMaxLen256",
    #           priority: 1.0
    #         }
    #       ],
    #       launch_specifications: {
    #         spot_specification: {
    #           timeout_duration_minutes: 1, # required
    #           timeout_action: "SWITCH_TO_ON_DEMAND" # One of: ["SWITCH_TO_ON_DEMAND", "TERMINATE_CLUSTER"], # required
    #           block_duration_minutes: 1,
    #           allocation_strategy: "capacity-optimized" # One of: ["capacity-optimized", "price-capacity-optimized", "lowest-price", "diversified", "capacity-optimized-prioritized"]
    #         },
    #         on_demand_specification: {
    #           allocation_strategy: "lowest-price" # One of: ["lowest-price", "prioritized"], # required
    #           capacity_reservation_options: {
    #             usage_strategy: "use-capacity-reservations-first" # One of: ["use-capacity-reservations-first"],
    #             capacity_reservation_preference: "open" # One of: ["open", "none"],
    #             capacity_reservation_resource_group_arn: "XmlStringMaxLen256"
    #           }
    #         }
    #       },
    #       resize_specifications: {
    #         spot_resize_specification: {
    #           timeout_duration_minutes: 1,
    #           allocation_strategy: "capacity-optimized" # One of: ["capacity-optimized", "price-capacity-optimized", "lowest-price", "diversified", "capacity-optimized-prioritized"]
    #         },
    #         on_demand_resize_specification: {
    #           timeout_duration_minutes: 1,
    #           allocation_strategy: "lowest-price" # One of: ["lowest-price", "prioritized"],
    #           capacity_reservation_options: {
    #             usage_strategy: "use-capacity-reservations-first" # One of: ["use-capacity-reservations-first"],
    #             capacity_reservation_preference: "open" # One of: ["open", "none"],
    #             capacity_reservation_resource_group_arn: "XmlStringMaxLen256"
    #           }
    #         }
    #       },
    #       context: "XmlStringMaxLen256"
    #     }
    #   }
    #   options = {}
    #   response = client.add_instance_fleet(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cluster_id: "XmlStringMaxLen256",
    #     instance_fleet_id: "InstanceFleetId",
    #     cluster_arn: "ArnType"
    #   }
    # @return [Types::AddInstanceFleetOutput]
    def add_instance_fleet(params = {}, options = {})
      request = build_request(:add_instance_fleet, params)
      request.send_request(options)
    end

    # <p>Adds one or more instance groups to a running cluster.</p>
    # @param [Hash, Types::AddInstanceGroupsInput] params
    # @option params [Array<Types::InstanceGroupConfig>] :instance_groups
    #   <p>Instance groups to add.</p>
    # @option params [String] :job_flow_id
    #   <p>Job flow in which to add the instance groups.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     instance_groups: [ # required
    #       {
    #         name: "XmlStringMaxLen256",
    #         market: "ON_DEMAND" # One of: ["ON_DEMAND", "SPOT"],
    #         instance_role: "MASTER" # One of: ["MASTER", "CORE", "TASK"], # required
    #         bid_price: "XmlStringMaxLen256",
    #         instance_type: "InstanceType", # required
    #         instance_count: 1, # required
    #         configurations: [
    #           {
    #             classification: "String",
    #             configurations: {
    #               # recursive ConfigurationList
    #             },
    #             properties: {
    #               "String" => "String"
    #             }
    #           }
    #         ],
    #         ebs_configuration: {
    #           ebs_block_device_configs: [
    #             {
    #               volume_specification: { # required
    #                 volume_type: "String", # required
    #                 iops: 1,
    #                 size_in_gb: 1, # required
    #                 throughput: 1
    #               },
    #               volumes_per_instance: 1
    #             }
    #           ],
    #           ebs_optimized: false
    #         },
    #         auto_scaling_policy: {
    #           constraints: { # required
    #             min_capacity: 1, # required
    #             max_capacity: 1, # required
    #           },
    #           rules: [ # required
    #             {
    #               name: "String", # required
    #               description: "String",
    #               action: { # required
    #                 market: "ON_DEMAND" # One of: ["ON_DEMAND", "SPOT"],
    #                 simple_scaling_policy_configuration: { # required
    #                   adjustment_type: "CHANGE_IN_CAPACITY" # One of: ["CHANGE_IN_CAPACITY", "PERCENT_CHANGE_IN_CAPACITY", "EXACT_CAPACITY"],
    #                   scaling_adjustment: 1, # required
    #                   cool_down: 1
    #                 }
    #               },
    #               trigger: { # required
    #                 cloud_watch_alarm_definition: { # required
    #                   comparison_operator: "GREATER_THAN_OR_EQUAL" # One of: ["GREATER_THAN_OR_EQUAL", "GREATER_THAN", "LESS_THAN", "LESS_THAN_OR_EQUAL"], # required
    #                   evaluation_periods: 1,
    #                   metric_name: "String", # required
    #                   namespace: "String",
    #                   period: 1, # required
    #                   statistic: "SAMPLE_COUNT" # One of: ["SAMPLE_COUNT", "AVERAGE", "SUM", "MINIMUM", "MAXIMUM"],
    #                   threshold: 1.0, # required
    #                   unit: "NONE" # One of: ["NONE", "SECONDS", "MICRO_SECONDS", "MILLI_SECONDS", "BYTES", "KILO_BYTES", "MEGA_BYTES", "GIGA_BYTES", "TERA_BYTES", "BITS", "KILO_BITS", "MEGA_BITS", "GIGA_BITS", "TERA_BITS", "PERCENT", "COUNT", "BYTES_PER_SECOND", "KILO_BYTES_PER_SECOND", "MEGA_BYTES_PER_SECOND", "GIGA_BYTES_PER_SECOND", "TERA_BYTES_PER_SECOND", "BITS_PER_SECOND", "KILO_BITS_PER_SECOND", "MEGA_BITS_PER_SECOND", "GIGA_BITS_PER_SECOND", "TERA_BITS_PER_SECOND", "COUNT_PER_SECOND"],
    #                   dimensions: [
    #                     {
    #                       key: "String",
    #                       value: "String"
    #                     }
    #                   ]
    #                 }
    #               }
    #             }
    #           ]
    #         },
    #         custom_ami_id: "XmlStringMaxLen256"
    #       }
    #     ],
    #     job_flow_id: "XmlStringMaxLen256", # required
    #   }
    #   options = {}
    #   response = client.add_instance_groups(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_flow_id: "XmlStringMaxLen256",
    #     instance_group_ids: ["XmlStringMaxLen256"],
    #     cluster_arn: "ArnType"
    #   }
    # @return [Types::AddInstanceGroupsOutput]
    def add_instance_groups(params = {}, options = {})
      request = build_request(:add_instance_groups, params)
      request.send_request(options)
    end

    # <p>AddJobFlowSteps adds new steps to a running cluster. A maximum of 256 steps are allowed
    #          in each job flow.</p>
    #          <p>If your cluster is long-running (such as a Hive data warehouse) or complex, you may
    #          require more than 256 steps to process your data. You can bypass the 256-step limitation in
    #          various ways, including using SSH to connect to the master node and submitting queries
    #          directly to the software running on the master node, such as Hive and Hadoop.</p>
    #          <p>A step specifies the location of a JAR file stored either on the master node of the
    #          cluster or in Amazon S3. Each step is performed by the main function of the main
    #          class of the JAR file. The main class can be specified either in the manifest of the JAR or
    #          by using the MainFunction parameter of the step.</p>
    #          <p>Amazon EMR executes each step in the order listed. For a step to be considered
    #          complete, the main function must exit with a zero exit code and all Hadoop jobs started
    #          while the step was running must have completed and run successfully.</p>
    #          <p>You can only add steps to a cluster that is in one of the following states: STARTING,
    #          BOOTSTRAPPING, RUNNING, or WAITING.</p>
    #          <note>
    #             <p>The string values passed into <code>HadoopJarStep</code> object cannot exceed a total
    #             of 10240 characters.</p>
    #          </note>
    # @param [Hash, Types::AddJobFlowStepsInput] params
    # @option params [String] :job_flow_id
    #   <p>A string that uniquely identifies the job flow. This identifier is returned by <a>RunJobFlow</a> and can also be obtained from <a>ListClusters</a>.
    #         </p>
    # @option params [Array<Types::StepConfig>] :steps
    #   <p> A list of <a>StepConfig</a> to be executed by the job flow. </p>
    # @option params [String] :execution_role_arn
    #   <p>The Amazon Resource Name (ARN) of the runtime role for a step on the cluster. The
    #            runtime role can be a cross-account IAM role. The runtime role ARN is a
    #            combination of account ID, role name, and role type using the following format:
    #               <code>arn:partition:service:region:account:resource</code>. </p>
    #            <p>For example, <code>arn:aws:IAM::1234567890:role/ReadOnly</code> is a correctly formatted
    #            runtime role ARN.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_flow_id: "XmlStringMaxLen256", # required
    #     steps: [ # required
    #       {
    #         name: "XmlStringMaxLen256", # required
    #         action_on_failure: "TERMINATE_JOB_FLOW" # One of: ["TERMINATE_JOB_FLOW", "TERMINATE_CLUSTER", "CANCEL_AND_WAIT", "CONTINUE"],
    #         hadoop_jar_step: { # required
    #           properties: [
    #             {
    #               key: "XmlString",
    #               value: "XmlString"
    #             }
    #           ],
    #           jar: "XmlString", # required
    #           main_class: "XmlString",
    #           args: ["XmlString"]
    #         }
    #       }
    #     ],
    #     execution_role_arn: "ArnType"
    #   }
    #   options = {}
    #   response = client.add_job_flow_steps(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     step_ids: ["XmlStringMaxLen256"]
    #   }
    # @return [Types::AddJobFlowStepsOutput]
    def add_job_flow_steps(params = {}, options = {})
      request = build_request(:add_job_flow_steps, params)
      request.send_request(options)
    end

    # <p>Adds tags to an Amazon EMR resource, such as a cluster or an Amazon EMR
    #          Studio. Tags make it easier to associate resources in various ways, such as grouping
    #          clusters to track your Amazon EMR resource allocation costs. For more information,
    #          see <a href="https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-plan-tags.html">Tag
    #             Clusters</a>. </p>
    # @param [Hash, Types::AddTagsInput] params
    # @option params [String] :resource_id
    #   <p>The Amazon EMR resource identifier to which tags will be added. For example, a
    #            cluster identifier or an Amazon EMR Studio ID.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of tags to associate with a resource. Tags are user-defined key-value pairs that
    #            consist of a required key string with a maximum of 128 characters, and an optional value
    #            string with a maximum of 256 characters.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_id: "ResourceId", # required
    #     tags: [ # required
    #       {
    #         key: "String",
    #         value: "String"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.add_tags(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::AddTagsOutput]
    def add_tags(params = {}, options = {})
      request = build_request(:add_tags, params)
      request.send_request(options)
    end

    # <p>Cancels a pending step or steps in a running cluster. Available only in Amazon EMR versions 4.8.0 and later, excluding version 5.0.0. A maximum of 256 steps are allowed in
    #          each CancelSteps request. CancelSteps is idempotent but asynchronous; it does not guarantee
    #          that a step will be canceled, even if the request is successfully submitted. When you use
    #             Amazon EMR releases 5.28.0 and later, you can cancel steps that are in a
    #             <code>PENDING</code> or <code>RUNNING</code> state. In earlier versions of Amazon EMR, you can only cancel steps that are in a <code>PENDING</code> state. </p>
    # @param [Hash, Types::CancelStepsInput] params
    # @option params [String] :cluster_id
    #   <p>The <code>ClusterID</code> for the specified steps that will be canceled. Use <a>RunJobFlow</a> and <a>ListClusters</a> to get ClusterIDs. </p>
    # @option params [Array<String>] :step_ids
    #   <p>The list of <code>StepIDs</code> to cancel. Use <a>ListSteps</a> to get steps
    #            and their states for the specified cluster.</p>
    # @option params [String] :step_cancellation_option
    #   <p>The option to choose to cancel <code>RUNNING</code> steps. By default, the value is
    #               <code>SEND_INTERRUPT</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_id: "XmlStringMaxLen256", # required
    #     step_ids: ["XmlStringMaxLen256"], # required
    #     step_cancellation_option: "SEND_INTERRUPT" # One of: ["SEND_INTERRUPT", "TERMINATE_PROCESS"]
    #   }
    #   options = {}
    #   response = client.cancel_steps(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cancel_steps_info_list: [
    #       {
    #         step_id: "StepId",
    #         status: "SUBMITTED" # One of: ["SUBMITTED", "FAILED"],
    #         reason: "String"
    #       }
    #     ]
    #   }
    # @return [Types::CancelStepsOutput]
    def cancel_steps(params = {}, options = {})
      request = build_request(:cancel_steps, params)
      request.send_request(options)
    end

    # <p>Creates a persistent application user interface.</p>
    # @param [Hash, Types::CreatePersistentAppUIInput] params
    # @option params [String] :target_resource_arn
    #   <p>The unique Amazon Resource Name (ARN) of the target resource.</p>
    # @option params [Types::EMRContainersConfig] :emr_containers_config
    #   <p>The EMR containers configuration.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Tags for the persistent application user interface.</p>
    # @option params [String] :x_referer
    #   <p>The cross reference for the persistent application user interface.</p>
    # @option params [String] :profiler_type
    #   <p>The profiler type for the persistent application user interface.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     target_resource_arn: "ArnType", # required
    #     emr_containers_config: {
    #       job_run_id: "XmlStringMaxLen256"
    #     },
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String"
    #       }
    #     ],
    #     x_referer: "String",
    #     profiler_type: "SHS" # One of: ["SHS", "TEZUI", "YTS"]
    #   }
    #   options = {}
    #   response = client.create_persistent_app_ui(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     persistent_app_ui_id: "XmlStringMaxLen256",
    #     runtime_role_enabled_cluster: false
    #   }
    # @return [Types::CreatePersistentAppUIOutput]
    def create_persistent_app_ui(params = {}, options = {})
      request = build_request(:create_persistent_app_ui, params)
      request.send_request(options)
    end

    # <p>Creates a security configuration, which is stored in the service and can be specified
    #          when a cluster is created.</p>
    # @param [Hash, Types::CreateSecurityConfigurationInput] params
    # @option params [String] :name
    #   <p>The name of the security configuration.</p>
    # @option params [String] :security_configuration
    #   <p>The security configuration details in JSON format. For JSON parameters and examples, see
    #               <a href="https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-security-configurations.html">Use Security
    #               Configurations to Set Up Cluster Security</a> in the <i>Amazon EMR
    #               Management Guide</i>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "XmlString", # required
    #     security_configuration: "String", # required
    #   }
    #   options = {}
    #   response = client.create_security_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "XmlString", # required
    #     creation_date_time: Time.now, # required
    #   }
    # @return [Types::CreateSecurityConfigurationOutput]
    def create_security_configuration(params = {}, options = {})
      request = build_request(:create_security_configuration, params)
      request.send_request(options)
    end

    # <p>Creates a new Amazon EMR Studio.</p>
    # @param [Hash, Types::CreateStudioInput] params
    # @option params [String] :name
    #   <p>A descriptive name for the Amazon EMR Studio.</p>
    # @option params [String] :description
    #   <p>A detailed description of the Amazon EMR Studio.</p>
    # @option params [String] :auth_mode
    #   <p>Specifies whether the Studio authenticates users using IAM or IAM Identity Center.</p>
    # @option params [String] :vpc_id
    #   <p>The ID of the Amazon Virtual Private Cloud (Amazon VPC) to associate with the
    #            Studio.</p>
    # @option params [Array<String>] :subnet_ids
    #   <p>A list of subnet IDs to associate with the Amazon EMR Studio. A Studio can have
    #            a maximum of 5 subnets. The subnets must belong to the VPC specified by <code>VpcId</code>.
    #            Studio users can create a Workspace in any of the specified subnets.</p>
    # @option params [String] :service_role
    #   <p>The IAM role that the Amazon EMR Studio assumes. The service role
    #            provides a way for Amazon EMR Studio to interoperate with other Amazon Web Services
    #            services.</p>
    # @option params [String] :user_role
    #   <p>The IAM user role that users and groups assume when logged in to an
    #               Amazon EMR Studio. Only specify a <code>UserRole</code> when you use IAM Identity Center authentication. The permissions attached to the <code>UserRole</code> can be
    #            scoped down for each user or group using session policies.</p>
    # @option params [String] :workspace_security_group_id
    #   <p>The ID of the Amazon EMR Studio Workspace security group. The Workspace security
    #            group allows outbound network traffic to resources in the Engine security group, and it
    #            must be in the same VPC specified by <code>VpcId</code>.</p>
    # @option params [String] :engine_security_group_id
    #   <p>The ID of the Amazon EMR Studio Engine security group. The Engine security group
    #            allows inbound network traffic from the Workspace security group, and it must be in the
    #            same VPC specified by <code>VpcId</code>.</p>
    # @option params [String] :default_s3_location
    #   <p>The Amazon S3 location to back up Amazon EMR Studio Workspaces and
    #            notebook files.</p>
    # @option params [String] :idp_auth_url
    #   <p>The authentication endpoint of your identity provider (IdP). Specify this value when you
    #            use IAM authentication and want to let federated users log in to a Studio
    #            with the Studio URL and credentials from your IdP. Amazon EMR Studio redirects
    #            users to this endpoint to enter credentials.</p>
    # @option params [String] :idp_relay_state_parameter_name
    #   <p>The name that your identity provider (IdP) uses for its <code>RelayState</code>
    #            parameter. For example, <code>RelayState</code> or <code>TargetSource</code>. Specify this
    #            value when you use IAM authentication and want to let federated users log in
    #            to a Studio using the Studio URL. The <code>RelayState</code> parameter differs by
    #            IdP.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of tags to associate with the Amazon EMR Studio. Tags are user-defined
    #            key-value pairs that consist of a required key string with a maximum of 128 characters, and
    #            an optional value string with a maximum of 256 characters.</p>
    # @option params [Boolean] :trusted_identity_propagation_enabled
    #   <p>
    #            A Boolean indicating whether to enable Trusted identity propagation for the Studio. The default value is <code>false</code>.
    #         </p>
    # @option params [String] :idc_user_assignment
    #   <p>
    #            Specifies whether IAM Identity Center user assignment is <code>REQUIRED</code> or <code>OPTIONAL</code>. If the value is set to <code>REQUIRED</code>, users must be explicitly assigned to the Studio application to access the Studio.
    #         </p>
    # @option params [String] :idc_instance_arn
    #   <p>
    #            The ARN of the IAM Identity Center instance to create the Studio application.
    #         </p>
    # @option params [String] :encryption_key_arn
    #   <p>The KMS key identifier (ARN) used to encrypt Amazon EMR Studio workspace and notebook files when backed up to Amazon S3.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "XmlStringMaxLen256", # required
    #     description: "XmlStringMaxLen256",
    #     auth_mode: "SSO" # One of: ["SSO", "IAM"], # required
    #     vpc_id: "XmlStringMaxLen256", # required
    #     subnet_ids: ["String"], # required
    #     service_role: "XmlString", # required
    #     user_role: "XmlString",
    #     workspace_security_group_id: "XmlStringMaxLen256", # required
    #     engine_security_group_id: "XmlStringMaxLen256", # required
    #     default_s3_location: "XmlString", # required
    #     idp_auth_url: "XmlString",
    #     idp_relay_state_parameter_name: "XmlStringMaxLen256",
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String"
    #       }
    #     ],
    #     trusted_identity_propagation_enabled: false,
    #     idc_user_assignment: "REQUIRED" # One of: ["REQUIRED", "OPTIONAL"],
    #     idc_instance_arn: "ArnType",
    #     encryption_key_arn: "XmlString"
    #   }
    #   options = {}
    #   response = client.create_studio(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     studio_id: "XmlStringMaxLen256",
    #     url: "XmlString"
    #   }
    # @return [Types::CreateStudioOutput]
    def create_studio(params = {}, options = {})
      request = build_request(:create_studio, params)
      request.send_request(options)
    end

    # <p>Maps a user or group to the Amazon EMR Studio specified by
    #          <code>StudioId</code>, and applies a session policy to refine Studio permissions for that
    #          user or group. Use <code>CreateStudioSessionMapping</code> to assign users to a Studio when
    #          you use IAM Identity Center authentication. For instructions on how to assign users to a
    #          Studio when you use IAM authentication, see <a href="https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-studio-manage-users.html#emr-studio-assign-users-groups">Assign a user or group to your EMR Studio</a>.</p>
    # @param [Hash, Types::CreateStudioSessionMappingInput] params
    # @option params [String] :studio_id
    #   <p>The ID of the Amazon EMR Studio to which the user or group will be
    #            mapped.</p>
    # @option params [String] :identity_id
    #   <p>The globally unique identifier (GUID) of the user or group from the IAM Identity Center
    #            Identity Store. For more information, see <a href="https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/API_User.html#singlesignon-Type-User-UserId">UserId</a> and <a href="https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/API_Group.html#singlesignon-Type-Group-GroupId">GroupId</a> in the <i>IAM Identity Center Identity Store API
    #               Reference</i>. Either <code>IdentityName</code> or <code>IdentityId</code> must
    #            be specified, but not both.</p>
    # @option params [String] :identity_name
    #   <p>The name of the user or group. For more information, see <a href="https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/API_User.html#singlesignon-Type-User-UserName">UserName</a> and <a href="https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/API_Group.html#singlesignon-Type-Group-DisplayName">DisplayName</a> in the <i>IAM Identity Center Identity Store API
    #               Reference</i>. Either <code>IdentityName</code> or <code>IdentityId</code> must
    #            be specified, but not both.</p>
    # @option params [String] :identity_type
    #   <p>Specifies whether the identity to map to the Amazon EMR Studio is a user or a
    #            group.</p>
    # @option params [String] :session_policy_arn
    #   <p>The Amazon Resource Name (ARN) for the session policy that will be applied to the user
    #            or group. You should specify the ARN for the session policy that you want to apply, not the
    #            ARN of your user role. For more information, see <a href="https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-studio-user-role.html">Create an Amazon EMR
    #               Studio User Role with Session Policies</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     studio_id: "XmlStringMaxLen256", # required
    #     identity_id: "XmlStringMaxLen256",
    #     identity_name: "XmlStringMaxLen256",
    #     identity_type: "USER" # One of: ["USER", "GROUP"], # required
    #     session_policy_arn: "XmlStringMaxLen256", # required
    #   }
    #   options = {}
    #   response = client.create_studio_session_mapping(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def create_studio_session_mapping(params = {}, options = {})
      request = build_request(:create_studio_session_mapping, params)
      request.send_request(options)
    end

    # <p>Deletes a security configuration.</p>
    # @param [Hash, Types::DeleteSecurityConfigurationInput] params
    # @option params [String] :name
    #   <p>The name of the security configuration.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "XmlString", # required
    #   }
    #   options = {}
    #   response = client.delete_security_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteSecurityConfigurationOutput]
    def delete_security_configuration(params = {}, options = {})
      request = build_request(:delete_security_configuration, params)
      request.send_request(options)
    end

    # <p>Removes an Amazon EMR Studio from the Studio metadata store.</p>
    # @param [Hash, Types::DeleteStudioInput] params
    # @option params [String] :studio_id
    #   <p>The ID of the Amazon EMR Studio.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     studio_id: "XmlStringMaxLen256", # required
    #   }
    #   options = {}
    #   response = client.delete_studio(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_studio(params = {}, options = {})
      request = build_request(:delete_studio, params)
      request.send_request(options)
    end

    # <p>Removes a user or group from an Amazon EMR Studio.</p>
    # @param [Hash, Types::DeleteStudioSessionMappingInput] params
    # @option params [String] :studio_id
    #   <p>The ID of the Amazon EMR Studio.</p>
    # @option params [String] :identity_id
    #   <p>The globally unique identifier (GUID) of the user or group to remove from the Amazon EMR Studio. For more information, see <a href="https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/API_User.html#singlesignon-Type-User-UserId">UserId</a> and <a href="https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/API_Group.html#singlesignon-Type-Group-GroupId">GroupId</a> in the <i>IAM Identity Center Identity Store API
    #               Reference</i>. Either <code>IdentityName</code> or <code>IdentityId</code> must
    #            be specified.</p>
    # @option params [String] :identity_name
    #   <p>The name of the user name or group to remove from the Amazon EMR Studio. For
    #            more information, see <a href="https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/API_User.html#singlesignon-Type-User-UserName">UserName</a> and <a href="https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/API_Group.html#singlesignon-Type-Group-DisplayName">DisplayName</a> in the <i>IAM Identity Center Store API Reference</i>.
    #            Either <code>IdentityName</code> or <code>IdentityId</code> must be specified.</p>
    # @option params [String] :identity_type
    #   <p>Specifies whether the identity to delete from the Amazon EMR Studio is a user or
    #            a group.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     studio_id: "XmlStringMaxLen256", # required
    #     identity_id: "XmlStringMaxLen256",
    #     identity_name: "XmlStringMaxLen256",
    #     identity_type: "USER" # One of: ["USER", "GROUP"], # required
    #   }
    #   options = {}
    #   response = client.delete_studio_session_mapping(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_studio_session_mapping(params = {}, options = {})
      request = build_request(:delete_studio_session_mapping, params)
      request.send_request(options)
    end

    # <p>Provides cluster-level details including status, hardware and software configuration,
    #          VPC settings, and so on.</p>
    # @param [Hash, Types::DescribeClusterInput] params
    # @option params [String] :cluster_id
    #   <p>The identifier of the cluster to describe.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_id: "ClusterId", # required
    #   }
    #   options = {}
    #   response = client.describe_cluster(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cluster: {
    #       id: "ClusterId",
    #       name: "String",
    #       status: {
    #         state: "STARTING" # One of: ["STARTING", "BOOTSTRAPPING", "RUNNING", "WAITING", "TERMINATING", "TERMINATED", "TERMINATED_WITH_ERRORS"],
    #         state_change_reason: {
    #           code: "INTERNAL_ERROR" # One of: ["INTERNAL_ERROR", "VALIDATION_ERROR", "INSTANCE_FAILURE", "INSTANCE_FLEET_TIMEOUT", "BOOTSTRAP_FAILURE", "USER_REQUEST", "STEP_FAILURE", "ALL_STEPS_COMPLETED"],
    #           message: "String"
    #         },
    #         timeline: {
    #           creation_date_time: Time.now,
    #           ready_date_time: Time.now,
    #           end_date_time: Time.now
    #         },
    #         error_details: [
    #           {
    #             error_code: "String",
    #             error_data: [
    #               {
    #                 "String" => "String"
    #               }
    #             ],
    #             error_message: "String"
    #           }
    #         ]
    #       },
    #       ec2_instance_attributes: {
    #         ec2_key_name: "String",
    #         ec2_subnet_id: "String",
    #         requested_ec2_subnet_ids: ["XmlStringMaxLen256"],
    #         ec2_availability_zone: "String",
    #         requested_ec2_availability_zones: ["XmlStringMaxLen256"],
    #         iam_instance_profile: "String",
    #         emr_managed_master_security_group: "String",
    #         emr_managed_slave_security_group: "String",
    #         service_access_security_group: "String",
    #         additional_master_security_groups: ["String"],
    #         additional_slave_security_groups: ["String"]
    #       },
    #       instance_collection_type: "INSTANCE_FLEET" # One of: ["INSTANCE_FLEET", "INSTANCE_GROUP"],
    #       log_uri: "String",
    #       log_encryption_kms_key_id: "String",
    #       requested_ami_version: "String",
    #       running_ami_version: "String",
    #       release_label: "String",
    #       auto_terminate: false,
    #       termination_protected: false,
    #       unhealthy_node_replacement: false,
    #       visible_to_all_users: false,
    #       applications: [
    #         {
    #           name: "String",
    #           version: "String",
    #           args: ["String"],
    #           additional_info: {
    #             "String" => "String"
    #           }
    #         }
    #       ],
    #       tags: [
    #         {
    #           key: "String",
    #           value: "String"
    #         }
    #       ],
    #       service_role: "String",
    #       normalized_instance_hours: 1,
    #       master_public_dns_name: "String",
    #       configurations: [
    #         {
    #           classification: "String",
    #           configurations: {
    #             # recursive ConfigurationList
    #           },
    #           properties: {
    #             "String" => "String"
    #           }
    #         }
    #       ],
    #       security_configuration: "XmlString",
    #       auto_scaling_role: "XmlString",
    #       scale_down_behavior: "TERMINATE_AT_INSTANCE_HOUR" # One of: ["TERMINATE_AT_INSTANCE_HOUR", "TERMINATE_AT_TASK_COMPLETION"],
    #       custom_ami_id: "XmlStringMaxLen256",
    #       ebs_root_volume_size: 1,
    #       repo_upgrade_on_boot: "SECURITY" # One of: ["SECURITY", "NONE"],
    #       kerberos_attributes: {
    #         realm: "XmlStringMaxLen256", # required
    #         kdc_admin_password: "XmlStringMaxLen256", # required
    #         cross_realm_trust_principal_password: "XmlStringMaxLen256",
    #         ad_domain_join_user: "XmlStringMaxLen256",
    #         ad_domain_join_password: "XmlStringMaxLen256"
    #       },
    #       cluster_arn: "ArnType",
    #       outpost_arn: "OptionalArnType",
    #       step_concurrency_level: 1,
    #       placement_groups: [
    #         {
    #           instance_role: "MASTER" # One of: ["MASTER", "CORE", "TASK"], # required
    #           placement_strategy: "SPREAD" # One of: ["SPREAD", "PARTITION", "CLUSTER", "NONE"]
    #         }
    #       ],
    #       os_release_label: "String",
    #       ebs_root_volume_iops: 1,
    #       ebs_root_volume_throughput: 1,
    #       extended_support: false
    #     }
    #   }
    # @return [Types::DescribeClusterOutput]
    def describe_cluster(params = {}, options = {})
      request = build_request(:describe_cluster, params)
      request.send_request(options)
    end

    # <p>This API is no longer supported and will eventually be removed. We recommend you use
    #             <a>ListClusters</a>, <a>DescribeCluster</a>, <a>ListSteps</a>, <a>ListInstanceGroups</a> and <a>ListBootstrapActions</a> instead.</p>
    #          <p>DescribeJobFlows returns a list of job flows that match all of the supplied parameters.
    #          The parameters can include a list of job flow IDs, job flow states, and restrictions on job
    #          flow creation date and time.</p>
    #          <p>Regardless of supplied parameters, only job flows created within the last two months are
    #          returned.</p>
    #          <p>If no parameters are supplied, then job flows matching either of the following criteria
    #          are returned:</p>
    #          <ul>
    #             <li>
    #                <p>Job flows created and completed in the last two weeks</p>
    #             </li>
    #             <li>
    #                <p> Job flows created within the last two months that are in one of the following
    #                states: <code>RUNNING</code>, <code>WAITING</code>, <code>SHUTTING_DOWN</code>,
    #                   <code>STARTING</code>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>Amazon EMR can return a maximum of 512 job flow descriptions.</p>
    # @param [Hash, Types::DescribeJobFlowsInput] params
    # @option params [Time] :created_after
    #   <p>Return only job flows created after this date and time.</p>
    # @option params [Time] :created_before
    #   <p>Return only job flows created before this date and time.</p>
    # @option params [Array<String>] :job_flow_ids
    #   <p>Return only job flows whose job flow ID is contained in this list.</p>
    # @option params [Array<String>] :job_flow_states
    #   <p>Return only job flows whose state is contained in this list.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     created_after: Time.now,
    #     created_before: Time.now,
    #     job_flow_ids: ["XmlString"],
    #     job_flow_states: ["STARTING" # One of: ["STARTING", "BOOTSTRAPPING", "RUNNING", "WAITING", "SHUTTING_DOWN", "TERMINATED", "COMPLETED", "FAILED"]]
    #   }
    #   options = {}
    #   response = client.describe_job_flows(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_flows: [
    #       {
    #         job_flow_id: "XmlStringMaxLen256", # required
    #         name: "XmlStringMaxLen256", # required
    #         log_uri: "XmlString",
    #         log_encryption_kms_key_id: "XmlString",
    #         ami_version: "XmlStringMaxLen256",
    #         execution_status_detail: { # required
    #           state: "STARTING" # One of: ["STARTING", "BOOTSTRAPPING", "RUNNING", "WAITING", "SHUTTING_DOWN", "TERMINATED", "COMPLETED", "FAILED"], # required
    #           creation_date_time: Time.now, # required
    #           start_date_time: Time.now,
    #           ready_date_time: Time.now,
    #           end_date_time: Time.now,
    #           last_state_change_reason: "XmlString"
    #         },
    #         instances: { # required
    #           master_instance_type: "InstanceType", # required
    #           master_public_dns_name: "XmlString",
    #           master_instance_id: "XmlString",
    #           slave_instance_type: "InstanceType", # required
    #           instance_count: 1, # required
    #           instance_groups: [
    #             {
    #               instance_group_id: "XmlStringMaxLen256",
    #               name: "XmlStringMaxLen256",
    #               market: "ON_DEMAND" # One of: ["ON_DEMAND", "SPOT"], # required
    #               instance_role: "MASTER" # One of: ["MASTER", "CORE", "TASK"], # required
    #               bid_price: "XmlStringMaxLen256",
    #               instance_type: "InstanceType", # required
    #               instance_request_count: 1, # required
    #               instance_running_count: 1, # required
    #               state: "PROVISIONING" # One of: ["PROVISIONING", "BOOTSTRAPPING", "RUNNING", "RECONFIGURING", "RESIZING", "SUSPENDED", "TERMINATING", "TERMINATED", "ARRESTED", "SHUTTING_DOWN", "ENDED"], # required
    #               last_state_change_reason: "XmlString",
    #               creation_date_time: Time.now, # required
    #               start_date_time: Time.now,
    #               ready_date_time: Time.now,
    #               end_date_time: Time.now,
    #               custom_ami_id: "XmlStringMaxLen256"
    #             }
    #           ],
    #           normalized_instance_hours: 1,
    #           ec2_key_name: "XmlStringMaxLen256",
    #           ec2_subnet_id: "XmlStringMaxLen256",
    #           placement: {
    #             availability_zone: "XmlString",
    #             availability_zones: ["XmlStringMaxLen256"]
    #           },
    #           keep_job_flow_alive_when_no_steps: false,
    #           termination_protected: false,
    #           unhealthy_node_replacement: false,
    #           hadoop_version: "XmlStringMaxLen256"
    #         },
    #         steps: [
    #           {
    #             step_config: { # required
    #               name: "XmlStringMaxLen256", # required
    #               action_on_failure: "TERMINATE_JOB_FLOW" # One of: ["TERMINATE_JOB_FLOW", "TERMINATE_CLUSTER", "CANCEL_AND_WAIT", "CONTINUE"],
    #               hadoop_jar_step: { # required
    #                 properties: [
    #                   {
    #                     key: "XmlString",
    #                     value: "XmlString"
    #                   }
    #                 ],
    #                 jar: "XmlString", # required
    #                 main_class: "XmlString",
    #                 args: ["XmlString"]
    #               }
    #             },
    #             execution_status_detail: { # required
    #               state: "PENDING" # One of: ["PENDING", "RUNNING", "CONTINUE", "COMPLETED", "CANCELLED", "FAILED", "INTERRUPTED"], # required
    #               creation_date_time: Time.now, # required
    #               start_date_time: Time.now,
    #               end_date_time: Time.now,
    #               last_state_change_reason: "XmlString"
    #             }
    #           }
    #         ],
    #         bootstrap_actions: [
    #           {
    #             bootstrap_action_config: {
    #               name: "XmlStringMaxLen256", # required
    #               script_bootstrap_action: { # required
    #                 path: "XmlString", # required
    #                 args: ["XmlString"]
    #               }
    #             }
    #           }
    #         ],
    #         supported_products: ["XmlStringMaxLen256"],
    #         visible_to_all_users: false,
    #         job_flow_role: "XmlString",
    #         service_role: "XmlString",
    #         auto_scaling_role: "XmlString",
    #         scale_down_behavior: "TERMINATE_AT_INSTANCE_HOUR" # One of: ["TERMINATE_AT_INSTANCE_HOUR", "TERMINATE_AT_TASK_COMPLETION"]
    #       }
    #     ]
    #   }
    # @deprecated
    # @return [Types::DescribeJobFlowsOutput]
    def describe_job_flows(params = {}, options = {})
      request = build_request(:describe_job_flows, params)
      request.send_request(options)
    end

    # <p>Provides details of a notebook execution.</p>
    # @param [Hash, Types::DescribeNotebookExecutionInput] params
    # @option params [String] :notebook_execution_id
    #   <p>The unique identifier of the notebook execution.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     notebook_execution_id: "XmlStringMaxLen256", # required
    #   }
    #   options = {}
    #   response = client.describe_notebook_execution(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     notebook_execution: {
    #       notebook_execution_id: "XmlStringMaxLen256",
    #       editor_id: "XmlStringMaxLen256",
    #       execution_engine: {
    #         id: "XmlStringMaxLen256", # required
    #         type: "EMR" # One of: ["EMR"],
    #         master_instance_security_group_id: "XmlStringMaxLen256",
    #         execution_role_arn: "IAMRoleArn"
    #       },
    #       notebook_execution_name: "XmlStringMaxLen256",
    #       notebook_params: "XmlString",
    #       status: "START_PENDING" # One of: ["START_PENDING", "STARTING", "RUNNING", "FINISHING", "FINISHED", "FAILING", "FAILED", "STOP_PENDING", "STOPPING", "STOPPED"],
    #       start_time: Time.now,
    #       end_time: Time.now,
    #       arn: "XmlStringMaxLen256",
    #       output_notebook_uri: "XmlString",
    #       last_state_change_reason: "XmlString",
    #       notebook_instance_security_group_id: "XmlStringMaxLen256",
    #       tags: [
    #         {
    #           key: "String",
    #           value: "String"
    #         }
    #       ],
    #       notebook_s3_location: {
    #         bucket: "XmlStringMaxLen256",
    #         key: "UriString"
    #       },
    #       output_notebook_s3_location: {
    #         bucket: "XmlStringMaxLen256",
    #         key: "UriString"
    #       },
    #       output_notebook_format: "HTML" # One of: ["HTML"],
    #       environment_variables: {
    #         "XmlStringMaxLen256" => "XmlString"
    #       }
    #     }
    #   }
    # @return [Types::DescribeNotebookExecutionOutput]
    def describe_notebook_execution(params = {}, options = {})
      request = build_request(:describe_notebook_execution, params)
      request.send_request(options)
    end

    # <p>Describes a persistent application user interface.</p>
    # @param [Hash, Types::DescribePersistentAppUIInput] params
    # @option params [String] :persistent_app_ui_id
    #   <p>The identifier for the persistent application user interface.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     persistent_app_ui_id: "XmlStringMaxLen256", # required
    #   }
    #   options = {}
    #   response = client.describe_persistent_app_ui(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     persistent_app_ui: {
    #       persistent_app_ui_id: "XmlStringMaxLen256",
    #       persistent_app_ui_type_list: ["SHS" # One of: ["SHS", "TEZ", "YTS"]],
    #       persistent_app_ui_status: "XmlStringMaxLen256",
    #       author_id: "XmlStringMaxLen256",
    #       creation_time: Time.now,
    #       last_modified_time: Time.now,
    #       last_state_change_reason: "XmlString",
    #       tags: [
    #         {
    #           key: "String",
    #           value: "String"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::DescribePersistentAppUIOutput]
    def describe_persistent_app_ui(params = {}, options = {})
      request = build_request(:describe_persistent_app_ui, params)
      request.send_request(options)
    end

    # <p>Provides Amazon EMR release label details, such as the releases available the
    #          Region where the API request is run, and the available applications for a specific Amazon EMR release label. Can also list Amazon EMR releases that support a
    #          specified version of Spark.</p>
    # @param [Hash, Types::DescribeReleaseLabelInput] params
    # @option params [String] :release_label
    #   <p>The target release label to be described.</p>
    # @option params [String] :next_token
    #   <p>The pagination token. Reserved for future use. Currently set to null.</p>
    # @option params [Integer] :max_results
    #   <p>Reserved for future use. Currently set to null.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     release_label: "String",
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.describe_release_label(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     release_label: "String",
    #     applications: [
    #       {
    #         name: "String",
    #         version: "String"
    #       }
    #     ],
    #     next_token: "String",
    #     available_os_releases: [
    #       {
    #         label: "String"
    #       }
    #     ]
    #   }
    # @return [Types::DescribeReleaseLabelOutput]
    def describe_release_label(params = {}, options = {})
      request = build_request(:describe_release_label, params)
      request.send_request(options)
    end

    # <p>Provides the details of a security configuration by returning the configuration
    #          JSON.</p>
    # @param [Hash, Types::DescribeSecurityConfigurationInput] params
    # @option params [String] :name
    #   <p>The name of the security configuration.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "XmlString", # required
    #   }
    #   options = {}
    #   response = client.describe_security_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "XmlString",
    #     security_configuration: "String",
    #     creation_date_time: Time.now
    #   }
    # @return [Types::DescribeSecurityConfigurationOutput]
    def describe_security_configuration(params = {}, options = {})
      request = build_request(:describe_security_configuration, params)
      request.send_request(options)
    end

    # <p>Provides more detail about the cluster step.</p>
    # @param [Hash, Types::DescribeStepInput] params
    # @option params [String] :cluster_id
    #   <p>The identifier of the cluster with steps to describe.</p>
    # @option params [String] :step_id
    #   <p>The identifier of the step to describe.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_id: "ClusterId", # required
    #     step_id: "StepId", # required
    #   }
    #   options = {}
    #   response = client.describe_step(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     step: {
    #       id: "StepId",
    #       name: "String",
    #       config: {
    #         jar: "String",
    #         properties: {
    #           "String" => "String"
    #         },
    #         main_class: "String",
    #         args: ["String"]
    #       },
    #       action_on_failure: "TERMINATE_JOB_FLOW" # One of: ["TERMINATE_JOB_FLOW", "TERMINATE_CLUSTER", "CANCEL_AND_WAIT", "CONTINUE"],
    #       status: {
    #         state: "PENDING" # One of: ["PENDING", "CANCEL_PENDING", "RUNNING", "COMPLETED", "CANCELLED", "FAILED", "INTERRUPTED"],
    #         state_change_reason: {
    #           code: "NONE" # One of: ["NONE"],
    #           message: "String"
    #         },
    #         failure_details: {
    #           reason: "String",
    #           message: "String",
    #           log_file: "String"
    #         },
    #         timeline: {
    #           creation_date_time: Time.now,
    #           start_date_time: Time.now,
    #           end_date_time: Time.now
    #         }
    #       },
    #       execution_role_arn: "OptionalArnType"
    #     }
    #   }
    # @return [Types::DescribeStepOutput]
    def describe_step(params = {}, options = {})
      request = build_request(:describe_step, params)
      request.send_request(options)
    end

    # <p>Returns details for the specified Amazon EMR Studio including ID, Name, VPC,
    #          Studio access URL, and so on.</p>
    # @param [Hash, Types::DescribeStudioInput] params
    # @option params [String] :studio_id
    #   <p>The Amazon EMR Studio ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     studio_id: "XmlStringMaxLen256", # required
    #   }
    #   options = {}
    #   response = client.describe_studio(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     studio: {
    #       studio_id: "XmlStringMaxLen256",
    #       studio_arn: "XmlStringMaxLen256",
    #       name: "XmlStringMaxLen256",
    #       description: "XmlStringMaxLen256",
    #       auth_mode: "SSO" # One of: ["SSO", "IAM"],
    #       vpc_id: "XmlStringMaxLen256",
    #       subnet_ids: ["String"],
    #       service_role: "XmlString",
    #       user_role: "XmlString",
    #       workspace_security_group_id: "XmlStringMaxLen256",
    #       engine_security_group_id: "XmlStringMaxLen256",
    #       url: "XmlString",
    #       creation_time: Time.now,
    #       default_s3_location: "XmlString",
    #       idp_auth_url: "XmlString",
    #       idp_relay_state_parameter_name: "XmlStringMaxLen256",
    #       tags: [
    #         {
    #           key: "String",
    #           value: "String"
    #         }
    #       ],
    #       idc_instance_arn: "ArnType",
    #       trusted_identity_propagation_enabled: false,
    #       idc_user_assignment: "REQUIRED" # One of: ["REQUIRED", "OPTIONAL"],
    #       encryption_key_arn: "XmlString"
    #     }
    #   }
    # @return [Types::DescribeStudioOutput]
    def describe_studio(params = {}, options = {})
      request = build_request(:describe_studio, params)
      request.send_request(options)
    end

    # <p>Returns the auto-termination policy for an Amazon EMR cluster.</p>
    # @param [Hash, Types::GetAutoTerminationPolicyInput] params
    # @option params [String] :cluster_id
    #   <p>Specifies the ID of the Amazon EMR cluster for which the auto-termination policy
    #            will be fetched.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_id: "ClusterId", # required
    #   }
    #   options = {}
    #   response = client.get_auto_termination_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     auto_termination_policy: {
    #       idle_timeout: 1
    #     }
    #   }
    # @return [Types::GetAutoTerminationPolicyOutput]
    def get_auto_termination_policy(params = {}, options = {})
      request = build_request(:get_auto_termination_policy, params)
      request.send_request(options)
    end

    # <p>Returns the Amazon EMR block public access configuration for your Amazon Web Services account in the current Region. For more information see <a href="https://docs.aws.amazon.com/emr/latest/ManagementGuide/configure-block-public-access.html">Configure Block
    #             Public Access for Amazon EMR</a> in the <i>Amazon EMR
    #             Management Guide</i>.</p>
    # @param [Hash, Types::GetBlockPublicAccessConfigurationInput] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.get_block_public_access_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     block_public_access_configuration: { # required
    #       block_public_security_group_rules: false, # required
    #       permitted_public_security_group_rule_ranges: [
    #         {
    #           min_range: 1, # required
    #           max_range: 1
    #         }
    #       ],
    #       classification: "String",
    #       configurations: [
    #         {
    #           classification: "String",
    #           configurations: {
    #             # recursive ConfigurationList
    #           },
    #           properties: {
    #             "String" => "String"
    #           }
    #         }
    #       ],
    #       properties: {
    #         "String" => "String"
    #       }
    #     },
    #     block_public_access_configuration_metadata: { # required
    #       creation_date_time: Time.now, # required
    #       created_by_arn: "ArnType", # required
    #     }
    #   }
    # @return [Types::GetBlockPublicAccessConfigurationOutput]
    def get_block_public_access_configuration(params = {}, options = {})
      request = build_request(:get_block_public_access_configuration, params)
      request.send_request(options)
    end

    # <p>Provides temporary, HTTP basic credentials that are associated with a given runtime
    #             IAM role and used by a cluster with fine-grained access control
    #          activated. You can use these credentials to connect to cluster endpoints that support
    #          username and password authentication.</p>
    # @param [Hash, Types::GetClusterSessionCredentialsInput] params
    # @option params [String] :cluster_id
    #   <p>The unique identifier of the cluster.</p>
    # @option params [String] :execution_role_arn
    #   <p>The Amazon Resource Name (ARN) of the runtime role for interactive workload submission
    #            on the cluster. The runtime role can be a cross-account IAM role. The
    #            runtime role ARN is a combination of account ID, role name, and role type using the
    #            following format: <code>arn:partition:service:region:account:resource</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_id: "XmlStringMaxLen256", # required
    #     execution_role_arn: "ArnType"
    #   }
    #   options = {}
    #   response = client.get_cluster_session_credentials(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     credentials: {
    #       # One of:
    #       username_password: {
    #         username: "XmlStringMaxLen256",
    #         password: "XmlStringMaxLen256"
    #       }
    #     },
    #     expires_at: Time.now
    #   }
    # @return [Types::GetClusterSessionCredentialsOutput]
    def get_cluster_session_credentials(params = {}, options = {})
      request = build_request(:get_cluster_session_credentials, params)
      request.send_request(options)
    end

    # <p>Fetches the attached managed scaling policy for an Amazon EMR cluster. </p>
    # @param [Hash, Types::GetManagedScalingPolicyInput] params
    # @option params [String] :cluster_id
    #   <p>Specifies the ID of the cluster for which the managed scaling policy will be fetched.
    #         </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_id: "ClusterId", # required
    #   }
    #   options = {}
    #   response = client.get_managed_scaling_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     managed_scaling_policy: {
    #       compute_limits: {
    #         unit_type: "InstanceFleetUnits" # One of: ["InstanceFleetUnits", "Instances", "VCPU"], # required
    #         minimum_capacity_units: 1, # required
    #         maximum_capacity_units: 1, # required
    #         maximum_on_demand_capacity_units: 1,
    #         maximum_core_capacity_units: 1
    #       },
    #       utilization_performance_index: 1,
    #       scaling_strategy: "DEFAULT" # One of: ["DEFAULT", "ADVANCED"]
    #     }
    #   }
    # @return [Types::GetManagedScalingPolicyOutput]
    def get_managed_scaling_policy(params = {}, options = {})
      request = build_request(:get_managed_scaling_policy, params)
      request.send_request(options)
    end

    # <p>The presigned URL properties for the cluster's application user interface.</p>
    # @param [Hash, Types::GetOnClusterAppUIPresignedURLInput] params
    # @option params [String] :cluster_id
    #   <p>The cluster ID associated with the cluster's application user interface presigned URL.</p>
    # @option params [String] :on_cluster_app_ui_type
    #   <p>The application UI type associated with the cluster's application user interface presigned URL.</p>
    # @option params [String] :application_id
    #   <p>The application ID associated with the cluster's application user interface presigned URL.</p>
    # @option params [Boolean] :dry_run
    #   <p>Determines if the user interface presigned URL is for a dry run.</p>
    # @option params [String] :execution_role_arn
    #   <p>The execution role ARN associated with the cluster's application user interface 
    #            presigned URL.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_id: "XmlStringMaxLen256", # required
    #     on_cluster_app_ui_type: "SparkHistoryServer" # One of: ["SparkHistoryServer", "YarnTimelineService", "TezUI", "ApplicationMaster", "JobHistoryServer", "ResourceManager"],
    #     application_id: "XmlStringMaxLen256",
    #     dry_run: false,
    #     execution_role_arn: "ArnType"
    #   }
    #   options = {}
    #   response = client.get_on_cluster_app_ui_presigned_url(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     presigned_url_ready: false,
    #     presigned_url: "XmlString"
    #   }
    # @return [Types::GetOnClusterAppUIPresignedURLOutput]
    def get_on_cluster_app_ui_presigned_url(params = {}, options = {})
      request = build_request(:get_on_cluster_app_ui_presigned_url, params)
      request.send_request(options)
    end

    # <p>The presigned URL properties for the cluster's application user interface.</p>
    # @param [Hash, Types::GetPersistentAppUIPresignedURLInput] params
    # @option params [String] :persistent_app_ui_id
    #   <p>The persistent application user interface ID associated with the presigned URL.</p>
    # @option params [String] :persistent_app_ui_type
    #   <p>The persistent application user interface type associated with the presigned URL.</p>
    # @option params [String] :application_id
    #   <p>The application ID associated with the presigned URL.</p>
    # @option params [Boolean] :auth_proxy_call
    #   <p>A boolean that represents if the caller is an authentication proxy call.</p>
    # @option params [String] :execution_role_arn
    #   <p>The execution role ARN associated with the presigned URL.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     persistent_app_ui_id: "XmlStringMaxLen256", # required
    #     persistent_app_ui_type: "SHS" # One of: ["SHS", "TEZ", "YTS"],
    #     application_id: "XmlStringMaxLen256",
    #     auth_proxy_call: false,
    #     execution_role_arn: "ArnType"
    #   }
    #   options = {}
    #   response = client.get_persistent_app_ui_presigned_url(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     presigned_url_ready: false,
    #     presigned_url: "XmlString"
    #   }
    # @return [Types::GetPersistentAppUIPresignedURLOutput]
    def get_persistent_app_ui_presigned_url(params = {}, options = {})
      request = build_request(:get_persistent_app_ui_presigned_url, params)
      request.send_request(options)
    end

    # <p>Fetches mapping details for the specified Amazon EMR Studio and identity (user
    #          or group).</p>
    # @param [Hash, Types::GetStudioSessionMappingInput] params
    # @option params [String] :studio_id
    #   <p>The ID of the Amazon EMR Studio.</p>
    # @option params [String] :identity_id
    #   <p>The globally unique identifier (GUID) of the user or group. For more information, see
    #               <a href="https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/API_User.html#singlesignon-Type-User-UserId">UserId</a> and <a href="https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/API_Group.html#singlesignon-Type-Group-GroupId">GroupId</a> in the <i>IAM Identity Center Identity Store API
    #               Reference</i>. Either <code>IdentityName</code> or <code>IdentityId</code> must
    #            be specified.</p>
    # @option params [String] :identity_name
    #   <p>The name of the user or group to fetch. For more information, see <a href="https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/API_User.html#singlesignon-Type-User-UserName">UserName</a> and <a href="https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/API_Group.html#singlesignon-Type-Group-DisplayName">DisplayName</a> in the <i>IAM Identity Center Identity Store API
    #               Reference</i>. Either <code>IdentityName</code> or <code>IdentityId</code> must
    #            be specified.</p>
    # @option params [String] :identity_type
    #   <p>Specifies whether the identity to fetch is a user or a group.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     studio_id: "XmlStringMaxLen256", # required
    #     identity_id: "XmlStringMaxLen256",
    #     identity_name: "XmlStringMaxLen256",
    #     identity_type: "USER" # One of: ["USER", "GROUP"], # required
    #   }
    #   options = {}
    #   response = client.get_studio_session_mapping(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     session_mapping: {
    #       studio_id: "XmlStringMaxLen256",
    #       identity_id: "XmlStringMaxLen256",
    #       identity_name: "XmlStringMaxLen256",
    #       identity_type: "USER" # One of: ["USER", "GROUP"],
    #       session_policy_arn: "XmlStringMaxLen256",
    #       creation_time: Time.now,
    #       last_modified_time: Time.now
    #     }
    #   }
    # @return [Types::GetStudioSessionMappingOutput]
    def get_studio_session_mapping(params = {}, options = {})
      request = build_request(:get_studio_session_mapping, params)
      request.send_request(options)
    end

    # <p>Provides information about the bootstrap actions associated with a cluster.</p>
    # @param [Hash, Types::ListBootstrapActionsInput] params
    # @option params [String] :cluster_id
    #   <p>The cluster identifier for the bootstrap actions to list.</p>
    # @option params [String] :marker
    #   <p>The pagination token that indicates the next set of results to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_id: "ClusterId", # required
    #     marker: "Marker"
    #   }
    #   options = {}
    #   response = client.list_bootstrap_actions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     bootstrap_actions: [
    #       {
    #         name: "String",
    #         script_path: "String",
    #         args: ["String"]
    #       }
    #     ],
    #     marker: "Marker"
    #   }
    # @return [Types::ListBootstrapActionsOutput]
    def list_bootstrap_actions(params = {}, options = {})
      request = build_request(:list_bootstrap_actions, params)
      request.send_request(options)
    end

    # <p>Provides the status of all clusters visible to this Amazon Web Services account. Allows
    #          you to filter the list of clusters based on certain criteria; for example, filtering by
    #          cluster creation date and time or by status. This call returns a maximum of 50 clusters in
    #          unsorted order per call, but returns a marker to track the paging of the cluster list
    #          across multiple ListClusters calls.</p>
    # @param [Hash, Types::ListClustersInput] params
    # @option params [Time] :created_after
    #   <p>The creation date and time beginning value filter for listing clusters.</p>
    # @option params [Time] :created_before
    #   <p>The creation date and time end value filter for listing clusters.</p>
    # @option params [Array<String>] :cluster_states
    #   <p>The cluster state filters to apply when listing clusters. Clusters that change state
    #            while this action runs may be not be returned as expected in the list of clusters.</p>
    # @option params [String] :marker
    #   <p>The pagination token that indicates the next set of results to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     created_after: Time.now,
    #     created_before: Time.now,
    #     cluster_states: ["STARTING" # One of: ["STARTING", "BOOTSTRAPPING", "RUNNING", "WAITING", "TERMINATING", "TERMINATED", "TERMINATED_WITH_ERRORS"]],
    #     marker: "Marker"
    #   }
    #   options = {}
    #   response = client.list_clusters(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     clusters: [
    #       {
    #         id: "ClusterId",
    #         name: "String",
    #         status: {
    #           state: "STARTING" # One of: ["STARTING", "BOOTSTRAPPING", "RUNNING", "WAITING", "TERMINATING", "TERMINATED", "TERMINATED_WITH_ERRORS"],
    #           state_change_reason: {
    #             code: "INTERNAL_ERROR" # One of: ["INTERNAL_ERROR", "VALIDATION_ERROR", "INSTANCE_FAILURE", "INSTANCE_FLEET_TIMEOUT", "BOOTSTRAP_FAILURE", "USER_REQUEST", "STEP_FAILURE", "ALL_STEPS_COMPLETED"],
    #             message: "String"
    #           },
    #           timeline: {
    #             creation_date_time: Time.now,
    #             ready_date_time: Time.now,
    #             end_date_time: Time.now
    #           },
    #           error_details: [
    #             {
    #               error_code: "String",
    #               error_data: [
    #                 {
    #                   "String" => "String"
    #                 }
    #               ],
    #               error_message: "String"
    #             }
    #           ]
    #         },
    #         normalized_instance_hours: 1,
    #         cluster_arn: "ArnType",
    #         outpost_arn: "OptionalArnType"
    #       }
    #     ],
    #     marker: "Marker"
    #   }
    # @return [Types::ListClustersOutput]
    def list_clusters(params = {}, options = {})
      request = build_request(:list_clusters, params)
      request.send_request(options)
    end

    # <p>Lists all available details about the instance fleets in a cluster.</p>
    #          <note>
    #             <p>The instance fleet configuration is available only in Amazon EMR releases
    #             4.8.0 and later, excluding 5.0.x versions.</p>
    #          </note>
    # @param [Hash, Types::ListInstanceFleetsInput] params
    # @option params [String] :cluster_id
    #   <p>The unique identifier of the cluster.</p>
    # @option params [String] :marker
    #   <p>The pagination token that indicates the next set of results to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_id: "ClusterId", # required
    #     marker: "Marker"
    #   }
    #   options = {}
    #   response = client.list_instance_fleets(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     instance_fleets: [
    #       {
    #         id: "InstanceFleetId",
    #         name: "XmlStringMaxLen256",
    #         status: {
    #           state: "PROVISIONING" # One of: ["PROVISIONING", "BOOTSTRAPPING", "RUNNING", "RESIZING", "SUSPENDED", "TERMINATING", "TERMINATED"],
    #           state_change_reason: {
    #             code: "INTERNAL_ERROR" # One of: ["INTERNAL_ERROR", "VALIDATION_ERROR", "INSTANCE_FAILURE", "CLUSTER_TERMINATED"],
    #             message: "String"
    #           },
    #           timeline: {
    #             creation_date_time: Time.now,
    #             ready_date_time: Time.now,
    #             end_date_time: Time.now
    #           }
    #         },
    #         instance_fleet_type: "MASTER" # One of: ["MASTER", "CORE", "TASK"],
    #         target_on_demand_capacity: 1,
    #         target_spot_capacity: 1,
    #         provisioned_on_demand_capacity: 1,
    #         provisioned_spot_capacity: 1,
    #         instance_type_specifications: [
    #           {
    #             instance_type: "InstanceType",
    #             weighted_capacity: 1,
    #             bid_price: "XmlStringMaxLen256",
    #             bid_price_as_percentage_of_on_demand_price: 1.0,
    #             configurations: [
    #               {
    #                 classification: "String",
    #                 configurations: {
    #                   # recursive ConfigurationList
    #                 },
    #                 properties: {
    #                   "String" => "String"
    #                 }
    #               }
    #             ],
    #             ebs_block_devices: [
    #               {
    #                 volume_specification: {
    #                   volume_type: "String", # required
    #                   iops: 1,
    #                   size_in_gb: 1, # required
    #                   throughput: 1
    #                 },
    #                 device: "String"
    #               }
    #             ],
    #             ebs_optimized: false,
    #             custom_ami_id: "XmlStringMaxLen256",
    #             priority: 1.0
    #           }
    #         ],
    #         launch_specifications: {
    #           spot_specification: {
    #             timeout_duration_minutes: 1, # required
    #             timeout_action: "SWITCH_TO_ON_DEMAND" # One of: ["SWITCH_TO_ON_DEMAND", "TERMINATE_CLUSTER"], # required
    #             block_duration_minutes: 1,
    #             allocation_strategy: "capacity-optimized" # One of: ["capacity-optimized", "price-capacity-optimized", "lowest-price", "diversified", "capacity-optimized-prioritized"]
    #           },
    #           on_demand_specification: {
    #             allocation_strategy: "lowest-price" # One of: ["lowest-price", "prioritized"], # required
    #             capacity_reservation_options: {
    #               usage_strategy: "use-capacity-reservations-first" # One of: ["use-capacity-reservations-first"],
    #               capacity_reservation_preference: "open" # One of: ["open", "none"],
    #               capacity_reservation_resource_group_arn: "XmlStringMaxLen256"
    #             }
    #           }
    #         },
    #         resize_specifications: {
    #           spot_resize_specification: {
    #             timeout_duration_minutes: 1,
    #             allocation_strategy: "capacity-optimized" # One of: ["capacity-optimized", "price-capacity-optimized", "lowest-price", "diversified", "capacity-optimized-prioritized"]
    #           },
    #           on_demand_resize_specification: {
    #             timeout_duration_minutes: 1,
    #             allocation_strategy: "lowest-price" # One of: ["lowest-price", "prioritized"],
    #             capacity_reservation_options: {
    #               usage_strategy: "use-capacity-reservations-first" # One of: ["use-capacity-reservations-first"],
    #               capacity_reservation_preference: "open" # One of: ["open", "none"],
    #               capacity_reservation_resource_group_arn: "XmlStringMaxLen256"
    #             }
    #           }
    #         },
    #         context: "XmlStringMaxLen256"
    #       }
    #     ],
    #     marker: "Marker"
    #   }
    # @return [Types::ListInstanceFleetsOutput]
    def list_instance_fleets(params = {}, options = {})
      request = build_request(:list_instance_fleets, params)
      request.send_request(options)
    end

    # <p>Provides all available details about the instance groups in a cluster.</p>
    # @param [Hash, Types::ListInstanceGroupsInput] params
    # @option params [String] :cluster_id
    #   <p>The identifier of the cluster for which to list the instance groups.</p>
    # @option params [String] :marker
    #   <p>The pagination token that indicates the next set of results to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_id: "ClusterId", # required
    #     marker: "Marker"
    #   }
    #   options = {}
    #   response = client.list_instance_groups(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     instance_groups: [
    #       {
    #         id: "InstanceGroupId",
    #         name: "String",
    #         market: "ON_DEMAND" # One of: ["ON_DEMAND", "SPOT"],
    #         instance_group_type: "MASTER" # One of: ["MASTER", "CORE", "TASK"],
    #         bid_price: "String",
    #         instance_type: "InstanceType",
    #         requested_instance_count: 1,
    #         running_instance_count: 1,
    #         status: {
    #           state: "PROVISIONING" # One of: ["PROVISIONING", "BOOTSTRAPPING", "RUNNING", "RECONFIGURING", "RESIZING", "SUSPENDED", "TERMINATING", "TERMINATED", "ARRESTED", "SHUTTING_DOWN", "ENDED"],
    #           state_change_reason: {
    #             code: "INTERNAL_ERROR" # One of: ["INTERNAL_ERROR", "VALIDATION_ERROR", "INSTANCE_FAILURE", "CLUSTER_TERMINATED"],
    #             message: "String"
    #           },
    #           timeline: {
    #             creation_date_time: Time.now,
    #             ready_date_time: Time.now,
    #             end_date_time: Time.now
    #           }
    #         },
    #         configurations: [
    #           {
    #             classification: "String",
    #             configurations: {
    #               # recursive ConfigurationList
    #             },
    #             properties: {
    #               "String" => "String"
    #             }
    #           }
    #         ],
    #         configurations_version: 1,
    #         last_successfully_applied_configurations: [
    #           {
    #             classification: "String",
    #             configurations: {
    #               # recursive ConfigurationList
    #             },
    #             properties: {
    #               "String" => "String"
    #             }
    #           }
    #         ],
    #         last_successfully_applied_configurations_version: 1,
    #         ebs_block_devices: [
    #           {
    #             volume_specification: {
    #               volume_type: "String", # required
    #               iops: 1,
    #               size_in_gb: 1, # required
    #               throughput: 1
    #             },
    #             device: "String"
    #           }
    #         ],
    #         ebs_optimized: false,
    #         shrink_policy: {
    #           decommission_timeout: 1,
    #           instance_resize_policy: {
    #             instances_to_terminate: ["InstanceId"],
    #             instances_to_protect: ["InstanceId"],
    #             instance_termination_timeout: 1
    #           }
    #         },
    #         auto_scaling_policy: {
    #           status: {
    #             state: "PENDING" # One of: ["PENDING", "ATTACHING", "ATTACHED", "DETACHING", "DETACHED", "FAILED"],
    #             state_change_reason: {
    #               code: "USER_REQUEST" # One of: ["USER_REQUEST", "PROVISION_FAILURE", "CLEANUP_FAILURE"],
    #               message: "String"
    #             }
    #           },
    #           constraints: {
    #             min_capacity: 1, # required
    #             max_capacity: 1, # required
    #           },
    #           rules: [
    #             {
    #               name: "String", # required
    #               description: "String",
    #               action: { # required
    #                 market: "ON_DEMAND" # One of: ["ON_DEMAND", "SPOT"],
    #                 simple_scaling_policy_configuration: { # required
    #                   adjustment_type: "CHANGE_IN_CAPACITY" # One of: ["CHANGE_IN_CAPACITY", "PERCENT_CHANGE_IN_CAPACITY", "EXACT_CAPACITY"],
    #                   scaling_adjustment: 1, # required
    #                   cool_down: 1
    #                 }
    #               },
    #               trigger: { # required
    #                 cloud_watch_alarm_definition: { # required
    #                   comparison_operator: "GREATER_THAN_OR_EQUAL" # One of: ["GREATER_THAN_OR_EQUAL", "GREATER_THAN", "LESS_THAN", "LESS_THAN_OR_EQUAL"], # required
    #                   evaluation_periods: 1,
    #                   metric_name: "String", # required
    #                   namespace: "String",
    #                   period: 1, # required
    #                   statistic: "SAMPLE_COUNT" # One of: ["SAMPLE_COUNT", "AVERAGE", "SUM", "MINIMUM", "MAXIMUM"],
    #                   threshold: 1.0, # required
    #                   unit: "NONE" # One of: ["NONE", "SECONDS", "MICRO_SECONDS", "MILLI_SECONDS", "BYTES", "KILO_BYTES", "MEGA_BYTES", "GIGA_BYTES", "TERA_BYTES", "BITS", "KILO_BITS", "MEGA_BITS", "GIGA_BITS", "TERA_BITS", "PERCENT", "COUNT", "BYTES_PER_SECOND", "KILO_BYTES_PER_SECOND", "MEGA_BYTES_PER_SECOND", "GIGA_BYTES_PER_SECOND", "TERA_BYTES_PER_SECOND", "BITS_PER_SECOND", "KILO_BITS_PER_SECOND", "MEGA_BITS_PER_SECOND", "GIGA_BITS_PER_SECOND", "TERA_BITS_PER_SECOND", "COUNT_PER_SECOND"],
    #                   dimensions: [
    #                     {
    #                       key: "String",
    #                       value: "String"
    #                     }
    #                   ]
    #                 }
    #               }
    #             }
    #           ]
    #         },
    #         custom_ami_id: "XmlStringMaxLen256"
    #       }
    #     ],
    #     marker: "Marker"
    #   }
    # @return [Types::ListInstanceGroupsOutput]
    def list_instance_groups(params = {}, options = {})
      request = build_request(:list_instance_groups, params)
      request.send_request(options)
    end

    # <p>Provides information for all active Amazon EC2 instances and Amazon EC2
    #          instances terminated in the last 30 days, up to a maximum of 2,000. Amazon EC2
    #          instances in any of the following states are considered active: AWAITING_FULFILLMENT,
    #          PROVISIONING, BOOTSTRAPPING, RUNNING.</p>
    # @param [Hash, Types::ListInstancesInput] params
    # @option params [String] :cluster_id
    #   <p>The identifier of the cluster for which to list the instances.</p>
    # @option params [String] :instance_group_id
    #   <p>The identifier of the instance group for which to list the instances.</p>
    # @option params [Array<String>] :instance_group_types
    #   <p>The type of instance group for which to list the instances.</p>
    # @option params [String] :instance_fleet_id
    #   <p>The unique identifier of the instance fleet.</p>
    # @option params [String] :instance_fleet_type
    #   <p>The node type of the instance fleet. For example MASTER, CORE, or TASK.</p>
    # @option params [Array<String>] :instance_states
    #   <p>A list of instance states that will filter the instances returned with this
    #            request.</p>
    # @option params [String] :marker
    #   <p>The pagination token that indicates the next set of results to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_id: "ClusterId", # required
    #     instance_group_id: "InstanceGroupId",
    #     instance_group_types: ["MASTER" # One of: ["MASTER", "CORE", "TASK"]],
    #     instance_fleet_id: "InstanceFleetId",
    #     instance_fleet_type: "MASTER" # One of: ["MASTER", "CORE", "TASK"],
    #     instance_states: ["AWAITING_FULFILLMENT" # One of: ["AWAITING_FULFILLMENT", "PROVISIONING", "BOOTSTRAPPING", "RUNNING", "TERMINATED"]],
    #     marker: "Marker"
    #   }
    #   options = {}
    #   response = client.list_instances(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     instances: [
    #       {
    #         id: "InstanceId",
    #         ec2_instance_id: "InstanceId",
    #         public_dns_name: "String",
    #         public_ip_address: "String",
    #         private_dns_name: "String",
    #         private_ip_address: "String",
    #         status: {
    #           state: "AWAITING_FULFILLMENT" # One of: ["AWAITING_FULFILLMENT", "PROVISIONING", "BOOTSTRAPPING", "RUNNING", "TERMINATED"],
    #           state_change_reason: {
    #             code: "INTERNAL_ERROR" # One of: ["INTERNAL_ERROR", "VALIDATION_ERROR", "INSTANCE_FAILURE", "BOOTSTRAP_FAILURE", "CLUSTER_TERMINATED"],
    #             message: "String"
    #           },
    #           timeline: {
    #             creation_date_time: Time.now,
    #             ready_date_time: Time.now,
    #             end_date_time: Time.now
    #           }
    #         },
    #         instance_group_id: "String",
    #         instance_fleet_id: "InstanceFleetId",
    #         market: "ON_DEMAND" # One of: ["ON_DEMAND", "SPOT"],
    #         instance_type: "InstanceType",
    #         ebs_volumes: [
    #           {
    #             device: "String",
    #             volume_id: "String"
    #           }
    #         ]
    #       }
    #     ],
    #     marker: "Marker"
    #   }
    # @return [Types::ListInstancesOutput]
    def list_instances(params = {}, options = {})
      request = build_request(:list_instances, params)
      request.send_request(options)
    end

    # <p>Provides summaries of all notebook executions. You can filter the list based on multiple
    #          criteria such as status, time range, and editor id. Returns a maximum of 50 notebook
    #          executions and a marker to track the paging of a longer notebook execution list across
    #          multiple <code>ListNotebookExecutions</code> calls.</p>
    # @param [Hash, Types::ListNotebookExecutionsInput] params
    # @option params [String] :editor_id
    #   <p>The unique ID of the editor associated with the notebook execution.</p>
    # @option params [String] :status
    #   <p>The status filter for listing notebook executions.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>START_PENDING</code> indicates that the cluster has received the execution
    #                  request but execution has not begun.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>STARTING</code> indicates that the execution is starting on the
    #                  cluster.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>RUNNING</code> indicates that the execution is being processed by the
    #                  cluster.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FINISHING</code> indicates that execution processing is in the final
    #                  stages.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FINISHED</code> indicates that the execution has completed without
    #                  error.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FAILING</code> indicates that the execution is failing and will not finish
    #                  successfully.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FAILED</code> indicates that the execution failed.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>STOP_PENDING</code> indicates that the cluster has received a
    #                     <code>StopNotebookExecution</code> request and the stop is pending.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>STOPPING</code> indicates that the cluster is in the process of stopping the
    #                  execution as a result of a <code>StopNotebookExecution</code> request.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>STOPPED</code> indicates that the execution stopped because of a
    #                     <code>StopNotebookExecution</code> request.</p>
    #               </li>
    #            </ul>
    # @option params [Time] :from
    #   <p>The beginning of time range filter for listing notebook executions. The default is the
    #            timestamp of 30 days ago.</p>
    # @option params [Time] :to
    #   <p>The end of time range filter for listing notebook executions. The default is the current
    #            timestamp.</p>
    # @option params [String] :marker
    #   <p>The pagination token, returned by a previous <code>ListNotebookExecutions</code> call,
    #            that indicates the start of the list for this <code>ListNotebookExecutions</code>
    #            call.</p>
    # @option params [String] :execution_engine_id
    #   <p>The unique ID of the execution engine.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     editor_id: "XmlStringMaxLen256",
    #     status: "START_PENDING" # One of: ["START_PENDING", "STARTING", "RUNNING", "FINISHING", "FINISHED", "FAILING", "FAILED", "STOP_PENDING", "STOPPING", "STOPPED"],
    #     from: Time.now,
    #     to: Time.now,
    #     marker: "Marker",
    #     execution_engine_id: "XmlString"
    #   }
    #   options = {}
    #   response = client.list_notebook_executions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     notebook_executions: [
    #       {
    #         notebook_execution_id: "XmlStringMaxLen256",
    #         editor_id: "XmlStringMaxLen256",
    #         notebook_execution_name: "XmlStringMaxLen256",
    #         status: "START_PENDING" # One of: ["START_PENDING", "STARTING", "RUNNING", "FINISHING", "FINISHED", "FAILING", "FAILED", "STOP_PENDING", "STOPPING", "STOPPED"],
    #         start_time: Time.now,
    #         end_time: Time.now,
    #         notebook_s3_location: {
    #           bucket: "XmlStringMaxLen256",
    #           key: "UriString"
    #         },
    #         execution_engine_id: "XmlString"
    #       }
    #     ],
    #     marker: "Marker"
    #   }
    # @return [Types::ListNotebookExecutionsOutput]
    def list_notebook_executions(params = {}, options = {})
      request = build_request(:list_notebook_executions, params)
      request.send_request(options)
    end

    # <p>Retrieves release labels of Amazon EMR services in the Region where the API is
    #          called.</p>
    # @param [Hash, Types::ListReleaseLabelsInput] params
    # @option params [Types::ReleaseLabelFilter] :filters
    #   <p>Filters the results of the request. <code>Prefix</code> specifies the prefix of release
    #            labels to return. <code>Application</code> specifies the application (with/without version)
    #            of release labels to return.</p>
    # @option params [String] :next_token
    #   <p>Specifies the next page of results. If <code>NextToken</code> is not specified, which is
    #            usually the case for the first request of ListReleaseLabels, the first page of results are
    #            determined by other filtering parameters or by the latest version. The
    #               <code>ListReleaseLabels</code> request fails if the identity (Amazon Web Services account
    #            ID) and all filtering parameters are different from the original request, or if the
    #               <code>NextToken</code> is expired or tampered with.</p>
    # @option params [Integer] :max_results
    #   <p>Defines the maximum number of release labels to return in a single response. The default
    #            is <code>100</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     filters: {
    #       prefix: "String",
    #       application: "String"
    #     },
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_release_labels(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     release_labels: ["String"],
    #     next_token: "String"
    #   }
    # @return [Types::ListReleaseLabelsOutput]
    def list_release_labels(params = {}, options = {})
      request = build_request(:list_release_labels, params)
      request.send_request(options)
    end

    # <p>Lists all the security configurations visible to this account, providing their creation
    #          dates and times, and their names. This call returns a maximum of 50 clusters per call, but
    #          returns a marker to track the paging of the cluster list across multiple
    #          ListSecurityConfigurations calls.</p>
    # @param [Hash, Types::ListSecurityConfigurationsInput] params
    # @option params [String] :marker
    #   <p>The pagination token that indicates the set of results to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     marker: "Marker"
    #   }
    #   options = {}
    #   response = client.list_security_configurations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     security_configurations: [
    #       {
    #         name: "XmlString",
    #         creation_date_time: Time.now
    #       }
    #     ],
    #     marker: "Marker"
    #   }
    # @return [Types::ListSecurityConfigurationsOutput]
    def list_security_configurations(params = {}, options = {})
      request = build_request(:list_security_configurations, params)
      request.send_request(options)
    end

    # <p>Provides a list of steps for the cluster in reverse order unless you specify
    #             <code>stepIds</code> with the request or filter by <code>StepStates</code>. You can
    #          specify a maximum of 10 <code>stepIDs</code>. The CLI automatically
    #          paginates results to return a list greater than 50 steps. To return more than 50 steps
    #          using the CLI, specify a <code>Marker</code>, which is a pagination token
    #          that indicates the next set of steps to retrieve.</p>
    # @param [Hash, Types::ListStepsInput] params
    # @option params [String] :cluster_id
    #   <p>The identifier of the cluster for which to list the steps.</p>
    # @option params [Array<String>] :step_states
    #   <p>The filter to limit the step list based on certain states.</p>
    # @option params [Array<String>] :step_ids
    #   <p>The filter to limit the step list based on the identifier of the steps. You can specify
    #            a maximum of ten Step IDs. The character constraint applies to the overall length of the
    #            array.</p>
    # @option params [String] :marker
    #   <p>The maximum number of steps that a single <code>ListSteps</code> action returns is 50.
    #            To return a longer list of steps, use multiple <code>ListSteps</code> actions along with
    #            the <code>Marker</code> parameter, which is a pagination token that indicates the next set
    #            of results to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_id: "ClusterId", # required
    #     step_states: ["PENDING" # One of: ["PENDING", "CANCEL_PENDING", "RUNNING", "COMPLETED", "CANCELLED", "FAILED", "INTERRUPTED"]],
    #     step_ids: ["XmlString"],
    #     marker: "Marker"
    #   }
    #   options = {}
    #   response = client.list_steps(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     steps: [
    #       {
    #         id: "StepId",
    #         name: "String",
    #         config: {
    #           jar: "String",
    #           properties: {
    #             "String" => "String"
    #           },
    #           main_class: "String",
    #           args: ["String"]
    #         },
    #         action_on_failure: "TERMINATE_JOB_FLOW" # One of: ["TERMINATE_JOB_FLOW", "TERMINATE_CLUSTER", "CANCEL_AND_WAIT", "CONTINUE"],
    #         status: {
    #           state: "PENDING" # One of: ["PENDING", "CANCEL_PENDING", "RUNNING", "COMPLETED", "CANCELLED", "FAILED", "INTERRUPTED"],
    #           state_change_reason: {
    #             code: "NONE" # One of: ["NONE"],
    #             message: "String"
    #           },
    #           failure_details: {
    #             reason: "String",
    #             message: "String",
    #             log_file: "String"
    #           },
    #           timeline: {
    #             creation_date_time: Time.now,
    #             start_date_time: Time.now,
    #             end_date_time: Time.now
    #           }
    #         }
    #       }
    #     ],
    #     marker: "Marker"
    #   }
    # @return [Types::ListStepsOutput]
    def list_steps(params = {}, options = {})
      request = build_request(:list_steps, params)
      request.send_request(options)
    end

    # <p>Returns a list of all user or group session mappings for the Amazon EMR Studio
    #          specified by <code>StudioId</code>.</p>
    # @param [Hash, Types::ListStudioSessionMappingsInput] params
    # @option params [String] :studio_id
    #   <p>The ID of the Amazon EMR Studio.</p>
    # @option params [String] :identity_type
    #   <p>Specifies whether to return session mappings for users or groups. If not specified, the
    #            results include session mapping details for both users and groups.</p>
    # @option params [String] :marker
    #   <p>The pagination token that indicates the set of results to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     studio_id: "XmlStringMaxLen256",
    #     identity_type: "USER" # One of: ["USER", "GROUP"],
    #     marker: "Marker"
    #   }
    #   options = {}
    #   response = client.list_studio_session_mappings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     session_mappings: [
    #       {
    #         studio_id: "XmlStringMaxLen256",
    #         identity_id: "XmlStringMaxLen256",
    #         identity_name: "XmlStringMaxLen256",
    #         identity_type: "USER" # One of: ["USER", "GROUP"],
    #         session_policy_arn: "XmlStringMaxLen256",
    #         creation_time: Time.now
    #       }
    #     ],
    #     marker: "Marker"
    #   }
    # @return [Types::ListStudioSessionMappingsOutput]
    def list_studio_session_mappings(params = {}, options = {})
      request = build_request(:list_studio_session_mappings, params)
      request.send_request(options)
    end

    # <p>Returns a list of all Amazon EMR Studios associated with the Amazon Web Services account. The list includes details such as ID, Studio Access URL, and
    #          creation time for each Studio.</p>
    # @param [Hash, Types::ListStudiosInput] params
    # @option params [String] :marker
    #   <p>The pagination token that indicates the set of results to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     marker: "Marker"
    #   }
    #   options = {}
    #   response = client.list_studios(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     studios: [
    #       {
    #         studio_id: "XmlStringMaxLen256",
    #         name: "XmlStringMaxLen256",
    #         vpc_id: "XmlStringMaxLen256",
    #         description: "XmlStringMaxLen256",
    #         url: "XmlStringMaxLen256",
    #         auth_mode: "SSO" # One of: ["SSO", "IAM"],
    #         creation_time: Time.now
    #       }
    #     ],
    #     marker: "Marker"
    #   }
    # @return [Types::ListStudiosOutput]
    def list_studios(params = {}, options = {})
      request = build_request(:list_studios, params)
      request.send_request(options)
    end

    # <p>A list of the instance types that Amazon EMR supports. You can filter the
    #          list by Amazon Web Services Region and Amazon EMR release. </p>
    # @param [Hash, Types::ListSupportedInstanceTypesInput] params
    # @option params [String] :release_label
    #   <p>The Amazon EMR release label determines the <a href="https://docs.aws.amazon.com/emr/latest/ReleaseGuide/emr-release-app-versions-6.x.html">versions of open-source
    #               application packages</a> that Amazon EMR has installed on the cluster.
    #            Release labels are in the format <code>emr-x.x.x</code>, where x.x.x is an Amazon EMR release number such as <code>emr-6.10.0</code>. For more information about Amazon EMR releases and their included application versions and features, see the
    #                  <i>
    #                  <a href="https://docs.aws.amazon.com/emr/latest/ReleaseGuide/emr-release-components.html">Amazon EMR Release
    #                  Guide</a>
    #               </i>.</p>
    # @option params [String] :marker
    #   <p>The pagination token that marks the next set of results to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     release_label: "String", # required
    #     marker: "String"
    #   }
    #   options = {}
    #   response = client.list_supported_instance_types(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     supported_instance_types: [
    #       {
    #         type: "String",
    #         memory_gb: 1.0,
    #         storage_gb: 1,
    #         vcpu: 1,
    #         is64_bits_only: false,
    #         instance_family_id: "String",
    #         ebs_optimized_available: false,
    #         ebs_optimized_by_default: false,
    #         number_of_disks: 1,
    #         ebs_storage_only: false,
    #         architecture: "String"
    #       }
    #     ],
    #     marker: "String"
    #   }
    # @return [Types::ListSupportedInstanceTypesOutput]
    def list_supported_instance_types(params = {}, options = {})
      request = build_request(:list_supported_instance_types, params)
      request.send_request(options)
    end

    # <p>Modifies the number of steps that can be executed concurrently for the cluster specified
    #          using ClusterID.</p>
    # @param [Hash, Types::ModifyClusterInput] params
    # @option params [String] :cluster_id
    #   <p>The unique identifier of the cluster.</p>
    # @option params [Integer] :step_concurrency_level
    #   <p>The number of steps that can be executed concurrently. You can specify a minimum of 1
    #            step and a maximum of 256 steps. We recommend that you do not change this parameter while
    #            steps are running or the <code>ActionOnFailure</code> setting may not behave as expected.
    #            For more information see <a>Step$ActionOnFailure</a>.</p>
    # @option params [Boolean] :extended_support
    #   <p>Reserved.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_id: "String", # required
    #     step_concurrency_level: 1,
    #     extended_support: false
    #   }
    #   options = {}
    #   response = client.modify_cluster(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     step_concurrency_level: 1,
    #     extended_support: false
    #   }
    # @return [Types::ModifyClusterOutput]
    def modify_cluster(params = {}, options = {})
      request = build_request(:modify_cluster, params)
      request.send_request(options)
    end

    # <p>Modifies the target On-Demand and target Spot capacities for the instance fleet with the
    #          specified InstanceFleetID within the cluster specified using ClusterID. The call either
    #          succeeds or fails atomically.</p>
    #          <note>
    #             <p>The instance fleet configuration is available only in Amazon EMR releases
    #             4.8.0 and later, excluding 5.0.x versions.</p>
    #          </note>
    # @param [Hash, Types::ModifyInstanceFleetInput] params
    # @option params [String] :cluster_id
    #   <p>The unique identifier of the cluster.</p>
    # @option params [Types::InstanceFleetModifyConfig] :instance_fleet
    #   <p>The configuration parameters of the instance fleet.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_id: "ClusterId", # required
    #     instance_fleet: { # required
    #       instance_fleet_id: "InstanceFleetId", # required
    #       target_on_demand_capacity: 1,
    #       target_spot_capacity: 1,
    #       resize_specifications: {
    #         spot_resize_specification: {
    #           timeout_duration_minutes: 1,
    #           allocation_strategy: "capacity-optimized" # One of: ["capacity-optimized", "price-capacity-optimized", "lowest-price", "diversified", "capacity-optimized-prioritized"]
    #         },
    #         on_demand_resize_specification: {
    #           timeout_duration_minutes: 1,
    #           allocation_strategy: "lowest-price" # One of: ["lowest-price", "prioritized"],
    #           capacity_reservation_options: {
    #             usage_strategy: "use-capacity-reservations-first" # One of: ["use-capacity-reservations-first"],
    #             capacity_reservation_preference: "open" # One of: ["open", "none"],
    #             capacity_reservation_resource_group_arn: "XmlStringMaxLen256"
    #           }
    #         }
    #       },
    #       instance_type_configs: [
    #         {
    #           instance_type: "InstanceType", # required
    #           weighted_capacity: 1,
    #           bid_price: "XmlStringMaxLen256",
    #           bid_price_as_percentage_of_on_demand_price: 1.0,
    #           ebs_configuration: {
    #             ebs_block_device_configs: [
    #               {
    #                 volume_specification: { # required
    #                   volume_type: "String", # required
    #                   iops: 1,
    #                   size_in_gb: 1, # required
    #                   throughput: 1
    #                 },
    #                 volumes_per_instance: 1
    #               }
    #             ],
    #             ebs_optimized: false
    #           },
    #           configurations: [
    #             {
    #               classification: "String",
    #               configurations: {
    #                 # recursive ConfigurationList
    #               },
    #               properties: {
    #                 "String" => "String"
    #               }
    #             }
    #           ],
    #           custom_ami_id: "XmlStringMaxLen256",
    #           priority: 1.0
    #         }
    #       ],
    #       context: "XmlStringMaxLen256"
    #     }
    #   }
    #   options = {}
    #   response = client.modify_instance_fleet(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def modify_instance_fleet(params = {}, options = {})
      request = build_request(:modify_instance_fleet, params)
      request.send_request(options)
    end

    # <p>ModifyInstanceGroups modifies the number of nodes and configuration settings of an
    #          instance group. The input parameters include the new target instance count for the group
    #          and the instance group ID. The call will either succeed or fail atomically.</p>
    # @param [Hash, Types::ModifyInstanceGroupsInput] params
    # @option params [String] :cluster_id
    #   <p>The ID of the cluster to which the instance group belongs.</p>
    # @option params [Array<Types::InstanceGroupModifyConfig>] :instance_groups
    #   <p>Instance groups to change.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_id: "ClusterId",
    #     instance_groups: [
    #       {
    #         instance_group_id: "XmlStringMaxLen256", # required
    #         instance_count: 1,
    #         ec2_instance_ids_to_terminate: ["InstanceId"],
    #         shrink_policy: {
    #           decommission_timeout: 1,
    #           instance_resize_policy: {
    #             instances_to_terminate: ["InstanceId"],
    #             instances_to_protect: ["InstanceId"],
    #             instance_termination_timeout: 1
    #           }
    #         },
    #         reconfiguration_type: "OVERWRITE" # One of: ["OVERWRITE", "MERGE"],
    #         configurations: [
    #           {
    #             classification: "String",
    #             configurations: {
    #               # recursive ConfigurationList
    #             },
    #             properties: {
    #               "String" => "String"
    #             }
    #           }
    #         ]
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.modify_instance_groups(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def modify_instance_groups(params = {}, options = {})
      request = build_request(:modify_instance_groups, params)
      request.send_request(options)
    end

    # <p>Creates or updates an automatic scaling policy for a core instance group or task
    #          instance group in an Amazon EMR cluster. The automatic scaling policy defines how
    #          an instance group dynamically adds and terminates Amazon EC2 instances in response
    #          to the value of a CloudWatch metric.</p>
    # @param [Hash, Types::PutAutoScalingPolicyInput] params
    # @option params [String] :cluster_id
    #   <p>Specifies the ID of a cluster. The instance group to which the automatic scaling policy
    #            is applied is within this cluster.</p>
    # @option params [String] :instance_group_id
    #   <p>Specifies the ID of the instance group to which the automatic scaling policy is
    #            applied.</p>
    # @option params [Types::AutoScalingPolicy] :auto_scaling_policy
    #   <p>Specifies the definition of the automatic scaling policy.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_id: "ClusterId", # required
    #     instance_group_id: "InstanceGroupId", # required
    #     auto_scaling_policy: { # required
    #       constraints: { # required
    #         min_capacity: 1, # required
    #         max_capacity: 1, # required
    #       },
    #       rules: [ # required
    #         {
    #           name: "String", # required
    #           description: "String",
    #           action: { # required
    #             market: "ON_DEMAND" # One of: ["ON_DEMAND", "SPOT"],
    #             simple_scaling_policy_configuration: { # required
    #               adjustment_type: "CHANGE_IN_CAPACITY" # One of: ["CHANGE_IN_CAPACITY", "PERCENT_CHANGE_IN_CAPACITY", "EXACT_CAPACITY"],
    #               scaling_adjustment: 1, # required
    #               cool_down: 1
    #             }
    #           },
    #           trigger: { # required
    #             cloud_watch_alarm_definition: { # required
    #               comparison_operator: "GREATER_THAN_OR_EQUAL" # One of: ["GREATER_THAN_OR_EQUAL", "GREATER_THAN", "LESS_THAN", "LESS_THAN_OR_EQUAL"], # required
    #               evaluation_periods: 1,
    #               metric_name: "String", # required
    #               namespace: "String",
    #               period: 1, # required
    #               statistic: "SAMPLE_COUNT" # One of: ["SAMPLE_COUNT", "AVERAGE", "SUM", "MINIMUM", "MAXIMUM"],
    #               threshold: 1.0, # required
    #               unit: "NONE" # One of: ["NONE", "SECONDS", "MICRO_SECONDS", "MILLI_SECONDS", "BYTES", "KILO_BYTES", "MEGA_BYTES", "GIGA_BYTES", "TERA_BYTES", "BITS", "KILO_BITS", "MEGA_BITS", "GIGA_BITS", "TERA_BITS", "PERCENT", "COUNT", "BYTES_PER_SECOND", "KILO_BYTES_PER_SECOND", "MEGA_BYTES_PER_SECOND", "GIGA_BYTES_PER_SECOND", "TERA_BYTES_PER_SECOND", "BITS_PER_SECOND", "KILO_BITS_PER_SECOND", "MEGA_BITS_PER_SECOND", "GIGA_BITS_PER_SECOND", "TERA_BITS_PER_SECOND", "COUNT_PER_SECOND"],
    #               dimensions: [
    #                 {
    #                   key: "String",
    #                   value: "String"
    #                 }
    #               ]
    #             }
    #           }
    #         }
    #       ]
    #     }
    #   }
    #   options = {}
    #   response = client.put_auto_scaling_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cluster_id: "ClusterId",
    #     instance_group_id: "InstanceGroupId",
    #     auto_scaling_policy: {
    #       status: {
    #         state: "PENDING" # One of: ["PENDING", "ATTACHING", "ATTACHED", "DETACHING", "DETACHED", "FAILED"],
    #         state_change_reason: {
    #           code: "USER_REQUEST" # One of: ["USER_REQUEST", "PROVISION_FAILURE", "CLEANUP_FAILURE"],
    #           message: "String"
    #         }
    #       },
    #       constraints: {
    #         min_capacity: 1, # required
    #         max_capacity: 1, # required
    #       },
    #       rules: [
    #         {
    #           name: "String", # required
    #           description: "String",
    #           action: { # required
    #             market: "ON_DEMAND" # One of: ["ON_DEMAND", "SPOT"],
    #             simple_scaling_policy_configuration: { # required
    #               adjustment_type: "CHANGE_IN_CAPACITY" # One of: ["CHANGE_IN_CAPACITY", "PERCENT_CHANGE_IN_CAPACITY", "EXACT_CAPACITY"],
    #               scaling_adjustment: 1, # required
    #               cool_down: 1
    #             }
    #           },
    #           trigger: { # required
    #             cloud_watch_alarm_definition: { # required
    #               comparison_operator: "GREATER_THAN_OR_EQUAL" # One of: ["GREATER_THAN_OR_EQUAL", "GREATER_THAN", "LESS_THAN", "LESS_THAN_OR_EQUAL"], # required
    #               evaluation_periods: 1,
    #               metric_name: "String", # required
    #               namespace: "String",
    #               period: 1, # required
    #               statistic: "SAMPLE_COUNT" # One of: ["SAMPLE_COUNT", "AVERAGE", "SUM", "MINIMUM", "MAXIMUM"],
    #               threshold: 1.0, # required
    #               unit: "NONE" # One of: ["NONE", "SECONDS", "MICRO_SECONDS", "MILLI_SECONDS", "BYTES", "KILO_BYTES", "MEGA_BYTES", "GIGA_BYTES", "TERA_BYTES", "BITS", "KILO_BITS", "MEGA_BITS", "GIGA_BITS", "TERA_BITS", "PERCENT", "COUNT", "BYTES_PER_SECOND", "KILO_BYTES_PER_SECOND", "MEGA_BYTES_PER_SECOND", "GIGA_BYTES_PER_SECOND", "TERA_BYTES_PER_SECOND", "BITS_PER_SECOND", "KILO_BITS_PER_SECOND", "MEGA_BITS_PER_SECOND", "GIGA_BITS_PER_SECOND", "TERA_BITS_PER_SECOND", "COUNT_PER_SECOND"],
    #               dimensions: [
    #                 {
    #                   key: "String",
    #                   value: "String"
    #                 }
    #               ]
    #             }
    #           }
    #         }
    #       ]
    #     },
    #     cluster_arn: "ArnType"
    #   }
    # @return [Types::PutAutoScalingPolicyOutput]
    def put_auto_scaling_policy(params = {}, options = {})
      request = build_request(:put_auto_scaling_policy, params)
      request.send_request(options)
    end

    # <note>
    #             <p>Auto-termination is supported in Amazon EMR releases 5.30.0 and 6.1.0 and
    #             later. For more information, see <a href="https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-auto-termination-policy.html">Using an
    #                auto-termination policy</a>.</p>
    #          </note>
    #          <p>Creates or updates an auto-termination policy for an Amazon EMR cluster. An
    #          auto-termination policy defines the amount of idle time in seconds after which a cluster
    #          automatically terminates. For alternative cluster termination options, see <a href="https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-plan-termination.html">Control
    #             cluster termination</a>.</p>
    # @param [Hash, Types::PutAutoTerminationPolicyInput] params
    # @option params [String] :cluster_id
    #   <p>Specifies the ID of the Amazon EMR cluster to which the auto-termination policy
    #            will be attached.</p>
    # @option params [Types::AutoTerminationPolicy] :auto_termination_policy
    #   <p>Specifies the auto-termination policy to attach to the cluster.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_id: "ClusterId", # required
    #     auto_termination_policy: {
    #       idle_timeout: 1
    #     }
    #   }
    #   options = {}
    #   response = client.put_auto_termination_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::PutAutoTerminationPolicyOutput]
    def put_auto_termination_policy(params = {}, options = {})
      request = build_request(:put_auto_termination_policy, params)
      request.send_request(options)
    end

    # <p>Creates or updates an Amazon EMR block public access configuration for your
    #             Amazon Web Services account in the current Region. For more information see <a href="https://docs.aws.amazon.com/emr/latest/ManagementGuide/configure-block-public-access.html">Configure Block
    #             Public Access for Amazon EMR</a> in the <i>Amazon EMR
    #             Management Guide</i>.</p>
    # @param [Hash, Types::PutBlockPublicAccessConfigurationInput] params
    # @option params [Types::BlockPublicAccessConfiguration] :block_public_access_configuration
    #   <p>A configuration for Amazon EMR block public access. The configuration applies to
    #            all clusters created in your account for the current Region. The configuration specifies
    #            whether block public access is enabled. If block public access is enabled, security groups
    #            associated with the cluster cannot have rules that allow inbound traffic from 0.0.0.0/0 or
    #            ::/0 on a port, unless the port is specified as an exception using
    #               <code>PermittedPublicSecurityGroupRuleRanges</code> in the
    #               <code>BlockPublicAccessConfiguration</code>. By default, Port 22 (SSH) is an exception,
    #            and public access is allowed on this port. You can change this by updating
    #               <code>BlockPublicSecurityGroupRules</code> to remove the exception.</p>
    #            <note>
    #               <p>For accounts that created clusters in a Region before November 25, 2019, block public
    #               access is disabled by default in that Region. To use this feature, you must manually
    #               enable and configure it. For accounts that did not create an Amazon EMR cluster
    #               in a Region before this date, block public access is enabled by default in that
    #               Region.</p>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     block_public_access_configuration: { # required
    #       block_public_security_group_rules: false, # required
    #       permitted_public_security_group_rule_ranges: [
    #         {
    #           min_range: 1, # required
    #           max_range: 1
    #         }
    #       ],
    #       classification: "String",
    #       configurations: [
    #         {
    #           classification: "String",
    #           configurations: {
    #             # recursive ConfigurationList
    #           },
    #           properties: {
    #             "String" => "String"
    #           }
    #         }
    #       ],
    #       properties: {
    #         "String" => "String"
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.put_block_public_access_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::PutBlockPublicAccessConfigurationOutput]
    def put_block_public_access_configuration(params = {}, options = {})
      request = build_request(:put_block_public_access_configuration, params)
      request.send_request(options)
    end

    # <p>Creates or updates a managed scaling policy for an Amazon EMR cluster. The
    #          managed scaling policy defines the limits for resources, such as Amazon EC2
    #          instances that can be added or terminated from a cluster. The policy only applies to the
    #          core and task nodes. The master node cannot be scaled after initial configuration. </p>
    # @param [Hash, Types::PutManagedScalingPolicyInput] params
    # @option params [String] :cluster_id
    #   <p>Specifies the ID of an Amazon EMR cluster where the managed scaling policy is
    #            attached. </p>
    # @option params [Types::ManagedScalingPolicy] :managed_scaling_policy
    #   <p>Specifies the constraints for the managed scaling policy. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_id: "ClusterId", # required
    #     managed_scaling_policy: { # required
    #       compute_limits: {
    #         unit_type: "InstanceFleetUnits" # One of: ["InstanceFleetUnits", "Instances", "VCPU"], # required
    #         minimum_capacity_units: 1, # required
    #         maximum_capacity_units: 1, # required
    #         maximum_on_demand_capacity_units: 1,
    #         maximum_core_capacity_units: 1
    #       },
    #       utilization_performance_index: 1,
    #       scaling_strategy: "DEFAULT" # One of: ["DEFAULT", "ADVANCED"]
    #     }
    #   }
    #   options = {}
    #   response = client.put_managed_scaling_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::PutManagedScalingPolicyOutput]
    def put_managed_scaling_policy(params = {}, options = {})
      request = build_request(:put_managed_scaling_policy, params)
      request.send_request(options)
    end

    # <p>Removes an automatic scaling policy from a specified instance group within an Amazon EMR cluster.</p>
    # @param [Hash, Types::RemoveAutoScalingPolicyInput] params
    # @option params [String] :cluster_id
    #   <p>Specifies the ID of a cluster. The instance group to which the automatic scaling policy
    #            is applied is within this cluster.</p>
    # @option params [String] :instance_group_id
    #   <p>Specifies the ID of the instance group to which the scaling policy is applied.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_id: "ClusterId", # required
    #     instance_group_id: "InstanceGroupId", # required
    #   }
    #   options = {}
    #   response = client.remove_auto_scaling_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::RemoveAutoScalingPolicyOutput]
    def remove_auto_scaling_policy(params = {}, options = {})
      request = build_request(:remove_auto_scaling_policy, params)
      request.send_request(options)
    end

    # <p>Removes an auto-termination policy from an Amazon EMR cluster.</p>
    # @param [Hash, Types::RemoveAutoTerminationPolicyInput] params
    # @option params [String] :cluster_id
    #   <p>Specifies the ID of the Amazon EMR cluster from which the auto-termination
    #            policy will be removed.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_id: "ClusterId", # required
    #   }
    #   options = {}
    #   response = client.remove_auto_termination_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::RemoveAutoTerminationPolicyOutput]
    def remove_auto_termination_policy(params = {}, options = {})
      request = build_request(:remove_auto_termination_policy, params)
      request.send_request(options)
    end

    # <p> Removes a managed scaling policy from a specified Amazon EMR cluster. </p>
    # @param [Hash, Types::RemoveManagedScalingPolicyInput] params
    # @option params [String] :cluster_id
    #   <p> Specifies the ID of the cluster from which the managed scaling policy will be removed.
    #         </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_id: "ClusterId", # required
    #   }
    #   options = {}
    #   response = client.remove_managed_scaling_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::RemoveManagedScalingPolicyOutput]
    def remove_managed_scaling_policy(params = {}, options = {})
      request = build_request(:remove_managed_scaling_policy, params)
      request.send_request(options)
    end

    # <p>Removes tags from an Amazon EMR resource, such as a cluster or Amazon EMR Studio. Tags make it easier to associate resources in various ways, such as grouping
    #          clusters to track your Amazon EMR resource allocation costs. For more information,
    #          see <a href="https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-plan-tags.html">Tag
    #             Clusters</a>. </p>
    #          <p>The following example removes the stack tag with value Prod from a cluster:</p>
    # @param [Hash, Types::RemoveTagsInput] params
    # @option params [String] :resource_id
    #   <p>The Amazon EMR resource identifier from which tags will be removed. For example,
    #            a cluster identifier or an Amazon EMR Studio ID.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>A list of tag keys to remove from the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_id: "ResourceId", # required
    #     tag_keys: ["String"], # required
    #   }
    #   options = {}
    #   response = client.remove_tags(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::RemoveTagsOutput]
    def remove_tags(params = {}, options = {})
      request = build_request(:remove_tags, params)
      request.send_request(options)
    end

    # <p>RunJobFlow creates and starts running a new cluster (job flow). The cluster runs the
    #          steps specified. After the steps complete, the cluster stops and the HDFS partition is
    #          lost. To prevent loss of data, configure the last step of the job flow to store results in
    #             Amazon S3. If the <a>JobFlowInstancesConfig</a>
    #             <code>KeepJobFlowAliveWhenNoSteps</code> parameter is set to <code>TRUE</code>, the cluster
    #          transitions to the WAITING state rather than shutting down after the steps have completed. </p>
    #          <p>For additional protection, you can set the <a>JobFlowInstancesConfig</a>
    #             <code>TerminationProtected</code> parameter to <code>TRUE</code> to lock the cluster and
    #          prevent it from being terminated by API call, user intervention, or in the event of a job
    #          flow error.</p>
    #          <p>A maximum of 256 steps are allowed in each job flow.</p>
    #          <p>If your cluster is long-running (such as a Hive data warehouse) or complex, you may
    #          require more than 256 steps to process your data. You can bypass the 256-step limitation in
    #          various ways, including using the SSH shell to connect to the master node and submitting
    #          queries directly to the software running on the master node, such as Hive and
    #          Hadoop.</p>
    #          <p>For long-running clusters, we recommend that you periodically store your results.</p>
    #          <note>
    #             <p>The instance fleets configuration is available only in Amazon EMR releases
    #             4.8.0 and later, excluding 5.0.x versions. The RunJobFlow request can contain
    #             InstanceFleets parameters or InstanceGroups parameters, but not both.</p>
    #          </note>
    # @param [Hash, Types::RunJobFlowInput] params
    # @option params [String] :name
    #   <p>The name of the job flow.</p>
    # @option params [String] :log_uri
    #   <p>The location in Amazon S3 to write the log files of the job flow. If a value is
    #            not provided, logs are not created.</p>
    # @option params [String] :log_encryption_kms_key_id
    #   <p>The KMS key used for encrypting log files. If a value is not
    #            provided, the logs remain encrypted by AES-256. This attribute is only available with
    #               Amazon EMR releases 5.30.0 and later, excluding Amazon EMR 6.0.0.</p>
    # @option params [String] :additional_info
    #   <p>A JSON string for selecting additional features.</p>
    # @option params [String] :ami_version
    #   <p>Applies only to Amazon EMR AMI versions 3.x and 2.x. For Amazon EMR
    #            releases 4.0 and later, <code>ReleaseLabel</code> is used. To specify a custom AMI, use
    #               <code>CustomAmiID</code>.</p>
    # @option params [String] :release_label
    #   <p>The Amazon EMR release label, which determines the version of open-source
    #            application packages installed on the cluster. Release labels are in the form
    #               <code>emr-x.x.x</code>, where x.x.x is an Amazon EMR release version such as
    #               <code>emr-5.14.0</code>. For more information about Amazon EMR release versions
    #            and included application versions and features, see <a href="https://docs.aws.amazon.com/emr/latest/ReleaseGuide/">https://docs.aws.amazon.com/emr/latest/ReleaseGuide/</a>. The release label applies only to Amazon EMR
    #            releases version 4.0 and later. Earlier versions use <code>AmiVersion</code>.</p>
    # @option params [Types::JobFlowInstancesConfig] :instances
    #   <p>A specification of the number and type of Amazon EC2 instances.</p>
    # @option params [Array<Types::StepConfig>] :steps
    #   <p>A list of steps to run.</p>
    # @option params [Array<Types::BootstrapActionConfig>] :bootstrap_actions
    #   <p>A list of bootstrap actions to run before Hadoop starts on the cluster nodes.</p>
    # @option params [Array<String>] :supported_products
    #   <note>
    #               <p>For Amazon EMR releases 3.x and 2.x. For Amazon EMR releases 4.x and
    #               later, use Applications.</p>
    #            </note>
    #            <p>A list of strings that indicates third-party software to use. For more information, see
    #            the <a href="https://docs.aws.amazon.com/emr/latest/DeveloperGuide/emr-dg.pdf">Amazon EMR Developer Guide</a>. Currently supported values are:</p>
    #            <ul>
    #               <li>
    #                  <p>"mapr-m3" - launch the job flow using MapR M3 Edition.</p>
    #               </li>
    #               <li>
    #                  <p>"mapr-m5" - launch the job flow using MapR M5 Edition.</p>
    #               </li>
    #            </ul>
    # @option params [Array<Types::SupportedProductConfig>] :new_supported_products
    #   <note>
    #               <p>For Amazon EMR releases 3.x and 2.x. For Amazon EMR releases 4.x and
    #               later, use Applications.</p>
    #            </note>
    #            <p>A list of strings that indicates third-party software to use with the job flow that
    #            accepts a user argument list. Amazon EMR accepts and forwards the argument list to
    #            the corresponding installation script as bootstrap action arguments. For more information,
    #            see "Launch a Job Flow on the MapR Distribution for Hadoop" in the <a href="https://docs.aws.amazon.com/emr/latest/DeveloperGuide/emr-dg.pdf">Amazon EMR
    #               Developer Guide</a>. Supported values are:</p>
    #            <ul>
    #               <li>
    #                  <p>"mapr-m3" - launch the cluster using MapR M3 Edition.</p>
    #               </li>
    #               <li>
    #                  <p>"mapr-m5" - launch the cluster using MapR M5 Edition.</p>
    #               </li>
    #               <li>
    #                  <p>"mapr" with the user arguments specifying "--edition,m3" or "--edition,m5" -
    #                  launch the job flow using MapR M3 or M5 Edition respectively.</p>
    #               </li>
    #               <li>
    #                  <p>"mapr-m7" - launch the cluster using MapR M7 Edition.</p>
    #               </li>
    #               <li>
    #                  <p>"hunk" - launch the cluster with the Hunk Big Data Analytics Platform.</p>
    #               </li>
    #               <li>
    #                  <p>"hue"- launch the cluster with Hue installed.</p>
    #               </li>
    #               <li>
    #                  <p>"spark" - launch the cluster with Apache Spark installed.</p>
    #               </li>
    #               <li>
    #                  <p>"ganglia" - launch the cluster with the Ganglia Monitoring System
    #                  installed.</p>
    #               </li>
    #            </ul>
    # @option params [Array<Types::Application>] :applications
    #   <p>Applies to Amazon EMR releases 4.0 and later. A case-insensitive list of
    #            applications for Amazon EMR to install and configure when launching the cluster.
    #            For a list of applications available for each Amazon EMR release version, see the
    #               <a href="https://docs.aws.amazon.com/emr/latest/ReleaseGuide/">Amazon EMRRelease
    #               Guide</a>.</p>
    # @option params [Array<Types::Configuration>] :configurations
    #   <p>For Amazon EMR releases 4.0 and later. The list of configurations supplied for
    #            the Amazon EMR cluster that you are creating.</p>
    # @option params [Boolean] :visible_to_all_users
    #   <important>
    #               <p>The VisibleToAllUsers parameter is no longer supported. By default, the value is set
    #               to <code>true</code>. Setting it to <code>false</code> now has no effect.</p>
    #            </important>
    #            <p>Set this value to <code>true</code> so that IAM principals in the Amazon Web Services account associated with the cluster can perform Amazon EMR actions on
    #            the cluster that their IAM policies allow. This value defaults to
    #               <code>true</code> for clusters created using the Amazon EMR API or the CLI
    #            <a href="https://docs.aws.amazon.com/cli/latest/reference/emr/create-cluster.html">create-cluster</a> command.</p>
    #            <p>When set to <code>false</code>, only the IAM principal that created the
    #            cluster and the Amazon Web Services account root user can perform Amazon EMR actions
    #            for the cluster, regardless of the IAM permissions policies attached to
    #            other IAM principals. For more information, see <a href="https://docs.aws.amazon.com/emr/latest/ManagementGuide/security_IAM_emr-with-IAM.html#security_set_visible_to_all_users">Understanding the Amazon EMR cluster VisibleToAllUsers setting</a> in the
    #                  <i>Amazon EMR Management Guide</i>.</p>
    # @option params [String] :job_flow_role
    #   <p>Also called instance profile and Amazon EC2 role. An IAM role for
    #            an Amazon EMR cluster. The Amazon EC2 instances of the cluster assume this
    #            role. The default role is <code>EMR_EC2_DefaultRole</code>. In order to use the default
    #            role, you must have already created it using the CLI or console.</p>
    # @option params [String] :service_role
    #   <p>The IAM role that Amazon EMR assumes in order to access Amazon Web Services resources on your behalf. If you've created a custom service role path, you
    #            must specify it for the service role when you launch your cluster.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of tags to associate with a cluster and propagate to Amazon EC2
    #            instances.</p>
    # @option params [String] :security_configuration
    #   <p>The name of a security configuration to apply to the cluster.</p>
    # @option params [String] :auto_scaling_role
    #   <p>An IAM role for automatic scaling policies. The default role is
    #               <code>EMR_AutoScaling_DefaultRole</code>. The IAM role provides
    #            permissions that the automatic scaling feature requires to launch and terminate Amazon EC2 instances in an instance group.</p>
    # @option params [String] :scale_down_behavior
    #   <p>Specifies the way that individual Amazon EC2 instances terminate when an
    #            automatic scale-in activity occurs or an instance group is resized.
    #               <code>TERMINATE_AT_INSTANCE_HOUR</code> indicates that Amazon EMR terminates
    #            nodes at the instance-hour boundary, regardless of when the request to terminate the
    #            instance was submitted. This option is only available with Amazon EMR 5.1.0 and
    #            later and is the default for clusters created using that version.
    #               <code>TERMINATE_AT_TASK_COMPLETION</code> indicates that Amazon EMR adds nodes
    #            to a deny list and drains tasks from nodes before terminating the Amazon EC2
    #            instances, regardless of the instance-hour boundary. With either behavior, Amazon EMR removes the least active nodes first and blocks instance termination if it could lead to
    #            HDFS corruption. <code>TERMINATE_AT_TASK_COMPLETION</code> available only in Amazon EMR releases 4.1.0 and later, and is the default for releases of Amazon EMR earlier than 5.1.0.</p>
    # @option params [String] :custom_ami_id
    #   <p>Available only in Amazon EMR releases 5.7.0 and later. The ID of a custom Amazon
    #            EBS-backed Linux AMI. If specified, Amazon EMR uses this AMI when it launches
    #            cluster Amazon EC2 instances. For more information about custom AMIs in Amazon EMR, see <a href="https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-custom-ami.html">Using a Custom AMI</a> in the
    #                  <i>Amazon EMR Management Guide</i>. If omitted, the cluster
    #            uses the base Linux AMI for the <code>ReleaseLabel</code> specified. For Amazon EMR
    #            releases 2.x and 3.x, use <code>AmiVersion</code> instead.</p>
    #            <p>For information about creating a custom AMI, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/creating-an-ami-ebs.html">Creating an Amazon EBS-Backed Linux AMI</a> in the <i>Amazon Elastic Compute Cloud User Guide for Linux
    #               Instances</i>. For information about finding an AMI ID, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/finding-an-ami.html">Finding a Linux
    #               AMI</a>. </p>
    # @option params [Integer] :ebs_root_volume_size
    #   <p>The size, in GiB, of the Amazon EBS root device volume of the Linux AMI that is
    #            used for each Amazon EC2 instance. Available in Amazon EMR releases 4.x and
    #            later.</p>
    # @option params [String] :repo_upgrade_on_boot
    #   <p>Applies only when <code>CustomAmiID</code> is used. Specifies which updates from the
    #            Amazon Linux AMI package repositories to apply automatically when the instance boots using
    #            the AMI. If omitted, the default is <code>SECURITY</code>, which indicates that only
    #            security updates are applied. If <code>NONE</code> is specified, no updates are applied,
    #            and all updates must be applied manually.</p>
    # @option params [Types::KerberosAttributes] :kerberos_attributes
    #   <p>Attributes for Kerberos configuration when Kerberos authentication is enabled using a
    #            security configuration. For more information see <a href="https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-kerberos.html">Use Kerberos Authentication</a>
    #            in the <i>Amazon EMR Management Guide</i>.</p>
    # @option params [Integer] :step_concurrency_level
    #   <p>Specifies the number of steps that can be executed concurrently. The default value is
    #               <code>1</code>. The maximum value is <code>256</code>.</p>
    # @option params [Types::ManagedScalingPolicy] :managed_scaling_policy
    #   <p> The specified managed scaling policy for an Amazon EMR cluster. </p>
    # @option params [Array<Types::PlacementGroupConfig>] :placement_group_configs
    #   <p>The specified placement group configuration for an Amazon EMR cluster.</p>
    # @option params [Types::AutoTerminationPolicy] :auto_termination_policy
    #   <p>An auto-termination policy for an Amazon EMR cluster. An auto-termination policy
    #            defines the amount of idle time in seconds after which a cluster automatically terminates.
    #            For alternative cluster termination options, see <a href="https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-plan-termination.html">Control cluster
    #               termination</a>.</p>
    # @option params [String] :os_release_label
    #   <p>Specifies a particular Amazon Linux release for all nodes in a cluster launch RunJobFlow
    #            request. If a release is not specified, Amazon EMR uses the latest validated Amazon
    #            Linux release for cluster launch.</p>
    # @option params [Integer] :ebs_root_volume_iops
    #   <p>The IOPS, of the Amazon EBS root device volume of the Linux AMI that is
    #               used for each Amazon EC2 instance. Available in Amazon EMR releases 6.15.0 and
    #               later.</p>
    # @option params [Integer] :ebs_root_volume_throughput
    #   <p>The throughput, in MiB/s, of the Amazon EBS root device volume of the Linux AMI that is
    #               used for each Amazon EC2 instance. Available in Amazon EMR releases 6.15.0 and
    #               later.</p>
    # @option params [Boolean] :extended_support
    #   <p>Reserved.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "XmlStringMaxLen256", # required
    #     log_uri: "XmlString",
    #     log_encryption_kms_key_id: "XmlString",
    #     additional_info: "XmlString",
    #     ami_version: "XmlStringMaxLen256",
    #     release_label: "XmlStringMaxLen256",
    #     instances: { # required
    #       master_instance_type: "InstanceType",
    #       slave_instance_type: "InstanceType",
    #       instance_count: 1,
    #       instance_groups: [
    #         {
    #           name: "XmlStringMaxLen256",
    #           market: "ON_DEMAND" # One of: ["ON_DEMAND", "SPOT"],
    #           instance_role: "MASTER" # One of: ["MASTER", "CORE", "TASK"], # required
    #           bid_price: "XmlStringMaxLen256",
    #           instance_type: "InstanceType", # required
    #           instance_count: 1, # required
    #           configurations: [
    #             {
    #               classification: "String",
    #               configurations: {
    #                 # recursive ConfigurationList
    #               },
    #               properties: {
    #                 "String" => "String"
    #               }
    #             }
    #           ],
    #           ebs_configuration: {
    #             ebs_block_device_configs: [
    #               {
    #                 volume_specification: { # required
    #                   volume_type: "String", # required
    #                   iops: 1,
    #                   size_in_gb: 1, # required
    #                   throughput: 1
    #                 },
    #                 volumes_per_instance: 1
    #               }
    #             ],
    #             ebs_optimized: false
    #           },
    #           auto_scaling_policy: {
    #             constraints: { # required
    #               min_capacity: 1, # required
    #               max_capacity: 1, # required
    #             },
    #             rules: [ # required
    #               {
    #                 name: "String", # required
    #                 description: "String",
    #                 action: { # required
    #                   market: "ON_DEMAND" # One of: ["ON_DEMAND", "SPOT"],
    #                   simple_scaling_policy_configuration: { # required
    #                     adjustment_type: "CHANGE_IN_CAPACITY" # One of: ["CHANGE_IN_CAPACITY", "PERCENT_CHANGE_IN_CAPACITY", "EXACT_CAPACITY"],
    #                     scaling_adjustment: 1, # required
    #                     cool_down: 1
    #                   }
    #                 },
    #                 trigger: { # required
    #                   cloud_watch_alarm_definition: { # required
    #                     comparison_operator: "GREATER_THAN_OR_EQUAL" # One of: ["GREATER_THAN_OR_EQUAL", "GREATER_THAN", "LESS_THAN", "LESS_THAN_OR_EQUAL"], # required
    #                     evaluation_periods: 1,
    #                     metric_name: "String", # required
    #                     namespace: "String",
    #                     period: 1, # required
    #                     statistic: "SAMPLE_COUNT" # One of: ["SAMPLE_COUNT", "AVERAGE", "SUM", "MINIMUM", "MAXIMUM"],
    #                     threshold: 1.0, # required
    #                     unit: "NONE" # One of: ["NONE", "SECONDS", "MICRO_SECONDS", "MILLI_SECONDS", "BYTES", "KILO_BYTES", "MEGA_BYTES", "GIGA_BYTES", "TERA_BYTES", "BITS", "KILO_BITS", "MEGA_BITS", "GIGA_BITS", "TERA_BITS", "PERCENT", "COUNT", "BYTES_PER_SECOND", "KILO_BYTES_PER_SECOND", "MEGA_BYTES_PER_SECOND", "GIGA_BYTES_PER_SECOND", "TERA_BYTES_PER_SECOND", "BITS_PER_SECOND", "KILO_BITS_PER_SECOND", "MEGA_BITS_PER_SECOND", "GIGA_BITS_PER_SECOND", "TERA_BITS_PER_SECOND", "COUNT_PER_SECOND"],
    #                     dimensions: [
    #                       {
    #                         key: "String",
    #                         value: "String"
    #                       }
    #                     ]
    #                   }
    #                 }
    #               }
    #             ]
    #           },
    #           custom_ami_id: "XmlStringMaxLen256"
    #         }
    #       ],
    #       instance_fleets: [
    #         {
    #           name: "XmlStringMaxLen256",
    #           instance_fleet_type: "MASTER" # One of: ["MASTER", "CORE", "TASK"], # required
    #           target_on_demand_capacity: 1,
    #           target_spot_capacity: 1,
    #           instance_type_configs: [
    #             {
    #               instance_type: "InstanceType", # required
    #               weighted_capacity: 1,
    #               bid_price: "XmlStringMaxLen256",
    #               bid_price_as_percentage_of_on_demand_price: 1.0,
    #               ebs_configuration: {
    #                 ebs_block_device_configs: [
    #                   {
    #                     volume_specification: { # required
    #                       volume_type: "String", # required
    #                       iops: 1,
    #                       size_in_gb: 1, # required
    #                       throughput: 1
    #                     },
    #                     volumes_per_instance: 1
    #                   }
    #                 ],
    #                 ebs_optimized: false
    #               },
    #               configurations: [
    #                 {
    #                   classification: "String",
    #                   configurations: {
    #                     # recursive ConfigurationList
    #                   },
    #                   properties: {
    #                     "String" => "String"
    #                   }
    #                 }
    #               ],
    #               custom_ami_id: "XmlStringMaxLen256",
    #               priority: 1.0
    #             }
    #           ],
    #           launch_specifications: {
    #             spot_specification: {
    #               timeout_duration_minutes: 1, # required
    #               timeout_action: "SWITCH_TO_ON_DEMAND" # One of: ["SWITCH_TO_ON_DEMAND", "TERMINATE_CLUSTER"], # required
    #               block_duration_minutes: 1,
    #               allocation_strategy: "capacity-optimized" # One of: ["capacity-optimized", "price-capacity-optimized", "lowest-price", "diversified", "capacity-optimized-prioritized"]
    #             },
    #             on_demand_specification: {
    #               allocation_strategy: "lowest-price" # One of: ["lowest-price", "prioritized"], # required
    #               capacity_reservation_options: {
    #                 usage_strategy: "use-capacity-reservations-first" # One of: ["use-capacity-reservations-first"],
    #                 capacity_reservation_preference: "open" # One of: ["open", "none"],
    #                 capacity_reservation_resource_group_arn: "XmlStringMaxLen256"
    #               }
    #             }
    #           },
    #           resize_specifications: {
    #             spot_resize_specification: {
    #               timeout_duration_minutes: 1,
    #               allocation_strategy: "capacity-optimized" # One of: ["capacity-optimized", "price-capacity-optimized", "lowest-price", "diversified", "capacity-optimized-prioritized"]
    #             },
    #             on_demand_resize_specification: {
    #               timeout_duration_minutes: 1,
    #               allocation_strategy: "lowest-price" # One of: ["lowest-price", "prioritized"],
    #               capacity_reservation_options: {
    #                 usage_strategy: "use-capacity-reservations-first" # One of: ["use-capacity-reservations-first"],
    #                 capacity_reservation_preference: "open" # One of: ["open", "none"],
    #                 capacity_reservation_resource_group_arn: "XmlStringMaxLen256"
    #               }
    #             }
    #           },
    #           context: "XmlStringMaxLen256"
    #         }
    #       ],
    #       ec2_key_name: "XmlStringMaxLen256",
    #       placement: {
    #         availability_zone: "XmlString",
    #         availability_zones: ["XmlStringMaxLen256"]
    #       },
    #       keep_job_flow_alive_when_no_steps: false,
    #       termination_protected: false,
    #       unhealthy_node_replacement: false,
    #       hadoop_version: "XmlStringMaxLen256",
    #       ec2_subnet_id: "XmlStringMaxLen256",
    #       ec2_subnet_ids: ["XmlStringMaxLen256"],
    #       emr_managed_master_security_group: "XmlStringMaxLen256",
    #       emr_managed_slave_security_group: "XmlStringMaxLen256",
    #       service_access_security_group: "XmlStringMaxLen256",
    #       additional_master_security_groups: ["XmlStringMaxLen256"],
    #       additional_slave_security_groups: ["XmlStringMaxLen256"]
    #     },
    #     steps: [
    #       {
    #         name: "XmlStringMaxLen256", # required
    #         action_on_failure: "TERMINATE_JOB_FLOW" # One of: ["TERMINATE_JOB_FLOW", "TERMINATE_CLUSTER", "CANCEL_AND_WAIT", "CONTINUE"],
    #         hadoop_jar_step: { # required
    #           properties: [
    #             {
    #               key: "XmlString",
    #               value: "XmlString"
    #             }
    #           ],
    #           jar: "XmlString", # required
    #           main_class: "XmlString",
    #           args: ["XmlString"]
    #         }
    #       }
    #     ],
    #     bootstrap_actions: [
    #       {
    #         name: "XmlStringMaxLen256", # required
    #         script_bootstrap_action: { # required
    #           path: "XmlString", # required
    #           args: ["XmlString"]
    #         }
    #       }
    #     ],
    #     supported_products: ["XmlStringMaxLen256"],
    #     new_supported_products: [
    #       {
    #         name: "XmlStringMaxLen256",
    #         args: ["XmlString"]
    #       }
    #     ],
    #     applications: [
    #       {
    #         name: "String",
    #         version: "String",
    #         args: ["String"],
    #         additional_info: {
    #           "String" => "String"
    #         }
    #       }
    #     ],
    #     configurations: [
    #       {
    #         classification: "String",
    #         configurations: {
    #           # recursive ConfigurationList
    #         },
    #         properties: {
    #           "String" => "String"
    #         }
    #       }
    #     ],
    #     visible_to_all_users: false,
    #     job_flow_role: "XmlString",
    #     service_role: "XmlString",
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String"
    #       }
    #     ],
    #     security_configuration: "XmlString",
    #     auto_scaling_role: "XmlString",
    #     scale_down_behavior: "TERMINATE_AT_INSTANCE_HOUR" # One of: ["TERMINATE_AT_INSTANCE_HOUR", "TERMINATE_AT_TASK_COMPLETION"],
    #     custom_ami_id: "XmlStringMaxLen256",
    #     ebs_root_volume_size: 1,
    #     repo_upgrade_on_boot: "SECURITY" # One of: ["SECURITY", "NONE"],
    #     kerberos_attributes: {
    #       realm: "XmlStringMaxLen256", # required
    #       kdc_admin_password: "XmlStringMaxLen256", # required
    #       cross_realm_trust_principal_password: "XmlStringMaxLen256",
    #       ad_domain_join_user: "XmlStringMaxLen256",
    #       ad_domain_join_password: "XmlStringMaxLen256"
    #     },
    #     step_concurrency_level: 1,
    #     managed_scaling_policy: {
    #       compute_limits: {
    #         unit_type: "InstanceFleetUnits" # One of: ["InstanceFleetUnits", "Instances", "VCPU"], # required
    #         minimum_capacity_units: 1, # required
    #         maximum_capacity_units: 1, # required
    #         maximum_on_demand_capacity_units: 1,
    #         maximum_core_capacity_units: 1
    #       },
    #       utilization_performance_index: 1,
    #       scaling_strategy: "DEFAULT" # One of: ["DEFAULT", "ADVANCED"]
    #     },
    #     placement_group_configs: [
    #       {
    #         instance_role: "MASTER" # One of: ["MASTER", "CORE", "TASK"], # required
    #         placement_strategy: "SPREAD" # One of: ["SPREAD", "PARTITION", "CLUSTER", "NONE"]
    #       }
    #     ],
    #     auto_termination_policy: {
    #       idle_timeout: 1
    #     },
    #     os_release_label: "XmlStringMaxLen256",
    #     ebs_root_volume_iops: 1,
    #     ebs_root_volume_throughput: 1,
    #     extended_support: false
    #   }
    #   options = {}
    #   response = client.run_job_flow(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_flow_id: "XmlStringMaxLen256",
    #     cluster_arn: "ArnType"
    #   }
    # @return [Types::RunJobFlowOutput]
    def run_job_flow(params = {}, options = {})
      request = build_request(:run_job_flow, params)
      request.send_request(options)
    end

    # <p>You can use the <code>SetKeepJobFlowAliveWhenNoSteps</code> to configure a cluster (job flow) to terminate after the step execution, i.e., all your 
    #          steps are executed. If you want a transient cluster that shuts down after the last of the current executing steps are completed, 
    #          you can configure <code>SetKeepJobFlowAliveWhenNoSteps</code> to false. If you want a long running cluster, configure <code>SetKeepJobFlowAliveWhenNoSteps</code> to true.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/emr/latest/ManagementGuide/UsingEMR_TerminationProtection.html">Managing Cluster Termination</a> in the <i>Amazon EMR Management Guide</i>.</p>
    # @param [Hash, Types::SetKeepJobFlowAliveWhenNoStepsInput] params
    # @option params [Array<String>] :job_flow_ids
    #   <p>A list of strings that uniquely identify the clusters to protect. This identifier is returned by 
    #            <a href="https://docs.aws.amazon.com/emr/latest/APIReference/API_RunJobFlow.html">RunJobFlow</a> and can also 
    #            be obtained from <a href="https://docs.aws.amazon.com/emr/latest/APIReference/API_DescribeJobFlows.html">DescribeJobFlows</a>.</p>
    # @option params [Boolean] :keep_job_flow_alive_when_no_steps
    #   <p>A Boolean that indicates whether to terminate the cluster after all steps are executed.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_flow_ids: ["XmlString"], # required
    #     keep_job_flow_alive_when_no_steps: false, # required
    #   }
    #   options = {}
    #   response = client.set_keep_job_flow_alive_when_no_steps(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def set_keep_job_flow_alive_when_no_steps(params = {}, options = {})
      request = build_request(:set_keep_job_flow_alive_when_no_steps, params)
      request.send_request(options)
    end

    # <p>SetTerminationProtection locks a cluster (job flow) so the Amazon EC2 instances
    #          in the cluster cannot be terminated by user intervention, an API call, or in the event of a
    #          job-flow error. The cluster still terminates upon successful completion of the job flow.
    #          Calling <code>SetTerminationProtection</code> on a cluster is similar to calling the
    #             Amazon EC2
    #          <code>DisableAPITermination</code> API on all Amazon EC2 instances in a
    #          cluster.</p>
    #          <p>
    #             <code>SetTerminationProtection</code> is used to prevent accidental termination of a
    #          cluster and to ensure that in the event of an error, the instances persist so that you can
    #          recover any data stored in their ephemeral instance storage.</p>
    #          <p> To terminate a cluster that has been locked by setting
    #             <code>SetTerminationProtection</code> to <code>true</code>, you must first unlock the
    #          job flow by a subsequent call to <code>SetTerminationProtection</code> in which you set the
    #          value to <code>false</code>. </p>
    #          <p> For more information, see <a href="https://docs.aws.amazon.com/emr/latest/ManagementGuide/UsingEMR_TerminationProtection.html">Managing Cluster
    #             Termination</a> in the <i>Amazon EMR Management Guide</i>. </p>
    # @param [Hash, Types::SetTerminationProtectionInput] params
    # @option params [Array<String>] :job_flow_ids
    #   <p> A list of strings that uniquely identify the clusters to protect. This identifier is
    #            returned by <a>RunJobFlow</a> and can also be obtained from <a>DescribeJobFlows</a> . </p>
    # @option params [Boolean] :termination_protected
    #   <p>A Boolean that indicates whether to protect the cluster and prevent the Amazon EC2 instances in the cluster from shutting down due to API calls, user intervention, or
    #            job-flow error.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_flow_ids: ["XmlString"], # required
    #     termination_protected: false, # required
    #   }
    #   options = {}
    #   response = client.set_termination_protection(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def set_termination_protection(params = {}, options = {})
      request = build_request(:set_termination_protection, params)
      request.send_request(options)
    end

    # <p>Specify whether to enable unhealthy node replacement, which lets Amazon EMR gracefully 
    #          replace core nodes on a cluster if any nodes become unhealthy. For example, a node becomes 
    #          unhealthy if disk usage is above 90%. If unhealthy node replacement is on and <code>TerminationProtected</code> are off, 
    #          Amazon EMR immediately terminates the unhealthy core nodes. To use unhealthy node replacement 
    #          and retain unhealthy core nodes, use  to turn on
    #          termination protection. In such cases, Amazon EMR adds 
    #          the unhealthy nodes to a denylist, reducing job interruptions and failures.</p>
    #          <p>If unhealthy node replacement is on, Amazon EMR 
    #          notifies YARN and other applications on the cluster to stop scheduling tasks 
    #          with these nodes, moves the data, and then terminates the nodes.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-plan-node-replacement.html">graceful 
    #          node replacement</a> in the <i>Amazon EMR Management Guide</i>.</p>
    # @param [Hash, Types::SetUnhealthyNodeReplacementInput] params
    # @option params [Array<String>] :job_flow_ids
    #   <p>The list of strings that uniquely identify the clusters for which to turn on 
    #            unhealthy node replacement. You can get these identifiers by running the 
    #            <a>RunJobFlow</a> or the <a>DescribeJobFlows</a> operations.</p>
    # @option params [Boolean] :unhealthy_node_replacement
    #   <p>Indicates whether to turn on or turn off graceful unhealthy node replacement.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_flow_ids: ["XmlString"], # required
    #     unhealthy_node_replacement: false, # required
    #   }
    #   options = {}
    #   response = client.set_unhealthy_node_replacement(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def set_unhealthy_node_replacement(params = {}, options = {})
      request = build_request(:set_unhealthy_node_replacement, params)
      request.send_request(options)
    end

    # <important>
    #             <p>The SetVisibleToAllUsers parameter is no longer supported. Your cluster may be
    #             visible to all users in your account. To restrict cluster access using an IAM policy, see <a href="https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-plan-access-IAM.html">Identity and Access
    #                Management for Amazon EMR</a>. </p>
    #          </important>
    #          <p>Sets the <a>Cluster$VisibleToAllUsers</a> value for an Amazon EMR
    #          cluster. When <code>true</code>, IAM principals in the Amazon Web Services account can perform Amazon EMR cluster actions that their IAM policies allow. When <code>false</code>, only the IAM
    #          principal that created the cluster and the Amazon Web Services account root user can perform
    #             Amazon EMR actions on the cluster, regardless of IAM permissions
    #          policies attached to other IAM principals.</p>
    #          <p>This action works on running clusters. When you create a cluster, use the <a>RunJobFlowInput$VisibleToAllUsers</a> parameter.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/emr/latest/ManagementGuide/security_IAM_emr-with-IAM.html#security_set_visible_to_all_users">Understanding the Amazon EMR Cluster VisibleToAllUsers Setting</a> in the
    #                <i>Amazon EMR Management Guide</i>.</p>
    # @param [Hash, Types::SetVisibleToAllUsersInput] params
    # @option params [Array<String>] :job_flow_ids
    #   <p>The unique identifier of the job flow (cluster).</p>
    # @option params [Boolean] :visible_to_all_users
    #   <p>A value of <code>true</code> indicates that an IAM principal in the
    #               Amazon Web Services account can perform Amazon EMR actions on the cluster that
    #            the IAM policies attached to the principal allow. A value of
    #               <code>false</code> indicates that only the IAM principal that created the
    #            cluster and the Amazon Web Services root user can perform Amazon EMR actions on the
    #            cluster.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_flow_ids: ["XmlString"], # required
    #     visible_to_all_users: false, # required
    #   }
    #   options = {}
    #   response = client.set_visible_to_all_users(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def set_visible_to_all_users(params = {}, options = {})
      request = build_request(:set_visible_to_all_users, params)
      request.send_request(options)
    end

    # <p>Starts a notebook execution.</p>
    # @param [Hash, Types::StartNotebookExecutionInput] params
    # @option params [String] :editor_id
    #   <p>The unique identifier of the Amazon EMR Notebook to use for notebook
    #            execution.</p>
    # @option params [String] :relative_path
    #   <p>The path and file name of the notebook file for this execution, relative to the path
    #            specified for the Amazon EMR Notebook. For example, if you specify a path of
    #               <code>s3://MyBucket/MyNotebooks</code> when you create an Amazon EMR Notebook
    #            for a notebook with an ID of <code>e-ABCDEFGHIJK1234567890ABCD</code> (the
    #               <code>EditorID</code> of this request), and you specify a <code>RelativePath</code> of
    #               <code>my_notebook_executions/notebook_execution.ipynb</code>, the location of the file
    #            for the notebook execution is
    #               <code>s3://MyBucket/MyNotebooks/e-ABCDEFGHIJK1234567890ABCD/my_notebook_executions/notebook_execution.ipynb</code>.</p>
    # @option params [String] :notebook_execution_name
    #   <p>An optional name for the notebook execution.</p>
    # @option params [String] :notebook_params
    #   <p>Input parameters in JSON format passed to the Amazon EMR Notebook at runtime for
    #            execution.</p>
    # @option params [Types::ExecutionEngineConfig] :execution_engine
    #   <p>Specifies the execution engine (cluster) that runs the notebook execution.</p>
    # @option params [String] :service_role
    #   <p>The name or ARN of the IAM role that is used as the service role for
    #               Amazon EMR (the Amazon EMR role) for the notebook execution.</p>
    # @option params [String] :notebook_instance_security_group_id
    #   <p>The unique identifier of the Amazon EC2 security group to associate with the
    #               Amazon EMR Notebook for this notebook execution.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of tags associated with a notebook execution. Tags are user-defined key-value
    #            pairs that consist of a required key string with a maximum of 128 characters and an
    #            optional value string with a maximum of 256 characters.</p>
    # @option params [Types::NotebookS3LocationFromInput] :notebook_s3_location
    #   <p>The Amazon S3 location for the notebook execution input.</p>
    # @option params [Types::OutputNotebookS3LocationFromInput] :output_notebook_s3_location
    #   <p>The Amazon S3 location for the notebook execution output.</p>
    # @option params [String] :output_notebook_format
    #   <p>The output format for the notebook execution.</p>
    # @option params [Hash<String, String>] :environment_variables
    #   <p>The environment variables associated with the notebook execution.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     editor_id: "XmlStringMaxLen256",
    #     relative_path: "XmlString",
    #     notebook_execution_name: "XmlStringMaxLen256",
    #     notebook_params: "XmlString",
    #     execution_engine: { # required
    #       id: "XmlStringMaxLen256", # required
    #       type: "EMR" # One of: ["EMR"],
    #       master_instance_security_group_id: "XmlStringMaxLen256",
    #       execution_role_arn: "IAMRoleArn"
    #     },
    #     service_role: "XmlString", # required
    #     notebook_instance_security_group_id: "XmlStringMaxLen256",
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String"
    #       }
    #     ],
    #     notebook_s3_location: {
    #       bucket: "XmlStringMaxLen256",
    #       key: "UriString"
    #     },
    #     output_notebook_s3_location: {
    #       bucket: "XmlStringMaxLen256",
    #       key: "UriString"
    #     },
    #     output_notebook_format: "HTML" # One of: ["HTML"],
    #     environment_variables: {
    #       "XmlStringMaxLen256" => "XmlString"
    #     }
    #   }
    #   options = {}
    #   response = client.start_notebook_execution(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     notebook_execution_id: "XmlStringMaxLen256"
    #   }
    # @return [Types::StartNotebookExecutionOutput]
    def start_notebook_execution(params = {}, options = {})
      request = build_request(:start_notebook_execution, params)
      request.send_request(options)
    end

    # <p>Stops a notebook execution.</p>
    # @param [Hash, Types::StopNotebookExecutionInput] params
    # @option params [String] :notebook_execution_id
    #   <p>The unique identifier of the notebook execution.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     notebook_execution_id: "XmlStringMaxLen256", # required
    #   }
    #   options = {}
    #   response = client.stop_notebook_execution(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def stop_notebook_execution(params = {}, options = {})
      request = build_request(:stop_notebook_execution, params)
      request.send_request(options)
    end

    # <p>TerminateJobFlows shuts a list of clusters (job flows) down. When a job flow is shut
    #          down, any step not yet completed is canceled and the Amazon EC2 instances on which
    #          the cluster is running are stopped. Any log files not already saved are uploaded to Amazon S3 if a LogUri was specified when the cluster was created.</p>
    #          <p>The maximum number of clusters allowed is 10. The call to <code>TerminateJobFlows</code>
    #          is asynchronous. Depending on the configuration of the cluster, it may take up to 1-5
    #          minutes for the cluster to completely terminate and release allocated resources, such as
    #             Amazon EC2 instances.</p>
    # @param [Hash, Types::TerminateJobFlowsInput] params
    # @option params [Array<String>] :job_flow_ids
    #   <p>A list of job flows to be shut down.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_flow_ids: ["XmlString"], # required
    #   }
    #   options = {}
    #   response = client.terminate_job_flows(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def terminate_job_flows(params = {}, options = {})
      request = build_request(:terminate_job_flows, params)
      request.send_request(options)
    end

    # <p>Updates an Amazon EMR Studio configuration, including attributes such as name,
    #          description, and subnets.</p>
    # @param [Hash, Types::UpdateStudioInput] params
    # @option params [String] :studio_id
    #   <p>The ID of the Amazon EMR Studio to update.</p>
    # @option params [String] :name
    #   <p>A descriptive name for the Amazon EMR Studio.</p>
    # @option params [String] :description
    #   <p>A detailed description to assign to the Amazon EMR Studio.</p>
    # @option params [Array<String>] :subnet_ids
    #   <p>A list of subnet IDs to associate with the Amazon EMR Studio. The list can
    #            include new subnet IDs, but must also include all of the subnet IDs previously associated
    #            with the Studio. The list order does not matter. A Studio can have a maximum of 5 subnets.
    #            The subnets must belong to the same VPC as the Studio. </p>
    # @option params [String] :default_s3_location
    #   <p>The Amazon S3 location to back up Workspaces and notebook files for the Amazon EMR Studio.</p>
    # @option params [String] :encryption_key_arn
    #   <p>The KMS key identifier (ARN) used to encrypt Amazon EMR Studio workspace and notebook files when backed up to Amazon S3.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     studio_id: "XmlStringMaxLen256", # required
    #     name: "XmlStringMaxLen256",
    #     description: "XmlStringMaxLen256",
    #     subnet_ids: ["String"],
    #     default_s3_location: "XmlString",
    #     encryption_key_arn: "XmlString"
    #   }
    #   options = {}
    #   response = client.update_studio(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_studio(params = {}, options = {})
      request = build_request(:update_studio, params)
      request.send_request(options)
    end

    # <p>Updates the session policy attached to the user or group for the specified Amazon EMR Studio.</p>
    # @param [Hash, Types::UpdateStudioSessionMappingInput] params
    # @option params [String] :studio_id
    #   <p>The ID of the Amazon EMR Studio.</p>
    # @option params [String] :identity_id
    #   <p>The globally unique identifier (GUID) of the user or group. For more information, see
    #               <a href="https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/API_User.html#singlesignon-Type-User-UserId">UserId</a> and <a href="https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/API_Group.html#singlesignon-Type-Group-GroupId">GroupId</a> in the <i>IAM Identity Center Identity Store API
    #               Reference</i>. Either <code>IdentityName</code> or <code>IdentityId</code> must
    #            be specified.</p>
    # @option params [String] :identity_name
    #   <p>The name of the user or group to update. For more information, see <a href="https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/API_User.html#singlesignon-Type-User-UserName">UserName</a> and <a href="https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/API_Group.html#singlesignon-Type-Group-DisplayName">DisplayName</a> in the <i>IAM Identity Center Identity Store API
    #               Reference</i>. Either <code>IdentityName</code> or <code>IdentityId</code> must
    #            be specified.</p>
    # @option params [String] :identity_type
    #   <p>Specifies whether the identity to update is a user or a group.</p>
    # @option params [String] :session_policy_arn
    #   <p>The Amazon Resource Name (ARN) of the session policy to associate with the specified
    #            user or group.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     studio_id: "XmlStringMaxLen256", # required
    #     identity_id: "XmlStringMaxLen256",
    #     identity_name: "XmlStringMaxLen256",
    #     identity_type: "USER" # One of: ["USER", "GROUP"], # required
    #     session_policy_arn: "XmlStringMaxLen256", # required
    #   }
    #   options = {}
    #   response = client.update_studio_session_mapping(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_studio_session_mapping(params = {}, options = {})
      request = build_request(:update_studio_session_mapping, params)
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
      context[:gem_name] = 'aws-sdk-emr'
      context[:gem_version] = '2.0.0.pre0'
      Smithy::Client::Request.new(handlers: handlers, context: context)
    end

    private

    def waiters
      {
        cluster_running: Waiters::ClusterRunning,
        cluster_terminated: Waiters::ClusterTerminated,
        step_complete: Waiters::StepComplete
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
