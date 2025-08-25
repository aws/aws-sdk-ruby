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

module Aws::ControlTower
  # An API client for ControlTower.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::ControlTower::Client.new(
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

    @identifier = :controltower

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
    add_plugin(Aws::ControlTower::Plugins::Endpoints)

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
    #   @option options [Aws::ControlTower::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::ControlTower::EndpointParameters`.
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

    # Creates a new landing zone. This API call starts an asynchronous
    # operation that creates and configures a landing zone, based on the
    # parameters specified in the manifest JSON file.
    #
    # @option params [required, Hash,Array,String,Numeric,Boolean] :manifest
    #   The manifest JSON file is a text file that describes your Amazon Web
    #   Services resources. For examples, review [Launch your landing
    #   zone][1].
    #
    #   Document type used to carry open content
    #   (Hash,Array,String,Numeric,Boolean). A document type value is
    #   serialized using the same format as its surroundings and requires no
    #   additional encoding or escaping.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/controltower/latest/userguide/lz-api-launch
    #
    # @option params [Hash<String,String>] :tags
    #   Tags to be applied to the landing zone.
    #
    # @option params [required, String] :version
    #   The landing zone version, for example, 3.0.
    #
    # @return [Types::CreateLandingZoneOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateLandingZoneOutput#arn #arn} => String
    #   * {Types::CreateLandingZoneOutput#operation_identifier #operation_identifier} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_landing_zone({
    #     manifest: { # required
    #     },
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     version: "LandingZoneVersion", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.operation_identifier #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/CreateLandingZone AWS API Documentation
    #
    # @overload create_landing_zone(params = {})
    # @param [Hash] params ({})
    def create_landing_zone(params = {}, options = {})
      req = build_request(:create_landing_zone, params)
      req.send_request(options)
    end

    # Decommissions a landing zone. This API call starts an asynchronous
    # operation that deletes Amazon Web Services Control Tower resources
    # deployed in accounts managed by Amazon Web Services Control Tower.
    #
    # @option params [required, String] :landing_zone_identifier
    #   The unique identifier of the landing zone.
    #
    # @return [Types::DeleteLandingZoneOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteLandingZoneOutput#operation_identifier #operation_identifier} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_landing_zone({
    #     landing_zone_identifier: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.operation_identifier #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/DeleteLandingZone AWS API Documentation
    #
    # @overload delete_landing_zone(params = {})
    # @param [Hash] params ({})
    def delete_landing_zone(params = {}, options = {})
      req = build_request(:delete_landing_zone, params)
      req.send_request(options)
    end

    # Disable an `EnabledBaseline` resource on the specified Target. This
    # API starts an asynchronous operation to remove all resources deployed
    # as part of the baseline enablement. The resource will vary depending
    # on the enabled baseline. For usage examples, see [ *the Amazon Web
    # Services Control Tower User Guide* ][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/controltower/latest/userguide/baseline-api-examples.html
    #
    # @option params [required, String] :enabled_baseline_identifier
    #   Identifier of the `EnabledBaseline` resource to be deactivated, in ARN
    #   format.
    #
    # @return [Types::DisableBaselineOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DisableBaselineOutput#operation_identifier #operation_identifier} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disable_baseline({
    #     enabled_baseline_identifier: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.operation_identifier #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/DisableBaseline AWS API Documentation
    #
    # @overload disable_baseline(params = {})
    # @param [Hash] params ({})
    def disable_baseline(params = {}, options = {})
      req = build_request(:disable_baseline, params)
      req.send_request(options)
    end

    # This API call turns off a control. It starts an asynchronous operation
    # that deletes Amazon Web Services resources on the specified
    # organizational unit and the accounts it contains. The resources will
    # vary according to the control that you specify. For usage examples,
    # see the [ *Controls Reference Guide* ][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/controltower/latest/controlreference/control-api-examples-short.html
    #
    # @option params [required, String] :control_identifier
    #   The ARN of the control. Only **Strongly recommended** and **Elective**
    #   controls are permitted, with the exception of the **Region deny**
    #   control. For information on how to find the `controlIdentifier`, see
    #   [the overview page][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/controltower/latest/APIReference/Welcome.html
    #
    # @option params [required, String] :target_identifier
    #   The ARN of the organizational unit. For information on how to find the
    #   `targetIdentifier`, see [the overview page][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/controltower/latest/APIReference/Welcome.html
    #
    # @return [Types::DisableControlOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DisableControlOutput#operation_identifier #operation_identifier} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disable_control({
    #     control_identifier: "ControlIdentifier", # required
    #     target_identifier: "TargetIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.operation_identifier #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/DisableControl AWS API Documentation
    #
    # @overload disable_control(params = {})
    # @param [Hash] params ({})
    def disable_control(params = {}, options = {})
      req = build_request(:disable_control, params)
      req.send_request(options)
    end

    # Enable (apply) a `Baseline` to a Target. This API starts an
    # asynchronous operation to deploy resources specified by the `Baseline`
    # to the specified Target. For usage examples, see [ *the Amazon Web
    # Services Control Tower User Guide* ][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/controltower/latest/userguide/baseline-api-examples.html
    #
    # @option params [required, String] :baseline_identifier
    #   The ARN of the baseline to be enabled.
    #
    # @option params [required, String] :baseline_version
    #   The specific version to be enabled of the specified baseline.
    #
    # @option params [Array<Types::EnabledBaselineParameter>] :parameters
    #   A list of `key-value` objects that specify enablement parameters,
    #   where `key` is a string and `value` is a document of any type.
    #
    # @option params [Hash<String,String>] :tags
    #   Tags associated with input to `EnableBaseline`.
    #
    # @option params [required, String] :target_identifier
    #   The ARN of the target on which the baseline will be enabled. Only OUs
    #   are supported as targets.
    #
    # @return [Types::EnableBaselineOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::EnableBaselineOutput#arn #arn} => String
    #   * {Types::EnableBaselineOutput#operation_identifier #operation_identifier} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.enable_baseline({
    #     baseline_identifier: "Arn", # required
    #     baseline_version: "BaselineVersion", # required
    #     parameters: [
    #       {
    #         key: "String", # required
    #         value: { # required
    #         },
    #       },
    #     ],
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     target_identifier: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.operation_identifier #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/EnableBaseline AWS API Documentation
    #
    # @overload enable_baseline(params = {})
    # @param [Hash] params ({})
    def enable_baseline(params = {}, options = {})
      req = build_request(:enable_baseline, params)
      req.send_request(options)
    end

    # This API call activates a control. It starts an asynchronous operation
    # that creates Amazon Web Services resources on the specified
    # organizational unit and the accounts it contains. The resources
    # created will vary according to the control that you specify. For usage
    # examples, see the [ *Controls Reference Guide* ][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/controltower/latest/controlreference/control-api-examples-short.html
    #
    # @option params [required, String] :control_identifier
    #   The ARN of the control. Only **Strongly recommended** and **Elective**
    #   controls are permitted, with the exception of the **Region deny**
    #   control. For information on how to find the `controlIdentifier`, see
    #   [the overview page][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/controltower/latest/APIReference/Welcome.html
    #
    # @option params [Array<Types::EnabledControlParameter>] :parameters
    #   A list of input parameter values, which are specified to configure the
    #   control when you enable it.
    #
    # @option params [Hash<String,String>] :tags
    #   Tags to be applied to the `EnabledControl` resource.
    #
    # @option params [required, String] :target_identifier
    #   The ARN of the organizational unit. For information on how to find the
    #   `targetIdentifier`, see [the overview page][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/controltower/latest/APIReference/Welcome.html
    #
    # @return [Types::EnableControlOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::EnableControlOutput#arn #arn} => String
    #   * {Types::EnableControlOutput#operation_identifier #operation_identifier} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.enable_control({
    #     control_identifier: "ControlIdentifier", # required
    #     parameters: [
    #       {
    #         key: "String", # required
    #         value: { # required
    #         },
    #       },
    #     ],
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     target_identifier: "TargetIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.operation_identifier #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/EnableControl AWS API Documentation
    #
    # @overload enable_control(params = {})
    # @param [Hash] params ({})
    def enable_control(params = {}, options = {})
      req = build_request(:enable_control, params)
      req.send_request(options)
    end

    # Retrieve details about an existing `Baseline` resource by specifying
    # its identifier. For usage examples, see [ *the Amazon Web Services
    # Control Tower User Guide* ][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/controltower/latest/userguide/baseline-api-examples.html
    #
    # @option params [required, String] :baseline_identifier
    #   The ARN of the `Baseline` resource to be retrieved.
    #
    # @return [Types::GetBaselineOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetBaselineOutput#arn #arn} => String
    #   * {Types::GetBaselineOutput#description #description} => String
    #   * {Types::GetBaselineOutput#name #name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_baseline({
    #     baseline_identifier: "BaselineArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.description #=> String
    #   resp.name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/GetBaseline AWS API Documentation
    #
    # @overload get_baseline(params = {})
    # @param [Hash] params ({})
    def get_baseline(params = {}, options = {})
      req = build_request(:get_baseline, params)
      req.send_request(options)
    end

    # Returns the details of an asynchronous baseline operation, as
    # initiated by any of these APIs: `EnableBaseline`, `DisableBaseline`,
    # `UpdateEnabledBaseline`, `ResetEnabledBaseline`. A status message is
    # displayed in case of operation failure. For usage examples, see [ *the
    # Amazon Web Services Control Tower User Guide* ][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/controltower/latest/userguide/baseline-api-examples.html
    #
    # @option params [required, String] :operation_identifier
    #   The operation ID returned from mutating asynchronous APIs (Enable,
    #   Disable, Update, Reset).
    #
    # @return [Types::GetBaselineOperationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetBaselineOperationOutput#baseline_operation #baseline_operation} => Types::BaselineOperation
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_baseline_operation({
    #     operation_identifier: "OperationIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.baseline_operation.end_time #=> Time
    #   resp.baseline_operation.operation_identifier #=> String
    #   resp.baseline_operation.operation_type #=> String, one of "ENABLE_BASELINE", "DISABLE_BASELINE", "UPDATE_ENABLED_BASELINE", "RESET_ENABLED_BASELINE"
    #   resp.baseline_operation.start_time #=> Time
    #   resp.baseline_operation.status #=> String, one of "SUCCEEDED", "FAILED", "IN_PROGRESS"
    #   resp.baseline_operation.status_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/GetBaselineOperation AWS API Documentation
    #
    # @overload get_baseline_operation(params = {})
    # @param [Hash] params ({})
    def get_baseline_operation(params = {}, options = {})
      req = build_request(:get_baseline_operation, params)
      req.send_request(options)
    end

    # Returns the status of a particular `EnableControl` or `DisableControl`
    # operation. Displays a message in case of error. Details for an
    # operation are available for 90 days. For usage examples, see the [
    # *Controls Reference Guide* ][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/controltower/latest/controlreference/control-api-examples-short.html
    #
    # @option params [required, String] :operation_identifier
    #   The ID of the asynchronous operation, which is used to track status.
    #   The operation is available for 90 days.
    #
    # @return [Types::GetControlOperationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetControlOperationOutput#control_operation #control_operation} => Types::ControlOperation
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_control_operation({
    #     operation_identifier: "OperationIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.control_operation.control_identifier #=> String
    #   resp.control_operation.enabled_control_identifier #=> String
    #   resp.control_operation.end_time #=> Time
    #   resp.control_operation.operation_identifier #=> String
    #   resp.control_operation.operation_type #=> String, one of "ENABLE_CONTROL", "DISABLE_CONTROL", "UPDATE_ENABLED_CONTROL", "RESET_ENABLED_CONTROL"
    #   resp.control_operation.start_time #=> Time
    #   resp.control_operation.status #=> String, one of "SUCCEEDED", "FAILED", "IN_PROGRESS"
    #   resp.control_operation.status_message #=> String
    #   resp.control_operation.target_identifier #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/GetControlOperation AWS API Documentation
    #
    # @overload get_control_operation(params = {})
    # @param [Hash] params ({})
    def get_control_operation(params = {}, options = {})
      req = build_request(:get_control_operation, params)
      req.send_request(options)
    end

    # Retrieve details of an `EnabledBaseline` resource by specifying its
    # identifier.
    #
    # @option params [required, String] :enabled_baseline_identifier
    #   Identifier of the `EnabledBaseline` resource to be retrieved, in ARN
    #   format.
    #
    # @return [Types::GetEnabledBaselineOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetEnabledBaselineOutput#enabled_baseline_details #enabled_baseline_details} => Types::EnabledBaselineDetails
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_enabled_baseline({
    #     enabled_baseline_identifier: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.enabled_baseline_details.arn #=> String
    #   resp.enabled_baseline_details.baseline_identifier #=> String
    #   resp.enabled_baseline_details.baseline_version #=> String
    #   resp.enabled_baseline_details.drift_status_summary.types.inheritance.status #=> String, one of "IN_SYNC", "DRIFTED"
    #   resp.enabled_baseline_details.parameters #=> Array
    #   resp.enabled_baseline_details.parameters[0].key #=> String
    #   resp.enabled_baseline_details.parent_identifier #=> String
    #   resp.enabled_baseline_details.status_summary.last_operation_identifier #=> String
    #   resp.enabled_baseline_details.status_summary.status #=> String, one of "SUCCEEDED", "FAILED", "UNDER_CHANGE"
    #   resp.enabled_baseline_details.target_identifier #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/GetEnabledBaseline AWS API Documentation
    #
    # @overload get_enabled_baseline(params = {})
    # @param [Hash] params ({})
    def get_enabled_baseline(params = {}, options = {})
      req = build_request(:get_enabled_baseline, params)
      req.send_request(options)
    end

    # Retrieves details about an enabled control. For usage examples, see
    # the [ *Controls Reference Guide* ][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/controltower/latest/controlreference/control-api-examples-short.html
    #
    # @option params [required, String] :enabled_control_identifier
    #   The `controlIdentifier` of the enabled control.
    #
    # @return [Types::GetEnabledControlOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetEnabledControlOutput#enabled_control_details #enabled_control_details} => Types::EnabledControlDetails
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_enabled_control({
    #     enabled_control_identifier: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.enabled_control_details.arn #=> String
    #   resp.enabled_control_details.control_identifier #=> String
    #   resp.enabled_control_details.drift_status_summary.drift_status #=> String, one of "DRIFTED", "IN_SYNC", "NOT_CHECKING", "UNKNOWN"
    #   resp.enabled_control_details.parameters #=> Array
    #   resp.enabled_control_details.parameters[0].key #=> String
    #   resp.enabled_control_details.status_summary.last_operation_identifier #=> String
    #   resp.enabled_control_details.status_summary.status #=> String, one of "SUCCEEDED", "FAILED", "UNDER_CHANGE"
    #   resp.enabled_control_details.target_identifier #=> String
    #   resp.enabled_control_details.target_regions #=> Array
    #   resp.enabled_control_details.target_regions[0].name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/GetEnabledControl AWS API Documentation
    #
    # @overload get_enabled_control(params = {})
    # @param [Hash] params ({})
    def get_enabled_control(params = {}, options = {})
      req = build_request(:get_enabled_control, params)
      req.send_request(options)
    end

    # Returns details about the landing zone. Displays a message in case of
    # error.
    #
    # @option params [required, String] :landing_zone_identifier
    #   The unique identifier of the landing zone.
    #
    # @return [Types::GetLandingZoneOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetLandingZoneOutput#landing_zone #landing_zone} => Types::LandingZoneDetail
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_landing_zone({
    #     landing_zone_identifier: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.landing_zone.arn #=> String
    #   resp.landing_zone.drift_status.status #=> String, one of "DRIFTED", "IN_SYNC"
    #   resp.landing_zone.latest_available_version #=> String
    #   resp.landing_zone.status #=> String, one of "ACTIVE", "PROCESSING", "FAILED"
    #   resp.landing_zone.version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/GetLandingZone AWS API Documentation
    #
    # @overload get_landing_zone(params = {})
    # @param [Hash] params ({})
    def get_landing_zone(params = {}, options = {})
      req = build_request(:get_landing_zone, params)
      req.send_request(options)
    end

    # Returns the status of the specified landing zone operation. Details
    # for an operation are available for 90 days.
    #
    # @option params [required, String] :operation_identifier
    #   A unique identifier assigned to a landing zone operation.
    #
    # @return [Types::GetLandingZoneOperationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetLandingZoneOperationOutput#operation_details #operation_details} => Types::LandingZoneOperationDetail
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_landing_zone_operation({
    #     operation_identifier: "OperationIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.operation_details.end_time #=> Time
    #   resp.operation_details.operation_identifier #=> String
    #   resp.operation_details.operation_type #=> String, one of "DELETE", "CREATE", "UPDATE", "RESET"
    #   resp.operation_details.start_time #=> Time
    #   resp.operation_details.status #=> String, one of "SUCCEEDED", "FAILED", "IN_PROGRESS"
    #   resp.operation_details.status_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/GetLandingZoneOperation AWS API Documentation
    #
    # @overload get_landing_zone_operation(params = {})
    # @param [Hash] params ({})
    def get_landing_zone_operation(params = {}, options = {})
      req = build_request(:get_landing_zone_operation, params)
      req.send_request(options)
    end

    # Returns a summary list of all available baselines. For usage examples,
    # see [ *the Amazon Web Services Control Tower User Guide* ][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/controltower/latest/userguide/baseline-api-examples.html
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be shown.
    #
    # @option params [String] :next_token
    #   A pagination token.
    #
    # @return [Types::ListBaselinesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListBaselinesOutput#baselines #baselines} => Array&lt;Types::BaselineSummary&gt;
    #   * {Types::ListBaselinesOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_baselines({
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.baselines #=> Array
    #   resp.baselines[0].arn #=> String
    #   resp.baselines[0].description #=> String
    #   resp.baselines[0].name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/ListBaselines AWS API Documentation
    #
    # @overload list_baselines(params = {})
    # @param [Hash] params ({})
    def list_baselines(params = {}, options = {})
      req = build_request(:list_baselines, params)
      req.send_request(options)
    end

    # Provides a list of operations in progress or queued. For usage
    # examples, see [ListControlOperation examples][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/controltower/latest/controlreference/control-api-examples-short.html#list-control-operations-api-examples
    #
    # @option params [Types::ControlOperationFilter] :filter
    #   An input filter for the `ListControlOperations` API that lets you
    #   select the types of control operations to view.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be shown.
    #
    # @option params [String] :next_token
    #   A pagination token.
    #
    # @return [Types::ListControlOperationsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListControlOperationsOutput#control_operations #control_operations} => Array&lt;Types::ControlOperationSummary&gt;
    #   * {Types::ListControlOperationsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_control_operations({
    #     filter: {
    #       control_identifiers: ["ControlIdentifier"],
    #       control_operation_types: ["ENABLE_CONTROL"], # accepts ENABLE_CONTROL, DISABLE_CONTROL, UPDATE_ENABLED_CONTROL, RESET_ENABLED_CONTROL
    #       enabled_control_identifiers: ["Arn"],
    #       statuses: ["SUCCEEDED"], # accepts SUCCEEDED, FAILED, IN_PROGRESS
    #       target_identifiers: ["TargetIdentifier"],
    #     },
    #     max_results: 1,
    #     next_token: "ListControlOperationsNextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.control_operations #=> Array
    #   resp.control_operations[0].control_identifier #=> String
    #   resp.control_operations[0].enabled_control_identifier #=> String
    #   resp.control_operations[0].end_time #=> Time
    #   resp.control_operations[0].operation_identifier #=> String
    #   resp.control_operations[0].operation_type #=> String, one of "ENABLE_CONTROL", "DISABLE_CONTROL", "UPDATE_ENABLED_CONTROL", "RESET_ENABLED_CONTROL"
    #   resp.control_operations[0].start_time #=> Time
    #   resp.control_operations[0].status #=> String, one of "SUCCEEDED", "FAILED", "IN_PROGRESS"
    #   resp.control_operations[0].status_message #=> String
    #   resp.control_operations[0].target_identifier #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/ListControlOperations AWS API Documentation
    #
    # @overload list_control_operations(params = {})
    # @param [Hash] params ({})
    def list_control_operations(params = {}, options = {})
      req = build_request(:list_control_operations, params)
      req.send_request(options)
    end

    # Returns a list of summaries describing `EnabledBaseline` resources.
    # You can filter the list by the corresponding `Baseline` or `Target` of
    # the `EnabledBaseline` resources. For usage examples, see [ *the Amazon
    # Web Services Control Tower User Guide* ][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/controltower/latest/userguide/baseline-api-examples.html
    #
    # @option params [Types::EnabledBaselineFilter] :filter
    #   A filter applied on the `ListEnabledBaseline` operation. Allowed
    #   filters are `baselineIdentifiers` and `targetIdentifiers`. The filter
    #   can be applied for either, or both.
    #
    # @option params [Boolean] :include_children
    #   A value that can be set to include the child enabled baselines in
    #   responses. The default value is false.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be shown.
    #
    # @option params [String] :next_token
    #   A pagination token.
    #
    # @return [Types::ListEnabledBaselinesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListEnabledBaselinesOutput#enabled_baselines #enabled_baselines} => Array&lt;Types::EnabledBaselineSummary&gt;
    #   * {Types::ListEnabledBaselinesOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_enabled_baselines({
    #     filter: {
    #       baseline_identifiers: ["Arn"],
    #       inheritance_drift_statuses: ["IN_SYNC"], # accepts IN_SYNC, DRIFTED
    #       parent_identifiers: ["Arn"],
    #       statuses: ["SUCCEEDED"], # accepts SUCCEEDED, FAILED, UNDER_CHANGE
    #       target_identifiers: ["Arn"],
    #     },
    #     include_children: false,
    #     max_results: 1,
    #     next_token: "ListEnabledBaselinesNextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.enabled_baselines #=> Array
    #   resp.enabled_baselines[0].arn #=> String
    #   resp.enabled_baselines[0].baseline_identifier #=> String
    #   resp.enabled_baselines[0].baseline_version #=> String
    #   resp.enabled_baselines[0].drift_status_summary.types.inheritance.status #=> String, one of "IN_SYNC", "DRIFTED"
    #   resp.enabled_baselines[0].parent_identifier #=> String
    #   resp.enabled_baselines[0].status_summary.last_operation_identifier #=> String
    #   resp.enabled_baselines[0].status_summary.status #=> String, one of "SUCCEEDED", "FAILED", "UNDER_CHANGE"
    #   resp.enabled_baselines[0].target_identifier #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/ListEnabledBaselines AWS API Documentation
    #
    # @overload list_enabled_baselines(params = {})
    # @param [Hash] params ({})
    def list_enabled_baselines(params = {}, options = {})
      req = build_request(:list_enabled_baselines, params)
      req.send_request(options)
    end

    # Lists the controls enabled by Amazon Web Services Control Tower on the
    # specified organizational unit and the accounts it contains. For usage
    # examples, see the [ *Controls Reference Guide* ][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/controltower/latest/controlreference/control-api-examples-short.html
    #
    # @option params [Types::EnabledControlFilter] :filter
    #   An input filter for the `ListEnabledControls` API that lets you select
    #   the types of control operations to view.
    #
    # @option params [Integer] :max_results
    #   How many results to return per API call.
    #
    # @option params [String] :next_token
    #   The token to continue the list from a previous API call with the same
    #   parameters.
    #
    # @option params [String] :target_identifier
    #   The ARN of the organizational unit. For information on how to find the
    #   `targetIdentifier`, see [the overview page][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/controltower/latest/APIReference/Welcome.html
    #
    # @return [Types::ListEnabledControlsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListEnabledControlsOutput#enabled_controls #enabled_controls} => Array&lt;Types::EnabledControlSummary&gt;
    #   * {Types::ListEnabledControlsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_enabled_controls({
    #     filter: {
    #       control_identifiers: ["ControlIdentifier"],
    #       drift_statuses: ["DRIFTED"], # accepts DRIFTED, IN_SYNC, NOT_CHECKING, UNKNOWN
    #       statuses: ["SUCCEEDED"], # accepts SUCCEEDED, FAILED, UNDER_CHANGE
    #     },
    #     max_results: 1,
    #     next_token: "String",
    #     target_identifier: "TargetIdentifier",
    #   })
    #
    # @example Response structure
    #
    #   resp.enabled_controls #=> Array
    #   resp.enabled_controls[0].arn #=> String
    #   resp.enabled_controls[0].control_identifier #=> String
    #   resp.enabled_controls[0].drift_status_summary.drift_status #=> String, one of "DRIFTED", "IN_SYNC", "NOT_CHECKING", "UNKNOWN"
    #   resp.enabled_controls[0].status_summary.last_operation_identifier #=> String
    #   resp.enabled_controls[0].status_summary.status #=> String, one of "SUCCEEDED", "FAILED", "UNDER_CHANGE"
    #   resp.enabled_controls[0].target_identifier #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/ListEnabledControls AWS API Documentation
    #
    # @overload list_enabled_controls(params = {})
    # @param [Hash] params ({})
    def list_enabled_controls(params = {}, options = {})
      req = build_request(:list_enabled_controls, params)
      req.send_request(options)
    end

    # Lists all landing zone operations from the past 90 days. Results are
    # sorted by time, with the most recent operation first.
    #
    # @option params [Types::LandingZoneOperationFilter] :filter
    #   An input filter for the `ListLandingZoneOperations` API that lets you
    #   select the types of landing zone operations to view.
    #
    # @option params [Integer] :max_results
    #   How many results to return per API call.
    #
    # @option params [String] :next_token
    #   The token to continue the list from a previous API call with the same
    #   parameters.
    #
    # @return [Types::ListLandingZoneOperationsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListLandingZoneOperationsOutput#landing_zone_operations #landing_zone_operations} => Array&lt;Types::LandingZoneOperationSummary&gt;
    #   * {Types::ListLandingZoneOperationsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_landing_zone_operations({
    #     filter: {
    #       statuses: ["SUCCEEDED"], # accepts SUCCEEDED, FAILED, IN_PROGRESS
    #       types: ["DELETE"], # accepts DELETE, CREATE, UPDATE, RESET
    #     },
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.landing_zone_operations #=> Array
    #   resp.landing_zone_operations[0].operation_identifier #=> String
    #   resp.landing_zone_operations[0].operation_type #=> String, one of "DELETE", "CREATE", "UPDATE", "RESET"
    #   resp.landing_zone_operations[0].status #=> String, one of "SUCCEEDED", "FAILED", "IN_PROGRESS"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/ListLandingZoneOperations AWS API Documentation
    #
    # @overload list_landing_zone_operations(params = {})
    # @param [Hash] params ({})
    def list_landing_zone_operations(params = {}, options = {})
      req = build_request(:list_landing_zone_operations, params)
      req.send_request(options)
    end

    # Returns the landing zone ARN for the landing zone deployed in your
    # managed account. This API also creates an ARN for existing accounts
    # that do not yet have a landing zone ARN.
    #
    # Returns one landing zone ARN.
    #
    # @option params [Integer] :max_results
    #   The maximum number of returned landing zone ARNs, which is one.
    #
    # @option params [String] :next_token
    #   The token to continue the list from a previous API call with the same
    #   parameters.
    #
    # @return [Types::ListLandingZonesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListLandingZonesOutput#landing_zones #landing_zones} => Array&lt;Types::LandingZoneSummary&gt;
    #   * {Types::ListLandingZonesOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_landing_zones({
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.landing_zones #=> Array
    #   resp.landing_zones[0].arn #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/ListLandingZones AWS API Documentation
    #
    # @overload list_landing_zones(params = {})
    # @param [Hash] params ({})
    def list_landing_zones(params = {}, options = {})
      req = build_request(:list_landing_zones, params)
      req.send_request(options)
    end

    # Returns a list of tags associated with the resource. For usage
    # examples, see the [ *Controls Reference Guide* ][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/controltower/latest/controlreference/control-api-examples-short.html
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource.
    #
    # @return [Types::ListTagsForResourceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceOutput#tags #tags} => Hash&lt;String,String&gt;
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Re-enables an `EnabledBaseline` resource. For example, this API can
    # re-apply the existing `Baseline` after a new member account is moved
    # to the target OU. For usage examples, see [ *the Amazon Web Services
    # Control Tower User Guide* ][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/controltower/latest/userguide/baseline-api-examples.html
    #
    # @option params [required, String] :enabled_baseline_identifier
    #   Specifies the ID of the `EnabledBaseline` resource to be re-enabled,
    #   in ARN format.
    #
    # @return [Types::ResetEnabledBaselineOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ResetEnabledBaselineOutput#operation_identifier #operation_identifier} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reset_enabled_baseline({
    #     enabled_baseline_identifier: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.operation_identifier #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/ResetEnabledBaseline AWS API Documentation
    #
    # @overload reset_enabled_baseline(params = {})
    # @param [Hash] params ({})
    def reset_enabled_baseline(params = {}, options = {})
      req = build_request(:reset_enabled_baseline, params)
      req.send_request(options)
    end

    # Resets an enabled control.
    #
    # @option params [required, String] :enabled_control_identifier
    #   The ARN of the enabled control to be reset.
    #
    # @return [Types::ResetEnabledControlOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ResetEnabledControlOutput#operation_identifier #operation_identifier} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reset_enabled_control({
    #     enabled_control_identifier: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.operation_identifier #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/ResetEnabledControl AWS API Documentation
    #
    # @overload reset_enabled_control(params = {})
    # @param [Hash] params ({})
    def reset_enabled_control(params = {}, options = {})
      req = build_request(:reset_enabled_control, params)
      req.send_request(options)
    end

    # This API call resets a landing zone. It starts an asynchronous
    # operation that resets the landing zone to the parameters specified in
    # the original configuration, which you specified in the manifest file.
    # Nothing in the manifest file's original landing zone configuration is
    # changed during the reset process, by default. This API is not the same
    # as a rollback of a landing zone version, which is not a supported
    # operation.
    #
    # @option params [required, String] :landing_zone_identifier
    #   The unique identifier of the landing zone.
    #
    # @return [Types::ResetLandingZoneOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ResetLandingZoneOutput#operation_identifier #operation_identifier} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reset_landing_zone({
    #     landing_zone_identifier: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.operation_identifier #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/ResetLandingZone AWS API Documentation
    #
    # @overload reset_landing_zone(params = {})
    # @param [Hash] params ({})
    def reset_landing_zone(params = {}, options = {})
      req = build_request(:reset_landing_zone, params)
      req.send_request(options)
    end

    # Applies tags to a resource. For usage examples, see the [ *Controls
    # Reference Guide* ][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/controltower/latest/controlreference/control-api-examples-short.html
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource to be tagged.
    #
    # @option params [required, Hash<String,String>] :tags
    #   Tags to be applied to the resource.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes tags from a resource. For usage examples, see the [ *Controls
    # Reference Guide* ][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/controltower/latest/controlreference/control-api-examples-short.html
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource.
    #
    # @option params [required, Array<String>] :tag_keys
    #   Tag keys to be removed from the resource.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates an `EnabledBaseline` resource's applied parameters or
    # version. For usage examples, see [ *the Amazon Web Services Control
    # Tower User Guide* ][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/controltower/latest/userguide/baseline-api-examples.html
    #
    # @option params [required, String] :baseline_version
    #   Specifies the new `Baseline` version, to which the `EnabledBaseline`
    #   should be updated.
    #
    # @option params [required, String] :enabled_baseline_identifier
    #   Specifies the `EnabledBaseline` resource to be updated.
    #
    # @option params [Array<Types::EnabledBaselineParameter>] :parameters
    #   Parameters to apply when making an update.
    #
    # @return [Types::UpdateEnabledBaselineOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateEnabledBaselineOutput#operation_identifier #operation_identifier} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_enabled_baseline({
    #     baseline_version: "BaselineVersion", # required
    #     enabled_baseline_identifier: "Arn", # required
    #     parameters: [
    #       {
    #         key: "String", # required
    #         value: { # required
    #         },
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.operation_identifier #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/UpdateEnabledBaseline AWS API Documentation
    #
    # @overload update_enabled_baseline(params = {})
    # @param [Hash] params ({})
    def update_enabled_baseline(params = {}, options = {})
      req = build_request(:update_enabled_baseline, params)
      req.send_request(options)
    end

    # Updates the configuration of an already enabled control.
    #
    # If the enabled control shows an `EnablementStatus` of SUCCEEDED,
    # supply parameters that are different from the currently configured
    # parameters. Otherwise, Amazon Web Services Control Tower will not
    # accept the request.
    #
    # If the enabled control shows an `EnablementStatus` of FAILED, Amazon
    # Web Services Control Tower updates the control to match any valid
    # parameters that you supply.
    #
    # If the `DriftSummary` status for the control shows as `DRIFTED`, you
    # cannot call this API. Instead, you can update the control by calling
    # the `ResetEnabledControl` API. Alternatively, you can call
    # `DisableControl` and then call `EnableControl` again. Also, you can
    # run an extending governance operation to repair drift. For usage
    # examples, see the [ *Controls Reference Guide* ][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/controltower/latest/controlreference/control-api-examples-short.html
    #
    # @option params [required, String] :enabled_control_identifier
    #   The ARN of the enabled control that will be updated.
    #
    # @option params [required, Array<Types::EnabledControlParameter>] :parameters
    #   A key/value pair, where `Key` is of type `String` and `Value` is of
    #   type `Document`.
    #
    # @return [Types::UpdateEnabledControlOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateEnabledControlOutput#operation_identifier #operation_identifier} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_enabled_control({
    #     enabled_control_identifier: "Arn", # required
    #     parameters: [ # required
    #       {
    #         key: "String", # required
    #         value: { # required
    #         },
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.operation_identifier #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/UpdateEnabledControl AWS API Documentation
    #
    # @overload update_enabled_control(params = {})
    # @param [Hash] params ({})
    def update_enabled_control(params = {}, options = {})
      req = build_request(:update_enabled_control, params)
      req.send_request(options)
    end

    # This API call updates the landing zone. It starts an asynchronous
    # operation that updates the landing zone based on the new landing zone
    # version, or on the changed parameters specified in the updated
    # manifest file.
    #
    # @option params [required, String] :landing_zone_identifier
    #   The unique identifier of the landing zone.
    #
    # @option params [required, Hash,Array,String,Numeric,Boolean] :manifest
    #   The manifest file (JSON) is a text file that describes your Amazon Web
    #   Services resources. For an example, review [Launch your landing
    #   zone][1]. The example manifest file contains each of the available
    #   parameters. The schema for the landing zone's JSON manifest file is
    #   not published, by design.
    #
    #   Document type used to carry open content
    #   (Hash,Array,String,Numeric,Boolean). A document type value is
    #   serialized using the same format as its surroundings and requires no
    #   additional encoding or escaping.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/controltower/latest/userguide/lz-api-launch
    #
    # @option params [required, String] :version
    #   The landing zone version, for example, 3.2.
    #
    # @return [Types::UpdateLandingZoneOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateLandingZoneOutput#operation_identifier #operation_identifier} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_landing_zone({
    #     landing_zone_identifier: "String", # required
    #     manifest: { # required
    #     },
    #     version: "LandingZoneVersion", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.operation_identifier #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/controltower-2018-05-10/UpdateLandingZone AWS API Documentation
    #
    # @overload update_landing_zone(params = {})
    # @param [Hash] params ({})
    def update_landing_zone(params = {}, options = {})
      req = build_request(:update_landing_zone, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::ControlTower')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-controltower'
      context[:gem_version] = '1.48.0'
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
