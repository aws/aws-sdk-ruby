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

module Aws::MarketplaceDeployment
  # An API client for MarketplaceDeployment.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::MarketplaceDeployment::Client.new(
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

    @identifier = :marketplacedeployment

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
    add_plugin(Aws::MarketplaceDeployment::Plugins::Endpoints)

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
    #   @option options [Aws::MarketplaceDeployment::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::MarketplaceDeployment::EndpointParameters`.
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

    # Returns the active deployment configuration for a product and delivery
    # option. The active deployment configuration is the configuration from
    # the most recent successful deployment configuration job. The seller
    # that owns the product and buyers entitled to the product can call this
    # operation.
    #
    # If the product and delivery option have no active deployment
    # configuration, the operation returns a `ResourceNotFoundException`.
    #
    # @option params [required, String] :catalog
    #   The catalog related to the request. Fixed value: `AWSMarketplace`
    #
    # @option params [required, String] :product_id
    #   The ID of the AWS Marketplace product, for example
    #   `prod-1234567890abc`.
    #
    # @option params [required, String] :delivery_option_type
    #   The delivery option type of the deployment configuration.
    #
    # @return [Types::GetDeploymentConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDeploymentConfigurationResponse#configuration #configuration} => Types::DeploymentConfigurationDetail
    #
    #
    # @example Example: Get the active deployment configuration
    #
    #   # Returns only the current active configuration for the owning seller or an entitled buyer.
    #
    #   resp = client.get_deployment_configuration({
    #     catalog: "AWSMarketplace", 
    #     delivery_option_type: "data-as-a-service", 
    #     product_id: "product-1234", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     configuration: {
    #       data_as_a_service: {
    #         fulfillment_url: "https://example.com/daas/register", 
    #       }, 
    #     }, 
    #   }
    #
    # @example Example: Get active configuration fails when none exists
    #
    #   # If the product and delivery option have no active deployment configuration, the operation returns a
    #   # ResourceNotFoundException.
    #
    #   resp = client.get_deployment_configuration({
    #     catalog: "AWSMarketplace", 
    #     delivery_option_type: "data-as-a-service", 
    #     product_id: "product-1234", 
    #   })
    #
    # @example Example: Get active configuration fails for an unauthorized caller
    #
    #   # If the caller is neither the seller of the product nor a buyer entitled to it, the operation returns an
    #   # AccessDeniedException.
    #
    #   resp = client.get_deployment_configuration({
    #     catalog: "AWSMarketplace", 
    #     delivery_option_type: "data-as-a-service", 
    #     product_id: "product-1234", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_deployment_configuration({
    #     catalog: "Catalog", # required
    #     product_id: "ResourceId", # required
    #     delivery_option_type: "data-as-a-service", # required, accepts data-as-a-service
    #   })
    #
    # @example Response structure
    #
    #   resp.configuration.data_as_a_service.fulfillment_url #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-deployment-2023-01-25/GetDeploymentConfiguration AWS API Documentation
    #
    # @overload get_deployment_configuration(params = {})
    # @param [Hash] params ({})
    def get_deployment_configuration(params = {}, options = {})
      req = build_request(:get_deployment_configuration, params)
      req.send_request(options)
    end

    # Returns the details of a deployment configuration job. Only the seller
    # that started the job can call this operation.
    #
    # If the job doesn't belong to the product and delivery option in the
    # request path, the operation returns a `ResourceNotFoundException`.
    #
    # @option params [required, String] :catalog
    #   The catalog related to the request. Fixed value: `AWSMarketplace`
    #
    # @option params [required, String] :product_id
    #   The ID of the AWS Marketplace product, for example
    #   `prod-1234567890abc`.
    #
    # @option params [required, String] :delivery_option_type
    #   The delivery option type of the deployment configuration.
    #
    # @option params [required, String] :job_id
    #   The unique identifier of the deployment configuration job.
    #
    # @return [Types::GetDeploymentConfigurationJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDeploymentConfigurationJobResponse#job_id #job_id} => String
    #   * {Types::GetDeploymentConfigurationJobResponse#configuration #configuration} => Types::DeploymentConfigurationDetail
    #   * {Types::GetDeploymentConfigurationJobResponse#status #status} => String
    #   * {Types::GetDeploymentConfigurationJobResponse#created_at #created_at} => Time
    #   * {Types::GetDeploymentConfigurationJobResponse#configuration_arn #configuration_arn} => String
    #   * {Types::GetDeploymentConfigurationJobResponse#ended_at #ended_at} => Time
    #   * {Types::GetDeploymentConfigurationJobResponse#error_code #error_code} => String
    #   * {Types::GetDeploymentConfigurationJobResponse#message #message} => String
    #
    #
    # @example Example: Get a succeeded job
    #
    #   # A succeeded job includes endedAt and the ARN of the deployment configuration that it published.
    #
    #   resp = client.get_deployment_configuration_job({
    #     catalog: "AWSMarketplace", 
    #     delivery_option_type: "data-as-a-service", 
    #     job_id: "1a2b3c4d5e6f7a8b9c0d1e2f3a4b5c6d", 
    #     product_id: "product-1234", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     configuration: {
    #       data_as_a_service: {
    #         fulfillment_url: "https://example.com/daas/register", 
    #       }, 
    #     }, 
    #     configuration_arn: "arn:aws:aws-marketplace:us-east-1:123456789012:DeploymentConfiguration:catalogs/AWSMarketplace/products/product-1234/delivery-options/data-as-a-service", 
    #     created_at: Time.parse("2026-09-18T08:52:46.397Z"), 
    #     ended_at: Time.parse("2026-09-18T08:53:10.001Z"), 
    #     job_id: "1a2b3c4d5e6f7a8b9c0d1e2f3a4b5c6d", 
    #     status: "SUCCEEDED", 
    #   }
    #
    # @example Example: Get a failed job
    #
    #   # A failed job includes errorCode, message, and endedAt.
    #
    #   resp = client.get_deployment_configuration_job({
    #     catalog: "AWSMarketplace", 
    #     delivery_option_type: "data-as-a-service", 
    #     job_id: "9f8e7d6c5b4a3f2e1d0c9b8a7f6e5d4c", 
    #     product_id: "product-1234", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     configuration: {
    #       data_as_a_service: {
    #         fulfillment_url: "https://example.com/daas/register", 
    #       }, 
    #     }, 
    #     created_at: Time.parse("2026-09-18T08:52:46.397Z"), 
    #     ended_at: Time.parse("2026-09-18T08:53:05.221Z"), 
    #     error_code: "FULFILLMENT_URL_UNREACHABLE", 
    #     job_id: "9f8e7d6c5b4a3f2e1d0c9b8a7f6e5d4c", 
    #     message: "The fulfillment URL could not be reached. Verify the endpoint is publicly reachable over HTTPS and responding.", 
    #     status: "FAILED", 
    #   }
    #
    # @example Example: Get job fails when the job isn't found
    #
    #   # If the job doesn't exist, or doesn't belong to the product and delivery option in the request path, the operation
    #   # returns a ResourceNotFoundException.
    #
    #   resp = client.get_deployment_configuration_job({
    #     catalog: "AWSMarketplace", 
    #     delivery_option_type: "data-as-a-service", 
    #     job_id: "abcd1234abcd1234abcd1234abcd1234", 
    #     product_id: "product-1234", 
    #   })
    #
    # @example Example: Get job fails for a caller that didn't start the job
    #
    #   # If the job exists but the caller isn't the seller that started it, the operation returns an AccessDeniedException.
    #
    #   resp = client.get_deployment_configuration_job({
    #     catalog: "AWSMarketplace", 
    #     delivery_option_type: "data-as-a-service", 
    #     job_id: "1a2b3c4d5e6f7a8b9c0d1e2f3a4b5c6d", 
    #     product_id: "product-1234", 
    #   })
    #
    # @example Example: Get job fails for a caller not authorized for the product
    #
    #   # When the job does not exist and the caller is not authorized for the product, the result is AccessDeniedException.
    #
    #   resp = client.get_deployment_configuration_job({
    #     catalog: "AWSMarketplace", 
    #     delivery_option_type: "data-as-a-service", 
    #     job_id: "abcd1234abcd1234abcd1234abcd1234", 
    #     product_id: "product-1234", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_deployment_configuration_job({
    #     catalog: "Catalog", # required
    #     product_id: "ResourceId", # required
    #     delivery_option_type: "data-as-a-service", # required, accepts data-as-a-service
    #     job_id: "DeploymentConfigurationJobId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.job_id #=> String
    #   resp.configuration.data_as_a_service.fulfillment_url #=> String
    #   resp.status #=> String, one of "IN_PROGRESS", "SUCCEEDED", "FAILED"
    #   resp.created_at #=> Time
    #   resp.configuration_arn #=> String
    #   resp.ended_at #=> Time
    #   resp.error_code #=> String, one of "FULFILLMENT_URL_UNREACHABLE", "INTERNAL_ERROR", "ENDPOINT_INVALID"
    #   resp.message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-deployment-2023-01-25/GetDeploymentConfigurationJob AWS API Documentation
    #
    # @overload get_deployment_configuration_job(params = {})
    # @param [Hash] params ({})
    def get_deployment_configuration_job(params = {}, options = {})
      req = build_request(:get_deployment_configuration_job, params)
      req.send_request(options)
    end

    # Lists the deployment configuration jobs that you started for a product
    # and delivery option, ordered from newest to oldest. Results are
    # paginated. Use the `nextToken` parameter to retrieve additional
    # results.
    #
    # If you haven't started any jobs for the product and delivery option,
    # the operation returns an empty `jobs` list.
    #
    # @option params [required, String] :catalog
    #   The catalog related to the request. Fixed value: `AWSMarketplace`
    #
    # @option params [required, String] :product_id
    #   The ID of the AWS Marketplace product, for example
    #   `prod-1234567890abc`.
    #
    # @option params [required, String] :delivery_option_type
    #   The delivery option type of the deployment configuration.
    #
    # @option params [Integer] :max_results
    #   The maximum number of jobs to return in a single page. Valid values
    #   are 1 through 100. The default is 20.
    #
    # @option params [String] :next_token
    #   The token for the next page of results. Use the value returned in the
    #   previous response.
    #
    # @return [Types::ListDeploymentConfigurationJobsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDeploymentConfigurationJobsResponse#jobs #jobs} => Array&lt;Types::DeploymentConfigurationJobSummary&gt;
    #   * {Types::ListDeploymentConfigurationJobsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: List jobs, newest first
    #
    #   # Returns the caller's jobs ordered by newest createdAt first, with an optional nextToken when more pages exist.
    #
    #   resp = client.list_deployment_configuration_jobs({
    #     catalog: "AWSMarketplace", 
    #     delivery_option_type: "data-as-a-service", 
    #     max_results: 20, 
    #     product_id: "product-1234", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     jobs: [
    #       {
    #         configuration: {
    #           data_as_a_service: {
    #             fulfillment_url: "https://example.com/daas/register", 
    #           }, 
    #         }, 
    #         created_at: Time.parse("2026-09-18T09:10:00.000Z"), 
    #         job_id: "9f8e7d6c5b4a3f2e1d0c9b8a7f6e5d4c", 
    #         status: "FAILED", 
    #       }, 
    #       {
    #         configuration: {
    #           data_as_a_service: {
    #             fulfillment_url: "https://example.com/daas/register", 
    #           }, 
    #         }, 
    #         created_at: Time.parse("2026-09-18T08:52:46.397Z"), 
    #         job_id: "1a2b3c4d5e6f7a8b9c0d1e2f3a4b5c6d", 
    #         status: "SUCCEEDED", 
    #       }, 
    #     ], 
    #     next_token: "b3BhcXVlLXBhZ2luYXRpb24tY3Vyc29y", 
    #   }
    #
    # @example Example: List jobs returns an empty list when an authorized seller has no jobs
    #
    #   # When the caller is authorized for the product and has not started any jobs, the result is an empty jobs list with no
    #   # nextToken.
    #
    #   resp = client.list_deployment_configuration_jobs({
    #     catalog: "AWSMarketplace", 
    #     delivery_option_type: "data-as-a-service", 
    #     product_id: "product-1234", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     jobs: [
    #     ], 
    #   }
    #
    # @example Example: List jobs fails for a caller not authorized for the product
    #
    #   # If the caller isn't authorized for the product, the operation returns an AccessDeniedException.
    #
    #   resp = client.list_deployment_configuration_jobs({
    #     catalog: "AWSMarketplace", 
    #     delivery_option_type: "data-as-a-service", 
    #     product_id: "product-1234", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_deployment_configuration_jobs({
    #     catalog: "Catalog", # required
    #     product_id: "ResourceId", # required
    #     delivery_option_type: "data-as-a-service", # required, accepts data-as-a-service
    #     max_results: 1,
    #     next_token: "DeploymentConfigurationNextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.jobs #=> Array
    #   resp.jobs[0].job_id #=> String
    #   resp.jobs[0].status #=> String, one of "IN_PROGRESS", "SUCCEEDED", "FAILED"
    #   resp.jobs[0].configuration.data_as_a_service.fulfillment_url #=> String
    #   resp.jobs[0].created_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-deployment-2023-01-25/ListDeploymentConfigurationJobs AWS API Documentation
    #
    # @overload list_deployment_configuration_jobs(params = {})
    # @param [Hash] params ({})
    def list_deployment_configuration_jobs(params = {}, options = {})
      req = build_request(:list_deployment_configuration_jobs, params)
      req.send_request(options)
    end

    # Lists all tags that have been added to a resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource you want to list tags
    #   on.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    #
    # @example Example: Listing tags for a deployment parameter
    #
    #   # The following example demonstrates listing the tags for a deployment parameter. If no tags are present, the API will
    #   # return an empty map.
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "arn:aws:aws-marketplace:us-east-1:123456789012:DeploymentParameter:catalogs/AWSMarketplace/products/product-1234/dp-uniqueidentifier", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     tags: {
    #       "FooKey" => "BarValue", 
    #       "HelloKey" => "WorldValue", 
    #     }, 
    #   }
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
    #   resp.tags["String"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-deployment-2023-01-25/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Creates or updates a deployment parameter and is targeted by `catalog`
    # and `agreementId`.
    #
    # @option params [required, String] :catalog
    #   The catalog related to the request. Fixed value: `AWSMarketplace`
    #
    # @option params [required, String] :product_id
    #   The product for which AWS Marketplace will save secrets for the
    #   buyer’s account.
    #
    # @option params [required, String] :agreement_id
    #   The unique identifier of the agreement.
    #
    # @option params [required, Types::DeploymentParameterInput] :deployment_parameter
    #   The deployment parameter targeted to the acceptor of an agreement for
    #   which to create the AWS Secrets Manager resource.
    #
    # @option params [Hash<String,String>] :tags
    #   A map of key-value pairs, where each pair represents a tag saved to
    #   the resource. Tags will only be applied for create operations, and
    #   they'll be ignored if the resource already exists.
    #
    # @option params [Time,DateTime,Date,Integer,String] :expiration_date
    #   The date when deployment parameters expire and are scheduled for
    #   deletion.
    #
    # @option params [String] :client_token
    #   The idempotency token for deployment parameters. A unique identifier
    #   for the new version.
    #
    #   <note markdown="1"> This field is not required if you're calling using an AWS SDK.
    #   Otherwise, a `clientToken` must be provided with the request.
    #
    #    </note>
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::PutDeploymentParameterResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutDeploymentParameterResponse#resource_arn #resource_arn} => String
    #   * {Types::PutDeploymentParameterResponse#agreement_id #agreement_id} => String
    #   * {Types::PutDeploymentParameterResponse#deployment_parameter_id #deployment_parameter_id} => String
    #   * {Types::PutDeploymentParameterResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    #
    # @example Example: Creating or updating a deployment parameter
    #
    #   # The following example demonstrates creating or updating a deployment parameter named "ExampleDeploymentParameterName".
    #   # The secret will be saved in the Buyer account associated with the passed `agreementId`, with the value set to the
    #   # provided `secretString`. Note that the deployment parameter `secretString` can be passed in JSON string format, allowing
    #   # [json-key specific CloudFormation dynamic
    #   # references](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/dynamic-references.html) from a single
    #   # deployment parameter.
    #
    #   resp = client.put_deployment_parameter({
    #     agreement_id: "agmt-1234", 
    #     catalog: "AWSMarketplace", 
    #     client_token: "some-unique-uuid-between-32-and-64-characters", 
    #     deployment_parameter: {
    #       name: "ExampleDeploymentParameterName", 
    #       secret_string: "{\"apiKey\": \"helloWorldApiKey\", \"entityId\": \"fooBarEntityId\"}", 
    #     }, 
    #     product_id: "product-1234", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     agreement_id: "agmt-1234", 
    #     deployment_parameter_id: "dp-uniqueidentifier", 
    #     resource_arn: "arn:aws:aws-marketplace:us-east-1:123456789012:DeploymentParameter:catalogs/AWSMarketplace/products/product-1234/dp-uniqueidentifier", 
    #     tags: {
    #     }, 
    #   }
    #
    # @example Example: Creating a simple deployment parameter, with tags and expiration.
    #
    #   # The following example demonstrates creating a simple deployment parameter named "ExampleSimpleDeploymentParameterName".
    #   # If multiple secrets are not required, the `secretString` may be provided in String format. The provided tags are only
    #   # applied on resource creation and will be ignored if the operation results in an update. The API response includes the
    #   # tags present on the resource after completion of the operation.
    #
    #   resp = client.put_deployment_parameter({
    #     agreement_id: "agmt-1234", 
    #     catalog: "AWSMarketplace", 
    #     client_token: "some-unique-uuid-between-32-and-64-characters", 
    #     deployment_parameter: {
    #       name: "ExampleSimpleDeploymentParameterName", 
    #       secret_string: "MySimpleValue", 
    #     }, 
    #     expiration_date: Time.parse("2099-11-18T08:52:46.397Z"), 
    #     product_id: "product-1234", 
    #     tags: {
    #       "FooKey" => "BarValue", 
    #       "HelloKey" => "WorldValue", 
    #     }, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     agreement_id: "agmt-1234", 
    #     deployment_parameter_id: "dp-uniqueidentifier", 
    #     resource_arn: "arn:aws:aws-marketplace:us-east-1:123456789012:DeploymentParameter:catalogs/AWSMarketplace/products/product-1234/dp-uniqueidentifier", 
    #     tags: {
    #       "FooKey" => "BarValue", 
    #       "HelloKey" => "WorldValue", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_deployment_parameter({
    #     catalog: "Catalog", # required
    #     product_id: "ResourceId", # required
    #     agreement_id: "ResourceId", # required
    #     deployment_parameter: { # required
    #       name: "DeploymentParameterName", # required
    #       secret_string: "SecretString", # required
    #     },
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     expiration_date: Time.now,
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_arn #=> String
    #   resp.agreement_id #=> String
    #   resp.deployment_parameter_id #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-deployment-2023-01-25/PutDeploymentParameter AWS API Documentation
    #
    # @overload put_deployment_parameter(params = {})
    # @param [Hash] params ({})
    def put_deployment_parameter(params = {}, options = {})
      req = build_request(:put_deployment_parameter, params)
      req.send_request(options)
    end

    # Starts a job that publishes a deployment configuration for a product
    # and delivery option. The job runs asynchronously. Use
    # `GetDeploymentConfigurationJob` to track its status. When the job
    # reaches the `SUCCEEDED` status, its configuration becomes the active
    # deployment configuration for the product and delivery option.
    #
    # The populated member of `configuration` must match the
    # `deliveryOptionType` in the request path.
    #
    # @option params [required, String] :catalog
    #   The catalog related to the request. Fixed value: `AWSMarketplace`
    #
    # @option params [required, String] :product_id
    #   The ID of the AWS Marketplace product, for example
    #   `prod-1234567890abc`.
    #
    # @option params [required, String] :delivery_option_type
    #   The delivery option type of the deployment configuration.
    #
    # @option params [required, Types::DeploymentConfigurationDetail] :configuration
    #   The deployment configuration to publish.
    #
    # @option params [Hash<String,String>] :tags
    #   A map of key-value pairs, where each pair represents a tag to apply to
    #   the deployment configuration. Only the request that creates the
    #   deployment configuration can apply tags. If the deployment
    #   configuration already exists, a request that includes one or more tags
    #   fails with a `ValidationException`. To change tags on an existing
    #   deployment configuration, use `TagResource` and `UntagResource`.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure that
    #   the operation completes no more than one time. If you retry a request
    #   with the same token and the same input, the service returns the
    #   original job instead of starting a new one. If you reuse a token with
    #   different input, the request fails with a `ConflictException`.
    #
    #   <note markdown="1"> This field is not required if you're calling using an AWS SDK.
    #   Otherwise, a `clientToken` must be provided with the request.
    #
    #    </note>
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::StartDeploymentConfigurationJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartDeploymentConfigurationJobResponse#job_id #job_id} => String
    #   * {Types::StartDeploymentConfigurationJobResponse#configuration #configuration} => Types::DeploymentConfigurationDetail
    #   * {Types::StartDeploymentConfigurationJobResponse#status #status} => String
    #   * {Types::StartDeploymentConfigurationJobResponse#created_at #created_at} => Time
    #
    #
    # @example Example: Start a Data-as-a-Service deployment configuration job
    #
    #   # Starts a job that publishes a Data-as-a-Service deployment configuration. The job starts in the IN_PROGRESS status. Call
    #   # GetDeploymentConfigurationJob to check when it reaches SUCCEEDED or FAILED.
    #
    #   resp = client.start_deployment_configuration_job({
    #     catalog: "AWSMarketplace", 
    #     client_token: "some-unique-uuid-between-32-and-64-characters", 
    #     configuration: {
    #       data_as_a_service: {
    #         fulfillment_url: "https://example.com/daas/register", 
    #       }, 
    #     }, 
    #     delivery_option_type: "data-as-a-service", 
    #     product_id: "product-1234", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     configuration: {
    #       data_as_a_service: {
    #         fulfillment_url: "https://example.com/daas/register", 
    #       }, 
    #     }, 
    #     created_at: Time.parse("2026-09-18T08:52:46.397Z"), 
    #     job_id: "1a2b3c4d5e6f7a8b9c0d1e2f3a4b5c6d", 
    #     status: "IN_PROGRESS", 
    #   }
    #
    # @example Example: Start fails when the product or catalog doesn't exist
    #
    #   # If the product or catalog doesn't exist, the operation returns a ResourceNotFoundException.
    #
    #   resp = client.start_deployment_configuration_job({
    #     catalog: "AWSMarketplace", 
    #     configuration: {
    #       data_as_a_service: {
    #         fulfillment_url: "https://example.com/daas/register", 
    #       }, 
    #     }, 
    #     delivery_option_type: "data-as-a-service", 
    #     product_id: "product-does-not-exist", 
    #   })
    #
    # @example Example: Start fails when the caller is not the product seller
    #
    #   # If the caller isn't the seller of the product, the operation returns an AccessDeniedException.
    #
    #   resp = client.start_deployment_configuration_job({
    #     catalog: "AWSMarketplace", 
    #     configuration: {
    #       data_as_a_service: {
    #         fulfillment_url: "https://example.com/daas/register", 
    #       }, 
    #     }, 
    #     delivery_option_type: "data-as-a-service", 
    #     product_id: "product-1234", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_deployment_configuration_job({
    #     catalog: "Catalog", # required
    #     product_id: "ResourceId", # required
    #     delivery_option_type: "data-as-a-service", # required, accepts data-as-a-service
    #     configuration: { # required
    #       data_as_a_service: {
    #         fulfillment_url: "DeploymentConfigurationFulfillmentUrl", # required
    #       },
    #     },
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.job_id #=> String
    #   resp.configuration.data_as_a_service.fulfillment_url #=> String
    #   resp.status #=> String, one of "IN_PROGRESS", "SUCCEEDED", "FAILED"
    #   resp.created_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-deployment-2023-01-25/StartDeploymentConfigurationJob AWS API Documentation
    #
    # @overload start_deployment_configuration_job(params = {})
    # @param [Hash] params ({})
    def start_deployment_configuration_job(params = {}, options = {})
      req = build_request(:start_deployment_configuration_job, params)
      req.send_request(options)
    end

    # Tags a resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) associated with the resource you want
    #   to tag.
    #
    # @option params [Hash<String,String>] :tags
    #   A map of key-value pairs, where each pair represents a tag present on
    #   the resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: Adding tags to a deployment parameter
    #
    #   # The following example demonstrates adding two tags to a deployment parameter. There is no output from this API.
    #
    #   resp = client.tag_resource({
    #     resource_arn: "arn:aws:aws-marketplace:us-east-1:123456789012:DeploymentParameter:catalogs/AWSMarketplace/products/product-1234/dp-uniqueidentifier", 
    #     tags: {
    #       "FooKey" => "BarValue", 
    #       "HelloKey" => "WorldValue", 
    #     }, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "String", # required
    #     tags: {
    #       "String" => "String",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-deployment-2023-01-25/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes a tag or list of tags from a resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) associated with the resource you want
    #   to remove the tag from.
    #
    # @option params [required, Array<String>] :tag_keys
    #   A list of key names of tags to be removed.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: Removing tags from a deployment parameter
    #
    #   # The following example demonstrates removing two tags from a deployment parameter. For each, both the tag and the
    #   # associated value are removed. There is no output from this API.
    #
    #   resp = client.untag_resource({
    #     resource_arn: "arn:aws:aws-marketplace:us-east-1:123456789012:DeploymentParameter:catalogs/AWSMarketplace/products/product-1234/dp-uniqueidentifier", 
    #     tag_keys: [
    #       "FooKey", 
    #       "HelloKey", 
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
    #     resource_arn: "String", # required
    #     tag_keys: ["String"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-deployment-2023-01-25/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::MarketplaceDeployment')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-marketplacedeployment'
      context[:gem_version] = '1.52.0'
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
