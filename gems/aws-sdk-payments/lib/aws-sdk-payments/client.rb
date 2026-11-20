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

module Aws::Payments
  # An API client for Payments.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::Payments::Client.new(
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

    @identifier = :payments

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
    add_plugin(Aws::Payments::Plugins::Endpoints)

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
    #     Used only in `standard` and `adaptive` retry modes. Specifies whether
    #     to apply a clock skew correction and retry requests with skewed client
    #     clocks. Takes effect only when `disable_clock_skew_correction` is not set.
    #
    #   @option options [String] :defaults_mode ("legacy")
    #     See {Aws::DefaultsModeConfiguration} for a list of the
    #     accepted modes and the configuration defaults that are included.
    #
    #   @option options [Boolean] :disable_clock_skew_correction
    #     Used only in `standard` and `adaptive` retry modes. When `true`, the
    #     SDK does not apply a clock skew correction, does not update its stored
    #     skew from responses, and does not retry clock skew errors. Clock skew
    #     correction is enabled by default.
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
    #     4 times. Used in `standard` and `adaptive` retry modes. Defaults to 3,
    #     except for DynamoDB and DynamoDB Streams, which default to 4.
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
    #   @option options [String] :retry_mode ("standard")
    #     Specifies which retry algorithm to use. Values are:
    #
    #     * `legacy` - The pre-existing retry behavior.
    #
    #     * `standard` - A standardized set of retry rules across the AWS SDKs.
    #       This includes support for retry quotas, which limit the number of
    #       unsuccessful retries a client can make. This is the default value
    #       if no retry mode is provided.
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
    #   @option options [Aws::Payments::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::Payments::EndpointParameters`.
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

    # Retrieves up to 100 financial records in one request, including the
    # details that are specific to each record's type. Identify each record
    # by its ID or by its invoice ID. Results can be partial: each key that
    # you request appears once in the response, either as a record in
    # `financialRecords` or as an error in `errors`. A key that matches no
    # record on your account is returned in `errors` and doesn't fail the
    # request. This operation provides strongly consistent reads.
    #
    # To use this operation, you must have Amazon Web Services Identity and
    # Access Management (IAM) permission for both
    # `payments:BatchGetFinancialRecord` and `payments:GetPaymentStatus`.
    #
    # @option params [required, Array<Types::FinancialRecordKey>] :keys
    #   The keys of the financial records to retrieve. Each key is either the
    #   record's ID or its invoice ID.
    #
    # @return [Types::BatchGetFinancialRecordResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchGetFinancialRecordResponse#financial_records #financial_records} => Array&lt;Types::FinancialRecord&gt;
    #   * {Types::BatchGetFinancialRecordResponse#errors #errors} => Array&lt;Types::FinancialRecordError&gt;
    #
    #
    # @example Example: Invoke BatchGetFinancialRecord
    #
    #   resp = client.batch_get_financial_record({
    #     keys: [
    #       {
    #         identifier: "INV-1234-5678-9012-3456", 
    #       }, 
    #       {
    #         invoice_identifier: "999999999999", 
    #       }, 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     errors: [
    #       {
    #         key: {
    #           invoice_identifier: "999999999999", 
    #         }, 
    #         code: "NOT_FOUND", 
    #         message: "The requested resource was not found", 
    #       }, 
    #     ], 
    #     financial_records: [
    #       {
    #         type: "INVOICE", 
    #         amount: {
    #           value: "1000.24", 
    #           currency: "USD", 
    #         }, 
    #         balances: {
    #           canceled: {
    #             value: "0.0", 
    #             currency: "USD", 
    #           }, 
    #           outstanding: {
    #             value: "0.0", 
    #             currency: "USD", 
    #           }, 
    #           processing: {
    #             value: "0.0", 
    #             currency: "USD", 
    #           }, 
    #           settled: {
    #             value: "1000.24", 
    #             currency: "USD", 
    #           }, 
    #         }, 
    #         business_unit: {
    #           line_of_business: "AWS_CLOUD_SERVICES", 
    #           merchant_of_record: "Amazon Web Services, Inc.", 
    #         }, 
    #         closed_at: Time.parse(1736208000), 
    #         details: {
    #           invoice_details: {
    #             billing_period: {
    #               end_date: Time.parse(1735689600), 
    #               start_date: Time.parse(1733011200), 
    #             }, 
    #             due_date: Time.parse(1738281600), 
    #             invoice_frequency: "RECURRING", 
    #             invoice_id: "536462537364", 
    #             payment_terms: "Net30", 
    #           }, 
    #         }, 
    #         id: "INV-1234-5678-9012-3456", 
    #         issued_at: Time.parse(1735689600), 
    #         settlement_status: "CLOSED", 
    #         status: "SETTLED", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_financial_record({
    #     keys: [ # required
    #       {
    #         identifier: "FinancialRecordIdentifier",
    #         invoice_identifier: "InvoiceId",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.financial_records #=> Array
    #   resp.financial_records[0].id #=> String
    #   resp.financial_records[0].type #=> String, one of "INVOICE", "CREDIT_MEMO"
    #   resp.financial_records[0].business_unit.merchant_of_record #=> String
    #   resp.financial_records[0].business_unit.line_of_business #=> String, one of "AWS_CLOUD_SERVICES", "PROSERVE_MARKETING_AND_TRAINING", "AWS_MARKETPLACE"
    #   resp.financial_records[0].amount.value #=> String
    #   resp.financial_records[0].amount.currency #=> String
    #   resp.financial_records[0].balances.outstanding.value #=> String
    #   resp.financial_records[0].balances.outstanding.currency #=> String
    #   resp.financial_records[0].balances.processing.value #=> String
    #   resp.financial_records[0].balances.processing.currency #=> String
    #   resp.financial_records[0].balances.settled.value #=> String
    #   resp.financial_records[0].balances.settled.currency #=> String
    #   resp.financial_records[0].balances.canceled.value #=> String
    #   resp.financial_records[0].balances.canceled.currency #=> String
    #   resp.financial_records[0].settlement_status #=> String, one of "OPEN", "CLOSED"
    #   resp.financial_records[0].status #=> String, one of "OUTSTANDING", "PROCESSING", "SETTLED", "CANCELED"
    #   resp.financial_records[0].issued_at #=> Time
    #   resp.financial_records[0].closed_at #=> Time
    #   resp.financial_records[0].details.invoice_details.invoice_id #=> String
    #   resp.financial_records[0].details.invoice_details.due_status #=> String, one of "DUE", "PAST_DUE"
    #   resp.financial_records[0].details.invoice_details.billing_period.start_date #=> Time
    #   resp.financial_records[0].details.invoice_details.billing_period.end_date #=> Time
    #   resp.financial_records[0].details.invoice_details.due_date #=> Time
    #   resp.financial_records[0].details.invoice_details.payment_terms #=> String
    #   resp.financial_records[0].details.invoice_details.invoice_frequency #=> String, one of "ONE_TIME", "RECURRING"
    #   resp.financial_records[0].details.credit_memo_details.invoice_id #=> String
    #   resp.financial_records[0].details.credit_memo_details.billing_period.start_date #=> Time
    #   resp.financial_records[0].details.credit_memo_details.billing_period.end_date #=> Time
    #   resp.errors #=> Array
    #   resp.errors[0].key.identifier #=> String
    #   resp.errors[0].key.invoice_identifier #=> String
    #   resp.errors[0].code #=> String, one of "NOT_FOUND", "INTERNAL_ERROR"
    #   resp.errors[0].message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payments-2026-09-23/BatchGetFinancialRecord AWS API Documentation
    #
    # @overload batch_get_financial_record(params = {})
    # @param [Hash] params ({})
    def batch_get_financial_record(params = {}, options = {})
      req = build_request(:batch_get_financial_record, params)
      req.send_request(options)
    end

    # Retrieves one balance of your account, selected by balance type, as
    # one amount for each merchant of record and currency. Each amount is
    # the sum of the outstanding balances of your invoices or credit memos
    # that have the status `OUTSTANDING`. Amounts are never added together
    # across merchants of record or currencies. This operation is eventually
    # consistent. Results are paginated. Use `nextToken` to retrieve more
    # results.
    #
    # To use this operation, you must have Amazon Web Services Identity and
    # Access Management (IAM) permission for both
    # `payments:GetAccountBalance` and `payments:GetPaymentStatus`.
    #
    # @option params [required, String] :balance_type
    #   The balance to retrieve. You can specify only one balance type in a
    #   single request. Each balance adds up the `outstanding` balance of the
    #   records that have the status `OUTSTANDING`. A record that is
    #   `PROCESSING`, `SETTLED`, or `CANCELED` isn't included, even when part
    #   of its amount is outstanding. The following values are valid:
    #
    #   * `INVOICES_DUE` – The outstanding balance of your `OUTSTANDING`
    #     invoices that aren't past their due date, where `dueStatus` is
    #     `DUE`.
    #
    #   * `INVOICES_PAST_DUE` – The outstanding balance of your `OUTSTANDING`
    #     invoices that are past their due date, where `dueStatus` is
    #     `PAST_DUE`.
    #
    #   * `OUTSTANDING_CREDIT_MEMOS` – The outstanding balance of your
    #     `OUTSTANDING` credit memos: the credit that isn't yet applied to an
    #     invoice.
    #
    # @option params [String] :next_token
    #   The pagination token from the `nextToken` of the previous response.
    #   Omit it to get the first page. Tokens expire. If the token is
    #   malformed or expired, or doesn't match the original request, the
    #   request fails with `ValidationException` and the reason
    #   `INVALID_PAGINATION_TOKEN`. In that case, start again from the first
    #   page.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in one page. The default is
    #   100. A page can contain fewer results even when more remain. Use
    #   `nextToken` to find out whether more results are available.
    #
    # @return [Types::GetAccountBalanceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAccountBalanceResponse#account_balances #account_balances} => Array&lt;Types::AccountBalance&gt;
    #   * {Types::GetAccountBalanceResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: Invoke GetAccountBalance
    #
    #   resp = client.get_account_balance({
    #     balance_type: "INVOICES_PAST_DUE", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     account_balances: [
    #       {
    #         amount: {
    #           value: "1250.00", 
    #           currency: "USD", 
    #         }, 
    #         merchant_of_record: "Amazon Web Services, Inc.", 
    #       }, 
    #       {
    #         amount: {
    #           value: "430.75", 
    #           currency: "INR", 
    #         }, 
    #         merchant_of_record: "Amazon Web Services India Private Limited", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_account_balance({
    #     balance_type: "INVOICES_DUE", # required, accepts INVOICES_DUE, INVOICES_PAST_DUE, OUTSTANDING_CREDIT_MEMOS
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.account_balances #=> Array
    #   resp.account_balances[0].amount.value #=> String
    #   resp.account_balances[0].amount.currency #=> String
    #   resp.account_balances[0].merchant_of_record #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payments-2026-09-23/GetAccountBalance AWS API Documentation
    #
    # @overload get_account_balance(params = {})
    # @param [Hash] params ({})
    def get_account_balance(params = {}, options = {})
      req = build_request(:get_account_balance, params)
      req.send_request(options)
    end

    # Retrieves a single financial record, including the details that are
    # specific to its type. Specify exactly one of the following:
    #
    # * The ID that Amazon Web Services Payments issued for the record, in
    #   `identifier`.
    #
    # * The invoice ID that Amazon Web Services Invoicing issued for an
    #   invoice or a credit memo, in `invoiceIdentifier`.
    #
    # If you specify both or neither, the request fails with
    # `ValidationException`. If no record on your account matches, the
    # request fails with `ResourceNotFoundException`.
    #
    # This operation provides strongly consistent reads.
    #
    # To use this operation, you must have Amazon Web Services Identity and
    # Access Management (IAM) permission for both
    # `payments:GetFinancialRecord` and `payments:GetPaymentStatus`.
    #
    # @option params [String] :identifier
    #   The ID that Amazon Web Services Payments issued for the financial
    #   record, as returned in `id`.
    #
    # @option params [String] :invoice_identifier
    #   The invoice ID that Amazon Web Services Invoicing issued for an
    #   invoice or a credit memo. The operation returns the record that has
    #   this invoice ID.
    #
    # @return [Types::GetFinancialRecordResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetFinancialRecordResponse#financial_record #financial_record} => Types::FinancialRecord
    #
    #
    # @example Example: Invoke GetFinancialRecord
    #
    #   resp = client.get_financial_record({
    #     identifier: "INV-1234-5678-9012-3456", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     financial_record: {
    #       type: "INVOICE", 
    #       amount: {
    #         value: "1000.24", 
    #         currency: "USD", 
    #       }, 
    #       balances: {
    #         canceled: {
    #           value: "0.0", 
    #           currency: "USD", 
    #         }, 
    #         outstanding: {
    #           value: "0.0", 
    #           currency: "USD", 
    #         }, 
    #         processing: {
    #           value: "0.0", 
    #           currency: "USD", 
    #         }, 
    #         settled: {
    #           value: "1000.24", 
    #           currency: "USD", 
    #         }, 
    #       }, 
    #       business_unit: {
    #         line_of_business: "AWS_CLOUD_SERVICES", 
    #         merchant_of_record: "Amazon Web Services, Inc.", 
    #       }, 
    #       closed_at: Time.parse(1736208000), 
    #       details: {
    #         invoice_details: {
    #           billing_period: {
    #             end_date: Time.parse(1735689600), 
    #             start_date: Time.parse(1733011200), 
    #           }, 
    #           due_date: Time.parse(1738281600), 
    #           invoice_frequency: "RECURRING", 
    #           invoice_id: "536462537364", 
    #           payment_terms: "Net30", 
    #         }, 
    #       }, 
    #       id: "INV-1234-5678-9012-3456", 
    #       issued_at: Time.parse(1735689600), 
    #       settlement_status: "CLOSED", 
    #       status: "SETTLED", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_financial_record({
    #     identifier: "FinancialRecordIdentifier",
    #     invoice_identifier: "InvoiceId",
    #   })
    #
    # @example Response structure
    #
    #   resp.financial_record.id #=> String
    #   resp.financial_record.type #=> String, one of "INVOICE", "CREDIT_MEMO"
    #   resp.financial_record.business_unit.merchant_of_record #=> String
    #   resp.financial_record.business_unit.line_of_business #=> String, one of "AWS_CLOUD_SERVICES", "PROSERVE_MARKETING_AND_TRAINING", "AWS_MARKETPLACE"
    #   resp.financial_record.amount.value #=> String
    #   resp.financial_record.amount.currency #=> String
    #   resp.financial_record.balances.outstanding.value #=> String
    #   resp.financial_record.balances.outstanding.currency #=> String
    #   resp.financial_record.balances.processing.value #=> String
    #   resp.financial_record.balances.processing.currency #=> String
    #   resp.financial_record.balances.settled.value #=> String
    #   resp.financial_record.balances.settled.currency #=> String
    #   resp.financial_record.balances.canceled.value #=> String
    #   resp.financial_record.balances.canceled.currency #=> String
    #   resp.financial_record.settlement_status #=> String, one of "OPEN", "CLOSED"
    #   resp.financial_record.status #=> String, one of "OUTSTANDING", "PROCESSING", "SETTLED", "CANCELED"
    #   resp.financial_record.issued_at #=> Time
    #   resp.financial_record.closed_at #=> Time
    #   resp.financial_record.details.invoice_details.invoice_id #=> String
    #   resp.financial_record.details.invoice_details.due_status #=> String, one of "DUE", "PAST_DUE"
    #   resp.financial_record.details.invoice_details.billing_period.start_date #=> Time
    #   resp.financial_record.details.invoice_details.billing_period.end_date #=> Time
    #   resp.financial_record.details.invoice_details.due_date #=> Time
    #   resp.financial_record.details.invoice_details.payment_terms #=> String
    #   resp.financial_record.details.invoice_details.invoice_frequency #=> String, one of "ONE_TIME", "RECURRING"
    #   resp.financial_record.details.credit_memo_details.invoice_id #=> String
    #   resp.financial_record.details.credit_memo_details.billing_period.start_date #=> Time
    #   resp.financial_record.details.credit_memo_details.billing_period.end_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payments-2026-09-23/GetFinancialRecord AWS API Documentation
    #
    # @overload get_financial_record(params = {})
    # @param [Hash] params ({})
    def get_financial_record(params = {}, options = {})
      req = build_request(:get_financial_record, params)
      req.send_request(options)
    end

    # Retrieves a payment instrument on your account, including the details
    # that are specific to its payment method, such as a card's last four
    # digits. Identify the instrument by its Amazon Resource Name (ARN) or
    # by its ID. `ListPaymentInstruments` returns both.
    #
    # To use this operation, you must have Amazon Web Services Identity and
    # Access Management (IAM) permission for
    # `payments:GetPaymentInstrument`. You can scope this permission to the
    # instrument's ARN.
    #
    # @option params [required, String] :identifier
    #   The instrument to retrieve. Specify one of the following:
    #
    #   * The Amazon Resource Name (ARN) of the instrument, as
    #     `ListPaymentInstruments` returns in `arn`. The ARN must be for an
    #     instrument on your account.
    #
    #   * The ID of the instrument, as `ListPaymentInstruments` returns in
    #     `id`.
    #
    # @return [Types::GetPaymentInstrumentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetPaymentInstrumentResponse#payment_instrument #payment_instrument} => Types::PaymentInstrument
    #
    #
    # @example Example: Invoke GetPaymentInstrument
    #
    #   resp = client.get_payment_instrument({
    #     identifier: "arn:aws:payments::123456789012:payment-instrument:1a2b3c4d-5e6f-7a8b-9c0d-111122223333", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     payment_instrument: {
    #       arn: "arn:aws:payments::123456789012:payment-instrument:1a2b3c4d-5e6f-7a8b-9c0d-111122223333", 
    #       created_at: Time.parse(1735689600), 
    #       details: {
    #         card: {
    #           brand: "VISA", 
    #           card_type: "CREDIT", 
    #           expiration_month: 7, 
    #           expiration_year: 2030, 
    #           issuer_country: "US", 
    #           issuing_bank: "Example Bank", 
    #           last4: "1111", 
    #         }, 
    #       }, 
    #       payment_method: "CARD", 
    #       status: "ACTIVE", 
    #       updated_at: Time.parse(1738368000), 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_payment_instrument({
    #     identifier: "PaymentInstrumentIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.payment_instrument.arn #=> String
    #   resp.payment_instrument.payment_method #=> String, one of "CARD", "US_ACH_BANK_ACCOUNT", "SEPA_BANK_ACCOUNT", "UK_BACS_BANK_ACCOUNT", "IN_NET_BANKING", "CN_BANK_REDIRECT", "UPI", "PIX", "PAY_BY_INVOICE"
    #   resp.payment_instrument.status #=> String, one of "ACTIVE", "PENDING_SETUP", "SETUP_IN_PROGRESS", "INVALID"
    #   resp.payment_instrument.details.card.brand #=> String, one of "VISA", "MASTERCARD", "AMEX", "DISCOVER", "JCB", "RUPAY", "CHINA_UNIONPAY"
    #   resp.payment_instrument.details.card.last4 #=> String
    #   resp.payment_instrument.details.card.expiration_month #=> Integer
    #   resp.payment_instrument.details.card.expiration_year #=> Integer
    #   resp.payment_instrument.details.card.card_type #=> String, one of "CREDIT", "DEBIT"
    #   resp.payment_instrument.details.card.issuing_bank #=> String
    #   resp.payment_instrument.details.card.issuer_country #=> String
    #   resp.payment_instrument.details.us_ach_bank_account.account_number_tail #=> String
    #   resp.payment_instrument.details.us_ach_bank_account.account_holder_name #=> String
    #   resp.payment_instrument.details.us_ach_bank_account.bank_name #=> String
    #   resp.payment_instrument.details.us_ach_bank_account.account_type #=> String, one of "CHECKING", "SAVINGS"
    #   resp.payment_instrument.details.sepa_bank_account.account_number_tail #=> String
    #   resp.payment_instrument.details.sepa_bank_account.account_holder_name #=> String
    #   resp.payment_instrument.details.sepa_bank_account.bank_name #=> String
    #   resp.payment_instrument.details.sepa_bank_account.account_type #=> String, one of "CHECKING", "SAVINGS"
    #   resp.payment_instrument.details.uk_bacs_bank_account.account_number_tail #=> String
    #   resp.payment_instrument.details.uk_bacs_bank_account.account_holder_name #=> String
    #   resp.payment_instrument.details.uk_bacs_bank_account.bank_name #=> String
    #   resp.payment_instrument.details.uk_bacs_bank_account.account_type #=> String, one of "CHECKING", "SAVINGS"
    #   resp.payment_instrument.details.in_net_banking.bank_code #=> String
    #   resp.payment_instrument.details.in_net_banking.bank_name #=> String
    #   resp.payment_instrument.details.cn_bank_redirect.bank_code #=> String
    #   resp.payment_instrument.details.upi.app_name #=> String
    #   resp.payment_instrument.created_at #=> Time
    #   resp.payment_instrument.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payments-2026-09-23/GetPaymentInstrument AWS API Documentation
    #
    # @overload get_payment_instrument(params = {})
    # @param [Hash] params ({})
    def get_payment_instrument(params = {}, options = {})
      req = build_request(:get_payment_instrument, params)
      req.send_request(options)
    end

    # Lists the financial records on your account, with the newest first by
    # default. A financial record is an invoice or a credit memo. You must
    # specify at least one record type in `types`. You can narrow the
    # results further by settlement status and issue date. This operation
    # returns summaries. To get the details that are specific to a record's
    # type, use `GetFinancialRecord` or `BatchGetFinancialRecord`. Results
    # are paginated. Use `nextToken` to retrieve more results.
    #
    # To use this operation, you must have Amazon Web Services Identity and
    # Access Management (IAM) permission for both
    # `payments:ListFinancialRecords` and `payments:GetPaymentStatus`.
    #
    # @option params [required, Array<String>] :types
    #   The financial record types to return. The following values are valid:
    #
    #   * `INVOICE` – An invoice: a bill from Amazon Web Services. Payments
    #     and credit memos applied to the invoice settle it.
    #
    #   * `CREDIT_MEMO` – A credit memo: a credit issued to your account, for
    #     example for a billing correction or a service credit. Applying it to
    #     one or more invoices settles it.
    #
    # @option params [Array<String>] :settlement_statuses
    #   The settlement statuses to filter by. `OPEN` returns records whose
    #   `status` is `OUTSTANDING` or `PROCESSING`. `CLOSED` returns records
    #   whose `status` is `SETTLED` or `CANCELED`. When you omit this member,
    #   the operation returns records with both settlement statuses.
    #
    # @option params [Time,DateTime,Date,Integer,String] :issued_after
    #   The earliest date and time to return records for, inclusive. The
    #   operation returns the records that were issued at or after this time.
    #
    # @option params [Time,DateTime,Date,Integer,String] :issued_before
    #   The latest date and time to return records for, exclusive. The
    #   operation returns the records that were issued before this time. When
    #   you specify both `issuedAfter` and `issuedBefore`, `issuedBefore` must
    #   be later than `issuedAfter`.
    #
    # @option params [String] :sort_by
    #   The field to sort the results by. The default is `ISSUED_AT`, the date
    #   and time when the record was issued.
    #
    # @option params [String] :sort_order
    #   The order to sort the results in. The default is `DESCENDING`, which
    #   returns the newest records first. `ASCENDING` returns the oldest
    #   records first.
    #
    # @option params [String] :next_token
    #   The pagination token from the `nextToken` of the previous response.
    #   Omit it to get the first page. Tokens expire. If the token is
    #   malformed or expired, or doesn't match the original request, the
    #   request fails with `ValidationException` and the reason
    #   `INVALID_PAGINATION_TOKEN`. In that case, start again from the first
    #   page.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in one page. The default is
    #   100. A page can contain fewer results even when more remain. Use
    #   `nextToken` to find out whether more results are available.
    #
    # @return [Types::ListFinancialRecordsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListFinancialRecordsResponse#financial_record_summaries #financial_record_summaries} => Array&lt;Types::FinancialRecordSummary&gt;
    #   * {Types::ListFinancialRecordsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: Invoke ListFinancialRecords
    #
    #   resp = client.list_financial_records({
    #     max_results: 5, 
    #     settlement_statuses: [
    #       "CLOSED", 
    #     ], 
    #     sort_by: "ISSUED_AT", 
    #     sort_order: "DESCENDING", 
    #     types: [
    #       "INVOICE", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     financial_record_summaries: [
    #       {
    #         type: "INVOICE", 
    #         amount: {
    #           value: "1000.24", 
    #           currency: "USD", 
    #         }, 
    #         balances: {
    #           canceled: {
    #             value: "0.0", 
    #             currency: "USD", 
    #           }, 
    #           outstanding: {
    #             value: "0.0", 
    #             currency: "USD", 
    #           }, 
    #           processing: {
    #             value: "0.0", 
    #             currency: "USD", 
    #           }, 
    #           settled: {
    #             value: "1000.24", 
    #             currency: "USD", 
    #           }, 
    #         }, 
    #         business_unit: {
    #           line_of_business: "AWS_CLOUD_SERVICES", 
    #           merchant_of_record: "Amazon Web Services, Inc.", 
    #         }, 
    #         closed_at: Time.parse(1736208000), 
    #         id: "INV-1234-5678-9012-3456", 
    #         issued_at: Time.parse(1735689600), 
    #         settlement_status: "CLOSED", 
    #         status: "SETTLED", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_financial_records({
    #     types: ["INVOICE"], # required, accepts INVOICE, CREDIT_MEMO
    #     settlement_statuses: ["OPEN"], # accepts OPEN, CLOSED
    #     issued_after: Time.now,
    #     issued_before: Time.now,
    #     sort_by: "ISSUED_AT", # accepts ISSUED_AT
    #     sort_order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.financial_record_summaries #=> Array
    #   resp.financial_record_summaries[0].id #=> String
    #   resp.financial_record_summaries[0].type #=> String, one of "INVOICE", "CREDIT_MEMO"
    #   resp.financial_record_summaries[0].business_unit.merchant_of_record #=> String
    #   resp.financial_record_summaries[0].business_unit.line_of_business #=> String, one of "AWS_CLOUD_SERVICES", "PROSERVE_MARKETING_AND_TRAINING", "AWS_MARKETPLACE"
    #   resp.financial_record_summaries[0].amount.value #=> String
    #   resp.financial_record_summaries[0].amount.currency #=> String
    #   resp.financial_record_summaries[0].balances.outstanding.value #=> String
    #   resp.financial_record_summaries[0].balances.outstanding.currency #=> String
    #   resp.financial_record_summaries[0].balances.processing.value #=> String
    #   resp.financial_record_summaries[0].balances.processing.currency #=> String
    #   resp.financial_record_summaries[0].balances.settled.value #=> String
    #   resp.financial_record_summaries[0].balances.settled.currency #=> String
    #   resp.financial_record_summaries[0].balances.canceled.value #=> String
    #   resp.financial_record_summaries[0].balances.canceled.currency #=> String
    #   resp.financial_record_summaries[0].settlement_status #=> String, one of "OPEN", "CLOSED"
    #   resp.financial_record_summaries[0].status #=> String, one of "OUTSTANDING", "PROCESSING", "SETTLED", "CANCELED"
    #   resp.financial_record_summaries[0].issued_at #=> Time
    #   resp.financial_record_summaries[0].closed_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payments-2026-09-23/ListFinancialRecords AWS API Documentation
    #
    # @overload list_financial_records(params = {})
    # @param [Hash] params ({})
    def list_financial_records(params = {}, options = {})
      req = build_request(:list_financial_records, params)
      req.send_request(options)
    end

    # Lists the payment instruments on your account. This operation returns
    # summaries. To get the details that are specific to an instrument's
    # payment method, use `GetPaymentInstrument`. Results are paginated. Use
    # `nextToken` to retrieve more results.
    #
    # To use this operation, you must have Amazon Web Services Identity and
    # Access Management (IAM) permission for
    # `payments:ListPaymentInstruments`.
    #
    # @option params [String] :next_token
    #   The pagination token from the `nextToken` of the previous response.
    #   Omit it to get the first page. Tokens expire. If the token is
    #   malformed or expired, or doesn't match the original request, the
    #   request fails with `ValidationException` and the reason
    #   `INVALID_PAGINATION_TOKEN`. In that case, start again from the first
    #   page.
    #
    # @option params [Integer] :max_results
    #   The maximum number of payment instruments to return in one page. The
    #   default is 25. A page can contain fewer payment instruments even when
    #   more remain. Use `nextToken` to find out whether more payment
    #   instruments are available.
    #
    # @return [Types::ListPaymentInstrumentsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPaymentInstrumentsResponse#payment_instrument_summaries #payment_instrument_summaries} => Array&lt;Types::PaymentInstrumentSummary&gt;
    #   * {Types::ListPaymentInstrumentsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: Invoke ListPaymentInstruments
    #
    #   resp = client.list_payment_instruments({
    #     max_results: 5, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     payment_instrument_summaries: [
    #       {
    #         arn: "arn:aws:payments::123456789012:payment-instrument:1a2b3c4d-5e6f-7a8b-9c0d-111122223333", 
    #         created_at: Time.parse(1735689600), 
    #         id: "1a2b3c4d-5e6f-7a8b-9c0d-111122223333", 
    #         payment_method: "CARD", 
    #         status: "ACTIVE", 
    #         updated_at: Time.parse(1738368000), 
    #       }, 
    #       {
    #         arn: "arn:aws:payments::123456789012:payment-instrument:2b3c4d5e-6f7a-8b9c-0d1e-444455556666", 
    #         created_at: Time.parse(1727740800), 
    #         id: "2b3c4d5e-6f7a-8b9c-0d1e-444455556666", 
    #         payment_method: "US_ACH_BANK_ACCOUNT", 
    #         status: "ACTIVE", 
    #         updated_at: Time.parse(1727740800), 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_payment_instruments({
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.payment_instrument_summaries #=> Array
    #   resp.payment_instrument_summaries[0].id #=> String
    #   resp.payment_instrument_summaries[0].arn #=> String
    #   resp.payment_instrument_summaries[0].payment_method #=> String, one of "CARD", "US_ACH_BANK_ACCOUNT", "SEPA_BANK_ACCOUNT", "UK_BACS_BANK_ACCOUNT", "IN_NET_BANKING", "CN_BANK_REDIRECT", "UPI", "PIX", "PAY_BY_INVOICE"
    #   resp.payment_instrument_summaries[0].status #=> String, one of "ACTIVE", "PENDING_SETUP", "SETUP_IN_PROGRESS", "INVALID"
    #   resp.payment_instrument_summaries[0].created_at #=> Time
    #   resp.payment_instrument_summaries[0].updated_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/payments-2026-09-23/ListPaymentInstruments AWS API Documentation
    #
    # @overload list_payment_instruments(params = {})
    # @param [Hash] params ({})
    def list_payment_instruments(params = {}, options = {})
      req = build_request(:list_payment_instruments, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::Payments')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-payments'
      context[:gem_version] = '1.0.0'
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
