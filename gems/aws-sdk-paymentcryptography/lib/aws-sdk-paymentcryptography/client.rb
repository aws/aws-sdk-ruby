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

module Aws::PaymentCryptography
  # An API client for PaymentCryptography.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::PaymentCryptography::Client.new(
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

    @identifier = :paymentcryptography

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
    add_plugin(Aws::PaymentCryptography::Plugins::Endpoints)

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
    #   @option options [Aws::PaymentCryptography::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::PaymentCryptography::EndpointParameters`.
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

    # Adds replication Amazon Web Services Regions to an existing Amazon Web
    # Services Payment Cryptography key, enabling the key to be used for
    # cryptographic operations in additional Amazon Web Services Regions.
    #
    # Multi-region keys allow you to use the same key material across
    # multiple Amazon Web Services Regions, providing lower latency for
    # applications distributed across regions. When you add Replication
    # Regions, Amazon Web Services Payment Cryptography securely replicates
    # the key material to the specified Amazon Web Services Regions.
    #
    # The key must be in an active state to add Replication Regions. You can
    # add multiple regions in a single operation, and the key will be
    # available for use in those regions once replication is complete.
    #
    # **Cross-account use:** This operation can't be used across different
    # Amazon Web Services accounts.
    #
    # **Related operations:**
    #
    # * [RemoveKeyReplicationRegions][1]
    #
    # * [EnableDefaultKeyReplicationRegions][2]
    #
    # * [GetDefaultKeyReplicationRegions][3]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_RemoveKeyReplicationRegions.html
    # [2]: https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_EnableDefaultKeyReplicationRegions.html
    # [3]: https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_GetDefaultKeyReplicationRegions.html
    #
    # @option params [required, String] :key_identifier
    #   The key identifier (ARN or alias) of the key for which to add
    #   replication regions.
    #
    #   This key must exist and be in a valid state for replication
    #   operations.
    #
    # @option params [required, Array<String>] :replication_regions
    #   The list of Amazon Web Services Regions to add to the key's
    #   replication configuration.
    #
    #   Each region must be a valid Amazon Web Services Region where Amazon
    #   Web Services Payment Cryptography is available. The key will be
    #   replicated to these regions, allowing cryptographic operations to be
    #   performed closer to your applications.
    #
    # @return [Types::AddKeyReplicationRegionsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AddKeyReplicationRegionsOutput#key #key} => Types::Key
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_key_replication_regions({
    #     key_identifier: "KeyArnOrKeyAliasType", # required
    #     replication_regions: ["Region"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.key.key_arn #=> String
    #   resp.key.key_attributes.key_usage #=> String, one of "TR31_B0_BASE_DERIVATION_KEY", "TR31_C0_CARD_VERIFICATION_KEY", "TR31_D0_SYMMETRIC_DATA_ENCRYPTION_KEY", "TR31_D1_ASYMMETRIC_KEY_FOR_DATA_ENCRYPTION", "TR31_E0_EMV_MKEY_APP_CRYPTOGRAMS", "TR31_E1_EMV_MKEY_CONFIDENTIALITY", "TR31_E2_EMV_MKEY_INTEGRITY", "TR31_E4_EMV_MKEY_DYNAMIC_NUMBERS", "TR31_E5_EMV_MKEY_CARD_PERSONALIZATION", "TR31_E6_EMV_MKEY_OTHER", "TR31_K0_KEY_ENCRYPTION_KEY", "TR31_K1_KEY_BLOCK_PROTECTION_KEY", "TR31_K3_ASYMMETRIC_KEY_FOR_KEY_AGREEMENT", "TR31_M3_ISO_9797_3_MAC_KEY", "TR31_M1_ISO_9797_1_MAC_KEY", "TR31_M6_ISO_9797_5_CMAC_KEY", "TR31_M7_HMAC_KEY", "TR31_P0_PIN_ENCRYPTION_KEY", "TR31_P1_PIN_GENERATION_KEY", "TR31_S0_ASYMMETRIC_KEY_FOR_DIGITAL_SIGNATURE", "TR31_V1_IBM3624_PIN_VERIFICATION_KEY", "TR31_V2_VISA_PIN_VERIFICATION_KEY", "TR31_K2_TR34_ASYMMETRIC_KEY"
    #   resp.key.key_attributes.key_class #=> String, one of "SYMMETRIC_KEY", "ASYMMETRIC_KEY_PAIR", "PRIVATE_KEY", "PUBLIC_KEY"
    #   resp.key.key_attributes.key_algorithm #=> String, one of "TDES_2KEY", "TDES_3KEY", "AES_128", "AES_192", "AES_256", "HMAC_SHA256", "HMAC_SHA384", "HMAC_SHA512", "HMAC_SHA224", "RSA_2048", "RSA_3072", "RSA_4096", "ECC_NIST_P256", "ECC_NIST_P384", "ECC_NIST_P521"
    #   resp.key.key_attributes.key_modes_of_use.encrypt #=> Boolean
    #   resp.key.key_attributes.key_modes_of_use.decrypt #=> Boolean
    #   resp.key.key_attributes.key_modes_of_use.wrap #=> Boolean
    #   resp.key.key_attributes.key_modes_of_use.unwrap #=> Boolean
    #   resp.key.key_attributes.key_modes_of_use.generate #=> Boolean
    #   resp.key.key_attributes.key_modes_of_use.sign #=> Boolean
    #   resp.key.key_attributes.key_modes_of_use.verify #=> Boolean
    #   resp.key.key_attributes.key_modes_of_use.derive_key #=> Boolean
    #   resp.key.key_attributes.key_modes_of_use.no_restrictions #=> Boolean
    #   resp.key.key_check_value #=> String
    #   resp.key.key_check_value_algorithm #=> String, one of "CMAC", "ANSI_X9_24", "HMAC", "SHA_1"
    #   resp.key.enabled #=> Boolean
    #   resp.key.exportable #=> Boolean
    #   resp.key.key_state #=> String, one of "CREATE_IN_PROGRESS", "CREATE_COMPLETE", "DELETE_PENDING", "DELETE_COMPLETE"
    #   resp.key.key_origin #=> String, one of "EXTERNAL", "AWS_PAYMENT_CRYPTOGRAPHY"
    #   resp.key.create_timestamp #=> Time
    #   resp.key.usage_start_timestamp #=> Time
    #   resp.key.usage_stop_timestamp #=> Time
    #   resp.key.delete_pending_timestamp #=> Time
    #   resp.key.delete_timestamp #=> Time
    #   resp.key.derive_key_usage #=> String, one of "TR31_B0_BASE_DERIVATION_KEY", "TR31_C0_CARD_VERIFICATION_KEY", "TR31_D0_SYMMETRIC_DATA_ENCRYPTION_KEY", "TR31_E0_EMV_MKEY_APP_CRYPTOGRAMS", "TR31_E1_EMV_MKEY_CONFIDENTIALITY", "TR31_E2_EMV_MKEY_INTEGRITY", "TR31_E4_EMV_MKEY_DYNAMIC_NUMBERS", "TR31_E5_EMV_MKEY_CARD_PERSONALIZATION", "TR31_E6_EMV_MKEY_OTHER", "TR31_K0_KEY_ENCRYPTION_KEY", "TR31_K1_KEY_BLOCK_PROTECTION_KEY", "TR31_M3_ISO_9797_3_MAC_KEY", "TR31_M1_ISO_9797_1_MAC_KEY", "TR31_M6_ISO_9797_5_CMAC_KEY", "TR31_M7_HMAC_KEY", "TR31_P0_PIN_ENCRYPTION_KEY", "TR31_P1_PIN_GENERATION_KEY", "TR31_V1_IBM3624_PIN_VERIFICATION_KEY", "TR31_V2_VISA_PIN_VERIFICATION_KEY"
    #   resp.key.multi_region_key_type #=> String, one of "PRIMARY", "REPLICA"
    #   resp.key.primary_region #=> String
    #   resp.key.replication_status #=> Hash
    #   resp.key.replication_status["Region"].status #=> String, one of "IN_PROGRESS", "DELETE_IN_PROGRESS", "FAILED", "SYNCHRONIZED"
    #   resp.key.replication_status["Region"].status_message #=> String
    #   resp.key.using_default_replication_regions #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-2021-09-14/AddKeyReplicationRegions AWS API Documentation
    #
    # @overload add_key_replication_regions(params = {})
    # @param [Hash] params ({})
    def add_key_replication_regions(params = {}, options = {})
      req = build_request(:add_key_replication_regions, params)
      req.send_request(options)
    end

    # Creates an *alias*, or a friendly name, for an Amazon Web Services
    # Payment Cryptography key. You can use an alias to identify a key in
    # the console and when you call cryptographic operations such as
    # [EncryptData][1] or [DecryptData][2].
    #
    # You can associate the alias with any key in the same Amazon Web
    # Services Region. Each alias is associated with only one key at a time,
    # but a key can have multiple aliases. You can't create an alias
    # without a key. The alias must be unique in the account and Amazon Web
    # Services Region, but you can create another alias with the same name
    # in a different Amazon Web Services Region.
    #
    # To change the key that's associated with the alias, call
    # [UpdateAlias][3]. To delete the alias, call [DeleteAlias][4]. These
    # operations don't affect the underlying key. To get the alias that you
    # created, call [ListAliases][5].
    #
    # **Cross-account use**: This operation can't be used across different
    # Amazon Web Services accounts.
    #
    # **Related operations:**
    #
    # * [DeleteAlias][4]
    #
    # * [GetAlias][6]
    #
    # * [ListAliases][5]
    #
    # * [UpdateAlias][3]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/payment-cryptography/latest/DataAPIReference/API_EncryptData.html
    # [2]: https://docs.aws.amazon.com/payment-cryptography/latest/DataAPIReference/API_DecryptData.html
    # [3]: https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_UpdateAlias.html
    # [4]: https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_DeleteAlias.html
    # [5]: https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_ListAliases.html
    # [6]: https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_GetAlias.html
    #
    # @option params [required, String] :alias_name
    #   A friendly name that you can use to refer to a key. An alias must
    #   begin with `alias/` followed by a name, for example
    #   `alias/ExampleAlias`. It can contain only alphanumeric characters,
    #   forward slashes (/), underscores (\_), and dashes (-).
    #
    #   Don't include personal, confidential or sensitive information in this
    #   field. This field may be displayed in plaintext in CloudTrail logs and
    #   other output.
    #
    # @option params [String] :key_arn
    #   The `KeyARN` of the key to associate with the alias.
    #
    # @return [Types::CreateAliasOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAliasOutput#alias #alias} => Types::Alias
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_alias({
    #     alias_name: "AliasName", # required
    #     key_arn: "KeyArn",
    #   })
    #
    # @example Response structure
    #
    #   resp.alias.alias_name #=> String
    #   resp.alias.key_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-2021-09-14/CreateAlias AWS API Documentation
    #
    # @overload create_alias(params = {})
    # @param [Hash] params ({})
    def create_alias(params = {}, options = {})
      req = build_request(:create_alias, params)
      req.send_request(options)
    end

    # Creates an Amazon Web Services Payment Cryptography key, a logical
    # representation of a cryptographic key, that is unique in your account
    # and Amazon Web Services Region. You use keys for cryptographic
    # functions such as encryption and decryption.
    #
    # In addition to the key material used in cryptographic operations, an
    # Amazon Web Services Payment Cryptography key includes metadata such as
    # the key ARN, key usage, key origin, creation date, description, and
    # key state.
    #
    # When you create a key, you specify both immutable and mutable data
    # about the key. The immutable data contains key attributes that define
    # the scope and cryptographic operations that you can perform using the
    # key, for example key class (example: `SYMMETRIC_KEY`), key algorithm
    # (example: `TDES_2KEY`), key usage (example:
    # `TR31_P0_PIN_ENCRYPTION_KEY`) and key modes of use (example:
    # `Encrypt`). Amazon Web Services Payment Cryptography binds key
    # attributes to keys using key blocks when you store or export them.
    # Amazon Web Services Payment Cryptography stores the key contents
    # wrapped and never stores or transmits them in the clear.
    #
    # For information about valid combinations of key attributes, see
    # [Understanding key attributes][1] in the *Amazon Web Services Payment
    # Cryptography User Guide*. The mutable data contained within a key
    # includes usage timestamp and key deletion timestamp and can be
    # modified after creation.
    #
    # You can use the `CreateKey` operation to generate an ECC (Elliptic
    # Curve Cryptography) key pair used for establishing an ECDH (Elliptic
    # Curve Diffie-Hellman) key agreement between two parties. In the ECDH
    # key agreement process, both parties generate their own ECC key pair
    # with key usage K3 and exchange the public keys. Each party then use
    # their private key, the received public key from the other party, and
    # the key derivation parameters including key derivation function, hash
    # algorithm, derivation data, and key algorithm to derive a shared key.
    #
    # To maintain the single-use principle of cryptographic keys in
    # payments, ECDH derived keys should not be used for multiple purposes,
    # such as a `TR31_P0_PIN_ENCRYPTION_KEY` and
    # `TR31_K1_KEY_BLOCK_PROTECTION_KEY`. When creating ECC key pairs in
    # Amazon Web Services Payment Cryptography you can optionally set the
    # `DeriveKeyUsage` parameter, which defines the key usage bound to the
    # symmetric key that will be derived using the ECC key pair.
    #
    # **Cross-account use**: This operation can't be used across different
    # Amazon Web Services accounts.
    #
    # **Related operations:**
    #
    # * [DeleteKey][2]
    #
    # * [GetKey][3]
    #
    # * [ListKeys][4]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/payment-cryptography/latest/userguide/keys-validattributes.html
    # [2]: https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_DeleteKey.html
    # [3]: https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_GetKey.html
    # [4]: https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_ListKeys.html
    #
    # @option params [required, Types::KeyAttributes] :key_attributes
    #   The role of the key, the algorithm it supports, and the cryptographic
    #   operations allowed with the key. This data is immutable after the key
    #   is created.
    #
    # @option params [String] :key_check_value_algorithm
    #   The algorithm that Amazon Web Services Payment Cryptography uses to
    #   calculate the key check value (KCV). It is used to validate the key
    #   integrity.
    #
    #   For TDES keys, the KCV is computed by encrypting 8 bytes, each with
    #   value of zero, with the key to be checked and retaining the 3 highest
    #   order bytes of the encrypted result. For AES keys, the KCV is computed
    #   using a CMAC algorithm where the input data is 16 bytes of zero and
    #   retaining the 3 highest order bytes of the encrypted result.
    #
    # @option params [required, Boolean] :exportable
    #   Specifies whether the key is exportable from the service.
    #
    # @option params [Boolean] :enabled
    #   Specifies whether to enable the key. If the key is enabled, it is
    #   activated for use within the service. If the key is not enabled, then
    #   it is created but not activated. The default value is enabled.
    #
    # @option params [Array<Types::Tag>] :tags
    #   Assigns one or more tags to the Amazon Web Services Payment
    #   Cryptography key. Use this parameter to tag a key when it is created.
    #   To tag an existing Amazon Web Services Payment Cryptography key, use
    #   the [TagResource][1] operation.
    #
    #   Each tag consists of a tag key and a tag value. Both the tag key and
    #   the tag value are required, but the tag value can be an empty (null)
    #   string. You can't have more than one tag on an Amazon Web Services
    #   Payment Cryptography key with the same tag key.
    #
    #   Don't include personal, confidential or sensitive information in this
    #   field. This field may be displayed in plaintext in CloudTrail logs and
    #   other output.
    #
    #   <note markdown="1"> Tagging or untagging an Amazon Web Services Payment Cryptography key
    #   can allow or deny permission to the key.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_TagResource.html
    #
    # @option params [String] :derive_key_usage
    #   The intended cryptographic usage of keys derived from the ECC key pair
    #   to be created.
    #
    #   After creating an ECC key pair, you cannot change the intended
    #   cryptographic usage of keys derived from it using ECDH.
    #
    # @option params [Array<String>] :replication_regions
    #   A list of Amazon Web Services Regions for key replication operations.
    #
    #   Each region in the list must be a valid Amazon Web Services Region
    #   identifier where Amazon Web Services Payment Cryptography is
    #   available. This list is used to specify which regions should be added
    #   to or removed from a key's replication configuration.
    #
    # @return [Types::CreateKeyOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateKeyOutput#key #key} => Types::Key
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_key({
    #     key_attributes: { # required
    #       key_usage: "TR31_B0_BASE_DERIVATION_KEY", # required, accepts TR31_B0_BASE_DERIVATION_KEY, TR31_C0_CARD_VERIFICATION_KEY, TR31_D0_SYMMETRIC_DATA_ENCRYPTION_KEY, TR31_D1_ASYMMETRIC_KEY_FOR_DATA_ENCRYPTION, TR31_E0_EMV_MKEY_APP_CRYPTOGRAMS, TR31_E1_EMV_MKEY_CONFIDENTIALITY, TR31_E2_EMV_MKEY_INTEGRITY, TR31_E4_EMV_MKEY_DYNAMIC_NUMBERS, TR31_E5_EMV_MKEY_CARD_PERSONALIZATION, TR31_E6_EMV_MKEY_OTHER, TR31_K0_KEY_ENCRYPTION_KEY, TR31_K1_KEY_BLOCK_PROTECTION_KEY, TR31_K3_ASYMMETRIC_KEY_FOR_KEY_AGREEMENT, TR31_M3_ISO_9797_3_MAC_KEY, TR31_M1_ISO_9797_1_MAC_KEY, TR31_M6_ISO_9797_5_CMAC_KEY, TR31_M7_HMAC_KEY, TR31_P0_PIN_ENCRYPTION_KEY, TR31_P1_PIN_GENERATION_KEY, TR31_S0_ASYMMETRIC_KEY_FOR_DIGITAL_SIGNATURE, TR31_V1_IBM3624_PIN_VERIFICATION_KEY, TR31_V2_VISA_PIN_VERIFICATION_KEY, TR31_K2_TR34_ASYMMETRIC_KEY
    #       key_class: "SYMMETRIC_KEY", # required, accepts SYMMETRIC_KEY, ASYMMETRIC_KEY_PAIR, PRIVATE_KEY, PUBLIC_KEY
    #       key_algorithm: "TDES_2KEY", # required, accepts TDES_2KEY, TDES_3KEY, AES_128, AES_192, AES_256, HMAC_SHA256, HMAC_SHA384, HMAC_SHA512, HMAC_SHA224, RSA_2048, RSA_3072, RSA_4096, ECC_NIST_P256, ECC_NIST_P384, ECC_NIST_P521
    #       key_modes_of_use: { # required
    #         encrypt: false,
    #         decrypt: false,
    #         wrap: false,
    #         unwrap: false,
    #         generate: false,
    #         sign: false,
    #         verify: false,
    #         derive_key: false,
    #         no_restrictions: false,
    #       },
    #     },
    #     key_check_value_algorithm: "CMAC", # accepts CMAC, ANSI_X9_24, HMAC, SHA_1
    #     exportable: false, # required
    #     enabled: false,
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     derive_key_usage: "TR31_B0_BASE_DERIVATION_KEY", # accepts TR31_B0_BASE_DERIVATION_KEY, TR31_C0_CARD_VERIFICATION_KEY, TR31_D0_SYMMETRIC_DATA_ENCRYPTION_KEY, TR31_E0_EMV_MKEY_APP_CRYPTOGRAMS, TR31_E1_EMV_MKEY_CONFIDENTIALITY, TR31_E2_EMV_MKEY_INTEGRITY, TR31_E4_EMV_MKEY_DYNAMIC_NUMBERS, TR31_E5_EMV_MKEY_CARD_PERSONALIZATION, TR31_E6_EMV_MKEY_OTHER, TR31_K0_KEY_ENCRYPTION_KEY, TR31_K1_KEY_BLOCK_PROTECTION_KEY, TR31_M3_ISO_9797_3_MAC_KEY, TR31_M1_ISO_9797_1_MAC_KEY, TR31_M6_ISO_9797_5_CMAC_KEY, TR31_M7_HMAC_KEY, TR31_P0_PIN_ENCRYPTION_KEY, TR31_P1_PIN_GENERATION_KEY, TR31_V1_IBM3624_PIN_VERIFICATION_KEY, TR31_V2_VISA_PIN_VERIFICATION_KEY
    #     replication_regions: ["Region"],
    #   })
    #
    # @example Response structure
    #
    #   resp.key.key_arn #=> String
    #   resp.key.key_attributes.key_usage #=> String, one of "TR31_B0_BASE_DERIVATION_KEY", "TR31_C0_CARD_VERIFICATION_KEY", "TR31_D0_SYMMETRIC_DATA_ENCRYPTION_KEY", "TR31_D1_ASYMMETRIC_KEY_FOR_DATA_ENCRYPTION", "TR31_E0_EMV_MKEY_APP_CRYPTOGRAMS", "TR31_E1_EMV_MKEY_CONFIDENTIALITY", "TR31_E2_EMV_MKEY_INTEGRITY", "TR31_E4_EMV_MKEY_DYNAMIC_NUMBERS", "TR31_E5_EMV_MKEY_CARD_PERSONALIZATION", "TR31_E6_EMV_MKEY_OTHER", "TR31_K0_KEY_ENCRYPTION_KEY", "TR31_K1_KEY_BLOCK_PROTECTION_KEY", "TR31_K3_ASYMMETRIC_KEY_FOR_KEY_AGREEMENT", "TR31_M3_ISO_9797_3_MAC_KEY", "TR31_M1_ISO_9797_1_MAC_KEY", "TR31_M6_ISO_9797_5_CMAC_KEY", "TR31_M7_HMAC_KEY", "TR31_P0_PIN_ENCRYPTION_KEY", "TR31_P1_PIN_GENERATION_KEY", "TR31_S0_ASYMMETRIC_KEY_FOR_DIGITAL_SIGNATURE", "TR31_V1_IBM3624_PIN_VERIFICATION_KEY", "TR31_V2_VISA_PIN_VERIFICATION_KEY", "TR31_K2_TR34_ASYMMETRIC_KEY"
    #   resp.key.key_attributes.key_class #=> String, one of "SYMMETRIC_KEY", "ASYMMETRIC_KEY_PAIR", "PRIVATE_KEY", "PUBLIC_KEY"
    #   resp.key.key_attributes.key_algorithm #=> String, one of "TDES_2KEY", "TDES_3KEY", "AES_128", "AES_192", "AES_256", "HMAC_SHA256", "HMAC_SHA384", "HMAC_SHA512", "HMAC_SHA224", "RSA_2048", "RSA_3072", "RSA_4096", "ECC_NIST_P256", "ECC_NIST_P384", "ECC_NIST_P521"
    #   resp.key.key_attributes.key_modes_of_use.encrypt #=> Boolean
    #   resp.key.key_attributes.key_modes_of_use.decrypt #=> Boolean
    #   resp.key.key_attributes.key_modes_of_use.wrap #=> Boolean
    #   resp.key.key_attributes.key_modes_of_use.unwrap #=> Boolean
    #   resp.key.key_attributes.key_modes_of_use.generate #=> Boolean
    #   resp.key.key_attributes.key_modes_of_use.sign #=> Boolean
    #   resp.key.key_attributes.key_modes_of_use.verify #=> Boolean
    #   resp.key.key_attributes.key_modes_of_use.derive_key #=> Boolean
    #   resp.key.key_attributes.key_modes_of_use.no_restrictions #=> Boolean
    #   resp.key.key_check_value #=> String
    #   resp.key.key_check_value_algorithm #=> String, one of "CMAC", "ANSI_X9_24", "HMAC", "SHA_1"
    #   resp.key.enabled #=> Boolean
    #   resp.key.exportable #=> Boolean
    #   resp.key.key_state #=> String, one of "CREATE_IN_PROGRESS", "CREATE_COMPLETE", "DELETE_PENDING", "DELETE_COMPLETE"
    #   resp.key.key_origin #=> String, one of "EXTERNAL", "AWS_PAYMENT_CRYPTOGRAPHY"
    #   resp.key.create_timestamp #=> Time
    #   resp.key.usage_start_timestamp #=> Time
    #   resp.key.usage_stop_timestamp #=> Time
    #   resp.key.delete_pending_timestamp #=> Time
    #   resp.key.delete_timestamp #=> Time
    #   resp.key.derive_key_usage #=> String, one of "TR31_B0_BASE_DERIVATION_KEY", "TR31_C0_CARD_VERIFICATION_KEY", "TR31_D0_SYMMETRIC_DATA_ENCRYPTION_KEY", "TR31_E0_EMV_MKEY_APP_CRYPTOGRAMS", "TR31_E1_EMV_MKEY_CONFIDENTIALITY", "TR31_E2_EMV_MKEY_INTEGRITY", "TR31_E4_EMV_MKEY_DYNAMIC_NUMBERS", "TR31_E5_EMV_MKEY_CARD_PERSONALIZATION", "TR31_E6_EMV_MKEY_OTHER", "TR31_K0_KEY_ENCRYPTION_KEY", "TR31_K1_KEY_BLOCK_PROTECTION_KEY", "TR31_M3_ISO_9797_3_MAC_KEY", "TR31_M1_ISO_9797_1_MAC_KEY", "TR31_M6_ISO_9797_5_CMAC_KEY", "TR31_M7_HMAC_KEY", "TR31_P0_PIN_ENCRYPTION_KEY", "TR31_P1_PIN_GENERATION_KEY", "TR31_V1_IBM3624_PIN_VERIFICATION_KEY", "TR31_V2_VISA_PIN_VERIFICATION_KEY"
    #   resp.key.multi_region_key_type #=> String, one of "PRIMARY", "REPLICA"
    #   resp.key.primary_region #=> String
    #   resp.key.replication_status #=> Hash
    #   resp.key.replication_status["Region"].status #=> String, one of "IN_PROGRESS", "DELETE_IN_PROGRESS", "FAILED", "SYNCHRONIZED"
    #   resp.key.replication_status["Region"].status_message #=> String
    #   resp.key.using_default_replication_regions #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-2021-09-14/CreateKey AWS API Documentation
    #
    # @overload create_key(params = {})
    # @param [Hash] params ({})
    def create_key(params = {}, options = {})
      req = build_request(:create_key, params)
      req.send_request(options)
    end

    # Deletes the alias, but doesn't affect the underlying key.
    #
    # Each key can have multiple aliases. To get the aliases of all keys,
    # use the [UpdateAlias][1] operation. To change the alias of a key,
    # first use [DeleteAlias][2] to delete the current alias and then use
    # [CreateAlias][3] to create a new alias. To associate an existing alias
    # with a different key, call [UpdateAlias][1].
    #
    # **Cross-account use:** This operation can't be used across different
    # Amazon Web Services accounts.
    #
    # **Related operations:**
    #
    # * [CreateAlias][3]
    #
    # * [GetAlias][4]
    #
    # * [ListAliases][5]
    #
    # * [UpdateAlias][1]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_UpdateAlias.html
    # [2]: https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_DeleteAlias.html
    # [3]: https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_CreateAlias.html
    # [4]: https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_GetAlias.html
    # [5]: https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_ListAliases.html
    #
    # @option params [required, String] :alias_name
    #   A friendly name that you can use to refer Amazon Web Services Payment
    #   Cryptography key. This value must begin with `alias/` followed by a
    #   name, such as `alias/ExampleAlias`.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_alias({
    #     alias_name: "AliasName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-2021-09-14/DeleteAlias AWS API Documentation
    #
    # @overload delete_alias(params = {})
    # @param [Hash] params ({})
    def delete_alias(params = {}, options = {})
      req = build_request(:delete_alias, params)
      req.send_request(options)
    end

    # Deletes the key material and metadata associated with Amazon Web
    # Services Payment Cryptography key.
    #
    # Key deletion is irreversible. After a key is deleted, you can't
    # perform cryptographic operations using the key. For example, you
    # can't decrypt data that was encrypted by a deleted Amazon Web
    # Services Payment Cryptography key, and the data may become
    # unrecoverable. Because key deletion is destructive, Amazon Web
    # Services Payment Cryptography has a safety mechanism to prevent
    # accidental deletion of a key. When you call this operation, Amazon Web
    # Services Payment Cryptography disables the specified key but doesn't
    # delete it until after a waiting period set using `DeleteKeyInDays`.
    # The default waiting period is 7 days. During the waiting period, the
    # `KeyState` is `DELETE_PENDING`. After the key is deleted, the
    # `KeyState` is `DELETE_COMPLETE`.
    #
    # You should delete a key only when you are sure that you don't need to
    # use it anymore and no other parties are utilizing this key. If you
    # aren't sure, consider deactivating it instead by calling
    # [StopKeyUsage][1].
    #
    # **Cross-account use:** This operation can't be used across different
    # Amazon Web Services accounts.
    #
    # **Related operations:**
    #
    # * [RestoreKey][2]
    #
    # * [StartKeyUsage][3]
    #
    # * [StopKeyUsage][1]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_StopKeyUsage.html
    # [2]: https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_RestoreKey.html
    # [3]: https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_StartKeyUsage.html
    #
    # @option params [required, String] :key_identifier
    #   The `KeyARN` of the key that is scheduled for deletion.
    #
    # @option params [Integer] :delete_key_in_days
    #   The waiting period for key deletion. The default value is seven days.
    #
    # @return [Types::DeleteKeyOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteKeyOutput#key #key} => Types::Key
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_key({
    #     key_identifier: "KeyArnOrKeyAliasType", # required
    #     delete_key_in_days: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.key.key_arn #=> String
    #   resp.key.key_attributes.key_usage #=> String, one of "TR31_B0_BASE_DERIVATION_KEY", "TR31_C0_CARD_VERIFICATION_KEY", "TR31_D0_SYMMETRIC_DATA_ENCRYPTION_KEY", "TR31_D1_ASYMMETRIC_KEY_FOR_DATA_ENCRYPTION", "TR31_E0_EMV_MKEY_APP_CRYPTOGRAMS", "TR31_E1_EMV_MKEY_CONFIDENTIALITY", "TR31_E2_EMV_MKEY_INTEGRITY", "TR31_E4_EMV_MKEY_DYNAMIC_NUMBERS", "TR31_E5_EMV_MKEY_CARD_PERSONALIZATION", "TR31_E6_EMV_MKEY_OTHER", "TR31_K0_KEY_ENCRYPTION_KEY", "TR31_K1_KEY_BLOCK_PROTECTION_KEY", "TR31_K3_ASYMMETRIC_KEY_FOR_KEY_AGREEMENT", "TR31_M3_ISO_9797_3_MAC_KEY", "TR31_M1_ISO_9797_1_MAC_KEY", "TR31_M6_ISO_9797_5_CMAC_KEY", "TR31_M7_HMAC_KEY", "TR31_P0_PIN_ENCRYPTION_KEY", "TR31_P1_PIN_GENERATION_KEY", "TR31_S0_ASYMMETRIC_KEY_FOR_DIGITAL_SIGNATURE", "TR31_V1_IBM3624_PIN_VERIFICATION_KEY", "TR31_V2_VISA_PIN_VERIFICATION_KEY", "TR31_K2_TR34_ASYMMETRIC_KEY"
    #   resp.key.key_attributes.key_class #=> String, one of "SYMMETRIC_KEY", "ASYMMETRIC_KEY_PAIR", "PRIVATE_KEY", "PUBLIC_KEY"
    #   resp.key.key_attributes.key_algorithm #=> String, one of "TDES_2KEY", "TDES_3KEY", "AES_128", "AES_192", "AES_256", "HMAC_SHA256", "HMAC_SHA384", "HMAC_SHA512", "HMAC_SHA224", "RSA_2048", "RSA_3072", "RSA_4096", "ECC_NIST_P256", "ECC_NIST_P384", "ECC_NIST_P521"
    #   resp.key.key_attributes.key_modes_of_use.encrypt #=> Boolean
    #   resp.key.key_attributes.key_modes_of_use.decrypt #=> Boolean
    #   resp.key.key_attributes.key_modes_of_use.wrap #=> Boolean
    #   resp.key.key_attributes.key_modes_of_use.unwrap #=> Boolean
    #   resp.key.key_attributes.key_modes_of_use.generate #=> Boolean
    #   resp.key.key_attributes.key_modes_of_use.sign #=> Boolean
    #   resp.key.key_attributes.key_modes_of_use.verify #=> Boolean
    #   resp.key.key_attributes.key_modes_of_use.derive_key #=> Boolean
    #   resp.key.key_attributes.key_modes_of_use.no_restrictions #=> Boolean
    #   resp.key.key_check_value #=> String
    #   resp.key.key_check_value_algorithm #=> String, one of "CMAC", "ANSI_X9_24", "HMAC", "SHA_1"
    #   resp.key.enabled #=> Boolean
    #   resp.key.exportable #=> Boolean
    #   resp.key.key_state #=> String, one of "CREATE_IN_PROGRESS", "CREATE_COMPLETE", "DELETE_PENDING", "DELETE_COMPLETE"
    #   resp.key.key_origin #=> String, one of "EXTERNAL", "AWS_PAYMENT_CRYPTOGRAPHY"
    #   resp.key.create_timestamp #=> Time
    #   resp.key.usage_start_timestamp #=> Time
    #   resp.key.usage_stop_timestamp #=> Time
    #   resp.key.delete_pending_timestamp #=> Time
    #   resp.key.delete_timestamp #=> Time
    #   resp.key.derive_key_usage #=> String, one of "TR31_B0_BASE_DERIVATION_KEY", "TR31_C0_CARD_VERIFICATION_KEY", "TR31_D0_SYMMETRIC_DATA_ENCRYPTION_KEY", "TR31_E0_EMV_MKEY_APP_CRYPTOGRAMS", "TR31_E1_EMV_MKEY_CONFIDENTIALITY", "TR31_E2_EMV_MKEY_INTEGRITY", "TR31_E4_EMV_MKEY_DYNAMIC_NUMBERS", "TR31_E5_EMV_MKEY_CARD_PERSONALIZATION", "TR31_E6_EMV_MKEY_OTHER", "TR31_K0_KEY_ENCRYPTION_KEY", "TR31_K1_KEY_BLOCK_PROTECTION_KEY", "TR31_M3_ISO_9797_3_MAC_KEY", "TR31_M1_ISO_9797_1_MAC_KEY", "TR31_M6_ISO_9797_5_CMAC_KEY", "TR31_M7_HMAC_KEY", "TR31_P0_PIN_ENCRYPTION_KEY", "TR31_P1_PIN_GENERATION_KEY", "TR31_V1_IBM3624_PIN_VERIFICATION_KEY", "TR31_V2_VISA_PIN_VERIFICATION_KEY"
    #   resp.key.multi_region_key_type #=> String, one of "PRIMARY", "REPLICA"
    #   resp.key.primary_region #=> String
    #   resp.key.replication_status #=> Hash
    #   resp.key.replication_status["Region"].status #=> String, one of "IN_PROGRESS", "DELETE_IN_PROGRESS", "FAILED", "SYNCHRONIZED"
    #   resp.key.replication_status["Region"].status_message #=> String
    #   resp.key.using_default_replication_regions #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-2021-09-14/DeleteKey AWS API Documentation
    #
    # @overload delete_key(params = {})
    # @param [Hash] params ({})
    def delete_key(params = {}, options = {})
      req = build_request(:delete_key, params)
      req.send_request(options)
    end

    # Disables multi-region key replication settings for the specified
    # Amazon Web Services Regions in your account, preventing new keys from
    # being automatically replicated to those regions.
    #
    # After disabling default replication for specific regions, new keys
    # created in your account will not be automatically replicated to those
    # regions. You can still manually add replication to those regions for
    # individual keys using the AddKeyReplicationRegions operation.
    #
    # This operation does not affect existing keys or their current
    # replication configuration.
    #
    # **Cross-account use:** This operation can't be used across different
    # Amazon Web Services accounts.
    #
    # **Related operations:**
    #
    # * [EnableDefaultKeyReplicationRegions][1]
    #
    # * [GetDefaultKeyReplicationRegions][2]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_EnableDefaultKeyReplicationRegions.html
    # [2]: https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_GetDefaultKeyReplicationRegions.html
    #
    # @option params [required, Array<String>] :replication_regions
    #   The list of Amazon Web Services Regions to remove from the account's
    #   default replication regions.
    #
    #   New keys created after this operation will not automatically be
    #   replicated to these regions, though existing keys with replication to
    #   these regions will be unaffected.
    #
    # @return [Types::DisableDefaultKeyReplicationRegionsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DisableDefaultKeyReplicationRegionsOutput#enabled_replication_regions #enabled_replication_regions} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disable_default_key_replication_regions({
    #     replication_regions: ["Region"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.enabled_replication_regions #=> Array
    #   resp.enabled_replication_regions[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-2021-09-14/DisableDefaultKeyReplicationRegions AWS API Documentation
    #
    # @overload disable_default_key_replication_regions(params = {})
    # @param [Hash] params ({})
    def disable_default_key_replication_regions(params = {}, options = {})
      req = build_request(:disable_default_key_replication_regions, params)
      req.send_request(options)
    end

    # Enables multi-region key replication settings for your account,
    # causing new keys to be automatically replicated to the specified
    # Amazon Web Services Regions when created.
    #
    # When default Replication Regions are enabled, any new keys created in
    # your account will automatically be replicated to these regions unless
    # you explicitly override this behavior during key creation. This
    # simplifies key management for applications that operate across
    # multiple regions.
    #
    # Existing keys are not affected by this operation - only keys created
    # after enabling default replication will be automatically replicated.
    #
    # **Cross-account use:** This operation can't be used across different
    # Amazon Web Services accounts.
    #
    # **Related operations:**
    #
    # * [DisableDefaultKeyReplicationRegions][1]
    #
    # * [GetDefaultKeyReplicationRegions][2]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_DisableDefaultKeyReplicationRegions.html
    # [2]: https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_GetDefaultKeyReplicationRegions.html
    #
    # @option params [required, Array<String>] :replication_regions
    #   The list of Amazon Web Services Regions to enable as default
    #   replication regions for the account.
    #
    #   New keys created in this account will automatically be replicated to
    #   these regions unless explicitly overridden during key creation.
    #
    # @return [Types::EnableDefaultKeyReplicationRegionsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::EnableDefaultKeyReplicationRegionsOutput#enabled_replication_regions #enabled_replication_regions} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.enable_default_key_replication_regions({
    #     replication_regions: ["Region"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.enabled_replication_regions #=> Array
    #   resp.enabled_replication_regions[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-2021-09-14/EnableDefaultKeyReplicationRegions AWS API Documentation
    #
    # @overload enable_default_key_replication_regions(params = {})
    # @param [Hash] params ({})
    def enable_default_key_replication_regions(params = {}, options = {})
      req = build_request(:enable_default_key_replication_regions, params)
      req.send_request(options)
    end

    # Exports a key from Amazon Web Services Payment Cryptography.
    #
    # Amazon Web Services Payment Cryptography simplifies key exchange by
    # replacing the existing paper-based approach with a modern electronic
    # approach. With `ExportKey` you can export symmetric keys using either
    # symmetric and asymmetric key exchange mechanisms. Using this
    # operation, you can share your Amazon Web Services Payment Cryptography
    # generated keys with other service partners to perform cryptographic
    # operations outside of Amazon Web Services Payment Cryptography
    #
    # For symmetric key exchange, Amazon Web Services Payment Cryptography
    # uses the ANSI X9 TR-31 norm in accordance with PCI PIN guidelines. And
    # for asymmetric key exchange, Amazon Web Services Payment Cryptography
    # supports ANSI X9 TR-34 norm, RSA unwrap, and ECDH (Elliptic Curve
    # Diffie-Hellman) key exchange mechanisms. Asymmetric key exchange
    # methods are typically used to establish bi-directional trust between
    # the two parties exhanging keys and are used for initial key exchange
    # such as Key Encryption Key (KEK). After which you can export working
    # keys using symmetric method to perform various cryptographic
    # operations within Amazon Web Services Payment Cryptography.
    #
    # PCI requires specific minimum key strength of wrapping keys used to
    # protect the keys being exchanged electronically. These requirements
    # can change when PCI standards are revised. The rules specify that
    # wrapping keys used for transport must be at least as strong as the key
    # being protected. For more information on recommended key strength of
    # wrapping keys and key exchange mechanism, see [Importing and exporting
    # keys][1] in the *Amazon Web Services Payment Cryptography User Guide*.
    #
    # You can also use `ExportKey` functionality to generate and export an
    # IPEK (Initial Pin Encryption Key) from Amazon Web Services Payment
    # Cryptography using either TR-31 or TR-34 export key exchange. IPEK is
    # generated from BDK (Base Derivation Key) and `ExportDukptInitialKey`
    # attribute KSN (`KeySerialNumber`). The generated IPEK does not persist
    # within Amazon Web Services Payment Cryptography and has to be
    # re-generated each time during export.
    #
    # For key exchange using TR-31 or TR-34 key blocks, you can also export
    # optional blocks within the key block header which contain additional
    # attribute information about the key. The `KeyVersion` within
    # `KeyBlockHeaders` indicates the version of the key within the key
    # block. Furthermore, `KeyExportability` within `KeyBlockHeaders` can be
    # used to further restrict exportability of the key after export from
    # Amazon Web Services Payment Cryptography.
    #
    # The `OptionalBlocks` contain the additional data related to the key.
    # For information on data type that can be included within optional
    # blocks, refer to [ASC X9.143-2022][2].
    #
    # <note markdown="1"> Data included in key block headers is signed but transmitted in clear
    # text. Sensitive or confidential information should not be included in
    # optional blocks. Refer to ASC X9.143-2022 standard for information on
    # allowed data type.
    #
    #  </note>
    #
    # **To export initial keys (KEK) or IPEK using TR-34**
    #
    # Using this operation, you can export initial key using TR-34
    # asymmetric key exchange. You can only export KEK generated within
    # Amazon Web Services Payment Cryptography. In TR-34 terminology, the
    # sending party of the key is called Key Distribution Host (KDH) and the
    # receiving party of the key is called Key Receiving Device (KRD).
    # During key export process, KDH is Amazon Web Services Payment
    # Cryptography which initiates key export and KRD is the user receiving
    # the key.
    #
    # To initiate TR-34 key export, the KRD must obtain an export token by
    # calling [GetParametersForExport][3]. This operation also generates a
    # key pair for the purpose of key export, signs the key and returns back
    # the signing public key certificate (also known as KDH signing
    # certificate) and root certificate chain. The KDH uses the private key
    # to sign the the export payload and the signing public key certificate
    # is provided to KRD to verify the signature. The KRD can import the
    # root certificate into its Hardware Security Module (HSM), as required.
    # The export token and the associated KDH signing certificate expires
    # after 30 days.
    #
    # Next the KRD generates a key pair for the the purpose of encrypting
    # the KDH key and provides the public key cerificate (also known as KRD
    # wrapping certificate) back to KDH. The KRD will also import the root
    # cerificate chain into Amazon Web Services Payment Cryptography by
    # calling [ImportKey][4] for `RootCertificatePublicKey`. The KDH, Amazon
    # Web Services Payment Cryptography, will use the KRD wrapping
    # cerificate to encrypt (wrap) the key under export and signs it with
    # signing private key to generate a TR-34 WrappedKeyBlock. For more
    # information on TR-34 key export, see section [Exporting symmetric
    # keys][5] in the *Amazon Web Services Payment Cryptography User Guide*.
    #
    # Set the following parameters:
    #
    # * `ExportAttributes`: Specify export attributes in case of IPEK
    #   export. This parameter is optional for KEK export.
    #
    # * `ExportKeyIdentifier`: The `KeyARN` of the KEK or BDK (in case of
    #   IPEK) under export.
    #
    # * `KeyMaterial`: Use `Tr34KeyBlock` parameters.
    #
    # * `CertificateAuthorityPublicKeyIdentifier`: The `KeyARN` of the
    #   certificate chain that signed the KRD wrapping key certificate.
    #
    # * `ExportToken`: Obtained from KDH by calling
    #   [GetParametersForImport][6].
    #
    # * `WrappingKeyCertificate`: The public key certificate in PEM format
    #   (base64 encoded) of the KRD wrapping key Amazon Web Services Payment
    #   Cryptography uses for encryption of the TR-34 export payload. This
    #   certificate must be signed by the root certificate
    #   (CertificateAuthorityPublicKeyIdentifier) imported into Amazon Web
    #   Services Payment Cryptography.
    #
    # When this operation is successful, Amazon Web Services Payment
    # Cryptography returns the KEK or IPEK as a TR-34 WrappedKeyBlock.
    #
    # **To export initial keys (KEK) or IPEK using RSA Wrap and Unwrap**
    #
    # Using this operation, you can export initial key using asymmetric RSA
    # wrap and unwrap key exchange method. To initiate export, generate an
    # asymmetric key pair on the receiving HSM and obtain the public key
    # certificate in PEM format (base64 encoded) for the purpose of wrapping
    # and the root certifiate chain. Import the root certificate into Amazon
    # Web Services Payment Cryptography by calling [ImportKey][4] for
    # `RootCertificatePublicKey`.
    #
    # Next call `ExportKey` and set the following parameters:
    #
    # * `CertificateAuthorityPublicKeyIdentifier`: The `KeyARN` of the
    #   certificate chain that signed wrapping key certificate.
    #
    # * `KeyMaterial`: Set to `KeyCryptogram`.
    #
    # * `WrappingKeyCertificate`: The public key certificate in PEM format
    #   (base64 encoded) obtained by the receiving HSM and signed by the
    #   root certificate (CertificateAuthorityPublicKeyIdentifier) imported
    #   into Amazon Web Services Payment Cryptography. The receiving HSM
    #   uses its private key component to unwrap the WrappedKeyCryptogram.
    #
    # When this operation is successful, Amazon Web Services Payment
    # Cryptography returns the WrappedKeyCryptogram.
    #
    # **To export working keys or IPEK using TR-31**
    #
    # Using this operation, you can export working keys or IPEK using TR-31
    # symmetric key exchange. In TR-31, you must use an initial key such as
    # KEK to encrypt or wrap the key under export. To establish a KEK, you
    # can use [CreateKey][7] or [ImportKey][4].
    #
    # Set the following parameters:
    #
    # * `ExportAttributes`: Specify export attributes in case of IPEK
    #   export. This parameter is optional for KEK export.
    #
    # * `ExportKeyIdentifier`: The `KeyARN` of the KEK or BDK (in case of
    #   IPEK) under export.
    #
    # * `KeyMaterial`: Use `Tr31KeyBlock` parameters.
    #
    # **To export working keys using ECDH**
    #
    # You can also use ECDH key agreement to export working keys in a TR-31
    # keyblock, where the wrapping key is an ECDH derived key.
    #
    # To initiate a TR-31 key export using ECDH, both sides must create an
    # ECC key pair with key usage K3 and exchange public key certificates.
    # In Amazon Web Services Payment Cryptography, you can do this by
    # calling `CreateKey`. If you have not already done so, you must import
    # the CA chain that issued the receiving public key certificate by
    # calling `ImportKey` with input `RootCertificatePublicKey` for root CA
    # or `TrustedPublicKey` for intermediate CA. You can then complete a
    # TR-31 key export by deriving a shared wrapping key using the service
    # ECC key pair, public certificate of your ECC key pair outside of
    # Amazon Web Services Payment Cryptography, and the key derivation
    # parameters including key derivation function, hash algorithm,
    # derivation data, key algorithm.
    #
    # * `KeyMaterial`: Use `DiffieHellmanTr31KeyBlock` parameters.
    #
    # * `PrivateKeyIdentifier`: The `KeyArn` of the ECC key pair created
    #   within Amazon Web Services Payment Cryptography to derive a shared
    #   KEK.
    #
    # * `PublicKeyCertificate`: The public key certificate of the receiving
    #   ECC key pair in PEM format (base64 encoded) to derive a shared KEK.
    #
    # * `CertificateAuthorityPublicKeyIdentifier`: The `keyARN` of the CA
    #   that signed the public key certificate of the receiving ECC key
    #   pair.
    #
    # When this operation is successful, Amazon Web Services Payment
    # Cryptography returns the working key as a TR-31 WrappedKeyBlock, where
    # the wrapping key is the ECDH derived key.
    #
    # **Cross-account use:** This operation can't be used across different
    # Amazon Web Services accounts.
    #
    # **Related operations:**
    #
    # * [GetParametersForExport][3]
    #
    # * [ImportKey][4]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/payment-cryptography/latest/userguide/keys-importexport.html
    # [2]: https://webstore.ansi.org/standards/ascx9/ansix91432022
    # [3]: https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_GetParametersForExport.html
    # [4]: https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_ImportKey.html
    # [5]: https://docs.aws.amazon.com/payment-cryptography/latest/userguide/keys-export.html
    # [6]: https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_GetParametersForImport.html
    # [7]: https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_CreateKey.html
    #
    # @option params [required, Types::ExportKeyMaterial] :key_material
    #   The key block format type, for example, TR-34 or TR-31, to use during
    #   key material export.
    #
    # @option params [required, String] :export_key_identifier
    #   The `KeyARN` of the key under export from Amazon Web Services Payment
    #   Cryptography.
    #
    # @option params [Types::ExportAttributes] :export_attributes
    #   The attributes for IPEK generation during export.
    #
    # @return [Types::ExportKeyOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ExportKeyOutput#wrapped_key #wrapped_key} => Types::WrappedKey
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.export_key({
    #     key_material: { # required
    #       tr_31_key_block: {
    #         wrapping_key_identifier: "KeyArnOrKeyAliasType", # required
    #         key_block_headers: {
    #           key_modes_of_use: {
    #             encrypt: false,
    #             decrypt: false,
    #             wrap: false,
    #             unwrap: false,
    #             generate: false,
    #             sign: false,
    #             verify: false,
    #             derive_key: false,
    #             no_restrictions: false,
    #           },
    #           key_exportability: "EXPORTABLE", # accepts EXPORTABLE, NON_EXPORTABLE, SENSITIVE
    #           key_version: "KeyVersion",
    #           optional_blocks: {
    #             "OptionalBlockId" => "OptionalBlockValue",
    #           },
    #         },
    #       },
    #       tr_34_key_block: {
    #         certificate_authority_public_key_identifier: "KeyArnOrKeyAliasType", # required
    #         wrapping_key_certificate: "CertificateType", # required
    #         export_token: "ExportTokenId",
    #         signing_key_identifier: "KeyArnOrKeyAliasType",
    #         signing_key_certificate: "CertificateType",
    #         key_block_format: "X9_TR34_2012", # required, accepts X9_TR34_2012
    #         random_nonce: "EvenHexLengthBetween16And32",
    #         key_block_headers: {
    #           key_modes_of_use: {
    #             encrypt: false,
    #             decrypt: false,
    #             wrap: false,
    #             unwrap: false,
    #             generate: false,
    #             sign: false,
    #             verify: false,
    #             derive_key: false,
    #             no_restrictions: false,
    #           },
    #           key_exportability: "EXPORTABLE", # accepts EXPORTABLE, NON_EXPORTABLE, SENSITIVE
    #           key_version: "KeyVersion",
    #           optional_blocks: {
    #             "OptionalBlockId" => "OptionalBlockValue",
    #           },
    #         },
    #       },
    #       key_cryptogram: {
    #         certificate_authority_public_key_identifier: "KeyArnOrKeyAliasType", # required
    #         wrapping_key_certificate: "CertificateType", # required
    #         wrapping_spec: "RSA_OAEP_SHA_256", # accepts RSA_OAEP_SHA_256, RSA_OAEP_SHA_512
    #       },
    #       diffie_hellman_tr_31_key_block: {
    #         private_key_identifier: "KeyArnOrKeyAliasType", # required
    #         certificate_authority_public_key_identifier: "KeyArnOrKeyAliasType", # required
    #         public_key_certificate: "CertificateType", # required
    #         derive_key_algorithm: "TDES_2KEY", # required, accepts TDES_2KEY, TDES_3KEY, AES_128, AES_192, AES_256, HMAC_SHA256, HMAC_SHA384, HMAC_SHA512, HMAC_SHA224
    #         key_derivation_function: "NIST_SP800", # required, accepts NIST_SP800, ANSI_X963
    #         key_derivation_hash_algorithm: "SHA_256", # required, accepts SHA_256, SHA_384, SHA_512
    #         derivation_data: { # required
    #           shared_information: "SharedInformation",
    #         },
    #         key_block_headers: {
    #           key_modes_of_use: {
    #             encrypt: false,
    #             decrypt: false,
    #             wrap: false,
    #             unwrap: false,
    #             generate: false,
    #             sign: false,
    #             verify: false,
    #             derive_key: false,
    #             no_restrictions: false,
    #           },
    #           key_exportability: "EXPORTABLE", # accepts EXPORTABLE, NON_EXPORTABLE, SENSITIVE
    #           key_version: "KeyVersion",
    #           optional_blocks: {
    #             "OptionalBlockId" => "OptionalBlockValue",
    #           },
    #         },
    #       },
    #     },
    #     export_key_identifier: "KeyArnOrKeyAliasType", # required
    #     export_attributes: {
    #       export_dukpt_initial_key: {
    #         key_serial_number: "HexLength20Or24", # required
    #       },
    #       key_check_value_algorithm: "CMAC", # accepts CMAC, ANSI_X9_24, HMAC, SHA_1
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.wrapped_key.wrapping_key_arn #=> String
    #   resp.wrapped_key.wrapped_key_material_format #=> String, one of "KEY_CRYPTOGRAM", "TR31_KEY_BLOCK", "TR34_KEY_BLOCK"
    #   resp.wrapped_key.key_material #=> String
    #   resp.wrapped_key.key_check_value #=> String
    #   resp.wrapped_key.key_check_value_algorithm #=> String, one of "CMAC", "ANSI_X9_24", "HMAC", "SHA_1"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-2021-09-14/ExportKey AWS API Documentation
    #
    # @overload export_key(params = {})
    # @param [Hash] params ({})
    def export_key(params = {}, options = {})
      req = build_request(:export_key, params)
      req.send_request(options)
    end

    # Gets the Amazon Web Services Payment Cryptography key associated with
    # the alias.
    #
    # **Cross-account use:** This operation can't be used across different
    # Amazon Web Services accounts.
    #
    # **Related operations:**
    #
    # * [CreateAlias][1]
    #
    # * [DeleteAlias][2]
    #
    # * [ListAliases][3]
    #
    # * [UpdateAlias][4]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_CreateAlias.html
    # [2]: https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_DeleteAlias.html
    # [3]: https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_ListAliases.html
    # [4]: https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_UpdateAlias.html
    #
    # @option params [required, String] :alias_name
    #   The alias of the Amazon Web Services Payment Cryptography key.
    #
    # @return [Types::GetAliasOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAliasOutput#alias #alias} => Types::Alias
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_alias({
    #     alias_name: "AliasName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.alias.alias_name #=> String
    #   resp.alias.key_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-2021-09-14/GetAlias AWS API Documentation
    #
    # @overload get_alias(params = {})
    # @param [Hash] params ({})
    def get_alias(params = {}, options = {})
      req = build_request(:get_alias, params)
      req.send_request(options)
    end

    # Used to retrieve the public key for a keypair.
    #
    # @option params [required, String] :key_identifier
    #   Asymmetric key used for generating the certificate signing request
    #
    # @option params [required, String] :signing_algorithm
    #   Algorithm used to generate the certificate signing request
    #
    # @option params [required, Types::CertificateSubjectType] :certificate_subject
    #   Certificate subject data
    #
    # @return [Types::GetCertificateSigningRequestOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCertificateSigningRequestOutput#certificate_signing_request #certificate_signing_request} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_certificate_signing_request({
    #     key_identifier: "KeyArnOrKeyAliasType", # required
    #     signing_algorithm: "SHA224", # required, accepts SHA224, SHA256, SHA384, SHA512
    #     certificate_subject: { # required
    #       common_name: "CertificateSubjectTypeCommonNameString", # required
    #       organization_unit: "CertificateSubjectTypeOrganizationUnitString",
    #       organization: "CertificateSubjectTypeOrganizationString",
    #       city: "CertificateSubjectTypeCityString",
    #       country: "CertificateSubjectTypeCountryString",
    #       state_or_province: "CertificateSubjectTypeStateOrProvinceString",
    #       email_address: "CertificateSubjectTypeEmailAddressString",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.certificate_signing_request #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-2021-09-14/GetCertificateSigningRequest AWS API Documentation
    #
    # @overload get_certificate_signing_request(params = {})
    # @param [Hash] params ({})
    def get_certificate_signing_request(params = {}, options = {})
      req = build_request(:get_certificate_signing_request, params)
      req.send_request(options)
    end

    # Retrieves the list of regions where default key replication is
    # currently enabled for your account.
    #
    # This operation returns the current configuration of default
    # Replication Regions. New keys created in your account will be
    # automatically replicated to these regions unless explicitly overridden
    # during key creation.
    #
    # **Cross-account use:** This operation can't be used across different
    # Amazon Web Services accounts.
    #
    # **Related operations:**
    #
    # * [EnableDefaultKeyReplicationRegions][1]
    #
    # * [DisableDefaultKeyReplicationRegions][2]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_EnableDefaultKeyReplicationRegions.html
    # [2]: https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_DisableDefaultKeyReplicationRegions.html
    #
    # @return [Types::GetDefaultKeyReplicationRegionsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDefaultKeyReplicationRegionsOutput#enabled_replication_regions #enabled_replication_regions} => Array&lt;String&gt;
    #
    # @example Response structure
    #
    #   resp.enabled_replication_regions #=> Array
    #   resp.enabled_replication_regions[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-2021-09-14/GetDefaultKeyReplicationRegions AWS API Documentation
    #
    # @overload get_default_key_replication_regions(params = {})
    # @param [Hash] params ({})
    def get_default_key_replication_regions(params = {}, options = {})
      req = build_request(:get_default_key_replication_regions, params)
      req.send_request(options)
    end

    # Gets the key metadata for an Amazon Web Services Payment Cryptography
    # key, including the immutable and mutable attributes specified when the
    # key was created. Returns key metadata including attributes, state, and
    # timestamps, but does not return the actual cryptographic key material.
    #
    # **Cross-account use:** This operation can't be used across different
    # Amazon Web Services accounts.
    #
    # **Related operations:**
    #
    # * [CreateKey][1]
    #
    # * [DeleteKey][2]
    #
    # * [ListKeys][3]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_CreateKey.html
    # [2]: https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_DeleteKey.html
    # [3]: https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_ListKeys.html
    #
    # @option params [required, String] :key_identifier
    #   The `KeyARN` of the Amazon Web Services Payment Cryptography key.
    #
    # @return [Types::GetKeyOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetKeyOutput#key #key} => Types::Key
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_key({
    #     key_identifier: "KeyArnOrKeyAliasType", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.key.key_arn #=> String
    #   resp.key.key_attributes.key_usage #=> String, one of "TR31_B0_BASE_DERIVATION_KEY", "TR31_C0_CARD_VERIFICATION_KEY", "TR31_D0_SYMMETRIC_DATA_ENCRYPTION_KEY", "TR31_D1_ASYMMETRIC_KEY_FOR_DATA_ENCRYPTION", "TR31_E0_EMV_MKEY_APP_CRYPTOGRAMS", "TR31_E1_EMV_MKEY_CONFIDENTIALITY", "TR31_E2_EMV_MKEY_INTEGRITY", "TR31_E4_EMV_MKEY_DYNAMIC_NUMBERS", "TR31_E5_EMV_MKEY_CARD_PERSONALIZATION", "TR31_E6_EMV_MKEY_OTHER", "TR31_K0_KEY_ENCRYPTION_KEY", "TR31_K1_KEY_BLOCK_PROTECTION_KEY", "TR31_K3_ASYMMETRIC_KEY_FOR_KEY_AGREEMENT", "TR31_M3_ISO_9797_3_MAC_KEY", "TR31_M1_ISO_9797_1_MAC_KEY", "TR31_M6_ISO_9797_5_CMAC_KEY", "TR31_M7_HMAC_KEY", "TR31_P0_PIN_ENCRYPTION_KEY", "TR31_P1_PIN_GENERATION_KEY", "TR31_S0_ASYMMETRIC_KEY_FOR_DIGITAL_SIGNATURE", "TR31_V1_IBM3624_PIN_VERIFICATION_KEY", "TR31_V2_VISA_PIN_VERIFICATION_KEY", "TR31_K2_TR34_ASYMMETRIC_KEY"
    #   resp.key.key_attributes.key_class #=> String, one of "SYMMETRIC_KEY", "ASYMMETRIC_KEY_PAIR", "PRIVATE_KEY", "PUBLIC_KEY"
    #   resp.key.key_attributes.key_algorithm #=> String, one of "TDES_2KEY", "TDES_3KEY", "AES_128", "AES_192", "AES_256", "HMAC_SHA256", "HMAC_SHA384", "HMAC_SHA512", "HMAC_SHA224", "RSA_2048", "RSA_3072", "RSA_4096", "ECC_NIST_P256", "ECC_NIST_P384", "ECC_NIST_P521"
    #   resp.key.key_attributes.key_modes_of_use.encrypt #=> Boolean
    #   resp.key.key_attributes.key_modes_of_use.decrypt #=> Boolean
    #   resp.key.key_attributes.key_modes_of_use.wrap #=> Boolean
    #   resp.key.key_attributes.key_modes_of_use.unwrap #=> Boolean
    #   resp.key.key_attributes.key_modes_of_use.generate #=> Boolean
    #   resp.key.key_attributes.key_modes_of_use.sign #=> Boolean
    #   resp.key.key_attributes.key_modes_of_use.verify #=> Boolean
    #   resp.key.key_attributes.key_modes_of_use.derive_key #=> Boolean
    #   resp.key.key_attributes.key_modes_of_use.no_restrictions #=> Boolean
    #   resp.key.key_check_value #=> String
    #   resp.key.key_check_value_algorithm #=> String, one of "CMAC", "ANSI_X9_24", "HMAC", "SHA_1"
    #   resp.key.enabled #=> Boolean
    #   resp.key.exportable #=> Boolean
    #   resp.key.key_state #=> String, one of "CREATE_IN_PROGRESS", "CREATE_COMPLETE", "DELETE_PENDING", "DELETE_COMPLETE"
    #   resp.key.key_origin #=> String, one of "EXTERNAL", "AWS_PAYMENT_CRYPTOGRAPHY"
    #   resp.key.create_timestamp #=> Time
    #   resp.key.usage_start_timestamp #=> Time
    #   resp.key.usage_stop_timestamp #=> Time
    #   resp.key.delete_pending_timestamp #=> Time
    #   resp.key.delete_timestamp #=> Time
    #   resp.key.derive_key_usage #=> String, one of "TR31_B0_BASE_DERIVATION_KEY", "TR31_C0_CARD_VERIFICATION_KEY", "TR31_D0_SYMMETRIC_DATA_ENCRYPTION_KEY", "TR31_E0_EMV_MKEY_APP_CRYPTOGRAMS", "TR31_E1_EMV_MKEY_CONFIDENTIALITY", "TR31_E2_EMV_MKEY_INTEGRITY", "TR31_E4_EMV_MKEY_DYNAMIC_NUMBERS", "TR31_E5_EMV_MKEY_CARD_PERSONALIZATION", "TR31_E6_EMV_MKEY_OTHER", "TR31_K0_KEY_ENCRYPTION_KEY", "TR31_K1_KEY_BLOCK_PROTECTION_KEY", "TR31_M3_ISO_9797_3_MAC_KEY", "TR31_M1_ISO_9797_1_MAC_KEY", "TR31_M6_ISO_9797_5_CMAC_KEY", "TR31_M7_HMAC_KEY", "TR31_P0_PIN_ENCRYPTION_KEY", "TR31_P1_PIN_GENERATION_KEY", "TR31_V1_IBM3624_PIN_VERIFICATION_KEY", "TR31_V2_VISA_PIN_VERIFICATION_KEY"
    #   resp.key.multi_region_key_type #=> String, one of "PRIMARY", "REPLICA"
    #   resp.key.primary_region #=> String
    #   resp.key.replication_status #=> Hash
    #   resp.key.replication_status["Region"].status #=> String, one of "IN_PROGRESS", "DELETE_IN_PROGRESS", "FAILED", "SYNCHRONIZED"
    #   resp.key.replication_status["Region"].status_message #=> String
    #   resp.key.using_default_replication_regions #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-2021-09-14/GetKey AWS API Documentation
    #
    # @overload get_key(params = {})
    # @param [Hash] params ({})
    def get_key(params = {}, options = {})
      req = build_request(:get_key, params)
      req.send_request(options)
    end

    # Gets the export token and the signing key certificate to initiate a
    # TR-34 key export from Amazon Web Services Payment Cryptography.
    #
    # The signing key certificate signs the wrapped key under export within
    # the TR-34 key payload. The export token and signing key certificate
    # must be in place and operational before calling [ExportKey][1]. The
    # export token expires in 30 days. You can use the same export token to
    # export multiple keys from your service account.
    #
    # **Cross-account use:** This operation can't be used across different
    # Amazon Web Services accounts.
    #
    # **Related operations:**
    #
    # * [ExportKey][1]
    #
    # * [GetParametersForImport][2]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_ExportKey.html
    # [2]: https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_GetParametersForImport.html
    #
    # @option params [required, String] :key_material_type
    #   The key block format type (for example, TR-34 or TR-31) to use during
    #   key material export. Export token is only required for a TR-34 key
    #   export, `TR34_KEY_BLOCK`. Export token is not required for TR-31 key
    #   export.
    #
    # @option params [required, String] :signing_key_algorithm
    #   The signing key algorithm to generate a signing key certificate. This
    #   certificate signs the wrapped key under export within the TR-34 key
    #   block. `RSA_2048` is the only signing key algorithm allowed.
    #
    # @return [Types::GetParametersForExportOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetParametersForExportOutput#signing_key_certificate #signing_key_certificate} => String
    #   * {Types::GetParametersForExportOutput#signing_key_certificate_chain #signing_key_certificate_chain} => String
    #   * {Types::GetParametersForExportOutput#signing_key_algorithm #signing_key_algorithm} => String
    #   * {Types::GetParametersForExportOutput#export_token #export_token} => String
    #   * {Types::GetParametersForExportOutput#parameters_valid_until_timestamp #parameters_valid_until_timestamp} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_parameters_for_export({
    #     key_material_type: "TR34_KEY_BLOCK", # required, accepts TR34_KEY_BLOCK, TR31_KEY_BLOCK, ROOT_PUBLIC_KEY_CERTIFICATE, TRUSTED_PUBLIC_KEY_CERTIFICATE, KEY_CRYPTOGRAM
    #     signing_key_algorithm: "TDES_2KEY", # required, accepts TDES_2KEY, TDES_3KEY, AES_128, AES_192, AES_256, HMAC_SHA256, HMAC_SHA384, HMAC_SHA512, HMAC_SHA224, RSA_2048, RSA_3072, RSA_4096, ECC_NIST_P256, ECC_NIST_P384, ECC_NIST_P521
    #   })
    #
    # @example Response structure
    #
    #   resp.signing_key_certificate #=> String
    #   resp.signing_key_certificate_chain #=> String
    #   resp.signing_key_algorithm #=> String, one of "TDES_2KEY", "TDES_3KEY", "AES_128", "AES_192", "AES_256", "HMAC_SHA256", "HMAC_SHA384", "HMAC_SHA512", "HMAC_SHA224", "RSA_2048", "RSA_3072", "RSA_4096", "ECC_NIST_P256", "ECC_NIST_P384", "ECC_NIST_P521"
    #   resp.export_token #=> String
    #   resp.parameters_valid_until_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-2021-09-14/GetParametersForExport AWS API Documentation
    #
    # @overload get_parameters_for_export(params = {})
    # @param [Hash] params ({})
    def get_parameters_for_export(params = {}, options = {})
      req = build_request(:get_parameters_for_export, params)
      req.send_request(options)
    end

    # Gets the import token and the wrapping key certificate in PEM format
    # (base64 encoded) to initiate a TR-34 WrappedKeyBlock or a RSA
    # WrappedKeyCryptogram import into Amazon Web Services Payment
    # Cryptography.
    #
    # The wrapping key certificate wraps the key under import. The import
    # token and wrapping key certificate must be in place and operational
    # before calling [ImportKey][1]. The import token expires in 30 days.
    # You can use the same import token to import multiple keys into your
    # service account.
    #
    # **Cross-account use:** This operation can't be used across different
    # Amazon Web Services accounts.
    #
    # **Related operations:**
    #
    # * [GetParametersForExport][2]
    #
    # * [ImportKey][1]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_ImportKey.html
    # [2]: https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_GetParametersForExport.html
    #
    # @option params [required, String] :key_material_type
    #   The method to use for key material import. Import token is only
    #   required for TR-34 WrappedKeyBlock (`TR34_KEY_BLOCK`) and RSA
    #   WrappedKeyCryptogram (`KEY_CRYPTOGRAM`).
    #
    #   Import token is not required for TR-31, root public key cerificate or
    #   trusted public key certificate.
    #
    # @option params [required, String] :wrapping_key_algorithm
    #   The wrapping key algorithm to generate a wrapping key certificate.
    #   This certificate wraps the key under import.
    #
    #   At this time, `RSA_2048` is the allowed algorithm for TR-34
    #   WrappedKeyBlock import. Additionally, `RSA_2048`, `RSA_3072`,
    #   `RSA_4096` are the allowed algorithms for RSA WrappedKeyCryptogram
    #   import.
    #
    # @return [Types::GetParametersForImportOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetParametersForImportOutput#wrapping_key_certificate #wrapping_key_certificate} => String
    #   * {Types::GetParametersForImportOutput#wrapping_key_certificate_chain #wrapping_key_certificate_chain} => String
    #   * {Types::GetParametersForImportOutput#wrapping_key_algorithm #wrapping_key_algorithm} => String
    #   * {Types::GetParametersForImportOutput#import_token #import_token} => String
    #   * {Types::GetParametersForImportOutput#parameters_valid_until_timestamp #parameters_valid_until_timestamp} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_parameters_for_import({
    #     key_material_type: "TR34_KEY_BLOCK", # required, accepts TR34_KEY_BLOCK, TR31_KEY_BLOCK, ROOT_PUBLIC_KEY_CERTIFICATE, TRUSTED_PUBLIC_KEY_CERTIFICATE, KEY_CRYPTOGRAM
    #     wrapping_key_algorithm: "TDES_2KEY", # required, accepts TDES_2KEY, TDES_3KEY, AES_128, AES_192, AES_256, HMAC_SHA256, HMAC_SHA384, HMAC_SHA512, HMAC_SHA224, RSA_2048, RSA_3072, RSA_4096, ECC_NIST_P256, ECC_NIST_P384, ECC_NIST_P521
    #   })
    #
    # @example Response structure
    #
    #   resp.wrapping_key_certificate #=> String
    #   resp.wrapping_key_certificate_chain #=> String
    #   resp.wrapping_key_algorithm #=> String, one of "TDES_2KEY", "TDES_3KEY", "AES_128", "AES_192", "AES_256", "HMAC_SHA256", "HMAC_SHA384", "HMAC_SHA512", "HMAC_SHA224", "RSA_2048", "RSA_3072", "RSA_4096", "ECC_NIST_P256", "ECC_NIST_P384", "ECC_NIST_P521"
    #   resp.import_token #=> String
    #   resp.parameters_valid_until_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-2021-09-14/GetParametersForImport AWS API Documentation
    #
    # @overload get_parameters_for_import(params = {})
    # @param [Hash] params ({})
    def get_parameters_for_import(params = {}, options = {})
      req = build_request(:get_parameters_for_import, params)
      req.send_request(options)
    end

    # Gets the public key certificate of the asymmetric key pair that exists
    # within Amazon Web Services Payment Cryptography.
    #
    # Unlike the private key of an asymmetric key, which never leaves Amazon
    # Web Services Payment Cryptography unencrypted, callers with
    # `GetPublicKeyCertificate` permission can download the public key
    # certificate of the asymmetric key. You can share the public key
    # certificate to allow others to encrypt messages and verify signatures
    # outside of Amazon Web Services Payment Cryptography
    #
    # **Cross-account use:** This operation can't be used across different
    # Amazon Web Services accounts.
    #
    # @option params [required, String] :key_identifier
    #   The `KeyARN` of the asymmetric key pair.
    #
    # @return [Types::GetPublicKeyCertificateOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetPublicKeyCertificateOutput#key_certificate #key_certificate} => String
    #   * {Types::GetPublicKeyCertificateOutput#key_certificate_chain #key_certificate_chain} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_public_key_certificate({
    #     key_identifier: "KeyArnOrKeyAliasType", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.key_certificate #=> String
    #   resp.key_certificate_chain #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-2021-09-14/GetPublicKeyCertificate AWS API Documentation
    #
    # @overload get_public_key_certificate(params = {})
    # @param [Hash] params ({})
    def get_public_key_certificate(params = {}, options = {})
      req = build_request(:get_public_key_certificate, params)
      req.send_request(options)
    end

    # Imports symmetric keys and public key certificates in PEM format
    # (base64 encoded) into Amazon Web Services Payment Cryptography.
    #
    # Amazon Web Services Payment Cryptography simplifies key exchange by
    # replacing the existing paper-based approach with a modern electronic
    # approach. With `ImportKey` you can import symmetric keys using either
    # symmetric and asymmetric key exchange mechanisms.
    #
    # For symmetric key exchange, Amazon Web Services Payment Cryptography
    # uses the ANSI X9 TR-31 norm in accordance with PCI PIN guidelines. And
    # for asymmetric key exchange, Amazon Web Services Payment Cryptography
    # supports ANSI X9 TR-34 norm, RSA unwrap, and ECDH (Elliptic Curve
    # Diffie-Hellman) key exchange mechanisms. Asymmetric key exchange
    # methods are typically used to establish bi-directional trust between
    # the two parties exhanging keys and are used for initial key exchange
    # such as Key Encryption Key (KEK) or Zone Master Key (ZMK). After which
    # you can import working keys using symmetric method to perform various
    # cryptographic operations within Amazon Web Services Payment
    # Cryptography.
    #
    # PCI requires specific minimum key strength of wrapping keys used to
    # protect the keys being exchanged electronically. These requirements
    # can change when PCI standards are revised. The rules specify that
    # wrapping keys used for transport must be at least as strong as the key
    # being protected. For more information on recommended key strength of
    # wrapping keys and key exchange mechanism, see [Importing and exporting
    # keys][1] in the *Amazon Web Services Payment Cryptography User Guide*.
    #
    # You can also import a *root public key certificate*, used to sign
    # other public key certificates, or a *trusted public key certificate*
    # under an already established root public key certificate.
    #
    # **To import a public root key certificate**
    #
    # Using this operation, you can import the public component (in PEM
    # cerificate format) of your private root key. You can use the imported
    # public root key certificate for digital signatures, for example
    # signing wrapping key or signing key in TR-34, within your Amazon Web
    # Services Payment Cryptography account.
    #
    # Set the following parameters:
    #
    # * `KeyMaterial`: `RootCertificatePublicKey`
    #
    # * `KeyClass`: `PUBLIC_KEY`
    #
    # * `KeyModesOfUse`: `Verify`
    #
    # * `KeyUsage`: `TR31_S0_ASYMMETRIC_KEY_FOR_DIGITAL_SIGNATURE`
    #
    # * `PublicKeyCertificate`: The public key certificate in PEM format
    #   (base64 encoded) of the private root key under import.
    #
    # **To import a trusted public key certificate**
    #
    # The root public key certificate must be in place and operational
    # before you import a trusted public key certificate. Set the following
    # parameters:
    #
    # * `KeyMaterial`: `TrustedCertificatePublicKey`
    #
    # * `CertificateAuthorityPublicKeyIdentifier`: `KeyArn` of the
    #   `RootCertificatePublicKey`.
    #
    # * `KeyModesOfUse` and `KeyUsage`: Corresponding to the cryptographic
    #   operations such as wrap, sign, or encrypt that you will allow the
    #   trusted public key certificate to perform.
    #
    # * `PublicKeyCertificate`: The trusted public key certificate in PEM
    #   format (base64 encoded) under import.
    #
    # **To import initial keys (KEK or ZMK or similar) using TR-34**
    #
    # Using this operation, you can import initial key using TR-34
    # asymmetric key exchange. In TR-34 terminology, the sending party of
    # the key is called Key Distribution Host (KDH) and the receiving party
    # of the key is called Key Receiving Device (KRD). During the key import
    # process, KDH is the user who initiates the key import and KRD is
    # Amazon Web Services Payment Cryptography who receives the key.
    #
    # To initiate TR-34 key import, the KDH must obtain an import token by
    # calling [GetParametersForImport][2]. This operation generates an
    # encryption keypair for the purpose of key import, signs the key and
    # returns back the wrapping key certificate (also known as KRD wrapping
    # certificate) and the root certificate chain. The KDH must trust and
    # install the KRD wrapping certificate on its HSM and use it to encrypt
    # (wrap) the KDH key during TR-34 WrappedKeyBlock generation. The import
    # token and associated KRD wrapping certificate expires after 30 days.
    #
    # Next the KDH generates a key pair for the purpose of signing the
    # encrypted KDH key and provides the public certificate of the signing
    # key to Amazon Web Services Payment Cryptography. The KDH will also
    # need to import the root certificate chain of the KDH signing
    # certificate by calling `ImportKey` for `RootCertificatePublicKey`. For
    # more information on TR-34 key import, see section [Importing symmetric
    # keys][3] in the *Amazon Web Services Payment Cryptography User Guide*.
    #
    # Set the following parameters:
    #
    # * `KeyMaterial`: Use `Tr34KeyBlock` parameters.
    #
    # * `CertificateAuthorityPublicKeyIdentifier`: The `KeyARN` of the
    #   certificate chain that signed the KDH signing key certificate.
    #
    # * `ImportToken`: Obtained from KRD by calling
    #   [GetParametersForImport][2].
    #
    # * `WrappedKeyBlock`: The TR-34 wrapped key material from KDH. It
    #   contains the KDH key under import, wrapped with KRD wrapping
    #   certificate and signed by KDH signing private key. This TR-34 key
    #   block is typically generated by the KDH Hardware Security Module
    #   (HSM) outside of Amazon Web Services Payment Cryptography.
    #
    # * `SigningKeyCertificate`: The public key certificate in PEM format
    #   (base64 encoded) of the KDH signing key generated under the root
    #   certificate (CertificateAuthorityPublicKeyIdentifier) imported in
    #   Amazon Web Services Payment Cryptography.
    #
    # **To import initial keys (KEK or ZMK or similar) using RSA Wrap and
    # Unwrap**
    #
    # Using this operation, you can import initial key using asymmetric RSA
    # wrap and unwrap key exchange method. To initiate import, call
    # [GetParametersForImport][2] with `KeyMaterial` set to `KEY_CRYPTOGRAM`
    # to generate an import token. This operation also generates an
    # encryption keypair for the purpose of key import, signs the key and
    # returns back the wrapping key certificate in PEM format (base64
    # encoded) and its root certificate chain. The import token and
    # associated KRD wrapping certificate expires after 30 days.
    #
    # You must trust and install the wrapping certificate and its
    # certificate chain on the sending HSM and use it to wrap the key under
    # export for WrappedKeyCryptogram generation. Next call `ImportKey` with
    # `KeyMaterial` set to `KEY_CRYPTOGRAM` and provide the `ImportToken`
    # and `KeyAttributes` for the key under import.
    #
    # **To import working keys using TR-31**
    #
    # Amazon Web Services Payment Cryptography uses TR-31 symmetric key
    # exchange norm to import working keys. A KEK must be established within
    # Amazon Web Services Payment Cryptography by using TR-34 key import or
    # by using [CreateKey][4]. To initiate a TR-31 key import, set the
    # following parameters:
    #
    # * `KeyMaterial`: Use `Tr31KeyBlock` parameters.
    #
    # * `WrappedKeyBlock`: The TR-31 wrapped key material. It contains the
    #   key under import, encrypted using KEK. The TR-31 key block is
    #   typically generated by a HSM outside of Amazon Web Services Payment
    #   Cryptography.
    #
    # * `WrappingKeyIdentifier`: The `KeyArn` of the KEK that Amazon Web
    #   Services Payment Cryptography uses to decrypt or unwrap the key
    #   under import.
    #
    # **To import working keys using ECDH**
    #
    # You can also use ECDH key agreement to import working keys as a TR-31
    # keyblock, where the wrapping key is an ECDH derived key.
    #
    # To initiate a TR-31 key import using ECDH, both sides must create an
    # ECC key pair with key usage K3 and exchange public key certificates.
    # In Amazon Web Services Payment Cryptography, you can do this by
    # calling `CreateKey` and then `GetPublicKeyCertificate` to retrieve its
    # public key certificate. Next, you can then generate a TR-31
    # WrappedKeyBlock using your own ECC key pair, the public certificate of
    # the service's ECC key pair, and the key derivation parameters
    # including key derivation function, hash algorithm, derivation data,
    # and key algorithm. If you have not already done so, you must import
    # the CA chain that issued the receiving public key certificate by
    # calling `ImportKey` with input `RootCertificatePublicKey` for root CA
    # or `TrustedPublicKey` for intermediate CA. To complete the TR-31 key
    # import, you can use the following parameters. It is important that the
    # ECDH key derivation parameters you use should match those used during
    # import to derive the same shared wrapping key within Amazon Web
    # Services Payment Cryptography.
    #
    # * `KeyMaterial`: Use `DiffieHellmanTr31KeyBlock` parameters.
    #
    # * `PrivateKeyIdentifier`: The `KeyArn` of the ECC key pair created
    #   within Amazon Web Services Payment Cryptography to derive a shared
    #   KEK.
    #
    # * `PublicKeyCertificate`: The public key certificate of the receiving
    #   ECC key pair in PEM format (base64 encoded) to derive a shared KEK.
    #
    # * `CertificateAuthorityPublicKeyIdentifier`: The `keyARN` of the CA
    #   that signed the public key certificate of the receiving ECC key
    #   pair.
    #
    # **Cross-account use:** This operation can't be used across different
    # Amazon Web Services accounts.
    #
    # **Related operations:**
    #
    # * [ExportKey][5]
    #
    # * [GetParametersForImport][2]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/payment-cryptography/latest/userguide/keys-importexport.html
    # [2]: https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_GetParametersForImport.html
    # [3]: https://docs.aws.amazon.com/payment-cryptography/latest/userguide/keys-import.html
    # [4]: https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_CreateKey.html
    # [5]: https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_ExportKey.html
    #
    # @option params [required, Types::ImportKeyMaterial] :key_material
    #   The key or public key certificate type to use during key material
    #   import, for example TR-34 or RootCertificatePublicKey.
    #
    # @option params [String] :key_check_value_algorithm
    #   The algorithm that Amazon Web Services Payment Cryptography uses to
    #   calculate the key check value (KCV). It is used to validate the key
    #   integrity.
    #
    #   For TDES keys, the KCV is computed by encrypting 8 bytes, each with
    #   value of zero, with the key to be checked and retaining the 3 highest
    #   order bytes of the encrypted result. For AES keys, the KCV is computed
    #   using a CMAC algorithm where the input data is 16 bytes of zero and
    #   retaining the 3 highest order bytes of the encrypted result.
    #
    # @option params [Boolean] :enabled
    #   Specifies whether import key is enabled.
    #
    # @option params [Array<Types::Tag>] :tags
    #   Assigns one or more tags to the Amazon Web Services Payment
    #   Cryptography key. Use this parameter to tag a key when it is imported.
    #   To tag an existing Amazon Web Services Payment Cryptography key, use
    #   the [TagResource][1] operation.
    #
    #   Each tag consists of a tag key and a tag value. Both the tag key and
    #   the tag value are required, but the tag value can be an empty (null)
    #   string. You can't have more than one tag on an Amazon Web Services
    #   Payment Cryptography key with the same tag key. If you specify an
    #   existing tag key with a different tag value, Amazon Web Services
    #   Payment Cryptography replaces the current tag value with the specified
    #   one.
    #
    #   Don't include personal, confidential or sensitive information in this
    #   field. This field may be displayed in plaintext in CloudTrail logs and
    #   other output.
    #
    #   <note markdown="1"> Tagging or untagging an Amazon Web Services Payment Cryptography key
    #   can allow or deny permission to the key.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_TagResource.html
    #
    # @option params [Array<String>] :replication_regions
    #   A list of Amazon Web Services Regions for key replication operations.
    #
    #   Each region in the list must be a valid Amazon Web Services Region
    #   identifier where Amazon Web Services Payment Cryptography is
    #   available. This list is used to specify which regions should be added
    #   to or removed from a key's replication configuration.
    #
    # @return [Types::ImportKeyOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ImportKeyOutput#key #key} => Types::Key
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.import_key({
    #     key_material: { # required
    #       root_certificate_public_key: {
    #         key_attributes: { # required
    #           key_usage: "TR31_B0_BASE_DERIVATION_KEY", # required, accepts TR31_B0_BASE_DERIVATION_KEY, TR31_C0_CARD_VERIFICATION_KEY, TR31_D0_SYMMETRIC_DATA_ENCRYPTION_KEY, TR31_D1_ASYMMETRIC_KEY_FOR_DATA_ENCRYPTION, TR31_E0_EMV_MKEY_APP_CRYPTOGRAMS, TR31_E1_EMV_MKEY_CONFIDENTIALITY, TR31_E2_EMV_MKEY_INTEGRITY, TR31_E4_EMV_MKEY_DYNAMIC_NUMBERS, TR31_E5_EMV_MKEY_CARD_PERSONALIZATION, TR31_E6_EMV_MKEY_OTHER, TR31_K0_KEY_ENCRYPTION_KEY, TR31_K1_KEY_BLOCK_PROTECTION_KEY, TR31_K3_ASYMMETRIC_KEY_FOR_KEY_AGREEMENT, TR31_M3_ISO_9797_3_MAC_KEY, TR31_M1_ISO_9797_1_MAC_KEY, TR31_M6_ISO_9797_5_CMAC_KEY, TR31_M7_HMAC_KEY, TR31_P0_PIN_ENCRYPTION_KEY, TR31_P1_PIN_GENERATION_KEY, TR31_S0_ASYMMETRIC_KEY_FOR_DIGITAL_SIGNATURE, TR31_V1_IBM3624_PIN_VERIFICATION_KEY, TR31_V2_VISA_PIN_VERIFICATION_KEY, TR31_K2_TR34_ASYMMETRIC_KEY
    #           key_class: "SYMMETRIC_KEY", # required, accepts SYMMETRIC_KEY, ASYMMETRIC_KEY_PAIR, PRIVATE_KEY, PUBLIC_KEY
    #           key_algorithm: "TDES_2KEY", # required, accepts TDES_2KEY, TDES_3KEY, AES_128, AES_192, AES_256, HMAC_SHA256, HMAC_SHA384, HMAC_SHA512, HMAC_SHA224, RSA_2048, RSA_3072, RSA_4096, ECC_NIST_P256, ECC_NIST_P384, ECC_NIST_P521
    #           key_modes_of_use: { # required
    #             encrypt: false,
    #             decrypt: false,
    #             wrap: false,
    #             unwrap: false,
    #             generate: false,
    #             sign: false,
    #             verify: false,
    #             derive_key: false,
    #             no_restrictions: false,
    #           },
    #         },
    #         public_key_certificate: "CertificateType", # required
    #       },
    #       trusted_certificate_public_key: {
    #         key_attributes: { # required
    #           key_usage: "TR31_B0_BASE_DERIVATION_KEY", # required, accepts TR31_B0_BASE_DERIVATION_KEY, TR31_C0_CARD_VERIFICATION_KEY, TR31_D0_SYMMETRIC_DATA_ENCRYPTION_KEY, TR31_D1_ASYMMETRIC_KEY_FOR_DATA_ENCRYPTION, TR31_E0_EMV_MKEY_APP_CRYPTOGRAMS, TR31_E1_EMV_MKEY_CONFIDENTIALITY, TR31_E2_EMV_MKEY_INTEGRITY, TR31_E4_EMV_MKEY_DYNAMIC_NUMBERS, TR31_E5_EMV_MKEY_CARD_PERSONALIZATION, TR31_E6_EMV_MKEY_OTHER, TR31_K0_KEY_ENCRYPTION_KEY, TR31_K1_KEY_BLOCK_PROTECTION_KEY, TR31_K3_ASYMMETRIC_KEY_FOR_KEY_AGREEMENT, TR31_M3_ISO_9797_3_MAC_KEY, TR31_M1_ISO_9797_1_MAC_KEY, TR31_M6_ISO_9797_5_CMAC_KEY, TR31_M7_HMAC_KEY, TR31_P0_PIN_ENCRYPTION_KEY, TR31_P1_PIN_GENERATION_KEY, TR31_S0_ASYMMETRIC_KEY_FOR_DIGITAL_SIGNATURE, TR31_V1_IBM3624_PIN_VERIFICATION_KEY, TR31_V2_VISA_PIN_VERIFICATION_KEY, TR31_K2_TR34_ASYMMETRIC_KEY
    #           key_class: "SYMMETRIC_KEY", # required, accepts SYMMETRIC_KEY, ASYMMETRIC_KEY_PAIR, PRIVATE_KEY, PUBLIC_KEY
    #           key_algorithm: "TDES_2KEY", # required, accepts TDES_2KEY, TDES_3KEY, AES_128, AES_192, AES_256, HMAC_SHA256, HMAC_SHA384, HMAC_SHA512, HMAC_SHA224, RSA_2048, RSA_3072, RSA_4096, ECC_NIST_P256, ECC_NIST_P384, ECC_NIST_P521
    #           key_modes_of_use: { # required
    #             encrypt: false,
    #             decrypt: false,
    #             wrap: false,
    #             unwrap: false,
    #             generate: false,
    #             sign: false,
    #             verify: false,
    #             derive_key: false,
    #             no_restrictions: false,
    #           },
    #         },
    #         public_key_certificate: "CertificateType", # required
    #         certificate_authority_public_key_identifier: "KeyArnOrKeyAliasType", # required
    #       },
    #       tr_31_key_block: {
    #         wrapping_key_identifier: "KeyArnOrKeyAliasType", # required
    #         wrapped_key_block: "Tr31WrappedKeyBlock", # required
    #       },
    #       tr_34_key_block: {
    #         certificate_authority_public_key_identifier: "KeyArnOrKeyAliasType", # required
    #         signing_key_certificate: "CertificateType", # required
    #         import_token: "ImportTokenId",
    #         wrapping_key_identifier: "KeyArnOrKeyAliasType",
    #         wrapping_key_certificate: "CertificateType",
    #         wrapped_key_block: "Tr34WrappedKeyBlock", # required
    #         key_block_format: "X9_TR34_2012", # required, accepts X9_TR34_2012
    #         random_nonce: "EvenHexLengthBetween16And32",
    #       },
    #       key_cryptogram: {
    #         key_attributes: { # required
    #           key_usage: "TR31_B0_BASE_DERIVATION_KEY", # required, accepts TR31_B0_BASE_DERIVATION_KEY, TR31_C0_CARD_VERIFICATION_KEY, TR31_D0_SYMMETRIC_DATA_ENCRYPTION_KEY, TR31_D1_ASYMMETRIC_KEY_FOR_DATA_ENCRYPTION, TR31_E0_EMV_MKEY_APP_CRYPTOGRAMS, TR31_E1_EMV_MKEY_CONFIDENTIALITY, TR31_E2_EMV_MKEY_INTEGRITY, TR31_E4_EMV_MKEY_DYNAMIC_NUMBERS, TR31_E5_EMV_MKEY_CARD_PERSONALIZATION, TR31_E6_EMV_MKEY_OTHER, TR31_K0_KEY_ENCRYPTION_KEY, TR31_K1_KEY_BLOCK_PROTECTION_KEY, TR31_K3_ASYMMETRIC_KEY_FOR_KEY_AGREEMENT, TR31_M3_ISO_9797_3_MAC_KEY, TR31_M1_ISO_9797_1_MAC_KEY, TR31_M6_ISO_9797_5_CMAC_KEY, TR31_M7_HMAC_KEY, TR31_P0_PIN_ENCRYPTION_KEY, TR31_P1_PIN_GENERATION_KEY, TR31_S0_ASYMMETRIC_KEY_FOR_DIGITAL_SIGNATURE, TR31_V1_IBM3624_PIN_VERIFICATION_KEY, TR31_V2_VISA_PIN_VERIFICATION_KEY, TR31_K2_TR34_ASYMMETRIC_KEY
    #           key_class: "SYMMETRIC_KEY", # required, accepts SYMMETRIC_KEY, ASYMMETRIC_KEY_PAIR, PRIVATE_KEY, PUBLIC_KEY
    #           key_algorithm: "TDES_2KEY", # required, accepts TDES_2KEY, TDES_3KEY, AES_128, AES_192, AES_256, HMAC_SHA256, HMAC_SHA384, HMAC_SHA512, HMAC_SHA224, RSA_2048, RSA_3072, RSA_4096, ECC_NIST_P256, ECC_NIST_P384, ECC_NIST_P521
    #           key_modes_of_use: { # required
    #             encrypt: false,
    #             decrypt: false,
    #             wrap: false,
    #             unwrap: false,
    #             generate: false,
    #             sign: false,
    #             verify: false,
    #             derive_key: false,
    #             no_restrictions: false,
    #           },
    #         },
    #         exportable: false, # required
    #         wrapped_key_cryptogram: "WrappedKeyCryptogram", # required
    #         import_token: "ImportTokenId", # required
    #         wrapping_spec: "RSA_OAEP_SHA_256", # accepts RSA_OAEP_SHA_256, RSA_OAEP_SHA_512
    #       },
    #       diffie_hellman_tr_31_key_block: {
    #         private_key_identifier: "KeyArnOrKeyAliasType", # required
    #         certificate_authority_public_key_identifier: "KeyArnOrKeyAliasType", # required
    #         public_key_certificate: "CertificateType", # required
    #         derive_key_algorithm: "TDES_2KEY", # required, accepts TDES_2KEY, TDES_3KEY, AES_128, AES_192, AES_256, HMAC_SHA256, HMAC_SHA384, HMAC_SHA512, HMAC_SHA224
    #         key_derivation_function: "NIST_SP800", # required, accepts NIST_SP800, ANSI_X963
    #         key_derivation_hash_algorithm: "SHA_256", # required, accepts SHA_256, SHA_384, SHA_512
    #         derivation_data: { # required
    #           shared_information: "SharedInformation",
    #         },
    #         wrapped_key_block: "Tr31WrappedKeyBlock", # required
    #       },
    #     },
    #     key_check_value_algorithm: "CMAC", # accepts CMAC, ANSI_X9_24, HMAC, SHA_1
    #     enabled: false,
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     replication_regions: ["Region"],
    #   })
    #
    # @example Response structure
    #
    #   resp.key.key_arn #=> String
    #   resp.key.key_attributes.key_usage #=> String, one of "TR31_B0_BASE_DERIVATION_KEY", "TR31_C0_CARD_VERIFICATION_KEY", "TR31_D0_SYMMETRIC_DATA_ENCRYPTION_KEY", "TR31_D1_ASYMMETRIC_KEY_FOR_DATA_ENCRYPTION", "TR31_E0_EMV_MKEY_APP_CRYPTOGRAMS", "TR31_E1_EMV_MKEY_CONFIDENTIALITY", "TR31_E2_EMV_MKEY_INTEGRITY", "TR31_E4_EMV_MKEY_DYNAMIC_NUMBERS", "TR31_E5_EMV_MKEY_CARD_PERSONALIZATION", "TR31_E6_EMV_MKEY_OTHER", "TR31_K0_KEY_ENCRYPTION_KEY", "TR31_K1_KEY_BLOCK_PROTECTION_KEY", "TR31_K3_ASYMMETRIC_KEY_FOR_KEY_AGREEMENT", "TR31_M3_ISO_9797_3_MAC_KEY", "TR31_M1_ISO_9797_1_MAC_KEY", "TR31_M6_ISO_9797_5_CMAC_KEY", "TR31_M7_HMAC_KEY", "TR31_P0_PIN_ENCRYPTION_KEY", "TR31_P1_PIN_GENERATION_KEY", "TR31_S0_ASYMMETRIC_KEY_FOR_DIGITAL_SIGNATURE", "TR31_V1_IBM3624_PIN_VERIFICATION_KEY", "TR31_V2_VISA_PIN_VERIFICATION_KEY", "TR31_K2_TR34_ASYMMETRIC_KEY"
    #   resp.key.key_attributes.key_class #=> String, one of "SYMMETRIC_KEY", "ASYMMETRIC_KEY_PAIR", "PRIVATE_KEY", "PUBLIC_KEY"
    #   resp.key.key_attributes.key_algorithm #=> String, one of "TDES_2KEY", "TDES_3KEY", "AES_128", "AES_192", "AES_256", "HMAC_SHA256", "HMAC_SHA384", "HMAC_SHA512", "HMAC_SHA224", "RSA_2048", "RSA_3072", "RSA_4096", "ECC_NIST_P256", "ECC_NIST_P384", "ECC_NIST_P521"
    #   resp.key.key_attributes.key_modes_of_use.encrypt #=> Boolean
    #   resp.key.key_attributes.key_modes_of_use.decrypt #=> Boolean
    #   resp.key.key_attributes.key_modes_of_use.wrap #=> Boolean
    #   resp.key.key_attributes.key_modes_of_use.unwrap #=> Boolean
    #   resp.key.key_attributes.key_modes_of_use.generate #=> Boolean
    #   resp.key.key_attributes.key_modes_of_use.sign #=> Boolean
    #   resp.key.key_attributes.key_modes_of_use.verify #=> Boolean
    #   resp.key.key_attributes.key_modes_of_use.derive_key #=> Boolean
    #   resp.key.key_attributes.key_modes_of_use.no_restrictions #=> Boolean
    #   resp.key.key_check_value #=> String
    #   resp.key.key_check_value_algorithm #=> String, one of "CMAC", "ANSI_X9_24", "HMAC", "SHA_1"
    #   resp.key.enabled #=> Boolean
    #   resp.key.exportable #=> Boolean
    #   resp.key.key_state #=> String, one of "CREATE_IN_PROGRESS", "CREATE_COMPLETE", "DELETE_PENDING", "DELETE_COMPLETE"
    #   resp.key.key_origin #=> String, one of "EXTERNAL", "AWS_PAYMENT_CRYPTOGRAPHY"
    #   resp.key.create_timestamp #=> Time
    #   resp.key.usage_start_timestamp #=> Time
    #   resp.key.usage_stop_timestamp #=> Time
    #   resp.key.delete_pending_timestamp #=> Time
    #   resp.key.delete_timestamp #=> Time
    #   resp.key.derive_key_usage #=> String, one of "TR31_B0_BASE_DERIVATION_KEY", "TR31_C0_CARD_VERIFICATION_KEY", "TR31_D0_SYMMETRIC_DATA_ENCRYPTION_KEY", "TR31_E0_EMV_MKEY_APP_CRYPTOGRAMS", "TR31_E1_EMV_MKEY_CONFIDENTIALITY", "TR31_E2_EMV_MKEY_INTEGRITY", "TR31_E4_EMV_MKEY_DYNAMIC_NUMBERS", "TR31_E5_EMV_MKEY_CARD_PERSONALIZATION", "TR31_E6_EMV_MKEY_OTHER", "TR31_K0_KEY_ENCRYPTION_KEY", "TR31_K1_KEY_BLOCK_PROTECTION_KEY", "TR31_M3_ISO_9797_3_MAC_KEY", "TR31_M1_ISO_9797_1_MAC_KEY", "TR31_M6_ISO_9797_5_CMAC_KEY", "TR31_M7_HMAC_KEY", "TR31_P0_PIN_ENCRYPTION_KEY", "TR31_P1_PIN_GENERATION_KEY", "TR31_V1_IBM3624_PIN_VERIFICATION_KEY", "TR31_V2_VISA_PIN_VERIFICATION_KEY"
    #   resp.key.multi_region_key_type #=> String, one of "PRIMARY", "REPLICA"
    #   resp.key.primary_region #=> String
    #   resp.key.replication_status #=> Hash
    #   resp.key.replication_status["Region"].status #=> String, one of "IN_PROGRESS", "DELETE_IN_PROGRESS", "FAILED", "SYNCHRONIZED"
    #   resp.key.replication_status["Region"].status_message #=> String
    #   resp.key.using_default_replication_regions #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-2021-09-14/ImportKey AWS API Documentation
    #
    # @overload import_key(params = {})
    # @param [Hash] params ({})
    def import_key(params = {}, options = {})
      req = build_request(:import_key, params)
      req.send_request(options)
    end

    # Lists the aliases for all keys in the caller's Amazon Web Services
    # account and Amazon Web Services Region. You can filter the aliases by
    # `keyARN`. For more information, see [Using aliases][1] in the *Amazon
    # Web Services Payment Cryptography User Guide*.
    #
    # This is a paginated operation, which means that each response might
    # contain only a subset of all the aliases. When the response contains
    # only a subset of aliases, it includes a `NextToken` value. Use this
    # value in a subsequent `ListAliases` request to get more aliases. When
    # you receive a response with no NextToken (or an empty or null value),
    # that means there are no more aliases to get.
    #
    # **Cross-account use:** This operation can't be used across different
    # Amazon Web Services accounts.
    #
    # **Related operations:**
    #
    # * [CreateAlias][2]
    #
    # * [DeleteAlias][3]
    #
    # * [GetAlias][4]
    #
    # * [UpdateAlias][5]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/payment-cryptography/latest/userguide/keys-managealias.html
    # [2]: https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_CreateAlias.html
    # [3]: https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_DeleteAlias.html
    # [4]: https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_GetAlias.html
    # [5]: https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_UpdateAlias.html
    #
    # @option params [String] :key_arn
    #   The `keyARN` for which you want to list all aliases.
    #
    # @option params [String] :next_token
    #   Use this parameter in a subsequent request after you receive a
    #   response with truncated results. Set it to the value of `NextToken`
    #   from the truncated response you just received.
    #
    # @option params [Integer] :max_results
    #   Use this parameter to specify the maximum number of items to return.
    #   When this value is present, Amazon Web Services Payment Cryptography
    #   does not return more than the specified number of items, but it might
    #   return fewer.
    #
    #   This value is optional. If you include a value, it must be between 1
    #   and 100, inclusive. If you do not include a value, it defaults to 50.
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
    #     key_arn: "KeyArn",
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.aliases #=> Array
    #   resp.aliases[0].alias_name #=> String
    #   resp.aliases[0].key_arn #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-2021-09-14/ListAliases AWS API Documentation
    #
    # @overload list_aliases(params = {})
    # @param [Hash] params ({})
    def list_aliases(params = {}, options = {})
      req = build_request(:list_aliases, params)
      req.send_request(options)
    end

    # Lists the keys in the caller's Amazon Web Services account and Amazon
    # Web Services Region. You can filter the list of keys.
    #
    # This is a paginated operation, which means that each response might
    # contain only a subset of all the keys. When the response contains only
    # a subset of keys, it includes a `NextToken` value. Use this value in a
    # subsequent `ListKeys` request to get more keys. When you receive a
    # response with no NextToken (or an empty or null value), that means
    # there are no more keys to get.
    #
    # **Cross-account use:** This operation can't be used across different
    # Amazon Web Services accounts.
    #
    # **Related operations:**
    #
    # * [CreateKey][1]
    #
    # * [DeleteKey][2]
    #
    # * [GetKey][3]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_CreateKey.html
    # [2]: https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_DeleteKey.html
    # [3]: https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_GetKey.html
    #
    # @option params [String] :key_state
    #   The key state of the keys you want to list.
    #
    # @option params [String] :next_token
    #   Use this parameter in a subsequent request after you receive a
    #   response with truncated results. Set it to the value of `NextToken`
    #   from the truncated response you just received.
    #
    # @option params [Integer] :max_results
    #   Use this parameter to specify the maximum number of items to return.
    #   When this value is present, Amazon Web Services Payment Cryptography
    #   does not return more than the specified number of items, but it might
    #   return fewer.
    #
    #   This value is optional. If you include a value, it must be between 1
    #   and 100, inclusive. If you do not include a value, it defaults to 50.
    #
    # @return [Types::ListKeysOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListKeysOutput#keys #keys} => Array&lt;Types::KeySummary&gt;
    #   * {Types::ListKeysOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_keys({
    #     key_state: "CREATE_IN_PROGRESS", # accepts CREATE_IN_PROGRESS, CREATE_COMPLETE, DELETE_PENDING, DELETE_COMPLETE
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.keys #=> Array
    #   resp.keys[0].key_arn #=> String
    #   resp.keys[0].key_state #=> String, one of "CREATE_IN_PROGRESS", "CREATE_COMPLETE", "DELETE_PENDING", "DELETE_COMPLETE"
    #   resp.keys[0].key_attributes.key_usage #=> String, one of "TR31_B0_BASE_DERIVATION_KEY", "TR31_C0_CARD_VERIFICATION_KEY", "TR31_D0_SYMMETRIC_DATA_ENCRYPTION_KEY", "TR31_D1_ASYMMETRIC_KEY_FOR_DATA_ENCRYPTION", "TR31_E0_EMV_MKEY_APP_CRYPTOGRAMS", "TR31_E1_EMV_MKEY_CONFIDENTIALITY", "TR31_E2_EMV_MKEY_INTEGRITY", "TR31_E4_EMV_MKEY_DYNAMIC_NUMBERS", "TR31_E5_EMV_MKEY_CARD_PERSONALIZATION", "TR31_E6_EMV_MKEY_OTHER", "TR31_K0_KEY_ENCRYPTION_KEY", "TR31_K1_KEY_BLOCK_PROTECTION_KEY", "TR31_K3_ASYMMETRIC_KEY_FOR_KEY_AGREEMENT", "TR31_M3_ISO_9797_3_MAC_KEY", "TR31_M1_ISO_9797_1_MAC_KEY", "TR31_M6_ISO_9797_5_CMAC_KEY", "TR31_M7_HMAC_KEY", "TR31_P0_PIN_ENCRYPTION_KEY", "TR31_P1_PIN_GENERATION_KEY", "TR31_S0_ASYMMETRIC_KEY_FOR_DIGITAL_SIGNATURE", "TR31_V1_IBM3624_PIN_VERIFICATION_KEY", "TR31_V2_VISA_PIN_VERIFICATION_KEY", "TR31_K2_TR34_ASYMMETRIC_KEY"
    #   resp.keys[0].key_attributes.key_class #=> String, one of "SYMMETRIC_KEY", "ASYMMETRIC_KEY_PAIR", "PRIVATE_KEY", "PUBLIC_KEY"
    #   resp.keys[0].key_attributes.key_algorithm #=> String, one of "TDES_2KEY", "TDES_3KEY", "AES_128", "AES_192", "AES_256", "HMAC_SHA256", "HMAC_SHA384", "HMAC_SHA512", "HMAC_SHA224", "RSA_2048", "RSA_3072", "RSA_4096", "ECC_NIST_P256", "ECC_NIST_P384", "ECC_NIST_P521"
    #   resp.keys[0].key_attributes.key_modes_of_use.encrypt #=> Boolean
    #   resp.keys[0].key_attributes.key_modes_of_use.decrypt #=> Boolean
    #   resp.keys[0].key_attributes.key_modes_of_use.wrap #=> Boolean
    #   resp.keys[0].key_attributes.key_modes_of_use.unwrap #=> Boolean
    #   resp.keys[0].key_attributes.key_modes_of_use.generate #=> Boolean
    #   resp.keys[0].key_attributes.key_modes_of_use.sign #=> Boolean
    #   resp.keys[0].key_attributes.key_modes_of_use.verify #=> Boolean
    #   resp.keys[0].key_attributes.key_modes_of_use.derive_key #=> Boolean
    #   resp.keys[0].key_attributes.key_modes_of_use.no_restrictions #=> Boolean
    #   resp.keys[0].key_check_value #=> String
    #   resp.keys[0].exportable #=> Boolean
    #   resp.keys[0].enabled #=> Boolean
    #   resp.keys[0].multi_region_key_type #=> String, one of "PRIMARY", "REPLICA"
    #   resp.keys[0].primary_region #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-2021-09-14/ListKeys AWS API Documentation
    #
    # @overload list_keys(params = {})
    # @param [Hash] params ({})
    def list_keys(params = {}, options = {})
      req = build_request(:list_keys, params)
      req.send_request(options)
    end

    # Lists the tags for an Amazon Web Services resource.
    #
    # This is a paginated operation, which means that each response might
    # contain only a subset of all the tags. When the response contains only
    # a subset of tags, it includes a `NextToken` value. Use this value in a
    # subsequent `ListTagsForResource` request to get more tags. When you
    # receive a response with no NextToken (or an empty or null value), that
    # means there are no more tags to get.
    #
    # **Cross-account use:** This operation can't be used across different
    # Amazon Web Services accounts.
    #
    # **Related operations:**
    #
    # * [TagResource][1]
    #
    # * [UntagResource][2]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_TagResource.html
    # [2]: https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_UntagResource.html
    #
    # @option params [required, String] :resource_arn
    #   The `KeyARN` of the key whose tags you are getting.
    #
    # @option params [String] :next_token
    #   Use this parameter in a subsequent request after you receive a
    #   response with truncated results. Set it to the value of `NextToken`
    #   from the truncated response you just received.
    #
    # @option params [Integer] :max_results
    #   Use this parameter to specify the maximum number of items to return.
    #   When this value is present, Amazon Web Services Payment Cryptography
    #   does not return more than the specified number of items, but it might
    #   return fewer.
    #
    #   This value is optional. If you include a value, it must be between 1
    #   and 100, inclusive. If you do not include a value, it defaults to 50.
    #
    # @return [Types::ListTagsForResourceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceOutput#tags #tags} => Array&lt;Types::Tag&gt;
    #   * {Types::ListTagsForResourceOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "ResourceArn", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-2021-09-14/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Removes Replication Regions from an existing Amazon Web Services
    # Payment Cryptography key, disabling the key's availability for
    # cryptographic operations in the specified Amazon Web Services Regions.
    #
    # When you remove Replication Regions, the key material is securely
    # deleted from those regions and can no longer be used for cryptographic
    # operations there. This operation is irreversible for the specified
    # Amazon Web Services Regions.
    #
    # Ensure that no active cryptographic operations or applications depend
    # on the key in the regions you're removing before performing this
    # operation.
    #
    # **Cross-account use:** This operation can't be used across different
    # Amazon Web Services accounts.
    #
    # **Related operations:**
    #
    # * [AddKeyReplicationRegions][1]
    #
    # * [DisableDefaultKeyReplicationRegions][2]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_AddKeyReplicationRegions.html
    # [2]: https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_DisableDefaultKeyReplicationRegions.html
    #
    # @option params [required, String] :key_identifier
    #   The key identifier (ARN or alias) of the key from which to remove
    #   replication regions.
    #
    #   This key must exist and have replication enabled in the specified
    #   regions.
    #
    # @option params [required, Array<String>] :replication_regions
    #   The list of Amazon Web Services Regions to remove from the key's
    #   replication configuration.
    #
    #   The key will no longer be available for cryptographic operations in
    #   these regions after removal. Ensure no active operations depend on the
    #   key in these regions before removal.
    #
    # @return [Types::RemoveKeyReplicationRegionsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RemoveKeyReplicationRegionsOutput#key #key} => Types::Key
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_key_replication_regions({
    #     key_identifier: "KeyArnOrKeyAliasType", # required
    #     replication_regions: ["Region"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.key.key_arn #=> String
    #   resp.key.key_attributes.key_usage #=> String, one of "TR31_B0_BASE_DERIVATION_KEY", "TR31_C0_CARD_VERIFICATION_KEY", "TR31_D0_SYMMETRIC_DATA_ENCRYPTION_KEY", "TR31_D1_ASYMMETRIC_KEY_FOR_DATA_ENCRYPTION", "TR31_E0_EMV_MKEY_APP_CRYPTOGRAMS", "TR31_E1_EMV_MKEY_CONFIDENTIALITY", "TR31_E2_EMV_MKEY_INTEGRITY", "TR31_E4_EMV_MKEY_DYNAMIC_NUMBERS", "TR31_E5_EMV_MKEY_CARD_PERSONALIZATION", "TR31_E6_EMV_MKEY_OTHER", "TR31_K0_KEY_ENCRYPTION_KEY", "TR31_K1_KEY_BLOCK_PROTECTION_KEY", "TR31_K3_ASYMMETRIC_KEY_FOR_KEY_AGREEMENT", "TR31_M3_ISO_9797_3_MAC_KEY", "TR31_M1_ISO_9797_1_MAC_KEY", "TR31_M6_ISO_9797_5_CMAC_KEY", "TR31_M7_HMAC_KEY", "TR31_P0_PIN_ENCRYPTION_KEY", "TR31_P1_PIN_GENERATION_KEY", "TR31_S0_ASYMMETRIC_KEY_FOR_DIGITAL_SIGNATURE", "TR31_V1_IBM3624_PIN_VERIFICATION_KEY", "TR31_V2_VISA_PIN_VERIFICATION_KEY", "TR31_K2_TR34_ASYMMETRIC_KEY"
    #   resp.key.key_attributes.key_class #=> String, one of "SYMMETRIC_KEY", "ASYMMETRIC_KEY_PAIR", "PRIVATE_KEY", "PUBLIC_KEY"
    #   resp.key.key_attributes.key_algorithm #=> String, one of "TDES_2KEY", "TDES_3KEY", "AES_128", "AES_192", "AES_256", "HMAC_SHA256", "HMAC_SHA384", "HMAC_SHA512", "HMAC_SHA224", "RSA_2048", "RSA_3072", "RSA_4096", "ECC_NIST_P256", "ECC_NIST_P384", "ECC_NIST_P521"
    #   resp.key.key_attributes.key_modes_of_use.encrypt #=> Boolean
    #   resp.key.key_attributes.key_modes_of_use.decrypt #=> Boolean
    #   resp.key.key_attributes.key_modes_of_use.wrap #=> Boolean
    #   resp.key.key_attributes.key_modes_of_use.unwrap #=> Boolean
    #   resp.key.key_attributes.key_modes_of_use.generate #=> Boolean
    #   resp.key.key_attributes.key_modes_of_use.sign #=> Boolean
    #   resp.key.key_attributes.key_modes_of_use.verify #=> Boolean
    #   resp.key.key_attributes.key_modes_of_use.derive_key #=> Boolean
    #   resp.key.key_attributes.key_modes_of_use.no_restrictions #=> Boolean
    #   resp.key.key_check_value #=> String
    #   resp.key.key_check_value_algorithm #=> String, one of "CMAC", "ANSI_X9_24", "HMAC", "SHA_1"
    #   resp.key.enabled #=> Boolean
    #   resp.key.exportable #=> Boolean
    #   resp.key.key_state #=> String, one of "CREATE_IN_PROGRESS", "CREATE_COMPLETE", "DELETE_PENDING", "DELETE_COMPLETE"
    #   resp.key.key_origin #=> String, one of "EXTERNAL", "AWS_PAYMENT_CRYPTOGRAPHY"
    #   resp.key.create_timestamp #=> Time
    #   resp.key.usage_start_timestamp #=> Time
    #   resp.key.usage_stop_timestamp #=> Time
    #   resp.key.delete_pending_timestamp #=> Time
    #   resp.key.delete_timestamp #=> Time
    #   resp.key.derive_key_usage #=> String, one of "TR31_B0_BASE_DERIVATION_KEY", "TR31_C0_CARD_VERIFICATION_KEY", "TR31_D0_SYMMETRIC_DATA_ENCRYPTION_KEY", "TR31_E0_EMV_MKEY_APP_CRYPTOGRAMS", "TR31_E1_EMV_MKEY_CONFIDENTIALITY", "TR31_E2_EMV_MKEY_INTEGRITY", "TR31_E4_EMV_MKEY_DYNAMIC_NUMBERS", "TR31_E5_EMV_MKEY_CARD_PERSONALIZATION", "TR31_E6_EMV_MKEY_OTHER", "TR31_K0_KEY_ENCRYPTION_KEY", "TR31_K1_KEY_BLOCK_PROTECTION_KEY", "TR31_M3_ISO_9797_3_MAC_KEY", "TR31_M1_ISO_9797_1_MAC_KEY", "TR31_M6_ISO_9797_5_CMAC_KEY", "TR31_M7_HMAC_KEY", "TR31_P0_PIN_ENCRYPTION_KEY", "TR31_P1_PIN_GENERATION_KEY", "TR31_V1_IBM3624_PIN_VERIFICATION_KEY", "TR31_V2_VISA_PIN_VERIFICATION_KEY"
    #   resp.key.multi_region_key_type #=> String, one of "PRIMARY", "REPLICA"
    #   resp.key.primary_region #=> String
    #   resp.key.replication_status #=> Hash
    #   resp.key.replication_status["Region"].status #=> String, one of "IN_PROGRESS", "DELETE_IN_PROGRESS", "FAILED", "SYNCHRONIZED"
    #   resp.key.replication_status["Region"].status_message #=> String
    #   resp.key.using_default_replication_regions #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-2021-09-14/RemoveKeyReplicationRegions AWS API Documentation
    #
    # @overload remove_key_replication_regions(params = {})
    # @param [Hash] params ({})
    def remove_key_replication_regions(params = {}, options = {})
      req = build_request(:remove_key_replication_regions, params)
      req.send_request(options)
    end

    # Cancels a scheduled key deletion during the waiting period. Use this
    # operation to restore a `Key` that is scheduled for deletion.
    #
    # During the waiting period, the `KeyState` is `DELETE_PENDING` and
    # `deletePendingTimestamp` contains the date and time after which the
    # `Key` will be deleted. After `Key` is restored, the `KeyState` is
    # `CREATE_COMPLETE`, and the value for `deletePendingTimestamp` is
    # removed.
    #
    # **Cross-account use:** This operation can't be used across different
    # Amazon Web Services accounts.
    #
    # **Related operations:**
    #
    # * [DeleteKey][1]
    #
    # * [StartKeyUsage][2]
    #
    # * [StopKeyUsage][3]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_DeleteKey.html
    # [2]: https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_StartKeyUsage.html
    # [3]: https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_StopKeyUsage.html
    #
    # @option params [required, String] :key_identifier
    #   The `KeyARN` of the key to be restored within Amazon Web Services
    #   Payment Cryptography.
    #
    # @return [Types::RestoreKeyOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RestoreKeyOutput#key #key} => Types::Key
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.restore_key({
    #     key_identifier: "KeyArnOrKeyAliasType", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.key.key_arn #=> String
    #   resp.key.key_attributes.key_usage #=> String, one of "TR31_B0_BASE_DERIVATION_KEY", "TR31_C0_CARD_VERIFICATION_KEY", "TR31_D0_SYMMETRIC_DATA_ENCRYPTION_KEY", "TR31_D1_ASYMMETRIC_KEY_FOR_DATA_ENCRYPTION", "TR31_E0_EMV_MKEY_APP_CRYPTOGRAMS", "TR31_E1_EMV_MKEY_CONFIDENTIALITY", "TR31_E2_EMV_MKEY_INTEGRITY", "TR31_E4_EMV_MKEY_DYNAMIC_NUMBERS", "TR31_E5_EMV_MKEY_CARD_PERSONALIZATION", "TR31_E6_EMV_MKEY_OTHER", "TR31_K0_KEY_ENCRYPTION_KEY", "TR31_K1_KEY_BLOCK_PROTECTION_KEY", "TR31_K3_ASYMMETRIC_KEY_FOR_KEY_AGREEMENT", "TR31_M3_ISO_9797_3_MAC_KEY", "TR31_M1_ISO_9797_1_MAC_KEY", "TR31_M6_ISO_9797_5_CMAC_KEY", "TR31_M7_HMAC_KEY", "TR31_P0_PIN_ENCRYPTION_KEY", "TR31_P1_PIN_GENERATION_KEY", "TR31_S0_ASYMMETRIC_KEY_FOR_DIGITAL_SIGNATURE", "TR31_V1_IBM3624_PIN_VERIFICATION_KEY", "TR31_V2_VISA_PIN_VERIFICATION_KEY", "TR31_K2_TR34_ASYMMETRIC_KEY"
    #   resp.key.key_attributes.key_class #=> String, one of "SYMMETRIC_KEY", "ASYMMETRIC_KEY_PAIR", "PRIVATE_KEY", "PUBLIC_KEY"
    #   resp.key.key_attributes.key_algorithm #=> String, one of "TDES_2KEY", "TDES_3KEY", "AES_128", "AES_192", "AES_256", "HMAC_SHA256", "HMAC_SHA384", "HMAC_SHA512", "HMAC_SHA224", "RSA_2048", "RSA_3072", "RSA_4096", "ECC_NIST_P256", "ECC_NIST_P384", "ECC_NIST_P521"
    #   resp.key.key_attributes.key_modes_of_use.encrypt #=> Boolean
    #   resp.key.key_attributes.key_modes_of_use.decrypt #=> Boolean
    #   resp.key.key_attributes.key_modes_of_use.wrap #=> Boolean
    #   resp.key.key_attributes.key_modes_of_use.unwrap #=> Boolean
    #   resp.key.key_attributes.key_modes_of_use.generate #=> Boolean
    #   resp.key.key_attributes.key_modes_of_use.sign #=> Boolean
    #   resp.key.key_attributes.key_modes_of_use.verify #=> Boolean
    #   resp.key.key_attributes.key_modes_of_use.derive_key #=> Boolean
    #   resp.key.key_attributes.key_modes_of_use.no_restrictions #=> Boolean
    #   resp.key.key_check_value #=> String
    #   resp.key.key_check_value_algorithm #=> String, one of "CMAC", "ANSI_X9_24", "HMAC", "SHA_1"
    #   resp.key.enabled #=> Boolean
    #   resp.key.exportable #=> Boolean
    #   resp.key.key_state #=> String, one of "CREATE_IN_PROGRESS", "CREATE_COMPLETE", "DELETE_PENDING", "DELETE_COMPLETE"
    #   resp.key.key_origin #=> String, one of "EXTERNAL", "AWS_PAYMENT_CRYPTOGRAPHY"
    #   resp.key.create_timestamp #=> Time
    #   resp.key.usage_start_timestamp #=> Time
    #   resp.key.usage_stop_timestamp #=> Time
    #   resp.key.delete_pending_timestamp #=> Time
    #   resp.key.delete_timestamp #=> Time
    #   resp.key.derive_key_usage #=> String, one of "TR31_B0_BASE_DERIVATION_KEY", "TR31_C0_CARD_VERIFICATION_KEY", "TR31_D0_SYMMETRIC_DATA_ENCRYPTION_KEY", "TR31_E0_EMV_MKEY_APP_CRYPTOGRAMS", "TR31_E1_EMV_MKEY_CONFIDENTIALITY", "TR31_E2_EMV_MKEY_INTEGRITY", "TR31_E4_EMV_MKEY_DYNAMIC_NUMBERS", "TR31_E5_EMV_MKEY_CARD_PERSONALIZATION", "TR31_E6_EMV_MKEY_OTHER", "TR31_K0_KEY_ENCRYPTION_KEY", "TR31_K1_KEY_BLOCK_PROTECTION_KEY", "TR31_M3_ISO_9797_3_MAC_KEY", "TR31_M1_ISO_9797_1_MAC_KEY", "TR31_M6_ISO_9797_5_CMAC_KEY", "TR31_M7_HMAC_KEY", "TR31_P0_PIN_ENCRYPTION_KEY", "TR31_P1_PIN_GENERATION_KEY", "TR31_V1_IBM3624_PIN_VERIFICATION_KEY", "TR31_V2_VISA_PIN_VERIFICATION_KEY"
    #   resp.key.multi_region_key_type #=> String, one of "PRIMARY", "REPLICA"
    #   resp.key.primary_region #=> String
    #   resp.key.replication_status #=> Hash
    #   resp.key.replication_status["Region"].status #=> String, one of "IN_PROGRESS", "DELETE_IN_PROGRESS", "FAILED", "SYNCHRONIZED"
    #   resp.key.replication_status["Region"].status_message #=> String
    #   resp.key.using_default_replication_regions #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-2021-09-14/RestoreKey AWS API Documentation
    #
    # @overload restore_key(params = {})
    # @param [Hash] params ({})
    def restore_key(params = {}, options = {})
      req = build_request(:restore_key, params)
      req.send_request(options)
    end

    # Enables an Amazon Web Services Payment Cryptography key, which makes
    # it active for cryptographic operations within Amazon Web Services
    # Payment Cryptography
    #
    # **Cross-account use:** This operation can't be used across different
    # Amazon Web Services accounts.
    #
    # **Related operations:**
    #
    # * [StopKeyUsage][1]
    #
    # ^
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_StopKeyUsage.html
    #
    # @option params [required, String] :key_identifier
    #   The `KeyArn` of the key.
    #
    # @return [Types::StartKeyUsageOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartKeyUsageOutput#key #key} => Types::Key
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_key_usage({
    #     key_identifier: "KeyArnOrKeyAliasType", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.key.key_arn #=> String
    #   resp.key.key_attributes.key_usage #=> String, one of "TR31_B0_BASE_DERIVATION_KEY", "TR31_C0_CARD_VERIFICATION_KEY", "TR31_D0_SYMMETRIC_DATA_ENCRYPTION_KEY", "TR31_D1_ASYMMETRIC_KEY_FOR_DATA_ENCRYPTION", "TR31_E0_EMV_MKEY_APP_CRYPTOGRAMS", "TR31_E1_EMV_MKEY_CONFIDENTIALITY", "TR31_E2_EMV_MKEY_INTEGRITY", "TR31_E4_EMV_MKEY_DYNAMIC_NUMBERS", "TR31_E5_EMV_MKEY_CARD_PERSONALIZATION", "TR31_E6_EMV_MKEY_OTHER", "TR31_K0_KEY_ENCRYPTION_KEY", "TR31_K1_KEY_BLOCK_PROTECTION_KEY", "TR31_K3_ASYMMETRIC_KEY_FOR_KEY_AGREEMENT", "TR31_M3_ISO_9797_3_MAC_KEY", "TR31_M1_ISO_9797_1_MAC_KEY", "TR31_M6_ISO_9797_5_CMAC_KEY", "TR31_M7_HMAC_KEY", "TR31_P0_PIN_ENCRYPTION_KEY", "TR31_P1_PIN_GENERATION_KEY", "TR31_S0_ASYMMETRIC_KEY_FOR_DIGITAL_SIGNATURE", "TR31_V1_IBM3624_PIN_VERIFICATION_KEY", "TR31_V2_VISA_PIN_VERIFICATION_KEY", "TR31_K2_TR34_ASYMMETRIC_KEY"
    #   resp.key.key_attributes.key_class #=> String, one of "SYMMETRIC_KEY", "ASYMMETRIC_KEY_PAIR", "PRIVATE_KEY", "PUBLIC_KEY"
    #   resp.key.key_attributes.key_algorithm #=> String, one of "TDES_2KEY", "TDES_3KEY", "AES_128", "AES_192", "AES_256", "HMAC_SHA256", "HMAC_SHA384", "HMAC_SHA512", "HMAC_SHA224", "RSA_2048", "RSA_3072", "RSA_4096", "ECC_NIST_P256", "ECC_NIST_P384", "ECC_NIST_P521"
    #   resp.key.key_attributes.key_modes_of_use.encrypt #=> Boolean
    #   resp.key.key_attributes.key_modes_of_use.decrypt #=> Boolean
    #   resp.key.key_attributes.key_modes_of_use.wrap #=> Boolean
    #   resp.key.key_attributes.key_modes_of_use.unwrap #=> Boolean
    #   resp.key.key_attributes.key_modes_of_use.generate #=> Boolean
    #   resp.key.key_attributes.key_modes_of_use.sign #=> Boolean
    #   resp.key.key_attributes.key_modes_of_use.verify #=> Boolean
    #   resp.key.key_attributes.key_modes_of_use.derive_key #=> Boolean
    #   resp.key.key_attributes.key_modes_of_use.no_restrictions #=> Boolean
    #   resp.key.key_check_value #=> String
    #   resp.key.key_check_value_algorithm #=> String, one of "CMAC", "ANSI_X9_24", "HMAC", "SHA_1"
    #   resp.key.enabled #=> Boolean
    #   resp.key.exportable #=> Boolean
    #   resp.key.key_state #=> String, one of "CREATE_IN_PROGRESS", "CREATE_COMPLETE", "DELETE_PENDING", "DELETE_COMPLETE"
    #   resp.key.key_origin #=> String, one of "EXTERNAL", "AWS_PAYMENT_CRYPTOGRAPHY"
    #   resp.key.create_timestamp #=> Time
    #   resp.key.usage_start_timestamp #=> Time
    #   resp.key.usage_stop_timestamp #=> Time
    #   resp.key.delete_pending_timestamp #=> Time
    #   resp.key.delete_timestamp #=> Time
    #   resp.key.derive_key_usage #=> String, one of "TR31_B0_BASE_DERIVATION_KEY", "TR31_C0_CARD_VERIFICATION_KEY", "TR31_D0_SYMMETRIC_DATA_ENCRYPTION_KEY", "TR31_E0_EMV_MKEY_APP_CRYPTOGRAMS", "TR31_E1_EMV_MKEY_CONFIDENTIALITY", "TR31_E2_EMV_MKEY_INTEGRITY", "TR31_E4_EMV_MKEY_DYNAMIC_NUMBERS", "TR31_E5_EMV_MKEY_CARD_PERSONALIZATION", "TR31_E6_EMV_MKEY_OTHER", "TR31_K0_KEY_ENCRYPTION_KEY", "TR31_K1_KEY_BLOCK_PROTECTION_KEY", "TR31_M3_ISO_9797_3_MAC_KEY", "TR31_M1_ISO_9797_1_MAC_KEY", "TR31_M6_ISO_9797_5_CMAC_KEY", "TR31_M7_HMAC_KEY", "TR31_P0_PIN_ENCRYPTION_KEY", "TR31_P1_PIN_GENERATION_KEY", "TR31_V1_IBM3624_PIN_VERIFICATION_KEY", "TR31_V2_VISA_PIN_VERIFICATION_KEY"
    #   resp.key.multi_region_key_type #=> String, one of "PRIMARY", "REPLICA"
    #   resp.key.primary_region #=> String
    #   resp.key.replication_status #=> Hash
    #   resp.key.replication_status["Region"].status #=> String, one of "IN_PROGRESS", "DELETE_IN_PROGRESS", "FAILED", "SYNCHRONIZED"
    #   resp.key.replication_status["Region"].status_message #=> String
    #   resp.key.using_default_replication_regions #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-2021-09-14/StartKeyUsage AWS API Documentation
    #
    # @overload start_key_usage(params = {})
    # @param [Hash] params ({})
    def start_key_usage(params = {}, options = {})
      req = build_request(:start_key_usage, params)
      req.send_request(options)
    end

    # Disables an Amazon Web Services Payment Cryptography key, which makes
    # it inactive within Amazon Web Services Payment Cryptography.
    #
    # You can use this operation instead of [DeleteKey][1] to deactivate a
    # key. You can enable the key in the future by calling
    # [StartKeyUsage][2].
    #
    # **Cross-account use:** This operation can't be used across different
    # Amazon Web Services accounts.
    #
    # **Related operations:**
    #
    # * [DeleteKey][1]
    #
    # * [StartKeyUsage][2]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_DeleteKey.html
    # [2]: https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_StartKeyUsage.html
    #
    # @option params [required, String] :key_identifier
    #   The `KeyArn` of the key.
    #
    # @return [Types::StopKeyUsageOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StopKeyUsageOutput#key #key} => Types::Key
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_key_usage({
    #     key_identifier: "KeyArnOrKeyAliasType", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.key.key_arn #=> String
    #   resp.key.key_attributes.key_usage #=> String, one of "TR31_B0_BASE_DERIVATION_KEY", "TR31_C0_CARD_VERIFICATION_KEY", "TR31_D0_SYMMETRIC_DATA_ENCRYPTION_KEY", "TR31_D1_ASYMMETRIC_KEY_FOR_DATA_ENCRYPTION", "TR31_E0_EMV_MKEY_APP_CRYPTOGRAMS", "TR31_E1_EMV_MKEY_CONFIDENTIALITY", "TR31_E2_EMV_MKEY_INTEGRITY", "TR31_E4_EMV_MKEY_DYNAMIC_NUMBERS", "TR31_E5_EMV_MKEY_CARD_PERSONALIZATION", "TR31_E6_EMV_MKEY_OTHER", "TR31_K0_KEY_ENCRYPTION_KEY", "TR31_K1_KEY_BLOCK_PROTECTION_KEY", "TR31_K3_ASYMMETRIC_KEY_FOR_KEY_AGREEMENT", "TR31_M3_ISO_9797_3_MAC_KEY", "TR31_M1_ISO_9797_1_MAC_KEY", "TR31_M6_ISO_9797_5_CMAC_KEY", "TR31_M7_HMAC_KEY", "TR31_P0_PIN_ENCRYPTION_KEY", "TR31_P1_PIN_GENERATION_KEY", "TR31_S0_ASYMMETRIC_KEY_FOR_DIGITAL_SIGNATURE", "TR31_V1_IBM3624_PIN_VERIFICATION_KEY", "TR31_V2_VISA_PIN_VERIFICATION_KEY", "TR31_K2_TR34_ASYMMETRIC_KEY"
    #   resp.key.key_attributes.key_class #=> String, one of "SYMMETRIC_KEY", "ASYMMETRIC_KEY_PAIR", "PRIVATE_KEY", "PUBLIC_KEY"
    #   resp.key.key_attributes.key_algorithm #=> String, one of "TDES_2KEY", "TDES_3KEY", "AES_128", "AES_192", "AES_256", "HMAC_SHA256", "HMAC_SHA384", "HMAC_SHA512", "HMAC_SHA224", "RSA_2048", "RSA_3072", "RSA_4096", "ECC_NIST_P256", "ECC_NIST_P384", "ECC_NIST_P521"
    #   resp.key.key_attributes.key_modes_of_use.encrypt #=> Boolean
    #   resp.key.key_attributes.key_modes_of_use.decrypt #=> Boolean
    #   resp.key.key_attributes.key_modes_of_use.wrap #=> Boolean
    #   resp.key.key_attributes.key_modes_of_use.unwrap #=> Boolean
    #   resp.key.key_attributes.key_modes_of_use.generate #=> Boolean
    #   resp.key.key_attributes.key_modes_of_use.sign #=> Boolean
    #   resp.key.key_attributes.key_modes_of_use.verify #=> Boolean
    #   resp.key.key_attributes.key_modes_of_use.derive_key #=> Boolean
    #   resp.key.key_attributes.key_modes_of_use.no_restrictions #=> Boolean
    #   resp.key.key_check_value #=> String
    #   resp.key.key_check_value_algorithm #=> String, one of "CMAC", "ANSI_X9_24", "HMAC", "SHA_1"
    #   resp.key.enabled #=> Boolean
    #   resp.key.exportable #=> Boolean
    #   resp.key.key_state #=> String, one of "CREATE_IN_PROGRESS", "CREATE_COMPLETE", "DELETE_PENDING", "DELETE_COMPLETE"
    #   resp.key.key_origin #=> String, one of "EXTERNAL", "AWS_PAYMENT_CRYPTOGRAPHY"
    #   resp.key.create_timestamp #=> Time
    #   resp.key.usage_start_timestamp #=> Time
    #   resp.key.usage_stop_timestamp #=> Time
    #   resp.key.delete_pending_timestamp #=> Time
    #   resp.key.delete_timestamp #=> Time
    #   resp.key.derive_key_usage #=> String, one of "TR31_B0_BASE_DERIVATION_KEY", "TR31_C0_CARD_VERIFICATION_KEY", "TR31_D0_SYMMETRIC_DATA_ENCRYPTION_KEY", "TR31_E0_EMV_MKEY_APP_CRYPTOGRAMS", "TR31_E1_EMV_MKEY_CONFIDENTIALITY", "TR31_E2_EMV_MKEY_INTEGRITY", "TR31_E4_EMV_MKEY_DYNAMIC_NUMBERS", "TR31_E5_EMV_MKEY_CARD_PERSONALIZATION", "TR31_E6_EMV_MKEY_OTHER", "TR31_K0_KEY_ENCRYPTION_KEY", "TR31_K1_KEY_BLOCK_PROTECTION_KEY", "TR31_M3_ISO_9797_3_MAC_KEY", "TR31_M1_ISO_9797_1_MAC_KEY", "TR31_M6_ISO_9797_5_CMAC_KEY", "TR31_M7_HMAC_KEY", "TR31_P0_PIN_ENCRYPTION_KEY", "TR31_P1_PIN_GENERATION_KEY", "TR31_V1_IBM3624_PIN_VERIFICATION_KEY", "TR31_V2_VISA_PIN_VERIFICATION_KEY"
    #   resp.key.multi_region_key_type #=> String, one of "PRIMARY", "REPLICA"
    #   resp.key.primary_region #=> String
    #   resp.key.replication_status #=> Hash
    #   resp.key.replication_status["Region"].status #=> String, one of "IN_PROGRESS", "DELETE_IN_PROGRESS", "FAILED", "SYNCHRONIZED"
    #   resp.key.replication_status["Region"].status_message #=> String
    #   resp.key.using_default_replication_regions #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-2021-09-14/StopKeyUsage AWS API Documentation
    #
    # @overload stop_key_usage(params = {})
    # @param [Hash] params ({})
    def stop_key_usage(params = {}, options = {})
      req = build_request(:stop_key_usage, params)
      req.send_request(options)
    end

    # Adds or edits tags on an Amazon Web Services Payment Cryptography key.
    #
    # <note markdown="1"> Tagging or untagging an Amazon Web Services Payment Cryptography key
    # can allow or deny permission to the key.
    #
    #  </note>
    #
    # Each tag consists of a tag key and a tag value, both of which are
    # case-sensitive strings. The tag value can be an empty (null) string.
    # To add a tag, specify a new tag key and a tag value. To edit a tag,
    # specify an existing tag key and a new tag value. You can also add tags
    # to an Amazon Web Services Payment Cryptography key when you create it
    # with [CreateKey][1].
    #
    # **Cross-account use:** This operation can't be used across different
    # Amazon Web Services accounts.
    #
    # **Related operations:**
    #
    # * [ListTagsForResource][2]
    #
    # * [UntagResource][3]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_CreateKey.html
    # [2]: https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_ListTagsForResource.html
    # [3]: https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_UntagResource.html
    #
    # @option params [required, String] :resource_arn
    #   The `KeyARN` of the key whose tags are being updated.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   One or more tags. Each tag consists of a tag key and a tag value. The
    #   tag value can be an empty (null) string. You can't have more than one
    #   tag on an Amazon Web Services Payment Cryptography key with the same
    #   tag key. If you specify an existing tag key with a different tag
    #   value, Amazon Web Services Payment Cryptography replaces the current
    #   tag value with the new one.
    #
    #   Don't include personal, confidential or sensitive information in this
    #   field. This field may be displayed in plaintext in CloudTrail logs and
    #   other output.
    #
    #   To use this parameter, you must have [TagResource][1] permission in an
    #   IAM policy.
    #
    #   Don't include personal, confidential or sensitive information in this
    #   field. This field may be displayed in plaintext in CloudTrail logs and
    #   other output.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_TagResource.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "ResourceArn", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-2021-09-14/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Deletes a tag from an Amazon Web Services Payment Cryptography key.
    #
    # <note markdown="1"> Tagging or untagging an Amazon Web Services Payment Cryptography key
    # can allow or deny permission to the key.
    #
    #  </note>
    #
    # **Cross-account use:** This operation can't be used across different
    # Amazon Web Services accounts.
    #
    # **Related operations:**
    #
    # * [ListTagsForResource][1]
    #
    # * [TagResource][2]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_ListTagsForResource.html
    # [2]: https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_TagResource.html
    #
    # @option params [required, String] :resource_arn
    #   The `KeyARN` of the key whose tags are being removed.
    #
    # @option params [required, Array<String>] :tag_keys
    #   One or more tag keys. Don't include the tag values.
    #
    #   If the Amazon Web Services Payment Cryptography key doesn't have the
    #   specified tag key, Amazon Web Services Payment Cryptography doesn't
    #   throw an exception or return a response. To confirm that the operation
    #   succeeded, use the [ListTagsForResource][1] operation.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_ListTagsForResource.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "ResourceArn", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-2021-09-14/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Associates an existing Amazon Web Services Payment Cryptography alias
    # with a different key. Each alias is associated with only one Amazon
    # Web Services Payment Cryptography key at a time, although a key can
    # have multiple aliases. The alias and the Amazon Web Services Payment
    # Cryptography key must be in the same Amazon Web Services account and
    # Amazon Web Services Region
    #
    # **Cross-account use:** This operation can't be used across different
    # Amazon Web Services accounts.
    #
    # **Related operations:**
    #
    # * [CreateAlias][1]
    #
    # * [DeleteAlias][2]
    #
    # * [GetAlias][3]
    #
    # * [ListAliases][4]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_CreateAlias.html
    # [2]: https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_DeleteAlias.html
    # [3]: https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_GetAlias.html
    # [4]: https://docs.aws.amazon.com/payment-cryptography/latest/APIReference/API_ListAliases.html
    #
    # @option params [required, String] :alias_name
    #   The alias whose associated key is changing.
    #
    # @option params [String] :key_arn
    #   The `KeyARN` for the key that you are updating or removing from the
    #   alias.
    #
    # @return [Types::UpdateAliasOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateAliasOutput#alias #alias} => Types::Alias
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_alias({
    #     alias_name: "AliasName", # required
    #     key_arn: "KeyArn",
    #   })
    #
    # @example Response structure
    #
    #   resp.alias.alias_name #=> String
    #   resp.alias.key_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payment-cryptography-2021-09-14/UpdateAlias AWS API Documentation
    #
    # @overload update_alias(params = {})
    # @param [Hash] params ({})
    def update_alias(params = {}, options = {})
      req = build_request(:update_alias, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::PaymentCryptography')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-paymentcryptography'
      context[:gem_version] = '1.45.0'
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
