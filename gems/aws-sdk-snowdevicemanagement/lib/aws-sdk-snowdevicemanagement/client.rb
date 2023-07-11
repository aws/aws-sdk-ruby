# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
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
require 'aws-sdk-core/plugins/endpoint_discovery.rb'
require 'aws-sdk-core/plugins/endpoint_pattern.rb'
require 'aws-sdk-core/plugins/response_paging.rb'
require 'aws-sdk-core/plugins/stub_responses.rb'
require 'aws-sdk-core/plugins/idempotency_token.rb'
require 'aws-sdk-core/plugins/jsonvalue_converter.rb'
require 'aws-sdk-core/plugins/client_metrics_plugin.rb'
require 'aws-sdk-core/plugins/client_metrics_send_plugin.rb'
require 'aws-sdk-core/plugins/transfer_encoding.rb'
require 'aws-sdk-core/plugins/http_checksum.rb'
require 'aws-sdk-core/plugins/checksum_algorithm.rb'
require 'aws-sdk-core/plugins/request_compression.rb'
require 'aws-sdk-core/plugins/defaults_mode.rb'
require 'aws-sdk-core/plugins/recursion_detection.rb'
require 'aws-sdk-core/plugins/sign.rb'
require 'aws-sdk-core/plugins/protocols/rest_json.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:snowdevicemanagement)

