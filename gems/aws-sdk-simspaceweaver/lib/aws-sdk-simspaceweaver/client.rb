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

Aws::Plugins::GlobalConfiguration.add_identifier(:simspaceweaver)

module Aws::SimSpaceWeaver
  # An API client for SimSpaceWeaver.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::SimSpaceWeaver::Client.new(
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

    @identifier = :simspaceweaver

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
    add_plugin(Aws::SimSpaceWeaver::Plugins::Endpoints)

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
    #   @option options [Aws::SimSpaceWeaver::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::SimSpaceWeaver::EndpointParameters`
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

    # Creates a snapshot of the specified simulation. A snapshot is a file
    # that contains simulation state data at a specific time. The state data
    # saved in a snapshot includes entity data from the State Fabric, the
    # simulation configuration specified in the schema, and the clock tick
    # number. You can use the snapshot to initialize a new simulation. For
    # more information about snapshots, see [Snapshots][1] in the *SimSpace
    # Weaver User Guide*.
    #
    # You specify a `Destination` when you create a snapshot. The
    # `Destination` is the name of an Amazon S3 bucket and an optional
    # `ObjectKeyPrefix`. The `ObjectKeyPrefix` is usually the name of a
    # folder in the bucket. SimSpace Weaver creates a `snapshot` folder
    # inside the `Destination` and places the snapshot file there.
    #
    # The snapshot file is an Amazon S3 object. It has an object key with
    # the form: `
    # object-key-prefix/snapshot/simulation-name-YYMMdd-HHmm-ss.zip`, where:
    #
    # * ` YY ` is the 2-digit year
    #
    # * ` MM ` is the 2-digit month
    #
    # * ` dd ` is the 2-digit day of the month
    #
    # * ` HH ` is the 2-digit hour (24-hour clock)
    #
    # * ` mm ` is the 2-digit minutes
    #
    # * ` ss ` is the 2-digit seconds
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/simspaceweaver/latest/userguide/working-with_snapshots.html
    #
    # @option params [required, Types::S3Destination] :destination
    #   The Amazon S3 bucket and optional folder (object key prefix) where
    #   SimSpace Weaver creates the snapshot file.
    #
    #   The Amazon S3 bucket must be in the same Amazon Web Services Region as
    #   the simulation.
    #
    # @option params [required, String] :simulation
    #   The name of the simulation.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_snapshot({
    #     destination: { # required
    #       bucket_name: "BucketName",
    #       object_key_prefix: "ObjectKeyPrefix",
    #     },
    #     simulation: "SimSpaceWeaverResourceName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/simspaceweaver-2022-10-28/CreateSnapshot AWS API Documentation
    #
    # @overload create_snapshot(params = {})
    # @param [Hash] params ({})
    def create_snapshot(params = {}, options = {})
      req = build_request(:create_snapshot, params)
      req.send_request(options)
    end

    # Deletes the instance of the given custom app.
    #
    # @option params [required, String] :app
    #   The name of the app.
    #
    # @option params [required, String] :domain
    #   The name of the domain of the app.
    #
    # @option params [required, String] :simulation
    #   The name of the simulation of the app.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_app({
    #     app: "SimSpaceWeaverResourceName", # required
    #     domain: "SimSpaceWeaverResourceName", # required
    #     simulation: "SimSpaceWeaverResourceName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/simspaceweaver-2022-10-28/DeleteApp AWS API Documentation
    #
    # @overload delete_app(params = {})
    # @param [Hash] params ({})
    def delete_app(params = {}, options = {})
      req = build_request(:delete_app, params)
      req.send_request(options)
    end

    # Deletes all SimSpace Weaver resources assigned to the given
    # simulation.
    #
    # <note markdown="1"> Your simulation uses resources in other Amazon Web Services. This API
    # operation doesn't delete resources in other Amazon Web Services.
    #
    #  </note>
    #
    # @option params [required, String] :simulation
    #   The name of the simulation.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_simulation({
    #     simulation: "SimSpaceWeaverResourceName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/simspaceweaver-2022-10-28/DeleteSimulation AWS API Documentation
    #
    # @overload delete_simulation(params = {})
    # @param [Hash] params ({})
    def delete_simulation(params = {}, options = {})
      req = build_request(:delete_simulation, params)
      req.send_request(options)
    end

    # Returns the state of the given custom app.
    #
    # @option params [required, String] :app
    #   The name of the app.
    #
    # @option params [required, String] :domain
    #   The name of the domain of the app.
    #
    # @option params [required, String] :simulation
    #   The name of the simulation of the app.
    #
    # @return [Types::DescribeAppOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAppOutput#description #description} => String
    #   * {Types::DescribeAppOutput#domain #domain} => String
    #   * {Types::DescribeAppOutput#endpoint_info #endpoint_info} => Types::SimulationAppEndpointInfo
    #   * {Types::DescribeAppOutput#launch_overrides #launch_overrides} => Types::LaunchOverrides
    #   * {Types::DescribeAppOutput#name #name} => String
    #   * {Types::DescribeAppOutput#simulation #simulation} => String
    #   * {Types::DescribeAppOutput#status #status} => String
    #   * {Types::DescribeAppOutput#target_status #target_status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_app({
    #     app: "SimSpaceWeaverLongResourceName", # required
    #     domain: "SimSpaceWeaverResourceName", # required
    #     simulation: "SimSpaceWeaverResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.description #=> String
    #   resp.domain #=> String
    #   resp.endpoint_info.address #=> String
    #   resp.endpoint_info.ingress_port_mappings #=> Array
    #   resp.endpoint_info.ingress_port_mappings[0].actual #=> Integer
    #   resp.endpoint_info.ingress_port_mappings[0].declared #=> Integer
    #   resp.launch_overrides.launch_commands #=> Array
    #   resp.launch_overrides.launch_commands[0] #=> String
    #   resp.name #=> String
    #   resp.simulation #=> String
    #   resp.status #=> String, one of "STARTING", "STARTED", "STOPPING", "STOPPED", "ERROR", "UNKNOWN"
    #   resp.target_status #=> String, one of "UNKNOWN", "STARTED", "STOPPED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/simspaceweaver-2022-10-28/DescribeApp AWS API Documentation
    #
    # @overload describe_app(params = {})
    # @param [Hash] params ({})
    def describe_app(params = {}, options = {})
      req = build_request(:describe_app, params)
      req.send_request(options)
    end

    # Returns the current state of the given simulation.
    #
    # @option params [required, String] :simulation
    #   The name of the simulation.
    #
    # @return [Types::DescribeSimulationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeSimulationOutput#arn #arn} => String
    #   * {Types::DescribeSimulationOutput#creation_time #creation_time} => Time
    #   * {Types::DescribeSimulationOutput#description #description} => String
    #   * {Types::DescribeSimulationOutput#execution_id #execution_id} => String
    #   * {Types::DescribeSimulationOutput#live_simulation_state #live_simulation_state} => Types::LiveSimulationState
    #   * {Types::DescribeSimulationOutput#logging_configuration #logging_configuration} => Types::LoggingConfiguration
    #   * {Types::DescribeSimulationOutput#maximum_duration #maximum_duration} => String
    #   * {Types::DescribeSimulationOutput#name #name} => String
    #   * {Types::DescribeSimulationOutput#role_arn #role_arn} => String
    #   * {Types::DescribeSimulationOutput#schema_error #schema_error} => String
    #   * {Types::DescribeSimulationOutput#schema_s3_location #schema_s3_location} => Types::S3Location
    #   * {Types::DescribeSimulationOutput#snapshot_s3_location #snapshot_s3_location} => Types::S3Location
    #   * {Types::DescribeSimulationOutput#start_error #start_error} => String
    #   * {Types::DescribeSimulationOutput#status #status} => String
    #   * {Types::DescribeSimulationOutput#target_status #target_status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_simulation({
    #     simulation: "SimSpaceWeaverResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.creation_time #=> Time
    #   resp.description #=> String
    #   resp.execution_id #=> String
    #   resp.live_simulation_state.clocks #=> Array
    #   resp.live_simulation_state.clocks[0].status #=> String, one of "UNKNOWN", "STARTING", "STARTED", "STOPPING", "STOPPED"
    #   resp.live_simulation_state.clocks[0].target_status #=> String, one of "UNKNOWN", "STARTED", "STOPPED"
    #   resp.live_simulation_state.domains #=> Array
    #   resp.live_simulation_state.domains[0].lifecycle #=> String, one of "Unknown", "PerWorker", "BySpatialSubdivision", "ByRequest"
    #   resp.live_simulation_state.domains[0].name #=> String
    #   resp.logging_configuration.destinations #=> Array
    #   resp.logging_configuration.destinations[0].cloud_watch_logs_log_group.log_group_arn #=> String
    #   resp.maximum_duration #=> String
    #   resp.name #=> String
    #   resp.role_arn #=> String
    #   resp.schema_error #=> String
    #   resp.schema_s3_location.bucket_name #=> String
    #   resp.schema_s3_location.object_key #=> String
    #   resp.snapshot_s3_location.bucket_name #=> String
    #   resp.snapshot_s3_location.object_key #=> String
    #   resp.start_error #=> String
    #   resp.status #=> String, one of "UNKNOWN", "STARTING", "STARTED", "STOPPING", "STOPPED", "FAILED", "DELETING", "DELETED", "SNAPSHOT_IN_PROGRESS"
    #   resp.target_status #=> String, one of "UNKNOWN", "STARTED", "STOPPED", "DELETED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/simspaceweaver-2022-10-28/DescribeSimulation AWS API Documentation
    #
    # @overload describe_simulation(params = {})
    # @param [Hash] params ({})
    def describe_simulation(params = {}, options = {})
      req = build_request(:describe_simulation, params)
      req.send_request(options)
    end

    # Lists all custom apps or service apps for the given simulation and
    # domain.
    #
    # @option params [String] :domain
    #   The name of the domain that you want to list apps for.
    #
    # @option params [Integer] :max_results
    #   The maximum number of apps to list.
    #
    # @option params [String] :next_token
    #   If SimSpace Weaver returns `nextToken`, then there are more results
    #   available. The value of `nextToken` is a unique pagination token for
    #   each page. To retrieve the next page, call the operation again using
    #   the returned token. Keep all other arguments unchanged. If no results
    #   remain, then `nextToken` is set to `null`. Each pagination token
    #   expires after 24 hours. If you provide a token that isn't valid, then
    #   you receive an *HTTP 400 ValidationException* error.
    #
    # @option params [required, String] :simulation
    #   The name of the simulation that you want to list apps for.
    #
    # @return [Types::ListAppsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAppsOutput#apps #apps} => Array&lt;Types::SimulationAppMetadata&gt;
    #   * {Types::ListAppsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_apps({
    #     domain: "SimSpaceWeaverResourceName",
    #     max_results: 1,
    #     next_token: "OptionalString",
    #     simulation: "SimSpaceWeaverResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.apps #=> Array
    #   resp.apps[0].domain #=> String
    #   resp.apps[0].name #=> String
    #   resp.apps[0].simulation #=> String
    #   resp.apps[0].status #=> String, one of "STARTING", "STARTED", "STOPPING", "STOPPED", "ERROR", "UNKNOWN"
    #   resp.apps[0].target_status #=> String, one of "UNKNOWN", "STARTED", "STOPPED"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/simspaceweaver-2022-10-28/ListApps AWS API Documentation
    #
    # @overload list_apps(params = {})
    # @param [Hash] params ({})
    def list_apps(params = {}, options = {})
      req = build_request(:list_apps, params)
      req.send_request(options)
    end

    # Lists the SimSpace Weaver simulations in the Amazon Web Services
    # account used to make the API call.
    #
    # @option params [Integer] :max_results
    #   The maximum number of simulations to list.
    #
    # @option params [String] :next_token
    #   If SimSpace Weaver returns `nextToken`, then there are more results
    #   available. The value of `nextToken` is a unique pagination token for
    #   each page. To retrieve the next page, call the operation again using
    #   the returned token. Keep all other arguments unchanged. If no results
    #   remain, then `nextToken` is set to `null`. Each pagination token
    #   expires after 24 hours. If you provide a token that isn't valid, then
    #   you receive an *HTTP 400 ValidationException* error.
    #
    # @return [Types::ListSimulationsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSimulationsOutput#next_token #next_token} => String
    #   * {Types::ListSimulationsOutput#simulations #simulations} => Array&lt;Types::SimulationMetadata&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_simulations({
    #     max_results: 1,
    #     next_token: "OptionalString",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.simulations #=> Array
    #   resp.simulations[0].arn #=> String
    #   resp.simulations[0].creation_time #=> Time
    #   resp.simulations[0].name #=> String
    #   resp.simulations[0].status #=> String, one of "UNKNOWN", "STARTING", "STARTED", "STOPPING", "STOPPED", "FAILED", "DELETING", "DELETED", "SNAPSHOT_IN_PROGRESS"
    #   resp.simulations[0].target_status #=> String, one of "UNKNOWN", "STARTED", "STOPPED", "DELETED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/simspaceweaver-2022-10-28/ListSimulations AWS API Documentation
    #
    # @overload list_simulations(params = {})
    # @param [Hash] params ({})
    def list_simulations(params = {}, options = {})
      req = build_request(:list_simulations, params)
      req.send_request(options)
    end

    # Lists all tags on a SimSpace Weaver resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource. For more information
    #   about ARNs, see [Amazon Resource Names (ARNs)][1] in the *Amazon Web
    #   Services General Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @return [Types::ListTagsForResourceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceOutput#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "SimSpaceWeaverArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/simspaceweaver-2022-10-28/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Starts a custom app with the configuration specified in the simulation
    # schema.
    #
    # @option params [String] :client_token
    #   A value that you provide to ensure that repeated calls to this API
    #   operation using the same parameters complete only once. A
    #   `ClientToken` is also known as an *idempotency token*. A `ClientToken`
    #   expires after 24 hours.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :description
    #   The description of the app.
    #
    # @option params [required, String] :domain
    #   The name of the domain of the app.
    #
    # @option params [Types::LaunchOverrides] :launch_overrides
    #   Options that apply when the app starts. These options override default
    #   behavior.
    #
    # @option params [required, String] :name
    #   The name of the app.
    #
    # @option params [required, String] :simulation
    #   The name of the simulation of the app.
    #
    # @return [Types::StartAppOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartAppOutput#domain #domain} => String
    #   * {Types::StartAppOutput#name #name} => String
    #   * {Types::StartAppOutput#simulation #simulation} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_app({
    #     client_token: "ClientToken",
    #     description: "Description",
    #     domain: "SimSpaceWeaverResourceName", # required
    #     launch_overrides: {
    #       launch_commands: ["NonEmptyString"],
    #     },
    #     name: "SimSpaceWeaverResourceName", # required
    #     simulation: "SimSpaceWeaverResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.domain #=> String
    #   resp.name #=> String
    #   resp.simulation #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/simspaceweaver-2022-10-28/StartApp AWS API Documentation
    #
    # @overload start_app(params = {})
    # @param [Hash] params ({})
    def start_app(params = {}, options = {})
      req = build_request(:start_app, params)
      req.send_request(options)
    end

    # Starts the simulation clock.
    #
    # @option params [required, String] :simulation
    #   The name of the simulation.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_clock({
    #     simulation: "SimSpaceWeaverResourceName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/simspaceweaver-2022-10-28/StartClock AWS API Documentation
    #
    # @overload start_clock(params = {})
    # @param [Hash] params ({})
    def start_clock(params = {}, options = {})
      req = build_request(:start_clock, params)
      req.send_request(options)
    end

    # Starts a simulation with the given name. You must choose to start your
    # simulation from a schema or from a snapshot. For more information
    # about the schema, see the [schema reference][1] in the *SimSpace
    # Weaver User Guide*. For more information about snapshots, see
    # [Snapshots][2] in the *SimSpace Weaver User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/simspaceweaver/latest/userguide/schema-reference.html
    # [2]: https://docs.aws.amazon.com/simspaceweaver/latest/userguide/working-with_snapshots.html
    #
    # @option params [String] :client_token
    #   A value that you provide to ensure that repeated calls to this API
    #   operation using the same parameters complete only once. A
    #   `ClientToken` is also known as an *idempotency token*. A `ClientToken`
    #   expires after 24 hours.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :description
    #   The description of the simulation.
    #
    # @option params [String] :maximum_duration
    #   The maximum running time of the simulation, specified as a number of
    #   minutes (m or M), hours (h or H), or days (d or D). The simulation
    #   stops when it reaches this limit. The maximum value is `14D`, or its
    #   equivalent in the other units. The default value is `14D`. A value
    #   equivalent to `0` makes the simulation immediately transition to
    #   `Stopping` as soon as it reaches `Started`.
    #
    # @option params [required, String] :name
    #   The name of the simulation.
    #
    # @option params [required, String] :role_arn
    #   The Amazon Resource Name (ARN) of the Identity and Access Management
    #   (IAM) role that the simulation assumes to perform actions. For more
    #   information about ARNs, see [Amazon Resource Names (ARNs)][1] in the
    #   *Amazon Web Services General Reference*. For more information about
    #   IAM roles, see [IAM roles][2] in the *Identity and Access Management
    #   User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   [2]: https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles.html
    #
    # @option params [Types::S3Location] :schema_s3_location
    #   The location of the simulation schema in Amazon Simple Storage Service
    #   (Amazon S3). For more information about Amazon S3, see the [ *Amazon
    #   Simple Storage Service User Guide* ][1].
    #
    #   Provide a `SchemaS3Location` to start your simulation from a schema.
    #
    #   If you provide a `SchemaS3Location` then you can't provide a
    #   `SnapshotS3Location`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/Welcome.html
    #
    # @option params [Types::S3Location] :snapshot_s3_location
    #   The location of the snapshot .zip file in Amazon Simple Storage
    #   Service (Amazon S3). For more information about Amazon S3, see the [
    #   *Amazon Simple Storage Service User Guide* ][1].
    #
    #   Provide a `SnapshotS3Location` to start your simulation from a
    #   snapshot.
    #
    #   The Amazon S3 bucket must be in the same Amazon Web Services Region as
    #   the simulation.
    #
    #   If you provide a `SnapshotS3Location` then you can't provide a
    #   `SchemaS3Location`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/Welcome.html
    #
    # @option params [Hash<String,String>] :tags
    #   A list of tags for the simulation. For more information about tags,
    #   see [Tagging Amazon Web Services resources][1] in the *Amazon Web
    #   Services General Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    #
    # @return [Types::StartSimulationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartSimulationOutput#arn #arn} => String
    #   * {Types::StartSimulationOutput#creation_time #creation_time} => Time
    #   * {Types::StartSimulationOutput#execution_id #execution_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_simulation({
    #     client_token: "ClientToken",
    #     description: "Description",
    #     maximum_duration: "TimeToLiveString",
    #     name: "SimSpaceWeaverResourceName", # required
    #     role_arn: "RoleArn", # required
    #     schema_s3_location: {
    #       bucket_name: "BucketName",
    #       object_key: "ObjectKey",
    #     },
    #     snapshot_s3_location: {
    #       bucket_name: "BucketName",
    #       object_key: "ObjectKey",
    #     },
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.creation_time #=> Time
    #   resp.execution_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/simspaceweaver-2022-10-28/StartSimulation AWS API Documentation
    #
    # @overload start_simulation(params = {})
    # @param [Hash] params ({})
    def start_simulation(params = {}, options = {})
      req = build_request(:start_simulation, params)
      req.send_request(options)
    end

    # Stops the given custom app and shuts down all of its allocated compute
    # resources.
    #
    # @option params [required, String] :app
    #   The name of the app.
    #
    # @option params [required, String] :domain
    #   The name of the domain of the app.
    #
    # @option params [required, String] :simulation
    #   The name of the simulation of the app.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_app({
    #     app: "SimSpaceWeaverResourceName", # required
    #     domain: "SimSpaceWeaverResourceName", # required
    #     simulation: "SimSpaceWeaverResourceName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/simspaceweaver-2022-10-28/StopApp AWS API Documentation
    #
    # @overload stop_app(params = {})
    # @param [Hash] params ({})
    def stop_app(params = {}, options = {})
      req = build_request(:stop_app, params)
      req.send_request(options)
    end

    # Stops the simulation clock.
    #
    # @option params [required, String] :simulation
    #   The name of the simulation.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_clock({
    #     simulation: "SimSpaceWeaverResourceName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/simspaceweaver-2022-10-28/StopClock AWS API Documentation
    #
    # @overload stop_clock(params = {})
    # @param [Hash] params ({})
    def stop_clock(params = {}, options = {})
      req = build_request(:stop_clock, params)
      req.send_request(options)
    end

    # Stops the given simulation.
    #
    # You can't restart a simulation after you stop it. If you want to
    # restart a simulation, then you must stop it, delete it, and start a
    # new instance of it.
    #
    # @option params [required, String] :simulation
    #   The name of the simulation.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_simulation({
    #     simulation: "SimSpaceWeaverResourceName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/simspaceweaver-2022-10-28/StopSimulation AWS API Documentation
    #
    # @overload stop_simulation(params = {})
    # @param [Hash] params ({})
    def stop_simulation(params = {}, options = {})
      req = build_request(:stop_simulation, params)
      req.send_request(options)
    end

    # Adds tags to a SimSpace Weaver resource. For more information about
    # tags, see [Tagging Amazon Web Services resources][1] in the *Amazon
    # Web Services General Reference*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource that you want to add
    #   tags to. For more information about ARNs, see [Amazon Resource Names
    #   (ARNs)][1] in the *Amazon Web Services General Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @option params [required, Hash<String,String>] :tags
    #   A list of tags to apply to the resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "SimSpaceWeaverArn", # required
    #     tags: { # required
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/simspaceweaver-2022-10-28/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes tags from a SimSpace Weaver resource. For more information
    # about tags, see [Tagging Amazon Web Services resources][1] in the
    # *Amazon Web Services General Reference*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource that you want to remove
    #   tags from. For more information about ARNs, see [Amazon Resource Names
    #   (ARNs)][1] in the *Amazon Web Services General Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @option params [required, Array<String>] :tag_keys
    #   A list of tag keys to remove from the resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "SimSpaceWeaverArn", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/simspaceweaver-2022-10-28/UntagResource AWS API Documentation
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
      context[:gem_name] = 'aws-sdk-simspaceweaver'
      context[:gem_version] = '1.8.0'
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
