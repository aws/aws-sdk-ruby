# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'seahorse/client/plugins/content_length'
require 'aws-sdk-core/plugins/credentials_configuration'
require 'aws-sdk-core/plugins/logging'
require 'aws-sdk-core/plugins/param_converter'
require 'aws-sdk-core/plugins/param_validator'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/helpful_socket_errors'
require 'aws-sdk-core/plugins/retry_errors'
require 'aws-sdk-core/plugins/global_configuration'
require 'aws-sdk-core/plugins/regional_endpoint'
require 'aws-sdk-core/plugins/endpoint_discovery'
require 'aws-sdk-core/plugins/endpoint_pattern'
require 'aws-sdk-core/plugins/response_paging'
require 'aws-sdk-core/plugins/stub_responses'
require 'aws-sdk-core/plugins/idempotency_token'
require 'aws-sdk-core/plugins/invocation_id'
require 'aws-sdk-core/plugins/jsonvalue_converter'
require 'aws-sdk-core/plugins/client_metrics_plugin'
require 'aws-sdk-core/plugins/client_metrics_send_plugin'
require 'aws-sdk-core/plugins/transfer_encoding'
require 'aws-sdk-core/plugins/http_checksum'
require 'aws-sdk-core/plugins/checksum_algorithm'
require 'aws-sdk-core/plugins/request_compression'
require 'aws-sdk-core/plugins/defaults_mode'
require 'aws-sdk-core/plugins/recursion_detection'
require 'aws-sdk-core/plugins/telemetry'
require 'aws-sdk-core/plugins/sign'
require 'aws-sdk-core/plugins/protocols/rest_json'

