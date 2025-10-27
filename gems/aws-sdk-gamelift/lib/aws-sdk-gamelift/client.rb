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
require 'aws-sdk-core/plugins/protocols/json_rpc'

module Aws::GameLift
  # An API client for GameLift.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::GameLift::Client.new(
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

    @identifier = :gamelift

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
    add_plugin(Aws::Plugins::Protocols::JsonRpc)
    add_plugin(Aws::GameLift::Plugins::Endpoints)

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
    #   @option options [Boolean] :simple_json (false)
    #     Disables request parameter conversion, validation, and formatting.
    #     Also disables response data type conversions. The request parameters
    #     hash must be formatted exactly as the API expects.This option is useful
    #     when you want to ensure the highest level of performance by avoiding
    #     overhead of walking request parameters and response data structures.
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
    #   @option options [Aws::GameLift::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::GameLift::EndpointParameters`.
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

    # Registers a player's acceptance or rejection of a proposed FlexMatch
    # match. A matchmaking configuration may require player acceptance; if
    # so, then matches built with that configuration cannot be completed
    # unless all players accept the proposed match within a specified time
    # limit.
    #
    # When FlexMatch builds a match, all the matchmaking tickets involved in
    # the proposed match are placed into status `REQUIRES_ACCEPTANCE`. This
    # is a trigger for your game to get acceptance from all players in each
    # ticket. Calls to this action are only valid for tickets that are in
    # this status; calls for tickets not in this status result in an error.
    #
    # To register acceptance, specify the ticket ID, one or more players,
    # and an acceptance response. When all players have accepted, Amazon
    # GameLift Servers advances the matchmaking tickets to status `PLACING`,
    # and attempts to create a new game session for the match.
    #
    # If any player rejects the match, or if acceptances are not received
    # before a specified timeout, the proposed match is dropped. Each
    # matchmaking ticket in the failed match is handled as follows:
    #
    # * If the ticket has one or more players who rejected the match or
    #   failed to respond, the ticket status is set `CANCELLED` and
    #   processing is terminated.
    #
    # * If all players in the ticket accepted the match, the ticket status
    #   is returned to `SEARCHING` to find a new match.
    #
    # **Learn more**
    #
    # [ Add FlexMatch to a game client][1]
    #
    # [ FlexMatch events][2] (reference)
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-client.html
    # [2]: https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-events.html
    #
    # @option params [required, String] :ticket_id
    #   A unique identifier for a matchmaking ticket. The ticket must be in
    #   status `REQUIRES_ACCEPTANCE`; otherwise this request will fail.
    #
    # @option params [required, Array<String>] :player_ids
    #   A unique identifier for a player delivering the response. This
    #   parameter can include one or multiple player IDs.
    #
    # @option params [required, String] :acceptance_type
    #   Player response to the proposed match.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.accept_match({
    #     ticket_id: "MatchmakingIdStringModel", # required
    #     player_ids: ["PlayerId"], # required
    #     acceptance_type: "ACCEPT", # required, accepts ACCEPT, REJECT
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/AcceptMatch AWS API Documentation
    #
    # @overload accept_match(params = {})
    # @param [Hash] params ({})
    def accept_match(params = {}, options = {})
      req = build_request(:accept_match, params)
      req.send_request(options)
    end

    # **This operation is used with the Amazon GameLift Servers FleetIQ
    # solution and game server groups.**
    #
    # Locates an available game server and temporarily reserves it to host
    # gameplay and players. This operation is called from a game client or
    # client service (such as a matchmaker) to request hosting resources for
    # a new game session. In response, Amazon GameLift Servers FleetIQ
    # locates an available game server, places it in `CLAIMED` status for 60
    # seconds, and returns connection information that players can use to
    # connect to the game server.
    #
    # To claim a game server, identify a game server group. You can also
    # specify a game server ID, although this approach bypasses Amazon
    # GameLift Servers FleetIQ placement optimization. Optionally, include
    # game data to pass to the game server at the start of a game session,
    # such as a game map or player information. Add filter options to
    # further restrict how a game server is chosen, such as only allowing
    # game servers on `ACTIVE` instances to be claimed.
    #
    # When a game server is successfully claimed, connection information is
    # returned. A claimed game server's utilization status remains
    # `AVAILABLE` while the claim status is set to `CLAIMED` for up to 60
    # seconds. This time period gives the game server time to update its
    # status to `UTILIZED` after players join. If the game server's status
    # is not updated within 60 seconds, the game server reverts to unclaimed
    # status and is available to be claimed by another request. The claim
    # time period is a fixed value and is not configurable.
    #
    # If you try to claim a specific game server, this request will fail in
    # the following cases:
    #
    # * If the game server utilization status is `UTILIZED`.
    #
    # * If the game server claim status is `CLAIMED`.
    #
    # * If the game server is running on an instance in `DRAINING` status
    #   and the provided filter option does not allow placing on `DRAINING`
    #   instances.
    #
    # **Learn more**
    #
    # [Amazon GameLift Servers FleetIQ Guide][1]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/gsg-intro.html
    #
    # @option params [required, String] :game_server_group_name
    #   A unique identifier for the game server group where the game server is
    #   running. If you are not specifying a game server to claim, this value
    #   identifies where you want Amazon GameLift Servers FleetIQ to look for
    #   an available game server to claim.
    #
    # @option params [String] :game_server_id
    #   A custom string that uniquely identifies the game server to claim. If
    #   this parameter is left empty, Amazon GameLift Servers FleetIQ searches
    #   for an available game server in the specified game server group.
    #
    # @option params [String] :game_server_data
    #   A set of custom game server properties, formatted as a single string
    #   value. This data is passed to a game client or service when it
    #   requests information on game servers.
    #
    # @option params [Types::ClaimFilterOption] :filter_option
    #   Object that restricts how a claimed game server is chosen.
    #
    # @return [Types::ClaimGameServerOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ClaimGameServerOutput#game_server #game_server} => Types::GameServer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.claim_game_server({
    #     game_server_group_name: "GameServerGroupNameOrArn", # required
    #     game_server_id: "GameServerId",
    #     game_server_data: "GameServerData",
    #     filter_option: {
    #       instance_statuses: ["ACTIVE"], # accepts ACTIVE, DRAINING
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.game_server.game_server_group_name #=> String
    #   resp.game_server.game_server_group_arn #=> String
    #   resp.game_server.game_server_id #=> String
    #   resp.game_server.instance_id #=> String
    #   resp.game_server.connection_info #=> String
    #   resp.game_server.game_server_data #=> String
    #   resp.game_server.claim_status #=> String, one of "CLAIMED"
    #   resp.game_server.utilization_status #=> String, one of "AVAILABLE", "UTILIZED"
    #   resp.game_server.registration_time #=> Time
    #   resp.game_server.last_claim_time #=> Time
    #   resp.game_server.last_health_check_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/ClaimGameServer AWS API Documentation
    #
    # @overload claim_game_server(params = {})
    # @param [Hash] params ({})
    def claim_game_server(params = {}, options = {})
      req = build_request(:claim_game_server, params)
      req.send_request(options)
    end

    # Creates an alias for a fleet. In most situations, you can use an alias
    # ID in place of a fleet ID. An alias provides a level of abstraction
    # for a fleet that is useful when redirecting player traffic from one
    # fleet to another, such as when updating your game build.
    #
    # Amazon GameLift Servers supports two types of routing strategies for
    # aliases: simple and terminal. A simple alias points to an active
    # fleet. A terminal alias is used to display messaging or link to a URL
    # instead of routing players to an active fleet. For example, you might
    # use a terminal alias when a game version is no longer supported and
    # you want to direct players to an upgrade site.
    #
    # To create a fleet alias, specify an alias name, routing strategy, and
    # optional description. Each simple alias can point to only one fleet,
    # but a fleet can have multiple aliases. If successful, a new alias
    # record is returned, including an alias ID and an ARN. You can reassign
    # an alias to another fleet by calling `UpdateAlias`.
    #
    # **Related actions**
    #
    # [All APIs by task][1]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets
    #
    # @option params [required, String] :name
    #   A descriptive label that is associated with an alias. Alias names do
    #   not need to be unique.
    #
    # @option params [String] :description
    #   A human-readable description of the alias.
    #
    # @option params [required, Types::RoutingStrategy] :routing_strategy
    #   The routing configuration, including routing type and fleet target,
    #   for the alias.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of labels to assign to the new alias resource. Tags are
    #   developer-defined key-value pairs. Tagging Amazon Web Services
    #   resources are useful for resource management, access management and
    #   cost allocation. For more information, see [ Tagging Amazon Web
    #   Services Resources][1] in the *Amazon Web Services General Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    #
    # @return [Types::CreateAliasOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAliasOutput#alias #alias} => Types::Alias
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_alias({
    #     name: "NonBlankAndLengthConstraintString", # required
    #     description: "NonZeroAndMaxString",
    #     routing_strategy: { # required
    #       type: "SIMPLE", # accepts SIMPLE, TERMINAL
    #       fleet_id: "FleetId",
    #       message: "FreeText",
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.alias.alias_id #=> String
    #   resp.alias.name #=> String
    #   resp.alias.alias_arn #=> String
    #   resp.alias.description #=> String
    #   resp.alias.routing_strategy.type #=> String, one of "SIMPLE", "TERMINAL"
    #   resp.alias.routing_strategy.fleet_id #=> String
    #   resp.alias.routing_strategy.message #=> String
    #   resp.alias.creation_time #=> Time
    #   resp.alias.last_updated_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/CreateAlias AWS API Documentation
    #
    # @overload create_alias(params = {})
    # @param [Hash] params ({})
    def create_alias(params = {}, options = {})
      req = build_request(:create_alias, params)
      req.send_request(options)
    end

    # Creates a new Amazon GameLift Servers build resource for your game
    # server binary files. Combine game server binaries into a zip file for
    # use with Amazon GameLift Servers.
    #
    # When setting up a new game build for Amazon GameLift Servers, we
    # recommend using the CLI command <b> <a
    # href="https://docs.aws.amazon.com/cli/latest/reference/gamelift/upload-build.html">upload-build</a>
    # </b>. This helper command combines two tasks: (1) it uploads your
    # build files from a file directory to an Amazon GameLift Servers Amazon
    # S3 location, and (2) it creates a new build resource.
    #
    # You can use the `CreateBuild` operation in the following scenarios:
    #
    # * Create a new game build with build files that are in an Amazon S3
    #   location under an Amazon Web Services account that you control. To
    #   use this option, you give Amazon GameLift Servers access to the
    #   Amazon S3 bucket. With permissions in place, specify a build name,
    #   operating system, and the Amazon S3 storage location of your game
    #   build.
    #
    # * Upload your build files to a Amazon GameLift Servers Amazon S3
    #   location. To use this option, specify a build name and operating
    #   system. This operation creates a new build resource and also returns
    #   an Amazon S3 location with temporary access credentials. Use the
    #   credentials to manually upload your build files to the specified
    #   Amazon S3 location. For more information, see [Uploading Objects][1]
    #   in the *Amazon S3 Developer Guide*. After you upload build files to
    #   the Amazon GameLift Servers Amazon S3 location, you can't update
    #   them.
    #
    # If successful, this operation creates a new build resource with a
    # unique build ID and places it in `INITIALIZED` status. A build must be
    # in `READY` status before you can create fleets with it.
    #
    # **Learn more**
    #
    # [Uploading Your Game][2]
    #
    # [ Create a Build with Files in Amazon S3][3]
    #
    # [All APIs by task][4]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/UploadingObjects.html
    # [2]: https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-build-intro.html
    # [3]: https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-build-cli-uploading.html#gamelift-build-cli-uploading-create-build
    # [4]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets
    #
    # @option params [String] :name
    #   A descriptive label that is associated with a build. Build names do
    #   not need to be unique. You can change this value later.
    #
    # @option params [String] :version
    #   Version information that is associated with a build or script. Version
    #   strings do not need to be unique. You can change this value later.
    #
    # @option params [Types::S3Location] :storage_location
    #   Information indicating where your game build files are stored. Use
    #   this parameter only when creating a build with files stored in an
    #   Amazon S3 bucket that you own. The storage location must specify an
    #   Amazon S3 bucket name and key. The location must also specify a role
    #   ARN that you set up to allow Amazon GameLift Servers to access your
    #   Amazon S3 bucket. The S3 bucket and your new build must be in the same
    #   Region.
    #
    #   If a `StorageLocation` is specified, the size of your file can be
    #   found in your Amazon S3 bucket. Amazon GameLift Servers will report a
    #   `SizeOnDisk` of 0.
    #
    # @option params [String] :operating_system
    #   The operating system that your game server binaries run on. This value
    #   determines the type of fleet resources that you use for this build. If
    #   your game build contains multiple executables, they all must run on
    #   the same operating system. You must specify a valid operating system
    #   in this request. There is no default value. You can't change a
    #   build's operating system later.
    #
    #   <note markdown="1"> Amazon Linux 2 (AL2) will reach end of support on 6/30/2025. See more
    #   details in the [Amazon Linux 2 FAQs][1]. For game servers that are
    #   hosted on AL2 and use server SDK version 4.x for Amazon GameLift
    #   Servers, first update the game server build to server SDK 5.x, and
    #   then deploy to AL2023 instances. See [ Migrate to server SDK version
    #   5.][2]
    #
    #    </note>
    #
    #
    #
    #   [1]: http://aws.amazon.com/amazon-linux-2/faqs/
    #   [2]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-serversdk5-migration.html
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of labels to assign to the new build resource. Tags are
    #   developer defined key-value pairs. Tagging Amazon Web Services
    #   resources are useful for resource management, access management and
    #   cost allocation. For more information, see [ Tagging Amazon Web
    #   Services Resources][1] in the *Amazon Web Services General Reference*.
    #   Once the resource is created, you can use [TagResource][2],
    #   [UntagResource][3], and [ListTagsForResource][4] to add, remove, and
    #   view tags. The maximum tag limit may be lower than stated. See the
    #   Amazon Web Services General Reference for actual tagging limits.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    #   [2]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_TagResource.html
    #   [3]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_UntagResource.html
    #   [4]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_ListTagsForResource.html
    #
    # @option params [String] :server_sdk_version
    #   A server SDK version you used when integrating your game server build
    #   with Amazon GameLift Servers. For more information see [Integrate
    #   games with custom game servers][1]. By default Amazon GameLift Servers
    #   sets this value to `4.0.2`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/integration-custom-intro.html
    #
    # @return [Types::CreateBuildOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateBuildOutput#build #build} => Types::Build
    #   * {Types::CreateBuildOutput#upload_credentials #upload_credentials} => Types::AwsCredentials
    #   * {Types::CreateBuildOutput#storage_location #storage_location} => Types::S3Location
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_build({
    #     name: "NonZeroAndMaxString",
    #     version: "NonZeroAndMaxString",
    #     storage_location: {
    #       bucket: "NonEmptyString",
    #       key: "NonEmptyString",
    #       role_arn: "NonEmptyString",
    #       object_version: "NonEmptyString",
    #     },
    #     operating_system: "WINDOWS_2012", # accepts WINDOWS_2012, AMAZON_LINUX, AMAZON_LINUX_2, WINDOWS_2016, AMAZON_LINUX_2023
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     server_sdk_version: "ServerSdkVersion",
    #   })
    #
    # @example Response structure
    #
    #   resp.build.build_id #=> String
    #   resp.build.build_arn #=> String
    #   resp.build.name #=> String
    #   resp.build.version #=> String
    #   resp.build.status #=> String, one of "INITIALIZED", "READY", "FAILED"
    #   resp.build.size_on_disk #=> Integer
    #   resp.build.operating_system #=> String, one of "WINDOWS_2012", "AMAZON_LINUX", "AMAZON_LINUX_2", "WINDOWS_2016", "AMAZON_LINUX_2023"
    #   resp.build.creation_time #=> Time
    #   resp.build.server_sdk_version #=> String
    #   resp.upload_credentials.access_key_id #=> String
    #   resp.upload_credentials.secret_access_key #=> String
    #   resp.upload_credentials.session_token #=> String
    #   resp.storage_location.bucket #=> String
    #   resp.storage_location.key #=> String
    #   resp.storage_location.role_arn #=> String
    #   resp.storage_location.object_version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/CreateBuild AWS API Documentation
    #
    # @overload create_build(params = {})
    # @param [Hash] params ({})
    def create_build(params = {}, options = {})
      req = build_request(:create_build, params)
      req.send_request(options)
    end

    # Creates a managed fleet of Amazon Elastic Compute Cloud (Amazon EC2)
    # instances to host your containerized game servers. Use this operation
    # to define how to deploy a container architecture onto each fleet
    # instance and configure fleet settings. You can create a container
    # fleet in any Amazon Web Services Regions that Amazon GameLift Servers
    # supports for multi-location fleets. A container fleet can be deployed
    # to a single location or multiple locations. Container fleets are
    # deployed with Amazon Linux 2023 as the instance operating system.
    #
    # Define the fleet's container architecture using container group
    # definitions. Each fleet can have one of the following container group
    # types:
    #
    # * The game server container group runs your game server build and
    #   dependent software. Amazon GameLift Servers deploys one or more
    #   replicas of this container group to each fleet instance. The number
    #   of replicas depends on the computing capabilities of the fleet
    #   instance in use.
    #
    # * An optional per-instance container group might be used to run other
    #   software that only needs to run once per instance, such as
    #   background services, logging, or test processes. One per-instance
    #   container group is deployed to each fleet instance.
    #
    # Each container group can include the definition for one or more
    # containers. A container definition specifies a container image that is
    # stored in an Amazon Elastic Container Registry (Amazon ECR) public or
    # private repository.
    #
    # **Request options**
    #
    # Use this operation to make the following types of requests. Most fleet
    # settings have default values, so you can create a working fleet with a
    # minimal configuration and default values, which you can customize
    # later.
    #
    # * Create a fleet with no container groups. You can configure a
    #   container fleet and then add container group definitions later. In
    #   this scenario, no fleet instances are deployed, and the fleet can't
    #   host game sessions until you add a game server container group
    #   definition. Provide the following required parameter values:
    #
    #   * `FleetRoleArn`
    #
    #   ^
    # * Create a fleet with a game server container group. Provide the
    #   following required parameter values:
    #
    #   * `FleetRoleArn`
    #
    #   * `GameServerContainerGroupDefinitionName`
    # * Create a fleet with a game server container group and a per-instance
    #   container group. Provide the following required parameter values:
    #
    #   * `FleetRoleArn`
    #
    #   * `GameServerContainerGroupDefinitionName`
    #
    #   * `PerInstanceContainerGroupDefinitionName`
    #
    # **Results**
    #
    # If successful, this operation creates a new container fleet resource,
    # places it in `PENDING` status, and initiates the [fleet creation
    # workflow][1]. For fleets with container groups, this workflow starts a
    # fleet deployment and transitions the status to `ACTIVE`. Fleets
    # without a container group are placed in `CREATED` status.
    #
    # You can update most of the properties of a fleet, including container
    # group definitions, and deploy the update across all fleet instances.
    # Use a fleet update to deploy a new game server version update across
    # the container fleet.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-creating-all.html#fleets-creation-workflow
    #
    # @option params [required, String] :fleet_role_arn
    #   The unique identifier for an Identity and Access Management (IAM) role
    #   with permissions to run your containers on resources that are managed
    #   by Amazon GameLift Servers. Use an IAM service role with the
    #   `GameLiftContainerFleetPolicy` managed policy attached. For more
    #   information, see [Set up an IAM service role][1]. You can't change
    #   this fleet property after the fleet is created.
    #
    #   IAM role ARN values use the following pattern: `arn:aws:iam::[Amazon
    #   Web Services account]:role/[role name]`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/setting-up-role.html
    #
    # @option params [String] :description
    #   A meaningful description of the container fleet.
    #
    # @option params [String] :game_server_container_group_definition_name
    #   A container group definition resource that describes how to deploy
    #   containers with your game server build and support software onto each
    #   fleet instance. You can specify the container group definition's name
    #   to use the latest version. Alternatively, provide an ARN value with a
    #   specific version number.
    #
    #   Create a container group definition by calling
    #   [CreateContainerGroupDefinition][1]. This operation creates a
    #   [ContainerGroupDefinition][2] resource.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_CreateContainerGroupDefinition.html
    #   [2]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_ContainerGroupDefinition.html
    #
    # @option params [String] :per_instance_container_group_definition_name
    #   The name of a container group definition resource that describes a set
    #   of axillary software. A fleet instance has one process for executables
    #   in this container group. A per-instance container group is optional.
    #   You can update the fleet to add or remove a per-instance container
    #   group at any time. You can specify the container group definition's
    #   name to use the latest version. Alternatively, provide an ARN value
    #   with a specific version number.
    #
    #   Create a container group definition by calling
    #   [https://docs.aws.amazon.com/gamelift/latest/apireference/API\_CreateContainerGroupDefinition.html][1].
    #   This operation creates a
    #   [https://docs.aws.amazon.com/gamelift/latest/apireference/API\_ContainerGroupDefinition.html][2]
    #   resource.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_CreateContainerGroupDefinition.html
    #   [2]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_ContainerGroupDefinition.html
    #
    # @option params [Types::ConnectionPortRange] :instance_connection_port_range
    #   The set of port numbers to open on each fleet instance. A fleet's
    #   connection ports map to container ports that are configured in the
    #   fleet's container group definitions.
    #
    #   By default, Amazon GameLift Servers calculates an optimal port range
    #   based on your fleet configuration. To use the calculated range, don't
    #   set this parameter. The values are:
    #
    #   * Port range: 4192 to a number calculated based on your fleet
    #     configuration. Amazon GameLift Servers uses the following formula:
    #     `4192 + [# of game server container groups per fleet instance] * [#
    #     of container ports in the game server container group definition] +
    #     [# of container ports in the game server container group
    #     definition]`
    #
    #   ^
    #
    #   You can also choose to manually set this parameter. When manually
    #   setting this parameter, you must use port numbers that match the
    #   fleet's inbound permissions port range.
    #
    #   <note markdown="1"> If you set values manually, Amazon GameLift Servers no longer
    #   calculates a port range for you, even if you later remove the manual
    #   settings.
    #
    #    </note>
    #
    # @option params [Array<Types::IpPermission>] :instance_inbound_permissions
    #   The IP address ranges and port settings that allow inbound traffic to
    #   access game server processes and other processes on this fleet. As a
    #   best practice, when remotely accessing a fleet instance, we recommend
    #   opening ports only when you need them and closing them when you're
    #   finished.
    #
    #   By default, Amazon GameLift Servers calculates an optimal port range
    #   based on your fleet configuration. To use the calculated range, don't
    #   set this parameter. The values are:
    #
    #   * Protocol: UDP
    #
    #   * Port range: 4192 to a number calculated based on your fleet
    #     configuration. Amazon GameLift Servers uses the following formula:
    #     `4192 + [# of game server container groups per fleet instance] * [#
    #     of container ports in the game server container group definition] +
    #     [# of container ports in the game server container group
    #     definition]`
    #
    #   You can also choose to manually set this parameter. When manually
    #   setting this parameter, you must use port numbers that match the
    #   fleet's connection port range.
    #
    #   <note markdown="1"> If you set values manually, Amazon GameLift Servers no longer
    #   calculates a port range for you, even if you later remove the manual
    #   settings.
    #
    #    </note>
    #
    # @option params [Integer] :game_server_container_groups_per_instance
    #   The number of times to replicate the game server container group on
    #   each fleet instance.
    #
    #   By default, Amazon GameLift Servers calculates the maximum number of
    #   game server container groups that can fit on each instance. This
    #   calculation is based on the CPU and memory resources of the fleet's
    #   instance type). To use the calculated maximum, don't set this
    #   parameter. If you set this number manually, Amazon GameLift Servers
    #   uses your value as long as it's less than the calculated maximum.
    #
    # @option params [String] :instance_type
    #   The Amazon EC2 instance type to use for all instances in the fleet.
    #   For multi-location fleets, the instance type must be available in the
    #   home region and all remote locations. Instance type determines the
    #   computing resources and processing power that's available to host
    #   your game servers. This includes including CPU, memory, storage, and
    #   networking capacity.
    #
    #   By default, Amazon GameLift Servers selects an instance type that fits
    #   the needs of your container groups and is available in all selected
    #   fleet locations. You can also choose to manually set this parameter.
    #   See [Amazon Elastic Compute Cloud Instance Types][1] for detailed
    #   descriptions of Amazon EC2 instance types.
    #
    #   You can't update this fleet property later.
    #
    #
    #
    #   [1]: http://aws.amazon.com/ec2/instance-types/
    #
    # @option params [String] :billing_type
    #   Indicates whether to use On-Demand or Spot instances for this fleet.
    #   Learn more about when to use [ On-Demand versus Spot Instances][1].
    #   This fleet property can't be changed after the fleet is created.
    #
    #   By default, this property is set to `ON_DEMAND`.
    #
    #   You can't update this fleet property later.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-ec2-instances.html#gamelift-ec2-instances-spot
    #
    # @option params [Array<Types::LocationConfiguration>] :locations
    #   A set of locations to deploy container fleet instances to. You can add
    #   any Amazon Web Services Region or Local Zone that's supported by
    #   Amazon GameLift Servers. Provide a list of one or more Amazon Web
    #   Services Region codes, such as `us-west-2`, or Local Zone names. Also
    #   include the fleet's home Region, which is the Amazon Web Services
    #   Region where the fleet is created. For a list of supported Regions and
    #   Local Zones, see [ Amazon GameLift Servers service locations][1] for
    #   managed hosting.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-regions.html
    #
    # @option params [Array<String>] :metric_groups
    #   The name of an Amazon Web Services CloudWatch metric group to add this
    #   fleet to. You can use a metric group to aggregate metrics for multiple
    #   fleets. You can specify an existing metric group name or use a new
    #   name to create a new metric group. Each fleet can have only one metric
    #   group, but you can change this value at any time.
    #
    # @option params [String] :new_game_session_protection_policy
    #   Determines whether Amazon GameLift Servers can shut down game sessions
    #   on the fleet that are actively running and hosting players. Amazon
    #   GameLift Servers might prompt an instance shutdown when scaling down
    #   fleet capacity or when retiring unhealthy instances. You can also set
    #   game session protection for individual game sessions using
    #   [UpdateGameSession](gamelift/latest/apireference/API_UpdateGameSession.html).
    #
    #   * **NoProtection** -- Game sessions can be shut down during active
    #     gameplay.
    #
    #   * **FullProtection** -- Game sessions in `ACTIVE` status can't be
    #     shut down.
    #
    #   By default, this property is set to `NoProtection`.
    #
    # @option params [Types::GameSessionCreationLimitPolicy] :game_session_creation_limit_policy
    #   A policy that limits the number of game sessions that each individual
    #   player can create on instances in this fleet. The limit applies for a
    #   specified span of time.
    #
    # @option params [Types::LogConfiguration] :log_configuration
    #   A method for collecting container logs for the fleet. Amazon GameLift
    #   Servers saves all standard output for each container in logs,
    #   including game session logs. You can select from the following
    #   methods:
    #
    #   * `CLOUDWATCH` -- Send logs to an Amazon CloudWatch log group that you
    #     define. Each container emits a log stream, which is organized in the
    #     log group.
    #
    #   * `S3` -- Store logs in an Amazon S3 bucket that you define.
    #
    #   * `NONE` -- Don't collect container logs.
    #
    #   By default, this property is set to `CLOUDWATCH`.
    #
    #   Amazon GameLift Servers requires permissions to send logs other Amazon
    #   Web Services services in your account. These permissions are included
    #   in the IAM fleet role for this container fleet (see `FleetRoleArn)`.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of labels to assign to the new fleet resource. Tags are
    #   developer-defined key-value pairs. Tagging Amazon Web Services
    #   resources are useful for resource management, access management and
    #   cost allocation. For more information, see [ Tagging Amazon Web
    #   Services Resources][1] in the *Amazon Web Services General Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    #
    # @return [Types::CreateContainerFleetOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateContainerFleetOutput#container_fleet #container_fleet} => Types::ContainerFleet
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_container_fleet({
    #     fleet_role_arn: "IamRoleArn", # required
    #     description: "NonZeroAndMaxString",
    #     game_server_container_group_definition_name: "ContainerGroupDefinitionNameOrArn",
    #     per_instance_container_group_definition_name: "ContainerGroupDefinitionNameOrArn",
    #     instance_connection_port_range: {
    #       from_port: 1, # required
    #       to_port: 1, # required
    #     },
    #     instance_inbound_permissions: [
    #       {
    #         from_port: 1, # required
    #         to_port: 1, # required
    #         ip_range: "IpRange", # required
    #         protocol: "TCP", # required, accepts TCP, UDP
    #       },
    #     ],
    #     game_server_container_groups_per_instance: 1,
    #     instance_type: "NonZeroAndMaxString",
    #     billing_type: "ON_DEMAND", # accepts ON_DEMAND, SPOT
    #     locations: [
    #       {
    #         location: "LocationStringModel", # required
    #       },
    #     ],
    #     metric_groups: ["MetricGroup"],
    #     new_game_session_protection_policy: "NoProtection", # accepts NoProtection, FullProtection
    #     game_session_creation_limit_policy: {
    #       new_game_sessions_per_creator: 1,
    #       policy_period_in_minutes: 1,
    #     },
    #     log_configuration: {
    #       log_destination: "NONE", # accepts NONE, CLOUDWATCH, S3
    #       s3_bucket_name: "NonEmptyString",
    #       log_group_arn: "LogGroupArnStringModel",
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.container_fleet.fleet_id #=> String
    #   resp.container_fleet.fleet_arn #=> String
    #   resp.container_fleet.fleet_role_arn #=> String
    #   resp.container_fleet.game_server_container_group_definition_name #=> String
    #   resp.container_fleet.game_server_container_group_definition_arn #=> String
    #   resp.container_fleet.per_instance_container_group_definition_name #=> String
    #   resp.container_fleet.per_instance_container_group_definition_arn #=> String
    #   resp.container_fleet.instance_connection_port_range.from_port #=> Integer
    #   resp.container_fleet.instance_connection_port_range.to_port #=> Integer
    #   resp.container_fleet.instance_inbound_permissions #=> Array
    #   resp.container_fleet.instance_inbound_permissions[0].from_port #=> Integer
    #   resp.container_fleet.instance_inbound_permissions[0].to_port #=> Integer
    #   resp.container_fleet.instance_inbound_permissions[0].ip_range #=> String
    #   resp.container_fleet.instance_inbound_permissions[0].protocol #=> String, one of "TCP", "UDP"
    #   resp.container_fleet.game_server_container_groups_per_instance #=> Integer
    #   resp.container_fleet.maximum_game_server_container_groups_per_instance #=> Integer
    #   resp.container_fleet.instance_type #=> String
    #   resp.container_fleet.billing_type #=> String, one of "ON_DEMAND", "SPOT"
    #   resp.container_fleet.description #=> String
    #   resp.container_fleet.creation_time #=> Time
    #   resp.container_fleet.metric_groups #=> Array
    #   resp.container_fleet.metric_groups[0] #=> String
    #   resp.container_fleet.new_game_session_protection_policy #=> String, one of "NoProtection", "FullProtection"
    #   resp.container_fleet.game_session_creation_limit_policy.new_game_sessions_per_creator #=> Integer
    #   resp.container_fleet.game_session_creation_limit_policy.policy_period_in_minutes #=> Integer
    #   resp.container_fleet.status #=> String, one of "PENDING", "CREATING", "CREATED", "ACTIVATING", "ACTIVE", "UPDATING", "DELETING"
    #   resp.container_fleet.deployment_details.latest_deployment_id #=> String
    #   resp.container_fleet.log_configuration.log_destination #=> String, one of "NONE", "CLOUDWATCH", "S3"
    #   resp.container_fleet.log_configuration.s3_bucket_name #=> String
    #   resp.container_fleet.log_configuration.log_group_arn #=> String
    #   resp.container_fleet.location_attributes #=> Array
    #   resp.container_fleet.location_attributes[0].location #=> String
    #   resp.container_fleet.location_attributes[0].status #=> String, one of "PENDING", "CREATING", "CREATED", "ACTIVATING", "ACTIVE", "UPDATING", "DELETING"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/CreateContainerFleet AWS API Documentation
    #
    # @overload create_container_fleet(params = {})
    # @param [Hash] params ({})
    def create_container_fleet(params = {}, options = {})
      req = build_request(:create_container_fleet, params)
      req.send_request(options)
    end

    # Creates a `ContainerGroupDefinition` that describes a set of
    # containers for hosting your game server with Amazon GameLift Servers
    # managed containers hosting. An Amazon GameLift Servers container group
    # is similar to a container task or pod. Use container group definitions
    # when you create a container fleet with [CreateContainerFleet][1].
    #
    # A container group definition determines how Amazon GameLift Servers
    # deploys your containers to each instance in a container fleet. You can
    # maintain multiple versions of a container group definition.
    #
    # There are two types of container groups:
    #
    # * A **game server container group** has the containers that run your
    #   game server application and supporting software. A game server
    #   container group can have these container types:
    #
    #   * Game server container. This container runs your game server. You
    #     can define one game server container in a game server container
    #     group.
    #
    #   * Support container. This container runs software in parallel with
    #     your game server. You can define up to 8 support containers in a
    #     game server group.
    #   When building a game server container group definition, you can
    #   choose to bundle your game server executable and all dependent
    #   software into a single game server container. Alternatively, you can
    #   separate the software into one game server container and one or more
    #   support containers.
    #
    #   On a container fleet instance, a game server container group can be
    #   deployed multiple times (depending on the compute resources of the
    #   instance). This means that all containers in the container group are
    #   replicated together.
    #
    # * A **per-instance container group** has containers for processes that
    #   aren't replicated on a container fleet instance. This might include
    #   background services, logging, test processes, or processes that need
    #   to persist independently of the game server container group. When
    #   building a per-instance container group, you can define up to 10
    #   support containers.
    #
    # <note markdown="1"> This operation requires Identity and Access Management (IAM)
    # permissions to access container images in Amazon ECR repositories. See
    # [ IAM permissions for Amazon GameLift Servers][2] for help setting the
    # appropriate permissions.
    #
    #  </note>
    #
    # **Request options**
    #
    # Use this operation to make the following types of requests. You can
    # specify values for the minimum required parameters and customize
    # optional values later.
    #
    # * Create a game server container group definition. Provide the
    #   following required parameter values:
    #
    #   * `Name`
    #
    #   * `ContainerGroupType` (`GAME_SERVER`)
    #
    #   * `OperatingSystem` (omit to use default value)
    #
    #   * `TotalMemoryLimitMebibytes` (omit to use default value)
    #
    #   * `TotalVcpuLimit `(omit to use default value)
    #
    #   * At least one `GameServerContainerDefinition`
    #
    #     * `ContainerName`
    #
    #     * `ImageUrl`
    #
    #     * `PortConfiguration`
    #
    #     * `ServerSdkVersion` (omit to use default value)
    # * Create a per-instance container group definition. Provide the
    #   following required parameter values:
    #
    #   * `Name`
    #
    #   * `ContainerGroupType` (`PER_INSTANCE`)
    #
    #   * `OperatingSystem` (omit to use default value)
    #
    #   * `TotalMemoryLimitMebibytes` (omit to use default value)
    #
    #   * `TotalVcpuLimit `(omit to use default value)
    #
    #   * At least one `SupportContainerDefinition`
    #
    #     * `ContainerName`
    #
    #     * `ImageUrl`
    #
    # **Results**
    #
    # If successful, this request creates a `ContainerGroupDefinition`
    # resource and assigns a unique ARN value. You can update most
    # properties of a container group definition by calling
    # [UpdateContainerGroupDefinition][3], and optionally save the update as
    # a new version.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_CreateContainerFleet.html
    # [2]: https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-iam-policy-examples.html
    # [3]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_UpdateContainerGroupDefinition.html
    #
    # @option params [required, String] :name
    #   A descriptive identifier for the container group definition. The name
    #   value must be unique in an Amazon Web Services Region.
    #
    # @option params [String] :container_group_type
    #   The type of container group being defined. Container group type
    #   determines how Amazon GameLift Servers deploys the container group on
    #   each fleet instance.
    #
    #   Default value: `GAME_SERVER`
    #
    # @option params [required, Integer] :total_memory_limit_mebibytes
    #   The maximum amount of memory (in MiB) to allocate to the container
    #   group. All containers in the group share this memory. If you specify
    #   memory limits for an individual container, the total value must be
    #   greater than any individual container's memory limit.
    #
    #   Default value: 1024
    #
    # @option params [required, Float] :total_vcpu_limit
    #   The maximum amount of vCPU units to allocate to the container group (1
    #   vCPU is equal to 1024 CPU units). All containers in the group share
    #   this memory. If you specify vCPU limits for individual containers, the
    #   total value must be equal to or greater than the sum of the CPU limits
    #   for all containers in the group.
    #
    #   Default value: 1
    #
    # @option params [Types::GameServerContainerDefinitionInput] :game_server_container_definition
    #   The definition for the game server container in this group. Define a
    #   game server container only when the container group type is
    #   `GAME_SERVER`. Game server containers specify a container image with
    #   your game server build. You can pass in your container definitions as
    #   a JSON file.
    #
    # @option params [Array<Types::SupportContainerDefinitionInput>] :support_container_definitions
    #   One or more definition for support containers in this group. You can
    #   define a support container in any type of container group. You can
    #   pass in your container definitions as a JSON file.
    #
    # @option params [required, String] :operating_system
    #   The platform that all containers in the group use. Containers in a
    #   group must run on the same operating system.
    #
    #   Default value: `AMAZON_LINUX_2023`
    #
    #   <note markdown="1"> Amazon Linux 2 (AL2) will reach end of support on 6/30/2025. See more
    #   details in the [Amazon Linux 2 FAQs][1]. For game servers that are
    #   hosted on AL2 and use server SDK version 4.x for Amazon GameLift
    #   Servers, first update the game server build to server SDK 5.x, and
    #   then deploy to AL2023 instances. See [ Migrate to server SDK version
    #   5.][2]
    #
    #    </note>
    #
    #
    #
    #   [1]: http://aws.amazon.com/amazon-linux-2/faqs/
    #   [2]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-serversdk5-migration.html
    #
    # @option params [String] :version_description
    #   A description for the initial version of this container group
    #   definition.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of labels to assign to the container group definition resource.
    #   Tags are developer-defined key-value pairs. Tagging Amazon Web
    #   Services resources are useful for resource management, access
    #   management and cost allocation. For more information, see [ Tagging
    #   Amazon Web Services Resources][1] in the *Amazon Web Services General
    #   Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    #
    # @return [Types::CreateContainerGroupDefinitionOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateContainerGroupDefinitionOutput#container_group_definition #container_group_definition} => Types::ContainerGroupDefinition
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_container_group_definition({
    #     name: "ContainerGroupDefinitionName", # required
    #     container_group_type: "GAME_SERVER", # accepts GAME_SERVER, PER_INSTANCE
    #     total_memory_limit_mebibytes: 1, # required
    #     total_vcpu_limit: 1.0, # required
    #     game_server_container_definition: {
    #       container_name: "NonZeroAnd128MaxAsciiString", # required
    #       depends_on: [
    #         {
    #           container_name: "NonZeroAnd128MaxAsciiString", # required
    #           condition: "START", # required, accepts START, COMPLETE, SUCCESS, HEALTHY
    #         },
    #       ],
    #       mount_points: [
    #         {
    #           instance_path: "InstancePathString", # required
    #           container_path: "ContainerPathString",
    #           access_level: "READ_ONLY", # accepts READ_ONLY, READ_AND_WRITE
    #         },
    #       ],
    #       environment_override: [
    #         {
    #           name: "NonZeroAnd255MaxString", # required
    #           value: "NonZeroAnd255MaxString", # required
    #         },
    #       ],
    #       image_uri: "ImageUriString", # required
    #       port_configuration: { # required
    #         container_port_ranges: [ # required
    #           {
    #             from_port: 1, # required
    #             to_port: 1, # required
    #             protocol: "TCP", # required, accepts TCP, UDP
    #           },
    #         ],
    #       },
    #       server_sdk_version: "ServerSdkVersion", # required
    #     },
    #     support_container_definitions: [
    #       {
    #         container_name: "NonZeroAnd128MaxAsciiString", # required
    #         depends_on: [
    #           {
    #             container_name: "NonZeroAnd128MaxAsciiString", # required
    #             condition: "START", # required, accepts START, COMPLETE, SUCCESS, HEALTHY
    #           },
    #         ],
    #         mount_points: [
    #           {
    #             instance_path: "InstancePathString", # required
    #             container_path: "ContainerPathString",
    #             access_level: "READ_ONLY", # accepts READ_ONLY, READ_AND_WRITE
    #           },
    #         ],
    #         environment_override: [
    #           {
    #             name: "NonZeroAnd255MaxString", # required
    #             value: "NonZeroAnd255MaxString", # required
    #           },
    #         ],
    #         essential: false,
    #         health_check: {
    #           command: ["NonZeroAnd255MaxString"], # required
    #           interval: 1,
    #           retries: 1,
    #           start_period: 1,
    #           timeout: 1,
    #         },
    #         image_uri: "ImageUriString", # required
    #         memory_hard_limit_mebibytes: 1,
    #         port_configuration: {
    #           container_port_ranges: [ # required
    #             {
    #               from_port: 1, # required
    #               to_port: 1, # required
    #               protocol: "TCP", # required, accepts TCP, UDP
    #             },
    #           ],
    #         },
    #         vcpu: 1.0,
    #       },
    #     ],
    #     operating_system: "AMAZON_LINUX_2023", # required, accepts AMAZON_LINUX_2023
    #     version_description: "NonZeroAndMaxString",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.container_group_definition.container_group_definition_arn #=> String
    #   resp.container_group_definition.creation_time #=> Time
    #   resp.container_group_definition.operating_system #=> String, one of "AMAZON_LINUX_2023"
    #   resp.container_group_definition.name #=> String
    #   resp.container_group_definition.container_group_type #=> String, one of "GAME_SERVER", "PER_INSTANCE"
    #   resp.container_group_definition.total_memory_limit_mebibytes #=> Integer
    #   resp.container_group_definition.total_vcpu_limit #=> Float
    #   resp.container_group_definition.game_server_container_definition.container_name #=> String
    #   resp.container_group_definition.game_server_container_definition.depends_on #=> Array
    #   resp.container_group_definition.game_server_container_definition.depends_on[0].container_name #=> String
    #   resp.container_group_definition.game_server_container_definition.depends_on[0].condition #=> String, one of "START", "COMPLETE", "SUCCESS", "HEALTHY"
    #   resp.container_group_definition.game_server_container_definition.mount_points #=> Array
    #   resp.container_group_definition.game_server_container_definition.mount_points[0].instance_path #=> String
    #   resp.container_group_definition.game_server_container_definition.mount_points[0].container_path #=> String
    #   resp.container_group_definition.game_server_container_definition.mount_points[0].access_level #=> String, one of "READ_ONLY", "READ_AND_WRITE"
    #   resp.container_group_definition.game_server_container_definition.environment_override #=> Array
    #   resp.container_group_definition.game_server_container_definition.environment_override[0].name #=> String
    #   resp.container_group_definition.game_server_container_definition.environment_override[0].value #=> String
    #   resp.container_group_definition.game_server_container_definition.image_uri #=> String
    #   resp.container_group_definition.game_server_container_definition.port_configuration.container_port_ranges #=> Array
    #   resp.container_group_definition.game_server_container_definition.port_configuration.container_port_ranges[0].from_port #=> Integer
    #   resp.container_group_definition.game_server_container_definition.port_configuration.container_port_ranges[0].to_port #=> Integer
    #   resp.container_group_definition.game_server_container_definition.port_configuration.container_port_ranges[0].protocol #=> String, one of "TCP", "UDP"
    #   resp.container_group_definition.game_server_container_definition.resolved_image_digest #=> String
    #   resp.container_group_definition.game_server_container_definition.server_sdk_version #=> String
    #   resp.container_group_definition.support_container_definitions #=> Array
    #   resp.container_group_definition.support_container_definitions[0].container_name #=> String
    #   resp.container_group_definition.support_container_definitions[0].depends_on #=> Array
    #   resp.container_group_definition.support_container_definitions[0].depends_on[0].container_name #=> String
    #   resp.container_group_definition.support_container_definitions[0].depends_on[0].condition #=> String, one of "START", "COMPLETE", "SUCCESS", "HEALTHY"
    #   resp.container_group_definition.support_container_definitions[0].mount_points #=> Array
    #   resp.container_group_definition.support_container_definitions[0].mount_points[0].instance_path #=> String
    #   resp.container_group_definition.support_container_definitions[0].mount_points[0].container_path #=> String
    #   resp.container_group_definition.support_container_definitions[0].mount_points[0].access_level #=> String, one of "READ_ONLY", "READ_AND_WRITE"
    #   resp.container_group_definition.support_container_definitions[0].environment_override #=> Array
    #   resp.container_group_definition.support_container_definitions[0].environment_override[0].name #=> String
    #   resp.container_group_definition.support_container_definitions[0].environment_override[0].value #=> String
    #   resp.container_group_definition.support_container_definitions[0].essential #=> Boolean
    #   resp.container_group_definition.support_container_definitions[0].health_check.command #=> Array
    #   resp.container_group_definition.support_container_definitions[0].health_check.command[0] #=> String
    #   resp.container_group_definition.support_container_definitions[0].health_check.interval #=> Integer
    #   resp.container_group_definition.support_container_definitions[0].health_check.retries #=> Integer
    #   resp.container_group_definition.support_container_definitions[0].health_check.start_period #=> Integer
    #   resp.container_group_definition.support_container_definitions[0].health_check.timeout #=> Integer
    #   resp.container_group_definition.support_container_definitions[0].image_uri #=> String
    #   resp.container_group_definition.support_container_definitions[0].memory_hard_limit_mebibytes #=> Integer
    #   resp.container_group_definition.support_container_definitions[0].port_configuration.container_port_ranges #=> Array
    #   resp.container_group_definition.support_container_definitions[0].port_configuration.container_port_ranges[0].from_port #=> Integer
    #   resp.container_group_definition.support_container_definitions[0].port_configuration.container_port_ranges[0].to_port #=> Integer
    #   resp.container_group_definition.support_container_definitions[0].port_configuration.container_port_ranges[0].protocol #=> String, one of "TCP", "UDP"
    #   resp.container_group_definition.support_container_definitions[0].resolved_image_digest #=> String
    #   resp.container_group_definition.support_container_definitions[0].vcpu #=> Float
    #   resp.container_group_definition.version_number #=> Integer
    #   resp.container_group_definition.version_description #=> String
    #   resp.container_group_definition.status #=> String, one of "READY", "COPYING", "FAILED"
    #   resp.container_group_definition.status_reason #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/CreateContainerGroupDefinition AWS API Documentation
    #
    # @overload create_container_group_definition(params = {})
    # @param [Hash] params ({})
    def create_container_group_definition(params = {}, options = {})
      req = build_request(:create_container_group_definition, params)
      req.send_request(options)
    end

    # Creates a fleet of compute resources to host your game servers. Use
    # this operation to set up the following types of fleets based on
    # compute type:
    #
    # **Managed EC2 fleet**
    #
    # An EC2 fleet is a set of Amazon Elastic Compute Cloud (Amazon EC2)
    # instances. Your game server build is deployed to each fleet instance.
    # Amazon GameLift Servers manages the fleet's instances and controls
    # the lifecycle of game server processes, which host game sessions for
    # players. EC2 fleets can have instances in multiple locations. Each
    # instance in the fleet is designated a `Compute`.
    #
    # To create an EC2 fleet, provide these required parameters:
    #
    # * Either `BuildId` or `ScriptId`
    #
    # * `ComputeType` set to `EC2` (the default value)
    #
    # * `EC2InboundPermissions`
    #
    # * `EC2InstanceType`
    #
    # * `FleetType`
    #
    # * `Name`
    #
    # * `RuntimeConfiguration` with at least one `ServerProcesses`
    #   configuration
    #
    # If successful, this operation creates a new fleet resource and places
    # it in `NEW` status while Amazon GameLift Servers initiates the [fleet
    # creation workflow][1]. To debug your fleet, fetch logs, view
    # performance metrics or other actions on the fleet, create a
    # development fleet with port 22/3389 open. As a best practice, we
    # recommend opening ports for remote access only when you need them and
    # closing them when you're finished.
    #
    # When the fleet status is ACTIVE, you can adjust capacity settings and
    # turn autoscaling on/off for each location.
    #
    # **Anywhere fleet**
    #
    # An Anywhere fleet represents compute resources that are not owned or
    # managed by Amazon GameLift Servers. You might create an Anywhere fleet
    # with your local machine for testing, or use one to host game servers
    # with on-premises hardware or other game hosting solutions.
    #
    # To create an Anywhere fleet, provide these required parameters:
    #
    # * `ComputeType` set to `ANYWHERE`
    #
    # * `Locations` specifying a custom location
    #
    # * `Name`
    #
    # If successful, this operation creates a new fleet resource and places
    # it in `ACTIVE` status. You can register computes with a fleet in
    # `ACTIVE` status.
    #
    # **Learn more**
    #
    # [Setting up fleets][2]
    #
    # [Debug fleet creation issues][3]
    #
    # [Multi-location fleets][2]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-creating-all.html#fleets-creation-workflow
    # [2]: https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html
    # [3]: https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-creating-debug.html#fleets-creating-debug-creation
    #
    # @option params [required, String] :name
    #   A descriptive label that is associated with a fleet. Fleet names do
    #   not need to be unique.
    #
    # @option params [String] :description
    #   A description for the fleet.
    #
    # @option params [String] :build_id
    #   The unique identifier for a custom game server build to be deployed to
    #   a fleet with compute type `EC2`. You can use either the build ID or
    #   ARN. The build must be uploaded to Amazon GameLift Servers and in
    #   `READY` status. This fleet property can't be changed after the fleet
    #   is created.
    #
    # @option params [String] :script_id
    #   The unique identifier for a Realtime configuration script to be
    #   deployed to a fleet with compute type `EC2`. You can use either the
    #   script ID or ARN. Scripts must be uploaded to Amazon GameLift Servers
    #   prior to creating the fleet. This fleet property can't be changed
    #   after the fleet is created.
    #
    # @option params [String] :server_launch_path
    #   **This parameter is no longer used.** Specify a server launch path
    #   using the `RuntimeConfiguration` parameter. Requests that use this
    #   parameter instead continue to be valid.
    #
    # @option params [String] :server_launch_parameters
    #   **This parameter is no longer used.** Specify server launch parameters
    #   using the `RuntimeConfiguration` parameter. Requests that use this
    #   parameter instead continue to be valid.
    #
    # @option params [Array<String>] :log_paths
    #   **This parameter is no longer used.** To specify where Amazon GameLift
    #   Servers should store log files once a server process shuts down, use
    #   the Amazon GameLift Servers server API `ProcessReady()` and specify
    #   one or more directory paths in `logParameters`. For more information,
    #   see [Initialize the server process][1] in the *Amazon GameLift Servers
    #   Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html#gamelift-sdk-server-initialize
    #
    # @option params [String] :ec2_instance_type
    #   The Amazon GameLift Servers-supported Amazon EC2 instance type to use
    #   with managed EC2 fleets. Instance type determines the computing
    #   resources that will be used to host your game servers, including CPU,
    #   memory, storage, and networking capacity. See [Amazon Elastic Compute
    #   Cloud Instance Types][1] for detailed descriptions of Amazon EC2
    #   instance types.
    #
    #
    #
    #   [1]: http://aws.amazon.com/ec2/instance-types/
    #
    # @option params [Array<Types::IpPermission>] :ec2_inbound_permissions
    #   The IP address ranges and port settings that allow inbound traffic to
    #   access game server processes and other processes on this fleet. Set
    #   this parameter for managed EC2 fleets. You can leave this parameter
    #   empty when creating the fleet, but you must call
    #   [https://docs.aws.amazon.com/gamelift/latest/apireference/API\_UpdateFleetPortSettings][1]
    #   to set it before players can connect to game sessions. As a best
    #   practice, we recommend opening ports for remote access only when you
    #   need them and closing them when you're finished. For Amazon GameLift
    #   Servers Realtime fleets, Amazon GameLift Servers automatically sets
    #   TCP and UDP ranges.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_UpdateFleetPortSettings
    #
    # @option params [String] :new_game_session_protection_policy
    #   The status of termination protection for active game sessions on the
    #   fleet. By default, this property is set to `NoProtection`. You can
    #   also set game session protection for an individual game session by
    #   calling
    #   [UpdateGameSession](gamelift/latest/apireference/API_UpdateGameSession.html).
    #
    #   * **NoProtection** - Game sessions can be terminated during active
    #     gameplay as a result of a scale-down event.
    #
    #   * **FullProtection** - Game sessions in `ACTIVE` status cannot be
    #     terminated during a scale-down event.
    #
    # @option params [Types::RuntimeConfiguration] :runtime_configuration
    #   Instructions for how to launch and run server processes on the fleet.
    #   Set runtime configuration for managed EC2 fleets. For an Anywhere
    #   fleets, set this parameter only if the fleet is running the Amazon
    #   GameLift Servers Agent. The runtime configuration defines one or more
    #   server process configurations. Each server process identifies a game
    #   executable or Realtime script file and the number of processes to run
    #   concurrently.
    #
    #   <note markdown="1"> This parameter replaces the parameters `ServerLaunchPath` and
    #   `ServerLaunchParameters`, which are still supported for backward
    #   compatibility.
    #
    #    </note>
    #
    # @option params [Types::ResourceCreationLimitPolicy] :resource_creation_limit_policy
    #   A policy that limits the number of game sessions that an individual
    #   player can create on instances in this fleet within a specified span
    #   of time.
    #
    # @option params [Array<String>] :metric_groups
    #   The name of an Amazon Web Services CloudWatch metric group to add this
    #   fleet to. A metric group is used to aggregate the metrics for multiple
    #   fleets. You can specify an existing metric group name or set a new
    #   name to create a new metric group. A fleet can be included in only one
    #   metric group at a time.
    #
    # @option params [String] :peer_vpc_aws_account_id
    #   Used when peering your Amazon GameLift Servers fleet with a VPC, the
    #   unique identifier for the Amazon Web Services account that owns the
    #   VPC. You can find your account ID in the Amazon Web Services
    #   Management Console under account settings.
    #
    # @option params [String] :peer_vpc_id
    #   A unique identifier for a VPC with resources to be accessed by your
    #   Amazon GameLift Servers fleet. The VPC must be in the same Region as
    #   your fleet. To look up a VPC ID, use the [VPC Dashboard][1] in the
    #   Amazon Web Services Management Console. Learn more about VPC peering
    #   in [VPC Peering with Amazon GameLift Servers Fleets][2].
    #
    #
    #
    #   [1]: https://console.aws.amazon.com/vpc/
    #   [2]: https://docs.aws.amazon.com/gamelift/latest/developerguide/vpc-peering.html
    #
    # @option params [String] :fleet_type
    #   Indicates whether to use On-Demand or Spot instances for this fleet.
    #   By default, this property is set to `ON_DEMAND`. Learn more about when
    #   to use [ On-Demand versus Spot Instances][1]. This fleet property
    #   can't be changed after the fleet is created.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-ec2-instances.html#gamelift-ec2-instances-spot
    #
    # @option params [String] :instance_role_arn
    #   A unique identifier for an IAM role that manages access to your Amazon
    #   Web Services services. With an instance role ARN set, any application
    #   that runs on an instance in this fleet can assume the role, including
    #   install scripts, server processes, and daemons (background processes).
    #   Create a role or look up a role's ARN by using the [IAM dashboard][1]
    #   in the Amazon Web Services Management Console. Learn more about using
    #   on-box credentials for your game servers at [ Access external
    #   resources from a game server][2]. This fleet property can't be
    #   changed after the fleet is created.
    #
    #
    #
    #   [1]: https://console.aws.amazon.com/iam/
    #   [2]: https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-resources.html
    #
    # @option params [Types::CertificateConfiguration] :certificate_configuration
    #   Prompts Amazon GameLift Servers to generate a TLS/SSL certificate for
    #   the fleet. Amazon GameLift Servers uses the certificates to encrypt
    #   traffic between game clients and the game servers running on Amazon
    #   GameLift Servers. By default, the `CertificateConfiguration` is
    #   `DISABLED`. You can't change this property after you create the
    #   fleet.
    #
    #   Certificate Manager (ACM) certificates expire after 13 months.
    #   Certificate expiration can cause fleets to fail, preventing players
    #   from connecting to instances in the fleet. We recommend you replace
    #   fleets before 13 months, consider using fleet aliases for a smooth
    #   transition.
    #
    #   <note markdown="1"> ACM isn't available in all Amazon Web Services regions. A fleet
    #   creation request with certificate generation enabled in an unsupported
    #   Region, fails with a 4xx error. For more information about the
    #   supported Regions, see [Supported Regions][1] in the *Certificate
    #   Manager User Guide*.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/acm/latest/userguide/acm-regions.html
    #
    # @option params [Array<Types::LocationConfiguration>] :locations
    #   A set of remote locations to deploy additional instances to and manage
    #   as a multi-location fleet. Use this parameter when creating a fleet in
    #   Amazon Web Services Regions that support multiple locations. You can
    #   add any Amazon Web Services Region or Local Zone that's supported by
    #   Amazon GameLift Servers. Provide a list of one or more Amazon Web
    #   Services Region codes, such as `us-west-2`, or Local Zone names. When
    #   using this parameter, Amazon GameLift Servers requires you to include
    #   your home location in the request. For a list of supported Regions and
    #   Local Zones, see [ Amazon GameLift Servers service locations][1] for
    #   managed hosting.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-regions.html
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of labels to assign to the new fleet resource. Tags are
    #   developer-defined key-value pairs. Tagging Amazon Web Services
    #   resources are useful for resource management, access management and
    #   cost allocation. For more information, see [ Tagging Amazon Web
    #   Services Resources][1] in the *Amazon Web Services General Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    #
    # @option params [String] :compute_type
    #   The type of compute resource used to host your game servers.
    #
    #   * `EC2` – The game server build is deployed to Amazon EC2 instances
    #     for cloud hosting. This is the default setting.
    #
    #   * `ANYWHERE` – Game servers and supporting software are deployed to
    #     compute resources that you provide and manage. With this compute
    #     type, you can also set the `AnywhereConfiguration` parameter.
    #
    # @option params [Types::AnywhereConfiguration] :anywhere_configuration
    #   Amazon GameLift Servers Anywhere configuration options.
    #
    # @option params [String] :instance_role_credentials_provider
    #   Prompts Amazon GameLift Servers to generate a shared credentials file
    #   for the IAM role that's defined in `InstanceRoleArn`. The shared
    #   credentials file is stored on each fleet instance and refreshed as
    #   needed. Use shared credentials for applications that are deployed
    #   along with the game server executable, if the game server is
    #   integrated with server SDK version 5.x. For more information about
    #   using shared credentials, see [ Communicate with other Amazon Web
    #   Services resources from your fleets][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-resources.html
    #
    # @return [Types::CreateFleetOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateFleetOutput#fleet_attributes #fleet_attributes} => Types::FleetAttributes
    #   * {Types::CreateFleetOutput#location_states #location_states} => Array&lt;Types::LocationState&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_fleet({
    #     name: "NonZeroAndMaxString", # required
    #     description: "NonZeroAndMaxString",
    #     build_id: "BuildIdOrArn",
    #     script_id: "ScriptIdOrArn",
    #     server_launch_path: "LaunchPathStringModel",
    #     server_launch_parameters: "LaunchParametersStringModel",
    #     log_paths: ["NonZeroAndMaxString"],
    #     ec2_instance_type: "t2.micro", # accepts t2.micro, t2.small, t2.medium, t2.large, c3.large, c3.xlarge, c3.2xlarge, c3.4xlarge, c3.8xlarge, c4.large, c4.xlarge, c4.2xlarge, c4.4xlarge, c4.8xlarge, c5.large, c5.xlarge, c5.2xlarge, c5.4xlarge, c5.9xlarge, c5.12xlarge, c5.18xlarge, c5.24xlarge, c5a.large, c5a.xlarge, c5a.2xlarge, c5a.4xlarge, c5a.8xlarge, c5a.12xlarge, c5a.16xlarge, c5a.24xlarge, r3.large, r3.xlarge, r3.2xlarge, r3.4xlarge, r3.8xlarge, r4.large, r4.xlarge, r4.2xlarge, r4.4xlarge, r4.8xlarge, r4.16xlarge, r5.large, r5.xlarge, r5.2xlarge, r5.4xlarge, r5.8xlarge, r5.12xlarge, r5.16xlarge, r5.24xlarge, r5a.large, r5a.xlarge, r5a.2xlarge, r5a.4xlarge, r5a.8xlarge, r5a.12xlarge, r5a.16xlarge, r5a.24xlarge, m3.medium, m3.large, m3.xlarge, m3.2xlarge, m4.large, m4.xlarge, m4.2xlarge, m4.4xlarge, m4.10xlarge, m5.large, m5.xlarge, m5.2xlarge, m5.4xlarge, m5.8xlarge, m5.12xlarge, m5.16xlarge, m5.24xlarge, m5a.large, m5a.xlarge, m5a.2xlarge, m5a.4xlarge, m5a.8xlarge, m5a.12xlarge, m5a.16xlarge, m5a.24xlarge, c5d.large, c5d.xlarge, c5d.2xlarge, c5d.4xlarge, c5d.9xlarge, c5d.12xlarge, c5d.18xlarge, c5d.24xlarge, c6a.large, c6a.xlarge, c6a.2xlarge, c6a.4xlarge, c6a.8xlarge, c6a.12xlarge, c6a.16xlarge, c6a.24xlarge, c6i.large, c6i.xlarge, c6i.2xlarge, c6i.4xlarge, c6i.8xlarge, c6i.12xlarge, c6i.16xlarge, c6i.24xlarge, r5d.large, r5d.xlarge, r5d.2xlarge, r5d.4xlarge, r5d.8xlarge, r5d.12xlarge, r5d.16xlarge, r5d.24xlarge, m6g.medium, m6g.large, m6g.xlarge, m6g.2xlarge, m6g.4xlarge, m6g.8xlarge, m6g.12xlarge, m6g.16xlarge, c6g.medium, c6g.large, c6g.xlarge, c6g.2xlarge, c6g.4xlarge, c6g.8xlarge, c6g.12xlarge, c6g.16xlarge, r6g.medium, r6g.large, r6g.xlarge, r6g.2xlarge, r6g.4xlarge, r6g.8xlarge, r6g.12xlarge, r6g.16xlarge, c6gn.medium, c6gn.large, c6gn.xlarge, c6gn.2xlarge, c6gn.4xlarge, c6gn.8xlarge, c6gn.12xlarge, c6gn.16xlarge, c7g.medium, c7g.large, c7g.xlarge, c7g.2xlarge, c7g.4xlarge, c7g.8xlarge, c7g.12xlarge, c7g.16xlarge, r7g.medium, r7g.large, r7g.xlarge, r7g.2xlarge, r7g.4xlarge, r7g.8xlarge, r7g.12xlarge, r7g.16xlarge, m7g.medium, m7g.large, m7g.xlarge, m7g.2xlarge, m7g.4xlarge, m7g.8xlarge, m7g.12xlarge, m7g.16xlarge, g5g.xlarge, g5g.2xlarge, g5g.4xlarge, g5g.8xlarge, g5g.16xlarge, r6i.large, r6i.xlarge, r6i.2xlarge, r6i.4xlarge, r6i.8xlarge, r6i.12xlarge, r6i.16xlarge, c6gd.medium, c6gd.large, c6gd.xlarge, c6gd.2xlarge, c6gd.4xlarge, c6gd.8xlarge, c6gd.12xlarge, c6gd.16xlarge, c6in.large, c6in.xlarge, c6in.2xlarge, c6in.4xlarge, c6in.8xlarge, c6in.12xlarge, c6in.16xlarge, c7a.medium, c7a.large, c7a.xlarge, c7a.2xlarge, c7a.4xlarge, c7a.8xlarge, c7a.12xlarge, c7a.16xlarge, c7gd.medium, c7gd.large, c7gd.xlarge, c7gd.2xlarge, c7gd.4xlarge, c7gd.8xlarge, c7gd.12xlarge, c7gd.16xlarge, c7gn.medium, c7gn.large, c7gn.xlarge, c7gn.2xlarge, c7gn.4xlarge, c7gn.8xlarge, c7gn.12xlarge, c7gn.16xlarge, c7i.large, c7i.xlarge, c7i.2xlarge, c7i.4xlarge, c7i.8xlarge, c7i.12xlarge, c7i.16xlarge, m6a.large, m6a.xlarge, m6a.2xlarge, m6a.4xlarge, m6a.8xlarge, m6a.12xlarge, m6a.16xlarge, m6gd.medium, m6gd.large, m6gd.xlarge, m6gd.2xlarge, m6gd.4xlarge, m6gd.8xlarge, m6gd.12xlarge, m6gd.16xlarge, m6i.large, m6i.xlarge, m6i.2xlarge, m6i.4xlarge, m6i.8xlarge, m6i.12xlarge, m6i.16xlarge, m7a.medium, m7a.large, m7a.xlarge, m7a.2xlarge, m7a.4xlarge, m7a.8xlarge, m7a.12xlarge, m7a.16xlarge, m7gd.medium, m7gd.large, m7gd.xlarge, m7gd.2xlarge, m7gd.4xlarge, m7gd.8xlarge, m7gd.12xlarge, m7gd.16xlarge, m7i.large, m7i.xlarge, m7i.2xlarge, m7i.4xlarge, m7i.8xlarge, m7i.12xlarge, m7i.16xlarge, r6gd.medium, r6gd.large, r6gd.xlarge, r6gd.2xlarge, r6gd.4xlarge, r6gd.8xlarge, r6gd.12xlarge, r6gd.16xlarge, r7a.medium, r7a.large, r7a.xlarge, r7a.2xlarge, r7a.4xlarge, r7a.8xlarge, r7a.12xlarge, r7a.16xlarge, r7gd.medium, r7gd.large, r7gd.xlarge, r7gd.2xlarge, r7gd.4xlarge, r7gd.8xlarge, r7gd.12xlarge, r7gd.16xlarge, r7i.large, r7i.xlarge, r7i.2xlarge, r7i.4xlarge, r7i.8xlarge, r7i.12xlarge, r7i.16xlarge, r7i.24xlarge, r7i.48xlarge, c5ad.large, c5ad.xlarge, c5ad.2xlarge, c5ad.4xlarge, c5ad.8xlarge, c5ad.12xlarge, c5ad.16xlarge, c5ad.24xlarge, c5n.large, c5n.xlarge, c5n.2xlarge, c5n.4xlarge, c5n.9xlarge, c5n.18xlarge, r5ad.large, r5ad.xlarge, r5ad.2xlarge, r5ad.4xlarge, r5ad.8xlarge, r5ad.12xlarge, r5ad.16xlarge, r5ad.24xlarge, c6id.large, c6id.xlarge, c6id.2xlarge, c6id.4xlarge, c6id.8xlarge, c6id.12xlarge, c6id.16xlarge, c6id.24xlarge, c6id.32xlarge, c8g.medium, c8g.large, c8g.xlarge, c8g.2xlarge, c8g.4xlarge, c8g.8xlarge, c8g.12xlarge, c8g.16xlarge, c8g.24xlarge, c8g.48xlarge, m5ad.large, m5ad.xlarge, m5ad.2xlarge, m5ad.4xlarge, m5ad.8xlarge, m5ad.12xlarge, m5ad.16xlarge, m5ad.24xlarge, m5d.large, m5d.xlarge, m5d.2xlarge, m5d.4xlarge, m5d.8xlarge, m5d.12xlarge, m5d.16xlarge, m5d.24xlarge, m5dn.large, m5dn.xlarge, m5dn.2xlarge, m5dn.4xlarge, m5dn.8xlarge, m5dn.12xlarge, m5dn.16xlarge, m5dn.24xlarge, m5n.large, m5n.xlarge, m5n.2xlarge, m5n.4xlarge, m5n.8xlarge, m5n.12xlarge, m5n.16xlarge, m5n.24xlarge, m6id.large, m6id.xlarge, m6id.2xlarge, m6id.4xlarge, m6id.8xlarge, m6id.12xlarge, m6id.16xlarge, m6id.24xlarge, m6id.32xlarge, m6idn.large, m6idn.xlarge, m6idn.2xlarge, m6idn.4xlarge, m6idn.8xlarge, m6idn.12xlarge, m6idn.16xlarge, m6idn.24xlarge, m6idn.32xlarge, m6in.large, m6in.xlarge, m6in.2xlarge, m6in.4xlarge, m6in.8xlarge, m6in.12xlarge, m6in.16xlarge, m6in.24xlarge, m6in.32xlarge, m8g.medium, m8g.large, m8g.xlarge, m8g.2xlarge, m8g.4xlarge, m8g.8xlarge, m8g.12xlarge, m8g.16xlarge, m8g.24xlarge, m8g.48xlarge, r5dn.large, r5dn.xlarge, r5dn.2xlarge, r5dn.4xlarge, r5dn.8xlarge, r5dn.12xlarge, r5dn.16xlarge, r5dn.24xlarge, r5n.large, r5n.xlarge, r5n.2xlarge, r5n.4xlarge, r5n.8xlarge, r5n.12xlarge, r5n.16xlarge, r5n.24xlarge, r6a.large, r6a.xlarge, r6a.2xlarge, r6a.4xlarge, r6a.8xlarge, r6a.12xlarge, r6a.16xlarge, r6a.24xlarge, r6a.32xlarge, r6a.48xlarge, r6id.large, r6id.xlarge, r6id.2xlarge, r6id.4xlarge, r6id.8xlarge, r6id.12xlarge, r6id.16xlarge, r6id.24xlarge, r6id.32xlarge, r6idn.large, r6idn.xlarge, r6idn.2xlarge, r6idn.4xlarge, r6idn.8xlarge, r6idn.12xlarge, r6idn.16xlarge, r6idn.24xlarge, r6idn.32xlarge, r6in.large, r6in.xlarge, r6in.2xlarge, r6in.4xlarge, r6in.8xlarge, r6in.12xlarge, r6in.16xlarge, r6in.24xlarge, r6in.32xlarge, r8g.medium, r8g.large, r8g.xlarge, r8g.2xlarge, r8g.4xlarge, r8g.8xlarge, r8g.12xlarge, r8g.16xlarge, r8g.24xlarge, r8g.48xlarge, m4.16xlarge, c6a.32xlarge, c6a.48xlarge, c6i.32xlarge, r6i.24xlarge, r6i.32xlarge, c6in.24xlarge, c6in.32xlarge, c7a.24xlarge, c7a.32xlarge, c7a.48xlarge, c7i.24xlarge, c7i.48xlarge, m6a.24xlarge, m6a.32xlarge, m6a.48xlarge, m6i.24xlarge, m6i.32xlarge, m7a.24xlarge, m7a.32xlarge, m7a.48xlarge, m7i.24xlarge, m7i.48xlarge, r7a.24xlarge, r7a.32xlarge, r7a.48xlarge
    #     ec2_inbound_permissions: [
    #       {
    #         from_port: 1, # required
    #         to_port: 1, # required
    #         ip_range: "IpRange", # required
    #         protocol: "TCP", # required, accepts TCP, UDP
    #       },
    #     ],
    #     new_game_session_protection_policy: "NoProtection", # accepts NoProtection, FullProtection
    #     runtime_configuration: {
    #       server_processes: [
    #         {
    #           launch_path: "LaunchPathStringModel", # required
    #           parameters: "LaunchParametersStringModel",
    #           concurrent_executions: 1, # required
    #         },
    #       ],
    #       max_concurrent_game_session_activations: 1,
    #       game_session_activation_timeout_seconds: 1,
    #     },
    #     resource_creation_limit_policy: {
    #       new_game_sessions_per_creator: 1,
    #       policy_period_in_minutes: 1,
    #     },
    #     metric_groups: ["MetricGroup"],
    #     peer_vpc_aws_account_id: "NonZeroAndMaxString",
    #     peer_vpc_id: "NonZeroAndMaxString",
    #     fleet_type: "ON_DEMAND", # accepts ON_DEMAND, SPOT
    #     instance_role_arn: "NonEmptyString",
    #     certificate_configuration: {
    #       certificate_type: "DISABLED", # required, accepts DISABLED, GENERATED
    #     },
    #     locations: [
    #       {
    #         location: "LocationStringModel", # required
    #       },
    #     ],
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     compute_type: "EC2", # accepts EC2, ANYWHERE
    #     anywhere_configuration: {
    #       cost: "NonNegativeLimitedLengthDouble", # required
    #     },
    #     instance_role_credentials_provider: "SHARED_CREDENTIAL_FILE", # accepts SHARED_CREDENTIAL_FILE
    #   })
    #
    # @example Response structure
    #
    #   resp.fleet_attributes.fleet_id #=> String
    #   resp.fleet_attributes.fleet_arn #=> String
    #   resp.fleet_attributes.fleet_type #=> String, one of "ON_DEMAND", "SPOT"
    #   resp.fleet_attributes.instance_type #=> String, one of "t2.micro", "t2.small", "t2.medium", "t2.large", "c3.large", "c3.xlarge", "c3.2xlarge", "c3.4xlarge", "c3.8xlarge", "c4.large", "c4.xlarge", "c4.2xlarge", "c4.4xlarge", "c4.8xlarge", "c5.large", "c5.xlarge", "c5.2xlarge", "c5.4xlarge", "c5.9xlarge", "c5.12xlarge", "c5.18xlarge", "c5.24xlarge", "c5a.large", "c5a.xlarge", "c5a.2xlarge", "c5a.4xlarge", "c5a.8xlarge", "c5a.12xlarge", "c5a.16xlarge", "c5a.24xlarge", "r3.large", "r3.xlarge", "r3.2xlarge", "r3.4xlarge", "r3.8xlarge", "r4.large", "r4.xlarge", "r4.2xlarge", "r4.4xlarge", "r4.8xlarge", "r4.16xlarge", "r5.large", "r5.xlarge", "r5.2xlarge", "r5.4xlarge", "r5.8xlarge", "r5.12xlarge", "r5.16xlarge", "r5.24xlarge", "r5a.large", "r5a.xlarge", "r5a.2xlarge", "r5a.4xlarge", "r5a.8xlarge", "r5a.12xlarge", "r5a.16xlarge", "r5a.24xlarge", "m3.medium", "m3.large", "m3.xlarge", "m3.2xlarge", "m4.large", "m4.xlarge", "m4.2xlarge", "m4.4xlarge", "m4.10xlarge", "m5.large", "m5.xlarge", "m5.2xlarge", "m5.4xlarge", "m5.8xlarge", "m5.12xlarge", "m5.16xlarge", "m5.24xlarge", "m5a.large", "m5a.xlarge", "m5a.2xlarge", "m5a.4xlarge", "m5a.8xlarge", "m5a.12xlarge", "m5a.16xlarge", "m5a.24xlarge", "c5d.large", "c5d.xlarge", "c5d.2xlarge", "c5d.4xlarge", "c5d.9xlarge", "c5d.12xlarge", "c5d.18xlarge", "c5d.24xlarge", "c6a.large", "c6a.xlarge", "c6a.2xlarge", "c6a.4xlarge", "c6a.8xlarge", "c6a.12xlarge", "c6a.16xlarge", "c6a.24xlarge", "c6i.large", "c6i.xlarge", "c6i.2xlarge", "c6i.4xlarge", "c6i.8xlarge", "c6i.12xlarge", "c6i.16xlarge", "c6i.24xlarge", "r5d.large", "r5d.xlarge", "r5d.2xlarge", "r5d.4xlarge", "r5d.8xlarge", "r5d.12xlarge", "r5d.16xlarge", "r5d.24xlarge", "m6g.medium", "m6g.large", "m6g.xlarge", "m6g.2xlarge", "m6g.4xlarge", "m6g.8xlarge", "m6g.12xlarge", "m6g.16xlarge", "c6g.medium", "c6g.large", "c6g.xlarge", "c6g.2xlarge", "c6g.4xlarge", "c6g.8xlarge", "c6g.12xlarge", "c6g.16xlarge", "r6g.medium", "r6g.large", "r6g.xlarge", "r6g.2xlarge", "r6g.4xlarge", "r6g.8xlarge", "r6g.12xlarge", "r6g.16xlarge", "c6gn.medium", "c6gn.large", "c6gn.xlarge", "c6gn.2xlarge", "c6gn.4xlarge", "c6gn.8xlarge", "c6gn.12xlarge", "c6gn.16xlarge", "c7g.medium", "c7g.large", "c7g.xlarge", "c7g.2xlarge", "c7g.4xlarge", "c7g.8xlarge", "c7g.12xlarge", "c7g.16xlarge", "r7g.medium", "r7g.large", "r7g.xlarge", "r7g.2xlarge", "r7g.4xlarge", "r7g.8xlarge", "r7g.12xlarge", "r7g.16xlarge", "m7g.medium", "m7g.large", "m7g.xlarge", "m7g.2xlarge", "m7g.4xlarge", "m7g.8xlarge", "m7g.12xlarge", "m7g.16xlarge", "g5g.xlarge", "g5g.2xlarge", "g5g.4xlarge", "g5g.8xlarge", "g5g.16xlarge", "r6i.large", "r6i.xlarge", "r6i.2xlarge", "r6i.4xlarge", "r6i.8xlarge", "r6i.12xlarge", "r6i.16xlarge", "c6gd.medium", "c6gd.large", "c6gd.xlarge", "c6gd.2xlarge", "c6gd.4xlarge", "c6gd.8xlarge", "c6gd.12xlarge", "c6gd.16xlarge", "c6in.large", "c6in.xlarge", "c6in.2xlarge", "c6in.4xlarge", "c6in.8xlarge", "c6in.12xlarge", "c6in.16xlarge", "c7a.medium", "c7a.large", "c7a.xlarge", "c7a.2xlarge", "c7a.4xlarge", "c7a.8xlarge", "c7a.12xlarge", "c7a.16xlarge", "c7gd.medium", "c7gd.large", "c7gd.xlarge", "c7gd.2xlarge", "c7gd.4xlarge", "c7gd.8xlarge", "c7gd.12xlarge", "c7gd.16xlarge", "c7gn.medium", "c7gn.large", "c7gn.xlarge", "c7gn.2xlarge", "c7gn.4xlarge", "c7gn.8xlarge", "c7gn.12xlarge", "c7gn.16xlarge", "c7i.large", "c7i.xlarge", "c7i.2xlarge", "c7i.4xlarge", "c7i.8xlarge", "c7i.12xlarge", "c7i.16xlarge", "m6a.large", "m6a.xlarge", "m6a.2xlarge", "m6a.4xlarge", "m6a.8xlarge", "m6a.12xlarge", "m6a.16xlarge", "m6gd.medium", "m6gd.large", "m6gd.xlarge", "m6gd.2xlarge", "m6gd.4xlarge", "m6gd.8xlarge", "m6gd.12xlarge", "m6gd.16xlarge", "m6i.large", "m6i.xlarge", "m6i.2xlarge", "m6i.4xlarge", "m6i.8xlarge", "m6i.12xlarge", "m6i.16xlarge", "m7a.medium", "m7a.large", "m7a.xlarge", "m7a.2xlarge", "m7a.4xlarge", "m7a.8xlarge", "m7a.12xlarge", "m7a.16xlarge", "m7gd.medium", "m7gd.large", "m7gd.xlarge", "m7gd.2xlarge", "m7gd.4xlarge", "m7gd.8xlarge", "m7gd.12xlarge", "m7gd.16xlarge", "m7i.large", "m7i.xlarge", "m7i.2xlarge", "m7i.4xlarge", "m7i.8xlarge", "m7i.12xlarge", "m7i.16xlarge", "r6gd.medium", "r6gd.large", "r6gd.xlarge", "r6gd.2xlarge", "r6gd.4xlarge", "r6gd.8xlarge", "r6gd.12xlarge", "r6gd.16xlarge", "r7a.medium", "r7a.large", "r7a.xlarge", "r7a.2xlarge", "r7a.4xlarge", "r7a.8xlarge", "r7a.12xlarge", "r7a.16xlarge", "r7gd.medium", "r7gd.large", "r7gd.xlarge", "r7gd.2xlarge", "r7gd.4xlarge", "r7gd.8xlarge", "r7gd.12xlarge", "r7gd.16xlarge", "r7i.large", "r7i.xlarge", "r7i.2xlarge", "r7i.4xlarge", "r7i.8xlarge", "r7i.12xlarge", "r7i.16xlarge", "r7i.24xlarge", "r7i.48xlarge", "c5ad.large", "c5ad.xlarge", "c5ad.2xlarge", "c5ad.4xlarge", "c5ad.8xlarge", "c5ad.12xlarge", "c5ad.16xlarge", "c5ad.24xlarge", "c5n.large", "c5n.xlarge", "c5n.2xlarge", "c5n.4xlarge", "c5n.9xlarge", "c5n.18xlarge", "r5ad.large", "r5ad.xlarge", "r5ad.2xlarge", "r5ad.4xlarge", "r5ad.8xlarge", "r5ad.12xlarge", "r5ad.16xlarge", "r5ad.24xlarge", "c6id.large", "c6id.xlarge", "c6id.2xlarge", "c6id.4xlarge", "c6id.8xlarge", "c6id.12xlarge", "c6id.16xlarge", "c6id.24xlarge", "c6id.32xlarge", "c8g.medium", "c8g.large", "c8g.xlarge", "c8g.2xlarge", "c8g.4xlarge", "c8g.8xlarge", "c8g.12xlarge", "c8g.16xlarge", "c8g.24xlarge", "c8g.48xlarge", "m5ad.large", "m5ad.xlarge", "m5ad.2xlarge", "m5ad.4xlarge", "m5ad.8xlarge", "m5ad.12xlarge", "m5ad.16xlarge", "m5ad.24xlarge", "m5d.large", "m5d.xlarge", "m5d.2xlarge", "m5d.4xlarge", "m5d.8xlarge", "m5d.12xlarge", "m5d.16xlarge", "m5d.24xlarge", "m5dn.large", "m5dn.xlarge", "m5dn.2xlarge", "m5dn.4xlarge", "m5dn.8xlarge", "m5dn.12xlarge", "m5dn.16xlarge", "m5dn.24xlarge", "m5n.large", "m5n.xlarge", "m5n.2xlarge", "m5n.4xlarge", "m5n.8xlarge", "m5n.12xlarge", "m5n.16xlarge", "m5n.24xlarge", "m6id.large", "m6id.xlarge", "m6id.2xlarge", "m6id.4xlarge", "m6id.8xlarge", "m6id.12xlarge", "m6id.16xlarge", "m6id.24xlarge", "m6id.32xlarge", "m6idn.large", "m6idn.xlarge", "m6idn.2xlarge", "m6idn.4xlarge", "m6idn.8xlarge", "m6idn.12xlarge", "m6idn.16xlarge", "m6idn.24xlarge", "m6idn.32xlarge", "m6in.large", "m6in.xlarge", "m6in.2xlarge", "m6in.4xlarge", "m6in.8xlarge", "m6in.12xlarge", "m6in.16xlarge", "m6in.24xlarge", "m6in.32xlarge", "m8g.medium", "m8g.large", "m8g.xlarge", "m8g.2xlarge", "m8g.4xlarge", "m8g.8xlarge", "m8g.12xlarge", "m8g.16xlarge", "m8g.24xlarge", "m8g.48xlarge", "r5dn.large", "r5dn.xlarge", "r5dn.2xlarge", "r5dn.4xlarge", "r5dn.8xlarge", "r5dn.12xlarge", "r5dn.16xlarge", "r5dn.24xlarge", "r5n.large", "r5n.xlarge", "r5n.2xlarge", "r5n.4xlarge", "r5n.8xlarge", "r5n.12xlarge", "r5n.16xlarge", "r5n.24xlarge", "r6a.large", "r6a.xlarge", "r6a.2xlarge", "r6a.4xlarge", "r6a.8xlarge", "r6a.12xlarge", "r6a.16xlarge", "r6a.24xlarge", "r6a.32xlarge", "r6a.48xlarge", "r6id.large", "r6id.xlarge", "r6id.2xlarge", "r6id.4xlarge", "r6id.8xlarge", "r6id.12xlarge", "r6id.16xlarge", "r6id.24xlarge", "r6id.32xlarge", "r6idn.large", "r6idn.xlarge", "r6idn.2xlarge", "r6idn.4xlarge", "r6idn.8xlarge", "r6idn.12xlarge", "r6idn.16xlarge", "r6idn.24xlarge", "r6idn.32xlarge", "r6in.large", "r6in.xlarge", "r6in.2xlarge", "r6in.4xlarge", "r6in.8xlarge", "r6in.12xlarge", "r6in.16xlarge", "r6in.24xlarge", "r6in.32xlarge", "r8g.medium", "r8g.large", "r8g.xlarge", "r8g.2xlarge", "r8g.4xlarge", "r8g.8xlarge", "r8g.12xlarge", "r8g.16xlarge", "r8g.24xlarge", "r8g.48xlarge", "m4.16xlarge", "c6a.32xlarge", "c6a.48xlarge", "c6i.32xlarge", "r6i.24xlarge", "r6i.32xlarge", "c6in.24xlarge", "c6in.32xlarge", "c7a.24xlarge", "c7a.32xlarge", "c7a.48xlarge", "c7i.24xlarge", "c7i.48xlarge", "m6a.24xlarge", "m6a.32xlarge", "m6a.48xlarge", "m6i.24xlarge", "m6i.32xlarge", "m7a.24xlarge", "m7a.32xlarge", "m7a.48xlarge", "m7i.24xlarge", "m7i.48xlarge", "r7a.24xlarge", "r7a.32xlarge", "r7a.48xlarge"
    #   resp.fleet_attributes.description #=> String
    #   resp.fleet_attributes.name #=> String
    #   resp.fleet_attributes.creation_time #=> Time
    #   resp.fleet_attributes.termination_time #=> Time
    #   resp.fleet_attributes.status #=> String, one of "NEW", "DOWNLOADING", "VALIDATING", "BUILDING", "ACTIVATING", "ACTIVE", "DELETING", "ERROR", "TERMINATED", "NOT_FOUND"
    #   resp.fleet_attributes.build_id #=> String
    #   resp.fleet_attributes.build_arn #=> String
    #   resp.fleet_attributes.script_id #=> String
    #   resp.fleet_attributes.script_arn #=> String
    #   resp.fleet_attributes.server_launch_path #=> String
    #   resp.fleet_attributes.server_launch_parameters #=> String
    #   resp.fleet_attributes.log_paths #=> Array
    #   resp.fleet_attributes.log_paths[0] #=> String
    #   resp.fleet_attributes.new_game_session_protection_policy #=> String, one of "NoProtection", "FullProtection"
    #   resp.fleet_attributes.operating_system #=> String, one of "WINDOWS_2012", "AMAZON_LINUX", "AMAZON_LINUX_2", "WINDOWS_2016", "AMAZON_LINUX_2023"
    #   resp.fleet_attributes.resource_creation_limit_policy.new_game_sessions_per_creator #=> Integer
    #   resp.fleet_attributes.resource_creation_limit_policy.policy_period_in_minutes #=> Integer
    #   resp.fleet_attributes.metric_groups #=> Array
    #   resp.fleet_attributes.metric_groups[0] #=> String
    #   resp.fleet_attributes.stopped_actions #=> Array
    #   resp.fleet_attributes.stopped_actions[0] #=> String, one of "AUTO_SCALING"
    #   resp.fleet_attributes.instance_role_arn #=> String
    #   resp.fleet_attributes.certificate_configuration.certificate_type #=> String, one of "DISABLED", "GENERATED"
    #   resp.fleet_attributes.compute_type #=> String, one of "EC2", "ANYWHERE"
    #   resp.fleet_attributes.anywhere_configuration.cost #=> String
    #   resp.fleet_attributes.instance_role_credentials_provider #=> String, one of "SHARED_CREDENTIAL_FILE"
    #   resp.location_states #=> Array
    #   resp.location_states[0].location #=> String
    #   resp.location_states[0].status #=> String, one of "NEW", "DOWNLOADING", "VALIDATING", "BUILDING", "ACTIVATING", "ACTIVE", "DELETING", "ERROR", "TERMINATED", "NOT_FOUND"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/CreateFleet AWS API Documentation
    #
    # @overload create_fleet(params = {})
    # @param [Hash] params ({})
    def create_fleet(params = {}, options = {})
      req = build_request(:create_fleet, params)
      req.send_request(options)
    end

    # Adds remote locations to an EC2 and begins populating the new
    # locations with instances. The new instances conform to the fleet's
    # instance type, auto-scaling, and other configuration settings.
    #
    # <note markdown="1"> You can't add remote locations to a fleet that resides in an Amazon
    # Web Services Region that doesn't support multiple locations. Fleets
    # created prior to March 2021 can't support multiple locations.
    #
    #  </note>
    #
    # To add fleet locations, specify the fleet to be updated and provide a
    # list of one or more locations.
    #
    # If successful, this operation returns the list of added locations with
    # their status set to `NEW`. Amazon GameLift Servers initiates the
    # process of starting an instance in each added location. You can track
    # the status of each new location by monitoring location creation events
    # using [DescribeFleetEvents][1].
    #
    # **Learn more**
    #
    # [Setting up fleets][2]
    #
    # [Update fleet locations][3]
    #
    # [ Amazon GameLift Servers service locations][4] for managed hosting.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_DescribeFleetEvents.html
    # [2]: https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html
    # [3]: https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-editing.html#fleets-update-locations
    # [4]: https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-regions.html
    #
    # @option params [required, String] :fleet_id
    #   A unique identifier for the fleet to add locations to. You can use
    #   either the fleet ID or ARN value.
    #
    # @option params [required, Array<Types::LocationConfiguration>] :locations
    #   A list of locations to deploy additional instances to and manage as
    #   part of the fleet. You can add any Amazon GameLift Servers-supported
    #   Amazon Web Services Region as a remote location, in the form of an
    #   Amazon Web Services Region code such as `us-west-2`.
    #
    # @return [Types::CreateFleetLocationsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateFleetLocationsOutput#fleet_id #fleet_id} => String
    #   * {Types::CreateFleetLocationsOutput#fleet_arn #fleet_arn} => String
    #   * {Types::CreateFleetLocationsOutput#location_states #location_states} => Array&lt;Types::LocationState&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_fleet_locations({
    #     fleet_id: "FleetIdOrArn", # required
    #     locations: [ # required
    #       {
    #         location: "LocationStringModel", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.fleet_id #=> String
    #   resp.fleet_arn #=> String
    #   resp.location_states #=> Array
    #   resp.location_states[0].location #=> String
    #   resp.location_states[0].status #=> String, one of "NEW", "DOWNLOADING", "VALIDATING", "BUILDING", "ACTIVATING", "ACTIVE", "DELETING", "ERROR", "TERMINATED", "NOT_FOUND"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/CreateFleetLocations AWS API Documentation
    #
    # @overload create_fleet_locations(params = {})
    # @param [Hash] params ({})
    def create_fleet_locations(params = {}, options = {})
      req = build_request(:create_fleet_locations, params)
      req.send_request(options)
    end

    # **This operation is used with the Amazon GameLift Servers FleetIQ
    # solution and game server groups.**
    #
    # Creates a Amazon GameLift Servers FleetIQ game server group for
    # managing game hosting on a collection of Amazon Elastic Compute Cloud
    # instances for game hosting. This operation creates the game server
    # group, creates an Auto Scaling group in your Amazon Web Services
    # account, and establishes a link between the two groups. You can view
    # the status of your game server groups in the Amazon GameLift Servers
    # console. Game server group metrics and events are emitted to Amazon
    # CloudWatch.
    #
    # Before creating a new game server group, you must have the following:
    #
    # * An Amazon Elastic Compute Cloud launch template that specifies how
    #   to launch Amazon Elastic Compute Cloud instances with your game
    #   server build. For more information, see [ Launching an Instance from
    #   a Launch Template][1] in the *Amazon Elastic Compute Cloud User
    #   Guide*.
    #
    # * An IAM role that extends limited access to your Amazon Web Services
    #   account to allow Amazon GameLift Servers FleetIQ to create and
    #   interact with the Auto Scaling group. For more information, see
    #   [Create IAM roles for cross-service interaction][2] in the *Amazon
    #   GameLift Servers FleetIQ Developer Guide*.
    #
    # To create a new game server group, specify a unique group name, IAM
    # role and Amazon Elastic Compute Cloud launch template, and provide a
    # list of instance types that can be used in the group. You must also
    # set initial maximum and minimum limits on the group's instance count.
    # You can optionally set an Auto Scaling policy with target tracking
    # based on a Amazon GameLift Servers FleetIQ metric.
    #
    # Once the game server group and corresponding Auto Scaling group are
    # created, you have full access to change the Auto Scaling group's
    # configuration as needed. Several properties that are set when creating
    # a game server group, including maximum/minimum size and auto-scaling
    # policy settings, must be updated directly in the Auto Scaling group.
    # Keep in mind that some Auto Scaling group properties are periodically
    # updated by Amazon GameLift Servers FleetIQ as part of its balancing
    # activities to optimize for availability and cost.
    #
    # **Learn more**
    #
    # [Amazon GameLift Servers FleetIQ Guide][3]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-launch-templates.html
    # [2]: https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/gsg-iam-permissions-roles.html
    # [3]: https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/gsg-intro.html
    #
    # @option params [required, String] :game_server_group_name
    #   An identifier for the new game server group. This value is used to
    #   generate unique ARN identifiers for the Amazon EC2 Auto Scaling group
    #   and the Amazon GameLift Servers FleetIQ game server group. The name
    #   must be unique per Region per Amazon Web Services account.
    #
    # @option params [required, String] :role_arn
    #   The Amazon Resource Name ([ARN][1]) for an IAM role that allows Amazon
    #   GameLift Servers to access your Amazon EC2 Auto Scaling groups.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html
    #
    # @option params [required, Integer] :min_size
    #   The minimum number of instances allowed in the Amazon EC2 Auto Scaling
    #   group. During automatic scaling events, Amazon GameLift Servers
    #   FleetIQ and Amazon EC2 do not scale down the group below this minimum.
    #   In production, this value should be set to at least 1. After the Auto
    #   Scaling group is created, update this value directly in the Auto
    #   Scaling group using the Amazon Web Services console or APIs.
    #
    # @option params [required, Integer] :max_size
    #   The maximum number of instances allowed in the Amazon EC2 Auto Scaling
    #   group. During automatic scaling events, Amazon GameLift Servers
    #   FleetIQ and EC2 do not scale up the group above this maximum. After
    #   the Auto Scaling group is created, update this value directly in the
    #   Auto Scaling group using the Amazon Web Services console or APIs.
    #
    # @option params [required, Types::LaunchTemplateSpecification] :launch_template
    #   The Amazon EC2 launch template that contains configuration settings
    #   and game server code to be deployed to all instances in the game
    #   server group. You can specify the template using either the template
    #   name or ID. For help with creating a launch template, see [Creating a
    #   Launch Template for an Auto Scaling Group][1] in the *Amazon Elastic
    #   Compute Cloud Auto Scaling User Guide*. After the Auto Scaling group
    #   is created, update this value directly in the Auto Scaling group using
    #   the Amazon Web Services console or APIs.
    #
    #   <note markdown="1"> If you specify network interfaces in your launch template, you must
    #   explicitly set the property `AssociatePublicIpAddress` to "true". If
    #   no network interface is specified in the launch template, Amazon
    #   GameLift Servers FleetIQ uses your account's default VPC.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/create-launch-template.html
    #
    # @option params [required, Array<Types::InstanceDefinition>] :instance_definitions
    #   The Amazon EC2 instance types and sizes to use in the Auto Scaling
    #   group. The instance definitions must specify at least two different
    #   instance types that are supported by Amazon GameLift Servers FleetIQ.
    #   For more information on instance types, see [EC2 Instance Types][1] in
    #   the *Amazon Elastic Compute Cloud User Guide*. You can optionally
    #   specify capacity weighting for each instance type. If no weight value
    #   is specified for an instance type, it is set to the default value
    #   "1". For more information about capacity weighting, see [ Instance
    #   Weighting for Amazon EC2 Auto Scaling][2] in the Amazon EC2 Auto
    #   Scaling User Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html
    #   [2]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-instance-weighting.html
    #
    # @option params [Types::GameServerGroupAutoScalingPolicy] :auto_scaling_policy
    #   Configuration settings to define a scaling policy for the Auto Scaling
    #   group that is optimized for game hosting. The scaling policy uses the
    #   metric `"PercentUtilizedGameServers"` to maintain a buffer of idle
    #   game servers that can immediately accommodate new games and players.
    #   After the Auto Scaling group is created, update this value directly in
    #   the Auto Scaling group using the Amazon Web Services console or APIs.
    #
    # @option params [String] :balancing_strategy
    #   Indicates how Amazon GameLift Servers FleetIQ balances the use of Spot
    #   Instances and On-Demand Instances in the game server group. Method
    #   options include the following:
    #
    #   * `SPOT_ONLY` - Only Spot Instances are used in the game server group.
    #     If Spot Instances are unavailable or not viable for game hosting,
    #     the game server group provides no hosting capacity until Spot
    #     Instances can again be used. Until then, no new instances are
    #     started, and the existing nonviable Spot Instances are terminated
    #     (after current gameplay ends) and are not replaced.
    #
    #   * `SPOT_PREFERRED` - (default value) Spot Instances are used whenever
    #     available in the game server group. If Spot Instances are
    #     unavailable, the game server group continues to provide hosting
    #     capacity by falling back to On-Demand Instances. Existing nonviable
    #     Spot Instances are terminated (after current gameplay ends) and are
    #     replaced with new On-Demand Instances.
    #
    #   * `ON_DEMAND_ONLY` - Only On-Demand Instances are used in the game
    #     server group. No Spot Instances are used, even when available, while
    #     this balancing strategy is in force.
    #
    # @option params [String] :game_server_protection_policy
    #   A flag that indicates whether instances in the game server group are
    #   protected from early termination. Unprotected instances that have
    #   active game servers running might be terminated during a scale-down
    #   event, causing players to be dropped from the game. Protected
    #   instances cannot be terminated while there are active game servers
    #   running except in the event of a forced game server group deletion
    #   (see ). An exception to this is with Spot Instances, which can be
    #   terminated by Amazon Web Services regardless of protection status.
    #   This property is set to `NO_PROTECTION` by default.
    #
    # @option params [Array<String>] :vpc_subnets
    #   A list of virtual private cloud (VPC) subnets to use with instances in
    #   the game server group. By default, all Amazon GameLift Servers
    #   FleetIQ-supported Availability Zones are used. You can use this
    #   parameter to specify VPCs that you've set up. This property cannot be
    #   updated after the game server group is created, and the corresponding
    #   Auto Scaling group will always use the property value that is set with
    #   this request, even if the Auto Scaling group is updated directly.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of labels to assign to the new game server group resource. Tags
    #   are developer-defined key-value pairs. Tagging Amazon Web Services
    #   resources is useful for resource management, access management, and
    #   cost allocation. For more information, see [ Tagging Amazon Web
    #   Services Resources][1] in the *Amazon Web Services General Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    #
    # @return [Types::CreateGameServerGroupOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateGameServerGroupOutput#game_server_group #game_server_group} => Types::GameServerGroup
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_game_server_group({
    #     game_server_group_name: "GameServerGroupName", # required
    #     role_arn: "IamRoleArn", # required
    #     min_size: 1, # required
    #     max_size: 1, # required
    #     launch_template: { # required
    #       launch_template_id: "LaunchTemplateId",
    #       launch_template_name: "LaunchTemplateName",
    #       version: "LaunchTemplateVersion",
    #     },
    #     instance_definitions: [ # required
    #       {
    #         instance_type: "c4.large", # required, accepts c4.large, c4.xlarge, c4.2xlarge, c4.4xlarge, c4.8xlarge, c5.large, c5.xlarge, c5.2xlarge, c5.4xlarge, c5.9xlarge, c5.12xlarge, c5.18xlarge, c5.24xlarge, c5a.large, c5a.xlarge, c5a.2xlarge, c5a.4xlarge, c5a.8xlarge, c5a.12xlarge, c5a.16xlarge, c5a.24xlarge, c6g.medium, c6g.large, c6g.xlarge, c6g.2xlarge, c6g.4xlarge, c6g.8xlarge, c6g.12xlarge, c6g.16xlarge, r4.large, r4.xlarge, r4.2xlarge, r4.4xlarge, r4.8xlarge, r4.16xlarge, r5.large, r5.xlarge, r5.2xlarge, r5.4xlarge, r5.8xlarge, r5.12xlarge, r5.16xlarge, r5.24xlarge, r5a.large, r5a.xlarge, r5a.2xlarge, r5a.4xlarge, r5a.8xlarge, r5a.12xlarge, r5a.16xlarge, r5a.24xlarge, r6g.medium, r6g.large, r6g.xlarge, r6g.2xlarge, r6g.4xlarge, r6g.8xlarge, r6g.12xlarge, r6g.16xlarge, m4.large, m4.xlarge, m4.2xlarge, m4.4xlarge, m4.10xlarge, m5.large, m5.xlarge, m5.2xlarge, m5.4xlarge, m5.8xlarge, m5.12xlarge, m5.16xlarge, m5.24xlarge, m5a.large, m5a.xlarge, m5a.2xlarge, m5a.4xlarge, m5a.8xlarge, m5a.12xlarge, m5a.16xlarge, m5a.24xlarge, m6g.medium, m6g.large, m6g.xlarge, m6g.2xlarge, m6g.4xlarge, m6g.8xlarge, m6g.12xlarge, m6g.16xlarge
    #         weighted_capacity: "WeightedCapacity",
    #       },
    #     ],
    #     auto_scaling_policy: {
    #       estimated_instance_warmup: 1,
    #       target_tracking_configuration: { # required
    #         target_value: 1.0, # required
    #       },
    #     },
    #     balancing_strategy: "SPOT_ONLY", # accepts SPOT_ONLY, SPOT_PREFERRED, ON_DEMAND_ONLY
    #     game_server_protection_policy: "NO_PROTECTION", # accepts NO_PROTECTION, FULL_PROTECTION
    #     vpc_subnets: ["VpcSubnet"],
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.game_server_group.game_server_group_name #=> String
    #   resp.game_server_group.game_server_group_arn #=> String
    #   resp.game_server_group.role_arn #=> String
    #   resp.game_server_group.instance_definitions #=> Array
    #   resp.game_server_group.instance_definitions[0].instance_type #=> String, one of "c4.large", "c4.xlarge", "c4.2xlarge", "c4.4xlarge", "c4.8xlarge", "c5.large", "c5.xlarge", "c5.2xlarge", "c5.4xlarge", "c5.9xlarge", "c5.12xlarge", "c5.18xlarge", "c5.24xlarge", "c5a.large", "c5a.xlarge", "c5a.2xlarge", "c5a.4xlarge", "c5a.8xlarge", "c5a.12xlarge", "c5a.16xlarge", "c5a.24xlarge", "c6g.medium", "c6g.large", "c6g.xlarge", "c6g.2xlarge", "c6g.4xlarge", "c6g.8xlarge", "c6g.12xlarge", "c6g.16xlarge", "r4.large", "r4.xlarge", "r4.2xlarge", "r4.4xlarge", "r4.8xlarge", "r4.16xlarge", "r5.large", "r5.xlarge", "r5.2xlarge", "r5.4xlarge", "r5.8xlarge", "r5.12xlarge", "r5.16xlarge", "r5.24xlarge", "r5a.large", "r5a.xlarge", "r5a.2xlarge", "r5a.4xlarge", "r5a.8xlarge", "r5a.12xlarge", "r5a.16xlarge", "r5a.24xlarge", "r6g.medium", "r6g.large", "r6g.xlarge", "r6g.2xlarge", "r6g.4xlarge", "r6g.8xlarge", "r6g.12xlarge", "r6g.16xlarge", "m4.large", "m4.xlarge", "m4.2xlarge", "m4.4xlarge", "m4.10xlarge", "m5.large", "m5.xlarge", "m5.2xlarge", "m5.4xlarge", "m5.8xlarge", "m5.12xlarge", "m5.16xlarge", "m5.24xlarge", "m5a.large", "m5a.xlarge", "m5a.2xlarge", "m5a.4xlarge", "m5a.8xlarge", "m5a.12xlarge", "m5a.16xlarge", "m5a.24xlarge", "m6g.medium", "m6g.large", "m6g.xlarge", "m6g.2xlarge", "m6g.4xlarge", "m6g.8xlarge", "m6g.12xlarge", "m6g.16xlarge"
    #   resp.game_server_group.instance_definitions[0].weighted_capacity #=> String
    #   resp.game_server_group.balancing_strategy #=> String, one of "SPOT_ONLY", "SPOT_PREFERRED", "ON_DEMAND_ONLY"
    #   resp.game_server_group.game_server_protection_policy #=> String, one of "NO_PROTECTION", "FULL_PROTECTION"
    #   resp.game_server_group.auto_scaling_group_arn #=> String
    #   resp.game_server_group.status #=> String, one of "NEW", "ACTIVATING", "ACTIVE", "DELETE_SCHEDULED", "DELETING", "DELETED", "ERROR"
    #   resp.game_server_group.status_reason #=> String
    #   resp.game_server_group.suspended_actions #=> Array
    #   resp.game_server_group.suspended_actions[0] #=> String, one of "REPLACE_INSTANCE_TYPES"
    #   resp.game_server_group.creation_time #=> Time
    #   resp.game_server_group.last_updated_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/CreateGameServerGroup AWS API Documentation
    #
    # @overload create_game_server_group(params = {})
    # @param [Hash] params ({})
    def create_game_server_group(params = {}, options = {})
      req = build_request(:create_game_server_group, params)
      req.send_request(options)
    end

    # Creates a multiplayer game session for players in a specific fleet
    # location. This operation prompts an available server process to start
    # a game session and retrieves connection information for the new game
    # session. As an alternative, consider using the Amazon GameLift Servers
    # game session placement feature with [StartGameSessionPlacement][1],
    # which uses the FleetIQ algorithm and queues to optimize the placement
    # process.
    #
    # When creating a game session, you specify exactly where you want to
    # place it and provide a set of game session configuration settings. The
    # target fleet must be in `ACTIVE` status.
    #
    # You can use this operation in the following ways:
    #
    # * To create a game session on an instance in a fleet's home Region,
    #   provide a fleet or alias ID along with your game session
    #   configuration.
    #
    # * To create a game session on an instance in a fleet's remote
    #   location, provide a fleet or alias ID and a location name, along
    #   with your game session configuration.
    #
    # * To create a game session on an instance in an Anywhere fleet,
    #   specify the fleet's custom location.
    #
    # If successful, Amazon GameLift Servers initiates a workflow to start a
    # new game session and returns a `GameSession` object containing the
    # game session configuration and status. When the game session status is
    # `ACTIVE`, it is updated with connection information and you can create
    # player sessions for the game session. By default, newly created game
    # sessions are open to new players. You can restrict new player access
    # by using [UpdateGameSession][2] to change the game session's player
    # session creation policy.
    #
    # Amazon GameLift Servers retains logs for active for 14 days. To access
    # the logs, call [GetGameSessionLogUrl][3] to download the log files.
    #
    # *Available in Amazon GameLift Servers Local.*
    #
    # **Learn more**
    #
    # [Start a game session][4]
    #
    # [All APIs by task][5]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_StartGameSessionPlacement.html
    # [2]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_UpdateGameSession.html
    # [3]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_GetGameSessionLogUrl.html
    # [4]: https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html#gamelift-sdk-server-startsession
    # [5]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets
    #
    # @option params [String] :fleet_id
    #   A unique identifier for the fleet to create a game session in. You can
    #   use either the fleet ID or ARN value. Each request must reference
    #   either a fleet ID or alias ID, but not both.
    #
    # @option params [String] :alias_id
    #   A unique identifier for the alias associated with the fleet to create
    #   a game session in. You can use either the alias ID or ARN value. Each
    #   request must reference either a fleet ID or alias ID, but not both.
    #
    # @option params [required, Integer] :maximum_player_session_count
    #   The maximum number of players that can be connected simultaneously to
    #   the game session.
    #
    # @option params [String] :name
    #   A descriptive label that is associated with a game session. Session
    #   names do not need to be unique.
    #
    # @option params [Array<Types::GameProperty>] :game_properties
    #   A set of key-value pairs that can store custom data in a game session.
    #   For example: `{"Key": "difficulty", "Value": "novice"}`. For an
    #   example, see [Create a game session with custom properties][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-client-api.html#game-properties-create
    #
    # @option params [String] :creator_id
    #   A unique identifier for a player or entity creating the game session.
    #
    #   If you add a resource creation limit policy to a fleet, the
    #   `CreateGameSession` operation requires a `CreatorId`. Amazon GameLift
    #   Servers limits the number of game session creation requests with the
    #   same `CreatorId` in a specified time period.
    #
    #   If you your fleet doesn't have a resource creation limit policy and
    #   you provide a `CreatorId` in your `CreateGameSession` requests, Amazon
    #   GameLift Servers limits requests to one request per `CreatorId` per
    #   second.
    #
    #   To not limit `CreateGameSession` requests with the same `CreatorId`,
    #   don't provide a `CreatorId` in your `CreateGameSession` request.
    #
    # @option params [String] :game_session_id
    #   *This parameter is deprecated. Use `IdempotencyToken` instead.*
    #
    #   Custom string that uniquely identifies a request for a new game
    #   session. Maximum token length is 48 characters. If provided, this
    #   string is included in the new game session's ID.
    #
    # @option params [String] :idempotency_token
    #   Custom string that uniquely identifies the new game session request.
    #   This is useful for ensuring that game session requests with the same
    #   idempotency token are processed only once. Subsequent requests with
    #   the same string return the original `GameSession` object, with an
    #   updated status. Maximum token length is 48 characters. If provided,
    #   this string is included in the new game session's ID. A game session
    #   ARN has the following format:
    #   `arn:aws:gamelift:<location>::gamesession/<fleet ID>/<custom ID string
    #   or idempotency token>`. Idempotency tokens remain in use for 30 days
    #   after a game session has ended; game session objects are retained for
    #   this time period and then deleted.
    #
    # @option params [String] :game_session_data
    #   A set of custom game session properties, formatted as a single string
    #   value. This data is passed to a game server process with a request to
    #   start a new game session. For more information, see [Start a game
    #   session][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html#gamelift-sdk-server-startsession
    #
    # @option params [String] :location
    #   A fleet's remote location to place the new game session in. If this
    #   parameter is not set, the new game session is placed in the fleet's
    #   home Region. Specify a remote location with an Amazon Web Services
    #   Region code such as `us-west-2`. When using an Anywhere fleet, this
    #   parameter is required and must be set to the Anywhere fleet's custom
    #   location.
    #
    # @return [Types::CreateGameSessionOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateGameSessionOutput#game_session #game_session} => Types::GameSession
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_game_session({
    #     fleet_id: "FleetIdOrArn",
    #     alias_id: "AliasIdOrArn",
    #     maximum_player_session_count: 1, # required
    #     name: "NonZeroAndMaxString",
    #     game_properties: [
    #       {
    #         key: "GamePropertyKey", # required
    #         value: "GamePropertyValue", # required
    #       },
    #     ],
    #     creator_id: "NonZeroAndMaxString",
    #     game_session_id: "IdStringModel",
    #     idempotency_token: "IdStringModel",
    #     game_session_data: "LargeGameSessionData",
    #     location: "LocationStringModel",
    #   })
    #
    # @example Response structure
    #
    #   resp.game_session.game_session_id #=> String
    #   resp.game_session.name #=> String
    #   resp.game_session.fleet_id #=> String
    #   resp.game_session.fleet_arn #=> String
    #   resp.game_session.creation_time #=> Time
    #   resp.game_session.termination_time #=> Time
    #   resp.game_session.current_player_session_count #=> Integer
    #   resp.game_session.maximum_player_session_count #=> Integer
    #   resp.game_session.status #=> String, one of "ACTIVE", "ACTIVATING", "TERMINATED", "TERMINATING", "ERROR"
    #   resp.game_session.status_reason #=> String, one of "INTERRUPTED", "TRIGGERED_ON_PROCESS_TERMINATE", "FORCE_TERMINATED"
    #   resp.game_session.game_properties #=> Array
    #   resp.game_session.game_properties[0].key #=> String
    #   resp.game_session.game_properties[0].value #=> String
    #   resp.game_session.ip_address #=> String
    #   resp.game_session.dns_name #=> String
    #   resp.game_session.port #=> Integer
    #   resp.game_session.player_session_creation_policy #=> String, one of "ACCEPT_ALL", "DENY_ALL"
    #   resp.game_session.creator_id #=> String
    #   resp.game_session.game_session_data #=> String
    #   resp.game_session.matchmaker_data #=> String
    #   resp.game_session.location #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/CreateGameSession AWS API Documentation
    #
    # @overload create_game_session(params = {})
    # @param [Hash] params ({})
    def create_game_session(params = {}, options = {})
      req = build_request(:create_game_session, params)
      req.send_request(options)
    end

    # Creates a placement queue that processes requests for new game
    # sessions. A queue uses FleetIQ algorithms to locate the best available
    # placement locations for a new game session, and then prompts the game
    # server process to start a new game session.
    #
    # A game session queue is configured with a set of destinations (Amazon
    # GameLift Servers fleets or aliases) that determine where the queue can
    # place new game sessions. These destinations can span multiple Amazon
    # Web Services Regions, can use different instance types, and can
    # include both Spot and On-Demand fleets. If the queue includes
    # multi-location fleets, the queue can place game sessions in any of a
    # fleet's remote locations.
    #
    # You can configure a queue to determine how it selects the best
    # available placement for a new game session. Queues can prioritize
    # placement decisions based on a combination of location, hosting cost,
    # and player latency. You can set up the queue to use the default
    # prioritization or provide alternate instructions using
    # `PriorityConfiguration`.
    #
    # **Request options**
    #
    # Use this operation to make these common types of requests.
    #
    # * Create a queue with the minimum required parameters.
    #
    #   * `Name`
    #
    #   * `Destinations` (This parameter isn't required, but a queue can't
    #     make placements without at least one destination.)
    # * Create a queue with placement notification. Queues that have high
    #   placement activity must use a notification system, such as with
    #   Amazon Simple Notification Service (Amazon SNS) or Amazon
    #   CloudWatch.
    #
    #   * Required parameters `Name` and `Destinations`
    #
    #   * `NotificationTarget`
    # * Create a queue with custom prioritization settings. These custom
    #   settings replace the default prioritization configuration for a
    #   queue.
    #
    #   * Required parameters `Name` and `Destinations`
    #
    #   * `PriorityConfiguration`
    # * Create a queue with special rules for processing player latency
    #   data.
    #
    #   * Required parameters `Name` and `Destinations`
    #
    #   * `PlayerLatencyPolicies`
    #
    # **Results**
    #
    # If successful, this operation returns a new `GameSessionQueue` object
    # with an assigned queue ARN. Use the queue's name or ARN when
    # submitting new game session requests with
    # [StartGameSessionPlacement][1] or [StartMatchmaking][2].
    #
    # **Learn more**
    #
    # [ Design a game session queue][3]
    #
    # [ Create a game session queue][4]
    #
    # **Related actions**
    #
    # [CreateGameSessionQueue][5] \| [DescribeGameSessionQueues][6] \|
    # [UpdateGameSessionQueue][7] \| [DeleteGameSessionQueue][8] \| [All
    # APIs by task][9]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_StartGameSessionPlacement.html
    # [2]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_StartMatchmaking.html
    # [3]: https://docs.aws.amazon.com/gamelift/latest/developerguide/queues-design.html
    # [4]: https://docs.aws.amazon.com/gamelift/latest/developerguide/queues-creating.html
    # [5]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_CreateGameSessionQueue.html
    # [6]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_DescribeGameSessionQueues.html
    # [7]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_UpdateGameSessionQueue.html
    # [8]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_DeleteGameSessionQueue.html
    # [9]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets
    #
    # @option params [required, String] :name
    #   A descriptive label that is associated with game session queue. Queue
    #   names must be unique within each Region.
    #
    # @option params [Integer] :timeout_in_seconds
    #   The maximum time, in seconds, that a new game session placement
    #   request remains in the queue. When a request exceeds this time, the
    #   game session placement changes to a `TIMED_OUT` status. If you don't
    #   specify a request timeout, the queue uses a default value.
    #
    # @option params [Array<Types::PlayerLatencyPolicy>] :player_latency_policies
    #   A set of policies that enforce a sliding cap on player latency when
    #   processing game sessions placement requests. Use multiple policies to
    #   gradually relax the cap over time if Amazon GameLift Servers can't
    #   make a placement. Policies are evaluated in order starting with the
    #   lowest maximum latency value.
    #
    # @option params [Array<Types::GameSessionQueueDestination>] :destinations
    #   A list of fleets and/or fleet aliases that can be used to fulfill game
    #   session placement requests in the queue. Destinations are identified
    #   by either a fleet ARN or a fleet alias ARN, and are listed in order of
    #   placement preference.
    #
    # @option params [Types::FilterConfiguration] :filter_configuration
    #   A list of locations where a queue is allowed to place new game
    #   sessions. Locations are specified in the form of Amazon Web Services
    #   Region codes, such as `us-west-2`. If this parameter is not set, game
    #   sessions can be placed in any queue location.
    #
    # @option params [Types::PriorityConfiguration] :priority_configuration
    #   Custom settings to use when prioritizing destinations and locations
    #   for game session placements. This configuration replaces the FleetIQ
    #   default prioritization process. Priority types that are not explicitly
    #   named will be automatically applied at the end of the prioritization
    #   process.
    #
    # @option params [String] :custom_event_data
    #   Information to be added to all events that are related to this game
    #   session queue.
    #
    # @option params [String] :notification_target
    #   An SNS topic ARN that is set up to receive game session placement
    #   notifications. See [ Setting up notifications for game session
    #   placement][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/queue-notification.html
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of labels to assign to the new game session queue resource.
    #   Tags are developer-defined key-value pairs. Tagging Amazon Web
    #   Services resources are useful for resource management, access
    #   management and cost allocation. For more information, see [ Tagging
    #   Amazon Web Services Resources][1] in the *Amazon Web Services General
    #   Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    #
    # @return [Types::CreateGameSessionQueueOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateGameSessionQueueOutput#game_session_queue #game_session_queue} => Types::GameSessionQueue
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_game_session_queue({
    #     name: "GameSessionQueueName", # required
    #     timeout_in_seconds: 1,
    #     player_latency_policies: [
    #       {
    #         maximum_individual_player_latency_milliseconds: 1,
    #         policy_duration_seconds: 1,
    #       },
    #     ],
    #     destinations: [
    #       {
    #         destination_arn: "ArnStringModel",
    #       },
    #     ],
    #     filter_configuration: {
    #       allowed_locations: ["LocationStringModel"],
    #     },
    #     priority_configuration: {
    #       priority_order: ["LATENCY"], # accepts LATENCY, COST, DESTINATION, LOCATION
    #       location_order: ["LocationStringModel"],
    #     },
    #     custom_event_data: "QueueCustomEventData",
    #     notification_target: "QueueSnsArnStringModel",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.game_session_queue.name #=> String
    #   resp.game_session_queue.game_session_queue_arn #=> String
    #   resp.game_session_queue.timeout_in_seconds #=> Integer
    #   resp.game_session_queue.player_latency_policies #=> Array
    #   resp.game_session_queue.player_latency_policies[0].maximum_individual_player_latency_milliseconds #=> Integer
    #   resp.game_session_queue.player_latency_policies[0].policy_duration_seconds #=> Integer
    #   resp.game_session_queue.destinations #=> Array
    #   resp.game_session_queue.destinations[0].destination_arn #=> String
    #   resp.game_session_queue.filter_configuration.allowed_locations #=> Array
    #   resp.game_session_queue.filter_configuration.allowed_locations[0] #=> String
    #   resp.game_session_queue.priority_configuration.priority_order #=> Array
    #   resp.game_session_queue.priority_configuration.priority_order[0] #=> String, one of "LATENCY", "COST", "DESTINATION", "LOCATION"
    #   resp.game_session_queue.priority_configuration.location_order #=> Array
    #   resp.game_session_queue.priority_configuration.location_order[0] #=> String
    #   resp.game_session_queue.custom_event_data #=> String
    #   resp.game_session_queue.notification_target #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/CreateGameSessionQueue AWS API Documentation
    #
    # @overload create_game_session_queue(params = {})
    # @param [Hash] params ({})
    def create_game_session_queue(params = {}, options = {})
      req = build_request(:create_game_session_queue, params)
      req.send_request(options)
    end

    # Creates a custom location for use in an Anywhere fleet.
    #
    # @option params [required, String] :location_name
    #   A descriptive name for the custom location.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of labels to assign to the new resource. Tags are
    #   developer-defined key-value pairs. Tagging Amazon Web Services
    #   resources are useful for resource management, access management, and
    #   cost allocation. For more information, see [ Tagging Amazon Web
    #   Services Resources][1] in the *Amazon Web Services General
    #   Rareference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    #
    # @return [Types::CreateLocationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateLocationOutput#location #location} => Types::LocationModel
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_location({
    #     location_name: "CustomInputLocationStringModel", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.location.location_name #=> String
    #   resp.location.location_arn #=> String
    #   resp.location.ping_beacon.udp_endpoint.domain #=> String
    #   resp.location.ping_beacon.udp_endpoint.port #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/CreateLocation AWS API Documentation
    #
    # @overload create_location(params = {})
    # @param [Hash] params ({})
    def create_location(params = {}, options = {})
      req = build_request(:create_location, params)
      req.send_request(options)
    end

    # Defines a new matchmaking configuration for use with FlexMatch.
    # Whether your are using FlexMatch with Amazon GameLift Servers hosting
    # or as a standalone matchmaking service, the matchmaking configuration
    # sets out rules for matching players and forming teams. If you're also
    # using Amazon GameLift Servers hosting, it defines how to start game
    # sessions for each match. Your matchmaking system can use multiple
    # configurations to handle different game scenarios. All matchmaking
    # requests identify the matchmaking configuration to use and provide
    # player attributes consistent with that configuration.
    #
    # To create a matchmaking configuration, you must provide the following:
    # configuration name and FlexMatch mode (with or without Amazon GameLift
    # Servers hosting); a rule set that specifies how to evaluate players
    # and find acceptable matches; whether player acceptance is required;
    # and the maximum time allowed for a matchmaking attempt. When using
    # FlexMatch with Amazon GameLift Servers hosting, you also need to
    # identify the game session queue to use when starting a game session
    # for the match.
    #
    # In addition, you must set up an Amazon Simple Notification Service
    # topic to receive matchmaking notifications. Provide the topic ARN in
    # the matchmaking configuration.
    #
    # **Learn more**
    #
    # [ Design a FlexMatch matchmaker][1]
    #
    # [ Set up FlexMatch event notification][2]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-configuration.html
    # [2]: https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-notification.html
    #
    # @option params [required, String] :name
    #   A unique identifier for the matchmaking configuration. This name is
    #   used to identify the configuration associated with a matchmaking
    #   request or ticket.
    #
    # @option params [String] :description
    #   A human-readable description of the matchmaking configuration.
    #
    # @option params [Array<String>] :game_session_queue_arns
    #   The Amazon Resource Name ([ARN][1]) that is assigned to a Amazon
    #   GameLift Servers game session queue resource and uniquely identifies
    #   it. ARNs are unique across all Regions. Format is
    #   `arn:aws:gamelift:<region>::gamesessionqueue/<queue name>`. Queues can
    #   be located in any Region. Queues are used to start new Amazon GameLift
    #   Servers-hosted game sessions for matches that are created with this
    #   matchmaking configuration. If `FlexMatchMode` is set to `STANDALONE`,
    #   do not set this parameter.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html
    #
    # @option params [required, Integer] :request_timeout_seconds
    #   The maximum duration, in seconds, that a matchmaking ticket can remain
    #   in process before timing out. Requests that fail due to timing out can
    #   be resubmitted as needed.
    #
    # @option params [Integer] :acceptance_timeout_seconds
    #   The length of time (in seconds) to wait for players to accept a
    #   proposed match, if acceptance is required.
    #
    # @option params [required, Boolean] :acceptance_required
    #   A flag that determines whether a match that was created with this
    #   configuration must be accepted by the matched players. To require
    #   acceptance, set to `TRUE`. With this option enabled, matchmaking
    #   tickets use the status `REQUIRES_ACCEPTANCE` to indicate when a
    #   completed potential match is waiting for player acceptance.
    #
    # @option params [required, String] :rule_set_name
    #   A unique identifier for the matchmaking rule set to use with this
    #   configuration. You can use either the rule set name or ARN value. A
    #   matchmaking configuration can only use rule sets that are defined in
    #   the same Region.
    #
    # @option params [String] :notification_target
    #   An SNS topic ARN that is set up to receive matchmaking notifications.
    #   See [ Setting up notifications for matchmaking][1] for more
    #   information.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-notification.html
    #
    # @option params [Integer] :additional_player_count
    #   The number of player slots in a match to keep open for future players.
    #   For example, if the configuration's rule set specifies a match for a
    #   single 12-person team, and the additional player count is set to 2,
    #   only 10 players are selected for the match. This parameter is not used
    #   if `FlexMatchMode` is set to `STANDALONE`.
    #
    # @option params [String] :custom_event_data
    #   Information to be added to all events related to this matchmaking
    #   configuration.
    #
    # @option params [Array<Types::GameProperty>] :game_properties
    #   A set of key-value pairs that can store custom data in a game session.
    #   For example: `{"Key": "difficulty", "Value": "novice"}`. This
    #   information is added to the new `GameSession` object that is created
    #   for a successful match. This parameter is not used if `FlexMatchMode`
    #   is set to `STANDALONE`.
    #
    # @option params [String] :game_session_data
    #   A set of custom game session properties, formatted as a single string
    #   value. This data is passed to a game server process with a request to
    #   start a new game session. For more information, see [Start a game
    #   session][1]. This information is added to the new `GameSession` object
    #   that is created for a successful match. This parameter is not used if
    #   `FlexMatchMode` is set to `STANDALONE`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html#gamelift-sdk-server-startsession
    #
    # @option params [String] :backfill_mode
    #   The method used to backfill game sessions that are created with this
    #   matchmaking configuration. Specify `MANUAL` when your game manages
    #   backfill requests manually or does not use the match backfill feature.
    #   Specify `AUTOMATIC` to have Amazon GameLift Servers create a backfill
    #   request whenever a game session has one or more open slots. Learn more
    #   about manual and automatic backfill in [ Backfill Existing Games with
    #   FlexMatch][1]. Automatic backfill is not available when
    #   `FlexMatchMode` is set to `STANDALONE`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-backfill.html
    #
    # @option params [String] :flex_match_mode
    #   Indicates whether this matchmaking configuration is being used with
    #   Amazon GameLift Servers hosting or as a standalone matchmaking
    #   solution.
    #
    #   * **STANDALONE** - FlexMatch forms matches and returns match
    #     information, including players and team assignments, in a [
    #     MatchmakingSucceeded][1] event.
    #
    #   * **WITH\_QUEUE** - FlexMatch forms matches and uses the specified
    #     Amazon GameLift Servers queue to start a game session for the match.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-events.html#match-events-matchmakingsucceeded
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of labels to assign to the new matchmaking configuration
    #   resource. Tags are developer-defined key-value pairs. Tagging Amazon
    #   Web Services resources are useful for resource management, access
    #   management and cost allocation. For more information, see [ Tagging
    #   Amazon Web Services Resources][1] in the *Amazon Web Services General
    #   Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    #
    # @return [Types::CreateMatchmakingConfigurationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateMatchmakingConfigurationOutput#configuration #configuration} => Types::MatchmakingConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_matchmaking_configuration({
    #     name: "MatchmakingIdStringModel", # required
    #     description: "NonZeroAndMaxString",
    #     game_session_queue_arns: ["ArnStringModel"],
    #     request_timeout_seconds: 1, # required
    #     acceptance_timeout_seconds: 1,
    #     acceptance_required: false, # required
    #     rule_set_name: "MatchmakingRuleSetName", # required
    #     notification_target: "SnsArnStringModel",
    #     additional_player_count: 1,
    #     custom_event_data: "CustomEventData",
    #     game_properties: [
    #       {
    #         key: "GamePropertyKey", # required
    #         value: "GamePropertyValue", # required
    #       },
    #     ],
    #     game_session_data: "GameSessionData",
    #     backfill_mode: "AUTOMATIC", # accepts AUTOMATIC, MANUAL
    #     flex_match_mode: "STANDALONE", # accepts STANDALONE, WITH_QUEUE
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.configuration.name #=> String
    #   resp.configuration.configuration_arn #=> String
    #   resp.configuration.description #=> String
    #   resp.configuration.game_session_queue_arns #=> Array
    #   resp.configuration.game_session_queue_arns[0] #=> String
    #   resp.configuration.request_timeout_seconds #=> Integer
    #   resp.configuration.acceptance_timeout_seconds #=> Integer
    #   resp.configuration.acceptance_required #=> Boolean
    #   resp.configuration.rule_set_name #=> String
    #   resp.configuration.rule_set_arn #=> String
    #   resp.configuration.notification_target #=> String
    #   resp.configuration.additional_player_count #=> Integer
    #   resp.configuration.custom_event_data #=> String
    #   resp.configuration.creation_time #=> Time
    #   resp.configuration.game_properties #=> Array
    #   resp.configuration.game_properties[0].key #=> String
    #   resp.configuration.game_properties[0].value #=> String
    #   resp.configuration.game_session_data #=> String
    #   resp.configuration.backfill_mode #=> String, one of "AUTOMATIC", "MANUAL"
    #   resp.configuration.flex_match_mode #=> String, one of "STANDALONE", "WITH_QUEUE"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/CreateMatchmakingConfiguration AWS API Documentation
    #
    # @overload create_matchmaking_configuration(params = {})
    # @param [Hash] params ({})
    def create_matchmaking_configuration(params = {}, options = {})
      req = build_request(:create_matchmaking_configuration, params)
      req.send_request(options)
    end

    # Creates a new rule set for FlexMatch matchmaking. A rule set describes
    # the type of match to create, such as the number and size of teams. It
    # also sets the parameters for acceptable player matches, such as
    # minimum skill level or character type.
    #
    # To create a matchmaking rule set, provide unique rule set name and the
    # rule set body in JSON format. Rule sets must be defined in the same
    # Region as the matchmaking configuration they are used with.
    #
    # Since matchmaking rule sets cannot be edited, it is a good idea to
    # check the rule set syntax using [ValidateMatchmakingRuleSet][1] before
    # creating a new rule set.
    #
    # **Learn more**
    #
    # * [Build a rule set][2]
    #
    # * [Design a matchmaker][3]
    #
    # * [Matchmaking with FlexMatch][4]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_ValidateMatchmakingRuleSet.html
    # [2]: https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-rulesets.html
    # [3]: https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-configuration.html
    # [4]: https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-intro.html
    #
    # @option params [required, String] :name
    #   A unique identifier for the matchmaking rule set. A matchmaking
    #   configuration identifies the rule set it uses by this name value. Note
    #   that the rule set name is different from the optional `name` field in
    #   the rule set body.
    #
    # @option params [required, String] :rule_set_body
    #   A collection of matchmaking rules, formatted as a JSON string.
    #   Comments are not allowed in JSON, but most elements support a
    #   description field.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of labels to assign to the new matchmaking rule set resource.
    #   Tags are developer-defined key-value pairs. Tagging Amazon Web
    #   Services resources are useful for resource management, access
    #   management and cost allocation. For more information, see [ Tagging
    #   Amazon Web Services Resources][1] in the *Amazon Web Services General
    #   Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    #
    # @return [Types::CreateMatchmakingRuleSetOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateMatchmakingRuleSetOutput#rule_set #rule_set} => Types::MatchmakingRuleSet
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_matchmaking_rule_set({
    #     name: "MatchmakingIdStringModel", # required
    #     rule_set_body: "RuleSetBody", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.rule_set.rule_set_name #=> String
    #   resp.rule_set.rule_set_arn #=> String
    #   resp.rule_set.rule_set_body #=> String
    #   resp.rule_set.creation_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/CreateMatchmakingRuleSet AWS API Documentation
    #
    # @overload create_matchmaking_rule_set(params = {})
    # @param [Hash] params ({})
    def create_matchmaking_rule_set(params = {}, options = {})
      req = build_request(:create_matchmaking_rule_set, params)
      req.send_request(options)
    end

    # Reserves an open player slot in a game session for a player. New
    # player sessions can be created in any game session with an open slot
    # that is in `ACTIVE` status and has a player creation policy of
    # `ACCEPT_ALL`. You can add a group of players to a game session with
    # [CreatePlayerSessions][1] .
    #
    # To create a player session, specify a game session ID, player ID, and
    # optionally a set of player data.
    #
    # If successful, a slot is reserved in the game session for the player
    # and a new `PlayerSessions` object is returned with a player session
    # ID. The player references the player session ID when sending a
    # connection request to the game session, and the game server can use it
    # to validate the player reservation with the Amazon GameLift Servers
    # service. Player sessions cannot be updated.
    #
    # The maximum number of players per game session is 200. It is not
    # adjustable.
    #
    # **Related actions**
    #
    # [All APIs by task][2]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_CreatePlayerSessions.html
    # [2]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets
    #
    # @option params [required, String] :game_session_id
    #   A unique identifier for the game session to add a player to.
    #
    # @option params [required, String] :player_id
    #   A unique identifier for a player. Player IDs are developer-defined.
    #
    # @option params [String] :player_data
    #   Developer-defined information related to a player. Amazon GameLift
    #   Servers does not use this data, so it can be formatted as needed for
    #   use in the game.
    #
    # @return [Types::CreatePlayerSessionOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreatePlayerSessionOutput#player_session #player_session} => Types::PlayerSession
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_player_session({
    #     game_session_id: "ArnStringModel", # required
    #     player_id: "PlayerId", # required
    #     player_data: "PlayerData",
    #   })
    #
    # @example Response structure
    #
    #   resp.player_session.player_session_id #=> String
    #   resp.player_session.player_id #=> String
    #   resp.player_session.game_session_id #=> String
    #   resp.player_session.fleet_id #=> String
    #   resp.player_session.fleet_arn #=> String
    #   resp.player_session.creation_time #=> Time
    #   resp.player_session.termination_time #=> Time
    #   resp.player_session.status #=> String, one of "RESERVED", "ACTIVE", "COMPLETED", "TIMEDOUT"
    #   resp.player_session.ip_address #=> String
    #   resp.player_session.dns_name #=> String
    #   resp.player_session.port #=> Integer
    #   resp.player_session.player_data #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/CreatePlayerSession AWS API Documentation
    #
    # @overload create_player_session(params = {})
    # @param [Hash] params ({})
    def create_player_session(params = {}, options = {})
      req = build_request(:create_player_session, params)
      req.send_request(options)
    end

    # Reserves open slots in a game session for a group of players. New
    # player sessions can be created in any game session with an open slot
    # that is in `ACTIVE` status and has a player creation policy of
    # `ACCEPT_ALL`. To add a single player to a game session, use
    # [CreatePlayerSession][1]
    #
    # To create player sessions, specify a game session ID and a list of
    # player IDs. Optionally, provide a set of player data for each player
    # ID.
    #
    # If successful, a slot is reserved in the game session for each player,
    # and new `PlayerSession` objects are returned with player session IDs.
    # Each player references their player session ID when sending a
    # connection request to the game session, and the game server can use it
    # to validate the player reservation with the Amazon GameLift Servers
    # service. Player sessions cannot be updated.
    #
    # The maximum number of players per game session is 200. It is not
    # adjustable.
    #
    # **Related actions**
    #
    # [All APIs by task][2]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_CreatePlayerSession.html
    # [2]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets
    #
    # @option params [required, String] :game_session_id
    #   A unique identifier for the game session to add players to.
    #
    # @option params [required, Array<String>] :player_ids
    #   List of unique identifiers for the players to be added.
    #
    # @option params [Hash<String,String>] :player_data_map
    #   Map of string pairs, each specifying a player ID and a set of
    #   developer-defined information related to the player. Amazon GameLift
    #   Servers does not use this data, so it can be formatted as needed for
    #   use in the game. Any player data strings for player IDs that are not
    #   included in the `PlayerIds` parameter are ignored.
    #
    # @return [Types::CreatePlayerSessionsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreatePlayerSessionsOutput#player_sessions #player_sessions} => Array&lt;Types::PlayerSession&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_player_sessions({
    #     game_session_id: "ArnStringModel", # required
    #     player_ids: ["PlayerId"], # required
    #     player_data_map: {
    #       "NonZeroAndMaxString" => "PlayerData",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.player_sessions #=> Array
    #   resp.player_sessions[0].player_session_id #=> String
    #   resp.player_sessions[0].player_id #=> String
    #   resp.player_sessions[0].game_session_id #=> String
    #   resp.player_sessions[0].fleet_id #=> String
    #   resp.player_sessions[0].fleet_arn #=> String
    #   resp.player_sessions[0].creation_time #=> Time
    #   resp.player_sessions[0].termination_time #=> Time
    #   resp.player_sessions[0].status #=> String, one of "RESERVED", "ACTIVE", "COMPLETED", "TIMEDOUT"
    #   resp.player_sessions[0].ip_address #=> String
    #   resp.player_sessions[0].dns_name #=> String
    #   resp.player_sessions[0].port #=> Integer
    #   resp.player_sessions[0].player_data #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/CreatePlayerSessions AWS API Documentation
    #
    # @overload create_player_sessions(params = {})
    # @param [Hash] params ({})
    def create_player_sessions(params = {}, options = {})
      req = build_request(:create_player_sessions, params)
      req.send_request(options)
    end

    # Creates a new script record for your Amazon GameLift Servers Realtime
    # script. Realtime scripts are JavaScript that provide configuration
    # settings and optional custom game logic for your game. The script is
    # deployed when you create a Amazon GameLift Servers Realtime fleet to
    # host your game sessions. Script logic is executed during an active
    # game session.
    #
    # To create a new script record, specify a script name and provide the
    # script file(s). The script files and all dependencies must be zipped
    # into a single file. You can pull the zip file from either of these
    # locations:
    #
    # * A locally available directory. Use the *ZipFile* parameter for this
    #   option.
    #
    # * An Amazon Simple Storage Service (Amazon S3) bucket under your
    #   Amazon Web Services account. Use the *StorageLocation* parameter for
    #   this option. You'll need to have an Identity Access Management
    #   (IAM) role that allows the Amazon GameLift Servers service to access
    #   your S3 bucket.
    #
    # If the call is successful, a new script record is created with a
    # unique script ID. If the script file is provided as a local file, the
    # file is uploaded to an Amazon GameLift Servers-owned S3 bucket and the
    # script record's storage location reflects this location. If the
    # script file is provided as an S3 bucket, Amazon GameLift Servers
    # accesses the file at this storage location as needed for deployment.
    #
    # **Learn more**
    #
    # [Amazon GameLift Servers Amazon GameLift Servers Realtime][1]
    #
    # [Set Up a Role for Amazon GameLift Servers Access][2]
    #
    # **Related actions**
    #
    # [All APIs by task][3]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/realtime-intro.html
    # [2]: https://docs.aws.amazon.com/gamelift/latest/developerguide/setting-up-role.html
    # [3]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets
    #
    # @option params [String] :name
    #   A descriptive label that is associated with a script. Script names do
    #   not need to be unique. You can use [UpdateScript][1] to change this
    #   value later.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_UpdateScript.html
    #
    # @option params [String] :version
    #   Version information that is associated with a build or script. Version
    #   strings do not need to be unique. You can use [UpdateScript][1] to
    #   change this value later.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_UpdateScript.html
    #
    # @option params [Types::S3Location] :storage_location
    #   The location of the Amazon S3 bucket where a zipped file containing
    #   your Realtime scripts is stored. The storage location must specify the
    #   Amazon S3 bucket name, the zip file name (the "key"), and a role ARN
    #   that allows Amazon GameLift Servers to access the Amazon S3 storage
    #   location. The S3 bucket must be in the same Region where you want to
    #   create a new script. By default, Amazon GameLift Servers uploads the
    #   latest version of the zip file; if you have S3 object versioning
    #   turned on, you can use the `ObjectVersion` parameter to specify an
    #   earlier version.
    #
    # @option params [String, StringIO, File] :zip_file
    #   A data object containing your Realtime scripts and dependencies as a
    #   zip file. The zip file can have one or multiple files. Maximum size of
    #   a zip file is 5 MB.
    #
    #   When using the Amazon Web Services CLI tool to create a script, this
    #   parameter is set to the zip file name. It must be prepended with the
    #   string "fileb://" to indicate that the file data is a binary object.
    #   For example: `--zip-file fileb://myRealtimeScript.zip`.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of labels to assign to the new script resource. Tags are
    #   developer-defined key-value pairs. Tagging Amazon Web Services
    #   resources are useful for resource management, access management and
    #   cost allocation. For more information, see [ Tagging Amazon Web
    #   Services Resources][1] in the *Amazon Web Services General Reference*.
    #   Once the resource is created, you can use [TagResource][2],
    #   [UntagResource][3], and [ListTagsForResource][4] to add, remove, and
    #   view tags. The maximum tag limit may be lower than stated. See the
    #   Amazon Web Services General Reference for actual tagging limits.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    #   [2]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_TagResource.html
    #   [3]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_UntagResource.html
    #   [4]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_ListTagsForResource.html
    #
    # @return [Types::CreateScriptOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateScriptOutput#script #script} => Types::Script
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_script({
    #     name: "NonZeroAndMaxString",
    #     version: "NonZeroAndMaxString",
    #     storage_location: {
    #       bucket: "NonEmptyString",
    #       key: "NonEmptyString",
    #       role_arn: "NonEmptyString",
    #       object_version: "NonEmptyString",
    #     },
    #     zip_file: "data",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.script.script_id #=> String
    #   resp.script.script_arn #=> String
    #   resp.script.name #=> String
    #   resp.script.version #=> String
    #   resp.script.size_on_disk #=> Integer
    #   resp.script.creation_time #=> Time
    #   resp.script.storage_location.bucket #=> String
    #   resp.script.storage_location.key #=> String
    #   resp.script.storage_location.role_arn #=> String
    #   resp.script.storage_location.object_version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/CreateScript AWS API Documentation
    #
    # @overload create_script(params = {})
    # @param [Hash] params ({})
    def create_script(params = {}, options = {})
      req = build_request(:create_script, params)
      req.send_request(options)
    end

    # Requests authorization to create or delete a peer connection between
    # the VPC for your Amazon GameLift Servers fleet and a virtual private
    # cloud (VPC) in your Amazon Web Services account. VPC peering enables
    # the game servers on your fleet to communicate directly with other
    # Amazon Web Services resources. After you've received authorization,
    # use [CreateVpcPeeringConnection][1] to establish the peering
    # connection. For more information, see [VPC Peering with Amazon
    # GameLift Servers Fleets][2].
    #
    # You can peer with VPCs that are owned by any Amazon Web Services
    # account you have access to, including the account that you use to
    # manage your Amazon GameLift Servers fleets. You cannot peer with VPCs
    # that are in different Regions.
    #
    # To request authorization to create a connection, call this operation
    # from the Amazon Web Services account with the VPC that you want to
    # peer to your Amazon GameLift Servers fleet. For example, to enable
    # your game servers to retrieve data from a DynamoDB table, use the
    # account that manages that DynamoDB resource. Identify the following
    # values: (1) The ID of the VPC that you want to peer with, and (2) the
    # ID of the Amazon Web Services account that you use to manage Amazon
    # GameLift Servers. If successful, VPC peering is authorized for the
    # specified VPC.
    #
    # To request authorization to delete a connection, call this operation
    # from the Amazon Web Services account with the VPC that is peered with
    # your Amazon GameLift Servers fleet. Identify the following values: (1)
    # VPC ID that you want to delete the peering connection for, and (2) ID
    # of the Amazon Web Services account that you use to manage Amazon
    # GameLift Servers.
    #
    # The authorization remains valid for 24 hours unless it is canceled.
    # You must create or delete the peering connection while the
    # authorization is valid.
    #
    # **Related actions**
    #
    # [All APIs by task][3]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_CreateVpcPeeringConnection.html
    # [2]: https://docs.aws.amazon.com/gamelift/latest/developerguide/vpc-peering.html
    # [3]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets
    #
    # @option params [required, String] :game_lift_aws_account_id
    #   A unique identifier for the Amazon Web Services account that you use
    #   to manage your Amazon GameLift Servers fleet. You can find your
    #   Account ID in the Amazon Web Services Management Console under account
    #   settings.
    #
    # @option params [required, String] :peer_vpc_id
    #   A unique identifier for a VPC with resources to be accessed by your
    #   Amazon GameLift Servers fleet. The VPC must be in the same Region as
    #   your fleet. To look up a VPC ID, use the [VPC Dashboard][1] in the
    #   Amazon Web Services Management Console. Learn more about VPC peering
    #   in [VPC Peering with Amazon GameLift Servers Fleets][2].
    #
    #
    #
    #   [1]: https://console.aws.amazon.com/vpc/
    #   [2]: https://docs.aws.amazon.com/gamelift/latest/developerguide/vpc-peering.html
    #
    # @return [Types::CreateVpcPeeringAuthorizationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateVpcPeeringAuthorizationOutput#vpc_peering_authorization #vpc_peering_authorization} => Types::VpcPeeringAuthorization
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_vpc_peering_authorization({
    #     game_lift_aws_account_id: "NonZeroAndMaxString", # required
    #     peer_vpc_id: "NonZeroAndMaxString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.vpc_peering_authorization.game_lift_aws_account_id #=> String
    #   resp.vpc_peering_authorization.peer_vpc_aws_account_id #=> String
    #   resp.vpc_peering_authorization.peer_vpc_id #=> String
    #   resp.vpc_peering_authorization.creation_time #=> Time
    #   resp.vpc_peering_authorization.expiration_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/CreateVpcPeeringAuthorization AWS API Documentation
    #
    # @overload create_vpc_peering_authorization(params = {})
    # @param [Hash] params ({})
    def create_vpc_peering_authorization(params = {}, options = {})
      req = build_request(:create_vpc_peering_authorization, params)
      req.send_request(options)
    end

    # Establishes a VPC peering connection between a virtual private cloud
    # (VPC) in an Amazon Web Services account with the VPC for your Amazon
    # GameLift Servers fleet. VPC peering enables the game servers on your
    # fleet to communicate directly with other Amazon Web Services
    # resources. You can peer with VPCs in any Amazon Web Services account
    # that you have access to, including the account that you use to manage
    # your Amazon GameLift Servers fleets. You cannot peer with VPCs that
    # are in different Regions. For more information, see [VPC Peering with
    # Amazon GameLift Servers Fleets][1].
    #
    # Before calling this operation to establish the peering connection, you
    # first need to use [CreateVpcPeeringAuthorization][2] and identify the
    # VPC you want to peer with. Once the authorization for the specified
    # VPC is issued, you have 24 hours to establish the connection. These
    # two operations handle all tasks necessary to peer the two VPCs,
    # including acceptance, updating routing tables, etc.
    #
    # To establish the connection, call this operation from the Amazon Web
    # Services account that is used to manage the Amazon GameLift Servers
    # fleets. Identify the following values: (1) The ID of the fleet you
    # want to be enable a VPC peering connection for; (2) The Amazon Web
    # Services account with the VPC that you want to peer with; and (3) The
    # ID of the VPC you want to peer with. This operation is asynchronous.
    # If successful, a connection request is created. You can use continuous
    # polling to track the request's status using
    # [DescribeVpcPeeringConnections][3] , or by monitoring fleet events for
    # success or failure using [DescribeFleetEvents][4] .
    #
    # **Related actions**
    #
    # [All APIs by task][5]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/vpc-peering.html
    # [2]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_CreateVpcPeeringAuthorization.html
    # [3]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_DescribeVpcPeeringConnections.html
    # [4]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_DescribeFleetEvents.html
    # [5]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets
    #
    # @option params [required, String] :fleet_id
    #   A unique identifier for the fleet. You can use either the fleet ID or
    #   ARN value. This tells Amazon GameLift Servers which GameLift VPC to
    #   peer with.
    #
    # @option params [required, String] :peer_vpc_aws_account_id
    #   A unique identifier for the Amazon Web Services account with the VPC
    #   that you want to peer your Amazon GameLift Servers fleet with. You can
    #   find your Account ID in the Amazon Web Services Management Console
    #   under account settings.
    #
    # @option params [required, String] :peer_vpc_id
    #   A unique identifier for a VPC with resources to be accessed by your
    #   Amazon GameLift Servers fleet. The VPC must be in the same Region as
    #   your fleet. To look up a VPC ID, use the [VPC Dashboard][1] in the
    #   Amazon Web Services Management Console. Learn more about VPC peering
    #   in [VPC Peering with Amazon GameLift Servers Fleets][2].
    #
    #
    #
    #   [1]: https://console.aws.amazon.com/vpc/
    #   [2]: https://docs.aws.amazon.com/gamelift/latest/developerguide/vpc-peering.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_vpc_peering_connection({
    #     fleet_id: "FleetId", # required
    #     peer_vpc_aws_account_id: "NonZeroAndMaxString", # required
    #     peer_vpc_id: "NonZeroAndMaxString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/CreateVpcPeeringConnection AWS API Documentation
    #
    # @overload create_vpc_peering_connection(params = {})
    # @param [Hash] params ({})
    def create_vpc_peering_connection(params = {}, options = {})
      req = build_request(:create_vpc_peering_connection, params)
      req.send_request(options)
    end

    # Deletes an alias. This operation removes all record of the alias. Game
    # clients attempting to access a server process using the deleted alias
    # receive an error. To delete an alias, specify the alias ID to be
    # deleted.
    #
    # **Related actions**
    #
    # [All APIs by task][1]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets
    #
    # @option params [required, String] :alias_id
    #   A unique identifier of the alias that you want to delete. You can use
    #   either the alias ID or ARN value.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_alias({
    #     alias_id: "AliasIdOrArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DeleteAlias AWS API Documentation
    #
    # @overload delete_alias(params = {})
    # @param [Hash] params ({})
    def delete_alias(params = {}, options = {})
      req = build_request(:delete_alias, params)
      req.send_request(options)
    end

    # Deletes a build. This operation permanently deletes the build resource
    # and any uploaded build files. Deleting a build does not affect the
    # status of any active fleets using the build, but you can no longer
    # create new fleets with the deleted build.
    #
    # To delete a build, specify the build ID.
    #
    # **Learn more**
    #
    # [ Upload a Custom Server Build][1]
    #
    # [All APIs by task][2]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-build-intro.html
    # [2]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets
    #
    # @option params [required, String] :build_id
    #   A unique identifier for the build to delete. You can use either the
    #   build ID or ARN value.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_build({
    #     build_id: "BuildIdOrArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DeleteBuild AWS API Documentation
    #
    # @overload delete_build(params = {})
    # @param [Hash] params ({})
    def delete_build(params = {}, options = {})
      req = build_request(:delete_build, params)
      req.send_request(options)
    end

    # Deletes all resources and information related to a container fleet and
    # shuts down currently running fleet instances, including those in
    # remote locations. The container fleet must be in `ACTIVE` status to be
    # deleted.
    #
    # To delete a fleet, specify the fleet ID to be terminated. During the
    # deletion process, the fleet status is changed to `DELETING`.
    #
    # **Learn more**
    #
    # [Setting up Amazon GameLift Servers Fleets][1]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html
    #
    # @option params [required, String] :fleet_id
    #   A unique identifier for the container fleet to delete. You can use
    #   either the fleet ID or ARN value.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_container_fleet({
    #     fleet_id: "FleetIdOrArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DeleteContainerFleet AWS API Documentation
    #
    # @overload delete_container_fleet(params = {})
    # @param [Hash] params ({})
    def delete_container_fleet(params = {}, options = {})
      req = build_request(:delete_container_fleet, params)
      req.send_request(options)
    end

    # Deletes a container group definition.
    #
    # **Request options:**
    #
    # * Delete an entire container group definition, including all versions.
    #   Specify the container group definition name, or use an ARN value
    #   without the version number.
    #
    # * Delete a particular version. Specify the container group definition
    #   name and a version number, or use an ARN value that includes the
    #   version number.
    #
    # * Keep the newest versions and delete all older versions. Specify the
    #   container group definition name and the number of versions to
    #   retain. For example, set `VersionCountToRetain` to 5 to delete all
    #   but the five most recent versions.
    #
    # **Result**
    #
    # If successful, Amazon GameLift Servers removes the container group
    # definition versions that you request deletion for. This request will
    # fail for any requested versions if the following is true:
    #
    # * If the version is being used in an active fleet
    #
    # * If the version is being deployed to a fleet in a deployment that's
    #   currently in progress.
    #
    # * If the version is designated as a rollback definition in a fleet
    #   deployment that's currently in progress.
    #
    # **Learn more**
    #
    # * [Manage a container group definition][1]
    #
    # ^
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/containers-create-groups.html
    #
    # @option params [required, String] :name
    #   The unique identifier for the container group definition to delete.
    #   You can use either the `Name` or `ARN` value.
    #
    # @option params [Integer] :version_number
    #   The specific version to delete.
    #
    # @option params [Integer] :version_count_to_retain
    #   The number of most recent versions to keep while deleting all older
    #   versions.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_container_group_definition({
    #     name: "ContainerGroupDefinitionNameOrArn", # required
    #     version_number: 1,
    #     version_count_to_retain: 1,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DeleteContainerGroupDefinition AWS API Documentation
    #
    # @overload delete_container_group_definition(params = {})
    # @param [Hash] params ({})
    def delete_container_group_definition(params = {}, options = {})
      req = build_request(:delete_container_group_definition, params)
      req.send_request(options)
    end

    # Deletes all resources and information related to a fleet and shuts
    # down any currently running fleet instances, including those in remote
    # locations.
    #
    # <note markdown="1"> If the fleet being deleted has a VPC peering connection, you first
    # need to get a valid authorization (good for 24 hours) by calling
    # [CreateVpcPeeringAuthorization][1]. You don't need to explicitly
    # delete the VPC peering connection.
    #
    #  </note>
    #
    # To delete a fleet, specify the fleet ID to be terminated. During the
    # deletion process, the fleet status is changed to `DELETING`. When
    # completed, the status switches to `TERMINATED` and the fleet event
    # `FLEET_DELETED` is emitted.
    #
    # **Learn more**
    #
    # [Setting up Amazon GameLift Servers Fleets][2]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_CreateVpcPeeringAuthorization.html
    # [2]: https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html
    #
    # @option params [required, String] :fleet_id
    #   A unique identifier for the fleet to be deleted. You can use either
    #   the fleet ID or ARN value.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_fleet({
    #     fleet_id: "FleetIdOrArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DeleteFleet AWS API Documentation
    #
    # @overload delete_fleet(params = {})
    # @param [Hash] params ({})
    def delete_fleet(params = {}, options = {})
      req = build_request(:delete_fleet, params)
      req.send_request(options)
    end

    # Removes locations from a multi-location fleet. When deleting a
    # location, all game server process and all instances that are still
    # active in the location are shut down.
    #
    # To delete fleet locations, identify the fleet ID and provide a list of
    # the locations to be deleted.
    #
    # If successful, GameLift sets the location status to `DELETING`, and
    # begins to shut down existing server processes and terminate instances
    # in each location being deleted. When completed, the location status
    # changes to `TERMINATED`.
    #
    # **Learn more**
    #
    # [Setting up Amazon GameLift Servers fleets][1]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html
    #
    # @option params [required, String] :fleet_id
    #   A unique identifier for the fleet to delete locations for. You can use
    #   either the fleet ID or ARN value.
    #
    # @option params [required, Array<String>] :locations
    #   The list of fleet locations to delete. Specify locations in the form
    #   of an Amazon Web Services Region code, such as `us-west-2`.
    #
    # @return [Types::DeleteFleetLocationsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteFleetLocationsOutput#fleet_id #fleet_id} => String
    #   * {Types::DeleteFleetLocationsOutput#fleet_arn #fleet_arn} => String
    #   * {Types::DeleteFleetLocationsOutput#location_states #location_states} => Array&lt;Types::LocationState&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_fleet_locations({
    #     fleet_id: "FleetIdOrArn", # required
    #     locations: ["LocationStringModel"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.fleet_id #=> String
    #   resp.fleet_arn #=> String
    #   resp.location_states #=> Array
    #   resp.location_states[0].location #=> String
    #   resp.location_states[0].status #=> String, one of "NEW", "DOWNLOADING", "VALIDATING", "BUILDING", "ACTIVATING", "ACTIVE", "DELETING", "ERROR", "TERMINATED", "NOT_FOUND"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DeleteFleetLocations AWS API Documentation
    #
    # @overload delete_fleet_locations(params = {})
    # @param [Hash] params ({})
    def delete_fleet_locations(params = {}, options = {})
      req = build_request(:delete_fleet_locations, params)
      req.send_request(options)
    end

    # **This operation is used with the Amazon GameLift Servers FleetIQ
    # solution and game server groups.**
    #
    # Terminates a game server group and permanently deletes the game server
    # group record. You have several options for how these resources are
    # impacted when deleting the game server group. Depending on the type of
    # delete operation selected, this operation might affect these
    # resources:
    #
    # * The game server group
    #
    # * The corresponding Auto Scaling group
    #
    # * All game servers that are currently running in the group
    #
    # To delete a game server group, identify the game server group to
    # delete and specify the type of delete operation to initiate. Game
    # server groups can only be deleted if they are in `ACTIVE` or `ERROR`
    # status.
    #
    # If the delete request is successful, a series of operations are kicked
    # off. The game server group status is changed to `DELETE_SCHEDULED`,
    # which prevents new game servers from being registered and stops
    # automatic scaling activity. Once all game servers in the game server
    # group are deregistered, Amazon GameLift Servers FleetIQ can begin
    # deleting resources. If any of the delete operations fail, the game
    # server group is placed in `ERROR` status.
    #
    # Amazon GameLift Servers FleetIQ emits delete events to Amazon
    # CloudWatch.
    #
    # **Learn more**
    #
    # [Amazon GameLift Servers FleetIQ Guide][1]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/gsg-intro.html
    #
    # @option params [required, String] :game_server_group_name
    #   A unique identifier for the game server group. Use either the name or
    #   ARN value.
    #
    # @option params [String] :delete_option
    #   The type of delete to perform. Options include the following:
    #
    #   * `SAFE_DELETE` – (default) Terminates the game server group and
    #     Amazon EC2 Auto Scaling group only when it has no game servers that
    #     are in `UTILIZED` status.
    #
    #   * `FORCE_DELETE` – Terminates the game server group, including all
    #     active game servers regardless of their utilization status, and the
    #     Amazon EC2 Auto Scaling group.
    #
    #   * `RETAIN` – Does a safe delete of the game server group but retains
    #     the Amazon EC2 Auto Scaling group as is.
    #
    # @return [Types::DeleteGameServerGroupOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteGameServerGroupOutput#game_server_group #game_server_group} => Types::GameServerGroup
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_game_server_group({
    #     game_server_group_name: "GameServerGroupNameOrArn", # required
    #     delete_option: "SAFE_DELETE", # accepts SAFE_DELETE, FORCE_DELETE, RETAIN
    #   })
    #
    # @example Response structure
    #
    #   resp.game_server_group.game_server_group_name #=> String
    #   resp.game_server_group.game_server_group_arn #=> String
    #   resp.game_server_group.role_arn #=> String
    #   resp.game_server_group.instance_definitions #=> Array
    #   resp.game_server_group.instance_definitions[0].instance_type #=> String, one of "c4.large", "c4.xlarge", "c4.2xlarge", "c4.4xlarge", "c4.8xlarge", "c5.large", "c5.xlarge", "c5.2xlarge", "c5.4xlarge", "c5.9xlarge", "c5.12xlarge", "c5.18xlarge", "c5.24xlarge", "c5a.large", "c5a.xlarge", "c5a.2xlarge", "c5a.4xlarge", "c5a.8xlarge", "c5a.12xlarge", "c5a.16xlarge", "c5a.24xlarge", "c6g.medium", "c6g.large", "c6g.xlarge", "c6g.2xlarge", "c6g.4xlarge", "c6g.8xlarge", "c6g.12xlarge", "c6g.16xlarge", "r4.large", "r4.xlarge", "r4.2xlarge", "r4.4xlarge", "r4.8xlarge", "r4.16xlarge", "r5.large", "r5.xlarge", "r5.2xlarge", "r5.4xlarge", "r5.8xlarge", "r5.12xlarge", "r5.16xlarge", "r5.24xlarge", "r5a.large", "r5a.xlarge", "r5a.2xlarge", "r5a.4xlarge", "r5a.8xlarge", "r5a.12xlarge", "r5a.16xlarge", "r5a.24xlarge", "r6g.medium", "r6g.large", "r6g.xlarge", "r6g.2xlarge", "r6g.4xlarge", "r6g.8xlarge", "r6g.12xlarge", "r6g.16xlarge", "m4.large", "m4.xlarge", "m4.2xlarge", "m4.4xlarge", "m4.10xlarge", "m5.large", "m5.xlarge", "m5.2xlarge", "m5.4xlarge", "m5.8xlarge", "m5.12xlarge", "m5.16xlarge", "m5.24xlarge", "m5a.large", "m5a.xlarge", "m5a.2xlarge", "m5a.4xlarge", "m5a.8xlarge", "m5a.12xlarge", "m5a.16xlarge", "m5a.24xlarge", "m6g.medium", "m6g.large", "m6g.xlarge", "m6g.2xlarge", "m6g.4xlarge", "m6g.8xlarge", "m6g.12xlarge", "m6g.16xlarge"
    #   resp.game_server_group.instance_definitions[0].weighted_capacity #=> String
    #   resp.game_server_group.balancing_strategy #=> String, one of "SPOT_ONLY", "SPOT_PREFERRED", "ON_DEMAND_ONLY"
    #   resp.game_server_group.game_server_protection_policy #=> String, one of "NO_PROTECTION", "FULL_PROTECTION"
    #   resp.game_server_group.auto_scaling_group_arn #=> String
    #   resp.game_server_group.status #=> String, one of "NEW", "ACTIVATING", "ACTIVE", "DELETE_SCHEDULED", "DELETING", "DELETED", "ERROR"
    #   resp.game_server_group.status_reason #=> String
    #   resp.game_server_group.suspended_actions #=> Array
    #   resp.game_server_group.suspended_actions[0] #=> String, one of "REPLACE_INSTANCE_TYPES"
    #   resp.game_server_group.creation_time #=> Time
    #   resp.game_server_group.last_updated_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DeleteGameServerGroup AWS API Documentation
    #
    # @overload delete_game_server_group(params = {})
    # @param [Hash] params ({})
    def delete_game_server_group(params = {}, options = {})
      req = build_request(:delete_game_server_group, params)
      req.send_request(options)
    end

    # Deletes a game session queue. Once a queue is successfully deleted,
    # unfulfilled [StartGameSessionPlacement][1] requests that reference the
    # queue will fail. To delete a queue, specify the queue name.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_StartGameSessionPlacement.html
    #
    # @option params [required, String] :name
    #   A descriptive label that is associated with game session queue. Queue
    #   names must be unique within each Region. You can use either the queue
    #   ID or ARN value.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_game_session_queue({
    #     name: "GameSessionQueueNameOrArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DeleteGameSessionQueue AWS API Documentation
    #
    # @overload delete_game_session_queue(params = {})
    # @param [Hash] params ({})
    def delete_game_session_queue(params = {}, options = {})
      req = build_request(:delete_game_session_queue, params)
      req.send_request(options)
    end

    # Deletes a custom location.
    #
    # Before deleting a custom location, review any fleets currently using
    # the custom location and deregister the location if it is in use. For
    # more information, see [DeregisterCompute][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_DeregisterCompute.html
    #
    # @option params [required, String] :location_name
    #   The location name of the custom location to be deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_location({
    #     location_name: "CustomLocationNameOrArnModel", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DeleteLocation AWS API Documentation
    #
    # @overload delete_location(params = {})
    # @param [Hash] params ({})
    def delete_location(params = {}, options = {})
      req = build_request(:delete_location, params)
      req.send_request(options)
    end

    # Permanently removes a FlexMatch matchmaking configuration. To delete,
    # specify the configuration name. A matchmaking configuration cannot be
    # deleted if it is being used in any active matchmaking tickets.
    #
    # @option params [required, String] :name
    #   A unique identifier for the matchmaking configuration. You can use
    #   either the configuration name or ARN value.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_matchmaking_configuration({
    #     name: "MatchmakingConfigurationName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DeleteMatchmakingConfiguration AWS API Documentation
    #
    # @overload delete_matchmaking_configuration(params = {})
    # @param [Hash] params ({})
    def delete_matchmaking_configuration(params = {}, options = {})
      req = build_request(:delete_matchmaking_configuration, params)
      req.send_request(options)
    end

    # Deletes an existing matchmaking rule set. To delete the rule set,
    # provide the rule set name. Rule sets cannot be deleted if they are
    # currently being used by a matchmaking configuration.
    #
    # **Learn more**
    #
    # * [Build a rule set][1]
    #
    # ^
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-rulesets.html
    #
    # @option params [required, String] :name
    #   A unique identifier for the matchmaking rule set to be deleted. (Note:
    #   The rule set name is different from the optional "name" field in the
    #   rule set body.) You can use either the rule set name or ARN value.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_matchmaking_rule_set({
    #     name: "MatchmakingRuleSetName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DeleteMatchmakingRuleSet AWS API Documentation
    #
    # @overload delete_matchmaking_rule_set(params = {})
    # @param [Hash] params ({})
    def delete_matchmaking_rule_set(params = {}, options = {})
      req = build_request(:delete_matchmaking_rule_set, params)
      req.send_request(options)
    end

    # Deletes a fleet scaling policy. Once deleted, the policy is no longer
    # in force and Amazon GameLift Servers removes all record of it. To
    # delete a scaling policy, specify both the scaling policy name and the
    # fleet ID it is associated with.
    #
    # To temporarily suspend scaling policies, use [StopFleetActions][1].
    # This operation suspends all policies for the fleet.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_StopFleetActions.html
    #
    # @option params [required, String] :name
    #   A descriptive label that is associated with a fleet's scaling policy.
    #   Policy names do not need to be unique.
    #
    # @option params [required, String] :fleet_id
    #   A unique identifier for the fleet to be deleted. You can use either
    #   the fleet ID or ARN value.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_scaling_policy({
    #     name: "NonZeroAndMaxString", # required
    #     fleet_id: "FleetIdOrArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DeleteScalingPolicy AWS API Documentation
    #
    # @overload delete_scaling_policy(params = {})
    # @param [Hash] params ({})
    def delete_scaling_policy(params = {}, options = {})
      req = build_request(:delete_scaling_policy, params)
      req.send_request(options)
    end

    # Deletes a Realtime script. This operation permanently deletes the
    # script record. If script files were uploaded, they are also deleted
    # (files stored in an S3 bucket are not deleted).
    #
    # To delete a script, specify the script ID. Before deleting a script,
    # be sure to terminate all fleets that are deployed with the script
    # being deleted. Fleet instances periodically check for script updates,
    # and if the script record no longer exists, the instance will go into
    # an error state and be unable to host game sessions.
    #
    # **Learn more**
    #
    # [Amazon GameLift Servers Amazon GameLift Servers Realtime][1]
    #
    # **Related actions**
    #
    # [All APIs by task][2]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/realtime-intro.html
    # [2]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets
    #
    # @option params [required, String] :script_id
    #   A unique identifier for the Realtime script to delete. You can use
    #   either the script ID or ARN value.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_script({
    #     script_id: "ScriptIdOrArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DeleteScript AWS API Documentation
    #
    # @overload delete_script(params = {})
    # @param [Hash] params ({})
    def delete_script(params = {}, options = {})
      req = build_request(:delete_script, params)
      req.send_request(options)
    end

    # Cancels a pending VPC peering authorization for the specified VPC. If
    # you need to delete an existing VPC peering connection, use
    # [DeleteVpcPeeringConnection][1].
    #
    # **Related actions**
    #
    # [All APIs by task][2]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_DeleteVpcPeeringConnection.html
    # [2]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets
    #
    # @option params [required, String] :game_lift_aws_account_id
    #   A unique identifier for the Amazon Web Services account that you use
    #   to manage your Amazon GameLift Servers fleet. You can find your
    #   Account ID in the Amazon Web Services Management Console under account
    #   settings.
    #
    # @option params [required, String] :peer_vpc_id
    #   A unique identifier for a VPC with resources to be accessed by your
    #   Amazon GameLift Servers fleet. The VPC must be in the same Region as
    #   your fleet. To look up a VPC ID, use the [VPC Dashboard][1] in the
    #   Amazon Web Services Management Console. Learn more about VPC peering
    #   in [VPC Peering with Amazon GameLift Servers Fleets][2].
    #
    #
    #
    #   [1]: https://console.aws.amazon.com/vpc/
    #   [2]: https://docs.aws.amazon.com/gamelift/latest/developerguide/vpc-peering.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_vpc_peering_authorization({
    #     game_lift_aws_account_id: "NonZeroAndMaxString", # required
    #     peer_vpc_id: "NonZeroAndMaxString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DeleteVpcPeeringAuthorization AWS API Documentation
    #
    # @overload delete_vpc_peering_authorization(params = {})
    # @param [Hash] params ({})
    def delete_vpc_peering_authorization(params = {}, options = {})
      req = build_request(:delete_vpc_peering_authorization, params)
      req.send_request(options)
    end

    # Removes a VPC peering connection. To delete the connection, you must
    # have a valid authorization for the VPC peering connection that you
    # want to delete..
    #
    # Once a valid authorization exists, call this operation from the Amazon
    # Web Services account that is used to manage the Amazon GameLift
    # Servers fleets. Identify the connection to delete by the connection ID
    # and fleet ID. If successful, the connection is removed.
    #
    # **Related actions**
    #
    # [All APIs by task][1]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets
    #
    # @option params [required, String] :fleet_id
    #   A unique identifier for the fleet. This fleet specified must match the
    #   fleet referenced in the VPC peering connection record. You can use
    #   either the fleet ID or ARN value.
    #
    # @option params [required, String] :vpc_peering_connection_id
    #   A unique identifier for a VPC peering connection.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_vpc_peering_connection({
    #     fleet_id: "FleetId", # required
    #     vpc_peering_connection_id: "NonZeroAndMaxString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DeleteVpcPeeringConnection AWS API Documentation
    #
    # @overload delete_vpc_peering_connection(params = {})
    # @param [Hash] params ({})
    def delete_vpc_peering_connection(params = {}, options = {})
      req = build_request(:delete_vpc_peering_connection, params)
      req.send_request(options)
    end

    # Removes a compute resource from an Anywhere fleet. Deregistered
    # computes can no longer host game sessions through Amazon GameLift
    # Servers. Use this operation with an Anywhere fleet that doesn't use
    # the Amazon GameLift Servers Agent For Anywhere fleets with the Agent,
    # the Agent handles all compute registry tasks for you.
    #
    # To deregister a compute, call this operation from the compute that's
    # being deregistered and specify the compute name and the fleet ID.
    #
    # @option params [required, String] :fleet_id
    #   A unique identifier for the fleet the compute resource is currently
    #   registered to.
    #
    # @option params [required, String] :compute_name
    #   The unique identifier of the compute resource to deregister. For an
    #   Anywhere fleet compute, use the registered compute name.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.deregister_compute({
    #     fleet_id: "FleetIdOrArn", # required
    #     compute_name: "ComputeNameOrArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DeregisterCompute AWS API Documentation
    #
    # @overload deregister_compute(params = {})
    # @param [Hash] params ({})
    def deregister_compute(params = {}, options = {})
      req = build_request(:deregister_compute, params)
      req.send_request(options)
    end

    # **This operation is used with the Amazon GameLift Servers FleetIQ
    # solution and game server groups.**
    #
    # Removes the game server from a game server group. As a result of this
    # operation, the deregistered game server can no longer be claimed and
    # will not be returned in a list of active game servers.
    #
    # To deregister a game server, specify the game server group and game
    # server ID. If successful, this operation emits a CloudWatch event with
    # termination timestamp and reason.
    #
    # **Learn more**
    #
    # [Amazon GameLift Servers FleetIQ Guide][1]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/gsg-intro.html
    #
    # @option params [required, String] :game_server_group_name
    #   A unique identifier for the game server group where the game server is
    #   running.
    #
    # @option params [required, String] :game_server_id
    #   A custom string that uniquely identifies the game server to
    #   deregister.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.deregister_game_server({
    #     game_server_group_name: "GameServerGroupNameOrArn", # required
    #     game_server_id: "GameServerId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DeregisterGameServer AWS API Documentation
    #
    # @overload deregister_game_server(params = {})
    # @param [Hash] params ({})
    def deregister_game_server(params = {}, options = {})
      req = build_request(:deregister_game_server, params)
      req.send_request(options)
    end

    # Retrieves properties for an alias. This operation returns all alias
    # metadata and settings. To get an alias's target fleet ID only, use
    # `ResolveAlias`.
    #
    # To get alias properties, specify the alias ID. If successful, the
    # requested alias record is returned.
    #
    # **Related actions**
    #
    # [All APIs by task][1]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets
    #
    # @option params [required, String] :alias_id
    #   The unique identifier for the fleet alias that you want to retrieve.
    #   You can use either the alias ID or ARN value.
    #
    # @return [Types::DescribeAliasOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAliasOutput#alias #alias} => Types::Alias
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_alias({
    #     alias_id: "AliasIdOrArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.alias.alias_id #=> String
    #   resp.alias.name #=> String
    #   resp.alias.alias_arn #=> String
    #   resp.alias.description #=> String
    #   resp.alias.routing_strategy.type #=> String, one of "SIMPLE", "TERMINAL"
    #   resp.alias.routing_strategy.fleet_id #=> String
    #   resp.alias.routing_strategy.message #=> String
    #   resp.alias.creation_time #=> Time
    #   resp.alias.last_updated_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeAlias AWS API Documentation
    #
    # @overload describe_alias(params = {})
    # @param [Hash] params ({})
    def describe_alias(params = {}, options = {})
      req = build_request(:describe_alias, params)
      req.send_request(options)
    end

    # Retrieves properties for a custom game build. To request a build
    # resource, specify a build ID. If successful, an object containing the
    # build properties is returned.
    #
    # **Learn more**
    #
    # [ Upload a Custom Server Build][1]
    #
    # [All APIs by task][2]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-build-intro.html
    # [2]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets
    #
    # @option params [required, String] :build_id
    #   A unique identifier for the build to retrieve properties for. You can
    #   use either the build ID or ARN value.
    #
    # @return [Types::DescribeBuildOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeBuildOutput#build #build} => Types::Build
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_build({
    #     build_id: "BuildIdOrArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.build.build_id #=> String
    #   resp.build.build_arn #=> String
    #   resp.build.name #=> String
    #   resp.build.version #=> String
    #   resp.build.status #=> String, one of "INITIALIZED", "READY", "FAILED"
    #   resp.build.size_on_disk #=> Integer
    #   resp.build.operating_system #=> String, one of "WINDOWS_2012", "AMAZON_LINUX", "AMAZON_LINUX_2", "WINDOWS_2016", "AMAZON_LINUX_2023"
    #   resp.build.creation_time #=> Time
    #   resp.build.server_sdk_version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeBuild AWS API Documentation
    #
    # @overload describe_build(params = {})
    # @param [Hash] params ({})
    def describe_build(params = {}, options = {})
      req = build_request(:describe_build, params)
      req.send_request(options)
    end

    # Retrieves properties for a specific compute resource in an Amazon
    # GameLift Servers fleet. You can list all computes in a fleet by
    # calling [ListCompute][1].
    #
    # **Request options**
    #
    # Provide the fleet ID and compute name. The compute name varies
    # depending on the type of fleet.
    #
    # * For a compute in a managed EC2 fleet, provide an instance ID. Each
    #   instance in the fleet is a compute.
    #
    # * For a compute in a managed container fleet, provide a compute name.
    #   In a container fleet, each game server container group on a fleet
    #   instance is assigned a compute name.
    #
    # * For a compute in an Anywhere fleet, provide a registered compute
    #   name. Anywhere fleet computes are created when you register a
    #   hosting resource with the fleet.
    #
    # **Results**
    #
    # If successful, this operation returns details for the requested
    # compute resource. Depending on the fleet's compute type, the result
    # includes the following information:
    #
    # * For a managed EC2 fleet, this operation returns information about
    #   the EC2 instance.
    #
    # * For an Anywhere fleet, this operation returns information about the
    #   registered compute.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_ListCompute.html
    #
    # @option params [required, String] :fleet_id
    #   A unique identifier for the fleet that the compute belongs to. You can
    #   use either the fleet ID or ARN value.
    #
    # @option params [required, String] :compute_name
    #   The unique identifier of the compute resource to retrieve properties
    #   for. For a managed container fleet or Anywhere fleet, use a compute
    #   name. For an EC2 fleet, use an instance ID. To retrieve a fleet's
    #   compute identifiers, call [ListCompute][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_ListCompute.html
    #
    # @return [Types::DescribeComputeOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeComputeOutput#compute #compute} => Types::Compute
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_compute({
    #     fleet_id: "FleetIdOrArn", # required
    #     compute_name: "ComputeNameOrArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.compute.fleet_id #=> String
    #   resp.compute.fleet_arn #=> String
    #   resp.compute.compute_name #=> String
    #   resp.compute.compute_arn #=> String
    #   resp.compute.ip_address #=> String
    #   resp.compute.dns_name #=> String
    #   resp.compute.compute_status #=> String, one of "PENDING", "ACTIVE", "TERMINATING", "IMPAIRED"
    #   resp.compute.location #=> String
    #   resp.compute.creation_time #=> Time
    #   resp.compute.operating_system #=> String, one of "WINDOWS_2012", "AMAZON_LINUX", "AMAZON_LINUX_2", "WINDOWS_2016", "AMAZON_LINUX_2023"
    #   resp.compute.type #=> String, one of "t2.micro", "t2.small", "t2.medium", "t2.large", "c3.large", "c3.xlarge", "c3.2xlarge", "c3.4xlarge", "c3.8xlarge", "c4.large", "c4.xlarge", "c4.2xlarge", "c4.4xlarge", "c4.8xlarge", "c5.large", "c5.xlarge", "c5.2xlarge", "c5.4xlarge", "c5.9xlarge", "c5.12xlarge", "c5.18xlarge", "c5.24xlarge", "c5a.large", "c5a.xlarge", "c5a.2xlarge", "c5a.4xlarge", "c5a.8xlarge", "c5a.12xlarge", "c5a.16xlarge", "c5a.24xlarge", "r3.large", "r3.xlarge", "r3.2xlarge", "r3.4xlarge", "r3.8xlarge", "r4.large", "r4.xlarge", "r4.2xlarge", "r4.4xlarge", "r4.8xlarge", "r4.16xlarge", "r5.large", "r5.xlarge", "r5.2xlarge", "r5.4xlarge", "r5.8xlarge", "r5.12xlarge", "r5.16xlarge", "r5.24xlarge", "r5a.large", "r5a.xlarge", "r5a.2xlarge", "r5a.4xlarge", "r5a.8xlarge", "r5a.12xlarge", "r5a.16xlarge", "r5a.24xlarge", "m3.medium", "m3.large", "m3.xlarge", "m3.2xlarge", "m4.large", "m4.xlarge", "m4.2xlarge", "m4.4xlarge", "m4.10xlarge", "m5.large", "m5.xlarge", "m5.2xlarge", "m5.4xlarge", "m5.8xlarge", "m5.12xlarge", "m5.16xlarge", "m5.24xlarge", "m5a.large", "m5a.xlarge", "m5a.2xlarge", "m5a.4xlarge", "m5a.8xlarge", "m5a.12xlarge", "m5a.16xlarge", "m5a.24xlarge", "c5d.large", "c5d.xlarge", "c5d.2xlarge", "c5d.4xlarge", "c5d.9xlarge", "c5d.12xlarge", "c5d.18xlarge", "c5d.24xlarge", "c6a.large", "c6a.xlarge", "c6a.2xlarge", "c6a.4xlarge", "c6a.8xlarge", "c6a.12xlarge", "c6a.16xlarge", "c6a.24xlarge", "c6i.large", "c6i.xlarge", "c6i.2xlarge", "c6i.4xlarge", "c6i.8xlarge", "c6i.12xlarge", "c6i.16xlarge", "c6i.24xlarge", "r5d.large", "r5d.xlarge", "r5d.2xlarge", "r5d.4xlarge", "r5d.8xlarge", "r5d.12xlarge", "r5d.16xlarge", "r5d.24xlarge", "m6g.medium", "m6g.large", "m6g.xlarge", "m6g.2xlarge", "m6g.4xlarge", "m6g.8xlarge", "m6g.12xlarge", "m6g.16xlarge", "c6g.medium", "c6g.large", "c6g.xlarge", "c6g.2xlarge", "c6g.4xlarge", "c6g.8xlarge", "c6g.12xlarge", "c6g.16xlarge", "r6g.medium", "r6g.large", "r6g.xlarge", "r6g.2xlarge", "r6g.4xlarge", "r6g.8xlarge", "r6g.12xlarge", "r6g.16xlarge", "c6gn.medium", "c6gn.large", "c6gn.xlarge", "c6gn.2xlarge", "c6gn.4xlarge", "c6gn.8xlarge", "c6gn.12xlarge", "c6gn.16xlarge", "c7g.medium", "c7g.large", "c7g.xlarge", "c7g.2xlarge", "c7g.4xlarge", "c7g.8xlarge", "c7g.12xlarge", "c7g.16xlarge", "r7g.medium", "r7g.large", "r7g.xlarge", "r7g.2xlarge", "r7g.4xlarge", "r7g.8xlarge", "r7g.12xlarge", "r7g.16xlarge", "m7g.medium", "m7g.large", "m7g.xlarge", "m7g.2xlarge", "m7g.4xlarge", "m7g.8xlarge", "m7g.12xlarge", "m7g.16xlarge", "g5g.xlarge", "g5g.2xlarge", "g5g.4xlarge", "g5g.8xlarge", "g5g.16xlarge", "r6i.large", "r6i.xlarge", "r6i.2xlarge", "r6i.4xlarge", "r6i.8xlarge", "r6i.12xlarge", "r6i.16xlarge", "c6gd.medium", "c6gd.large", "c6gd.xlarge", "c6gd.2xlarge", "c6gd.4xlarge", "c6gd.8xlarge", "c6gd.12xlarge", "c6gd.16xlarge", "c6in.large", "c6in.xlarge", "c6in.2xlarge", "c6in.4xlarge", "c6in.8xlarge", "c6in.12xlarge", "c6in.16xlarge", "c7a.medium", "c7a.large", "c7a.xlarge", "c7a.2xlarge", "c7a.4xlarge", "c7a.8xlarge", "c7a.12xlarge", "c7a.16xlarge", "c7gd.medium", "c7gd.large", "c7gd.xlarge", "c7gd.2xlarge", "c7gd.4xlarge", "c7gd.8xlarge", "c7gd.12xlarge", "c7gd.16xlarge", "c7gn.medium", "c7gn.large", "c7gn.xlarge", "c7gn.2xlarge", "c7gn.4xlarge", "c7gn.8xlarge", "c7gn.12xlarge", "c7gn.16xlarge", "c7i.large", "c7i.xlarge", "c7i.2xlarge", "c7i.4xlarge", "c7i.8xlarge", "c7i.12xlarge", "c7i.16xlarge", "m6a.large", "m6a.xlarge", "m6a.2xlarge", "m6a.4xlarge", "m6a.8xlarge", "m6a.12xlarge", "m6a.16xlarge", "m6gd.medium", "m6gd.large", "m6gd.xlarge", "m6gd.2xlarge", "m6gd.4xlarge", "m6gd.8xlarge", "m6gd.12xlarge", "m6gd.16xlarge", "m6i.large", "m6i.xlarge", "m6i.2xlarge", "m6i.4xlarge", "m6i.8xlarge", "m6i.12xlarge", "m6i.16xlarge", "m7a.medium", "m7a.large", "m7a.xlarge", "m7a.2xlarge", "m7a.4xlarge", "m7a.8xlarge", "m7a.12xlarge", "m7a.16xlarge", "m7gd.medium", "m7gd.large", "m7gd.xlarge", "m7gd.2xlarge", "m7gd.4xlarge", "m7gd.8xlarge", "m7gd.12xlarge", "m7gd.16xlarge", "m7i.large", "m7i.xlarge", "m7i.2xlarge", "m7i.4xlarge", "m7i.8xlarge", "m7i.12xlarge", "m7i.16xlarge", "r6gd.medium", "r6gd.large", "r6gd.xlarge", "r6gd.2xlarge", "r6gd.4xlarge", "r6gd.8xlarge", "r6gd.12xlarge", "r6gd.16xlarge", "r7a.medium", "r7a.large", "r7a.xlarge", "r7a.2xlarge", "r7a.4xlarge", "r7a.8xlarge", "r7a.12xlarge", "r7a.16xlarge", "r7gd.medium", "r7gd.large", "r7gd.xlarge", "r7gd.2xlarge", "r7gd.4xlarge", "r7gd.8xlarge", "r7gd.12xlarge", "r7gd.16xlarge", "r7i.large", "r7i.xlarge", "r7i.2xlarge", "r7i.4xlarge", "r7i.8xlarge", "r7i.12xlarge", "r7i.16xlarge", "r7i.24xlarge", "r7i.48xlarge", "c5ad.large", "c5ad.xlarge", "c5ad.2xlarge", "c5ad.4xlarge", "c5ad.8xlarge", "c5ad.12xlarge", "c5ad.16xlarge", "c5ad.24xlarge", "c5n.large", "c5n.xlarge", "c5n.2xlarge", "c5n.4xlarge", "c5n.9xlarge", "c5n.18xlarge", "r5ad.large", "r5ad.xlarge", "r5ad.2xlarge", "r5ad.4xlarge", "r5ad.8xlarge", "r5ad.12xlarge", "r5ad.16xlarge", "r5ad.24xlarge", "c6id.large", "c6id.xlarge", "c6id.2xlarge", "c6id.4xlarge", "c6id.8xlarge", "c6id.12xlarge", "c6id.16xlarge", "c6id.24xlarge", "c6id.32xlarge", "c8g.medium", "c8g.large", "c8g.xlarge", "c8g.2xlarge", "c8g.4xlarge", "c8g.8xlarge", "c8g.12xlarge", "c8g.16xlarge", "c8g.24xlarge", "c8g.48xlarge", "m5ad.large", "m5ad.xlarge", "m5ad.2xlarge", "m5ad.4xlarge", "m5ad.8xlarge", "m5ad.12xlarge", "m5ad.16xlarge", "m5ad.24xlarge", "m5d.large", "m5d.xlarge", "m5d.2xlarge", "m5d.4xlarge", "m5d.8xlarge", "m5d.12xlarge", "m5d.16xlarge", "m5d.24xlarge", "m5dn.large", "m5dn.xlarge", "m5dn.2xlarge", "m5dn.4xlarge", "m5dn.8xlarge", "m5dn.12xlarge", "m5dn.16xlarge", "m5dn.24xlarge", "m5n.large", "m5n.xlarge", "m5n.2xlarge", "m5n.4xlarge", "m5n.8xlarge", "m5n.12xlarge", "m5n.16xlarge", "m5n.24xlarge", "m6id.large", "m6id.xlarge", "m6id.2xlarge", "m6id.4xlarge", "m6id.8xlarge", "m6id.12xlarge", "m6id.16xlarge", "m6id.24xlarge", "m6id.32xlarge", "m6idn.large", "m6idn.xlarge", "m6idn.2xlarge", "m6idn.4xlarge", "m6idn.8xlarge", "m6idn.12xlarge", "m6idn.16xlarge", "m6idn.24xlarge", "m6idn.32xlarge", "m6in.large", "m6in.xlarge", "m6in.2xlarge", "m6in.4xlarge", "m6in.8xlarge", "m6in.12xlarge", "m6in.16xlarge", "m6in.24xlarge", "m6in.32xlarge", "m8g.medium", "m8g.large", "m8g.xlarge", "m8g.2xlarge", "m8g.4xlarge", "m8g.8xlarge", "m8g.12xlarge", "m8g.16xlarge", "m8g.24xlarge", "m8g.48xlarge", "r5dn.large", "r5dn.xlarge", "r5dn.2xlarge", "r5dn.4xlarge", "r5dn.8xlarge", "r5dn.12xlarge", "r5dn.16xlarge", "r5dn.24xlarge", "r5n.large", "r5n.xlarge", "r5n.2xlarge", "r5n.4xlarge", "r5n.8xlarge", "r5n.12xlarge", "r5n.16xlarge", "r5n.24xlarge", "r6a.large", "r6a.xlarge", "r6a.2xlarge", "r6a.4xlarge", "r6a.8xlarge", "r6a.12xlarge", "r6a.16xlarge", "r6a.24xlarge", "r6a.32xlarge", "r6a.48xlarge", "r6id.large", "r6id.xlarge", "r6id.2xlarge", "r6id.4xlarge", "r6id.8xlarge", "r6id.12xlarge", "r6id.16xlarge", "r6id.24xlarge", "r6id.32xlarge", "r6idn.large", "r6idn.xlarge", "r6idn.2xlarge", "r6idn.4xlarge", "r6idn.8xlarge", "r6idn.12xlarge", "r6idn.16xlarge", "r6idn.24xlarge", "r6idn.32xlarge", "r6in.large", "r6in.xlarge", "r6in.2xlarge", "r6in.4xlarge", "r6in.8xlarge", "r6in.12xlarge", "r6in.16xlarge", "r6in.24xlarge", "r6in.32xlarge", "r8g.medium", "r8g.large", "r8g.xlarge", "r8g.2xlarge", "r8g.4xlarge", "r8g.8xlarge", "r8g.12xlarge", "r8g.16xlarge", "r8g.24xlarge", "r8g.48xlarge", "m4.16xlarge", "c6a.32xlarge", "c6a.48xlarge", "c6i.32xlarge", "r6i.24xlarge", "r6i.32xlarge", "c6in.24xlarge", "c6in.32xlarge", "c7a.24xlarge", "c7a.32xlarge", "c7a.48xlarge", "c7i.24xlarge", "c7i.48xlarge", "m6a.24xlarge", "m6a.32xlarge", "m6a.48xlarge", "m6i.24xlarge", "m6i.32xlarge", "m7a.24xlarge", "m7a.32xlarge", "m7a.48xlarge", "m7i.24xlarge", "m7i.48xlarge", "r7a.24xlarge", "r7a.32xlarge", "r7a.48xlarge"
    #   resp.compute.game_lift_service_sdk_endpoint #=> String
    #   resp.compute.game_lift_agent_endpoint #=> String
    #   resp.compute.instance_id #=> String
    #   resp.compute.container_attributes #=> Array
    #   resp.compute.container_attributes[0].container_name #=> String
    #   resp.compute.container_attributes[0].container_runtime_id #=> String
    #   resp.compute.game_server_container_group_definition_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeCompute AWS API Documentation
    #
    # @overload describe_compute(params = {})
    # @param [Hash] params ({})
    def describe_compute(params = {}, options = {})
      req = build_request(:describe_compute, params)
      req.send_request(options)
    end

    # Retrieves the properties for a container fleet. When requesting
    # attributes for multiple fleets, use the pagination parameters to
    # retrieve results as a set of sequential pages.
    #
    # **Request options**
    #
    # * Get container fleet properties for a single fleet. Provide either
    #   the fleet ID or ARN value.
    #
    # ^
    #
    # **Results**
    #
    # If successful, a `ContainerFleet` object is returned. This object
    # includes the fleet properties, including information about the most
    # recent deployment.
    #
    # <note markdown="1"> Some API operations limit the number of fleet IDs that allowed in one
    # request. If a request exceeds this limit, the request fails and the
    # error message contains the maximum allowed number.
    #
    #  </note>
    #
    # @option params [required, String] :fleet_id
    #   A unique identifier for the container fleet to retrieve. You can use
    #   either the fleet ID or ARN value.
    #
    # @return [Types::DescribeContainerFleetOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeContainerFleetOutput#container_fleet #container_fleet} => Types::ContainerFleet
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_container_fleet({
    #     fleet_id: "FleetIdOrArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.container_fleet.fleet_id #=> String
    #   resp.container_fleet.fleet_arn #=> String
    #   resp.container_fleet.fleet_role_arn #=> String
    #   resp.container_fleet.game_server_container_group_definition_name #=> String
    #   resp.container_fleet.game_server_container_group_definition_arn #=> String
    #   resp.container_fleet.per_instance_container_group_definition_name #=> String
    #   resp.container_fleet.per_instance_container_group_definition_arn #=> String
    #   resp.container_fleet.instance_connection_port_range.from_port #=> Integer
    #   resp.container_fleet.instance_connection_port_range.to_port #=> Integer
    #   resp.container_fleet.instance_inbound_permissions #=> Array
    #   resp.container_fleet.instance_inbound_permissions[0].from_port #=> Integer
    #   resp.container_fleet.instance_inbound_permissions[0].to_port #=> Integer
    #   resp.container_fleet.instance_inbound_permissions[0].ip_range #=> String
    #   resp.container_fleet.instance_inbound_permissions[0].protocol #=> String, one of "TCP", "UDP"
    #   resp.container_fleet.game_server_container_groups_per_instance #=> Integer
    #   resp.container_fleet.maximum_game_server_container_groups_per_instance #=> Integer
    #   resp.container_fleet.instance_type #=> String
    #   resp.container_fleet.billing_type #=> String, one of "ON_DEMAND", "SPOT"
    #   resp.container_fleet.description #=> String
    #   resp.container_fleet.creation_time #=> Time
    #   resp.container_fleet.metric_groups #=> Array
    #   resp.container_fleet.metric_groups[0] #=> String
    #   resp.container_fleet.new_game_session_protection_policy #=> String, one of "NoProtection", "FullProtection"
    #   resp.container_fleet.game_session_creation_limit_policy.new_game_sessions_per_creator #=> Integer
    #   resp.container_fleet.game_session_creation_limit_policy.policy_period_in_minutes #=> Integer
    #   resp.container_fleet.status #=> String, one of "PENDING", "CREATING", "CREATED", "ACTIVATING", "ACTIVE", "UPDATING", "DELETING"
    #   resp.container_fleet.deployment_details.latest_deployment_id #=> String
    #   resp.container_fleet.log_configuration.log_destination #=> String, one of "NONE", "CLOUDWATCH", "S3"
    #   resp.container_fleet.log_configuration.s3_bucket_name #=> String
    #   resp.container_fleet.log_configuration.log_group_arn #=> String
    #   resp.container_fleet.location_attributes #=> Array
    #   resp.container_fleet.location_attributes[0].location #=> String
    #   resp.container_fleet.location_attributes[0].status #=> String, one of "PENDING", "CREATING", "CREATED", "ACTIVATING", "ACTIVE", "UPDATING", "DELETING"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeContainerFleet AWS API Documentation
    #
    # @overload describe_container_fleet(params = {})
    # @param [Hash] params ({})
    def describe_container_fleet(params = {}, options = {})
      req = build_request(:describe_container_fleet, params)
      req.send_request(options)
    end

    # Retrieves the properties of a container group definition, including
    # all container definitions in the group.
    #
    # **Request options:**
    #
    # * Retrieve the latest version of a container group definition. Specify
    #   the container group definition name only, or use an ARN value
    #   without a version number.
    #
    # * Retrieve a particular version. Specify the container group
    #   definition name and a version number, or use an ARN value that
    #   includes the version number.
    #
    # **Results:**
    #
    # If successful, this operation returns the complete properties of a
    # container group definition version.
    #
    # **Learn more**
    #
    # * [Manage a container group definition][1]
    #
    # ^
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/containers-create-groups.html
    #
    # @option params [required, String] :name
    #   The unique identifier for the container group definition to retrieve
    #   properties for. You can use either the `Name` or `ARN` value.
    #
    # @option params [Integer] :version_number
    #   The specific version to retrieve.
    #
    # @return [Types::DescribeContainerGroupDefinitionOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeContainerGroupDefinitionOutput#container_group_definition #container_group_definition} => Types::ContainerGroupDefinition
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_container_group_definition({
    #     name: "ContainerGroupDefinitionNameOrArn", # required
    #     version_number: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.container_group_definition.container_group_definition_arn #=> String
    #   resp.container_group_definition.creation_time #=> Time
    #   resp.container_group_definition.operating_system #=> String, one of "AMAZON_LINUX_2023"
    #   resp.container_group_definition.name #=> String
    #   resp.container_group_definition.container_group_type #=> String, one of "GAME_SERVER", "PER_INSTANCE"
    #   resp.container_group_definition.total_memory_limit_mebibytes #=> Integer
    #   resp.container_group_definition.total_vcpu_limit #=> Float
    #   resp.container_group_definition.game_server_container_definition.container_name #=> String
    #   resp.container_group_definition.game_server_container_definition.depends_on #=> Array
    #   resp.container_group_definition.game_server_container_definition.depends_on[0].container_name #=> String
    #   resp.container_group_definition.game_server_container_definition.depends_on[0].condition #=> String, one of "START", "COMPLETE", "SUCCESS", "HEALTHY"
    #   resp.container_group_definition.game_server_container_definition.mount_points #=> Array
    #   resp.container_group_definition.game_server_container_definition.mount_points[0].instance_path #=> String
    #   resp.container_group_definition.game_server_container_definition.mount_points[0].container_path #=> String
    #   resp.container_group_definition.game_server_container_definition.mount_points[0].access_level #=> String, one of "READ_ONLY", "READ_AND_WRITE"
    #   resp.container_group_definition.game_server_container_definition.environment_override #=> Array
    #   resp.container_group_definition.game_server_container_definition.environment_override[0].name #=> String
    #   resp.container_group_definition.game_server_container_definition.environment_override[0].value #=> String
    #   resp.container_group_definition.game_server_container_definition.image_uri #=> String
    #   resp.container_group_definition.game_server_container_definition.port_configuration.container_port_ranges #=> Array
    #   resp.container_group_definition.game_server_container_definition.port_configuration.container_port_ranges[0].from_port #=> Integer
    #   resp.container_group_definition.game_server_container_definition.port_configuration.container_port_ranges[0].to_port #=> Integer
    #   resp.container_group_definition.game_server_container_definition.port_configuration.container_port_ranges[0].protocol #=> String, one of "TCP", "UDP"
    #   resp.container_group_definition.game_server_container_definition.resolved_image_digest #=> String
    #   resp.container_group_definition.game_server_container_definition.server_sdk_version #=> String
    #   resp.container_group_definition.support_container_definitions #=> Array
    #   resp.container_group_definition.support_container_definitions[0].container_name #=> String
    #   resp.container_group_definition.support_container_definitions[0].depends_on #=> Array
    #   resp.container_group_definition.support_container_definitions[0].depends_on[0].container_name #=> String
    #   resp.container_group_definition.support_container_definitions[0].depends_on[0].condition #=> String, one of "START", "COMPLETE", "SUCCESS", "HEALTHY"
    #   resp.container_group_definition.support_container_definitions[0].mount_points #=> Array
    #   resp.container_group_definition.support_container_definitions[0].mount_points[0].instance_path #=> String
    #   resp.container_group_definition.support_container_definitions[0].mount_points[0].container_path #=> String
    #   resp.container_group_definition.support_container_definitions[0].mount_points[0].access_level #=> String, one of "READ_ONLY", "READ_AND_WRITE"
    #   resp.container_group_definition.support_container_definitions[0].environment_override #=> Array
    #   resp.container_group_definition.support_container_definitions[0].environment_override[0].name #=> String
    #   resp.container_group_definition.support_container_definitions[0].environment_override[0].value #=> String
    #   resp.container_group_definition.support_container_definitions[0].essential #=> Boolean
    #   resp.container_group_definition.support_container_definitions[0].health_check.command #=> Array
    #   resp.container_group_definition.support_container_definitions[0].health_check.command[0] #=> String
    #   resp.container_group_definition.support_container_definitions[0].health_check.interval #=> Integer
    #   resp.container_group_definition.support_container_definitions[0].health_check.retries #=> Integer
    #   resp.container_group_definition.support_container_definitions[0].health_check.start_period #=> Integer
    #   resp.container_group_definition.support_container_definitions[0].health_check.timeout #=> Integer
    #   resp.container_group_definition.support_container_definitions[0].image_uri #=> String
    #   resp.container_group_definition.support_container_definitions[0].memory_hard_limit_mebibytes #=> Integer
    #   resp.container_group_definition.support_container_definitions[0].port_configuration.container_port_ranges #=> Array
    #   resp.container_group_definition.support_container_definitions[0].port_configuration.container_port_ranges[0].from_port #=> Integer
    #   resp.container_group_definition.support_container_definitions[0].port_configuration.container_port_ranges[0].to_port #=> Integer
    #   resp.container_group_definition.support_container_definitions[0].port_configuration.container_port_ranges[0].protocol #=> String, one of "TCP", "UDP"
    #   resp.container_group_definition.support_container_definitions[0].resolved_image_digest #=> String
    #   resp.container_group_definition.support_container_definitions[0].vcpu #=> Float
    #   resp.container_group_definition.version_number #=> Integer
    #   resp.container_group_definition.version_description #=> String
    #   resp.container_group_definition.status #=> String, one of "READY", "COPYING", "FAILED"
    #   resp.container_group_definition.status_reason #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeContainerGroupDefinition AWS API Documentation
    #
    # @overload describe_container_group_definition(params = {})
    # @param [Hash] params ({})
    def describe_container_group_definition(params = {}, options = {})
      req = build_request(:describe_container_group_definition, params)
      req.send_request(options)
    end

    # Retrieves the instance limits and current utilization for an Amazon
    # Web Services Region or location. Instance limits control the number of
    # instances, per instance type, per location, that your Amazon Web
    # Services account can use. Learn more at [Amazon EC2 Instance
    # Types][1]. The information returned includes the maximum number of
    # instances allowed and your account's current usage across all fleets.
    # This information can affect your ability to scale your Amazon GameLift
    # Servers fleets. You can request a limit increase for your account by
    # using the **Service limits** page in the Amazon GameLift Servers
    # console.
    #
    # Instance limits differ based on whether the instances are deployed in
    # a fleet's home Region or in a remote location. For remote locations,
    # limits also differ based on the combination of home Region and remote
    # location. All requests must specify an Amazon Web Services Region
    # (either explicitly or as your default settings). To get the limit for
    # a remote location, you must also specify the location. For example,
    # the following requests all return different results:
    #
    # * Request specifies the Region `ap-northeast-1` with no location. The
    #   result is limits and usage data on all instance types that are
    #   deployed in `us-east-2`, by all of the fleets that reside in
    #   `ap-northeast-1`.
    #
    # * Request specifies the Region `us-east-1` with location
    #   `ca-central-1`. The result is limits and usage data on all instance
    #   types that are deployed in `ca-central-1`, by all of the fleets that
    #   reside in `us-east-2`. These limits do not affect fleets in any
    #   other Regions that deploy instances to `ca-central-1`.
    #
    # * Request specifies the Region `eu-west-1` with location
    #   `ca-central-1`. The result is limits and usage data on all instance
    #   types that are deployed in `ca-central-1`, by all of the fleets that
    #   reside in `eu-west-1`.
    #
    # This operation can be used in the following ways:
    #
    # * To get limit and usage data for all instance types that are deployed
    #   in an Amazon Web Services Region by fleets that reside in the same
    #   Region: Specify the Region only. Optionally, specify a single
    #   instance type to retrieve information for.
    #
    # * To get limit and usage data for all instance types that are deployed
    #   to a remote location by fleets that reside in different Amazon Web
    #   Services Region: Provide both the Amazon Web Services Region and the
    #   remote location. Optionally, specify a single instance type to
    #   retrieve information for.
    #
    # If successful, an `EC2InstanceLimits` object is returned with limits
    # and usage data for each requested instance type.
    #
    # **Learn more**
    #
    # [Setting up Amazon GameLift Servers fleets][2]
    #
    #
    #
    # [1]: http://aws.amazon.com/ec2/instance-types/
    # [2]: https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html
    #
    # @option params [String] :ec2_instance_type
    #   Name of an Amazon EC2 instance type that is supported in Amazon
    #   GameLift Servers. A fleet instance type determines the computing
    #   resources of each instance in the fleet, including CPU, memory,
    #   storage, and networking capacity. Do not specify a value for this
    #   parameter to retrieve limits for all instance types.
    #
    # @option params [String] :location
    #   The name of a remote location to request instance limits for, in the
    #   form of an Amazon Web Services Region code such as `us-west-2`.
    #
    # @return [Types::DescribeEC2InstanceLimitsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeEC2InstanceLimitsOutput#ec2_instance_limits #ec2_instance_limits} => Array&lt;Types::EC2InstanceLimit&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_ec2_instance_limits({
    #     ec2_instance_type: "t2.micro", # accepts t2.micro, t2.small, t2.medium, t2.large, c3.large, c3.xlarge, c3.2xlarge, c3.4xlarge, c3.8xlarge, c4.large, c4.xlarge, c4.2xlarge, c4.4xlarge, c4.8xlarge, c5.large, c5.xlarge, c5.2xlarge, c5.4xlarge, c5.9xlarge, c5.12xlarge, c5.18xlarge, c5.24xlarge, c5a.large, c5a.xlarge, c5a.2xlarge, c5a.4xlarge, c5a.8xlarge, c5a.12xlarge, c5a.16xlarge, c5a.24xlarge, r3.large, r3.xlarge, r3.2xlarge, r3.4xlarge, r3.8xlarge, r4.large, r4.xlarge, r4.2xlarge, r4.4xlarge, r4.8xlarge, r4.16xlarge, r5.large, r5.xlarge, r5.2xlarge, r5.4xlarge, r5.8xlarge, r5.12xlarge, r5.16xlarge, r5.24xlarge, r5a.large, r5a.xlarge, r5a.2xlarge, r5a.4xlarge, r5a.8xlarge, r5a.12xlarge, r5a.16xlarge, r5a.24xlarge, m3.medium, m3.large, m3.xlarge, m3.2xlarge, m4.large, m4.xlarge, m4.2xlarge, m4.4xlarge, m4.10xlarge, m5.large, m5.xlarge, m5.2xlarge, m5.4xlarge, m5.8xlarge, m5.12xlarge, m5.16xlarge, m5.24xlarge, m5a.large, m5a.xlarge, m5a.2xlarge, m5a.4xlarge, m5a.8xlarge, m5a.12xlarge, m5a.16xlarge, m5a.24xlarge, c5d.large, c5d.xlarge, c5d.2xlarge, c5d.4xlarge, c5d.9xlarge, c5d.12xlarge, c5d.18xlarge, c5d.24xlarge, c6a.large, c6a.xlarge, c6a.2xlarge, c6a.4xlarge, c6a.8xlarge, c6a.12xlarge, c6a.16xlarge, c6a.24xlarge, c6i.large, c6i.xlarge, c6i.2xlarge, c6i.4xlarge, c6i.8xlarge, c6i.12xlarge, c6i.16xlarge, c6i.24xlarge, r5d.large, r5d.xlarge, r5d.2xlarge, r5d.4xlarge, r5d.8xlarge, r5d.12xlarge, r5d.16xlarge, r5d.24xlarge, m6g.medium, m6g.large, m6g.xlarge, m6g.2xlarge, m6g.4xlarge, m6g.8xlarge, m6g.12xlarge, m6g.16xlarge, c6g.medium, c6g.large, c6g.xlarge, c6g.2xlarge, c6g.4xlarge, c6g.8xlarge, c6g.12xlarge, c6g.16xlarge, r6g.medium, r6g.large, r6g.xlarge, r6g.2xlarge, r6g.4xlarge, r6g.8xlarge, r6g.12xlarge, r6g.16xlarge, c6gn.medium, c6gn.large, c6gn.xlarge, c6gn.2xlarge, c6gn.4xlarge, c6gn.8xlarge, c6gn.12xlarge, c6gn.16xlarge, c7g.medium, c7g.large, c7g.xlarge, c7g.2xlarge, c7g.4xlarge, c7g.8xlarge, c7g.12xlarge, c7g.16xlarge, r7g.medium, r7g.large, r7g.xlarge, r7g.2xlarge, r7g.4xlarge, r7g.8xlarge, r7g.12xlarge, r7g.16xlarge, m7g.medium, m7g.large, m7g.xlarge, m7g.2xlarge, m7g.4xlarge, m7g.8xlarge, m7g.12xlarge, m7g.16xlarge, g5g.xlarge, g5g.2xlarge, g5g.4xlarge, g5g.8xlarge, g5g.16xlarge, r6i.large, r6i.xlarge, r6i.2xlarge, r6i.4xlarge, r6i.8xlarge, r6i.12xlarge, r6i.16xlarge, c6gd.medium, c6gd.large, c6gd.xlarge, c6gd.2xlarge, c6gd.4xlarge, c6gd.8xlarge, c6gd.12xlarge, c6gd.16xlarge, c6in.large, c6in.xlarge, c6in.2xlarge, c6in.4xlarge, c6in.8xlarge, c6in.12xlarge, c6in.16xlarge, c7a.medium, c7a.large, c7a.xlarge, c7a.2xlarge, c7a.4xlarge, c7a.8xlarge, c7a.12xlarge, c7a.16xlarge, c7gd.medium, c7gd.large, c7gd.xlarge, c7gd.2xlarge, c7gd.4xlarge, c7gd.8xlarge, c7gd.12xlarge, c7gd.16xlarge, c7gn.medium, c7gn.large, c7gn.xlarge, c7gn.2xlarge, c7gn.4xlarge, c7gn.8xlarge, c7gn.12xlarge, c7gn.16xlarge, c7i.large, c7i.xlarge, c7i.2xlarge, c7i.4xlarge, c7i.8xlarge, c7i.12xlarge, c7i.16xlarge, m6a.large, m6a.xlarge, m6a.2xlarge, m6a.4xlarge, m6a.8xlarge, m6a.12xlarge, m6a.16xlarge, m6gd.medium, m6gd.large, m6gd.xlarge, m6gd.2xlarge, m6gd.4xlarge, m6gd.8xlarge, m6gd.12xlarge, m6gd.16xlarge, m6i.large, m6i.xlarge, m6i.2xlarge, m6i.4xlarge, m6i.8xlarge, m6i.12xlarge, m6i.16xlarge, m7a.medium, m7a.large, m7a.xlarge, m7a.2xlarge, m7a.4xlarge, m7a.8xlarge, m7a.12xlarge, m7a.16xlarge, m7gd.medium, m7gd.large, m7gd.xlarge, m7gd.2xlarge, m7gd.4xlarge, m7gd.8xlarge, m7gd.12xlarge, m7gd.16xlarge, m7i.large, m7i.xlarge, m7i.2xlarge, m7i.4xlarge, m7i.8xlarge, m7i.12xlarge, m7i.16xlarge, r6gd.medium, r6gd.large, r6gd.xlarge, r6gd.2xlarge, r6gd.4xlarge, r6gd.8xlarge, r6gd.12xlarge, r6gd.16xlarge, r7a.medium, r7a.large, r7a.xlarge, r7a.2xlarge, r7a.4xlarge, r7a.8xlarge, r7a.12xlarge, r7a.16xlarge, r7gd.medium, r7gd.large, r7gd.xlarge, r7gd.2xlarge, r7gd.4xlarge, r7gd.8xlarge, r7gd.12xlarge, r7gd.16xlarge, r7i.large, r7i.xlarge, r7i.2xlarge, r7i.4xlarge, r7i.8xlarge, r7i.12xlarge, r7i.16xlarge, r7i.24xlarge, r7i.48xlarge, c5ad.large, c5ad.xlarge, c5ad.2xlarge, c5ad.4xlarge, c5ad.8xlarge, c5ad.12xlarge, c5ad.16xlarge, c5ad.24xlarge, c5n.large, c5n.xlarge, c5n.2xlarge, c5n.4xlarge, c5n.9xlarge, c5n.18xlarge, r5ad.large, r5ad.xlarge, r5ad.2xlarge, r5ad.4xlarge, r5ad.8xlarge, r5ad.12xlarge, r5ad.16xlarge, r5ad.24xlarge, c6id.large, c6id.xlarge, c6id.2xlarge, c6id.4xlarge, c6id.8xlarge, c6id.12xlarge, c6id.16xlarge, c6id.24xlarge, c6id.32xlarge, c8g.medium, c8g.large, c8g.xlarge, c8g.2xlarge, c8g.4xlarge, c8g.8xlarge, c8g.12xlarge, c8g.16xlarge, c8g.24xlarge, c8g.48xlarge, m5ad.large, m5ad.xlarge, m5ad.2xlarge, m5ad.4xlarge, m5ad.8xlarge, m5ad.12xlarge, m5ad.16xlarge, m5ad.24xlarge, m5d.large, m5d.xlarge, m5d.2xlarge, m5d.4xlarge, m5d.8xlarge, m5d.12xlarge, m5d.16xlarge, m5d.24xlarge, m5dn.large, m5dn.xlarge, m5dn.2xlarge, m5dn.4xlarge, m5dn.8xlarge, m5dn.12xlarge, m5dn.16xlarge, m5dn.24xlarge, m5n.large, m5n.xlarge, m5n.2xlarge, m5n.4xlarge, m5n.8xlarge, m5n.12xlarge, m5n.16xlarge, m5n.24xlarge, m6id.large, m6id.xlarge, m6id.2xlarge, m6id.4xlarge, m6id.8xlarge, m6id.12xlarge, m6id.16xlarge, m6id.24xlarge, m6id.32xlarge, m6idn.large, m6idn.xlarge, m6idn.2xlarge, m6idn.4xlarge, m6idn.8xlarge, m6idn.12xlarge, m6idn.16xlarge, m6idn.24xlarge, m6idn.32xlarge, m6in.large, m6in.xlarge, m6in.2xlarge, m6in.4xlarge, m6in.8xlarge, m6in.12xlarge, m6in.16xlarge, m6in.24xlarge, m6in.32xlarge, m8g.medium, m8g.large, m8g.xlarge, m8g.2xlarge, m8g.4xlarge, m8g.8xlarge, m8g.12xlarge, m8g.16xlarge, m8g.24xlarge, m8g.48xlarge, r5dn.large, r5dn.xlarge, r5dn.2xlarge, r5dn.4xlarge, r5dn.8xlarge, r5dn.12xlarge, r5dn.16xlarge, r5dn.24xlarge, r5n.large, r5n.xlarge, r5n.2xlarge, r5n.4xlarge, r5n.8xlarge, r5n.12xlarge, r5n.16xlarge, r5n.24xlarge, r6a.large, r6a.xlarge, r6a.2xlarge, r6a.4xlarge, r6a.8xlarge, r6a.12xlarge, r6a.16xlarge, r6a.24xlarge, r6a.32xlarge, r6a.48xlarge, r6id.large, r6id.xlarge, r6id.2xlarge, r6id.4xlarge, r6id.8xlarge, r6id.12xlarge, r6id.16xlarge, r6id.24xlarge, r6id.32xlarge, r6idn.large, r6idn.xlarge, r6idn.2xlarge, r6idn.4xlarge, r6idn.8xlarge, r6idn.12xlarge, r6idn.16xlarge, r6idn.24xlarge, r6idn.32xlarge, r6in.large, r6in.xlarge, r6in.2xlarge, r6in.4xlarge, r6in.8xlarge, r6in.12xlarge, r6in.16xlarge, r6in.24xlarge, r6in.32xlarge, r8g.medium, r8g.large, r8g.xlarge, r8g.2xlarge, r8g.4xlarge, r8g.8xlarge, r8g.12xlarge, r8g.16xlarge, r8g.24xlarge, r8g.48xlarge, m4.16xlarge, c6a.32xlarge, c6a.48xlarge, c6i.32xlarge, r6i.24xlarge, r6i.32xlarge, c6in.24xlarge, c6in.32xlarge, c7a.24xlarge, c7a.32xlarge, c7a.48xlarge, c7i.24xlarge, c7i.48xlarge, m6a.24xlarge, m6a.32xlarge, m6a.48xlarge, m6i.24xlarge, m6i.32xlarge, m7a.24xlarge, m7a.32xlarge, m7a.48xlarge, m7i.24xlarge, m7i.48xlarge, r7a.24xlarge, r7a.32xlarge, r7a.48xlarge
    #     location: "LocationStringModel",
    #   })
    #
    # @example Response structure
    #
    #   resp.ec2_instance_limits #=> Array
    #   resp.ec2_instance_limits[0].ec2_instance_type #=> String, one of "t2.micro", "t2.small", "t2.medium", "t2.large", "c3.large", "c3.xlarge", "c3.2xlarge", "c3.4xlarge", "c3.8xlarge", "c4.large", "c4.xlarge", "c4.2xlarge", "c4.4xlarge", "c4.8xlarge", "c5.large", "c5.xlarge", "c5.2xlarge", "c5.4xlarge", "c5.9xlarge", "c5.12xlarge", "c5.18xlarge", "c5.24xlarge", "c5a.large", "c5a.xlarge", "c5a.2xlarge", "c5a.4xlarge", "c5a.8xlarge", "c5a.12xlarge", "c5a.16xlarge", "c5a.24xlarge", "r3.large", "r3.xlarge", "r3.2xlarge", "r3.4xlarge", "r3.8xlarge", "r4.large", "r4.xlarge", "r4.2xlarge", "r4.4xlarge", "r4.8xlarge", "r4.16xlarge", "r5.large", "r5.xlarge", "r5.2xlarge", "r5.4xlarge", "r5.8xlarge", "r5.12xlarge", "r5.16xlarge", "r5.24xlarge", "r5a.large", "r5a.xlarge", "r5a.2xlarge", "r5a.4xlarge", "r5a.8xlarge", "r5a.12xlarge", "r5a.16xlarge", "r5a.24xlarge", "m3.medium", "m3.large", "m3.xlarge", "m3.2xlarge", "m4.large", "m4.xlarge", "m4.2xlarge", "m4.4xlarge", "m4.10xlarge", "m5.large", "m5.xlarge", "m5.2xlarge", "m5.4xlarge", "m5.8xlarge", "m5.12xlarge", "m5.16xlarge", "m5.24xlarge", "m5a.large", "m5a.xlarge", "m5a.2xlarge", "m5a.4xlarge", "m5a.8xlarge", "m5a.12xlarge", "m5a.16xlarge", "m5a.24xlarge", "c5d.large", "c5d.xlarge", "c5d.2xlarge", "c5d.4xlarge", "c5d.9xlarge", "c5d.12xlarge", "c5d.18xlarge", "c5d.24xlarge", "c6a.large", "c6a.xlarge", "c6a.2xlarge", "c6a.4xlarge", "c6a.8xlarge", "c6a.12xlarge", "c6a.16xlarge", "c6a.24xlarge", "c6i.large", "c6i.xlarge", "c6i.2xlarge", "c6i.4xlarge", "c6i.8xlarge", "c6i.12xlarge", "c6i.16xlarge", "c6i.24xlarge", "r5d.large", "r5d.xlarge", "r5d.2xlarge", "r5d.4xlarge", "r5d.8xlarge", "r5d.12xlarge", "r5d.16xlarge", "r5d.24xlarge", "m6g.medium", "m6g.large", "m6g.xlarge", "m6g.2xlarge", "m6g.4xlarge", "m6g.8xlarge", "m6g.12xlarge", "m6g.16xlarge", "c6g.medium", "c6g.large", "c6g.xlarge", "c6g.2xlarge", "c6g.4xlarge", "c6g.8xlarge", "c6g.12xlarge", "c6g.16xlarge", "r6g.medium", "r6g.large", "r6g.xlarge", "r6g.2xlarge", "r6g.4xlarge", "r6g.8xlarge", "r6g.12xlarge", "r6g.16xlarge", "c6gn.medium", "c6gn.large", "c6gn.xlarge", "c6gn.2xlarge", "c6gn.4xlarge", "c6gn.8xlarge", "c6gn.12xlarge", "c6gn.16xlarge", "c7g.medium", "c7g.large", "c7g.xlarge", "c7g.2xlarge", "c7g.4xlarge", "c7g.8xlarge", "c7g.12xlarge", "c7g.16xlarge", "r7g.medium", "r7g.large", "r7g.xlarge", "r7g.2xlarge", "r7g.4xlarge", "r7g.8xlarge", "r7g.12xlarge", "r7g.16xlarge", "m7g.medium", "m7g.large", "m7g.xlarge", "m7g.2xlarge", "m7g.4xlarge", "m7g.8xlarge", "m7g.12xlarge", "m7g.16xlarge", "g5g.xlarge", "g5g.2xlarge", "g5g.4xlarge", "g5g.8xlarge", "g5g.16xlarge", "r6i.large", "r6i.xlarge", "r6i.2xlarge", "r6i.4xlarge", "r6i.8xlarge", "r6i.12xlarge", "r6i.16xlarge", "c6gd.medium", "c6gd.large", "c6gd.xlarge", "c6gd.2xlarge", "c6gd.4xlarge", "c6gd.8xlarge", "c6gd.12xlarge", "c6gd.16xlarge", "c6in.large", "c6in.xlarge", "c6in.2xlarge", "c6in.4xlarge", "c6in.8xlarge", "c6in.12xlarge", "c6in.16xlarge", "c7a.medium", "c7a.large", "c7a.xlarge", "c7a.2xlarge", "c7a.4xlarge", "c7a.8xlarge", "c7a.12xlarge", "c7a.16xlarge", "c7gd.medium", "c7gd.large", "c7gd.xlarge", "c7gd.2xlarge", "c7gd.4xlarge", "c7gd.8xlarge", "c7gd.12xlarge", "c7gd.16xlarge", "c7gn.medium", "c7gn.large", "c7gn.xlarge", "c7gn.2xlarge", "c7gn.4xlarge", "c7gn.8xlarge", "c7gn.12xlarge", "c7gn.16xlarge", "c7i.large", "c7i.xlarge", "c7i.2xlarge", "c7i.4xlarge", "c7i.8xlarge", "c7i.12xlarge", "c7i.16xlarge", "m6a.large", "m6a.xlarge", "m6a.2xlarge", "m6a.4xlarge", "m6a.8xlarge", "m6a.12xlarge", "m6a.16xlarge", "m6gd.medium", "m6gd.large", "m6gd.xlarge", "m6gd.2xlarge", "m6gd.4xlarge", "m6gd.8xlarge", "m6gd.12xlarge", "m6gd.16xlarge", "m6i.large", "m6i.xlarge", "m6i.2xlarge", "m6i.4xlarge", "m6i.8xlarge", "m6i.12xlarge", "m6i.16xlarge", "m7a.medium", "m7a.large", "m7a.xlarge", "m7a.2xlarge", "m7a.4xlarge", "m7a.8xlarge", "m7a.12xlarge", "m7a.16xlarge", "m7gd.medium", "m7gd.large", "m7gd.xlarge", "m7gd.2xlarge", "m7gd.4xlarge", "m7gd.8xlarge", "m7gd.12xlarge", "m7gd.16xlarge", "m7i.large", "m7i.xlarge", "m7i.2xlarge", "m7i.4xlarge", "m7i.8xlarge", "m7i.12xlarge", "m7i.16xlarge", "r6gd.medium", "r6gd.large", "r6gd.xlarge", "r6gd.2xlarge", "r6gd.4xlarge", "r6gd.8xlarge", "r6gd.12xlarge", "r6gd.16xlarge", "r7a.medium", "r7a.large", "r7a.xlarge", "r7a.2xlarge", "r7a.4xlarge", "r7a.8xlarge", "r7a.12xlarge", "r7a.16xlarge", "r7gd.medium", "r7gd.large", "r7gd.xlarge", "r7gd.2xlarge", "r7gd.4xlarge", "r7gd.8xlarge", "r7gd.12xlarge", "r7gd.16xlarge", "r7i.large", "r7i.xlarge", "r7i.2xlarge", "r7i.4xlarge", "r7i.8xlarge", "r7i.12xlarge", "r7i.16xlarge", "r7i.24xlarge", "r7i.48xlarge", "c5ad.large", "c5ad.xlarge", "c5ad.2xlarge", "c5ad.4xlarge", "c5ad.8xlarge", "c5ad.12xlarge", "c5ad.16xlarge", "c5ad.24xlarge", "c5n.large", "c5n.xlarge", "c5n.2xlarge", "c5n.4xlarge", "c5n.9xlarge", "c5n.18xlarge", "r5ad.large", "r5ad.xlarge", "r5ad.2xlarge", "r5ad.4xlarge", "r5ad.8xlarge", "r5ad.12xlarge", "r5ad.16xlarge", "r5ad.24xlarge", "c6id.large", "c6id.xlarge", "c6id.2xlarge", "c6id.4xlarge", "c6id.8xlarge", "c6id.12xlarge", "c6id.16xlarge", "c6id.24xlarge", "c6id.32xlarge", "c8g.medium", "c8g.large", "c8g.xlarge", "c8g.2xlarge", "c8g.4xlarge", "c8g.8xlarge", "c8g.12xlarge", "c8g.16xlarge", "c8g.24xlarge", "c8g.48xlarge", "m5ad.large", "m5ad.xlarge", "m5ad.2xlarge", "m5ad.4xlarge", "m5ad.8xlarge", "m5ad.12xlarge", "m5ad.16xlarge", "m5ad.24xlarge", "m5d.large", "m5d.xlarge", "m5d.2xlarge", "m5d.4xlarge", "m5d.8xlarge", "m5d.12xlarge", "m5d.16xlarge", "m5d.24xlarge", "m5dn.large", "m5dn.xlarge", "m5dn.2xlarge", "m5dn.4xlarge", "m5dn.8xlarge", "m5dn.12xlarge", "m5dn.16xlarge", "m5dn.24xlarge", "m5n.large", "m5n.xlarge", "m5n.2xlarge", "m5n.4xlarge", "m5n.8xlarge", "m5n.12xlarge", "m5n.16xlarge", "m5n.24xlarge", "m6id.large", "m6id.xlarge", "m6id.2xlarge", "m6id.4xlarge", "m6id.8xlarge", "m6id.12xlarge", "m6id.16xlarge", "m6id.24xlarge", "m6id.32xlarge", "m6idn.large", "m6idn.xlarge", "m6idn.2xlarge", "m6idn.4xlarge", "m6idn.8xlarge", "m6idn.12xlarge", "m6idn.16xlarge", "m6idn.24xlarge", "m6idn.32xlarge", "m6in.large", "m6in.xlarge", "m6in.2xlarge", "m6in.4xlarge", "m6in.8xlarge", "m6in.12xlarge", "m6in.16xlarge", "m6in.24xlarge", "m6in.32xlarge", "m8g.medium", "m8g.large", "m8g.xlarge", "m8g.2xlarge", "m8g.4xlarge", "m8g.8xlarge", "m8g.12xlarge", "m8g.16xlarge", "m8g.24xlarge", "m8g.48xlarge", "r5dn.large", "r5dn.xlarge", "r5dn.2xlarge", "r5dn.4xlarge", "r5dn.8xlarge", "r5dn.12xlarge", "r5dn.16xlarge", "r5dn.24xlarge", "r5n.large", "r5n.xlarge", "r5n.2xlarge", "r5n.4xlarge", "r5n.8xlarge", "r5n.12xlarge", "r5n.16xlarge", "r5n.24xlarge", "r6a.large", "r6a.xlarge", "r6a.2xlarge", "r6a.4xlarge", "r6a.8xlarge", "r6a.12xlarge", "r6a.16xlarge", "r6a.24xlarge", "r6a.32xlarge", "r6a.48xlarge", "r6id.large", "r6id.xlarge", "r6id.2xlarge", "r6id.4xlarge", "r6id.8xlarge", "r6id.12xlarge", "r6id.16xlarge", "r6id.24xlarge", "r6id.32xlarge", "r6idn.large", "r6idn.xlarge", "r6idn.2xlarge", "r6idn.4xlarge", "r6idn.8xlarge", "r6idn.12xlarge", "r6idn.16xlarge", "r6idn.24xlarge", "r6idn.32xlarge", "r6in.large", "r6in.xlarge", "r6in.2xlarge", "r6in.4xlarge", "r6in.8xlarge", "r6in.12xlarge", "r6in.16xlarge", "r6in.24xlarge", "r6in.32xlarge", "r8g.medium", "r8g.large", "r8g.xlarge", "r8g.2xlarge", "r8g.4xlarge", "r8g.8xlarge", "r8g.12xlarge", "r8g.16xlarge", "r8g.24xlarge", "r8g.48xlarge", "m4.16xlarge", "c6a.32xlarge", "c6a.48xlarge", "c6i.32xlarge", "r6i.24xlarge", "r6i.32xlarge", "c6in.24xlarge", "c6in.32xlarge", "c7a.24xlarge", "c7a.32xlarge", "c7a.48xlarge", "c7i.24xlarge", "c7i.48xlarge", "m6a.24xlarge", "m6a.32xlarge", "m6a.48xlarge", "m6i.24xlarge", "m6i.32xlarge", "m7a.24xlarge", "m7a.32xlarge", "m7a.48xlarge", "m7i.24xlarge", "m7i.48xlarge", "r7a.24xlarge", "r7a.32xlarge", "r7a.48xlarge"
    #   resp.ec2_instance_limits[0].current_instances #=> Integer
    #   resp.ec2_instance_limits[0].instance_limit #=> Integer
    #   resp.ec2_instance_limits[0].location #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeEC2InstanceLimits AWS API Documentation
    #
    # @overload describe_ec2_instance_limits(params = {})
    # @param [Hash] params ({})
    def describe_ec2_instance_limits(params = {}, options = {})
      req = build_request(:describe_ec2_instance_limits, params)
      req.send_request(options)
    end

    # Retrieves core fleet-wide properties for fleets in an Amazon Web
    # Services Region. Properties include the computing hardware and
    # deployment configuration for instances in the fleet.
    #
    # You can use this operation in the following ways:
    #
    # * To get attributes for specific fleets, provide a list of fleet IDs
    #   or fleet ARNs.
    #
    # * To get attributes for all fleets, do not provide a fleet identifier.
    #
    # When requesting attributes for multiple fleets, use the pagination
    # parameters to retrieve results as a set of sequential pages.
    #
    # If successful, a `FleetAttributes` object is returned for each fleet
    # requested, unless the fleet identifier is not found.
    #
    # <note markdown="1"> Some API operations limit the number of fleet IDs that allowed in one
    # request. If a request exceeds this limit, the request fails and the
    # error message contains the maximum allowed number.
    #
    #  </note>
    #
    # **Learn more**
    #
    # [Setting up Amazon GameLift Servers fleets][1]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html
    #
    # @option params [Array<String>] :fleet_ids
    #   A list of unique fleet identifiers to retrieve attributes for. You can
    #   use either the fleet ID or ARN value. To retrieve attributes for all
    #   current fleets, do not include this parameter.
    #
    # @option params [Integer] :limit
    #   The maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages. This
    #   parameter is ignored when the request specifies one or a list of fleet
    #   IDs.
    #
    # @option params [String] :next_token
    #   A token that indicates the start of the next sequential page of
    #   results. Use the token that is returned with a previous call to this
    #   operation. To start at the beginning of the result set, do not specify
    #   a value. This parameter is ignored when the request specifies one or a
    #   list of fleet IDs.
    #
    # @return [Types::DescribeFleetAttributesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeFleetAttributesOutput#fleet_attributes #fleet_attributes} => Array&lt;Types::FleetAttributes&gt;
    #   * {Types::DescribeFleetAttributesOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_fleet_attributes({
    #     fleet_ids: ["FleetIdOrArn"],
    #     limit: 1,
    #     next_token: "NonZeroAndMaxString",
    #   })
    #
    # @example Response structure
    #
    #   resp.fleet_attributes #=> Array
    #   resp.fleet_attributes[0].fleet_id #=> String
    #   resp.fleet_attributes[0].fleet_arn #=> String
    #   resp.fleet_attributes[0].fleet_type #=> String, one of "ON_DEMAND", "SPOT"
    #   resp.fleet_attributes[0].instance_type #=> String, one of "t2.micro", "t2.small", "t2.medium", "t2.large", "c3.large", "c3.xlarge", "c3.2xlarge", "c3.4xlarge", "c3.8xlarge", "c4.large", "c4.xlarge", "c4.2xlarge", "c4.4xlarge", "c4.8xlarge", "c5.large", "c5.xlarge", "c5.2xlarge", "c5.4xlarge", "c5.9xlarge", "c5.12xlarge", "c5.18xlarge", "c5.24xlarge", "c5a.large", "c5a.xlarge", "c5a.2xlarge", "c5a.4xlarge", "c5a.8xlarge", "c5a.12xlarge", "c5a.16xlarge", "c5a.24xlarge", "r3.large", "r3.xlarge", "r3.2xlarge", "r3.4xlarge", "r3.8xlarge", "r4.large", "r4.xlarge", "r4.2xlarge", "r4.4xlarge", "r4.8xlarge", "r4.16xlarge", "r5.large", "r5.xlarge", "r5.2xlarge", "r5.4xlarge", "r5.8xlarge", "r5.12xlarge", "r5.16xlarge", "r5.24xlarge", "r5a.large", "r5a.xlarge", "r5a.2xlarge", "r5a.4xlarge", "r5a.8xlarge", "r5a.12xlarge", "r5a.16xlarge", "r5a.24xlarge", "m3.medium", "m3.large", "m3.xlarge", "m3.2xlarge", "m4.large", "m4.xlarge", "m4.2xlarge", "m4.4xlarge", "m4.10xlarge", "m5.large", "m5.xlarge", "m5.2xlarge", "m5.4xlarge", "m5.8xlarge", "m5.12xlarge", "m5.16xlarge", "m5.24xlarge", "m5a.large", "m5a.xlarge", "m5a.2xlarge", "m5a.4xlarge", "m5a.8xlarge", "m5a.12xlarge", "m5a.16xlarge", "m5a.24xlarge", "c5d.large", "c5d.xlarge", "c5d.2xlarge", "c5d.4xlarge", "c5d.9xlarge", "c5d.12xlarge", "c5d.18xlarge", "c5d.24xlarge", "c6a.large", "c6a.xlarge", "c6a.2xlarge", "c6a.4xlarge", "c6a.8xlarge", "c6a.12xlarge", "c6a.16xlarge", "c6a.24xlarge", "c6i.large", "c6i.xlarge", "c6i.2xlarge", "c6i.4xlarge", "c6i.8xlarge", "c6i.12xlarge", "c6i.16xlarge", "c6i.24xlarge", "r5d.large", "r5d.xlarge", "r5d.2xlarge", "r5d.4xlarge", "r5d.8xlarge", "r5d.12xlarge", "r5d.16xlarge", "r5d.24xlarge", "m6g.medium", "m6g.large", "m6g.xlarge", "m6g.2xlarge", "m6g.4xlarge", "m6g.8xlarge", "m6g.12xlarge", "m6g.16xlarge", "c6g.medium", "c6g.large", "c6g.xlarge", "c6g.2xlarge", "c6g.4xlarge", "c6g.8xlarge", "c6g.12xlarge", "c6g.16xlarge", "r6g.medium", "r6g.large", "r6g.xlarge", "r6g.2xlarge", "r6g.4xlarge", "r6g.8xlarge", "r6g.12xlarge", "r6g.16xlarge", "c6gn.medium", "c6gn.large", "c6gn.xlarge", "c6gn.2xlarge", "c6gn.4xlarge", "c6gn.8xlarge", "c6gn.12xlarge", "c6gn.16xlarge", "c7g.medium", "c7g.large", "c7g.xlarge", "c7g.2xlarge", "c7g.4xlarge", "c7g.8xlarge", "c7g.12xlarge", "c7g.16xlarge", "r7g.medium", "r7g.large", "r7g.xlarge", "r7g.2xlarge", "r7g.4xlarge", "r7g.8xlarge", "r7g.12xlarge", "r7g.16xlarge", "m7g.medium", "m7g.large", "m7g.xlarge", "m7g.2xlarge", "m7g.4xlarge", "m7g.8xlarge", "m7g.12xlarge", "m7g.16xlarge", "g5g.xlarge", "g5g.2xlarge", "g5g.4xlarge", "g5g.8xlarge", "g5g.16xlarge", "r6i.large", "r6i.xlarge", "r6i.2xlarge", "r6i.4xlarge", "r6i.8xlarge", "r6i.12xlarge", "r6i.16xlarge", "c6gd.medium", "c6gd.large", "c6gd.xlarge", "c6gd.2xlarge", "c6gd.4xlarge", "c6gd.8xlarge", "c6gd.12xlarge", "c6gd.16xlarge", "c6in.large", "c6in.xlarge", "c6in.2xlarge", "c6in.4xlarge", "c6in.8xlarge", "c6in.12xlarge", "c6in.16xlarge", "c7a.medium", "c7a.large", "c7a.xlarge", "c7a.2xlarge", "c7a.4xlarge", "c7a.8xlarge", "c7a.12xlarge", "c7a.16xlarge", "c7gd.medium", "c7gd.large", "c7gd.xlarge", "c7gd.2xlarge", "c7gd.4xlarge", "c7gd.8xlarge", "c7gd.12xlarge", "c7gd.16xlarge", "c7gn.medium", "c7gn.large", "c7gn.xlarge", "c7gn.2xlarge", "c7gn.4xlarge", "c7gn.8xlarge", "c7gn.12xlarge", "c7gn.16xlarge", "c7i.large", "c7i.xlarge", "c7i.2xlarge", "c7i.4xlarge", "c7i.8xlarge", "c7i.12xlarge", "c7i.16xlarge", "m6a.large", "m6a.xlarge", "m6a.2xlarge", "m6a.4xlarge", "m6a.8xlarge", "m6a.12xlarge", "m6a.16xlarge", "m6gd.medium", "m6gd.large", "m6gd.xlarge", "m6gd.2xlarge", "m6gd.4xlarge", "m6gd.8xlarge", "m6gd.12xlarge", "m6gd.16xlarge", "m6i.large", "m6i.xlarge", "m6i.2xlarge", "m6i.4xlarge", "m6i.8xlarge", "m6i.12xlarge", "m6i.16xlarge", "m7a.medium", "m7a.large", "m7a.xlarge", "m7a.2xlarge", "m7a.4xlarge", "m7a.8xlarge", "m7a.12xlarge", "m7a.16xlarge", "m7gd.medium", "m7gd.large", "m7gd.xlarge", "m7gd.2xlarge", "m7gd.4xlarge", "m7gd.8xlarge", "m7gd.12xlarge", "m7gd.16xlarge", "m7i.large", "m7i.xlarge", "m7i.2xlarge", "m7i.4xlarge", "m7i.8xlarge", "m7i.12xlarge", "m7i.16xlarge", "r6gd.medium", "r6gd.large", "r6gd.xlarge", "r6gd.2xlarge", "r6gd.4xlarge", "r6gd.8xlarge", "r6gd.12xlarge", "r6gd.16xlarge", "r7a.medium", "r7a.large", "r7a.xlarge", "r7a.2xlarge", "r7a.4xlarge", "r7a.8xlarge", "r7a.12xlarge", "r7a.16xlarge", "r7gd.medium", "r7gd.large", "r7gd.xlarge", "r7gd.2xlarge", "r7gd.4xlarge", "r7gd.8xlarge", "r7gd.12xlarge", "r7gd.16xlarge", "r7i.large", "r7i.xlarge", "r7i.2xlarge", "r7i.4xlarge", "r7i.8xlarge", "r7i.12xlarge", "r7i.16xlarge", "r7i.24xlarge", "r7i.48xlarge", "c5ad.large", "c5ad.xlarge", "c5ad.2xlarge", "c5ad.4xlarge", "c5ad.8xlarge", "c5ad.12xlarge", "c5ad.16xlarge", "c5ad.24xlarge", "c5n.large", "c5n.xlarge", "c5n.2xlarge", "c5n.4xlarge", "c5n.9xlarge", "c5n.18xlarge", "r5ad.large", "r5ad.xlarge", "r5ad.2xlarge", "r5ad.4xlarge", "r5ad.8xlarge", "r5ad.12xlarge", "r5ad.16xlarge", "r5ad.24xlarge", "c6id.large", "c6id.xlarge", "c6id.2xlarge", "c6id.4xlarge", "c6id.8xlarge", "c6id.12xlarge", "c6id.16xlarge", "c6id.24xlarge", "c6id.32xlarge", "c8g.medium", "c8g.large", "c8g.xlarge", "c8g.2xlarge", "c8g.4xlarge", "c8g.8xlarge", "c8g.12xlarge", "c8g.16xlarge", "c8g.24xlarge", "c8g.48xlarge", "m5ad.large", "m5ad.xlarge", "m5ad.2xlarge", "m5ad.4xlarge", "m5ad.8xlarge", "m5ad.12xlarge", "m5ad.16xlarge", "m5ad.24xlarge", "m5d.large", "m5d.xlarge", "m5d.2xlarge", "m5d.4xlarge", "m5d.8xlarge", "m5d.12xlarge", "m5d.16xlarge", "m5d.24xlarge", "m5dn.large", "m5dn.xlarge", "m5dn.2xlarge", "m5dn.4xlarge", "m5dn.8xlarge", "m5dn.12xlarge", "m5dn.16xlarge", "m5dn.24xlarge", "m5n.large", "m5n.xlarge", "m5n.2xlarge", "m5n.4xlarge", "m5n.8xlarge", "m5n.12xlarge", "m5n.16xlarge", "m5n.24xlarge", "m6id.large", "m6id.xlarge", "m6id.2xlarge", "m6id.4xlarge", "m6id.8xlarge", "m6id.12xlarge", "m6id.16xlarge", "m6id.24xlarge", "m6id.32xlarge", "m6idn.large", "m6idn.xlarge", "m6idn.2xlarge", "m6idn.4xlarge", "m6idn.8xlarge", "m6idn.12xlarge", "m6idn.16xlarge", "m6idn.24xlarge", "m6idn.32xlarge", "m6in.large", "m6in.xlarge", "m6in.2xlarge", "m6in.4xlarge", "m6in.8xlarge", "m6in.12xlarge", "m6in.16xlarge", "m6in.24xlarge", "m6in.32xlarge", "m8g.medium", "m8g.large", "m8g.xlarge", "m8g.2xlarge", "m8g.4xlarge", "m8g.8xlarge", "m8g.12xlarge", "m8g.16xlarge", "m8g.24xlarge", "m8g.48xlarge", "r5dn.large", "r5dn.xlarge", "r5dn.2xlarge", "r5dn.4xlarge", "r5dn.8xlarge", "r5dn.12xlarge", "r5dn.16xlarge", "r5dn.24xlarge", "r5n.large", "r5n.xlarge", "r5n.2xlarge", "r5n.4xlarge", "r5n.8xlarge", "r5n.12xlarge", "r5n.16xlarge", "r5n.24xlarge", "r6a.large", "r6a.xlarge", "r6a.2xlarge", "r6a.4xlarge", "r6a.8xlarge", "r6a.12xlarge", "r6a.16xlarge", "r6a.24xlarge", "r6a.32xlarge", "r6a.48xlarge", "r6id.large", "r6id.xlarge", "r6id.2xlarge", "r6id.4xlarge", "r6id.8xlarge", "r6id.12xlarge", "r6id.16xlarge", "r6id.24xlarge", "r6id.32xlarge", "r6idn.large", "r6idn.xlarge", "r6idn.2xlarge", "r6idn.4xlarge", "r6idn.8xlarge", "r6idn.12xlarge", "r6idn.16xlarge", "r6idn.24xlarge", "r6idn.32xlarge", "r6in.large", "r6in.xlarge", "r6in.2xlarge", "r6in.4xlarge", "r6in.8xlarge", "r6in.12xlarge", "r6in.16xlarge", "r6in.24xlarge", "r6in.32xlarge", "r8g.medium", "r8g.large", "r8g.xlarge", "r8g.2xlarge", "r8g.4xlarge", "r8g.8xlarge", "r8g.12xlarge", "r8g.16xlarge", "r8g.24xlarge", "r8g.48xlarge", "m4.16xlarge", "c6a.32xlarge", "c6a.48xlarge", "c6i.32xlarge", "r6i.24xlarge", "r6i.32xlarge", "c6in.24xlarge", "c6in.32xlarge", "c7a.24xlarge", "c7a.32xlarge", "c7a.48xlarge", "c7i.24xlarge", "c7i.48xlarge", "m6a.24xlarge", "m6a.32xlarge", "m6a.48xlarge", "m6i.24xlarge", "m6i.32xlarge", "m7a.24xlarge", "m7a.32xlarge", "m7a.48xlarge", "m7i.24xlarge", "m7i.48xlarge", "r7a.24xlarge", "r7a.32xlarge", "r7a.48xlarge"
    #   resp.fleet_attributes[0].description #=> String
    #   resp.fleet_attributes[0].name #=> String
    #   resp.fleet_attributes[0].creation_time #=> Time
    #   resp.fleet_attributes[0].termination_time #=> Time
    #   resp.fleet_attributes[0].status #=> String, one of "NEW", "DOWNLOADING", "VALIDATING", "BUILDING", "ACTIVATING", "ACTIVE", "DELETING", "ERROR", "TERMINATED", "NOT_FOUND"
    #   resp.fleet_attributes[0].build_id #=> String
    #   resp.fleet_attributes[0].build_arn #=> String
    #   resp.fleet_attributes[0].script_id #=> String
    #   resp.fleet_attributes[0].script_arn #=> String
    #   resp.fleet_attributes[0].server_launch_path #=> String
    #   resp.fleet_attributes[0].server_launch_parameters #=> String
    #   resp.fleet_attributes[0].log_paths #=> Array
    #   resp.fleet_attributes[0].log_paths[0] #=> String
    #   resp.fleet_attributes[0].new_game_session_protection_policy #=> String, one of "NoProtection", "FullProtection"
    #   resp.fleet_attributes[0].operating_system #=> String, one of "WINDOWS_2012", "AMAZON_LINUX", "AMAZON_LINUX_2", "WINDOWS_2016", "AMAZON_LINUX_2023"
    #   resp.fleet_attributes[0].resource_creation_limit_policy.new_game_sessions_per_creator #=> Integer
    #   resp.fleet_attributes[0].resource_creation_limit_policy.policy_period_in_minutes #=> Integer
    #   resp.fleet_attributes[0].metric_groups #=> Array
    #   resp.fleet_attributes[0].metric_groups[0] #=> String
    #   resp.fleet_attributes[0].stopped_actions #=> Array
    #   resp.fleet_attributes[0].stopped_actions[0] #=> String, one of "AUTO_SCALING"
    #   resp.fleet_attributes[0].instance_role_arn #=> String
    #   resp.fleet_attributes[0].certificate_configuration.certificate_type #=> String, one of "DISABLED", "GENERATED"
    #   resp.fleet_attributes[0].compute_type #=> String, one of "EC2", "ANYWHERE"
    #   resp.fleet_attributes[0].anywhere_configuration.cost #=> String
    #   resp.fleet_attributes[0].instance_role_credentials_provider #=> String, one of "SHARED_CREDENTIAL_FILE"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeFleetAttributes AWS API Documentation
    #
    # @overload describe_fleet_attributes(params = {})
    # @param [Hash] params ({})
    def describe_fleet_attributes(params = {}, options = {})
      req = build_request(:describe_fleet_attributes, params)
      req.send_request(options)
    end

    # Retrieves the resource capacity settings for one or more fleets. For a
    # container fleet, this operation also returns counts for game server
    # container groups.
    #
    # With multi-location fleets, this operation retrieves data for the
    # fleet's home Region only. To retrieve capacity for remote locations,
    # see
    # [https://docs.aws.amazon.com/gamelift/latest/apireference/API\_DescribeFleetLocationCapacity.html][1].
    #
    # This operation can be used in the following ways:
    #
    # * To get capacity data for one or more specific fleets, provide a list
    #   of fleet IDs or fleet ARNs.
    #
    # * To get capacity data for all fleets, do not provide a fleet
    #   identifier.
    #
    # When requesting multiple fleets, use the pagination parameters to
    # retrieve results as a set of sequential pages.
    #
    # If successful, a `FleetCapacity` object is returned for each requested
    # fleet ID. Each `FleetCapacity` object includes a `Location` property,
    # which is set to the fleet's home Region. Capacity values are returned
    # only for fleets that currently exist.
    #
    # <note markdown="1"> Some API operations may limit the number of fleet IDs that are allowed
    # in one request. If a request exceeds this limit, the request fails and
    # the error message includes the maximum allowed.
    #
    #  </note>
    #
    # **Learn more**
    #
    # [Setting up Amazon GameLift Servers fleets][2]
    #
    # [GameLift metrics for fleets][3]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_DescribeFleetLocationCapacity.html
    # [2]: https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html
    # [3]: https://docs.aws.amazon.com/gamelift/latest/developerguide/monitoring-cloudwatch.html#gamelift-metrics-fleet
    #
    # @option params [Array<String>] :fleet_ids
    #   A unique identifier for the fleet to retrieve capacity information
    #   for. You can use either the fleet ID or ARN value. Leave this
    #   parameter empty to retrieve capacity information for all fleets.
    #
    # @option params [Integer] :limit
    #   The maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages. This
    #   parameter is ignored when the request specifies one or a list of fleet
    #   IDs.
    #
    # @option params [String] :next_token
    #   A token that indicates the start of the next sequential page of
    #   results. Use the token that is returned with a previous call to this
    #   operation. To start at the beginning of the result set, do not specify
    #   a value. This parameter is ignored when the request specifies one or a
    #   list of fleet IDs.
    #
    # @return [Types::DescribeFleetCapacityOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeFleetCapacityOutput#fleet_capacity #fleet_capacity} => Array&lt;Types::FleetCapacity&gt;
    #   * {Types::DescribeFleetCapacityOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_fleet_capacity({
    #     fleet_ids: ["FleetIdOrArn"],
    #     limit: 1,
    #     next_token: "NonZeroAndMaxString",
    #   })
    #
    # @example Response structure
    #
    #   resp.fleet_capacity #=> Array
    #   resp.fleet_capacity[0].fleet_id #=> String
    #   resp.fleet_capacity[0].fleet_arn #=> String
    #   resp.fleet_capacity[0].instance_type #=> String, one of "t2.micro", "t2.small", "t2.medium", "t2.large", "c3.large", "c3.xlarge", "c3.2xlarge", "c3.4xlarge", "c3.8xlarge", "c4.large", "c4.xlarge", "c4.2xlarge", "c4.4xlarge", "c4.8xlarge", "c5.large", "c5.xlarge", "c5.2xlarge", "c5.4xlarge", "c5.9xlarge", "c5.12xlarge", "c5.18xlarge", "c5.24xlarge", "c5a.large", "c5a.xlarge", "c5a.2xlarge", "c5a.4xlarge", "c5a.8xlarge", "c5a.12xlarge", "c5a.16xlarge", "c5a.24xlarge", "r3.large", "r3.xlarge", "r3.2xlarge", "r3.4xlarge", "r3.8xlarge", "r4.large", "r4.xlarge", "r4.2xlarge", "r4.4xlarge", "r4.8xlarge", "r4.16xlarge", "r5.large", "r5.xlarge", "r5.2xlarge", "r5.4xlarge", "r5.8xlarge", "r5.12xlarge", "r5.16xlarge", "r5.24xlarge", "r5a.large", "r5a.xlarge", "r5a.2xlarge", "r5a.4xlarge", "r5a.8xlarge", "r5a.12xlarge", "r5a.16xlarge", "r5a.24xlarge", "m3.medium", "m3.large", "m3.xlarge", "m3.2xlarge", "m4.large", "m4.xlarge", "m4.2xlarge", "m4.4xlarge", "m4.10xlarge", "m5.large", "m5.xlarge", "m5.2xlarge", "m5.4xlarge", "m5.8xlarge", "m5.12xlarge", "m5.16xlarge", "m5.24xlarge", "m5a.large", "m5a.xlarge", "m5a.2xlarge", "m5a.4xlarge", "m5a.8xlarge", "m5a.12xlarge", "m5a.16xlarge", "m5a.24xlarge", "c5d.large", "c5d.xlarge", "c5d.2xlarge", "c5d.4xlarge", "c5d.9xlarge", "c5d.12xlarge", "c5d.18xlarge", "c5d.24xlarge", "c6a.large", "c6a.xlarge", "c6a.2xlarge", "c6a.4xlarge", "c6a.8xlarge", "c6a.12xlarge", "c6a.16xlarge", "c6a.24xlarge", "c6i.large", "c6i.xlarge", "c6i.2xlarge", "c6i.4xlarge", "c6i.8xlarge", "c6i.12xlarge", "c6i.16xlarge", "c6i.24xlarge", "r5d.large", "r5d.xlarge", "r5d.2xlarge", "r5d.4xlarge", "r5d.8xlarge", "r5d.12xlarge", "r5d.16xlarge", "r5d.24xlarge", "m6g.medium", "m6g.large", "m6g.xlarge", "m6g.2xlarge", "m6g.4xlarge", "m6g.8xlarge", "m6g.12xlarge", "m6g.16xlarge", "c6g.medium", "c6g.large", "c6g.xlarge", "c6g.2xlarge", "c6g.4xlarge", "c6g.8xlarge", "c6g.12xlarge", "c6g.16xlarge", "r6g.medium", "r6g.large", "r6g.xlarge", "r6g.2xlarge", "r6g.4xlarge", "r6g.8xlarge", "r6g.12xlarge", "r6g.16xlarge", "c6gn.medium", "c6gn.large", "c6gn.xlarge", "c6gn.2xlarge", "c6gn.4xlarge", "c6gn.8xlarge", "c6gn.12xlarge", "c6gn.16xlarge", "c7g.medium", "c7g.large", "c7g.xlarge", "c7g.2xlarge", "c7g.4xlarge", "c7g.8xlarge", "c7g.12xlarge", "c7g.16xlarge", "r7g.medium", "r7g.large", "r7g.xlarge", "r7g.2xlarge", "r7g.4xlarge", "r7g.8xlarge", "r7g.12xlarge", "r7g.16xlarge", "m7g.medium", "m7g.large", "m7g.xlarge", "m7g.2xlarge", "m7g.4xlarge", "m7g.8xlarge", "m7g.12xlarge", "m7g.16xlarge", "g5g.xlarge", "g5g.2xlarge", "g5g.4xlarge", "g5g.8xlarge", "g5g.16xlarge", "r6i.large", "r6i.xlarge", "r6i.2xlarge", "r6i.4xlarge", "r6i.8xlarge", "r6i.12xlarge", "r6i.16xlarge", "c6gd.medium", "c6gd.large", "c6gd.xlarge", "c6gd.2xlarge", "c6gd.4xlarge", "c6gd.8xlarge", "c6gd.12xlarge", "c6gd.16xlarge", "c6in.large", "c6in.xlarge", "c6in.2xlarge", "c6in.4xlarge", "c6in.8xlarge", "c6in.12xlarge", "c6in.16xlarge", "c7a.medium", "c7a.large", "c7a.xlarge", "c7a.2xlarge", "c7a.4xlarge", "c7a.8xlarge", "c7a.12xlarge", "c7a.16xlarge", "c7gd.medium", "c7gd.large", "c7gd.xlarge", "c7gd.2xlarge", "c7gd.4xlarge", "c7gd.8xlarge", "c7gd.12xlarge", "c7gd.16xlarge", "c7gn.medium", "c7gn.large", "c7gn.xlarge", "c7gn.2xlarge", "c7gn.4xlarge", "c7gn.8xlarge", "c7gn.12xlarge", "c7gn.16xlarge", "c7i.large", "c7i.xlarge", "c7i.2xlarge", "c7i.4xlarge", "c7i.8xlarge", "c7i.12xlarge", "c7i.16xlarge", "m6a.large", "m6a.xlarge", "m6a.2xlarge", "m6a.4xlarge", "m6a.8xlarge", "m6a.12xlarge", "m6a.16xlarge", "m6gd.medium", "m6gd.large", "m6gd.xlarge", "m6gd.2xlarge", "m6gd.4xlarge", "m6gd.8xlarge", "m6gd.12xlarge", "m6gd.16xlarge", "m6i.large", "m6i.xlarge", "m6i.2xlarge", "m6i.4xlarge", "m6i.8xlarge", "m6i.12xlarge", "m6i.16xlarge", "m7a.medium", "m7a.large", "m7a.xlarge", "m7a.2xlarge", "m7a.4xlarge", "m7a.8xlarge", "m7a.12xlarge", "m7a.16xlarge", "m7gd.medium", "m7gd.large", "m7gd.xlarge", "m7gd.2xlarge", "m7gd.4xlarge", "m7gd.8xlarge", "m7gd.12xlarge", "m7gd.16xlarge", "m7i.large", "m7i.xlarge", "m7i.2xlarge", "m7i.4xlarge", "m7i.8xlarge", "m7i.12xlarge", "m7i.16xlarge", "r6gd.medium", "r6gd.large", "r6gd.xlarge", "r6gd.2xlarge", "r6gd.4xlarge", "r6gd.8xlarge", "r6gd.12xlarge", "r6gd.16xlarge", "r7a.medium", "r7a.large", "r7a.xlarge", "r7a.2xlarge", "r7a.4xlarge", "r7a.8xlarge", "r7a.12xlarge", "r7a.16xlarge", "r7gd.medium", "r7gd.large", "r7gd.xlarge", "r7gd.2xlarge", "r7gd.4xlarge", "r7gd.8xlarge", "r7gd.12xlarge", "r7gd.16xlarge", "r7i.large", "r7i.xlarge", "r7i.2xlarge", "r7i.4xlarge", "r7i.8xlarge", "r7i.12xlarge", "r7i.16xlarge", "r7i.24xlarge", "r7i.48xlarge", "c5ad.large", "c5ad.xlarge", "c5ad.2xlarge", "c5ad.4xlarge", "c5ad.8xlarge", "c5ad.12xlarge", "c5ad.16xlarge", "c5ad.24xlarge", "c5n.large", "c5n.xlarge", "c5n.2xlarge", "c5n.4xlarge", "c5n.9xlarge", "c5n.18xlarge", "r5ad.large", "r5ad.xlarge", "r5ad.2xlarge", "r5ad.4xlarge", "r5ad.8xlarge", "r5ad.12xlarge", "r5ad.16xlarge", "r5ad.24xlarge", "c6id.large", "c6id.xlarge", "c6id.2xlarge", "c6id.4xlarge", "c6id.8xlarge", "c6id.12xlarge", "c6id.16xlarge", "c6id.24xlarge", "c6id.32xlarge", "c8g.medium", "c8g.large", "c8g.xlarge", "c8g.2xlarge", "c8g.4xlarge", "c8g.8xlarge", "c8g.12xlarge", "c8g.16xlarge", "c8g.24xlarge", "c8g.48xlarge", "m5ad.large", "m5ad.xlarge", "m5ad.2xlarge", "m5ad.4xlarge", "m5ad.8xlarge", "m5ad.12xlarge", "m5ad.16xlarge", "m5ad.24xlarge", "m5d.large", "m5d.xlarge", "m5d.2xlarge", "m5d.4xlarge", "m5d.8xlarge", "m5d.12xlarge", "m5d.16xlarge", "m5d.24xlarge", "m5dn.large", "m5dn.xlarge", "m5dn.2xlarge", "m5dn.4xlarge", "m5dn.8xlarge", "m5dn.12xlarge", "m5dn.16xlarge", "m5dn.24xlarge", "m5n.large", "m5n.xlarge", "m5n.2xlarge", "m5n.4xlarge", "m5n.8xlarge", "m5n.12xlarge", "m5n.16xlarge", "m5n.24xlarge", "m6id.large", "m6id.xlarge", "m6id.2xlarge", "m6id.4xlarge", "m6id.8xlarge", "m6id.12xlarge", "m6id.16xlarge", "m6id.24xlarge", "m6id.32xlarge", "m6idn.large", "m6idn.xlarge", "m6idn.2xlarge", "m6idn.4xlarge", "m6idn.8xlarge", "m6idn.12xlarge", "m6idn.16xlarge", "m6idn.24xlarge", "m6idn.32xlarge", "m6in.large", "m6in.xlarge", "m6in.2xlarge", "m6in.4xlarge", "m6in.8xlarge", "m6in.12xlarge", "m6in.16xlarge", "m6in.24xlarge", "m6in.32xlarge", "m8g.medium", "m8g.large", "m8g.xlarge", "m8g.2xlarge", "m8g.4xlarge", "m8g.8xlarge", "m8g.12xlarge", "m8g.16xlarge", "m8g.24xlarge", "m8g.48xlarge", "r5dn.large", "r5dn.xlarge", "r5dn.2xlarge", "r5dn.4xlarge", "r5dn.8xlarge", "r5dn.12xlarge", "r5dn.16xlarge", "r5dn.24xlarge", "r5n.large", "r5n.xlarge", "r5n.2xlarge", "r5n.4xlarge", "r5n.8xlarge", "r5n.12xlarge", "r5n.16xlarge", "r5n.24xlarge", "r6a.large", "r6a.xlarge", "r6a.2xlarge", "r6a.4xlarge", "r6a.8xlarge", "r6a.12xlarge", "r6a.16xlarge", "r6a.24xlarge", "r6a.32xlarge", "r6a.48xlarge", "r6id.large", "r6id.xlarge", "r6id.2xlarge", "r6id.4xlarge", "r6id.8xlarge", "r6id.12xlarge", "r6id.16xlarge", "r6id.24xlarge", "r6id.32xlarge", "r6idn.large", "r6idn.xlarge", "r6idn.2xlarge", "r6idn.4xlarge", "r6idn.8xlarge", "r6idn.12xlarge", "r6idn.16xlarge", "r6idn.24xlarge", "r6idn.32xlarge", "r6in.large", "r6in.xlarge", "r6in.2xlarge", "r6in.4xlarge", "r6in.8xlarge", "r6in.12xlarge", "r6in.16xlarge", "r6in.24xlarge", "r6in.32xlarge", "r8g.medium", "r8g.large", "r8g.xlarge", "r8g.2xlarge", "r8g.4xlarge", "r8g.8xlarge", "r8g.12xlarge", "r8g.16xlarge", "r8g.24xlarge", "r8g.48xlarge", "m4.16xlarge", "c6a.32xlarge", "c6a.48xlarge", "c6i.32xlarge", "r6i.24xlarge", "r6i.32xlarge", "c6in.24xlarge", "c6in.32xlarge", "c7a.24xlarge", "c7a.32xlarge", "c7a.48xlarge", "c7i.24xlarge", "c7i.48xlarge", "m6a.24xlarge", "m6a.32xlarge", "m6a.48xlarge", "m6i.24xlarge", "m6i.32xlarge", "m7a.24xlarge", "m7a.32xlarge", "m7a.48xlarge", "m7i.24xlarge", "m7i.48xlarge", "r7a.24xlarge", "r7a.32xlarge", "r7a.48xlarge"
    #   resp.fleet_capacity[0].instance_counts.desired #=> Integer
    #   resp.fleet_capacity[0].instance_counts.minimum #=> Integer
    #   resp.fleet_capacity[0].instance_counts.maximum #=> Integer
    #   resp.fleet_capacity[0].instance_counts.pending #=> Integer
    #   resp.fleet_capacity[0].instance_counts.active #=> Integer
    #   resp.fleet_capacity[0].instance_counts.idle #=> Integer
    #   resp.fleet_capacity[0].instance_counts.terminating #=> Integer
    #   resp.fleet_capacity[0].location #=> String
    #   resp.fleet_capacity[0].game_server_container_group_counts.pending #=> Integer
    #   resp.fleet_capacity[0].game_server_container_group_counts.active #=> Integer
    #   resp.fleet_capacity[0].game_server_container_group_counts.idle #=> Integer
    #   resp.fleet_capacity[0].game_server_container_group_counts.terminating #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeFleetCapacity AWS API Documentation
    #
    # @overload describe_fleet_capacity(params = {})
    # @param [Hash] params ({})
    def describe_fleet_capacity(params = {}, options = {})
      req = build_request(:describe_fleet_capacity, params)
      req.send_request(options)
    end

    # Retrieves information about a managed container fleet deployment.
    #
    # **Request options**
    #
    # * Get information about the latest deployment for a specific fleet.
    #   Provide the fleet ID or ARN.
    #
    # * Get information about a specific deployment. Provide the fleet ID or
    #   ARN and the deployment ID.
    #
    # **Results**
    #
    # If successful, a `FleetDeployment` object is returned.
    #
    # @option params [required, String] :fleet_id
    #   A unique identifier for the container fleet. You can use either the
    #   fleet ID or ARN value.
    #
    # @option params [String] :deployment_id
    #   A unique identifier for the deployment to return information for.
    #
    # @return [Types::DescribeFleetDeploymentOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeFleetDeploymentOutput#fleet_deployment #fleet_deployment} => Types::FleetDeployment
    #   * {Types::DescribeFleetDeploymentOutput#locational_deployments #locational_deployments} => Hash&lt;String,Types::LocationalDeployment&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_fleet_deployment({
    #     fleet_id: "FleetIdOrArn", # required
    #     deployment_id: "DeploymentId",
    #   })
    #
    # @example Response structure
    #
    #   resp.fleet_deployment.deployment_id #=> String
    #   resp.fleet_deployment.fleet_id #=> String
    #   resp.fleet_deployment.game_server_binary_arn #=> String
    #   resp.fleet_deployment.rollback_game_server_binary_arn #=> String
    #   resp.fleet_deployment.per_instance_binary_arn #=> String
    #   resp.fleet_deployment.rollback_per_instance_binary_arn #=> String
    #   resp.fleet_deployment.deployment_status #=> String, one of "IN_PROGRESS", "IMPAIRED", "COMPLETE", "ROLLBACK_IN_PROGRESS", "ROLLBACK_COMPLETE", "CANCELLED", "PENDING"
    #   resp.fleet_deployment.deployment_configuration.protection_strategy #=> String, one of "WITH_PROTECTION", "IGNORE_PROTECTION"
    #   resp.fleet_deployment.deployment_configuration.minimum_healthy_percentage #=> Integer
    #   resp.fleet_deployment.deployment_configuration.impairment_strategy #=> String, one of "MAINTAIN", "ROLLBACK"
    #   resp.fleet_deployment.creation_time #=> Time
    #   resp.locational_deployments #=> Hash
    #   resp.locational_deployments["NonZeroAnd128MaxAsciiString"].deployment_status #=> String, one of "IN_PROGRESS", "IMPAIRED", "COMPLETE", "ROLLBACK_IN_PROGRESS", "ROLLBACK_COMPLETE", "CANCELLED", "PENDING"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeFleetDeployment AWS API Documentation
    #
    # @overload describe_fleet_deployment(params = {})
    # @param [Hash] params ({})
    def describe_fleet_deployment(params = {}, options = {})
      req = build_request(:describe_fleet_deployment, params)
      req.send_request(options)
    end

    # Retrieves entries from a fleet's event log. Fleet events are
    # initiated by changes in status, such as during fleet creation and
    # termination, changes in capacity, etc. If a fleet has multiple
    # locations, events are also initiated by changes to status and capacity
    # in remote locations.
    #
    # You can specify a time range to limit the result set. Use the
    # pagination parameters to retrieve results as a set of sequential
    # pages.
    #
    # If successful, a collection of event log entries matching the request
    # are returned.
    #
    # **Learn more**
    #
    # [Setting up Amazon GameLift Servers fleets][1]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html
    #
    # @option params [required, String] :fleet_id
    #   A unique identifier for the fleet to get event logs for. You can use
    #   either the fleet ID or ARN value.
    #
    # @option params [Time,DateTime,Date,Integer,String] :start_time
    #   The earliest date to retrieve event logs for. If no start time is
    #   specified, this call returns entries starting from when the fleet was
    #   created to the specified end time. Format is a number expressed in
    #   Unix time as milliseconds (ex: "1469498468.057").
    #
    # @option params [Time,DateTime,Date,Integer,String] :end_time
    #   The most recent date to retrieve event logs for. If no end time is
    #   specified, this call returns entries from the specified start time up
    #   to the present. Format is a number expressed in Unix time as
    #   milliseconds (ex: "1469498468.057").
    #
    # @option params [Integer] :limit
    #   The maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages.
    #
    # @option params [String] :next_token
    #   A token that indicates the start of the next sequential page of
    #   results. Use the token that is returned with a previous call to this
    #   operation. To start at the beginning of the result set, do not specify
    #   a value.
    #
    # @return [Types::DescribeFleetEventsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeFleetEventsOutput#events #events} => Array&lt;Types::Event&gt;
    #   * {Types::DescribeFleetEventsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_fleet_events({
    #     fleet_id: "FleetIdOrArn", # required
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     limit: 1,
    #     next_token: "NonZeroAndMaxString",
    #   })
    #
    # @example Response structure
    #
    #   resp.events #=> Array
    #   resp.events[0].event_id #=> String
    #   resp.events[0].resource_id #=> String
    #   resp.events[0].event_code #=> String, one of "GENERIC_EVENT", "FLEET_CREATED", "FLEET_DELETED", "FLEET_SCALING_EVENT", "FLEET_STATE_DOWNLOADING", "FLEET_STATE_VALIDATING", "FLEET_STATE_BUILDING", "FLEET_STATE_ACTIVATING", "FLEET_STATE_ACTIVE", "FLEET_STATE_ERROR", "FLEET_STATE_PENDING", "FLEET_STATE_CREATING", "FLEET_STATE_CREATED", "FLEET_STATE_UPDATING", "FLEET_INITIALIZATION_FAILED", "FLEET_BINARY_DOWNLOAD_FAILED", "FLEET_VALIDATION_LAUNCH_PATH_NOT_FOUND", "FLEET_VALIDATION_EXECUTABLE_RUNTIME_FAILURE", "FLEET_VALIDATION_TIMED_OUT", "FLEET_ACTIVATION_FAILED", "FLEET_ACTIVATION_FAILED_NO_INSTANCES", "FLEET_NEW_GAME_SESSION_PROTECTION_POLICY_UPDATED", "SERVER_PROCESS_INVALID_PATH", "SERVER_PROCESS_SDK_INITIALIZATION_TIMEOUT", "SERVER_PROCESS_PROCESS_READY_TIMEOUT", "SERVER_PROCESS_CRASHED", "SERVER_PROCESS_TERMINATED_UNHEALTHY", "SERVER_PROCESS_FORCE_TERMINATED", "SERVER_PROCESS_PROCESS_EXIT_TIMEOUT", "SERVER_PROCESS_SDK_INITIALIZATION_FAILED", "SERVER_PROCESS_MISCONFIGURED_CONTAINER_PORT", "GAME_SESSION_ACTIVATION_TIMEOUT", "FLEET_CREATION_EXTRACTING_BUILD", "FLEET_CREATION_RUNNING_INSTALLER", "FLEET_CREATION_VALIDATING_RUNTIME_CONFIG", "FLEET_VPC_PEERING_SUCCEEDED", "FLEET_VPC_PEERING_FAILED", "FLEET_VPC_PEERING_DELETED", "INSTANCE_INTERRUPTED", "INSTANCE_RECYCLED", "INSTANCE_REPLACED_UNHEALTHY", "FLEET_CREATION_COMPLETED_INSTALLER", "FLEET_CREATION_FAILED_INSTALLER", "COMPUTE_LOG_UPLOAD_FAILED", "GAME_SERVER_CONTAINER_GROUP_CRASHED", "PER_INSTANCE_CONTAINER_GROUP_CRASHED", "GAME_SERVER_CONTAINER_GROUP_REPLACED_UNHEALTHY", "LOCATION_STATE_PENDING", "LOCATION_STATE_CREATING", "LOCATION_STATE_CREATED", "LOCATION_STATE_ACTIVATING", "LOCATION_STATE_ACTIVE", "LOCATION_STATE_UPDATING", "LOCATION_STATE_ERROR", "LOCATION_STATE_DELETING", "LOCATION_STATE_DELETED"
    #   resp.events[0].message #=> String
    #   resp.events[0].event_time #=> Time
    #   resp.events[0].pre_signed_log_url #=> String
    #   resp.events[0].count #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeFleetEvents AWS API Documentation
    #
    # @overload describe_fleet_events(params = {})
    # @param [Hash] params ({})
    def describe_fleet_events(params = {}, options = {})
      req = build_request(:describe_fleet_events, params)
      req.send_request(options)
    end

    # Retrieves information on a fleet's remote locations, including
    # life-cycle status and any suspended fleet activity.
    #
    # This operation can be used in the following ways:
    #
    # * To get data for specific locations, provide a fleet identifier and a
    #   list of locations. Location data is returned in the order that it is
    #   requested.
    #
    # * To get data for all locations, provide a fleet identifier only.
    #   Location data is returned in no particular order.
    #
    # When requesting attributes for multiple locations, use the pagination
    # parameters to retrieve results as a set of sequential pages.
    #
    # If successful, a `LocationAttributes` object is returned for each
    # requested location. If the fleet does not have a requested location,
    # no information is returned. This operation does not return the home
    # Region. To get information on a fleet's home Region, call
    # `DescribeFleetAttributes`.
    #
    # **Learn more**
    #
    # [Setting up Amazon GameLift Servers fleets][1]
    #
    # [ Amazon GameLift Servers service locations][2] for managed hosting
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html
    # [2]: https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-regions.html
    #
    # @option params [required, String] :fleet_id
    #   A unique identifier for the fleet to retrieve remote locations for.
    #   You can use either the fleet ID or ARN value.
    #
    # @option params [Array<String>] :locations
    #   A list of fleet locations to retrieve information for. Specify
    #   locations in the form of an Amazon Web Services Region code, such as
    #   `us-west-2`.
    #
    # @option params [Integer] :limit
    #   The maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages. This limit is
    #   not currently enforced.
    #
    # @option params [String] :next_token
    #   A token that indicates the start of the next sequential page of
    #   results. Use the token that is returned with a previous call to this
    #   operation. To start at the beginning of the result set, do not specify
    #   a value.
    #
    # @return [Types::DescribeFleetLocationAttributesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeFleetLocationAttributesOutput#fleet_id #fleet_id} => String
    #   * {Types::DescribeFleetLocationAttributesOutput#fleet_arn #fleet_arn} => String
    #   * {Types::DescribeFleetLocationAttributesOutput#location_attributes #location_attributes} => Array&lt;Types::LocationAttributes&gt;
    #   * {Types::DescribeFleetLocationAttributesOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_fleet_location_attributes({
    #     fleet_id: "FleetIdOrArn", # required
    #     locations: ["LocationStringModel"],
    #     limit: 1,
    #     next_token: "NonZeroAndMaxString",
    #   })
    #
    # @example Response structure
    #
    #   resp.fleet_id #=> String
    #   resp.fleet_arn #=> String
    #   resp.location_attributes #=> Array
    #   resp.location_attributes[0].location_state.location #=> String
    #   resp.location_attributes[0].location_state.status #=> String, one of "NEW", "DOWNLOADING", "VALIDATING", "BUILDING", "ACTIVATING", "ACTIVE", "DELETING", "ERROR", "TERMINATED", "NOT_FOUND"
    #   resp.location_attributes[0].stopped_actions #=> Array
    #   resp.location_attributes[0].stopped_actions[0] #=> String, one of "AUTO_SCALING"
    #   resp.location_attributes[0].update_status #=> String, one of "PENDING_UPDATE"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeFleetLocationAttributes AWS API Documentation
    #
    # @overload describe_fleet_location_attributes(params = {})
    # @param [Hash] params ({})
    def describe_fleet_location_attributes(params = {}, options = {})
      req = build_request(:describe_fleet_location_attributes, params)
      req.send_request(options)
    end

    # Retrieves the resource capacity settings for a fleet location. The
    # data returned includes the current capacity (number of EC2 instances)
    # and some scaling settings for the requested fleet location. For a
    # managed container fleet, this operation also returns counts for game
    # server container groups.
    #
    # Use this operation to retrieve capacity information for a fleet's
    # remote location or home Region (you can also retrieve home Region
    # capacity by calling `DescribeFleetCapacity`).
    #
    # To retrieve capacity data, identify a fleet and location.
    #
    # If successful, a `FleetCapacity` object is returned for the requested
    # fleet location.
    #
    # **Learn more**
    #
    # [Setting up Amazon GameLift Servers fleets][1]
    #
    # [ Amazon GameLift Servers service locations][2] for managed hosting
    #
    # [GameLift metrics for fleets][3]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html
    # [2]: https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-regions.html
    # [3]: https://docs.aws.amazon.com/gamelift/latest/developerguide/monitoring-cloudwatch.html#gamelift-metrics-fleet
    #
    # @option params [required, String] :fleet_id
    #   A unique identifier for the fleet to request location capacity for.
    #   You can use either the fleet ID or ARN value.
    #
    # @option params [required, String] :location
    #   The fleet location to retrieve capacity information for. Specify a
    #   location in the form of an Amazon Web Services Region code, such as
    #   `us-west-2`.
    #
    # @return [Types::DescribeFleetLocationCapacityOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeFleetLocationCapacityOutput#fleet_capacity #fleet_capacity} => Types::FleetCapacity
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_fleet_location_capacity({
    #     fleet_id: "FleetIdOrArn", # required
    #     location: "LocationStringModel", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.fleet_capacity.fleet_id #=> String
    #   resp.fleet_capacity.fleet_arn #=> String
    #   resp.fleet_capacity.instance_type #=> String, one of "t2.micro", "t2.small", "t2.medium", "t2.large", "c3.large", "c3.xlarge", "c3.2xlarge", "c3.4xlarge", "c3.8xlarge", "c4.large", "c4.xlarge", "c4.2xlarge", "c4.4xlarge", "c4.8xlarge", "c5.large", "c5.xlarge", "c5.2xlarge", "c5.4xlarge", "c5.9xlarge", "c5.12xlarge", "c5.18xlarge", "c5.24xlarge", "c5a.large", "c5a.xlarge", "c5a.2xlarge", "c5a.4xlarge", "c5a.8xlarge", "c5a.12xlarge", "c5a.16xlarge", "c5a.24xlarge", "r3.large", "r3.xlarge", "r3.2xlarge", "r3.4xlarge", "r3.8xlarge", "r4.large", "r4.xlarge", "r4.2xlarge", "r4.4xlarge", "r4.8xlarge", "r4.16xlarge", "r5.large", "r5.xlarge", "r5.2xlarge", "r5.4xlarge", "r5.8xlarge", "r5.12xlarge", "r5.16xlarge", "r5.24xlarge", "r5a.large", "r5a.xlarge", "r5a.2xlarge", "r5a.4xlarge", "r5a.8xlarge", "r5a.12xlarge", "r5a.16xlarge", "r5a.24xlarge", "m3.medium", "m3.large", "m3.xlarge", "m3.2xlarge", "m4.large", "m4.xlarge", "m4.2xlarge", "m4.4xlarge", "m4.10xlarge", "m5.large", "m5.xlarge", "m5.2xlarge", "m5.4xlarge", "m5.8xlarge", "m5.12xlarge", "m5.16xlarge", "m5.24xlarge", "m5a.large", "m5a.xlarge", "m5a.2xlarge", "m5a.4xlarge", "m5a.8xlarge", "m5a.12xlarge", "m5a.16xlarge", "m5a.24xlarge", "c5d.large", "c5d.xlarge", "c5d.2xlarge", "c5d.4xlarge", "c5d.9xlarge", "c5d.12xlarge", "c5d.18xlarge", "c5d.24xlarge", "c6a.large", "c6a.xlarge", "c6a.2xlarge", "c6a.4xlarge", "c6a.8xlarge", "c6a.12xlarge", "c6a.16xlarge", "c6a.24xlarge", "c6i.large", "c6i.xlarge", "c6i.2xlarge", "c6i.4xlarge", "c6i.8xlarge", "c6i.12xlarge", "c6i.16xlarge", "c6i.24xlarge", "r5d.large", "r5d.xlarge", "r5d.2xlarge", "r5d.4xlarge", "r5d.8xlarge", "r5d.12xlarge", "r5d.16xlarge", "r5d.24xlarge", "m6g.medium", "m6g.large", "m6g.xlarge", "m6g.2xlarge", "m6g.4xlarge", "m6g.8xlarge", "m6g.12xlarge", "m6g.16xlarge", "c6g.medium", "c6g.large", "c6g.xlarge", "c6g.2xlarge", "c6g.4xlarge", "c6g.8xlarge", "c6g.12xlarge", "c6g.16xlarge", "r6g.medium", "r6g.large", "r6g.xlarge", "r6g.2xlarge", "r6g.4xlarge", "r6g.8xlarge", "r6g.12xlarge", "r6g.16xlarge", "c6gn.medium", "c6gn.large", "c6gn.xlarge", "c6gn.2xlarge", "c6gn.4xlarge", "c6gn.8xlarge", "c6gn.12xlarge", "c6gn.16xlarge", "c7g.medium", "c7g.large", "c7g.xlarge", "c7g.2xlarge", "c7g.4xlarge", "c7g.8xlarge", "c7g.12xlarge", "c7g.16xlarge", "r7g.medium", "r7g.large", "r7g.xlarge", "r7g.2xlarge", "r7g.4xlarge", "r7g.8xlarge", "r7g.12xlarge", "r7g.16xlarge", "m7g.medium", "m7g.large", "m7g.xlarge", "m7g.2xlarge", "m7g.4xlarge", "m7g.8xlarge", "m7g.12xlarge", "m7g.16xlarge", "g5g.xlarge", "g5g.2xlarge", "g5g.4xlarge", "g5g.8xlarge", "g5g.16xlarge", "r6i.large", "r6i.xlarge", "r6i.2xlarge", "r6i.4xlarge", "r6i.8xlarge", "r6i.12xlarge", "r6i.16xlarge", "c6gd.medium", "c6gd.large", "c6gd.xlarge", "c6gd.2xlarge", "c6gd.4xlarge", "c6gd.8xlarge", "c6gd.12xlarge", "c6gd.16xlarge", "c6in.large", "c6in.xlarge", "c6in.2xlarge", "c6in.4xlarge", "c6in.8xlarge", "c6in.12xlarge", "c6in.16xlarge", "c7a.medium", "c7a.large", "c7a.xlarge", "c7a.2xlarge", "c7a.4xlarge", "c7a.8xlarge", "c7a.12xlarge", "c7a.16xlarge", "c7gd.medium", "c7gd.large", "c7gd.xlarge", "c7gd.2xlarge", "c7gd.4xlarge", "c7gd.8xlarge", "c7gd.12xlarge", "c7gd.16xlarge", "c7gn.medium", "c7gn.large", "c7gn.xlarge", "c7gn.2xlarge", "c7gn.4xlarge", "c7gn.8xlarge", "c7gn.12xlarge", "c7gn.16xlarge", "c7i.large", "c7i.xlarge", "c7i.2xlarge", "c7i.4xlarge", "c7i.8xlarge", "c7i.12xlarge", "c7i.16xlarge", "m6a.large", "m6a.xlarge", "m6a.2xlarge", "m6a.4xlarge", "m6a.8xlarge", "m6a.12xlarge", "m6a.16xlarge", "m6gd.medium", "m6gd.large", "m6gd.xlarge", "m6gd.2xlarge", "m6gd.4xlarge", "m6gd.8xlarge", "m6gd.12xlarge", "m6gd.16xlarge", "m6i.large", "m6i.xlarge", "m6i.2xlarge", "m6i.4xlarge", "m6i.8xlarge", "m6i.12xlarge", "m6i.16xlarge", "m7a.medium", "m7a.large", "m7a.xlarge", "m7a.2xlarge", "m7a.4xlarge", "m7a.8xlarge", "m7a.12xlarge", "m7a.16xlarge", "m7gd.medium", "m7gd.large", "m7gd.xlarge", "m7gd.2xlarge", "m7gd.4xlarge", "m7gd.8xlarge", "m7gd.12xlarge", "m7gd.16xlarge", "m7i.large", "m7i.xlarge", "m7i.2xlarge", "m7i.4xlarge", "m7i.8xlarge", "m7i.12xlarge", "m7i.16xlarge", "r6gd.medium", "r6gd.large", "r6gd.xlarge", "r6gd.2xlarge", "r6gd.4xlarge", "r6gd.8xlarge", "r6gd.12xlarge", "r6gd.16xlarge", "r7a.medium", "r7a.large", "r7a.xlarge", "r7a.2xlarge", "r7a.4xlarge", "r7a.8xlarge", "r7a.12xlarge", "r7a.16xlarge", "r7gd.medium", "r7gd.large", "r7gd.xlarge", "r7gd.2xlarge", "r7gd.4xlarge", "r7gd.8xlarge", "r7gd.12xlarge", "r7gd.16xlarge", "r7i.large", "r7i.xlarge", "r7i.2xlarge", "r7i.4xlarge", "r7i.8xlarge", "r7i.12xlarge", "r7i.16xlarge", "r7i.24xlarge", "r7i.48xlarge", "c5ad.large", "c5ad.xlarge", "c5ad.2xlarge", "c5ad.4xlarge", "c5ad.8xlarge", "c5ad.12xlarge", "c5ad.16xlarge", "c5ad.24xlarge", "c5n.large", "c5n.xlarge", "c5n.2xlarge", "c5n.4xlarge", "c5n.9xlarge", "c5n.18xlarge", "r5ad.large", "r5ad.xlarge", "r5ad.2xlarge", "r5ad.4xlarge", "r5ad.8xlarge", "r5ad.12xlarge", "r5ad.16xlarge", "r5ad.24xlarge", "c6id.large", "c6id.xlarge", "c6id.2xlarge", "c6id.4xlarge", "c6id.8xlarge", "c6id.12xlarge", "c6id.16xlarge", "c6id.24xlarge", "c6id.32xlarge", "c8g.medium", "c8g.large", "c8g.xlarge", "c8g.2xlarge", "c8g.4xlarge", "c8g.8xlarge", "c8g.12xlarge", "c8g.16xlarge", "c8g.24xlarge", "c8g.48xlarge", "m5ad.large", "m5ad.xlarge", "m5ad.2xlarge", "m5ad.4xlarge", "m5ad.8xlarge", "m5ad.12xlarge", "m5ad.16xlarge", "m5ad.24xlarge", "m5d.large", "m5d.xlarge", "m5d.2xlarge", "m5d.4xlarge", "m5d.8xlarge", "m5d.12xlarge", "m5d.16xlarge", "m5d.24xlarge", "m5dn.large", "m5dn.xlarge", "m5dn.2xlarge", "m5dn.4xlarge", "m5dn.8xlarge", "m5dn.12xlarge", "m5dn.16xlarge", "m5dn.24xlarge", "m5n.large", "m5n.xlarge", "m5n.2xlarge", "m5n.4xlarge", "m5n.8xlarge", "m5n.12xlarge", "m5n.16xlarge", "m5n.24xlarge", "m6id.large", "m6id.xlarge", "m6id.2xlarge", "m6id.4xlarge", "m6id.8xlarge", "m6id.12xlarge", "m6id.16xlarge", "m6id.24xlarge", "m6id.32xlarge", "m6idn.large", "m6idn.xlarge", "m6idn.2xlarge", "m6idn.4xlarge", "m6idn.8xlarge", "m6idn.12xlarge", "m6idn.16xlarge", "m6idn.24xlarge", "m6idn.32xlarge", "m6in.large", "m6in.xlarge", "m6in.2xlarge", "m6in.4xlarge", "m6in.8xlarge", "m6in.12xlarge", "m6in.16xlarge", "m6in.24xlarge", "m6in.32xlarge", "m8g.medium", "m8g.large", "m8g.xlarge", "m8g.2xlarge", "m8g.4xlarge", "m8g.8xlarge", "m8g.12xlarge", "m8g.16xlarge", "m8g.24xlarge", "m8g.48xlarge", "r5dn.large", "r5dn.xlarge", "r5dn.2xlarge", "r5dn.4xlarge", "r5dn.8xlarge", "r5dn.12xlarge", "r5dn.16xlarge", "r5dn.24xlarge", "r5n.large", "r5n.xlarge", "r5n.2xlarge", "r5n.4xlarge", "r5n.8xlarge", "r5n.12xlarge", "r5n.16xlarge", "r5n.24xlarge", "r6a.large", "r6a.xlarge", "r6a.2xlarge", "r6a.4xlarge", "r6a.8xlarge", "r6a.12xlarge", "r6a.16xlarge", "r6a.24xlarge", "r6a.32xlarge", "r6a.48xlarge", "r6id.large", "r6id.xlarge", "r6id.2xlarge", "r6id.4xlarge", "r6id.8xlarge", "r6id.12xlarge", "r6id.16xlarge", "r6id.24xlarge", "r6id.32xlarge", "r6idn.large", "r6idn.xlarge", "r6idn.2xlarge", "r6idn.4xlarge", "r6idn.8xlarge", "r6idn.12xlarge", "r6idn.16xlarge", "r6idn.24xlarge", "r6idn.32xlarge", "r6in.large", "r6in.xlarge", "r6in.2xlarge", "r6in.4xlarge", "r6in.8xlarge", "r6in.12xlarge", "r6in.16xlarge", "r6in.24xlarge", "r6in.32xlarge", "r8g.medium", "r8g.large", "r8g.xlarge", "r8g.2xlarge", "r8g.4xlarge", "r8g.8xlarge", "r8g.12xlarge", "r8g.16xlarge", "r8g.24xlarge", "r8g.48xlarge", "m4.16xlarge", "c6a.32xlarge", "c6a.48xlarge", "c6i.32xlarge", "r6i.24xlarge", "r6i.32xlarge", "c6in.24xlarge", "c6in.32xlarge", "c7a.24xlarge", "c7a.32xlarge", "c7a.48xlarge", "c7i.24xlarge", "c7i.48xlarge", "m6a.24xlarge", "m6a.32xlarge", "m6a.48xlarge", "m6i.24xlarge", "m6i.32xlarge", "m7a.24xlarge", "m7a.32xlarge", "m7a.48xlarge", "m7i.24xlarge", "m7i.48xlarge", "r7a.24xlarge", "r7a.32xlarge", "r7a.48xlarge"
    #   resp.fleet_capacity.instance_counts.desired #=> Integer
    #   resp.fleet_capacity.instance_counts.minimum #=> Integer
    #   resp.fleet_capacity.instance_counts.maximum #=> Integer
    #   resp.fleet_capacity.instance_counts.pending #=> Integer
    #   resp.fleet_capacity.instance_counts.active #=> Integer
    #   resp.fleet_capacity.instance_counts.idle #=> Integer
    #   resp.fleet_capacity.instance_counts.terminating #=> Integer
    #   resp.fleet_capacity.location #=> String
    #   resp.fleet_capacity.game_server_container_group_counts.pending #=> Integer
    #   resp.fleet_capacity.game_server_container_group_counts.active #=> Integer
    #   resp.fleet_capacity.game_server_container_group_counts.idle #=> Integer
    #   resp.fleet_capacity.game_server_container_group_counts.terminating #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeFleetLocationCapacity AWS API Documentation
    #
    # @overload describe_fleet_location_capacity(params = {})
    # @param [Hash] params ({})
    def describe_fleet_location_capacity(params = {}, options = {})
      req = build_request(:describe_fleet_location_capacity, params)
      req.send_request(options)
    end

    # Retrieves current usage data for a fleet location. Utilization data
    # provides a snapshot of current game hosting activity at the requested
    # location. Use this operation to retrieve utilization information for a
    # fleet's remote location or home Region (you can also retrieve home
    # Region utilization by calling `DescribeFleetUtilization`).
    #
    # To retrieve utilization data, identify a fleet and location.
    #
    # If successful, a `FleetUtilization` object is returned for the
    # requested fleet location.
    #
    # **Learn more**
    #
    # [Setting up Amazon GameLift Servers fleets][1]
    #
    # [ Amazon GameLift Servers service locations][2] for managed hosting
    #
    # [GameLift metrics for fleets][3]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html
    # [2]: https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-regions.html
    # [3]: https://docs.aws.amazon.com/gamelift/latest/developerguide/monitoring-cloudwatch.html#gamelift-metrics-fleet
    #
    # @option params [required, String] :fleet_id
    #   A unique identifier for the fleet to request location utilization for.
    #   You can use either the fleet ID or ARN value.
    #
    # @option params [required, String] :location
    #   The fleet location to retrieve utilization information for. Specify a
    #   location in the form of an Amazon Web Services Region code, such as
    #   `us-west-2`.
    #
    # @return [Types::DescribeFleetLocationUtilizationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeFleetLocationUtilizationOutput#fleet_utilization #fleet_utilization} => Types::FleetUtilization
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_fleet_location_utilization({
    #     fleet_id: "FleetIdOrArn", # required
    #     location: "LocationStringModel", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.fleet_utilization.fleet_id #=> String
    #   resp.fleet_utilization.fleet_arn #=> String
    #   resp.fleet_utilization.active_server_process_count #=> Integer
    #   resp.fleet_utilization.active_game_session_count #=> Integer
    #   resp.fleet_utilization.current_player_session_count #=> Integer
    #   resp.fleet_utilization.maximum_player_session_count #=> Integer
    #   resp.fleet_utilization.location #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeFleetLocationUtilization AWS API Documentation
    #
    # @overload describe_fleet_location_utilization(params = {})
    # @param [Hash] params ({})
    def describe_fleet_location_utilization(params = {}, options = {})
      req = build_request(:describe_fleet_location_utilization, params)
      req.send_request(options)
    end

    # Retrieves a fleet's inbound connection permissions. Connection
    # permissions specify IP addresses and port settings that incoming
    # traffic can use to access server processes in the fleet. Game server
    # processes that are running in the fleet must use a port that falls
    # within this range.
    #
    # Use this operation in the following ways:
    #
    # * To retrieve the port settings for a fleet, identify the fleet's
    #   unique identifier.
    #
    # * To check the status of recent updates to a fleet remote location,
    #   specify the fleet ID and a location. Port setting updates can take
    #   time to propagate across all locations.
    #
    # If successful, a set of `IpPermission` objects is returned for the
    # requested fleet ID. When specifying a location, this operation returns
    # a pending status. If the requested fleet has been deleted, the result
    # set is empty.
    #
    # **Learn more**
    #
    # [Setting up Amazon GameLift Servers fleets][1]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html
    #
    # @option params [required, String] :fleet_id
    #   A unique identifier for the fleet to retrieve port settings for. You
    #   can use either the fleet ID or ARN value.
    #
    # @option params [String] :location
    #   A remote location to check for status of port setting updates. Use the
    #   Amazon Web Services Region code format, such as `us-west-2`.
    #
    # @return [Types::DescribeFleetPortSettingsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeFleetPortSettingsOutput#fleet_id #fleet_id} => String
    #   * {Types::DescribeFleetPortSettingsOutput#fleet_arn #fleet_arn} => String
    #   * {Types::DescribeFleetPortSettingsOutput#inbound_permissions #inbound_permissions} => Array&lt;Types::IpPermission&gt;
    #   * {Types::DescribeFleetPortSettingsOutput#update_status #update_status} => String
    #   * {Types::DescribeFleetPortSettingsOutput#location #location} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_fleet_port_settings({
    #     fleet_id: "FleetIdOrArn", # required
    #     location: "LocationStringModel",
    #   })
    #
    # @example Response structure
    #
    #   resp.fleet_id #=> String
    #   resp.fleet_arn #=> String
    #   resp.inbound_permissions #=> Array
    #   resp.inbound_permissions[0].from_port #=> Integer
    #   resp.inbound_permissions[0].to_port #=> Integer
    #   resp.inbound_permissions[0].ip_range #=> String
    #   resp.inbound_permissions[0].protocol #=> String, one of "TCP", "UDP"
    #   resp.update_status #=> String, one of "PENDING_UPDATE"
    #   resp.location #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeFleetPortSettings AWS API Documentation
    #
    # @overload describe_fleet_port_settings(params = {})
    # @param [Hash] params ({})
    def describe_fleet_port_settings(params = {}, options = {})
      req = build_request(:describe_fleet_port_settings, params)
      req.send_request(options)
    end

    # Retrieves utilization statistics for one or more fleets. Utilization
    # data provides a snapshot of how the fleet's hosting resources are
    # currently being used. For fleets with remote locations, this operation
    # retrieves data for the fleet's home Region only. See
    # [DescribeFleetLocationUtilization][1] to get utilization statistics
    # for a fleet's remote locations.
    #
    # This operation can be used in the following ways:
    #
    # * To get utilization data for one or more specific fleets, provide a
    #   list of fleet IDs or fleet ARNs.
    #
    # * To get utilization data for all fleets, do not provide a fleet
    #   identifier.
    #
    # When requesting multiple fleets, use the pagination parameters to
    # retrieve results as a set of sequential pages.
    #
    # If successful, a [FleetUtilization][2] object is returned for each
    # requested fleet ID, unless the fleet identifier is not found. Each
    # fleet utilization object includes a `Location` property, which is set
    # to the fleet's home Region.
    #
    # <note markdown="1"> Some API operations may limit the number of fleet IDs allowed in one
    # request. If a request exceeds this limit, the request fails and the
    # error message includes the maximum allowed.
    #
    #  </note>
    #
    # **Learn more**
    #
    # [Setting up Amazon GameLift Servers Fleets][3]
    #
    # [GameLift Metrics for Fleets][4]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_DescribeFleetLocationUtilization.html
    # [2]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_FleetUtilization.html
    # [3]: https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html
    # [4]: https://docs.aws.amazon.com/gamelift/latest/developerguide/monitoring-cloudwatch.html#gamelift-metrics-fleet
    #
    # @option params [Array<String>] :fleet_ids
    #   A unique identifier for the fleet to retrieve utilization data for.
    #   You can use either the fleet ID or ARN value. To retrieve attributes
    #   for all current fleets, do not include this parameter.
    #
    # @option params [Integer] :limit
    #   The maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages. This
    #   parameter is ignored when the request specifies one or a list of fleet
    #   IDs.
    #
    # @option params [String] :next_token
    #   A token that indicates the start of the next sequential page of
    #   results. Use the token that is returned with a previous call to this
    #   operation. To start at the beginning of the result set, do not specify
    #   a value. This parameter is ignored when the request specifies one or a
    #   list of fleet IDs.
    #
    # @return [Types::DescribeFleetUtilizationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeFleetUtilizationOutput#fleet_utilization #fleet_utilization} => Array&lt;Types::FleetUtilization&gt;
    #   * {Types::DescribeFleetUtilizationOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_fleet_utilization({
    #     fleet_ids: ["FleetIdOrArn"],
    #     limit: 1,
    #     next_token: "NonZeroAndMaxString",
    #   })
    #
    # @example Response structure
    #
    #   resp.fleet_utilization #=> Array
    #   resp.fleet_utilization[0].fleet_id #=> String
    #   resp.fleet_utilization[0].fleet_arn #=> String
    #   resp.fleet_utilization[0].active_server_process_count #=> Integer
    #   resp.fleet_utilization[0].active_game_session_count #=> Integer
    #   resp.fleet_utilization[0].current_player_session_count #=> Integer
    #   resp.fleet_utilization[0].maximum_player_session_count #=> Integer
    #   resp.fleet_utilization[0].location #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeFleetUtilization AWS API Documentation
    #
    # @overload describe_fleet_utilization(params = {})
    # @param [Hash] params ({})
    def describe_fleet_utilization(params = {}, options = {})
      req = build_request(:describe_fleet_utilization, params)
      req.send_request(options)
    end

    # **This operation is used with the Amazon GameLift Servers FleetIQ
    # solution and game server groups.**
    #
    # Retrieves information for a registered game server. Information
    # includes game server status, health check info, and the instance that
    # the game server is running on.
    #
    # To retrieve game server information, specify the game server ID. If
    # successful, the requested game server object is returned.
    #
    # **Learn more**
    #
    # [Amazon GameLift Servers FleetIQ Guide][1]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/gsg-intro.html
    #
    # @option params [required, String] :game_server_group_name
    #   A unique identifier for the game server group where the game server is
    #   running.
    #
    # @option params [required, String] :game_server_id
    #   A custom string that uniquely identifies the game server information
    #   to be retrieved.
    #
    # @return [Types::DescribeGameServerOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeGameServerOutput#game_server #game_server} => Types::GameServer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_game_server({
    #     game_server_group_name: "GameServerGroupNameOrArn", # required
    #     game_server_id: "GameServerId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.game_server.game_server_group_name #=> String
    #   resp.game_server.game_server_group_arn #=> String
    #   resp.game_server.game_server_id #=> String
    #   resp.game_server.instance_id #=> String
    #   resp.game_server.connection_info #=> String
    #   resp.game_server.game_server_data #=> String
    #   resp.game_server.claim_status #=> String, one of "CLAIMED"
    #   resp.game_server.utilization_status #=> String, one of "AVAILABLE", "UTILIZED"
    #   resp.game_server.registration_time #=> Time
    #   resp.game_server.last_claim_time #=> Time
    #   resp.game_server.last_health_check_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeGameServer AWS API Documentation
    #
    # @overload describe_game_server(params = {})
    # @param [Hash] params ({})
    def describe_game_server(params = {}, options = {})
      req = build_request(:describe_game_server, params)
      req.send_request(options)
    end

    # **This operation is used with the Amazon GameLift Servers FleetIQ
    # solution and game server groups.**
    #
    # Retrieves information on a game server group. This operation returns
    # only properties related to Amazon GameLift Servers FleetIQ. To view or
    # update properties for the corresponding Auto Scaling group, such as
    # launch template, auto scaling policies, and maximum/minimum group
    # size, access the Auto Scaling group directly.
    #
    # To get attributes for a game server group, provide a group name or ARN
    # value. If successful, a `GameServerGroup` object is returned.
    #
    # **Learn more**
    #
    # [Amazon GameLift Servers FleetIQ Guide][1]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/gsg-intro.html
    #
    # @option params [required, String] :game_server_group_name
    #   A unique identifier for the game server group. Use either the name or
    #   ARN value.
    #
    # @return [Types::DescribeGameServerGroupOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeGameServerGroupOutput#game_server_group #game_server_group} => Types::GameServerGroup
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_game_server_group({
    #     game_server_group_name: "GameServerGroupNameOrArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.game_server_group.game_server_group_name #=> String
    #   resp.game_server_group.game_server_group_arn #=> String
    #   resp.game_server_group.role_arn #=> String
    #   resp.game_server_group.instance_definitions #=> Array
    #   resp.game_server_group.instance_definitions[0].instance_type #=> String, one of "c4.large", "c4.xlarge", "c4.2xlarge", "c4.4xlarge", "c4.8xlarge", "c5.large", "c5.xlarge", "c5.2xlarge", "c5.4xlarge", "c5.9xlarge", "c5.12xlarge", "c5.18xlarge", "c5.24xlarge", "c5a.large", "c5a.xlarge", "c5a.2xlarge", "c5a.4xlarge", "c5a.8xlarge", "c5a.12xlarge", "c5a.16xlarge", "c5a.24xlarge", "c6g.medium", "c6g.large", "c6g.xlarge", "c6g.2xlarge", "c6g.4xlarge", "c6g.8xlarge", "c6g.12xlarge", "c6g.16xlarge", "r4.large", "r4.xlarge", "r4.2xlarge", "r4.4xlarge", "r4.8xlarge", "r4.16xlarge", "r5.large", "r5.xlarge", "r5.2xlarge", "r5.4xlarge", "r5.8xlarge", "r5.12xlarge", "r5.16xlarge", "r5.24xlarge", "r5a.large", "r5a.xlarge", "r5a.2xlarge", "r5a.4xlarge", "r5a.8xlarge", "r5a.12xlarge", "r5a.16xlarge", "r5a.24xlarge", "r6g.medium", "r6g.large", "r6g.xlarge", "r6g.2xlarge", "r6g.4xlarge", "r6g.8xlarge", "r6g.12xlarge", "r6g.16xlarge", "m4.large", "m4.xlarge", "m4.2xlarge", "m4.4xlarge", "m4.10xlarge", "m5.large", "m5.xlarge", "m5.2xlarge", "m5.4xlarge", "m5.8xlarge", "m5.12xlarge", "m5.16xlarge", "m5.24xlarge", "m5a.large", "m5a.xlarge", "m5a.2xlarge", "m5a.4xlarge", "m5a.8xlarge", "m5a.12xlarge", "m5a.16xlarge", "m5a.24xlarge", "m6g.medium", "m6g.large", "m6g.xlarge", "m6g.2xlarge", "m6g.4xlarge", "m6g.8xlarge", "m6g.12xlarge", "m6g.16xlarge"
    #   resp.game_server_group.instance_definitions[0].weighted_capacity #=> String
    #   resp.game_server_group.balancing_strategy #=> String, one of "SPOT_ONLY", "SPOT_PREFERRED", "ON_DEMAND_ONLY"
    #   resp.game_server_group.game_server_protection_policy #=> String, one of "NO_PROTECTION", "FULL_PROTECTION"
    #   resp.game_server_group.auto_scaling_group_arn #=> String
    #   resp.game_server_group.status #=> String, one of "NEW", "ACTIVATING", "ACTIVE", "DELETE_SCHEDULED", "DELETING", "DELETED", "ERROR"
    #   resp.game_server_group.status_reason #=> String
    #   resp.game_server_group.suspended_actions #=> Array
    #   resp.game_server_group.suspended_actions[0] #=> String, one of "REPLACE_INSTANCE_TYPES"
    #   resp.game_server_group.creation_time #=> Time
    #   resp.game_server_group.last_updated_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeGameServerGroup AWS API Documentation
    #
    # @overload describe_game_server_group(params = {})
    # @param [Hash] params ({})
    def describe_game_server_group(params = {}, options = {})
      req = build_request(:describe_game_server_group, params)
      req.send_request(options)
    end

    # **This operation is used with the Amazon GameLift Servers FleetIQ
    # solution and game server groups.**
    #
    # Retrieves status information about the Amazon EC2 instances associated
    # with a Amazon GameLift Servers FleetIQ game server group. Use this
    # operation to detect when instances are active or not available to host
    # new game servers.
    #
    # To request status for all instances in the game server group, provide
    # a game server group ID only. To request status for specific instances,
    # provide the game server group ID and one or more instance IDs. Use the
    # pagination parameters to retrieve results in sequential segments. If
    # successful, a collection of `GameServerInstance` objects is returned.
    #
    # This operation is not designed to be called with every game server
    # claim request; this practice can cause you to exceed your API limit,
    # which results in errors. Instead, as a best practice, cache the
    # results and refresh your cache no more than once every 10 seconds.
    #
    # **Learn more**
    #
    # [Amazon GameLift Servers FleetIQ Guide][1]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/gsg-intro.html
    #
    # @option params [required, String] :game_server_group_name
    #   A unique identifier for the game server group. Use either the name or
    #   ARN value.
    #
    # @option params [Array<String>] :instance_ids
    #   The Amazon EC2 instance IDs that you want to retrieve status on.
    #   Amazon EC2 instance IDs use a 17-character format, for example:
    #   `i-1234567890abcdef0`. To retrieve all instances in the game server
    #   group, leave this parameter empty.
    #
    # @option params [Integer] :limit
    #   The maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages.
    #
    # @option params [String] :next_token
    #   A token that indicates the start of the next sequential page of
    #   results. Use the token that is returned with a previous call to this
    #   operation. To start at the beginning of the result set, do not specify
    #   a value.
    #
    # @return [Types::DescribeGameServerInstancesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeGameServerInstancesOutput#game_server_instances #game_server_instances} => Array&lt;Types::GameServerInstance&gt;
    #   * {Types::DescribeGameServerInstancesOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_game_server_instances({
    #     game_server_group_name: "GameServerGroupNameOrArn", # required
    #     instance_ids: ["GameServerInstanceId"],
    #     limit: 1,
    #     next_token: "NonZeroAndMaxString",
    #   })
    #
    # @example Response structure
    #
    #   resp.game_server_instances #=> Array
    #   resp.game_server_instances[0].game_server_group_name #=> String
    #   resp.game_server_instances[0].game_server_group_arn #=> String
    #   resp.game_server_instances[0].instance_id #=> String
    #   resp.game_server_instances[0].instance_status #=> String, one of "ACTIVE", "DRAINING", "SPOT_TERMINATING"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeGameServerInstances AWS API Documentation
    #
    # @overload describe_game_server_instances(params = {})
    # @param [Hash] params ({})
    def describe_game_server_instances(params = {}, options = {})
      req = build_request(:describe_game_server_instances, params)
      req.send_request(options)
    end

    # Retrieves additional game session properties, including the game
    # session protection policy in force, a set of one or more game sessions
    # in a specific fleet location. You can optionally filter the results by
    # current game session status.
    #
    # This operation can be used in the following ways:
    #
    # * To retrieve details for all game sessions that are currently running
    #   on all locations in a fleet, provide a fleet or alias ID, with an
    #   optional status filter. This approach returns details from the
    #   fleet's home Region and all remote locations.
    #
    # * To retrieve details for all game sessions that are currently running
    #   on a specific fleet location, provide a fleet or alias ID and a
    #   location name, with optional status filter. The location can be the
    #   fleet's home Region or any remote location.
    #
    # * To retrieve details for a specific game session, provide the game
    #   session ID. This approach looks for the game session ID in all
    #   fleets that reside in the Amazon Web Services Region defined in the
    #   request.
    #
    # Use the pagination parameters to retrieve results as a set of
    # sequential pages.
    #
    # If successful, a `GameSessionDetail` object is returned for each game
    # session that matches the request.
    #
    # **Learn more**
    #
    # [Find a game session][1]
    #
    # [All APIs by task][2]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-client-api.html#gamelift-sdk-client-api-find
    # [2]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets
    #
    # @option params [String] :fleet_id
    #   A unique identifier for the fleet to retrieve all game sessions active
    #   on the fleet. You can use either the fleet ID or ARN value.
    #
    # @option params [String] :game_session_id
    #   A unique identifier for the game session to retrieve.
    #
    # @option params [String] :alias_id
    #   A unique identifier for the alias associated with the fleet to
    #   retrieve all game sessions for. You can use either the alias ID or ARN
    #   value.
    #
    # @option params [String] :location
    #   A fleet location to get game session details for. You can specify a
    #   fleet's home Region or a remote location. Use the Amazon Web Services
    #   Region code format, such as `us-west-2`.
    #
    # @option params [String] :status_filter
    #   Game session status to filter results on. Possible game session
    #   statuses include `ACTIVE`, `TERMINATED`, `ACTIVATING` and
    #   `TERMINATING` (the last two are transitory).
    #
    # @option params [Integer] :limit
    #   The maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages.
    #
    # @option params [String] :next_token
    #   A token that indicates the start of the next sequential page of
    #   results. Use the token that is returned with a previous call to this
    #   operation. To start at the beginning of the result set, do not specify
    #   a value.
    #
    # @return [Types::DescribeGameSessionDetailsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeGameSessionDetailsOutput#game_session_details #game_session_details} => Array&lt;Types::GameSessionDetail&gt;
    #   * {Types::DescribeGameSessionDetailsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_game_session_details({
    #     fleet_id: "FleetIdOrArn",
    #     game_session_id: "ArnStringModel",
    #     alias_id: "AliasIdOrArn",
    #     location: "LocationStringModel",
    #     status_filter: "NonZeroAndMaxString",
    #     limit: 1,
    #     next_token: "NonZeroAndMaxString",
    #   })
    #
    # @example Response structure
    #
    #   resp.game_session_details #=> Array
    #   resp.game_session_details[0].game_session.game_session_id #=> String
    #   resp.game_session_details[0].game_session.name #=> String
    #   resp.game_session_details[0].game_session.fleet_id #=> String
    #   resp.game_session_details[0].game_session.fleet_arn #=> String
    #   resp.game_session_details[0].game_session.creation_time #=> Time
    #   resp.game_session_details[0].game_session.termination_time #=> Time
    #   resp.game_session_details[0].game_session.current_player_session_count #=> Integer
    #   resp.game_session_details[0].game_session.maximum_player_session_count #=> Integer
    #   resp.game_session_details[0].game_session.status #=> String, one of "ACTIVE", "ACTIVATING", "TERMINATED", "TERMINATING", "ERROR"
    #   resp.game_session_details[0].game_session.status_reason #=> String, one of "INTERRUPTED", "TRIGGERED_ON_PROCESS_TERMINATE", "FORCE_TERMINATED"
    #   resp.game_session_details[0].game_session.game_properties #=> Array
    #   resp.game_session_details[0].game_session.game_properties[0].key #=> String
    #   resp.game_session_details[0].game_session.game_properties[0].value #=> String
    #   resp.game_session_details[0].game_session.ip_address #=> String
    #   resp.game_session_details[0].game_session.dns_name #=> String
    #   resp.game_session_details[0].game_session.port #=> Integer
    #   resp.game_session_details[0].game_session.player_session_creation_policy #=> String, one of "ACCEPT_ALL", "DENY_ALL"
    #   resp.game_session_details[0].game_session.creator_id #=> String
    #   resp.game_session_details[0].game_session.game_session_data #=> String
    #   resp.game_session_details[0].game_session.matchmaker_data #=> String
    #   resp.game_session_details[0].game_session.location #=> String
    #   resp.game_session_details[0].protection_policy #=> String, one of "NoProtection", "FullProtection"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeGameSessionDetails AWS API Documentation
    #
    # @overload describe_game_session_details(params = {})
    # @param [Hash] params ({})
    def describe_game_session_details(params = {}, options = {})
      req = build_request(:describe_game_session_details, params)
      req.send_request(options)
    end

    # Retrieves information, including current status, about a game session
    # placement request.
    #
    # To get game session placement details, specify the placement ID.
    #
    # This operation is not designed to be continually called to track game
    # session status. This practice can cause you to exceed your API limit,
    # which results in errors. Instead, you must configure an Amazon Simple
    # Notification Service (SNS) topic to receive notifications from
    # FlexMatch or queues. Continuously polling with
    # `DescribeGameSessionPlacement` should only be used for games in
    # development with low game session usage.
    #
    # @option params [required, String] :placement_id
    #   A unique identifier for a game session placement to retrieve.
    #
    # @return [Types::DescribeGameSessionPlacementOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeGameSessionPlacementOutput#game_session_placement #game_session_placement} => Types::GameSessionPlacement
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_game_session_placement({
    #     placement_id: "IdStringModel", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.game_session_placement.placement_id #=> String
    #   resp.game_session_placement.game_session_queue_name #=> String
    #   resp.game_session_placement.status #=> String, one of "PENDING", "FULFILLED", "CANCELLED", "TIMED_OUT", "FAILED"
    #   resp.game_session_placement.game_properties #=> Array
    #   resp.game_session_placement.game_properties[0].key #=> String
    #   resp.game_session_placement.game_properties[0].value #=> String
    #   resp.game_session_placement.maximum_player_session_count #=> Integer
    #   resp.game_session_placement.game_session_name #=> String
    #   resp.game_session_placement.game_session_id #=> String
    #   resp.game_session_placement.game_session_arn #=> String
    #   resp.game_session_placement.game_session_region #=> String
    #   resp.game_session_placement.player_latencies #=> Array
    #   resp.game_session_placement.player_latencies[0].player_id #=> String
    #   resp.game_session_placement.player_latencies[0].region_identifier #=> String
    #   resp.game_session_placement.player_latencies[0].latency_in_milliseconds #=> Float
    #   resp.game_session_placement.start_time #=> Time
    #   resp.game_session_placement.end_time #=> Time
    #   resp.game_session_placement.ip_address #=> String
    #   resp.game_session_placement.dns_name #=> String
    #   resp.game_session_placement.port #=> Integer
    #   resp.game_session_placement.placed_player_sessions #=> Array
    #   resp.game_session_placement.placed_player_sessions[0].player_id #=> String
    #   resp.game_session_placement.placed_player_sessions[0].player_session_id #=> String
    #   resp.game_session_placement.game_session_data #=> String
    #   resp.game_session_placement.matchmaker_data #=> String
    #   resp.game_session_placement.priority_configuration_override.placement_fallback_strategy #=> String, one of "DEFAULT_AFTER_SINGLE_PASS", "NONE"
    #   resp.game_session_placement.priority_configuration_override.location_order #=> Array
    #   resp.game_session_placement.priority_configuration_override.location_order[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeGameSessionPlacement AWS API Documentation
    #
    # @overload describe_game_session_placement(params = {})
    # @param [Hash] params ({})
    def describe_game_session_placement(params = {}, options = {})
      req = build_request(:describe_game_session_placement, params)
      req.send_request(options)
    end

    # Retrieves the properties for one or more game session queues. When
    # requesting multiple queues, use the pagination parameters to retrieve
    # results as a set of sequential pages. When specifying a list of
    # queues, objects are returned only for queues that currently exist in
    # the Region.
    #
    # **Learn more**
    #
    # [ View Your Queues][1]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/queues-console.html
    #
    # @option params [Array<String>] :names
    #   A list of queue names to retrieve information for. You can use either
    #   the queue ID or ARN value. To request settings for all queues, leave
    #   this parameter empty.
    #
    # @option params [Integer] :limit
    #   The maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages. You can
    #   request up to 50 results.
    #
    # @option params [String] :next_token
    #   A token that indicates the start of the next sequential page of
    #   results. Use the token that is returned with a previous call to this
    #   operation. To start at the beginning of the result set, do not specify
    #   a value.
    #
    # @return [Types::DescribeGameSessionQueuesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeGameSessionQueuesOutput#game_session_queues #game_session_queues} => Array&lt;Types::GameSessionQueue&gt;
    #   * {Types::DescribeGameSessionQueuesOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_game_session_queues({
    #     names: ["GameSessionQueueNameOrArn"],
    #     limit: 1,
    #     next_token: "NonZeroAndMaxString",
    #   })
    #
    # @example Response structure
    #
    #   resp.game_session_queues #=> Array
    #   resp.game_session_queues[0].name #=> String
    #   resp.game_session_queues[0].game_session_queue_arn #=> String
    #   resp.game_session_queues[0].timeout_in_seconds #=> Integer
    #   resp.game_session_queues[0].player_latency_policies #=> Array
    #   resp.game_session_queues[0].player_latency_policies[0].maximum_individual_player_latency_milliseconds #=> Integer
    #   resp.game_session_queues[0].player_latency_policies[0].policy_duration_seconds #=> Integer
    #   resp.game_session_queues[0].destinations #=> Array
    #   resp.game_session_queues[0].destinations[0].destination_arn #=> String
    #   resp.game_session_queues[0].filter_configuration.allowed_locations #=> Array
    #   resp.game_session_queues[0].filter_configuration.allowed_locations[0] #=> String
    #   resp.game_session_queues[0].priority_configuration.priority_order #=> Array
    #   resp.game_session_queues[0].priority_configuration.priority_order[0] #=> String, one of "LATENCY", "COST", "DESTINATION", "LOCATION"
    #   resp.game_session_queues[0].priority_configuration.location_order #=> Array
    #   resp.game_session_queues[0].priority_configuration.location_order[0] #=> String
    #   resp.game_session_queues[0].custom_event_data #=> String
    #   resp.game_session_queues[0].notification_target #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeGameSessionQueues AWS API Documentation
    #
    # @overload describe_game_session_queues(params = {})
    # @param [Hash] params ({})
    def describe_game_session_queues(params = {}, options = {})
      req = build_request(:describe_game_session_queues, params)
      req.send_request(options)
    end

    # Retrieves a set of one or more game sessions in a specific fleet
    # location. You can optionally filter the results by current game
    # session status.
    #
    # This operation can be used in the following ways:
    #
    # * To retrieve all game sessions that are currently running on all
    #   locations in a fleet, provide a fleet or alias ID, with an optional
    #   status filter. This approach returns all game sessions in the
    #   fleet's home Region and all remote locations.
    #
    # * To retrieve all game sessions that are currently running on a
    #   specific fleet location, provide a fleet or alias ID and a location
    #   name, with optional status filter. The location can be the fleet's
    #   home Region or any remote location.
    #
    # * To retrieve a specific game session, provide the game session ID.
    #   This approach looks for the game session ID in all fleets that
    #   reside in the Amazon Web Services Region defined in the request.
    #
    # Use the pagination parameters to retrieve results as a set of
    # sequential pages.
    #
    # If successful, a `GameSession` object is returned for each game
    # session that matches the request.
    #
    # This operation is not designed to be continually called to track game
    # session status. This practice can cause you to exceed your API limit,
    # which results in errors. Instead, you must configure an Amazon Simple
    # Notification Service (SNS) topic to receive notifications from
    # FlexMatch or queues. Continuously polling with `DescribeGameSessions`
    # should only be used for games in development with low game session
    # usage.
    #
    # *Available in Amazon GameLift Servers Local.*
    #
    # **Learn more**
    #
    # [Find a game session][1]
    #
    # [All APIs by task][2]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-client-api.html#gamelift-sdk-client-api-find
    # [2]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets
    #
    # @option params [String] :fleet_id
    #   A unique identifier for the fleet to retrieve game sessions for. You
    #   can use either the fleet ID or ARN value.
    #
    # @option params [String] :game_session_id
    #   A unique identifier for the game session to retrieve.
    #
    # @option params [String] :alias_id
    #   A unique identifier for the alias associated with the fleet to
    #   retrieve game sessions for. You can use either the alias ID or ARN
    #   value.
    #
    # @option params [String] :location
    #   A fleet location to get game sessions for. You can specify a fleet's
    #   home Region or a remote location. Use the Amazon Web Services Region
    #   code format, such as `us-west-2`.
    #
    # @option params [String] :status_filter
    #   Game session status to filter results on. You can filter on the
    #   following states: `ACTIVE`, `TERMINATED`, `ACTIVATING`, and
    #   `TERMINATING`. The last two are transitory and used for only very
    #   brief periods of time.
    #
    # @option params [Integer] :limit
    #   The maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages.
    #
    # @option params [String] :next_token
    #   A token that indicates the start of the next sequential page of
    #   results. Use the token that is returned with a previous call to this
    #   operation. To start at the beginning of the result set, do not specify
    #   a value.
    #
    # @return [Types::DescribeGameSessionsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeGameSessionsOutput#game_sessions #game_sessions} => Array&lt;Types::GameSession&gt;
    #   * {Types::DescribeGameSessionsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_game_sessions({
    #     fleet_id: "FleetIdOrArn",
    #     game_session_id: "ArnStringModel",
    #     alias_id: "AliasIdOrArn",
    #     location: "LocationStringModel",
    #     status_filter: "NonZeroAndMaxString",
    #     limit: 1,
    #     next_token: "NonZeroAndMaxString",
    #   })
    #
    # @example Response structure
    #
    #   resp.game_sessions #=> Array
    #   resp.game_sessions[0].game_session_id #=> String
    #   resp.game_sessions[0].name #=> String
    #   resp.game_sessions[0].fleet_id #=> String
    #   resp.game_sessions[0].fleet_arn #=> String
    #   resp.game_sessions[0].creation_time #=> Time
    #   resp.game_sessions[0].termination_time #=> Time
    #   resp.game_sessions[0].current_player_session_count #=> Integer
    #   resp.game_sessions[0].maximum_player_session_count #=> Integer
    #   resp.game_sessions[0].status #=> String, one of "ACTIVE", "ACTIVATING", "TERMINATED", "TERMINATING", "ERROR"
    #   resp.game_sessions[0].status_reason #=> String, one of "INTERRUPTED", "TRIGGERED_ON_PROCESS_TERMINATE", "FORCE_TERMINATED"
    #   resp.game_sessions[0].game_properties #=> Array
    #   resp.game_sessions[0].game_properties[0].key #=> String
    #   resp.game_sessions[0].game_properties[0].value #=> String
    #   resp.game_sessions[0].ip_address #=> String
    #   resp.game_sessions[0].dns_name #=> String
    #   resp.game_sessions[0].port #=> Integer
    #   resp.game_sessions[0].player_session_creation_policy #=> String, one of "ACCEPT_ALL", "DENY_ALL"
    #   resp.game_sessions[0].creator_id #=> String
    #   resp.game_sessions[0].game_session_data #=> String
    #   resp.game_sessions[0].matchmaker_data #=> String
    #   resp.game_sessions[0].location #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeGameSessions AWS API Documentation
    #
    # @overload describe_game_sessions(params = {})
    # @param [Hash] params ({})
    def describe_game_sessions(params = {}, options = {})
      req = build_request(:describe_game_sessions, params)
      req.send_request(options)
    end

    # Retrieves information about the EC2 instances in an Amazon GameLift
    # Servers managed fleet, including instance ID, connection data, and
    # status. You can use this operation with a multi-location fleet to get
    # location-specific instance information. As an alternative, use the
    # operations
    # [https://docs.aws.amazon.com/gamelift/latest/apireference/API\_ListCompute][1]
    # and
    # [https://docs.aws.amazon.com/gamelift/latest/apireference/API\_DescribeCompute][2]
    # to retrieve information for compute resources, including EC2 and
    # Anywhere fleets.
    #
    # You can call this operation in the following ways:
    #
    # * To get information on all instances in a fleet's home Region,
    #   specify the fleet ID.
    #
    # * To get information on all instances in a fleet's remote location,
    #   specify the fleet ID and location name.
    #
    # * To get information on a specific instance in a fleet, specify the
    #   fleet ID and instance ID.
    #
    # Use the pagination parameters to retrieve results as a set of
    # sequential pages.
    #
    # If successful, this operation returns `Instance` objects for each
    # requested instance, listed in no particular order. If you call this
    # operation for an Anywhere fleet, you receive an
    # InvalidRequestException.
    #
    # **Learn more**
    #
    # [Remotely connect to fleet instances][3]
    #
    # [Debug fleet issues][4]
    #
    # **Related actions**
    #
    # [All APIs by task][5]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_ListCompute
    # [2]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_DescribeCompute
    # [3]: https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-remote-access.html
    # [4]: https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-creating-debug.html
    # [5]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets
    #
    # @option params [required, String] :fleet_id
    #   A unique identifier for the fleet to retrieve instance information
    #   for. You can use either the fleet ID or ARN value.
    #
    # @option params [String] :instance_id
    #   A unique identifier for an instance to retrieve. Specify an instance
    #   ID or leave blank to retrieve all instances in the fleet.
    #
    # @option params [Integer] :limit
    #   The maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages.
    #
    # @option params [String] :next_token
    #   A token that indicates the start of the next sequential page of
    #   results. Use the token that is returned with a previous call to this
    #   operation. To start at the beginning of the result set, do not specify
    #   a value.
    #
    # @option params [String] :location
    #   The name of a location to retrieve instance information for, in the
    #   form of an Amazon Web Services Region code such as `us-west-2`.
    #
    # @return [Types::DescribeInstancesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeInstancesOutput#instances #instances} => Array&lt;Types::Instance&gt;
    #   * {Types::DescribeInstancesOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_instances({
    #     fleet_id: "FleetIdOrArn", # required
    #     instance_id: "InstanceId",
    #     limit: 1,
    #     next_token: "NonZeroAndMaxString",
    #     location: "LocationStringModel",
    #   })
    #
    # @example Response structure
    #
    #   resp.instances #=> Array
    #   resp.instances[0].fleet_id #=> String
    #   resp.instances[0].fleet_arn #=> String
    #   resp.instances[0].instance_id #=> String
    #   resp.instances[0].ip_address #=> String
    #   resp.instances[0].dns_name #=> String
    #   resp.instances[0].operating_system #=> String, one of "WINDOWS_2012", "AMAZON_LINUX", "AMAZON_LINUX_2", "WINDOWS_2016", "AMAZON_LINUX_2023"
    #   resp.instances[0].type #=> String, one of "t2.micro", "t2.small", "t2.medium", "t2.large", "c3.large", "c3.xlarge", "c3.2xlarge", "c3.4xlarge", "c3.8xlarge", "c4.large", "c4.xlarge", "c4.2xlarge", "c4.4xlarge", "c4.8xlarge", "c5.large", "c5.xlarge", "c5.2xlarge", "c5.4xlarge", "c5.9xlarge", "c5.12xlarge", "c5.18xlarge", "c5.24xlarge", "c5a.large", "c5a.xlarge", "c5a.2xlarge", "c5a.4xlarge", "c5a.8xlarge", "c5a.12xlarge", "c5a.16xlarge", "c5a.24xlarge", "r3.large", "r3.xlarge", "r3.2xlarge", "r3.4xlarge", "r3.8xlarge", "r4.large", "r4.xlarge", "r4.2xlarge", "r4.4xlarge", "r4.8xlarge", "r4.16xlarge", "r5.large", "r5.xlarge", "r5.2xlarge", "r5.4xlarge", "r5.8xlarge", "r5.12xlarge", "r5.16xlarge", "r5.24xlarge", "r5a.large", "r5a.xlarge", "r5a.2xlarge", "r5a.4xlarge", "r5a.8xlarge", "r5a.12xlarge", "r5a.16xlarge", "r5a.24xlarge", "m3.medium", "m3.large", "m3.xlarge", "m3.2xlarge", "m4.large", "m4.xlarge", "m4.2xlarge", "m4.4xlarge", "m4.10xlarge", "m5.large", "m5.xlarge", "m5.2xlarge", "m5.4xlarge", "m5.8xlarge", "m5.12xlarge", "m5.16xlarge", "m5.24xlarge", "m5a.large", "m5a.xlarge", "m5a.2xlarge", "m5a.4xlarge", "m5a.8xlarge", "m5a.12xlarge", "m5a.16xlarge", "m5a.24xlarge", "c5d.large", "c5d.xlarge", "c5d.2xlarge", "c5d.4xlarge", "c5d.9xlarge", "c5d.12xlarge", "c5d.18xlarge", "c5d.24xlarge", "c6a.large", "c6a.xlarge", "c6a.2xlarge", "c6a.4xlarge", "c6a.8xlarge", "c6a.12xlarge", "c6a.16xlarge", "c6a.24xlarge", "c6i.large", "c6i.xlarge", "c6i.2xlarge", "c6i.4xlarge", "c6i.8xlarge", "c6i.12xlarge", "c6i.16xlarge", "c6i.24xlarge", "r5d.large", "r5d.xlarge", "r5d.2xlarge", "r5d.4xlarge", "r5d.8xlarge", "r5d.12xlarge", "r5d.16xlarge", "r5d.24xlarge", "m6g.medium", "m6g.large", "m6g.xlarge", "m6g.2xlarge", "m6g.4xlarge", "m6g.8xlarge", "m6g.12xlarge", "m6g.16xlarge", "c6g.medium", "c6g.large", "c6g.xlarge", "c6g.2xlarge", "c6g.4xlarge", "c6g.8xlarge", "c6g.12xlarge", "c6g.16xlarge", "r6g.medium", "r6g.large", "r6g.xlarge", "r6g.2xlarge", "r6g.4xlarge", "r6g.8xlarge", "r6g.12xlarge", "r6g.16xlarge", "c6gn.medium", "c6gn.large", "c6gn.xlarge", "c6gn.2xlarge", "c6gn.4xlarge", "c6gn.8xlarge", "c6gn.12xlarge", "c6gn.16xlarge", "c7g.medium", "c7g.large", "c7g.xlarge", "c7g.2xlarge", "c7g.4xlarge", "c7g.8xlarge", "c7g.12xlarge", "c7g.16xlarge", "r7g.medium", "r7g.large", "r7g.xlarge", "r7g.2xlarge", "r7g.4xlarge", "r7g.8xlarge", "r7g.12xlarge", "r7g.16xlarge", "m7g.medium", "m7g.large", "m7g.xlarge", "m7g.2xlarge", "m7g.4xlarge", "m7g.8xlarge", "m7g.12xlarge", "m7g.16xlarge", "g5g.xlarge", "g5g.2xlarge", "g5g.4xlarge", "g5g.8xlarge", "g5g.16xlarge", "r6i.large", "r6i.xlarge", "r6i.2xlarge", "r6i.4xlarge", "r6i.8xlarge", "r6i.12xlarge", "r6i.16xlarge", "c6gd.medium", "c6gd.large", "c6gd.xlarge", "c6gd.2xlarge", "c6gd.4xlarge", "c6gd.8xlarge", "c6gd.12xlarge", "c6gd.16xlarge", "c6in.large", "c6in.xlarge", "c6in.2xlarge", "c6in.4xlarge", "c6in.8xlarge", "c6in.12xlarge", "c6in.16xlarge", "c7a.medium", "c7a.large", "c7a.xlarge", "c7a.2xlarge", "c7a.4xlarge", "c7a.8xlarge", "c7a.12xlarge", "c7a.16xlarge", "c7gd.medium", "c7gd.large", "c7gd.xlarge", "c7gd.2xlarge", "c7gd.4xlarge", "c7gd.8xlarge", "c7gd.12xlarge", "c7gd.16xlarge", "c7gn.medium", "c7gn.large", "c7gn.xlarge", "c7gn.2xlarge", "c7gn.4xlarge", "c7gn.8xlarge", "c7gn.12xlarge", "c7gn.16xlarge", "c7i.large", "c7i.xlarge", "c7i.2xlarge", "c7i.4xlarge", "c7i.8xlarge", "c7i.12xlarge", "c7i.16xlarge", "m6a.large", "m6a.xlarge", "m6a.2xlarge", "m6a.4xlarge", "m6a.8xlarge", "m6a.12xlarge", "m6a.16xlarge", "m6gd.medium", "m6gd.large", "m6gd.xlarge", "m6gd.2xlarge", "m6gd.4xlarge", "m6gd.8xlarge", "m6gd.12xlarge", "m6gd.16xlarge", "m6i.large", "m6i.xlarge", "m6i.2xlarge", "m6i.4xlarge", "m6i.8xlarge", "m6i.12xlarge", "m6i.16xlarge", "m7a.medium", "m7a.large", "m7a.xlarge", "m7a.2xlarge", "m7a.4xlarge", "m7a.8xlarge", "m7a.12xlarge", "m7a.16xlarge", "m7gd.medium", "m7gd.large", "m7gd.xlarge", "m7gd.2xlarge", "m7gd.4xlarge", "m7gd.8xlarge", "m7gd.12xlarge", "m7gd.16xlarge", "m7i.large", "m7i.xlarge", "m7i.2xlarge", "m7i.4xlarge", "m7i.8xlarge", "m7i.12xlarge", "m7i.16xlarge", "r6gd.medium", "r6gd.large", "r6gd.xlarge", "r6gd.2xlarge", "r6gd.4xlarge", "r6gd.8xlarge", "r6gd.12xlarge", "r6gd.16xlarge", "r7a.medium", "r7a.large", "r7a.xlarge", "r7a.2xlarge", "r7a.4xlarge", "r7a.8xlarge", "r7a.12xlarge", "r7a.16xlarge", "r7gd.medium", "r7gd.large", "r7gd.xlarge", "r7gd.2xlarge", "r7gd.4xlarge", "r7gd.8xlarge", "r7gd.12xlarge", "r7gd.16xlarge", "r7i.large", "r7i.xlarge", "r7i.2xlarge", "r7i.4xlarge", "r7i.8xlarge", "r7i.12xlarge", "r7i.16xlarge", "r7i.24xlarge", "r7i.48xlarge", "c5ad.large", "c5ad.xlarge", "c5ad.2xlarge", "c5ad.4xlarge", "c5ad.8xlarge", "c5ad.12xlarge", "c5ad.16xlarge", "c5ad.24xlarge", "c5n.large", "c5n.xlarge", "c5n.2xlarge", "c5n.4xlarge", "c5n.9xlarge", "c5n.18xlarge", "r5ad.large", "r5ad.xlarge", "r5ad.2xlarge", "r5ad.4xlarge", "r5ad.8xlarge", "r5ad.12xlarge", "r5ad.16xlarge", "r5ad.24xlarge", "c6id.large", "c6id.xlarge", "c6id.2xlarge", "c6id.4xlarge", "c6id.8xlarge", "c6id.12xlarge", "c6id.16xlarge", "c6id.24xlarge", "c6id.32xlarge", "c8g.medium", "c8g.large", "c8g.xlarge", "c8g.2xlarge", "c8g.4xlarge", "c8g.8xlarge", "c8g.12xlarge", "c8g.16xlarge", "c8g.24xlarge", "c8g.48xlarge", "m5ad.large", "m5ad.xlarge", "m5ad.2xlarge", "m5ad.4xlarge", "m5ad.8xlarge", "m5ad.12xlarge", "m5ad.16xlarge", "m5ad.24xlarge", "m5d.large", "m5d.xlarge", "m5d.2xlarge", "m5d.4xlarge", "m5d.8xlarge", "m5d.12xlarge", "m5d.16xlarge", "m5d.24xlarge", "m5dn.large", "m5dn.xlarge", "m5dn.2xlarge", "m5dn.4xlarge", "m5dn.8xlarge", "m5dn.12xlarge", "m5dn.16xlarge", "m5dn.24xlarge", "m5n.large", "m5n.xlarge", "m5n.2xlarge", "m5n.4xlarge", "m5n.8xlarge", "m5n.12xlarge", "m5n.16xlarge", "m5n.24xlarge", "m6id.large", "m6id.xlarge", "m6id.2xlarge", "m6id.4xlarge", "m6id.8xlarge", "m6id.12xlarge", "m6id.16xlarge", "m6id.24xlarge", "m6id.32xlarge", "m6idn.large", "m6idn.xlarge", "m6idn.2xlarge", "m6idn.4xlarge", "m6idn.8xlarge", "m6idn.12xlarge", "m6idn.16xlarge", "m6idn.24xlarge", "m6idn.32xlarge", "m6in.large", "m6in.xlarge", "m6in.2xlarge", "m6in.4xlarge", "m6in.8xlarge", "m6in.12xlarge", "m6in.16xlarge", "m6in.24xlarge", "m6in.32xlarge", "m8g.medium", "m8g.large", "m8g.xlarge", "m8g.2xlarge", "m8g.4xlarge", "m8g.8xlarge", "m8g.12xlarge", "m8g.16xlarge", "m8g.24xlarge", "m8g.48xlarge", "r5dn.large", "r5dn.xlarge", "r5dn.2xlarge", "r5dn.4xlarge", "r5dn.8xlarge", "r5dn.12xlarge", "r5dn.16xlarge", "r5dn.24xlarge", "r5n.large", "r5n.xlarge", "r5n.2xlarge", "r5n.4xlarge", "r5n.8xlarge", "r5n.12xlarge", "r5n.16xlarge", "r5n.24xlarge", "r6a.large", "r6a.xlarge", "r6a.2xlarge", "r6a.4xlarge", "r6a.8xlarge", "r6a.12xlarge", "r6a.16xlarge", "r6a.24xlarge", "r6a.32xlarge", "r6a.48xlarge", "r6id.large", "r6id.xlarge", "r6id.2xlarge", "r6id.4xlarge", "r6id.8xlarge", "r6id.12xlarge", "r6id.16xlarge", "r6id.24xlarge", "r6id.32xlarge", "r6idn.large", "r6idn.xlarge", "r6idn.2xlarge", "r6idn.4xlarge", "r6idn.8xlarge", "r6idn.12xlarge", "r6idn.16xlarge", "r6idn.24xlarge", "r6idn.32xlarge", "r6in.large", "r6in.xlarge", "r6in.2xlarge", "r6in.4xlarge", "r6in.8xlarge", "r6in.12xlarge", "r6in.16xlarge", "r6in.24xlarge", "r6in.32xlarge", "r8g.medium", "r8g.large", "r8g.xlarge", "r8g.2xlarge", "r8g.4xlarge", "r8g.8xlarge", "r8g.12xlarge", "r8g.16xlarge", "r8g.24xlarge", "r8g.48xlarge", "m4.16xlarge", "c6a.32xlarge", "c6a.48xlarge", "c6i.32xlarge", "r6i.24xlarge", "r6i.32xlarge", "c6in.24xlarge", "c6in.32xlarge", "c7a.24xlarge", "c7a.32xlarge", "c7a.48xlarge", "c7i.24xlarge", "c7i.48xlarge", "m6a.24xlarge", "m6a.32xlarge", "m6a.48xlarge", "m6i.24xlarge", "m6i.32xlarge", "m7a.24xlarge", "m7a.32xlarge", "m7a.48xlarge", "m7i.24xlarge", "m7i.48xlarge", "r7a.24xlarge", "r7a.32xlarge", "r7a.48xlarge"
    #   resp.instances[0].status #=> String, one of "PENDING", "ACTIVE", "TERMINATING"
    #   resp.instances[0].creation_time #=> Time
    #   resp.instances[0].location #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeInstances AWS API Documentation
    #
    # @overload describe_instances(params = {})
    # @param [Hash] params ({})
    def describe_instances(params = {}, options = {})
      req = build_request(:describe_instances, params)
      req.send_request(options)
    end

    # Retrieves one or more matchmaking tickets. Use this operation to
    # retrieve ticket information, including--after a successful match is
    # made--connection information for the resulting new game session.
    #
    # To request matchmaking tickets, provide a list of up to 10 ticket IDs.
    # If the request is successful, a ticket object is returned for each
    # requested ID that currently exists.
    #
    # This operation is not designed to be continually called to track
    # matchmaking ticket status. This practice can cause you to exceed your
    # API limit, which results in errors. Instead, as a best practice, set
    # up an Amazon Simple Notification Service to receive notifications, and
    # provide the topic ARN in the matchmaking configuration.
    #
    #
    #
    # **Learn more**
    #
    # [ Add FlexMatch to a game client][1]
    #
    # [ Set Up FlexMatch event notification][2]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-client.html
    # [2]: https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-notification.html
    #
    # @option params [required, Array<String>] :ticket_ids
    #   A unique identifier for a matchmaking ticket. You can include up to 10
    #   ID values.
    #
    # @return [Types::DescribeMatchmakingOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeMatchmakingOutput#ticket_list #ticket_list} => Array&lt;Types::MatchmakingTicket&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_matchmaking({
    #     ticket_ids: ["MatchmakingIdStringModel"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.ticket_list #=> Array
    #   resp.ticket_list[0].ticket_id #=> String
    #   resp.ticket_list[0].configuration_name #=> String
    #   resp.ticket_list[0].configuration_arn #=> String
    #   resp.ticket_list[0].status #=> String, one of "CANCELLED", "COMPLETED", "FAILED", "PLACING", "QUEUED", "REQUIRES_ACCEPTANCE", "SEARCHING", "TIMED_OUT"
    #   resp.ticket_list[0].status_reason #=> String
    #   resp.ticket_list[0].status_message #=> String
    #   resp.ticket_list[0].start_time #=> Time
    #   resp.ticket_list[0].end_time #=> Time
    #   resp.ticket_list[0].players #=> Array
    #   resp.ticket_list[0].players[0].player_id #=> String
    #   resp.ticket_list[0].players[0].player_attributes #=> Hash
    #   resp.ticket_list[0].players[0].player_attributes["NonZeroAndMaxString"] #=> <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #   resp.ticket_list[0].players[0].team #=> String
    #   resp.ticket_list[0].players[0].latency_in_ms #=> Hash
    #   resp.ticket_list[0].players[0].latency_in_ms["NonEmptyString"] #=> Integer
    #   resp.ticket_list[0].game_session_connection_info.game_session_arn #=> String
    #   resp.ticket_list[0].game_session_connection_info.ip_address #=> String
    #   resp.ticket_list[0].game_session_connection_info.dns_name #=> String
    #   resp.ticket_list[0].game_session_connection_info.port #=> Integer
    #   resp.ticket_list[0].game_session_connection_info.matched_player_sessions #=> Array
    #   resp.ticket_list[0].game_session_connection_info.matched_player_sessions[0].player_id #=> String
    #   resp.ticket_list[0].game_session_connection_info.matched_player_sessions[0].player_session_id #=> String
    #   resp.ticket_list[0].estimated_wait_time #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeMatchmaking AWS API Documentation
    #
    # @overload describe_matchmaking(params = {})
    # @param [Hash] params ({})
    def describe_matchmaking(params = {}, options = {})
      req = build_request(:describe_matchmaking, params)
      req.send_request(options)
    end

    # Retrieves the details of FlexMatch matchmaking configurations.
    #
    # This operation offers the following options: (1) retrieve all
    # matchmaking configurations, (2) retrieve configurations for a
    # specified list, or (3) retrieve all configurations that use a
    # specified rule set name. When requesting multiple items, use the
    # pagination parameters to retrieve results as a set of sequential
    # pages.
    #
    # If successful, a configuration is returned for each requested name.
    # When specifying a list of names, only configurations that currently
    # exist are returned.
    #
    # **Learn more**
    #
    # [ Setting up FlexMatch matchmakers][1]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/matchmaker-build.html
    #
    # @option params [Array<String>] :names
    #   A unique identifier for the matchmaking configuration(s) to retrieve.
    #   You can use either the configuration name or ARN value. To request all
    #   existing configurations, leave this parameter empty.
    #
    # @option params [String] :rule_set_name
    #   A unique identifier for the matchmaking rule set. You can use either
    #   the rule set name or ARN value. Use this parameter to retrieve all
    #   matchmaking configurations that use this rule set.
    #
    # @option params [Integer] :limit
    #   The maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages. This
    #   parameter is limited to 10.
    #
    # @option params [String] :next_token
    #   A token that indicates the start of the next sequential page of
    #   results. Use the token that is returned with a previous call to this
    #   operation. To start at the beginning of the result set, do not specify
    #   a value.
    #
    # @return [Types::DescribeMatchmakingConfigurationsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeMatchmakingConfigurationsOutput#configurations #configurations} => Array&lt;Types::MatchmakingConfiguration&gt;
    #   * {Types::DescribeMatchmakingConfigurationsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_matchmaking_configurations({
    #     names: ["MatchmakingConfigurationName"],
    #     rule_set_name: "MatchmakingRuleSetName",
    #     limit: 1,
    #     next_token: "NonZeroAndMaxString",
    #   })
    #
    # @example Response structure
    #
    #   resp.configurations #=> Array
    #   resp.configurations[0].name #=> String
    #   resp.configurations[0].configuration_arn #=> String
    #   resp.configurations[0].description #=> String
    #   resp.configurations[0].game_session_queue_arns #=> Array
    #   resp.configurations[0].game_session_queue_arns[0] #=> String
    #   resp.configurations[0].request_timeout_seconds #=> Integer
    #   resp.configurations[0].acceptance_timeout_seconds #=> Integer
    #   resp.configurations[0].acceptance_required #=> Boolean
    #   resp.configurations[0].rule_set_name #=> String
    #   resp.configurations[0].rule_set_arn #=> String
    #   resp.configurations[0].notification_target #=> String
    #   resp.configurations[0].additional_player_count #=> Integer
    #   resp.configurations[0].custom_event_data #=> String
    #   resp.configurations[0].creation_time #=> Time
    #   resp.configurations[0].game_properties #=> Array
    #   resp.configurations[0].game_properties[0].key #=> String
    #   resp.configurations[0].game_properties[0].value #=> String
    #   resp.configurations[0].game_session_data #=> String
    #   resp.configurations[0].backfill_mode #=> String, one of "AUTOMATIC", "MANUAL"
    #   resp.configurations[0].flex_match_mode #=> String, one of "STANDALONE", "WITH_QUEUE"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeMatchmakingConfigurations AWS API Documentation
    #
    # @overload describe_matchmaking_configurations(params = {})
    # @param [Hash] params ({})
    def describe_matchmaking_configurations(params = {}, options = {})
      req = build_request(:describe_matchmaking_configurations, params)
      req.send_request(options)
    end

    # Retrieves the details for FlexMatch matchmaking rule sets. You can
    # request all existing rule sets for the Region, or provide a list of
    # one or more rule set names. When requesting multiple items, use the
    # pagination parameters to retrieve results as a set of sequential
    # pages. If successful, a rule set is returned for each requested name.
    #
    # **Learn more**
    #
    # * [Build a rule set][1]
    #
    # ^
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-rulesets.html
    #
    # @option params [Array<String>] :names
    #   A list of one or more matchmaking rule set names to retrieve details
    #   for. (Note: The rule set name is different from the optional "name"
    #   field in the rule set body.) You can use either the rule set name or
    #   ARN value.
    #
    # @option params [Integer] :limit
    #   The maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages.
    #
    # @option params [String] :next_token
    #   A token that indicates the start of the next sequential page of
    #   results. Use the token that is returned with a previous call to this
    #   operation. To start at the beginning of the result set, do not specify
    #   a value.
    #
    # @return [Types::DescribeMatchmakingRuleSetsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeMatchmakingRuleSetsOutput#rule_sets #rule_sets} => Array&lt;Types::MatchmakingRuleSet&gt;
    #   * {Types::DescribeMatchmakingRuleSetsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_matchmaking_rule_sets({
    #     names: ["MatchmakingRuleSetName"],
    #     limit: 1,
    #     next_token: "NonZeroAndMaxString",
    #   })
    #
    # @example Response structure
    #
    #   resp.rule_sets #=> Array
    #   resp.rule_sets[0].rule_set_name #=> String
    #   resp.rule_sets[0].rule_set_arn #=> String
    #   resp.rule_sets[0].rule_set_body #=> String
    #   resp.rule_sets[0].creation_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeMatchmakingRuleSets AWS API Documentation
    #
    # @overload describe_matchmaking_rule_sets(params = {})
    # @param [Hash] params ({})
    def describe_matchmaking_rule_sets(params = {}, options = {})
      req = build_request(:describe_matchmaking_rule_sets, params)
      req.send_request(options)
    end

    # Retrieves properties for one or more player sessions.
    #
    # This action can be used in the following ways:
    #
    # * To retrieve a specific player session, provide the player session ID
    #   only.
    #
    # * To retrieve all player sessions in a game session, provide the game
    #   session ID only.
    #
    # * To retrieve all player sessions for a specific player, provide a
    #   player ID only.
    #
    # To request player sessions, specify either a player session ID, game
    # session ID, or player ID. You can filter this request by player
    # session status. If you provide a specific `PlayerSessionId` or
    # `PlayerId`, Amazon GameLift Servers ignores the filter criteria. Use
    # the pagination parameters to retrieve results as a set of sequential
    # pages.
    #
    # If successful, a `PlayerSession` object is returned for each session
    # that matches the request.
    #
    # **Related actions**
    #
    # [All APIs by task][1]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets
    #
    # @option params [String] :game_session_id
    #   A unique identifier for the game session to retrieve player sessions
    #   for.
    #
    # @option params [String] :player_id
    #   A unique identifier for a player to retrieve player sessions for.
    #
    # @option params [String] :player_session_id
    #   A unique identifier for a player session to retrieve.
    #
    # @option params [String] :player_session_status_filter
    #   Player session status to filter results on. Note that when a
    #   PlayerSessionId or PlayerId is provided in a DescribePlayerSessions
    #   request, then the PlayerSessionStatusFilter has no effect on the
    #   response.
    #
    #   Possible player session statuses include the following:
    #
    #   * **RESERVED** -- The player session request has been received, but
    #     the player has not yet connected to the server process and/or been
    #     validated.
    #
    #   * **ACTIVE** -- The player has been validated by the server process
    #     and is currently connected.
    #
    #   * **COMPLETED** -- The player connection has been dropped.
    #
    #   * **TIMEDOUT** -- A player session request was received, but the
    #     player did not connect and/or was not validated within the timeout
    #     limit (60 seconds).
    #
    # @option params [Integer] :limit
    #   The maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages. If a player
    #   session ID is specified, this parameter is ignored.
    #
    # @option params [String] :next_token
    #   A token that indicates the start of the next sequential page of
    #   results. Use the token that is returned with a previous call to this
    #   operation. To start at the beginning of the result set, do not specify
    #   a value. If a player session ID is specified, this parameter is
    #   ignored.
    #
    # @return [Types::DescribePlayerSessionsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribePlayerSessionsOutput#player_sessions #player_sessions} => Array&lt;Types::PlayerSession&gt;
    #   * {Types::DescribePlayerSessionsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_player_sessions({
    #     game_session_id: "ArnStringModel",
    #     player_id: "PlayerId",
    #     player_session_id: "PlayerSessionId",
    #     player_session_status_filter: "NonZeroAndMaxString",
    #     limit: 1,
    #     next_token: "NonZeroAndMaxString",
    #   })
    #
    # @example Response structure
    #
    #   resp.player_sessions #=> Array
    #   resp.player_sessions[0].player_session_id #=> String
    #   resp.player_sessions[0].player_id #=> String
    #   resp.player_sessions[0].game_session_id #=> String
    #   resp.player_sessions[0].fleet_id #=> String
    #   resp.player_sessions[0].fleet_arn #=> String
    #   resp.player_sessions[0].creation_time #=> Time
    #   resp.player_sessions[0].termination_time #=> Time
    #   resp.player_sessions[0].status #=> String, one of "RESERVED", "ACTIVE", "COMPLETED", "TIMEDOUT"
    #   resp.player_sessions[0].ip_address #=> String
    #   resp.player_sessions[0].dns_name #=> String
    #   resp.player_sessions[0].port #=> Integer
    #   resp.player_sessions[0].player_data #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribePlayerSessions AWS API Documentation
    #
    # @overload describe_player_sessions(params = {})
    # @param [Hash] params ({})
    def describe_player_sessions(params = {}, options = {})
      req = build_request(:describe_player_sessions, params)
      req.send_request(options)
    end

    # Retrieves a fleet's runtime configuration settings. The runtime
    # configuration determines which server processes run, and how, on
    # computes in the fleet. For managed EC2 fleets, the runtime
    # configuration describes server processes that run on each fleet
    # instance. can update a fleet's runtime configuration at any time
    # using [UpdateRuntimeConfiguration][1].
    #
    # To get the current runtime configuration for a fleet, provide the
    # fleet ID.
    #
    # If successful, a `RuntimeConfiguration` object is returned for the
    # requested fleet. If the requested fleet has been deleted, the result
    # set is empty.
    #
    # **Learn more**
    #
    # [Setting up Amazon GameLift Servers fleets][2]
    #
    # [Running multiple processes on a fleet][3]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_UpdateRuntimeConfiguration.html
    # [2]: https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html
    # [3]: https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-multiprocess.html
    #
    # @option params [required, String] :fleet_id
    #   A unique identifier for the fleet to get the runtime configuration
    #   for. You can use either the fleet ID or ARN value.
    #
    # @return [Types::DescribeRuntimeConfigurationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeRuntimeConfigurationOutput#runtime_configuration #runtime_configuration} => Types::RuntimeConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_runtime_configuration({
    #     fleet_id: "FleetIdOrArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.runtime_configuration.server_processes #=> Array
    #   resp.runtime_configuration.server_processes[0].launch_path #=> String
    #   resp.runtime_configuration.server_processes[0].parameters #=> String
    #   resp.runtime_configuration.server_processes[0].concurrent_executions #=> Integer
    #   resp.runtime_configuration.max_concurrent_game_session_activations #=> Integer
    #   resp.runtime_configuration.game_session_activation_timeout_seconds #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeRuntimeConfiguration AWS API Documentation
    #
    # @overload describe_runtime_configuration(params = {})
    # @param [Hash] params ({})
    def describe_runtime_configuration(params = {}, options = {})
      req = build_request(:describe_runtime_configuration, params)
      req.send_request(options)
    end

    # Retrieves all scaling policies applied to a fleet.
    #
    # To get a fleet's scaling policies, specify the fleet ID. You can
    # filter this request by policy status, such as to retrieve only active
    # scaling policies. Use the pagination parameters to retrieve results as
    # a set of sequential pages. If successful, set of `ScalingPolicy`
    # objects is returned for the fleet.
    #
    # A fleet may have all of its scaling policies suspended. This operation
    # does not affect the status of the scaling policies, which remains
    # ACTIVE.
    #
    # @option params [required, String] :fleet_id
    #   A unique identifier for the fleet for which to retrieve scaling
    #   policies. You can use either the fleet ID or ARN value.
    #
    # @option params [String] :status_filter
    #   Scaling policy status to filter results on. A scaling policy is only
    #   in force when in an `ACTIVE` status.
    #
    #   * **ACTIVE** -- The scaling policy is currently in force.
    #
    #   * **UPDATEREQUESTED** -- A request to update the scaling policy has
    #     been received.
    #
    #   * **UPDATING** -- A change is being made to the scaling policy.
    #
    #   * **DELETEREQUESTED** -- A request to delete the scaling policy has
    #     been received.
    #
    #   * **DELETING** -- The scaling policy is being deleted.
    #
    #   * **DELETED** -- The scaling policy has been deleted.
    #
    #   * **ERROR** -- An error occurred in creating the policy. It should be
    #     removed and recreated.
    #
    # @option params [Integer] :limit
    #   The maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages.
    #
    # @option params [String] :next_token
    #   A token that indicates the start of the next sequential page of
    #   results. Use the token that is returned with a previous call to this
    #   operation. To start at the beginning of the result set, do not specify
    #   a value.
    #
    # @option params [String] :location
    #   The fleet location. If you don't specify this value, the response
    #   contains the scaling policies of every location in the fleet.
    #
    # @return [Types::DescribeScalingPoliciesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeScalingPoliciesOutput#scaling_policies #scaling_policies} => Array&lt;Types::ScalingPolicy&gt;
    #   * {Types::DescribeScalingPoliciesOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_scaling_policies({
    #     fleet_id: "FleetIdOrArn", # required
    #     status_filter: "ACTIVE", # accepts ACTIVE, UPDATE_REQUESTED, UPDATING, DELETE_REQUESTED, DELETING, DELETED, ERROR
    #     limit: 1,
    #     next_token: "NonZeroAndMaxString",
    #     location: "LocationStringModel",
    #   })
    #
    # @example Response structure
    #
    #   resp.scaling_policies #=> Array
    #   resp.scaling_policies[0].fleet_id #=> String
    #   resp.scaling_policies[0].fleet_arn #=> String
    #   resp.scaling_policies[0].name #=> String
    #   resp.scaling_policies[0].status #=> String, one of "ACTIVE", "UPDATE_REQUESTED", "UPDATING", "DELETE_REQUESTED", "DELETING", "DELETED", "ERROR"
    #   resp.scaling_policies[0].scaling_adjustment #=> Integer
    #   resp.scaling_policies[0].scaling_adjustment_type #=> String, one of "ChangeInCapacity", "ExactCapacity", "PercentChangeInCapacity"
    #   resp.scaling_policies[0].comparison_operator #=> String, one of "GreaterThanOrEqualToThreshold", "GreaterThanThreshold", "LessThanThreshold", "LessThanOrEqualToThreshold"
    #   resp.scaling_policies[0].threshold #=> Float
    #   resp.scaling_policies[0].evaluation_periods #=> Integer
    #   resp.scaling_policies[0].metric_name #=> String, one of "ActivatingGameSessions", "ActiveGameSessions", "ActiveInstances", "AvailableGameSessions", "AvailablePlayerSessions", "CurrentPlayerSessions", "IdleInstances", "PercentAvailableGameSessions", "PercentIdleInstances", "QueueDepth", "WaitTime", "ConcurrentActivatableGameSessions"
    #   resp.scaling_policies[0].policy_type #=> String, one of "RuleBased", "TargetBased"
    #   resp.scaling_policies[0].target_configuration.target_value #=> Float
    #   resp.scaling_policies[0].update_status #=> String, one of "PENDING_UPDATE"
    #   resp.scaling_policies[0].location #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeScalingPolicies AWS API Documentation
    #
    # @overload describe_scaling_policies(params = {})
    # @param [Hash] params ({})
    def describe_scaling_policies(params = {}, options = {})
      req = build_request(:describe_scaling_policies, params)
      req.send_request(options)
    end

    # Retrieves properties for a Realtime script.
    #
    # To request a script record, specify the script ID. If successful, an
    # object containing the script properties is returned.
    #
    # **Learn more**
    #
    # [Amazon GameLift Servers Amazon GameLift Servers Realtime][1]
    #
    # **Related actions**
    #
    # [All APIs by task][2]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/realtime-intro.html
    # [2]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets
    #
    # @option params [required, String] :script_id
    #   A unique identifier for the Realtime script to retrieve properties
    #   for. You can use either the script ID or ARN value.
    #
    # @return [Types::DescribeScriptOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeScriptOutput#script #script} => Types::Script
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_script({
    #     script_id: "ScriptIdOrArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.script.script_id #=> String
    #   resp.script.script_arn #=> String
    #   resp.script.name #=> String
    #   resp.script.version #=> String
    #   resp.script.size_on_disk #=> Integer
    #   resp.script.creation_time #=> Time
    #   resp.script.storage_location.bucket #=> String
    #   resp.script.storage_location.key #=> String
    #   resp.script.storage_location.role_arn #=> String
    #   resp.script.storage_location.object_version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeScript AWS API Documentation
    #
    # @overload describe_script(params = {})
    # @param [Hash] params ({})
    def describe_script(params = {}, options = {})
      req = build_request(:describe_script, params)
      req.send_request(options)
    end

    # Retrieves valid VPC peering authorizations that are pending for the
    # Amazon Web Services account. This operation returns all VPC peering
    # authorizations and requests for peering. This includes those initiated
    # and received by this account.
    #
    # **Related actions**
    #
    # [All APIs by task][1]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets
    #
    # @return [Types::DescribeVpcPeeringAuthorizationsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeVpcPeeringAuthorizationsOutput#vpc_peering_authorizations #vpc_peering_authorizations} => Array&lt;Types::VpcPeeringAuthorization&gt;
    #
    # @example Response structure
    #
    #   resp.vpc_peering_authorizations #=> Array
    #   resp.vpc_peering_authorizations[0].game_lift_aws_account_id #=> String
    #   resp.vpc_peering_authorizations[0].peer_vpc_aws_account_id #=> String
    #   resp.vpc_peering_authorizations[0].peer_vpc_id #=> String
    #   resp.vpc_peering_authorizations[0].creation_time #=> Time
    #   resp.vpc_peering_authorizations[0].expiration_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeVpcPeeringAuthorizations AWS API Documentation
    #
    # @overload describe_vpc_peering_authorizations(params = {})
    # @param [Hash] params ({})
    def describe_vpc_peering_authorizations(params = {}, options = {})
      req = build_request(:describe_vpc_peering_authorizations, params)
      req.send_request(options)
    end

    # Retrieves information on VPC peering connections. Use this operation
    # to get peering information for all fleets or for one specific fleet
    # ID.
    #
    # To retrieve connection information, call this operation from the
    # Amazon Web Services account that is used to manage the Amazon GameLift
    # Servers fleets. Specify a fleet ID or leave the parameter empty to
    # retrieve all connection records. If successful, the retrieved
    # information includes both active and pending connections. Active
    # connections identify the IpV4 CIDR block that the VPC uses to connect.
    #
    # **Related actions**
    #
    # [All APIs by task][1]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets
    #
    # @option params [String] :fleet_id
    #   A unique identifier for the fleet. You can use either the fleet ID or
    #   ARN value.
    #
    # @return [Types::DescribeVpcPeeringConnectionsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeVpcPeeringConnectionsOutput#vpc_peering_connections #vpc_peering_connections} => Array&lt;Types::VpcPeeringConnection&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_vpc_peering_connections({
    #     fleet_id: "FleetId",
    #   })
    #
    # @example Response structure
    #
    #   resp.vpc_peering_connections #=> Array
    #   resp.vpc_peering_connections[0].fleet_id #=> String
    #   resp.vpc_peering_connections[0].fleet_arn #=> String
    #   resp.vpc_peering_connections[0].ip_v4_cidr_block #=> String
    #   resp.vpc_peering_connections[0].vpc_peering_connection_id #=> String
    #   resp.vpc_peering_connections[0].status.code #=> String
    #   resp.vpc_peering_connections[0].status.message #=> String
    #   resp.vpc_peering_connections[0].peer_vpc_id #=> String
    #   resp.vpc_peering_connections[0].game_lift_vpc_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/DescribeVpcPeeringConnections AWS API Documentation
    #
    # @overload describe_vpc_peering_connections(params = {})
    # @param [Hash] params ({})
    def describe_vpc_peering_connections(params = {}, options = {})
      req = build_request(:describe_vpc_peering_connections, params)
      req.send_request(options)
    end

    # Requests authorization to remotely connect to a hosting resource in a
    # Amazon GameLift Servers managed fleet. This operation is not used with
    # Amazon GameLift Servers Anywhere fleets.
    #
    # **Request options**
    #
    # Provide the fleet ID and compute name. The compute name varies
    # depending on the type of fleet.
    #
    # * For a compute in a managed EC2 fleet, provide an instance ID. Each
    #   instance in the fleet is a compute.
    #
    # * For a compute in a managed container fleet, provide a compute name.
    #   In a container fleet, each game server container group on a fleet
    #   instance is assigned a compute name.
    #
    # **Results**
    #
    # If successful, this operation returns a set of temporary Amazon Web
    # Services credentials, including a two-part access key and a session
    # token.
    #
    # * With a managed EC2 fleet (where compute type is `EC2`), use these
    #   credentials with Amazon EC2 Systems Manager (SSM) to start a session
    #   with the compute. For more details, see [ Starting a session
    #   (CLI)][1] in the *Amazon EC2 Systems Manager User Guide*.
    #
    # ^
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/systems-manager/latest/userguide/session-manager-working-with-sessions-start.html#sessions-start-cli
    #
    # @option params [required, String] :fleet_id
    #   A unique identifier for the fleet that holds the compute resource that
    #   you want to connect to. You can use either the fleet ID or ARN value.
    #
    # @option params [required, String] :compute_name
    #   A unique identifier for the compute resource that you want to connect
    #   to. For an EC2 fleet, use an instance ID. For a managed container
    #   fleet, use a compute name. You can retrieve a fleet's compute names
    #   by calling [ListCompute][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_ListCompute.html
    #
    # @return [Types::GetComputeAccessOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetComputeAccessOutput#fleet_id #fleet_id} => String
    #   * {Types::GetComputeAccessOutput#fleet_arn #fleet_arn} => String
    #   * {Types::GetComputeAccessOutput#compute_name #compute_name} => String
    #   * {Types::GetComputeAccessOutput#compute_arn #compute_arn} => String
    #   * {Types::GetComputeAccessOutput#credentials #credentials} => Types::AwsCredentials
    #   * {Types::GetComputeAccessOutput#target #target} => String
    #   * {Types::GetComputeAccessOutput#container_identifiers #container_identifiers} => Array&lt;Types::ContainerIdentifier&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_compute_access({
    #     fleet_id: "FleetIdOrArn", # required
    #     compute_name: "ComputeNameOrArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.fleet_id #=> String
    #   resp.fleet_arn #=> String
    #   resp.compute_name #=> String
    #   resp.compute_arn #=> String
    #   resp.credentials.access_key_id #=> String
    #   resp.credentials.secret_access_key #=> String
    #   resp.credentials.session_token #=> String
    #   resp.target #=> String
    #   resp.container_identifiers #=> Array
    #   resp.container_identifiers[0].container_name #=> String
    #   resp.container_identifiers[0].container_runtime_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/GetComputeAccess AWS API Documentation
    #
    # @overload get_compute_access(params = {})
    # @param [Hash] params ({})
    def get_compute_access(params = {}, options = {})
      req = build_request(:get_compute_access, params)
      req.send_request(options)
    end

    # Requests an authentication token from Amazon GameLift Servers for a
    # compute resource in an Amazon GameLift Servers fleet. Game servers
    # that are running on the compute use this token to communicate with the
    # Amazon GameLift Servers service, such as when calling the Amazon
    # GameLift Servers server SDK action `InitSDK()`. Authentication tokens
    # are valid for a limited time span, so you need to request a fresh
    # token before the current token expires.
    #
    # **Request options**
    #
    # * For managed EC2 fleets (compute type `EC2`), auth token retrieval
    #   and refresh is handled automatically. All game servers that are
    #   running on all fleet instances have access to a valid auth token.
    #
    # * For Anywhere fleets (compute type `ANYWHERE`), if you're using the
    #   Amazon GameLift Servers Agent, auth token retrieval and refresh is
    #   handled automatically for any compute where the Agent is running. If
    #   you're not using the Agent, create a mechanism to retrieve and
    #   refresh auth tokens for computes that are running game server
    #   processes.
    #
    # **Learn more**
    #
    # * [Create an Anywhere fleet][1]
    #
    # * [Test your integration][2]
    #
    # * [Server SDK reference guides][3] (for version 5.x)
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-creating-anywhere.html
    # [2]: https://docs.aws.amazon.com/gamelift/latest/developerguide/integration-testing.html
    # [3]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-serversdk.html
    #
    # @option params [required, String] :fleet_id
    #   A unique identifier for the fleet that the compute is registered to.
    #
    # @option params [required, String] :compute_name
    #   The name of the compute resource you are requesting the authentication
    #   token for. For an Anywhere fleet compute, use the registered compute
    #   name. For an EC2 fleet instance, use the instance ID.
    #
    # @return [Types::GetComputeAuthTokenOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetComputeAuthTokenOutput#fleet_id #fleet_id} => String
    #   * {Types::GetComputeAuthTokenOutput#fleet_arn #fleet_arn} => String
    #   * {Types::GetComputeAuthTokenOutput#compute_name #compute_name} => String
    #   * {Types::GetComputeAuthTokenOutput#compute_arn #compute_arn} => String
    #   * {Types::GetComputeAuthTokenOutput#auth_token #auth_token} => String
    #   * {Types::GetComputeAuthTokenOutput#expiration_timestamp #expiration_timestamp} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_compute_auth_token({
    #     fleet_id: "FleetIdOrArn", # required
    #     compute_name: "ComputeNameOrArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.fleet_id #=> String
    #   resp.fleet_arn #=> String
    #   resp.compute_name #=> String
    #   resp.compute_arn #=> String
    #   resp.auth_token #=> String
    #   resp.expiration_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/GetComputeAuthToken AWS API Documentation
    #
    # @overload get_compute_auth_token(params = {})
    # @param [Hash] params ({})
    def get_compute_auth_token(params = {}, options = {})
      req = build_request(:get_compute_auth_token, params)
      req.send_request(options)
    end

    # Retrieves the location of stored game session logs for a specified
    # game session on Amazon GameLift Servers managed fleets. When a game
    # session is terminated, Amazon GameLift Servers automatically stores
    # the logs in Amazon S3 and retains them for 14 days. Use this URL to
    # download the logs.
    #
    # <note markdown="1"> See the [Amazon Web Services Service Limits][1] page for maximum log
    # file sizes. Log files that exceed this limit are not saved.
    #
    #  </note>
    #
    # [All APIs by task][2]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html#limits_gamelift
    # [2]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets
    #
    # @option params [required, String] :game_session_id
    #   A unique identifier for the game session to get logs for.
    #
    # @return [Types::GetGameSessionLogUrlOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetGameSessionLogUrlOutput#pre_signed_url #pre_signed_url} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_game_session_log_url({
    #     game_session_id: "ArnStringModel", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.pre_signed_url #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/GetGameSessionLogUrl AWS API Documentation
    #
    # @overload get_game_session_log_url(params = {})
    # @param [Hash] params ({})
    def get_game_session_log_url(params = {}, options = {})
      req = build_request(:get_game_session_log_url, params)
      req.send_request(options)
    end

    # Requests authorization to remotely connect to an instance in an Amazon
    # GameLift Servers managed fleet. Use this operation to connect to
    # instances with game servers that use Amazon GameLift Servers server
    # SDK 4.x or earlier. To connect to instances with game servers that use
    # server SDK 5.x or later, call
    # [https://docs.aws.amazon.com/gamelift/latest/apireference/API\_GetComputeAccess][1].
    #
    # To request access to an instance, specify IDs for the instance and the
    # fleet it belongs to. You can retrieve instance IDs for a fleet by
    # calling [DescribeInstances][2] with the fleet ID.
    #
    # If successful, this operation returns an IP address and credentials.
    # The returned credentials match the operating system of the instance,
    # as follows:
    #
    # * For a Windows instance: returns a user name and secret (password)
    #   for use with a Windows Remote Desktop client.
    #
    # * For a Linux instance: returns a user name and secret (RSA private
    #   key) for use with an SSH client. You must save the secret to a
    #   `.pem` file. If you're using the CLI, see the example [ Get
    #   credentials for a Linux instance][3] for tips on automatically
    #   saving the secret to a `.pem` file.
    #
    # **Learn more**
    #
    # [Remotely connect to fleet instances][4]
    #
    # [Debug fleet issues][5]
    #
    # **Related actions**
    #
    # [All APIs by task][6]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_GetComputeAccess
    # [2]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_DescribeInstances.html
    # [3]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_GetInstanceAccess.html#API_GetInstanceAccess_Examples
    # [4]: https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-remote-access.html
    # [5]: https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-creating-debug.html
    # [6]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets
    #
    # @option params [required, String] :fleet_id
    #   A unique identifier for the fleet that contains the instance you want
    #   to access. You can request access to instances in EC2 fleets with the
    #   following statuses: `ACTIVATING`, `ACTIVE`, or `ERROR`. Use either a
    #   fleet ID or an ARN value.
    #
    #   <note markdown="1"> You can access fleets in `ERROR` status for a short period of time
    #   before Amazon GameLift Servers deletes them.
    #
    #    </note>
    #
    # @option params [required, String] :instance_id
    #   A unique identifier for the instance you want to access. You can
    #   access an instance in any status.
    #
    # @return [Types::GetInstanceAccessOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetInstanceAccessOutput#instance_access #instance_access} => Types::InstanceAccess
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_instance_access({
    #     fleet_id: "FleetIdOrArn", # required
    #     instance_id: "InstanceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.instance_access.fleet_id #=> String
    #   resp.instance_access.instance_id #=> String
    #   resp.instance_access.ip_address #=> String
    #   resp.instance_access.operating_system #=> String, one of "WINDOWS_2012", "AMAZON_LINUX", "AMAZON_LINUX_2", "WINDOWS_2016", "AMAZON_LINUX_2023"
    #   resp.instance_access.credentials.user_name #=> String
    #   resp.instance_access.credentials.secret #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/GetInstanceAccess AWS API Documentation
    #
    # @overload get_instance_access(params = {})
    # @param [Hash] params ({})
    def get_instance_access(params = {}, options = {})
      req = build_request(:get_instance_access, params)
      req.send_request(options)
    end

    # Retrieves all aliases for this Amazon Web Services account. You can
    # filter the result set by alias name and/or routing strategy type. Use
    # the pagination parameters to retrieve results in sequential pages.
    #
    # <note markdown="1"> Returned aliases are not listed in any particular order.
    #
    #  </note>
    #
    # **Related actions**
    #
    # [All APIs by task][1]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets
    #
    # @option params [String] :routing_strategy_type
    #   The routing type to filter results on. Use this parameter to retrieve
    #   only aliases with a certain routing type. To retrieve all aliases,
    #   leave this parameter empty.
    #
    #   Possible routing types include the following:
    #
    #   * **SIMPLE** -- The alias resolves to one specific fleet. Use this
    #     type when routing to active fleets.
    #
    #   * **TERMINAL** -- The alias does not resolve to a fleet but instead
    #     can be used to display a message to the user. A terminal alias
    #     throws a TerminalRoutingStrategyException with the
    #     [RoutingStrategy][1] message embedded.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_RoutingStrategy.html
    #
    # @option params [String] :name
    #   A descriptive label that is associated with an alias. Alias names do
    #   not need to be unique.
    #
    # @option params [Integer] :limit
    #   The maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages.
    #
    # @option params [String] :next_token
    #   A token that indicates the start of the next sequential page of
    #   results. Use the token that is returned with a previous call to this
    #   operation. To start at the beginning of the result set, do not specify
    #   a value.
    #
    # @return [Types::ListAliasesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAliasesOutput#aliases #aliases} => Array&lt;Types::Alias&gt;
    #   * {Types::ListAliasesOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_aliases({
    #     routing_strategy_type: "SIMPLE", # accepts SIMPLE, TERMINAL
    #     name: "NonEmptyString",
    #     limit: 1,
    #     next_token: "NonEmptyString",
    #   })
    #
    # @example Response structure
    #
    #   resp.aliases #=> Array
    #   resp.aliases[0].alias_id #=> String
    #   resp.aliases[0].name #=> String
    #   resp.aliases[0].alias_arn #=> String
    #   resp.aliases[0].description #=> String
    #   resp.aliases[0].routing_strategy.type #=> String, one of "SIMPLE", "TERMINAL"
    #   resp.aliases[0].routing_strategy.fleet_id #=> String
    #   resp.aliases[0].routing_strategy.message #=> String
    #   resp.aliases[0].creation_time #=> Time
    #   resp.aliases[0].last_updated_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/ListAliases AWS API Documentation
    #
    # @overload list_aliases(params = {})
    # @param [Hash] params ({})
    def list_aliases(params = {}, options = {})
      req = build_request(:list_aliases, params)
      req.send_request(options)
    end

    # Retrieves build resources for all builds associated with the Amazon
    # Web Services account in use. You can limit results to builds that are
    # in a specific status by using the `Status` parameter. Use the
    # pagination parameters to retrieve results in a set of sequential
    # pages.
    #
    # <note markdown="1"> Build resources are not listed in any particular order.
    #
    #  </note>
    #
    # **Learn more**
    #
    # [ Upload a Custom Server Build][1]
    #
    # [All APIs by task][2]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-build-intro.html
    # [2]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets
    #
    # @option params [String] :status
    #   Build status to filter results by. To retrieve all builds, leave this
    #   parameter empty.
    #
    #   Possible build statuses include the following:
    #
    #   * **INITIALIZED** -- A new build has been defined, but no files have
    #     been uploaded. You cannot create fleets for builds that are in this
    #     status. When a build is successfully created, the build status is
    #     set to this value.
    #
    #   * **READY** -- The game build has been successfully uploaded. You can
    #     now create new fleets for this build.
    #
    #   * **FAILED** -- The game build upload failed. You cannot create new
    #     fleets for this build.
    #
    # @option params [Integer] :limit
    #   The maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages.
    #
    # @option params [String] :next_token
    #   A token that indicates the start of the next sequential page of
    #   results. Use the token that is returned with a previous call to this
    #   operation. To start at the beginning of the result set, do not specify
    #   a value.
    #
    # @return [Types::ListBuildsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListBuildsOutput#builds #builds} => Array&lt;Types::Build&gt;
    #   * {Types::ListBuildsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_builds({
    #     status: "INITIALIZED", # accepts INITIALIZED, READY, FAILED
    #     limit: 1,
    #     next_token: "NonEmptyString",
    #   })
    #
    # @example Response structure
    #
    #   resp.builds #=> Array
    #   resp.builds[0].build_id #=> String
    #   resp.builds[0].build_arn #=> String
    #   resp.builds[0].name #=> String
    #   resp.builds[0].version #=> String
    #   resp.builds[0].status #=> String, one of "INITIALIZED", "READY", "FAILED"
    #   resp.builds[0].size_on_disk #=> Integer
    #   resp.builds[0].operating_system #=> String, one of "WINDOWS_2012", "AMAZON_LINUX", "AMAZON_LINUX_2", "WINDOWS_2016", "AMAZON_LINUX_2023"
    #   resp.builds[0].creation_time #=> Time
    #   resp.builds[0].server_sdk_version #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/ListBuilds AWS API Documentation
    #
    # @overload list_builds(params = {})
    # @param [Hash] params ({})
    def list_builds(params = {}, options = {})
      req = build_request(:list_builds, params)
      req.send_request(options)
    end

    # Retrieves information on the compute resources in an Amazon GameLift
    # Servers fleet. Use the pagination parameters to retrieve results in a
    # set of sequential pages.
    #
    # **Request options**
    #
    # * Retrieve a list of all computes in a fleet. Specify a fleet ID.
    #
    # * Retrieve a list of all computes in a specific fleet location.
    #   Specify a fleet ID and location.
    #
    # **Results**
    #
    # If successful, this operation returns information on a set of
    # computes. Depending on the type of fleet, the result includes the
    # following information:
    #
    # * For a managed EC2 fleet (compute type `EC2`), this operation returns
    #   information about the EC2 instance. Compute names are EC2 instance
    #   IDs.
    #
    # * For an Anywhere fleet (compute type `ANYWHERE`), this operation
    #   returns compute names and details from when the compute was
    #   registered with `RegisterCompute`. This includes
    #   `GameLiftServiceSdkEndpoint` or `GameLiftAgentEndpoint`.
    #
    # @option params [required, String] :fleet_id
    #   A unique identifier for the fleet to retrieve compute resources for.
    #
    # @option params [String] :location
    #   The name of a location to retrieve compute resources for. For an
    #   Amazon GameLift Servers Anywhere fleet, use a custom location. For a
    #   managed fleet, provide a Amazon Web Services Region or Local Zone code
    #   (for example: `us-west-2` or `us-west-2-lax-1`).
    #
    # @option params [String] :container_group_definition_name
    #   For computes in a managed container fleet, the name of the deployed
    #   container group definition.
    #
    # @option params [String] :compute_status
    #   The status of computes in a managed container fleet, based on the
    #   success of the latest update deployment.
    #
    #   * `ACTIVE` -- The compute is deployed with the correct container
    #     definitions. It is ready to process game servers and host game
    #     sessions.
    #
    #   * `IMPAIRED` -- An update deployment to the compute failed, and the
    #     compute is deployed with incorrect container definitions.
    #
    # @option params [Integer] :limit
    #   The maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages.
    #
    # @option params [String] :next_token
    #   A token that indicates the start of the next sequential page of
    #   results. Use the token that is returned with a previous call to this
    #   operation. To start at the beginning of the result set, do not specify
    #   a value.
    #
    # @return [Types::ListComputeOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListComputeOutput#compute_list #compute_list} => Array&lt;Types::Compute&gt;
    #   * {Types::ListComputeOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_compute({
    #     fleet_id: "FleetIdOrArn", # required
    #     location: "LocationStringModel",
    #     container_group_definition_name: "ContainerGroupDefinitionNameOrArn",
    #     compute_status: "ACTIVE", # accepts ACTIVE, IMPAIRED
    #     limit: 1,
    #     next_token: "NonZeroAndMaxString",
    #   })
    #
    # @example Response structure
    #
    #   resp.compute_list #=> Array
    #   resp.compute_list[0].fleet_id #=> String
    #   resp.compute_list[0].fleet_arn #=> String
    #   resp.compute_list[0].compute_name #=> String
    #   resp.compute_list[0].compute_arn #=> String
    #   resp.compute_list[0].ip_address #=> String
    #   resp.compute_list[0].dns_name #=> String
    #   resp.compute_list[0].compute_status #=> String, one of "PENDING", "ACTIVE", "TERMINATING", "IMPAIRED"
    #   resp.compute_list[0].location #=> String
    #   resp.compute_list[0].creation_time #=> Time
    #   resp.compute_list[0].operating_system #=> String, one of "WINDOWS_2012", "AMAZON_LINUX", "AMAZON_LINUX_2", "WINDOWS_2016", "AMAZON_LINUX_2023"
    #   resp.compute_list[0].type #=> String, one of "t2.micro", "t2.small", "t2.medium", "t2.large", "c3.large", "c3.xlarge", "c3.2xlarge", "c3.4xlarge", "c3.8xlarge", "c4.large", "c4.xlarge", "c4.2xlarge", "c4.4xlarge", "c4.8xlarge", "c5.large", "c5.xlarge", "c5.2xlarge", "c5.4xlarge", "c5.9xlarge", "c5.12xlarge", "c5.18xlarge", "c5.24xlarge", "c5a.large", "c5a.xlarge", "c5a.2xlarge", "c5a.4xlarge", "c5a.8xlarge", "c5a.12xlarge", "c5a.16xlarge", "c5a.24xlarge", "r3.large", "r3.xlarge", "r3.2xlarge", "r3.4xlarge", "r3.8xlarge", "r4.large", "r4.xlarge", "r4.2xlarge", "r4.4xlarge", "r4.8xlarge", "r4.16xlarge", "r5.large", "r5.xlarge", "r5.2xlarge", "r5.4xlarge", "r5.8xlarge", "r5.12xlarge", "r5.16xlarge", "r5.24xlarge", "r5a.large", "r5a.xlarge", "r5a.2xlarge", "r5a.4xlarge", "r5a.8xlarge", "r5a.12xlarge", "r5a.16xlarge", "r5a.24xlarge", "m3.medium", "m3.large", "m3.xlarge", "m3.2xlarge", "m4.large", "m4.xlarge", "m4.2xlarge", "m4.4xlarge", "m4.10xlarge", "m5.large", "m5.xlarge", "m5.2xlarge", "m5.4xlarge", "m5.8xlarge", "m5.12xlarge", "m5.16xlarge", "m5.24xlarge", "m5a.large", "m5a.xlarge", "m5a.2xlarge", "m5a.4xlarge", "m5a.8xlarge", "m5a.12xlarge", "m5a.16xlarge", "m5a.24xlarge", "c5d.large", "c5d.xlarge", "c5d.2xlarge", "c5d.4xlarge", "c5d.9xlarge", "c5d.12xlarge", "c5d.18xlarge", "c5d.24xlarge", "c6a.large", "c6a.xlarge", "c6a.2xlarge", "c6a.4xlarge", "c6a.8xlarge", "c6a.12xlarge", "c6a.16xlarge", "c6a.24xlarge", "c6i.large", "c6i.xlarge", "c6i.2xlarge", "c6i.4xlarge", "c6i.8xlarge", "c6i.12xlarge", "c6i.16xlarge", "c6i.24xlarge", "r5d.large", "r5d.xlarge", "r5d.2xlarge", "r5d.4xlarge", "r5d.8xlarge", "r5d.12xlarge", "r5d.16xlarge", "r5d.24xlarge", "m6g.medium", "m6g.large", "m6g.xlarge", "m6g.2xlarge", "m6g.4xlarge", "m6g.8xlarge", "m6g.12xlarge", "m6g.16xlarge", "c6g.medium", "c6g.large", "c6g.xlarge", "c6g.2xlarge", "c6g.4xlarge", "c6g.8xlarge", "c6g.12xlarge", "c6g.16xlarge", "r6g.medium", "r6g.large", "r6g.xlarge", "r6g.2xlarge", "r6g.4xlarge", "r6g.8xlarge", "r6g.12xlarge", "r6g.16xlarge", "c6gn.medium", "c6gn.large", "c6gn.xlarge", "c6gn.2xlarge", "c6gn.4xlarge", "c6gn.8xlarge", "c6gn.12xlarge", "c6gn.16xlarge", "c7g.medium", "c7g.large", "c7g.xlarge", "c7g.2xlarge", "c7g.4xlarge", "c7g.8xlarge", "c7g.12xlarge", "c7g.16xlarge", "r7g.medium", "r7g.large", "r7g.xlarge", "r7g.2xlarge", "r7g.4xlarge", "r7g.8xlarge", "r7g.12xlarge", "r7g.16xlarge", "m7g.medium", "m7g.large", "m7g.xlarge", "m7g.2xlarge", "m7g.4xlarge", "m7g.8xlarge", "m7g.12xlarge", "m7g.16xlarge", "g5g.xlarge", "g5g.2xlarge", "g5g.4xlarge", "g5g.8xlarge", "g5g.16xlarge", "r6i.large", "r6i.xlarge", "r6i.2xlarge", "r6i.4xlarge", "r6i.8xlarge", "r6i.12xlarge", "r6i.16xlarge", "c6gd.medium", "c6gd.large", "c6gd.xlarge", "c6gd.2xlarge", "c6gd.4xlarge", "c6gd.8xlarge", "c6gd.12xlarge", "c6gd.16xlarge", "c6in.large", "c6in.xlarge", "c6in.2xlarge", "c6in.4xlarge", "c6in.8xlarge", "c6in.12xlarge", "c6in.16xlarge", "c7a.medium", "c7a.large", "c7a.xlarge", "c7a.2xlarge", "c7a.4xlarge", "c7a.8xlarge", "c7a.12xlarge", "c7a.16xlarge", "c7gd.medium", "c7gd.large", "c7gd.xlarge", "c7gd.2xlarge", "c7gd.4xlarge", "c7gd.8xlarge", "c7gd.12xlarge", "c7gd.16xlarge", "c7gn.medium", "c7gn.large", "c7gn.xlarge", "c7gn.2xlarge", "c7gn.4xlarge", "c7gn.8xlarge", "c7gn.12xlarge", "c7gn.16xlarge", "c7i.large", "c7i.xlarge", "c7i.2xlarge", "c7i.4xlarge", "c7i.8xlarge", "c7i.12xlarge", "c7i.16xlarge", "m6a.large", "m6a.xlarge", "m6a.2xlarge", "m6a.4xlarge", "m6a.8xlarge", "m6a.12xlarge", "m6a.16xlarge", "m6gd.medium", "m6gd.large", "m6gd.xlarge", "m6gd.2xlarge", "m6gd.4xlarge", "m6gd.8xlarge", "m6gd.12xlarge", "m6gd.16xlarge", "m6i.large", "m6i.xlarge", "m6i.2xlarge", "m6i.4xlarge", "m6i.8xlarge", "m6i.12xlarge", "m6i.16xlarge", "m7a.medium", "m7a.large", "m7a.xlarge", "m7a.2xlarge", "m7a.4xlarge", "m7a.8xlarge", "m7a.12xlarge", "m7a.16xlarge", "m7gd.medium", "m7gd.large", "m7gd.xlarge", "m7gd.2xlarge", "m7gd.4xlarge", "m7gd.8xlarge", "m7gd.12xlarge", "m7gd.16xlarge", "m7i.large", "m7i.xlarge", "m7i.2xlarge", "m7i.4xlarge", "m7i.8xlarge", "m7i.12xlarge", "m7i.16xlarge", "r6gd.medium", "r6gd.large", "r6gd.xlarge", "r6gd.2xlarge", "r6gd.4xlarge", "r6gd.8xlarge", "r6gd.12xlarge", "r6gd.16xlarge", "r7a.medium", "r7a.large", "r7a.xlarge", "r7a.2xlarge", "r7a.4xlarge", "r7a.8xlarge", "r7a.12xlarge", "r7a.16xlarge", "r7gd.medium", "r7gd.large", "r7gd.xlarge", "r7gd.2xlarge", "r7gd.4xlarge", "r7gd.8xlarge", "r7gd.12xlarge", "r7gd.16xlarge", "r7i.large", "r7i.xlarge", "r7i.2xlarge", "r7i.4xlarge", "r7i.8xlarge", "r7i.12xlarge", "r7i.16xlarge", "r7i.24xlarge", "r7i.48xlarge", "c5ad.large", "c5ad.xlarge", "c5ad.2xlarge", "c5ad.4xlarge", "c5ad.8xlarge", "c5ad.12xlarge", "c5ad.16xlarge", "c5ad.24xlarge", "c5n.large", "c5n.xlarge", "c5n.2xlarge", "c5n.4xlarge", "c5n.9xlarge", "c5n.18xlarge", "r5ad.large", "r5ad.xlarge", "r5ad.2xlarge", "r5ad.4xlarge", "r5ad.8xlarge", "r5ad.12xlarge", "r5ad.16xlarge", "r5ad.24xlarge", "c6id.large", "c6id.xlarge", "c6id.2xlarge", "c6id.4xlarge", "c6id.8xlarge", "c6id.12xlarge", "c6id.16xlarge", "c6id.24xlarge", "c6id.32xlarge", "c8g.medium", "c8g.large", "c8g.xlarge", "c8g.2xlarge", "c8g.4xlarge", "c8g.8xlarge", "c8g.12xlarge", "c8g.16xlarge", "c8g.24xlarge", "c8g.48xlarge", "m5ad.large", "m5ad.xlarge", "m5ad.2xlarge", "m5ad.4xlarge", "m5ad.8xlarge", "m5ad.12xlarge", "m5ad.16xlarge", "m5ad.24xlarge", "m5d.large", "m5d.xlarge", "m5d.2xlarge", "m5d.4xlarge", "m5d.8xlarge", "m5d.12xlarge", "m5d.16xlarge", "m5d.24xlarge", "m5dn.large", "m5dn.xlarge", "m5dn.2xlarge", "m5dn.4xlarge", "m5dn.8xlarge", "m5dn.12xlarge", "m5dn.16xlarge", "m5dn.24xlarge", "m5n.large", "m5n.xlarge", "m5n.2xlarge", "m5n.4xlarge", "m5n.8xlarge", "m5n.12xlarge", "m5n.16xlarge", "m5n.24xlarge", "m6id.large", "m6id.xlarge", "m6id.2xlarge", "m6id.4xlarge", "m6id.8xlarge", "m6id.12xlarge", "m6id.16xlarge", "m6id.24xlarge", "m6id.32xlarge", "m6idn.large", "m6idn.xlarge", "m6idn.2xlarge", "m6idn.4xlarge", "m6idn.8xlarge", "m6idn.12xlarge", "m6idn.16xlarge", "m6idn.24xlarge", "m6idn.32xlarge", "m6in.large", "m6in.xlarge", "m6in.2xlarge", "m6in.4xlarge", "m6in.8xlarge", "m6in.12xlarge", "m6in.16xlarge", "m6in.24xlarge", "m6in.32xlarge", "m8g.medium", "m8g.large", "m8g.xlarge", "m8g.2xlarge", "m8g.4xlarge", "m8g.8xlarge", "m8g.12xlarge", "m8g.16xlarge", "m8g.24xlarge", "m8g.48xlarge", "r5dn.large", "r5dn.xlarge", "r5dn.2xlarge", "r5dn.4xlarge", "r5dn.8xlarge", "r5dn.12xlarge", "r5dn.16xlarge", "r5dn.24xlarge", "r5n.large", "r5n.xlarge", "r5n.2xlarge", "r5n.4xlarge", "r5n.8xlarge", "r5n.12xlarge", "r5n.16xlarge", "r5n.24xlarge", "r6a.large", "r6a.xlarge", "r6a.2xlarge", "r6a.4xlarge", "r6a.8xlarge", "r6a.12xlarge", "r6a.16xlarge", "r6a.24xlarge", "r6a.32xlarge", "r6a.48xlarge", "r6id.large", "r6id.xlarge", "r6id.2xlarge", "r6id.4xlarge", "r6id.8xlarge", "r6id.12xlarge", "r6id.16xlarge", "r6id.24xlarge", "r6id.32xlarge", "r6idn.large", "r6idn.xlarge", "r6idn.2xlarge", "r6idn.4xlarge", "r6idn.8xlarge", "r6idn.12xlarge", "r6idn.16xlarge", "r6idn.24xlarge", "r6idn.32xlarge", "r6in.large", "r6in.xlarge", "r6in.2xlarge", "r6in.4xlarge", "r6in.8xlarge", "r6in.12xlarge", "r6in.16xlarge", "r6in.24xlarge", "r6in.32xlarge", "r8g.medium", "r8g.large", "r8g.xlarge", "r8g.2xlarge", "r8g.4xlarge", "r8g.8xlarge", "r8g.12xlarge", "r8g.16xlarge", "r8g.24xlarge", "r8g.48xlarge", "m4.16xlarge", "c6a.32xlarge", "c6a.48xlarge", "c6i.32xlarge", "r6i.24xlarge", "r6i.32xlarge", "c6in.24xlarge", "c6in.32xlarge", "c7a.24xlarge", "c7a.32xlarge", "c7a.48xlarge", "c7i.24xlarge", "c7i.48xlarge", "m6a.24xlarge", "m6a.32xlarge", "m6a.48xlarge", "m6i.24xlarge", "m6i.32xlarge", "m7a.24xlarge", "m7a.32xlarge", "m7a.48xlarge", "m7i.24xlarge", "m7i.48xlarge", "r7a.24xlarge", "r7a.32xlarge", "r7a.48xlarge"
    #   resp.compute_list[0].game_lift_service_sdk_endpoint #=> String
    #   resp.compute_list[0].game_lift_agent_endpoint #=> String
    #   resp.compute_list[0].instance_id #=> String
    #   resp.compute_list[0].container_attributes #=> Array
    #   resp.compute_list[0].container_attributes[0].container_name #=> String
    #   resp.compute_list[0].container_attributes[0].container_runtime_id #=> String
    #   resp.compute_list[0].game_server_container_group_definition_arn #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/ListCompute AWS API Documentation
    #
    # @overload list_compute(params = {})
    # @param [Hash] params ({})
    def list_compute(params = {}, options = {})
      req = build_request(:list_compute, params)
      req.send_request(options)
    end

    # Retrieves a collection of container fleet resources in an Amazon Web
    # Services Region. For fleets that have multiple locations, this
    # operation retrieves fleets based on their home Region only.
    #
    # **Request options**
    #
    # * Get a list of all fleets. Call this operation without specifying a
    #   container group definition.
    #
    # * Get a list of fleets filtered by container group definition. Provide
    #   the container group definition name or ARN value.
    #
    # * To get a list of all Amazon GameLift Servers Realtime fleets with a
    #   specific configuration script, provide the script ID.
    #
    # Use the pagination parameters to retrieve results as a set of
    # sequential pages.
    #
    # If successful, this operation returns a collection of container fleets
    # that match the request parameters. A NextToken value is also returned
    # if there are more result pages to retrieve.
    #
    # <note markdown="1"> Fleet IDs are returned in no particular order.
    #
    #  </note>
    #
    # @option params [String] :container_group_definition_name
    #   The container group definition to filter the list on. Use this
    #   parameter to retrieve only those fleets that use the specified
    #   container group definition. You can specify the container group
    #   definition's name to get fleets with the latest versions.
    #   Alternatively, provide an ARN value to get fleets with a specific
    #   version number.
    #
    # @option params [Integer] :limit
    #   The maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages.
    #
    # @option params [String] :next_token
    #   A token that indicates the start of the next sequential page of
    #   results. Use the token that is returned with a previous call to this
    #   operation. To start at the beginning of the result set, do not specify
    #   a value.
    #
    # @return [Types::ListContainerFleetsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListContainerFleetsOutput#container_fleets #container_fleets} => Array&lt;Types::ContainerFleet&gt;
    #   * {Types::ListContainerFleetsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_container_fleets({
    #     container_group_definition_name: "ContainerGroupDefinitionNameOrArn",
    #     limit: 1,
    #     next_token: "NonZeroAndMaxString",
    #   })
    #
    # @example Response structure
    #
    #   resp.container_fleets #=> Array
    #   resp.container_fleets[0].fleet_id #=> String
    #   resp.container_fleets[0].fleet_arn #=> String
    #   resp.container_fleets[0].fleet_role_arn #=> String
    #   resp.container_fleets[0].game_server_container_group_definition_name #=> String
    #   resp.container_fleets[0].game_server_container_group_definition_arn #=> String
    #   resp.container_fleets[0].per_instance_container_group_definition_name #=> String
    #   resp.container_fleets[0].per_instance_container_group_definition_arn #=> String
    #   resp.container_fleets[0].instance_connection_port_range.from_port #=> Integer
    #   resp.container_fleets[0].instance_connection_port_range.to_port #=> Integer
    #   resp.container_fleets[0].instance_inbound_permissions #=> Array
    #   resp.container_fleets[0].instance_inbound_permissions[0].from_port #=> Integer
    #   resp.container_fleets[0].instance_inbound_permissions[0].to_port #=> Integer
    #   resp.container_fleets[0].instance_inbound_permissions[0].ip_range #=> String
    #   resp.container_fleets[0].instance_inbound_permissions[0].protocol #=> String, one of "TCP", "UDP"
    #   resp.container_fleets[0].game_server_container_groups_per_instance #=> Integer
    #   resp.container_fleets[0].maximum_game_server_container_groups_per_instance #=> Integer
    #   resp.container_fleets[0].instance_type #=> String
    #   resp.container_fleets[0].billing_type #=> String, one of "ON_DEMAND", "SPOT"
    #   resp.container_fleets[0].description #=> String
    #   resp.container_fleets[0].creation_time #=> Time
    #   resp.container_fleets[0].metric_groups #=> Array
    #   resp.container_fleets[0].metric_groups[0] #=> String
    #   resp.container_fleets[0].new_game_session_protection_policy #=> String, one of "NoProtection", "FullProtection"
    #   resp.container_fleets[0].game_session_creation_limit_policy.new_game_sessions_per_creator #=> Integer
    #   resp.container_fleets[0].game_session_creation_limit_policy.policy_period_in_minutes #=> Integer
    #   resp.container_fleets[0].status #=> String, one of "PENDING", "CREATING", "CREATED", "ACTIVATING", "ACTIVE", "UPDATING", "DELETING"
    #   resp.container_fleets[0].deployment_details.latest_deployment_id #=> String
    #   resp.container_fleets[0].log_configuration.log_destination #=> String, one of "NONE", "CLOUDWATCH", "S3"
    #   resp.container_fleets[0].log_configuration.s3_bucket_name #=> String
    #   resp.container_fleets[0].log_configuration.log_group_arn #=> String
    #   resp.container_fleets[0].location_attributes #=> Array
    #   resp.container_fleets[0].location_attributes[0].location #=> String
    #   resp.container_fleets[0].location_attributes[0].status #=> String, one of "PENDING", "CREATING", "CREATED", "ACTIVATING", "ACTIVE", "UPDATING", "DELETING"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/ListContainerFleets AWS API Documentation
    #
    # @overload list_container_fleets(params = {})
    # @param [Hash] params ({})
    def list_container_fleets(params = {}, options = {})
      req = build_request(:list_container_fleets, params)
      req.send_request(options)
    end

    # Retrieves all versions of a container group definition. Use the
    # pagination parameters to retrieve results in a set of sequential
    # pages.
    #
    # **Request options:**
    #
    # * Get all versions of a specified container group definition. Specify
    #   the container group definition name or ARN value. (If the ARN value
    #   has a version number, it's ignored.)
    #
    # ^
    #
    # **Results:**
    #
    # If successful, this operation returns the complete properties of a set
    # of container group definition versions that match the request.
    #
    # <note markdown="1"> This operation returns the list of container group definitions in
    # descending version order (latest first).
    #
    #  </note>
    #
    # **Learn more**
    #
    # * [Manage a container group definition][1]
    #
    # ^
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/containers-create-groups.html
    #
    # @option params [required, String] :name
    #   The unique identifier for the container group definition to retrieve
    #   properties for. You can use either the `Name` or `ARN` value.
    #
    # @option params [Integer] :limit
    #   The maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages.
    #
    # @option params [String] :next_token
    #   A token that indicates the start of the next sequential page of
    #   results. Use the token that is returned with a previous call to this
    #   operation. To start at the beginning of the result set, do not specify
    #   a value.
    #
    # @return [Types::ListContainerGroupDefinitionVersionsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListContainerGroupDefinitionVersionsOutput#container_group_definitions #container_group_definitions} => Array&lt;Types::ContainerGroupDefinition&gt;
    #   * {Types::ListContainerGroupDefinitionVersionsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_container_group_definition_versions({
    #     name: "ContainerGroupDefinitionNameOrArn", # required
    #     limit: 1,
    #     next_token: "NonZeroAndMaxString",
    #   })
    #
    # @example Response structure
    #
    #   resp.container_group_definitions #=> Array
    #   resp.container_group_definitions[0].container_group_definition_arn #=> String
    #   resp.container_group_definitions[0].creation_time #=> Time
    #   resp.container_group_definitions[0].operating_system #=> String, one of "AMAZON_LINUX_2023"
    #   resp.container_group_definitions[0].name #=> String
    #   resp.container_group_definitions[0].container_group_type #=> String, one of "GAME_SERVER", "PER_INSTANCE"
    #   resp.container_group_definitions[0].total_memory_limit_mebibytes #=> Integer
    #   resp.container_group_definitions[0].total_vcpu_limit #=> Float
    #   resp.container_group_definitions[0].game_server_container_definition.container_name #=> String
    #   resp.container_group_definitions[0].game_server_container_definition.depends_on #=> Array
    #   resp.container_group_definitions[0].game_server_container_definition.depends_on[0].container_name #=> String
    #   resp.container_group_definitions[0].game_server_container_definition.depends_on[0].condition #=> String, one of "START", "COMPLETE", "SUCCESS", "HEALTHY"
    #   resp.container_group_definitions[0].game_server_container_definition.mount_points #=> Array
    #   resp.container_group_definitions[0].game_server_container_definition.mount_points[0].instance_path #=> String
    #   resp.container_group_definitions[0].game_server_container_definition.mount_points[0].container_path #=> String
    #   resp.container_group_definitions[0].game_server_container_definition.mount_points[0].access_level #=> String, one of "READ_ONLY", "READ_AND_WRITE"
    #   resp.container_group_definitions[0].game_server_container_definition.environment_override #=> Array
    #   resp.container_group_definitions[0].game_server_container_definition.environment_override[0].name #=> String
    #   resp.container_group_definitions[0].game_server_container_definition.environment_override[0].value #=> String
    #   resp.container_group_definitions[0].game_server_container_definition.image_uri #=> String
    #   resp.container_group_definitions[0].game_server_container_definition.port_configuration.container_port_ranges #=> Array
    #   resp.container_group_definitions[0].game_server_container_definition.port_configuration.container_port_ranges[0].from_port #=> Integer
    #   resp.container_group_definitions[0].game_server_container_definition.port_configuration.container_port_ranges[0].to_port #=> Integer
    #   resp.container_group_definitions[0].game_server_container_definition.port_configuration.container_port_ranges[0].protocol #=> String, one of "TCP", "UDP"
    #   resp.container_group_definitions[0].game_server_container_definition.resolved_image_digest #=> String
    #   resp.container_group_definitions[0].game_server_container_definition.server_sdk_version #=> String
    #   resp.container_group_definitions[0].support_container_definitions #=> Array
    #   resp.container_group_definitions[0].support_container_definitions[0].container_name #=> String
    #   resp.container_group_definitions[0].support_container_definitions[0].depends_on #=> Array
    #   resp.container_group_definitions[0].support_container_definitions[0].depends_on[0].container_name #=> String
    #   resp.container_group_definitions[0].support_container_definitions[0].depends_on[0].condition #=> String, one of "START", "COMPLETE", "SUCCESS", "HEALTHY"
    #   resp.container_group_definitions[0].support_container_definitions[0].mount_points #=> Array
    #   resp.container_group_definitions[0].support_container_definitions[0].mount_points[0].instance_path #=> String
    #   resp.container_group_definitions[0].support_container_definitions[0].mount_points[0].container_path #=> String
    #   resp.container_group_definitions[0].support_container_definitions[0].mount_points[0].access_level #=> String, one of "READ_ONLY", "READ_AND_WRITE"
    #   resp.container_group_definitions[0].support_container_definitions[0].environment_override #=> Array
    #   resp.container_group_definitions[0].support_container_definitions[0].environment_override[0].name #=> String
    #   resp.container_group_definitions[0].support_container_definitions[0].environment_override[0].value #=> String
    #   resp.container_group_definitions[0].support_container_definitions[0].essential #=> Boolean
    #   resp.container_group_definitions[0].support_container_definitions[0].health_check.command #=> Array
    #   resp.container_group_definitions[0].support_container_definitions[0].health_check.command[0] #=> String
    #   resp.container_group_definitions[0].support_container_definitions[0].health_check.interval #=> Integer
    #   resp.container_group_definitions[0].support_container_definitions[0].health_check.retries #=> Integer
    #   resp.container_group_definitions[0].support_container_definitions[0].health_check.start_period #=> Integer
    #   resp.container_group_definitions[0].support_container_definitions[0].health_check.timeout #=> Integer
    #   resp.container_group_definitions[0].support_container_definitions[0].image_uri #=> String
    #   resp.container_group_definitions[0].support_container_definitions[0].memory_hard_limit_mebibytes #=> Integer
    #   resp.container_group_definitions[0].support_container_definitions[0].port_configuration.container_port_ranges #=> Array
    #   resp.container_group_definitions[0].support_container_definitions[0].port_configuration.container_port_ranges[0].from_port #=> Integer
    #   resp.container_group_definitions[0].support_container_definitions[0].port_configuration.container_port_ranges[0].to_port #=> Integer
    #   resp.container_group_definitions[0].support_container_definitions[0].port_configuration.container_port_ranges[0].protocol #=> String, one of "TCP", "UDP"
    #   resp.container_group_definitions[0].support_container_definitions[0].resolved_image_digest #=> String
    #   resp.container_group_definitions[0].support_container_definitions[0].vcpu #=> Float
    #   resp.container_group_definitions[0].version_number #=> Integer
    #   resp.container_group_definitions[0].version_description #=> String
    #   resp.container_group_definitions[0].status #=> String, one of "READY", "COPYING", "FAILED"
    #   resp.container_group_definitions[0].status_reason #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/ListContainerGroupDefinitionVersions AWS API Documentation
    #
    # @overload list_container_group_definition_versions(params = {})
    # @param [Hash] params ({})
    def list_container_group_definition_versions(params = {}, options = {})
      req = build_request(:list_container_group_definition_versions, params)
      req.send_request(options)
    end

    # Retrieves container group definitions for the Amazon Web Services
    # account and Amazon Web Services Region. Use the pagination parameters
    # to retrieve results in a set of sequential pages.
    #
    # This operation returns only the latest version of each definition. To
    # retrieve all versions of a container group definition, use
    # [ListContainerGroupDefinitionVersions][1].
    #
    # **Request options:**
    #
    # * Retrieve the most recent versions of all container group
    #   definitions.
    #
    # * Retrieve the most recent versions of all container group
    #   definitions, filtered by type. Specify the container group type to
    #   filter on.
    #
    # **Results:**
    #
    # If successful, this operation returns the complete properties of a set
    # of container group definition versions that match the request.
    #
    # <note markdown="1"> This operation returns the list of container group definitions in no
    # particular order.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_ListContainerGroupDefinitionVersions.html
    #
    # @option params [String] :container_group_type
    #   The type of container group to retrieve. Container group type
    #   determines how Amazon GameLift Servers deploys the container group on
    #   each fleet instance.
    #
    # @option params [Integer] :limit
    #   The maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages.
    #
    # @option params [String] :next_token
    #   A token that indicates the start of the next sequential page of
    #   results. Use the token that is returned with a previous call to this
    #   operation. To start at the beginning of the result set, do not specify
    #   a value.
    #
    # @return [Types::ListContainerGroupDefinitionsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListContainerGroupDefinitionsOutput#container_group_definitions #container_group_definitions} => Array&lt;Types::ContainerGroupDefinition&gt;
    #   * {Types::ListContainerGroupDefinitionsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_container_group_definitions({
    #     container_group_type: "GAME_SERVER", # accepts GAME_SERVER, PER_INSTANCE
    #     limit: 1,
    #     next_token: "NonZeroAndMaxString",
    #   })
    #
    # @example Response structure
    #
    #   resp.container_group_definitions #=> Array
    #   resp.container_group_definitions[0].container_group_definition_arn #=> String
    #   resp.container_group_definitions[0].creation_time #=> Time
    #   resp.container_group_definitions[0].operating_system #=> String, one of "AMAZON_LINUX_2023"
    #   resp.container_group_definitions[0].name #=> String
    #   resp.container_group_definitions[0].container_group_type #=> String, one of "GAME_SERVER", "PER_INSTANCE"
    #   resp.container_group_definitions[0].total_memory_limit_mebibytes #=> Integer
    #   resp.container_group_definitions[0].total_vcpu_limit #=> Float
    #   resp.container_group_definitions[0].game_server_container_definition.container_name #=> String
    #   resp.container_group_definitions[0].game_server_container_definition.depends_on #=> Array
    #   resp.container_group_definitions[0].game_server_container_definition.depends_on[0].container_name #=> String
    #   resp.container_group_definitions[0].game_server_container_definition.depends_on[0].condition #=> String, one of "START", "COMPLETE", "SUCCESS", "HEALTHY"
    #   resp.container_group_definitions[0].game_server_container_definition.mount_points #=> Array
    #   resp.container_group_definitions[0].game_server_container_definition.mount_points[0].instance_path #=> String
    #   resp.container_group_definitions[0].game_server_container_definition.mount_points[0].container_path #=> String
    #   resp.container_group_definitions[0].game_server_container_definition.mount_points[0].access_level #=> String, one of "READ_ONLY", "READ_AND_WRITE"
    #   resp.container_group_definitions[0].game_server_container_definition.environment_override #=> Array
    #   resp.container_group_definitions[0].game_server_container_definition.environment_override[0].name #=> String
    #   resp.container_group_definitions[0].game_server_container_definition.environment_override[0].value #=> String
    #   resp.container_group_definitions[0].game_server_container_definition.image_uri #=> String
    #   resp.container_group_definitions[0].game_server_container_definition.port_configuration.container_port_ranges #=> Array
    #   resp.container_group_definitions[0].game_server_container_definition.port_configuration.container_port_ranges[0].from_port #=> Integer
    #   resp.container_group_definitions[0].game_server_container_definition.port_configuration.container_port_ranges[0].to_port #=> Integer
    #   resp.container_group_definitions[0].game_server_container_definition.port_configuration.container_port_ranges[0].protocol #=> String, one of "TCP", "UDP"
    #   resp.container_group_definitions[0].game_server_container_definition.resolved_image_digest #=> String
    #   resp.container_group_definitions[0].game_server_container_definition.server_sdk_version #=> String
    #   resp.container_group_definitions[0].support_container_definitions #=> Array
    #   resp.container_group_definitions[0].support_container_definitions[0].container_name #=> String
    #   resp.container_group_definitions[0].support_container_definitions[0].depends_on #=> Array
    #   resp.container_group_definitions[0].support_container_definitions[0].depends_on[0].container_name #=> String
    #   resp.container_group_definitions[0].support_container_definitions[0].depends_on[0].condition #=> String, one of "START", "COMPLETE", "SUCCESS", "HEALTHY"
    #   resp.container_group_definitions[0].support_container_definitions[0].mount_points #=> Array
    #   resp.container_group_definitions[0].support_container_definitions[0].mount_points[0].instance_path #=> String
    #   resp.container_group_definitions[0].support_container_definitions[0].mount_points[0].container_path #=> String
    #   resp.container_group_definitions[0].support_container_definitions[0].mount_points[0].access_level #=> String, one of "READ_ONLY", "READ_AND_WRITE"
    #   resp.container_group_definitions[0].support_container_definitions[0].environment_override #=> Array
    #   resp.container_group_definitions[0].support_container_definitions[0].environment_override[0].name #=> String
    #   resp.container_group_definitions[0].support_container_definitions[0].environment_override[0].value #=> String
    #   resp.container_group_definitions[0].support_container_definitions[0].essential #=> Boolean
    #   resp.container_group_definitions[0].support_container_definitions[0].health_check.command #=> Array
    #   resp.container_group_definitions[0].support_container_definitions[0].health_check.command[0] #=> String
    #   resp.container_group_definitions[0].support_container_definitions[0].health_check.interval #=> Integer
    #   resp.container_group_definitions[0].support_container_definitions[0].health_check.retries #=> Integer
    #   resp.container_group_definitions[0].support_container_definitions[0].health_check.start_period #=> Integer
    #   resp.container_group_definitions[0].support_container_definitions[0].health_check.timeout #=> Integer
    #   resp.container_group_definitions[0].support_container_definitions[0].image_uri #=> String
    #   resp.container_group_definitions[0].support_container_definitions[0].memory_hard_limit_mebibytes #=> Integer
    #   resp.container_group_definitions[0].support_container_definitions[0].port_configuration.container_port_ranges #=> Array
    #   resp.container_group_definitions[0].support_container_definitions[0].port_configuration.container_port_ranges[0].from_port #=> Integer
    #   resp.container_group_definitions[0].support_container_definitions[0].port_configuration.container_port_ranges[0].to_port #=> Integer
    #   resp.container_group_definitions[0].support_container_definitions[0].port_configuration.container_port_ranges[0].protocol #=> String, one of "TCP", "UDP"
    #   resp.container_group_definitions[0].support_container_definitions[0].resolved_image_digest #=> String
    #   resp.container_group_definitions[0].support_container_definitions[0].vcpu #=> Float
    #   resp.container_group_definitions[0].version_number #=> Integer
    #   resp.container_group_definitions[0].version_description #=> String
    #   resp.container_group_definitions[0].status #=> String, one of "READY", "COPYING", "FAILED"
    #   resp.container_group_definitions[0].status_reason #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/ListContainerGroupDefinitions AWS API Documentation
    #
    # @overload list_container_group_definitions(params = {})
    # @param [Hash] params ({})
    def list_container_group_definitions(params = {}, options = {})
      req = build_request(:list_container_group_definitions, params)
      req.send_request(options)
    end

    # Retrieves a collection of container fleet deployments in an Amazon Web
    # Services Region. Use the pagination parameters to retrieve results as
    # a set of sequential pages.
    #
    # **Request options**
    #
    # * Get a list of all deployments. Call this operation without
    #   specifying a fleet ID.
    #
    # * Get a list of all deployments for a fleet. Specify the container
    #   fleet ID or ARN value.
    #
    # **Results**
    #
    # If successful, this operation returns a list of deployments that match
    # the request parameters. A NextToken value is also returned if there
    # are more result pages to retrieve.
    #
    # <note markdown="1"> Deployments are returned starting with the latest.
    #
    #  </note>
    #
    # @option params [String] :fleet_id
    #   A unique identifier for the container fleet. You can use either the
    #   fleet ID or ARN value.
    #
    # @option params [Integer] :limit
    #   The maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages.
    #
    # @option params [String] :next_token
    #   A token that indicates the start of the next sequential page of
    #   results. Use the token that is returned with a previous call to this
    #   operation. To start at the beginning of the result set, do not specify
    #   a value.
    #
    # @return [Types::ListFleetDeploymentsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListFleetDeploymentsOutput#fleet_deployments #fleet_deployments} => Array&lt;Types::FleetDeployment&gt;
    #   * {Types::ListFleetDeploymentsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_fleet_deployments({
    #     fleet_id: "FleetIdOrArn",
    #     limit: 1,
    #     next_token: "NonZeroAndMaxString",
    #   })
    #
    # @example Response structure
    #
    #   resp.fleet_deployments #=> Array
    #   resp.fleet_deployments[0].deployment_id #=> String
    #   resp.fleet_deployments[0].fleet_id #=> String
    #   resp.fleet_deployments[0].game_server_binary_arn #=> String
    #   resp.fleet_deployments[0].rollback_game_server_binary_arn #=> String
    #   resp.fleet_deployments[0].per_instance_binary_arn #=> String
    #   resp.fleet_deployments[0].rollback_per_instance_binary_arn #=> String
    #   resp.fleet_deployments[0].deployment_status #=> String, one of "IN_PROGRESS", "IMPAIRED", "COMPLETE", "ROLLBACK_IN_PROGRESS", "ROLLBACK_COMPLETE", "CANCELLED", "PENDING"
    #   resp.fleet_deployments[0].deployment_configuration.protection_strategy #=> String, one of "WITH_PROTECTION", "IGNORE_PROTECTION"
    #   resp.fleet_deployments[0].deployment_configuration.minimum_healthy_percentage #=> Integer
    #   resp.fleet_deployments[0].deployment_configuration.impairment_strategy #=> String, one of "MAINTAIN", "ROLLBACK"
    #   resp.fleet_deployments[0].creation_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/ListFleetDeployments AWS API Documentation
    #
    # @overload list_fleet_deployments(params = {})
    # @param [Hash] params ({})
    def list_fleet_deployments(params = {}, options = {})
      req = build_request(:list_fleet_deployments, params)
      req.send_request(options)
    end

    # Retrieves a collection of fleet resources in an Amazon Web Services
    # Region. You can filter the result set to find only those fleets that
    # are deployed with a specific build or script. For fleets that have
    # multiple locations, this operation retrieves fleets based on their
    # home Region only.
    #
    # You can use operation in the following ways:
    #
    # * To get a list of all fleets in a Region, don't provide a build or
    #   script identifier.
    #
    # * To get a list of all fleets where a specific game build is deployed,
    #   provide the build ID.
    #
    # * To get a list of all Amazon GameLift Servers Realtime fleets with a
    #   specific configuration script, provide the script ID.
    #
    # Use the pagination parameters to retrieve results as a set of
    # sequential pages.
    #
    # If successful, this operation returns a list of fleet IDs that match
    # the request parameters. A NextToken value is also returned if there
    # are more result pages to retrieve.
    #
    # <note markdown="1"> Fleet IDs are returned in no particular order.
    #
    #  </note>
    #
    # @option params [String] :build_id
    #   A unique identifier for the build to request fleets for. Use this
    #   parameter to return only fleets using a specified build. Use either
    #   the build ID or ARN value.
    #
    # @option params [String] :script_id
    #   A unique identifier for the Realtime script to request fleets for. Use
    #   this parameter to return only fleets using a specified script. Use
    #   either the script ID or ARN value.
    #
    # @option params [Integer] :limit
    #   The maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages.
    #
    # @option params [String] :next_token
    #   A token that indicates the start of the next sequential page of
    #   results. Use the token that is returned with a previous call to this
    #   operation. To start at the beginning of the result set, do not specify
    #   a value.
    #
    # @return [Types::ListFleetsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListFleetsOutput#fleet_ids #fleet_ids} => Array&lt;String&gt;
    #   * {Types::ListFleetsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_fleets({
    #     build_id: "BuildIdOrArn",
    #     script_id: "ScriptIdOrArn",
    #     limit: 1,
    #     next_token: "NonZeroAndMaxString",
    #   })
    #
    # @example Response structure
    #
    #   resp.fleet_ids #=> Array
    #   resp.fleet_ids[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/ListFleets AWS API Documentation
    #
    # @overload list_fleets(params = {})
    # @param [Hash] params ({})
    def list_fleets(params = {}, options = {})
      req = build_request(:list_fleets, params)
      req.send_request(options)
    end

    # Lists a game server groups.
    #
    # @option params [Integer] :limit
    #   The game server groups' limit.
    #
    # @option params [String] :next_token
    #   Specify the pagination token from a previous request to retrieve the
    #   next page of results.
    #
    # @return [Types::ListGameServerGroupsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListGameServerGroupsOutput#game_server_groups #game_server_groups} => Array&lt;Types::GameServerGroup&gt;
    #   * {Types::ListGameServerGroupsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_game_server_groups({
    #     limit: 1,
    #     next_token: "NonZeroAndMaxString",
    #   })
    #
    # @example Response structure
    #
    #   resp.game_server_groups #=> Array
    #   resp.game_server_groups[0].game_server_group_name #=> String
    #   resp.game_server_groups[0].game_server_group_arn #=> String
    #   resp.game_server_groups[0].role_arn #=> String
    #   resp.game_server_groups[0].instance_definitions #=> Array
    #   resp.game_server_groups[0].instance_definitions[0].instance_type #=> String, one of "c4.large", "c4.xlarge", "c4.2xlarge", "c4.4xlarge", "c4.8xlarge", "c5.large", "c5.xlarge", "c5.2xlarge", "c5.4xlarge", "c5.9xlarge", "c5.12xlarge", "c5.18xlarge", "c5.24xlarge", "c5a.large", "c5a.xlarge", "c5a.2xlarge", "c5a.4xlarge", "c5a.8xlarge", "c5a.12xlarge", "c5a.16xlarge", "c5a.24xlarge", "c6g.medium", "c6g.large", "c6g.xlarge", "c6g.2xlarge", "c6g.4xlarge", "c6g.8xlarge", "c6g.12xlarge", "c6g.16xlarge", "r4.large", "r4.xlarge", "r4.2xlarge", "r4.4xlarge", "r4.8xlarge", "r4.16xlarge", "r5.large", "r5.xlarge", "r5.2xlarge", "r5.4xlarge", "r5.8xlarge", "r5.12xlarge", "r5.16xlarge", "r5.24xlarge", "r5a.large", "r5a.xlarge", "r5a.2xlarge", "r5a.4xlarge", "r5a.8xlarge", "r5a.12xlarge", "r5a.16xlarge", "r5a.24xlarge", "r6g.medium", "r6g.large", "r6g.xlarge", "r6g.2xlarge", "r6g.4xlarge", "r6g.8xlarge", "r6g.12xlarge", "r6g.16xlarge", "m4.large", "m4.xlarge", "m4.2xlarge", "m4.4xlarge", "m4.10xlarge", "m5.large", "m5.xlarge", "m5.2xlarge", "m5.4xlarge", "m5.8xlarge", "m5.12xlarge", "m5.16xlarge", "m5.24xlarge", "m5a.large", "m5a.xlarge", "m5a.2xlarge", "m5a.4xlarge", "m5a.8xlarge", "m5a.12xlarge", "m5a.16xlarge", "m5a.24xlarge", "m6g.medium", "m6g.large", "m6g.xlarge", "m6g.2xlarge", "m6g.4xlarge", "m6g.8xlarge", "m6g.12xlarge", "m6g.16xlarge"
    #   resp.game_server_groups[0].instance_definitions[0].weighted_capacity #=> String
    #   resp.game_server_groups[0].balancing_strategy #=> String, one of "SPOT_ONLY", "SPOT_PREFERRED", "ON_DEMAND_ONLY"
    #   resp.game_server_groups[0].game_server_protection_policy #=> String, one of "NO_PROTECTION", "FULL_PROTECTION"
    #   resp.game_server_groups[0].auto_scaling_group_arn #=> String
    #   resp.game_server_groups[0].status #=> String, one of "NEW", "ACTIVATING", "ACTIVE", "DELETE_SCHEDULED", "DELETING", "DELETED", "ERROR"
    #   resp.game_server_groups[0].status_reason #=> String
    #   resp.game_server_groups[0].suspended_actions #=> Array
    #   resp.game_server_groups[0].suspended_actions[0] #=> String, one of "REPLACE_INSTANCE_TYPES"
    #   resp.game_server_groups[0].creation_time #=> Time
    #   resp.game_server_groups[0].last_updated_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/ListGameServerGroups AWS API Documentation
    #
    # @overload list_game_server_groups(params = {})
    # @param [Hash] params ({})
    def list_game_server_groups(params = {}, options = {})
      req = build_request(:list_game_server_groups, params)
      req.send_request(options)
    end

    # **This operation is used with the Amazon GameLift Servers FleetIQ
    # solution and game server groups.**
    #
    # Retrieves information on all game servers that are currently active in
    # a specified game server group. You can opt to sort the list by game
    # server age. Use the pagination parameters to retrieve results in a set
    # of sequential segments.
    #
    # **Learn more**
    #
    # [Amazon GameLift Servers FleetIQ Guide][1]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/gsg-intro.html
    #
    # @option params [required, String] :game_server_group_name
    #   An identifier for the game server group to retrieve a list of game
    #   servers from. Use either the name or ARN value.
    #
    # @option params [String] :sort_order
    #   Indicates how to sort the returned data based on game server
    #   registration timestamp. Use `ASCENDING` to retrieve oldest game
    #   servers first, or use `DESCENDING` to retrieve newest game servers
    #   first. If this parameter is left empty, game servers are returned in
    #   no particular order.
    #
    # @option params [Integer] :limit
    #   The maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages.
    #
    # @option params [String] :next_token
    #   A token that indicates the start of the next sequential page of
    #   results. Use the token that is returned with a previous call to this
    #   operation. To start at the beginning of the result set, do not specify
    #   a value.
    #
    # @return [Types::ListGameServersOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListGameServersOutput#game_servers #game_servers} => Array&lt;Types::GameServer&gt;
    #   * {Types::ListGameServersOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_game_servers({
    #     game_server_group_name: "GameServerGroupNameOrArn", # required
    #     sort_order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #     limit: 1,
    #     next_token: "NonZeroAndMaxString",
    #   })
    #
    # @example Response structure
    #
    #   resp.game_servers #=> Array
    #   resp.game_servers[0].game_server_group_name #=> String
    #   resp.game_servers[0].game_server_group_arn #=> String
    #   resp.game_servers[0].game_server_id #=> String
    #   resp.game_servers[0].instance_id #=> String
    #   resp.game_servers[0].connection_info #=> String
    #   resp.game_servers[0].game_server_data #=> String
    #   resp.game_servers[0].claim_status #=> String, one of "CLAIMED"
    #   resp.game_servers[0].utilization_status #=> String, one of "AVAILABLE", "UTILIZED"
    #   resp.game_servers[0].registration_time #=> Time
    #   resp.game_servers[0].last_claim_time #=> Time
    #   resp.game_servers[0].last_health_check_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/ListGameServers AWS API Documentation
    #
    # @overload list_game_servers(params = {})
    # @param [Hash] params ({})
    def list_game_servers(params = {}, options = {})
      req = build_request(:list_game_servers, params)
      req.send_request(options)
    end

    # Lists all custom and Amazon Web Services locations where Amazon
    # GameLift Servers can host game servers.
    #
    # Note that if you call this API using a location that doesn't have a
    # service endpoint, such as one that can only be a remote location in a
    # multi-location fleet, the API returns an error.
    #
    # Consult the table of supported locations in [Amazon GameLift Servers
    # service locations][1] to identify home Regions that support single and
    # multi-location fleets.
    #
    # **Learn more**
    #
    # [Service locations][1]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-regions.html
    #
    # @option params [Array<String>] :filters
    #   Filters the list for `AWS` or `CUSTOM` locations. Use this parameter
    #   to narrow down results to only Amazon Web Services-managed locations
    #   (Amazon EC2 or container) or only your custom locations (such as an
    #   Amazon GameLift Servers Anywhere fleet).
    #
    # @option params [Integer] :limit
    #   The maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages.
    #
    # @option params [String] :next_token
    #   A token that indicates the start of the next sequential page of
    #   results. Use the token that is returned with a previous call to this
    #   operation. To start at the beginning of the result set, do not specify
    #   a value.
    #
    # @return [Types::ListLocationsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListLocationsOutput#locations #locations} => Array&lt;Types::LocationModel&gt;
    #   * {Types::ListLocationsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_locations({
    #     filters: ["AWS"], # accepts AWS, CUSTOM
    #     limit: 1,
    #     next_token: "NonZeroAndMaxString",
    #   })
    #
    # @example Response structure
    #
    #   resp.locations #=> Array
    #   resp.locations[0].location_name #=> String
    #   resp.locations[0].location_arn #=> String
    #   resp.locations[0].ping_beacon.udp_endpoint.domain #=> String
    #   resp.locations[0].ping_beacon.udp_endpoint.port #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/ListLocations AWS API Documentation
    #
    # @overload list_locations(params = {})
    # @param [Hash] params ({})
    def list_locations(params = {}, options = {})
      req = build_request(:list_locations, params)
      req.send_request(options)
    end

    # Retrieves script records for all Realtime scripts that are associated
    # with the Amazon Web Services account in use.
    #
    # **Learn more**
    #
    # [Amazon GameLift Servers Amazon GameLift Servers Realtime][1]
    #
    # **Related actions**
    #
    # [All APIs by task][2]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/realtime-intro.html
    # [2]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets
    #
    # @option params [Integer] :limit
    #   The maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages.
    #
    # @option params [String] :next_token
    #   A token that indicates the start of the next sequential page of
    #   results. Use the token that is returned with a previous call to this
    #   operation. To start at the beginning of the result set, do not specify
    #   a value.
    #
    # @return [Types::ListScriptsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListScriptsOutput#scripts #scripts} => Array&lt;Types::Script&gt;
    #   * {Types::ListScriptsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_scripts({
    #     limit: 1,
    #     next_token: "NonEmptyString",
    #   })
    #
    # @example Response structure
    #
    #   resp.scripts #=> Array
    #   resp.scripts[0].script_id #=> String
    #   resp.scripts[0].script_arn #=> String
    #   resp.scripts[0].name #=> String
    #   resp.scripts[0].version #=> String
    #   resp.scripts[0].size_on_disk #=> Integer
    #   resp.scripts[0].creation_time #=> Time
    #   resp.scripts[0].storage_location.bucket #=> String
    #   resp.scripts[0].storage_location.key #=> String
    #   resp.scripts[0].storage_location.role_arn #=> String
    #   resp.scripts[0].storage_location.object_version #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/ListScripts AWS API Documentation
    #
    # @overload list_scripts(params = {})
    # @param [Hash] params ({})
    def list_scripts(params = {}, options = {})
      req = build_request(:list_scripts, params)
      req.send_request(options)
    end

    # Retrieves all tags assigned to a Amazon GameLift Servers resource. Use
    # resource tags to organize Amazon Web Services resources for a range of
    # purposes. This operation handles the permissions necessary to manage
    # tags for Amazon GameLift Servers resources that support tagging.
    #
    # To list tags for a resource, specify the unique ARN value for the
    # resource.
    #
    # **Learn more**
    #
    # [Tagging Amazon Web Services Resources][1] in the *Amazon Web Services
    # General Reference*
    #
    # [ Amazon Web Services Tagging Strategies][2]
    #
    # **Related actions**
    #
    # [All APIs by task][3]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    # [2]: http://aws.amazon.com/answers/account-management/aws-tagging-strategies/
    # [3]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name ([ARN][1]) that uniquely identifies the
    #   Amazon GameLift Servers resource that you want to retrieve tags for.
    #   Amazon GameLift Servers includes resource ARNs in the data object for
    #   the resource. You can retrieve the ARN by calling a `List` or
    #   `Describe` operation for the resource type.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Array&lt;Types::Tag&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "AmazonResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Creates or updates a scaling policy for a fleet. Scaling policies are
    # used to automatically scale a fleet's hosting capacity to meet player
    # demand. An active scaling policy instructs Amazon GameLift Servers to
    # track a fleet metric and automatically change the fleet's capacity
    # when a certain threshold is reached. There are two types of scaling
    # policies: target-based and rule-based. Use a target-based policy to
    # quickly and efficiently manage fleet scaling; this option is the most
    # commonly used. Use rule-based policies when you need to exert
    # fine-grained control over auto-scaling.
    #
    # Fleets can have multiple scaling policies of each type in force at the
    # same time; you can have one target-based policy, one or multiple
    # rule-based scaling policies, or both. We recommend caution, however,
    # because multiple auto-scaling policies can have unintended
    # consequences.
    #
    # Learn more about how to work with auto-scaling in [Set Up Fleet
    # Automatic Scaling][1].
    #
    # **Target-based policy**
    #
    # A target-based policy tracks a single metric:
    # PercentAvailableGameSessions. This metric tells us how much of a
    # fleet's hosting capacity is ready to host game sessions but is not
    # currently in use. This is the fleet's buffer; it measures the
    # additional player demand that the fleet could handle at current
    # capacity. With a target-based policy, you set your ideal buffer size
    # and leave it to Amazon GameLift Servers to take whatever action is
    # needed to maintain that target.
    #
    # For example, you might choose to maintain a 10% buffer for a fleet
    # that has the capacity to host 100 simultaneous game sessions. This
    # policy tells Amazon GameLift Servers to take action whenever the
    # fleet's available capacity falls below or rises above 10 game
    # sessions. Amazon GameLift Servers will start new instances or stop
    # unused instances in order to return to the 10% buffer.
    #
    # To create or update a target-based policy, specify a fleet ID and
    # name, and set the policy type to "TargetBased". Specify the metric
    # to track (PercentAvailableGameSessions) and reference a
    # `TargetConfiguration` object with your desired buffer value. Exclude
    # all other parameters. On a successful request, the policy name is
    # returned. The scaling policy is automatically in force as soon as
    # it's successfully created. If the fleet's auto-scaling actions are
    # temporarily suspended, the new policy will be in force once the fleet
    # actions are restarted.
    #
    # **Rule-based policy**
    #
    # A rule-based policy tracks specified fleet metric, sets a threshold
    # value, and specifies the type of action to initiate when triggered.
    # With a rule-based policy, you can select from several available fleet
    # metrics. Each policy specifies whether to scale up or scale down (and
    # by how much), so you need one policy for each type of action.
    #
    # For example, a policy may make the following statement: "If the
    # percentage of idle instances is greater than 20% for more than 15
    # minutes, then reduce the fleet capacity by 10%."
    #
    # A policy's rule statement has the following structure:
    #
    # If `[MetricName]` is `[ComparisonOperator]` `[Threshold]` for
    # `[EvaluationPeriods]` minutes, then `[ScalingAdjustmentType]` to/by
    # `[ScalingAdjustment]`.
    #
    # To implement the example, the rule statement would look like this:
    #
    # If `[PercentIdleInstances]` is `[GreaterThanThreshold]` `[20]` for
    # `[15]` minutes, then `[PercentChangeInCapacity]` to/by `[10]`.
    #
    # To create or update a scaling policy, specify a unique combination of
    # name and fleet ID, and set the policy type to "RuleBased". Specify
    # the parameter values for a policy rule statement. On a successful
    # request, the policy name is returned. Scaling policies are
    # automatically in force as soon as they're successfully created. If
    # the fleet's auto-scaling actions are temporarily suspended, the new
    # policy will be in force once the fleet actions are restarted.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-autoscaling.html
    #
    # @option params [required, String] :name
    #   A descriptive label that is associated with a fleet's scaling policy.
    #   Policy names do not need to be unique. A fleet can have only one
    #   scaling policy with the same name.
    #
    # @option params [required, String] :fleet_id
    #   A unique identifier for the fleet to apply this policy to. You can use
    #   either the fleet ID or ARN value. The fleet cannot be in any of the
    #   following statuses: ERROR or DELETING.
    #
    # @option params [Integer] :scaling_adjustment
    #   Amount of adjustment to make, based on the scaling adjustment type.
    #
    # @option params [String] :scaling_adjustment_type
    #   The type of adjustment to make to a fleet's instance count:
    #
    #   * **ChangeInCapacity** -- add (or subtract) the scaling adjustment
    #     value from the current instance count. Positive values scale up
    #     while negative values scale down.
    #
    #   * **ExactCapacity** -- set the instance count to the scaling
    #     adjustment value.
    #
    #   * **PercentChangeInCapacity** -- increase or reduce the current
    #     instance count by the scaling adjustment, read as a percentage.
    #     Positive values scale up while negative values scale down; for
    #     example, a value of "-10" scales the fleet down by 10%.
    #
    # @option params [Float] :threshold
    #   Metric value used to trigger a scaling event.
    #
    # @option params [String] :comparison_operator
    #   Comparison operator to use when measuring the metric against the
    #   threshold value.
    #
    # @option params [Integer] :evaluation_periods
    #   Length of time (in minutes) the metric must be at or beyond the
    #   threshold before a scaling event is triggered.
    #
    # @option params [required, String] :metric_name
    #   Name of the Amazon GameLift Servers-defined metric that is used to
    #   trigger a scaling adjustment. For detailed descriptions of fleet
    #   metrics, see [Monitor Amazon GameLift Servers with Amazon
    #   CloudWatch][1].
    #
    #   * **ActivatingGameSessions** -- Game sessions in the process of being
    #     created.
    #
    #   * **ActiveGameSessions** -- Game sessions that are currently running.
    #
    #   * **ActiveInstances** -- Fleet instances that are currently running at
    #     least one game session.
    #
    #   * **AvailableGameSessions** -- Additional game sessions that fleet
    #     could host simultaneously, given current capacity.
    #
    #   * **AvailablePlayerSessions** -- Empty player slots in currently
    #     active game sessions. This includes game sessions that are not
    #     currently accepting players. Reserved player slots are not included.
    #
    #   * **CurrentPlayerSessions** -- Player slots in active game sessions
    #     that are being used by a player or are reserved for a player.
    #
    #   * **IdleInstances** -- Active instances that are currently hosting
    #     zero game sessions.
    #
    #   * **PercentAvailableGameSessions** -- Unused percentage of the total
    #     number of game sessions that a fleet could host simultaneously,
    #     given current capacity. Use this metric for a target-based scaling
    #     policy.
    #
    #   * **PercentIdleInstances** -- Percentage of the total number of active
    #     instances that are hosting zero game sessions.
    #
    #   * **QueueDepth** -- Pending game session placement requests, in any
    #     queue, where the current fleet is the top-priority destination.
    #
    #   * **WaitTime** -- Current wait time for pending game session placement
    #     requests, in any queue, where the current fleet is the top-priority
    #     destination.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/monitoring-cloudwatch.html
    #
    # @option params [String] :policy_type
    #   The type of scaling policy to create. For a target-based policy, set
    #   the parameter *MetricName* to 'PercentAvailableGameSessions' and
    #   specify a *TargetConfiguration*. For a rule-based policy set the
    #   following parameters: *MetricName*, *ComparisonOperator*, *Threshold*,
    #   *EvaluationPeriods*, *ScalingAdjustmentType*, and *ScalingAdjustment*.
    #
    # @option params [Types::TargetConfiguration] :target_configuration
    #   An object that contains settings for a target-based scaling policy.
    #
    # @return [Types::PutScalingPolicyOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutScalingPolicyOutput#name #name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_scaling_policy({
    #     name: "NonZeroAndMaxString", # required
    #     fleet_id: "FleetIdOrArn", # required
    #     scaling_adjustment: 1,
    #     scaling_adjustment_type: "ChangeInCapacity", # accepts ChangeInCapacity, ExactCapacity, PercentChangeInCapacity
    #     threshold: 1.0,
    #     comparison_operator: "GreaterThanOrEqualToThreshold", # accepts GreaterThanOrEqualToThreshold, GreaterThanThreshold, LessThanThreshold, LessThanOrEqualToThreshold
    #     evaluation_periods: 1,
    #     metric_name: "ActivatingGameSessions", # required, accepts ActivatingGameSessions, ActiveGameSessions, ActiveInstances, AvailableGameSessions, AvailablePlayerSessions, CurrentPlayerSessions, IdleInstances, PercentAvailableGameSessions, PercentIdleInstances, QueueDepth, WaitTime, ConcurrentActivatableGameSessions
    #     policy_type: "RuleBased", # accepts RuleBased, TargetBased
    #     target_configuration: {
    #       target_value: 1.0, # required
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/PutScalingPolicy AWS API Documentation
    #
    # @overload put_scaling_policy(params = {})
    # @param [Hash] params ({})
    def put_scaling_policy(params = {}, options = {})
      req = build_request(:put_scaling_policy, params)
      req.send_request(options)
    end

    # Registers a compute resource in an Amazon GameLift Servers Anywhere
    # fleet.
    #
    # For an Anywhere fleet that's running the Amazon GameLift Servers
    # Agent, the Agent handles all compute registry tasks for you. For an
    # Anywhere fleet that doesn't use the Agent, call this operation to
    # register fleet computes.
    #
    # To register a compute, give the compute a name (must be unique within
    # the fleet) and specify the compute resource's DNS name or IP address.
    # Provide a fleet ID and a fleet location to associate with the compute
    # being registered. You can optionally include the path to a TLS
    # certificate on the compute resource.
    #
    # If successful, this operation returns compute details, including an
    # Amazon GameLift Servers SDK endpoint or Agent endpoint. Game server
    # processes running on the compute can use this endpoint to communicate
    # with the Amazon GameLift Servers service. Each server process includes
    # the SDK endpoint in its call to the Amazon GameLift Servers server SDK
    # action `InitSDK()`.
    #
    # To view compute details, call [DescribeCompute][1] with the compute
    # name.
    #
    # **Learn more**
    #
    # * [Create an Anywhere fleet][2]
    #
    # * [Test your integration][3]
    #
    # * [Server SDK reference guides][4] (for version 5.x)
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_DescribeCompute.html
    # [2]: https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-creating-anywhere.html
    # [3]: https://docs.aws.amazon.com/gamelift/latest/developerguide/integration-testing.html
    # [4]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-serversdk.html
    #
    # @option params [required, String] :fleet_id
    #   A unique identifier for the fleet to register the compute to. You can
    #   use either the fleet ID or ARN value.
    #
    # @option params [required, String] :compute_name
    #   A descriptive label for the compute resource.
    #
    # @option params [String] :certificate_path
    #   The path to a TLS certificate on your compute resource. Amazon
    #   GameLift Servers doesn't validate the path and certificate.
    #
    # @option params [String] :dns_name
    #   The DNS name of the compute resource. Amazon GameLift Servers requires
    #   either a DNS name or IP address.
    #
    # @option params [String] :ip_address
    #   The IP address of the compute resource. Amazon GameLift Servers
    #   requires either a DNS name or IP address. When registering an Anywhere
    #   fleet, an IP address is required.
    #
    # @option params [String] :location
    #   The name of a custom location to associate with the compute resource
    #   being registered. This parameter is required when registering a
    #   compute for an Anywhere fleet.
    #
    # @return [Types::RegisterComputeOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RegisterComputeOutput#compute #compute} => Types::Compute
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.register_compute({
    #     fleet_id: "FleetIdOrArn", # required
    #     compute_name: "ComputeName", # required
    #     certificate_path: "NonZeroAndMaxString",
    #     dns_name: "DnsNameInput",
    #     ip_address: "IpAddress",
    #     location: "LocationStringModel",
    #   })
    #
    # @example Response structure
    #
    #   resp.compute.fleet_id #=> String
    #   resp.compute.fleet_arn #=> String
    #   resp.compute.compute_name #=> String
    #   resp.compute.compute_arn #=> String
    #   resp.compute.ip_address #=> String
    #   resp.compute.dns_name #=> String
    #   resp.compute.compute_status #=> String, one of "PENDING", "ACTIVE", "TERMINATING", "IMPAIRED"
    #   resp.compute.location #=> String
    #   resp.compute.creation_time #=> Time
    #   resp.compute.operating_system #=> String, one of "WINDOWS_2012", "AMAZON_LINUX", "AMAZON_LINUX_2", "WINDOWS_2016", "AMAZON_LINUX_2023"
    #   resp.compute.type #=> String, one of "t2.micro", "t2.small", "t2.medium", "t2.large", "c3.large", "c3.xlarge", "c3.2xlarge", "c3.4xlarge", "c3.8xlarge", "c4.large", "c4.xlarge", "c4.2xlarge", "c4.4xlarge", "c4.8xlarge", "c5.large", "c5.xlarge", "c5.2xlarge", "c5.4xlarge", "c5.9xlarge", "c5.12xlarge", "c5.18xlarge", "c5.24xlarge", "c5a.large", "c5a.xlarge", "c5a.2xlarge", "c5a.4xlarge", "c5a.8xlarge", "c5a.12xlarge", "c5a.16xlarge", "c5a.24xlarge", "r3.large", "r3.xlarge", "r3.2xlarge", "r3.4xlarge", "r3.8xlarge", "r4.large", "r4.xlarge", "r4.2xlarge", "r4.4xlarge", "r4.8xlarge", "r4.16xlarge", "r5.large", "r5.xlarge", "r5.2xlarge", "r5.4xlarge", "r5.8xlarge", "r5.12xlarge", "r5.16xlarge", "r5.24xlarge", "r5a.large", "r5a.xlarge", "r5a.2xlarge", "r5a.4xlarge", "r5a.8xlarge", "r5a.12xlarge", "r5a.16xlarge", "r5a.24xlarge", "m3.medium", "m3.large", "m3.xlarge", "m3.2xlarge", "m4.large", "m4.xlarge", "m4.2xlarge", "m4.4xlarge", "m4.10xlarge", "m5.large", "m5.xlarge", "m5.2xlarge", "m5.4xlarge", "m5.8xlarge", "m5.12xlarge", "m5.16xlarge", "m5.24xlarge", "m5a.large", "m5a.xlarge", "m5a.2xlarge", "m5a.4xlarge", "m5a.8xlarge", "m5a.12xlarge", "m5a.16xlarge", "m5a.24xlarge", "c5d.large", "c5d.xlarge", "c5d.2xlarge", "c5d.4xlarge", "c5d.9xlarge", "c5d.12xlarge", "c5d.18xlarge", "c5d.24xlarge", "c6a.large", "c6a.xlarge", "c6a.2xlarge", "c6a.4xlarge", "c6a.8xlarge", "c6a.12xlarge", "c6a.16xlarge", "c6a.24xlarge", "c6i.large", "c6i.xlarge", "c6i.2xlarge", "c6i.4xlarge", "c6i.8xlarge", "c6i.12xlarge", "c6i.16xlarge", "c6i.24xlarge", "r5d.large", "r5d.xlarge", "r5d.2xlarge", "r5d.4xlarge", "r5d.8xlarge", "r5d.12xlarge", "r5d.16xlarge", "r5d.24xlarge", "m6g.medium", "m6g.large", "m6g.xlarge", "m6g.2xlarge", "m6g.4xlarge", "m6g.8xlarge", "m6g.12xlarge", "m6g.16xlarge", "c6g.medium", "c6g.large", "c6g.xlarge", "c6g.2xlarge", "c6g.4xlarge", "c6g.8xlarge", "c6g.12xlarge", "c6g.16xlarge", "r6g.medium", "r6g.large", "r6g.xlarge", "r6g.2xlarge", "r6g.4xlarge", "r6g.8xlarge", "r6g.12xlarge", "r6g.16xlarge", "c6gn.medium", "c6gn.large", "c6gn.xlarge", "c6gn.2xlarge", "c6gn.4xlarge", "c6gn.8xlarge", "c6gn.12xlarge", "c6gn.16xlarge", "c7g.medium", "c7g.large", "c7g.xlarge", "c7g.2xlarge", "c7g.4xlarge", "c7g.8xlarge", "c7g.12xlarge", "c7g.16xlarge", "r7g.medium", "r7g.large", "r7g.xlarge", "r7g.2xlarge", "r7g.4xlarge", "r7g.8xlarge", "r7g.12xlarge", "r7g.16xlarge", "m7g.medium", "m7g.large", "m7g.xlarge", "m7g.2xlarge", "m7g.4xlarge", "m7g.8xlarge", "m7g.12xlarge", "m7g.16xlarge", "g5g.xlarge", "g5g.2xlarge", "g5g.4xlarge", "g5g.8xlarge", "g5g.16xlarge", "r6i.large", "r6i.xlarge", "r6i.2xlarge", "r6i.4xlarge", "r6i.8xlarge", "r6i.12xlarge", "r6i.16xlarge", "c6gd.medium", "c6gd.large", "c6gd.xlarge", "c6gd.2xlarge", "c6gd.4xlarge", "c6gd.8xlarge", "c6gd.12xlarge", "c6gd.16xlarge", "c6in.large", "c6in.xlarge", "c6in.2xlarge", "c6in.4xlarge", "c6in.8xlarge", "c6in.12xlarge", "c6in.16xlarge", "c7a.medium", "c7a.large", "c7a.xlarge", "c7a.2xlarge", "c7a.4xlarge", "c7a.8xlarge", "c7a.12xlarge", "c7a.16xlarge", "c7gd.medium", "c7gd.large", "c7gd.xlarge", "c7gd.2xlarge", "c7gd.4xlarge", "c7gd.8xlarge", "c7gd.12xlarge", "c7gd.16xlarge", "c7gn.medium", "c7gn.large", "c7gn.xlarge", "c7gn.2xlarge", "c7gn.4xlarge", "c7gn.8xlarge", "c7gn.12xlarge", "c7gn.16xlarge", "c7i.large", "c7i.xlarge", "c7i.2xlarge", "c7i.4xlarge", "c7i.8xlarge", "c7i.12xlarge", "c7i.16xlarge", "m6a.large", "m6a.xlarge", "m6a.2xlarge", "m6a.4xlarge", "m6a.8xlarge", "m6a.12xlarge", "m6a.16xlarge", "m6gd.medium", "m6gd.large", "m6gd.xlarge", "m6gd.2xlarge", "m6gd.4xlarge", "m6gd.8xlarge", "m6gd.12xlarge", "m6gd.16xlarge", "m6i.large", "m6i.xlarge", "m6i.2xlarge", "m6i.4xlarge", "m6i.8xlarge", "m6i.12xlarge", "m6i.16xlarge", "m7a.medium", "m7a.large", "m7a.xlarge", "m7a.2xlarge", "m7a.4xlarge", "m7a.8xlarge", "m7a.12xlarge", "m7a.16xlarge", "m7gd.medium", "m7gd.large", "m7gd.xlarge", "m7gd.2xlarge", "m7gd.4xlarge", "m7gd.8xlarge", "m7gd.12xlarge", "m7gd.16xlarge", "m7i.large", "m7i.xlarge", "m7i.2xlarge", "m7i.4xlarge", "m7i.8xlarge", "m7i.12xlarge", "m7i.16xlarge", "r6gd.medium", "r6gd.large", "r6gd.xlarge", "r6gd.2xlarge", "r6gd.4xlarge", "r6gd.8xlarge", "r6gd.12xlarge", "r6gd.16xlarge", "r7a.medium", "r7a.large", "r7a.xlarge", "r7a.2xlarge", "r7a.4xlarge", "r7a.8xlarge", "r7a.12xlarge", "r7a.16xlarge", "r7gd.medium", "r7gd.large", "r7gd.xlarge", "r7gd.2xlarge", "r7gd.4xlarge", "r7gd.8xlarge", "r7gd.12xlarge", "r7gd.16xlarge", "r7i.large", "r7i.xlarge", "r7i.2xlarge", "r7i.4xlarge", "r7i.8xlarge", "r7i.12xlarge", "r7i.16xlarge", "r7i.24xlarge", "r7i.48xlarge", "c5ad.large", "c5ad.xlarge", "c5ad.2xlarge", "c5ad.4xlarge", "c5ad.8xlarge", "c5ad.12xlarge", "c5ad.16xlarge", "c5ad.24xlarge", "c5n.large", "c5n.xlarge", "c5n.2xlarge", "c5n.4xlarge", "c5n.9xlarge", "c5n.18xlarge", "r5ad.large", "r5ad.xlarge", "r5ad.2xlarge", "r5ad.4xlarge", "r5ad.8xlarge", "r5ad.12xlarge", "r5ad.16xlarge", "r5ad.24xlarge", "c6id.large", "c6id.xlarge", "c6id.2xlarge", "c6id.4xlarge", "c6id.8xlarge", "c6id.12xlarge", "c6id.16xlarge", "c6id.24xlarge", "c6id.32xlarge", "c8g.medium", "c8g.large", "c8g.xlarge", "c8g.2xlarge", "c8g.4xlarge", "c8g.8xlarge", "c8g.12xlarge", "c8g.16xlarge", "c8g.24xlarge", "c8g.48xlarge", "m5ad.large", "m5ad.xlarge", "m5ad.2xlarge", "m5ad.4xlarge", "m5ad.8xlarge", "m5ad.12xlarge", "m5ad.16xlarge", "m5ad.24xlarge", "m5d.large", "m5d.xlarge", "m5d.2xlarge", "m5d.4xlarge", "m5d.8xlarge", "m5d.12xlarge", "m5d.16xlarge", "m5d.24xlarge", "m5dn.large", "m5dn.xlarge", "m5dn.2xlarge", "m5dn.4xlarge", "m5dn.8xlarge", "m5dn.12xlarge", "m5dn.16xlarge", "m5dn.24xlarge", "m5n.large", "m5n.xlarge", "m5n.2xlarge", "m5n.4xlarge", "m5n.8xlarge", "m5n.12xlarge", "m5n.16xlarge", "m5n.24xlarge", "m6id.large", "m6id.xlarge", "m6id.2xlarge", "m6id.4xlarge", "m6id.8xlarge", "m6id.12xlarge", "m6id.16xlarge", "m6id.24xlarge", "m6id.32xlarge", "m6idn.large", "m6idn.xlarge", "m6idn.2xlarge", "m6idn.4xlarge", "m6idn.8xlarge", "m6idn.12xlarge", "m6idn.16xlarge", "m6idn.24xlarge", "m6idn.32xlarge", "m6in.large", "m6in.xlarge", "m6in.2xlarge", "m6in.4xlarge", "m6in.8xlarge", "m6in.12xlarge", "m6in.16xlarge", "m6in.24xlarge", "m6in.32xlarge", "m8g.medium", "m8g.large", "m8g.xlarge", "m8g.2xlarge", "m8g.4xlarge", "m8g.8xlarge", "m8g.12xlarge", "m8g.16xlarge", "m8g.24xlarge", "m8g.48xlarge", "r5dn.large", "r5dn.xlarge", "r5dn.2xlarge", "r5dn.4xlarge", "r5dn.8xlarge", "r5dn.12xlarge", "r5dn.16xlarge", "r5dn.24xlarge", "r5n.large", "r5n.xlarge", "r5n.2xlarge", "r5n.4xlarge", "r5n.8xlarge", "r5n.12xlarge", "r5n.16xlarge", "r5n.24xlarge", "r6a.large", "r6a.xlarge", "r6a.2xlarge", "r6a.4xlarge", "r6a.8xlarge", "r6a.12xlarge", "r6a.16xlarge", "r6a.24xlarge", "r6a.32xlarge", "r6a.48xlarge", "r6id.large", "r6id.xlarge", "r6id.2xlarge", "r6id.4xlarge", "r6id.8xlarge", "r6id.12xlarge", "r6id.16xlarge", "r6id.24xlarge", "r6id.32xlarge", "r6idn.large", "r6idn.xlarge", "r6idn.2xlarge", "r6idn.4xlarge", "r6idn.8xlarge", "r6idn.12xlarge", "r6idn.16xlarge", "r6idn.24xlarge", "r6idn.32xlarge", "r6in.large", "r6in.xlarge", "r6in.2xlarge", "r6in.4xlarge", "r6in.8xlarge", "r6in.12xlarge", "r6in.16xlarge", "r6in.24xlarge", "r6in.32xlarge", "r8g.medium", "r8g.large", "r8g.xlarge", "r8g.2xlarge", "r8g.4xlarge", "r8g.8xlarge", "r8g.12xlarge", "r8g.16xlarge", "r8g.24xlarge", "r8g.48xlarge", "m4.16xlarge", "c6a.32xlarge", "c6a.48xlarge", "c6i.32xlarge", "r6i.24xlarge", "r6i.32xlarge", "c6in.24xlarge", "c6in.32xlarge", "c7a.24xlarge", "c7a.32xlarge", "c7a.48xlarge", "c7i.24xlarge", "c7i.48xlarge", "m6a.24xlarge", "m6a.32xlarge", "m6a.48xlarge", "m6i.24xlarge", "m6i.32xlarge", "m7a.24xlarge", "m7a.32xlarge", "m7a.48xlarge", "m7i.24xlarge", "m7i.48xlarge", "r7a.24xlarge", "r7a.32xlarge", "r7a.48xlarge"
    #   resp.compute.game_lift_service_sdk_endpoint #=> String
    #   resp.compute.game_lift_agent_endpoint #=> String
    #   resp.compute.instance_id #=> String
    #   resp.compute.container_attributes #=> Array
    #   resp.compute.container_attributes[0].container_name #=> String
    #   resp.compute.container_attributes[0].container_runtime_id #=> String
    #   resp.compute.game_server_container_group_definition_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/RegisterCompute AWS API Documentation
    #
    # @overload register_compute(params = {})
    # @param [Hash] params ({})
    def register_compute(params = {}, options = {})
      req = build_request(:register_compute, params)
      req.send_request(options)
    end

    # **This operation is used with the Amazon GameLift Servers FleetIQ
    # solution and game server groups.**
    #
    # Creates a new game server resource and notifies Amazon GameLift
    # Servers FleetIQ that the game server is ready to host gameplay and
    # players. This operation is called by a game server process that is
    # running on an instance in a game server group. Registering game
    # servers enables Amazon GameLift Servers FleetIQ to track available
    # game servers and enables game clients and services to claim a game
    # server for a new game session.
    #
    # To register a game server, identify the game server group and instance
    # where the game server is running, and provide a unique identifier for
    # the game server. You can also include connection and game server data.
    #
    # Once a game server is successfully registered, it is put in status
    # `AVAILABLE`. A request to register a game server may fail if the
    # instance it is running on is in the process of shutting down as part
    # of instance balancing or scale-down activity.
    #
    # **Learn more**
    #
    # [Amazon GameLift Servers FleetIQ Guide][1]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/gsg-intro.html
    #
    # @option params [required, String] :game_server_group_name
    #   A unique identifier for the game server group where the game server is
    #   running.
    #
    # @option params [required, String] :game_server_id
    #   A custom string that uniquely identifies the game server to register.
    #   Game server IDs are developer-defined and must be unique across all
    #   game server groups in your Amazon Web Services account.
    #
    # @option params [required, String] :instance_id
    #   The unique identifier for the instance where the game server is
    #   running. This ID is available in the instance metadata. EC2 instance
    #   IDs use a 17-character format, for example: `i-1234567890abcdef0`.
    #
    # @option params [String] :connection_info
    #   Information that is needed to make inbound client connections to the
    #   game server. This might include the IP address and port, DNS name, and
    #   other information.
    #
    # @option params [String] :game_server_data
    #   A set of custom game server properties, formatted as a single string
    #   value. This data is passed to a game client or service when it
    #   requests information on game servers.
    #
    # @return [Types::RegisterGameServerOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RegisterGameServerOutput#game_server #game_server} => Types::GameServer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.register_game_server({
    #     game_server_group_name: "GameServerGroupNameOrArn", # required
    #     game_server_id: "GameServerId", # required
    #     instance_id: "GameServerInstanceId", # required
    #     connection_info: "GameServerConnectionInfo",
    #     game_server_data: "GameServerData",
    #   })
    #
    # @example Response structure
    #
    #   resp.game_server.game_server_group_name #=> String
    #   resp.game_server.game_server_group_arn #=> String
    #   resp.game_server.game_server_id #=> String
    #   resp.game_server.instance_id #=> String
    #   resp.game_server.connection_info #=> String
    #   resp.game_server.game_server_data #=> String
    #   resp.game_server.claim_status #=> String, one of "CLAIMED"
    #   resp.game_server.utilization_status #=> String, one of "AVAILABLE", "UTILIZED"
    #   resp.game_server.registration_time #=> Time
    #   resp.game_server.last_claim_time #=> Time
    #   resp.game_server.last_health_check_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/RegisterGameServer AWS API Documentation
    #
    # @overload register_game_server(params = {})
    # @param [Hash] params ({})
    def register_game_server(params = {}, options = {})
      req = build_request(:register_game_server, params)
      req.send_request(options)
    end

    # Retrieves a fresh set of credentials for use when uploading a new set
    # of game build files to Amazon GameLift Servers's Amazon S3. This is
    # done as part of the build creation process; see [CreateBuild][1].
    #
    # To request new credentials, specify the build ID as returned with an
    # initial `CreateBuild` request. If successful, a new set of credentials
    # are returned, along with the S3 storage location associated with the
    # build ID.
    #
    # **Learn more**
    #
    # [ Create a Build with Files in S3][2]
    #
    # [All APIs by task][3]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_CreateBuild.html
    # [2]: https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-build-cli-uploading.html#gamelift-build-cli-uploading-create-build
    # [3]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets
    #
    # @option params [required, String] :build_id
    #   A unique identifier for the build to get credentials for. You can use
    #   either the build ID or ARN value.
    #
    # @return [Types::RequestUploadCredentialsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RequestUploadCredentialsOutput#upload_credentials #upload_credentials} => Types::AwsCredentials
    #   * {Types::RequestUploadCredentialsOutput#storage_location #storage_location} => Types::S3Location
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.request_upload_credentials({
    #     build_id: "BuildIdOrArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.upload_credentials.access_key_id #=> String
    #   resp.upload_credentials.secret_access_key #=> String
    #   resp.upload_credentials.session_token #=> String
    #   resp.storage_location.bucket #=> String
    #   resp.storage_location.key #=> String
    #   resp.storage_location.role_arn #=> String
    #   resp.storage_location.object_version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/RequestUploadCredentials AWS API Documentation
    #
    # @overload request_upload_credentials(params = {})
    # @param [Hash] params ({})
    def request_upload_credentials(params = {}, options = {})
      req = build_request(:request_upload_credentials, params)
      req.send_request(options)
    end

    # Attempts to retrieve a fleet ID that is associated with an alias.
    # Specify a unique alias identifier.
    #
    # If the alias has a `SIMPLE` routing strategy, Amazon GameLift Servers
    # returns a fleet ID. If the alias has a `TERMINAL` routing strategy,
    # the result is a `TerminalRoutingStrategyException`.
    #
    # **Related actions**
    #
    # [All APIs by task][1]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets
    #
    # @option params [required, String] :alias_id
    #   The unique identifier of the alias that you want to retrieve a fleet
    #   ID for. You can use either the alias ID or ARN value.
    #
    # @return [Types::ResolveAliasOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ResolveAliasOutput#fleet_id #fleet_id} => String
    #   * {Types::ResolveAliasOutput#fleet_arn #fleet_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.resolve_alias({
    #     alias_id: "AliasIdOrArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.fleet_id #=> String
    #   resp.fleet_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/ResolveAlias AWS API Documentation
    #
    # @overload resolve_alias(params = {})
    # @param [Hash] params ({})
    def resolve_alias(params = {}, options = {})
      req = build_request(:resolve_alias, params)
      req.send_request(options)
    end

    # **This operation is used with the Amazon GameLift Servers FleetIQ
    # solution and game server groups.**
    #
    # Reinstates activity on a game server group after it has been
    # suspended. A game server group might be suspended by the
    # [SuspendGameServerGroup](gamelift/latest/apireference/API_SuspendGameServerGroup.html)
    # operation, or it might be suspended involuntarily due to a
    # configuration problem. In the second case, you can manually resume
    # activity on the group once the configuration problem has been
    # resolved. Refer to the game server group status and status reason for
    # more information on why group activity is suspended.
    #
    # To resume activity, specify a game server group ARN and the type of
    # activity to be resumed. If successful, a `GameServerGroup` object is
    # returned showing that the resumed activity is no longer listed in
    # `SuspendedActions`.
    #
    # **Learn more**
    #
    # [Amazon GameLift Servers FleetIQ Guide][1]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/gsg-intro.html
    #
    # @option params [required, String] :game_server_group_name
    #   A unique identifier for the game server group. Use either the name or
    #   ARN value.
    #
    # @option params [required, Array<String>] :resume_actions
    #   The activity to resume for this game server group.
    #
    # @return [Types::ResumeGameServerGroupOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ResumeGameServerGroupOutput#game_server_group #game_server_group} => Types::GameServerGroup
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.resume_game_server_group({
    #     game_server_group_name: "GameServerGroupNameOrArn", # required
    #     resume_actions: ["REPLACE_INSTANCE_TYPES"], # required, accepts REPLACE_INSTANCE_TYPES
    #   })
    #
    # @example Response structure
    #
    #   resp.game_server_group.game_server_group_name #=> String
    #   resp.game_server_group.game_server_group_arn #=> String
    #   resp.game_server_group.role_arn #=> String
    #   resp.game_server_group.instance_definitions #=> Array
    #   resp.game_server_group.instance_definitions[0].instance_type #=> String, one of "c4.large", "c4.xlarge", "c4.2xlarge", "c4.4xlarge", "c4.8xlarge", "c5.large", "c5.xlarge", "c5.2xlarge", "c5.4xlarge", "c5.9xlarge", "c5.12xlarge", "c5.18xlarge", "c5.24xlarge", "c5a.large", "c5a.xlarge", "c5a.2xlarge", "c5a.4xlarge", "c5a.8xlarge", "c5a.12xlarge", "c5a.16xlarge", "c5a.24xlarge", "c6g.medium", "c6g.large", "c6g.xlarge", "c6g.2xlarge", "c6g.4xlarge", "c6g.8xlarge", "c6g.12xlarge", "c6g.16xlarge", "r4.large", "r4.xlarge", "r4.2xlarge", "r4.4xlarge", "r4.8xlarge", "r4.16xlarge", "r5.large", "r5.xlarge", "r5.2xlarge", "r5.4xlarge", "r5.8xlarge", "r5.12xlarge", "r5.16xlarge", "r5.24xlarge", "r5a.large", "r5a.xlarge", "r5a.2xlarge", "r5a.4xlarge", "r5a.8xlarge", "r5a.12xlarge", "r5a.16xlarge", "r5a.24xlarge", "r6g.medium", "r6g.large", "r6g.xlarge", "r6g.2xlarge", "r6g.4xlarge", "r6g.8xlarge", "r6g.12xlarge", "r6g.16xlarge", "m4.large", "m4.xlarge", "m4.2xlarge", "m4.4xlarge", "m4.10xlarge", "m5.large", "m5.xlarge", "m5.2xlarge", "m5.4xlarge", "m5.8xlarge", "m5.12xlarge", "m5.16xlarge", "m5.24xlarge", "m5a.large", "m5a.xlarge", "m5a.2xlarge", "m5a.4xlarge", "m5a.8xlarge", "m5a.12xlarge", "m5a.16xlarge", "m5a.24xlarge", "m6g.medium", "m6g.large", "m6g.xlarge", "m6g.2xlarge", "m6g.4xlarge", "m6g.8xlarge", "m6g.12xlarge", "m6g.16xlarge"
    #   resp.game_server_group.instance_definitions[0].weighted_capacity #=> String
    #   resp.game_server_group.balancing_strategy #=> String, one of "SPOT_ONLY", "SPOT_PREFERRED", "ON_DEMAND_ONLY"
    #   resp.game_server_group.game_server_protection_policy #=> String, one of "NO_PROTECTION", "FULL_PROTECTION"
    #   resp.game_server_group.auto_scaling_group_arn #=> String
    #   resp.game_server_group.status #=> String, one of "NEW", "ACTIVATING", "ACTIVE", "DELETE_SCHEDULED", "DELETING", "DELETED", "ERROR"
    #   resp.game_server_group.status_reason #=> String
    #   resp.game_server_group.suspended_actions #=> Array
    #   resp.game_server_group.suspended_actions[0] #=> String, one of "REPLACE_INSTANCE_TYPES"
    #   resp.game_server_group.creation_time #=> Time
    #   resp.game_server_group.last_updated_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/ResumeGameServerGroup AWS API Documentation
    #
    # @overload resume_game_server_group(params = {})
    # @param [Hash] params ({})
    def resume_game_server_group(params = {}, options = {})
      req = build_request(:resume_game_server_group, params)
      req.send_request(options)
    end

    # Retrieves all active game sessions that match a set of search criteria
    # and sorts them into a specified order.
    #
    # This operation is not designed to continually track game session
    # status because that practice can cause you to exceed your API limit
    # and generate errors. Instead, configure an Amazon Simple Notification
    # Service (Amazon SNS) topic to receive notifications from a matchmaker
    # or a game session placement queue.
    #
    # When searching for game sessions, you specify exactly where you want
    # to search and provide a search filter expression, a sort expression,
    # or both. A search request can search only one fleet, but it can search
    # all of a fleet's locations.
    #
    # This operation can be used in the following ways:
    #
    # * To search all game sessions that are currently running on all
    #   locations in a fleet, provide a fleet or alias ID. This approach
    #   returns game sessions in the fleet's home Region and all remote
    #   locations that fit the search criteria.
    #
    # * To search all game sessions that are currently running on a specific
    #   fleet location, provide a fleet or alias ID and a location name. For
    #   location, you can specify a fleet's home Region or any remote
    #   location.
    #
    # Use the pagination parameters to retrieve results as a set of
    # sequential pages.
    #
    # If successful, a `GameSession` object is returned for each game
    # session that matches the request. Search finds game sessions that are
    # in `ACTIVE` status only. To retrieve information on game sessions in
    # other statuses, use [DescribeGameSessions][1].
    #
    # To set search and sort criteria, create a filter expression using the
    # following game session attributes. For game session search examples,
    # see the Examples section of this topic.
    #
    # * **gameSessionId** -- A unique identifier for the game session. You
    #   can use either a `GameSessionId` or `GameSessionArn` value.
    #
    # * **gameSessionName** -- Name assigned to a game session. Game session
    #   names do not need to be unique to a game session.
    #
    # * **gameSessionProperties** -- A set of key-value pairs that can store
    #   custom data in a game session. For example: `{"Key": "difficulty",
    #   "Value": "novice"}`. The filter expression must specify the
    #   [https://docs.aws.amazon.com/gamelift/latest/apireference/API\_GameProperty][2]
    #   -- a `Key` and a string `Value` to search for the game sessions.
    #
    #   For example, to search for the above key-value pair, specify the
    #   following search filter: `gameSessionProperties.difficulty =
    #   "novice"`. All game property values are searched as strings.
    #
    #   For examples of searching game sessions, see the ones below, and
    #   also see [Search game sessions by game property][3].
    #
    # * **maximumSessions** -- Maximum number of player sessions allowed for
    #   a game session.
    #
    # * **creationTimeMillis** -- Value indicating when a game session was
    #   created. It is expressed in Unix time as milliseconds.
    #
    # * **playerSessionCount** -- Number of players currently connected to a
    #   game session. This value changes rapidly as players join the session
    #   or drop out.
    #
    # * **hasAvailablePlayerSessions** -- Boolean value indicating whether a
    #   game session has reached its maximum number of players. It is highly
    #   recommended that all search requests include this filter attribute
    #   to optimize search performance and return only sessions that players
    #   can join.
    #
    # <note markdown="1"> Returned values for `playerSessionCount` and
    # `hasAvailablePlayerSessions` change quickly as players join sessions
    # and others drop out. Results should be considered a snapshot in time.
    # Be sure to refresh search results often, and handle sessions that fill
    # up before a player can join.
    #
    #  </note>
    #
    # [All APIs by task][4]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_DescribeGameSessions.html
    # [2]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_GameProperty
    # [3]: https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-client-api.html#game-properties-search
    # [4]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets
    #
    # @option params [String] :fleet_id
    #   A unique identifier for the fleet to search for active game sessions.
    #   You can use either the fleet ID or ARN value. Each request must
    #   reference either a fleet ID or alias ID, but not both.
    #
    # @option params [String] :alias_id
    #   A unique identifier for the alias associated with the fleet to search
    #   for active game sessions. You can use either the alias ID or ARN
    #   value. Each request must reference either a fleet ID or alias ID, but
    #   not both.
    #
    # @option params [String] :location
    #   A fleet location to search for game sessions. You can specify a
    #   fleet's home Region or a remote location. Use the Amazon Web Services
    #   Region code format, such as `us-west-2`.
    #
    # @option params [String] :filter_expression
    #   String containing the search criteria for the session search. If no
    #   filter expression is included, the request returns results for all
    #   game sessions in the fleet that are in `ACTIVE` status.
    #
    #   A filter expression can contain one or multiple conditions. Each
    #   condition consists of the following:
    #
    #   * **Operand** -- Name of a game session attribute. Valid values are
    #     `gameSessionName`, `gameSessionId`, `gameSessionProperties`,
    #     `maximumSessions`, `creationTimeMillis`, `playerSessionCount`,
    #     `hasAvailablePlayerSessions`.
    #
    #   * **Comparator** -- Valid comparators are: `=`, `<>`, `<`, `>`, `<=`,
    #     `>=`.
    #
    #   * **Value** -- Value to be searched for. Values may be numbers,
    #     boolean values (true/false) or strings depending on the operand.
    #     String values are case sensitive and must be enclosed in single
    #     quotes. Special characters must be escaped. Boolean and string
    #     values can only be used with the comparators `=` and `<>`. For
    #     example, the following filter expression searches on
    #     `gameSessionName`: "`FilterExpression": "gameSessionName =
    #     'Matt\'s Awesome Game 1'"`.
    #
    #   To chain multiple conditions in a single expression, use the logical
    #   keywords `AND`, `OR`, and `NOT` and parentheses as needed. For
    #   example: `x AND y AND NOT z`, `NOT (x OR y)`.
    #
    #   Session search evaluates conditions from left to right using the
    #   following precedence rules:
    #
    #   1.  `=`, `<>`, `<`, `>`, `<=`, `>=`
    #
    #   2.  Parentheses
    #
    #   3.  NOT
    #
    #   4.  AND
    #
    #   5.  OR
    #
    #   For example, this filter expression retrieves game sessions hosting at
    #   least ten players that have an open player slot: `"maximumSessions>=10
    #   AND hasAvailablePlayerSessions=true"`.
    #
    # @option params [String] :sort_expression
    #   Instructions on how to sort the search results. If no sort expression
    #   is included, the request returns results in random order. A sort
    #   expression consists of the following elements:
    #
    #   * **Operand** -- Name of a game session attribute. Valid values are
    #     `gameSessionName`, `gameSessionId`, `gameSessionProperties`,
    #     `maximumSessions`, `creationTimeMillis`, `playerSessionCount`,
    #     `hasAvailablePlayerSessions`.
    #
    #   * **Order** -- Valid sort orders are `ASC` (ascending) and `DESC`
    #     (descending).
    #
    #   For example, this sort expression returns the oldest active sessions
    #   first: `"SortExpression": "creationTimeMillis ASC"`. Results with a
    #   null value for the sort operand are returned at the end of the list.
    #
    # @option params [Integer] :limit
    #   The maximum number of results to return. Use this parameter with
    #   `NextToken` to get results as a set of sequential pages. The maximum
    #   number of results returned is 20, even if this value is not set or is
    #   set higher than 20.
    #
    # @option params [String] :next_token
    #   A token that indicates the start of the next sequential page of
    #   results. Use the token that is returned with a previous call to this
    #   operation. To start at the beginning of the result set, do not specify
    #   a value.
    #
    # @return [Types::SearchGameSessionsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchGameSessionsOutput#game_sessions #game_sessions} => Array&lt;Types::GameSession&gt;
    #   * {Types::SearchGameSessionsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_game_sessions({
    #     fleet_id: "FleetIdOrArn",
    #     alias_id: "AliasIdOrArn",
    #     location: "LocationStringModel",
    #     filter_expression: "NonZeroAndMaxString",
    #     sort_expression: "NonZeroAndMaxString",
    #     limit: 1,
    #     next_token: "NonZeroAndMaxString",
    #   })
    #
    # @example Response structure
    #
    #   resp.game_sessions #=> Array
    #   resp.game_sessions[0].game_session_id #=> String
    #   resp.game_sessions[0].name #=> String
    #   resp.game_sessions[0].fleet_id #=> String
    #   resp.game_sessions[0].fleet_arn #=> String
    #   resp.game_sessions[0].creation_time #=> Time
    #   resp.game_sessions[0].termination_time #=> Time
    #   resp.game_sessions[0].current_player_session_count #=> Integer
    #   resp.game_sessions[0].maximum_player_session_count #=> Integer
    #   resp.game_sessions[0].status #=> String, one of "ACTIVE", "ACTIVATING", "TERMINATED", "TERMINATING", "ERROR"
    #   resp.game_sessions[0].status_reason #=> String, one of "INTERRUPTED", "TRIGGERED_ON_PROCESS_TERMINATE", "FORCE_TERMINATED"
    #   resp.game_sessions[0].game_properties #=> Array
    #   resp.game_sessions[0].game_properties[0].key #=> String
    #   resp.game_sessions[0].game_properties[0].value #=> String
    #   resp.game_sessions[0].ip_address #=> String
    #   resp.game_sessions[0].dns_name #=> String
    #   resp.game_sessions[0].port #=> Integer
    #   resp.game_sessions[0].player_session_creation_policy #=> String, one of "ACCEPT_ALL", "DENY_ALL"
    #   resp.game_sessions[0].creator_id #=> String
    #   resp.game_sessions[0].game_session_data #=> String
    #   resp.game_sessions[0].matchmaker_data #=> String
    #   resp.game_sessions[0].location #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/SearchGameSessions AWS API Documentation
    #
    # @overload search_game_sessions(params = {})
    # @param [Hash] params ({})
    def search_game_sessions(params = {}, options = {})
      req = build_request(:search_game_sessions, params)
      req.send_request(options)
    end

    # Resumes certain types of activity on fleet instances that were
    # suspended with [StopFleetActions][1]. For multi-location fleets, fleet
    # actions are managed separately for each location. Currently, this
    # operation is used to restart a fleet's auto-scaling activity.
    #
    # This operation can be used in the following ways:
    #
    # * To restart actions on instances in the fleet's home Region, provide
    #   a fleet ID and the type of actions to resume.
    #
    # * To restart actions on instances in one of the fleet's remote
    #   locations, provide a fleet ID, a location name, and the type of
    #   actions to resume.
    #
    # If successful, Amazon GameLift Servers once again initiates scaling
    # events as triggered by the fleet's scaling policies. If actions on
    # the fleet location were never stopped, this operation will have no
    # effect.
    #
    # **Learn more**
    #
    # [Setting up Amazon GameLift Servers fleets][2]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_StopFleetActions.html
    # [2]: https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html
    #
    # @option params [required, String] :fleet_id
    #   A unique identifier for the fleet to restart actions on. You can use
    #   either the fleet ID or ARN value.
    #
    # @option params [required, Array<String>] :actions
    #   List of actions to restart on the fleet.
    #
    # @option params [String] :location
    #   The fleet location to restart fleet actions for. Specify a location in
    #   the form of an Amazon Web Services Region code, such as `us-west-2`.
    #
    # @return [Types::StartFleetActionsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartFleetActionsOutput#fleet_id #fleet_id} => String
    #   * {Types::StartFleetActionsOutput#fleet_arn #fleet_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_fleet_actions({
    #     fleet_id: "FleetIdOrArn", # required
    #     actions: ["AUTO_SCALING"], # required, accepts AUTO_SCALING
    #     location: "LocationStringModel",
    #   })
    #
    # @example Response structure
    #
    #   resp.fleet_id #=> String
    #   resp.fleet_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/StartFleetActions AWS API Documentation
    #
    # @overload start_fleet_actions(params = {})
    # @param [Hash] params ({})
    def start_fleet_actions(params = {}, options = {})
      req = build_request(:start_fleet_actions, params)
      req.send_request(options)
    end

    # Makes a request to start a new game session using a game session
    # queue. When processing a placement request, Amazon GameLift Servers
    # looks for the best possible available resource to host the game
    # session, based on how the queue is configured to prioritize factors
    # such as resource cost, latency, and location. After selecting an
    # available resource, Amazon GameLift Servers prompts the resource to
    # start a game session. A placement request can include a list of
    # players to create a set of player sessions. The request can also
    # include information to pass to the new game session, such as to
    # specify a game map or other options.
    #
    # **Request options**
    #
    # Use this operation to make the following types of requests.
    #
    # * Request a placement using the queue's default prioritization
    #   process (see the default prioritization described in
    #   [PriorityConfiguration][1]). Include these required parameters:
    #
    #   * `GameSessionQueueName`
    #
    #   * `MaximumPlayerSessionCount`
    #
    #   * `PlacementID`
    # * Request a placement and prioritize based on latency. Include these
    #   parameters:
    #
    #   * Required parameters `GameSessionQueueName`,
    #     `MaximumPlayerSessionCount`, `PlacementID`.
    #
    #   * `PlayerLatencies`. Include a set of latency values for
    #     destinations in the queue. When a request includes latency data,
    #     Amazon GameLift Servers automatically reorder the queue's
    #     locations priority list based on lowest available latency values.
    #     If a request includes latency data for multiple players, Amazon
    #     GameLift Servers calculates each location's average latency for
    #     all players and reorders to find the lowest latency across all
    #     players.
    #
    #   * Don't include `PriorityConfigurationOverride`.
    #   ^
    #
    #   * Prioritize based on a custom list of locations. If you're using a
    #     queue that's configured to prioritize location first (see
    #     [PriorityConfiguration][1] for game session queues), you can
    #     optionally use the *PriorityConfigurationOverride* parameter to
    #     substitute a different location priority list for this placement
    #     request. Amazon GameLift Servers searches each location on the
    #     priority override list to find an available hosting resource for
    #     the new game session. Specify a fallback strategy to use in the
    #     event that Amazon GameLift Servers fails to place the game session
    #     in any of the locations on the override list.
    #
    #   ^
    # * Request a placement and prioritized based on a custom list of
    #   locations.
    #
    # * You can request new player sessions for a group of players. Include
    #   the *DesiredPlayerSessions* parameter and include at minimum a
    #   unique player ID for each. You can also include player-specific data
    #   to pass to the new game session.
    #
    # **Result**
    #
    # If successful, this operation generates a new game session placement
    # request and adds it to the game session queue for processing. You can
    # track the status of individual placement requests by calling
    # [DescribeGameSessionPlacement][2] or by monitoring queue
    # notifications. When the request status is `FULFILLED`, a new game
    # session has started and the placement request is updated with
    # connection information for the game session (IP address and port). If
    # the request included player session data, Amazon GameLift Servers
    # creates a player session for each player ID in the request.
    #
    # The request results in a `InvalidRequestException` in the following
    # situations:
    #
    # * If the request includes both *PlayerLatencies* and
    #   *PriorityConfigurationOverride* parameters.
    #
    # * If the request includes the *PriorityConfigurationOverride*
    #   parameter and specifies a queue that doesn't prioritize locations.
    #
    # Amazon GameLift Servers continues to retry each placement request
    # until it reaches the queue's timeout setting. If a request times out,
    # you can resubmit the request to the same queue or try a different
    # queue.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_PriorityConfiguration.html
    # [2]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_DescribeGameSessionPlacement.html
    #
    # @option params [required, String] :placement_id
    #   A unique identifier to assign to the new game session placement. This
    #   value is developer-defined. The value must be unique across all
    #   Regions and cannot be reused.
    #
    # @option params [required, String] :game_session_queue_name
    #   Name of the queue to use to place the new game session. You can use
    #   either the queue name or ARN value.
    #
    # @option params [Array<Types::GameProperty>] :game_properties
    #   A set of key-value pairs that can store custom data in a game session.
    #   For example: `{"Key": "difficulty", "Value": "novice"}`.
    #
    # @option params [required, Integer] :maximum_player_session_count
    #   The maximum number of players that can be connected simultaneously to
    #   the game session.
    #
    # @option params [String] :game_session_name
    #   A descriptive label that is associated with a game session. Session
    #   names do not need to be unique.
    #
    # @option params [Array<Types::PlayerLatency>] :player_latencies
    #   A set of values, expressed in milliseconds, that indicates the amount
    #   of latency that a player experiences when connected to Amazon Web
    #   Services Regions. This information is used to try to place the new
    #   game session where it can offer the best possible gameplay experience
    #   for the players.
    #
    # @option params [Array<Types::DesiredPlayerSession>] :desired_player_sessions
    #   Set of information on each player to create a player session for.
    #
    # @option params [String] :game_session_data
    #   A set of custom game session properties, formatted as a single string
    #   value. This data is passed to a game server process with a request to
    #   start a new game session. For more information, see [Start a game
    #   session][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html#gamelift-sdk-server-startsession
    #
    # @option params [Types::PriorityConfigurationOverride] :priority_configuration_override
    #   A prioritized list of locations to use for the game session placement
    #   and instructions on how to use it. This list overrides a queue's
    #   prioritized location list for this game session placement request
    #   only. You can include Amazon Web Services Regions, local zones, and
    #   custom locations (for Anywhere fleets). You can choose to limit
    #   placements to locations on the override list only, or you can
    #   prioritize locations on the override list first and then fall back to
    #   the queue's other locations if needed. Choose a fallback strategy to
    #   use in the event that Amazon GameLift Servers fails to place a game
    #   session in any of the locations on the priority override list.
    #
    # @return [Types::StartGameSessionPlacementOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartGameSessionPlacementOutput#game_session_placement #game_session_placement} => Types::GameSessionPlacement
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_game_session_placement({
    #     placement_id: "IdStringModel", # required
    #     game_session_queue_name: "GameSessionQueueNameOrArn", # required
    #     game_properties: [
    #       {
    #         key: "GamePropertyKey", # required
    #         value: "GamePropertyValue", # required
    #       },
    #     ],
    #     maximum_player_session_count: 1, # required
    #     game_session_name: "NonZeroAndMaxString",
    #     player_latencies: [
    #       {
    #         player_id: "PlayerId",
    #         region_identifier: "NonZeroAndMaxString",
    #         latency_in_milliseconds: 1.0,
    #       },
    #     ],
    #     desired_player_sessions: [
    #       {
    #         player_id: "PlayerId",
    #         player_data: "PlayerData",
    #       },
    #     ],
    #     game_session_data: "LargeGameSessionData",
    #     priority_configuration_override: {
    #       placement_fallback_strategy: "DEFAULT_AFTER_SINGLE_PASS", # accepts DEFAULT_AFTER_SINGLE_PASS, NONE
    #       location_order: ["LocationStringModel"], # required
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.game_session_placement.placement_id #=> String
    #   resp.game_session_placement.game_session_queue_name #=> String
    #   resp.game_session_placement.status #=> String, one of "PENDING", "FULFILLED", "CANCELLED", "TIMED_OUT", "FAILED"
    #   resp.game_session_placement.game_properties #=> Array
    #   resp.game_session_placement.game_properties[0].key #=> String
    #   resp.game_session_placement.game_properties[0].value #=> String
    #   resp.game_session_placement.maximum_player_session_count #=> Integer
    #   resp.game_session_placement.game_session_name #=> String
    #   resp.game_session_placement.game_session_id #=> String
    #   resp.game_session_placement.game_session_arn #=> String
    #   resp.game_session_placement.game_session_region #=> String
    #   resp.game_session_placement.player_latencies #=> Array
    #   resp.game_session_placement.player_latencies[0].player_id #=> String
    #   resp.game_session_placement.player_latencies[0].region_identifier #=> String
    #   resp.game_session_placement.player_latencies[0].latency_in_milliseconds #=> Float
    #   resp.game_session_placement.start_time #=> Time
    #   resp.game_session_placement.end_time #=> Time
    #   resp.game_session_placement.ip_address #=> String
    #   resp.game_session_placement.dns_name #=> String
    #   resp.game_session_placement.port #=> Integer
    #   resp.game_session_placement.placed_player_sessions #=> Array
    #   resp.game_session_placement.placed_player_sessions[0].player_id #=> String
    #   resp.game_session_placement.placed_player_sessions[0].player_session_id #=> String
    #   resp.game_session_placement.game_session_data #=> String
    #   resp.game_session_placement.matchmaker_data #=> String
    #   resp.game_session_placement.priority_configuration_override.placement_fallback_strategy #=> String, one of "DEFAULT_AFTER_SINGLE_PASS", "NONE"
    #   resp.game_session_placement.priority_configuration_override.location_order #=> Array
    #   resp.game_session_placement.priority_configuration_override.location_order[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/StartGameSessionPlacement AWS API Documentation
    #
    # @overload start_game_session_placement(params = {})
    # @param [Hash] params ({})
    def start_game_session_placement(params = {}, options = {})
      req = build_request(:start_game_session_placement, params)
      req.send_request(options)
    end

    # Finds new players to fill open slots in currently running game
    # sessions. The backfill match process is essentially identical to the
    # process of forming new matches. Backfill requests use the same
    # matchmaker that was used to make the original match, and they provide
    # matchmaking data for all players currently in the game session.
    # FlexMatch uses this information to select new players so that
    # backfilled match continues to meet the original match requirements.
    #
    # When using FlexMatch with Amazon GameLift Servers managed hosting, you
    # can request a backfill match from a client service by calling this
    # operation with a `GameSessions` ID. You also have the option of making
    # backfill requests directly from your game server. In response to a
    # request, FlexMatch creates player sessions for the new players,
    # updates the `GameSession` resource, and sends updated matchmaking data
    # to the game server. You can request a backfill match at any point
    # after a game session is started. Each game session can have only one
    # active backfill request at a time; a subsequent request automatically
    # replaces the earlier request.
    #
    # When using FlexMatch as a standalone component, request a backfill
    # match by calling this operation without a game session identifier. As
    # with newly formed matches, matchmaking results are returned in a
    # matchmaking event so that your game can update the game session that
    # is being backfilled.
    #
    # To request a backfill match, specify a unique ticket ID, the original
    # matchmaking configuration, and matchmaking data for all current
    # players in the game session being backfilled. Optionally, specify the
    # `GameSession` ARN. If successful, a match backfill ticket is created
    # and returned with status set to QUEUED. Track the status of backfill
    # tickets using the same method for tracking tickets for new matches.
    #
    # Only game sessions created by FlexMatch are supported for match
    # backfill.
    #
    # **Learn more**
    #
    # [ Backfill existing games with FlexMatch][1]
    #
    # [ Matchmaking events][2] (reference)
    #
    # [ How Amazon GameLift Servers FlexMatch works][3]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-backfill.html
    # [2]: https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-events.html
    # [3]: https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/gamelift-match.html
    #
    # @option params [String] :ticket_id
    #   A unique identifier for a matchmaking ticket. If no ticket ID is
    #   specified here, Amazon GameLift Servers will generate one in the form
    #   of a UUID. Use this identifier to track the match backfill ticket
    #   status and retrieve match results.
    #
    # @option params [required, String] :configuration_name
    #   Name of the matchmaker to use for this request. You can use either the
    #   configuration name or ARN value. The ARN of the matchmaker that was
    #   used with the original game session is listed in the `GameSession`
    #   object, `MatchmakerData` property.
    #
    # @option params [String] :game_session_arn
    #   A unique identifier for the game session. Use the game session ID.
    #   When using FlexMatch as a standalone matchmaking solution, this
    #   parameter is not needed.
    #
    # @option params [required, Array<Types::Player>] :players
    #   Match information on all players that are currently assigned to the
    #   game session. This information is used by the matchmaker to find new
    #   players and add them to the existing game.
    #
    #   You can include up to 199 `Players` in a `StartMatchBackfill` request.
    #
    #   * PlayerID, PlayerAttributes, Team -- This information is maintained
    #     in the `GameSession` object, `MatchmakerData` property, for all
    #     players who are currently assigned to the game session. The
    #     matchmaker data is in JSON syntax, formatted as a string. For more
    #     details, see [ Match Data][1].
    #
    #     The backfill request must specify the team membership for every
    #     player. Do not specify team if you are not using backfill.
    #
    #   * LatencyInMs -- If the matchmaker uses player latency, include a
    #     latency value, in milliseconds, for the Region that the game session
    #     is currently in. Do not include latency values for any other Region.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-server.html#match-server-data
    #
    # @return [Types::StartMatchBackfillOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartMatchBackfillOutput#matchmaking_ticket #matchmaking_ticket} => Types::MatchmakingTicket
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_match_backfill({
    #     ticket_id: "MatchmakingIdStringModel",
    #     configuration_name: "MatchmakingConfigurationName", # required
    #     game_session_arn: "ArnStringModel",
    #     players: [ # required
    #       {
    #         player_id: "PlayerId",
    #         player_attributes: {
    #           "NonZeroAndMaxString" => "value", # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #         },
    #         team: "NonZeroAndMaxString",
    #         latency_in_ms: {
    #           "NonEmptyString" => 1,
    #         },
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.matchmaking_ticket.ticket_id #=> String
    #   resp.matchmaking_ticket.configuration_name #=> String
    #   resp.matchmaking_ticket.configuration_arn #=> String
    #   resp.matchmaking_ticket.status #=> String, one of "CANCELLED", "COMPLETED", "FAILED", "PLACING", "QUEUED", "REQUIRES_ACCEPTANCE", "SEARCHING", "TIMED_OUT"
    #   resp.matchmaking_ticket.status_reason #=> String
    #   resp.matchmaking_ticket.status_message #=> String
    #   resp.matchmaking_ticket.start_time #=> Time
    #   resp.matchmaking_ticket.end_time #=> Time
    #   resp.matchmaking_ticket.players #=> Array
    #   resp.matchmaking_ticket.players[0].player_id #=> String
    #   resp.matchmaking_ticket.players[0].player_attributes #=> Hash
    #   resp.matchmaking_ticket.players[0].player_attributes["NonZeroAndMaxString"] #=> <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #   resp.matchmaking_ticket.players[0].team #=> String
    #   resp.matchmaking_ticket.players[0].latency_in_ms #=> Hash
    #   resp.matchmaking_ticket.players[0].latency_in_ms["NonEmptyString"] #=> Integer
    #   resp.matchmaking_ticket.game_session_connection_info.game_session_arn #=> String
    #   resp.matchmaking_ticket.game_session_connection_info.ip_address #=> String
    #   resp.matchmaking_ticket.game_session_connection_info.dns_name #=> String
    #   resp.matchmaking_ticket.game_session_connection_info.port #=> Integer
    #   resp.matchmaking_ticket.game_session_connection_info.matched_player_sessions #=> Array
    #   resp.matchmaking_ticket.game_session_connection_info.matched_player_sessions[0].player_id #=> String
    #   resp.matchmaking_ticket.game_session_connection_info.matched_player_sessions[0].player_session_id #=> String
    #   resp.matchmaking_ticket.estimated_wait_time #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/StartMatchBackfill AWS API Documentation
    #
    # @overload start_match_backfill(params = {})
    # @param [Hash] params ({})
    def start_match_backfill(params = {}, options = {})
      req = build_request(:start_match_backfill, params)
      req.send_request(options)
    end

    # Uses FlexMatch to create a game match for a group of players based on
    # custom matchmaking rules. With games that use Amazon GameLift Servers
    # managed hosting, this operation also triggers Amazon GameLift Servers
    # to find hosting resources and start a new game session for the new
    # match. Each matchmaking request includes information on one or more
    # players and specifies the FlexMatch matchmaker to use. When a request
    # is for multiple players, FlexMatch attempts to build a match that
    # includes all players in the request, placing them in the same team and
    # finding additional players as needed to fill the match.
    #
    # To start matchmaking, provide a unique ticket ID, specify a
    # matchmaking configuration, and include the players to be matched. You
    # must also include any player attributes that are required by the
    # matchmaking configuration's rule set. If successful, a matchmaking
    # ticket is returned with status set to `QUEUED`.
    #
    # Track matchmaking events to respond as needed and acquire game session
    # connection information for successfully completed matches. Ticket
    # status updates are tracked using event notification through Amazon
    # Simple Notification Service, which is defined in the matchmaking
    # configuration.
    #
    # **Learn more**
    #
    # [ Add FlexMatch to a game client][1]
    #
    # [ Set Up FlexMatch event notification][2]
    #
    # [ How Amazon GameLift Servers FlexMatch works][3]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-client.html
    # [2]: https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-notification.html
    # [3]: https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/gamelift-match.html
    #
    # @option params [String] :ticket_id
    #   A unique identifier for a matchmaking ticket. If no ticket ID is
    #   specified here, Amazon GameLift Servers will generate one in the form
    #   of a UUID. Use this identifier to track the matchmaking ticket status
    #   and retrieve match results.
    #
    # @option params [required, String] :configuration_name
    #   Name of the matchmaking configuration to use for this request.
    #   Matchmaking configurations must exist in the same Region as this
    #   request. You can use either the configuration name or ARN value.
    #
    # @option params [required, Array<Types::Player>] :players
    #   Information on each player to be matched. This information must
    #   include a player ID, and may contain player attributes and latency
    #   data to be used in the matchmaking process. After a successful match,
    #   `Player` objects contain the name of the team the player is assigned
    #   to.
    #
    #   You can include up to 10 `Players` in a `StartMatchmaking` request.
    #
    # @return [Types::StartMatchmakingOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartMatchmakingOutput#matchmaking_ticket #matchmaking_ticket} => Types::MatchmakingTicket
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_matchmaking({
    #     ticket_id: "MatchmakingIdStringModel",
    #     configuration_name: "MatchmakingConfigurationName", # required
    #     players: [ # required
    #       {
    #         player_id: "PlayerId",
    #         player_attributes: {
    #           "NonZeroAndMaxString" => "value", # value <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #         },
    #         team: "NonZeroAndMaxString",
    #         latency_in_ms: {
    #           "NonEmptyString" => 1,
    #         },
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.matchmaking_ticket.ticket_id #=> String
    #   resp.matchmaking_ticket.configuration_name #=> String
    #   resp.matchmaking_ticket.configuration_arn #=> String
    #   resp.matchmaking_ticket.status #=> String, one of "CANCELLED", "COMPLETED", "FAILED", "PLACING", "QUEUED", "REQUIRES_ACCEPTANCE", "SEARCHING", "TIMED_OUT"
    #   resp.matchmaking_ticket.status_reason #=> String
    #   resp.matchmaking_ticket.status_message #=> String
    #   resp.matchmaking_ticket.start_time #=> Time
    #   resp.matchmaking_ticket.end_time #=> Time
    #   resp.matchmaking_ticket.players #=> Array
    #   resp.matchmaking_ticket.players[0].player_id #=> String
    #   resp.matchmaking_ticket.players[0].player_attributes #=> Hash
    #   resp.matchmaking_ticket.players[0].player_attributes["NonZeroAndMaxString"] #=> <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #   resp.matchmaking_ticket.players[0].team #=> String
    #   resp.matchmaking_ticket.players[0].latency_in_ms #=> Hash
    #   resp.matchmaking_ticket.players[0].latency_in_ms["NonEmptyString"] #=> Integer
    #   resp.matchmaking_ticket.game_session_connection_info.game_session_arn #=> String
    #   resp.matchmaking_ticket.game_session_connection_info.ip_address #=> String
    #   resp.matchmaking_ticket.game_session_connection_info.dns_name #=> String
    #   resp.matchmaking_ticket.game_session_connection_info.port #=> Integer
    #   resp.matchmaking_ticket.game_session_connection_info.matched_player_sessions #=> Array
    #   resp.matchmaking_ticket.game_session_connection_info.matched_player_sessions[0].player_id #=> String
    #   resp.matchmaking_ticket.game_session_connection_info.matched_player_sessions[0].player_session_id #=> String
    #   resp.matchmaking_ticket.estimated_wait_time #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/StartMatchmaking AWS API Documentation
    #
    # @overload start_matchmaking(params = {})
    # @param [Hash] params ({})
    def start_matchmaking(params = {}, options = {})
      req = build_request(:start_matchmaking, params)
      req.send_request(options)
    end

    # Suspends certain types of activity in a fleet location. Currently,
    # this operation is used to stop auto-scaling activity. For
    # multi-location fleets, fleet actions are managed separately for each
    # location.
    #
    # Stopping fleet actions has several potential purposes. It allows you
    # to temporarily stop auto-scaling activity but retain your scaling
    # policies for use in the future. For multi-location fleets, you can set
    # up fleet-wide auto-scaling, and then opt out of it for certain
    # locations.
    #
    # This operation can be used in the following ways:
    #
    # * To stop actions on instances in the fleet's home Region, provide a
    #   fleet ID and the type of actions to suspend.
    #
    # * To stop actions on instances in one of the fleet's remote
    #   locations, provide a fleet ID, a location name, and the type of
    #   actions to suspend.
    #
    # If successful, Amazon GameLift Servers no longer initiates scaling
    # events except in response to manual changes using
    # [UpdateFleetCapacity][1]. To restart fleet actions again, call
    # [StartFleetActions][2].
    #
    # **Learn more**
    #
    # [Setting up Amazon GameLift Servers Fleets][3]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_UpdateFleetCapacity.html
    # [2]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_StartFleetActions.html
    # [3]: https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html
    #
    # @option params [required, String] :fleet_id
    #   A unique identifier for the fleet to stop actions on. You can use
    #   either the fleet ID or ARN value.
    #
    # @option params [required, Array<String>] :actions
    #   List of actions to suspend on the fleet.
    #
    # @option params [String] :location
    #   The fleet location to stop fleet actions for. Specify a location in
    #   the form of an Amazon Web Services Region code, such as `us-west-2`.
    #
    # @return [Types::StopFleetActionsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StopFleetActionsOutput#fleet_id #fleet_id} => String
    #   * {Types::StopFleetActionsOutput#fleet_arn #fleet_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_fleet_actions({
    #     fleet_id: "FleetIdOrArn", # required
    #     actions: ["AUTO_SCALING"], # required, accepts AUTO_SCALING
    #     location: "LocationStringModel",
    #   })
    #
    # @example Response structure
    #
    #   resp.fleet_id #=> String
    #   resp.fleet_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/StopFleetActions AWS API Documentation
    #
    # @overload stop_fleet_actions(params = {})
    # @param [Hash] params ({})
    def stop_fleet_actions(params = {}, options = {})
      req = build_request(:stop_fleet_actions, params)
      req.send_request(options)
    end

    # Cancels a game session placement that's in `PENDING` status. To stop
    # a placement, provide the placement ID value.
    #
    # Results
    #
    # If successful, this operation removes the placement request from the
    # queue and moves the `GameSessionPlacement` to `CANCELLED` status.
    #
    # This operation results in an `InvalidRequestExecption` (400) error if
    # a game session has already been created for this placement. You can
    # clean up an unneeded game session by calling
    # [TerminateGameSession][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_TerminateGameSession
    #
    # @option params [required, String] :placement_id
    #   A unique identifier for a game session placement to stop.
    #
    # @return [Types::StopGameSessionPlacementOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StopGameSessionPlacementOutput#game_session_placement #game_session_placement} => Types::GameSessionPlacement
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_game_session_placement({
    #     placement_id: "IdStringModel", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.game_session_placement.placement_id #=> String
    #   resp.game_session_placement.game_session_queue_name #=> String
    #   resp.game_session_placement.status #=> String, one of "PENDING", "FULFILLED", "CANCELLED", "TIMED_OUT", "FAILED"
    #   resp.game_session_placement.game_properties #=> Array
    #   resp.game_session_placement.game_properties[0].key #=> String
    #   resp.game_session_placement.game_properties[0].value #=> String
    #   resp.game_session_placement.maximum_player_session_count #=> Integer
    #   resp.game_session_placement.game_session_name #=> String
    #   resp.game_session_placement.game_session_id #=> String
    #   resp.game_session_placement.game_session_arn #=> String
    #   resp.game_session_placement.game_session_region #=> String
    #   resp.game_session_placement.player_latencies #=> Array
    #   resp.game_session_placement.player_latencies[0].player_id #=> String
    #   resp.game_session_placement.player_latencies[0].region_identifier #=> String
    #   resp.game_session_placement.player_latencies[0].latency_in_milliseconds #=> Float
    #   resp.game_session_placement.start_time #=> Time
    #   resp.game_session_placement.end_time #=> Time
    #   resp.game_session_placement.ip_address #=> String
    #   resp.game_session_placement.dns_name #=> String
    #   resp.game_session_placement.port #=> Integer
    #   resp.game_session_placement.placed_player_sessions #=> Array
    #   resp.game_session_placement.placed_player_sessions[0].player_id #=> String
    #   resp.game_session_placement.placed_player_sessions[0].player_session_id #=> String
    #   resp.game_session_placement.game_session_data #=> String
    #   resp.game_session_placement.matchmaker_data #=> String
    #   resp.game_session_placement.priority_configuration_override.placement_fallback_strategy #=> String, one of "DEFAULT_AFTER_SINGLE_PASS", "NONE"
    #   resp.game_session_placement.priority_configuration_override.location_order #=> Array
    #   resp.game_session_placement.priority_configuration_override.location_order[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/StopGameSessionPlacement AWS API Documentation
    #
    # @overload stop_game_session_placement(params = {})
    # @param [Hash] params ({})
    def stop_game_session_placement(params = {}, options = {})
      req = build_request(:stop_game_session_placement, params)
      req.send_request(options)
    end

    # Cancels a matchmaking ticket or match backfill ticket that is
    # currently being processed. To stop the matchmaking operation, specify
    # the ticket ID. If successful, work on the ticket is stopped, and the
    # ticket status is changed to `CANCELLED`.
    #
    # This call is also used to turn off automatic backfill for an
    # individual game session. This is for game sessions that are created
    # with a matchmaking configuration that has automatic backfill enabled.
    # The ticket ID is included in the `MatchmakerData` of an updated game
    # session object, which is provided to the game server.
    #
    # <note markdown="1"> If the operation is successful, the service sends back an empty JSON
    # struct with the HTTP 200 response (not an empty HTTP body).
    #
    #  </note>
    #
    # **Learn more**
    #
    # [ Add FlexMatch to a game client][1]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-client.html
    #
    # @option params [required, String] :ticket_id
    #   A unique identifier for a matchmaking ticket.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_matchmaking({
    #     ticket_id: "MatchmakingIdStringModel", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/StopMatchmaking AWS API Documentation
    #
    # @overload stop_matchmaking(params = {})
    # @param [Hash] params ({})
    def stop_matchmaking(params = {}, options = {})
      req = build_request(:stop_matchmaking, params)
      req.send_request(options)
    end

    # **This operation is used with the Amazon GameLift Servers FleetIQ
    # solution and game server groups.**
    #
    # Temporarily stops activity on a game server group without terminating
    # instances or the game server group. You can restart activity by
    # calling
    # [ResumeGameServerGroup](gamelift/latest/apireference/API_ResumeGameServerGroup.html).
    # You can suspend the following activity:
    #
    # * **Instance type replacement** - This activity evaluates the current
    #   game hosting viability of all Spot instance types that are defined
    #   for the game server group. It updates the Auto Scaling group to
    #   remove nonviable Spot Instance types, which have a higher chance of
    #   game server interruptions. It then balances capacity across the
    #   remaining viable Spot Instance types. When this activity is
    #   suspended, the Auto Scaling group continues with its current
    #   balance, regardless of viability. Instance protection, utilization
    #   metrics, and capacity scaling activities continue to be active.
    #
    # ^
    #
    # To suspend activity, specify a game server group ARN and the type of
    # activity to be suspended. If successful, a `GameServerGroup` object is
    # returned showing that the activity is listed in `SuspendedActions`.
    #
    # **Learn more**
    #
    # [Amazon GameLift Servers FleetIQ Guide][1]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/gsg-intro.html
    #
    # @option params [required, String] :game_server_group_name
    #   A unique identifier for the game server group. Use either the name or
    #   ARN value.
    #
    # @option params [required, Array<String>] :suspend_actions
    #   The activity to suspend for this game server group.
    #
    # @return [Types::SuspendGameServerGroupOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SuspendGameServerGroupOutput#game_server_group #game_server_group} => Types::GameServerGroup
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.suspend_game_server_group({
    #     game_server_group_name: "GameServerGroupNameOrArn", # required
    #     suspend_actions: ["REPLACE_INSTANCE_TYPES"], # required, accepts REPLACE_INSTANCE_TYPES
    #   })
    #
    # @example Response structure
    #
    #   resp.game_server_group.game_server_group_name #=> String
    #   resp.game_server_group.game_server_group_arn #=> String
    #   resp.game_server_group.role_arn #=> String
    #   resp.game_server_group.instance_definitions #=> Array
    #   resp.game_server_group.instance_definitions[0].instance_type #=> String, one of "c4.large", "c4.xlarge", "c4.2xlarge", "c4.4xlarge", "c4.8xlarge", "c5.large", "c5.xlarge", "c5.2xlarge", "c5.4xlarge", "c5.9xlarge", "c5.12xlarge", "c5.18xlarge", "c5.24xlarge", "c5a.large", "c5a.xlarge", "c5a.2xlarge", "c5a.4xlarge", "c5a.8xlarge", "c5a.12xlarge", "c5a.16xlarge", "c5a.24xlarge", "c6g.medium", "c6g.large", "c6g.xlarge", "c6g.2xlarge", "c6g.4xlarge", "c6g.8xlarge", "c6g.12xlarge", "c6g.16xlarge", "r4.large", "r4.xlarge", "r4.2xlarge", "r4.4xlarge", "r4.8xlarge", "r4.16xlarge", "r5.large", "r5.xlarge", "r5.2xlarge", "r5.4xlarge", "r5.8xlarge", "r5.12xlarge", "r5.16xlarge", "r5.24xlarge", "r5a.large", "r5a.xlarge", "r5a.2xlarge", "r5a.4xlarge", "r5a.8xlarge", "r5a.12xlarge", "r5a.16xlarge", "r5a.24xlarge", "r6g.medium", "r6g.large", "r6g.xlarge", "r6g.2xlarge", "r6g.4xlarge", "r6g.8xlarge", "r6g.12xlarge", "r6g.16xlarge", "m4.large", "m4.xlarge", "m4.2xlarge", "m4.4xlarge", "m4.10xlarge", "m5.large", "m5.xlarge", "m5.2xlarge", "m5.4xlarge", "m5.8xlarge", "m5.12xlarge", "m5.16xlarge", "m5.24xlarge", "m5a.large", "m5a.xlarge", "m5a.2xlarge", "m5a.4xlarge", "m5a.8xlarge", "m5a.12xlarge", "m5a.16xlarge", "m5a.24xlarge", "m6g.medium", "m6g.large", "m6g.xlarge", "m6g.2xlarge", "m6g.4xlarge", "m6g.8xlarge", "m6g.12xlarge", "m6g.16xlarge"
    #   resp.game_server_group.instance_definitions[0].weighted_capacity #=> String
    #   resp.game_server_group.balancing_strategy #=> String, one of "SPOT_ONLY", "SPOT_PREFERRED", "ON_DEMAND_ONLY"
    #   resp.game_server_group.game_server_protection_policy #=> String, one of "NO_PROTECTION", "FULL_PROTECTION"
    #   resp.game_server_group.auto_scaling_group_arn #=> String
    #   resp.game_server_group.status #=> String, one of "NEW", "ACTIVATING", "ACTIVE", "DELETE_SCHEDULED", "DELETING", "DELETED", "ERROR"
    #   resp.game_server_group.status_reason #=> String
    #   resp.game_server_group.suspended_actions #=> Array
    #   resp.game_server_group.suspended_actions[0] #=> String, one of "REPLACE_INSTANCE_TYPES"
    #   resp.game_server_group.creation_time #=> Time
    #   resp.game_server_group.last_updated_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/SuspendGameServerGroup AWS API Documentation
    #
    # @overload suspend_game_server_group(params = {})
    # @param [Hash] params ({})
    def suspend_game_server_group(params = {}, options = {})
      req = build_request(:suspend_game_server_group, params)
      req.send_request(options)
    end

    # Assigns a tag to an Amazon GameLift Servers resource. You can use tags
    # to organize resources, create IAM permissions policies to manage
    # access to groups of resources, customize Amazon Web Services cost
    # breakdowns, and more. This operation handles the permissions necessary
    # to manage tags for Amazon GameLift Servers resources that support
    # tagging.
    #
    # To add a tag to a resource, specify the unique ARN value for the
    # resource and provide a tag list containing one or more tags. The
    # operation succeeds even if the list includes tags that are already
    # assigned to the resource.
    #
    # **Learn more**
    #
    # [Tagging Amazon Web Services Resources][1] in the *Amazon Web Services
    # General Reference*
    #
    # [ Amazon Web Services Tagging Strategies][2]
    #
    # **Related actions**
    #
    # [All APIs by task][3]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    # [2]: http://aws.amazon.com/answers/account-management/aws-tagging-strategies/
    # [3]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name ([ARN][1]) that uniquely identifies the
    #   Amazon GameLift Servers resource that you want to assign tags to.
    #   Amazon GameLift Servers includes resource ARNs in the data object for
    #   the resource. You can retrieve the ARN by calling a `List` or
    #   `Describe` operation for the resource type.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   A list of one or more tags to assign to the specified Amazon GameLift
    #   Servers resource. Tags are developer-defined and structured as
    #   key-value pairs. The maximum tag limit may be lower than stated. See [
    #   Tagging Amazon Web Services Resources][1] for tagging limits.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "AmazonResourceName", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Ends a game session that's currently in progress. Use this action to
    # terminate any game session that isn't in `ERROR` status. Terminating
    # a game session is the most efficient way to free up a server process
    # when it's hosting a game session that's in a bad state or not ending
    # properly. You can use this action to terminate a game session that's
    # being hosted on any type of Amazon GameLift Servers fleet compute,
    # including computes for managed EC2, managed container, and Anywhere
    # fleets. The game server must be integrated with Amazon GameLift
    # Servers server SDK 5.x or greater.
    #
    # **Request options**
    #
    # Request termination for a single game session. Provide the game
    # session ID and the termination mode. There are two potential methods
    # for terminating a game session:
    #
    # * Initiate a graceful termination using the normal game session
    #   shutdown sequence. With this mode, the Amazon GameLift Servers
    #   service prompts the server process that's hosting the game session
    #   by calling the server SDK callback method `OnProcessTerminate()`.
    #   The callback implementation is part of the custom game server code.
    #   It might involve a variety of actions to gracefully end a game
    #   session, such as notifying players, before stopping the server
    #   process.
    #
    # * Force an immediate game session termination. With this mode, the
    #   Amazon GameLift Servers service takes action to stop the server
    #   process, which ends the game session without the normal game session
    #   shutdown sequence.
    #
    # **Results**
    #
    # If successful, game session termination is initiated. During this
    # activity, the game session status is changed to `TERMINATING`. When
    # completed, the server process that was hosting the game session has
    # been stopped and replaced with a new server process that's ready to
    # host a new game session. The old game session's status is changed to
    # `TERMINATED` with a status reason that indicates the termination
    # method used.
    #
    # **Learn more**
    #
    # [Add Amazon GameLift Servers to your game server][1]
    #
    # Amazon GameLift Servers server SDK 5 reference guide for
    # `OnProcessTerminate()` ([C++][2]) ([C#][3]) ([Unreal][4]) ([Go][5])
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html
    # [2]: https://docs.aws.amazon.com/gamelift/latest/developerguide/integration-server-sdk5-cpp-initsdk.html
    # [3]: https://docs.aws.amazon.com/gamelift/latest/developerguide/integration-server-sdk5-csharp-initsdk.html
    # [4]: https://docs.aws.amazon.com/gamelift/latest/developerguide/integration-server-sdk5-unreal-initsdk.html
    # [5]: https://docs.aws.amazon.com/gamelift/latest/developerguide/integration-server-sdk-go-initsdk.html
    #
    # @option params [required, String] :game_session_id
    #   A unique identifier for the game session to be terminated. A game
    #   session ARN has the following format:
    #   `arn:aws:gamelift:<location>::gamesession/<fleet ID>/<custom ID string
    #   or idempotency token>`.
    #
    # @option params [required, String] :termination_mode
    #   The method to use to terminate the game session. Available methods
    #   include:
    #
    #   * `TRIGGER_ON_PROCESS_TERMINATE` – Prompts the Amazon GameLift Servers
    #     service to send an `OnProcessTerminate()` callback to the server
    #     process and initiate the normal game session shutdown sequence. The
    #     `OnProcessTerminate` method, which is implemented in the game server
    #     code, must include a call to the server SDK action
    #     `ProcessEnding()`, which is how the server process signals to Amazon
    #     GameLift Servers that a game session is ending. If the server
    #     process doesn't call `ProcessEnding()`, the game session
    #     termination won't conclude successfully.
    #
    #   * `FORCE_TERMINATE` – Prompts the Amazon GameLift Servers service to
    #     stop the server process immediately. Amazon GameLift Servers takes
    #     action (depending on the type of fleet) to shut down the server
    #     process without the normal game session shutdown sequence.
    #
    #     <note markdown="1"> This method is not available for game sessions that are running on
    #     Anywhere fleets unless the fleet is deployed with the Amazon
    #     GameLift Servers Agent. In this scenario, a force terminate request
    #     results in an invalid or bad request exception.
    #
    #      </note>
    #
    # @return [Types::TerminateGameSessionOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::TerminateGameSessionOutput#game_session #game_session} => Types::GameSession
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.terminate_game_session({
    #     game_session_id: "ArnStringModel", # required
    #     termination_mode: "TRIGGER_ON_PROCESS_TERMINATE", # required, accepts TRIGGER_ON_PROCESS_TERMINATE, FORCE_TERMINATE
    #   })
    #
    # @example Response structure
    #
    #   resp.game_session.game_session_id #=> String
    #   resp.game_session.name #=> String
    #   resp.game_session.fleet_id #=> String
    #   resp.game_session.fleet_arn #=> String
    #   resp.game_session.creation_time #=> Time
    #   resp.game_session.termination_time #=> Time
    #   resp.game_session.current_player_session_count #=> Integer
    #   resp.game_session.maximum_player_session_count #=> Integer
    #   resp.game_session.status #=> String, one of "ACTIVE", "ACTIVATING", "TERMINATED", "TERMINATING", "ERROR"
    #   resp.game_session.status_reason #=> String, one of "INTERRUPTED", "TRIGGERED_ON_PROCESS_TERMINATE", "FORCE_TERMINATED"
    #   resp.game_session.game_properties #=> Array
    #   resp.game_session.game_properties[0].key #=> String
    #   resp.game_session.game_properties[0].value #=> String
    #   resp.game_session.ip_address #=> String
    #   resp.game_session.dns_name #=> String
    #   resp.game_session.port #=> Integer
    #   resp.game_session.player_session_creation_policy #=> String, one of "ACCEPT_ALL", "DENY_ALL"
    #   resp.game_session.creator_id #=> String
    #   resp.game_session.game_session_data #=> String
    #   resp.game_session.matchmaker_data #=> String
    #   resp.game_session.location #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/TerminateGameSession AWS API Documentation
    #
    # @overload terminate_game_session(params = {})
    # @param [Hash] params ({})
    def terminate_game_session(params = {}, options = {})
      req = build_request(:terminate_game_session, params)
      req.send_request(options)
    end

    # Removes a tag assigned to a Amazon GameLift Servers resource. You can
    # use resource tags to organize Amazon Web Services resources for a
    # range of purposes. This operation handles the permissions necessary to
    # manage tags for Amazon GameLift Servers resources that support
    # tagging.
    #
    # To remove a tag from a resource, specify the unique ARN value for the
    # resource and provide a string list containing one or more tags to
    # remove. This operation succeeds even if the list includes tags that
    # aren't assigned to the resource.
    #
    # **Learn more**
    #
    # [Tagging Amazon Web Services Resources][1] in the *Amazon Web Services
    # General Reference*
    #
    # [ Amazon Web Services Tagging Strategies][2]
    #
    # **Related actions**
    #
    # [All APIs by task][3]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    # [2]: http://aws.amazon.com/answers/account-management/aws-tagging-strategies/
    # [3]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name ([ARN][1]) that uniquely identifies the
    #   Amazon GameLift Servers resource that you want to remove tags from.
    #   Amazon GameLift Servers includes resource ARNs in the data object for
    #   the resource. You can retrieve the ARN by calling a `List` or
    #   `Describe` operation for the resource type.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html
    #
    # @option params [required, Array<String>] :tag_keys
    #   A list of one or more tag keys to remove from the specified Amazon
    #   GameLift Servers resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "AmazonResourceName", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates properties for an alias. Specify the unique identifier of the
    # alias to be updated and the new property values. When reassigning an
    # alias to a new fleet, provide an updated routing strategy. If
    # successful, the updated alias record is returned.
    #
    # **Related actions**
    #
    # [All APIs by task][1]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets
    #
    # @option params [required, String] :alias_id
    #   A unique identifier for the alias that you want to update. You can use
    #   either the alias ID or ARN value.
    #
    # @option params [String] :name
    #   A descriptive label that is associated with an alias. Alias names do
    #   not need to be unique.
    #
    # @option params [String] :description
    #   A human-readable description of the alias.
    #
    # @option params [Types::RoutingStrategy] :routing_strategy
    #   The routing configuration, including routing type and fleet target,
    #   for the alias.
    #
    # @return [Types::UpdateAliasOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateAliasOutput#alias #alias} => Types::Alias
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_alias({
    #     alias_id: "AliasIdOrArn", # required
    #     name: "NonBlankAndLengthConstraintString",
    #     description: "NonZeroAndMaxString",
    #     routing_strategy: {
    #       type: "SIMPLE", # accepts SIMPLE, TERMINAL
    #       fleet_id: "FleetId",
    #       message: "FreeText",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.alias.alias_id #=> String
    #   resp.alias.name #=> String
    #   resp.alias.alias_arn #=> String
    #   resp.alias.description #=> String
    #   resp.alias.routing_strategy.type #=> String, one of "SIMPLE", "TERMINAL"
    #   resp.alias.routing_strategy.fleet_id #=> String
    #   resp.alias.routing_strategy.message #=> String
    #   resp.alias.creation_time #=> Time
    #   resp.alias.last_updated_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/UpdateAlias AWS API Documentation
    #
    # @overload update_alias(params = {})
    # @param [Hash] params ({})
    def update_alias(params = {}, options = {})
      req = build_request(:update_alias, params)
      req.send_request(options)
    end

    # Updates metadata in a build resource, including the build name and
    # version. To update the metadata, specify the build ID to update and
    # provide the new values. If successful, a build object containing the
    # updated metadata is returned.
    #
    # **Learn more**
    #
    # [ Upload a Custom Server Build][1]
    #
    # [All APIs by task][2]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-build-intro.html
    # [2]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets
    #
    # @option params [required, String] :build_id
    #   A unique identifier for the build to update. You can use either the
    #   build ID or ARN value.
    #
    # @option params [String] :name
    #   A descriptive label that is associated with a build. Build names do
    #   not need to be unique.
    #
    # @option params [String] :version
    #   Version information that is associated with a build or script. Version
    #   strings do not need to be unique.
    #
    # @return [Types::UpdateBuildOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateBuildOutput#build #build} => Types::Build
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_build({
    #     build_id: "BuildIdOrArn", # required
    #     name: "NonZeroAndMaxString",
    #     version: "NonZeroAndMaxString",
    #   })
    #
    # @example Response structure
    #
    #   resp.build.build_id #=> String
    #   resp.build.build_arn #=> String
    #   resp.build.name #=> String
    #   resp.build.version #=> String
    #   resp.build.status #=> String, one of "INITIALIZED", "READY", "FAILED"
    #   resp.build.size_on_disk #=> Integer
    #   resp.build.operating_system #=> String, one of "WINDOWS_2012", "AMAZON_LINUX", "AMAZON_LINUX_2", "WINDOWS_2016", "AMAZON_LINUX_2023"
    #   resp.build.creation_time #=> Time
    #   resp.build.server_sdk_version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/UpdateBuild AWS API Documentation
    #
    # @overload update_build(params = {})
    # @param [Hash] params ({})
    def update_build(params = {}, options = {})
      req = build_request(:update_build, params)
      req.send_request(options)
    end

    # Updates the properties of a managed container fleet. Depending on the
    # properties being updated, this operation might initiate a fleet
    # deployment. You can track deployments for a fleet using
    # [https://docs.aws.amazon.com/gamelift/latest/apireference/API\_DescribeFleetDeployment.html][1].
    #
    # **Request options**
    #
    # As with CreateContainerFleet, many fleet properties use common
    # defaults or are calculated based on the fleet's container group
    # definitions.
    #
    # * Update fleet properties that result in a fleet deployment. Include
    #   only those properties that you want to change. Specify deployment
    #   configuration settings.
    #
    # * Update fleet properties that don't result in a fleet deployment.
    #   Include only those properties that you want to change.
    #
    # Changes to the following properties initiate a fleet deployment:
    #
    # * `GameServerContainerGroupDefinition`
    #
    # * `PerInstanceContainerGroupDefinition`
    #
    # * `GameServerContainerGroupsPerInstance`
    #
    # * `InstanceInboundPermissions`
    #
    # * `InstanceConnectionPortRange`
    #
    # * `LogConfiguration`
    #
    # **Results**
    #
    # If successful, this operation updates the container fleet resource,
    # and might initiate a new deployment of fleet resources using the
    # deployment configuration provided. A deployment replaces existing
    # fleet instances with new instances that are deployed with the updated
    # fleet properties. The fleet is placed in `UPDATING` status until the
    # deployment is complete, then return to `ACTIVE`.
    #
    # You can have only one update deployment active at a time for a fleet.
    # If a second update request initiates a deployment while another
    # deployment is in progress, the first deployment is cancelled.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_DescribeFleetDeployment.html
    #
    # @option params [required, String] :fleet_id
    #   A unique identifier for the container fleet to update. You can use
    #   either the fleet ID or ARN value.
    #
    # @option params [String] :game_server_container_group_definition_name
    #   The name or ARN value of a new game server container group definition
    #   to deploy on the fleet. If you're updating the fleet to a specific
    #   version of a container group definition, use the ARN value and include
    #   the version number. If you're updating the fleet to the latest
    #   version of a container group definition, you can use the name value.
    #   You can't remove a fleet's game server container group definition,
    #   you can only update or replace it with another definition.
    #
    #   Update a container group definition by calling
    #   [UpdateContainerGroupDefinition][1]. This operation creates a
    #   [ContainerGroupDefinition][2] resource with an incremented version.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_UpdateContainerGroupDefinition.html
    #   [2]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_ContainerGroupDefinition.html
    #
    # @option params [String] :per_instance_container_group_definition_name
    #   The name or ARN value of a new per-instance container group definition
    #   to deploy on the fleet. If you're updating the fleet to a specific
    #   version of a container group definition, use the ARN value and include
    #   the version number. If you're updating the fleet to the latest
    #   version of a container group definition, you can use the name value.
    #
    #   Update a container group definition by calling
    #   [UpdateContainerGroupDefinition][1]. This operation creates a
    #   [ContainerGroupDefinition][2] resource with an incremented version.
    #
    #   To remove a fleet's per-instance container group definition, leave
    #   this parameter empty and use the parameter `RemoveAttributes`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_UpdateContainerGroupDefinition.html
    #   [2]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_ContainerGroupDefinition.html
    #
    # @option params [Integer] :game_server_container_groups_per_instance
    #   The number of times to replicate the game server container group on
    #   each fleet instance. By default, Amazon GameLift Servers calculates
    #   the maximum number of game server container groups that can fit on
    #   each instance. You can remove this property value to use the
    #   calculated value, or set it manually. If you set this number manually,
    #   Amazon GameLift Servers uses your value as long as it's less than the
    #   calculated maximum.
    #
    # @option params [Types::ConnectionPortRange] :instance_connection_port_range
    #   A revised set of port numbers to open on each fleet instance. By
    #   default, Amazon GameLift Servers calculates an optimal port range
    #   based on your fleet configuration. If you previously set this
    #   parameter manually, you can't reset this to use the calculated
    #   settings.
    #
    # @option params [Array<Types::IpPermission>] :instance_inbound_permission_authorizations
    #   A set of ports to add to the container fleet's inbound permissions.
    #
    # @option params [Array<Types::IpPermission>] :instance_inbound_permission_revocations
    #   A set of ports to remove from the container fleet's inbound
    #   permissions.
    #
    # @option params [Types::DeploymentConfiguration] :deployment_configuration
    #   Instructions for how to deploy updates to a container fleet, if the
    #   fleet update initiates a deployment. The deployment configuration lets
    #   you determine how to replace fleet instances and what actions to take
    #   if the deployment fails.
    #
    # @option params [String] :description
    #   A meaningful description of the container fleet.
    #
    # @option params [Array<String>] :metric_groups
    #   The name of an Amazon Web Services CloudWatch metric group to add this
    #   fleet to.
    #
    # @option params [String] :new_game_session_protection_policy
    #   The game session protection policy to apply to all new game sessions
    #   that are started in this fleet. Game sessions that already exist are
    #   not affected.
    #
    # @option params [Types::GameSessionCreationLimitPolicy] :game_session_creation_limit_policy
    #   A policy that limits the number of game sessions that each individual
    #   player can create on instances in this fleet. The limit applies for a
    #   specified span of time.
    #
    # @option params [Types::LogConfiguration] :log_configuration
    #   The method for collecting container logs for the fleet.
    #
    # @option params [Array<String>] :remove_attributes
    #   If set, this update removes a fleet's per-instance container group
    #   definition. You can't remove a fleet's game server container group
    #   definition.
    #
    # @return [Types::UpdateContainerFleetOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateContainerFleetOutput#container_fleet #container_fleet} => Types::ContainerFleet
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_container_fleet({
    #     fleet_id: "FleetIdOrArn", # required
    #     game_server_container_group_definition_name: "ContainerGroupDefinitionNameOrArn",
    #     per_instance_container_group_definition_name: "ContainerGroupDefinitionNameOrArn",
    #     game_server_container_groups_per_instance: 1,
    #     instance_connection_port_range: {
    #       from_port: 1, # required
    #       to_port: 1, # required
    #     },
    #     instance_inbound_permission_authorizations: [
    #       {
    #         from_port: 1, # required
    #         to_port: 1, # required
    #         ip_range: "IpRange", # required
    #         protocol: "TCP", # required, accepts TCP, UDP
    #       },
    #     ],
    #     instance_inbound_permission_revocations: [
    #       {
    #         from_port: 1, # required
    #         to_port: 1, # required
    #         ip_range: "IpRange", # required
    #         protocol: "TCP", # required, accepts TCP, UDP
    #       },
    #     ],
    #     deployment_configuration: {
    #       protection_strategy: "WITH_PROTECTION", # accepts WITH_PROTECTION, IGNORE_PROTECTION
    #       minimum_healthy_percentage: 1,
    #       impairment_strategy: "MAINTAIN", # accepts MAINTAIN, ROLLBACK
    #     },
    #     description: "NonZeroAndMaxString",
    #     metric_groups: ["MetricGroup"],
    #     new_game_session_protection_policy: "NoProtection", # accepts NoProtection, FullProtection
    #     game_session_creation_limit_policy: {
    #       new_game_sessions_per_creator: 1,
    #       policy_period_in_minutes: 1,
    #     },
    #     log_configuration: {
    #       log_destination: "NONE", # accepts NONE, CLOUDWATCH, S3
    #       s3_bucket_name: "NonEmptyString",
    #       log_group_arn: "LogGroupArnStringModel",
    #     },
    #     remove_attributes: ["PER_INSTANCE_CONTAINER_GROUP_DEFINITION"], # accepts PER_INSTANCE_CONTAINER_GROUP_DEFINITION
    #   })
    #
    # @example Response structure
    #
    #   resp.container_fleet.fleet_id #=> String
    #   resp.container_fleet.fleet_arn #=> String
    #   resp.container_fleet.fleet_role_arn #=> String
    #   resp.container_fleet.game_server_container_group_definition_name #=> String
    #   resp.container_fleet.game_server_container_group_definition_arn #=> String
    #   resp.container_fleet.per_instance_container_group_definition_name #=> String
    #   resp.container_fleet.per_instance_container_group_definition_arn #=> String
    #   resp.container_fleet.instance_connection_port_range.from_port #=> Integer
    #   resp.container_fleet.instance_connection_port_range.to_port #=> Integer
    #   resp.container_fleet.instance_inbound_permissions #=> Array
    #   resp.container_fleet.instance_inbound_permissions[0].from_port #=> Integer
    #   resp.container_fleet.instance_inbound_permissions[0].to_port #=> Integer
    #   resp.container_fleet.instance_inbound_permissions[0].ip_range #=> String
    #   resp.container_fleet.instance_inbound_permissions[0].protocol #=> String, one of "TCP", "UDP"
    #   resp.container_fleet.game_server_container_groups_per_instance #=> Integer
    #   resp.container_fleet.maximum_game_server_container_groups_per_instance #=> Integer
    #   resp.container_fleet.instance_type #=> String
    #   resp.container_fleet.billing_type #=> String, one of "ON_DEMAND", "SPOT"
    #   resp.container_fleet.description #=> String
    #   resp.container_fleet.creation_time #=> Time
    #   resp.container_fleet.metric_groups #=> Array
    #   resp.container_fleet.metric_groups[0] #=> String
    #   resp.container_fleet.new_game_session_protection_policy #=> String, one of "NoProtection", "FullProtection"
    #   resp.container_fleet.game_session_creation_limit_policy.new_game_sessions_per_creator #=> Integer
    #   resp.container_fleet.game_session_creation_limit_policy.policy_period_in_minutes #=> Integer
    #   resp.container_fleet.status #=> String, one of "PENDING", "CREATING", "CREATED", "ACTIVATING", "ACTIVE", "UPDATING", "DELETING"
    #   resp.container_fleet.deployment_details.latest_deployment_id #=> String
    #   resp.container_fleet.log_configuration.log_destination #=> String, one of "NONE", "CLOUDWATCH", "S3"
    #   resp.container_fleet.log_configuration.s3_bucket_name #=> String
    #   resp.container_fleet.log_configuration.log_group_arn #=> String
    #   resp.container_fleet.location_attributes #=> Array
    #   resp.container_fleet.location_attributes[0].location #=> String
    #   resp.container_fleet.location_attributes[0].status #=> String, one of "PENDING", "CREATING", "CREATED", "ACTIVATING", "ACTIVE", "UPDATING", "DELETING"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/UpdateContainerFleet AWS API Documentation
    #
    # @overload update_container_fleet(params = {})
    # @param [Hash] params ({})
    def update_container_fleet(params = {}, options = {})
      req = build_request(:update_container_fleet, params)
      req.send_request(options)
    end

    # Updates properties in an existing container group definition. This
    # operation doesn't replace the definition. Instead, it creates a new
    # version of the definition and saves it separately. You can access all
    # versions that you choose to retain.
    #
    # The only property you can't update is the container group type.
    #
    # **Request options:**
    #
    # * Update based on the latest version of the container group
    #   definition. Specify the container group definition name only, or use
    #   an ARN value without a version number. Provide updated values for
    #   the properties that you want to change only. All other values remain
    #   the same as the latest version.
    #
    # * Update based on a specific version of the container group
    #   definition. Specify the container group definition name and a source
    #   version number, or use an ARN value with a version number. Provide
    #   updated values for the properties that you want to change only. All
    #   other values remain the same as the source version.
    #
    # * Change a game server container definition. Provide the updated
    #   container definition.
    #
    # * Add or change a support container definition. Provide a complete set
    #   of container definitions, including the updated definition.
    #
    # * Remove a support container definition. Provide a complete set of
    #   container definitions, excluding the definition to remove. If the
    #   container group has only one support container definition, provide
    #   an empty set.
    #
    # **Results:**
    #
    # If successful, this operation returns the complete properties of the
    # new container group definition version.
    #
    # If the container group definition version is used in an active fleets,
    # the update automatically initiates a new fleet deployment of the new
    # version. You can track a fleet's deployments using
    # [ListFleetDeployments][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_ListFleetDeployments.html
    #
    # @option params [required, String] :name
    #   A descriptive identifier for the container group definition. The name
    #   value must be unique in an Amazon Web Services Region.
    #
    # @option params [Types::GameServerContainerDefinitionInput] :game_server_container_definition
    #   An updated definition for the game server container in this group.
    #   Define a game server container only when the container group type is
    #   `GAME_SERVER`. You can pass in your container definitions as a JSON
    #   file.
    #
    # @option params [Array<Types::SupportContainerDefinitionInput>] :support_container_definitions
    #   One or more definitions for support containers in this group. You can
    #   define a support container in any type of container group. You can
    #   pass in your container definitions as a JSON file.
    #
    # @option params [Integer] :total_memory_limit_mebibytes
    #   The maximum amount of memory (in MiB) to allocate to the container
    #   group. All containers in the group share this memory. If you specify
    #   memory limits for an individual container, the total value must be
    #   greater than any individual container's memory limit.
    #
    # @option params [Float] :total_vcpu_limit
    #   The maximum amount of vCPU units to allocate to the container group (1
    #   vCPU is equal to 1024 CPU units). All containers in the group share
    #   this memory. If you specify vCPU limits for individual containers, the
    #   total value must be equal to or greater than the sum of the CPU limits
    #   for all containers in the group.
    #
    # @option params [String] :version_description
    #   A description for this update to the container group definition.
    #
    # @option params [Integer] :source_version_number
    #   The container group definition version to update. The new version
    #   starts with values from the source version, and then updates values
    #   included in this request.
    #
    # @option params [String] :operating_system
    #   The platform that all containers in the group use. Containers in a
    #   group must run on the same operating system.
    #
    #   <note markdown="1"> Amazon Linux 2 (AL2) will reach end of support on 6/30/2025. See more
    #   details in the [Amazon Linux 2 FAQs][1]. For game servers that are
    #   hosted on AL2 and use server SDK version 4.x for Amazon GameLift
    #   Servers, first update the game server build to server SDK 5.x, and
    #   then deploy to AL2023 instances. See [ Migrate to server SDK version
    #   5.][2]
    #
    #    </note>
    #
    #
    #
    #   [1]: http://aws.amazon.com/amazon-linux-2/faqs/
    #   [2]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-serversdk5-migration.html
    #
    # @return [Types::UpdateContainerGroupDefinitionOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateContainerGroupDefinitionOutput#container_group_definition #container_group_definition} => Types::ContainerGroupDefinition
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_container_group_definition({
    #     name: "ContainerGroupDefinitionNameOrArn", # required
    #     game_server_container_definition: {
    #       container_name: "NonZeroAnd128MaxAsciiString", # required
    #       depends_on: [
    #         {
    #           container_name: "NonZeroAnd128MaxAsciiString", # required
    #           condition: "START", # required, accepts START, COMPLETE, SUCCESS, HEALTHY
    #         },
    #       ],
    #       mount_points: [
    #         {
    #           instance_path: "InstancePathString", # required
    #           container_path: "ContainerPathString",
    #           access_level: "READ_ONLY", # accepts READ_ONLY, READ_AND_WRITE
    #         },
    #       ],
    #       environment_override: [
    #         {
    #           name: "NonZeroAnd255MaxString", # required
    #           value: "NonZeroAnd255MaxString", # required
    #         },
    #       ],
    #       image_uri: "ImageUriString", # required
    #       port_configuration: { # required
    #         container_port_ranges: [ # required
    #           {
    #             from_port: 1, # required
    #             to_port: 1, # required
    #             protocol: "TCP", # required, accepts TCP, UDP
    #           },
    #         ],
    #       },
    #       server_sdk_version: "ServerSdkVersion", # required
    #     },
    #     support_container_definitions: [
    #       {
    #         container_name: "NonZeroAnd128MaxAsciiString", # required
    #         depends_on: [
    #           {
    #             container_name: "NonZeroAnd128MaxAsciiString", # required
    #             condition: "START", # required, accepts START, COMPLETE, SUCCESS, HEALTHY
    #           },
    #         ],
    #         mount_points: [
    #           {
    #             instance_path: "InstancePathString", # required
    #             container_path: "ContainerPathString",
    #             access_level: "READ_ONLY", # accepts READ_ONLY, READ_AND_WRITE
    #           },
    #         ],
    #         environment_override: [
    #           {
    #             name: "NonZeroAnd255MaxString", # required
    #             value: "NonZeroAnd255MaxString", # required
    #           },
    #         ],
    #         essential: false,
    #         health_check: {
    #           command: ["NonZeroAnd255MaxString"], # required
    #           interval: 1,
    #           retries: 1,
    #           start_period: 1,
    #           timeout: 1,
    #         },
    #         image_uri: "ImageUriString", # required
    #         memory_hard_limit_mebibytes: 1,
    #         port_configuration: {
    #           container_port_ranges: [ # required
    #             {
    #               from_port: 1, # required
    #               to_port: 1, # required
    #               protocol: "TCP", # required, accepts TCP, UDP
    #             },
    #           ],
    #         },
    #         vcpu: 1.0,
    #       },
    #     ],
    #     total_memory_limit_mebibytes: 1,
    #     total_vcpu_limit: 1.0,
    #     version_description: "NonZeroAndMaxString",
    #     source_version_number: 1,
    #     operating_system: "AMAZON_LINUX_2023", # accepts AMAZON_LINUX_2023
    #   })
    #
    # @example Response structure
    #
    #   resp.container_group_definition.container_group_definition_arn #=> String
    #   resp.container_group_definition.creation_time #=> Time
    #   resp.container_group_definition.operating_system #=> String, one of "AMAZON_LINUX_2023"
    #   resp.container_group_definition.name #=> String
    #   resp.container_group_definition.container_group_type #=> String, one of "GAME_SERVER", "PER_INSTANCE"
    #   resp.container_group_definition.total_memory_limit_mebibytes #=> Integer
    #   resp.container_group_definition.total_vcpu_limit #=> Float
    #   resp.container_group_definition.game_server_container_definition.container_name #=> String
    #   resp.container_group_definition.game_server_container_definition.depends_on #=> Array
    #   resp.container_group_definition.game_server_container_definition.depends_on[0].container_name #=> String
    #   resp.container_group_definition.game_server_container_definition.depends_on[0].condition #=> String, one of "START", "COMPLETE", "SUCCESS", "HEALTHY"
    #   resp.container_group_definition.game_server_container_definition.mount_points #=> Array
    #   resp.container_group_definition.game_server_container_definition.mount_points[0].instance_path #=> String
    #   resp.container_group_definition.game_server_container_definition.mount_points[0].container_path #=> String
    #   resp.container_group_definition.game_server_container_definition.mount_points[0].access_level #=> String, one of "READ_ONLY", "READ_AND_WRITE"
    #   resp.container_group_definition.game_server_container_definition.environment_override #=> Array
    #   resp.container_group_definition.game_server_container_definition.environment_override[0].name #=> String
    #   resp.container_group_definition.game_server_container_definition.environment_override[0].value #=> String
    #   resp.container_group_definition.game_server_container_definition.image_uri #=> String
    #   resp.container_group_definition.game_server_container_definition.port_configuration.container_port_ranges #=> Array
    #   resp.container_group_definition.game_server_container_definition.port_configuration.container_port_ranges[0].from_port #=> Integer
    #   resp.container_group_definition.game_server_container_definition.port_configuration.container_port_ranges[0].to_port #=> Integer
    #   resp.container_group_definition.game_server_container_definition.port_configuration.container_port_ranges[0].protocol #=> String, one of "TCP", "UDP"
    #   resp.container_group_definition.game_server_container_definition.resolved_image_digest #=> String
    #   resp.container_group_definition.game_server_container_definition.server_sdk_version #=> String
    #   resp.container_group_definition.support_container_definitions #=> Array
    #   resp.container_group_definition.support_container_definitions[0].container_name #=> String
    #   resp.container_group_definition.support_container_definitions[0].depends_on #=> Array
    #   resp.container_group_definition.support_container_definitions[0].depends_on[0].container_name #=> String
    #   resp.container_group_definition.support_container_definitions[0].depends_on[0].condition #=> String, one of "START", "COMPLETE", "SUCCESS", "HEALTHY"
    #   resp.container_group_definition.support_container_definitions[0].mount_points #=> Array
    #   resp.container_group_definition.support_container_definitions[0].mount_points[0].instance_path #=> String
    #   resp.container_group_definition.support_container_definitions[0].mount_points[0].container_path #=> String
    #   resp.container_group_definition.support_container_definitions[0].mount_points[0].access_level #=> String, one of "READ_ONLY", "READ_AND_WRITE"
    #   resp.container_group_definition.support_container_definitions[0].environment_override #=> Array
    #   resp.container_group_definition.support_container_definitions[0].environment_override[0].name #=> String
    #   resp.container_group_definition.support_container_definitions[0].environment_override[0].value #=> String
    #   resp.container_group_definition.support_container_definitions[0].essential #=> Boolean
    #   resp.container_group_definition.support_container_definitions[0].health_check.command #=> Array
    #   resp.container_group_definition.support_container_definitions[0].health_check.command[0] #=> String
    #   resp.container_group_definition.support_container_definitions[0].health_check.interval #=> Integer
    #   resp.container_group_definition.support_container_definitions[0].health_check.retries #=> Integer
    #   resp.container_group_definition.support_container_definitions[0].health_check.start_period #=> Integer
    #   resp.container_group_definition.support_container_definitions[0].health_check.timeout #=> Integer
    #   resp.container_group_definition.support_container_definitions[0].image_uri #=> String
    #   resp.container_group_definition.support_container_definitions[0].memory_hard_limit_mebibytes #=> Integer
    #   resp.container_group_definition.support_container_definitions[0].port_configuration.container_port_ranges #=> Array
    #   resp.container_group_definition.support_container_definitions[0].port_configuration.container_port_ranges[0].from_port #=> Integer
    #   resp.container_group_definition.support_container_definitions[0].port_configuration.container_port_ranges[0].to_port #=> Integer
    #   resp.container_group_definition.support_container_definitions[0].port_configuration.container_port_ranges[0].protocol #=> String, one of "TCP", "UDP"
    #   resp.container_group_definition.support_container_definitions[0].resolved_image_digest #=> String
    #   resp.container_group_definition.support_container_definitions[0].vcpu #=> Float
    #   resp.container_group_definition.version_number #=> Integer
    #   resp.container_group_definition.version_description #=> String
    #   resp.container_group_definition.status #=> String, one of "READY", "COPYING", "FAILED"
    #   resp.container_group_definition.status_reason #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/UpdateContainerGroupDefinition AWS API Documentation
    #
    # @overload update_container_group_definition(params = {})
    # @param [Hash] params ({})
    def update_container_group_definition(params = {}, options = {})
      req = build_request(:update_container_group_definition, params)
      req.send_request(options)
    end

    # Updates a fleet's mutable attributes, such as game session protection
    # and resource creation limits.
    #
    # To update fleet attributes, specify the fleet ID and the property
    # values that you want to change. If successful, Amazon GameLift Servers
    # returns the identifiers for the updated fleet.
    #
    # **Learn more**
    #
    # [Setting up Amazon GameLift Servers fleets][1]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html
    #
    # @option params [required, String] :fleet_id
    #   A unique identifier for the fleet to update attribute metadata for.
    #   You can use either the fleet ID or ARN value.
    #
    # @option params [String] :name
    #   A descriptive label that is associated with a fleet. Fleet names do
    #   not need to be unique.
    #
    # @option params [String] :description
    #   A human-readable description of a fleet.
    #
    # @option params [String] :new_game_session_protection_policy
    #   The game session protection policy to apply to all new game sessions
    #   created in this fleet. Game sessions that already exist are not
    #   affected. You can set protection for individual game sessions using
    #   [UpdateGameSession][1] .
    #
    #   * **NoProtection** -- The game session can be terminated during a
    #     scale-down event.
    #
    #   * **FullProtection** -- If the game session is in an `ACTIVE` status,
    #     it cannot be terminated during a scale-down event.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_UpdateGameSession.html
    #
    # @option params [Types::ResourceCreationLimitPolicy] :resource_creation_limit_policy
    #   Policy settings that limit the number of game sessions an individual
    #   player can create over a span of time.
    #
    # @option params [Array<String>] :metric_groups
    #   The name of a metric group to add this fleet to. Use a metric group in
    #   Amazon CloudWatch to aggregate the metrics from multiple fleets.
    #   Provide an existing metric group name, or create a new metric group by
    #   providing a new name. A fleet can only be in one metric group at a
    #   time.
    #
    # @option params [Types::AnywhereConfiguration] :anywhere_configuration
    #   Amazon GameLift Servers Anywhere configuration options.
    #
    # @return [Types::UpdateFleetAttributesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateFleetAttributesOutput#fleet_id #fleet_id} => String
    #   * {Types::UpdateFleetAttributesOutput#fleet_arn #fleet_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_fleet_attributes({
    #     fleet_id: "FleetIdOrArn", # required
    #     name: "NonZeroAndMaxString",
    #     description: "NonZeroAndMaxString",
    #     new_game_session_protection_policy: "NoProtection", # accepts NoProtection, FullProtection
    #     resource_creation_limit_policy: {
    #       new_game_sessions_per_creator: 1,
    #       policy_period_in_minutes: 1,
    #     },
    #     metric_groups: ["MetricGroup"],
    #     anywhere_configuration: {
    #       cost: "NonNegativeLimitedLengthDouble", # required
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.fleet_id #=> String
    #   resp.fleet_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/UpdateFleetAttributes AWS API Documentation
    #
    # @overload update_fleet_attributes(params = {})
    # @param [Hash] params ({})
    def update_fleet_attributes(params = {}, options = {})
      req = build_request(:update_fleet_attributes, params)
      req.send_request(options)
    end

    # Updates capacity settings for a managed EC2 fleet or managed container
    # fleet. For these fleets, you adjust capacity by changing the number of
    # instances in the fleet. Fleet capacity determines the number of game
    # sessions and players that the fleet can host based on its
    # configuration. For fleets with multiple locations, use this operation
    # to manage capacity settings in each location individually.
    #
    # Use this operation to set these fleet capacity properties:
    #
    # * Minimum/maximum size: Set hard limits on the number of Amazon EC2
    #   instances allowed. If Amazon GameLift Servers receives a
    #   request--either through manual update or automatic scaling--it
    #   won't change the capacity to a value outside of this range.
    #
    # * Desired capacity: As an alternative to automatic scaling, manually
    #   set the number of Amazon EC2 instances to be maintained. Before
    #   changing a fleet's desired capacity, check the maximum capacity of
    #   the fleet's Amazon EC2 instance type by calling
    #   [DescribeEC2InstanceLimits][1].
    #
    # To update capacity for a fleet's home Region, or if the fleet has no
    # remote locations, omit the `Location` parameter. The fleet must be in
    # `ACTIVE` status.
    #
    # To update capacity for a fleet's remote location, set the `Location`
    # parameter to the location to update. The location must be in `ACTIVE`
    # status.
    #
    # If successful, Amazon GameLift Servers updates the capacity settings
    # and returns the identifiers for the updated fleet and/or location. If
    # a requested change to desired capacity exceeds the instance type's
    # limit, the `LimitExceeded` exception occurs.
    #
    # Updates often prompt an immediate change in fleet capacity, such as
    # when current capacity is different than the new desired capacity or
    # outside the new limits. In this scenario, Amazon GameLift Servers
    # automatically initiates steps to add or remove instances in the fleet
    # location. You can track a fleet's current capacity by calling
    # [DescribeFleetCapacity][2] or [DescribeFleetLocationCapacity][3].
    #
    # **Learn more**
    #
    # [Scaling fleet capacity][4]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_DescribeEC2InstanceLimits.html
    # [2]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_DescribeFleetCapacity.html
    # [3]: https://docs.aws.amazon.com/gamelift/latest/apireference/API_DescribeFleetLocationCapacity.html
    # [4]: https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-manage-capacity.html
    #
    # @option params [required, String] :fleet_id
    #   A unique identifier for the fleet to update capacity settings for. You
    #   can use either the fleet ID or ARN value.
    #
    # @option params [Integer] :desired_instances
    #   The number of Amazon EC2 instances you want to maintain in the
    #   specified fleet location. This value must fall between the minimum and
    #   maximum size limits. Changes in desired instance value can take up to
    #   1 minute to be reflected when viewing the fleet's capacity settings.
    #
    # @option params [Integer] :min_size
    #   The minimum number of instances that are allowed in the specified
    #   fleet location. If this parameter is not set, the default is 0.
    #
    # @option params [Integer] :max_size
    #   The maximum number of instances that are allowed in the specified
    #   fleet location. If this parameter is not set, the default is 1.
    #
    # @option params [String] :location
    #   The name of a remote location to update fleet capacity settings for,
    #   in the form of an Amazon Web Services Region code such as `us-west-2`.
    #
    # @return [Types::UpdateFleetCapacityOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateFleetCapacityOutput#fleet_id #fleet_id} => String
    #   * {Types::UpdateFleetCapacityOutput#fleet_arn #fleet_arn} => String
    #   * {Types::UpdateFleetCapacityOutput#location #location} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_fleet_capacity({
    #     fleet_id: "FleetIdOrArn", # required
    #     desired_instances: 1,
    #     min_size: 1,
    #     max_size: 1,
    #     location: "LocationStringModel",
    #   })
    #
    # @example Response structure
    #
    #   resp.fleet_id #=> String
    #   resp.fleet_arn #=> String
    #   resp.location #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/UpdateFleetCapacity AWS API Documentation
    #
    # @overload update_fleet_capacity(params = {})
    # @param [Hash] params ({})
    def update_fleet_capacity(params = {}, options = {})
      req = build_request(:update_fleet_capacity, params)
      req.send_request(options)
    end

    # Updates permissions that allow inbound traffic to connect to game
    # sessions in the fleet.
    #
    # To update settings, specify the fleet ID to be updated and specify the
    # changes to be made. List the permissions you want to add in
    # `InboundPermissionAuthorizations`, and permissions you want to remove
    # in `InboundPermissionRevocations`. Permissions to be removed must
    # match existing fleet permissions.
    #
    # If successful, the fleet ID for the updated fleet is returned. For
    # fleets with remote locations, port setting updates can take time to
    # propagate across all locations. You can check the status of updates in
    # each location by calling `DescribeFleetPortSettings` with a location
    # name.
    #
    # **Learn more**
    #
    # [Setting up Amazon GameLift Servers fleets][1]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html
    #
    # @option params [required, String] :fleet_id
    #   A unique identifier for the fleet to update port settings for. You can
    #   use either the fleet ID or ARN value.
    #
    # @option params [Array<Types::IpPermission>] :inbound_permission_authorizations
    #   A collection of port settings to be added to the fleet resource.
    #
    # @option params [Array<Types::IpPermission>] :inbound_permission_revocations
    #   A collection of port settings to be removed from the fleet resource.
    #
    # @return [Types::UpdateFleetPortSettingsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateFleetPortSettingsOutput#fleet_id #fleet_id} => String
    #   * {Types::UpdateFleetPortSettingsOutput#fleet_arn #fleet_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_fleet_port_settings({
    #     fleet_id: "FleetIdOrArn", # required
    #     inbound_permission_authorizations: [
    #       {
    #         from_port: 1, # required
    #         to_port: 1, # required
    #         ip_range: "IpRange", # required
    #         protocol: "TCP", # required, accepts TCP, UDP
    #       },
    #     ],
    #     inbound_permission_revocations: [
    #       {
    #         from_port: 1, # required
    #         to_port: 1, # required
    #         ip_range: "IpRange", # required
    #         protocol: "TCP", # required, accepts TCP, UDP
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.fleet_id #=> String
    #   resp.fleet_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/UpdateFleetPortSettings AWS API Documentation
    #
    # @overload update_fleet_port_settings(params = {})
    # @param [Hash] params ({})
    def update_fleet_port_settings(params = {}, options = {})
      req = build_request(:update_fleet_port_settings, params)
      req.send_request(options)
    end

    # **This operation is used with the Amazon GameLift Servers FleetIQ
    # solution and game server groups.**
    #
    # Updates information about a registered game server to help Amazon
    # GameLift Servers FleetIQ track game server availability. This
    # operation is called by a game server process that is running on an
    # instance in a game server group.
    #
    # Use this operation to update the following types of game server
    # information. You can make all three types of updates in the same
    # request:
    #
    # * To update the game server's utilization status from `AVAILABLE`
    #   (when the game server is available to be claimed) to `UTILIZED`
    #   (when the game server is currently hosting games). Identify the game
    #   server and game server group and specify the new utilization status.
    #   You can't change the status from to `UTILIZED` to `AVAILABLE` .
    #
    # * To report health status, identify the game server and game server
    #   group and set health check to `HEALTHY`. If a game server does not
    #   report health status for a certain length of time, the game server
    #   is no longer considered healthy. As a result, it will be eventually
    #   deregistered from the game server group to avoid affecting
    #   utilization metrics. The best practice is to report health every 60
    #   seconds.
    #
    # * To change game server metadata, provide updated game server data.
    #
    # Once a game server is successfully updated, the relevant statuses and
    # timestamps are updated.
    #
    # **Learn more**
    #
    # [Amazon GameLift Servers FleetIQ Guide][1]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/gsg-intro.html
    #
    # @option params [required, String] :game_server_group_name
    #   A unique identifier for the game server group where the game server is
    #   running.
    #
    # @option params [required, String] :game_server_id
    #   A custom string that uniquely identifies the game server to update.
    #
    # @option params [String] :game_server_data
    #   A set of custom game server properties, formatted as a single string
    #   value. This data is passed to a game client or service when it
    #   requests information on game servers.
    #
    # @option params [String] :utilization_status
    #   Indicates if the game server is available or is currently hosting
    #   gameplay. You can update a game server status from `AVAILABLE` to
    #   `UTILIZED`, but you can't change a the status from `UTILIZED` to
    #   `AVAILABLE`.
    #
    # @option params [String] :health_check
    #   Indicates health status of the game server. A request that includes
    #   this parameter updates the game server's *LastHealthCheckTime*
    #   timestamp.
    #
    # @return [Types::UpdateGameServerOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateGameServerOutput#game_server #game_server} => Types::GameServer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_game_server({
    #     game_server_group_name: "GameServerGroupNameOrArn", # required
    #     game_server_id: "GameServerId", # required
    #     game_server_data: "GameServerData",
    #     utilization_status: "AVAILABLE", # accepts AVAILABLE, UTILIZED
    #     health_check: "HEALTHY", # accepts HEALTHY
    #   })
    #
    # @example Response structure
    #
    #   resp.game_server.game_server_group_name #=> String
    #   resp.game_server.game_server_group_arn #=> String
    #   resp.game_server.game_server_id #=> String
    #   resp.game_server.instance_id #=> String
    #   resp.game_server.connection_info #=> String
    #   resp.game_server.game_server_data #=> String
    #   resp.game_server.claim_status #=> String, one of "CLAIMED"
    #   resp.game_server.utilization_status #=> String, one of "AVAILABLE", "UTILIZED"
    #   resp.game_server.registration_time #=> Time
    #   resp.game_server.last_claim_time #=> Time
    #   resp.game_server.last_health_check_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/UpdateGameServer AWS API Documentation
    #
    # @overload update_game_server(params = {})
    # @param [Hash] params ({})
    def update_game_server(params = {}, options = {})
      req = build_request(:update_game_server, params)
      req.send_request(options)
    end

    # **This operation is used with the Amazon GameLift Servers FleetIQ
    # solution and game server groups.**
    #
    # Updates Amazon GameLift Servers FleetIQ-specific properties for a game
    # server group. Many Auto Scaling group properties are updated on the
    # Auto Scaling group directly, including the launch template, Auto
    # Scaling policies, and maximum/minimum/desired instance counts.
    #
    # To update the game server group, specify the game server group ID and
    # provide the updated values. Before applying the updates, the new
    # values are validated to ensure that Amazon GameLift Servers FleetIQ
    # can continue to perform instance balancing activity. If successful, a
    # `GameServerGroup` object is returned.
    #
    # **Learn more**
    #
    # [Amazon GameLift Servers FleetIQ Guide][1]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/gsg-intro.html
    #
    # @option params [required, String] :game_server_group_name
    #   A unique identifier for the game server group. Use either the name or
    #   ARN value.
    #
    # @option params [String] :role_arn
    #   The Amazon Resource Name ([ARN][1]) for an IAM role that allows Amazon
    #   GameLift Servers to access your Amazon EC2 Auto Scaling groups.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html
    #
    # @option params [Array<Types::InstanceDefinition>] :instance_definitions
    #   An updated list of Amazon EC2 instance types to use in the Auto
    #   Scaling group. The instance definitions must specify at least two
    #   different instance types that are supported by Amazon GameLift Servers
    #   FleetIQ. This updated list replaces the entire current list of
    #   instance definitions for the game server group. For more information
    #   on instance types, see [EC2 Instance Types][1] in the *Amazon EC2 User
    #   Guide*. You can optionally specify capacity weighting for each
    #   instance type. If no weight value is specified for an instance type,
    #   it is set to the default value "1". For more information about
    #   capacity weighting, see [ Instance Weighting for Amazon EC2 Auto
    #   Scaling][2] in the Amazon EC2 Auto Scaling User Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html
    #   [2]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-instance-weighting.html
    #
    # @option params [String] :game_server_protection_policy
    #   A flag that indicates whether instances in the game server group are
    #   protected from early termination. Unprotected instances that have
    #   active game servers running might be terminated during a scale-down
    #   event, causing players to be dropped from the game. Protected
    #   instances cannot be terminated while there are active game servers
    #   running except in the event of a forced game server group deletion
    #   (see ). An exception to this is with Spot Instances, which can be
    #   terminated by Amazon Web Services regardless of protection status.
    #   This property is set to `NO_PROTECTION` by default.
    #
    # @option params [String] :balancing_strategy
    #   Indicates how Amazon GameLift Servers FleetIQ balances the use of Spot
    #   Instances and On-Demand Instances in the game server group. Method
    #   options include the following:
    #
    #   * `SPOT_ONLY` - Only Spot Instances are used in the game server group.
    #     If Spot Instances are unavailable or not viable for game hosting,
    #     the game server group provides no hosting capacity until Spot
    #     Instances can again be used. Until then, no new instances are
    #     started, and the existing nonviable Spot Instances are terminated
    #     (after current gameplay ends) and are not replaced.
    #
    #   * `SPOT_PREFERRED` - (default value) Spot Instances are used whenever
    #     available in the game server group. If Spot Instances are
    #     unavailable, the game server group continues to provide hosting
    #     capacity by falling back to On-Demand Instances. Existing nonviable
    #     Spot Instances are terminated (after current gameplay ends) and are
    #     replaced with new On-Demand Instances.
    #
    #   * `ON_DEMAND_ONLY` - Only On-Demand Instances are used in the game
    #     server group. No Spot Instances are used, even when available, while
    #     this balancing strategy is in force.
    #
    # @return [Types::UpdateGameServerGroupOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateGameServerGroupOutput#game_server_group #game_server_group} => Types::GameServerGroup
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_game_server_group({
    #     game_server_group_name: "GameServerGroupNameOrArn", # required
    #     role_arn: "IamRoleArn",
    #     instance_definitions: [
    #       {
    #         instance_type: "c4.large", # required, accepts c4.large, c4.xlarge, c4.2xlarge, c4.4xlarge, c4.8xlarge, c5.large, c5.xlarge, c5.2xlarge, c5.4xlarge, c5.9xlarge, c5.12xlarge, c5.18xlarge, c5.24xlarge, c5a.large, c5a.xlarge, c5a.2xlarge, c5a.4xlarge, c5a.8xlarge, c5a.12xlarge, c5a.16xlarge, c5a.24xlarge, c6g.medium, c6g.large, c6g.xlarge, c6g.2xlarge, c6g.4xlarge, c6g.8xlarge, c6g.12xlarge, c6g.16xlarge, r4.large, r4.xlarge, r4.2xlarge, r4.4xlarge, r4.8xlarge, r4.16xlarge, r5.large, r5.xlarge, r5.2xlarge, r5.4xlarge, r5.8xlarge, r5.12xlarge, r5.16xlarge, r5.24xlarge, r5a.large, r5a.xlarge, r5a.2xlarge, r5a.4xlarge, r5a.8xlarge, r5a.12xlarge, r5a.16xlarge, r5a.24xlarge, r6g.medium, r6g.large, r6g.xlarge, r6g.2xlarge, r6g.4xlarge, r6g.8xlarge, r6g.12xlarge, r6g.16xlarge, m4.large, m4.xlarge, m4.2xlarge, m4.4xlarge, m4.10xlarge, m5.large, m5.xlarge, m5.2xlarge, m5.4xlarge, m5.8xlarge, m5.12xlarge, m5.16xlarge, m5.24xlarge, m5a.large, m5a.xlarge, m5a.2xlarge, m5a.4xlarge, m5a.8xlarge, m5a.12xlarge, m5a.16xlarge, m5a.24xlarge, m6g.medium, m6g.large, m6g.xlarge, m6g.2xlarge, m6g.4xlarge, m6g.8xlarge, m6g.12xlarge, m6g.16xlarge
    #         weighted_capacity: "WeightedCapacity",
    #       },
    #     ],
    #     game_server_protection_policy: "NO_PROTECTION", # accepts NO_PROTECTION, FULL_PROTECTION
    #     balancing_strategy: "SPOT_ONLY", # accepts SPOT_ONLY, SPOT_PREFERRED, ON_DEMAND_ONLY
    #   })
    #
    # @example Response structure
    #
    #   resp.game_server_group.game_server_group_name #=> String
    #   resp.game_server_group.game_server_group_arn #=> String
    #   resp.game_server_group.role_arn #=> String
    #   resp.game_server_group.instance_definitions #=> Array
    #   resp.game_server_group.instance_definitions[0].instance_type #=> String, one of "c4.large", "c4.xlarge", "c4.2xlarge", "c4.4xlarge", "c4.8xlarge", "c5.large", "c5.xlarge", "c5.2xlarge", "c5.4xlarge", "c5.9xlarge", "c5.12xlarge", "c5.18xlarge", "c5.24xlarge", "c5a.large", "c5a.xlarge", "c5a.2xlarge", "c5a.4xlarge", "c5a.8xlarge", "c5a.12xlarge", "c5a.16xlarge", "c5a.24xlarge", "c6g.medium", "c6g.large", "c6g.xlarge", "c6g.2xlarge", "c6g.4xlarge", "c6g.8xlarge", "c6g.12xlarge", "c6g.16xlarge", "r4.large", "r4.xlarge", "r4.2xlarge", "r4.4xlarge", "r4.8xlarge", "r4.16xlarge", "r5.large", "r5.xlarge", "r5.2xlarge", "r5.4xlarge", "r5.8xlarge", "r5.12xlarge", "r5.16xlarge", "r5.24xlarge", "r5a.large", "r5a.xlarge", "r5a.2xlarge", "r5a.4xlarge", "r5a.8xlarge", "r5a.12xlarge", "r5a.16xlarge", "r5a.24xlarge", "r6g.medium", "r6g.large", "r6g.xlarge", "r6g.2xlarge", "r6g.4xlarge", "r6g.8xlarge", "r6g.12xlarge", "r6g.16xlarge", "m4.large", "m4.xlarge", "m4.2xlarge", "m4.4xlarge", "m4.10xlarge", "m5.large", "m5.xlarge", "m5.2xlarge", "m5.4xlarge", "m5.8xlarge", "m5.12xlarge", "m5.16xlarge", "m5.24xlarge", "m5a.large", "m5a.xlarge", "m5a.2xlarge", "m5a.4xlarge", "m5a.8xlarge", "m5a.12xlarge", "m5a.16xlarge", "m5a.24xlarge", "m6g.medium", "m6g.large", "m6g.xlarge", "m6g.2xlarge", "m6g.4xlarge", "m6g.8xlarge", "m6g.12xlarge", "m6g.16xlarge"
    #   resp.game_server_group.instance_definitions[0].weighted_capacity #=> String
    #   resp.game_server_group.balancing_strategy #=> String, one of "SPOT_ONLY", "SPOT_PREFERRED", "ON_DEMAND_ONLY"
    #   resp.game_server_group.game_server_protection_policy #=> String, one of "NO_PROTECTION", "FULL_PROTECTION"
    #   resp.game_server_group.auto_scaling_group_arn #=> String
    #   resp.game_server_group.status #=> String, one of "NEW", "ACTIVATING", "ACTIVE", "DELETE_SCHEDULED", "DELETING", "DELETED", "ERROR"
    #   resp.game_server_group.status_reason #=> String
    #   resp.game_server_group.suspended_actions #=> Array
    #   resp.game_server_group.suspended_actions[0] #=> String, one of "REPLACE_INSTANCE_TYPES"
    #   resp.game_server_group.creation_time #=> Time
    #   resp.game_server_group.last_updated_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/UpdateGameServerGroup AWS API Documentation
    #
    # @overload update_game_server_group(params = {})
    # @param [Hash] params ({})
    def update_game_server_group(params = {}, options = {})
      req = build_request(:update_game_server_group, params)
      req.send_request(options)
    end

    # Updates the mutable properties of a game session.
    #
    # To update a game session, specify the game session ID and the values
    # you want to change.
    #
    # If successful, the updated `GameSession` object is returned.
    #
    # [All APIs by task][1]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets
    #
    # @option params [required, String] :game_session_id
    #   A unique identifier for the game session to update.
    #
    # @option params [Integer] :maximum_player_session_count
    #   The maximum number of players that can be connected simultaneously to
    #   the game session.
    #
    # @option params [String] :name
    #   A descriptive label that is associated with a game session. Session
    #   names do not need to be unique.
    #
    # @option params [String] :player_session_creation_policy
    #   A policy that determines whether the game session is accepting new
    #   players.
    #
    # @option params [String] :protection_policy
    #   Game session protection policy to apply to this game session only.
    #
    #   * `NoProtection` -- The game session can be terminated during a
    #     scale-down event.
    #
    #   * `FullProtection` -- If the game session is in an `ACTIVE` status, it
    #     cannot be terminated during a scale-down event.
    #
    # @option params [Array<Types::GameProperty>] :game_properties
    #   A set of key-value pairs that can store custom data in a game session.
    #   For example: `{"Key": "difficulty", "Value": "novice"}`. You can use
    #   this parameter to modify game properties in an active game session.
    #   This action adds new properties and modifies existing properties.
    #   There is no way to delete properties. For an example, see [Update the
    #   value of a game property][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-client-api.html#game-properties-update
    #
    # @return [Types::UpdateGameSessionOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateGameSessionOutput#game_session #game_session} => Types::GameSession
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_game_session({
    #     game_session_id: "ArnStringModel", # required
    #     maximum_player_session_count: 1,
    #     name: "NonZeroAndMaxString",
    #     player_session_creation_policy: "ACCEPT_ALL", # accepts ACCEPT_ALL, DENY_ALL
    #     protection_policy: "NoProtection", # accepts NoProtection, FullProtection
    #     game_properties: [
    #       {
    #         key: "GamePropertyKey", # required
    #         value: "GamePropertyValue", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.game_session.game_session_id #=> String
    #   resp.game_session.name #=> String
    #   resp.game_session.fleet_id #=> String
    #   resp.game_session.fleet_arn #=> String
    #   resp.game_session.creation_time #=> Time
    #   resp.game_session.termination_time #=> Time
    #   resp.game_session.current_player_session_count #=> Integer
    #   resp.game_session.maximum_player_session_count #=> Integer
    #   resp.game_session.status #=> String, one of "ACTIVE", "ACTIVATING", "TERMINATED", "TERMINATING", "ERROR"
    #   resp.game_session.status_reason #=> String, one of "INTERRUPTED", "TRIGGERED_ON_PROCESS_TERMINATE", "FORCE_TERMINATED"
    #   resp.game_session.game_properties #=> Array
    #   resp.game_session.game_properties[0].key #=> String
    #   resp.game_session.game_properties[0].value #=> String
    #   resp.game_session.ip_address #=> String
    #   resp.game_session.dns_name #=> String
    #   resp.game_session.port #=> Integer
    #   resp.game_session.player_session_creation_policy #=> String, one of "ACCEPT_ALL", "DENY_ALL"
    #   resp.game_session.creator_id #=> String
    #   resp.game_session.game_session_data #=> String
    #   resp.game_session.matchmaker_data #=> String
    #   resp.game_session.location #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/UpdateGameSession AWS API Documentation
    #
    # @overload update_game_session(params = {})
    # @param [Hash] params ({})
    def update_game_session(params = {}, options = {})
      req = build_request(:update_game_session, params)
      req.send_request(options)
    end

    # Updates the configuration of a game session queue, which determines
    # how the queue processes new game session requests. To update settings,
    # specify the queue name to be updated and provide the new settings.
    # When updating destinations, provide a complete list of destinations.
    #
    # **Learn more**
    #
    # [ Using Multi-Region Queues][1]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/queues-intro.html
    #
    # @option params [required, String] :name
    #   A descriptive label that is associated with game session queue. Queue
    #   names must be unique within each Region. You can use either the queue
    #   ID or ARN value.
    #
    # @option params [Integer] :timeout_in_seconds
    #   The maximum time, in seconds, that a new game session placement
    #   request remains in the queue. When a request exceeds this time, the
    #   game session placement changes to a `TIMED_OUT` status.
    #
    # @option params [Array<Types::PlayerLatencyPolicy>] :player_latency_policies
    #   A set of policies that enforce a sliding cap on player latency when
    #   processing game sessions placement requests. Use multiple policies to
    #   gradually relax the cap over time if Amazon GameLift Servers can't
    #   make a placement. Policies are evaluated in order starting with the
    #   lowest maximum latency value. When updating policies, provide a
    #   complete collection of policies.
    #
    # @option params [Array<Types::GameSessionQueueDestination>] :destinations
    #   A list of fleets and/or fleet aliases that can be used to fulfill game
    #   session placement requests in the queue. Destinations are identified
    #   by either a fleet ARN or a fleet alias ARN, and are listed in order of
    #   placement preference. When updating this list, provide a complete list
    #   of destinations.
    #
    # @option params [Types::FilterConfiguration] :filter_configuration
    #   A list of locations where a queue is allowed to place new game
    #   sessions. Locations are specified in the form of Amazon Web Services
    #   Region codes, such as `us-west-2`. If this parameter is not set, game
    #   sessions can be placed in any queue location. To remove an existing
    #   filter configuration, pass in an empty set.
    #
    # @option params [Types::PriorityConfiguration] :priority_configuration
    #   Custom settings to use when prioritizing destinations and locations
    #   for game session placements. This configuration replaces the FleetIQ
    #   default prioritization process. Priority types that are not explicitly
    #   named will be automatically applied at the end of the prioritization
    #   process. To remove an existing priority configuration, pass in an
    #   empty set.
    #
    # @option params [String] :custom_event_data
    #   Information to be added to all events that are related to this game
    #   session queue.
    #
    # @option params [String] :notification_target
    #   An SNS topic ARN that is set up to receive game session placement
    #   notifications. See [ Setting up notifications for game session
    #   placement][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/queue-notification.html
    #
    # @return [Types::UpdateGameSessionQueueOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateGameSessionQueueOutput#game_session_queue #game_session_queue} => Types::GameSessionQueue
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_game_session_queue({
    #     name: "GameSessionQueueNameOrArn", # required
    #     timeout_in_seconds: 1,
    #     player_latency_policies: [
    #       {
    #         maximum_individual_player_latency_milliseconds: 1,
    #         policy_duration_seconds: 1,
    #       },
    #     ],
    #     destinations: [
    #       {
    #         destination_arn: "ArnStringModel",
    #       },
    #     ],
    #     filter_configuration: {
    #       allowed_locations: ["LocationStringModel"],
    #     },
    #     priority_configuration: {
    #       priority_order: ["LATENCY"], # accepts LATENCY, COST, DESTINATION, LOCATION
    #       location_order: ["LocationStringModel"],
    #     },
    #     custom_event_data: "QueueCustomEventData",
    #     notification_target: "QueueSnsArnStringModel",
    #   })
    #
    # @example Response structure
    #
    #   resp.game_session_queue.name #=> String
    #   resp.game_session_queue.game_session_queue_arn #=> String
    #   resp.game_session_queue.timeout_in_seconds #=> Integer
    #   resp.game_session_queue.player_latency_policies #=> Array
    #   resp.game_session_queue.player_latency_policies[0].maximum_individual_player_latency_milliseconds #=> Integer
    #   resp.game_session_queue.player_latency_policies[0].policy_duration_seconds #=> Integer
    #   resp.game_session_queue.destinations #=> Array
    #   resp.game_session_queue.destinations[0].destination_arn #=> String
    #   resp.game_session_queue.filter_configuration.allowed_locations #=> Array
    #   resp.game_session_queue.filter_configuration.allowed_locations[0] #=> String
    #   resp.game_session_queue.priority_configuration.priority_order #=> Array
    #   resp.game_session_queue.priority_configuration.priority_order[0] #=> String, one of "LATENCY", "COST", "DESTINATION", "LOCATION"
    #   resp.game_session_queue.priority_configuration.location_order #=> Array
    #   resp.game_session_queue.priority_configuration.location_order[0] #=> String
    #   resp.game_session_queue.custom_event_data #=> String
    #   resp.game_session_queue.notification_target #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/UpdateGameSessionQueue AWS API Documentation
    #
    # @overload update_game_session_queue(params = {})
    # @param [Hash] params ({})
    def update_game_session_queue(params = {}, options = {})
      req = build_request(:update_game_session_queue, params)
      req.send_request(options)
    end

    # Updates settings for a FlexMatch matchmaking configuration. These
    # changes affect all matches and game sessions that are created after
    # the update. To update settings, specify the configuration name to be
    # updated and provide the new settings.
    #
    # **Learn more**
    #
    # [ Design a FlexMatch matchmaker][1]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-configuration.html
    #
    # @option params [required, String] :name
    #   A unique identifier for the matchmaking configuration to update. You
    #   can use either the configuration name or ARN value.
    #
    # @option params [String] :description
    #   A description for the matchmaking configuration.
    #
    # @option params [Array<String>] :game_session_queue_arns
    #   The Amazon Resource Name ([ARN][1]) that is assigned to a Amazon
    #   GameLift Servers game session queue resource and uniquely identifies
    #   it. ARNs are unique across all Regions. Format is
    #   `arn:aws:gamelift:<region>::gamesessionqueue/<queue name>`. Queues can
    #   be located in any Region. Queues are used to start new Amazon GameLift
    #   Servers-hosted game sessions for matches that are created with this
    #   matchmaking configuration. If `FlexMatchMode` is set to `STANDALONE`,
    #   do not set this parameter.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html
    #
    # @option params [Integer] :request_timeout_seconds
    #   The maximum duration, in seconds, that a matchmaking ticket can remain
    #   in process before timing out. Requests that fail due to timing out can
    #   be resubmitted as needed.
    #
    # @option params [Integer] :acceptance_timeout_seconds
    #   The length of time (in seconds) to wait for players to accept a
    #   proposed match, if acceptance is required.
    #
    # @option params [Boolean] :acceptance_required
    #   A flag that indicates whether a match that was created with this
    #   configuration must be accepted by the matched players. To require
    #   acceptance, set to TRUE. With this option enabled, matchmaking tickets
    #   use the status `REQUIRES_ACCEPTANCE` to indicate when a completed
    #   potential match is waiting for player acceptance.
    #
    # @option params [String] :rule_set_name
    #   A unique identifier for the matchmaking rule set to use with this
    #   configuration. You can use either the rule set name or ARN value. A
    #   matchmaking configuration can only use rule sets that are defined in
    #   the same Region.
    #
    # @option params [String] :notification_target
    #   An SNS topic ARN that is set up to receive matchmaking notifications.
    #   See [ Setting up notifications for matchmaking][1] for more
    #   information.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-notification.html
    #
    # @option params [Integer] :additional_player_count
    #   The number of player slots in a match to keep open for future players.
    #   For example, if the configuration's rule set specifies a match for a
    #   single 12-person team, and the additional player count is set to 2,
    #   only 10 players are selected for the match. This parameter is not used
    #   if `FlexMatchMode` is set to `STANDALONE`.
    #
    # @option params [String] :custom_event_data
    #   Information to add to all events related to the matchmaking
    #   configuration.
    #
    # @option params [Array<Types::GameProperty>] :game_properties
    #   A set of key-value pairs that can store custom data in a game session.
    #   For example: `{"Key": "difficulty", "Value": "novice"}`. This
    #   information is added to the new `GameSession` object that is created
    #   for a successful match. This parameter is not used if `FlexMatchMode`
    #   is set to `STANDALONE`.
    #
    # @option params [String] :game_session_data
    #   A set of custom game session properties, formatted as a single string
    #   value. This data is passed to a game server process with a request to
    #   start a new game session. For more information, see [Start a game
    #   session][1]. This information is added to the game session that is
    #   created for a successful match. This parameter is not used if
    #   `FlexMatchMode` is set to `STANDALONE`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html#gamelift-sdk-server-startsession
    #
    # @option params [String] :backfill_mode
    #   The method that is used to backfill game sessions created with this
    #   matchmaking configuration. Specify MANUAL when your game manages
    #   backfill requests manually or does not use the match backfill feature.
    #   Specify AUTOMATIC to have GameLift create a match backfill request
    #   whenever a game session has one or more open slots. Learn more about
    #   manual and automatic backfill in [Backfill Existing Games with
    #   FlexMatch][1]. Automatic backfill is not available when
    #   `FlexMatchMode` is set to `STANDALONE`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-backfill.html
    #
    # @option params [String] :flex_match_mode
    #   Indicates whether this matchmaking configuration is being used with
    #   Amazon GameLift Servers hosting or as a standalone matchmaking
    #   solution.
    #
    #   * **STANDALONE** - FlexMatch forms matches and returns match
    #     information, including players and team assignments, in a [
    #     MatchmakingSucceeded][1] event.
    #
    #   * **WITH\_QUEUE** - FlexMatch forms matches and uses the specified
    #     Amazon GameLift Servers queue to start a game session for the match.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-events.html#match-events-matchmakingsucceeded
    #
    # @return [Types::UpdateMatchmakingConfigurationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateMatchmakingConfigurationOutput#configuration #configuration} => Types::MatchmakingConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_matchmaking_configuration({
    #     name: "MatchmakingConfigurationName", # required
    #     description: "NonZeroAndMaxString",
    #     game_session_queue_arns: ["ArnStringModel"],
    #     request_timeout_seconds: 1,
    #     acceptance_timeout_seconds: 1,
    #     acceptance_required: false,
    #     rule_set_name: "MatchmakingRuleSetName",
    #     notification_target: "SnsArnStringModel",
    #     additional_player_count: 1,
    #     custom_event_data: "CustomEventData",
    #     game_properties: [
    #       {
    #         key: "GamePropertyKey", # required
    #         value: "GamePropertyValue", # required
    #       },
    #     ],
    #     game_session_data: "GameSessionData",
    #     backfill_mode: "AUTOMATIC", # accepts AUTOMATIC, MANUAL
    #     flex_match_mode: "STANDALONE", # accepts STANDALONE, WITH_QUEUE
    #   })
    #
    # @example Response structure
    #
    #   resp.configuration.name #=> String
    #   resp.configuration.configuration_arn #=> String
    #   resp.configuration.description #=> String
    #   resp.configuration.game_session_queue_arns #=> Array
    #   resp.configuration.game_session_queue_arns[0] #=> String
    #   resp.configuration.request_timeout_seconds #=> Integer
    #   resp.configuration.acceptance_timeout_seconds #=> Integer
    #   resp.configuration.acceptance_required #=> Boolean
    #   resp.configuration.rule_set_name #=> String
    #   resp.configuration.rule_set_arn #=> String
    #   resp.configuration.notification_target #=> String
    #   resp.configuration.additional_player_count #=> Integer
    #   resp.configuration.custom_event_data #=> String
    #   resp.configuration.creation_time #=> Time
    #   resp.configuration.game_properties #=> Array
    #   resp.configuration.game_properties[0].key #=> String
    #   resp.configuration.game_properties[0].value #=> String
    #   resp.configuration.game_session_data #=> String
    #   resp.configuration.backfill_mode #=> String, one of "AUTOMATIC", "MANUAL"
    #   resp.configuration.flex_match_mode #=> String, one of "STANDALONE", "WITH_QUEUE"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/UpdateMatchmakingConfiguration AWS API Documentation
    #
    # @overload update_matchmaking_configuration(params = {})
    # @param [Hash] params ({})
    def update_matchmaking_configuration(params = {}, options = {})
      req = build_request(:update_matchmaking_configuration, params)
      req.send_request(options)
    end

    # Updates the runtime configuration for the specified fleet. The runtime
    # configuration tells Amazon GameLift Servers how to launch server
    # processes on computes in managed EC2 and Anywhere fleets. You can
    # update a fleet's runtime configuration at any time after the fleet is
    # created; it does not need to be in `ACTIVE` status.
    #
    # To update runtime configuration, specify the fleet ID and provide a
    # `RuntimeConfiguration` with an updated set of server process
    # configurations.
    #
    # If successful, the fleet's runtime configuration settings are
    # updated. Fleet computes that run game server processes regularly check
    # for and receive updated runtime configurations. The computes
    # immediately take action to comply with the new configuration by
    # launching new server processes or by not replacing existing processes
    # when they shut down. Updating a fleet's runtime configuration never
    # affects existing server processes.
    #
    # **Learn more**
    #
    # [Setting up Amazon GameLift Servers fleets][1]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html
    #
    # @option params [required, String] :fleet_id
    #   A unique identifier for the fleet to update runtime configuration for.
    #   You can use either the fleet ID or ARN value.
    #
    # @option params [required, Types::RuntimeConfiguration] :runtime_configuration
    #   Instructions for launching server processes on fleet computes. Server
    #   processes run either a custom game build executable or a Amazon
    #   GameLift Servers Realtime script. The runtime configuration lists the
    #   types of server processes to run, how to launch them, and the number
    #   of processes to run concurrently.
    #
    # @return [Types::UpdateRuntimeConfigurationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateRuntimeConfigurationOutput#runtime_configuration #runtime_configuration} => Types::RuntimeConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_runtime_configuration({
    #     fleet_id: "FleetIdOrArn", # required
    #     runtime_configuration: { # required
    #       server_processes: [
    #         {
    #           launch_path: "LaunchPathStringModel", # required
    #           parameters: "LaunchParametersStringModel",
    #           concurrent_executions: 1, # required
    #         },
    #       ],
    #       max_concurrent_game_session_activations: 1,
    #       game_session_activation_timeout_seconds: 1,
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.runtime_configuration.server_processes #=> Array
    #   resp.runtime_configuration.server_processes[0].launch_path #=> String
    #   resp.runtime_configuration.server_processes[0].parameters #=> String
    #   resp.runtime_configuration.server_processes[0].concurrent_executions #=> Integer
    #   resp.runtime_configuration.max_concurrent_game_session_activations #=> Integer
    #   resp.runtime_configuration.game_session_activation_timeout_seconds #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/UpdateRuntimeConfiguration AWS API Documentation
    #
    # @overload update_runtime_configuration(params = {})
    # @param [Hash] params ({})
    def update_runtime_configuration(params = {}, options = {})
      req = build_request(:update_runtime_configuration, params)
      req.send_request(options)
    end

    # Updates Realtime script metadata and content.
    #
    # To update script metadata, specify the script ID and provide updated
    # name and/or version values.
    #
    # To update script content, provide an updated zip file by pointing to
    # either a local file or an Amazon S3 bucket location. You can use
    # either method regardless of how the original script was uploaded. Use
    # the *Version* parameter to track updates to the script.
    #
    # If the call is successful, the updated metadata is stored in the
    # script record and a revised script is uploaded to the Amazon GameLift
    # Servers service. Once the script is updated and acquired by a fleet
    # instance, the new version is used for all new game sessions.
    #
    # **Learn more**
    #
    # [Amazon GameLift Servers Amazon GameLift Servers Realtime][1]
    #
    # **Related actions**
    #
    # [All APIs by task][2]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/developerguide/realtime-intro.html
    # [2]: https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets
    #
    # @option params [required, String] :script_id
    #   A unique identifier for the Realtime script to update. You can use
    #   either the script ID or ARN value.
    #
    # @option params [String] :name
    #   A descriptive label that is associated with a script. Script names do
    #   not need to be unique.
    #
    # @option params [String] :version
    #   Version information that is associated with a build or script. Version
    #   strings do not need to be unique.
    #
    # @option params [Types::S3Location] :storage_location
    #   The location of the Amazon S3 bucket where a zipped file containing
    #   your Realtime scripts is stored. The storage location must specify the
    #   Amazon S3 bucket name, the zip file name (the "key"), and a role ARN
    #   that allows Amazon GameLift Servers to access the Amazon S3 storage
    #   location. The S3 bucket must be in the same Region where you want to
    #   create a new script. By default, Amazon GameLift Servers uploads the
    #   latest version of the zip file; if you have S3 object versioning
    #   turned on, you can use the `ObjectVersion` parameter to specify an
    #   earlier version.
    #
    # @option params [String, StringIO, File] :zip_file
    #   A data object containing your Realtime scripts and dependencies as a
    #   zip file. The zip file can have one or multiple files. Maximum size of
    #   a zip file is 5 MB.
    #
    #   When using the Amazon Web Services CLI tool to create a script, this
    #   parameter is set to the zip file name. It must be prepended with the
    #   string "fileb://" to indicate that the file data is a binary object.
    #   For example: `--zip-file fileb://myRealtimeScript.zip`.
    #
    # @return [Types::UpdateScriptOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateScriptOutput#script #script} => Types::Script
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_script({
    #     script_id: "ScriptIdOrArn", # required
    #     name: "NonZeroAndMaxString",
    #     version: "NonZeroAndMaxString",
    #     storage_location: {
    #       bucket: "NonEmptyString",
    #       key: "NonEmptyString",
    #       role_arn: "NonEmptyString",
    #       object_version: "NonEmptyString",
    #     },
    #     zip_file: "data",
    #   })
    #
    # @example Response structure
    #
    #   resp.script.script_id #=> String
    #   resp.script.script_arn #=> String
    #   resp.script.name #=> String
    #   resp.script.version #=> String
    #   resp.script.size_on_disk #=> Integer
    #   resp.script.creation_time #=> Time
    #   resp.script.storage_location.bucket #=> String
    #   resp.script.storage_location.key #=> String
    #   resp.script.storage_location.role_arn #=> String
    #   resp.script.storage_location.object_version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/UpdateScript AWS API Documentation
    #
    # @overload update_script(params = {})
    # @param [Hash] params ({})
    def update_script(params = {}, options = {})
      req = build_request(:update_script, params)
      req.send_request(options)
    end

    # Validates the syntax of a matchmaking rule or rule set. This operation
    # checks that the rule set is using syntactically correct JSON and that
    # it conforms to allowed property expressions. To validate syntax,
    # provide a rule set JSON string.
    #
    # **Learn more**
    #
    # * [Build a rule set][1]
    #
    # ^
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-rulesets.html
    #
    # @option params [required, String] :rule_set_body
    #   A collection of matchmaking rules to validate, formatted as a JSON
    #   string.
    #
    # @return [Types::ValidateMatchmakingRuleSetOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ValidateMatchmakingRuleSetOutput#valid #valid} => Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.validate_matchmaking_rule_set({
    #     rule_set_body: "RuleSetBody", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.valid #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/gamelift-2015-10-01/ValidateMatchmakingRuleSet AWS API Documentation
    #
    # @overload validate_matchmaking_rule_set(params = {})
    # @param [Hash] params ({})
    def validate_matchmaking_rule_set(params = {}, options = {})
      req = build_request(:validate_matchmaking_rule_set, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::GameLift')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-gamelift'
      context[:gem_version] = '1.112.0'
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
