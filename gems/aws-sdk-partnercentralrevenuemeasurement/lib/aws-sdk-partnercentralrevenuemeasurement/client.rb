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
require 'aws-sdk-core/plugins/protocols/rpc_v2'

module Aws::PartnerCentralRevenueMeasurement
  # An API client for PartnerCentralRevenueMeasurement.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::PartnerCentralRevenueMeasurement::Client.new(
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

    @identifier = :partnercentralrevenuemeasurement

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
    add_plugin(Aws::Plugins::Protocols::RpcV2)
    add_plugin(Aws::PartnerCentralRevenueMeasurement::Plugins::Endpoints)

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
    #   @option options [Aws::PartnerCentralRevenueMeasurement::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::PartnerCentralRevenueMeasurement::EndpointParameters`.
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

    # Creates a new marketplace revenue share resource in the specified
    # catalog.
    #
    # @option params [required, String] :catalog
    #   The catalog in which to create the marketplace revenue share.
    #
    # @option params [String] :client_token
    #   A unique token to ensure idempotency of the create request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :product_id
    #   The AWS Marketplace product identifier for this revenue share.
    #
    # @option params [Array<Types::Tag>] :tags
    #   Tags to associate with the marketplace revenue share upon creation.
    #
    # @return [Types::CreateMarketplaceRevenueShareOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateMarketplaceRevenueShareOutput#product_id #product_id} => String
    #   * {Types::CreateMarketplaceRevenueShareOutput#arn #arn} => String
    #   * {Types::CreateMarketplaceRevenueShareOutput#catalog #catalog} => String
    #   * {Types::CreateMarketplaceRevenueShareOutput#product_code #product_code} => String
    #   * {Types::CreateMarketplaceRevenueShareOutput#product_name #product_name} => String
    #   * {Types::CreateMarketplaceRevenueShareOutput#created_date #created_date} => Time
    #   * {Types::CreateMarketplaceRevenueShareOutput#last_modified_date #last_modified_date} => Time
    #   * {Types::CreateMarketplaceRevenueShareOutput#revision #revision} => Integer
    #
    #
    # @example Example: Example for CreateMarketplaceRevenueShare
    #
    #   resp = client.create_marketplace_revenue_share({
    #     catalog: "AWS", 
    #     product_id: "prod-abc123def4567", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     arn: "arn:aws:partnercentral:us-east-1:123456789012:catalog/AWS/marketplace-revenue-share/prod-abc123def4567", 
    #     product_id: "prod-abc123def4567", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_marketplace_revenue_share({
    #     catalog: "AWS", # required, accepts AWS, Sandbox
    #     client_token: "ClientToken",
    #     product_id: "MarketplaceProductId", # required
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
    #   resp.product_id #=> String
    #   resp.arn #=> String
    #   resp.catalog #=> String, one of "AWS", "Sandbox"
    #   resp.product_code #=> String
    #   resp.product_name #=> String
    #   resp.created_date #=> Time
    #   resp.last_modified_date #=> Time
    #   resp.revision #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-revenue-measurement-2022-07-26/CreateMarketplaceRevenueShare AWS API Documentation
    #
    # @overload create_marketplace_revenue_share(params = {})
    # @param [Hash] params ({})
    def create_marketplace_revenue_share(params = {}, options = {})
      req = build_request(:create_marketplace_revenue_share, params)
      req.send_request(options)
    end

    # Creates a new marketplace revenue share allocation for the specified
    # product.
    #
    # @option params [required, String] :catalog
    #   The catalog in which to create the allocation.
    #
    # @option params [required, String] :product_id
    #   The AWS Marketplace product identifier for the parent revenue share.
    #
    # @option params [String] :client_token
    #   A unique token to ensure idempotency of the create request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :effective_from
    #   The effective start date for the allocation. Must be the first day of
    #   a month.
    #
    # @option params [String] :effective_until
    #   The effective end date for the allocation. Must be the last day of a
    #   month (YYYY-MM-DD). Omit for open-ended allocations.
    #
    # @option params [required, String] :revenue_share_percent
    #   The revenue share percentage for this allocation.
    #
    # @return [Types::CreateMarketplaceRevenueShareAllocationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateMarketplaceRevenueShareAllocationOutput#marketplace_revenue_share_allocation_id #marketplace_revenue_share_allocation_id} => String
    #   * {Types::CreateMarketplaceRevenueShareAllocationOutput#product_id #product_id} => String
    #   * {Types::CreateMarketplaceRevenueShareAllocationOutput#product_name #product_name} => String
    #   * {Types::CreateMarketplaceRevenueShareAllocationOutput#arn #arn} => String
    #   * {Types::CreateMarketplaceRevenueShareAllocationOutput#effective_from #effective_from} => String
    #   * {Types::CreateMarketplaceRevenueShareAllocationOutput#effective_until #effective_until} => String
    #   * {Types::CreateMarketplaceRevenueShareAllocationOutput#revenue_share_percent #revenue_share_percent} => String
    #   * {Types::CreateMarketplaceRevenueShareAllocationOutput#status #status} => String
    #   * {Types::CreateMarketplaceRevenueShareAllocationOutput#created_date #created_date} => Time
    #   * {Types::CreateMarketplaceRevenueShareAllocationOutput#last_modified_date #last_modified_date} => Time
    #   * {Types::CreateMarketplaceRevenueShareAllocationOutput#latest_marketplace_revenue_share_revision #latest_marketplace_revenue_share_revision} => String
    #
    #
    # @example Example: Example for CreateMarketplaceRevenueShareAllocation
    #
    #   resp = client.create_marketplace_revenue_share_allocation({
    #     catalog: "AWS", 
    #     effective_from: "2026-07-01", 
    #     product_id: "prod-abc123def4567", 
    #     revenue_share_percent: "15.50", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     arn: "arn:aws:partnercentral:us-east-1:123456789012:catalog/AWS/marketplace-revenue-share-allocation/mrsa-abc123def4567", 
    #     effective_from: "2026-07-01", 
    #     marketplace_revenue_share_allocation_id: "mrsa-abc123def4567", 
    #     product_id: "prod-abc123def4567", 
    #     revenue_share_percent: "15.50", 
    #     status: "ACTIVE", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_marketplace_revenue_share_allocation({
    #     catalog: "AWS", # required, accepts AWS, Sandbox
    #     product_id: "MarketplaceProductId", # required
    #     client_token: "ClientToken",
    #     effective_from: "AllocationEffectiveDateString", # required
    #     effective_until: "AllocationEffectiveDateString",
    #     revenue_share_percent: "RevenueSharePercent", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.marketplace_revenue_share_allocation_id #=> String
    #   resp.product_id #=> String
    #   resp.product_name #=> String
    #   resp.arn #=> String
    #   resp.effective_from #=> String
    #   resp.effective_until #=> String
    #   resp.revenue_share_percent #=> String
    #   resp.status #=> String, one of "ACTIVE", "INACTIVE"
    #   resp.created_date #=> Time
    #   resp.last_modified_date #=> Time
    #   resp.latest_marketplace_revenue_share_revision #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-revenue-measurement-2022-07-26/CreateMarketplaceRevenueShareAllocation AWS API Documentation
    #
    # @overload create_marketplace_revenue_share_allocation(params = {})
    # @param [Hash] params ({})
    def create_marketplace_revenue_share_allocation(params = {}, options = {})
      req = build_request(:create_marketplace_revenue_share_allocation, params)
      req.send_request(options)
    end

    # Creates a new revenue attribution record in the specified catalog.
    #
    # @option params [required, String] :catalog
    #   The catalog in which to create the revenue attribution.
    #
    # @option params [String] :client_token
    #   A unique token to ensure idempotency of the create request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :name
    #   The name of the revenue attribution. Must be unique within the catalog
    #   and the partner's account.
    #
    # @option params [String] :description
    #   A description of the revenue attribution.
    #
    # @option params [required, String] :tenancy_model
    #   The tenancy model for this revenue attribution.
    #
    # @option params [String] :product_identifier
    #   The unique product identifier in AWS Marketplace. Accepts a product
    #   entity ID (e.g., prod-abc123def4567) or a product ARN.
    #
    # @option params [Array<Types::Tag>] :tags
    #   Tags to associate with the revenue attribution upon creation.
    #
    # @return [Types::CreateRevenueAttributionOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateRevenueAttributionOutput#id #id} => String
    #   * {Types::CreateRevenueAttributionOutput#arn #arn} => String
    #   * {Types::CreateRevenueAttributionOutput#name #name} => String
    #   * {Types::CreateRevenueAttributionOutput#description #description} => String
    #   * {Types::CreateRevenueAttributionOutput#tenancy_model #tenancy_model} => String
    #   * {Types::CreateRevenueAttributionOutput#marketplace_product #marketplace_product} => Types::MarketplaceProductSummary
    #   * {Types::CreateRevenueAttributionOutput#revision #revision} => String
    #
    #
    # @example Example: Example for CreateRevenueAttribution
    #
    #   resp = client.create_revenue_attribution({
    #     catalog: "AWS", 
    #     name: "My Revenue Attribution", 
    #     tenancy_model: "MULTI_TENANT", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     arn: "arn:aws:partnercentral:us-east-1:123456789012:catalog/AWS/revenue-attribution/ra-0a1b2c3d4e5f6", 
    #     id: "ra-0a1b2c3d4e5f6", 
    #     tenancy_model: "MULTI_TENANT", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_revenue_attribution({
    #     catalog: "AWS", # required, accepts AWS, Sandbox
    #     client_token: "ClientToken",
    #     name: "CreateRevenueAttributionInputNameString", # required
    #     description: "CreateRevenueAttributionInputDescriptionString",
    #     tenancy_model: "MULTI_TENANT", # required, accepts MULTI_TENANT, SINGLE_TENANT
    #     product_identifier: "CreateRevenueAttributionInputProductIdentifierString",
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
    #   resp.id #=> String
    #   resp.arn #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.tenancy_model #=> String, one of "MULTI_TENANT", "SINGLE_TENANT"
    #   resp.marketplace_product.product_id #=> String
    #   resp.marketplace_product.product_code #=> String
    #   resp.marketplace_product.product_name #=> String
    #   resp.revision #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-revenue-measurement-2022-07-26/CreateRevenueAttribution AWS API Documentation
    #
    # @overload create_revenue_attribution(params = {})
    # @param [Hash] params ({})
    def create_revenue_attribution(params = {}, options = {})
      req = build_request(:create_revenue_attribution, params)
      req.send_request(options)
    end

    # Retrieves the details of a specific marketplace revenue share.
    #
    # @option params [required, String] :catalog
    #   The catalog that the marketplace revenue share belongs to.
    #
    # @option params [required, String] :product_id
    #   The AWS Marketplace product identifier of the revenue share to
    #   retrieve.
    #
    # @option params [Integer] :revision
    #   The revision of the marketplace revenue share to retrieve. Omit to
    #   return the latest revision.
    #
    # @return [Types::GetMarketplaceRevenueShareOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetMarketplaceRevenueShareOutput#product_id #product_id} => String
    #   * {Types::GetMarketplaceRevenueShareOutput#arn #arn} => String
    #   * {Types::GetMarketplaceRevenueShareOutput#catalog #catalog} => String
    #   * {Types::GetMarketplaceRevenueShareOutput#product_code #product_code} => String
    #   * {Types::GetMarketplaceRevenueShareOutput#product_name #product_name} => String
    #   * {Types::GetMarketplaceRevenueShareOutput#created_date #created_date} => Time
    #   * {Types::GetMarketplaceRevenueShareOutput#last_modified_date #last_modified_date} => Time
    #   * {Types::GetMarketplaceRevenueShareOutput#revision #revision} => Integer
    #   * {Types::GetMarketplaceRevenueShareOutput#latest_revision #latest_revision} => Integer
    #   * {Types::GetMarketplaceRevenueShareOutput#total_active_marketplace_revenue_share_allocation_count #total_active_marketplace_revenue_share_allocation_count} => Integer
    #   * {Types::GetMarketplaceRevenueShareOutput#total_marketplace_revenue_share_allocation_count #total_marketplace_revenue_share_allocation_count} => Integer
    #
    #
    # @example Example: Example for GetMarketplaceRevenueShare
    #
    #   resp = client.get_marketplace_revenue_share({
    #     catalog: "AWS", 
    #     product_id: "prod-abc123def4567", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     arn: "arn:aws:partnercentral:us-east-1:123456789012:catalog/AWS/marketplace-revenue-share/prod-abc123def4567", 
    #     catalog: "AWS", 
    #     product_id: "prod-abc123def4567", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_marketplace_revenue_share({
    #     catalog: "AWS", # required, accepts AWS, Sandbox
    #     product_id: "MarketplaceProductId", # required
    #     revision: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.product_id #=> String
    #   resp.arn #=> String
    #   resp.catalog #=> String, one of "AWS", "Sandbox"
    #   resp.product_code #=> String
    #   resp.product_name #=> String
    #   resp.created_date #=> Time
    #   resp.last_modified_date #=> Time
    #   resp.revision #=> Integer
    #   resp.latest_revision #=> Integer
    #   resp.total_active_marketplace_revenue_share_allocation_count #=> Integer
    #   resp.total_marketplace_revenue_share_allocation_count #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-revenue-measurement-2022-07-26/GetMarketplaceRevenueShare AWS API Documentation
    #
    # @overload get_marketplace_revenue_share(params = {})
    # @param [Hash] params ({})
    def get_marketplace_revenue_share(params = {}, options = {})
      req = build_request(:get_marketplace_revenue_share, params)
      req.send_request(options)
    end

    # Retrieves the details of a specific marketplace revenue share
    # allocation.
    #
    # @option params [required, String] :catalog
    #   The catalog that the allocation belongs to.
    #
    # @option params [required, String] :product_id
    #   The AWS Marketplace product identifier of the parent revenue share.
    #
    # @option params [required, String] :marketplace_revenue_share_allocation_id
    #   The unique identifier of the allocation to retrieve.
    #
    # @option params [String] :marketplace_revenue_share_revision
    #   The revision of the parent marketplace revenue share at which to
    #   retrieve the allocation. Omit to return the latest.
    #
    # @return [Types::GetMarketplaceRevenueShareAllocationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetMarketplaceRevenueShareAllocationOutput#marketplace_revenue_share_allocation_id #marketplace_revenue_share_allocation_id} => String
    #   * {Types::GetMarketplaceRevenueShareAllocationOutput#product_id #product_id} => String
    #   * {Types::GetMarketplaceRevenueShareAllocationOutput#product_name #product_name} => String
    #   * {Types::GetMarketplaceRevenueShareAllocationOutput#arn #arn} => String
    #   * {Types::GetMarketplaceRevenueShareAllocationOutput#effective_from #effective_from} => String
    #   * {Types::GetMarketplaceRevenueShareAllocationOutput#effective_until #effective_until} => String
    #   * {Types::GetMarketplaceRevenueShareAllocationOutput#revenue_share_percent #revenue_share_percent} => String
    #   * {Types::GetMarketplaceRevenueShareAllocationOutput#status #status} => String
    #   * {Types::GetMarketplaceRevenueShareAllocationOutput#created_date #created_date} => Time
    #   * {Types::GetMarketplaceRevenueShareAllocationOutput#last_modified_date #last_modified_date} => Time
    #   * {Types::GetMarketplaceRevenueShareAllocationOutput#latest_marketplace_revenue_share_revision #latest_marketplace_revenue_share_revision} => String
    #
    #
    # @example Example: Example for GetMarketplaceRevenueShareAllocation
    #
    #   resp = client.get_marketplace_revenue_share_allocation({
    #     catalog: "AWS", 
    #     marketplace_revenue_share_allocation_id: "mrsa-abc123def4567", 
    #     product_id: "prod-abc123def4567", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     arn: "arn:aws:partnercentral:us-east-1:123456789012:catalog/AWS/marketplace-revenue-share-allocation/mrsa-abc123def4567", 
    #     effective_from: "2026-07-01", 
    #     marketplace_revenue_share_allocation_id: "mrsa-abc123def4567", 
    #     product_id: "prod-abc123def4567", 
    #     revenue_share_percent: "15.50", 
    #     status: "ACTIVE", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_marketplace_revenue_share_allocation({
    #     catalog: "AWS", # required, accepts AWS, Sandbox
    #     product_id: "MarketplaceProductId", # required
    #     marketplace_revenue_share_allocation_id: "MarketplaceRevenueShareAllocationId", # required
    #     marketplace_revenue_share_revision: "RevisionToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.marketplace_revenue_share_allocation_id #=> String
    #   resp.product_id #=> String
    #   resp.product_name #=> String
    #   resp.arn #=> String
    #   resp.effective_from #=> String
    #   resp.effective_until #=> String
    #   resp.revenue_share_percent #=> String
    #   resp.status #=> String, one of "ACTIVE", "INACTIVE"
    #   resp.created_date #=> Time
    #   resp.last_modified_date #=> Time
    #   resp.latest_marketplace_revenue_share_revision #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-revenue-measurement-2022-07-26/GetMarketplaceRevenueShareAllocation AWS API Documentation
    #
    # @overload get_marketplace_revenue_share_allocation(params = {})
    # @param [Hash] params ({})
    def get_marketplace_revenue_share_allocation(params = {}, options = {})
      req = build_request(:get_marketplace_revenue_share_allocation, params)
      req.send_request(options)
    end

    # Retrieves the details of a specific revenue attribution.
    #
    # @option params [required, String] :catalog
    #   The catalog that the revenue attribution belongs to.
    #
    # @option params [required, String] :identifier
    #   The unique identifier of the revenue attribution to retrieve. Accepts
    #   a direct ID or ARN.
    #
    # @option params [String] :revision
    #   The revision of the attribution to retrieve. Omit to return the latest
    #   revision.
    #
    # @return [Types::GetRevenueAttributionOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetRevenueAttributionOutput#arn #arn} => String
    #   * {Types::GetRevenueAttributionOutput#id #id} => String
    #   * {Types::GetRevenueAttributionOutput#catalog #catalog} => String
    #   * {Types::GetRevenueAttributionOutput#name #name} => String
    #   * {Types::GetRevenueAttributionOutput#description #description} => String
    #   * {Types::GetRevenueAttributionOutput#tenancy_model #tenancy_model} => String
    #   * {Types::GetRevenueAttributionOutput#marketplace_product #marketplace_product} => Types::MarketplaceProductSummary
    #   * {Types::GetRevenueAttributionOutput#created_date #created_date} => Time
    #   * {Types::GetRevenueAttributionOutput#last_modified_date #last_modified_date} => Time
    #   * {Types::GetRevenueAttributionOutput#revision #revision} => String
    #   * {Types::GetRevenueAttributionOutput#latest_revision #latest_revision} => String
    #   * {Types::GetRevenueAttributionOutput#effective_from #effective_from} => String
    #   * {Types::GetRevenueAttributionOutput#effective_until #effective_until} => String
    #   * {Types::GetRevenueAttributionOutput#total_active_revenue_attribution_allocation_count #total_active_revenue_attribution_allocation_count} => Integer
    #   * {Types::GetRevenueAttributionOutput#total_revenue_attribution_allocation_count #total_revenue_attribution_allocation_count} => Integer
    #
    #
    # @example Example: Example for GetRevenueAttribution
    #
    #   resp = client.get_revenue_attribution({
    #     catalog: "AWS", 
    #     identifier: "ra-0a1b2c3d4e5f6", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     arn: "arn:aws:partnercentral:us-east-1:123456789012:catalog/AWS/revenue-attribution/ra-0a1b2c3d4e5f6", 
    #     catalog: "AWS", 
    #     id: "ra-0a1b2c3d4e5f6", 
    #     tenancy_model: "MULTI_TENANT", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_revenue_attribution({
    #     catalog: "AWS", # required, accepts AWS, Sandbox
    #     identifier: "RevenueAttributionIdentifier", # required
    #     revision: "RevisionToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.id #=> String
    #   resp.catalog #=> String, one of "AWS", "Sandbox"
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.tenancy_model #=> String, one of "MULTI_TENANT", "SINGLE_TENANT"
    #   resp.marketplace_product.product_id #=> String
    #   resp.marketplace_product.product_code #=> String
    #   resp.marketplace_product.product_name #=> String
    #   resp.created_date #=> Time
    #   resp.last_modified_date #=> Time
    #   resp.revision #=> String
    #   resp.latest_revision #=> String
    #   resp.effective_from #=> String
    #   resp.effective_until #=> String
    #   resp.total_active_revenue_attribution_allocation_count #=> Integer
    #   resp.total_revenue_attribution_allocation_count #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-revenue-measurement-2022-07-26/GetRevenueAttribution AWS API Documentation
    #
    # @overload get_revenue_attribution(params = {})
    # @param [Hash] params ({})
    def get_revenue_attribution(params = {}, options = {})
      req = build_request(:get_revenue_attribution, params)
      req.send_request(options)
    end

    # Retrieves a single allocation by its RevenueAttributionAllocationId.
    # Supports optional point-in-time version queries.
    #
    # @option params [required, String] :catalog
    #   The catalog that contains the resource.
    #
    # @option params [required, String] :revenue_attribution_identifier
    #   The revenue attribution identifier.
    #
    # @option params [required, String] :revenue_attribution_allocation_id
    #   The allocation identifier.
    #
    # @option params [String] :revenue_attribution_revision
    #   Point-in-time revision number to query.
    #
    # @return [Types::GetRevenueAttributionAllocationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetRevenueAttributionAllocationOutput#revenue_attribution_allocation_id #revenue_attribution_allocation_id} => String
    #   * {Types::GetRevenueAttributionAllocationOutput#revenue_attribution_identifier #revenue_attribution_identifier} => String
    #   * {Types::GetRevenueAttributionAllocationOutput#entity_type #entity_type} => String
    #   * {Types::GetRevenueAttributionAllocationOutput#entity_identifier #entity_identifier} => String
    #   * {Types::GetRevenueAttributionAllocationOutput#entity_name #entity_name} => String
    #   * {Types::GetRevenueAttributionAllocationOutput#customer_aws_account_id #customer_aws_account_id} => String
    #   * {Types::GetRevenueAttributionAllocationOutput#revenue_share_percent #revenue_share_percent} => String
    #   * {Types::GetRevenueAttributionAllocationOutput#effective_from #effective_from} => String
    #   * {Types::GetRevenueAttributionAllocationOutput#effective_until #effective_until} => String
    #   * {Types::GetRevenueAttributionAllocationOutput#status #status} => String
    #   * {Types::GetRevenueAttributionAllocationOutput#created_date #created_date} => Time
    #   * {Types::GetRevenueAttributionAllocationOutput#last_modified_date #last_modified_date} => Time
    #   * {Types::GetRevenueAttributionAllocationOutput#revenue_attribution_revision #revenue_attribution_revision} => String
    #   * {Types::GetRevenueAttributionAllocationOutput#revenue_attribution_latest_revision #revenue_attribution_latest_revision} => String
    #
    #
    # @example Example: Example for GetRevenueAttributionAllocation
    #
    #   resp = client.get_revenue_attribution_allocation({
    #     catalog: "AWS", 
    #     revenue_attribution_allocation_id: "alloc-abc123def4567", 
    #     revenue_attribution_identifier: "ra-0a1b2c3d4e5f6", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     created_date: Time.parse(1719792000), 
    #     customer_aws_account_id: "123456789012", 
    #     effective_from: "2026-07-01", 
    #     effective_until: "2026-07-31", 
    #     entity_identifier: "offer-abc123", 
    #     entity_type: "OFFER", 
    #     last_modified_date: Time.parse(1719792000), 
    #     revenue_attribution_allocation_id: "alloc-abc123def4567", 
    #     revenue_attribution_identifier: "ra-0a1b2c3d4e5f6", 
    #     revenue_attribution_latest_revision: "1", 
    #     revenue_attribution_revision: "1", 
    #     revenue_share_percent: "15.50", 
    #     status: "ACTIVE", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_revenue_attribution_allocation({
    #     catalog: "AWS", # required, accepts AWS, Sandbox
    #     revenue_attribution_identifier: "RevenueAttributionIdentifier", # required
    #     revenue_attribution_allocation_id: "RevenueAttributionAllocationId", # required
    #     revenue_attribution_revision: "RevisionToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.revenue_attribution_allocation_id #=> String
    #   resp.revenue_attribution_identifier #=> String
    #   resp.entity_type #=> String, one of "OFFER", "OPPORTUNITY"
    #   resp.entity_identifier #=> String
    #   resp.entity_name #=> String
    #   resp.customer_aws_account_id #=> String
    #   resp.revenue_share_percent #=> String
    #   resp.effective_from #=> String
    #   resp.effective_until #=> String
    #   resp.status #=> String, one of "ACTIVE", "INACTIVE"
    #   resp.created_date #=> Time
    #   resp.last_modified_date #=> Time
    #   resp.revenue_attribution_revision #=> String
    #   resp.revenue_attribution_latest_revision #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-revenue-measurement-2022-07-26/GetRevenueAttributionAllocation AWS API Documentation
    #
    # @overload get_revenue_attribution_allocation(params = {})
    # @param [Hash] params ({})
    def get_revenue_attribution_allocation(params = {}, options = {})
      req = build_request(:get_revenue_attribution_allocation, params)
      req.send_request(options)
    end

    # Retrieves the current status of a previously submitted allocations
    # task. When COMPLETE, includes the latest revision. When FAILED,
    # includes error details.
    #
    # @option params [required, String] :catalog
    #   The catalog that contains the resource.
    #
    # @option params [required, String] :revenue_attribution_identifier
    #   The revenue attribution identifier.
    #
    # @return [Types::GetRevenueAttributionAllocationsTaskOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetRevenueAttributionAllocationsTaskOutput#task_id #task_id} => String
    #   * {Types::GetRevenueAttributionAllocationsTaskOutput#status #status} => String
    #   * {Types::GetRevenueAttributionAllocationsTaskOutput#catalog #catalog} => String
    #   * {Types::GetRevenueAttributionAllocationsTaskOutput#revenue_attribution_arn #revenue_attribution_arn} => String
    #   * {Types::GetRevenueAttributionAllocationsTaskOutput#started_at #started_at} => Time
    #   * {Types::GetRevenueAttributionAllocationsTaskOutput#ended_at #ended_at} => Time
    #   * {Types::GetRevenueAttributionAllocationsTaskOutput#total_revenue_attribution_allocation_records #total_revenue_attribution_allocation_records} => Integer
    #   * {Types::GetRevenueAttributionAllocationsTaskOutput#description #description} => String
    #   * {Types::GetRevenueAttributionAllocationsTaskOutput#revenue_attribution_latest_revision #revenue_attribution_latest_revision} => String
    #   * {Types::GetRevenueAttributionAllocationsTaskOutput#error_detail_list #error_detail_list} => Array&lt;Types::RevenueAttributionAllocationErrorDetail&gt;
    #
    #
    # @example Example: Example for GetRevenueAttributionAllocationsTask
    #
    #   resp = client.get_revenue_attribution_allocations_task({
    #     catalog: "AWS", 
    #     revenue_attribution_identifier: "ra-0a1b2c3d4e5f6", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     catalog: "AWS", 
    #     revenue_attribution_arn: "arn:aws:partnercentral:us-east-1:123456789012:catalog/AWS/revenue-attribution/ra-0a1b2c3d4e5f6", 
    #     started_at: Time.parse(1719792000), 
    #     status: "COMPLETE", 
    #     task_id: "raatask-abc123def4567", 
    #     total_revenue_attribution_allocation_records: 1, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_revenue_attribution_allocations_task({
    #     catalog: "AWS", # required, accepts AWS, Sandbox
    #     revenue_attribution_identifier: "RevenueAttributionIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.task_id #=> String
    #   resp.status #=> String, one of "IN_PROGRESS", "COMPLETE", "FAILED"
    #   resp.catalog #=> String, one of "AWS", "Sandbox"
    #   resp.revenue_attribution_arn #=> String
    #   resp.started_at #=> Time
    #   resp.ended_at #=> Time
    #   resp.total_revenue_attribution_allocation_records #=> Integer
    #   resp.description #=> String
    #   resp.revenue_attribution_latest_revision #=> String
    #   resp.error_detail_list #=> Array
    #   resp.error_detail_list[0].revenue_attribution_allocation_id #=> String
    #   resp.error_detail_list[0].entity_type #=> String, one of "OFFER", "OPPORTUNITY"
    #   resp.error_detail_list[0].entity_id #=> String
    #   resp.error_detail_list[0].customer_aws_account_id #=> String
    #   resp.error_detail_list[0].effective_from #=> String
    #   resp.error_detail_list[0].effective_until #=> String
    #   resp.error_detail_list[0].action #=> String, one of "CREATE", "UPDATE"
    #   resp.error_detail_list[0].error_code #=> String, one of "ALLOCATION_CAP_EXCEEDED", "RESOURCE_NOT_FOUND", "IMMUTABLE_ALLOCATION", "ACCESS_DENIED", "INVALID_VALUE", "CONCURRENT_MODIFICATION", "INTERNAL_ERROR"
    #   resp.error_detail_list[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-revenue-measurement-2022-07-26/GetRevenueAttributionAllocationsTask AWS API Documentation
    #
    # @overload get_revenue_attribution_allocations_task(params = {})
    # @param [Hash] params ({})
    def get_revenue_attribution_allocations_task(params = {}, options = {})
      req = build_request(:get_revenue_attribution_allocations_task, params)
      req.send_request(options)
    end

    # Returns a paginated list of allocations under a marketplace revenue
    # share, with optional filtering by status and effective date range.
    # Supports historical reads at a specific share revision.
    #
    # @option params [required, String] :catalog
    #   The catalog containing the allocations.
    #
    # @option params [required, String] :product_id
    #   The AWS Marketplace product identifier for the parent revenue share.
    #
    # @option params [String] :status
    #   Filter by allocation status.
    #
    # @option params [String] :after_effective_from
    #   Inclusive lower bound for EffectiveFrom date filter.
    #
    # @option params [String] :before_effective_from
    #   Exclusive upper bound for EffectiveFrom date filter (half-open range).
    #
    # @option params [String] :sort_by
    #   The field to sort marketplace revenue share allocations by.
    #
    # @option params [String] :sort_order
    #   The direction to sort results. Defaults to DESCENDING.
    #
    # @option params [Integer] :max_results
    #   Maximum number of results per page.
    #
    # @option params [String] :next_token
    #   Pagination token from a previous response.
    #
    # @option params [String] :marketplace_revenue_share_revision
    #   Optional share revision for historical list. Returns allocations as
    #   they existed at this revision.
    #
    # @return [Types::ListMarketplaceRevenueShareAllocationsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListMarketplaceRevenueShareAllocationsOutput#marketplace_revenue_share_allocation_summaries #marketplace_revenue_share_allocation_summaries} => Array&lt;Types::MarketplaceRevenueShareAllocationSummary&gt;
    #   * {Types::ListMarketplaceRevenueShareAllocationsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: Example for ListMarketplaceRevenueShareAllocations
    #
    #   resp = client.list_marketplace_revenue_share_allocations({
    #     catalog: "AWS", 
    #     product_id: "prod-abc123def4567", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     marketplace_revenue_share_allocation_summaries: [
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_marketplace_revenue_share_allocations({
    #     catalog: "AWS", # required, accepts AWS, Sandbox
    #     product_id: "MarketplaceProductId", # required
    #     status: "ACTIVE", # accepts ACTIVE, INACTIVE
    #     after_effective_from: "AllocationEffectiveDateString",
    #     before_effective_from: "AllocationEffectiveDateString",
    #     sort_by: "EffectiveFrom", # accepts EffectiveFrom
    #     sort_order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #     max_results: 1,
    #     next_token: "NextToken",
    #     marketplace_revenue_share_revision: "RevisionToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.marketplace_revenue_share_allocation_summaries #=> Array
    #   resp.marketplace_revenue_share_allocation_summaries[0].marketplace_revenue_share_allocation_id #=> String
    #   resp.marketplace_revenue_share_allocation_summaries[0].product_id #=> String
    #   resp.marketplace_revenue_share_allocation_summaries[0].product_name #=> String
    #   resp.marketplace_revenue_share_allocation_summaries[0].arn #=> String
    #   resp.marketplace_revenue_share_allocation_summaries[0].effective_from #=> String
    #   resp.marketplace_revenue_share_allocation_summaries[0].effective_until #=> String
    #   resp.marketplace_revenue_share_allocation_summaries[0].revenue_share_percent #=> String
    #   resp.marketplace_revenue_share_allocation_summaries[0].status #=> String, one of "ACTIVE", "INACTIVE"
    #   resp.marketplace_revenue_share_allocation_summaries[0].created_date #=> Time
    #   resp.marketplace_revenue_share_allocation_summaries[0].last_modified_date #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-revenue-measurement-2022-07-26/ListMarketplaceRevenueShareAllocations AWS API Documentation
    #
    # @overload list_marketplace_revenue_share_allocations(params = {})
    # @param [Hash] params ({})
    def list_marketplace_revenue_share_allocations(params = {}, options = {})
      req = build_request(:list_marketplace_revenue_share_allocations, params)
      req.send_request(options)
    end

    # Returns a paginated list of marketplace revenue shares with optional
    # filters.
    #
    # @option params [required, String] :catalog
    #   The catalog to list marketplace revenue shares from.
    #
    # @option params [Array<String>] :product_ids
    #   Filter results to only include shares with these product identifiers.
    #
    # @option params [Array<String>] :product_codes
    #   Filter results to only include shares with these product codes.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call.
    #
    # @option params [String] :next_token
    #   Token for pagination. Use the value returned in the previous response
    #   to retrieve the next page.
    #
    # @option params [String] :sort_by
    #   The field to sort marketplace revenue shares by.
    #
    # @option params [String] :sort_order
    #   The direction to sort results.
    #
    # @option params [Time,DateTime,Date,Integer,String] :created_after
    #   Filter results to only include marketplace revenue shares created
    #   after this timestamp.
    #
    # @option params [Time,DateTime,Date,Integer,String] :created_before
    #   Filter results to only include marketplace revenue shares created
    #   before this timestamp.
    #
    # @return [Types::ListMarketplaceRevenueSharesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListMarketplaceRevenueSharesOutput#marketplace_revenue_share_summaries #marketplace_revenue_share_summaries} => Array&lt;Types::MarketplaceRevenueShareSummary&gt;
    #   * {Types::ListMarketplaceRevenueSharesOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: Example for ListMarketplaceRevenueShares
    #
    #   resp = client.list_marketplace_revenue_shares({
    #     catalog: "AWS", 
    #     max_results: 10, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     marketplace_revenue_share_summaries: [
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_marketplace_revenue_shares({
    #     catalog: "AWS", # required, accepts AWS, Sandbox
    #     product_ids: ["MarketplaceProductId"],
    #     product_codes: ["String"],
    #     max_results: 1,
    #     next_token: "NextToken",
    #     sort_by: "LastModifiedDate", # accepts LastModifiedDate
    #     sort_order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #     created_after: Time.now,
    #     created_before: Time.now,
    #   })
    #
    # @example Response structure
    #
    #   resp.marketplace_revenue_share_summaries #=> Array
    #   resp.marketplace_revenue_share_summaries[0].product_id #=> String
    #   resp.marketplace_revenue_share_summaries[0].arn #=> String
    #   resp.marketplace_revenue_share_summaries[0].catalog #=> String, one of "AWS", "Sandbox"
    #   resp.marketplace_revenue_share_summaries[0].product_code #=> String
    #   resp.marketplace_revenue_share_summaries[0].product_name #=> String
    #   resp.marketplace_revenue_share_summaries[0].created_date #=> Time
    #   resp.marketplace_revenue_share_summaries[0].last_modified_date #=> Time
    #   resp.marketplace_revenue_share_summaries[0].latest_revision #=> Integer
    #   resp.marketplace_revenue_share_summaries[0].total_active_marketplace_revenue_share_allocation_count #=> Integer
    #   resp.marketplace_revenue_share_summaries[0].total_marketplace_revenue_share_allocation_count #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-revenue-measurement-2022-07-26/ListMarketplaceRevenueShares AWS API Documentation
    #
    # @overload list_marketplace_revenue_shares(params = {})
    # @param [Hash] params ({})
    def list_marketplace_revenue_shares(params = {}, options = {})
      req = build_request(:list_marketplace_revenue_shares, params)
      req.send_request(options)
    end

    # Returns a paginated list of committed allocations with support for
    # filtering by entity, customer, status, or date range.
    #
    # @option params [required, String] :catalog
    #   The catalog that contains the resource.
    #
    # @option params [required, String] :revenue_attribution_identifier
    #   The revenue attribution identifier to query.
    #
    # @option params [Array<String>] :entity_type_filters
    #   Filter by deal entity types.
    #
    # @option params [Array<String>] :entity_identifier_filters
    #   Filter by deal entity identifiers.
    #
    # @option params [Array<String>] :customer_aws_account_id_filters
    #   Filter by customer AWS account IDs for associated deal entities.
    #
    # @option params [String] :status_filter
    #   Filter by allocation status.
    #
    # @option params [String] :after_effective_from
    #   Inclusive lower bound for EffectiveFrom date filter.
    #
    # @option params [String] :before_effective_from
    #   Exclusive upper bound for EffectiveFrom date filter (half-open range).
    #
    # @option params [String] :after_effective_until
    #   Inclusive lower bound for EffectiveUntil date filter.
    #
    # @option params [String] :before_effective_until
    #   Exclusive upper bound for EffectiveUntil date filter (half-open
    #   range).
    #
    # @option params [String] :sort_by
    #   Field to sort by.
    #
    # @option params [String] :sort_order
    #   Sort direction. Defaults to ASCENDING.
    #
    # @option params [String] :revenue_attribution_revision
    #   Point-in-time revision number to query.
    #
    # @option params [Integer] :max_results
    #   Maximum results per page.
    #
    # @option params [String] :next_token
    #   Pagination token from previous response.
    #
    # @return [Types::ListRevenueAttributionAllocationsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListRevenueAttributionAllocationsOutput#revenue_attribution_allocation_summaries #revenue_attribution_allocation_summaries} => Array&lt;Types::RevenueAttributionAllocationSummary&gt;
    #   * {Types::ListRevenueAttributionAllocationsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: Example for ListRevenueAttributionAllocations
    #
    #   resp = client.list_revenue_attribution_allocations({
    #     catalog: "AWS", 
    #     revenue_attribution_identifier: "ra-0a1b2c3d4e5f6", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     revenue_attribution_allocation_summaries: [
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_revenue_attribution_allocations({
    #     catalog: "AWS", # required, accepts AWS, Sandbox
    #     revenue_attribution_identifier: "RevenueAttributionIdentifier", # required
    #     entity_type_filters: ["OFFER"], # accepts OFFER, OPPORTUNITY
    #     entity_identifier_filters: ["EntityIdentifier"],
    #     customer_aws_account_id_filters: ["CustomerAwsAccountId"],
    #     status_filter: "ACTIVE", # accepts ACTIVE, INACTIVE
    #     after_effective_from: "AllocationEffectiveDateString",
    #     before_effective_from: "AllocationEffectiveDateString",
    #     after_effective_until: "AllocationEffectiveDateString",
    #     before_effective_until: "AllocationEffectiveDateString",
    #     sort_by: "EffectiveFrom", # accepts EffectiveFrom
    #     sort_order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #     revenue_attribution_revision: "RevisionToken",
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.revenue_attribution_allocation_summaries #=> Array
    #   resp.revenue_attribution_allocation_summaries[0].revenue_attribution_allocation_id #=> String
    #   resp.revenue_attribution_allocation_summaries[0].revenue_attribution_identifier #=> String
    #   resp.revenue_attribution_allocation_summaries[0].entity_type #=> String, one of "OFFER", "OPPORTUNITY"
    #   resp.revenue_attribution_allocation_summaries[0].entity_identifier #=> String
    #   resp.revenue_attribution_allocation_summaries[0].entity_name #=> String
    #   resp.revenue_attribution_allocation_summaries[0].customer_aws_account_id #=> String
    #   resp.revenue_attribution_allocation_summaries[0].revenue_share_percent #=> String
    #   resp.revenue_attribution_allocation_summaries[0].effective_from #=> String
    #   resp.revenue_attribution_allocation_summaries[0].effective_until #=> String
    #   resp.revenue_attribution_allocation_summaries[0].status #=> String, one of "ACTIVE", "INACTIVE"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-revenue-measurement-2022-07-26/ListRevenueAttributionAllocations AWS API Documentation
    #
    # @overload list_revenue_attribution_allocations(params = {})
    # @param [Hash] params ({})
    def list_revenue_attribution_allocations(params = {}, options = {})
      req = build_request(:list_revenue_attribution_allocations, params)
      req.send_request(options)
    end

    # Returns a paginated list of revenue attributions with optional
    # filters.
    #
    # @option params [required, String] :catalog
    #   The catalog to list revenue attributions from.
    #
    # @option params [Array<String>] :identifiers
    #   Filter results to only include revenue attributions with the specified
    #   identifiers.
    #
    # @option params [Time,DateTime,Date,Integer,String] :created_after
    #   Filter results to only include revenue attributions created after this
    #   timestamp.
    #
    # @option params [Time,DateTime,Date,Integer,String] :created_before
    #   Filter results to only include revenue attributions created before
    #   this timestamp.
    #
    # @option params [String] :sort_by
    #   The field to sort revenue attributions by.
    #
    # @option params [String] :sort_order
    #   The direction to sort results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call.
    #
    # @option params [String] :next_token
    #   Token for pagination. Use the value returned in the previous response
    #   to retrieve the next page.
    #
    # @return [Types::ListRevenueAttributionsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListRevenueAttributionsOutput#revenue_attribution_summaries #revenue_attribution_summaries} => Array&lt;Types::AttributionSummary&gt;
    #   * {Types::ListRevenueAttributionsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: Example for ListRevenueAttributions
    #
    #   resp = client.list_revenue_attributions({
    #     catalog: "AWS", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     revenue_attribution_summaries: [
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_revenue_attributions({
    #     catalog: "AWS", # required, accepts AWS, Sandbox
    #     identifiers: ["RevenueAttributionIdentifier"],
    #     created_after: Time.now,
    #     created_before: Time.now,
    #     sort_by: "LastModifiedDate", # accepts LastModifiedDate
    #     sort_order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.revenue_attribution_summaries #=> Array
    #   resp.revenue_attribution_summaries[0].arn #=> String
    #   resp.revenue_attribution_summaries[0].id #=> String
    #   resp.revenue_attribution_summaries[0].catalog #=> String, one of "AWS", "Sandbox"
    #   resp.revenue_attribution_summaries[0].name #=> String
    #   resp.revenue_attribution_summaries[0].tenancy_model #=> String, one of "MULTI_TENANT", "SINGLE_TENANT"
    #   resp.revenue_attribution_summaries[0].marketplace_product.product_id #=> String
    #   resp.revenue_attribution_summaries[0].marketplace_product.product_code #=> String
    #   resp.revenue_attribution_summaries[0].marketplace_product.product_name #=> String
    #   resp.revenue_attribution_summaries[0].created_date #=> Time
    #   resp.revenue_attribution_summaries[0].last_modified_date #=> Time
    #   resp.revenue_attribution_summaries[0].latest_revision #=> String
    #   resp.revenue_attribution_summaries[0].effective_from #=> String
    #   resp.revenue_attribution_summaries[0].effective_until #=> String
    #   resp.revenue_attribution_summaries[0].total_active_revenue_attribution_allocation_count #=> Integer
    #   resp.revenue_attribution_summaries[0].total_revenue_attribution_allocation_count #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-revenue-measurement-2022-07-26/ListRevenueAttributions AWS API Documentation
    #
    # @overload list_revenue_attributions(params = {})
    # @param [Hash] params ({})
    def list_revenue_attributions(params = {}, options = {})
      req = build_request(:list_revenue_attributions, params)
      req.send_request(options)
    end

    # Returns the tags associated with the specified resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource to list tags for.
    #
    # @return [Types::ListTagsForResourceOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceOutput#tags #tags} => Array&lt;Types::Tag&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "ResourceARN", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-revenue-measurement-2022-07-26/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Submits a batch of up to 250 allocation changes (CREATE and/or UPDATE)
    # for asynchronous processing. Returns a TaskId for tracking.
    #
    # @option params [required, String] :catalog
    #   The catalog context for this operation.
    #
    # @option params [required, String] :revenue_attribution_identifier
    #   The revenue attribution identifier.
    #
    # @option params [required, String] :revenue_attribution_revision
    #   Current revision of the revenue attribution for optimistic locking.
    #
    # @option params [required, Array<Types::RevenueShareAllocation>] :revenue_share_allocations
    #   The list of allocation changes to process in this batch.
    #
    # @option params [String] :client_token
    #   Idempotency token for deduplication and retry.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :description
    #   Human-readable description of the batch.
    #
    # @return [Types::StartRevenueAttributionAllocationsTaskOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartRevenueAttributionAllocationsTaskOutput#task_id #task_id} => String
    #   * {Types::StartRevenueAttributionAllocationsTaskOutput#status #status} => String
    #   * {Types::StartRevenueAttributionAllocationsTaskOutput#catalog #catalog} => String
    #   * {Types::StartRevenueAttributionAllocationsTaskOutput#revenue_attribution_arn #revenue_attribution_arn} => String
    #   * {Types::StartRevenueAttributionAllocationsTaskOutput#started_at #started_at} => Time
    #   * {Types::StartRevenueAttributionAllocationsTaskOutput#total_revenue_attribution_allocation_records #total_revenue_attribution_allocation_records} => Integer
    #
    #
    # @example Example: Example for StartRevenueAttributionAllocationsTask
    #
    #   resp = client.start_revenue_attribution_allocations_task({
    #     catalog: "AWS", 
    #     client_token: "unique-token-123", 
    #     revenue_attribution_identifier: "ra-0a1b2c3d4e5f6", 
    #     revenue_attribution_revision: "1", 
    #     revenue_share_allocations: [
    #       {
    #         action: "CREATE", 
    #         customer_aws_account_id: "123456789012", 
    #         effective_from: "2026-07-01", 
    #         effective_until: "2026-07-31", 
    #         entity_identifier: "offer-abc123", 
    #         entity_type: "OFFER", 
    #         revenue_share_percent: "15.50", 
    #       }, 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     catalog: "AWS", 
    #     revenue_attribution_arn: "arn:aws:partnercentral:us-east-1:123456789012:catalog/AWS/revenue-attribution/ra-0a1b2c3d4e5f6", 
    #     started_at: Time.parse(1719792000), 
    #     status: "IN_PROGRESS", 
    #     task_id: "raatask-abc123def4567", 
    #     total_revenue_attribution_allocation_records: 1, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_revenue_attribution_allocations_task({
    #     catalog: "AWS", # required, accepts AWS, Sandbox
    #     revenue_attribution_identifier: "RevenueAttributionIdentifier", # required
    #     revenue_attribution_revision: "RevisionToken", # required
    #     revenue_share_allocations: [ # required
    #       {
    #         action: "CREATE", # required, accepts CREATE, UPDATE
    #         revenue_attribution_allocation_id: "RevenueAttributionAllocationId",
    #         entity_type: "OFFER", # required, accepts OFFER, OPPORTUNITY
    #         entity_identifier: "EntityIdentifier", # required
    #         customer_aws_account_id: "CustomerAwsAccountId", # required
    #         revenue_share_percent: "RevenueSharePercent", # required
    #         effective_from: "AllocationEffectiveDateString", # required
    #         effective_until: "AllocationEffectiveDateString", # required
    #         status: "ACTIVE", # accepts ACTIVE, INACTIVE
    #       },
    #     ],
    #     client_token: "ClientToken",
    #     description: "StartRevenueAttributionAllocationsTaskInputDescriptionString",
    #   })
    #
    # @example Response structure
    #
    #   resp.task_id #=> String
    #   resp.status #=> String, one of "IN_PROGRESS", "COMPLETE", "FAILED"
    #   resp.catalog #=> String, one of "AWS", "Sandbox"
    #   resp.revenue_attribution_arn #=> String
    #   resp.started_at #=> Time
    #   resp.total_revenue_attribution_allocation_records #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-revenue-measurement-2022-07-26/StartRevenueAttributionAllocationsTask AWS API Documentation
    #
    # @overload start_revenue_attribution_allocations_task(params = {})
    # @param [Hash] params ({})
    def start_revenue_attribution_allocations_task(params = {}, options = {})
      req = build_request(:start_revenue_attribution_allocations_task, params)
      req.send_request(options)
    end

    # Adds or overwrites one or more tags for the specified resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource to tag.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   The tags to add to the resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "ResourceARN", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-revenue-measurement-2022-07-26/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes one or more tags from the specified resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource to remove tags from.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The tag keys to remove from the resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "ResourceARN", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-revenue-measurement-2022-07-26/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates an existing marketplace revenue share allocation. Supports
    # modifying effective dates, revenue share percentage, and status with
    # time-based mutability rules.
    #
    # @option params [required, String] :catalog
    #   The catalog containing the allocation.
    #
    # @option params [required, String] :product_id
    #   The AWS Marketplace product identifier for the parent revenue share.
    #
    # @option params [required, String] :marketplace_revenue_share_allocation_id
    #   The identifier of the allocation to update.
    #
    # @option params [required, String] :marketplace_revenue_share_revision
    #   The current revision of the parent share. Must match for optimistic
    #   concurrency control.
    #
    # @option params [String] :client_token
    #   A unique token to ensure idempotency of the update request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :effective_from
    #   The new effective start date. Must be the first day of a month. Only
    #   modifiable on future-dated allocations.
    #
    # @option params [String] :effective_until
    #   The new effective end date. Must be the last day of a month and on or
    #   after today.
    #
    # @option params [String] :revenue_share_percent
    #   The new revenue share percentage. Only modifiable on future-dated
    #   allocations.
    #
    # @option params [String] :status
    #   The new status. Set to INACTIVE for soft-delete. Only modifiable on
    #   future-dated allocations.
    #
    # @return [Types::UpdateMarketplaceRevenueShareAllocationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateMarketplaceRevenueShareAllocationOutput#marketplace_revenue_share_allocation_id #marketplace_revenue_share_allocation_id} => String
    #   * {Types::UpdateMarketplaceRevenueShareAllocationOutput#product_id #product_id} => String
    #   * {Types::UpdateMarketplaceRevenueShareAllocationOutput#product_name #product_name} => String
    #   * {Types::UpdateMarketplaceRevenueShareAllocationOutput#arn #arn} => String
    #   * {Types::UpdateMarketplaceRevenueShareAllocationOutput#effective_from #effective_from} => String
    #   * {Types::UpdateMarketplaceRevenueShareAllocationOutput#effective_until #effective_until} => String
    #   * {Types::UpdateMarketplaceRevenueShareAllocationOutput#revenue_share_percent #revenue_share_percent} => String
    #   * {Types::UpdateMarketplaceRevenueShareAllocationOutput#status #status} => String
    #   * {Types::UpdateMarketplaceRevenueShareAllocationOutput#created_date #created_date} => Time
    #   * {Types::UpdateMarketplaceRevenueShareAllocationOutput#last_modified_date #last_modified_date} => Time
    #   * {Types::UpdateMarketplaceRevenueShareAllocationOutput#latest_marketplace_revenue_share_revision #latest_marketplace_revenue_share_revision} => String
    #
    #
    # @example Example: Example for UpdateMarketplaceRevenueShareAllocation
    #
    #   resp = client.update_marketplace_revenue_share_allocation({
    #     catalog: "AWS", 
    #     marketplace_revenue_share_allocation_id: "mrsa-abc123def4567", 
    #     marketplace_revenue_share_revision: "1", 
    #     product_id: "prod-abc123def4567", 
    #     revenue_share_percent: "20.00", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     arn: "arn:aws:partnercentral:us-east-1:123456789012:catalog/AWS/marketplace-revenue-share-allocation/mrsa-abc123def4567", 
    #     effective_from: "2026-07-01", 
    #     marketplace_revenue_share_allocation_id: "mrsa-abc123def4567", 
    #     product_id: "prod-abc123def4567", 
    #     revenue_share_percent: "20.00", 
    #     status: "ACTIVE", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_marketplace_revenue_share_allocation({
    #     catalog: "AWS", # required, accepts AWS, Sandbox
    #     product_id: "MarketplaceProductId", # required
    #     marketplace_revenue_share_allocation_id: "MarketplaceRevenueShareAllocationId", # required
    #     marketplace_revenue_share_revision: "RevisionToken", # required
    #     client_token: "ClientToken",
    #     effective_from: "AllocationEffectiveDateString",
    #     effective_until: "AllocationEffectiveDateString",
    #     revenue_share_percent: "RevenueSharePercent",
    #     status: "ACTIVE", # accepts ACTIVE, INACTIVE
    #   })
    #
    # @example Response structure
    #
    #   resp.marketplace_revenue_share_allocation_id #=> String
    #   resp.product_id #=> String
    #   resp.product_name #=> String
    #   resp.arn #=> String
    #   resp.effective_from #=> String
    #   resp.effective_until #=> String
    #   resp.revenue_share_percent #=> String
    #   resp.status #=> String, one of "ACTIVE", "INACTIVE"
    #   resp.created_date #=> Time
    #   resp.last_modified_date #=> Time
    #   resp.latest_marketplace_revenue_share_revision #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-revenue-measurement-2022-07-26/UpdateMarketplaceRevenueShareAllocation AWS API Documentation
    #
    # @overload update_marketplace_revenue_share_allocation(params = {})
    # @param [Hash] params ({})
    def update_marketplace_revenue_share_allocation(params = {}, options = {})
      req = build_request(:update_marketplace_revenue_share_allocation, params)
      req.send_request(options)
    end

    # Updates an existing revenue attribution record.
    #
    # @option params [required, String] :catalog
    #   The catalog that the revenue attribution belongs to.
    #
    # @option params [required, String] :identifier
    #   The unique identifier of the revenue attribution to update. Accepts a
    #   direct ID or ARN.
    #
    # @option params [String] :client_token
    #   A unique token to ensure idempotency of the update request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :description
    #   The updated description of the revenue attribution.
    #
    # @option params [required, String] :revision
    #   The current revision of the revenue attribution. Must match the
    #   server's current value.
    #
    # @return [Types::UpdateRevenueAttributionOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateRevenueAttributionOutput#id #id} => String
    #   * {Types::UpdateRevenueAttributionOutput#arn #arn} => String
    #   * {Types::UpdateRevenueAttributionOutput#description #description} => String
    #   * {Types::UpdateRevenueAttributionOutput#last_modified_date #last_modified_date} => Time
    #   * {Types::UpdateRevenueAttributionOutput#latest_revision #latest_revision} => String
    #
    #
    # @example Example: Example for UpdateRevenueAttribution
    #
    #   resp = client.update_revenue_attribution({
    #     catalog: "AWS", 
    #     identifier: "ra-0a1b2c3d4e5f6", 
    #     revision: "1", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     arn: "arn:aws:partnercentral:us-east-1:123456789012:catalog/AWS/revenue-attribution/ra-0a1b2c3d4e5f6", 
    #     id: "ra-0a1b2c3d4e5f6", 
    #     last_modified_date: Time.parse(1719792000), 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_revenue_attribution({
    #     catalog: "AWS", # required, accepts AWS, Sandbox
    #     identifier: "RevenueAttributionIdentifier", # required
    #     client_token: "ClientToken",
    #     description: "UpdateRevenueAttributionInputDescriptionString",
    #     revision: "RevisionToken", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.arn #=> String
    #   resp.description #=> String
    #   resp.last_modified_date #=> Time
    #   resp.latest_revision #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-revenue-measurement-2022-07-26/UpdateRevenueAttribution AWS API Documentation
    #
    # @overload update_revenue_attribution(params = {})
    # @param [Hash] params ({})
    def update_revenue_attribution(params = {}, options = {})
      req = build_request(:update_revenue_attribution, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::PartnerCentralRevenueMeasurement')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-partnercentralrevenuemeasurement'
      context[:gem_version] = '1.1.0'
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
