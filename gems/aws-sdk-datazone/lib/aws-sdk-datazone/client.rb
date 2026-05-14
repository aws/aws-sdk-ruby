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

module Aws::DataZone
  # An API client for DataZone.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::DataZone::Client.new(
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

    @identifier = :datazone

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
    add_plugin(Aws::DataZone::Plugins::Endpoints)

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
    #   @option options [Aws::DataZone::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::DataZone::EndpointParameters`.
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

    # Accepts automatically generated business-friendly metadata for your
    # Amazon DataZone assets.
    #
    # @option params [required, String] :domain_identifier
    #   The identifier of the Amazon DataZone domain.
    #
    # @option params [required, String] :identifier
    #   The identifier of the asset.
    #
    # @option params [String] :revision
    #   The revision that is to be made to the asset.
    #
    # @option params [Types::AcceptRule] :accept_rule
    #   Specifies the rule (or the conditions) under which a prediction can be
    #   accepted.
    #
    # @option params [Array<Types::AcceptChoice>] :accept_choices
    #   Specifies the prediction (aka, the automatically generated piece of
    #   metadata) and the target (for example, a column name) that can be
    #   accepted.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier to ensure idempotency of the
    #   request. This field is automatically populated if not provided.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::AcceptPredictionsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AcceptPredictionsOutput#domain_id #domain_id} => String
    #   * {Types::AcceptPredictionsOutput#asset_id #asset_id} => String
    #   * {Types::AcceptPredictionsOutput#revision #revision} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.accept_predictions({
    #     domain_identifier: "DomainId", # required
    #     identifier: "AssetIdentifier", # required
    #     revision: "Revision",
    #     accept_rule: {
    #       rule: "ALL", # accepts ALL, NONE
    #       threshold: 1.0,
    #     },
    #     accept_choices: [
    #       {
    #         prediction_target: "String", # required
    #         prediction_choice: 1,
    #         edited_value: "EditedValue",
    #       },
    #     ],
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.domain_id #=> String
    #   resp.asset_id #=> String
    #   resp.revision #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/AcceptPredictions AWS API Documentation
    #
    # @overload accept_predictions(params = {})
    # @param [Hash] params ({})
    def accept_predictions(params = {}, options = {})
      req = build_request(:accept_predictions, params)
      req.send_request(options)
    end

    # Accepts a subscription request to a specific asset.
    #
    # @option params [required, String] :domain_identifier
    #   The Amazon DataZone domain where the specified subscription request is
    #   being accepted.
    #
    # @option params [required, String] :identifier
    #   The unique identifier of the subscription request that is to be
    #   accepted.
    #
    # @option params [String] :decision_comment
    #   A description that specifies the reason for accepting the specified
    #   subscription request.
    #
    # @option params [Array<Types::AcceptedAssetScope>] :asset_scopes
    #   The asset scopes of the accept subscription request.
    #
    # @option params [Array<Types::AssetPermission>] :asset_permissions
    #   The asset permissions of the accept subscription request.
    #
    # @return [Types::AcceptSubscriptionRequestOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AcceptSubscriptionRequestOutput#id #id} => String
    #   * {Types::AcceptSubscriptionRequestOutput#created_by #created_by} => String
    #   * {Types::AcceptSubscriptionRequestOutput#updated_by #updated_by} => String
    #   * {Types::AcceptSubscriptionRequestOutput#domain_id #domain_id} => String
    #   * {Types::AcceptSubscriptionRequestOutput#status #status} => String
    #   * {Types::AcceptSubscriptionRequestOutput#created_at #created_at} => Time
    #   * {Types::AcceptSubscriptionRequestOutput#updated_at #updated_at} => Time
    #   * {Types::AcceptSubscriptionRequestOutput#request_reason #request_reason} => String
    #   * {Types::AcceptSubscriptionRequestOutput#subscribed_principals #subscribed_principals} => Array&lt;Types::SubscribedPrincipal&gt;
    #   * {Types::AcceptSubscriptionRequestOutput#subscribed_listings #subscribed_listings} => Array&lt;Types::SubscribedListing&gt;
    #   * {Types::AcceptSubscriptionRequestOutput#reviewer_id #reviewer_id} => String
    #   * {Types::AcceptSubscriptionRequestOutput#decision_comment #decision_comment} => String
    #   * {Types::AcceptSubscriptionRequestOutput#existing_subscription_id #existing_subscription_id} => String
    #   * {Types::AcceptSubscriptionRequestOutput#metadata_forms #metadata_forms} => Array&lt;Types::FormOutput&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.accept_subscription_request({
    #     domain_identifier: "DomainId", # required
    #     identifier: "SubscriptionRequestId", # required
    #     decision_comment: "DecisionComment",
    #     asset_scopes: [
    #       {
    #         asset_id: "AssetId", # required
    #         filter_ids: ["FilterId"], # required
    #       },
    #     ],
    #     asset_permissions: [
    #       {
    #         asset_id: "AssetId", # required
    #         permissions: { # required
    #           s3: ["READ"], # accepts READ, WRITE
    #         },
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.created_by #=> String
    #   resp.updated_by #=> String
    #   resp.domain_id #=> String
    #   resp.status #=> String, one of "PENDING", "ACCEPTED", "REJECTED"
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.request_reason #=> String
    #   resp.subscribed_principals #=> Array
    #   resp.subscribed_principals[0].project.id #=> String
    #   resp.subscribed_principals[0].project.name #=> String
    #   resp.subscribed_principals[0].user.id #=> String
    #   resp.subscribed_principals[0].user.details.iam.arn #=> String
    #   resp.subscribed_principals[0].user.details.iam.principal_id #=> String
    #   resp.subscribed_principals[0].user.details.iam.session_name #=> String
    #   resp.subscribed_principals[0].user.details.iam.group_profile_id #=> String
    #   resp.subscribed_principals[0].user.details.sso.username #=> String
    #   resp.subscribed_principals[0].user.details.sso.first_name #=> String
    #   resp.subscribed_principals[0].user.details.sso.last_name #=> String
    #   resp.subscribed_principals[0].group.id #=> String
    #   resp.subscribed_principals[0].group.name #=> String
    #   resp.subscribed_principals[0].iam.principal_arn #=> String
    #   resp.subscribed_listings #=> Array
    #   resp.subscribed_listings[0].id #=> String
    #   resp.subscribed_listings[0].revision #=> String
    #   resp.subscribed_listings[0].name #=> String
    #   resp.subscribed_listings[0].description #=> String
    #   resp.subscribed_listings[0].item.asset_listing.entity_id #=> String
    #   resp.subscribed_listings[0].item.asset_listing.entity_revision #=> String
    #   resp.subscribed_listings[0].item.asset_listing.entity_type #=> String
    #   resp.subscribed_listings[0].item.asset_listing.forms #=> String
    #   resp.subscribed_listings[0].item.asset_listing.glossary_terms #=> Array
    #   resp.subscribed_listings[0].item.asset_listing.glossary_terms[0].name #=> String
    #   resp.subscribed_listings[0].item.asset_listing.glossary_terms[0].short_description #=> String
    #   resp.subscribed_listings[0].item.asset_listing.asset_scope.asset_id #=> String
    #   resp.subscribed_listings[0].item.asset_listing.asset_scope.filter_ids #=> Array
    #   resp.subscribed_listings[0].item.asset_listing.asset_scope.filter_ids[0] #=> String
    #   resp.subscribed_listings[0].item.asset_listing.asset_scope.status #=> String
    #   resp.subscribed_listings[0].item.asset_listing.asset_scope.error_message #=> String
    #   resp.subscribed_listings[0].item.asset_listing.permissions.s3 #=> Array
    #   resp.subscribed_listings[0].item.asset_listing.permissions.s3[0] #=> String, one of "READ", "WRITE"
    #   resp.subscribed_listings[0].item.product_listing.entity_id #=> String
    #   resp.subscribed_listings[0].item.product_listing.entity_revision #=> String
    #   resp.subscribed_listings[0].item.product_listing.glossary_terms #=> Array
    #   resp.subscribed_listings[0].item.product_listing.glossary_terms[0].name #=> String
    #   resp.subscribed_listings[0].item.product_listing.glossary_terms[0].short_description #=> String
    #   resp.subscribed_listings[0].item.product_listing.name #=> String
    #   resp.subscribed_listings[0].item.product_listing.description #=> String
    #   resp.subscribed_listings[0].item.product_listing.asset_listings #=> Array
    #   resp.subscribed_listings[0].item.product_listing.asset_listings[0].entity_id #=> String
    #   resp.subscribed_listings[0].item.product_listing.asset_listings[0].entity_revision #=> String
    #   resp.subscribed_listings[0].item.product_listing.asset_listings[0].entity_type #=> String
    #   resp.subscribed_listings[0].owner_project_id #=> String
    #   resp.subscribed_listings[0].owner_project_name #=> String
    #   resp.reviewer_id #=> String
    #   resp.decision_comment #=> String
    #   resp.existing_subscription_id #=> String
    #   resp.metadata_forms #=> Array
    #   resp.metadata_forms[0].form_name #=> String
    #   resp.metadata_forms[0].type_name #=> String
    #   resp.metadata_forms[0].type_revision #=> String
    #   resp.metadata_forms[0].content #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/AcceptSubscriptionRequest AWS API Documentation
    #
    # @overload accept_subscription_request(params = {})
    # @param [Hash] params ({})
    def accept_subscription_request(params = {}, options = {})
      req = build_request(:accept_subscription_request, params)
      req.send_request(options)
    end

    # Adds the owner of an entity (a domain unit).
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the domain in which you want to add the entity owner.
    #
    # @option params [required, String] :entity_type
    #   The type of an entity.
    #
    # @option params [required, String] :entity_identifier
    #   The ID of the entity to which you want to add an owner.
    #
    # @option params [required, Types::OwnerProperties] :owner
    #   The owner that you want to add to the entity.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that is provided to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_entity_owner({
    #     domain_identifier: "DomainId", # required
    #     entity_type: "DOMAIN_UNIT", # required, accepts DOMAIN_UNIT
    #     entity_identifier: "String", # required
    #     owner: { # required
    #       user: {
    #         user_identifier: "UserIdentifier", # required
    #       },
    #       group: {
    #         group_identifier: "GroupIdentifier", # required
    #       },
    #     },
    #     client_token: "ClientToken",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/AddEntityOwner AWS API Documentation
    #
    # @overload add_entity_owner(params = {})
    # @param [Hash] params ({})
    def add_entity_owner(params = {}, options = {})
      req = build_request(:add_entity_owner, params)
      req.send_request(options)
    end

    # Adds a policy grant (an authorization policy) to a specified entity,
    # including domain units, environment blueprint configurations, or
    # environment profiles.
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the domain where you want to add a policy grant.
    #
    # @option params [required, String] :entity_type
    #   The type of entity (resource) to which the grant is added.
    #
    # @option params [required, String] :entity_identifier
    #   The ID of the entity (resource) to which you want to add a policy
    #   grant.
    #
    # @option params [required, String] :policy_type
    #   The type of policy that you want to grant.
    #
    # @option params [required, Types::PolicyGrantPrincipal] :principal
    #   The principal to whom the permissions are granted.
    #
    # @option params [required, Types::PolicyGrantDetail] :detail
    #   The details of the policy grant.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that is provided to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::AddPolicyGrantOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AddPolicyGrantOutput#grant_id #grant_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_policy_grant({
    #     domain_identifier: "DomainId", # required
    #     entity_type: "DOMAIN_UNIT", # required, accepts DOMAIN_UNIT, ENVIRONMENT_BLUEPRINT_CONFIGURATION, ENVIRONMENT_PROFILE, ASSET_TYPE
    #     entity_identifier: "String", # required
    #     policy_type: "CREATE_DOMAIN_UNIT", # required, accepts CREATE_DOMAIN_UNIT, OVERRIDE_DOMAIN_UNIT_OWNERS, ADD_TO_PROJECT_MEMBER_POOL, OVERRIDE_PROJECT_OWNERS, CREATE_GLOSSARY, CREATE_FORM_TYPE, CREATE_ASSET_TYPE, CREATE_PROJECT, CREATE_ENVIRONMENT_PROFILE, DELEGATE_CREATE_ENVIRONMENT_PROFILE, CREATE_ENVIRONMENT, CREATE_ENVIRONMENT_FROM_BLUEPRINT, CREATE_PROJECT_FROM_PROJECT_PROFILE, USE_ASSET_TYPE
    #     principal: { # required
    #       user: {
    #         user_identifier: "UserIdentifier",
    #         all_users_grant_filter: {
    #         },
    #       },
    #       group: {
    #         group_identifier: "GroupIdentifier",
    #       },
    #       project: {
    #         project_designation: "OWNER", # required, accepts OWNER, CONTRIBUTOR, PROJECT_CATALOG_STEWARD
    #         project_identifier: "ProjectId",
    #         project_grant_filter: {
    #           domain_unit_filter: {
    #             domain_unit: "DomainUnitId", # required
    #             include_child_domain_units: false,
    #           },
    #         },
    #       },
    #       domain_unit: {
    #         domain_unit_designation: "OWNER", # required, accepts OWNER
    #         domain_unit_identifier: "DomainUnitId",
    #         domain_unit_grant_filter: {
    #           all_domain_units_grant_filter: {
    #           },
    #         },
    #       },
    #     },
    #     detail: { # required
    #       create_domain_unit: {
    #         include_child_domain_units: false,
    #       },
    #       override_domain_unit_owners: {
    #         include_child_domain_units: false,
    #       },
    #       add_to_project_member_pool: {
    #         include_child_domain_units: false,
    #       },
    #       override_project_owners: {
    #         include_child_domain_units: false,
    #       },
    #       create_glossary: {
    #         include_child_domain_units: false,
    #       },
    #       create_form_type: {
    #         include_child_domain_units: false,
    #       },
    #       create_asset_type: {
    #         include_child_domain_units: false,
    #       },
    #       create_project: {
    #         include_child_domain_units: false,
    #       },
    #       create_environment_profile: {
    #         domain_unit_id: "DomainUnitId",
    #       },
    #       delegate_create_environment_profile: {
    #       },
    #       create_environment: {
    #       },
    #       create_environment_from_blueprint: {
    #       },
    #       create_project_from_project_profile: {
    #         include_child_domain_units: false,
    #         project_profiles: ["String"],
    #       },
    #       use_asset_type: {
    #         domain_unit_id: "DomainUnitId",
    #       },
    #     },
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.grant_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/AddPolicyGrant AWS API Documentation
    #
    # @overload add_policy_grant(params = {})
    # @param [Hash] params ({})
    def add_policy_grant(params = {}, options = {})
      req = build_request(:add_policy_grant, params)
      req.send_request(options)
    end

    # Associates the environment role in Amazon DataZone.
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the Amazon DataZone domain in which the environment role is
    #   associated.
    #
    # @option params [required, String] :environment_identifier
    #   The ID of the Amazon DataZone environment.
    #
    # @option params [required, String] :environment_role_arn
    #   The ARN of the environment role.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_environment_role({
    #     domain_identifier: "DomainId", # required
    #     environment_identifier: "EnvironmentId", # required
    #     environment_role_arn: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/AssociateEnvironmentRole AWS API Documentation
    #
    # @overload associate_environment_role(params = {})
    # @param [Hash] params ({})
    def associate_environment_role(params = {}, options = {})
      req = build_request(:associate_environment_role, params)
      req.send_request(options)
    end

    # Associates governed terms with an asset.
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the domain where governed terms are to be associated with an
    #   asset.
    #
    # @option params [required, String] :entity_identifier
    #   The ID of the asset with which you want to associate a governed term.
    #
    # @option params [required, String] :entity_type
    #   The type of the asset with which you want to associate a governed
    #   term.
    #
    # @option params [required, Array<String>] :governed_glossary_terms
    #   The glossary terms in a restricted glossary.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_governed_terms({
    #     domain_identifier: "DomainId", # required
    #     entity_identifier: "EntityIdentifier", # required
    #     entity_type: "ASSET", # required, accepts ASSET
    #     governed_glossary_terms: ["GlossaryTermId"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/AssociateGovernedTerms AWS API Documentation
    #
    # @overload associate_governed_terms(params = {})
    # @param [Hash] params ({})
    def associate_governed_terms(params = {}, options = {})
      req = build_request(:associate_governed_terms, params)
      req.send_request(options)
    end

    # Gets the attribute metadata.
    #
    # @option params [required, String] :domain_identifier
    #   The domain ID where you want to get the attribute metadata.
    #
    # @option params [required, String] :entity_type
    #   The entity type for which you want to get attribute metadata.
    #
    # @option params [required, String] :entity_identifier
    #   The entity ID for which you want to get attribute metadata.
    #
    # @option params [String] :entity_revision
    #   The entity revision for which you want to get attribute metadata.
    #
    # @option params [required, Array<String>] :attribute_identifiers
    #   The attribute identifier.
    #
    # @return [Types::BatchGetAttributesMetadataOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchGetAttributesMetadataOutput#attributes #attributes} => Array&lt;Types::BatchGetAttributeOutput&gt;
    #   * {Types::BatchGetAttributesMetadataOutput#errors #errors} => Array&lt;Types::AttributeError&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_attributes_metadata({
    #     domain_identifier: "DomainId", # required
    #     entity_type: "ASSET", # required, accepts ASSET, LISTING
    #     entity_identifier: "EntityId", # required
    #     entity_revision: "Revision",
    #     attribute_identifiers: ["AttributeIdentifier"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.attributes #=> Array
    #   resp.attributes[0].attribute_identifier #=> String
    #   resp.attributes[0].forms #=> Array
    #   resp.attributes[0].forms[0].form_name #=> String
    #   resp.attributes[0].forms[0].type_name #=> String
    #   resp.attributes[0].forms[0].type_revision #=> String
    #   resp.attributes[0].forms[0].content #=> String
    #   resp.errors #=> Array
    #   resp.errors[0].attribute_identifier #=> String
    #   resp.errors[0].code #=> String
    #   resp.errors[0].message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/BatchGetAttributesMetadata AWS API Documentation
    #
    # @overload batch_get_attributes_metadata(params = {})
    # @param [Hash] params ({})
    def batch_get_attributes_metadata(params = {}, options = {})
      req = build_request(:batch_get_attributes_metadata, params)
      req.send_request(options)
    end

    # Writes the attribute metadata.
    #
    # @option params [required, String] :domain_identifier
    #   The domain ID where you want to write the attribute metadata.
    #
    # @option params [required, String] :entity_type
    #   The entity type for which you want to write the attribute metadata.
    #
    # @option params [required, String] :entity_identifier
    #   The entity ID for which you want to write the attribute metadata.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier to ensure idempotency of the
    #   request. This field is automatically populated if not provided.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, Array<Types::AttributeInput>] :attributes
    #   The attributes of the metadata.
    #
    # @return [Types::BatchPutAttributesMetadataOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchPutAttributesMetadataOutput#errors #errors} => Array&lt;Types::AttributeError&gt;
    #   * {Types::BatchPutAttributesMetadataOutput#attributes #attributes} => Array&lt;Types::BatchPutAttributeOutput&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_put_attributes_metadata({
    #     domain_identifier: "DomainId", # required
    #     entity_type: "ASSET", # required, accepts ASSET, LISTING
    #     entity_identifier: "EntityId", # required
    #     client_token: "ClientToken",
    #     attributes: [ # required
    #       {
    #         attribute_identifier: "AttributeIdentifier", # required
    #         forms: [ # required
    #           {
    #             form_name: "FormName", # required
    #             type_identifier: "FormTypeIdentifier",
    #             type_revision: "RevisionInput",
    #             content: "FormInputContentString",
    #           },
    #         ],
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.errors #=> Array
    #   resp.errors[0].attribute_identifier #=> String
    #   resp.errors[0].code #=> String
    #   resp.errors[0].message #=> String
    #   resp.attributes #=> Array
    #   resp.attributes[0].attribute_identifier #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/BatchPutAttributesMetadata AWS API Documentation
    #
    # @overload batch_put_attributes_metadata(params = {})
    # @param [Hash] params ({})
    def batch_put_attributes_metadata(params = {}, options = {})
      req = build_request(:batch_put_attributes_metadata, params)
      req.send_request(options)
    end

    # Cancels the metadata generation run.
    #
    # Prerequisites:
    #
    # * The run must exist and be in a cancelable status (e.g., SUBMITTED,
    #   IN\_PROGRESS).
    #
    # * Runs in SUCCEEDED status cannot be cancelled.
    #
    # * User must have access to the run and cancel permissions.
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the Amazon DataZone domain in which the metadata generation
    #   run is to be cancelled.
    #
    # @option params [required, String] :identifier
    #   The ID of the metadata generation run.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_metadata_generation_run({
    #     domain_identifier: "DomainId", # required
    #     identifier: "MetadataGenerationRunIdentifier", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/CancelMetadataGenerationRun AWS API Documentation
    #
    # @overload cancel_metadata_generation_run(params = {})
    # @param [Hash] params ({})
    def cancel_metadata_generation_run(params = {}, options = {})
      req = build_request(:cancel_metadata_generation_run, params)
      req.send_request(options)
    end

    # Cancels the subscription to the specified asset.
    #
    # @option params [required, String] :domain_identifier
    #   The unique identifier of the Amazon DataZone domain where the
    #   subscription request is being cancelled.
    #
    # @option params [required, String] :identifier
    #   The unique identifier of the subscription that is being cancelled.
    #
    # @return [Types::CancelSubscriptionOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CancelSubscriptionOutput#id #id} => String
    #   * {Types::CancelSubscriptionOutput#created_by #created_by} => String
    #   * {Types::CancelSubscriptionOutput#updated_by #updated_by} => String
    #   * {Types::CancelSubscriptionOutput#domain_id #domain_id} => String
    #   * {Types::CancelSubscriptionOutput#status #status} => String
    #   * {Types::CancelSubscriptionOutput#created_at #created_at} => Time
    #   * {Types::CancelSubscriptionOutput#updated_at #updated_at} => Time
    #   * {Types::CancelSubscriptionOutput#subscribed_principal #subscribed_principal} => Types::SubscribedPrincipal
    #   * {Types::CancelSubscriptionOutput#subscribed_listing #subscribed_listing} => Types::SubscribedListing
    #   * {Types::CancelSubscriptionOutput#subscription_request_id #subscription_request_id} => String
    #   * {Types::CancelSubscriptionOutput#retain_permissions #retain_permissions} => Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_subscription({
    #     domain_identifier: "DomainId", # required
    #     identifier: "SubscriptionId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.created_by #=> String
    #   resp.updated_by #=> String
    #   resp.domain_id #=> String
    #   resp.status #=> String, one of "APPROVED", "REVOKED", "CANCELLED"
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.subscribed_principal.project.id #=> String
    #   resp.subscribed_principal.project.name #=> String
    #   resp.subscribed_principal.user.id #=> String
    #   resp.subscribed_principal.user.details.iam.arn #=> String
    #   resp.subscribed_principal.user.details.iam.principal_id #=> String
    #   resp.subscribed_principal.user.details.iam.session_name #=> String
    #   resp.subscribed_principal.user.details.iam.group_profile_id #=> String
    #   resp.subscribed_principal.user.details.sso.username #=> String
    #   resp.subscribed_principal.user.details.sso.first_name #=> String
    #   resp.subscribed_principal.user.details.sso.last_name #=> String
    #   resp.subscribed_principal.group.id #=> String
    #   resp.subscribed_principal.group.name #=> String
    #   resp.subscribed_principal.iam.principal_arn #=> String
    #   resp.subscribed_listing.id #=> String
    #   resp.subscribed_listing.revision #=> String
    #   resp.subscribed_listing.name #=> String
    #   resp.subscribed_listing.description #=> String
    #   resp.subscribed_listing.item.asset_listing.entity_id #=> String
    #   resp.subscribed_listing.item.asset_listing.entity_revision #=> String
    #   resp.subscribed_listing.item.asset_listing.entity_type #=> String
    #   resp.subscribed_listing.item.asset_listing.forms #=> String
    #   resp.subscribed_listing.item.asset_listing.glossary_terms #=> Array
    #   resp.subscribed_listing.item.asset_listing.glossary_terms[0].name #=> String
    #   resp.subscribed_listing.item.asset_listing.glossary_terms[0].short_description #=> String
    #   resp.subscribed_listing.item.asset_listing.asset_scope.asset_id #=> String
    #   resp.subscribed_listing.item.asset_listing.asset_scope.filter_ids #=> Array
    #   resp.subscribed_listing.item.asset_listing.asset_scope.filter_ids[0] #=> String
    #   resp.subscribed_listing.item.asset_listing.asset_scope.status #=> String
    #   resp.subscribed_listing.item.asset_listing.asset_scope.error_message #=> String
    #   resp.subscribed_listing.item.asset_listing.permissions.s3 #=> Array
    #   resp.subscribed_listing.item.asset_listing.permissions.s3[0] #=> String, one of "READ", "WRITE"
    #   resp.subscribed_listing.item.product_listing.entity_id #=> String
    #   resp.subscribed_listing.item.product_listing.entity_revision #=> String
    #   resp.subscribed_listing.item.product_listing.glossary_terms #=> Array
    #   resp.subscribed_listing.item.product_listing.glossary_terms[0].name #=> String
    #   resp.subscribed_listing.item.product_listing.glossary_terms[0].short_description #=> String
    #   resp.subscribed_listing.item.product_listing.name #=> String
    #   resp.subscribed_listing.item.product_listing.description #=> String
    #   resp.subscribed_listing.item.product_listing.asset_listings #=> Array
    #   resp.subscribed_listing.item.product_listing.asset_listings[0].entity_id #=> String
    #   resp.subscribed_listing.item.product_listing.asset_listings[0].entity_revision #=> String
    #   resp.subscribed_listing.item.product_listing.asset_listings[0].entity_type #=> String
    #   resp.subscribed_listing.owner_project_id #=> String
    #   resp.subscribed_listing.owner_project_name #=> String
    #   resp.subscription_request_id #=> String
    #   resp.retain_permissions #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/CancelSubscription AWS API Documentation
    #
    # @overload cancel_subscription(params = {})
    # @param [Hash] params ({})
    def cancel_subscription(params = {}, options = {})
      req = build_request(:cancel_subscription, params)
      req.send_request(options)
    end

    # Creates an account pool.
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the domain where the account pool is created.
    #
    # @option params [required, String] :name
    #   The name of the account pool.
    #
    # @option params [String] :description
    #   The description of the account pool.
    #
    # @option params [required, String] :resolution_strategy
    #   The mechanism used to resolve the account selection from the account
    #   pool.
    #
    # @option params [required, Types::AccountSource] :account_source
    #   The source of accounts for the account pool. In the current release,
    #   it's either a static list of accounts provided by the customer or a
    #   custom Amazon Web Services Lambda handler.
    #
    # @return [Types::CreateAccountPoolOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAccountPoolOutput#domain_id #domain_id} => String
    #   * {Types::CreateAccountPoolOutput#name #name} => String
    #   * {Types::CreateAccountPoolOutput#id #id} => String
    #   * {Types::CreateAccountPoolOutput#description #description} => String
    #   * {Types::CreateAccountPoolOutput#resolution_strategy #resolution_strategy} => String
    #   * {Types::CreateAccountPoolOutput#account_source #account_source} => Types::AccountSource
    #   * {Types::CreateAccountPoolOutput#created_by #created_by} => String
    #   * {Types::CreateAccountPoolOutput#created_at #created_at} => Time
    #   * {Types::CreateAccountPoolOutput#last_updated_at #last_updated_at} => Time
    #   * {Types::CreateAccountPoolOutput#updated_by #updated_by} => String
    #   * {Types::CreateAccountPoolOutput#domain_unit_id #domain_unit_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_account_pool({
    #     domain_identifier: "DomainId", # required
    #     name: "AccountPoolName", # required
    #     description: "Description",
    #     resolution_strategy: "MANUAL", # required, accepts MANUAL
    #     account_source: { # required
    #       accounts: [
    #         {
    #           aws_account_id: "AwsAccountId", # required
    #           supported_regions: ["AwsRegion"], # required
    #           aws_account_name: "AwsAccountName",
    #         },
    #       ],
    #       custom_account_pool_handler: {
    #         lambda_function_arn: "LambdaFunctionArn", # required
    #         lambda_execution_role_arn: "LambdaExecutionRoleArn",
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.domain_id #=> String
    #   resp.name #=> String
    #   resp.id #=> String
    #   resp.description #=> String
    #   resp.resolution_strategy #=> String, one of "MANUAL"
    #   resp.account_source.accounts #=> Array
    #   resp.account_source.accounts[0].aws_account_id #=> String
    #   resp.account_source.accounts[0].supported_regions #=> Array
    #   resp.account_source.accounts[0].supported_regions[0] #=> String
    #   resp.account_source.accounts[0].aws_account_name #=> String
    #   resp.account_source.custom_account_pool_handler.lambda_function_arn #=> String
    #   resp.account_source.custom_account_pool_handler.lambda_execution_role_arn #=> String
    #   resp.created_by #=> String
    #   resp.created_at #=> Time
    #   resp.last_updated_at #=> Time
    #   resp.updated_by #=> String
    #   resp.domain_unit_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/CreateAccountPool AWS API Documentation
    #
    # @overload create_account_pool(params = {})
    # @param [Hash] params ({})
    def create_account_pool(params = {}, options = {})
      req = build_request(:create_account_pool, params)
      req.send_request(options)
    end

    # Creates an asset in Amazon DataZone catalog.
    #
    # Before creating assets, make sure that the following requirements are
    # met:
    #
    # * `--domain-identifier` must refer to an existing domain.
    #
    # * `--owning-project-identifier` must be a valid project within the
    #   domain.
    #
    # * Asset type must be created beforehand using `create-asset-type`, or
    #   be a supported system-defined type. For more information, see
    #   [create-asset-type][1].
    #
    # * `--type-revision` (if used) must match a valid revision of the asset
    #   type.
    #
    # * `formsInput` is required when it is associated as required in the
    #   `asset-type`. For more information, see [create-form-type][2].
    #
    # * Form content must include all required fields as per the form schema
    #   (e.g., `bucketArn`).
    #
    # You must invoke the following pre-requisite commands before invoking
    # this API:
    #
    # * [CreateFormType][3]
    #
    # * [CreateAssetType][4]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cli/latest/reference/datazone/create-asset-type.html
    # [2]: https://docs.aws.amazon.com/cli/latest/reference/datazone/create-form-type.html
    # [3]: https://docs.aws.amazon.com/datazone/latest/APIReference/API_CreateFormType.html
    # [4]: https://docs.aws.amazon.com/datazone/latest/APIReference/API_CreateAssetType.html
    #
    # @option params [required, String] :name
    #   Asset name.
    #
    # @option params [required, String] :domain_identifier
    #   Amazon DataZone domain where the asset is created.
    #
    # @option params [String] :external_identifier
    #   The external identifier of the asset.
    #
    #   If the value for the `externalIdentifier` parameter is specified, it
    #   must be a unique value.
    #
    # @option params [required, String] :type_identifier
    #   The unique identifier of this asset's type.
    #
    # @option params [String] :type_revision
    #   The revision of this asset's type.
    #
    # @option params [String] :description
    #   Asset description.
    #
    # @option params [Array<String>] :glossary_terms
    #   Glossary terms attached to the asset.
    #
    # @option params [Array<Types::FormInput>] :forms_input
    #   Metadata forms attached to the asset.
    #
    # @option params [required, String] :owning_project_identifier
    #   The unique identifier of the project that owns this asset.
    #
    # @option params [Types::PredictionConfiguration] :prediction_configuration
    #   The configuration of the automatically generated business-friendly
    #   metadata for the asset.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that is provided to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateAssetOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAssetOutput#id #id} => String
    #   * {Types::CreateAssetOutput#name #name} => String
    #   * {Types::CreateAssetOutput#type_identifier #type_identifier} => String
    #   * {Types::CreateAssetOutput#type_revision #type_revision} => String
    #   * {Types::CreateAssetOutput#external_identifier #external_identifier} => String
    #   * {Types::CreateAssetOutput#revision #revision} => String
    #   * {Types::CreateAssetOutput#description #description} => String
    #   * {Types::CreateAssetOutput#created_at #created_at} => Time
    #   * {Types::CreateAssetOutput#created_by #created_by} => String
    #   * {Types::CreateAssetOutput#first_revision_created_at #first_revision_created_at} => Time
    #   * {Types::CreateAssetOutput#first_revision_created_by #first_revision_created_by} => String
    #   * {Types::CreateAssetOutput#glossary_terms #glossary_terms} => Array&lt;String&gt;
    #   * {Types::CreateAssetOutput#governed_glossary_terms #governed_glossary_terms} => Array&lt;String&gt;
    #   * {Types::CreateAssetOutput#owning_project_id #owning_project_id} => String
    #   * {Types::CreateAssetOutput#domain_id #domain_id} => String
    #   * {Types::CreateAssetOutput#listing #listing} => Types::AssetListingDetails
    #   * {Types::CreateAssetOutput#forms_output #forms_output} => Array&lt;Types::FormOutput&gt;
    #   * {Types::CreateAssetOutput#read_only_forms_output #read_only_forms_output} => Array&lt;Types::FormOutput&gt;
    #   * {Types::CreateAssetOutput#latest_time_series_data_point_forms_output #latest_time_series_data_point_forms_output} => Array&lt;Types::TimeSeriesDataPointSummaryFormOutput&gt;
    #   * {Types::CreateAssetOutput#prediction_configuration #prediction_configuration} => Types::PredictionConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_asset({
    #     name: "AssetName", # required
    #     domain_identifier: "DomainId", # required
    #     external_identifier: "ExternalIdentifier",
    #     type_identifier: "AssetTypeIdentifier", # required
    #     type_revision: "Revision",
    #     description: "Description",
    #     glossary_terms: ["GlossaryTermId"],
    #     forms_input: [
    #       {
    #         form_name: "FormName", # required
    #         type_identifier: "FormTypeIdentifier",
    #         type_revision: "RevisionInput",
    #         content: "FormInputContentString",
    #       },
    #     ],
    #     owning_project_identifier: "ProjectId", # required
    #     prediction_configuration: {
    #       business_name_generation: {
    #         enabled: false,
    #       },
    #     },
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.type_identifier #=> String
    #   resp.type_revision #=> String
    #   resp.external_identifier #=> String
    #   resp.revision #=> String
    #   resp.description #=> String
    #   resp.created_at #=> Time
    #   resp.created_by #=> String
    #   resp.first_revision_created_at #=> Time
    #   resp.first_revision_created_by #=> String
    #   resp.glossary_terms #=> Array
    #   resp.glossary_terms[0] #=> String
    #   resp.governed_glossary_terms #=> Array
    #   resp.governed_glossary_terms[0] #=> String
    #   resp.owning_project_id #=> String
    #   resp.domain_id #=> String
    #   resp.listing.listing_id #=> String
    #   resp.listing.listing_status #=> String, one of "CREATING", "ACTIVE", "INACTIVE"
    #   resp.forms_output #=> Array
    #   resp.forms_output[0].form_name #=> String
    #   resp.forms_output[0].type_name #=> String
    #   resp.forms_output[0].type_revision #=> String
    #   resp.forms_output[0].content #=> String
    #   resp.read_only_forms_output #=> Array
    #   resp.read_only_forms_output[0].form_name #=> String
    #   resp.read_only_forms_output[0].type_name #=> String
    #   resp.read_only_forms_output[0].type_revision #=> String
    #   resp.read_only_forms_output[0].content #=> String
    #   resp.latest_time_series_data_point_forms_output #=> Array
    #   resp.latest_time_series_data_point_forms_output[0].form_name #=> String
    #   resp.latest_time_series_data_point_forms_output[0].type_identifier #=> String
    #   resp.latest_time_series_data_point_forms_output[0].type_revision #=> String
    #   resp.latest_time_series_data_point_forms_output[0].timestamp #=> Time
    #   resp.latest_time_series_data_point_forms_output[0].content_summary #=> String
    #   resp.latest_time_series_data_point_forms_output[0].id #=> String
    #   resp.prediction_configuration.business_name_generation.enabled #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/CreateAsset AWS API Documentation
    #
    # @overload create_asset(params = {})
    # @param [Hash] params ({})
    def create_asset(params = {}, options = {})
      req = build_request(:create_asset, params)
      req.send_request(options)
    end

    # Creates a data asset filter.
    #
    # Asset filters provide a sophisticated way to create controlled views
    # of data assets by selecting specific columns or applying row-level
    # filters. This capability is crucial for organizations that need to
    # share data while maintaining security and privacy controls. For
    # example, your database might be filtered to show only non-PII fields
    # to certain users, or sales data might be filtered by region for
    # different regional teams. Asset filters enable fine-grained access
    # control while maintaining a single source of truth.
    #
    # Prerequisites:
    #
    # * A valid domain (`--domain-identifier`) must exist.
    #
    # * A data asset (`--asset-identifier`) must already be created under
    #   that domain.
    #
    # * The asset must have the referenced columns available in its schema
    #   for column-based filtering.
    #
    # * You cannot specify both (`columnConfiguration`,
    #   `rowConfiguration`)at the same time.
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the domain in which you want to create an asset filter.
    #
    # @option params [required, String] :asset_identifier
    #   The ID of the data asset.
    #
    # @option params [required, String] :name
    #   The name of the asset filter.
    #
    # @option params [String] :description
    #   The description of the asset filter.
    #
    # @option params [required, Types::AssetFilterConfiguration] :configuration
    #   The configuration of the asset filter.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that is provided to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateAssetFilterOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAssetFilterOutput#id #id} => String
    #   * {Types::CreateAssetFilterOutput#domain_id #domain_id} => String
    #   * {Types::CreateAssetFilterOutput#asset_id #asset_id} => String
    #   * {Types::CreateAssetFilterOutput#name #name} => String
    #   * {Types::CreateAssetFilterOutput#description #description} => String
    #   * {Types::CreateAssetFilterOutput#status #status} => String
    #   * {Types::CreateAssetFilterOutput#configuration #configuration} => Types::AssetFilterConfiguration
    #   * {Types::CreateAssetFilterOutput#created_at #created_at} => Time
    #   * {Types::CreateAssetFilterOutput#error_message #error_message} => String
    #   * {Types::CreateAssetFilterOutput#effective_column_names #effective_column_names} => Array&lt;String&gt;
    #   * {Types::CreateAssetFilterOutput#effective_row_filter #effective_row_filter} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_asset_filter({
    #     domain_identifier: "DomainId", # required
    #     asset_identifier: "AssetId", # required
    #     name: "FilterName", # required
    #     description: "Description",
    #     configuration: { # required
    #       column_configuration: {
    #         included_column_names: ["String"],
    #       },
    #       row_configuration: {
    #         row_filter: { # required
    #           expression: {
    #             equal_to: {
    #               column_name: "String", # required
    #               value: "String", # required
    #             },
    #             not_equal_to: {
    #               column_name: "String", # required
    #               value: "String", # required
    #             },
    #             greater_than: {
    #               column_name: "String", # required
    #               value: "String", # required
    #             },
    #             less_than: {
    #               column_name: "String", # required
    #               value: "String", # required
    #             },
    #             greater_than_or_equal_to: {
    #               column_name: "String", # required
    #               value: "String", # required
    #             },
    #             less_than_or_equal_to: {
    #               column_name: "String", # required
    #               value: "String", # required
    #             },
    #             is_null: {
    #               column_name: "String", # required
    #             },
    #             is_not_null: {
    #               column_name: "String", # required
    #             },
    #             in: {
    #               column_name: "String", # required
    #               values: ["String"], # required
    #             },
    #             not_in: {
    #               column_name: "String", # required
    #               values: ["String"], # required
    #             },
    #             like: {
    #               column_name: "String", # required
    #               value: "String", # required
    #             },
    #             not_like: {
    #               column_name: "String", # required
    #               value: "String", # required
    #             },
    #           },
    #           and: [
    #             {
    #               # recursive RowFilter
    #             },
    #           ],
    #           or: [
    #             {
    #               # recursive RowFilter
    #             },
    #           ],
    #         },
    #         sensitive: false,
    #       },
    #     },
    #     client_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.domain_id #=> String
    #   resp.asset_id #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.status #=> String, one of "VALID", "INVALID"
    #   resp.configuration.column_configuration.included_column_names #=> Array
    #   resp.configuration.column_configuration.included_column_names[0] #=> String
    #   resp.configuration.row_configuration.row_filter.expression.equal_to.column_name #=> String
    #   resp.configuration.row_configuration.row_filter.expression.equal_to.value #=> String
    #   resp.configuration.row_configuration.row_filter.expression.not_equal_to.column_name #=> String
    #   resp.configuration.row_configuration.row_filter.expression.not_equal_to.value #=> String
    #   resp.configuration.row_configuration.row_filter.expression.greater_than.column_name #=> String
    #   resp.configuration.row_configuration.row_filter.expression.greater_than.value #=> String
    #   resp.configuration.row_configuration.row_filter.expression.less_than.column_name #=> String
    #   resp.configuration.row_configuration.row_filter.expression.less_than.value #=> String
    #   resp.configuration.row_configuration.row_filter.expression.greater_than_or_equal_to.column_name #=> String
    #   resp.configuration.row_configuration.row_filter.expression.greater_than_or_equal_to.value #=> String
    #   resp.configuration.row_configuration.row_filter.expression.less_than_or_equal_to.column_name #=> String
    #   resp.configuration.row_configuration.row_filter.expression.less_than_or_equal_to.value #=> String
    #   resp.configuration.row_configuration.row_filter.expression.is_null.column_name #=> String
    #   resp.configuration.row_configuration.row_filter.expression.is_not_null.column_name #=> String
    #   resp.configuration.row_configuration.row_filter.expression.in.column_name #=> String
    #   resp.configuration.row_configuration.row_filter.expression.in.values #=> Array
    #   resp.configuration.row_configuration.row_filter.expression.in.values[0] #=> String
    #   resp.configuration.row_configuration.row_filter.expression.not_in.column_name #=> String
    #   resp.configuration.row_configuration.row_filter.expression.not_in.values #=> Array
    #   resp.configuration.row_configuration.row_filter.expression.not_in.values[0] #=> String
    #   resp.configuration.row_configuration.row_filter.expression.like.column_name #=> String
    #   resp.configuration.row_configuration.row_filter.expression.like.value #=> String
    #   resp.configuration.row_configuration.row_filter.expression.not_like.column_name #=> String
    #   resp.configuration.row_configuration.row_filter.expression.not_like.value #=> String
    #   resp.configuration.row_configuration.row_filter.and #=> Array
    #   resp.configuration.row_configuration.row_filter.and[0] #=> Types::RowFilter
    #   resp.configuration.row_configuration.row_filter.or #=> Array
    #   resp.configuration.row_configuration.row_filter.or[0] #=> Types::RowFilter
    #   resp.configuration.row_configuration.sensitive #=> Boolean
    #   resp.created_at #=> Time
    #   resp.error_message #=> String
    #   resp.effective_column_names #=> Array
    #   resp.effective_column_names[0] #=> String
    #   resp.effective_row_filter #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/CreateAssetFilter AWS API Documentation
    #
    # @overload create_asset_filter(params = {})
    # @param [Hash] params ({})
    def create_asset_filter(params = {}, options = {})
      req = build_request(:create_asset_filter, params)
      req.send_request(options)
    end

    # Creates a revision of the asset.
    #
    # Asset revisions represent new versions of existing assets, capturing
    # changes to either the underlying data or its metadata. They maintain a
    # historical record of how assets evolve over time, who made changes,
    # and when those changes occurred. This versioning capability is crucial
    # for governance and compliance, allowing organizations to track
    # changes, understand their impact, and roll back if necessary.
    #
    # Prerequisites:
    #
    # * Asset must already exist in the domain with identifier.
    #
    # * `formsInput` is required when asset has the form type.
    #   `typeRevision` should be the latest version of form type.
    #
    # * The form content must include all required fields (e.g., `bucketArn`
    #   for `S3ObjectCollectionForm`).
    #
    # * The owning project of the original asset must still exist and be
    #   active.
    #
    # * User must have write access to the project and domain.
    #
    # @option params [required, String] :name
    #   Te revised name of the asset.
    #
    # @option params [required, String] :domain_identifier
    #   The unique identifier of the domain where the asset is being revised.
    #
    # @option params [required, String] :identifier
    #   The identifier of the asset.
    #
    # @option params [String] :type_revision
    #   The revision type of the asset.
    #
    # @option params [String] :description
    #   The revised description of the asset.
    #
    # @option params [Array<String>] :glossary_terms
    #   The glossary terms to be attached to the asset as part of asset
    #   revision.
    #
    # @option params [Array<Types::FormInput>] :forms_input
    #   The metadata forms to be attached to the asset as part of asset
    #   revision.
    #
    # @option params [Types::PredictionConfiguration] :prediction_configuration
    #   The configuration of the automatically generated business-friendly
    #   metadata for the asset.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that is provided to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateAssetRevisionOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAssetRevisionOutput#id #id} => String
    #   * {Types::CreateAssetRevisionOutput#name #name} => String
    #   * {Types::CreateAssetRevisionOutput#type_identifier #type_identifier} => String
    #   * {Types::CreateAssetRevisionOutput#type_revision #type_revision} => String
    #   * {Types::CreateAssetRevisionOutput#external_identifier #external_identifier} => String
    #   * {Types::CreateAssetRevisionOutput#revision #revision} => String
    #   * {Types::CreateAssetRevisionOutput#description #description} => String
    #   * {Types::CreateAssetRevisionOutput#created_at #created_at} => Time
    #   * {Types::CreateAssetRevisionOutput#created_by #created_by} => String
    #   * {Types::CreateAssetRevisionOutput#first_revision_created_at #first_revision_created_at} => Time
    #   * {Types::CreateAssetRevisionOutput#first_revision_created_by #first_revision_created_by} => String
    #   * {Types::CreateAssetRevisionOutput#glossary_terms #glossary_terms} => Array&lt;String&gt;
    #   * {Types::CreateAssetRevisionOutput#governed_glossary_terms #governed_glossary_terms} => Array&lt;String&gt;
    #   * {Types::CreateAssetRevisionOutput#owning_project_id #owning_project_id} => String
    #   * {Types::CreateAssetRevisionOutput#domain_id #domain_id} => String
    #   * {Types::CreateAssetRevisionOutput#listing #listing} => Types::AssetListingDetails
    #   * {Types::CreateAssetRevisionOutput#forms_output #forms_output} => Array&lt;Types::FormOutput&gt;
    #   * {Types::CreateAssetRevisionOutput#read_only_forms_output #read_only_forms_output} => Array&lt;Types::FormOutput&gt;
    #   * {Types::CreateAssetRevisionOutput#latest_time_series_data_point_forms_output #latest_time_series_data_point_forms_output} => Array&lt;Types::TimeSeriesDataPointSummaryFormOutput&gt;
    #   * {Types::CreateAssetRevisionOutput#prediction_configuration #prediction_configuration} => Types::PredictionConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_asset_revision({
    #     name: "AssetName", # required
    #     domain_identifier: "DomainId", # required
    #     identifier: "AssetIdentifier", # required
    #     type_revision: "Revision",
    #     description: "Description",
    #     glossary_terms: ["GlossaryTermId"],
    #     forms_input: [
    #       {
    #         form_name: "FormName", # required
    #         type_identifier: "FormTypeIdentifier",
    #         type_revision: "RevisionInput",
    #         content: "FormInputContentString",
    #       },
    #     ],
    #     prediction_configuration: {
    #       business_name_generation: {
    #         enabled: false,
    #       },
    #     },
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.type_identifier #=> String
    #   resp.type_revision #=> String
    #   resp.external_identifier #=> String
    #   resp.revision #=> String
    #   resp.description #=> String
    #   resp.created_at #=> Time
    #   resp.created_by #=> String
    #   resp.first_revision_created_at #=> Time
    #   resp.first_revision_created_by #=> String
    #   resp.glossary_terms #=> Array
    #   resp.glossary_terms[0] #=> String
    #   resp.governed_glossary_terms #=> Array
    #   resp.governed_glossary_terms[0] #=> String
    #   resp.owning_project_id #=> String
    #   resp.domain_id #=> String
    #   resp.listing.listing_id #=> String
    #   resp.listing.listing_status #=> String, one of "CREATING", "ACTIVE", "INACTIVE"
    #   resp.forms_output #=> Array
    #   resp.forms_output[0].form_name #=> String
    #   resp.forms_output[0].type_name #=> String
    #   resp.forms_output[0].type_revision #=> String
    #   resp.forms_output[0].content #=> String
    #   resp.read_only_forms_output #=> Array
    #   resp.read_only_forms_output[0].form_name #=> String
    #   resp.read_only_forms_output[0].type_name #=> String
    #   resp.read_only_forms_output[0].type_revision #=> String
    #   resp.read_only_forms_output[0].content #=> String
    #   resp.latest_time_series_data_point_forms_output #=> Array
    #   resp.latest_time_series_data_point_forms_output[0].form_name #=> String
    #   resp.latest_time_series_data_point_forms_output[0].type_identifier #=> String
    #   resp.latest_time_series_data_point_forms_output[0].type_revision #=> String
    #   resp.latest_time_series_data_point_forms_output[0].timestamp #=> Time
    #   resp.latest_time_series_data_point_forms_output[0].content_summary #=> String
    #   resp.latest_time_series_data_point_forms_output[0].id #=> String
    #   resp.prediction_configuration.business_name_generation.enabled #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/CreateAssetRevision AWS API Documentation
    #
    # @overload create_asset_revision(params = {})
    # @param [Hash] params ({})
    def create_asset_revision(params = {}, options = {})
      req = build_request(:create_asset_revision, params)
      req.send_request(options)
    end

    # Creates a custom asset type.
    #
    # Prerequisites:
    #
    # * The `formsInput` field is required, however, can be passed as empty
    #   (e.g. `-forms-input {})`.
    #
    # * You must have `CreateAssetType` permissions.
    #
    # * The domain-identifier and owning-project-identifier must be valid
    #   and active.
    #
    # * The name of the asset type must be unique within the domain —
    #   duplicate names will cause failure.
    #
    # * JSON input must be valid — incorrect formatting causes Invalid JSON
    #   errors.
    #
    # @option params [required, String] :domain_identifier
    #   The unique identifier of the Amazon DataZone domain where the custom
    #   asset type is being created.
    #
    # @option params [required, String] :name
    #   The name of the custom asset type.
    #
    # @option params [String] :description
    #   The descripton of the custom asset type.
    #
    # @option params [required, Hash<String,Types::FormEntryInput>] :forms_input
    #   The metadata forms that are to be attached to the custom asset type.
    #
    # @option params [required, String] :owning_project_identifier
    #   The identifier of the Amazon DataZone project that is to own the
    #   custom asset type.
    #
    # @return [Types::CreateAssetTypeOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAssetTypeOutput#domain_id #domain_id} => String
    #   * {Types::CreateAssetTypeOutput#name #name} => String
    #   * {Types::CreateAssetTypeOutput#revision #revision} => String
    #   * {Types::CreateAssetTypeOutput#description #description} => String
    #   * {Types::CreateAssetTypeOutput#forms_output #forms_output} => Hash&lt;String,Types::FormEntryOutput&gt;
    #   * {Types::CreateAssetTypeOutput#owning_project_id #owning_project_id} => String
    #   * {Types::CreateAssetTypeOutput#origin_domain_id #origin_domain_id} => String
    #   * {Types::CreateAssetTypeOutput#origin_project_id #origin_project_id} => String
    #   * {Types::CreateAssetTypeOutput#created_at #created_at} => Time
    #   * {Types::CreateAssetTypeOutput#created_by #created_by} => String
    #   * {Types::CreateAssetTypeOutput#updated_at #updated_at} => Time
    #   * {Types::CreateAssetTypeOutput#updated_by #updated_by} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_asset_type({
    #     domain_identifier: "DomainId", # required
    #     name: "TypeName", # required
    #     description: "Description",
    #     forms_input: { # required
    #       "FormName" => {
    #         type_identifier: "FormTypeIdentifier", # required
    #         type_revision: "Revision", # required
    #         required: false,
    #       },
    #     },
    #     owning_project_identifier: "ProjectId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.domain_id #=> String
    #   resp.name #=> String
    #   resp.revision #=> String
    #   resp.description #=> String
    #   resp.forms_output #=> Hash
    #   resp.forms_output["FormName"].type_name #=> String
    #   resp.forms_output["FormName"].type_revision #=> String
    #   resp.forms_output["FormName"].required #=> Boolean
    #   resp.owning_project_id #=> String
    #   resp.origin_domain_id #=> String
    #   resp.origin_project_id #=> String
    #   resp.created_at #=> Time
    #   resp.created_by #=> String
    #   resp.updated_at #=> Time
    #   resp.updated_by #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/CreateAssetType AWS API Documentation
    #
    # @overload create_asset_type(params = {})
    # @param [Hash] params ({})
    def create_asset_type(params = {}, options = {})
      req = build_request(:create_asset_type, params)
      req.send_request(options)
    end

    # Creates a new connection. In Amazon DataZone, a connection enables you
    # to connect your resources (domains, projects, and environments) to
    # external resources and services.
    #
    # @option params [Types::AwsLocation] :aws_location
    #   The location where the connection is created.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that is provided to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Array<Types::Configuration>] :configurations
    #   The configurations of the connection.
    #
    # @option params [String] :description
    #   A connection description.
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the domain where the connection is created.
    #
    # @option params [String] :environment_identifier
    #   The ID of the environment where the connection is created.
    #
    # @option params [required, String] :name
    #   The connection name.
    #
    # @option params [Types::ConnectionPropertiesInput] :props
    #   The connection props.
    #
    # @option params [Boolean] :enable_trusted_identity_propagation
    #   Specifies whether the trusted identity propagation is enabled.
    #
    # @option params [String] :scope
    #   The scope of the connection.
    #
    # @return [Types::CreateConnectionOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateConnectionOutput#connection_id #connection_id} => String
    #   * {Types::CreateConnectionOutput#configurations #configurations} => Array&lt;Types::Configuration&gt;
    #   * {Types::CreateConnectionOutput#description #description} => String
    #   * {Types::CreateConnectionOutput#domain_id #domain_id} => String
    #   * {Types::CreateConnectionOutput#domain_unit_id #domain_unit_id} => String
    #   * {Types::CreateConnectionOutput#environment_id #environment_id} => String
    #   * {Types::CreateConnectionOutput#name #name} => String
    #   * {Types::CreateConnectionOutput#physical_endpoints #physical_endpoints} => Array&lt;Types::PhysicalEndpoint&gt;
    #   * {Types::CreateConnectionOutput#project_id #project_id} => String
    #   * {Types::CreateConnectionOutput#props #props} => Types::ConnectionPropertiesOutput
    #   * {Types::CreateConnectionOutput#type #type} => String
    #   * {Types::CreateConnectionOutput#scope #scope} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_connection({
    #     aws_location: {
    #       access_role: "AwsLocationAccessRoleString",
    #       aws_account_id: "AwsAccountId",
    #       aws_region: "AwsRegion",
    #       iam_connection_id: "ConnectionId",
    #     },
    #     client_token: "String",
    #     configurations: [
    #       {
    #         classification: "ConfigurationClassificationString",
    #         properties: {
    #           "PropertyMapKeyString" => "PropertyMapValueString",
    #         },
    #       },
    #     ],
    #     description: "CreateConnectionInputDescriptionString",
    #     domain_identifier: "DomainId", # required
    #     environment_identifier: "EnvironmentId",
    #     name: "ConnectionName", # required
    #     props: {
    #       athena_properties: {
    #         workgroup_name: "AthenaPropertiesInputWorkgroupNameString",
    #       },
    #       glue_properties: {
    #         glue_connection_input: {
    #           connection_properties: {
    #             "String" => "ConnectionPropertiesValueString",
    #           },
    #           physical_connection_requirements: {
    #             subnet_id: "SubnetId",
    #             subnet_id_list: ["SubnetId"],
    #             security_group_id_list: ["SecurityGroupIdListMemberString"],
    #             availability_zone: "PhysicalConnectionRequirementsAvailabilityZoneString",
    #           },
    #           name: "GlueConnectionInputNameString",
    #           description: "String",
    #           connection_type: "SNOWFLAKE", # accepts SNOWFLAKE, BIGQUERY, DOCUMENTDB, DYNAMODB, MYSQL, OPENSEARCH, ORACLE, POSTGRESQL, REDSHIFT, SAPHANA, SQLSERVER, TERADATA, VERTICA
    #           match_criteria: "GlueConnectionInputMatchCriteriaString",
    #           validate_credentials: false,
    #           validate_for_compute_environments: ["SPARK"], # accepts SPARK, ATHENA, PYTHON
    #           spark_properties: {
    #             "PropertyMapKeyString" => "PropertyMapValueString",
    #           },
    #           athena_properties: {
    #             "PropertyMapKeyString" => "PropertyMapValueString",
    #           },
    #           python_properties: {
    #             "PropertyMapKeyString" => "PropertyMapValueString",
    #           },
    #           authentication_configuration: {
    #             authentication_type: "BASIC", # accepts BASIC, OAUTH2, CUSTOM
    #             o_auth_2_properties: {
    #               o_auth_2_grant_type: "AUTHORIZATION_CODE", # accepts AUTHORIZATION_CODE, CLIENT_CREDENTIALS, JWT_BEARER
    #               o_auth_2_client_application: {
    #                 user_managed_client_application_client_id: "OAuth2ClientApplicationUserManagedClientApplicationClientIdString",
    #                 a_ws_managed_client_application_reference: "OAuth2ClientApplicationAWSManagedClientApplicationReferenceString",
    #               },
    #               token_url: "OAuth2PropertiesTokenUrlString",
    #               token_url_parameters_map: {
    #                 "TokenUrlParametersMapKeyString" => "TokenUrlParametersMapValueString",
    #               },
    #               authorization_code_properties: {
    #                 authorization_code: "AuthorizationCodePropertiesAuthorizationCodeString",
    #                 redirect_uri: "AuthorizationCodePropertiesRedirectUriString",
    #               },
    #               o_auth_2_credentials: {
    #                 user_managed_client_application_client_secret: "GlueOAuth2CredentialsUserManagedClientApplicationClientSecretString",
    #                 access_token: "GlueOAuth2CredentialsAccessTokenString",
    #                 refresh_token: "GlueOAuth2CredentialsRefreshTokenString",
    #                 jwt_token: "GlueOAuth2CredentialsJwtTokenString",
    #               },
    #             },
    #             secret_arn: "AuthenticationConfigurationInputSecretArnString",
    #             kms_key_arn: "AuthenticationConfigurationInputKmsKeyArnString",
    #             basic_authentication_credentials: {
    #               user_name: "BasicAuthenticationCredentialsUserNameString",
    #               password: "BasicAuthenticationCredentialsPasswordString",
    #             },
    #             custom_authentication_credentials: {
    #               "CredentialMapKeyString" => "CredentialMapValueString",
    #             },
    #           },
    #         },
    #       },
    #       hyper_pod_properties: {
    #         cluster_name: "HyperPodPropertiesInputClusterNameString", # required
    #       },
    #       iam_properties: {
    #         glue_lineage_sync_enabled: false,
    #       },
    #       redshift_properties: {
    #         storage: {
    #           cluster_name: "RedshiftStoragePropertiesClusterNameString",
    #           workgroup_name: "RedshiftStoragePropertiesWorkgroupNameString",
    #         },
    #         database_name: "RedshiftPropertiesInputDatabaseNameString",
    #         host: "RedshiftPropertiesInputHostString",
    #         port: 1,
    #         credentials: {
    #           secret_arn: "RedshiftCredentialsSecretArnString",
    #           username_password: {
    #             password: "Password", # required
    #             username: "Username", # required
    #           },
    #         },
    #         lineage_sync: {
    #           enabled: false,
    #           schedule: {
    #             schedule: "LineageSyncScheduleScheduleString",
    #           },
    #         },
    #       },
    #       spark_emr_properties: {
    #         compute_arn: "SparkEmrPropertiesInputComputeArnString",
    #         instance_profile_arn: "SparkEmrPropertiesInputInstanceProfileArnString",
    #         java_virtual_env: "SparkEmrPropertiesInputJavaVirtualEnvString",
    #         log_uri: "SparkEmrPropertiesInputLogUriString",
    #         python_virtual_env: "SparkEmrPropertiesInputPythonVirtualEnvString",
    #         runtime_role: "SparkEmrPropertiesInputRuntimeRoleString",
    #         trusted_certificates_s3_uri: "SparkEmrPropertiesInputTrustedCertificatesS3UriString",
    #         managed_endpoint_arn: "SparkEmrPropertiesInputManagedEndpointArnString",
    #       },
    #       spark_glue_properties: {
    #         additional_args: {
    #           connection: "String",
    #         },
    #         glue_connection_name: "SparkGluePropertiesInputGlueConnectionNameString",
    #         glue_connection_names: ["GlueConnectionName"],
    #         glue_version: "SparkGluePropertiesInputGlueVersionString",
    #         idle_timeout: 1,
    #         java_virtual_env: "SparkGluePropertiesInputJavaVirtualEnvString",
    #         number_of_workers: 1,
    #         python_virtual_env: "SparkGluePropertiesInputPythonVirtualEnvString",
    #         worker_type: "SparkGluePropertiesInputWorkerTypeString",
    #       },
    #       s3_properties: {
    #         s3_uri: "S3Uri", # required
    #         s3_access_grant_location_id: "S3AccessGrantLocationId",
    #         register_s3_access_grant_location: false,
    #       },
    #       amazon_q_properties: {
    #         is_enabled: false, # required
    #         profile_arn: "AmazonQPropertiesInputProfileArnString",
    #         auth_mode: "AmazonQPropertiesInputAuthModeString",
    #       },
    #       mlflow_properties: {
    #         tracking_server_arn: "String",
    #       },
    #       workflows_mwaa_properties: {
    #         mwaa_environment_name: "String",
    #       },
    #       workflows_serverless_properties: {
    #       },
    #       lakehouse_properties: {
    #         glue_lineage_sync_enabled: false,
    #       },
    #     },
    #     enable_trusted_identity_propagation: false,
    #     scope: "DOMAIN", # accepts DOMAIN, PROJECT
    #   })
    #
    # @example Response structure
    #
    #   resp.connection_id #=> String
    #   resp.configurations #=> Array
    #   resp.configurations[0].classification #=> String
    #   resp.configurations[0].properties #=> Hash
    #   resp.configurations[0].properties["PropertyMapKeyString"] #=> String
    #   resp.description #=> String
    #   resp.domain_id #=> String
    #   resp.domain_unit_id #=> String
    #   resp.environment_id #=> String
    #   resp.name #=> String
    #   resp.physical_endpoints #=> Array
    #   resp.physical_endpoints[0].aws_location.access_role #=> String
    #   resp.physical_endpoints[0].aws_location.aws_account_id #=> String
    #   resp.physical_endpoints[0].aws_location.aws_region #=> String
    #   resp.physical_endpoints[0].aws_location.iam_connection_id #=> String
    #   resp.physical_endpoints[0].glue_connection_name #=> String
    #   resp.physical_endpoints[0].glue_connection_names #=> Array
    #   resp.physical_endpoints[0].glue_connection_names[0] #=> String
    #   resp.physical_endpoints[0].glue_connection.name #=> String
    #   resp.physical_endpoints[0].glue_connection.description #=> String
    #   resp.physical_endpoints[0].glue_connection.connection_type #=> String, one of "ATHENA", "BIGQUERY", "DATABRICKS", "DOCUMENTDB", "DYNAMODB", "HYPERPOD", "IAM", "MYSQL", "OPENSEARCH", "ORACLE", "POSTGRESQL", "REDSHIFT", "S3", "SAPHANA", "SNOWFLAKE", "SPARK", "SQLSERVER", "TERADATA", "VERTICA", "WORKFLOWS_MWAA", "AMAZON_Q", "MLFLOW"
    #   resp.physical_endpoints[0].glue_connection.match_criteria #=> Array
    #   resp.physical_endpoints[0].glue_connection.match_criteria[0] #=> String
    #   resp.physical_endpoints[0].glue_connection.connection_properties #=> Hash
    #   resp.physical_endpoints[0].glue_connection.connection_properties["String"] #=> String
    #   resp.physical_endpoints[0].glue_connection.spark_properties #=> Hash
    #   resp.physical_endpoints[0].glue_connection.spark_properties["PropertyMapKeyString"] #=> String
    #   resp.physical_endpoints[0].glue_connection.athena_properties #=> Hash
    #   resp.physical_endpoints[0].glue_connection.athena_properties["PropertyMapKeyString"] #=> String
    #   resp.physical_endpoints[0].glue_connection.python_properties #=> Hash
    #   resp.physical_endpoints[0].glue_connection.python_properties["PropertyMapKeyString"] #=> String
    #   resp.physical_endpoints[0].glue_connection.physical_connection_requirements.subnet_id #=> String
    #   resp.physical_endpoints[0].glue_connection.physical_connection_requirements.subnet_id_list #=> Array
    #   resp.physical_endpoints[0].glue_connection.physical_connection_requirements.subnet_id_list[0] #=> String
    #   resp.physical_endpoints[0].glue_connection.physical_connection_requirements.security_group_id_list #=> Array
    #   resp.physical_endpoints[0].glue_connection.physical_connection_requirements.security_group_id_list[0] #=> String
    #   resp.physical_endpoints[0].glue_connection.physical_connection_requirements.availability_zone #=> String
    #   resp.physical_endpoints[0].glue_connection.creation_time #=> Time
    #   resp.physical_endpoints[0].glue_connection.last_updated_time #=> Time
    #   resp.physical_endpoints[0].glue_connection.last_updated_by #=> String
    #   resp.physical_endpoints[0].glue_connection.status #=> String, one of "CREATING", "CREATE_FAILED", "DELETING", "DELETE_FAILED", "READY", "UPDATING", "UPDATE_FAILED", "DELETED"
    #   resp.physical_endpoints[0].glue_connection.status_reason #=> String
    #   resp.physical_endpoints[0].glue_connection.last_connection_validation_time #=> Time
    #   resp.physical_endpoints[0].glue_connection.authentication_configuration.authentication_type #=> String, one of "BASIC", "OAUTH2", "CUSTOM"
    #   resp.physical_endpoints[0].glue_connection.authentication_configuration.secret_arn #=> String
    #   resp.physical_endpoints[0].glue_connection.authentication_configuration.o_auth_2_properties.o_auth_2_grant_type #=> String, one of "AUTHORIZATION_CODE", "CLIENT_CREDENTIALS", "JWT_BEARER"
    #   resp.physical_endpoints[0].glue_connection.authentication_configuration.o_auth_2_properties.o_auth_2_client_application.user_managed_client_application_client_id #=> String
    #   resp.physical_endpoints[0].glue_connection.authentication_configuration.o_auth_2_properties.o_auth_2_client_application.a_ws_managed_client_application_reference #=> String
    #   resp.physical_endpoints[0].glue_connection.authentication_configuration.o_auth_2_properties.token_url #=> String
    #   resp.physical_endpoints[0].glue_connection.authentication_configuration.o_auth_2_properties.token_url_parameters_map #=> Hash
    #   resp.physical_endpoints[0].glue_connection.authentication_configuration.o_auth_2_properties.token_url_parameters_map["TokenUrlParametersMapKeyString"] #=> String
    #   resp.physical_endpoints[0].glue_connection.authentication_configuration.o_auth_2_properties.authorization_code_properties.authorization_code #=> String
    #   resp.physical_endpoints[0].glue_connection.authentication_configuration.o_auth_2_properties.authorization_code_properties.redirect_uri #=> String
    #   resp.physical_endpoints[0].glue_connection.authentication_configuration.o_auth_2_properties.o_auth_2_credentials.user_managed_client_application_client_secret #=> String
    #   resp.physical_endpoints[0].glue_connection.authentication_configuration.o_auth_2_properties.o_auth_2_credentials.access_token #=> String
    #   resp.physical_endpoints[0].glue_connection.authentication_configuration.o_auth_2_properties.o_auth_2_credentials.refresh_token #=> String
    #   resp.physical_endpoints[0].glue_connection.authentication_configuration.o_auth_2_properties.o_auth_2_credentials.jwt_token #=> String
    #   resp.physical_endpoints[0].glue_connection.connection_schema_version #=> Integer
    #   resp.physical_endpoints[0].glue_connection.compatible_compute_environments #=> Array
    #   resp.physical_endpoints[0].glue_connection.compatible_compute_environments[0] #=> String, one of "SPARK", "ATHENA", "PYTHON"
    #   resp.physical_endpoints[0].enable_trusted_identity_propagation #=> Boolean
    #   resp.physical_endpoints[0].host #=> String
    #   resp.physical_endpoints[0].port #=> Integer
    #   resp.physical_endpoints[0].protocol #=> String, one of "ATHENA", "GLUE_INTERACTIVE_SESSION", "HTTPS", "JDBC", "LIVY", "ODBC", "PRISM"
    #   resp.physical_endpoints[0].stage #=> String
    #   resp.project_id #=> String
    #   resp.props.athena_properties.workgroup_name #=> String
    #   resp.props.glue_properties.status #=> String, one of "CREATING", "CREATE_FAILED", "DELETING", "DELETE_FAILED", "READY", "UPDATING", "UPDATE_FAILED", "DELETED"
    #   resp.props.glue_properties.error_message #=> String
    #   resp.props.hyper_pod_properties.cluster_name #=> String
    #   resp.props.hyper_pod_properties.cluster_arn #=> String
    #   resp.props.hyper_pod_properties.orchestrator #=> String, one of "EKS", "SLURM"
    #   resp.props.iam_properties.environment_id #=> String
    #   resp.props.iam_properties.glue_lineage_sync_enabled #=> Boolean
    #   resp.props.redshift_properties.storage.cluster_name #=> String
    #   resp.props.redshift_properties.storage.workgroup_name #=> String
    #   resp.props.redshift_properties.credentials.secret_arn #=> String
    #   resp.props.redshift_properties.credentials.username_password.password #=> String
    #   resp.props.redshift_properties.credentials.username_password.username #=> String
    #   resp.props.redshift_properties.is_provisioned_secret #=> Boolean
    #   resp.props.redshift_properties.jdbc_iam_url #=> String
    #   resp.props.redshift_properties.jdbc_url #=> String
    #   resp.props.redshift_properties.redshift_temp_dir #=> String
    #   resp.props.redshift_properties.lineage_sync.lineage_job_id #=> String
    #   resp.props.redshift_properties.lineage_sync.enabled #=> Boolean
    #   resp.props.redshift_properties.lineage_sync.schedule.schedule #=> String
    #   resp.props.redshift_properties.status #=> String, one of "CREATING", "CREATE_FAILED", "DELETING", "DELETE_FAILED", "READY", "UPDATING", "UPDATE_FAILED", "DELETED"
    #   resp.props.redshift_properties.database_name #=> String
    #   resp.props.spark_emr_properties.compute_arn #=> String
    #   resp.props.spark_emr_properties.credentials.password #=> String
    #   resp.props.spark_emr_properties.credentials.username #=> String
    #   resp.props.spark_emr_properties.credentials_expiration #=> Time
    #   resp.props.spark_emr_properties.governance_type #=> String, one of "AWS_MANAGED", "USER_MANAGED"
    #   resp.props.spark_emr_properties.instance_profile_arn #=> String
    #   resp.props.spark_emr_properties.java_virtual_env #=> String
    #   resp.props.spark_emr_properties.livy_endpoint #=> String
    #   resp.props.spark_emr_properties.log_uri #=> String
    #   resp.props.spark_emr_properties.python_virtual_env #=> String
    #   resp.props.spark_emr_properties.runtime_role #=> String
    #   resp.props.spark_emr_properties.trusted_certificates_s3_uri #=> String
    #   resp.props.spark_emr_properties.certificate_data #=> String
    #   resp.props.spark_emr_properties.managed_endpoint_arn #=> String
    #   resp.props.spark_emr_properties.managed_endpoint_credentials.id #=> String
    #   resp.props.spark_emr_properties.managed_endpoint_credentials.token #=> String
    #   resp.props.spark_glue_properties.additional_args.connection #=> String
    #   resp.props.spark_glue_properties.glue_connection_name #=> String
    #   resp.props.spark_glue_properties.glue_connection_names #=> Array
    #   resp.props.spark_glue_properties.glue_connection_names[0] #=> String
    #   resp.props.spark_glue_properties.glue_version #=> String
    #   resp.props.spark_glue_properties.idle_timeout #=> Integer
    #   resp.props.spark_glue_properties.java_virtual_env #=> String
    #   resp.props.spark_glue_properties.number_of_workers #=> Integer
    #   resp.props.spark_glue_properties.python_virtual_env #=> String
    #   resp.props.spark_glue_properties.worker_type #=> String
    #   resp.props.s3_properties.s3_uri #=> String
    #   resp.props.s3_properties.s3_access_grant_location_id #=> String
    #   resp.props.s3_properties.register_s3_access_grant_location #=> Boolean
    #   resp.props.s3_properties.status #=> String, one of "CREATING", "CREATE_FAILED", "DELETING", "DELETE_FAILED", "READY", "UPDATING", "UPDATE_FAILED", "DELETED"
    #   resp.props.s3_properties.error_message #=> String
    #   resp.props.amazon_q_properties.is_enabled #=> Boolean
    #   resp.props.amazon_q_properties.profile_arn #=> String
    #   resp.props.amazon_q_properties.auth_mode #=> String
    #   resp.props.mlflow_properties.tracking_server_arn #=> String
    #   resp.props.workflows_mwaa_properties.mwaa_environment_name #=> String
    #   resp.props.lakehouse_properties.glue_lineage_sync_enabled #=> Boolean
    #   resp.type #=> String, one of "ATHENA", "BIGQUERY", "DATABRICKS", "DOCUMENTDB", "DYNAMODB", "HYPERPOD", "IAM", "MYSQL", "OPENSEARCH", "ORACLE", "POSTGRESQL", "REDSHIFT", "S3", "SAPHANA", "SNOWFLAKE", "SPARK", "SQLSERVER", "TERADATA", "VERTICA", "WORKFLOWS_MWAA", "AMAZON_Q", "MLFLOW"
    #   resp.scope #=> String, one of "DOMAIN", "PROJECT"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/CreateConnection AWS API Documentation
    #
    # @overload create_connection(params = {})
    # @param [Hash] params ({})
    def create_connection(params = {}, options = {})
      req = build_request(:create_connection, params)
      req.send_request(options)
    end

    # Creates a data product.
    #
    # A data product is a comprehensive package that combines data assets
    # with their associated metadata, documentation, and access controls.
    # It's designed to serve specific business needs or use cases, making
    # it easier for users to find and consume data appropriately. Data
    # products include important information about data quality, freshness,
    # and usage guidelines, effectively bridging the gap between data
    # producers and consumers while ensuring proper governance.
    #
    # Prerequisites:
    #
    # * The domain must exist and be accessible.
    #
    # * The owning project must be valid and active.
    #
    # * The name must be unique within the domain (no existing data product
    #   with the same name).
    #
    # * User must have create permissions for data products in the project.
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the domain where the data product is created.
    #
    # @option params [required, String] :name
    #   The name of the data product.
    #
    # @option params [required, String] :owning_project_identifier
    #   The ID of the owning project of the data product.
    #
    # @option params [String] :description
    #   The description of the data product.
    #
    # @option params [Array<String>] :glossary_terms
    #   The glossary terms of the data product.
    #
    # @option params [Array<Types::FormInput>] :forms_input
    #   The metadata forms of the data product.
    #
    # @option params [Array<Types::DataProductItem>] :items
    #   The data assets of the data product.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that is provided to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateDataProductOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDataProductOutput#domain_id #domain_id} => String
    #   * {Types::CreateDataProductOutput#id #id} => String
    #   * {Types::CreateDataProductOutput#revision #revision} => String
    #   * {Types::CreateDataProductOutput#owning_project_id #owning_project_id} => String
    #   * {Types::CreateDataProductOutput#name #name} => String
    #   * {Types::CreateDataProductOutput#status #status} => String
    #   * {Types::CreateDataProductOutput#description #description} => String
    #   * {Types::CreateDataProductOutput#glossary_terms #glossary_terms} => Array&lt;String&gt;
    #   * {Types::CreateDataProductOutput#items #items} => Array&lt;Types::DataProductItem&gt;
    #   * {Types::CreateDataProductOutput#forms_output #forms_output} => Array&lt;Types::FormOutput&gt;
    #   * {Types::CreateDataProductOutput#created_at #created_at} => Time
    #   * {Types::CreateDataProductOutput#created_by #created_by} => String
    #   * {Types::CreateDataProductOutput#first_revision_created_at #first_revision_created_at} => Time
    #   * {Types::CreateDataProductOutput#first_revision_created_by #first_revision_created_by} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_data_product({
    #     domain_identifier: "DomainId", # required
    #     name: "DataProductName", # required
    #     owning_project_identifier: "ProjectId", # required
    #     description: "DataProductDescription",
    #     glossary_terms: ["GlossaryTermId"],
    #     forms_input: [
    #       {
    #         form_name: "FormName", # required
    #         type_identifier: "FormTypeIdentifier",
    #         type_revision: "RevisionInput",
    #         content: "FormInputContentString",
    #       },
    #     ],
    #     items: [
    #       {
    #         item_type: "ASSET", # required, accepts ASSET
    #         identifier: "EntityIdentifier", # required
    #         revision: "Revision",
    #         glossary_terms: ["GlossaryTermId"],
    #       },
    #     ],
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.domain_id #=> String
    #   resp.id #=> String
    #   resp.revision #=> String
    #   resp.owning_project_id #=> String
    #   resp.name #=> String
    #   resp.status #=> String, one of "CREATED", "CREATING", "CREATE_FAILED"
    #   resp.description #=> String
    #   resp.glossary_terms #=> Array
    #   resp.glossary_terms[0] #=> String
    #   resp.items #=> Array
    #   resp.items[0].item_type #=> String, one of "ASSET"
    #   resp.items[0].identifier #=> String
    #   resp.items[0].revision #=> String
    #   resp.items[0].glossary_terms #=> Array
    #   resp.items[0].glossary_terms[0] #=> String
    #   resp.forms_output #=> Array
    #   resp.forms_output[0].form_name #=> String
    #   resp.forms_output[0].type_name #=> String
    #   resp.forms_output[0].type_revision #=> String
    #   resp.forms_output[0].content #=> String
    #   resp.created_at #=> Time
    #   resp.created_by #=> String
    #   resp.first_revision_created_at #=> Time
    #   resp.first_revision_created_by #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/CreateDataProduct AWS API Documentation
    #
    # @overload create_data_product(params = {})
    # @param [Hash] params ({})
    def create_data_product(params = {}, options = {})
      req = build_request(:create_data_product, params)
      req.send_request(options)
    end

    # Creates a data product revision.
    #
    # Prerequisites:
    #
    # * The original data product must exist in the given domain.
    #
    # * User must have permissions on the data product.
    #
    # * The domain must be valid and accessible.
    #
    # * The new revision name must comply with naming constraints (if
    #   required).
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the domain where the data product revision is created.
    #
    # @option params [required, String] :identifier
    #   The ID of the data product revision.
    #
    # @option params [required, String] :name
    #   The name of the data product revision.
    #
    # @option params [String] :description
    #   The description of the data product revision.
    #
    # @option params [Array<String>] :glossary_terms
    #   The glossary terms of the data product revision.
    #
    # @option params [Array<Types::DataProductItem>] :items
    #   The data assets of the data product revision.
    #
    # @option params [Array<Types::FormInput>] :forms_input
    #   The metadata forms of the data product revision.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that is provided to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateDataProductRevisionOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDataProductRevisionOutput#domain_id #domain_id} => String
    #   * {Types::CreateDataProductRevisionOutput#id #id} => String
    #   * {Types::CreateDataProductRevisionOutput#revision #revision} => String
    #   * {Types::CreateDataProductRevisionOutput#owning_project_id #owning_project_id} => String
    #   * {Types::CreateDataProductRevisionOutput#name #name} => String
    #   * {Types::CreateDataProductRevisionOutput#status #status} => String
    #   * {Types::CreateDataProductRevisionOutput#description #description} => String
    #   * {Types::CreateDataProductRevisionOutput#glossary_terms #glossary_terms} => Array&lt;String&gt;
    #   * {Types::CreateDataProductRevisionOutput#items #items} => Array&lt;Types::DataProductItem&gt;
    #   * {Types::CreateDataProductRevisionOutput#forms_output #forms_output} => Array&lt;Types::FormOutput&gt;
    #   * {Types::CreateDataProductRevisionOutput#created_at #created_at} => Time
    #   * {Types::CreateDataProductRevisionOutput#created_by #created_by} => String
    #   * {Types::CreateDataProductRevisionOutput#first_revision_created_at #first_revision_created_at} => Time
    #   * {Types::CreateDataProductRevisionOutput#first_revision_created_by #first_revision_created_by} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_data_product_revision({
    #     domain_identifier: "DomainId", # required
    #     identifier: "DataProductId", # required
    #     name: "DataProductName", # required
    #     description: "DataProductDescription",
    #     glossary_terms: ["GlossaryTermId"],
    #     items: [
    #       {
    #         item_type: "ASSET", # required, accepts ASSET
    #         identifier: "EntityIdentifier", # required
    #         revision: "Revision",
    #         glossary_terms: ["GlossaryTermId"],
    #       },
    #     ],
    #     forms_input: [
    #       {
    #         form_name: "FormName", # required
    #         type_identifier: "FormTypeIdentifier",
    #         type_revision: "RevisionInput",
    #         content: "FormInputContentString",
    #       },
    #     ],
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.domain_id #=> String
    #   resp.id #=> String
    #   resp.revision #=> String
    #   resp.owning_project_id #=> String
    #   resp.name #=> String
    #   resp.status #=> String, one of "CREATED", "CREATING", "CREATE_FAILED"
    #   resp.description #=> String
    #   resp.glossary_terms #=> Array
    #   resp.glossary_terms[0] #=> String
    #   resp.items #=> Array
    #   resp.items[0].item_type #=> String, one of "ASSET"
    #   resp.items[0].identifier #=> String
    #   resp.items[0].revision #=> String
    #   resp.items[0].glossary_terms #=> Array
    #   resp.items[0].glossary_terms[0] #=> String
    #   resp.forms_output #=> Array
    #   resp.forms_output[0].form_name #=> String
    #   resp.forms_output[0].type_name #=> String
    #   resp.forms_output[0].type_revision #=> String
    #   resp.forms_output[0].content #=> String
    #   resp.created_at #=> Time
    #   resp.created_by #=> String
    #   resp.first_revision_created_at #=> Time
    #   resp.first_revision_created_by #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/CreateDataProductRevision AWS API Documentation
    #
    # @overload create_data_product_revision(params = {})
    # @param [Hash] params ({})
    def create_data_product_revision(params = {}, options = {})
      req = build_request(:create_data_product_revision, params)
      req.send_request(options)
    end

    # Creates an Amazon DataZone data source.
    #
    # @option params [required, String] :name
    #   The name of the data source.
    #
    # @option params [String] :description
    #   The description of the data source.
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the Amazon DataZone domain where the data source is created.
    #
    # @option params [required, String] :project_identifier
    #   The identifier of the Amazon DataZone project in which you want to add
    #   this data source.
    #
    # @option params [String] :environment_identifier
    #   The unique identifier of the Amazon DataZone environment to which the
    #   data source publishes assets.
    #
    # @option params [String] :connection_identifier
    #   The ID of the connection.
    #
    # @option params [required, String] :type
    #   The type of the data source. In Amazon DataZone, you can use data
    #   sources to import technical metadata of assets (data) from the source
    #   databases or data warehouses into Amazon DataZone. In the current
    #   release of Amazon DataZone, you can create and run data sources for
    #   Amazon Web Services Glue and Amazon Redshift.
    #
    # @option params [Types::DataSourceConfigurationInput] :configuration
    #   Specifies the configuration of the data source. It can be set to
    #   either `glueRunConfiguration` or `redshiftRunConfiguration`.
    #
    # @option params [Types::RecommendationConfiguration] :recommendation
    #   Specifies whether the business name generation is to be enabled for
    #   this data source.
    #
    # @option params [String] :enable_setting
    #   Specifies whether the data source is enabled.
    #
    # @option params [Types::ScheduleConfiguration] :schedule
    #   The schedule of the data source runs.
    #
    # @option params [Boolean] :publish_on_import
    #   Specifies whether the assets that this data source creates in the
    #   inventory are to be also automatically published to the catalog.
    #
    # @option params [Array<Types::FormInput>] :asset_forms_input
    #   The metadata forms that are to be attached to the assets that this
    #   data source works with.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that is provided to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateDataSourceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDataSourceOutput#id #id} => String
    #   * {Types::CreateDataSourceOutput#status #status} => String
    #   * {Types::CreateDataSourceOutput#type #type} => String
    #   * {Types::CreateDataSourceOutput#name #name} => String
    #   * {Types::CreateDataSourceOutput#description #description} => String
    #   * {Types::CreateDataSourceOutput#domain_id #domain_id} => String
    #   * {Types::CreateDataSourceOutput#project_id #project_id} => String
    #   * {Types::CreateDataSourceOutput#environment_id #environment_id} => String
    #   * {Types::CreateDataSourceOutput#connection_id #connection_id} => String
    #   * {Types::CreateDataSourceOutput#configuration #configuration} => Types::DataSourceConfigurationOutput
    #   * {Types::CreateDataSourceOutput#recommendation #recommendation} => Types::RecommendationConfiguration
    #   * {Types::CreateDataSourceOutput#enable_setting #enable_setting} => String
    #   * {Types::CreateDataSourceOutput#publish_on_import #publish_on_import} => Boolean
    #   * {Types::CreateDataSourceOutput#asset_forms_output #asset_forms_output} => Array&lt;Types::FormOutput&gt;
    #   * {Types::CreateDataSourceOutput#schedule #schedule} => Types::ScheduleConfiguration
    #   * {Types::CreateDataSourceOutput#last_run_status #last_run_status} => String
    #   * {Types::CreateDataSourceOutput#last_run_at #last_run_at} => Time
    #   * {Types::CreateDataSourceOutput#last_run_error_message #last_run_error_message} => Types::DataSourceErrorMessage
    #   * {Types::CreateDataSourceOutput#error_message #error_message} => Types::DataSourceErrorMessage
    #   * {Types::CreateDataSourceOutput#created_at #created_at} => Time
    #   * {Types::CreateDataSourceOutput#updated_at #updated_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_data_source({
    #     name: "Name", # required
    #     description: "Description",
    #     domain_identifier: "DomainId", # required
    #     project_identifier: "CreateDataSourceInputProjectIdentifierString", # required
    #     environment_identifier: "CreateDataSourceInputEnvironmentIdentifierString",
    #     connection_identifier: "CreateDataSourceInputConnectionIdentifierString",
    #     type: "DataSourceType", # required
    #     configuration: {
    #       glue_run_configuration: {
    #         data_access_role: "GlueRunConfigurationInputDataAccessRoleString",
    #         relational_filter_configurations: [ # required
    #           {
    #             database_name: "RelationalFilterConfigurationDatabaseNameString", # required
    #             schema_name: "RelationalFilterConfigurationSchemaNameString",
    #             filter_expressions: [
    #               {
    #                 type: "INCLUDE", # required, accepts INCLUDE, EXCLUDE
    #                 expression: "FilterExpressionExpressionString", # required
    #               },
    #             ],
    #           },
    #         ],
    #         auto_import_data_quality_result: false,
    #         catalog_name: "GlueRunConfigurationInputCatalogNameString",
    #       },
    #       redshift_run_configuration: {
    #         data_access_role: "RedshiftRunConfigurationInputDataAccessRoleString",
    #         relational_filter_configurations: [ # required
    #           {
    #             database_name: "RelationalFilterConfigurationDatabaseNameString", # required
    #             schema_name: "RelationalFilterConfigurationSchemaNameString",
    #             filter_expressions: [
    #               {
    #                 type: "INCLUDE", # required, accepts INCLUDE, EXCLUDE
    #                 expression: "FilterExpressionExpressionString", # required
    #               },
    #             ],
    #           },
    #         ],
    #         redshift_credential_configuration: {
    #           secret_manager_arn: "RedshiftCredentialConfigurationSecretManagerArnString", # required
    #         },
    #         redshift_storage: {
    #           redshift_cluster_source: {
    #             cluster_name: "RedshiftClusterStorageClusterNameString", # required
    #           },
    #           redshift_serverless_source: {
    #             workgroup_name: "RedshiftServerlessStorageWorkgroupNameString", # required
    #           },
    #         },
    #       },
    #       sage_maker_run_configuration: {
    #         tracking_assets: { # required
    #           "SageMakerAssetType" => ["SageMakerResourceArn"],
    #         },
    #       },
    #     },
    #     recommendation: {
    #       enable_business_name_generation: false,
    #     },
    #     enable_setting: "ENABLED", # accepts ENABLED, DISABLED
    #     schedule: {
    #       timezone: "UTC", # accepts UTC, AFRICA_JOHANNESBURG, AMERICA_MONTREAL, AMERICA_SAO_PAULO, ASIA_BAHRAIN, ASIA_BANGKOK, ASIA_CALCUTTA, ASIA_DUBAI, ASIA_HONG_KONG, ASIA_JAKARTA, ASIA_KUALA_LUMPUR, ASIA_SEOUL, ASIA_SHANGHAI, ASIA_SINGAPORE, ASIA_TAIPEI, ASIA_TOKYO, AUSTRALIA_MELBOURNE, AUSTRALIA_SYDNEY, CANADA_CENTRAL, CET, CST6CDT, ETC_GMT, ETC_GMT0, ETC_GMT_ADD_0, ETC_GMT_ADD_1, ETC_GMT_ADD_10, ETC_GMT_ADD_11, ETC_GMT_ADD_12, ETC_GMT_ADD_2, ETC_GMT_ADD_3, ETC_GMT_ADD_4, ETC_GMT_ADD_5, ETC_GMT_ADD_6, ETC_GMT_ADD_7, ETC_GMT_ADD_8, ETC_GMT_ADD_9, ETC_GMT_NEG_0, ETC_GMT_NEG_1, ETC_GMT_NEG_10, ETC_GMT_NEG_11, ETC_GMT_NEG_12, ETC_GMT_NEG_13, ETC_GMT_NEG_14, ETC_GMT_NEG_2, ETC_GMT_NEG_3, ETC_GMT_NEG_4, ETC_GMT_NEG_5, ETC_GMT_NEG_6, ETC_GMT_NEG_7, ETC_GMT_NEG_8, ETC_GMT_NEG_9, EUROPE_DUBLIN, EUROPE_LONDON, EUROPE_PARIS, EUROPE_STOCKHOLM, EUROPE_ZURICH, ISRAEL, MEXICO_GENERAL, MST7MDT, PACIFIC_AUCKLAND, US_CENTRAL, US_EASTERN, US_MOUNTAIN, US_PACIFIC
    #       schedule: "CronString",
    #     },
    #     publish_on_import: false,
    #     asset_forms_input: [
    #       {
    #         form_name: "FormName", # required
    #         type_identifier: "FormTypeIdentifier",
    #         type_revision: "RevisionInput",
    #         content: "FormInputContentString",
    #       },
    #     ],
    #     client_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.status #=> String, one of "CREATING", "FAILED_CREATION", "READY", "UPDATING", "FAILED_UPDATE", "RUNNING", "DELETING", "FAILED_DELETION"
    #   resp.type #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.domain_id #=> String
    #   resp.project_id #=> String
    #   resp.environment_id #=> String
    #   resp.connection_id #=> String
    #   resp.configuration.glue_run_configuration.account_id #=> String
    #   resp.configuration.glue_run_configuration.region #=> String
    #   resp.configuration.glue_run_configuration.data_access_role #=> String
    #   resp.configuration.glue_run_configuration.relational_filter_configurations #=> Array
    #   resp.configuration.glue_run_configuration.relational_filter_configurations[0].database_name #=> String
    #   resp.configuration.glue_run_configuration.relational_filter_configurations[0].schema_name #=> String
    #   resp.configuration.glue_run_configuration.relational_filter_configurations[0].filter_expressions #=> Array
    #   resp.configuration.glue_run_configuration.relational_filter_configurations[0].filter_expressions[0].type #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.configuration.glue_run_configuration.relational_filter_configurations[0].filter_expressions[0].expression #=> String
    #   resp.configuration.glue_run_configuration.auto_import_data_quality_result #=> Boolean
    #   resp.configuration.glue_run_configuration.catalog_name #=> String
    #   resp.configuration.redshift_run_configuration.account_id #=> String
    #   resp.configuration.redshift_run_configuration.region #=> String
    #   resp.configuration.redshift_run_configuration.data_access_role #=> String
    #   resp.configuration.redshift_run_configuration.relational_filter_configurations #=> Array
    #   resp.configuration.redshift_run_configuration.relational_filter_configurations[0].database_name #=> String
    #   resp.configuration.redshift_run_configuration.relational_filter_configurations[0].schema_name #=> String
    #   resp.configuration.redshift_run_configuration.relational_filter_configurations[0].filter_expressions #=> Array
    #   resp.configuration.redshift_run_configuration.relational_filter_configurations[0].filter_expressions[0].type #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.configuration.redshift_run_configuration.relational_filter_configurations[0].filter_expressions[0].expression #=> String
    #   resp.configuration.redshift_run_configuration.redshift_credential_configuration.secret_manager_arn #=> String
    #   resp.configuration.redshift_run_configuration.redshift_storage.redshift_cluster_source.cluster_name #=> String
    #   resp.configuration.redshift_run_configuration.redshift_storage.redshift_serverless_source.workgroup_name #=> String
    #   resp.configuration.sage_maker_run_configuration.account_id #=> String
    #   resp.configuration.sage_maker_run_configuration.region #=> String
    #   resp.configuration.sage_maker_run_configuration.tracking_assets #=> Hash
    #   resp.configuration.sage_maker_run_configuration.tracking_assets["SageMakerAssetType"] #=> Array
    #   resp.configuration.sage_maker_run_configuration.tracking_assets["SageMakerAssetType"][0] #=> String
    #   resp.recommendation.enable_business_name_generation #=> Boolean
    #   resp.enable_setting #=> String, one of "ENABLED", "DISABLED"
    #   resp.publish_on_import #=> Boolean
    #   resp.asset_forms_output #=> Array
    #   resp.asset_forms_output[0].form_name #=> String
    #   resp.asset_forms_output[0].type_name #=> String
    #   resp.asset_forms_output[0].type_revision #=> String
    #   resp.asset_forms_output[0].content #=> String
    #   resp.schedule.timezone #=> String, one of "UTC", "AFRICA_JOHANNESBURG", "AMERICA_MONTREAL", "AMERICA_SAO_PAULO", "ASIA_BAHRAIN", "ASIA_BANGKOK", "ASIA_CALCUTTA", "ASIA_DUBAI", "ASIA_HONG_KONG", "ASIA_JAKARTA", "ASIA_KUALA_LUMPUR", "ASIA_SEOUL", "ASIA_SHANGHAI", "ASIA_SINGAPORE", "ASIA_TAIPEI", "ASIA_TOKYO", "AUSTRALIA_MELBOURNE", "AUSTRALIA_SYDNEY", "CANADA_CENTRAL", "CET", "CST6CDT", "ETC_GMT", "ETC_GMT0", "ETC_GMT_ADD_0", "ETC_GMT_ADD_1", "ETC_GMT_ADD_10", "ETC_GMT_ADD_11", "ETC_GMT_ADD_12", "ETC_GMT_ADD_2", "ETC_GMT_ADD_3", "ETC_GMT_ADD_4", "ETC_GMT_ADD_5", "ETC_GMT_ADD_6", "ETC_GMT_ADD_7", "ETC_GMT_ADD_8", "ETC_GMT_ADD_9", "ETC_GMT_NEG_0", "ETC_GMT_NEG_1", "ETC_GMT_NEG_10", "ETC_GMT_NEG_11", "ETC_GMT_NEG_12", "ETC_GMT_NEG_13", "ETC_GMT_NEG_14", "ETC_GMT_NEG_2", "ETC_GMT_NEG_3", "ETC_GMT_NEG_4", "ETC_GMT_NEG_5", "ETC_GMT_NEG_6", "ETC_GMT_NEG_7", "ETC_GMT_NEG_8", "ETC_GMT_NEG_9", "EUROPE_DUBLIN", "EUROPE_LONDON", "EUROPE_PARIS", "EUROPE_STOCKHOLM", "EUROPE_ZURICH", "ISRAEL", "MEXICO_GENERAL", "MST7MDT", "PACIFIC_AUCKLAND", "US_CENTRAL", "US_EASTERN", "US_MOUNTAIN", "US_PACIFIC"
    #   resp.schedule.schedule #=> String
    #   resp.last_run_status #=> String, one of "REQUESTED", "RUNNING", "FAILED", "PARTIALLY_SUCCEEDED", "SUCCESS"
    #   resp.last_run_at #=> Time
    #   resp.last_run_error_message.error_type #=> String, one of "ACCESS_DENIED_EXCEPTION", "CONFLICT_EXCEPTION", "INTERNAL_SERVER_EXCEPTION", "RESOURCE_NOT_FOUND_EXCEPTION", "SERVICE_QUOTA_EXCEEDED_EXCEPTION", "THROTTLING_EXCEPTION", "VALIDATION_EXCEPTION"
    #   resp.last_run_error_message.error_detail #=> String
    #   resp.error_message.error_type #=> String, one of "ACCESS_DENIED_EXCEPTION", "CONFLICT_EXCEPTION", "INTERNAL_SERVER_EXCEPTION", "RESOURCE_NOT_FOUND_EXCEPTION", "SERVICE_QUOTA_EXCEEDED_EXCEPTION", "THROTTLING_EXCEPTION", "VALIDATION_EXCEPTION"
    #   resp.error_message.error_detail #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/CreateDataSource AWS API Documentation
    #
    # @overload create_data_source(params = {})
    # @param [Hash] params ({})
    def create_data_source(params = {}, options = {})
      req = build_request(:create_data_source, params)
      req.send_request(options)
    end

    # Creates an Amazon DataZone domain.
    #
    # @option params [required, String] :name
    #   The name of the Amazon DataZone domain.
    #
    # @option params [String] :description
    #   The description of the Amazon DataZone domain.
    #
    # @option params [Types::SingleSignOn] :single_sign_on
    #   The single-sign on configuration of the Amazon DataZone domain.
    #
    # @option params [String] :domain_execution_role
    #   The domain execution role that is created when an Amazon DataZone
    #   domain is created. The domain execution role is created in the Amazon
    #   Web Services account that houses the Amazon DataZone domain.
    #
    # @option params [String] :kms_key_identifier
    #   The identifier of the Amazon Web Services Key Management Service (KMS)
    #   key that is used to encrypt the Amazon DataZone domain, metadata, and
    #   reporting data.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags specified for the Amazon DataZone domain.
    #
    # @option params [String] :domain_version
    #   The version of the domain that is created.
    #
    # @option params [String] :service_role
    #   The service role of the domain that is created.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that is provided to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateDomainOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDomainOutput#id #id} => String
    #   * {Types::CreateDomainOutput#root_domain_unit_id #root_domain_unit_id} => String
    #   * {Types::CreateDomainOutput#name #name} => String
    #   * {Types::CreateDomainOutput#description #description} => String
    #   * {Types::CreateDomainOutput#single_sign_on #single_sign_on} => Types::SingleSignOn
    #   * {Types::CreateDomainOutput#domain_execution_role #domain_execution_role} => String
    #   * {Types::CreateDomainOutput#arn #arn} => String
    #   * {Types::CreateDomainOutput#kms_key_identifier #kms_key_identifier} => String
    #   * {Types::CreateDomainOutput#status #status} => String
    #   * {Types::CreateDomainOutput#portal_url #portal_url} => String
    #   * {Types::CreateDomainOutput#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::CreateDomainOutput#domain_version #domain_version} => String
    #   * {Types::CreateDomainOutput#service_role #service_role} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_domain({
    #     name: "String", # required
    #     description: "String",
    #     single_sign_on: {
    #       type: "IAM_IDC", # accepts IAM_IDC, DISABLED
    #       user_assignment: "AUTOMATIC", # accepts AUTOMATIC, MANUAL
    #       idc_instance_arn: "SingleSignOnIdcInstanceArnString",
    #     },
    #     domain_execution_role: "RoleArn",
    #     kms_key_identifier: "KmsKeyArn",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     domain_version: "V1", # accepts V1, V2
    #     service_role: "RoleArn",
    #     client_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.root_domain_unit_id #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.single_sign_on.type #=> String, one of "IAM_IDC", "DISABLED"
    #   resp.single_sign_on.user_assignment #=> String, one of "AUTOMATIC", "MANUAL"
    #   resp.single_sign_on.idc_instance_arn #=> String
    #   resp.domain_execution_role #=> String
    #   resp.arn #=> String
    #   resp.kms_key_identifier #=> String
    #   resp.status #=> String, one of "CREATING", "AVAILABLE", "CREATION_FAILED", "DELETING", "DELETED", "DELETION_FAILED"
    #   resp.portal_url #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #   resp.domain_version #=> String, one of "V1", "V2"
    #   resp.service_role #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/CreateDomain AWS API Documentation
    #
    # @overload create_domain(params = {})
    # @param [Hash] params ({})
    def create_domain(params = {}, options = {})
      req = build_request(:create_domain, params)
      req.send_request(options)
    end

    # Creates a domain unit in Amazon DataZone.
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the domain where you want to crate a domain unit.
    #
    # @option params [required, String] :name
    #   The name of the domain unit.
    #
    # @option params [required, String] :parent_domain_unit_identifier
    #   The ID of the parent domain unit.
    #
    # @option params [String] :description
    #   The description of the domain unit.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that is provided to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateDomainUnitOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDomainUnitOutput#id #id} => String
    #   * {Types::CreateDomainUnitOutput#domain_id #domain_id} => String
    #   * {Types::CreateDomainUnitOutput#name #name} => String
    #   * {Types::CreateDomainUnitOutput#parent_domain_unit_id #parent_domain_unit_id} => String
    #   * {Types::CreateDomainUnitOutput#description #description} => String
    #   * {Types::CreateDomainUnitOutput#owners #owners} => Array&lt;Types::DomainUnitOwnerProperties&gt;
    #   * {Types::CreateDomainUnitOutput#ancestor_domain_unit_ids #ancestor_domain_unit_ids} => Array&lt;String&gt;
    #   * {Types::CreateDomainUnitOutput#created_at #created_at} => Time
    #   * {Types::CreateDomainUnitOutput#created_by #created_by} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_domain_unit({
    #     domain_identifier: "DomainId", # required
    #     name: "DomainUnitName", # required
    #     parent_domain_unit_identifier: "DomainUnitId", # required
    #     description: "DomainUnitDescription",
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.domain_id #=> String
    #   resp.name #=> String
    #   resp.parent_domain_unit_id #=> String
    #   resp.description #=> String
    #   resp.owners #=> Array
    #   resp.owners[0].user.user_id #=> String
    #   resp.owners[0].group.group_id #=> String
    #   resp.ancestor_domain_unit_ids #=> Array
    #   resp.ancestor_domain_unit_ids[0] #=> String
    #   resp.created_at #=> Time
    #   resp.created_by #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/CreateDomainUnit AWS API Documentation
    #
    # @overload create_domain_unit(params = {})
    # @param [Hash] params ({})
    def create_domain_unit(params = {}, options = {})
      req = build_request(:create_domain_unit, params)
      req.send_request(options)
    end

    # Create an Amazon DataZone environment.
    #
    # @option params [required, String] :project_identifier
    #   The identifier of the Amazon DataZone project in which this
    #   environment is created.
    #
    # @option params [required, String] :domain_identifier
    #   The identifier of the Amazon DataZone domain in which the environment
    #   is created.
    #
    # @option params [String] :description
    #   The description of the Amazon DataZone environment.
    #
    # @option params [required, String] :name
    #   The name of the Amazon DataZone environment.
    #
    # @option params [String] :environment_profile_identifier
    #   The identifier of the environment profile that is used to create this
    #   Amazon DataZone environment.
    #
    # @option params [Array<Types::EnvironmentParameter>] :user_parameters
    #   The user parameters of this Amazon DataZone environment.
    #
    # @option params [Array<String>] :glossary_terms
    #   The glossary terms that can be used in this Amazon DataZone
    #   environment.
    #
    # @option params [String] :environment_account_identifier
    #   The ID of the account in which the environment is being created.
    #
    # @option params [String] :environment_account_region
    #   The region of the account in which the environment is being created.
    #
    # @option params [String] :environment_blueprint_identifier
    #   The ID of the blueprint with which the environment is being created.
    #
    # @option params [Integer] :deployment_order
    #   The deployment order of the environment.
    #
    # @option params [String] :environment_configuration_id
    #   The configuration ID of the environment.
    #
    # @option params [String] :environment_configuration_name
    #   The configuration name of the environment.
    #
    # @return [Types::CreateEnvironmentOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateEnvironmentOutput#project_id #project_id} => String
    #   * {Types::CreateEnvironmentOutput#id #id} => String
    #   * {Types::CreateEnvironmentOutput#domain_id #domain_id} => String
    #   * {Types::CreateEnvironmentOutput#created_by #created_by} => String
    #   * {Types::CreateEnvironmentOutput#created_at #created_at} => Time
    #   * {Types::CreateEnvironmentOutput#updated_at #updated_at} => Time
    #   * {Types::CreateEnvironmentOutput#name #name} => String
    #   * {Types::CreateEnvironmentOutput#description #description} => String
    #   * {Types::CreateEnvironmentOutput#environment_profile_id #environment_profile_id} => String
    #   * {Types::CreateEnvironmentOutput#aws_account_id #aws_account_id} => String
    #   * {Types::CreateEnvironmentOutput#aws_account_region #aws_account_region} => String
    #   * {Types::CreateEnvironmentOutput#provider #provider} => String
    #   * {Types::CreateEnvironmentOutput#provisioned_resources #provisioned_resources} => Array&lt;Types::Resource&gt;
    #   * {Types::CreateEnvironmentOutput#status #status} => String
    #   * {Types::CreateEnvironmentOutput#environment_actions #environment_actions} => Array&lt;Types::ConfigurableEnvironmentAction&gt;
    #   * {Types::CreateEnvironmentOutput#glossary_terms #glossary_terms} => Array&lt;String&gt;
    #   * {Types::CreateEnvironmentOutput#user_parameters #user_parameters} => Array&lt;Types::CustomParameter&gt;
    #   * {Types::CreateEnvironmentOutput#last_deployment #last_deployment} => Types::Deployment
    #   * {Types::CreateEnvironmentOutput#provisioning_properties #provisioning_properties} => Types::ProvisioningProperties
    #   * {Types::CreateEnvironmentOutput#deployment_properties #deployment_properties} => Types::DeploymentProperties
    #   * {Types::CreateEnvironmentOutput#environment_blueprint_id #environment_blueprint_id} => String
    #   * {Types::CreateEnvironmentOutput#environment_configuration_id #environment_configuration_id} => String
    #   * {Types::CreateEnvironmentOutput#environment_configuration_name #environment_configuration_name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_environment({
    #     project_identifier: "ProjectId", # required
    #     domain_identifier: "DomainId", # required
    #     description: "String",
    #     name: "String", # required
    #     environment_profile_identifier: "EnvironmentProfileId",
    #     user_parameters: [
    #       {
    #         name: "String",
    #         value: "String",
    #       },
    #     ],
    #     glossary_terms: ["GlossaryTermId"],
    #     environment_account_identifier: "String",
    #     environment_account_region: "String",
    #     environment_blueprint_identifier: "String",
    #     deployment_order: 1,
    #     environment_configuration_id: "String",
    #     environment_configuration_name: "EnvironmentConfigurationName",
    #   })
    #
    # @example Response structure
    #
    #   resp.project_id #=> String
    #   resp.id #=> String
    #   resp.domain_id #=> String
    #   resp.created_by #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.environment_profile_id #=> String
    #   resp.aws_account_id #=> String
    #   resp.aws_account_region #=> String
    #   resp.provider #=> String
    #   resp.provisioned_resources #=> Array
    #   resp.provisioned_resources[0].provider #=> String
    #   resp.provisioned_resources[0].name #=> String
    #   resp.provisioned_resources[0].value #=> String
    #   resp.provisioned_resources[0].type #=> String
    #   resp.status #=> String, one of "ACTIVE", "CREATING", "UPDATING", "DELETING", "CREATE_FAILED", "UPDATE_FAILED", "DELETE_FAILED", "VALIDATION_FAILED", "SUSPENDED", "DISABLED", "EXPIRED", "DELETED", "INACCESSIBLE"
    #   resp.environment_actions #=> Array
    #   resp.environment_actions[0].type #=> String
    #   resp.environment_actions[0].auth #=> String, one of "IAM", "HTTPS"
    #   resp.environment_actions[0].parameters #=> Array
    #   resp.environment_actions[0].parameters[0].key #=> String
    #   resp.environment_actions[0].parameters[0].value #=> String
    #   resp.glossary_terms #=> Array
    #   resp.glossary_terms[0] #=> String
    #   resp.user_parameters #=> Array
    #   resp.user_parameters[0].key_name #=> String
    #   resp.user_parameters[0].description #=> String
    #   resp.user_parameters[0].field_type #=> String
    #   resp.user_parameters[0].default_value #=> String
    #   resp.user_parameters[0].is_editable #=> Boolean
    #   resp.user_parameters[0].is_optional #=> Boolean
    #   resp.user_parameters[0].is_update_supported #=> Boolean
    #   resp.last_deployment.deployment_id #=> String
    #   resp.last_deployment.deployment_type #=> String, one of "CREATE", "UPDATE", "DELETE"
    #   resp.last_deployment.deployment_status #=> String, one of "IN_PROGRESS", "SUCCESSFUL", "FAILED", "PENDING_DEPLOYMENT"
    #   resp.last_deployment.failure_reason.code #=> String
    #   resp.last_deployment.failure_reason.message #=> String
    #   resp.last_deployment.messages #=> Array
    #   resp.last_deployment.messages[0] #=> String
    #   resp.last_deployment.is_deployment_complete #=> Boolean
    #   resp.provisioning_properties.cloud_formation.template_url #=> String
    #   resp.deployment_properties.start_timeout_minutes #=> Integer
    #   resp.deployment_properties.end_timeout_minutes #=> Integer
    #   resp.environment_blueprint_id #=> String
    #   resp.environment_configuration_id #=> String
    #   resp.environment_configuration_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/CreateEnvironment AWS API Documentation
    #
    # @overload create_environment(params = {})
    # @param [Hash] params ({})
    def create_environment(params = {}, options = {})
      req = build_request(:create_environment, params)
      req.send_request(options)
    end

    # Creates an action for the environment, for example, creates a console
    # link for an analytics tool that is available in this environment.
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the Amazon DataZone domain in which the environment action
    #   is created.
    #
    # @option params [required, String] :environment_identifier
    #   The ID of the environment in which the environment action is created.
    #
    # @option params [required, String] :name
    #   The name of the environment action.
    #
    # @option params [required, Types::ActionParameters] :parameters
    #   The parameters of the environment action.
    #
    # @option params [String] :description
    #   The description of the environment action that is being created in the
    #   environment.
    #
    # @return [Types::CreateEnvironmentActionOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateEnvironmentActionOutput#domain_id #domain_id} => String
    #   * {Types::CreateEnvironmentActionOutput#environment_id #environment_id} => String
    #   * {Types::CreateEnvironmentActionOutput#id #id} => String
    #   * {Types::CreateEnvironmentActionOutput#name #name} => String
    #   * {Types::CreateEnvironmentActionOutput#parameters #parameters} => Types::ActionParameters
    #   * {Types::CreateEnvironmentActionOutput#description #description} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_environment_action({
    #     domain_identifier: "DomainId", # required
    #     environment_identifier: "EnvironmentId", # required
    #     name: "String", # required
    #     parameters: { # required
    #       aws_console_link: {
    #         uri: "String",
    #       },
    #     },
    #     description: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.domain_id #=> String
    #   resp.environment_id #=> String
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.parameters.aws_console_link.uri #=> String
    #   resp.description #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/CreateEnvironmentAction AWS API Documentation
    #
    # @overload create_environment_action(params = {})
    # @param [Hash] params ({})
    def create_environment_action(params = {}, options = {})
      req = build_request(:create_environment_action, params)
      req.send_request(options)
    end

    # Creates a Amazon DataZone blueprint.
    #
    # @option params [required, String] :domain_identifier
    #   The identifier of the domain in which this blueprint is created.
    #
    # @option params [required, String] :name
    #   The name of this Amazon DataZone blueprint.
    #
    # @option params [String] :description
    #   The description of the Amazon DataZone blueprint.
    #
    # @option params [required, Types::ProvisioningProperties] :provisioning_properties
    #   The provisioning properties of this Amazon DataZone blueprint.
    #
    # @option params [Array<Types::CustomParameter>] :user_parameters
    #   The user parameters of this Amazon DataZone blueprint.
    #
    # @return [Types::CreateEnvironmentBlueprintOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateEnvironmentBlueprintOutput#id #id} => String
    #   * {Types::CreateEnvironmentBlueprintOutput#name #name} => String
    #   * {Types::CreateEnvironmentBlueprintOutput#description #description} => String
    #   * {Types::CreateEnvironmentBlueprintOutput#provider #provider} => String
    #   * {Types::CreateEnvironmentBlueprintOutput#provisioning_properties #provisioning_properties} => Types::ProvisioningProperties
    #   * {Types::CreateEnvironmentBlueprintOutput#deployment_properties #deployment_properties} => Types::DeploymentProperties
    #   * {Types::CreateEnvironmentBlueprintOutput#user_parameters #user_parameters} => Array&lt;Types::CustomParameter&gt;
    #   * {Types::CreateEnvironmentBlueprintOutput#glossary_terms #glossary_terms} => Array&lt;String&gt;
    #   * {Types::CreateEnvironmentBlueprintOutput#created_at #created_at} => Time
    #   * {Types::CreateEnvironmentBlueprintOutput#updated_at #updated_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_environment_blueprint({
    #     domain_identifier: "DomainId", # required
    #     name: "EnvironmentBlueprintName", # required
    #     description: "Description",
    #     provisioning_properties: { # required
    #       cloud_formation: {
    #         template_url: "String", # required
    #       },
    #     },
    #     user_parameters: [
    #       {
    #         key_name: "CustomParameterKeyNameString", # required
    #         description: "Description",
    #         field_type: "String", # required
    #         default_value: "String",
    #         is_editable: false,
    #         is_optional: false,
    #         is_update_supported: false,
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.provider #=> String
    #   resp.provisioning_properties.cloud_formation.template_url #=> String
    #   resp.deployment_properties.start_timeout_minutes #=> Integer
    #   resp.deployment_properties.end_timeout_minutes #=> Integer
    #   resp.user_parameters #=> Array
    #   resp.user_parameters[0].key_name #=> String
    #   resp.user_parameters[0].description #=> String
    #   resp.user_parameters[0].field_type #=> String
    #   resp.user_parameters[0].default_value #=> String
    #   resp.user_parameters[0].is_editable #=> Boolean
    #   resp.user_parameters[0].is_optional #=> Boolean
    #   resp.user_parameters[0].is_update_supported #=> Boolean
    #   resp.glossary_terms #=> Array
    #   resp.glossary_terms[0] #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/CreateEnvironmentBlueprint AWS API Documentation
    #
    # @overload create_environment_blueprint(params = {})
    # @param [Hash] params ({})
    def create_environment_blueprint(params = {}, options = {})
      req = build_request(:create_environment_blueprint, params)
      req.send_request(options)
    end

    # Creates an Amazon DataZone environment profile.
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the Amazon DataZone domain in which this environment profile
    #   is created.
    #
    # @option params [required, String] :name
    #   The name of this Amazon DataZone environment profile.
    #
    # @option params [String] :description
    #   The description of this Amazon DataZone environment profile.
    #
    # @option params [required, String] :environment_blueprint_identifier
    #   The ID of the blueprint with which this environment profile is
    #   created.
    #
    # @option params [required, String] :project_identifier
    #   The identifier of the project in which to create the environment
    #   profile.
    #
    # @option params [Array<Types::EnvironmentParameter>] :user_parameters
    #   The user parameters of this Amazon DataZone environment profile.
    #
    # @option params [String] :aws_account_id
    #   The Amazon Web Services account in which the Amazon DataZone
    #   environment is created.
    #
    # @option params [String] :aws_account_region
    #   The Amazon Web Services region in which this environment profile is
    #   created.
    #
    # @return [Types::CreateEnvironmentProfileOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateEnvironmentProfileOutput#id #id} => String
    #   * {Types::CreateEnvironmentProfileOutput#domain_id #domain_id} => String
    #   * {Types::CreateEnvironmentProfileOutput#aws_account_id #aws_account_id} => String
    #   * {Types::CreateEnvironmentProfileOutput#aws_account_region #aws_account_region} => String
    #   * {Types::CreateEnvironmentProfileOutput#created_by #created_by} => String
    #   * {Types::CreateEnvironmentProfileOutput#created_at #created_at} => Time
    #   * {Types::CreateEnvironmentProfileOutput#updated_at #updated_at} => Time
    #   * {Types::CreateEnvironmentProfileOutput#name #name} => String
    #   * {Types::CreateEnvironmentProfileOutput#description #description} => String
    #   * {Types::CreateEnvironmentProfileOutput#environment_blueprint_id #environment_blueprint_id} => String
    #   * {Types::CreateEnvironmentProfileOutput#project_id #project_id} => String
    #   * {Types::CreateEnvironmentProfileOutput#user_parameters #user_parameters} => Array&lt;Types::CustomParameter&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_environment_profile({
    #     domain_identifier: "DomainId", # required
    #     name: "EnvironmentProfileName", # required
    #     description: "Description",
    #     environment_blueprint_identifier: "EnvironmentBlueprintId", # required
    #     project_identifier: "ProjectId", # required
    #     user_parameters: [
    #       {
    #         name: "String",
    #         value: "String",
    #       },
    #     ],
    #     aws_account_id: "AwsAccountId",
    #     aws_account_region: "AwsRegion",
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.domain_id #=> String
    #   resp.aws_account_id #=> String
    #   resp.aws_account_region #=> String
    #   resp.created_by #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.environment_blueprint_id #=> String
    #   resp.project_id #=> String
    #   resp.user_parameters #=> Array
    #   resp.user_parameters[0].key_name #=> String
    #   resp.user_parameters[0].description #=> String
    #   resp.user_parameters[0].field_type #=> String
    #   resp.user_parameters[0].default_value #=> String
    #   resp.user_parameters[0].is_editable #=> Boolean
    #   resp.user_parameters[0].is_optional #=> Boolean
    #   resp.user_parameters[0].is_update_supported #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/CreateEnvironmentProfile AWS API Documentation
    #
    # @overload create_environment_profile(params = {})
    # @param [Hash] params ({})
    def create_environment_profile(params = {}, options = {})
      req = build_request(:create_environment_profile, params)
      req.send_request(options)
    end

    # Creates a metadata form type.
    #
    # Prerequisites:
    #
    # * The domain must exist and be in an `ENABLED` state.
    #
    # * The owning project must exist and be accessible.
    #
    # * The name must be unique within the domain.
    #
    # For custom form types, to indicate that a field should be searchable,
    # annotate it with `@amazon.datazone#searchable`. By default, searchable
    # fields are indexed for semantic search, where related query terms will
    # match the attribute value even if they are not stemmed or keyword
    # matches. To indicate that a field should be indexed for lexical search
    # (which disables semantic search but supports stemmed and partial
    # matches), annotate it with
    # `@amazon.datazone#searchable(modes:["LEXICAL"])`. To indicate that a
    # field should be indexed for technical identifier search (for more
    # information on technical identifier search, see:
    # [https://aws.amazon.com/blogs/big-data/streamline-data-discovery-with-precise-technical-identifier-search-in-amazon-sagemaker-unified-studio/][1]),
    # annotate it with `@amazon.datazone#searchable(modes:["TECHNICAL"])`.
    #
    # To denote that a field will store glossary term ids (which are
    # filterable via the Search/SearchListings APIs), annotate it with
    # `@amazon.datazone#glossaryterm("${GLOSSARY_ID}")`, where
    # `${GLOSSARY_ID}` is the id of the glossary that the glossary terms
    # stored in the field belong to.
    #
    #
    #
    # [1]: https://aws.amazon.com/blogs/big-data/streamline-data-discovery-with-precise-technical-identifier-search-in-amazon-sagemaker-unified-studio/
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the Amazon DataZone domain in which this metadata form type
    #   is created.
    #
    # @option params [required, String] :name
    #   The name of this Amazon DataZone metadata form type.
    #
    # @option params [required, Types::Model] :model
    #   The model of this Amazon DataZone metadata form type.
    #
    # @option params [required, String] :owning_project_identifier
    #   The ID of the Amazon DataZone project that owns this metadata form
    #   type.
    #
    # @option params [String] :status
    #   The status of this Amazon DataZone metadata form type.
    #
    # @option params [String] :description
    #   The description of this Amazon DataZone metadata form type.
    #
    # @return [Types::CreateFormTypeOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateFormTypeOutput#domain_id #domain_id} => String
    #   * {Types::CreateFormTypeOutput#name #name} => String
    #   * {Types::CreateFormTypeOutput#revision #revision} => String
    #   * {Types::CreateFormTypeOutput#description #description} => String
    #   * {Types::CreateFormTypeOutput#owning_project_id #owning_project_id} => String
    #   * {Types::CreateFormTypeOutput#origin_domain_id #origin_domain_id} => String
    #   * {Types::CreateFormTypeOutput#origin_project_id #origin_project_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_form_type({
    #     domain_identifier: "DomainId", # required
    #     name: "FormTypeName", # required
    #     model: { # required
    #       smithy: "Smithy",
    #     },
    #     owning_project_identifier: "ProjectId", # required
    #     status: "ENABLED", # accepts ENABLED, DISABLED
    #     description: "Description",
    #   })
    #
    # @example Response structure
    #
    #   resp.domain_id #=> String
    #   resp.name #=> String
    #   resp.revision #=> String
    #   resp.description #=> String
    #   resp.owning_project_id #=> String
    #   resp.origin_domain_id #=> String
    #   resp.origin_project_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/CreateFormType AWS API Documentation
    #
    # @overload create_form_type(params = {})
    # @param [Hash] params ({})
    def create_form_type(params = {}, options = {})
      req = build_request(:create_form_type, params)
      req.send_request(options)
    end

    # Creates an Amazon DataZone business glossary.
    #
    # Specifies that this is a create glossary policy.
    #
    # A glossary serves as the central repository for business terminology
    # and definitions within an organization. It helps establish and
    # maintain a common language across different departments and teams,
    # reducing miscommunication and ensuring consistent interpretation of
    # business concepts. Glossaries can include hierarchical relationships
    # between terms, cross-references, and links to actual data assets,
    # making them invaluable for both business users and technical teams
    # trying to understand and use data correctly.
    #
    # Prerequisites:
    #
    # * Domain must exist and be in an active state.
    #
    # * Owning project must exist and be accessible by the caller.
    #
    # * The glossary name must be unique within the domain.
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the Amazon DataZone domain in which this business glossary
    #   is created.
    #
    # @option params [required, String] :name
    #   The name of this business glossary.
    #
    # @option params [required, String] :owning_project_identifier
    #   The ID of the project that currently owns business glossary.
    #
    # @option params [String] :description
    #   The description of this business glossary.
    #
    # @option params [String] :status
    #   The status of this business glossary.
    #
    # @option params [Array<String>] :usage_restrictions
    #   The usage restriction of the restricted glossary.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that is provided to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateGlossaryOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateGlossaryOutput#domain_id #domain_id} => String
    #   * {Types::CreateGlossaryOutput#id #id} => String
    #   * {Types::CreateGlossaryOutput#name #name} => String
    #   * {Types::CreateGlossaryOutput#owning_project_id #owning_project_id} => String
    #   * {Types::CreateGlossaryOutput#description #description} => String
    #   * {Types::CreateGlossaryOutput#status #status} => String
    #   * {Types::CreateGlossaryOutput#usage_restrictions #usage_restrictions} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_glossary({
    #     domain_identifier: "DomainId", # required
    #     name: "GlossaryName", # required
    #     owning_project_identifier: "ProjectId", # required
    #     description: "GlossaryDescription",
    #     status: "DISABLED", # accepts DISABLED, ENABLED
    #     usage_restrictions: ["ASSET_GOVERNED_TERMS"], # accepts ASSET_GOVERNED_TERMS
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.domain_id #=> String
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.owning_project_id #=> String
    #   resp.description #=> String
    #   resp.status #=> String, one of "DISABLED", "ENABLED"
    #   resp.usage_restrictions #=> Array
    #   resp.usage_restrictions[0] #=> String, one of "ASSET_GOVERNED_TERMS"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/CreateGlossary AWS API Documentation
    #
    # @overload create_glossary(params = {})
    # @param [Hash] params ({})
    def create_glossary(params = {}, options = {})
      req = build_request(:create_glossary, params)
      req.send_request(options)
    end

    # Creates a business glossary term.
    #
    # A glossary term represents an individual entry within the Amazon
    # DataZone glossary, serving as a standardized definition for a specific
    # business concept or data element. Each term can include rich metadata
    # such as detailed definitions, synonyms, related terms, and usage
    # examples. Glossary terms can be linked directly to data assets,
    # providing business context to technical data elements. This linking
    # capability helps users understand the business meaning of data fields
    # and ensures consistent interpretation across different systems and
    # teams. Terms can also have relationships with other terms, creating a
    # semantic network that reflects the complexity of business concepts.
    #
    # Prerequisites:
    #
    # * Domain must exist.
    #
    # * Glossary must exist.
    #
    # * The term name must be unique within the glossary.
    #
    # * Ensure term does not conflict with existing terms in hierarchy.
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the Amazon DataZone domain in which this business glossary
    #   term is created.
    #
    # @option params [required, String] :glossary_identifier
    #   The ID of the business glossary in which this term is created.
    #
    # @option params [required, String] :name
    #   The name of this business glossary term.
    #
    # @option params [String] :status
    #   The status of this business glossary term.
    #
    # @option params [String] :short_description
    #   The short description of this business glossary term.
    #
    # @option params [String] :long_description
    #   The long description of this business glossary term.
    #
    # @option params [Types::TermRelations] :term_relations
    #   The term relations of this business glossary term.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that is provided to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateGlossaryTermOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateGlossaryTermOutput#id #id} => String
    #   * {Types::CreateGlossaryTermOutput#domain_id #domain_id} => String
    #   * {Types::CreateGlossaryTermOutput#glossary_id #glossary_id} => String
    #   * {Types::CreateGlossaryTermOutput#name #name} => String
    #   * {Types::CreateGlossaryTermOutput#status #status} => String
    #   * {Types::CreateGlossaryTermOutput#short_description #short_description} => String
    #   * {Types::CreateGlossaryTermOutput#long_description #long_description} => String
    #   * {Types::CreateGlossaryTermOutput#term_relations #term_relations} => Types::TermRelations
    #   * {Types::CreateGlossaryTermOutput#usage_restrictions #usage_restrictions} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_glossary_term({
    #     domain_identifier: "DomainId", # required
    #     glossary_identifier: "GlossaryTermId", # required
    #     name: "GlossaryTermName", # required
    #     status: "ENABLED", # accepts ENABLED, DISABLED
    #     short_description: "ShortDescription",
    #     long_description: "LongDescription",
    #     term_relations: {
    #       is_a: ["GlossaryTermId"],
    #       classifies: ["GlossaryTermId"],
    #     },
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.domain_id #=> String
    #   resp.glossary_id #=> String
    #   resp.name #=> String
    #   resp.status #=> String, one of "ENABLED", "DISABLED"
    #   resp.short_description #=> String
    #   resp.long_description #=> String
    #   resp.term_relations.is_a #=> Array
    #   resp.term_relations.is_a[0] #=> String
    #   resp.term_relations.classifies #=> Array
    #   resp.term_relations.classifies[0] #=> String
    #   resp.usage_restrictions #=> Array
    #   resp.usage_restrictions[0] #=> String, one of "ASSET_GOVERNED_TERMS"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/CreateGlossaryTerm AWS API Documentation
    #
    # @overload create_glossary_term(params = {})
    # @param [Hash] params ({})
    def create_glossary_term(params = {}, options = {})
      req = build_request(:create_glossary_term, params)
      req.send_request(options)
    end

    # Creates a group profile in Amazon DataZone.
    #
    # @option params [required, String] :domain_identifier
    #   The identifier of the Amazon DataZone domain in which the group
    #   profile is created.
    #
    # @option params [String] :group_identifier
    #   The identifier of the group for which the group profile is created.
    #
    # @option params [String] :role_principal_arn
    #   The ARN of the IAM role that will be associated with the group
    #   profile. This role defines the permissions that group members will
    #   assume when accessing Amazon DataZone resources.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that is provided to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateGroupProfileOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateGroupProfileOutput#domain_id #domain_id} => String
    #   * {Types::CreateGroupProfileOutput#id #id} => String
    #   * {Types::CreateGroupProfileOutput#status #status} => String
    #   * {Types::CreateGroupProfileOutput#group_name #group_name} => String
    #   * {Types::CreateGroupProfileOutput#role_principal_arn #role_principal_arn} => String
    #   * {Types::CreateGroupProfileOutput#role_principal_id #role_principal_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_group_profile({
    #     domain_identifier: "DomainId", # required
    #     group_identifier: "GroupIdentifier",
    #     role_principal_arn: "String",
    #     client_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.domain_id #=> String
    #   resp.id #=> String
    #   resp.status #=> String, one of "ASSIGNED", "NOT_ASSIGNED"
    #   resp.group_name #=> String
    #   resp.role_principal_arn #=> String
    #   resp.role_principal_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/CreateGroupProfile AWS API Documentation
    #
    # @overload create_group_profile(params = {})
    # @param [Hash] params ({})
    def create_group_profile(params = {}, options = {})
      req = build_request(:create_group_profile, params)
      req.send_request(options)
    end

    # Publishes a listing (a record of an asset at a given time) or removes
    # a listing from the catalog.
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the Amazon DataZone domain.
    #
    # @option params [required, String] :entity_identifier
    #   The ID of the asset.
    #
    # @option params [required, String] :entity_type
    #   The type of an entity.
    #
    # @option params [String] :entity_revision
    #   The revision of an asset.
    #
    # @option params [required, String] :action
    #   Specifies whether to publish or unpublish a listing.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that is provided to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateListingChangeSetOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateListingChangeSetOutput#listing_id #listing_id} => String
    #   * {Types::CreateListingChangeSetOutput#listing_revision #listing_revision} => String
    #   * {Types::CreateListingChangeSetOutput#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_listing_change_set({
    #     domain_identifier: "DomainId", # required
    #     entity_identifier: "EntityIdentifier", # required
    #     entity_type: "ASSET", # required, accepts ASSET, DATA_PRODUCT
    #     entity_revision: "Revision",
    #     action: "PUBLISH", # required, accepts PUBLISH, UNPUBLISH
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.listing_id #=> String
    #   resp.listing_revision #=> String
    #   resp.status #=> String, one of "CREATING", "ACTIVE", "INACTIVE"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/CreateListingChangeSet AWS API Documentation
    #
    # @overload create_listing_change_set(params = {})
    # @param [Hash] params ({})
    def create_listing_change_set(params = {}, options = {})
      req = build_request(:create_listing_change_set, params)
      req.send_request(options)
    end

    # Creates an Amazon DataZone project.
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the Amazon DataZone domain in which this project is created.
    #
    # @option params [required, String] :name
    #   The name of the Amazon DataZone project.
    #
    # @option params [String] :description
    #   The description of the Amazon DataZone project.
    #
    # @option params [Hash<String,String>] :resource_tags
    #   The resource tags of the project.
    #
    # @option params [Array<String>] :glossary_terms
    #   The glossary terms that can be used in this Amazon DataZone project.
    #
    # @option params [String] :domain_unit_id
    #   The ID of the domain unit. This parameter is not required and if it is
    #   not specified, then the project is created at the root domain unit
    #   level.
    #
    # @option params [String] :project_profile_id
    #   The ID of the project profile.
    #
    # @option params [Array<Types::EnvironmentConfigurationUserParameter>] :user_parameters
    #   The user parameters of the project.
    #
    # @option params [String] :project_category
    #   The category of the project. Set to 'ADMIN' designates this as an
    #   administrative project for the Amazon DataZone domain.
    #
    # @option params [String] :project_execution_role
    #   The default project IAM role that is used to access project resources
    #   and run computes such as Glue and Sagemaker.
    #
    # @option params [Array<Types::ProjectMembershipAssignment>] :membership_assignments
    #   The members to be assigned to the project.
    #
    # @return [Types::CreateProjectOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateProjectOutput#domain_id #domain_id} => String
    #   * {Types::CreateProjectOutput#id #id} => String
    #   * {Types::CreateProjectOutput#name #name} => String
    #   * {Types::CreateProjectOutput#description #description} => String
    #   * {Types::CreateProjectOutput#project_status #project_status} => String
    #   * {Types::CreateProjectOutput#failure_reasons #failure_reasons} => Array&lt;Types::ProjectDeletionError&gt;
    #   * {Types::CreateProjectOutput#created_by #created_by} => String
    #   * {Types::CreateProjectOutput#created_at #created_at} => Time
    #   * {Types::CreateProjectOutput#last_updated_at #last_updated_at} => Time
    #   * {Types::CreateProjectOutput#resource_tags #resource_tags} => Array&lt;Types::ResourceTag&gt;
    #   * {Types::CreateProjectOutput#glossary_terms #glossary_terms} => Array&lt;String&gt;
    #   * {Types::CreateProjectOutput#domain_unit_id #domain_unit_id} => String
    #   * {Types::CreateProjectOutput#project_profile_id #project_profile_id} => String
    #   * {Types::CreateProjectOutput#user_parameters #user_parameters} => Array&lt;Types::EnvironmentConfigurationUserParameter&gt;
    #   * {Types::CreateProjectOutput#environment_deployment_details #environment_deployment_details} => Types::EnvironmentDeploymentDetails
    #   * {Types::CreateProjectOutput#project_category #project_category} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_project({
    #     domain_identifier: "DomainId", # required
    #     name: "ProjectName", # required
    #     description: "Description",
    #     resource_tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     glossary_terms: ["GlossaryTermId"],
    #     domain_unit_id: "DomainUnitId",
    #     project_profile_id: "ProjectProfileId",
    #     user_parameters: [
    #       {
    #         environment_id: "EnvironmentId",
    #         environment_resolved_account: {
    #           aws_account_id: "AwsAccountId", # required
    #           region_name: "AwsRegion", # required
    #           source_account_pool_id: "AccountPoolId",
    #         },
    #         environment_configuration_name: "EnvironmentConfigurationName",
    #         environment_parameters: [
    #           {
    #             name: "String",
    #             value: "String",
    #           },
    #         ],
    #       },
    #     ],
    #     project_category: "String",
    #     project_execution_role: "RoleArn",
    #     membership_assignments: [
    #       {
    #         member: { # required
    #           user_identifier: "String",
    #           group_identifier: "String",
    #         },
    #         designation: "PROJECT_OWNER", # required, accepts PROJECT_OWNER, PROJECT_CONTRIBUTOR, PROJECT_CATALOG_VIEWER, PROJECT_CATALOG_CONSUMER, PROJECT_CATALOG_STEWARD
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.domain_id #=> String
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.project_status #=> String, one of "ACTIVE", "DELETING", "DELETE_FAILED", "UPDATING", "UPDATE_FAILED", "MOVING"
    #   resp.failure_reasons #=> Array
    #   resp.failure_reasons[0].code #=> String
    #   resp.failure_reasons[0].message #=> String
    #   resp.created_by #=> String
    #   resp.created_at #=> Time
    #   resp.last_updated_at #=> Time
    #   resp.resource_tags #=> Array
    #   resp.resource_tags[0].key #=> String
    #   resp.resource_tags[0].value #=> String
    #   resp.resource_tags[0].source #=> String, one of "PROJECT", "PROJECT_PROFILE"
    #   resp.glossary_terms #=> Array
    #   resp.glossary_terms[0] #=> String
    #   resp.domain_unit_id #=> String
    #   resp.project_profile_id #=> String
    #   resp.user_parameters #=> Array
    #   resp.user_parameters[0].environment_id #=> String
    #   resp.user_parameters[0].environment_resolved_account.aws_account_id #=> String
    #   resp.user_parameters[0].environment_resolved_account.region_name #=> String
    #   resp.user_parameters[0].environment_resolved_account.source_account_pool_id #=> String
    #   resp.user_parameters[0].environment_configuration_name #=> String
    #   resp.user_parameters[0].environment_parameters #=> Array
    #   resp.user_parameters[0].environment_parameters[0].name #=> String
    #   resp.user_parameters[0].environment_parameters[0].value #=> String
    #   resp.environment_deployment_details.overall_deployment_status #=> String, one of "PENDING_DEPLOYMENT", "IN_PROGRESS", "SUCCESSFUL", "FAILED_VALIDATION", "FAILED_DEPLOYMENT"
    #   resp.environment_deployment_details.environment_failure_reasons #=> Hash
    #   resp.environment_deployment_details.environment_failure_reasons["String"] #=> Array
    #   resp.environment_deployment_details.environment_failure_reasons["String"][0].code #=> String
    #   resp.environment_deployment_details.environment_failure_reasons["String"][0].message #=> String
    #   resp.project_category #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/CreateProject AWS API Documentation
    #
    # @overload create_project(params = {})
    # @param [Hash] params ({})
    def create_project(params = {}, options = {})
      req = build_request(:create_project, params)
      req.send_request(options)
    end

    # Creates a project membership in Amazon DataZone.
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the Amazon DataZone domain in which project membership is
    #   created.
    #
    # @option params [required, String] :project_identifier
    #   The ID of the project for which this project membership was created.
    #
    # @option params [required, Types::Member] :member
    #   The project member whose project membership was created.
    #
    # @option params [required, String] :designation
    #   The designation of the project membership.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_project_membership({
    #     domain_identifier: "DomainId", # required
    #     project_identifier: "ProjectId", # required
    #     member: { # required
    #       user_identifier: "String",
    #       group_identifier: "String",
    #     },
    #     designation: "PROJECT_OWNER", # required, accepts PROJECT_OWNER, PROJECT_CONTRIBUTOR, PROJECT_CATALOG_VIEWER, PROJECT_CATALOG_CONSUMER, PROJECT_CATALOG_STEWARD
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/CreateProjectMembership AWS API Documentation
    #
    # @overload create_project_membership(params = {})
    # @param [Hash] params ({})
    def create_project_membership(params = {}, options = {})
      req = build_request(:create_project_membership, params)
      req.send_request(options)
    end

    # Creates a project profile.
    #
    # @option params [required, String] :domain_identifier
    #   A domain ID of the project profile.
    #
    # @option params [required, String] :name
    #   Project profile name.
    #
    # @option params [String] :description
    #   A description of a project profile.
    #
    # @option params [String] :status
    #   Project profile status.
    #
    # @option params [Array<Types::ResourceTagParameter>] :project_resource_tags
    #   The resource tags of the project profile.
    #
    # @option params [Boolean] :allow_custom_project_resource_tags
    #   Specifies whether custom project resource tags are supported.
    #
    # @option params [String] :project_resource_tags_description
    #   Field viewable through the UI that provides a project user with the
    #   allowed resource tag specifications.
    #
    # @option params [Array<Types::EnvironmentConfiguration>] :environment_configurations
    #   Environment configurations of the project profile.
    #
    # @option params [String] :domain_unit_identifier
    #   A domain unit ID of the project profile.
    #
    # @return [Types::CreateProjectProfileOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateProjectProfileOutput#domain_id #domain_id} => String
    #   * {Types::CreateProjectProfileOutput#id #id} => String
    #   * {Types::CreateProjectProfileOutput#name #name} => String
    #   * {Types::CreateProjectProfileOutput#description #description} => String
    #   * {Types::CreateProjectProfileOutput#status #status} => String
    #   * {Types::CreateProjectProfileOutput#project_resource_tags #project_resource_tags} => Array&lt;Types::ResourceTagParameter&gt;
    #   * {Types::CreateProjectProfileOutput#allow_custom_project_resource_tags #allow_custom_project_resource_tags} => Boolean
    #   * {Types::CreateProjectProfileOutput#project_resource_tags_description #project_resource_tags_description} => String
    #   * {Types::CreateProjectProfileOutput#environment_configurations #environment_configurations} => Array&lt;Types::EnvironmentConfiguration&gt;
    #   * {Types::CreateProjectProfileOutput#created_by #created_by} => String
    #   * {Types::CreateProjectProfileOutput#created_at #created_at} => Time
    #   * {Types::CreateProjectProfileOutput#last_updated_at #last_updated_at} => Time
    #   * {Types::CreateProjectProfileOutput#domain_unit_id #domain_unit_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_project_profile({
    #     domain_identifier: "DomainId", # required
    #     name: "ProjectProfileName", # required
    #     description: "Description",
    #     status: "ENABLED", # accepts ENABLED, DISABLED
    #     project_resource_tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #         is_value_editable: false, # required
    #       },
    #     ],
    #     allow_custom_project_resource_tags: false,
    #     project_resource_tags_description: "Description",
    #     environment_configurations: [
    #       {
    #         name: "EnvironmentConfigurationName", # required
    #         id: "EnvironmentConfigurationId",
    #         environment_blueprint_id: "EnvironmentBlueprintId", # required
    #         description: "Description",
    #         deployment_mode: "ON_CREATE", # accepts ON_CREATE, ON_DEMAND
    #         configuration_parameters: {
    #           ssm_path: "ParameterStorePath",
    #           parameter_overrides: [
    #             {
    #               name: "EnvironmentConfigurationParameterName",
    #               value: "String",
    #               is_editable: false,
    #             },
    #           ],
    #           resolved_parameters: [
    #             {
    #               name: "EnvironmentConfigurationParameterName",
    #               value: "String",
    #               is_editable: false,
    #             },
    #           ],
    #         },
    #         aws_account: {
    #           aws_account_id: "AwsAccountId",
    #           aws_account_id_path: "ParameterStorePath",
    #         },
    #         account_pools: ["AccountPoolId"],
    #         aws_region: {
    #           region_name: "RegionName",
    #           region_name_path: "ParameterStorePath",
    #         },
    #         deployment_order: 1,
    #       },
    #     ],
    #     domain_unit_identifier: "DomainUnitId",
    #   })
    #
    # @example Response structure
    #
    #   resp.domain_id #=> String
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.status #=> String, one of "ENABLED", "DISABLED"
    #   resp.project_resource_tags #=> Array
    #   resp.project_resource_tags[0].key #=> String
    #   resp.project_resource_tags[0].value #=> String
    #   resp.project_resource_tags[0].is_value_editable #=> Boolean
    #   resp.allow_custom_project_resource_tags #=> Boolean
    #   resp.project_resource_tags_description #=> String
    #   resp.environment_configurations #=> Array
    #   resp.environment_configurations[0].name #=> String
    #   resp.environment_configurations[0].id #=> String
    #   resp.environment_configurations[0].environment_blueprint_id #=> String
    #   resp.environment_configurations[0].description #=> String
    #   resp.environment_configurations[0].deployment_mode #=> String, one of "ON_CREATE", "ON_DEMAND"
    #   resp.environment_configurations[0].configuration_parameters.ssm_path #=> String
    #   resp.environment_configurations[0].configuration_parameters.parameter_overrides #=> Array
    #   resp.environment_configurations[0].configuration_parameters.parameter_overrides[0].name #=> String
    #   resp.environment_configurations[0].configuration_parameters.parameter_overrides[0].value #=> String
    #   resp.environment_configurations[0].configuration_parameters.parameter_overrides[0].is_editable #=> Boolean
    #   resp.environment_configurations[0].configuration_parameters.resolved_parameters #=> Array
    #   resp.environment_configurations[0].configuration_parameters.resolved_parameters[0].name #=> String
    #   resp.environment_configurations[0].configuration_parameters.resolved_parameters[0].value #=> String
    #   resp.environment_configurations[0].configuration_parameters.resolved_parameters[0].is_editable #=> Boolean
    #   resp.environment_configurations[0].aws_account.aws_account_id #=> String
    #   resp.environment_configurations[0].aws_account.aws_account_id_path #=> String
    #   resp.environment_configurations[0].account_pools #=> Array
    #   resp.environment_configurations[0].account_pools[0] #=> String
    #   resp.environment_configurations[0].aws_region.region_name #=> String
    #   resp.environment_configurations[0].aws_region.region_name_path #=> String
    #   resp.environment_configurations[0].deployment_order #=> Integer
    #   resp.created_by #=> String
    #   resp.created_at #=> Time
    #   resp.last_updated_at #=> Time
    #   resp.domain_unit_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/CreateProjectProfile AWS API Documentation
    #
    # @overload create_project_profile(params = {})
    # @param [Hash] params ({})
    def create_project_profile(params = {}, options = {})
      req = build_request(:create_project_profile, params)
      req.send_request(options)
    end

    # Creates a rule in Amazon DataZone. A rule is a formal agreement that
    # enforces specific requirements across user workflows (e.g., publishing
    # assets to the catalog, requesting subscriptions, creating projects)
    # within the Amazon DataZone data portal. These rules help maintain
    # consistency, ensure compliance, and uphold governance standards in
    # data management processes. For instance, a metadata enforcement rule
    # can specify the required information for creating a subscription
    # request or publishing a data asset to the catalog, ensuring alignment
    # with organizational standards.
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the domain where the rule is created.
    #
    # @option params [required, String] :name
    #   The name of the rule.
    #
    # @option params [required, Types::RuleTarget] :target
    #   The target of the rule.
    #
    # @option params [required, String] :action
    #   The action of the rule.
    #
    # @option params [required, Types::RuleScope] :scope
    #   The scope of the rule.
    #
    # @option params [required, Types::RuleDetail] :detail
    #   The detail of the rule.
    #
    # @option params [String] :description
    #   The description of the rule.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that is provided to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateRuleOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateRuleOutput#identifier #identifier} => String
    #   * {Types::CreateRuleOutput#name #name} => String
    #   * {Types::CreateRuleOutput#rule_type #rule_type} => String
    #   * {Types::CreateRuleOutput#target #target} => Types::RuleTarget
    #   * {Types::CreateRuleOutput#action #action} => String
    #   * {Types::CreateRuleOutput#scope #scope} => Types::RuleScope
    #   * {Types::CreateRuleOutput#detail #detail} => Types::RuleDetail
    #   * {Types::CreateRuleOutput#target_type #target_type} => String
    #   * {Types::CreateRuleOutput#description #description} => String
    #   * {Types::CreateRuleOutput#created_at #created_at} => Time
    #   * {Types::CreateRuleOutput#created_by #created_by} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_rule({
    #     domain_identifier: "DomainId", # required
    #     name: "RuleName", # required
    #     target: { # required
    #       domain_unit_target: {
    #         domain_unit_id: "DomainUnitId", # required
    #         include_child_domain_units: false,
    #       },
    #     },
    #     action: "CREATE_LISTING_CHANGE_SET", # required, accepts CREATE_LISTING_CHANGE_SET, CREATE_SUBSCRIPTION_REQUEST
    #     scope: { # required
    #       asset_type: {
    #         selection_mode: "ALL", # required, accepts ALL, SPECIFIC
    #         specific_asset_types: ["AssetTypeIdentifier"],
    #       },
    #       data_product: false,
    #       project: {
    #         selection_mode: "ALL", # required, accepts ALL, SPECIFIC
    #         specific_projects: ["ProjectId"],
    #       },
    #     },
    #     detail: { # required
    #       metadata_form_enforcement_detail: {
    #         required_metadata_forms: [
    #           {
    #             type_identifier: "FormTypeIdentifier", # required
    #             type_revision: "Revision", # required
    #           },
    #         ],
    #       },
    #       glossary_term_enforcement_detail: {
    #         required_glossary_term_ids: ["GlossaryTermId"],
    #       },
    #     },
    #     description: "Description",
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.identifier #=> String
    #   resp.name #=> String
    #   resp.rule_type #=> String, one of "METADATA_FORM_ENFORCEMENT", "GLOSSARY_TERM_ENFORCEMENT"
    #   resp.target.domain_unit_target.domain_unit_id #=> String
    #   resp.target.domain_unit_target.include_child_domain_units #=> Boolean
    #   resp.action #=> String, one of "CREATE_LISTING_CHANGE_SET", "CREATE_SUBSCRIPTION_REQUEST"
    #   resp.scope.asset_type.selection_mode #=> String, one of "ALL", "SPECIFIC"
    #   resp.scope.asset_type.specific_asset_types #=> Array
    #   resp.scope.asset_type.specific_asset_types[0] #=> String
    #   resp.scope.data_product #=> Boolean
    #   resp.scope.project.selection_mode #=> String, one of "ALL", "SPECIFIC"
    #   resp.scope.project.specific_projects #=> Array
    #   resp.scope.project.specific_projects[0] #=> String
    #   resp.detail.metadata_form_enforcement_detail.required_metadata_forms #=> Array
    #   resp.detail.metadata_form_enforcement_detail.required_metadata_forms[0].type_identifier #=> String
    #   resp.detail.metadata_form_enforcement_detail.required_metadata_forms[0].type_revision #=> String
    #   resp.detail.glossary_term_enforcement_detail.required_glossary_term_ids #=> Array
    #   resp.detail.glossary_term_enforcement_detail.required_glossary_term_ids[0] #=> String
    #   resp.target_type #=> String, one of "DOMAIN_UNIT"
    #   resp.description #=> String
    #   resp.created_at #=> Time
    #   resp.created_by #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/CreateRule AWS API Documentation
    #
    # @overload create_rule(params = {})
    # @param [Hash] params ({})
    def create_rule(params = {}, options = {})
      req = build_request(:create_rule, params)
      req.send_request(options)
    end

    # Creates a subsscription grant in Amazon DataZone.
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the Amazon DataZone domain in which the subscription grant
    #   is created.
    #
    # @option params [required, String] :environment_identifier
    #   The ID of the environment in which the subscription grant is created.
    #
    # @option params [String] :subscription_target_identifier
    #   The ID of the subscription target for which the subscription grant is
    #   created.
    #
    # @option params [required, Types::GrantedEntityInput] :granted_entity
    #   The entity to which the subscription is to be granted.
    #
    # @option params [Array<Types::AssetTargetNameMap>] :asset_target_names
    #   The names of the assets for which the subscription grant is created.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that is provided to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateSubscriptionGrantOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateSubscriptionGrantOutput#id #id} => String
    #   * {Types::CreateSubscriptionGrantOutput#created_by #created_by} => String
    #   * {Types::CreateSubscriptionGrantOutput#updated_by #updated_by} => String
    #   * {Types::CreateSubscriptionGrantOutput#domain_id #domain_id} => String
    #   * {Types::CreateSubscriptionGrantOutput#created_at #created_at} => Time
    #   * {Types::CreateSubscriptionGrantOutput#updated_at #updated_at} => Time
    #   * {Types::CreateSubscriptionGrantOutput#environment_id #environment_id} => String
    #   * {Types::CreateSubscriptionGrantOutput#subscription_target_id #subscription_target_id} => String
    #   * {Types::CreateSubscriptionGrantOutput#granted_entity #granted_entity} => Types::GrantedEntity
    #   * {Types::CreateSubscriptionGrantOutput#status #status} => String
    #   * {Types::CreateSubscriptionGrantOutput#assets #assets} => Array&lt;Types::SubscribedAsset&gt;
    #   * {Types::CreateSubscriptionGrantOutput#subscription_id #subscription_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_subscription_grant({
    #     domain_identifier: "DomainId", # required
    #     environment_identifier: "EnvironmentId", # required
    #     subscription_target_identifier: "SubscriptionTargetId",
    #     granted_entity: { # required
    #       listing: {
    #         identifier: "ListingId", # required
    #         revision: "Revision", # required
    #       },
    #     },
    #     asset_target_names: [
    #       {
    #         asset_id: "AssetId", # required
    #         target_name: "String", # required
    #       },
    #     ],
    #     client_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.created_by #=> String
    #   resp.updated_by #=> String
    #   resp.domain_id #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.environment_id #=> String
    #   resp.subscription_target_id #=> String
    #   resp.granted_entity.listing.id #=> String
    #   resp.granted_entity.listing.revision #=> String
    #   resp.status #=> String, one of "PENDING", "IN_PROGRESS", "GRANT_FAILED", "REVOKE_FAILED", "GRANT_AND_REVOKE_FAILED", "COMPLETED", "INACCESSIBLE"
    #   resp.assets #=> Array
    #   resp.assets[0].asset_id #=> String
    #   resp.assets[0].asset_revision #=> String
    #   resp.assets[0].status #=> String, one of "GRANT_PENDING", "REVOKE_PENDING", "GRANT_IN_PROGRESS", "REVOKE_IN_PROGRESS", "GRANTED", "REVOKED", "GRANT_FAILED", "REVOKE_FAILED"
    #   resp.assets[0].target_name #=> String
    #   resp.assets[0].failure_cause.message #=> String
    #   resp.assets[0].granted_timestamp #=> Time
    #   resp.assets[0].failure_timestamp #=> Time
    #   resp.assets[0].asset_scope.asset_id #=> String
    #   resp.assets[0].asset_scope.filter_ids #=> Array
    #   resp.assets[0].asset_scope.filter_ids[0] #=> String
    #   resp.assets[0].asset_scope.status #=> String
    #   resp.assets[0].asset_scope.error_message #=> String
    #   resp.assets[0].permissions.s3 #=> Array
    #   resp.assets[0].permissions.s3[0] #=> String, one of "READ", "WRITE"
    #   resp.subscription_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/CreateSubscriptionGrant AWS API Documentation
    #
    # @overload create_subscription_grant(params = {})
    # @param [Hash] params ({})
    def create_subscription_grant(params = {}, options = {})
      req = build_request(:create_subscription_grant, params)
      req.send_request(options)
    end

    # Creates a subscription request in Amazon DataZone.
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the Amazon DataZone domain in which the subscription request
    #   is created.
    #
    # @option params [required, Array<Types::SubscribedPrincipalInput>] :subscribed_principals
    #   The Amazon DataZone principals for whom the subscription request is
    #   created.
    #
    # @option params [required, Array<Types::SubscribedListingInput>] :subscribed_listings
    #   The published asset for which the subscription grant is to be created.
    #
    # @option params [required, String] :request_reason
    #   The reason for the subscription request.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that is provided to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Array<Types::FormInput>] :metadata_forms
    #   The metadata form included in the subscription request.
    #
    # @option params [Array<Types::AssetPermission>] :asset_permissions
    #   The asset permissions of the subscription request.
    #
    # @option params [Array<Types::AcceptedAssetScope>] :asset_scopes
    #   The asset scopes of the subscription request.
    #
    # @return [Types::CreateSubscriptionRequestOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateSubscriptionRequestOutput#id #id} => String
    #   * {Types::CreateSubscriptionRequestOutput#created_by #created_by} => String
    #   * {Types::CreateSubscriptionRequestOutput#updated_by #updated_by} => String
    #   * {Types::CreateSubscriptionRequestOutput#domain_id #domain_id} => String
    #   * {Types::CreateSubscriptionRequestOutput#status #status} => String
    #   * {Types::CreateSubscriptionRequestOutput#created_at #created_at} => Time
    #   * {Types::CreateSubscriptionRequestOutput#updated_at #updated_at} => Time
    #   * {Types::CreateSubscriptionRequestOutput#request_reason #request_reason} => String
    #   * {Types::CreateSubscriptionRequestOutput#subscribed_principals #subscribed_principals} => Array&lt;Types::SubscribedPrincipal&gt;
    #   * {Types::CreateSubscriptionRequestOutput#subscribed_listings #subscribed_listings} => Array&lt;Types::SubscribedListing&gt;
    #   * {Types::CreateSubscriptionRequestOutput#reviewer_id #reviewer_id} => String
    #   * {Types::CreateSubscriptionRequestOutput#decision_comment #decision_comment} => String
    #   * {Types::CreateSubscriptionRequestOutput#existing_subscription_id #existing_subscription_id} => String
    #   * {Types::CreateSubscriptionRequestOutput#metadata_forms #metadata_forms} => Array&lt;Types::FormOutput&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_subscription_request({
    #     domain_identifier: "DomainId", # required
    #     subscribed_principals: [ # required
    #       {
    #         project: {
    #           identifier: "ProjectId",
    #         },
    #         user: {
    #           identifier: "UserProfileId",
    #         },
    #         group: {
    #           identifier: "GroupProfileId",
    #         },
    #         iam: {
    #           identifier: "IamPrincipalArn",
    #         },
    #       },
    #     ],
    #     subscribed_listings: [ # required
    #       {
    #         identifier: "ListingId", # required
    #       },
    #     ],
    #     request_reason: "RequestReason", # required
    #     client_token: "String",
    #     metadata_forms: [
    #       {
    #         form_name: "FormName", # required
    #         type_identifier: "FormTypeIdentifier",
    #         type_revision: "RevisionInput",
    #         content: "FormInputContentString",
    #       },
    #     ],
    #     asset_permissions: [
    #       {
    #         asset_id: "AssetId", # required
    #         permissions: { # required
    #           s3: ["READ"], # accepts READ, WRITE
    #         },
    #       },
    #     ],
    #     asset_scopes: [
    #       {
    #         asset_id: "AssetId", # required
    #         filter_ids: ["FilterId"], # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.created_by #=> String
    #   resp.updated_by #=> String
    #   resp.domain_id #=> String
    #   resp.status #=> String, one of "PENDING", "ACCEPTED", "REJECTED"
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.request_reason #=> String
    #   resp.subscribed_principals #=> Array
    #   resp.subscribed_principals[0].project.id #=> String
    #   resp.subscribed_principals[0].project.name #=> String
    #   resp.subscribed_principals[0].user.id #=> String
    #   resp.subscribed_principals[0].user.details.iam.arn #=> String
    #   resp.subscribed_principals[0].user.details.iam.principal_id #=> String
    #   resp.subscribed_principals[0].user.details.iam.session_name #=> String
    #   resp.subscribed_principals[0].user.details.iam.group_profile_id #=> String
    #   resp.subscribed_principals[0].user.details.sso.username #=> String
    #   resp.subscribed_principals[0].user.details.sso.first_name #=> String
    #   resp.subscribed_principals[0].user.details.sso.last_name #=> String
    #   resp.subscribed_principals[0].group.id #=> String
    #   resp.subscribed_principals[0].group.name #=> String
    #   resp.subscribed_principals[0].iam.principal_arn #=> String
    #   resp.subscribed_listings #=> Array
    #   resp.subscribed_listings[0].id #=> String
    #   resp.subscribed_listings[0].revision #=> String
    #   resp.subscribed_listings[0].name #=> String
    #   resp.subscribed_listings[0].description #=> String
    #   resp.subscribed_listings[0].item.asset_listing.entity_id #=> String
    #   resp.subscribed_listings[0].item.asset_listing.entity_revision #=> String
    #   resp.subscribed_listings[0].item.asset_listing.entity_type #=> String
    #   resp.subscribed_listings[0].item.asset_listing.forms #=> String
    #   resp.subscribed_listings[0].item.asset_listing.glossary_terms #=> Array
    #   resp.subscribed_listings[0].item.asset_listing.glossary_terms[0].name #=> String
    #   resp.subscribed_listings[0].item.asset_listing.glossary_terms[0].short_description #=> String
    #   resp.subscribed_listings[0].item.asset_listing.asset_scope.asset_id #=> String
    #   resp.subscribed_listings[0].item.asset_listing.asset_scope.filter_ids #=> Array
    #   resp.subscribed_listings[0].item.asset_listing.asset_scope.filter_ids[0] #=> String
    #   resp.subscribed_listings[0].item.asset_listing.asset_scope.status #=> String
    #   resp.subscribed_listings[0].item.asset_listing.asset_scope.error_message #=> String
    #   resp.subscribed_listings[0].item.asset_listing.permissions.s3 #=> Array
    #   resp.subscribed_listings[0].item.asset_listing.permissions.s3[0] #=> String, one of "READ", "WRITE"
    #   resp.subscribed_listings[0].item.product_listing.entity_id #=> String
    #   resp.subscribed_listings[0].item.product_listing.entity_revision #=> String
    #   resp.subscribed_listings[0].item.product_listing.glossary_terms #=> Array
    #   resp.subscribed_listings[0].item.product_listing.glossary_terms[0].name #=> String
    #   resp.subscribed_listings[0].item.product_listing.glossary_terms[0].short_description #=> String
    #   resp.subscribed_listings[0].item.product_listing.name #=> String
    #   resp.subscribed_listings[0].item.product_listing.description #=> String
    #   resp.subscribed_listings[0].item.product_listing.asset_listings #=> Array
    #   resp.subscribed_listings[0].item.product_listing.asset_listings[0].entity_id #=> String
    #   resp.subscribed_listings[0].item.product_listing.asset_listings[0].entity_revision #=> String
    #   resp.subscribed_listings[0].item.product_listing.asset_listings[0].entity_type #=> String
    #   resp.subscribed_listings[0].owner_project_id #=> String
    #   resp.subscribed_listings[0].owner_project_name #=> String
    #   resp.reviewer_id #=> String
    #   resp.decision_comment #=> String
    #   resp.existing_subscription_id #=> String
    #   resp.metadata_forms #=> Array
    #   resp.metadata_forms[0].form_name #=> String
    #   resp.metadata_forms[0].type_name #=> String
    #   resp.metadata_forms[0].type_revision #=> String
    #   resp.metadata_forms[0].content #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/CreateSubscriptionRequest AWS API Documentation
    #
    # @overload create_subscription_request(params = {})
    # @param [Hash] params ({})
    def create_subscription_request(params = {}, options = {})
      req = build_request(:create_subscription_request, params)
      req.send_request(options)
    end

    # Creates a subscription target in Amazon DataZone.
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the Amazon DataZone domain in which subscription target is
    #   created.
    #
    # @option params [required, String] :environment_identifier
    #   The ID of the environment in which subscription target is created.
    #
    # @option params [required, String] :name
    #   The name of the subscription target.
    #
    # @option params [required, String] :type
    #   The type of the subscription target.
    #
    # @option params [required, Array<Types::SubscriptionTargetForm>] :subscription_target_config
    #   The configuration of the subscription target.
    #
    # @option params [required, Array<String>] :authorized_principals
    #   The authorized principals of the subscription target.
    #
    # @option params [required, String] :manage_access_role
    #   The manage access role that is used to create the subscription target.
    #
    # @option params [required, Array<String>] :applicable_asset_types
    #   The asset types that can be included in the subscription target.
    #
    # @option params [String] :provider
    #   The provider of the subscription target.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that is provided to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :subscription_grant_creation_mode
    #   Determines the subscription grant creation mode for this target,
    #   defining if grants are auto-created upon subscription approval or
    #   managed manually.
    #
    # @return [Types::CreateSubscriptionTargetOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateSubscriptionTargetOutput#id #id} => String
    #   * {Types::CreateSubscriptionTargetOutput#authorized_principals #authorized_principals} => Array&lt;String&gt;
    #   * {Types::CreateSubscriptionTargetOutput#domain_id #domain_id} => String
    #   * {Types::CreateSubscriptionTargetOutput#project_id #project_id} => String
    #   * {Types::CreateSubscriptionTargetOutput#environment_id #environment_id} => String
    #   * {Types::CreateSubscriptionTargetOutput#name #name} => String
    #   * {Types::CreateSubscriptionTargetOutput#type #type} => String
    #   * {Types::CreateSubscriptionTargetOutput#created_by #created_by} => String
    #   * {Types::CreateSubscriptionTargetOutput#updated_by #updated_by} => String
    #   * {Types::CreateSubscriptionTargetOutput#created_at #created_at} => Time
    #   * {Types::CreateSubscriptionTargetOutput#updated_at #updated_at} => Time
    #   * {Types::CreateSubscriptionTargetOutput#manage_access_role #manage_access_role} => String
    #   * {Types::CreateSubscriptionTargetOutput#applicable_asset_types #applicable_asset_types} => Array&lt;String&gt;
    #   * {Types::CreateSubscriptionTargetOutput#subscription_target_config #subscription_target_config} => Array&lt;Types::SubscriptionTargetForm&gt;
    #   * {Types::CreateSubscriptionTargetOutput#provider #provider} => String
    #   * {Types::CreateSubscriptionTargetOutput#subscription_grant_creation_mode #subscription_grant_creation_mode} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_subscription_target({
    #     domain_identifier: "DomainId", # required
    #     environment_identifier: "EnvironmentId", # required
    #     name: "SubscriptionTargetName", # required
    #     type: "String", # required
    #     subscription_target_config: [ # required
    #       {
    #         form_name: "FormName", # required
    #         content: "String", # required
    #       },
    #     ],
    #     authorized_principals: ["AuthorizedPrincipalIdentifier"], # required
    #     manage_access_role: "IamRoleArn", # required
    #     applicable_asset_types: ["TypeName"], # required
    #     provider: "String",
    #     client_token: "String",
    #     subscription_grant_creation_mode: "AUTOMATIC", # accepts AUTOMATIC, MANUAL
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.authorized_principals #=> Array
    #   resp.authorized_principals[0] #=> String
    #   resp.domain_id #=> String
    #   resp.project_id #=> String
    #   resp.environment_id #=> String
    #   resp.name #=> String
    #   resp.type #=> String
    #   resp.created_by #=> String
    #   resp.updated_by #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.manage_access_role #=> String
    #   resp.applicable_asset_types #=> Array
    #   resp.applicable_asset_types[0] #=> String
    #   resp.subscription_target_config #=> Array
    #   resp.subscription_target_config[0].form_name #=> String
    #   resp.subscription_target_config[0].content #=> String
    #   resp.provider #=> String
    #   resp.subscription_grant_creation_mode #=> String, one of "AUTOMATIC", "MANUAL"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/CreateSubscriptionTarget AWS API Documentation
    #
    # @overload create_subscription_target(params = {})
    # @param [Hash] params ({})
    def create_subscription_target(params = {}, options = {})
      req = build_request(:create_subscription_target, params)
      req.send_request(options)
    end

    # Creates a user profile in Amazon DataZone.
    #
    # @option params [required, String] :domain_identifier
    #   The identifier of the Amazon DataZone domain in which a user profile
    #   is created.
    #
    # @option params [required, String] :user_identifier
    #   The identifier of the user for which the user profile is created.
    #
    # @option params [String] :user_type
    #   The user type of the user for which the user profile is created.
    #
    # @option params [String] :session_name
    #   The session name for IAM role sessions.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that is provided to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateUserProfileOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateUserProfileOutput#domain_id #domain_id} => String
    #   * {Types::CreateUserProfileOutput#id #id} => String
    #   * {Types::CreateUserProfileOutput#type #type} => String
    #   * {Types::CreateUserProfileOutput#status #status} => String
    #   * {Types::CreateUserProfileOutput#details #details} => Types::UserProfileDetails
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_user_profile({
    #     domain_identifier: "DomainId", # required
    #     user_identifier: "UserIdentifier", # required
    #     user_type: "IAM_USER", # accepts IAM_USER, IAM_ROLE, SSO_USER, IAM_ROLE_SESSION
    #     session_name: "CreateUserProfileInputSessionNameString",
    #     client_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.domain_id #=> String
    #   resp.id #=> String
    #   resp.type #=> String, one of "IAM", "SSO"
    #   resp.status #=> String, one of "ASSIGNED", "NOT_ASSIGNED", "ACTIVATED", "DEACTIVATED"
    #   resp.details.iam.arn #=> String
    #   resp.details.iam.principal_id #=> String
    #   resp.details.iam.session_name #=> String
    #   resp.details.iam.group_profile_id #=> String
    #   resp.details.sso.username #=> String
    #   resp.details.sso.first_name #=> String
    #   resp.details.sso.last_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/CreateUserProfile AWS API Documentation
    #
    # @overload create_user_profile(params = {})
    # @param [Hash] params ({})
    def create_user_profile(params = {}, options = {})
      req = build_request(:create_user_profile, params)
      req.send_request(options)
    end

    # Deletes an account pool.
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the domain where the account pool is deleted.
    #
    # @option params [required, String] :identifier
    #   The ID of the account pool to be deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_account_pool({
    #     domain_identifier: "DomainId", # required
    #     identifier: "AccountPoolId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/DeleteAccountPool AWS API Documentation
    #
    # @overload delete_account_pool(params = {})
    # @param [Hash] params ({})
    def delete_account_pool(params = {}, options = {})
      req = build_request(:delete_account_pool, params)
      req.send_request(options)
    end

    # Deletes an asset in Amazon DataZone.
    #
    # * --domain-identifier must refer to a valid and existing domain.
    #
    # * --identifier must refer to an existing asset in the specified
    #   domain.
    #
    # * Asset must not be referenced in any existing asset filters.
    #
    # * Asset must not be linked to any draft or published data product.
    #
    # * User must have delete permissions for the domain and project.
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the Amazon DataZone domain in which the asset is deleted.
    #
    # @option params [required, String] :identifier
    #   The identifier of the asset that is deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_asset({
    #     domain_identifier: "DomainId", # required
    #     identifier: "AssetIdentifier", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/DeleteAsset AWS API Documentation
    #
    # @overload delete_asset(params = {})
    # @param [Hash] params ({})
    def delete_asset(params = {}, options = {})
      req = build_request(:delete_asset, params)
      req.send_request(options)
    end

    # Deletes an asset filter.
    #
    # Prerequisites:
    #
    # * The asset filter must exist.
    #
    # * The domain and asset must not have been deleted.
    #
    # * Ensure the --identifier refers to a valid filter ID.
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the domain where you want to delete an asset filter.
    #
    # @option params [required, String] :asset_identifier
    #   The ID of the data asset.
    #
    # @option params [required, String] :identifier
    #   The ID of the asset filter that you want to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_asset_filter({
    #     domain_identifier: "DomainId", # required
    #     asset_identifier: "AssetId", # required
    #     identifier: "FilterId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/DeleteAssetFilter AWS API Documentation
    #
    # @overload delete_asset_filter(params = {})
    # @param [Hash] params ({})
    def delete_asset_filter(params = {}, options = {})
      req = build_request(:delete_asset_filter, params)
      req.send_request(options)
    end

    # Deletes an asset type in Amazon DataZone.
    #
    # Prerequisites:
    #
    # * The asset type must exist in the domain.
    #
    # * You must have DeleteAssetType permission.
    #
    # * The asset type must not be in use (e.g., assigned to any asset). If
    #   used, deletion will fail.
    #
    # * You should retrieve the asset type using get-asset-type to confirm
    #   its presence before deletion.
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the Amazon DataZone domain in which the asset type is
    #   deleted.
    #
    # @option params [required, String] :identifier
    #   The identifier of the asset type that is deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_asset_type({
    #     domain_identifier: "DomainId", # required
    #     identifier: "AssetTypeIdentifier", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/DeleteAssetType AWS API Documentation
    #
    # @overload delete_asset_type(params = {})
    # @param [Hash] params ({})
    def delete_asset_type(params = {}, options = {})
      req = build_request(:delete_asset_type, params)
      req.send_request(options)
    end

    # Deletes and connection. In Amazon DataZone, a connection enables you
    # to connect your resources (domains, projects, and environments) to
    # external resources and services.
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the domain where the connection is deleted.
    #
    # @option params [required, String] :identifier
    #   The ID of the connection that is deleted.
    #
    # @return [Types::DeleteConnectionOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteConnectionOutput#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_connection({
    #     domain_identifier: "DomainId", # required
    #     identifier: "ConnectionId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/DeleteConnection AWS API Documentation
    #
    # @overload delete_connection(params = {})
    # @param [Hash] params ({})
    def delete_connection(params = {}, options = {})
      req = build_request(:delete_connection, params)
      req.send_request(options)
    end

    # Deletes data export configuration for a domain.
    #
    # This operation does not delete the S3 table created by the
    # PutDataExportConfiguration operation.
    #
    # To temporarily disable export without deleting the configuration, use
    # the PutDataExportConfiguration operation with the `--no-enable-export`
    # flag instead. This allows you to re-enable export for the same domain
    # using the `--enable-export` flag without deleting S3 table.
    #
    # @option params [required, String] :domain_identifier
    #   The domain ID for which you want to delete the data export
    #   configuration.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_data_export_configuration({
    #     domain_identifier: "DomainId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/DeleteDataExportConfiguration AWS API Documentation
    #
    # @overload delete_data_export_configuration(params = {})
    # @param [Hash] params ({})
    def delete_data_export_configuration(params = {}, options = {})
      req = build_request(:delete_data_export_configuration, params)
      req.send_request(options)
    end

    # Deletes a data product in Amazon DataZone.
    #
    # Prerequisites:
    #
    # * The data product must exist and not be deleted or archived.
    #
    # * The user must have delete permissions for the data product.
    #
    # * Domain and project must be active.
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the Amazon DataZone domain in which the data product is
    #   deleted.
    #
    # @option params [required, String] :identifier
    #   The identifier of the data product that is deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_data_product({
    #     domain_identifier: "DomainId", # required
    #     identifier: "DataProductId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/DeleteDataProduct AWS API Documentation
    #
    # @overload delete_data_product(params = {})
    # @param [Hash] params ({})
    def delete_data_product(params = {}, options = {})
      req = build_request(:delete_data_product, params)
      req.send_request(options)
    end

    # Deletes a data source in Amazon DataZone.
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the Amazon DataZone domain in which the data source is
    #   deleted.
    #
    # @option params [required, String] :identifier
    #   The identifier of the data source that is deleted.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that is provided to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Boolean] :retain_permissions_on_revoke_failure
    #   Specifies that the granted permissions are retained in case of a
    #   self-subscribe functionality failure for a data source.
    #
    # @return [Types::DeleteDataSourceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteDataSourceOutput#id #id} => String
    #   * {Types::DeleteDataSourceOutput#status #status} => String
    #   * {Types::DeleteDataSourceOutput#type #type} => String
    #   * {Types::DeleteDataSourceOutput#name #name} => String
    #   * {Types::DeleteDataSourceOutput#description #description} => String
    #   * {Types::DeleteDataSourceOutput#domain_id #domain_id} => String
    #   * {Types::DeleteDataSourceOutput#project_id #project_id} => String
    #   * {Types::DeleteDataSourceOutput#environment_id #environment_id} => String
    #   * {Types::DeleteDataSourceOutput#connection_id #connection_id} => String
    #   * {Types::DeleteDataSourceOutput#configuration #configuration} => Types::DataSourceConfigurationOutput
    #   * {Types::DeleteDataSourceOutput#enable_setting #enable_setting} => String
    #   * {Types::DeleteDataSourceOutput#publish_on_import #publish_on_import} => Boolean
    #   * {Types::DeleteDataSourceOutput#asset_forms_output #asset_forms_output} => Array&lt;Types::FormOutput&gt;
    #   * {Types::DeleteDataSourceOutput#schedule #schedule} => Types::ScheduleConfiguration
    #   * {Types::DeleteDataSourceOutput#last_run_status #last_run_status} => String
    #   * {Types::DeleteDataSourceOutput#last_run_at #last_run_at} => Time
    #   * {Types::DeleteDataSourceOutput#last_run_error_message #last_run_error_message} => Types::DataSourceErrorMessage
    #   * {Types::DeleteDataSourceOutput#error_message #error_message} => Types::DataSourceErrorMessage
    #   * {Types::DeleteDataSourceOutput#created_at #created_at} => Time
    #   * {Types::DeleteDataSourceOutput#updated_at #updated_at} => Time
    #   * {Types::DeleteDataSourceOutput#self_grant_status #self_grant_status} => Types::SelfGrantStatusOutput
    #   * {Types::DeleteDataSourceOutput#retain_permissions_on_revoke_failure #retain_permissions_on_revoke_failure} => Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_data_source({
    #     domain_identifier: "DomainId", # required
    #     identifier: "DataSourceId", # required
    #     client_token: "String",
    #     retain_permissions_on_revoke_failure: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.status #=> String, one of "CREATING", "FAILED_CREATION", "READY", "UPDATING", "FAILED_UPDATE", "RUNNING", "DELETING", "FAILED_DELETION"
    #   resp.type #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.domain_id #=> String
    #   resp.project_id #=> String
    #   resp.environment_id #=> String
    #   resp.connection_id #=> String
    #   resp.configuration.glue_run_configuration.account_id #=> String
    #   resp.configuration.glue_run_configuration.region #=> String
    #   resp.configuration.glue_run_configuration.data_access_role #=> String
    #   resp.configuration.glue_run_configuration.relational_filter_configurations #=> Array
    #   resp.configuration.glue_run_configuration.relational_filter_configurations[0].database_name #=> String
    #   resp.configuration.glue_run_configuration.relational_filter_configurations[0].schema_name #=> String
    #   resp.configuration.glue_run_configuration.relational_filter_configurations[0].filter_expressions #=> Array
    #   resp.configuration.glue_run_configuration.relational_filter_configurations[0].filter_expressions[0].type #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.configuration.glue_run_configuration.relational_filter_configurations[0].filter_expressions[0].expression #=> String
    #   resp.configuration.glue_run_configuration.auto_import_data_quality_result #=> Boolean
    #   resp.configuration.glue_run_configuration.catalog_name #=> String
    #   resp.configuration.redshift_run_configuration.account_id #=> String
    #   resp.configuration.redshift_run_configuration.region #=> String
    #   resp.configuration.redshift_run_configuration.data_access_role #=> String
    #   resp.configuration.redshift_run_configuration.relational_filter_configurations #=> Array
    #   resp.configuration.redshift_run_configuration.relational_filter_configurations[0].database_name #=> String
    #   resp.configuration.redshift_run_configuration.relational_filter_configurations[0].schema_name #=> String
    #   resp.configuration.redshift_run_configuration.relational_filter_configurations[0].filter_expressions #=> Array
    #   resp.configuration.redshift_run_configuration.relational_filter_configurations[0].filter_expressions[0].type #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.configuration.redshift_run_configuration.relational_filter_configurations[0].filter_expressions[0].expression #=> String
    #   resp.configuration.redshift_run_configuration.redshift_credential_configuration.secret_manager_arn #=> String
    #   resp.configuration.redshift_run_configuration.redshift_storage.redshift_cluster_source.cluster_name #=> String
    #   resp.configuration.redshift_run_configuration.redshift_storage.redshift_serverless_source.workgroup_name #=> String
    #   resp.configuration.sage_maker_run_configuration.account_id #=> String
    #   resp.configuration.sage_maker_run_configuration.region #=> String
    #   resp.configuration.sage_maker_run_configuration.tracking_assets #=> Hash
    #   resp.configuration.sage_maker_run_configuration.tracking_assets["SageMakerAssetType"] #=> Array
    #   resp.configuration.sage_maker_run_configuration.tracking_assets["SageMakerAssetType"][0] #=> String
    #   resp.enable_setting #=> String, one of "ENABLED", "DISABLED"
    #   resp.publish_on_import #=> Boolean
    #   resp.asset_forms_output #=> Array
    #   resp.asset_forms_output[0].form_name #=> String
    #   resp.asset_forms_output[0].type_name #=> String
    #   resp.asset_forms_output[0].type_revision #=> String
    #   resp.asset_forms_output[0].content #=> String
    #   resp.schedule.timezone #=> String, one of "UTC", "AFRICA_JOHANNESBURG", "AMERICA_MONTREAL", "AMERICA_SAO_PAULO", "ASIA_BAHRAIN", "ASIA_BANGKOK", "ASIA_CALCUTTA", "ASIA_DUBAI", "ASIA_HONG_KONG", "ASIA_JAKARTA", "ASIA_KUALA_LUMPUR", "ASIA_SEOUL", "ASIA_SHANGHAI", "ASIA_SINGAPORE", "ASIA_TAIPEI", "ASIA_TOKYO", "AUSTRALIA_MELBOURNE", "AUSTRALIA_SYDNEY", "CANADA_CENTRAL", "CET", "CST6CDT", "ETC_GMT", "ETC_GMT0", "ETC_GMT_ADD_0", "ETC_GMT_ADD_1", "ETC_GMT_ADD_10", "ETC_GMT_ADD_11", "ETC_GMT_ADD_12", "ETC_GMT_ADD_2", "ETC_GMT_ADD_3", "ETC_GMT_ADD_4", "ETC_GMT_ADD_5", "ETC_GMT_ADD_6", "ETC_GMT_ADD_7", "ETC_GMT_ADD_8", "ETC_GMT_ADD_9", "ETC_GMT_NEG_0", "ETC_GMT_NEG_1", "ETC_GMT_NEG_10", "ETC_GMT_NEG_11", "ETC_GMT_NEG_12", "ETC_GMT_NEG_13", "ETC_GMT_NEG_14", "ETC_GMT_NEG_2", "ETC_GMT_NEG_3", "ETC_GMT_NEG_4", "ETC_GMT_NEG_5", "ETC_GMT_NEG_6", "ETC_GMT_NEG_7", "ETC_GMT_NEG_8", "ETC_GMT_NEG_9", "EUROPE_DUBLIN", "EUROPE_LONDON", "EUROPE_PARIS", "EUROPE_STOCKHOLM", "EUROPE_ZURICH", "ISRAEL", "MEXICO_GENERAL", "MST7MDT", "PACIFIC_AUCKLAND", "US_CENTRAL", "US_EASTERN", "US_MOUNTAIN", "US_PACIFIC"
    #   resp.schedule.schedule #=> String
    #   resp.last_run_status #=> String, one of "REQUESTED", "RUNNING", "FAILED", "PARTIALLY_SUCCEEDED", "SUCCESS"
    #   resp.last_run_at #=> Time
    #   resp.last_run_error_message.error_type #=> String, one of "ACCESS_DENIED_EXCEPTION", "CONFLICT_EXCEPTION", "INTERNAL_SERVER_EXCEPTION", "RESOURCE_NOT_FOUND_EXCEPTION", "SERVICE_QUOTA_EXCEEDED_EXCEPTION", "THROTTLING_EXCEPTION", "VALIDATION_EXCEPTION"
    #   resp.last_run_error_message.error_detail #=> String
    #   resp.error_message.error_type #=> String, one of "ACCESS_DENIED_EXCEPTION", "CONFLICT_EXCEPTION", "INTERNAL_SERVER_EXCEPTION", "RESOURCE_NOT_FOUND_EXCEPTION", "SERVICE_QUOTA_EXCEEDED_EXCEPTION", "THROTTLING_EXCEPTION", "VALIDATION_EXCEPTION"
    #   resp.error_message.error_detail #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.self_grant_status.glue_self_grant_status.self_grant_status_details #=> Array
    #   resp.self_grant_status.glue_self_grant_status.self_grant_status_details[0].database_name #=> String
    #   resp.self_grant_status.glue_self_grant_status.self_grant_status_details[0].schema_name #=> String
    #   resp.self_grant_status.glue_self_grant_status.self_grant_status_details[0].status #=> String, one of "GRANT_PENDING", "REVOKE_PENDING", "GRANT_IN_PROGRESS", "REVOKE_IN_PROGRESS", "GRANTED", "GRANT_FAILED", "REVOKE_FAILED"
    #   resp.self_grant_status.glue_self_grant_status.self_grant_status_details[0].failure_cause #=> String
    #   resp.self_grant_status.redshift_self_grant_status.self_grant_status_details #=> Array
    #   resp.self_grant_status.redshift_self_grant_status.self_grant_status_details[0].database_name #=> String
    #   resp.self_grant_status.redshift_self_grant_status.self_grant_status_details[0].schema_name #=> String
    #   resp.self_grant_status.redshift_self_grant_status.self_grant_status_details[0].status #=> String, one of "GRANT_PENDING", "REVOKE_PENDING", "GRANT_IN_PROGRESS", "REVOKE_IN_PROGRESS", "GRANTED", "GRANT_FAILED", "REVOKE_FAILED"
    #   resp.self_grant_status.redshift_self_grant_status.self_grant_status_details[0].failure_cause #=> String
    #   resp.retain_permissions_on_revoke_failure #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/DeleteDataSource AWS API Documentation
    #
    # @overload delete_data_source(params = {})
    # @param [Hash] params ({})
    def delete_data_source(params = {}, options = {})
      req = build_request(:delete_data_source, params)
      req.send_request(options)
    end

    # Deletes a Amazon DataZone domain.
    #
    # @option params [required, String] :identifier
    #   The identifier of the Amazon Web Services domain that is to be
    #   deleted.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that is provided to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Boolean] :skip_deletion_check
    #   Specifies the optional flag to delete all child entities within the
    #   domain.
    #
    # @return [Types::DeleteDomainOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteDomainOutput#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_domain({
    #     identifier: "DomainId", # required
    #     client_token: "String",
    #     skip_deletion_check: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> String, one of "CREATING", "AVAILABLE", "CREATION_FAILED", "DELETING", "DELETED", "DELETION_FAILED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/DeleteDomain AWS API Documentation
    #
    # @overload delete_domain(params = {})
    # @param [Hash] params ({})
    def delete_domain(params = {}, options = {})
      req = build_request(:delete_domain, params)
      req.send_request(options)
    end

    # Deletes a domain unit.
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the domain where you want to delete a domain unit.
    #
    # @option params [required, String] :identifier
    #   The ID of the domain unit that you want to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_domain_unit({
    #     domain_identifier: "DomainId", # required
    #     identifier: "DomainUnitId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/DeleteDomainUnit AWS API Documentation
    #
    # @overload delete_domain_unit(params = {})
    # @param [Hash] params ({})
    def delete_domain_unit(params = {}, options = {})
      req = build_request(:delete_domain_unit, params)
      req.send_request(options)
    end

    # Deletes an environment in Amazon DataZone.
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the Amazon DataZone domain in which the environment is
    #   deleted.
    #
    # @option params [required, String] :identifier
    #   The identifier of the environment that is to be deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_environment({
    #     domain_identifier: "DomainId", # required
    #     identifier: "EnvironmentId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/DeleteEnvironment AWS API Documentation
    #
    # @overload delete_environment(params = {})
    # @param [Hash] params ({})
    def delete_environment(params = {}, options = {})
      req = build_request(:delete_environment, params)
      req.send_request(options)
    end

    # Deletes an action for the environment, for example, deletes a console
    # link for an analytics tool that is available in this environment.
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the Amazon DataZone domain in which an environment action is
    #   deleted.
    #
    # @option params [required, String] :environment_identifier
    #   The ID of the environment where an environment action is deleted.
    #
    # @option params [required, String] :identifier
    #   The ID of the environment action that is deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_environment_action({
    #     domain_identifier: "DomainId", # required
    #     environment_identifier: "EnvironmentId", # required
    #     identifier: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/DeleteEnvironmentAction AWS API Documentation
    #
    # @overload delete_environment_action(params = {})
    # @param [Hash] params ({})
    def delete_environment_action(params = {}, options = {})
      req = build_request(:delete_environment_action, params)
      req.send_request(options)
    end

    # Deletes a blueprint in Amazon DataZone.
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the Amazon DataZone domain in which the blueprint is
    #   deleted.
    #
    # @option params [required, String] :identifier
    #   The ID of the blueprint that is deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_environment_blueprint({
    #     domain_identifier: "DomainId", # required
    #     identifier: "EnvironmentBlueprintId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/DeleteEnvironmentBlueprint AWS API Documentation
    #
    # @overload delete_environment_blueprint(params = {})
    # @param [Hash] params ({})
    def delete_environment_blueprint(params = {}, options = {})
      req = build_request(:delete_environment_blueprint, params)
      req.send_request(options)
    end

    # Deletes the blueprint configuration in Amazon DataZone.
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the Amazon DataZone domain in which the blueprint
    #   configuration is deleted.
    #
    # @option params [required, String] :environment_blueprint_identifier
    #   The ID of the blueprint the configuration of which is deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_environment_blueprint_configuration({
    #     domain_identifier: "DomainId", # required
    #     environment_blueprint_identifier: "EnvironmentBlueprintId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/DeleteEnvironmentBlueprintConfiguration AWS API Documentation
    #
    # @overload delete_environment_blueprint_configuration(params = {})
    # @param [Hash] params ({})
    def delete_environment_blueprint_configuration(params = {}, options = {})
      req = build_request(:delete_environment_blueprint_configuration, params)
      req.send_request(options)
    end

    # Deletes an environment profile in Amazon DataZone.
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the Amazon DataZone domain in which the environment profile
    #   is deleted.
    #
    # @option params [required, String] :identifier
    #   The ID of the environment profile that is deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_environment_profile({
    #     domain_identifier: "DomainId", # required
    #     identifier: "EnvironmentProfileId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/DeleteEnvironmentProfile AWS API Documentation
    #
    # @overload delete_environment_profile(params = {})
    # @param [Hash] params ({})
    def delete_environment_profile(params = {}, options = {})
      req = build_request(:delete_environment_profile, params)
      req.send_request(options)
    end

    # Deletes and metadata form type in Amazon DataZone.
    #
    # Prerequisites:
    #
    # * The form type must exist in the domain.
    #
    # * The form type must not be in use by any asset types or assets.
    #
    # * The domain must be valid and accessible.
    #
    # * User must have delete permissions on the form type.
    #
    # * Any dependencies (such as linked asset types) must be removed first.
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the Amazon DataZone domain in which the metadata form type
    #   is deleted.
    #
    # @option params [required, String] :form_type_identifier
    #   The ID of the metadata form type that is deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_form_type({
    #     domain_identifier: "DomainId", # required
    #     form_type_identifier: "FormTypeIdentifier", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/DeleteFormType AWS API Documentation
    #
    # @overload delete_form_type(params = {})
    # @param [Hash] params ({})
    def delete_form_type(params = {}, options = {})
      req = build_request(:delete_form_type, params)
      req.send_request(options)
    end

    # Deletes a business glossary in Amazon DataZone.
    #
    # Prerequisites:
    #
    # * The glossary must be in DISABLED state.
    #
    # * The glossary must not have any glossary terms associated with it.
    #
    # * The glossary must exist in the specified domain.
    #
    # * The caller must have the `datazone:DeleteGlossary` permission in the
    #   domain and glossary.
    #
    # * Glossary should not be linked to any active metadata forms.
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the Amazon DataZone domain in which the business glossary is
    #   deleted.
    #
    # @option params [required, String] :identifier
    #   The ID of the business glossary that is deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_glossary({
    #     domain_identifier: "DomainId", # required
    #     identifier: "GlossaryId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/DeleteGlossary AWS API Documentation
    #
    # @overload delete_glossary(params = {})
    # @param [Hash] params ({})
    def delete_glossary(params = {}, options = {})
      req = build_request(:delete_glossary, params)
      req.send_request(options)
    end

    # Deletes a business glossary term in Amazon DataZone.
    #
    # Prerequisites:
    #
    # * Glossary term must exist and be active.
    #
    # * The term must not be linked to other assets or child terms.
    #
    # * Caller must have delete permissions in the domain/glossary.
    #
    # * Ensure all associations (such as to assets or parent terms) are
    #   removed before deletion.
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the Amazon DataZone domain in which the business glossary
    #   term is deleted.
    #
    # @option params [required, String] :identifier
    #   The ID of the business glossary term that is deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_glossary_term({
    #     domain_identifier: "DomainId", # required
    #     identifier: "GlossaryTermId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/DeleteGlossaryTerm AWS API Documentation
    #
    # @overload delete_glossary_term(params = {})
    # @param [Hash] params ({})
    def delete_glossary_term(params = {}, options = {})
      req = build_request(:delete_glossary_term, params)
      req.send_request(options)
    end

    # Deletes a listing (a record of an asset at a given time).
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the Amazon DataZone domain.
    #
    # @option params [required, String] :identifier
    #   The ID of the listing to be deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_listing({
    #     domain_identifier: "DomainId", # required
    #     identifier: "ListingId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/DeleteListing AWS API Documentation
    #
    # @overload delete_listing(params = {})
    # @param [Hash] params ({})
    def delete_listing(params = {}, options = {})
      req = build_request(:delete_listing, params)
      req.send_request(options)
    end

    # Deletes a project in Amazon DataZone.
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the Amazon DataZone domain in which the project is deleted.
    #
    # @option params [required, String] :identifier
    #   The identifier of the project that is to be deleted.
    #
    # @option params [Boolean] :skip_deletion_check
    #   Specifies the optional flag to delete all child entities within the
    #   project.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_project({
    #     domain_identifier: "DomainId", # required
    #     identifier: "ProjectId", # required
    #     skip_deletion_check: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/DeleteProject AWS API Documentation
    #
    # @overload delete_project(params = {})
    # @param [Hash] params ({})
    def delete_project(params = {}, options = {})
      req = build_request(:delete_project, params)
      req.send_request(options)
    end

    # Deletes project membership in Amazon DataZone.
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the Amazon DataZone domain where project membership is
    #   deleted.
    #
    # @option params [required, String] :project_identifier
    #   The ID of the Amazon DataZone project the membership to which is
    #   deleted.
    #
    # @option params [required, Types::Member] :member
    #   The project member whose project membership is deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_project_membership({
    #     domain_identifier: "DomainId", # required
    #     project_identifier: "ProjectId", # required
    #     member: { # required
    #       user_identifier: "String",
    #       group_identifier: "String",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/DeleteProjectMembership AWS API Documentation
    #
    # @overload delete_project_membership(params = {})
    # @param [Hash] params ({})
    def delete_project_membership(params = {}, options = {})
      req = build_request(:delete_project_membership, params)
      req.send_request(options)
    end

    # Deletes a project profile.
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the domain where a project profile is deleted.
    #
    # @option params [required, String] :identifier
    #   The ID of the project profile that is deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_project_profile({
    #     domain_identifier: "DomainId", # required
    #     identifier: "ProjectProfileId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/DeleteProjectProfile AWS API Documentation
    #
    # @overload delete_project_profile(params = {})
    # @param [Hash] params ({})
    def delete_project_profile(params = {}, options = {})
      req = build_request(:delete_project_profile, params)
      req.send_request(options)
    end

    # Deletes a rule in Amazon DataZone. A rule is a formal agreement that
    # enforces specific requirements across user workflows (e.g., publishing
    # assets to the catalog, requesting subscriptions, creating projects)
    # within the Amazon DataZone data portal. These rules help maintain
    # consistency, ensure compliance, and uphold governance standards in
    # data management processes. For instance, a metadata enforcement rule
    # can specify the required information for creating a subscription
    # request or publishing a data asset to the catalog, ensuring alignment
    # with organizational standards.
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the domain that where the rule is to be deleted.
    #
    # @option params [required, String] :identifier
    #   The ID of the rule that is to be deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_rule({
    #     domain_identifier: "DomainId", # required
    #     identifier: "RuleId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/DeleteRule AWS API Documentation
    #
    # @overload delete_rule(params = {})
    # @param [Hash] params ({})
    def delete_rule(params = {}, options = {})
      req = build_request(:delete_rule, params)
      req.send_request(options)
    end

    # Deletes and subscription grant in Amazon DataZone.
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the Amazon DataZone domain where the subscription grant is
    #   deleted.
    #
    # @option params [required, String] :identifier
    #   The ID of the subscription grant that is deleted.
    #
    # @return [Types::DeleteSubscriptionGrantOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteSubscriptionGrantOutput#id #id} => String
    #   * {Types::DeleteSubscriptionGrantOutput#created_by #created_by} => String
    #   * {Types::DeleteSubscriptionGrantOutput#updated_by #updated_by} => String
    #   * {Types::DeleteSubscriptionGrantOutput#domain_id #domain_id} => String
    #   * {Types::DeleteSubscriptionGrantOutput#created_at #created_at} => Time
    #   * {Types::DeleteSubscriptionGrantOutput#updated_at #updated_at} => Time
    #   * {Types::DeleteSubscriptionGrantOutput#environment_id #environment_id} => String
    #   * {Types::DeleteSubscriptionGrantOutput#subscription_target_id #subscription_target_id} => String
    #   * {Types::DeleteSubscriptionGrantOutput#granted_entity #granted_entity} => Types::GrantedEntity
    #   * {Types::DeleteSubscriptionGrantOutput#status #status} => String
    #   * {Types::DeleteSubscriptionGrantOutput#assets #assets} => Array&lt;Types::SubscribedAsset&gt;
    #   * {Types::DeleteSubscriptionGrantOutput#subscription_id #subscription_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_subscription_grant({
    #     domain_identifier: "DomainId", # required
    #     identifier: "SubscriptionGrantId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.created_by #=> String
    #   resp.updated_by #=> String
    #   resp.domain_id #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.environment_id #=> String
    #   resp.subscription_target_id #=> String
    #   resp.granted_entity.listing.id #=> String
    #   resp.granted_entity.listing.revision #=> String
    #   resp.status #=> String, one of "PENDING", "IN_PROGRESS", "GRANT_FAILED", "REVOKE_FAILED", "GRANT_AND_REVOKE_FAILED", "COMPLETED", "INACCESSIBLE"
    #   resp.assets #=> Array
    #   resp.assets[0].asset_id #=> String
    #   resp.assets[0].asset_revision #=> String
    #   resp.assets[0].status #=> String, one of "GRANT_PENDING", "REVOKE_PENDING", "GRANT_IN_PROGRESS", "REVOKE_IN_PROGRESS", "GRANTED", "REVOKED", "GRANT_FAILED", "REVOKE_FAILED"
    #   resp.assets[0].target_name #=> String
    #   resp.assets[0].failure_cause.message #=> String
    #   resp.assets[0].granted_timestamp #=> Time
    #   resp.assets[0].failure_timestamp #=> Time
    #   resp.assets[0].asset_scope.asset_id #=> String
    #   resp.assets[0].asset_scope.filter_ids #=> Array
    #   resp.assets[0].asset_scope.filter_ids[0] #=> String
    #   resp.assets[0].asset_scope.status #=> String
    #   resp.assets[0].asset_scope.error_message #=> String
    #   resp.assets[0].permissions.s3 #=> Array
    #   resp.assets[0].permissions.s3[0] #=> String, one of "READ", "WRITE"
    #   resp.subscription_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/DeleteSubscriptionGrant AWS API Documentation
    #
    # @overload delete_subscription_grant(params = {})
    # @param [Hash] params ({})
    def delete_subscription_grant(params = {}, options = {})
      req = build_request(:delete_subscription_grant, params)
      req.send_request(options)
    end

    # Deletes a subscription request in Amazon DataZone.
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the Amazon DataZone domain in which the subscription request
    #   is deleted.
    #
    # @option params [required, String] :identifier
    #   The ID of the subscription request that is deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_subscription_request({
    #     domain_identifier: "DomainId", # required
    #     identifier: "SubscriptionRequestId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/DeleteSubscriptionRequest AWS API Documentation
    #
    # @overload delete_subscription_request(params = {})
    # @param [Hash] params ({})
    def delete_subscription_request(params = {}, options = {})
      req = build_request(:delete_subscription_request, params)
      req.send_request(options)
    end

    # Deletes a subscription target in Amazon DataZone.
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the Amazon DataZone domain in which the subscription target
    #   is deleted.
    #
    # @option params [required, String] :environment_identifier
    #   The ID of the Amazon DataZone environment in which the subscription
    #   target is deleted.
    #
    # @option params [required, String] :identifier
    #   The ID of the subscription target that is deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_subscription_target({
    #     domain_identifier: "DomainId", # required
    #     environment_identifier: "EnvironmentId", # required
    #     identifier: "SubscriptionTargetId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/DeleteSubscriptionTarget AWS API Documentation
    #
    # @overload delete_subscription_target(params = {})
    # @param [Hash] params ({})
    def delete_subscription_target(params = {}, options = {})
      req = build_request(:delete_subscription_target, params)
      req.send_request(options)
    end

    # Deletes the specified time series form for the specified asset.
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the Amazon DataZone domain that houses the asset for which
    #   you want to delete a time series form.
    #
    # @option params [required, String] :entity_identifier
    #   The ID of the asset for which you want to delete a time series form.
    #
    # @option params [required, String] :entity_type
    #   The type of the asset for which you want to delete a time series form.
    #
    # @option params [required, String] :form_name
    #   The name of the time series form that you want to delete.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier to ensure idempotency of the
    #   request. This field is automatically populated if not provided.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_time_series_data_points({
    #     domain_identifier: "DomainId", # required
    #     entity_identifier: "EntityIdentifier", # required
    #     entity_type: "ASSET", # required, accepts ASSET, LISTING
    #     form_name: "TimeSeriesFormName", # required
    #     client_token: "ClientToken",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/DeleteTimeSeriesDataPoints AWS API Documentation
    #
    # @overload delete_time_series_data_points(params = {})
    # @param [Hash] params ({})
    def delete_time_series_data_points(params = {}, options = {})
      req = build_request(:delete_time_series_data_points, params)
      req.send_request(options)
    end

    # Disassociates the environment role in Amazon DataZone.
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the Amazon DataZone domain in which an environment role is
    #   disassociated.
    #
    # @option params [required, String] :environment_identifier
    #   The ID of the environment.
    #
    # @option params [required, String] :environment_role_arn
    #   The ARN of the environment role.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_environment_role({
    #     domain_identifier: "DomainId", # required
    #     environment_identifier: "EnvironmentId", # required
    #     environment_role_arn: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/DisassociateEnvironmentRole AWS API Documentation
    #
    # @overload disassociate_environment_role(params = {})
    # @param [Hash] params ({})
    def disassociate_environment_role(params = {}, options = {})
      req = build_request(:disassociate_environment_role, params)
      req.send_request(options)
    end

    # Disassociates restricted terms from an asset.
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the domain where you want to disassociate restricted terms
    #   from an asset.
    #
    # @option params [required, String] :entity_identifier
    #   The ID of an asset from which you want to disassociate restricted
    #   terms.
    #
    # @option params [required, String] :entity_type
    #   The type of the asset from which you want to disassociate restricted
    #   terms.
    #
    # @option params [required, Array<String>] :governed_glossary_terms
    #   The restricted glossary terms that you want to disassociate from an
    #   asset.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_governed_terms({
    #     domain_identifier: "DomainId", # required
    #     entity_identifier: "EntityIdentifier", # required
    #     entity_type: "ASSET", # required, accepts ASSET
    #     governed_glossary_terms: ["GlossaryTermId"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/DisassociateGovernedTerms AWS API Documentation
    #
    # @overload disassociate_governed_terms(params = {})
    # @param [Hash] params ({})
    def disassociate_governed_terms(params = {}, options = {})
      req = build_request(:disassociate_governed_terms, params)
      req.send_request(options)
    end

    # Gets the details of the account pool.
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the domain in which the account pool lives whose details are
    #   to be displayed.
    #
    # @option params [required, String] :identifier
    #   The ID of the account pool whose details are to be displayed.
    #
    # @return [Types::GetAccountPoolOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAccountPoolOutput#domain_id #domain_id} => String
    #   * {Types::GetAccountPoolOutput#name #name} => String
    #   * {Types::GetAccountPoolOutput#id #id} => String
    #   * {Types::GetAccountPoolOutput#description #description} => String
    #   * {Types::GetAccountPoolOutput#resolution_strategy #resolution_strategy} => String
    #   * {Types::GetAccountPoolOutput#account_source #account_source} => Types::AccountSource
    #   * {Types::GetAccountPoolOutput#created_by #created_by} => String
    #   * {Types::GetAccountPoolOutput#created_at #created_at} => Time
    #   * {Types::GetAccountPoolOutput#last_updated_at #last_updated_at} => Time
    #   * {Types::GetAccountPoolOutput#updated_by #updated_by} => String
    #   * {Types::GetAccountPoolOutput#domain_unit_id #domain_unit_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_account_pool({
    #     domain_identifier: "DomainId", # required
    #     identifier: "AccountPoolId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.domain_id #=> String
    #   resp.name #=> String
    #   resp.id #=> String
    #   resp.description #=> String
    #   resp.resolution_strategy #=> String, one of "MANUAL"
    #   resp.account_source.accounts #=> Array
    #   resp.account_source.accounts[0].aws_account_id #=> String
    #   resp.account_source.accounts[0].supported_regions #=> Array
    #   resp.account_source.accounts[0].supported_regions[0] #=> String
    #   resp.account_source.accounts[0].aws_account_name #=> String
    #   resp.account_source.custom_account_pool_handler.lambda_function_arn #=> String
    #   resp.account_source.custom_account_pool_handler.lambda_execution_role_arn #=> String
    #   resp.created_by #=> String
    #   resp.created_at #=> Time
    #   resp.last_updated_at #=> Time
    #   resp.updated_by #=> String
    #   resp.domain_unit_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GetAccountPool AWS API Documentation
    #
    # @overload get_account_pool(params = {})
    # @param [Hash] params ({})
    def get_account_pool(params = {}, options = {})
      req = build_request(:get_account_pool, params)
      req.send_request(options)
    end

    # Gets an Amazon DataZone asset.
    #
    # An asset is the fundamental building block in Amazon DataZone,
    # representing any data resource that needs to be cataloged and managed.
    # It can take many forms, from Amazon S3 buckets and database tables to
    # dashboards and machine learning models. Each asset contains
    # comprehensive metadata about the resource, including its location,
    # schema, ownership, and lineage information. Assets are essential for
    # organizing and managing data resources across an organization, making
    # them discoverable and usable while maintaining proper governance.
    #
    # Before using the Amazon DataZone GetAsset command, ensure the
    # following prerequisites are met:
    #
    # * Domain identifier must exist and be valid
    #
    # * Asset identifier must exist
    #
    # * User must have the required permissions to perform the action
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the Amazon DataZone domain to which the asset belongs.
    #
    # @option params [required, String] :identifier
    #   The ID of the Amazon DataZone asset.
    #
    #   This parameter supports either the value of `assetId` or
    #   `externalIdentifier` as input. If you are passing the value of
    #   `externalIdentifier`, you must prefix this value with
    #   `externalIdentifer%2F`.
    #
    # @option params [String] :revision
    #   The revision of the Amazon DataZone asset.
    #
    # @return [Types::GetAssetOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAssetOutput#id #id} => String
    #   * {Types::GetAssetOutput#name #name} => String
    #   * {Types::GetAssetOutput#type_identifier #type_identifier} => String
    #   * {Types::GetAssetOutput#type_revision #type_revision} => String
    #   * {Types::GetAssetOutput#external_identifier #external_identifier} => String
    #   * {Types::GetAssetOutput#revision #revision} => String
    #   * {Types::GetAssetOutput#description #description} => String
    #   * {Types::GetAssetOutput#created_at #created_at} => Time
    #   * {Types::GetAssetOutput#created_by #created_by} => String
    #   * {Types::GetAssetOutput#first_revision_created_at #first_revision_created_at} => Time
    #   * {Types::GetAssetOutput#first_revision_created_by #first_revision_created_by} => String
    #   * {Types::GetAssetOutput#glossary_terms #glossary_terms} => Array&lt;String&gt;
    #   * {Types::GetAssetOutput#governed_glossary_terms #governed_glossary_terms} => Array&lt;String&gt;
    #   * {Types::GetAssetOutput#owning_project_id #owning_project_id} => String
    #   * {Types::GetAssetOutput#domain_id #domain_id} => String
    #   * {Types::GetAssetOutput#listing #listing} => Types::AssetListingDetails
    #   * {Types::GetAssetOutput#forms_output #forms_output} => Array&lt;Types::FormOutput&gt;
    #   * {Types::GetAssetOutput#read_only_forms_output #read_only_forms_output} => Array&lt;Types::FormOutput&gt;
    #   * {Types::GetAssetOutput#latest_time_series_data_point_forms_output #latest_time_series_data_point_forms_output} => Array&lt;Types::TimeSeriesDataPointSummaryFormOutput&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_asset({
    #     domain_identifier: "DomainId", # required
    #     identifier: "AssetIdentifier", # required
    #     revision: "Revision",
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.type_identifier #=> String
    #   resp.type_revision #=> String
    #   resp.external_identifier #=> String
    #   resp.revision #=> String
    #   resp.description #=> String
    #   resp.created_at #=> Time
    #   resp.created_by #=> String
    #   resp.first_revision_created_at #=> Time
    #   resp.first_revision_created_by #=> String
    #   resp.glossary_terms #=> Array
    #   resp.glossary_terms[0] #=> String
    #   resp.governed_glossary_terms #=> Array
    #   resp.governed_glossary_terms[0] #=> String
    #   resp.owning_project_id #=> String
    #   resp.domain_id #=> String
    #   resp.listing.listing_id #=> String
    #   resp.listing.listing_status #=> String, one of "CREATING", "ACTIVE", "INACTIVE"
    #   resp.forms_output #=> Array
    #   resp.forms_output[0].form_name #=> String
    #   resp.forms_output[0].type_name #=> String
    #   resp.forms_output[0].type_revision #=> String
    #   resp.forms_output[0].content #=> String
    #   resp.read_only_forms_output #=> Array
    #   resp.read_only_forms_output[0].form_name #=> String
    #   resp.read_only_forms_output[0].type_name #=> String
    #   resp.read_only_forms_output[0].type_revision #=> String
    #   resp.read_only_forms_output[0].content #=> String
    #   resp.latest_time_series_data_point_forms_output #=> Array
    #   resp.latest_time_series_data_point_forms_output[0].form_name #=> String
    #   resp.latest_time_series_data_point_forms_output[0].type_identifier #=> String
    #   resp.latest_time_series_data_point_forms_output[0].type_revision #=> String
    #   resp.latest_time_series_data_point_forms_output[0].timestamp #=> Time
    #   resp.latest_time_series_data_point_forms_output[0].content_summary #=> String
    #   resp.latest_time_series_data_point_forms_output[0].id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GetAsset AWS API Documentation
    #
    # @overload get_asset(params = {})
    # @param [Hash] params ({})
    def get_asset(params = {}, options = {})
      req = build_request(:get_asset, params)
      req.send_request(options)
    end

    # Gets an asset filter.
    #
    # Prerequisites:
    #
    # * Domain (`--domain-identifier`), asset (`--asset-identifier`), and
    #   filter (`--identifier`) must all exist.
    #
    # * The asset filter should not have been deleted.
    #
    # * The asset must still exist (since the filter is linked to it).
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the domain where you want to get an asset filter.
    #
    # @option params [required, String] :asset_identifier
    #   The ID of the data asset.
    #
    # @option params [required, String] :identifier
    #   The ID of the asset filter.
    #
    # @return [Types::GetAssetFilterOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAssetFilterOutput#id #id} => String
    #   * {Types::GetAssetFilterOutput#domain_id #domain_id} => String
    #   * {Types::GetAssetFilterOutput#asset_id #asset_id} => String
    #   * {Types::GetAssetFilterOutput#name #name} => String
    #   * {Types::GetAssetFilterOutput#description #description} => String
    #   * {Types::GetAssetFilterOutput#status #status} => String
    #   * {Types::GetAssetFilterOutput#configuration #configuration} => Types::AssetFilterConfiguration
    #   * {Types::GetAssetFilterOutput#created_at #created_at} => Time
    #   * {Types::GetAssetFilterOutput#error_message #error_message} => String
    #   * {Types::GetAssetFilterOutput#effective_column_names #effective_column_names} => Array&lt;String&gt;
    #   * {Types::GetAssetFilterOutput#effective_row_filter #effective_row_filter} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_asset_filter({
    #     domain_identifier: "DomainId", # required
    #     asset_identifier: "AssetId", # required
    #     identifier: "FilterId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.domain_id #=> String
    #   resp.asset_id #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.status #=> String, one of "VALID", "INVALID"
    #   resp.configuration.column_configuration.included_column_names #=> Array
    #   resp.configuration.column_configuration.included_column_names[0] #=> String
    #   resp.configuration.row_configuration.row_filter.expression.equal_to.column_name #=> String
    #   resp.configuration.row_configuration.row_filter.expression.equal_to.value #=> String
    #   resp.configuration.row_configuration.row_filter.expression.not_equal_to.column_name #=> String
    #   resp.configuration.row_configuration.row_filter.expression.not_equal_to.value #=> String
    #   resp.configuration.row_configuration.row_filter.expression.greater_than.column_name #=> String
    #   resp.configuration.row_configuration.row_filter.expression.greater_than.value #=> String
    #   resp.configuration.row_configuration.row_filter.expression.less_than.column_name #=> String
    #   resp.configuration.row_configuration.row_filter.expression.less_than.value #=> String
    #   resp.configuration.row_configuration.row_filter.expression.greater_than_or_equal_to.column_name #=> String
    #   resp.configuration.row_configuration.row_filter.expression.greater_than_or_equal_to.value #=> String
    #   resp.configuration.row_configuration.row_filter.expression.less_than_or_equal_to.column_name #=> String
    #   resp.configuration.row_configuration.row_filter.expression.less_than_or_equal_to.value #=> String
    #   resp.configuration.row_configuration.row_filter.expression.is_null.column_name #=> String
    #   resp.configuration.row_configuration.row_filter.expression.is_not_null.column_name #=> String
    #   resp.configuration.row_configuration.row_filter.expression.in.column_name #=> String
    #   resp.configuration.row_configuration.row_filter.expression.in.values #=> Array
    #   resp.configuration.row_configuration.row_filter.expression.in.values[0] #=> String
    #   resp.configuration.row_configuration.row_filter.expression.not_in.column_name #=> String
    #   resp.configuration.row_configuration.row_filter.expression.not_in.values #=> Array
    #   resp.configuration.row_configuration.row_filter.expression.not_in.values[0] #=> String
    #   resp.configuration.row_configuration.row_filter.expression.like.column_name #=> String
    #   resp.configuration.row_configuration.row_filter.expression.like.value #=> String
    #   resp.configuration.row_configuration.row_filter.expression.not_like.column_name #=> String
    #   resp.configuration.row_configuration.row_filter.expression.not_like.value #=> String
    #   resp.configuration.row_configuration.row_filter.and #=> Array
    #   resp.configuration.row_configuration.row_filter.and[0] #=> Types::RowFilter
    #   resp.configuration.row_configuration.row_filter.or #=> Array
    #   resp.configuration.row_configuration.row_filter.or[0] #=> Types::RowFilter
    #   resp.configuration.row_configuration.sensitive #=> Boolean
    #   resp.created_at #=> Time
    #   resp.error_message #=> String
    #   resp.effective_column_names #=> Array
    #   resp.effective_column_names[0] #=> String
    #   resp.effective_row_filter #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GetAssetFilter AWS API Documentation
    #
    # @overload get_asset_filter(params = {})
    # @param [Hash] params ({})
    def get_asset_filter(params = {}, options = {})
      req = build_request(:get_asset_filter, params)
      req.send_request(options)
    end

    # Gets an Amazon DataZone asset type.
    #
    # Asset types define the categories and characteristics of different
    # kinds of data assets within Amazon DataZone.. They determine what
    # metadata fields are required, what operations are possible, and how
    # the asset integrates with other Amazon Web Services services. Asset
    # types can range from built-in types like Amazon S3 buckets and Amazon
    # Web Services Glue tables to custom types defined for specific
    # organizational needs. Understanding asset types is crucial for
    # properly organizing and managing different kinds of data resources.
    #
    # Prerequisites:
    #
    # * The asset type with identifier must exist in the domain.
    #   ResourceNotFoundException.
    #
    # * You must have the GetAssetType permission.
    #
    # * Ensure the domain-identifier value is correct and accessible.
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the Amazon DataZone domain in which the asset type exists.
    #
    # @option params [required, String] :identifier
    #   The ID of the asset type.
    #
    # @option params [String] :revision
    #   The revision of the asset type.
    #
    # @return [Types::GetAssetTypeOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAssetTypeOutput#domain_id #domain_id} => String
    #   * {Types::GetAssetTypeOutput#name #name} => String
    #   * {Types::GetAssetTypeOutput#revision #revision} => String
    #   * {Types::GetAssetTypeOutput#description #description} => String
    #   * {Types::GetAssetTypeOutput#forms_output #forms_output} => Hash&lt;String,Types::FormEntryOutput&gt;
    #   * {Types::GetAssetTypeOutput#owning_project_id #owning_project_id} => String
    #   * {Types::GetAssetTypeOutput#origin_domain_id #origin_domain_id} => String
    #   * {Types::GetAssetTypeOutput#origin_project_id #origin_project_id} => String
    #   * {Types::GetAssetTypeOutput#created_at #created_at} => Time
    #   * {Types::GetAssetTypeOutput#created_by #created_by} => String
    #   * {Types::GetAssetTypeOutput#updated_at #updated_at} => Time
    #   * {Types::GetAssetTypeOutput#updated_by #updated_by} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_asset_type({
    #     domain_identifier: "DomainId", # required
    #     identifier: "AssetTypeIdentifier", # required
    #     revision: "Revision",
    #   })
    #
    # @example Response structure
    #
    #   resp.domain_id #=> String
    #   resp.name #=> String
    #   resp.revision #=> String
    #   resp.description #=> String
    #   resp.forms_output #=> Hash
    #   resp.forms_output["FormName"].type_name #=> String
    #   resp.forms_output["FormName"].type_revision #=> String
    #   resp.forms_output["FormName"].required #=> Boolean
    #   resp.owning_project_id #=> String
    #   resp.origin_domain_id #=> String
    #   resp.origin_project_id #=> String
    #   resp.created_at #=> Time
    #   resp.created_by #=> String
    #   resp.updated_at #=> Time
    #   resp.updated_by #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GetAssetType AWS API Documentation
    #
    # @overload get_asset_type(params = {})
    # @param [Hash] params ({})
    def get_asset_type(params = {}, options = {})
      req = build_request(:get_asset_type, params)
      req.send_request(options)
    end

    # Gets a connection. In Amazon DataZone, a connection enables you to
    # connect your resources (domains, projects, and environments) to
    # external resources and services.
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the domain where we get the connection.
    #
    # @option params [required, String] :identifier
    #   The connection ID.
    #
    # @option params [Boolean] :with_secret
    #   Specifies whether a connection has a secret.
    #
    # @return [Types::GetConnectionOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetConnectionOutput#connection_credentials #connection_credentials} => Types::ConnectionCredentials
    #   * {Types::GetConnectionOutput#configurations #configurations} => Array&lt;Types::Configuration&gt;
    #   * {Types::GetConnectionOutput#connection_id #connection_id} => String
    #   * {Types::GetConnectionOutput#description #description} => String
    #   * {Types::GetConnectionOutput#domain_id #domain_id} => String
    #   * {Types::GetConnectionOutput#domain_unit_id #domain_unit_id} => String
    #   * {Types::GetConnectionOutput#environment_id #environment_id} => String
    #   * {Types::GetConnectionOutput#environment_user_role #environment_user_role} => String
    #   * {Types::GetConnectionOutput#name #name} => String
    #   * {Types::GetConnectionOutput#physical_endpoints #physical_endpoints} => Array&lt;Types::PhysicalEndpoint&gt;
    #   * {Types::GetConnectionOutput#project_id #project_id} => String
    #   * {Types::GetConnectionOutput#props #props} => Types::ConnectionPropertiesOutput
    #   * {Types::GetConnectionOutput#type #type} => String
    #   * {Types::GetConnectionOutput#scope #scope} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_connection({
    #     domain_identifier: "DomainId", # required
    #     identifier: "ConnectionId", # required
    #     with_secret: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.connection_credentials.access_key_id #=> String
    #   resp.connection_credentials.secret_access_key #=> String
    #   resp.connection_credentials.session_token #=> String
    #   resp.connection_credentials.expiration #=> Time
    #   resp.configurations #=> Array
    #   resp.configurations[0].classification #=> String
    #   resp.configurations[0].properties #=> Hash
    #   resp.configurations[0].properties["PropertyMapKeyString"] #=> String
    #   resp.connection_id #=> String
    #   resp.description #=> String
    #   resp.domain_id #=> String
    #   resp.domain_unit_id #=> String
    #   resp.environment_id #=> String
    #   resp.environment_user_role #=> String
    #   resp.name #=> String
    #   resp.physical_endpoints #=> Array
    #   resp.physical_endpoints[0].aws_location.access_role #=> String
    #   resp.physical_endpoints[0].aws_location.aws_account_id #=> String
    #   resp.physical_endpoints[0].aws_location.aws_region #=> String
    #   resp.physical_endpoints[0].aws_location.iam_connection_id #=> String
    #   resp.physical_endpoints[0].glue_connection_name #=> String
    #   resp.physical_endpoints[0].glue_connection_names #=> Array
    #   resp.physical_endpoints[0].glue_connection_names[0] #=> String
    #   resp.physical_endpoints[0].glue_connection.name #=> String
    #   resp.physical_endpoints[0].glue_connection.description #=> String
    #   resp.physical_endpoints[0].glue_connection.connection_type #=> String, one of "ATHENA", "BIGQUERY", "DATABRICKS", "DOCUMENTDB", "DYNAMODB", "HYPERPOD", "IAM", "MYSQL", "OPENSEARCH", "ORACLE", "POSTGRESQL", "REDSHIFT", "S3", "SAPHANA", "SNOWFLAKE", "SPARK", "SQLSERVER", "TERADATA", "VERTICA", "WORKFLOWS_MWAA", "AMAZON_Q", "MLFLOW"
    #   resp.physical_endpoints[0].glue_connection.match_criteria #=> Array
    #   resp.physical_endpoints[0].glue_connection.match_criteria[0] #=> String
    #   resp.physical_endpoints[0].glue_connection.connection_properties #=> Hash
    #   resp.physical_endpoints[0].glue_connection.connection_properties["String"] #=> String
    #   resp.physical_endpoints[0].glue_connection.spark_properties #=> Hash
    #   resp.physical_endpoints[0].glue_connection.spark_properties["PropertyMapKeyString"] #=> String
    #   resp.physical_endpoints[0].glue_connection.athena_properties #=> Hash
    #   resp.physical_endpoints[0].glue_connection.athena_properties["PropertyMapKeyString"] #=> String
    #   resp.physical_endpoints[0].glue_connection.python_properties #=> Hash
    #   resp.physical_endpoints[0].glue_connection.python_properties["PropertyMapKeyString"] #=> String
    #   resp.physical_endpoints[0].glue_connection.physical_connection_requirements.subnet_id #=> String
    #   resp.physical_endpoints[0].glue_connection.physical_connection_requirements.subnet_id_list #=> Array
    #   resp.physical_endpoints[0].glue_connection.physical_connection_requirements.subnet_id_list[0] #=> String
    #   resp.physical_endpoints[0].glue_connection.physical_connection_requirements.security_group_id_list #=> Array
    #   resp.physical_endpoints[0].glue_connection.physical_connection_requirements.security_group_id_list[0] #=> String
    #   resp.physical_endpoints[0].glue_connection.physical_connection_requirements.availability_zone #=> String
    #   resp.physical_endpoints[0].glue_connection.creation_time #=> Time
    #   resp.physical_endpoints[0].glue_connection.last_updated_time #=> Time
    #   resp.physical_endpoints[0].glue_connection.last_updated_by #=> String
    #   resp.physical_endpoints[0].glue_connection.status #=> String, one of "CREATING", "CREATE_FAILED", "DELETING", "DELETE_FAILED", "READY", "UPDATING", "UPDATE_FAILED", "DELETED"
    #   resp.physical_endpoints[0].glue_connection.status_reason #=> String
    #   resp.physical_endpoints[0].glue_connection.last_connection_validation_time #=> Time
    #   resp.physical_endpoints[0].glue_connection.authentication_configuration.authentication_type #=> String, one of "BASIC", "OAUTH2", "CUSTOM"
    #   resp.physical_endpoints[0].glue_connection.authentication_configuration.secret_arn #=> String
    #   resp.physical_endpoints[0].glue_connection.authentication_configuration.o_auth_2_properties.o_auth_2_grant_type #=> String, one of "AUTHORIZATION_CODE", "CLIENT_CREDENTIALS", "JWT_BEARER"
    #   resp.physical_endpoints[0].glue_connection.authentication_configuration.o_auth_2_properties.o_auth_2_client_application.user_managed_client_application_client_id #=> String
    #   resp.physical_endpoints[0].glue_connection.authentication_configuration.o_auth_2_properties.o_auth_2_client_application.a_ws_managed_client_application_reference #=> String
    #   resp.physical_endpoints[0].glue_connection.authentication_configuration.o_auth_2_properties.token_url #=> String
    #   resp.physical_endpoints[0].glue_connection.authentication_configuration.o_auth_2_properties.token_url_parameters_map #=> Hash
    #   resp.physical_endpoints[0].glue_connection.authentication_configuration.o_auth_2_properties.token_url_parameters_map["TokenUrlParametersMapKeyString"] #=> String
    #   resp.physical_endpoints[0].glue_connection.authentication_configuration.o_auth_2_properties.authorization_code_properties.authorization_code #=> String
    #   resp.physical_endpoints[0].glue_connection.authentication_configuration.o_auth_2_properties.authorization_code_properties.redirect_uri #=> String
    #   resp.physical_endpoints[0].glue_connection.authentication_configuration.o_auth_2_properties.o_auth_2_credentials.user_managed_client_application_client_secret #=> String
    #   resp.physical_endpoints[0].glue_connection.authentication_configuration.o_auth_2_properties.o_auth_2_credentials.access_token #=> String
    #   resp.physical_endpoints[0].glue_connection.authentication_configuration.o_auth_2_properties.o_auth_2_credentials.refresh_token #=> String
    #   resp.physical_endpoints[0].glue_connection.authentication_configuration.o_auth_2_properties.o_auth_2_credentials.jwt_token #=> String
    #   resp.physical_endpoints[0].glue_connection.connection_schema_version #=> Integer
    #   resp.physical_endpoints[0].glue_connection.compatible_compute_environments #=> Array
    #   resp.physical_endpoints[0].glue_connection.compatible_compute_environments[0] #=> String, one of "SPARK", "ATHENA", "PYTHON"
    #   resp.physical_endpoints[0].enable_trusted_identity_propagation #=> Boolean
    #   resp.physical_endpoints[0].host #=> String
    #   resp.physical_endpoints[0].port #=> Integer
    #   resp.physical_endpoints[0].protocol #=> String, one of "ATHENA", "GLUE_INTERACTIVE_SESSION", "HTTPS", "JDBC", "LIVY", "ODBC", "PRISM"
    #   resp.physical_endpoints[0].stage #=> String
    #   resp.project_id #=> String
    #   resp.props.athena_properties.workgroup_name #=> String
    #   resp.props.glue_properties.status #=> String, one of "CREATING", "CREATE_FAILED", "DELETING", "DELETE_FAILED", "READY", "UPDATING", "UPDATE_FAILED", "DELETED"
    #   resp.props.glue_properties.error_message #=> String
    #   resp.props.hyper_pod_properties.cluster_name #=> String
    #   resp.props.hyper_pod_properties.cluster_arn #=> String
    #   resp.props.hyper_pod_properties.orchestrator #=> String, one of "EKS", "SLURM"
    #   resp.props.iam_properties.environment_id #=> String
    #   resp.props.iam_properties.glue_lineage_sync_enabled #=> Boolean
    #   resp.props.redshift_properties.storage.cluster_name #=> String
    #   resp.props.redshift_properties.storage.workgroup_name #=> String
    #   resp.props.redshift_properties.credentials.secret_arn #=> String
    #   resp.props.redshift_properties.credentials.username_password.password #=> String
    #   resp.props.redshift_properties.credentials.username_password.username #=> String
    #   resp.props.redshift_properties.is_provisioned_secret #=> Boolean
    #   resp.props.redshift_properties.jdbc_iam_url #=> String
    #   resp.props.redshift_properties.jdbc_url #=> String
    #   resp.props.redshift_properties.redshift_temp_dir #=> String
    #   resp.props.redshift_properties.lineage_sync.lineage_job_id #=> String
    #   resp.props.redshift_properties.lineage_sync.enabled #=> Boolean
    #   resp.props.redshift_properties.lineage_sync.schedule.schedule #=> String
    #   resp.props.redshift_properties.status #=> String, one of "CREATING", "CREATE_FAILED", "DELETING", "DELETE_FAILED", "READY", "UPDATING", "UPDATE_FAILED", "DELETED"
    #   resp.props.redshift_properties.database_name #=> String
    #   resp.props.spark_emr_properties.compute_arn #=> String
    #   resp.props.spark_emr_properties.credentials.password #=> String
    #   resp.props.spark_emr_properties.credentials.username #=> String
    #   resp.props.spark_emr_properties.credentials_expiration #=> Time
    #   resp.props.spark_emr_properties.governance_type #=> String, one of "AWS_MANAGED", "USER_MANAGED"
    #   resp.props.spark_emr_properties.instance_profile_arn #=> String
    #   resp.props.spark_emr_properties.java_virtual_env #=> String
    #   resp.props.spark_emr_properties.livy_endpoint #=> String
    #   resp.props.spark_emr_properties.log_uri #=> String
    #   resp.props.spark_emr_properties.python_virtual_env #=> String
    #   resp.props.spark_emr_properties.runtime_role #=> String
    #   resp.props.spark_emr_properties.trusted_certificates_s3_uri #=> String
    #   resp.props.spark_emr_properties.certificate_data #=> String
    #   resp.props.spark_emr_properties.managed_endpoint_arn #=> String
    #   resp.props.spark_emr_properties.managed_endpoint_credentials.id #=> String
    #   resp.props.spark_emr_properties.managed_endpoint_credentials.token #=> String
    #   resp.props.spark_glue_properties.additional_args.connection #=> String
    #   resp.props.spark_glue_properties.glue_connection_name #=> String
    #   resp.props.spark_glue_properties.glue_connection_names #=> Array
    #   resp.props.spark_glue_properties.glue_connection_names[0] #=> String
    #   resp.props.spark_glue_properties.glue_version #=> String
    #   resp.props.spark_glue_properties.idle_timeout #=> Integer
    #   resp.props.spark_glue_properties.java_virtual_env #=> String
    #   resp.props.spark_glue_properties.number_of_workers #=> Integer
    #   resp.props.spark_glue_properties.python_virtual_env #=> String
    #   resp.props.spark_glue_properties.worker_type #=> String
    #   resp.props.s3_properties.s3_uri #=> String
    #   resp.props.s3_properties.s3_access_grant_location_id #=> String
    #   resp.props.s3_properties.register_s3_access_grant_location #=> Boolean
    #   resp.props.s3_properties.status #=> String, one of "CREATING", "CREATE_FAILED", "DELETING", "DELETE_FAILED", "READY", "UPDATING", "UPDATE_FAILED", "DELETED"
    #   resp.props.s3_properties.error_message #=> String
    #   resp.props.amazon_q_properties.is_enabled #=> Boolean
    #   resp.props.amazon_q_properties.profile_arn #=> String
    #   resp.props.amazon_q_properties.auth_mode #=> String
    #   resp.props.mlflow_properties.tracking_server_arn #=> String
    #   resp.props.workflows_mwaa_properties.mwaa_environment_name #=> String
    #   resp.props.lakehouse_properties.glue_lineage_sync_enabled #=> Boolean
    #   resp.type #=> String, one of "ATHENA", "BIGQUERY", "DATABRICKS", "DOCUMENTDB", "DYNAMODB", "HYPERPOD", "IAM", "MYSQL", "OPENSEARCH", "ORACLE", "POSTGRESQL", "REDSHIFT", "S3", "SAPHANA", "SNOWFLAKE", "SPARK", "SQLSERVER", "TERADATA", "VERTICA", "WORKFLOWS_MWAA", "AMAZON_Q", "MLFLOW"
    #   resp.scope #=> String, one of "DOMAIN", "PROJECT"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GetConnection AWS API Documentation
    #
    # @overload get_connection(params = {})
    # @param [Hash] params ({})
    def get_connection(params = {}, options = {})
      req = build_request(:get_connection, params)
      req.send_request(options)
    end

    # Gets data export configuration details.
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the domain where you want to get the data export
    #   configuration details.
    #
    # @return [Types::GetDataExportConfigurationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDataExportConfigurationOutput#is_export_enabled #is_export_enabled} => Boolean
    #   * {Types::GetDataExportConfigurationOutput#status #status} => String
    #   * {Types::GetDataExportConfigurationOutput#encryption_configuration #encryption_configuration} => Types::EncryptionConfiguration
    #   * {Types::GetDataExportConfigurationOutput#s3_table_bucket_arn #s3_table_bucket_arn} => String
    #   * {Types::GetDataExportConfigurationOutput#created_at #created_at} => Time
    #   * {Types::GetDataExportConfigurationOutput#updated_at #updated_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_data_export_configuration({
    #     domain_identifier: "DomainId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.is_export_enabled #=> Boolean
    #   resp.status #=> String, one of "COMPLETED", "FAILED"
    #   resp.encryption_configuration.kms_key_arn #=> String
    #   resp.encryption_configuration.sse_algorithm #=> String
    #   resp.s3_table_bucket_arn #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GetDataExportConfiguration AWS API Documentation
    #
    # @overload get_data_export_configuration(params = {})
    # @param [Hash] params ({})
    def get_data_export_configuration(params = {}, options = {})
      req = build_request(:get_data_export_configuration, params)
      req.send_request(options)
    end

    # Gets the data product.
    #
    # Prerequisites:
    #
    # * The data product ID must exist.
    #
    # * The domain must be valid and accessible.
    #
    # * User must have read or discovery permissions for the data product.
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the domain where the data product lives.
    #
    # @option params [required, String] :identifier
    #   The ID of the data product.
    #
    # @option params [String] :revision
    #   The revision of the data product.
    #
    # @return [Types::GetDataProductOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDataProductOutput#domain_id #domain_id} => String
    #   * {Types::GetDataProductOutput#id #id} => String
    #   * {Types::GetDataProductOutput#revision #revision} => String
    #   * {Types::GetDataProductOutput#owning_project_id #owning_project_id} => String
    #   * {Types::GetDataProductOutput#name #name} => String
    #   * {Types::GetDataProductOutput#status #status} => String
    #   * {Types::GetDataProductOutput#description #description} => String
    #   * {Types::GetDataProductOutput#glossary_terms #glossary_terms} => Array&lt;String&gt;
    #   * {Types::GetDataProductOutput#items #items} => Array&lt;Types::DataProductItem&gt;
    #   * {Types::GetDataProductOutput#forms_output #forms_output} => Array&lt;Types::FormOutput&gt;
    #   * {Types::GetDataProductOutput#created_at #created_at} => Time
    #   * {Types::GetDataProductOutput#created_by #created_by} => String
    #   * {Types::GetDataProductOutput#first_revision_created_at #first_revision_created_at} => Time
    #   * {Types::GetDataProductOutput#first_revision_created_by #first_revision_created_by} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_data_product({
    #     domain_identifier: "DomainId", # required
    #     identifier: "DataProductId", # required
    #     revision: "Revision",
    #   })
    #
    # @example Response structure
    #
    #   resp.domain_id #=> String
    #   resp.id #=> String
    #   resp.revision #=> String
    #   resp.owning_project_id #=> String
    #   resp.name #=> String
    #   resp.status #=> String, one of "CREATED", "CREATING", "CREATE_FAILED"
    #   resp.description #=> String
    #   resp.glossary_terms #=> Array
    #   resp.glossary_terms[0] #=> String
    #   resp.items #=> Array
    #   resp.items[0].item_type #=> String, one of "ASSET"
    #   resp.items[0].identifier #=> String
    #   resp.items[0].revision #=> String
    #   resp.items[0].glossary_terms #=> Array
    #   resp.items[0].glossary_terms[0] #=> String
    #   resp.forms_output #=> Array
    #   resp.forms_output[0].form_name #=> String
    #   resp.forms_output[0].type_name #=> String
    #   resp.forms_output[0].type_revision #=> String
    #   resp.forms_output[0].content #=> String
    #   resp.created_at #=> Time
    #   resp.created_by #=> String
    #   resp.first_revision_created_at #=> Time
    #   resp.first_revision_created_by #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GetDataProduct AWS API Documentation
    #
    # @overload get_data_product(params = {})
    # @param [Hash] params ({})
    def get_data_product(params = {}, options = {})
      req = build_request(:get_data_product, params)
      req.send_request(options)
    end

    # Gets an Amazon DataZone data source.
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the Amazon DataZone domain in which the data source exists.
    #
    # @option params [required, String] :identifier
    #   The ID of the Amazon DataZone data source.
    #
    # @return [Types::GetDataSourceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDataSourceOutput#id #id} => String
    #   * {Types::GetDataSourceOutput#status #status} => String
    #   * {Types::GetDataSourceOutput#type #type} => String
    #   * {Types::GetDataSourceOutput#name #name} => String
    #   * {Types::GetDataSourceOutput#description #description} => String
    #   * {Types::GetDataSourceOutput#domain_id #domain_id} => String
    #   * {Types::GetDataSourceOutput#project_id #project_id} => String
    #   * {Types::GetDataSourceOutput#environment_id #environment_id} => String
    #   * {Types::GetDataSourceOutput#connection_id #connection_id} => String
    #   * {Types::GetDataSourceOutput#configuration #configuration} => Types::DataSourceConfigurationOutput
    #   * {Types::GetDataSourceOutput#recommendation #recommendation} => Types::RecommendationConfiguration
    #   * {Types::GetDataSourceOutput#enable_setting #enable_setting} => String
    #   * {Types::GetDataSourceOutput#publish_on_import #publish_on_import} => Boolean
    #   * {Types::GetDataSourceOutput#asset_forms_output #asset_forms_output} => Array&lt;Types::FormOutput&gt;
    #   * {Types::GetDataSourceOutput#schedule #schedule} => Types::ScheduleConfiguration
    #   * {Types::GetDataSourceOutput#last_run_status #last_run_status} => String
    #   * {Types::GetDataSourceOutput#last_run_at #last_run_at} => Time
    #   * {Types::GetDataSourceOutput#last_run_error_message #last_run_error_message} => Types::DataSourceErrorMessage
    #   * {Types::GetDataSourceOutput#last_run_asset_count #last_run_asset_count} => Integer
    #   * {Types::GetDataSourceOutput#error_message #error_message} => Types::DataSourceErrorMessage
    #   * {Types::GetDataSourceOutput#created_at #created_at} => Time
    #   * {Types::GetDataSourceOutput#updated_at #updated_at} => Time
    #   * {Types::GetDataSourceOutput#self_grant_status #self_grant_status} => Types::SelfGrantStatusOutput
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_data_source({
    #     domain_identifier: "DomainId", # required
    #     identifier: "DataSourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.status #=> String, one of "CREATING", "FAILED_CREATION", "READY", "UPDATING", "FAILED_UPDATE", "RUNNING", "DELETING", "FAILED_DELETION"
    #   resp.type #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.domain_id #=> String
    #   resp.project_id #=> String
    #   resp.environment_id #=> String
    #   resp.connection_id #=> String
    #   resp.configuration.glue_run_configuration.account_id #=> String
    #   resp.configuration.glue_run_configuration.region #=> String
    #   resp.configuration.glue_run_configuration.data_access_role #=> String
    #   resp.configuration.glue_run_configuration.relational_filter_configurations #=> Array
    #   resp.configuration.glue_run_configuration.relational_filter_configurations[0].database_name #=> String
    #   resp.configuration.glue_run_configuration.relational_filter_configurations[0].schema_name #=> String
    #   resp.configuration.glue_run_configuration.relational_filter_configurations[0].filter_expressions #=> Array
    #   resp.configuration.glue_run_configuration.relational_filter_configurations[0].filter_expressions[0].type #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.configuration.glue_run_configuration.relational_filter_configurations[0].filter_expressions[0].expression #=> String
    #   resp.configuration.glue_run_configuration.auto_import_data_quality_result #=> Boolean
    #   resp.configuration.glue_run_configuration.catalog_name #=> String
    #   resp.configuration.redshift_run_configuration.account_id #=> String
    #   resp.configuration.redshift_run_configuration.region #=> String
    #   resp.configuration.redshift_run_configuration.data_access_role #=> String
    #   resp.configuration.redshift_run_configuration.relational_filter_configurations #=> Array
    #   resp.configuration.redshift_run_configuration.relational_filter_configurations[0].database_name #=> String
    #   resp.configuration.redshift_run_configuration.relational_filter_configurations[0].schema_name #=> String
    #   resp.configuration.redshift_run_configuration.relational_filter_configurations[0].filter_expressions #=> Array
    #   resp.configuration.redshift_run_configuration.relational_filter_configurations[0].filter_expressions[0].type #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.configuration.redshift_run_configuration.relational_filter_configurations[0].filter_expressions[0].expression #=> String
    #   resp.configuration.redshift_run_configuration.redshift_credential_configuration.secret_manager_arn #=> String
    #   resp.configuration.redshift_run_configuration.redshift_storage.redshift_cluster_source.cluster_name #=> String
    #   resp.configuration.redshift_run_configuration.redshift_storage.redshift_serverless_source.workgroup_name #=> String
    #   resp.configuration.sage_maker_run_configuration.account_id #=> String
    #   resp.configuration.sage_maker_run_configuration.region #=> String
    #   resp.configuration.sage_maker_run_configuration.tracking_assets #=> Hash
    #   resp.configuration.sage_maker_run_configuration.tracking_assets["SageMakerAssetType"] #=> Array
    #   resp.configuration.sage_maker_run_configuration.tracking_assets["SageMakerAssetType"][0] #=> String
    #   resp.recommendation.enable_business_name_generation #=> Boolean
    #   resp.enable_setting #=> String, one of "ENABLED", "DISABLED"
    #   resp.publish_on_import #=> Boolean
    #   resp.asset_forms_output #=> Array
    #   resp.asset_forms_output[0].form_name #=> String
    #   resp.asset_forms_output[0].type_name #=> String
    #   resp.asset_forms_output[0].type_revision #=> String
    #   resp.asset_forms_output[0].content #=> String
    #   resp.schedule.timezone #=> String, one of "UTC", "AFRICA_JOHANNESBURG", "AMERICA_MONTREAL", "AMERICA_SAO_PAULO", "ASIA_BAHRAIN", "ASIA_BANGKOK", "ASIA_CALCUTTA", "ASIA_DUBAI", "ASIA_HONG_KONG", "ASIA_JAKARTA", "ASIA_KUALA_LUMPUR", "ASIA_SEOUL", "ASIA_SHANGHAI", "ASIA_SINGAPORE", "ASIA_TAIPEI", "ASIA_TOKYO", "AUSTRALIA_MELBOURNE", "AUSTRALIA_SYDNEY", "CANADA_CENTRAL", "CET", "CST6CDT", "ETC_GMT", "ETC_GMT0", "ETC_GMT_ADD_0", "ETC_GMT_ADD_1", "ETC_GMT_ADD_10", "ETC_GMT_ADD_11", "ETC_GMT_ADD_12", "ETC_GMT_ADD_2", "ETC_GMT_ADD_3", "ETC_GMT_ADD_4", "ETC_GMT_ADD_5", "ETC_GMT_ADD_6", "ETC_GMT_ADD_7", "ETC_GMT_ADD_8", "ETC_GMT_ADD_9", "ETC_GMT_NEG_0", "ETC_GMT_NEG_1", "ETC_GMT_NEG_10", "ETC_GMT_NEG_11", "ETC_GMT_NEG_12", "ETC_GMT_NEG_13", "ETC_GMT_NEG_14", "ETC_GMT_NEG_2", "ETC_GMT_NEG_3", "ETC_GMT_NEG_4", "ETC_GMT_NEG_5", "ETC_GMT_NEG_6", "ETC_GMT_NEG_7", "ETC_GMT_NEG_8", "ETC_GMT_NEG_9", "EUROPE_DUBLIN", "EUROPE_LONDON", "EUROPE_PARIS", "EUROPE_STOCKHOLM", "EUROPE_ZURICH", "ISRAEL", "MEXICO_GENERAL", "MST7MDT", "PACIFIC_AUCKLAND", "US_CENTRAL", "US_EASTERN", "US_MOUNTAIN", "US_PACIFIC"
    #   resp.schedule.schedule #=> String
    #   resp.last_run_status #=> String, one of "REQUESTED", "RUNNING", "FAILED", "PARTIALLY_SUCCEEDED", "SUCCESS"
    #   resp.last_run_at #=> Time
    #   resp.last_run_error_message.error_type #=> String, one of "ACCESS_DENIED_EXCEPTION", "CONFLICT_EXCEPTION", "INTERNAL_SERVER_EXCEPTION", "RESOURCE_NOT_FOUND_EXCEPTION", "SERVICE_QUOTA_EXCEEDED_EXCEPTION", "THROTTLING_EXCEPTION", "VALIDATION_EXCEPTION"
    #   resp.last_run_error_message.error_detail #=> String
    #   resp.last_run_asset_count #=> Integer
    #   resp.error_message.error_type #=> String, one of "ACCESS_DENIED_EXCEPTION", "CONFLICT_EXCEPTION", "INTERNAL_SERVER_EXCEPTION", "RESOURCE_NOT_FOUND_EXCEPTION", "SERVICE_QUOTA_EXCEEDED_EXCEPTION", "THROTTLING_EXCEPTION", "VALIDATION_EXCEPTION"
    #   resp.error_message.error_detail #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.self_grant_status.glue_self_grant_status.self_grant_status_details #=> Array
    #   resp.self_grant_status.glue_self_grant_status.self_grant_status_details[0].database_name #=> String
    #   resp.self_grant_status.glue_self_grant_status.self_grant_status_details[0].schema_name #=> String
    #   resp.self_grant_status.glue_self_grant_status.self_grant_status_details[0].status #=> String, one of "GRANT_PENDING", "REVOKE_PENDING", "GRANT_IN_PROGRESS", "REVOKE_IN_PROGRESS", "GRANTED", "GRANT_FAILED", "REVOKE_FAILED"
    #   resp.self_grant_status.glue_self_grant_status.self_grant_status_details[0].failure_cause #=> String
    #   resp.self_grant_status.redshift_self_grant_status.self_grant_status_details #=> Array
    #   resp.self_grant_status.redshift_self_grant_status.self_grant_status_details[0].database_name #=> String
    #   resp.self_grant_status.redshift_self_grant_status.self_grant_status_details[0].schema_name #=> String
    #   resp.self_grant_status.redshift_self_grant_status.self_grant_status_details[0].status #=> String, one of "GRANT_PENDING", "REVOKE_PENDING", "GRANT_IN_PROGRESS", "REVOKE_IN_PROGRESS", "GRANTED", "GRANT_FAILED", "REVOKE_FAILED"
    #   resp.self_grant_status.redshift_self_grant_status.self_grant_status_details[0].failure_cause #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GetDataSource AWS API Documentation
    #
    # @overload get_data_source(params = {})
    # @param [Hash] params ({})
    def get_data_source(params = {}, options = {})
      req = build_request(:get_data_source, params)
      req.send_request(options)
    end

    # Gets an Amazon DataZone data source run.
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the domain in which this data source run was performed.
    #
    # @option params [required, String] :identifier
    #   The ID of the data source run.
    #
    # @return [Types::GetDataSourceRunOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDataSourceRunOutput#domain_id #domain_id} => String
    #   * {Types::GetDataSourceRunOutput#data_source_id #data_source_id} => String
    #   * {Types::GetDataSourceRunOutput#id #id} => String
    #   * {Types::GetDataSourceRunOutput#project_id #project_id} => String
    #   * {Types::GetDataSourceRunOutput#status #status} => String
    #   * {Types::GetDataSourceRunOutput#type #type} => String
    #   * {Types::GetDataSourceRunOutput#data_source_configuration_snapshot #data_source_configuration_snapshot} => String
    #   * {Types::GetDataSourceRunOutput#run_statistics_for_assets #run_statistics_for_assets} => Types::RunStatisticsForAssets
    #   * {Types::GetDataSourceRunOutput#lineage_summary #lineage_summary} => Types::DataSourceRunLineageSummary
    #   * {Types::GetDataSourceRunOutput#error_message #error_message} => Types::DataSourceErrorMessage
    #   * {Types::GetDataSourceRunOutput#created_at #created_at} => Time
    #   * {Types::GetDataSourceRunOutput#updated_at #updated_at} => Time
    #   * {Types::GetDataSourceRunOutput#started_at #started_at} => Time
    #   * {Types::GetDataSourceRunOutput#stopped_at #stopped_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_data_source_run({
    #     domain_identifier: "DomainId", # required
    #     identifier: "DataSourceRunId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.domain_id #=> String
    #   resp.data_source_id #=> String
    #   resp.id #=> String
    #   resp.project_id #=> String
    #   resp.status #=> String, one of "REQUESTED", "RUNNING", "FAILED", "PARTIALLY_SUCCEEDED", "SUCCESS"
    #   resp.type #=> String, one of "PRIORITIZED", "SCHEDULED"
    #   resp.data_source_configuration_snapshot #=> String
    #   resp.run_statistics_for_assets.added #=> Integer
    #   resp.run_statistics_for_assets.updated #=> Integer
    #   resp.run_statistics_for_assets.unchanged #=> Integer
    #   resp.run_statistics_for_assets.skipped #=> Integer
    #   resp.run_statistics_for_assets.failed #=> Integer
    #   resp.lineage_summary.import_status #=> String, one of "IN_PROGRESS", "SUCCESS", "FAILED", "PARTIALLY_SUCCEEDED"
    #   resp.error_message.error_type #=> String, one of "ACCESS_DENIED_EXCEPTION", "CONFLICT_EXCEPTION", "INTERNAL_SERVER_EXCEPTION", "RESOURCE_NOT_FOUND_EXCEPTION", "SERVICE_QUOTA_EXCEEDED_EXCEPTION", "THROTTLING_EXCEPTION", "VALIDATION_EXCEPTION"
    #   resp.error_message.error_detail #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.started_at #=> Time
    #   resp.stopped_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GetDataSourceRun AWS API Documentation
    #
    # @overload get_data_source_run(params = {})
    # @param [Hash] params ({})
    def get_data_source_run(params = {}, options = {})
      req = build_request(:get_data_source_run, params)
      req.send_request(options)
    end

    # Gets an Amazon DataZone domain.
    #
    # @option params [required, String] :identifier
    #   The identifier of the specified Amazon DataZone domain.
    #
    # @return [Types::GetDomainOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDomainOutput#id #id} => String
    #   * {Types::GetDomainOutput#root_domain_unit_id #root_domain_unit_id} => String
    #   * {Types::GetDomainOutput#name #name} => String
    #   * {Types::GetDomainOutput#description #description} => String
    #   * {Types::GetDomainOutput#single_sign_on #single_sign_on} => Types::SingleSignOn
    #   * {Types::GetDomainOutput#domain_execution_role #domain_execution_role} => String
    #   * {Types::GetDomainOutput#arn #arn} => String
    #   * {Types::GetDomainOutput#kms_key_identifier #kms_key_identifier} => String
    #   * {Types::GetDomainOutput#status #status} => String
    #   * {Types::GetDomainOutput#portal_url #portal_url} => String
    #   * {Types::GetDomainOutput#created_at #created_at} => Time
    #   * {Types::GetDomainOutput#last_updated_at #last_updated_at} => Time
    #   * {Types::GetDomainOutput#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::GetDomainOutput#domain_version #domain_version} => String
    #   * {Types::GetDomainOutput#service_role #service_role} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_domain({
    #     identifier: "DomainId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.root_domain_unit_id #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.single_sign_on.type #=> String, one of "IAM_IDC", "DISABLED"
    #   resp.single_sign_on.user_assignment #=> String, one of "AUTOMATIC", "MANUAL"
    #   resp.single_sign_on.idc_instance_arn #=> String
    #   resp.domain_execution_role #=> String
    #   resp.arn #=> String
    #   resp.kms_key_identifier #=> String
    #   resp.status #=> String, one of "CREATING", "AVAILABLE", "CREATION_FAILED", "DELETING", "DELETED", "DELETION_FAILED"
    #   resp.portal_url #=> String
    #   resp.created_at #=> Time
    #   resp.last_updated_at #=> Time
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #   resp.domain_version #=> String, one of "V1", "V2"
    #   resp.service_role #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GetDomain AWS API Documentation
    #
    # @overload get_domain(params = {})
    # @param [Hash] params ({})
    def get_domain(params = {}, options = {})
      req = build_request(:get_domain, params)
      req.send_request(options)
    end

    # Gets the details of the specified domain unit.
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the domain where you want to get a domain unit.
    #
    # @option params [required, String] :identifier
    #   The identifier of the domain unit that you want to get.
    #
    # @return [Types::GetDomainUnitOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDomainUnitOutput#id #id} => String
    #   * {Types::GetDomainUnitOutput#domain_id #domain_id} => String
    #   * {Types::GetDomainUnitOutput#name #name} => String
    #   * {Types::GetDomainUnitOutput#parent_domain_unit_id #parent_domain_unit_id} => String
    #   * {Types::GetDomainUnitOutput#description #description} => String
    #   * {Types::GetDomainUnitOutput#owners #owners} => Array&lt;Types::DomainUnitOwnerProperties&gt;
    #   * {Types::GetDomainUnitOutput#created_at #created_at} => Time
    #   * {Types::GetDomainUnitOutput#last_updated_at #last_updated_at} => Time
    #   * {Types::GetDomainUnitOutput#created_by #created_by} => String
    #   * {Types::GetDomainUnitOutput#last_updated_by #last_updated_by} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_domain_unit({
    #     domain_identifier: "DomainId", # required
    #     identifier: "DomainUnitId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.domain_id #=> String
    #   resp.name #=> String
    #   resp.parent_domain_unit_id #=> String
    #   resp.description #=> String
    #   resp.owners #=> Array
    #   resp.owners[0].user.user_id #=> String
    #   resp.owners[0].group.group_id #=> String
    #   resp.created_at #=> Time
    #   resp.last_updated_at #=> Time
    #   resp.created_by #=> String
    #   resp.last_updated_by #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GetDomainUnit AWS API Documentation
    #
    # @overload get_domain_unit(params = {})
    # @param [Hash] params ({})
    def get_domain_unit(params = {}, options = {})
      req = build_request(:get_domain_unit, params)
      req.send_request(options)
    end

    # Gets an Amazon DataZone environment.
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the Amazon DataZone domain where the environment exists.
    #
    # @option params [required, String] :identifier
    #   The ID of the Amazon DataZone environment.
    #
    # @return [Types::GetEnvironmentOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetEnvironmentOutput#project_id #project_id} => String
    #   * {Types::GetEnvironmentOutput#id #id} => String
    #   * {Types::GetEnvironmentOutput#domain_id #domain_id} => String
    #   * {Types::GetEnvironmentOutput#created_by #created_by} => String
    #   * {Types::GetEnvironmentOutput#created_at #created_at} => Time
    #   * {Types::GetEnvironmentOutput#updated_at #updated_at} => Time
    #   * {Types::GetEnvironmentOutput#name #name} => String
    #   * {Types::GetEnvironmentOutput#description #description} => String
    #   * {Types::GetEnvironmentOutput#environment_profile_id #environment_profile_id} => String
    #   * {Types::GetEnvironmentOutput#aws_account_id #aws_account_id} => String
    #   * {Types::GetEnvironmentOutput#aws_account_region #aws_account_region} => String
    #   * {Types::GetEnvironmentOutput#provider #provider} => String
    #   * {Types::GetEnvironmentOutput#provisioned_resources #provisioned_resources} => Array&lt;Types::Resource&gt;
    #   * {Types::GetEnvironmentOutput#status #status} => String
    #   * {Types::GetEnvironmentOutput#environment_actions #environment_actions} => Array&lt;Types::ConfigurableEnvironmentAction&gt;
    #   * {Types::GetEnvironmentOutput#glossary_terms #glossary_terms} => Array&lt;String&gt;
    #   * {Types::GetEnvironmentOutput#user_parameters #user_parameters} => Array&lt;Types::CustomParameter&gt;
    #   * {Types::GetEnvironmentOutput#last_deployment #last_deployment} => Types::Deployment
    #   * {Types::GetEnvironmentOutput#provisioning_properties #provisioning_properties} => Types::ProvisioningProperties
    #   * {Types::GetEnvironmentOutput#deployment_properties #deployment_properties} => Types::DeploymentProperties
    #   * {Types::GetEnvironmentOutput#environment_blueprint_id #environment_blueprint_id} => String
    #   * {Types::GetEnvironmentOutput#environment_configuration_id #environment_configuration_id} => String
    #   * {Types::GetEnvironmentOutput#environment_configuration_name #environment_configuration_name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_environment({
    #     domain_identifier: "DomainId", # required
    #     identifier: "EnvironmentId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.project_id #=> String
    #   resp.id #=> String
    #   resp.domain_id #=> String
    #   resp.created_by #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.environment_profile_id #=> String
    #   resp.aws_account_id #=> String
    #   resp.aws_account_region #=> String
    #   resp.provider #=> String
    #   resp.provisioned_resources #=> Array
    #   resp.provisioned_resources[0].provider #=> String
    #   resp.provisioned_resources[0].name #=> String
    #   resp.provisioned_resources[0].value #=> String
    #   resp.provisioned_resources[0].type #=> String
    #   resp.status #=> String, one of "ACTIVE", "CREATING", "UPDATING", "DELETING", "CREATE_FAILED", "UPDATE_FAILED", "DELETE_FAILED", "VALIDATION_FAILED", "SUSPENDED", "DISABLED", "EXPIRED", "DELETED", "INACCESSIBLE"
    #   resp.environment_actions #=> Array
    #   resp.environment_actions[0].type #=> String
    #   resp.environment_actions[0].auth #=> String, one of "IAM", "HTTPS"
    #   resp.environment_actions[0].parameters #=> Array
    #   resp.environment_actions[0].parameters[0].key #=> String
    #   resp.environment_actions[0].parameters[0].value #=> String
    #   resp.glossary_terms #=> Array
    #   resp.glossary_terms[0] #=> String
    #   resp.user_parameters #=> Array
    #   resp.user_parameters[0].key_name #=> String
    #   resp.user_parameters[0].description #=> String
    #   resp.user_parameters[0].field_type #=> String
    #   resp.user_parameters[0].default_value #=> String
    #   resp.user_parameters[0].is_editable #=> Boolean
    #   resp.user_parameters[0].is_optional #=> Boolean
    #   resp.user_parameters[0].is_update_supported #=> Boolean
    #   resp.last_deployment.deployment_id #=> String
    #   resp.last_deployment.deployment_type #=> String, one of "CREATE", "UPDATE", "DELETE"
    #   resp.last_deployment.deployment_status #=> String, one of "IN_PROGRESS", "SUCCESSFUL", "FAILED", "PENDING_DEPLOYMENT"
    #   resp.last_deployment.failure_reason.code #=> String
    #   resp.last_deployment.failure_reason.message #=> String
    #   resp.last_deployment.messages #=> Array
    #   resp.last_deployment.messages[0] #=> String
    #   resp.last_deployment.is_deployment_complete #=> Boolean
    #   resp.provisioning_properties.cloud_formation.template_url #=> String
    #   resp.deployment_properties.start_timeout_minutes #=> Integer
    #   resp.deployment_properties.end_timeout_minutes #=> Integer
    #   resp.environment_blueprint_id #=> String
    #   resp.environment_configuration_id #=> String
    #   resp.environment_configuration_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GetEnvironment AWS API Documentation
    #
    # @overload get_environment(params = {})
    # @param [Hash] params ({})
    def get_environment(params = {}, options = {})
      req = build_request(:get_environment, params)
      req.send_request(options)
    end

    # Gets the specified environment action.
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the Amazon DataZone domain in which the
    #   `GetEnvironmentAction` API is invoked.
    #
    # @option params [required, String] :environment_identifier
    #   The environment ID of the environment action.
    #
    # @option params [required, String] :identifier
    #   The ID of the environment action
    #
    # @return [Types::GetEnvironmentActionOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetEnvironmentActionOutput#domain_id #domain_id} => String
    #   * {Types::GetEnvironmentActionOutput#environment_id #environment_id} => String
    #   * {Types::GetEnvironmentActionOutput#id #id} => String
    #   * {Types::GetEnvironmentActionOutput#name #name} => String
    #   * {Types::GetEnvironmentActionOutput#parameters #parameters} => Types::ActionParameters
    #   * {Types::GetEnvironmentActionOutput#description #description} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_environment_action({
    #     domain_identifier: "DomainId", # required
    #     environment_identifier: "EnvironmentId", # required
    #     identifier: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.domain_id #=> String
    #   resp.environment_id #=> String
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.parameters.aws_console_link.uri #=> String
    #   resp.description #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GetEnvironmentAction AWS API Documentation
    #
    # @overload get_environment_action(params = {})
    # @param [Hash] params ({})
    def get_environment_action(params = {}, options = {})
      req = build_request(:get_environment_action, params)
      req.send_request(options)
    end

    # Gets an Amazon DataZone blueprint.
    #
    # @option params [required, String] :domain_identifier
    #   The identifier of the domain in which this blueprint exists.
    #
    # @option params [required, String] :identifier
    #   The ID of this Amazon DataZone blueprint.
    #
    # @return [Types::GetEnvironmentBlueprintOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetEnvironmentBlueprintOutput#id #id} => String
    #   * {Types::GetEnvironmentBlueprintOutput#name #name} => String
    #   * {Types::GetEnvironmentBlueprintOutput#description #description} => String
    #   * {Types::GetEnvironmentBlueprintOutput#provider #provider} => String
    #   * {Types::GetEnvironmentBlueprintOutput#provisioning_properties #provisioning_properties} => Types::ProvisioningProperties
    #   * {Types::GetEnvironmentBlueprintOutput#deployment_properties #deployment_properties} => Types::DeploymentProperties
    #   * {Types::GetEnvironmentBlueprintOutput#user_parameters #user_parameters} => Array&lt;Types::CustomParameter&gt;
    #   * {Types::GetEnvironmentBlueprintOutput#glossary_terms #glossary_terms} => Array&lt;String&gt;
    #   * {Types::GetEnvironmentBlueprintOutput#created_at #created_at} => Time
    #   * {Types::GetEnvironmentBlueprintOutput#updated_at #updated_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_environment_blueprint({
    #     domain_identifier: "DomainId", # required
    #     identifier: "EnvironmentBlueprintId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.provider #=> String
    #   resp.provisioning_properties.cloud_formation.template_url #=> String
    #   resp.deployment_properties.start_timeout_minutes #=> Integer
    #   resp.deployment_properties.end_timeout_minutes #=> Integer
    #   resp.user_parameters #=> Array
    #   resp.user_parameters[0].key_name #=> String
    #   resp.user_parameters[0].description #=> String
    #   resp.user_parameters[0].field_type #=> String
    #   resp.user_parameters[0].default_value #=> String
    #   resp.user_parameters[0].is_editable #=> Boolean
    #   resp.user_parameters[0].is_optional #=> Boolean
    #   resp.user_parameters[0].is_update_supported #=> Boolean
    #   resp.glossary_terms #=> Array
    #   resp.glossary_terms[0] #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GetEnvironmentBlueprint AWS API Documentation
    #
    # @overload get_environment_blueprint(params = {})
    # @param [Hash] params ({})
    def get_environment_blueprint(params = {}, options = {})
      req = build_request(:get_environment_blueprint, params)
      req.send_request(options)
    end

    # Gets the blueprint configuration in Amazon DataZone.
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the Amazon DataZone domain where this blueprint exists.
    #
    # @option params [required, String] :environment_blueprint_identifier
    #   He ID of the blueprint.
    #
    # @return [Types::GetEnvironmentBlueprintConfigurationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetEnvironmentBlueprintConfigurationOutput#domain_id #domain_id} => String
    #   * {Types::GetEnvironmentBlueprintConfigurationOutput#environment_blueprint_id #environment_blueprint_id} => String
    #   * {Types::GetEnvironmentBlueprintConfigurationOutput#provisioning_role_arn #provisioning_role_arn} => String
    #   * {Types::GetEnvironmentBlueprintConfigurationOutput#environment_role_permission_boundary #environment_role_permission_boundary} => String
    #   * {Types::GetEnvironmentBlueprintConfigurationOutput#manage_access_role_arn #manage_access_role_arn} => String
    #   * {Types::GetEnvironmentBlueprintConfigurationOutput#enabled_regions #enabled_regions} => Array&lt;String&gt;
    #   * {Types::GetEnvironmentBlueprintConfigurationOutput#regional_parameters #regional_parameters} => Hash&lt;String,Hash&lt;String,String&gt;&gt;
    #   * {Types::GetEnvironmentBlueprintConfigurationOutput#created_at #created_at} => Time
    #   * {Types::GetEnvironmentBlueprintConfigurationOutput#updated_at #updated_at} => Time
    #   * {Types::GetEnvironmentBlueprintConfigurationOutput#provisioning_configurations #provisioning_configurations} => Array&lt;Types::ProvisioningConfiguration&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_environment_blueprint_configuration({
    #     domain_identifier: "DomainId", # required
    #     environment_blueprint_identifier: "EnvironmentBlueprintId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.domain_id #=> String
    #   resp.environment_blueprint_id #=> String
    #   resp.provisioning_role_arn #=> String
    #   resp.environment_role_permission_boundary #=> String
    #   resp.manage_access_role_arn #=> String
    #   resp.enabled_regions #=> Array
    #   resp.enabled_regions[0] #=> String
    #   resp.regional_parameters #=> Hash
    #   resp.regional_parameters["RegionName"] #=> Hash
    #   resp.regional_parameters["RegionName"]["String"] #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.provisioning_configurations #=> Array
    #   resp.provisioning_configurations[0].lake_formation_configuration.location_registration_role #=> String
    #   resp.provisioning_configurations[0].lake_formation_configuration.location_registration_exclude_s3_locations #=> Array
    #   resp.provisioning_configurations[0].lake_formation_configuration.location_registration_exclude_s3_locations[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GetEnvironmentBlueprintConfiguration AWS API Documentation
    #
    # @overload get_environment_blueprint_configuration(params = {})
    # @param [Hash] params ({})
    def get_environment_blueprint_configuration(params = {}, options = {})
      req = build_request(:get_environment_blueprint_configuration, params)
      req.send_request(options)
    end

    # Gets the credentials of an environment in Amazon DataZone.
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the Amazon DataZone domain in which this environment and its
    #   credentials exist.
    #
    # @option params [required, String] :environment_identifier
    #   The ID of the environment whose credentials this operation gets.
    #
    # @return [Types::GetEnvironmentCredentialsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetEnvironmentCredentialsOutput#access_key_id #access_key_id} => String
    #   * {Types::GetEnvironmentCredentialsOutput#secret_access_key #secret_access_key} => String
    #   * {Types::GetEnvironmentCredentialsOutput#session_token #session_token} => String
    #   * {Types::GetEnvironmentCredentialsOutput#expiration #expiration} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_environment_credentials({
    #     domain_identifier: "DomainId", # required
    #     environment_identifier: "EnvironmentId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.access_key_id #=> String
    #   resp.secret_access_key #=> String
    #   resp.session_token #=> String
    #   resp.expiration #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GetEnvironmentCredentials AWS API Documentation
    #
    # @overload get_environment_credentials(params = {})
    # @param [Hash] params ({})
    def get_environment_credentials(params = {}, options = {})
      req = build_request(:get_environment_credentials, params)
      req.send_request(options)
    end

    # Gets an evinronment profile in Amazon DataZone.
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the Amazon DataZone domain in which this environment profile
    #   exists.
    #
    # @option params [required, String] :identifier
    #   The ID of the environment profile.
    #
    # @return [Types::GetEnvironmentProfileOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetEnvironmentProfileOutput#id #id} => String
    #   * {Types::GetEnvironmentProfileOutput#domain_id #domain_id} => String
    #   * {Types::GetEnvironmentProfileOutput#aws_account_id #aws_account_id} => String
    #   * {Types::GetEnvironmentProfileOutput#aws_account_region #aws_account_region} => String
    #   * {Types::GetEnvironmentProfileOutput#created_by #created_by} => String
    #   * {Types::GetEnvironmentProfileOutput#created_at #created_at} => Time
    #   * {Types::GetEnvironmentProfileOutput#updated_at #updated_at} => Time
    #   * {Types::GetEnvironmentProfileOutput#name #name} => String
    #   * {Types::GetEnvironmentProfileOutput#description #description} => String
    #   * {Types::GetEnvironmentProfileOutput#environment_blueprint_id #environment_blueprint_id} => String
    #   * {Types::GetEnvironmentProfileOutput#project_id #project_id} => String
    #   * {Types::GetEnvironmentProfileOutput#user_parameters #user_parameters} => Array&lt;Types::CustomParameter&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_environment_profile({
    #     domain_identifier: "DomainId", # required
    #     identifier: "EnvironmentProfileId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.domain_id #=> String
    #   resp.aws_account_id #=> String
    #   resp.aws_account_region #=> String
    #   resp.created_by #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.environment_blueprint_id #=> String
    #   resp.project_id #=> String
    #   resp.user_parameters #=> Array
    #   resp.user_parameters[0].key_name #=> String
    #   resp.user_parameters[0].description #=> String
    #   resp.user_parameters[0].field_type #=> String
    #   resp.user_parameters[0].default_value #=> String
    #   resp.user_parameters[0].is_editable #=> Boolean
    #   resp.user_parameters[0].is_optional #=> Boolean
    #   resp.user_parameters[0].is_update_supported #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GetEnvironmentProfile AWS API Documentation
    #
    # @overload get_environment_profile(params = {})
    # @param [Hash] params ({})
    def get_environment_profile(params = {}, options = {})
      req = build_request(:get_environment_profile, params)
      req.send_request(options)
    end

    # Gets a metadata form type in Amazon DataZone.
    #
    # Form types define the structure and validation rules for collecting
    # metadata about assets in Amazon DataZone. They act as templates that
    # ensure consistent metadata capture across similar types of assets,
    # while allowing for customization to meet specific organizational
    # needs. Form types can include required fields, validation rules, and
    # dependencies, helping maintain high-quality metadata that makes data
    # assets more discoverable and usable.
    #
    # * The form type with the specified identifier must exist in the given
    #   domain.
    #
    # * The domain must be valid and active.
    #
    # * User must have permission on the form type.
    #
    # * The form type should not be deleted or in an invalid state.
    #
    # One use case for this API is to determine whether a form field is
    # indexed for search.
    #
    # A searchable field will be annotated with
    # `@amazon.datazone#searchable`. By default, searchable fields are
    # indexed for semantic search, where related query terms will match the
    # attribute value even if they are not stemmed or keyword matches. If a
    # field is indexed technical identifier search, it will be annotated
    # with `@amazon.datazone#searchable(modes:["TECHNICAL"])`. If a field is
    # indexed for lexical search (supports stemmed and prefix matches but
    # not semantic matches), it will be annotated with
    # `@amazon.datazone#searchable(modes:["LEXICAL"])`.
    #
    # A field storing glossary term IDs (which is filterable) will be
    # annotated with `@amazon.datazone#glossaryterm("${glossaryId}")`.
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the Amazon DataZone domain in which this metadata form type
    #   exists.
    #
    # @option params [required, String] :form_type_identifier
    #   The ID of the metadata form type.
    #
    # @option params [String] :revision
    #   The revision of this metadata form type.
    #
    # @return [Types::GetFormTypeOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetFormTypeOutput#domain_id #domain_id} => String
    #   * {Types::GetFormTypeOutput#name #name} => String
    #   * {Types::GetFormTypeOutput#revision #revision} => String
    #   * {Types::GetFormTypeOutput#model #model} => Types::Model
    #   * {Types::GetFormTypeOutput#owning_project_id #owning_project_id} => String
    #   * {Types::GetFormTypeOutput#origin_domain_id #origin_domain_id} => String
    #   * {Types::GetFormTypeOutput#origin_project_id #origin_project_id} => String
    #   * {Types::GetFormTypeOutput#status #status} => String
    #   * {Types::GetFormTypeOutput#created_at #created_at} => Time
    #   * {Types::GetFormTypeOutput#created_by #created_by} => String
    #   * {Types::GetFormTypeOutput#description #description} => String
    #   * {Types::GetFormTypeOutput#imports #imports} => Array&lt;Types::Import&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_form_type({
    #     domain_identifier: "DomainId", # required
    #     form_type_identifier: "FormTypeIdentifier", # required
    #     revision: "Revision",
    #   })
    #
    # @example Response structure
    #
    #   resp.domain_id #=> String
    #   resp.name #=> String
    #   resp.revision #=> String
    #   resp.model.smithy #=> String
    #   resp.owning_project_id #=> String
    #   resp.origin_domain_id #=> String
    #   resp.origin_project_id #=> String
    #   resp.status #=> String, one of "ENABLED", "DISABLED"
    #   resp.created_at #=> Time
    #   resp.created_by #=> String
    #   resp.description #=> String
    #   resp.imports #=> Array
    #   resp.imports[0].name #=> String
    #   resp.imports[0].revision #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GetFormType AWS API Documentation
    #
    # @overload get_form_type(params = {})
    # @param [Hash] params ({})
    def get_form_type(params = {}, options = {})
      req = build_request(:get_form_type, params)
      req.send_request(options)
    end

    # Gets a business glossary in Amazon DataZone.
    #
    # Prerequisites:
    #
    # * The specified glossary ID must exist and be associated with the
    #   given domain.
    #
    # * The caller must have the `datazone:GetGlossary` permission on the
    #   domain.
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the Amazon DataZone domain in which this business glossary
    #   exists.
    #
    # @option params [required, String] :identifier
    #   The ID of the business glossary.
    #
    # @return [Types::GetGlossaryOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetGlossaryOutput#domain_id #domain_id} => String
    #   * {Types::GetGlossaryOutput#id #id} => String
    #   * {Types::GetGlossaryOutput#owning_project_id #owning_project_id} => String
    #   * {Types::GetGlossaryOutput#name #name} => String
    #   * {Types::GetGlossaryOutput#description #description} => String
    #   * {Types::GetGlossaryOutput#status #status} => String
    #   * {Types::GetGlossaryOutput#created_at #created_at} => Time
    #   * {Types::GetGlossaryOutput#created_by #created_by} => String
    #   * {Types::GetGlossaryOutput#updated_at #updated_at} => Time
    #   * {Types::GetGlossaryOutput#updated_by #updated_by} => String
    #   * {Types::GetGlossaryOutput#usage_restrictions #usage_restrictions} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_glossary({
    #     domain_identifier: "DomainId", # required
    #     identifier: "GlossaryId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.domain_id #=> String
    #   resp.id #=> String
    #   resp.owning_project_id #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.status #=> String, one of "DISABLED", "ENABLED"
    #   resp.created_at #=> Time
    #   resp.created_by #=> String
    #   resp.updated_at #=> Time
    #   resp.updated_by #=> String
    #   resp.usage_restrictions #=> Array
    #   resp.usage_restrictions[0] #=> String, one of "ASSET_GOVERNED_TERMS"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GetGlossary AWS API Documentation
    #
    # @overload get_glossary(params = {})
    # @param [Hash] params ({})
    def get_glossary(params = {}, options = {})
      req = build_request(:get_glossary, params)
      req.send_request(options)
    end

    # Gets a business glossary term in Amazon DataZone.
    #
    # Prerequisites:
    #
    # * Glossary term with identifier must exist in the domain.
    #
    # * User must have permission on the glossary term.
    #
    # * Domain must be accessible and active.
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the Amazon DataZone domain in which this business glossary
    #   term exists.
    #
    # @option params [required, String] :identifier
    #   The ID of the business glossary term.
    #
    # @return [Types::GetGlossaryTermOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetGlossaryTermOutput#domain_id #domain_id} => String
    #   * {Types::GetGlossaryTermOutput#glossary_id #glossary_id} => String
    #   * {Types::GetGlossaryTermOutput#id #id} => String
    #   * {Types::GetGlossaryTermOutput#name #name} => String
    #   * {Types::GetGlossaryTermOutput#short_description #short_description} => String
    #   * {Types::GetGlossaryTermOutput#long_description #long_description} => String
    #   * {Types::GetGlossaryTermOutput#term_relations #term_relations} => Types::TermRelations
    #   * {Types::GetGlossaryTermOutput#status #status} => String
    #   * {Types::GetGlossaryTermOutput#created_at #created_at} => Time
    #   * {Types::GetGlossaryTermOutput#created_by #created_by} => String
    #   * {Types::GetGlossaryTermOutput#updated_at #updated_at} => Time
    #   * {Types::GetGlossaryTermOutput#updated_by #updated_by} => String
    #   * {Types::GetGlossaryTermOutput#usage_restrictions #usage_restrictions} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_glossary_term({
    #     domain_identifier: "DomainId", # required
    #     identifier: "GlossaryTermId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.domain_id #=> String
    #   resp.glossary_id #=> String
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.short_description #=> String
    #   resp.long_description #=> String
    #   resp.term_relations.is_a #=> Array
    #   resp.term_relations.is_a[0] #=> String
    #   resp.term_relations.classifies #=> Array
    #   resp.term_relations.classifies[0] #=> String
    #   resp.status #=> String, one of "ENABLED", "DISABLED"
    #   resp.created_at #=> Time
    #   resp.created_by #=> String
    #   resp.updated_at #=> Time
    #   resp.updated_by #=> String
    #   resp.usage_restrictions #=> Array
    #   resp.usage_restrictions[0] #=> String, one of "ASSET_GOVERNED_TERMS"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GetGlossaryTerm AWS API Documentation
    #
    # @overload get_glossary_term(params = {})
    # @param [Hash] params ({})
    def get_glossary_term(params = {}, options = {})
      req = build_request(:get_glossary_term, params)
      req.send_request(options)
    end

    # Gets a group profile in Amazon DataZone.
    #
    # @option params [required, String] :domain_identifier
    #   The identifier of the Amazon DataZone domain in which the group
    #   profile exists.
    #
    # @option params [required, String] :group_identifier
    #   The identifier of the group profile.
    #
    # @return [Types::GetGroupProfileOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetGroupProfileOutput#domain_id #domain_id} => String
    #   * {Types::GetGroupProfileOutput#id #id} => String
    #   * {Types::GetGroupProfileOutput#status #status} => String
    #   * {Types::GetGroupProfileOutput#group_name #group_name} => String
    #   * {Types::GetGroupProfileOutput#role_principal_arn #role_principal_arn} => String
    #   * {Types::GetGroupProfileOutput#role_principal_id #role_principal_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_group_profile({
    #     domain_identifier: "DomainId", # required
    #     group_identifier: "GroupIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.domain_id #=> String
    #   resp.id #=> String
    #   resp.status #=> String, one of "ASSIGNED", "NOT_ASSIGNED"
    #   resp.group_name #=> String
    #   resp.role_principal_arn #=> String
    #   resp.role_principal_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GetGroupProfile AWS API Documentation
    #
    # @overload get_group_profile(params = {})
    # @param [Hash] params ({})
    def get_group_profile(params = {}, options = {})
      req = build_request(:get_group_profile, params)
      req.send_request(options)
    end

    # Gets the data portal URL for the specified Amazon DataZone domain.
    #
    # @option params [required, String] :domain_identifier
    #   the ID of the Amazon DataZone domain the data portal of which you want
    #   to get.
    #
    # @return [Types::GetIamPortalLoginUrlOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetIamPortalLoginUrlOutput#auth_code_url #auth_code_url} => String
    #   * {Types::GetIamPortalLoginUrlOutput#user_profile_id #user_profile_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_iam_portal_login_url({
    #     domain_identifier: "DomainId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.auth_code_url #=> String
    #   resp.user_profile_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GetIamPortalLoginUrl AWS API Documentation
    #
    # @overload get_iam_portal_login_url(params = {})
    # @param [Hash] params ({})
    def get_iam_portal_login_url(params = {}, options = {})
      req = build_request(:get_iam_portal_login_url, params)
      req.send_request(options)
    end

    # The details of the job run.
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the domain.
    #
    # @option params [required, String] :identifier
    #   The ID of the job run.
    #
    # @return [Types::GetJobRunOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetJobRunOutput#domain_id #domain_id} => String
    #   * {Types::GetJobRunOutput#id #id} => String
    #   * {Types::GetJobRunOutput#job_id #job_id} => String
    #   * {Types::GetJobRunOutput#job_type #job_type} => String
    #   * {Types::GetJobRunOutput#run_mode #run_mode} => String
    #   * {Types::GetJobRunOutput#details #details} => Types::JobRunDetails
    #   * {Types::GetJobRunOutput#status #status} => String
    #   * {Types::GetJobRunOutput#error #error} => Types::JobRunError
    #   * {Types::GetJobRunOutput#created_by #created_by} => String
    #   * {Types::GetJobRunOutput#created_at #created_at} => Time
    #   * {Types::GetJobRunOutput#start_time #start_time} => Time
    #   * {Types::GetJobRunOutput#end_time #end_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_job_run({
    #     domain_identifier: "DomainId", # required
    #     identifier: "RunIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.domain_id #=> String
    #   resp.id #=> String
    #   resp.job_id #=> String
    #   resp.job_type #=> String, one of "LINEAGE"
    #   resp.run_mode #=> String, one of "SCHEDULED", "ON_DEMAND"
    #   resp.details.lineage_run_details.sql_query_run_details.query_start_time #=> Time
    #   resp.details.lineage_run_details.sql_query_run_details.query_end_time #=> Time
    #   resp.details.lineage_run_details.sql_query_run_details.total_queries_processed #=> Integer
    #   resp.details.lineage_run_details.sql_query_run_details.num_queries_failed #=> Integer
    #   resp.details.lineage_run_details.sql_query_run_details.error_messages #=> Array
    #   resp.details.lineage_run_details.sql_query_run_details.error_messages[0] #=> String
    #   resp.status #=> String, one of "SCHEDULED", "IN_PROGRESS", "SUCCESS", "PARTIALLY_SUCCEEDED", "FAILED", "ABORTED", "TIMED_OUT", "CANCELED"
    #   resp.error.message #=> String
    #   resp.created_by #=> String
    #   resp.created_at #=> Time
    #   resp.start_time #=> Time
    #   resp.end_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GetJobRun AWS API Documentation
    #
    # @overload get_job_run(params = {})
    # @param [Hash] params ({})
    def get_job_run(params = {}, options = {})
      req = build_request(:get_job_run, params)
      req.send_request(options)
    end

    # Describes the lineage event.
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the domain.
    #
    # @option params [required, String] :identifier
    #   The ID of the lineage event.
    #
    # @return [Types::GetLineageEventOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetLineageEventOutput#domain_id #domain_id} => String
    #   * {Types::GetLineageEventOutput#id #id} => String
    #   * {Types::GetLineageEventOutput#event #event} => String
    #   * {Types::GetLineageEventOutput#created_by #created_by} => String
    #   * {Types::GetLineageEventOutput#processing_status #processing_status} => String
    #   * {Types::GetLineageEventOutput#event_time #event_time} => Time
    #   * {Types::GetLineageEventOutput#created_at #created_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_lineage_event({
    #     domain_identifier: "DomainId", # required
    #     identifier: "LineageEventIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.domain_id #=> String
    #   resp.id #=> String
    #   resp.event #=> String
    #   resp.created_by #=> String
    #   resp.processing_status #=> String, one of "REQUESTED", "PROCESSING", "SUCCESS", "FAILED"
    #   resp.event_time #=> Time
    #   resp.created_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GetLineageEvent AWS API Documentation
    #
    # @overload get_lineage_event(params = {})
    # @param [Hash] params ({})
    def get_lineage_event(params = {}, options = {})
      req = build_request(:get_lineage_event, params)
      req.send_request(options)
    end

    # Gets the data lineage node.
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the domain in which you want to get the data lineage node.
    #
    # @option params [required, String] :identifier
    #   The ID of the data lineage node that you want to get.
    #
    #   Both, a lineage node identifier generated by Amazon DataZone and a
    #   `sourceIdentifier` of the lineage node are supported. If
    #   `sourceIdentifier` is greater than 1800 characters, you can use
    #   lineage node identifier generated by Amazon DataZone to get the node
    #   details.
    #
    # @option params [Time,DateTime,Date,Integer,String] :event_timestamp
    #   The event time stamp for which you want to get the data lineage node.
    #
    # @return [Types::GetLineageNodeOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetLineageNodeOutput#domain_id #domain_id} => String
    #   * {Types::GetLineageNodeOutput#name #name} => String
    #   * {Types::GetLineageNodeOutput#description #description} => String
    #   * {Types::GetLineageNodeOutput#created_at #created_at} => Time
    #   * {Types::GetLineageNodeOutput#created_by #created_by} => String
    #   * {Types::GetLineageNodeOutput#updated_at #updated_at} => Time
    #   * {Types::GetLineageNodeOutput#updated_by #updated_by} => String
    #   * {Types::GetLineageNodeOutput#id #id} => String
    #   * {Types::GetLineageNodeOutput#type_name #type_name} => String
    #   * {Types::GetLineageNodeOutput#type_revision #type_revision} => String
    #   * {Types::GetLineageNodeOutput#source_identifier #source_identifier} => String
    #   * {Types::GetLineageNodeOutput#event_timestamp #event_timestamp} => Time
    #   * {Types::GetLineageNodeOutput#forms_output #forms_output} => Array&lt;Types::FormOutput&gt;
    #   * {Types::GetLineageNodeOutput#upstream_nodes #upstream_nodes} => Array&lt;Types::LineageNodeReference&gt;
    #   * {Types::GetLineageNodeOutput#downstream_nodes #downstream_nodes} => Array&lt;Types::LineageNodeReference&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_lineage_node({
    #     domain_identifier: "DomainId", # required
    #     identifier: "LineageNodeIdentifier", # required
    #     event_timestamp: Time.now,
    #   })
    #
    # @example Response structure
    #
    #   resp.domain_id #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.created_at #=> Time
    #   resp.created_by #=> String
    #   resp.updated_at #=> Time
    #   resp.updated_by #=> String
    #   resp.id #=> String
    #   resp.type_name #=> String
    #   resp.type_revision #=> String
    #   resp.source_identifier #=> String
    #   resp.event_timestamp #=> Time
    #   resp.forms_output #=> Array
    #   resp.forms_output[0].form_name #=> String
    #   resp.forms_output[0].type_name #=> String
    #   resp.forms_output[0].type_revision #=> String
    #   resp.forms_output[0].content #=> String
    #   resp.upstream_nodes #=> Array
    #   resp.upstream_nodes[0].id #=> String
    #   resp.upstream_nodes[0].event_timestamp #=> Time
    #   resp.downstream_nodes #=> Array
    #   resp.downstream_nodes[0].id #=> String
    #   resp.downstream_nodes[0].event_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GetLineageNode AWS API Documentation
    #
    # @overload get_lineage_node(params = {})
    # @param [Hash] params ({})
    def get_lineage_node(params = {}, options = {})
      req = build_request(:get_lineage_node, params)
      req.send_request(options)
    end

    # Gets a listing (a record of an asset at a given time). If you specify
    # a listing version, only details that are specific to that version are
    # returned.
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the Amazon DataZone domain.
    #
    # @option params [required, String] :identifier
    #   The ID of the listing.
    #
    # @option params [String] :listing_revision
    #   The revision of the listing.
    #
    # @return [Types::GetListingOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetListingOutput#domain_id #domain_id} => String
    #   * {Types::GetListingOutput#id #id} => String
    #   * {Types::GetListingOutput#listing_revision #listing_revision} => String
    #   * {Types::GetListingOutput#created_at #created_at} => Time
    #   * {Types::GetListingOutput#updated_at #updated_at} => Time
    #   * {Types::GetListingOutput#created_by #created_by} => String
    #   * {Types::GetListingOutput#updated_by #updated_by} => String
    #   * {Types::GetListingOutput#item #item} => Types::ListingItem
    #   * {Types::GetListingOutput#name #name} => String
    #   * {Types::GetListingOutput#description #description} => String
    #   * {Types::GetListingOutput#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_listing({
    #     domain_identifier: "DomainId", # required
    #     identifier: "ListingId", # required
    #     listing_revision: "Revision",
    #   })
    #
    # @example Response structure
    #
    #   resp.domain_id #=> String
    #   resp.id #=> String
    #   resp.listing_revision #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.created_by #=> String
    #   resp.updated_by #=> String
    #   resp.item.asset_listing.asset_id #=> String
    #   resp.item.asset_listing.asset_revision #=> String
    #   resp.item.asset_listing.asset_type #=> String
    #   resp.item.asset_listing.created_at #=> Time
    #   resp.item.asset_listing.forms #=> String
    #   resp.item.asset_listing.latest_time_series_data_point_forms #=> Array
    #   resp.item.asset_listing.latest_time_series_data_point_forms[0].form_name #=> String
    #   resp.item.asset_listing.latest_time_series_data_point_forms[0].type_identifier #=> String
    #   resp.item.asset_listing.latest_time_series_data_point_forms[0].type_revision #=> String
    #   resp.item.asset_listing.latest_time_series_data_point_forms[0].timestamp #=> Time
    #   resp.item.asset_listing.latest_time_series_data_point_forms[0].content_summary #=> String
    #   resp.item.asset_listing.latest_time_series_data_point_forms[0].id #=> String
    #   resp.item.asset_listing.glossary_terms #=> Array
    #   resp.item.asset_listing.glossary_terms[0].name #=> String
    #   resp.item.asset_listing.glossary_terms[0].short_description #=> String
    #   resp.item.asset_listing.governed_glossary_terms #=> Array
    #   resp.item.asset_listing.governed_glossary_terms[0].name #=> String
    #   resp.item.asset_listing.governed_glossary_terms[0].short_description #=> String
    #   resp.item.asset_listing.owning_project_id #=> String
    #   resp.item.data_product_listing.data_product_id #=> String
    #   resp.item.data_product_listing.data_product_revision #=> String
    #   resp.item.data_product_listing.created_at #=> Time
    #   resp.item.data_product_listing.forms #=> String
    #   resp.item.data_product_listing.glossary_terms #=> Array
    #   resp.item.data_product_listing.glossary_terms[0].name #=> String
    #   resp.item.data_product_listing.glossary_terms[0].short_description #=> String
    #   resp.item.data_product_listing.owning_project_id #=> String
    #   resp.item.data_product_listing.items #=> Array
    #   resp.item.data_product_listing.items[0].listing_id #=> String
    #   resp.item.data_product_listing.items[0].listing_revision #=> String
    #   resp.item.data_product_listing.items[0].glossary_terms #=> Array
    #   resp.item.data_product_listing.items[0].glossary_terms[0].name #=> String
    #   resp.item.data_product_listing.items[0].glossary_terms[0].short_description #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.status #=> String, one of "CREATING", "ACTIVE", "INACTIVE"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GetListing AWS API Documentation
    #
    # @overload get_listing(params = {})
    # @param [Hash] params ({})
    def get_listing(params = {}, options = {})
      req = build_request(:get_listing, params)
      req.send_request(options)
    end

    # Gets a metadata generation run in Amazon DataZone.
    #
    # Prerequisites:
    #
    # * Valid domain and run identifier.
    #
    # * The metadata generation run must exist.
    #
    # * User must have read access to the metadata run.
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the Amazon DataZone domain the metadata generation run of
    #   which you want to get.
    #
    # @option params [required, String] :identifier
    #   The identifier of the metadata generation run.
    #
    # @option params [String] :type
    #   The type of the metadata generation run.
    #
    # @return [Types::GetMetadataGenerationRunOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetMetadataGenerationRunOutput#domain_id #domain_id} => String
    #   * {Types::GetMetadataGenerationRunOutput#id #id} => String
    #   * {Types::GetMetadataGenerationRunOutput#target #target} => Types::MetadataGenerationRunTarget
    #   * {Types::GetMetadataGenerationRunOutput#status #status} => String
    #   * {Types::GetMetadataGenerationRunOutput#type #type} => String
    #   * {Types::GetMetadataGenerationRunOutput#types #types} => Array&lt;String&gt;
    #   * {Types::GetMetadataGenerationRunOutput#created_at #created_at} => Time
    #   * {Types::GetMetadataGenerationRunOutput#created_by #created_by} => String
    #   * {Types::GetMetadataGenerationRunOutput#owning_project_id #owning_project_id} => String
    #   * {Types::GetMetadataGenerationRunOutput#type_stats #type_stats} => Array&lt;Types::MetadataGenerationRunTypeStat&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_metadata_generation_run({
    #     domain_identifier: "DomainId", # required
    #     identifier: "MetadataGenerationRunIdentifier", # required
    #     type: "BUSINESS_DESCRIPTIONS", # accepts BUSINESS_DESCRIPTIONS, BUSINESS_NAMES, BUSINESS_GLOSSARY_ASSOCIATIONS
    #   })
    #
    # @example Response structure
    #
    #   resp.domain_id #=> String
    #   resp.id #=> String
    #   resp.target.type #=> String, one of "ASSET"
    #   resp.target.identifier #=> String
    #   resp.target.revision #=> String
    #   resp.status #=> String, one of "SUBMITTED", "IN_PROGRESS", "CANCELED", "SUCCEEDED", "FAILED", "PARTIALLY_SUCCEEDED"
    #   resp.type #=> String, one of "BUSINESS_DESCRIPTIONS", "BUSINESS_NAMES", "BUSINESS_GLOSSARY_ASSOCIATIONS"
    #   resp.types #=> Array
    #   resp.types[0] #=> String, one of "BUSINESS_DESCRIPTIONS", "BUSINESS_NAMES", "BUSINESS_GLOSSARY_ASSOCIATIONS"
    #   resp.created_at #=> Time
    #   resp.created_by #=> String
    #   resp.owning_project_id #=> String
    #   resp.type_stats #=> Array
    #   resp.type_stats[0].type #=> String, one of "BUSINESS_DESCRIPTIONS", "BUSINESS_NAMES", "BUSINESS_GLOSSARY_ASSOCIATIONS"
    #   resp.type_stats[0].status #=> String, one of "SUBMITTED", "IN_PROGRESS", "CANCELED", "SUCCEEDED", "FAILED", "PARTIALLY_SUCCEEDED"
    #   resp.type_stats[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GetMetadataGenerationRun AWS API Documentation
    #
    # @overload get_metadata_generation_run(params = {})
    # @param [Hash] params ({})
    def get_metadata_generation_run(params = {}, options = {})
      req = build_request(:get_metadata_generation_run, params)
      req.send_request(options)
    end

    # Gets the details of a notebook run in an Amazon DataZone domain.
    #
    # @option params [required, String] :domain_identifier
    #   The identifier of the Amazon DataZone domain in which the notebook run
    #   exists.
    #
    # @option params [required, String] :identifier
    #   The identifier of the notebook run.
    #
    # @return [Types::GetNotebookRunOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetNotebookRunOutput#id #id} => String
    #   * {Types::GetNotebookRunOutput#domain_id #domain_id} => String
    #   * {Types::GetNotebookRunOutput#owning_project_id #owning_project_id} => String
    #   * {Types::GetNotebookRunOutput#notebook_id #notebook_id} => String
    #   * {Types::GetNotebookRunOutput#schedule_id #schedule_id} => String
    #   * {Types::GetNotebookRunOutput#status #status} => String
    #   * {Types::GetNotebookRunOutput#cell_order #cell_order} => Array&lt;Types::CellInformation&gt;
    #   * {Types::GetNotebookRunOutput#metadata #metadata} => Hash&lt;String,String&gt;
    #   * {Types::GetNotebookRunOutput#parameters #parameters} => Hash&lt;String,String&gt;
    #   * {Types::GetNotebookRunOutput#compute_configuration #compute_configuration} => Types::ComputeConfig
    #   * {Types::GetNotebookRunOutput#network_configuration #network_configuration} => Types::NetworkConfig
    #   * {Types::GetNotebookRunOutput#timeout_configuration #timeout_configuration} => Types::TimeoutConfig
    #   * {Types::GetNotebookRunOutput#environment_configuration #environment_configuration} => Types::EnvironmentConfig
    #   * {Types::GetNotebookRunOutput#storage_configuration #storage_configuration} => Types::StorageConfig
    #   * {Types::GetNotebookRunOutput#trigger_source #trigger_source} => Types::TriggerSource
    #   * {Types::GetNotebookRunOutput#error #error} => Types::NotebookRunError
    #   * {Types::GetNotebookRunOutput#created_at #created_at} => Time
    #   * {Types::GetNotebookRunOutput#created_by #created_by} => String
    #   * {Types::GetNotebookRunOutput#updated_at #updated_at} => Time
    #   * {Types::GetNotebookRunOutput#updated_by #updated_by} => String
    #   * {Types::GetNotebookRunOutput#started_at #started_at} => Time
    #   * {Types::GetNotebookRunOutput#completed_at #completed_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_notebook_run({
    #     domain_identifier: "DomainId", # required
    #     identifier: "NotebookRunId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.domain_id #=> String
    #   resp.owning_project_id #=> String
    #   resp.notebook_id #=> String
    #   resp.schedule_id #=> String
    #   resp.status #=> String, one of "QUEUED", "STARTING", "RUNNING", "STOPPING", "STOPPED", "SUCCEEDED", "FAILED"
    #   resp.cell_order #=> Array
    #   resp.metadata #=> Hash
    #   resp.metadata["MetadataKey"] #=> String
    #   resp.parameters #=> Hash
    #   resp.parameters["ParameterKey"] #=> String
    #   resp.compute_configuration.instance_type #=> String
    #   resp.compute_configuration.environment_version #=> String
    #   resp.network_configuration.network_access_type #=> String, one of "PUBLIC_INTERNET_ONLY", "VPC_ONLY"
    #   resp.network_configuration.vpc_id #=> String
    #   resp.network_configuration.subnet_ids #=> Array
    #   resp.network_configuration.subnet_ids[0] #=> String
    #   resp.network_configuration.security_group_ids #=> Array
    #   resp.network_configuration.security_group_ids[0] #=> String
    #   resp.timeout_configuration.run_timeout_in_minutes #=> Integer
    #   resp.environment_configuration.image_version #=> String
    #   resp.environment_configuration.package_config.package_manager #=> String, one of "UV"
    #   resp.environment_configuration.package_config.package_specification #=> String
    #   resp.storage_configuration.project_s3_path #=> String
    #   resp.storage_configuration.kms_key_arn #=> String
    #   resp.trigger_source.type #=> String, one of "MANUAL", "SCHEDULED", "WORKFLOW"
    #   resp.trigger_source.name #=> String
    #   resp.error.message #=> String
    #   resp.created_at #=> Time
    #   resp.created_by #=> String
    #   resp.updated_at #=> Time
    #   resp.updated_by #=> String
    #   resp.started_at #=> Time
    #   resp.completed_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GetNotebookRun AWS API Documentation
    #
    # @overload get_notebook_run(params = {})
    # @param [Hash] params ({})
    def get_notebook_run(params = {}, options = {})
      req = build_request(:get_notebook_run, params)
      req.send_request(options)
    end

    # Gets a project in Amazon DataZone.
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the Amazon DataZone domain in which the project exists.
    #
    # @option params [required, String] :identifier
    #   The ID of the project.
    #
    # @return [Types::GetProjectOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetProjectOutput#domain_id #domain_id} => String
    #   * {Types::GetProjectOutput#id #id} => String
    #   * {Types::GetProjectOutput#name #name} => String
    #   * {Types::GetProjectOutput#description #description} => String
    #   * {Types::GetProjectOutput#project_status #project_status} => String
    #   * {Types::GetProjectOutput#failure_reasons #failure_reasons} => Array&lt;Types::ProjectDeletionError&gt;
    #   * {Types::GetProjectOutput#created_by #created_by} => String
    #   * {Types::GetProjectOutput#created_at #created_at} => Time
    #   * {Types::GetProjectOutput#last_updated_at #last_updated_at} => Time
    #   * {Types::GetProjectOutput#resource_tags #resource_tags} => Array&lt;Types::ResourceTag&gt;
    #   * {Types::GetProjectOutput#glossary_terms #glossary_terms} => Array&lt;String&gt;
    #   * {Types::GetProjectOutput#domain_unit_id #domain_unit_id} => String
    #   * {Types::GetProjectOutput#project_profile_id #project_profile_id} => String
    #   * {Types::GetProjectOutput#user_parameters #user_parameters} => Array&lt;Types::EnvironmentConfigurationUserParameter&gt;
    #   * {Types::GetProjectOutput#environment_deployment_details #environment_deployment_details} => Types::EnvironmentDeploymentDetails
    #   * {Types::GetProjectOutput#project_category #project_category} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_project({
    #     domain_identifier: "DomainId", # required
    #     identifier: "ProjectId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.domain_id #=> String
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.project_status #=> String, one of "ACTIVE", "DELETING", "DELETE_FAILED", "UPDATING", "UPDATE_FAILED", "MOVING"
    #   resp.failure_reasons #=> Array
    #   resp.failure_reasons[0].code #=> String
    #   resp.failure_reasons[0].message #=> String
    #   resp.created_by #=> String
    #   resp.created_at #=> Time
    #   resp.last_updated_at #=> Time
    #   resp.resource_tags #=> Array
    #   resp.resource_tags[0].key #=> String
    #   resp.resource_tags[0].value #=> String
    #   resp.resource_tags[0].source #=> String, one of "PROJECT", "PROJECT_PROFILE"
    #   resp.glossary_terms #=> Array
    #   resp.glossary_terms[0] #=> String
    #   resp.domain_unit_id #=> String
    #   resp.project_profile_id #=> String
    #   resp.user_parameters #=> Array
    #   resp.user_parameters[0].environment_id #=> String
    #   resp.user_parameters[0].environment_resolved_account.aws_account_id #=> String
    #   resp.user_parameters[0].environment_resolved_account.region_name #=> String
    #   resp.user_parameters[0].environment_resolved_account.source_account_pool_id #=> String
    #   resp.user_parameters[0].environment_configuration_name #=> String
    #   resp.user_parameters[0].environment_parameters #=> Array
    #   resp.user_parameters[0].environment_parameters[0].name #=> String
    #   resp.user_parameters[0].environment_parameters[0].value #=> String
    #   resp.environment_deployment_details.overall_deployment_status #=> String, one of "PENDING_DEPLOYMENT", "IN_PROGRESS", "SUCCESSFUL", "FAILED_VALIDATION", "FAILED_DEPLOYMENT"
    #   resp.environment_deployment_details.environment_failure_reasons #=> Hash
    #   resp.environment_deployment_details.environment_failure_reasons["String"] #=> Array
    #   resp.environment_deployment_details.environment_failure_reasons["String"][0].code #=> String
    #   resp.environment_deployment_details.environment_failure_reasons["String"][0].message #=> String
    #   resp.project_category #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GetProject AWS API Documentation
    #
    # @overload get_project(params = {})
    # @param [Hash] params ({})
    def get_project(params = {}, options = {})
      req = build_request(:get_project, params)
      req.send_request(options)
    end

    # The details of the project profile.
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the domain.
    #
    # @option params [required, String] :identifier
    #   The ID of the project profile.
    #
    # @return [Types::GetProjectProfileOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetProjectProfileOutput#domain_id #domain_id} => String
    #   * {Types::GetProjectProfileOutput#id #id} => String
    #   * {Types::GetProjectProfileOutput#name #name} => String
    #   * {Types::GetProjectProfileOutput#description #description} => String
    #   * {Types::GetProjectProfileOutput#status #status} => String
    #   * {Types::GetProjectProfileOutput#project_resource_tags #project_resource_tags} => Array&lt;Types::ResourceTagParameter&gt;
    #   * {Types::GetProjectProfileOutput#allow_custom_project_resource_tags #allow_custom_project_resource_tags} => Boolean
    #   * {Types::GetProjectProfileOutput#project_resource_tags_description #project_resource_tags_description} => String
    #   * {Types::GetProjectProfileOutput#environment_configurations #environment_configurations} => Array&lt;Types::EnvironmentConfiguration&gt;
    #   * {Types::GetProjectProfileOutput#created_by #created_by} => String
    #   * {Types::GetProjectProfileOutput#created_at #created_at} => Time
    #   * {Types::GetProjectProfileOutput#last_updated_at #last_updated_at} => Time
    #   * {Types::GetProjectProfileOutput#domain_unit_id #domain_unit_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_project_profile({
    #     domain_identifier: "DomainId", # required
    #     identifier: "ProjectProfileId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.domain_id #=> String
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.status #=> String, one of "ENABLED", "DISABLED"
    #   resp.project_resource_tags #=> Array
    #   resp.project_resource_tags[0].key #=> String
    #   resp.project_resource_tags[0].value #=> String
    #   resp.project_resource_tags[0].is_value_editable #=> Boolean
    #   resp.allow_custom_project_resource_tags #=> Boolean
    #   resp.project_resource_tags_description #=> String
    #   resp.environment_configurations #=> Array
    #   resp.environment_configurations[0].name #=> String
    #   resp.environment_configurations[0].id #=> String
    #   resp.environment_configurations[0].environment_blueprint_id #=> String
    #   resp.environment_configurations[0].description #=> String
    #   resp.environment_configurations[0].deployment_mode #=> String, one of "ON_CREATE", "ON_DEMAND"
    #   resp.environment_configurations[0].configuration_parameters.ssm_path #=> String
    #   resp.environment_configurations[0].configuration_parameters.parameter_overrides #=> Array
    #   resp.environment_configurations[0].configuration_parameters.parameter_overrides[0].name #=> String
    #   resp.environment_configurations[0].configuration_parameters.parameter_overrides[0].value #=> String
    #   resp.environment_configurations[0].configuration_parameters.parameter_overrides[0].is_editable #=> Boolean
    #   resp.environment_configurations[0].configuration_parameters.resolved_parameters #=> Array
    #   resp.environment_configurations[0].configuration_parameters.resolved_parameters[0].name #=> String
    #   resp.environment_configurations[0].configuration_parameters.resolved_parameters[0].value #=> String
    #   resp.environment_configurations[0].configuration_parameters.resolved_parameters[0].is_editable #=> Boolean
    #   resp.environment_configurations[0].aws_account.aws_account_id #=> String
    #   resp.environment_configurations[0].aws_account.aws_account_id_path #=> String
    #   resp.environment_configurations[0].account_pools #=> Array
    #   resp.environment_configurations[0].account_pools[0] #=> String
    #   resp.environment_configurations[0].aws_region.region_name #=> String
    #   resp.environment_configurations[0].aws_region.region_name_path #=> String
    #   resp.environment_configurations[0].deployment_order #=> Integer
    #   resp.created_by #=> String
    #   resp.created_at #=> Time
    #   resp.last_updated_at #=> Time
    #   resp.domain_unit_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GetProjectProfile AWS API Documentation
    #
    # @overload get_project_profile(params = {})
    # @param [Hash] params ({})
    def get_project_profile(params = {}, options = {})
      req = build_request(:get_project_profile, params)
      req.send_request(options)
    end

    # Gets the details of a rule in Amazon DataZone. A rule is a formal
    # agreement that enforces specific requirements across user workflows
    # (e.g., publishing assets to the catalog, requesting subscriptions,
    # creating projects) within the Amazon DataZone data portal. These rules
    # help maintain consistency, ensure compliance, and uphold governance
    # standards in data management processes. For instance, a metadata
    # enforcement rule can specify the required information for creating a
    # subscription request or publishing a data asset to the catalog,
    # ensuring alignment with organizational standards.
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the domain where the `GetRule` action is to be invoked.
    #
    # @option params [required, String] :identifier
    #   The ID of the rule.
    #
    # @option params [String] :revision
    #   The revision of the rule.
    #
    # @return [Types::GetRuleOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetRuleOutput#identifier #identifier} => String
    #   * {Types::GetRuleOutput#revision #revision} => String
    #   * {Types::GetRuleOutput#name #name} => String
    #   * {Types::GetRuleOutput#rule_type #rule_type} => String
    #   * {Types::GetRuleOutput#target #target} => Types::RuleTarget
    #   * {Types::GetRuleOutput#action #action} => String
    #   * {Types::GetRuleOutput#scope #scope} => Types::RuleScope
    #   * {Types::GetRuleOutput#detail #detail} => Types::RuleDetail
    #   * {Types::GetRuleOutput#target_type #target_type} => String
    #   * {Types::GetRuleOutput#description #description} => String
    #   * {Types::GetRuleOutput#created_at #created_at} => Time
    #   * {Types::GetRuleOutput#updated_at #updated_at} => Time
    #   * {Types::GetRuleOutput#created_by #created_by} => String
    #   * {Types::GetRuleOutput#last_updated_by #last_updated_by} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_rule({
    #     domain_identifier: "DomainId", # required
    #     identifier: "RuleId", # required
    #     revision: "Revision",
    #   })
    #
    # @example Response structure
    #
    #   resp.identifier #=> String
    #   resp.revision #=> String
    #   resp.name #=> String
    #   resp.rule_type #=> String, one of "METADATA_FORM_ENFORCEMENT", "GLOSSARY_TERM_ENFORCEMENT"
    #   resp.target.domain_unit_target.domain_unit_id #=> String
    #   resp.target.domain_unit_target.include_child_domain_units #=> Boolean
    #   resp.action #=> String, one of "CREATE_LISTING_CHANGE_SET", "CREATE_SUBSCRIPTION_REQUEST"
    #   resp.scope.asset_type.selection_mode #=> String, one of "ALL", "SPECIFIC"
    #   resp.scope.asset_type.specific_asset_types #=> Array
    #   resp.scope.asset_type.specific_asset_types[0] #=> String
    #   resp.scope.data_product #=> Boolean
    #   resp.scope.project.selection_mode #=> String, one of "ALL", "SPECIFIC"
    #   resp.scope.project.specific_projects #=> Array
    #   resp.scope.project.specific_projects[0] #=> String
    #   resp.detail.metadata_form_enforcement_detail.required_metadata_forms #=> Array
    #   resp.detail.metadata_form_enforcement_detail.required_metadata_forms[0].type_identifier #=> String
    #   resp.detail.metadata_form_enforcement_detail.required_metadata_forms[0].type_revision #=> String
    #   resp.detail.glossary_term_enforcement_detail.required_glossary_term_ids #=> Array
    #   resp.detail.glossary_term_enforcement_detail.required_glossary_term_ids[0] #=> String
    #   resp.target_type #=> String, one of "DOMAIN_UNIT"
    #   resp.description #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.created_by #=> String
    #   resp.last_updated_by #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GetRule AWS API Documentation
    #
    # @overload get_rule(params = {})
    # @param [Hash] params ({})
    def get_rule(params = {}, options = {})
      req = build_request(:get_rule, params)
      req.send_request(options)
    end

    # Gets a subscription in Amazon DataZone.
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the Amazon DataZone domain in which the subscription exists.
    #
    # @option params [required, String] :identifier
    #   The ID of the subscription.
    #
    # @return [Types::GetSubscriptionOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSubscriptionOutput#id #id} => String
    #   * {Types::GetSubscriptionOutput#created_by #created_by} => String
    #   * {Types::GetSubscriptionOutput#updated_by #updated_by} => String
    #   * {Types::GetSubscriptionOutput#domain_id #domain_id} => String
    #   * {Types::GetSubscriptionOutput#status #status} => String
    #   * {Types::GetSubscriptionOutput#created_at #created_at} => Time
    #   * {Types::GetSubscriptionOutput#updated_at #updated_at} => Time
    #   * {Types::GetSubscriptionOutput#subscribed_principal #subscribed_principal} => Types::SubscribedPrincipal
    #   * {Types::GetSubscriptionOutput#subscribed_listing #subscribed_listing} => Types::SubscribedListing
    #   * {Types::GetSubscriptionOutput#subscription_request_id #subscription_request_id} => String
    #   * {Types::GetSubscriptionOutput#retain_permissions #retain_permissions} => Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_subscription({
    #     domain_identifier: "DomainId", # required
    #     identifier: "SubscriptionId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.created_by #=> String
    #   resp.updated_by #=> String
    #   resp.domain_id #=> String
    #   resp.status #=> String, one of "APPROVED", "REVOKED", "CANCELLED"
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.subscribed_principal.project.id #=> String
    #   resp.subscribed_principal.project.name #=> String
    #   resp.subscribed_principal.user.id #=> String
    #   resp.subscribed_principal.user.details.iam.arn #=> String
    #   resp.subscribed_principal.user.details.iam.principal_id #=> String
    #   resp.subscribed_principal.user.details.iam.session_name #=> String
    #   resp.subscribed_principal.user.details.iam.group_profile_id #=> String
    #   resp.subscribed_principal.user.details.sso.username #=> String
    #   resp.subscribed_principal.user.details.sso.first_name #=> String
    #   resp.subscribed_principal.user.details.sso.last_name #=> String
    #   resp.subscribed_principal.group.id #=> String
    #   resp.subscribed_principal.group.name #=> String
    #   resp.subscribed_principal.iam.principal_arn #=> String
    #   resp.subscribed_listing.id #=> String
    #   resp.subscribed_listing.revision #=> String
    #   resp.subscribed_listing.name #=> String
    #   resp.subscribed_listing.description #=> String
    #   resp.subscribed_listing.item.asset_listing.entity_id #=> String
    #   resp.subscribed_listing.item.asset_listing.entity_revision #=> String
    #   resp.subscribed_listing.item.asset_listing.entity_type #=> String
    #   resp.subscribed_listing.item.asset_listing.forms #=> String
    #   resp.subscribed_listing.item.asset_listing.glossary_terms #=> Array
    #   resp.subscribed_listing.item.asset_listing.glossary_terms[0].name #=> String
    #   resp.subscribed_listing.item.asset_listing.glossary_terms[0].short_description #=> String
    #   resp.subscribed_listing.item.asset_listing.asset_scope.asset_id #=> String
    #   resp.subscribed_listing.item.asset_listing.asset_scope.filter_ids #=> Array
    #   resp.subscribed_listing.item.asset_listing.asset_scope.filter_ids[0] #=> String
    #   resp.subscribed_listing.item.asset_listing.asset_scope.status #=> String
    #   resp.subscribed_listing.item.asset_listing.asset_scope.error_message #=> String
    #   resp.subscribed_listing.item.asset_listing.permissions.s3 #=> Array
    #   resp.subscribed_listing.item.asset_listing.permissions.s3[0] #=> String, one of "READ", "WRITE"
    #   resp.subscribed_listing.item.product_listing.entity_id #=> String
    #   resp.subscribed_listing.item.product_listing.entity_revision #=> String
    #   resp.subscribed_listing.item.product_listing.glossary_terms #=> Array
    #   resp.subscribed_listing.item.product_listing.glossary_terms[0].name #=> String
    #   resp.subscribed_listing.item.product_listing.glossary_terms[0].short_description #=> String
    #   resp.subscribed_listing.item.product_listing.name #=> String
    #   resp.subscribed_listing.item.product_listing.description #=> String
    #   resp.subscribed_listing.item.product_listing.asset_listings #=> Array
    #   resp.subscribed_listing.item.product_listing.asset_listings[0].entity_id #=> String
    #   resp.subscribed_listing.item.product_listing.asset_listings[0].entity_revision #=> String
    #   resp.subscribed_listing.item.product_listing.asset_listings[0].entity_type #=> String
    #   resp.subscribed_listing.owner_project_id #=> String
    #   resp.subscribed_listing.owner_project_name #=> String
    #   resp.subscription_request_id #=> String
    #   resp.retain_permissions #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GetSubscription AWS API Documentation
    #
    # @overload get_subscription(params = {})
    # @param [Hash] params ({})
    def get_subscription(params = {}, options = {})
      req = build_request(:get_subscription, params)
      req.send_request(options)
    end

    # Gets the subscription grant in Amazon DataZone.
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the Amazon DataZone domain in which the subscription grant
    #   exists.
    #
    # @option params [required, String] :identifier
    #   The ID of the subscription grant.
    #
    # @return [Types::GetSubscriptionGrantOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSubscriptionGrantOutput#id #id} => String
    #   * {Types::GetSubscriptionGrantOutput#created_by #created_by} => String
    #   * {Types::GetSubscriptionGrantOutput#updated_by #updated_by} => String
    #   * {Types::GetSubscriptionGrantOutput#domain_id #domain_id} => String
    #   * {Types::GetSubscriptionGrantOutput#created_at #created_at} => Time
    #   * {Types::GetSubscriptionGrantOutput#updated_at #updated_at} => Time
    #   * {Types::GetSubscriptionGrantOutput#environment_id #environment_id} => String
    #   * {Types::GetSubscriptionGrantOutput#subscription_target_id #subscription_target_id} => String
    #   * {Types::GetSubscriptionGrantOutput#granted_entity #granted_entity} => Types::GrantedEntity
    #   * {Types::GetSubscriptionGrantOutput#status #status} => String
    #   * {Types::GetSubscriptionGrantOutput#assets #assets} => Array&lt;Types::SubscribedAsset&gt;
    #   * {Types::GetSubscriptionGrantOutput#subscription_id #subscription_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_subscription_grant({
    #     domain_identifier: "DomainId", # required
    #     identifier: "SubscriptionGrantId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.created_by #=> String
    #   resp.updated_by #=> String
    #   resp.domain_id #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.environment_id #=> String
    #   resp.subscription_target_id #=> String
    #   resp.granted_entity.listing.id #=> String
    #   resp.granted_entity.listing.revision #=> String
    #   resp.status #=> String, one of "PENDING", "IN_PROGRESS", "GRANT_FAILED", "REVOKE_FAILED", "GRANT_AND_REVOKE_FAILED", "COMPLETED", "INACCESSIBLE"
    #   resp.assets #=> Array
    #   resp.assets[0].asset_id #=> String
    #   resp.assets[0].asset_revision #=> String
    #   resp.assets[0].status #=> String, one of "GRANT_PENDING", "REVOKE_PENDING", "GRANT_IN_PROGRESS", "REVOKE_IN_PROGRESS", "GRANTED", "REVOKED", "GRANT_FAILED", "REVOKE_FAILED"
    #   resp.assets[0].target_name #=> String
    #   resp.assets[0].failure_cause.message #=> String
    #   resp.assets[0].granted_timestamp #=> Time
    #   resp.assets[0].failure_timestamp #=> Time
    #   resp.assets[0].asset_scope.asset_id #=> String
    #   resp.assets[0].asset_scope.filter_ids #=> Array
    #   resp.assets[0].asset_scope.filter_ids[0] #=> String
    #   resp.assets[0].asset_scope.status #=> String
    #   resp.assets[0].asset_scope.error_message #=> String
    #   resp.assets[0].permissions.s3 #=> Array
    #   resp.assets[0].permissions.s3[0] #=> String, one of "READ", "WRITE"
    #   resp.subscription_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GetSubscriptionGrant AWS API Documentation
    #
    # @overload get_subscription_grant(params = {})
    # @param [Hash] params ({})
    def get_subscription_grant(params = {}, options = {})
      req = build_request(:get_subscription_grant, params)
      req.send_request(options)
    end

    # Gets the details of the specified subscription request.
    #
    # @option params [required, String] :domain_identifier
    #   The identifier of the Amazon DataZone domain in which to get the
    #   subscription request details.
    #
    # @option params [required, String] :identifier
    #   The identifier of the subscription request the details of which to
    #   get.
    #
    # @return [Types::GetSubscriptionRequestDetailsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSubscriptionRequestDetailsOutput#id #id} => String
    #   * {Types::GetSubscriptionRequestDetailsOutput#created_by #created_by} => String
    #   * {Types::GetSubscriptionRequestDetailsOutput#updated_by #updated_by} => String
    #   * {Types::GetSubscriptionRequestDetailsOutput#domain_id #domain_id} => String
    #   * {Types::GetSubscriptionRequestDetailsOutput#status #status} => String
    #   * {Types::GetSubscriptionRequestDetailsOutput#created_at #created_at} => Time
    #   * {Types::GetSubscriptionRequestDetailsOutput#updated_at #updated_at} => Time
    #   * {Types::GetSubscriptionRequestDetailsOutput#request_reason #request_reason} => String
    #   * {Types::GetSubscriptionRequestDetailsOutput#subscribed_principals #subscribed_principals} => Array&lt;Types::SubscribedPrincipal&gt;
    #   * {Types::GetSubscriptionRequestDetailsOutput#subscribed_listings #subscribed_listings} => Array&lt;Types::SubscribedListing&gt;
    #   * {Types::GetSubscriptionRequestDetailsOutput#reviewer_id #reviewer_id} => String
    #   * {Types::GetSubscriptionRequestDetailsOutput#decision_comment #decision_comment} => String
    #   * {Types::GetSubscriptionRequestDetailsOutput#existing_subscription_id #existing_subscription_id} => String
    #   * {Types::GetSubscriptionRequestDetailsOutput#metadata_forms #metadata_forms} => Array&lt;Types::FormOutput&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_subscription_request_details({
    #     domain_identifier: "DomainId", # required
    #     identifier: "SubscriptionRequestId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.created_by #=> String
    #   resp.updated_by #=> String
    #   resp.domain_id #=> String
    #   resp.status #=> String, one of "PENDING", "ACCEPTED", "REJECTED"
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.request_reason #=> String
    #   resp.subscribed_principals #=> Array
    #   resp.subscribed_principals[0].project.id #=> String
    #   resp.subscribed_principals[0].project.name #=> String
    #   resp.subscribed_principals[0].user.id #=> String
    #   resp.subscribed_principals[0].user.details.iam.arn #=> String
    #   resp.subscribed_principals[0].user.details.iam.principal_id #=> String
    #   resp.subscribed_principals[0].user.details.iam.session_name #=> String
    #   resp.subscribed_principals[0].user.details.iam.group_profile_id #=> String
    #   resp.subscribed_principals[0].user.details.sso.username #=> String
    #   resp.subscribed_principals[0].user.details.sso.first_name #=> String
    #   resp.subscribed_principals[0].user.details.sso.last_name #=> String
    #   resp.subscribed_principals[0].group.id #=> String
    #   resp.subscribed_principals[0].group.name #=> String
    #   resp.subscribed_principals[0].iam.principal_arn #=> String
    #   resp.subscribed_listings #=> Array
    #   resp.subscribed_listings[0].id #=> String
    #   resp.subscribed_listings[0].revision #=> String
    #   resp.subscribed_listings[0].name #=> String
    #   resp.subscribed_listings[0].description #=> String
    #   resp.subscribed_listings[0].item.asset_listing.entity_id #=> String
    #   resp.subscribed_listings[0].item.asset_listing.entity_revision #=> String
    #   resp.subscribed_listings[0].item.asset_listing.entity_type #=> String
    #   resp.subscribed_listings[0].item.asset_listing.forms #=> String
    #   resp.subscribed_listings[0].item.asset_listing.glossary_terms #=> Array
    #   resp.subscribed_listings[0].item.asset_listing.glossary_terms[0].name #=> String
    #   resp.subscribed_listings[0].item.asset_listing.glossary_terms[0].short_description #=> String
    #   resp.subscribed_listings[0].item.asset_listing.asset_scope.asset_id #=> String
    #   resp.subscribed_listings[0].item.asset_listing.asset_scope.filter_ids #=> Array
    #   resp.subscribed_listings[0].item.asset_listing.asset_scope.filter_ids[0] #=> String
    #   resp.subscribed_listings[0].item.asset_listing.asset_scope.status #=> String
    #   resp.subscribed_listings[0].item.asset_listing.asset_scope.error_message #=> String
    #   resp.subscribed_listings[0].item.asset_listing.permissions.s3 #=> Array
    #   resp.subscribed_listings[0].item.asset_listing.permissions.s3[0] #=> String, one of "READ", "WRITE"
    #   resp.subscribed_listings[0].item.product_listing.entity_id #=> String
    #   resp.subscribed_listings[0].item.product_listing.entity_revision #=> String
    #   resp.subscribed_listings[0].item.product_listing.glossary_terms #=> Array
    #   resp.subscribed_listings[0].item.product_listing.glossary_terms[0].name #=> String
    #   resp.subscribed_listings[0].item.product_listing.glossary_terms[0].short_description #=> String
    #   resp.subscribed_listings[0].item.product_listing.name #=> String
    #   resp.subscribed_listings[0].item.product_listing.description #=> String
    #   resp.subscribed_listings[0].item.product_listing.asset_listings #=> Array
    #   resp.subscribed_listings[0].item.product_listing.asset_listings[0].entity_id #=> String
    #   resp.subscribed_listings[0].item.product_listing.asset_listings[0].entity_revision #=> String
    #   resp.subscribed_listings[0].item.product_listing.asset_listings[0].entity_type #=> String
    #   resp.subscribed_listings[0].owner_project_id #=> String
    #   resp.subscribed_listings[0].owner_project_name #=> String
    #   resp.reviewer_id #=> String
    #   resp.decision_comment #=> String
    #   resp.existing_subscription_id #=> String
    #   resp.metadata_forms #=> Array
    #   resp.metadata_forms[0].form_name #=> String
    #   resp.metadata_forms[0].type_name #=> String
    #   resp.metadata_forms[0].type_revision #=> String
    #   resp.metadata_forms[0].content #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GetSubscriptionRequestDetails AWS API Documentation
    #
    # @overload get_subscription_request_details(params = {})
    # @param [Hash] params ({})
    def get_subscription_request_details(params = {}, options = {})
      req = build_request(:get_subscription_request_details, params)
      req.send_request(options)
    end

    # Gets the subscription target in Amazon DataZone.
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the Amazon DataZone domain in which the subscription target
    #   exists.
    #
    # @option params [required, String] :environment_identifier
    #   The ID of the environment associated with the subscription target.
    #
    # @option params [required, String] :identifier
    #   The ID of the subscription target.
    #
    # @return [Types::GetSubscriptionTargetOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSubscriptionTargetOutput#id #id} => String
    #   * {Types::GetSubscriptionTargetOutput#authorized_principals #authorized_principals} => Array&lt;String&gt;
    #   * {Types::GetSubscriptionTargetOutput#domain_id #domain_id} => String
    #   * {Types::GetSubscriptionTargetOutput#project_id #project_id} => String
    #   * {Types::GetSubscriptionTargetOutput#environment_id #environment_id} => String
    #   * {Types::GetSubscriptionTargetOutput#name #name} => String
    #   * {Types::GetSubscriptionTargetOutput#type #type} => String
    #   * {Types::GetSubscriptionTargetOutput#created_by #created_by} => String
    #   * {Types::GetSubscriptionTargetOutput#updated_by #updated_by} => String
    #   * {Types::GetSubscriptionTargetOutput#created_at #created_at} => Time
    #   * {Types::GetSubscriptionTargetOutput#updated_at #updated_at} => Time
    #   * {Types::GetSubscriptionTargetOutput#manage_access_role #manage_access_role} => String
    #   * {Types::GetSubscriptionTargetOutput#applicable_asset_types #applicable_asset_types} => Array&lt;String&gt;
    #   * {Types::GetSubscriptionTargetOutput#subscription_target_config #subscription_target_config} => Array&lt;Types::SubscriptionTargetForm&gt;
    #   * {Types::GetSubscriptionTargetOutput#provider #provider} => String
    #   * {Types::GetSubscriptionTargetOutput#subscription_grant_creation_mode #subscription_grant_creation_mode} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_subscription_target({
    #     domain_identifier: "DomainId", # required
    #     environment_identifier: "EnvironmentId", # required
    #     identifier: "SubscriptionTargetId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.authorized_principals #=> Array
    #   resp.authorized_principals[0] #=> String
    #   resp.domain_id #=> String
    #   resp.project_id #=> String
    #   resp.environment_id #=> String
    #   resp.name #=> String
    #   resp.type #=> String
    #   resp.created_by #=> String
    #   resp.updated_by #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.manage_access_role #=> String
    #   resp.applicable_asset_types #=> Array
    #   resp.applicable_asset_types[0] #=> String
    #   resp.subscription_target_config #=> Array
    #   resp.subscription_target_config[0].form_name #=> String
    #   resp.subscription_target_config[0].content #=> String
    #   resp.provider #=> String
    #   resp.subscription_grant_creation_mode #=> String, one of "AUTOMATIC", "MANUAL"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GetSubscriptionTarget AWS API Documentation
    #
    # @overload get_subscription_target(params = {})
    # @param [Hash] params ({})
    def get_subscription_target(params = {}, options = {})
      req = build_request(:get_subscription_target, params)
      req.send_request(options)
    end

    # Gets the existing data point for the asset.
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the Amazon DataZone domain that houses the asset for which
    #   you want to get the data point.
    #
    # @option params [required, String] :entity_identifier
    #   The ID of the asset for which you want to get the data point.
    #
    # @option params [required, String] :entity_type
    #   The type of the asset for which you want to get the data point.
    #
    # @option params [required, String] :identifier
    #   The ID of the data point that you want to get.
    #
    # @option params [required, String] :form_name
    #   The name of the time series form that houses the data point that you
    #   want to get.
    #
    # @return [Types::GetTimeSeriesDataPointOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTimeSeriesDataPointOutput#domain_id #domain_id} => String
    #   * {Types::GetTimeSeriesDataPointOutput#entity_id #entity_id} => String
    #   * {Types::GetTimeSeriesDataPointOutput#entity_type #entity_type} => String
    #   * {Types::GetTimeSeriesDataPointOutput#form_name #form_name} => String
    #   * {Types::GetTimeSeriesDataPointOutput#form #form} => Types::TimeSeriesDataPointFormOutput
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_time_series_data_point({
    #     domain_identifier: "DomainId", # required
    #     entity_identifier: "EntityIdentifier", # required
    #     entity_type: "ASSET", # required, accepts ASSET, LISTING
    #     identifier: "TimeSeriesDataPointIdentifier", # required
    #     form_name: "TimeSeriesFormName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.domain_id #=> String
    #   resp.entity_id #=> String
    #   resp.entity_type #=> String, one of "ASSET", "LISTING"
    #   resp.form_name #=> String
    #   resp.form.form_name #=> String
    #   resp.form.type_identifier #=> String
    #   resp.form.type_revision #=> String
    #   resp.form.timestamp #=> Time
    #   resp.form.content #=> String
    #   resp.form.id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GetTimeSeriesDataPoint AWS API Documentation
    #
    # @overload get_time_series_data_point(params = {})
    # @param [Hash] params ({})
    def get_time_series_data_point(params = {}, options = {})
      req = build_request(:get_time_series_data_point, params)
      req.send_request(options)
    end

    # Gets a user profile in Amazon DataZone.
    #
    # @option params [required, String] :domain_identifier
    #   the ID of the Amazon DataZone domain the data portal of which you want
    #   to get.
    #
    # @option params [required, String] :user_identifier
    #   The identifier of the user for which you want to get the user profile.
    #
    # @option params [String] :type
    #   The type of the user profile.
    #
    # @option params [String] :session_name
    #   The session name for IAM role sessions.
    #
    # @return [Types::GetUserProfileOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetUserProfileOutput#domain_id #domain_id} => String
    #   * {Types::GetUserProfileOutput#id #id} => String
    #   * {Types::GetUserProfileOutput#type #type} => String
    #   * {Types::GetUserProfileOutput#status #status} => String
    #   * {Types::GetUserProfileOutput#details #details} => Types::UserProfileDetails
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_user_profile({
    #     domain_identifier: "DomainId", # required
    #     user_identifier: "UserIdentifier", # required
    #     type: "IAM", # accepts IAM, SSO
    #     session_name: "GetUserProfileInputSessionNameString",
    #   })
    #
    # @example Response structure
    #
    #   resp.domain_id #=> String
    #   resp.id #=> String
    #   resp.type #=> String, one of "IAM", "SSO"
    #   resp.status #=> String, one of "ASSIGNED", "NOT_ASSIGNED", "ACTIVATED", "DEACTIVATED"
    #   resp.details.iam.arn #=> String
    #   resp.details.iam.principal_id #=> String
    #   resp.details.iam.session_name #=> String
    #   resp.details.iam.group_profile_id #=> String
    #   resp.details.sso.username #=> String
    #   resp.details.sso.first_name #=> String
    #   resp.details.sso.last_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/GetUserProfile AWS API Documentation
    #
    # @overload get_user_profile(params = {})
    # @param [Hash] params ({})
    def get_user_profile(params = {}, options = {})
      req = build_request(:get_user_profile, params)
      req.send_request(options)
    end

    # Lists existing account pools.
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the domain where exsting account pools are to be listed.
    #
    # @option params [String] :name
    #   The name of the account pool to be listed.
    #
    # @option params [String] :sort_by
    #   The sort by mechanism in which the existing account pools are to be
    #   listed.
    #
    # @option params [String] :sort_order
    #   The sort order in which the existing account pools are to be listed.
    #
    # @option params [String] :next_token
    #   When the number of account pools is greater than the default value for
    #   the MaxResults parameter, or if you explicitly specify a value for
    #   MaxResults that is less than the number of account pools, the response
    #   includes a pagination token named NextToken. You can specify this
    #   NextToken value in a subsequent call to ListAccountPools to list the
    #   next set of account pools.
    #
    # @option params [Integer] :max_results
    #   The maximum number of account pools to return in a single call to
    #   ListAccountPools. When the number of account pools to be listed is
    #   greater than the value of MaxResults, the response contains a
    #   NextToken value that you can use in a subsequent call to
    #   ListAccountPools to list the next set of account pools.
    #
    # @return [Types::ListAccountPoolsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAccountPoolsOutput#items #items} => Array&lt;Types::AccountPoolSummary&gt;
    #   * {Types::ListAccountPoolsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_account_pools({
    #     domain_identifier: "DomainId", # required
    #     name: "AccountPoolName",
    #     sort_by: "NAME", # accepts NAME
    #     sort_order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].domain_id #=> String
    #   resp.items[0].id #=> String
    #   resp.items[0].name #=> String
    #   resp.items[0].resolution_strategy #=> String, one of "MANUAL"
    #   resp.items[0].domain_unit_id #=> String
    #   resp.items[0].created_by #=> String
    #   resp.items[0].updated_by #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ListAccountPools AWS API Documentation
    #
    # @overload list_account_pools(params = {})
    # @param [Hash] params ({})
    def list_account_pools(params = {}, options = {})
      req = build_request(:list_account_pools, params)
      req.send_request(options)
    end

    # Lists the accounts in the specified account pool.
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the domain in which the accounts in the specified account
    #   pool are to be listed.
    #
    # @option params [required, String] :identifier
    #   The ID of the account pool whose accounts are to be listed.
    #
    # @option params [String] :next_token
    #   When the number of accounts is greater than the default value for the
    #   MaxResults parameter, or if you explicitly specify a value for
    #   MaxResults that is less than the number of accounts, the response
    #   includes a pagination token named NextToken. You can specify this
    #   NextToken value in a subsequent call to ListAccountsInAccountPool to
    #   list the next set of accounts.
    #
    # @option params [Integer] :max_results
    #   The maximum number of accounts to return in a single call to
    #   ListAccountsInAccountPool. When the number of accounts to be listed is
    #   greater than the value of MaxResults, the response contains a
    #   NextToken value that you can use in a subsequent call to
    #   ListAccountsInAccountPool to list the next set of accounts.
    #
    # @return [Types::ListAccountsInAccountPoolOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAccountsInAccountPoolOutput#items #items} => Array&lt;Types::AccountInfo&gt;
    #   * {Types::ListAccountsInAccountPoolOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_accounts_in_account_pool({
    #     domain_identifier: "DomainId", # required
    #     identifier: "AccountPoolId", # required
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].aws_account_id #=> String
    #   resp.items[0].supported_regions #=> Array
    #   resp.items[0].supported_regions[0] #=> String
    #   resp.items[0].aws_account_name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ListAccountsInAccountPool AWS API Documentation
    #
    # @overload list_accounts_in_account_pool(params = {})
    # @param [Hash] params ({})
    def list_accounts_in_account_pool(params = {}, options = {})
      req = build_request(:list_accounts_in_account_pool, params)
      req.send_request(options)
    end

    # Lists asset filters.
    #
    # Prerequisites:
    #
    # * A valid domain and asset must exist.
    #
    # * The asset must have at least one filter created to return results.
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the domain where you want to list asset filters.
    #
    # @option params [required, String] :asset_identifier
    #   The ID of the data asset.
    #
    # @option params [String] :status
    #   The status of the asset filter.
    #
    # @option params [String] :next_token
    #   When the number of asset filters is greater than the default value for
    #   the `MaxResults` parameter, or if you explicitly specify a value for
    #   `MaxResults` that is less than the number of asset filters, the
    #   response includes a pagination token named `NextToken`. You can
    #   specify this `NextToken` value in a subsequent call to
    #   `ListAssetFilters` to list the next set of asset filters.
    #
    # @option params [Integer] :max_results
    #   The maximum number of asset filters to return in a single call to
    #   `ListAssetFilters`. When the number of asset filters to be listed is
    #   greater than the value of `MaxResults`, the response contains a
    #   `NextToken` value that you can use in a subsequent call to
    #   `ListAssetFilters` to list the next set of asset filters.
    #
    # @return [Types::ListAssetFiltersOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAssetFiltersOutput#items #items} => Array&lt;Types::AssetFilterSummary&gt;
    #   * {Types::ListAssetFiltersOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_asset_filters({
    #     domain_identifier: "DomainId", # required
    #     asset_identifier: "AssetId", # required
    #     status: "VALID", # accepts VALID, INVALID
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].id #=> String
    #   resp.items[0].domain_id #=> String
    #   resp.items[0].asset_id #=> String
    #   resp.items[0].name #=> String
    #   resp.items[0].description #=> String
    #   resp.items[0].status #=> String, one of "VALID", "INVALID"
    #   resp.items[0].effective_column_names #=> Array
    #   resp.items[0].effective_column_names[0] #=> String
    #   resp.items[0].effective_row_filter #=> String
    #   resp.items[0].created_at #=> Time
    #   resp.items[0].error_message #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ListAssetFilters AWS API Documentation
    #
    # @overload list_asset_filters(params = {})
    # @param [Hash] params ({})
    def list_asset_filters(params = {}, options = {})
      req = build_request(:list_asset_filters, params)
      req.send_request(options)
    end

    # Lists the revisions for the asset.
    #
    # Prerequisites:
    #
    # * The asset must exist in the domain.
    #
    # * There must be at least one revision of the asset (which happens
    #   automatically after creation).
    #
    # * The domain must be valid and active.
    #
    # * User must have permissions on the asset and domain.
    #
    # @option params [required, String] :domain_identifier
    #   The identifier of the domain.
    #
    # @option params [required, String] :identifier
    #   The identifier of the asset.
    #
    # @option params [String] :next_token
    #   When the number of revisions is greater than the default value for the
    #   `MaxResults` parameter, or if you explicitly specify a value for
    #   `MaxResults` that is less than the number of revisions, the response
    #   includes a pagination token named `NextToken`. You can specify this
    #   `NextToken` value in a subsequent call to `ListAssetRevisions` to list
    #   the next set of revisions.
    #
    # @option params [Integer] :max_results
    #   The maximum number of revisions to return in a single call to
    #   `ListAssetRevisions`. When the number of revisions to be listed is
    #   greater than the value of `MaxResults`, the response contains a
    #   `NextToken` value that you can use in a subsequent call to
    #   `ListAssetRevisions` to list the next set of revisions.
    #
    # @return [Types::ListAssetRevisionsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAssetRevisionsOutput#items #items} => Array&lt;Types::AssetRevision&gt;
    #   * {Types::ListAssetRevisionsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_asset_revisions({
    #     domain_identifier: "DomainId", # required
    #     identifier: "AssetIdentifier", # required
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].domain_id #=> String
    #   resp.items[0].id #=> String
    #   resp.items[0].revision #=> String
    #   resp.items[0].created_by #=> String
    #   resp.items[0].created_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ListAssetRevisions AWS API Documentation
    #
    # @overload list_asset_revisions(params = {})
    # @param [Hash] params ({})
    def list_asset_revisions(params = {}, options = {})
      req = build_request(:list_asset_revisions, params)
      req.send_request(options)
    end

    # Lists connections. In Amazon DataZone, a connection enables you to
    # connect your resources (domains, projects, and environments) to
    # external resources and services.
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the domain where you want to list connections.
    #
    # @option params [Integer] :max_results
    #   The maximum number of connections to return in a single call to
    #   ListConnections. When the number of connections to be listed is
    #   greater than the value of MaxResults, the response contains a
    #   NextToken value that you can use in a subsequent call to
    #   ListConnections to list the next set of connections.
    #
    # @option params [String] :next_token
    #   When the number of connections is greater than the default value for
    #   the MaxResults parameter, or if you explicitly specify a value for
    #   MaxResults that is less than the number of connections, the response
    #   includes a pagination token named NextToken. You can specify this
    #   NextToken value in a subsequent call to ListConnections to list the
    #   next set of connections.
    #
    # @option params [String] :sort_by
    #   Specifies how you want to sort the listed connections.
    #
    # @option params [String] :sort_order
    #   Specifies the sort order for the listed connections.
    #
    # @option params [String] :name
    #   The name of the connection.
    #
    # @option params [String] :environment_identifier
    #   The ID of the environment where you want to list connections.
    #
    # @option params [String] :project_identifier
    #   The ID of the project where you want to list connections.
    #
    # @option params [String] :type
    #   The type of connection.
    #
    # @option params [String] :scope
    #   The scope of the connection.
    #
    # @return [Types::ListConnectionsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListConnectionsOutput#items #items} => Array&lt;Types::ConnectionSummary&gt;
    #   * {Types::ListConnectionsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_connections({
    #     domain_identifier: "DomainId", # required
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #     sort_by: "NAME", # accepts NAME
    #     sort_order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #     name: "ConnectionName",
    #     environment_identifier: "EnvironmentId",
    #     project_identifier: "ProjectId",
    #     type: "ATHENA", # accepts ATHENA, BIGQUERY, DATABRICKS, DOCUMENTDB, DYNAMODB, HYPERPOD, IAM, MYSQL, OPENSEARCH, ORACLE, POSTGRESQL, REDSHIFT, S3, SAPHANA, SNOWFLAKE, SPARK, SQLSERVER, TERADATA, VERTICA, WORKFLOWS_MWAA, AMAZON_Q, MLFLOW
    #     scope: "DOMAIN", # accepts DOMAIN, PROJECT
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].configurations #=> Array
    #   resp.items[0].configurations[0].classification #=> String
    #   resp.items[0].configurations[0].properties #=> Hash
    #   resp.items[0].configurations[0].properties["PropertyMapKeyString"] #=> String
    #   resp.items[0].connection_id #=> String
    #   resp.items[0].domain_id #=> String
    #   resp.items[0].domain_unit_id #=> String
    #   resp.items[0].environment_id #=> String
    #   resp.items[0].name #=> String
    #   resp.items[0].physical_endpoints #=> Array
    #   resp.items[0].physical_endpoints[0].aws_location.access_role #=> String
    #   resp.items[0].physical_endpoints[0].aws_location.aws_account_id #=> String
    #   resp.items[0].physical_endpoints[0].aws_location.aws_region #=> String
    #   resp.items[0].physical_endpoints[0].aws_location.iam_connection_id #=> String
    #   resp.items[0].physical_endpoints[0].glue_connection_name #=> String
    #   resp.items[0].physical_endpoints[0].glue_connection_names #=> Array
    #   resp.items[0].physical_endpoints[0].glue_connection_names[0] #=> String
    #   resp.items[0].physical_endpoints[0].glue_connection.name #=> String
    #   resp.items[0].physical_endpoints[0].glue_connection.description #=> String
    #   resp.items[0].physical_endpoints[0].glue_connection.connection_type #=> String, one of "ATHENA", "BIGQUERY", "DATABRICKS", "DOCUMENTDB", "DYNAMODB", "HYPERPOD", "IAM", "MYSQL", "OPENSEARCH", "ORACLE", "POSTGRESQL", "REDSHIFT", "S3", "SAPHANA", "SNOWFLAKE", "SPARK", "SQLSERVER", "TERADATA", "VERTICA", "WORKFLOWS_MWAA", "AMAZON_Q", "MLFLOW"
    #   resp.items[0].physical_endpoints[0].glue_connection.match_criteria #=> Array
    #   resp.items[0].physical_endpoints[0].glue_connection.match_criteria[0] #=> String
    #   resp.items[0].physical_endpoints[0].glue_connection.connection_properties #=> Hash
    #   resp.items[0].physical_endpoints[0].glue_connection.connection_properties["String"] #=> String
    #   resp.items[0].physical_endpoints[0].glue_connection.spark_properties #=> Hash
    #   resp.items[0].physical_endpoints[0].glue_connection.spark_properties["PropertyMapKeyString"] #=> String
    #   resp.items[0].physical_endpoints[0].glue_connection.athena_properties #=> Hash
    #   resp.items[0].physical_endpoints[0].glue_connection.athena_properties["PropertyMapKeyString"] #=> String
    #   resp.items[0].physical_endpoints[0].glue_connection.python_properties #=> Hash
    #   resp.items[0].physical_endpoints[0].glue_connection.python_properties["PropertyMapKeyString"] #=> String
    #   resp.items[0].physical_endpoints[0].glue_connection.physical_connection_requirements.subnet_id #=> String
    #   resp.items[0].physical_endpoints[0].glue_connection.physical_connection_requirements.subnet_id_list #=> Array
    #   resp.items[0].physical_endpoints[0].glue_connection.physical_connection_requirements.subnet_id_list[0] #=> String
    #   resp.items[0].physical_endpoints[0].glue_connection.physical_connection_requirements.security_group_id_list #=> Array
    #   resp.items[0].physical_endpoints[0].glue_connection.physical_connection_requirements.security_group_id_list[0] #=> String
    #   resp.items[0].physical_endpoints[0].glue_connection.physical_connection_requirements.availability_zone #=> String
    #   resp.items[0].physical_endpoints[0].glue_connection.creation_time #=> Time
    #   resp.items[0].physical_endpoints[0].glue_connection.last_updated_time #=> Time
    #   resp.items[0].physical_endpoints[0].glue_connection.last_updated_by #=> String
    #   resp.items[0].physical_endpoints[0].glue_connection.status #=> String, one of "CREATING", "CREATE_FAILED", "DELETING", "DELETE_FAILED", "READY", "UPDATING", "UPDATE_FAILED", "DELETED"
    #   resp.items[0].physical_endpoints[0].glue_connection.status_reason #=> String
    #   resp.items[0].physical_endpoints[0].glue_connection.last_connection_validation_time #=> Time
    #   resp.items[0].physical_endpoints[0].glue_connection.authentication_configuration.authentication_type #=> String, one of "BASIC", "OAUTH2", "CUSTOM"
    #   resp.items[0].physical_endpoints[0].glue_connection.authentication_configuration.secret_arn #=> String
    #   resp.items[0].physical_endpoints[0].glue_connection.authentication_configuration.o_auth_2_properties.o_auth_2_grant_type #=> String, one of "AUTHORIZATION_CODE", "CLIENT_CREDENTIALS", "JWT_BEARER"
    #   resp.items[0].physical_endpoints[0].glue_connection.authentication_configuration.o_auth_2_properties.o_auth_2_client_application.user_managed_client_application_client_id #=> String
    #   resp.items[0].physical_endpoints[0].glue_connection.authentication_configuration.o_auth_2_properties.o_auth_2_client_application.a_ws_managed_client_application_reference #=> String
    #   resp.items[0].physical_endpoints[0].glue_connection.authentication_configuration.o_auth_2_properties.token_url #=> String
    #   resp.items[0].physical_endpoints[0].glue_connection.authentication_configuration.o_auth_2_properties.token_url_parameters_map #=> Hash
    #   resp.items[0].physical_endpoints[0].glue_connection.authentication_configuration.o_auth_2_properties.token_url_parameters_map["TokenUrlParametersMapKeyString"] #=> String
    #   resp.items[0].physical_endpoints[0].glue_connection.authentication_configuration.o_auth_2_properties.authorization_code_properties.authorization_code #=> String
    #   resp.items[0].physical_endpoints[0].glue_connection.authentication_configuration.o_auth_2_properties.authorization_code_properties.redirect_uri #=> String
    #   resp.items[0].physical_endpoints[0].glue_connection.authentication_configuration.o_auth_2_properties.o_auth_2_credentials.user_managed_client_application_client_secret #=> String
    #   resp.items[0].physical_endpoints[0].glue_connection.authentication_configuration.o_auth_2_properties.o_auth_2_credentials.access_token #=> String
    #   resp.items[0].physical_endpoints[0].glue_connection.authentication_configuration.o_auth_2_properties.o_auth_2_credentials.refresh_token #=> String
    #   resp.items[0].physical_endpoints[0].glue_connection.authentication_configuration.o_auth_2_properties.o_auth_2_credentials.jwt_token #=> String
    #   resp.items[0].physical_endpoints[0].glue_connection.connection_schema_version #=> Integer
    #   resp.items[0].physical_endpoints[0].glue_connection.compatible_compute_environments #=> Array
    #   resp.items[0].physical_endpoints[0].glue_connection.compatible_compute_environments[0] #=> String, one of "SPARK", "ATHENA", "PYTHON"
    #   resp.items[0].physical_endpoints[0].enable_trusted_identity_propagation #=> Boolean
    #   resp.items[0].physical_endpoints[0].host #=> String
    #   resp.items[0].physical_endpoints[0].port #=> Integer
    #   resp.items[0].physical_endpoints[0].protocol #=> String, one of "ATHENA", "GLUE_INTERACTIVE_SESSION", "HTTPS", "JDBC", "LIVY", "ODBC", "PRISM"
    #   resp.items[0].physical_endpoints[0].stage #=> String
    #   resp.items[0].project_id #=> String
    #   resp.items[0].props.athena_properties.workgroup_name #=> String
    #   resp.items[0].props.glue_properties.status #=> String, one of "CREATING", "CREATE_FAILED", "DELETING", "DELETE_FAILED", "READY", "UPDATING", "UPDATE_FAILED", "DELETED"
    #   resp.items[0].props.glue_properties.error_message #=> String
    #   resp.items[0].props.hyper_pod_properties.cluster_name #=> String
    #   resp.items[0].props.hyper_pod_properties.cluster_arn #=> String
    #   resp.items[0].props.hyper_pod_properties.orchestrator #=> String, one of "EKS", "SLURM"
    #   resp.items[0].props.iam_properties.environment_id #=> String
    #   resp.items[0].props.iam_properties.glue_lineage_sync_enabled #=> Boolean
    #   resp.items[0].props.redshift_properties.storage.cluster_name #=> String
    #   resp.items[0].props.redshift_properties.storage.workgroup_name #=> String
    #   resp.items[0].props.redshift_properties.credentials.secret_arn #=> String
    #   resp.items[0].props.redshift_properties.credentials.username_password.password #=> String
    #   resp.items[0].props.redshift_properties.credentials.username_password.username #=> String
    #   resp.items[0].props.redshift_properties.is_provisioned_secret #=> Boolean
    #   resp.items[0].props.redshift_properties.jdbc_iam_url #=> String
    #   resp.items[0].props.redshift_properties.jdbc_url #=> String
    #   resp.items[0].props.redshift_properties.redshift_temp_dir #=> String
    #   resp.items[0].props.redshift_properties.lineage_sync.lineage_job_id #=> String
    #   resp.items[0].props.redshift_properties.lineage_sync.enabled #=> Boolean
    #   resp.items[0].props.redshift_properties.lineage_sync.schedule.schedule #=> String
    #   resp.items[0].props.redshift_properties.status #=> String, one of "CREATING", "CREATE_FAILED", "DELETING", "DELETE_FAILED", "READY", "UPDATING", "UPDATE_FAILED", "DELETED"
    #   resp.items[0].props.redshift_properties.database_name #=> String
    #   resp.items[0].props.spark_emr_properties.compute_arn #=> String
    #   resp.items[0].props.spark_emr_properties.credentials.password #=> String
    #   resp.items[0].props.spark_emr_properties.credentials.username #=> String
    #   resp.items[0].props.spark_emr_properties.credentials_expiration #=> Time
    #   resp.items[0].props.spark_emr_properties.governance_type #=> String, one of "AWS_MANAGED", "USER_MANAGED"
    #   resp.items[0].props.spark_emr_properties.instance_profile_arn #=> String
    #   resp.items[0].props.spark_emr_properties.java_virtual_env #=> String
    #   resp.items[0].props.spark_emr_properties.livy_endpoint #=> String
    #   resp.items[0].props.spark_emr_properties.log_uri #=> String
    #   resp.items[0].props.spark_emr_properties.python_virtual_env #=> String
    #   resp.items[0].props.spark_emr_properties.runtime_role #=> String
    #   resp.items[0].props.spark_emr_properties.trusted_certificates_s3_uri #=> String
    #   resp.items[0].props.spark_emr_properties.certificate_data #=> String
    #   resp.items[0].props.spark_emr_properties.managed_endpoint_arn #=> String
    #   resp.items[0].props.spark_emr_properties.managed_endpoint_credentials.id #=> String
    #   resp.items[0].props.spark_emr_properties.managed_endpoint_credentials.token #=> String
    #   resp.items[0].props.spark_glue_properties.additional_args.connection #=> String
    #   resp.items[0].props.spark_glue_properties.glue_connection_name #=> String
    #   resp.items[0].props.spark_glue_properties.glue_connection_names #=> Array
    #   resp.items[0].props.spark_glue_properties.glue_connection_names[0] #=> String
    #   resp.items[0].props.spark_glue_properties.glue_version #=> String
    #   resp.items[0].props.spark_glue_properties.idle_timeout #=> Integer
    #   resp.items[0].props.spark_glue_properties.java_virtual_env #=> String
    #   resp.items[0].props.spark_glue_properties.number_of_workers #=> Integer
    #   resp.items[0].props.spark_glue_properties.python_virtual_env #=> String
    #   resp.items[0].props.spark_glue_properties.worker_type #=> String
    #   resp.items[0].props.s3_properties.s3_uri #=> String
    #   resp.items[0].props.s3_properties.s3_access_grant_location_id #=> String
    #   resp.items[0].props.s3_properties.register_s3_access_grant_location #=> Boolean
    #   resp.items[0].props.s3_properties.status #=> String, one of "CREATING", "CREATE_FAILED", "DELETING", "DELETE_FAILED", "READY", "UPDATING", "UPDATE_FAILED", "DELETED"
    #   resp.items[0].props.s3_properties.error_message #=> String
    #   resp.items[0].props.amazon_q_properties.is_enabled #=> Boolean
    #   resp.items[0].props.amazon_q_properties.profile_arn #=> String
    #   resp.items[0].props.amazon_q_properties.auth_mode #=> String
    #   resp.items[0].props.mlflow_properties.tracking_server_arn #=> String
    #   resp.items[0].props.workflows_mwaa_properties.mwaa_environment_name #=> String
    #   resp.items[0].props.lakehouse_properties.glue_lineage_sync_enabled #=> Boolean
    #   resp.items[0].type #=> String, one of "ATHENA", "BIGQUERY", "DATABRICKS", "DOCUMENTDB", "DYNAMODB", "HYPERPOD", "IAM", "MYSQL", "OPENSEARCH", "ORACLE", "POSTGRESQL", "REDSHIFT", "S3", "SAPHANA", "SNOWFLAKE", "SPARK", "SQLSERVER", "TERADATA", "VERTICA", "WORKFLOWS_MWAA", "AMAZON_Q", "MLFLOW"
    #   resp.items[0].scope #=> String, one of "DOMAIN", "PROJECT"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ListConnections AWS API Documentation
    #
    # @overload list_connections(params = {})
    # @param [Hash] params ({})
    def list_connections(params = {}, options = {})
      req = build_request(:list_connections, params)
      req.send_request(options)
    end

    # Lists data product revisions.
    #
    # Prerequisites:
    #
    # * The data product ID must exist within the domain.
    #
    # * User must have view permissions on the data product.
    #
    # * The domain must be in a valid and accessible state.
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the domain of the data product revisions that you want to
    #   list.
    #
    # @option params [required, String] :identifier
    #   The ID of the data product revision.
    #
    # @option params [Integer] :max_results
    #   The maximum number of asset filters to return in a single call to
    #   `ListDataProductRevisions`. When the number of data product revisions
    #   to be listed is greater than the value of `MaxResults`, the response
    #   contains a `NextToken` value that you can use in a subsequent call to
    #   `ListDataProductRevisions` to list the next set of data product
    #   revisions.
    #
    # @option params [String] :next_token
    #   When the number of data product revisions is greater than the default
    #   value for the `MaxResults` parameter, or if you explicitly specify a
    #   value for `MaxResults` that is less than the number of data product
    #   revisions, the response includes a pagination token named `NextToken`.
    #   You can specify this `NextToken` value in a subsequent call to
    #   `ListDataProductRevisions` to list the next set of data product
    #   revisions.
    #
    # @return [Types::ListDataProductRevisionsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDataProductRevisionsOutput#items #items} => Array&lt;Types::DataProductRevision&gt;
    #   * {Types::ListDataProductRevisionsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_data_product_revisions({
    #     domain_identifier: "DomainId", # required
    #     identifier: "DataProductId", # required
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].domain_id #=> String
    #   resp.items[0].id #=> String
    #   resp.items[0].revision #=> String
    #   resp.items[0].created_at #=> Time
    #   resp.items[0].created_by #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ListDataProductRevisions AWS API Documentation
    #
    # @overload list_data_product_revisions(params = {})
    # @param [Hash] params ({})
    def list_data_product_revisions(params = {}, options = {})
      req = build_request(:list_data_product_revisions, params)
      req.send_request(options)
    end

    # Lists data source run activities.
    #
    # @option params [required, String] :domain_identifier
    #   The identifier of the Amazon DataZone domain in which to list data
    #   source run activities.
    #
    # @option params [required, String] :identifier
    #   The identifier of the data source run.
    #
    # @option params [String] :status
    #   The status of the data source run.
    #
    # @option params [String] :next_token
    #   When the number of activities is greater than the default value for
    #   the `MaxResults` parameter, or if you explicitly specify a value for
    #   `MaxResults` that is less than the number of activities, the response
    #   includes a pagination token named `NextToken`. You can specify this
    #   `NextToken` value in a subsequent call to
    #   `ListDataSourceRunActivities` to list the next set of activities.
    #
    # @option params [Integer] :max_results
    #   The maximum number of activities to return in a single call to
    #   `ListDataSourceRunActivities`. When the number of activities to be
    #   listed is greater than the value of `MaxResults`, the response
    #   contains a `NextToken` value that you can use in a subsequent call to
    #   `ListDataSourceRunActivities` to list the next set of activities.
    #
    # @return [Types::ListDataSourceRunActivitiesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDataSourceRunActivitiesOutput#items #items} => Array&lt;Types::DataSourceRunActivity&gt;
    #   * {Types::ListDataSourceRunActivitiesOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_data_source_run_activities({
    #     domain_identifier: "DomainId", # required
    #     identifier: "DataSourceRunId", # required
    #     status: "FAILED", # accepts FAILED, PUBLISHING_FAILED, SUCCEEDED_CREATED, SUCCEEDED_UPDATED, SKIPPED_ALREADY_IMPORTED, SKIPPED_ARCHIVED, SKIPPED_NO_ACCESS, UNCHANGED
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].database #=> String
    #   resp.items[0].data_source_run_id #=> String
    #   resp.items[0].technical_name #=> String
    #   resp.items[0].data_asset_status #=> String, one of "FAILED", "PUBLISHING_FAILED", "SUCCEEDED_CREATED", "SUCCEEDED_UPDATED", "SKIPPED_ALREADY_IMPORTED", "SKIPPED_ARCHIVED", "SKIPPED_NO_ACCESS", "UNCHANGED"
    #   resp.items[0].project_id #=> String
    #   resp.items[0].data_asset_id #=> String
    #   resp.items[0].technical_description #=> String
    #   resp.items[0].error_message.error_type #=> String, one of "ACCESS_DENIED_EXCEPTION", "CONFLICT_EXCEPTION", "INTERNAL_SERVER_EXCEPTION", "RESOURCE_NOT_FOUND_EXCEPTION", "SERVICE_QUOTA_EXCEEDED_EXCEPTION", "THROTTLING_EXCEPTION", "VALIDATION_EXCEPTION"
    #   resp.items[0].error_message.error_detail #=> String
    #   resp.items[0].lineage_summary.event_id #=> String
    #   resp.items[0].lineage_summary.event_status #=> String, one of "REQUESTED", "PROCESSING", "SUCCESS", "FAILED"
    #   resp.items[0].lineage_summary.error_message #=> String
    #   resp.items[0].created_at #=> Time
    #   resp.items[0].updated_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ListDataSourceRunActivities AWS API Documentation
    #
    # @overload list_data_source_run_activities(params = {})
    # @param [Hash] params ({})
    def list_data_source_run_activities(params = {}, options = {})
      req = build_request(:list_data_source_run_activities, params)
      req.send_request(options)
    end

    # Lists data source runs in Amazon DataZone.
    #
    # @option params [required, String] :domain_identifier
    #   The identifier of the Amazon DataZone domain in which to invoke the
    #   `ListDataSourceRuns` action.
    #
    # @option params [required, String] :data_source_identifier
    #   The identifier of the data source.
    #
    # @option params [String] :status
    #   The status of the data source.
    #
    # @option params [String] :next_token
    #   When the number of runs is greater than the default value for the
    #   `MaxResults` parameter, or if you explicitly specify a value for
    #   `MaxResults` that is less than the number of runs, the response
    #   includes a pagination token named `NextToken`. You can specify this
    #   `NextToken` value in a subsequent call to `ListDataSourceRuns` to list
    #   the next set of runs.
    #
    # @option params [Integer] :max_results
    #   The maximum number of runs to return in a single call to
    #   `ListDataSourceRuns`. When the number of runs to be listed is greater
    #   than the value of `MaxResults`, the response contains a `NextToken`
    #   value that you can use in a subsequent call to `ListDataSourceRuns` to
    #   list the next set of runs.
    #
    # @return [Types::ListDataSourceRunsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDataSourceRunsOutput#items #items} => Array&lt;Types::DataSourceRunSummary&gt;
    #   * {Types::ListDataSourceRunsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_data_source_runs({
    #     domain_identifier: "DomainId", # required
    #     data_source_identifier: "DataSourceId", # required
    #     status: "REQUESTED", # accepts REQUESTED, RUNNING, FAILED, PARTIALLY_SUCCEEDED, SUCCESS
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].id #=> String
    #   resp.items[0].data_source_id #=> String
    #   resp.items[0].type #=> String, one of "PRIORITIZED", "SCHEDULED"
    #   resp.items[0].status #=> String, one of "REQUESTED", "RUNNING", "FAILED", "PARTIALLY_SUCCEEDED", "SUCCESS"
    #   resp.items[0].project_id #=> String
    #   resp.items[0].run_statistics_for_assets.added #=> Integer
    #   resp.items[0].run_statistics_for_assets.updated #=> Integer
    #   resp.items[0].run_statistics_for_assets.unchanged #=> Integer
    #   resp.items[0].run_statistics_for_assets.skipped #=> Integer
    #   resp.items[0].run_statistics_for_assets.failed #=> Integer
    #   resp.items[0].error_message.error_type #=> String, one of "ACCESS_DENIED_EXCEPTION", "CONFLICT_EXCEPTION", "INTERNAL_SERVER_EXCEPTION", "RESOURCE_NOT_FOUND_EXCEPTION", "SERVICE_QUOTA_EXCEEDED_EXCEPTION", "THROTTLING_EXCEPTION", "VALIDATION_EXCEPTION"
    #   resp.items[0].error_message.error_detail #=> String
    #   resp.items[0].created_at #=> Time
    #   resp.items[0].updated_at #=> Time
    #   resp.items[0].started_at #=> Time
    #   resp.items[0].stopped_at #=> Time
    #   resp.items[0].lineage_summary.import_status #=> String, one of "IN_PROGRESS", "SUCCESS", "FAILED", "PARTIALLY_SUCCEEDED"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ListDataSourceRuns AWS API Documentation
    #
    # @overload list_data_source_runs(params = {})
    # @param [Hash] params ({})
    def list_data_source_runs(params = {}, options = {})
      req = build_request(:list_data_source_runs, params)
      req.send_request(options)
    end

    # Lists data sources in Amazon DataZone.
    #
    # @option params [required, String] :domain_identifier
    #   The identifier of the Amazon DataZone domain in which to list the data
    #   sources.
    #
    # @option params [required, String] :project_identifier
    #   The identifier of the project in which to list data sources.
    #
    # @option params [String] :environment_identifier
    #   The identifier of the environment in which to list the data sources.
    #
    # @option params [String] :connection_identifier
    #   The ID of the connection.
    #
    # @option params [String] :type
    #   The type of the data source.
    #
    # @option params [String] :status
    #   The status of the data source.
    #
    # @option params [String] :name
    #   The name of the data source.
    #
    # @option params [String] :next_token
    #   When the number of data sources is greater than the default value for
    #   the `MaxResults` parameter, or if you explicitly specify a value for
    #   `MaxResults` that is less than the number of data sources, the
    #   response includes a pagination token named `NextToken`. You can
    #   specify this `NextToken` value in a subsequent call to
    #   `ListDataSources` to list the next set of data sources.
    #
    # @option params [Integer] :max_results
    #   The maximum number of data sources to return in a single call to
    #   `ListDataSources`. When the number of data sources to be listed is
    #   greater than the value of `MaxResults`, the response contains a
    #   `NextToken` value that you can use in a subsequent call to
    #   `ListDataSources` to list the next set of data sources.
    #
    # @return [Types::ListDataSourcesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDataSourcesOutput#items #items} => Array&lt;Types::DataSourceSummary&gt;
    #   * {Types::ListDataSourcesOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_data_sources({
    #     domain_identifier: "DomainId", # required
    #     project_identifier: "String", # required
    #     environment_identifier: "String",
    #     connection_identifier: "String",
    #     type: "DataSourceType",
    #     status: "CREATING", # accepts CREATING, FAILED_CREATION, READY, UPDATING, FAILED_UPDATE, RUNNING, DELETING, FAILED_DELETION
    #     name: "Name",
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].domain_id #=> String
    #   resp.items[0].environment_id #=> String
    #   resp.items[0].connection_id #=> String
    #   resp.items[0].data_source_id #=> String
    #   resp.items[0].name #=> String
    #   resp.items[0].type #=> String
    #   resp.items[0].status #=> String, one of "CREATING", "FAILED_CREATION", "READY", "UPDATING", "FAILED_UPDATE", "RUNNING", "DELETING", "FAILED_DELETION"
    #   resp.items[0].enable_setting #=> String, one of "ENABLED", "DISABLED"
    #   resp.items[0].schedule.timezone #=> String, one of "UTC", "AFRICA_JOHANNESBURG", "AMERICA_MONTREAL", "AMERICA_SAO_PAULO", "ASIA_BAHRAIN", "ASIA_BANGKOK", "ASIA_CALCUTTA", "ASIA_DUBAI", "ASIA_HONG_KONG", "ASIA_JAKARTA", "ASIA_KUALA_LUMPUR", "ASIA_SEOUL", "ASIA_SHANGHAI", "ASIA_SINGAPORE", "ASIA_TAIPEI", "ASIA_TOKYO", "AUSTRALIA_MELBOURNE", "AUSTRALIA_SYDNEY", "CANADA_CENTRAL", "CET", "CST6CDT", "ETC_GMT", "ETC_GMT0", "ETC_GMT_ADD_0", "ETC_GMT_ADD_1", "ETC_GMT_ADD_10", "ETC_GMT_ADD_11", "ETC_GMT_ADD_12", "ETC_GMT_ADD_2", "ETC_GMT_ADD_3", "ETC_GMT_ADD_4", "ETC_GMT_ADD_5", "ETC_GMT_ADD_6", "ETC_GMT_ADD_7", "ETC_GMT_ADD_8", "ETC_GMT_ADD_9", "ETC_GMT_NEG_0", "ETC_GMT_NEG_1", "ETC_GMT_NEG_10", "ETC_GMT_NEG_11", "ETC_GMT_NEG_12", "ETC_GMT_NEG_13", "ETC_GMT_NEG_14", "ETC_GMT_NEG_2", "ETC_GMT_NEG_3", "ETC_GMT_NEG_4", "ETC_GMT_NEG_5", "ETC_GMT_NEG_6", "ETC_GMT_NEG_7", "ETC_GMT_NEG_8", "ETC_GMT_NEG_9", "EUROPE_DUBLIN", "EUROPE_LONDON", "EUROPE_PARIS", "EUROPE_STOCKHOLM", "EUROPE_ZURICH", "ISRAEL", "MEXICO_GENERAL", "MST7MDT", "PACIFIC_AUCKLAND", "US_CENTRAL", "US_EASTERN", "US_MOUNTAIN", "US_PACIFIC"
    #   resp.items[0].schedule.schedule #=> String
    #   resp.items[0].last_run_status #=> String, one of "REQUESTED", "RUNNING", "FAILED", "PARTIALLY_SUCCEEDED", "SUCCESS"
    #   resp.items[0].last_run_at #=> Time
    #   resp.items[0].last_run_error_message.error_type #=> String, one of "ACCESS_DENIED_EXCEPTION", "CONFLICT_EXCEPTION", "INTERNAL_SERVER_EXCEPTION", "RESOURCE_NOT_FOUND_EXCEPTION", "SERVICE_QUOTA_EXCEEDED_EXCEPTION", "THROTTLING_EXCEPTION", "VALIDATION_EXCEPTION"
    #   resp.items[0].last_run_error_message.error_detail #=> String
    #   resp.items[0].last_run_asset_count #=> Integer
    #   resp.items[0].created_at #=> Time
    #   resp.items[0].updated_at #=> Time
    #   resp.items[0].description #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ListDataSources AWS API Documentation
    #
    # @overload list_data_sources(params = {})
    # @param [Hash] params ({})
    def list_data_sources(params = {}, options = {})
      req = build_request(:list_data_sources, params)
      req.send_request(options)
    end

    # Lists child domain units for the specified parent domain unit.
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the domain in which you want to list domain units for a
    #   parent domain unit.
    #
    # @option params [required, String] :parent_domain_unit_identifier
    #   The ID of the parent domain unit.
    #
    # @option params [Integer] :max_results
    #   The maximum number of domain units to return in a single call to
    #   ListDomainUnitsForParent. When the number of domain units to be listed
    #   is greater than the value of MaxResults, the response contains a
    #   NextToken value that you can use in a subsequent call to
    #   ListDomainUnitsForParent to list the next set of domain units.
    #
    # @option params [String] :next_token
    #   When the number of domain units is greater than the default value for
    #   the MaxResults parameter, or if you explicitly specify a value for
    #   MaxResults that is less than the number of domain units, the response
    #   includes a pagination token named NextToken. You can specify this
    #   NextToken value in a subsequent call to ListDomainUnitsForParent to
    #   list the next set of domain units.
    #
    # @return [Types::ListDomainUnitsForParentOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDomainUnitsForParentOutput#items #items} => Array&lt;Types::DomainUnitSummary&gt;
    #   * {Types::ListDomainUnitsForParentOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_domain_units_for_parent({
    #     domain_identifier: "DomainId", # required
    #     parent_domain_unit_identifier: "DomainUnitId", # required
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].name #=> String
    #   resp.items[0].id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ListDomainUnitsForParent AWS API Documentation
    #
    # @overload list_domain_units_for_parent(params = {})
    # @param [Hash] params ({})
    def list_domain_units_for_parent(params = {}, options = {})
      req = build_request(:list_domain_units_for_parent, params)
      req.send_request(options)
    end

    # Lists Amazon DataZone domains.
    #
    # @option params [String] :status
    #   The status of the data source.
    #
    # @option params [Integer] :max_results
    #   The maximum number of domains to return in a single call to
    #   `ListDomains`. When the number of domains to be listed is greater than
    #   the value of `MaxResults`, the response contains a `NextToken` value
    #   that you can use in a subsequent call to `ListDomains` to list the
    #   next set of domains.
    #
    # @option params [String] :next_token
    #   When the number of domains is greater than the default value for the
    #   `MaxResults` parameter, or if you explicitly specify a value for
    #   `MaxResults` that is less than the number of domains, the response
    #   includes a pagination token named `NextToken`. You can specify this
    #   `NextToken` value in a subsequent call to `ListDomains` to list the
    #   next set of domains.
    #
    # @return [Types::ListDomainsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDomainsOutput#items #items} => Array&lt;Types::DomainSummary&gt;
    #   * {Types::ListDomainsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_domains({
    #     status: "CREATING", # accepts CREATING, AVAILABLE, CREATION_FAILED, DELETING, DELETED, DELETION_FAILED
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].id #=> String
    #   resp.items[0].name #=> String
    #   resp.items[0].description #=> String
    #   resp.items[0].arn #=> String
    #   resp.items[0].managed_account_id #=> String
    #   resp.items[0].status #=> String, one of "CREATING", "AVAILABLE", "CREATION_FAILED", "DELETING", "DELETED", "DELETION_FAILED"
    #   resp.items[0].portal_url #=> String
    #   resp.items[0].created_at #=> Time
    #   resp.items[0].last_updated_at #=> Time
    #   resp.items[0].domain_version #=> String, one of "V1", "V2"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ListDomains AWS API Documentation
    #
    # @overload list_domains(params = {})
    # @param [Hash] params ({})
    def list_domains(params = {}, options = {})
      req = build_request(:list_domains, params)
      req.send_request(options)
    end

    # Lists the entity (domain units) owners.
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the domain where you want to list entity owners.
    #
    # @option params [required, String] :entity_type
    #   The type of the entity that you want to list.
    #
    # @option params [required, String] :entity_identifier
    #   The ID of the entity that you want to list.
    #
    # @option params [Integer] :max_results
    #   The maximum number of entities to return in a single call to
    #   `ListEntityOwners`. When the number of entities to be listed is
    #   greater than the value of `MaxResults`, the response contains a
    #   `NextToken` value that you can use in a subsequent call to
    #   `ListEntityOwners` to list the next set of entities.
    #
    # @option params [String] :next_token
    #   When the number of entities is greater than the default value for the
    #   `MaxResults` parameter, or if you explicitly specify a value for
    #   `MaxResults` that is less than the number of entities, the response
    #   includes a pagination token named `NextToken`. You can specify this
    #   `NextToken` value in a subsequent call to `ListEntityOwners` to list
    #   the next set of entities.
    #
    # @return [Types::ListEntityOwnersOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListEntityOwnersOutput#owners #owners} => Array&lt;Types::OwnerPropertiesOutput&gt;
    #   * {Types::ListEntityOwnersOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_entity_owners({
    #     domain_identifier: "DomainId", # required
    #     entity_type: "DOMAIN_UNIT", # required, accepts DOMAIN_UNIT
    #     entity_identifier: "String", # required
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.owners #=> Array
    #   resp.owners[0].user.user_id #=> String
    #   resp.owners[0].group.group_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ListEntityOwners AWS API Documentation
    #
    # @overload list_entity_owners(params = {})
    # @param [Hash] params ({})
    def list_entity_owners(params = {}, options = {})
      req = build_request(:list_entity_owners, params)
      req.send_request(options)
    end

    # Lists existing environment actions.
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the Amazon DataZone domain in which the environment actions
    #   are listed.
    #
    # @option params [required, String] :environment_identifier
    #   The ID of the envrironment whose environment actions are listed.
    #
    # @option params [String] :next_token
    #   When the number of environment actions is greater than the default
    #   value for the `MaxResults` parameter, or if you explicitly specify a
    #   value for `MaxResults` that is less than the number of environment
    #   actions, the response includes a pagination token named `NextToken`.
    #   You can specify this `NextToken` value in a subsequent call to
    #   `ListEnvironmentActions` to list the next set of environment actions.
    #
    # @option params [Integer] :max_results
    #   The maximum number of environment actions to return in a single call
    #   to `ListEnvironmentActions`. When the number of environment actions to
    #   be listed is greater than the value of `MaxResults`, the response
    #   contains a `NextToken` value that you can use in a subsequent call to
    #   `ListEnvironmentActions` to list the next set of environment actions.
    #
    # @return [Types::ListEnvironmentActionsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListEnvironmentActionsOutput#items #items} => Array&lt;Types::EnvironmentActionSummary&gt;
    #   * {Types::ListEnvironmentActionsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_environment_actions({
    #     domain_identifier: "DomainId", # required
    #     environment_identifier: "EnvironmentId", # required
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].domain_id #=> String
    #   resp.items[0].environment_id #=> String
    #   resp.items[0].id #=> String
    #   resp.items[0].name #=> String
    #   resp.items[0].parameters.aws_console_link.uri #=> String
    #   resp.items[0].description #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ListEnvironmentActions AWS API Documentation
    #
    # @overload list_environment_actions(params = {})
    # @param [Hash] params ({})
    def list_environment_actions(params = {}, options = {})
      req = build_request(:list_environment_actions, params)
      req.send_request(options)
    end

    # Lists blueprint configurations for a Amazon DataZone environment.
    #
    # @option params [required, String] :domain_identifier
    #   The identifier of the Amazon DataZone domain.
    #
    # @option params [Integer] :max_results
    #   The maximum number of blueprint configurations to return in a single
    #   call to `ListEnvironmentBlueprintConfigurations`. When the number of
    #   configurations to be listed is greater than the value of `MaxResults`,
    #   the response contains a `NextToken` value that you can use in a
    #   subsequent call to `ListEnvironmentBlueprintConfigurations` to list
    #   the next set of configurations.
    #
    # @option params [String] :next_token
    #   When the number of blueprint configurations is greater than the
    #   default value for the `MaxResults` parameter, or if you explicitly
    #   specify a value for `MaxResults` that is less than the number of
    #   configurations, the response includes a pagination token named
    #   `NextToken`. You can specify this `NextToken` value in a subsequent
    #   call to `ListEnvironmentBlueprintConfigurations` to list the next set
    #   of configurations.
    #
    # @return [Types::ListEnvironmentBlueprintConfigurationsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListEnvironmentBlueprintConfigurationsOutput#items #items} => Array&lt;Types::EnvironmentBlueprintConfigurationItem&gt;
    #   * {Types::ListEnvironmentBlueprintConfigurationsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_environment_blueprint_configurations({
    #     domain_identifier: "DomainId", # required
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].domain_id #=> String
    #   resp.items[0].environment_blueprint_id #=> String
    #   resp.items[0].provisioning_role_arn #=> String
    #   resp.items[0].environment_role_permission_boundary #=> String
    #   resp.items[0].manage_access_role_arn #=> String
    #   resp.items[0].enabled_regions #=> Array
    #   resp.items[0].enabled_regions[0] #=> String
    #   resp.items[0].regional_parameters #=> Hash
    #   resp.items[0].regional_parameters["RegionName"] #=> Hash
    #   resp.items[0].regional_parameters["RegionName"]["String"] #=> String
    #   resp.items[0].created_at #=> Time
    #   resp.items[0].updated_at #=> Time
    #   resp.items[0].provisioning_configurations #=> Array
    #   resp.items[0].provisioning_configurations[0].lake_formation_configuration.location_registration_role #=> String
    #   resp.items[0].provisioning_configurations[0].lake_formation_configuration.location_registration_exclude_s3_locations #=> Array
    #   resp.items[0].provisioning_configurations[0].lake_formation_configuration.location_registration_exclude_s3_locations[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ListEnvironmentBlueprintConfigurations AWS API Documentation
    #
    # @overload list_environment_blueprint_configurations(params = {})
    # @param [Hash] params ({})
    def list_environment_blueprint_configurations(params = {}, options = {})
      req = build_request(:list_environment_blueprint_configurations, params)
      req.send_request(options)
    end

    # Lists blueprints in an Amazon DataZone environment.
    #
    # @option params [required, String] :domain_identifier
    #   The identifier of the Amazon DataZone domain.
    #
    # @option params [Integer] :max_results
    #   The maximum number of blueprints to return in a single call to
    #   `ListEnvironmentBlueprints`. When the number of blueprints to be
    #   listed is greater than the value of `MaxResults`, the response
    #   contains a `NextToken` value that you can use in a subsequent call to
    #   `ListEnvironmentBlueprints` to list the next set of blueprints.
    #
    # @option params [String] :next_token
    #   When the number of blueprints in the environment is greater than the
    #   default value for the `MaxResults` parameter, or if you explicitly
    #   specify a value for `MaxResults` that is less than the number of
    #   blueprints in the environment, the response includes a pagination
    #   token named `NextToken`. You can specify this `NextToken` value in a
    #   subsequent call to `ListEnvironmentBlueprints`to list the next set of
    #   blueprints.
    #
    # @option params [String] :name
    #   The name of the Amazon DataZone environment.
    #
    # @option params [Boolean] :managed
    #   Specifies whether the environment blueprint is managed by Amazon
    #   DataZone.
    #
    # @return [Types::ListEnvironmentBlueprintsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListEnvironmentBlueprintsOutput#items #items} => Array&lt;Types::EnvironmentBlueprintSummary&gt;
    #   * {Types::ListEnvironmentBlueprintsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_environment_blueprints({
    #     domain_identifier: "DomainId", # required
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #     name: "EnvironmentBlueprintName",
    #     managed: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].id #=> String
    #   resp.items[0].name #=> String
    #   resp.items[0].description #=> String
    #   resp.items[0].provider #=> String
    #   resp.items[0].provisioning_properties.cloud_formation.template_url #=> String
    #   resp.items[0].created_at #=> Time
    #   resp.items[0].updated_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ListEnvironmentBlueprints AWS API Documentation
    #
    # @overload list_environment_blueprints(params = {})
    # @param [Hash] params ({})
    def list_environment_blueprints(params = {}, options = {})
      req = build_request(:list_environment_blueprints, params)
      req.send_request(options)
    end

    # Lists Amazon DataZone environment profiles.
    #
    # @option params [required, String] :domain_identifier
    #   The identifier of the Amazon DataZone domain.
    #
    # @option params [String] :aws_account_id
    #   The identifier of the Amazon Web Services account where you want to
    #   list environment profiles.
    #
    # @option params [String] :aws_account_region
    #   The Amazon Web Services region where you want to list environment
    #   profiles.
    #
    # @option params [String] :environment_blueprint_identifier
    #   The identifier of the blueprint that was used to create the
    #   environment profiles that you want to list.
    #
    # @option params [String] :project_identifier
    #   The identifier of the Amazon DataZone project.
    #
    # @option params [String] :name
    #
    # @option params [String] :next_token
    #   When the number of environment profiles is greater than the default
    #   value for the `MaxResults` parameter, or if you explicitly specify a
    #   value for `MaxResults` that is less than the number of environment
    #   profiles, the response includes a pagination token named `NextToken`.
    #   You can specify this `NextToken` value in a subsequent call to
    #   `ListEnvironmentProfiles` to list the next set of environment
    #   profiles.
    #
    # @option params [Integer] :max_results
    #   The maximum number of environment profiles to return in a single call
    #   to `ListEnvironmentProfiles`. When the number of environment profiles
    #   to be listed is greater than the value of `MaxResults`, the response
    #   contains a `NextToken` value that you can use in a subsequent call to
    #   `ListEnvironmentProfiles` to list the next set of environment
    #   profiles.
    #
    # @return [Types::ListEnvironmentProfilesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListEnvironmentProfilesOutput#items #items} => Array&lt;Types::EnvironmentProfileSummary&gt;
    #   * {Types::ListEnvironmentProfilesOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_environment_profiles({
    #     domain_identifier: "DomainId", # required
    #     aws_account_id: "AwsAccountId",
    #     aws_account_region: "AwsRegion",
    #     environment_blueprint_identifier: "EnvironmentBlueprintId",
    #     project_identifier: "ProjectId",
    #     name: "EnvironmentProfileName",
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].id #=> String
    #   resp.items[0].domain_id #=> String
    #   resp.items[0].aws_account_id #=> String
    #   resp.items[0].aws_account_region #=> String
    #   resp.items[0].created_by #=> String
    #   resp.items[0].created_at #=> Time
    #   resp.items[0].updated_at #=> Time
    #   resp.items[0].name #=> String
    #   resp.items[0].description #=> String
    #   resp.items[0].environment_blueprint_id #=> String
    #   resp.items[0].project_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ListEnvironmentProfiles AWS API Documentation
    #
    # @overload list_environment_profiles(params = {})
    # @param [Hash] params ({})
    def list_environment_profiles(params = {}, options = {})
      req = build_request(:list_environment_profiles, params)
      req.send_request(options)
    end

    # Lists Amazon DataZone environments.
    #
    # @option params [required, String] :domain_identifier
    #   The identifier of the Amazon DataZone domain.
    #
    # @option params [String] :aws_account_id
    #   The identifier of the Amazon Web Services account where you want to
    #   list environments.
    #
    # @option params [String] :status
    #   The status of the environments that you want to list.
    #
    # @option params [String] :aws_account_region
    #   The Amazon Web Services region where you want to list environments.
    #
    # @option params [required, String] :project_identifier
    #   The identifier of the Amazon DataZone project.
    #
    # @option params [String] :environment_profile_identifier
    #   The identifier of the environment profile.
    #
    # @option params [String] :environment_blueprint_identifier
    #   The identifier of the Amazon DataZone blueprint.
    #
    # @option params [String] :provider
    #   The provider of the environment.
    #
    # @option params [String] :name
    #   The name of the environment.
    #
    # @option params [Integer] :max_results
    #   The maximum number of environments to return in a single call to
    #   `ListEnvironments`. When the number of environments to be listed is
    #   greater than the value of `MaxResults`, the response contains a
    #   `NextToken` value that you can use in a subsequent call to
    #   `ListEnvironments` to list the next set of environments.
    #
    # @option params [String] :next_token
    #   When the number of environments is greater than the default value for
    #   the `MaxResults` parameter, or if you explicitly specify a value for
    #   `MaxResults` that is less than the number of environments, the
    #   response includes a pagination token named `NextToken`. You can
    #   specify this `NextToken` value in a subsequent call to
    #   `ListEnvironments` to list the next set of environments.
    #
    # @return [Types::ListEnvironmentsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListEnvironmentsOutput#items #items} => Array&lt;Types::EnvironmentSummary&gt;
    #   * {Types::ListEnvironmentsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_environments({
    #     domain_identifier: "DomainId", # required
    #     aws_account_id: "AwsAccountId",
    #     status: "ACTIVE", # accepts ACTIVE, CREATING, UPDATING, DELETING, CREATE_FAILED, UPDATE_FAILED, DELETE_FAILED, VALIDATION_FAILED, SUSPENDED, DISABLED, EXPIRED, DELETED, INACCESSIBLE
    #     aws_account_region: "AwsRegion",
    #     project_identifier: "ProjectId", # required
    #     environment_profile_identifier: "EnvironmentProfileId",
    #     environment_blueprint_identifier: "EnvironmentBlueprintId",
    #     provider: "String",
    #     name: "String",
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].project_id #=> String
    #   resp.items[0].id #=> String
    #   resp.items[0].domain_id #=> String
    #   resp.items[0].created_by #=> String
    #   resp.items[0].created_at #=> Time
    #   resp.items[0].updated_at #=> Time
    #   resp.items[0].name #=> String
    #   resp.items[0].description #=> String
    #   resp.items[0].environment_profile_id #=> String
    #   resp.items[0].aws_account_id #=> String
    #   resp.items[0].aws_account_region #=> String
    #   resp.items[0].provider #=> String
    #   resp.items[0].status #=> String, one of "ACTIVE", "CREATING", "UPDATING", "DELETING", "CREATE_FAILED", "UPDATE_FAILED", "DELETE_FAILED", "VALIDATION_FAILED", "SUSPENDED", "DISABLED", "EXPIRED", "DELETED", "INACCESSIBLE"
    #   resp.items[0].environment_configuration_id #=> String
    #   resp.items[0].environment_configuration_name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ListEnvironments AWS API Documentation
    #
    # @overload list_environments(params = {})
    # @param [Hash] params ({})
    def list_environments(params = {}, options = {})
      req = build_request(:list_environments, params)
      req.send_request(options)
    end

    # Lists job runs.
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the domain where you want to list job runs.
    #
    # @option params [required, String] :job_identifier
    #   The ID of the job run.
    #
    # @option params [String] :status
    #   The status of a job run.
    #
    # @option params [String] :sort_order
    #   Specifies the order in which job runs are to be sorted.
    #
    # @option params [String] :next_token
    #   When the number of job runs is greater than the default value for the
    #   MaxResults parameter, or if you explicitly specify a value for
    #   MaxResults that is less than the number of job runs, the response
    #   includes a pagination token named NextToken. You can specify this
    #   NextToken value in a subsequent call to ListJobRuns to list the next
    #   set of job runs.
    #
    # @option params [Integer] :max_results
    #   The maximum number of job runs to return in a single call to
    #   ListJobRuns. When the number of job runs to be listed is greater than
    #   the value of MaxResults, the response contains a NextToken value that
    #   you can use in a subsequent call to ListJobRuns to list the next set
    #   of job runs.
    #
    # @return [Types::ListJobRunsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListJobRunsOutput#items #items} => Array&lt;Types::JobRunSummary&gt;
    #   * {Types::ListJobRunsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_job_runs({
    #     domain_identifier: "DomainId", # required
    #     job_identifier: "ListJobRunsInputJobIdentifierString", # required
    #     status: "SCHEDULED", # accepts SCHEDULED, IN_PROGRESS, SUCCESS, PARTIALLY_SUCCEEDED, FAILED, ABORTED, TIMED_OUT, CANCELED
    #     sort_order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].domain_id #=> String
    #   resp.items[0].job_id #=> String
    #   resp.items[0].job_type #=> String, one of "LINEAGE"
    #   resp.items[0].run_id #=> String
    #   resp.items[0].run_mode #=> String, one of "SCHEDULED", "ON_DEMAND"
    #   resp.items[0].status #=> String, one of "SCHEDULED", "IN_PROGRESS", "SUCCESS", "PARTIALLY_SUCCEEDED", "FAILED", "ABORTED", "TIMED_OUT", "CANCELED"
    #   resp.items[0].error.message #=> String
    #   resp.items[0].created_by #=> String
    #   resp.items[0].created_at #=> Time
    #   resp.items[0].start_time #=> Time
    #   resp.items[0].end_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ListJobRuns AWS API Documentation
    #
    # @overload list_job_runs(params = {})
    # @param [Hash] params ({})
    def list_job_runs(params = {}, options = {})
      req = build_request(:list_job_runs, params)
      req.send_request(options)
    end

    # Lists lineage events.
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the domain where you want to list lineage events.
    #
    # @option params [Integer] :max_results
    #   The maximum number of lineage events to return in a single call to
    #   ListLineageEvents. When the number of lineage events to be listed is
    #   greater than the value of MaxResults, the response contains a
    #   NextToken value that you can use in a subsequent call to
    #   ListLineageEvents to list the next set of lineage events.
    #
    # @option params [Time,DateTime,Date,Integer,String] :timestamp_after
    #   The after timestamp of a lineage event.
    #
    # @option params [Time,DateTime,Date,Integer,String] :timestamp_before
    #   The before timestamp of a lineage event.
    #
    # @option params [String] :processing_status
    #   The processing status of a lineage event.
    #
    # @option params [String] :sort_order
    #   The sort order of the lineage events.
    #
    # @option params [String] :next_token
    #   When the number of lineage events is greater than the default value
    #   for the MaxResults parameter, or if you explicitly specify a value for
    #   MaxResults that is less than the number of lineage events, the
    #   response includes a pagination token named NextToken. You can specify
    #   this NextToken value in a subsequent call to ListLineageEvents to list
    #   the next set of lineage events.
    #
    # @return [Types::ListLineageEventsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListLineageEventsOutput#items #items} => Array&lt;Types::LineageEventSummary&gt;
    #   * {Types::ListLineageEventsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_lineage_events({
    #     domain_identifier: "DomainId", # required
    #     max_results: 1,
    #     timestamp_after: Time.now,
    #     timestamp_before: Time.now,
    #     processing_status: "REQUESTED", # accepts REQUESTED, PROCESSING, SUCCESS, FAILED
    #     sort_order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].id #=> String
    #   resp.items[0].domain_id #=> String
    #   resp.items[0].processing_status #=> String, one of "REQUESTED", "PROCESSING", "SUCCESS", "FAILED"
    #   resp.items[0].event_time #=> Time
    #   resp.items[0].event_summary.open_lineage_run_event_summary.event_type #=> String, one of "START", "RUNNING", "COMPLETE", "ABORT", "FAIL", "OTHER"
    #   resp.items[0].event_summary.open_lineage_run_event_summary.run_id #=> String
    #   resp.items[0].event_summary.open_lineage_run_event_summary.job.name #=> String
    #   resp.items[0].event_summary.open_lineage_run_event_summary.job.namespace #=> String
    #   resp.items[0].event_summary.open_lineage_run_event_summary.inputs #=> Array
    #   resp.items[0].event_summary.open_lineage_run_event_summary.inputs[0].name #=> String
    #   resp.items[0].event_summary.open_lineage_run_event_summary.inputs[0].namespace #=> String
    #   resp.items[0].event_summary.open_lineage_run_event_summary.outputs #=> Array
    #   resp.items[0].event_summary.open_lineage_run_event_summary.outputs[0].name #=> String
    #   resp.items[0].event_summary.open_lineage_run_event_summary.outputs[0].namespace #=> String
    #   resp.items[0].created_by #=> String
    #   resp.items[0].created_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ListLineageEvents AWS API Documentation
    #
    # @overload list_lineage_events(params = {})
    # @param [Hash] params ({})
    def list_lineage_events(params = {}, options = {})
      req = build_request(:list_lineage_events, params)
      req.send_request(options)
    end

    # Lists the history of the specified data lineage node.
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the domain where you want to list the history of the
    #   specified data lineage node.
    #
    # @option params [Integer] :max_results
    #   The maximum number of history items to return in a single call to
    #   ListLineageNodeHistory. When the number of memberships to be listed is
    #   greater than the value of MaxResults, the response contains a
    #   NextToken value that you can use in a subsequent call to
    #   ListLineageNodeHistory to list the next set of items.
    #
    # @option params [String] :next_token
    #   When the number of history items is greater than the default value for
    #   the MaxResults parameter, or if you explicitly specify a value for
    #   MaxResults that is less than the number of items, the response
    #   includes a pagination token named NextToken. You can specify this
    #   NextToken value in a subsequent call to ListLineageNodeHistory to list
    #   the next set of items.
    #
    # @option params [required, String] :identifier
    #   The ID of the data lineage node whose history you want to list.
    #
    # @option params [String] :direction
    #   The direction of the data lineage node refers to the lineage node
    #   having neighbors in that direction. For example, if direction is
    #   `UPSTREAM`, the `ListLineageNodeHistory` API responds with historical
    #   versions with upstream neighbors only.
    #
    # @option params [Time,DateTime,Date,Integer,String] :event_timestamp_gte
    #   Specifies whether the action is to return data lineage node history
    #   from the time after the event timestamp.
    #
    # @option params [Time,DateTime,Date,Integer,String] :event_timestamp_lte
    #   Specifies whether the action is to return data lineage node history
    #   from the time prior of the event timestamp.
    #
    # @option params [String] :sort_order
    #   The order by which you want data lineage node history to be sorted.
    #
    # @return [Types::ListLineageNodeHistoryOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListLineageNodeHistoryOutput#nodes #nodes} => Array&lt;Types::LineageNodeSummary&gt;
    #   * {Types::ListLineageNodeHistoryOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_lineage_node_history({
    #     domain_identifier: "DomainId", # required
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #     identifier: "LineageNodeIdentifier", # required
    #     direction: "UPSTREAM", # accepts UPSTREAM, DOWNSTREAM
    #     event_timestamp_gte: Time.now,
    #     event_timestamp_lte: Time.now,
    #     sort_order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #   })
    #
    # @example Response structure
    #
    #   resp.nodes #=> Array
    #   resp.nodes[0].domain_id #=> String
    #   resp.nodes[0].name #=> String
    #   resp.nodes[0].description #=> String
    #   resp.nodes[0].created_at #=> Time
    #   resp.nodes[0].created_by #=> String
    #   resp.nodes[0].updated_at #=> Time
    #   resp.nodes[0].updated_by #=> String
    #   resp.nodes[0].id #=> String
    #   resp.nodes[0].type_name #=> String
    #   resp.nodes[0].type_revision #=> String
    #   resp.nodes[0].source_identifier #=> String
    #   resp.nodes[0].event_timestamp #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ListLineageNodeHistory AWS API Documentation
    #
    # @overload list_lineage_node_history(params = {})
    # @param [Hash] params ({})
    def list_lineage_node_history(params = {}, options = {})
      req = build_request(:list_lineage_node_history, params)
      req.send_request(options)
    end

    # Lists all metadata generation runs.
    #
    # Metadata generation runs represent automated processes that leverage
    # AI/ML capabilities to create or enhance asset metadata at scale. This
    # feature helps organizations maintain comprehensive and consistent
    # metadata across large numbers of assets without manual intervention.
    # It can automatically generate business descriptions, tags, and other
    # metadata elements, significantly reducing the time and effort required
    # for metadata management while improving consistency and completeness.
    #
    # Prerequisites:
    #
    # * Valid domain identifier.
    #
    # * User must have access to metadata generation runs in the domain.
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the Amazon DataZone domain where you want to list metadata
    #   generation runs.
    #
    # @option params [String] :status
    #   The status of the metadata generation runs.
    #
    # @option params [String] :type
    #   The type of the metadata generation runs.
    #
    # @option params [String] :next_token
    #   When the number of metadata generation runs is greater than the
    #   default value for the MaxResults parameter, or if you explicitly
    #   specify a value for MaxResults that is less than the number of
    #   metadata generation runs, the response includes a pagination token
    #   named NextToken. You can specify this NextToken value in a subsequent
    #   call to ListMetadataGenerationRuns to list the next set of revisions.
    #
    # @option params [Integer] :max_results
    #   The maximum number of metadata generation runs to return in a single
    #   call to ListMetadataGenerationRuns. When the number of metadata
    #   generation runs to be listed is greater than the value of MaxResults,
    #   the response contains a NextToken value that you can use in a
    #   subsequent call to ListMetadataGenerationRuns to list the next set of
    #   revisions.
    #
    # @option params [String] :target_identifier
    #   The target ID for which you want to list metadata generation runs.
    #
    # @return [Types::ListMetadataGenerationRunsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListMetadataGenerationRunsOutput#items #items} => Array&lt;Types::MetadataGenerationRunItem&gt;
    #   * {Types::ListMetadataGenerationRunsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_metadata_generation_runs({
    #     domain_identifier: "DomainId", # required
    #     status: "SUBMITTED", # accepts SUBMITTED, IN_PROGRESS, CANCELED, SUCCEEDED, FAILED, PARTIALLY_SUCCEEDED
    #     type: "BUSINESS_DESCRIPTIONS", # accepts BUSINESS_DESCRIPTIONS, BUSINESS_NAMES, BUSINESS_GLOSSARY_ASSOCIATIONS
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #     target_identifier: "EntityId",
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].domain_id #=> String
    #   resp.items[0].id #=> String
    #   resp.items[0].target.type #=> String, one of "ASSET"
    #   resp.items[0].target.identifier #=> String
    #   resp.items[0].target.revision #=> String
    #   resp.items[0].status #=> String, one of "SUBMITTED", "IN_PROGRESS", "CANCELED", "SUCCEEDED", "FAILED", "PARTIALLY_SUCCEEDED"
    #   resp.items[0].type #=> String, one of "BUSINESS_DESCRIPTIONS", "BUSINESS_NAMES", "BUSINESS_GLOSSARY_ASSOCIATIONS"
    #   resp.items[0].types #=> Array
    #   resp.items[0].types[0] #=> String, one of "BUSINESS_DESCRIPTIONS", "BUSINESS_NAMES", "BUSINESS_GLOSSARY_ASSOCIATIONS"
    #   resp.items[0].created_at #=> Time
    #   resp.items[0].created_by #=> String
    #   resp.items[0].owning_project_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ListMetadataGenerationRuns AWS API Documentation
    #
    # @overload list_metadata_generation_runs(params = {})
    # @param [Hash] params ({})
    def list_metadata_generation_runs(params = {}, options = {})
      req = build_request(:list_metadata_generation_runs, params)
      req.send_request(options)
    end

    # Lists notebook runs in an Amazon DataZone domain.
    #
    # @option params [required, String] :domain_identifier
    #   The identifier of the Amazon DataZone domain in which to list notebook
    #   runs.
    #
    # @option params [required, String] :owning_project_identifier
    #   The identifier of the project that owns the notebook runs.
    #
    # @option params [String] :notebook_identifier
    #   The identifier of the notebook to filter runs by.
    #
    # @option params [String] :status
    #   The status to filter notebook runs by.
    #
    # @option params [String] :schedule_identifier
    #   The identifier of the schedule to filter notebook runs by.
    #
    # @option params [Integer] :max_results
    #   The maximum number of notebook runs to return in a single call. When
    #   the number of notebook runs exceeds the value of `MaxResults`, the
    #   response contains a `NextToken` value.
    #
    # @option params [String] :sort_order
    #   The sort order for the results.
    #
    # @option params [String] :next_token
    #   When the number of notebook runs is greater than the default value for
    #   the `MaxResults` parameter, or if you explicitly specify a value for
    #   `MaxResults` that is less than the number of notebook runs, the
    #   response includes a pagination token named `NextToken`. You can
    #   specify this `NextToken` value in a subsequent call to
    #   `ListNotebookRuns` to list the next set of notebook runs.
    #
    # @return [Types::ListNotebookRunsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListNotebookRunsOutput#items #items} => Array&lt;Types::NotebookRunSummary&gt;
    #   * {Types::ListNotebookRunsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_notebook_runs({
    #     domain_identifier: "DomainId", # required
    #     owning_project_identifier: "ProjectId", # required
    #     notebook_identifier: "NotebookId",
    #     status: "QUEUED", # accepts QUEUED, STARTING, RUNNING, STOPPING, STOPPED, SUCCEEDED, FAILED
    #     schedule_identifier: "ScheduleId",
    #     max_results: 1,
    #     sort_order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].id #=> String
    #   resp.items[0].domain_id #=> String
    #   resp.items[0].owning_project_id #=> String
    #   resp.items[0].notebook_id #=> String
    #   resp.items[0].schedule_id #=> String
    #   resp.items[0].status #=> String, one of "QUEUED", "STARTING", "RUNNING", "STOPPING", "STOPPED", "SUCCEEDED", "FAILED"
    #   resp.items[0].trigger_source.type #=> String, one of "MANUAL", "SCHEDULED", "WORKFLOW"
    #   resp.items[0].trigger_source.name #=> String
    #   resp.items[0].created_at #=> Time
    #   resp.items[0].created_by #=> String
    #   resp.items[0].updated_at #=> Time
    #   resp.items[0].updated_by #=> String
    #   resp.items[0].started_at #=> Time
    #   resp.items[0].completed_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ListNotebookRuns AWS API Documentation
    #
    # @overload list_notebook_runs(params = {})
    # @param [Hash] params ({})
    def list_notebook_runs(params = {}, options = {})
      req = build_request(:list_notebook_runs, params)
      req.send_request(options)
    end

    # Lists all Amazon DataZone notifications.
    #
    # @option params [required, String] :domain_identifier
    #   The identifier of the Amazon DataZone domain.
    #
    # @option params [required, String] :type
    #   The type of notifications.
    #
    # @option params [Time,DateTime,Date,Integer,String] :after_timestamp
    #   The time after which you want to list notifications.
    #
    # @option params [Time,DateTime,Date,Integer,String] :before_timestamp
    #   The time before which you want to list notifications.
    #
    # @option params [Array<String>] :subjects
    #   The subjects of notifications.
    #
    # @option params [String] :task_status
    #   The task status of notifications.
    #
    # @option params [Integer] :max_results
    #   The maximum number of notifications to return in a single call to
    #   `ListNotifications`. When the number of notifications to be listed is
    #   greater than the value of `MaxResults`, the response contains a
    #   `NextToken` value that you can use in a subsequent call to
    #   `ListNotifications` to list the next set of notifications.
    #
    # @option params [String] :next_token
    #   When the number of notifications is greater than the default value for
    #   the `MaxResults` parameter, or if you explicitly specify a value for
    #   `MaxResults` that is less than the number of notifications, the
    #   response includes a pagination token named `NextToken`. You can
    #   specify this `NextToken` value in a subsequent call to
    #   `ListNotifications` to list the next set of notifications.
    #
    # @return [Types::ListNotificationsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListNotificationsOutput#notifications #notifications} => Array&lt;Types::NotificationOutput&gt;
    #   * {Types::ListNotificationsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_notifications({
    #     domain_identifier: "DomainId", # required
    #     type: "TASK", # required, accepts TASK, EVENT
    #     after_timestamp: Time.now,
    #     before_timestamp: Time.now,
    #     subjects: ["String"],
    #     task_status: "ACTIVE", # accepts ACTIVE, INACTIVE
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.notifications #=> Array
    #   resp.notifications[0].identifier #=> String
    #   resp.notifications[0].domain_identifier #=> String
    #   resp.notifications[0].type #=> String, one of "TASK", "EVENT"
    #   resp.notifications[0].topic.subject #=> String
    #   resp.notifications[0].topic.resource.type #=> String, one of "PROJECT"
    #   resp.notifications[0].topic.resource.id #=> String
    #   resp.notifications[0].topic.resource.name #=> String
    #   resp.notifications[0].topic.role #=> String, one of "PROJECT_OWNER", "PROJECT_CONTRIBUTOR", "PROJECT_VIEWER", "DOMAIN_OWNER", "PROJECT_SUBSCRIBER"
    #   resp.notifications[0].title #=> String
    #   resp.notifications[0].message #=> String
    #   resp.notifications[0].status #=> String, one of "ACTIVE", "INACTIVE"
    #   resp.notifications[0].action_link #=> String
    #   resp.notifications[0].creation_timestamp #=> Time
    #   resp.notifications[0].last_updated_timestamp #=> Time
    #   resp.notifications[0].metadata #=> Hash
    #   resp.notifications[0].metadata["String"] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ListNotifications AWS API Documentation
    #
    # @overload list_notifications(params = {})
    # @param [Hash] params ({})
    def list_notifications(params = {}, options = {})
      req = build_request(:list_notifications, params)
      req.send_request(options)
    end

    # Lists policy grants.
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the domain where you want to list policy grants.
    #
    # @option params [required, String] :entity_type
    #   The type of entity for which you want to list policy grants.
    #
    # @option params [required, String] :entity_identifier
    #   The ID of the entity for which you want to list policy grants.
    #
    # @option params [required, String] :policy_type
    #   The type of policy that you want to list.
    #
    # @option params [Integer] :max_results
    #   The maximum number of grants to return in a single call to
    #   `ListPolicyGrants`. When the number of grants to be listed is greater
    #   than the value of `MaxResults`, the response contains a `NextToken`
    #   value that you can use in a subsequent call to `ListPolicyGrants` to
    #   list the next set of grants.
    #
    # @option params [String] :next_token
    #   When the number of grants is greater than the default value for the
    #   `MaxResults` parameter, or if you explicitly specify a value for
    #   `MaxResults` that is less than the number of grants, the response
    #   includes a pagination token named `NextToken`. You can specify this
    #   `NextToken` value in a subsequent call to `ListPolicyGrants` to list
    #   the next set of grants.
    #
    # @return [Types::ListPolicyGrantsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPolicyGrantsOutput#grant_list #grant_list} => Array&lt;Types::PolicyGrantMember&gt;
    #   * {Types::ListPolicyGrantsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_policy_grants({
    #     domain_identifier: "DomainId", # required
    #     entity_type: "DOMAIN_UNIT", # required, accepts DOMAIN_UNIT, ENVIRONMENT_BLUEPRINT_CONFIGURATION, ENVIRONMENT_PROFILE, ASSET_TYPE
    #     entity_identifier: "String", # required
    #     policy_type: "CREATE_DOMAIN_UNIT", # required, accepts CREATE_DOMAIN_UNIT, OVERRIDE_DOMAIN_UNIT_OWNERS, ADD_TO_PROJECT_MEMBER_POOL, OVERRIDE_PROJECT_OWNERS, CREATE_GLOSSARY, CREATE_FORM_TYPE, CREATE_ASSET_TYPE, CREATE_PROJECT, CREATE_ENVIRONMENT_PROFILE, DELEGATE_CREATE_ENVIRONMENT_PROFILE, CREATE_ENVIRONMENT, CREATE_ENVIRONMENT_FROM_BLUEPRINT, CREATE_PROJECT_FROM_PROJECT_PROFILE, USE_ASSET_TYPE
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.grant_list #=> Array
    #   resp.grant_list[0].principal.user.user_identifier #=> String
    #   resp.grant_list[0].principal.group.group_identifier #=> String
    #   resp.grant_list[0].principal.project.project_designation #=> String, one of "OWNER", "CONTRIBUTOR", "PROJECT_CATALOG_STEWARD"
    #   resp.grant_list[0].principal.project.project_identifier #=> String
    #   resp.grant_list[0].principal.project.project_grant_filter.domain_unit_filter.domain_unit #=> String
    #   resp.grant_list[0].principal.project.project_grant_filter.domain_unit_filter.include_child_domain_units #=> Boolean
    #   resp.grant_list[0].principal.domain_unit.domain_unit_designation #=> String, one of "OWNER"
    #   resp.grant_list[0].principal.domain_unit.domain_unit_identifier #=> String
    #   resp.grant_list[0].detail.create_domain_unit.include_child_domain_units #=> Boolean
    #   resp.grant_list[0].detail.override_domain_unit_owners.include_child_domain_units #=> Boolean
    #   resp.grant_list[0].detail.add_to_project_member_pool.include_child_domain_units #=> Boolean
    #   resp.grant_list[0].detail.override_project_owners.include_child_domain_units #=> Boolean
    #   resp.grant_list[0].detail.create_glossary.include_child_domain_units #=> Boolean
    #   resp.grant_list[0].detail.create_form_type.include_child_domain_units #=> Boolean
    #   resp.grant_list[0].detail.create_asset_type.include_child_domain_units #=> Boolean
    #   resp.grant_list[0].detail.create_project.include_child_domain_units #=> Boolean
    #   resp.grant_list[0].detail.create_environment_profile.domain_unit_id #=> String
    #   resp.grant_list[0].detail.create_project_from_project_profile.include_child_domain_units #=> Boolean
    #   resp.grant_list[0].detail.create_project_from_project_profile.project_profiles #=> Array
    #   resp.grant_list[0].detail.create_project_from_project_profile.project_profiles[0] #=> String
    #   resp.grant_list[0].detail.use_asset_type.domain_unit_id #=> String
    #   resp.grant_list[0].created_at #=> Time
    #   resp.grant_list[0].created_by #=> String
    #   resp.grant_list[0].grant_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ListPolicyGrants AWS API Documentation
    #
    # @overload list_policy_grants(params = {})
    # @param [Hash] params ({})
    def list_policy_grants(params = {}, options = {})
      req = build_request(:list_policy_grants, params)
      req.send_request(options)
    end

    # Lists all members of the specified project.
    #
    # @option params [required, String] :domain_identifier
    #   The identifier of the Amazon DataZone domain in which you want to list
    #   project memberships.
    #
    # @option params [required, String] :project_identifier
    #   The identifier of the project whose memberships you want to list.
    #
    # @option params [String] :sort_by
    #   The method by which you want to sort the project memberships.
    #
    # @option params [String] :sort_order
    #   The sort order of the project memberships.
    #
    # @option params [String] :next_token
    #   When the number of memberships is greater than the default value for
    #   the `MaxResults` parameter, or if you explicitly specify a value for
    #   `MaxResults` that is less than the number of memberships, the response
    #   includes a pagination token named `NextToken`. You can specify this
    #   `NextToken` value in a subsequent call to `ListProjectMemberships` to
    #   list the next set of memberships.
    #
    # @option params [Integer] :max_results
    #   The maximum number of memberships to return in a single call to
    #   `ListProjectMemberships`. When the number of memberships to be listed
    #   is greater than the value of `MaxResults`, the response contains a
    #   `NextToken` value that you can use in a subsequent call to
    #   `ListProjectMemberships` to list the next set of memberships.
    #
    # @return [Types::ListProjectMembershipsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListProjectMembershipsOutput#members #members} => Array&lt;Types::ProjectMember&gt;
    #   * {Types::ListProjectMembershipsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_project_memberships({
    #     domain_identifier: "DomainId", # required
    #     project_identifier: "ProjectId", # required
    #     sort_by: "NAME", # accepts NAME
    #     sort_order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.members #=> Array
    #   resp.members[0].member_details.user.user_id #=> String
    #   resp.members[0].member_details.group.group_id #=> String
    #   resp.members[0].designation #=> String, one of "PROJECT_OWNER", "PROJECT_CONTRIBUTOR", "PROJECT_CATALOG_VIEWER", "PROJECT_CATALOG_CONSUMER", "PROJECT_CATALOG_STEWARD"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ListProjectMemberships AWS API Documentation
    #
    # @overload list_project_memberships(params = {})
    # @param [Hash] params ({})
    def list_project_memberships(params = {}, options = {})
      req = build_request(:list_project_memberships, params)
      req.send_request(options)
    end

    # Lists project profiles.
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the domain where you want to list project profiles.
    #
    # @option params [String] :name
    #   The name of a project profile.
    #
    # @option params [String] :sort_by
    #   Specifies by what to sort project profiles.
    #
    # @option params [String] :sort_order
    #   Specifies the sort order of the project profiles.
    #
    # @option params [String] :next_token
    #   When the number of project profiles is greater than the default value
    #   for the MaxResults parameter, or if you explicitly specify a value for
    #   MaxResults that is less than the number of project profiles, the
    #   response includes a pagination token named NextToken. You can specify
    #   this NextToken value in a subsequent call to ListProjectProfiles to
    #   list the next set of project profiles.
    #
    # @option params [Integer] :max_results
    #   The maximum number of project profiles to return in a single call to
    #   ListProjectProfiles. When the number of project profiles to be listed
    #   is greater than the value of MaxResults, the response contains a
    #   NextToken value that you can use in a subsequent call to
    #   ListProjectProfiles to list the next set of project profiles.
    #
    # @return [Types::ListProjectProfilesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListProjectProfilesOutput#items #items} => Array&lt;Types::ProjectProfileSummary&gt;
    #   * {Types::ListProjectProfilesOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_project_profiles({
    #     domain_identifier: "DomainId", # required
    #     name: "ProjectProfileName",
    #     sort_by: "NAME", # accepts NAME
    #     sort_order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].domain_id #=> String
    #   resp.items[0].id #=> String
    #   resp.items[0].name #=> String
    #   resp.items[0].description #=> String
    #   resp.items[0].status #=> String, one of "ENABLED", "DISABLED"
    #   resp.items[0].created_by #=> String
    #   resp.items[0].created_at #=> Time
    #   resp.items[0].last_updated_at #=> Time
    #   resp.items[0].domain_unit_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ListProjectProfiles AWS API Documentation
    #
    # @overload list_project_profiles(params = {})
    # @param [Hash] params ({})
    def list_project_profiles(params = {}, options = {})
      req = build_request(:list_project_profiles, params)
      req.send_request(options)
    end

    # Lists Amazon DataZone projects.
    #
    # @option params [required, String] :domain_identifier
    #   The identifier of the Amazon DataZone domain.
    #
    # @option params [String] :user_identifier
    #   The identifier of the Amazon DataZone user.
    #
    # @option params [String] :group_identifier
    #   The identifier of a group.
    #
    # @option params [String] :name
    #   The name of the project.
    #
    # @option params [String] :project_category
    #   A parameter to filter projects by their category.
    #
    # @option params [String] :next_token
    #   When the number of projects is greater than the default value for the
    #   `MaxResults` parameter, or if you explicitly specify a value for
    #   `MaxResults` that is less than the number of projects, the response
    #   includes a pagination token named `NextToken`. You can specify this
    #   `NextToken` value in a subsequent call to `ListProjects` to list the
    #   next set of projects.
    #
    # @option params [Integer] :max_results
    #   The maximum number of projects to return in a single call to
    #   `ListProjects`. When the number of projects to be listed is greater
    #   than the value of `MaxResults`, the response contains a `NextToken`
    #   value that you can use in a subsequent call to `ListProjects` to list
    #   the next set of projects.
    #
    # @return [Types::ListProjectsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListProjectsOutput#items #items} => Array&lt;Types::ProjectSummary&gt;
    #   * {Types::ListProjectsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_projects({
    #     domain_identifier: "DomainId", # required
    #     user_identifier: "String",
    #     group_identifier: "String",
    #     name: "ProjectName",
    #     project_category: "String",
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].domain_id #=> String
    #   resp.items[0].id #=> String
    #   resp.items[0].name #=> String
    #   resp.items[0].description #=> String
    #   resp.items[0].project_status #=> String, one of "ACTIVE", "DELETING", "DELETE_FAILED", "UPDATING", "UPDATE_FAILED", "MOVING"
    #   resp.items[0].failure_reasons #=> Array
    #   resp.items[0].failure_reasons[0].code #=> String
    #   resp.items[0].failure_reasons[0].message #=> String
    #   resp.items[0].created_by #=> String
    #   resp.items[0].created_at #=> Time
    #   resp.items[0].updated_at #=> Time
    #   resp.items[0].domain_unit_id #=> String
    #   resp.items[0].project_category #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ListProjects AWS API Documentation
    #
    # @overload list_projects(params = {})
    # @param [Hash] params ({})
    def list_projects(params = {}, options = {})
      req = build_request(:list_projects, params)
      req.send_request(options)
    end

    # Lists existing rules. In Amazon DataZone, a rule is a formal agreement
    # that enforces specific requirements across user workflows (e.g.,
    # publishing assets to the catalog, requesting subscriptions, creating
    # projects) within the Amazon DataZone data portal. These rules help
    # maintain consistency, ensure compliance, and uphold governance
    # standards in data management processes. For instance, a metadata
    # enforcement rule can specify the required information for creating a
    # subscription request or publishing a data asset to the catalog,
    # ensuring alignment with organizational standards.
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the domain in which the rules are to be listed.
    #
    # @option params [required, String] :target_type
    #   The target type of the rule.
    #
    # @option params [required, String] :target_identifier
    #   The target ID of the rule.
    #
    # @option params [String] :rule_type
    #   The type of the rule.
    #
    # @option params [String] :action
    #   The action of the rule.
    #
    # @option params [Array<String>] :project_ids
    #   The IDs of projects in which rules are to be listed.
    #
    # @option params [Array<String>] :asset_types
    #   The asset types of the rule.
    #
    # @option params [Boolean] :data_product
    #   The data product of the rule.
    #
    # @option params [Boolean] :include_cascaded
    #   Specifies whether to include cascading rules in the results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of rules to return in a single call to `ListRules`.
    #   When the number of rules to be listed is greater than the value of
    #   `MaxResults`, the response contains a `NextToken` value that you can
    #   use in a subsequent call to `ListRules` to list the next set of rules.
    #
    # @option params [String] :next_token
    #   When the number of rules is greater than the default value for the
    #   `MaxResults` parameter, or if you explicitly specify a value for
    #   `MaxResults` that is less than the number of rules, the response
    #   includes a pagination token named `NextToken`. You can specify this
    #   `NextToken` value in a subsequent call to `ListRules` to list the next
    #   set of rules.
    #
    # @return [Types::ListRulesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListRulesOutput#items #items} => Array&lt;Types::RuleSummary&gt;
    #   * {Types::ListRulesOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_rules({
    #     domain_identifier: "DomainId", # required
    #     target_type: "DOMAIN_UNIT", # required, accepts DOMAIN_UNIT
    #     target_identifier: "String", # required
    #     rule_type: "METADATA_FORM_ENFORCEMENT", # accepts METADATA_FORM_ENFORCEMENT, GLOSSARY_TERM_ENFORCEMENT
    #     action: "CREATE_LISTING_CHANGE_SET", # accepts CREATE_LISTING_CHANGE_SET, CREATE_SUBSCRIPTION_REQUEST
    #     project_ids: ["ProjectId"],
    #     asset_types: ["AssetTypeIdentifier"],
    #     data_product: false,
    #     include_cascaded: false,
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].identifier #=> String
    #   resp.items[0].revision #=> String
    #   resp.items[0].rule_type #=> String, one of "METADATA_FORM_ENFORCEMENT", "GLOSSARY_TERM_ENFORCEMENT"
    #   resp.items[0].name #=> String
    #   resp.items[0].target_type #=> String, one of "DOMAIN_UNIT"
    #   resp.items[0].target.domain_unit_target.domain_unit_id #=> String
    #   resp.items[0].target.domain_unit_target.include_child_domain_units #=> Boolean
    #   resp.items[0].action #=> String, one of "CREATE_LISTING_CHANGE_SET", "CREATE_SUBSCRIPTION_REQUEST"
    #   resp.items[0].scope.asset_type.selection_mode #=> String, one of "ALL", "SPECIFIC"
    #   resp.items[0].scope.asset_type.specific_asset_types #=> Array
    #   resp.items[0].scope.asset_type.specific_asset_types[0] #=> String
    #   resp.items[0].scope.data_product #=> Boolean
    #   resp.items[0].scope.project.selection_mode #=> String, one of "ALL", "SPECIFIC"
    #   resp.items[0].scope.project.specific_projects #=> Array
    #   resp.items[0].scope.project.specific_projects[0] #=> String
    #   resp.items[0].updated_at #=> Time
    #   resp.items[0].last_updated_by #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ListRules AWS API Documentation
    #
    # @overload list_rules(params = {})
    # @param [Hash] params ({})
    def list_rules(params = {}, options = {})
      req = build_request(:list_rules, params)
      req.send_request(options)
    end

    # Lists subscription grants.
    #
    # @option params [required, String] :domain_identifier
    #   The identifier of the Amazon DataZone domain.
    #
    # @option params [String] :environment_id
    #   The identifier of the Amazon DataZone environment.
    #
    # @option params [String] :subscription_target_id
    #   The identifier of the subscription target.
    #
    # @option params [String] :subscribed_listing_id
    #   The identifier of the subscribed listing.
    #
    # @option params [String] :subscription_id
    #   The identifier of the subscription.
    #
    # @option params [String] :owning_project_id
    #   The ID of the owning project of the subscription grants.
    #
    # @option params [String] :owning_iam_principal_arn
    #   The ARN of the owning IAM principal.
    #
    # @option params [String] :owning_user_id
    #   The ID of the owning user.
    #
    # @option params [String] :owning_group_id
    #   The ID of the owning group.
    #
    # @option params [String] :sort_by
    #   Specifies the way of sorting the results of this action.
    #
    # @option params [String] :sort_order
    #   Specifies the sort order of this action.
    #
    # @option params [Integer] :max_results
    #   The maximum number of subscription grants to return in a single call
    #   to `ListSubscriptionGrants`. When the number of subscription grants to
    #   be listed is greater than the value of `MaxResults`, the response
    #   contains a `NextToken` value that you can use in a subsequent call to
    #   `ListSubscriptionGrants` to list the next set of subscription grants.
    #
    # @option params [String] :next_token
    #   When the number of subscription grants is greater than the default
    #   value for the `MaxResults` parameter, or if you explicitly specify a
    #   value for `MaxResults` that is less than the number of subscription
    #   grants, the response includes a pagination token named `NextToken`.
    #   You can specify this `NextToken` value in a subsequent call to
    #   `ListSubscriptionGrants` to list the next set of subscription grants.
    #
    # @return [Types::ListSubscriptionGrantsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSubscriptionGrantsOutput#items #items} => Array&lt;Types::SubscriptionGrantSummary&gt;
    #   * {Types::ListSubscriptionGrantsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_subscription_grants({
    #     domain_identifier: "DomainId", # required
    #     environment_id: "EnvironmentId",
    #     subscription_target_id: "SubscriptionTargetId",
    #     subscribed_listing_id: "ListingId",
    #     subscription_id: "SubscriptionId",
    #     owning_project_id: "ProjectId",
    #     owning_iam_principal_arn: "IamPrincipalArn",
    #     owning_user_id: "UserProfileId",
    #     owning_group_id: "GroupProfileId",
    #     sort_by: "CREATED_AT", # accepts CREATED_AT, UPDATED_AT
    #     sort_order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].id #=> String
    #   resp.items[0].created_by #=> String
    #   resp.items[0].updated_by #=> String
    #   resp.items[0].domain_id #=> String
    #   resp.items[0].created_at #=> Time
    #   resp.items[0].updated_at #=> Time
    #   resp.items[0].environment_id #=> String
    #   resp.items[0].subscription_target_id #=> String
    #   resp.items[0].granted_entity.listing.id #=> String
    #   resp.items[0].granted_entity.listing.revision #=> String
    #   resp.items[0].status #=> String, one of "PENDING", "IN_PROGRESS", "GRANT_FAILED", "REVOKE_FAILED", "GRANT_AND_REVOKE_FAILED", "COMPLETED", "INACCESSIBLE"
    #   resp.items[0].assets #=> Array
    #   resp.items[0].assets[0].asset_id #=> String
    #   resp.items[0].assets[0].asset_revision #=> String
    #   resp.items[0].assets[0].status #=> String, one of "GRANT_PENDING", "REVOKE_PENDING", "GRANT_IN_PROGRESS", "REVOKE_IN_PROGRESS", "GRANTED", "REVOKED", "GRANT_FAILED", "REVOKE_FAILED"
    #   resp.items[0].assets[0].target_name #=> String
    #   resp.items[0].assets[0].failure_cause.message #=> String
    #   resp.items[0].assets[0].granted_timestamp #=> Time
    #   resp.items[0].assets[0].failure_timestamp #=> Time
    #   resp.items[0].assets[0].asset_scope.asset_id #=> String
    #   resp.items[0].assets[0].asset_scope.filter_ids #=> Array
    #   resp.items[0].assets[0].asset_scope.filter_ids[0] #=> String
    #   resp.items[0].assets[0].asset_scope.status #=> String
    #   resp.items[0].assets[0].asset_scope.error_message #=> String
    #   resp.items[0].assets[0].permissions.s3 #=> Array
    #   resp.items[0].assets[0].permissions.s3[0] #=> String, one of "READ", "WRITE"
    #   resp.items[0].subscription_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ListSubscriptionGrants AWS API Documentation
    #
    # @overload list_subscription_grants(params = {})
    # @param [Hash] params ({})
    def list_subscription_grants(params = {}, options = {})
      req = build_request(:list_subscription_grants, params)
      req.send_request(options)
    end

    # Lists Amazon DataZone subscription requests.
    #
    # @option params [required, String] :domain_identifier
    #   The identifier of the Amazon DataZone domain.
    #
    # @option params [String] :status
    #   Specifies the status of the subscription requests.
    #
    #   <note markdown="1"> This is not a required parameter, but if not specified, by default,
    #   Amazon DataZone returns only `PENDING` subscription requests.
    #
    #    </note>
    #
    # @option params [String] :subscribed_listing_id
    #   The identifier of the subscribed listing.
    #
    # @option params [String] :owning_project_id
    #   The identifier of the project for the subscription requests.
    #
    # @option params [String] :owning_iam_principal_arn
    #   The ARN of the owning IAM principal.
    #
    # @option params [String] :approver_project_id
    #   The identifier of the subscription request approver's project.
    #
    # @option params [String] :owning_user_id
    #   The ID of the owning user.
    #
    # @option params [String] :owning_group_id
    #   The ID of the owning group.
    #
    # @option params [String] :sort_by
    #   Specifies the way to sort the results of this action.
    #
    # @option params [String] :sort_order
    #   Specifies the sort order for the results of this action.
    #
    # @option params [Integer] :max_results
    #   The maximum number of subscription requests to return in a single call
    #   to `ListSubscriptionRequests`. When the number of subscription
    #   requests to be listed is greater than the value of `MaxResults`, the
    #   response contains a `NextToken` value that you can use in a subsequent
    #   call to `ListSubscriptionRequests` to list the next set of
    #   subscription requests.
    #
    # @option params [String] :next_token
    #   When the number of subscription requests is greater than the default
    #   value for the `MaxResults` parameter, or if you explicitly specify a
    #   value for `MaxResults` that is less than the number of subscription
    #   requests, the response includes a pagination token named `NextToken`.
    #   You can specify this `NextToken` value in a subsequent call to
    #   `ListSubscriptionRequests` to list the next set of subscription
    #   requests.
    #
    # @return [Types::ListSubscriptionRequestsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSubscriptionRequestsOutput#items #items} => Array&lt;Types::SubscriptionRequestSummary&gt;
    #   * {Types::ListSubscriptionRequestsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_subscription_requests({
    #     domain_identifier: "DomainId", # required
    #     status: "PENDING", # accepts PENDING, ACCEPTED, REJECTED
    #     subscribed_listing_id: "ListingId",
    #     owning_project_id: "ProjectId",
    #     owning_iam_principal_arn: "IamPrincipalArn",
    #     approver_project_id: "ProjectId",
    #     owning_user_id: "UserProfileId",
    #     owning_group_id: "GroupProfileId",
    #     sort_by: "CREATED_AT", # accepts CREATED_AT, UPDATED_AT
    #     sort_order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].id #=> String
    #   resp.items[0].created_by #=> String
    #   resp.items[0].updated_by #=> String
    #   resp.items[0].domain_id #=> String
    #   resp.items[0].status #=> String, one of "PENDING", "ACCEPTED", "REJECTED"
    #   resp.items[0].created_at #=> Time
    #   resp.items[0].updated_at #=> Time
    #   resp.items[0].request_reason #=> String
    #   resp.items[0].subscribed_principals #=> Array
    #   resp.items[0].subscribed_principals[0].project.id #=> String
    #   resp.items[0].subscribed_principals[0].project.name #=> String
    #   resp.items[0].subscribed_principals[0].user.id #=> String
    #   resp.items[0].subscribed_principals[0].user.details.iam.arn #=> String
    #   resp.items[0].subscribed_principals[0].user.details.iam.principal_id #=> String
    #   resp.items[0].subscribed_principals[0].user.details.iam.session_name #=> String
    #   resp.items[0].subscribed_principals[0].user.details.iam.group_profile_id #=> String
    #   resp.items[0].subscribed_principals[0].user.details.sso.username #=> String
    #   resp.items[0].subscribed_principals[0].user.details.sso.first_name #=> String
    #   resp.items[0].subscribed_principals[0].user.details.sso.last_name #=> String
    #   resp.items[0].subscribed_principals[0].group.id #=> String
    #   resp.items[0].subscribed_principals[0].group.name #=> String
    #   resp.items[0].subscribed_principals[0].iam.principal_arn #=> String
    #   resp.items[0].subscribed_listings #=> Array
    #   resp.items[0].subscribed_listings[0].id #=> String
    #   resp.items[0].subscribed_listings[0].revision #=> String
    #   resp.items[0].subscribed_listings[0].name #=> String
    #   resp.items[0].subscribed_listings[0].description #=> String
    #   resp.items[0].subscribed_listings[0].item.asset_listing.entity_id #=> String
    #   resp.items[0].subscribed_listings[0].item.asset_listing.entity_revision #=> String
    #   resp.items[0].subscribed_listings[0].item.asset_listing.entity_type #=> String
    #   resp.items[0].subscribed_listings[0].item.asset_listing.forms #=> String
    #   resp.items[0].subscribed_listings[0].item.asset_listing.glossary_terms #=> Array
    #   resp.items[0].subscribed_listings[0].item.asset_listing.glossary_terms[0].name #=> String
    #   resp.items[0].subscribed_listings[0].item.asset_listing.glossary_terms[0].short_description #=> String
    #   resp.items[0].subscribed_listings[0].item.asset_listing.asset_scope.asset_id #=> String
    #   resp.items[0].subscribed_listings[0].item.asset_listing.asset_scope.filter_ids #=> Array
    #   resp.items[0].subscribed_listings[0].item.asset_listing.asset_scope.filter_ids[0] #=> String
    #   resp.items[0].subscribed_listings[0].item.asset_listing.asset_scope.status #=> String
    #   resp.items[0].subscribed_listings[0].item.asset_listing.asset_scope.error_message #=> String
    #   resp.items[0].subscribed_listings[0].item.asset_listing.permissions.s3 #=> Array
    #   resp.items[0].subscribed_listings[0].item.asset_listing.permissions.s3[0] #=> String, one of "READ", "WRITE"
    #   resp.items[0].subscribed_listings[0].item.product_listing.entity_id #=> String
    #   resp.items[0].subscribed_listings[0].item.product_listing.entity_revision #=> String
    #   resp.items[0].subscribed_listings[0].item.product_listing.glossary_terms #=> Array
    #   resp.items[0].subscribed_listings[0].item.product_listing.glossary_terms[0].name #=> String
    #   resp.items[0].subscribed_listings[0].item.product_listing.glossary_terms[0].short_description #=> String
    #   resp.items[0].subscribed_listings[0].item.product_listing.name #=> String
    #   resp.items[0].subscribed_listings[0].item.product_listing.description #=> String
    #   resp.items[0].subscribed_listings[0].item.product_listing.asset_listings #=> Array
    #   resp.items[0].subscribed_listings[0].item.product_listing.asset_listings[0].entity_id #=> String
    #   resp.items[0].subscribed_listings[0].item.product_listing.asset_listings[0].entity_revision #=> String
    #   resp.items[0].subscribed_listings[0].item.product_listing.asset_listings[0].entity_type #=> String
    #   resp.items[0].subscribed_listings[0].owner_project_id #=> String
    #   resp.items[0].subscribed_listings[0].owner_project_name #=> String
    #   resp.items[0].reviewer_id #=> String
    #   resp.items[0].decision_comment #=> String
    #   resp.items[0].existing_subscription_id #=> String
    #   resp.items[0].metadata_forms_summary #=> Array
    #   resp.items[0].metadata_forms_summary[0].form_name #=> String
    #   resp.items[0].metadata_forms_summary[0].type_name #=> String
    #   resp.items[0].metadata_forms_summary[0].type_revision #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ListSubscriptionRequests AWS API Documentation
    #
    # @overload list_subscription_requests(params = {})
    # @param [Hash] params ({})
    def list_subscription_requests(params = {}, options = {})
      req = build_request(:list_subscription_requests, params)
      req.send_request(options)
    end

    # Lists subscription targets in Amazon DataZone.
    #
    # @option params [required, String] :domain_identifier
    #   The identifier of the Amazon DataZone domain where you want to list
    #   subscription targets.
    #
    # @option params [required, String] :environment_identifier
    #   The identifier of the environment where you want to list subscription
    #   targets.
    #
    # @option params [String] :sort_by
    #   Specifies the way in which the results of this action are to be
    #   sorted.
    #
    # @option params [String] :sort_order
    #   Specifies the sort order for the results of this action.
    #
    # @option params [Integer] :max_results
    #   The maximum number of subscription targets to return in a single call
    #   to `ListSubscriptionTargets`. When the number of subscription targets
    #   to be listed is greater than the value of `MaxResults`, the response
    #   contains a `NextToken` value that you can use in a subsequent call to
    #   `ListSubscriptionTargets` to list the next set of subscription
    #   targets.
    #
    # @option params [String] :next_token
    #   When the number of subscription targets is greater than the default
    #   value for the `MaxResults` parameter, or if you explicitly specify a
    #   value for `MaxResults` that is less than the number of subscription
    #   targets, the response includes a pagination token named `NextToken`.
    #   You can specify this `NextToken` value in a subsequent call to
    #   `ListSubscriptionTargets` to list the next set of subscription
    #   targets.
    #
    # @return [Types::ListSubscriptionTargetsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSubscriptionTargetsOutput#items #items} => Array&lt;Types::SubscriptionTargetSummary&gt;
    #   * {Types::ListSubscriptionTargetsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_subscription_targets({
    #     domain_identifier: "DomainId", # required
    #     environment_identifier: "EnvironmentId", # required
    #     sort_by: "CREATED_AT", # accepts CREATED_AT, UPDATED_AT
    #     sort_order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].id #=> String
    #   resp.items[0].authorized_principals #=> Array
    #   resp.items[0].authorized_principals[0] #=> String
    #   resp.items[0].domain_id #=> String
    #   resp.items[0].project_id #=> String
    #   resp.items[0].environment_id #=> String
    #   resp.items[0].name #=> String
    #   resp.items[0].type #=> String
    #   resp.items[0].created_by #=> String
    #   resp.items[0].updated_by #=> String
    #   resp.items[0].created_at #=> Time
    #   resp.items[0].updated_at #=> Time
    #   resp.items[0].manage_access_role #=> String
    #   resp.items[0].applicable_asset_types #=> Array
    #   resp.items[0].applicable_asset_types[0] #=> String
    #   resp.items[0].subscription_target_config #=> Array
    #   resp.items[0].subscription_target_config[0].form_name #=> String
    #   resp.items[0].subscription_target_config[0].content #=> String
    #   resp.items[0].provider #=> String
    #   resp.items[0].subscription_grant_creation_mode #=> String, one of "AUTOMATIC", "MANUAL"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ListSubscriptionTargets AWS API Documentation
    #
    # @overload list_subscription_targets(params = {})
    # @param [Hash] params ({})
    def list_subscription_targets(params = {}, options = {})
      req = build_request(:list_subscription_targets, params)
      req.send_request(options)
    end

    # Lists subscriptions in Amazon DataZone.
    #
    # @option params [required, String] :domain_identifier
    #   The identifier of the Amazon DataZone domain.
    #
    # @option params [String] :subscription_request_identifier
    #   The identifier of the subscription request for the subscriptions that
    #   you want to list.
    #
    # @option params [String] :status
    #   The status of the subscriptions that you want to list.
    #
    #   <note markdown="1"> This is not a required parameter, but if not provided, by default,
    #   Amazon DataZone returns only `APPROVED` subscriptions.
    #
    #    </note>
    #
    # @option params [String] :subscribed_listing_id
    #   The identifier of the subscribed listing for the subscriptions that
    #   you want to list.
    #
    # @option params [String] :owning_project_id
    #   The identifier of the owning project.
    #
    # @option params [String] :owning_iam_principal_arn
    #   The ARN of the owning IAM principal.
    #
    # @option params [String] :owning_user_id
    #   The ID of the owning user.
    #
    # @option params [String] :owning_group_id
    #   The ID of the owning group.
    #
    # @option params [String] :approver_project_id
    #   The identifier of the project for the subscription's approver.
    #
    # @option params [String] :sort_by
    #   Specifies the way in which the results of this action are to be
    #   sorted.
    #
    # @option params [String] :sort_order
    #   Specifies the sort order for the results of this action.
    #
    # @option params [Integer] :max_results
    #   The maximum number of subscriptions to return in a single call to
    #   `ListSubscriptions`. When the number of subscriptions to be listed is
    #   greater than the value of `MaxResults`, the response contains a
    #   `NextToken` value that you can use in a subsequent call to
    #   `ListSubscriptions` to list the next set of Subscriptions.
    #
    # @option params [String] :next_token
    #   When the number of subscriptions is greater than the default value for
    #   the `MaxResults` parameter, or if you explicitly specify a value for
    #   `MaxResults` that is less than the number of subscriptions, the
    #   response includes a pagination token named `NextToken`. You can
    #   specify this `NextToken` value in a subsequent call to
    #   `ListSubscriptions` to list the next set of subscriptions.
    #
    # @return [Types::ListSubscriptionsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSubscriptionsOutput#items #items} => Array&lt;Types::SubscriptionSummary&gt;
    #   * {Types::ListSubscriptionsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_subscriptions({
    #     domain_identifier: "DomainId", # required
    #     subscription_request_identifier: "SubscriptionRequestId",
    #     status: "APPROVED", # accepts APPROVED, REVOKED, CANCELLED
    #     subscribed_listing_id: "ListingId",
    #     owning_project_id: "ProjectId",
    #     owning_iam_principal_arn: "IamPrincipalArn",
    #     owning_user_id: "UserProfileId",
    #     owning_group_id: "GroupProfileId",
    #     approver_project_id: "ProjectId",
    #     sort_by: "CREATED_AT", # accepts CREATED_AT, UPDATED_AT
    #     sort_order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].id #=> String
    #   resp.items[0].created_by #=> String
    #   resp.items[0].updated_by #=> String
    #   resp.items[0].domain_id #=> String
    #   resp.items[0].status #=> String, one of "APPROVED", "REVOKED", "CANCELLED"
    #   resp.items[0].created_at #=> Time
    #   resp.items[0].updated_at #=> Time
    #   resp.items[0].subscribed_principal.project.id #=> String
    #   resp.items[0].subscribed_principal.project.name #=> String
    #   resp.items[0].subscribed_principal.user.id #=> String
    #   resp.items[0].subscribed_principal.user.details.iam.arn #=> String
    #   resp.items[0].subscribed_principal.user.details.iam.principal_id #=> String
    #   resp.items[0].subscribed_principal.user.details.iam.session_name #=> String
    #   resp.items[0].subscribed_principal.user.details.iam.group_profile_id #=> String
    #   resp.items[0].subscribed_principal.user.details.sso.username #=> String
    #   resp.items[0].subscribed_principal.user.details.sso.first_name #=> String
    #   resp.items[0].subscribed_principal.user.details.sso.last_name #=> String
    #   resp.items[0].subscribed_principal.group.id #=> String
    #   resp.items[0].subscribed_principal.group.name #=> String
    #   resp.items[0].subscribed_principal.iam.principal_arn #=> String
    #   resp.items[0].subscribed_listing.id #=> String
    #   resp.items[0].subscribed_listing.revision #=> String
    #   resp.items[0].subscribed_listing.name #=> String
    #   resp.items[0].subscribed_listing.description #=> String
    #   resp.items[0].subscribed_listing.item.asset_listing.entity_id #=> String
    #   resp.items[0].subscribed_listing.item.asset_listing.entity_revision #=> String
    #   resp.items[0].subscribed_listing.item.asset_listing.entity_type #=> String
    #   resp.items[0].subscribed_listing.item.asset_listing.forms #=> String
    #   resp.items[0].subscribed_listing.item.asset_listing.glossary_terms #=> Array
    #   resp.items[0].subscribed_listing.item.asset_listing.glossary_terms[0].name #=> String
    #   resp.items[0].subscribed_listing.item.asset_listing.glossary_terms[0].short_description #=> String
    #   resp.items[0].subscribed_listing.item.asset_listing.asset_scope.asset_id #=> String
    #   resp.items[0].subscribed_listing.item.asset_listing.asset_scope.filter_ids #=> Array
    #   resp.items[0].subscribed_listing.item.asset_listing.asset_scope.filter_ids[0] #=> String
    #   resp.items[0].subscribed_listing.item.asset_listing.asset_scope.status #=> String
    #   resp.items[0].subscribed_listing.item.asset_listing.asset_scope.error_message #=> String
    #   resp.items[0].subscribed_listing.item.asset_listing.permissions.s3 #=> Array
    #   resp.items[0].subscribed_listing.item.asset_listing.permissions.s3[0] #=> String, one of "READ", "WRITE"
    #   resp.items[0].subscribed_listing.item.product_listing.entity_id #=> String
    #   resp.items[0].subscribed_listing.item.product_listing.entity_revision #=> String
    #   resp.items[0].subscribed_listing.item.product_listing.glossary_terms #=> Array
    #   resp.items[0].subscribed_listing.item.product_listing.glossary_terms[0].name #=> String
    #   resp.items[0].subscribed_listing.item.product_listing.glossary_terms[0].short_description #=> String
    #   resp.items[0].subscribed_listing.item.product_listing.name #=> String
    #   resp.items[0].subscribed_listing.item.product_listing.description #=> String
    #   resp.items[0].subscribed_listing.item.product_listing.asset_listings #=> Array
    #   resp.items[0].subscribed_listing.item.product_listing.asset_listings[0].entity_id #=> String
    #   resp.items[0].subscribed_listing.item.product_listing.asset_listings[0].entity_revision #=> String
    #   resp.items[0].subscribed_listing.item.product_listing.asset_listings[0].entity_type #=> String
    #   resp.items[0].subscribed_listing.owner_project_id #=> String
    #   resp.items[0].subscribed_listing.owner_project_name #=> String
    #   resp.items[0].subscription_request_id #=> String
    #   resp.items[0].retain_permissions #=> Boolean
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ListSubscriptions AWS API Documentation
    #
    # @overload list_subscriptions(params = {})
    # @param [Hash] params ({})
    def list_subscriptions(params = {}, options = {})
      req = build_request(:list_subscriptions, params)
      req.send_request(options)
    end

    # Lists tags for the specified resource in Amazon DataZone.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource whose tags you want to list.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Hash&lt;String,String&gt;
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
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Lists time series data points.
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the Amazon DataZone domain that houses the assets for which
    #   you want to list time series data points.
    #
    # @option params [required, String] :entity_identifier
    #   The ID of the asset for which you want to list data points.
    #
    # @option params [required, String] :entity_type
    #   The type of the asset for which you want to list data points.
    #
    # @option params [required, String] :form_name
    #   The name of the time series data points form.
    #
    # @option params [Time,DateTime,Date,Integer,String] :started_at
    #   The timestamp at which the data points that you want to list started.
    #
    # @option params [Time,DateTime,Date,Integer,String] :ended_at
    #   The timestamp at which the data points that you wanted to list ended.
    #
    # @option params [String] :next_token
    #   When the number of data points is greater than the default value for
    #   the MaxResults parameter, or if you explicitly specify a value for
    #   MaxResults that is less than the number of data points, the response
    #   includes a pagination token named NextToken. You can specify this
    #   NextToken value in a subsequent call to ListTimeSeriesDataPoints to
    #   list the next set of data points.
    #
    # @option params [Integer] :max_results
    #   The maximum number of data points to return in a single call to
    #   ListTimeSeriesDataPoints. When the number of data points to be listed
    #   is greater than the value of MaxResults, the response contains a
    #   NextToken value that you can use in a subsequent call to
    #   ListTimeSeriesDataPoints to list the next set of data points.
    #
    # @return [Types::ListTimeSeriesDataPointsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTimeSeriesDataPointsOutput#items #items} => Array&lt;Types::TimeSeriesDataPointSummaryFormOutput&gt;
    #   * {Types::ListTimeSeriesDataPointsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_time_series_data_points({
    #     domain_identifier: "DomainId", # required
    #     entity_identifier: "EntityIdentifier", # required
    #     entity_type: "ASSET", # required, accepts ASSET, LISTING
    #     form_name: "TimeSeriesFormName", # required
    #     started_at: Time.now,
    #     ended_at: Time.now,
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].form_name #=> String
    #   resp.items[0].type_identifier #=> String
    #   resp.items[0].type_revision #=> String
    #   resp.items[0].timestamp #=> Time
    #   resp.items[0].content_summary #=> String
    #   resp.items[0].id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/ListTimeSeriesDataPoints AWS API Documentation
    #
    # @overload list_time_series_data_points(params = {})
    # @param [Hash] params ({})
    def list_time_series_data_points(params = {}, options = {})
      req = build_request(:list_time_series_data_points, params)
      req.send_request(options)
    end

    # Posts a data lineage event.
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the domain where you want to post a data lineage event.
    #
    # @option params [required, String, StringIO, File] :event
    #   The data lineage event that you want to post. Only open-lineage run
    #   event are supported as events.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that is provided to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::PostLineageEventOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PostLineageEventOutput#id #id} => String
    #   * {Types::PostLineageEventOutput#domain_id #domain_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.post_lineage_event({
    #     domain_identifier: "DomainId", # required
    #     event: "data", # required
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.domain_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/PostLineageEvent AWS API Documentation
    #
    # @overload post_lineage_event(params = {})
    # @param [Hash] params ({})
    def post_lineage_event(params = {}, options = {})
      req = build_request(:post_lineage_event, params)
      req.send_request(options)
    end

    # Posts time series data points to Amazon DataZone for the specified
    # asset.
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the Amazon DataZone domain in which you want to post time
    #   series data points.
    #
    # @option params [required, String] :entity_identifier
    #   The ID of the asset for which you want to post time series data
    #   points.
    #
    # @option params [required, String] :entity_type
    #   The type of the asset for which you want to post data points.
    #
    # @option params [required, Array<Types::TimeSeriesDataPointFormInput>] :forms
    #   The forms that contain the data points that you want to post.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that is provided to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::PostTimeSeriesDataPointsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PostTimeSeriesDataPointsOutput#domain_id #domain_id} => String
    #   * {Types::PostTimeSeriesDataPointsOutput#entity_id #entity_id} => String
    #   * {Types::PostTimeSeriesDataPointsOutput#entity_type #entity_type} => String
    #   * {Types::PostTimeSeriesDataPointsOutput#forms #forms} => Array&lt;Types::TimeSeriesDataPointFormOutput&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.post_time_series_data_points({
    #     domain_identifier: "DomainId", # required
    #     entity_identifier: "EntityIdentifier", # required
    #     entity_type: "ASSET", # required, accepts ASSET, LISTING
    #     forms: [ # required
    #       {
    #         form_name: "TimeSeriesFormName", # required
    #         type_identifier: "FormTypeIdentifier", # required
    #         type_revision: "Revision",
    #         timestamp: Time.now, # required
    #         content: "TimeSeriesDataPointFormInputContentString",
    #       },
    #     ],
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.domain_id #=> String
    #   resp.entity_id #=> String
    #   resp.entity_type #=> String, one of "ASSET", "LISTING"
    #   resp.forms #=> Array
    #   resp.forms[0].form_name #=> String
    #   resp.forms[0].type_identifier #=> String
    #   resp.forms[0].type_revision #=> String
    #   resp.forms[0].timestamp #=> Time
    #   resp.forms[0].content #=> String
    #   resp.forms[0].id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/PostTimeSeriesDataPoints AWS API Documentation
    #
    # @overload post_time_series_data_points(params = {})
    # @param [Hash] params ({})
    def post_time_series_data_points(params = {}, options = {})
      req = build_request(:post_time_series_data_points, params)
      req.send_request(options)
    end

    # Creates data export configuration details.
    #
    # If you want to temporarily disable export and later re-enable it for
    # the same domain, use the `--no-enable-export` flag to disable and the
    # `--enable-export` flag to re-enable. This preserves the configuration
    # and allows you to re-enable export without deleting S3 table.
    #
    # <note markdown="1"> You can enable asset metadata export for only one domain per account
    # per Region. To enable export for a different domain, complete the
    # following steps:
    #
    #  1.  Delete the export configuration for the currently enabled domain
    #     using the DeleteDataExportConfiguration operation.
    #
    # 2.  Delete the asset S3 table under the aws-sagemaker-catalog S3 table
    #     bucket. We recommend backing up the S3 table before deletion.
    #
    # 3.  Call the PutDataExportConfiguration API to enable export for the
    #     new domain.
    #
    #  </note>
    #
    # @option params [required, String] :domain_identifier
    #   The domain ID for which you want to create data export configuration
    #   details.
    #
    # @option params [required, Boolean] :enable_export
    #   Specifies that the export is to be enabled as part of creating data
    #   export configuration details.
    #
    # @option params [Types::EncryptionConfiguration] :encryption_configuration
    #   The encryption configuration as part of creating data export
    #   configuration details.
    #
    #   The KMS key provided here as part of encryptionConfiguration must have
    #   the required permissions as described in [KMS permissions for
    #   exporting asset metadata in Amazon SageMaker Unified Studio][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/sagemaker-unified-studio/latest/adminguide/sagemaker-unified-studio-export-asset-metadata-kms-permissions.html
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier to ensure idempotency of the
    #   request. This field is automatically populated if not provided.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_data_export_configuration({
    #     domain_identifier: "DomainId", # required
    #     enable_export: false, # required
    #     encryption_configuration: {
    #       kms_key_arn: "String",
    #       sse_algorithm: "String",
    #     },
    #     client_token: "ClientToken",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/PutDataExportConfiguration AWS API Documentation
    #
    # @overload put_data_export_configuration(params = {})
    # @param [Hash] params ({})
    def put_data_export_configuration(params = {}, options = {})
      req = build_request(:put_data_export_configuration, params)
      req.send_request(options)
    end

    # Writes the configuration for the specified environment blueprint in
    # Amazon DataZone.
    #
    # @option params [required, String] :domain_identifier
    #   The identifier of the Amazon DataZone domain.
    #
    # @option params [required, String] :environment_blueprint_identifier
    #   The identifier of the environment blueprint.
    #
    # @option params [String] :provisioning_role_arn
    #   The ARN of the provisioning role.
    #
    # @option params [String] :manage_access_role_arn
    #   The ARN of the manage access role.
    #
    # @option params [String] :environment_role_permission_boundary
    #   The environment role permissions boundary.
    #
    # @option params [required, Array<String>] :enabled_regions
    #   Specifies the enabled Amazon Web Services Regions.
    #
    # @option params [Hash<String,Hash>] :regional_parameters
    #   The regional parameters in the environment blueprint.
    #
    # @option params [Hash<String,String>] :global_parameters
    #   Region-agnostic environment blueprint parameters.
    #
    # @option params [Array<Types::ProvisioningConfiguration>] :provisioning_configurations
    #   The provisioning configuration of a blueprint.
    #
    # @return [Types::PutEnvironmentBlueprintConfigurationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutEnvironmentBlueprintConfigurationOutput#domain_id #domain_id} => String
    #   * {Types::PutEnvironmentBlueprintConfigurationOutput#environment_blueprint_id #environment_blueprint_id} => String
    #   * {Types::PutEnvironmentBlueprintConfigurationOutput#provisioning_role_arn #provisioning_role_arn} => String
    #   * {Types::PutEnvironmentBlueprintConfigurationOutput#environment_role_permission_boundary #environment_role_permission_boundary} => String
    #   * {Types::PutEnvironmentBlueprintConfigurationOutput#manage_access_role_arn #manage_access_role_arn} => String
    #   * {Types::PutEnvironmentBlueprintConfigurationOutput#enabled_regions #enabled_regions} => Array&lt;String&gt;
    #   * {Types::PutEnvironmentBlueprintConfigurationOutput#regional_parameters #regional_parameters} => Hash&lt;String,Hash&lt;String,String&gt;&gt;
    #   * {Types::PutEnvironmentBlueprintConfigurationOutput#created_at #created_at} => Time
    #   * {Types::PutEnvironmentBlueprintConfigurationOutput#updated_at #updated_at} => Time
    #   * {Types::PutEnvironmentBlueprintConfigurationOutput#provisioning_configurations #provisioning_configurations} => Array&lt;Types::ProvisioningConfiguration&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_environment_blueprint_configuration({
    #     domain_identifier: "DomainId", # required
    #     environment_blueprint_identifier: "EnvironmentBlueprintId", # required
    #     provisioning_role_arn: "RoleArn",
    #     manage_access_role_arn: "RoleArn",
    #     environment_role_permission_boundary: "PolicyArn",
    #     enabled_regions: ["RegionName"], # required
    #     regional_parameters: {
    #       "RegionName" => {
    #         "String" => "String",
    #       },
    #     },
    #     global_parameters: {
    #       "String" => "String",
    #     },
    #     provisioning_configurations: [
    #       {
    #         lake_formation_configuration: {
    #           location_registration_role: "RoleArn",
    #           location_registration_exclude_s3_locations: ["S3Location"],
    #         },
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.domain_id #=> String
    #   resp.environment_blueprint_id #=> String
    #   resp.provisioning_role_arn #=> String
    #   resp.environment_role_permission_boundary #=> String
    #   resp.manage_access_role_arn #=> String
    #   resp.enabled_regions #=> Array
    #   resp.enabled_regions[0] #=> String
    #   resp.regional_parameters #=> Hash
    #   resp.regional_parameters["RegionName"] #=> Hash
    #   resp.regional_parameters["RegionName"]["String"] #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.provisioning_configurations #=> Array
    #   resp.provisioning_configurations[0].lake_formation_configuration.location_registration_role #=> String
    #   resp.provisioning_configurations[0].lake_formation_configuration.location_registration_exclude_s3_locations #=> Array
    #   resp.provisioning_configurations[0].lake_formation_configuration.location_registration_exclude_s3_locations[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/PutEnvironmentBlueprintConfiguration AWS API Documentation
    #
    # @overload put_environment_blueprint_configuration(params = {})
    # @param [Hash] params ({})
    def put_environment_blueprint_configuration(params = {}, options = {})
      req = build_request(:put_environment_blueprint_configuration, params)
      req.send_request(options)
    end

    # Queries entities in the graph store.
    #
    # @option params [required, String] :domain_identifier
    #   The identifier of the Amazon DataZone domain.
    #
    # @option params [required, Array<Types::MatchClause>] :match
    #   List of query match clauses.
    #
    # @option params [Integer] :max_results
    #   The maximum number of entities to return in a single call to
    #   `QueryGraph`. When the number of entities to be listed is greater than
    #   the value of `MaxResults`, the response contains a `NextToken` value
    #   that you can use in a subsequent call to `QueryGraph` to list the next
    #   set of entities.
    #
    # @option params [String] :next_token
    #   When the number of entities is greater than the default value for the
    #   `MaxResults` parameter, or if you explicitly specify a value for
    #   `MaxResults` that is less than the number of entities, the response
    #   includes a pagination token named `NextToken`. You can specify this
    #   `NextToken` value in a subsequent call to `QueryGraph` to list the
    #   next set of entities.
    #
    # @option params [Types::AdditionalAttributes] :additional_attributes
    #   Additional details on the queried entity that can be requested in the
    #   response.
    #
    # @return [Types::QueryGraphOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::QueryGraphOutput#items #items} => Array&lt;Types::ResultItem&gt;
    #   * {Types::QueryGraphOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.query_graph({
    #     domain_identifier: "DomainId", # required
    #     match: [ # required
    #       {
    #         relation_pattern: {
    #           relation_type: "LINEAGE", # required, accepts LINEAGE
    #           relation_direction: "IN", # required, accepts IN, OUT
    #           max_path_length: 1,
    #         },
    #         entity_pattern: {
    #           entity_type: "LINEAGE_NODE", # required, accepts LINEAGE_NODE
    #           identifier: "EntityPatternIdentifierString", # required
    #           filters: {
    #             filter: {
    #               attribute: "Attribute", # required
    #               value: "FilterValueString",
    #               int_value: 1,
    #               operator: "EQ", # accepts EQ, LE, LT, GE, GT, TEXT_SEARCH
    #             },
    #             and: [
    #               {
    #                 # recursive FilterClause
    #               },
    #             ],
    #             or: [
    #               {
    #                 # recursive FilterClause
    #               },
    #             ],
    #           },
    #         },
    #       },
    #     ],
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #     additional_attributes: {
    #       form_names: ["FormName"],
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].lineage_node.domain_id #=> String
    #   resp.items[0].lineage_node.name #=> String
    #   resp.items[0].lineage_node.description #=> String
    #   resp.items[0].lineage_node.created_at #=> Time
    #   resp.items[0].lineage_node.created_by #=> String
    #   resp.items[0].lineage_node.updated_at #=> Time
    #   resp.items[0].lineage_node.updated_by #=> String
    #   resp.items[0].lineage_node.id #=> String
    #   resp.items[0].lineage_node.type_name #=> String
    #   resp.items[0].lineage_node.type_revision #=> String
    #   resp.items[0].lineage_node.source_identifier #=> String
    #   resp.items[0].lineage_node.event_timestamp #=> Time
    #   resp.items[0].lineage_node.forms_output #=> Array
    #   resp.items[0].lineage_node.forms_output[0].form_name #=> String
    #   resp.items[0].lineage_node.forms_output[0].type_name #=> String
    #   resp.items[0].lineage_node.forms_output[0].type_revision #=> String
    #   resp.items[0].lineage_node.forms_output[0].content #=> String
    #   resp.items[0].lineage_node.upstream_lineage_node_ids #=> Array
    #   resp.items[0].lineage_node.upstream_lineage_node_ids[0] #=> String
    #   resp.items[0].lineage_node.downstream_lineage_node_ids #=> Array
    #   resp.items[0].lineage_node.downstream_lineage_node_ids[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/QueryGraph AWS API Documentation
    #
    # @overload query_graph(params = {})
    # @param [Hash] params ({})
    def query_graph(params = {}, options = {})
      req = build_request(:query_graph, params)
      req.send_request(options)
    end

    # Rejects automatically generated business-friendly metadata for your
    # Amazon DataZone assets.
    #
    # @option params [required, String] :domain_identifier
    #   The identifier of the Amazon DataZone domain.
    #
    # @option params [required, String] :identifier
    #   The identifier of the prediction.
    #
    # @option params [String] :revision
    #   The revision that is to be made to the asset.
    #
    # @option params [Types::RejectRule] :reject_rule
    #   Specifies the rule (or the conditions) under which a prediction can be
    #   rejected.
    #
    # @option params [Array<Types::RejectChoice>] :reject_choices
    #   Specifies the prediction (aka, the automatically generated piece of
    #   metadata) and the target (for example, a column name) that can be
    #   rejected.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that is provided to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::RejectPredictionsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RejectPredictionsOutput#domain_id #domain_id} => String
    #   * {Types::RejectPredictionsOutput#asset_id #asset_id} => String
    #   * {Types::RejectPredictionsOutput#asset_revision #asset_revision} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reject_predictions({
    #     domain_identifier: "DomainId", # required
    #     identifier: "AssetIdentifier", # required
    #     revision: "Revision",
    #     reject_rule: {
    #       rule: "ALL", # accepts ALL, NONE
    #       threshold: 1.0,
    #     },
    #     reject_choices: [
    #       {
    #         prediction_target: "String", # required
    #         prediction_choices: [1],
    #       },
    #     ],
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.domain_id #=> String
    #   resp.asset_id #=> String
    #   resp.asset_revision #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/RejectPredictions AWS API Documentation
    #
    # @overload reject_predictions(params = {})
    # @param [Hash] params ({})
    def reject_predictions(params = {}, options = {})
      req = build_request(:reject_predictions, params)
      req.send_request(options)
    end

    # Rejects the specified subscription request.
    #
    # @option params [required, String] :domain_identifier
    #   The identifier of the Amazon DataZone domain in which the subscription
    #   request was rejected.
    #
    # @option params [required, String] :identifier
    #   The identifier of the subscription request that was rejected.
    #
    # @option params [String] :decision_comment
    #   The decision comment of the rejected subscription request.
    #
    # @return [Types::RejectSubscriptionRequestOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RejectSubscriptionRequestOutput#id #id} => String
    #   * {Types::RejectSubscriptionRequestOutput#created_by #created_by} => String
    #   * {Types::RejectSubscriptionRequestOutput#updated_by #updated_by} => String
    #   * {Types::RejectSubscriptionRequestOutput#domain_id #domain_id} => String
    #   * {Types::RejectSubscriptionRequestOutput#status #status} => String
    #   * {Types::RejectSubscriptionRequestOutput#created_at #created_at} => Time
    #   * {Types::RejectSubscriptionRequestOutput#updated_at #updated_at} => Time
    #   * {Types::RejectSubscriptionRequestOutput#request_reason #request_reason} => String
    #   * {Types::RejectSubscriptionRequestOutput#subscribed_principals #subscribed_principals} => Array&lt;Types::SubscribedPrincipal&gt;
    #   * {Types::RejectSubscriptionRequestOutput#subscribed_listings #subscribed_listings} => Array&lt;Types::SubscribedListing&gt;
    #   * {Types::RejectSubscriptionRequestOutput#reviewer_id #reviewer_id} => String
    #   * {Types::RejectSubscriptionRequestOutput#decision_comment #decision_comment} => String
    #   * {Types::RejectSubscriptionRequestOutput#existing_subscription_id #existing_subscription_id} => String
    #   * {Types::RejectSubscriptionRequestOutput#metadata_forms #metadata_forms} => Array&lt;Types::FormOutput&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reject_subscription_request({
    #     domain_identifier: "DomainId", # required
    #     identifier: "SubscriptionRequestId", # required
    #     decision_comment: "DecisionComment",
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.created_by #=> String
    #   resp.updated_by #=> String
    #   resp.domain_id #=> String
    #   resp.status #=> String, one of "PENDING", "ACCEPTED", "REJECTED"
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.request_reason #=> String
    #   resp.subscribed_principals #=> Array
    #   resp.subscribed_principals[0].project.id #=> String
    #   resp.subscribed_principals[0].project.name #=> String
    #   resp.subscribed_principals[0].user.id #=> String
    #   resp.subscribed_principals[0].user.details.iam.arn #=> String
    #   resp.subscribed_principals[0].user.details.iam.principal_id #=> String
    #   resp.subscribed_principals[0].user.details.iam.session_name #=> String
    #   resp.subscribed_principals[0].user.details.iam.group_profile_id #=> String
    #   resp.subscribed_principals[0].user.details.sso.username #=> String
    #   resp.subscribed_principals[0].user.details.sso.first_name #=> String
    #   resp.subscribed_principals[0].user.details.sso.last_name #=> String
    #   resp.subscribed_principals[0].group.id #=> String
    #   resp.subscribed_principals[0].group.name #=> String
    #   resp.subscribed_principals[0].iam.principal_arn #=> String
    #   resp.subscribed_listings #=> Array
    #   resp.subscribed_listings[0].id #=> String
    #   resp.subscribed_listings[0].revision #=> String
    #   resp.subscribed_listings[0].name #=> String
    #   resp.subscribed_listings[0].description #=> String
    #   resp.subscribed_listings[0].item.asset_listing.entity_id #=> String
    #   resp.subscribed_listings[0].item.asset_listing.entity_revision #=> String
    #   resp.subscribed_listings[0].item.asset_listing.entity_type #=> String
    #   resp.subscribed_listings[0].item.asset_listing.forms #=> String
    #   resp.subscribed_listings[0].item.asset_listing.glossary_terms #=> Array
    #   resp.subscribed_listings[0].item.asset_listing.glossary_terms[0].name #=> String
    #   resp.subscribed_listings[0].item.asset_listing.glossary_terms[0].short_description #=> String
    #   resp.subscribed_listings[0].item.asset_listing.asset_scope.asset_id #=> String
    #   resp.subscribed_listings[0].item.asset_listing.asset_scope.filter_ids #=> Array
    #   resp.subscribed_listings[0].item.asset_listing.asset_scope.filter_ids[0] #=> String
    #   resp.subscribed_listings[0].item.asset_listing.asset_scope.status #=> String
    #   resp.subscribed_listings[0].item.asset_listing.asset_scope.error_message #=> String
    #   resp.subscribed_listings[0].item.asset_listing.permissions.s3 #=> Array
    #   resp.subscribed_listings[0].item.asset_listing.permissions.s3[0] #=> String, one of "READ", "WRITE"
    #   resp.subscribed_listings[0].item.product_listing.entity_id #=> String
    #   resp.subscribed_listings[0].item.product_listing.entity_revision #=> String
    #   resp.subscribed_listings[0].item.product_listing.glossary_terms #=> Array
    #   resp.subscribed_listings[0].item.product_listing.glossary_terms[0].name #=> String
    #   resp.subscribed_listings[0].item.product_listing.glossary_terms[0].short_description #=> String
    #   resp.subscribed_listings[0].item.product_listing.name #=> String
    #   resp.subscribed_listings[0].item.product_listing.description #=> String
    #   resp.subscribed_listings[0].item.product_listing.asset_listings #=> Array
    #   resp.subscribed_listings[0].item.product_listing.asset_listings[0].entity_id #=> String
    #   resp.subscribed_listings[0].item.product_listing.asset_listings[0].entity_revision #=> String
    #   resp.subscribed_listings[0].item.product_listing.asset_listings[0].entity_type #=> String
    #   resp.subscribed_listings[0].owner_project_id #=> String
    #   resp.subscribed_listings[0].owner_project_name #=> String
    #   resp.reviewer_id #=> String
    #   resp.decision_comment #=> String
    #   resp.existing_subscription_id #=> String
    #   resp.metadata_forms #=> Array
    #   resp.metadata_forms[0].form_name #=> String
    #   resp.metadata_forms[0].type_name #=> String
    #   resp.metadata_forms[0].type_revision #=> String
    #   resp.metadata_forms[0].content #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/RejectSubscriptionRequest AWS API Documentation
    #
    # @overload reject_subscription_request(params = {})
    # @param [Hash] params ({})
    def reject_subscription_request(params = {}, options = {})
      req = build_request(:reject_subscription_request, params)
      req.send_request(options)
    end

    # Removes an owner from an entity.
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the domain where you want to remove an owner from an entity.
    #
    # @option params [required, String] :entity_type
    #   The type of the entity from which you want to remove an owner.
    #
    # @option params [required, String] :entity_identifier
    #   The ID of the entity from which you want to remove an owner.
    #
    # @option params [required, Types::OwnerProperties] :owner
    #   The owner that you want to remove from an entity.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that is provided to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_entity_owner({
    #     domain_identifier: "DomainId", # required
    #     entity_type: "DOMAIN_UNIT", # required, accepts DOMAIN_UNIT
    #     entity_identifier: "String", # required
    #     owner: { # required
    #       user: {
    #         user_identifier: "UserIdentifier", # required
    #       },
    #       group: {
    #         group_identifier: "GroupIdentifier", # required
    #       },
    #     },
    #     client_token: "ClientToken",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/RemoveEntityOwner AWS API Documentation
    #
    # @overload remove_entity_owner(params = {})
    # @param [Hash] params ({})
    def remove_entity_owner(params = {}, options = {})
      req = build_request(:remove_entity_owner, params)
      req.send_request(options)
    end

    # Removes a policy grant.
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the domain where you want to remove a policy grant.
    #
    # @option params [required, String] :entity_type
    #   The type of the entity from which you want to remove a policy grant.
    #
    # @option params [required, String] :entity_identifier
    #   The ID of the entity from which you want to remove a policy grant.
    #
    # @option params [required, String] :policy_type
    #   The type of the policy that you want to remove.
    #
    # @option params [required, Types::PolicyGrantPrincipal] :principal
    #   The principal from which you want to remove a policy grant.
    #
    # @option params [String] :grant_identifier
    #   The ID of the policy grant that is to be removed from a specified
    #   entity.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that is provided to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_policy_grant({
    #     domain_identifier: "DomainId", # required
    #     entity_type: "DOMAIN_UNIT", # required, accepts DOMAIN_UNIT, ENVIRONMENT_BLUEPRINT_CONFIGURATION, ENVIRONMENT_PROFILE, ASSET_TYPE
    #     entity_identifier: "String", # required
    #     policy_type: "CREATE_DOMAIN_UNIT", # required, accepts CREATE_DOMAIN_UNIT, OVERRIDE_DOMAIN_UNIT_OWNERS, ADD_TO_PROJECT_MEMBER_POOL, OVERRIDE_PROJECT_OWNERS, CREATE_GLOSSARY, CREATE_FORM_TYPE, CREATE_ASSET_TYPE, CREATE_PROJECT, CREATE_ENVIRONMENT_PROFILE, DELEGATE_CREATE_ENVIRONMENT_PROFILE, CREATE_ENVIRONMENT, CREATE_ENVIRONMENT_FROM_BLUEPRINT, CREATE_PROJECT_FROM_PROJECT_PROFILE, USE_ASSET_TYPE
    #     principal: { # required
    #       user: {
    #         user_identifier: "UserIdentifier",
    #         all_users_grant_filter: {
    #         },
    #       },
    #       group: {
    #         group_identifier: "GroupIdentifier",
    #       },
    #       project: {
    #         project_designation: "OWNER", # required, accepts OWNER, CONTRIBUTOR, PROJECT_CATALOG_STEWARD
    #         project_identifier: "ProjectId",
    #         project_grant_filter: {
    #           domain_unit_filter: {
    #             domain_unit: "DomainUnitId", # required
    #             include_child_domain_units: false,
    #           },
    #         },
    #       },
    #       domain_unit: {
    #         domain_unit_designation: "OWNER", # required, accepts OWNER
    #         domain_unit_identifier: "DomainUnitId",
    #         domain_unit_grant_filter: {
    #           all_domain_units_grant_filter: {
    #           },
    #         },
    #       },
    #     },
    #     grant_identifier: "GrantIdentifier",
    #     client_token: "ClientToken",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/RemovePolicyGrant AWS API Documentation
    #
    # @overload remove_policy_grant(params = {})
    # @param [Hash] params ({})
    def remove_policy_grant(params = {}, options = {})
      req = build_request(:remove_policy_grant, params)
      req.send_request(options)
    end

    # Revokes a specified subscription in Amazon DataZone.
    #
    # @option params [required, String] :domain_identifier
    #   The identifier of the Amazon DataZone domain where you want to revoke
    #   a subscription.
    #
    # @option params [required, String] :identifier
    #   The identifier of the revoked subscription.
    #
    # @option params [Boolean] :retain_permissions
    #   Specifies whether permissions are retained when the subscription is
    #   revoked.
    #
    # @return [Types::RevokeSubscriptionOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RevokeSubscriptionOutput#id #id} => String
    #   * {Types::RevokeSubscriptionOutput#created_by #created_by} => String
    #   * {Types::RevokeSubscriptionOutput#updated_by #updated_by} => String
    #   * {Types::RevokeSubscriptionOutput#domain_id #domain_id} => String
    #   * {Types::RevokeSubscriptionOutput#status #status} => String
    #   * {Types::RevokeSubscriptionOutput#created_at #created_at} => Time
    #   * {Types::RevokeSubscriptionOutput#updated_at #updated_at} => Time
    #   * {Types::RevokeSubscriptionOutput#subscribed_principal #subscribed_principal} => Types::SubscribedPrincipal
    #   * {Types::RevokeSubscriptionOutput#subscribed_listing #subscribed_listing} => Types::SubscribedListing
    #   * {Types::RevokeSubscriptionOutput#subscription_request_id #subscription_request_id} => String
    #   * {Types::RevokeSubscriptionOutput#retain_permissions #retain_permissions} => Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.revoke_subscription({
    #     domain_identifier: "DomainId", # required
    #     identifier: "SubscriptionId", # required
    #     retain_permissions: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.created_by #=> String
    #   resp.updated_by #=> String
    #   resp.domain_id #=> String
    #   resp.status #=> String, one of "APPROVED", "REVOKED", "CANCELLED"
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.subscribed_principal.project.id #=> String
    #   resp.subscribed_principal.project.name #=> String
    #   resp.subscribed_principal.user.id #=> String
    #   resp.subscribed_principal.user.details.iam.arn #=> String
    #   resp.subscribed_principal.user.details.iam.principal_id #=> String
    #   resp.subscribed_principal.user.details.iam.session_name #=> String
    #   resp.subscribed_principal.user.details.iam.group_profile_id #=> String
    #   resp.subscribed_principal.user.details.sso.username #=> String
    #   resp.subscribed_principal.user.details.sso.first_name #=> String
    #   resp.subscribed_principal.user.details.sso.last_name #=> String
    #   resp.subscribed_principal.group.id #=> String
    #   resp.subscribed_principal.group.name #=> String
    #   resp.subscribed_principal.iam.principal_arn #=> String
    #   resp.subscribed_listing.id #=> String
    #   resp.subscribed_listing.revision #=> String
    #   resp.subscribed_listing.name #=> String
    #   resp.subscribed_listing.description #=> String
    #   resp.subscribed_listing.item.asset_listing.entity_id #=> String
    #   resp.subscribed_listing.item.asset_listing.entity_revision #=> String
    #   resp.subscribed_listing.item.asset_listing.entity_type #=> String
    #   resp.subscribed_listing.item.asset_listing.forms #=> String
    #   resp.subscribed_listing.item.asset_listing.glossary_terms #=> Array
    #   resp.subscribed_listing.item.asset_listing.glossary_terms[0].name #=> String
    #   resp.subscribed_listing.item.asset_listing.glossary_terms[0].short_description #=> String
    #   resp.subscribed_listing.item.asset_listing.asset_scope.asset_id #=> String
    #   resp.subscribed_listing.item.asset_listing.asset_scope.filter_ids #=> Array
    #   resp.subscribed_listing.item.asset_listing.asset_scope.filter_ids[0] #=> String
    #   resp.subscribed_listing.item.asset_listing.asset_scope.status #=> String
    #   resp.subscribed_listing.item.asset_listing.asset_scope.error_message #=> String
    #   resp.subscribed_listing.item.asset_listing.permissions.s3 #=> Array
    #   resp.subscribed_listing.item.asset_listing.permissions.s3[0] #=> String, one of "READ", "WRITE"
    #   resp.subscribed_listing.item.product_listing.entity_id #=> String
    #   resp.subscribed_listing.item.product_listing.entity_revision #=> String
    #   resp.subscribed_listing.item.product_listing.glossary_terms #=> Array
    #   resp.subscribed_listing.item.product_listing.glossary_terms[0].name #=> String
    #   resp.subscribed_listing.item.product_listing.glossary_terms[0].short_description #=> String
    #   resp.subscribed_listing.item.product_listing.name #=> String
    #   resp.subscribed_listing.item.product_listing.description #=> String
    #   resp.subscribed_listing.item.product_listing.asset_listings #=> Array
    #   resp.subscribed_listing.item.product_listing.asset_listings[0].entity_id #=> String
    #   resp.subscribed_listing.item.product_listing.asset_listings[0].entity_revision #=> String
    #   resp.subscribed_listing.item.product_listing.asset_listings[0].entity_type #=> String
    #   resp.subscribed_listing.owner_project_id #=> String
    #   resp.subscribed_listing.owner_project_name #=> String
    #   resp.subscription_request_id #=> String
    #   resp.retain_permissions #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/RevokeSubscription AWS API Documentation
    #
    # @overload revoke_subscription(params = {})
    # @param [Hash] params ({})
    def revoke_subscription(params = {}, options = {})
      req = build_request(:revoke_subscription, params)
      req.send_request(options)
    end

    # Searches for assets in Amazon DataZone.
    #
    # Search in Amazon DataZone is a powerful capability that enables users
    # to discover and explore data assets, glossary terms, and data products
    # across their organization. It provides both basic and advanced search
    # functionality, allowing users to find resources based on names,
    # descriptions, metadata, and other attributes. Search can be scoped to
    # specific types of resources (like assets, glossary terms, or data
    # products) and can be filtered using various criteria such as creation
    # date, owner, or status. The search functionality is essential for
    # making the wealth of data resources in an organization discoverable
    # and usable, helping users find the right data for their needs quickly
    # and efficiently.
    #
    # Many search commands in Amazon DataZone are paginated, including
    # `search` and `search-types`. When the result set is large, Amazon
    # DataZone returns a `nextToken` in the response. This token can be used
    # to retrieve the next page of results.
    #
    # Prerequisites:
    #
    # * The --domain-identifier must refer to an existing Amazon DataZone
    #   domain.
    #
    # * --search-scope must be one of: ASSET, GLOSSARY\_TERM, DATA\_PRODUCT,
    #   or GLOSSARY.
    #
    # * The user must have search permissions in the specified domain.
    #
    # * If using --filters, ensure that the JSON is well-formed and that
    #   each filter includes valid attribute and value keys.
    #
    # * For paginated results, be prepared to use --next-token to fetch
    #   additional pages.
    #
    # To run a standard free-text search, the `searchText` parameter must be
    # supplied. By default, all searchable fields are indexed for semantic
    # search and will return semantic matches for SearchListings queries. To
    # prevent semantic search indexing for a custom form attribute, see the
    # [CreateFormType API documentation][1]. To run a lexical search query,
    # enclose the query with double quotes (""). This will disable
    # semantic search even for fields that have semantic search enabled and
    # will only return results that contain the keywords wrapped by double
    # quotes (order of tokens in the query is not enforced). Free-text
    # search is supported for all attributes annotated with
    # @amazon.datazone#searchable.
    #
    # To run a filtered search, provide filter clause using the `filters`
    # parameter. To filter on glossary terms, use the special attribute
    # `__DataZoneGlossaryTerms`. To filter on an indexed numeric attribute
    # (i.e., a numeric attribute annotated with
    # `@amazon.datazone#sortable`), provide a filter using the `intValue`
    # parameter. The filters parameter can also be used to run more advanced
    # free-text searches that target specific attributes (attributes must be
    # annotated with `@amazon.datazone#searchable` for free-text search).
    # Create/update timestamp filtering is supported using the special
    # `creationTime`/`lastUpdatedTime` attributes. Filter types can be mixed
    # and matched to power complex queries.
    #
    # To find out whether an attribute has been annotated and indexed for a
    # given search type, use the GetFormType API to retrieve the form
    # containing the attribute.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/datazone/latest/APIReference/API_CreateFormType.html
    #
    # @option params [required, String] :domain_identifier
    #   The identifier of the Amazon DataZone domain.
    #
    # @option params [String] :owning_project_identifier
    #   The identifier of the owning project specified for the search.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call to `Search`.
    #   When the number of results to be listed is greater than the value of
    #   `MaxResults`, the response contains a `NextToken` value that you can
    #   use in a subsequent call to `Search` to list the next set of results.
    #
    # @option params [String] :next_token
    #   When the number of results is greater than the default value for the
    #   `MaxResults` parameter, or if you explicitly specify a value for
    #   `MaxResults` that is less than the number of results, the response
    #   includes a pagination token named `NextToken`. You can specify this
    #   `NextToken` value in a subsequent call to `Search` to list the next
    #   set of results.
    #
    # @option params [required, String] :search_scope
    #   The scope of the search.
    #
    # @option params [String] :search_text
    #   Specifies the text for which to search.
    #
    # @option params [Array<Types::SearchInItem>] :search_in
    #   The details of the search.
    #
    # @option params [Types::FilterClause] :filters
    #   Specifies the search filters.
    #
    # @option params [Types::SearchSort] :sort
    #   Specifies the way in which the search results are to be sorted.
    #
    # @option params [Array<String>] :additional_attributes
    #   Specifies additional attributes for the `Search` action.
    #
    # @return [Types::SearchOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchOutput#items #items} => Array&lt;Types::SearchInventoryResultItem&gt;
    #   * {Types::SearchOutput#next_token #next_token} => String
    #   * {Types::SearchOutput#total_match_count #total_match_count} => Integer
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search({
    #     domain_identifier: "DomainId", # required
    #     owning_project_identifier: "ProjectId",
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #     search_scope: "ASSET", # required, accepts ASSET, GLOSSARY, GLOSSARY_TERM, DATA_PRODUCT
    #     search_text: "SearchText",
    #     search_in: [
    #       {
    #         attribute: "Attribute", # required
    #       },
    #     ],
    #     filters: {
    #       filter: {
    #         attribute: "Attribute", # required
    #         value: "FilterValueString",
    #         int_value: 1,
    #         operator: "EQ", # accepts EQ, LE, LT, GE, GT, TEXT_SEARCH
    #       },
    #       and: [
    #         {
    #           # recursive FilterClause
    #         },
    #       ],
    #       or: [
    #         {
    #           # recursive FilterClause
    #         },
    #       ],
    #     },
    #     sort: {
    #       attribute: "Attribute", # required
    #       order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #     },
    #     additional_attributes: ["FORMS"], # accepts FORMS, TIME_SERIES_DATA_POINT_FORMS, TEXT_MATCH_RATIONALE
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].glossary_item.domain_id #=> String
    #   resp.items[0].glossary_item.id #=> String
    #   resp.items[0].glossary_item.name #=> String
    #   resp.items[0].glossary_item.owning_project_id #=> String
    #   resp.items[0].glossary_item.description #=> String
    #   resp.items[0].glossary_item.status #=> String, one of "DISABLED", "ENABLED"
    #   resp.items[0].glossary_item.usage_restrictions #=> Array
    #   resp.items[0].glossary_item.usage_restrictions[0] #=> String, one of "ASSET_GOVERNED_TERMS"
    #   resp.items[0].glossary_item.created_at #=> Time
    #   resp.items[0].glossary_item.created_by #=> String
    #   resp.items[0].glossary_item.updated_at #=> Time
    #   resp.items[0].glossary_item.updated_by #=> String
    #   resp.items[0].glossary_item.additional_attributes.match_rationale #=> Array
    #   resp.items[0].glossary_item.additional_attributes.match_rationale[0].text_matches #=> Array
    #   resp.items[0].glossary_item.additional_attributes.match_rationale[0].text_matches[0].attribute #=> String
    #   resp.items[0].glossary_item.additional_attributes.match_rationale[0].text_matches[0].text #=> String
    #   resp.items[0].glossary_item.additional_attributes.match_rationale[0].text_matches[0].match_offsets #=> Array
    #   resp.items[0].glossary_item.additional_attributes.match_rationale[0].text_matches[0].match_offsets[0].start_offset #=> Integer
    #   resp.items[0].glossary_item.additional_attributes.match_rationale[0].text_matches[0].match_offsets[0].end_offset #=> Integer
    #   resp.items[0].glossary_term_item.domain_id #=> String
    #   resp.items[0].glossary_term_item.glossary_id #=> String
    #   resp.items[0].glossary_term_item.id #=> String
    #   resp.items[0].glossary_term_item.name #=> String
    #   resp.items[0].glossary_term_item.short_description #=> String
    #   resp.items[0].glossary_term_item.usage_restrictions #=> Array
    #   resp.items[0].glossary_term_item.usage_restrictions[0] #=> String, one of "ASSET_GOVERNED_TERMS"
    #   resp.items[0].glossary_term_item.long_description #=> String
    #   resp.items[0].glossary_term_item.term_relations.is_a #=> Array
    #   resp.items[0].glossary_term_item.term_relations.is_a[0] #=> String
    #   resp.items[0].glossary_term_item.term_relations.classifies #=> Array
    #   resp.items[0].glossary_term_item.term_relations.classifies[0] #=> String
    #   resp.items[0].glossary_term_item.status #=> String, one of "ENABLED", "DISABLED"
    #   resp.items[0].glossary_term_item.created_at #=> Time
    #   resp.items[0].glossary_term_item.created_by #=> String
    #   resp.items[0].glossary_term_item.updated_at #=> Time
    #   resp.items[0].glossary_term_item.updated_by #=> String
    #   resp.items[0].glossary_term_item.additional_attributes.match_rationale #=> Array
    #   resp.items[0].glossary_term_item.additional_attributes.match_rationale[0].text_matches #=> Array
    #   resp.items[0].glossary_term_item.additional_attributes.match_rationale[0].text_matches[0].attribute #=> String
    #   resp.items[0].glossary_term_item.additional_attributes.match_rationale[0].text_matches[0].text #=> String
    #   resp.items[0].glossary_term_item.additional_attributes.match_rationale[0].text_matches[0].match_offsets #=> Array
    #   resp.items[0].glossary_term_item.additional_attributes.match_rationale[0].text_matches[0].match_offsets[0].start_offset #=> Integer
    #   resp.items[0].glossary_term_item.additional_attributes.match_rationale[0].text_matches[0].match_offsets[0].end_offset #=> Integer
    #   resp.items[0].asset_item.domain_id #=> String
    #   resp.items[0].asset_item.identifier #=> String
    #   resp.items[0].asset_item.name #=> String
    #   resp.items[0].asset_item.type_identifier #=> String
    #   resp.items[0].asset_item.type_revision #=> String
    #   resp.items[0].asset_item.external_identifier #=> String
    #   resp.items[0].asset_item.description #=> String
    #   resp.items[0].asset_item.created_at #=> Time
    #   resp.items[0].asset_item.created_by #=> String
    #   resp.items[0].asset_item.first_revision_created_at #=> Time
    #   resp.items[0].asset_item.first_revision_created_by #=> String
    #   resp.items[0].asset_item.glossary_terms #=> Array
    #   resp.items[0].asset_item.glossary_terms[0] #=> String
    #   resp.items[0].asset_item.owning_project_id #=> String
    #   resp.items[0].asset_item.additional_attributes.forms_output #=> Array
    #   resp.items[0].asset_item.additional_attributes.forms_output[0].form_name #=> String
    #   resp.items[0].asset_item.additional_attributes.forms_output[0].type_name #=> String
    #   resp.items[0].asset_item.additional_attributes.forms_output[0].type_revision #=> String
    #   resp.items[0].asset_item.additional_attributes.forms_output[0].content #=> String
    #   resp.items[0].asset_item.additional_attributes.read_only_forms_output #=> Array
    #   resp.items[0].asset_item.additional_attributes.read_only_forms_output[0].form_name #=> String
    #   resp.items[0].asset_item.additional_attributes.read_only_forms_output[0].type_name #=> String
    #   resp.items[0].asset_item.additional_attributes.read_only_forms_output[0].type_revision #=> String
    #   resp.items[0].asset_item.additional_attributes.read_only_forms_output[0].content #=> String
    #   resp.items[0].asset_item.additional_attributes.latest_time_series_data_point_forms_output #=> Array
    #   resp.items[0].asset_item.additional_attributes.latest_time_series_data_point_forms_output[0].form_name #=> String
    #   resp.items[0].asset_item.additional_attributes.latest_time_series_data_point_forms_output[0].type_identifier #=> String
    #   resp.items[0].asset_item.additional_attributes.latest_time_series_data_point_forms_output[0].type_revision #=> String
    #   resp.items[0].asset_item.additional_attributes.latest_time_series_data_point_forms_output[0].timestamp #=> Time
    #   resp.items[0].asset_item.additional_attributes.latest_time_series_data_point_forms_output[0].content_summary #=> String
    #   resp.items[0].asset_item.additional_attributes.latest_time_series_data_point_forms_output[0].id #=> String
    #   resp.items[0].asset_item.additional_attributes.match_rationale #=> Array
    #   resp.items[0].asset_item.additional_attributes.match_rationale[0].text_matches #=> Array
    #   resp.items[0].asset_item.additional_attributes.match_rationale[0].text_matches[0].attribute #=> String
    #   resp.items[0].asset_item.additional_attributes.match_rationale[0].text_matches[0].text #=> String
    #   resp.items[0].asset_item.additional_attributes.match_rationale[0].text_matches[0].match_offsets #=> Array
    #   resp.items[0].asset_item.additional_attributes.match_rationale[0].text_matches[0].match_offsets[0].start_offset #=> Integer
    #   resp.items[0].asset_item.additional_attributes.match_rationale[0].text_matches[0].match_offsets[0].end_offset #=> Integer
    #   resp.items[0].asset_item.governed_glossary_terms #=> Array
    #   resp.items[0].asset_item.governed_glossary_terms[0] #=> String
    #   resp.items[0].data_product_item.domain_id #=> String
    #   resp.items[0].data_product_item.id #=> String
    #   resp.items[0].data_product_item.name #=> String
    #   resp.items[0].data_product_item.owning_project_id #=> String
    #   resp.items[0].data_product_item.description #=> String
    #   resp.items[0].data_product_item.glossary_terms #=> Array
    #   resp.items[0].data_product_item.glossary_terms[0] #=> String
    #   resp.items[0].data_product_item.created_at #=> Time
    #   resp.items[0].data_product_item.created_by #=> String
    #   resp.items[0].data_product_item.first_revision_created_at #=> Time
    #   resp.items[0].data_product_item.first_revision_created_by #=> String
    #   resp.items[0].data_product_item.additional_attributes.match_rationale #=> Array
    #   resp.items[0].data_product_item.additional_attributes.match_rationale[0].text_matches #=> Array
    #   resp.items[0].data_product_item.additional_attributes.match_rationale[0].text_matches[0].attribute #=> String
    #   resp.items[0].data_product_item.additional_attributes.match_rationale[0].text_matches[0].text #=> String
    #   resp.items[0].data_product_item.additional_attributes.match_rationale[0].text_matches[0].match_offsets #=> Array
    #   resp.items[0].data_product_item.additional_attributes.match_rationale[0].text_matches[0].match_offsets[0].start_offset #=> Integer
    #   resp.items[0].data_product_item.additional_attributes.match_rationale[0].text_matches[0].match_offsets[0].end_offset #=> Integer
    #   resp.next_token #=> String
    #   resp.total_match_count #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/Search AWS API Documentation
    #
    # @overload search(params = {})
    # @param [Hash] params ({})
    def search(params = {}, options = {})
      req = build_request(:search, params)
      req.send_request(options)
    end

    # Searches group profiles in Amazon DataZone.
    #
    # @option params [required, String] :domain_identifier
    #   The identifier of the Amazon DataZone domain in which you want to
    #   search group profiles.
    #
    # @option params [required, String] :group_type
    #   The group type for which to search.
    #
    # @option params [String] :search_text
    #   Specifies the text for which to search.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call to
    #   `SearchGroupProfiles`. When the number of results to be listed is
    #   greater than the value of `MaxResults`, the response contains a
    #   `NextToken` value that you can use in a subsequent call to
    #   `SearchGroupProfiles` to list the next set of results.
    #
    # @option params [String] :next_token
    #   When the number of results is greater than the default value for the
    #   `MaxResults` parameter, or if you explicitly specify a value for
    #   `MaxResults` that is less than the number of results, the response
    #   includes a pagination token named `NextToken`. You can specify this
    #   `NextToken` value in a subsequent call to `SearchGroupProfiles` to
    #   list the next set of results.
    #
    # @return [Types::SearchGroupProfilesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchGroupProfilesOutput#items #items} => Array&lt;Types::GroupProfileSummary&gt;
    #   * {Types::SearchGroupProfilesOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_group_profiles({
    #     domain_identifier: "DomainId", # required
    #     group_type: "SSO_GROUP", # required, accepts SSO_GROUP, DATAZONE_SSO_GROUP, IAM_ROLE_SESSION_GROUP
    #     search_text: "GroupSearchText",
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].domain_id #=> String
    #   resp.items[0].id #=> String
    #   resp.items[0].status #=> String, one of "ASSIGNED", "NOT_ASSIGNED"
    #   resp.items[0].group_name #=> String
    #   resp.items[0].role_principal_arn #=> String
    #   resp.items[0].role_principal_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/SearchGroupProfiles AWS API Documentation
    #
    # @overload search_group_profiles(params = {})
    # @param [Hash] params ({})
    def search_group_profiles(params = {}, options = {})
      req = build_request(:search_group_profiles, params)
      req.send_request(options)
    end

    # Searches listings in Amazon DataZone.
    #
    # SearchListings is a powerful capability that enables users to discover
    # and explore published assets and data products across their
    # organization. It provides both basic and advanced search
    # functionality, allowing users to find resources based on names,
    # descriptions, metadata, and other attributes. SearchListings also
    # supports filtering using various criteria such as creation date,
    # owner, or status. This API is essential for making the wealth of data
    # resources in an organization discoverable and usable, helping users
    # find the right data for their needs quickly and efficiently.
    #
    # SearchListings returns results in a paginated format. When the result
    # set is large, the response will include a nextToken, which can be used
    # to retrieve the next page of results.
    #
    # The SearchListings API gives users flexibility in specifying what kind
    # of search is run.
    #
    # To run a standard free-text search, the `searchText` parameter must be
    # supplied. By default, all searchable fields are indexed for semantic
    # search and will return semantic matches for SearchListings queries. To
    # prevent semantic search indexing for a custom form attribute, see the
    # [CreateFormType API documentation][1]. To run a lexical search query,
    # enclose the query with double quotes (""). This will disable
    # semantic search even for fields that have semantic search enabled and
    # will only return results that contain the keywords wrapped by double
    # quotes (order of tokens in the query is not enforced). Free-text
    # search is supported for all attributes annotated with
    # @amazon.datazone#searchable.
    #
    # To run a filtered search, provide filter clause using the `filters`
    # parameter. To filter on glossary terms, use the special attribute
    # `__DataZoneGlossaryTerms`. To filter on an indexed numeric attribute
    # (i.e., a numeric attribute annotated with
    # `@amazon.datazone#sortable`), provide a filter using the `intValue`
    # parameter. The filters parameter can also be used to run more advanced
    # free-text searches that target specific attributes (attributes must be
    # annotated with `@amazon.datazone#searchable` for free-text search).
    # Create/update timestamp filtering is supported using the special
    # `creationTime`/`lastUpdatedTime` attributes. Filter types can be mixed
    # and matched to power complex queries.
    #
    # To find out whether an attribute has been annotated and indexed for a
    # given search type, use the GetFormType API to retrieve the form
    # containing the attribute.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/datazone/latest/APIReference/API_CreateFormType.html
    #
    # @option params [required, String] :domain_identifier
    #   The identifier of the domain in which to search listings.
    #
    # @option params [String] :search_text
    #   Specifies the text for which to search.
    #
    # @option params [Array<Types::SearchInItem>] :search_in
    #   The details of the search.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call to
    #   `SearchListings`. When the number of results to be listed is greater
    #   than the value of `MaxResults`, the response contains a `NextToken`
    #   value that you can use in a subsequent call to `SearchListings` to
    #   list the next set of results.
    #
    # @option params [String] :next_token
    #   When the number of results is greater than the default value for the
    #   `MaxResults` parameter, or if you explicitly specify a value for
    #   `MaxResults` that is less than the number of results, the response
    #   includes a pagination token named `NextToken`. You can specify this
    #   `NextToken` value in a subsequent call to `SearchListings` to list the
    #   next set of results.
    #
    # @option params [Types::FilterClause] :filters
    #   Specifies the filters for the search of listings.
    #
    # @option params [Array<Types::AggregationListItem>] :aggregations
    #   Enables you to specify one or more attributes to compute and return
    #   counts grouped by field values.
    #
    # @option params [Types::SearchSort] :sort
    #   Specifies the way for sorting the search results.
    #
    # @option params [Array<String>] :additional_attributes
    #   Specifies additional attributes for the search.
    #
    # @return [Types::SearchListingsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchListingsOutput#items #items} => Array&lt;Types::SearchResultItem&gt;
    #   * {Types::SearchListingsOutput#next_token #next_token} => String
    #   * {Types::SearchListingsOutput#total_match_count #total_match_count} => Integer
    #   * {Types::SearchListingsOutput#aggregates #aggregates} => Array&lt;Types::AggregationOutput&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_listings({
    #     domain_identifier: "DomainId", # required
    #     search_text: "SearchListingsInputSearchTextString",
    #     search_in: [
    #       {
    #         attribute: "Attribute", # required
    #       },
    #     ],
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #     filters: {
    #       filter: {
    #         attribute: "Attribute", # required
    #         value: "FilterValueString",
    #         int_value: 1,
    #         operator: "EQ", # accepts EQ, LE, LT, GE, GT, TEXT_SEARCH
    #       },
    #       and: [
    #         {
    #           # recursive FilterClause
    #         },
    #       ],
    #       or: [
    #         {
    #           # recursive FilterClause
    #         },
    #       ],
    #     },
    #     aggregations: [
    #       {
    #         attribute: "Attribute", # required
    #         display_value: "AggregationDisplayValue",
    #       },
    #     ],
    #     sort: {
    #       attribute: "Attribute", # required
    #       order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #     },
    #     additional_attributes: ["FORMS"], # accepts FORMS, TIME_SERIES_DATA_POINT_FORMS, TEXT_MATCH_RATIONALE
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].asset_listing.listing_id #=> String
    #   resp.items[0].asset_listing.listing_revision #=> String
    #   resp.items[0].asset_listing.name #=> String
    #   resp.items[0].asset_listing.entity_id #=> String
    #   resp.items[0].asset_listing.entity_revision #=> String
    #   resp.items[0].asset_listing.entity_type #=> String
    #   resp.items[0].asset_listing.description #=> String
    #   resp.items[0].asset_listing.created_at #=> Time
    #   resp.items[0].asset_listing.listing_created_by #=> String
    #   resp.items[0].asset_listing.listing_updated_by #=> String
    #   resp.items[0].asset_listing.glossary_terms #=> Array
    #   resp.items[0].asset_listing.glossary_terms[0].name #=> String
    #   resp.items[0].asset_listing.glossary_terms[0].short_description #=> String
    #   resp.items[0].asset_listing.governed_glossary_terms #=> Array
    #   resp.items[0].asset_listing.governed_glossary_terms[0].name #=> String
    #   resp.items[0].asset_listing.governed_glossary_terms[0].short_description #=> String
    #   resp.items[0].asset_listing.owning_project_id #=> String
    #   resp.items[0].asset_listing.additional_attributes.forms #=> String
    #   resp.items[0].asset_listing.additional_attributes.match_rationale #=> Array
    #   resp.items[0].asset_listing.additional_attributes.match_rationale[0].text_matches #=> Array
    #   resp.items[0].asset_listing.additional_attributes.match_rationale[0].text_matches[0].attribute #=> String
    #   resp.items[0].asset_listing.additional_attributes.match_rationale[0].text_matches[0].text #=> String
    #   resp.items[0].asset_listing.additional_attributes.match_rationale[0].text_matches[0].match_offsets #=> Array
    #   resp.items[0].asset_listing.additional_attributes.match_rationale[0].text_matches[0].match_offsets[0].start_offset #=> Integer
    #   resp.items[0].asset_listing.additional_attributes.match_rationale[0].text_matches[0].match_offsets[0].end_offset #=> Integer
    #   resp.items[0].asset_listing.additional_attributes.latest_time_series_data_point_forms #=> Array
    #   resp.items[0].asset_listing.additional_attributes.latest_time_series_data_point_forms[0].form_name #=> String
    #   resp.items[0].asset_listing.additional_attributes.latest_time_series_data_point_forms[0].type_identifier #=> String
    #   resp.items[0].asset_listing.additional_attributes.latest_time_series_data_point_forms[0].type_revision #=> String
    #   resp.items[0].asset_listing.additional_attributes.latest_time_series_data_point_forms[0].timestamp #=> Time
    #   resp.items[0].asset_listing.additional_attributes.latest_time_series_data_point_forms[0].content_summary #=> String
    #   resp.items[0].asset_listing.additional_attributes.latest_time_series_data_point_forms[0].id #=> String
    #   resp.items[0].data_product_listing.listing_id #=> String
    #   resp.items[0].data_product_listing.listing_revision #=> String
    #   resp.items[0].data_product_listing.name #=> String
    #   resp.items[0].data_product_listing.entity_id #=> String
    #   resp.items[0].data_product_listing.entity_revision #=> String
    #   resp.items[0].data_product_listing.description #=> String
    #   resp.items[0].data_product_listing.created_at #=> Time
    #   resp.items[0].data_product_listing.listing_created_by #=> String
    #   resp.items[0].data_product_listing.listing_updated_by #=> String
    #   resp.items[0].data_product_listing.glossary_terms #=> Array
    #   resp.items[0].data_product_listing.glossary_terms[0].name #=> String
    #   resp.items[0].data_product_listing.glossary_terms[0].short_description #=> String
    #   resp.items[0].data_product_listing.owning_project_id #=> String
    #   resp.items[0].data_product_listing.additional_attributes.forms #=> String
    #   resp.items[0].data_product_listing.additional_attributes.match_rationale #=> Array
    #   resp.items[0].data_product_listing.additional_attributes.match_rationale[0].text_matches #=> Array
    #   resp.items[0].data_product_listing.additional_attributes.match_rationale[0].text_matches[0].attribute #=> String
    #   resp.items[0].data_product_listing.additional_attributes.match_rationale[0].text_matches[0].text #=> String
    #   resp.items[0].data_product_listing.additional_attributes.match_rationale[0].text_matches[0].match_offsets #=> Array
    #   resp.items[0].data_product_listing.additional_attributes.match_rationale[0].text_matches[0].match_offsets[0].start_offset #=> Integer
    #   resp.items[0].data_product_listing.additional_attributes.match_rationale[0].text_matches[0].match_offsets[0].end_offset #=> Integer
    #   resp.items[0].data_product_listing.items #=> Array
    #   resp.items[0].data_product_listing.items[0].listing_id #=> String
    #   resp.items[0].data_product_listing.items[0].listing_revision #=> String
    #   resp.items[0].data_product_listing.items[0].glossary_terms #=> Array
    #   resp.items[0].data_product_listing.items[0].glossary_terms[0].name #=> String
    #   resp.items[0].data_product_listing.items[0].glossary_terms[0].short_description #=> String
    #   resp.next_token #=> String
    #   resp.total_match_count #=> Integer
    #   resp.aggregates #=> Array
    #   resp.aggregates[0].attribute #=> String
    #   resp.aggregates[0].display_value #=> String
    #   resp.aggregates[0].items #=> Array
    #   resp.aggregates[0].items[0].value #=> String
    #   resp.aggregates[0].items[0].count #=> Integer
    #   resp.aggregates[0].items[0].display_value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/SearchListings AWS API Documentation
    #
    # @overload search_listings(params = {})
    # @param [Hash] params ({})
    def search_listings(params = {}, options = {})
      req = build_request(:search_listings, params)
      req.send_request(options)
    end

    # Searches for types in Amazon DataZone.
    #
    # Prerequisites:
    #
    # * The --domain-identifier must refer to an existing Amazon DataZone
    #   domain.
    #
    # * --search-scope must be one of the valid values including:
    #   ASSET\_TYPE, GLOSSARY\_TERM\_TYPE, DATA\_PRODUCT\_TYPE.
    #
    # * The --managed flag must be present without a value.
    #
    # * The user must have permissions for form or asset types in the
    #   domain.
    #
    # * If using --filters, ensure that the JSON is valid.
    #
    # * Filters contain correct structure (attribute, value, operator).
    #
    # @option params [required, String] :domain_identifier
    #   The identifier of the Amazon DataZone domain in which to invoke the
    #   `SearchTypes` action.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call to
    #   `SearchTypes`. When the number of results to be listed is greater than
    #   the value of `MaxResults`, the response contains a `NextToken` value
    #   that you can use in a subsequent call to `SearchTypes` to list the
    #   next set of results.
    #
    # @option params [String] :next_token
    #   When the number of results is greater than the default value for the
    #   `MaxResults` parameter, or if you explicitly specify a value for
    #   `MaxResults` that is less than the number of results, the response
    #   includes a pagination token named `NextToken`. You can specify this
    #   `NextToken` value in a subsequent call to `SearchTypes` to list the
    #   next set of results.
    #
    # @option params [required, String] :search_scope
    #   Specifies the scope of the search for types.
    #
    # @option params [String] :search_text
    #   Specifies the text for which to search.
    #
    # @option params [Array<Types::SearchInItem>] :search_in
    #   The details of the search.
    #
    # @option params [Types::FilterClause] :filters
    #   The filters for the `SearchTypes` action.
    #
    # @option params [Types::SearchSort] :sort
    #   The specifies the way to sort the `SearchTypes` results.
    #
    # @option params [required, Boolean] :managed
    #   Specifies whether the search is managed.
    #
    # @return [Types::SearchTypesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchTypesOutput#items #items} => Array&lt;Types::SearchTypesResultItem&gt;
    #   * {Types::SearchTypesOutput#next_token #next_token} => String
    #   * {Types::SearchTypesOutput#total_match_count #total_match_count} => Integer
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_types({
    #     domain_identifier: "DomainId", # required
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #     search_scope: "ASSET_TYPE", # required, accepts ASSET_TYPE, FORM_TYPE, LINEAGE_NODE_TYPE
    #     search_text: "SearchText",
    #     search_in: [
    #       {
    #         attribute: "Attribute", # required
    #       },
    #     ],
    #     filters: {
    #       filter: {
    #         attribute: "Attribute", # required
    #         value: "FilterValueString",
    #         int_value: 1,
    #         operator: "EQ", # accepts EQ, LE, LT, GE, GT, TEXT_SEARCH
    #       },
    #       and: [
    #         {
    #           # recursive FilterClause
    #         },
    #       ],
    #       or: [
    #         {
    #           # recursive FilterClause
    #         },
    #       ],
    #     },
    #     sort: {
    #       attribute: "Attribute", # required
    #       order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #     },
    #     managed: false, # required
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].asset_type_item.domain_id #=> String
    #   resp.items[0].asset_type_item.name #=> String
    #   resp.items[0].asset_type_item.revision #=> String
    #   resp.items[0].asset_type_item.description #=> String
    #   resp.items[0].asset_type_item.forms_output #=> Hash
    #   resp.items[0].asset_type_item.forms_output["FormName"].type_name #=> String
    #   resp.items[0].asset_type_item.forms_output["FormName"].type_revision #=> String
    #   resp.items[0].asset_type_item.forms_output["FormName"].required #=> Boolean
    #   resp.items[0].asset_type_item.owning_project_id #=> String
    #   resp.items[0].asset_type_item.origin_domain_id #=> String
    #   resp.items[0].asset_type_item.origin_project_id #=> String
    #   resp.items[0].asset_type_item.created_at #=> Time
    #   resp.items[0].asset_type_item.created_by #=> String
    #   resp.items[0].asset_type_item.updated_at #=> Time
    #   resp.items[0].asset_type_item.updated_by #=> String
    #   resp.items[0].form_type_item.domain_id #=> String
    #   resp.items[0].form_type_item.name #=> String
    #   resp.items[0].form_type_item.revision #=> String
    #   resp.items[0].form_type_item.model.smithy #=> String
    #   resp.items[0].form_type_item.status #=> String, one of "ENABLED", "DISABLED"
    #   resp.items[0].form_type_item.owning_project_id #=> String
    #   resp.items[0].form_type_item.origin_domain_id #=> String
    #   resp.items[0].form_type_item.origin_project_id #=> String
    #   resp.items[0].form_type_item.created_at #=> Time
    #   resp.items[0].form_type_item.created_by #=> String
    #   resp.items[0].form_type_item.description #=> String
    #   resp.items[0].form_type_item.imports #=> Array
    #   resp.items[0].form_type_item.imports[0].name #=> String
    #   resp.items[0].form_type_item.imports[0].revision #=> String
    #   resp.items[0].lineage_node_type_item.domain_id #=> String
    #   resp.items[0].lineage_node_type_item.name #=> String
    #   resp.items[0].lineage_node_type_item.description #=> String
    #   resp.items[0].lineage_node_type_item.created_at #=> Time
    #   resp.items[0].lineage_node_type_item.created_by #=> String
    #   resp.items[0].lineage_node_type_item.updated_at #=> Time
    #   resp.items[0].lineage_node_type_item.updated_by #=> String
    #   resp.items[0].lineage_node_type_item.revision #=> String
    #   resp.items[0].lineage_node_type_item.forms_output #=> Hash
    #   resp.items[0].lineage_node_type_item.forms_output["FormName"].type_name #=> String
    #   resp.items[0].lineage_node_type_item.forms_output["FormName"].type_revision #=> String
    #   resp.items[0].lineage_node_type_item.forms_output["FormName"].required #=> Boolean
    #   resp.next_token #=> String
    #   resp.total_match_count #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/SearchTypes AWS API Documentation
    #
    # @overload search_types(params = {})
    # @param [Hash] params ({})
    def search_types(params = {}, options = {})
      req = build_request(:search_types, params)
      req.send_request(options)
    end

    # Searches user profiles in Amazon DataZone.
    #
    # @option params [required, String] :domain_identifier
    #   The identifier of the Amazon DataZone domain in which you want to
    #   search user profiles.
    #
    # @option params [required, String] :user_type
    #   Specifies the user type for the `SearchUserProfiles` action.
    #
    # @option params [String] :search_text
    #   Specifies the text for which to search.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call to
    #   `SearchUserProfiles`. When the number of results to be listed is
    #   greater than the value of `MaxResults`, the response contains a
    #   `NextToken` value that you can use in a subsequent call to
    #   `SearchUserProfiles` to list the next set of results.
    #
    # @option params [String] :next_token
    #   When the number of results is greater than the default value for the
    #   `MaxResults` parameter, or if you explicitly specify a value for
    #   `MaxResults` that is less than the number of results, the response
    #   includes a pagination token named `NextToken`. You can specify this
    #   `NextToken` value in a subsequent call to `SearchUserProfiles` to list
    #   the next set of results.
    #
    # @return [Types::SearchUserProfilesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchUserProfilesOutput#items #items} => Array&lt;Types::UserProfileSummary&gt;
    #   * {Types::SearchUserProfilesOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_user_profiles({
    #     domain_identifier: "DomainId", # required
    #     user_type: "SSO_USER", # required, accepts SSO_USER, DATAZONE_USER, DATAZONE_SSO_USER, DATAZONE_IAM_USER
    #     search_text: "UserSearchText",
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].domain_id #=> String
    #   resp.items[0].id #=> String
    #   resp.items[0].type #=> String, one of "IAM", "SSO"
    #   resp.items[0].status #=> String, one of "ASSIGNED", "NOT_ASSIGNED", "ACTIVATED", "DEACTIVATED"
    #   resp.items[0].details.iam.arn #=> String
    #   resp.items[0].details.iam.principal_id #=> String
    #   resp.items[0].details.iam.session_name #=> String
    #   resp.items[0].details.iam.group_profile_id #=> String
    #   resp.items[0].details.sso.username #=> String
    #   resp.items[0].details.sso.first_name #=> String
    #   resp.items[0].details.sso.last_name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/SearchUserProfiles AWS API Documentation
    #
    # @overload search_user_profiles(params = {})
    # @param [Hash] params ({})
    def search_user_profiles(params = {}, options = {})
      req = build_request(:search_user_profiles, params)
      req.send_request(options)
    end

    # Start the run of the specified data source in Amazon DataZone.
    #
    # @option params [required, String] :domain_identifier
    #   The identifier of the Amazon DataZone domain in which to start a data
    #   source run.
    #
    # @option params [required, String] :data_source_identifier
    #   The identifier of the data source.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that is provided to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::StartDataSourceRunOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartDataSourceRunOutput#domain_id #domain_id} => String
    #   * {Types::StartDataSourceRunOutput#data_source_id #data_source_id} => String
    #   * {Types::StartDataSourceRunOutput#id #id} => String
    #   * {Types::StartDataSourceRunOutput#project_id #project_id} => String
    #   * {Types::StartDataSourceRunOutput#status #status} => String
    #   * {Types::StartDataSourceRunOutput#type #type} => String
    #   * {Types::StartDataSourceRunOutput#data_source_configuration_snapshot #data_source_configuration_snapshot} => String
    #   * {Types::StartDataSourceRunOutput#run_statistics_for_assets #run_statistics_for_assets} => Types::RunStatisticsForAssets
    #   * {Types::StartDataSourceRunOutput#error_message #error_message} => Types::DataSourceErrorMessage
    #   * {Types::StartDataSourceRunOutput#created_at #created_at} => Time
    #   * {Types::StartDataSourceRunOutput#updated_at #updated_at} => Time
    #   * {Types::StartDataSourceRunOutput#started_at #started_at} => Time
    #   * {Types::StartDataSourceRunOutput#stopped_at #stopped_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_data_source_run({
    #     domain_identifier: "DomainId", # required
    #     data_source_identifier: "DataSourceId", # required
    #     client_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.domain_id #=> String
    #   resp.data_source_id #=> String
    #   resp.id #=> String
    #   resp.project_id #=> String
    #   resp.status #=> String, one of "REQUESTED", "RUNNING", "FAILED", "PARTIALLY_SUCCEEDED", "SUCCESS"
    #   resp.type #=> String, one of "PRIORITIZED", "SCHEDULED"
    #   resp.data_source_configuration_snapshot #=> String
    #   resp.run_statistics_for_assets.added #=> Integer
    #   resp.run_statistics_for_assets.updated #=> Integer
    #   resp.run_statistics_for_assets.unchanged #=> Integer
    #   resp.run_statistics_for_assets.skipped #=> Integer
    #   resp.run_statistics_for_assets.failed #=> Integer
    #   resp.error_message.error_type #=> String, one of "ACCESS_DENIED_EXCEPTION", "CONFLICT_EXCEPTION", "INTERNAL_SERVER_EXCEPTION", "RESOURCE_NOT_FOUND_EXCEPTION", "SERVICE_QUOTA_EXCEEDED_EXCEPTION", "THROTTLING_EXCEPTION", "VALIDATION_EXCEPTION"
    #   resp.error_message.error_detail #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.started_at #=> Time
    #   resp.stopped_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/StartDataSourceRun AWS API Documentation
    #
    # @overload start_data_source_run(params = {})
    # @param [Hash] params ({})
    def start_data_source_run(params = {}, options = {})
      req = build_request(:start_data_source_run, params)
      req.send_request(options)
    end

    # Starts the metadata generation run.
    #
    # Prerequisites:
    #
    # * Asset must be created and belong to the specified domain and
    #   project.
    #
    # * Asset type must be supported for metadata generation (e.g., Amazon
    #   Web Services Glue table).
    #
    # * Asset must have a structured schema with valid rows and columns.
    #
    # * Valid values for --type: BUSINESS\_DESCRIPTIONS, BUSINESS\_NAMES,
    #   BUSINESS\_GLOSSARY\_ASSOCIATIONS.
    #
    # * The user must have permission to run metadata generation in the
    #   domain/project.
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the Amazon DataZone domain where you want to start a
    #   metadata generation run.
    #
    # @option params [String] :type
    #   The type of the metadata generation run.
    #
    # @option params [Array<String>] :types
    #   The types of the metadata generation run.
    #
    # @option params [required, Types::MetadataGenerationRunTarget] :target
    #   The asset for which you want to start a metadata generation run.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier to ensure idempotency of the
    #   request. This field is automatically populated if not provided.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :owning_project_identifier
    #   The ID of the project that owns the asset for which you want to start
    #   a metadata generation run.
    #
    # @return [Types::StartMetadataGenerationRunOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartMetadataGenerationRunOutput#domain_id #domain_id} => String
    #   * {Types::StartMetadataGenerationRunOutput#id #id} => String
    #   * {Types::StartMetadataGenerationRunOutput#status #status} => String
    #   * {Types::StartMetadataGenerationRunOutput#type #type} => String
    #   * {Types::StartMetadataGenerationRunOutput#types #types} => Array&lt;String&gt;
    #   * {Types::StartMetadataGenerationRunOutput#created_at #created_at} => Time
    #   * {Types::StartMetadataGenerationRunOutput#created_by #created_by} => String
    #   * {Types::StartMetadataGenerationRunOutput#owning_project_id #owning_project_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_metadata_generation_run({
    #     domain_identifier: "DomainId", # required
    #     type: "BUSINESS_DESCRIPTIONS", # accepts BUSINESS_DESCRIPTIONS, BUSINESS_NAMES, BUSINESS_GLOSSARY_ASSOCIATIONS
    #     types: ["BUSINESS_DESCRIPTIONS"], # accepts BUSINESS_DESCRIPTIONS, BUSINESS_NAMES, BUSINESS_GLOSSARY_ASSOCIATIONS
    #     target: { # required
    #       type: "ASSET", # required, accepts ASSET
    #       identifier: "String", # required
    #       revision: "Revision",
    #     },
    #     client_token: "ClientToken",
    #     owning_project_identifier: "ProjectId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.domain_id #=> String
    #   resp.id #=> String
    #   resp.status #=> String, one of "SUBMITTED", "IN_PROGRESS", "CANCELED", "SUCCEEDED", "FAILED", "PARTIALLY_SUCCEEDED"
    #   resp.type #=> String, one of "BUSINESS_DESCRIPTIONS", "BUSINESS_NAMES", "BUSINESS_GLOSSARY_ASSOCIATIONS"
    #   resp.types #=> Array
    #   resp.types[0] #=> String, one of "BUSINESS_DESCRIPTIONS", "BUSINESS_NAMES", "BUSINESS_GLOSSARY_ASSOCIATIONS"
    #   resp.created_at #=> Time
    #   resp.created_by #=> String
    #   resp.owning_project_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/StartMetadataGenerationRun AWS API Documentation
    #
    # @overload start_metadata_generation_run(params = {})
    # @param [Hash] params ({})
    def start_metadata_generation_run(params = {}, options = {})
      req = build_request(:start_metadata_generation_run, params)
      req.send_request(options)
    end

    # Starts a notebook run in an Amazon DataZone domain. A notebook run
    # represents the execution of a Amazon DataZone notebook within a
    # project. You can configure compute, network, timeout, and environment
    # settings for the run.
    #
    # @option params [required, String] :domain_identifier
    #   The identifier of the Amazon DataZone domain in which the notebook run
    #   is started.
    #
    # @option params [required, String] :owning_project_identifier
    #   The identifier of the project that owns the notebook run.
    #
    # @option params [required, String] :notebook_identifier
    #   The identifier of the notebook to run.
    #
    # @option params [String] :schedule_identifier
    #   The identifier of the schedule associated with the notebook run.
    #
    # @option params [Types::ComputeConfig] :compute_configuration
    #   The compute configuration for the notebook run, including instance
    #   type and environment version.
    #
    # @option params [Types::NetworkConfig] :network_configuration
    #   The network configuration for the notebook run, including network
    #   access type and optional VPC settings.
    #
    # @option params [Types::TimeoutConfig] :timeout_configuration
    #   The timeout configuration for the notebook run. The default timeout is
    #   720 minutes (12 hours) and the maximum is 1440 minutes (24 hours).
    #
    # @option params [Types::TriggerSource] :trigger_source
    #   The source that triggered the notebook run.
    #
    # @option params [Hash<String,String>] :metadata
    #   The metadata for the notebook run, specified as key-value pairs. You
    #   can specify up to 50 entries, with keys up to 128 characters and
    #   values up to 1024 characters.
    #
    # @option params [Hash<String,String>] :parameters
    #   The sensitive parameters for the notebook run, specified as key-value
    #   pairs. You can specify up to 50 entries, with keys up to 128
    #   characters and values up to 1024 characters.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier to ensure idempotency of the
    #   request. This field is automatically populated if not provided.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::StartNotebookRunOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartNotebookRunOutput#id #id} => String
    #   * {Types::StartNotebookRunOutput#domain_id #domain_id} => String
    #   * {Types::StartNotebookRunOutput#owning_project_id #owning_project_id} => String
    #   * {Types::StartNotebookRunOutput#notebook_id #notebook_id} => String
    #   * {Types::StartNotebookRunOutput#schedule_id #schedule_id} => String
    #   * {Types::StartNotebookRunOutput#status #status} => String
    #   * {Types::StartNotebookRunOutput#cell_order #cell_order} => Array&lt;Types::CellInformation&gt;
    #   * {Types::StartNotebookRunOutput#metadata #metadata} => Hash&lt;String,String&gt;
    #   * {Types::StartNotebookRunOutput#parameters #parameters} => Hash&lt;String,String&gt;
    #   * {Types::StartNotebookRunOutput#compute_configuration #compute_configuration} => Types::ComputeConfig
    #   * {Types::StartNotebookRunOutput#network_configuration #network_configuration} => Types::NetworkConfig
    #   * {Types::StartNotebookRunOutput#timeout_configuration #timeout_configuration} => Types::TimeoutConfig
    #   * {Types::StartNotebookRunOutput#environment_configuration #environment_configuration} => Types::EnvironmentConfig
    #   * {Types::StartNotebookRunOutput#storage_configuration #storage_configuration} => Types::StorageConfig
    #   * {Types::StartNotebookRunOutput#trigger_source #trigger_source} => Types::TriggerSource
    #   * {Types::StartNotebookRunOutput#error #error} => Types::NotebookRunError
    #   * {Types::StartNotebookRunOutput#created_at #created_at} => Time
    #   * {Types::StartNotebookRunOutput#created_by #created_by} => String
    #   * {Types::StartNotebookRunOutput#updated_at #updated_at} => Time
    #   * {Types::StartNotebookRunOutput#updated_by #updated_by} => String
    #   * {Types::StartNotebookRunOutput#started_at #started_at} => Time
    #   * {Types::StartNotebookRunOutput#completed_at #completed_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_notebook_run({
    #     domain_identifier: "DomainId", # required
    #     owning_project_identifier: "ProjectId", # required
    #     notebook_identifier: "NotebookId", # required
    #     schedule_identifier: "ScheduleId",
    #     compute_configuration: {
    #       instance_type: "InstanceType",
    #       environment_version: "String",
    #     },
    #     network_configuration: {
    #       network_access_type: "PUBLIC_INTERNET_ONLY", # required, accepts PUBLIC_INTERNET_ONLY, VPC_ONLY
    #       vpc_id: "String",
    #       subnet_ids: ["String"],
    #       security_group_ids: ["String"],
    #     },
    #     timeout_configuration: {
    #       run_timeout_in_minutes: 1,
    #     },
    #     trigger_source: {
    #       type: "MANUAL", # accepts MANUAL, SCHEDULED, WORKFLOW
    #       name: "String",
    #     },
    #     metadata: {
    #       "MetadataKey" => "MetadataValue",
    #     },
    #     parameters: {
    #       "ParameterKey" => "ParameterValue",
    #     },
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.domain_id #=> String
    #   resp.owning_project_id #=> String
    #   resp.notebook_id #=> String
    #   resp.schedule_id #=> String
    #   resp.status #=> String, one of "QUEUED", "STARTING", "RUNNING", "STOPPING", "STOPPED", "SUCCEEDED", "FAILED"
    #   resp.cell_order #=> Array
    #   resp.metadata #=> Hash
    #   resp.metadata["MetadataKey"] #=> String
    #   resp.parameters #=> Hash
    #   resp.parameters["ParameterKey"] #=> String
    #   resp.compute_configuration.instance_type #=> String
    #   resp.compute_configuration.environment_version #=> String
    #   resp.network_configuration.network_access_type #=> String, one of "PUBLIC_INTERNET_ONLY", "VPC_ONLY"
    #   resp.network_configuration.vpc_id #=> String
    #   resp.network_configuration.subnet_ids #=> Array
    #   resp.network_configuration.subnet_ids[0] #=> String
    #   resp.network_configuration.security_group_ids #=> Array
    #   resp.network_configuration.security_group_ids[0] #=> String
    #   resp.timeout_configuration.run_timeout_in_minutes #=> Integer
    #   resp.environment_configuration.image_version #=> String
    #   resp.environment_configuration.package_config.package_manager #=> String, one of "UV"
    #   resp.environment_configuration.package_config.package_specification #=> String
    #   resp.storage_configuration.project_s3_path #=> String
    #   resp.storage_configuration.kms_key_arn #=> String
    #   resp.trigger_source.type #=> String, one of "MANUAL", "SCHEDULED", "WORKFLOW"
    #   resp.trigger_source.name #=> String
    #   resp.error.message #=> String
    #   resp.created_at #=> Time
    #   resp.created_by #=> String
    #   resp.updated_at #=> Time
    #   resp.updated_by #=> String
    #   resp.started_at #=> Time
    #   resp.completed_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/StartNotebookRun AWS API Documentation
    #
    # @overload start_notebook_run(params = {})
    # @param [Hash] params ({})
    def start_notebook_run(params = {}, options = {})
      req = build_request(:start_notebook_run, params)
      req.send_request(options)
    end

    # Stops a running notebook run in an Amazon DataZone domain.
    #
    # @option params [required, String] :domain_identifier
    #   The identifier of the Amazon DataZone domain in which the notebook run
    #   is stopped.
    #
    # @option params [required, String] :identifier
    #   The identifier of the notebook run to stop.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier to ensure idempotency of the
    #   request. This field is automatically populated if not provided.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::StopNotebookRunOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StopNotebookRunOutput#id #id} => String
    #   * {Types::StopNotebookRunOutput#domain_id #domain_id} => String
    #   * {Types::StopNotebookRunOutput#owning_project_id #owning_project_id} => String
    #   * {Types::StopNotebookRunOutput#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_notebook_run({
    #     domain_identifier: "DomainId", # required
    #     identifier: "NotebookRunId", # required
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.domain_id #=> String
    #   resp.owning_project_id #=> String
    #   resp.status #=> String, one of "QUEUED", "STARTING", "RUNNING", "STOPPING", "STOPPED", "SUCCEEDED", "FAILED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/StopNotebookRun AWS API Documentation
    #
    # @overload stop_notebook_run(params = {})
    # @param [Hash] params ({})
    def stop_notebook_run(params = {}, options = {})
      req = build_request(:stop_notebook_run, params)
      req.send_request(options)
    end

    # Tags a resource in Amazon DataZone.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource to be tagged in Amazon DataZone.
    #
    # @option params [required, Hash<String,String>] :tags
    #   Specifies the tags for the `TagResource` action.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "String", # required
    #     tags: { # required
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Untags a resource in Amazon DataZone.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource to be untagged in Amazon DataZone.
    #
    # @option params [required, Array<String>] :tag_keys
    #   Specifies the tag keys for the `UntagResource` action.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "String", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates the account pool.
    #
    # @option params [required, String] :domain_identifier
    #   The domain ID where the account pool that is to be updated lives.
    #
    # @option params [required, String] :identifier
    #   The ID of the account pool that is to be updated.
    #
    # @option params [String] :name
    #   The name of the account pool that is to be updated.
    #
    # @option params [String] :description
    #   The description of the account pool that is to be udpated.
    #
    # @option params [String] :resolution_strategy
    #   The mechanism used to resolve the account selection from the account
    #   pool.
    #
    # @option params [Types::AccountSource] :account_source
    #   The source of accounts for the account pool. In the current release,
    #   it's either a static list of accounts provided by the customer or a
    #   custom Amazon Web Services Lambda handler.
    #
    # @return [Types::UpdateAccountPoolOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateAccountPoolOutput#domain_id #domain_id} => String
    #   * {Types::UpdateAccountPoolOutput#name #name} => String
    #   * {Types::UpdateAccountPoolOutput#id #id} => String
    #   * {Types::UpdateAccountPoolOutput#description #description} => String
    #   * {Types::UpdateAccountPoolOutput#resolution_strategy #resolution_strategy} => String
    #   * {Types::UpdateAccountPoolOutput#account_source #account_source} => Types::AccountSource
    #   * {Types::UpdateAccountPoolOutput#created_by #created_by} => String
    #   * {Types::UpdateAccountPoolOutput#created_at #created_at} => Time
    #   * {Types::UpdateAccountPoolOutput#last_updated_at #last_updated_at} => Time
    #   * {Types::UpdateAccountPoolOutput#updated_by #updated_by} => String
    #   * {Types::UpdateAccountPoolOutput#domain_unit_id #domain_unit_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_account_pool({
    #     domain_identifier: "DomainId", # required
    #     identifier: "AccountPoolId", # required
    #     name: "AccountPoolName",
    #     description: "Description",
    #     resolution_strategy: "MANUAL", # accepts MANUAL
    #     account_source: {
    #       accounts: [
    #         {
    #           aws_account_id: "AwsAccountId", # required
    #           supported_regions: ["AwsRegion"], # required
    #           aws_account_name: "AwsAccountName",
    #         },
    #       ],
    #       custom_account_pool_handler: {
    #         lambda_function_arn: "LambdaFunctionArn", # required
    #         lambda_execution_role_arn: "LambdaExecutionRoleArn",
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.domain_id #=> String
    #   resp.name #=> String
    #   resp.id #=> String
    #   resp.description #=> String
    #   resp.resolution_strategy #=> String, one of "MANUAL"
    #   resp.account_source.accounts #=> Array
    #   resp.account_source.accounts[0].aws_account_id #=> String
    #   resp.account_source.accounts[0].supported_regions #=> Array
    #   resp.account_source.accounts[0].supported_regions[0] #=> String
    #   resp.account_source.accounts[0].aws_account_name #=> String
    #   resp.account_source.custom_account_pool_handler.lambda_function_arn #=> String
    #   resp.account_source.custom_account_pool_handler.lambda_execution_role_arn #=> String
    #   resp.created_by #=> String
    #   resp.created_at #=> Time
    #   resp.last_updated_at #=> Time
    #   resp.updated_by #=> String
    #   resp.domain_unit_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/UpdateAccountPool AWS API Documentation
    #
    # @overload update_account_pool(params = {})
    # @param [Hash] params ({})
    def update_account_pool(params = {}, options = {})
      req = build_request(:update_account_pool, params)
      req.send_request(options)
    end

    # Updates an asset filter.
    #
    # Prerequisites:
    #
    # * The domain, asset, and asset filter identifier must all exist.
    #
    # * The asset must contain the columns being referenced in the update.
    #
    # * If applying a row filter, ensure the column referenced in the
    #   expression exists in the asset schema.
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the domain where you want to update an asset filter.
    #
    # @option params [required, String] :asset_identifier
    #   The ID of the data asset.
    #
    # @option params [required, String] :identifier
    #   The ID of the asset filter.
    #
    # @option params [String] :name
    #   The name of the asset filter.
    #
    # @option params [String] :description
    #   The description of the asset filter.
    #
    # @option params [Types::AssetFilterConfiguration] :configuration
    #   The configuration of the asset filter.
    #
    # @return [Types::UpdateAssetFilterOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateAssetFilterOutput#id #id} => String
    #   * {Types::UpdateAssetFilterOutput#domain_id #domain_id} => String
    #   * {Types::UpdateAssetFilterOutput#asset_id #asset_id} => String
    #   * {Types::UpdateAssetFilterOutput#name #name} => String
    #   * {Types::UpdateAssetFilterOutput#description #description} => String
    #   * {Types::UpdateAssetFilterOutput#status #status} => String
    #   * {Types::UpdateAssetFilterOutput#configuration #configuration} => Types::AssetFilterConfiguration
    #   * {Types::UpdateAssetFilterOutput#created_at #created_at} => Time
    #   * {Types::UpdateAssetFilterOutput#error_message #error_message} => String
    #   * {Types::UpdateAssetFilterOutput#effective_column_names #effective_column_names} => Array&lt;String&gt;
    #   * {Types::UpdateAssetFilterOutput#effective_row_filter #effective_row_filter} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_asset_filter({
    #     domain_identifier: "DomainId", # required
    #     asset_identifier: "AssetId", # required
    #     identifier: "FilterId", # required
    #     name: "String",
    #     description: "Description",
    #     configuration: {
    #       column_configuration: {
    #         included_column_names: ["String"],
    #       },
    #       row_configuration: {
    #         row_filter: { # required
    #           expression: {
    #             equal_to: {
    #               column_name: "String", # required
    #               value: "String", # required
    #             },
    #             not_equal_to: {
    #               column_name: "String", # required
    #               value: "String", # required
    #             },
    #             greater_than: {
    #               column_name: "String", # required
    #               value: "String", # required
    #             },
    #             less_than: {
    #               column_name: "String", # required
    #               value: "String", # required
    #             },
    #             greater_than_or_equal_to: {
    #               column_name: "String", # required
    #               value: "String", # required
    #             },
    #             less_than_or_equal_to: {
    #               column_name: "String", # required
    #               value: "String", # required
    #             },
    #             is_null: {
    #               column_name: "String", # required
    #             },
    #             is_not_null: {
    #               column_name: "String", # required
    #             },
    #             in: {
    #               column_name: "String", # required
    #               values: ["String"], # required
    #             },
    #             not_in: {
    #               column_name: "String", # required
    #               values: ["String"], # required
    #             },
    #             like: {
    #               column_name: "String", # required
    #               value: "String", # required
    #             },
    #             not_like: {
    #               column_name: "String", # required
    #               value: "String", # required
    #             },
    #           },
    #           and: [
    #             {
    #               # recursive RowFilter
    #             },
    #           ],
    #           or: [
    #             {
    #               # recursive RowFilter
    #             },
    #           ],
    #         },
    #         sensitive: false,
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.domain_id #=> String
    #   resp.asset_id #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.status #=> String, one of "VALID", "INVALID"
    #   resp.configuration.column_configuration.included_column_names #=> Array
    #   resp.configuration.column_configuration.included_column_names[0] #=> String
    #   resp.configuration.row_configuration.row_filter.expression.equal_to.column_name #=> String
    #   resp.configuration.row_configuration.row_filter.expression.equal_to.value #=> String
    #   resp.configuration.row_configuration.row_filter.expression.not_equal_to.column_name #=> String
    #   resp.configuration.row_configuration.row_filter.expression.not_equal_to.value #=> String
    #   resp.configuration.row_configuration.row_filter.expression.greater_than.column_name #=> String
    #   resp.configuration.row_configuration.row_filter.expression.greater_than.value #=> String
    #   resp.configuration.row_configuration.row_filter.expression.less_than.column_name #=> String
    #   resp.configuration.row_configuration.row_filter.expression.less_than.value #=> String
    #   resp.configuration.row_configuration.row_filter.expression.greater_than_or_equal_to.column_name #=> String
    #   resp.configuration.row_configuration.row_filter.expression.greater_than_or_equal_to.value #=> String
    #   resp.configuration.row_configuration.row_filter.expression.less_than_or_equal_to.column_name #=> String
    #   resp.configuration.row_configuration.row_filter.expression.less_than_or_equal_to.value #=> String
    #   resp.configuration.row_configuration.row_filter.expression.is_null.column_name #=> String
    #   resp.configuration.row_configuration.row_filter.expression.is_not_null.column_name #=> String
    #   resp.configuration.row_configuration.row_filter.expression.in.column_name #=> String
    #   resp.configuration.row_configuration.row_filter.expression.in.values #=> Array
    #   resp.configuration.row_configuration.row_filter.expression.in.values[0] #=> String
    #   resp.configuration.row_configuration.row_filter.expression.not_in.column_name #=> String
    #   resp.configuration.row_configuration.row_filter.expression.not_in.values #=> Array
    #   resp.configuration.row_configuration.row_filter.expression.not_in.values[0] #=> String
    #   resp.configuration.row_configuration.row_filter.expression.like.column_name #=> String
    #   resp.configuration.row_configuration.row_filter.expression.like.value #=> String
    #   resp.configuration.row_configuration.row_filter.expression.not_like.column_name #=> String
    #   resp.configuration.row_configuration.row_filter.expression.not_like.value #=> String
    #   resp.configuration.row_configuration.row_filter.and #=> Array
    #   resp.configuration.row_configuration.row_filter.and[0] #=> Types::RowFilter
    #   resp.configuration.row_configuration.row_filter.or #=> Array
    #   resp.configuration.row_configuration.row_filter.or[0] #=> Types::RowFilter
    #   resp.configuration.row_configuration.sensitive #=> Boolean
    #   resp.created_at #=> Time
    #   resp.error_message #=> String
    #   resp.effective_column_names #=> Array
    #   resp.effective_column_names[0] #=> String
    #   resp.effective_row_filter #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/UpdateAssetFilter AWS API Documentation
    #
    # @overload update_asset_filter(params = {})
    # @param [Hash] params ({})
    def update_asset_filter(params = {}, options = {})
      req = build_request(:update_asset_filter, params)
      req.send_request(options)
    end

    # Updates a connection. In Amazon DataZone, a connection enables you to
    # connect your resources (domains, projects, and environments) to
    # external resources and services.
    #
    # @option params [Array<Types::Configuration>] :configurations
    #   The configurations of the connection.
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the domain where a connection is to be updated.
    #
    # @option params [required, String] :identifier
    #   The ID of the connection to be updated.
    #
    # @option params [String] :description
    #   The description of a connection.
    #
    # @option params [Types::AwsLocation] :aws_location
    #   The location where a connection is to be updated.
    #
    # @option params [Types::ConnectionPropertiesPatch] :props
    #   The connection props.
    #
    # @return [Types::UpdateConnectionOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateConnectionOutput#configurations #configurations} => Array&lt;Types::Configuration&gt;
    #   * {Types::UpdateConnectionOutput#connection_id #connection_id} => String
    #   * {Types::UpdateConnectionOutput#description #description} => String
    #   * {Types::UpdateConnectionOutput#domain_id #domain_id} => String
    #   * {Types::UpdateConnectionOutput#domain_unit_id #domain_unit_id} => String
    #   * {Types::UpdateConnectionOutput#environment_id #environment_id} => String
    #   * {Types::UpdateConnectionOutput#name #name} => String
    #   * {Types::UpdateConnectionOutput#physical_endpoints #physical_endpoints} => Array&lt;Types::PhysicalEndpoint&gt;
    #   * {Types::UpdateConnectionOutput#project_id #project_id} => String
    #   * {Types::UpdateConnectionOutput#props #props} => Types::ConnectionPropertiesOutput
    #   * {Types::UpdateConnectionOutput#type #type} => String
    #   * {Types::UpdateConnectionOutput#scope #scope} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_connection({
    #     configurations: [
    #       {
    #         classification: "ConfigurationClassificationString",
    #         properties: {
    #           "PropertyMapKeyString" => "PropertyMapValueString",
    #         },
    #       },
    #     ],
    #     domain_identifier: "DomainId", # required
    #     identifier: "ConnectionId", # required
    #     description: "UpdateConnectionInputDescriptionString",
    #     aws_location: {
    #       access_role: "AwsLocationAccessRoleString",
    #       aws_account_id: "AwsAccountId",
    #       aws_region: "AwsRegion",
    #       iam_connection_id: "ConnectionId",
    #     },
    #     props: {
    #       athena_properties: {
    #         workgroup_name: "AthenaPropertiesPatchWorkgroupNameString",
    #       },
    #       glue_properties: {
    #         glue_connection_input: {
    #           description: "String",
    #           connection_properties: {
    #             "String" => "ConnectionPropertiesValueString",
    #           },
    #           authentication_configuration: {
    #             secret_arn: "AuthenticationConfigurationPatchSecretArnString",
    #             basic_authentication_credentials: {
    #               user_name: "BasicAuthenticationCredentialsUserNameString",
    #               password: "BasicAuthenticationCredentialsPasswordString",
    #             },
    #           },
    #         },
    #       },
    #       iam_properties: {
    #         glue_lineage_sync_enabled: false,
    #       },
    #       redshift_properties: {
    #         storage: {
    #           cluster_name: "RedshiftStoragePropertiesClusterNameString",
    #           workgroup_name: "RedshiftStoragePropertiesWorkgroupNameString",
    #         },
    #         database_name: "RedshiftPropertiesPatchDatabaseNameString",
    #         host: "RedshiftPropertiesPatchHostString",
    #         port: 1,
    #         credentials: {
    #           secret_arn: "RedshiftCredentialsSecretArnString",
    #           username_password: {
    #             password: "Password", # required
    #             username: "Username", # required
    #           },
    #         },
    #         lineage_sync: {
    #           enabled: false,
    #           schedule: {
    #             schedule: "LineageSyncScheduleScheduleString",
    #           },
    #         },
    #       },
    #       spark_emr_properties: {
    #         compute_arn: "SparkEmrPropertiesPatchComputeArnString",
    #         instance_profile_arn: "SparkEmrPropertiesPatchInstanceProfileArnString",
    #         java_virtual_env: "SparkEmrPropertiesPatchJavaVirtualEnvString",
    #         log_uri: "SparkEmrPropertiesPatchLogUriString",
    #         python_virtual_env: "SparkEmrPropertiesPatchPythonVirtualEnvString",
    #         runtime_role: "SparkEmrPropertiesPatchRuntimeRoleString",
    #         trusted_certificates_s3_uri: "SparkEmrPropertiesPatchTrustedCertificatesS3UriString",
    #         managed_endpoint_arn: "SparkEmrPropertiesPatchManagedEndpointArnString",
    #       },
    #       s3_properties: {
    #         s3_uri: "S3Uri", # required
    #         s3_access_grant_location_id: "S3AccessGrantLocationId",
    #         register_s3_access_grant_location: false,
    #       },
    #       amazon_q_properties: {
    #         is_enabled: false, # required
    #         profile_arn: "AmazonQPropertiesPatchProfileArnString",
    #         auth_mode: "AmazonQPropertiesPatchAuthModeString",
    #       },
    #       mlflow_properties: {
    #         tracking_server_arn: "String",
    #       },
    #       lakehouse_properties: {
    #         glue_lineage_sync_enabled: false,
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.configurations #=> Array
    #   resp.configurations[0].classification #=> String
    #   resp.configurations[0].properties #=> Hash
    #   resp.configurations[0].properties["PropertyMapKeyString"] #=> String
    #   resp.connection_id #=> String
    #   resp.description #=> String
    #   resp.domain_id #=> String
    #   resp.domain_unit_id #=> String
    #   resp.environment_id #=> String
    #   resp.name #=> String
    #   resp.physical_endpoints #=> Array
    #   resp.physical_endpoints[0].aws_location.access_role #=> String
    #   resp.physical_endpoints[0].aws_location.aws_account_id #=> String
    #   resp.physical_endpoints[0].aws_location.aws_region #=> String
    #   resp.physical_endpoints[0].aws_location.iam_connection_id #=> String
    #   resp.physical_endpoints[0].glue_connection_name #=> String
    #   resp.physical_endpoints[0].glue_connection_names #=> Array
    #   resp.physical_endpoints[0].glue_connection_names[0] #=> String
    #   resp.physical_endpoints[0].glue_connection.name #=> String
    #   resp.physical_endpoints[0].glue_connection.description #=> String
    #   resp.physical_endpoints[0].glue_connection.connection_type #=> String, one of "ATHENA", "BIGQUERY", "DATABRICKS", "DOCUMENTDB", "DYNAMODB", "HYPERPOD", "IAM", "MYSQL", "OPENSEARCH", "ORACLE", "POSTGRESQL", "REDSHIFT", "S3", "SAPHANA", "SNOWFLAKE", "SPARK", "SQLSERVER", "TERADATA", "VERTICA", "WORKFLOWS_MWAA", "AMAZON_Q", "MLFLOW"
    #   resp.physical_endpoints[0].glue_connection.match_criteria #=> Array
    #   resp.physical_endpoints[0].glue_connection.match_criteria[0] #=> String
    #   resp.physical_endpoints[0].glue_connection.connection_properties #=> Hash
    #   resp.physical_endpoints[0].glue_connection.connection_properties["String"] #=> String
    #   resp.physical_endpoints[0].glue_connection.spark_properties #=> Hash
    #   resp.physical_endpoints[0].glue_connection.spark_properties["PropertyMapKeyString"] #=> String
    #   resp.physical_endpoints[0].glue_connection.athena_properties #=> Hash
    #   resp.physical_endpoints[0].glue_connection.athena_properties["PropertyMapKeyString"] #=> String
    #   resp.physical_endpoints[0].glue_connection.python_properties #=> Hash
    #   resp.physical_endpoints[0].glue_connection.python_properties["PropertyMapKeyString"] #=> String
    #   resp.physical_endpoints[0].glue_connection.physical_connection_requirements.subnet_id #=> String
    #   resp.physical_endpoints[0].glue_connection.physical_connection_requirements.subnet_id_list #=> Array
    #   resp.physical_endpoints[0].glue_connection.physical_connection_requirements.subnet_id_list[0] #=> String
    #   resp.physical_endpoints[0].glue_connection.physical_connection_requirements.security_group_id_list #=> Array
    #   resp.physical_endpoints[0].glue_connection.physical_connection_requirements.security_group_id_list[0] #=> String
    #   resp.physical_endpoints[0].glue_connection.physical_connection_requirements.availability_zone #=> String
    #   resp.physical_endpoints[0].glue_connection.creation_time #=> Time
    #   resp.physical_endpoints[0].glue_connection.last_updated_time #=> Time
    #   resp.physical_endpoints[0].glue_connection.last_updated_by #=> String
    #   resp.physical_endpoints[0].glue_connection.status #=> String, one of "CREATING", "CREATE_FAILED", "DELETING", "DELETE_FAILED", "READY", "UPDATING", "UPDATE_FAILED", "DELETED"
    #   resp.physical_endpoints[0].glue_connection.status_reason #=> String
    #   resp.physical_endpoints[0].glue_connection.last_connection_validation_time #=> Time
    #   resp.physical_endpoints[0].glue_connection.authentication_configuration.authentication_type #=> String, one of "BASIC", "OAUTH2", "CUSTOM"
    #   resp.physical_endpoints[0].glue_connection.authentication_configuration.secret_arn #=> String
    #   resp.physical_endpoints[0].glue_connection.authentication_configuration.o_auth_2_properties.o_auth_2_grant_type #=> String, one of "AUTHORIZATION_CODE", "CLIENT_CREDENTIALS", "JWT_BEARER"
    #   resp.physical_endpoints[0].glue_connection.authentication_configuration.o_auth_2_properties.o_auth_2_client_application.user_managed_client_application_client_id #=> String
    #   resp.physical_endpoints[0].glue_connection.authentication_configuration.o_auth_2_properties.o_auth_2_client_application.a_ws_managed_client_application_reference #=> String
    #   resp.physical_endpoints[0].glue_connection.authentication_configuration.o_auth_2_properties.token_url #=> String
    #   resp.physical_endpoints[0].glue_connection.authentication_configuration.o_auth_2_properties.token_url_parameters_map #=> Hash
    #   resp.physical_endpoints[0].glue_connection.authentication_configuration.o_auth_2_properties.token_url_parameters_map["TokenUrlParametersMapKeyString"] #=> String
    #   resp.physical_endpoints[0].glue_connection.authentication_configuration.o_auth_2_properties.authorization_code_properties.authorization_code #=> String
    #   resp.physical_endpoints[0].glue_connection.authentication_configuration.o_auth_2_properties.authorization_code_properties.redirect_uri #=> String
    #   resp.physical_endpoints[0].glue_connection.authentication_configuration.o_auth_2_properties.o_auth_2_credentials.user_managed_client_application_client_secret #=> String
    #   resp.physical_endpoints[0].glue_connection.authentication_configuration.o_auth_2_properties.o_auth_2_credentials.access_token #=> String
    #   resp.physical_endpoints[0].glue_connection.authentication_configuration.o_auth_2_properties.o_auth_2_credentials.refresh_token #=> String
    #   resp.physical_endpoints[0].glue_connection.authentication_configuration.o_auth_2_properties.o_auth_2_credentials.jwt_token #=> String
    #   resp.physical_endpoints[0].glue_connection.connection_schema_version #=> Integer
    #   resp.physical_endpoints[0].glue_connection.compatible_compute_environments #=> Array
    #   resp.physical_endpoints[0].glue_connection.compatible_compute_environments[0] #=> String, one of "SPARK", "ATHENA", "PYTHON"
    #   resp.physical_endpoints[0].enable_trusted_identity_propagation #=> Boolean
    #   resp.physical_endpoints[0].host #=> String
    #   resp.physical_endpoints[0].port #=> Integer
    #   resp.physical_endpoints[0].protocol #=> String, one of "ATHENA", "GLUE_INTERACTIVE_SESSION", "HTTPS", "JDBC", "LIVY", "ODBC", "PRISM"
    #   resp.physical_endpoints[0].stage #=> String
    #   resp.project_id #=> String
    #   resp.props.athena_properties.workgroup_name #=> String
    #   resp.props.glue_properties.status #=> String, one of "CREATING", "CREATE_FAILED", "DELETING", "DELETE_FAILED", "READY", "UPDATING", "UPDATE_FAILED", "DELETED"
    #   resp.props.glue_properties.error_message #=> String
    #   resp.props.hyper_pod_properties.cluster_name #=> String
    #   resp.props.hyper_pod_properties.cluster_arn #=> String
    #   resp.props.hyper_pod_properties.orchestrator #=> String, one of "EKS", "SLURM"
    #   resp.props.iam_properties.environment_id #=> String
    #   resp.props.iam_properties.glue_lineage_sync_enabled #=> Boolean
    #   resp.props.redshift_properties.storage.cluster_name #=> String
    #   resp.props.redshift_properties.storage.workgroup_name #=> String
    #   resp.props.redshift_properties.credentials.secret_arn #=> String
    #   resp.props.redshift_properties.credentials.username_password.password #=> String
    #   resp.props.redshift_properties.credentials.username_password.username #=> String
    #   resp.props.redshift_properties.is_provisioned_secret #=> Boolean
    #   resp.props.redshift_properties.jdbc_iam_url #=> String
    #   resp.props.redshift_properties.jdbc_url #=> String
    #   resp.props.redshift_properties.redshift_temp_dir #=> String
    #   resp.props.redshift_properties.lineage_sync.lineage_job_id #=> String
    #   resp.props.redshift_properties.lineage_sync.enabled #=> Boolean
    #   resp.props.redshift_properties.lineage_sync.schedule.schedule #=> String
    #   resp.props.redshift_properties.status #=> String, one of "CREATING", "CREATE_FAILED", "DELETING", "DELETE_FAILED", "READY", "UPDATING", "UPDATE_FAILED", "DELETED"
    #   resp.props.redshift_properties.database_name #=> String
    #   resp.props.spark_emr_properties.compute_arn #=> String
    #   resp.props.spark_emr_properties.credentials.password #=> String
    #   resp.props.spark_emr_properties.credentials.username #=> String
    #   resp.props.spark_emr_properties.credentials_expiration #=> Time
    #   resp.props.spark_emr_properties.governance_type #=> String, one of "AWS_MANAGED", "USER_MANAGED"
    #   resp.props.spark_emr_properties.instance_profile_arn #=> String
    #   resp.props.spark_emr_properties.java_virtual_env #=> String
    #   resp.props.spark_emr_properties.livy_endpoint #=> String
    #   resp.props.spark_emr_properties.log_uri #=> String
    #   resp.props.spark_emr_properties.python_virtual_env #=> String
    #   resp.props.spark_emr_properties.runtime_role #=> String
    #   resp.props.spark_emr_properties.trusted_certificates_s3_uri #=> String
    #   resp.props.spark_emr_properties.certificate_data #=> String
    #   resp.props.spark_emr_properties.managed_endpoint_arn #=> String
    #   resp.props.spark_emr_properties.managed_endpoint_credentials.id #=> String
    #   resp.props.spark_emr_properties.managed_endpoint_credentials.token #=> String
    #   resp.props.spark_glue_properties.additional_args.connection #=> String
    #   resp.props.spark_glue_properties.glue_connection_name #=> String
    #   resp.props.spark_glue_properties.glue_connection_names #=> Array
    #   resp.props.spark_glue_properties.glue_connection_names[0] #=> String
    #   resp.props.spark_glue_properties.glue_version #=> String
    #   resp.props.spark_glue_properties.idle_timeout #=> Integer
    #   resp.props.spark_glue_properties.java_virtual_env #=> String
    #   resp.props.spark_glue_properties.number_of_workers #=> Integer
    #   resp.props.spark_glue_properties.python_virtual_env #=> String
    #   resp.props.spark_glue_properties.worker_type #=> String
    #   resp.props.s3_properties.s3_uri #=> String
    #   resp.props.s3_properties.s3_access_grant_location_id #=> String
    #   resp.props.s3_properties.register_s3_access_grant_location #=> Boolean
    #   resp.props.s3_properties.status #=> String, one of "CREATING", "CREATE_FAILED", "DELETING", "DELETE_FAILED", "READY", "UPDATING", "UPDATE_FAILED", "DELETED"
    #   resp.props.s3_properties.error_message #=> String
    #   resp.props.amazon_q_properties.is_enabled #=> Boolean
    #   resp.props.amazon_q_properties.profile_arn #=> String
    #   resp.props.amazon_q_properties.auth_mode #=> String
    #   resp.props.mlflow_properties.tracking_server_arn #=> String
    #   resp.props.workflows_mwaa_properties.mwaa_environment_name #=> String
    #   resp.props.lakehouse_properties.glue_lineage_sync_enabled #=> Boolean
    #   resp.type #=> String, one of "ATHENA", "BIGQUERY", "DATABRICKS", "DOCUMENTDB", "DYNAMODB", "HYPERPOD", "IAM", "MYSQL", "OPENSEARCH", "ORACLE", "POSTGRESQL", "REDSHIFT", "S3", "SAPHANA", "SNOWFLAKE", "SPARK", "SQLSERVER", "TERADATA", "VERTICA", "WORKFLOWS_MWAA", "AMAZON_Q", "MLFLOW"
    #   resp.scope #=> String, one of "DOMAIN", "PROJECT"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/UpdateConnection AWS API Documentation
    #
    # @overload update_connection(params = {})
    # @param [Hash] params ({})
    def update_connection(params = {}, options = {})
      req = build_request(:update_connection, params)
      req.send_request(options)
    end

    # Updates the specified data source in Amazon DataZone.
    #
    # @option params [required, String] :domain_identifier
    #   The identifier of the domain in which to update a data source.
    #
    # @option params [required, String] :identifier
    #   The identifier of the data source to be updated.
    #
    # @option params [String] :name
    #   The name to be updated as part of the `UpdateDataSource` action.
    #
    # @option params [String] :description
    #   The description to be updated as part of the `UpdateDataSource`
    #   action.
    #
    # @option params [String] :enable_setting
    #   The enable setting to be updated as part of the `UpdateDataSource`
    #   action.
    #
    # @option params [Boolean] :publish_on_import
    #   The publish on import setting to be updated as part of the
    #   `UpdateDataSource` action.
    #
    # @option params [Array<Types::FormInput>] :asset_forms_input
    #   The asset forms to be updated as part of the `UpdateDataSource`
    #   action.
    #
    # @option params [Types::ScheduleConfiguration] :schedule
    #   The schedule to be updated as part of the `UpdateDataSource` action.
    #
    # @option params [Types::DataSourceConfigurationInput] :configuration
    #   The configuration to be updated as part of the `UpdateDataSource`
    #   action.
    #
    # @option params [Types::RecommendationConfiguration] :recommendation
    #   The recommendation to be updated as part of the `UpdateDataSource`
    #   action.
    #
    # @option params [Boolean] :retain_permissions_on_revoke_failure
    #   Specifies that the granted permissions are retained in case of a
    #   self-subscribe functionality failure for a data source.
    #
    # @return [Types::UpdateDataSourceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateDataSourceOutput#id #id} => String
    #   * {Types::UpdateDataSourceOutput#status #status} => String
    #   * {Types::UpdateDataSourceOutput#type #type} => String
    #   * {Types::UpdateDataSourceOutput#name #name} => String
    #   * {Types::UpdateDataSourceOutput#description #description} => String
    #   * {Types::UpdateDataSourceOutput#domain_id #domain_id} => String
    #   * {Types::UpdateDataSourceOutput#project_id #project_id} => String
    #   * {Types::UpdateDataSourceOutput#environment_id #environment_id} => String
    #   * {Types::UpdateDataSourceOutput#connection_id #connection_id} => String
    #   * {Types::UpdateDataSourceOutput#configuration #configuration} => Types::DataSourceConfigurationOutput
    #   * {Types::UpdateDataSourceOutput#recommendation #recommendation} => Types::RecommendationConfiguration
    #   * {Types::UpdateDataSourceOutput#enable_setting #enable_setting} => String
    #   * {Types::UpdateDataSourceOutput#publish_on_import #publish_on_import} => Boolean
    #   * {Types::UpdateDataSourceOutput#asset_forms_output #asset_forms_output} => Array&lt;Types::FormOutput&gt;
    #   * {Types::UpdateDataSourceOutput#schedule #schedule} => Types::ScheduleConfiguration
    #   * {Types::UpdateDataSourceOutput#last_run_status #last_run_status} => String
    #   * {Types::UpdateDataSourceOutput#last_run_at #last_run_at} => Time
    #   * {Types::UpdateDataSourceOutput#last_run_error_message #last_run_error_message} => Types::DataSourceErrorMessage
    #   * {Types::UpdateDataSourceOutput#error_message #error_message} => Types::DataSourceErrorMessage
    #   * {Types::UpdateDataSourceOutput#created_at #created_at} => Time
    #   * {Types::UpdateDataSourceOutput#updated_at #updated_at} => Time
    #   * {Types::UpdateDataSourceOutput#self_grant_status #self_grant_status} => Types::SelfGrantStatusOutput
    #   * {Types::UpdateDataSourceOutput#retain_permissions_on_revoke_failure #retain_permissions_on_revoke_failure} => Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_data_source({
    #     domain_identifier: "DomainId", # required
    #     identifier: "DataSourceId", # required
    #     name: "Name",
    #     description: "Description",
    #     enable_setting: "ENABLED", # accepts ENABLED, DISABLED
    #     publish_on_import: false,
    #     asset_forms_input: [
    #       {
    #         form_name: "FormName", # required
    #         type_identifier: "FormTypeIdentifier",
    #         type_revision: "RevisionInput",
    #         content: "FormInputContentString",
    #       },
    #     ],
    #     schedule: {
    #       timezone: "UTC", # accepts UTC, AFRICA_JOHANNESBURG, AMERICA_MONTREAL, AMERICA_SAO_PAULO, ASIA_BAHRAIN, ASIA_BANGKOK, ASIA_CALCUTTA, ASIA_DUBAI, ASIA_HONG_KONG, ASIA_JAKARTA, ASIA_KUALA_LUMPUR, ASIA_SEOUL, ASIA_SHANGHAI, ASIA_SINGAPORE, ASIA_TAIPEI, ASIA_TOKYO, AUSTRALIA_MELBOURNE, AUSTRALIA_SYDNEY, CANADA_CENTRAL, CET, CST6CDT, ETC_GMT, ETC_GMT0, ETC_GMT_ADD_0, ETC_GMT_ADD_1, ETC_GMT_ADD_10, ETC_GMT_ADD_11, ETC_GMT_ADD_12, ETC_GMT_ADD_2, ETC_GMT_ADD_3, ETC_GMT_ADD_4, ETC_GMT_ADD_5, ETC_GMT_ADD_6, ETC_GMT_ADD_7, ETC_GMT_ADD_8, ETC_GMT_ADD_9, ETC_GMT_NEG_0, ETC_GMT_NEG_1, ETC_GMT_NEG_10, ETC_GMT_NEG_11, ETC_GMT_NEG_12, ETC_GMT_NEG_13, ETC_GMT_NEG_14, ETC_GMT_NEG_2, ETC_GMT_NEG_3, ETC_GMT_NEG_4, ETC_GMT_NEG_5, ETC_GMT_NEG_6, ETC_GMT_NEG_7, ETC_GMT_NEG_8, ETC_GMT_NEG_9, EUROPE_DUBLIN, EUROPE_LONDON, EUROPE_PARIS, EUROPE_STOCKHOLM, EUROPE_ZURICH, ISRAEL, MEXICO_GENERAL, MST7MDT, PACIFIC_AUCKLAND, US_CENTRAL, US_EASTERN, US_MOUNTAIN, US_PACIFIC
    #       schedule: "CronString",
    #     },
    #     configuration: {
    #       glue_run_configuration: {
    #         data_access_role: "GlueRunConfigurationInputDataAccessRoleString",
    #         relational_filter_configurations: [ # required
    #           {
    #             database_name: "RelationalFilterConfigurationDatabaseNameString", # required
    #             schema_name: "RelationalFilterConfigurationSchemaNameString",
    #             filter_expressions: [
    #               {
    #                 type: "INCLUDE", # required, accepts INCLUDE, EXCLUDE
    #                 expression: "FilterExpressionExpressionString", # required
    #               },
    #             ],
    #           },
    #         ],
    #         auto_import_data_quality_result: false,
    #         catalog_name: "GlueRunConfigurationInputCatalogNameString",
    #       },
    #       redshift_run_configuration: {
    #         data_access_role: "RedshiftRunConfigurationInputDataAccessRoleString",
    #         relational_filter_configurations: [ # required
    #           {
    #             database_name: "RelationalFilterConfigurationDatabaseNameString", # required
    #             schema_name: "RelationalFilterConfigurationSchemaNameString",
    #             filter_expressions: [
    #               {
    #                 type: "INCLUDE", # required, accepts INCLUDE, EXCLUDE
    #                 expression: "FilterExpressionExpressionString", # required
    #               },
    #             ],
    #           },
    #         ],
    #         redshift_credential_configuration: {
    #           secret_manager_arn: "RedshiftCredentialConfigurationSecretManagerArnString", # required
    #         },
    #         redshift_storage: {
    #           redshift_cluster_source: {
    #             cluster_name: "RedshiftClusterStorageClusterNameString", # required
    #           },
    #           redshift_serverless_source: {
    #             workgroup_name: "RedshiftServerlessStorageWorkgroupNameString", # required
    #           },
    #         },
    #       },
    #       sage_maker_run_configuration: {
    #         tracking_assets: { # required
    #           "SageMakerAssetType" => ["SageMakerResourceArn"],
    #         },
    #       },
    #     },
    #     recommendation: {
    #       enable_business_name_generation: false,
    #     },
    #     retain_permissions_on_revoke_failure: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.status #=> String, one of "CREATING", "FAILED_CREATION", "READY", "UPDATING", "FAILED_UPDATE", "RUNNING", "DELETING", "FAILED_DELETION"
    #   resp.type #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.domain_id #=> String
    #   resp.project_id #=> String
    #   resp.environment_id #=> String
    #   resp.connection_id #=> String
    #   resp.configuration.glue_run_configuration.account_id #=> String
    #   resp.configuration.glue_run_configuration.region #=> String
    #   resp.configuration.glue_run_configuration.data_access_role #=> String
    #   resp.configuration.glue_run_configuration.relational_filter_configurations #=> Array
    #   resp.configuration.glue_run_configuration.relational_filter_configurations[0].database_name #=> String
    #   resp.configuration.glue_run_configuration.relational_filter_configurations[0].schema_name #=> String
    #   resp.configuration.glue_run_configuration.relational_filter_configurations[0].filter_expressions #=> Array
    #   resp.configuration.glue_run_configuration.relational_filter_configurations[0].filter_expressions[0].type #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.configuration.glue_run_configuration.relational_filter_configurations[0].filter_expressions[0].expression #=> String
    #   resp.configuration.glue_run_configuration.auto_import_data_quality_result #=> Boolean
    #   resp.configuration.glue_run_configuration.catalog_name #=> String
    #   resp.configuration.redshift_run_configuration.account_id #=> String
    #   resp.configuration.redshift_run_configuration.region #=> String
    #   resp.configuration.redshift_run_configuration.data_access_role #=> String
    #   resp.configuration.redshift_run_configuration.relational_filter_configurations #=> Array
    #   resp.configuration.redshift_run_configuration.relational_filter_configurations[0].database_name #=> String
    #   resp.configuration.redshift_run_configuration.relational_filter_configurations[0].schema_name #=> String
    #   resp.configuration.redshift_run_configuration.relational_filter_configurations[0].filter_expressions #=> Array
    #   resp.configuration.redshift_run_configuration.relational_filter_configurations[0].filter_expressions[0].type #=> String, one of "INCLUDE", "EXCLUDE"
    #   resp.configuration.redshift_run_configuration.relational_filter_configurations[0].filter_expressions[0].expression #=> String
    #   resp.configuration.redshift_run_configuration.redshift_credential_configuration.secret_manager_arn #=> String
    #   resp.configuration.redshift_run_configuration.redshift_storage.redshift_cluster_source.cluster_name #=> String
    #   resp.configuration.redshift_run_configuration.redshift_storage.redshift_serverless_source.workgroup_name #=> String
    #   resp.configuration.sage_maker_run_configuration.account_id #=> String
    #   resp.configuration.sage_maker_run_configuration.region #=> String
    #   resp.configuration.sage_maker_run_configuration.tracking_assets #=> Hash
    #   resp.configuration.sage_maker_run_configuration.tracking_assets["SageMakerAssetType"] #=> Array
    #   resp.configuration.sage_maker_run_configuration.tracking_assets["SageMakerAssetType"][0] #=> String
    #   resp.recommendation.enable_business_name_generation #=> Boolean
    #   resp.enable_setting #=> String, one of "ENABLED", "DISABLED"
    #   resp.publish_on_import #=> Boolean
    #   resp.asset_forms_output #=> Array
    #   resp.asset_forms_output[0].form_name #=> String
    #   resp.asset_forms_output[0].type_name #=> String
    #   resp.asset_forms_output[0].type_revision #=> String
    #   resp.asset_forms_output[0].content #=> String
    #   resp.schedule.timezone #=> String, one of "UTC", "AFRICA_JOHANNESBURG", "AMERICA_MONTREAL", "AMERICA_SAO_PAULO", "ASIA_BAHRAIN", "ASIA_BANGKOK", "ASIA_CALCUTTA", "ASIA_DUBAI", "ASIA_HONG_KONG", "ASIA_JAKARTA", "ASIA_KUALA_LUMPUR", "ASIA_SEOUL", "ASIA_SHANGHAI", "ASIA_SINGAPORE", "ASIA_TAIPEI", "ASIA_TOKYO", "AUSTRALIA_MELBOURNE", "AUSTRALIA_SYDNEY", "CANADA_CENTRAL", "CET", "CST6CDT", "ETC_GMT", "ETC_GMT0", "ETC_GMT_ADD_0", "ETC_GMT_ADD_1", "ETC_GMT_ADD_10", "ETC_GMT_ADD_11", "ETC_GMT_ADD_12", "ETC_GMT_ADD_2", "ETC_GMT_ADD_3", "ETC_GMT_ADD_4", "ETC_GMT_ADD_5", "ETC_GMT_ADD_6", "ETC_GMT_ADD_7", "ETC_GMT_ADD_8", "ETC_GMT_ADD_9", "ETC_GMT_NEG_0", "ETC_GMT_NEG_1", "ETC_GMT_NEG_10", "ETC_GMT_NEG_11", "ETC_GMT_NEG_12", "ETC_GMT_NEG_13", "ETC_GMT_NEG_14", "ETC_GMT_NEG_2", "ETC_GMT_NEG_3", "ETC_GMT_NEG_4", "ETC_GMT_NEG_5", "ETC_GMT_NEG_6", "ETC_GMT_NEG_7", "ETC_GMT_NEG_8", "ETC_GMT_NEG_9", "EUROPE_DUBLIN", "EUROPE_LONDON", "EUROPE_PARIS", "EUROPE_STOCKHOLM", "EUROPE_ZURICH", "ISRAEL", "MEXICO_GENERAL", "MST7MDT", "PACIFIC_AUCKLAND", "US_CENTRAL", "US_EASTERN", "US_MOUNTAIN", "US_PACIFIC"
    #   resp.schedule.schedule #=> String
    #   resp.last_run_status #=> String, one of "REQUESTED", "RUNNING", "FAILED", "PARTIALLY_SUCCEEDED", "SUCCESS"
    #   resp.last_run_at #=> Time
    #   resp.last_run_error_message.error_type #=> String, one of "ACCESS_DENIED_EXCEPTION", "CONFLICT_EXCEPTION", "INTERNAL_SERVER_EXCEPTION", "RESOURCE_NOT_FOUND_EXCEPTION", "SERVICE_QUOTA_EXCEEDED_EXCEPTION", "THROTTLING_EXCEPTION", "VALIDATION_EXCEPTION"
    #   resp.last_run_error_message.error_detail #=> String
    #   resp.error_message.error_type #=> String, one of "ACCESS_DENIED_EXCEPTION", "CONFLICT_EXCEPTION", "INTERNAL_SERVER_EXCEPTION", "RESOURCE_NOT_FOUND_EXCEPTION", "SERVICE_QUOTA_EXCEEDED_EXCEPTION", "THROTTLING_EXCEPTION", "VALIDATION_EXCEPTION"
    #   resp.error_message.error_detail #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.self_grant_status.glue_self_grant_status.self_grant_status_details #=> Array
    #   resp.self_grant_status.glue_self_grant_status.self_grant_status_details[0].database_name #=> String
    #   resp.self_grant_status.glue_self_grant_status.self_grant_status_details[0].schema_name #=> String
    #   resp.self_grant_status.glue_self_grant_status.self_grant_status_details[0].status #=> String, one of "GRANT_PENDING", "REVOKE_PENDING", "GRANT_IN_PROGRESS", "REVOKE_IN_PROGRESS", "GRANTED", "GRANT_FAILED", "REVOKE_FAILED"
    #   resp.self_grant_status.glue_self_grant_status.self_grant_status_details[0].failure_cause #=> String
    #   resp.self_grant_status.redshift_self_grant_status.self_grant_status_details #=> Array
    #   resp.self_grant_status.redshift_self_grant_status.self_grant_status_details[0].database_name #=> String
    #   resp.self_grant_status.redshift_self_grant_status.self_grant_status_details[0].schema_name #=> String
    #   resp.self_grant_status.redshift_self_grant_status.self_grant_status_details[0].status #=> String, one of "GRANT_PENDING", "REVOKE_PENDING", "GRANT_IN_PROGRESS", "REVOKE_IN_PROGRESS", "GRANTED", "GRANT_FAILED", "REVOKE_FAILED"
    #   resp.self_grant_status.redshift_self_grant_status.self_grant_status_details[0].failure_cause #=> String
    #   resp.retain_permissions_on_revoke_failure #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/UpdateDataSource AWS API Documentation
    #
    # @overload update_data_source(params = {})
    # @param [Hash] params ({})
    def update_data_source(params = {}, options = {})
      req = build_request(:update_data_source, params)
      req.send_request(options)
    end

    # Updates a Amazon DataZone domain.
    #
    # @option params [required, String] :identifier
    #   The ID of the Amazon Web Services domain that is to be updated.
    #
    # @option params [String] :description
    #   The description to be updated as part of the `UpdateDomain` action.
    #
    # @option params [Types::SingleSignOn] :single_sign_on
    #   The single sign-on option to be updated as part of the `UpdateDomain`
    #   action.
    #
    # @option params [String] :domain_execution_role
    #   The domain execution role to be updated as part of the `UpdateDomain`
    #   action.
    #
    # @option params [String] :service_role
    #   The service role of the domain.
    #
    # @option params [String] :name
    #   The name to be updated as part of the `UpdateDomain` action.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that is provided to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::UpdateDomainOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateDomainOutput#id #id} => String
    #   * {Types::UpdateDomainOutput#root_domain_unit_id #root_domain_unit_id} => String
    #   * {Types::UpdateDomainOutput#description #description} => String
    #   * {Types::UpdateDomainOutput#single_sign_on #single_sign_on} => Types::SingleSignOn
    #   * {Types::UpdateDomainOutput#domain_execution_role #domain_execution_role} => String
    #   * {Types::UpdateDomainOutput#service_role #service_role} => String
    #   * {Types::UpdateDomainOutput#name #name} => String
    #   * {Types::UpdateDomainOutput#last_updated_at #last_updated_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_domain({
    #     identifier: "DomainId", # required
    #     description: "String",
    #     single_sign_on: {
    #       type: "IAM_IDC", # accepts IAM_IDC, DISABLED
    #       user_assignment: "AUTOMATIC", # accepts AUTOMATIC, MANUAL
    #       idc_instance_arn: "SingleSignOnIdcInstanceArnString",
    #     },
    #     domain_execution_role: "RoleArn",
    #     service_role: "RoleArn",
    #     name: "String",
    #     client_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.root_domain_unit_id #=> String
    #   resp.description #=> String
    #   resp.single_sign_on.type #=> String, one of "IAM_IDC", "DISABLED"
    #   resp.single_sign_on.user_assignment #=> String, one of "AUTOMATIC", "MANUAL"
    #   resp.single_sign_on.idc_instance_arn #=> String
    #   resp.domain_execution_role #=> String
    #   resp.service_role #=> String
    #   resp.name #=> String
    #   resp.last_updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/UpdateDomain AWS API Documentation
    #
    # @overload update_domain(params = {})
    # @param [Hash] params ({})
    def update_domain(params = {}, options = {})
      req = build_request(:update_domain, params)
      req.send_request(options)
    end

    # Updates the domain unit.
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the domain where you want to update a domain unit.
    #
    # @option params [required, String] :identifier
    #   The ID of the domain unit that you want to update.
    #
    # @option params [String] :description
    #   The description of the domain unit that you want to update.
    #
    # @option params [String] :name
    #   The name of the domain unit that you want to update.
    #
    # @return [Types::UpdateDomainUnitOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateDomainUnitOutput#id #id} => String
    #   * {Types::UpdateDomainUnitOutput#domain_id #domain_id} => String
    #   * {Types::UpdateDomainUnitOutput#name #name} => String
    #   * {Types::UpdateDomainUnitOutput#owners #owners} => Array&lt;Types::DomainUnitOwnerProperties&gt;
    #   * {Types::UpdateDomainUnitOutput#description #description} => String
    #   * {Types::UpdateDomainUnitOutput#parent_domain_unit_id #parent_domain_unit_id} => String
    #   * {Types::UpdateDomainUnitOutput#created_at #created_at} => Time
    #   * {Types::UpdateDomainUnitOutput#last_updated_at #last_updated_at} => Time
    #   * {Types::UpdateDomainUnitOutput#created_by #created_by} => String
    #   * {Types::UpdateDomainUnitOutput#last_updated_by #last_updated_by} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_domain_unit({
    #     domain_identifier: "DomainId", # required
    #     identifier: "DomainUnitId", # required
    #     description: "DomainUnitDescription",
    #     name: "DomainUnitName",
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.domain_id #=> String
    #   resp.name #=> String
    #   resp.owners #=> Array
    #   resp.owners[0].user.user_id #=> String
    #   resp.owners[0].group.group_id #=> String
    #   resp.description #=> String
    #   resp.parent_domain_unit_id #=> String
    #   resp.created_at #=> Time
    #   resp.last_updated_at #=> Time
    #   resp.created_by #=> String
    #   resp.last_updated_by #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/UpdateDomainUnit AWS API Documentation
    #
    # @overload update_domain_unit(params = {})
    # @param [Hash] params ({})
    def update_domain_unit(params = {}, options = {})
      req = build_request(:update_domain_unit, params)
      req.send_request(options)
    end

    # Updates the specified environment in Amazon DataZone.
    #
    # @option params [required, String] :domain_identifier
    #   The identifier of the domain in which the environment is to be
    #   updated.
    #
    # @option params [required, String] :identifier
    #   The identifier of the environment that is to be updated.
    #
    # @option params [String] :name
    #   The name to be updated as part of the `UpdateEnvironment` action.
    #
    # @option params [String] :description
    #   The description to be updated as part of the `UpdateEnvironment`
    #   action.
    #
    # @option params [Array<String>] :glossary_terms
    #   The glossary terms to be updated as part of the `UpdateEnvironment`
    #   action.
    #
    # @option params [String] :blueprint_version
    #   The blueprint version to which the environment should be updated. You
    #   can only specify the following string for this parameter: `latest`.
    #
    # @option params [Array<Types::EnvironmentParameter>] :user_parameters
    #   The user parameters of the environment.
    #
    # @option params [String] :environment_configuration_name
    #   The configuration name of the environment.
    #
    # @return [Types::UpdateEnvironmentOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateEnvironmentOutput#project_id #project_id} => String
    #   * {Types::UpdateEnvironmentOutput#id #id} => String
    #   * {Types::UpdateEnvironmentOutput#domain_id #domain_id} => String
    #   * {Types::UpdateEnvironmentOutput#created_by #created_by} => String
    #   * {Types::UpdateEnvironmentOutput#created_at #created_at} => Time
    #   * {Types::UpdateEnvironmentOutput#updated_at #updated_at} => Time
    #   * {Types::UpdateEnvironmentOutput#name #name} => String
    #   * {Types::UpdateEnvironmentOutput#description #description} => String
    #   * {Types::UpdateEnvironmentOutput#environment_profile_id #environment_profile_id} => String
    #   * {Types::UpdateEnvironmentOutput#aws_account_id #aws_account_id} => String
    #   * {Types::UpdateEnvironmentOutput#aws_account_region #aws_account_region} => String
    #   * {Types::UpdateEnvironmentOutput#provider #provider} => String
    #   * {Types::UpdateEnvironmentOutput#provisioned_resources #provisioned_resources} => Array&lt;Types::Resource&gt;
    #   * {Types::UpdateEnvironmentOutput#status #status} => String
    #   * {Types::UpdateEnvironmentOutput#environment_actions #environment_actions} => Array&lt;Types::ConfigurableEnvironmentAction&gt;
    #   * {Types::UpdateEnvironmentOutput#glossary_terms #glossary_terms} => Array&lt;String&gt;
    #   * {Types::UpdateEnvironmentOutput#user_parameters #user_parameters} => Array&lt;Types::CustomParameter&gt;
    #   * {Types::UpdateEnvironmentOutput#last_deployment #last_deployment} => Types::Deployment
    #   * {Types::UpdateEnvironmentOutput#provisioning_properties #provisioning_properties} => Types::ProvisioningProperties
    #   * {Types::UpdateEnvironmentOutput#deployment_properties #deployment_properties} => Types::DeploymentProperties
    #   * {Types::UpdateEnvironmentOutput#environment_blueprint_id #environment_blueprint_id} => String
    #   * {Types::UpdateEnvironmentOutput#environment_configuration_id #environment_configuration_id} => String
    #   * {Types::UpdateEnvironmentOutput#environment_configuration_name #environment_configuration_name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_environment({
    #     domain_identifier: "DomainId", # required
    #     identifier: "EnvironmentId", # required
    #     name: "String",
    #     description: "String",
    #     glossary_terms: ["GlossaryTermId"],
    #     blueprint_version: "String",
    #     user_parameters: [
    #       {
    #         name: "String",
    #         value: "String",
    #       },
    #     ],
    #     environment_configuration_name: "EnvironmentConfigurationName",
    #   })
    #
    # @example Response structure
    #
    #   resp.project_id #=> String
    #   resp.id #=> String
    #   resp.domain_id #=> String
    #   resp.created_by #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.environment_profile_id #=> String
    #   resp.aws_account_id #=> String
    #   resp.aws_account_region #=> String
    #   resp.provider #=> String
    #   resp.provisioned_resources #=> Array
    #   resp.provisioned_resources[0].provider #=> String
    #   resp.provisioned_resources[0].name #=> String
    #   resp.provisioned_resources[0].value #=> String
    #   resp.provisioned_resources[0].type #=> String
    #   resp.status #=> String, one of "ACTIVE", "CREATING", "UPDATING", "DELETING", "CREATE_FAILED", "UPDATE_FAILED", "DELETE_FAILED", "VALIDATION_FAILED", "SUSPENDED", "DISABLED", "EXPIRED", "DELETED", "INACCESSIBLE"
    #   resp.environment_actions #=> Array
    #   resp.environment_actions[0].type #=> String
    #   resp.environment_actions[0].auth #=> String, one of "IAM", "HTTPS"
    #   resp.environment_actions[0].parameters #=> Array
    #   resp.environment_actions[0].parameters[0].key #=> String
    #   resp.environment_actions[0].parameters[0].value #=> String
    #   resp.glossary_terms #=> Array
    #   resp.glossary_terms[0] #=> String
    #   resp.user_parameters #=> Array
    #   resp.user_parameters[0].key_name #=> String
    #   resp.user_parameters[0].description #=> String
    #   resp.user_parameters[0].field_type #=> String
    #   resp.user_parameters[0].default_value #=> String
    #   resp.user_parameters[0].is_editable #=> Boolean
    #   resp.user_parameters[0].is_optional #=> Boolean
    #   resp.user_parameters[0].is_update_supported #=> Boolean
    #   resp.last_deployment.deployment_id #=> String
    #   resp.last_deployment.deployment_type #=> String, one of "CREATE", "UPDATE", "DELETE"
    #   resp.last_deployment.deployment_status #=> String, one of "IN_PROGRESS", "SUCCESSFUL", "FAILED", "PENDING_DEPLOYMENT"
    #   resp.last_deployment.failure_reason.code #=> String
    #   resp.last_deployment.failure_reason.message #=> String
    #   resp.last_deployment.messages #=> Array
    #   resp.last_deployment.messages[0] #=> String
    #   resp.last_deployment.is_deployment_complete #=> Boolean
    #   resp.provisioning_properties.cloud_formation.template_url #=> String
    #   resp.deployment_properties.start_timeout_minutes #=> Integer
    #   resp.deployment_properties.end_timeout_minutes #=> Integer
    #   resp.environment_blueprint_id #=> String
    #   resp.environment_configuration_id #=> String
    #   resp.environment_configuration_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/UpdateEnvironment AWS API Documentation
    #
    # @overload update_environment(params = {})
    # @param [Hash] params ({})
    def update_environment(params = {}, options = {})
      req = build_request(:update_environment, params)
      req.send_request(options)
    end

    # Updates an environment action.
    #
    # @option params [required, String] :domain_identifier
    #   The domain ID of the environment action.
    #
    # @option params [required, String] :environment_identifier
    #   The environment ID of the environment action.
    #
    # @option params [required, String] :identifier
    #   The ID of the environment action.
    #
    # @option params [Types::ActionParameters] :parameters
    #   The parameters of the environment action.
    #
    # @option params [String] :name
    #   The name of the environment action.
    #
    # @option params [String] :description
    #   The description of the environment action.
    #
    # @return [Types::UpdateEnvironmentActionOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateEnvironmentActionOutput#domain_id #domain_id} => String
    #   * {Types::UpdateEnvironmentActionOutput#environment_id #environment_id} => String
    #   * {Types::UpdateEnvironmentActionOutput#id #id} => String
    #   * {Types::UpdateEnvironmentActionOutput#name #name} => String
    #   * {Types::UpdateEnvironmentActionOutput#parameters #parameters} => Types::ActionParameters
    #   * {Types::UpdateEnvironmentActionOutput#description #description} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_environment_action({
    #     domain_identifier: "DomainId", # required
    #     environment_identifier: "EnvironmentId", # required
    #     identifier: "String", # required
    #     parameters: {
    #       aws_console_link: {
    #         uri: "String",
    #       },
    #     },
    #     name: "String",
    #     description: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.domain_id #=> String
    #   resp.environment_id #=> String
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.parameters.aws_console_link.uri #=> String
    #   resp.description #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/UpdateEnvironmentAction AWS API Documentation
    #
    # @overload update_environment_action(params = {})
    # @param [Hash] params ({})
    def update_environment_action(params = {}, options = {})
      req = build_request(:update_environment_action, params)
      req.send_request(options)
    end

    # Updates an environment blueprint in Amazon DataZone.
    #
    # @option params [required, String] :domain_identifier
    #   The identifier of the Amazon DataZone domain in which an environment
    #   blueprint is to be updated.
    #
    # @option params [required, String] :identifier
    #   The identifier of the environment blueprint to be updated.
    #
    # @option params [String] :description
    #   The description to be updated as part of the
    #   `UpdateEnvironmentBlueprint` action.
    #
    # @option params [Types::ProvisioningProperties] :provisioning_properties
    #   The provisioning properties to be updated as part of the
    #   `UpdateEnvironmentBlueprint` action.
    #
    # @option params [Array<Types::CustomParameter>] :user_parameters
    #   The user parameters to be updated as part of the
    #   `UpdateEnvironmentBlueprint` action.
    #
    # @return [Types::UpdateEnvironmentBlueprintOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateEnvironmentBlueprintOutput#id #id} => String
    #   * {Types::UpdateEnvironmentBlueprintOutput#name #name} => String
    #   * {Types::UpdateEnvironmentBlueprintOutput#description #description} => String
    #   * {Types::UpdateEnvironmentBlueprintOutput#provider #provider} => String
    #   * {Types::UpdateEnvironmentBlueprintOutput#provisioning_properties #provisioning_properties} => Types::ProvisioningProperties
    #   * {Types::UpdateEnvironmentBlueprintOutput#deployment_properties #deployment_properties} => Types::DeploymentProperties
    #   * {Types::UpdateEnvironmentBlueprintOutput#user_parameters #user_parameters} => Array&lt;Types::CustomParameter&gt;
    #   * {Types::UpdateEnvironmentBlueprintOutput#glossary_terms #glossary_terms} => Array&lt;String&gt;
    #   * {Types::UpdateEnvironmentBlueprintOutput#created_at #created_at} => Time
    #   * {Types::UpdateEnvironmentBlueprintOutput#updated_at #updated_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_environment_blueprint({
    #     domain_identifier: "DomainId", # required
    #     identifier: "EnvironmentBlueprintId", # required
    #     description: "String",
    #     provisioning_properties: {
    #       cloud_formation: {
    #         template_url: "String", # required
    #       },
    #     },
    #     user_parameters: [
    #       {
    #         key_name: "CustomParameterKeyNameString", # required
    #         description: "Description",
    #         field_type: "String", # required
    #         default_value: "String",
    #         is_editable: false,
    #         is_optional: false,
    #         is_update_supported: false,
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.provider #=> String
    #   resp.provisioning_properties.cloud_formation.template_url #=> String
    #   resp.deployment_properties.start_timeout_minutes #=> Integer
    #   resp.deployment_properties.end_timeout_minutes #=> Integer
    #   resp.user_parameters #=> Array
    #   resp.user_parameters[0].key_name #=> String
    #   resp.user_parameters[0].description #=> String
    #   resp.user_parameters[0].field_type #=> String
    #   resp.user_parameters[0].default_value #=> String
    #   resp.user_parameters[0].is_editable #=> Boolean
    #   resp.user_parameters[0].is_optional #=> Boolean
    #   resp.user_parameters[0].is_update_supported #=> Boolean
    #   resp.glossary_terms #=> Array
    #   resp.glossary_terms[0] #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/UpdateEnvironmentBlueprint AWS API Documentation
    #
    # @overload update_environment_blueprint(params = {})
    # @param [Hash] params ({})
    def update_environment_blueprint(params = {}, options = {})
      req = build_request(:update_environment_blueprint, params)
      req.send_request(options)
    end

    # Updates the specified environment profile in Amazon DataZone.
    #
    # @option params [required, String] :domain_identifier
    #   The identifier of the Amazon DataZone domain in which an environment
    #   profile is to be updated.
    #
    # @option params [required, String] :identifier
    #   The identifier of the environment profile that is to be updated.
    #
    # @option params [String] :name
    #   The name to be updated as part of the `UpdateEnvironmentProfile`
    #   action.
    #
    # @option params [String] :description
    #   The description to be updated as part of the
    #   `UpdateEnvironmentProfile` action.
    #
    # @option params [Array<Types::EnvironmentParameter>] :user_parameters
    #   The user parameters to be updated as part of the
    #   `UpdateEnvironmentProfile` action.
    #
    # @option params [String] :aws_account_id
    #   The Amazon Web Services account in which a specified environment
    #   profile is to be udpated.
    #
    # @option params [String] :aws_account_region
    #   The Amazon Web Services Region in which a specified environment
    #   profile is to be updated.
    #
    # @return [Types::UpdateEnvironmentProfileOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateEnvironmentProfileOutput#id #id} => String
    #   * {Types::UpdateEnvironmentProfileOutput#domain_id #domain_id} => String
    #   * {Types::UpdateEnvironmentProfileOutput#aws_account_id #aws_account_id} => String
    #   * {Types::UpdateEnvironmentProfileOutput#aws_account_region #aws_account_region} => String
    #   * {Types::UpdateEnvironmentProfileOutput#created_by #created_by} => String
    #   * {Types::UpdateEnvironmentProfileOutput#created_at #created_at} => Time
    #   * {Types::UpdateEnvironmentProfileOutput#updated_at #updated_at} => Time
    #   * {Types::UpdateEnvironmentProfileOutput#name #name} => String
    #   * {Types::UpdateEnvironmentProfileOutput#description #description} => String
    #   * {Types::UpdateEnvironmentProfileOutput#environment_blueprint_id #environment_blueprint_id} => String
    #   * {Types::UpdateEnvironmentProfileOutput#project_id #project_id} => String
    #   * {Types::UpdateEnvironmentProfileOutput#user_parameters #user_parameters} => Array&lt;Types::CustomParameter&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_environment_profile({
    #     domain_identifier: "DomainId", # required
    #     identifier: "EnvironmentProfileId", # required
    #     name: "EnvironmentProfileName",
    #     description: "String",
    #     user_parameters: [
    #       {
    #         name: "String",
    #         value: "String",
    #       },
    #     ],
    #     aws_account_id: "AwsAccountId",
    #     aws_account_region: "AwsRegion",
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.domain_id #=> String
    #   resp.aws_account_id #=> String
    #   resp.aws_account_region #=> String
    #   resp.created_by #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.environment_blueprint_id #=> String
    #   resp.project_id #=> String
    #   resp.user_parameters #=> Array
    #   resp.user_parameters[0].key_name #=> String
    #   resp.user_parameters[0].description #=> String
    #   resp.user_parameters[0].field_type #=> String
    #   resp.user_parameters[0].default_value #=> String
    #   resp.user_parameters[0].is_editable #=> Boolean
    #   resp.user_parameters[0].is_optional #=> Boolean
    #   resp.user_parameters[0].is_update_supported #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/UpdateEnvironmentProfile AWS API Documentation
    #
    # @overload update_environment_profile(params = {})
    # @param [Hash] params ({})
    def update_environment_profile(params = {}, options = {})
      req = build_request(:update_environment_profile, params)
      req.send_request(options)
    end

    # Updates the business glossary in Amazon DataZone.
    #
    # Prerequisites:
    #
    # * The glossary must exist in the given domain.
    #
    # * The caller must have the `datazone:UpdateGlossary` permission to
    #   update it.
    #
    # * When updating the name, the new name must be unique within the
    #   domain.
    #
    # * The glossary must not be deleted or in a terminal state.
    #
    # @option params [required, String] :domain_identifier
    #   The identifier of the Amazon DataZone domain in which a business
    #   glossary is to be updated.
    #
    # @option params [required, String] :identifier
    #   The identifier of the business glossary to be updated.
    #
    # @option params [String] :name
    #   The name to be updated as part of the `UpdateGlossary` action.
    #
    # @option params [String] :description
    #   The description to be updated as part of the `UpdateGlossary` action.
    #
    # @option params [String] :status
    #   The status to be updated as part of the `UpdateGlossary` action.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that is provided to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::UpdateGlossaryOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateGlossaryOutput#domain_id #domain_id} => String
    #   * {Types::UpdateGlossaryOutput#id #id} => String
    #   * {Types::UpdateGlossaryOutput#name #name} => String
    #   * {Types::UpdateGlossaryOutput#owning_project_id #owning_project_id} => String
    #   * {Types::UpdateGlossaryOutput#description #description} => String
    #   * {Types::UpdateGlossaryOutput#status #status} => String
    #   * {Types::UpdateGlossaryOutput#usage_restrictions #usage_restrictions} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_glossary({
    #     domain_identifier: "DomainId", # required
    #     identifier: "GlossaryId", # required
    #     name: "GlossaryName",
    #     description: "GlossaryDescription",
    #     status: "DISABLED", # accepts DISABLED, ENABLED
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.domain_id #=> String
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.owning_project_id #=> String
    #   resp.description #=> String
    #   resp.status #=> String, one of "DISABLED", "ENABLED"
    #   resp.usage_restrictions #=> Array
    #   resp.usage_restrictions[0] #=> String, one of "ASSET_GOVERNED_TERMS"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/UpdateGlossary AWS API Documentation
    #
    # @overload update_glossary(params = {})
    # @param [Hash] params ({})
    def update_glossary(params = {}, options = {})
      req = build_request(:update_glossary, params)
      req.send_request(options)
    end

    # Updates a business glossary term in Amazon DataZone.
    #
    # Prerequisites:
    #
    # * Glossary term must exist in the specified domain.
    #
    # * New name must not conflict with existing terms in the same glossary.
    #
    # * User must have permissions on the term.
    #
    # * The term must not be in DELETED status.
    #
    # @option params [required, String] :domain_identifier
    #   The identifier of the Amazon DataZone domain in which a business
    #   glossary term is to be updated.
    #
    # @option params [String] :glossary_identifier
    #   The identifier of the business glossary in which a term is to be
    #   updated.
    #
    # @option params [required, String] :identifier
    #   The identifier of the business glossary term that is to be updated.
    #
    # @option params [String] :name
    #   The name to be updated as part of the `UpdateGlossaryTerm` action.
    #
    # @option params [String] :short_description
    #   The short description to be updated as part of the
    #   `UpdateGlossaryTerm` action.
    #
    # @option params [String] :long_description
    #   The long description to be updated as part of the `UpdateGlossaryTerm`
    #   action.
    #
    # @option params [Types::TermRelations] :term_relations
    #   The term relations to be updated as part of the `UpdateGlossaryTerm`
    #   action.
    #
    # @option params [String] :status
    #   The status to be updated as part of the `UpdateGlossaryTerm` action.
    #
    # @return [Types::UpdateGlossaryTermOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateGlossaryTermOutput#id #id} => String
    #   * {Types::UpdateGlossaryTermOutput#domain_id #domain_id} => String
    #   * {Types::UpdateGlossaryTermOutput#glossary_id #glossary_id} => String
    #   * {Types::UpdateGlossaryTermOutput#name #name} => String
    #   * {Types::UpdateGlossaryTermOutput#status #status} => String
    #   * {Types::UpdateGlossaryTermOutput#short_description #short_description} => String
    #   * {Types::UpdateGlossaryTermOutput#long_description #long_description} => String
    #   * {Types::UpdateGlossaryTermOutput#term_relations #term_relations} => Types::TermRelations
    #   * {Types::UpdateGlossaryTermOutput#usage_restrictions #usage_restrictions} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_glossary_term({
    #     domain_identifier: "DomainId", # required
    #     glossary_identifier: "GlossaryTermId",
    #     identifier: "GlossaryTermId", # required
    #     name: "GlossaryTermName",
    #     short_description: "ShortDescription",
    #     long_description: "LongDescription",
    #     term_relations: {
    #       is_a: ["GlossaryTermId"],
    #       classifies: ["GlossaryTermId"],
    #     },
    #     status: "ENABLED", # accepts ENABLED, DISABLED
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.domain_id #=> String
    #   resp.glossary_id #=> String
    #   resp.name #=> String
    #   resp.status #=> String, one of "ENABLED", "DISABLED"
    #   resp.short_description #=> String
    #   resp.long_description #=> String
    #   resp.term_relations.is_a #=> Array
    #   resp.term_relations.is_a[0] #=> String
    #   resp.term_relations.classifies #=> Array
    #   resp.term_relations.classifies[0] #=> String
    #   resp.usage_restrictions #=> Array
    #   resp.usage_restrictions[0] #=> String, one of "ASSET_GOVERNED_TERMS"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/UpdateGlossaryTerm AWS API Documentation
    #
    # @overload update_glossary_term(params = {})
    # @param [Hash] params ({})
    def update_glossary_term(params = {}, options = {})
      req = build_request(:update_glossary_term, params)
      req.send_request(options)
    end

    # Updates the specified group profile in Amazon DataZone.
    #
    # @option params [required, String] :domain_identifier
    #   The identifier of the Amazon DataZone domain in which a group profile
    #   is updated.
    #
    # @option params [required, String] :group_identifier
    #   The identifier of the group profile that is updated.
    #
    # @option params [required, String] :status
    #   The status of the group profile that is updated.
    #
    # @return [Types::UpdateGroupProfileOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateGroupProfileOutput#domain_id #domain_id} => String
    #   * {Types::UpdateGroupProfileOutput#id #id} => String
    #   * {Types::UpdateGroupProfileOutput#status #status} => String
    #   * {Types::UpdateGroupProfileOutput#group_name #group_name} => String
    #   * {Types::UpdateGroupProfileOutput#role_principal_arn #role_principal_arn} => String
    #   * {Types::UpdateGroupProfileOutput#role_principal_id #role_principal_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_group_profile({
    #     domain_identifier: "DomainId", # required
    #     group_identifier: "GroupIdentifier", # required
    #     status: "ASSIGNED", # required, accepts ASSIGNED, NOT_ASSIGNED
    #   })
    #
    # @example Response structure
    #
    #   resp.domain_id #=> String
    #   resp.id #=> String
    #   resp.status #=> String, one of "ASSIGNED", "NOT_ASSIGNED"
    #   resp.group_name #=> String
    #   resp.role_principal_arn #=> String
    #   resp.role_principal_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/UpdateGroupProfile AWS API Documentation
    #
    # @overload update_group_profile(params = {})
    # @param [Hash] params ({})
    def update_group_profile(params = {}, options = {})
      req = build_request(:update_group_profile, params)
      req.send_request(options)
    end

    # Updates the specified project in Amazon DataZone.
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the Amazon DataZone domain where a project is being updated.
    #
    # @option params [required, String] :identifier
    #   The identifier of the project that is to be updated.
    #
    # @option params [String] :name
    #   The name to be updated as part of the `UpdateProject` action.
    #
    # @option params [String] :description
    #   The description to be updated as part of the `UpdateProject` action.
    #
    # @option params [Hash<String,String>] :resource_tags
    #   The resource tags of the project.
    #
    # @option params [Array<String>] :glossary_terms
    #   The glossary terms to be updated as part of the `UpdateProject`
    #   action.
    #
    # @option params [String] :domain_unit_id
    #   The ID of the domain unit.
    #
    # @option params [Types::EnvironmentDeploymentDetails] :environment_deployment_details
    #   The environment deployment details of the project.
    #
    # @option params [Array<Types::EnvironmentConfigurationUserParameter>] :user_parameters
    #   The user parameters of the project.
    #
    # @option params [String] :project_profile_version
    #   The project profile version to which the project should be updated.
    #   You can only specify the following string for this parameter:
    #   `latest`.
    #
    # @return [Types::UpdateProjectOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateProjectOutput#domain_id #domain_id} => String
    #   * {Types::UpdateProjectOutput#id #id} => String
    #   * {Types::UpdateProjectOutput#name #name} => String
    #   * {Types::UpdateProjectOutput#description #description} => String
    #   * {Types::UpdateProjectOutput#project_status #project_status} => String
    #   * {Types::UpdateProjectOutput#failure_reasons #failure_reasons} => Array&lt;Types::ProjectDeletionError&gt;
    #   * {Types::UpdateProjectOutput#created_by #created_by} => String
    #   * {Types::UpdateProjectOutput#created_at #created_at} => Time
    #   * {Types::UpdateProjectOutput#last_updated_at #last_updated_at} => Time
    #   * {Types::UpdateProjectOutput#resource_tags #resource_tags} => Array&lt;Types::ResourceTag&gt;
    #   * {Types::UpdateProjectOutput#glossary_terms #glossary_terms} => Array&lt;String&gt;
    #   * {Types::UpdateProjectOutput#domain_unit_id #domain_unit_id} => String
    #   * {Types::UpdateProjectOutput#project_profile_id #project_profile_id} => String
    #   * {Types::UpdateProjectOutput#user_parameters #user_parameters} => Array&lt;Types::EnvironmentConfigurationUserParameter&gt;
    #   * {Types::UpdateProjectOutput#environment_deployment_details #environment_deployment_details} => Types::EnvironmentDeploymentDetails
    #   * {Types::UpdateProjectOutput#project_category #project_category} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_project({
    #     domain_identifier: "DomainId", # required
    #     identifier: "ProjectId", # required
    #     name: "ProjectName",
    #     description: "Description",
    #     resource_tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     glossary_terms: ["GlossaryTermId"],
    #     domain_unit_id: "DomainUnitId",
    #     environment_deployment_details: {
    #       overall_deployment_status: "PENDING_DEPLOYMENT", # accepts PENDING_DEPLOYMENT, IN_PROGRESS, SUCCESSFUL, FAILED_VALIDATION, FAILED_DEPLOYMENT
    #       environment_failure_reasons: {
    #         "String" => [
    #           {
    #             code: "String",
    #             message: "String", # required
    #           },
    #         ],
    #       },
    #     },
    #     user_parameters: [
    #       {
    #         environment_id: "EnvironmentId",
    #         environment_resolved_account: {
    #           aws_account_id: "AwsAccountId", # required
    #           region_name: "AwsRegion", # required
    #           source_account_pool_id: "AccountPoolId",
    #         },
    #         environment_configuration_name: "EnvironmentConfigurationName",
    #         environment_parameters: [
    #           {
    #             name: "String",
    #             value: "String",
    #           },
    #         ],
    #       },
    #     ],
    #     project_profile_version: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.domain_id #=> String
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.project_status #=> String, one of "ACTIVE", "DELETING", "DELETE_FAILED", "UPDATING", "UPDATE_FAILED", "MOVING"
    #   resp.failure_reasons #=> Array
    #   resp.failure_reasons[0].code #=> String
    #   resp.failure_reasons[0].message #=> String
    #   resp.created_by #=> String
    #   resp.created_at #=> Time
    #   resp.last_updated_at #=> Time
    #   resp.resource_tags #=> Array
    #   resp.resource_tags[0].key #=> String
    #   resp.resource_tags[0].value #=> String
    #   resp.resource_tags[0].source #=> String, one of "PROJECT", "PROJECT_PROFILE"
    #   resp.glossary_terms #=> Array
    #   resp.glossary_terms[0] #=> String
    #   resp.domain_unit_id #=> String
    #   resp.project_profile_id #=> String
    #   resp.user_parameters #=> Array
    #   resp.user_parameters[0].environment_id #=> String
    #   resp.user_parameters[0].environment_resolved_account.aws_account_id #=> String
    #   resp.user_parameters[0].environment_resolved_account.region_name #=> String
    #   resp.user_parameters[0].environment_resolved_account.source_account_pool_id #=> String
    #   resp.user_parameters[0].environment_configuration_name #=> String
    #   resp.user_parameters[0].environment_parameters #=> Array
    #   resp.user_parameters[0].environment_parameters[0].name #=> String
    #   resp.user_parameters[0].environment_parameters[0].value #=> String
    #   resp.environment_deployment_details.overall_deployment_status #=> String, one of "PENDING_DEPLOYMENT", "IN_PROGRESS", "SUCCESSFUL", "FAILED_VALIDATION", "FAILED_DEPLOYMENT"
    #   resp.environment_deployment_details.environment_failure_reasons #=> Hash
    #   resp.environment_deployment_details.environment_failure_reasons["String"] #=> Array
    #   resp.environment_deployment_details.environment_failure_reasons["String"][0].code #=> String
    #   resp.environment_deployment_details.environment_failure_reasons["String"][0].message #=> String
    #   resp.project_category #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/UpdateProject AWS API Documentation
    #
    # @overload update_project(params = {})
    # @param [Hash] params ({})
    def update_project(params = {}, options = {})
      req = build_request(:update_project, params)
      req.send_request(options)
    end

    # Updates a project profile.
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the domain where a project profile is to be updated.
    #
    # @option params [required, String] :identifier
    #   The ID of a project profile that is to be updated.
    #
    # @option params [String] :name
    #   The name of a project profile.
    #
    # @option params [String] :description
    #   The description of a project profile.
    #
    # @option params [String] :status
    #   The status of a project profile.
    #
    # @option params [Array<Types::ResourceTagParameter>] :project_resource_tags
    #   The resource tags of the project profile.
    #
    # @option params [Boolean] :allow_custom_project_resource_tags
    #   Specifies whether custom project resource tags are supported.
    #
    # @option params [String] :project_resource_tags_description
    #   Field viewable through the UI that provides a project user with the
    #   allowed resource tag specifications.
    #
    # @option params [Array<Types::EnvironmentConfiguration>] :environment_configurations
    #   The environment configurations of a project profile.
    #
    # @option params [String] :domain_unit_identifier
    #   The ID of the domain unit where a project profile is to be updated.
    #
    # @return [Types::UpdateProjectProfileOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateProjectProfileOutput#domain_id #domain_id} => String
    #   * {Types::UpdateProjectProfileOutput#id #id} => String
    #   * {Types::UpdateProjectProfileOutput#name #name} => String
    #   * {Types::UpdateProjectProfileOutput#description #description} => String
    #   * {Types::UpdateProjectProfileOutput#status #status} => String
    #   * {Types::UpdateProjectProfileOutput#project_resource_tags #project_resource_tags} => Array&lt;Types::ResourceTagParameter&gt;
    #   * {Types::UpdateProjectProfileOutput#allow_custom_project_resource_tags #allow_custom_project_resource_tags} => Boolean
    #   * {Types::UpdateProjectProfileOutput#project_resource_tags_description #project_resource_tags_description} => String
    #   * {Types::UpdateProjectProfileOutput#environment_configurations #environment_configurations} => Array&lt;Types::EnvironmentConfiguration&gt;
    #   * {Types::UpdateProjectProfileOutput#created_by #created_by} => String
    #   * {Types::UpdateProjectProfileOutput#created_at #created_at} => Time
    #   * {Types::UpdateProjectProfileOutput#last_updated_at #last_updated_at} => Time
    #   * {Types::UpdateProjectProfileOutput#domain_unit_id #domain_unit_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_project_profile({
    #     domain_identifier: "DomainId", # required
    #     identifier: "ProjectProfileId", # required
    #     name: "ProjectProfileName",
    #     description: "Description",
    #     status: "ENABLED", # accepts ENABLED, DISABLED
    #     project_resource_tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #         is_value_editable: false, # required
    #       },
    #     ],
    #     allow_custom_project_resource_tags: false,
    #     project_resource_tags_description: "Description",
    #     environment_configurations: [
    #       {
    #         name: "EnvironmentConfigurationName", # required
    #         id: "EnvironmentConfigurationId",
    #         environment_blueprint_id: "EnvironmentBlueprintId", # required
    #         description: "Description",
    #         deployment_mode: "ON_CREATE", # accepts ON_CREATE, ON_DEMAND
    #         configuration_parameters: {
    #           ssm_path: "ParameterStorePath",
    #           parameter_overrides: [
    #             {
    #               name: "EnvironmentConfigurationParameterName",
    #               value: "String",
    #               is_editable: false,
    #             },
    #           ],
    #           resolved_parameters: [
    #             {
    #               name: "EnvironmentConfigurationParameterName",
    #               value: "String",
    #               is_editable: false,
    #             },
    #           ],
    #         },
    #         aws_account: {
    #           aws_account_id: "AwsAccountId",
    #           aws_account_id_path: "ParameterStorePath",
    #         },
    #         account_pools: ["AccountPoolId"],
    #         aws_region: {
    #           region_name: "RegionName",
    #           region_name_path: "ParameterStorePath",
    #         },
    #         deployment_order: 1,
    #       },
    #     ],
    #     domain_unit_identifier: "DomainUnitId",
    #   })
    #
    # @example Response structure
    #
    #   resp.domain_id #=> String
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.status #=> String, one of "ENABLED", "DISABLED"
    #   resp.project_resource_tags #=> Array
    #   resp.project_resource_tags[0].key #=> String
    #   resp.project_resource_tags[0].value #=> String
    #   resp.project_resource_tags[0].is_value_editable #=> Boolean
    #   resp.allow_custom_project_resource_tags #=> Boolean
    #   resp.project_resource_tags_description #=> String
    #   resp.environment_configurations #=> Array
    #   resp.environment_configurations[0].name #=> String
    #   resp.environment_configurations[0].id #=> String
    #   resp.environment_configurations[0].environment_blueprint_id #=> String
    #   resp.environment_configurations[0].description #=> String
    #   resp.environment_configurations[0].deployment_mode #=> String, one of "ON_CREATE", "ON_DEMAND"
    #   resp.environment_configurations[0].configuration_parameters.ssm_path #=> String
    #   resp.environment_configurations[0].configuration_parameters.parameter_overrides #=> Array
    #   resp.environment_configurations[0].configuration_parameters.parameter_overrides[0].name #=> String
    #   resp.environment_configurations[0].configuration_parameters.parameter_overrides[0].value #=> String
    #   resp.environment_configurations[0].configuration_parameters.parameter_overrides[0].is_editable #=> Boolean
    #   resp.environment_configurations[0].configuration_parameters.resolved_parameters #=> Array
    #   resp.environment_configurations[0].configuration_parameters.resolved_parameters[0].name #=> String
    #   resp.environment_configurations[0].configuration_parameters.resolved_parameters[0].value #=> String
    #   resp.environment_configurations[0].configuration_parameters.resolved_parameters[0].is_editable #=> Boolean
    #   resp.environment_configurations[0].aws_account.aws_account_id #=> String
    #   resp.environment_configurations[0].aws_account.aws_account_id_path #=> String
    #   resp.environment_configurations[0].account_pools #=> Array
    #   resp.environment_configurations[0].account_pools[0] #=> String
    #   resp.environment_configurations[0].aws_region.region_name #=> String
    #   resp.environment_configurations[0].aws_region.region_name_path #=> String
    #   resp.environment_configurations[0].deployment_order #=> Integer
    #   resp.created_by #=> String
    #   resp.created_at #=> Time
    #   resp.last_updated_at #=> Time
    #   resp.domain_unit_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/UpdateProjectProfile AWS API Documentation
    #
    # @overload update_project_profile(params = {})
    # @param [Hash] params ({})
    def update_project_profile(params = {}, options = {})
      req = build_request(:update_project_profile, params)
      req.send_request(options)
    end

    # Updates the owner of the root domain unit.
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the domain where the root domain unit owner is to be
    #   updated.
    #
    # @option params [required, String] :current_owner
    #   The current owner of the root domain unit.
    #
    # @option params [required, String] :new_owner
    #   The new owner of the root domain unit.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier to ensure idempotency of the
    #   request. This field is automatically populated if not provided.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_root_domain_unit_owner({
    #     domain_identifier: "DomainId", # required
    #     current_owner: "UserIdentifier", # required
    #     new_owner: "String", # required
    #     client_token: "ClientToken",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/UpdateRootDomainUnitOwner AWS API Documentation
    #
    # @overload update_root_domain_unit_owner(params = {})
    # @param [Hash] params ({})
    def update_root_domain_unit_owner(params = {}, options = {})
      req = build_request(:update_root_domain_unit_owner, params)
      req.send_request(options)
    end

    # Updates a rule. In Amazon DataZone, a rule is a formal agreement that
    # enforces specific requirements across user workflows (e.g., publishing
    # assets to the catalog, requesting subscriptions, creating projects)
    # within the Amazon DataZone data portal. These rules help maintain
    # consistency, ensure compliance, and uphold governance standards in
    # data management processes. For instance, a metadata enforcement rule
    # can specify the required information for creating a subscription
    # request or publishing a data asset to the catalog, ensuring alignment
    # with organizational standards.
    #
    # @option params [required, String] :domain_identifier
    #   The ID of the domain in which a rule is to be updated.
    #
    # @option params [required, String] :identifier
    #   The ID of the rule that is to be updated
    #
    # @option params [String] :name
    #   The name of the rule.
    #
    # @option params [String] :description
    #   The description of the rule.
    #
    # @option params [Types::RuleScope] :scope
    #   The scrope of the rule.
    #
    # @option params [Types::RuleDetail] :detail
    #   The detail of the rule.
    #
    # @option params [Boolean] :include_child_domain_units
    #   Specifies whether to update this rule in the child domain units.
    #
    # @return [Types::UpdateRuleOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateRuleOutput#identifier #identifier} => String
    #   * {Types::UpdateRuleOutput#revision #revision} => String
    #   * {Types::UpdateRuleOutput#name #name} => String
    #   * {Types::UpdateRuleOutput#rule_type #rule_type} => String
    #   * {Types::UpdateRuleOutput#target #target} => Types::RuleTarget
    #   * {Types::UpdateRuleOutput#action #action} => String
    #   * {Types::UpdateRuleOutput#scope #scope} => Types::RuleScope
    #   * {Types::UpdateRuleOutput#detail #detail} => Types::RuleDetail
    #   * {Types::UpdateRuleOutput#description #description} => String
    #   * {Types::UpdateRuleOutput#created_at #created_at} => Time
    #   * {Types::UpdateRuleOutput#updated_at #updated_at} => Time
    #   * {Types::UpdateRuleOutput#created_by #created_by} => String
    #   * {Types::UpdateRuleOutput#last_updated_by #last_updated_by} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_rule({
    #     domain_identifier: "DomainId", # required
    #     identifier: "RuleId", # required
    #     name: "RuleName",
    #     description: "Description",
    #     scope: {
    #       asset_type: {
    #         selection_mode: "ALL", # required, accepts ALL, SPECIFIC
    #         specific_asset_types: ["AssetTypeIdentifier"],
    #       },
    #       data_product: false,
    #       project: {
    #         selection_mode: "ALL", # required, accepts ALL, SPECIFIC
    #         specific_projects: ["ProjectId"],
    #       },
    #     },
    #     detail: {
    #       metadata_form_enforcement_detail: {
    #         required_metadata_forms: [
    #           {
    #             type_identifier: "FormTypeIdentifier", # required
    #             type_revision: "Revision", # required
    #           },
    #         ],
    #       },
    #       glossary_term_enforcement_detail: {
    #         required_glossary_term_ids: ["GlossaryTermId"],
    #       },
    #     },
    #     include_child_domain_units: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.identifier #=> String
    #   resp.revision #=> String
    #   resp.name #=> String
    #   resp.rule_type #=> String, one of "METADATA_FORM_ENFORCEMENT", "GLOSSARY_TERM_ENFORCEMENT"
    #   resp.target.domain_unit_target.domain_unit_id #=> String
    #   resp.target.domain_unit_target.include_child_domain_units #=> Boolean
    #   resp.action #=> String, one of "CREATE_LISTING_CHANGE_SET", "CREATE_SUBSCRIPTION_REQUEST"
    #   resp.scope.asset_type.selection_mode #=> String, one of "ALL", "SPECIFIC"
    #   resp.scope.asset_type.specific_asset_types #=> Array
    #   resp.scope.asset_type.specific_asset_types[0] #=> String
    #   resp.scope.data_product #=> Boolean
    #   resp.scope.project.selection_mode #=> String, one of "ALL", "SPECIFIC"
    #   resp.scope.project.specific_projects #=> Array
    #   resp.scope.project.specific_projects[0] #=> String
    #   resp.detail.metadata_form_enforcement_detail.required_metadata_forms #=> Array
    #   resp.detail.metadata_form_enforcement_detail.required_metadata_forms[0].type_identifier #=> String
    #   resp.detail.metadata_form_enforcement_detail.required_metadata_forms[0].type_revision #=> String
    #   resp.detail.glossary_term_enforcement_detail.required_glossary_term_ids #=> Array
    #   resp.detail.glossary_term_enforcement_detail.required_glossary_term_ids[0] #=> String
    #   resp.description #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.created_by #=> String
    #   resp.last_updated_by #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/UpdateRule AWS API Documentation
    #
    # @overload update_rule(params = {})
    # @param [Hash] params ({})
    def update_rule(params = {}, options = {})
      req = build_request(:update_rule, params)
      req.send_request(options)
    end

    # Updates the status of the specified subscription grant status in
    # Amazon DataZone.
    #
    # @option params [required, String] :domain_identifier
    #   The identifier of the Amazon DataZone domain in which a subscription
    #   grant status is to be updated.
    #
    # @option params [required, String] :identifier
    #   The identifier of the subscription grant the status of which is to be
    #   updated.
    #
    # @option params [required, String] :asset_identifier
    #   The identifier of the asset the subscription grant status of which is
    #   to be updated.
    #
    # @option params [required, String] :status
    #   The status to be updated as part of the
    #   `UpdateSubscriptionGrantStatus` action.
    #
    # @option params [Types::FailureCause] :failure_cause
    #   Specifies the error message that is returned if the operation cannot
    #   be successfully completed.
    #
    # @option params [String] :target_name
    #   The target name to be updated as part of the
    #   `UpdateSubscriptionGrantStatus` action.
    #
    # @return [Types::UpdateSubscriptionGrantStatusOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateSubscriptionGrantStatusOutput#id #id} => String
    #   * {Types::UpdateSubscriptionGrantStatusOutput#created_by #created_by} => String
    #   * {Types::UpdateSubscriptionGrantStatusOutput#updated_by #updated_by} => String
    #   * {Types::UpdateSubscriptionGrantStatusOutput#domain_id #domain_id} => String
    #   * {Types::UpdateSubscriptionGrantStatusOutput#created_at #created_at} => Time
    #   * {Types::UpdateSubscriptionGrantStatusOutput#updated_at #updated_at} => Time
    #   * {Types::UpdateSubscriptionGrantStatusOutput#environment_id #environment_id} => String
    #   * {Types::UpdateSubscriptionGrantStatusOutput#subscription_target_id #subscription_target_id} => String
    #   * {Types::UpdateSubscriptionGrantStatusOutput#granted_entity #granted_entity} => Types::GrantedEntity
    #   * {Types::UpdateSubscriptionGrantStatusOutput#status #status} => String
    #   * {Types::UpdateSubscriptionGrantStatusOutput#assets #assets} => Array&lt;Types::SubscribedAsset&gt;
    #   * {Types::UpdateSubscriptionGrantStatusOutput#subscription_id #subscription_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_subscription_grant_status({
    #     domain_identifier: "DomainId", # required
    #     identifier: "SubscriptionGrantId", # required
    #     asset_identifier: "AssetId", # required
    #     status: "GRANT_PENDING", # required, accepts GRANT_PENDING, REVOKE_PENDING, GRANT_IN_PROGRESS, REVOKE_IN_PROGRESS, GRANTED, REVOKED, GRANT_FAILED, REVOKE_FAILED
    #     failure_cause: {
    #       message: "String",
    #     },
    #     target_name: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.created_by #=> String
    #   resp.updated_by #=> String
    #   resp.domain_id #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.environment_id #=> String
    #   resp.subscription_target_id #=> String
    #   resp.granted_entity.listing.id #=> String
    #   resp.granted_entity.listing.revision #=> String
    #   resp.status #=> String, one of "PENDING", "IN_PROGRESS", "GRANT_FAILED", "REVOKE_FAILED", "GRANT_AND_REVOKE_FAILED", "COMPLETED", "INACCESSIBLE"
    #   resp.assets #=> Array
    #   resp.assets[0].asset_id #=> String
    #   resp.assets[0].asset_revision #=> String
    #   resp.assets[0].status #=> String, one of "GRANT_PENDING", "REVOKE_PENDING", "GRANT_IN_PROGRESS", "REVOKE_IN_PROGRESS", "GRANTED", "REVOKED", "GRANT_FAILED", "REVOKE_FAILED"
    #   resp.assets[0].target_name #=> String
    #   resp.assets[0].failure_cause.message #=> String
    #   resp.assets[0].granted_timestamp #=> Time
    #   resp.assets[0].failure_timestamp #=> Time
    #   resp.assets[0].asset_scope.asset_id #=> String
    #   resp.assets[0].asset_scope.filter_ids #=> Array
    #   resp.assets[0].asset_scope.filter_ids[0] #=> String
    #   resp.assets[0].asset_scope.status #=> String
    #   resp.assets[0].asset_scope.error_message #=> String
    #   resp.assets[0].permissions.s3 #=> Array
    #   resp.assets[0].permissions.s3[0] #=> String, one of "READ", "WRITE"
    #   resp.subscription_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/UpdateSubscriptionGrantStatus AWS API Documentation
    #
    # @overload update_subscription_grant_status(params = {})
    # @param [Hash] params ({})
    def update_subscription_grant_status(params = {}, options = {})
      req = build_request(:update_subscription_grant_status, params)
      req.send_request(options)
    end

    # Updates a specified subscription request in Amazon DataZone.
    #
    # @option params [required, String] :domain_identifier
    #   The identifier of the Amazon DataZone domain in which a subscription
    #   request is to be updated.
    #
    # @option params [required, String] :identifier
    #   The identifier of the subscription request that is to be updated.
    #
    # @option params [required, String] :request_reason
    #   The reason for the `UpdateSubscriptionRequest` action.
    #
    # @return [Types::UpdateSubscriptionRequestOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateSubscriptionRequestOutput#id #id} => String
    #   * {Types::UpdateSubscriptionRequestOutput#created_by #created_by} => String
    #   * {Types::UpdateSubscriptionRequestOutput#updated_by #updated_by} => String
    #   * {Types::UpdateSubscriptionRequestOutput#domain_id #domain_id} => String
    #   * {Types::UpdateSubscriptionRequestOutput#status #status} => String
    #   * {Types::UpdateSubscriptionRequestOutput#created_at #created_at} => Time
    #   * {Types::UpdateSubscriptionRequestOutput#updated_at #updated_at} => Time
    #   * {Types::UpdateSubscriptionRequestOutput#request_reason #request_reason} => String
    #   * {Types::UpdateSubscriptionRequestOutput#subscribed_principals #subscribed_principals} => Array&lt;Types::SubscribedPrincipal&gt;
    #   * {Types::UpdateSubscriptionRequestOutput#subscribed_listings #subscribed_listings} => Array&lt;Types::SubscribedListing&gt;
    #   * {Types::UpdateSubscriptionRequestOutput#reviewer_id #reviewer_id} => String
    #   * {Types::UpdateSubscriptionRequestOutput#decision_comment #decision_comment} => String
    #   * {Types::UpdateSubscriptionRequestOutput#existing_subscription_id #existing_subscription_id} => String
    #   * {Types::UpdateSubscriptionRequestOutput#metadata_forms #metadata_forms} => Array&lt;Types::FormOutput&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_subscription_request({
    #     domain_identifier: "DomainId", # required
    #     identifier: "SubscriptionRequestId", # required
    #     request_reason: "RequestReason", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.created_by #=> String
    #   resp.updated_by #=> String
    #   resp.domain_id #=> String
    #   resp.status #=> String, one of "PENDING", "ACCEPTED", "REJECTED"
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.request_reason #=> String
    #   resp.subscribed_principals #=> Array
    #   resp.subscribed_principals[0].project.id #=> String
    #   resp.subscribed_principals[0].project.name #=> String
    #   resp.subscribed_principals[0].user.id #=> String
    #   resp.subscribed_principals[0].user.details.iam.arn #=> String
    #   resp.subscribed_principals[0].user.details.iam.principal_id #=> String
    #   resp.subscribed_principals[0].user.details.iam.session_name #=> String
    #   resp.subscribed_principals[0].user.details.iam.group_profile_id #=> String
    #   resp.subscribed_principals[0].user.details.sso.username #=> String
    #   resp.subscribed_principals[0].user.details.sso.first_name #=> String
    #   resp.subscribed_principals[0].user.details.sso.last_name #=> String
    #   resp.subscribed_principals[0].group.id #=> String
    #   resp.subscribed_principals[0].group.name #=> String
    #   resp.subscribed_principals[0].iam.principal_arn #=> String
    #   resp.subscribed_listings #=> Array
    #   resp.subscribed_listings[0].id #=> String
    #   resp.subscribed_listings[0].revision #=> String
    #   resp.subscribed_listings[0].name #=> String
    #   resp.subscribed_listings[0].description #=> String
    #   resp.subscribed_listings[0].item.asset_listing.entity_id #=> String
    #   resp.subscribed_listings[0].item.asset_listing.entity_revision #=> String
    #   resp.subscribed_listings[0].item.asset_listing.entity_type #=> String
    #   resp.subscribed_listings[0].item.asset_listing.forms #=> String
    #   resp.subscribed_listings[0].item.asset_listing.glossary_terms #=> Array
    #   resp.subscribed_listings[0].item.asset_listing.glossary_terms[0].name #=> String
    #   resp.subscribed_listings[0].item.asset_listing.glossary_terms[0].short_description #=> String
    #   resp.subscribed_listings[0].item.asset_listing.asset_scope.asset_id #=> String
    #   resp.subscribed_listings[0].item.asset_listing.asset_scope.filter_ids #=> Array
    #   resp.subscribed_listings[0].item.asset_listing.asset_scope.filter_ids[0] #=> String
    #   resp.subscribed_listings[0].item.asset_listing.asset_scope.status #=> String
    #   resp.subscribed_listings[0].item.asset_listing.asset_scope.error_message #=> String
    #   resp.subscribed_listings[0].item.asset_listing.permissions.s3 #=> Array
    #   resp.subscribed_listings[0].item.asset_listing.permissions.s3[0] #=> String, one of "READ", "WRITE"
    #   resp.subscribed_listings[0].item.product_listing.entity_id #=> String
    #   resp.subscribed_listings[0].item.product_listing.entity_revision #=> String
    #   resp.subscribed_listings[0].item.product_listing.glossary_terms #=> Array
    #   resp.subscribed_listings[0].item.product_listing.glossary_terms[0].name #=> String
    #   resp.subscribed_listings[0].item.product_listing.glossary_terms[0].short_description #=> String
    #   resp.subscribed_listings[0].item.product_listing.name #=> String
    #   resp.subscribed_listings[0].item.product_listing.description #=> String
    #   resp.subscribed_listings[0].item.product_listing.asset_listings #=> Array
    #   resp.subscribed_listings[0].item.product_listing.asset_listings[0].entity_id #=> String
    #   resp.subscribed_listings[0].item.product_listing.asset_listings[0].entity_revision #=> String
    #   resp.subscribed_listings[0].item.product_listing.asset_listings[0].entity_type #=> String
    #   resp.subscribed_listings[0].owner_project_id #=> String
    #   resp.subscribed_listings[0].owner_project_name #=> String
    #   resp.reviewer_id #=> String
    #   resp.decision_comment #=> String
    #   resp.existing_subscription_id #=> String
    #   resp.metadata_forms #=> Array
    #   resp.metadata_forms[0].form_name #=> String
    #   resp.metadata_forms[0].type_name #=> String
    #   resp.metadata_forms[0].type_revision #=> String
    #   resp.metadata_forms[0].content #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/UpdateSubscriptionRequest AWS API Documentation
    #
    # @overload update_subscription_request(params = {})
    # @param [Hash] params ({})
    def update_subscription_request(params = {}, options = {})
      req = build_request(:update_subscription_request, params)
      req.send_request(options)
    end

    # Updates the specified subscription target in Amazon DataZone.
    #
    # @option params [required, String] :domain_identifier
    #   The identifier of the Amazon DataZone domain in which a subscription
    #   target is to be updated.
    #
    # @option params [required, String] :environment_identifier
    #   The identifier of the environment in which a subscription target is to
    #   be updated.
    #
    # @option params [required, String] :identifier
    #   Identifier of the subscription target that is to be updated.
    #
    # @option params [String] :name
    #   The name to be updated as part of the `UpdateSubscriptionTarget`
    #   action.
    #
    # @option params [Array<String>] :authorized_principals
    #   The authorized principals to be updated as part of the
    #   `UpdateSubscriptionTarget` action.
    #
    # @option params [Array<String>] :applicable_asset_types
    #   The applicable asset types to be updated as part of the
    #   `UpdateSubscriptionTarget` action.
    #
    # @option params [Array<Types::SubscriptionTargetForm>] :subscription_target_config
    #   The configuration to be updated as part of the
    #   `UpdateSubscriptionTarget` action.
    #
    # @option params [String] :manage_access_role
    #   The manage access role to be updated as part of the
    #   `UpdateSubscriptionTarget` action.
    #
    # @option params [String] :provider
    #   The provider to be updated as part of the `UpdateSubscriptionTarget`
    #   action.
    #
    # @option params [String] :subscription_grant_creation_mode
    #   Determines the subscription grant creation mode for this target,
    #   defining if grants are auto-created upon subscription approval or
    #   managed manually.
    #
    # @return [Types::UpdateSubscriptionTargetOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateSubscriptionTargetOutput#id #id} => String
    #   * {Types::UpdateSubscriptionTargetOutput#authorized_principals #authorized_principals} => Array&lt;String&gt;
    #   * {Types::UpdateSubscriptionTargetOutput#domain_id #domain_id} => String
    #   * {Types::UpdateSubscriptionTargetOutput#project_id #project_id} => String
    #   * {Types::UpdateSubscriptionTargetOutput#environment_id #environment_id} => String
    #   * {Types::UpdateSubscriptionTargetOutput#name #name} => String
    #   * {Types::UpdateSubscriptionTargetOutput#type #type} => String
    #   * {Types::UpdateSubscriptionTargetOutput#created_by #created_by} => String
    #   * {Types::UpdateSubscriptionTargetOutput#updated_by #updated_by} => String
    #   * {Types::UpdateSubscriptionTargetOutput#created_at #created_at} => Time
    #   * {Types::UpdateSubscriptionTargetOutput#updated_at #updated_at} => Time
    #   * {Types::UpdateSubscriptionTargetOutput#manage_access_role #manage_access_role} => String
    #   * {Types::UpdateSubscriptionTargetOutput#applicable_asset_types #applicable_asset_types} => Array&lt;String&gt;
    #   * {Types::UpdateSubscriptionTargetOutput#subscription_target_config #subscription_target_config} => Array&lt;Types::SubscriptionTargetForm&gt;
    #   * {Types::UpdateSubscriptionTargetOutput#provider #provider} => String
    #   * {Types::UpdateSubscriptionTargetOutput#subscription_grant_creation_mode #subscription_grant_creation_mode} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_subscription_target({
    #     domain_identifier: "DomainId", # required
    #     environment_identifier: "EnvironmentId", # required
    #     identifier: "SubscriptionTargetId", # required
    #     name: "SubscriptionTargetName",
    #     authorized_principals: ["AuthorizedPrincipalIdentifier"],
    #     applicable_asset_types: ["TypeName"],
    #     subscription_target_config: [
    #       {
    #         form_name: "FormName", # required
    #         content: "String", # required
    #       },
    #     ],
    #     manage_access_role: "IamRoleArn",
    #     provider: "String",
    #     subscription_grant_creation_mode: "AUTOMATIC", # accepts AUTOMATIC, MANUAL
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.authorized_principals #=> Array
    #   resp.authorized_principals[0] #=> String
    #   resp.domain_id #=> String
    #   resp.project_id #=> String
    #   resp.environment_id #=> String
    #   resp.name #=> String
    #   resp.type #=> String
    #   resp.created_by #=> String
    #   resp.updated_by #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.manage_access_role #=> String
    #   resp.applicable_asset_types #=> Array
    #   resp.applicable_asset_types[0] #=> String
    #   resp.subscription_target_config #=> Array
    #   resp.subscription_target_config[0].form_name #=> String
    #   resp.subscription_target_config[0].content #=> String
    #   resp.provider #=> String
    #   resp.subscription_grant_creation_mode #=> String, one of "AUTOMATIC", "MANUAL"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/UpdateSubscriptionTarget AWS API Documentation
    #
    # @overload update_subscription_target(params = {})
    # @param [Hash] params ({})
    def update_subscription_target(params = {}, options = {})
      req = build_request(:update_subscription_target, params)
      req.send_request(options)
    end

    # Updates the specified user profile in Amazon DataZone.
    #
    # @option params [required, String] :domain_identifier
    #   The identifier of the Amazon DataZone domain in which a user profile
    #   is updated.
    #
    # @option params [required, String] :user_identifier
    #   The identifier of the user whose user profile is to be updated.
    #
    # @option params [String] :type
    #   The type of the user profile that are to be updated.
    #
    # @option params [required, String] :status
    #   The status of the user profile that are to be updated.
    #
    # @option params [String] :session_name
    #   The session name for IAM role sessions.
    #
    # @return [Types::UpdateUserProfileOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateUserProfileOutput#domain_id #domain_id} => String
    #   * {Types::UpdateUserProfileOutput#id #id} => String
    #   * {Types::UpdateUserProfileOutput#type #type} => String
    #   * {Types::UpdateUserProfileOutput#status #status} => String
    #   * {Types::UpdateUserProfileOutput#details #details} => Types::UserProfileDetails
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_user_profile({
    #     domain_identifier: "DomainId", # required
    #     user_identifier: "UserIdentifier", # required
    #     type: "IAM", # accepts IAM, SSO
    #     status: "ASSIGNED", # required, accepts ASSIGNED, NOT_ASSIGNED, ACTIVATED, DEACTIVATED
    #     session_name: "UpdateUserProfileInputSessionNameString",
    #   })
    #
    # @example Response structure
    #
    #   resp.domain_id #=> String
    #   resp.id #=> String
    #   resp.type #=> String, one of "IAM", "SSO"
    #   resp.status #=> String, one of "ASSIGNED", "NOT_ASSIGNED", "ACTIVATED", "DEACTIVATED"
    #   resp.details.iam.arn #=> String
    #   resp.details.iam.principal_id #=> String
    #   resp.details.iam.session_name #=> String
    #   resp.details.iam.group_profile_id #=> String
    #   resp.details.sso.username #=> String
    #   resp.details.sso.first_name #=> String
    #   resp.details.sso.last_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/datazone-2018-05-10/UpdateUserProfile AWS API Documentation
    #
    # @overload update_user_profile(params = {})
    # @param [Hash] params ({})
    def update_user_profile(params = {}, options = {})
      req = build_request(:update_user_profile, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::DataZone')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-datazone'
      context[:gem_version] = '1.76.0'
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