module Aws::GameLiftStreams
  # An API client for GameLiftStreams.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::GameLiftStreams::Client.new(
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

    @identifier = :gameliftstreams

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
    add_plugin(Aws::Plugins::InvocationId)
    add_plugin(Aws::Plugins::JsonvalueConverter)
    add_plugin(Aws::Plugins::ClientMetricsPlugin)
    add_plugin(Aws::Plugins::ClientMetricsSendPlugin)
    add_plugin(Aws::Plugins::TransferEncoding)
    add_plugin(Aws::Plugins::HttpChecksum)
    add_plugin(Aws::Plugins::ChecksumAlgorithm)
    add_plugin(Aws::Plugins::RequestCompression)
    add_plugin(Aws::Plugins::DefaultsMode)
    add_plugin(Aws::Plugins::RecursionDetection)
    add_plugin(Aws::Plugins::Telemetry)
    add_plugin(Aws::Plugins::Sign)
    add_plugin(Aws::Plugins::Protocols::RestJson)
    add_plugin(Aws::GameLiftStreams::Plugins::Endpoints)

    # @overload initialize(options)
    #   @param [Hash] options
    #
    #   @option options [Array<Seahorse::Client::Plugin>] :plugins ([]])
    #     A list of plugins to apply to the client. Each plugin is either a
    #     class name or an instance of a plugin class.
    #
    #   @option options [required, Aws::CredentialProvider] :credentials
    #     Your AWS credentials used for authentication. This can be any class that includes and implements
    #     `Aws::CredentialProvider`, or instance of any one of the following classes:
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
    #     When `:credentials` are not configured directly, the following locations will be searched for credentials:
    #
    #     * `Aws.config[:credentials]`
    #
    #     * The `:access_key_id`, `:secret_access_key`, `:session_token`, and
    #       `:account_id` options.
    #
    #     * `ENV['AWS_ACCESS_KEY_ID']`, `ENV['AWS_SECRET_ACCESS_KEY']`,
    #       `ENV['AWS_SESSION_TOKEN']`, and `ENV['AWS_ACCOUNT_ID']`.
    #
    #     * `~/.aws/credentials`
    #
    #     * `~/.aws/config`
    #
    #     * EC2/ECS IMDS instance profile - When used by default, the timeouts are very aggressive.
    #       Construct and pass an instance of `Aws::InstanceProfileCredentials` or `Aws::ECSCredentials` to
    #       enable retries and extended timeouts. Instance profile credential fetching can be disabled by
    #       setting `ENV['AWS_EC2_METADATA_DISABLED']` to `true`.
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
    #   @option options [String] :account_id
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
    #   @option options [Array<String>] :auth_scheme_preference
    #     A list of preferred authentication schemes to use when making a request. Supported values are:
    #     `sigv4`, `sigv4a`, `httpBearerAuth`, and `noAuth`. When set using `ENV['AWS_AUTH_SCHEME_PREFERENCE']` or in
    #     shared config as `auth_scheme_preference`, the value should be a comma-separated list.
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
    #     When `true`, the SDK will not prepend the modeled host prefix to the endpoint.
    #
    #   @option options [Boolean] :disable_request_compression (false)
    #     When set to 'true' the request body will not be compressed
    #     for supported operations.
    #
    #   @option options [String, URI::HTTPS, URI::HTTP] :endpoint
    #     Normally you should not configure the `:endpoint` option
    #     directly. This is normally constructed from the `:region`
    #     option. Configuring `:endpoint` is normally reserved for
    #     connecting to test or custom endpoints. The endpoint should
    #     be a URI formatted like:
    #
    #         'http://example.com'
    #         'https://example.com'
    #         'http://example.com:123'
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
    #     Used when loading credentials from the shared credentials file at `HOME/.aws/credentials`.
    #     When not specified, 'default' is used.
    #
    #   @option options [String] :request_checksum_calculation ("when_supported")
    #     Determines when a checksum will be calculated for request payloads. Values are:
    #
    #     * `when_supported` - (default) When set, a checksum will be
    #       calculated for all request payloads of operations modeled with the
    #       `httpChecksum` trait where `requestChecksumRequired` is `true` and/or a
    #       `requestAlgorithmMember` is modeled.
    #     * `when_required` - When set, a checksum will only be calculated for
    #       request payloads of operations modeled with the  `httpChecksum` trait where
    #       `requestChecksumRequired` is `true` or where a `requestAlgorithmMember`
    #       is modeled and supplied.
    #
    #   @option options [Integer] :request_min_compression_size_bytes (10240)
    #     The minimum size in bytes that triggers compression for request
    #     bodies. The value must be non-negative integer value between 0
    #     and 10485780 bytes inclusive.
    #
    #   @option options [String] :response_checksum_validation ("when_supported")
    #     Determines when checksum validation will be performed on response payloads. Values are:
    #
    #     * `when_supported` - (default) When set, checksum validation is performed on all
    #       response payloads of operations modeled with the `httpChecksum` trait where
    #       `responseAlgorithms` is modeled, except when no modeled checksum algorithms
    #       are supported.
    #     * `when_required` - When set, checksum validation is not performed on
    #       response payloads of operations unless the checksum algorithm is supported and
    #       the `requestValidationModeMember` member is set to `ENABLED`.
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
    #   @option options [String] :sdk_ua_app_id
    #     A unique and opaque application ID that is appended to the
    #     User-Agent header as app/sdk_ua_app_id. It should have a
    #     maximum length of 50. This variable is sourced from environment
    #     variable AWS_SDK_UA_APP_ID or the shared config profile attribute sdk_ua_app_id.
    #
    #   @option options [String] :secret_access_key
    #
    #   @option options [String] :session_token
    #
    #   @option options [Array] :sigv4a_signing_region_set
    #     A list of regions that should be signed with SigV4a signing. When
    #     not passed, a default `:sigv4a_signing_region_set` is searched for
    #     in the following locations:
    #
    #     * `Aws.config[:sigv4a_signing_region_set]`
    #     * `ENV['AWS_SIGV4A_SIGNING_REGION_SET']`
    #     * `~/.aws/config`
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
    #   @option options [Aws::Telemetry::TelemetryProviderBase] :telemetry_provider (Aws::Telemetry::NoOpTelemetryProvider)
    #     Allows you to provide a telemetry provider, which is used to
    #     emit telemetry data. By default, uses `NoOpTelemetryProvider` which
    #     will not record or emit any telemetry data. The SDK supports the
    #     following telemetry providers:
    #
    #     * OpenTelemetry (OTel) - To use the OTel provider, install and require the
    #     `opentelemetry-sdk` gem and then, pass in an instance of a
    #     `Aws::Telemetry::OTelProvider` for telemetry provider.
    #
    #   @option options [Aws::TokenProvider] :token_provider
    #     Your Bearer token used for authentication. This can be any class that includes and implements
    #     `Aws::TokenProvider`, or instance of any one of the following classes:
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
    #   @option options [Aws::GameLiftStreams::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::GameLiftStreams::EndpointParameters`.
    #
    #   @option options [Float] :http_continue_timeout (1)
    #     The number of seconds to wait for a 100-continue response before sending the
    #     request body.  This option has no effect unless the request has "Expect"
    #     header set to "100-continue".  Defaults to `nil` which  disables this
    #     behaviour.  This value can safely be set per request on the session.
    #
    #   @option options [Float] :http_idle_timeout (5)
    #     The number of seconds a connection is allowed to sit idle before it
    #     is considered stale.  Stale connections are closed and removed from the
    #     pool before making a request.
    #
    #   @option options [Float] :http_open_timeout (15)
    #     The default number of seconds to wait for response data.
    #     This value can safely be set per-request on the session.
    #
    #   @option options [URI::HTTP,String] :http_proxy
    #     A proxy to send requests through.  Formatted like 'http://proxy.com:123'.
    #
    #   @option options [Float] :http_read_timeout (60)
    #     The default number of seconds to wait for response data.
    #     This value can safely be set per-request on the session.
    #
    #   @option options [Boolean] :http_wire_trace (false)
    #     When `true`,  HTTP debug output will be sent to the `:logger`.
    #
    #   @option options [Proc] :on_chunk_received
    #     When a Proc object is provided, it will be used as callback when each chunk
    #     of the response body is received. It provides three arguments: the chunk,
    #     the number of bytes received, and the total number of
    #     bytes in the response (or nil if the server did not send a `content-length`).
    #
    #   @option options [Proc] :on_chunk_sent
    #     When a Proc object is provided, it will be used as callback when each chunk
    #     of the request body is sent. It provides three arguments: the chunk,
    #     the number of bytes read from the body, and the total number of
    #     bytes in the body.
    #
    #   @option options [Boolean] :raise_response_errors (true)
    #     When `true`, response errors are raised.
    #
    #   @option options [String] :ssl_ca_bundle
    #     Full path to the SSL certificate authority bundle file that should be used when
    #     verifying peer certificates.  If you do not pass `:ssl_ca_bundle` or
    #     `:ssl_ca_directory` the the system default will be used if available.
    #
    #   @option options [String] :ssl_ca_directory
    #     Full path of the directory that contains the unbundled SSL certificate
    #     authority files for verifying peer certificates.  If you do
    #     not pass `:ssl_ca_bundle` or `:ssl_ca_directory` the the system
    #     default will be used if available.
    #
    #   @option options [String] :ssl_ca_store
    #     Sets the X509::Store to verify peer certificate.
    #
    #   @option options [OpenSSL::X509::Certificate] :ssl_cert
    #     Sets a client certificate when creating http connections.
    #
    #   @option options [OpenSSL::PKey] :ssl_key
    #     Sets a client key when creating http connections.
    #
    #   @option options [Float] :ssl_timeout
    #     Sets the SSL timeout in seconds
    #
    #   @option options [Boolean] :ssl_verify_peer (true)
    #     When `true`, SSL peer certificates are verified when establishing a connection.
    #
    def initialize(*args)
      super
    end

    # @!group API Operations

    # Add locations that can host stream sessions. You configure locations
    # and their corresponding capacity for each stream group. Creating a
    # stream group in a location that's nearest to your end users can help
    # minimize latency and improve quality.
    #
    # This operation provisions stream capacity at the specified locations.
    # By default, all locations have 1 or 2 capacity, depending on the
    # stream class option: 2 for 'High' and 1 for 'Ultra' and
    # 'Win2022'. This operation also copies the content files of all
    # associated applications to an internal S3 bucket at each location.
    # This allows Amazon GameLift Streams to host performant stream
    # sessions.
    #
    # @option params [required, String] :identifier
    #   A stream group to add the specified locations to.
    #
    #   This value is an [Amazon Resource Name (ARN)][1] or ID that uniquely
    #   identifies the stream group resource. Example ARN:
    #   `arn:aws:gameliftstreams:us-west-2:111122223333:streamgroup/sg-1AB2C3De4`.
    #   Example ID: `sg-1AB2C3De4`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html
    #
    # @option params [required, Array<Types::LocationConfiguration>] :location_configurations
    #   A set of one or more locations and the streaming capacity for each
    #   location.
    #
    # @return [Types::AddStreamGroupLocationsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AddStreamGroupLocationsOutput#identifier #identifier} => String
    #   * {Types::AddStreamGroupLocationsOutput#locations #locations} => Array&lt;Types::LocationState&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_stream_group_locations({
    #     identifier: "Identifier", # required
    #     location_configurations: [ # required
    #       {
    #         always_on_capacity: 1,
    #         location_name: "LocationName", # required
    #         on_demand_capacity: 1,
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.identifier #=> String
    #   resp.locations #=> Array
    #   resp.locations[0].allocated_capacity #=> Integer
    #   resp.locations[0].always_on_capacity #=> Integer
    #   resp.locations[0].idle_capacity #=> Integer
    #   resp.locations[0].location_name #=> String
    #   resp.locations[0].on_demand_capacity #=> Integer
    #   resp.locations[0].requested_capacity #=> Integer
    #   resp.locations[0].status #=> String, one of "ACTIVATING", "ACTIVE", "ERROR", "REMOVING"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gameliftstreams-2018-05-10/AddStreamGroupLocations AWS API Documentation
    #
    # @overload add_stream_group_locations(params = {})
    # @param [Hash] params ({})
    def add_stream_group_locations(params = {}, options = {})
      req = build_request(:add_stream_group_locations, params)
      req.send_request(options)
    end

    # When you associate, or link, an application with a stream group, then
    # Amazon GameLift Streams can launch the application using the stream
    # group's allocated compute resources. The stream group must be in
    # `ACTIVE` status. You can reverse this action by using
    # [DisassociateApplications][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gameliftstreams/latest/apireference/API_DisassociateApplications.html
    #
    # @option params [required, Array<String>] :application_identifiers
    #   A set of applications to associate with the stream group.
    #
    #   This value is a set of either [Amazon Resource Names (ARN)][1] or IDs
    #   that uniquely identify application resources. Example ARN:
    #   `arn:aws:gameliftstreams:us-west-2:111122223333:application/a-9ZY8X7Wv6`.
    #   Example ID: `a-9ZY8X7Wv6`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html
    #
    # @option params [required, String] :identifier
    #   A stream group to associate to the applications.
    #
    #   This value is an [Amazon Resource Name (ARN)][1] or ID that uniquely
    #   identifies the stream group resource. Example ARN:
    #   `arn:aws:gameliftstreams:us-west-2:111122223333:streamgroup/sg-1AB2C3De4`.
    #   Example ID: `sg-1AB2C3De4`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html
    #
    # @return [Types::AssociateApplicationsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AssociateApplicationsOutput#application_arns #application_arns} => Array&lt;String&gt;
    #   * {Types::AssociateApplicationsOutput#arn #arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_applications({
    #     application_identifiers: ["Identifier"], # required
    #     identifier: "Identifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.application_arns #=> Array
    #   resp.application_arns[0] #=> String
    #   resp.arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gameliftstreams-2018-05-10/AssociateApplications AWS API Documentation
    #
    # @overload associate_applications(params = {})
    # @param [Hash] params ({})
    def associate_applications(params = {}, options = {})
      req = build_request(:associate_applications, params)
      req.send_request(options)
    end

    # Creates an application resource in Amazon GameLift Streams, which
    # specifies the application content you want to stream, such as a game
    # build or other software, and configures the settings to run it.
    #
    # Before you create an application, upload your application content
    # files to an Amazon Simple Storage Service (Amazon S3) bucket. For more
    # information, see **Getting Started** in the Amazon GameLift Streams
    # Developer Guide.
    #
    # Make sure that your files in the Amazon S3 bucket are the correct
    # version you want to use. If you change the files at a later time, you
    # will need to create a new Amazon GameLift Streams application.
    #
    # If the request is successful, Amazon GameLift Streams begins to create
    # an application and sets the status to `INITIALIZED`. When an
    # application reaches `READY` status, you can use the application to set
    # up stream groups and start streams. To track application status, call
    # [GetApplication][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gameliftstreams/latest/apireference/API_GetApplication.html
    #
    # @option params [String] :application_log_output_uri
    #   An Amazon S3 URI to a bucket where you would like Amazon GameLift
    #   Streams to save application logs. Required if you specify one or more
    #   `ApplicationLogPaths`.
    #
    #   <note markdown="1"> The log bucket must have permissions that give Amazon GameLift Streams
    #   access to write the log files. For more information, see [Application
    #   log bucket permission policy][1] in the *Amazon GameLift Streams
    #   Developer Guide*.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/gameliftstreams/latest/developerguide/applications.html#application-bucket-permission-template
    #
    # @option params [Array<String>] :application_log_paths
    #   Locations of log files that your content generates during a stream
    #   session. Enter path values that are relative to the
    #   `ApplicationSourceUri` location. You can specify up to 10 log paths.
    #   Amazon GameLift Streams uploads designated log files to the Amazon S3
    #   bucket that you specify in `ApplicationLogOutputUri` at the end of a
    #   stream session. To retrieve stored log files, call
    #   [GetStreamSession][1] and get the `LogFileLocationUri`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/gameliftstreams/latest/apireference/API_GetStreamSession.html
    #
    # @option params [required, String] :application_source_uri
    #   The location of the content that you want to stream. Enter an Amazon
    #   S3 URI to a bucket that contains your game or other application. The
    #   location can have a multi-level prefix structure, but it must include
    #   all the files needed to run the content. Amazon GameLift Streams
    #   copies everything under the specified location.
    #
    #   This value is immutable. To designate a different content location,
    #   create a new application.
    #
    #   <note markdown="1"> The Amazon S3 bucket and the Amazon GameLift Streams application must
    #   be in the same Amazon Web Services Region.
    #
    #    </note>
    #
    # @option params [String] :client_token
    #   A unique identifier that represents a client request. The request is
    #   idempotent, which ensures that an API request completes only once.
    #   When users send a request, Amazon GameLift Streams automatically
    #   populates this field.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :description
    #   A human-readable label for the application. You can update this value
    #   later.
    #
    # @option params [required, String] :executable_path
    #   The path and file name of the executable file that launches the
    #   content for streaming. Enter a path value that is relative to the
    #   location set in `ApplicationSourceUri`.
    #
    # @option params [required, Types::RuntimeEnvironment] :runtime_environment
    #   Configuration settings that identify the operating system for an
    #   application resource. This can also include a compatibility layer and
    #   other drivers.
    #
    #   A runtime environment can be one of the following:
    #
    #   * For Linux applications
    #
    #     * Ubuntu 22.04 LTS (`Type=UBUNTU, Version=22_04_LTS`)
    #
    #     ^
    #   * For Windows applications
    #
    #     * Microsoft Windows Server 2022 Base (`Type=WINDOWS, Version=2022`)
    #
    #     * Proton 8.0-5 (`Type=PROTON, Version=20241007`)
    #
    #     * Proton 8.0-2c (`Type=PROTON, Version=20230704`)
    #
    # @option params [Hash<String,String>] :tags
    #   A list of labels to assign to the new application resource. Tags are
    #   developer-defined key-value pairs. Tagging Amazon Web Services
    #   resources is useful for resource management, access management and
    #   cost allocation. See [ Tagging Amazon Web Services Resources][1] in
    #   the *Amazon Web Services General Reference*. You can use
    #   [TagResource][2] to add tags, [UntagResource][3] to remove tags, and
    #   [ListTagsForResource][4] to view tags on existing resources.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    #   [2]: https://docs.aws.amazon.com/gameliftstreams/latest/apireference/API_TagResource.html
    #   [3]: https://docs.aws.amazon.com/gameliftstreams/latest/apireference/API_UntagResource.html
    #   [4]: https://docs.aws.amazon.com/gameliftstreams/latest/apireference/API_ListTagsForResource.html
    #
    # @return [Types::CreateApplicationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateApplicationOutput#application_log_output_uri #application_log_output_uri} => String
    #   * {Types::CreateApplicationOutput#application_log_paths #application_log_paths} => Array&lt;String&gt;
    #   * {Types::CreateApplicationOutput#application_source_uri #application_source_uri} => String
    #   * {Types::CreateApplicationOutput#arn #arn} => String
    #   * {Types::CreateApplicationOutput#associated_stream_groups #associated_stream_groups} => Array&lt;String&gt;
    #   * {Types::CreateApplicationOutput#created_at #created_at} => Time
    #   * {Types::CreateApplicationOutput#description #description} => String
    #   * {Types::CreateApplicationOutput#executable_path #executable_path} => String
    #   * {Types::CreateApplicationOutput#id #id} => String
    #   * {Types::CreateApplicationOutput#last_updated_at #last_updated_at} => Time
    #   * {Types::CreateApplicationOutput#replication_statuses #replication_statuses} => Array&lt;Types::ReplicationStatus&gt;
    #   * {Types::CreateApplicationOutput#runtime_environment #runtime_environment} => Types::RuntimeEnvironment
    #   * {Types::CreateApplicationOutput#status #status} => String
    #   * {Types::CreateApplicationOutput#status_reason #status_reason} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_application({
    #     application_log_output_uri: "ApplicationLogOutputUri",
    #     application_log_paths: ["FilePath"],
    #     application_source_uri: "ApplicationSourceUri", # required
    #     client_token: "ClientToken",
    #     description: "Description", # required
    #     executable_path: "ExecutablePath", # required
    #     runtime_environment: { # required
    #       type: "PROTON", # required, accepts PROTON, WINDOWS, UBUNTU
    #       version: "RuntimeEnvironmentVersion", # required
    #     },
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.application_log_output_uri #=> String
    #   resp.application_log_paths #=> Array
    #   resp.application_log_paths[0] #=> String
    #   resp.application_source_uri #=> String
    #   resp.arn #=> String
    #   resp.associated_stream_groups #=> Array
    #   resp.associated_stream_groups[0] #=> String
    #   resp.created_at #=> Time
    #   resp.description #=> String
    #   resp.executable_path #=> String
    #   resp.id #=> String
    #   resp.last_updated_at #=> Time
    #   resp.replication_statuses #=> Array
    #   resp.replication_statuses[0].location #=> String
    #   resp.replication_statuses[0].status #=> String, one of "REPLICATING", "COMPLETED"
    #   resp.runtime_environment.type #=> String, one of "PROTON", "WINDOWS", "UBUNTU"
    #   resp.runtime_environment.version #=> String
    #   resp.status #=> String, one of "INITIALIZED", "PROCESSING", "READY", "DELETING", "ERROR"
    #   resp.status_reason #=> String, one of "internalError", "accessDenied"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gameliftstreams-2018-05-10/CreateApplication AWS API Documentation
    #
    # @overload create_application(params = {})
    # @param [Hash] params ({})
    def create_application(params = {}, options = {})
      req = build_request(:create_application, params)
      req.send_request(options)
    end

    # Manage how Amazon GameLift Streams streams your applications by using
    # a stream group. A stream group is a collection of resources that
    # Amazon GameLift Streams uses to stream your application to end-users.
    # When you create a stream group, you specify an application to stream
    # by default and the type of hardware to use, such as the graphical
    # processing unit (GPU). You can also link additional applications,
    # which allows you to stream those applications using this stream group.
    # Depending on your expected users, you also scale the number of
    # concurrent streams you want to support at one time, and in what
    # locations.
    #
    # Stream capacity represents the number of concurrent streams that can
    # be active at a time. You set stream capacity per location, per stream
    # group. There are two types of capacity, always-on and on-demand:
    #
    # * **Always-on**: The streaming capacity that is allocated and ready to
    #   handle stream requests without delay. You pay for this capacity
    #   whether it's in use or not. Best for quickest time from streaming
    #   request to streaming session.
    #
    # * **On-demand**: The streaming capacity that Amazon GameLift Streams
    #   can allocate in response to stream requests, and then de-allocate
    #   when the session has terminated. This offers a cost control measure
    #   at the expense of a greater startup time (typically under 5
    #   minutes).
    #
    # To adjust the capacity of any `ACTIVE` stream group, call
    # [UpdateStreamGroup][1].
    #
    # If the request is successful, Amazon GameLift Streams begins creating
    # the stream group. Amazon GameLift Streams assigns a unique ID to the
    # stream group resource and sets the status to `ACTIVATING`. When the
    # stream group reaches `ACTIVE` status, you can start stream sessions by
    # using [StartStreamSession][2]. To check the stream group's status,
    # call [GetStreamGroup][3].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gameliftstreams/latest/apireference/API_UpdateStreamGroup.html
    # [2]: https://docs.aws.amazon.com/gameliftstreams/latest/apireference/API_StartStreamSession.html
    # [3]: https://docs.aws.amazon.com/gameliftstreams/latest/apireference/API_GetStreamGroup.html
    #
    # @option params [String] :client_token
    #   A unique identifier that represents a client request. The request is
    #   idempotent, which ensures that an API request completes only once.
    #   When users send a request, Amazon GameLift Streams automatically
    #   populates this field.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :default_application_identifier
    #   The unique identifier of the Amazon GameLift Streams application that
    #   you want to associate to a stream group as the default application.
    #   The application must be in `READY` status. By setting the default
    #   application identifier, you will optimize startup performance of this
    #   application in your stream group. Once set, this application cannot be
    #   disassociated from the stream group, unlike applications that are
    #   associated using AssociateApplications. If not set when creating a
    #   stream group, you will need to call AssociateApplications later,
    #   before you can start streaming.
    #
    #   This value is an [Amazon Resource Name (ARN)][1] or ID that uniquely
    #   identifies the application resource. Example ARN:
    #   `arn:aws:gameliftstreams:us-west-2:111122223333:application/a-9ZY8X7Wv6`.
    #   Example ID: `a-9ZY8X7Wv6`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html
    #
    # @option params [required, String] :description
    #   A descriptive label for the stream group.
    #
    # @option params [Array<Types::LocationConfiguration>] :location_configurations
    #   A set of one or more locations and the streaming capacity for each
    #   location.
    #
    # @option params [required, String] :stream_class
    #   The target stream quality for sessions that are hosted in this stream
    #   group. Set a stream class that is appropriate to the type of content
    #   that you're streaming. Stream class determines the type of computing
    #   resources Amazon GameLift Streams uses and impacts the cost of
    #   streaming. The following options are available:
    #
    #   A stream class can be one of the following:
    #
    #   * <b> <code>gen5n_win2022</code> (NVIDIA, ultra)</b> Supports
    #     applications with extremely high 3D scene complexity. Runs
    #     applications on Microsoft Windows Server 2022 Base and supports
    #     DirectX 12. Compatible with Unreal Engine versions up through 5.4,
    #     32 and 64-bit applications, and anti-cheat technology. Uses NVIDIA
    #     A10G Tensor GPU.
    #
    #     * Reference resolution: 1080p
    #
    #     * Reference frame rate: 60 fps
    #
    #     * Workload specifications: 8 vCPUs, 32 GB RAM, 24 GB VRAM
    #
    #     * Tenancy: Supports 1 concurrent stream session
    #   * <b> <code>gen5n_high</code> (NVIDIA, high)</b> Supports applications
    #     with moderate to high 3D scene complexity. Uses NVIDIA A10G Tensor
    #     GPU.
    #
    #     * Reference resolution: 1080p
    #
    #     * Reference frame rate: 60 fps
    #
    #     * Workload specifications: 4 vCPUs, 16 GB RAM, 12 GB VRAM
    #
    #     * Tenancy: Supports up to 2 concurrent stream sessions
    #   * <b> <code>gen5n_ultra</code> (NVIDIA, ultra)</b> Supports
    #     applications with extremely high 3D scene complexity. Uses dedicated
    #     NVIDIA A10G Tensor GPU.
    #
    #     * Reference resolution: 1080p
    #
    #     * Reference frame rate: 60 fps
    #
    #     * Workload specifications: 8 vCPUs, 32 GB RAM, 24 GB VRAM
    #
    #     * Tenancy: Supports 1 concurrent stream session
    #   * <b> <code>gen4n_win2022</code> (NVIDIA, ultra)</b> Supports
    #     applications with extremely high 3D scene complexity. Runs
    #     applications on Microsoft Windows Server 2022 Base and supports
    #     DirectX 12. Compatible with Unreal Engine versions up through 5.4,
    #     32 and 64-bit applications, and anti-cheat technology. Uses NVIDIA
    #     T4 Tensor GPU.
    #
    #     * Reference resolution: 1080p
    #
    #     * Reference frame rate: 60 fps
    #
    #     * Workload specifications: 8 vCPUs, 32 GB RAM, 16 GB VRAM
    #
    #     * Tenancy: Supports 1 concurrent stream session
    #   * <b> <code>gen4n_high</code> (NVIDIA, high)</b> Supports applications
    #     with moderate to high 3D scene complexity. Uses NVIDIA T4 Tensor
    #     GPU.
    #
    #     * Reference resolution: 1080p
    #
    #     * Reference frame rate: 60 fps
    #
    #     * Workload specifications: 4 vCPUs, 16 GB RAM, 8 GB VRAM
    #
    #     * Tenancy: Supports up to 2 concurrent stream sessions
    #   * <b> <code>gen4n_ultra</code> (NVIDIA, ultra)</b> Supports
    #     applications with high 3D scene complexity. Uses dedicated NVIDIA T4
    #     Tensor GPU.
    #
    #     * Reference resolution: 1080p
    #
    #     * Reference frame rate: 60 fps
    #
    #     * Workload specifications: 8 vCPUs, 32 GB RAM, 16 GB VRAM
    #
    #     * Tenancy: Supports 1 concurrent stream session
    #
    # @option params [Hash<String,String>] :tags
    #   A list of labels to assign to the new stream group resource. Tags are
    #   developer-defined key-value pairs. Tagging Amazon Web Services
    #   resources is useful for resource management, access management and
    #   cost allocation. See [ Tagging Amazon Web Services Resources][1] in
    #   the *Amazon Web Services General Reference*. You can use
    #   [TagResource][2] to add tags, [UntagResource][3] to remove tags, and
    #   [ListTagsForResource][4] to view tags on existing resources.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    #   [2]: https://docs.aws.amazon.com/gameliftstreams/latest/apireference/API_TagResource.html
    #   [3]: https://docs.aws.amazon.com/gameliftstreams/latest/apireference/API_UntagResource.html
    #   [4]: https://docs.aws.amazon.com/gameliftstreams/latest/apireference/API_ListTagsForResource.html
    #
    # @return [Types::CreateStreamGroupOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateStreamGroupOutput#arn #arn} => String
    #   * {Types::CreateStreamGroupOutput#associated_applications #associated_applications} => Array&lt;String&gt;
    #   * {Types::CreateStreamGroupOutput#created_at #created_at} => Time
    #   * {Types::CreateStreamGroupOutput#default_application #default_application} => Types::DefaultApplication
    #   * {Types::CreateStreamGroupOutput#description #description} => String
    #   * {Types::CreateStreamGroupOutput#id #id} => String
    #   * {Types::CreateStreamGroupOutput#last_updated_at #last_updated_at} => Time
    #   * {Types::CreateStreamGroupOutput#location_states #location_states} => Array&lt;Types::LocationState&gt;
    #   * {Types::CreateStreamGroupOutput#status #status} => String
    #   * {Types::CreateStreamGroupOutput#status_reason #status_reason} => String
    #   * {Types::CreateStreamGroupOutput#stream_class #stream_class} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_stream_group({
    #     client_token: "ClientToken",
    #     default_application_identifier: "Identifier",
    #     description: "Description", # required
    #     location_configurations: [
    #       {
    #         always_on_capacity: 1,
    #         location_name: "LocationName", # required
    #         on_demand_capacity: 1,
    #       },
    #     ],
    #     stream_class: "gen4n_high", # required, accepts gen4n_high, gen4n_ultra, gen4n_win2022, gen5n_high, gen5n_ultra, gen5n_win2022
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.associated_applications #=> Array
    #   resp.associated_applications[0] #=> String
    #   resp.created_at #=> Time
    #   resp.default_application.arn #=> String
    #   resp.default_application.id #=> String
    #   resp.description #=> String
    #   resp.id #=> String
    #   resp.last_updated_at #=> Time
    #   resp.location_states #=> Array
    #   resp.location_states[0].allocated_capacity #=> Integer
    #   resp.location_states[0].always_on_capacity #=> Integer
    #   resp.location_states[0].idle_capacity #=> Integer
    #   resp.location_states[0].location_name #=> String
    #   resp.location_states[0].on_demand_capacity #=> Integer
    #   resp.location_states[0].requested_capacity #=> Integer
    #   resp.location_states[0].status #=> String, one of "ACTIVATING", "ACTIVE", "ERROR", "REMOVING"
    #   resp.status #=> String, one of "ACTIVATING", "UPDATING_LOCATIONS", "ACTIVE", "ACTIVE_WITH_ERRORS", "ERROR", "DELETING"
    #   resp.status_reason #=> String, one of "internalError", "noAvailableInstances"
    #   resp.stream_class #=> String, one of "gen4n_high", "gen4n_ultra", "gen4n_win2022", "gen5n_high", "gen5n_ultra", "gen5n_win2022"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gameliftstreams-2018-05-10/CreateStreamGroup AWS API Documentation
    #
    # @overload create_stream_group(params = {})
    # @param [Hash] params ({})
    def create_stream_group(params = {}, options = {})
      req = build_request(:create_stream_group, params)
      req.send_request(options)
    end

    # Allows clients to reconnect to a recently disconnected stream session
    # without losing any data from the last session.
    #
    # A client can reconnect to a stream session that's in
    # `PENDING_CLIENT_RECONNECTION` or `ACTIVE` status. In the stream
    # session life cycle, when the client disconnects from the stream
    # session, the stream session transitions from `CONNECTED` to
    # `PENDING_CLIENT_RECONNECTION` status. When a client requests to
    # reconnect by calling `CreateStreamSessionConnection`, the stream
    # session transitions to `RECONNECTING` status. When the reconnection is
    # successful, the stream session transitions to `ACTIVE` status. After a
    # stream session is disconnected for longer than
    # `ConnectionTimeoutSeconds`, the stream session transitions to the
    # `TERMINATED` status.
    #
    # To connect to an existing stream session, specify the stream group ID
    # and stream session ID that you want to reconnect to, as well as the
    # signal request settings to use with the stream.
    #
    # `ConnectionTimeoutSeconds` defines the amount of time after the stream
    # session disconnects that a reconnection is allowed. If a client is
    # disconnected from the stream for longer than
    # `ConnectionTimeoutSeconds`, the stream session ends.
    #
    # @option params [String] :client_token
    #   A unique identifier that represents a client request. The request is
    #   idempotent, which ensures that an API request completes only once.
    #   When users send a request, Amazon GameLift Streams automatically
    #   populates this field.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :identifier
    #   [Amazon Resource Name (ARN)][1] or ID that uniquely identifies the
    #   stream group resource. Example ARN:
    #   `arn:aws:gameliftstreams:us-west-2:111122223333:streamgroup/sg-1AB2C3De4`.
    #   Example ID: `sg-1AB2C3De4`.
    #
    #   The stream group that you want to run this stream session with. The
    #   stream group must be in `ACTIVE` status and have idle stream capacity.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html
    #
    # @option params [required, String] :signal_request
    #   A WebRTC ICE offer string to use when initializing a WebRTC
    #   connection. The offer is a very long JSON string. Provide the string
    #   as a text value in quotes. The offer must be newly generated, not the
    #   same offer provided to `StartStreamSession`.
    #
    # @option params [required, String] :stream_session_identifier
    #   [Amazon Resource Name (ARN)][1] or ID that uniquely identifies the
    #   stream session resource. Example ARN:
    #   `arn:aws:gameliftstreams:us-west-2:111122223333:streamsession/sg-1AB2C3De4/ABC123def4567`.
    #   Example ID: `ABC123def4567`.
    #
    #   The stream session must be in `PENDING_CLIENT_RECONNECTION` or
    #   `ACTIVE` status.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html
    #
    # @return [Types::CreateStreamSessionConnectionOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateStreamSessionConnectionOutput#signal_response #signal_response} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_stream_session_connection({
    #     client_token: "ClientToken",
    #     identifier: "Identifier", # required
    #     signal_request: "SignalRequest", # required
    #     stream_session_identifier: "Identifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.signal_response #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gameliftstreams-2018-05-10/CreateStreamSessionConnection AWS API Documentation
    #
    # @overload create_stream_session_connection(params = {})
    # @param [Hash] params ({})
    def create_stream_session_connection(params = {}, options = {})
      req = build_request(:create_stream_session_connection, params)
      req.send_request(options)
    end

    # Permanently deletes an Amazon GameLift Streams application resource.
    # This also deletes the application content files stored with Amazon
    # GameLift Streams. However, this does not delete the original files
    # that you uploaded to your Amazon S3 bucket; you can delete these any
    # time after Amazon GameLift Streams creates an application, which is
    # the only time Amazon GameLift Streams accesses your Amazon S3 bucket.
    #
    # You can only delete an application that meets the following
    # conditions:
    #
    # * The application is in `READY` or `ERROR` status. You cannot delete
    #   an application that's in `PROCESSING` or `INITIALIZED` status.
    #
    # * The application is not the default application of any stream groups.
    #   You must first delete the stream group by using
    #   [DeleteStreamGroup][1].
    #
    # * The application is not linked to any stream groups. You must first
    #   unlink the stream group by using [DisassociateApplications][2].
    #
    # * An application is not streaming in any ongoing stream session. You
    #   must wait until the client ends the stream session or call
    #   [TerminateStreamSession][3] to end the stream.
    #
    # If any active stream groups exist for this application, this request
    # returns a `ValidationException`.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gameliftstreams/latest/apireference/API_DeleteStreamGroup.html
    # [2]: https://docs.aws.amazon.com/gameliftstreams/latest/apireference/API_DisassociateApplications.html
    # [3]: https://docs.aws.amazon.com/gameliftstreams/latest/apireference/API_TerminateStreamSession.html
    #
    # @option params [required, String] :identifier
    #   An [Amazon Resource Name (ARN)][1] or ID that uniquely identifies the
    #   application resource. Example ARN:
    #   `arn:aws:gameliftstreams:us-west-2:111122223333:application/a-9ZY8X7Wv6`.
    #   Example ID: `a-9ZY8X7Wv6`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_application({
    #     identifier: "Identifier", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gameliftstreams-2018-05-10/DeleteApplication AWS API Documentation
    #
    # @overload delete_application(params = {})
    # @param [Hash] params ({})
    def delete_application(params = {}, options = {})
      req = build_request(:delete_application, params)
      req.send_request(options)
    end

    # Permanently deletes all compute resources and information related to a
    # stream group. To delete a stream group, specify the unique stream
    # group identifier. During the deletion process, the stream group's
    # status is `DELETING`. This operation stops streams in progress and
    # prevents new streams from starting. As a best practice, before
    # deleting the stream group, call [ListStreamSessions][1] to check for
    # streams in progress and take action to stop them. When you delete a
    # stream group, any application associations referring to that stream
    # group are automatically removed.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gameliftstreams/latest/apireference/API_ListStreamSessions.html
    #
    # @option params [required, String] :identifier
    #   An [Amazon Resource Name (ARN)][1] or ID that uniquely identifies the
    #   stream group resource. Example ARN:
    #   `arn:aws:gameliftstreams:us-west-2:111122223333:streamgroup/sg-1AB2C3De4`.
    #   Example ID: `sg-1AB2C3De4`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_stream_group({
    #     identifier: "Identifier", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gameliftstreams-2018-05-10/DeleteStreamGroup AWS API Documentation
    #
    # @overload delete_stream_group(params = {})
    # @param [Hash] params ({})
    def delete_stream_group(params = {}, options = {})
      req = build_request(:delete_stream_group, params)
      req.send_request(options)
    end

    # When you disassociate, or unlink, an application from a stream group,
    # you can no longer stream this application by using that stream
    # group's allocated compute resources. Any streams in process will
    # continue until they terminate, which helps avoid interrupting an
    # end-user's stream. Amazon GameLift Streams will not initiate new
    # streams using this stream group. The disassociate action does not
    # affect the stream capacity of a stream group.
    #
    # You can only disassociate an application if it's not a default
    # application of the stream group. Check `DefaultApplicationIdentifier`
    # by calling [GetStreamGroup][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gameliftstreams/latest/apireference/API_GetStreamGroup.html
    #
    # @option params [required, Array<String>] :application_identifiers
    #   A set of applications that you want to disassociate from the stream
    #   group.
    #
    #   This value is a set of either [Amazon Resource Names (ARN)][1] or IDs
    #   that uniquely identify application resources. Example ARN:
    #   `arn:aws:gameliftstreams:us-west-2:111122223333:application/a-9ZY8X7Wv6`.
    #   Example ID: `a-9ZY8X7Wv6`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html
    #
    # @option params [required, String] :identifier
    #   A stream group to disassociate these applications from.
    #
    #   This value is an [Amazon Resource Name (ARN)][1] or ID that uniquely
    #   identifies the stream group resource. Example ARN:
    #   `arn:aws:gameliftstreams:us-west-2:111122223333:streamgroup/sg-1AB2C3De4`.
    #   Example ID: `sg-1AB2C3De4`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html
    #
    # @return [Types::DisassociateApplicationsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DisassociateApplicationsOutput#application_arns #application_arns} => Array&lt;String&gt;
    #   * {Types::DisassociateApplicationsOutput#arn #arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_applications({
    #     application_identifiers: ["Identifier"], # required
    #     identifier: "Identifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.application_arns #=> Array
    #   resp.application_arns[0] #=> String
    #   resp.arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gameliftstreams-2018-05-10/DisassociateApplications AWS API Documentation
    #
    # @overload disassociate_applications(params = {})
    # @param [Hash] params ({})
    def disassociate_applications(params = {}, options = {})
      req = build_request(:disassociate_applications, params)
      req.send_request(options)
    end

    # Export the files that your application modifies or generates in a
    # stream session, which can help you debug or verify your application.
    # When your application runs, it generates output files such as logs,
    # diagnostic information, crash dumps, save files, user data,
    # screenshots, and so on. The files can be defined by the engine or
    # frameworks that your application uses, or information that you've
    # programmed your application to output.
    #
    # You can only call this action on a stream session that is in progress,
    # specifically in one of the following statuses `ACTIVE`, `CONNECTED`,
    # `PENDING_CLIENT_RECONNECTION`, and `RECONNECTING`. You must provide an
    # Amazon Simple Storage Service (Amazon S3) bucket to store the files
    # in. When the session ends, Amazon GameLift Streams produces a
    # compressed folder that contains all of the files and directories that
    # were modified or created by the application during the stream session.
    # AWS uses your security credentials to authenticate and authorize
    # access to your Amazon S3 bucket.
    #
    # Amazon GameLift Streams collects the following generated and modified
    # files. Find them in the corresponding folders in the `.zip` archive.
    #
    # * `application/`: The folder where your application or game is stored.
    #
    # ^
    # ^
    #
    # * `profile/`: The user profile folder.
    #
    # * `temp/`: The system temp folder.
    #
    #
    #
    # To verify the status of the exported files, use GetStreamSession.
    #
    # To delete the files, delete the object in the S3 bucket.
    #
    # @option params [required, String] :identifier
    #   An [Amazon Resource Name (ARN)][1] or ID that uniquely identifies the
    #   stream group resource. Example ARN:
    #   `arn:aws:gameliftstreams:us-west-2:111122223333:streamgroup/sg-1AB2C3De4`.
    #   Example ID: `sg-1AB2C3De4`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html
    #
    # @option params [required, String] :output_uri
    #   The S3 bucket URI where Amazon GameLift Streams uploads the set of
    #   compressed exported files for this stream session. Amazon GameLift
    #   Streams generates a ZIP file name based on the stream session
    #   metadata. Alternatively, you can provide a custom file name with a
    #   `.zip` file extension.
    #
    #   Example 1: If you provide an S3 URI called
    #   `s3://amzn-s3-demo-destination-bucket/MyGame_Session1.zip`, then
    #   Amazon GameLift Streams will save the files at that location.
    #
    #   Example 2: If you provide an S3 URI called
    #   `s3://amzn-s3-demo-destination-bucket/MyGameSessions_ExportedFiles/`,
    #   then Amazon GameLift Streams will save the files at
    #   `s3://amzn-s3-demo-destination-bucket/MyGameSessions_ExportedFiles/YYYYMMDD-HHMMSS-appId-sg-Id-sessionId.zip`
    #   or another similar name.
    #
    # @option params [required, String] :stream_session_identifier
    #   An [Amazon Resource Name (ARN)][1] or ID that uniquely identifies the
    #   stream session resource. Example ARN:
    #   `arn:aws:gameliftstreams:us-west-2:111122223333:streamsession/sg-1AB2C3De4/ABC123def4567`.
    #   Example ID: `ABC123def4567`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.export_stream_session_files({
    #     identifier: "Identifier", # required
    #     output_uri: "OutputUri", # required
    #     stream_session_identifier: "Identifier", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gameliftstreams-2018-05-10/ExportStreamSessionFiles AWS API Documentation
    #
    # @overload export_stream_session_files(params = {})
    # @param [Hash] params ({})
    def export_stream_session_files(params = {}, options = {})
      req = build_request(:export_stream_session_files, params)
      req.send_request(options)
    end

    # Retrieves properties for an Amazon GameLift Streams application
    # resource. Specify the ID of the application that you want to retrieve.
    # If the operation is successful, it returns properties for the
    # requested application.
    #
    # @option params [required, String] :identifier
    #   An [Amazon Resource Name (ARN)][1] or ID that uniquely identifies the
    #   application resource. Example ARN:
    #   `arn:aws:gameliftstreams:us-west-2:111122223333:application/a-9ZY8X7Wv6`.
    #   Example ID: `a-9ZY8X7Wv6`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html
    #
    # @return [Types::GetApplicationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetApplicationOutput#application_log_output_uri #application_log_output_uri} => String
    #   * {Types::GetApplicationOutput#application_log_paths #application_log_paths} => Array&lt;String&gt;
    #   * {Types::GetApplicationOutput#application_source_uri #application_source_uri} => String
    #   * {Types::GetApplicationOutput#arn #arn} => String
    #   * {Types::GetApplicationOutput#associated_stream_groups #associated_stream_groups} => Array&lt;String&gt;
    #   * {Types::GetApplicationOutput#created_at #created_at} => Time
    #   * {Types::GetApplicationOutput#description #description} => String
    #   * {Types::GetApplicationOutput#executable_path #executable_path} => String
    #   * {Types::GetApplicationOutput#id #id} => String
    #   * {Types::GetApplicationOutput#last_updated_at #last_updated_at} => Time
    #   * {Types::GetApplicationOutput#replication_statuses #replication_statuses} => Array&lt;Types::ReplicationStatus&gt;
    #   * {Types::GetApplicationOutput#runtime_environment #runtime_environment} => Types::RuntimeEnvironment
    #   * {Types::GetApplicationOutput#status #status} => String
    #   * {Types::GetApplicationOutput#status_reason #status_reason} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_application({
    #     identifier: "Identifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.application_log_output_uri #=> String
    #   resp.application_log_paths #=> Array
    #   resp.application_log_paths[0] #=> String
    #   resp.application_source_uri #=> String
    #   resp.arn #=> String
    #   resp.associated_stream_groups #=> Array
    #   resp.associated_stream_groups[0] #=> String
    #   resp.created_at #=> Time
    #   resp.description #=> String
    #   resp.executable_path #=> String
    #   resp.id #=> String
    #   resp.last_updated_at #=> Time
    #   resp.replication_statuses #=> Array
    #   resp.replication_statuses[0].location #=> String
    #   resp.replication_statuses[0].status #=> String, one of "REPLICATING", "COMPLETED"
    #   resp.runtime_environment.type #=> String, one of "PROTON", "WINDOWS", "UBUNTU"
    #   resp.runtime_environment.version #=> String
    #   resp.status #=> String, one of "INITIALIZED", "PROCESSING", "READY", "DELETING", "ERROR"
    #   resp.status_reason #=> String, one of "internalError", "accessDenied"
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * application_deleted
    #   * application_ready
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gameliftstreams-2018-05-10/GetApplication AWS API Documentation
    #
    # @overload get_application(params = {})
    # @param [Hash] params ({})
    def get_application(params = {}, options = {})
      req = build_request(:get_application, params)
      req.send_request(options)
    end

    # Retrieves properties for a Amazon GameLift Streams stream group
    # resource. Specify the ID of the stream group that you want to
    # retrieve. If the operation is successful, it returns properties for
    # the requested stream group.
    #
    # @option params [required, String] :identifier
    #   An [Amazon Resource Name (ARN)][1] or ID that uniquely identifies the
    #   stream group resource. Example ARN:
    #   `arn:aws:gameliftstreams:us-west-2:111122223333:streamgroup/sg-1AB2C3De4`.
    #   Example ID: `sg-1AB2C3De4`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html
    #
    # @return [Types::GetStreamGroupOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetStreamGroupOutput#arn #arn} => String
    #   * {Types::GetStreamGroupOutput#associated_applications #associated_applications} => Array&lt;String&gt;
    #   * {Types::GetStreamGroupOutput#created_at #created_at} => Time
    #   * {Types::GetStreamGroupOutput#default_application #default_application} => Types::DefaultApplication
    #   * {Types::GetStreamGroupOutput#description #description} => String
    #   * {Types::GetStreamGroupOutput#id #id} => String
    #   * {Types::GetStreamGroupOutput#last_updated_at #last_updated_at} => Time
    #   * {Types::GetStreamGroupOutput#location_states #location_states} => Array&lt;Types::LocationState&gt;
    #   * {Types::GetStreamGroupOutput#status #status} => String
    #   * {Types::GetStreamGroupOutput#status_reason #status_reason} => String
    #   * {Types::GetStreamGroupOutput#stream_class #stream_class} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_stream_group({
    #     identifier: "Identifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.associated_applications #=> Array
    #   resp.associated_applications[0] #=> String
    #   resp.created_at #=> Time
    #   resp.default_application.arn #=> String
    #   resp.default_application.id #=> String
    #   resp.description #=> String
    #   resp.id #=> String
    #   resp.last_updated_at #=> Time
    #   resp.location_states #=> Array
    #   resp.location_states[0].allocated_capacity #=> Integer
    #   resp.location_states[0].always_on_capacity #=> Integer
    #   resp.location_states[0].idle_capacity #=> Integer
    #   resp.location_states[0].location_name #=> String
    #   resp.location_states[0].on_demand_capacity #=> Integer
    #   resp.location_states[0].requested_capacity #=> Integer
    #   resp.location_states[0].status #=> String, one of "ACTIVATING", "ACTIVE", "ERROR", "REMOVING"
    #   resp.status #=> String, one of "ACTIVATING", "UPDATING_LOCATIONS", "ACTIVE", "ACTIVE_WITH_ERRORS", "ERROR", "DELETING"
    #   resp.status_reason #=> String, one of "internalError", "noAvailableInstances"
    #   resp.stream_class #=> String, one of "gen4n_high", "gen4n_ultra", "gen4n_win2022", "gen5n_high", "gen5n_ultra", "gen5n_win2022"
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * stream_group_active
    #   * stream_group_deleted
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gameliftstreams-2018-05-10/GetStreamGroup AWS API Documentation
    #
    # @overload get_stream_group(params = {})
    # @param [Hash] params ({})
    def get_stream_group(params = {}, options = {})
      req = build_request(:get_stream_group, params)
      req.send_request(options)
    end

    # Retrieves properties for a Amazon GameLift Streams stream session
    # resource. Specify the Amazon Resource Name (ARN) of the stream session
    # that you want to retrieve and its stream group ARN. If the operation
    # is successful, it returns properties for the requested resource.
    #
    # @option params [required, String] :identifier
    #   The stream group that runs this stream session.
    #
    #   This value is an [Amazon Resource Name (ARN)][1] or ID that uniquely
    #   identifies the stream group resource. Example ARN:
    #   `arn:aws:gameliftstreams:us-west-2:111122223333:streamgroup/sg-1AB2C3De4`.
    #   Example ID: `sg-1AB2C3De4`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html
    #
    # @option params [required, String] :stream_session_identifier
    #   An [Amazon Resource Name (ARN)][1] or ID that uniquely identifies the
    #   stream session resource. Example ARN:
    #   `arn:aws:gameliftstreams:us-west-2:111122223333:streamsession/sg-1AB2C3De4/ABC123def4567`.
    #   Example ID: `ABC123def4567`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html
    #
    # @return [Types::GetStreamSessionOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetStreamSessionOutput#additional_environment_variables #additional_environment_variables} => Hash&lt;String,String&gt;
    #   * {Types::GetStreamSessionOutput#additional_launch_args #additional_launch_args} => Array&lt;String&gt;
    #   * {Types::GetStreamSessionOutput#application_arn #application_arn} => String
    #   * {Types::GetStreamSessionOutput#arn #arn} => String
    #   * {Types::GetStreamSessionOutput#connection_timeout_seconds #connection_timeout_seconds} => Integer
    #   * {Types::GetStreamSessionOutput#created_at #created_at} => Time
    #   * {Types::GetStreamSessionOutput#description #description} => String
    #   * {Types::GetStreamSessionOutput#export_files_metadata #export_files_metadata} => Types::ExportFilesMetadata
    #   * {Types::GetStreamSessionOutput#last_updated_at #last_updated_at} => Time
    #   * {Types::GetStreamSessionOutput#location #location} => String
    #   * {Types::GetStreamSessionOutput#log_file_location_uri #log_file_location_uri} => String
    #   * {Types::GetStreamSessionOutput#protocol #protocol} => String
    #   * {Types::GetStreamSessionOutput#session_length_seconds #session_length_seconds} => Integer
    #   * {Types::GetStreamSessionOutput#signal_request #signal_request} => String
    #   * {Types::GetStreamSessionOutput#signal_response #signal_response} => String
    #   * {Types::GetStreamSessionOutput#status #status} => String
    #   * {Types::GetStreamSessionOutput#status_reason #status_reason} => String
    #   * {Types::GetStreamSessionOutput#stream_group_id #stream_group_id} => String
    #   * {Types::GetStreamSessionOutput#user_id #user_id} => String
    #   * {Types::GetStreamSessionOutput#web_sdk_protocol_url #web_sdk_protocol_url} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_stream_session({
    #     identifier: "Identifier", # required
    #     stream_session_identifier: "Identifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.additional_environment_variables #=> Hash
    #   resp.additional_environment_variables["EnvironmentVariablesKeyString"] #=> String
    #   resp.additional_launch_args #=> Array
    #   resp.additional_launch_args[0] #=> String
    #   resp.application_arn #=> String
    #   resp.arn #=> String
    #   resp.connection_timeout_seconds #=> Integer
    #   resp.created_at #=> Time
    #   resp.description #=> String
    #   resp.export_files_metadata.output_uri #=> String
    #   resp.export_files_metadata.status #=> String, one of "SUCCEEDED", "FAILED", "PENDING"
    #   resp.export_files_metadata.status_reason #=> String
    #   resp.last_updated_at #=> Time
    #   resp.location #=> String
    #   resp.log_file_location_uri #=> String
    #   resp.protocol #=> String, one of "WebRTC"
    #   resp.session_length_seconds #=> Integer
    #   resp.signal_request #=> String
    #   resp.signal_response #=> String
    #   resp.status #=> String, one of "ACTIVATING", "ACTIVE", "CONNECTED", "PENDING_CLIENT_RECONNECTION", "RECONNECTING", "TERMINATING", "TERMINATED", "ERROR"
    #   resp.status_reason #=> String, one of "internalError", "invalidSignalRequest", "placementTimeout", "applicationLogS3DestinationError"
    #   resp.stream_group_id #=> String
    #   resp.user_id #=> String
    #   resp.web_sdk_protocol_url #=> String
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * stream_session_active
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gameliftstreams-2018-05-10/GetStreamSession AWS API Documentation
    #
    # @overload get_stream_session(params = {})
    # @param [Hash] params ({})
    def get_stream_session(params = {}, options = {})
      req = build_request(:get_stream_session, params)
      req.send_request(options)
    end

    # Retrieves a list of all Amazon GameLift Streams applications that are
    # associated with the Amazon Web Services account in use. This operation
    # returns applications in all statuses, in no particular order. You can
    # paginate the results as needed.
    #
    # @option params [Integer] :max_results
    #   The number of results to return. Use this parameter with `NextToken`
    #   to return results in sequential pages. Default value is `25`.
    #
    # @option params [String] :next_token
    #   The token that marks the start of the next set of results. Use this
    #   token when you retrieve results as sequential pages. To get the first
    #   page of results, omit a token value. To get the remaining pages,
    #   provide the token returned with the previous result set.
    #
    # @return [Types::ListApplicationsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListApplicationsOutput#items #items} => Array&lt;Types::ApplicationSummary&gt;
    #   * {Types::ListApplicationsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_applications({
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].arn #=> String
    #   resp.items[0].created_at #=> Time
    #   resp.items[0].description #=> String
    #   resp.items[0].id #=> String
    #   resp.items[0].last_updated_at #=> Time
    #   resp.items[0].runtime_environment.type #=> String, one of "PROTON", "WINDOWS", "UBUNTU"
    #   resp.items[0].runtime_environment.version #=> String
    #   resp.items[0].status #=> String, one of "INITIALIZED", "PROCESSING", "READY", "DELETING", "ERROR"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gameliftstreams-2018-05-10/ListApplications AWS API Documentation
    #
    # @overload list_applications(params = {})
    # @param [Hash] params ({})
    def list_applications(params = {}, options = {})
      req = build_request(:list_applications, params)
      req.send_request(options)
    end

    # Retrieves a list of all Amazon GameLift Streams stream groups that are
    # associated with the Amazon Web Services account in use. This operation
    # returns stream groups in all statuses, in no particular order. You can
    # paginate the results as needed.
    #
    # @option params [Integer] :max_results
    #   The number of results to return. Use this parameter with `NextToken`
    #   to return results in sequential pages. Default value is `25`.
    #
    # @option params [String] :next_token
    #   A token that marks the start of the next set of results. Use this
    #   token when you retrieve results as sequential pages. To get the first
    #   page of results, omit a token value. To get the remaining pages,
    #   provide the token returned with the previous result set.
    #
    # @return [Types::ListStreamGroupsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListStreamGroupsOutput#items #items} => Array&lt;Types::StreamGroupSummary&gt;
    #   * {Types::ListStreamGroupsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_stream_groups({
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].arn #=> String
    #   resp.items[0].created_at #=> Time
    #   resp.items[0].default_application.arn #=> String
    #   resp.items[0].default_application.id #=> String
    #   resp.items[0].description #=> String
    #   resp.items[0].id #=> String
    #   resp.items[0].last_updated_at #=> Time
    #   resp.items[0].status #=> String, one of "ACTIVATING", "UPDATING_LOCATIONS", "ACTIVE", "ACTIVE_WITH_ERRORS", "ERROR", "DELETING"
    #   resp.items[0].stream_class #=> String, one of "gen4n_high", "gen4n_ultra", "gen4n_win2022", "gen5n_high", "gen5n_ultra", "gen5n_win2022"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gameliftstreams-2018-05-10/ListStreamGroups AWS API Documentation
    #
    # @overload list_stream_groups(params = {})
    # @param [Hash] params ({})
    def list_stream_groups(params = {}, options = {})
      req = build_request(:list_stream_groups, params)
      req.send_request(options)
    end

    # Retrieves a list of Amazon GameLift Streams stream sessions that a
    # stream group is hosting.
    #
    # To retrieve stream sessions, specify the stream group, and optionally
    # filter by stream session status. You can paginate the results as
    # needed.
    #
    # This operation returns the requested stream sessions in no particular
    # order.
    #
    # @option params [String] :export_files_status
    #   Filter by the exported files status. You can specify one status in
    #   each request to retrieve only sessions that currently have that
    #   exported files status.
    #
    #   Exported files can be in one of the following states:
    #
    #   * **SUCCEEDED**: The exported files are successfully stored in S3
    #     bucket.
    #
    #   * **FAILED**: The session ended but Amazon GameLift Streams couldn't
    #     collect and upload the to S3.
    #
    #   * **PENDING**: Either the stream session is still in progress, or
    #     uploading the exported files to the S3 bucket is in progress.
    #
    # @option params [required, String] :identifier
    #   The unique identifier of a Amazon GameLift Streams stream group to
    #   retrieve the stream session for. You can use either the stream group
    #   ID or the [Amazon Resource Name (ARN)][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html
    #
    # @option params [Integer] :max_results
    #   The number of results to return. Use this parameter with `NextToken`
    #   to return results in sequential pages. Default value is `25`.
    #
    # @option params [String] :next_token
    #   The token that marks the start of the next set of results. Use this
    #   token when you retrieve results as sequential pages. To get the first
    #   page of results, omit a token value. To get the remaining pages,
    #   provide the token returned with the previous result set.
    #
    # @option params [String] :status
    #   Filter by the stream session status. You can specify one status in
    #   each request to retrieve only sessions that are currently in that
    #   status.
    #
    # @return [Types::ListStreamSessionsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListStreamSessionsOutput#items #items} => Array&lt;Types::StreamSessionSummary&gt;
    #   * {Types::ListStreamSessionsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_stream_sessions({
    #     export_files_status: "SUCCEEDED", # accepts SUCCEEDED, FAILED, PENDING
    #     identifier: "Identifier", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #     status: "ACTIVATING", # accepts ACTIVATING, ACTIVE, CONNECTED, PENDING_CLIENT_RECONNECTION, RECONNECTING, TERMINATING, TERMINATED, ERROR
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].application_arn #=> String
    #   resp.items[0].arn #=> String
    #   resp.items[0].created_at #=> Time
    #   resp.items[0].export_files_metadata.output_uri #=> String
    #   resp.items[0].export_files_metadata.status #=> String, one of "SUCCEEDED", "FAILED", "PENDING"
    #   resp.items[0].export_files_metadata.status_reason #=> String
    #   resp.items[0].last_updated_at #=> Time
    #   resp.items[0].location #=> String
    #   resp.items[0].protocol #=> String, one of "WebRTC"
    #   resp.items[0].status #=> String, one of "ACTIVATING", "ACTIVE", "CONNECTED", "PENDING_CLIENT_RECONNECTION", "RECONNECTING", "TERMINATING", "TERMINATED", "ERROR"
    #   resp.items[0].user_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gameliftstreams-2018-05-10/ListStreamSessions AWS API Documentation
    #
    # @overload list_stream_sessions(params = {})
    # @param [Hash] params ({})
    def list_stream_sessions(params = {}, options = {})
      req = build_request(:list_stream_sessions, params)
      req.send_request(options)
    end

    # Retrieves a list of Amazon GameLift Streams stream sessions that this
    # user account has access to.
    #
    # In the returned list of stream sessions, the `ExportFilesMetadata`
    # property only shows the `Status` value. To get the `OutpurUri` and
    # `StatusReason` values, use [GetStreamSession][1].
    #
    # We don't recommend using this operation to regularly check stream
    # session statuses because it's costly. Instead, to check status
    # updates for a specific stream session, use [GetStreamSession][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gameliftstreams/latest/apireference/API_GetStreamSession.html
    #
    # @option params [String] :export_files_status
    #   Filter by the exported files status. You can specify one status in
    #   each request to retrieve only sessions that currently have that
    #   exported files status.
    #
    # @option params [Integer] :max_results
    #   The number of results to return. Use this parameter with `NextToken`
    #   to return results in sequential pages. Default value is `25`.
    #
    # @option params [String] :next_token
    #   The token that marks the start of the next set of results. Use this
    #   token when you retrieve results as sequential pages. To get the first
    #   page of results, omit a token value. To get the remaining pages,
    #   provide the token returned with the previous result set.
    #
    # @option params [String] :status
    #   Filter by the stream session status. You can specify one status in
    #   each request to retrieve only sessions that are currently in that
    #   status.
    #
    # @return [Types::ListStreamSessionsByAccountOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListStreamSessionsByAccountOutput#items #items} => Array&lt;Types::StreamSessionSummary&gt;
    #   * {Types::ListStreamSessionsByAccountOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_stream_sessions_by_account({
    #     export_files_status: "SUCCEEDED", # accepts SUCCEEDED, FAILED, PENDING
    #     max_results: 1,
    #     next_token: "NextToken",
    #     status: "ACTIVATING", # accepts ACTIVATING, ACTIVE, CONNECTED, PENDING_CLIENT_RECONNECTION, RECONNECTING, TERMINATING, TERMINATED, ERROR
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].application_arn #=> String
    #   resp.items[0].arn #=> String
    #   resp.items[0].created_at #=> Time
    #   resp.items[0].export_files_metadata.output_uri #=> String
    #   resp.items[0].export_files_metadata.status #=> String, one of "SUCCEEDED", "FAILED", "PENDING"
    #   resp.items[0].export_files_metadata.status_reason #=> String
    #   resp.items[0].last_updated_at #=> Time
    #   resp.items[0].location #=> String
    #   resp.items[0].protocol #=> String, one of "WebRTC"
    #   resp.items[0].status #=> String, one of "ACTIVATING", "ACTIVE", "CONNECTED", "PENDING_CLIENT_RECONNECTION", "RECONNECTING", "TERMINATING", "TERMINATED", "ERROR"
    #   resp.items[0].user_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gameliftstreams-2018-05-10/ListStreamSessionsByAccount AWS API Documentation
    #
    # @overload list_stream_sessions_by_account(params = {})
    # @param [Hash] params ({})
    def list_stream_sessions_by_account(params = {}, options = {})
      req = build_request(:list_stream_sessions_by_account, params)
      req.send_request(options)
    end

    # Retrieves all tags assigned to a Amazon GameLift Streams resource. To
    # list tags for a resource, specify the ARN value for the resource.
    #
    # **Learn more**
    #
    # [Tagging Amazon Web Services Resources][1] in the *Amazon Web Services
    # General Reference*
    #
    # [ Amazon Web Services Tagging Strategies][2]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    # [2]: http://aws.amazon.com/answers/account-management/aws-tagging-strategies/
    #
    # @option params [required, String] :resource_arn
    #   The [Amazon Resource Name (ARN)][1] that you want to retrieve tags
    #   for. To get an Amazon GameLift Streams resource ARN, call a List or
    #   Get operation for the resource.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gameliftstreams-2018-05-10/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Removes a set of remote locations from this stream group. Amazon
    # GameLift Streams works to release allocated compute resources in these
    # location. Thus, stream sessions can no longer start from these
    # locations by using this stream group. Amazon GameLift Streams also
    # deletes the content files of all associated applications that were in
    # Amazon GameLift Streams's internal S3 bucket at this location.
    #
    # You cannot remove the region where you initially created this stream
    # group, known as the primary location. However, you can set the stream
    # capacity to zero.
    #
    # @option params [required, String] :identifier
    #   A stream group to remove the specified locations from.
    #
    #   This value is an [Amazon Resource Name (ARN)][1] or ID that uniquely
    #   identifies the stream group resource. Example ARN:
    #   `arn:aws:gameliftstreams:us-west-2:111122223333:streamgroup/sg-1AB2C3De4`.
    #   Example ID: `sg-1AB2C3De4`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html
    #
    # @option params [required, Array<String>] :locations
    #   A set of locations to remove this stream group.
    #
    #   A set of location names. For example, `us-east-1`. For a complete list
    #   of locations that Amazon GameLift Streams supports, refer to [Regions,
    #   quotas, and limitations][1] in the *Amazon GameLift Streams Developer
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/gameliftstreams/latest/developerguide/regions-quotas.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_stream_group_locations({
    #     identifier: "Identifier", # required
    #     locations: ["String"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gameliftstreams-2018-05-10/RemoveStreamGroupLocations AWS API Documentation
    #
    # @overload remove_stream_group_locations(params = {})
    # @param [Hash] params ({})
    def remove_stream_group_locations(params = {}, options = {})
      req = build_request(:remove_stream_group_locations, params)
      req.send_request(options)
    end

    # This action initiates a new stream session and outputs connection
    # information that clients can use to access the stream. A stream
    # session refers to an instance of a stream that Amazon GameLift Streams
    # transmits from the server to the end-user. A stream session runs on a
    # compute resource that a stream group has allocated.
    #
    # To start a new stream session, specify a stream group and application
    # ID, along with the transport protocol and signal request settings to
    # use with the stream. You must have associated at least one application
    # to the stream group before starting a stream session, either when
    # creating the stream group, or by using [AssociateApplications][1].
    #
    # For stream groups that have multiple locations, provide a set of
    # locations ordered by priority using a `Locations` parameter. Amazon
    # GameLift Streams will start a single stream session in the next
    # available location. An application must be finished replicating in a
    # remote location before the remote location can host a stream.
    #
    # If the request is successful, Amazon GameLift Streams begins to
    # prepare the stream. Amazon GameLift Streams assigns an Amazon Resource
    # Name (ARN) value to the stream session resource and sets the status to
    # `ACTIVATING`. During the stream preparation process, Amazon GameLift
    # Streams queues the request and searches for available stream capacity
    # to run the stream. This results in one of the following:
    #
    # * Amazon GameLift Streams identifies an available compute resource to
    #   run the application content and start the stream. When the stream is
    #   ready, the stream session's status changes to `ACTIVE` and includes
    #   stream connection information. Provide the connection information to
    #   the requesting client to join the stream session.
    #
    # * Amazon GameLift Streams doesn't identify an available resource
    #   within a certain time, set by `ClientToken`. In this case, Amazon
    #   GameLift Streams stops processing the request, and the stream
    #   session object status changes to `ERROR` with status reason
    #   `placementTimeout`.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gameliftstreams/latest/apireference/API_AssociateApplications.html
    #
    # @option params [Hash<String,String>] :additional_environment_variables
    #   A set of options that you can use to control the stream session
    #   runtime environment, expressed as a set of key-value pairs. You can
    #   use this to configure the application or stream session details. You
    #   can also provide custom environment variables that Amazon GameLift
    #   Streams passes to your game client.
    #
    #   <note markdown="1"> If you want to debug your application with environment variables, we
    #   recommend that you do so in a local environment outside of Amazon
    #   GameLift Streams. For more information, refer to the Compatibility
    #   Guidance in the troubleshooting section of the Developer Guide.
    #
    #    </note>
    #
    #   `AdditionalEnvironmentVariables` and `AdditionalLaunchArgs` have
    #   similar purposes. `AdditionalEnvironmentVariables` passes data using
    #   environment variables; while `AdditionalLaunchArgs` passes data using
    #   command-line arguments.
    #
    # @option params [Array<String>] :additional_launch_args
    #   A list of CLI arguments that are sent to the streaming server when a
    #   stream session launches. You can use this to configure the application
    #   or stream session details. You can also provide custom arguments that
    #   Amazon GameLift Streams passes to your game client.
    #
    #   `AdditionalEnvironmentVariables` and `AdditionalLaunchArgs` have
    #   similar purposes. `AdditionalEnvironmentVariables` passes data using
    #   environment variables; while `AdditionalLaunchArgs` passes data using
    #   command-line arguments.
    #
    # @option params [required, String] :application_identifier
    #   An [Amazon Resource Name (ARN)][1] or ID that uniquely identifies the
    #   application resource. Example ARN:
    #   `arn:aws:gameliftstreams:us-west-2:111122223333:application/a-9ZY8X7Wv6`.
    #   Example ID: `a-9ZY8X7Wv6`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html
    #
    # @option params [String] :client_token
    #   A unique identifier that represents a client request. The request is
    #   idempotent, which ensures that an API request completes only once.
    #   When users send a request, Amazon GameLift Streams automatically
    #   populates this field.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Integer] :connection_timeout_seconds
    #   Length of time (in seconds) that Amazon GameLift Streams should wait
    #   for a client to connect to the stream session. This time span starts
    #   when the stream session reaches `ACTIVE` status. If no client connects
    #   before the timeout, Amazon GameLift Streams stops the stream session
    #   with status of `TERMINATED`. Default value is 120.
    #
    # @option params [String] :description
    #   A human-readable label for the stream session. You can update this
    #   value later.
    #
    # @option params [required, String] :identifier
    #   The stream group to run this stream session with.
    #
    #   This value is an [Amazon Resource Name (ARN)][1] or ID that uniquely
    #   identifies the stream group resource. Example ARN:
    #   `arn:aws:gameliftstreams:us-west-2:111122223333:streamgroup/sg-1AB2C3De4`.
    #   Example ID: `sg-1AB2C3De4`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html
    #
    # @option params [Array<String>] :locations
    #   A list of locations, in order of priority, where you want Amazon
    #   GameLift Streams to start a stream from. Amazon GameLift Streams
    #   selects the location with the next available capacity to start a
    #   single stream session in. If this value is empty, Amazon GameLift
    #   Streams attempts to start a stream session in the primary location.
    #
    #   This value is A set of location names. For example, `us-east-1`. For a
    #   complete list of locations that Amazon GameLift Streams supports,
    #   refer to [Regions, quotas, and limitations][1] in the *Amazon GameLift
    #   Streams Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/gameliftstreams/latest/developerguide/regions-quotas.html
    #
    # @option params [required, String] :protocol
    #   The data transport protocol to use for the stream session.
    #
    # @option params [Integer] :session_length_seconds
    #   The maximum length of time (in seconds) that Amazon GameLift Streams
    #   keeps the stream session open. At this point, Amazon GameLift Streams
    #   ends the stream session regardless of any existing client connections.
    #   Default value is 43200.
    #
    # @option params [required, String] :signal_request
    #   A WebRTC ICE offer string to use when initializing a WebRTC
    #   connection. Typically, the offer is a very long JSON string. Provide
    #   the string as a text value in quotes.
    #
    #   Amazon GameLift Streams also supports setting the field to
    #   "NO\_CLIENT\_CONNECTION". This will create a session without needing
    #   any browser request or Web SDK integration. The session starts up as
    #   usual and waits for a reconnection from a browser, which is
    #   accomplished using [CreateStreamSessionConnection][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/gameliftstreams/latest/apireference/API_CreateStreamSessionConnection.html
    #
    # @option params [String] :user_id
    #   An opaque, unique identifier for an end-user, defined by the
    #   developer.
    #
    # @return [Types::StartStreamSessionOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartStreamSessionOutput#additional_environment_variables #additional_environment_variables} => Hash&lt;String,String&gt;
    #   * {Types::StartStreamSessionOutput#additional_launch_args #additional_launch_args} => Array&lt;String&gt;
    #   * {Types::StartStreamSessionOutput#application_arn #application_arn} => String
    #   * {Types::StartStreamSessionOutput#arn #arn} => String
    #   * {Types::StartStreamSessionOutput#connection_timeout_seconds #connection_timeout_seconds} => Integer
    #   * {Types::StartStreamSessionOutput#created_at #created_at} => Time
    #   * {Types::StartStreamSessionOutput#description #description} => String
    #   * {Types::StartStreamSessionOutput#export_files_metadata #export_files_metadata} => Types::ExportFilesMetadata
    #   * {Types::StartStreamSessionOutput#last_updated_at #last_updated_at} => Time
    #   * {Types::StartStreamSessionOutput#location #location} => String
    #   * {Types::StartStreamSessionOutput#log_file_location_uri #log_file_location_uri} => String
    #   * {Types::StartStreamSessionOutput#protocol #protocol} => String
    #   * {Types::StartStreamSessionOutput#session_length_seconds #session_length_seconds} => Integer
    #   * {Types::StartStreamSessionOutput#signal_request #signal_request} => String
    #   * {Types::StartStreamSessionOutput#signal_response #signal_response} => String
    #   * {Types::StartStreamSessionOutput#status #status} => String
    #   * {Types::StartStreamSessionOutput#status_reason #status_reason} => String
    #   * {Types::StartStreamSessionOutput#stream_group_id #stream_group_id} => String
    #   * {Types::StartStreamSessionOutput#user_id #user_id} => String
    #   * {Types::StartStreamSessionOutput#web_sdk_protocol_url #web_sdk_protocol_url} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_stream_session({
    #     additional_environment_variables: {
    #       "EnvironmentVariablesKeyString" => "EnvironmentVariablesValueString",
    #     },
    #     additional_launch_args: ["String"],
    #     application_identifier: "Identifier", # required
    #     client_token: "ClientToken",
    #     connection_timeout_seconds: 1,
    #     description: "Description",
    #     identifier: "Identifier", # required
    #     locations: ["LocationName"],
    #     protocol: "WebRTC", # required, accepts WebRTC
    #     session_length_seconds: 1,
    #     signal_request: "SignalRequest", # required
    #     user_id: "UserId",
    #   })
    #
    # @example Response structure
    #
    #   resp.additional_environment_variables #=> Hash
    #   resp.additional_environment_variables["EnvironmentVariablesKeyString"] #=> String
    #   resp.additional_launch_args #=> Array
    #   resp.additional_launch_args[0] #=> String
    #   resp.application_arn #=> String
    #   resp.arn #=> String
    #   resp.connection_timeout_seconds #=> Integer
    #   resp.created_at #=> Time
    #   resp.description #=> String
    #   resp.export_files_metadata.output_uri #=> String
    #   resp.export_files_metadata.status #=> String, one of "SUCCEEDED", "FAILED", "PENDING"
    #   resp.export_files_metadata.status_reason #=> String
    #   resp.last_updated_at #=> Time
    #   resp.location #=> String
    #   resp.log_file_location_uri #=> String
    #   resp.protocol #=> String, one of "WebRTC"
    #   resp.session_length_seconds #=> Integer
    #   resp.signal_request #=> String
    #   resp.signal_response #=> String
    #   resp.status #=> String, one of "ACTIVATING", "ACTIVE", "CONNECTED", "PENDING_CLIENT_RECONNECTION", "RECONNECTING", "TERMINATING", "TERMINATED", "ERROR"
    #   resp.status_reason #=> String, one of "internalError", "invalidSignalRequest", "placementTimeout", "applicationLogS3DestinationError"
    #   resp.stream_group_id #=> String
    #   resp.user_id #=> String
    #   resp.web_sdk_protocol_url #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gameliftstreams-2018-05-10/StartStreamSession AWS API Documentation
    #
    # @overload start_stream_session(params = {})
    # @param [Hash] params ({})
    def start_stream_session(params = {}, options = {})
      req = build_request(:start_stream_session, params)
      req.send_request(options)
    end

    # Assigns one or more tags to a Amazon GameLift Streams resource. Use
    # tags to organize Amazon Web Services resources for a range of
    # purposes. You can assign tags to the following Amazon GameLift Streams
    # resource types:
    #
    # * Application
    #
    # * StreamGroup
    #
    # **Learn more**
    #
    # [Tagging Amazon Web Services Resources][1] in the *Amazon Web Services
    # General Reference*
    #
    # [ Amazon Web Services Tagging Strategies][2]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    # [2]: http://aws.amazon.com/answers/account-management/aws-tagging-strategies/
    #
    # @option params [required, String] :resource_arn
    #   The [Amazon Resource Name (ARN)][1] of the Amazon GameLift Streams
    #   resource that you want to apply tags to.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html
    #
    # @option params [required, Hash<String,String>] :tags
    #   A list of tags, in the form of key-value pairs, to assign to the
    #   specified Amazon GameLift Streams resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "Arn", # required
    #     tags: { # required
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gameliftstreams-2018-05-10/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Permanently terminates an active stream session. When called, the
    # stream session status changes to `TERMINATING`. You can terminate a
    # stream session in any status except `ACTIVATING`. If the stream
    # session is in `ACTIVATING` status, an exception is thrown.
    #
    # @option params [required, String] :identifier
    #   [Amazon Resource Name (ARN)][1] or ID that uniquely identifies the
    #   stream group resource. Example ARN:
    #   `arn:aws:gameliftstreams:us-west-2:111122223333:streamgroup/sg-1AB2C3De4`.
    #   Example ID: `sg-1AB2C3De4`.
    #
    #   The stream group that runs this stream session.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html
    #
    # @option params [required, String] :stream_session_identifier
    #   [Amazon Resource Name (ARN)][1] or ID that uniquely identifies the
    #   stream session resource. Example ARN:
    #   `arn:aws:gameliftstreams:us-west-2:111122223333:streamsession/sg-1AB2C3De4/ABC123def4567`.
    #   Example ID: `ABC123def4567`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.terminate_stream_session({
    #     identifier: "Identifier", # required
    #     stream_session_identifier: "Identifier", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gameliftstreams-2018-05-10/TerminateStreamSession AWS API Documentation
    #
    # @overload terminate_stream_session(params = {})
    # @param [Hash] params ({})
    def terminate_stream_session(params = {}, options = {})
      req = build_request(:terminate_stream_session, params)
      req.send_request(options)
    end

    # Removes one or more tags from a Amazon GameLift Streams resource. To
    # remove tags, specify the Amazon GameLift Streams resource and a list
    # of one or more tags to remove.
    #
    # @option params [required, String] :resource_arn
    #   The [Amazon Resource Name (ARN)][1] of the Amazon GameLift Streams
    #   resource that you want to remove tags from.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html
    #
    # @option params [required, Array<String>] :tag_keys
    #   A list of tag keys to remove from the specified Amazon GameLift
    #   Streams resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "Arn", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gameliftstreams-2018-05-10/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates the mutable configuration settings for a Amazon GameLift
    # Streams application resource. You can change the `Description`,
    # `ApplicationLogOutputUri`, and `ApplicationLogPaths`.
    #
    # To update application settings, specify the application ID and provide
    # the new values. If the operation is successful, it returns the
    # complete updated set of settings for the application.
    #
    # @option params [String] :application_log_output_uri
    #   An Amazon S3 URI to a bucket where you would like Amazon GameLift
    #   Streams to save application logs. Required if you specify one or more
    #   `ApplicationLogPaths`.
    #
    #   <note markdown="1"> The log bucket must have permissions that give Amazon GameLift Streams
    #   access to write the log files. For more information, see [Application
    #   log bucket permission policy][1] in the *Amazon GameLift Streams
    #   Developer Guide*.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/gameliftstreams/latest/developerguide/applications.html#application-bucket-permission-template
    #
    # @option params [Array<String>] :application_log_paths
    #   Locations of log files that your content generates during a stream
    #   session. Enter path values that are relative to the
    #   `ApplicationSourceUri` location. You can specify up to 10 log paths.
    #   Amazon GameLift Streams uploads designated log files to the Amazon S3
    #   bucket that you specify in `ApplicationLogOutputUri` at the end of a
    #   stream session. To retrieve stored log files, call
    #   [GetStreamSession][1] and get the `LogFileLocationUri`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/gameliftstreams/latest/apireference/API_GetStreamSession.html
    #
    # @option params [String] :description
    #   A human-readable label for the application.
    #
    # @option params [required, String] :identifier
    #   An [Amazon Resource Name (ARN)][1] or ID that uniquely identifies the
    #   application resource. Example ARN:
    #   `arn:aws:gameliftstreams:us-west-2:111122223333:application/a-9ZY8X7Wv6`.
    #   Example ID: `a-9ZY8X7Wv6`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html
    #
    # @return [Types::UpdateApplicationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateApplicationOutput#application_log_output_uri #application_log_output_uri} => String
    #   * {Types::UpdateApplicationOutput#application_log_paths #application_log_paths} => Array&lt;String&gt;
    #   * {Types::UpdateApplicationOutput#application_source_uri #application_source_uri} => String
    #   * {Types::UpdateApplicationOutput#arn #arn} => String
    #   * {Types::UpdateApplicationOutput#associated_stream_groups #associated_stream_groups} => Array&lt;String&gt;
    #   * {Types::UpdateApplicationOutput#created_at #created_at} => Time
    #   * {Types::UpdateApplicationOutput#description #description} => String
    #   * {Types::UpdateApplicationOutput#executable_path #executable_path} => String
    #   * {Types::UpdateApplicationOutput#id #id} => String
    #   * {Types::UpdateApplicationOutput#last_updated_at #last_updated_at} => Time
    #   * {Types::UpdateApplicationOutput#replication_statuses #replication_statuses} => Array&lt;Types::ReplicationStatus&gt;
    #   * {Types::UpdateApplicationOutput#runtime_environment #runtime_environment} => Types::RuntimeEnvironment
    #   * {Types::UpdateApplicationOutput#status #status} => String
    #   * {Types::UpdateApplicationOutput#status_reason #status_reason} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_application({
    #     application_log_output_uri: "ApplicationLogOutputUri",
    #     application_log_paths: ["FilePath"],
    #     description: "Description",
    #     identifier: "Identifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.application_log_output_uri #=> String
    #   resp.application_log_paths #=> Array
    #   resp.application_log_paths[0] #=> String
    #   resp.application_source_uri #=> String
    #   resp.arn #=> String
    #   resp.associated_stream_groups #=> Array
    #   resp.associated_stream_groups[0] #=> String
    #   resp.created_at #=> Time
    #   resp.description #=> String
    #   resp.executable_path #=> String
    #   resp.id #=> String
    #   resp.last_updated_at #=> Time
    #   resp.replication_statuses #=> Array
    #   resp.replication_statuses[0].location #=> String
    #   resp.replication_statuses[0].status #=> String, one of "REPLICATING", "COMPLETED"
    #   resp.runtime_environment.type #=> String, one of "PROTON", "WINDOWS", "UBUNTU"
    #   resp.runtime_environment.version #=> String
    #   resp.status #=> String, one of "INITIALIZED", "PROCESSING", "READY", "DELETING", "ERROR"
    #   resp.status_reason #=> String, one of "internalError", "accessDenied"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gameliftstreams-2018-05-10/UpdateApplication AWS API Documentation
    #
    # @overload update_application(params = {})
    # @param [Hash] params ({})
    def update_application(params = {}, options = {})
      req = build_request(:update_application, params)
      req.send_request(options)
    end

    # Updates the configuration settings for an Amazon GameLift Streams
    # stream group resource. You can change the description, the set of
    # locations, and the requested capacity of a stream group per location.
    # If you want to change the stream class, create a new stream group.
    #
    # Stream capacity represents the number of concurrent streams that can
    # be active at a time. You set stream capacity per location, per stream
    # group. There are two types of capacity, always-on and on-demand:
    #
    # * **Always-on**: The streaming capacity that is allocated and ready to
    #   handle stream requests without delay. You pay for this capacity
    #   whether it's in use or not. Best for quickest time from streaming
    #   request to streaming session.
    #
    # * **On-demand**: The streaming capacity that Amazon GameLift Streams
    #   can allocate in response to stream requests, and then de-allocate
    #   when the session has terminated. This offers a cost control measure
    #   at the expense of a greater startup time (typically under 5
    #   minutes).
    #
    # To update a stream group, specify the stream group's Amazon Resource
    # Name (ARN) and provide the new values. If the request is successful,
    # Amazon GameLift Streams returns the complete updated metadata for the
    # stream group.
    #
    # @option params [String] :description
    #   A descriptive label for the stream group.
    #
    # @option params [required, String] :identifier
    #   An [Amazon Resource Name (ARN)][1] or ID that uniquely identifies the
    #   stream group resource. Example ARN:
    #   `arn:aws:gameliftstreams:us-west-2:111122223333:streamgroup/sg-1AB2C3De4`.
    #   Example ID: `sg-1AB2C3De4`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html
    #
    # @option params [Array<Types::LocationConfiguration>] :location_configurations
    #   A set of one or more locations and the streaming capacity for each
    #   location.
    #
    # @return [Types::UpdateStreamGroupOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateStreamGroupOutput#arn #arn} => String
    #   * {Types::UpdateStreamGroupOutput#associated_applications #associated_applications} => Array&lt;String&gt;
    #   * {Types::UpdateStreamGroupOutput#created_at #created_at} => Time
    #   * {Types::UpdateStreamGroupOutput#default_application #default_application} => Types::DefaultApplication
    #   * {Types::UpdateStreamGroupOutput#description #description} => String
    #   * {Types::UpdateStreamGroupOutput#id #id} => String
    #   * {Types::UpdateStreamGroupOutput#last_updated_at #last_updated_at} => Time
    #   * {Types::UpdateStreamGroupOutput#location_states #location_states} => Array&lt;Types::LocationState&gt;
    #   * {Types::UpdateStreamGroupOutput#status #status} => String
    #   * {Types::UpdateStreamGroupOutput#status_reason #status_reason} => String
    #   * {Types::UpdateStreamGroupOutput#stream_class #stream_class} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_stream_group({
    #     description: "Description",
    #     identifier: "Identifier", # required
    #     location_configurations: [
    #       {
    #         always_on_capacity: 1,
    #         location_name: "LocationName", # required
    #         on_demand_capacity: 1,
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.associated_applications #=> Array
    #   resp.associated_applications[0] #=> String
    #   resp.created_at #=> Time
    #   resp.default_application.arn #=> String
    #   resp.default_application.id #=> String
    #   resp.description #=> String
    #   resp.id #=> String
    #   resp.last_updated_at #=> Time
    #   resp.location_states #=> Array
    #   resp.location_states[0].allocated_capacity #=> Integer
    #   resp.location_states[0].always_on_capacity #=> Integer
    #   resp.location_states[0].idle_capacity #=> Integer
    #   resp.location_states[0].location_name #=> String
    #   resp.location_states[0].on_demand_capacity #=> Integer
    #   resp.location_states[0].requested_capacity #=> Integer
    #   resp.location_states[0].status #=> String, one of "ACTIVATING", "ACTIVE", "ERROR", "REMOVING"
    #   resp.status #=> String, one of "ACTIVATING", "UPDATING_LOCATIONS", "ACTIVE", "ACTIVE_WITH_ERRORS", "ERROR", "DELETING"
    #   resp.status_reason #=> String, one of "internalError", "noAvailableInstances"
    #   resp.stream_class #=> String, one of "gen4n_high", "gen4n_ultra", "gen4n_win2022", "gen5n_high", "gen5n_ultra", "gen5n_win2022"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gameliftstreams-2018-05-10/UpdateStreamGroup AWS API Documentation
    #
    # @overload update_stream_group(params = {})
    # @param [Hash] params ({})
    def update_stream_group(params = {}, options = {})
      req = build_request(:update_stream_group, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::GameLiftStreams')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-gameliftstreams'
      context[:gem_version] = '1.8.0'
      Seahorse::Client::Request.new(handlers, context)
    end

    # Polls an API operation until a resource enters a desired state.
    #
    # ## Basic Usage
    #
    # A waiter will call an API operation until:
    #
    # * It is successful
    # * It enters a terminal state
    # * It makes the maximum number of attempts
    #
    # In between attempts, the waiter will sleep.
    #
    #     # polls in a loop, sleeping between attempts
    #     client.wait_until(waiter_name, params)
    #
    # ## Configuration
    #
    # You can configure the maximum number of polling attempts, and the
    # delay (in seconds) between each polling attempt. You can pass
    # configuration as the final arguments hash.
    #
    #     # poll for ~25 seconds
    #     client.wait_until(waiter_name, params, {
    #       max_attempts: 5,
    #       delay: 5,
    #     })
    #
    # ## Callbacks
    #
    # You can be notified before each polling attempt and before each
    # delay. If you throw `:success` or `:failure` from these callbacks,
    # it will terminate the waiter.
    #
    #     started_at = Time.now
    #     client.wait_until(waiter_name, params, {
    #
    #       # disable max attempts
    #       max_attempts: nil,
    #
    #       # poll for 1 hour, instead of a number of attempts
    #       before_wait: -> (attempts, response) do
    #         throw :failure if Time.now - started_at > 3600
    #       end
    #     })
    #
    # ## Handling Errors
    #
    # When a waiter is unsuccessful, it will raise an error.
    # All of the failure errors extend from
    # {Aws::Waiters::Errors::WaiterFailed}.
    #
    #     begin
    #       client.wait_until(...)
    #     rescue Aws::Waiters::Errors::WaiterFailed
    #       # resource did not enter the desired state in time
    #     end
    #
    # ## Valid Waiters
    #
    # The following table lists the valid waiter names, the operations they call,
    # and the default `:delay` and `:max_attempts` values.
    #
    # | waiter_name           | params                      | :delay   | :max_attempts |
    # | --------------------- | --------------------------- | -------- | ------------- |
    # | application_deleted   | {Client#get_application}    | 2        | 60            |
    # | application_ready     | {Client#get_application}    | 2        | 60            |
    # | stream_group_active   | {Client#get_stream_group}   | 30       | 120           |
    # | stream_group_deleted  | {Client#get_stream_group}   | 30       | 60            |
    # | stream_session_active | {Client#get_stream_session} | 2        | 60            |
    #
    # @raise [Errors::FailureStateError] Raised when the waiter terminates
    #   because the waiter has entered a state that it will not transition
    #   out of, preventing success.
    #
    # @raise [Errors::TooManyAttemptsError] Raised when the configured
    #   maximum number of attempts have been made, and the waiter is not
    #   yet successful.
    #
    # @raise [Errors::UnexpectedError] Raised when an error is encounted
    #   while polling for a resource that is not expected.
    #
    # @raise [Errors::NoSuchWaiterError] Raised when you request to wait
    #   for an unknown state.
    #
    # @return [Boolean] Returns `true` if the waiter was successful.
    # @param [Symbol] waiter_name
    # @param [Hash] params ({})
    # @param [Hash] options ({})
    # @option options [Integer] :max_attempts
    # @option options [Integer] :delay
    # @option options [Proc] :before_attempt
    # @option options [Proc] :before_wait
    def wait_until(waiter_name, params = {}, options = {})
      w = waiter(waiter_name, options)
      yield(w.waiter) if block_given? # deprecated
      w.wait(params)
    end

    # @api private
    # @deprecated
    def waiter_names
      waiters.keys
    end

    private

    # @param [Symbol] waiter_name
    # @param [Hash] options ({})
    def waiter(waiter_name, options = {})
      waiter_class = waiters[waiter_name]
      if waiter_class
        waiter_class.new(options.merge(client: self))
      else
        raise Aws::Waiters::Errors::NoSuchWaiterError.new(waiter_name, waiters.keys)
      end
    end

    def waiters
      {
        application_deleted: Waiters::ApplicationDeleted,
        application_ready: Waiters::ApplicationReady,
        stream_group_active: Waiters::StreamGroupActive,
        stream_group_deleted: Waiters::StreamGroupDeleted,
        stream_session_active: Waiters::StreamSessionActive
      }
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
