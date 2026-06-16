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
require 'smithy-client/plugins/sign_requests'
require 'smithy-client/plugins/transfer_encoding'
require 'aws-sdk-core/plugins/global_configuration'
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/invocation_id'
require 'aws-sdk-core/plugins/recursion_detection'
require 'aws-sdk-core/plugins/retry_errors'
require 'aws-sdk-core/plugins/stub_responses'
require 'aws-sdk-core/plugins/json_rpc_protocol'
require 'aws-sdk-core/plugins/regional_endpoints'
require 'aws-sdk-core/plugins/sigv4'

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:devicefarm)

module Aws::DeviceFarm
  # An API client for Aws::DeviceFarm.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::DeviceFarm20150623
    @identifier = :devicefarm

    add_plugin(::Aws::DeviceFarm::Plugins::Endpoint)
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
    add_plugin(Smithy::Client::Plugins::SignRequests)
    add_plugin(Smithy::Client::Plugins::TransferEncoding)
    add_plugin(Aws::Core::Plugins::GlobalConfiguration)
    add_plugin(Aws::Core::Plugins::SharedConfig)
    add_plugin(Aws::Core::Plugins::UserAgent)
    add_plugin(Aws::Core::Plugins::InvocationId)
    add_plugin(Aws::Core::Plugins::RecursionDetection)
    add_plugin(Aws::Core::Plugins::RetryErrors)
    add_plugin(Aws::Core::Plugins::StubResponses)
    add_plugin(Aws::Core::Plugins::JsonRpcProtocol)
    add_plugin(Aws::Core::Plugins::RegionalEndpoints)
    add_plugin(Aws::Core::Plugins::SigV4)

    # @param options [Hash] Client options
    # @option options [String] :access_key_id
    # @option options [String] :account_id
    # @option options [String] :account_id_endpoint_mode
    #  The account ID endpoint mode to use. This can be one of the following values:
    #  * `preferred` - (default) Use the account ID endpoint if available, otherwise use the standard endpoint.
    #  * `disabled` - Never use the account ID endpoint, only use the standard endpoint.
    #  * `required` - Always use the account ID endpoint. If the account ID cannot be retrieved from credentials, an error is raised.
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::DeviceFarm::EndpointProvider)
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
    # @option options [Integer] :max_attempts (3)
    #  The maximum number attempts that will be made for a single request, including
    #  the initial attempt.
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
    # @option options [String] :retry_mode (standard)
    #  Specifies which retry algorithm to use. Values are:
    #  
    #  * `standard` - A standardized set of retry rules across the AWS SDKs.
    #    This includes support for retry quotas, which limit the number of
    #    unsuccessful retries a client can make. This is the default
    #    value if no retry mode is provided.
    #  
    #  * `adaptive` - A retry mode that includes all the functionality of
    #    `standard` mode along with automatic client side throttling.
    # @option options [Object] :retry_strategy
    #  The retry strategy used by the client. If not provided, a default strategy is built
    #  based on `:retry_mode` — either `Standard` or `Adaptive`.
    #  
    #  A custom strategy must respond to:
    #  * `#acquire_initial_retry_token` - returns a token
    #  * `#refresh_retry_token(token, error_info)` - returns a token or nil
    #  * `#record_success(token)` - records a successful request
    #  * `#request_bookkeeping(error_info = nil)` - updates internal state
    # @option options [String] :sdk_ua_app_id
    #  A unique and opaque application ID that is appended to the User-Agent header as app/sdk_ua_app_id.
    #  It should have a maximum length of 50. This variable is sourced from environment variable
    #  `AWS_SDK_UA_APP_ID` or the shared config profile attribute `sdk_ua_app_id`.
    # @option options [String] :secret_access_key
    # @option options [String] :session_token
    # @option options [Boolean] :stub_responses
    #  When `true`, the client will return stubbed responses instead of networking requests.
    #  By default fake responses are generated and returned. You can specify the response data
    #  to return or errors to raise by calling {Smithy::Client::Stubs#stub_responses}.
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

    # <p>Creates a device pool.</p>
    # @param [Hash, Types::CreateDevicePoolRequest] params
    # @option params [String] :project_arn
    #   <p>The ARN of the project for the device pool.</p>
    # @option params [String] :name
    #   <p>The device pool's name.</p>
    # @option params [String] :description
    #   <p>The device pool's description.</p>
    # @option params [Array<Types::Rule>] :rules
    #   <p>The device pool's rules.</p>
    # @option params [Integer] :max_devices
    #   <p>The number of devices that Device Farm can add to your device pool. Device Farm adds devices that are
    #               available and meet the criteria that you assign for the <code>rules</code> parameter. Depending on how many
    #               devices meet these constraints, your device pool might contain fewer devices than the value for this
    #               parameter.</p>
    #           <p>By specifying the maximum number of devices, you can control the costs that you incur
    #               by running tests.</p>
    # @example To create a new device pool
    #   # The following example creates a new device pool named MyDevicePool inside an existing project.
    #   params = {
    #     project_arn: "arn:aws:devicefarm:us-west-2:123456789101:project:EXAMPLE-GUID-123-456",
    #     name: "MyDevicePool",
    #     description: "My Android devices",
    #     rules: [
    #     ]
    #   }
    #   options = {}
    #   response = client.create_device_pool(params, options)
    #   response.to_h #=>
    #   {
    #     device_pool: {
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     project_arn: "AmazonResourceName", # required
    #     name: "Name", # required
    #     description: "Message",
    #     rules: [ # required
    #       {
    #         attribute: "ARN" # One of: ["ARN", "PLATFORM", "FORM_FACTOR", "MANUFACTURER", "REMOTE_ACCESS_ENABLED", "REMOTE_DEBUG_ENABLED", "APPIUM_VERSION", "INSTANCE_ARN", "INSTANCE_LABELS", "FLEET_TYPE", "OS_VERSION", "MODEL", "AVAILABILITY"],
    #         operator: "EQUALS" # One of: ["EQUALS", "LESS_THAN", "LESS_THAN_OR_EQUALS", "GREATER_THAN", "GREATER_THAN_OR_EQUALS", "IN", "NOT_IN", "CONTAINS"],
    #         value: "String"
    #       }
    #     ],
    #     max_devices: 1
    #   }
    #   options = {}
    #   response = client.create_device_pool(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     device_pool: {
    #       arn: "AmazonResourceName",
    #       name: "Name",
    #       description: "Message",
    #       type: "CURATED" # One of: ["CURATED", "PRIVATE"],
    #       rules: [
    #         {
    #           attribute: "ARN" # One of: ["ARN", "PLATFORM", "FORM_FACTOR", "MANUFACTURER", "REMOTE_ACCESS_ENABLED", "REMOTE_DEBUG_ENABLED", "APPIUM_VERSION", "INSTANCE_ARN", "INSTANCE_LABELS", "FLEET_TYPE", "OS_VERSION", "MODEL", "AVAILABILITY"],
    #           operator: "EQUALS" # One of: ["EQUALS", "LESS_THAN", "LESS_THAN_OR_EQUALS", "GREATER_THAN", "GREATER_THAN_OR_EQUALS", "IN", "NOT_IN", "CONTAINS"],
    #           value: "String"
    #         }
    #       ],
    #       max_devices: 1
    #     }
    #   }
    # @return [Types::CreateDevicePoolResult]
    def create_device_pool(params = {}, options = {})
      request = build_request(:create_device_pool, params)
      request.send_request(options)
    end

    # <p>Creates a profile that can be applied to one or more private fleet device
    #             instances.</p>
    # @param [Hash, Types::CreateInstanceProfileRequest] params
    # @option params [String] :name
    #   <p>The name of your instance profile.</p>
    # @option params [String] :description
    #   <p>The description of your instance profile.</p>
    # @option params [Boolean] :package_cleanup
    #   <p>When set to <code>true</code>, Device Farm removes app packages after a test run. The default value is
    #                   <code>false</code> for private devices.</p>
    # @option params [Array<String>] :exclude_app_packages_from_cleanup
    #   <p>An array of strings that specifies the list of app packages that should not be cleaned up from the device
    #               after a test run.</p>
    #           <p>The list of packages is considered only if you set <code>packageCleanup</code> to
    #               <code>true</code>.</p>
    # @option params [Boolean] :reboot_after_use
    #   <p>When set to <code>true</code>, Device Farm reboots the instance after a test run. The default value is
    #                   <code>true</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "Name", # required
    #     description: "Message",
    #     package_cleanup: false,
    #     exclude_app_packages_from_cleanup: ["String"],
    #     reboot_after_use: false
    #   }
    #   options = {}
    #   response = client.create_instance_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     instance_profile: {
    #       arn: "AmazonResourceName",
    #       package_cleanup: false,
    #       exclude_app_packages_from_cleanup: ["String"],
    #       reboot_after_use: false,
    #       name: "Name",
    #       description: "Message"
    #     }
    #   }
    # @return [Types::CreateInstanceProfileResult]
    def create_instance_profile(params = {}, options = {})
      request = build_request(:create_instance_profile, params)
      request.send_request(options)
    end

    # <p>Creates a network profile.</p>
    # @param [Hash, Types::CreateNetworkProfileRequest] params
    # @option params [String] :project_arn
    #   <p>The Amazon Resource Name (ARN) of the project for which you want to create a
    #               network profile.</p>
    # @option params [String] :name
    #   <p>The name for the new network profile.</p>
    # @option params [String] :description
    #   <p>The description of the network profile.</p>
    # @option params [String] :type
    #   <p>The type of network profile to create. Valid values are listed here.</p>
    # @option params [Integer] :uplink_bandwidth_bits
    #   <p>The data throughput rate in bits per second, as an integer from 0 to
    #               104857600.</p>
    # @option params [Integer] :downlink_bandwidth_bits
    #   <p>The data throughput rate in bits per second, as an integer from 0 to
    #               104857600.</p>
    # @option params [Integer] :uplink_delay_ms
    #   <p>Delay time for all packets to destination in milliseconds as an integer from 0 to
    #               2000.</p>
    # @option params [Integer] :downlink_delay_ms
    #   <p>Delay time for all packets to destination in milliseconds as an integer from 0 to
    #               2000.</p>
    # @option params [Integer] :uplink_jitter_ms
    #   <p>Time variation in the delay of received packets in milliseconds as an integer from
    #               0 to 2000.</p>
    # @option params [Integer] :downlink_jitter_ms
    #   <p>Time variation in the delay of received packets in milliseconds as an integer from
    #               0 to 2000.</p>
    # @option params [Integer] :uplink_loss_percent
    #   <p>Proportion of transmitted packets that fail to arrive from 0 to 100
    #               percent.</p>
    # @option params [Integer] :downlink_loss_percent
    #   <p>Proportion of received packets that fail to arrive from 0 to 100 percent.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     project_arn: "AmazonResourceName", # required
    #     name: "Name", # required
    #     description: "Message",
    #     type: "CURATED" # One of: ["CURATED", "PRIVATE"],
    #     uplink_bandwidth_bits: 1,
    #     downlink_bandwidth_bits: 1,
    #     uplink_delay_ms: 1,
    #     downlink_delay_ms: 1,
    #     uplink_jitter_ms: 1,
    #     downlink_jitter_ms: 1,
    #     uplink_loss_percent: 1,
    #     downlink_loss_percent: 1
    #   }
    #   options = {}
    #   response = client.create_network_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     network_profile: {
    #       arn: "AmazonResourceName",
    #       name: "Name",
    #       description: "Message",
    #       type: "CURATED" # One of: ["CURATED", "PRIVATE"],
    #       uplink_bandwidth_bits: 1,
    #       downlink_bandwidth_bits: 1,
    #       uplink_delay_ms: 1,
    #       downlink_delay_ms: 1,
    #       uplink_jitter_ms: 1,
    #       downlink_jitter_ms: 1,
    #       uplink_loss_percent: 1,
    #       downlink_loss_percent: 1
    #     }
    #   }
    # @return [Types::CreateNetworkProfileResult]
    def create_network_profile(params = {}, options = {})
      request = build_request(:create_network_profile, params)
      request.send_request(options)
    end

    # <p>Creates a project.</p>
    # @param [Hash, Types::CreateProjectRequest] params
    # @option params [String] :name
    #   <p>The project's name.</p>
    # @option params [Integer] :default_job_timeout_minutes
    #   <p>Sets the execution timeout value (in minutes) for a project. All test runs in this project use the
    #               specified execution timeout value unless overridden when scheduling a run.</p>
    # @option params [Types::VpcConfig] :vpc_config
    #   <p>The VPC security groups and subnets that are attached to a project.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "Name", # required
    #     default_job_timeout_minutes: 1,
    #     vpc_config: {
    #       security_group_ids: ["SecurityGroupId"], # required
    #       subnet_ids: ["SubnetId"], # required
    #       vpc_id: "NonEmptyString", # required
    #     }
    #   }
    #   options = {}
    #   response = client.create_project(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     project: {
    #       arn: "AmazonResourceName",
    #       name: "Name",
    #       default_job_timeout_minutes: 1,
    #       created: Time.now,
    #       vpc_config: {
    #         security_group_ids: ["SecurityGroupId"], # required
    #         subnet_ids: ["SubnetId"], # required
    #         vpc_id: "NonEmptyString", # required
    #       }
    #     }
    #   }
    # @return [Types::CreateProjectResult]
    def create_project(params = {}, options = {})
      request = build_request(:create_project, params)
      request.send_request(options)
    end

    # <p>Specifies and starts a remote access session.</p>
    # @param [Hash, Types::CreateRemoteAccessSessionRequest] params
    # @option params [String] :project_arn
    #   <p>The Amazon Resource Name (ARN) of the project for which you want to create a remote
    #               access session.</p>
    # @option params [String] :device_arn
    #   <p>The ARN of the device for which you want to create a remote access session.</p>
    # @option params [String] :instance_arn
    #   <p>The Amazon Resource Name (ARN) of the device instance for which you want to create a
    #               remote access session.</p>
    # @option params [String] :ssh_public_key
    #   <p>Ignored. The public key of the <code>ssh</code> key pair you want to use for connecting to remote
    #               devices in your remote debugging session. This key is required only if <code>remoteDebugEnabled</code> is
    #               set to <code>true</code>.</p>
    #           <p>Remote debugging is <a href="https://docs.aws.amazon.com/devicefarm/latest/developerguide/history.html">no
    #               longer supported</a>.</p>
    # @option params [Boolean] :remote_debug_enabled
    #   <p>Set to <code>true</code> if you want to access devices remotely for debugging in
    #               your remote access session.</p>
    #           <p>Remote debugging is <a href="https://docs.aws.amazon.com/devicefarm/latest/developerguide/history.html">no
    #               longer supported</a>.</p>
    # @option params [Boolean] :remote_record_enabled
    #   <p>Set to <code>true</code> to enable remote recording for the remote access
    #               session.</p>
    # @option params [String] :remote_record_app_arn
    #   <p>The Amazon Resource Name (ARN) for the app to be recorded in the remote access
    #               session.</p>
    # @option params [String] :name
    #   <p>The name of the remote access session to create.</p>
    # @option params [String] :client_id
    #   <p>Unique identifier for the client. If you want access to multiple devices on the same client, you should
    #               pass the same <code>clientId</code> value in each call to <code>CreateRemoteAccessSession</code>. This
    #               identifier is required only if <code>remoteDebugEnabled</code> is set to <code>true</code>.</p>
    #           <p>Remote debugging is <a href="https://docs.aws.amazon.com/devicefarm/latest/developerguide/history.html">no
    #               longer supported</a>.</p>
    # @option params [Types::CreateRemoteAccessSessionConfiguration] :configuration
    #   <p>The configuration information for the remote access session request.</p>
    # @option params [String] :interaction_mode
    #   <p>The interaction mode of the remote access session. Valid values are:</p>
    #           <ul>
    #               <li>
    #                   <p>INTERACTIVE: You can interact with the iOS device by viewing, touching, and
    #                       rotating the screen. You cannot run XCUITest framework-based tests in this
    #                       mode.</p>
    #               </li>
    #               <li>
    #                   <p>NO_VIDEO: You are connected to the device, but cannot interact with it or view the screen. This
    #                       mode has the fastest test execution speed. You can run XCUITest framework-based tests in this
    #                       mode.</p>
    #               </li>
    #               <li>
    #                   <p>VIDEO_ONLY: You can view the screen, but cannot touch or rotate it. You can run XCUITest
    #                       framework-based tests and watch the screen in this mode.</p>
    #               </li>
    #            </ul>
    # @option params [Boolean] :skip_app_resign
    #   <p>When set to <code>true</code>, for private devices, Device Farm does not sign your app again. For public
    #               devices, Device Farm always signs your apps again.</p>
    #           <p>For more information on how Device Farm modifies your uploads during tests, see <a href="http://aws.amazon.com/device-farm/faqs/">Do you modify my app?</a>
    #            </p>
    # @example To create a remote access session
    #   # The following example creates a remote access session named MySession.
    #   params = {
    #     project_arn: "arn:aws:devicefarm:us-west-2:123456789101:project:EXAMPLE-GUID-123-456",
    #     device_arn: "arn:aws:devicefarm:us-west-2::device:123EXAMPLE",
    #     name: "MySession",
    #     configuration: {
    #       billing_method: METERED
    #     }
    #   }
    #   options = {}
    #   response = client.create_remote_access_session(params, options)
    #   response.to_h #=>
    #   {
    #     remote_access_session: {
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     project_arn: "AmazonResourceName", # required
    #     device_arn: "AmazonResourceName", # required
    #     instance_arn: "AmazonResourceName",
    #     ssh_public_key: "SshPublicKey",
    #     remote_debug_enabled: false,
    #     remote_record_enabled: false,
    #     remote_record_app_arn: "AmazonResourceName",
    #     name: "Name",
    #     client_id: "ClientId",
    #     configuration: {
    #       billing_method: "METERED" # One of: ["METERED", "UNMETERED"],
    #       vpce_configuration_arns: ["AmazonResourceName"],
    #       device_proxy: {
    #         host: "DeviceProxyHost", # required
    #         port: 1, # required
    #       }
    #     },
    #     interaction_mode: "INTERACTIVE" # One of: ["INTERACTIVE", "NO_VIDEO", "VIDEO_ONLY"],
    #     skip_app_resign: false
    #   }
    #   options = {}
    #   response = client.create_remote_access_session(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     remote_access_session: {
    #       arn: "AmazonResourceName",
    #       name: "Name",
    #       created: Time.now,
    #       status: "PENDING" # One of: ["PENDING", "PENDING_CONCURRENCY", "PENDING_DEVICE", "PROCESSING", "SCHEDULING", "PREPARING", "RUNNING", "COMPLETED", "STOPPING"],
    #       result: "PENDING" # One of: ["PENDING", "PASSED", "WARNED", "FAILED", "SKIPPED", "ERRORED", "STOPPED"],
    #       message: "Message",
    #       started: Time.now,
    #       stopped: Time.now,
    #       device: {
    #         arn: "AmazonResourceName",
    #         name: "Name",
    #         manufacturer: "String",
    #         model: "String",
    #         model_id: "String",
    #         form_factor: "PHONE" # One of: ["PHONE", "TABLET"],
    #         platform: "ANDROID" # One of: ["ANDROID", "IOS"],
    #         os: "String",
    #         cpu: {
    #           frequency: "String",
    #           architecture: "String",
    #           clock: 1.0
    #         },
    #         resolution: {
    #           width: 1,
    #           height: 1
    #         },
    #         heap_size: 1,
    #         memory: 1,
    #         image: "String",
    #         carrier: "String",
    #         radio: "String",
    #         remote_access_enabled: false,
    #         remote_debug_enabled: false,
    #         fleet_type: "String",
    #         fleet_name: "String",
    #         instances: [
    #           {
    #             arn: "AmazonResourceName",
    #             device_arn: "AmazonResourceName",
    #             labels: ["String"],
    #             status: "IN_USE" # One of: ["IN_USE", "PREPARING", "AVAILABLE", "NOT_AVAILABLE"],
    #             udid: "String",
    #             instance_profile: {
    #               arn: "AmazonResourceName",
    #               package_cleanup: false,
    #               exclude_app_packages_from_cleanup: ["String"],
    #               reboot_after_use: false,
    #               name: "Name",
    #               description: "Message"
    #             }
    #           }
    #         ],
    #         availability: "TEMPORARY_NOT_AVAILABLE" # One of: ["TEMPORARY_NOT_AVAILABLE", "BUSY", "AVAILABLE", "HIGHLY_AVAILABLE"]
    #       },
    #       instance_arn: "AmazonResourceName",
    #       remote_debug_enabled: false,
    #       remote_record_enabled: false,
    #       remote_record_app_arn: "AmazonResourceName",
    #       host_address: "HostAddress",
    #       client_id: "ClientId",
    #       billing_method: "METERED" # One of: ["METERED", "UNMETERED"],
    #       device_minutes: {
    #         total: 1.0,
    #         metered: 1.0,
    #         unmetered: 1.0
    #       },
    #       endpoint: "String",
    #       device_udid: "String",
    #       interaction_mode: "INTERACTIVE" # One of: ["INTERACTIVE", "NO_VIDEO", "VIDEO_ONLY"],
    #       skip_app_resign: false,
    #       vpc_config: {
    #         security_group_ids: ["SecurityGroupId"], # required
    #         subnet_ids: ["SubnetId"], # required
    #         vpc_id: "NonEmptyString", # required
    #       },
    #       device_proxy: {
    #         host: "DeviceProxyHost", # required
    #         port: 1, # required
    #       }
    #     }
    #   }
    # @return [Types::CreateRemoteAccessSessionResult]
    def create_remote_access_session(params = {}, options = {})
      request = build_request(:create_remote_access_session, params)
      request.send_request(options)
    end

    # <p>Creates a Selenium testing project. Projects are used to track <a>TestGridSession</a>
    #          instances.</p>
    # @param [Hash, Types::CreateTestGridProjectRequest] params
    # @option params [String] :name
    #   <p>Human-readable name of the Selenium testing project.</p>
    # @option params [String] :description
    #   <p>Human-readable description of the project.</p>
    # @option params [Types::TestGridVpcConfig] :vpc_config
    #   <p>The VPC security groups and subnets that are attached to a project.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "ResourceName", # required
    #     description: "ResourceDescription",
    #     vpc_config: {
    #       security_group_ids: ["NonEmptyString"], # required
    #       subnet_ids: ["NonEmptyString"], # required
    #       vpc_id: "NonEmptyString", # required
    #     }
    #   }
    #   options = {}
    #   response = client.create_test_grid_project(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     test_grid_project: {
    #       arn: "DeviceFarmArn",
    #       name: "String",
    #       description: "String",
    #       vpc_config: {
    #         security_group_ids: ["NonEmptyString"], # required
    #         subnet_ids: ["NonEmptyString"], # required
    #         vpc_id: "NonEmptyString", # required
    #       },
    #       created: Time.now
    #     }
    #   }
    # @return [Types::CreateTestGridProjectResult]
    def create_test_grid_project(params = {}, options = {})
      request = build_request(:create_test_grid_project, params)
      request.send_request(options)
    end

    # <p>Creates a signed, short-term URL that can be passed to a Selenium <code>RemoteWebDriver</code>
    #          constructor.</p>
    # @param [Hash, Types::CreateTestGridUrlRequest] params
    # @option params [String] :project_arn
    #   <p>ARN (from <a>CreateTestGridProject</a> or <a>ListTestGridProjects</a>) to associate
    #            with the short-term URL. </p>
    # @option params [Integer] :expires_in_seconds
    #   <p>Lifetime, in seconds, of the URL.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     project_arn: "DeviceFarmArn", # required
    #     expires_in_seconds: 1, # required
    #   }
    #   options = {}
    #   response = client.create_test_grid_url(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     url: "SensitiveString",
    #     expires: Time.now
    #   }
    # @return [Types::CreateTestGridUrlResult]
    def create_test_grid_url(params = {}, options = {})
      request = build_request(:create_test_grid_url, params)
      request.send_request(options)
    end

    # <p>Uploads an app or test scripts.</p>
    # @param [Hash, Types::CreateUploadRequest] params
    # @option params [String] :project_arn
    #   <p>The ARN of the project for the upload.</p>
    # @option params [String] :name
    #   <p>The upload's file name. The name should not contain any forward slashes (<code>/</code>). If you are
    #               uploading an iOS app, the file name must end with the <code>.ipa</code> extension. If you are uploading an
    #               Android app, the file name must end with the <code>.apk</code> extension. For all others, the file name must
    #               end with the <code>.zip</code> file extension.</p>
    # @option params [String] :type
    #   <p>The upload's upload type.</p>
    #           <p>Must be one of the following values:</p>
    #           <ul>
    #               <li>
    #                   <p>ANDROID_APP</p>
    #               </li>
    #               <li>
    #                   <p>IOS_APP</p>
    #               </li>
    #               <li>
    #                   <p>WEB_APP</p>
    #               </li>
    #               <li>
    #                   <p>EXTERNAL_DATA</p>
    #               </li>
    #               <li>
    #                   <p>APPIUM_JAVA_JUNIT_TEST_PACKAGE</p>
    #               </li>
    #               <li>
    #                   <p>APPIUM_JAVA_TESTNG_TEST_PACKAGE</p>
    #               </li>
    #               <li>
    #                   <p>APPIUM_PYTHON_TEST_PACKAGE</p>
    #               </li>
    #               <li>
    #                   <p>APPIUM_NODE_TEST_PACKAGE</p>
    #               </li>
    #               <li>
    #                   <p>APPIUM_RUBY_TEST_PACKAGE</p>
    #               </li>
    #               <li>
    #                   <p>APPIUM_WEB_JAVA_JUNIT_TEST_PACKAGE</p>
    #               </li>
    #               <li>
    #                   <p>APPIUM_WEB_JAVA_TESTNG_TEST_PACKAGE</p>
    #               </li>
    #               <li>
    #                   <p>APPIUM_WEB_PYTHON_TEST_PACKAGE</p>
    #               </li>
    #               <li>
    #                   <p>APPIUM_WEB_NODE_TEST_PACKAGE</p>
    #               </li>
    #               <li>
    #                   <p>APPIUM_WEB_RUBY_TEST_PACKAGE</p>
    #               </li>
    #               <li>
    #                   <p>INSTRUMENTATION_TEST_PACKAGE</p>
    #               </li>
    #               <li>
    #                   <p>XCTEST_TEST_PACKAGE</p>
    #               </li>
    #               <li>
    #                   <p>XCTEST_UI_TEST_PACKAGE</p>
    #               </li>
    #               <li>
    #                   <p>APPIUM_JAVA_JUNIT_TEST_SPEC</p>
    #               </li>
    #               <li>
    #                   <p>APPIUM_JAVA_TESTNG_TEST_SPEC</p>
    #               </li>
    #               <li>
    #                   <p>APPIUM_PYTHON_TEST_SPEC</p>
    #               </li>
    #               <li>
    #                   <p>APPIUM_NODE_TEST_SPEC</p>
    #               </li>
    #               <li>
    #                   <p>APPIUM_RUBY_TEST_SPEC</p>
    #               </li>
    #               <li>
    #                   <p>APPIUM_WEB_JAVA_JUNIT_TEST_SPEC</p>
    #               </li>
    #               <li>
    #                   <p>APPIUM_WEB_JAVA_TESTNG_TEST_SPEC</p>
    #               </li>
    #               <li>
    #                   <p>APPIUM_WEB_PYTHON_TEST_SPEC</p>
    #               </li>
    #               <li>
    #                   <p>APPIUM_WEB_NODE_TEST_SPEC</p>
    #               </li>
    #               <li>
    #                   <p>APPIUM_WEB_RUBY_TEST_SPEC</p>
    #               </li>
    #               <li>
    #                   <p>INSTRUMENTATION_TEST_SPEC</p>
    #               </li>
    #               <li>
    #                   <p>XCTEST_UI_TEST_SPEC</p>
    #               </li>
    #            </ul>
    #           <p> If you call <code>CreateUpload</code> with <code>WEB_APP</code> specified, AWS
    #               Device Farm throws an <code>ArgumentException</code> error.</p>
    # @option params [String] :content_type
    #   <p>The upload's content type (for example, <code>application/octet-stream</code>).</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     project_arn: "AmazonResourceName", # required
    #     name: "Name", # required
    #     type: "ANDROID_APP" # One of: ["ANDROID_APP", "IOS_APP", "WEB_APP", "EXTERNAL_DATA", "APPIUM_JAVA_JUNIT_TEST_PACKAGE", "APPIUM_JAVA_TESTNG_TEST_PACKAGE", "APPIUM_PYTHON_TEST_PACKAGE", "APPIUM_NODE_TEST_PACKAGE", "APPIUM_RUBY_TEST_PACKAGE", "APPIUM_WEB_JAVA_JUNIT_TEST_PACKAGE", "APPIUM_WEB_JAVA_TESTNG_TEST_PACKAGE", "APPIUM_WEB_PYTHON_TEST_PACKAGE", "APPIUM_WEB_NODE_TEST_PACKAGE", "APPIUM_WEB_RUBY_TEST_PACKAGE", "CALABASH_TEST_PACKAGE", "INSTRUMENTATION_TEST_PACKAGE", "UIAUTOMATION_TEST_PACKAGE", "UIAUTOMATOR_TEST_PACKAGE", "XCTEST_TEST_PACKAGE", "XCTEST_UI_TEST_PACKAGE", "APPIUM_JAVA_JUNIT_TEST_SPEC", "APPIUM_JAVA_TESTNG_TEST_SPEC", "APPIUM_PYTHON_TEST_SPEC", "APPIUM_NODE_TEST_SPEC", "APPIUM_RUBY_TEST_SPEC", "APPIUM_WEB_JAVA_JUNIT_TEST_SPEC", "APPIUM_WEB_JAVA_TESTNG_TEST_SPEC", "APPIUM_WEB_PYTHON_TEST_SPEC", "APPIUM_WEB_NODE_TEST_SPEC", "APPIUM_WEB_RUBY_TEST_SPEC", "INSTRUMENTATION_TEST_SPEC", "XCTEST_UI_TEST_SPEC"], # required
    #     content_type: "ContentType"
    #   }
    #   options = {}
    #   response = client.create_upload(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     upload: {
    #       arn: "AmazonResourceName",
    #       name: "Name",
    #       created: Time.now,
    #       type: "ANDROID_APP" # One of: ["ANDROID_APP", "IOS_APP", "WEB_APP", "EXTERNAL_DATA", "APPIUM_JAVA_JUNIT_TEST_PACKAGE", "APPIUM_JAVA_TESTNG_TEST_PACKAGE", "APPIUM_PYTHON_TEST_PACKAGE", "APPIUM_NODE_TEST_PACKAGE", "APPIUM_RUBY_TEST_PACKAGE", "APPIUM_WEB_JAVA_JUNIT_TEST_PACKAGE", "APPIUM_WEB_JAVA_TESTNG_TEST_PACKAGE", "APPIUM_WEB_PYTHON_TEST_PACKAGE", "APPIUM_WEB_NODE_TEST_PACKAGE", "APPIUM_WEB_RUBY_TEST_PACKAGE", "CALABASH_TEST_PACKAGE", "INSTRUMENTATION_TEST_PACKAGE", "UIAUTOMATION_TEST_PACKAGE", "UIAUTOMATOR_TEST_PACKAGE", "XCTEST_TEST_PACKAGE", "XCTEST_UI_TEST_PACKAGE", "APPIUM_JAVA_JUNIT_TEST_SPEC", "APPIUM_JAVA_TESTNG_TEST_SPEC", "APPIUM_PYTHON_TEST_SPEC", "APPIUM_NODE_TEST_SPEC", "APPIUM_RUBY_TEST_SPEC", "APPIUM_WEB_JAVA_JUNIT_TEST_SPEC", "APPIUM_WEB_JAVA_TESTNG_TEST_SPEC", "APPIUM_WEB_PYTHON_TEST_SPEC", "APPIUM_WEB_NODE_TEST_SPEC", "APPIUM_WEB_RUBY_TEST_SPEC", "INSTRUMENTATION_TEST_SPEC", "XCTEST_UI_TEST_SPEC"],
    #       status: "INITIALIZED" # One of: ["INITIALIZED", "PROCESSING", "SUCCEEDED", "FAILED"],
    #       url: "SensitiveURL",
    #       metadata: "Metadata",
    #       content_type: "ContentType",
    #       message: "Message",
    #       category: "CURATED" # One of: ["CURATED", "PRIVATE"]
    #     }
    #   }
    # @return [Types::CreateUploadResult]
    def create_upload(params = {}, options = {})
      request = build_request(:create_upload, params)
      request.send_request(options)
    end

    # <p>Creates a configuration record in Device Farm for your Amazon Virtual Private Cloud
    #             (VPC) endpoint.</p>
    # @param [Hash, Types::CreateVPCEConfigurationRequest] params
    # @option params [String] :vpce_configuration_name
    #   <p>The friendly name you give to your VPC endpoint configuration, to manage your
    #               configurations more easily.</p>
    # @option params [String] :vpce_service_name
    #   <p>The name of the VPC endpoint service running in your AWS account that you want Device Farm to test.</p>
    # @option params [String] :service_dns_name
    #   <p>The DNS name of the service running in your VPC that you want Device Farm to
    #               test.</p>
    # @option params [String] :vpce_configuration_description
    #   <p>An optional description that provides details about your VPC endpoint configuration.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     vpce_configuration_name: "VPCEConfigurationName", # required
    #     vpce_service_name: "VPCEServiceName", # required
    #     service_dns_name: "ServiceDnsName", # required
    #     vpce_configuration_description: "VPCEConfigurationDescription"
    #   }
    #   options = {}
    #   response = client.create_vpce_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     vpce_configuration: {
    #       arn: "AmazonResourceName",
    #       vpce_configuration_name: "VPCEConfigurationName",
    #       vpce_service_name: "VPCEServiceName",
    #       service_dns_name: "ServiceDnsName",
    #       vpce_configuration_description: "VPCEConfigurationDescription"
    #     }
    #   }
    # @return [Types::CreateVPCEConfigurationResult]
    def create_vpce_configuration(params = {}, options = {})
      request = build_request(:create_vpce_configuration, params)
      request.send_request(options)
    end

    # <p>Deletes a device pool given the pool ARN. Does not allow deletion of curated pools
    #             owned by the system.</p>
    # @param [Hash, Types::DeleteDevicePoolRequest] params
    # @option params [String] :arn
    #   <p>Represents the Amazon Resource Name (ARN) of the Device Farm device pool to delete.</p>
    # @example To delete a device pool
    #   # The following example deletes a specific device pool.
    #   params = {
    #     arn: "arn:aws:devicefarm:us-west-2::devicepool:123-456-EXAMPLE-GUID"
    #   }
    #   options = {}
    #   response = client.delete_device_pool(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "AmazonResourceName", # required
    #   }
    #   options = {}
    #   response = client.delete_device_pool(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteDevicePoolResult]
    def delete_device_pool(params = {}, options = {})
      request = build_request(:delete_device_pool, params)
      request.send_request(options)
    end

    # <p>Deletes a profile that can be applied to one or more private device instances.</p>
    # @param [Hash, Types::DeleteInstanceProfileRequest] params
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the instance profile you are requesting to
    #               delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "AmazonResourceName", # required
    #   }
    #   options = {}
    #   response = client.delete_instance_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteInstanceProfileResult]
    def delete_instance_profile(params = {}, options = {})
      request = build_request(:delete_instance_profile, params)
      request.send_request(options)
    end

    # <p>Deletes a network profile.</p>
    # @param [Hash, Types::DeleteNetworkProfileRequest] params
    # @option params [String] :arn
    #   <p>The ARN of the network profile to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "AmazonResourceName", # required
    #   }
    #   options = {}
    #   response = client.delete_network_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteNetworkProfileResult]
    def delete_network_profile(params = {}, options = {})
      request = build_request(:delete_network_profile, params)
      request.send_request(options)
    end

    # <p>Deletes an AWS Device Farm project, given the project ARN.</p>
    #         <p> Deleting this resource does not stop an in-progress run.</p>
    # @param [Hash, Types::DeleteProjectRequest] params
    # @option params [String] :arn
    #   <p>Represents the Amazon Resource Name (ARN) of the Device Farm project to delete.</p>
    # @example To delete a project
    #   # The following example deletes a specific project.
    #   params = {
    #     arn: "arn:aws:devicefarm:us-west-2:123456789101:project:EXAMPLE-GUID-123-456"
    #   }
    #   options = {}
    #   response = client.delete_project(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "AmazonResourceName", # required
    #   }
    #   options = {}
    #   response = client.delete_project(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteProjectResult]
    def delete_project(params = {}, options = {})
      request = build_request(:delete_project, params)
      request.send_request(options)
    end

    # <p>Deletes a completed remote access session and its results.</p>
    # @param [Hash, Types::DeleteRemoteAccessSessionRequest] params
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the session for which you want to delete remote
    #               access.</p>
    # @example To delete a specific remote access session
    #   # The following example deletes a specific remote access session.
    #   params = {
    #     arn: "arn:aws:devicefarm:us-west-2:123456789101:session:EXAMPLE-GUID-123-456"
    #   }
    #   options = {}
    #   response = client.delete_remote_access_session(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "AmazonResourceName", # required
    #   }
    #   options = {}
    #   response = client.delete_remote_access_session(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteRemoteAccessSessionResult]
    def delete_remote_access_session(params = {}, options = {})
      request = build_request(:delete_remote_access_session, params)
      request.send_request(options)
    end

    # <p>Deletes the run, given the run ARN.</p>
    #         <p> Deleting this resource does not stop an in-progress run.</p>
    # @param [Hash, Types::DeleteRunRequest] params
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) for the run to delete.</p>
    # @example To delete a run
    #   # The following example deletes a specific test run.
    #   params = {
    #     arn: "arn:aws:devicefarm:us-west-2:123456789101:run:EXAMPLE-GUID-123-456"
    #   }
    #   options = {}
    #   response = client.delete_run(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "AmazonResourceName", # required
    #   }
    #   options = {}
    #   response = client.delete_run(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteRunResult]
    def delete_run(params = {}, options = {})
      request = build_request(:delete_run, params)
      request.send_request(options)
    end

    # <p> Deletes a Selenium testing project and all content generated under it. </p>
    #          <important>
    #             <p>You cannot undo this operation.</p>
    #          </important>
    #          <note>
    #             <p>You cannot delete a project if it has active sessions.</p>
    #          </note>
    # @param [Hash, Types::DeleteTestGridProjectRequest] params
    # @option params [String] :project_arn
    #   <p>The ARN of the project to delete, from <a>CreateTestGridProject</a> or <a>ListTestGridProjects</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     project_arn: "DeviceFarmArn", # required
    #   }
    #   options = {}
    #   response = client.delete_test_grid_project(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteTestGridProjectResult]
    def delete_test_grid_project(params = {}, options = {})
      request = build_request(:delete_test_grid_project, params)
      request.send_request(options)
    end

    # <p>Deletes an upload given the upload ARN.</p>
    # @param [Hash, Types::DeleteUploadRequest] params
    # @option params [String] :arn
    #   <p>Represents the Amazon Resource Name (ARN) of the Device Farm upload to delete.</p>
    # @example To delete a specific upload
    #   # The following example deletes a specific upload.
    #   params = {
    #     arn: "arn:aws:devicefarm:us-west-2:123456789101:upload:EXAMPLE-GUID-123-456"
    #   }
    #   options = {}
    #   response = client.delete_upload(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "AmazonResourceName", # required
    #   }
    #   options = {}
    #   response = client.delete_upload(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteUploadResult]
    def delete_upload(params = {}, options = {})
      request = build_request(:delete_upload, params)
      request.send_request(options)
    end

    # <p>Deletes a configuration for your Amazon Virtual Private Cloud (VPC) endpoint.</p>
    # @param [Hash, Types::DeleteVPCEConfigurationRequest] params
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the VPC endpoint configuration you want to
    #               delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "AmazonResourceName", # required
    #   }
    #   options = {}
    #   response = client.delete_vpce_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteVPCEConfigurationResult]
    def delete_vpce_configuration(params = {}, options = {})
      request = build_request(:delete_vpce_configuration, params)
      request.send_request(options)
    end

    # <p>Returns the number of unmetered iOS or unmetered Android devices that have been purchased by the
    #             account.</p>
    # @param [Hash, Types::GetAccountSettingsRequest] params
    # @example To get information about account settings
    #   # The following example returns information about your Device Farm account settings.
    #   params = {}
    #   options = {}
    #   response = client.get_account_settings(params, options)
    #   response.to_h #=>
    #   {
    #     account_settings: {
    #       unmetered_devices: {
    #         "ANDROID" => 1,
    #         "IOS" => 2
    #       },
    #       aws_account_number: "123456789101"
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.get_account_settings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     account_settings: {
    #       aws_account_number: "AWSAccountNumber",
    #       unmetered_devices: {
    #         "DevicePlatform" => 1
    #       },
    #       unmetered_remote_access_devices: {
    #         "DevicePlatform" => 1
    #       },
    #       max_job_timeout_minutes: 1,
    #       trial_minutes: {
    #         total: 1.0,
    #         remaining: 1.0
    #       },
    #       max_slots: {
    #         "String" => 1
    #       },
    #       default_job_timeout_minutes: 1,
    #       skip_app_resign: false
    #     }
    #   }
    # @return [Types::GetAccountSettingsResult]
    def get_account_settings(params = {}, options = {})
      request = build_request(:get_account_settings, params)
      request.send_request(options)
    end

    # <p>Gets information about a unique device type.</p>
    # @param [Hash, Types::GetDeviceRequest] params
    # @option params [String] :arn
    #   <p>The device type's ARN.</p>
    # @example To get information about a device
    #   # The following example returns information about a specific device.
    #   params = {
    #     arn: "arn:aws:devicefarm:us-west-2::device:123EXAMPLE"
    #   }
    #   options = {}
    #   response = client.get_device(params, options)
    #   response.to_h #=>
    #   {
    #     device: {
    #       form_factor: PHONE,
    #       name: "LG G2 (Sprint)",
    #       resolution: {
    #         width: 1080,
    #         height: 1920
    #       },
    #       image: "75B2B7EF6C12345EXAMPLE",
    #       platform: ANDROID,
    #       heap_size: 256000000,
    #       memory: 16000000000,
    #       model: "G2 (Sprint)",
    #       os: "4.2.2",
    #       cpu: {
    #         frequency: "MHz",
    #         architecture: "armeabi-v7a",
    #         clock: 2265.6
    #       },
    #       arn: "arn:aws:devicefarm:us-west-2::device:A0E6E6E1059E45918208DF75B2B7EF6C",
    #       manufacturer: "LG"
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "AmazonResourceName", # required
    #   }
    #   options = {}
    #   response = client.get_device(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     device: {
    #       arn: "AmazonResourceName",
    #       name: "Name",
    #       manufacturer: "String",
    #       model: "String",
    #       model_id: "String",
    #       form_factor: "PHONE" # One of: ["PHONE", "TABLET"],
    #       platform: "ANDROID" # One of: ["ANDROID", "IOS"],
    #       os: "String",
    #       cpu: {
    #         frequency: "String",
    #         architecture: "String",
    #         clock: 1.0
    #       },
    #       resolution: {
    #         width: 1,
    #         height: 1
    #       },
    #       heap_size: 1,
    #       memory: 1,
    #       image: "String",
    #       carrier: "String",
    #       radio: "String",
    #       remote_access_enabled: false,
    #       remote_debug_enabled: false,
    #       fleet_type: "String",
    #       fleet_name: "String",
    #       instances: [
    #         {
    #           arn: "AmazonResourceName",
    #           device_arn: "AmazonResourceName",
    #           labels: ["String"],
    #           status: "IN_USE" # One of: ["IN_USE", "PREPARING", "AVAILABLE", "NOT_AVAILABLE"],
    #           udid: "String",
    #           instance_profile: {
    #             arn: "AmazonResourceName",
    #             package_cleanup: false,
    #             exclude_app_packages_from_cleanup: ["String"],
    #             reboot_after_use: false,
    #             name: "Name",
    #             description: "Message"
    #           }
    #         }
    #       ],
    #       availability: "TEMPORARY_NOT_AVAILABLE" # One of: ["TEMPORARY_NOT_AVAILABLE", "BUSY", "AVAILABLE", "HIGHLY_AVAILABLE"]
    #     }
    #   }
    # @return [Types::GetDeviceResult]
    def get_device(params = {}, options = {})
      request = build_request(:get_device, params)
      request.send_request(options)
    end

    # <p>Returns information about a device instance that belongs to a private device fleet.</p>
    # @param [Hash, Types::GetDeviceInstanceRequest] params
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the instance you're requesting information
    #               about.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "AmazonResourceName", # required
    #   }
    #   options = {}
    #   response = client.get_device_instance(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     device_instance: {
    #       arn: "AmazonResourceName",
    #       device_arn: "AmazonResourceName",
    #       labels: ["String"],
    #       status: "IN_USE" # One of: ["IN_USE", "PREPARING", "AVAILABLE", "NOT_AVAILABLE"],
    #       udid: "String",
    #       instance_profile: {
    #         arn: "AmazonResourceName",
    #         package_cleanup: false,
    #         exclude_app_packages_from_cleanup: ["String"],
    #         reboot_after_use: false,
    #         name: "Name",
    #         description: "Message"
    #       }
    #     }
    #   }
    # @return [Types::GetDeviceInstanceResult]
    def get_device_instance(params = {}, options = {})
      request = build_request(:get_device_instance, params)
      request.send_request(options)
    end

    # <p>Gets information about a device pool.</p>
    # @param [Hash, Types::GetDevicePoolRequest] params
    # @option params [String] :arn
    #   <p>The device pool's ARN.</p>
    # @example To get information about a device pool
    #   # The following example returns information about a specific device pool, given a project ARN.
    #   params = {
    #     arn: "arn:aws:devicefarm:us-west-2:123456789101:project:EXAMPLE-GUID-123-456"
    #   }
    #   options = {}
    #   response = client.get_device_pool(params, options)
    #   response.to_h #=>
    #   {
    #     device_pool: {
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "AmazonResourceName", # required
    #   }
    #   options = {}
    #   response = client.get_device_pool(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     device_pool: {
    #       arn: "AmazonResourceName",
    #       name: "Name",
    #       description: "Message",
    #       type: "CURATED" # One of: ["CURATED", "PRIVATE"],
    #       rules: [
    #         {
    #           attribute: "ARN" # One of: ["ARN", "PLATFORM", "FORM_FACTOR", "MANUFACTURER", "REMOTE_ACCESS_ENABLED", "REMOTE_DEBUG_ENABLED", "APPIUM_VERSION", "INSTANCE_ARN", "INSTANCE_LABELS", "FLEET_TYPE", "OS_VERSION", "MODEL", "AVAILABILITY"],
    #           operator: "EQUALS" # One of: ["EQUALS", "LESS_THAN", "LESS_THAN_OR_EQUALS", "GREATER_THAN", "GREATER_THAN_OR_EQUALS", "IN", "NOT_IN", "CONTAINS"],
    #           value: "String"
    #         }
    #       ],
    #       max_devices: 1
    #     }
    #   }
    # @return [Types::GetDevicePoolResult]
    def get_device_pool(params = {}, options = {})
      request = build_request(:get_device_pool, params)
      request.send_request(options)
    end

    # <p>Gets information about compatibility with a device pool.</p>
    # @param [Hash, Types::GetDevicePoolCompatibilityRequest] params
    # @option params [String] :device_pool_arn
    #   <p>The device pool's ARN.</p>
    # @option params [String] :app_arn
    #   <p>The ARN of the app that is associated with the specified device pool.</p>
    # @option params [String] :test_type
    #   <p>The test type for the specified device pool.</p>
    #           <p>Allowed values include the following:</p>
    #           <ul>
    #               <li>
    #                   <p>BUILTIN_FUZZ.</p>
    #               </li>
    #               <li>
    #                   <p>APPIUM_JAVA_JUNIT.</p>
    #               </li>
    #               <li>
    #                   <p>APPIUM_JAVA_TESTNG.</p>
    #               </li>
    #               <li>
    #                   <p>APPIUM_PYTHON.</p>
    #               </li>
    #               <li>
    #                   <p>APPIUM_NODE.</p>
    #               </li>
    #               <li>
    #                   <p>APPIUM_RUBY.</p>
    #               </li>
    #               <li>
    #                   <p>APPIUM_WEB_JAVA_JUNIT.</p>
    #               </li>
    #               <li>
    #                   <p>APPIUM_WEB_JAVA_TESTNG.</p>
    #               </li>
    #               <li>
    #                   <p>APPIUM_WEB_PYTHON.</p>
    #               </li>
    #               <li>
    #                   <p>APPIUM_WEB_NODE.</p>
    #               </li>
    #               <li>
    #                   <p>APPIUM_WEB_RUBY.</p>
    #               </li>
    #               <li>
    #                   <p>INSTRUMENTATION.</p>
    #               </li>
    #               <li>
    #                   <p>XCTEST.</p>
    #               </li>
    #               <li>
    #                   <p>XCTEST_UI.</p>
    #               </li>
    #            </ul>
    # @option params [Types::ScheduleRunTest] :test
    #   <p>Information about the uploaded test to be run against the device pool.</p>
    # @option params [Types::ScheduleRunConfiguration] :configuration
    #   <p>An object that contains information about the settings for a run.</p>
    # @option params [String] :project_arn
    #   <p>The ARN of the project for which you want to check
    #               device pool compatibility.</p>
    # @example To get information about the compatibility of a device pool
    #   # The following example returns information about the compatibility of a specific device pool, given its ARN.
    #   params = {
    #     device_pool_arn: "arn:aws:devicefarm:us-west-2::devicepool:123-456-EXAMPLE-GUID",
    #     app_arn: "arn:aws:devicefarm:us-west-2::app:123-456-EXAMPLE-GUID",
    #     test_type: APPIUM_PYTHON
    #   }
    #   options = {}
    #   response = client.get_device_pool_compatibility(params, options)
    #   response.to_h #=>
    #   {
    #     compatible_devices: [
    #     ],
    #     incompatible_devices: [
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     device_pool_arn: "AmazonResourceName", # required
    #     app_arn: "AmazonResourceName",
    #     test_type: "BUILTIN_FUZZ" # One of: ["BUILTIN_FUZZ", "APPIUM_JAVA_JUNIT", "APPIUM_JAVA_TESTNG", "APPIUM_PYTHON", "APPIUM_NODE", "APPIUM_RUBY", "APPIUM_WEB_JAVA_JUNIT", "APPIUM_WEB_JAVA_TESTNG", "APPIUM_WEB_PYTHON", "APPIUM_WEB_NODE", "APPIUM_WEB_RUBY", "INSTRUMENTATION", "XCTEST", "XCTEST_UI"],
    #     test: {
    #       type: "BUILTIN_FUZZ" # One of: ["BUILTIN_FUZZ", "APPIUM_JAVA_JUNIT", "APPIUM_JAVA_TESTNG", "APPIUM_PYTHON", "APPIUM_NODE", "APPIUM_RUBY", "APPIUM_WEB_JAVA_JUNIT", "APPIUM_WEB_JAVA_TESTNG", "APPIUM_WEB_PYTHON", "APPIUM_WEB_NODE", "APPIUM_WEB_RUBY", "INSTRUMENTATION", "XCTEST", "XCTEST_UI"], # required
    #       test_package_arn: "AmazonResourceName",
    #       test_spec_arn: "AmazonResourceName",
    #       filter: "Filter",
    #       parameters: {
    #         "String" => "String"
    #       }
    #     },
    #     configuration: {
    #       extra_data_package_arn: "AmazonResourceName",
    #       network_profile_arn: "AmazonResourceName",
    #       locale: "String",
    #       location: {
    #         latitude: 1.0, # required
    #         longitude: 1.0, # required
    #       },
    #       vpce_configuration_arns: ["AmazonResourceName"],
    #       device_proxy: {
    #         host: "DeviceProxyHost", # required
    #         port: 1, # required
    #       },
    #       customer_artifact_paths: {
    #         ios_paths: ["String"],
    #         android_paths: ["String"],
    #         device_host_paths: ["String"]
    #       },
    #       radios: {
    #         wifi: false,
    #         bluetooth: false,
    #         nfc: false,
    #         gps: false
    #       },
    #       auxiliary_apps: ["AmazonResourceName"],
    #       billing_method: "METERED" # One of: ["METERED", "UNMETERED"]
    #     },
    #     project_arn: "AmazonResourceName"
    #   }
    #   options = {}
    #   response = client.get_device_pool_compatibility(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     compatible_devices: [
    #       {
    #         device: {
    #           arn: "AmazonResourceName",
    #           name: "Name",
    #           manufacturer: "String",
    #           model: "String",
    #           model_id: "String",
    #           form_factor: "PHONE" # One of: ["PHONE", "TABLET"],
    #           platform: "ANDROID" # One of: ["ANDROID", "IOS"],
    #           os: "String",
    #           cpu: {
    #             frequency: "String",
    #             architecture: "String",
    #             clock: 1.0
    #           },
    #           resolution: {
    #             width: 1,
    #             height: 1
    #           },
    #           heap_size: 1,
    #           memory: 1,
    #           image: "String",
    #           carrier: "String",
    #           radio: "String",
    #           remote_access_enabled: false,
    #           remote_debug_enabled: false,
    #           fleet_type: "String",
    #           fleet_name: "String",
    #           instances: [
    #             {
    #               arn: "AmazonResourceName",
    #               device_arn: "AmazonResourceName",
    #               labels: ["String"],
    #               status: "IN_USE" # One of: ["IN_USE", "PREPARING", "AVAILABLE", "NOT_AVAILABLE"],
    #               udid: "String",
    #               instance_profile: {
    #                 arn: "AmazonResourceName",
    #                 package_cleanup: false,
    #                 exclude_app_packages_from_cleanup: ["String"],
    #                 reboot_after_use: false,
    #                 name: "Name",
    #                 description: "Message"
    #               }
    #             }
    #           ],
    #           availability: "TEMPORARY_NOT_AVAILABLE" # One of: ["TEMPORARY_NOT_AVAILABLE", "BUSY", "AVAILABLE", "HIGHLY_AVAILABLE"]
    #         },
    #         compatible: false,
    #         incompatibility_messages: [
    #           {
    #             message: "Message",
    #             type: "ARN" # One of: ["ARN", "PLATFORM", "FORM_FACTOR", "MANUFACTURER", "REMOTE_ACCESS_ENABLED", "REMOTE_DEBUG_ENABLED", "APPIUM_VERSION", "INSTANCE_ARN", "INSTANCE_LABELS", "FLEET_TYPE", "OS_VERSION", "MODEL", "AVAILABILITY"]
    #           }
    #         ]
    #       }
    #     ],
    #     incompatible_devices: [
    #       {
    #         device: {
    #           arn: "AmazonResourceName",
    #           name: "Name",
    #           manufacturer: "String",
    #           model: "String",
    #           model_id: "String",
    #           form_factor: "PHONE" # One of: ["PHONE", "TABLET"],
    #           platform: "ANDROID" # One of: ["ANDROID", "IOS"],
    #           os: "String",
    #           cpu: {
    #             frequency: "String",
    #             architecture: "String",
    #             clock: 1.0
    #           },
    #           resolution: {
    #             width: 1,
    #             height: 1
    #           },
    #           heap_size: 1,
    #           memory: 1,
    #           image: "String",
    #           carrier: "String",
    #           radio: "String",
    #           remote_access_enabled: false,
    #           remote_debug_enabled: false,
    #           fleet_type: "String",
    #           fleet_name: "String",
    #           instances: [
    #             {
    #               arn: "AmazonResourceName",
    #               device_arn: "AmazonResourceName",
    #               labels: ["String"],
    #               status: "IN_USE" # One of: ["IN_USE", "PREPARING", "AVAILABLE", "NOT_AVAILABLE"],
    #               udid: "String",
    #               instance_profile: {
    #                 arn: "AmazonResourceName",
    #                 package_cleanup: false,
    #                 exclude_app_packages_from_cleanup: ["String"],
    #                 reboot_after_use: false,
    #                 name: "Name",
    #                 description: "Message"
    #               }
    #             }
    #           ],
    #           availability: "TEMPORARY_NOT_AVAILABLE" # One of: ["TEMPORARY_NOT_AVAILABLE", "BUSY", "AVAILABLE", "HIGHLY_AVAILABLE"]
    #         },
    #         compatible: false,
    #         incompatibility_messages: [
    #           {
    #             message: "Message",
    #             type: "ARN" # One of: ["ARN", "PLATFORM", "FORM_FACTOR", "MANUFACTURER", "REMOTE_ACCESS_ENABLED", "REMOTE_DEBUG_ENABLED", "APPIUM_VERSION", "INSTANCE_ARN", "INSTANCE_LABELS", "FLEET_TYPE", "OS_VERSION", "MODEL", "AVAILABILITY"]
    #           }
    #         ]
    #       }
    #     ]
    #   }
    # @return [Types::GetDevicePoolCompatibilityResult]
    def get_device_pool_compatibility(params = {}, options = {})
      request = build_request(:get_device_pool_compatibility, params)
      request.send_request(options)
    end

    # <p>Returns information about the specified instance profile.</p>
    # @param [Hash, Types::GetInstanceProfileRequest] params
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of an instance profile.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "AmazonResourceName", # required
    #   }
    #   options = {}
    #   response = client.get_instance_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     instance_profile: {
    #       arn: "AmazonResourceName",
    #       package_cleanup: false,
    #       exclude_app_packages_from_cleanup: ["String"],
    #       reboot_after_use: false,
    #       name: "Name",
    #       description: "Message"
    #     }
    #   }
    # @return [Types::GetInstanceProfileResult]
    def get_instance_profile(params = {}, options = {})
      request = build_request(:get_instance_profile, params)
      request.send_request(options)
    end

    # <p>Gets information about a job.</p>
    # @param [Hash, Types::GetJobRequest] params
    # @option params [String] :arn
    #   <p>The job's ARN.</p>
    # @example To get information about a job
    #   # The following example returns information about a specific job.
    #   params = {
    #     arn: "arn:aws:devicefarm:us-west-2::job:123-456-EXAMPLE-GUID"
    #   }
    #   options = {}
    #   response = client.get_job(params, options)
    #   response.to_h #=>
    #   {
    #     job: {
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "AmazonResourceName", # required
    #   }
    #   options = {}
    #   response = client.get_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job: {
    #       arn: "AmazonResourceName",
    #       name: "Name",
    #       type: "BUILTIN_FUZZ" # One of: ["BUILTIN_FUZZ", "APPIUM_JAVA_JUNIT", "APPIUM_JAVA_TESTNG", "APPIUM_PYTHON", "APPIUM_NODE", "APPIUM_RUBY", "APPIUM_WEB_JAVA_JUNIT", "APPIUM_WEB_JAVA_TESTNG", "APPIUM_WEB_PYTHON", "APPIUM_WEB_NODE", "APPIUM_WEB_RUBY", "INSTRUMENTATION", "XCTEST", "XCTEST_UI"],
    #       created: Time.now,
    #       status: "PENDING" # One of: ["PENDING", "PENDING_CONCURRENCY", "PENDING_DEVICE", "PROCESSING", "SCHEDULING", "PREPARING", "RUNNING", "COMPLETED", "STOPPING"],
    #       result: "PENDING" # One of: ["PENDING", "PASSED", "WARNED", "FAILED", "SKIPPED", "ERRORED", "STOPPED"],
    #       started: Time.now,
    #       stopped: Time.now,
    #       counters: {
    #         total: 1,
    #         passed: 1,
    #         failed: 1,
    #         warned: 1,
    #         errored: 1,
    #         stopped: 1,
    #         skipped: 1
    #       },
    #       message: "Message",
    #       device: {
    #         arn: "AmazonResourceName",
    #         name: "Name",
    #         manufacturer: "String",
    #         model: "String",
    #         model_id: "String",
    #         form_factor: "PHONE" # One of: ["PHONE", "TABLET"],
    #         platform: "ANDROID" # One of: ["ANDROID", "IOS"],
    #         os: "String",
    #         cpu: {
    #           frequency: "String",
    #           architecture: "String",
    #           clock: 1.0
    #         },
    #         resolution: {
    #           width: 1,
    #           height: 1
    #         },
    #         heap_size: 1,
    #         memory: 1,
    #         image: "String",
    #         carrier: "String",
    #         radio: "String",
    #         remote_access_enabled: false,
    #         remote_debug_enabled: false,
    #         fleet_type: "String",
    #         fleet_name: "String",
    #         instances: [
    #           {
    #             arn: "AmazonResourceName",
    #             device_arn: "AmazonResourceName",
    #             labels: ["String"],
    #             status: "IN_USE" # One of: ["IN_USE", "PREPARING", "AVAILABLE", "NOT_AVAILABLE"],
    #             udid: "String",
    #             instance_profile: {
    #               arn: "AmazonResourceName",
    #               package_cleanup: false,
    #               exclude_app_packages_from_cleanup: ["String"],
    #               reboot_after_use: false,
    #               name: "Name",
    #               description: "Message"
    #             }
    #           }
    #         ],
    #         availability: "TEMPORARY_NOT_AVAILABLE" # One of: ["TEMPORARY_NOT_AVAILABLE", "BUSY", "AVAILABLE", "HIGHLY_AVAILABLE"]
    #       },
    #       instance_arn: "AmazonResourceName",
    #       device_minutes: {
    #         total: 1.0,
    #         metered: 1.0,
    #         unmetered: 1.0
    #       },
    #       video_endpoint: "String",
    #       video_capture: false
    #     }
    #   }
    # @return [Types::GetJobResult]
    def get_job(params = {}, options = {})
      request = build_request(:get_job, params)
      request.send_request(options)
    end

    # <p>Returns information about a network profile.</p>
    # @param [Hash, Types::GetNetworkProfileRequest] params
    # @option params [String] :arn
    #   <p>The ARN of the network profile to return information about.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "AmazonResourceName", # required
    #   }
    #   options = {}
    #   response = client.get_network_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     network_profile: {
    #       arn: "AmazonResourceName",
    #       name: "Name",
    #       description: "Message",
    #       type: "CURATED" # One of: ["CURATED", "PRIVATE"],
    #       uplink_bandwidth_bits: 1,
    #       downlink_bandwidth_bits: 1,
    #       uplink_delay_ms: 1,
    #       downlink_delay_ms: 1,
    #       uplink_jitter_ms: 1,
    #       downlink_jitter_ms: 1,
    #       uplink_loss_percent: 1,
    #       downlink_loss_percent: 1
    #     }
    #   }
    # @return [Types::GetNetworkProfileResult]
    def get_network_profile(params = {}, options = {})
      request = build_request(:get_network_profile, params)
      request.send_request(options)
    end

    # <p>Gets the current status and future status of all offerings purchased by an AWS account. The response
    #             indicates how many offerings are currently available and the offerings that will be available in the next
    #             period. The API returns a <code>NotEligible</code> error if the user is not permitted to invoke the
    #             operation. If you must be able to invoke this operation, contact <a href="mailto:aws-devicefarm-support@amazon.com">aws-devicefarm-support@amazon.com</a>.</p>
    # @param [Hash, Types::GetOfferingStatusRequest] params
    # @option params [String] :next_token
    #   <p>An identifier that was returned from the previous call to this operation, which can
    #               be used to return the next set of items in the list.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.get_offering_status(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     current: {
    #       "OfferingIdentifier" => {
    #         type: "PURCHASE" # One of: ["PURCHASE", "RENEW", "SYSTEM"],
    #         offering: {
    #           id: "OfferingIdentifier",
    #           description: "Message",
    #           type: "RECURRING" # One of: ["RECURRING"],
    #           platform: "ANDROID" # One of: ["ANDROID", "IOS"],
    #           recurring_charges: [
    #             {
    #               cost: {
    #                 amount: 1.0,
    #                 currency_code: "USD" # One of: ["USD"]
    #               },
    #               frequency: "MONTHLY" # One of: ["MONTHLY"]
    #             }
    #           ]
    #         },
    #         quantity: 1,
    #         effective_on: Time.now
    #       }
    #     },
    #     next_period: {
    #       "OfferingIdentifier" => {
    #         type: "PURCHASE" # One of: ["PURCHASE", "RENEW", "SYSTEM"],
    #         offering: {
    #           id: "OfferingIdentifier",
    #           description: "Message",
    #           type: "RECURRING" # One of: ["RECURRING"],
    #           platform: "ANDROID" # One of: ["ANDROID", "IOS"],
    #           recurring_charges: [
    #             {
    #               cost: {
    #                 amount: 1.0,
    #                 currency_code: "USD" # One of: ["USD"]
    #               },
    #               frequency: "MONTHLY" # One of: ["MONTHLY"]
    #             }
    #           ]
    #         },
    #         quantity: 1,
    #         effective_on: Time.now
    #       }
    #     },
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::GetOfferingStatusResult]
    def get_offering_status(params = {}, options = {})
      request = build_request(:get_offering_status, params)
      request.send_request(options)
    end

    # <p>Gets information about a project.</p>
    # @param [Hash, Types::GetProjectRequest] params
    # @option params [String] :arn
    #   <p>The project's ARN.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "AmazonResourceName", # required
    #   }
    #   options = {}
    #   response = client.get_project(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     project: {
    #       arn: "AmazonResourceName",
    #       name: "Name",
    #       default_job_timeout_minutes: 1,
    #       created: Time.now,
    #       vpc_config: {
    #         security_group_ids: ["SecurityGroupId"], # required
    #         subnet_ids: ["SubnetId"], # required
    #         vpc_id: "NonEmptyString", # required
    #       }
    #     }
    #   }
    # @return [Types::GetProjectResult]
    def get_project(params = {}, options = {})
      request = build_request(:get_project, params)
      request.send_request(options)
    end

    # <p>Returns a link to a currently running remote access session.</p>
    # @param [Hash, Types::GetRemoteAccessSessionRequest] params
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the remote access session about which you want to
    #               get session information.</p>
    # @example To get a remote access session
    #   # The following example gets a specific remote access session.
    #   params = {
    #     arn: "arn:aws:devicefarm:us-west-2:123456789101:session:EXAMPLE-GUID-123-456"
    #   }
    #   options = {}
    #   response = client.get_remote_access_session(params, options)
    #   response.to_h #=>
    #   {
    #     remote_access_session: {
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "AmazonResourceName", # required
    #   }
    #   options = {}
    #   response = client.get_remote_access_session(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     remote_access_session: {
    #       arn: "AmazonResourceName",
    #       name: "Name",
    #       created: Time.now,
    #       status: "PENDING" # One of: ["PENDING", "PENDING_CONCURRENCY", "PENDING_DEVICE", "PROCESSING", "SCHEDULING", "PREPARING", "RUNNING", "COMPLETED", "STOPPING"],
    #       result: "PENDING" # One of: ["PENDING", "PASSED", "WARNED", "FAILED", "SKIPPED", "ERRORED", "STOPPED"],
    #       message: "Message",
    #       started: Time.now,
    #       stopped: Time.now,
    #       device: {
    #         arn: "AmazonResourceName",
    #         name: "Name",
    #         manufacturer: "String",
    #         model: "String",
    #         model_id: "String",
    #         form_factor: "PHONE" # One of: ["PHONE", "TABLET"],
    #         platform: "ANDROID" # One of: ["ANDROID", "IOS"],
    #         os: "String",
    #         cpu: {
    #           frequency: "String",
    #           architecture: "String",
    #           clock: 1.0
    #         },
    #         resolution: {
    #           width: 1,
    #           height: 1
    #         },
    #         heap_size: 1,
    #         memory: 1,
    #         image: "String",
    #         carrier: "String",
    #         radio: "String",
    #         remote_access_enabled: false,
    #         remote_debug_enabled: false,
    #         fleet_type: "String",
    #         fleet_name: "String",
    #         instances: [
    #           {
    #             arn: "AmazonResourceName",
    #             device_arn: "AmazonResourceName",
    #             labels: ["String"],
    #             status: "IN_USE" # One of: ["IN_USE", "PREPARING", "AVAILABLE", "NOT_AVAILABLE"],
    #             udid: "String",
    #             instance_profile: {
    #               arn: "AmazonResourceName",
    #               package_cleanup: false,
    #               exclude_app_packages_from_cleanup: ["String"],
    #               reboot_after_use: false,
    #               name: "Name",
    #               description: "Message"
    #             }
    #           }
    #         ],
    #         availability: "TEMPORARY_NOT_AVAILABLE" # One of: ["TEMPORARY_NOT_AVAILABLE", "BUSY", "AVAILABLE", "HIGHLY_AVAILABLE"]
    #       },
    #       instance_arn: "AmazonResourceName",
    #       remote_debug_enabled: false,
    #       remote_record_enabled: false,
    #       remote_record_app_arn: "AmazonResourceName",
    #       host_address: "HostAddress",
    #       client_id: "ClientId",
    #       billing_method: "METERED" # One of: ["METERED", "UNMETERED"],
    #       device_minutes: {
    #         total: 1.0,
    #         metered: 1.0,
    #         unmetered: 1.0
    #       },
    #       endpoint: "String",
    #       device_udid: "String",
    #       interaction_mode: "INTERACTIVE" # One of: ["INTERACTIVE", "NO_VIDEO", "VIDEO_ONLY"],
    #       skip_app_resign: false,
    #       vpc_config: {
    #         security_group_ids: ["SecurityGroupId"], # required
    #         subnet_ids: ["SubnetId"], # required
    #         vpc_id: "NonEmptyString", # required
    #       },
    #       device_proxy: {
    #         host: "DeviceProxyHost", # required
    #         port: 1, # required
    #       }
    #     }
    #   }
    # @return [Types::GetRemoteAccessSessionResult]
    def get_remote_access_session(params = {}, options = {})
      request = build_request(:get_remote_access_session, params)
      request.send_request(options)
    end

    # <p>Gets information about a run.</p>
    # @param [Hash, Types::GetRunRequest] params
    # @option params [String] :arn
    #   <p>The run's ARN.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "AmazonResourceName", # required
    #   }
    #   options = {}
    #   response = client.get_run(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     run: {
    #       arn: "AmazonResourceName",
    #       name: "Name",
    #       type: "BUILTIN_FUZZ" # One of: ["BUILTIN_FUZZ", "APPIUM_JAVA_JUNIT", "APPIUM_JAVA_TESTNG", "APPIUM_PYTHON", "APPIUM_NODE", "APPIUM_RUBY", "APPIUM_WEB_JAVA_JUNIT", "APPIUM_WEB_JAVA_TESTNG", "APPIUM_WEB_PYTHON", "APPIUM_WEB_NODE", "APPIUM_WEB_RUBY", "INSTRUMENTATION", "XCTEST", "XCTEST_UI"],
    #       platform: "ANDROID" # One of: ["ANDROID", "IOS"],
    #       created: Time.now,
    #       status: "PENDING" # One of: ["PENDING", "PENDING_CONCURRENCY", "PENDING_DEVICE", "PROCESSING", "SCHEDULING", "PREPARING", "RUNNING", "COMPLETED", "STOPPING"],
    #       result: "PENDING" # One of: ["PENDING", "PASSED", "WARNED", "FAILED", "SKIPPED", "ERRORED", "STOPPED"],
    #       started: Time.now,
    #       stopped: Time.now,
    #       counters: {
    #         total: 1,
    #         passed: 1,
    #         failed: 1,
    #         warned: 1,
    #         errored: 1,
    #         stopped: 1,
    #         skipped: 1
    #       },
    #       message: "Message",
    #       total_jobs: 1,
    #       completed_jobs: 1,
    #       billing_method: "METERED" # One of: ["METERED", "UNMETERED"],
    #       device_minutes: {
    #         total: 1.0,
    #         metered: 1.0,
    #         unmetered: 1.0
    #       },
    #       network_profile: {
    #         arn: "AmazonResourceName",
    #         name: "Name",
    #         description: "Message",
    #         type: "CURATED" # One of: ["CURATED", "PRIVATE"],
    #         uplink_bandwidth_bits: 1,
    #         downlink_bandwidth_bits: 1,
    #         uplink_delay_ms: 1,
    #         downlink_delay_ms: 1,
    #         uplink_jitter_ms: 1,
    #         downlink_jitter_ms: 1,
    #         uplink_loss_percent: 1,
    #         downlink_loss_percent: 1
    #       },
    #       device_proxy: {
    #         host: "DeviceProxyHost", # required
    #         port: 1, # required
    #       },
    #       parsing_result_url: "String",
    #       result_code: "PARSING_FAILED" # One of: ["PARSING_FAILED", "VPC_ENDPOINT_SETUP_FAILED"],
    #       seed: 1,
    #       app_upload: "AmazonResourceName",
    #       event_count: 1,
    #       job_timeout_minutes: 1,
    #       device_pool_arn: "AmazonResourceName",
    #       locale: "String",
    #       radios: {
    #         wifi: false,
    #         bluetooth: false,
    #         nfc: false,
    #         gps: false
    #       },
    #       location: {
    #         latitude: 1.0, # required
    #         longitude: 1.0, # required
    #       },
    #       customer_artifact_paths: {
    #         ios_paths: ["String"],
    #         android_paths: ["String"],
    #         device_host_paths: ["String"]
    #       },
    #       web_url: "String",
    #       skip_app_resign: false,
    #       test_spec_arn: "AmazonResourceName",
    #       device_selection_result: {
    #         filters: [
    #           {
    #             attribute: "ARN" # One of: ["ARN", "PLATFORM", "OS_VERSION", "MODEL", "AVAILABILITY", "FORM_FACTOR", "MANUFACTURER", "REMOTE_ACCESS_ENABLED", "REMOTE_DEBUG_ENABLED", "INSTANCE_ARN", "INSTANCE_LABELS", "FLEET_TYPE"], # required
    #             operator: "EQUALS" # One of: ["EQUALS", "LESS_THAN", "LESS_THAN_OR_EQUALS", "GREATER_THAN", "GREATER_THAN_OR_EQUALS", "IN", "NOT_IN", "CONTAINS"], # required
    #             values: ["String"], # required
    #           }
    #         ],
    #         matched_devices_count: 1,
    #         max_devices: 1
    #       },
    #       vpc_config: {
    #         security_group_ids: ["SecurityGroupId"], # required
    #         subnet_ids: ["SubnetId"], # required
    #         vpc_id: "NonEmptyString", # required
    #       }
    #     }
    #   }
    # @return [Types::GetRunResult]
    def get_run(params = {}, options = {})
      request = build_request(:get_run, params)
      request.send_request(options)
    end

    # <p>Gets information about a suite.</p>
    # @param [Hash, Types::GetSuiteRequest] params
    # @option params [String] :arn
    #   <p>The suite's ARN.</p>
    # @example To get information about a test suite
    #   # The following example gets information about a specific test suite.
    #   params = {
    #     arn: "arn:aws:devicefarm:us-west-2:123456789101:suite:EXAMPLE-GUID-123-456"
    #   }
    #   options = {}
    #   response = client.get_suite(params, options)
    #   response.to_h #=>
    #   {
    #     suite: {
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "AmazonResourceName", # required
    #   }
    #   options = {}
    #   response = client.get_suite(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     suite: {
    #       arn: "AmazonResourceName",
    #       name: "Name",
    #       type: "BUILTIN_FUZZ" # One of: ["BUILTIN_FUZZ", "APPIUM_JAVA_JUNIT", "APPIUM_JAVA_TESTNG", "APPIUM_PYTHON", "APPIUM_NODE", "APPIUM_RUBY", "APPIUM_WEB_JAVA_JUNIT", "APPIUM_WEB_JAVA_TESTNG", "APPIUM_WEB_PYTHON", "APPIUM_WEB_NODE", "APPIUM_WEB_RUBY", "INSTRUMENTATION", "XCTEST", "XCTEST_UI"],
    #       created: Time.now,
    #       status: "PENDING" # One of: ["PENDING", "PENDING_CONCURRENCY", "PENDING_DEVICE", "PROCESSING", "SCHEDULING", "PREPARING", "RUNNING", "COMPLETED", "STOPPING"],
    #       result: "PENDING" # One of: ["PENDING", "PASSED", "WARNED", "FAILED", "SKIPPED", "ERRORED", "STOPPED"],
    #       started: Time.now,
    #       stopped: Time.now,
    #       counters: {
    #         total: 1,
    #         passed: 1,
    #         failed: 1,
    #         warned: 1,
    #         errored: 1,
    #         stopped: 1,
    #         skipped: 1
    #       },
    #       message: "Message",
    #       device_minutes: {
    #         total: 1.0,
    #         metered: 1.0,
    #         unmetered: 1.0
    #       }
    #     }
    #   }
    # @return [Types::GetSuiteResult]
    def get_suite(params = {}, options = {})
      request = build_request(:get_suite, params)
      request.send_request(options)
    end

    # <p>Gets information about a test.</p>
    # @param [Hash, Types::GetTestRequest] params
    # @option params [String] :arn
    #   <p>The test's ARN.</p>
    # @example To get information about a specific test
    #   # The following example gets information about a specific test.
    #   params = {
    #     arn: "arn:aws:devicefarm:us-west-2:123456789101:test:EXAMPLE-GUID-123-456"
    #   }
    #   options = {}
    #   response = client.get_test(params, options)
    #   response.to_h #=>
    #   {
    #     test: {
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "AmazonResourceName", # required
    #   }
    #   options = {}
    #   response = client.get_test(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     test: {
    #       arn: "AmazonResourceName",
    #       name: "Name",
    #       type: "BUILTIN_FUZZ" # One of: ["BUILTIN_FUZZ", "APPIUM_JAVA_JUNIT", "APPIUM_JAVA_TESTNG", "APPIUM_PYTHON", "APPIUM_NODE", "APPIUM_RUBY", "APPIUM_WEB_JAVA_JUNIT", "APPIUM_WEB_JAVA_TESTNG", "APPIUM_WEB_PYTHON", "APPIUM_WEB_NODE", "APPIUM_WEB_RUBY", "INSTRUMENTATION", "XCTEST", "XCTEST_UI"],
    #       created: Time.now,
    #       status: "PENDING" # One of: ["PENDING", "PENDING_CONCURRENCY", "PENDING_DEVICE", "PROCESSING", "SCHEDULING", "PREPARING", "RUNNING", "COMPLETED", "STOPPING"],
    #       result: "PENDING" # One of: ["PENDING", "PASSED", "WARNED", "FAILED", "SKIPPED", "ERRORED", "STOPPED"],
    #       started: Time.now,
    #       stopped: Time.now,
    #       counters: {
    #         total: 1,
    #         passed: 1,
    #         failed: 1,
    #         warned: 1,
    #         errored: 1,
    #         stopped: 1,
    #         skipped: 1
    #       },
    #       message: "Message",
    #       device_minutes: {
    #         total: 1.0,
    #         metered: 1.0,
    #         unmetered: 1.0
    #       }
    #     }
    #   }
    # @return [Types::GetTestResult]
    def get_test(params = {}, options = {})
      request = build_request(:get_test, params)
      request.send_request(options)
    end

    # <p>Retrieves information about a Selenium testing project.</p>
    # @param [Hash, Types::GetTestGridProjectRequest] params
    # @option params [String] :project_arn
    #   <p>The ARN of the Selenium testing project, from either <a>CreateTestGridProject</a> or <a>ListTestGridProjects</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     project_arn: "DeviceFarmArn", # required
    #   }
    #   options = {}
    #   response = client.get_test_grid_project(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     test_grid_project: {
    #       arn: "DeviceFarmArn",
    #       name: "String",
    #       description: "String",
    #       vpc_config: {
    #         security_group_ids: ["NonEmptyString"], # required
    #         subnet_ids: ["NonEmptyString"], # required
    #         vpc_id: "NonEmptyString", # required
    #       },
    #       created: Time.now
    #     }
    #   }
    # @return [Types::GetTestGridProjectResult]
    def get_test_grid_project(params = {}, options = {})
      request = build_request(:get_test_grid_project, params)
      request.send_request(options)
    end

    # <p>A session is an instance of a browser created through a <code>RemoteWebDriver</code> with the URL from <a>CreateTestGridUrlResult$url</a>. You can use the following to look up sessions:</p>
    #          <ul>
    #             <li>
    #                <p>The session ARN (<a>GetTestGridSessionRequest$sessionArn</a>).</p>
    #             </li>
    #             <li>
    #                <p>The project ARN and a session ID (<a>GetTestGridSessionRequest$projectArn</a> and <a>GetTestGridSessionRequest$sessionId</a>).</p>
    #             </li>
    #          </ul>
    #          <p></p>
    # @param [Hash, Types::GetTestGridSessionRequest] params
    # @option params [String] :project_arn
    #   <p>The ARN for the project that this session belongs to. See <a>CreateTestGridProject</a> and <a>ListTestGridProjects</a>.</p>
    # @option params [String] :session_id
    #   <p>An ID associated with this session.</p>
    # @option params [String] :session_arn
    #   <p>An ARN that uniquely identifies a <a>TestGridSession</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     project_arn: "DeviceFarmArn",
    #     session_id: "ResourceId",
    #     session_arn: "DeviceFarmArn"
    #   }
    #   options = {}
    #   response = client.get_test_grid_session(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     test_grid_session: {
    #       arn: "DeviceFarmArn",
    #       status: "ACTIVE" # One of: ["ACTIVE", "CLOSED", "ERRORED"],
    #       created: Time.now,
    #       ended: Time.now,
    #       billing_minutes: 1.0,
    #       selenium_properties: "String"
    #     }
    #   }
    # @return [Types::GetTestGridSessionResult]
    def get_test_grid_session(params = {}, options = {})
      request = build_request(:get_test_grid_session, params)
      request.send_request(options)
    end

    # <p>Gets information about an upload.</p>
    # @param [Hash, Types::GetUploadRequest] params
    # @option params [String] :arn
    #   <p>The upload's ARN.</p>
    # @example To get information about a specific upload
    #   # The following example gets information about a specific upload.
    #   params = {
    #     arn: "arn:aws:devicefarm:us-west-2:123456789101:upload:EXAMPLE-GUID-123-456"
    #   }
    #   options = {}
    #   response = client.get_upload(params, options)
    #   response.to_h #=>
    #   {
    #     upload: {
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "AmazonResourceName", # required
    #   }
    #   options = {}
    #   response = client.get_upload(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     upload: {
    #       arn: "AmazonResourceName",
    #       name: "Name",
    #       created: Time.now,
    #       type: "ANDROID_APP" # One of: ["ANDROID_APP", "IOS_APP", "WEB_APP", "EXTERNAL_DATA", "APPIUM_JAVA_JUNIT_TEST_PACKAGE", "APPIUM_JAVA_TESTNG_TEST_PACKAGE", "APPIUM_PYTHON_TEST_PACKAGE", "APPIUM_NODE_TEST_PACKAGE", "APPIUM_RUBY_TEST_PACKAGE", "APPIUM_WEB_JAVA_JUNIT_TEST_PACKAGE", "APPIUM_WEB_JAVA_TESTNG_TEST_PACKAGE", "APPIUM_WEB_PYTHON_TEST_PACKAGE", "APPIUM_WEB_NODE_TEST_PACKAGE", "APPIUM_WEB_RUBY_TEST_PACKAGE", "CALABASH_TEST_PACKAGE", "INSTRUMENTATION_TEST_PACKAGE", "UIAUTOMATION_TEST_PACKAGE", "UIAUTOMATOR_TEST_PACKAGE", "XCTEST_TEST_PACKAGE", "XCTEST_UI_TEST_PACKAGE", "APPIUM_JAVA_JUNIT_TEST_SPEC", "APPIUM_JAVA_TESTNG_TEST_SPEC", "APPIUM_PYTHON_TEST_SPEC", "APPIUM_NODE_TEST_SPEC", "APPIUM_RUBY_TEST_SPEC", "APPIUM_WEB_JAVA_JUNIT_TEST_SPEC", "APPIUM_WEB_JAVA_TESTNG_TEST_SPEC", "APPIUM_WEB_PYTHON_TEST_SPEC", "APPIUM_WEB_NODE_TEST_SPEC", "APPIUM_WEB_RUBY_TEST_SPEC", "INSTRUMENTATION_TEST_SPEC", "XCTEST_UI_TEST_SPEC"],
    #       status: "INITIALIZED" # One of: ["INITIALIZED", "PROCESSING", "SUCCEEDED", "FAILED"],
    #       url: "SensitiveURL",
    #       metadata: "Metadata",
    #       content_type: "ContentType",
    #       message: "Message",
    #       category: "CURATED" # One of: ["CURATED", "PRIVATE"]
    #     }
    #   }
    # @return [Types::GetUploadResult]
    def get_upload(params = {}, options = {})
      request = build_request(:get_upload, params)
      request.send_request(options)
    end

    # <p>Returns information about the configuration settings for your Amazon Virtual Private
    #             Cloud (VPC) endpoint.</p>
    # @param [Hash, Types::GetVPCEConfigurationRequest] params
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the VPC endpoint configuration you want to
    #               describe.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "AmazonResourceName", # required
    #   }
    #   options = {}
    #   response = client.get_vpce_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     vpce_configuration: {
    #       arn: "AmazonResourceName",
    #       vpce_configuration_name: "VPCEConfigurationName",
    #       vpce_service_name: "VPCEServiceName",
    #       service_dns_name: "ServiceDnsName",
    #       vpce_configuration_description: "VPCEConfigurationDescription"
    #     }
    #   }
    # @return [Types::GetVPCEConfigurationResult]
    def get_vpce_configuration(params = {}, options = {})
      request = build_request(:get_vpce_configuration, params)
      request.send_request(options)
    end

    # <p>Installs an application to the device in a remote access session. For Android
    #             applications, the file must be in .apk format. For iOS applications, the file must be in
    #             .ipa format.</p>
    # @param [Hash, Types::InstallToRemoteAccessSessionRequest] params
    # @option params [String] :remote_access_session_arn
    #   <p>The Amazon Resource Name (ARN) of the remote access session about which you are
    #               requesting information.</p>
    # @option params [String] :app_arn
    #   <p>The ARN of the app about which you are requesting information.</p>
    # @example To install to a remote access session
    #   # The following example installs a specific app to a device in a specific remote access session.
    #   params = {
    #     remote_access_session_arn: "arn:aws:devicefarm:us-west-2:123456789101:session:EXAMPLE-GUID-123-456",
    #     app_arn: "arn:aws:devicefarm:us-west-2:123456789101:app:EXAMPLE-GUID-123-456"
    #   }
    #   options = {}
    #   response = client.install_to_remote_access_session(params, options)
    #   response.to_h #=>
    #   {
    #     app_upload: {
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     remote_access_session_arn: "AmazonResourceName", # required
    #     app_arn: "AmazonResourceName", # required
    #   }
    #   options = {}
    #   response = client.install_to_remote_access_session(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     app_upload: {
    #       arn: "AmazonResourceName",
    #       name: "Name",
    #       created: Time.now,
    #       type: "ANDROID_APP" # One of: ["ANDROID_APP", "IOS_APP", "WEB_APP", "EXTERNAL_DATA", "APPIUM_JAVA_JUNIT_TEST_PACKAGE", "APPIUM_JAVA_TESTNG_TEST_PACKAGE", "APPIUM_PYTHON_TEST_PACKAGE", "APPIUM_NODE_TEST_PACKAGE", "APPIUM_RUBY_TEST_PACKAGE", "APPIUM_WEB_JAVA_JUNIT_TEST_PACKAGE", "APPIUM_WEB_JAVA_TESTNG_TEST_PACKAGE", "APPIUM_WEB_PYTHON_TEST_PACKAGE", "APPIUM_WEB_NODE_TEST_PACKAGE", "APPIUM_WEB_RUBY_TEST_PACKAGE", "CALABASH_TEST_PACKAGE", "INSTRUMENTATION_TEST_PACKAGE", "UIAUTOMATION_TEST_PACKAGE", "UIAUTOMATOR_TEST_PACKAGE", "XCTEST_TEST_PACKAGE", "XCTEST_UI_TEST_PACKAGE", "APPIUM_JAVA_JUNIT_TEST_SPEC", "APPIUM_JAVA_TESTNG_TEST_SPEC", "APPIUM_PYTHON_TEST_SPEC", "APPIUM_NODE_TEST_SPEC", "APPIUM_RUBY_TEST_SPEC", "APPIUM_WEB_JAVA_JUNIT_TEST_SPEC", "APPIUM_WEB_JAVA_TESTNG_TEST_SPEC", "APPIUM_WEB_PYTHON_TEST_SPEC", "APPIUM_WEB_NODE_TEST_SPEC", "APPIUM_WEB_RUBY_TEST_SPEC", "INSTRUMENTATION_TEST_SPEC", "XCTEST_UI_TEST_SPEC"],
    #       status: "INITIALIZED" # One of: ["INITIALIZED", "PROCESSING", "SUCCEEDED", "FAILED"],
    #       url: "SensitiveURL",
    #       metadata: "Metadata",
    #       content_type: "ContentType",
    #       message: "Message",
    #       category: "CURATED" # One of: ["CURATED", "PRIVATE"]
    #     }
    #   }
    # @return [Types::InstallToRemoteAccessSessionResult]
    def install_to_remote_access_session(params = {}, options = {})
      request = build_request(:install_to_remote_access_session, params)
      request.send_request(options)
    end

    # <p>Gets information about artifacts.</p>
    # @param [Hash, Types::ListArtifactsRequest] params
    # @option params [String] :arn
    #   <p>The run, job, suite, or test ARN.</p>
    # @option params [String] :type
    #   <p>The artifacts' type.</p>
    #           <p>Allowed values include:</p>
    #           <ul>
    #               <li>
    #                   <p>FILE</p>
    #               </li>
    #               <li>
    #                   <p>LOG</p>
    #               </li>
    #               <li>
    #                   <p>SCREENSHOT</p>
    #               </li>
    #            </ul>
    # @option params [String] :next_token
    #   <p>An identifier that was returned from the previous call to this operation, which can
    #               be used to return the next set of items in the list.</p>
    # @example To list artifacts for a resource
    #   # The following example lists screenshot artifacts for a specific run.
    #   params = {
    #     arn: "arn:aws:devicefarm:us-west-2:123456789101:run:EXAMPLE-GUID-123-456",
    #     type: SCREENSHOT
    #   }
    #   options = {}
    #   response = client.list_artifacts(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "AmazonResourceName", # required
    #     type: "SCREENSHOT" # One of: ["SCREENSHOT", "FILE", "LOG"], # required
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.list_artifacts(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     artifacts: [
    #       {
    #         arn: "AmazonResourceName",
    #         name: "Name",
    #         type: "UNKNOWN" # One of: ["UNKNOWN", "SCREENSHOT", "DEVICE_LOG", "MESSAGE_LOG", "VIDEO_LOG", "RESULT_LOG", "SERVICE_LOG", "WEBKIT_LOG", "INSTRUMENTATION_OUTPUT", "EXERCISER_MONKEY_OUTPUT", "CALABASH_JSON_OUTPUT", "CALABASH_PRETTY_OUTPUT", "CALABASH_STANDARD_OUTPUT", "CALABASH_JAVA_XML_OUTPUT", "AUTOMATION_OUTPUT", "APPIUM_SERVER_OUTPUT", "APPIUM_JAVA_OUTPUT", "APPIUM_JAVA_XML_OUTPUT", "APPIUM_PYTHON_OUTPUT", "APPIUM_PYTHON_XML_OUTPUT", "EXPLORER_EVENT_LOG", "EXPLORER_SUMMARY_LOG", "APPLICATION_CRASH_REPORT", "XCTEST_LOG", "VIDEO", "CUSTOMER_ARTIFACT", "CUSTOMER_ARTIFACT_LOG", "TESTSPEC_OUTPUT"],
    #         extension: "String",
    #         url: "URL"
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListArtifactsResult]
    def list_artifacts(params = {}, options = {})
      request = build_request(:list_artifacts, params)
      request.send_request(options)
    end

    # <p>Returns information about the private device instances associated with one or more AWS
    #             accounts.</p>
    # @param [Hash, Types::ListDeviceInstancesRequest] params
    # @option params [Integer] :max_results
    #   <p>An integer that specifies the maximum number of items you want to return in the API response.</p>
    # @option params [String] :next_token
    #   <p>An identifier that was returned from the previous call to this operation, which can be
    #               used to return the next set of items in the list.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.list_device_instances(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     device_instances: [
    #       {
    #         arn: "AmazonResourceName",
    #         device_arn: "AmazonResourceName",
    #         labels: ["String"],
    #         status: "IN_USE" # One of: ["IN_USE", "PREPARING", "AVAILABLE", "NOT_AVAILABLE"],
    #         udid: "String",
    #         instance_profile: {
    #           arn: "AmazonResourceName",
    #           package_cleanup: false,
    #           exclude_app_packages_from_cleanup: ["String"],
    #           reboot_after_use: false,
    #           name: "Name",
    #           description: "Message"
    #         }
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListDeviceInstancesResult]
    def list_device_instances(params = {}, options = {})
      request = build_request(:list_device_instances, params)
      request.send_request(options)
    end

    # <p>Gets information about device pools.</p>
    # @param [Hash, Types::ListDevicePoolsRequest] params
    # @option params [String] :arn
    #   <p>The project ARN.</p>
    # @option params [String] :type
    #   <p>The device pools' type.</p>
    #           <p>Allowed values include:</p>
    #           <ul>
    #               <li>
    #                   <p>CURATED: A device pool that is created and managed by AWS Device
    #                       Farm.</p>
    #               </li>
    #               <li>
    #                   <p>PRIVATE: A device pool that is created and managed by the device pool
    #                       developer.</p>
    #               </li>
    #            </ul>
    # @option params [String] :next_token
    #   <p>An identifier that was returned from the previous call to this operation, which can
    #               be used to return the next set of items in the list.</p>
    # @example To get information about device pools
    #   # The following example returns information about the private device pools in a specific project.
    #   params = {
    #     arn: "arn:aws:devicefarm:us-west-2:123456789101:project:EXAMPLE-GUID-123-456",
    #     type: PRIVATE
    #   }
    #   options = {}
    #   response = client.list_device_pools(params, options)
    #   response.to_h #=>
    #   {
    #     device_pools: [
    #       {
    #         rules: [
    #           {
    #             operator: IN,
    #             attribute: ARN,
    #             value: "[\"arn:aws:devicefarm:us-west-2::device:123456789EXAMPLE\",\"arn:aws:devicefarm:us-west-2::device:123456789EXAMPLE\",\"arn:aws:devicefarm:us-west-2::device:123456789EXAMPLE\",\"arn:aws:devicefarm:us-west-2::device:123456789EXAMPLE\",\"arn:aws:devicefarm:us-west-2::device:123456789EXAMPLE\",\"arn:aws:devicefarm:us-west-2::device:123456789EXAMPLE\",\"arn:aws:devicefarm:us-west-2::device:123456789EXAMPLE\",\"arn:aws:devicefarm:us-west-2::device:123456789EXAMPLE\",\"arn:aws:devicefarm:us-west-2::device:123456789EXAMPLE\",\"arn:aws:devicefarm:us-west-2::device:123456789EXAMPLE\"]"
    #           }
    #         ],
    #         name: "Top Devices",
    #         arn: "arn:aws:devicefarm:us-west-2::devicepool:082d10e5-d7d7-48a5-ba5c-12345EXAMPLE",
    #         description: "Top devices"
    #       },
    #       {
    #         rules: [
    #           {
    #             operator: IN,
    #             attribute: ARN,
    #             value: "[\"arn:aws:devicefarm:us-west-2::device:123456789EXAMPLE\",\"arn:aws:devicefarm:us-west-2::device:123456789EXAMPLE\",\"arn:aws:devicefarm:us-west-2::device:123456789EXAMPLE\"]"
    #           }
    #         ],
    #         name: "My Android Device Pool",
    #         arn: "arn:aws:devicefarm:us-west-2:123456789101:devicepool:5e01a8c7-c861-4c0a-b1d5-5ec6e6c6dd23/bf96e75a-28f6-4e61-b6a7-12345EXAMPLE",
    #         description: "Samsung Galaxy Android devices"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "AmazonResourceName", # required
    #     type: "CURATED" # One of: ["CURATED", "PRIVATE"],
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.list_device_pools(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     device_pools: [
    #       {
    #         arn: "AmazonResourceName",
    #         name: "Name",
    #         description: "Message",
    #         type: "CURATED" # One of: ["CURATED", "PRIVATE"],
    #         rules: [
    #           {
    #             attribute: "ARN" # One of: ["ARN", "PLATFORM", "FORM_FACTOR", "MANUFACTURER", "REMOTE_ACCESS_ENABLED", "REMOTE_DEBUG_ENABLED", "APPIUM_VERSION", "INSTANCE_ARN", "INSTANCE_LABELS", "FLEET_TYPE", "OS_VERSION", "MODEL", "AVAILABILITY"],
    #             operator: "EQUALS" # One of: ["EQUALS", "LESS_THAN", "LESS_THAN_OR_EQUALS", "GREATER_THAN", "GREATER_THAN_OR_EQUALS", "IN", "NOT_IN", "CONTAINS"],
    #             value: "String"
    #           }
    #         ],
    #         max_devices: 1
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListDevicePoolsResult]
    def list_device_pools(params = {}, options = {})
      request = build_request(:list_device_pools, params)
      request.send_request(options)
    end

    # <p>Gets information about unique device types.</p>
    # @param [Hash, Types::ListDevicesRequest] params
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the project.</p>
    # @option params [String] :next_token
    #   <p>An identifier that was returned from the previous call to this operation, which can
    #               be used to return the next set of items in the list.</p>
    # @option params [Array<Types::DeviceFilter>] :filters
    #   <p>Used to select a set of devices. A filter is made up of an attribute, an operator, and
    #               one or more values.</p>
    #           <ul>
    #               <li>
    #                   <p>Attribute: The aspect of a device such as platform or model used as the
    #                       selection criteria in a device filter.</p>
    #                   <p>Allowed values include:</p>
    #                   <ul>
    #                     <li>
    #                           <p>ARN: The Amazon Resource Name (ARN) of the device (for example,
    #                                   <code>arn:aws:devicefarm:us-west-2::device:12345Example</code>).</p>
    #                       </li>
    #                     <li>
    #                           <p>PLATFORM: The device platform. Valid values are ANDROID or IOS.</p>
    #                       </li>
    #                     <li>
    #                           <p>OS_VERSION: The operating system version (for example, 10.3.2).</p>
    #                       </li>
    #                     <li>
    #                           <p>MODEL: The device model (for example, iPad 5th Gen).</p>
    #                       </li>
    #                     <li>
    #                           <p>AVAILABILITY: The current availability of the device. Valid values are AVAILABLE,
    #                               HIGHLY_AVAILABLE, BUSY, or TEMPORARY_NOT_AVAILABLE.</p>
    #                       </li>
    #                     <li>
    #                           <p>FORM_FACTOR: The device form factor. Valid values are PHONE or TABLET.</p>
    #                       </li>
    #                     <li>
    #                           <p>MANUFACTURER: The device manufacturer (for example, Apple).</p>
    #                       </li>
    #                     <li>
    #                           <p>REMOTE_ACCESS_ENABLED: Whether the device is enabled for remote access. Valid values
    #                               are TRUE or FALSE.</p>
    #                       </li>
    #                     <li>
    #                           <p>REMOTE_DEBUG_ENABLED: Whether the device is enabled for remote debugging. Valid values
    #                               are TRUE or FALSE. Because remote debugging is <a href="https://docs.aws.amazon.com/devicefarm/latest/developerguide/history.html">no
    #                                   longer supported</a>, this attribute is ignored.</p>
    #                       </li>
    #                     <li>
    #                           <p>INSTANCE_ARN: The Amazon Resource Name (ARN) of the device
    #                               instance.</p>
    #                       </li>
    #                     <li>
    #                           <p>INSTANCE_LABELS: The label of the device instance.</p>
    #                       </li>
    #                     <li>
    #                           <p>FLEET_TYPE: The fleet type. Valid values are PUBLIC or PRIVATE.</p>
    #                       </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                   <p>Operator: The filter operator.</p>
    #                   <ul>
    #                     <li>
    #                           <p>The EQUALS operator is available for every attribute except
    #                               INSTANCE_LABELS.</p>
    #                       </li>
    #                     <li>
    #                           <p>The CONTAINS operator is available for the INSTANCE_LABELS and MODEL
    #                               attributes.</p>
    #                       </li>
    #                     <li>
    #                           <p>The IN and NOT_IN operators are available for the ARN, OS_VERSION,
    #                               MODEL, MANUFACTURER, and INSTANCE_ARN attributes.</p>
    #                       </li>
    #                     <li>
    #                           <p>The LESS_THAN, GREATER_THAN, LESS_THAN_OR_EQUALS, and
    #                               GREATER_THAN_OR_EQUALS operators are also available for the OS_VERSION
    #                               attribute.</p>
    #                       </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                   <p>Values: An array of one or more filter values.</p>
    #                   <ul>
    #                     <li>
    #                           <p>The IN and NOT_IN operators take a values array that has one or more
    #                               elements.</p>
    #                       </li>
    #                     <li>
    #                           <p>The other operators require an array with a single element.</p>
    #                       </li>
    #                     <li>
    #                           <p>In a request, the AVAILABILITY attribute takes the following values: AVAILABLE,
    #                               HIGHLY_AVAILABLE, BUSY, or TEMPORARY_NOT_AVAILABLE.</p>
    #                       </li>
    #                  </ul>
    #               </li>
    #            </ul>
    # @example To get information about devices
    #   # The following example returns information about the available devices in a specific project.
    #   params = {
    #     arn: "arn:aws:devicefarm:us-west-2:123456789101:project:EXAMPLE-GUID-123-456"
    #   }
    #   options = {}
    #   response = client.list_devices(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "AmazonResourceName",
    #     next_token: "PaginationToken",
    #     filters: [
    #       {
    #         attribute: "ARN" # One of: ["ARN", "PLATFORM", "OS_VERSION", "MODEL", "AVAILABILITY", "FORM_FACTOR", "MANUFACTURER", "REMOTE_ACCESS_ENABLED", "REMOTE_DEBUG_ENABLED", "INSTANCE_ARN", "INSTANCE_LABELS", "FLEET_TYPE"], # required
    #         operator: "EQUALS" # One of: ["EQUALS", "LESS_THAN", "LESS_THAN_OR_EQUALS", "GREATER_THAN", "GREATER_THAN_OR_EQUALS", "IN", "NOT_IN", "CONTAINS"], # required
    #         values: ["String"], # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.list_devices(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     devices: [
    #       {
    #         arn: "AmazonResourceName",
    #         name: "Name",
    #         manufacturer: "String",
    #         model: "String",
    #         model_id: "String",
    #         form_factor: "PHONE" # One of: ["PHONE", "TABLET"],
    #         platform: "ANDROID" # One of: ["ANDROID", "IOS"],
    #         os: "String",
    #         cpu: {
    #           frequency: "String",
    #           architecture: "String",
    #           clock: 1.0
    #         },
    #         resolution: {
    #           width: 1,
    #           height: 1
    #         },
    #         heap_size: 1,
    #         memory: 1,
    #         image: "String",
    #         carrier: "String",
    #         radio: "String",
    #         remote_access_enabled: false,
    #         remote_debug_enabled: false,
    #         fleet_type: "String",
    #         fleet_name: "String",
    #         instances: [
    #           {
    #             arn: "AmazonResourceName",
    #             device_arn: "AmazonResourceName",
    #             labels: ["String"],
    #             status: "IN_USE" # One of: ["IN_USE", "PREPARING", "AVAILABLE", "NOT_AVAILABLE"],
    #             udid: "String",
    #             instance_profile: {
    #               arn: "AmazonResourceName",
    #               package_cleanup: false,
    #               exclude_app_packages_from_cleanup: ["String"],
    #               reboot_after_use: false,
    #               name: "Name",
    #               description: "Message"
    #             }
    #           }
    #         ],
    #         availability: "TEMPORARY_NOT_AVAILABLE" # One of: ["TEMPORARY_NOT_AVAILABLE", "BUSY", "AVAILABLE", "HIGHLY_AVAILABLE"]
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListDevicesResult]
    def list_devices(params = {}, options = {})
      request = build_request(:list_devices, params)
      request.send_request(options)
    end

    # <p>Returns information about all the instance profiles in an AWS account.</p>
    # @param [Hash, Types::ListInstanceProfilesRequest] params
    # @option params [Integer] :max_results
    #   <p>An integer that specifies the maximum number of items you want to return in the API response.</p>
    # @option params [String] :next_token
    #   <p>An identifier that was returned from the previous call to this operation, which can be
    #               used to return the next set of items in the list.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.list_instance_profiles(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     instance_profiles: [
    #       {
    #         arn: "AmazonResourceName",
    #         package_cleanup: false,
    #         exclude_app_packages_from_cleanup: ["String"],
    #         reboot_after_use: false,
    #         name: "Name",
    #         description: "Message"
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListInstanceProfilesResult]
    def list_instance_profiles(params = {}, options = {})
      request = build_request(:list_instance_profiles, params)
      request.send_request(options)
    end

    # <p>Gets information about jobs for a given test run.</p>
    # @param [Hash, Types::ListJobsRequest] params
    # @option params [String] :arn
    #   <p>The run's Amazon Resource Name (ARN).</p>
    # @option params [String] :next_token
    #   <p>An identifier that was returned from the previous call to this operation, which can
    #               be used to return the next set of items in the list.</p>
    # @example To get information about jobs
    #   # The following example returns information about jobs in a specific project.
    #   params = {
    #     arn: "arn:aws:devicefarm:us-west-2:123456789101:project:EXAMPLE-GUID-123-456"
    #   }
    #   options = {}
    #   response = client.list_jobs(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "AmazonResourceName", # required
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.list_jobs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     jobs: [
    #       {
    #         arn: "AmazonResourceName",
    #         name: "Name",
    #         type: "BUILTIN_FUZZ" # One of: ["BUILTIN_FUZZ", "APPIUM_JAVA_JUNIT", "APPIUM_JAVA_TESTNG", "APPIUM_PYTHON", "APPIUM_NODE", "APPIUM_RUBY", "APPIUM_WEB_JAVA_JUNIT", "APPIUM_WEB_JAVA_TESTNG", "APPIUM_WEB_PYTHON", "APPIUM_WEB_NODE", "APPIUM_WEB_RUBY", "INSTRUMENTATION", "XCTEST", "XCTEST_UI"],
    #         created: Time.now,
    #         status: "PENDING" # One of: ["PENDING", "PENDING_CONCURRENCY", "PENDING_DEVICE", "PROCESSING", "SCHEDULING", "PREPARING", "RUNNING", "COMPLETED", "STOPPING"],
    #         result: "PENDING" # One of: ["PENDING", "PASSED", "WARNED", "FAILED", "SKIPPED", "ERRORED", "STOPPED"],
    #         started: Time.now,
    #         stopped: Time.now,
    #         counters: {
    #           total: 1,
    #           passed: 1,
    #           failed: 1,
    #           warned: 1,
    #           errored: 1,
    #           stopped: 1,
    #           skipped: 1
    #         },
    #         message: "Message",
    #         device: {
    #           arn: "AmazonResourceName",
    #           name: "Name",
    #           manufacturer: "String",
    #           model: "String",
    #           model_id: "String",
    #           form_factor: "PHONE" # One of: ["PHONE", "TABLET"],
    #           platform: "ANDROID" # One of: ["ANDROID", "IOS"],
    #           os: "String",
    #           cpu: {
    #             frequency: "String",
    #             architecture: "String",
    #             clock: 1.0
    #           },
    #           resolution: {
    #             width: 1,
    #             height: 1
    #           },
    #           heap_size: 1,
    #           memory: 1,
    #           image: "String",
    #           carrier: "String",
    #           radio: "String",
    #           remote_access_enabled: false,
    #           remote_debug_enabled: false,
    #           fleet_type: "String",
    #           fleet_name: "String",
    #           instances: [
    #             {
    #               arn: "AmazonResourceName",
    #               device_arn: "AmazonResourceName",
    #               labels: ["String"],
    #               status: "IN_USE" # One of: ["IN_USE", "PREPARING", "AVAILABLE", "NOT_AVAILABLE"],
    #               udid: "String",
    #               instance_profile: {
    #                 arn: "AmazonResourceName",
    #                 package_cleanup: false,
    #                 exclude_app_packages_from_cleanup: ["String"],
    #                 reboot_after_use: false,
    #                 name: "Name",
    #                 description: "Message"
    #               }
    #             }
    #           ],
    #           availability: "TEMPORARY_NOT_AVAILABLE" # One of: ["TEMPORARY_NOT_AVAILABLE", "BUSY", "AVAILABLE", "HIGHLY_AVAILABLE"]
    #         },
    #         instance_arn: "AmazonResourceName",
    #         device_minutes: {
    #           total: 1.0,
    #           metered: 1.0,
    #           unmetered: 1.0
    #         },
    #         video_endpoint: "String",
    #         video_capture: false
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListJobsResult]
    def list_jobs(params = {}, options = {})
      request = build_request(:list_jobs, params)
      request.send_request(options)
    end

    # <p>Returns the list of available network profiles.</p>
    # @param [Hash, Types::ListNetworkProfilesRequest] params
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the project for which you want to list network
    #               profiles.</p>
    # @option params [String] :type
    #   <p>The type of network profile to return information about. Valid values are listed here.</p>
    # @option params [String] :next_token
    #   <p>An identifier that was returned from the previous call to this operation, which can
    #               be used to return the next set of items in the list.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "AmazonResourceName", # required
    #     type: "CURATED" # One of: ["CURATED", "PRIVATE"],
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.list_network_profiles(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     network_profiles: [
    #       {
    #         arn: "AmazonResourceName",
    #         name: "Name",
    #         description: "Message",
    #         type: "CURATED" # One of: ["CURATED", "PRIVATE"],
    #         uplink_bandwidth_bits: 1,
    #         downlink_bandwidth_bits: 1,
    #         uplink_delay_ms: 1,
    #         downlink_delay_ms: 1,
    #         uplink_jitter_ms: 1,
    #         downlink_jitter_ms: 1,
    #         uplink_loss_percent: 1,
    #         downlink_loss_percent: 1
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListNetworkProfilesResult]
    def list_network_profiles(params = {}, options = {})
      request = build_request(:list_network_profiles, params)
      request.send_request(options)
    end

    # <p>Returns a list of offering promotions. Each offering promotion record contains the ID and description
    #             of the promotion. The API returns a <code>NotEligible</code> error if the caller is not permitted to invoke
    #             the operation. Contact <a href="mailto:aws-devicefarm-support@amazon.com">aws-devicefarm-support@amazon.com</a> if you must be able to invoke this operation.</p>
    # @param [Hash, Types::ListOfferingPromotionsRequest] params
    # @option params [String] :next_token
    #   <p>An identifier that was returned from the previous call to this operation, which can
    #               be used to return the next set of items in the list.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.list_offering_promotions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     offering_promotions: [
    #       {
    #         id: "OfferingPromotionIdentifier",
    #         description: "Message"
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListOfferingPromotionsResult]
    def list_offering_promotions(params = {}, options = {})
      request = build_request(:list_offering_promotions, params)
      request.send_request(options)
    end

    # <p>Returns a list of all historical purchases, renewals, and system renewal transactions for an AWS
    #             account. The list is paginated and ordered by a descending timestamp (most recent transactions are first).
    #             The API returns a <code>NotEligible</code> error if the user is not permitted to invoke the operation. If
    #             you must be able to invoke this operation, contact <a href="mailto:aws-devicefarm-support@amazon.com">aws-devicefarm-support@amazon.com</a>.</p>
    # @param [Hash, Types::ListOfferingTransactionsRequest] params
    # @option params [String] :next_token
    #   <p>An identifier that was returned from the previous call to this operation, which can
    #               be used to return the next set of items in the list.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.list_offering_transactions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     offering_transactions: [
    #       {
    #         offering_status: {
    #           type: "PURCHASE" # One of: ["PURCHASE", "RENEW", "SYSTEM"],
    #           offering: {
    #             id: "OfferingIdentifier",
    #             description: "Message",
    #             type: "RECURRING" # One of: ["RECURRING"],
    #             platform: "ANDROID" # One of: ["ANDROID", "IOS"],
    #             recurring_charges: [
    #               {
    #                 cost: {
    #                   amount: 1.0,
    #                   currency_code: "USD" # One of: ["USD"]
    #                 },
    #                 frequency: "MONTHLY" # One of: ["MONTHLY"]
    #               }
    #             ]
    #           },
    #           quantity: 1,
    #           effective_on: Time.now
    #         },
    #         transaction_id: "TransactionIdentifier",
    #         offering_promotion_id: "OfferingPromotionIdentifier",
    #         created_on: Time.now,
    #         cost: {
    #           amount: 1.0,
    #           currency_code: "USD" # One of: ["USD"]
    #         }
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListOfferingTransactionsResult]
    def list_offering_transactions(params = {}, options = {})
      request = build_request(:list_offering_transactions, params)
      request.send_request(options)
    end

    # <p>Returns a list of products or offerings that the user can manage through the API. Each offering record
    #             indicates the recurring price per unit and the frequency for that offering. The API returns a
    #                 <code>NotEligible</code> error if the user is not permitted to invoke the operation.  If you must be
    #             able to invoke this operation, contact <a href="mailto:aws-devicefarm-support@amazon.com">aws-devicefarm-support@amazon.com</a>.</p>
    # @param [Hash, Types::ListOfferingsRequest] params
    # @option params [String] :next_token
    #   <p>An identifier that was returned from the previous call to this operation, which can
    #               be used to return the next set of items in the list.</p>
    # @example To get information about device offerings
    #   # The following example returns information about available device offerings.
    #   params = {
    #     next_token: "RW5DdDJkMWYwZjM2MzM2VHVpOHJIUXlDUXlhc2QzRGViYnc9SEXAMPLE="
    #   }
    #   options = {}
    #   response = client.list_offerings(params, options)
    #   response.to_h #=>
    #   {
    #     offerings: [
    #       {
    #         recurring_charges: [
    #           {
    #             cost: {
    #               amount: 250,
    #               currency_code: USD
    #             },
    #             frequency: MONTHLY
    #           }
    #         ],
    #         platform: IOS,
    #         type: RECURRING,
    #         id: "A53D4D73-A6F6-4B82-A0B0-12345EXAMPLE",
    #         description: "iOS Unmetered Device Slot"
    #       },
    #       {
    #         recurring_charges: [
    #           {
    #             cost: {
    #               amount: 250,
    #               currency_code: USD
    #             },
    #             frequency: MONTHLY
    #           }
    #         ],
    #         platform: ANDROID,
    #         type: RECURRING,
    #         id: "8980F81C-00D7-469D-8EC6-12345EXAMPLE",
    #         description: "Android Unmetered Device Slot"
    #       },
    #       {
    #         recurring_charges: [
    #           {
    #             cost: {
    #               amount: 250,
    #               currency_code: USD
    #             },
    #             frequency: MONTHLY
    #           }
    #         ],
    #         platform: ANDROID,
    #         type: RECURRING,
    #         id: "D68B3C05-1BA6-4360-BC69-12345EXAMPLE",
    #         description: "Android Remote Access Unmetered Device Slot"
    #       },
    #       {
    #         recurring_charges: [
    #           {
    #             cost: {
    #               amount: 250,
    #               currency_code: USD
    #             },
    #             frequency: MONTHLY
    #           }
    #         ],
    #         platform: IOS,
    #         type: RECURRING,
    #         id: "552B4DAD-A6C9-45C4-94FB-12345EXAMPLE",
    #         description: "iOS Remote Access Unmetered Device Slot"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.list_offerings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     offerings: [
    #       {
    #         id: "OfferingIdentifier",
    #         description: "Message",
    #         type: "RECURRING" # One of: ["RECURRING"],
    #         platform: "ANDROID" # One of: ["ANDROID", "IOS"],
    #         recurring_charges: [
    #           {
    #             cost: {
    #               amount: 1.0,
    #               currency_code: "USD" # One of: ["USD"]
    #             },
    #             frequency: "MONTHLY" # One of: ["MONTHLY"]
    #           }
    #         ]
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListOfferingsResult]
    def list_offerings(params = {}, options = {})
      request = build_request(:list_offerings, params)
      request.send_request(options)
    end

    # <p>Gets information about projects.</p>
    # @param [Hash, Types::ListProjectsRequest] params
    # @option params [String] :arn
    #   <p>Optional. If no Amazon Resource Name (ARN) is specified, then AWS Device Farm
    #               returns a list of all projects for the AWS account. You can also specify a project
    #               ARN.</p>
    # @option params [String] :next_token
    #   <p>An identifier that was returned from the previous call to this operation, which can
    #               be used to return the next set of items in the list.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "AmazonResourceName",
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.list_projects(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     projects: [
    #       {
    #         arn: "AmazonResourceName",
    #         name: "Name",
    #         default_job_timeout_minutes: 1,
    #         created: Time.now,
    #         vpc_config: {
    #           security_group_ids: ["SecurityGroupId"], # required
    #           subnet_ids: ["SubnetId"], # required
    #           vpc_id: "NonEmptyString", # required
    #         }
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListProjectsResult]
    def list_projects(params = {}, options = {})
      request = build_request(:list_projects, params)
      request.send_request(options)
    end

    # <p>Returns a list of all currently running remote access sessions.</p>
    # @param [Hash, Types::ListRemoteAccessSessionsRequest] params
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the project about which you are requesting
    #               information.</p>
    # @option params [String] :next_token
    #   <p>An identifier that was returned from the previous call to this operation, which can
    #               be used to return the next set of items in the list.</p>
    # @example To get information about a remote access session
    #   # The following example returns information about a specific Device Farm remote access session.
    #   params = {
    #     arn: "arn:aws:devicefarm:us-west-2:123456789101:session:EXAMPLE-GUID-123-456",
    #     next_token: "RW5DdDJkMWYwZjM2MzM2VHVpOHJIUXlDUXlhc2QzRGViYnc9SEXAMPLE="
    #   }
    #   options = {}
    #   response = client.list_remote_access_sessions(params, options)
    #   response.to_h #=>
    #   {
    #     remote_access_sessions: [
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "AmazonResourceName", # required
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.list_remote_access_sessions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     remote_access_sessions: [
    #       {
    #         arn: "AmazonResourceName",
    #         name: "Name",
    #         created: Time.now,
    #         status: "PENDING" # One of: ["PENDING", "PENDING_CONCURRENCY", "PENDING_DEVICE", "PROCESSING", "SCHEDULING", "PREPARING", "RUNNING", "COMPLETED", "STOPPING"],
    #         result: "PENDING" # One of: ["PENDING", "PASSED", "WARNED", "FAILED", "SKIPPED", "ERRORED", "STOPPED"],
    #         message: "Message",
    #         started: Time.now,
    #         stopped: Time.now,
    #         device: {
    #           arn: "AmazonResourceName",
    #           name: "Name",
    #           manufacturer: "String",
    #           model: "String",
    #           model_id: "String",
    #           form_factor: "PHONE" # One of: ["PHONE", "TABLET"],
    #           platform: "ANDROID" # One of: ["ANDROID", "IOS"],
    #           os: "String",
    #           cpu: {
    #             frequency: "String",
    #             architecture: "String",
    #             clock: 1.0
    #           },
    #           resolution: {
    #             width: 1,
    #             height: 1
    #           },
    #           heap_size: 1,
    #           memory: 1,
    #           image: "String",
    #           carrier: "String",
    #           radio: "String",
    #           remote_access_enabled: false,
    #           remote_debug_enabled: false,
    #           fleet_type: "String",
    #           fleet_name: "String",
    #           instances: [
    #             {
    #               arn: "AmazonResourceName",
    #               device_arn: "AmazonResourceName",
    #               labels: ["String"],
    #               status: "IN_USE" # One of: ["IN_USE", "PREPARING", "AVAILABLE", "NOT_AVAILABLE"],
    #               udid: "String",
    #               instance_profile: {
    #                 arn: "AmazonResourceName",
    #                 package_cleanup: false,
    #                 exclude_app_packages_from_cleanup: ["String"],
    #                 reboot_after_use: false,
    #                 name: "Name",
    #                 description: "Message"
    #               }
    #             }
    #           ],
    #           availability: "TEMPORARY_NOT_AVAILABLE" # One of: ["TEMPORARY_NOT_AVAILABLE", "BUSY", "AVAILABLE", "HIGHLY_AVAILABLE"]
    #         },
    #         instance_arn: "AmazonResourceName",
    #         remote_debug_enabled: false,
    #         remote_record_enabled: false,
    #         remote_record_app_arn: "AmazonResourceName",
    #         host_address: "HostAddress",
    #         client_id: "ClientId",
    #         billing_method: "METERED" # One of: ["METERED", "UNMETERED"],
    #         device_minutes: {
    #           total: 1.0,
    #           metered: 1.0,
    #           unmetered: 1.0
    #         },
    #         endpoint: "String",
    #         device_udid: "String",
    #         interaction_mode: "INTERACTIVE" # One of: ["INTERACTIVE", "NO_VIDEO", "VIDEO_ONLY"],
    #         skip_app_resign: false,
    #         vpc_config: {
    #           security_group_ids: ["SecurityGroupId"], # required
    #           subnet_ids: ["SubnetId"], # required
    #           vpc_id: "NonEmptyString", # required
    #         },
    #         device_proxy: {
    #           host: "DeviceProxyHost", # required
    #           port: 1, # required
    #         }
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListRemoteAccessSessionsResult]
    def list_remote_access_sessions(params = {}, options = {})
      request = build_request(:list_remote_access_sessions, params)
      request.send_request(options)
    end

    # <p>Gets information about runs, given an AWS Device Farm project ARN.</p>
    # @param [Hash, Types::ListRunsRequest] params
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the project for which you want to list
    #               runs.</p>
    # @option params [String] :next_token
    #   <p>An identifier that was returned from the previous call to this operation, which can
    #               be used to return the next set of items in the list.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "AmazonResourceName", # required
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.list_runs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     runs: [
    #       {
    #         arn: "AmazonResourceName",
    #         name: "Name",
    #         type: "BUILTIN_FUZZ" # One of: ["BUILTIN_FUZZ", "APPIUM_JAVA_JUNIT", "APPIUM_JAVA_TESTNG", "APPIUM_PYTHON", "APPIUM_NODE", "APPIUM_RUBY", "APPIUM_WEB_JAVA_JUNIT", "APPIUM_WEB_JAVA_TESTNG", "APPIUM_WEB_PYTHON", "APPIUM_WEB_NODE", "APPIUM_WEB_RUBY", "INSTRUMENTATION", "XCTEST", "XCTEST_UI"],
    #         platform: "ANDROID" # One of: ["ANDROID", "IOS"],
    #         created: Time.now,
    #         status: "PENDING" # One of: ["PENDING", "PENDING_CONCURRENCY", "PENDING_DEVICE", "PROCESSING", "SCHEDULING", "PREPARING", "RUNNING", "COMPLETED", "STOPPING"],
    #         result: "PENDING" # One of: ["PENDING", "PASSED", "WARNED", "FAILED", "SKIPPED", "ERRORED", "STOPPED"],
    #         started: Time.now,
    #         stopped: Time.now,
    #         counters: {
    #           total: 1,
    #           passed: 1,
    #           failed: 1,
    #           warned: 1,
    #           errored: 1,
    #           stopped: 1,
    #           skipped: 1
    #         },
    #         message: "Message",
    #         total_jobs: 1,
    #         completed_jobs: 1,
    #         billing_method: "METERED" # One of: ["METERED", "UNMETERED"],
    #         device_minutes: {
    #           total: 1.0,
    #           metered: 1.0,
    #           unmetered: 1.0
    #         },
    #         network_profile: {
    #           arn: "AmazonResourceName",
    #           name: "Name",
    #           description: "Message",
    #           type: "CURATED" # One of: ["CURATED", "PRIVATE"],
    #           uplink_bandwidth_bits: 1,
    #           downlink_bandwidth_bits: 1,
    #           uplink_delay_ms: 1,
    #           downlink_delay_ms: 1,
    #           uplink_jitter_ms: 1,
    #           downlink_jitter_ms: 1,
    #           uplink_loss_percent: 1,
    #           downlink_loss_percent: 1
    #         },
    #         device_proxy: {
    #           host: "DeviceProxyHost", # required
    #           port: 1, # required
    #         },
    #         parsing_result_url: "String",
    #         result_code: "PARSING_FAILED" # One of: ["PARSING_FAILED", "VPC_ENDPOINT_SETUP_FAILED"],
    #         seed: 1,
    #         app_upload: "AmazonResourceName",
    #         event_count: 1,
    #         job_timeout_minutes: 1,
    #         device_pool_arn: "AmazonResourceName",
    #         locale: "String",
    #         radios: {
    #           wifi: false,
    #           bluetooth: false,
    #           nfc: false,
    #           gps: false
    #         },
    #         location: {
    #           latitude: 1.0, # required
    #           longitude: 1.0, # required
    #         },
    #         customer_artifact_paths: {
    #           ios_paths: ["String"],
    #           android_paths: ["String"],
    #           device_host_paths: ["String"]
    #         },
    #         web_url: "String",
    #         skip_app_resign: false,
    #         test_spec_arn: "AmazonResourceName",
    #         device_selection_result: {
    #           filters: [
    #             {
    #               attribute: "ARN" # One of: ["ARN", "PLATFORM", "OS_VERSION", "MODEL", "AVAILABILITY", "FORM_FACTOR", "MANUFACTURER", "REMOTE_ACCESS_ENABLED", "REMOTE_DEBUG_ENABLED", "INSTANCE_ARN", "INSTANCE_LABELS", "FLEET_TYPE"], # required
    #               operator: "EQUALS" # One of: ["EQUALS", "LESS_THAN", "LESS_THAN_OR_EQUALS", "GREATER_THAN", "GREATER_THAN_OR_EQUALS", "IN", "NOT_IN", "CONTAINS"], # required
    #               values: ["String"], # required
    #             }
    #           ],
    #           matched_devices_count: 1,
    #           max_devices: 1
    #         },
    #         vpc_config: {
    #           security_group_ids: ["SecurityGroupId"], # required
    #           subnet_ids: ["SubnetId"], # required
    #           vpc_id: "NonEmptyString", # required
    #         }
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListRunsResult]
    def list_runs(params = {}, options = {})
      request = build_request(:list_runs, params)
      request.send_request(options)
    end

    # <p>Gets information about samples, given an AWS Device Farm job ARN.</p>
    # @param [Hash, Types::ListSamplesRequest] params
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the job used to list samples.</p>
    # @option params [String] :next_token
    #   <p>An identifier that was returned from the previous call to this operation, which can
    #               be used to return the next set of items in the list.</p>
    # @example To get information about samples
    #   # The following example returns information about samples, given a specific Device Farm project.
    #   params = {
    #     arn: "arn:aws:devicefarm:us-west-2:123456789101:project:EXAMPLE-GUID-123-456",
    #     next_token: "RW5DdDJkMWYwZjM2MzM2VHVpOHJIUXlDUXlhc2QzRGViYnc9SEXAMPLE"
    #   }
    #   options = {}
    #   response = client.list_samples(params, options)
    #   response.to_h #=>
    #   {
    #     samples: [
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "AmazonResourceName", # required
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.list_samples(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     samples: [
    #       {
    #         arn: "AmazonResourceName",
    #         type: "CPU" # One of: ["CPU", "MEMORY", "THREADS", "RX_RATE", "TX_RATE", "RX", "TX", "NATIVE_FRAMES", "NATIVE_FPS", "NATIVE_MIN_DRAWTIME", "NATIVE_AVG_DRAWTIME", "NATIVE_MAX_DRAWTIME", "OPENGL_FRAMES", "OPENGL_FPS", "OPENGL_MIN_DRAWTIME", "OPENGL_AVG_DRAWTIME", "OPENGL_MAX_DRAWTIME"],
    #         url: "URL"
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListSamplesResult]
    def list_samples(params = {}, options = {})
      request = build_request(:list_samples, params)
      request.send_request(options)
    end

    # <p>Gets information about test suites for a given job.</p>
    # @param [Hash, Types::ListSuitesRequest] params
    # @option params [String] :arn
    #   <p>The job's Amazon Resource Name (ARN).</p>
    # @option params [String] :next_token
    #   <p>An identifier that was returned from the previous call to this operation, which can
    #               be used to return the next set of items in the list.</p>
    # @example To get information about suites
    #   # The following example returns information about suites, given a specific Device Farm job.
    #   params = {
    #     arn: "arn:aws:devicefarm:us-west-2:123456789101:job:EXAMPLE-GUID-123-456",
    #     next_token: "RW5DdDJkMWYwZjM2MzM2VHVpOHJIUXlDUXlhc2QzRGViYnc9SEXAMPLE"
    #   }
    #   options = {}
    #   response = client.list_suites(params, options)
    #   response.to_h #=>
    #   {
    #     suites: [
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "AmazonResourceName", # required
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.list_suites(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     suites: [
    #       {
    #         arn: "AmazonResourceName",
    #         name: "Name",
    #         type: "BUILTIN_FUZZ" # One of: ["BUILTIN_FUZZ", "APPIUM_JAVA_JUNIT", "APPIUM_JAVA_TESTNG", "APPIUM_PYTHON", "APPIUM_NODE", "APPIUM_RUBY", "APPIUM_WEB_JAVA_JUNIT", "APPIUM_WEB_JAVA_TESTNG", "APPIUM_WEB_PYTHON", "APPIUM_WEB_NODE", "APPIUM_WEB_RUBY", "INSTRUMENTATION", "XCTEST", "XCTEST_UI"],
    #         created: Time.now,
    #         status: "PENDING" # One of: ["PENDING", "PENDING_CONCURRENCY", "PENDING_DEVICE", "PROCESSING", "SCHEDULING", "PREPARING", "RUNNING", "COMPLETED", "STOPPING"],
    #         result: "PENDING" # One of: ["PENDING", "PASSED", "WARNED", "FAILED", "SKIPPED", "ERRORED", "STOPPED"],
    #         started: Time.now,
    #         stopped: Time.now,
    #         counters: {
    #           total: 1,
    #           passed: 1,
    #           failed: 1,
    #           warned: 1,
    #           errored: 1,
    #           stopped: 1,
    #           skipped: 1
    #         },
    #         message: "Message",
    #         device_minutes: {
    #           total: 1.0,
    #           metered: 1.0,
    #           unmetered: 1.0
    #         }
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListSuitesResult]
    def list_suites(params = {}, options = {})
      request = build_request(:list_suites, params)
      request.send_request(options)
    end

    # <p>List the tags for an AWS Device Farm resource.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource or resources for which to list tags. You can associate tags
    #               with the following Device Farm resources: <code>PROJECT</code>, <code>RUN</code>,
    #                   <code>NETWORK_PROFILE</code>, <code>INSTANCE_PROFILE</code>, <code>DEVICE_INSTANCE</code>,
    #                   <code>SESSION</code>, <code>DEVICE_POOL</code>, <code>DEVICE</code>, and
    #               <code>VPCE_CONFIGURATION</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "DeviceFarmArn", # required
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    # @return [Types::ListTagsForResourceResponse]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Gets a list of all Selenium testing projects in your account.</p>
    # @param [Hash, Types::ListTestGridProjectsRequest] params
    # @option params [Integer] :max_result
    #   <p>Return no more than this number of results.</p>
    # @option params [String] :next_token
    #   <p>From a response, used to continue a paginated listing. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_result: 1,
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.list_test_grid_projects(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     test_grid_projects: [
    #       {
    #         arn: "DeviceFarmArn",
    #         name: "String",
    #         description: "String",
    #         vpc_config: {
    #           security_group_ids: ["NonEmptyString"], # required
    #           subnet_ids: ["NonEmptyString"], # required
    #           vpc_id: "NonEmptyString", # required
    #         },
    #         created: Time.now
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListTestGridProjectsResult]
    def list_test_grid_projects(params = {}, options = {})
      request = build_request(:list_test_grid_projects, params)
      request.send_request(options)
    end

    # <p>Returns a list of the actions taken in a <a>TestGridSession</a>.</p>
    # @param [Hash, Types::ListTestGridSessionActionsRequest] params
    # @option params [String] :session_arn
    #   <p>The ARN of the session to retrieve.</p>
    # @option params [Integer] :max_result
    #   <p>The maximum number of sessions to return per response.</p>
    # @option params [String] :next_token
    #   <p>Pagination token.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     session_arn: "DeviceFarmArn", # required
    #     max_result: 1,
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.list_test_grid_session_actions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     actions: [
    #       {
    #         action: "String",
    #         started: Time.now,
    #         duration: 1,
    #         status_code: "String",
    #         request_method: "String"
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListTestGridSessionActionsResult]
    def list_test_grid_session_actions(params = {}, options = {})
      request = build_request(:list_test_grid_session_actions, params)
      request.send_request(options)
    end

    # <p>Retrieves a list of artifacts created during the session.</p>
    # @param [Hash, Types::ListTestGridSessionArtifactsRequest] params
    # @option params [String] :session_arn
    #   <p>The ARN of a <a>TestGridSession</a>. </p>
    # @option params [String] :type
    #   <p>Limit results to a specified type of artifact.</p>
    # @option params [Integer] :max_result
    #   <p>The maximum number of results to be returned by a request.</p>
    # @option params [String] :next_token
    #   <p>Pagination token.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     session_arn: "DeviceFarmArn", # required
    #     type: "VIDEO" # One of: ["VIDEO", "LOG"],
    #     max_result: 1,
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.list_test_grid_session_artifacts(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     artifacts: [
    #       {
    #         filename: "String",
    #         type: "UNKNOWN" # One of: ["UNKNOWN", "VIDEO", "SELENIUM_LOG"],
    #         url: "SensitiveString"
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListTestGridSessionArtifactsResult]
    def list_test_grid_session_artifacts(params = {}, options = {})
      request = build_request(:list_test_grid_session_artifacts, params)
      request.send_request(options)
    end

    # <p>Retrieves a list of sessions for a <a>TestGridProject</a>.</p>
    # @param [Hash, Types::ListTestGridSessionsRequest] params
    # @option params [String] :project_arn
    #   <p>ARN of a <a>TestGridProject</a>.</p>
    # @option params [String] :status
    #   <p>Return only sessions in this state.</p>
    # @option params [Time] :creation_time_after
    #   <p>Return only sessions created after this time.</p>
    # @option params [Time] :creation_time_before
    #   <p>Return only  sessions created before this time.</p>
    # @option params [Time] :end_time_after
    #   <p>Return only sessions that ended after this time.</p>
    # @option params [Time] :end_time_before
    #   <p>Return only sessions that ended before this time.</p>
    # @option params [Integer] :max_result
    #   <p>Return only this many results at a time.</p>
    # @option params [String] :next_token
    #   <p>Pagination token.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     project_arn: "DeviceFarmArn", # required
    #     status: "ACTIVE" # One of: ["ACTIVE", "CLOSED", "ERRORED"],
    #     creation_time_after: Time.now,
    #     creation_time_before: Time.now,
    #     end_time_after: Time.now,
    #     end_time_before: Time.now,
    #     max_result: 1,
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.list_test_grid_sessions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     test_grid_sessions: [
    #       {
    #         arn: "DeviceFarmArn",
    #         status: "ACTIVE" # One of: ["ACTIVE", "CLOSED", "ERRORED"],
    #         created: Time.now,
    #         ended: Time.now,
    #         billing_minutes: 1.0,
    #         selenium_properties: "String"
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListTestGridSessionsResult]
    def list_test_grid_sessions(params = {}, options = {})
      request = build_request(:list_test_grid_sessions, params)
      request.send_request(options)
    end

    # <p>Gets information about tests in a given test suite.</p>
    # @param [Hash, Types::ListTestsRequest] params
    # @option params [String] :arn
    #   <p>The test suite's Amazon Resource Name (ARN).</p>
    # @option params [String] :next_token
    #   <p>An identifier that was returned from the previous call to this operation, which can
    #               be used to return the next set of items in the list.</p>
    # @example To get information about tests
    #   # The following example returns information about tests, given a specific Device Farm project.
    #   params = {
    #     arn: "arn:aws:devicefarm:us-west-2:123456789101:project:EXAMPLE-GUID-123-456",
    #     next_token: "RW5DdDJkMWYwZjM2MzM2VHVpOHJIUXlDUXlhc2QzRGViYnc9SEXAMPLE"
    #   }
    #   options = {}
    #   response = client.list_tests(params, options)
    #   response.to_h #=>
    #   {
    #     tests: [
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "AmazonResourceName", # required
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.list_tests(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tests: [
    #       {
    #         arn: "AmazonResourceName",
    #         name: "Name",
    #         type: "BUILTIN_FUZZ" # One of: ["BUILTIN_FUZZ", "APPIUM_JAVA_JUNIT", "APPIUM_JAVA_TESTNG", "APPIUM_PYTHON", "APPIUM_NODE", "APPIUM_RUBY", "APPIUM_WEB_JAVA_JUNIT", "APPIUM_WEB_JAVA_TESTNG", "APPIUM_WEB_PYTHON", "APPIUM_WEB_NODE", "APPIUM_WEB_RUBY", "INSTRUMENTATION", "XCTEST", "XCTEST_UI"],
    #         created: Time.now,
    #         status: "PENDING" # One of: ["PENDING", "PENDING_CONCURRENCY", "PENDING_DEVICE", "PROCESSING", "SCHEDULING", "PREPARING", "RUNNING", "COMPLETED", "STOPPING"],
    #         result: "PENDING" # One of: ["PENDING", "PASSED", "WARNED", "FAILED", "SKIPPED", "ERRORED", "STOPPED"],
    #         started: Time.now,
    #         stopped: Time.now,
    #         counters: {
    #           total: 1,
    #           passed: 1,
    #           failed: 1,
    #           warned: 1,
    #           errored: 1,
    #           stopped: 1,
    #           skipped: 1
    #         },
    #         message: "Message",
    #         device_minutes: {
    #           total: 1.0,
    #           metered: 1.0,
    #           unmetered: 1.0
    #         }
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListTestsResult]
    def list_tests(params = {}, options = {})
      request = build_request(:list_tests, params)
      request.send_request(options)
    end

    # <p>Gets information about unique problems, such as exceptions or crashes.</p>
    #         <p>Unique problems are defined as a single instance of an error across a run, job, or suite. For example,
    #             if a call in your application consistently raises an exception (<code>OutOfBoundsException in
    #                 MyActivity.java:386</code>), <code>ListUniqueProblems</code> returns a single entry instead of many
    #             individual entries for that exception.</p>
    # @param [Hash, Types::ListUniqueProblemsRequest] params
    # @option params [String] :arn
    #   <p>The unique problems' ARNs.</p>
    # @option params [String] :next_token
    #   <p>An identifier that was returned from the previous call to this operation, which can
    #               be used to return the next set of items in the list.</p>
    # @example To get information about unique problems
    #   # The following example returns information about unique problems, given a specific Device Farm project.
    #   params = {
    #     arn: "arn:aws:devicefarm:us-west-2:123456789101:project:EXAMPLE-GUID-123-456",
    #     next_token: "RW5DdDJkMWYwZjM2MzM2VHVpOHJIUXlDUXlhc2QzRGViYnc9SEXAMPLE"
    #   }
    #   options = {}
    #   response = client.list_unique_problems(params, options)
    #   response.to_h #=>
    #   {
    #     unique_problems: {
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "AmazonResourceName", # required
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.list_unique_problems(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     unique_problems: {
    #       "ExecutionResult" => [
    #         {
    #           message: "Message",
    #           problems: [
    #             {
    #               run: {
    #                 arn: "AmazonResourceName",
    #                 name: "Name"
    #               },
    #               job: {
    #                 arn: "AmazonResourceName",
    #                 name: "Name"
    #               },
    #               suite: {
    #                 arn: "AmazonResourceName",
    #                 name: "Name"
    #               },
    #               test: {
    #                 arn: "AmazonResourceName",
    #                 name: "Name"
    #               },
    #               device: {
    #                 arn: "AmazonResourceName",
    #                 name: "Name",
    #                 manufacturer: "String",
    #                 model: "String",
    #                 model_id: "String",
    #                 form_factor: "PHONE" # One of: ["PHONE", "TABLET"],
    #                 platform: "ANDROID" # One of: ["ANDROID", "IOS"],
    #                 os: "String",
    #                 cpu: {
    #                   frequency: "String",
    #                   architecture: "String",
    #                   clock: 1.0
    #                 },
    #                 resolution: {
    #                   width: 1,
    #                   height: 1
    #                 },
    #                 heap_size: 1,
    #                 memory: 1,
    #                 image: "String",
    #                 carrier: "String",
    #                 radio: "String",
    #                 remote_access_enabled: false,
    #                 remote_debug_enabled: false,
    #                 fleet_type: "String",
    #                 fleet_name: "String",
    #                 instances: [
    #                   {
    #                     arn: "AmazonResourceName",
    #                     device_arn: "AmazonResourceName",
    #                     labels: ["String"],
    #                     status: "IN_USE" # One of: ["IN_USE", "PREPARING", "AVAILABLE", "NOT_AVAILABLE"],
    #                     udid: "String",
    #                     instance_profile: {
    #                       arn: "AmazonResourceName",
    #                       package_cleanup: false,
    #                       exclude_app_packages_from_cleanup: ["String"],
    #                       reboot_after_use: false,
    #                       name: "Name",
    #                       description: "Message"
    #                     }
    #                   }
    #                 ],
    #                 availability: "TEMPORARY_NOT_AVAILABLE" # One of: ["TEMPORARY_NOT_AVAILABLE", "BUSY", "AVAILABLE", "HIGHLY_AVAILABLE"]
    #               },
    #               result: "PENDING" # One of: ["PENDING", "PASSED", "WARNED", "FAILED", "SKIPPED", "ERRORED", "STOPPED"],
    #               message: "Message"
    #             }
    #           ]
    #         }
    #       ]
    #     },
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListUniqueProblemsResult]
    def list_unique_problems(params = {}, options = {})
      request = build_request(:list_unique_problems, params)
      request.send_request(options)
    end

    # <p>Gets information about uploads, given an AWS Device Farm project ARN.</p>
    # @param [Hash, Types::ListUploadsRequest] params
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the project for which you want to list
    #               uploads.</p>
    # @option params [String] :type
    #   <p>The type of upload.</p>
    #           <p>Must be one of the following values:</p>
    #           <ul>
    #               <li>
    #                   <p>ANDROID_APP</p>
    #               </li>
    #               <li>
    #                   <p>IOS_APP</p>
    #               </li>
    #               <li>
    #                   <p>WEB_APP</p>
    #               </li>
    #               <li>
    #                   <p>EXTERNAL_DATA</p>
    #               </li>
    #               <li>
    #                   <p>APPIUM_JAVA_JUNIT_TEST_PACKAGE</p>
    #               </li>
    #               <li>
    #                   <p>APPIUM_JAVA_TESTNG_TEST_PACKAGE</p>
    #               </li>
    #               <li>
    #                   <p>APPIUM_PYTHON_TEST_PACKAGE</p>
    #               </li>
    #               <li>
    #                   <p>APPIUM_NODE_TEST_PACKAGE</p>
    #               </li>
    #               <li>
    #                   <p>APPIUM_RUBY_TEST_PACKAGE</p>
    #               </li>
    #               <li>
    #                   <p>APPIUM_WEB_JAVA_JUNIT_TEST_PACKAGE</p>
    #               </li>
    #               <li>
    #                   <p>APPIUM_WEB_JAVA_TESTNG_TEST_PACKAGE</p>
    #               </li>
    #               <li>
    #                   <p>APPIUM_WEB_PYTHON_TEST_PACKAGE</p>
    #               </li>
    #               <li>
    #                   <p>APPIUM_WEB_NODE_TEST_PACKAGE</p>
    #               </li>
    #               <li>
    #                   <p>APPIUM_WEB_RUBY_TEST_PACKAGE</p>
    #               </li>
    #               <li>
    #                   <p>INSTRUMENTATION_TEST_PACKAGE</p>
    #               </li>
    #               <li>
    #                   <p>XCTEST_TEST_PACKAGE</p>
    #               </li>
    #               <li>
    #                   <p>XCTEST_UI_TEST_PACKAGE</p>
    #               </li>
    #               <li>
    #                   <p>APPIUM_JAVA_JUNIT_TEST_SPEC</p>
    #               </li>
    #               <li>
    #                   <p>APPIUM_JAVA_TESTNG_TEST_SPEC</p>
    #               </li>
    #               <li>
    #                   <p>APPIUM_PYTHON_TEST_SPEC</p>
    #               </li>
    #               <li>
    #                   <p>APPIUM_NODE_TEST_SPEC</p>
    #               </li>
    #               <li>
    #                   <p> APPIUM_RUBY_TEST_SPEC</p>
    #               </li>
    #               <li>
    #                   <p>APPIUM_WEB_JAVA_JUNIT_TEST_SPEC</p>
    #               </li>
    #               <li>
    #                   <p>APPIUM_WEB_JAVA_TESTNG_TEST_SPEC</p>
    #               </li>
    #               <li>
    #                   <p>APPIUM_WEB_PYTHON_TEST_SPEC</p>
    #               </li>
    #               <li>
    #                   <p>APPIUM_WEB_NODE_TEST_SPEC</p>
    #               </li>
    #               <li>
    #                   <p>APPIUM_WEB_RUBY_TEST_SPEC</p>
    #               </li>
    #               <li>
    #                   <p>INSTRUMENTATION_TEST_SPEC</p>
    #               </li>
    #               <li>
    #                   <p>XCTEST_UI_TEST_SPEC</p>
    #               </li>
    #            </ul>
    # @option params [String] :next_token
    #   <p>An identifier that was returned from the previous call to this operation, which can
    #               be used to return the next set of items in the list.</p>
    # @example To get information about uploads
    #   # The following example returns information about uploads, given a specific Device Farm project.
    #   params = {
    #     arn: "arn:aws:devicefarm:us-west-2:123456789101:project:EXAMPLE-GUID-123-456",
    #     next_token: "RW5DdDJkMWYwZjM2MzM2VHVpOHJIUXlDUXlhc2QzRGViYnc9SEXAMPLE"
    #   }
    #   options = {}
    #   response = client.list_uploads(params, options)
    #   response.to_h #=>
    #   {
    #     uploads: [
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "AmazonResourceName", # required
    #     type: "ANDROID_APP" # One of: ["ANDROID_APP", "IOS_APP", "WEB_APP", "EXTERNAL_DATA", "APPIUM_JAVA_JUNIT_TEST_PACKAGE", "APPIUM_JAVA_TESTNG_TEST_PACKAGE", "APPIUM_PYTHON_TEST_PACKAGE", "APPIUM_NODE_TEST_PACKAGE", "APPIUM_RUBY_TEST_PACKAGE", "APPIUM_WEB_JAVA_JUNIT_TEST_PACKAGE", "APPIUM_WEB_JAVA_TESTNG_TEST_PACKAGE", "APPIUM_WEB_PYTHON_TEST_PACKAGE", "APPIUM_WEB_NODE_TEST_PACKAGE", "APPIUM_WEB_RUBY_TEST_PACKAGE", "CALABASH_TEST_PACKAGE", "INSTRUMENTATION_TEST_PACKAGE", "UIAUTOMATION_TEST_PACKAGE", "UIAUTOMATOR_TEST_PACKAGE", "XCTEST_TEST_PACKAGE", "XCTEST_UI_TEST_PACKAGE", "APPIUM_JAVA_JUNIT_TEST_SPEC", "APPIUM_JAVA_TESTNG_TEST_SPEC", "APPIUM_PYTHON_TEST_SPEC", "APPIUM_NODE_TEST_SPEC", "APPIUM_RUBY_TEST_SPEC", "APPIUM_WEB_JAVA_JUNIT_TEST_SPEC", "APPIUM_WEB_JAVA_TESTNG_TEST_SPEC", "APPIUM_WEB_PYTHON_TEST_SPEC", "APPIUM_WEB_NODE_TEST_SPEC", "APPIUM_WEB_RUBY_TEST_SPEC", "INSTRUMENTATION_TEST_SPEC", "XCTEST_UI_TEST_SPEC"],
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.list_uploads(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     uploads: [
    #       {
    #         arn: "AmazonResourceName",
    #         name: "Name",
    #         created: Time.now,
    #         type: "ANDROID_APP" # One of: ["ANDROID_APP", "IOS_APP", "WEB_APP", "EXTERNAL_DATA", "APPIUM_JAVA_JUNIT_TEST_PACKAGE", "APPIUM_JAVA_TESTNG_TEST_PACKAGE", "APPIUM_PYTHON_TEST_PACKAGE", "APPIUM_NODE_TEST_PACKAGE", "APPIUM_RUBY_TEST_PACKAGE", "APPIUM_WEB_JAVA_JUNIT_TEST_PACKAGE", "APPIUM_WEB_JAVA_TESTNG_TEST_PACKAGE", "APPIUM_WEB_PYTHON_TEST_PACKAGE", "APPIUM_WEB_NODE_TEST_PACKAGE", "APPIUM_WEB_RUBY_TEST_PACKAGE", "CALABASH_TEST_PACKAGE", "INSTRUMENTATION_TEST_PACKAGE", "UIAUTOMATION_TEST_PACKAGE", "UIAUTOMATOR_TEST_PACKAGE", "XCTEST_TEST_PACKAGE", "XCTEST_UI_TEST_PACKAGE", "APPIUM_JAVA_JUNIT_TEST_SPEC", "APPIUM_JAVA_TESTNG_TEST_SPEC", "APPIUM_PYTHON_TEST_SPEC", "APPIUM_NODE_TEST_SPEC", "APPIUM_RUBY_TEST_SPEC", "APPIUM_WEB_JAVA_JUNIT_TEST_SPEC", "APPIUM_WEB_JAVA_TESTNG_TEST_SPEC", "APPIUM_WEB_PYTHON_TEST_SPEC", "APPIUM_WEB_NODE_TEST_SPEC", "APPIUM_WEB_RUBY_TEST_SPEC", "INSTRUMENTATION_TEST_SPEC", "XCTEST_UI_TEST_SPEC"],
    #         status: "INITIALIZED" # One of: ["INITIALIZED", "PROCESSING", "SUCCEEDED", "FAILED"],
    #         url: "SensitiveURL",
    #         metadata: "Metadata",
    #         content_type: "ContentType",
    #         message: "Message",
    #         category: "CURATED" # One of: ["CURATED", "PRIVATE"]
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListUploadsResult]
    def list_uploads(params = {}, options = {})
      request = build_request(:list_uploads, params)
      request.send_request(options)
    end

    # <p>Returns information about all Amazon Virtual Private Cloud (VPC) endpoint
    #             configurations in the AWS account.</p>
    # @param [Hash, Types::ListVPCEConfigurationsRequest] params
    # @option params [Integer] :max_results
    #   <p>An integer that specifies the maximum number of items you want to return in the API response.</p>
    # @option params [String] :next_token
    #   <p>An identifier that was returned from the previous call to this operation, which can be
    #               used to return the next set of items in the list.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.list_vpce_configurations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     vpce_configurations: [
    #       {
    #         arn: "AmazonResourceName",
    #         vpce_configuration_name: "VPCEConfigurationName",
    #         vpce_service_name: "VPCEServiceName",
    #         service_dns_name: "ServiceDnsName",
    #         vpce_configuration_description: "VPCEConfigurationDescription"
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListVPCEConfigurationsResult]
    def list_vpce_configurations(params = {}, options = {})
      request = build_request(:list_vpce_configurations, params)
      request.send_request(options)
    end

    # <p>Immediately purchases offerings for an AWS account. Offerings renew with the latest total purchased
    #             quantity for an offering, unless the renewal was overridden. The API returns a <code>NotEligible</code>
    #             error if the user is not permitted to invoke the operation. If you must be able to invoke this operation,
    #             contact <a href="mailto:aws-devicefarm-support@amazon.com">aws-devicefarm-support@amazon.com</a>.</p>
    # @param [Hash, Types::PurchaseOfferingRequest] params
    # @option params [String] :offering_id
    #   <p>The ID of the offering.</p>
    # @option params [Integer] :quantity
    #   <p>The number of device slots to purchase in an offering request.</p>
    # @option params [String] :offering_promotion_id
    #   <p>The ID of the offering promotion to be applied to the purchase.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     offering_id: "OfferingIdentifier", # required
    #     quantity: 1, # required
    #     offering_promotion_id: "OfferingPromotionIdentifier"
    #   }
    #   options = {}
    #   response = client.purchase_offering(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     offering_transaction: {
    #       offering_status: {
    #         type: "PURCHASE" # One of: ["PURCHASE", "RENEW", "SYSTEM"],
    #         offering: {
    #           id: "OfferingIdentifier",
    #           description: "Message",
    #           type: "RECURRING" # One of: ["RECURRING"],
    #           platform: "ANDROID" # One of: ["ANDROID", "IOS"],
    #           recurring_charges: [
    #             {
    #               cost: {
    #                 amount: 1.0,
    #                 currency_code: "USD" # One of: ["USD"]
    #               },
    #               frequency: "MONTHLY" # One of: ["MONTHLY"]
    #             }
    #           ]
    #         },
    #         quantity: 1,
    #         effective_on: Time.now
    #       },
    #       transaction_id: "TransactionIdentifier",
    #       offering_promotion_id: "OfferingPromotionIdentifier",
    #       created_on: Time.now,
    #       cost: {
    #         amount: 1.0,
    #         currency_code: "USD" # One of: ["USD"]
    #       }
    #     }
    #   }
    # @return [Types::PurchaseOfferingResult]
    def purchase_offering(params = {}, options = {})
      request = build_request(:purchase_offering, params)
      request.send_request(options)
    end

    # <p>Explicitly sets the quantity of devices to renew for an offering, starting from the
    #                 <code>effectiveDate</code> of the next period. The API returns a <code>NotEligible</code> error if the
    #             user is not permitted to invoke the operation. If you must be able to invoke this operation, contact <a href="mailto:aws-devicefarm-support@amazon.com">aws-devicefarm-support@amazon.com</a>.</p>
    # @param [Hash, Types::RenewOfferingRequest] params
    # @option params [String] :offering_id
    #   <p>The ID of a request to renew an offering.</p>
    # @option params [Integer] :quantity
    #   <p>The quantity requested in an offering renewal.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     offering_id: "OfferingIdentifier", # required
    #     quantity: 1, # required
    #   }
    #   options = {}
    #   response = client.renew_offering(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     offering_transaction: {
    #       offering_status: {
    #         type: "PURCHASE" # One of: ["PURCHASE", "RENEW", "SYSTEM"],
    #         offering: {
    #           id: "OfferingIdentifier",
    #           description: "Message",
    #           type: "RECURRING" # One of: ["RECURRING"],
    #           platform: "ANDROID" # One of: ["ANDROID", "IOS"],
    #           recurring_charges: [
    #             {
    #               cost: {
    #                 amount: 1.0,
    #                 currency_code: "USD" # One of: ["USD"]
    #               },
    #               frequency: "MONTHLY" # One of: ["MONTHLY"]
    #             }
    #           ]
    #         },
    #         quantity: 1,
    #         effective_on: Time.now
    #       },
    #       transaction_id: "TransactionIdentifier",
    #       offering_promotion_id: "OfferingPromotionIdentifier",
    #       created_on: Time.now,
    #       cost: {
    #         amount: 1.0,
    #         currency_code: "USD" # One of: ["USD"]
    #       }
    #     }
    #   }
    # @return [Types::RenewOfferingResult]
    def renew_offering(params = {}, options = {})
      request = build_request(:renew_offering, params)
      request.send_request(options)
    end

    # <p>Schedules a run.</p>
    # @param [Hash, Types::ScheduleRunRequest] params
    # @option params [String] :project_arn
    #   <p>The ARN of the project for the run to be scheduled.</p>
    # @option params [String] :app_arn
    #   <p>The ARN of an application package to run tests against, created with <a>CreateUpload</a>.
    #               See <a>ListUploads</a>.</p>
    # @option params [String] :device_pool_arn
    #   <p>The ARN of the device pool for the run to be scheduled.</p>
    # @option params [Types::DeviceSelectionConfiguration] :device_selection_configuration
    #   <p>The filter criteria used to dynamically select a set of devices for a test run and the maximum number of
    #               devices to be included in the run.</p>
    #           <p>Either <b>
    #                  <code>devicePoolArn</code>
    #               </b> or <b>
    #                  <code>deviceSelectionConfiguration</code>
    #               </b> is required in a
    #               request.</p>
    # @option params [String] :name
    #   <p>The name for the run to be scheduled.</p>
    # @option params [Types::ScheduleRunTest] :test
    #   <p>Information about the test for the run to be scheduled.</p>
    # @option params [Types::ScheduleRunConfiguration] :configuration
    #   <p>Information about the settings for the run to be scheduled.</p>
    # @option params [Types::ExecutionConfiguration] :execution_configuration
    #   <p>Specifies configuration information about a test run, such as the execution timeout
    #               (in minutes).</p>
    # @example To schedule a test run
    #   # The following example schedules a test run named MyRun.
    #   params = {
    #     project_arn: "arn:aws:devicefarm:us-west-2:123456789101:project:EXAMPLE-GUID-123-456",
    #     device_pool_arn: "arn:aws:devicefarm:us-west-2:123456789101:pool:EXAMPLE-GUID-123-456",
    #     name: "MyRun",
    #     test: {
    #       type: APPIUM_JAVA_JUNIT,
    #       test_package_arn: "arn:aws:devicefarm:us-west-2:123456789101:test:EXAMPLE-GUID-123-456"
    #     }
    #   }
    #   options = {}
    #   response = client.schedule_run(params, options)
    #   response.to_h #=>
    #   {
    #     run: {
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     project_arn: "AmazonResourceName", # required
    #     app_arn: "AmazonResourceName",
    #     device_pool_arn: "AmazonResourceName",
    #     device_selection_configuration: {
    #       filters: [ # required
    #         {
    #           attribute: "ARN" # One of: ["ARN", "PLATFORM", "OS_VERSION", "MODEL", "AVAILABILITY", "FORM_FACTOR", "MANUFACTURER", "REMOTE_ACCESS_ENABLED", "REMOTE_DEBUG_ENABLED", "INSTANCE_ARN", "INSTANCE_LABELS", "FLEET_TYPE"], # required
    #           operator: "EQUALS" # One of: ["EQUALS", "LESS_THAN", "LESS_THAN_OR_EQUALS", "GREATER_THAN", "GREATER_THAN_OR_EQUALS", "IN", "NOT_IN", "CONTAINS"], # required
    #           values: ["String"], # required
    #         }
    #       ],
    #       max_devices: 1, # required
    #     },
    #     name: "Name",
    #     test: { # required
    #       type: "BUILTIN_FUZZ" # One of: ["BUILTIN_FUZZ", "APPIUM_JAVA_JUNIT", "APPIUM_JAVA_TESTNG", "APPIUM_PYTHON", "APPIUM_NODE", "APPIUM_RUBY", "APPIUM_WEB_JAVA_JUNIT", "APPIUM_WEB_JAVA_TESTNG", "APPIUM_WEB_PYTHON", "APPIUM_WEB_NODE", "APPIUM_WEB_RUBY", "INSTRUMENTATION", "XCTEST", "XCTEST_UI"], # required
    #       test_package_arn: "AmazonResourceName",
    #       test_spec_arn: "AmazonResourceName",
    #       filter: "Filter",
    #       parameters: {
    #         "String" => "String"
    #       }
    #     },
    #     configuration: {
    #       extra_data_package_arn: "AmazonResourceName",
    #       network_profile_arn: "AmazonResourceName",
    #       locale: "String",
    #       location: {
    #         latitude: 1.0, # required
    #         longitude: 1.0, # required
    #       },
    #       vpce_configuration_arns: ["AmazonResourceName"],
    #       device_proxy: {
    #         host: "DeviceProxyHost", # required
    #         port: 1, # required
    #       },
    #       customer_artifact_paths: {
    #         ios_paths: ["String"],
    #         android_paths: ["String"],
    #         device_host_paths: ["String"]
    #       },
    #       radios: {
    #         wifi: false,
    #         bluetooth: false,
    #         nfc: false,
    #         gps: false
    #       },
    #       auxiliary_apps: ["AmazonResourceName"],
    #       billing_method: "METERED" # One of: ["METERED", "UNMETERED"]
    #     },
    #     execution_configuration: {
    #       job_timeout_minutes: 1,
    #       accounts_cleanup: false,
    #       app_packages_cleanup: false,
    #       video_capture: false,
    #       skip_app_resign: false
    #     }
    #   }
    #   options = {}
    #   response = client.schedule_run(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     run: {
    #       arn: "AmazonResourceName",
    #       name: "Name",
    #       type: "BUILTIN_FUZZ" # One of: ["BUILTIN_FUZZ", "APPIUM_JAVA_JUNIT", "APPIUM_JAVA_TESTNG", "APPIUM_PYTHON", "APPIUM_NODE", "APPIUM_RUBY", "APPIUM_WEB_JAVA_JUNIT", "APPIUM_WEB_JAVA_TESTNG", "APPIUM_WEB_PYTHON", "APPIUM_WEB_NODE", "APPIUM_WEB_RUBY", "INSTRUMENTATION", "XCTEST", "XCTEST_UI"],
    #       platform: "ANDROID" # One of: ["ANDROID", "IOS"],
    #       created: Time.now,
    #       status: "PENDING" # One of: ["PENDING", "PENDING_CONCURRENCY", "PENDING_DEVICE", "PROCESSING", "SCHEDULING", "PREPARING", "RUNNING", "COMPLETED", "STOPPING"],
    #       result: "PENDING" # One of: ["PENDING", "PASSED", "WARNED", "FAILED", "SKIPPED", "ERRORED", "STOPPED"],
    #       started: Time.now,
    #       stopped: Time.now,
    #       counters: {
    #         total: 1,
    #         passed: 1,
    #         failed: 1,
    #         warned: 1,
    #         errored: 1,
    #         stopped: 1,
    #         skipped: 1
    #       },
    #       message: "Message",
    #       total_jobs: 1,
    #       completed_jobs: 1,
    #       billing_method: "METERED" # One of: ["METERED", "UNMETERED"],
    #       device_minutes: {
    #         total: 1.0,
    #         metered: 1.0,
    #         unmetered: 1.0
    #       },
    #       network_profile: {
    #         arn: "AmazonResourceName",
    #         name: "Name",
    #         description: "Message",
    #         type: "CURATED" # One of: ["CURATED", "PRIVATE"],
    #         uplink_bandwidth_bits: 1,
    #         downlink_bandwidth_bits: 1,
    #         uplink_delay_ms: 1,
    #         downlink_delay_ms: 1,
    #         uplink_jitter_ms: 1,
    #         downlink_jitter_ms: 1,
    #         uplink_loss_percent: 1,
    #         downlink_loss_percent: 1
    #       },
    #       device_proxy: {
    #         host: "DeviceProxyHost", # required
    #         port: 1, # required
    #       },
    #       parsing_result_url: "String",
    #       result_code: "PARSING_FAILED" # One of: ["PARSING_FAILED", "VPC_ENDPOINT_SETUP_FAILED"],
    #       seed: 1,
    #       app_upload: "AmazonResourceName",
    #       event_count: 1,
    #       job_timeout_minutes: 1,
    #       device_pool_arn: "AmazonResourceName",
    #       locale: "String",
    #       radios: {
    #         wifi: false,
    #         bluetooth: false,
    #         nfc: false,
    #         gps: false
    #       },
    #       location: {
    #         latitude: 1.0, # required
    #         longitude: 1.0, # required
    #       },
    #       customer_artifact_paths: {
    #         ios_paths: ["String"],
    #         android_paths: ["String"],
    #         device_host_paths: ["String"]
    #       },
    #       web_url: "String",
    #       skip_app_resign: false,
    #       test_spec_arn: "AmazonResourceName",
    #       device_selection_result: {
    #         filters: [
    #           {
    #             attribute: "ARN" # One of: ["ARN", "PLATFORM", "OS_VERSION", "MODEL", "AVAILABILITY", "FORM_FACTOR", "MANUFACTURER", "REMOTE_ACCESS_ENABLED", "REMOTE_DEBUG_ENABLED", "INSTANCE_ARN", "INSTANCE_LABELS", "FLEET_TYPE"], # required
    #             operator: "EQUALS" # One of: ["EQUALS", "LESS_THAN", "LESS_THAN_OR_EQUALS", "GREATER_THAN", "GREATER_THAN_OR_EQUALS", "IN", "NOT_IN", "CONTAINS"], # required
    #             values: ["String"], # required
    #           }
    #         ],
    #         matched_devices_count: 1,
    #         max_devices: 1
    #       },
    #       vpc_config: {
    #         security_group_ids: ["SecurityGroupId"], # required
    #         subnet_ids: ["SubnetId"], # required
    #         vpc_id: "NonEmptyString", # required
    #       }
    #     }
    #   }
    # @return [Types::ScheduleRunResult]
    def schedule_run(params = {}, options = {})
      request = build_request(:schedule_run, params)
      request.send_request(options)
    end

    # <p>Initiates a stop request for the current job. AWS Device Farm immediately stops the job on the device
    #             where tests have not started. You are not billed for this device. On the device where tests have started,
    #             setup suite and teardown suite tests run to completion on the device. You are billed for setup, teardown,
    #             and any tests that were in progress or already completed.</p>
    # @param [Hash, Types::StopJobRequest] params
    # @option params [String] :arn
    #   <p>Represents the Amazon Resource Name (ARN) of the Device Farm job to stop.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "AmazonResourceName", # required
    #   }
    #   options = {}
    #   response = client.stop_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job: {
    #       arn: "AmazonResourceName",
    #       name: "Name",
    #       type: "BUILTIN_FUZZ" # One of: ["BUILTIN_FUZZ", "APPIUM_JAVA_JUNIT", "APPIUM_JAVA_TESTNG", "APPIUM_PYTHON", "APPIUM_NODE", "APPIUM_RUBY", "APPIUM_WEB_JAVA_JUNIT", "APPIUM_WEB_JAVA_TESTNG", "APPIUM_WEB_PYTHON", "APPIUM_WEB_NODE", "APPIUM_WEB_RUBY", "INSTRUMENTATION", "XCTEST", "XCTEST_UI"],
    #       created: Time.now,
    #       status: "PENDING" # One of: ["PENDING", "PENDING_CONCURRENCY", "PENDING_DEVICE", "PROCESSING", "SCHEDULING", "PREPARING", "RUNNING", "COMPLETED", "STOPPING"],
    #       result: "PENDING" # One of: ["PENDING", "PASSED", "WARNED", "FAILED", "SKIPPED", "ERRORED", "STOPPED"],
    #       started: Time.now,
    #       stopped: Time.now,
    #       counters: {
    #         total: 1,
    #         passed: 1,
    #         failed: 1,
    #         warned: 1,
    #         errored: 1,
    #         stopped: 1,
    #         skipped: 1
    #       },
    #       message: "Message",
    #       device: {
    #         arn: "AmazonResourceName",
    #         name: "Name",
    #         manufacturer: "String",
    #         model: "String",
    #         model_id: "String",
    #         form_factor: "PHONE" # One of: ["PHONE", "TABLET"],
    #         platform: "ANDROID" # One of: ["ANDROID", "IOS"],
    #         os: "String",
    #         cpu: {
    #           frequency: "String",
    #           architecture: "String",
    #           clock: 1.0
    #         },
    #         resolution: {
    #           width: 1,
    #           height: 1
    #         },
    #         heap_size: 1,
    #         memory: 1,
    #         image: "String",
    #         carrier: "String",
    #         radio: "String",
    #         remote_access_enabled: false,
    #         remote_debug_enabled: false,
    #         fleet_type: "String",
    #         fleet_name: "String",
    #         instances: [
    #           {
    #             arn: "AmazonResourceName",
    #             device_arn: "AmazonResourceName",
    #             labels: ["String"],
    #             status: "IN_USE" # One of: ["IN_USE", "PREPARING", "AVAILABLE", "NOT_AVAILABLE"],
    #             udid: "String",
    #             instance_profile: {
    #               arn: "AmazonResourceName",
    #               package_cleanup: false,
    #               exclude_app_packages_from_cleanup: ["String"],
    #               reboot_after_use: false,
    #               name: "Name",
    #               description: "Message"
    #             }
    #           }
    #         ],
    #         availability: "TEMPORARY_NOT_AVAILABLE" # One of: ["TEMPORARY_NOT_AVAILABLE", "BUSY", "AVAILABLE", "HIGHLY_AVAILABLE"]
    #       },
    #       instance_arn: "AmazonResourceName",
    #       device_minutes: {
    #         total: 1.0,
    #         metered: 1.0,
    #         unmetered: 1.0
    #       },
    #       video_endpoint: "String",
    #       video_capture: false
    #     }
    #   }
    # @return [Types::StopJobResult]
    def stop_job(params = {}, options = {})
      request = build_request(:stop_job, params)
      request.send_request(options)
    end

    # <p>Ends a specified remote access session.</p>
    # @param [Hash, Types::StopRemoteAccessSessionRequest] params
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the remote access session to stop.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "AmazonResourceName", # required
    #   }
    #   options = {}
    #   response = client.stop_remote_access_session(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     remote_access_session: {
    #       arn: "AmazonResourceName",
    #       name: "Name",
    #       created: Time.now,
    #       status: "PENDING" # One of: ["PENDING", "PENDING_CONCURRENCY", "PENDING_DEVICE", "PROCESSING", "SCHEDULING", "PREPARING", "RUNNING", "COMPLETED", "STOPPING"],
    #       result: "PENDING" # One of: ["PENDING", "PASSED", "WARNED", "FAILED", "SKIPPED", "ERRORED", "STOPPED"],
    #       message: "Message",
    #       started: Time.now,
    #       stopped: Time.now,
    #       device: {
    #         arn: "AmazonResourceName",
    #         name: "Name",
    #         manufacturer: "String",
    #         model: "String",
    #         model_id: "String",
    #         form_factor: "PHONE" # One of: ["PHONE", "TABLET"],
    #         platform: "ANDROID" # One of: ["ANDROID", "IOS"],
    #         os: "String",
    #         cpu: {
    #           frequency: "String",
    #           architecture: "String",
    #           clock: 1.0
    #         },
    #         resolution: {
    #           width: 1,
    #           height: 1
    #         },
    #         heap_size: 1,
    #         memory: 1,
    #         image: "String",
    #         carrier: "String",
    #         radio: "String",
    #         remote_access_enabled: false,
    #         remote_debug_enabled: false,
    #         fleet_type: "String",
    #         fleet_name: "String",
    #         instances: [
    #           {
    #             arn: "AmazonResourceName",
    #             device_arn: "AmazonResourceName",
    #             labels: ["String"],
    #             status: "IN_USE" # One of: ["IN_USE", "PREPARING", "AVAILABLE", "NOT_AVAILABLE"],
    #             udid: "String",
    #             instance_profile: {
    #               arn: "AmazonResourceName",
    #               package_cleanup: false,
    #               exclude_app_packages_from_cleanup: ["String"],
    #               reboot_after_use: false,
    #               name: "Name",
    #               description: "Message"
    #             }
    #           }
    #         ],
    #         availability: "TEMPORARY_NOT_AVAILABLE" # One of: ["TEMPORARY_NOT_AVAILABLE", "BUSY", "AVAILABLE", "HIGHLY_AVAILABLE"]
    #       },
    #       instance_arn: "AmazonResourceName",
    #       remote_debug_enabled: false,
    #       remote_record_enabled: false,
    #       remote_record_app_arn: "AmazonResourceName",
    #       host_address: "HostAddress",
    #       client_id: "ClientId",
    #       billing_method: "METERED" # One of: ["METERED", "UNMETERED"],
    #       device_minutes: {
    #         total: 1.0,
    #         metered: 1.0,
    #         unmetered: 1.0
    #       },
    #       endpoint: "String",
    #       device_udid: "String",
    #       interaction_mode: "INTERACTIVE" # One of: ["INTERACTIVE", "NO_VIDEO", "VIDEO_ONLY"],
    #       skip_app_resign: false,
    #       vpc_config: {
    #         security_group_ids: ["SecurityGroupId"], # required
    #         subnet_ids: ["SubnetId"], # required
    #         vpc_id: "NonEmptyString", # required
    #       },
    #       device_proxy: {
    #         host: "DeviceProxyHost", # required
    #         port: 1, # required
    #       }
    #     }
    #   }
    # @return [Types::StopRemoteAccessSessionResult]
    def stop_remote_access_session(params = {}, options = {})
      request = build_request(:stop_remote_access_session, params)
      request.send_request(options)
    end

    # <p>Initiates a stop request for the current test run. AWS Device Farm immediately stops the run on devices
    #             where tests have not started. You are not billed for these devices. On devices where tests have started
    #             executing, setup suite and teardown suite tests run to completion on those devices. You are billed for
    #             setup, teardown, and any tests that were in progress or already completed.</p>
    # @param [Hash, Types::StopRunRequest] params
    # @option params [String] :arn
    #   <p>Represents the Amazon Resource Name (ARN) of the Device Farm run to stop.</p>
    # @example To stop a test run
    #   # The following example stops a specific test run.
    #   params = {
    #     arn: "arn:aws:devicefarm:us-west-2:123456789101:run:EXAMPLE-GUID-123-456"
    #   }
    #   options = {}
    #   response = client.stop_run(params, options)
    #   response.to_h #=>
    #   {
    #     run: {
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "AmazonResourceName", # required
    #   }
    #   options = {}
    #   response = client.stop_run(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     run: {
    #       arn: "AmazonResourceName",
    #       name: "Name",
    #       type: "BUILTIN_FUZZ" # One of: ["BUILTIN_FUZZ", "APPIUM_JAVA_JUNIT", "APPIUM_JAVA_TESTNG", "APPIUM_PYTHON", "APPIUM_NODE", "APPIUM_RUBY", "APPIUM_WEB_JAVA_JUNIT", "APPIUM_WEB_JAVA_TESTNG", "APPIUM_WEB_PYTHON", "APPIUM_WEB_NODE", "APPIUM_WEB_RUBY", "INSTRUMENTATION", "XCTEST", "XCTEST_UI"],
    #       platform: "ANDROID" # One of: ["ANDROID", "IOS"],
    #       created: Time.now,
    #       status: "PENDING" # One of: ["PENDING", "PENDING_CONCURRENCY", "PENDING_DEVICE", "PROCESSING", "SCHEDULING", "PREPARING", "RUNNING", "COMPLETED", "STOPPING"],
    #       result: "PENDING" # One of: ["PENDING", "PASSED", "WARNED", "FAILED", "SKIPPED", "ERRORED", "STOPPED"],
    #       started: Time.now,
    #       stopped: Time.now,
    #       counters: {
    #         total: 1,
    #         passed: 1,
    #         failed: 1,
    #         warned: 1,
    #         errored: 1,
    #         stopped: 1,
    #         skipped: 1
    #       },
    #       message: "Message",
    #       total_jobs: 1,
    #       completed_jobs: 1,
    #       billing_method: "METERED" # One of: ["METERED", "UNMETERED"],
    #       device_minutes: {
    #         total: 1.0,
    #         metered: 1.0,
    #         unmetered: 1.0
    #       },
    #       network_profile: {
    #         arn: "AmazonResourceName",
    #         name: "Name",
    #         description: "Message",
    #         type: "CURATED" # One of: ["CURATED", "PRIVATE"],
    #         uplink_bandwidth_bits: 1,
    #         downlink_bandwidth_bits: 1,
    #         uplink_delay_ms: 1,
    #         downlink_delay_ms: 1,
    #         uplink_jitter_ms: 1,
    #         downlink_jitter_ms: 1,
    #         uplink_loss_percent: 1,
    #         downlink_loss_percent: 1
    #       },
    #       device_proxy: {
    #         host: "DeviceProxyHost", # required
    #         port: 1, # required
    #       },
    #       parsing_result_url: "String",
    #       result_code: "PARSING_FAILED" # One of: ["PARSING_FAILED", "VPC_ENDPOINT_SETUP_FAILED"],
    #       seed: 1,
    #       app_upload: "AmazonResourceName",
    #       event_count: 1,
    #       job_timeout_minutes: 1,
    #       device_pool_arn: "AmazonResourceName",
    #       locale: "String",
    #       radios: {
    #         wifi: false,
    #         bluetooth: false,
    #         nfc: false,
    #         gps: false
    #       },
    #       location: {
    #         latitude: 1.0, # required
    #         longitude: 1.0, # required
    #       },
    #       customer_artifact_paths: {
    #         ios_paths: ["String"],
    #         android_paths: ["String"],
    #         device_host_paths: ["String"]
    #       },
    #       web_url: "String",
    #       skip_app_resign: false,
    #       test_spec_arn: "AmazonResourceName",
    #       device_selection_result: {
    #         filters: [
    #           {
    #             attribute: "ARN" # One of: ["ARN", "PLATFORM", "OS_VERSION", "MODEL", "AVAILABILITY", "FORM_FACTOR", "MANUFACTURER", "REMOTE_ACCESS_ENABLED", "REMOTE_DEBUG_ENABLED", "INSTANCE_ARN", "INSTANCE_LABELS", "FLEET_TYPE"], # required
    #             operator: "EQUALS" # One of: ["EQUALS", "LESS_THAN", "LESS_THAN_OR_EQUALS", "GREATER_THAN", "GREATER_THAN_OR_EQUALS", "IN", "NOT_IN", "CONTAINS"], # required
    #             values: ["String"], # required
    #           }
    #         ],
    #         matched_devices_count: 1,
    #         max_devices: 1
    #       },
    #       vpc_config: {
    #         security_group_ids: ["SecurityGroupId"], # required
    #         subnet_ids: ["SubnetId"], # required
    #         vpc_id: "NonEmptyString", # required
    #       }
    #     }
    #   }
    # @return [Types::StopRunResult]
    def stop_run(params = {}, options = {})
      request = build_request(:stop_run, params)
      request.send_request(options)
    end

    # <p>Associates the specified tags to a resource with the specified <code>resourceArn</code>. If existing tags
    #             on a resource are not specified in the request parameters, they are not changed. When a resource is deleted,
    #             the tags associated with that resource are also deleted.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource or resources to which to add tags. You can associate tags
    #               with the following Device Farm resources: <code>PROJECT</code>, <code>RUN</code>,
    #                   <code>NETWORK_PROFILE</code>, <code>INSTANCE_PROFILE</code>, <code>DEVICE_INSTANCE</code>,
    #                   <code>SESSION</code>, <code>DEVICE_POOL</code>, <code>DEVICE</code>, and
    #               <code>VPCE_CONFIGURATION</code>.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags to add to the resource. A tag is an array of key-value pairs. Tag keys can have a maximum
    #               character length of 128 characters. Tag values can have a maximum length of 256 characters.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "DeviceFarmArn", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
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

    # <p>Deletes the specified tags from a resource.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource or resources from which to delete tags. You can associate
    #               tags with the following Device Farm resources: <code>PROJECT</code>, <code>RUN</code>,
    #                   <code>NETWORK_PROFILE</code>, <code>INSTANCE_PROFILE</code>, <code>DEVICE_INSTANCE</code>,
    #                   <code>SESSION</code>, <code>DEVICE_POOL</code>, <code>DEVICE</code>, and
    #               <code>VPCE_CONFIGURATION</code>.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>The keys of the tags to be removed.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "DeviceFarmArn", # required
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

    # <p>Updates information about a private device instance.</p>
    # @param [Hash, Types::UpdateDeviceInstanceRequest] params
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the device instance.</p>
    # @option params [String] :profile_arn
    #   <p>The ARN of the profile that you want to associate with the device instance.</p>
    # @option params [Array<String>] :labels
    #   <p>An array of strings that you want to associate with the device instance.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "AmazonResourceName", # required
    #     profile_arn: "AmazonResourceName",
    #     labels: ["String"]
    #   }
    #   options = {}
    #   response = client.update_device_instance(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     device_instance: {
    #       arn: "AmazonResourceName",
    #       device_arn: "AmazonResourceName",
    #       labels: ["String"],
    #       status: "IN_USE" # One of: ["IN_USE", "PREPARING", "AVAILABLE", "NOT_AVAILABLE"],
    #       udid: "String",
    #       instance_profile: {
    #         arn: "AmazonResourceName",
    #         package_cleanup: false,
    #         exclude_app_packages_from_cleanup: ["String"],
    #         reboot_after_use: false,
    #         name: "Name",
    #         description: "Message"
    #       }
    #     }
    #   }
    # @return [Types::UpdateDeviceInstanceResult]
    def update_device_instance(params = {}, options = {})
      request = build_request(:update_device_instance, params)
      request.send_request(options)
    end

    # <p>Modifies the name, description, and rules in a device pool given the attributes and
    #             the pool ARN. Rule updates are all-or-nothing, meaning they can only be updated as a
    #             whole (or not at all).</p>
    # @param [Hash, Types::UpdateDevicePoolRequest] params
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the Device Farm device pool to update.</p>
    # @option params [String] :name
    #   <p>A string that represents the name of the device pool to update.</p>
    # @option params [String] :description
    #   <p>A description of the device pool to update.</p>
    # @option params [Array<Types::Rule>] :rules
    #   <p>Represents the rules to modify for the device pool. Updating rules is optional. If you update rules for
    #               your request, the update replaces the existing rules.</p>
    # @option params [Integer] :max_devices
    #   <p>The number of devices that Device Farm can add to your device pool. Device Farm adds
    #               devices that are available and that meet the criteria that you assign for the
    #                   <code>rules</code> parameter. Depending on how many devices meet these constraints,
    #               your device pool might contain fewer devices than the value for this parameter.</p>
    #           <p>By specifying the maximum number of devices, you can control the costs that you incur
    #               by running tests.</p>
    #           <p>If you use this parameter in your request, you cannot use the
    #                   <code>clearMaxDevices</code> parameter in the same request.</p>
    # @option params [Boolean] :clear_max_devices
    #   <p>Sets whether the <code>maxDevices</code> parameter applies to your device pool. If you set this parameter
    #               to <code>true</code>, the <code>maxDevices</code> parameter does not apply, and Device Farm does not limit
    #               the number of devices that it adds to your device pool. In this case, Device Farm adds all available devices
    #               that meet the criteria specified in the <code>rules</code> parameter.</p>
    #           <p>If you use this parameter in your request, you cannot use the <code>maxDevices</code>
    #               parameter in the same request.</p>
    # @example To update a device pool
    #   # The following example updates the specified device pool with a new name and description. It also enables remote access of devices in the device pool.
    #   params = {
    #     arn: "arn:aws:devicefarm:us-west-2::devicepool:082d10e5-d7d7-48a5-ba5c-12345EXAMPLE",
    #     name: "NewName",
    #     description: "NewDescription",
    #     rules: [
    #       {
    #         attribute: REMOTE_ACCESS_ENABLED,
    #         operator: EQUALS,
    #         value: "True"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_device_pool(params, options)
    #   response.to_h #=>
    #   {
    #     device_pool: {
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "AmazonResourceName", # required
    #     name: "Name",
    #     description: "Message",
    #     rules: [
    #       {
    #         attribute: "ARN" # One of: ["ARN", "PLATFORM", "FORM_FACTOR", "MANUFACTURER", "REMOTE_ACCESS_ENABLED", "REMOTE_DEBUG_ENABLED", "APPIUM_VERSION", "INSTANCE_ARN", "INSTANCE_LABELS", "FLEET_TYPE", "OS_VERSION", "MODEL", "AVAILABILITY"],
    #         operator: "EQUALS" # One of: ["EQUALS", "LESS_THAN", "LESS_THAN_OR_EQUALS", "GREATER_THAN", "GREATER_THAN_OR_EQUALS", "IN", "NOT_IN", "CONTAINS"],
    #         value: "String"
    #       }
    #     ],
    #     max_devices: 1,
    #     clear_max_devices: false
    #   }
    #   options = {}
    #   response = client.update_device_pool(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     device_pool: {
    #       arn: "AmazonResourceName",
    #       name: "Name",
    #       description: "Message",
    #       type: "CURATED" # One of: ["CURATED", "PRIVATE"],
    #       rules: [
    #         {
    #           attribute: "ARN" # One of: ["ARN", "PLATFORM", "FORM_FACTOR", "MANUFACTURER", "REMOTE_ACCESS_ENABLED", "REMOTE_DEBUG_ENABLED", "APPIUM_VERSION", "INSTANCE_ARN", "INSTANCE_LABELS", "FLEET_TYPE", "OS_VERSION", "MODEL", "AVAILABILITY"],
    #           operator: "EQUALS" # One of: ["EQUALS", "LESS_THAN", "LESS_THAN_OR_EQUALS", "GREATER_THAN", "GREATER_THAN_OR_EQUALS", "IN", "NOT_IN", "CONTAINS"],
    #           value: "String"
    #         }
    #       ],
    #       max_devices: 1
    #     }
    #   }
    # @return [Types::UpdateDevicePoolResult]
    def update_device_pool(params = {}, options = {})
      request = build_request(:update_device_pool, params)
      request.send_request(options)
    end

    # <p>Updates information about an existing private device instance profile.</p>
    # @param [Hash, Types::UpdateInstanceProfileRequest] params
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the instance profile.</p>
    # @option params [String] :name
    #   <p>The updated name for your instance profile.</p>
    # @option params [String] :description
    #   <p>The updated description for your instance profile.</p>
    # @option params [Boolean] :package_cleanup
    #   <p>The updated choice for whether you want to specify package cleanup. The default value
    #               is <code>false</code> for private devices.</p>
    # @option params [Array<String>] :exclude_app_packages_from_cleanup
    #   <p>An array of strings that specifies the list of app packages that should not be cleaned up from the device
    #               after a test run is over.</p>
    #           <p>The list of packages is only considered if you set <code>packageCleanup</code> to
    #                   <code>true</code>.</p>
    # @option params [Boolean] :reboot_after_use
    #   <p>The updated choice for whether you want to reboot the device after use. The default
    #               value is <code>true</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "AmazonResourceName", # required
    #     name: "Name",
    #     description: "Message",
    #     package_cleanup: false,
    #     exclude_app_packages_from_cleanup: ["String"],
    #     reboot_after_use: false
    #   }
    #   options = {}
    #   response = client.update_instance_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     instance_profile: {
    #       arn: "AmazonResourceName",
    #       package_cleanup: false,
    #       exclude_app_packages_from_cleanup: ["String"],
    #       reboot_after_use: false,
    #       name: "Name",
    #       description: "Message"
    #     }
    #   }
    # @return [Types::UpdateInstanceProfileResult]
    def update_instance_profile(params = {}, options = {})
      request = build_request(:update_instance_profile, params)
      request.send_request(options)
    end

    # <p>Updates the network profile.</p>
    # @param [Hash, Types::UpdateNetworkProfileRequest] params
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the project for which you want to update network
    #               profile settings.</p>
    # @option params [String] :name
    #   <p>The name of the network profile about which you are returning
    #               information.</p>
    # @option params [String] :description
    #   <p>The description of the network profile about which you are returning
    #               information.</p>
    # @option params [String] :type
    #   <p>The type of network profile to return information about. Valid values are listed here.</p>
    # @option params [Integer] :uplink_bandwidth_bits
    #   <p>The data throughput rate in bits per second, as an integer from 0 to
    #               104857600.</p>
    # @option params [Integer] :downlink_bandwidth_bits
    #   <p>The data throughput rate in bits per second, as an integer from 0 to
    #               104857600.</p>
    # @option params [Integer] :uplink_delay_ms
    #   <p>Delay time for all packets to destination in milliseconds as an integer from 0 to
    #               2000.</p>
    # @option params [Integer] :downlink_delay_ms
    #   <p>Delay time for all packets to destination in milliseconds as an integer from 0 to
    #               2000.</p>
    # @option params [Integer] :uplink_jitter_ms
    #   <p>Time variation in the delay of received packets in milliseconds as an integer from
    #               0 to 2000.</p>
    # @option params [Integer] :downlink_jitter_ms
    #   <p>Time variation in the delay of received packets in milliseconds as an integer from
    #               0 to 2000.</p>
    # @option params [Integer] :uplink_loss_percent
    #   <p>Proportion of transmitted packets that fail to arrive from 0 to 100
    #               percent.</p>
    # @option params [Integer] :downlink_loss_percent
    #   <p>Proportion of received packets that fail to arrive from 0 to 100 percent.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "AmazonResourceName", # required
    #     name: "Name",
    #     description: "Message",
    #     type: "CURATED" # One of: ["CURATED", "PRIVATE"],
    #     uplink_bandwidth_bits: 1,
    #     downlink_bandwidth_bits: 1,
    #     uplink_delay_ms: 1,
    #     downlink_delay_ms: 1,
    #     uplink_jitter_ms: 1,
    #     downlink_jitter_ms: 1,
    #     uplink_loss_percent: 1,
    #     downlink_loss_percent: 1
    #   }
    #   options = {}
    #   response = client.update_network_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     network_profile: {
    #       arn: "AmazonResourceName",
    #       name: "Name",
    #       description: "Message",
    #       type: "CURATED" # One of: ["CURATED", "PRIVATE"],
    #       uplink_bandwidth_bits: 1,
    #       downlink_bandwidth_bits: 1,
    #       uplink_delay_ms: 1,
    #       downlink_delay_ms: 1,
    #       uplink_jitter_ms: 1,
    #       downlink_jitter_ms: 1,
    #       uplink_loss_percent: 1,
    #       downlink_loss_percent: 1
    #     }
    #   }
    # @return [Types::UpdateNetworkProfileResult]
    def update_network_profile(params = {}, options = {})
      request = build_request(:update_network_profile, params)
      request.send_request(options)
    end

    # <p>Modifies the specified project name, given the project ARN and a new
    #             name.</p>
    # @param [Hash, Types::UpdateProjectRequest] params
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the project whose name to update.</p>
    # @option params [String] :name
    #   <p>A string that represents the new name of the project that you are updating.</p>
    # @option params [Integer] :default_job_timeout_minutes
    #   <p>The number of minutes a test run in the project executes before it times out.</p>
    # @option params [Types::VpcConfig] :vpc_config
    #   <p>The VPC security groups and subnets that are attached to a project.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "AmazonResourceName", # required
    #     name: "Name",
    #     default_job_timeout_minutes: 1,
    #     vpc_config: {
    #       security_group_ids: ["SecurityGroupId"], # required
    #       subnet_ids: ["SubnetId"], # required
    #       vpc_id: "NonEmptyString", # required
    #     }
    #   }
    #   options = {}
    #   response = client.update_project(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     project: {
    #       arn: "AmazonResourceName",
    #       name: "Name",
    #       default_job_timeout_minutes: 1,
    #       created: Time.now,
    #       vpc_config: {
    #         security_group_ids: ["SecurityGroupId"], # required
    #         subnet_ids: ["SubnetId"], # required
    #         vpc_id: "NonEmptyString", # required
    #       }
    #     }
    #   }
    # @return [Types::UpdateProjectResult]
    def update_project(params = {}, options = {})
      request = build_request(:update_project, params)
      request.send_request(options)
    end

    # <p>Change details of a project.</p>
    # @param [Hash, Types::UpdateTestGridProjectRequest] params
    # @option params [String] :project_arn
    #   <p>ARN of the project to update.</p>
    # @option params [String] :name
    #   <p>Human-readable name for the project.</p>
    # @option params [String] :description
    #   <p>Human-readable description for the project.</p>
    # @option params [Types::TestGridVpcConfig] :vpc_config
    #   <p>The VPC security groups and subnets that are attached to a project.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     project_arn: "DeviceFarmArn", # required
    #     name: "ResourceName",
    #     description: "ResourceDescription",
    #     vpc_config: {
    #       security_group_ids: ["NonEmptyString"], # required
    #       subnet_ids: ["NonEmptyString"], # required
    #       vpc_id: "NonEmptyString", # required
    #     }
    #   }
    #   options = {}
    #   response = client.update_test_grid_project(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     test_grid_project: {
    #       arn: "DeviceFarmArn",
    #       name: "String",
    #       description: "String",
    #       vpc_config: {
    #         security_group_ids: ["NonEmptyString"], # required
    #         subnet_ids: ["NonEmptyString"], # required
    #         vpc_id: "NonEmptyString", # required
    #       },
    #       created: Time.now
    #     }
    #   }
    # @return [Types::UpdateTestGridProjectResult]
    def update_test_grid_project(params = {}, options = {})
      request = build_request(:update_test_grid_project, params)
      request.send_request(options)
    end

    # <p>Updates an uploaded test spec.</p>
    # @param [Hash, Types::UpdateUploadRequest] params
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the uploaded test spec.</p>
    # @option params [String] :name
    #   <p>The upload's test spec file name. The name must not contain any forward slashes (/). The test spec file
    #               name must end with the <code>.yaml</code> or <code>.yml</code> file extension.</p>
    # @option params [String] :content_type
    #   <p>The upload's content type (for example, <code>application/x-yaml</code>).</p>
    # @option params [Boolean] :edit_content
    #   <p>Set to true if the YAML file has changed and must be updated. Otherwise, set to false.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "AmazonResourceName", # required
    #     name: "Name",
    #     content_type: "ContentType",
    #     edit_content: false
    #   }
    #   options = {}
    #   response = client.update_upload(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     upload: {
    #       arn: "AmazonResourceName",
    #       name: "Name",
    #       created: Time.now,
    #       type: "ANDROID_APP" # One of: ["ANDROID_APP", "IOS_APP", "WEB_APP", "EXTERNAL_DATA", "APPIUM_JAVA_JUNIT_TEST_PACKAGE", "APPIUM_JAVA_TESTNG_TEST_PACKAGE", "APPIUM_PYTHON_TEST_PACKAGE", "APPIUM_NODE_TEST_PACKAGE", "APPIUM_RUBY_TEST_PACKAGE", "APPIUM_WEB_JAVA_JUNIT_TEST_PACKAGE", "APPIUM_WEB_JAVA_TESTNG_TEST_PACKAGE", "APPIUM_WEB_PYTHON_TEST_PACKAGE", "APPIUM_WEB_NODE_TEST_PACKAGE", "APPIUM_WEB_RUBY_TEST_PACKAGE", "CALABASH_TEST_PACKAGE", "INSTRUMENTATION_TEST_PACKAGE", "UIAUTOMATION_TEST_PACKAGE", "UIAUTOMATOR_TEST_PACKAGE", "XCTEST_TEST_PACKAGE", "XCTEST_UI_TEST_PACKAGE", "APPIUM_JAVA_JUNIT_TEST_SPEC", "APPIUM_JAVA_TESTNG_TEST_SPEC", "APPIUM_PYTHON_TEST_SPEC", "APPIUM_NODE_TEST_SPEC", "APPIUM_RUBY_TEST_SPEC", "APPIUM_WEB_JAVA_JUNIT_TEST_SPEC", "APPIUM_WEB_JAVA_TESTNG_TEST_SPEC", "APPIUM_WEB_PYTHON_TEST_SPEC", "APPIUM_WEB_NODE_TEST_SPEC", "APPIUM_WEB_RUBY_TEST_SPEC", "INSTRUMENTATION_TEST_SPEC", "XCTEST_UI_TEST_SPEC"],
    #       status: "INITIALIZED" # One of: ["INITIALIZED", "PROCESSING", "SUCCEEDED", "FAILED"],
    #       url: "SensitiveURL",
    #       metadata: "Metadata",
    #       content_type: "ContentType",
    #       message: "Message",
    #       category: "CURATED" # One of: ["CURATED", "PRIVATE"]
    #     }
    #   }
    # @return [Types::UpdateUploadResult]
    def update_upload(params = {}, options = {})
      request = build_request(:update_upload, params)
      request.send_request(options)
    end

    # <p>Updates information about an Amazon Virtual Private Cloud (VPC) endpoint configuration.</p>
    # @param [Hash, Types::UpdateVPCEConfigurationRequest] params
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the VPC endpoint configuration you want to
    #               update.</p>
    # @option params [String] :vpce_configuration_name
    #   <p>The friendly name you give to your VPC endpoint configuration to manage your configurations more
    #               easily.</p>
    # @option params [String] :vpce_service_name
    #   <p>The name of the VPC endpoint service running in your AWS account that you want Device Farm to test.</p>
    # @option params [String] :service_dns_name
    #   <p>The DNS (domain) name used to connect to your private service in your VPC. The DNS name must not already
    #               be in use on the internet.</p>
    # @option params [String] :vpce_configuration_description
    #   <p>An optional description that provides details about your VPC endpoint configuration.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "AmazonResourceName", # required
    #     vpce_configuration_name: "VPCEConfigurationName",
    #     vpce_service_name: "VPCEServiceName",
    #     service_dns_name: "ServiceDnsName",
    #     vpce_configuration_description: "VPCEConfigurationDescription"
    #   }
    #   options = {}
    #   response = client.update_vpce_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     vpce_configuration: {
    #       arn: "AmazonResourceName",
    #       vpce_configuration_name: "VPCEConfigurationName",
    #       vpce_service_name: "VPCEServiceName",
    #       service_dns_name: "ServiceDnsName",
    #       vpce_configuration_description: "VPCEConfigurationDescription"
    #     }
    #   }
    # @return [Types::UpdateVPCEConfigurationResult]
    def update_vpce_configuration(params = {}, options = {})
      request = build_request(:update_vpce_configuration, params)
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
      context[:gem_name] = 'aws-sdk-devicefarm'
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
