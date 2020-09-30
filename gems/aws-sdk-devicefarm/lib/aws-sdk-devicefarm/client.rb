# frozen_string_literal: true

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
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/json_rpc.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:devicefarm)

module Aws::DeviceFarm
  # An API client for DeviceFarm.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::DeviceFarm::Client.new(
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

    @identifier = :devicefarm

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
    add_plugin(Aws::Plugins::SignatureV4)
    add_plugin(Aws::Plugins::Protocols::JsonRpc)

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
    #       enable retries and extended timeouts.
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
    #   @option options [Boolean] :disable_host_prefix_injection (false)
    #     Set to true to disable SDK automatically adding host prefix
    #     to default service endpoint when available.
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
    #   @option options [String] :secret_access_key
    #
    #   @option options [String] :session_token
    #
    #   @option options [Boolean] :simple_json (false)
    #     Disables request parameter conversion, validation, and formatting.
    #     Also disable response data type conversions. This option is useful
    #     when you want to ensure the highest level of performance by
    #     avoiding overhead of walking request parameters and response data
    #     structures.
    #
    #     When `:simple_json` is enabled, the request parameters hash must
    #     be formatted exactly as the DynamoDB API expects.
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
    #   @option options [Boolean] :validate_params (true)
    #     When `true`, request parameters are validated before
    #     sending the request.
    #
    #   @option options [URI::HTTP,String] :http_proxy A proxy to send
    #     requests through.  Formatted like 'http://proxy.com:123'.
    #
    #   @option options [Float] :http_open_timeout (15) The number of
    #     seconds to wait when opening a HTTP session before raising a
    #     `Timeout::Error`.
    #
    #   @option options [Integer] :http_read_timeout (60) The default
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

    # Creates a device pool.
    #
    # @option params [required, String] :project_arn
    #   The ARN of the project for the device pool.
    #
    # @option params [required, String] :name
    #   The device pool's name.
    #
    # @option params [String] :description
    #   The device pool's description.
    #
    # @option params [required, Array<Types::Rule>] :rules
    #   The device pool's rules.
    #
    # @option params [Integer] :max_devices
    #   The number of devices that Device Farm can add to your device pool.
    #   Device Farm adds devices that are available and meet the criteria that
    #   you assign for the `rules` parameter. Depending on how many devices
    #   meet these constraints, your device pool might contain fewer devices
    #   than the value for this parameter.
    #
    #   By specifying the maximum number of devices, you can control the costs
    #   that you incur by running tests.
    #
    # @return [Types::CreateDevicePoolResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDevicePoolResult#device_pool #device_pool} => Types::DevicePool
    #
    #
    # @example Example: To create a new device pool
    #
    #   # The following example creates a new device pool named MyDevicePool inside an existing project.
    #
    #   resp = client.create_device_pool({
    #     name: "MyDevicePool", # A device pool contains related devices, such as devices that run only on Android or that run only on iOS.
    #     description: "My Android devices", 
    #     project_arn: "arn:aws:devicefarm:us-west-2:123456789101:project:EXAMPLE-GUID-123-456", # You can get the project ARN by using the list-projects CLI command.
    #     rules: [
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     device_pool: {
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_device_pool({
    #     project_arn: "AmazonResourceName", # required
    #     name: "Name", # required
    #     description: "Message",
    #     rules: [ # required
    #       {
    #         attribute: "ARN", # accepts ARN, PLATFORM, FORM_FACTOR, MANUFACTURER, REMOTE_ACCESS_ENABLED, REMOTE_DEBUG_ENABLED, APPIUM_VERSION, INSTANCE_ARN, INSTANCE_LABELS, FLEET_TYPE, OS_VERSION, MODEL, AVAILABILITY
    #         operator: "EQUALS", # accepts EQUALS, LESS_THAN, LESS_THAN_OR_EQUALS, GREATER_THAN, GREATER_THAN_OR_EQUALS, IN, NOT_IN, CONTAINS
    #         value: "String",
    #       },
    #     ],
    #     max_devices: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.device_pool.arn #=> String
    #   resp.device_pool.name #=> String
    #   resp.device_pool.description #=> String
    #   resp.device_pool.type #=> String, one of "CURATED", "PRIVATE"
    #   resp.device_pool.rules #=> Array
    #   resp.device_pool.rules[0].attribute #=> String, one of "ARN", "PLATFORM", "FORM_FACTOR", "MANUFACTURER", "REMOTE_ACCESS_ENABLED", "REMOTE_DEBUG_ENABLED", "APPIUM_VERSION", "INSTANCE_ARN", "INSTANCE_LABELS", "FLEET_TYPE", "OS_VERSION", "MODEL", "AVAILABILITY"
    #   resp.device_pool.rules[0].operator #=> String, one of "EQUALS", "LESS_THAN", "LESS_THAN_OR_EQUALS", "GREATER_THAN", "GREATER_THAN_OR_EQUALS", "IN", "NOT_IN", "CONTAINS"
    #   resp.device_pool.rules[0].value #=> String
    #   resp.device_pool.max_devices #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devicefarm-2015-06-23/CreateDevicePool AWS API Documentation
    #
    # @overload create_device_pool(params = {})
    # @param [Hash] params ({})
    def create_device_pool(params = {}, options = {})
      req = build_request(:create_device_pool, params)
      req.send_request(options)
    end

    # Creates a profile that can be applied to one or more private fleet
    # device instances.
    #
    # @option params [required, String] :name
    #   The name of your instance profile.
    #
    # @option params [String] :description
    #   The description of your instance profile.
    #
    # @option params [Boolean] :package_cleanup
    #   When set to `true`, Device Farm removes app packages after a test run.
    #   The default value is `false` for private devices.
    #
    # @option params [Array<String>] :exclude_app_packages_from_cleanup
    #   An array of strings that specifies the list of app packages that
    #   should not be cleaned up from the device after a test run.
    #
    #   The list of packages is considered only if you set `packageCleanup` to
    #   `true`.
    #
    # @option params [Boolean] :reboot_after_use
    #   When set to `true`, Device Farm reboots the instance after a test run.
    #   The default value is `true`.
    #
    # @return [Types::CreateInstanceProfileResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateInstanceProfileResult#instance_profile #instance_profile} => Types::InstanceProfile
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_instance_profile({
    #     name: "Name", # required
    #     description: "Message",
    #     package_cleanup: false,
    #     exclude_app_packages_from_cleanup: ["String"],
    #     reboot_after_use: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.instance_profile.arn #=> String
    #   resp.instance_profile.package_cleanup #=> Boolean
    #   resp.instance_profile.exclude_app_packages_from_cleanup #=> Array
    #   resp.instance_profile.exclude_app_packages_from_cleanup[0] #=> String
    #   resp.instance_profile.reboot_after_use #=> Boolean
    #   resp.instance_profile.name #=> String
    #   resp.instance_profile.description #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devicefarm-2015-06-23/CreateInstanceProfile AWS API Documentation
    #
    # @overload create_instance_profile(params = {})
    # @param [Hash] params ({})
    def create_instance_profile(params = {}, options = {})
      req = build_request(:create_instance_profile, params)
      req.send_request(options)
    end

    # Creates a network profile.
    #
    # @option params [required, String] :project_arn
    #   The Amazon Resource Name (ARN) of the project for which you want to
    #   create a network profile.
    #
    # @option params [required, String] :name
    #   The name for the new network profile.
    #
    # @option params [String] :description
    #   The description of the network profile.
    #
    # @option params [String] :type
    #   The type of network profile to create. Valid values are listed here.
    #
    # @option params [Integer] :uplink_bandwidth_bits
    #   The data throughput rate in bits per second, as an integer from 0 to
    #   104857600.
    #
    # @option params [Integer] :downlink_bandwidth_bits
    #   The data throughput rate in bits per second, as an integer from 0 to
    #   104857600.
    #
    # @option params [Integer] :uplink_delay_ms
    #   Delay time for all packets to destination in milliseconds as an
    #   integer from 0 to 2000.
    #
    # @option params [Integer] :downlink_delay_ms
    #   Delay time for all packets to destination in milliseconds as an
    #   integer from 0 to 2000.
    #
    # @option params [Integer] :uplink_jitter_ms
    #   Time variation in the delay of received packets in milliseconds as an
    #   integer from 0 to 2000.
    #
    # @option params [Integer] :downlink_jitter_ms
    #   Time variation in the delay of received packets in milliseconds as an
    #   integer from 0 to 2000.
    #
    # @option params [Integer] :uplink_loss_percent
    #   Proportion of transmitted packets that fail to arrive from 0 to 100
    #   percent.
    #
    # @option params [Integer] :downlink_loss_percent
    #   Proportion of received packets that fail to arrive from 0 to 100
    #   percent.
    #
    # @return [Types::CreateNetworkProfileResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateNetworkProfileResult#network_profile #network_profile} => Types::NetworkProfile
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_network_profile({
    #     project_arn: "AmazonResourceName", # required
    #     name: "Name", # required
    #     description: "Message",
    #     type: "CURATED", # accepts CURATED, PRIVATE
    #     uplink_bandwidth_bits: 1,
    #     downlink_bandwidth_bits: 1,
    #     uplink_delay_ms: 1,
    #     downlink_delay_ms: 1,
    #     uplink_jitter_ms: 1,
    #     downlink_jitter_ms: 1,
    #     uplink_loss_percent: 1,
    #     downlink_loss_percent: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.network_profile.arn #=> String
    #   resp.network_profile.name #=> String
    #   resp.network_profile.description #=> String
    #   resp.network_profile.type #=> String, one of "CURATED", "PRIVATE"
    #   resp.network_profile.uplink_bandwidth_bits #=> Integer
    #   resp.network_profile.downlink_bandwidth_bits #=> Integer
    #   resp.network_profile.uplink_delay_ms #=> Integer
    #   resp.network_profile.downlink_delay_ms #=> Integer
    #   resp.network_profile.uplink_jitter_ms #=> Integer
    #   resp.network_profile.downlink_jitter_ms #=> Integer
    #   resp.network_profile.uplink_loss_percent #=> Integer
    #   resp.network_profile.downlink_loss_percent #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devicefarm-2015-06-23/CreateNetworkProfile AWS API Documentation
    #
    # @overload create_network_profile(params = {})
    # @param [Hash] params ({})
    def create_network_profile(params = {}, options = {})
      req = build_request(:create_network_profile, params)
      req.send_request(options)
    end

    # Creates a project.
    #
    # @option params [required, String] :name
    #   The project's name.
    #
    # @option params [Integer] :default_job_timeout_minutes
    #   Sets the execution timeout value (in minutes) for a project. All test
    #   runs in this project use the specified execution timeout value unless
    #   overridden when scheduling a run.
    #
    # @return [Types::CreateProjectResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateProjectResult#project #project} => Types::Project
    #
    #
    # @example Example: To create a new project
    #
    #   # The following example creates a new project named MyProject.
    #
    #   resp = client.create_project({
    #     name: "MyProject", # A project in Device Farm is a workspace that contains test runs. A run is a test of a single app against one or more devices.
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     project: {
    #       name: "MyProject", 
    #       arn: "arn:aws:devicefarm:us-west-2:123456789101:project:5e01a8c7-c861-4c0a-b1d5-12345EXAMPLE", 
    #       created: Time.parse("1472660939.152"), 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_project({
    #     name: "Name", # required
    #     default_job_timeout_minutes: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.project.arn #=> String
    #   resp.project.name #=> String
    #   resp.project.default_job_timeout_minutes #=> Integer
    #   resp.project.created #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devicefarm-2015-06-23/CreateProject AWS API Documentation
    #
    # @overload create_project(params = {})
    # @param [Hash] params ({})
    def create_project(params = {}, options = {})
      req = build_request(:create_project, params)
      req.send_request(options)
    end

    # Specifies and starts a remote access session.
    #
    # @option params [required, String] :project_arn
    #   The Amazon Resource Name (ARN) of the project for which you want to
    #   create a remote access session.
    #
    # @option params [required, String] :device_arn
    #   The ARN of the device for which you want to create a remote access
    #   session.
    #
    # @option params [String] :instance_arn
    #   The Amazon Resource Name (ARN) of the device instance for which you
    #   want to create a remote access session.
    #
    # @option params [String] :ssh_public_key
    #   Ignored. The public key of the `ssh` key pair you want to use for
    #   connecting to remote devices in your remote debugging session. This
    #   key is required only if `remoteDebugEnabled` is set to `true`.
    #
    #   Remote debugging is [no longer supported][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/devicefarm/latest/developerguide/history.html
    #
    # @option params [Boolean] :remote_debug_enabled
    #   Set to `true` if you want to access devices remotely for debugging in
    #   your remote access session.
    #
    #   Remote debugging is [no longer supported][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/devicefarm/latest/developerguide/history.html
    #
    # @option params [Boolean] :remote_record_enabled
    #   Set to `true` to enable remote recording for the remote access
    #   session.
    #
    # @option params [String] :remote_record_app_arn
    #   The Amazon Resource Name (ARN) for the app to be recorded in the
    #   remote access session.
    #
    # @option params [String] :name
    #   The name of the remote access session to create.
    #
    # @option params [String] :client_id
    #   Unique identifier for the client. If you want access to multiple
    #   devices on the same client, you should pass the same `clientId` value
    #   in each call to `CreateRemoteAccessSession`. This identifier is
    #   required only if `remoteDebugEnabled` is set to `true`.
    #
    #   Remote debugging is [no longer supported][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/devicefarm/latest/developerguide/history.html
    #
    # @option params [Types::CreateRemoteAccessSessionConfiguration] :configuration
    #   The configuration information for the remote access session request.
    #
    # @option params [String] :interaction_mode
    #   The interaction mode of the remote access session. Valid values are:
    #
    #   * INTERACTIVE: You can interact with the iOS device by viewing,
    #     touching, and rotating the screen. You cannot run XCUITest
    #     framework-based tests in this mode.
    #
    #   * NO\_VIDEO: You are connected to the device, but cannot interact with
    #     it or view the screen. This mode has the fastest test execution
    #     speed. You can run XCUITest framework-based tests in this mode.
    #
    #   * VIDEO\_ONLY: You can view the screen, but cannot touch or rotate it.
    #     You can run XCUITest framework-based tests and watch the screen in
    #     this mode.
    #
    # @option params [Boolean] :skip_app_resign
    #   When set to `true`, for private devices, Device Farm does not sign
    #   your app again. For public devices, Device Farm always signs your apps
    #   again.
    #
    #   For more information on how Device Farm modifies your uploads during
    #   tests, see [Do you modify my app?][1]
    #
    #
    #
    #   [1]: https://aws.amazon.com/device-farm/faq/
    #
    # @return [Types::CreateRemoteAccessSessionResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateRemoteAccessSessionResult#remote_access_session #remote_access_session} => Types::RemoteAccessSession
    #
    #
    # @example Example: To create a remote access session
    #
    #   # The following example creates a remote access session named MySession.
    #
    #   resp = client.create_remote_access_session({
    #     name: "MySession", 
    #     configuration: {
    #       billing_method: "METERED", 
    #     }, 
    #     device_arn: "arn:aws:devicefarm:us-west-2::device:123EXAMPLE", # You can get the device ARN by using the list-devices CLI command.
    #     project_arn: "arn:aws:devicefarm:us-west-2:123456789101:project:EXAMPLE-GUID-123-456", # You can get the project ARN by using the list-projects CLI command.
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     remote_access_session: {
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_remote_access_session({
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
    #       billing_method: "METERED", # accepts METERED, UNMETERED
    #       vpce_configuration_arns: ["AmazonResourceName"],
    #     },
    #     interaction_mode: "INTERACTIVE", # accepts INTERACTIVE, NO_VIDEO, VIDEO_ONLY
    #     skip_app_resign: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.remote_access_session.arn #=> String
    #   resp.remote_access_session.name #=> String
    #   resp.remote_access_session.created #=> Time
    #   resp.remote_access_session.status #=> String, one of "PENDING", "PENDING_CONCURRENCY", "PENDING_DEVICE", "PROCESSING", "SCHEDULING", "PREPARING", "RUNNING", "COMPLETED", "STOPPING"
    #   resp.remote_access_session.result #=> String, one of "PENDING", "PASSED", "WARNED", "FAILED", "SKIPPED", "ERRORED", "STOPPED"
    #   resp.remote_access_session.message #=> String
    #   resp.remote_access_session.started #=> Time
    #   resp.remote_access_session.stopped #=> Time
    #   resp.remote_access_session.device.arn #=> String
    #   resp.remote_access_session.device.name #=> String
    #   resp.remote_access_session.device.manufacturer #=> String
    #   resp.remote_access_session.device.model #=> String
    #   resp.remote_access_session.device.model_id #=> String
    #   resp.remote_access_session.device.form_factor #=> String, one of "PHONE", "TABLET"
    #   resp.remote_access_session.device.platform #=> String, one of "ANDROID", "IOS"
    #   resp.remote_access_session.device.os #=> String
    #   resp.remote_access_session.device.cpu.frequency #=> String
    #   resp.remote_access_session.device.cpu.architecture #=> String
    #   resp.remote_access_session.device.cpu.clock #=> Float
    #   resp.remote_access_session.device.resolution.width #=> Integer
    #   resp.remote_access_session.device.resolution.height #=> Integer
    #   resp.remote_access_session.device.heap_size #=> Integer
    #   resp.remote_access_session.device.memory #=> Integer
    #   resp.remote_access_session.device.image #=> String
    #   resp.remote_access_session.device.carrier #=> String
    #   resp.remote_access_session.device.radio #=> String
    #   resp.remote_access_session.device.remote_access_enabled #=> Boolean
    #   resp.remote_access_session.device.remote_debug_enabled #=> Boolean
    #   resp.remote_access_session.device.fleet_type #=> String
    #   resp.remote_access_session.device.fleet_name #=> String
    #   resp.remote_access_session.device.instances #=> Array
    #   resp.remote_access_session.device.instances[0].arn #=> String
    #   resp.remote_access_session.device.instances[0].device_arn #=> String
    #   resp.remote_access_session.device.instances[0].labels #=> Array
    #   resp.remote_access_session.device.instances[0].labels[0] #=> String
    #   resp.remote_access_session.device.instances[0].status #=> String, one of "IN_USE", "PREPARING", "AVAILABLE", "NOT_AVAILABLE"
    #   resp.remote_access_session.device.instances[0].udid #=> String
    #   resp.remote_access_session.device.instances[0].instance_profile.arn #=> String
    #   resp.remote_access_session.device.instances[0].instance_profile.package_cleanup #=> Boolean
    #   resp.remote_access_session.device.instances[0].instance_profile.exclude_app_packages_from_cleanup #=> Array
    #   resp.remote_access_session.device.instances[0].instance_profile.exclude_app_packages_from_cleanup[0] #=> String
    #   resp.remote_access_session.device.instances[0].instance_profile.reboot_after_use #=> Boolean
    #   resp.remote_access_session.device.instances[0].instance_profile.name #=> String
    #   resp.remote_access_session.device.instances[0].instance_profile.description #=> String
    #   resp.remote_access_session.device.availability #=> String, one of "TEMPORARY_NOT_AVAILABLE", "BUSY", "AVAILABLE", "HIGHLY_AVAILABLE"
    #   resp.remote_access_session.instance_arn #=> String
    #   resp.remote_access_session.remote_debug_enabled #=> Boolean
    #   resp.remote_access_session.remote_record_enabled #=> Boolean
    #   resp.remote_access_session.remote_record_app_arn #=> String
    #   resp.remote_access_session.host_address #=> String
    #   resp.remote_access_session.client_id #=> String
    #   resp.remote_access_session.billing_method #=> String, one of "METERED", "UNMETERED"
    #   resp.remote_access_session.device_minutes.total #=> Float
    #   resp.remote_access_session.device_minutes.metered #=> Float
    #   resp.remote_access_session.device_minutes.unmetered #=> Float
    #   resp.remote_access_session.endpoint #=> String
    #   resp.remote_access_session.device_udid #=> String
    #   resp.remote_access_session.interaction_mode #=> String, one of "INTERACTIVE", "NO_VIDEO", "VIDEO_ONLY"
    #   resp.remote_access_session.skip_app_resign #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devicefarm-2015-06-23/CreateRemoteAccessSession AWS API Documentation
    #
    # @overload create_remote_access_session(params = {})
    # @param [Hash] params ({})
    def create_remote_access_session(params = {}, options = {})
      req = build_request(:create_remote_access_session, params)
      req.send_request(options)
    end

    # Creates a Selenium testing project. Projects are used to track
    # TestGridSession instances.
    #
    # @option params [required, String] :name
    #   Human-readable name of the Selenium testing project.
    #
    # @option params [String] :description
    #   Human-readable description of the project.
    #
    # @return [Types::CreateTestGridProjectResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateTestGridProjectResult#test_grid_project #test_grid_project} => Types::TestGridProject
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_test_grid_project({
    #     name: "ResourceName", # required
    #     description: "ResourceDescription",
    #   })
    #
    # @example Response structure
    #
    #   resp.test_grid_project.arn #=> String
    #   resp.test_grid_project.name #=> String
    #   resp.test_grid_project.description #=> String
    #   resp.test_grid_project.created #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devicefarm-2015-06-23/CreateTestGridProject AWS API Documentation
    #
    # @overload create_test_grid_project(params = {})
    # @param [Hash] params ({})
    def create_test_grid_project(params = {}, options = {})
      req = build_request(:create_test_grid_project, params)
      req.send_request(options)
    end

    # Creates a signed, short-term URL that can be passed to a Selenium
    # `RemoteWebDriver` constructor.
    #
    # @option params [required, String] :project_arn
    #   ARN (from CreateTestGridProject or ListTestGridProjects) to associate
    #   with the short-term URL.
    #
    # @option params [required, Integer] :expires_in_seconds
    #   Lifetime, in seconds, of the URL.
    #
    # @return [Types::CreateTestGridUrlResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateTestGridUrlResult#url #url} => String
    #   * {Types::CreateTestGridUrlResult#expires #expires} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_test_grid_url({
    #     project_arn: "DeviceFarmArn", # required
    #     expires_in_seconds: 1, # required
    #   })
    #
    # @example Response structure
    #
    #   resp.url #=> String
    #   resp.expires #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devicefarm-2015-06-23/CreateTestGridUrl AWS API Documentation
    #
    # @overload create_test_grid_url(params = {})
    # @param [Hash] params ({})
    def create_test_grid_url(params = {}, options = {})
      req = build_request(:create_test_grid_url, params)
      req.send_request(options)
    end

    # Uploads an app or test scripts.
    #
    # @option params [required, String] :project_arn
    #   The ARN of the project for the upload.
    #
    # @option params [required, String] :name
    #   The upload's file name. The name should not contain any forward
    #   slashes (`/`). If you are uploading an iOS app, the file name must end
    #   with the `.ipa` extension. If you are uploading an Android app, the
    #   file name must end with the `.apk` extension. For all others, the file
    #   name must end with the `.zip` file extension.
    #
    # @option params [required, String] :type
    #   The upload's upload type.
    #
    #   Must be one of the following values:
    #
    #   * ANDROID\_APP
    #
    #   * IOS\_APP
    #
    #   * WEB\_APP
    #
    #   * EXTERNAL\_DATA
    #
    #   * APPIUM\_JAVA\_JUNIT\_TEST\_PACKAGE
    #
    #   * APPIUM\_JAVA\_TESTNG\_TEST\_PACKAGE
    #
    #   * APPIUM\_PYTHON\_TEST\_PACKAGE
    #
    #   * APPIUM\_NODE\_TEST\_PACKAGE
    #
    #   * APPIUM\_RUBY\_TEST\_PACKAGE
    #
    #   * APPIUM\_WEB\_JAVA\_JUNIT\_TEST\_PACKAGE
    #
    #   * APPIUM\_WEB\_JAVA\_TESTNG\_TEST\_PACKAGE
    #
    #   * APPIUM\_WEB\_PYTHON\_TEST\_PACKAGE
    #
    #   * APPIUM\_WEB\_NODE\_TEST\_PACKAGE
    #
    #   * APPIUM\_WEB\_RUBY\_TEST\_PACKAGE
    #
    #   * CALABASH\_TEST\_PACKAGE
    #
    #   * INSTRUMENTATION\_TEST\_PACKAGE
    #
    #   * UIAUTOMATION\_TEST\_PACKAGE
    #
    #   * UIAUTOMATOR\_TEST\_PACKAGE
    #
    #   * XCTEST\_TEST\_PACKAGE
    #
    #   * XCTEST\_UI\_TEST\_PACKAGE
    #
    #   * APPIUM\_JAVA\_JUNIT\_TEST\_SPEC
    #
    #   * APPIUM\_JAVA\_TESTNG\_TEST\_SPEC
    #
    #   * APPIUM\_PYTHON\_TEST\_SPEC
    #
    #   * APPIUM\_NODE\_TEST\_SPEC
    #
    #   * APPIUM\_RUBY\_TEST\_SPEC
    #
    #   * APPIUM\_WEB\_JAVA\_JUNIT\_TEST\_SPEC
    #
    #   * APPIUM\_WEB\_JAVA\_TESTNG\_TEST\_SPEC
    #
    #   * APPIUM\_WEB\_PYTHON\_TEST\_SPEC
    #
    #   * APPIUM\_WEB\_NODE\_TEST\_SPEC
    #
    #   * APPIUM\_WEB\_RUBY\_TEST\_SPEC
    #
    #   * INSTRUMENTATION\_TEST\_SPEC
    #
    #   * XCTEST\_UI\_TEST\_SPEC
    #
    #   If you call `CreateUpload` with `WEB_APP` specified, AWS Device Farm
    #   throws an `ArgumentException` error.
    #
    # @option params [String] :content_type
    #   The upload's content type (for example, `application/octet-stream`).
    #
    # @return [Types::CreateUploadResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateUploadResult#upload #upload} => Types::Upload
    #
    #
    # @example Example: To create a new test package upload
    #
    #   # The following example creates a new Appium Python test package upload inside an existing project.
    #
    #   resp = client.create_upload({
    #     name: "MyAppiumPythonUpload", 
    #     type: "APPIUM_PYTHON_TEST_PACKAGE", 
    #     project_arn: "arn:aws:devicefarm:us-west-2:123456789101:project:EXAMPLE-GUID-123-456", # You can get the project ARN by using the list-projects CLI command.
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     upload: {
    #       name: "MyAppiumPythonUpload", 
    #       type: "APPIUM_PYTHON_TEST_PACKAGE", 
    #       arn: "arn:aws:devicefarm:us-west-2:123456789101:upload:5e01a8c7-c861-4c0a-b1d5-5ec6e6c6dd23/b5340a65-3da7-4da6-a26e-12345EXAMPLE", 
    #       created: Time.parse("1472661404.186"), 
    #       status: "INITIALIZED", 
    #       url: "https://prod-us-west-2-uploads.s3-us-west-2.amazonaws.com/arn%3Aaws%3Adevicefarm%3Aus-west-2%3A123456789101%3Aproject%3A5e01a8c7-c861-4c0a-b1d5-12345EXAMPLE/uploads/arn%3Aaws%3Adevicefarm%3Aus-west-2%3A123456789101%3Aupload%3A5e01a8c7-c861-4c0a-b1d5-5ec6e6c6dd23/b5340a65-3da7-4da6-a26e-12345EXAMPLE/MyAppiumPythonUpload?AWSAccessKeyId=1234567891011EXAMPLE&Expires=1472747804&Signature=1234567891011EXAMPLE", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_upload({
    #     project_arn: "AmazonResourceName", # required
    #     name: "Name", # required
    #     type: "ANDROID_APP", # required, accepts ANDROID_APP, IOS_APP, WEB_APP, EXTERNAL_DATA, APPIUM_JAVA_JUNIT_TEST_PACKAGE, APPIUM_JAVA_TESTNG_TEST_PACKAGE, APPIUM_PYTHON_TEST_PACKAGE, APPIUM_NODE_TEST_PACKAGE, APPIUM_RUBY_TEST_PACKAGE, APPIUM_WEB_JAVA_JUNIT_TEST_PACKAGE, APPIUM_WEB_JAVA_TESTNG_TEST_PACKAGE, APPIUM_WEB_PYTHON_TEST_PACKAGE, APPIUM_WEB_NODE_TEST_PACKAGE, APPIUM_WEB_RUBY_TEST_PACKAGE, CALABASH_TEST_PACKAGE, INSTRUMENTATION_TEST_PACKAGE, UIAUTOMATION_TEST_PACKAGE, UIAUTOMATOR_TEST_PACKAGE, XCTEST_TEST_PACKAGE, XCTEST_UI_TEST_PACKAGE, APPIUM_JAVA_JUNIT_TEST_SPEC, APPIUM_JAVA_TESTNG_TEST_SPEC, APPIUM_PYTHON_TEST_SPEC, APPIUM_NODE_TEST_SPEC, APPIUM_RUBY_TEST_SPEC, APPIUM_WEB_JAVA_JUNIT_TEST_SPEC, APPIUM_WEB_JAVA_TESTNG_TEST_SPEC, APPIUM_WEB_PYTHON_TEST_SPEC, APPIUM_WEB_NODE_TEST_SPEC, APPIUM_WEB_RUBY_TEST_SPEC, INSTRUMENTATION_TEST_SPEC, XCTEST_UI_TEST_SPEC
    #     content_type: "ContentType",
    #   })
    #
    # @example Response structure
    #
    #   resp.upload.arn #=> String
    #   resp.upload.name #=> String
    #   resp.upload.created #=> Time
    #   resp.upload.type #=> String, one of "ANDROID_APP", "IOS_APP", "WEB_APP", "EXTERNAL_DATA", "APPIUM_JAVA_JUNIT_TEST_PACKAGE", "APPIUM_JAVA_TESTNG_TEST_PACKAGE", "APPIUM_PYTHON_TEST_PACKAGE", "APPIUM_NODE_TEST_PACKAGE", "APPIUM_RUBY_TEST_PACKAGE", "APPIUM_WEB_JAVA_JUNIT_TEST_PACKAGE", "APPIUM_WEB_JAVA_TESTNG_TEST_PACKAGE", "APPIUM_WEB_PYTHON_TEST_PACKAGE", "APPIUM_WEB_NODE_TEST_PACKAGE", "APPIUM_WEB_RUBY_TEST_PACKAGE", "CALABASH_TEST_PACKAGE", "INSTRUMENTATION_TEST_PACKAGE", "UIAUTOMATION_TEST_PACKAGE", "UIAUTOMATOR_TEST_PACKAGE", "XCTEST_TEST_PACKAGE", "XCTEST_UI_TEST_PACKAGE", "APPIUM_JAVA_JUNIT_TEST_SPEC", "APPIUM_JAVA_TESTNG_TEST_SPEC", "APPIUM_PYTHON_TEST_SPEC", "APPIUM_NODE_TEST_SPEC", "APPIUM_RUBY_TEST_SPEC", "APPIUM_WEB_JAVA_JUNIT_TEST_SPEC", "APPIUM_WEB_JAVA_TESTNG_TEST_SPEC", "APPIUM_WEB_PYTHON_TEST_SPEC", "APPIUM_WEB_NODE_TEST_SPEC", "APPIUM_WEB_RUBY_TEST_SPEC", "INSTRUMENTATION_TEST_SPEC", "XCTEST_UI_TEST_SPEC"
    #   resp.upload.status #=> String, one of "INITIALIZED", "PROCESSING", "SUCCEEDED", "FAILED"
    #   resp.upload.url #=> String
    #   resp.upload.metadata #=> String
    #   resp.upload.content_type #=> String
    #   resp.upload.message #=> String
    #   resp.upload.category #=> String, one of "CURATED", "PRIVATE"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devicefarm-2015-06-23/CreateUpload AWS API Documentation
    #
    # @overload create_upload(params = {})
    # @param [Hash] params ({})
    def create_upload(params = {}, options = {})
      req = build_request(:create_upload, params)
      req.send_request(options)
    end

    # Creates a configuration record in Device Farm for your Amazon Virtual
    # Private Cloud (VPC) endpoint.
    #
    # @option params [required, String] :vpce_configuration_name
    #   The friendly name you give to your VPC endpoint configuration, to
    #   manage your configurations more easily.
    #
    # @option params [required, String] :vpce_service_name
    #   The name of the VPC endpoint service running in your AWS account that
    #   you want Device Farm to test.
    #
    # @option params [required, String] :service_dns_name
    #   The DNS name of the service running in your VPC that you want Device
    #   Farm to test.
    #
    # @option params [String] :vpce_configuration_description
    #   An optional description that provides details about your VPC endpoint
    #   configuration.
    #
    # @return [Types::CreateVPCEConfigurationResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateVPCEConfigurationResult#vpce_configuration #vpce_configuration} => Types::VPCEConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_vpce_configuration({
    #     vpce_configuration_name: "VPCEConfigurationName", # required
    #     vpce_service_name: "VPCEServiceName", # required
    #     service_dns_name: "ServiceDnsName", # required
    #     vpce_configuration_description: "VPCEConfigurationDescription",
    #   })
    #
    # @example Response structure
    #
    #   resp.vpce_configuration.arn #=> String
    #   resp.vpce_configuration.vpce_configuration_name #=> String
    #   resp.vpce_configuration.vpce_service_name #=> String
    #   resp.vpce_configuration.service_dns_name #=> String
    #   resp.vpce_configuration.vpce_configuration_description #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devicefarm-2015-06-23/CreateVPCEConfiguration AWS API Documentation
    #
    # @overload create_vpce_configuration(params = {})
    # @param [Hash] params ({})
    def create_vpce_configuration(params = {}, options = {})
      req = build_request(:create_vpce_configuration, params)
      req.send_request(options)
    end

    # Deletes a device pool given the pool ARN. Does not allow deletion of
    # curated pools owned by the system.
    #
    # @option params [required, String] :arn
    #   Represents the Amazon Resource Name (ARN) of the Device Farm device
    #   pool to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To delete a device pool
    #
    #   # The following example deletes a specific device pool.
    #
    #   resp = client.delete_device_pool({
    #     arn: "arn:aws:devicefarm:us-west-2::devicepool:123-456-EXAMPLE-GUID", # You can get the device pool ARN by using the list-device-pools CLI command.
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_device_pool({
    #     arn: "AmazonResourceName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devicefarm-2015-06-23/DeleteDevicePool AWS API Documentation
    #
    # @overload delete_device_pool(params = {})
    # @param [Hash] params ({})
    def delete_device_pool(params = {}, options = {})
      req = build_request(:delete_device_pool, params)
      req.send_request(options)
    end

    # Deletes a profile that can be applied to one or more private device
    # instances.
    #
    # @option params [required, String] :arn
    #   The Amazon Resource Name (ARN) of the instance profile you are
    #   requesting to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_instance_profile({
    #     arn: "AmazonResourceName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devicefarm-2015-06-23/DeleteInstanceProfile AWS API Documentation
    #
    # @overload delete_instance_profile(params = {})
    # @param [Hash] params ({})
    def delete_instance_profile(params = {}, options = {})
      req = build_request(:delete_instance_profile, params)
      req.send_request(options)
    end

    # Deletes a network profile.
    #
    # @option params [required, String] :arn
    #   The ARN of the network profile to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_network_profile({
    #     arn: "AmazonResourceName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devicefarm-2015-06-23/DeleteNetworkProfile AWS API Documentation
    #
    # @overload delete_network_profile(params = {})
    # @param [Hash] params ({})
    def delete_network_profile(params = {}, options = {})
      req = build_request(:delete_network_profile, params)
      req.send_request(options)
    end

    # Deletes an AWS Device Farm project, given the project ARN.
    #
    # Deleting this resource does not stop an in-progress run.
    #
    # @option params [required, String] :arn
    #   Represents the Amazon Resource Name (ARN) of the Device Farm project
    #   to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To delete a project
    #
    #   # The following example deletes a specific project.
    #
    #   resp = client.delete_project({
    #     arn: "arn:aws:devicefarm:us-west-2:123456789101:project:EXAMPLE-GUID-123-456", # You can get the project ARN by using the list-projects CLI command.
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_project({
    #     arn: "AmazonResourceName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devicefarm-2015-06-23/DeleteProject AWS API Documentation
    #
    # @overload delete_project(params = {})
    # @param [Hash] params ({})
    def delete_project(params = {}, options = {})
      req = build_request(:delete_project, params)
      req.send_request(options)
    end

    # Deletes a completed remote access session and its results.
    #
    # @option params [required, String] :arn
    #   The Amazon Resource Name (ARN) of the session for which you want to
    #   delete remote access.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To delete a specific remote access session
    #
    #   # The following example deletes a specific remote access session.
    #
    #   resp = client.delete_remote_access_session({
    #     arn: "arn:aws:devicefarm:us-west-2:123456789101:session:EXAMPLE-GUID-123-456", # You can get the remote access session ARN by using the list-remote-access-sessions CLI command.
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_remote_access_session({
    #     arn: "AmazonResourceName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devicefarm-2015-06-23/DeleteRemoteAccessSession AWS API Documentation
    #
    # @overload delete_remote_access_session(params = {})
    # @param [Hash] params ({})
    def delete_remote_access_session(params = {}, options = {})
      req = build_request(:delete_remote_access_session, params)
      req.send_request(options)
    end

    # Deletes the run, given the run ARN.
    #
    # Deleting this resource does not stop an in-progress run.
    #
    # @option params [required, String] :arn
    #   The Amazon Resource Name (ARN) for the run to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To delete a run
    #
    #   # The following example deletes a specific test run.
    #
    #   resp = client.delete_run({
    #     arn: "arn:aws:devicefarm:us-west-2:123456789101:run:EXAMPLE-GUID-123-456", # You can get the run ARN by using the list-runs CLI command.
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_run({
    #     arn: "AmazonResourceName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devicefarm-2015-06-23/DeleteRun AWS API Documentation
    #
    # @overload delete_run(params = {})
    # @param [Hash] params ({})
    def delete_run(params = {}, options = {})
      req = build_request(:delete_run, params)
      req.send_request(options)
    end

    # Deletes a Selenium testing project and all content generated under it.
    #
    # You cannot undo this operation.
    #
    # <note markdown="1"> You cannot delete a project if it has active sessions.
    #
    #  </note>
    #
    # @option params [required, String] :project_arn
    #   The ARN of the project to delete, from CreateTestGridProject or
    #   ListTestGridProjects.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_test_grid_project({
    #     project_arn: "DeviceFarmArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devicefarm-2015-06-23/DeleteTestGridProject AWS API Documentation
    #
    # @overload delete_test_grid_project(params = {})
    # @param [Hash] params ({})
    def delete_test_grid_project(params = {}, options = {})
      req = build_request(:delete_test_grid_project, params)
      req.send_request(options)
    end

    # Deletes an upload given the upload ARN.
    #
    # @option params [required, String] :arn
    #   Represents the Amazon Resource Name (ARN) of the Device Farm upload to
    #   delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To delete a specific upload
    #
    #   # The following example deletes a specific upload.
    #
    #   resp = client.delete_upload({
    #     arn: "arn:aws:devicefarm:us-west-2:123456789101:upload:EXAMPLE-GUID-123-456", # You can get the upload ARN by using the list-uploads CLI command.
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_upload({
    #     arn: "AmazonResourceName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devicefarm-2015-06-23/DeleteUpload AWS API Documentation
    #
    # @overload delete_upload(params = {})
    # @param [Hash] params ({})
    def delete_upload(params = {}, options = {})
      req = build_request(:delete_upload, params)
      req.send_request(options)
    end

    # Deletes a configuration for your Amazon Virtual Private Cloud (VPC)
    # endpoint.
    #
    # @option params [required, String] :arn
    #   The Amazon Resource Name (ARN) of the VPC endpoint configuration you
    #   want to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_vpce_configuration({
    #     arn: "AmazonResourceName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devicefarm-2015-06-23/DeleteVPCEConfiguration AWS API Documentation
    #
    # @overload delete_vpce_configuration(params = {})
    # @param [Hash] params ({})
    def delete_vpce_configuration(params = {}, options = {})
      req = build_request(:delete_vpce_configuration, params)
      req.send_request(options)
    end

    # Returns the number of unmetered iOS or unmetered Android devices that
    # have been purchased by the account.
    #
    # @return [Types::GetAccountSettingsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAccountSettingsResult#account_settings #account_settings} => Types::AccountSettings
    #
    #
    # @example Example: To get information about account settings
    #
    #   # The following example returns information about your Device Farm account settings.
    #
    #   resp = client.get_account_settings({
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     account_settings: {
    #       aws_account_number: "123456789101", 
    #       unmetered_devices: {
    #         "ANDROID" => 1, 
    #         "IOS" => 2, 
    #       }, 
    #     }, 
    #   }
    #
    # @example Response structure
    #
    #   resp.account_settings.aws_account_number #=> String
    #   resp.account_settings.unmetered_devices #=> Hash
    #   resp.account_settings.unmetered_devices["DevicePlatform"] #=> Integer
    #   resp.account_settings.unmetered_remote_access_devices #=> Hash
    #   resp.account_settings.unmetered_remote_access_devices["DevicePlatform"] #=> Integer
    #   resp.account_settings.max_job_timeout_minutes #=> Integer
    #   resp.account_settings.trial_minutes.total #=> Float
    #   resp.account_settings.trial_minutes.remaining #=> Float
    #   resp.account_settings.max_slots #=> Hash
    #   resp.account_settings.max_slots["String"] #=> Integer
    #   resp.account_settings.default_job_timeout_minutes #=> Integer
    #   resp.account_settings.skip_app_resign #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devicefarm-2015-06-23/GetAccountSettings AWS API Documentation
    #
    # @overload get_account_settings(params = {})
    # @param [Hash] params ({})
    def get_account_settings(params = {}, options = {})
      req = build_request(:get_account_settings, params)
      req.send_request(options)
    end

    # Gets information about a unique device type.
    #
    # @option params [required, String] :arn
    #   The device type's ARN.
    #
    # @return [Types::GetDeviceResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDeviceResult#device #device} => Types::Device
    #
    #
    # @example Example: To get information about a device
    #
    #   # The following example returns information about a specific device.
    #
    #   resp = client.get_device({
    #     arn: "arn:aws:devicefarm:us-west-2::device:123EXAMPLE", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     device: {
    #       name: "LG G2 (Sprint)", 
    #       arn: "arn:aws:devicefarm:us-west-2::device:A0E6E6E1059E45918208DF75B2B7EF6C", 
    #       cpu: {
    #         architecture: "armeabi-v7a", 
    #         clock: 2265.6, 
    #         frequency: "MHz", 
    #       }, 
    #       form_factor: "PHONE", 
    #       heap_size: 256000000, 
    #       image: "75B2B7EF6C12345EXAMPLE", 
    #       manufacturer: "LG", 
    #       memory: 16000000000, 
    #       model: "G2 (Sprint)", 
    #       os: "4.2.2", 
    #       platform: "ANDROID", 
    #       resolution: {
    #         height: 1920, 
    #         width: 1080, 
    #       }, 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_device({
    #     arn: "AmazonResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.device.arn #=> String
    #   resp.device.name #=> String
    #   resp.device.manufacturer #=> String
    #   resp.device.model #=> String
    #   resp.device.model_id #=> String
    #   resp.device.form_factor #=> String, one of "PHONE", "TABLET"
    #   resp.device.platform #=> String, one of "ANDROID", "IOS"
    #   resp.device.os #=> String
    #   resp.device.cpu.frequency #=> String
    #   resp.device.cpu.architecture #=> String
    #   resp.device.cpu.clock #=> Float
    #   resp.device.resolution.width #=> Integer
    #   resp.device.resolution.height #=> Integer
    #   resp.device.heap_size #=> Integer
    #   resp.device.memory #=> Integer
    #   resp.device.image #=> String
    #   resp.device.carrier #=> String
    #   resp.device.radio #=> String
    #   resp.device.remote_access_enabled #=> Boolean
    #   resp.device.remote_debug_enabled #=> Boolean
    #   resp.device.fleet_type #=> String
    #   resp.device.fleet_name #=> String
    #   resp.device.instances #=> Array
    #   resp.device.instances[0].arn #=> String
    #   resp.device.instances[0].device_arn #=> String
    #   resp.device.instances[0].labels #=> Array
    #   resp.device.instances[0].labels[0] #=> String
    #   resp.device.instances[0].status #=> String, one of "IN_USE", "PREPARING", "AVAILABLE", "NOT_AVAILABLE"
    #   resp.device.instances[0].udid #=> String
    #   resp.device.instances[0].instance_profile.arn #=> String
    #   resp.device.instances[0].instance_profile.package_cleanup #=> Boolean
    #   resp.device.instances[0].instance_profile.exclude_app_packages_from_cleanup #=> Array
    #   resp.device.instances[0].instance_profile.exclude_app_packages_from_cleanup[0] #=> String
    #   resp.device.instances[0].instance_profile.reboot_after_use #=> Boolean
    #   resp.device.instances[0].instance_profile.name #=> String
    #   resp.device.instances[0].instance_profile.description #=> String
    #   resp.device.availability #=> String, one of "TEMPORARY_NOT_AVAILABLE", "BUSY", "AVAILABLE", "HIGHLY_AVAILABLE"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devicefarm-2015-06-23/GetDevice AWS API Documentation
    #
    # @overload get_device(params = {})
    # @param [Hash] params ({})
    def get_device(params = {}, options = {})
      req = build_request(:get_device, params)
      req.send_request(options)
    end

    # Returns information about a device instance that belongs to a private
    # device fleet.
    #
    # @option params [required, String] :arn
    #   The Amazon Resource Name (ARN) of the instance you're requesting
    #   information about.
    #
    # @return [Types::GetDeviceInstanceResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDeviceInstanceResult#device_instance #device_instance} => Types::DeviceInstance
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_device_instance({
    #     arn: "AmazonResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.device_instance.arn #=> String
    #   resp.device_instance.device_arn #=> String
    #   resp.device_instance.labels #=> Array
    #   resp.device_instance.labels[0] #=> String
    #   resp.device_instance.status #=> String, one of "IN_USE", "PREPARING", "AVAILABLE", "NOT_AVAILABLE"
    #   resp.device_instance.udid #=> String
    #   resp.device_instance.instance_profile.arn #=> String
    #   resp.device_instance.instance_profile.package_cleanup #=> Boolean
    #   resp.device_instance.instance_profile.exclude_app_packages_from_cleanup #=> Array
    #   resp.device_instance.instance_profile.exclude_app_packages_from_cleanup[0] #=> String
    #   resp.device_instance.instance_profile.reboot_after_use #=> Boolean
    #   resp.device_instance.instance_profile.name #=> String
    #   resp.device_instance.instance_profile.description #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devicefarm-2015-06-23/GetDeviceInstance AWS API Documentation
    #
    # @overload get_device_instance(params = {})
    # @param [Hash] params ({})
    def get_device_instance(params = {}, options = {})
      req = build_request(:get_device_instance, params)
      req.send_request(options)
    end

    # Gets information about a device pool.
    #
    # @option params [required, String] :arn
    #   The device pool's ARN.
    #
    # @return [Types::GetDevicePoolResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDevicePoolResult#device_pool #device_pool} => Types::DevicePool
    #
    #
    # @example Example: To get information about a device pool
    #
    #   # The following example returns information about a specific device pool, given a project ARN.
    #
    #   resp = client.get_device_pool({
    #     arn: "arn:aws:devicefarm:us-west-2:123456789101:project:EXAMPLE-GUID-123-456", # You can obtain the project ARN by using the list-projects CLI command.
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     device_pool: {
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_device_pool({
    #     arn: "AmazonResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.device_pool.arn #=> String
    #   resp.device_pool.name #=> String
    #   resp.device_pool.description #=> String
    #   resp.device_pool.type #=> String, one of "CURATED", "PRIVATE"
    #   resp.device_pool.rules #=> Array
    #   resp.device_pool.rules[0].attribute #=> String, one of "ARN", "PLATFORM", "FORM_FACTOR", "MANUFACTURER", "REMOTE_ACCESS_ENABLED", "REMOTE_DEBUG_ENABLED", "APPIUM_VERSION", "INSTANCE_ARN", "INSTANCE_LABELS", "FLEET_TYPE", "OS_VERSION", "MODEL", "AVAILABILITY"
    #   resp.device_pool.rules[0].operator #=> String, one of "EQUALS", "LESS_THAN", "LESS_THAN_OR_EQUALS", "GREATER_THAN", "GREATER_THAN_OR_EQUALS", "IN", "NOT_IN", "CONTAINS"
    #   resp.device_pool.rules[0].value #=> String
    #   resp.device_pool.max_devices #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devicefarm-2015-06-23/GetDevicePool AWS API Documentation
    #
    # @overload get_device_pool(params = {})
    # @param [Hash] params ({})
    def get_device_pool(params = {}, options = {})
      req = build_request(:get_device_pool, params)
      req.send_request(options)
    end

    # Gets information about compatibility with a device pool.
    #
    # @option params [required, String] :device_pool_arn
    #   The device pool's ARN.
    #
    # @option params [String] :app_arn
    #   The ARN of the app that is associated with the specified device pool.
    #
    # @option params [String] :test_type
    #   The test type for the specified device pool.
    #
    #   Allowed values include the following:
    #
    #   * BUILTIN\_FUZZ.
    #
    #   * BUILTIN\_EXPLORER. For Android, an app explorer that traverses an
    #     Android app, interacting with it and capturing screenshots at the
    #     same time.
    #
    #   * APPIUM\_JAVA\_JUNIT.
    #
    #   * APPIUM\_JAVA\_TESTNG.
    #
    #   * APPIUM\_PYTHON.
    #
    #   * APPIUM\_NODE.
    #
    #   * APPIUM\_RUBY.
    #
    #   * APPIUM\_WEB\_JAVA\_JUNIT.
    #
    #   * APPIUM\_WEB\_JAVA\_TESTNG.
    #
    #   * APPIUM\_WEB\_PYTHON.
    #
    #   * APPIUM\_WEB\_NODE.
    #
    #   * APPIUM\_WEB\_RUBY.
    #
    #   * CALABASH.
    #
    #   * INSTRUMENTATION.
    #
    #   * UIAUTOMATION.
    #
    #   * UIAUTOMATOR.
    #
    #   * XCTEST.
    #
    #   * XCTEST\_UI.
    #
    # @option params [Types::ScheduleRunTest] :test
    #   Information about the uploaded test to be run against the device pool.
    #
    # @option params [Types::ScheduleRunConfiguration] :configuration
    #   An object that contains information about the settings for a run.
    #
    # @return [Types::GetDevicePoolCompatibilityResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDevicePoolCompatibilityResult#compatible_devices #compatible_devices} => Array&lt;Types::DevicePoolCompatibilityResult&gt;
    #   * {Types::GetDevicePoolCompatibilityResult#incompatible_devices #incompatible_devices} => Array&lt;Types::DevicePoolCompatibilityResult&gt;
    #
    #
    # @example Example: To get information about the compatibility of a device pool
    #
    #   # The following example returns information about the compatibility of a specific device pool, given its ARN.
    #
    #   resp = client.get_device_pool_compatibility({
    #     app_arn: "arn:aws:devicefarm:us-west-2::app:123-456-EXAMPLE-GUID", 
    #     device_pool_arn: "arn:aws:devicefarm:us-west-2::devicepool:123-456-EXAMPLE-GUID", # You can get the device pool ARN by using the list-device-pools CLI command.
    #     test_type: "APPIUM_PYTHON", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     compatible_devices: [
    #     ], 
    #     incompatible_devices: [
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_device_pool_compatibility({
    #     device_pool_arn: "AmazonResourceName", # required
    #     app_arn: "AmazonResourceName",
    #     test_type: "BUILTIN_FUZZ", # accepts BUILTIN_FUZZ, BUILTIN_EXPLORER, WEB_PERFORMANCE_PROFILE, APPIUM_JAVA_JUNIT, APPIUM_JAVA_TESTNG, APPIUM_PYTHON, APPIUM_NODE, APPIUM_RUBY, APPIUM_WEB_JAVA_JUNIT, APPIUM_WEB_JAVA_TESTNG, APPIUM_WEB_PYTHON, APPIUM_WEB_NODE, APPIUM_WEB_RUBY, CALABASH, INSTRUMENTATION, UIAUTOMATION, UIAUTOMATOR, XCTEST, XCTEST_UI, REMOTE_ACCESS_RECORD, REMOTE_ACCESS_REPLAY
    #     test: {
    #       type: "BUILTIN_FUZZ", # required, accepts BUILTIN_FUZZ, BUILTIN_EXPLORER, WEB_PERFORMANCE_PROFILE, APPIUM_JAVA_JUNIT, APPIUM_JAVA_TESTNG, APPIUM_PYTHON, APPIUM_NODE, APPIUM_RUBY, APPIUM_WEB_JAVA_JUNIT, APPIUM_WEB_JAVA_TESTNG, APPIUM_WEB_PYTHON, APPIUM_WEB_NODE, APPIUM_WEB_RUBY, CALABASH, INSTRUMENTATION, UIAUTOMATION, UIAUTOMATOR, XCTEST, XCTEST_UI, REMOTE_ACCESS_RECORD, REMOTE_ACCESS_REPLAY
    #       test_package_arn: "AmazonResourceName",
    #       test_spec_arn: "AmazonResourceName",
    #       filter: "Filter",
    #       parameters: {
    #         "String" => "String",
    #       },
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
    #       customer_artifact_paths: {
    #         ios_paths: ["String"],
    #         android_paths: ["String"],
    #         device_host_paths: ["String"],
    #       },
    #       radios: {
    #         wifi: false,
    #         bluetooth: false,
    #         nfc: false,
    #         gps: false,
    #       },
    #       auxiliary_apps: ["AmazonResourceName"],
    #       billing_method: "METERED", # accepts METERED, UNMETERED
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.compatible_devices #=> Array
    #   resp.compatible_devices[0].device.arn #=> String
    #   resp.compatible_devices[0].device.name #=> String
    #   resp.compatible_devices[0].device.manufacturer #=> String
    #   resp.compatible_devices[0].device.model #=> String
    #   resp.compatible_devices[0].device.model_id #=> String
    #   resp.compatible_devices[0].device.form_factor #=> String, one of "PHONE", "TABLET"
    #   resp.compatible_devices[0].device.platform #=> String, one of "ANDROID", "IOS"
    #   resp.compatible_devices[0].device.os #=> String
    #   resp.compatible_devices[0].device.cpu.frequency #=> String
    #   resp.compatible_devices[0].device.cpu.architecture #=> String
    #   resp.compatible_devices[0].device.cpu.clock #=> Float
    #   resp.compatible_devices[0].device.resolution.width #=> Integer
    #   resp.compatible_devices[0].device.resolution.height #=> Integer
    #   resp.compatible_devices[0].device.heap_size #=> Integer
    #   resp.compatible_devices[0].device.memory #=> Integer
    #   resp.compatible_devices[0].device.image #=> String
    #   resp.compatible_devices[0].device.carrier #=> String
    #   resp.compatible_devices[0].device.radio #=> String
    #   resp.compatible_devices[0].device.remote_access_enabled #=> Boolean
    #   resp.compatible_devices[0].device.remote_debug_enabled #=> Boolean
    #   resp.compatible_devices[0].device.fleet_type #=> String
    #   resp.compatible_devices[0].device.fleet_name #=> String
    #   resp.compatible_devices[0].device.instances #=> Array
    #   resp.compatible_devices[0].device.instances[0].arn #=> String
    #   resp.compatible_devices[0].device.instances[0].device_arn #=> String
    #   resp.compatible_devices[0].device.instances[0].labels #=> Array
    #   resp.compatible_devices[0].device.instances[0].labels[0] #=> String
    #   resp.compatible_devices[0].device.instances[0].status #=> String, one of "IN_USE", "PREPARING", "AVAILABLE", "NOT_AVAILABLE"
    #   resp.compatible_devices[0].device.instances[0].udid #=> String
    #   resp.compatible_devices[0].device.instances[0].instance_profile.arn #=> String
    #   resp.compatible_devices[0].device.instances[0].instance_profile.package_cleanup #=> Boolean
    #   resp.compatible_devices[0].device.instances[0].instance_profile.exclude_app_packages_from_cleanup #=> Array
    #   resp.compatible_devices[0].device.instances[0].instance_profile.exclude_app_packages_from_cleanup[0] #=> String
    #   resp.compatible_devices[0].device.instances[0].instance_profile.reboot_after_use #=> Boolean
    #   resp.compatible_devices[0].device.instances[0].instance_profile.name #=> String
    #   resp.compatible_devices[0].device.instances[0].instance_profile.description #=> String
    #   resp.compatible_devices[0].device.availability #=> String, one of "TEMPORARY_NOT_AVAILABLE", "BUSY", "AVAILABLE", "HIGHLY_AVAILABLE"
    #   resp.compatible_devices[0].compatible #=> Boolean
    #   resp.compatible_devices[0].incompatibility_messages #=> Array
    #   resp.compatible_devices[0].incompatibility_messages[0].message #=> String
    #   resp.compatible_devices[0].incompatibility_messages[0].type #=> String, one of "ARN", "PLATFORM", "FORM_FACTOR", "MANUFACTURER", "REMOTE_ACCESS_ENABLED", "REMOTE_DEBUG_ENABLED", "APPIUM_VERSION", "INSTANCE_ARN", "INSTANCE_LABELS", "FLEET_TYPE", "OS_VERSION", "MODEL", "AVAILABILITY"
    #   resp.incompatible_devices #=> Array
    #   resp.incompatible_devices[0].device.arn #=> String
    #   resp.incompatible_devices[0].device.name #=> String
    #   resp.incompatible_devices[0].device.manufacturer #=> String
    #   resp.incompatible_devices[0].device.model #=> String
    #   resp.incompatible_devices[0].device.model_id #=> String
    #   resp.incompatible_devices[0].device.form_factor #=> String, one of "PHONE", "TABLET"
    #   resp.incompatible_devices[0].device.platform #=> String, one of "ANDROID", "IOS"
    #   resp.incompatible_devices[0].device.os #=> String
    #   resp.incompatible_devices[0].device.cpu.frequency #=> String
    #   resp.incompatible_devices[0].device.cpu.architecture #=> String
    #   resp.incompatible_devices[0].device.cpu.clock #=> Float
    #   resp.incompatible_devices[0].device.resolution.width #=> Integer
    #   resp.incompatible_devices[0].device.resolution.height #=> Integer
    #   resp.incompatible_devices[0].device.heap_size #=> Integer
    #   resp.incompatible_devices[0].device.memory #=> Integer
    #   resp.incompatible_devices[0].device.image #=> String
    #   resp.incompatible_devices[0].device.carrier #=> String
    #   resp.incompatible_devices[0].device.radio #=> String
    #   resp.incompatible_devices[0].device.remote_access_enabled #=> Boolean
    #   resp.incompatible_devices[0].device.remote_debug_enabled #=> Boolean
    #   resp.incompatible_devices[0].device.fleet_type #=> String
    #   resp.incompatible_devices[0].device.fleet_name #=> String
    #   resp.incompatible_devices[0].device.instances #=> Array
    #   resp.incompatible_devices[0].device.instances[0].arn #=> String
    #   resp.incompatible_devices[0].device.instances[0].device_arn #=> String
    #   resp.incompatible_devices[0].device.instances[0].labels #=> Array
    #   resp.incompatible_devices[0].device.instances[0].labels[0] #=> String
    #   resp.incompatible_devices[0].device.instances[0].status #=> String, one of "IN_USE", "PREPARING", "AVAILABLE", "NOT_AVAILABLE"
    #   resp.incompatible_devices[0].device.instances[0].udid #=> String
    #   resp.incompatible_devices[0].device.instances[0].instance_profile.arn #=> String
    #   resp.incompatible_devices[0].device.instances[0].instance_profile.package_cleanup #=> Boolean
    #   resp.incompatible_devices[0].device.instances[0].instance_profile.exclude_app_packages_from_cleanup #=> Array
    #   resp.incompatible_devices[0].device.instances[0].instance_profile.exclude_app_packages_from_cleanup[0] #=> String
    #   resp.incompatible_devices[0].device.instances[0].instance_profile.reboot_after_use #=> Boolean
    #   resp.incompatible_devices[0].device.instances[0].instance_profile.name #=> String
    #   resp.incompatible_devices[0].device.instances[0].instance_profile.description #=> String
    #   resp.incompatible_devices[0].device.availability #=> String, one of "TEMPORARY_NOT_AVAILABLE", "BUSY", "AVAILABLE", "HIGHLY_AVAILABLE"
    #   resp.incompatible_devices[0].compatible #=> Boolean
    #   resp.incompatible_devices[0].incompatibility_messages #=> Array
    #   resp.incompatible_devices[0].incompatibility_messages[0].message #=> String
    #   resp.incompatible_devices[0].incompatibility_messages[0].type #=> String, one of "ARN", "PLATFORM", "FORM_FACTOR", "MANUFACTURER", "REMOTE_ACCESS_ENABLED", "REMOTE_DEBUG_ENABLED", "APPIUM_VERSION", "INSTANCE_ARN", "INSTANCE_LABELS", "FLEET_TYPE", "OS_VERSION", "MODEL", "AVAILABILITY"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devicefarm-2015-06-23/GetDevicePoolCompatibility AWS API Documentation
    #
    # @overload get_device_pool_compatibility(params = {})
    # @param [Hash] params ({})
    def get_device_pool_compatibility(params = {}, options = {})
      req = build_request(:get_device_pool_compatibility, params)
      req.send_request(options)
    end

    # Returns information about the specified instance profile.
    #
    # @option params [required, String] :arn
    #   The Amazon Resource Name (ARN) of an instance profile.
    #
    # @return [Types::GetInstanceProfileResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetInstanceProfileResult#instance_profile #instance_profile} => Types::InstanceProfile
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_instance_profile({
    #     arn: "AmazonResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.instance_profile.arn #=> String
    #   resp.instance_profile.package_cleanup #=> Boolean
    #   resp.instance_profile.exclude_app_packages_from_cleanup #=> Array
    #   resp.instance_profile.exclude_app_packages_from_cleanup[0] #=> String
    #   resp.instance_profile.reboot_after_use #=> Boolean
    #   resp.instance_profile.name #=> String
    #   resp.instance_profile.description #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devicefarm-2015-06-23/GetInstanceProfile AWS API Documentation
    #
    # @overload get_instance_profile(params = {})
    # @param [Hash] params ({})
    def get_instance_profile(params = {}, options = {})
      req = build_request(:get_instance_profile, params)
      req.send_request(options)
    end

    # Gets information about a job.
    #
    # @option params [required, String] :arn
    #   The job's ARN.
    #
    # @return [Types::GetJobResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetJobResult#job #job} => Types::Job
    #
    #
    # @example Example: To get information about a job
    #
    #   # The following example returns information about a specific job.
    #
    #   resp = client.get_job({
    #     arn: "arn:aws:devicefarm:us-west-2::job:123-456-EXAMPLE-GUID", # You can get the job ARN by using the list-jobs CLI command.
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     job: {
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_job({
    #     arn: "AmazonResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.job.arn #=> String
    #   resp.job.name #=> String
    #   resp.job.type #=> String, one of "BUILTIN_FUZZ", "BUILTIN_EXPLORER", "WEB_PERFORMANCE_PROFILE", "APPIUM_JAVA_JUNIT", "APPIUM_JAVA_TESTNG", "APPIUM_PYTHON", "APPIUM_NODE", "APPIUM_RUBY", "APPIUM_WEB_JAVA_JUNIT", "APPIUM_WEB_JAVA_TESTNG", "APPIUM_WEB_PYTHON", "APPIUM_WEB_NODE", "APPIUM_WEB_RUBY", "CALABASH", "INSTRUMENTATION", "UIAUTOMATION", "UIAUTOMATOR", "XCTEST", "XCTEST_UI", "REMOTE_ACCESS_RECORD", "REMOTE_ACCESS_REPLAY"
    #   resp.job.created #=> Time
    #   resp.job.status #=> String, one of "PENDING", "PENDING_CONCURRENCY", "PENDING_DEVICE", "PROCESSING", "SCHEDULING", "PREPARING", "RUNNING", "COMPLETED", "STOPPING"
    #   resp.job.result #=> String, one of "PENDING", "PASSED", "WARNED", "FAILED", "SKIPPED", "ERRORED", "STOPPED"
    #   resp.job.started #=> Time
    #   resp.job.stopped #=> Time
    #   resp.job.counters.total #=> Integer
    #   resp.job.counters.passed #=> Integer
    #   resp.job.counters.failed #=> Integer
    #   resp.job.counters.warned #=> Integer
    #   resp.job.counters.errored #=> Integer
    #   resp.job.counters.stopped #=> Integer
    #   resp.job.counters.skipped #=> Integer
    #   resp.job.message #=> String
    #   resp.job.device.arn #=> String
    #   resp.job.device.name #=> String
    #   resp.job.device.manufacturer #=> String
    #   resp.job.device.model #=> String
    #   resp.job.device.model_id #=> String
    #   resp.job.device.form_factor #=> String, one of "PHONE", "TABLET"
    #   resp.job.device.platform #=> String, one of "ANDROID", "IOS"
    #   resp.job.device.os #=> String
    #   resp.job.device.cpu.frequency #=> String
    #   resp.job.device.cpu.architecture #=> String
    #   resp.job.device.cpu.clock #=> Float
    #   resp.job.device.resolution.width #=> Integer
    #   resp.job.device.resolution.height #=> Integer
    #   resp.job.device.heap_size #=> Integer
    #   resp.job.device.memory #=> Integer
    #   resp.job.device.image #=> String
    #   resp.job.device.carrier #=> String
    #   resp.job.device.radio #=> String
    #   resp.job.device.remote_access_enabled #=> Boolean
    #   resp.job.device.remote_debug_enabled #=> Boolean
    #   resp.job.device.fleet_type #=> String
    #   resp.job.device.fleet_name #=> String
    #   resp.job.device.instances #=> Array
    #   resp.job.device.instances[0].arn #=> String
    #   resp.job.device.instances[0].device_arn #=> String
    #   resp.job.device.instances[0].labels #=> Array
    #   resp.job.device.instances[0].labels[0] #=> String
    #   resp.job.device.instances[0].status #=> String, one of "IN_USE", "PREPARING", "AVAILABLE", "NOT_AVAILABLE"
    #   resp.job.device.instances[0].udid #=> String
    #   resp.job.device.instances[0].instance_profile.arn #=> String
    #   resp.job.device.instances[0].instance_profile.package_cleanup #=> Boolean
    #   resp.job.device.instances[0].instance_profile.exclude_app_packages_from_cleanup #=> Array
    #   resp.job.device.instances[0].instance_profile.exclude_app_packages_from_cleanup[0] #=> String
    #   resp.job.device.instances[0].instance_profile.reboot_after_use #=> Boolean
    #   resp.job.device.instances[0].instance_profile.name #=> String
    #   resp.job.device.instances[0].instance_profile.description #=> String
    #   resp.job.device.availability #=> String, one of "TEMPORARY_NOT_AVAILABLE", "BUSY", "AVAILABLE", "HIGHLY_AVAILABLE"
    #   resp.job.instance_arn #=> String
    #   resp.job.device_minutes.total #=> Float
    #   resp.job.device_minutes.metered #=> Float
    #   resp.job.device_minutes.unmetered #=> Float
    #   resp.job.video_endpoint #=> String
    #   resp.job.video_capture #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devicefarm-2015-06-23/GetJob AWS API Documentation
    #
    # @overload get_job(params = {})
    # @param [Hash] params ({})
    def get_job(params = {}, options = {})
      req = build_request(:get_job, params)
      req.send_request(options)
    end

    # Returns information about a network profile.
    #
    # @option params [required, String] :arn
    #   The ARN of the network profile to return information about.
    #
    # @return [Types::GetNetworkProfileResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetNetworkProfileResult#network_profile #network_profile} => Types::NetworkProfile
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_network_profile({
    #     arn: "AmazonResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.network_profile.arn #=> String
    #   resp.network_profile.name #=> String
    #   resp.network_profile.description #=> String
    #   resp.network_profile.type #=> String, one of "CURATED", "PRIVATE"
    #   resp.network_profile.uplink_bandwidth_bits #=> Integer
    #   resp.network_profile.downlink_bandwidth_bits #=> Integer
    #   resp.network_profile.uplink_delay_ms #=> Integer
    #   resp.network_profile.downlink_delay_ms #=> Integer
    #   resp.network_profile.uplink_jitter_ms #=> Integer
    #   resp.network_profile.downlink_jitter_ms #=> Integer
    #   resp.network_profile.uplink_loss_percent #=> Integer
    #   resp.network_profile.downlink_loss_percent #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devicefarm-2015-06-23/GetNetworkProfile AWS API Documentation
    #
    # @overload get_network_profile(params = {})
    # @param [Hash] params ({})
    def get_network_profile(params = {}, options = {})
      req = build_request(:get_network_profile, params)
      req.send_request(options)
    end

    # Gets the current status and future status of all offerings purchased
    # by an AWS account. The response indicates how many offerings are
    # currently available and the offerings that will be available in the
    # next period. The API returns a `NotEligible` error if the user is not
    # permitted to invoke the operation. If you must be able to invoke this
    # operation, contact
    # [aws-devicefarm-support@amazon.com](mailto:aws-devicefarm-support@amazon.com).
    #
    # @option params [String] :next_token
    #   An identifier that was returned from the previous call to this
    #   operation, which can be used to return the next set of items in the
    #   list.
    #
    # @return [Types::GetOfferingStatusResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetOfferingStatusResult#current #current} => Hash&lt;String,Types::OfferingStatus&gt;
    #   * {Types::GetOfferingStatusResult#next_period #next_period} => Hash&lt;String,Types::OfferingStatus&gt;
    #   * {Types::GetOfferingStatusResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: To get status information about device offerings
    #
    #   # The following example returns information about Device Farm offerings available to your account.
    #
    #   resp = client.get_offering_status({
    #     next_token: "RW5DdDJkMWYwZjM2MzM2VHVpOHJIUXlDUXlhc2QzRGViYnc9SEXAMPLE=", # A dynamically generated value, used for paginating results.
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     current: {
    #       "D68B3C05-1BA6-4360-BC69-12345EXAMPLE" => {
    #         offering: {
    #           type: "RECURRING", 
    #           description: "Android Remote Access Unmetered Device Slot", 
    #           id: "D68B3C05-1BA6-4360-BC69-12345EXAMPLE", 
    #           platform: "ANDROID", 
    #         }, 
    #         quantity: 1, 
    #       }, 
    #     }, 
    #     next_period: {
    #       "D68B3C05-1BA6-4360-BC69-12345EXAMPLE" => {
    #         effective_on: Time.parse("1472688000"), 
    #         offering: {
    #           type: "RECURRING", 
    #           description: "Android Remote Access Unmetered Device Slot", 
    #           id: "D68B3C05-1BA6-4360-BC69-12345EXAMPLE", 
    #           platform: "ANDROID", 
    #         }, 
    #         quantity: 1, 
    #       }, 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_offering_status({
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.current #=> Hash
    #   resp.current["OfferingIdentifier"].type #=> String, one of "PURCHASE", "RENEW", "SYSTEM"
    #   resp.current["OfferingIdentifier"].offering.id #=> String
    #   resp.current["OfferingIdentifier"].offering.description #=> String
    #   resp.current["OfferingIdentifier"].offering.type #=> String, one of "RECURRING"
    #   resp.current["OfferingIdentifier"].offering.platform #=> String, one of "ANDROID", "IOS"
    #   resp.current["OfferingIdentifier"].offering.recurring_charges #=> Array
    #   resp.current["OfferingIdentifier"].offering.recurring_charges[0].cost.amount #=> Float
    #   resp.current["OfferingIdentifier"].offering.recurring_charges[0].cost.currency_code #=> String, one of "USD"
    #   resp.current["OfferingIdentifier"].offering.recurring_charges[0].frequency #=> String, one of "MONTHLY"
    #   resp.current["OfferingIdentifier"].quantity #=> Integer
    #   resp.current["OfferingIdentifier"].effective_on #=> Time
    #   resp.next_period #=> Hash
    #   resp.next_period["OfferingIdentifier"].type #=> String, one of "PURCHASE", "RENEW", "SYSTEM"
    #   resp.next_period["OfferingIdentifier"].offering.id #=> String
    #   resp.next_period["OfferingIdentifier"].offering.description #=> String
    #   resp.next_period["OfferingIdentifier"].offering.type #=> String, one of "RECURRING"
    #   resp.next_period["OfferingIdentifier"].offering.platform #=> String, one of "ANDROID", "IOS"
    #   resp.next_period["OfferingIdentifier"].offering.recurring_charges #=> Array
    #   resp.next_period["OfferingIdentifier"].offering.recurring_charges[0].cost.amount #=> Float
    #   resp.next_period["OfferingIdentifier"].offering.recurring_charges[0].cost.currency_code #=> String, one of "USD"
    #   resp.next_period["OfferingIdentifier"].offering.recurring_charges[0].frequency #=> String, one of "MONTHLY"
    #   resp.next_period["OfferingIdentifier"].quantity #=> Integer
    #   resp.next_period["OfferingIdentifier"].effective_on #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devicefarm-2015-06-23/GetOfferingStatus AWS API Documentation
    #
    # @overload get_offering_status(params = {})
    # @param [Hash] params ({})
    def get_offering_status(params = {}, options = {})
      req = build_request(:get_offering_status, params)
      req.send_request(options)
    end

    # Gets information about a project.
    #
    # @option params [required, String] :arn
    #   The project's ARN.
    #
    # @return [Types::GetProjectResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetProjectResult#project #project} => Types::Project
    #
    #
    # @example Example: To get information about a project
    #
    #   # The following example gets information about a specific project.
    #
    #   resp = client.get_project({
    #     arn: "arn:aws:devicefarm:us-west-2:123456789101:project:5e01a8c7-c861-4c0a-b1d5-12345EXAMPLE", # You can get the project ARN by using the list-projects CLI command.
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     project: {
    #       name: "My Project", 
    #       arn: "arn:aws:devicefarm:us-west-2:123456789101:project:5e01a8c7-c861-4c0a-b1d5-12345EXAMPLE", 
    #       created: Time.parse("1472660939.152"), 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_project({
    #     arn: "AmazonResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.project.arn #=> String
    #   resp.project.name #=> String
    #   resp.project.default_job_timeout_minutes #=> Integer
    #   resp.project.created #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devicefarm-2015-06-23/GetProject AWS API Documentation
    #
    # @overload get_project(params = {})
    # @param [Hash] params ({})
    def get_project(params = {}, options = {})
      req = build_request(:get_project, params)
      req.send_request(options)
    end

    # Returns a link to a currently running remote access session.
    #
    # @option params [required, String] :arn
    #   The Amazon Resource Name (ARN) of the remote access session about
    #   which you want to get session information.
    #
    # @return [Types::GetRemoteAccessSessionResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetRemoteAccessSessionResult#remote_access_session #remote_access_session} => Types::RemoteAccessSession
    #
    #
    # @example Example: To get a remote access session
    #
    #   # The following example gets a specific remote access session.
    #
    #   resp = client.get_remote_access_session({
    #     arn: "arn:aws:devicefarm:us-west-2:123456789101:session:EXAMPLE-GUID-123-456", # You can get the remote access session ARN by using the list-remote-access-sessions CLI command.
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     remote_access_session: {
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_remote_access_session({
    #     arn: "AmazonResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.remote_access_session.arn #=> String
    #   resp.remote_access_session.name #=> String
    #   resp.remote_access_session.created #=> Time
    #   resp.remote_access_session.status #=> String, one of "PENDING", "PENDING_CONCURRENCY", "PENDING_DEVICE", "PROCESSING", "SCHEDULING", "PREPARING", "RUNNING", "COMPLETED", "STOPPING"
    #   resp.remote_access_session.result #=> String, one of "PENDING", "PASSED", "WARNED", "FAILED", "SKIPPED", "ERRORED", "STOPPED"
    #   resp.remote_access_session.message #=> String
    #   resp.remote_access_session.started #=> Time
    #   resp.remote_access_session.stopped #=> Time
    #   resp.remote_access_session.device.arn #=> String
    #   resp.remote_access_session.device.name #=> String
    #   resp.remote_access_session.device.manufacturer #=> String
    #   resp.remote_access_session.device.model #=> String
    #   resp.remote_access_session.device.model_id #=> String
    #   resp.remote_access_session.device.form_factor #=> String, one of "PHONE", "TABLET"
    #   resp.remote_access_session.device.platform #=> String, one of "ANDROID", "IOS"
    #   resp.remote_access_session.device.os #=> String
    #   resp.remote_access_session.device.cpu.frequency #=> String
    #   resp.remote_access_session.device.cpu.architecture #=> String
    #   resp.remote_access_session.device.cpu.clock #=> Float
    #   resp.remote_access_session.device.resolution.width #=> Integer
    #   resp.remote_access_session.device.resolution.height #=> Integer
    #   resp.remote_access_session.device.heap_size #=> Integer
    #   resp.remote_access_session.device.memory #=> Integer
    #   resp.remote_access_session.device.image #=> String
    #   resp.remote_access_session.device.carrier #=> String
    #   resp.remote_access_session.device.radio #=> String
    #   resp.remote_access_session.device.remote_access_enabled #=> Boolean
    #   resp.remote_access_session.device.remote_debug_enabled #=> Boolean
    #   resp.remote_access_session.device.fleet_type #=> String
    #   resp.remote_access_session.device.fleet_name #=> String
    #   resp.remote_access_session.device.instances #=> Array
    #   resp.remote_access_session.device.instances[0].arn #=> String
    #   resp.remote_access_session.device.instances[0].device_arn #=> String
    #   resp.remote_access_session.device.instances[0].labels #=> Array
    #   resp.remote_access_session.device.instances[0].labels[0] #=> String
    #   resp.remote_access_session.device.instances[0].status #=> String, one of "IN_USE", "PREPARING", "AVAILABLE", "NOT_AVAILABLE"
    #   resp.remote_access_session.device.instances[0].udid #=> String
    #   resp.remote_access_session.device.instances[0].instance_profile.arn #=> String
    #   resp.remote_access_session.device.instances[0].instance_profile.package_cleanup #=> Boolean
    #   resp.remote_access_session.device.instances[0].instance_profile.exclude_app_packages_from_cleanup #=> Array
    #   resp.remote_access_session.device.instances[0].instance_profile.exclude_app_packages_from_cleanup[0] #=> String
    #   resp.remote_access_session.device.instances[0].instance_profile.reboot_after_use #=> Boolean
    #   resp.remote_access_session.device.instances[0].instance_profile.name #=> String
    #   resp.remote_access_session.device.instances[0].instance_profile.description #=> String
    #   resp.remote_access_session.device.availability #=> String, one of "TEMPORARY_NOT_AVAILABLE", "BUSY", "AVAILABLE", "HIGHLY_AVAILABLE"
    #   resp.remote_access_session.instance_arn #=> String
    #   resp.remote_access_session.remote_debug_enabled #=> Boolean
    #   resp.remote_access_session.remote_record_enabled #=> Boolean
    #   resp.remote_access_session.remote_record_app_arn #=> String
    #   resp.remote_access_session.host_address #=> String
    #   resp.remote_access_session.client_id #=> String
    #   resp.remote_access_session.billing_method #=> String, one of "METERED", "UNMETERED"
    #   resp.remote_access_session.device_minutes.total #=> Float
    #   resp.remote_access_session.device_minutes.metered #=> Float
    #   resp.remote_access_session.device_minutes.unmetered #=> Float
    #   resp.remote_access_session.endpoint #=> String
    #   resp.remote_access_session.device_udid #=> String
    #   resp.remote_access_session.interaction_mode #=> String, one of "INTERACTIVE", "NO_VIDEO", "VIDEO_ONLY"
    #   resp.remote_access_session.skip_app_resign #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devicefarm-2015-06-23/GetRemoteAccessSession AWS API Documentation
    #
    # @overload get_remote_access_session(params = {})
    # @param [Hash] params ({})
    def get_remote_access_session(params = {}, options = {})
      req = build_request(:get_remote_access_session, params)
      req.send_request(options)
    end

    # Gets information about a run.
    #
    # @option params [required, String] :arn
    #   The run's ARN.
    #
    # @return [Types::GetRunResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetRunResult#run #run} => Types::Run
    #
    #
    # @example Example: To get information about a test run
    #
    #   # The following example gets information about a specific test run.
    #
    #   resp = client.get_run({
    #     arn: "arn:aws:devicefarm:us-west-2:123456789101:run:5e01a8c7-c861-4c0a-b1d5-5ec6e6c6dd23/0fcac17b-6122-44d7-ae5a-12345EXAMPLE", # You can get the run ARN by using the list-runs CLI command.
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     run: {
    #       name: "My Test Run", 
    #       type: "BUILTIN_EXPLORER", 
    #       arn: "arn:aws:devicefarm:us-west-2:123456789101:run:5e01a8c7-c861-4c0a-b1d5-5ec6e6c6dd23/0fcac17b-6122-44d7-ae5a-12345EXAMPLE", 
    #       billing_method: "METERED", 
    #       completed_jobs: 0, 
    #       counters: {
    #         errored: 0, 
    #         failed: 0, 
    #         passed: 0, 
    #         skipped: 0, 
    #         stopped: 0, 
    #         total: 0, 
    #         warned: 0, 
    #       }, 
    #       created: Time.parse("1472667509.852"), 
    #       device_minutes: {
    #         metered: 0.0, 
    #         total: 0.0, 
    #         unmetered: 0.0, 
    #       }, 
    #       platform: "ANDROID", 
    #       result: "PENDING", 
    #       status: "RUNNING", 
    #       total_jobs: 3, 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_run({
    #     arn: "AmazonResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.run.arn #=> String
    #   resp.run.name #=> String
    #   resp.run.type #=> String, one of "BUILTIN_FUZZ", "BUILTIN_EXPLORER", "WEB_PERFORMANCE_PROFILE", "APPIUM_JAVA_JUNIT", "APPIUM_JAVA_TESTNG", "APPIUM_PYTHON", "APPIUM_NODE", "APPIUM_RUBY", "APPIUM_WEB_JAVA_JUNIT", "APPIUM_WEB_JAVA_TESTNG", "APPIUM_WEB_PYTHON", "APPIUM_WEB_NODE", "APPIUM_WEB_RUBY", "CALABASH", "INSTRUMENTATION", "UIAUTOMATION", "UIAUTOMATOR", "XCTEST", "XCTEST_UI", "REMOTE_ACCESS_RECORD", "REMOTE_ACCESS_REPLAY"
    #   resp.run.platform #=> String, one of "ANDROID", "IOS"
    #   resp.run.created #=> Time
    #   resp.run.status #=> String, one of "PENDING", "PENDING_CONCURRENCY", "PENDING_DEVICE", "PROCESSING", "SCHEDULING", "PREPARING", "RUNNING", "COMPLETED", "STOPPING"
    #   resp.run.result #=> String, one of "PENDING", "PASSED", "WARNED", "FAILED", "SKIPPED", "ERRORED", "STOPPED"
    #   resp.run.started #=> Time
    #   resp.run.stopped #=> Time
    #   resp.run.counters.total #=> Integer
    #   resp.run.counters.passed #=> Integer
    #   resp.run.counters.failed #=> Integer
    #   resp.run.counters.warned #=> Integer
    #   resp.run.counters.errored #=> Integer
    #   resp.run.counters.stopped #=> Integer
    #   resp.run.counters.skipped #=> Integer
    #   resp.run.message #=> String
    #   resp.run.total_jobs #=> Integer
    #   resp.run.completed_jobs #=> Integer
    #   resp.run.billing_method #=> String, one of "METERED", "UNMETERED"
    #   resp.run.device_minutes.total #=> Float
    #   resp.run.device_minutes.metered #=> Float
    #   resp.run.device_minutes.unmetered #=> Float
    #   resp.run.network_profile.arn #=> String
    #   resp.run.network_profile.name #=> String
    #   resp.run.network_profile.description #=> String
    #   resp.run.network_profile.type #=> String, one of "CURATED", "PRIVATE"
    #   resp.run.network_profile.uplink_bandwidth_bits #=> Integer
    #   resp.run.network_profile.downlink_bandwidth_bits #=> Integer
    #   resp.run.network_profile.uplink_delay_ms #=> Integer
    #   resp.run.network_profile.downlink_delay_ms #=> Integer
    #   resp.run.network_profile.uplink_jitter_ms #=> Integer
    #   resp.run.network_profile.downlink_jitter_ms #=> Integer
    #   resp.run.network_profile.uplink_loss_percent #=> Integer
    #   resp.run.network_profile.downlink_loss_percent #=> Integer
    #   resp.run.parsing_result_url #=> String
    #   resp.run.result_code #=> String, one of "PARSING_FAILED", "VPC_ENDPOINT_SETUP_FAILED"
    #   resp.run.seed #=> Integer
    #   resp.run.app_upload #=> String
    #   resp.run.event_count #=> Integer
    #   resp.run.job_timeout_minutes #=> Integer
    #   resp.run.device_pool_arn #=> String
    #   resp.run.locale #=> String
    #   resp.run.radios.wifi #=> Boolean
    #   resp.run.radios.bluetooth #=> Boolean
    #   resp.run.radios.nfc #=> Boolean
    #   resp.run.radios.gps #=> Boolean
    #   resp.run.location.latitude #=> Float
    #   resp.run.location.longitude #=> Float
    #   resp.run.customer_artifact_paths.ios_paths #=> Array
    #   resp.run.customer_artifact_paths.ios_paths[0] #=> String
    #   resp.run.customer_artifact_paths.android_paths #=> Array
    #   resp.run.customer_artifact_paths.android_paths[0] #=> String
    #   resp.run.customer_artifact_paths.device_host_paths #=> Array
    #   resp.run.customer_artifact_paths.device_host_paths[0] #=> String
    #   resp.run.web_url #=> String
    #   resp.run.skip_app_resign #=> Boolean
    #   resp.run.test_spec_arn #=> String
    #   resp.run.device_selection_result.filters #=> Array
    #   resp.run.device_selection_result.filters[0].attribute #=> String, one of "ARN", "PLATFORM", "OS_VERSION", "MODEL", "AVAILABILITY", "FORM_FACTOR", "MANUFACTURER", "REMOTE_ACCESS_ENABLED", "REMOTE_DEBUG_ENABLED", "INSTANCE_ARN", "INSTANCE_LABELS", "FLEET_TYPE"
    #   resp.run.device_selection_result.filters[0].operator #=> String, one of "EQUALS", "LESS_THAN", "LESS_THAN_OR_EQUALS", "GREATER_THAN", "GREATER_THAN_OR_EQUALS", "IN", "NOT_IN", "CONTAINS"
    #   resp.run.device_selection_result.filters[0].values #=> Array
    #   resp.run.device_selection_result.filters[0].values[0] #=> String
    #   resp.run.device_selection_result.matched_devices_count #=> Integer
    #   resp.run.device_selection_result.max_devices #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devicefarm-2015-06-23/GetRun AWS API Documentation
    #
    # @overload get_run(params = {})
    # @param [Hash] params ({})
    def get_run(params = {}, options = {})
      req = build_request(:get_run, params)
      req.send_request(options)
    end

    # Gets information about a suite.
    #
    # @option params [required, String] :arn
    #   The suite's ARN.
    #
    # @return [Types::GetSuiteResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSuiteResult#suite #suite} => Types::Suite
    #
    #
    # @example Example: To get information about a test suite
    #
    #   # The following example gets information about a specific test suite.
    #
    #   resp = client.get_suite({
    #     arn: "arn:aws:devicefarm:us-west-2:123456789101:suite:EXAMPLE-GUID-123-456", # You can get the suite ARN by using the list-suites CLI command.
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     suite: {
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_suite({
    #     arn: "AmazonResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.suite.arn #=> String
    #   resp.suite.name #=> String
    #   resp.suite.type #=> String, one of "BUILTIN_FUZZ", "BUILTIN_EXPLORER", "WEB_PERFORMANCE_PROFILE", "APPIUM_JAVA_JUNIT", "APPIUM_JAVA_TESTNG", "APPIUM_PYTHON", "APPIUM_NODE", "APPIUM_RUBY", "APPIUM_WEB_JAVA_JUNIT", "APPIUM_WEB_JAVA_TESTNG", "APPIUM_WEB_PYTHON", "APPIUM_WEB_NODE", "APPIUM_WEB_RUBY", "CALABASH", "INSTRUMENTATION", "UIAUTOMATION", "UIAUTOMATOR", "XCTEST", "XCTEST_UI", "REMOTE_ACCESS_RECORD", "REMOTE_ACCESS_REPLAY"
    #   resp.suite.created #=> Time
    #   resp.suite.status #=> String, one of "PENDING", "PENDING_CONCURRENCY", "PENDING_DEVICE", "PROCESSING", "SCHEDULING", "PREPARING", "RUNNING", "COMPLETED", "STOPPING"
    #   resp.suite.result #=> String, one of "PENDING", "PASSED", "WARNED", "FAILED", "SKIPPED", "ERRORED", "STOPPED"
    #   resp.suite.started #=> Time
    #   resp.suite.stopped #=> Time
    #   resp.suite.counters.total #=> Integer
    #   resp.suite.counters.passed #=> Integer
    #   resp.suite.counters.failed #=> Integer
    #   resp.suite.counters.warned #=> Integer
    #   resp.suite.counters.errored #=> Integer
    #   resp.suite.counters.stopped #=> Integer
    #   resp.suite.counters.skipped #=> Integer
    #   resp.suite.message #=> String
    #   resp.suite.device_minutes.total #=> Float
    #   resp.suite.device_minutes.metered #=> Float
    #   resp.suite.device_minutes.unmetered #=> Float
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devicefarm-2015-06-23/GetSuite AWS API Documentation
    #
    # @overload get_suite(params = {})
    # @param [Hash] params ({})
    def get_suite(params = {}, options = {})
      req = build_request(:get_suite, params)
      req.send_request(options)
    end

    # Gets information about a test.
    #
    # @option params [required, String] :arn
    #   The test's ARN.
    #
    # @return [Types::GetTestResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTestResult#test #test} => Types::Test
    #
    #
    # @example Example: To get information about a specific test
    #
    #   # The following example gets information about a specific test.
    #
    #   resp = client.get_test({
    #     arn: "arn:aws:devicefarm:us-west-2:123456789101:test:EXAMPLE-GUID-123-456", # You can get the test ARN by using the list-tests CLI command.
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     test: {
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_test({
    #     arn: "AmazonResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.test.arn #=> String
    #   resp.test.name #=> String
    #   resp.test.type #=> String, one of "BUILTIN_FUZZ", "BUILTIN_EXPLORER", "WEB_PERFORMANCE_PROFILE", "APPIUM_JAVA_JUNIT", "APPIUM_JAVA_TESTNG", "APPIUM_PYTHON", "APPIUM_NODE", "APPIUM_RUBY", "APPIUM_WEB_JAVA_JUNIT", "APPIUM_WEB_JAVA_TESTNG", "APPIUM_WEB_PYTHON", "APPIUM_WEB_NODE", "APPIUM_WEB_RUBY", "CALABASH", "INSTRUMENTATION", "UIAUTOMATION", "UIAUTOMATOR", "XCTEST", "XCTEST_UI", "REMOTE_ACCESS_RECORD", "REMOTE_ACCESS_REPLAY"
    #   resp.test.created #=> Time
    #   resp.test.status #=> String, one of "PENDING", "PENDING_CONCURRENCY", "PENDING_DEVICE", "PROCESSING", "SCHEDULING", "PREPARING", "RUNNING", "COMPLETED", "STOPPING"
    #   resp.test.result #=> String, one of "PENDING", "PASSED", "WARNED", "FAILED", "SKIPPED", "ERRORED", "STOPPED"
    #   resp.test.started #=> Time
    #   resp.test.stopped #=> Time
    #   resp.test.counters.total #=> Integer
    #   resp.test.counters.passed #=> Integer
    #   resp.test.counters.failed #=> Integer
    #   resp.test.counters.warned #=> Integer
    #   resp.test.counters.errored #=> Integer
    #   resp.test.counters.stopped #=> Integer
    #   resp.test.counters.skipped #=> Integer
    #   resp.test.message #=> String
    #   resp.test.device_minutes.total #=> Float
    #   resp.test.device_minutes.metered #=> Float
    #   resp.test.device_minutes.unmetered #=> Float
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devicefarm-2015-06-23/GetTest AWS API Documentation
    #
    # @overload get_test(params = {})
    # @param [Hash] params ({})
    def get_test(params = {}, options = {})
      req = build_request(:get_test, params)
      req.send_request(options)
    end

    # Retrieves information about a Selenium testing project.
    #
    # @option params [required, String] :project_arn
    #   The ARN of the Selenium testing project, from either
    #   CreateTestGridProject or ListTestGridProjects.
    #
    # @return [Types::GetTestGridProjectResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTestGridProjectResult#test_grid_project #test_grid_project} => Types::TestGridProject
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_test_grid_project({
    #     project_arn: "DeviceFarmArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.test_grid_project.arn #=> String
    #   resp.test_grid_project.name #=> String
    #   resp.test_grid_project.description #=> String
    #   resp.test_grid_project.created #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devicefarm-2015-06-23/GetTestGridProject AWS API Documentation
    #
    # @overload get_test_grid_project(params = {})
    # @param [Hash] params ({})
    def get_test_grid_project(params = {}, options = {})
      req = build_request(:get_test_grid_project, params)
      req.send_request(options)
    end

    # A session is an instance of a browser created through a
    # `RemoteWebDriver` with the URL from CreateTestGridUrlResult$url. You
    # can use the following to look up sessions:
    #
    # * The session ARN (GetTestGridSessionRequest$sessionArn).
    #
    # * The project ARN and a session ID
    #   (GetTestGridSessionRequest$projectArn and
    #   GetTestGridSessionRequest$sessionId).
    #
    # @option params [String] :project_arn
    #   The ARN for the project that this session belongs to. See
    #   CreateTestGridProject and ListTestGridProjects.
    #
    # @option params [String] :session_id
    #   An ID associated with this session.
    #
    # @option params [String] :session_arn
    #   An ARN that uniquely identifies a TestGridSession.
    #
    # @return [Types::GetTestGridSessionResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTestGridSessionResult#test_grid_session #test_grid_session} => Types::TestGridSession
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_test_grid_session({
    #     project_arn: "DeviceFarmArn",
    #     session_id: "ResourceId",
    #     session_arn: "DeviceFarmArn",
    #   })
    #
    # @example Response structure
    #
    #   resp.test_grid_session.arn #=> String
    #   resp.test_grid_session.status #=> String, one of "ACTIVE", "CLOSED", "ERRORED"
    #   resp.test_grid_session.created #=> Time
    #   resp.test_grid_session.ended #=> Time
    #   resp.test_grid_session.billing_minutes #=> Float
    #   resp.test_grid_session.selenium_properties #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devicefarm-2015-06-23/GetTestGridSession AWS API Documentation
    #
    # @overload get_test_grid_session(params = {})
    # @param [Hash] params ({})
    def get_test_grid_session(params = {}, options = {})
      req = build_request(:get_test_grid_session, params)
      req.send_request(options)
    end

    # Gets information about an upload.
    #
    # @option params [required, String] :arn
    #   The upload's ARN.
    #
    # @return [Types::GetUploadResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetUploadResult#upload #upload} => Types::Upload
    #
    #
    # @example Example: To get information about a specific upload
    #
    #   # The following example gets information about a specific upload.
    #
    #   resp = client.get_upload({
    #     arn: "arn:aws:devicefarm:us-west-2:123456789101:upload:EXAMPLE-GUID-123-456", # You can get the test ARN by using the list-uploads CLI command.
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     upload: {
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_upload({
    #     arn: "AmazonResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.upload.arn #=> String
    #   resp.upload.name #=> String
    #   resp.upload.created #=> Time
    #   resp.upload.type #=> String, one of "ANDROID_APP", "IOS_APP", "WEB_APP", "EXTERNAL_DATA", "APPIUM_JAVA_JUNIT_TEST_PACKAGE", "APPIUM_JAVA_TESTNG_TEST_PACKAGE", "APPIUM_PYTHON_TEST_PACKAGE", "APPIUM_NODE_TEST_PACKAGE", "APPIUM_RUBY_TEST_PACKAGE", "APPIUM_WEB_JAVA_JUNIT_TEST_PACKAGE", "APPIUM_WEB_JAVA_TESTNG_TEST_PACKAGE", "APPIUM_WEB_PYTHON_TEST_PACKAGE", "APPIUM_WEB_NODE_TEST_PACKAGE", "APPIUM_WEB_RUBY_TEST_PACKAGE", "CALABASH_TEST_PACKAGE", "INSTRUMENTATION_TEST_PACKAGE", "UIAUTOMATION_TEST_PACKAGE", "UIAUTOMATOR_TEST_PACKAGE", "XCTEST_TEST_PACKAGE", "XCTEST_UI_TEST_PACKAGE", "APPIUM_JAVA_JUNIT_TEST_SPEC", "APPIUM_JAVA_TESTNG_TEST_SPEC", "APPIUM_PYTHON_TEST_SPEC", "APPIUM_NODE_TEST_SPEC", "APPIUM_RUBY_TEST_SPEC", "APPIUM_WEB_JAVA_JUNIT_TEST_SPEC", "APPIUM_WEB_JAVA_TESTNG_TEST_SPEC", "APPIUM_WEB_PYTHON_TEST_SPEC", "APPIUM_WEB_NODE_TEST_SPEC", "APPIUM_WEB_RUBY_TEST_SPEC", "INSTRUMENTATION_TEST_SPEC", "XCTEST_UI_TEST_SPEC"
    #   resp.upload.status #=> String, one of "INITIALIZED", "PROCESSING", "SUCCEEDED", "FAILED"
    #   resp.upload.url #=> String
    #   resp.upload.metadata #=> String
    #   resp.upload.content_type #=> String
    #   resp.upload.message #=> String
    #   resp.upload.category #=> String, one of "CURATED", "PRIVATE"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devicefarm-2015-06-23/GetUpload AWS API Documentation
    #
    # @overload get_upload(params = {})
    # @param [Hash] params ({})
    def get_upload(params = {}, options = {})
      req = build_request(:get_upload, params)
      req.send_request(options)
    end

    # Returns information about the configuration settings for your Amazon
    # Virtual Private Cloud (VPC) endpoint.
    #
    # @option params [required, String] :arn
    #   The Amazon Resource Name (ARN) of the VPC endpoint configuration you
    #   want to describe.
    #
    # @return [Types::GetVPCEConfigurationResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetVPCEConfigurationResult#vpce_configuration #vpce_configuration} => Types::VPCEConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_vpce_configuration({
    #     arn: "AmazonResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.vpce_configuration.arn #=> String
    #   resp.vpce_configuration.vpce_configuration_name #=> String
    #   resp.vpce_configuration.vpce_service_name #=> String
    #   resp.vpce_configuration.service_dns_name #=> String
    #   resp.vpce_configuration.vpce_configuration_description #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devicefarm-2015-06-23/GetVPCEConfiguration AWS API Documentation
    #
    # @overload get_vpce_configuration(params = {})
    # @param [Hash] params ({})
    def get_vpce_configuration(params = {}, options = {})
      req = build_request(:get_vpce_configuration, params)
      req.send_request(options)
    end

    # Installs an application to the device in a remote access session. For
    # Android applications, the file must be in .apk format. For iOS
    # applications, the file must be in .ipa format.
    #
    # @option params [required, String] :remote_access_session_arn
    #   The Amazon Resource Name (ARN) of the remote access session about
    #   which you are requesting information.
    #
    # @option params [required, String] :app_arn
    #   The ARN of the app about which you are requesting information.
    #
    # @return [Types::InstallToRemoteAccessSessionResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::InstallToRemoteAccessSessionResult#app_upload #app_upload} => Types::Upload
    #
    #
    # @example Example: To install to a remote access session
    #
    #   # The following example installs a specific app to a device in a specific remote access session.
    #
    #   resp = client.install_to_remote_access_session({
    #     app_arn: "arn:aws:devicefarm:us-west-2:123456789101:app:EXAMPLE-GUID-123-456", 
    #     remote_access_session_arn: "arn:aws:devicefarm:us-west-2:123456789101:session:EXAMPLE-GUID-123-456", # You can get the remote access session ARN by using the list-remote-access-sessions CLI command.
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     app_upload: {
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.install_to_remote_access_session({
    #     remote_access_session_arn: "AmazonResourceName", # required
    #     app_arn: "AmazonResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.app_upload.arn #=> String
    #   resp.app_upload.name #=> String
    #   resp.app_upload.created #=> Time
    #   resp.app_upload.type #=> String, one of "ANDROID_APP", "IOS_APP", "WEB_APP", "EXTERNAL_DATA", "APPIUM_JAVA_JUNIT_TEST_PACKAGE", "APPIUM_JAVA_TESTNG_TEST_PACKAGE", "APPIUM_PYTHON_TEST_PACKAGE", "APPIUM_NODE_TEST_PACKAGE", "APPIUM_RUBY_TEST_PACKAGE", "APPIUM_WEB_JAVA_JUNIT_TEST_PACKAGE", "APPIUM_WEB_JAVA_TESTNG_TEST_PACKAGE", "APPIUM_WEB_PYTHON_TEST_PACKAGE", "APPIUM_WEB_NODE_TEST_PACKAGE", "APPIUM_WEB_RUBY_TEST_PACKAGE", "CALABASH_TEST_PACKAGE", "INSTRUMENTATION_TEST_PACKAGE", "UIAUTOMATION_TEST_PACKAGE", "UIAUTOMATOR_TEST_PACKAGE", "XCTEST_TEST_PACKAGE", "XCTEST_UI_TEST_PACKAGE", "APPIUM_JAVA_JUNIT_TEST_SPEC", "APPIUM_JAVA_TESTNG_TEST_SPEC", "APPIUM_PYTHON_TEST_SPEC", "APPIUM_NODE_TEST_SPEC", "APPIUM_RUBY_TEST_SPEC", "APPIUM_WEB_JAVA_JUNIT_TEST_SPEC", "APPIUM_WEB_JAVA_TESTNG_TEST_SPEC", "APPIUM_WEB_PYTHON_TEST_SPEC", "APPIUM_WEB_NODE_TEST_SPEC", "APPIUM_WEB_RUBY_TEST_SPEC", "INSTRUMENTATION_TEST_SPEC", "XCTEST_UI_TEST_SPEC"
    #   resp.app_upload.status #=> String, one of "INITIALIZED", "PROCESSING", "SUCCEEDED", "FAILED"
    #   resp.app_upload.url #=> String
    #   resp.app_upload.metadata #=> String
    #   resp.app_upload.content_type #=> String
    #   resp.app_upload.message #=> String
    #   resp.app_upload.category #=> String, one of "CURATED", "PRIVATE"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devicefarm-2015-06-23/InstallToRemoteAccessSession AWS API Documentation
    #
    # @overload install_to_remote_access_session(params = {})
    # @param [Hash] params ({})
    def install_to_remote_access_session(params = {}, options = {})
      req = build_request(:install_to_remote_access_session, params)
      req.send_request(options)
    end

    # Gets information about artifacts.
    #
    # @option params [required, String] :arn
    #   The run, job, suite, or test ARN.
    #
    # @option params [required, String] :type
    #   The artifacts' type.
    #
    #   Allowed values include:
    #
    #   * FILE
    #
    #   * LOG
    #
    #   * SCREENSHOT
    #
    # @option params [String] :next_token
    #   An identifier that was returned from the previous call to this
    #   operation, which can be used to return the next set of items in the
    #   list.
    #
    # @return [Types::ListArtifactsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListArtifactsResult#artifacts #artifacts} => Array&lt;Types::Artifact&gt;
    #   * {Types::ListArtifactsResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: To list artifacts for a resource
    #
    #   # The following example lists screenshot artifacts for a specific run.
    #
    #   resp = client.list_artifacts({
    #     type: "SCREENSHOT", 
    #     arn: "arn:aws:devicefarm:us-west-2:123456789101:run:EXAMPLE-GUID-123-456", # Can also be used to list artifacts for a Job, Suite, or Test ARN.
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_artifacts({
    #     arn: "AmazonResourceName", # required
    #     type: "SCREENSHOT", # required, accepts SCREENSHOT, FILE, LOG
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.artifacts #=> Array
    #   resp.artifacts[0].arn #=> String
    #   resp.artifacts[0].name #=> String
    #   resp.artifacts[0].type #=> String, one of "UNKNOWN", "SCREENSHOT", "DEVICE_LOG", "MESSAGE_LOG", "VIDEO_LOG", "RESULT_LOG", "SERVICE_LOG", "WEBKIT_LOG", "INSTRUMENTATION_OUTPUT", "EXERCISER_MONKEY_OUTPUT", "CALABASH_JSON_OUTPUT", "CALABASH_PRETTY_OUTPUT", "CALABASH_STANDARD_OUTPUT", "CALABASH_JAVA_XML_OUTPUT", "AUTOMATION_OUTPUT", "APPIUM_SERVER_OUTPUT", "APPIUM_JAVA_OUTPUT", "APPIUM_JAVA_XML_OUTPUT", "APPIUM_PYTHON_OUTPUT", "APPIUM_PYTHON_XML_OUTPUT", "EXPLORER_EVENT_LOG", "EXPLORER_SUMMARY_LOG", "APPLICATION_CRASH_REPORT", "XCTEST_LOG", "VIDEO", "CUSTOMER_ARTIFACT", "CUSTOMER_ARTIFACT_LOG", "TESTSPEC_OUTPUT"
    #   resp.artifacts[0].extension #=> String
    #   resp.artifacts[0].url #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devicefarm-2015-06-23/ListArtifacts AWS API Documentation
    #
    # @overload list_artifacts(params = {})
    # @param [Hash] params ({})
    def list_artifacts(params = {}, options = {})
      req = build_request(:list_artifacts, params)
      req.send_request(options)
    end

    # Returns information about the private device instances associated with
    # one or more AWS accounts.
    #
    # @option params [Integer] :max_results
    #   An integer that specifies the maximum number of items you want to
    #   return in the API response.
    #
    # @option params [String] :next_token
    #   An identifier that was returned from the previous call to this
    #   operation, which can be used to return the next set of items in the
    #   list.
    #
    # @return [Types::ListDeviceInstancesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDeviceInstancesResult#device_instances #device_instances} => Array&lt;Types::DeviceInstance&gt;
    #   * {Types::ListDeviceInstancesResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_device_instances({
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.device_instances #=> Array
    #   resp.device_instances[0].arn #=> String
    #   resp.device_instances[0].device_arn #=> String
    #   resp.device_instances[0].labels #=> Array
    #   resp.device_instances[0].labels[0] #=> String
    #   resp.device_instances[0].status #=> String, one of "IN_USE", "PREPARING", "AVAILABLE", "NOT_AVAILABLE"
    #   resp.device_instances[0].udid #=> String
    #   resp.device_instances[0].instance_profile.arn #=> String
    #   resp.device_instances[0].instance_profile.package_cleanup #=> Boolean
    #   resp.device_instances[0].instance_profile.exclude_app_packages_from_cleanup #=> Array
    #   resp.device_instances[0].instance_profile.exclude_app_packages_from_cleanup[0] #=> String
    #   resp.device_instances[0].instance_profile.reboot_after_use #=> Boolean
    #   resp.device_instances[0].instance_profile.name #=> String
    #   resp.device_instances[0].instance_profile.description #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devicefarm-2015-06-23/ListDeviceInstances AWS API Documentation
    #
    # @overload list_device_instances(params = {})
    # @param [Hash] params ({})
    def list_device_instances(params = {}, options = {})
      req = build_request(:list_device_instances, params)
      req.send_request(options)
    end

    # Gets information about device pools.
    #
    # @option params [required, String] :arn
    #   The project ARN.
    #
    # @option params [String] :type
    #   The device pools' type.
    #
    #   Allowed values include:
    #
    #   * CURATED: A device pool that is created and managed by AWS Device
    #     Farm.
    #
    #   * PRIVATE: A device pool that is created and managed by the device
    #     pool developer.
    #
    # @option params [String] :next_token
    #   An identifier that was returned from the previous call to this
    #   operation, which can be used to return the next set of items in the
    #   list.
    #
    # @return [Types::ListDevicePoolsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDevicePoolsResult#device_pools #device_pools} => Array&lt;Types::DevicePool&gt;
    #   * {Types::ListDevicePoolsResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: To get information about device pools
    #
    #   # The following example returns information about the private device pools in a specific project.
    #
    #   resp = client.list_device_pools({
    #     type: "PRIVATE", 
    #     arn: "arn:aws:devicefarm:us-west-2:123456789101:project:EXAMPLE-GUID-123-456", # You can get the project ARN by using the list-projects CLI command.
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     device_pools: [
    #       {
    #         name: "Top Devices", 
    #         arn: "arn:aws:devicefarm:us-west-2::devicepool:082d10e5-d7d7-48a5-ba5c-12345EXAMPLE", 
    #         description: "Top devices", 
    #         rules: [
    #           {
    #             value: "[\"arn:aws:devicefarm:us-west-2::device:123456789EXAMPLE\",\"arn:aws:devicefarm:us-west-2::device:123456789EXAMPLE\",\"arn:aws:devicefarm:us-west-2::device:123456789EXAMPLE\",\"arn:aws:devicefarm:us-west-2::device:123456789EXAMPLE\",\"arn:aws:devicefarm:us-west-2::device:123456789EXAMPLE\",\"arn:aws:devicefarm:us-west-2::device:123456789EXAMPLE\",\"arn:aws:devicefarm:us-west-2::device:123456789EXAMPLE\",\"arn:aws:devicefarm:us-west-2::device:123456789EXAMPLE\",\"arn:aws:devicefarm:us-west-2::device:123456789EXAMPLE\",\"arn:aws:devicefarm:us-west-2::device:123456789EXAMPLE\"]", 
    #             attribute: "ARN", 
    #             operator: "IN", 
    #           }, 
    #         ], 
    #       }, 
    #       {
    #         name: "My Android Device Pool", 
    #         arn: "arn:aws:devicefarm:us-west-2:123456789101:devicepool:5e01a8c7-c861-4c0a-b1d5-5ec6e6c6dd23/bf96e75a-28f6-4e61-b6a7-12345EXAMPLE", 
    #         description: "Samsung Galaxy Android devices", 
    #         rules: [
    #           {
    #             value: "[\"arn:aws:devicefarm:us-west-2::device:123456789EXAMPLE\",\"arn:aws:devicefarm:us-west-2::device:123456789EXAMPLE\",\"arn:aws:devicefarm:us-west-2::device:123456789EXAMPLE\"]", 
    #             attribute: "ARN", 
    #             operator: "IN", 
    #           }, 
    #         ], 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_device_pools({
    #     arn: "AmazonResourceName", # required
    #     type: "CURATED", # accepts CURATED, PRIVATE
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.device_pools #=> Array
    #   resp.device_pools[0].arn #=> String
    #   resp.device_pools[0].name #=> String
    #   resp.device_pools[0].description #=> String
    #   resp.device_pools[0].type #=> String, one of "CURATED", "PRIVATE"
    #   resp.device_pools[0].rules #=> Array
    #   resp.device_pools[0].rules[0].attribute #=> String, one of "ARN", "PLATFORM", "FORM_FACTOR", "MANUFACTURER", "REMOTE_ACCESS_ENABLED", "REMOTE_DEBUG_ENABLED", "APPIUM_VERSION", "INSTANCE_ARN", "INSTANCE_LABELS", "FLEET_TYPE", "OS_VERSION", "MODEL", "AVAILABILITY"
    #   resp.device_pools[0].rules[0].operator #=> String, one of "EQUALS", "LESS_THAN", "LESS_THAN_OR_EQUALS", "GREATER_THAN", "GREATER_THAN_OR_EQUALS", "IN", "NOT_IN", "CONTAINS"
    #   resp.device_pools[0].rules[0].value #=> String
    #   resp.device_pools[0].max_devices #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devicefarm-2015-06-23/ListDevicePools AWS API Documentation
    #
    # @overload list_device_pools(params = {})
    # @param [Hash] params ({})
    def list_device_pools(params = {}, options = {})
      req = build_request(:list_device_pools, params)
      req.send_request(options)
    end

    # Gets information about unique device types.
    #
    # @option params [String] :arn
    #   The Amazon Resource Name (ARN) of the project.
    #
    # @option params [String] :next_token
    #   An identifier that was returned from the previous call to this
    #   operation, which can be used to return the next set of items in the
    #   list.
    #
    # @option params [Array<Types::DeviceFilter>] :filters
    #   Used to select a set of devices. A filter is made up of an attribute,
    #   an operator, and one or more values.
    #
    #   * Attribute: The aspect of a device such as platform or model used as
    #     the selection criteria in a device filter.
    #
    #     Allowed values include:
    #
    #     * ARN: The Amazon Resource Name (ARN) of the device (for example,
    #       `arn:aws:devicefarm:us-west-2::device:12345Example`).
    #
    #     * PLATFORM: The device platform. Valid values are ANDROID or IOS.
    #
    #     * OS\_VERSION: The operating system version (for example, 10.3.2).
    #
    #     * MODEL: The device model (for example, iPad 5th Gen).
    #
    #     * AVAILABILITY: The current availability of the device. Valid values
    #       are AVAILABLE, HIGHLY\_AVAILABLE, BUSY, or
    #       TEMPORARY\_NOT\_AVAILABLE.
    #
    #     * FORM\_FACTOR: The device form factor. Valid values are PHONE or
    #       TABLET.
    #
    #     * MANUFACTURER: The device manufacturer (for example, Apple).
    #
    #     * REMOTE\_ACCESS\_ENABLED: Whether the device is enabled for remote
    #       access. Valid values are TRUE or FALSE.
    #
    #     * REMOTE\_DEBUG\_ENABLED: Whether the device is enabled for remote
    #       debugging. Valid values are TRUE or FALSE. Because remote
    #       debugging is [no longer supported][1], this attribute is ignored.
    #
    #     * INSTANCE\_ARN: The Amazon Resource Name (ARN) of the device
    #       instance.
    #
    #     * INSTANCE\_LABELS: The label of the device instance.
    #
    #     * FLEET\_TYPE: The fleet type. Valid values are PUBLIC or PRIVATE.
    #
    #   * Operator: The filter operator.
    #
    #     * The EQUALS operator is available for every attribute except
    #       INSTANCE\_LABELS.
    #
    #     * The CONTAINS operator is available for the INSTANCE\_LABELS and
    #       MODEL attributes.
    #
    #     * The IN and NOT\_IN operators are available for the ARN,
    #       OS\_VERSION, MODEL, MANUFACTURER, and INSTANCE\_ARN attributes.
    #
    #     * The LESS\_THAN, GREATER\_THAN, LESS\_THAN\_OR\_EQUALS, and
    #       GREATER\_THAN\_OR\_EQUALS operators are also available for the
    #       OS\_VERSION attribute.
    #
    #   * Values: An array of one or more filter values.
    #
    #     * The IN and NOT\_IN operators take a values array that has one or
    #       more elements.
    #
    #     * The other operators require an array with a single element.
    #
    #     * In a request, the AVAILABILITY attribute takes the following
    #       values: AVAILABLE, HIGHLY\_AVAILABLE, BUSY, or
    #       TEMPORARY\_NOT\_AVAILABLE.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/devicefarm/latest/developerguide/history.html
    #
    # @return [Types::ListDevicesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDevicesResult#devices #devices} => Array&lt;Types::Device&gt;
    #   * {Types::ListDevicesResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: To get information about devices
    #
    #   # The following example returns information about the available devices in a specific project.
    #
    #   resp = client.list_devices({
    #     arn: "arn:aws:devicefarm:us-west-2:123456789101:project:EXAMPLE-GUID-123-456", # You can get the project ARN by using the list-projects CLI command.
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_devices({
    #     arn: "AmazonResourceName",
    #     next_token: "PaginationToken",
    #     filters: [
    #       {
    #         attribute: "ARN", # accepts ARN, PLATFORM, OS_VERSION, MODEL, AVAILABILITY, FORM_FACTOR, MANUFACTURER, REMOTE_ACCESS_ENABLED, REMOTE_DEBUG_ENABLED, INSTANCE_ARN, INSTANCE_LABELS, FLEET_TYPE
    #         operator: "EQUALS", # accepts EQUALS, LESS_THAN, LESS_THAN_OR_EQUALS, GREATER_THAN, GREATER_THAN_OR_EQUALS, IN, NOT_IN, CONTAINS
    #         values: ["String"],
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.devices #=> Array
    #   resp.devices[0].arn #=> String
    #   resp.devices[0].name #=> String
    #   resp.devices[0].manufacturer #=> String
    #   resp.devices[0].model #=> String
    #   resp.devices[0].model_id #=> String
    #   resp.devices[0].form_factor #=> String, one of "PHONE", "TABLET"
    #   resp.devices[0].platform #=> String, one of "ANDROID", "IOS"
    #   resp.devices[0].os #=> String
    #   resp.devices[0].cpu.frequency #=> String
    #   resp.devices[0].cpu.architecture #=> String
    #   resp.devices[0].cpu.clock #=> Float
    #   resp.devices[0].resolution.width #=> Integer
    #   resp.devices[0].resolution.height #=> Integer
    #   resp.devices[0].heap_size #=> Integer
    #   resp.devices[0].memory #=> Integer
    #   resp.devices[0].image #=> String
    #   resp.devices[0].carrier #=> String
    #   resp.devices[0].radio #=> String
    #   resp.devices[0].remote_access_enabled #=> Boolean
    #   resp.devices[0].remote_debug_enabled #=> Boolean
    #   resp.devices[0].fleet_type #=> String
    #   resp.devices[0].fleet_name #=> String
    #   resp.devices[0].instances #=> Array
    #   resp.devices[0].instances[0].arn #=> String
    #   resp.devices[0].instances[0].device_arn #=> String
    #   resp.devices[0].instances[0].labels #=> Array
    #   resp.devices[0].instances[0].labels[0] #=> String
    #   resp.devices[0].instances[0].status #=> String, one of "IN_USE", "PREPARING", "AVAILABLE", "NOT_AVAILABLE"
    #   resp.devices[0].instances[0].udid #=> String
    #   resp.devices[0].instances[0].instance_profile.arn #=> String
    #   resp.devices[0].instances[0].instance_profile.package_cleanup #=> Boolean
    #   resp.devices[0].instances[0].instance_profile.exclude_app_packages_from_cleanup #=> Array
    #   resp.devices[0].instances[0].instance_profile.exclude_app_packages_from_cleanup[0] #=> String
    #   resp.devices[0].instances[0].instance_profile.reboot_after_use #=> Boolean
    #   resp.devices[0].instances[0].instance_profile.name #=> String
    #   resp.devices[0].instances[0].instance_profile.description #=> String
    #   resp.devices[0].availability #=> String, one of "TEMPORARY_NOT_AVAILABLE", "BUSY", "AVAILABLE", "HIGHLY_AVAILABLE"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devicefarm-2015-06-23/ListDevices AWS API Documentation
    #
    # @overload list_devices(params = {})
    # @param [Hash] params ({})
    def list_devices(params = {}, options = {})
      req = build_request(:list_devices, params)
      req.send_request(options)
    end

    # Returns information about all the instance profiles in an AWS account.
    #
    # @option params [Integer] :max_results
    #   An integer that specifies the maximum number of items you want to
    #   return in the API response.
    #
    # @option params [String] :next_token
    #   An identifier that was returned from the previous call to this
    #   operation, which can be used to return the next set of items in the
    #   list.
    #
    # @return [Types::ListInstanceProfilesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListInstanceProfilesResult#instance_profiles #instance_profiles} => Array&lt;Types::InstanceProfile&gt;
    #   * {Types::ListInstanceProfilesResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_instance_profiles({
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.instance_profiles #=> Array
    #   resp.instance_profiles[0].arn #=> String
    #   resp.instance_profiles[0].package_cleanup #=> Boolean
    #   resp.instance_profiles[0].exclude_app_packages_from_cleanup #=> Array
    #   resp.instance_profiles[0].exclude_app_packages_from_cleanup[0] #=> String
    #   resp.instance_profiles[0].reboot_after_use #=> Boolean
    #   resp.instance_profiles[0].name #=> String
    #   resp.instance_profiles[0].description #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devicefarm-2015-06-23/ListInstanceProfiles AWS API Documentation
    #
    # @overload list_instance_profiles(params = {})
    # @param [Hash] params ({})
    def list_instance_profiles(params = {}, options = {})
      req = build_request(:list_instance_profiles, params)
      req.send_request(options)
    end

    # Gets information about jobs for a given test run.
    #
    # @option params [required, String] :arn
    #   The run's Amazon Resource Name (ARN).
    #
    # @option params [String] :next_token
    #   An identifier that was returned from the previous call to this
    #   operation, which can be used to return the next set of items in the
    #   list.
    #
    # @return [Types::ListJobsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListJobsResult#jobs #jobs} => Array&lt;Types::Job&gt;
    #   * {Types::ListJobsResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: To get information about jobs
    #
    #   # The following example returns information about jobs in a specific project.
    #
    #   resp = client.list_jobs({
    #     arn: "arn:aws:devicefarm:us-west-2:123456789101:project:EXAMPLE-GUID-123-456", # You can get the project ARN by using the list-jobs CLI command.
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_jobs({
    #     arn: "AmazonResourceName", # required
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.jobs #=> Array
    #   resp.jobs[0].arn #=> String
    #   resp.jobs[0].name #=> String
    #   resp.jobs[0].type #=> String, one of "BUILTIN_FUZZ", "BUILTIN_EXPLORER", "WEB_PERFORMANCE_PROFILE", "APPIUM_JAVA_JUNIT", "APPIUM_JAVA_TESTNG", "APPIUM_PYTHON", "APPIUM_NODE", "APPIUM_RUBY", "APPIUM_WEB_JAVA_JUNIT", "APPIUM_WEB_JAVA_TESTNG", "APPIUM_WEB_PYTHON", "APPIUM_WEB_NODE", "APPIUM_WEB_RUBY", "CALABASH", "INSTRUMENTATION", "UIAUTOMATION", "UIAUTOMATOR", "XCTEST", "XCTEST_UI", "REMOTE_ACCESS_RECORD", "REMOTE_ACCESS_REPLAY"
    #   resp.jobs[0].created #=> Time
    #   resp.jobs[0].status #=> String, one of "PENDING", "PENDING_CONCURRENCY", "PENDING_DEVICE", "PROCESSING", "SCHEDULING", "PREPARING", "RUNNING", "COMPLETED", "STOPPING"
    #   resp.jobs[0].result #=> String, one of "PENDING", "PASSED", "WARNED", "FAILED", "SKIPPED", "ERRORED", "STOPPED"
    #   resp.jobs[0].started #=> Time
    #   resp.jobs[0].stopped #=> Time
    #   resp.jobs[0].counters.total #=> Integer
    #   resp.jobs[0].counters.passed #=> Integer
    #   resp.jobs[0].counters.failed #=> Integer
    #   resp.jobs[0].counters.warned #=> Integer
    #   resp.jobs[0].counters.errored #=> Integer
    #   resp.jobs[0].counters.stopped #=> Integer
    #   resp.jobs[0].counters.skipped #=> Integer
    #   resp.jobs[0].message #=> String
    #   resp.jobs[0].device.arn #=> String
    #   resp.jobs[0].device.name #=> String
    #   resp.jobs[0].device.manufacturer #=> String
    #   resp.jobs[0].device.model #=> String
    #   resp.jobs[0].device.model_id #=> String
    #   resp.jobs[0].device.form_factor #=> String, one of "PHONE", "TABLET"
    #   resp.jobs[0].device.platform #=> String, one of "ANDROID", "IOS"
    #   resp.jobs[0].device.os #=> String
    #   resp.jobs[0].device.cpu.frequency #=> String
    #   resp.jobs[0].device.cpu.architecture #=> String
    #   resp.jobs[0].device.cpu.clock #=> Float
    #   resp.jobs[0].device.resolution.width #=> Integer
    #   resp.jobs[0].device.resolution.height #=> Integer
    #   resp.jobs[0].device.heap_size #=> Integer
    #   resp.jobs[0].device.memory #=> Integer
    #   resp.jobs[0].device.image #=> String
    #   resp.jobs[0].device.carrier #=> String
    #   resp.jobs[0].device.radio #=> String
    #   resp.jobs[0].device.remote_access_enabled #=> Boolean
    #   resp.jobs[0].device.remote_debug_enabled #=> Boolean
    #   resp.jobs[0].device.fleet_type #=> String
    #   resp.jobs[0].device.fleet_name #=> String
    #   resp.jobs[0].device.instances #=> Array
    #   resp.jobs[0].device.instances[0].arn #=> String
    #   resp.jobs[0].device.instances[0].device_arn #=> String
    #   resp.jobs[0].device.instances[0].labels #=> Array
    #   resp.jobs[0].device.instances[0].labels[0] #=> String
    #   resp.jobs[0].device.instances[0].status #=> String, one of "IN_USE", "PREPARING", "AVAILABLE", "NOT_AVAILABLE"
    #   resp.jobs[0].device.instances[0].udid #=> String
    #   resp.jobs[0].device.instances[0].instance_profile.arn #=> String
    #   resp.jobs[0].device.instances[0].instance_profile.package_cleanup #=> Boolean
    #   resp.jobs[0].device.instances[0].instance_profile.exclude_app_packages_from_cleanup #=> Array
    #   resp.jobs[0].device.instances[0].instance_profile.exclude_app_packages_from_cleanup[0] #=> String
    #   resp.jobs[0].device.instances[0].instance_profile.reboot_after_use #=> Boolean
    #   resp.jobs[0].device.instances[0].instance_profile.name #=> String
    #   resp.jobs[0].device.instances[0].instance_profile.description #=> String
    #   resp.jobs[0].device.availability #=> String, one of "TEMPORARY_NOT_AVAILABLE", "BUSY", "AVAILABLE", "HIGHLY_AVAILABLE"
    #   resp.jobs[0].instance_arn #=> String
    #   resp.jobs[0].device_minutes.total #=> Float
    #   resp.jobs[0].device_minutes.metered #=> Float
    #   resp.jobs[0].device_minutes.unmetered #=> Float
    #   resp.jobs[0].video_endpoint #=> String
    #   resp.jobs[0].video_capture #=> Boolean
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devicefarm-2015-06-23/ListJobs AWS API Documentation
    #
    # @overload list_jobs(params = {})
    # @param [Hash] params ({})
    def list_jobs(params = {}, options = {})
      req = build_request(:list_jobs, params)
      req.send_request(options)
    end

    # Returns the list of available network profiles.
    #
    # @option params [required, String] :arn
    #   The Amazon Resource Name (ARN) of the project for which you want to
    #   list network profiles.
    #
    # @option params [String] :type
    #   The type of network profile to return information about. Valid values
    #   are listed here.
    #
    # @option params [String] :next_token
    #   An identifier that was returned from the previous call to this
    #   operation, which can be used to return the next set of items in the
    #   list.
    #
    # @return [Types::ListNetworkProfilesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListNetworkProfilesResult#network_profiles #network_profiles} => Array&lt;Types::NetworkProfile&gt;
    #   * {Types::ListNetworkProfilesResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_network_profiles({
    #     arn: "AmazonResourceName", # required
    #     type: "CURATED", # accepts CURATED, PRIVATE
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.network_profiles #=> Array
    #   resp.network_profiles[0].arn #=> String
    #   resp.network_profiles[0].name #=> String
    #   resp.network_profiles[0].description #=> String
    #   resp.network_profiles[0].type #=> String, one of "CURATED", "PRIVATE"
    #   resp.network_profiles[0].uplink_bandwidth_bits #=> Integer
    #   resp.network_profiles[0].downlink_bandwidth_bits #=> Integer
    #   resp.network_profiles[0].uplink_delay_ms #=> Integer
    #   resp.network_profiles[0].downlink_delay_ms #=> Integer
    #   resp.network_profiles[0].uplink_jitter_ms #=> Integer
    #   resp.network_profiles[0].downlink_jitter_ms #=> Integer
    #   resp.network_profiles[0].uplink_loss_percent #=> Integer
    #   resp.network_profiles[0].downlink_loss_percent #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devicefarm-2015-06-23/ListNetworkProfiles AWS API Documentation
    #
    # @overload list_network_profiles(params = {})
    # @param [Hash] params ({})
    def list_network_profiles(params = {}, options = {})
      req = build_request(:list_network_profiles, params)
      req.send_request(options)
    end

    # Returns a list of offering promotions. Each offering promotion record
    # contains the ID and description of the promotion. The API returns a
    # `NotEligible` error if the caller is not permitted to invoke the
    # operation. Contact
    # [aws-devicefarm-support@amazon.com](mailto:aws-devicefarm-support@amazon.com)
    # if you must be able to invoke this operation.
    #
    # @option params [String] :next_token
    #   An identifier that was returned from the previous call to this
    #   operation, which can be used to return the next set of items in the
    #   list.
    #
    # @return [Types::ListOfferingPromotionsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListOfferingPromotionsResult#offering_promotions #offering_promotions} => Array&lt;Types::OfferingPromotion&gt;
    #   * {Types::ListOfferingPromotionsResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_offering_promotions({
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.offering_promotions #=> Array
    #   resp.offering_promotions[0].id #=> String
    #   resp.offering_promotions[0].description #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devicefarm-2015-06-23/ListOfferingPromotions AWS API Documentation
    #
    # @overload list_offering_promotions(params = {})
    # @param [Hash] params ({})
    def list_offering_promotions(params = {}, options = {})
      req = build_request(:list_offering_promotions, params)
      req.send_request(options)
    end

    # Returns a list of all historical purchases, renewals, and system
    # renewal transactions for an AWS account. The list is paginated and
    # ordered by a descending timestamp (most recent transactions are
    # first). The API returns a `NotEligible` error if the user is not
    # permitted to invoke the operation. If you must be able to invoke this
    # operation, contact
    # [aws-devicefarm-support@amazon.com](mailto:aws-devicefarm-support@amazon.com).
    #
    # @option params [String] :next_token
    #   An identifier that was returned from the previous call to this
    #   operation, which can be used to return the next set of items in the
    #   list.
    #
    # @return [Types::ListOfferingTransactionsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListOfferingTransactionsResult#offering_transactions #offering_transactions} => Array&lt;Types::OfferingTransaction&gt;
    #   * {Types::ListOfferingTransactionsResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: To get information about device offering transactions
    #
    #   # The following example returns information about Device Farm offering transactions.
    #
    #   resp = client.list_offering_transactions({
    #     next_token: "RW5DdDJkMWYwZjM2MzM2VHVpOHJIUXlDUXlhc2QzRGViYnc9SEXAMPLE=", # A dynamically generated value, used for paginating results.
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     offering_transactions: [
    #       {
    #         cost: {
    #           amount: 0, 
    #           currency_code: "USD", 
    #         }, 
    #         created_on: Time.parse("1470021420"), 
    #         offering_status: {
    #           type: "RENEW", 
    #           effective_on: Time.parse("1472688000"), 
    #           offering: {
    #             type: "RECURRING", 
    #             description: "Android Remote Access Unmetered Device Slot", 
    #             id: "D68B3C05-1BA6-4360-BC69-12345EXAMPLE", 
    #             platform: "ANDROID", 
    #           }, 
    #           quantity: 0, 
    #         }, 
    #         transaction_id: "03728003-d1ea-4851-abd6-12345EXAMPLE", 
    #       }, 
    #       {
    #         cost: {
    #           amount: 250, 
    #           currency_code: "USD", 
    #         }, 
    #         created_on: Time.parse("1470021420"), 
    #         offering_status: {
    #           type: "PURCHASE", 
    #           effective_on: Time.parse("1470021420"), 
    #           offering: {
    #             type: "RECURRING", 
    #             description: "Android Remote Access Unmetered Device Slot", 
    #             id: "D68B3C05-1BA6-4360-BC69-12345EXAMPLE", 
    #             platform: "ANDROID", 
    #           }, 
    #           quantity: 1, 
    #         }, 
    #         transaction_id: "56820b6e-06bd-473a-8ff8-12345EXAMPLE", 
    #       }, 
    #       {
    #         cost: {
    #           amount: 175, 
    #           currency_code: "USD", 
    #         }, 
    #         created_on: Time.parse("1465538520"), 
    #         offering_status: {
    #           type: "PURCHASE", 
    #           effective_on: Time.parse("1465538520"), 
    #           offering: {
    #             type: "RECURRING", 
    #             description: "Android Unmetered Device Slot", 
    #             id: "8980F81C-00D7-469D-8EC6-12345EXAMPLE", 
    #             platform: "ANDROID", 
    #           }, 
    #           quantity: 1, 
    #         }, 
    #         transaction_id: "953ae2c6-d760-4a04-9597-12345EXAMPLE", 
    #       }, 
    #       {
    #         cost: {
    #           amount: 8.07, 
    #           currency_code: "USD", 
    #         }, 
    #         created_on: Time.parse("1459344300"), 
    #         offering_status: {
    #           type: "PURCHASE", 
    #           effective_on: Time.parse("1459344300"), 
    #           offering: {
    #             type: "RECURRING", 
    #             description: "iOS Unmetered Device Slot", 
    #             id: "A53D4D73-A6F6-4B82-A0B0-12345EXAMPLE", 
    #             platform: "IOS", 
    #           }, 
    #           quantity: 1, 
    #         }, 
    #         transaction_id: "2baf9021-ae3e-47f5-ab52-12345EXAMPLE", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_offering_transactions({
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.offering_transactions #=> Array
    #   resp.offering_transactions[0].offering_status.type #=> String, one of "PURCHASE", "RENEW", "SYSTEM"
    #   resp.offering_transactions[0].offering_status.offering.id #=> String
    #   resp.offering_transactions[0].offering_status.offering.description #=> String
    #   resp.offering_transactions[0].offering_status.offering.type #=> String, one of "RECURRING"
    #   resp.offering_transactions[0].offering_status.offering.platform #=> String, one of "ANDROID", "IOS"
    #   resp.offering_transactions[0].offering_status.offering.recurring_charges #=> Array
    #   resp.offering_transactions[0].offering_status.offering.recurring_charges[0].cost.amount #=> Float
    #   resp.offering_transactions[0].offering_status.offering.recurring_charges[0].cost.currency_code #=> String, one of "USD"
    #   resp.offering_transactions[0].offering_status.offering.recurring_charges[0].frequency #=> String, one of "MONTHLY"
    #   resp.offering_transactions[0].offering_status.quantity #=> Integer
    #   resp.offering_transactions[0].offering_status.effective_on #=> Time
    #   resp.offering_transactions[0].transaction_id #=> String
    #   resp.offering_transactions[0].offering_promotion_id #=> String
    #   resp.offering_transactions[0].created_on #=> Time
    #   resp.offering_transactions[0].cost.amount #=> Float
    #   resp.offering_transactions[0].cost.currency_code #=> String, one of "USD"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devicefarm-2015-06-23/ListOfferingTransactions AWS API Documentation
    #
    # @overload list_offering_transactions(params = {})
    # @param [Hash] params ({})
    def list_offering_transactions(params = {}, options = {})
      req = build_request(:list_offering_transactions, params)
      req.send_request(options)
    end

    # Returns a list of products or offerings that the user can manage
    # through the API. Each offering record indicates the recurring price
    # per unit and the frequency for that offering. The API returns a
    # `NotEligible` error if the user is not permitted to invoke the
    # operation. If you must be able to invoke this operation, contact
    # [aws-devicefarm-support@amazon.com](mailto:aws-devicefarm-support@amazon.com).
    #
    # @option params [String] :next_token
    #   An identifier that was returned from the previous call to this
    #   operation, which can be used to return the next set of items in the
    #   list.
    #
    # @return [Types::ListOfferingsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListOfferingsResult#offerings #offerings} => Array&lt;Types::Offering&gt;
    #   * {Types::ListOfferingsResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: To get information about device offerings
    #
    #   # The following example returns information about available device offerings.
    #
    #   resp = client.list_offerings({
    #     next_token: "RW5DdDJkMWYwZjM2MzM2VHVpOHJIUXlDUXlhc2QzRGViYnc9SEXAMPLE=", # A dynamically generated value, used for paginating results.
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     offerings: [
    #       {
    #         type: "RECURRING", 
    #         description: "iOS Unmetered Device Slot", 
    #         id: "A53D4D73-A6F6-4B82-A0B0-12345EXAMPLE", 
    #         platform: "IOS", 
    #         recurring_charges: [
    #           {
    #             cost: {
    #               amount: 250, 
    #               currency_code: "USD", 
    #             }, 
    #             frequency: "MONTHLY", 
    #           }, 
    #         ], 
    #       }, 
    #       {
    #         type: "RECURRING", 
    #         description: "Android Unmetered Device Slot", 
    #         id: "8980F81C-00D7-469D-8EC6-12345EXAMPLE", 
    #         platform: "ANDROID", 
    #         recurring_charges: [
    #           {
    #             cost: {
    #               amount: 250, 
    #               currency_code: "USD", 
    #             }, 
    #             frequency: "MONTHLY", 
    #           }, 
    #         ], 
    #       }, 
    #       {
    #         type: "RECURRING", 
    #         description: "Android Remote Access Unmetered Device Slot", 
    #         id: "D68B3C05-1BA6-4360-BC69-12345EXAMPLE", 
    #         platform: "ANDROID", 
    #         recurring_charges: [
    #           {
    #             cost: {
    #               amount: 250, 
    #               currency_code: "USD", 
    #             }, 
    #             frequency: "MONTHLY", 
    #           }, 
    #         ], 
    #       }, 
    #       {
    #         type: "RECURRING", 
    #         description: "iOS Remote Access Unmetered Device Slot", 
    #         id: "552B4DAD-A6C9-45C4-94FB-12345EXAMPLE", 
    #         platform: "IOS", 
    #         recurring_charges: [
    #           {
    #             cost: {
    #               amount: 250, 
    #               currency_code: "USD", 
    #             }, 
    #             frequency: "MONTHLY", 
    #           }, 
    #         ], 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_offerings({
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.offerings #=> Array
    #   resp.offerings[0].id #=> String
    #   resp.offerings[0].description #=> String
    #   resp.offerings[0].type #=> String, one of "RECURRING"
    #   resp.offerings[0].platform #=> String, one of "ANDROID", "IOS"
    #   resp.offerings[0].recurring_charges #=> Array
    #   resp.offerings[0].recurring_charges[0].cost.amount #=> Float
    #   resp.offerings[0].recurring_charges[0].cost.currency_code #=> String, one of "USD"
    #   resp.offerings[0].recurring_charges[0].frequency #=> String, one of "MONTHLY"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devicefarm-2015-06-23/ListOfferings AWS API Documentation
    #
    # @overload list_offerings(params = {})
    # @param [Hash] params ({})
    def list_offerings(params = {}, options = {})
      req = build_request(:list_offerings, params)
      req.send_request(options)
    end

    # Gets information about projects.
    #
    # @option params [String] :arn
    #   Optional. If no Amazon Resource Name (ARN) is specified, then AWS
    #   Device Farm returns a list of all projects for the AWS account. You
    #   can also specify a project ARN.
    #
    # @option params [String] :next_token
    #   An identifier that was returned from the previous call to this
    #   operation, which can be used to return the next set of items in the
    #   list.
    #
    # @return [Types::ListProjectsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListProjectsResult#projects #projects} => Array&lt;Types::Project&gt;
    #   * {Types::ListProjectsResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: To get information about a Device Farm project
    #
    #   # The following example returns information about the specified project in Device Farm.
    #
    #   resp = client.list_projects({
    #     arn: "arn:aws:devicefarm:us-west-2:123456789101:project:7ad300ed-8183-41a7-bf94-12345EXAMPLE", 
    #     next_token: "RW5DdDJkMWYwZjM2MzM2VHVpOHJIUXlDUXlhc2QzRGViYnc9SEXAMPLE", # A dynamically generated value, used for paginating results.
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     projects: [
    #       {
    #         name: "My Test Project", 
    #         arn: "arn:aws:devicefarm:us-west-2:123456789101:project:7ad300ed-8183-41a7-bf94-12345EXAMPLE", 
    #         created: Time.parse("1453163262.105"), 
    #       }, 
    #       {
    #         name: "Hello World", 
    #         arn: "arn:aws:devicefarm:us-west-2:123456789101:project:d6b087d9-56db-4e44-b9ec-12345EXAMPLE", 
    #         created: Time.parse("1470350112.439"), 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_projects({
    #     arn: "AmazonResourceName",
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.projects #=> Array
    #   resp.projects[0].arn #=> String
    #   resp.projects[0].name #=> String
    #   resp.projects[0].default_job_timeout_minutes #=> Integer
    #   resp.projects[0].created #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devicefarm-2015-06-23/ListProjects AWS API Documentation
    #
    # @overload list_projects(params = {})
    # @param [Hash] params ({})
    def list_projects(params = {}, options = {})
      req = build_request(:list_projects, params)
      req.send_request(options)
    end

    # Returns a list of all currently running remote access sessions.
    #
    # @option params [required, String] :arn
    #   The Amazon Resource Name (ARN) of the project about which you are
    #   requesting information.
    #
    # @option params [String] :next_token
    #   An identifier that was returned from the previous call to this
    #   operation, which can be used to return the next set of items in the
    #   list.
    #
    # @return [Types::ListRemoteAccessSessionsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListRemoteAccessSessionsResult#remote_access_sessions #remote_access_sessions} => Array&lt;Types::RemoteAccessSession&gt;
    #   * {Types::ListRemoteAccessSessionsResult#next_token #next_token} => String
    #
    #
    # @example Example: To get information about a remote access session
    #
    #   # The following example returns information about a specific Device Farm remote access session.
    #
    #   resp = client.list_remote_access_sessions({
    #     arn: "arn:aws:devicefarm:us-west-2:123456789101:session:EXAMPLE-GUID-123-456", # You can get the Amazon Resource Name (ARN) of the session by using the list-sessions CLI command.
    #     next_token: "RW5DdDJkMWYwZjM2MzM2VHVpOHJIUXlDUXlhc2QzRGViYnc9SEXAMPLE=", # A dynamically generated value, used for paginating results.
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     remote_access_sessions: [
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_remote_access_sessions({
    #     arn: "AmazonResourceName", # required
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.remote_access_sessions #=> Array
    #   resp.remote_access_sessions[0].arn #=> String
    #   resp.remote_access_sessions[0].name #=> String
    #   resp.remote_access_sessions[0].created #=> Time
    #   resp.remote_access_sessions[0].status #=> String, one of "PENDING", "PENDING_CONCURRENCY", "PENDING_DEVICE", "PROCESSING", "SCHEDULING", "PREPARING", "RUNNING", "COMPLETED", "STOPPING"
    #   resp.remote_access_sessions[0].result #=> String, one of "PENDING", "PASSED", "WARNED", "FAILED", "SKIPPED", "ERRORED", "STOPPED"
    #   resp.remote_access_sessions[0].message #=> String
    #   resp.remote_access_sessions[0].started #=> Time
    #   resp.remote_access_sessions[0].stopped #=> Time
    #   resp.remote_access_sessions[0].device.arn #=> String
    #   resp.remote_access_sessions[0].device.name #=> String
    #   resp.remote_access_sessions[0].device.manufacturer #=> String
    #   resp.remote_access_sessions[0].device.model #=> String
    #   resp.remote_access_sessions[0].device.model_id #=> String
    #   resp.remote_access_sessions[0].device.form_factor #=> String, one of "PHONE", "TABLET"
    #   resp.remote_access_sessions[0].device.platform #=> String, one of "ANDROID", "IOS"
    #   resp.remote_access_sessions[0].device.os #=> String
    #   resp.remote_access_sessions[0].device.cpu.frequency #=> String
    #   resp.remote_access_sessions[0].device.cpu.architecture #=> String
    #   resp.remote_access_sessions[0].device.cpu.clock #=> Float
    #   resp.remote_access_sessions[0].device.resolution.width #=> Integer
    #   resp.remote_access_sessions[0].device.resolution.height #=> Integer
    #   resp.remote_access_sessions[0].device.heap_size #=> Integer
    #   resp.remote_access_sessions[0].device.memory #=> Integer
    #   resp.remote_access_sessions[0].device.image #=> String
    #   resp.remote_access_sessions[0].device.carrier #=> String
    #   resp.remote_access_sessions[0].device.radio #=> String
    #   resp.remote_access_sessions[0].device.remote_access_enabled #=> Boolean
    #   resp.remote_access_sessions[0].device.remote_debug_enabled #=> Boolean
    #   resp.remote_access_sessions[0].device.fleet_type #=> String
    #   resp.remote_access_sessions[0].device.fleet_name #=> String
    #   resp.remote_access_sessions[0].device.instances #=> Array
    #   resp.remote_access_sessions[0].device.instances[0].arn #=> String
    #   resp.remote_access_sessions[0].device.instances[0].device_arn #=> String
    #   resp.remote_access_sessions[0].device.instances[0].labels #=> Array
    #   resp.remote_access_sessions[0].device.instances[0].labels[0] #=> String
    #   resp.remote_access_sessions[0].device.instances[0].status #=> String, one of "IN_USE", "PREPARING", "AVAILABLE", "NOT_AVAILABLE"
    #   resp.remote_access_sessions[0].device.instances[0].udid #=> String
    #   resp.remote_access_sessions[0].device.instances[0].instance_profile.arn #=> String
    #   resp.remote_access_sessions[0].device.instances[0].instance_profile.package_cleanup #=> Boolean
    #   resp.remote_access_sessions[0].device.instances[0].instance_profile.exclude_app_packages_from_cleanup #=> Array
    #   resp.remote_access_sessions[0].device.instances[0].instance_profile.exclude_app_packages_from_cleanup[0] #=> String
    #   resp.remote_access_sessions[0].device.instances[0].instance_profile.reboot_after_use #=> Boolean
    #   resp.remote_access_sessions[0].device.instances[0].instance_profile.name #=> String
    #   resp.remote_access_sessions[0].device.instances[0].instance_profile.description #=> String
    #   resp.remote_access_sessions[0].device.availability #=> String, one of "TEMPORARY_NOT_AVAILABLE", "BUSY", "AVAILABLE", "HIGHLY_AVAILABLE"
    #   resp.remote_access_sessions[0].instance_arn #=> String
    #   resp.remote_access_sessions[0].remote_debug_enabled #=> Boolean
    #   resp.remote_access_sessions[0].remote_record_enabled #=> Boolean
    #   resp.remote_access_sessions[0].remote_record_app_arn #=> String
    #   resp.remote_access_sessions[0].host_address #=> String
    #   resp.remote_access_sessions[0].client_id #=> String
    #   resp.remote_access_sessions[0].billing_method #=> String, one of "METERED", "UNMETERED"
    #   resp.remote_access_sessions[0].device_minutes.total #=> Float
    #   resp.remote_access_sessions[0].device_minutes.metered #=> Float
    #   resp.remote_access_sessions[0].device_minutes.unmetered #=> Float
    #   resp.remote_access_sessions[0].endpoint #=> String
    #   resp.remote_access_sessions[0].device_udid #=> String
    #   resp.remote_access_sessions[0].interaction_mode #=> String, one of "INTERACTIVE", "NO_VIDEO", "VIDEO_ONLY"
    #   resp.remote_access_sessions[0].skip_app_resign #=> Boolean
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devicefarm-2015-06-23/ListRemoteAccessSessions AWS API Documentation
    #
    # @overload list_remote_access_sessions(params = {})
    # @param [Hash] params ({})
    def list_remote_access_sessions(params = {}, options = {})
      req = build_request(:list_remote_access_sessions, params)
      req.send_request(options)
    end

    # Gets information about runs, given an AWS Device Farm project ARN.
    #
    # @option params [required, String] :arn
    #   The Amazon Resource Name (ARN) of the project for which you want to
    #   list runs.
    #
    # @option params [String] :next_token
    #   An identifier that was returned from the previous call to this
    #   operation, which can be used to return the next set of items in the
    #   list.
    #
    # @return [Types::ListRunsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListRunsResult#runs #runs} => Array&lt;Types::Run&gt;
    #   * {Types::ListRunsResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: To get information about a test run
    #
    #   # The following example returns information about a specific test run.
    #
    #   resp = client.list_runs({
    #     arn: "arn:aws:devicefarm:us-west-2:123456789101:run:5e01a8c7-c861-4c0a-b1d5-5ec6e6c6dd23/0fcac17b-6122-44d7-ae5a-12345EXAMPLE", # You can get the Amazon Resource Name (ARN) of the run by using the list-runs CLI command.
    #     next_token: "RW5DdDJkMWYwZjM2MzM2VHVpOHJIUXlDUXlhc2QzRGViYnc9SEXAMPLE", # A dynamically generated value, used for paginating results.
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     runs: [
    #       {
    #         name: "My Test Run", 
    #         type: "BUILTIN_EXPLORER", 
    #         arn: "arn:aws:devicefarm:us-west-2:123456789101:run:5e01a8c7-c861-4c0a-b1d5-5ec6e6c6dd23/0fcac17b-6122-44d7-ae5a-12345EXAMPLE", 
    #         billing_method: "METERED", 
    #         completed_jobs: 0, 
    #         counters: {
    #           errored: 0, 
    #           failed: 0, 
    #           passed: 0, 
    #           skipped: 0, 
    #           stopped: 0, 
    #           total: 0, 
    #           warned: 0, 
    #         }, 
    #         created: Time.parse("1472667509.852"), 
    #         device_minutes: {
    #           metered: 0.0, 
    #           total: 0.0, 
    #           unmetered: 0.0, 
    #         }, 
    #         platform: "ANDROID", 
    #         result: "PENDING", 
    #         status: "RUNNING", 
    #         total_jobs: 3, 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_runs({
    #     arn: "AmazonResourceName", # required
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.runs #=> Array
    #   resp.runs[0].arn #=> String
    #   resp.runs[0].name #=> String
    #   resp.runs[0].type #=> String, one of "BUILTIN_FUZZ", "BUILTIN_EXPLORER", "WEB_PERFORMANCE_PROFILE", "APPIUM_JAVA_JUNIT", "APPIUM_JAVA_TESTNG", "APPIUM_PYTHON", "APPIUM_NODE", "APPIUM_RUBY", "APPIUM_WEB_JAVA_JUNIT", "APPIUM_WEB_JAVA_TESTNG", "APPIUM_WEB_PYTHON", "APPIUM_WEB_NODE", "APPIUM_WEB_RUBY", "CALABASH", "INSTRUMENTATION", "UIAUTOMATION", "UIAUTOMATOR", "XCTEST", "XCTEST_UI", "REMOTE_ACCESS_RECORD", "REMOTE_ACCESS_REPLAY"
    #   resp.runs[0].platform #=> String, one of "ANDROID", "IOS"
    #   resp.runs[0].created #=> Time
    #   resp.runs[0].status #=> String, one of "PENDING", "PENDING_CONCURRENCY", "PENDING_DEVICE", "PROCESSING", "SCHEDULING", "PREPARING", "RUNNING", "COMPLETED", "STOPPING"
    #   resp.runs[0].result #=> String, one of "PENDING", "PASSED", "WARNED", "FAILED", "SKIPPED", "ERRORED", "STOPPED"
    #   resp.runs[0].started #=> Time
    #   resp.runs[0].stopped #=> Time
    #   resp.runs[0].counters.total #=> Integer
    #   resp.runs[0].counters.passed #=> Integer
    #   resp.runs[0].counters.failed #=> Integer
    #   resp.runs[0].counters.warned #=> Integer
    #   resp.runs[0].counters.errored #=> Integer
    #   resp.runs[0].counters.stopped #=> Integer
    #   resp.runs[0].counters.skipped #=> Integer
    #   resp.runs[0].message #=> String
    #   resp.runs[0].total_jobs #=> Integer
    #   resp.runs[0].completed_jobs #=> Integer
    #   resp.runs[0].billing_method #=> String, one of "METERED", "UNMETERED"
    #   resp.runs[0].device_minutes.total #=> Float
    #   resp.runs[0].device_minutes.metered #=> Float
    #   resp.runs[0].device_minutes.unmetered #=> Float
    #   resp.runs[0].network_profile.arn #=> String
    #   resp.runs[0].network_profile.name #=> String
    #   resp.runs[0].network_profile.description #=> String
    #   resp.runs[0].network_profile.type #=> String, one of "CURATED", "PRIVATE"
    #   resp.runs[0].network_profile.uplink_bandwidth_bits #=> Integer
    #   resp.runs[0].network_profile.downlink_bandwidth_bits #=> Integer
    #   resp.runs[0].network_profile.uplink_delay_ms #=> Integer
    #   resp.runs[0].network_profile.downlink_delay_ms #=> Integer
    #   resp.runs[0].network_profile.uplink_jitter_ms #=> Integer
    #   resp.runs[0].network_profile.downlink_jitter_ms #=> Integer
    #   resp.runs[0].network_profile.uplink_loss_percent #=> Integer
    #   resp.runs[0].network_profile.downlink_loss_percent #=> Integer
    #   resp.runs[0].parsing_result_url #=> String
    #   resp.runs[0].result_code #=> String, one of "PARSING_FAILED", "VPC_ENDPOINT_SETUP_FAILED"
    #   resp.runs[0].seed #=> Integer
    #   resp.runs[0].app_upload #=> String
    #   resp.runs[0].event_count #=> Integer
    #   resp.runs[0].job_timeout_minutes #=> Integer
    #   resp.runs[0].device_pool_arn #=> String
    #   resp.runs[0].locale #=> String
    #   resp.runs[0].radios.wifi #=> Boolean
    #   resp.runs[0].radios.bluetooth #=> Boolean
    #   resp.runs[0].radios.nfc #=> Boolean
    #   resp.runs[0].radios.gps #=> Boolean
    #   resp.runs[0].location.latitude #=> Float
    #   resp.runs[0].location.longitude #=> Float
    #   resp.runs[0].customer_artifact_paths.ios_paths #=> Array
    #   resp.runs[0].customer_artifact_paths.ios_paths[0] #=> String
    #   resp.runs[0].customer_artifact_paths.android_paths #=> Array
    #   resp.runs[0].customer_artifact_paths.android_paths[0] #=> String
    #   resp.runs[0].customer_artifact_paths.device_host_paths #=> Array
    #   resp.runs[0].customer_artifact_paths.device_host_paths[0] #=> String
    #   resp.runs[0].web_url #=> String
    #   resp.runs[0].skip_app_resign #=> Boolean
    #   resp.runs[0].test_spec_arn #=> String
    #   resp.runs[0].device_selection_result.filters #=> Array
    #   resp.runs[0].device_selection_result.filters[0].attribute #=> String, one of "ARN", "PLATFORM", "OS_VERSION", "MODEL", "AVAILABILITY", "FORM_FACTOR", "MANUFACTURER", "REMOTE_ACCESS_ENABLED", "REMOTE_DEBUG_ENABLED", "INSTANCE_ARN", "INSTANCE_LABELS", "FLEET_TYPE"
    #   resp.runs[0].device_selection_result.filters[0].operator #=> String, one of "EQUALS", "LESS_THAN", "LESS_THAN_OR_EQUALS", "GREATER_THAN", "GREATER_THAN_OR_EQUALS", "IN", "NOT_IN", "CONTAINS"
    #   resp.runs[0].device_selection_result.filters[0].values #=> Array
    #   resp.runs[0].device_selection_result.filters[0].values[0] #=> String
    #   resp.runs[0].device_selection_result.matched_devices_count #=> Integer
    #   resp.runs[0].device_selection_result.max_devices #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devicefarm-2015-06-23/ListRuns AWS API Documentation
    #
    # @overload list_runs(params = {})
    # @param [Hash] params ({})
    def list_runs(params = {}, options = {})
      req = build_request(:list_runs, params)
      req.send_request(options)
    end

    # Gets information about samples, given an AWS Device Farm job ARN.
    #
    # @option params [required, String] :arn
    #   The Amazon Resource Name (ARN) of the job used to list samples.
    #
    # @option params [String] :next_token
    #   An identifier that was returned from the previous call to this
    #   operation, which can be used to return the next set of items in the
    #   list.
    #
    # @return [Types::ListSamplesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSamplesResult#samples #samples} => Array&lt;Types::Sample&gt;
    #   * {Types::ListSamplesResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: To get information about samples
    #
    #   # The following example returns information about samples, given a specific Device Farm project.
    #
    #   resp = client.list_samples({
    #     arn: "arn:aws:devicefarm:us-west-2:123456789101:project:EXAMPLE-GUID-123-456", # You can get the Amazon Resource Name (ARN) of the project by using the list-projects CLI command.
    #     next_token: "RW5DdDJkMWYwZjM2MzM2VHVpOHJIUXlDUXlhc2QzRGViYnc9SEXAMPLE", # A dynamically generated value, used for paginating results.
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     samples: [
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_samples({
    #     arn: "AmazonResourceName", # required
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.samples #=> Array
    #   resp.samples[0].arn #=> String
    #   resp.samples[0].type #=> String, one of "CPU", "MEMORY", "THREADS", "RX_RATE", "TX_RATE", "RX", "TX", "NATIVE_FRAMES", "NATIVE_FPS", "NATIVE_MIN_DRAWTIME", "NATIVE_AVG_DRAWTIME", "NATIVE_MAX_DRAWTIME", "OPENGL_FRAMES", "OPENGL_FPS", "OPENGL_MIN_DRAWTIME", "OPENGL_AVG_DRAWTIME", "OPENGL_MAX_DRAWTIME"
    #   resp.samples[0].url #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devicefarm-2015-06-23/ListSamples AWS API Documentation
    #
    # @overload list_samples(params = {})
    # @param [Hash] params ({})
    def list_samples(params = {}, options = {})
      req = build_request(:list_samples, params)
      req.send_request(options)
    end

    # Gets information about test suites for a given job.
    #
    # @option params [required, String] :arn
    #   The job's Amazon Resource Name (ARN).
    #
    # @option params [String] :next_token
    #   An identifier that was returned from the previous call to this
    #   operation, which can be used to return the next set of items in the
    #   list.
    #
    # @return [Types::ListSuitesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSuitesResult#suites #suites} => Array&lt;Types::Suite&gt;
    #   * {Types::ListSuitesResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: To get information about suites
    #
    #   # The following example returns information about suites, given a specific Device Farm job.
    #
    #   resp = client.list_suites({
    #     arn: "arn:aws:devicefarm:us-west-2:123456789101:job:EXAMPLE-GUID-123-456", # You can get the Amazon Resource Name (ARN) of the job by using the list-jobs CLI command.
    #     next_token: "RW5DdDJkMWYwZjM2MzM2VHVpOHJIUXlDUXlhc2QzRGViYnc9SEXAMPLE", # A dynamically generated value, used for paginating results.
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     suites: [
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_suites({
    #     arn: "AmazonResourceName", # required
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.suites #=> Array
    #   resp.suites[0].arn #=> String
    #   resp.suites[0].name #=> String
    #   resp.suites[0].type #=> String, one of "BUILTIN_FUZZ", "BUILTIN_EXPLORER", "WEB_PERFORMANCE_PROFILE", "APPIUM_JAVA_JUNIT", "APPIUM_JAVA_TESTNG", "APPIUM_PYTHON", "APPIUM_NODE", "APPIUM_RUBY", "APPIUM_WEB_JAVA_JUNIT", "APPIUM_WEB_JAVA_TESTNG", "APPIUM_WEB_PYTHON", "APPIUM_WEB_NODE", "APPIUM_WEB_RUBY", "CALABASH", "INSTRUMENTATION", "UIAUTOMATION", "UIAUTOMATOR", "XCTEST", "XCTEST_UI", "REMOTE_ACCESS_RECORD", "REMOTE_ACCESS_REPLAY"
    #   resp.suites[0].created #=> Time
    #   resp.suites[0].status #=> String, one of "PENDING", "PENDING_CONCURRENCY", "PENDING_DEVICE", "PROCESSING", "SCHEDULING", "PREPARING", "RUNNING", "COMPLETED", "STOPPING"
    #   resp.suites[0].result #=> String, one of "PENDING", "PASSED", "WARNED", "FAILED", "SKIPPED", "ERRORED", "STOPPED"
    #   resp.suites[0].started #=> Time
    #   resp.suites[0].stopped #=> Time
    #   resp.suites[0].counters.total #=> Integer
    #   resp.suites[0].counters.passed #=> Integer
    #   resp.suites[0].counters.failed #=> Integer
    #   resp.suites[0].counters.warned #=> Integer
    #   resp.suites[0].counters.errored #=> Integer
    #   resp.suites[0].counters.stopped #=> Integer
    #   resp.suites[0].counters.skipped #=> Integer
    #   resp.suites[0].message #=> String
    #   resp.suites[0].device_minutes.total #=> Float
    #   resp.suites[0].device_minutes.metered #=> Float
    #   resp.suites[0].device_minutes.unmetered #=> Float
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devicefarm-2015-06-23/ListSuites AWS API Documentation
    #
    # @overload list_suites(params = {})
    # @param [Hash] params ({})
    def list_suites(params = {}, options = {})
      req = build_request(:list_suites, params)
      req.send_request(options)
    end

    # List the tags for an AWS Device Farm resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource or resources for which
    #   to list tags. You can associate tags with the following Device Farm
    #   resources: `PROJECT`, `RUN`, `NETWORK_PROFILE`, `INSTANCE_PROFILE`,
    #   `DEVICE_INSTANCE`, `SESSION`, `DEVICE_POOL`, `DEVICE`, and
    #   `VPCE_CONFIGURATION`.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Array&lt;Types::Tag&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "DeviceFarmArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devicefarm-2015-06-23/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Gets a list of all Selenium testing projects in your account.
    #
    # @option params [Integer] :max_result
    #   Return no more than this number of results.
    #
    # @option params [String] :next_token
    #   From a response, used to continue a paginated listing.
    #
    # @return [Types::ListTestGridProjectsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTestGridProjectsResult#test_grid_projects #test_grid_projects} => Array&lt;Types::TestGridProject&gt;
    #   * {Types::ListTestGridProjectsResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_test_grid_projects({
    #     max_result: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.test_grid_projects #=> Array
    #   resp.test_grid_projects[0].arn #=> String
    #   resp.test_grid_projects[0].name #=> String
    #   resp.test_grid_projects[0].description #=> String
    #   resp.test_grid_projects[0].created #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devicefarm-2015-06-23/ListTestGridProjects AWS API Documentation
    #
    # @overload list_test_grid_projects(params = {})
    # @param [Hash] params ({})
    def list_test_grid_projects(params = {}, options = {})
      req = build_request(:list_test_grid_projects, params)
      req.send_request(options)
    end

    # Returns a list of the actions taken in a TestGridSession.
    #
    # @option params [required, String] :session_arn
    #   The ARN of the session to retrieve.
    #
    # @option params [Integer] :max_result
    #   The maximum number of sessions to return per response.
    #
    # @option params [String] :next_token
    #   Pagination token.
    #
    # @return [Types::ListTestGridSessionActionsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTestGridSessionActionsResult#actions #actions} => Array&lt;Types::TestGridSessionAction&gt;
    #   * {Types::ListTestGridSessionActionsResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_test_grid_session_actions({
    #     session_arn: "DeviceFarmArn", # required
    #     max_result: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.actions #=> Array
    #   resp.actions[0].action #=> String
    #   resp.actions[0].started #=> Time
    #   resp.actions[0].duration #=> Integer
    #   resp.actions[0].status_code #=> String
    #   resp.actions[0].request_method #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devicefarm-2015-06-23/ListTestGridSessionActions AWS API Documentation
    #
    # @overload list_test_grid_session_actions(params = {})
    # @param [Hash] params ({})
    def list_test_grid_session_actions(params = {}, options = {})
      req = build_request(:list_test_grid_session_actions, params)
      req.send_request(options)
    end

    # Retrieves a list of artifacts created during the session.
    #
    # @option params [required, String] :session_arn
    #   The ARN of a TestGridSession.
    #
    # @option params [String] :type
    #   Limit results to a specified type of artifact.
    #
    # @option params [Integer] :max_result
    #   The maximum number of results to be returned by a request.
    #
    # @option params [String] :next_token
    #   Pagination token.
    #
    # @return [Types::ListTestGridSessionArtifactsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTestGridSessionArtifactsResult#artifacts #artifacts} => Array&lt;Types::TestGridSessionArtifact&gt;
    #   * {Types::ListTestGridSessionArtifactsResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_test_grid_session_artifacts({
    #     session_arn: "DeviceFarmArn", # required
    #     type: "VIDEO", # accepts VIDEO, LOG
    #     max_result: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.artifacts #=> Array
    #   resp.artifacts[0].filename #=> String
    #   resp.artifacts[0].type #=> String, one of "UNKNOWN", "VIDEO", "SELENIUM_LOG"
    #   resp.artifacts[0].url #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devicefarm-2015-06-23/ListTestGridSessionArtifacts AWS API Documentation
    #
    # @overload list_test_grid_session_artifacts(params = {})
    # @param [Hash] params ({})
    def list_test_grid_session_artifacts(params = {}, options = {})
      req = build_request(:list_test_grid_session_artifacts, params)
      req.send_request(options)
    end

    # Retrieves a list of sessions for a TestGridProject.
    #
    # @option params [required, String] :project_arn
    #   ARN of a TestGridProject.
    #
    # @option params [String] :status
    #   Return only sessions in this state.
    #
    # @option params [Time,DateTime,Date,Integer,String] :creation_time_after
    #   Return only sessions created after this time.
    #
    # @option params [Time,DateTime,Date,Integer,String] :creation_time_before
    #   Return only sessions created before this time.
    #
    # @option params [Time,DateTime,Date,Integer,String] :end_time_after
    #   Return only sessions that ended after this time.
    #
    # @option params [Time,DateTime,Date,Integer,String] :end_time_before
    #   Return only sessions that ended before this time.
    #
    # @option params [Integer] :max_result
    #   Return only this many results at a time.
    #
    # @option params [String] :next_token
    #   Pagination token.
    #
    # @return [Types::ListTestGridSessionsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTestGridSessionsResult#test_grid_sessions #test_grid_sessions} => Array&lt;Types::TestGridSession&gt;
    #   * {Types::ListTestGridSessionsResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_test_grid_sessions({
    #     project_arn: "DeviceFarmArn", # required
    #     status: "ACTIVE", # accepts ACTIVE, CLOSED, ERRORED
    #     creation_time_after: Time.now,
    #     creation_time_before: Time.now,
    #     end_time_after: Time.now,
    #     end_time_before: Time.now,
    #     max_result: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.test_grid_sessions #=> Array
    #   resp.test_grid_sessions[0].arn #=> String
    #   resp.test_grid_sessions[0].status #=> String, one of "ACTIVE", "CLOSED", "ERRORED"
    #   resp.test_grid_sessions[0].created #=> Time
    #   resp.test_grid_sessions[0].ended #=> Time
    #   resp.test_grid_sessions[0].billing_minutes #=> Float
    #   resp.test_grid_sessions[0].selenium_properties #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devicefarm-2015-06-23/ListTestGridSessions AWS API Documentation
    #
    # @overload list_test_grid_sessions(params = {})
    # @param [Hash] params ({})
    def list_test_grid_sessions(params = {}, options = {})
      req = build_request(:list_test_grid_sessions, params)
      req.send_request(options)
    end

    # Gets information about tests in a given test suite.
    #
    # @option params [required, String] :arn
    #   The test suite's Amazon Resource Name (ARN).
    #
    # @option params [String] :next_token
    #   An identifier that was returned from the previous call to this
    #   operation, which can be used to return the next set of items in the
    #   list.
    #
    # @return [Types::ListTestsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTestsResult#tests #tests} => Array&lt;Types::Test&gt;
    #   * {Types::ListTestsResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: To get information about tests
    #
    #   # The following example returns information about tests, given a specific Device Farm project.
    #
    #   resp = client.list_tests({
    #     arn: "arn:aws:devicefarm:us-west-2:123456789101:project:EXAMPLE-GUID-123-456", # You can get the Amazon Resource Name (ARN) of the project by using the list-projects CLI command.
    #     next_token: "RW5DdDJkMWYwZjM2MzM2VHVpOHJIUXlDUXlhc2QzRGViYnc9SEXAMPLE", # A dynamically generated value, used for paginating results.
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     tests: [
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tests({
    #     arn: "AmazonResourceName", # required
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.tests #=> Array
    #   resp.tests[0].arn #=> String
    #   resp.tests[0].name #=> String
    #   resp.tests[0].type #=> String, one of "BUILTIN_FUZZ", "BUILTIN_EXPLORER", "WEB_PERFORMANCE_PROFILE", "APPIUM_JAVA_JUNIT", "APPIUM_JAVA_TESTNG", "APPIUM_PYTHON", "APPIUM_NODE", "APPIUM_RUBY", "APPIUM_WEB_JAVA_JUNIT", "APPIUM_WEB_JAVA_TESTNG", "APPIUM_WEB_PYTHON", "APPIUM_WEB_NODE", "APPIUM_WEB_RUBY", "CALABASH", "INSTRUMENTATION", "UIAUTOMATION", "UIAUTOMATOR", "XCTEST", "XCTEST_UI", "REMOTE_ACCESS_RECORD", "REMOTE_ACCESS_REPLAY"
    #   resp.tests[0].created #=> Time
    #   resp.tests[0].status #=> String, one of "PENDING", "PENDING_CONCURRENCY", "PENDING_DEVICE", "PROCESSING", "SCHEDULING", "PREPARING", "RUNNING", "COMPLETED", "STOPPING"
    #   resp.tests[0].result #=> String, one of "PENDING", "PASSED", "WARNED", "FAILED", "SKIPPED", "ERRORED", "STOPPED"
    #   resp.tests[0].started #=> Time
    #   resp.tests[0].stopped #=> Time
    #   resp.tests[0].counters.total #=> Integer
    #   resp.tests[0].counters.passed #=> Integer
    #   resp.tests[0].counters.failed #=> Integer
    #   resp.tests[0].counters.warned #=> Integer
    #   resp.tests[0].counters.errored #=> Integer
    #   resp.tests[0].counters.stopped #=> Integer
    #   resp.tests[0].counters.skipped #=> Integer
    #   resp.tests[0].message #=> String
    #   resp.tests[0].device_minutes.total #=> Float
    #   resp.tests[0].device_minutes.metered #=> Float
    #   resp.tests[0].device_minutes.unmetered #=> Float
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devicefarm-2015-06-23/ListTests AWS API Documentation
    #
    # @overload list_tests(params = {})
    # @param [Hash] params ({})
    def list_tests(params = {}, options = {})
      req = build_request(:list_tests, params)
      req.send_request(options)
    end

    # Gets information about unique problems, such as exceptions or crashes.
    #
    # Unique problems are defined as a single instance of an error across a
    # run, job, or suite. For example, if a call in your application
    # consistently raises an exception (`OutOfBoundsException in
    # MyActivity.java:386`), `ListUniqueProblems` returns a single entry
    # instead of many individual entries for that exception.
    #
    # @option params [required, String] :arn
    #   The unique problems' ARNs.
    #
    # @option params [String] :next_token
    #   An identifier that was returned from the previous call to this
    #   operation, which can be used to return the next set of items in the
    #   list.
    #
    # @return [Types::ListUniqueProblemsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListUniqueProblemsResult#unique_problems #unique_problems} => Hash&lt;String,Array&lt;Types::UniqueProblem&gt;&gt;
    #   * {Types::ListUniqueProblemsResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: To get information about unique problems
    #
    #   # The following example returns information about unique problems, given a specific Device Farm project.
    #
    #   resp = client.list_unique_problems({
    #     arn: "arn:aws:devicefarm:us-west-2:123456789101:project:EXAMPLE-GUID-123-456", # You can get the Amazon Resource Name (ARN) of the project by using the list-projects CLI command.
    #     next_token: "RW5DdDJkMWYwZjM2MzM2VHVpOHJIUXlDUXlhc2QzRGViYnc9SEXAMPLE", # A dynamically generated value, used for paginating results.
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     unique_problems: {
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_unique_problems({
    #     arn: "AmazonResourceName", # required
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.unique_problems #=> Hash
    #   resp.unique_problems["ExecutionResult"] #=> Array
    #   resp.unique_problems["ExecutionResult"][0].message #=> String
    #   resp.unique_problems["ExecutionResult"][0].problems #=> Array
    #   resp.unique_problems["ExecutionResult"][0].problems[0].run.arn #=> String
    #   resp.unique_problems["ExecutionResult"][0].problems[0].run.name #=> String
    #   resp.unique_problems["ExecutionResult"][0].problems[0].job.arn #=> String
    #   resp.unique_problems["ExecutionResult"][0].problems[0].job.name #=> String
    #   resp.unique_problems["ExecutionResult"][0].problems[0].suite.arn #=> String
    #   resp.unique_problems["ExecutionResult"][0].problems[0].suite.name #=> String
    #   resp.unique_problems["ExecutionResult"][0].problems[0].test.arn #=> String
    #   resp.unique_problems["ExecutionResult"][0].problems[0].test.name #=> String
    #   resp.unique_problems["ExecutionResult"][0].problems[0].device.arn #=> String
    #   resp.unique_problems["ExecutionResult"][0].problems[0].device.name #=> String
    #   resp.unique_problems["ExecutionResult"][0].problems[0].device.manufacturer #=> String
    #   resp.unique_problems["ExecutionResult"][0].problems[0].device.model #=> String
    #   resp.unique_problems["ExecutionResult"][0].problems[0].device.model_id #=> String
    #   resp.unique_problems["ExecutionResult"][0].problems[0].device.form_factor #=> String, one of "PHONE", "TABLET"
    #   resp.unique_problems["ExecutionResult"][0].problems[0].device.platform #=> String, one of "ANDROID", "IOS"
    #   resp.unique_problems["ExecutionResult"][0].problems[0].device.os #=> String
    #   resp.unique_problems["ExecutionResult"][0].problems[0].device.cpu.frequency #=> String
    #   resp.unique_problems["ExecutionResult"][0].problems[0].device.cpu.architecture #=> String
    #   resp.unique_problems["ExecutionResult"][0].problems[0].device.cpu.clock #=> Float
    #   resp.unique_problems["ExecutionResult"][0].problems[0].device.resolution.width #=> Integer
    #   resp.unique_problems["ExecutionResult"][0].problems[0].device.resolution.height #=> Integer
    #   resp.unique_problems["ExecutionResult"][0].problems[0].device.heap_size #=> Integer
    #   resp.unique_problems["ExecutionResult"][0].problems[0].device.memory #=> Integer
    #   resp.unique_problems["ExecutionResult"][0].problems[0].device.image #=> String
    #   resp.unique_problems["ExecutionResult"][0].problems[0].device.carrier #=> String
    #   resp.unique_problems["ExecutionResult"][0].problems[0].device.radio #=> String
    #   resp.unique_problems["ExecutionResult"][0].problems[0].device.remote_access_enabled #=> Boolean
    #   resp.unique_problems["ExecutionResult"][0].problems[0].device.remote_debug_enabled #=> Boolean
    #   resp.unique_problems["ExecutionResult"][0].problems[0].device.fleet_type #=> String
    #   resp.unique_problems["ExecutionResult"][0].problems[0].device.fleet_name #=> String
    #   resp.unique_problems["ExecutionResult"][0].problems[0].device.instances #=> Array
    #   resp.unique_problems["ExecutionResult"][0].problems[0].device.instances[0].arn #=> String
    #   resp.unique_problems["ExecutionResult"][0].problems[0].device.instances[0].device_arn #=> String
    #   resp.unique_problems["ExecutionResult"][0].problems[0].device.instances[0].labels #=> Array
    #   resp.unique_problems["ExecutionResult"][0].problems[0].device.instances[0].labels[0] #=> String
    #   resp.unique_problems["ExecutionResult"][0].problems[0].device.instances[0].status #=> String, one of "IN_USE", "PREPARING", "AVAILABLE", "NOT_AVAILABLE"
    #   resp.unique_problems["ExecutionResult"][0].problems[0].device.instances[0].udid #=> String
    #   resp.unique_problems["ExecutionResult"][0].problems[0].device.instances[0].instance_profile.arn #=> String
    #   resp.unique_problems["ExecutionResult"][0].problems[0].device.instances[0].instance_profile.package_cleanup #=> Boolean
    #   resp.unique_problems["ExecutionResult"][0].problems[0].device.instances[0].instance_profile.exclude_app_packages_from_cleanup #=> Array
    #   resp.unique_problems["ExecutionResult"][0].problems[0].device.instances[0].instance_profile.exclude_app_packages_from_cleanup[0] #=> String
    #   resp.unique_problems["ExecutionResult"][0].problems[0].device.instances[0].instance_profile.reboot_after_use #=> Boolean
    #   resp.unique_problems["ExecutionResult"][0].problems[0].device.instances[0].instance_profile.name #=> String
    #   resp.unique_problems["ExecutionResult"][0].problems[0].device.instances[0].instance_profile.description #=> String
    #   resp.unique_problems["ExecutionResult"][0].problems[0].device.availability #=> String, one of "TEMPORARY_NOT_AVAILABLE", "BUSY", "AVAILABLE", "HIGHLY_AVAILABLE"
    #   resp.unique_problems["ExecutionResult"][0].problems[0].result #=> String, one of "PENDING", "PASSED", "WARNED", "FAILED", "SKIPPED", "ERRORED", "STOPPED"
    #   resp.unique_problems["ExecutionResult"][0].problems[0].message #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devicefarm-2015-06-23/ListUniqueProblems AWS API Documentation
    #
    # @overload list_unique_problems(params = {})
    # @param [Hash] params ({})
    def list_unique_problems(params = {}, options = {})
      req = build_request(:list_unique_problems, params)
      req.send_request(options)
    end

    # Gets information about uploads, given an AWS Device Farm project ARN.
    #
    # @option params [required, String] :arn
    #   The Amazon Resource Name (ARN) of the project for which you want to
    #   list uploads.
    #
    # @option params [String] :type
    #   The type of upload.
    #
    #   Must be one of the following values:
    #
    #   * ANDROID\_APP
    #
    #   * IOS\_APP
    #
    #   * WEB\_APP
    #
    #   * EXTERNAL\_DATA
    #
    #   * APPIUM\_JAVA\_JUNIT\_TEST\_PACKAGE
    #
    #   * APPIUM\_JAVA\_TESTNG\_TEST\_PACKAGE
    #
    #   * APPIUM\_PYTHON\_TEST\_PACKAGE
    #
    #   * APPIUM\_NODE\_TEST\_PACKAGE
    #
    #   * APPIUM\_RUBY\_TEST\_PACKAGE
    #
    #   * APPIUM\_WEB\_JAVA\_JUNIT\_TEST\_PACKAGE
    #
    #   * APPIUM\_WEB\_JAVA\_TESTNG\_TEST\_PACKAGE
    #
    #   * APPIUM\_WEB\_PYTHON\_TEST\_PACKAGE
    #
    #   * APPIUM\_WEB\_NODE\_TEST\_PACKAGE
    #
    #   * APPIUM\_WEB\_RUBY\_TEST\_PACKAGE
    #
    #   * CALABASH\_TEST\_PACKAGE
    #
    #   * INSTRUMENTATION\_TEST\_PACKAGE
    #
    #   * UIAUTOMATION\_TEST\_PACKAGE
    #
    #   * UIAUTOMATOR\_TEST\_PACKAGE
    #
    #   * XCTEST\_TEST\_PACKAGE
    #
    #   * XCTEST\_UI\_TEST\_PACKAGE
    #
    #   * APPIUM\_JAVA\_JUNIT\_TEST\_SPEC
    #
    #   * APPIUM\_JAVA\_TESTNG\_TEST\_SPEC
    #
    #   * APPIUM\_PYTHON\_TEST\_SPEC
    #
    #   * APPIUM\_NODE\_TEST\_SPEC
    #
    #   * APPIUM\_RUBY\_TEST\_SPEC
    #
    #   * APPIUM\_WEB\_JAVA\_JUNIT\_TEST\_SPEC
    #
    #   * APPIUM\_WEB\_JAVA\_TESTNG\_TEST\_SPEC
    #
    #   * APPIUM\_WEB\_PYTHON\_TEST\_SPEC
    #
    #   * APPIUM\_WEB\_NODE\_TEST\_SPEC
    #
    #   * APPIUM\_WEB\_RUBY\_TEST\_SPEC
    #
    #   * INSTRUMENTATION\_TEST\_SPEC
    #
    #   * XCTEST\_UI\_TEST\_SPEC
    #
    # @option params [String] :next_token
    #   An identifier that was returned from the previous call to this
    #   operation, which can be used to return the next set of items in the
    #   list.
    #
    # @return [Types::ListUploadsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListUploadsResult#uploads #uploads} => Array&lt;Types::Upload&gt;
    #   * {Types::ListUploadsResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: To get information about uploads
    #
    #   # The following example returns information about uploads, given a specific Device Farm project.
    #
    #   resp = client.list_uploads({
    #     arn: "arn:aws:devicefarm:us-west-2:123456789101:project:EXAMPLE-GUID-123-456", # You can get the Amazon Resource Name (ARN) of the project by using the list-projects CLI command.
    #     next_token: "RW5DdDJkMWYwZjM2MzM2VHVpOHJIUXlDUXlhc2QzRGViYnc9SEXAMPLE", # A dynamically generated value, used for paginating results.
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     uploads: [
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_uploads({
    #     arn: "AmazonResourceName", # required
    #     type: "ANDROID_APP", # accepts ANDROID_APP, IOS_APP, WEB_APP, EXTERNAL_DATA, APPIUM_JAVA_JUNIT_TEST_PACKAGE, APPIUM_JAVA_TESTNG_TEST_PACKAGE, APPIUM_PYTHON_TEST_PACKAGE, APPIUM_NODE_TEST_PACKAGE, APPIUM_RUBY_TEST_PACKAGE, APPIUM_WEB_JAVA_JUNIT_TEST_PACKAGE, APPIUM_WEB_JAVA_TESTNG_TEST_PACKAGE, APPIUM_WEB_PYTHON_TEST_PACKAGE, APPIUM_WEB_NODE_TEST_PACKAGE, APPIUM_WEB_RUBY_TEST_PACKAGE, CALABASH_TEST_PACKAGE, INSTRUMENTATION_TEST_PACKAGE, UIAUTOMATION_TEST_PACKAGE, UIAUTOMATOR_TEST_PACKAGE, XCTEST_TEST_PACKAGE, XCTEST_UI_TEST_PACKAGE, APPIUM_JAVA_JUNIT_TEST_SPEC, APPIUM_JAVA_TESTNG_TEST_SPEC, APPIUM_PYTHON_TEST_SPEC, APPIUM_NODE_TEST_SPEC, APPIUM_RUBY_TEST_SPEC, APPIUM_WEB_JAVA_JUNIT_TEST_SPEC, APPIUM_WEB_JAVA_TESTNG_TEST_SPEC, APPIUM_WEB_PYTHON_TEST_SPEC, APPIUM_WEB_NODE_TEST_SPEC, APPIUM_WEB_RUBY_TEST_SPEC, INSTRUMENTATION_TEST_SPEC, XCTEST_UI_TEST_SPEC
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.uploads #=> Array
    #   resp.uploads[0].arn #=> String
    #   resp.uploads[0].name #=> String
    #   resp.uploads[0].created #=> Time
    #   resp.uploads[0].type #=> String, one of "ANDROID_APP", "IOS_APP", "WEB_APP", "EXTERNAL_DATA", "APPIUM_JAVA_JUNIT_TEST_PACKAGE", "APPIUM_JAVA_TESTNG_TEST_PACKAGE", "APPIUM_PYTHON_TEST_PACKAGE", "APPIUM_NODE_TEST_PACKAGE", "APPIUM_RUBY_TEST_PACKAGE", "APPIUM_WEB_JAVA_JUNIT_TEST_PACKAGE", "APPIUM_WEB_JAVA_TESTNG_TEST_PACKAGE", "APPIUM_WEB_PYTHON_TEST_PACKAGE", "APPIUM_WEB_NODE_TEST_PACKAGE", "APPIUM_WEB_RUBY_TEST_PACKAGE", "CALABASH_TEST_PACKAGE", "INSTRUMENTATION_TEST_PACKAGE", "UIAUTOMATION_TEST_PACKAGE", "UIAUTOMATOR_TEST_PACKAGE", "XCTEST_TEST_PACKAGE", "XCTEST_UI_TEST_PACKAGE", "APPIUM_JAVA_JUNIT_TEST_SPEC", "APPIUM_JAVA_TESTNG_TEST_SPEC", "APPIUM_PYTHON_TEST_SPEC", "APPIUM_NODE_TEST_SPEC", "APPIUM_RUBY_TEST_SPEC", "APPIUM_WEB_JAVA_JUNIT_TEST_SPEC", "APPIUM_WEB_JAVA_TESTNG_TEST_SPEC", "APPIUM_WEB_PYTHON_TEST_SPEC", "APPIUM_WEB_NODE_TEST_SPEC", "APPIUM_WEB_RUBY_TEST_SPEC", "INSTRUMENTATION_TEST_SPEC", "XCTEST_UI_TEST_SPEC"
    #   resp.uploads[0].status #=> String, one of "INITIALIZED", "PROCESSING", "SUCCEEDED", "FAILED"
    #   resp.uploads[0].url #=> String
    #   resp.uploads[0].metadata #=> String
    #   resp.uploads[0].content_type #=> String
    #   resp.uploads[0].message #=> String
    #   resp.uploads[0].category #=> String, one of "CURATED", "PRIVATE"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devicefarm-2015-06-23/ListUploads AWS API Documentation
    #
    # @overload list_uploads(params = {})
    # @param [Hash] params ({})
    def list_uploads(params = {}, options = {})
      req = build_request(:list_uploads, params)
      req.send_request(options)
    end

    # Returns information about all Amazon Virtual Private Cloud (VPC)
    # endpoint configurations in the AWS account.
    #
    # @option params [Integer] :max_results
    #   An integer that specifies the maximum number of items you want to
    #   return in the API response.
    #
    # @option params [String] :next_token
    #   An identifier that was returned from the previous call to this
    #   operation, which can be used to return the next set of items in the
    #   list.
    #
    # @return [Types::ListVPCEConfigurationsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListVPCEConfigurationsResult#vpce_configurations #vpce_configurations} => Array&lt;Types::VPCEConfiguration&gt;
    #   * {Types::ListVPCEConfigurationsResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_vpce_configurations({
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.vpce_configurations #=> Array
    #   resp.vpce_configurations[0].arn #=> String
    #   resp.vpce_configurations[0].vpce_configuration_name #=> String
    #   resp.vpce_configurations[0].vpce_service_name #=> String
    #   resp.vpce_configurations[0].service_dns_name #=> String
    #   resp.vpce_configurations[0].vpce_configuration_description #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devicefarm-2015-06-23/ListVPCEConfigurations AWS API Documentation
    #
    # @overload list_vpce_configurations(params = {})
    # @param [Hash] params ({})
    def list_vpce_configurations(params = {}, options = {})
      req = build_request(:list_vpce_configurations, params)
      req.send_request(options)
    end

    # Immediately purchases offerings for an AWS account. Offerings renew
    # with the latest total purchased quantity for an offering, unless the
    # renewal was overridden. The API returns a `NotEligible` error if the
    # user is not permitted to invoke the operation. If you must be able to
    # invoke this operation, contact
    # [aws-devicefarm-support@amazon.com](mailto:aws-devicefarm-support@amazon.com).
    #
    # @option params [String] :offering_id
    #   The ID of the offering.
    #
    # @option params [Integer] :quantity
    #   The number of device slots to purchase in an offering request.
    #
    # @option params [String] :offering_promotion_id
    #   The ID of the offering promotion to be applied to the purchase.
    #
    # @return [Types::PurchaseOfferingResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PurchaseOfferingResult#offering_transaction #offering_transaction} => Types::OfferingTransaction
    #
    #
    # @example Example: To purchase a device slot offering
    #
    #   # The following example purchases a specific device slot offering.
    #
    #   resp = client.purchase_offering({
    #     offering_id: "D68B3C05-1BA6-4360-BC69-12345EXAMPLE", # You can get the offering ID by using the list-offerings CLI command.
    #     quantity: 1, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     offering_transaction: {
    #       cost: {
    #         amount: 8.07, 
    #         currency_code: "USD", 
    #       }, 
    #       created_on: Time.parse("1472648340"), 
    #       offering_status: {
    #         type: "PURCHASE", 
    #         effective_on: Time.parse("1472648340"), 
    #         offering: {
    #           type: "RECURRING", 
    #           description: "Android Remote Access Unmetered Device Slot", 
    #           id: "D68B3C05-1BA6-4360-BC69-12345EXAMPLE", 
    #           platform: "ANDROID", 
    #         }, 
    #         quantity: 1, 
    #       }, 
    #       transaction_id: "d30614ed-1b03-404c-9893-12345EXAMPLE", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.purchase_offering({
    #     offering_id: "OfferingIdentifier",
    #     quantity: 1,
    #     offering_promotion_id: "OfferingPromotionIdentifier",
    #   })
    #
    # @example Response structure
    #
    #   resp.offering_transaction.offering_status.type #=> String, one of "PURCHASE", "RENEW", "SYSTEM"
    #   resp.offering_transaction.offering_status.offering.id #=> String
    #   resp.offering_transaction.offering_status.offering.description #=> String
    #   resp.offering_transaction.offering_status.offering.type #=> String, one of "RECURRING"
    #   resp.offering_transaction.offering_status.offering.platform #=> String, one of "ANDROID", "IOS"
    #   resp.offering_transaction.offering_status.offering.recurring_charges #=> Array
    #   resp.offering_transaction.offering_status.offering.recurring_charges[0].cost.amount #=> Float
    #   resp.offering_transaction.offering_status.offering.recurring_charges[0].cost.currency_code #=> String, one of "USD"
    #   resp.offering_transaction.offering_status.offering.recurring_charges[0].frequency #=> String, one of "MONTHLY"
    #   resp.offering_transaction.offering_status.quantity #=> Integer
    #   resp.offering_transaction.offering_status.effective_on #=> Time
    #   resp.offering_transaction.transaction_id #=> String
    #   resp.offering_transaction.offering_promotion_id #=> String
    #   resp.offering_transaction.created_on #=> Time
    #   resp.offering_transaction.cost.amount #=> Float
    #   resp.offering_transaction.cost.currency_code #=> String, one of "USD"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devicefarm-2015-06-23/PurchaseOffering AWS API Documentation
    #
    # @overload purchase_offering(params = {})
    # @param [Hash] params ({})
    def purchase_offering(params = {}, options = {})
      req = build_request(:purchase_offering, params)
      req.send_request(options)
    end

    # Explicitly sets the quantity of devices to renew for an offering,
    # starting from the `effectiveDate` of the next period. The API returns
    # a `NotEligible` error if the user is not permitted to invoke the
    # operation. If you must be able to invoke this operation, contact
    # [aws-devicefarm-support@amazon.com](mailto:aws-devicefarm-support@amazon.com).
    #
    # @option params [String] :offering_id
    #   The ID of a request to renew an offering.
    #
    # @option params [Integer] :quantity
    #   The quantity requested in an offering renewal.
    #
    # @return [Types::RenewOfferingResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RenewOfferingResult#offering_transaction #offering_transaction} => Types::OfferingTransaction
    #
    #
    # @example Example: To renew a device slot offering
    #
    #   # The following example renews a specific device slot offering.
    #
    #   resp = client.renew_offering({
    #     offering_id: "D68B3C05-1BA6-4360-BC69-12345EXAMPLE", # You can get the offering ID by using the list-offerings CLI command.
    #     quantity: 1, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     offering_transaction: {
    #       cost: {
    #         amount: 250, 
    #         currency_code: "USD", 
    #       }, 
    #       created_on: Time.parse("1472648880"), 
    #       offering_status: {
    #         type: "RENEW", 
    #         effective_on: Time.parse("1472688000"), 
    #         offering: {
    #           type: "RECURRING", 
    #           description: "Android Remote Access Unmetered Device Slot", 
    #           id: "D68B3C05-1BA6-4360-BC69-12345EXAMPLE", 
    #           platform: "ANDROID", 
    #         }, 
    #         quantity: 1, 
    #       }, 
    #       transaction_id: "e90f1405-8c35-4561-be43-12345EXAMPLE", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.renew_offering({
    #     offering_id: "OfferingIdentifier",
    #     quantity: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.offering_transaction.offering_status.type #=> String, one of "PURCHASE", "RENEW", "SYSTEM"
    #   resp.offering_transaction.offering_status.offering.id #=> String
    #   resp.offering_transaction.offering_status.offering.description #=> String
    #   resp.offering_transaction.offering_status.offering.type #=> String, one of "RECURRING"
    #   resp.offering_transaction.offering_status.offering.platform #=> String, one of "ANDROID", "IOS"
    #   resp.offering_transaction.offering_status.offering.recurring_charges #=> Array
    #   resp.offering_transaction.offering_status.offering.recurring_charges[0].cost.amount #=> Float
    #   resp.offering_transaction.offering_status.offering.recurring_charges[0].cost.currency_code #=> String, one of "USD"
    #   resp.offering_transaction.offering_status.offering.recurring_charges[0].frequency #=> String, one of "MONTHLY"
    #   resp.offering_transaction.offering_status.quantity #=> Integer
    #   resp.offering_transaction.offering_status.effective_on #=> Time
    #   resp.offering_transaction.transaction_id #=> String
    #   resp.offering_transaction.offering_promotion_id #=> String
    #   resp.offering_transaction.created_on #=> Time
    #   resp.offering_transaction.cost.amount #=> Float
    #   resp.offering_transaction.cost.currency_code #=> String, one of "USD"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devicefarm-2015-06-23/RenewOffering AWS API Documentation
    #
    # @overload renew_offering(params = {})
    # @param [Hash] params ({})
    def renew_offering(params = {}, options = {})
      req = build_request(:renew_offering, params)
      req.send_request(options)
    end

    # Schedules a run.
    #
    # @option params [required, String] :project_arn
    #   The ARN of the project for the run to be scheduled.
    #
    # @option params [String] :app_arn
    #   The ARN of an application package to run tests against, created with
    #   CreateUpload. See ListUploads.
    #
    # @option params [String] :device_pool_arn
    #   The ARN of the device pool for the run to be scheduled.
    #
    # @option params [Types::DeviceSelectionConfiguration] :device_selection_configuration
    #   The filter criteria used to dynamically select a set of devices for a
    #   test run and the maximum number of devices to be included in the run.
    #
    #   Either <b> <code>devicePoolArn</code> </b> or <b>
    #   <code>deviceSelectionConfiguration</code> </b> is required in a
    #   request.
    #
    # @option params [String] :name
    #   The name for the run to be scheduled.
    #
    # @option params [required, Types::ScheduleRunTest] :test
    #   Information about the test for the run to be scheduled.
    #
    # @option params [Types::ScheduleRunConfiguration] :configuration
    #   Information about the settings for the run to be scheduled.
    #
    # @option params [Types::ExecutionConfiguration] :execution_configuration
    #   Specifies configuration information about a test run, such as the
    #   execution timeout (in minutes).
    #
    # @return [Types::ScheduleRunResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ScheduleRunResult#run #run} => Types::Run
    #
    #
    # @example Example: To schedule a test run
    #
    #   # The following example schedules a test run named MyRun.
    #
    #   resp = client.schedule_run({
    #     name: "MyRun", 
    #     device_pool_arn: "arn:aws:devicefarm:us-west-2:123456789101:pool:EXAMPLE-GUID-123-456", # You can get the Amazon Resource Name (ARN) of the device pool by using the list-pools CLI command.
    #     project_arn: "arn:aws:devicefarm:us-west-2:123456789101:project:EXAMPLE-GUID-123-456", # You can get the Amazon Resource Name (ARN) of the project by using the list-projects CLI command.
    #     test: {
    #       type: "APPIUM_JAVA_JUNIT", 
    #       test_package_arn: "arn:aws:devicefarm:us-west-2:123456789101:test:EXAMPLE-GUID-123-456", 
    #     }, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     run: {
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.schedule_run({
    #     project_arn: "AmazonResourceName", # required
    #     app_arn: "AmazonResourceName",
    #     device_pool_arn: "AmazonResourceName",
    #     device_selection_configuration: {
    #       filters: [ # required
    #         {
    #           attribute: "ARN", # accepts ARN, PLATFORM, OS_VERSION, MODEL, AVAILABILITY, FORM_FACTOR, MANUFACTURER, REMOTE_ACCESS_ENABLED, REMOTE_DEBUG_ENABLED, INSTANCE_ARN, INSTANCE_LABELS, FLEET_TYPE
    #           operator: "EQUALS", # accepts EQUALS, LESS_THAN, LESS_THAN_OR_EQUALS, GREATER_THAN, GREATER_THAN_OR_EQUALS, IN, NOT_IN, CONTAINS
    #           values: ["String"],
    #         },
    #       ],
    #       max_devices: 1, # required
    #     },
    #     name: "Name",
    #     test: { # required
    #       type: "BUILTIN_FUZZ", # required, accepts BUILTIN_FUZZ, BUILTIN_EXPLORER, WEB_PERFORMANCE_PROFILE, APPIUM_JAVA_JUNIT, APPIUM_JAVA_TESTNG, APPIUM_PYTHON, APPIUM_NODE, APPIUM_RUBY, APPIUM_WEB_JAVA_JUNIT, APPIUM_WEB_JAVA_TESTNG, APPIUM_WEB_PYTHON, APPIUM_WEB_NODE, APPIUM_WEB_RUBY, CALABASH, INSTRUMENTATION, UIAUTOMATION, UIAUTOMATOR, XCTEST, XCTEST_UI, REMOTE_ACCESS_RECORD, REMOTE_ACCESS_REPLAY
    #       test_package_arn: "AmazonResourceName",
    #       test_spec_arn: "AmazonResourceName",
    #       filter: "Filter",
    #       parameters: {
    #         "String" => "String",
    #       },
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
    #       customer_artifact_paths: {
    #         ios_paths: ["String"],
    #         android_paths: ["String"],
    #         device_host_paths: ["String"],
    #       },
    #       radios: {
    #         wifi: false,
    #         bluetooth: false,
    #         nfc: false,
    #         gps: false,
    #       },
    #       auxiliary_apps: ["AmazonResourceName"],
    #       billing_method: "METERED", # accepts METERED, UNMETERED
    #     },
    #     execution_configuration: {
    #       job_timeout_minutes: 1,
    #       accounts_cleanup: false,
    #       app_packages_cleanup: false,
    #       video_capture: false,
    #       skip_app_resign: false,
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.run.arn #=> String
    #   resp.run.name #=> String
    #   resp.run.type #=> String, one of "BUILTIN_FUZZ", "BUILTIN_EXPLORER", "WEB_PERFORMANCE_PROFILE", "APPIUM_JAVA_JUNIT", "APPIUM_JAVA_TESTNG", "APPIUM_PYTHON", "APPIUM_NODE", "APPIUM_RUBY", "APPIUM_WEB_JAVA_JUNIT", "APPIUM_WEB_JAVA_TESTNG", "APPIUM_WEB_PYTHON", "APPIUM_WEB_NODE", "APPIUM_WEB_RUBY", "CALABASH", "INSTRUMENTATION", "UIAUTOMATION", "UIAUTOMATOR", "XCTEST", "XCTEST_UI", "REMOTE_ACCESS_RECORD", "REMOTE_ACCESS_REPLAY"
    #   resp.run.platform #=> String, one of "ANDROID", "IOS"
    #   resp.run.created #=> Time
    #   resp.run.status #=> String, one of "PENDING", "PENDING_CONCURRENCY", "PENDING_DEVICE", "PROCESSING", "SCHEDULING", "PREPARING", "RUNNING", "COMPLETED", "STOPPING"
    #   resp.run.result #=> String, one of "PENDING", "PASSED", "WARNED", "FAILED", "SKIPPED", "ERRORED", "STOPPED"
    #   resp.run.started #=> Time
    #   resp.run.stopped #=> Time
    #   resp.run.counters.total #=> Integer
    #   resp.run.counters.passed #=> Integer
    #   resp.run.counters.failed #=> Integer
    #   resp.run.counters.warned #=> Integer
    #   resp.run.counters.errored #=> Integer
    #   resp.run.counters.stopped #=> Integer
    #   resp.run.counters.skipped #=> Integer
    #   resp.run.message #=> String
    #   resp.run.total_jobs #=> Integer
    #   resp.run.completed_jobs #=> Integer
    #   resp.run.billing_method #=> String, one of "METERED", "UNMETERED"
    #   resp.run.device_minutes.total #=> Float
    #   resp.run.device_minutes.metered #=> Float
    #   resp.run.device_minutes.unmetered #=> Float
    #   resp.run.network_profile.arn #=> String
    #   resp.run.network_profile.name #=> String
    #   resp.run.network_profile.description #=> String
    #   resp.run.network_profile.type #=> String, one of "CURATED", "PRIVATE"
    #   resp.run.network_profile.uplink_bandwidth_bits #=> Integer
    #   resp.run.network_profile.downlink_bandwidth_bits #=> Integer
    #   resp.run.network_profile.uplink_delay_ms #=> Integer
    #   resp.run.network_profile.downlink_delay_ms #=> Integer
    #   resp.run.network_profile.uplink_jitter_ms #=> Integer
    #   resp.run.network_profile.downlink_jitter_ms #=> Integer
    #   resp.run.network_profile.uplink_loss_percent #=> Integer
    #   resp.run.network_profile.downlink_loss_percent #=> Integer
    #   resp.run.parsing_result_url #=> String
    #   resp.run.result_code #=> String, one of "PARSING_FAILED", "VPC_ENDPOINT_SETUP_FAILED"
    #   resp.run.seed #=> Integer
    #   resp.run.app_upload #=> String
    #   resp.run.event_count #=> Integer
    #   resp.run.job_timeout_minutes #=> Integer
    #   resp.run.device_pool_arn #=> String
    #   resp.run.locale #=> String
    #   resp.run.radios.wifi #=> Boolean
    #   resp.run.radios.bluetooth #=> Boolean
    #   resp.run.radios.nfc #=> Boolean
    #   resp.run.radios.gps #=> Boolean
    #   resp.run.location.latitude #=> Float
    #   resp.run.location.longitude #=> Float
    #   resp.run.customer_artifact_paths.ios_paths #=> Array
    #   resp.run.customer_artifact_paths.ios_paths[0] #=> String
    #   resp.run.customer_artifact_paths.android_paths #=> Array
    #   resp.run.customer_artifact_paths.android_paths[0] #=> String
    #   resp.run.customer_artifact_paths.device_host_paths #=> Array
    #   resp.run.customer_artifact_paths.device_host_paths[0] #=> String
    #   resp.run.web_url #=> String
    #   resp.run.skip_app_resign #=> Boolean
    #   resp.run.test_spec_arn #=> String
    #   resp.run.device_selection_result.filters #=> Array
    #   resp.run.device_selection_result.filters[0].attribute #=> String, one of "ARN", "PLATFORM", "OS_VERSION", "MODEL", "AVAILABILITY", "FORM_FACTOR", "MANUFACTURER", "REMOTE_ACCESS_ENABLED", "REMOTE_DEBUG_ENABLED", "INSTANCE_ARN", "INSTANCE_LABELS", "FLEET_TYPE"
    #   resp.run.device_selection_result.filters[0].operator #=> String, one of "EQUALS", "LESS_THAN", "LESS_THAN_OR_EQUALS", "GREATER_THAN", "GREATER_THAN_OR_EQUALS", "IN", "NOT_IN", "CONTAINS"
    #   resp.run.device_selection_result.filters[0].values #=> Array
    #   resp.run.device_selection_result.filters[0].values[0] #=> String
    #   resp.run.device_selection_result.matched_devices_count #=> Integer
    #   resp.run.device_selection_result.max_devices #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devicefarm-2015-06-23/ScheduleRun AWS API Documentation
    #
    # @overload schedule_run(params = {})
    # @param [Hash] params ({})
    def schedule_run(params = {}, options = {})
      req = build_request(:schedule_run, params)
      req.send_request(options)
    end

    # Initiates a stop request for the current job. AWS Device Farm
    # immediately stops the job on the device where tests have not started.
    # You are not billed for this device. On the device where tests have
    # started, setup suite and teardown suite tests run to completion on the
    # device. You are billed for setup, teardown, and any tests that were in
    # progress or already completed.
    #
    # @option params [required, String] :arn
    #   Represents the Amazon Resource Name (ARN) of the Device Farm job to
    #   stop.
    #
    # @return [Types::StopJobResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StopJobResult#job #job} => Types::Job
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_job({
    #     arn: "AmazonResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.job.arn #=> String
    #   resp.job.name #=> String
    #   resp.job.type #=> String, one of "BUILTIN_FUZZ", "BUILTIN_EXPLORER", "WEB_PERFORMANCE_PROFILE", "APPIUM_JAVA_JUNIT", "APPIUM_JAVA_TESTNG", "APPIUM_PYTHON", "APPIUM_NODE", "APPIUM_RUBY", "APPIUM_WEB_JAVA_JUNIT", "APPIUM_WEB_JAVA_TESTNG", "APPIUM_WEB_PYTHON", "APPIUM_WEB_NODE", "APPIUM_WEB_RUBY", "CALABASH", "INSTRUMENTATION", "UIAUTOMATION", "UIAUTOMATOR", "XCTEST", "XCTEST_UI", "REMOTE_ACCESS_RECORD", "REMOTE_ACCESS_REPLAY"
    #   resp.job.created #=> Time
    #   resp.job.status #=> String, one of "PENDING", "PENDING_CONCURRENCY", "PENDING_DEVICE", "PROCESSING", "SCHEDULING", "PREPARING", "RUNNING", "COMPLETED", "STOPPING"
    #   resp.job.result #=> String, one of "PENDING", "PASSED", "WARNED", "FAILED", "SKIPPED", "ERRORED", "STOPPED"
    #   resp.job.started #=> Time
    #   resp.job.stopped #=> Time
    #   resp.job.counters.total #=> Integer
    #   resp.job.counters.passed #=> Integer
    #   resp.job.counters.failed #=> Integer
    #   resp.job.counters.warned #=> Integer
    #   resp.job.counters.errored #=> Integer
    #   resp.job.counters.stopped #=> Integer
    #   resp.job.counters.skipped #=> Integer
    #   resp.job.message #=> String
    #   resp.job.device.arn #=> String
    #   resp.job.device.name #=> String
    #   resp.job.device.manufacturer #=> String
    #   resp.job.device.model #=> String
    #   resp.job.device.model_id #=> String
    #   resp.job.device.form_factor #=> String, one of "PHONE", "TABLET"
    #   resp.job.device.platform #=> String, one of "ANDROID", "IOS"
    #   resp.job.device.os #=> String
    #   resp.job.device.cpu.frequency #=> String
    #   resp.job.device.cpu.architecture #=> String
    #   resp.job.device.cpu.clock #=> Float
    #   resp.job.device.resolution.width #=> Integer
    #   resp.job.device.resolution.height #=> Integer
    #   resp.job.device.heap_size #=> Integer
    #   resp.job.device.memory #=> Integer
    #   resp.job.device.image #=> String
    #   resp.job.device.carrier #=> String
    #   resp.job.device.radio #=> String
    #   resp.job.device.remote_access_enabled #=> Boolean
    #   resp.job.device.remote_debug_enabled #=> Boolean
    #   resp.job.device.fleet_type #=> String
    #   resp.job.device.fleet_name #=> String
    #   resp.job.device.instances #=> Array
    #   resp.job.device.instances[0].arn #=> String
    #   resp.job.device.instances[0].device_arn #=> String
    #   resp.job.device.instances[0].labels #=> Array
    #   resp.job.device.instances[0].labels[0] #=> String
    #   resp.job.device.instances[0].status #=> String, one of "IN_USE", "PREPARING", "AVAILABLE", "NOT_AVAILABLE"
    #   resp.job.device.instances[0].udid #=> String
    #   resp.job.device.instances[0].instance_profile.arn #=> String
    #   resp.job.device.instances[0].instance_profile.package_cleanup #=> Boolean
    #   resp.job.device.instances[0].instance_profile.exclude_app_packages_from_cleanup #=> Array
    #   resp.job.device.instances[0].instance_profile.exclude_app_packages_from_cleanup[0] #=> String
    #   resp.job.device.instances[0].instance_profile.reboot_after_use #=> Boolean
    #   resp.job.device.instances[0].instance_profile.name #=> String
    #   resp.job.device.instances[0].instance_profile.description #=> String
    #   resp.job.device.availability #=> String, one of "TEMPORARY_NOT_AVAILABLE", "BUSY", "AVAILABLE", "HIGHLY_AVAILABLE"
    #   resp.job.instance_arn #=> String
    #   resp.job.device_minutes.total #=> Float
    #   resp.job.device_minutes.metered #=> Float
    #   resp.job.device_minutes.unmetered #=> Float
    #   resp.job.video_endpoint #=> String
    #   resp.job.video_capture #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devicefarm-2015-06-23/StopJob AWS API Documentation
    #
    # @overload stop_job(params = {})
    # @param [Hash] params ({})
    def stop_job(params = {}, options = {})
      req = build_request(:stop_job, params)
      req.send_request(options)
    end

    # Ends a specified remote access session.
    #
    # @option params [required, String] :arn
    #   The Amazon Resource Name (ARN) of the remote access session to stop.
    #
    # @return [Types::StopRemoteAccessSessionResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StopRemoteAccessSessionResult#remote_access_session #remote_access_session} => Types::RemoteAccessSession
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_remote_access_session({
    #     arn: "AmazonResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.remote_access_session.arn #=> String
    #   resp.remote_access_session.name #=> String
    #   resp.remote_access_session.created #=> Time
    #   resp.remote_access_session.status #=> String, one of "PENDING", "PENDING_CONCURRENCY", "PENDING_DEVICE", "PROCESSING", "SCHEDULING", "PREPARING", "RUNNING", "COMPLETED", "STOPPING"
    #   resp.remote_access_session.result #=> String, one of "PENDING", "PASSED", "WARNED", "FAILED", "SKIPPED", "ERRORED", "STOPPED"
    #   resp.remote_access_session.message #=> String
    #   resp.remote_access_session.started #=> Time
    #   resp.remote_access_session.stopped #=> Time
    #   resp.remote_access_session.device.arn #=> String
    #   resp.remote_access_session.device.name #=> String
    #   resp.remote_access_session.device.manufacturer #=> String
    #   resp.remote_access_session.device.model #=> String
    #   resp.remote_access_session.device.model_id #=> String
    #   resp.remote_access_session.device.form_factor #=> String, one of "PHONE", "TABLET"
    #   resp.remote_access_session.device.platform #=> String, one of "ANDROID", "IOS"
    #   resp.remote_access_session.device.os #=> String
    #   resp.remote_access_session.device.cpu.frequency #=> String
    #   resp.remote_access_session.device.cpu.architecture #=> String
    #   resp.remote_access_session.device.cpu.clock #=> Float
    #   resp.remote_access_session.device.resolution.width #=> Integer
    #   resp.remote_access_session.device.resolution.height #=> Integer
    #   resp.remote_access_session.device.heap_size #=> Integer
    #   resp.remote_access_session.device.memory #=> Integer
    #   resp.remote_access_session.device.image #=> String
    #   resp.remote_access_session.device.carrier #=> String
    #   resp.remote_access_session.device.radio #=> String
    #   resp.remote_access_session.device.remote_access_enabled #=> Boolean
    #   resp.remote_access_session.device.remote_debug_enabled #=> Boolean
    #   resp.remote_access_session.device.fleet_type #=> String
    #   resp.remote_access_session.device.fleet_name #=> String
    #   resp.remote_access_session.device.instances #=> Array
    #   resp.remote_access_session.device.instances[0].arn #=> String
    #   resp.remote_access_session.device.instances[0].device_arn #=> String
    #   resp.remote_access_session.device.instances[0].labels #=> Array
    #   resp.remote_access_session.device.instances[0].labels[0] #=> String
    #   resp.remote_access_session.device.instances[0].status #=> String, one of "IN_USE", "PREPARING", "AVAILABLE", "NOT_AVAILABLE"
    #   resp.remote_access_session.device.instances[0].udid #=> String
    #   resp.remote_access_session.device.instances[0].instance_profile.arn #=> String
    #   resp.remote_access_session.device.instances[0].instance_profile.package_cleanup #=> Boolean
    #   resp.remote_access_session.device.instances[0].instance_profile.exclude_app_packages_from_cleanup #=> Array
    #   resp.remote_access_session.device.instances[0].instance_profile.exclude_app_packages_from_cleanup[0] #=> String
    #   resp.remote_access_session.device.instances[0].instance_profile.reboot_after_use #=> Boolean
    #   resp.remote_access_session.device.instances[0].instance_profile.name #=> String
    #   resp.remote_access_session.device.instances[0].instance_profile.description #=> String
    #   resp.remote_access_session.device.availability #=> String, one of "TEMPORARY_NOT_AVAILABLE", "BUSY", "AVAILABLE", "HIGHLY_AVAILABLE"
    #   resp.remote_access_session.instance_arn #=> String
    #   resp.remote_access_session.remote_debug_enabled #=> Boolean
    #   resp.remote_access_session.remote_record_enabled #=> Boolean
    #   resp.remote_access_session.remote_record_app_arn #=> String
    #   resp.remote_access_session.host_address #=> String
    #   resp.remote_access_session.client_id #=> String
    #   resp.remote_access_session.billing_method #=> String, one of "METERED", "UNMETERED"
    #   resp.remote_access_session.device_minutes.total #=> Float
    #   resp.remote_access_session.device_minutes.metered #=> Float
    #   resp.remote_access_session.device_minutes.unmetered #=> Float
    #   resp.remote_access_session.endpoint #=> String
    #   resp.remote_access_session.device_udid #=> String
    #   resp.remote_access_session.interaction_mode #=> String, one of "INTERACTIVE", "NO_VIDEO", "VIDEO_ONLY"
    #   resp.remote_access_session.skip_app_resign #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devicefarm-2015-06-23/StopRemoteAccessSession AWS API Documentation
    #
    # @overload stop_remote_access_session(params = {})
    # @param [Hash] params ({})
    def stop_remote_access_session(params = {}, options = {})
      req = build_request(:stop_remote_access_session, params)
      req.send_request(options)
    end

    # Initiates a stop request for the current test run. AWS Device Farm
    # immediately stops the run on devices where tests have not started. You
    # are not billed for these devices. On devices where tests have started
    # executing, setup suite and teardown suite tests run to completion on
    # those devices. You are billed for setup, teardown, and any tests that
    # were in progress or already completed.
    #
    # @option params [required, String] :arn
    #   Represents the Amazon Resource Name (ARN) of the Device Farm run to
    #   stop.
    #
    # @return [Types::StopRunResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StopRunResult#run #run} => Types::Run
    #
    #
    # @example Example: To stop a test run
    #
    #   # The following example stops a specific test run.
    #
    #   resp = client.stop_run({
    #     arn: "arn:aws:devicefarm:us-west-2:123456789101:run:EXAMPLE-GUID-123-456", # You can get the Amazon Resource Name (ARN) of the test run by using the list-runs CLI command.
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     run: {
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_run({
    #     arn: "AmazonResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.run.arn #=> String
    #   resp.run.name #=> String
    #   resp.run.type #=> String, one of "BUILTIN_FUZZ", "BUILTIN_EXPLORER", "WEB_PERFORMANCE_PROFILE", "APPIUM_JAVA_JUNIT", "APPIUM_JAVA_TESTNG", "APPIUM_PYTHON", "APPIUM_NODE", "APPIUM_RUBY", "APPIUM_WEB_JAVA_JUNIT", "APPIUM_WEB_JAVA_TESTNG", "APPIUM_WEB_PYTHON", "APPIUM_WEB_NODE", "APPIUM_WEB_RUBY", "CALABASH", "INSTRUMENTATION", "UIAUTOMATION", "UIAUTOMATOR", "XCTEST", "XCTEST_UI", "REMOTE_ACCESS_RECORD", "REMOTE_ACCESS_REPLAY"
    #   resp.run.platform #=> String, one of "ANDROID", "IOS"
    #   resp.run.created #=> Time
    #   resp.run.status #=> String, one of "PENDING", "PENDING_CONCURRENCY", "PENDING_DEVICE", "PROCESSING", "SCHEDULING", "PREPARING", "RUNNING", "COMPLETED", "STOPPING"
    #   resp.run.result #=> String, one of "PENDING", "PASSED", "WARNED", "FAILED", "SKIPPED", "ERRORED", "STOPPED"
    #   resp.run.started #=> Time
    #   resp.run.stopped #=> Time
    #   resp.run.counters.total #=> Integer
    #   resp.run.counters.passed #=> Integer
    #   resp.run.counters.failed #=> Integer
    #   resp.run.counters.warned #=> Integer
    #   resp.run.counters.errored #=> Integer
    #   resp.run.counters.stopped #=> Integer
    #   resp.run.counters.skipped #=> Integer
    #   resp.run.message #=> String
    #   resp.run.total_jobs #=> Integer
    #   resp.run.completed_jobs #=> Integer
    #   resp.run.billing_method #=> String, one of "METERED", "UNMETERED"
    #   resp.run.device_minutes.total #=> Float
    #   resp.run.device_minutes.metered #=> Float
    #   resp.run.device_minutes.unmetered #=> Float
    #   resp.run.network_profile.arn #=> String
    #   resp.run.network_profile.name #=> String
    #   resp.run.network_profile.description #=> String
    #   resp.run.network_profile.type #=> String, one of "CURATED", "PRIVATE"
    #   resp.run.network_profile.uplink_bandwidth_bits #=> Integer
    #   resp.run.network_profile.downlink_bandwidth_bits #=> Integer
    #   resp.run.network_profile.uplink_delay_ms #=> Integer
    #   resp.run.network_profile.downlink_delay_ms #=> Integer
    #   resp.run.network_profile.uplink_jitter_ms #=> Integer
    #   resp.run.network_profile.downlink_jitter_ms #=> Integer
    #   resp.run.network_profile.uplink_loss_percent #=> Integer
    #   resp.run.network_profile.downlink_loss_percent #=> Integer
    #   resp.run.parsing_result_url #=> String
    #   resp.run.result_code #=> String, one of "PARSING_FAILED", "VPC_ENDPOINT_SETUP_FAILED"
    #   resp.run.seed #=> Integer
    #   resp.run.app_upload #=> String
    #   resp.run.event_count #=> Integer
    #   resp.run.job_timeout_minutes #=> Integer
    #   resp.run.device_pool_arn #=> String
    #   resp.run.locale #=> String
    #   resp.run.radios.wifi #=> Boolean
    #   resp.run.radios.bluetooth #=> Boolean
    #   resp.run.radios.nfc #=> Boolean
    #   resp.run.radios.gps #=> Boolean
    #   resp.run.location.latitude #=> Float
    #   resp.run.location.longitude #=> Float
    #   resp.run.customer_artifact_paths.ios_paths #=> Array
    #   resp.run.customer_artifact_paths.ios_paths[0] #=> String
    #   resp.run.customer_artifact_paths.android_paths #=> Array
    #   resp.run.customer_artifact_paths.android_paths[0] #=> String
    #   resp.run.customer_artifact_paths.device_host_paths #=> Array
    #   resp.run.customer_artifact_paths.device_host_paths[0] #=> String
    #   resp.run.web_url #=> String
    #   resp.run.skip_app_resign #=> Boolean
    #   resp.run.test_spec_arn #=> String
    #   resp.run.device_selection_result.filters #=> Array
    #   resp.run.device_selection_result.filters[0].attribute #=> String, one of "ARN", "PLATFORM", "OS_VERSION", "MODEL", "AVAILABILITY", "FORM_FACTOR", "MANUFACTURER", "REMOTE_ACCESS_ENABLED", "REMOTE_DEBUG_ENABLED", "INSTANCE_ARN", "INSTANCE_LABELS", "FLEET_TYPE"
    #   resp.run.device_selection_result.filters[0].operator #=> String, one of "EQUALS", "LESS_THAN", "LESS_THAN_OR_EQUALS", "GREATER_THAN", "GREATER_THAN_OR_EQUALS", "IN", "NOT_IN", "CONTAINS"
    #   resp.run.device_selection_result.filters[0].values #=> Array
    #   resp.run.device_selection_result.filters[0].values[0] #=> String
    #   resp.run.device_selection_result.matched_devices_count #=> Integer
    #   resp.run.device_selection_result.max_devices #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devicefarm-2015-06-23/StopRun AWS API Documentation
    #
    # @overload stop_run(params = {})
    # @param [Hash] params ({})
    def stop_run(params = {}, options = {})
      req = build_request(:stop_run, params)
      req.send_request(options)
    end

    # Associates the specified tags to a resource with the specified
    # `resourceArn`. If existing tags on a resource are not specified in the
    # request parameters, they are not changed. When a resource is deleted,
    # the tags associated with that resource are also deleted.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource or resources to which
    #   to add tags. You can associate tags with the following Device Farm
    #   resources: `PROJECT`, `RUN`, `NETWORK_PROFILE`, `INSTANCE_PROFILE`,
    #   `DEVICE_INSTANCE`, `SESSION`, `DEVICE_POOL`, `DEVICE`, and
    #   `VPCE_CONFIGURATION`.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   The tags to add to the resource. A tag is an array of key-value pairs.
    #   Tag keys can have a maximum character length of 128 characters. Tag
    #   values can have a maximum length of 256 characters.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "DeviceFarmArn", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devicefarm-2015-06-23/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Deletes the specified tags from a resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource or resources from which
    #   to delete tags. You can associate tags with the following Device Farm
    #   resources: `PROJECT`, `RUN`, `NETWORK_PROFILE`, `INSTANCE_PROFILE`,
    #   `DEVICE_INSTANCE`, `SESSION`, `DEVICE_POOL`, `DEVICE`, and
    #   `VPCE_CONFIGURATION`.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The keys of the tags to be removed.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "DeviceFarmArn", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devicefarm-2015-06-23/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates information about a private device instance.
    #
    # @option params [required, String] :arn
    #   The Amazon Resource Name (ARN) of the device instance.
    #
    # @option params [String] :profile_arn
    #   The ARN of the profile that you want to associate with the device
    #   instance.
    #
    # @option params [Array<String>] :labels
    #   An array of strings that you want to associate with the device
    #   instance.
    #
    # @return [Types::UpdateDeviceInstanceResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateDeviceInstanceResult#device_instance #device_instance} => Types::DeviceInstance
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_device_instance({
    #     arn: "AmazonResourceName", # required
    #     profile_arn: "AmazonResourceName",
    #     labels: ["String"],
    #   })
    #
    # @example Response structure
    #
    #   resp.device_instance.arn #=> String
    #   resp.device_instance.device_arn #=> String
    #   resp.device_instance.labels #=> Array
    #   resp.device_instance.labels[0] #=> String
    #   resp.device_instance.status #=> String, one of "IN_USE", "PREPARING", "AVAILABLE", "NOT_AVAILABLE"
    #   resp.device_instance.udid #=> String
    #   resp.device_instance.instance_profile.arn #=> String
    #   resp.device_instance.instance_profile.package_cleanup #=> Boolean
    #   resp.device_instance.instance_profile.exclude_app_packages_from_cleanup #=> Array
    #   resp.device_instance.instance_profile.exclude_app_packages_from_cleanup[0] #=> String
    #   resp.device_instance.instance_profile.reboot_after_use #=> Boolean
    #   resp.device_instance.instance_profile.name #=> String
    #   resp.device_instance.instance_profile.description #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devicefarm-2015-06-23/UpdateDeviceInstance AWS API Documentation
    #
    # @overload update_device_instance(params = {})
    # @param [Hash] params ({})
    def update_device_instance(params = {}, options = {})
      req = build_request(:update_device_instance, params)
      req.send_request(options)
    end

    # Modifies the name, description, and rules in a device pool given the
    # attributes and the pool ARN. Rule updates are all-or-nothing, meaning
    # they can only be updated as a whole (or not at all).
    #
    # @option params [required, String] :arn
    #   The Amazon Resource Name (ARN) of the Device Farm device pool to
    #   update.
    #
    # @option params [String] :name
    #   A string that represents the name of the device pool to update.
    #
    # @option params [String] :description
    #   A description of the device pool to update.
    #
    # @option params [Array<Types::Rule>] :rules
    #   Represents the rules to modify for the device pool. Updating rules is
    #   optional. If you update rules for your request, the update replaces
    #   the existing rules.
    #
    # @option params [Integer] :max_devices
    #   The number of devices that Device Farm can add to your device pool.
    #   Device Farm adds devices that are available and that meet the criteria
    #   that you assign for the `rules` parameter. Depending on how many
    #   devices meet these constraints, your device pool might contain fewer
    #   devices than the value for this parameter.
    #
    #   By specifying the maximum number of devices, you can control the costs
    #   that you incur by running tests.
    #
    #   If you use this parameter in your request, you cannot use the
    #   `clearMaxDevices` parameter in the same request.
    #
    # @option params [Boolean] :clear_max_devices
    #   Sets whether the `maxDevices` parameter applies to your device pool.
    #   If you set this parameter to `true`, the `maxDevices` parameter does
    #   not apply, and Device Farm does not limit the number of devices that
    #   it adds to your device pool. In this case, Device Farm adds all
    #   available devices that meet the criteria specified in the `rules`
    #   parameter.
    #
    #   If you use this parameter in your request, you cannot use the
    #   `maxDevices` parameter in the same request.
    #
    # @return [Types::UpdateDevicePoolResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateDevicePoolResult#device_pool #device_pool} => Types::DevicePool
    #
    #
    # @example Example: To update a device pool
    #
    #   # The following example updates the specified device pool with a new name and description. It also enables remote access
    #   # of devices in the device pool.
    #
    #   resp = client.update_device_pool({
    #     name: "NewName", 
    #     arn: "arn:aws:devicefarm:us-west-2::devicepool:082d10e5-d7d7-48a5-ba5c-12345EXAMPLE", # You can get the Amazon Resource Name (ARN) of the device pool by using the list-pools CLI command.
    #     description: "NewDescription", 
    #     rules: [
    #       {
    #         value: "True", 
    #         attribute: "REMOTE_ACCESS_ENABLED", 
    #         operator: "EQUALS", 
    #       }, 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     device_pool: {
    #     }, # Note: you cannot update curated device pools.
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_device_pool({
    #     arn: "AmazonResourceName", # required
    #     name: "Name",
    #     description: "Message",
    #     rules: [
    #       {
    #         attribute: "ARN", # accepts ARN, PLATFORM, FORM_FACTOR, MANUFACTURER, REMOTE_ACCESS_ENABLED, REMOTE_DEBUG_ENABLED, APPIUM_VERSION, INSTANCE_ARN, INSTANCE_LABELS, FLEET_TYPE, OS_VERSION, MODEL, AVAILABILITY
    #         operator: "EQUALS", # accepts EQUALS, LESS_THAN, LESS_THAN_OR_EQUALS, GREATER_THAN, GREATER_THAN_OR_EQUALS, IN, NOT_IN, CONTAINS
    #         value: "String",
    #       },
    #     ],
    #     max_devices: 1,
    #     clear_max_devices: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.device_pool.arn #=> String
    #   resp.device_pool.name #=> String
    #   resp.device_pool.description #=> String
    #   resp.device_pool.type #=> String, one of "CURATED", "PRIVATE"
    #   resp.device_pool.rules #=> Array
    #   resp.device_pool.rules[0].attribute #=> String, one of "ARN", "PLATFORM", "FORM_FACTOR", "MANUFACTURER", "REMOTE_ACCESS_ENABLED", "REMOTE_DEBUG_ENABLED", "APPIUM_VERSION", "INSTANCE_ARN", "INSTANCE_LABELS", "FLEET_TYPE", "OS_VERSION", "MODEL", "AVAILABILITY"
    #   resp.device_pool.rules[0].operator #=> String, one of "EQUALS", "LESS_THAN", "LESS_THAN_OR_EQUALS", "GREATER_THAN", "GREATER_THAN_OR_EQUALS", "IN", "NOT_IN", "CONTAINS"
    #   resp.device_pool.rules[0].value #=> String
    #   resp.device_pool.max_devices #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devicefarm-2015-06-23/UpdateDevicePool AWS API Documentation
    #
    # @overload update_device_pool(params = {})
    # @param [Hash] params ({})
    def update_device_pool(params = {}, options = {})
      req = build_request(:update_device_pool, params)
      req.send_request(options)
    end

    # Updates information about an existing private device instance profile.
    #
    # @option params [required, String] :arn
    #   The Amazon Resource Name (ARN) of the instance profile.
    #
    # @option params [String] :name
    #   The updated name for your instance profile.
    #
    # @option params [String] :description
    #   The updated description for your instance profile.
    #
    # @option params [Boolean] :package_cleanup
    #   The updated choice for whether you want to specify package cleanup.
    #   The default value is `false` for private devices.
    #
    # @option params [Array<String>] :exclude_app_packages_from_cleanup
    #   An array of strings that specifies the list of app packages that
    #   should not be cleaned up from the device after a test run is over.
    #
    #   The list of packages is only considered if you set `packageCleanup` to
    #   `true`.
    #
    # @option params [Boolean] :reboot_after_use
    #   The updated choice for whether you want to reboot the device after
    #   use. The default value is `true`.
    #
    # @return [Types::UpdateInstanceProfileResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateInstanceProfileResult#instance_profile #instance_profile} => Types::InstanceProfile
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_instance_profile({
    #     arn: "AmazonResourceName", # required
    #     name: "Name",
    #     description: "Message",
    #     package_cleanup: false,
    #     exclude_app_packages_from_cleanup: ["String"],
    #     reboot_after_use: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.instance_profile.arn #=> String
    #   resp.instance_profile.package_cleanup #=> Boolean
    #   resp.instance_profile.exclude_app_packages_from_cleanup #=> Array
    #   resp.instance_profile.exclude_app_packages_from_cleanup[0] #=> String
    #   resp.instance_profile.reboot_after_use #=> Boolean
    #   resp.instance_profile.name #=> String
    #   resp.instance_profile.description #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devicefarm-2015-06-23/UpdateInstanceProfile AWS API Documentation
    #
    # @overload update_instance_profile(params = {})
    # @param [Hash] params ({})
    def update_instance_profile(params = {}, options = {})
      req = build_request(:update_instance_profile, params)
      req.send_request(options)
    end

    # Updates the network profile.
    #
    # @option params [required, String] :arn
    #   The Amazon Resource Name (ARN) of the project for which you want to
    #   update network profile settings.
    #
    # @option params [String] :name
    #   The name of the network profile about which you are returning
    #   information.
    #
    # @option params [String] :description
    #   The description of the network profile about which you are returning
    #   information.
    #
    # @option params [String] :type
    #   The type of network profile to return information about. Valid values
    #   are listed here.
    #
    # @option params [Integer] :uplink_bandwidth_bits
    #   The data throughput rate in bits per second, as an integer from 0 to
    #   104857600.
    #
    # @option params [Integer] :downlink_bandwidth_bits
    #   The data throughput rate in bits per second, as an integer from 0 to
    #   104857600.
    #
    # @option params [Integer] :uplink_delay_ms
    #   Delay time for all packets to destination in milliseconds as an
    #   integer from 0 to 2000.
    #
    # @option params [Integer] :downlink_delay_ms
    #   Delay time for all packets to destination in milliseconds as an
    #   integer from 0 to 2000.
    #
    # @option params [Integer] :uplink_jitter_ms
    #   Time variation in the delay of received packets in milliseconds as an
    #   integer from 0 to 2000.
    #
    # @option params [Integer] :downlink_jitter_ms
    #   Time variation in the delay of received packets in milliseconds as an
    #   integer from 0 to 2000.
    #
    # @option params [Integer] :uplink_loss_percent
    #   Proportion of transmitted packets that fail to arrive from 0 to 100
    #   percent.
    #
    # @option params [Integer] :downlink_loss_percent
    #   Proportion of received packets that fail to arrive from 0 to 100
    #   percent.
    #
    # @return [Types::UpdateNetworkProfileResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateNetworkProfileResult#network_profile #network_profile} => Types::NetworkProfile
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_network_profile({
    #     arn: "AmazonResourceName", # required
    #     name: "Name",
    #     description: "Message",
    #     type: "CURATED", # accepts CURATED, PRIVATE
    #     uplink_bandwidth_bits: 1,
    #     downlink_bandwidth_bits: 1,
    #     uplink_delay_ms: 1,
    #     downlink_delay_ms: 1,
    #     uplink_jitter_ms: 1,
    #     downlink_jitter_ms: 1,
    #     uplink_loss_percent: 1,
    #     downlink_loss_percent: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.network_profile.arn #=> String
    #   resp.network_profile.name #=> String
    #   resp.network_profile.description #=> String
    #   resp.network_profile.type #=> String, one of "CURATED", "PRIVATE"
    #   resp.network_profile.uplink_bandwidth_bits #=> Integer
    #   resp.network_profile.downlink_bandwidth_bits #=> Integer
    #   resp.network_profile.uplink_delay_ms #=> Integer
    #   resp.network_profile.downlink_delay_ms #=> Integer
    #   resp.network_profile.uplink_jitter_ms #=> Integer
    #   resp.network_profile.downlink_jitter_ms #=> Integer
    #   resp.network_profile.uplink_loss_percent #=> Integer
    #   resp.network_profile.downlink_loss_percent #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devicefarm-2015-06-23/UpdateNetworkProfile AWS API Documentation
    #
    # @overload update_network_profile(params = {})
    # @param [Hash] params ({})
    def update_network_profile(params = {}, options = {})
      req = build_request(:update_network_profile, params)
      req.send_request(options)
    end

    # Modifies the specified project name, given the project ARN and a new
    # name.
    #
    # @option params [required, String] :arn
    #   The Amazon Resource Name (ARN) of the project whose name to update.
    #
    # @option params [String] :name
    #   A string that represents the new name of the project that you are
    #   updating.
    #
    # @option params [Integer] :default_job_timeout_minutes
    #   The number of minutes a test run in the project executes before it
    #   times out.
    #
    # @return [Types::UpdateProjectResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateProjectResult#project #project} => Types::Project
    #
    #
    # @example Example: To update a device pool
    #
    #   # The following example updates the specified project with a new name.
    #
    #   resp = client.update_project({
    #     name: "NewName", 
    #     arn: "arn:aws:devicefarm:us-west-2:123456789101:project:8f75187d-101e-4625-accc-12345EXAMPLE", # You can get the Amazon Resource Name (ARN) of the project by using the list-projects CLI command.
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     project: {
    #       name: "NewName", 
    #       arn: "arn:aws:devicefarm:us-west-2:123456789101:project:8f75187d-101e-4625-accc-12345EXAMPLE", 
    #       created: Time.parse("1448400709.927"), 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_project({
    #     arn: "AmazonResourceName", # required
    #     name: "Name",
    #     default_job_timeout_minutes: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.project.arn #=> String
    #   resp.project.name #=> String
    #   resp.project.default_job_timeout_minutes #=> Integer
    #   resp.project.created #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devicefarm-2015-06-23/UpdateProject AWS API Documentation
    #
    # @overload update_project(params = {})
    # @param [Hash] params ({})
    def update_project(params = {}, options = {})
      req = build_request(:update_project, params)
      req.send_request(options)
    end

    # Change details of a project.
    #
    # @option params [required, String] :project_arn
    #   ARN of the project to update.
    #
    # @option params [String] :name
    #   Human-readable name for the project.
    #
    # @option params [String] :description
    #   Human-readable description for the project.
    #
    # @return [Types::UpdateTestGridProjectResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateTestGridProjectResult#test_grid_project #test_grid_project} => Types::TestGridProject
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_test_grid_project({
    #     project_arn: "DeviceFarmArn", # required
    #     name: "ResourceName",
    #     description: "ResourceDescription",
    #   })
    #
    # @example Response structure
    #
    #   resp.test_grid_project.arn #=> String
    #   resp.test_grid_project.name #=> String
    #   resp.test_grid_project.description #=> String
    #   resp.test_grid_project.created #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devicefarm-2015-06-23/UpdateTestGridProject AWS API Documentation
    #
    # @overload update_test_grid_project(params = {})
    # @param [Hash] params ({})
    def update_test_grid_project(params = {}, options = {})
      req = build_request(:update_test_grid_project, params)
      req.send_request(options)
    end

    # Updates an uploaded test spec.
    #
    # @option params [required, String] :arn
    #   The Amazon Resource Name (ARN) of the uploaded test spec.
    #
    # @option params [String] :name
    #   The upload's test spec file name. The name must not contain any
    #   forward slashes (/). The test spec file name must end with the `.yaml`
    #   or `.yml` file extension.
    #
    # @option params [String] :content_type
    #   The upload's content type (for example, `application/x-yaml`).
    #
    # @option params [Boolean] :edit_content
    #   Set to true if the YAML file has changed and must be updated.
    #   Otherwise, set to false.
    #
    # @return [Types::UpdateUploadResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateUploadResult#upload #upload} => Types::Upload
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_upload({
    #     arn: "AmazonResourceName", # required
    #     name: "Name",
    #     content_type: "ContentType",
    #     edit_content: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.upload.arn #=> String
    #   resp.upload.name #=> String
    #   resp.upload.created #=> Time
    #   resp.upload.type #=> String, one of "ANDROID_APP", "IOS_APP", "WEB_APP", "EXTERNAL_DATA", "APPIUM_JAVA_JUNIT_TEST_PACKAGE", "APPIUM_JAVA_TESTNG_TEST_PACKAGE", "APPIUM_PYTHON_TEST_PACKAGE", "APPIUM_NODE_TEST_PACKAGE", "APPIUM_RUBY_TEST_PACKAGE", "APPIUM_WEB_JAVA_JUNIT_TEST_PACKAGE", "APPIUM_WEB_JAVA_TESTNG_TEST_PACKAGE", "APPIUM_WEB_PYTHON_TEST_PACKAGE", "APPIUM_WEB_NODE_TEST_PACKAGE", "APPIUM_WEB_RUBY_TEST_PACKAGE", "CALABASH_TEST_PACKAGE", "INSTRUMENTATION_TEST_PACKAGE", "UIAUTOMATION_TEST_PACKAGE", "UIAUTOMATOR_TEST_PACKAGE", "XCTEST_TEST_PACKAGE", "XCTEST_UI_TEST_PACKAGE", "APPIUM_JAVA_JUNIT_TEST_SPEC", "APPIUM_JAVA_TESTNG_TEST_SPEC", "APPIUM_PYTHON_TEST_SPEC", "APPIUM_NODE_TEST_SPEC", "APPIUM_RUBY_TEST_SPEC", "APPIUM_WEB_JAVA_JUNIT_TEST_SPEC", "APPIUM_WEB_JAVA_TESTNG_TEST_SPEC", "APPIUM_WEB_PYTHON_TEST_SPEC", "APPIUM_WEB_NODE_TEST_SPEC", "APPIUM_WEB_RUBY_TEST_SPEC", "INSTRUMENTATION_TEST_SPEC", "XCTEST_UI_TEST_SPEC"
    #   resp.upload.status #=> String, one of "INITIALIZED", "PROCESSING", "SUCCEEDED", "FAILED"
    #   resp.upload.url #=> String
    #   resp.upload.metadata #=> String
    #   resp.upload.content_type #=> String
    #   resp.upload.message #=> String
    #   resp.upload.category #=> String, one of "CURATED", "PRIVATE"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devicefarm-2015-06-23/UpdateUpload AWS API Documentation
    #
    # @overload update_upload(params = {})
    # @param [Hash] params ({})
    def update_upload(params = {}, options = {})
      req = build_request(:update_upload, params)
      req.send_request(options)
    end

    # Updates information about an Amazon Virtual Private Cloud (VPC)
    # endpoint configuration.
    #
    # @option params [required, String] :arn
    #   The Amazon Resource Name (ARN) of the VPC endpoint configuration you
    #   want to update.
    #
    # @option params [String] :vpce_configuration_name
    #   The friendly name you give to your VPC endpoint configuration to
    #   manage your configurations more easily.
    #
    # @option params [String] :vpce_service_name
    #   The name of the VPC endpoint service running in your AWS account that
    #   you want Device Farm to test.
    #
    # @option params [String] :service_dns_name
    #   The DNS (domain) name used to connect to your private service in your
    #   VPC. The DNS name must not already be in use on the internet.
    #
    # @option params [String] :vpce_configuration_description
    #   An optional description that provides details about your VPC endpoint
    #   configuration.
    #
    # @return [Types::UpdateVPCEConfigurationResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateVPCEConfigurationResult#vpce_configuration #vpce_configuration} => Types::VPCEConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_vpce_configuration({
    #     arn: "AmazonResourceName", # required
    #     vpce_configuration_name: "VPCEConfigurationName",
    #     vpce_service_name: "VPCEServiceName",
    #     service_dns_name: "ServiceDnsName",
    #     vpce_configuration_description: "VPCEConfigurationDescription",
    #   })
    #
    # @example Response structure
    #
    #   resp.vpce_configuration.arn #=> String
    #   resp.vpce_configuration.vpce_configuration_name #=> String
    #   resp.vpce_configuration.vpce_service_name #=> String
    #   resp.vpce_configuration.service_dns_name #=> String
    #   resp.vpce_configuration.vpce_configuration_description #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devicefarm-2015-06-23/UpdateVPCEConfiguration AWS API Documentation
    #
    # @overload update_vpce_configuration(params = {})
    # @param [Hash] params ({})
    def update_vpce_configuration(params = {}, options = {})
      req = build_request(:update_vpce_configuration, params)
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
      context[:gem_name] = 'aws-sdk-devicefarm'
      context[:gem_version] = '1.39.0'
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
