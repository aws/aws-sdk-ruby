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

module Aws::Billing
  # An API client for Billing.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::Billing::Client.new(
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

    @identifier = :billing

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
    add_plugin(Aws::Billing::Plugins::Endpoints)

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
    #   @option options [Aws::Billing::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::Billing::EndpointParameters`.
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

    # Creates a billing view with the specified billing view attributes.
    #
    # @option params [required, String] :name
    #   The name of the billing view.
    #
    # @option params [String] :description
    #   The description of the billing view.
    #
    # @option params [required, Array<String>] :source_views
    #   A list of billing views used as the data source for the custom billing
    #   view.
    #
    # @option params [Types::Expression] :data_filter_expression
    #   See [Expression][1]. Billing view only supports `LINKED_ACCOUNT` and
    #   `Tags`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier you specify to ensure idempotency
    #   of the request. Idempotency ensures that an API request completes no
    #   more than one time. If the original request completes successfully,
    #   any subsequent retries complete successfully without performing any
    #   further actions with an idempotent request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Array<Types::ResourceTag>] :resource_tags
    #   A list of key value map specifying tags associated to the billing view
    #   being created.
    #
    # @return [Types::CreateBillingViewResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateBillingViewResponse#arn #arn} => String
    #   * {Types::CreateBillingViewResponse#created_at #created_at} => Time
    #
    #
    # @example Example: Invoke CreateBillingView
    #
    #   resp = client.create_billing_view({
    #     name: "Example Custom Billing View", 
    #     data_filter_expression: {
    #       dimensions: {
    #         key: "LINKED_ACCOUNT", 
    #         values: [
    #           "000000000000", 
    #         ], 
    #       }, 
    #     }, 
    #     description: "Custom Billing View Example", 
    #     source_views: [
    #       "arn:aws:billing::123456789101:billingview/primary", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     arn: "arn:aws:billing::123456789101:billingview/custom-46f47cb2-a11d-43f3-983d-470b5708a899", 
    #     created_at: Time.parse(1719792001), 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_billing_view({
    #     name: "BillingViewName", # required
    #     description: "BillingViewDescription",
    #     source_views: ["BillingViewArn"], # required
    #     data_filter_expression: {
    #       dimensions: {
    #         key: "LINKED_ACCOUNT", # required, accepts LINKED_ACCOUNT
    #         values: ["Value"], # required
    #       },
    #       tags: {
    #         key: "TagKey", # required
    #         values: ["Value"], # required
    #       },
    #     },
    #     client_token: "ClientToken",
    #     resource_tags: [
    #       {
    #         key: "ResourceTagKey", # required
    #         value: "ResourceTagValue",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.created_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/CreateBillingView AWS API Documentation
    #
    # @overload create_billing_view(params = {})
    # @param [Hash] params ({})
    def create_billing_view(params = {}, options = {})
      req = build_request(:create_billing_view, params)
      req.send_request(options)
    end

    # Deletes the specified billing view.
    #
    # @option params [required, String] :arn
    #   The Amazon Resource Name (ARN) that can be used to uniquely identify
    #   the billing view.
    #
    # @return [Types::DeleteBillingViewResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteBillingViewResponse#arn #arn} => String
    #
    #
    # @example Example: Invoke DeleteBillingView
    #
    #   resp = client.delete_billing_view({
    #     arn: "arn:aws:billing::123456789101:billingview/custom-46f47cb2-a11d-43f3-983d-470b5708a899", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     arn: "arn:aws:billing::123456789101:billingview/custom-46f47cb2-a11d-43f3-983d-470b5708a899", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_billing_view({
    #     arn: "BillingViewArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/DeleteBillingView AWS API Documentation
    #
    # @overload delete_billing_view(params = {})
    # @param [Hash] params ({})
    def delete_billing_view(params = {}, options = {})
      req = build_request(:delete_billing_view, params)
      req.send_request(options)
    end

    # Returns the metadata associated to the specified billing view ARN.
    #
    # @option params [required, String] :arn
    #   The Amazon Resource Name (ARN) that can be used to uniquely identify
    #   the billing view.
    #
    # @return [Types::GetBillingViewResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetBillingViewResponse#billing_view #billing_view} => Types::BillingViewElement
    #
    #
    # @example Example: Invoke GetBillingView
    #
    #   resp = client.get_billing_view({
    #     arn: "arn:aws:billing::123456789101:billingview/custom-46f47cb2-a11d-43f3-983d-470b5708a899", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     billing_view: {
    #       name: "Example Custom Billing View", 
    #       arn: "arn:aws:billing::123456789101:billingview/custom-46f47cb2-a11d-43f3-983d-470b5708a899", 
    #       billing_view_type: "CUSTOM", 
    #       data_filter_expression: {
    #         dimensions: {
    #           key: "LINKED_ACCOUNT", 
    #           values: [
    #             "000000000000", 
    #           ], 
    #         }, 
    #       }, 
    #       description: "Custom Billing View Example -- updated description", 
    #       owner_account_id: "123456789101", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_billing_view({
    #     arn: "BillingViewArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.billing_view.arn #=> String
    #   resp.billing_view.name #=> String
    #   resp.billing_view.description #=> String
    #   resp.billing_view.billing_view_type #=> String, one of "PRIMARY", "BILLING_GROUP", "CUSTOM"
    #   resp.billing_view.owner_account_id #=> String
    #   resp.billing_view.data_filter_expression.dimensions.key #=> String, one of "LINKED_ACCOUNT"
    #   resp.billing_view.data_filter_expression.dimensions.values #=> Array
    #   resp.billing_view.data_filter_expression.dimensions.values[0] #=> String
    #   resp.billing_view.data_filter_expression.tags.key #=> String
    #   resp.billing_view.data_filter_expression.tags.values #=> Array
    #   resp.billing_view.data_filter_expression.tags.values[0] #=> String
    #   resp.billing_view.created_at #=> Time
    #   resp.billing_view.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/GetBillingView AWS API Documentation
    #
    # @overload get_billing_view(params = {})
    # @param [Hash] params ({})
    def get_billing_view(params = {}, options = {})
      req = build_request(:get_billing_view, params)
      req.send_request(options)
    end

    # Returns the resource-based policy document attached to the resource in
    # `JSON` format.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the billing view resource to which
    #   the policy is attached to.
    #
    # @return [Types::GetResourcePolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetResourcePolicyResponse#resource_arn #resource_arn} => String
    #   * {Types::GetResourcePolicyResponse#policy #policy} => String
    #
    #
    # @example Example: Invoke GetResourcePolicy
    #
    #   resp = client.get_resource_policy({
    #     resource_arn: "arn:aws:billing::123456789101:billingview/custom-46f47cb2-a11d-43f3-983d-470b5708a899", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     policy: "{\"Version\":\"2012-10-17\",\"Id\":\"46f47cb2-a11d-43f3-983d-470b5708a899\",\"Statement\":[{\"Sid\":\"ExampleStatement1\",\"Effect\":\"Allow\",\"Principal\":{\"AWS\":\"arn:aws:iam::000000000000:root\"},\"Action\":[\"ce:GetDimensionValues\",\"ce:GetCostAndUsageWithResources\",\"ce:GetCostAndUsage\",\"ce:GetCostForecast\",\"ce:GetTags\",\"ce:GetUsageForecast\",\"ce:GetCostCategories\",\"billing:GetBillingView\"],\"Resource\":\"arn:aws:billing::123456789101:billingview/custom-46f47cb2-a11d-43f3-983d-470b5708a899\"}]}", 
    #     resource_arn: "arn:aws:billing::123456789101:billingview/custom-46f47cb2-a11d-43f3-983d-470b5708a899", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_resource_policy({
    #     resource_arn: "ResourceArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_arn #=> String
    #   resp.policy #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/GetResourcePolicy AWS API Documentation
    #
    # @overload get_resource_policy(params = {})
    # @param [Hash] params ({})
    def get_resource_policy(params = {}, options = {})
      req = build_request(:get_resource_policy, params)
      req.send_request(options)
    end

    # Lists the billing views available for a given time period.
    #
    # Every Amazon Web Services account has a unique `PRIMARY` billing view
    # that represents the billing data available by default. Accounts that
    # use Billing Conductor also have `BILLING_GROUP` billing views
    # representing pro forma costs associated with each created billing
    # group.
    #
    # @option params [Types::ActiveTimeRange] :active_time_range
    #   The time range for the billing views listed. `PRIMARY` billing view is
    #   always listed. `BILLING_GROUP` billing views are listed for time
    #   ranges when the associated billing group resource in Billing Conductor
    #   is active. The time range must be within one calendar month.
    #
    # @option params [Array<String>] :arns
    #   The Amazon Resource Name (ARN) that can be used to uniquely identify
    #   the billing view.
    #
    # @option params [Array<String>] :billing_view_types
    #   The type of billing view.
    #
    # @option params [String] :owner_account_id
    #   The list of owners of the billing view.
    #
    # @option params [Integer] :max_results
    #   The maximum number of billing views to retrieve. Default is 100.
    #
    # @option params [String] :next_token
    #   The pagination token that is used on subsequent calls to list billing
    #   views.
    #
    # @return [Types::ListBillingViewsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListBillingViewsResponse#billing_views #billing_views} => Array&lt;Types::BillingViewListElement&gt;
    #   * {Types::ListBillingViewsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: Invoke ListBillingViews
    #
    #   resp = client.list_billing_views({
    #     active_time_range: {
    #       active_after_inclusive: Time.parse(1719792000), 
    #       active_before_inclusive: Time.parse(1722470399.999), 
    #     }, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     billing_views: [
    #       {
    #         name: "Primary Billing View Account 123456789101", 
    #         arn: "arn:aws:billing::123456789101:billingview/primary", 
    #         billing_view_type: "PRIMARY", 
    #         owner_account_id: "123456789101", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Example: Error example for ListBillingViews
    #
    #   resp = client.list_billing_views({
    #     active_time_range: {
    #       active_after_inclusive: Time.parse(1719792001), 
    #       active_before_inclusive: Time.parse(1719792000), 
    #     }, 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_billing_views({
    #     active_time_range: {
    #       active_after_inclusive: Time.now, # required
    #       active_before_inclusive: Time.now, # required
    #     },
    #     arns: ["BillingViewArn"],
    #     billing_view_types: ["PRIMARY"], # accepts PRIMARY, BILLING_GROUP, CUSTOM
    #     owner_account_id: "AccountId",
    #     max_results: 1,
    #     next_token: "PageToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.billing_views #=> Array
    #   resp.billing_views[0].arn #=> String
    #   resp.billing_views[0].name #=> String
    #   resp.billing_views[0].description #=> String
    #   resp.billing_views[0].owner_account_id #=> String
    #   resp.billing_views[0].billing_view_type #=> String, one of "PRIMARY", "BILLING_GROUP", "CUSTOM"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/ListBillingViews AWS API Documentation
    #
    # @overload list_billing_views(params = {})
    # @param [Hash] params ({})
    def list_billing_views(params = {}, options = {})
      req = build_request(:list_billing_views, params)
      req.send_request(options)
    end

    # Lists the source views (managed Amazon Web Services billing views)
    # associated with the billing view.
    #
    # @option params [required, String] :arn
    #   The Amazon Resource Name (ARN) that can be used to uniquely identify
    #   the billing view.
    #
    # @option params [Integer] :max_results
    #   The number of entries a paginated response contains.
    #
    # @option params [String] :next_token
    #   The pagination token that is used on subsequent calls to list billing
    #   views.
    #
    # @return [Types::ListSourceViewsForBillingViewResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSourceViewsForBillingViewResponse#source_views #source_views} => Array&lt;String&gt;
    #   * {Types::ListSourceViewsForBillingViewResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: Invoke ListSourceViewsForBillingView
    #
    #   resp = client.list_source_views_for_billing_view({
    #     arn: "arn:aws:billing::123456789101:billingview/custom-46f47cb2-a11d-43f3-983d-470b5708a899", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     source_views: [
    #       "arn:aws:billing::123456789101:billingview/primary", 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_source_views_for_billing_view({
    #     arn: "BillingViewArn", # required
    #     max_results: 1,
    #     next_token: "PageToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.source_views #=> Array
    #   resp.source_views[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/ListSourceViewsForBillingView AWS API Documentation
    #
    # @overload list_source_views_for_billing_view(params = {})
    # @param [Hash] params ({})
    def list_source_views_for_billing_view(params = {}, options = {})
      req = build_request(:list_source_views_for_billing_view, params)
      req.send_request(options)
    end

    # Lists tags associated with the billing view resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#resource_tags #resource_tags} => Array&lt;Types::ResourceTag&gt;
    #
    #
    # @example Example: Invoke ListTagsForResource
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "arn:aws:billing::123456789101:billingview/custom-46f47cb2-a11d-43f3-983d-470b5708a899", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     resource_tags: [
    #       {
    #         key: "ExampleTagKey", 
    #         value: "ExampleTagValue", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "ResourceArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_tags #=> Array
    #   resp.resource_tags[0].key #=> String
    #   resp.resource_tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # An API operation for adding one or more tags (key-value pairs) to a
    # resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #
    # @option params [required, Array<Types::ResourceTag>] :resource_tags
    #   A list of tag key value pairs that are associated with the resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: Invoke TagResource
    #
    #   resp = client.tag_resource({
    #     resource_arn: "arn:aws:billing::123456789101:billingview/custom-46f47cb2-a11d-43f3-983d-470b5708a899", 
    #     resource_tags: [
    #       {
    #         key: "ExampleTagKey", 
    #         value: "ExampleTagValue", 
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
    #     resource_arn: "ResourceArn", # required
    #     resource_tags: [ # required
    #       {
    #         key: "ResourceTagKey", # required
    #         value: "ResourceTagValue",
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes one or more tags from a resource. Specify only tag keys in
    # your request. Don't specify the value.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #
    # @option params [required, Array<String>] :resource_tag_keys
    #   A list of tag key value pairs that are associated with the resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: Invoke UntagResource
    #
    #   resp = client.untag_resource({
    #     resource_arn: "arn:aws:billing::123456789101:billingview/custom-46f47cb2-a11d-43f3-983d-470b5708a899", 
    #     resource_tag_keys: [
    #       "ExampleTagKey", 
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
    #     resource_arn: "ResourceArn", # required
    #     resource_tag_keys: ["ResourceTagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # An API to update the attributes of the billing view.
    #
    # @option params [required, String] :arn
    #   The Amazon Resource Name (ARN) that can be used to uniquely identify
    #   the billing view.
    #
    # @option params [String] :name
    #   The name of the billing view.
    #
    # @option params [String] :description
    #   The description of the billing view.
    #
    # @option params [Types::Expression] :data_filter_expression
    #   See [Expression][1]. Billing view only supports `LINKED_ACCOUNT` and
    #   `Tags`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html
    #
    # @return [Types::UpdateBillingViewResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateBillingViewResponse#arn #arn} => String
    #   * {Types::UpdateBillingViewResponse#updated_at #updated_at} => Time
    #
    #
    # @example Example: Invoke UpdateBillingView
    #
    #   resp = client.update_billing_view({
    #     name: "Example Custom Billing View", 
    #     arn: "arn:aws:billing::123456789101:billingview/custom-46f47cb2-a11d-43f3-983d-470b5708a899", 
    #     data_filter_expression: {
    #       dimensions: {
    #         key: "LINKED_ACCOUNT", 
    #         values: [
    #           "000000000000", 
    #         ], 
    #       }, 
    #     }, 
    #     description: "Custom Billing View Example -- updated description", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     arn: "arn:aws:billing::123456789101:billingview/custom-46f47cb2-a11d-43f3-983d-470b5708a899", 
    #     updated_at: Time.parse(1719792001), 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_billing_view({
    #     arn: "BillingViewArn", # required
    #     name: "BillingViewName",
    #     description: "BillingViewDescription",
    #     data_filter_expression: {
    #       dimensions: {
    #         key: "LINKED_ACCOUNT", # required, accepts LINKED_ACCOUNT
    #         values: ["Value"], # required
    #       },
    #       tags: {
    #         key: "TagKey", # required
    #         values: ["Value"], # required
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/billing-2023-09-07/UpdateBillingView AWS API Documentation
    #
    # @overload update_billing_view(params = {})
    # @param [Hash] params ({})
    def update_billing_view(params = {}, options = {})
      req = build_request(:update_billing_view, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::Billing')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-billing'
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
