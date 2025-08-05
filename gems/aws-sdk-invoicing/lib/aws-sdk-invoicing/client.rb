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

module Aws::Invoicing
  # An API client for Invoicing.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::Invoicing::Client.new(
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

    @identifier = :invoicing

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
    add_plugin(Aws::Invoicing::Plugins::Endpoints)

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
    #   @option options [Aws::Invoicing::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::Invoicing::EndpointParameters`.
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

    # This gets the invoice profile associated with a set of accounts. The
    # accounts must be linked accounts under the requester management
    # account organization.
    #
    # @option params [required, Array<String>] :account_ids
    #   Retrieves the corresponding invoice profile data for these account
    #   IDs.
    #
    # @return [Types::BatchGetInvoiceProfileResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchGetInvoiceProfileResponse#profiles #profiles} => Array&lt;Types::InvoiceProfile&gt;
    #
    #
    # @example Example: BatchGetInvoiceProfile
    #
    #   resp = client.batch_get_invoice_profile({
    #     account_ids: [
    #       "111111111111", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     profiles: [
    #       {
    #         account_id: "111111111111", 
    #         issuer: "Test", 
    #         receiver_address: {
    #           address_line_1: "Test", 
    #           city: "Test", 
    #           country_code: "LU", 
    #           postal_code: "Test", 
    #           state_or_region: "Test", 
    #         }, 
    #         receiver_email: "test@amazon.com", 
    #         receiver_name: "TestAccount", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_invoice_profile({
    #     account_ids: ["AccountIdString"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.profiles #=> Array
    #   resp.profiles[0].account_id #=> String
    #   resp.profiles[0].receiver_name #=> String
    #   resp.profiles[0].receiver_address.address_line_1 #=> String
    #   resp.profiles[0].receiver_address.address_line_2 #=> String
    #   resp.profiles[0].receiver_address.address_line_3 #=> String
    #   resp.profiles[0].receiver_address.district_or_county #=> String
    #   resp.profiles[0].receiver_address.city #=> String
    #   resp.profiles[0].receiver_address.state_or_region #=> String
    #   resp.profiles[0].receiver_address.country_code #=> String
    #   resp.profiles[0].receiver_address.company_name #=> String
    #   resp.profiles[0].receiver_address.postal_code #=> String
    #   resp.profiles[0].receiver_email #=> String
    #   resp.profiles[0].issuer #=> String
    #   resp.profiles[0].tax_registration_number #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/invoicing-2024-12-01/BatchGetInvoiceProfile AWS API Documentation
    #
    # @overload batch_get_invoice_profile(params = {})
    # @param [Hash] params ({})
    def batch_get_invoice_profile(params = {}, options = {})
      req = build_request(:batch_get_invoice_profile, params)
      req.send_request(options)
    end

    # This creates a new invoice unit with the provided definition.
    #
    # @option params [required, String] :name
    #   The unique name of the invoice unit that is shown on the generated
    #   invoice. This can't be changed once it is set. To change this name,
    #   you must delete the invoice unit recreate.
    #
    # @option params [required, String] :invoice_receiver
    #   The Amazon Web Services account ID chosen to be the receiver of an
    #   invoice unit. All invoices generated for that invoice unit will be
    #   sent to this account ID.
    #
    # @option params [String] :description
    #   The invoice unit's description. This can be changed at a later time.
    #
    # @option params [Boolean] :tax_inheritance_disabled
    #   Whether the invoice unit based tax inheritance is/ should be enabled
    #   or disabled.
    #
    # @option params [required, Types::InvoiceUnitRule] :rule
    #   The `InvoiceUnitRule` object used to create invoice units.
    #
    # @option params [Array<Types::ResourceTag>] :resource_tags
    #   The tag structure that contains a tag key and value.
    #
    # @return [Types::CreateInvoiceUnitResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateInvoiceUnitResponse#invoice_unit_arn #invoice_unit_arn} => String
    #
    #
    # @example Example: CreateInvoiceUnit
    #
    #   resp = client.create_invoice_unit({
    #     description: "Example Invoice Unit Description", 
    #     invoice_receiver: "111111111111", 
    #     name: "Example Invoice Unit", 
    #     resource_tags: [
    #       {
    #         key: "TagKey", 
    #         value: "TagValue", 
    #       }, 
    #     ], 
    #     rule: {
    #       linked_accounts: [
    #         "222222222222", 
    #       ], 
    #     }, 
    #     tax_inheritance_disabled: false, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     invoice_unit_arn: "arn:aws:invoicing::000000000000:invoice-unit/12345678", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_invoice_unit({
    #     name: "InvoiceUnitName", # required
    #     invoice_receiver: "AccountIdString", # required
    #     description: "DescriptionString",
    #     tax_inheritance_disabled: false,
    #     rule: { # required
    #       linked_accounts: ["AccountIdString"],
    #     },
    #     resource_tags: [
    #       {
    #         key: "ResourceTagKey", # required
    #         value: "ResourceTagValue", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.invoice_unit_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/invoicing-2024-12-01/CreateInvoiceUnit AWS API Documentation
    #
    # @overload create_invoice_unit(params = {})
    # @param [Hash] params ({})
    def create_invoice_unit(params = {}, options = {})
      req = build_request(:create_invoice_unit, params)
      req.send_request(options)
    end

    # This deletes an invoice unit with the provided invoice unit ARN.
    #
    # @option params [required, String] :invoice_unit_arn
    #   The ARN to identify an invoice unit. This information can't be
    #   modified or deleted.
    #
    # @return [Types::DeleteInvoiceUnitResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteInvoiceUnitResponse#invoice_unit_arn #invoice_unit_arn} => String
    #
    #
    # @example Example: DeleteInvoiceUnit
    #
    #   resp = client.delete_invoice_unit({
    #     invoice_unit_arn: "arn:aws:invoicing::000000000000:invoice-unit/12345678", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     invoice_unit_arn: "arn:aws:invoicing::000000000000:invoice-unit/12345678", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_invoice_unit({
    #     invoice_unit_arn: "InvoiceUnitArnString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.invoice_unit_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/invoicing-2024-12-01/DeleteInvoiceUnit AWS API Documentation
    #
    # @overload delete_invoice_unit(params = {})
    # @param [Hash] params ({})
    def delete_invoice_unit(params = {}, options = {})
      req = build_request(:delete_invoice_unit, params)
      req.send_request(options)
    end

    # This retrieves the invoice unit definition.
    #
    # @option params [required, String] :invoice_unit_arn
    #   The ARN to identify an invoice unit. This information can't be
    #   modified or deleted.
    #
    # @option params [Time,DateTime,Date,Integer,String] :as_of
    #   The state of an invoice unit at a specified time. You can see legacy
    #   invoice units that are currently deleted if the `AsOf` time is set to
    #   before it was deleted. If an `AsOf` is not provided, the default value
    #   is the current time.
    #
    # @return [Types::GetInvoiceUnitResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetInvoiceUnitResponse#invoice_unit_arn #invoice_unit_arn} => String
    #   * {Types::GetInvoiceUnitResponse#invoice_receiver #invoice_receiver} => String
    #   * {Types::GetInvoiceUnitResponse#name #name} => String
    #   * {Types::GetInvoiceUnitResponse#description #description} => String
    #   * {Types::GetInvoiceUnitResponse#tax_inheritance_disabled #tax_inheritance_disabled} => Boolean
    #   * {Types::GetInvoiceUnitResponse#rule #rule} => Types::InvoiceUnitRule
    #   * {Types::GetInvoiceUnitResponse#last_modified #last_modified} => Time
    #
    #
    # @example Example: GetInvoiceUnit as of current time
    #
    #   resp = client.get_invoice_unit({
    #     invoice_unit_arn: "arn:aws:invoicing::000000000000:invoice-unit/12345678", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     description: "Description changed on 1733788800", 
    #     invoice_receiver: "111111111111", 
    #     invoice_unit_arn: "arn:aws:invoicing::000000000000:invoice-unit/12345678", 
    #     last_modified: Time.parse(1733788800), 
    #     name: "Example Invoice Unit A", 
    #     rule: {
    #       linked_accounts: [
    #         "222222222222", 
    #       ], 
    #     }, 
    #     tax_inheritance_disabled: false, 
    #   }
    #
    # @example Example: GetInvoiceUnit as of specified time
    #
    #   resp = client.get_invoice_unit({
    #     as_of: Time.parse(1733097600), 
    #     invoice_unit_arn: "arn:aws:invoicing::000000000000:invoice-unit/87654321", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     description: "Description changed on 1733011200", 
    #     invoice_receiver: "333333333333", 
    #     invoice_unit_arn: "arn:aws:invoicing::000000000000:invoice-unit/87654321", 
    #     last_modified: Time.parse(1733011200), 
    #     name: "Example Invoice Unit B", 
    #     rule: {
    #       linked_accounts: [
    #         "333333333333", 
    #       ], 
    #     }, 
    #     tax_inheritance_disabled: false, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_invoice_unit({
    #     invoice_unit_arn: "InvoiceUnitArnString", # required
    #     as_of: Time.now,
    #   })
    #
    # @example Response structure
    #
    #   resp.invoice_unit_arn #=> String
    #   resp.invoice_receiver #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.tax_inheritance_disabled #=> Boolean
    #   resp.rule.linked_accounts #=> Array
    #   resp.rule.linked_accounts[0] #=> String
    #   resp.last_modified #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/invoicing-2024-12-01/GetInvoiceUnit AWS API Documentation
    #
    # @overload get_invoice_unit(params = {})
    # @param [Hash] params ({})
    def get_invoice_unit(params = {}, options = {})
      req = build_request(:get_invoice_unit, params)
      req.send_request(options)
    end

    # Retrieves your invoice details programmatically, without line item
    # details.
    #
    # @option params [required, Types::InvoiceSummariesSelector] :selector
    #   The option to retrieve details for a specific invoice by providing its
    #   unique ID. Alternatively, access information for all invoices linked
    #   to the account by providing an account ID.
    #
    # @option params [Types::InvoiceSummariesFilter] :filter
    #   Filters you can use to customize your invoice summary.
    #
    # @option params [String] :next_token
    #   The token to retrieve the next set of results. Amazon Web Services
    #   provides the token when the response from a previous call has more
    #   results than the maximum page size.
    #
    # @option params [Integer] :max_results
    #   The maximum number of invoice summaries a paginated response can
    #   contain.
    #
    # @return [Types::ListInvoiceSummariesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListInvoiceSummariesResponse#invoice_summaries #invoice_summaries} => Array&lt;Types::InvoiceSummary&gt;
    #   * {Types::ListInvoiceSummariesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: ListInvoiceSummaries with InvoiceId as selector
    #
    #   resp = client.list_invoice_summaries({
    #     selector: {
    #       resource_type: "INVOICE_ID", 
    #       value: "1111111111", 
    #     }, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     invoice_summaries: [
    #       {
    #         account_id: "111111111111", 
    #         base_currency_amount: {
    #           amount_breakdown: {
    #             discounts: {
    #               total_amount: "1.00", 
    #             }, 
    #             sub_total_amount: "1.00", 
    #             taxes: {
    #               total_amount: "1.00", 
    #             }, 
    #           }, 
    #           currency_code: "USD", 
    #           total_amount: "1.00", 
    #           total_amount_before_tax: "1.00", 
    #         }, 
    #         billing_period: {
    #           month: 1, 
    #           year: 2025, 
    #         }, 
    #         due_date: Time.parse("2025-04-01T01:00:00.000Z"), 
    #         entity: {
    #           invoicing_entity: "Amazon Web Services, Inc.", 
    #         }, 
    #         invoice_id: "1111111111", 
    #         invoice_type: "INVOICE", 
    #         issued_date: Time.parse("2025-04-01T01:00:00.000Z"), 
    #         payment_currency_amount: {
    #           amount_breakdown: {
    #             discounts: {
    #               total_amount: "1.00", 
    #             }, 
    #             sub_total_amount: "1.00", 
    #             taxes: {
    #               breakdown: [
    #                 {
    #                   amount: "1", 
    #                   description: "VAT", 
    #                   rate: "1.0", 
    #                 }, 
    #               ], 
    #               total_amount: "1.00", 
    #             }, 
    #           }, 
    #           currency_code: "USD", 
    #           currency_exchange_details: {
    #             rate: "1.0", 
    #             source_currency_code: "USD", 
    #             target_currency_code: "USD", 
    #           }, 
    #           total_amount: "1.00", 
    #           total_amount_before_tax: "1.00", 
    #         }, 
    #         tax_currency_amount: {
    #           amount_breakdown: {
    #             discounts: {
    #               total_amount: "1.00", 
    #             }, 
    #             sub_total_amount: "1.00", 
    #             taxes: {
    #               breakdown: [
    #                 {
    #                   amount: "1", 
    #                   description: "VAT", 
    #                   rate: "1.0", 
    #                 }, 
    #               ], 
    #               total_amount: "1.00", 
    #             }, 
    #           }, 
    #           currency_code: "USD", 
    #           currency_exchange_details: {
    #             rate: "1.0", 
    #             source_currency_code: "USD", 
    #             target_currency_code: "USD", 
    #           }, 
    #           total_amount: "1.00", 
    #           total_amount_before_tax: "1.00", 
    #         }, 
    #       }, 
    #     ], 
    #   }
    #
    # @example Example: ListInvoiceSummaries with AccountId as selector and billing period
    #
    #   resp = client.list_invoice_summaries({
    #     filter: {
    #       billing_period: {
    #         month: 1, 
    #         year: 2025, 
    #       }, 
    #     }, 
    #     selector: {
    #       resource_type: "ACCOUNT_ID", 
    #       value: "111111111111", 
    #     }, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     invoice_summaries: [
    #       {
    #         account_id: "111111111111", 
    #         base_currency_amount: {
    #           amount_breakdown: {
    #             discounts: {
    #               total_amount: "1.00", 
    #             }, 
    #             sub_total_amount: "1.00", 
    #             taxes: {
    #               total_amount: "1.00", 
    #             }, 
    #           }, 
    #           currency_code: "USD", 
    #           total_amount: "1.00", 
    #           total_amount_before_tax: "1.00", 
    #         }, 
    #         billing_period: {
    #           month: 1, 
    #           year: 2025, 
    #         }, 
    #         due_date: Time.parse("2025-04-01T01:00:00.000Z"), 
    #         entity: {
    #           invoicing_entity: "Amazon Web Services, Inc.", 
    #         }, 
    #         invoice_id: "1111111111", 
    #         invoice_type: "INVOICE", 
    #         issued_date: Time.parse("2025-04-01T01:00:00.000Z"), 
    #         payment_currency_amount: {
    #           amount_breakdown: {
    #             discounts: {
    #               total_amount: "1.00", 
    #             }, 
    #             sub_total_amount: "1.00", 
    #             taxes: {
    #               breakdown: [
    #                 {
    #                   amount: "1", 
    #                   description: "VAT", 
    #                   rate: "1.0", 
    #                 }, 
    #               ], 
    #               total_amount: "1.00", 
    #             }, 
    #           }, 
    #           currency_code: "USD", 
    #           currency_exchange_details: {
    #             rate: "1.0", 
    #             source_currency_code: "USD", 
    #             target_currency_code: "USD", 
    #           }, 
    #           total_amount: "1.00", 
    #           total_amount_before_tax: "1.00", 
    #         }, 
    #         tax_currency_amount: {
    #           amount_breakdown: {
    #             discounts: {
    #               total_amount: "1.00", 
    #             }, 
    #             sub_total_amount: "1.00", 
    #             taxes: {
    #               breakdown: [
    #                 {
    #                   amount: "1", 
    #                   description: "VAT", 
    #                   rate: "1.0", 
    #                 }, 
    #               ], 
    #               total_amount: "1.00", 
    #             }, 
    #           }, 
    #           currency_code: "USD", 
    #           currency_exchange_details: {
    #             rate: "1.0", 
    #             source_currency_code: "USD", 
    #             target_currency_code: "USD", 
    #           }, 
    #           total_amount: "1.00", 
    #           total_amount_before_tax: "1.00", 
    #         }, 
    #       }, 
    #     ], 
    #   }
    #
    # @example Example: ListInvoiceSummaries with AccountId as selector and time interval
    #
    #   resp = client.list_invoice_summaries({
    #     filter: {
    #       time_interval: {
    #         end_date: Time.parse(1592639007), 
    #         start_date: Time.parse(1590997407), 
    #       }, 
    #     }, 
    #     selector: {
    #       resource_type: "ACCOUNT_ID", 
    #       value: "111111111111", 
    #     }, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     invoice_summaries: [
    #       {
    #         account_id: "111111111111", 
    #         base_currency_amount: {
    #           amount_breakdown: {
    #             discounts: {
    #               total_amount: "1.00", 
    #             }, 
    #             sub_total_amount: "1.00", 
    #             taxes: {
    #               total_amount: "1.00", 
    #             }, 
    #           }, 
    #           currency_code: "USD", 
    #           total_amount: "1.00", 
    #           total_amount_before_tax: "1.00", 
    #         }, 
    #         billing_period: {
    #           month: 1, 
    #           year: 2025, 
    #         }, 
    #         due_date: Time.parse("2025-04-01T01:00:00.000Z"), 
    #         entity: {
    #           invoicing_entity: "Amazon Web Services, Inc.", 
    #         }, 
    #         invoice_id: "1111111111", 
    #         invoice_type: "INVOICE", 
    #         issued_date: Time.parse("2025-04-01T01:00:00.000Z"), 
    #         payment_currency_amount: {
    #           amount_breakdown: {
    #             discounts: {
    #               total_amount: "1.00", 
    #             }, 
    #             sub_total_amount: "1.00", 
    #             taxes: {
    #               breakdown: [
    #                 {
    #                   amount: "1", 
    #                   description: "VAT", 
    #                   rate: "1.0", 
    #                 }, 
    #               ], 
    #               total_amount: "1.00", 
    #             }, 
    #           }, 
    #           currency_code: "USD", 
    #           currency_exchange_details: {
    #             rate: "1.0", 
    #             source_currency_code: "USD", 
    #             target_currency_code: "USD", 
    #           }, 
    #           total_amount: "1.00", 
    #           total_amount_before_tax: "1.00", 
    #         }, 
    #         tax_currency_amount: {
    #           amount_breakdown: {
    #             discounts: {
    #               total_amount: "1.00", 
    #             }, 
    #             sub_total_amount: "1.00", 
    #             taxes: {
    #               breakdown: [
    #                 {
    #                   amount: "1", 
    #                   description: "VAT", 
    #                   rate: "1.0", 
    #                 }, 
    #               ], 
    #               total_amount: "1.00", 
    #             }, 
    #           }, 
    #           currency_code: "USD", 
    #           currency_exchange_details: {
    #             rate: "1.0", 
    #             source_currency_code: "USD", 
    #             target_currency_code: "USD", 
    #           }, 
    #           total_amount: "1.00", 
    #           total_amount_before_tax: "1.00", 
    #         }, 
    #       }, 
    #     ], 
    #   }
    #
    # @example Example: ListInvoiceSummaries with AccountId as selector and a billing period and max results
    #
    #   resp = client.list_invoice_summaries({
    #     filter: {
    #       billing_period: {
    #         month: 1, 
    #         year: 2025, 
    #       }, 
    #     }, 
    #     max_results: 1, 
    #     selector: {
    #       resource_type: "ACCOUNT_ID", 
    #       value: "111111111111", 
    #     }, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     invoice_summaries: [
    #       {
    #         account_id: "111111111111", 
    #         base_currency_amount: {
    #           amount_breakdown: {
    #             discounts: {
    #               total_amount: "1.00", 
    #             }, 
    #             sub_total_amount: "1.00", 
    #             taxes: {
    #               total_amount: "1.00", 
    #             }, 
    #           }, 
    #           currency_code: "USD", 
    #           total_amount: "1.00", 
    #           total_amount_before_tax: "1.00", 
    #         }, 
    #         billing_period: {
    #           month: 1, 
    #           year: 2025, 
    #         }, 
    #         due_date: Time.parse("2025-04-01T01:00:00.000Z"), 
    #         entity: {
    #           invoicing_entity: "Amazon Web Services, Inc.", 
    #         }, 
    #         invoice_id: "1111111111", 
    #         invoice_type: "INVOICE", 
    #         issued_date: Time.parse("2025-04-01T01:00:00.000Z"), 
    #         payment_currency_amount: {
    #           amount_breakdown: {
    #             discounts: {
    #               total_amount: "1.00", 
    #             }, 
    #             sub_total_amount: "1.00", 
    #             taxes: {
    #               breakdown: [
    #                 {
    #                   amount: "1", 
    #                   description: "VAT", 
    #                   rate: "1.0", 
    #                 }, 
    #               ], 
    #               total_amount: "1.00", 
    #             }, 
    #           }, 
    #           currency_code: "USD", 
    #           currency_exchange_details: {
    #             rate: "1.0", 
    #             source_currency_code: "USD", 
    #             target_currency_code: "USD", 
    #           }, 
    #           total_amount: "1.00", 
    #           total_amount_before_tax: "1.00", 
    #         }, 
    #         tax_currency_amount: {
    #           amount_breakdown: {
    #             discounts: {
    #               total_amount: "1.00", 
    #             }, 
    #             sub_total_amount: "1.00", 
    #             taxes: {
    #               breakdown: [
    #                 {
    #                   amount: "1", 
    #                   description: "VAT", 
    #                   rate: "1.0", 
    #                 }, 
    #               ], 
    #               total_amount: "1.00", 
    #             }, 
    #           }, 
    #           currency_code: "USD", 
    #           currency_exchange_details: {
    #             rate: "1.0", 
    #             source_currency_code: "USD", 
    #             target_currency_code: "USD", 
    #           }, 
    #           total_amount: "1.00", 
    #           total_amount_before_tax: "1.00", 
    #         }, 
    #       }, 
    #     ], 
    #     next_token: "abcde12345", 
    #   }
    #
    # @example Example: ListInvoiceSummaries with AccountId as selector and a billing period and next token
    #
    #   resp = client.list_invoice_summaries({
    #     filter: {
    #       billing_period: {
    #         month: 1, 
    #         year: 2025, 
    #       }, 
    #     }, 
    #     next_token: "abcde12345", 
    #     selector: {
    #       resource_type: "ACCOUNT_ID", 
    #       value: "111111111111", 
    #     }, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     invoice_summaries: [
    #       {
    #         account_id: "111111111111", 
    #         base_currency_amount: {
    #           amount_breakdown: {
    #             discounts: {
    #               total_amount: "1.00", 
    #             }, 
    #             sub_total_amount: "1.00", 
    #             taxes: {
    #               total_amount: "1.00", 
    #             }, 
    #           }, 
    #           currency_code: "USD", 
    #           total_amount: "1.00", 
    #           total_amount_before_tax: "1.00", 
    #         }, 
    #         billing_period: {
    #           month: 1, 
    #           year: 2025, 
    #         }, 
    #         due_date: Time.parse("2025-04-01T01:00:00.000Z"), 
    #         entity: {
    #           invoicing_entity: "Amazon Web Services, Inc.", 
    #         }, 
    #         invoice_id: "1111111111", 
    #         invoice_type: "INVOICE", 
    #         issued_date: Time.parse("2025-04-01T01:00:00.000Z"), 
    #         payment_currency_amount: {
    #           amount_breakdown: {
    #             discounts: {
    #               total_amount: "1.00", 
    #             }, 
    #             sub_total_amount: "1.00", 
    #             taxes: {
    #               breakdown: [
    #                 {
    #                   amount: "1", 
    #                   description: "VAT", 
    #                   rate: "1.0", 
    #                 }, 
    #               ], 
    #               total_amount: "1.00", 
    #             }, 
    #           }, 
    #           currency_code: "USD", 
    #           currency_exchange_details: {
    #             rate: "1.0", 
    #             source_currency_code: "USD", 
    #             target_currency_code: "USD", 
    #           }, 
    #           total_amount: "1.00", 
    #           total_amount_before_tax: "1.00", 
    #         }, 
    #         tax_currency_amount: {
    #           amount_breakdown: {
    #             discounts: {
    #               total_amount: "1.00", 
    #             }, 
    #             sub_total_amount: "1.00", 
    #             taxes: {
    #               breakdown: [
    #                 {
    #                   amount: "1", 
    #                   description: "VAT", 
    #                   rate: "1.0", 
    #                 }, 
    #               ], 
    #               total_amount: "1.00", 
    #             }, 
    #           }, 
    #           currency_code: "USD", 
    #           currency_exchange_details: {
    #             rate: "1.0", 
    #             source_currency_code: "USD", 
    #             target_currency_code: "USD", 
    #           }, 
    #           total_amount: "1.00", 
    #           total_amount_before_tax: "1.00", 
    #         }, 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_invoice_summaries({
    #     selector: { # required
    #       resource_type: "ACCOUNT_ID", # required, accepts ACCOUNT_ID, INVOICE_ID
    #       value: "StringWithoutNewLine", # required
    #     },
    #     filter: {
    #       time_interval: {
    #         start_date: Time.now, # required
    #         end_date: Time.now, # required
    #       },
    #       billing_period: {
    #         month: 1, # required
    #         year: 1, # required
    #       },
    #       invoicing_entity: "BasicString",
    #     },
    #     next_token: "NextTokenString",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.invoice_summaries #=> Array
    #   resp.invoice_summaries[0].account_id #=> String
    #   resp.invoice_summaries[0].invoice_id #=> String
    #   resp.invoice_summaries[0].issued_date #=> Time
    #   resp.invoice_summaries[0].due_date #=> Time
    #   resp.invoice_summaries[0].entity.invoicing_entity #=> String
    #   resp.invoice_summaries[0].billing_period.month #=> Integer
    #   resp.invoice_summaries[0].billing_period.year #=> Integer
    #   resp.invoice_summaries[0].invoice_type #=> String, one of "INVOICE", "CREDIT_MEMO"
    #   resp.invoice_summaries[0].original_invoice_id #=> String
    #   resp.invoice_summaries[0].purchase_order_number #=> String
    #   resp.invoice_summaries[0].base_currency_amount.total_amount #=> String
    #   resp.invoice_summaries[0].base_currency_amount.total_amount_before_tax #=> String
    #   resp.invoice_summaries[0].base_currency_amount.currency_code #=> String
    #   resp.invoice_summaries[0].base_currency_amount.amount_breakdown.sub_total_amount #=> String
    #   resp.invoice_summaries[0].base_currency_amount.amount_breakdown.discounts.breakdown #=> Array
    #   resp.invoice_summaries[0].base_currency_amount.amount_breakdown.discounts.breakdown[0].description #=> String
    #   resp.invoice_summaries[0].base_currency_amount.amount_breakdown.discounts.breakdown[0].amount #=> String
    #   resp.invoice_summaries[0].base_currency_amount.amount_breakdown.discounts.breakdown[0].rate #=> String
    #   resp.invoice_summaries[0].base_currency_amount.amount_breakdown.discounts.total_amount #=> String
    #   resp.invoice_summaries[0].base_currency_amount.amount_breakdown.taxes.breakdown #=> Array
    #   resp.invoice_summaries[0].base_currency_amount.amount_breakdown.taxes.breakdown[0].description #=> String
    #   resp.invoice_summaries[0].base_currency_amount.amount_breakdown.taxes.breakdown[0].amount #=> String
    #   resp.invoice_summaries[0].base_currency_amount.amount_breakdown.taxes.breakdown[0].rate #=> String
    #   resp.invoice_summaries[0].base_currency_amount.amount_breakdown.taxes.total_amount #=> String
    #   resp.invoice_summaries[0].base_currency_amount.amount_breakdown.fees.breakdown #=> Array
    #   resp.invoice_summaries[0].base_currency_amount.amount_breakdown.fees.breakdown[0].description #=> String
    #   resp.invoice_summaries[0].base_currency_amount.amount_breakdown.fees.breakdown[0].amount #=> String
    #   resp.invoice_summaries[0].base_currency_amount.amount_breakdown.fees.breakdown[0].rate #=> String
    #   resp.invoice_summaries[0].base_currency_amount.amount_breakdown.fees.total_amount #=> String
    #   resp.invoice_summaries[0].base_currency_amount.currency_exchange_details.source_currency_code #=> String
    #   resp.invoice_summaries[0].base_currency_amount.currency_exchange_details.target_currency_code #=> String
    #   resp.invoice_summaries[0].base_currency_amount.currency_exchange_details.rate #=> String
    #   resp.invoice_summaries[0].tax_currency_amount.total_amount #=> String
    #   resp.invoice_summaries[0].tax_currency_amount.total_amount_before_tax #=> String
    #   resp.invoice_summaries[0].tax_currency_amount.currency_code #=> String
    #   resp.invoice_summaries[0].tax_currency_amount.amount_breakdown.sub_total_amount #=> String
    #   resp.invoice_summaries[0].tax_currency_amount.amount_breakdown.discounts.breakdown #=> Array
    #   resp.invoice_summaries[0].tax_currency_amount.amount_breakdown.discounts.breakdown[0].description #=> String
    #   resp.invoice_summaries[0].tax_currency_amount.amount_breakdown.discounts.breakdown[0].amount #=> String
    #   resp.invoice_summaries[0].tax_currency_amount.amount_breakdown.discounts.breakdown[0].rate #=> String
    #   resp.invoice_summaries[0].tax_currency_amount.amount_breakdown.discounts.total_amount #=> String
    #   resp.invoice_summaries[0].tax_currency_amount.amount_breakdown.taxes.breakdown #=> Array
    #   resp.invoice_summaries[0].tax_currency_amount.amount_breakdown.taxes.breakdown[0].description #=> String
    #   resp.invoice_summaries[0].tax_currency_amount.amount_breakdown.taxes.breakdown[0].amount #=> String
    #   resp.invoice_summaries[0].tax_currency_amount.amount_breakdown.taxes.breakdown[0].rate #=> String
    #   resp.invoice_summaries[0].tax_currency_amount.amount_breakdown.taxes.total_amount #=> String
    #   resp.invoice_summaries[0].tax_currency_amount.amount_breakdown.fees.breakdown #=> Array
    #   resp.invoice_summaries[0].tax_currency_amount.amount_breakdown.fees.breakdown[0].description #=> String
    #   resp.invoice_summaries[0].tax_currency_amount.amount_breakdown.fees.breakdown[0].amount #=> String
    #   resp.invoice_summaries[0].tax_currency_amount.amount_breakdown.fees.breakdown[0].rate #=> String
    #   resp.invoice_summaries[0].tax_currency_amount.amount_breakdown.fees.total_amount #=> String
    #   resp.invoice_summaries[0].tax_currency_amount.currency_exchange_details.source_currency_code #=> String
    #   resp.invoice_summaries[0].tax_currency_amount.currency_exchange_details.target_currency_code #=> String
    #   resp.invoice_summaries[0].tax_currency_amount.currency_exchange_details.rate #=> String
    #   resp.invoice_summaries[0].payment_currency_amount.total_amount #=> String
    #   resp.invoice_summaries[0].payment_currency_amount.total_amount_before_tax #=> String
    #   resp.invoice_summaries[0].payment_currency_amount.currency_code #=> String
    #   resp.invoice_summaries[0].payment_currency_amount.amount_breakdown.sub_total_amount #=> String
    #   resp.invoice_summaries[0].payment_currency_amount.amount_breakdown.discounts.breakdown #=> Array
    #   resp.invoice_summaries[0].payment_currency_amount.amount_breakdown.discounts.breakdown[0].description #=> String
    #   resp.invoice_summaries[0].payment_currency_amount.amount_breakdown.discounts.breakdown[0].amount #=> String
    #   resp.invoice_summaries[0].payment_currency_amount.amount_breakdown.discounts.breakdown[0].rate #=> String
    #   resp.invoice_summaries[0].payment_currency_amount.amount_breakdown.discounts.total_amount #=> String
    #   resp.invoice_summaries[0].payment_currency_amount.amount_breakdown.taxes.breakdown #=> Array
    #   resp.invoice_summaries[0].payment_currency_amount.amount_breakdown.taxes.breakdown[0].description #=> String
    #   resp.invoice_summaries[0].payment_currency_amount.amount_breakdown.taxes.breakdown[0].amount #=> String
    #   resp.invoice_summaries[0].payment_currency_amount.amount_breakdown.taxes.breakdown[0].rate #=> String
    #   resp.invoice_summaries[0].payment_currency_amount.amount_breakdown.taxes.total_amount #=> String
    #   resp.invoice_summaries[0].payment_currency_amount.amount_breakdown.fees.breakdown #=> Array
    #   resp.invoice_summaries[0].payment_currency_amount.amount_breakdown.fees.breakdown[0].description #=> String
    #   resp.invoice_summaries[0].payment_currency_amount.amount_breakdown.fees.breakdown[0].amount #=> String
    #   resp.invoice_summaries[0].payment_currency_amount.amount_breakdown.fees.breakdown[0].rate #=> String
    #   resp.invoice_summaries[0].payment_currency_amount.amount_breakdown.fees.total_amount #=> String
    #   resp.invoice_summaries[0].payment_currency_amount.currency_exchange_details.source_currency_code #=> String
    #   resp.invoice_summaries[0].payment_currency_amount.currency_exchange_details.target_currency_code #=> String
    #   resp.invoice_summaries[0].payment_currency_amount.currency_exchange_details.rate #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/invoicing-2024-12-01/ListInvoiceSummaries AWS API Documentation
    #
    # @overload list_invoice_summaries(params = {})
    # @param [Hash] params ({})
    def list_invoice_summaries(params = {}, options = {})
      req = build_request(:list_invoice_summaries, params)
      req.send_request(options)
    end

    # This fetches a list of all invoice unit definitions for a given
    # account, as of the provided `AsOf` date.
    #
    # @option params [Types::Filters] :filters
    #   An optional input to the list API. If multiple filters are specified,
    #   the returned list will be a configuration that match all of the
    #   provided filters. Supported filter types are `InvoiceReceivers`,
    #   `Names`, and `Accounts`.
    #
    # @option params [String] :next_token
    #   The next token used to indicate where the returned list should start
    #   from.
    #
    # @option params [Integer] :max_results
    #   The maximum number of invoice units that can be returned.
    #
    # @option params [Time,DateTime,Date,Integer,String] :as_of
    #   The state of an invoice unit at a specified time. You can see legacy
    #   invoice units that are currently deleted if the `AsOf` time is set to
    #   before it was deleted. If an `AsOf` is not provided, the default value
    #   is the current time.
    #
    # @return [Types::ListInvoiceUnitsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListInvoiceUnitsResponse#invoice_units #invoice_units} => Array&lt;Types::InvoiceUnit&gt;
    #   * {Types::ListInvoiceUnitsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: ListInvoiceUnits without filters as of current time
    #
    #   resp = client.list_invoice_units({
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     invoice_units: [
    #       {
    #         description: "Description changed on 1733788800", 
    #         invoice_receiver: "111111111111", 
    #         invoice_unit_arn: "arn:aws:invoicing::000000000000:invoice-unit/12345678", 
    #         last_modified: Time.parse(1733788800), 
    #         name: "Example Invoice Unit A", 
    #         rule: {
    #           linked_accounts: [
    #             "222222222222", 
    #           ], 
    #         }, 
    #         tax_inheritance_disabled: false, 
    #       }, 
    #       {
    #         description: "Description changed on 1733788800", 
    #         invoice_receiver: "333333333333", 
    #         invoice_unit_arn: "arn:aws:invoicing::000000000000:invoice-unit/87654321", 
    #         last_modified: Time.parse(1733788800), 
    #         name: "Example Invoice Unit B", 
    #         rule: {
    #           linked_accounts: [
    #             "333333333333", 
    #           ], 
    #         }, 
    #         tax_inheritance_disabled: true, 
    #       }, 
    #     ], 
    #   }
    #
    # @example Example: ListInvoiceUnits with filters as of specified time
    #
    #   resp = client.list_invoice_units({
    #     as_of: Time.parse(1733097600), 
    #     filters: {
    #       invoice_receivers: [
    #         "333333333333", 
    #       ], 
    #     }, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     invoice_units: [
    #       {
    #         description: "Description changed on 1733011200", 
    #         invoice_receiver: "333333333333", 
    #         invoice_unit_arn: "arn:aws:invoicing::000000000000:invoice-unit/87654321", 
    #         last_modified: Time.parse(1733011200), 
    #         name: "Example Invoice Unit B", 
    #         rule: {
    #           linked_accounts: [
    #             "333333333333", 
    #           ], 
    #         }, 
    #         tax_inheritance_disabled: false, 
    #       }, 
    #     ], 
    #   }
    #
    # @example Example: ListInvoiceUnits with pagination - first page
    #
    #   resp = client.list_invoice_units({
    #     max_results: 1, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     invoice_units: [
    #       {
    #         description: "Description changed on 1733788800", 
    #         invoice_receiver: "111111111111", 
    #         invoice_unit_arn: "arn:aws:invoicing::000000000000:invoice-unit/12345678", 
    #         last_modified: Time.parse(1733788800), 
    #         name: "Example Invoice Unit A", 
    #         rule: {
    #           linked_accounts: [
    #             "222222222222", 
    #           ], 
    #         }, 
    #         tax_inheritance_disabled: false, 
    #       }, 
    #     ], 
    #     next_token: "nextTokenExample", 
    #   }
    #
    # @example Example: ListInvoiceUnits with pagination - second page
    #
    #   resp = client.list_invoice_units({
    #     max_results: 1, 
    #     next_token: "nextTokenExample", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     invoice_units: [
    #       {
    #         description: "Description changed on 1733788800", 
    #         invoice_receiver: "333333333333", 
    #         invoice_unit_arn: "arn:aws:invoicing::000000000000:invoice-unit/87654321", 
    #         last_modified: Time.parse(1733788800), 
    #         name: "Example Invoice Unit B", 
    #         rule: {
    #           linked_accounts: [
    #             "333333333333", 
    #           ], 
    #         }, 
    #         tax_inheritance_disabled: true, 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_invoice_units({
    #     filters: {
    #       names: ["InvoiceUnitName"],
    #       invoice_receivers: ["AccountIdString"],
    #       accounts: ["AccountIdString"],
    #     },
    #     next_token: "NextTokenString",
    #     max_results: 1,
    #     as_of: Time.now,
    #   })
    #
    # @example Response structure
    #
    #   resp.invoice_units #=> Array
    #   resp.invoice_units[0].invoice_unit_arn #=> String
    #   resp.invoice_units[0].invoice_receiver #=> String
    #   resp.invoice_units[0].name #=> String
    #   resp.invoice_units[0].description #=> String
    #   resp.invoice_units[0].tax_inheritance_disabled #=> Boolean
    #   resp.invoice_units[0].rule.linked_accounts #=> Array
    #   resp.invoice_units[0].rule.linked_accounts[0] #=> String
    #   resp.invoice_units[0].last_modified #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/invoicing-2024-12-01/ListInvoiceUnits AWS API Documentation
    #
    # @overload list_invoice_units(params = {})
    # @param [Hash] params ({})
    def list_invoice_units(params = {}, options = {})
      req = build_request(:list_invoice_units, params)
      req.send_request(options)
    end

    # Lists the tags for a resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of tags to list.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#resource_tags #resource_tags} => Array&lt;Types::ResourceTag&gt;
    #
    #
    # @example Example: ListTagsForResource
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "arn:aws:invoicing::000000000000:invoice-unit/12345678", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     resource_tags: [
    #       {
    #         key: "TagKey", 
    #         value: "TagValue", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "TagrisArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_tags #=> Array
    #   resp.resource_tags[0].key #=> String
    #   resp.resource_tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/invoicing-2024-12-01/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Adds a tag to a resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the tags.
    #
    # @option params [required, Array<Types::ResourceTag>] :resource_tags
    #   Adds a tag to a resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: TagResource
    #
    #   resp = client.tag_resource({
    #     resource_arn: "arn:aws:invoicing::000000000000:invoice-unit/12345678", 
    #     resource_tags: [
    #       {
    #         key: "TagKey", 
    #         value: "TagValue", 
    #       }, 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "TagrisArn", # required
    #     resource_tags: [ # required
    #       {
    #         key: "ResourceTagKey", # required
    #         value: "ResourceTagValue", # required
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/invoicing-2024-12-01/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes a tag from a resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) to untag.
    #
    # @option params [required, Array<String>] :resource_tag_keys
    #   Keys for the tags to be removed.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: UntagResource
    #
    #   resp = client.untag_resource({
    #     resource_arn: "arn:aws:invoicing::000000000000:invoice-unit/12345678", 
    #     resource_tag_keys: [
    #       "TagKey", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "TagrisArn", # required
    #     resource_tag_keys: ["ResourceTagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/invoicing-2024-12-01/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # You can update the invoice unit configuration at any time, and Amazon
    # Web Services will use the latest configuration at the end of the
    # month.
    #
    # @option params [required, String] :invoice_unit_arn
    #   The ARN to identify an invoice unit. This information can't be
    #   modified or deleted.
    #
    # @option params [String] :description
    #   The assigned description for an invoice unit. This information can't
    #   be modified or deleted.
    #
    # @option params [Boolean] :tax_inheritance_disabled
    #   Whether the invoice unit based tax inheritance is/ should be enabled
    #   or disabled.
    #
    # @option params [Types::InvoiceUnitRule] :rule
    #   The `InvoiceUnitRule` object used to update invoice units.
    #
    # @return [Types::UpdateInvoiceUnitResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateInvoiceUnitResponse#invoice_unit_arn #invoice_unit_arn} => String
    #
    #
    # @example Example: UpdateInvoiceUnit with all updatable fields
    #
    #   resp = client.update_invoice_unit({
    #     description: "Updated IU description", 
    #     invoice_unit_arn: "arn:aws:invoicing::000000000000:invoice-unit/12345678", 
    #     rule: {
    #       linked_accounts: [
    #         "111111111111", 
    #         "222222222222", 
    #       ], 
    #     }, 
    #     tax_inheritance_disabled: false, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     invoice_unit_arn: "arn:aws:invoicing::000000000000:invoice-unit/12345678", 
    #   }
    #
    # @example Example: UpdateInvoiceUnit with specific fields
    #
    #   resp = client.update_invoice_unit({
    #     description: "Updated IU description. All other fields remain unchanged", 
    #     invoice_unit_arn: "arn:aws:invoicing::000000000000:invoice-unit/12345678", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     invoice_unit_arn: "arn:aws:invoicing::000000000000:invoice-unit/12345678", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_invoice_unit({
    #     invoice_unit_arn: "InvoiceUnitArnString", # required
    #     description: "DescriptionString",
    #     tax_inheritance_disabled: false,
    #     rule: {
    #       linked_accounts: ["AccountIdString"],
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.invoice_unit_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/invoicing-2024-12-01/UpdateInvoiceUnit AWS API Documentation
    #
    # @overload update_invoice_unit(params = {})
    # @param [Hash] params ({})
    def update_invoice_unit(params = {}, options = {})
      req = build_request(:update_invoice_unit, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::Invoicing')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-invoicing'
      context[:gem_version] = '1.10.0'
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
