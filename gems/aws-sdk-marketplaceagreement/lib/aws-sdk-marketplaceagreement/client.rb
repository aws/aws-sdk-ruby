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

module Aws::MarketplaceAgreement
  # An API client for MarketplaceAgreement.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::MarketplaceAgreement::Client.new(
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

    @identifier = :marketplaceagreement

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
    add_plugin(Aws::MarketplaceAgreement::Plugins::Endpoints)

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
    #     Used only in `standard` and `adaptive` retry modes. Specifies whether to apply
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
    #     * `legacy` - The pre-existing retry behavior. This is the default
    #       value if no retry mode is provided.
    #
    #     * `standard` - A standardized set of retry rules across the AWS SDKs.
    #       This includes support for retry quotas, which limit the number of
    #       unsuccessful retries a client can make.
    #
    #     * `adaptive` - A retry mode that includes all the functionality of
    #       `standard` mode along with automatic client side throttling.
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
    #   @option options [Aws::MarketplaceAgreement::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::MarketplaceAgreement::EndpointParameters`.
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

    # Allows buyers (acceptors) to accept a cancellation request that is in
    # `PENDING_APPROVAL` status. Once accepted, the cancellation request
    # transitions to `APPROVED` status and the agreement cancellation will
    # be processed.
    #
    # <note markdown="1"> Only cancellation requests in `PENDING_APPROVAL` status can be
    # accepted. A `ConflictException` is thrown if the cancellation request
    # is in any other status.
    #
    #  </note>
    #
    # @option params [required, String] :agreement_id
    #   The unique identifier of the agreement associated with the
    #   cancellation request.
    #
    # @option params [required, String] :agreement_cancellation_request_id
    #   The unique identifier of the cancellation request to accept.
    #
    # @return [Types::AcceptAgreementCancellationRequestOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AcceptAgreementCancellationRequestOutput#agreement_id #agreement_id} => String
    #   * {Types::AcceptAgreementCancellationRequestOutput#agreement_cancellation_request_id #agreement_cancellation_request_id} => String
    #   * {Types::AcceptAgreementCancellationRequestOutput#status #status} => String
    #   * {Types::AcceptAgreementCancellationRequestOutput#reason_code #reason_code} => String
    #   * {Types::AcceptAgreementCancellationRequestOutput#description #description} => String
    #   * {Types::AcceptAgreementCancellationRequestOutput#created_at #created_at} => Time
    #   * {Types::AcceptAgreementCancellationRequestOutput#updated_at #updated_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.accept_agreement_cancellation_request({
    #     agreement_id: "AgreementId", # required
    #     agreement_cancellation_request_id: "AgreementCancellationRequestId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.agreement_id #=> String
    #   resp.agreement_cancellation_request_id #=> String
    #   resp.status #=> String, one of "PENDING_APPROVAL", "APPROVED", "REJECTED", "CANCELLED", "VALIDATION_FAILED"
    #   resp.reason_code #=> String, one of "INCORRECT_TERMS_ACCEPTED", "REPLACING_AGREEMENT", "TEST_AGREEMENT", "ALTERNATIVE_PROCUREMENT_CHANNEL", "PRODUCT_DISCONTINUED", "UNINTENDED_RENEWAL", "BUYER_DISSATISFACTION", "OTHER"
    #   resp.description #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/AcceptAgreementCancellationRequest AWS API Documentation
    #
    # @overload accept_agreement_cancellation_request(params = {})
    # @param [Hash] params ({})
    def accept_agreement_cancellation_request(params = {}, options = {})
      req = build_request(:accept_agreement_cancellation_request, params)
      req.send_request(options)
    end

    # Allows buyers (acceptors) to accept a payment request that is in
    # `PENDING_APPROVAL` status. Once accepted, the payment request
    # transitions to `APPROVED` status and the charge will be processed.
    # Buyers can optionally provide a purchase order reference for their
    # internal tracking.
    #
    # <note markdown="1"> Only payment requests in `PENDING_APPROVAL` status can be accepted. A
    # `ConflictException` is thrown if the payment request is in any other
    # status.
    #
    #  </note>
    #
    # @option params [required, String] :payment_request_id
    #   The unique identifier of the payment request to accept.
    #
    # @option params [required, String] :agreement_id
    #   The unique identifier of the agreement associated with the payment
    #   request.
    #
    # @option params [String] :purchase_order_reference
    #   An optional purchase order reference that buyers can provide to
    #   associate the payment request with their internal purchase order
    #   system.
    #
    # @return [Types::AcceptAgreementPaymentRequestOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AcceptAgreementPaymentRequestOutput#payment_request_id #payment_request_id} => String
    #   * {Types::AcceptAgreementPaymentRequestOutput#agreement_id #agreement_id} => String
    #   * {Types::AcceptAgreementPaymentRequestOutput#status #status} => String
    #   * {Types::AcceptAgreementPaymentRequestOutput#name #name} => String
    #   * {Types::AcceptAgreementPaymentRequestOutput#description #description} => String
    #   * {Types::AcceptAgreementPaymentRequestOutput#charge_amount #charge_amount} => String
    #   * {Types::AcceptAgreementPaymentRequestOutput#currency_code #currency_code} => String
    #   * {Types::AcceptAgreementPaymentRequestOutput#created_at #created_at} => Time
    #   * {Types::AcceptAgreementPaymentRequestOutput#updated_at #updated_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.accept_agreement_payment_request({
    #     payment_request_id: "PaymentRequestId", # required
    #     agreement_id: "AgreementId", # required
    #     purchase_order_reference: "PurchaseOrderReference",
    #   })
    #
    # @example Response structure
    #
    #   resp.payment_request_id #=> String
    #   resp.agreement_id #=> String
    #   resp.status #=> String, one of "VALIDATING", "VALIDATION_FAILED", "PENDING_APPROVAL", "APPROVED", "REJECTED", "CANCELLED"
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.charge_amount #=> String
    #   resp.currency_code #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/AcceptAgreementPaymentRequest AWS API Documentation
    #
    # @overload accept_agreement_payment_request(params = {})
    # @param [Hash] params ({})
    def accept_agreement_payment_request(params = {}, options = {})
      req = build_request(:accept_agreement_payment_request, params)
      req.send_request(options)
    end

    # Accepts an agreement request to finalize the agreement. The acceptor
    # can optionally provide purchase orders to associate with the agreement
    # charges.
    #
    # @option params [required, String] :agreement_request_id
    #   The unique identifier of the agreement request.
    #
    # @option params [Array<Types::PurchaseOrder>] :purchase_orders
    #   A list of purchase orders associated with accepting a marketplace
    #   agreement request.
    #
    # @return [Types::AcceptAgreementRequestOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AcceptAgreementRequestOutput#agreement_id #agreement_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.accept_agreement_request({
    #     agreement_request_id: "AgreementRequestId", # required
    #     purchase_orders: [
    #       {
    #         charge_id: "ResourceId", # required
    #         charge_revision: 1,
    #         agreement_id: "ResourceId",
    #         purchase_order_reference: "PurchaseOrderReference",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.agreement_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/AcceptAgreementRequest AWS API Documentation
    #
    # @overload accept_agreement_request(params = {})
    # @param [Hash] params ({})
    def accept_agreement_request(params = {}, options = {})
      req = build_request(:accept_agreement_request, params)
      req.send_request(options)
    end

    # Allows sellers (proposers) to submit billing adjustment requests for
    # one or more invoices within an agreement. Each entry in the batch
    # specifies an invoice and the adjustment amount. The operation returns
    # successfully created adjustment request IDs and any errors for entries
    # that failed to process.
    #
    # <note markdown="1"> Each entry requires a unique `clientToken` for idempotency.
    #
    #  </note>
    #
    # @option params [required, Array<Types::BatchCreateBillingAdjustmentRequestEntry>] :billing_adjustment_request_entries
    #   A list of billing adjustment request entries. Each entry specifies the
    #   invoice and adjustment details.
    #
    # @return [Types::BatchCreateBillingAdjustmentRequestOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchCreateBillingAdjustmentRequestOutput#items #items} => Array&lt;Types::BatchCreateBillingAdjustmentItem&gt;
    #   * {Types::BatchCreateBillingAdjustmentRequestOutput#errors #errors} => Array&lt;Types::BatchCreateBillingAdjustmentError&gt;
    #
    #
    # @example Example: Create billing adjustment requests
    #
    #   resp = client.batch_create_billing_adjustment_request({
    #     billing_adjustment_request_entries: [
    #       {
    #         adjustment_amount: "500.00", 
    #         adjustment_reason_code: "OTHER", 
    #         agreement_id: "agmt-SvIzsqYMyQwI3GWgJAe17URx", 
    #         client_token: "71a5e82e-a49b-4075-8c7f-52df1d294379", 
    #         currency_code: "USD", 
    #         description: "Customer requested adjustment due to service outage during critical business period.", 
    #         original_invoice_id: "E2E20230929a108cfae", 
    #       }, 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     errors: [
    #     ], 
    #     items: [
    #       {
    #         billing_adjustment_request_id: "ba-1a2b3c4d5e6f7g", 
    #         client_token: "71a5e82e-a49b-4075-8c7f-52df1d294379", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_create_billing_adjustment_request({
    #     billing_adjustment_request_entries: [ # required
    #       {
    #         agreement_id: "AgreementId", # required
    #         original_invoice_id: "InvoiceId", # required
    #         adjustment_amount: "PositiveAmountUpto8Decimals", # required
    #         currency_code: "CurrencyCode", # required
    #         adjustment_reason_code: "INCORRECT_TERMS_ACCEPTED", # required, accepts INCORRECT_TERMS_ACCEPTED, INCORRECT_METERING, TEST_ENVIRONMENT_CHARGES, ALTERNATIVE_PROCUREMENT_CHANNEL, UNINTENDED_RENEWAL, BUYER_DISSATISFACTION, OTHER
    #         description: "BillingAdjustmentDescription",
    #         client_token: "ClientToken", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].billing_adjustment_request_id #=> String
    #   resp.items[0].client_token #=> String
    #   resp.errors #=> Array
    #   resp.errors[0].code #=> String, one of "CONFLICT_EXCEPTION", "VALIDATION_EXCEPTION", "RESOURCE_NOT_FOUND_EXCEPTION", "INTERNAL_FAILURE"
    #   resp.errors[0].message #=> String
    #   resp.errors[0].client_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/BatchCreateBillingAdjustmentRequest AWS API Documentation
    #
    # @overload batch_create_billing_adjustment_request(params = {})
    # @param [Hash] params ({})
    def batch_create_billing_adjustment_request(params = {}, options = {})
      req = build_request(:batch_create_billing_adjustment_request, params)
      req.send_request(options)
    end

    # Allows an acceptor to cancel an active agreement. Not all agreements
    # are eligible for cancellation. Use the error response to determine why
    # a cancellation request was rejected.
    #
    # @option params [required, String] :agreement_id
    #   The unique identifier of the agreement.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_agreement({
    #     agreement_id: "ResourceId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/CancelAgreement AWS API Documentation
    #
    # @overload cancel_agreement(params = {})
    # @param [Hash] params ({})
    def cancel_agreement(params = {}, options = {})
      req = build_request(:cancel_agreement, params)
      req.send_request(options)
    end

    # Allows sellers (proposers) to withdraw an existing agreement
    # cancellation request that is in a pending state. Once cancelled, the
    # cancellation request transitions to `CANCELLED` status and can no
    # longer be approved or rejected by the buyer.
    #
    # <note markdown="1"> Only cancellation requests in `PENDING_APPROVAL` status can be
    # cancelled. A `ConflictException` is thrown if the cancellation request
    # is in any other status.
    #
    #  </note>
    #
    # @option params [required, String] :agreement_id
    #   The unique identifier of the agreement associated with the
    #   cancellation request.
    #
    # @option params [required, String] :agreement_cancellation_request_id
    #   The unique identifier of the cancellation request to cancel.
    #
    # @option params [required, String] :cancellation_reason
    #   A required message explaining why the cancellation request is being
    #   withdrawn (1-2000 characters).
    #
    # @return [Types::CancelAgreementCancellationRequestOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CancelAgreementCancellationRequestOutput#agreement_cancellation_request_id #agreement_cancellation_request_id} => String
    #   * {Types::CancelAgreementCancellationRequestOutput#agreement_id #agreement_id} => String
    #   * {Types::CancelAgreementCancellationRequestOutput#reason_code #reason_code} => String
    #   * {Types::CancelAgreementCancellationRequestOutput#description #description} => String
    #   * {Types::CancelAgreementCancellationRequestOutput#status #status} => String
    #   * {Types::CancelAgreementCancellationRequestOutput#status_message #status_message} => String
    #   * {Types::CancelAgreementCancellationRequestOutput#created_at #created_at} => Time
    #   * {Types::CancelAgreementCancellationRequestOutput#updated_at #updated_at} => Time
    #
    #
    # @example Example: Cancel a cancellation request
    #
    #   resp = client.cancel_agreement_cancellation_request({
    #     agreement_cancellation_request_id: "acr-752jqvg74yo7k4h56cakk6396", 
    #     agreement_id: "agmt-752jqvg74yo7k4h56cakk6396", 
    #     cancellation_reason: "Requested agreement cancellation by mistake", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     agreement_cancellation_request_id: "acr-752jqvg74yo7k4h56cakk6396", 
    #     agreement_id: "agmt-752jqvg74yo7k4h56cakk6396", 
    #     created_at: Time.parse("2025-01-15T10:30:00Z"), 
    #     description: "Product is being discontinued and no longer supported", 
    #     reason_code: "PRODUCT_DISCONTINUED", 
    #     status: "CANCELLED", 
    #     status_message: "Cancellation requested by seller", 
    #     updated_at: Time.parse("2025-01-16T10:30:00Z"), 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_agreement_cancellation_request({
    #     agreement_id: "AgreementId", # required
    #     agreement_cancellation_request_id: "AgreementCancellationRequestId", # required
    #     cancellation_reason: "AgreementCancellationRequestCancellationReason", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.agreement_cancellation_request_id #=> String
    #   resp.agreement_id #=> String
    #   resp.reason_code #=> String, one of "INCORRECT_TERMS_ACCEPTED", "REPLACING_AGREEMENT", "TEST_AGREEMENT", "ALTERNATIVE_PROCUREMENT_CHANNEL", "PRODUCT_DISCONTINUED", "UNINTENDED_RENEWAL", "BUYER_DISSATISFACTION", "OTHER"
    #   resp.description #=> String
    #   resp.status #=> String, one of "PENDING_APPROVAL", "APPROVED", "REJECTED", "CANCELLED", "VALIDATION_FAILED"
    #   resp.status_message #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/CancelAgreementCancellationRequest AWS API Documentation
    #
    # @overload cancel_agreement_cancellation_request(params = {})
    # @param [Hash] params ({})
    def cancel_agreement_cancellation_request(params = {}, options = {})
      req = build_request(:cancel_agreement_cancellation_request, params)
      req.send_request(options)
    end

    # Allows sellers (proposers) to cancel a payment request that is in
    # `PENDING_APPROVAL` status. Once cancelled, the payment request
    # transitions to `CANCELLED` status and can no longer be accepted or
    # rejected by the buyer.
    #
    # <note markdown="1"> Only payment requests in `PENDING_APPROVAL` status can be cancelled. A
    # `ConflictException` is thrown if the payment request is in any other
    # status.
    #
    #  </note>
    #
    # @option params [required, String] :payment_request_id
    #   The unique identifier of the payment request to cancel.
    #
    # @option params [required, String] :agreement_id
    #   The unique identifier of the agreement associated with the payment
    #   request.
    #
    # @return [Types::CancelAgreementPaymentRequestOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CancelAgreementPaymentRequestOutput#payment_request_id #payment_request_id} => String
    #   * {Types::CancelAgreementPaymentRequestOutput#agreement_id #agreement_id} => String
    #   * {Types::CancelAgreementPaymentRequestOutput#status #status} => String
    #   * {Types::CancelAgreementPaymentRequestOutput#name #name} => String
    #   * {Types::CancelAgreementPaymentRequestOutput#description #description} => String
    #   * {Types::CancelAgreementPaymentRequestOutput#charge_amount #charge_amount} => String
    #   * {Types::CancelAgreementPaymentRequestOutput#currency_code #currency_code} => String
    #   * {Types::CancelAgreementPaymentRequestOutput#created_at #created_at} => Time
    #   * {Types::CancelAgreementPaymentRequestOutput#updated_at #updated_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_agreement_payment_request({
    #     payment_request_id: "PaymentRequestId", # required
    #     agreement_id: "AgreementId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.payment_request_id #=> String
    #   resp.agreement_id #=> String
    #   resp.status #=> String, one of "VALIDATING", "VALIDATION_FAILED", "PENDING_APPROVAL", "APPROVED", "REJECTED", "CANCELLED"
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.charge_amount #=> String
    #   resp.currency_code #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/CancelAgreementPaymentRequest AWS API Documentation
    #
    # @overload cancel_agreement_payment_request(params = {})
    # @param [Hash] params ({})
    def cancel_agreement_payment_request(params = {}, options = {})
      req = build_request(:cancel_agreement_payment_request, params)
      req.send_request(options)
    end

    # Creates an agreement request that acts as a quote for the terms you
    # want to accept. The agreement request captures the requested terms,
    # calculates charges, and returns a summary. Use
    # `AcceptAgreementRequest` with the returned `agreementRequestId` to
    # finalize the agreement.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :intent
    #   The purpose and desired outcome of the agreement request. This is a
    #   required parameter that determines how the agreement request is
    #   processed.
    #
    #   * `NEW` – Creates a new agreement for terms in the request.
    #
    #   * `AMEND` – Modifies an existing agreement with terms that are
    #     accepted in the request.
    #
    #   * `REPLACE` – Creates a new agreement with accepted terms and replaces
    #     the existing agreement.
    #
    # @option params [required, Array<Types::RequestedTerm>] :requested_terms
    #   A list of terms that define what is being accepted as part of the
    #   agreement. Some terms require configuration.
    #
    # @option params [String] :source_agreement_identifier
    #   The agreement's identifier that the request acts upon.
    #
    #   This parameter is required for all non-`NEW` intents (i.e., `AMEND` or
    #   `REPLACE`). Don't provide this parameter if the intent is `NEW`.
    #
    # @option params [String] :agreement_proposal_identifier
    #   The agreement proposal signed by the proposer. The proposal includes
    #   the requested resources and the terms that outline an agreement
    #   outcome.
    #
    #   This parameter is required if the intent is not `AMEND`.
    #
    # @option params [Types::TaxConfiguration] :tax_configuration
    #   Configuration for tax estimation in the agreement request response.
    #
    # @return [Types::CreateAgreementRequestOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAgreementRequestOutput#agreement_request_id #agreement_request_id} => String
    #   * {Types::CreateAgreementRequestOutput#charge_summary #charge_summary} => Types::ChargeSummary
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_agreement_request({
    #     client_token: "ClientToken",
    #     intent: "NEW", # required, accepts NEW, AMEND, REPLACE
    #     requested_terms: [ # required
    #       {
    #         id: "TermId", # required
    #         configuration: {
    #           configurable_upfront_pricing_term_configuration: {
    #             selector_value: "BoundedString", # required
    #             dimensions: [ # required
    #               {
    #                 dimension_key: "BoundedString", # required
    #                 dimension_value: 1, # required
    #               },
    #             ],
    #           },
    #           renewal_term_configuration: {
    #             enable_auto_renew: false, # required
    #           },
    #           variable_payment_term_configuration: {
    #             payment_request_approval_strategy: "AUTO_APPROVE_ON_EXPIRATION", # required, accepts AUTO_APPROVE_ON_EXPIRATION, WAIT_FOR_APPROVAL
    #             expiration_duration: "ISO8601Duration",
    #           },
    #         },
    #       },
    #     ],
    #     source_agreement_identifier: "ResourceId",
    #     agreement_proposal_identifier: "AgreementProposalId",
    #     tax_configuration: {
    #       tax_estimation: "DISABLED", # accepts DISABLED, ENABLED
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.agreement_request_id #=> String
    #   resp.charge_summary.currency_code #=> String
    #   resp.charge_summary.new_agreement_value #=> String
    #   resp.charge_summary.new_agreement_value_after_tax #=> String
    #   resp.charge_summary.expected_charges #=> Array
    #   resp.charge_summary.expected_charges[0].id #=> String
    #   resp.charge_summary.expected_charges[0].time #=> Time
    #   resp.charge_summary.expected_charges[0].amount #=> String
    #   resp.charge_summary.expected_charges[0].amount_after_tax #=> String
    #   resp.charge_summary.expected_charges[0].timing #=> String, one of "ON_ACCEPTANCE", "SCHEDULED", "BILLING_PERIOD"
    #   resp.charge_summary.expected_charges[0].estimated_taxes.breakdown #=> Array
    #   resp.charge_summary.expected_charges[0].estimated_taxes.breakdown[0].amount #=> String
    #   resp.charge_summary.expected_charges[0].estimated_taxes.breakdown[0].rate #=> String
    #   resp.charge_summary.expected_charges[0].estimated_taxes.breakdown[0].type #=> String
    #   resp.charge_summary.expected_charges[0].estimated_taxes.total_amount #=> String
    #   resp.charge_summary.estimated_taxes.breakdown #=> Array
    #   resp.charge_summary.estimated_taxes.breakdown[0].amount #=> String
    #   resp.charge_summary.estimated_taxes.breakdown[0].rate #=> String
    #   resp.charge_summary.estimated_taxes.breakdown[0].type #=> String
    #   resp.charge_summary.estimated_taxes.total_amount #=> String
    #   resp.charge_summary.itemized_charges #=> Array
    #   resp.charge_summary.itemized_charges[0].dimension_key #=> String
    #   resp.charge_summary.itemized_charges[0].new_quantity #=> Integer
    #   resp.charge_summary.itemized_charges[0].old_quantity #=> Integer
    #   resp.charge_summary.itemized_charges[0].charge_reference #=> String
    #   resp.charge_summary.itemized_charges[0].incremental_charge_amount #=> String
    #   resp.charge_summary.invoicing_entity.legal_name #=> String
    #   resp.charge_summary.invoicing_entity.branch_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/CreateAgreementRequest AWS API Documentation
    #
    # @overload create_agreement_request(params = {})
    # @param [Hash] params ({})
    def create_agreement_request(params = {}, options = {})
      req = build_request(:create_agreement_request, params)
      req.send_request(options)
    end

    # Provides details about an agreement, such as the proposer, acceptor,
    # start date, and end date.
    #
    # @option params [required, String] :agreement_id
    #   The unique identifier of the agreement.
    #
    # @return [Types::DescribeAgreementOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAgreementOutput#agreement_id #agreement_id} => String
    #   * {Types::DescribeAgreementOutput#acceptor #acceptor} => Types::Acceptor
    #   * {Types::DescribeAgreementOutput#proposer #proposer} => Types::Proposer
    #   * {Types::DescribeAgreementOutput#start_time #start_time} => Time
    #   * {Types::DescribeAgreementOutput#end_time #end_time} => Time
    #   * {Types::DescribeAgreementOutput#acceptance_time #acceptance_time} => Time
    #   * {Types::DescribeAgreementOutput#agreement_type #agreement_type} => String
    #   * {Types::DescribeAgreementOutput#estimated_charges #estimated_charges} => Types::EstimatedCharges
    #   * {Types::DescribeAgreementOutput#proposal_summary #proposal_summary} => Types::ProposalSummary
    #   * {Types::DescribeAgreementOutput#status #status} => String
    #   * {Types::DescribeAgreementOutput#initial_agreement_id #initial_agreement_id} => String
    #   * {Types::DescribeAgreementOutput#end_time_behavior #end_time_behavior} => Types::EndTimeBehavior
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_agreement({
    #     agreement_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.agreement_id #=> String
    #   resp.acceptor.account_id #=> String
    #   resp.proposer.account_id #=> String
    #   resp.start_time #=> Time
    #   resp.end_time #=> Time
    #   resp.acceptance_time #=> Time
    #   resp.agreement_type #=> String
    #   resp.estimated_charges.currency_code #=> String
    #   resp.estimated_charges.agreement_value #=> String
    #   resp.proposal_summary.resources #=> Array
    #   resp.proposal_summary.resources[0].id #=> String
    #   resp.proposal_summary.resources[0].type #=> String
    #   resp.proposal_summary.offer_id #=> String
    #   resp.proposal_summary.offer_set_id #=> String
    #   resp.status #=> String, one of "ACTIVE", "ARCHIVED", "CANCELLED", "EXPIRED", "RENEWED", "REPLACED", "ROLLED_BACK", "SUPERSEDED", "TERMINATED"
    #   resp.initial_agreement_id #=> String
    #   resp.end_time_behavior.type #=> String, one of "RENEW", "REPLACE", "EXPIRE"
    #   resp.end_time_behavior.reason_code #=> String, one of "PROPOSER_RENEW_OPTED_OUT", "ACCEPTOR_RENEW_OPTED_OUT", "NO_RENEWAL_TERM", "RENEWAL_LIMIT_EXHAUSTED"
    #   resp.end_time_behavior.renewal_summary.offer_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/DescribeAgreement AWS API Documentation
    #
    # @overload describe_agreement(params = {})
    # @param [Hash] params ({})
    def describe_agreement(params = {}, options = {})
      req = build_request(:describe_agreement, params)
      req.send_request(options)
    end

    # Retrieves detailed information about a specific agreement cancellation
    # request. Both sellers (proposers) and buyers (acceptors) can use this
    # operation to view cancellation requests associated with their
    # agreements.
    #
    # @option params [required, String] :agreement_cancellation_request_id
    #   The unique identifier of the cancellation request.
    #
    # @option params [required, String] :agreement_id
    #   The unique identifier of the agreement associated with the
    #   cancellation request.
    #
    # @return [Types::GetAgreementCancellationRequestOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAgreementCancellationRequestOutput#agreement_cancellation_request_id #agreement_cancellation_request_id} => String
    #   * {Types::GetAgreementCancellationRequestOutput#agreement_id #agreement_id} => String
    #   * {Types::GetAgreementCancellationRequestOutput#reason_code #reason_code} => String
    #   * {Types::GetAgreementCancellationRequestOutput#description #description} => String
    #   * {Types::GetAgreementCancellationRequestOutput#status #status} => String
    #   * {Types::GetAgreementCancellationRequestOutput#status_message #status_message} => String
    #   * {Types::GetAgreementCancellationRequestOutput#created_at #created_at} => Time
    #   * {Types::GetAgreementCancellationRequestOutput#updated_at #updated_at} => Time
    #
    #
    # @example Example: Get a cancellation request
    #
    #   resp = client.get_agreement_cancellation_request({
    #     agreement_cancellation_request_id: "acr-sgew33rhsds", 
    #     agreement_id: "agmt-752jqvg74yo7k", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     agreement_cancellation_request_id: "acr-sgew33rhsds", 
    #     agreement_id: "agmt-752jqvg74yo7k", 
    #     created_at: Time.parse("2025-01-15T10:30:00Z"), 
    #     description: "Product is being discontinued and no longer supported", 
    #     reason_code: "PRODUCT_DISCONTINUED", 
    #     status: "VALIDATION_FAILED", 
    #     status_message: "Agreement is not in an active state", 
    #     updated_at: Time.parse("2025-01-16T10:30:00Z"), 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_agreement_cancellation_request({
    #     agreement_cancellation_request_id: "AgreementCancellationRequestId", # required
    #     agreement_id: "AgreementId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.agreement_cancellation_request_id #=> String
    #   resp.agreement_id #=> String
    #   resp.reason_code #=> String, one of "INCORRECT_TERMS_ACCEPTED", "REPLACING_AGREEMENT", "TEST_AGREEMENT", "ALTERNATIVE_PROCUREMENT_CHANNEL", "PRODUCT_DISCONTINUED", "UNINTENDED_RENEWAL", "BUYER_DISSATISFACTION", "OTHER"
    #   resp.description #=> String
    #   resp.status #=> String, one of "PENDING_APPROVAL", "APPROVED", "REJECTED", "CANCELLED", "VALIDATION_FAILED"
    #   resp.status_message #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/GetAgreementCancellationRequest AWS API Documentation
    #
    # @overload get_agreement_cancellation_request(params = {})
    # @param [Hash] params ({})
    def get_agreement_cancellation_request(params = {}, options = {})
      req = build_request(:get_agreement_cancellation_request, params)
      req.send_request(options)
    end

    # Obtains details about the entitlements of an agreement.
    #
    # @option params [required, String] :agreement_id
    #   The unique identifier of the agreement.
    #
    # @option params [Integer] :max_results
    #   The maximum number of agreement entitlements to return in the
    #   response.
    #
    # @option params [String] :next_token
    #   A token to specify where to start pagination.
    #
    # @return [Types::GetAgreementEntitlementsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAgreementEntitlementsOutput#agreement_entitlements #agreement_entitlements} => Array&lt;Types::AgreementEntitlement&gt;
    #   * {Types::GetAgreementEntitlementsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_agreement_entitlements({
    #     agreement_id: "ResourceId", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.agreement_entitlements #=> Array
    #   resp.agreement_entitlements[0].resource.id #=> String
    #   resp.agreement_entitlements[0].resource.type #=> String
    #   resp.agreement_entitlements[0].type #=> String
    #   resp.agreement_entitlements[0].registration_token #=> String
    #   resp.agreement_entitlements[0].status #=> String, one of "PROVISIONED", "SCHEDULED", "PENDING", "FAILED", "DEPROVISIONED"
    #   resp.agreement_entitlements[0].status_reason_code #=> String, one of "PROVISIONING_IN_PROGRESS", "FUTURE_START_DATE", "INVALID_PAYMENT_INSTRUMENT", "INCOMPATIBLE_CURRENCY", "ACCOUNT_SUSPENDED", "UNSUPPORTED_OPERATION", "AGREEMENT_INACTIVE", "AGREEMENT_ACTIVE", "PRODUCT_RESTRICTED"
    #   resp.agreement_entitlements[0].license_arn #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/GetAgreementEntitlements AWS API Documentation
    #
    # @overload get_agreement_entitlements(params = {})
    # @param [Hash] params ({})
    def get_agreement_entitlements(params = {}, options = {})
      req = build_request(:get_agreement_entitlements, params)
      req.send_request(options)
    end

    # Retrieves detailed information about a specific payment request. Both
    # sellers (proposers) and buyers (acceptors) can use this operation to
    # view payment requests associated with their agreements. The response
    # includes the current status, charge details, timestamps, and the
    # charge ID if the request has been approved.
    #
    # <note markdown="1"> The calling identity must be either the acceptor or proposer of the
    # payment request. A `ResourceNotFoundException` is returned if the
    # payment request does not exist.
    #
    #  </note>
    #
    # @option params [required, String] :payment_request_id
    #   The identifier of the payment request.
    #
    # @option params [required, String] :agreement_id
    #   The unique identifier of the agreement associated with the payment
    #   request.
    #
    # @return [Types::GetAgreementPaymentRequestOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAgreementPaymentRequestOutput#payment_request_id #payment_request_id} => String
    #   * {Types::GetAgreementPaymentRequestOutput#agreement_id #agreement_id} => String
    #   * {Types::GetAgreementPaymentRequestOutput#status #status} => String
    #   * {Types::GetAgreementPaymentRequestOutput#status_message #status_message} => String
    #   * {Types::GetAgreementPaymentRequestOutput#name #name} => String
    #   * {Types::GetAgreementPaymentRequestOutput#description #description} => String
    #   * {Types::GetAgreementPaymentRequestOutput#charge_id #charge_id} => String
    #   * {Types::GetAgreementPaymentRequestOutput#charge_amount #charge_amount} => String
    #   * {Types::GetAgreementPaymentRequestOutput#currency_code #currency_code} => String
    #   * {Types::GetAgreementPaymentRequestOutput#created_at #created_at} => Time
    #   * {Types::GetAgreementPaymentRequestOutput#updated_at #updated_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_agreement_payment_request({
    #     payment_request_id: "PaymentRequestId", # required
    #     agreement_id: "AgreementId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.payment_request_id #=> String
    #   resp.agreement_id #=> String
    #   resp.status #=> String, one of "VALIDATING", "VALIDATION_FAILED", "PENDING_APPROVAL", "APPROVED", "REJECTED", "CANCELLED"
    #   resp.status_message #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.charge_id #=> String
    #   resp.charge_amount #=> String
    #   resp.currency_code #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/GetAgreementPaymentRequest AWS API Documentation
    #
    # @overload get_agreement_payment_request(params = {})
    # @param [Hash] params ({})
    def get_agreement_payment_request(params = {}, options = {})
      req = build_request(:get_agreement_payment_request, params)
      req.send_request(options)
    end

    # Obtains details about the terms in an agreement that you participated
    # in as proposer or acceptor.
    #
    # The details include:
    #
    # * `TermType` – The type of term, such as `LegalTerm`, `RenewalTerm`,
    #   or `ConfigurableUpfrontPricingTerm`.
    #
    # * `TermID` – The ID of the particular term, which is common between
    #   offer and agreement.
    #
    # * `TermPayload` – The key information contained in the term, such as
    #   the EULA for `LegalTerm` or pricing and dimensions for various
    #   pricing terms, such as `ConfigurableUpfrontPricingTerm` or
    #   `UsageBasedPricingTerm`.
    # ^
    #
    # * `Configuration` – The buyer/acceptor's selection at the time of
    #   agreement creation, such as the number of units purchased for a
    #   dimension or setting the `EnableAutoRenew` flag.
    #
    # ^
    #
    # @option params [required, String] :agreement_id
    #   The unique identifier of the agreement.
    #
    # @option params [Integer] :max_results
    #   The maximum number of agreements to return in the response.
    #
    # @option params [String] :next_token
    #   A token to specify where to start pagination.
    #
    # @return [Types::GetAgreementTermsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAgreementTermsOutput#accepted_terms #accepted_terms} => Array&lt;Types::AcceptedTerm&gt;
    #   * {Types::GetAgreementTermsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_agreement_terms({
    #     agreement_id: "ResourceId", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.accepted_terms #=> Array
    #   resp.accepted_terms[0].legal_term.type #=> String
    #   resp.accepted_terms[0].legal_term.id #=> String
    #   resp.accepted_terms[0].legal_term.documents #=> Array
    #   resp.accepted_terms[0].legal_term.documents[0].type #=> String
    #   resp.accepted_terms[0].legal_term.documents[0].url #=> String
    #   resp.accepted_terms[0].legal_term.documents[0].version #=> String
    #   resp.accepted_terms[0].support_term.type #=> String
    #   resp.accepted_terms[0].support_term.id #=> String
    #   resp.accepted_terms[0].support_term.refund_policy #=> String
    #   resp.accepted_terms[0].renewal_term.type #=> String
    #   resp.accepted_terms[0].renewal_term.id #=> String
    #   resp.accepted_terms[0].renewal_term.configuration.enable_auto_renew #=> Boolean
    #   resp.accepted_terms[0].renewal_term.lockout_period #=> String
    #   resp.accepted_terms[0].renewal_term.max_renewals #=> Integer
    #   resp.accepted_terms[0].renewal_term.adjustment_deadline #=> String
    #   resp.accepted_terms[0].renewal_term.price_increase.fixed_percentage.value #=> String
    #   resp.accepted_terms[0].renewal_term.price_increase.percentage_range.min_value #=> String
    #   resp.accepted_terms[0].renewal_term.price_increase.percentage_range.max_value #=> String
    #   resp.accepted_terms[0].renewal_term.price_increase.percentage_range.default_value #=> String
    #   resp.accepted_terms[0].renewal_term.term_templates #=> Array
    #   resp.accepted_terms[0].renewal_term.term_templates[0].payment_schedule_term_template.schedule #=> Array
    #   resp.accepted_terms[0].renewal_term.term_templates[0].payment_schedule_term_template.schedule[0].charge_date_offset #=> String
    #   resp.accepted_terms[0].renewal_term.term_templates[0].payment_schedule_term_template.schedule[0].charge_percentage #=> String
    #   resp.accepted_terms[0].renewal_term.term_templates[0].payment_schedule_term_template.schedule[0].day_of_month #=> Integer
    #   resp.accepted_terms[0].usage_based_pricing_term.type #=> String
    #   resp.accepted_terms[0].usage_based_pricing_term.id #=> String
    #   resp.accepted_terms[0].usage_based_pricing_term.currency_code #=> String
    #   resp.accepted_terms[0].usage_based_pricing_term.rate_cards #=> Array
    #   resp.accepted_terms[0].usage_based_pricing_term.rate_cards[0].rate_card #=> Array
    #   resp.accepted_terms[0].usage_based_pricing_term.rate_cards[0].rate_card[0].dimension_key #=> String
    #   resp.accepted_terms[0].usage_based_pricing_term.rate_cards[0].rate_card[0].price #=> String
    #   resp.accepted_terms[0].configurable_upfront_pricing_term.type #=> String
    #   resp.accepted_terms[0].configurable_upfront_pricing_term.id #=> String
    #   resp.accepted_terms[0].configurable_upfront_pricing_term.currency_code #=> String
    #   resp.accepted_terms[0].configurable_upfront_pricing_term.rate_cards #=> Array
    #   resp.accepted_terms[0].configurable_upfront_pricing_term.rate_cards[0].selector.type #=> String
    #   resp.accepted_terms[0].configurable_upfront_pricing_term.rate_cards[0].selector.value #=> String
    #   resp.accepted_terms[0].configurable_upfront_pricing_term.rate_cards[0].constraints.multiple_dimension_selection #=> String
    #   resp.accepted_terms[0].configurable_upfront_pricing_term.rate_cards[0].constraints.quantity_configuration #=> String
    #   resp.accepted_terms[0].configurable_upfront_pricing_term.rate_cards[0].rate_card #=> Array
    #   resp.accepted_terms[0].configurable_upfront_pricing_term.rate_cards[0].rate_card[0].dimension_key #=> String
    #   resp.accepted_terms[0].configurable_upfront_pricing_term.rate_cards[0].rate_card[0].price #=> String
    #   resp.accepted_terms[0].configurable_upfront_pricing_term.configuration.selector_value #=> String
    #   resp.accepted_terms[0].configurable_upfront_pricing_term.configuration.dimensions #=> Array
    #   resp.accepted_terms[0].configurable_upfront_pricing_term.configuration.dimensions[0].dimension_key #=> String
    #   resp.accepted_terms[0].configurable_upfront_pricing_term.configuration.dimensions[0].dimension_value #=> Integer
    #   resp.accepted_terms[0].byol_pricing_term.type #=> String
    #   resp.accepted_terms[0].byol_pricing_term.id #=> String
    #   resp.accepted_terms[0].recurring_payment_term.type #=> String
    #   resp.accepted_terms[0].recurring_payment_term.id #=> String
    #   resp.accepted_terms[0].recurring_payment_term.currency_code #=> String
    #   resp.accepted_terms[0].recurring_payment_term.billing_period #=> String
    #   resp.accepted_terms[0].recurring_payment_term.price #=> String
    #   resp.accepted_terms[0].validity_term.type #=> String
    #   resp.accepted_terms[0].validity_term.id #=> String
    #   resp.accepted_terms[0].validity_term.agreement_duration #=> String
    #   resp.accepted_terms[0].validity_term.agreement_start_date #=> Time
    #   resp.accepted_terms[0].validity_term.agreement_end_date #=> Time
    #   resp.accepted_terms[0].payment_schedule_term.type #=> String
    #   resp.accepted_terms[0].payment_schedule_term.id #=> String
    #   resp.accepted_terms[0].payment_schedule_term.currency_code #=> String
    #   resp.accepted_terms[0].payment_schedule_term.schedule #=> Array
    #   resp.accepted_terms[0].payment_schedule_term.schedule[0].charge_date #=> Time
    #   resp.accepted_terms[0].payment_schedule_term.schedule[0].charge_amount #=> String
    #   resp.accepted_terms[0].free_trial_pricing_term.type #=> String
    #   resp.accepted_terms[0].free_trial_pricing_term.id #=> String
    #   resp.accepted_terms[0].free_trial_pricing_term.duration #=> String
    #   resp.accepted_terms[0].free_trial_pricing_term.grants #=> Array
    #   resp.accepted_terms[0].free_trial_pricing_term.grants[0].dimension_key #=> String
    #   resp.accepted_terms[0].free_trial_pricing_term.grants[0].max_quantity #=> Integer
    #   resp.accepted_terms[0].fixed_upfront_pricing_term.type #=> String
    #   resp.accepted_terms[0].fixed_upfront_pricing_term.id #=> String
    #   resp.accepted_terms[0].fixed_upfront_pricing_term.currency_code #=> String
    #   resp.accepted_terms[0].fixed_upfront_pricing_term.duration #=> String
    #   resp.accepted_terms[0].fixed_upfront_pricing_term.price #=> String
    #   resp.accepted_terms[0].fixed_upfront_pricing_term.grants #=> Array
    #   resp.accepted_terms[0].fixed_upfront_pricing_term.grants[0].dimension_key #=> String
    #   resp.accepted_terms[0].fixed_upfront_pricing_term.grants[0].max_quantity #=> Integer
    #   resp.accepted_terms[0].variable_payment_term.type #=> String
    #   resp.accepted_terms[0].variable_payment_term.id #=> String
    #   resp.accepted_terms[0].variable_payment_term.currency_code #=> String
    #   resp.accepted_terms[0].variable_payment_term.max_total_charge_amount #=> String
    #   resp.accepted_terms[0].variable_payment_term.configuration.payment_request_approval_strategy #=> String, one of "AUTO_APPROVE_ON_EXPIRATION", "WAIT_FOR_APPROVAL"
    #   resp.accepted_terms[0].variable_payment_term.configuration.expiration_duration #=> String
    #   resp.accepted_terms[0].net_payment_term.type #=> String
    #   resp.accepted_terms[0].net_payment_term.id #=> String
    #   resp.accepted_terms[0].net_payment_term.payment_due_period #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/GetAgreementTerms AWS API Documentation
    #
    # @overload get_agreement_terms(params = {})
    # @param [Hash] params ({})
    def get_agreement_terms(params = {}, options = {})
      req = build_request(:get_agreement_terms, params)
      req.send_request(options)
    end

    # Retrieves detailed information about a specific billing adjustment
    # request. Sellers (proposers) can use this operation to view the status
    # and details of a billing adjustment request they submitted.
    #
    # @option params [required, String] :agreement_id
    #   The unique identifier of the agreement associated with the billing
    #   adjustment request.
    #
    # @option params [required, String] :billing_adjustment_request_id
    #   The unique identifier of the billing adjustment request.
    #
    # @return [Types::GetBillingAdjustmentRequestOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetBillingAdjustmentRequestOutput#billing_adjustment_request_id #billing_adjustment_request_id} => String
    #   * {Types::GetBillingAdjustmentRequestOutput#agreement_id #agreement_id} => String
    #   * {Types::GetBillingAdjustmentRequestOutput#adjustment_reason_code #adjustment_reason_code} => String
    #   * {Types::GetBillingAdjustmentRequestOutput#description #description} => String
    #   * {Types::GetBillingAdjustmentRequestOutput#original_invoice_id #original_invoice_id} => String
    #   * {Types::GetBillingAdjustmentRequestOutput#adjustment_amount #adjustment_amount} => String
    #   * {Types::GetBillingAdjustmentRequestOutput#currency_code #currency_code} => String
    #   * {Types::GetBillingAdjustmentRequestOutput#status #status} => String
    #   * {Types::GetBillingAdjustmentRequestOutput#status_message #status_message} => String
    #   * {Types::GetBillingAdjustmentRequestOutput#created_at #created_at} => Time
    #   * {Types::GetBillingAdjustmentRequestOutput#updated_at #updated_at} => Time
    #
    #
    # @example Example: Get a billing adjustment request
    #
    #   resp = client.get_billing_adjustment_request({
    #     agreement_id: "agmt-SvIzsqYMyQwI3GWgJAe17URx", 
    #     billing_adjustment_request_id: "ba-1a2b3c4d5e6f7g", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     adjustment_amount: "500.00", 
    #     adjustment_reason_code: "OTHER", 
    #     agreement_id: "agmt-SvIzsqYMyQwI3GWgJAe17URx", 
    #     billing_adjustment_request_id: "ba-1a2b3c4d5e6f7g", 
    #     created_at: Time.parse("2025-06-24T19:30:00Z"), 
    #     currency_code: "USD", 
    #     description: "Customer requested adjustment", 
    #     original_invoice_id: "E2E20230929a108cfae", 
    #     status: "PENDING", 
    #     updated_at: Time.parse("2025-06-24T19:30:00Z"), 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_billing_adjustment_request({
    #     agreement_id: "AgreementId", # required
    #     billing_adjustment_request_id: "BillingAdjustmentRequestId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.billing_adjustment_request_id #=> String
    #   resp.agreement_id #=> String
    #   resp.adjustment_reason_code #=> String, one of "INCORRECT_TERMS_ACCEPTED", "INCORRECT_METERING", "TEST_ENVIRONMENT_CHARGES", "ALTERNATIVE_PROCUREMENT_CHANNEL", "UNINTENDED_RENEWAL", "BUYER_DISSATISFACTION", "OTHER"
    #   resp.description #=> String
    #   resp.original_invoice_id #=> String
    #   resp.adjustment_amount #=> String
    #   resp.currency_code #=> String
    #   resp.status #=> String, one of "PENDING", "VALIDATION_FAILED", "COMPLETED"
    #   resp.status_message #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/GetBillingAdjustmentRequest AWS API Documentation
    #
    # @overload get_billing_adjustment_request(params = {})
    # @param [Hash] params ({})
    def get_billing_adjustment_request(params = {}, options = {})
      req = build_request(:get_billing_adjustment_request, params)
      req.send_request(options)
    end

    # Lists agreement cancellation requests available to you as a seller or
    # buyer. Both sellers (proposers) and buyers (acceptors) can use this
    # operation to find cancellation requests by specifying their party type
    # and applying optional filters.
    #
    # <note markdown="1"> `PartyType` is a required parameter. A `ValidationException` is
    # returned if `PartyType` is not provided.
    #
    #  </note>
    #
    # @option params [required, String] :party_type
    #   The party type for the cancellation requests. Required parameter. Use
    #   `Proposer` to list cancellation requests where you are the seller, or
    #   `Acceptor` to list cancellation requests where you are the buyer.
    #
    # @option params [String] :agreement_id
    #   An optional parameter to filter cancellation requests for a specific
    #   agreement.
    #
    # @option params [String] :status
    #   An optional parameter to filter cancellation requests by status.
    #
    # @option params [String] :agreement_type
    #   An optional parameter to filter cancellation requests by agreement
    #   type (e.g., `PurchaseAgreement`).
    #
    # @option params [String] :catalog
    #   An optional parameter to filter cancellation requests by catalog
    #   (e.g., `AWSMarketplace`).
    #
    # @option params [Integer] :max_results
    #   The maximum number of cancellation requests to return in the response.
    #
    # @option params [String] :next_token
    #   A token to specify where to start pagination.
    #
    # @return [Types::ListAgreementCancellationRequestsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAgreementCancellationRequestsOutput#next_token #next_token} => String
    #   * {Types::ListAgreementCancellationRequestsOutput#items #items} => Array&lt;Types::AgreementCancellationRequestSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: List cancellation requests
    #
    #   resp = client.list_agreement_cancellation_requests({
    #     max_results: 10, 
    #     party_type: "Proposer", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     items: [
    #       {
    #         agreement_cancellation_request_id: "acr-sgew33rhsds", 
    #         agreement_id: "agmt-752jqvg74yo7k", 
    #         agreement_type: "PurchaseAgreement", 
    #         catalog: "AWSMarketplace", 
    #         created_at: Time.parse("2025-01-15T10:30:00Z"), 
    #         reason_code: "OTHER", 
    #         status: "PENDING_APPROVAL", 
    #         updated_at: Time.parse("2025-01-16T10:30:00Z"), 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_agreement_cancellation_requests({
    #     party_type: "PartyType", # required
    #     agreement_id: "AgreementId",
    #     status: "PENDING_APPROVAL", # accepts PENDING_APPROVAL, APPROVED, REJECTED, CANCELLED, VALIDATION_FAILED
    #     agreement_type: "AgreementType",
    #     catalog: "Catalog",
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.items #=> Array
    #   resp.items[0].agreement_cancellation_request_id #=> String
    #   resp.items[0].agreement_id #=> String
    #   resp.items[0].status #=> String, one of "PENDING_APPROVAL", "APPROVED", "REJECTED", "CANCELLED", "VALIDATION_FAILED"
    #   resp.items[0].reason_code #=> String, one of "INCORRECT_TERMS_ACCEPTED", "REPLACING_AGREEMENT", "TEST_AGREEMENT", "ALTERNATIVE_PROCUREMENT_CHANNEL", "PRODUCT_DISCONTINUED", "UNINTENDED_RENEWAL", "BUYER_DISSATISFACTION", "OTHER"
    #   resp.items[0].agreement_type #=> String
    #   resp.items[0].catalog #=> String
    #   resp.items[0].created_at #=> Time
    #   resp.items[0].updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/ListAgreementCancellationRequests AWS API Documentation
    #
    # @overload list_agreement_cancellation_requests(params = {})
    # @param [Hash] params ({})
    def list_agreement_cancellation_requests(params = {}, options = {})
      req = build_request(:list_agreement_cancellation_requests, params)
      req.send_request(options)
    end

    # Allows acceptors to view charges and purchase orders that are
    # associated with an agreement. The response includes details about all
    # charges regardless of whether a purchase order is linked to each
    # charge.
    #
    # @option params [String] :catalog
    #   The catalog in which the charges were created.
    #
    # @option params [String] :agreement_id
    #   The unique identifier of the agreement.
    #
    # @option params [String] :agreement_type
    #   Filter to retrieve charges of a specific agreement type (for example,
    #   `PurchaseAgreement`).
    #
    # @option params [Integer] :max_results
    #   The maximum number of charges to return in the response.
    #
    # @option params [String] :next_token
    #   A token to specify where to start pagination.
    #
    # @return [Types::ListAgreementChargesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAgreementChargesOutput#items #items} => Array&lt;Types::Charge&gt;
    #   * {Types::ListAgreementChargesOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_agreement_charges({
    #     catalog: "Catalog",
    #     agreement_id: "ResourceId",
    #     agreement_type: "AgreementType",
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].id #=> String
    #   resp.items[0].revision #=> Integer
    #   resp.items[0].agreement_id #=> String
    #   resp.items[0].agreement_type #=> String
    #   resp.items[0].purchase_order_reference #=> String
    #   resp.items[0].currency_code #=> String
    #   resp.items[0].amount #=> String
    #   resp.items[0].time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/ListAgreementCharges AWS API Documentation
    #
    # @overload list_agreement_charges(params = {})
    # @param [Hash] params ({})
    def list_agreement_charges(params = {}, options = {})
      req = build_request(:list_agreement_charges, params)
      req.send_request(options)
    end

    # Allows sellers (proposers) to retrieve aggregated billing data from
    # AWS Marketplace agreements using flexible grouping. Supports
    # invoice-level aggregation with filtering by billing period, invoice
    # type, and issued date.
    #
    # <note markdown="1"> The `groupBy` parameter is required and supports only `INVOICE_ID` as
    # a value. The `agreementId` parameter is required.
    #
    #  </note>
    #
    # @option params [required, String] :agreement_id
    #   The unique identifier of the agreement.
    #
    # @option params [required, String] :group_by
    #   Specifies a grouping strategy for line items. Currently supports
    #   `INVOICE_ID`.
    #
    # @option params [String] :invoice_id
    #   An optional filter to retrieve invoice information for a specific
    #   invoice.
    #
    # @option params [String] :invoice_type
    #   An optional filter for the type of invoice. Valid values are `INVOICE`
    #   and `CREDIT_MEMO`.
    #
    # @option params [Types::InvoiceBillingPeriod] :invoice_billing_period
    #   An optional filter for the billing period associated with the invoice.
    #
    # @option params [Time,DateTime,Date,Integer,String] :before_issued_time
    #   An optional filter for invoices issued before the specified timestamp.
    #
    # @option params [Time,DateTime,Date,Integer,String] :after_issued_time
    #   An optional filter for invoices issued after the specified timestamp.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in the response.
    #
    # @option params [String] :next_token
    #   A token to specify where to start pagination.
    #
    # @return [Types::ListAgreementInvoiceLineItemsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAgreementInvoiceLineItemsOutput#agreement_invoice_line_item_group_summaries #agreement_invoice_line_item_group_summaries} => Array&lt;Types::AgreementInvoiceLineItemGroupSummary&gt;
    #   * {Types::ListAgreementInvoiceLineItemsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: List agreement invoice line items
    #
    #   resp = client.list_agreement_invoice_line_items({
    #     agreement_id: "agmt-EXAMPLESvIzsqYMyQwI3", 
    #     group_by: "INVOICE_ID", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     agreement_invoice_line_item_group_summaries: [
    #       {
    #         agreement_id: "agmt-EXAMPLESvIzsqYMyQwI3", 
    #         invoice_billing_period: {
    #           month: 1, 
    #           year: 2025, 
    #         }, 
    #         invoice_id: "E2E20250105a108cfae", 
    #         invoice_type: "INVOICE", 
    #         invoicing_entity: {
    #           legal_name: "Amazon Web Services, Inc.", 
    #         }, 
    #         issued_time: Time.parse("2025-01-05T18:59:09Z"), 
    #         pricing_currency_amount: {
    #           amount: "1080.00", 
    #           currency_code: "USD", 
    #           max_adjustment_amount: "1000.00", 
    #         }, 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_agreement_invoice_line_items({
    #     agreement_id: "ResourceId", # required
    #     group_by: "INVOICE_ID", # required, accepts INVOICE_ID
    #     invoice_id: "ResourceId",
    #     invoice_type: "INVOICE", # accepts INVOICE, CREDIT_MEMO
    #     invoice_billing_period: {
    #       month: 1, # required
    #       year: 1, # required
    #     },
    #     before_issued_time: Time.now,
    #     after_issued_time: Time.now,
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.agreement_invoice_line_item_group_summaries #=> Array
    #   resp.agreement_invoice_line_item_group_summaries[0].agreement_id #=> String
    #   resp.agreement_invoice_line_item_group_summaries[0].invoice_id #=> String
    #   resp.agreement_invoice_line_item_group_summaries[0].pricing_currency_amount.amount #=> String
    #   resp.agreement_invoice_line_item_group_summaries[0].pricing_currency_amount.max_adjustment_amount #=> String
    #   resp.agreement_invoice_line_item_group_summaries[0].pricing_currency_amount.currency_code #=> String
    #   resp.agreement_invoice_line_item_group_summaries[0].invoice_billing_period.month #=> Integer
    #   resp.agreement_invoice_line_item_group_summaries[0].invoice_billing_period.year #=> Integer
    #   resp.agreement_invoice_line_item_group_summaries[0].issued_time #=> Time
    #   resp.agreement_invoice_line_item_group_summaries[0].invoice_type #=> String, one of "INVOICE", "CREDIT_MEMO"
    #   resp.agreement_invoice_line_item_group_summaries[0].invoicing_entity.legal_name #=> String
    #   resp.agreement_invoice_line_item_group_summaries[0].invoicing_entity.branch_name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/ListAgreementInvoiceLineItems AWS API Documentation
    #
    # @overload list_agreement_invoice_line_items(params = {})
    # @param [Hash] params ({})
    def list_agreement_invoice_line_items(params = {}, options = {})
      req = build_request(:list_agreement_invoice_line_items, params)
      req.send_request(options)
    end

    # Lists payment requests available to you as a seller or buyer. Both
    # sellers (proposers) and buyers (acceptors) can use this operation to
    # find payment requests by specifying their party type and applying
    # optional parameters.
    #
    # <note markdown="1"> `PartyType` is a required parameter. A `ValidationException` is
    # returned if `PartyType` is not provided. Pagination is supported
    # through `maxResults` (1-50, default 50) and `nextToken` parameters.
    #
    #  </note>
    #
    # @option params [required, String] :party_type
    #   The party type for the payment requests. Required parameter. Use
    #   `Proposer` to list payment requests where you are the seller, or
    #   `Acceptor` to list payment requests where you are the buyer.
    #
    # @option params [String] :agreement_type
    #   An optional parameter to list payment requests by agreement type
    #   (e.g., `PurchaseAgreement`).
    #
    # @option params [String] :catalog
    #   An optional parameter to list payment requests by catalog (e.g.,
    #   `AWSMarketplace`).
    #
    # @option params [String] :agreement_id
    #   An optional parameter to list payment requests for a specific
    #   agreement.
    #
    # @option params [String] :status
    #   An optional parameter to list payment requests by status. Valid values
    #   include `VALIDATING`, `VALIDATION_FAILED`, `PENDING_APPROVAL`,
    #   `APPROVED`, `REJECTED`, and `CANCELLED`.
    #
    # @option params [Integer] :max_results
    #   The maximum number of payment requests to return in a single response
    #   (1-50). Default is 50.
    #
    # @option params [String] :next_token
    #   A token to specify where to start pagination.
    #
    # @return [Types::ListAgreementPaymentRequestsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAgreementPaymentRequestsOutput#next_token #next_token} => String
    #   * {Types::ListAgreementPaymentRequestsOutput#items #items} => Array&lt;Types::PaymentRequestSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_agreement_payment_requests({
    #     party_type: "PartyType", # required
    #     agreement_type: "AgreementType",
    #     catalog: "Catalog",
    #     agreement_id: "AgreementId",
    #     status: "VALIDATING", # accepts VALIDATING, VALIDATION_FAILED, PENDING_APPROVAL, APPROVED, REJECTED, CANCELLED
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.items #=> Array
    #   resp.items[0].payment_request_id #=> String
    #   resp.items[0].agreement_id #=> String
    #   resp.items[0].status #=> String, one of "VALIDATING", "VALIDATION_FAILED", "PENDING_APPROVAL", "APPROVED", "REJECTED", "CANCELLED"
    #   resp.items[0].name #=> String
    #   resp.items[0].charge_id #=> String
    #   resp.items[0].charge_amount #=> String
    #   resp.items[0].currency_code #=> String
    #   resp.items[0].created_at #=> Time
    #   resp.items[0].updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/ListAgreementPaymentRequests AWS API Documentation
    #
    # @overload list_agreement_payment_requests(params = {})
    # @param [Hash] params ({})
    def list_agreement_payment_requests(params = {}, options = {})
      req = build_request(:list_agreement_payment_requests, params)
      req.send_request(options)
    end

    # Lists billing adjustment requests for a specific agreement. Sellers
    # (proposers) can use this operation to view all billing adjustment
    # requests associated with an agreement.
    #
    # @option params [String] :agreement_id
    #   The unique identifier of the agreement to list billing adjustment
    #   requests for.
    #
    # @option params [String] :status
    #   An optional filter to return billing adjustment requests with the
    #   specified status.
    #
    # @option params [Time,DateTime,Date,Integer,String] :created_after
    #   An optional filter to return billing adjustment requests created after
    #   the specified timestamp.
    #
    # @option params [Time,DateTime,Date,Integer,String] :created_before
    #   An optional filter to return billing adjustment requests created
    #   before the specified timestamp.
    #
    # @option params [Integer] :max_results
    #   The maximum number of billing adjustment requests to return in the
    #   response.
    #
    # @option params [String] :catalog
    #   An optional filter to return billing adjustment requests by catalog
    #   (e.g., `AWSMarketplace`).
    #
    # @option params [String] :agreement_type
    #   An optional filter to return billing adjustment requests by agreement
    #   type (e.g., `PurchaseAgreement`).
    #
    # @option params [String] :next_token
    #   A token to specify where to start pagination.
    #
    # @return [Types::ListBillingAdjustmentRequestsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListBillingAdjustmentRequestsOutput#next_token #next_token} => String
    #   * {Types::ListBillingAdjustmentRequestsOutput#items #items} => Array&lt;Types::BillingAdjustmentSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: List billing adjustment requests
    #
    #   resp = client.list_billing_adjustment_requests({
    #     agreement_id: "agmt-SvIzsqYMyQwI3GWgJAe17URx", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     items: [
    #       {
    #         adjustment_amount: "500.00", 
    #         agreement_id: "agmt-SvIzsqYMyQwI3GWgJAe17URx", 
    #         agreement_type: "PurchaseAgreement", 
    #         billing_adjustment_request_id: "ba-1a2b3c4d5e6f7g", 
    #         catalog: "AWSMarketplace", 
    #         created_at: Time.parse("2025-06-24T19:30:00Z"), 
    #         currency_code: "USD", 
    #         original_invoice_id: "E2E20230929a108cfae", 
    #         status: "PENDING", 
    #         updated_at: Time.parse("2025-06-24T19:30:00Z"), 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_billing_adjustment_requests({
    #     agreement_id: "AgreementId",
    #     status: "PENDING", # accepts PENDING, VALIDATION_FAILED, COMPLETED
    #     created_after: Time.now,
    #     created_before: Time.now,
    #     max_results: 1,
    #     catalog: "Catalog",
    #     agreement_type: "AgreementType",
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.items #=> Array
    #   resp.items[0].billing_adjustment_request_id #=> String
    #   resp.items[0].original_invoice_id #=> String
    #   resp.items[0].adjustment_amount #=> String
    #   resp.items[0].currency_code #=> String
    #   resp.items[0].status #=> String, one of "PENDING", "VALIDATION_FAILED", "COMPLETED"
    #   resp.items[0].agreement_id #=> String
    #   resp.items[0].created_at #=> Time
    #   resp.items[0].updated_at #=> Time
    #   resp.items[0].agreement_type #=> String
    #   resp.items[0].catalog #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/ListBillingAdjustmentRequests AWS API Documentation
    #
    # @overload list_billing_adjustment_requests(params = {})
    # @param [Hash] params ({})
    def list_billing_adjustment_requests(params = {}, options = {})
      req = build_request(:list_billing_adjustment_requests, params)
      req.send_request(options)
    end

    # Allows buyers (acceptors) to reject a cancellation request that is in
    # `PENDING_APPROVAL` status. Once rejected, the cancellation request
    # transitions to `REJECTED` status and the agreement remains active.
    # Buyers must provide a reason for the rejection.
    #
    # <note markdown="1"> Only cancellation requests in `PENDING_APPROVAL` status can be
    # rejected. A `ConflictException` is thrown if the cancellation request
    # is in any other status.
    #
    #  </note>
    #
    # @option params [required, String] :agreement_id
    #   The unique identifier of the agreement associated with the
    #   cancellation request.
    #
    # @option params [required, String] :agreement_cancellation_request_id
    #   The unique identifier of the cancellation request to reject.
    #
    # @option params [required, String] :rejection_reason
    #   The reason for rejecting the cancellation request (1-2000 characters).
    #   This message is visible to the seller.
    #
    # @return [Types::RejectAgreementCancellationRequestOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RejectAgreementCancellationRequestOutput#agreement_id #agreement_id} => String
    #   * {Types::RejectAgreementCancellationRequestOutput#agreement_cancellation_request_id #agreement_cancellation_request_id} => String
    #   * {Types::RejectAgreementCancellationRequestOutput#status #status} => String
    #   * {Types::RejectAgreementCancellationRequestOutput#status_message #status_message} => String
    #   * {Types::RejectAgreementCancellationRequestOutput#reason_code #reason_code} => String
    #   * {Types::RejectAgreementCancellationRequestOutput#description #description} => String
    #   * {Types::RejectAgreementCancellationRequestOutput#created_at #created_at} => Time
    #   * {Types::RejectAgreementCancellationRequestOutput#updated_at #updated_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reject_agreement_cancellation_request({
    #     agreement_id: "AgreementId", # required
    #     agreement_cancellation_request_id: "AgreementCancellationRequestId", # required
    #     rejection_reason: "AgreementCancellationRequestRejectionReason", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.agreement_id #=> String
    #   resp.agreement_cancellation_request_id #=> String
    #   resp.status #=> String, one of "PENDING_APPROVAL", "APPROVED", "REJECTED", "CANCELLED", "VALIDATION_FAILED"
    #   resp.status_message #=> String
    #   resp.reason_code #=> String, one of "INCORRECT_TERMS_ACCEPTED", "REPLACING_AGREEMENT", "TEST_AGREEMENT", "ALTERNATIVE_PROCUREMENT_CHANNEL", "PRODUCT_DISCONTINUED", "UNINTENDED_RENEWAL", "BUYER_DISSATISFACTION", "OTHER"
    #   resp.description #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/RejectAgreementCancellationRequest AWS API Documentation
    #
    # @overload reject_agreement_cancellation_request(params = {})
    # @param [Hash] params ({})
    def reject_agreement_cancellation_request(params = {}, options = {})
      req = build_request(:reject_agreement_cancellation_request, params)
      req.send_request(options)
    end

    # Allows buyers (acceptors) to reject a payment request that is in
    # `PENDING_APPROVAL` status. Once rejected, the payment request
    # transitions to `REJECTED` status and cannot be accepted. Buyers can
    # optionally provide a reason for the rejection.
    #
    # <note markdown="1"> Only payment requests in `PENDING_APPROVAL` status can be rejected. A
    # `ConflictException` is thrown if the payment request is in any other
    # status.
    #
    #  </note>
    #
    # @option params [required, String] :payment_request_id
    #   The unique identifier of the payment request to reject.
    #
    # @option params [required, String] :agreement_id
    #   The unique identifier of the agreement associated with the payment
    #   request.
    #
    # @option params [String] :rejection_reason
    #   An optional reason for rejecting the payment request (1-250
    #   characters). This message is visible to the seller.
    #
    # @return [Types::RejectAgreementPaymentRequestOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RejectAgreementPaymentRequestOutput#payment_request_id #payment_request_id} => String
    #   * {Types::RejectAgreementPaymentRequestOutput#agreement_id #agreement_id} => String
    #   * {Types::RejectAgreementPaymentRequestOutput#status #status} => String
    #   * {Types::RejectAgreementPaymentRequestOutput#status_message #status_message} => String
    #   * {Types::RejectAgreementPaymentRequestOutput#name #name} => String
    #   * {Types::RejectAgreementPaymentRequestOutput#description #description} => String
    #   * {Types::RejectAgreementPaymentRequestOutput#charge_amount #charge_amount} => String
    #   * {Types::RejectAgreementPaymentRequestOutput#currency_code #currency_code} => String
    #   * {Types::RejectAgreementPaymentRequestOutput#created_at #created_at} => Time
    #   * {Types::RejectAgreementPaymentRequestOutput#updated_at #updated_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reject_agreement_payment_request({
    #     payment_request_id: "PaymentRequestId", # required
    #     agreement_id: "AgreementId", # required
    #     rejection_reason: "PaymentRequestRejectionReason",
    #   })
    #
    # @example Response structure
    #
    #   resp.payment_request_id #=> String
    #   resp.agreement_id #=> String
    #   resp.status #=> String, one of "VALIDATING", "VALIDATION_FAILED", "PENDING_APPROVAL", "APPROVED", "REJECTED", "CANCELLED"
    #   resp.status_message #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.charge_amount #=> String
    #   resp.currency_code #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/RejectAgreementPaymentRequest AWS API Documentation
    #
    # @overload reject_agreement_payment_request(params = {})
    # @param [Hash] params ({})
    def reject_agreement_payment_request(params = {}, options = {})
      req = build_request(:reject_agreement_payment_request, params)
      req.send_request(options)
    end

    # Searches across all agreements that a proposer or an acceptor has in
    # AWS Marketplace. The search returns a list of agreements with basic
    # agreement information.
    #
    # @option params [String] :catalog
    #   The catalog in which the agreement was created.
    #
    # @option params [Array<Types::Filter>] :filters
    #   The filter name and value pair used to return a specific list of
    #   results.
    #
    #   The following filters are supported:
    #
    #   * `ResourceIdentifier` – The unique identifier of the resource.
    #
    #   * `ResourceType` – Type of the resource, which is the product
    #     (`AmiProduct`, `ContainerProduct`, `SaaSProduct`,
    #     `ProfessionalServicesProduct`, or `MachineLearningProduct`).
    #
    #   * `PartyType` – The party type of the caller. Use `Proposer` or
    #     `Acceptor`.
    #
    #   * `AcceptorAccountId` – The AWS account ID of the party accepting the
    #     agreement terms.
    #
    #   * `OfferId` – The unique identifier of the offer in which the terms
    #     are registered in the agreement token.
    #
    #   * `Status` – The current status of the agreement. Values include
    #     `ACTIVE`, `CANCELLED`, `EXPIRED`, `RENEWED`, `REPLACED`, and
    #     `TERMINATED`.
    #
    #   * `BeforeEndTime` – A date used to filter agreements with a date
    #     before the `endTime` of an agreement.
    #
    #   * `AfterEndTime` – A date used to filter agreements with a date after
    #     the `endTime` of an agreement.
    #
    #   * `BeforeStartTime` – A date used to filter agreements with a date
    #     before the `startTime` of an agreement.
    #
    #   * `AfterStartTime` – A date used to filter agreements with a date
    #     after the `startTime` of an agreement.
    #
    #   * `BeforeLastUpdateTime` – A date used to filter agreements with a
    #     date before the `lastUpdateTime` of an agreement.
    #
    #   * `AfterLastUpdateTime` – A date used to filter agreements with a date
    #     after the `lastUpdateTime` of an agreement.
    #
    #   * `AgreementType` – The type of agreement. Supported value includes
    #     `PurchaseAgreement`.
    #
    #   * `OfferSetId` – A unique identifier for the offer set containing this
    #     offer. All agreements created from offers in this set include this
    #     identifier as context.
    #
    #   * `EndTimeBehaviorType` – What happens to the agreement when it
    #     reaches its end date. Values include `RENEW`, `REPLACE`, and
    #     `EXPIRE`.
    #
    #   * `EndTimeBehaviorReasonCode` – The reason why the agreement doesn't
    #     renew at its end date. Values include `PROPOSER_RENEW_OPTED_OUT`,
    #     `ACCEPTOR_RENEW_OPTED_OUT`, `NO_RENEWAL_TERM`, and
    #     `RENEWAL_LIMIT_EXHAUSTED`.
    #
    #   * `InitialAgreementId` – The unique identifier of the very first
    #     agreement in a chain of related agreements. Use this filter to
    #     return every agreement in the same chain.
    #
    #   * `LicenseArn` – The Amazon Resource Name (ARN) of the AWS License
    #     Manager license associated with an entitlement granted by the
    #     agreement.
    #
    #   A proposer can use any combination of the preceding filters along with
    #   `AgreementType`, which is required.
    #
    #   The following filter combinations are supported when the `PartyType`
    #   is `Acceptor`:
    #
    #   * `AgreementType`
    #
    #   * `AgreementType` + `Status`
    #
    #   * `AgreementType` + `EndTime`
    #
    #   * `AgreementType` + `Status` + `EndTime`
    #
    #   * `AgreementType` + `ResourceIdentifier`
    #
    #   * `AgreementType` + `ResourceIdentifier` + `EndTime`
    #
    #   * `AgreementType` + `ResourceIdentifier` + `Status`
    #
    #   * `AgreementType` + `ResourceIdentifier` + `Status` + `EndTime`
    #
    #   * `AgreementType` + `ResourceType`
    #
    #   * `AgreementType` + `ResourceType` + `EndTime`
    #
    #   * `AgreementType` + `OfferId`
    #
    #   * `AgreementType` + `OfferId` + `EndTime`
    #
    #   * `AgreementType` + `OfferId` + `Status`
    #
    #   * `AgreementType` + `OfferId` + `Status` + `EndTime`
    #
    #   * `AgreementType` + `OfferSetId`
    #
    #   * `AgreementType` + `OfferSetId` + `EndTime`
    #
    #   * `AgreementType` + `OfferSetId` + `Status`
    #
    #   * `AgreementType` + `OfferSetId` + `Status` + `EndTime`
    #
    #   <note markdown="1"> To filter by `EndTime`, you can use `BeforeEndTime`, `AfterEndTime`,
    #   or both.
    #
    #    </note>
    #
    # @option params [Types::Sort] :sort
    #   An object that contains the `SortBy` and `SortOrder` attributes. For
    #   `SearchAgreements`, `SortBy` supports `EndTime` for both party types,
    #   and `StartTime` and `LastUpdateTime` only when `PartyType` is
    #   `Proposer`. The default `SortBy` value is `EndTime`.
    #
    # @option params [Integer] :max_results
    #   The maximum number of agreements to return in the response.
    #
    # @option params [String] :next_token
    #   A token to specify where to start pagination.
    #
    # @return [Types::SearchAgreementsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchAgreementsOutput#agreement_view_summaries #agreement_view_summaries} => Array&lt;Types::AgreementViewSummary&gt;
    #   * {Types::SearchAgreementsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_agreements({
    #     catalog: "Catalog",
    #     filters: [
    #       {
    #         name: "FilterName",
    #         values: ["FilterValue"],
    #       },
    #     ],
    #     sort: {
    #       sort_by: "SortBy",
    #       sort_order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #     },
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.agreement_view_summaries #=> Array
    #   resp.agreement_view_summaries[0].agreement_id #=> String
    #   resp.agreement_view_summaries[0].acceptance_time #=> Time
    #   resp.agreement_view_summaries[0].start_time #=> Time
    #   resp.agreement_view_summaries[0].end_time #=> Time
    #   resp.agreement_view_summaries[0].last_update_time #=> Time
    #   resp.agreement_view_summaries[0].agreement_type #=> String
    #   resp.agreement_view_summaries[0].acceptor.account_id #=> String
    #   resp.agreement_view_summaries[0].proposer.account_id #=> String
    #   resp.agreement_view_summaries[0].proposal_summary.resources #=> Array
    #   resp.agreement_view_summaries[0].proposal_summary.resources[0].id #=> String
    #   resp.agreement_view_summaries[0].proposal_summary.resources[0].type #=> String
    #   resp.agreement_view_summaries[0].proposal_summary.offer_id #=> String
    #   resp.agreement_view_summaries[0].proposal_summary.offer_set_id #=> String
    #   resp.agreement_view_summaries[0].status #=> String, one of "ACTIVE", "ARCHIVED", "CANCELLED", "EXPIRED", "RENEWED", "REPLACED", "ROLLED_BACK", "SUPERSEDED", "TERMINATED"
    #   resp.agreement_view_summaries[0].entitlements #=> Array
    #   resp.agreement_view_summaries[0].entitlements[0].license_arn #=> String
    #   resp.agreement_view_summaries[0].initial_agreement_id #=> String
    #   resp.agreement_view_summaries[0].end_time_behavior_type #=> String, one of "RENEW", "REPLACE", "EXPIRE"
    #   resp.agreement_view_summaries[0].end_time_behavior_reason_code #=> String, one of "PROPOSER_RENEW_OPTED_OUT", "ACCEPTOR_RENEW_OPTED_OUT", "NO_RENEWAL_TERM", "RENEWAL_LIMIT_EXHAUSTED"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/SearchAgreements AWS API Documentation
    #
    # @overload search_agreements(params = {})
    # @param [Hash] params ({})
    def search_agreements(params = {}, options = {})
      req = build_request(:search_agreements, params)
      req.send_request(options)
    end

    # Allows sellers (proposers) to submit a cancellation request for an
    # active agreement. The cancellation request is created in
    # `PENDING_APPROVAL` status, at which point the buyer can review it.
    #
    # @option params [required, String] :agreement_id
    #   The unique identifier of the agreement for which the cancellation
    #   request is being submitted.
    #
    # @option params [required, String] :reason_code
    #   The reason code for the cancellation request.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :description
    #   An optional detailed description of the cancellation reason (1-2000
    #   characters).
    #
    # @return [Types::SendAgreementCancellationRequestOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SendAgreementCancellationRequestOutput#agreement_id #agreement_id} => String
    #   * {Types::SendAgreementCancellationRequestOutput#agreement_cancellation_request_id #agreement_cancellation_request_id} => String
    #   * {Types::SendAgreementCancellationRequestOutput#status #status} => String
    #   * {Types::SendAgreementCancellationRequestOutput#reason_code #reason_code} => String
    #   * {Types::SendAgreementCancellationRequestOutput#description #description} => String
    #   * {Types::SendAgreementCancellationRequestOutput#created_at #created_at} => Time
    #   * {Types::SendAgreementCancellationRequestOutput#updated_at #updated_at} => Time
    #
    #
    # @example Example: Send a cancellation request
    #
    #   resp = client.send_agreement_cancellation_request({
    #     agreement_id: "agmt-752jqvg74yo7k4h56cakk6396", 
    #     client_token: "53nQSKWt6AjrsiZPhzQyZT", 
    #     description: "Due to budget constraints, we are unable to continue with our current subscription", 
    #     reason_code: "OTHER", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     agreement_cancellation_request_id: "acr-752jqvg74yo7k4h56cakk6396", 
    #     agreement_id: "agmt-752jqvg74yo7k4h56cakk6396", 
    #     created_at: Time.parse("2025-01-15T10:30:00Z"), 
    #     description: "Due to budget constraints, we are unable to continue with our current subscription", 
    #     reason_code: "OTHER", 
    #     status: "PENDING_APPROVAL", 
    #     updated_at: Time.parse("2025-01-15T10:30:00Z"), 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.send_agreement_cancellation_request({
    #     agreement_id: "AgreementId", # required
    #     reason_code: "INCORRECT_TERMS_ACCEPTED", # required, accepts INCORRECT_TERMS_ACCEPTED, REPLACING_AGREEMENT, TEST_AGREEMENT, ALTERNATIVE_PROCUREMENT_CHANNEL, PRODUCT_DISCONTINUED, UNINTENDED_RENEWAL, BUYER_DISSATISFACTION, OTHER
    #     client_token: "ClientToken",
    #     description: "AgreementCancellationRequestDescription",
    #   })
    #
    # @example Response structure
    #
    #   resp.agreement_id #=> String
    #   resp.agreement_cancellation_request_id #=> String
    #   resp.status #=> String, one of "PENDING_APPROVAL", "APPROVED", "REJECTED", "CANCELLED", "VALIDATION_FAILED"
    #   resp.reason_code #=> String, one of "INCORRECT_TERMS_ACCEPTED", "REPLACING_AGREEMENT", "TEST_AGREEMENT", "ALTERNATIVE_PROCUREMENT_CHANNEL", "PRODUCT_DISCONTINUED", "UNINTENDED_RENEWAL", "BUYER_DISSATISFACTION", "OTHER"
    #   resp.description #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/SendAgreementCancellationRequest AWS API Documentation
    #
    # @overload send_agreement_cancellation_request(params = {})
    # @param [Hash] params ({})
    def send_agreement_cancellation_request(params = {}, options = {})
      req = build_request(:send_agreement_cancellation_request, params)
      req.send_request(options)
    end

    # Allows sellers (proposers) to submit a payment request to buyers
    # (acceptors) for a specific charge amount for an agreement that
    # includes a `VariablePaymentTerm`. The payment request is created in
    # `PENDING_APPROVAL` status, at which point the buyer can accept or
    # reject it.
    #
    # <note markdown="1"> The agreement must be active and have a `VariablePaymentTerm` to
    # support payment requests. The `chargeAmount` must not exceed the
    # remaining available balance under the `VariablePaymentTerm`
    # `maxTotalChargeAmount`.
    #
    #  </note>
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :agreement_id
    #   The unique identifier of the agreement for which the payment request
    #   is being submitted. Use `GetAgreementTerms` to retrieve agreement term
    #   details.
    #
    # @option params [required, String] :term_id
    #   The unique identifier of the `VariablePaymentTerm` for the agreement
    #   that the payment request is being sent for.
    #
    # @option params [required, String] :name
    #   A descriptive name for the payment request (5-64 characters).
    #
    # @option params [required, String] :charge_amount
    #   The amount requested to be charged to the buyer, positive decimal
    #   value in the currency of the accepted term.
    #
    #   <note markdown="1"> A `ValidationException` is returned if the `chargeAmount` exceeds the
    #   available balance, if the agreement doesn't have an active
    #   `VariablePaymentTerm`, or if the `termId` is invalid.
    #
    #    </note>
    #
    # @option params [String] :description
    #   An optional detailed description of the payment request (1-2000
    #   characters).
    #
    # @return [Types::SendAgreementPaymentRequestOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SendAgreementPaymentRequestOutput#payment_request_id #payment_request_id} => String
    #   * {Types::SendAgreementPaymentRequestOutput#agreement_id #agreement_id} => String
    #   * {Types::SendAgreementPaymentRequestOutput#status #status} => String
    #   * {Types::SendAgreementPaymentRequestOutput#name #name} => String
    #   * {Types::SendAgreementPaymentRequestOutput#description #description} => String
    #   * {Types::SendAgreementPaymentRequestOutput#charge_amount #charge_amount} => String
    #   * {Types::SendAgreementPaymentRequestOutput#currency_code #currency_code} => String
    #   * {Types::SendAgreementPaymentRequestOutput#created_at #created_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.send_agreement_payment_request({
    #     client_token: "ClientToken",
    #     agreement_id: "AgreementId", # required
    #     term_id: "TermId", # required
    #     name: "PaymentRequestName", # required
    #     charge_amount: "PositiveAmountUpto8Decimals", # required
    #     description: "PaymentRequestDescription",
    #   })
    #
    # @example Response structure
    #
    #   resp.payment_request_id #=> String
    #   resp.agreement_id #=> String
    #   resp.status #=> String, one of "VALIDATING", "VALIDATION_FAILED", "PENDING_APPROVAL", "APPROVED", "REJECTED", "CANCELLED"
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.charge_amount #=> String
    #   resp.currency_code #=> String
    #   resp.created_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/SendAgreementPaymentRequest AWS API Documentation
    #
    # @overload send_agreement_payment_request(params = {})
    # @param [Hash] params ({})
    def send_agreement_payment_request(params = {}, options = {})
      req = build_request(:send_agreement_payment_request, params)
      req.send_request(options)
    end

    # Allows acceptors to associate purchase orders with agreement charges
    # after an agreement is created.
    #
    # @option params [required, Array<Types::PurchaseOrder>] :purchase_orders
    #   Contains information about purchase order associations.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_purchase_orders({
    #     purchase_orders: [ # required
    #       {
    #         charge_id: "ResourceId", # required
    #         charge_revision: 1,
    #         agreement_id: "ResourceId",
    #         purchase_order_reference: "PurchaseOrderReference",
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-agreement-2020-03-01/UpdatePurchaseOrders AWS API Documentation
    #
    # @overload update_purchase_orders(params = {})
    # @param [Hash] params ({})
    def update_purchase_orders(params = {}, options = {})
      req = build_request(:update_purchase_orders, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::MarketplaceAgreement')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-marketplaceagreement'
      context[:gem_version] = '1.44.0'
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
