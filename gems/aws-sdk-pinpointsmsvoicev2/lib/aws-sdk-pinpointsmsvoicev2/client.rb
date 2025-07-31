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

module Aws::PinpointSMSVoiceV2
  # An API client for PinpointSMSVoiceV2.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::PinpointSMSVoiceV2::Client.new(
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

    @identifier = :pinpointsmsvoicev2

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
    add_plugin(Aws::PinpointSMSVoiceV2::Plugins::Endpoints)

    # @overload initialize(options)
    #   @param [Hash] options
    #
    #   @option options [Array<Seahorse::Client::Plugin>] :plugins ([]])
    #     A list of plugins to apply to the client. Each plugin is either a
    #     class name or an instance of a plugin class.
    #
    #   @option options [required, Aws::CredentialProvider] :credentials
    #     Your AWS credentials used for authentication. This can be an instance of any one of the
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
    #     * EC2/ECS IMDS instance profile - When used by default, the timeouts
    #       are very aggressive. Construct and pass an instance of
    #       `Aws::InstanceProfileCredentials` or `Aws::ECSCredentials` to
    #       enable retries and extended timeouts. Instance profile credential
    #       fetching can be disabled by setting `ENV['AWS_EC2_METADATA_DISABLED']`
    #       to `true`.
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
    #     Your Bearer token used for authentication. This can be an instance of any one of the
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
    #   @option options [Aws::PinpointSMSVoiceV2::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::PinpointSMSVoiceV2::EndpointParameters`.
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

    # Associates the specified origination identity with a pool.
    #
    # If the origination identity is a phone number and is already
    # associated with another pool, an error is returned. A sender ID can be
    # associated with multiple pools.
    #
    # If the origination identity configuration doesn't match the pool's
    # configuration, an error is returned.
    #
    # @option params [required, String] :pool_id
    #   The pool to update with the new Identity. This value can be either the
    #   PoolId or PoolArn, and you can find these values using DescribePools.
    #
    #   If you are using a shared AWS End User Messaging SMS and Voice
    #   resource then you must use the full Amazon Resource Name(ARN).
    #
    # @option params [required, String] :origination_identity
    #   The origination identity to use, such as PhoneNumberId,
    #   PhoneNumberArn, SenderId, or SenderIdArn. You can use
    #   DescribePhoneNumbers to find the values for PhoneNumberId and
    #   PhoneNumberArn, while DescribeSenderIds can be used to get the values
    #   for SenderId and SenderIdArn.
    #
    #   If you are using a shared AWS End User Messaging SMS and Voice
    #   resource then you must use the full Amazon Resource Name(ARN).
    #
    # @option params [required, String] :iso_country_code
    #   The new two-character code, in ISO 3166-1 alpha-2 format, for the
    #   country or region of the origination identity.
    #
    # @option params [String] :client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If you don't specify a client token, a
    #   randomly generated token is used for the request to ensure
    #   idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::AssociateOriginationIdentityResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AssociateOriginationIdentityResult#pool_arn #pool_arn} => String
    #   * {Types::AssociateOriginationIdentityResult#pool_id #pool_id} => String
    #   * {Types::AssociateOriginationIdentityResult#origination_identity_arn #origination_identity_arn} => String
    #   * {Types::AssociateOriginationIdentityResult#origination_identity #origination_identity} => String
    #   * {Types::AssociateOriginationIdentityResult#iso_country_code #iso_country_code} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_origination_identity({
    #     pool_id: "PoolIdOrArn", # required
    #     origination_identity: "PhoneOrSenderIdOrArn", # required
    #     iso_country_code: "IsoCountryCode", # required
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.pool_arn #=> String
    #   resp.pool_id #=> String
    #   resp.origination_identity_arn #=> String
    #   resp.origination_identity #=> String
    #   resp.iso_country_code #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/AssociateOriginationIdentity AWS API Documentation
    #
    # @overload associate_origination_identity(params = {})
    # @param [Hash] params ({})
    def associate_origination_identity(params = {}, options = {})
      req = build_request(:associate_origination_identity, params)
      req.send_request(options)
    end

    # Associate a protect configuration with a configuration set. This
    # replaces the configuration sets current protect configuration. A
    # configuration set can only be associated with one protect
    # configuration at a time. A protect configuration can be associated
    # with multiple configuration sets.
    #
    # @option params [required, String] :protect_configuration_id
    #   The unique identifier for the protect configuration.
    #
    # @option params [required, String] :configuration_set_name
    #   The name of the ConfigurationSet.
    #
    # @return [Types::AssociateProtectConfigurationResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AssociateProtectConfigurationResult#configuration_set_arn #configuration_set_arn} => String
    #   * {Types::AssociateProtectConfigurationResult#configuration_set_name #configuration_set_name} => String
    #   * {Types::AssociateProtectConfigurationResult#protect_configuration_arn #protect_configuration_arn} => String
    #   * {Types::AssociateProtectConfigurationResult#protect_configuration_id #protect_configuration_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_protect_configuration({
    #     protect_configuration_id: "ProtectConfigurationIdOrArn", # required
    #     configuration_set_name: "ConfigurationSetNameOrArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.configuration_set_arn #=> String
    #   resp.configuration_set_name #=> String
    #   resp.protect_configuration_arn #=> String
    #   resp.protect_configuration_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/AssociateProtectConfiguration AWS API Documentation
    #
    # @overload associate_protect_configuration(params = {})
    # @param [Hash] params ({})
    def associate_protect_configuration(params = {}, options = {})
      req = build_request(:associate_protect_configuration, params)
      req.send_request(options)
    end

    # Creates a new configuration set. After you create the configuration
    # set, you can add one or more event destinations to it.
    #
    # A configuration set is a set of rules that you apply to the SMS and
    # voice messages that you send.
    #
    # When you send a message, you can optionally specify a single
    # configuration set.
    #
    # @option params [required, String] :configuration_set_name
    #   The name to use for the new configuration set.
    #
    # @option params [Array<Types::Tag>] :tags
    #   An array of key and value pair tags that's associated with the new
    #   configuration set.
    #
    # @option params [String] :client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If you don't specify a client token, a
    #   randomly generated token is used for the request to ensure
    #   idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateConfigurationSetResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateConfigurationSetResult#configuration_set_arn #configuration_set_arn} => String
    #   * {Types::CreateConfigurationSetResult#configuration_set_name #configuration_set_name} => String
    #   * {Types::CreateConfigurationSetResult#tags #tags} => Array&lt;Types::Tag&gt;
    #   * {Types::CreateConfigurationSetResult#created_timestamp #created_timestamp} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_configuration_set({
    #     configuration_set_name: "ConfigurationSetName", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.configuration_set_arn #=> String
    #   resp.configuration_set_name #=> String
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #   resp.created_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/CreateConfigurationSet AWS API Documentation
    #
    # @overload create_configuration_set(params = {})
    # @param [Hash] params ({})
    def create_configuration_set(params = {}, options = {})
      req = build_request(:create_configuration_set, params)
      req.send_request(options)
    end

    # Creates a new event destination in a configuration set.
    #
    # An event destination is a location where you send message events. The
    # event options are Amazon CloudWatch, Amazon Data Firehose, or Amazon
    # SNS. For example, when a message is delivered successfully, you can
    # send information about that event to an event destination, or send
    # notifications to endpoints that are subscribed to an Amazon SNS topic.
    #
    # You can only create one event destination at a time. You must provide
    # a value for a single event destination using either
    # `CloudWatchLogsDestination`, `KinesisFirehoseDestination` or
    # `SnsDestination`. If an event destination isn't provided then an
    # exception is returned.
    #
    # Each configuration set can contain between 0 and 5 event destinations.
    # Each event destination can contain a reference to a single
    # destination, such as a CloudWatch or Firehose destination.
    #
    # @option params [required, String] :configuration_set_name
    #   Either the name of the configuration set or the configuration set ARN
    #   to apply event logging to. The ConfigurateSetName and
    #   ConfigurationSetArn can be found using the DescribeConfigurationSets
    #   action.
    #
    # @option params [required, String] :event_destination_name
    #   The name that identifies the event destination.
    #
    # @option params [required, Array<String>] :matching_event_types
    #   An array of event types that determine which events to log. If "ALL"
    #   is used, then AWS End User Messaging SMS and Voice logs every event
    #   type.
    #
    #   <note markdown="1"> The `TEXT_SENT` event type is not supported.
    #
    #    </note>
    #
    # @option params [Types::CloudWatchLogsDestination] :cloud_watch_logs_destination
    #   An object that contains information about an event destination for
    #   logging to Amazon CloudWatch Logs.
    #
    # @option params [Types::KinesisFirehoseDestination] :kinesis_firehose_destination
    #   An object that contains information about an event destination for
    #   logging to Amazon Data Firehose.
    #
    # @option params [Types::SnsDestination] :sns_destination
    #   An object that contains information about an event destination for
    #   logging to Amazon SNS.
    #
    # @option params [String] :client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If you don't specify a client token, a
    #   randomly generated token is used for the request to ensure
    #   idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateEventDestinationResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateEventDestinationResult#configuration_set_arn #configuration_set_arn} => String
    #   * {Types::CreateEventDestinationResult#configuration_set_name #configuration_set_name} => String
    #   * {Types::CreateEventDestinationResult#event_destination #event_destination} => Types::EventDestination
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_event_destination({
    #     configuration_set_name: "ConfigurationSetNameOrArn", # required
    #     event_destination_name: "EventDestinationName", # required
    #     matching_event_types: ["ALL"], # required, accepts ALL, TEXT_ALL, TEXT_SENT, TEXT_PENDING, TEXT_QUEUED, TEXT_SUCCESSFUL, TEXT_DELIVERED, TEXT_INVALID, TEXT_INVALID_MESSAGE, TEXT_UNREACHABLE, TEXT_CARRIER_UNREACHABLE, TEXT_BLOCKED, TEXT_CARRIER_BLOCKED, TEXT_SPAM, TEXT_UNKNOWN, TEXT_TTL_EXPIRED, TEXT_PROTECT_BLOCKED, VOICE_ALL, VOICE_INITIATED, VOICE_RINGING, VOICE_ANSWERED, VOICE_COMPLETED, VOICE_BUSY, VOICE_NO_ANSWER, VOICE_FAILED, VOICE_TTL_EXPIRED, MEDIA_ALL, MEDIA_PENDING, MEDIA_QUEUED, MEDIA_SUCCESSFUL, MEDIA_DELIVERED, MEDIA_INVALID, MEDIA_INVALID_MESSAGE, MEDIA_UNREACHABLE, MEDIA_CARRIER_UNREACHABLE, MEDIA_BLOCKED, MEDIA_CARRIER_BLOCKED, MEDIA_SPAM, MEDIA_UNKNOWN, MEDIA_TTL_EXPIRED, MEDIA_FILE_INACCESSIBLE, MEDIA_FILE_TYPE_UNSUPPORTED, MEDIA_FILE_SIZE_EXCEEDED
    #     cloud_watch_logs_destination: {
    #       iam_role_arn: "IamRoleArn", # required
    #       log_group_arn: "LogGroupArn", # required
    #     },
    #     kinesis_firehose_destination: {
    #       iam_role_arn: "IamRoleArn", # required
    #       delivery_stream_arn: "DeliveryStreamArn", # required
    #     },
    #     sns_destination: {
    #       topic_arn: "SnsTopicArn", # required
    #     },
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.configuration_set_arn #=> String
    #   resp.configuration_set_name #=> String
    #   resp.event_destination.event_destination_name #=> String
    #   resp.event_destination.enabled #=> Boolean
    #   resp.event_destination.matching_event_types #=> Array
    #   resp.event_destination.matching_event_types[0] #=> String, one of "ALL", "TEXT_ALL", "TEXT_SENT", "TEXT_PENDING", "TEXT_QUEUED", "TEXT_SUCCESSFUL", "TEXT_DELIVERED", "TEXT_INVALID", "TEXT_INVALID_MESSAGE", "TEXT_UNREACHABLE", "TEXT_CARRIER_UNREACHABLE", "TEXT_BLOCKED", "TEXT_CARRIER_BLOCKED", "TEXT_SPAM", "TEXT_UNKNOWN", "TEXT_TTL_EXPIRED", "TEXT_PROTECT_BLOCKED", "VOICE_ALL", "VOICE_INITIATED", "VOICE_RINGING", "VOICE_ANSWERED", "VOICE_COMPLETED", "VOICE_BUSY", "VOICE_NO_ANSWER", "VOICE_FAILED", "VOICE_TTL_EXPIRED", "MEDIA_ALL", "MEDIA_PENDING", "MEDIA_QUEUED", "MEDIA_SUCCESSFUL", "MEDIA_DELIVERED", "MEDIA_INVALID", "MEDIA_INVALID_MESSAGE", "MEDIA_UNREACHABLE", "MEDIA_CARRIER_UNREACHABLE", "MEDIA_BLOCKED", "MEDIA_CARRIER_BLOCKED", "MEDIA_SPAM", "MEDIA_UNKNOWN", "MEDIA_TTL_EXPIRED", "MEDIA_FILE_INACCESSIBLE", "MEDIA_FILE_TYPE_UNSUPPORTED", "MEDIA_FILE_SIZE_EXCEEDED"
    #   resp.event_destination.cloud_watch_logs_destination.iam_role_arn #=> String
    #   resp.event_destination.cloud_watch_logs_destination.log_group_arn #=> String
    #   resp.event_destination.kinesis_firehose_destination.iam_role_arn #=> String
    #   resp.event_destination.kinesis_firehose_destination.delivery_stream_arn #=> String
    #   resp.event_destination.sns_destination.topic_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/CreateEventDestination AWS API Documentation
    #
    # @overload create_event_destination(params = {})
    # @param [Hash] params ({})
    def create_event_destination(params = {}, options = {})
      req = build_request(:create_event_destination, params)
      req.send_request(options)
    end

    # Creates a new opt-out list.
    #
    # If the opt-out list name already exists, an error is returned.
    #
    # An opt-out list is a list of phone numbers that are opted out, meaning
    # you can't send SMS or voice messages to them. If end user replies
    # with the keyword "STOP," an entry for the phone number is added to
    # the opt-out list. In addition to STOP, your recipients can use any
    # supported opt-out keyword, such as CANCEL or OPTOUT. For a list of
    # supported opt-out keywords, see [ SMS opt out ][1] in the *AWS End
    # User Messaging SMS User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/pinpoint/latest/userguide/channels-sms-manage.html#channels-sms-manage-optout
    #
    # @option params [required, String] :opt_out_list_name
    #   The name of the new OptOutList.
    #
    # @option params [Array<Types::Tag>] :tags
    #   An array of tags (key and value pairs) to associate with the new
    #   OptOutList.
    #
    # @option params [String] :client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If you don't specify a client token, a
    #   randomly generated token is used for the request to ensure
    #   idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateOptOutListResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateOptOutListResult#opt_out_list_arn #opt_out_list_arn} => String
    #   * {Types::CreateOptOutListResult#opt_out_list_name #opt_out_list_name} => String
    #   * {Types::CreateOptOutListResult#tags #tags} => Array&lt;Types::Tag&gt;
    #   * {Types::CreateOptOutListResult#created_timestamp #created_timestamp} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_opt_out_list({
    #     opt_out_list_name: "OptOutListName", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.opt_out_list_arn #=> String
    #   resp.opt_out_list_name #=> String
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #   resp.created_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/CreateOptOutList AWS API Documentation
    #
    # @overload create_opt_out_list(params = {})
    # @param [Hash] params ({})
    def create_opt_out_list(params = {}, options = {})
      req = build_request(:create_opt_out_list, params)
      req.send_request(options)
    end

    # Creates a new pool and associates the specified origination identity
    # to the pool. A pool can include one or more phone numbers and
    # SenderIds that are associated with your Amazon Web Services account.
    #
    # The new pool inherits its configuration from the specified origination
    # identity. This includes keywords, message type, opt-out list, two-way
    # configuration, and self-managed opt-out configuration. Deletion
    # protection isn't inherited from the origination identity and defaults
    # to false.
    #
    # If the origination identity is a phone number and is already
    # associated with another pool, an error is returned. A sender ID can be
    # associated with multiple pools.
    #
    # @option params [required, String] :origination_identity
    #   The origination identity to use such as a PhoneNumberId,
    #   PhoneNumberArn, SenderId or SenderIdArn. You can use
    #   DescribePhoneNumbers to find the values for PhoneNumberId and
    #   PhoneNumberArn while DescribeSenderIds can be used to get the values
    #   for SenderId and SenderIdArn.
    #
    #   After the pool is created you can add more origination identities to
    #   the pool by using [AssociateOriginationIdentity][1].
    #
    #   If you are using a shared AWS End User Messaging SMS and Voice
    #   resource then you must use the full Amazon Resource Name(ARN).
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/pinpoint/latest/apireference_smsvoicev2/API_AssociateOriginationIdentity.html
    #
    # @option params [required, String] :iso_country_code
    #   The new two-character code, in ISO 3166-1 alpha-2 format, for the
    #   country or region of the new pool.
    #
    # @option params [required, String] :message_type
    #   The type of message. Valid values are TRANSACTIONAL for messages that
    #   are critical or time-sensitive and PROMOTIONAL for messages that
    #   aren't critical or time-sensitive. After the pool is created the
    #   MessageType can't be changed.
    #
    # @option params [Boolean] :deletion_protection_enabled
    #   By default this is set to false. When set to true the pool can't be
    #   deleted. You can change this value using the UpdatePool action.
    #
    # @option params [Array<Types::Tag>] :tags
    #   An array of tags (key and value pairs) associated with the pool.
    #
    # @option params [String] :client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If you don't specify a client token, a
    #   randomly generated token is used for the request to ensure
    #   idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreatePoolResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreatePoolResult#pool_arn #pool_arn} => String
    #   * {Types::CreatePoolResult#pool_id #pool_id} => String
    #   * {Types::CreatePoolResult#status #status} => String
    #   * {Types::CreatePoolResult#message_type #message_type} => String
    #   * {Types::CreatePoolResult#two_way_enabled #two_way_enabled} => Boolean
    #   * {Types::CreatePoolResult#two_way_channel_arn #two_way_channel_arn} => String
    #   * {Types::CreatePoolResult#two_way_channel_role #two_way_channel_role} => String
    #   * {Types::CreatePoolResult#self_managed_opt_outs_enabled #self_managed_opt_outs_enabled} => Boolean
    #   * {Types::CreatePoolResult#opt_out_list_name #opt_out_list_name} => String
    #   * {Types::CreatePoolResult#shared_routes_enabled #shared_routes_enabled} => Boolean
    #   * {Types::CreatePoolResult#deletion_protection_enabled #deletion_protection_enabled} => Boolean
    #   * {Types::CreatePoolResult#tags #tags} => Array&lt;Types::Tag&gt;
    #   * {Types::CreatePoolResult#created_timestamp #created_timestamp} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_pool({
    #     origination_identity: "PhoneOrSenderIdOrArn", # required
    #     iso_country_code: "IsoCountryCode", # required
    #     message_type: "TRANSACTIONAL", # required, accepts TRANSACTIONAL, PROMOTIONAL
    #     deletion_protection_enabled: false,
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.pool_arn #=> String
    #   resp.pool_id #=> String
    #   resp.status #=> String, one of "CREATING", "ACTIVE", "DELETING"
    #   resp.message_type #=> String, one of "TRANSACTIONAL", "PROMOTIONAL"
    #   resp.two_way_enabled #=> Boolean
    #   resp.two_way_channel_arn #=> String
    #   resp.two_way_channel_role #=> String
    #   resp.self_managed_opt_outs_enabled #=> Boolean
    #   resp.opt_out_list_name #=> String
    #   resp.shared_routes_enabled #=> Boolean
    #   resp.deletion_protection_enabled #=> Boolean
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #   resp.created_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/CreatePool AWS API Documentation
    #
    # @overload create_pool(params = {})
    # @param [Hash] params ({})
    def create_pool(params = {}, options = {})
      req = build_request(:create_pool, params)
      req.send_request(options)
    end

    # Create a new protect configuration. By default all country rule sets
    # for each capability are set to `ALLOW`. Update the country rule sets
    # using `UpdateProtectConfigurationCountryRuleSet`. A protect
    # configurations name is stored as a Tag with the key set to `Name` and
    # value as the name of the protect configuration.
    #
    # @option params [String] :client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If you don't specify a client token, a
    #   randomly generated token is used for the request to ensure
    #   idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Boolean] :deletion_protection_enabled
    #   When set to true deletion protection is enabled. By default this is
    #   set to false.
    #
    # @option params [Array<Types::Tag>] :tags
    #   An array of key and value pair tags that are associated with the
    #   resource.
    #
    # @return [Types::CreateProtectConfigurationResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateProtectConfigurationResult#protect_configuration_arn #protect_configuration_arn} => String
    #   * {Types::CreateProtectConfigurationResult#protect_configuration_id #protect_configuration_id} => String
    #   * {Types::CreateProtectConfigurationResult#created_timestamp #created_timestamp} => Time
    #   * {Types::CreateProtectConfigurationResult#account_default #account_default} => Boolean
    #   * {Types::CreateProtectConfigurationResult#deletion_protection_enabled #deletion_protection_enabled} => Boolean
    #   * {Types::CreateProtectConfigurationResult#tags #tags} => Array&lt;Types::Tag&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_protect_configuration({
    #     client_token: "ClientToken",
    #     deletion_protection_enabled: false,
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
    #   resp.protect_configuration_arn #=> String
    #   resp.protect_configuration_id #=> String
    #   resp.created_timestamp #=> Time
    #   resp.account_default #=> Boolean
    #   resp.deletion_protection_enabled #=> Boolean
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/CreateProtectConfiguration AWS API Documentation
    #
    # @overload create_protect_configuration(params = {})
    # @param [Hash] params ({})
    def create_protect_configuration(params = {}, options = {})
      req = build_request(:create_protect_configuration, params)
      req.send_request(options)
    end

    # Creates a new registration based on the **RegistrationType** field.
    #
    # @option params [required, String] :registration_type
    #   The type of registration form to create. The list of
    #   **RegistrationTypes** can be found using the
    #   DescribeRegistrationTypeDefinitions action.
    #
    # @option params [Array<Types::Tag>] :tags
    #   An array of tags (key and value pairs) to associate with the
    #   registration.
    #
    # @option params [String] :client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If you don't specify a client token, a
    #   randomly generated token is used for the request to ensure
    #   idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateRegistrationResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateRegistrationResult#registration_arn #registration_arn} => String
    #   * {Types::CreateRegistrationResult#registration_id #registration_id} => String
    #   * {Types::CreateRegistrationResult#registration_type #registration_type} => String
    #   * {Types::CreateRegistrationResult#registration_status #registration_status} => String
    #   * {Types::CreateRegistrationResult#current_version_number #current_version_number} => Integer
    #   * {Types::CreateRegistrationResult#additional_attributes #additional_attributes} => Hash&lt;String,String&gt;
    #   * {Types::CreateRegistrationResult#tags #tags} => Array&lt;Types::Tag&gt;
    #   * {Types::CreateRegistrationResult#created_timestamp #created_timestamp} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_registration({
    #     registration_type: "RegistrationType", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.registration_arn #=> String
    #   resp.registration_id #=> String
    #   resp.registration_type #=> String
    #   resp.registration_status #=> String, one of "CREATED", "SUBMITTED", "REVIEWING", "REQUIRES_AUTHENTICATION", "PROVISIONING", "COMPLETE", "REQUIRES_UPDATES", "CLOSED", "DELETED"
    #   resp.current_version_number #=> Integer
    #   resp.additional_attributes #=> Hash
    #   resp.additional_attributes["String"] #=> String
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #   resp.created_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/CreateRegistration AWS API Documentation
    #
    # @overload create_registration(params = {})
    # @param [Hash] params ({})
    def create_registration(params = {}, options = {})
      req = build_request(:create_registration, params)
      req.send_request(options)
    end

    # Associate the registration with an origination identity such as a
    # phone number or sender ID.
    #
    # @option params [required, String] :registration_id
    #   The unique identifier for the registration.
    #
    # @option params [required, String] :resource_id
    #   The unique identifier for the origination identity. For example this
    #   could be a **PhoneNumberId** or **SenderId**.
    #
    # @return [Types::CreateRegistrationAssociationResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateRegistrationAssociationResult#registration_arn #registration_arn} => String
    #   * {Types::CreateRegistrationAssociationResult#registration_id #registration_id} => String
    #   * {Types::CreateRegistrationAssociationResult#registration_type #registration_type} => String
    #   * {Types::CreateRegistrationAssociationResult#resource_arn #resource_arn} => String
    #   * {Types::CreateRegistrationAssociationResult#resource_id #resource_id} => String
    #   * {Types::CreateRegistrationAssociationResult#resource_type #resource_type} => String
    #   * {Types::CreateRegistrationAssociationResult#iso_country_code #iso_country_code} => String
    #   * {Types::CreateRegistrationAssociationResult#phone_number #phone_number} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_registration_association({
    #     registration_id: "RegistrationIdOrArn", # required
    #     resource_id: "ResourceIdOrArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.registration_arn #=> String
    #   resp.registration_id #=> String
    #   resp.registration_type #=> String
    #   resp.resource_arn #=> String
    #   resp.resource_id #=> String
    #   resp.resource_type #=> String
    #   resp.iso_country_code #=> String
    #   resp.phone_number #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/CreateRegistrationAssociation AWS API Documentation
    #
    # @overload create_registration_association(params = {})
    # @param [Hash] params ({})
    def create_registration_association(params = {}, options = {})
      req = build_request(:create_registration_association, params)
      req.send_request(options)
    end

    # Create a new registration attachment to use for uploading a file or a
    # URL to a file. The maximum file size is 500KB and valid file
    # extensions are PDF, JPEG and PNG. For example, many sender ID
    # registrations require a signed “letter of authorization” (LOA) to be
    # submitted.
    #
    # Use either `AttachmentUrl` or `AttachmentBody` to upload your
    # attachment. If both are specified then an exception is returned.
    #
    # @option params [String, StringIO, File] :attachment_body
    #   The registration file to upload. The maximum file size is 500KB and
    #   valid file extensions are PDF, JPEG and PNG.
    #
    # @option params [String] :attachment_url
    #   Registration files have to be stored in an Amazon S3 bucket. The URI
    #   to use when sending is in the format `s3://BucketName/FileName`.
    #
    # @option params [Array<Types::Tag>] :tags
    #   An array of tags (key and value pairs) to associate with the
    #   registration attachment.
    #
    # @option params [String] :client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If you don't specify a client token, a
    #   randomly generated token is used for the request to ensure
    #   idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateRegistrationAttachmentResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateRegistrationAttachmentResult#registration_attachment_arn #registration_attachment_arn} => String
    #   * {Types::CreateRegistrationAttachmentResult#registration_attachment_id #registration_attachment_id} => String
    #   * {Types::CreateRegistrationAttachmentResult#attachment_status #attachment_status} => String
    #   * {Types::CreateRegistrationAttachmentResult#tags #tags} => Array&lt;Types::Tag&gt;
    #   * {Types::CreateRegistrationAttachmentResult#created_timestamp #created_timestamp} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_registration_attachment({
    #     attachment_body: "data",
    #     attachment_url: "AttachmentUrl",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.registration_attachment_arn #=> String
    #   resp.registration_attachment_id #=> String
    #   resp.attachment_status #=> String, one of "UPLOAD_IN_PROGRESS", "UPLOAD_COMPLETE", "UPLOAD_FAILED", "DELETED"
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #   resp.created_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/CreateRegistrationAttachment AWS API Documentation
    #
    # @overload create_registration_attachment(params = {})
    # @param [Hash] params ({})
    def create_registration_attachment(params = {}, options = {})
      req = build_request(:create_registration_attachment, params)
      req.send_request(options)
    end

    # Create a new version of the registration and increase the
    # **VersionNumber**. The previous version of the registration becomes
    # read-only.
    #
    # @option params [required, String] :registration_id
    #   The unique identifier for the registration.
    #
    # @return [Types::CreateRegistrationVersionResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateRegistrationVersionResult#registration_arn #registration_arn} => String
    #   * {Types::CreateRegistrationVersionResult#registration_id #registration_id} => String
    #   * {Types::CreateRegistrationVersionResult#version_number #version_number} => Integer
    #   * {Types::CreateRegistrationVersionResult#registration_version_status #registration_version_status} => String
    #   * {Types::CreateRegistrationVersionResult#registration_version_status_history #registration_version_status_history} => Types::RegistrationVersionStatusHistory
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_registration_version({
    #     registration_id: "RegistrationIdOrArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.registration_arn #=> String
    #   resp.registration_id #=> String
    #   resp.version_number #=> Integer
    #   resp.registration_version_status #=> String, one of "DRAFT", "SUBMITTED", "REVIEWING", "REQUIRES_AUTHENTICATION", "APPROVED", "DISCARDED", "DENIED", "REVOKED", "ARCHIVED"
    #   resp.registration_version_status_history.draft_timestamp #=> Time
    #   resp.registration_version_status_history.submitted_timestamp #=> Time
    #   resp.registration_version_status_history.reviewing_timestamp #=> Time
    #   resp.registration_version_status_history.requires_authentication_timestamp #=> Time
    #   resp.registration_version_status_history.approved_timestamp #=> Time
    #   resp.registration_version_status_history.discarded_timestamp #=> Time
    #   resp.registration_version_status_history.denied_timestamp #=> Time
    #   resp.registration_version_status_history.revoked_timestamp #=> Time
    #   resp.registration_version_status_history.archived_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/CreateRegistrationVersion AWS API Documentation
    #
    # @overload create_registration_version(params = {})
    # @param [Hash] params ({})
    def create_registration_version(params = {}, options = {})
      req = build_request(:create_registration_version, params)
      req.send_request(options)
    end

    # You can only send messages to verified destination numbers when your
    # account is in the sandbox. You can add up to 10 verified destination
    # numbers.
    #
    # @option params [required, String] :destination_phone_number
    #   The verified destination phone number, in E.164 format.
    #
    # @option params [Array<Types::Tag>] :tags
    #   An array of tags (key and value pairs) to associate with the
    #   destination number.
    #
    # @option params [String] :client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If you don't specify a client token, a
    #   randomly generated token is used for the request to ensure
    #   idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateVerifiedDestinationNumberResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateVerifiedDestinationNumberResult#verified_destination_number_arn #verified_destination_number_arn} => String
    #   * {Types::CreateVerifiedDestinationNumberResult#verified_destination_number_id #verified_destination_number_id} => String
    #   * {Types::CreateVerifiedDestinationNumberResult#destination_phone_number #destination_phone_number} => String
    #   * {Types::CreateVerifiedDestinationNumberResult#status #status} => String
    #   * {Types::CreateVerifiedDestinationNumberResult#tags #tags} => Array&lt;Types::Tag&gt;
    #   * {Types::CreateVerifiedDestinationNumberResult#created_timestamp #created_timestamp} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_verified_destination_number({
    #     destination_phone_number: "PhoneNumber", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.verified_destination_number_arn #=> String
    #   resp.verified_destination_number_id #=> String
    #   resp.destination_phone_number #=> String
    #   resp.status #=> String, one of "PENDING", "VERIFIED"
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #   resp.created_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/CreateVerifiedDestinationNumber AWS API Documentation
    #
    # @overload create_verified_destination_number(params = {})
    # @param [Hash] params ({})
    def create_verified_destination_number(params = {}, options = {})
      req = build_request(:create_verified_destination_number, params)
      req.send_request(options)
    end

    # Removes the current account default protect configuration.
    #
    # @return [Types::DeleteAccountDefaultProtectConfigurationResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteAccountDefaultProtectConfigurationResult#default_protect_configuration_arn #default_protect_configuration_arn} => String
    #   * {Types::DeleteAccountDefaultProtectConfigurationResult#default_protect_configuration_id #default_protect_configuration_id} => String
    #
    # @example Response structure
    #
    #   resp.default_protect_configuration_arn #=> String
    #   resp.default_protect_configuration_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/DeleteAccountDefaultProtectConfiguration AWS API Documentation
    #
    # @overload delete_account_default_protect_configuration(params = {})
    # @param [Hash] params ({})
    def delete_account_default_protect_configuration(params = {}, options = {})
      req = build_request(:delete_account_default_protect_configuration, params)
      req.send_request(options)
    end

    # Deletes an existing configuration set.
    #
    # A configuration set is a set of rules that you apply to voice and SMS
    # messages that you send. In a configuration set, you can specify a
    # destination for specific types of events related to voice and SMS
    # messages.
    #
    # @option params [required, String] :configuration_set_name
    #   The name of the configuration set or the configuration set ARN that
    #   you want to delete. The ConfigurationSetName and ConfigurationSetArn
    #   can be found using the DescribeConfigurationSets action.
    #
    # @return [Types::DeleteConfigurationSetResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteConfigurationSetResult#configuration_set_arn #configuration_set_arn} => String
    #   * {Types::DeleteConfigurationSetResult#configuration_set_name #configuration_set_name} => String
    #   * {Types::DeleteConfigurationSetResult#event_destinations #event_destinations} => Array&lt;Types::EventDestination&gt;
    #   * {Types::DeleteConfigurationSetResult#default_message_type #default_message_type} => String
    #   * {Types::DeleteConfigurationSetResult#default_sender_id #default_sender_id} => String
    #   * {Types::DeleteConfigurationSetResult#default_message_feedback_enabled #default_message_feedback_enabled} => Boolean
    #   * {Types::DeleteConfigurationSetResult#created_timestamp #created_timestamp} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_configuration_set({
    #     configuration_set_name: "ConfigurationSetNameOrArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.configuration_set_arn #=> String
    #   resp.configuration_set_name #=> String
    #   resp.event_destinations #=> Array
    #   resp.event_destinations[0].event_destination_name #=> String
    #   resp.event_destinations[0].enabled #=> Boolean
    #   resp.event_destinations[0].matching_event_types #=> Array
    #   resp.event_destinations[0].matching_event_types[0] #=> String, one of "ALL", "TEXT_ALL", "TEXT_SENT", "TEXT_PENDING", "TEXT_QUEUED", "TEXT_SUCCESSFUL", "TEXT_DELIVERED", "TEXT_INVALID", "TEXT_INVALID_MESSAGE", "TEXT_UNREACHABLE", "TEXT_CARRIER_UNREACHABLE", "TEXT_BLOCKED", "TEXT_CARRIER_BLOCKED", "TEXT_SPAM", "TEXT_UNKNOWN", "TEXT_TTL_EXPIRED", "TEXT_PROTECT_BLOCKED", "VOICE_ALL", "VOICE_INITIATED", "VOICE_RINGING", "VOICE_ANSWERED", "VOICE_COMPLETED", "VOICE_BUSY", "VOICE_NO_ANSWER", "VOICE_FAILED", "VOICE_TTL_EXPIRED", "MEDIA_ALL", "MEDIA_PENDING", "MEDIA_QUEUED", "MEDIA_SUCCESSFUL", "MEDIA_DELIVERED", "MEDIA_INVALID", "MEDIA_INVALID_MESSAGE", "MEDIA_UNREACHABLE", "MEDIA_CARRIER_UNREACHABLE", "MEDIA_BLOCKED", "MEDIA_CARRIER_BLOCKED", "MEDIA_SPAM", "MEDIA_UNKNOWN", "MEDIA_TTL_EXPIRED", "MEDIA_FILE_INACCESSIBLE", "MEDIA_FILE_TYPE_UNSUPPORTED", "MEDIA_FILE_SIZE_EXCEEDED"
    #   resp.event_destinations[0].cloud_watch_logs_destination.iam_role_arn #=> String
    #   resp.event_destinations[0].cloud_watch_logs_destination.log_group_arn #=> String
    #   resp.event_destinations[0].kinesis_firehose_destination.iam_role_arn #=> String
    #   resp.event_destinations[0].kinesis_firehose_destination.delivery_stream_arn #=> String
    #   resp.event_destinations[0].sns_destination.topic_arn #=> String
    #   resp.default_message_type #=> String, one of "TRANSACTIONAL", "PROMOTIONAL"
    #   resp.default_sender_id #=> String
    #   resp.default_message_feedback_enabled #=> Boolean
    #   resp.created_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/DeleteConfigurationSet AWS API Documentation
    #
    # @overload delete_configuration_set(params = {})
    # @param [Hash] params ({})
    def delete_configuration_set(params = {}, options = {})
      req = build_request(:delete_configuration_set, params)
      req.send_request(options)
    end

    # Deletes an existing default message type on a configuration set.
    #
    # A message type is a type of messages that you plan to send. If you
    # send account-related messages or time-sensitive messages such as
    # one-time passcodes, choose **Transactional**. If you plan to send
    # messages that contain marketing material or other promotional content,
    # choose **Promotional**. This setting applies to your entire Amazon Web
    # Services account.
    #
    # @option params [required, String] :configuration_set_name
    #   The name of the configuration set or the configuration set Amazon
    #   Resource Name (ARN) to delete the default message type from. The
    #   ConfigurationSetName and ConfigurationSetArn can be found using the
    #   DescribeConfigurationSets action.
    #
    # @return [Types::DeleteDefaultMessageTypeResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteDefaultMessageTypeResult#configuration_set_arn #configuration_set_arn} => String
    #   * {Types::DeleteDefaultMessageTypeResult#configuration_set_name #configuration_set_name} => String
    #   * {Types::DeleteDefaultMessageTypeResult#message_type #message_type} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_default_message_type({
    #     configuration_set_name: "ConfigurationSetNameOrArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.configuration_set_arn #=> String
    #   resp.configuration_set_name #=> String
    #   resp.message_type #=> String, one of "TRANSACTIONAL", "PROMOTIONAL"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/DeleteDefaultMessageType AWS API Documentation
    #
    # @overload delete_default_message_type(params = {})
    # @param [Hash] params ({})
    def delete_default_message_type(params = {}, options = {})
      req = build_request(:delete_default_message_type, params)
      req.send_request(options)
    end

    # Deletes an existing default sender ID on a configuration set.
    #
    # A default sender ID is the identity that appears on recipients'
    # devices when they receive SMS messages. Support for sender ID
    # capabilities varies by country or region.
    #
    # @option params [required, String] :configuration_set_name
    #   The name of the configuration set or the configuration set Amazon
    #   Resource Name (ARN) to delete the default sender ID from. The
    #   ConfigurationSetName and ConfigurationSetArn can be found using the
    #   DescribeConfigurationSets action.
    #
    # @return [Types::DeleteDefaultSenderIdResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteDefaultSenderIdResult#configuration_set_arn #configuration_set_arn} => String
    #   * {Types::DeleteDefaultSenderIdResult#configuration_set_name #configuration_set_name} => String
    #   * {Types::DeleteDefaultSenderIdResult#sender_id #sender_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_default_sender_id({
    #     configuration_set_name: "ConfigurationSetNameOrArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.configuration_set_arn #=> String
    #   resp.configuration_set_name #=> String
    #   resp.sender_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/DeleteDefaultSenderId AWS API Documentation
    #
    # @overload delete_default_sender_id(params = {})
    # @param [Hash] params ({})
    def delete_default_sender_id(params = {}, options = {})
      req = build_request(:delete_default_sender_id, params)
      req.send_request(options)
    end

    # Deletes an existing event destination.
    #
    # An event destination is a location where you send response information
    # about the messages that you send. For example, when a message is
    # delivered successfully, you can send information about that event to
    # an Amazon CloudWatch destination, or send notifications to endpoints
    # that are subscribed to an Amazon SNS topic.
    #
    # @option params [required, String] :configuration_set_name
    #   The name of the configuration set or the configuration set's Amazon
    #   Resource Name (ARN) to remove the event destination from. The
    #   ConfigurateSetName and ConfigurationSetArn can be found using the
    #   DescribeConfigurationSets action.
    #
    # @option params [required, String] :event_destination_name
    #   The name of the event destination to delete.
    #
    # @return [Types::DeleteEventDestinationResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteEventDestinationResult#configuration_set_arn #configuration_set_arn} => String
    #   * {Types::DeleteEventDestinationResult#configuration_set_name #configuration_set_name} => String
    #   * {Types::DeleteEventDestinationResult#event_destination #event_destination} => Types::EventDestination
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_event_destination({
    #     configuration_set_name: "ConfigurationSetNameOrArn", # required
    #     event_destination_name: "EventDestinationName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.configuration_set_arn #=> String
    #   resp.configuration_set_name #=> String
    #   resp.event_destination.event_destination_name #=> String
    #   resp.event_destination.enabled #=> Boolean
    #   resp.event_destination.matching_event_types #=> Array
    #   resp.event_destination.matching_event_types[0] #=> String, one of "ALL", "TEXT_ALL", "TEXT_SENT", "TEXT_PENDING", "TEXT_QUEUED", "TEXT_SUCCESSFUL", "TEXT_DELIVERED", "TEXT_INVALID", "TEXT_INVALID_MESSAGE", "TEXT_UNREACHABLE", "TEXT_CARRIER_UNREACHABLE", "TEXT_BLOCKED", "TEXT_CARRIER_BLOCKED", "TEXT_SPAM", "TEXT_UNKNOWN", "TEXT_TTL_EXPIRED", "TEXT_PROTECT_BLOCKED", "VOICE_ALL", "VOICE_INITIATED", "VOICE_RINGING", "VOICE_ANSWERED", "VOICE_COMPLETED", "VOICE_BUSY", "VOICE_NO_ANSWER", "VOICE_FAILED", "VOICE_TTL_EXPIRED", "MEDIA_ALL", "MEDIA_PENDING", "MEDIA_QUEUED", "MEDIA_SUCCESSFUL", "MEDIA_DELIVERED", "MEDIA_INVALID", "MEDIA_INVALID_MESSAGE", "MEDIA_UNREACHABLE", "MEDIA_CARRIER_UNREACHABLE", "MEDIA_BLOCKED", "MEDIA_CARRIER_BLOCKED", "MEDIA_SPAM", "MEDIA_UNKNOWN", "MEDIA_TTL_EXPIRED", "MEDIA_FILE_INACCESSIBLE", "MEDIA_FILE_TYPE_UNSUPPORTED", "MEDIA_FILE_SIZE_EXCEEDED"
    #   resp.event_destination.cloud_watch_logs_destination.iam_role_arn #=> String
    #   resp.event_destination.cloud_watch_logs_destination.log_group_arn #=> String
    #   resp.event_destination.kinesis_firehose_destination.iam_role_arn #=> String
    #   resp.event_destination.kinesis_firehose_destination.delivery_stream_arn #=> String
    #   resp.event_destination.sns_destination.topic_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/DeleteEventDestination AWS API Documentation
    #
    # @overload delete_event_destination(params = {})
    # @param [Hash] params ({})
    def delete_event_destination(params = {}, options = {})
      req = build_request(:delete_event_destination, params)
      req.send_request(options)
    end

    # Deletes an existing keyword from an origination phone number or pool.
    #
    # A keyword is a word that you can search for on a particular phone
    # number or pool. It is also a specific word or phrase that an end user
    # can send to your number to elicit a response, such as an informational
    # message or a special offer. When your number receives a message that
    # begins with a keyword, AWS End User Messaging SMS and Voice responds
    # with a customizable message.
    #
    # Keywords "HELP" and "STOP" can't be deleted or modified.
    #
    # @option params [required, String] :origination_identity
    #   The origination identity to use such as a PhoneNumberId,
    #   PhoneNumberArn, PoolId or PoolArn. You can use DescribePhoneNumbers to
    #   find the values for PhoneNumberId and PhoneNumberArn and DescribePools
    #   to find the values of PoolId and PoolArn.
    #
    #   If you are using a shared AWS End User Messaging SMS and Voice
    #   resource then you must use the full Amazon Resource Name(ARN).
    #
    # @option params [required, String] :keyword
    #   The keyword to delete.
    #
    # @return [Types::DeleteKeywordResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteKeywordResult#origination_identity_arn #origination_identity_arn} => String
    #   * {Types::DeleteKeywordResult#origination_identity #origination_identity} => String
    #   * {Types::DeleteKeywordResult#keyword #keyword} => String
    #   * {Types::DeleteKeywordResult#keyword_message #keyword_message} => String
    #   * {Types::DeleteKeywordResult#keyword_action #keyword_action} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_keyword({
    #     origination_identity: "PhoneOrPoolIdOrArn", # required
    #     keyword: "Keyword", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.origination_identity_arn #=> String
    #   resp.origination_identity #=> String
    #   resp.keyword #=> String
    #   resp.keyword_message #=> String
    #   resp.keyword_action #=> String, one of "AUTOMATIC_RESPONSE", "OPT_OUT", "OPT_IN"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/DeleteKeyword AWS API Documentation
    #
    # @overload delete_keyword(params = {})
    # @param [Hash] params ({})
    def delete_keyword(params = {}, options = {})
      req = build_request(:delete_keyword, params)
      req.send_request(options)
    end

    # Deletes an account-level monthly spending limit override for sending
    # multimedia messages (MMS). Deleting a spend limit override will set
    # the `EnforcedLimit` to equal the `MaxLimit`, which is controlled by
    # Amazon Web Services. For more information on spend limits (quotas) see
    # [Quotas for Server Migration Service][1] in the *Server Migration
    # Service User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/sms-voice/latest/userguide/quotas.html
    #
    # @return [Types::DeleteMediaMessageSpendLimitOverrideResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteMediaMessageSpendLimitOverrideResult#monthly_limit #monthly_limit} => Integer
    #
    # @example Response structure
    #
    #   resp.monthly_limit #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/DeleteMediaMessageSpendLimitOverride AWS API Documentation
    #
    # @overload delete_media_message_spend_limit_override(params = {})
    # @param [Hash] params ({})
    def delete_media_message_spend_limit_override(params = {}, options = {})
      req = build_request(:delete_media_message_spend_limit_override, params)
      req.send_request(options)
    end

    # Deletes an existing opt-out list. All opted out phone numbers in the
    # opt-out list are deleted.
    #
    # If the specified opt-out list name doesn't exist or is in-use by an
    # origination phone number or pool, an error is returned.
    #
    # @option params [required, String] :opt_out_list_name
    #   The OptOutListName or OptOutListArn of the OptOutList to delete. You
    #   can use DescribeOptOutLists to find the values for OptOutListName and
    #   OptOutListArn.
    #
    #   If you are using a shared AWS End User Messaging SMS and Voice
    #   resource then you must use the full Amazon Resource Name(ARN).
    #
    # @return [Types::DeleteOptOutListResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteOptOutListResult#opt_out_list_arn #opt_out_list_arn} => String
    #   * {Types::DeleteOptOutListResult#opt_out_list_name #opt_out_list_name} => String
    #   * {Types::DeleteOptOutListResult#created_timestamp #created_timestamp} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_opt_out_list({
    #     opt_out_list_name: "OptOutListNameOrArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.opt_out_list_arn #=> String
    #   resp.opt_out_list_name #=> String
    #   resp.created_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/DeleteOptOutList AWS API Documentation
    #
    # @overload delete_opt_out_list(params = {})
    # @param [Hash] params ({})
    def delete_opt_out_list(params = {}, options = {})
      req = build_request(:delete_opt_out_list, params)
      req.send_request(options)
    end

    # Deletes an existing opted out destination phone number from the
    # specified opt-out list.
    #
    # Each destination phone number can only be deleted once every 30 days.
    #
    # If the specified destination phone number doesn't exist or if the
    # opt-out list doesn't exist, an error is returned.
    #
    # @option params [required, String] :opt_out_list_name
    #   The OptOutListName or OptOutListArn to remove the phone number from.
    #
    #   If you are using a shared AWS End User Messaging SMS and Voice
    #   resource then you must use the full Amazon Resource Name(ARN).
    #
    # @option params [required, String] :opted_out_number
    #   The phone number, in E.164 format, to remove from the OptOutList.
    #
    # @return [Types::DeleteOptedOutNumberResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteOptedOutNumberResult#opt_out_list_arn #opt_out_list_arn} => String
    #   * {Types::DeleteOptedOutNumberResult#opt_out_list_name #opt_out_list_name} => String
    #   * {Types::DeleteOptedOutNumberResult#opted_out_number #opted_out_number} => String
    #   * {Types::DeleteOptedOutNumberResult#opted_out_timestamp #opted_out_timestamp} => Time
    #   * {Types::DeleteOptedOutNumberResult#end_user_opted_out #end_user_opted_out} => Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_opted_out_number({
    #     opt_out_list_name: "OptOutListNameOrArn", # required
    #     opted_out_number: "PhoneNumber", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.opt_out_list_arn #=> String
    #   resp.opt_out_list_name #=> String
    #   resp.opted_out_number #=> String
    #   resp.opted_out_timestamp #=> Time
    #   resp.end_user_opted_out #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/DeleteOptedOutNumber AWS API Documentation
    #
    # @overload delete_opted_out_number(params = {})
    # @param [Hash] params ({})
    def delete_opted_out_number(params = {}, options = {})
      req = build_request(:delete_opted_out_number, params)
      req.send_request(options)
    end

    # Deletes an existing pool. Deleting a pool disassociates all
    # origination identities from that pool.
    #
    # If the pool status isn't active or if deletion protection is enabled,
    # an error is returned.
    #
    # A pool is a collection of phone numbers and SenderIds. A pool can
    # include one or more phone numbers and SenderIds that are associated
    # with your Amazon Web Services account.
    #
    # @option params [required, String] :pool_id
    #   The PoolId or PoolArn of the pool to delete. You can use DescribePools
    #   to find the values for PoolId and PoolArn .
    #
    #   If you are using a shared AWS End User Messaging SMS and Voice
    #   resource then you must use the full Amazon Resource Name(ARN).
    #
    # @return [Types::DeletePoolResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeletePoolResult#pool_arn #pool_arn} => String
    #   * {Types::DeletePoolResult#pool_id #pool_id} => String
    #   * {Types::DeletePoolResult#status #status} => String
    #   * {Types::DeletePoolResult#message_type #message_type} => String
    #   * {Types::DeletePoolResult#two_way_enabled #two_way_enabled} => Boolean
    #   * {Types::DeletePoolResult#two_way_channel_arn #two_way_channel_arn} => String
    #   * {Types::DeletePoolResult#two_way_channel_role #two_way_channel_role} => String
    #   * {Types::DeletePoolResult#self_managed_opt_outs_enabled #self_managed_opt_outs_enabled} => Boolean
    #   * {Types::DeletePoolResult#opt_out_list_name #opt_out_list_name} => String
    #   * {Types::DeletePoolResult#shared_routes_enabled #shared_routes_enabled} => Boolean
    #   * {Types::DeletePoolResult#created_timestamp #created_timestamp} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_pool({
    #     pool_id: "PoolIdOrArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.pool_arn #=> String
    #   resp.pool_id #=> String
    #   resp.status #=> String, one of "CREATING", "ACTIVE", "DELETING"
    #   resp.message_type #=> String, one of "TRANSACTIONAL", "PROMOTIONAL"
    #   resp.two_way_enabled #=> Boolean
    #   resp.two_way_channel_arn #=> String
    #   resp.two_way_channel_role #=> String
    #   resp.self_managed_opt_outs_enabled #=> Boolean
    #   resp.opt_out_list_name #=> String
    #   resp.shared_routes_enabled #=> Boolean
    #   resp.created_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/DeletePool AWS API Documentation
    #
    # @overload delete_pool(params = {})
    # @param [Hash] params ({})
    def delete_pool(params = {}, options = {})
      req = build_request(:delete_pool, params)
      req.send_request(options)
    end

    # Permanently delete the protect configuration. The protect
    # configuration must have deletion protection disabled and must not be
    # associated as the account default protect configuration or associated
    # with a configuration set.
    #
    # @option params [required, String] :protect_configuration_id
    #   The unique identifier for the protect configuration.
    #
    # @return [Types::DeleteProtectConfigurationResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteProtectConfigurationResult#protect_configuration_arn #protect_configuration_arn} => String
    #   * {Types::DeleteProtectConfigurationResult#protect_configuration_id #protect_configuration_id} => String
    #   * {Types::DeleteProtectConfigurationResult#created_timestamp #created_timestamp} => Time
    #   * {Types::DeleteProtectConfigurationResult#account_default #account_default} => Boolean
    #   * {Types::DeleteProtectConfigurationResult#deletion_protection_enabled #deletion_protection_enabled} => Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_protect_configuration({
    #     protect_configuration_id: "ProtectConfigurationIdOrArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.protect_configuration_arn #=> String
    #   resp.protect_configuration_id #=> String
    #   resp.created_timestamp #=> Time
    #   resp.account_default #=> Boolean
    #   resp.deletion_protection_enabled #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/DeleteProtectConfiguration AWS API Documentation
    #
    # @overload delete_protect_configuration(params = {})
    # @param [Hash] params ({})
    def delete_protect_configuration(params = {}, options = {})
      req = build_request(:delete_protect_configuration, params)
      req.send_request(options)
    end

    # Permanently delete the protect configuration rule set number override.
    #
    # @option params [required, String] :protect_configuration_id
    #   The unique identifier for the protect configuration.
    #
    # @option params [required, String] :destination_phone_number
    #   The destination phone number in E.164 format.
    #
    # @return [Types::DeleteProtectConfigurationRuleSetNumberOverrideResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteProtectConfigurationRuleSetNumberOverrideResult#protect_configuration_arn #protect_configuration_arn} => String
    #   * {Types::DeleteProtectConfigurationRuleSetNumberOverrideResult#protect_configuration_id #protect_configuration_id} => String
    #   * {Types::DeleteProtectConfigurationRuleSetNumberOverrideResult#destination_phone_number #destination_phone_number} => String
    #   * {Types::DeleteProtectConfigurationRuleSetNumberOverrideResult#created_timestamp #created_timestamp} => Time
    #   * {Types::DeleteProtectConfigurationRuleSetNumberOverrideResult#action #action} => String
    #   * {Types::DeleteProtectConfigurationRuleSetNumberOverrideResult#iso_country_code #iso_country_code} => String
    #   * {Types::DeleteProtectConfigurationRuleSetNumberOverrideResult#expiration_timestamp #expiration_timestamp} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_protect_configuration_rule_set_number_override({
    #     protect_configuration_id: "ProtectConfigurationIdOrArn", # required
    #     destination_phone_number: "PhoneNumber", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.protect_configuration_arn #=> String
    #   resp.protect_configuration_id #=> String
    #   resp.destination_phone_number #=> String
    #   resp.created_timestamp #=> Time
    #   resp.action #=> String, one of "ALLOW", "BLOCK"
    #   resp.iso_country_code #=> String
    #   resp.expiration_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/DeleteProtectConfigurationRuleSetNumberOverride AWS API Documentation
    #
    # @overload delete_protect_configuration_rule_set_number_override(params = {})
    # @param [Hash] params ({})
    def delete_protect_configuration_rule_set_number_override(params = {}, options = {})
      req = build_request(:delete_protect_configuration_rule_set_number_override, params)
      req.send_request(options)
    end

    # Permanently delete an existing registration from your account.
    #
    # @option params [required, String] :registration_id
    #   The unique identifier for the registration.
    #
    # @return [Types::DeleteRegistrationResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteRegistrationResult#registration_arn #registration_arn} => String
    #   * {Types::DeleteRegistrationResult#registration_id #registration_id} => String
    #   * {Types::DeleteRegistrationResult#registration_type #registration_type} => String
    #   * {Types::DeleteRegistrationResult#registration_status #registration_status} => String
    #   * {Types::DeleteRegistrationResult#current_version_number #current_version_number} => Integer
    #   * {Types::DeleteRegistrationResult#approved_version_number #approved_version_number} => Integer
    #   * {Types::DeleteRegistrationResult#latest_denied_version_number #latest_denied_version_number} => Integer
    #   * {Types::DeleteRegistrationResult#additional_attributes #additional_attributes} => Hash&lt;String,String&gt;
    #   * {Types::DeleteRegistrationResult#created_timestamp #created_timestamp} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_registration({
    #     registration_id: "RegistrationIdOrArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.registration_arn #=> String
    #   resp.registration_id #=> String
    #   resp.registration_type #=> String
    #   resp.registration_status #=> String, one of "CREATED", "SUBMITTED", "REVIEWING", "REQUIRES_AUTHENTICATION", "PROVISIONING", "COMPLETE", "REQUIRES_UPDATES", "CLOSED", "DELETED"
    #   resp.current_version_number #=> Integer
    #   resp.approved_version_number #=> Integer
    #   resp.latest_denied_version_number #=> Integer
    #   resp.additional_attributes #=> Hash
    #   resp.additional_attributes["String"] #=> String
    #   resp.created_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/DeleteRegistration AWS API Documentation
    #
    # @overload delete_registration(params = {})
    # @param [Hash] params ({})
    def delete_registration(params = {}, options = {})
      req = build_request(:delete_registration, params)
      req.send_request(options)
    end

    # Permanently delete the specified registration attachment.
    #
    # @option params [required, String] :registration_attachment_id
    #   The unique identifier for the registration attachment.
    #
    # @return [Types::DeleteRegistrationAttachmentResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteRegistrationAttachmentResult#registration_attachment_arn #registration_attachment_arn} => String
    #   * {Types::DeleteRegistrationAttachmentResult#registration_attachment_id #registration_attachment_id} => String
    #   * {Types::DeleteRegistrationAttachmentResult#attachment_status #attachment_status} => String
    #   * {Types::DeleteRegistrationAttachmentResult#attachment_upload_error_reason #attachment_upload_error_reason} => String
    #   * {Types::DeleteRegistrationAttachmentResult#created_timestamp #created_timestamp} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_registration_attachment({
    #     registration_attachment_id: "RegistrationAttachmentIdOrArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.registration_attachment_arn #=> String
    #   resp.registration_attachment_id #=> String
    #   resp.attachment_status #=> String, one of "UPLOAD_IN_PROGRESS", "UPLOAD_COMPLETE", "UPLOAD_FAILED", "DELETED"
    #   resp.attachment_upload_error_reason #=> String, one of "INTERNAL_ERROR"
    #   resp.created_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/DeleteRegistrationAttachment AWS API Documentation
    #
    # @overload delete_registration_attachment(params = {})
    # @param [Hash] params ({})
    def delete_registration_attachment(params = {}, options = {})
      req = build_request(:delete_registration_attachment, params)
      req.send_request(options)
    end

    # Delete the value in a registration form field.
    #
    # @option params [required, String] :registration_id
    #   The unique identifier for the registration.
    #
    # @option params [required, String] :field_path
    #   The path to the registration form field. You can use
    #   DescribeRegistrationFieldDefinitions for a list of **FieldPaths**.
    #
    # @return [Types::DeleteRegistrationFieldValueResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteRegistrationFieldValueResult#registration_arn #registration_arn} => String
    #   * {Types::DeleteRegistrationFieldValueResult#registration_id #registration_id} => String
    #   * {Types::DeleteRegistrationFieldValueResult#version_number #version_number} => Integer
    #   * {Types::DeleteRegistrationFieldValueResult#field_path #field_path} => String
    #   * {Types::DeleteRegistrationFieldValueResult#select_choices #select_choices} => Array&lt;String&gt;
    #   * {Types::DeleteRegistrationFieldValueResult#text_value #text_value} => String
    #   * {Types::DeleteRegistrationFieldValueResult#registration_attachment_id #registration_attachment_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_registration_field_value({
    #     registration_id: "RegistrationIdOrArn", # required
    #     field_path: "FieldPath", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.registration_arn #=> String
    #   resp.registration_id #=> String
    #   resp.version_number #=> Integer
    #   resp.field_path #=> String
    #   resp.select_choices #=> Array
    #   resp.select_choices[0] #=> String
    #   resp.text_value #=> String
    #   resp.registration_attachment_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/DeleteRegistrationFieldValue AWS API Documentation
    #
    # @overload delete_registration_field_value(params = {})
    # @param [Hash] params ({})
    def delete_registration_field_value(params = {}, options = {})
      req = build_request(:delete_registration_field_value, params)
      req.send_request(options)
    end

    # Deletes the resource-based policy document attached to the AWS End
    # User Messaging SMS and Voice resource. A shared resource can be a
    # Pool, Opt-out list, Sender Id, or Phone number.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the AWS End User Messaging SMS and
    #   Voice resource you're deleting the resource-based policy from.
    #
    # @return [Types::DeleteResourcePolicyResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteResourcePolicyResult#resource_arn #resource_arn} => String
    #   * {Types::DeleteResourcePolicyResult#policy #policy} => String
    #   * {Types::DeleteResourcePolicyResult#created_timestamp #created_timestamp} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_resource_policy({
    #     resource_arn: "AmazonResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_arn #=> String
    #   resp.policy #=> String
    #   resp.created_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/DeleteResourcePolicy AWS API Documentation
    #
    # @overload delete_resource_policy(params = {})
    # @param [Hash] params ({})
    def delete_resource_policy(params = {}, options = {})
      req = build_request(:delete_resource_policy, params)
      req.send_request(options)
    end

    # Deletes an account-level monthly spending limit override for sending
    # text messages. Deleting a spend limit override will set the
    # `EnforcedLimit` to equal the `MaxLimit`, which is controlled by Amazon
    # Web Services. For more information on spend limits (quotas) see
    # [Quotas ][1] in the *AWS End User Messaging SMS User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/sms-voice/latest/userguide/quotas.html
    #
    # @return [Types::DeleteTextMessageSpendLimitOverrideResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteTextMessageSpendLimitOverrideResult#monthly_limit #monthly_limit} => Integer
    #
    # @example Response structure
    #
    #   resp.monthly_limit #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/DeleteTextMessageSpendLimitOverride AWS API Documentation
    #
    # @overload delete_text_message_spend_limit_override(params = {})
    # @param [Hash] params ({})
    def delete_text_message_spend_limit_override(params = {}, options = {})
      req = build_request(:delete_text_message_spend_limit_override, params)
      req.send_request(options)
    end

    # Delete a verified destination phone number.
    #
    # @option params [required, String] :verified_destination_number_id
    #   The unique identifier for the verified destination phone number.
    #
    # @return [Types::DeleteVerifiedDestinationNumberResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteVerifiedDestinationNumberResult#verified_destination_number_arn #verified_destination_number_arn} => String
    #   * {Types::DeleteVerifiedDestinationNumberResult#verified_destination_number_id #verified_destination_number_id} => String
    #   * {Types::DeleteVerifiedDestinationNumberResult#destination_phone_number #destination_phone_number} => String
    #   * {Types::DeleteVerifiedDestinationNumberResult#created_timestamp #created_timestamp} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_verified_destination_number({
    #     verified_destination_number_id: "VerifiedDestinationNumberIdOrArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.verified_destination_number_arn #=> String
    #   resp.verified_destination_number_id #=> String
    #   resp.destination_phone_number #=> String
    #   resp.created_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/DeleteVerifiedDestinationNumber AWS API Documentation
    #
    # @overload delete_verified_destination_number(params = {})
    # @param [Hash] params ({})
    def delete_verified_destination_number(params = {}, options = {})
      req = build_request(:delete_verified_destination_number, params)
      req.send_request(options)
    end

    # Deletes an account level monthly spend limit override for sending
    # voice messages. Deleting a spend limit override sets the
    # `EnforcedLimit` equal to the `MaxLimit`, which is controlled by Amazon
    # Web Services. For more information on spending limits (quotas) see
    # [Quotas ][1] in the *AWS End User Messaging SMS User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/sms-voice/latest/userguide/quotas.html
    #
    # @return [Types::DeleteVoiceMessageSpendLimitOverrideResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteVoiceMessageSpendLimitOverrideResult#monthly_limit #monthly_limit} => Integer
    #
    # @example Response structure
    #
    #   resp.monthly_limit #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/DeleteVoiceMessageSpendLimitOverride AWS API Documentation
    #
    # @overload delete_voice_message_spend_limit_override(params = {})
    # @param [Hash] params ({})
    def delete_voice_message_spend_limit_override(params = {}, options = {})
      req = build_request(:delete_voice_message_spend_limit_override, params)
      req.send_request(options)
    end

    # Describes attributes of your Amazon Web Services account. The
    # supported account attributes include account tier, which indicates
    # whether your account is in the sandbox or production environment. When
    # you're ready to move your account out of the sandbox, create an
    # Amazon Web Services Support case for a service limit increase request.
    #
    # New accounts are placed into an SMS or voice sandbox. The sandbox
    # protects both Amazon Web Services end recipients and SMS or voice
    # recipients from fraud and abuse.
    #
    # @option params [String] :next_token
    #   The token to be used for the next set of paginated results. You don't
    #   need to supply a value for this field in the initial request.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per each request.
    #
    # @return [Types::DescribeAccountAttributesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAccountAttributesResult#account_attributes #account_attributes} => Array&lt;Types::AccountAttribute&gt;
    #   * {Types::DescribeAccountAttributesResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_account_attributes({
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.account_attributes #=> Array
    #   resp.account_attributes[0].name #=> String, one of "ACCOUNT_TIER", "DEFAULT_PROTECT_CONFIGURATION_ID"
    #   resp.account_attributes[0].value #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/DescribeAccountAttributes AWS API Documentation
    #
    # @overload describe_account_attributes(params = {})
    # @param [Hash] params ({})
    def describe_account_attributes(params = {}, options = {})
      req = build_request(:describe_account_attributes, params)
      req.send_request(options)
    end

    # Describes the current AWS End User Messaging SMS and Voice SMS Voice
    # V2 resource quotas for your account. The description for a quota
    # includes the quota name, current usage toward that quota, and the
    # quota's maximum value.
    #
    # When you establish an Amazon Web Services account, the account has
    # initial quotas on the maximum number of configuration sets, opt-out
    # lists, phone numbers, and pools that you can create in a given Region.
    # For more information see [Quotas ][1] in the *AWS End User Messaging
    # SMS User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/sms-voice/latest/userguide/quotas.html
    #
    # @option params [String] :next_token
    #   The token to be used for the next set of paginated results. You don't
    #   need to supply a value for this field in the initial request.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per each request.
    #
    # @return [Types::DescribeAccountLimitsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAccountLimitsResult#account_limits #account_limits} => Array&lt;Types::AccountLimit&gt;
    #   * {Types::DescribeAccountLimitsResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_account_limits({
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.account_limits #=> Array
    #   resp.account_limits[0].name #=> String, one of "PHONE_NUMBERS", "POOLS", "CONFIGURATION_SETS", "OPT_OUT_LISTS", "SENDER_IDS", "REGISTRATIONS", "REGISTRATION_ATTACHMENTS", "VERIFIED_DESTINATION_NUMBERS"
    #   resp.account_limits[0].used #=> Integer
    #   resp.account_limits[0].max #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/DescribeAccountLimits AWS API Documentation
    #
    # @overload describe_account_limits(params = {})
    # @param [Hash] params ({})
    def describe_account_limits(params = {}, options = {})
      req = build_request(:describe_account_limits, params)
      req.send_request(options)
    end

    # Describes the specified configuration sets or all in your account.
    #
    # If you specify configuration set names, the output includes
    # information for only the specified configuration sets. If you specify
    # filters, the output includes information for only those configuration
    # sets that meet the filter criteria. If you don't specify
    # configuration set names or filters, the output includes information
    # for all configuration sets.
    #
    # If you specify a configuration set name that isn't valid, an error is
    # returned.
    #
    # @option params [Array<String>] :configuration_set_names
    #   An array of strings. Each element can be either a ConfigurationSetName
    #   or ConfigurationSetArn.
    #
    # @option params [Array<Types::ConfigurationSetFilter>] :filters
    #   An array of filters to apply to the results that are returned.
    #
    # @option params [String] :next_token
    #   The token to be used for the next set of paginated results. You don't
    #   need to supply a value for this field in the initial request.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per each request.
    #
    # @return [Types::DescribeConfigurationSetsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeConfigurationSetsResult#configuration_sets #configuration_sets} => Array&lt;Types::ConfigurationSetInformation&gt;
    #   * {Types::DescribeConfigurationSetsResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_configuration_sets({
    #     configuration_set_names: ["ConfigurationSetNameOrArn"],
    #     filters: [
    #       {
    #         name: "event-destination-name", # required, accepts event-destination-name, matching-event-types, default-message-type, default-sender-id, default-message-feedback-enabled, protect-configuration-id
    #         values: ["FilterValue"], # required
    #       },
    #     ],
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.configuration_sets #=> Array
    #   resp.configuration_sets[0].configuration_set_arn #=> String
    #   resp.configuration_sets[0].configuration_set_name #=> String
    #   resp.configuration_sets[0].event_destinations #=> Array
    #   resp.configuration_sets[0].event_destinations[0].event_destination_name #=> String
    #   resp.configuration_sets[0].event_destinations[0].enabled #=> Boolean
    #   resp.configuration_sets[0].event_destinations[0].matching_event_types #=> Array
    #   resp.configuration_sets[0].event_destinations[0].matching_event_types[0] #=> String, one of "ALL", "TEXT_ALL", "TEXT_SENT", "TEXT_PENDING", "TEXT_QUEUED", "TEXT_SUCCESSFUL", "TEXT_DELIVERED", "TEXT_INVALID", "TEXT_INVALID_MESSAGE", "TEXT_UNREACHABLE", "TEXT_CARRIER_UNREACHABLE", "TEXT_BLOCKED", "TEXT_CARRIER_BLOCKED", "TEXT_SPAM", "TEXT_UNKNOWN", "TEXT_TTL_EXPIRED", "TEXT_PROTECT_BLOCKED", "VOICE_ALL", "VOICE_INITIATED", "VOICE_RINGING", "VOICE_ANSWERED", "VOICE_COMPLETED", "VOICE_BUSY", "VOICE_NO_ANSWER", "VOICE_FAILED", "VOICE_TTL_EXPIRED", "MEDIA_ALL", "MEDIA_PENDING", "MEDIA_QUEUED", "MEDIA_SUCCESSFUL", "MEDIA_DELIVERED", "MEDIA_INVALID", "MEDIA_INVALID_MESSAGE", "MEDIA_UNREACHABLE", "MEDIA_CARRIER_UNREACHABLE", "MEDIA_BLOCKED", "MEDIA_CARRIER_BLOCKED", "MEDIA_SPAM", "MEDIA_UNKNOWN", "MEDIA_TTL_EXPIRED", "MEDIA_FILE_INACCESSIBLE", "MEDIA_FILE_TYPE_UNSUPPORTED", "MEDIA_FILE_SIZE_EXCEEDED"
    #   resp.configuration_sets[0].event_destinations[0].cloud_watch_logs_destination.iam_role_arn #=> String
    #   resp.configuration_sets[0].event_destinations[0].cloud_watch_logs_destination.log_group_arn #=> String
    #   resp.configuration_sets[0].event_destinations[0].kinesis_firehose_destination.iam_role_arn #=> String
    #   resp.configuration_sets[0].event_destinations[0].kinesis_firehose_destination.delivery_stream_arn #=> String
    #   resp.configuration_sets[0].event_destinations[0].sns_destination.topic_arn #=> String
    #   resp.configuration_sets[0].default_message_type #=> String, one of "TRANSACTIONAL", "PROMOTIONAL"
    #   resp.configuration_sets[0].default_sender_id #=> String
    #   resp.configuration_sets[0].default_message_feedback_enabled #=> Boolean
    #   resp.configuration_sets[0].created_timestamp #=> Time
    #   resp.configuration_sets[0].protect_configuration_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/DescribeConfigurationSets AWS API Documentation
    #
    # @overload describe_configuration_sets(params = {})
    # @param [Hash] params ({})
    def describe_configuration_sets(params = {}, options = {})
      req = build_request(:describe_configuration_sets, params)
      req.send_request(options)
    end

    # Describes the specified keywords or all keywords on your origination
    # phone number or pool.
    #
    # A keyword is a word that you can search for on a particular phone
    # number or pool. It is also a specific word or phrase that an end user
    # can send to your number to elicit a response, such as an informational
    # message or a special offer. When your number receives a message that
    # begins with a keyword, AWS End User Messaging SMS and Voice responds
    # with a customizable message.
    #
    # If you specify a keyword that isn't valid, an error is returned.
    #
    # @option params [required, String] :origination_identity
    #   The origination identity to use such as a PhoneNumberId,
    #   PhoneNumberArn, SenderId or SenderIdArn. You can use
    #   DescribePhoneNumbers to find the values for PhoneNumberId and
    #   PhoneNumberArn while DescribeSenderIds can be used to get the values
    #   for SenderId and SenderIdArn.
    #
    #   If you are using a shared AWS End User Messaging SMS and Voice
    #   resource then you must use the full Amazon Resource Name(ARN).
    #
    # @option params [Array<String>] :keywords
    #   An array of keywords to search for.
    #
    # @option params [Array<Types::KeywordFilter>] :filters
    #   An array of keyword filters to filter the results.
    #
    # @option params [String] :next_token
    #   The token to be used for the next set of paginated results. You don't
    #   need to supply a value for this field in the initial request.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per each request.
    #
    # @return [Types::DescribeKeywordsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeKeywordsResult#origination_identity_arn #origination_identity_arn} => String
    #   * {Types::DescribeKeywordsResult#origination_identity #origination_identity} => String
    #   * {Types::DescribeKeywordsResult#keywords #keywords} => Array&lt;Types::KeywordInformation&gt;
    #   * {Types::DescribeKeywordsResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_keywords({
    #     origination_identity: "PhoneOrPoolIdOrArn", # required
    #     keywords: ["Keyword"],
    #     filters: [
    #       {
    #         name: "keyword-action", # required, accepts keyword-action
    #         values: ["FilterValue"], # required
    #       },
    #     ],
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.origination_identity_arn #=> String
    #   resp.origination_identity #=> String
    #   resp.keywords #=> Array
    #   resp.keywords[0].keyword #=> String
    #   resp.keywords[0].keyword_message #=> String
    #   resp.keywords[0].keyword_action #=> String, one of "AUTOMATIC_RESPONSE", "OPT_OUT", "OPT_IN"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/DescribeKeywords AWS API Documentation
    #
    # @overload describe_keywords(params = {})
    # @param [Hash] params ({})
    def describe_keywords(params = {}, options = {})
      req = build_request(:describe_keywords, params)
      req.send_request(options)
    end

    # Describes the specified opt-out list or all opt-out lists in your
    # account.
    #
    # If you specify opt-out list names, the output includes information for
    # only the specified opt-out lists. Opt-out lists include only those
    # that meet the filter criteria. If you don't specify opt-out list
    # names or filters, the output includes information for all opt-out
    # lists.
    #
    # If you specify an opt-out list name that isn't valid, an error is
    # returned.
    #
    # @option params [Array<String>] :opt_out_list_names
    #   The OptOutLists to show the details of. This is an array of strings
    #   that can be either the OptOutListName or OptOutListArn.
    #
    #   If you are using a shared AWS End User Messaging SMS and Voice
    #   resource then you must use the full Amazon Resource Name(ARN).
    #
    # @option params [String] :next_token
    #   The token to be used for the next set of paginated results. You don't
    #   need to supply a value for this field in the initial request.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per each request.
    #
    # @option params [String] :owner
    #   Use `SELF` to filter the list of Opt-Out List to ones your account
    #   owns or use `SHARED` to filter on Opt-Out List shared with your
    #   account. The `Owner` and `OptOutListNames` parameters can't be used
    #   at the same time.
    #
    # @return [Types::DescribeOptOutListsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeOptOutListsResult#opt_out_lists #opt_out_lists} => Array&lt;Types::OptOutListInformation&gt;
    #   * {Types::DescribeOptOutListsResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_opt_out_lists({
    #     opt_out_list_names: ["OptOutListNameOrArn"],
    #     next_token: "NextToken",
    #     max_results: 1,
    #     owner: "SELF", # accepts SELF, SHARED
    #   })
    #
    # @example Response structure
    #
    #   resp.opt_out_lists #=> Array
    #   resp.opt_out_lists[0].opt_out_list_arn #=> String
    #   resp.opt_out_lists[0].opt_out_list_name #=> String
    #   resp.opt_out_lists[0].created_timestamp #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/DescribeOptOutLists AWS API Documentation
    #
    # @overload describe_opt_out_lists(params = {})
    # @param [Hash] params ({})
    def describe_opt_out_lists(params = {}, options = {})
      req = build_request(:describe_opt_out_lists, params)
      req.send_request(options)
    end

    # Describes the specified opted out destination numbers or all opted out
    # destination numbers in an opt-out list.
    #
    # If you specify opted out numbers, the output includes information for
    # only the specified opted out numbers. If you specify filters, the
    # output includes information for only those opted out numbers that meet
    # the filter criteria. If you don't specify opted out numbers or
    # filters, the output includes information for all opted out destination
    # numbers in your opt-out list.
    #
    # If you specify an opted out number that isn't valid, an exception is
    # returned.
    #
    # @option params [required, String] :opt_out_list_name
    #   The OptOutListName or OptOutListArn of the OptOutList. You can use
    #   DescribeOptOutLists to find the values for OptOutListName and
    #   OptOutListArn.
    #
    #   If you are using a shared AWS End User Messaging SMS and Voice
    #   resource then you must use the full Amazon Resource Name(ARN).
    #
    # @option params [Array<String>] :opted_out_numbers
    #   An array of phone numbers to search for in the OptOutList.
    #
    #   If you specify an opted out number that isn't valid, an exception is
    #   returned.
    #
    # @option params [Array<Types::OptedOutFilter>] :filters
    #   An array of OptedOutFilter objects to filter the results on.
    #
    # @option params [String] :next_token
    #   The token to be used for the next set of paginated results. You don't
    #   need to supply a value for this field in the initial request.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per each request.
    #
    # @return [Types::DescribeOptedOutNumbersResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeOptedOutNumbersResult#opt_out_list_arn #opt_out_list_arn} => String
    #   * {Types::DescribeOptedOutNumbersResult#opt_out_list_name #opt_out_list_name} => String
    #   * {Types::DescribeOptedOutNumbersResult#opted_out_numbers #opted_out_numbers} => Array&lt;Types::OptedOutNumberInformation&gt;
    #   * {Types::DescribeOptedOutNumbersResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_opted_out_numbers({
    #     opt_out_list_name: "OptOutListNameOrArn", # required
    #     opted_out_numbers: ["PhoneNumber"],
    #     filters: [
    #       {
    #         name: "end-user-opted-out", # required, accepts end-user-opted-out
    #         values: ["FilterValue"], # required
    #       },
    #     ],
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.opt_out_list_arn #=> String
    #   resp.opt_out_list_name #=> String
    #   resp.opted_out_numbers #=> Array
    #   resp.opted_out_numbers[0].opted_out_number #=> String
    #   resp.opted_out_numbers[0].opted_out_timestamp #=> Time
    #   resp.opted_out_numbers[0].end_user_opted_out #=> Boolean
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/DescribeOptedOutNumbers AWS API Documentation
    #
    # @overload describe_opted_out_numbers(params = {})
    # @param [Hash] params ({})
    def describe_opted_out_numbers(params = {}, options = {})
      req = build_request(:describe_opted_out_numbers, params)
      req.send_request(options)
    end

    # Describes the specified origination phone number, or all the phone
    # numbers in your account.
    #
    # If you specify phone number IDs, the output includes information for
    # only the specified phone numbers. If you specify filters, the output
    # includes information for only those phone numbers that meet the filter
    # criteria. If you don't specify phone number IDs or filters, the
    # output includes information for all phone numbers.
    #
    # If you specify a phone number ID that isn't valid, an error is
    # returned.
    #
    # @option params [Array<String>] :phone_number_ids
    #   The unique identifier of phone numbers to find information about. This
    #   is an array of strings that can be either the PhoneNumberId or
    #   PhoneNumberArn.
    #
    #   If you are using a shared AWS End User Messaging SMS and Voice
    #   resource then you must use the full Amazon Resource Name(ARN).
    #
    # @option params [Array<Types::PhoneNumberFilter>] :filters
    #   An array of PhoneNumberFilter objects to filter the results.
    #
    # @option params [String] :next_token
    #   The token to be used for the next set of paginated results. You don't
    #   need to supply a value for this field in the initial request.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per each request.
    #
    # @option params [String] :owner
    #   Use `SELF` to filter the list of phone numbers to ones your account
    #   owns or use `SHARED` to filter on phone numbers shared with your
    #   account. The `Owner` and `PhoneNumberIds` parameters can't be used at
    #   the same time.
    #
    # @return [Types::DescribePhoneNumbersResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribePhoneNumbersResult#phone_numbers #phone_numbers} => Array&lt;Types::PhoneNumberInformation&gt;
    #   * {Types::DescribePhoneNumbersResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_phone_numbers({
    #     phone_number_ids: ["PhoneNumberIdOrArn"],
    #     filters: [
    #       {
    #         name: "status", # required, accepts status, iso-country-code, message-type, number-capability, number-type, two-way-enabled, self-managed-opt-outs-enabled, opt-out-list-name, deletion-protection-enabled, two-way-channel-arn
    #         values: ["FilterValue"], # required
    #       },
    #     ],
    #     next_token: "NextToken",
    #     max_results: 1,
    #     owner: "SELF", # accepts SELF, SHARED
    #   })
    #
    # @example Response structure
    #
    #   resp.phone_numbers #=> Array
    #   resp.phone_numbers[0].phone_number_arn #=> String
    #   resp.phone_numbers[0].phone_number_id #=> String
    #   resp.phone_numbers[0].phone_number #=> String
    #   resp.phone_numbers[0].status #=> String, one of "PENDING", "ACTIVE", "ASSOCIATING", "DISASSOCIATING", "DELETED"
    #   resp.phone_numbers[0].iso_country_code #=> String
    #   resp.phone_numbers[0].message_type #=> String, one of "TRANSACTIONAL", "PROMOTIONAL"
    #   resp.phone_numbers[0].number_capabilities #=> Array
    #   resp.phone_numbers[0].number_capabilities[0] #=> String, one of "SMS", "VOICE", "MMS"
    #   resp.phone_numbers[0].number_type #=> String, one of "SHORT_CODE", "LONG_CODE", "TOLL_FREE", "TEN_DLC", "SIMULATOR"
    #   resp.phone_numbers[0].monthly_leasing_price #=> String
    #   resp.phone_numbers[0].two_way_enabled #=> Boolean
    #   resp.phone_numbers[0].two_way_channel_arn #=> String
    #   resp.phone_numbers[0].two_way_channel_role #=> String
    #   resp.phone_numbers[0].self_managed_opt_outs_enabled #=> Boolean
    #   resp.phone_numbers[0].opt_out_list_name #=> String
    #   resp.phone_numbers[0].deletion_protection_enabled #=> Boolean
    #   resp.phone_numbers[0].pool_id #=> String
    #   resp.phone_numbers[0].registration_id #=> String
    #   resp.phone_numbers[0].created_timestamp #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/DescribePhoneNumbers AWS API Documentation
    #
    # @overload describe_phone_numbers(params = {})
    # @param [Hash] params ({})
    def describe_phone_numbers(params = {}, options = {})
      req = build_request(:describe_phone_numbers, params)
      req.send_request(options)
    end

    # Retrieves the specified pools or all pools associated with your Amazon
    # Web Services account.
    #
    # If you specify pool IDs, the output includes information for only the
    # specified pools. If you specify filters, the output includes
    # information for only those pools that meet the filter criteria. If you
    # don't specify pool IDs or filters, the output includes information
    # for all pools.
    #
    # If you specify a pool ID that isn't valid, an error is returned.
    #
    # A pool is a collection of phone numbers and SenderIds. A pool can
    # include one or more phone numbers and SenderIds that are associated
    # with your Amazon Web Services account.
    #
    # @option params [Array<String>] :pool_ids
    #   The unique identifier of pools to find. This is an array of strings
    #   that can be either the PoolId or PoolArn.
    #
    #   If you are using a shared AWS End User Messaging SMS and Voice
    #   resource then you must use the full Amazon Resource Name(ARN).
    #
    # @option params [Array<Types::PoolFilter>] :filters
    #   An array of PoolFilter objects to filter the results.
    #
    # @option params [String] :next_token
    #   The token to be used for the next set of paginated results. You don't
    #   need to supply a value for this field in the initial request.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per each request.
    #
    # @option params [String] :owner
    #   Use `SELF` to filter the list of Pools to ones your account owns or
    #   use `SHARED` to filter on Pools shared with your account. The `Owner`
    #   and `PoolIds` parameters can't be used at the same time.
    #
    # @return [Types::DescribePoolsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribePoolsResult#pools #pools} => Array&lt;Types::PoolInformation&gt;
    #   * {Types::DescribePoolsResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_pools({
    #     pool_ids: ["PoolIdOrArn"],
    #     filters: [
    #       {
    #         name: "status", # required, accepts status, message-type, two-way-enabled, self-managed-opt-outs-enabled, opt-out-list-name, shared-routes-enabled, deletion-protection-enabled, two-way-channel-arn
    #         values: ["FilterValue"], # required
    #       },
    #     ],
    #     next_token: "NextToken",
    #     max_results: 1,
    #     owner: "SELF", # accepts SELF, SHARED
    #   })
    #
    # @example Response structure
    #
    #   resp.pools #=> Array
    #   resp.pools[0].pool_arn #=> String
    #   resp.pools[0].pool_id #=> String
    #   resp.pools[0].status #=> String, one of "CREATING", "ACTIVE", "DELETING"
    #   resp.pools[0].message_type #=> String, one of "TRANSACTIONAL", "PROMOTIONAL"
    #   resp.pools[0].two_way_enabled #=> Boolean
    #   resp.pools[0].two_way_channel_arn #=> String
    #   resp.pools[0].two_way_channel_role #=> String
    #   resp.pools[0].self_managed_opt_outs_enabled #=> Boolean
    #   resp.pools[0].opt_out_list_name #=> String
    #   resp.pools[0].shared_routes_enabled #=> Boolean
    #   resp.pools[0].deletion_protection_enabled #=> Boolean
    #   resp.pools[0].created_timestamp #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/DescribePools AWS API Documentation
    #
    # @overload describe_pools(params = {})
    # @param [Hash] params ({})
    def describe_pools(params = {}, options = {})
      req = build_request(:describe_pools, params)
      req.send_request(options)
    end

    # Retrieves the protect configurations that match any of filters. If a
    # filter isn’t provided then all protect configurations are returned.
    #
    # @option params [Array<String>] :protect_configuration_ids
    #   An array of protect configuration identifiers to search for.
    #
    # @option params [Array<Types::ProtectConfigurationFilter>] :filters
    #   An array of ProtectConfigurationFilter objects to filter the results.
    #
    # @option params [String] :next_token
    #   The token to be used for the next set of paginated results. You don't
    #   need to supply a value for this field in the initial request.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per each request.
    #
    # @return [Types::DescribeProtectConfigurationsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeProtectConfigurationsResult#protect_configurations #protect_configurations} => Array&lt;Types::ProtectConfigurationInformation&gt;
    #   * {Types::DescribeProtectConfigurationsResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_protect_configurations({
    #     protect_configuration_ids: ["ProtectConfigurationIdOrArn"],
    #     filters: [
    #       {
    #         name: "account-default", # required, accepts account-default, deletion-protection-enabled
    #         values: ["FilterValue"], # required
    #       },
    #     ],
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.protect_configurations #=> Array
    #   resp.protect_configurations[0].protect_configuration_arn #=> String
    #   resp.protect_configurations[0].protect_configuration_id #=> String
    #   resp.protect_configurations[0].created_timestamp #=> Time
    #   resp.protect_configurations[0].account_default #=> Boolean
    #   resp.protect_configurations[0].deletion_protection_enabled #=> Boolean
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/DescribeProtectConfigurations AWS API Documentation
    #
    # @overload describe_protect_configurations(params = {})
    # @param [Hash] params ({})
    def describe_protect_configurations(params = {}, options = {})
      req = build_request(:describe_protect_configurations, params)
      req.send_request(options)
    end

    # Retrieves the specified registration attachments or all registration
    # attachments associated with your Amazon Web Services account.
    #
    # @option params [Array<String>] :registration_attachment_ids
    #   The unique identifier of registration attachments to find. This is an
    #   array of **RegistrationAttachmentId**.
    #
    # @option params [Array<Types::RegistrationAttachmentFilter>] :filters
    #   An array of RegistrationAttachmentFilter objects to filter the
    #   results.
    #
    # @option params [String] :next_token
    #   The token to be used for the next set of paginated results. You don't
    #   need to supply a value for this field in the initial request.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per each request.
    #
    # @return [Types::DescribeRegistrationAttachmentsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeRegistrationAttachmentsResult#registration_attachments #registration_attachments} => Array&lt;Types::RegistrationAttachmentsInformation&gt;
    #   * {Types::DescribeRegistrationAttachmentsResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_registration_attachments({
    #     registration_attachment_ids: ["RegistrationIdOrArn"],
    #     filters: [
    #       {
    #         name: "attachment-status", # required, accepts attachment-status
    #         values: ["FilterValue"], # required
    #       },
    #     ],
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.registration_attachments #=> Array
    #   resp.registration_attachments[0].registration_attachment_arn #=> String
    #   resp.registration_attachments[0].registration_attachment_id #=> String
    #   resp.registration_attachments[0].attachment_status #=> String, one of "UPLOAD_IN_PROGRESS", "UPLOAD_COMPLETE", "UPLOAD_FAILED", "DELETED"
    #   resp.registration_attachments[0].attachment_upload_error_reason #=> String, one of "INTERNAL_ERROR"
    #   resp.registration_attachments[0].created_timestamp #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/DescribeRegistrationAttachments AWS API Documentation
    #
    # @overload describe_registration_attachments(params = {})
    # @param [Hash] params ({})
    def describe_registration_attachments(params = {}, options = {})
      req = build_request(:describe_registration_attachments, params)
      req.send_request(options)
    end

    # Retrieves the specified registration type field definitions. You can
    # use DescribeRegistrationFieldDefinitions to view the requirements for
    # creating, filling out, and submitting each registration type.
    #
    # @option params [required, String] :registration_type
    #   The type of registration form. The list of **RegistrationTypes** can
    #   be found using the DescribeRegistrationTypeDefinitions action.
    #
    # @option params [String] :section_path
    #   The path to the section of the registration.
    #
    # @option params [Array<String>] :field_paths
    #   An array of paths to the registration form field.
    #
    # @option params [String] :next_token
    #   The token to be used for the next set of paginated results. You don't
    #   need to supply a value for this field in the initial request.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per each request.
    #
    # @return [Types::DescribeRegistrationFieldDefinitionsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeRegistrationFieldDefinitionsResult#registration_type #registration_type} => String
    #   * {Types::DescribeRegistrationFieldDefinitionsResult#registration_field_definitions #registration_field_definitions} => Array&lt;Types::RegistrationFieldDefinition&gt;
    #   * {Types::DescribeRegistrationFieldDefinitionsResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_registration_field_definitions({
    #     registration_type: "RegistrationType", # required
    #     section_path: "SectionPath",
    #     field_paths: ["FieldPath"],
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.registration_type #=> String
    #   resp.registration_field_definitions #=> Array
    #   resp.registration_field_definitions[0].section_path #=> String
    #   resp.registration_field_definitions[0].field_path #=> String
    #   resp.registration_field_definitions[0].field_type #=> String, one of "SELECT", "TEXT", "ATTACHMENT"
    #   resp.registration_field_definitions[0].field_requirement #=> String, one of "REQUIRED", "CONDITIONAL", "OPTIONAL"
    #   resp.registration_field_definitions[0].select_validation.min_choices #=> Integer
    #   resp.registration_field_definitions[0].select_validation.max_choices #=> Integer
    #   resp.registration_field_definitions[0].select_validation.options #=> Array
    #   resp.registration_field_definitions[0].select_validation.options[0] #=> String
    #   resp.registration_field_definitions[0].text_validation.min_length #=> Integer
    #   resp.registration_field_definitions[0].text_validation.max_length #=> Integer
    #   resp.registration_field_definitions[0].text_validation.pattern #=> String
    #   resp.registration_field_definitions[0].display_hints.title #=> String
    #   resp.registration_field_definitions[0].display_hints.short_description #=> String
    #   resp.registration_field_definitions[0].display_hints.long_description #=> String
    #   resp.registration_field_definitions[0].display_hints.documentation_title #=> String
    #   resp.registration_field_definitions[0].display_hints.documentation_link #=> String
    #   resp.registration_field_definitions[0].display_hints.select_option_descriptions #=> Array
    #   resp.registration_field_definitions[0].display_hints.select_option_descriptions[0].option #=> String
    #   resp.registration_field_definitions[0].display_hints.select_option_descriptions[0].title #=> String
    #   resp.registration_field_definitions[0].display_hints.select_option_descriptions[0].description #=> String
    #   resp.registration_field_definitions[0].display_hints.text_validation_description #=> String
    #   resp.registration_field_definitions[0].display_hints.example_text_value #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/DescribeRegistrationFieldDefinitions AWS API Documentation
    #
    # @overload describe_registration_field_definitions(params = {})
    # @param [Hash] params ({})
    def describe_registration_field_definitions(params = {}, options = {})
      req = build_request(:describe_registration_field_definitions, params)
      req.send_request(options)
    end

    # Retrieves the specified registration field values.
    #
    # @option params [required, String] :registration_id
    #   The unique identifier for the registration.
    #
    # @option params [Integer] :version_number
    #   The version number of the registration.
    #
    # @option params [String] :section_path
    #   The path to the section of the registration.
    #
    # @option params [Array<String>] :field_paths
    #   An array of paths to the registration form field.
    #
    # @option params [String] :next_token
    #   The token to be used for the next set of paginated results. You don't
    #   need to supply a value for this field in the initial request.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per each request.
    #
    # @return [Types::DescribeRegistrationFieldValuesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeRegistrationFieldValuesResult#registration_arn #registration_arn} => String
    #   * {Types::DescribeRegistrationFieldValuesResult#registration_id #registration_id} => String
    #   * {Types::DescribeRegistrationFieldValuesResult#version_number #version_number} => Integer
    #   * {Types::DescribeRegistrationFieldValuesResult#registration_field_values #registration_field_values} => Array&lt;Types::RegistrationFieldValueInformation&gt;
    #   * {Types::DescribeRegistrationFieldValuesResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_registration_field_values({
    #     registration_id: "RegistrationIdOrArn", # required
    #     version_number: 1,
    #     section_path: "SectionPath",
    #     field_paths: ["FieldPath"],
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.registration_arn #=> String
    #   resp.registration_id #=> String
    #   resp.version_number #=> Integer
    #   resp.registration_field_values #=> Array
    #   resp.registration_field_values[0].field_path #=> String
    #   resp.registration_field_values[0].select_choices #=> Array
    #   resp.registration_field_values[0].select_choices[0] #=> String
    #   resp.registration_field_values[0].text_value #=> String
    #   resp.registration_field_values[0].registration_attachment_id #=> String
    #   resp.registration_field_values[0].denied_reason #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/DescribeRegistrationFieldValues AWS API Documentation
    #
    # @overload describe_registration_field_values(params = {})
    # @param [Hash] params ({})
    def describe_registration_field_values(params = {}, options = {})
      req = build_request(:describe_registration_field_values, params)
      req.send_request(options)
    end

    # Retrieves the specified registration section definitions. You can use
    # DescribeRegistrationSectionDefinitions to view the requirements for
    # creating, filling out, and submitting each registration type.
    #
    # @option params [required, String] :registration_type
    #   The type of registration form. The list of **RegistrationTypes** can
    #   be found using the DescribeRegistrationTypeDefinitions action.
    #
    # @option params [Array<String>] :section_paths
    #   An array of paths for the registration form section.
    #
    # @option params [String] :next_token
    #   The token to be used for the next set of paginated results. You don't
    #   need to supply a value for this field in the initial request.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per each request.
    #
    # @return [Types::DescribeRegistrationSectionDefinitionsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeRegistrationSectionDefinitionsResult#registration_type #registration_type} => String
    #   * {Types::DescribeRegistrationSectionDefinitionsResult#registration_section_definitions #registration_section_definitions} => Array&lt;Types::RegistrationSectionDefinition&gt;
    #   * {Types::DescribeRegistrationSectionDefinitionsResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_registration_section_definitions({
    #     registration_type: "RegistrationType", # required
    #     section_paths: ["SectionPath"],
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.registration_type #=> String
    #   resp.registration_section_definitions #=> Array
    #   resp.registration_section_definitions[0].section_path #=> String
    #   resp.registration_section_definitions[0].display_hints.title #=> String
    #   resp.registration_section_definitions[0].display_hints.short_description #=> String
    #   resp.registration_section_definitions[0].display_hints.long_description #=> String
    #   resp.registration_section_definitions[0].display_hints.documentation_title #=> String
    #   resp.registration_section_definitions[0].display_hints.documentation_link #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/DescribeRegistrationSectionDefinitions AWS API Documentation
    #
    # @overload describe_registration_section_definitions(params = {})
    # @param [Hash] params ({})
    def describe_registration_section_definitions(params = {}, options = {})
      req = build_request(:describe_registration_section_definitions, params)
      req.send_request(options)
    end

    # Retrieves the specified registration type definitions. You can use
    # DescribeRegistrationTypeDefinitions to view the requirements for
    # creating, filling out, and submitting each registration type.
    #
    # @option params [Array<String>] :registration_types
    #   The type of registration form. The list of **RegistrationTypes** can
    #   be found using the DescribeRegistrationTypeDefinitions action.
    #
    # @option params [Array<Types::RegistrationTypeFilter>] :filters
    #   An array of RegistrationFilter objects to filter the results.
    #
    # @option params [String] :next_token
    #   The token to be used for the next set of paginated results. You don't
    #   need to supply a value for this field in the initial request.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per each request.
    #
    # @return [Types::DescribeRegistrationTypeDefinitionsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeRegistrationTypeDefinitionsResult#registration_type_definitions #registration_type_definitions} => Array&lt;Types::RegistrationTypeDefinition&gt;
    #   * {Types::DescribeRegistrationTypeDefinitionsResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_registration_type_definitions({
    #     registration_types: ["RegistrationType"],
    #     filters: [
    #       {
    #         name: "supported-association-resource-type", # required, accepts supported-association-resource-type, supported-association-iso-country-code
    #         values: ["FilterValue"], # required
    #       },
    #     ],
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.registration_type_definitions #=> Array
    #   resp.registration_type_definitions[0].registration_type #=> String
    #   resp.registration_type_definitions[0].supported_associations #=> Array
    #   resp.registration_type_definitions[0].supported_associations[0].resource_type #=> String
    #   resp.registration_type_definitions[0].supported_associations[0].iso_country_code #=> String
    #   resp.registration_type_definitions[0].supported_associations[0].association_behavior #=> String, one of "ASSOCIATE_BEFORE_SUBMIT", "ASSOCIATE_ON_APPROVAL", "ASSOCIATE_AFTER_COMPLETE"
    #   resp.registration_type_definitions[0].supported_associations[0].disassociation_behavior #=> String, one of "DISASSOCIATE_ALL_CLOSES_REGISTRATION", "DISASSOCIATE_ALL_ALLOWS_DELETE_REGISTRATION", "DELETE_REGISTRATION_DISASSOCIATES"
    #   resp.registration_type_definitions[0].display_hints.title #=> String
    #   resp.registration_type_definitions[0].display_hints.short_description #=> String
    #   resp.registration_type_definitions[0].display_hints.long_description #=> String
    #   resp.registration_type_definitions[0].display_hints.documentation_title #=> String
    #   resp.registration_type_definitions[0].display_hints.documentation_link #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/DescribeRegistrationTypeDefinitions AWS API Documentation
    #
    # @overload describe_registration_type_definitions(params = {})
    # @param [Hash] params ({})
    def describe_registration_type_definitions(params = {}, options = {})
      req = build_request(:describe_registration_type_definitions, params)
      req.send_request(options)
    end

    # Retrieves the specified registration version.
    #
    # @option params [required, String] :registration_id
    #   The unique identifier for the registration.
    #
    # @option params [Array<Integer>] :version_numbers
    #   An array of registration version numbers.
    #
    # @option params [Array<Types::RegistrationVersionFilter>] :filters
    #   An array of RegistrationVersionFilter objects to filter the results.
    #
    # @option params [String] :next_token
    #   The token to be used for the next set of paginated results. You don't
    #   need to supply a value for this field in the initial request.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per each request.
    #
    # @return [Types::DescribeRegistrationVersionsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeRegistrationVersionsResult#registration_arn #registration_arn} => String
    #   * {Types::DescribeRegistrationVersionsResult#registration_id #registration_id} => String
    #   * {Types::DescribeRegistrationVersionsResult#registration_versions #registration_versions} => Array&lt;Types::RegistrationVersionInformation&gt;
    #   * {Types::DescribeRegistrationVersionsResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_registration_versions({
    #     registration_id: "RegistrationIdOrArn", # required
    #     version_numbers: [1],
    #     filters: [
    #       {
    #         name: "registration-version-status", # required, accepts registration-version-status
    #         values: ["FilterValue"], # required
    #       },
    #     ],
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.registration_arn #=> String
    #   resp.registration_id #=> String
    #   resp.registration_versions #=> Array
    #   resp.registration_versions[0].version_number #=> Integer
    #   resp.registration_versions[0].registration_version_status #=> String, one of "DRAFT", "SUBMITTED", "REVIEWING", "REQUIRES_AUTHENTICATION", "APPROVED", "DISCARDED", "DENIED", "REVOKED", "ARCHIVED"
    #   resp.registration_versions[0].registration_version_status_history.draft_timestamp #=> Time
    #   resp.registration_versions[0].registration_version_status_history.submitted_timestamp #=> Time
    #   resp.registration_versions[0].registration_version_status_history.reviewing_timestamp #=> Time
    #   resp.registration_versions[0].registration_version_status_history.requires_authentication_timestamp #=> Time
    #   resp.registration_versions[0].registration_version_status_history.approved_timestamp #=> Time
    #   resp.registration_versions[0].registration_version_status_history.discarded_timestamp #=> Time
    #   resp.registration_versions[0].registration_version_status_history.denied_timestamp #=> Time
    #   resp.registration_versions[0].registration_version_status_history.revoked_timestamp #=> Time
    #   resp.registration_versions[0].registration_version_status_history.archived_timestamp #=> Time
    #   resp.registration_versions[0].denied_reasons #=> Array
    #   resp.registration_versions[0].denied_reasons[0].reason #=> String
    #   resp.registration_versions[0].denied_reasons[0].short_description #=> String
    #   resp.registration_versions[0].denied_reasons[0].long_description #=> String
    #   resp.registration_versions[0].denied_reasons[0].documentation_title #=> String
    #   resp.registration_versions[0].denied_reasons[0].documentation_link #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/DescribeRegistrationVersions AWS API Documentation
    #
    # @overload describe_registration_versions(params = {})
    # @param [Hash] params ({})
    def describe_registration_versions(params = {}, options = {})
      req = build_request(:describe_registration_versions, params)
      req.send_request(options)
    end

    # Retrieves the specified registrations.
    #
    # @option params [Array<String>] :registration_ids
    #   An array of unique identifiers for each registration.
    #
    # @option params [Array<Types::RegistrationFilter>] :filters
    #   An array of RegistrationFilter objects to filter the results.
    #
    # @option params [String] :next_token
    #   The token to be used for the next set of paginated results. You don't
    #   need to supply a value for this field in the initial request.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per each request.
    #
    # @return [Types::DescribeRegistrationsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeRegistrationsResult#registrations #registrations} => Array&lt;Types::RegistrationInformation&gt;
    #   * {Types::DescribeRegistrationsResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_registrations({
    #     registration_ids: ["RegistrationIdOrArn"],
    #     filters: [
    #       {
    #         name: "registration-type", # required, accepts registration-type, registration-status
    #         values: ["FilterValue"], # required
    #       },
    #     ],
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.registrations #=> Array
    #   resp.registrations[0].registration_arn #=> String
    #   resp.registrations[0].registration_id #=> String
    #   resp.registrations[0].registration_type #=> String
    #   resp.registrations[0].registration_status #=> String, one of "CREATED", "SUBMITTED", "REVIEWING", "REQUIRES_AUTHENTICATION", "PROVISIONING", "COMPLETE", "REQUIRES_UPDATES", "CLOSED", "DELETED"
    #   resp.registrations[0].current_version_number #=> Integer
    #   resp.registrations[0].approved_version_number #=> Integer
    #   resp.registrations[0].latest_denied_version_number #=> Integer
    #   resp.registrations[0].additional_attributes #=> Hash
    #   resp.registrations[0].additional_attributes["String"] #=> String
    #   resp.registrations[0].created_timestamp #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/DescribeRegistrations AWS API Documentation
    #
    # @overload describe_registrations(params = {})
    # @param [Hash] params ({})
    def describe_registrations(params = {}, options = {})
      req = build_request(:describe_registrations, params)
      req.send_request(options)
    end

    # Describes the specified SenderIds or all SenderIds associated with
    # your Amazon Web Services account.
    #
    # If you specify SenderIds, the output includes information for only the
    # specified SenderIds. If you specify filters, the output includes
    # information for only those SenderIds that meet the filter criteria. If
    # you don't specify SenderIds or filters, the output includes
    # information for all SenderIds.
    #
    # f you specify a sender ID that isn't valid, an error is returned.
    #
    # @option params [Array<Types::SenderIdAndCountry>] :sender_ids
    #   An array of SenderIdAndCountry objects to search for.
    #
    #   If you are using a shared AWS End User Messaging SMS and Voice
    #   resource then you must use the full Amazon Resource Name(ARN).
    #
    # @option params [Array<Types::SenderIdFilter>] :filters
    #   An array of SenderIdFilter objects to filter the results.
    #
    # @option params [String] :next_token
    #   The token to be used for the next set of paginated results. You don't
    #   need to supply a value for this field in the initial request.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per each request.
    #
    # @option params [String] :owner
    #   Use `SELF` to filter the list of Sender Ids to ones your account owns
    #   or use `SHARED` to filter on Sender Ids shared with your account. The
    #   `Owner` and `SenderIds` parameters can't be used at the same time.
    #
    # @return [Types::DescribeSenderIdsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeSenderIdsResult#sender_ids #sender_ids} => Array&lt;Types::SenderIdInformation&gt;
    #   * {Types::DescribeSenderIdsResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_sender_ids({
    #     sender_ids: [
    #       {
    #         sender_id: "SenderIdOrArn", # required
    #         iso_country_code: "IsoCountryCode", # required
    #       },
    #     ],
    #     filters: [
    #       {
    #         name: "sender-id", # required, accepts sender-id, iso-country-code, message-type, deletion-protection-enabled, registered
    #         values: ["FilterValue"], # required
    #       },
    #     ],
    #     next_token: "NextToken",
    #     max_results: 1,
    #     owner: "SELF", # accepts SELF, SHARED
    #   })
    #
    # @example Response structure
    #
    #   resp.sender_ids #=> Array
    #   resp.sender_ids[0].sender_id_arn #=> String
    #   resp.sender_ids[0].sender_id #=> String
    #   resp.sender_ids[0].iso_country_code #=> String
    #   resp.sender_ids[0].message_types #=> Array
    #   resp.sender_ids[0].message_types[0] #=> String, one of "TRANSACTIONAL", "PROMOTIONAL"
    #   resp.sender_ids[0].monthly_leasing_price #=> String
    #   resp.sender_ids[0].deletion_protection_enabled #=> Boolean
    #   resp.sender_ids[0].registered #=> Boolean
    #   resp.sender_ids[0].registration_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/DescribeSenderIds AWS API Documentation
    #
    # @overload describe_sender_ids(params = {})
    # @param [Hash] params ({})
    def describe_sender_ids(params = {}, options = {})
      req = build_request(:describe_sender_ids, params)
      req.send_request(options)
    end

    # Describes the current monthly spend limits for sending voice and text
    # messages.
    #
    # When you establish an Amazon Web Services account, the account has
    # initial monthly spend limit in a given Region. For more information on
    # increasing your monthly spend limit, see [ Requesting increases to
    # your monthly SMS, MMS, or Voice spending quota ][1] in the *AWS End
    # User Messaging SMS User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/sms-voice/latest/userguide/awssupport-spend-threshold.html
    #
    # @option params [String] :next_token
    #   The token to be used for the next set of paginated results. You don't
    #   need to supply a value for this field in the initial request.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per each request.
    #
    # @return [Types::DescribeSpendLimitsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeSpendLimitsResult#spend_limits #spend_limits} => Array&lt;Types::SpendLimit&gt;
    #   * {Types::DescribeSpendLimitsResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_spend_limits({
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.spend_limits #=> Array
    #   resp.spend_limits[0].name #=> String, one of "TEXT_MESSAGE_MONTHLY_SPEND_LIMIT", "VOICE_MESSAGE_MONTHLY_SPEND_LIMIT", "MEDIA_MESSAGE_MONTHLY_SPEND_LIMIT"
    #   resp.spend_limits[0].enforced_limit #=> Integer
    #   resp.spend_limits[0].max_limit #=> Integer
    #   resp.spend_limits[0].overridden #=> Boolean
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/DescribeSpendLimits AWS API Documentation
    #
    # @overload describe_spend_limits(params = {})
    # @param [Hash] params ({})
    def describe_spend_limits(params = {}, options = {})
      req = build_request(:describe_spend_limits, params)
      req.send_request(options)
    end

    # Retrieves the specified verified destination numbers.
    #
    # @option params [Array<String>] :verified_destination_number_ids
    #   An array of VerifiedDestinationNumberid to retrieve.
    #
    # @option params [Array<String>] :destination_phone_numbers
    #   An array of verified destination phone number, in E.164 format.
    #
    # @option params [Array<Types::VerifiedDestinationNumberFilter>] :filters
    #   An array of VerifiedDestinationNumberFilter objects to filter the
    #   results.
    #
    # @option params [String] :next_token
    #   The token to be used for the next set of paginated results. You don't
    #   need to supply a value for this field in the initial request.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per each request.
    #
    # @return [Types::DescribeVerifiedDestinationNumbersResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeVerifiedDestinationNumbersResult#verified_destination_numbers #verified_destination_numbers} => Array&lt;Types::VerifiedDestinationNumberInformation&gt;
    #   * {Types::DescribeVerifiedDestinationNumbersResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_verified_destination_numbers({
    #     verified_destination_number_ids: ["VerifiedDestinationNumberIdOrArn"],
    #     destination_phone_numbers: ["PhoneNumber"],
    #     filters: [
    #       {
    #         name: "status", # required, accepts status
    #         values: ["FilterValue"], # required
    #       },
    #     ],
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.verified_destination_numbers #=> Array
    #   resp.verified_destination_numbers[0].verified_destination_number_arn #=> String
    #   resp.verified_destination_numbers[0].verified_destination_number_id #=> String
    #   resp.verified_destination_numbers[0].destination_phone_number #=> String
    #   resp.verified_destination_numbers[0].status #=> String, one of "PENDING", "VERIFIED"
    #   resp.verified_destination_numbers[0].created_timestamp #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/DescribeVerifiedDestinationNumbers AWS API Documentation
    #
    # @overload describe_verified_destination_numbers(params = {})
    # @param [Hash] params ({})
    def describe_verified_destination_numbers(params = {}, options = {})
      req = build_request(:describe_verified_destination_numbers, params)
      req.send_request(options)
    end

    # Removes the specified origination identity from an existing pool.
    #
    # If the origination identity isn't associated with the specified pool,
    # an error is returned.
    #
    # @option params [required, String] :pool_id
    #   The unique identifier for the pool to disassociate with the
    #   origination identity. This value can be either the PoolId or PoolArn.
    #
    #   If you are using a shared AWS End User Messaging SMS and Voice
    #   resource then you must use the full Amazon Resource Name(ARN).
    #
    # @option params [required, String] :origination_identity
    #   The origination identity to use such as a PhoneNumberId,
    #   PhoneNumberArn, SenderId or SenderIdArn. You can use
    #   DescribePhoneNumbers find the values for PhoneNumberId and
    #   PhoneNumberArn, or use DescribeSenderIds to get the values for
    #   SenderId and SenderIdArn.
    #
    #   If you are using a shared AWS End User Messaging SMS and Voice
    #   resource then you must use the full Amazon Resource Name(ARN).
    #
    # @option params [required, String] :iso_country_code
    #   The two-character code, in ISO 3166-1 alpha-2 format, for the country
    #   or region.
    #
    # @option params [String] :client_token
    #   Unique, case-sensitive identifier you provide to ensure the
    #   idempotency of the request. If you don't specify a client token, a
    #   randomly generated token is used for the request to ensure
    #   idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::DisassociateOriginationIdentityResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DisassociateOriginationIdentityResult#pool_arn #pool_arn} => String
    #   * {Types::DisassociateOriginationIdentityResult#pool_id #pool_id} => String
    #   * {Types::DisassociateOriginationIdentityResult#origination_identity_arn #origination_identity_arn} => String
    #   * {Types::DisassociateOriginationIdentityResult#origination_identity #origination_identity} => String
    #   * {Types::DisassociateOriginationIdentityResult#iso_country_code #iso_country_code} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_origination_identity({
    #     pool_id: "PoolIdOrArn", # required
    #     origination_identity: "PhoneOrSenderIdOrArn", # required
    #     iso_country_code: "IsoCountryCode", # required
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.pool_arn #=> String
    #   resp.pool_id #=> String
    #   resp.origination_identity_arn #=> String
    #   resp.origination_identity #=> String
    #   resp.iso_country_code #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/DisassociateOriginationIdentity AWS API Documentation
    #
    # @overload disassociate_origination_identity(params = {})
    # @param [Hash] params ({})
    def disassociate_origination_identity(params = {}, options = {})
      req = build_request(:disassociate_origination_identity, params)
      req.send_request(options)
    end

    # Disassociate a protect configuration from a configuration set.
    #
    # @option params [required, String] :protect_configuration_id
    #   The unique identifier for the protect configuration.
    #
    # @option params [required, String] :configuration_set_name
    #   The name of the ConfigurationSet.
    #
    # @return [Types::DisassociateProtectConfigurationResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DisassociateProtectConfigurationResult#configuration_set_arn #configuration_set_arn} => String
    #   * {Types::DisassociateProtectConfigurationResult#configuration_set_name #configuration_set_name} => String
    #   * {Types::DisassociateProtectConfigurationResult#protect_configuration_arn #protect_configuration_arn} => String
    #   * {Types::DisassociateProtectConfigurationResult#protect_configuration_id #protect_configuration_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_protect_configuration({
    #     protect_configuration_id: "ProtectConfigurationIdOrArn", # required
    #     configuration_set_name: "ConfigurationSetNameOrArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.configuration_set_arn #=> String
    #   resp.configuration_set_name #=> String
    #   resp.protect_configuration_arn #=> String
    #   resp.protect_configuration_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/DisassociateProtectConfiguration AWS API Documentation
    #
    # @overload disassociate_protect_configuration(params = {})
    # @param [Hash] params ({})
    def disassociate_protect_configuration(params = {}, options = {})
      req = build_request(:disassociate_protect_configuration, params)
      req.send_request(options)
    end

    # Discard the current version of the registration.
    #
    # @option params [required, String] :registration_id
    #   The unique identifier for the registration.
    #
    # @return [Types::DiscardRegistrationVersionResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DiscardRegistrationVersionResult#registration_arn #registration_arn} => String
    #   * {Types::DiscardRegistrationVersionResult#registration_id #registration_id} => String
    #   * {Types::DiscardRegistrationVersionResult#version_number #version_number} => Integer
    #   * {Types::DiscardRegistrationVersionResult#registration_version_status #registration_version_status} => String
    #   * {Types::DiscardRegistrationVersionResult#registration_version_status_history #registration_version_status_history} => Types::RegistrationVersionStatusHistory
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.discard_registration_version({
    #     registration_id: "RegistrationIdOrArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.registration_arn #=> String
    #   resp.registration_id #=> String
    #   resp.version_number #=> Integer
    #   resp.registration_version_status #=> String, one of "DRAFT", "SUBMITTED", "REVIEWING", "REQUIRES_AUTHENTICATION", "APPROVED", "DISCARDED", "DENIED", "REVOKED", "ARCHIVED"
    #   resp.registration_version_status_history.draft_timestamp #=> Time
    #   resp.registration_version_status_history.submitted_timestamp #=> Time
    #   resp.registration_version_status_history.reviewing_timestamp #=> Time
    #   resp.registration_version_status_history.requires_authentication_timestamp #=> Time
    #   resp.registration_version_status_history.approved_timestamp #=> Time
    #   resp.registration_version_status_history.discarded_timestamp #=> Time
    #   resp.registration_version_status_history.denied_timestamp #=> Time
    #   resp.registration_version_status_history.revoked_timestamp #=> Time
    #   resp.registration_version_status_history.archived_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/DiscardRegistrationVersion AWS API Documentation
    #
    # @overload discard_registration_version(params = {})
    # @param [Hash] params ({})
    def discard_registration_version(params = {}, options = {})
      req = build_request(:discard_registration_version, params)
      req.send_request(options)
    end

    # Retrieve the CountryRuleSet for the specified NumberCapability from a
    # protect configuration.
    #
    # @option params [required, String] :protect_configuration_id
    #   The unique identifier for the protect configuration.
    #
    # @option params [required, String] :number_capability
    #   The capability type to return the CountryRuleSet for. Valid values are
    #   `SMS`, `VOICE`, or `MMS`.
    #
    # @return [Types::GetProtectConfigurationCountryRuleSetResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetProtectConfigurationCountryRuleSetResult#protect_configuration_arn #protect_configuration_arn} => String
    #   * {Types::GetProtectConfigurationCountryRuleSetResult#protect_configuration_id #protect_configuration_id} => String
    #   * {Types::GetProtectConfigurationCountryRuleSetResult#number_capability #number_capability} => String
    #   * {Types::GetProtectConfigurationCountryRuleSetResult#country_rule_set #country_rule_set} => Hash&lt;String,Types::ProtectConfigurationCountryRuleSetInformation&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_protect_configuration_country_rule_set({
    #     protect_configuration_id: "ProtectConfigurationIdOrArn", # required
    #     number_capability: "SMS", # required, accepts SMS, VOICE, MMS
    #   })
    #
    # @example Response structure
    #
    #   resp.protect_configuration_arn #=> String
    #   resp.protect_configuration_id #=> String
    #   resp.number_capability #=> String, one of "SMS", "VOICE", "MMS"
    #   resp.country_rule_set #=> Hash
    #   resp.country_rule_set["IsoCountryCode"].protect_status #=> String, one of "ALLOW", "BLOCK", "MONITOR", "FILTER"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/GetProtectConfigurationCountryRuleSet AWS API Documentation
    #
    # @overload get_protect_configuration_country_rule_set(params = {})
    # @param [Hash] params ({})
    def get_protect_configuration_country_rule_set(params = {}, options = {})
      req = build_request(:get_protect_configuration_country_rule_set, params)
      req.send_request(options)
    end

    # Retrieves the JSON text of the resource-based policy document attached
    # to the AWS End User Messaging SMS and Voice resource. A shared
    # resource can be a Pool, Opt-out list, Sender Id, or Phone number.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the AWS End User Messaging SMS and
    #   Voice resource attached to the resource-based policy.
    #
    # @return [Types::GetResourcePolicyResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetResourcePolicyResult#resource_arn #resource_arn} => String
    #   * {Types::GetResourcePolicyResult#policy #policy} => String
    #   * {Types::GetResourcePolicyResult#created_timestamp #created_timestamp} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_resource_policy({
    #     resource_arn: "AmazonResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_arn #=> String
    #   resp.policy #=> String
    #   resp.created_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/GetResourcePolicy AWS API Documentation
    #
    # @overload get_resource_policy(params = {})
    # @param [Hash] params ({})
    def get_resource_policy(params = {}, options = {})
      req = build_request(:get_resource_policy, params)
      req.send_request(options)
    end

    # Lists all associated origination identities in your pool.
    #
    # If you specify filters, the output includes information for only those
    # origination identities that meet the filter criteria.
    #
    # @option params [required, String] :pool_id
    #   The unique identifier for the pool. This value can be either the
    #   PoolId or PoolArn.
    #
    #   If you are using a shared AWS End User Messaging SMS and Voice
    #   resource then you must use the full Amazon Resource Name(ARN).
    #
    # @option params [Array<Types::PoolOriginationIdentitiesFilter>] :filters
    #   An array of PoolOriginationIdentitiesFilter objects to filter the
    #   results..
    #
    # @option params [String] :next_token
    #   The token to be used for the next set of paginated results. You don't
    #   need to supply a value for this field in the initial request.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per each request.
    #
    # @return [Types::ListPoolOriginationIdentitiesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPoolOriginationIdentitiesResult#pool_arn #pool_arn} => String
    #   * {Types::ListPoolOriginationIdentitiesResult#pool_id #pool_id} => String
    #   * {Types::ListPoolOriginationIdentitiesResult#origination_identities #origination_identities} => Array&lt;Types::OriginationIdentityMetadata&gt;
    #   * {Types::ListPoolOriginationIdentitiesResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_pool_origination_identities({
    #     pool_id: "PoolIdOrArn", # required
    #     filters: [
    #       {
    #         name: "iso-country-code", # required, accepts iso-country-code, number-capability
    #         values: ["FilterValue"], # required
    #       },
    #     ],
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.pool_arn #=> String
    #   resp.pool_id #=> String
    #   resp.origination_identities #=> Array
    #   resp.origination_identities[0].origination_identity_arn #=> String
    #   resp.origination_identities[0].origination_identity #=> String
    #   resp.origination_identities[0].iso_country_code #=> String
    #   resp.origination_identities[0].number_capabilities #=> Array
    #   resp.origination_identities[0].number_capabilities[0] #=> String, one of "SMS", "VOICE", "MMS"
    #   resp.origination_identities[0].phone_number #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/ListPoolOriginationIdentities AWS API Documentation
    #
    # @overload list_pool_origination_identities(params = {})
    # @param [Hash] params ({})
    def list_pool_origination_identities(params = {}, options = {})
      req = build_request(:list_pool_origination_identities, params)
      req.send_request(options)
    end

    # Retrieve all of the protect configuration rule set number overrides
    # that match the filters.
    #
    # @option params [required, String] :protect_configuration_id
    #   The unique identifier for the protect configuration.
    #
    # @option params [Array<Types::ProtectConfigurationRuleSetNumberOverrideFilterItem>] :filters
    #   An array of ProtectConfigurationRuleSetNumberOverrideFilterItem
    #   objects to filter the results.
    #
    # @option params [String] :next_token
    #   The token to be used for the next set of paginated results. You don't
    #   need to supply a value for this field in the initial request.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per each request.
    #
    # @return [Types::ListProtectConfigurationRuleSetNumberOverridesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListProtectConfigurationRuleSetNumberOverridesResult#protect_configuration_arn #protect_configuration_arn} => String
    #   * {Types::ListProtectConfigurationRuleSetNumberOverridesResult#protect_configuration_id #protect_configuration_id} => String
    #   * {Types::ListProtectConfigurationRuleSetNumberOverridesResult#rule_set_number_overrides #rule_set_number_overrides} => Array&lt;Types::ProtectConfigurationRuleSetNumberOverride&gt;
    #   * {Types::ListProtectConfigurationRuleSetNumberOverridesResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_protect_configuration_rule_set_number_overrides({
    #     protect_configuration_id: "ProtectConfigurationIdOrArn", # required
    #     filters: [
    #       {
    #         name: "iso-country-code", # required, accepts iso-country-code, destination-phone-number-begins-with, action, expires-before, expires-after, created-before, created-after
    #         values: ["FilterValue"], # required
    #       },
    #     ],
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.protect_configuration_arn #=> String
    #   resp.protect_configuration_id #=> String
    #   resp.rule_set_number_overrides #=> Array
    #   resp.rule_set_number_overrides[0].destination_phone_number #=> String
    #   resp.rule_set_number_overrides[0].created_timestamp #=> Time
    #   resp.rule_set_number_overrides[0].action #=> String, one of "ALLOW", "BLOCK"
    #   resp.rule_set_number_overrides[0].iso_country_code #=> String
    #   resp.rule_set_number_overrides[0].expiration_timestamp #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/ListProtectConfigurationRuleSetNumberOverrides AWS API Documentation
    #
    # @overload list_protect_configuration_rule_set_number_overrides(params = {})
    # @param [Hash] params ({})
    def list_protect_configuration_rule_set_number_overrides(params = {}, options = {})
      req = build_request(:list_protect_configuration_rule_set_number_overrides, params)
      req.send_request(options)
    end

    # Retrieve all of the origination identities that are associated with a
    # registration.
    #
    # @option params [required, String] :registration_id
    #   The unique identifier for the registration.
    #
    # @option params [Array<Types::RegistrationAssociationFilter>] :filters
    #   An array of RegistrationAssociationFilter to apply to the results that
    #   are returned.
    #
    # @option params [String] :next_token
    #   The token to be used for the next set of paginated results. You don't
    #   need to supply a value for this field in the initial request.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per each request.
    #
    # @return [Types::ListRegistrationAssociationsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListRegistrationAssociationsResult#registration_arn #registration_arn} => String
    #   * {Types::ListRegistrationAssociationsResult#registration_id #registration_id} => String
    #   * {Types::ListRegistrationAssociationsResult#registration_type #registration_type} => String
    #   * {Types::ListRegistrationAssociationsResult#registration_associations #registration_associations} => Array&lt;Types::RegistrationAssociationMetadata&gt;
    #   * {Types::ListRegistrationAssociationsResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_registration_associations({
    #     registration_id: "RegistrationIdOrArn", # required
    #     filters: [
    #       {
    #         name: "resource-type", # required, accepts resource-type, iso-country-code
    #         values: ["FilterValue"], # required
    #       },
    #     ],
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.registration_arn #=> String
    #   resp.registration_id #=> String
    #   resp.registration_type #=> String
    #   resp.registration_associations #=> Array
    #   resp.registration_associations[0].resource_arn #=> String
    #   resp.registration_associations[0].resource_id #=> String
    #   resp.registration_associations[0].resource_type #=> String
    #   resp.registration_associations[0].iso_country_code #=> String
    #   resp.registration_associations[0].phone_number #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/ListRegistrationAssociations AWS API Documentation
    #
    # @overload list_registration_associations(params = {})
    # @param [Hash] params ({})
    def list_registration_associations(params = {}, options = {})
      req = build_request(:list_registration_associations, params)
      req.send_request(options)
    end

    # List all tags associated with a resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource to query for.
    #
    # @return [Types::ListTagsForResourceResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResult#resource_arn #resource_arn} => String
    #   * {Types::ListTagsForResourceResult#tags #tags} => Array&lt;Types::Tag&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "AmazonResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_arn #=> String
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Creates or updates a keyword configuration on an origination phone
    # number or pool.
    #
    # A keyword is a word that you can search for on a particular phone
    # number or pool. It is also a specific word or phrase that an end user
    # can send to your number to elicit a response, such as an informational
    # message or a special offer. When your number receives a message that
    # begins with a keyword, AWS End User Messaging SMS and Voice responds
    # with a customizable message.
    #
    # If you specify a keyword that isn't valid, an error is returned.
    #
    # @option params [required, String] :origination_identity
    #   The origination identity to use such as a PhoneNumberId,
    #   PhoneNumberArn, SenderId or SenderIdArn. You can use
    #   DescribePhoneNumbers get the values for PhoneNumberId and
    #   PhoneNumberArn while DescribeSenderIds can be used to get the values
    #   for SenderId and SenderIdArn.
    #
    #   If you are using a shared AWS End User Messaging SMS and Voice
    #   resource then you must use the full Amazon Resource Name(ARN).
    #
    # @option params [required, String] :keyword
    #   The new keyword to add.
    #
    # @option params [required, String] :keyword_message
    #   The message associated with the keyword.
    #
    # @option params [String] :keyword_action
    #   The action to perform for the new keyword when it is received.
    #
    #   * AUTOMATIC\_RESPONSE: A message is sent to the recipient.
    #
    #   * OPT\_OUT: Keeps the recipient from receiving future messages.
    #
    #   * OPT\_IN: The recipient wants to receive future messages.
    #
    # @return [Types::PutKeywordResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutKeywordResult#origination_identity_arn #origination_identity_arn} => String
    #   * {Types::PutKeywordResult#origination_identity #origination_identity} => String
    #   * {Types::PutKeywordResult#keyword #keyword} => String
    #   * {Types::PutKeywordResult#keyword_message #keyword_message} => String
    #   * {Types::PutKeywordResult#keyword_action #keyword_action} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_keyword({
    #     origination_identity: "PhoneOrPoolIdOrArn", # required
    #     keyword: "Keyword", # required
    #     keyword_message: "KeywordMessage", # required
    #     keyword_action: "AUTOMATIC_RESPONSE", # accepts AUTOMATIC_RESPONSE, OPT_OUT, OPT_IN
    #   })
    #
    # @example Response structure
    #
    #   resp.origination_identity_arn #=> String
    #   resp.origination_identity #=> String
    #   resp.keyword #=> String
    #   resp.keyword_message #=> String
    #   resp.keyword_action #=> String, one of "AUTOMATIC_RESPONSE", "OPT_OUT", "OPT_IN"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/PutKeyword AWS API Documentation
    #
    # @overload put_keyword(params = {})
    # @param [Hash] params ({})
    def put_keyword(params = {}, options = {})
      req = build_request(:put_keyword, params)
      req.send_request(options)
    end

    # Set the MessageFeedbackStatus as `RECEIVED` or `FAILED` for the passed
    # in MessageId.
    #
    # If you use message feedback then you must update message feedback
    # record. When you receive a signal that a user has received the message
    # you must use `PutMessageFeedback` to set the message feedback record
    # as `RECEIVED`; Otherwise, an hour after the message feedback record is
    # set to `FAILED`.
    #
    # @option params [required, String] :message_id
    #   The unique identifier for the message.
    #
    # @option params [required, String] :message_feedback_status
    #   Set the message feedback to be either `RECEIVED` or `FAILED`.
    #
    # @return [Types::PutMessageFeedbackResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutMessageFeedbackResult#message_id #message_id} => String
    #   * {Types::PutMessageFeedbackResult#message_feedback_status #message_feedback_status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_message_feedback({
    #     message_id: "MessageId", # required
    #     message_feedback_status: "RECEIVED", # required, accepts RECEIVED, FAILED
    #   })
    #
    # @example Response structure
    #
    #   resp.message_id #=> String
    #   resp.message_feedback_status #=> String, one of "RECEIVED", "FAILED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/PutMessageFeedback AWS API Documentation
    #
    # @overload put_message_feedback(params = {})
    # @param [Hash] params ({})
    def put_message_feedback(params = {}, options = {})
      req = build_request(:put_message_feedback, params)
      req.send_request(options)
    end

    # Creates an opted out destination phone number in the opt-out list.
    #
    # If the destination phone number isn't valid or if the specified
    # opt-out list doesn't exist, an error is returned.
    #
    # @option params [required, String] :opt_out_list_name
    #   The OptOutListName or OptOutListArn to add the phone number to.
    #
    #   If you are using a shared AWS End User Messaging SMS and Voice
    #   resource then you must use the full Amazon Resource Name(ARN).
    #
    # @option params [required, String] :opted_out_number
    #   The phone number to add to the OptOutList in E.164 format.
    #
    # @return [Types::PutOptedOutNumberResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutOptedOutNumberResult#opt_out_list_arn #opt_out_list_arn} => String
    #   * {Types::PutOptedOutNumberResult#opt_out_list_name #opt_out_list_name} => String
    #   * {Types::PutOptedOutNumberResult#opted_out_number #opted_out_number} => String
    #   * {Types::PutOptedOutNumberResult#opted_out_timestamp #opted_out_timestamp} => Time
    #   * {Types::PutOptedOutNumberResult#end_user_opted_out #end_user_opted_out} => Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_opted_out_number({
    #     opt_out_list_name: "OptOutListNameOrArn", # required
    #     opted_out_number: "PhoneNumber", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.opt_out_list_arn #=> String
    #   resp.opt_out_list_name #=> String
    #   resp.opted_out_number #=> String
    #   resp.opted_out_timestamp #=> Time
    #   resp.end_user_opted_out #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/PutOptedOutNumber AWS API Documentation
    #
    # @overload put_opted_out_number(params = {})
    # @param [Hash] params ({})
    def put_opted_out_number(params = {}, options = {})
      req = build_request(:put_opted_out_number, params)
      req.send_request(options)
    end

    # Create or update a phone number rule override and associate it with a
    # protect configuration.
    #
    # @option params [String] :client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If you don't specify a client token, a
    #   randomly generated token is used for the request to ensure
    #   idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :protect_configuration_id
    #   The unique identifier for the protect configuration.
    #
    # @option params [required, String] :destination_phone_number
    #   The destination phone number in E.164 format.
    #
    # @option params [required, String] :action
    #   The action for the rule to either block or allow messages to the
    #   destination phone number.
    #
    # @option params [Time,DateTime,Date,Integer,String] :expiration_timestamp
    #   The time the rule will expire at. If `ExpirationTimestamp` is not set
    #   then the rule does not expire.
    #
    # @return [Types::PutProtectConfigurationRuleSetNumberOverrideResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutProtectConfigurationRuleSetNumberOverrideResult#protect_configuration_arn #protect_configuration_arn} => String
    #   * {Types::PutProtectConfigurationRuleSetNumberOverrideResult#protect_configuration_id #protect_configuration_id} => String
    #   * {Types::PutProtectConfigurationRuleSetNumberOverrideResult#destination_phone_number #destination_phone_number} => String
    #   * {Types::PutProtectConfigurationRuleSetNumberOverrideResult#created_timestamp #created_timestamp} => Time
    #   * {Types::PutProtectConfigurationRuleSetNumberOverrideResult#action #action} => String
    #   * {Types::PutProtectConfigurationRuleSetNumberOverrideResult#iso_country_code #iso_country_code} => String
    #   * {Types::PutProtectConfigurationRuleSetNumberOverrideResult#expiration_timestamp #expiration_timestamp} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_protect_configuration_rule_set_number_override({
    #     client_token: "ClientToken",
    #     protect_configuration_id: "ProtectConfigurationIdOrArn", # required
    #     destination_phone_number: "PhoneNumber", # required
    #     action: "ALLOW", # required, accepts ALLOW, BLOCK
    #     expiration_timestamp: Time.now,
    #   })
    #
    # @example Response structure
    #
    #   resp.protect_configuration_arn #=> String
    #   resp.protect_configuration_id #=> String
    #   resp.destination_phone_number #=> String
    #   resp.created_timestamp #=> Time
    #   resp.action #=> String, one of "ALLOW", "BLOCK"
    #   resp.iso_country_code #=> String
    #   resp.expiration_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/PutProtectConfigurationRuleSetNumberOverride AWS API Documentation
    #
    # @overload put_protect_configuration_rule_set_number_override(params = {})
    # @param [Hash] params ({})
    def put_protect_configuration_rule_set_number_override(params = {}, options = {})
      req = build_request(:put_protect_configuration_rule_set_number_override, params)
      req.send_request(options)
    end

    # Creates or updates a field value for a registration.
    #
    # @option params [required, String] :registration_id
    #   The unique identifier for the registration.
    #
    # @option params [required, String] :field_path
    #   The path to the registration form field. You can use
    #   DescribeRegistrationFieldDefinitions for a list of **FieldPaths**.
    #
    # @option params [Array<String>] :select_choices
    #   An array of values for the form field.
    #
    # @option params [String] :text_value
    #   The text data for a free form field.
    #
    # @option params [String] :registration_attachment_id
    #   The unique identifier for the registration attachment.
    #
    # @return [Types::PutRegistrationFieldValueResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutRegistrationFieldValueResult#registration_arn #registration_arn} => String
    #   * {Types::PutRegistrationFieldValueResult#registration_id #registration_id} => String
    #   * {Types::PutRegistrationFieldValueResult#version_number #version_number} => Integer
    #   * {Types::PutRegistrationFieldValueResult#field_path #field_path} => String
    #   * {Types::PutRegistrationFieldValueResult#select_choices #select_choices} => Array&lt;String&gt;
    #   * {Types::PutRegistrationFieldValueResult#text_value #text_value} => String
    #   * {Types::PutRegistrationFieldValueResult#registration_attachment_id #registration_attachment_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_registration_field_value({
    #     registration_id: "RegistrationIdOrArn", # required
    #     field_path: "FieldPath", # required
    #     select_choices: ["SelectChoice"],
    #     text_value: "TextValue",
    #     registration_attachment_id: "RegistrationAttachmentIdOrArn",
    #   })
    #
    # @example Response structure
    #
    #   resp.registration_arn #=> String
    #   resp.registration_id #=> String
    #   resp.version_number #=> Integer
    #   resp.field_path #=> String
    #   resp.select_choices #=> Array
    #   resp.select_choices[0] #=> String
    #   resp.text_value #=> String
    #   resp.registration_attachment_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/PutRegistrationFieldValue AWS API Documentation
    #
    # @overload put_registration_field_value(params = {})
    # @param [Hash] params ({})
    def put_registration_field_value(params = {}, options = {})
      req = build_request(:put_registration_field_value, params)
      req.send_request(options)
    end

    # Attaches a resource-based policy to a AWS End User Messaging SMS and
    # Voice resource(phone number, sender Id, phone poll, or opt-out list)
    # that is used for sharing the resource. A shared resource can be a
    # Pool, Opt-out list, Sender Id, or Phone number. For more information
    # about resource-based policies, see [Working with shared resources][1]
    # in the *AWS End User Messaging SMS User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/sms-voice/latest/userguide/shared-resources.html
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the AWS End User Messaging SMS and
    #   Voice resource to attach the resource-based policy to.
    #
    # @option params [required, String] :policy
    #   The JSON formatted resource-based policy to attach.
    #
    # @return [Types::PutResourcePolicyResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutResourcePolicyResult#resource_arn #resource_arn} => String
    #   * {Types::PutResourcePolicyResult#policy #policy} => String
    #   * {Types::PutResourcePolicyResult#created_timestamp #created_timestamp} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_resource_policy({
    #     resource_arn: "AmazonResourceName", # required
    #     policy: "ResourcePolicy", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_arn #=> String
    #   resp.policy #=> String
    #   resp.created_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/PutResourcePolicy AWS API Documentation
    #
    # @overload put_resource_policy(params = {})
    # @param [Hash] params ({})
    def put_resource_policy(params = {}, options = {})
      req = build_request(:put_resource_policy, params)
      req.send_request(options)
    end

    # Releases an existing origination phone number in your account. Once
    # released, a phone number is no longer available for sending messages.
    #
    # If the origination phone number has deletion protection enabled or is
    # associated with a pool, an error is returned.
    #
    # @option params [required, String] :phone_number_id
    #   The PhoneNumberId or PhoneNumberArn of the phone number to release.
    #   You can use DescribePhoneNumbers to get the values for PhoneNumberId
    #   and PhoneNumberArn.
    #
    #   If you are using a shared AWS End User Messaging SMS and Voice
    #   resource then you must use the full Amazon Resource Name(ARN).
    #
    # @return [Types::ReleasePhoneNumberResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ReleasePhoneNumberResult#phone_number_arn #phone_number_arn} => String
    #   * {Types::ReleasePhoneNumberResult#phone_number_id #phone_number_id} => String
    #   * {Types::ReleasePhoneNumberResult#phone_number #phone_number} => String
    #   * {Types::ReleasePhoneNumberResult#status #status} => String
    #   * {Types::ReleasePhoneNumberResult#iso_country_code #iso_country_code} => String
    #   * {Types::ReleasePhoneNumberResult#message_type #message_type} => String
    #   * {Types::ReleasePhoneNumberResult#number_capabilities #number_capabilities} => Array&lt;String&gt;
    #   * {Types::ReleasePhoneNumberResult#number_type #number_type} => String
    #   * {Types::ReleasePhoneNumberResult#monthly_leasing_price #monthly_leasing_price} => String
    #   * {Types::ReleasePhoneNumberResult#two_way_enabled #two_way_enabled} => Boolean
    #   * {Types::ReleasePhoneNumberResult#two_way_channel_arn #two_way_channel_arn} => String
    #   * {Types::ReleasePhoneNumberResult#two_way_channel_role #two_way_channel_role} => String
    #   * {Types::ReleasePhoneNumberResult#self_managed_opt_outs_enabled #self_managed_opt_outs_enabled} => Boolean
    #   * {Types::ReleasePhoneNumberResult#opt_out_list_name #opt_out_list_name} => String
    #   * {Types::ReleasePhoneNumberResult#registration_id #registration_id} => String
    #   * {Types::ReleasePhoneNumberResult#created_timestamp #created_timestamp} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.release_phone_number({
    #     phone_number_id: "PhoneNumberIdOrArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.phone_number_arn #=> String
    #   resp.phone_number_id #=> String
    #   resp.phone_number #=> String
    #   resp.status #=> String, one of "PENDING", "ACTIVE", "ASSOCIATING", "DISASSOCIATING", "DELETED"
    #   resp.iso_country_code #=> String
    #   resp.message_type #=> String, one of "TRANSACTIONAL", "PROMOTIONAL"
    #   resp.number_capabilities #=> Array
    #   resp.number_capabilities[0] #=> String, one of "SMS", "VOICE", "MMS"
    #   resp.number_type #=> String, one of "SHORT_CODE", "LONG_CODE", "TOLL_FREE", "TEN_DLC", "SIMULATOR"
    #   resp.monthly_leasing_price #=> String
    #   resp.two_way_enabled #=> Boolean
    #   resp.two_way_channel_arn #=> String
    #   resp.two_way_channel_role #=> String
    #   resp.self_managed_opt_outs_enabled #=> Boolean
    #   resp.opt_out_list_name #=> String
    #   resp.registration_id #=> String
    #   resp.created_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/ReleasePhoneNumber AWS API Documentation
    #
    # @overload release_phone_number(params = {})
    # @param [Hash] params ({})
    def release_phone_number(params = {}, options = {})
      req = build_request(:release_phone_number, params)
      req.send_request(options)
    end

    # Releases an existing sender ID in your account.
    #
    # @option params [required, String] :sender_id
    #   The sender ID to release.
    #
    # @option params [required, String] :iso_country_code
    #   The two-character code, in ISO 3166-1 alpha-2 format, for the country
    #   or region.
    #
    # @return [Types::ReleaseSenderIdResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ReleaseSenderIdResult#sender_id_arn #sender_id_arn} => String
    #   * {Types::ReleaseSenderIdResult#sender_id #sender_id} => String
    #   * {Types::ReleaseSenderIdResult#iso_country_code #iso_country_code} => String
    #   * {Types::ReleaseSenderIdResult#message_types #message_types} => Array&lt;String&gt;
    #   * {Types::ReleaseSenderIdResult#monthly_leasing_price #monthly_leasing_price} => String
    #   * {Types::ReleaseSenderIdResult#registered #registered} => Boolean
    #   * {Types::ReleaseSenderIdResult#registration_id #registration_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.release_sender_id({
    #     sender_id: "SenderIdOrArn", # required
    #     iso_country_code: "IsoCountryCode", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.sender_id_arn #=> String
    #   resp.sender_id #=> String
    #   resp.iso_country_code #=> String
    #   resp.message_types #=> Array
    #   resp.message_types[0] #=> String, one of "TRANSACTIONAL", "PROMOTIONAL"
    #   resp.monthly_leasing_price #=> String
    #   resp.registered #=> Boolean
    #   resp.registration_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/ReleaseSenderId AWS API Documentation
    #
    # @overload release_sender_id(params = {})
    # @param [Hash] params ({})
    def release_sender_id(params = {}, options = {})
      req = build_request(:release_sender_id, params)
      req.send_request(options)
    end

    # Request an origination phone number for use in your account. For more
    # information on phone number request see [Request a phone number][1] in
    # the *AWS End User Messaging SMS User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/sms-voice/latest/userguide/phone-numbers-request.html
    #
    # @option params [required, String] :iso_country_code
    #   The two-character code, in ISO 3166-1 alpha-2 format, for the country
    #   or region.
    #
    # @option params [required, String] :message_type
    #   The type of message. Valid values are `TRANSACTIONAL` for messages
    #   that are critical or time-sensitive and `PROMOTIONAL` for messages
    #   that aren't critical or time-sensitive.
    #
    # @option params [required, Array<String>] :number_capabilities
    #   Indicates if the phone number will be used for text messages, voice
    #   messages, or both.
    #
    # @option params [required, String] :number_type
    #   The type of phone number to request.
    #
    #   When you request a `SIMULATOR` phone number, you must set
    #   **MessageType** as `TRANSACTIONAL`.
    #
    # @option params [String] :opt_out_list_name
    #   The name of the OptOutList to associate with the phone number. You can
    #   use the OptOutListName or OptOutListArn.
    #
    #   If you are using a shared AWS End User Messaging SMS and Voice
    #   resource then you must use the full Amazon Resource Name(ARN).
    #
    # @option params [String] :pool_id
    #   The pool to associated with the phone number. You can use the PoolId
    #   or PoolArn.
    #
    #   If you are using a shared AWS End User Messaging SMS and Voice
    #   resource then you must use the full Amazon Resource Name(ARN).
    #
    # @option params [String] :registration_id
    #   Use this field to attach your phone number for an external
    #   registration process.
    #
    # @option params [Boolean] :deletion_protection_enabled
    #   By default this is set to false. When set to true the phone number
    #   can't be deleted.
    #
    # @option params [Array<Types::Tag>] :tags
    #   An array of tags (key and value pairs) associate with the requested
    #   phone number.
    #
    # @option params [String] :client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If you don't specify a client token, a
    #   randomly generated token is used for the request to ensure
    #   idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::RequestPhoneNumberResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RequestPhoneNumberResult#phone_number_arn #phone_number_arn} => String
    #   * {Types::RequestPhoneNumberResult#phone_number_id #phone_number_id} => String
    #   * {Types::RequestPhoneNumberResult#phone_number #phone_number} => String
    #   * {Types::RequestPhoneNumberResult#status #status} => String
    #   * {Types::RequestPhoneNumberResult#iso_country_code #iso_country_code} => String
    #   * {Types::RequestPhoneNumberResult#message_type #message_type} => String
    #   * {Types::RequestPhoneNumberResult#number_capabilities #number_capabilities} => Array&lt;String&gt;
    #   * {Types::RequestPhoneNumberResult#number_type #number_type} => String
    #   * {Types::RequestPhoneNumberResult#monthly_leasing_price #monthly_leasing_price} => String
    #   * {Types::RequestPhoneNumberResult#two_way_enabled #two_way_enabled} => Boolean
    #   * {Types::RequestPhoneNumberResult#two_way_channel_arn #two_way_channel_arn} => String
    #   * {Types::RequestPhoneNumberResult#two_way_channel_role #two_way_channel_role} => String
    #   * {Types::RequestPhoneNumberResult#self_managed_opt_outs_enabled #self_managed_opt_outs_enabled} => Boolean
    #   * {Types::RequestPhoneNumberResult#opt_out_list_name #opt_out_list_name} => String
    #   * {Types::RequestPhoneNumberResult#deletion_protection_enabled #deletion_protection_enabled} => Boolean
    #   * {Types::RequestPhoneNumberResult#pool_id #pool_id} => String
    #   * {Types::RequestPhoneNumberResult#registration_id #registration_id} => String
    #   * {Types::RequestPhoneNumberResult#tags #tags} => Array&lt;Types::Tag&gt;
    #   * {Types::RequestPhoneNumberResult#created_timestamp #created_timestamp} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.request_phone_number({
    #     iso_country_code: "IsoCountryCode", # required
    #     message_type: "TRANSACTIONAL", # required, accepts TRANSACTIONAL, PROMOTIONAL
    #     number_capabilities: ["SMS"], # required, accepts SMS, VOICE, MMS
    #     number_type: "LONG_CODE", # required, accepts LONG_CODE, TOLL_FREE, TEN_DLC, SIMULATOR
    #     opt_out_list_name: "OptOutListNameOrArn",
    #     pool_id: "PoolIdOrArn",
    #     registration_id: "RegistrationIdOrArn",
    #     deletion_protection_enabled: false,
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.phone_number_arn #=> String
    #   resp.phone_number_id #=> String
    #   resp.phone_number #=> String
    #   resp.status #=> String, one of "PENDING", "ACTIVE", "ASSOCIATING", "DISASSOCIATING", "DELETED"
    #   resp.iso_country_code #=> String
    #   resp.message_type #=> String, one of "TRANSACTIONAL", "PROMOTIONAL"
    #   resp.number_capabilities #=> Array
    #   resp.number_capabilities[0] #=> String, one of "SMS", "VOICE", "MMS"
    #   resp.number_type #=> String, one of "LONG_CODE", "TOLL_FREE", "TEN_DLC", "SIMULATOR"
    #   resp.monthly_leasing_price #=> String
    #   resp.two_way_enabled #=> Boolean
    #   resp.two_way_channel_arn #=> String
    #   resp.two_way_channel_role #=> String
    #   resp.self_managed_opt_outs_enabled #=> Boolean
    #   resp.opt_out_list_name #=> String
    #   resp.deletion_protection_enabled #=> Boolean
    #   resp.pool_id #=> String
    #   resp.registration_id #=> String
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #   resp.created_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/RequestPhoneNumber AWS API Documentation
    #
    # @overload request_phone_number(params = {})
    # @param [Hash] params ({})
    def request_phone_number(params = {}, options = {})
      req = build_request(:request_phone_number, params)
      req.send_request(options)
    end

    # Request a new sender ID that doesn't require registration.
    #
    # @option params [required, String] :sender_id
    #   The sender ID string to request.
    #
    # @option params [required, String] :iso_country_code
    #   The two-character code, in ISO 3166-1 alpha-2 format, for the country
    #   or region.
    #
    # @option params [Array<String>] :message_types
    #   The type of message. Valid values are TRANSACTIONAL for messages that
    #   are critical or time-sensitive and PROMOTIONAL for messages that
    #   aren't critical or time-sensitive.
    #
    # @option params [Boolean] :deletion_protection_enabled
    #   By default this is set to false. When set to true the sender ID can't
    #   be deleted.
    #
    # @option params [Array<Types::Tag>] :tags
    #   An array of tags (key and value pairs) to associate with the sender
    #   ID.
    #
    # @option params [String] :client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If you don't specify a client token, a
    #   randomly generated token is used for the request to ensure
    #   idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::RequestSenderIdResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RequestSenderIdResult#sender_id_arn #sender_id_arn} => String
    #   * {Types::RequestSenderIdResult#sender_id #sender_id} => String
    #   * {Types::RequestSenderIdResult#iso_country_code #iso_country_code} => String
    #   * {Types::RequestSenderIdResult#message_types #message_types} => Array&lt;String&gt;
    #   * {Types::RequestSenderIdResult#monthly_leasing_price #monthly_leasing_price} => String
    #   * {Types::RequestSenderIdResult#deletion_protection_enabled #deletion_protection_enabled} => Boolean
    #   * {Types::RequestSenderIdResult#registered #registered} => Boolean
    #   * {Types::RequestSenderIdResult#tags #tags} => Array&lt;Types::Tag&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.request_sender_id({
    #     sender_id: "SenderId", # required
    #     iso_country_code: "IsoCountryCode", # required
    #     message_types: ["TRANSACTIONAL"], # accepts TRANSACTIONAL, PROMOTIONAL
    #     deletion_protection_enabled: false,
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.sender_id_arn #=> String
    #   resp.sender_id #=> String
    #   resp.iso_country_code #=> String
    #   resp.message_types #=> Array
    #   resp.message_types[0] #=> String, one of "TRANSACTIONAL", "PROMOTIONAL"
    #   resp.monthly_leasing_price #=> String
    #   resp.deletion_protection_enabled #=> Boolean
    #   resp.registered #=> Boolean
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/RequestSenderId AWS API Documentation
    #
    # @overload request_sender_id(params = {})
    # @param [Hash] params ({})
    def request_sender_id(params = {}, options = {})
      req = build_request(:request_sender_id, params)
      req.send_request(options)
    end

    # Before you can send test messages to a verified destination phone
    # number you need to opt-in the verified destination phone number.
    # Creates a new text message with a verification code and send it to a
    # verified destination phone number. Once you have the verification code
    # use VerifyDestinationNumber to opt-in the verified destination phone
    # number to receive messages.
    #
    # @option params [required, String] :verified_destination_number_id
    #   The unique identifier for the verified destination phone number.
    #
    # @option params [required, String] :verification_channel
    #   Choose to send the verification code as an SMS or voice message.
    #
    # @option params [String] :language_code
    #   Choose the language to use for the message.
    #
    # @option params [String] :origination_identity
    #   The origination identity of the message. This can be either the
    #   PhoneNumber, PhoneNumberId, PhoneNumberArn, SenderId, SenderIdArn,
    #   PoolId, or PoolArn.
    #
    #   If you are using a shared AWS End User Messaging SMS and Voice
    #   resource then you must use the full Amazon Resource Name(ARN).
    #
    # @option params [String] :configuration_set_name
    #   The name of the configuration set to use. This can be either the
    #   ConfigurationSetName or ConfigurationSetArn.
    #
    # @option params [Hash<String,String>] :context
    #   You can specify custom data in this field. If you do, that data is
    #   logged to the event destination.
    #
    # @option params [Hash<String,String>] :destination_country_parameters
    #   This field is used for any country-specific registration requirements.
    #   Currently, this setting is only used when you send messages to
    #   recipients in India using a sender ID. For more information see
    #   [Special requirements for sending SMS messages to recipients in
    #   India][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/pinpoint/latest/userguide/channels-sms-senderid-india.html
    #
    # @return [Types::SendDestinationNumberVerificationCodeResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SendDestinationNumberVerificationCodeResult#message_id #message_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.send_destination_number_verification_code({
    #     verified_destination_number_id: "VerifiedDestinationNumberIdOrArn", # required
    #     verification_channel: "TEXT", # required, accepts TEXT, VOICE
    #     language_code: "DE_DE", # accepts DE_DE, EN_GB, EN_US, ES_419, ES_ES, FR_CA, FR_FR, IT_IT, JA_JP, KO_KR, PT_BR, ZH_CN, ZH_TW
    #     origination_identity: "VerificationMessageOriginationIdentity",
    #     configuration_set_name: "ConfigurationSetNameOrArn",
    #     context: {
    #       "ContextKey" => "ContextValue",
    #     },
    #     destination_country_parameters: {
    #       "IN_TEMPLATE_ID" => "DestinationCountryParameterValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.message_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/SendDestinationNumberVerificationCode AWS API Documentation
    #
    # @overload send_destination_number_verification_code(params = {})
    # @param [Hash] params ({})
    def send_destination_number_verification_code(params = {}, options = {})
      req = build_request(:send_destination_number_verification_code, params)
      req.send_request(options)
    end

    # Creates a new multimedia message (MMS) and sends it to a recipient's
    # phone number.
    #
    # @option params [required, String] :destination_phone_number
    #   The destination phone number in E.164 format.
    #
    # @option params [required, String] :origination_identity
    #   The origination identity of the message. This can be either the
    #   PhoneNumber, PhoneNumberId, PhoneNumberArn, SenderId, SenderIdArn,
    #   PoolId, or PoolArn.
    #
    #   If you are using a shared AWS End User Messaging SMS and Voice
    #   resource then you must use the full Amazon Resource Name(ARN).
    #
    # @option params [String] :message_body
    #   The text body of the message.
    #
    # @option params [Array<String>] :media_urls
    #   An array of URLs to each media file to send.
    #
    #   The media files have to be stored in an S3 bucket. Supported media
    #   file formats are listed in [MMS file types, size and character
    #   limits][1]. For more information on creating an S3 bucket and managing
    #   objects, see [Creating a bucket][2], [Uploading objects][3] in the
    #   *Amazon S3 User Guide*, and [Setting up an Amazon S3 bucket for MMS
    #   files][4] in the *Amazon Web Services End User Messaging SMS User
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/sms-voice/latest/userguide/mms-limitations-character.html
    #   [2]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/create-bucket-overview.html
    #   [3]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/upload-objects.html
    #   [4]: https://docs.aws.amazon.com/sms-voice/latest/userguide/send-mms-message.html#send-mms-message-bucket
    #
    # @option params [String] :configuration_set_name
    #   The name of the configuration set to use. This can be either the
    #   ConfigurationSetName or ConfigurationSetArn.
    #
    # @option params [String] :max_price
    #   The maximum amount that you want to spend, in US dollars, per each MMS
    #   message.
    #
    # @option params [Integer] :time_to_live
    #   How long the media message is valid for. By default this is 72 hours.
    #
    # @option params [Hash<String,String>] :context
    #   You can specify custom data in this field. If you do, that data is
    #   logged to the event destination.
    #
    # @option params [Boolean] :dry_run
    #   When set to true, the message is checked and validated, but isn't
    #   sent to the end recipient.
    #
    # @option params [String] :protect_configuration_id
    #   The unique identifier of the protect configuration to use.
    #
    # @option params [Boolean] :message_feedback_enabled
    #   Set to true to enable message feedback for the message. When a user
    #   receives the message you need to update the message status using
    #   PutMessageFeedback.
    #
    # @return [Types::SendMediaMessageResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SendMediaMessageResult#message_id #message_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.send_media_message({
    #     destination_phone_number: "PhoneNumber", # required
    #     origination_identity: "MediaMessageOriginationIdentity", # required
    #     message_body: "TextMessageBody",
    #     media_urls: ["MediaUrlValue"],
    #     configuration_set_name: "ConfigurationSetNameOrArn",
    #     max_price: "MaxPrice",
    #     time_to_live: 1,
    #     context: {
    #       "ContextKey" => "ContextValue",
    #     },
    #     dry_run: false,
    #     protect_configuration_id: "ProtectConfigurationIdOrArn",
    #     message_feedback_enabled: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.message_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/SendMediaMessage AWS API Documentation
    #
    # @overload send_media_message(params = {})
    # @param [Hash] params ({})
    def send_media_message(params = {}, options = {})
      req = build_request(:send_media_message, params)
      req.send_request(options)
    end

    # Creates a new text message and sends it to a recipient's phone
    # number. SendTextMessage only sends an SMS message to one recipient
    # each time it is invoked.
    #
    # SMS throughput limits are measured in Message Parts per Second (MPS).
    # Your MPS limit depends on the destination country of your messages, as
    # well as the type of phone number (origination number) that you use to
    # send the message. For more information about MPS, see [Message Parts
    # per Second (MPS) limits][1] in the *AWS End User Messaging SMS User
    # Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/sms-voice/latest/userguide/sms-limitations-mps.html
    #
    # @option params [required, String] :destination_phone_number
    #   The destination phone number in E.164 format.
    #
    # @option params [String] :origination_identity
    #   The origination identity of the message. This can be either the
    #   PhoneNumber, PhoneNumberId, PhoneNumberArn, SenderId, SenderIdArn,
    #   PoolId, or PoolArn.
    #
    #   If you are using a shared AWS End User Messaging SMS and Voice
    #   resource then you must use the full Amazon Resource Name(ARN).
    #
    # @option params [String] :message_body
    #   The body of the text message.
    #
    # @option params [String] :message_type
    #   The type of message. Valid values are for messages that are critical
    #   or time-sensitive and PROMOTIONAL for messages that aren't critical
    #   or time-sensitive.
    #
    # @option params [String] :keyword
    #   When you register a short code in the US, you must specify a program
    #   name. If you don’t have a US short code, omit this attribute.
    #
    # @option params [String] :configuration_set_name
    #   The name of the configuration set to use. This can be either the
    #   ConfigurationSetName or ConfigurationSetArn.
    #
    # @option params [String] :max_price
    #   The maximum amount that you want to spend, in US dollars, per each
    #   text message. If the calculated amount to send the text message is
    #   greater than `MaxPrice`, the message is not sent and an error is
    #   returned.
    #
    # @option params [Integer] :time_to_live
    #   How long the text message is valid for, in seconds. By default this is
    #   72 hours. If the messages isn't handed off before the TTL expires we
    #   stop attempting to hand off the message and return `TTL_EXPIRED`
    #   event.
    #
    # @option params [Hash<String,String>] :context
    #   You can specify custom data in this field. If you do, that data is
    #   logged to the event destination.
    #
    # @option params [Hash<String,String>] :destination_country_parameters
    #   This field is used for any country-specific registration requirements.
    #   Currently, this setting is only used when you send messages to
    #   recipients in India using a sender ID. For more information see
    #   [Special requirements for sending SMS messages to recipients in
    #   India][1].
    #
    #   * `IN_ENTITY_ID` The entity ID or Principal Entity (PE) ID that you
    #     received after completing the sender ID registration process.
    #
    #   * `IN_TEMPLATE_ID` The template ID that you received after completing
    #     the sender ID registration process.
    #
    #     Make sure that the Template ID that you specify matches your message
    #     template exactly. If your message doesn't match the template that
    #     you provided during the registration process, the mobile carriers
    #     might reject your message.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/pinpoint/latest/userguide/channels-sms-senderid-india.html
    #
    # @option params [Boolean] :dry_run
    #   When set to true, the message is checked and validated, but isn't
    #   sent to the end recipient. You are not charged for using `DryRun`.
    #
    #   The Message Parts per Second (MPS) limit when using `DryRun` is five.
    #   If your origination identity has a lower MPS limit then the lower MPS
    #   limit is used. For more information about MPS limits, see [Message
    #   Parts per Second (MPS) limits][1] in the *AWS End User Messaging SMS
    #   User Guide*..
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/sms-voice/latest/userguide/sms-limitations-mps.html
    #
    # @option params [String] :protect_configuration_id
    #   The unique identifier for the protect configuration.
    #
    # @option params [Boolean] :message_feedback_enabled
    #   Set to true to enable message feedback for the message. When a user
    #   receives the message you need to update the message status using
    #   PutMessageFeedback.
    #
    # @return [Types::SendTextMessageResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SendTextMessageResult#message_id #message_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.send_text_message({
    #     destination_phone_number: "PhoneNumber", # required
    #     origination_identity: "TextMessageOriginationIdentity",
    #     message_body: "TextMessageBody",
    #     message_type: "TRANSACTIONAL", # accepts TRANSACTIONAL, PROMOTIONAL
    #     keyword: "Keyword",
    #     configuration_set_name: "ConfigurationSetNameOrArn",
    #     max_price: "MaxPrice",
    #     time_to_live: 1,
    #     context: {
    #       "ContextKey" => "ContextValue",
    #     },
    #     destination_country_parameters: {
    #       "IN_TEMPLATE_ID" => "DestinationCountryParameterValue",
    #     },
    #     dry_run: false,
    #     protect_configuration_id: "ProtectConfigurationIdOrArn",
    #     message_feedback_enabled: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.message_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/SendTextMessage AWS API Documentation
    #
    # @overload send_text_message(params = {})
    # @param [Hash] params ({})
    def send_text_message(params = {}, options = {})
      req = build_request(:send_text_message, params)
      req.send_request(options)
    end

    # Allows you to send a request that sends a voice message. This
    # operation uses [Amazon Polly][1] to convert a text script into a voice
    # message.
    #
    #
    #
    # [1]: http://aws.amazon.com/polly/
    #
    # @option params [required, String] :destination_phone_number
    #   The destination phone number in E.164 format.
    #
    # @option params [required, String] :origination_identity
    #   The origination identity to use for the voice call. This can be the
    #   PhoneNumber, PhoneNumberId, PhoneNumberArn, PoolId, or PoolArn.
    #
    #   If you are using a shared AWS End User Messaging SMS and Voice
    #   resource then you must use the full Amazon Resource Name(ARN).
    #
    # @option params [String] :message_body
    #   The text to convert to a voice message.
    #
    # @option params [String] :message_body_text_type
    #   Specifies if the MessageBody field contains text or [speech synthesis
    #   markup language (SSML)][1].
    #
    #   * TEXT: This is the default value. When used the maximum character
    #     limit is 3000.
    #
    #   * SSML: When used the maximum character limit is 6000 including SSML
    #     tagging.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/polly/latest/dg/what-is.html
    #
    # @option params [String] :voice_id
    #   The voice for the [Amazon Polly][1] service to use. By default this is
    #   set to "MATTHEW".
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/polly/latest/dg/what-is.html
    #
    # @option params [String] :configuration_set_name
    #   The name of the configuration set to use. This can be either the
    #   ConfigurationSetName or ConfigurationSetArn.
    #
    # @option params [String] :max_price_per_minute
    #   The maximum amount to spend per voice message, in US dollars.
    #
    # @option params [Integer] :time_to_live
    #   How long the voice message is valid for. By default this is 72 hours.
    #
    # @option params [Hash<String,String>] :context
    #   You can specify custom data in this field. If you do, that data is
    #   logged to the event destination.
    #
    # @option params [Boolean] :dry_run
    #   When set to true, the message is checked and validated, but isn't
    #   sent to the end recipient.
    #
    # @option params [String] :protect_configuration_id
    #   The unique identifier for the protect configuration.
    #
    # @option params [Boolean] :message_feedback_enabled
    #   Set to true to enable message feedback for the message. When a user
    #   receives the message you need to update the message status using
    #   PutMessageFeedback.
    #
    # @return [Types::SendVoiceMessageResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SendVoiceMessageResult#message_id #message_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.send_voice_message({
    #     destination_phone_number: "PhoneNumber", # required
    #     origination_identity: "VoiceMessageOriginationIdentity", # required
    #     message_body: "VoiceMessageBody",
    #     message_body_text_type: "TEXT", # accepts TEXT, SSML
    #     voice_id: "AMY", # accepts AMY, ASTRID, BIANCA, BRIAN, CAMILA, CARLA, CARMEN, CELINE, CHANTAL, CONCHITA, CRISTIANO, DORA, EMMA, ENRIQUE, EWA, FILIZ, GERAINT, GIORGIO, GWYNETH, HANS, INES, IVY, JACEK, JAN, JOANNA, JOEY, JUSTIN, KARL, KENDRA, KIMBERLY, LEA, LIV, LOTTE, LUCIA, LUPE, MADS, MAJA, MARLENE, MATHIEU, MATTHEW, MAXIM, MIA, MIGUEL, MIZUKI, NAJA, NICOLE, PENELOPE, RAVEENA, RICARDO, RUBEN, RUSSELL, SALLI, SEOYEON, TAKUMI, TATYANA, VICKI, VITORIA, ZEINA, ZHIYU
    #     configuration_set_name: "ConfigurationSetNameOrArn",
    #     max_price_per_minute: "MaxPrice",
    #     time_to_live: 1,
    #     context: {
    #       "ContextKey" => "ContextValue",
    #     },
    #     dry_run: false,
    #     protect_configuration_id: "ProtectConfigurationIdOrArn",
    #     message_feedback_enabled: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.message_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/SendVoiceMessage AWS API Documentation
    #
    # @overload send_voice_message(params = {})
    # @param [Hash] params ({})
    def send_voice_message(params = {}, options = {})
      req = build_request(:send_voice_message, params)
      req.send_request(options)
    end

    # Set a protect configuration as your account default. You can only have
    # one account default protect configuration at a time. The current
    # account default protect configuration is replaced with the provided
    # protect configuration.
    #
    # @option params [required, String] :protect_configuration_id
    #   The unique identifier for the protect configuration.
    #
    # @return [Types::SetAccountDefaultProtectConfigurationResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SetAccountDefaultProtectConfigurationResult#default_protect_configuration_arn #default_protect_configuration_arn} => String
    #   * {Types::SetAccountDefaultProtectConfigurationResult#default_protect_configuration_id #default_protect_configuration_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_account_default_protect_configuration({
    #     protect_configuration_id: "ProtectConfigurationIdOrArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.default_protect_configuration_arn #=> String
    #   resp.default_protect_configuration_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/SetAccountDefaultProtectConfiguration AWS API Documentation
    #
    # @overload set_account_default_protect_configuration(params = {})
    # @param [Hash] params ({})
    def set_account_default_protect_configuration(params = {}, options = {})
      req = build_request(:set_account_default_protect_configuration, params)
      req.send_request(options)
    end

    # Sets a configuration set's default for message feedback.
    #
    # @option params [required, String] :configuration_set_name
    #   The name of the configuration set to use. This can be either the
    #   ConfigurationSetName or ConfigurationSetArn.
    #
    # @option params [required, Boolean] :message_feedback_enabled
    #   Set to true to enable message feedback.
    #
    # @return [Types::SetDefaultMessageFeedbackEnabledResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SetDefaultMessageFeedbackEnabledResult#configuration_set_arn #configuration_set_arn} => String
    #   * {Types::SetDefaultMessageFeedbackEnabledResult#configuration_set_name #configuration_set_name} => String
    #   * {Types::SetDefaultMessageFeedbackEnabledResult#message_feedback_enabled #message_feedback_enabled} => Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_default_message_feedback_enabled({
    #     configuration_set_name: "ConfigurationSetNameOrArn", # required
    #     message_feedback_enabled: false, # required
    #   })
    #
    # @example Response structure
    #
    #   resp.configuration_set_arn #=> String
    #   resp.configuration_set_name #=> String
    #   resp.message_feedback_enabled #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/SetDefaultMessageFeedbackEnabled AWS API Documentation
    #
    # @overload set_default_message_feedback_enabled(params = {})
    # @param [Hash] params ({})
    def set_default_message_feedback_enabled(params = {}, options = {})
      req = build_request(:set_default_message_feedback_enabled, params)
      req.send_request(options)
    end

    # Sets the default message type on a configuration set.
    #
    # Choose the category of SMS messages that you plan to send from this
    # account. If you send account-related messages or time-sensitive
    # messages such as one-time passcodes, choose **Transactional**. If you
    # plan to send messages that contain marketing material or other
    # promotional content, choose **Promotional**. This setting applies to
    # your entire Amazon Web Services account.
    #
    # @option params [required, String] :configuration_set_name
    #   The configuration set to update with a new default message type. This
    #   field can be the ConsigurationSetName or ConfigurationSetArn.
    #
    # @option params [required, String] :message_type
    #   The type of message. Valid values are TRANSACTIONAL for messages that
    #   are critical or time-sensitive and PROMOTIONAL for messages that
    #   aren't critical or time-sensitive.
    #
    # @return [Types::SetDefaultMessageTypeResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SetDefaultMessageTypeResult#configuration_set_arn #configuration_set_arn} => String
    #   * {Types::SetDefaultMessageTypeResult#configuration_set_name #configuration_set_name} => String
    #   * {Types::SetDefaultMessageTypeResult#message_type #message_type} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_default_message_type({
    #     configuration_set_name: "ConfigurationSetNameOrArn", # required
    #     message_type: "TRANSACTIONAL", # required, accepts TRANSACTIONAL, PROMOTIONAL
    #   })
    #
    # @example Response structure
    #
    #   resp.configuration_set_arn #=> String
    #   resp.configuration_set_name #=> String
    #   resp.message_type #=> String, one of "TRANSACTIONAL", "PROMOTIONAL"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/SetDefaultMessageType AWS API Documentation
    #
    # @overload set_default_message_type(params = {})
    # @param [Hash] params ({})
    def set_default_message_type(params = {}, options = {})
      req = build_request(:set_default_message_type, params)
      req.send_request(options)
    end

    # Sets default sender ID on a configuration set.
    #
    # When sending a text message to a destination country that supports
    # sender IDs, the default sender ID on the configuration set specified
    # will be used if no dedicated origination phone numbers or registered
    # sender IDs are available in your account.
    #
    # @option params [required, String] :configuration_set_name
    #   The configuration set to updated with a new default SenderId. This
    #   field can be the ConsigurationSetName or ConfigurationSetArn.
    #
    # @option params [required, String] :sender_id
    #   The current sender ID for the configuration set. When sending a text
    #   message to a destination country which supports SenderIds, the default
    #   sender ID on the configuration set specified on SendTextMessage will
    #   be used if no dedicated origination phone numbers or registered
    #   SenderIds are available in your account, instead of a generic sender
    #   ID, such as 'NOTICE'.
    #
    # @return [Types::SetDefaultSenderIdResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SetDefaultSenderIdResult#configuration_set_arn #configuration_set_arn} => String
    #   * {Types::SetDefaultSenderIdResult#configuration_set_name #configuration_set_name} => String
    #   * {Types::SetDefaultSenderIdResult#sender_id #sender_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_default_sender_id({
    #     configuration_set_name: "ConfigurationSetNameOrArn", # required
    #     sender_id: "SenderId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.configuration_set_arn #=> String
    #   resp.configuration_set_name #=> String
    #   resp.sender_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/SetDefaultSenderId AWS API Documentation
    #
    # @overload set_default_sender_id(params = {})
    # @param [Hash] params ({})
    def set_default_sender_id(params = {}, options = {})
      req = build_request(:set_default_sender_id, params)
      req.send_request(options)
    end

    # Sets an account level monthly spend limit override for sending MMS
    # messages. The requested spend limit must be less than or equal to the
    # `MaxLimit`, which is set by Amazon Web Services.
    #
    # @option params [required, Integer] :monthly_limit
    #   The new monthly limit to enforce on text messages.
    #
    # @return [Types::SetMediaMessageSpendLimitOverrideResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SetMediaMessageSpendLimitOverrideResult#monthly_limit #monthly_limit} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_media_message_spend_limit_override({
    #     monthly_limit: 1, # required
    #   })
    #
    # @example Response structure
    #
    #   resp.monthly_limit #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/SetMediaMessageSpendLimitOverride AWS API Documentation
    #
    # @overload set_media_message_spend_limit_override(params = {})
    # @param [Hash] params ({})
    def set_media_message_spend_limit_override(params = {}, options = {})
      req = build_request(:set_media_message_spend_limit_override, params)
      req.send_request(options)
    end

    # Sets an account level monthly spend limit override for sending text
    # messages. The requested spend limit must be less than or equal to the
    # `MaxLimit`, which is set by Amazon Web Services.
    #
    # @option params [required, Integer] :monthly_limit
    #   The new monthly limit to enforce on text messages.
    #
    # @return [Types::SetTextMessageSpendLimitOverrideResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SetTextMessageSpendLimitOverrideResult#monthly_limit #monthly_limit} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_text_message_spend_limit_override({
    #     monthly_limit: 1, # required
    #   })
    #
    # @example Response structure
    #
    #   resp.monthly_limit #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/SetTextMessageSpendLimitOverride AWS API Documentation
    #
    # @overload set_text_message_spend_limit_override(params = {})
    # @param [Hash] params ({})
    def set_text_message_spend_limit_override(params = {}, options = {})
      req = build_request(:set_text_message_spend_limit_override, params)
      req.send_request(options)
    end

    # Sets an account level monthly spend limit override for sending voice
    # messages. The requested spend limit must be less than or equal to the
    # `MaxLimit`, which is set by Amazon Web Services.
    #
    # @option params [required, Integer] :monthly_limit
    #   The new monthly limit to enforce on voice messages.
    #
    # @return [Types::SetVoiceMessageSpendLimitOverrideResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SetVoiceMessageSpendLimitOverrideResult#monthly_limit #monthly_limit} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_voice_message_spend_limit_override({
    #     monthly_limit: 1, # required
    #   })
    #
    # @example Response structure
    #
    #   resp.monthly_limit #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/SetVoiceMessageSpendLimitOverride AWS API Documentation
    #
    # @overload set_voice_message_spend_limit_override(params = {})
    # @param [Hash] params ({})
    def set_voice_message_spend_limit_override(params = {}, options = {})
      req = build_request(:set_voice_message_spend_limit_override, params)
      req.send_request(options)
    end

    # Submit the specified registration for review and approval.
    #
    # @option params [required, String] :registration_id
    #   The unique identifier for the registration.
    #
    # @return [Types::SubmitRegistrationVersionResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SubmitRegistrationVersionResult#registration_arn #registration_arn} => String
    #   * {Types::SubmitRegistrationVersionResult#registration_id #registration_id} => String
    #   * {Types::SubmitRegistrationVersionResult#version_number #version_number} => Integer
    #   * {Types::SubmitRegistrationVersionResult#registration_version_status #registration_version_status} => String
    #   * {Types::SubmitRegistrationVersionResult#registration_version_status_history #registration_version_status_history} => Types::RegistrationVersionStatusHistory
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.submit_registration_version({
    #     registration_id: "RegistrationIdOrArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.registration_arn #=> String
    #   resp.registration_id #=> String
    #   resp.version_number #=> Integer
    #   resp.registration_version_status #=> String, one of "DRAFT", "SUBMITTED", "REVIEWING", "REQUIRES_AUTHENTICATION", "APPROVED", "DISCARDED", "DENIED", "REVOKED", "ARCHIVED"
    #   resp.registration_version_status_history.draft_timestamp #=> Time
    #   resp.registration_version_status_history.submitted_timestamp #=> Time
    #   resp.registration_version_status_history.reviewing_timestamp #=> Time
    #   resp.registration_version_status_history.requires_authentication_timestamp #=> Time
    #   resp.registration_version_status_history.approved_timestamp #=> Time
    #   resp.registration_version_status_history.discarded_timestamp #=> Time
    #   resp.registration_version_status_history.denied_timestamp #=> Time
    #   resp.registration_version_status_history.revoked_timestamp #=> Time
    #   resp.registration_version_status_history.archived_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/SubmitRegistrationVersion AWS API Documentation
    #
    # @overload submit_registration_version(params = {})
    # @param [Hash] params ({})
    def submit_registration_version(params = {}, options = {})
      req = build_request(:submit_registration_version, params)
      req.send_request(options)
    end

    # Adds or overwrites only the specified tags for the specified resource.
    # When you specify an existing tag key, the value is overwritten with
    # the new value. Each tag consists of a key and an optional value. Tag
    # keys must be unique per resource. For more information about tags, see
    # [Tags ][1] in the *AWS End User Messaging SMS User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/sms-voice/latest/userguide/phone-numbers-tags.html
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   An array of key and value pair tags that are associated with the
    #   resource.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes the association of the specified tags from a resource. For
    # more information on tags see [Tags ][1] in the *AWS End User Messaging
    # SMS User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/sms-voice/latest/userguide/phone-numbers-tags.html
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #
    # @option params [required, Array<String>] :tag_keys
    #   An array of tag key values to unassociate with the resource.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates an existing event destination in a configuration set. You can
    # update the IAM role ARN for CloudWatch Logs and Firehose. You can also
    # enable or disable the event destination.
    #
    # You may want to update an event destination to change its matching
    # event types or updating the destination resource ARN. You can't
    # change an event destination's type between CloudWatch Logs, Firehose,
    # and Amazon SNS.
    #
    # @option params [required, String] :configuration_set_name
    #   The configuration set to update with the new event destination. Valid
    #   values for this can be the ConfigurationSetName or
    #   ConfigurationSetArn.
    #
    # @option params [required, String] :event_destination_name
    #   The name to use for the event destination.
    #
    # @option params [Boolean] :enabled
    #   When set to true logging is enabled.
    #
    # @option params [Array<String>] :matching_event_types
    #   An array of event types that determine which events to log.
    #
    #   <note markdown="1"> The `TEXT_SENT` event type is not supported.
    #
    #    </note>
    #
    # @option params [Types::CloudWatchLogsDestination] :cloud_watch_logs_destination
    #   An object that contains information about an event destination that
    #   sends data to CloudWatch Logs.
    #
    # @option params [Types::KinesisFirehoseDestination] :kinesis_firehose_destination
    #   An object that contains information about an event destination for
    #   logging to Firehose.
    #
    # @option params [Types::SnsDestination] :sns_destination
    #   An object that contains information about an event destination that
    #   sends data to Amazon SNS.
    #
    # @return [Types::UpdateEventDestinationResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateEventDestinationResult#configuration_set_arn #configuration_set_arn} => String
    #   * {Types::UpdateEventDestinationResult#configuration_set_name #configuration_set_name} => String
    #   * {Types::UpdateEventDestinationResult#event_destination #event_destination} => Types::EventDestination
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_event_destination({
    #     configuration_set_name: "ConfigurationSetNameOrArn", # required
    #     event_destination_name: "EventDestinationName", # required
    #     enabled: false,
    #     matching_event_types: ["ALL"], # accepts ALL, TEXT_ALL, TEXT_SENT, TEXT_PENDING, TEXT_QUEUED, TEXT_SUCCESSFUL, TEXT_DELIVERED, TEXT_INVALID, TEXT_INVALID_MESSAGE, TEXT_UNREACHABLE, TEXT_CARRIER_UNREACHABLE, TEXT_BLOCKED, TEXT_CARRIER_BLOCKED, TEXT_SPAM, TEXT_UNKNOWN, TEXT_TTL_EXPIRED, TEXT_PROTECT_BLOCKED, VOICE_ALL, VOICE_INITIATED, VOICE_RINGING, VOICE_ANSWERED, VOICE_COMPLETED, VOICE_BUSY, VOICE_NO_ANSWER, VOICE_FAILED, VOICE_TTL_EXPIRED, MEDIA_ALL, MEDIA_PENDING, MEDIA_QUEUED, MEDIA_SUCCESSFUL, MEDIA_DELIVERED, MEDIA_INVALID, MEDIA_INVALID_MESSAGE, MEDIA_UNREACHABLE, MEDIA_CARRIER_UNREACHABLE, MEDIA_BLOCKED, MEDIA_CARRIER_BLOCKED, MEDIA_SPAM, MEDIA_UNKNOWN, MEDIA_TTL_EXPIRED, MEDIA_FILE_INACCESSIBLE, MEDIA_FILE_TYPE_UNSUPPORTED, MEDIA_FILE_SIZE_EXCEEDED
    #     cloud_watch_logs_destination: {
    #       iam_role_arn: "IamRoleArn", # required
    #       log_group_arn: "LogGroupArn", # required
    #     },
    #     kinesis_firehose_destination: {
    #       iam_role_arn: "IamRoleArn", # required
    #       delivery_stream_arn: "DeliveryStreamArn", # required
    #     },
    #     sns_destination: {
    #       topic_arn: "SnsTopicArn", # required
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.configuration_set_arn #=> String
    #   resp.configuration_set_name #=> String
    #   resp.event_destination.event_destination_name #=> String
    #   resp.event_destination.enabled #=> Boolean
    #   resp.event_destination.matching_event_types #=> Array
    #   resp.event_destination.matching_event_types[0] #=> String, one of "ALL", "TEXT_ALL", "TEXT_SENT", "TEXT_PENDING", "TEXT_QUEUED", "TEXT_SUCCESSFUL", "TEXT_DELIVERED", "TEXT_INVALID", "TEXT_INVALID_MESSAGE", "TEXT_UNREACHABLE", "TEXT_CARRIER_UNREACHABLE", "TEXT_BLOCKED", "TEXT_CARRIER_BLOCKED", "TEXT_SPAM", "TEXT_UNKNOWN", "TEXT_TTL_EXPIRED", "TEXT_PROTECT_BLOCKED", "VOICE_ALL", "VOICE_INITIATED", "VOICE_RINGING", "VOICE_ANSWERED", "VOICE_COMPLETED", "VOICE_BUSY", "VOICE_NO_ANSWER", "VOICE_FAILED", "VOICE_TTL_EXPIRED", "MEDIA_ALL", "MEDIA_PENDING", "MEDIA_QUEUED", "MEDIA_SUCCESSFUL", "MEDIA_DELIVERED", "MEDIA_INVALID", "MEDIA_INVALID_MESSAGE", "MEDIA_UNREACHABLE", "MEDIA_CARRIER_UNREACHABLE", "MEDIA_BLOCKED", "MEDIA_CARRIER_BLOCKED", "MEDIA_SPAM", "MEDIA_UNKNOWN", "MEDIA_TTL_EXPIRED", "MEDIA_FILE_INACCESSIBLE", "MEDIA_FILE_TYPE_UNSUPPORTED", "MEDIA_FILE_SIZE_EXCEEDED"
    #   resp.event_destination.cloud_watch_logs_destination.iam_role_arn #=> String
    #   resp.event_destination.cloud_watch_logs_destination.log_group_arn #=> String
    #   resp.event_destination.kinesis_firehose_destination.iam_role_arn #=> String
    #   resp.event_destination.kinesis_firehose_destination.delivery_stream_arn #=> String
    #   resp.event_destination.sns_destination.topic_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/UpdateEventDestination AWS API Documentation
    #
    # @overload update_event_destination(params = {})
    # @param [Hash] params ({})
    def update_event_destination(params = {}, options = {})
      req = build_request(:update_event_destination, params)
      req.send_request(options)
    end

    # Updates the configuration of an existing origination phone number. You
    # can update the opt-out list, enable or disable two-way messaging,
    # change the TwoWayChannelArn, enable or disable self-managed opt-outs,
    # and enable or disable deletion protection.
    #
    # If the origination phone number is associated with a pool, an error is
    # returned.
    #
    # @option params [required, String] :phone_number_id
    #   The unique identifier of the phone number. Valid values for this field
    #   can be either the PhoneNumberId or PhoneNumberArn.
    #
    #   If you are using a shared AWS End User Messaging SMS and Voice
    #   resource then you must use the full Amazon Resource Name(ARN).
    #
    # @option params [Boolean] :two_way_enabled
    #   By default this is set to false. When set to true you can receive
    #   incoming text messages from your end recipients.
    #
    # @option params [String] :two_way_channel_arn
    #   The Amazon Resource Name (ARN) of the two way channel.
    #
    # @option params [String] :two_way_channel_role
    #   An optional IAM Role Arn for a service to assume, to be able to post
    #   inbound SMS messages.
    #
    # @option params [Boolean] :self_managed_opt_outs_enabled
    #   By default this is set to false. When an end recipient sends a message
    #   that begins with HELP or STOP to one of your dedicated numbers, AWS
    #   End User Messaging SMS and Voice automatically replies with a
    #   customizable message and adds the end recipient to the OptOutList.
    #   When set to true you're responsible for responding to HELP and STOP
    #   requests. You're also responsible for tracking and honoring opt-out
    #   requests.
    #
    # @option params [String] :opt_out_list_name
    #   The OptOutList to add the phone number to. Valid values for this field
    #   can be either the OutOutListName or OutOutListArn.
    #
    # @option params [Boolean] :deletion_protection_enabled
    #   By default this is set to false. When set to true the phone number
    #   can't be deleted.
    #
    # @return [Types::UpdatePhoneNumberResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdatePhoneNumberResult#phone_number_arn #phone_number_arn} => String
    #   * {Types::UpdatePhoneNumberResult#phone_number_id #phone_number_id} => String
    #   * {Types::UpdatePhoneNumberResult#phone_number #phone_number} => String
    #   * {Types::UpdatePhoneNumberResult#status #status} => String
    #   * {Types::UpdatePhoneNumberResult#iso_country_code #iso_country_code} => String
    #   * {Types::UpdatePhoneNumberResult#message_type #message_type} => String
    #   * {Types::UpdatePhoneNumberResult#number_capabilities #number_capabilities} => Array&lt;String&gt;
    #   * {Types::UpdatePhoneNumberResult#number_type #number_type} => String
    #   * {Types::UpdatePhoneNumberResult#monthly_leasing_price #monthly_leasing_price} => String
    #   * {Types::UpdatePhoneNumberResult#two_way_enabled #two_way_enabled} => Boolean
    #   * {Types::UpdatePhoneNumberResult#two_way_channel_arn #two_way_channel_arn} => String
    #   * {Types::UpdatePhoneNumberResult#two_way_channel_role #two_way_channel_role} => String
    #   * {Types::UpdatePhoneNumberResult#self_managed_opt_outs_enabled #self_managed_opt_outs_enabled} => Boolean
    #   * {Types::UpdatePhoneNumberResult#opt_out_list_name #opt_out_list_name} => String
    #   * {Types::UpdatePhoneNumberResult#deletion_protection_enabled #deletion_protection_enabled} => Boolean
    #   * {Types::UpdatePhoneNumberResult#registration_id #registration_id} => String
    #   * {Types::UpdatePhoneNumberResult#created_timestamp #created_timestamp} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_phone_number({
    #     phone_number_id: "PhoneNumberIdOrArn", # required
    #     two_way_enabled: false,
    #     two_way_channel_arn: "TwoWayChannelArn",
    #     two_way_channel_role: "IamRoleArn",
    #     self_managed_opt_outs_enabled: false,
    #     opt_out_list_name: "OptOutListNameOrArn",
    #     deletion_protection_enabled: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.phone_number_arn #=> String
    #   resp.phone_number_id #=> String
    #   resp.phone_number #=> String
    #   resp.status #=> String, one of "PENDING", "ACTIVE", "ASSOCIATING", "DISASSOCIATING", "DELETED"
    #   resp.iso_country_code #=> String
    #   resp.message_type #=> String, one of "TRANSACTIONAL", "PROMOTIONAL"
    #   resp.number_capabilities #=> Array
    #   resp.number_capabilities[0] #=> String, one of "SMS", "VOICE", "MMS"
    #   resp.number_type #=> String, one of "SHORT_CODE", "LONG_CODE", "TOLL_FREE", "TEN_DLC", "SIMULATOR"
    #   resp.monthly_leasing_price #=> String
    #   resp.two_way_enabled #=> Boolean
    #   resp.two_way_channel_arn #=> String
    #   resp.two_way_channel_role #=> String
    #   resp.self_managed_opt_outs_enabled #=> Boolean
    #   resp.opt_out_list_name #=> String
    #   resp.deletion_protection_enabled #=> Boolean
    #   resp.registration_id #=> String
    #   resp.created_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/UpdatePhoneNumber AWS API Documentation
    #
    # @overload update_phone_number(params = {})
    # @param [Hash] params ({})
    def update_phone_number(params = {}, options = {})
      req = build_request(:update_phone_number, params)
      req.send_request(options)
    end

    # Updates the configuration of an existing pool. You can update the
    # opt-out list, enable or disable two-way messaging, change the
    # `TwoWayChannelArn`, enable or disable self-managed opt-outs, enable or
    # disable deletion protection, and enable or disable shared routes.
    #
    # @option params [required, String] :pool_id
    #   The unique identifier of the pool to update. Valid values are either
    #   the PoolId or PoolArn.
    #
    #   If you are using a shared AWS End User Messaging SMS and Voice
    #   resource then you must use the full Amazon Resource Name(ARN).
    #
    # @option params [Boolean] :two_way_enabled
    #   By default this is set to false. When set to true you can receive
    #   incoming text messages from your end recipients.
    #
    # @option params [String] :two_way_channel_arn
    #   The Amazon Resource Name (ARN) of the two way channel.
    #
    # @option params [String] :two_way_channel_role
    #   An optional IAM Role Arn for a service to assume, to be able to post
    #   inbound SMS messages.
    #
    # @option params [Boolean] :self_managed_opt_outs_enabled
    #   By default this is set to false. When an end recipient sends a message
    #   that begins with HELP or STOP to one of your dedicated numbers, AWS
    #   End User Messaging SMS and Voice automatically replies with a
    #   customizable message and adds the end recipient to the OptOutList.
    #   When set to true you're responsible for responding to HELP and STOP
    #   requests. You're also responsible for tracking and honoring opt-out
    #   requests.
    #
    # @option params [String] :opt_out_list_name
    #   The OptOutList to associate with the pool. Valid values are either
    #   OptOutListName or OptOutListArn.
    #
    #   If you are using a shared AWS End User Messaging SMS and Voice
    #   resource then you must use the full Amazon Resource Name(ARN).
    #
    # @option params [Boolean] :shared_routes_enabled
    #   Indicates whether shared routes are enabled for the pool.
    #
    # @option params [Boolean] :deletion_protection_enabled
    #   When set to true the pool can't be deleted.
    #
    # @return [Types::UpdatePoolResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdatePoolResult#pool_arn #pool_arn} => String
    #   * {Types::UpdatePoolResult#pool_id #pool_id} => String
    #   * {Types::UpdatePoolResult#status #status} => String
    #   * {Types::UpdatePoolResult#message_type #message_type} => String
    #   * {Types::UpdatePoolResult#two_way_enabled #two_way_enabled} => Boolean
    #   * {Types::UpdatePoolResult#two_way_channel_arn #two_way_channel_arn} => String
    #   * {Types::UpdatePoolResult#two_way_channel_role #two_way_channel_role} => String
    #   * {Types::UpdatePoolResult#self_managed_opt_outs_enabled #self_managed_opt_outs_enabled} => Boolean
    #   * {Types::UpdatePoolResult#opt_out_list_name #opt_out_list_name} => String
    #   * {Types::UpdatePoolResult#shared_routes_enabled #shared_routes_enabled} => Boolean
    #   * {Types::UpdatePoolResult#deletion_protection_enabled #deletion_protection_enabled} => Boolean
    #   * {Types::UpdatePoolResult#created_timestamp #created_timestamp} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_pool({
    #     pool_id: "PoolIdOrArn", # required
    #     two_way_enabled: false,
    #     two_way_channel_arn: "TwoWayChannelArn",
    #     two_way_channel_role: "IamRoleArn",
    #     self_managed_opt_outs_enabled: false,
    #     opt_out_list_name: "OptOutListNameOrArn",
    #     shared_routes_enabled: false,
    #     deletion_protection_enabled: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.pool_arn #=> String
    #   resp.pool_id #=> String
    #   resp.status #=> String, one of "CREATING", "ACTIVE", "DELETING"
    #   resp.message_type #=> String, one of "TRANSACTIONAL", "PROMOTIONAL"
    #   resp.two_way_enabled #=> Boolean
    #   resp.two_way_channel_arn #=> String
    #   resp.two_way_channel_role #=> String
    #   resp.self_managed_opt_outs_enabled #=> Boolean
    #   resp.opt_out_list_name #=> String
    #   resp.shared_routes_enabled #=> Boolean
    #   resp.deletion_protection_enabled #=> Boolean
    #   resp.created_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/UpdatePool AWS API Documentation
    #
    # @overload update_pool(params = {})
    # @param [Hash] params ({})
    def update_pool(params = {}, options = {})
      req = build_request(:update_pool, params)
      req.send_request(options)
    end

    # Update the setting for an existing protect configuration.
    #
    # @option params [required, String] :protect_configuration_id
    #   The unique identifier for the protect configuration.
    #
    # @option params [Boolean] :deletion_protection_enabled
    #   When set to true deletion protection is enabled. By default this is
    #   set to false.
    #
    # @return [Types::UpdateProtectConfigurationResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateProtectConfigurationResult#protect_configuration_arn #protect_configuration_arn} => String
    #   * {Types::UpdateProtectConfigurationResult#protect_configuration_id #protect_configuration_id} => String
    #   * {Types::UpdateProtectConfigurationResult#created_timestamp #created_timestamp} => Time
    #   * {Types::UpdateProtectConfigurationResult#account_default #account_default} => Boolean
    #   * {Types::UpdateProtectConfigurationResult#deletion_protection_enabled #deletion_protection_enabled} => Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_protect_configuration({
    #     protect_configuration_id: "ProtectConfigurationIdOrArn", # required
    #     deletion_protection_enabled: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.protect_configuration_arn #=> String
    #   resp.protect_configuration_id #=> String
    #   resp.created_timestamp #=> Time
    #   resp.account_default #=> Boolean
    #   resp.deletion_protection_enabled #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/UpdateProtectConfiguration AWS API Documentation
    #
    # @overload update_protect_configuration(params = {})
    # @param [Hash] params ({})
    def update_protect_configuration(params = {}, options = {})
      req = build_request(:update_protect_configuration, params)
      req.send_request(options)
    end

    # Update a country rule set to `ALLOW`, `BLOCK`, `MONITOR`, or `FILTER`
    # messages to be sent to the specified destination counties. You can
    # update one or multiple countries at a time. The updates are only
    # applied to the specified NumberCapability type.
    #
    # @option params [required, String] :protect_configuration_id
    #   The unique identifier for the protect configuration.
    #
    # @option params [required, String] :number_capability
    #   The number capability to apply the CountryRuleSetUpdates updates to.
    #
    # @option params [required, Hash<String,Types::ProtectConfigurationCountryRuleSetInformation>] :country_rule_set_updates
    #   A map of ProtectConfigurationCountryRuleSetInformation objects that
    #   contain the details for the requested NumberCapability. The Key is the
    #   two-letter ISO country code. For a list of supported ISO country
    #   codes, see [Supported countries and regions (SMS channel)][1] in the
    #   AWS End User Messaging SMS User Guide.
    #
    #   For example, to set the United States as allowed and Canada as
    #   blocked, the `CountryRuleSetUpdates` would be formatted as:
    #   `"CountryRuleSetUpdates": { "US" : { "ProtectStatus": "ALLOW" } "CA" :
    #   { "ProtectStatus": "BLOCK" } }`
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/sms-voice/latest/userguide/phone-numbers-sms-by-country.html
    #
    # @return [Types::UpdateProtectConfigurationCountryRuleSetResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateProtectConfigurationCountryRuleSetResult#protect_configuration_arn #protect_configuration_arn} => String
    #   * {Types::UpdateProtectConfigurationCountryRuleSetResult#protect_configuration_id #protect_configuration_id} => String
    #   * {Types::UpdateProtectConfigurationCountryRuleSetResult#number_capability #number_capability} => String
    #   * {Types::UpdateProtectConfigurationCountryRuleSetResult#country_rule_set #country_rule_set} => Hash&lt;String,Types::ProtectConfigurationCountryRuleSetInformation&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_protect_configuration_country_rule_set({
    #     protect_configuration_id: "ProtectConfigurationIdOrArn", # required
    #     number_capability: "SMS", # required, accepts SMS, VOICE, MMS
    #     country_rule_set_updates: { # required
    #       "IsoCountryCode" => {
    #         protect_status: "ALLOW", # required, accepts ALLOW, BLOCK, MONITOR, FILTER
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.protect_configuration_arn #=> String
    #   resp.protect_configuration_id #=> String
    #   resp.number_capability #=> String, one of "SMS", "VOICE", "MMS"
    #   resp.country_rule_set #=> Hash
    #   resp.country_rule_set["IsoCountryCode"].protect_status #=> String, one of "ALLOW", "BLOCK", "MONITOR", "FILTER"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/UpdateProtectConfigurationCountryRuleSet AWS API Documentation
    #
    # @overload update_protect_configuration_country_rule_set(params = {})
    # @param [Hash] params ({})
    def update_protect_configuration_country_rule_set(params = {}, options = {})
      req = build_request(:update_protect_configuration_country_rule_set, params)
      req.send_request(options)
    end

    # Updates the configuration of an existing sender ID.
    #
    # @option params [required, String] :sender_id
    #   The sender ID to update.
    #
    # @option params [required, String] :iso_country_code
    #   The two-character code, in ISO 3166-1 alpha-2 format, for the country
    #   or region.
    #
    # @option params [Boolean] :deletion_protection_enabled
    #   By default this is set to false. When set to true the sender ID can't
    #   be deleted.
    #
    # @return [Types::UpdateSenderIdResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateSenderIdResult#sender_id_arn #sender_id_arn} => String
    #   * {Types::UpdateSenderIdResult#sender_id #sender_id} => String
    #   * {Types::UpdateSenderIdResult#iso_country_code #iso_country_code} => String
    #   * {Types::UpdateSenderIdResult#message_types #message_types} => Array&lt;String&gt;
    #   * {Types::UpdateSenderIdResult#monthly_leasing_price #monthly_leasing_price} => String
    #   * {Types::UpdateSenderIdResult#deletion_protection_enabled #deletion_protection_enabled} => Boolean
    #   * {Types::UpdateSenderIdResult#registered #registered} => Boolean
    #   * {Types::UpdateSenderIdResult#registration_id #registration_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_sender_id({
    #     sender_id: "SenderIdOrArn", # required
    #     iso_country_code: "IsoCountryCode", # required
    #     deletion_protection_enabled: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.sender_id_arn #=> String
    #   resp.sender_id #=> String
    #   resp.iso_country_code #=> String
    #   resp.message_types #=> Array
    #   resp.message_types[0] #=> String, one of "TRANSACTIONAL", "PROMOTIONAL"
    #   resp.monthly_leasing_price #=> String
    #   resp.deletion_protection_enabled #=> Boolean
    #   resp.registered #=> Boolean
    #   resp.registration_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/UpdateSenderId AWS API Documentation
    #
    # @overload update_sender_id(params = {})
    # @param [Hash] params ({})
    def update_sender_id(params = {}, options = {})
      req = build_request(:update_sender_id, params)
      req.send_request(options)
    end

    # Use the verification code that was received by the verified
    # destination phone number to opt-in the verified destination phone
    # number to receive more messages.
    #
    # @option params [required, String] :verified_destination_number_id
    #   The unique identifier for the verififed destination phone number.
    #
    # @option params [required, String] :verification_code
    #   The verification code that was received by the verified destination
    #   phone number.
    #
    # @return [Types::VerifyDestinationNumberResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::VerifyDestinationNumberResult#verified_destination_number_arn #verified_destination_number_arn} => String
    #   * {Types::VerifyDestinationNumberResult#verified_destination_number_id #verified_destination_number_id} => String
    #   * {Types::VerifyDestinationNumberResult#destination_phone_number #destination_phone_number} => String
    #   * {Types::VerifyDestinationNumberResult#status #status} => String
    #   * {Types::VerifyDestinationNumberResult#created_timestamp #created_timestamp} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.verify_destination_number({
    #     verified_destination_number_id: "VerifiedDestinationNumberIdOrArn", # required
    #     verification_code: "VerificationCode", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.verified_destination_number_arn #=> String
    #   resp.verified_destination_number_id #=> String
    #   resp.destination_phone_number #=> String
    #   resp.status #=> String, one of "PENDING", "VERIFIED"
    #   resp.created_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/pinpoint-sms-voice-v2-2022-03-31/VerifyDestinationNumber AWS API Documentation
    #
    # @overload verify_destination_number(params = {})
    # @param [Hash] params ({})
    def verify_destination_number(params = {}, options = {})
      req = build_request(:verify_destination_number, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::PinpointSMSVoiceV2')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-pinpointsmsvoicev2'
      context[:gem_version] = '1.40.0'
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
