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

module Aws::MarketplaceDiscovery
  # An API client for MarketplaceDiscovery.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::MarketplaceDiscovery::Client.new(
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

    @identifier = :marketplacediscovery

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
    add_plugin(Aws::MarketplaceDiscovery::Plugins::Endpoints)

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
    #   @option options [Aws::MarketplaceDiscovery::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::MarketplaceDiscovery::EndpointParameters`.
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

    # Provides details about a listing, such as descriptions, badges,
    # categories, pricing model summaries, reviews, and associated products
    # and offers.
    #
    # @option params [required, String] :listing_id
    #   The unique identifier of the listing to retrieve.
    #
    # @return [Types::GetListingOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetListingOutput#associated_entities #associated_entities} => Array&lt;Types::ListingAssociatedEntity&gt;
    #   * {Types::GetListingOutput#badges #badges} => Array&lt;Types::ListingBadge&gt;
    #   * {Types::GetListingOutput#catalog #catalog} => String
    #   * {Types::GetListingOutput#categories #categories} => Array&lt;Types::Category&gt;
    #   * {Types::GetListingOutput#fulfillment_option_summaries #fulfillment_option_summaries} => Array&lt;Types::FulfillmentOptionSummary&gt;
    #   * {Types::GetListingOutput#highlights #highlights} => Array&lt;String&gt;
    #   * {Types::GetListingOutput#integration_guide #integration_guide} => String
    #   * {Types::GetListingOutput#listing_id #listing_id} => String
    #   * {Types::GetListingOutput#listing_name #listing_name} => String
    #   * {Types::GetListingOutput#logo_thumbnail_url #logo_thumbnail_url} => String
    #   * {Types::GetListingOutput#long_description #long_description} => String
    #   * {Types::GetListingOutput#pricing_models #pricing_models} => Array&lt;Types::PricingModel&gt;
    #   * {Types::GetListingOutput#pricing_units #pricing_units} => Array&lt;Types::PricingUnit&gt;
    #   * {Types::GetListingOutput#promotional_media #promotional_media} => Array&lt;Types::PromotionalMedia&gt;
    #   * {Types::GetListingOutput#publisher #publisher} => Types::SellerInformation
    #   * {Types::GetListingOutput#resources #resources} => Array&lt;Types::Resource&gt;
    #   * {Types::GetListingOutput#review_summary #review_summary} => Types::ReviewSummary
    #   * {Types::GetListingOutput#seller_engagements #seller_engagements} => Array&lt;Types::SellerEngagement&gt;
    #   * {Types::GetListingOutput#short_description #short_description} => String
    #   * {Types::GetListingOutput#use_cases #use_cases} => Array&lt;Types::UseCaseEntry&gt;
    #
    #
    # @example Example: GetListing for SaaS listing
    #
    #   resp = client.get_listing({
    #     listing_id: "prodview-sampleSaasId", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     associated_entities: [
    #       {
    #         product: {
    #           manufacturer: {
    #             display_name: "sample SaaS seller", 
    #             seller_profile_id: "seller-sampleSaasId", 
    #           }, 
    #           product_id: "prod-sampleSaasId", 
    #           product_name: "sample SaaS product", 
    #         }, 
    #       }, 
    #     ], 
    #     badges: [
    #     ], 
    #     catalog: "AWSMarketplace", 
    #     categories: [
    #       {
    #         category_id: "developer-tools", 
    #         display_name: "Developer Tools", 
    #       }, 
    #       {
    #         category_id: "ide", 
    #         display_name: "IDE", 
    #       }, 
    #     ], 
    #     fulfillment_option_summaries: [
    #       {
    #         display_name: "SaaS", 
    #         fulfillment_option_type: "SAAS", 
    #       }, 
    #     ], 
    #     highlights: [
    #       "Automated dev environments", 
    #       "Works with any Git repository", 
    #       "Secure and compliant", 
    #     ], 
    #     listing_id: "prodview-sampleSaasId", 
    #     listing_name: "sample SaaS listing", 
    #     logo_thumbnail_url: "https://example.com/logos/sample-saas-logo.png", 
    #     long_description: "A sample SaaS product that provides automated, ready-to-code development environments in the cloud.", 
    #     pricing_models: [
    #       {
    #         display_name: "Contract", 
    #         pricing_model_type: "CONTRACT", 
    #       }, 
    #     ], 
    #     pricing_units: [
    #       {
    #         display_name: "Users", 
    #         pricing_unit_type: "USERS", 
    #       }, 
    #     ], 
    #     promotional_media: [
    #       {
    #         embedded_image: {
    #           description: "The sample product workspace dashboard", 
    #           title: "Sample Dashboard", 
    #           url: "https://example.com/screenshots/sample-dashboard.png", 
    #         }, 
    #       }, 
    #     ], 
    #     publisher: {
    #       display_name: "sample SaaS seller", 
    #       seller_profile_id: "seller-sampleSaasId", 
    #     }, 
    #     resources: [
    #       {
    #         value: "https://example.com/demo", 
    #         content_type: "LINK", 
    #         display_name: "Request a Demo", 
    #         resource_type: "MANUFACTURER_INSTRUCTIONS", 
    #       }, 
    #     ], 
    #     review_summary: {
    #       review_source_summaries: [
    #         {
    #           average_rating: "4.5", 
    #           source_id: "AWS_MARKETPLACE", 
    #           source_name: "AWS Marketplace", 
    #           source_url: "https://aws.amazon.com/marketplace/reviews/prodview-sampleSaasId", 
    #           total_reviews: 128, 
    #         }, 
    #       ], 
    #     }, 
    #     seller_engagements: [
    #       {
    #         value: "https://aws.amazon.com/marketplace/customer-connect/demo/prodview-sampleSaasId", 
    #         content_type: "LINK", 
    #         engagement_type: "REQUEST_FOR_DEMO", 
    #       }, 
    #       {
    #         value: "https://aws.amazon.com/marketplace/customer-connect/private-offer/prodview-sampleSaasId", 
    #         content_type: "LINK", 
    #         engagement_type: "REQUEST_FOR_PRIVATE_OFFER", 
    #       }, 
    #     ], 
    #     short_description: "A sample SaaS product for cloud development environments.", 
    #     use_cases: [
    #       {
    #         use_case: {
    #           value: "CONTEXTUAL_ANALYSIS", 
    #           description: "Advanced contextual analysis for targeted advertising campaigns", 
    #           display_name: "Contextual Analysis", 
    #         }, 
    #       }, 
    #     ], 
    #   }
    #
    # @example Example: GetListing for AMI listing with video
    #
    #   resp = client.get_listing({
    #     listing_id: "prodview-sampleAmiId", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     associated_entities: [
    #       {
    #         offer: {
    #           offer_id: "offer-sampleAmiId", 
    #           offer_name: "sample AMI offer", 
    #           seller_of_record: {
    #             display_name: "sample AMI seller", 
    #             seller_profile_id: "seller-sampleAmiId", 
    #           }, 
    #         }, 
    #         product: {
    #           manufacturer: {
    #             display_name: "sample AMI seller", 
    #             seller_profile_id: "seller-sampleAmiId", 
    #           }, 
    #           product_id: "prod-sampleAmiId", 
    #           product_name: "sample AMI product", 
    #         }, 
    #       }, 
    #     ], 
    #     badges: [
    #       {
    #         badge_type: "DEPLOYED_ON_AWS", 
    #         display_name: "Deployed on AWS", 
    #       }, 
    #       {
    #         badge_type: "QUICK_LAUNCH", 
    #         display_name: "Quick Launch", 
    #       }, 
    #     ], 
    #     catalog: "AWSMarketplace", 
    #     categories: [
    #       {
    #         category_id: "infrastructure", 
    #         display_name: "Infrastructure Software", 
    #       }, 
    #       {
    #         category_id: "load-balancing", 
    #         display_name: "Load Balancing", 
    #       }, 
    #     ], 
    #     fulfillment_option_summaries: [
    #       {
    #         display_name: "SaaS", 
    #         fulfillment_option_type: "SAAS", 
    #       }, 
    #     ], 
    #     highlights: [
    #       "Advanced load balancing", 
    #       "API gateway capabilities", 
    #       "High availability", 
    #       "Real-time monitoring", 
    #     ], 
    #     listing_id: "prodview-sampleAmiId", 
    #     listing_name: "sample AMI listing", 
    #     logo_thumbnail_url: "https://example.com/logos/sample-ami-logo.png", 
    #     long_description: "A sample AMI product that provides load balancing, content caching, and API gateway capabilities optimized for cloud-native architectures.", 
    #     pricing_models: [
    #       {
    #         display_name: "Usage", 
    #         pricing_model_type: "USAGE", 
    #       }, 
    #     ], 
    #     pricing_units: [
    #       {
    #         display_name: "Hosts", 
    #         pricing_unit_type: "HOSTS", 
    #       }, 
    #     ], 
    #     promotional_media: [
    #       {
    #         embedded_video: {
    #           description: "Learn about sample AMI product features", 
    #           preview: "https://example.com/videos/sample-cover.png", 
    #           thumbnail: "https://example.com/videos/sample-thumb.png", 
    #           title: "Sample AMI Product Overview", 
    #           url: "https://example.com/videos/sample-overview.mp4", 
    #         }, 
    #       }, 
    #     ], 
    #     publisher: {
    #       display_name: "sample AMI seller", 
    #       seller_profile_id: "seller-sampleAmiId", 
    #     }, 
    #     resources: [
    #       {
    #         value: "https://example.com/request-demo", 
    #         content_type: "LINK", 
    #         display_name: "Request Demo", 
    #         resource_type: "MANUFACTURER_INSTRUCTIONS", 
    #       }, 
    #       {
    #         value: "https://example.com/docs", 
    #         content_type: "LINK", 
    #         display_name: "Documentation", 
    #         resource_type: "MANUFACTURER_SUPPORT", 
    #       }, 
    #     ], 
    #     review_summary: {
    #       review_source_summaries: [
    #         {
    #           average_rating: "4.8", 
    #           source_id: "AWS_MARKETPLACE", 
    #           source_name: "AWS Marketplace", 
    #           source_url: "https://aws.amazon.com/marketplace/reviews/prodview-sampleAmiId", 
    #           total_reviews: 542, 
    #         }, 
    #       ], 
    #     }, 
    #     seller_engagements: [
    #       {
    #         value: "https://aws.amazon.com/marketplace/customer-connect/demo/prodview-sampleAmiId", 
    #         content_type: "LINK", 
    #         engagement_type: "REQUEST_FOR_DEMO", 
    #       }, 
    #       {
    #         value: "https://aws.amazon.com/marketplace/customer-connect/private-offer/prodview-sampleAmiId", 
    #         content_type: "LINK", 
    #         engagement_type: "REQUEST_FOR_PRIVATE_OFFER", 
    #       }, 
    #     ], 
    #     short_description: "A sample high-performance load balancer and web server.", 
    #     use_cases: [
    #       {
    #         use_case: {
    #           value: "CONTEXTUAL_ANALYSIS", 
    #           description: "Advanced contextual analysis for targeted advertising campaigns", 
    #           display_name: "Contextual Analysis", 
    #         }, 
    #       }, 
    #     ], 
    #   }
    #
    # @example Example: GetListing for multi-product listing
    #
    #   resp = client.get_listing({
    #     listing_id: "prodview-sampleMultiProductId", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     associated_entities: [
    #       {
    #         product: {
    #           manufacturer: {
    #             display_name: "sample multi-product seller", 
    #             seller_profile_id: "seller-sampleMultiProductId", 
    #           }, 
    #           product_id: "prod-sampleMultiProduct1Id", 
    #           product_name: "sample multi-product 1", 
    #         }, 
    #       }, 
    #       {
    #         product: {
    #           manufacturer: {
    #             display_name: "sample multi-product seller 2", 
    #             seller_profile_id: "seller-sampleMultiProduct2Id", 
    #           }, 
    #           product_id: "prod-sampleMultiProduct2Id", 
    #           product_name: "sample multi-product 2", 
    #         }, 
    #       }, 
    #     ], 
    #     badges: [
    #       {
    #         badge_type: "DEPLOYED_ON_AWS", 
    #         display_name: "Deployed on AWS", 
    #       }, 
    #       {
    #         badge_type: "MULTI_PRODUCT", 
    #         display_name: "Multi-product", 
    #       }, 
    #     ], 
    #     catalog: "AWSMarketplace", 
    #     categories: [
    #     ], 
    #     fulfillment_option_summaries: [
    #       {
    #         display_name: "SaaS", 
    #         fulfillment_option_type: "SAAS", 
    #       }, 
    #     ], 
    #     highlights: [
    #     ], 
    #     integration_guide: "To add the remote Box MCP server in Amazon Quick Suite, follow these steps: In the Amazon Quick Suite console, choose Integrations and create new integration by choosing Model Content Protocol.", 
    #     listing_id: "prodview-sampleMultiProductId", 
    #     listing_name: "sample multi-product listing", 
    #     logo_thumbnail_url: "https://example.com/logos/sample-multi-product-logo.png", 
    #     long_description: "A sample multi-product listing that connects content management with a unified AI platform. Users can securely search, analyze, and extract valuable insights from their files.", 
    #     pricing_models: [
    #       {
    #         display_name: "Free", 
    #         pricing_model_type: "FREE", 
    #       }, 
    #     ], 
    #     pricing_units: [
    #     ], 
    #     promotional_media: [
    #     ], 
    #     publisher: {
    #       display_name: "sample multi-product seller", 
    #       seller_profile_id: "seller-sampleMultiProductId", 
    #     }, 
    #     resources: [
    #       {
    #         value: "https://developer.box.com/guides/box-mcp/remote/#amazon-quick-suite", 
    #         content_type: "LINK", 
    #         display_name: "Developer Documentation", 
    #         resource_type: "MANUFACTURER_INSTRUCTIONS", 
    #       }, 
    #     ], 
    #     review_summary: {
    #       review_source_summaries: [
    #       ], 
    #     }, 
    #     seller_engagements: [
    #       {
    #         value: "https://aws.amazon.com/marketplace/customer-connect/demo/prodview-sampleMultiProductId", 
    #         content_type: "LINK", 
    #         engagement_type: "REQUEST_FOR_DEMO", 
    #       }, 
    #       {
    #         value: "https://aws.amazon.com/marketplace/customer-connect/private-offer/prodview-sampleMultiProductId", 
    #         content_type: "LINK", 
    #         engagement_type: "REQUEST_FOR_PRIVATE_OFFER", 
    #       }, 
    #     ], 
    #     short_description: "A sample multi-product listing that delivers a unified experience with AI.", 
    #     use_cases: [
    #       {
    #         use_case: {
    #           value: "content_management_system", 
    #           description: "This integration allows enterprises to securely access and interact with content in Box directly from the Amazon Quick Suite chat experience.", 
    #           display_name: "Content Management System", 
    #         }, 
    #       }, 
    #       {
    #         use_case: {
    #           value: "intelligent_document_processing", 
    #           description: "Build automated workflows and design custom AI agents for context-aware document processing.", 
    #           display_name: "Intelligent Document Processing", 
    #         }, 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_listing({
    #     listing_id: "ListingId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.associated_entities #=> Array
    #   resp.associated_entities[0].product.product_id #=> String
    #   resp.associated_entities[0].product.product_name #=> String
    #   resp.associated_entities[0].product.manufacturer.seller_profile_id #=> String
    #   resp.associated_entities[0].product.manufacturer.display_name #=> String
    #   resp.associated_entities[0].offer.offer_id #=> String
    #   resp.associated_entities[0].offer.offer_name #=> String
    #   resp.associated_entities[0].offer.seller_of_record.seller_profile_id #=> String
    #   resp.associated_entities[0].offer.seller_of_record.display_name #=> String
    #   resp.badges #=> Array
    #   resp.badges[0].display_name #=> String
    #   resp.badges[0].badge_type #=> String, one of "AWS_FREE_TIER", "FREE_TRIAL", "DEPLOYED_ON_AWS", "QUICK_LAUNCH", "MULTI_PRODUCT"
    #   resp.catalog #=> String
    #   resp.categories #=> Array
    #   resp.categories[0].category_id #=> String
    #   resp.categories[0].display_name #=> String
    #   resp.fulfillment_option_summaries #=> Array
    #   resp.fulfillment_option_summaries[0].fulfillment_option_type #=> String, one of "AMAZON_MACHINE_IMAGE", "API", "CLOUDFORMATION_TEMPLATE", "CONTAINER", "HELM", "EKS_ADD_ON", "EC2_IMAGE_BUILDER_COMPONENT", "DATA_EXCHANGE", "PROFESSIONAL_SERVICES", "SAAS", "SAGEMAKER_ALGORITHM", "SAGEMAKER_MODEL"
    #   resp.fulfillment_option_summaries[0].display_name #=> String
    #   resp.highlights #=> Array
    #   resp.highlights[0] #=> String
    #   resp.integration_guide #=> String
    #   resp.listing_id #=> String
    #   resp.listing_name #=> String
    #   resp.logo_thumbnail_url #=> String
    #   resp.long_description #=> String
    #   resp.pricing_models #=> Array
    #   resp.pricing_models[0].pricing_model_type #=> String, one of "USAGE", "CONTRACT", "BYOL", "FREE"
    #   resp.pricing_models[0].display_name #=> String
    #   resp.pricing_units #=> Array
    #   resp.pricing_units[0].pricing_unit_type #=> String, one of "USERS", "HOSTS", "BANDWIDTH", "DATA", "TIERS", "REQUESTS", "UNITS"
    #   resp.pricing_units[0].display_name #=> String
    #   resp.promotional_media #=> Array
    #   resp.promotional_media[0].embedded_image.title #=> String
    #   resp.promotional_media[0].embedded_image.url #=> String
    #   resp.promotional_media[0].embedded_image.description #=> String
    #   resp.promotional_media[0].embedded_video.title #=> String
    #   resp.promotional_media[0].embedded_video.url #=> String
    #   resp.promotional_media[0].embedded_video.preview #=> String
    #   resp.promotional_media[0].embedded_video.thumbnail #=> String
    #   resp.promotional_media[0].embedded_video.description #=> String
    #   resp.publisher.seller_profile_id #=> String
    #   resp.publisher.display_name #=> String
    #   resp.resources #=> Array
    #   resp.resources[0].resource_type #=> String, one of "MANUFACTURER_SUPPORT", "MANUFACTURER_INSTRUCTIONS"
    #   resp.resources[0].content_type #=> String, one of "EMAIL", "PHONE_NUMBER", "LINK", "OTHER"
    #   resp.resources[0].value #=> String
    #   resp.resources[0].display_name #=> String
    #   resp.review_summary.review_source_summaries #=> Array
    #   resp.review_summary.review_source_summaries[0].source_name #=> String
    #   resp.review_summary.review_source_summaries[0].source_id #=> String, one of "AWS_MARKETPLACE"
    #   resp.review_summary.review_source_summaries[0].source_url #=> String
    #   resp.review_summary.review_source_summaries[0].average_rating #=> String
    #   resp.review_summary.review_source_summaries[0].total_reviews #=> Integer
    #   resp.seller_engagements #=> Array
    #   resp.seller_engagements[0].engagement_type #=> String, one of "REQUEST_FOR_PRIVATE_OFFER", "REQUEST_FOR_DEMO"
    #   resp.seller_engagements[0].content_type #=> String, one of "LINK"
    #   resp.seller_engagements[0].value #=> String
    #   resp.short_description #=> String
    #   resp.use_cases #=> Array
    #   resp.use_cases[0].use_case.description #=> String
    #   resp.use_cases[0].use_case.display_name #=> String
    #   resp.use_cases[0].use_case.value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/GetListing AWS API Documentation
    #
    # @overload get_listing(params = {})
    # @param [Hash] params ({})
    def get_listing(params = {}, options = {})
      req = build_request(:get_listing, params)
      req.send_request(options)
    end

    # Provides details about an offer, such as the pricing model, seller of
    # record, availability dates, badges, and associated products.
    #
    # @option params [required, String] :offer_id
    #   The unique identifier of the offer to retrieve.
    #
    # @return [Types::GetOfferOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetOfferOutput#offer_id #offer_id} => String
    #   * {Types::GetOfferOutput#catalog #catalog} => String
    #   * {Types::GetOfferOutput#offer_name #offer_name} => String
    #   * {Types::GetOfferOutput#agreement_proposal_id #agreement_proposal_id} => String
    #   * {Types::GetOfferOutput#expiration_time #expiration_time} => Time
    #   * {Types::GetOfferOutput#available_from_time #available_from_time} => Time
    #   * {Types::GetOfferOutput#seller_of_record #seller_of_record} => Types::SellerInformation
    #   * {Types::GetOfferOutput#replacement_agreement_id #replacement_agreement_id} => String
    #   * {Types::GetOfferOutput#pricing_model #pricing_model} => Types::PricingModel
    #   * {Types::GetOfferOutput#badges #badges} => Array&lt;Types::PurchaseOptionBadge&gt;
    #   * {Types::GetOfferOutput#associated_entities #associated_entities} => Array&lt;Types::OfferAssociatedEntity&gt;
    #
    #
    # @example Example: Invoke GetOffer for Contract Pricing offer
    #
    #   resp = client.get_offer({
    #     offer_id: "offer-sampleContractId", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     agreement_proposal_id: "at-sampleToken", 
    #     associated_entities: [
    #       {
    #         offer_set: {
    #           offer_set_id: "offerset-sampleId", 
    #           seller_of_record: {
    #             display_name: "sample contract seller", 
    #             seller_profile_id: "seller-sampleContractId", 
    #           }, 
    #         }, 
    #         product: {
    #           manufacturer: {
    #             display_name: "sample contract seller", 
    #             seller_profile_id: "seller-sampleContractId", 
    #           }, 
    #           product_id: "prod-sampleContractId", 
    #           product_name: "sample contract product", 
    #         }, 
    #       }, 
    #     ], 
    #     available_from_time: Time.parse("2023-01-01T00:00:00.000Z"), 
    #     badges: [
    #       {
    #         badge_type: "PRIVATE_PRICING", 
    #         display_name: "Private Pricing", 
    #       }, 
    #       {
    #         badge_type: "REPLACEMENT_OFFER", 
    #         display_name: "Replacement Offer", 
    #       }, 
    #     ], 
    #     catalog: "AWSMarketplace", 
    #     expiration_time: Time.parse("2023-10-08T21:40:43.644Z"), 
    #     offer_id: "offer-sampleContractId", 
    #     offer_name: "sample contract offer", 
    #     pricing_model: {
    #       display_name: "Contract", 
    #       pricing_model_type: "CONTRACT", 
    #     }, 
    #     replacement_agreement_id: "agmt-sampleId", 
    #     seller_of_record: {
    #       display_name: "sample contract seller", 
    #       seller_profile_id: "seller-sampleContractId", 
    #     }, 
    #   }
    #
    # @example Example: Invoke GetOffer for Usage Pricing offer
    #
    #   resp = client.get_offer({
    #     offer_id: "offer-sampleUsageId", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     agreement_proposal_id: "at-sampleToken", 
    #     associated_entities: [
    #       {
    #         product: {
    #           manufacturer: {
    #             display_name: "sample usage seller", 
    #             seller_profile_id: "seller-sampleUsageId", 
    #           }, 
    #           product_id: "prod-sampleUsageId", 
    #           product_name: "sample usage product", 
    #         }, 
    #       }, 
    #     ], 
    #     badges: [
    #       {
    #         badge_type: "FUTURE_DATED", 
    #         display_name: "Future Dated", 
    #       }, 
    #     ], 
    #     catalog: "AWSMarketplace", 
    #     expiration_time: Time.parse("2022-03-29T23:59:59.999Z"), 
    #     offer_id: "offer-sampleUsageId", 
    #     offer_name: "sample usage offer", 
    #     pricing_model: {
    #       display_name: "Usage", 
    #       pricing_model_type: "USAGE", 
    #     }, 
    #     replacement_agreement_id: "agmt-sampleId", 
    #     seller_of_record: {
    #       display_name: "sample usage seller", 
    #       seller_profile_id: "seller-sampleUsageId", 
    #     }, 
    #   }
    #
    # @example Example: Invoke GetOffer for BYOL Pricing offer
    #
    #   resp = client.get_offer({
    #     offer_id: "offer-sampleByolId", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     agreement_proposal_id: "at-sampleToken", 
    #     associated_entities: [
    #       {
    #         product: {
    #           manufacturer: {
    #             display_name: "sample BYOL seller", 
    #             seller_profile_id: "seller-sampleByolId", 
    #           }, 
    #           product_id: "prod-sampleByolId", 
    #           product_name: "sample BYOL product", 
    #         }, 
    #       }, 
    #     ], 
    #     badges: [
    #     ], 
    #     catalog: "AWSMarketplace", 
    #     expiration_time: Time.parse("2022-03-29T23:59:59.999Z"), 
    #     offer_id: "offer-sampleByolId", 
    #     offer_name: "sample BYOL offer", 
    #     pricing_model: {
    #       display_name: "Bring Your Own License", 
    #       pricing_model_type: "BYOL", 
    #     }, 
    #     replacement_agreement_id: "agmt-sampleId", 
    #     seller_of_record: {
    #       display_name: "sample BYOL seller", 
    #       seller_profile_id: "seller-sampleByolId", 
    #     }, 
    #   }
    #
    # @example Example: Invoke GetOffer for FREE Pricing offer
    #
    #   resp = client.get_offer({
    #     offer_id: "offer-sampleFreeId", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     agreement_proposal_id: "at-sampleToken", 
    #     associated_entities: [
    #       {
    #         product: {
    #           manufacturer: {
    #             display_name: "sample free seller", 
    #             seller_profile_id: "seller-sampleFreeId", 
    #           }, 
    #           product_id: "prod-sampleFreeId", 
    #           product_name: "sample free product", 
    #         }, 
    #       }, 
    #     ], 
    #     badges: [
    #     ], 
    #     catalog: "AWSMarketplace", 
    #     expiration_time: Time.parse("2022-03-29T23:59:59.999Z"), 
    #     offer_id: "offer-sampleFreeId", 
    #     offer_name: "sample free offer", 
    #     pricing_model: {
    #       display_name: "Free", 
    #       pricing_model_type: "FREE", 
    #     }, 
    #     replacement_agreement_id: "agmt-sampleId", 
    #     seller_of_record: {
    #       display_name: "sample free seller", 
    #       seller_profile_id: "seller-sampleFreeId", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_offer({
    #     offer_id: "OfferId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.offer_id #=> String
    #   resp.catalog #=> String
    #   resp.offer_name #=> String
    #   resp.agreement_proposal_id #=> String
    #   resp.expiration_time #=> Time
    #   resp.available_from_time #=> Time
    #   resp.seller_of_record.seller_profile_id #=> String
    #   resp.seller_of_record.display_name #=> String
    #   resp.replacement_agreement_id #=> String
    #   resp.pricing_model.pricing_model_type #=> String, one of "USAGE", "CONTRACT", "BYOL", "FREE"
    #   resp.pricing_model.display_name #=> String
    #   resp.badges #=> Array
    #   resp.badges[0].display_name #=> String
    #   resp.badges[0].badge_type #=> String, one of "PRIVATE_PRICING", "FUTURE_DATED", "REPLACEMENT_OFFER"
    #   resp.associated_entities #=> Array
    #   resp.associated_entities[0].product.product_id #=> String
    #   resp.associated_entities[0].product.product_name #=> String
    #   resp.associated_entities[0].product.manufacturer.seller_profile_id #=> String
    #   resp.associated_entities[0].product.manufacturer.display_name #=> String
    #   resp.associated_entities[0].offer_set.offer_set_id #=> String
    #   resp.associated_entities[0].offer_set.seller_of_record.seller_profile_id #=> String
    #   resp.associated_entities[0].offer_set.seller_of_record.display_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/GetOffer AWS API Documentation
    #
    # @overload get_offer(params = {})
    # @param [Hash] params ({})
    def get_offer(params = {}, options = {})
      req = build_request(:get_offer, params)
      req.send_request(options)
    end

    # Provides details about an offer set, which is a bundle of offers
    # across multiple products. Includes the seller, availability dates,
    # buyer notes, and associated product-offer pairs.
    #
    # @option params [required, String] :offer_set_id
    #   The unique identifier of the offer set to retrieve.
    #
    # @return [Types::GetOfferSetOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetOfferSetOutput#offer_set_id #offer_set_id} => String
    #   * {Types::GetOfferSetOutput#catalog #catalog} => String
    #   * {Types::GetOfferSetOutput#offer_set_name #offer_set_name} => String
    #   * {Types::GetOfferSetOutput#available_from_time #available_from_time} => Time
    #   * {Types::GetOfferSetOutput#expiration_time #expiration_time} => Time
    #   * {Types::GetOfferSetOutput#buyer_notes #buyer_notes} => String
    #   * {Types::GetOfferSetOutput#seller_of_record #seller_of_record} => Types::SellerInformation
    #   * {Types::GetOfferSetOutput#badges #badges} => Array&lt;Types::PurchaseOptionBadge&gt;
    #   * {Types::GetOfferSetOutput#associated_entities #associated_entities} => Array&lt;Types::OfferSetAssociatedEntity&gt;
    #
    #
    # @example Example: Get offer set with multiple products
    #
    #   resp = client.get_offer_set({
    #     offer_set_id: "offerset-sampleId", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     associated_entities: [
    #       {
    #         offer: {
    #           offer_id: "offer-sampleId1", 
    #           offer_name: "sample offer name 1", 
    #           seller_of_record: {
    #             display_name: "sample reseller", 
    #             seller_profile_id: "seller-sampleResellerId", 
    #           }, 
    #         }, 
    #         product: {
    #           manufacturer: {
    #             display_name: "sample seller name 1", 
    #             seller_profile_id: "seller-sampleId1", 
    #           }, 
    #           product_id: "prod-sampleId1", 
    #           product_name: "sample product name 1", 
    #         }, 
    #       }, 
    #       {
    #         offer: {
    #           offer_id: "offer-sampleId2", 
    #           offer_name: "sample offer name 2", 
    #           seller_of_record: {
    #             display_name: "sample reseller", 
    #             seller_profile_id: "seller-sampleResellerId", 
    #           }, 
    #         }, 
    #         product: {
    #           manufacturer: {
    #             display_name: "sample seller name 2", 
    #             seller_profile_id: "seller-sampleId2", 
    #           }, 
    #           product_id: "prod-sampleId2", 
    #           product_name: "sample product name 2", 
    #         }, 
    #       }, 
    #     ], 
    #     available_from_time: Time.parse("2024-03-20T00:00:00.000Z"), 
    #     badges: [
    #       {
    #         badge_type: "PRIVATE_PRICING", 
    #         display_name: "Private Pricing", 
    #       }, 
    #     ], 
    #     buyer_notes: "This bundle includes CrowdStrike Falcon and Splunk Enterprise for comprehensive security monitoring.", 
    #     catalog: "AWSMarketplace", 
    #     expiration_time: Time.parse("2025-03-20T00:00:00.000Z"), 
    #     offer_set_id: "offerset-sampleId", 
    #     offer_set_name: "sample offer set", 
    #     seller_of_record: {
    #       display_name: "sample reseller", 
    #       seller_profile_id: "seller-sampleResellerId", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_offer_set({
    #     offer_set_id: "OfferSetId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.offer_set_id #=> String
    #   resp.catalog #=> String
    #   resp.offer_set_name #=> String
    #   resp.available_from_time #=> Time
    #   resp.expiration_time #=> Time
    #   resp.buyer_notes #=> String
    #   resp.seller_of_record.seller_profile_id #=> String
    #   resp.seller_of_record.display_name #=> String
    #   resp.badges #=> Array
    #   resp.badges[0].display_name #=> String
    #   resp.badges[0].badge_type #=> String, one of "PRIVATE_PRICING", "FUTURE_DATED", "REPLACEMENT_OFFER"
    #   resp.associated_entities #=> Array
    #   resp.associated_entities[0].product.product_id #=> String
    #   resp.associated_entities[0].product.product_name #=> String
    #   resp.associated_entities[0].product.manufacturer.seller_profile_id #=> String
    #   resp.associated_entities[0].product.manufacturer.display_name #=> String
    #   resp.associated_entities[0].offer.offer_id #=> String
    #   resp.associated_entities[0].offer.offer_name #=> String
    #   resp.associated_entities[0].offer.seller_of_record.seller_profile_id #=> String
    #   resp.associated_entities[0].offer.seller_of_record.display_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/GetOfferSet AWS API Documentation
    #
    # @overload get_offer_set(params = {})
    # @param [Hash] params ({})
    def get_offer_set(params = {}, options = {})
      req = build_request(:get_offer_set, params)
      req.send_request(options)
    end

    # Returns the terms attached to an offer, such as pricing terms
    # (usage-based, contract, BYOL, free trial), legal terms, payment
    # schedules, validity terms, support terms, and renewal terms.
    #
    # @option params [required, String] :offer_id
    #   The unique identifier of the offer whose terms to retrieve.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results that are returned per call. You can use
    #   `nextToken` to get more results.
    #
    # @option params [String] :next_token
    #   If `nextToken` is returned, there are more results available. Make the
    #   call again using the returned token to retrieve the next page.
    #
    # @return [Types::GetOfferTermsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetOfferTermsOutput#offer_terms #offer_terms} => Array&lt;Types::OfferTerm&gt;
    #   * {Types::GetOfferTermsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: GetOfferTerms for Usage-based ML Model offer
    #
    #   resp = client.get_offer_terms({
    #     offer_id: "offer-sampleUsageBasedId", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     offer_terms: [
    #       {
    #         usage_based_pricing_term: {
    #           type: "UsageBasedPricingTerm", 
    #           currency_code: "USD", 
    #           id: "term-sampleUsageBasedPricingId", 
    #           rate_cards: [
    #             {
    #               rate_card: [
    #                 {
    #                   description: "Model inference on the ml.m5.2xlarge instance type, batch mode", 
    #                   dimension_key: "ml.m5.2xlarge.m.i.b", 
    #                   dimension_labels: [
    #                     {
    #                       display_name: "Model Batch Transform", 
    #                       label_type: "SagemakerOption", 
    #                       label_value: "Model Batch Transform", 
    #                     }, 
    #                   ], 
    #                   display_name: "ml.m5.2xlarge Inference (Batch)", 
    #                   price: "2.00000000", 
    #                   unit: "HostHrs", 
    #                 }, 
    #                 {
    #                   description: "Model inference on the ml.m5.2xlarge instance type, real-time mode", 
    #                   dimension_key: "ml.m5.2xlarge.m.i.r", 
    #                   dimension_labels: [
    #                     {
    #                       display_name: "Model Real-Time Inference", 
    #                       label_type: "SagemakerOption", 
    #                       label_value: "Model Real-Time Inference", 
    #                     }, 
    #                   ], 
    #                   display_name: "ml.m5.2xlarge Inference (Real-Time)", 
    #                   price: "2.00000000", 
    #                   unit: "HostHrs", 
    #                 }, 
    #                 {
    #                   description: "Model inference on the ml.m5.large instance type, batch mode", 
    #                   dimension_key: "ml.m5.large.m.i.b", 
    #                   dimension_labels: [
    #                     {
    #                       display_name: "Model Batch Transform", 
    #                       label_type: "SagemakerOption", 
    #                       label_value: "Model Batch Transform", 
    #                     }, 
    #                   ], 
    #                   display_name: "ml.m5.large Inference (Batch)", 
    #                   price: "2.00000000", 
    #                   unit: "HostHrs", 
    #                 }, 
    #                 {
    #                   description: "Model inference on the ml.m5.large instance type, real-time mode", 
    #                   dimension_key: "ml.m5.large.m.i.r", 
    #                   dimension_labels: [
    #                     {
    #                       display_name: "Model Real-Time Inference", 
    #                       label_type: "SagemakerOption", 
    #                       label_value: "Model Real-Time Inference", 
    #                     }, 
    #                   ], 
    #                   display_name: "ml.m5.large Inference (Real-Time)", 
    #                   price: "2.00000000", 
    #                   unit: "HostHrs", 
    #                 }, 
    #               ], 
    #             }, 
    #           ], 
    #         }, 
    #       }, 
    #       {
    #         fixed_upfront_pricing_term: {
    #           type: "FixedUpfrontPricingTerm", 
    #           currency_code: "USD", 
    #           duration: "P365D", 
    #           grants: [
    #             {
    #               description: "Model inference on the ml.m5.2xlarge instance type, batch mode", 
    #               dimension_key: "ml.m5.2xlarge.m.i.b", 
    #               dimension_labels: [
    #                 {
    #                   display_name: "Model Batch Transform", 
    #                   label_type: "SagemakerOption", 
    #                   label_value: "Model Batch Transform", 
    #                 }, 
    #               ], 
    #               display_name: "ml.m5.2xlarge Inference (Batch)", 
    #               max_quantity: 2147483647, 
    #               unit: "HostHrs", 
    #             }, 
    #             {
    #               description: "Model inference on the ml.m5.2xlarge instance type, real-time mode", 
    #               dimension_key: "ml.m5.2xlarge.m.i.r", 
    #               dimension_labels: [
    #                 {
    #                   display_name: "Model Real-Time Inference", 
    #                   label_type: "SagemakerOption", 
    #                   label_value: "Model Real-Time Inference", 
    #                 }, 
    #               ], 
    #               display_name: "ml.m5.2xlarge Inference (Real-Time)", 
    #               max_quantity: 2147483647, 
    #               unit: "HostHrs", 
    #             }, 
    #             {
    #               description: "Model inference on the ml.m5.large instance type, batch mode", 
    #               dimension_key: "ml.m5.large.m.i.b", 
    #               dimension_labels: [
    #                 {
    #                   display_name: "Model Batch Transform", 
    #                   label_type: "SagemakerOption", 
    #                   label_value: "Model Batch Transform", 
    #                 }, 
    #               ], 
    #               display_name: "ml.m5.large Inference (Batch)", 
    #               max_quantity: 2147483647, 
    #               unit: "HostHrs", 
    #             }, 
    #             {
    #               description: "Model inference on the ml.m5.large instance type, real-time mode", 
    #               dimension_key: "ml.m5.large.m.i.r", 
    #               dimension_labels: [
    #                 {
    #                   display_name: "Model Real-Time Inference", 
    #                   label_type: "SagemakerOption", 
    #                   label_value: "Model Real-Time Inference", 
    #                 }, 
    #               ], 
    #               display_name: "ml.m5.large Inference (Real-Time)", 
    #               max_quantity: 2147483647, 
    #               unit: "HostHrs", 
    #             }, 
    #           ], 
    #           id: "term-sampleFixedUpfrontPricingId", 
    #           price: "0.00000000", 
    #         }, 
    #       }, 
    #       {
    #         legal_term: {
    #           type: "LegalTerm", 
    #           documents: [
    #             {
    #               type: "StandardEula", 
    #               url: "https://example.com/legal/standard-eula", 
    #             }, 
    #           ], 
    #           id: "term-sampleLegalId", 
    #         }, 
    #       }, 
    #       {
    #         validity_term: {
    #           type: "ValidityTerm", 
    #           agreement_duration: "P2011D", 
    #           id: "term-sampleValidityId", 
    #         }, 
    #       }, 
    #       {
    #         payment_schedule_term: {
    #           type: "PaymentScheduleTerm", 
    #           currency_code: "USD", 
    #           id: "term-samplePaymentScheduleId", 
    #           schedule: [
    #             {
    #               charge_amount: "5.00000000", 
    #               charge_date: Time.parse("2026-07-15T00:00:00.000Z"), 
    #             }, 
    #           ], 
    #         }, 
    #       }, 
    #     ], 
    #   }
    #
    # @example Example: GetOfferTerms for BYOL offer
    #
    #   resp = client.get_offer_terms({
    #     offer_id: "offer-sampleByolId", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     offer_terms: [
    #       {
    #         byol_pricing_term: {
    #           type: "ByolPricingTerm", 
    #           id: "term-byol-001", 
    #         }, 
    #       }, 
    #       {
    #         legal_term: {
    #           type: "LegalTerm", 
    #           documents: [
    #             {
    #               type: "CustomEula", 
    #               url: "https://example.com/eula", 
    #             }, 
    #           ], 
    #           id: "term-legal-003", 
    #         }, 
    #       }, 
    #     ], 
    #   }
    #
    # @example Example: GetOfferTerms for configurable upfront pricing
    #
    #   resp = client.get_offer_terms({
    #     offer_id: "offer-sampleConfigUpfrontId", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     offer_terms: [
    #       {
    #         configurable_upfront_pricing_term: {
    #           type: "ConfigurableUpfrontPricingTerm", 
    #           currency_code: "USD", 
    #           id: "term-config-001", 
    #           rate_cards: [
    #             {
    #               constraints: {
    #                 multiple_dimension_selection: "Allowed", 
    #                 quantity_configuration: "Allowed", 
    #               }, 
    #               rate_card: [
    #                 {
    #                   dimension_key: "api_calls_us_east_1", 
    #                   dimension_labels: [
    #                     {
    #                       display_name: "US East (N. Virginia)", 
    #                       label_type: "Region", 
    #                       label_value: "us-east-1", 
    #                     }, 
    #                   ], 
    #                   display_name: "API Calls (US East)", 
    #                   price: "0.001", 
    #                   unit: "Requests", 
    #                 }, 
    #                 {
    #                   dimension_key: "api_calls_us_west_2", 
    #                   dimension_labels: [
    #                     {
    #                       display_name: "US West (Oregon)", 
    #                       label_type: "Region", 
    #                       label_value: "us-west-2", 
    #                     }, 
    #                   ], 
    #                   display_name: "API Calls (US West)", 
    #                   price: "0.001", 
    #                   unit: "Requests", 
    #                 }, 
    #               ], 
    #               selector: {
    #                 type: "Duration", 
    #                 value: "P12M", 
    #               }, 
    #             }, 
    #           ], 
    #         }, 
    #       }, 
    #     ], 
    #   }
    #
    # @example Example: GetOfferTerms for free trial offer
    #
    #   resp = client.get_offer_terms({
    #     offer_id: "offer-sampleFreeTrialId", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     offer_terms: [
    #       {
    #         free_trial_pricing_term: {
    #           type: "FreeTrialPricingTerm", 
    #           duration: "P30D", 
    #           grants: [
    #             {
    #               dimension_key: "ml.m5.large.m.i.r", 
    #               dimension_labels: [
    #                 {
    #                   display_name: "Model Real-Time Inference", 
    #                   label_type: "SagemakerOption", 
    #                   label_value: "Model Real-Time Inference", 
    #                 }, 
    #               ], 
    #               display_name: "ml.m5.large Inference (Real-Time)", 
    #               max_quantity: 100, 
    #               unit: "HostHrs", 
    #             }, 
    #           ], 
    #           id: "term-trial-001", 
    #         }, 
    #       }, 
    #     ], 
    #   }
    #
    # @example Example: GetOfferTerms for recurring payment
    #
    #   resp = client.get_offer_terms({
    #     offer_id: "offer-sampleRecurringId", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     offer_terms: [
    #       {
    #         recurring_payment_term: {
    #           type: "RecurringPaymentTerm", 
    #           billing_period: "Monthly", 
    #           currency_code: "USD", 
    #           id: "term-recurring-001", 
    #           price: "99.00", 
    #         }, 
    #       }, 
    #     ], 
    #   }
    #
    # @example Example: GetOfferTerms for variable payment
    #
    #   resp = client.get_offer_terms({
    #     offer_id: "offer-sampleVariableId", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     offer_terms: [
    #       {
    #         variable_payment_term: {
    #           type: "VariablePaymentTerm", 
    #           currency_code: "USD", 
    #           id: "term-variable-001", 
    #           max_total_charge_amount: "10000.00", 
    #         }, 
    #       }, 
    #     ], 
    #   }
    #
    # @example Example: GetOfferTerms for renewal term
    #
    #   resp = client.get_offer_terms({
    #     offer_id: "offer-sampleRenewalId", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     offer_terms: [
    #       {
    #         renewal_term: {
    #           type: "RenewalTerm", 
    #           id: "term-renewal-001", 
    #         }, 
    #       }, 
    #     ], 
    #   }
    #
    # @example Example: GetOfferTerms for support term
    #
    #   resp = client.get_offer_terms({
    #     offer_id: "offer-sampleSupportId", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     offer_terms: [
    #       {
    #         support_term: {
    #           type: "SupportTerm", 
    #           id: "term-support-001", 
    #           refund_policy: "30-day money back guarantee", 
    #         }, 
    #       }, 
    #     ], 
    #   }
    #
    # @example Example: GetOfferTerms for validity term with dates
    #
    #   resp = client.get_offer_terms({
    #     offer_id: "offer-sampleValidityId", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     offer_terms: [
    #       {
    #         validity_term: {
    #           type: "ValidityTerm", 
    #           agreement_duration: "P365D", 
    #           agreement_end_date: Time.parse("2026-12-31T23:59:59.000Z"), 
    #           agreement_start_date: Time.parse("2026-01-01T00:00:00.000Z"), 
    #           id: "term-validity-001", 
    #         }, 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_offer_terms({
    #     offer_id: "OfferId", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.offer_terms #=> Array
    #   resp.offer_terms[0].byol_pricing_term.id #=> String
    #   resp.offer_terms[0].byol_pricing_term.type #=> String, one of "ByolPricingTerm", "ConfigurableUpfrontPricingTerm", "FixedUpfrontPricingTerm", "UsageBasedPricingTerm", "FreeTrialPricingTerm", "LegalTerm", "PaymentScheduleTerm", "RecurringPaymentTerm", "RenewalTerm", "SupportTerm", "ValidityTerm", "VariablePaymentTerm"
    #   resp.offer_terms[0].configurable_upfront_pricing_term.id #=> String
    #   resp.offer_terms[0].configurable_upfront_pricing_term.type #=> String, one of "ByolPricingTerm", "ConfigurableUpfrontPricingTerm", "FixedUpfrontPricingTerm", "UsageBasedPricingTerm", "FreeTrialPricingTerm", "LegalTerm", "PaymentScheduleTerm", "RecurringPaymentTerm", "RenewalTerm", "SupportTerm", "ValidityTerm", "VariablePaymentTerm"
    #   resp.offer_terms[0].configurable_upfront_pricing_term.currency_code #=> String
    #   resp.offer_terms[0].configurable_upfront_pricing_term.rate_cards #=> Array
    #   resp.offer_terms[0].configurable_upfront_pricing_term.rate_cards[0].selector.type #=> String, one of "Duration"
    #   resp.offer_terms[0].configurable_upfront_pricing_term.rate_cards[0].selector.value #=> String
    #   resp.offer_terms[0].configurable_upfront_pricing_term.rate_cards[0].constraints.multiple_dimension_selection #=> String, one of "Allowed", "Disallowed"
    #   resp.offer_terms[0].configurable_upfront_pricing_term.rate_cards[0].constraints.quantity_configuration #=> String, one of "Allowed", "Disallowed"
    #   resp.offer_terms[0].configurable_upfront_pricing_term.rate_cards[0].rate_card #=> Array
    #   resp.offer_terms[0].configurable_upfront_pricing_term.rate_cards[0].rate_card[0].dimension_key #=> String
    #   resp.offer_terms[0].configurable_upfront_pricing_term.rate_cards[0].rate_card[0].display_name #=> String
    #   resp.offer_terms[0].configurable_upfront_pricing_term.rate_cards[0].rate_card[0].description #=> String
    #   resp.offer_terms[0].configurable_upfront_pricing_term.rate_cards[0].rate_card[0].dimension_labels #=> Array
    #   resp.offer_terms[0].configurable_upfront_pricing_term.rate_cards[0].rate_card[0].dimension_labels[0].label_type #=> String, one of "Region", "SagemakerOption"
    #   resp.offer_terms[0].configurable_upfront_pricing_term.rate_cards[0].rate_card[0].dimension_labels[0].label_value #=> String
    #   resp.offer_terms[0].configurable_upfront_pricing_term.rate_cards[0].rate_card[0].dimension_labels[0].display_name #=> String
    #   resp.offer_terms[0].configurable_upfront_pricing_term.rate_cards[0].rate_card[0].unit #=> String
    #   resp.offer_terms[0].configurable_upfront_pricing_term.rate_cards[0].rate_card[0].price #=> String
    #   resp.offer_terms[0].fixed_upfront_pricing_term.id #=> String
    #   resp.offer_terms[0].fixed_upfront_pricing_term.type #=> String, one of "ByolPricingTerm", "ConfigurableUpfrontPricingTerm", "FixedUpfrontPricingTerm", "UsageBasedPricingTerm", "FreeTrialPricingTerm", "LegalTerm", "PaymentScheduleTerm", "RecurringPaymentTerm", "RenewalTerm", "SupportTerm", "ValidityTerm", "VariablePaymentTerm"
    #   resp.offer_terms[0].fixed_upfront_pricing_term.currency_code #=> String
    #   resp.offer_terms[0].fixed_upfront_pricing_term.duration #=> String
    #   resp.offer_terms[0].fixed_upfront_pricing_term.price #=> String
    #   resp.offer_terms[0].fixed_upfront_pricing_term.grants #=> Array
    #   resp.offer_terms[0].fixed_upfront_pricing_term.grants[0].dimension_key #=> String
    #   resp.offer_terms[0].fixed_upfront_pricing_term.grants[0].display_name #=> String
    #   resp.offer_terms[0].fixed_upfront_pricing_term.grants[0].description #=> String
    #   resp.offer_terms[0].fixed_upfront_pricing_term.grants[0].dimension_labels #=> Array
    #   resp.offer_terms[0].fixed_upfront_pricing_term.grants[0].dimension_labels[0].label_type #=> String, one of "Region", "SagemakerOption"
    #   resp.offer_terms[0].fixed_upfront_pricing_term.grants[0].dimension_labels[0].label_value #=> String
    #   resp.offer_terms[0].fixed_upfront_pricing_term.grants[0].dimension_labels[0].display_name #=> String
    #   resp.offer_terms[0].fixed_upfront_pricing_term.grants[0].unit #=> String
    #   resp.offer_terms[0].fixed_upfront_pricing_term.grants[0].max_quantity #=> Integer
    #   resp.offer_terms[0].free_trial_pricing_term.id #=> String
    #   resp.offer_terms[0].free_trial_pricing_term.type #=> String, one of "ByolPricingTerm", "ConfigurableUpfrontPricingTerm", "FixedUpfrontPricingTerm", "UsageBasedPricingTerm", "FreeTrialPricingTerm", "LegalTerm", "PaymentScheduleTerm", "RecurringPaymentTerm", "RenewalTerm", "SupportTerm", "ValidityTerm", "VariablePaymentTerm"
    #   resp.offer_terms[0].free_trial_pricing_term.duration #=> String
    #   resp.offer_terms[0].free_trial_pricing_term.grants #=> Array
    #   resp.offer_terms[0].free_trial_pricing_term.grants[0].dimension_key #=> String
    #   resp.offer_terms[0].free_trial_pricing_term.grants[0].display_name #=> String
    #   resp.offer_terms[0].free_trial_pricing_term.grants[0].description #=> String
    #   resp.offer_terms[0].free_trial_pricing_term.grants[0].dimension_labels #=> Array
    #   resp.offer_terms[0].free_trial_pricing_term.grants[0].dimension_labels[0].label_type #=> String, one of "Region", "SagemakerOption"
    #   resp.offer_terms[0].free_trial_pricing_term.grants[0].dimension_labels[0].label_value #=> String
    #   resp.offer_terms[0].free_trial_pricing_term.grants[0].dimension_labels[0].display_name #=> String
    #   resp.offer_terms[0].free_trial_pricing_term.grants[0].unit #=> String
    #   resp.offer_terms[0].free_trial_pricing_term.grants[0].max_quantity #=> Integer
    #   resp.offer_terms[0].legal_term.id #=> String
    #   resp.offer_terms[0].legal_term.type #=> String, one of "ByolPricingTerm", "ConfigurableUpfrontPricingTerm", "FixedUpfrontPricingTerm", "UsageBasedPricingTerm", "FreeTrialPricingTerm", "LegalTerm", "PaymentScheduleTerm", "RecurringPaymentTerm", "RenewalTerm", "SupportTerm", "ValidityTerm", "VariablePaymentTerm"
    #   resp.offer_terms[0].legal_term.documents #=> Array
    #   resp.offer_terms[0].legal_term.documents[0].type #=> String, one of "CustomEula", "CustomDsa", "EnterpriseEula", "StandardEula", "StandardDsa"
    #   resp.offer_terms[0].legal_term.documents[0].url #=> String
    #   resp.offer_terms[0].legal_term.documents[0].version #=> String
    #   resp.offer_terms[0].payment_schedule_term.id #=> String
    #   resp.offer_terms[0].payment_schedule_term.type #=> String, one of "ByolPricingTerm", "ConfigurableUpfrontPricingTerm", "FixedUpfrontPricingTerm", "UsageBasedPricingTerm", "FreeTrialPricingTerm", "LegalTerm", "PaymentScheduleTerm", "RecurringPaymentTerm", "RenewalTerm", "SupportTerm", "ValidityTerm", "VariablePaymentTerm"
    #   resp.offer_terms[0].payment_schedule_term.currency_code #=> String
    #   resp.offer_terms[0].payment_schedule_term.schedule #=> Array
    #   resp.offer_terms[0].payment_schedule_term.schedule[0].charge_date #=> Time
    #   resp.offer_terms[0].payment_schedule_term.schedule[0].charge_amount #=> String
    #   resp.offer_terms[0].recurring_payment_term.id #=> String
    #   resp.offer_terms[0].recurring_payment_term.type #=> String, one of "ByolPricingTerm", "ConfigurableUpfrontPricingTerm", "FixedUpfrontPricingTerm", "UsageBasedPricingTerm", "FreeTrialPricingTerm", "LegalTerm", "PaymentScheduleTerm", "RecurringPaymentTerm", "RenewalTerm", "SupportTerm", "ValidityTerm", "VariablePaymentTerm"
    #   resp.offer_terms[0].recurring_payment_term.currency_code #=> String
    #   resp.offer_terms[0].recurring_payment_term.billing_period #=> String, one of "Monthly"
    #   resp.offer_terms[0].recurring_payment_term.price #=> String
    #   resp.offer_terms[0].renewal_term.id #=> String
    #   resp.offer_terms[0].renewal_term.type #=> String, one of "ByolPricingTerm", "ConfigurableUpfrontPricingTerm", "FixedUpfrontPricingTerm", "UsageBasedPricingTerm", "FreeTrialPricingTerm", "LegalTerm", "PaymentScheduleTerm", "RecurringPaymentTerm", "RenewalTerm", "SupportTerm", "ValidityTerm", "VariablePaymentTerm"
    #   resp.offer_terms[0].support_term.id #=> String
    #   resp.offer_terms[0].support_term.type #=> String, one of "ByolPricingTerm", "ConfigurableUpfrontPricingTerm", "FixedUpfrontPricingTerm", "UsageBasedPricingTerm", "FreeTrialPricingTerm", "LegalTerm", "PaymentScheduleTerm", "RecurringPaymentTerm", "RenewalTerm", "SupportTerm", "ValidityTerm", "VariablePaymentTerm"
    #   resp.offer_terms[0].support_term.refund_policy #=> String
    #   resp.offer_terms[0].usage_based_pricing_term.id #=> String
    #   resp.offer_terms[0].usage_based_pricing_term.type #=> String, one of "ByolPricingTerm", "ConfigurableUpfrontPricingTerm", "FixedUpfrontPricingTerm", "UsageBasedPricingTerm", "FreeTrialPricingTerm", "LegalTerm", "PaymentScheduleTerm", "RecurringPaymentTerm", "RenewalTerm", "SupportTerm", "ValidityTerm", "VariablePaymentTerm"
    #   resp.offer_terms[0].usage_based_pricing_term.currency_code #=> String
    #   resp.offer_terms[0].usage_based_pricing_term.rate_cards #=> Array
    #   resp.offer_terms[0].usage_based_pricing_term.rate_cards[0].rate_card #=> Array
    #   resp.offer_terms[0].usage_based_pricing_term.rate_cards[0].rate_card[0].dimension_key #=> String
    #   resp.offer_terms[0].usage_based_pricing_term.rate_cards[0].rate_card[0].display_name #=> String
    #   resp.offer_terms[0].usage_based_pricing_term.rate_cards[0].rate_card[0].description #=> String
    #   resp.offer_terms[0].usage_based_pricing_term.rate_cards[0].rate_card[0].dimension_labels #=> Array
    #   resp.offer_terms[0].usage_based_pricing_term.rate_cards[0].rate_card[0].dimension_labels[0].label_type #=> String, one of "Region", "SagemakerOption"
    #   resp.offer_terms[0].usage_based_pricing_term.rate_cards[0].rate_card[0].dimension_labels[0].label_value #=> String
    #   resp.offer_terms[0].usage_based_pricing_term.rate_cards[0].rate_card[0].dimension_labels[0].display_name #=> String
    #   resp.offer_terms[0].usage_based_pricing_term.rate_cards[0].rate_card[0].unit #=> String
    #   resp.offer_terms[0].usage_based_pricing_term.rate_cards[0].rate_card[0].price #=> String
    #   resp.offer_terms[0].validity_term.id #=> String
    #   resp.offer_terms[0].validity_term.type #=> String, one of "ByolPricingTerm", "ConfigurableUpfrontPricingTerm", "FixedUpfrontPricingTerm", "UsageBasedPricingTerm", "FreeTrialPricingTerm", "LegalTerm", "PaymentScheduleTerm", "RecurringPaymentTerm", "RenewalTerm", "SupportTerm", "ValidityTerm", "VariablePaymentTerm"
    #   resp.offer_terms[0].validity_term.agreement_duration #=> String
    #   resp.offer_terms[0].validity_term.agreement_end_date #=> Time
    #   resp.offer_terms[0].validity_term.agreement_start_date #=> Time
    #   resp.offer_terms[0].variable_payment_term.id #=> String
    #   resp.offer_terms[0].variable_payment_term.type #=> String, one of "ByolPricingTerm", "ConfigurableUpfrontPricingTerm", "FixedUpfrontPricingTerm", "UsageBasedPricingTerm", "FreeTrialPricingTerm", "LegalTerm", "PaymentScheduleTerm", "RecurringPaymentTerm", "RenewalTerm", "SupportTerm", "ValidityTerm", "VariablePaymentTerm"
    #   resp.offer_terms[0].variable_payment_term.currency_code #=> String
    #   resp.offer_terms[0].variable_payment_term.max_total_charge_amount #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/GetOfferTerms AWS API Documentation
    #
    # @overload get_offer_terms(params = {})
    # @param [Hash] params ({})
    def get_offer_terms(params = {}, options = {})
      req = build_request(:get_offer_terms, params)
      req.send_request(options)
    end

    # Provides details about a product, such as descriptions, highlights,
    # categories, fulfillment option summaries, promotional media, and
    # seller engagement options.
    #
    # @option params [required, String] :product_id
    #   The unique identifier of the product to retrieve.
    #
    # @return [Types::GetProductOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetProductOutput#product_id #product_id} => String
    #   * {Types::GetProductOutput#catalog #catalog} => String
    #   * {Types::GetProductOutput#product_name #product_name} => String
    #   * {Types::GetProductOutput#deployed_on_aws #deployed_on_aws} => String
    #   * {Types::GetProductOutput#short_description #short_description} => String
    #   * {Types::GetProductOutput#long_description #long_description} => String
    #   * {Types::GetProductOutput#manufacturer #manufacturer} => Types::SellerInformation
    #   * {Types::GetProductOutput#logo_thumbnail_url #logo_thumbnail_url} => String
    #   * {Types::GetProductOutput#fulfillment_option_summaries #fulfillment_option_summaries} => Array&lt;Types::FulfillmentOptionSummary&gt;
    #   * {Types::GetProductOutput#categories #categories} => Array&lt;Types::Category&gt;
    #   * {Types::GetProductOutput#highlights #highlights} => Array&lt;String&gt;
    #   * {Types::GetProductOutput#promotional_media #promotional_media} => Array&lt;Types::PromotionalMedia&gt;
    #   * {Types::GetProductOutput#resources #resources} => Array&lt;Types::Resource&gt;
    #   * {Types::GetProductOutput#seller_engagements #seller_engagements} => Array&lt;Types::SellerEngagement&gt;
    #
    #
    # @example Example: GetProduct for SaaS product with DEPLOYED status
    #
    #   resp = client.get_product({
    #     product_id: "prod-sampleSaasId", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     catalog: "AWSMarketplace", 
    #     categories: [
    #       {
    #         category_id: "0625e4fd-88dd-4dd9-9e57-4a0461f97fb4", 
    #         display_name: "Security", 
    #       }, 
    #     ], 
    #     deployed_on_aws: "DEPLOYED", 
    #     fulfillment_option_summaries: [
    #       {
    #         display_name: "SaaS", 
    #         fulfillment_option_type: "SAAS", 
    #       }, 
    #       {
    #         display_name: "API", 
    #         fulfillment_option_type: "API", 
    #       }, 
    #       {
    #         display_name: "Data Exchange", 
    #         fulfillment_option_type: "DATA_EXCHANGE", 
    #       }, 
    #     ], 
    #     highlights: [
    #       "Configured to your specs: Pre-configured environments, out-of-the-box.", 
    #     ], 
    #     logo_thumbnail_url: "https://d7umqicpi7263.cloudfront.net/img/product/07afb7c8-32f1-4851-8289-7e200d817ab1.png", 
    #     long_description: "Gitpod is a developer platform that provides on-demand, pre-configured cloud development environments (CDEs) that automatically integrate into any tool, library, or dependency required for creating software.", 
    #     manufacturer: {
    #       display_name: "sample SaaS seller", 
    #       seller_profile_id: "seller-sampleSaasId", 
    #     }, 
    #     product_id: "prod-sampleSaasId", 
    #     product_name: "sample SaaS product", 
    #     promotional_media: [
    #       {
    #         embedded_image: {
    #           description: "Main security dashboard showing threat analytics", 
    #           title: "Dashboard Overview", 
    #           url: "https://assets.example.com/images/dashboard-main.png", 
    #         }, 
    #       }, 
    #     ], 
    #     resources: [
    #       {
    #         value: "https://www.gitpod.io/blog", 
    #         content_type: "LINK", 
    #         display_name: "Blog", 
    #         resource_type: "MANUFACTURER_SUPPORT", 
    #       }, 
    #       {
    #         value: "support@gitpod.io", 
    #         content_type: "EMAIL", 
    #         display_name: "Email Support", 
    #         resource_type: "MANUFACTURER_SUPPORT", 
    #       }, 
    #     ], 
    #     seller_engagements: [
    #       {
    #         value: "https://aws.amazon.com/marketplace/customer-connect/demo/prodview-sampleSaasId", 
    #         content_type: "LINK", 
    #         engagement_type: "REQUEST_FOR_DEMO", 
    #       }, 
    #     ], 
    #     short_description: "Gitpod provides on-demand, secure cloud development environments or CDEs.", 
    #   }
    #
    # @example Example: GetProduct for AMI product with NOT_DEPLOYED status
    #
    #   resp = client.get_product({
    #     product_id: "prod-sampleAmiId", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     catalog: "AWSMarketplace", 
    #     categories: [
    #       {
    #         category_id: "security-category-001", 
    #         display_name: "Security", 
    #       }, 
    #     ], 
    #     deployed_on_aws: "NOT_DEPLOYED", 
    #     fulfillment_option_summaries: [
    #       {
    #         display_name: "Amazon Machine Image", 
    #         fulfillment_option_type: "AMAZON_MACHINE_IMAGE", 
    #       }, 
    #       {
    #         display_name: "CloudFormation Template", 
    #         fulfillment_option_type: "CLOUDFORMATION_TEMPLATE", 
    #       }, 
    #       {
    #         display_name: "Container", 
    #         fulfillment_option_type: "CONTAINER", 
    #       }, 
    #       {
    #         display_name: "Helm", 
    #         fulfillment_option_type: "HELM", 
    #       }, 
    #     ], 
    #     highlights: [
    #       "AES-256 encryption at rest and in transit", 
    #     ], 
    #     logo_thumbnail_url: "https://d7umqicpi7263.cloudfront.net/img/product/securevault-logo.png", 
    #     long_description: "SecureVault Enterprise provides comprehensive data encryption, key management, and security compliance tools for organizations.", 
    #     manufacturer: {
    #       display_name: "sample AMI seller", 
    #       seller_profile_id: "seller-sampleAmiId", 
    #     }, 
    #     product_id: "prod-sampleAmiId", 
    #     product_name: "sample AMI product", 
    #     promotional_media: [
    #       {
    #         embedded_video: {
    #           description: "A comprehensive overview of SecureVault features", 
    #           preview: "https://assets.example.com/videos/intro-preview.jpg", 
    #           thumbnail: "https://assets.example.com/videos/intro-thumb.jpg", 
    #           title: "SecureVault Introduction", 
    #           url: "https://assets.example.com/videos/intro.mp4", 
    #         }, 
    #       }, 
    #     ], 
    #     resources: [
    #       {
    #         value: "+1-555-123-4567", 
    #         content_type: "PHONE_NUMBER", 
    #         display_name: "Phone Support", 
    #         resource_type: "MANUFACTURER_SUPPORT", 
    #       }, 
    #       {
    #         value: "Contact your account manager for installation assistance.", 
    #         content_type: "OTHER", 
    #         display_name: "Installation Help", 
    #         resource_type: "MANUFACTURER_INSTRUCTIONS", 
    #       }, 
    #     ], 
    #     seller_engagements: [
    #       {
    #         value: "https://aws.amazon.com/marketplace/customer-connect/private-offer/prodview-sampleAmiId", 
    #         content_type: "LINK", 
    #         engagement_type: "REQUEST_FOR_PRIVATE_OFFER", 
    #       }, 
    #     ], 
    #     short_description: "Enterprise-grade data encryption and key management solution.", 
    #   }
    #
    # @example Example: GetProduct for professional services with NOT_APPLICABLE status
    #
    #   resp = client.get_product({
    #     product_id: "prod-sampleProServId", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     catalog: "AWSMarketplace", 
    #     categories: [
    #       {
    #         category_id: "consulting-category-001", 
    #         display_name: "Consulting", 
    #       }, 
    #     ], 
    #     deployed_on_aws: "NOT_APPLICABLE", 
    #     fulfillment_option_summaries: [
    #       {
    #         display_name: "Professional Services", 
    #         fulfillment_option_type: "PROFESSIONAL_SERVICES", 
    #       }, 
    #       {
    #         display_name: "EKS Add-on", 
    #         fulfillment_option_type: "EKS_ADD_ON", 
    #       }, 
    #       {
    #         display_name: "EC2 Image Builder Component", 
    #         fulfillment_option_type: "EC2_IMAGE_BUILDER_COMPONENT", 
    #       }, 
    #       {
    #         display_name: "SageMaker Algorithm", 
    #         fulfillment_option_type: "SAGEMAKER_ALGORITHM", 
    #       }, 
    #       {
    #         display_name: "SageMaker Model", 
    #         fulfillment_option_type: "SAGEMAKER_MODEL", 
    #       }, 
    #     ], 
    #     highlights: [
    #       "Certified AWS migration specialists", 
    #     ], 
    #     logo_thumbnail_url: "https://d7umqicpi7263.cloudfront.net/img/product/cloudexperts-logo.png", 
    #     long_description: "Professional consulting services to help organizations plan and execute their cloud migration strategy.", 
    #     manufacturer: {
    #       display_name: "sample professional services seller", 
    #       seller_profile_id: "seller-sampleProServId", 
    #     }, 
    #     product_id: "prod-sampleProServId", 
    #     product_name: "sample professional services product", 
    #     promotional_media: [
    #     ], 
    #     resources: [
    #       {
    #         value: "https://www.cloudexperts.example.com/docs", 
    #         content_type: "LINK", 
    #         display_name: "Documentation", 
    #         resource_type: "MANUFACTURER_INSTRUCTIONS", 
    #       }, 
    #     ], 
    #     seller_engagements: [
    #       {
    #         value: "https://aws.amazon.com/marketplace/customer-connect/demo/prodview-sampleProServId", 
    #         content_type: "LINK", 
    #         engagement_type: "REQUEST_FOR_DEMO", 
    #       }, 
    #     ], 
    #     short_description: "Expert cloud migration and modernization consulting services.", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_product({
    #     product_id: "ProductId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.product_id #=> String
    #   resp.catalog #=> String
    #   resp.product_name #=> String
    #   resp.deployed_on_aws #=> String, one of "DEPLOYED", "NOT_DEPLOYED", "NOT_APPLICABLE"
    #   resp.short_description #=> String
    #   resp.long_description #=> String
    #   resp.manufacturer.seller_profile_id #=> String
    #   resp.manufacturer.display_name #=> String
    #   resp.logo_thumbnail_url #=> String
    #   resp.fulfillment_option_summaries #=> Array
    #   resp.fulfillment_option_summaries[0].fulfillment_option_type #=> String, one of "AMAZON_MACHINE_IMAGE", "API", "CLOUDFORMATION_TEMPLATE", "CONTAINER", "HELM", "EKS_ADD_ON", "EC2_IMAGE_BUILDER_COMPONENT", "DATA_EXCHANGE", "PROFESSIONAL_SERVICES", "SAAS", "SAGEMAKER_ALGORITHM", "SAGEMAKER_MODEL"
    #   resp.fulfillment_option_summaries[0].display_name #=> String
    #   resp.categories #=> Array
    #   resp.categories[0].category_id #=> String
    #   resp.categories[0].display_name #=> String
    #   resp.highlights #=> Array
    #   resp.highlights[0] #=> String
    #   resp.promotional_media #=> Array
    #   resp.promotional_media[0].embedded_image.title #=> String
    #   resp.promotional_media[0].embedded_image.url #=> String
    #   resp.promotional_media[0].embedded_image.description #=> String
    #   resp.promotional_media[0].embedded_video.title #=> String
    #   resp.promotional_media[0].embedded_video.url #=> String
    #   resp.promotional_media[0].embedded_video.preview #=> String
    #   resp.promotional_media[0].embedded_video.thumbnail #=> String
    #   resp.promotional_media[0].embedded_video.description #=> String
    #   resp.resources #=> Array
    #   resp.resources[0].resource_type #=> String, one of "MANUFACTURER_SUPPORT", "MANUFACTURER_INSTRUCTIONS"
    #   resp.resources[0].content_type #=> String, one of "EMAIL", "PHONE_NUMBER", "LINK", "OTHER"
    #   resp.resources[0].value #=> String
    #   resp.resources[0].display_name #=> String
    #   resp.seller_engagements #=> Array
    #   resp.seller_engagements[0].engagement_type #=> String, one of "REQUEST_FOR_PRIVATE_OFFER", "REQUEST_FOR_DEMO"
    #   resp.seller_engagements[0].content_type #=> String, one of "LINK"
    #   resp.seller_engagements[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/GetProduct AWS API Documentation
    #
    # @overload get_product(params = {})
    # @param [Hash] params ({})
    def get_product(params = {}, options = {})
      req = build_request(:get_product, params)
      req.send_request(options)
    end

    # Returns the fulfillment options available for a product, including
    # deployment details such as version information, operating systems,
    # usage instructions, and release notes.
    #
    # @option params [required, String] :product_id
    #   The unique identifier of the product for which to list fulfillment
    #   options.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results that are returned per call. You can use
    #   `nextToken` to get more results.
    #
    # @option params [String] :next_token
    #   If `nextToken` is returned, there are more results available. Make the
    #   call again using the returned token to retrieve the next page.
    #
    # @return [Types::ListFulfillmentOptionsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListFulfillmentOptionsOutput#fulfillment_options #fulfillment_options} => Array&lt;Types::FulfillmentOption&gt;
    #   * {Types::ListFulfillmentOptionsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: List AMI Fulfillment Options
    #
    #   resp = client.list_fulfillment_options({
    #     product_id: "prod-sampleAmiId", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     fulfillment_options: [
    #       {
    #         amazon_machine_image_fulfillment_option: {
    #           fulfillment_option_display_name: "Amazon Machine Image", 
    #           fulfillment_option_id: "fo-sampleAmiId", 
    #           fulfillment_option_name: "64-bit (x86) Amazon Machine Image (AMI)", 
    #           fulfillment_option_type: "AMAZON_MACHINE_IMAGE", 
    #           fulfillment_option_version: "2.0.20260120.1", 
    #           operating_systems: [
    #             {
    #               operating_system_family_name: "AMAZONLINUX", 
    #               operating_system_name: "AmazonLinux 2.0.20250623.0", 
    #               operating_system_version: "2.0.20250623.0", 
    #             }, 
    #           ], 
    #           recommendation: {
    #             instance_type: "t3a.medium", 
    #           }, 
    #           release_notes: "https://aws.amazon.com/amazon-linux-2/release-notes/", 
    #           usage_instructions: "The Amazon Linux 2 AMI can be launched through the EC2 console's Quick Launch page.", 
    #         }, 
    #       }, 
    #     ], 
    #   }
    #
    # @example Example: List API Fulfillment Options
    #
    #   resp = client.list_fulfillment_options({
    #     product_id: "prod-sampleApiId", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     fulfillment_options: [
    #       {
    #         api_fulfillment_option: {
    #           aws_supported_services: [
    #             {
    #               description: "A managed service that enables you to develop, deploy, and maintain AI agents seamlessly.", 
    #               display_name: "Amazon Bedrock AgentCore", 
    #               supported_service_type: "BEDROCK_AGENTCORE", 
    #             }, 
    #           ], 
    #           fulfillment_option_display_name: "API-Based Agents & Tools", 
    #           fulfillment_option_id: "fo-sampleApiId", 
    #           fulfillment_option_type: "API", 
    #           usage_instructions: "Please refer to the MCP usage instructions.", 
    #         }, 
    #       }, 
    #     ], 
    #   }
    #
    # @example Example: List CloudFormation Template Fulfillment Options
    #
    #   resp = client.list_fulfillment_options({
    #     product_id: "prod-sampleCftId", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     fulfillment_options: [
    #       {
    #         cloud_formation_fulfillment_option: {
    #           fulfillment_option_display_name: "CloudFormation Template", 
    #           fulfillment_option_id: "fo-sampleCftId", 
    #           fulfillment_option_name: "Sophos Standalone Firewall for AWS", 
    #           fulfillment_option_type: "CLOUDFORMATION_TEMPLATE", 
    #           fulfillment_option_version: "21.5 MR1", 
    #           release_notes: "https://community.sophos.com/products/xg-firewall/b/blog", 
    #           usage_instructions: "You can manage your Sophos XG Firewall on AWS from the Web Interface using HTTPS (TCP port 4444).", 
    #         }, 
    #       }, 
    #     ], 
    #   }
    #
    # @example Example: List Container Fulfillment Options
    #
    #   resp = client.list_fulfillment_options({
    #     product_id: "prod-sampleContainerId", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     fulfillment_options: [
    #       {
    #         container_fulfillment_option: {
    #           aws_supported_services: [
    #             {
    #               description: "A managed service that enables you to develop, deploy, and maintain AI agents seamlessly.", 
    #               display_name: "Amazon Bedrock AgentCore", 
    #               supported_service_type: "BEDROCK_AGENTCORE", 
    #             }, 
    #           ], 
    #           fulfillment_option_display_name: "Container Image", 
    #           fulfillment_option_id: "fo-sampleContainerId", 
    #           fulfillment_option_name: "New delivery option 1", 
    #           fulfillment_option_type: "CONTAINER", 
    #           fulfillment_option_version: "Elastic MCP Version 1", 
    #           operating_systems: [
    #             {
    #               operating_system_family_name: "Linux", 
    #               operating_system_name: "Linux", 
    #             }, 
    #           ], 
    #           release_notes: "Version 1 of Elastic MCP Server", 
    #           usage_instructions: "See Elastic MCP GitHub instructions", 
    #         }, 
    #       }, 
    #     ], 
    #   }
    #
    # @example Example: List Helm Fulfillment Options
    #
    #   resp = client.list_fulfillment_options({
    #     product_id: "prod-sampleHelmId", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     fulfillment_options: [
    #       {
    #         helm_fulfillment_option: {
    #           aws_supported_services: [
    #             {
    #               description: "Amazon Elastic Kubernetes Service", 
    #               display_name: "Amazon EKS", 
    #               supported_service_type: "EKS", 
    #             }, 
    #           ], 
    #           fulfillment_option_display_name: "Helm Chart", 
    #           fulfillment_option_id: "fo-sampleHelmId", 
    #           fulfillment_option_name: "NGINX Ingress Controller", 
    #           fulfillment_option_type: "HELM", 
    #           fulfillment_option_version: "1.14.3-0-r03", 
    #           operating_systems: [
    #             {
    #               operating_system_family_name: "Linux", 
    #               operating_system_name: "Linux", 
    #             }, 
    #           ], 
    #           release_notes: "* Maintenance release", 
    #           usage_instructions: "helm install nginx-ingress", 
    #         }, 
    #       }, 
    #     ], 
    #   }
    #
    # @example Example: List EKS Add-On Fulfillment Options
    #
    #   resp = client.list_fulfillment_options({
    #     product_id: "prod-sampleEksId", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     fulfillment_options: [
    #       {
    #         eks_add_on_fulfillment_option: {
    #           aws_supported_services: [
    #             {
    #               description: "Amazon Elastic Kubernetes Service", 
    #               display_name: "Amazon EKS", 
    #               supported_service_type: "EKS", 
    #             }, 
    #           ], 
    #           fulfillment_option_display_name: "Add-on for Amazon EKS", 
    #           fulfillment_option_id: "fo-sampleEksId", 
    #           fulfillment_option_name: "Splunk Distribution of the OpenTelemetry Collector Chart", 
    #           fulfillment_option_type: "EKS_ADD_ON", 
    #           fulfillment_option_version: "0.144.0", 
    #           operating_systems: [
    #             {
    #               operating_system_family_name: "Linux", 
    #               operating_system_name: "Linux", 
    #             }, 
    #           ], 
    #           release_notes: "https://github.com/signalfx/splunk-otel-collector-chart/releases/tag/splunk-otel-collector-0.144.0", 
    #           usage_instructions: "https://help.splunk.com/en/splunk-observability-cloud/manage-data/splunk-distribution-of-the-opentelemetry-collector/get-started-with-the-splunk-distribution-of-the-opentelemetry-collector/collector-for-kubernetes/kubernetes-eks-add-on", 
    #         }, 
    #       }, 
    #     ], 
    #   }
    #
    # @example Example: List EC2 Image Builder Component Fulfillment Options
    #
    #   resp = client.list_fulfillment_options({
    #     product_id: "prod-sampleImageBuilderId", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     fulfillment_options: [
    #       {
    #         ec2_image_builder_component_fulfillment_option: {
    #           aws_supported_services: [
    #             {
    #               description: "EC2 Image Builder is a fully managed AWS service. It automates creation, management, and deployment of custom, secure, and up-to-date server images.", 
    #               display_name: "Amazon EC2 Image Builder", 
    #               supported_service_type: "IMAGEBUILDER", 
    #             }, 
    #           ], 
    #           fulfillment_option_display_name: "EC2 Image Builder Component", 
    #           fulfillment_option_id: "fo-sampleImageBuilderId", 
    #           fulfillment_option_name: "Linux v1.2.3", 
    #           fulfillment_option_type: "EC2_IMAGE_BUILDER_COMPONENT", 
    #           fulfillment_option_version: "1.2.3", 
    #           operating_systems: [
    #             {
    #               operating_system_family_name: "Linux", 
    #               operating_system_name: "Linux", 
    #             }, 
    #           ], 
    #           release_notes: "https://github.com/CrowdStrike/aws-ec2-image-builder/releases", 
    #           usage_instructions: "https://github.com/CrowdStrike/aws-ec2-image-builder", 
    #         }, 
    #       }, 
    #     ], 
    #   }
    #
    # @example Example: List Data Exchange Fulfillment Options
    #
    #   resp = client.list_fulfillment_options({
    #     product_id: "prod-sampleDataExchangeId", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     fulfillment_options: [
    #       {
    #         data_exchange_fulfillment_option: {
    #           data_artifacts: [
    #             {
    #               data_classification: "NONE", 
    #               description: "Sample testing dataset.", 
    #               resource_arn: "arn:aws:dataexchange:us-east-2::DataSet/sample-dataset-id", 
    #               resource_type: "API_GATEWAY_APIS", 
    #             }, 
    #           ], 
    #           fulfillment_option_display_name: "Data Exchange", 
    #           fulfillment_option_id: "fo-sampleDataExchangeId", 
    #           fulfillment_option_type: "DATA_EXCHANGE", 
    #         }, 
    #       }, 
    #     ], 
    #   }
    #
    # @example Example: List Professional Services Fulfillment Options
    #
    #   resp = client.list_fulfillment_options({
    #     product_id: "prod-sampleProServId", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     fulfillment_options: [
    #       {
    #         professional_services_fulfillment_option: {
    #           fulfillment_option_display_name: "Professional Services", 
    #           fulfillment_option_id: "fo-sampleProServId", 
    #           fulfillment_option_type: "PROFESSIONAL_SERVICES", 
    #         }, 
    #       }, 
    #     ], 
    #   }
    #
    # @example Example: List SaaS Fulfillment Options
    #
    #   resp = client.list_fulfillment_options({
    #     product_id: "prod-sampleSaasId", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     fulfillment_options: [
    #       {
    #         saas_fulfillment_option: {
    #           fulfillment_option_display_name: "SaaS", 
    #           fulfillment_option_id: "fo-sampleSaasId", 
    #           fulfillment_option_type: "SAAS", 
    #           fulfillment_url: "https://example.com/order/SAMPLE123", 
    #         }, 
    #       }, 
    #     ], 
    #   }
    #
    # @example Example: List SageMaker Algorithm Fulfillment Options
    #
    #   resp = client.list_fulfillment_options({
    #     product_id: "prod-sampleSmAlgoId", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     fulfillment_options: [
    #       {
    #         sage_maker_algorithm_fulfillment_option: {
    #           fulfillment_option_display_name: "SageMaker Algorithm", 
    #           fulfillment_option_id: "fo-sampleSmAlgoId", 
    #           fulfillment_option_type: "SAGEMAKER_ALGORITHM", 
    #           fulfillment_option_version: "v1.0.0", 
    #           recommendation: {
    #             recommended_batch_transform_instance_type: "ml.m5.large", 
    #             recommended_realtime_inference_instance_type: "ml.m5.large", 
    #             recommended_training_instance_type: "ml.g4dn.xlarge", 
    #           }, 
    #           release_notes: "Bug fixes", 
    #           usage_instructions: "A zip file called train should be provided.", 
    #         }, 
    #       }, 
    #     ], 
    #   }
    #
    # @example Example: List SageMaker Model Fulfillment Options
    #
    #   resp = client.list_fulfillment_options({
    #     product_id: "prod-sampleSmModelId", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     fulfillment_options: [
    #       {
    #         sage_maker_model_fulfillment_option: {
    #           fulfillment_option_display_name: "SageMaker Model", 
    #           fulfillment_option_id: "fo-sampleSmModelId", 
    #           fulfillment_option_type: "SAGEMAKER_MODEL", 
    #           fulfillment_option_version: "1.2.3", 
    #           recommendation: {
    #             recommended_batch_transform_instance_type: "ml.g5.12xlarge", 
    #             recommended_realtime_inference_instance_type: "ml.g5.12xlarge", 
    #           }, 
    #           release_notes: "Initial release", 
    #           usage_instructions: "See Input Summary", 
    #         }, 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_fulfillment_options({
    #     product_id: "ProductId", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.fulfillment_options #=> Array
    #   resp.fulfillment_options[0].amazon_machine_image_fulfillment_option.fulfillment_option_id #=> String
    #   resp.fulfillment_options[0].amazon_machine_image_fulfillment_option.fulfillment_option_name #=> String
    #   resp.fulfillment_options[0].amazon_machine_image_fulfillment_option.fulfillment_option_version #=> String
    #   resp.fulfillment_options[0].amazon_machine_image_fulfillment_option.fulfillment_option_type #=> String, one of "AMAZON_MACHINE_IMAGE", "API", "CLOUDFORMATION_TEMPLATE", "CONTAINER", "HELM", "EKS_ADD_ON", "EC2_IMAGE_BUILDER_COMPONENT", "DATA_EXCHANGE", "PROFESSIONAL_SERVICES", "SAAS", "SAGEMAKER_ALGORITHM", "SAGEMAKER_MODEL"
    #   resp.fulfillment_options[0].amazon_machine_image_fulfillment_option.fulfillment_option_display_name #=> String
    #   resp.fulfillment_options[0].amazon_machine_image_fulfillment_option.operating_systems #=> Array
    #   resp.fulfillment_options[0].amazon_machine_image_fulfillment_option.operating_systems[0].operating_system_family_name #=> String
    #   resp.fulfillment_options[0].amazon_machine_image_fulfillment_option.operating_systems[0].operating_system_name #=> String
    #   resp.fulfillment_options[0].amazon_machine_image_fulfillment_option.operating_systems[0].operating_system_version #=> String
    #   resp.fulfillment_options[0].amazon_machine_image_fulfillment_option.recommendation.instance_type #=> String
    #   resp.fulfillment_options[0].amazon_machine_image_fulfillment_option.release_notes #=> String
    #   resp.fulfillment_options[0].amazon_machine_image_fulfillment_option.usage_instructions #=> String
    #   resp.fulfillment_options[0].api_fulfillment_option.fulfillment_option_id #=> String
    #   resp.fulfillment_options[0].api_fulfillment_option.fulfillment_option_type #=> String, one of "AMAZON_MACHINE_IMAGE", "API", "CLOUDFORMATION_TEMPLATE", "CONTAINER", "HELM", "EKS_ADD_ON", "EC2_IMAGE_BUILDER_COMPONENT", "DATA_EXCHANGE", "PROFESSIONAL_SERVICES", "SAAS", "SAGEMAKER_ALGORITHM", "SAGEMAKER_MODEL"
    #   resp.fulfillment_options[0].api_fulfillment_option.fulfillment_option_display_name #=> String
    #   resp.fulfillment_options[0].api_fulfillment_option.usage_instructions #=> String
    #   resp.fulfillment_options[0].api_fulfillment_option.aws_supported_services #=> Array
    #   resp.fulfillment_options[0].api_fulfillment_option.aws_supported_services[0].supported_service_type #=> String
    #   resp.fulfillment_options[0].api_fulfillment_option.aws_supported_services[0].display_name #=> String
    #   resp.fulfillment_options[0].api_fulfillment_option.aws_supported_services[0].description #=> String
    #   resp.fulfillment_options[0].cloud_formation_fulfillment_option.fulfillment_option_id #=> String
    #   resp.fulfillment_options[0].cloud_formation_fulfillment_option.fulfillment_option_name #=> String
    #   resp.fulfillment_options[0].cloud_formation_fulfillment_option.fulfillment_option_type #=> String, one of "AMAZON_MACHINE_IMAGE", "API", "CLOUDFORMATION_TEMPLATE", "CONTAINER", "HELM", "EKS_ADD_ON", "EC2_IMAGE_BUILDER_COMPONENT", "DATA_EXCHANGE", "PROFESSIONAL_SERVICES", "SAAS", "SAGEMAKER_ALGORITHM", "SAGEMAKER_MODEL"
    #   resp.fulfillment_options[0].cloud_formation_fulfillment_option.fulfillment_option_display_name #=> String
    #   resp.fulfillment_options[0].cloud_formation_fulfillment_option.fulfillment_option_version #=> String
    #   resp.fulfillment_options[0].cloud_formation_fulfillment_option.release_notes #=> String
    #   resp.fulfillment_options[0].cloud_formation_fulfillment_option.usage_instructions #=> String
    #   resp.fulfillment_options[0].container_fulfillment_option.fulfillment_option_id #=> String
    #   resp.fulfillment_options[0].container_fulfillment_option.fulfillment_option_name #=> String
    #   resp.fulfillment_options[0].container_fulfillment_option.fulfillment_option_type #=> String, one of "AMAZON_MACHINE_IMAGE", "API", "CLOUDFORMATION_TEMPLATE", "CONTAINER", "HELM", "EKS_ADD_ON", "EC2_IMAGE_BUILDER_COMPONENT", "DATA_EXCHANGE", "PROFESSIONAL_SERVICES", "SAAS", "SAGEMAKER_ALGORITHM", "SAGEMAKER_MODEL"
    #   resp.fulfillment_options[0].container_fulfillment_option.fulfillment_option_display_name #=> String
    #   resp.fulfillment_options[0].container_fulfillment_option.fulfillment_option_version #=> String
    #   resp.fulfillment_options[0].container_fulfillment_option.operating_systems #=> Array
    #   resp.fulfillment_options[0].container_fulfillment_option.operating_systems[0].operating_system_family_name #=> String
    #   resp.fulfillment_options[0].container_fulfillment_option.operating_systems[0].operating_system_name #=> String
    #   resp.fulfillment_options[0].container_fulfillment_option.aws_supported_services #=> Array
    #   resp.fulfillment_options[0].container_fulfillment_option.aws_supported_services[0].supported_service_type #=> String
    #   resp.fulfillment_options[0].container_fulfillment_option.aws_supported_services[0].display_name #=> String
    #   resp.fulfillment_options[0].container_fulfillment_option.aws_supported_services[0].description #=> String
    #   resp.fulfillment_options[0].container_fulfillment_option.release_notes #=> String
    #   resp.fulfillment_options[0].container_fulfillment_option.usage_instructions #=> String
    #   resp.fulfillment_options[0].helm_fulfillment_option.fulfillment_option_id #=> String
    #   resp.fulfillment_options[0].helm_fulfillment_option.fulfillment_option_name #=> String
    #   resp.fulfillment_options[0].helm_fulfillment_option.fulfillment_option_type #=> String, one of "AMAZON_MACHINE_IMAGE", "API", "CLOUDFORMATION_TEMPLATE", "CONTAINER", "HELM", "EKS_ADD_ON", "EC2_IMAGE_BUILDER_COMPONENT", "DATA_EXCHANGE", "PROFESSIONAL_SERVICES", "SAAS", "SAGEMAKER_ALGORITHM", "SAGEMAKER_MODEL"
    #   resp.fulfillment_options[0].helm_fulfillment_option.fulfillment_option_display_name #=> String
    #   resp.fulfillment_options[0].helm_fulfillment_option.fulfillment_option_version #=> String
    #   resp.fulfillment_options[0].helm_fulfillment_option.operating_systems #=> Array
    #   resp.fulfillment_options[0].helm_fulfillment_option.operating_systems[0].operating_system_family_name #=> String
    #   resp.fulfillment_options[0].helm_fulfillment_option.operating_systems[0].operating_system_name #=> String
    #   resp.fulfillment_options[0].helm_fulfillment_option.release_notes #=> String
    #   resp.fulfillment_options[0].helm_fulfillment_option.aws_supported_services #=> Array
    #   resp.fulfillment_options[0].helm_fulfillment_option.aws_supported_services[0].supported_service_type #=> String
    #   resp.fulfillment_options[0].helm_fulfillment_option.aws_supported_services[0].display_name #=> String
    #   resp.fulfillment_options[0].helm_fulfillment_option.aws_supported_services[0].description #=> String
    #   resp.fulfillment_options[0].helm_fulfillment_option.usage_instructions #=> String
    #   resp.fulfillment_options[0].eks_add_on_fulfillment_option.fulfillment_option_id #=> String
    #   resp.fulfillment_options[0].eks_add_on_fulfillment_option.fulfillment_option_name #=> String
    #   resp.fulfillment_options[0].eks_add_on_fulfillment_option.fulfillment_option_type #=> String, one of "AMAZON_MACHINE_IMAGE", "API", "CLOUDFORMATION_TEMPLATE", "CONTAINER", "HELM", "EKS_ADD_ON", "EC2_IMAGE_BUILDER_COMPONENT", "DATA_EXCHANGE", "PROFESSIONAL_SERVICES", "SAAS", "SAGEMAKER_ALGORITHM", "SAGEMAKER_MODEL"
    #   resp.fulfillment_options[0].eks_add_on_fulfillment_option.fulfillment_option_display_name #=> String
    #   resp.fulfillment_options[0].eks_add_on_fulfillment_option.fulfillment_option_version #=> String
    #   resp.fulfillment_options[0].eks_add_on_fulfillment_option.operating_systems #=> Array
    #   resp.fulfillment_options[0].eks_add_on_fulfillment_option.operating_systems[0].operating_system_family_name #=> String
    #   resp.fulfillment_options[0].eks_add_on_fulfillment_option.operating_systems[0].operating_system_name #=> String
    #   resp.fulfillment_options[0].eks_add_on_fulfillment_option.release_notes #=> String
    #   resp.fulfillment_options[0].eks_add_on_fulfillment_option.usage_instructions #=> String
    #   resp.fulfillment_options[0].eks_add_on_fulfillment_option.aws_supported_services #=> Array
    #   resp.fulfillment_options[0].eks_add_on_fulfillment_option.aws_supported_services[0].supported_service_type #=> String
    #   resp.fulfillment_options[0].eks_add_on_fulfillment_option.aws_supported_services[0].display_name #=> String
    #   resp.fulfillment_options[0].eks_add_on_fulfillment_option.aws_supported_services[0].description #=> String
    #   resp.fulfillment_options[0].ec2_image_builder_component_fulfillment_option.fulfillment_option_id #=> String
    #   resp.fulfillment_options[0].ec2_image_builder_component_fulfillment_option.fulfillment_option_name #=> String
    #   resp.fulfillment_options[0].ec2_image_builder_component_fulfillment_option.fulfillment_option_type #=> String, one of "AMAZON_MACHINE_IMAGE", "API", "CLOUDFORMATION_TEMPLATE", "CONTAINER", "HELM", "EKS_ADD_ON", "EC2_IMAGE_BUILDER_COMPONENT", "DATA_EXCHANGE", "PROFESSIONAL_SERVICES", "SAAS", "SAGEMAKER_ALGORITHM", "SAGEMAKER_MODEL"
    #   resp.fulfillment_options[0].ec2_image_builder_component_fulfillment_option.fulfillment_option_display_name #=> String
    #   resp.fulfillment_options[0].ec2_image_builder_component_fulfillment_option.fulfillment_option_version #=> String
    #   resp.fulfillment_options[0].ec2_image_builder_component_fulfillment_option.operating_systems #=> Array
    #   resp.fulfillment_options[0].ec2_image_builder_component_fulfillment_option.operating_systems[0].operating_system_family_name #=> String
    #   resp.fulfillment_options[0].ec2_image_builder_component_fulfillment_option.operating_systems[0].operating_system_name #=> String
    #   resp.fulfillment_options[0].ec2_image_builder_component_fulfillment_option.aws_supported_services #=> Array
    #   resp.fulfillment_options[0].ec2_image_builder_component_fulfillment_option.aws_supported_services[0].supported_service_type #=> String
    #   resp.fulfillment_options[0].ec2_image_builder_component_fulfillment_option.aws_supported_services[0].display_name #=> String
    #   resp.fulfillment_options[0].ec2_image_builder_component_fulfillment_option.aws_supported_services[0].description #=> String
    #   resp.fulfillment_options[0].ec2_image_builder_component_fulfillment_option.release_notes #=> String
    #   resp.fulfillment_options[0].ec2_image_builder_component_fulfillment_option.usage_instructions #=> String
    #   resp.fulfillment_options[0].data_exchange_fulfillment_option.fulfillment_option_id #=> String
    #   resp.fulfillment_options[0].data_exchange_fulfillment_option.fulfillment_option_type #=> String, one of "AMAZON_MACHINE_IMAGE", "API", "CLOUDFORMATION_TEMPLATE", "CONTAINER", "HELM", "EKS_ADD_ON", "EC2_IMAGE_BUILDER_COMPONENT", "DATA_EXCHANGE", "PROFESSIONAL_SERVICES", "SAAS", "SAGEMAKER_ALGORITHM", "SAGEMAKER_MODEL"
    #   resp.fulfillment_options[0].data_exchange_fulfillment_option.fulfillment_option_display_name #=> String
    #   resp.fulfillment_options[0].data_exchange_fulfillment_option.data_artifacts #=> Array
    #   resp.fulfillment_options[0].data_exchange_fulfillment_option.data_artifacts[0].description #=> String
    #   resp.fulfillment_options[0].data_exchange_fulfillment_option.data_artifacts[0].resource_arn #=> String
    #   resp.fulfillment_options[0].data_exchange_fulfillment_option.data_artifacts[0].resource_type #=> String
    #   resp.fulfillment_options[0].data_exchange_fulfillment_option.data_artifacts[0].data_classification #=> String
    #   resp.fulfillment_options[0].professional_services_fulfillment_option.fulfillment_option_id #=> String
    #   resp.fulfillment_options[0].professional_services_fulfillment_option.fulfillment_option_type #=> String, one of "AMAZON_MACHINE_IMAGE", "API", "CLOUDFORMATION_TEMPLATE", "CONTAINER", "HELM", "EKS_ADD_ON", "EC2_IMAGE_BUILDER_COMPONENT", "DATA_EXCHANGE", "PROFESSIONAL_SERVICES", "SAAS", "SAGEMAKER_ALGORITHM", "SAGEMAKER_MODEL"
    #   resp.fulfillment_options[0].professional_services_fulfillment_option.fulfillment_option_display_name #=> String
    #   resp.fulfillment_options[0].saas_fulfillment_option.fulfillment_option_id #=> String
    #   resp.fulfillment_options[0].saas_fulfillment_option.fulfillment_option_type #=> String, one of "AMAZON_MACHINE_IMAGE", "API", "CLOUDFORMATION_TEMPLATE", "CONTAINER", "HELM", "EKS_ADD_ON", "EC2_IMAGE_BUILDER_COMPONENT", "DATA_EXCHANGE", "PROFESSIONAL_SERVICES", "SAAS", "SAGEMAKER_ALGORITHM", "SAGEMAKER_MODEL"
    #   resp.fulfillment_options[0].saas_fulfillment_option.fulfillment_option_display_name #=> String
    #   resp.fulfillment_options[0].saas_fulfillment_option.fulfillment_url #=> String
    #   resp.fulfillment_options[0].saas_fulfillment_option.usage_instructions #=> String
    #   resp.fulfillment_options[0].sage_maker_algorithm_fulfillment_option.fulfillment_option_id #=> String
    #   resp.fulfillment_options[0].sage_maker_algorithm_fulfillment_option.fulfillment_option_type #=> String, one of "AMAZON_MACHINE_IMAGE", "API", "CLOUDFORMATION_TEMPLATE", "CONTAINER", "HELM", "EKS_ADD_ON", "EC2_IMAGE_BUILDER_COMPONENT", "DATA_EXCHANGE", "PROFESSIONAL_SERVICES", "SAAS", "SAGEMAKER_ALGORITHM", "SAGEMAKER_MODEL"
    #   resp.fulfillment_options[0].sage_maker_algorithm_fulfillment_option.fulfillment_option_display_name #=> String
    #   resp.fulfillment_options[0].sage_maker_algorithm_fulfillment_option.fulfillment_option_version #=> String
    #   resp.fulfillment_options[0].sage_maker_algorithm_fulfillment_option.release_notes #=> String
    #   resp.fulfillment_options[0].sage_maker_algorithm_fulfillment_option.usage_instructions #=> String
    #   resp.fulfillment_options[0].sage_maker_algorithm_fulfillment_option.recommendation.recommended_batch_transform_instance_type #=> String
    #   resp.fulfillment_options[0].sage_maker_algorithm_fulfillment_option.recommendation.recommended_realtime_inference_instance_type #=> String
    #   resp.fulfillment_options[0].sage_maker_algorithm_fulfillment_option.recommendation.recommended_training_instance_type #=> String
    #   resp.fulfillment_options[0].sage_maker_model_fulfillment_option.fulfillment_option_id #=> String
    #   resp.fulfillment_options[0].sage_maker_model_fulfillment_option.fulfillment_option_type #=> String, one of "AMAZON_MACHINE_IMAGE", "API", "CLOUDFORMATION_TEMPLATE", "CONTAINER", "HELM", "EKS_ADD_ON", "EC2_IMAGE_BUILDER_COMPONENT", "DATA_EXCHANGE", "PROFESSIONAL_SERVICES", "SAAS", "SAGEMAKER_ALGORITHM", "SAGEMAKER_MODEL"
    #   resp.fulfillment_options[0].sage_maker_model_fulfillment_option.fulfillment_option_display_name #=> String
    #   resp.fulfillment_options[0].sage_maker_model_fulfillment_option.fulfillment_option_version #=> String
    #   resp.fulfillment_options[0].sage_maker_model_fulfillment_option.release_notes #=> String
    #   resp.fulfillment_options[0].sage_maker_model_fulfillment_option.usage_instructions #=> String
    #   resp.fulfillment_options[0].sage_maker_model_fulfillment_option.recommendation.recommended_batch_transform_instance_type #=> String
    #   resp.fulfillment_options[0].sage_maker_model_fulfillment_option.recommendation.recommended_realtime_inference_instance_type #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/ListFulfillmentOptions AWS API Documentation
    #
    # @overload list_fulfillment_options(params = {})
    # @param [Hash] params ({})
    def list_fulfillment_options(params = {}, options = {})
      req = build_request(:list_fulfillment_options, params)
      req.send_request(options)
    end

    # Returns the purchase options (offers and offer sets) available to the
    # buyer. You can filter results by product, seller, purchase option
    # type, visibility scope, and availability status.
    #
    # <note markdown="1"> You must include at least one of the following filters in the request:
    # a `PRODUCT_ID` filter to specify the product for which to retrieve
    # purchase options, or a `VISIBILITY_SCOPE` filter to retrieve purchase
    # options by visibility.
    #
    #  </note>
    #
    # @option params [Array<Types::PurchaseOptionFilter>] :filters
    #   Filters to narrow the results. Multiple filters are combined with AND
    #   logic. Multiple values within the same filter are combined with OR
    #   logic.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results that are returned per call. You can use
    #   `nextToken` to get more results.
    #
    # @option params [String] :next_token
    #   If `nextToken` is returned, there are more results available. Make the
    #   call again using the returned token to retrieve the next page.
    #
    # @return [Types::ListPurchaseOptionsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPurchaseOptionsOutput#purchase_options #purchase_options} => Array&lt;Types::PurchaseOptionSummary&gt;
    #   * {Types::ListPurchaseOptionsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: Filter by Product ID
    #
    #   resp = client.list_purchase_options({
    #     filters: [
    #       {
    #         filter_type: "PRODUCT_ID", 
    #         filter_values: [
    #           "prod-sampleOfferId", 
    #         ], 
    #       }, 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     purchase_options: [
    #       {
    #         associated_entities: [
    #           {
    #             offer: {
    #               offer_id: "offer-sampleOfferId", 
    #               seller_of_record: {
    #                 display_name: "sample offer seller", 
    #                 seller_profile_id: "seller-sampleOfferId", 
    #               }, 
    #             }, 
    #             product: {
    #               manufacturer: {
    #                 display_name: "sample offer seller", 
    #                 seller_profile_id: "seller-sampleOfferId", 
    #               }, 
    #               product_id: "prod-sampleOfferId", 
    #               product_name: "sample offer product", 
    #             }, 
    #           }, 
    #         ], 
    #         available_from_time: Time.parse("2021-12-15T00:00:00.000Z"), 
    #         badges: [
    #         ], 
    #         catalog: "AWS_MARKETPLACE", 
    #         purchase_option_id: "offer-sampleOfferId", 
    #         purchase_option_name: "sample offer", 
    #         purchase_option_type: "OFFER", 
    #         seller_of_record: {
    #           display_name: "sample offer seller", 
    #           seller_profile_id: "seller-sampleOfferId", 
    #         }, 
    #       }, 
    #     ], 
    #   }
    #
    # @example Example: Filter by Seller with Private Offerset
    #
    #   resp = client.list_purchase_options({
    #     filters: [
    #       {
    #         filter_type: "SELLER_OF_RECORD_PROFILE_ID", 
    #         filter_values: [
    #           "seller-sampleResellerId", 
    #         ], 
    #       }, 
    #       {
    #         filter_type: "PURCHASE_OPTION_TYPE", 
    #         filter_values: [
    #           "OFFERSET", 
    #         ], 
    #       }, 
    #       {
    #         filter_type: "VISIBILITY_SCOPE", 
    #         filter_values: [
    #           "PRIVATE", 
    #         ], 
    #       }, 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     purchase_options: [
    #       {
    #         associated_entities: [
    #           {
    #             offer: {
    #               offer_id: "offer-sampleId1", 
    #               seller_of_record: {
    #                 display_name: "sample reseller", 
    #                 seller_profile_id: "seller-sampleResellerId", 
    #               }, 
    #             }, 
    #             product: {
    #               manufacturer: {
    #                 display_name: "sample seller name 1", 
    #                 seller_profile_id: "seller-sampleId1", 
    #               }, 
    #               product_id: "prod-sampleId1", 
    #               product_name: "sample product name 1", 
    #             }, 
    #           }, 
    #           {
    #             offer: {
    #               offer_id: "offer-sampleId2", 
    #               seller_of_record: {
    #                 display_name: "sample reseller", 
    #                 seller_profile_id: "seller-sampleResellerId", 
    #               }, 
    #             }, 
    #             product: {
    #               manufacturer: {
    #                 display_name: "sample seller name 2", 
    #                 seller_profile_id: "seller-sampleId2", 
    #               }, 
    #               product_id: "prod-sampleId2", 
    #               product_name: "sample product name 2", 
    #             }, 
    #           }, 
    #         ], 
    #         available_from_time: Time.parse("2024-03-20T00:00:00.000Z"), 
    #         badges: [
    #           {
    #             badge_type: "PRIVATE_PRICING", 
    #             display_name: "Private Pricing", 
    #           }, 
    #         ], 
    #         catalog: "AWS_MARKETPLACE", 
    #         expiration_time: Time.parse("2025-03-20T00:00:00.000Z"), 
    #         purchase_option_id: "offerset-sampleId", 
    #         purchase_option_name: "sample offerset", 
    #         purchase_option_type: "OFFERSET", 
    #         seller_of_record: {
    #           display_name: "sample reseller", 
    #           seller_profile_id: "seller-sampleResellerId", 
    #         }, 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_purchase_options({
    #     filters: [
    #       {
    #         filter_type: "PRODUCT_ID", # required, accepts PRODUCT_ID, SELLER_OF_RECORD_PROFILE_ID, PURCHASE_OPTION_TYPE, VISIBILITY_SCOPE, AVAILABILITY_STATUS
    #         filter_values: ["PurchaseOptionFilterValue"], # required
    #       },
    #     ],
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.purchase_options #=> Array
    #   resp.purchase_options[0].purchase_option_id #=> String
    #   resp.purchase_options[0].catalog #=> String
    #   resp.purchase_options[0].purchase_option_type #=> String, one of "OFFER", "OFFERSET"
    #   resp.purchase_options[0].purchase_option_name #=> String
    #   resp.purchase_options[0].available_from_time #=> Time
    #   resp.purchase_options[0].expiration_time #=> Time
    #   resp.purchase_options[0].seller_of_record.seller_profile_id #=> String
    #   resp.purchase_options[0].seller_of_record.display_name #=> String
    #   resp.purchase_options[0].badges #=> Array
    #   resp.purchase_options[0].badges[0].display_name #=> String
    #   resp.purchase_options[0].badges[0].badge_type #=> String, one of "PRIVATE_PRICING", "FUTURE_DATED", "REPLACEMENT_OFFER"
    #   resp.purchase_options[0].associated_entities #=> Array
    #   resp.purchase_options[0].associated_entities[0].product.product_id #=> String
    #   resp.purchase_options[0].associated_entities[0].product.product_name #=> String
    #   resp.purchase_options[0].associated_entities[0].product.manufacturer.seller_profile_id #=> String
    #   resp.purchase_options[0].associated_entities[0].product.manufacturer.display_name #=> String
    #   resp.purchase_options[0].associated_entities[0].offer.offer_id #=> String
    #   resp.purchase_options[0].associated_entities[0].offer.offer_name #=> String
    #   resp.purchase_options[0].associated_entities[0].offer.seller_of_record.seller_profile_id #=> String
    #   resp.purchase_options[0].associated_entities[0].offer.seller_of_record.display_name #=> String
    #   resp.purchase_options[0].associated_entities[0].offer_set.offer_set_id #=> String
    #   resp.purchase_options[0].associated_entities[0].offer_set.seller_of_record.seller_profile_id #=> String
    #   resp.purchase_options[0].associated_entities[0].offer_set.seller_of_record.display_name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/ListPurchaseOptions AWS API Documentation
    #
    # @overload list_purchase_options(params = {})
    # @param [Hash] params ({})
    def list_purchase_options(params = {}, options = {})
      req = build_request(:list_purchase_options, params)
      req.send_request(options)
    end

    # Returns available facet values for filtering listings, such as
    # categories, pricing models, fulfillment option types, publishers, and
    # customer ratings. Each facet value includes a count of matching
    # listings.
    #
    # @option params [String] :search_text
    #   The search query text to filter listings before retrieving facets.
    #
    # @option params [Array<Types::SearchFilter>] :filters
    #   Filters to apply before retrieving facets. Multiple filters are
    #   combined with AND logic. Multiple values within the same filter are
    #   combined with OR logic.
    #
    # @option params [Array<String>] :facet_types
    #   A list of specific facet types to retrieve. If empty or null, all
    #   available facets are returned.
    #
    # @option params [String] :next_token
    #   If `nextToken` is returned, there are more results available. Make the
    #   call again using the returned token to retrieve the next page.
    #
    # @return [Types::SearchFacetsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchFacetsOutput#total_results #total_results} => Integer
    #   * {Types::SearchFacetsOutput#listing_facets #listing_facets} => Hash&lt;String,Array&lt;Types::ListingFacet&gt;&gt;
    #   * {Types::SearchFacetsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: Get facets for machine learning category
    #
    #   # Retrieve available facet values for listings in the machine learning category
    #
    #   resp = client.search_facets({
    #     facet_types: [
    #       "FULFILLMENT_OPTION_TYPE", 
    #       "PRICING_MODEL", 
    #     ], 
    #     filters: [
    #       {
    #         filter_type: "CATEGORY", 
    #         filter_values: [
    #           "machine-learning", 
    #         ], 
    #       }, 
    #     ], 
    #     search_text: "analytics", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     listing_facets: {
    #       "FULFILLMENT_OPTION_TYPE" => [
    #         {
    #           value: "SAAS", 
    #           count: 250, 
    #           display_name: "SaaS", 
    #         }, 
    #         {
    #           value: "CONTAINER", 
    #           count: 120, 
    #           display_name: "Container", 
    #         }, 
    #         {
    #           value: "SAGEMAKER_ALGORITHM", 
    #           count: 80, 
    #           display_name: "SageMaker Algorithm", 
    #         }, 
    #       ], 
    #       "PRICING_MODEL" => [
    #         {
    #           value: "USAGE", 
    #           count: 300, 
    #           display_name: "Usage-Based", 
    #         }, 
    #         {
    #           value: "FREE", 
    #           count: 100, 
    #           display_name: "Free", 
    #         }, 
    #         {
    #           value: "CONTRACT", 
    #           count: 50, 
    #           display_name: "Upfront Commitment", 
    #         }, 
    #       ], 
    #     }, 
    #     total_results: 450, 
    #   }
    #
    # @example Example: Get facets with term and rating range filters
    #
    #   # Retrieve facets for security listings with ratings between 3.0 and 5.0 stars
    #
    #   resp = client.search_facets({
    #     facet_types: [
    #       "PRICING_MODEL", 
    #       "AVERAGE_CUSTOMER_RATING", 
    #     ], 
    #     filters: [
    #       {
    #         filter_type: "CATEGORY", 
    #         filter_values: [
    #           "security", 
    #         ], 
    #       }, 
    #       {
    #         filter_type: "MIN_AVERAGE_CUSTOMER_RATING", 
    #         filter_values: [
    #           "3.0", 
    #         ], 
    #       }, 
    #       {
    #         filter_type: "MAX_AVERAGE_CUSTOMER_RATING", 
    #         filter_values: [
    #           "5.0", 
    #         ], 
    #       }, 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     listing_facets: {
    #       "AVERAGE_CUSTOMER_RATING" => [
    #         {
    #           value: "5.0", 
    #           count: 30, 
    #           display_name: "5.0", 
    #         }, 
    #         {
    #           value: "4.0", 
    #           count: 35, 
    #           display_name: "4.0", 
    #         }, 
    #         {
    #           value: "3.0", 
    #           count: 20, 
    #           display_name: "3.0", 
    #         }, 
    #       ], 
    #       "PRICING_MODEL" => [
    #         {
    #           value: "USAGE", 
    #           count: 50, 
    #           display_name: "Usage-Based", 
    #         }, 
    #         {
    #           value: "FREE", 
    #           count: 35, 
    #           display_name: "Free", 
    #         }, 
    #       ], 
    #     }, 
    #     total_results: 85, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_facets({
    #     search_text: "SearchText",
    #     filters: [
    #       {
    #         filter_type: "MIN_AVERAGE_CUSTOMER_RATING", # required, accepts MIN_AVERAGE_CUSTOMER_RATING, MAX_AVERAGE_CUSTOMER_RATING, CATEGORY, PUBLISHER, FULFILLMENT_OPTION_TYPE, PRICING_MODEL, PRICING_UNIT, DEPLOYED_ON_AWS, NUMBER_OF_PRODUCTS
    #         filter_values: ["SearchFilterValue"], # required
    #       },
    #     ],
    #     facet_types: ["AVERAGE_CUSTOMER_RATING"], # accepts AVERAGE_CUSTOMER_RATING, CATEGORY, PUBLISHER, FULFILLMENT_OPTION_TYPE, PRICING_MODEL, PRICING_UNIT, DEPLOYED_ON_AWS, NUMBER_OF_PRODUCTS
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.total_results #=> Integer
    #   resp.listing_facets #=> Hash
    #   resp.listing_facets["SearchFacetType"] #=> Array
    #   resp.listing_facets["SearchFacetType"][0].value #=> String
    #   resp.listing_facets["SearchFacetType"][0].display_name #=> String
    #   resp.listing_facets["SearchFacetType"][0].parent #=> String
    #   resp.listing_facets["SearchFacetType"][0].count #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/SearchFacets AWS API Documentation
    #
    # @overload search_facets(params = {})
    # @param [Hash] params ({})
    def search_facets(params = {}, options = {})
      req = build_request(:search_facets, params)
      req.send_request(options)
    end

    # Returns a list of product listings based on search criteria and
    # filters. You can search by keyword, filter by category, pricing model,
    # fulfillment type, and other attributes, and sort results by relevance
    # or customer rating.
    #
    # @option params [String] :search_text
    #   The search query text to find relevant listings.
    #
    # @option params [Array<Types::SearchFilter>] :filters
    #   Filters to narrow search results. Multiple filters are combined with
    #   AND logic. Multiple values within the same filter are combined with OR
    #   logic.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results that are returned per call. You can use
    #   `nextToken` to get more results.
    #
    # @option params [String] :sort_by
    #   The field to sort results by. Valid values are `RELEVANCE` and
    #   `AVERAGE_CUSTOMER_RATING`.
    #
    # @option params [String] :sort_order
    #   The sort direction. Valid values are `DESCENDING` and `ASCENDING`.
    #
    # @option params [String] :next_token
    #   If `nextToken` is returned, there are more results available. Make the
    #   call again using the returned token to retrieve the next page.
    #
    # @return [Types::SearchListingsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchListingsOutput#total_results #total_results} => Integer
    #   * {Types::SearchListingsOutput#listing_summaries #listing_summaries} => Array&lt;Types::ListingSummary&gt;
    #   * {Types::SearchListingsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: Search for machine learning listings
    #
    #   # Search for SaaS listings in the machine learning category with sorting by relevance
    #
    #   resp = client.search_listings({
    #     filters: [
    #       {
    #         filter_type: "CATEGORY", 
    #         filter_values: [
    #           "machine-learning", 
    #         ], 
    #       }, 
    #       {
    #         filter_type: "FULFILLMENT_OPTION_TYPE", 
    #         filter_values: [
    #           "SAAS", 
    #         ], 
    #       }, 
    #     ], 
    #     max_results: 25, 
    #     search_text: "computer vision", 
    #     sort_by: "RELEVANCE", 
    #     sort_order: "DESCENDING", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     listing_summaries: [
    #       {
    #         associated_entities: [
    #           {
    #             product: {
    #               manufacturer: {
    #                 display_name: "sample search seller", 
    #                 seller_profile_id: "seller-sampleSearchId", 
    #               }, 
    #               product_id: "prod-sampleSearchId", 
    #               product_name: "sample search product", 
    #             }, 
    #           }, 
    #         ], 
    #         badges: [
    #           {
    #             badge_type: "FREE_TRIAL", 
    #             display_name: "Free Trial", 
    #           }, 
    #         ], 
    #         catalog: "AWSMarketplace", 
    #         categories: [
    #           {
    #             category_id: "machine-learning", 
    #             display_name: "Machine Learning", 
    #           }, 
    #         ], 
    #         fulfillment_option_summaries: [
    #           {
    #             display_name: "SaaS", 
    #             fulfillment_option_type: "SAAS", 
    #           }, 
    #         ], 
    #         listing_id: "prodview-sampleSearchId", 
    #         listing_name: "sample search listing", 
    #         logo_thumbnail_url: "https://awsmp-logos.s3.amazonaws.com/product-logos/ai-vision-pro.png", 
    #         pricing_models: [
    #           {
    #             display_name: "Usage", 
    #             pricing_model_type: "USAGE", 
    #           }, 
    #         ], 
    #         pricing_units: [
    #           {
    #             display_name: "Requests", 
    #             pricing_unit_type: "REQUESTS", 
    #           }, 
    #         ], 
    #         publisher: {
    #           display_name: "sample search seller", 
    #           seller_profile_id: "seller-sampleSearchId", 
    #         }, 
    #         review_summary: {
    #           review_source_summaries: [
    #             {
    #               average_rating: "4.5", 
    #               source_id: "AWS_MARKETPLACE", 
    #               source_name: "AWS Marketplace", 
    #               total_reviews: 100, 
    #             }, 
    #           ], 
    #         }, 
    #         short_description: "Advanced computer vision solution for object detection and classification.", 
    #       }, 
    #     ], 
    #     next_token: "eyJsYXN0RXZhbHVhdGVkS2V5Ijp7Imxpc3RpbmdJZCI6InByb2R2aWV3LXNhbXBsZVNlYXJjaElkIn19", 
    #     total_results: 1250, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_listings({
    #     search_text: "SearchText",
    #     filters: [
    #       {
    #         filter_type: "MIN_AVERAGE_CUSTOMER_RATING", # required, accepts MIN_AVERAGE_CUSTOMER_RATING, MAX_AVERAGE_CUSTOMER_RATING, CATEGORY, PUBLISHER, FULFILLMENT_OPTION_TYPE, PRICING_MODEL, PRICING_UNIT, DEPLOYED_ON_AWS, NUMBER_OF_PRODUCTS
    #         filter_values: ["SearchFilterValue"], # required
    #       },
    #     ],
    #     max_results: 1,
    #     sort_by: "RELEVANCE", # accepts RELEVANCE, AVERAGE_CUSTOMER_RATING
    #     sort_order: "DESCENDING", # accepts DESCENDING, ASCENDING
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.total_results #=> Integer
    #   resp.listing_summaries #=> Array
    #   resp.listing_summaries[0].listing_id #=> String
    #   resp.listing_summaries[0].listing_name #=> String
    #   resp.listing_summaries[0].publisher.seller_profile_id #=> String
    #   resp.listing_summaries[0].publisher.display_name #=> String
    #   resp.listing_summaries[0].catalog #=> String
    #   resp.listing_summaries[0].short_description #=> String
    #   resp.listing_summaries[0].logo_thumbnail_url #=> String
    #   resp.listing_summaries[0].categories #=> Array
    #   resp.listing_summaries[0].categories[0].category_id #=> String
    #   resp.listing_summaries[0].categories[0].display_name #=> String
    #   resp.listing_summaries[0].fulfillment_option_summaries #=> Array
    #   resp.listing_summaries[0].fulfillment_option_summaries[0].fulfillment_option_type #=> String, one of "AMAZON_MACHINE_IMAGE", "API", "CLOUDFORMATION_TEMPLATE", "CONTAINER", "HELM", "EKS_ADD_ON", "EC2_IMAGE_BUILDER_COMPONENT", "DATA_EXCHANGE", "PROFESSIONAL_SERVICES", "SAAS", "SAGEMAKER_ALGORITHM", "SAGEMAKER_MODEL"
    #   resp.listing_summaries[0].fulfillment_option_summaries[0].display_name #=> String
    #   resp.listing_summaries[0].badges #=> Array
    #   resp.listing_summaries[0].badges[0].display_name #=> String
    #   resp.listing_summaries[0].badges[0].badge_type #=> String, one of "AWS_FREE_TIER", "FREE_TRIAL", "DEPLOYED_ON_AWS", "QUICK_LAUNCH", "MULTI_PRODUCT"
    #   resp.listing_summaries[0].review_summary.review_source_summaries #=> Array
    #   resp.listing_summaries[0].review_summary.review_source_summaries[0].source_name #=> String
    #   resp.listing_summaries[0].review_summary.review_source_summaries[0].source_id #=> String, one of "AWS_MARKETPLACE"
    #   resp.listing_summaries[0].review_summary.review_source_summaries[0].source_url #=> String
    #   resp.listing_summaries[0].review_summary.review_source_summaries[0].average_rating #=> String
    #   resp.listing_summaries[0].review_summary.review_source_summaries[0].total_reviews #=> Integer
    #   resp.listing_summaries[0].pricing_models #=> Array
    #   resp.listing_summaries[0].pricing_models[0].pricing_model_type #=> String, one of "USAGE", "CONTRACT", "BYOL", "FREE"
    #   resp.listing_summaries[0].pricing_models[0].display_name #=> String
    #   resp.listing_summaries[0].pricing_units #=> Array
    #   resp.listing_summaries[0].pricing_units[0].pricing_unit_type #=> String, one of "USERS", "HOSTS", "BANDWIDTH", "DATA", "TIERS", "REQUESTS", "UNITS"
    #   resp.listing_summaries[0].pricing_units[0].display_name #=> String
    #   resp.listing_summaries[0].associated_entities #=> Array
    #   resp.listing_summaries[0].associated_entities[0].product.product_id #=> String
    #   resp.listing_summaries[0].associated_entities[0].product.product_name #=> String
    #   resp.listing_summaries[0].associated_entities[0].product.manufacturer.seller_profile_id #=> String
    #   resp.listing_summaries[0].associated_entities[0].product.manufacturer.display_name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-discovery-2026-02-05/SearchListings AWS API Documentation
    #
    # @overload search_listings(params = {})
    # @param [Hash] params ({})
    def search_listings(params = {}, options = {})
      req = build_request(:search_listings, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::MarketplaceDiscovery')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-marketplacediscovery'
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
