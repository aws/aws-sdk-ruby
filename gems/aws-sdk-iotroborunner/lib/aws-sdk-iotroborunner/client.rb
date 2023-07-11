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

Aws::Plugins::GlobalConfiguration.add_identifier(:iotroborunner)

module Aws::IoTRoboRunner
  # An API client for IoTRoboRunner.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::IoTRoboRunner::Client.new(
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

    @identifier = :iotroborunner

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
    add_plugin(Aws::IoTRoboRunner::Plugins::Endpoints)

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
    #   @option options [Aws::IoTRoboRunner::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::IoTRoboRunner::EndpointParameters`
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

    # Grants permission to create a destination
    #
    # @option params [String] :client_token
    #   Token used for detecting replayed requests. Replayed requests will not
    #   be performed multiple times.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :name
    #   Human friendly name of the resource.
    #
    # @option params [required, String] :site
    #   Site ARN.
    #
    # @option params [String] :state
    #   The state of the destination. Default used if not specified.
    #
    # @option params [String] :additional_fixed_properties
    #   JSON document containing additional fixed properties regarding the
    #   destination
    #
    # @return [Types::CreateDestinationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDestinationResponse#arn #arn} => String
    #   * {Types::CreateDestinationResponse#id #id} => String
    #   * {Types::CreateDestinationResponse#created_at #created_at} => Time
    #   * {Types::CreateDestinationResponse#updated_at #updated_at} => Time
    #   * {Types::CreateDestinationResponse#state #state} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_destination({
    #     client_token: "IdempotencyToken",
    #     name: "Name", # required
    #     site: "SiteGenericIdentifier", # required
    #     state: "ENABLED", # accepts ENABLED, DISABLED, DECOMMISSIONED
    #     additional_fixed_properties: "DestinationAdditionalFixedProperties",
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.id #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.state #=> String, one of "ENABLED", "DISABLED", "DECOMMISSIONED"
    #
    # @overload create_destination(params = {})
    # @param [Hash] params ({})
    def create_destination(params = {}, options = {})
      req = build_request(:create_destination, params)
      req.send_request(options)
    end

    # Grants permission to create a site
    #
    # @option params [String] :client_token
    #   Token used for detecting replayed requests. Replayed requests will not
    #   be performed multiple times.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :name
    #   Human friendly name of the resource.
    #
    # @option params [required, String] :country_code
    #   A valid ISO 3166-1 alpha-2 code for the country in which the site
    #   resides. e.g., US.
    #
    # @option params [String] :description
    #   A high-level description of the site.
    #
    # @return [Types::CreateSiteResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateSiteResponse#arn #arn} => String
    #   * {Types::CreateSiteResponse#id #id} => String
    #   * {Types::CreateSiteResponse#created_at #created_at} => Time
    #   * {Types::CreateSiteResponse#updated_at #updated_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_site({
    #     client_token: "IdempotencyToken",
    #     name: "Name", # required
    #     country_code: "SiteCountryCode", # required
    #     description: "SiteDescription",
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.id #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #
    # @overload create_site(params = {})
    # @param [Hash] params ({})
    def create_site(params = {}, options = {})
      req = build_request(:create_site, params)
      req.send_request(options)
    end

    # Grants permission to create a worker
    #
    # @option params [String] :client_token
    #   Token used for detecting replayed requests. Replayed requests will not
    #   be performed multiple times.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :name
    #   Human friendly name of the resource.
    #
    # @option params [required, String] :fleet
    #   Full ARN of the worker fleet.
    #
    # @option params [String] :additional_transient_properties
    #   JSON blob containing unstructured worker properties that are transient
    #   and may change during regular operation.
    #
    # @option params [String] :additional_fixed_properties
    #   JSON blob containing unstructured worker properties that are fixed and
    #   won't change during regular operation.
    #
    # @option params [Types::VendorProperties] :vendor_properties
    #   Properties of the worker that are provided by the vendor FMS.
    #
    # @option params [Types::PositionCoordinates] :position
    #   Supported coordinates for worker position.
    #
    # @option params [Types::Orientation] :orientation
    #   Worker orientation measured in units clockwise from north.
    #
    # @return [Types::CreateWorkerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateWorkerResponse#arn #arn} => String
    #   * {Types::CreateWorkerResponse#id #id} => String
    #   * {Types::CreateWorkerResponse#created_at #created_at} => Time
    #   * {Types::CreateWorkerResponse#updated_at #updated_at} => Time
    #   * {Types::CreateWorkerResponse#site #site} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_worker({
    #     client_token: "IdempotencyToken",
    #     name: "Name", # required
    #     fleet: "WorkerFleetGenericIdentifier", # required
    #     additional_transient_properties: "WorkerAdditionalTransientPropertiesJson",
    #     additional_fixed_properties: "WorkerAdditionalFixedPropertiesJson",
    #     vendor_properties: {
    #       vendor_worker_id: "VendorWorkerId", # required
    #       vendor_worker_ip_address: "VendorWorkerIpAddress",
    #       vendor_additional_transient_properties: "VendorAdditionalTransientPropertiesJson",
    #       vendor_additional_fixed_properties: "VendorAdditionalFixedPropertiesJson",
    #     },
    #     position: {
    #       cartesian_coordinates: {
    #         x: 1.0, # required
    #         y: 1.0, # required
    #         z: 1.0,
    #       },
    #     },
    #     orientation: {
    #       degrees: 1.0,
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.id #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.site #=> String
    #
    # @overload create_worker(params = {})
    # @param [Hash] params ({})
    def create_worker(params = {}, options = {})
      req = build_request(:create_worker, params)
      req.send_request(options)
    end

    # Grants permission to create a worker fleet
    #
    # @option params [String] :client_token
    #   Token used for detecting replayed requests. Replayed requests will not
    #   be performed multiple times.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :name
    #   Human friendly name of the resource.
    #
    # @option params [required, String] :site
    #   Site ARN.
    #
    # @option params [String] :additional_fixed_properties
    #   JSON blob containing additional fixed properties regarding the worker
    #   fleet
    #
    # @return [Types::CreateWorkerFleetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateWorkerFleetResponse#arn #arn} => String
    #   * {Types::CreateWorkerFleetResponse#id #id} => String
    #   * {Types::CreateWorkerFleetResponse#created_at #created_at} => Time
    #   * {Types::CreateWorkerFleetResponse#updated_at #updated_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_worker_fleet({
    #     client_token: "IdempotencyToken",
    #     name: "Name", # required
    #     site: "SiteGenericIdentifier", # required
    #     additional_fixed_properties: "WorkerFleetAdditionalFixedProperties",
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.id #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #
    # @overload create_worker_fleet(params = {})
    # @param [Hash] params ({})
    def create_worker_fleet(params = {}, options = {})
      req = build_request(:create_worker_fleet, params)
      req.send_request(options)
    end

    # Grants permission to delete a destination
    #
    # @option params [required, String] :id
    #   Destination ARN.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_destination({
    #     id: "DestinationGenericIdentifier", # required
    #   })
    #
    # @overload delete_destination(params = {})
    # @param [Hash] params ({})
    def delete_destination(params = {}, options = {})
      req = build_request(:delete_destination, params)
      req.send_request(options)
    end

    # Grants permission to delete a site
    #
    # @option params [required, String] :id
    #   Site ARN.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_site({
    #     id: "SiteGenericIdentifier", # required
    #   })
    #
    # @overload delete_site(params = {})
    # @param [Hash] params ({})
    def delete_site(params = {}, options = {})
      req = build_request(:delete_site, params)
      req.send_request(options)
    end

    # Grants permission to delete a worker
    #
    # @option params [required, String] :id
    #   Full ARN of the worker.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_worker({
    #     id: "WorkerGenericIdentifier", # required
    #   })
    #
    # @overload delete_worker(params = {})
    # @param [Hash] params ({})
    def delete_worker(params = {}, options = {})
      req = build_request(:delete_worker, params)
      req.send_request(options)
    end

    # Grants permission to delete a worker fleet
    #
    # @option params [required, String] :id
    #   Full ARN of the worker fleet.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_worker_fleet({
    #     id: "WorkerFleetGenericIdentifier", # required
    #   })
    #
    # @overload delete_worker_fleet(params = {})
    # @param [Hash] params ({})
    def delete_worker_fleet(params = {}, options = {})
      req = build_request(:delete_worker_fleet, params)
      req.send_request(options)
    end

    # Grants permission to get a destination
    #
    # @option params [required, String] :id
    #   Destination ARN.
    #
    # @return [Types::GetDestinationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDestinationResponse#arn #arn} => String
    #   * {Types::GetDestinationResponse#id #id} => String
    #   * {Types::GetDestinationResponse#name #name} => String
    #   * {Types::GetDestinationResponse#site #site} => String
    #   * {Types::GetDestinationResponse#created_at #created_at} => Time
    #   * {Types::GetDestinationResponse#updated_at #updated_at} => Time
    #   * {Types::GetDestinationResponse#state #state} => String
    #   * {Types::GetDestinationResponse#additional_fixed_properties #additional_fixed_properties} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_destination({
    #     id: "DestinationGenericIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.site #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.state #=> String, one of "ENABLED", "DISABLED", "DECOMMISSIONED"
    #   resp.additional_fixed_properties #=> String
    #
    # @overload get_destination(params = {})
    # @param [Hash] params ({})
    def get_destination(params = {}, options = {})
      req = build_request(:get_destination, params)
      req.send_request(options)
    end

    # Grants permission to get a site
    #
    # @option params [required, String] :id
    #   Site ARN.
    #
    # @return [Types::GetSiteResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSiteResponse#arn #arn} => String
    #   * {Types::GetSiteResponse#id #id} => String
    #   * {Types::GetSiteResponse#name #name} => String
    #   * {Types::GetSiteResponse#country_code #country_code} => String
    #   * {Types::GetSiteResponse#description #description} => String
    #   * {Types::GetSiteResponse#created_at #created_at} => Time
    #   * {Types::GetSiteResponse#updated_at #updated_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_site({
    #     id: "SiteGenericIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.country_code #=> String
    #   resp.description #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #
    # @overload get_site(params = {})
    # @param [Hash] params ({})
    def get_site(params = {}, options = {})
      req = build_request(:get_site, params)
      req.send_request(options)
    end

    # Grants permission to get a worker
    #
    # @option params [required, String] :id
    #   Full ARN of the worker.
    #
    # @return [Types::GetWorkerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetWorkerResponse#arn #arn} => String
    #   * {Types::GetWorkerResponse#id #id} => String
    #   * {Types::GetWorkerResponse#fleet #fleet} => String
    #   * {Types::GetWorkerResponse#site #site} => String
    #   * {Types::GetWorkerResponse#created_at #created_at} => Time
    #   * {Types::GetWorkerResponse#updated_at #updated_at} => Time
    #   * {Types::GetWorkerResponse#name #name} => String
    #   * {Types::GetWorkerResponse#additional_transient_properties #additional_transient_properties} => String
    #   * {Types::GetWorkerResponse#additional_fixed_properties #additional_fixed_properties} => String
    #   * {Types::GetWorkerResponse#vendor_properties #vendor_properties} => Types::VendorProperties
    #   * {Types::GetWorkerResponse#position #position} => Types::PositionCoordinates
    #   * {Types::GetWorkerResponse#orientation #orientation} => Types::Orientation
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_worker({
    #     id: "WorkerGenericIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.id #=> String
    #   resp.fleet #=> String
    #   resp.site #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.name #=> String
    #   resp.additional_transient_properties #=> String
    #   resp.additional_fixed_properties #=> String
    #   resp.vendor_properties.vendor_worker_id #=> String
    #   resp.vendor_properties.vendor_worker_ip_address #=> String
    #   resp.vendor_properties.vendor_additional_transient_properties #=> String
    #   resp.vendor_properties.vendor_additional_fixed_properties #=> String
    #   resp.position.cartesian_coordinates.x #=> Float
    #   resp.position.cartesian_coordinates.y #=> Float
    #   resp.position.cartesian_coordinates.z #=> Float
    #   resp.orientation.degrees #=> Float
    #
    # @overload get_worker(params = {})
    # @param [Hash] params ({})
    def get_worker(params = {}, options = {})
      req = build_request(:get_worker, params)
      req.send_request(options)
    end

    # Grants permission to get a worker fleet
    #
    # @option params [required, String] :id
    #   Full ARN of the worker fleet.
    #
    # @return [Types::GetWorkerFleetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetWorkerFleetResponse#id #id} => String
    #   * {Types::GetWorkerFleetResponse#arn #arn} => String
    #   * {Types::GetWorkerFleetResponse#name #name} => String
    #   * {Types::GetWorkerFleetResponse#site #site} => String
    #   * {Types::GetWorkerFleetResponse#created_at #created_at} => Time
    #   * {Types::GetWorkerFleetResponse#updated_at #updated_at} => Time
    #   * {Types::GetWorkerFleetResponse#additional_fixed_properties #additional_fixed_properties} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_worker_fleet({
    #     id: "WorkerFleetGenericIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.arn #=> String
    #   resp.name #=> String
    #   resp.site #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.additional_fixed_properties #=> String
    #
    # @overload get_worker_fleet(params = {})
    # @param [Hash] params ({})
    def get_worker_fleet(params = {}, options = {})
      req = build_request(:get_worker_fleet, params)
      req.send_request(options)
    end

    # Grants permission to list destinations
    #
    # @option params [required, String] :site
    #   Site ARN.
    #
    # @option params [Integer] :max_results
    #   Maximum number of results to retrieve in a single call.
    #
    # @option params [String] :next_token
    #   Pagination token returned when another page of data exists. Provide it
    #   in your next call to the API to receive the next page.
    #
    # @option params [String] :state
    #   State of the destination.
    #
    # @return [Types::ListDestinationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDestinationsResponse#next_token #next_token} => String
    #   * {Types::ListDestinationsResponse#destinations #destinations} => Array&lt;Types::Destination&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_destinations({
    #     site: "SiteGenericIdentifier", # required
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #     state: "ENABLED", # accepts ENABLED, DISABLED, DECOMMISSIONED
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.destinations #=> Array
    #   resp.destinations[0].arn #=> String
    #   resp.destinations[0].id #=> String
    #   resp.destinations[0].name #=> String
    #   resp.destinations[0].site #=> String
    #   resp.destinations[0].created_at #=> Time
    #   resp.destinations[0].updated_at #=> Time
    #   resp.destinations[0].state #=> String, one of "ENABLED", "DISABLED", "DECOMMISSIONED"
    #   resp.destinations[0].additional_fixed_properties #=> String
    #
    # @overload list_destinations(params = {})
    # @param [Hash] params ({})
    def list_destinations(params = {}, options = {})
      req = build_request(:list_destinations, params)
      req.send_request(options)
    end

    # Grants permission to list sites
    #
    # @option params [Integer] :max_results
    #   Maximum number of results to retrieve in a single ListSites call.
    #
    # @option params [String] :next_token
    #   Pagination token returned when another page of data exists. Provide it
    #   in your next call to the API to receive the next page.
    #
    # @return [Types::ListSitesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSitesResponse#next_token #next_token} => String
    #   * {Types::ListSitesResponse#sites #sites} => Array&lt;Types::Site&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_sites({
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.sites #=> Array
    #   resp.sites[0].arn #=> String
    #   resp.sites[0].name #=> String
    #   resp.sites[0].country_code #=> String
    #   resp.sites[0].created_at #=> Time
    #
    # @overload list_sites(params = {})
    # @param [Hash] params ({})
    def list_sites(params = {}, options = {})
      req = build_request(:list_sites, params)
      req.send_request(options)
    end

    # Grants permission to list worker fleets
    #
    # @option params [required, String] :site
    #   Site ARN.
    #
    # @option params [Integer] :max_results
    #   Maximum number of results to retrieve in a single ListWorkerFleets
    #   call.
    #
    # @option params [String] :next_token
    #   Pagination token returned when another page of data exists. Provide it
    #   in your next call to the API to receive the next page.
    #
    # @return [Types::ListWorkerFleetsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListWorkerFleetsResponse#next_token #next_token} => String
    #   * {Types::ListWorkerFleetsResponse#worker_fleets #worker_fleets} => Array&lt;Types::WorkerFleet&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_worker_fleets({
    #     site: "SiteGenericIdentifier", # required
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.worker_fleets #=> Array
    #   resp.worker_fleets[0].arn #=> String
    #   resp.worker_fleets[0].id #=> String
    #   resp.worker_fleets[0].name #=> String
    #   resp.worker_fleets[0].site #=> String
    #   resp.worker_fleets[0].created_at #=> Time
    #   resp.worker_fleets[0].updated_at #=> Time
    #   resp.worker_fleets[0].additional_fixed_properties #=> String
    #
    # @overload list_worker_fleets(params = {})
    # @param [Hash] params ({})
    def list_worker_fleets(params = {}, options = {})
      req = build_request(:list_worker_fleets, params)
      req.send_request(options)
    end

    # Grants permission to list workers
    #
    # @option params [required, String] :site
    #   Site ARN.
    #
    # @option params [Integer] :max_results
    #   Maximum number of results to retrieve in a single ListWorkers call.
    #
    # @option params [String] :next_token
    #   Pagination token returned when another page of data exists. Provide it
    #   in your next call to the API to receive the next page.
    #
    # @option params [String] :fleet
    #   Full ARN of the worker fleet.
    #
    # @return [Types::ListWorkersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListWorkersResponse#next_token #next_token} => String
    #   * {Types::ListWorkersResponse#workers #workers} => Array&lt;Types::Worker&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_workers({
    #     site: "SiteGenericIdentifier", # required
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #     fleet: "WorkerFleetGenericIdentifier",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.workers #=> Array
    #   resp.workers[0].arn #=> String
    #   resp.workers[0].id #=> String
    #   resp.workers[0].fleet #=> String
    #   resp.workers[0].created_at #=> Time
    #   resp.workers[0].updated_at #=> Time
    #   resp.workers[0].name #=> String
    #   resp.workers[0].site #=> String
    #   resp.workers[0].additional_transient_properties #=> String
    #   resp.workers[0].additional_fixed_properties #=> String
    #   resp.workers[0].vendor_properties.vendor_worker_id #=> String
    #   resp.workers[0].vendor_properties.vendor_worker_ip_address #=> String
    #   resp.workers[0].vendor_properties.vendor_additional_transient_properties #=> String
    #   resp.workers[0].vendor_properties.vendor_additional_fixed_properties #=> String
    #   resp.workers[0].position.cartesian_coordinates.x #=> Float
    #   resp.workers[0].position.cartesian_coordinates.y #=> Float
    #   resp.workers[0].position.cartesian_coordinates.z #=> Float
    #   resp.workers[0].orientation.degrees #=> Float
    #
    # @overload list_workers(params = {})
    # @param [Hash] params ({})
    def list_workers(params = {}, options = {})
      req = build_request(:list_workers, params)
      req.send_request(options)
    end

    # Grants permission to update a destination
    #
    # @option params [required, String] :id
    #   Destination ARN.
    #
    # @option params [String] :name
    #   Human friendly name of the resource.
    #
    # @option params [String] :state
    #   State of the destination.
    #
    # @option params [String] :additional_fixed_properties
    #   JSON document containing additional fixed properties regarding the
    #   destination
    #
    # @return [Types::UpdateDestinationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateDestinationResponse#arn #arn} => String
    #   * {Types::UpdateDestinationResponse#id #id} => String
    #   * {Types::UpdateDestinationResponse#name #name} => String
    #   * {Types::UpdateDestinationResponse#updated_at #updated_at} => Time
    #   * {Types::UpdateDestinationResponse#state #state} => String
    #   * {Types::UpdateDestinationResponse#additional_fixed_properties #additional_fixed_properties} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_destination({
    #     id: "DestinationGenericIdentifier", # required
    #     name: "Name",
    #     state: "ENABLED", # accepts ENABLED, DISABLED, DECOMMISSIONED
    #     additional_fixed_properties: "DestinationAdditionalFixedProperties",
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.updated_at #=> Time
    #   resp.state #=> String, one of "ENABLED", "DISABLED", "DECOMMISSIONED"
    #   resp.additional_fixed_properties #=> String
    #
    # @overload update_destination(params = {})
    # @param [Hash] params ({})
    def update_destination(params = {}, options = {})
      req = build_request(:update_destination, params)
      req.send_request(options)
    end

    # Grants permission to update a site
    #
    # @option params [required, String] :id
    #   Site ARN.
    #
    # @option params [String] :name
    #   Human friendly name of the resource.
    #
    # @option params [String] :country_code
    #   A valid ISO 3166-1 alpha-2 code for the country in which the site
    #   resides. e.g., US.
    #
    # @option params [String] :description
    #   A high-level description of the site.
    #
    # @return [Types::UpdateSiteResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateSiteResponse#arn #arn} => String
    #   * {Types::UpdateSiteResponse#id #id} => String
    #   * {Types::UpdateSiteResponse#name #name} => String
    #   * {Types::UpdateSiteResponse#country_code #country_code} => String
    #   * {Types::UpdateSiteResponse#description #description} => String
    #   * {Types::UpdateSiteResponse#updated_at #updated_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_site({
    #     id: "SiteGenericIdentifier", # required
    #     name: "Name",
    #     country_code: "SiteCountryCode",
    #     description: "SiteDescription",
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.country_code #=> String
    #   resp.description #=> String
    #   resp.updated_at #=> Time
    #
    # @overload update_site(params = {})
    # @param [Hash] params ({})
    def update_site(params = {}, options = {})
      req = build_request(:update_site, params)
      req.send_request(options)
    end

    # Grants permission to update a worker
    #
    # @option params [required, String] :id
    #   Full ARN of the worker.
    #
    # @option params [String] :name
    #   Human friendly name of the resource.
    #
    # @option params [String] :additional_transient_properties
    #   JSON blob containing unstructured worker properties that are transient
    #   and may change during regular operation.
    #
    # @option params [String] :additional_fixed_properties
    #   JSON blob containing unstructured worker properties that are fixed and
    #   won't change during regular operation.
    #
    # @option params [Types::VendorProperties] :vendor_properties
    #   Properties of the worker that are provided by the vendor FMS.
    #
    # @option params [Types::PositionCoordinates] :position
    #   Supported coordinates for worker position.
    #
    # @option params [Types::Orientation] :orientation
    #   Worker orientation measured in units clockwise from north.
    #
    # @return [Types::UpdateWorkerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateWorkerResponse#arn #arn} => String
    #   * {Types::UpdateWorkerResponse#id #id} => String
    #   * {Types::UpdateWorkerResponse#fleet #fleet} => String
    #   * {Types::UpdateWorkerResponse#updated_at #updated_at} => Time
    #   * {Types::UpdateWorkerResponse#name #name} => String
    #   * {Types::UpdateWorkerResponse#additional_transient_properties #additional_transient_properties} => String
    #   * {Types::UpdateWorkerResponse#additional_fixed_properties #additional_fixed_properties} => String
    #   * {Types::UpdateWorkerResponse#orientation #orientation} => Types::Orientation
    #   * {Types::UpdateWorkerResponse#vendor_properties #vendor_properties} => Types::VendorProperties
    #   * {Types::UpdateWorkerResponse#position #position} => Types::PositionCoordinates
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_worker({
    #     id: "WorkerGenericIdentifier", # required
    #     name: "Name",
    #     additional_transient_properties: "WorkerAdditionalTransientPropertiesJson",
    #     additional_fixed_properties: "WorkerAdditionalFixedPropertiesJson",
    #     vendor_properties: {
    #       vendor_worker_id: "VendorWorkerId", # required
    #       vendor_worker_ip_address: "VendorWorkerIpAddress",
    #       vendor_additional_transient_properties: "VendorAdditionalTransientPropertiesJson",
    #       vendor_additional_fixed_properties: "VendorAdditionalFixedPropertiesJson",
    #     },
    #     position: {
    #       cartesian_coordinates: {
    #         x: 1.0, # required
    #         y: 1.0, # required
    #         z: 1.0,
    #       },
    #     },
    #     orientation: {
    #       degrees: 1.0,
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.id #=> String
    #   resp.fleet #=> String
    #   resp.updated_at #=> Time
    #   resp.name #=> String
    #   resp.additional_transient_properties #=> String
    #   resp.additional_fixed_properties #=> String
    #   resp.orientation.degrees #=> Float
    #   resp.vendor_properties.vendor_worker_id #=> String
    #   resp.vendor_properties.vendor_worker_ip_address #=> String
    #   resp.vendor_properties.vendor_additional_transient_properties #=> String
    #   resp.vendor_properties.vendor_additional_fixed_properties #=> String
    #   resp.position.cartesian_coordinates.x #=> Float
    #   resp.position.cartesian_coordinates.y #=> Float
    #   resp.position.cartesian_coordinates.z #=> Float
    #
    # @overload update_worker(params = {})
    # @param [Hash] params ({})
    def update_worker(params = {}, options = {})
      req = build_request(:update_worker, params)
      req.send_request(options)
    end

    # Grants permission to update a worker fleet
    #
    # @option params [required, String] :id
    #   Full ARN of the worker fleet.
    #
    # @option params [String] :name
    #   Human friendly name of the resource.
    #
    # @option params [String] :additional_fixed_properties
    #   JSON blob containing additional fixed properties regarding the worker
    #   fleet
    #
    # @return [Types::UpdateWorkerFleetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateWorkerFleetResponse#arn #arn} => String
    #   * {Types::UpdateWorkerFleetResponse#id #id} => String
    #   * {Types::UpdateWorkerFleetResponse#name #name} => String
    #   * {Types::UpdateWorkerFleetResponse#updated_at #updated_at} => Time
    #   * {Types::UpdateWorkerFleetResponse#additional_fixed_properties #additional_fixed_properties} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_worker_fleet({
    #     id: "WorkerFleetGenericIdentifier", # required
    #     name: "Name",
    #     additional_fixed_properties: "WorkerFleetAdditionalFixedProperties",
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.updated_at #=> Time
    #   resp.additional_fixed_properties #=> String
    #
    # @overload update_worker_fleet(params = {})
    # @param [Hash] params ({})
    def update_worker_fleet(params = {}, options = {})
      req = build_request(:update_worker_fleet, params)
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
      context[:gem_name] = 'aws-sdk-iotroborunner'
      context[:gem_version] = '1.6.0'
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