module Aws::SnowDeviceManagement
  # An API client for SnowDeviceManagement.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::SnowDeviceManagement::Client.new(
  #       region: region_name,
  #       credentials: credentials,
  #       # ...
  #     )
  #
  # For details on configuring region and credentials see
  # the [developer guide](/sdk-for-ruby/v3/developer-guide/setup-config.html).
  #
  # See {#initialize} for a full list of supported configuration options.
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :snowdevicemanagement

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
    add_plugin(Aws::Plugins::EndpointDiscovery)
    add_plugin(Aws::Plugins::EndpointPattern)
    add_plugin(Aws::Plugins::ResponsePaging)
    add_plugin(Aws::Plugins::StubResponses)
    add_plugin(Aws::Plugins::IdempotencyToken)
    add_plugin(Aws::Plugins::JsonvalueConverter)
    add_plugin(Aws::Plugins::ClientMetricsPlugin)
    add_plugin(Aws::Plugins::ClientMetricsSendPlugin)
    add_plugin(Aws::Plugins::TransferEncoding)
    add_plugin(Aws::Plugins::HttpChecksum)
    add_plugin(Aws::Plugins::ChecksumAlgorithm)
    add_plugin(Aws::Plugins::RequestCompression)
    add_plugin(Aws::Plugins::DefaultsMode)
    add_plugin(Aws::Plugins::RecursionDetection)
    add_plugin(Aws::Plugins::Sign)
    add_plugin(Aws::Plugins::Protocols::RestJson)
    add_plugin(Aws::SnowDeviceManagement::Plugins::Endpoints)

    # @overload initialize(options)
    #   @param [Hash] options
    #   @option options [required, Aws::CredentialProvider] :credentials
    #     Your AWS credentials. This can be an instance of any one of the
    #     following classes:
    #
    #     * `Aws::Credentials` - Used for configuring static, non-refreshing
    #       credentials.
    #
    #     * `Aws::SharedCredentials` - Used for loading static credentials from a
    #       shared file, such as `~/.aws/config`.
    #
    #     * `Aws::AssumeRoleCredentials` - Used when you need to assume a role.
    #
    #     * `Aws::AssumeRoleWebIdentityCredentials` - Used when you need to
    #       assume a role after providing credentials via the web.
    #
    #     * `Aws::SSOCredentials` - Used for loading credentials from AWS SSO using an
    #       access token generated from `aws login`.
    #
    #     * `Aws::ProcessCredentials` - Used for loading credentials from a
    #       process that outputs to stdout.
    #
    #     * `Aws::InstanceProfileCredentials` - Used for loading credentials
    #       from an EC2 IMDS on an EC2 instance.
    #
    #     * `Aws::ECSCredentials` - Used for loading credentials from
    #       instances running in ECS.
    #
    #     * `Aws::CognitoIdentityCredentials` - Used for loading credentials
    #       from the Cognito Identity service.
    #
    #     When `:credentials` are not configured directly, the following
    #     locations will be searched for credentials:
    #
    #     * `Aws.config[:credentials]`
    #     * The `:access_key_id`, `:secret_access_key`, and `:session_token` options.
    #     * ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY']
    #     * `~/.aws/credentials`
    #     * `~/.aws/config`
    #     * EC2/ECS IMDS instance profile - When used by default, the timeouts
    #       are very aggressive. Construct and pass an instance of
    #       `Aws::InstanceProfileCredentails` or `Aws::ECSCredentials` to
    #       enable retries and extended timeouts. Instance profile credential
    #       fetching can be disabled by setting ENV['AWS_EC2_METADATA_DISABLED']
    #       to true.
    #
    #   @option options [required, String] :region
    #     The AWS region to connect to.  The configured `:region` is
    #     used to determine the service `:endpoint`. When not passed,
    #     a default `:region` is searched for in the following locations:
    #
    #     * `Aws.config[:region]`
    #     * `ENV['AWS_REGION']`
    #     * `ENV['AMAZON_REGION']`
    #     * `ENV['AWS_DEFAULT_REGION']`
    #     * `~/.aws/credentials`
    #     * `~/.aws/config`
    #
    #   @option options [String] :access_key_id
    #
    #   @option options [Boolean] :active_endpoint_cache (false)
    #     When set to `true`, a thread polling for endpoints will be running in
    #     the background every 60 secs (default). Defaults to `false`.
    #
    #   @option options [Boolean] :adaptive_retry_wait_to_fill (true)
    #     Used only in `adaptive` retry mode.  When true, the request will sleep
    #     until there is sufficent client side capacity to retry the request.
    #     When false, the request will raise a `RetryCapacityNotAvailableError` and will
    #     not retry instead of sleeping.
    #
    #   @option options [Boolean] :client_side_monitoring (false)
    #     When `true`, client-side metrics will be collected for all API requests from
    #     this client.
    #
    #   @option options [String] :client_side_monitoring_client_id ("")
    #     Allows you to provide an identifier for this client which will be attached to
    #     all generated client side metrics. Defaults to an empty string.
    #
    #   @option options [String] :client_side_monitoring_host ("127.0.0.1")
    #     Allows you to specify the DNS hostname or IPv4 or IPv6 address that the client
    #     side monitoring agent is running on, where client metrics will be published via UDP.
    #
    #   @option options [Integer] :client_side_monitoring_port (31000)
    #     Required for publishing client metrics. The port that the client side monitoring
    #     agent is running on, where client metrics will be published via UDP.
    #
    #   @option options [Aws::ClientSideMonitoring::Publisher] :client_side_monitoring_publisher (Aws::ClientSideMonitoring::Publisher)
    #     Allows you to provide a custom client-side monitoring publisher class. By default,
    #     will use the Client Side Monitoring Agent Publisher.
    #
    #   @option options [Boolean] :convert_params (true)
    #     When `true`, an attempt is made to coerce request parameters into
    #     the required types.
    #
    #   @option options [Boolean] :correct_clock_skew (true)
    #     Used only in `standard` and adaptive retry modes. Specifies whether to apply
    #     a clock skew correction and retry requests with skewed client clocks.
    #
    #   @option options [String] :defaults_mode ("legacy")
    #     See {Aws::DefaultsModeConfiguration} for a list of the
    #     accepted modes and the configuration defaults that are included.
    #
    #   @option options [Boolean] :disable_host_prefix_injection (false)
    #     Set to true to disable SDK automatically adding host prefix
    #     to default service endpoint when available.
    #
    #   @option options [Boolean] :disable_request_compression (false)
    #     When set to 'true' the request body will not be compressed
    #     for supported operations.
    #
    #   @option options [String] :endpoint
    #     The client endpoint is normally constructed from the `:region`
    #     option. You should only configure an `:endpoint` when connecting
    #     to test or custom endpoints. This should be a valid HTTP(S) URI.
    #
    #   @option options [Integer] :endpoint_cache_max_entries (1000)
    #     Used for the maximum size limit of the LRU cache storing endpoints data
    #     for endpoint discovery enabled operations. Defaults to 1000.
    #
    #   @option options [Integer] :endpoint_cache_max_threads (10)
    #     Used for the maximum threads in use for polling endpoints to be cached, defaults to 10.
    #
    #   @option options [Integer] :endpoint_cache_poll_interval (60)
    #     When :endpoint_discovery and :active_endpoint_cache is enabled,
    #     Use this option to config the time interval in seconds for making
    #     requests fetching endpoints information. Defaults to 60 sec.
    #
    #   @option options [Boolean] :endpoint_discovery (false)
    #     When set to `true`, endpoint discovery will be enabled for operations when available.
    #
    #   @option options [Boolean] :ignore_configured_endpoint_urls
    #     Setting to true disables use of endpoint URLs provided via environment
    #     variables and the shared configuration file.
    #
    #   @option options [Aws::Log::Formatter] :log_formatter (Aws::Log::Formatter.default)
    #     The log formatter.
    #
    #   @option options [Symbol] :log_level (:info)
    #     The log level to send messages to the `:logger` at.
    #
    #   @option options [Logger] :logger
    #     The Logger instance to send log messages to.  If this option
    #     is not set, logging will be disabled.
    #
    #   @option options [Integer] :max_attempts (3)
    #     An integer representing the maximum number attempts that will be made for
    #     a single request, including the initial attempt.  For example,
    #     setting this value to 5 will result in a request being retried up to
    #     4 times. Used in `standard` and `adaptive` retry modes.
    #
    #   @option options [String] :profile ("default")
    #     Used when loading credentials from the shared credentials file
    #     at HOME/.aws/credentials.  When not specified, 'default' is used.
    #
    #   @option options [Integer] :request_min_compression_size_bytes (10240)
    #     The minimum size in bytes that triggers compression for request
    #     bodies. The value must be non-negative integer value between 0
    #     and 10485780 bytes inclusive.
    #
    #   @option options [Proc] :retry_backoff
    #     A proc or lambda used for backoff. Defaults to 2**retries * retry_base_delay.
    #     This option is only used in the `legacy` retry mode.
    #
    #   @option options [Float] :retry_base_delay (0.3)
    #     The base delay in seconds used by the default backoff function. This option
    #     is only used in the `legacy` retry mode.
    #
    #   @option options [Symbol] :retry_jitter (:none)
    #     A delay randomiser function used by the default backoff function.
    #     Some predefined functions can be referenced by name - :none, :equal, :full,
    #     otherwise a Proc that takes and returns a number. This option is only used
    #     in the `legacy` retry mode.
    #
    #     @see https://www.awsarchitectureblog.com/2015/03/backoff.html
    #
    #   @option options [Integer] :retry_limit (3)
    #     The maximum number of times to retry failed requests.  Only
    #     ~ 500 level server errors and certain ~ 400 level client errors
    #     are retried.  Generally, these are throttling errors, data
    #     checksum errors, networking errors, timeout errors, auth errors,
    #     endpoint discovery, and errors from expired credentials.
    #     This option is only used in the `legacy` retry mode.
    #
    #   @option options [Integer] :retry_max_delay (0)
    #     The maximum number of seconds to delay between retries (0 for no limit)
    #     used by the default backoff function. This option is only used in the
    #     `legacy` retry mode.
    #
    #   @option options [String] :retry_mode ("legacy")
    #     Specifies which retry algorithm to use. Values are:
    #
    #     * `legacy` - The pre-existing retry behavior.  This is default value if
    #       no retry mode is provided.
    #
    #     * `standard` - A standardized set of retry rules across the AWS SDKs.
    #       This includes support for retry quotas, which limit the number of
    #       unsuccessful retries a client can make.
    #
    #     * `adaptive` - An experimental retry mode that includes all the
    #       functionality of `standard` mode along with automatic client side
    #       throttling.  This is a provisional mode that may change behavior
    #       in the future.
    #
    #
    #   @option options [String] :sdk_ua_app_id
    #     A unique and opaque application ID that is appended to the
    #     User-Agent header as app/<sdk_ua_app_id>. It should have a
    #     maximum length of 50.
    #
    #   @option options [String] :secret_access_key
    #
    #   @option options [String] :session_token
    #
    #   @option options [Boolean] :stub_responses (false)
    #     Causes the client to return stubbed responses. By default
    #     fake responses are generated and returned. You can specify
    #     the response data to return or errors to raise by calling
    #     {ClientStubs#stub_responses}. See {ClientStubs} for more information.
    #
    #     ** Please note ** When response stubbing is enabled, no HTTP
    #     requests are made, and retries are disabled.
    #
    #   @option options [Aws::TokenProvider] :token_provider
    #     A Bearer Token Provider. This can be an instance of any one of the
    #     following classes:
    #
    #     * `Aws::StaticTokenProvider` - Used for configuring static, non-refreshing
    #       tokens.
    #
    #     * `Aws::SSOTokenProvider` - Used for loading tokens from AWS SSO using an
    #       access token generated from `aws login`.
    #
    #     When `:token_provider` is not configured directly, the `Aws::TokenProviderChain`
    #     will be used to search for tokens configured for your profile in shared configuration files.
    #
    #   @option options [Boolean] :use_dualstack_endpoint
    #     When set to `true`, dualstack enabled endpoints (with `.aws` TLD)
    #     will be used if available.
    #
    #   @option options [Boolean] :use_fips_endpoint
    #     When set to `true`, fips compatible endpoints will be used if available.
    #     When a `fips` region is used, the region is normalized and this config
    #     is set to `true`.
    #
    #   @option options [Boolean] :validate_params (true)
    #     When `true`, request parameters are validated before
    #     sending the request.
    #
    #   @option options [Aws::SnowDeviceManagement::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::SnowDeviceManagement::EndpointParameters`
    #
    #   @option options [URI::HTTP,String] :http_proxy A proxy to send
    #     requests through.  Formatted like 'http://proxy.com:123'.
    #
    #   @option options [Float] :http_open_timeout (15) The number of
    #     seconds to wait when opening a HTTP session before raising a
    #     `Timeout::Error`.
    #
    #   @option options [Float] :http_read_timeout (60) The default
    #     number of seconds to wait for response data.  This value can
    #     safely be set per-request on the session.
    #
    #   @option options [Float] :http_idle_timeout (5) The number of
    #     seconds a connection is allowed to sit idle before it is
    #     considered stale.  Stale connections are closed and removed
    #     from the pool before making a request.
    #
    #   @option options [Float] :http_continue_timeout (1) The number of
    #     seconds to wait for a 100-continue response before sending the
    #     request body.  This option has no effect unless the request has
    #     "Expect" header set to "100-continue".  Defaults to `nil` which
    #     disables this behaviour.  This value can safely be set per
    #     request on the session.
    #
    #   @option options [Float] :ssl_timeout (nil) Sets the SSL timeout
    #     in seconds.
    #
    #   @option options [Boolean] :http_wire_trace (false) When `true`,
    #     HTTP debug output will be sent to the `:logger`.
    #
    #   @option options [Boolean] :ssl_verify_peer (true) When `true`,
    #     SSL peer certificates are verified when establishing a
    #     connection.
    #
    #   @option options [String] :ssl_ca_bundle Full path to the SSL
    #     certificate authority bundle file that should be used when
    #     verifying peer certificates.  If you do not pass
    #     `:ssl_ca_bundle` or `:ssl_ca_directory` the the system default
    #     will be used if available.
    #
    #   @option options [String] :ssl_ca_directory Full path of the
    #     directory that contains the unbundled SSL certificate
    #     authority files for verifying peer certificates.  If you do
    #     not pass `:ssl_ca_bundle` or `:ssl_ca_directory` the the
    #     system default will be used if available.
    #
    def initialize(*args)
      super
    end

    # @!group API Operations

    # Sends a cancel request for a specified task. You can cancel a task
    # only if it's still in a `QUEUED` state. Tasks that are already
    # running can't be cancelled.
    #
    # <note markdown="1"> A task might still run if it's processed from the queue before the
    # `CancelTask` operation changes the task's state.
    #
    #  </note>
    #
    # @option params [required, String] :task_id
    #   The ID of the task that you are attempting to cancel. You can retrieve
    #   a task ID by using the `ListTasks` operation.
    #
    # @return [Types::CancelTaskOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CancelTaskOutput#task_id #task_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_task({
    #     task_id: "TaskId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.task_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snow-device-management-2021-08-04/CancelTask AWS API Documentation
    #
    # @overload cancel_task(params = {})
    # @param [Hash] params ({})
    def cancel_task(params = {}, options = {})
      req = build_request(:cancel_task, params)
      req.send_request(options)
    end

    # Instructs one or more devices to start a task, such as unlocking or
    # rebooting.
    #
    # @option params [String] :client_token
    #   A token ensuring that the action is called only once with the
    #   specified details.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, Types::Command] :command
    #   The task to be performed. Only one task is executed on a device at a
    #   time.
    #
    # @option params [String] :description
    #   A description of the task and its targets.
    #
    # @option params [Hash<String,String>] :tags
    #   Optional metadata that you assign to a resource. You can use tags to
    #   categorize a resource in different ways, such as by purpose, owner, or
    #   environment.
    #
    # @option params [required, Array<String>] :targets
    #   A list of managed device IDs.
    #
    # @return [Types::CreateTaskOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateTaskOutput#task_arn #task_arn} => String
    #   * {Types::CreateTaskOutput#task_id #task_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_task({
    #     client_token: "IdempotencyToken",
    #     command: { # required
    #       reboot: {
    #       },
    #       unlock: {
    #       },
    #     },
    #     description: "TaskDescriptionString",
    #     tags: {
    #       "String" => "String",
    #     },
    #     targets: ["String"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.task_arn #=> String
    #   resp.task_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snow-device-management-2021-08-04/CreateTask AWS API Documentation
    #
    # @overload create_task(params = {})
    # @param [Hash] params ({})
    def create_task(params = {}, options = {})
      req = build_request(:create_task, params)
      req.send_request(options)
    end

    # Checks device-specific information, such as the device type, software
    # version, IP addresses, and lock status.
    #
    # @option params [required, String] :managed_device_id
    #   The ID of the device that you are checking the information of.
    #
    # @return [Types::DescribeDeviceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeDeviceOutput#associated_with_job #associated_with_job} => String
    #   * {Types::DescribeDeviceOutput#device_capacities #device_capacities} => Array&lt;Types::Capacity&gt;
    #   * {Types::DescribeDeviceOutput#device_state #device_state} => String
    #   * {Types::DescribeDeviceOutput#device_type #device_type} => String
    #   * {Types::DescribeDeviceOutput#last_reached_out_at #last_reached_out_at} => Time
    #   * {Types::DescribeDeviceOutput#last_updated_at #last_updated_at} => Time
    #   * {Types::DescribeDeviceOutput#managed_device_arn #managed_device_arn} => String
    #   * {Types::DescribeDeviceOutput#managed_device_id #managed_device_id} => String
    #   * {Types::DescribeDeviceOutput#physical_network_interfaces #physical_network_interfaces} => Array&lt;Types::PhysicalNetworkInterface&gt;
    #   * {Types::DescribeDeviceOutput#software #software} => Types::SoftwareInformation
    #   * {Types::DescribeDeviceOutput#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_device({
    #     managed_device_id: "ManagedDeviceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.associated_with_job #=> String
    #   resp.device_capacities #=> Array
    #   resp.device_capacities[0].available #=> Integer
    #   resp.device_capacities[0].name #=> String
    #   resp.device_capacities[0].total #=> Integer
    #   resp.device_capacities[0].unit #=> String
    #   resp.device_capacities[0].used #=> Integer
    #   resp.device_state #=> String, one of "UNLOCKED", "LOCKED", "UNLOCKING"
    #   resp.device_type #=> String
    #   resp.last_reached_out_at #=> Time
    #   resp.last_updated_at #=> Time
    #   resp.managed_device_arn #=> String
    #   resp.managed_device_id #=> String
    #   resp.physical_network_interfaces #=> Array
    #   resp.physical_network_interfaces[0].default_gateway #=> String
    #   resp.physical_network_interfaces[0].ip_address #=> String
    #   resp.physical_network_interfaces[0].ip_address_assignment #=> String, one of "DHCP", "STATIC"
    #   resp.physical_network_interfaces[0].mac_address #=> String
    #   resp.physical_network_interfaces[0].netmask #=> String
    #   resp.physical_network_interfaces[0].physical_connector_type #=> String, one of "RJ45", "SFP_PLUS", "QSFP", "RJ45_2", "WIFI"
    #   resp.physical_network_interfaces[0].physical_network_interface_id #=> String
    #   resp.software.install_state #=> String
    #   resp.software.installed_version #=> String
    #   resp.software.installing_version #=> String
    #   resp.tags #=> Hash
    #   resp.tags["String"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snow-device-management-2021-08-04/DescribeDevice AWS API Documentation
    #
    # @overload describe_device(params = {})
    # @param [Hash] params ({})
    def describe_device(params = {}, options = {})
      req = build_request(:describe_device, params)
      req.send_request(options)
    end

    # Checks the current state of the Amazon EC2 instances. The output is
    # similar to `describeDevice`, but the results are sourced from the
    # device cache in the Amazon Web Services Cloud and include a subset of
    # the available fields.
    #
    # @option params [required, Array<String>] :instance_ids
    #   A list of instance IDs associated with the managed device.
    #
    # @option params [required, String] :managed_device_id
    #   The ID of the managed device.
    #
    # @return [Types::DescribeDeviceEc2Output] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeDeviceEc2Output#instances #instances} => Array&lt;Types::InstanceSummary&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_device_ec2_instances({
    #     instance_ids: ["String"], # required
    #     managed_device_id: "ManagedDeviceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.instances #=> Array
    #   resp.instances[0].instance.ami_launch_index #=> Integer
    #   resp.instances[0].instance.block_device_mappings #=> Array
    #   resp.instances[0].instance.block_device_mappings[0].device_name #=> String
    #   resp.instances[0].instance.block_device_mappings[0].ebs.attach_time #=> Time
    #   resp.instances[0].instance.block_device_mappings[0].ebs.delete_on_termination #=> Boolean
    #   resp.instances[0].instance.block_device_mappings[0].ebs.status #=> String, one of "ATTACHING", "ATTACHED", "DETACHING", "DETACHED"
    #   resp.instances[0].instance.block_device_mappings[0].ebs.volume_id #=> String
    #   resp.instances[0].instance.cpu_options.core_count #=> Integer
    #   resp.instances[0].instance.cpu_options.threads_per_core #=> Integer
    #   resp.instances[0].instance.created_at #=> Time
    #   resp.instances[0].instance.image_id #=> String
    #   resp.instances[0].instance.instance_id #=> String
    #   resp.instances[0].instance.instance_type #=> String
    #   resp.instances[0].instance.private_ip_address #=> String
    #   resp.instances[0].instance.public_ip_address #=> String
    #   resp.instances[0].instance.root_device_name #=> String
    #   resp.instances[0].instance.security_groups #=> Array
    #   resp.instances[0].instance.security_groups[0].group_id #=> String
    #   resp.instances[0].instance.security_groups[0].group_name #=> String
    #   resp.instances[0].instance.state.code #=> Integer
    #   resp.instances[0].instance.state.name #=> String, one of "PENDING", "RUNNING", "SHUTTING_DOWN", "TERMINATED", "STOPPING", "STOPPED"
    #   resp.instances[0].instance.updated_at #=> Time
    #   resp.instances[0].last_updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snow-device-management-2021-08-04/DescribeDeviceEc2Instances AWS API Documentation
    #
    # @overload describe_device_ec2_instances(params = {})
    # @param [Hash] params ({})
    def describe_device_ec2_instances(params = {}, options = {})
      req = build_request(:describe_device_ec2_instances, params)
      req.send_request(options)
    end

    # Checks the status of a remote task running on one or more target
    # devices.
    #
    # @option params [required, String] :managed_device_id
    #   The ID of the managed device.
    #
    # @option params [required, String] :task_id
    #   The ID of the task that the action is describing.
    #
    # @return [Types::DescribeExecutionOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeExecutionOutput#execution_id #execution_id} => String
    #   * {Types::DescribeExecutionOutput#last_updated_at #last_updated_at} => Time
    #   * {Types::DescribeExecutionOutput#managed_device_id #managed_device_id} => String
    #   * {Types::DescribeExecutionOutput#started_at #started_at} => Time
    #   * {Types::DescribeExecutionOutput#state #state} => String
    #   * {Types::DescribeExecutionOutput#task_id #task_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_execution({
    #     managed_device_id: "ManagedDeviceId", # required
    #     task_id: "TaskId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.execution_id #=> String
    #   resp.last_updated_at #=> Time
    #   resp.managed_device_id #=> String
    #   resp.started_at #=> Time
    #   resp.state #=> String, one of "QUEUED", "IN_PROGRESS", "CANCELED", "FAILED", "SUCCEEDED", "REJECTED", "TIMED_OUT"
    #   resp.task_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snow-device-management-2021-08-04/DescribeExecution AWS API Documentation
    #
    # @overload describe_execution(params = {})
    # @param [Hash] params ({})
    def describe_execution(params = {}, options = {})
      req = build_request(:describe_execution, params)
      req.send_request(options)
    end

    # Checks the metadata for a given task on a device.
    #
    # @option params [required, String] :task_id
    #   The ID of the task to be described.
    #
    # @return [Types::DescribeTaskOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeTaskOutput#completed_at #completed_at} => Time
    #   * {Types::DescribeTaskOutput#created_at #created_at} => Time
    #   * {Types::DescribeTaskOutput#description #description} => String
    #   * {Types::DescribeTaskOutput#last_updated_at #last_updated_at} => Time
    #   * {Types::DescribeTaskOutput#state #state} => String
    #   * {Types::DescribeTaskOutput#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::DescribeTaskOutput#targets #targets} => Array&lt;String&gt;
    #   * {Types::DescribeTaskOutput#task_arn #task_arn} => String
    #   * {Types::DescribeTaskOutput#task_id #task_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_task({
    #     task_id: "TaskId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.completed_at #=> Time
    #   resp.created_at #=> Time
    #   resp.description #=> String
    #   resp.last_updated_at #=> Time
    #   resp.state #=> String, one of "IN_PROGRESS", "CANCELED", "COMPLETED"
    #   resp.tags #=> Hash
    #   resp.tags["String"] #=> String
    #   resp.targets #=> Array
    #   resp.targets[0] #=> String
    #   resp.task_arn #=> String
    #   resp.task_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snow-device-management-2021-08-04/DescribeTask AWS API Documentation
    #
    # @overload describe_task(params = {})
    # @param [Hash] params ({})
    def describe_task(params = {}, options = {})
      req = build_request(:describe_task, params)
      req.send_request(options)
    end

    # Returns a list of the Amazon Web Services resources available for a
    # device. Currently, Amazon EC2 instances are the only supported
    # resource type.
    #
    # @option params [required, String] :managed_device_id
    #   The ID of the managed device that you are listing the resources of.
    #
    # @option params [Integer] :max_results
    #   The maximum number of resources per page.
    #
    # @option params [String] :next_token
    #   A pagination token to continue to the next page of results.
    #
    # @option params [String] :type
    #   A structure used to filter the results by type of resource.
    #
    # @return [Types::ListDeviceResourcesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDeviceResourcesOutput#next_token #next_token} => String
    #   * {Types::ListDeviceResourcesOutput#resources #resources} => Array&lt;Types::ResourceSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_device_resources({
    #     managed_device_id: "ManagedDeviceId", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #     type: "ListDeviceResourcesInputTypeString",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.resources #=> Array
    #   resp.resources[0].arn #=> String
    #   resp.resources[0].id #=> String
    #   resp.resources[0].resource_type #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snow-device-management-2021-08-04/ListDeviceResources AWS API Documentation
    #
    # @overload list_device_resources(params = {})
    # @param [Hash] params ({})
    def list_device_resources(params = {}, options = {})
      req = build_request(:list_device_resources, params)
      req.send_request(options)
    end

    # Returns a list of all devices on your Amazon Web Services account that
    # have Amazon Web Services Snow Device Management enabled in the Amazon
    # Web Services Region where the command is run.
    #
    # @option params [String] :job_id
    #   The ID of the job used to order the device.
    #
    # @option params [Integer] :max_results
    #   The maximum number of devices to list per page.
    #
    # @option params [String] :next_token
    #   A pagination token to continue to the next page of results.
    #
    # @return [Types::ListDevicesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDevicesOutput#devices #devices} => Array&lt;Types::DeviceSummary&gt;
    #   * {Types::ListDevicesOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_devices({
    #     job_id: "JobId",
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.devices #=> Array
    #   resp.devices[0].associated_with_job #=> String
    #   resp.devices[0].managed_device_arn #=> String
    #   resp.devices[0].managed_device_id #=> String
    #   resp.devices[0].tags #=> Hash
    #   resp.devices[0].tags["String"] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snow-device-management-2021-08-04/ListDevices AWS API Documentation
    #
    # @overload list_devices(params = {})
    # @param [Hash] params ({})
    def list_devices(params = {}, options = {})
      req = build_request(:list_devices, params)
      req.send_request(options)
    end

    # Returns the status of tasks for one or more target devices.
    #
    # @option params [Integer] :max_results
    #   The maximum number of tasks to list per page.
    #
    # @option params [String] :next_token
    #   A pagination token to continue to the next page of tasks.
    #
    # @option params [String] :state
    #   A structure used to filter the tasks by their current state.
    #
    # @option params [required, String] :task_id
    #   The ID of the task.
    #
    # @return [Types::ListExecutionsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListExecutionsOutput#executions #executions} => Array&lt;Types::ExecutionSummary&gt;
    #   * {Types::ListExecutionsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_executions({
    #     max_results: 1,
    #     next_token: "NextToken",
    #     state: "QUEUED", # accepts QUEUED, IN_PROGRESS, CANCELED, FAILED, SUCCEEDED, REJECTED, TIMED_OUT
    #     task_id: "TaskId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.executions #=> Array
    #   resp.executions[0].execution_id #=> String
    #   resp.executions[0].managed_device_id #=> String
    #   resp.executions[0].state #=> String, one of "QUEUED", "IN_PROGRESS", "CANCELED", "FAILED", "SUCCEEDED", "REJECTED", "TIMED_OUT"
    #   resp.executions[0].task_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snow-device-management-2021-08-04/ListExecutions AWS API Documentation
    #
    # @overload list_executions(params = {})
    # @param [Hash] params ({})
    def list_executions(params = {}, options = {})
      req = build_request(:list_executions, params)
      req.send_request(options)
    end

    # Returns a list of tags for a managed device or task.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the device or task.
    #
    # @return [Types::ListTagsForResourceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceOutput#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["String"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snow-device-management-2021-08-04/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Returns a list of tasks that can be filtered by state.
    #
    # @option params [Integer] :max_results
    #   The maximum number of tasks per page.
    #
    # @option params [String] :next_token
    #   A pagination token to continue to the next page of tasks.
    #
    # @option params [String] :state
    #   A structure used to filter the list of tasks.
    #
    # @return [Types::ListTasksOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTasksOutput#next_token #next_token} => String
    #   * {Types::ListTasksOutput#tasks #tasks} => Array&lt;Types::TaskSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tasks({
    #     max_results: 1,
    #     next_token: "NextToken",
    #     state: "IN_PROGRESS", # accepts IN_PROGRESS, CANCELED, COMPLETED
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.tasks #=> Array
    #   resp.tasks[0].state #=> String, one of "IN_PROGRESS", "CANCELED", "COMPLETED"
    #   resp.tasks[0].tags #=> Hash
    #   resp.tasks[0].tags["String"] #=> String
    #   resp.tasks[0].task_arn #=> String
    #   resp.tasks[0].task_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snow-device-management-2021-08-04/ListTasks AWS API Documentation
    #
    # @overload list_tasks(params = {})
    # @param [Hash] params ({})
    def list_tasks(params = {}, options = {})
      req = build_request(:list_tasks, params)
      req.send_request(options)
    end

    # Adds or replaces tags on a device or task.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the device or task.
    #
    # @option params [required, Hash<String,String>] :tags
    #   Optional metadata that you assign to a resource. You can use tags to
    #   categorize a resource in different ways, such as by purpose, owner, or
    #   environment.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "String", # required
    #     tags: { # required
    #       "String" => "String",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snow-device-management-2021-08-04/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes a tag from a device or task.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the device or task.
    #
    # @option params [required, Array<String>] :tag_keys
    #   Optional metadata that you assign to a resource. You can use tags to
    #   categorize a resource in different ways, such as by purpose, owner, or
    #   environment.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "String", # required
    #     tag_keys: ["String"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snow-device-management-2021-08-04/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
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
      context[:gem_name] = 'aws-sdk-snowdevicemanagement'
      context[:gem_version] = '1.14.0'
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
