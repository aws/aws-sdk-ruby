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

module Aws::APIPortal
  # An API client for APIPortal.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::APIPortal::Client.new(
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

    @identifier = :apiportal

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
    add_plugin(Aws::APIPortal::Plugins::Endpoints)

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
    #   @option options [Aws::APIPortal::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::APIPortal::EndpointParameters`.
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

    # Associate one or more Managed APIs with a product. Best-effort — IDs
    # that fail are returned in \{@link
    # AssociateManagedApisResponse#failedItems}; IDs that succeed are
    # omitted. Associating an already-associated Managed API is a no-op (not
    # reported as failure).
    #
    # @option params [required, String] :product_id
    #   The identifier of the product to associate the Managed APIs with.
    #
    # @option params [required, Array<String>] :managed_api_ids
    #   Bounded list of Managed API IDs, used as the request payload for batch
    #   associate/disassociate.
    #
    # @return [Types::AssociateManagedApisResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AssociateManagedApisResponse#failed_items #failed_items} => Array&lt;Types::FailedManagedApiItem&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_managed_apis({
    #     product_id: "ProductId", # required
    #     managed_api_ids: ["ManagedApiId"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.failed_items #=> Array
    #   resp.failed_items[0].managed_api_id #=> String
    #   resp.failed_items[0].error_code #=> String, one of "MANAGED_API_NOT_FOUND", "INTERNAL_ERROR"
    #   resp.failed_items[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/AssociateManagedApis AWS API Documentation
    #
    # @overload associate_managed_apis(params = {})
    # @param [Hash] params ({})
    def associate_managed_apis(params = {}, options = {})
      req = build_request(:associate_managed_apis, params)
      req.send_request(options)
    end

    # Promote a discovered API in the API inventory into the managed API
    # list.
    #
    # @option params [required, Types::ApiSignature] :api_signature
    #   The resource, method, host, port, and path that identify the API.
    #
    # @option params [Hash<String,String>] :tags
    #   Up to 50 tags per request, matching API Gateway's limit of 50 tags
    #   per resource.
    #
    # @return [Types::CreateManagedApiResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateManagedApiResponse#managed_api_id #managed_api_id} => String
    #   * {Types::CreateManagedApiResponse#managed_api_arn #managed_api_arn} => String
    #   * {Types::CreateManagedApiResponse#api_signature #api_signature} => Types::ApiSignature
    #   * {Types::CreateManagedApiResponse#created_at #created_at} => Time
    #   * {Types::CreateManagedApiResponse#updated_at #updated_at} => Time
    #   * {Types::CreateManagedApiResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_managed_api({
    #     api_signature: { # required
    #       resource_arn: "ResourceArn", # required
    #       method: "GET", # required, accepts GET, POST, PUT, DELETE, PATCH, ANY, HEAD, OPTIONS
    #       hostname: "ApiSignatureHostnameString", # required
    #       port: 1, # required
    #       path: "ApiSignaturePathString", # required
    #     },
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.managed_api_id #=> String
    #   resp.managed_api_arn #=> String
    #   resp.api_signature.resource_arn #=> String
    #   resp.api_signature.method #=> String, one of "GET", "POST", "PUT", "DELETE", "PATCH", "ANY", "HEAD", "OPTIONS"
    #   resp.api_signature.hostname #=> String
    #   resp.api_signature.port #=> Integer
    #   resp.api_signature.path #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/CreateManagedApi AWS API Documentation
    #
    # @overload create_managed_api(params = {})
    # @param [Hash] params ({})
    def create_managed_api(params = {}, options = {})
      req = build_request(:create_managed_api, params)
      req.send_request(options)
    end

    # Creates a portal that publishes documentation for the products it
    # includes. Use UpdatePortalPublishStatus to publish it.
    #
    # @option params [required, Types::PortalContent] :portal_content
    #   The portal's display name, description, and theme.
    #
    # @option params [required, Types::EndpointConfigurationRequest] :endpoint_configuration
    #   Exactly one of the members is set: `none` for no custom domain, or
    #   `acmManaged` to bring a domain + ACM certificate. Modeled as a union
    #   so the "exactly one" choice is enforced by type.
    #
    # @option params [required, Types::Authorization] :authorization
    #   How readers sign in to the portal, and whether fine-grained access
    #   control is on.
    #
    # @option params [Array<String>] :included_product_arns
    #   The ARNs of the products the portal includes, up to 200.
    #
    # @option params [String] :logo_uri
    #   The S3 location of the portal logo, in the form `s3://bucket/key`.
    #
    # @option params [String] :rum_app_monitor_name
    #   The name of the CloudWatch RUM app monitor that collects reader
    #   telemetry for the portal.
    #
    # @option params [Hash<String,String>] :tags
    #   Up to 50 tags per request, matching API Gateway's limit of 50 tags
    #   per resource.
    #
    # @return [Types::CreatePortalResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreatePortalResponse#portal_id #portal_id} => String
    #   * {Types::CreatePortalResponse#portal_arn #portal_arn} => String
    #   * {Types::CreatePortalResponse#endpoint_configuration #endpoint_configuration} => Types::EndpointConfigurationResponse
    #   * {Types::CreatePortalResponse#authorization #authorization} => Types::Authorization
    #   * {Types::CreatePortalResponse#portal_content #portal_content} => Types::PortalContent
    #   * {Types::CreatePortalResponse#included_product_arns #included_product_arns} => Array&lt;String&gt;
    #   * {Types::CreatePortalResponse#publish_status #publish_status} => String
    #   * {Types::CreatePortalResponse#status_exception #status_exception} => Types::PortalStatusException
    #   * {Types::CreatePortalResponse#updated_at #updated_at} => Time
    #   * {Types::CreatePortalResponse#published_at #published_at} => Time
    #   * {Types::CreatePortalResponse#publish_description #publish_description} => String
    #   * {Types::CreatePortalResponse#rum_app_monitor_name #rum_app_monitor_name} => String
    #   * {Types::CreatePortalResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_portal({
    #     portal_content: { # required
    #       display_name: "PortalName", # required
    #       description: "PortalDescription",
    #       theme: { # required
    #         custom_colors: { # required
    #           background_color: "Color", # required
    #           navigation_color: "Color", # required
    #           header_color: "Color", # required
    #           text_color: "Color", # required
    #           accent_color: "Color", # required
    #           error_validation_color: "Color", # required
    #         },
    #         logo_uploaded_at: Time.now,
    #       },
    #     },
    #     endpoint_configuration: { # required
    #       none: {
    #       },
    #       acm_managed: {
    #         domain_name: "PortalDomainName", # required
    #         certificate_arn: "CertificateArn", # required
    #       },
    #     },
    #     authorization: { # required
    #       authorization_config: { # required
    #         none: {
    #         },
    #         cognito_config: {
    #           user_pool_arn: "UserPoolArn", # required
    #           app_client_id: "AppClientId", # required
    #           user_pool_domain: "UserPoolDomain", # required
    #           identity_pool_id: "IdentityPoolId",
    #         },
    #       },
    #       fine_grained_access_control: "ENABLED", # required, accepts ENABLED, DISABLED
    #     },
    #     included_product_arns: ["ProductArn"],
    #     logo_uri: "LogoUri",
    #     rum_app_monitor_name: "RUMAppMonitorName",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.portal_id #=> String
    #   resp.portal_arn #=> String
    #   resp.endpoint_configuration.domain_name #=> String
    #   resp.endpoint_configuration.certificate_arn #=> String
    #   resp.endpoint_configuration.portal_domain_hosted_zone_id #=> String
    #   resp.endpoint_configuration.portal_default_domain_name #=> String
    #   resp.authorization.authorization_config.cognito_config.user_pool_arn #=> String
    #   resp.authorization.authorization_config.cognito_config.app_client_id #=> String
    #   resp.authorization.authorization_config.cognito_config.user_pool_domain #=> String
    #   resp.authorization.authorization_config.cognito_config.identity_pool_id #=> String
    #   resp.authorization.fine_grained_access_control #=> String, one of "ENABLED", "DISABLED"
    #   resp.portal_content.display_name #=> String
    #   resp.portal_content.description #=> String
    #   resp.portal_content.theme.custom_colors.background_color #=> String
    #   resp.portal_content.theme.custom_colors.navigation_color #=> String
    #   resp.portal_content.theme.custom_colors.header_color #=> String
    #   resp.portal_content.theme.custom_colors.text_color #=> String
    #   resp.portal_content.theme.custom_colors.accent_color #=> String
    #   resp.portal_content.theme.custom_colors.error_validation_color #=> String
    #   resp.portal_content.theme.logo_uploaded_at #=> Time
    #   resp.included_product_arns #=> Array
    #   resp.included_product_arns[0] #=> String
    #   resp.publish_status #=> String, one of "PUBLISHED", "PUBLISH_IN_PROGRESS", "PUBLISH_FAILED", "DISABLE_IN_PROGRESS", "DISABLE_FAILED", "DISABLED"
    #   resp.status_exception.exception #=> String, one of "INTERNAL_FAILURE", "UNSHARED_PRODUCT_EXCEPTION", "CLOUDFRONT_DOMAIN_IN_USE", "MISSING_CLOUDFRONT_PERMISSIONS"
    #   resp.status_exception.message #=> String
    #   resp.updated_at #=> Time
    #   resp.published_at #=> Time
    #   resp.publish_description #=> String
    #   resp.rum_app_monitor_name #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/CreatePortal AWS API Documentation
    #
    # @overload create_portal(params = {})
    # @param [Hash] params ({})
    def create_portal(params = {}, options = {})
      req = build_request(:create_portal, params)
      req.send_request(options)
    end

    # Starts building a preview of the portal's current content. Use
    # GetPortal to check the preview status and get the preview URL.
    #
    # @option params [required, String] :portal_id
    #   The identifier of the portal.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_portal_preview({
    #     portal_id: "PortalId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/CreatePortalPreview AWS API Documentation
    #
    # @overload create_portal_preview(params = {})
    # @param [Hash] params ({})
    def create_portal_preview(params = {}, options = {})
      req = build_request(:create_portal_preview, params)
      req.send_request(options)
    end

    # Creates a product. A product groups Managed APIs with their API pages
    # and product pages so a portal can publish them together.
    #
    # @option params [required, String] :display_name
    #   The name of the product, from 1 to 255 characters.
    #
    # @option params [String] :description
    #   A description of the product, up to 1024 characters.
    #
    # @option params [Hash<String,String>] :tags
    #   Up to 50 tags per request, matching API Gateway's limit of 50 tags
    #   per resource.
    #
    # @option params [Types::ApiSelectionConfiguration] :api_selection_configuration
    #   How Managed APIs are selected for the product. The selection mode
    #   can't be changed after the product is created.
    #
    # @return [Types::CreateProductResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateProductResponse#product_id #product_id} => String
    #   * {Types::CreateProductResponse#product_arn #product_arn} => String
    #   * {Types::CreateProductResponse#display_name #display_name} => String
    #   * {Types::CreateProductResponse#display_order #display_order} => Types::DisplayOrder
    #   * {Types::CreateProductResponse#description #description} => String
    #   * {Types::CreateProductResponse#updated_at #updated_at} => Time
    #   * {Types::CreateProductResponse#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::CreateProductResponse#api_selection_configuration #api_selection_configuration} => Types::ApiSelectionConfiguration
    #   * {Types::CreateProductResponse#status #status} => String
    #   * {Types::CreateProductResponse#failure_reason #failure_reason} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_product({
    #     display_name: "ProductName", # required
    #     description: "ProductDescription",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     api_selection_configuration: {
    #       api_selection_mode: "CUSTOM", # required, accepts CUSTOM, RULE_BASED
    #       rule_filters: [
    #         {
    #           key: "RESOURCE_ARN", # required, accepts RESOURCE_ARN, HOST, METHOD, PATH, PORT, ACCOUNT
    #           values: ["RuleFilterValue"], # required
    #         },
    #       ],
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.product_id #=> String
    #   resp.product_arn #=> String
    #   resp.display_name #=> String
    #   resp.display_order.overview_page_arn #=> String
    #   resp.display_order.product_page_arns #=> Array
    #   resp.display_order.product_page_arns[0] #=> String
    #   resp.display_order.contents #=> Array
    #   resp.display_order.contents[0].section_name #=> String
    #   resp.display_order.contents[0].product_api_page_arns #=> Array
    #   resp.display_order.contents[0].product_api_page_arns[0] #=> String
    #   resp.description #=> String
    #   resp.updated_at #=> Time
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #   resp.api_selection_configuration.api_selection_mode #=> String, one of "CUSTOM", "RULE_BASED"
    #   resp.api_selection_configuration.rule_filters #=> Array
    #   resp.api_selection_configuration.rule_filters[0].key #=> String, one of "RESOURCE_ARN", "HOST", "METHOD", "PATH", "PORT", "ACCOUNT"
    #   resp.api_selection_configuration.rule_filters[0].values #=> Array
    #   resp.api_selection_configuration.rule_filters[0].values[0] #=> String
    #   resp.status #=> String, one of "ACTIVE", "IN_PROGRESS", "FAILED"
    #   resp.failure_reason #=> String, one of "API_PAGE_ATTACHED", "EVALUATION_ERROR"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/CreateProduct AWS API Documentation
    #
    # @overload create_product(params = {})
    # @param [Hash] params ({})
    def create_product(params = {}, options = {})
      req = build_request(:create_product, params)
      req.send_request(options)
    end

    # Creates an API page that documents a Managed API in a product. The
    # page content is generated asynchronously. Use `status` to track it.
    #
    # @option params [required, String] :product_id
    #   The identifier of the product.
    #
    # @option params [required, String] :managed_api_id
    #   The Managed API this page documents. It must already be associated
    #   with the product, and the page's API identifier is taken from the
    #   Managed API rather than supplied by the caller.
    #
    # @option params [Types::ApiPageDisplayContent] :display_content
    #   Exactly one of the members is set: `none` to use default display
    #   content, or `overrides` to customize it. Modeled as a union so the
    #   "exactly one" choice is enforced by type.
    #
    # @option params [String] :try_it_state
    #   Whether readers can call the API from the page with Try-It. Defaults
    #   to `DISABLED`. To enable it, the page's API URL must use HTTPS on a
    #   domain that supports Try-It.
    #
    # @option params [Hash<String,String>] :tags
    #   Up to 50 tags per request, matching API Gateway's limit of 50 tags
    #   per resource.
    #
    # @return [Types::CreateProductApiPageResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateProductApiPageResponse#product_api_page_id #product_api_page_id} => String
    #   * {Types::CreateProductApiPageResponse#product_api_page_arn #product_api_page_arn} => String
    #   * {Types::CreateProductApiPageResponse#api_id #api_id} => Types::ApiId
    #   * {Types::CreateProductApiPageResponse#display_content #display_content} => Types::ApiPageDisplayContentResponse
    #   * {Types::CreateProductApiPageResponse#try_it_state #try_it_state} => String
    #   * {Types::CreateProductApiPageResponse#updated_at #updated_at} => Time
    #   * {Types::CreateProductApiPageResponse#status #status} => String
    #   * {Types::CreateProductApiPageResponse#status_exception #status_exception} => Types::ProductApiPageStatusException
    #   * {Types::CreateProductApiPageResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_product_api_page({
    #     product_id: "ProductId", # required
    #     managed_api_id: "ManagedApiId", # required
    #     display_content: {
    #       none: {
    #       },
    #       overrides: {
    #         operation_name: "OperationName",
    #         api_url: "DisplayContentOverridesApiUrlString",
    #         body: "ApiPageBody",
    #       },
    #     },
    #     try_it_state: "ENABLED", # accepts ENABLED, DISABLED
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.product_api_page_id #=> String
    #   resp.product_api_page_arn #=> String
    #   resp.api_id.identifier_parts.path #=> String
    #   resp.api_id.identifier_parts.method #=> String
    #   resp.api_id.identifier_parts.resource_arn #=> String
    #   resp.display_content.operation_name #=> String
    #   resp.display_content.api_url #=> String
    #   resp.display_content.body #=> String
    #   resp.try_it_state #=> String, one of "ENABLED", "DISABLED"
    #   resp.updated_at #=> Time
    #   resp.status #=> String, one of "AVAILABLE", "IN_PROGRESS", "FAILED"
    #   resp.status_exception.exception #=> String, one of "INTERNAL_FAILURE", "RESOURCE_DELETED", "MEMBER_LEFT_ORG"
    #   resp.status_exception.message #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/CreateProductApiPage AWS API Documentation
    #
    # @overload create_product_api_page(params = {})
    # @param [Hash] params ({})
    def create_product_api_page(params = {}, options = {})
      req = build_request(:create_product_api_page, params)
      req.send_request(options)
    end

    # Creates a product page with free-form documentation. A product can
    # have up to 40 pages.
    #
    # @option params [required, String] :product_id
    #   The identifier of the product.
    #
    # @option params [required, Types::DisplayContent] :display_content
    #   The title and body of the page.
    #
    # @option params [Hash<String,String>] :tags
    #   Up to 50 tags per request, matching API Gateway's limit of 50 tags
    #   per resource.
    #
    # @return [Types::CreateProductPageResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateProductPageResponse#product_page_id #product_page_id} => String
    #   * {Types::CreateProductPageResponse#product_page_arn #product_page_arn} => String
    #   * {Types::CreateProductPageResponse#display_content #display_content} => Types::DisplayContent
    #   * {Types::CreateProductPageResponse#updated_at #updated_at} => Time
    #   * {Types::CreateProductPageResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_product_page({
    #     product_id: "ProductId", # required
    #     display_content: { # required
    #       title: "PageTitle", # required
    #       body: "PageBody", # required
    #     },
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.product_page_id #=> String
    #   resp.product_page_arn #=> String
    #   resp.display_content.title #=> String
    #   resp.display_content.body #=> String
    #   resp.updated_at #=> Time
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/CreateProductPage AWS API Documentation
    #
    # @overload create_product_page(params = {})
    # @param [Hash] params ({})
    def create_product_page(params = {}, options = {})
      req = build_request(:create_product_page, params)
      req.send_request(options)
    end

    # Deletes the discovery configuration and stops any running discovery.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/DeleteDiscoveryConfiguration AWS API Documentation
    #
    # @overload delete_discovery_configuration(params = {})
    # @param [Hash] params ({})
    def delete_discovery_configuration(params = {}, options = {})
      req = build_request(:delete_discovery_configuration, params)
      req.send_request(options)
    end

    # Deletes a Managed API.
    #
    # @option params [required, String] :managed_api_id
    #   The identifier of the Managed API.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_managed_api({
    #     managed_api_id: "ManagedApiId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/DeleteManagedApi AWS API Documentation
    #
    # @overload delete_managed_api(params = {})
    # @param [Hash] params ({})
    def delete_managed_api(params = {}, options = {})
      req = build_request(:delete_managed_api, params)
      req.send_request(options)
    end

    # Deletes the organization-wide discovery configuration and stops any
    # running discovery across the organization. Only the organization
    # management account may call this operation.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/DeleteOrganizationDiscoveryConfiguration AWS API Documentation
    #
    # @overload delete_organization_discovery_configuration(params = {})
    # @param [Hash] params ({})
    def delete_organization_discovery_configuration(params = {}, options = {})
      req = build_request(:delete_organization_discovery_configuration, params)
      req.send_request(options)
    end

    # Deletes a portal.
    #
    # @option params [required, String] :portal_id
    #   The identifier of the portal.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_portal({
    #     portal_id: "PortalId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/DeletePortal AWS API Documentation
    #
    # @overload delete_portal(params = {})
    # @param [Hash] params ({})
    def delete_portal(params = {}, options = {})
      req = build_request(:delete_portal, params)
      req.send_request(options)
    end

    # Deletes a product.
    #
    # @option params [required, String] :product_id
    #   The identifier of the product.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_product({
    #     product_id: "ProductId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/DeleteProduct AWS API Documentation
    #
    # @overload delete_product(params = {})
    # @param [Hash] params ({})
    def delete_product(params = {}, options = {})
      req = build_request(:delete_product, params)
      req.send_request(options)
    end

    # Deletes an API page.
    #
    # @option params [required, String] :product_id
    #   The identifier of the product.
    #
    # @option params [required, String] :product_api_page_id
    #   The identifier of the API page.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_product_api_page({
    #     product_id: "ProductId", # required
    #     product_api_page_id: "ProductApiPageId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/DeleteProductApiPage AWS API Documentation
    #
    # @overload delete_product_api_page(params = {})
    # @param [Hash] params ({})
    def delete_product_api_page(params = {}, options = {})
      req = build_request(:delete_product_api_page, params)
      req.send_request(options)
    end

    # Deletes a product page.
    #
    # @option params [required, String] :product_id
    #   The identifier of the product.
    #
    # @option params [required, String] :product_page_id
    #   The identifier of the product page.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_product_page({
    #     product_id: "ProductId", # required
    #     product_page_id: "ProductPageId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/DeleteProductPage AWS API Documentation
    #
    # @overload delete_product_page(params = {})
    # @param [Hash] params ({})
    def delete_product_page(params = {}, options = {})
      req = build_request(:delete_product_page, params)
      req.send_request(options)
    end

    # Deletes the sharing policy of a product. The product is no longer
    # shared.
    #
    # @option params [required, String] :product_id
    #   The identifier of the product.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_product_sharing_policy({
    #     product_id: "ProductId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/DeleteProductSharingPolicy AWS API Documentation
    #
    # @overload delete_product_sharing_policy(params = {})
    # @param [Hash] params ({})
    def delete_product_sharing_policy(params = {}, options = {})
      req = build_request(:delete_product_sharing_policy, params)
      req.send_request(options)
    end

    # Disassociate one or more Managed APIs from a product. Best-effort —
    # IDs that fail are returned in \{@link
    # DisassociateManagedApisResponse#failedItems}; IDs that succeed are
    # omitted. Disassociating an unmapped Managed API is a no-op (not
    # reported as failure).
    #
    # @option params [required, String] :product_id
    #   The identifier of the product to disassociate the Managed APIs from.
    #
    # @option params [required, Array<String>] :managed_api_ids
    #   Bounded list of Managed API IDs, used as the request payload for batch
    #   associate/disassociate.
    #
    # @return [Types::DisassociateManagedApisResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DisassociateManagedApisResponse#failed_items #failed_items} => Array&lt;Types::FailedManagedApiItem&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_managed_apis({
    #     product_id: "ProductId", # required
    #     managed_api_ids: ["ManagedApiId"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.failed_items #=> Array
    #   resp.failed_items[0].managed_api_id #=> String
    #   resp.failed_items[0].error_code #=> String, one of "MANAGED_API_NOT_FOUND", "INTERNAL_ERROR"
    #   resp.failed_items[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/DisassociateManagedApis AWS API Documentation
    #
    # @overload disassociate_managed_apis(params = {})
    # @param [Hash] params ({})
    def disassociate_managed_apis(params = {}, options = {})
      req = build_request(:disassociate_managed_apis, params)
      req.send_request(options)
    end

    # Gets full details of a single API inventory item.
    #
    # @option params [required, String] :method
    #   The HTTP method of the API.
    #
    # @option params [required, String] :host
    #   A discovered API's front-door hostname (e.g. an ALB, CloudFront, or
    #   API Gateway DNS name), bounded by the DNS name limit (RFC 1035).
    #   Usually literal, but may contain placeholders: &lt;*&gt; - stands for
    #   one dot-separated part of the hostname. When 10 or more hosts differ
    #   only in that part, they fold into one, e.g. a.example.com,
    #   b.example.com, ... become "&lt;*&gt;.example.com". Deeper levels fold
    #   the same way ("&lt;*&gt;.&lt;*&gt;.example.com"). The registrable
    #   domain never folds. <ip> - an IP-literal host.</p> </ip>
    #
    # @option params [required, Integer] :port
    #   The port the API listens on, from 0 to 65535.
    #
    # @option params [required, String] :path
    #   The request path of the API.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource that serves the API, such as an API Gateway
    #   stage or a load balancer.
    #
    # @return [Types::GetApiInventoryItemResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetApiInventoryItemResponse#item #item} => Types::ApiInventoryItemDetail
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_api_inventory_item({
    #     method: "GET", # required, accepts GET, POST, PUT, DELETE, PATCH, ANY, HEAD, OPTIONS
    #     host: "Host", # required
    #     port: 1, # required
    #     path: "Path", # required
    #     resource_arn: "ResourceArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.item.method #=> String, one of "GET", "POST", "PUT", "DELETE", "PATCH", "ANY", "HEAD", "OPTIONS"
    #   resp.item.host #=> String
    #   resp.item.port #=> Integer
    #   resp.item.path #=> String
    #   resp.item.account_id #=> String
    #   resp.item.resource_arn #=> String
    #   resp.item.region #=> String
    #   resp.item.discovery_source #=> String, one of "API_GATEWAY", "ELB", "CLOUDFRONT"
    #   resp.item.visibility #=> String, one of "PUBLIC", "PRIVATE"
    #   resp.item.waf_status #=> String, one of "ENABLED", "DISABLED"
    #   resp.item.classification #=> String, one of "SHADOW", "MANAGED", "MANAGED_ZOMBIE", "MANAGED_ORPHANED"
    #   resp.item.managed_by #=> String, one of "SELF", "ORGANIZATION"
    #   resp.item.workloads #=> Array
    #   resp.item.workloads[0] #=> String, one of "MCP", "LLM", "A2A"
    #   resp.item.managed_api_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/GetApiInventoryItem AWS API Documentation
    #
    # @overload get_api_inventory_item(params = {})
    # @param [Hash] params ({})
    def get_api_inventory_item(params = {}, options = {})
      req = build_request(:get_api_inventory_item, params)
      req.send_request(options)
    end

    # Retrieves the discovery configuration for the account and region.
    #
    # @return [Types::GetDiscoveryConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDiscoveryConfigurationResponse#discovery_configuration #discovery_configuration} => Types::DiscoveryConfigurationData
    #   * {Types::GetDiscoveryConfigurationResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Response structure
    #
    #   resp.discovery_configuration.arn #=> String
    #   resp.discovery_configuration.status #=> String, one of "DISABLED", "ENABLED", "UPDATING"
    #   resp.discovery_configuration.discovery_sources #=> Array
    #   resp.discovery_configuration.discovery_sources[0] #=> String, one of "API_GATEWAY", "ELB", "CLOUDFRONT"
    #   resp.discovery_configuration.excluded_resources #=> Array
    #   resp.discovery_configuration.excluded_resources[0] #=> String
    #   resp.discovery_configuration.features #=> Array
    #   resp.discovery_configuration.features[0] #=> String, one of "AI_DISCOVERY"
    #   resp.discovery_configuration.created_at #=> Time
    #   resp.discovery_configuration.updated_at #=> Time
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/GetDiscoveryConfiguration AWS API Documentation
    #
    # @overload get_discovery_configuration(params = {})
    # @param [Hash] params ({})
    def get_discovery_configuration(params = {}, options = {})
      req = build_request(:get_discovery_configuration, params)
      req.send_request(options)
    end

    # Returns a Managed API, including its security posture findings.
    #
    # @option params [required, String] :managed_api_id
    #   The identifier of the Managed API.
    #
    # @return [Types::GetManagedApiResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetManagedApiResponse#managed_api_id #managed_api_id} => String
    #   * {Types::GetManagedApiResponse#managed_api_arn #managed_api_arn} => String
    #   * {Types::GetManagedApiResponse#api_signature #api_signature} => Types::ApiSignature
    #   * {Types::GetManagedApiResponse#created_at #created_at} => Time
    #   * {Types::GetManagedApiResponse#updated_at #updated_at} => Time
    #   * {Types::GetManagedApiResponse#findings #findings} => Array&lt;Types::ManagedApiFinding&gt;
    #   * {Types::GetManagedApiResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_managed_api({
    #     managed_api_id: "ManagedApiId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.managed_api_id #=> String
    #   resp.managed_api_arn #=> String
    #   resp.api_signature.resource_arn #=> String
    #   resp.api_signature.method #=> String, one of "GET", "POST", "PUT", "DELETE", "PATCH", "ANY", "HEAD", "OPTIONS"
    #   resp.api_signature.hostname #=> String
    #   resp.api_signature.port #=> Integer
    #   resp.api_signature.path #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.findings #=> Array
    #   resp.findings[0].posture_id #=> String
    #   resp.findings[0].posture_status #=> String, one of "TRUE", "FALSE", "NOT_APPLICABLE", "INSUFFICIENT_DATA"
    #   resp.findings[0].reason #=> String, one of "AUTHENTICATION_NOT_CONFIGURED", "REQUEST_VALIDATION_NOT_ENABLED", "API_KEY_NOT_CONFIGURED", "THROTTLING_NOT_ENABLED", "THROTTLING_RATE_LIMIT_NOT_SET", "THROTTLING_BURST_LIMIT_NOT_SET", "RESPONSE_CACHING_NOT_ENABLED", "STAGE_WAF_NOT_ASSOCIATED", "STAGE_ACCESS_LOGGING_NOT_ENABLED", "PRIVATE_API_RESOURCE_POLICY_MISSING", "REST_API_TLS_BELOW_1_2", "LOAD_BALANCER_WAF_NOT_ASSOCIATED", "LISTENER_TLS_BELOW_1_2", "DISTRIBUTION_TLS_BELOW_1_2", "DISTRIBUTION_WAF_NOT_ASSOCIATED", "DISTRIBUTION_SERVES_PLAINTEXT_HTTP", "DISTRIBUTION_ACCESS_LOGGING_NOT_ENABLED", "GEO_RESTRICTION_NOT_CONFIGURED", "UNKNOWN"
    #   resp.findings[0].updated_at #=> Time
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/GetManagedApi AWS API Documentation
    #
    # @overload get_managed_api(params = {})
    # @param [Hash] params ({})
    def get_managed_api(params = {}, options = {})
      req = build_request(:get_managed_api, params)
      req.send_request(options)
    end

    # Retrieves the organization-wide discovery configuration. Only the
    # organization management account and registered delegated
    # administrators may call this operation.
    #
    # @return [Types::GetOrganizationDiscoveryConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetOrganizationDiscoveryConfigurationResponse#discovery_configuration #discovery_configuration} => Types::OrganizationDiscoveryConfigurationData
    #   * {Types::GetOrganizationDiscoveryConfigurationResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Response structure
    #
    #   resp.discovery_configuration.arn #=> String
    #   resp.discovery_configuration.status #=> String, one of "DISABLED", "ENABLED", "UPDATING"
    #   resp.discovery_configuration.discovery_sources #=> Array
    #   resp.discovery_configuration.discovery_sources[0] #=> String, one of "API_GATEWAY", "ELB", "CLOUDFRONT"
    #   resp.discovery_configuration.exclusion_filters.organizational_unit_ids #=> Array
    #   resp.discovery_configuration.exclusion_filters.organizational_unit_ids[0] #=> String
    #   resp.discovery_configuration.exclusion_filters.account_ids #=> Array
    #   resp.discovery_configuration.exclusion_filters.account_ids[0] #=> String
    #   resp.discovery_configuration.exclusion_filters.resource_arns #=> Array
    #   resp.discovery_configuration.exclusion_filters.resource_arns[0] #=> String
    #   resp.discovery_configuration.discovery_filters.exclusion_filters.organizational_unit_ids #=> Array
    #   resp.discovery_configuration.discovery_filters.exclusion_filters.organizational_unit_ids[0] #=> String
    #   resp.discovery_configuration.discovery_filters.exclusion_filters.account_ids #=> Array
    #   resp.discovery_configuration.discovery_filters.exclusion_filters.account_ids[0] #=> String
    #   resp.discovery_configuration.discovery_filters.exclusion_filters.resource_arns #=> Array
    #   resp.discovery_configuration.discovery_filters.exclusion_filters.resource_arns[0] #=> String
    #   resp.discovery_configuration.discovery_filters.inclusion_filters.organizational_unit_ids #=> Array
    #   resp.discovery_configuration.discovery_filters.inclusion_filters.organizational_unit_ids[0] #=> String
    #   resp.discovery_configuration.discovery_filters.inclusion_filters.account_ids #=> Array
    #   resp.discovery_configuration.discovery_filters.inclusion_filters.account_ids[0] #=> String
    #   resp.discovery_configuration.features #=> Array
    #   resp.discovery_configuration.features[0] #=> String, one of "AI_DISCOVERY"
    #   resp.discovery_configuration.created_at #=> Time
    #   resp.discovery_configuration.updated_at #=> Time
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/GetOrganizationDiscoveryConfiguration AWS API Documentation
    #
    # @overload get_organization_discovery_configuration(params = {})
    # @param [Hash] params ({})
    def get_organization_discovery_configuration(params = {}, options = {})
      req = build_request(:get_organization_discovery_configuration, params)
      req.send_request(options)
    end

    # Returns the configuration, publish status, and preview status of a
    # portal.
    #
    # @option params [required, String] :portal_id
    #   The identifier of the portal.
    #
    # @return [Types::GetPortalResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetPortalResponse#portal_id #portal_id} => String
    #   * {Types::GetPortalResponse#portal_arn #portal_arn} => String
    #   * {Types::GetPortalResponse#endpoint_configuration #endpoint_configuration} => Types::EndpointConfigurationResponse
    #   * {Types::GetPortalResponse#authorization #authorization} => Types::Authorization
    #   * {Types::GetPortalResponse#portal_content #portal_content} => Types::PortalContent
    #   * {Types::GetPortalResponse#included_product_arns #included_product_arns} => Array&lt;String&gt;
    #   * {Types::GetPortalResponse#publish_status #publish_status} => String
    #   * {Types::GetPortalResponse#status_exception #status_exception} => Types::PortalStatusException
    #   * {Types::GetPortalResponse#updated_at #updated_at} => Time
    #   * {Types::GetPortalResponse#published_at #published_at} => Time
    #   * {Types::GetPortalResponse#publish_description #publish_description} => String
    #   * {Types::GetPortalResponse#rum_app_monitor_name #rum_app_monitor_name} => String
    #   * {Types::GetPortalResponse#preview #preview} => Types::Preview
    #   * {Types::GetPortalResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_portal({
    #     portal_id: "PortalId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.portal_id #=> String
    #   resp.portal_arn #=> String
    #   resp.endpoint_configuration.domain_name #=> String
    #   resp.endpoint_configuration.certificate_arn #=> String
    #   resp.endpoint_configuration.portal_domain_hosted_zone_id #=> String
    #   resp.endpoint_configuration.portal_default_domain_name #=> String
    #   resp.authorization.authorization_config.cognito_config.user_pool_arn #=> String
    #   resp.authorization.authorization_config.cognito_config.app_client_id #=> String
    #   resp.authorization.authorization_config.cognito_config.user_pool_domain #=> String
    #   resp.authorization.authorization_config.cognito_config.identity_pool_id #=> String
    #   resp.authorization.fine_grained_access_control #=> String, one of "ENABLED", "DISABLED"
    #   resp.portal_content.display_name #=> String
    #   resp.portal_content.description #=> String
    #   resp.portal_content.theme.custom_colors.background_color #=> String
    #   resp.portal_content.theme.custom_colors.navigation_color #=> String
    #   resp.portal_content.theme.custom_colors.header_color #=> String
    #   resp.portal_content.theme.custom_colors.text_color #=> String
    #   resp.portal_content.theme.custom_colors.accent_color #=> String
    #   resp.portal_content.theme.custom_colors.error_validation_color #=> String
    #   resp.portal_content.theme.logo_uploaded_at #=> Time
    #   resp.included_product_arns #=> Array
    #   resp.included_product_arns[0] #=> String
    #   resp.publish_status #=> String, one of "PUBLISHED", "PUBLISH_IN_PROGRESS", "PUBLISH_FAILED", "DISABLE_IN_PROGRESS", "DISABLE_FAILED", "DISABLED"
    #   resp.status_exception.exception #=> String, one of "INTERNAL_FAILURE", "UNSHARED_PRODUCT_EXCEPTION", "CLOUDFRONT_DOMAIN_IN_USE", "MISSING_CLOUDFRONT_PERMISSIONS"
    #   resp.status_exception.message #=> String
    #   resp.updated_at #=> Time
    #   resp.published_at #=> Time
    #   resp.publish_description #=> String
    #   resp.rum_app_monitor_name #=> String
    #   resp.preview.preview_status #=> String, one of "PREVIEW_IN_PROGRESS", "PREVIEW_FAILED", "PREVIEW_READY"
    #   resp.preview.status_exception.exception #=> String, one of "INTERNAL_FAILURE", "UNSHARED_PRODUCT_EXCEPTION", "CLOUDFRONT_DOMAIN_IN_USE", "MISSING_CLOUDFRONT_PERMISSIONS"
    #   resp.preview.status_exception.message #=> String
    #   resp.preview.preview_url #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/GetPortal AWS API Documentation
    #
    # @overload get_portal(params = {})
    # @param [Hash] params ({})
    def get_portal(params = {}, options = {})
      req = build_request(:get_portal, params)
      req.send_request(options)
    end

    # Returns a product. To read a product shared with you by another
    # account, supply `resourceOwnerAccountId`.
    #
    # @option params [required, String] :product_id
    #   The identifier of the product.
    #
    # @option params [String] :resource_owner_account_id
    #   The AWS account ID that owns the product. Supply it to read a product
    #   shared with you by another account. Omit it for products in your own
    #   account.
    #
    # @return [Types::GetProductResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetProductResponse#product_id #product_id} => String
    #   * {Types::GetProductResponse#product_arn #product_arn} => String
    #   * {Types::GetProductResponse#display_name #display_name} => String
    #   * {Types::GetProductResponse#display_order #display_order} => Types::DisplayOrder
    #   * {Types::GetProductResponse#description #description} => String
    #   * {Types::GetProductResponse#updated_at #updated_at} => Time
    #   * {Types::GetProductResponse#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::GetProductResponse#api_selection_configuration #api_selection_configuration} => Types::ApiSelectionConfiguration
    #   * {Types::GetProductResponse#status #status} => String
    #   * {Types::GetProductResponse#failure_reason #failure_reason} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_product({
    #     product_id: "ProductId", # required
    #     resource_owner_account_id: "AccountId",
    #   })
    #
    # @example Response structure
    #
    #   resp.product_id #=> String
    #   resp.product_arn #=> String
    #   resp.display_name #=> String
    #   resp.display_order.overview_page_arn #=> String
    #   resp.display_order.product_page_arns #=> Array
    #   resp.display_order.product_page_arns[0] #=> String
    #   resp.display_order.contents #=> Array
    #   resp.display_order.contents[0].section_name #=> String
    #   resp.display_order.contents[0].product_api_page_arns #=> Array
    #   resp.display_order.contents[0].product_api_page_arns[0] #=> String
    #   resp.description #=> String
    #   resp.updated_at #=> Time
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #   resp.api_selection_configuration.api_selection_mode #=> String, one of "CUSTOM", "RULE_BASED"
    #   resp.api_selection_configuration.rule_filters #=> Array
    #   resp.api_selection_configuration.rule_filters[0].key #=> String, one of "RESOURCE_ARN", "HOST", "METHOD", "PATH", "PORT", "ACCOUNT"
    #   resp.api_selection_configuration.rule_filters[0].values #=> Array
    #   resp.api_selection_configuration.rule_filters[0].values[0] #=> String
    #   resp.status #=> String, one of "ACTIVE", "IN_PROGRESS", "FAILED"
    #   resp.failure_reason #=> String, one of "API_PAGE_ATTACHED", "EVALUATION_ERROR"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/GetProduct AWS API Documentation
    #
    # @overload get_product(params = {})
    # @param [Hash] params ({})
    def get_product(params = {}, options = {})
      req = build_request(:get_product, params)
      req.send_request(options)
    end

    # Returns an API page, including its body.
    #
    # @option params [required, String] :product_id
    #   The identifier of the product.
    #
    # @option params [required, String] :product_api_page_id
    #   The identifier of the API page.
    #
    # @option params [String] :resource_owner_account_id
    #   The AWS account ID that owns the product. Supply it to read a product
    #   shared with you by another account. Omit it for products in your own
    #   account.
    #
    # @option params [Boolean] :include_raw_display_content
    #   Set to `true` to also return the page body in `rawDisplayContent`.
    #
    # @return [Types::GetProductApiPageResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetProductApiPageResponse#product_api_page_id #product_api_page_id} => String
    #   * {Types::GetProductApiPageResponse#product_api_page_arn #product_api_page_arn} => String
    #   * {Types::GetProductApiPageResponse#api_id #api_id} => Types::ApiId
    #   * {Types::GetProductApiPageResponse#display_content #display_content} => Types::ApiPageDisplayContentResponse
    #   * {Types::GetProductApiPageResponse#try_it_state #try_it_state} => String
    #   * {Types::GetProductApiPageResponse#updated_at #updated_at} => Time
    #   * {Types::GetProductApiPageResponse#status #status} => String
    #   * {Types::GetProductApiPageResponse#raw_display_content #raw_display_content} => String
    #   * {Types::GetProductApiPageResponse#status_exception #status_exception} => Types::ProductApiPageStatusException
    #   * {Types::GetProductApiPageResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_product_api_page({
    #     product_id: "ProductId", # required
    #     product_api_page_id: "ProductApiPageId", # required
    #     resource_owner_account_id: "AccountId",
    #     include_raw_display_content: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.product_api_page_id #=> String
    #   resp.product_api_page_arn #=> String
    #   resp.api_id.identifier_parts.path #=> String
    #   resp.api_id.identifier_parts.method #=> String
    #   resp.api_id.identifier_parts.resource_arn #=> String
    #   resp.display_content.operation_name #=> String
    #   resp.display_content.api_url #=> String
    #   resp.display_content.body #=> String
    #   resp.try_it_state #=> String, one of "ENABLED", "DISABLED"
    #   resp.updated_at #=> Time
    #   resp.status #=> String, one of "AVAILABLE", "IN_PROGRESS", "FAILED"
    #   resp.raw_display_content #=> String
    #   resp.status_exception.exception #=> String, one of "INTERNAL_FAILURE", "RESOURCE_DELETED", "MEMBER_LEFT_ORG"
    #   resp.status_exception.message #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/GetProductApiPage AWS API Documentation
    #
    # @overload get_product_api_page(params = {})
    # @param [Hash] params ({})
    def get_product_api_page(params = {}, options = {})
      req = build_request(:get_product_api_page, params)
      req.send_request(options)
    end

    # Returns a product page, including its body.
    #
    # @option params [required, String] :product_id
    #   The identifier of the product.
    #
    # @option params [required, String] :product_page_id
    #   The identifier of the product page.
    #
    # @option params [String] :resource_owner_account_id
    #   The AWS account ID that owns the product. Supply it to read a product
    #   shared with you by another account. Omit it for products in your own
    #   account.
    #
    # @return [Types::GetProductPageResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetProductPageResponse#product_page_id #product_page_id} => String
    #   * {Types::GetProductPageResponse#product_page_arn #product_page_arn} => String
    #   * {Types::GetProductPageResponse#display_content #display_content} => Types::DisplayContent
    #   * {Types::GetProductPageResponse#updated_at #updated_at} => Time
    #   * {Types::GetProductPageResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_product_page({
    #     product_id: "ProductId", # required
    #     product_page_id: "ProductPageId", # required
    #     resource_owner_account_id: "AccountId",
    #   })
    #
    # @example Response structure
    #
    #   resp.product_page_id #=> String
    #   resp.product_page_arn #=> String
    #   resp.display_content.title #=> String
    #   resp.display_content.body #=> String
    #   resp.updated_at #=> Time
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/GetProductPage AWS API Documentation
    #
    # @overload get_product_page(params = {})
    # @param [Hash] params ({})
    def get_product_page(params = {}, options = {})
      req = build_request(:get_product_page, params)
      req.send_request(options)
    end

    # Returns the sharing policy of a product.
    #
    # @option params [required, String] :product_id
    #   The identifier of the product.
    #
    # @return [Types::GetProductSharingPolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetProductSharingPolicyResponse#product_id #product_id} => String
    #   * {Types::GetProductSharingPolicyResponse#policy_document #policy_document} => String
    #   * {Types::GetProductSharingPolicyResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_product_sharing_policy({
    #     product_id: "ProductId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.product_id #=> String
    #   resp.policy_document #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/GetProductSharingPolicy AWS API Documentation
    #
    # @overload get_product_sharing_policy(params = {})
    # @param [Hash] params ({})
    def get_product_sharing_policy(params = {}, options = {})
      req = build_request(:get_product_sharing_policy, params)
      req.send_request(options)
    end

    # Lists discovered API inventory items with filtering and pagination.
    #
    # @option params [Types::ApiInventoryFilters] :filters
    #   Filters that limit the results. Omit it to list every discovered API.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in one page, from 1 to 100.
    #
    # @option params [String] :next_token
    #   The pagination token returned by a previous call. Omit it to get the
    #   first page.
    #
    # @return [Types::ListApiInventoryItemsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListApiInventoryItemsResponse#items #items} => Array&lt;Types::ApiInventoryItem&gt;
    #   * {Types::ListApiInventoryItemsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_api_inventory_items({
    #     filters: {
    #       discovery_source: "API_GATEWAY", # accepts API_GATEWAY, ELB, CLOUDFRONT
    #       resource_arn: "ResourceArn",
    #     },
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].method #=> String, one of "GET", "POST", "PUT", "DELETE", "PATCH", "ANY", "HEAD", "OPTIONS"
    #   resp.items[0].host #=> String
    #   resp.items[0].port #=> Integer
    #   resp.items[0].path #=> String
    #   resp.items[0].account_id #=> String
    #   resp.items[0].resource_arn #=> String
    #   resp.items[0].region #=> String
    #   resp.items[0].discovery_source #=> String, one of "API_GATEWAY", "ELB", "CLOUDFRONT"
    #   resp.items[0].first_seen #=> Time
    #   resp.items[0].last_seen #=> Time
    #   resp.items[0].visibility #=> String, one of "PUBLIC", "PRIVATE"
    #   resp.items[0].waf_status #=> String, one of "ENABLED", "DISABLED"
    #   resp.items[0].classification #=> String, one of "SHADOW", "MANAGED", "MANAGED_ZOMBIE", "MANAGED_ORPHANED"
    #   resp.items[0].managed_by #=> String, one of "SELF", "ORGANIZATION"
    #   resp.items[0].workloads #=> Array
    #   resp.items[0].workloads[0] #=> String, one of "MCP", "LLM", "A2A"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/ListApiInventoryItems AWS API Documentation
    #
    # @overload list_api_inventory_items(params = {})
    # @param [Hash] params ({})
    def list_api_inventory_items(params = {}, options = {})
      req = build_request(:list_api_inventory_items, params)
      req.send_request(options)
    end

    # Lists discovery statuses for services.
    #
    # @option params [String] :discovery_source
    #   The AWS service that is the SOURCE of discovered APIs — i.e. the
    #   front-door service type whose resources discovery crawls to find APIs.
    #   New source services may be added over time, so clients MUST treat any
    #   unrecognized value gracefully.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in one page, from 1 to 100.
    #
    # @option params [String] :next_token
    #   The pagination token returned by a previous call. Omit it to get the
    #   first page.
    #
    # @return [Types::ListDiscoveryStatusesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDiscoveryStatusesResponse#items #items} => Array&lt;Types::DiscoveryStatus&gt;
    #   * {Types::ListDiscoveryStatusesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_discovery_statuses({
    #     discovery_source: "API_GATEWAY", # accepts API_GATEWAY, ELB, CLOUDFRONT
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].account_id #=> String
    #   resp.items[0].discovery_source #=> String, one of "API_GATEWAY", "ELB", "CLOUDFRONT"
    #   resp.items[0].status #=> String, one of "STOPPED", "PROVISIONING", "RUNNING", "FAILED"
    #   resp.items[0].failure_reason #=> String, one of "ACCESS_DENIED", "DEPENDENCY_ERROR", "THROTTLED", "INVALID_CONFIGURATION", "INTERNAL_ERROR"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/ListDiscoveryStatuses AWS API Documentation
    #
    # @overload list_discovery_statuses(params = {})
    # @param [Hash] params ({})
    def list_discovery_statuses(params = {}, options = {})
      req = build_request(:list_discovery_statuses, params)
      req.send_request(options)
    end

    # Lists API-security events for a single managed API, most recent first.
    # Returns up to 20 of the most recent events (not paginated).
    #
    # @option params [required, String] :managed_api_id
    #   The identifier of the Managed API.
    #
    # @option params [Time,DateTime,Date,Integer,String] :started_after
    #   Inclusive lower bound on each event's start time; only events that
    #   started at or after this time are returned. Optional; defaults to 30
    #   days before the current time.
    #
    # @option params [Time,DateTime,Date,Integer,String] :started_before
    #   Exclusive upper bound on each event's start time; only events that
    #   started before this time are returned. Optional; defaults to the
    #   current time.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in one page, from 1 to 20.
    #
    # @option params [String] :next_token
    #   The pagination token returned by a previous call. Omit it to get the
    #   first page.
    #
    # @return [Types::ListManagedApiEventsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListManagedApiEventsResponse#items #items} => Array&lt;Types::ManagedApiEventSummary&gt;
    #   * {Types::ListManagedApiEventsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_managed_api_events({
    #     managed_api_id: "ManagedApiId", # required
    #     started_after: Time.now,
    #     started_before: Time.now,
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].event_id #=> String
    #   resp.items[0].event_type #=> String, one of "WAF_API_SECURITY"
    #   resp.items[0].status #=> String, one of "EVENT_STARTED", "EVENT_IN_PROGRESS", "EVENT_ENDED"
    #   resp.items[0].waf_api_security_event_detail.label #=> String
    #   resp.items[0].waf_api_security_event_detail.category #=> String
    #   resp.items[0].waf_api_security_event_detail.confidence #=> String, one of "LOW", "MEDIUM", "HIGH"
    #   resp.items[0].waf_api_security_event_detail.web_acl_arn #=> String
    #   resp.items[0].started_at #=> Time
    #   resp.items[0].ended_at #=> Time
    #   resp.items[0].updated_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/ListManagedApiEvents AWS API Documentation
    #
    # @overload list_managed_api_events(params = {})
    # @param [Hash] params ({})
    def list_managed_api_events(params = {}, options = {})
      req = build_request(:list_managed_api_events, params)
      req.send_request(options)
    end

    # Lists the Managed APIs in your account.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in one page, from 1 to 100.
    #
    # @option params [String] :next_token
    #   The pagination token returned by a previous call. Omit it to get the
    #   first page.
    #
    # @option params [String] :product_id
    #   Optional filter: when supplied, only Managed APIs associated with this
    #   product are returned.
    #
    # @return [Types::ListManagedApisResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListManagedApisResponse#next_token #next_token} => String
    #   * {Types::ListManagedApisResponse#items #items} => Array&lt;Types::ManagedApiSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_managed_apis({
    #     max_results: 1,
    #     next_token: "NextToken",
    #     product_id: "ProductId",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.items #=> Array
    #   resp.items[0].managed_api_id #=> String
    #   resp.items[0].managed_api_arn #=> String
    #   resp.items[0].api_signature.resource_arn #=> String
    #   resp.items[0].api_signature.method #=> String, one of "GET", "POST", "PUT", "DELETE", "PATCH", "ANY", "HEAD", "OPTIONS"
    #   resp.items[0].api_signature.hostname #=> String
    #   resp.items[0].api_signature.port #=> Integer
    #   resp.items[0].api_signature.path #=> String
    #   resp.items[0].created_at #=> Time
    #   resp.items[0].updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/ListManagedApis AWS API Documentation
    #
    # @overload list_managed_apis(params = {})
    # @param [Hash] params ({})
    def list_managed_apis(params = {}, options = {})
      req = build_request(:list_managed_apis, params)
      req.send_request(options)
    end

    # Lists the portals in your account.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in one page, from 1 to 100.
    #
    # @option params [String] :next_token
    #   The pagination token returned by a previous call. Omit it to get the
    #   first page.
    #
    # @return [Types::ListPortalsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPortalsResponse#items #items} => Array&lt;Types::PortalSummary&gt;
    #   * {Types::ListPortalsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_portals({
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].portal_id #=> String
    #   resp.items[0].portal_arn #=> String
    #   resp.items[0].endpoint_configuration.domain_name #=> String
    #   resp.items[0].endpoint_configuration.certificate_arn #=> String
    #   resp.items[0].endpoint_configuration.portal_domain_hosted_zone_id #=> String
    #   resp.items[0].endpoint_configuration.portal_default_domain_name #=> String
    #   resp.items[0].authorization.authorization_config.cognito_config.user_pool_arn #=> String
    #   resp.items[0].authorization.authorization_config.cognito_config.app_client_id #=> String
    #   resp.items[0].authorization.authorization_config.cognito_config.user_pool_domain #=> String
    #   resp.items[0].authorization.authorization_config.cognito_config.identity_pool_id #=> String
    #   resp.items[0].authorization.fine_grained_access_control #=> String, one of "ENABLED", "DISABLED"
    #   resp.items[0].portal_content.display_name #=> String
    #   resp.items[0].portal_content.description #=> String
    #   resp.items[0].portal_content.theme.custom_colors.background_color #=> String
    #   resp.items[0].portal_content.theme.custom_colors.navigation_color #=> String
    #   resp.items[0].portal_content.theme.custom_colors.header_color #=> String
    #   resp.items[0].portal_content.theme.custom_colors.text_color #=> String
    #   resp.items[0].portal_content.theme.custom_colors.accent_color #=> String
    #   resp.items[0].portal_content.theme.custom_colors.error_validation_color #=> String
    #   resp.items[0].portal_content.theme.logo_uploaded_at #=> Time
    #   resp.items[0].included_product_arns #=> Array
    #   resp.items[0].included_product_arns[0] #=> String
    #   resp.items[0].publish_status #=> String, one of "PUBLISHED", "PUBLISH_IN_PROGRESS", "PUBLISH_FAILED", "DISABLE_IN_PROGRESS", "DISABLE_FAILED", "DISABLED"
    #   resp.items[0].status_exception.exception #=> String, one of "INTERNAL_FAILURE", "UNSHARED_PRODUCT_EXCEPTION", "CLOUDFRONT_DOMAIN_IN_USE", "MISSING_CLOUDFRONT_PERMISSIONS"
    #   resp.items[0].status_exception.message #=> String
    #   resp.items[0].updated_at #=> Time
    #   resp.items[0].published_at #=> Time
    #   resp.items[0].publish_description #=> String
    #   resp.items[0].rum_app_monitor_name #=> String
    #   resp.items[0].preview.preview_status #=> String, one of "PREVIEW_IN_PROGRESS", "PREVIEW_FAILED", "PREVIEW_READY"
    #   resp.items[0].preview.status_exception.exception #=> String, one of "INTERNAL_FAILURE", "UNSHARED_PRODUCT_EXCEPTION", "CLOUDFRONT_DOMAIN_IN_USE", "MISSING_CLOUDFRONT_PERMISSIONS"
    #   resp.items[0].preview.status_exception.message #=> String
    #   resp.items[0].preview.preview_url #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/ListPortals AWS API Documentation
    #
    # @overload list_portals(params = {})
    # @param [Hash] params ({})
    def list_portals(params = {}, options = {})
      req = build_request(:list_portals, params)
      req.send_request(options)
    end

    # Lists the API pages in a product. The results do not include page
    # bodies.
    #
    # @option params [required, String] :product_id
    #   The identifier of the product.
    #
    # @option params [String] :next_token
    #   The pagination token returned by a previous call. Omit it to get the
    #   first page.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in one page, from 1 to 100.
    #
    # @option params [String] :resource_owner_account_id
    #   The AWS account ID that owns the product. Supply it to read a product
    #   shared with you by another account. Omit it for products in your own
    #   account.
    #
    # @return [Types::ListProductApiPagesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListProductApiPagesResponse#next_token #next_token} => String
    #   * {Types::ListProductApiPagesResponse#items #items} => Array&lt;Types::ProductApiPageSummaryNoBody&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_product_api_pages({
    #     product_id: "ProductId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #     resource_owner_account_id: "AccountId",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.items #=> Array
    #   resp.items[0].product_api_page_id #=> String
    #   resp.items[0].product_api_page_arn #=> String
    #   resp.items[0].api_id.identifier_parts.path #=> String
    #   resp.items[0].api_id.identifier_parts.method #=> String
    #   resp.items[0].api_id.identifier_parts.resource_arn #=> String
    #   resp.items[0].operation_name #=> String
    #   resp.items[0].api_url #=> String
    #   resp.items[0].try_it_state #=> String, one of "ENABLED", "DISABLED"
    #   resp.items[0].updated_at #=> Time
    #   resp.items[0].status #=> String, one of "AVAILABLE", "IN_PROGRESS", "FAILED"
    #   resp.items[0].status_exception.exception #=> String, one of "INTERNAL_FAILURE", "RESOURCE_DELETED", "MEMBER_LEFT_ORG"
    #   resp.items[0].status_exception.message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/ListProductApiPages AWS API Documentation
    #
    # @overload list_product_api_pages(params = {})
    # @param [Hash] params ({})
    def list_product_api_pages(params = {}, options = {})
      req = build_request(:list_product_api_pages, params)
      req.send_request(options)
    end

    # Lists the product pages in a product. The results do not include page
    # bodies.
    #
    # @option params [required, String] :product_id
    #   The identifier of the product.
    #
    # @option params [String] :next_token
    #   The pagination token returned by a previous call. Omit it to get the
    #   first page.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in one page, from 1 to 100.
    #
    # @option params [String] :resource_owner_account_id
    #   The AWS account ID that owns the product. Supply it to read a product
    #   shared with you by another account. Omit it for products in your own
    #   account.
    #
    # @return [Types::ListProductPagesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListProductPagesResponse#next_token #next_token} => String
    #   * {Types::ListProductPagesResponse#items #items} => Array&lt;Types::ProductPageSummaryNoBody&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_product_pages({
    #     product_id: "ProductId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #     resource_owner_account_id: "AccountId",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.items #=> Array
    #   resp.items[0].product_page_id #=> String
    #   resp.items[0].product_page_arn #=> String
    #   resp.items[0].page_title #=> String
    #   resp.items[0].updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/ListProductPages AWS API Documentation
    #
    # @overload list_product_pages(params = {})
    # @param [Hash] params ({})
    def list_product_pages(params = {}, options = {})
      req = build_request(:list_product_pages, params)
      req.send_request(options)
    end

    # Lists products you own, products shared with you, or both.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in one page, from 1 to 100.
    #
    # @option params [String] :next_token
    #   The pagination token returned by a previous call. Omit it to get the
    #   first page.
    #
    # @option params [String] :resource_owner
    #   Whose products to return: `SELF` for your own, `OTHER_ACCOUNTS` for
    #   products shared with you, or `ALL`. Defaults to `ALL`, or to `SELF`
    #   when `managedApiId` is supplied.
    #
    # @option params [String] :managed_api_id
    #   Optional filter: when supplied, only Products this Managed API is
    #   associated with are returned.
    #
    # @return [Types::ListProductsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListProductsResponse#next_token #next_token} => String
    #   * {Types::ListProductsResponse#items #items} => Array&lt;Types::ProductSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_products({
    #     max_results: 1,
    #     next_token: "NextToken",
    #     resource_owner: "ALL", # accepts ALL, SELF, OTHER_ACCOUNTS
    #     managed_api_id: "ManagedApiId",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.items #=> Array
    #   resp.items[0].product_id #=> String
    #   resp.items[0].product_arn #=> String
    #   resp.items[0].display_name #=> String
    #   resp.items[0].description #=> String
    #   resp.items[0].updated_at #=> Time
    #   resp.items[0].api_selection_configuration.api_selection_mode #=> String, one of "CUSTOM", "RULE_BASED"
    #   resp.items[0].api_selection_configuration.rule_filters #=> Array
    #   resp.items[0].api_selection_configuration.rule_filters[0].key #=> String, one of "RESOURCE_ARN", "HOST", "METHOD", "PATH", "PORT", "ACCOUNT"
    #   resp.items[0].api_selection_configuration.rule_filters[0].values #=> Array
    #   resp.items[0].api_selection_configuration.rule_filters[0].values[0] #=> String
    #   resp.items[0].status #=> String, one of "ACTIVE", "IN_PROGRESS", "FAILED"
    #   resp.items[0].failure_reason #=> String, one of "API_PAGE_ATTACHED", "EVALUATION_ERROR"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/ListProducts AWS API Documentation
    #
    # @overload list_products(params = {})
    # @param [Hash] params ({})
    def list_products(params = {}, options = {})
      req = build_request(:list_products, params)
      req.send_request(options)
    end

    # Lists the tags for an API Portal resource. One of the three basic
    # tagging operations generated for Tagris integration
    # (ListTagsForResource / TagResource / UntagResource).
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "ResourceArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Creates or updates the discovery configuration
    #
    # @option params [Array<String>] :discovery_sources
    #   The sources to discover APIs from. Omitting it removes all sources,
    #   which stops discovery for this configuration.
    #
    # @option params [Array<String>] :excluded_resources
    #   The ARNs of resources to leave out of discovery, up to 50.
    #
    # @option params [Array<String>] :features
    #   Optional capabilities to enable. Omitting it disables all of them, as
    #   with the other fields.
    #
    # @option params [Hash<String,String>] :tags
    #   Up to 50 tags per request, matching API Gateway's limit of 50 tags
    #   per resource.
    #
    # @return [Types::PutDiscoveryConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutDiscoveryConfigurationResponse#discovery_configuration #discovery_configuration} => Types::DiscoveryConfigurationData
    #   * {Types::PutDiscoveryConfigurationResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_discovery_configuration({
    #     discovery_sources: ["API_GATEWAY"], # accepts API_GATEWAY, ELB, CLOUDFRONT
    #     excluded_resources: ["ResourceArn"],
    #     features: ["AI_DISCOVERY"], # accepts AI_DISCOVERY
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.discovery_configuration.arn #=> String
    #   resp.discovery_configuration.status #=> String, one of "DISABLED", "ENABLED", "UPDATING"
    #   resp.discovery_configuration.discovery_sources #=> Array
    #   resp.discovery_configuration.discovery_sources[0] #=> String, one of "API_GATEWAY", "ELB", "CLOUDFRONT"
    #   resp.discovery_configuration.excluded_resources #=> Array
    #   resp.discovery_configuration.excluded_resources[0] #=> String
    #   resp.discovery_configuration.features #=> Array
    #   resp.discovery_configuration.features[0] #=> String, one of "AI_DISCOVERY"
    #   resp.discovery_configuration.created_at #=> Time
    #   resp.discovery_configuration.updated_at #=> Time
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/PutDiscoveryConfiguration AWS API Documentation
    #
    # @overload put_discovery_configuration(params = {})
    # @param [Hash] params ({})
    def put_discovery_configuration(params = {}, options = {})
      req = build_request(:put_discovery_configuration, params)
      req.send_request(options)
    end

    # Creates or updates the organization-wide discovery configuration. This
    # is a singleton per organization. Only the organization management
    # account and registered delegated administrators may call this
    # operation.
    #
    # @option params [Array<String>] :discovery_sources
    #   The sources to discover APIs from. Omitting it removes all sources,
    #   which stops discovery for this configuration.
    #
    # @option params [Types::DiscoveryExclusionFilters] :exclusion_filters
    #   Exclusion filters for organization-scoped discovery. @deprecated.
    #   Remove this once client (Console) moves to discoveryFilters
    #
    # @option params [Types::OrganizationDiscoveryFilters] :discovery_filters
    #   The accounts or organizational units to include in or exclude from
    #   discovery.
    #
    # @option params [Array<String>] :features
    #   Optional capabilities to enable. Omitting it disables all of them, as
    #   with the other fields.
    #
    # @option params [Hash<String,String>] :tags
    #   Up to 50 tags per request, matching API Gateway's limit of 50 tags
    #   per resource.
    #
    # @return [Types::PutOrganizationDiscoveryConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutOrganizationDiscoveryConfigurationResponse#discovery_configuration #discovery_configuration} => Types::OrganizationDiscoveryConfigurationData
    #   * {Types::PutOrganizationDiscoveryConfigurationResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_organization_discovery_configuration({
    #     discovery_sources: ["API_GATEWAY"], # accepts API_GATEWAY, ELB, CLOUDFRONT
    #     exclusion_filters: {
    #       organizational_unit_ids: ["OrganizationalUnitId"],
    #       account_ids: ["AccountId"],
    #       resource_arns: ["ResourceArn"],
    #     },
    #     discovery_filters: {
    #       exclusion_filters: {
    #         organizational_unit_ids: ["OrganizationalUnitId"],
    #         account_ids: ["AccountId"],
    #         resource_arns: ["ResourceArn"],
    #       },
    #       inclusion_filters: {
    #         organizational_unit_ids: ["OrganizationalUnitId"],
    #         account_ids: ["AccountId"],
    #       },
    #     },
    #     features: ["AI_DISCOVERY"], # accepts AI_DISCOVERY
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.discovery_configuration.arn #=> String
    #   resp.discovery_configuration.status #=> String, one of "DISABLED", "ENABLED", "UPDATING"
    #   resp.discovery_configuration.discovery_sources #=> Array
    #   resp.discovery_configuration.discovery_sources[0] #=> String, one of "API_GATEWAY", "ELB", "CLOUDFRONT"
    #   resp.discovery_configuration.exclusion_filters.organizational_unit_ids #=> Array
    #   resp.discovery_configuration.exclusion_filters.organizational_unit_ids[0] #=> String
    #   resp.discovery_configuration.exclusion_filters.account_ids #=> Array
    #   resp.discovery_configuration.exclusion_filters.account_ids[0] #=> String
    #   resp.discovery_configuration.exclusion_filters.resource_arns #=> Array
    #   resp.discovery_configuration.exclusion_filters.resource_arns[0] #=> String
    #   resp.discovery_configuration.discovery_filters.exclusion_filters.organizational_unit_ids #=> Array
    #   resp.discovery_configuration.discovery_filters.exclusion_filters.organizational_unit_ids[0] #=> String
    #   resp.discovery_configuration.discovery_filters.exclusion_filters.account_ids #=> Array
    #   resp.discovery_configuration.discovery_filters.exclusion_filters.account_ids[0] #=> String
    #   resp.discovery_configuration.discovery_filters.exclusion_filters.resource_arns #=> Array
    #   resp.discovery_configuration.discovery_filters.exclusion_filters.resource_arns[0] #=> String
    #   resp.discovery_configuration.discovery_filters.inclusion_filters.organizational_unit_ids #=> Array
    #   resp.discovery_configuration.discovery_filters.inclusion_filters.organizational_unit_ids[0] #=> String
    #   resp.discovery_configuration.discovery_filters.inclusion_filters.account_ids #=> Array
    #   resp.discovery_configuration.discovery_filters.inclusion_filters.account_ids[0] #=> String
    #   resp.discovery_configuration.features #=> Array
    #   resp.discovery_configuration.features[0] #=> String, one of "AI_DISCOVERY"
    #   resp.discovery_configuration.created_at #=> Time
    #   resp.discovery_configuration.updated_at #=> Time
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/PutOrganizationDiscoveryConfiguration AWS API Documentation
    #
    # @overload put_organization_discovery_configuration(params = {})
    # @param [Hash] params ({})
    def put_organization_discovery_configuration(params = {}, options = {})
      req = build_request(:put_organization_discovery_configuration, params)
      req.send_request(options)
    end

    # Creates or replaces the sharing policy of a product. The policy
    # controls which other accounts can read the product.
    #
    # @option params [required, String] :product_id
    #   The identifier of the product.
    #
    # @option params [required, String] :policy_document
    #   The sharing policy as a JSON resource policy document.
    #
    # @option params [Hash<String,String>] :tags
    #   Up to 50 tags per request, matching API Gateway's limit of 50 tags
    #   per resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_product_sharing_policy({
    #     product_id: "ProductId", # required
    #     policy_document: "PolicyDocument", # required
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/PutProductSharingPolicy AWS API Documentation
    #
    # @overload put_product_sharing_policy(params = {})
    # @param [Hash] params ({})
    def put_product_sharing_policy(params = {}, options = {})
      req = build_request(:put_product_sharing_policy, params)
      req.send_request(options)
    end

    # Starts the API discovery process.
    #
    # @option params [required, String] :id
    #   Identifier of the discovery configuration to start. Required. Today
    #   this is the configuration ARN, which carries the owner account id so a
    #   delegated admin or org admin can start an org-scoped configuration
    #   that lives in a different account.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_discovery({
    #     id: "StringWithLengthBetween1And1600", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/StartDiscovery AWS API Documentation
    #
    # @overload start_discovery(params = {})
    # @param [Hash] params ({})
    def start_discovery(params = {}, options = {})
      req = build_request(:start_discovery, params)
      req.send_request(options)
    end

    # Stops the running API discovery process.
    #
    # @option params [required, String] :id
    #   Identifier of the discovery configuration to stop. Required. Today
    #   this is the configuration ARN, which carries the owner account id so a
    #   delegated admin or org admin can stop an org-scoped configuration that
    #   lives in a different account.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_discovery({
    #     id: "StringWithLengthBetween1And1600", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/StopDiscovery AWS API Documentation
    #
    # @overload stop_discovery(params = {})
    # @param [Hash] params ({})
    def stop_discovery(params = {}, options = {})
      req = build_request(:stop_discovery, params)
      req.send_request(options)
    end

    # Adds or updates tags on an API Portal resource. One of the three basic
    # tagging operations generated for Tagris integration
    # (ListTagsForResource / TagResource / UntagResource).
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource.
    #
    # @option params [required, Hash<String,String>] :tags
    #   Up to 50 tags per request, matching API Gateway's limit of 50 tags
    #   per resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "ResourceArn", # required
    #     tags: { # required
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes tags from an API Portal resource. One of the three basic
    # tagging operations generated for Tagris integration
    # (ListTagsForResource / TagResource / UntagResource).
    #
    # tagKeys is a query string parameter: for tag-based access control
    # (TBAC/ABAC) to work correctly, API Gateway requires the keys to be
    # removed to be passed as a query string parameter.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The keys of the tags to remove, up to 50.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates a portal. Only the fields supplied in the request are changed.
    #
    # @option params [required, String] :portal_id
    #   The identifier of the portal.
    #
    # @option params [Types::PortalContent] :portal_content
    #   The new display name, description, and theme. Omit it to keep the
    #   current values.
    #
    # @option params [Types::EndpointConfigurationRequest] :endpoint_configuration
    #   Exactly one of the members is set: `none` for no custom domain, or
    #   `acmManaged` to bring a domain + ACM certificate. Modeled as a union
    #   so the "exactly one" choice is enforced by type.
    #
    # @option params [Types::Authorization] :authorization
    #   The new authorization settings. Omit it to keep the current settings.
    #
    # @option params [String] :rum_app_monitor_name
    #   The new CloudWatch RUM app monitor name. Omit it to keep the current
    #   value.
    #
    # @option params [Array<String>] :included_product_arns
    #   The new list of product ARNs, up to 200. It replaces the current list.
    #   Omit it to keep the current list.
    #
    # @option params [String] :logo_uri
    #   The new S3 location of the portal logo, in the form `s3://bucket/key`.
    #   An empty string removes the logo. Omit it to keep the current logo.
    #
    # @return [Types::UpdatePortalResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdatePortalResponse#portal_id #portal_id} => String
    #   * {Types::UpdatePortalResponse#portal_arn #portal_arn} => String
    #   * {Types::UpdatePortalResponse#endpoint_configuration #endpoint_configuration} => Types::EndpointConfigurationResponse
    #   * {Types::UpdatePortalResponse#authorization #authorization} => Types::Authorization
    #   * {Types::UpdatePortalResponse#portal_content #portal_content} => Types::PortalContent
    #   * {Types::UpdatePortalResponse#included_product_arns #included_product_arns} => Array&lt;String&gt;
    #   * {Types::UpdatePortalResponse#publish_status #publish_status} => String
    #   * {Types::UpdatePortalResponse#status_exception #status_exception} => Types::PortalStatusException
    #   * {Types::UpdatePortalResponse#updated_at #updated_at} => Time
    #   * {Types::UpdatePortalResponse#published_at #published_at} => Time
    #   * {Types::UpdatePortalResponse#publish_description #publish_description} => String
    #   * {Types::UpdatePortalResponse#rum_app_monitor_name #rum_app_monitor_name} => String
    #   * {Types::UpdatePortalResponse#preview #preview} => Types::Preview
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_portal({
    #     portal_id: "PortalId", # required
    #     portal_content: {
    #       display_name: "PortalName", # required
    #       description: "PortalDescription",
    #       theme: { # required
    #         custom_colors: { # required
    #           background_color: "Color", # required
    #           navigation_color: "Color", # required
    #           header_color: "Color", # required
    #           text_color: "Color", # required
    #           accent_color: "Color", # required
    #           error_validation_color: "Color", # required
    #         },
    #         logo_uploaded_at: Time.now,
    #       },
    #     },
    #     endpoint_configuration: {
    #       none: {
    #       },
    #       acm_managed: {
    #         domain_name: "PortalDomainName", # required
    #         certificate_arn: "CertificateArn", # required
    #       },
    #     },
    #     authorization: {
    #       authorization_config: { # required
    #         none: {
    #         },
    #         cognito_config: {
    #           user_pool_arn: "UserPoolArn", # required
    #           app_client_id: "AppClientId", # required
    #           user_pool_domain: "UserPoolDomain", # required
    #           identity_pool_id: "IdentityPoolId",
    #         },
    #       },
    #       fine_grained_access_control: "ENABLED", # required, accepts ENABLED, DISABLED
    #     },
    #     rum_app_monitor_name: "RUMAppMonitorName",
    #     included_product_arns: ["ProductArn"],
    #     logo_uri: "LogoUri",
    #   })
    #
    # @example Response structure
    #
    #   resp.portal_id #=> String
    #   resp.portal_arn #=> String
    #   resp.endpoint_configuration.domain_name #=> String
    #   resp.endpoint_configuration.certificate_arn #=> String
    #   resp.endpoint_configuration.portal_domain_hosted_zone_id #=> String
    #   resp.endpoint_configuration.portal_default_domain_name #=> String
    #   resp.authorization.authorization_config.cognito_config.user_pool_arn #=> String
    #   resp.authorization.authorization_config.cognito_config.app_client_id #=> String
    #   resp.authorization.authorization_config.cognito_config.user_pool_domain #=> String
    #   resp.authorization.authorization_config.cognito_config.identity_pool_id #=> String
    #   resp.authorization.fine_grained_access_control #=> String, one of "ENABLED", "DISABLED"
    #   resp.portal_content.display_name #=> String
    #   resp.portal_content.description #=> String
    #   resp.portal_content.theme.custom_colors.background_color #=> String
    #   resp.portal_content.theme.custom_colors.navigation_color #=> String
    #   resp.portal_content.theme.custom_colors.header_color #=> String
    #   resp.portal_content.theme.custom_colors.text_color #=> String
    #   resp.portal_content.theme.custom_colors.accent_color #=> String
    #   resp.portal_content.theme.custom_colors.error_validation_color #=> String
    #   resp.portal_content.theme.logo_uploaded_at #=> Time
    #   resp.included_product_arns #=> Array
    #   resp.included_product_arns[0] #=> String
    #   resp.publish_status #=> String, one of "PUBLISHED", "PUBLISH_IN_PROGRESS", "PUBLISH_FAILED", "DISABLE_IN_PROGRESS", "DISABLE_FAILED", "DISABLED"
    #   resp.status_exception.exception #=> String, one of "INTERNAL_FAILURE", "UNSHARED_PRODUCT_EXCEPTION", "CLOUDFRONT_DOMAIN_IN_USE", "MISSING_CLOUDFRONT_PERMISSIONS"
    #   resp.status_exception.message #=> String
    #   resp.updated_at #=> Time
    #   resp.published_at #=> Time
    #   resp.publish_description #=> String
    #   resp.rum_app_monitor_name #=> String
    #   resp.preview.preview_status #=> String, one of "PREVIEW_IN_PROGRESS", "PREVIEW_FAILED", "PREVIEW_READY"
    #   resp.preview.status_exception.exception #=> String, one of "INTERNAL_FAILURE", "UNSHARED_PRODUCT_EXCEPTION", "CLOUDFRONT_DOMAIN_IN_USE", "MISSING_CLOUDFRONT_PERMISSIONS"
    #   resp.preview.status_exception.message #=> String
    #   resp.preview.preview_url #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/UpdatePortal AWS API Documentation
    #
    # @overload update_portal(params = {})
    # @param [Hash] params ({})
    def update_portal(params = {}, options = {})
      req = build_request(:update_portal, params)
      req.send_request(options)
    end

    # Publishes or disables a portal. The change runs asynchronously. Use
    # GetPortal to track `publishStatus`.
    #
    # @option params [required, String] :portal_id
    #   The identifier of the portal.
    #
    # @option params [required, String] :status
    #   The terminal publish state a caller can request for a portal via
    #   UpdatePortalPublishStatus. Only the two client-requestable targets are
    #   modeled here; the transient and failed states in PublishStatus are set
    #   by the service and are not valid caller input.
    #
    # @option params [String] :description
    #   A description of this publish request, up to 1024 characters.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_portal_publish_status({
    #     portal_id: "PortalId", # required
    #     status: "PUBLISHED", # required, accepts PUBLISHED, DISABLED
    #     description: "PublishDescription",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/UpdatePortalPublishStatus AWS API Documentation
    #
    # @overload update_portal_publish_status(params = {})
    # @param [Hash] params ({})
    def update_portal_publish_status(params = {}, options = {})
      req = build_request(:update_portal_publish_status, params)
      req.send_request(options)
    end

    # Updates a product. Only the fields supplied in the request are
    # changed.
    #
    # @option params [required, String] :product_id
    #   The identifier of the product.
    #
    # @option params [String] :display_name
    #   The new name of the product. Omit it to keep the current name.
    #
    # @option params [String] :description
    #   The new description of the product. Omit it to keep the current
    #   description.
    #
    # @option params [Types::DisplayOrder] :display_order
    #   The new page order. Omit it to keep the current order.
    #
    # @option params [Types::ApiSelectionConfiguration] :api_selection_configuration
    #   The new API selection settings. The selection mode must match the mode
    #   the product was created with. Omit it to keep the current settings.
    #
    # @return [Types::UpdateProductResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateProductResponse#product_id #product_id} => String
    #   * {Types::UpdateProductResponse#product_arn #product_arn} => String
    #   * {Types::UpdateProductResponse#display_name #display_name} => String
    #   * {Types::UpdateProductResponse#display_order #display_order} => Types::DisplayOrder
    #   * {Types::UpdateProductResponse#description #description} => String
    #   * {Types::UpdateProductResponse#updated_at #updated_at} => Time
    #   * {Types::UpdateProductResponse#api_selection_configuration #api_selection_configuration} => Types::ApiSelectionConfiguration
    #   * {Types::UpdateProductResponse#status #status} => String
    #   * {Types::UpdateProductResponse#failure_reason #failure_reason} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_product({
    #     product_id: "ProductId", # required
    #     display_name: "ProductName",
    #     description: "ProductDescription",
    #     display_order: {
    #       overview_page_arn: "ProductPageArn",
    #       product_page_arns: ["ProductPageArn"],
    #       contents: [
    #         {
    #           section_name: "SectionSectionNameString",
    #           product_api_page_arns: ["ProductApiPageArn"],
    #         },
    #       ],
    #     },
    #     api_selection_configuration: {
    #       api_selection_mode: "CUSTOM", # required, accepts CUSTOM, RULE_BASED
    #       rule_filters: [
    #         {
    #           key: "RESOURCE_ARN", # required, accepts RESOURCE_ARN, HOST, METHOD, PATH, PORT, ACCOUNT
    #           values: ["RuleFilterValue"], # required
    #         },
    #       ],
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.product_id #=> String
    #   resp.product_arn #=> String
    #   resp.display_name #=> String
    #   resp.display_order.overview_page_arn #=> String
    #   resp.display_order.product_page_arns #=> Array
    #   resp.display_order.product_page_arns[0] #=> String
    #   resp.display_order.contents #=> Array
    #   resp.display_order.contents[0].section_name #=> String
    #   resp.display_order.contents[0].product_api_page_arns #=> Array
    #   resp.display_order.contents[0].product_api_page_arns[0] #=> String
    #   resp.description #=> String
    #   resp.updated_at #=> Time
    #   resp.api_selection_configuration.api_selection_mode #=> String, one of "CUSTOM", "RULE_BASED"
    #   resp.api_selection_configuration.rule_filters #=> Array
    #   resp.api_selection_configuration.rule_filters[0].key #=> String, one of "RESOURCE_ARN", "HOST", "METHOD", "PATH", "PORT", "ACCOUNT"
    #   resp.api_selection_configuration.rule_filters[0].values #=> Array
    #   resp.api_selection_configuration.rule_filters[0].values[0] #=> String
    #   resp.status #=> String, one of "ACTIVE", "IN_PROGRESS", "FAILED"
    #   resp.failure_reason #=> String, one of "API_PAGE_ATTACHED", "EVALUATION_ERROR"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/UpdateProduct AWS API Documentation
    #
    # @overload update_product(params = {})
    # @param [Hash] params ({})
    def update_product(params = {}, options = {})
      req = build_request(:update_product, params)
      req.send_request(options)
    end

    # Updates an API page. Only the fields supplied in the request are
    # changed.
    #
    # @option params [required, String] :product_id
    #   The identifier of the product.
    #
    # @option params [required, String] :product_api_page_id
    #   The identifier of the API page.
    #
    # @option params [Types::ApiPageDisplayContent] :display_content
    #   Exactly one of the members is set: `none` to use default display
    #   content, or `overrides` to customize it. Modeled as a union so the
    #   "exactly one" choice is enforced by type.
    #
    # @option params [String] :try_it_state
    #   The new Try-It setting. Omit it to keep the current setting. To enable
    #   it, the page's API URL must use HTTPS on a domain that supports
    #   Try-It.
    #
    # @return [Types::UpdateProductApiPageResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateProductApiPageResponse#product_api_page_id #product_api_page_id} => String
    #   * {Types::UpdateProductApiPageResponse#product_api_page_arn #product_api_page_arn} => String
    #   * {Types::UpdateProductApiPageResponse#api_id #api_id} => Types::ApiId
    #   * {Types::UpdateProductApiPageResponse#display_content #display_content} => Types::ApiPageDisplayContentResponse
    #   * {Types::UpdateProductApiPageResponse#try_it_state #try_it_state} => String
    #   * {Types::UpdateProductApiPageResponse#updated_at #updated_at} => Time
    #   * {Types::UpdateProductApiPageResponse#status #status} => String
    #   * {Types::UpdateProductApiPageResponse#status_exception #status_exception} => Types::ProductApiPageStatusException
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_product_api_page({
    #     product_id: "ProductId", # required
    #     product_api_page_id: "ProductApiPageId", # required
    #     display_content: {
    #       none: {
    #       },
    #       overrides: {
    #         operation_name: "OperationName",
    #         api_url: "DisplayContentOverridesApiUrlString",
    #         body: "ApiPageBody",
    #       },
    #     },
    #     try_it_state: "ENABLED", # accepts ENABLED, DISABLED
    #   })
    #
    # @example Response structure
    #
    #   resp.product_api_page_id #=> String
    #   resp.product_api_page_arn #=> String
    #   resp.api_id.identifier_parts.path #=> String
    #   resp.api_id.identifier_parts.method #=> String
    #   resp.api_id.identifier_parts.resource_arn #=> String
    #   resp.display_content.operation_name #=> String
    #   resp.display_content.api_url #=> String
    #   resp.display_content.body #=> String
    #   resp.try_it_state #=> String, one of "ENABLED", "DISABLED"
    #   resp.updated_at #=> Time
    #   resp.status #=> String, one of "AVAILABLE", "IN_PROGRESS", "FAILED"
    #   resp.status_exception.exception #=> String, one of "INTERNAL_FAILURE", "RESOURCE_DELETED", "MEMBER_LEFT_ORG"
    #   resp.status_exception.message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/UpdateProductApiPage AWS API Documentation
    #
    # @overload update_product_api_page(params = {})
    # @param [Hash] params ({})
    def update_product_api_page(params = {}, options = {})
      req = build_request(:update_product_api_page, params)
      req.send_request(options)
    end

    # Updates a product page.
    #
    # @option params [required, String] :product_id
    #   The identifier of the product.
    #
    # @option params [required, String] :product_page_id
    #   The identifier of the product page.
    #
    # @option params [Types::DisplayContent] :display_content
    #   The new title and body of the page. Omit it to keep the current
    #   content.
    #
    # @return [Types::UpdateProductPageResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateProductPageResponse#product_page_id #product_page_id} => String
    #   * {Types::UpdateProductPageResponse#product_page_arn #product_page_arn} => String
    #   * {Types::UpdateProductPageResponse#display_content #display_content} => Types::DisplayContent
    #   * {Types::UpdateProductPageResponse#updated_at #updated_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_product_page({
    #     product_id: "ProductId", # required
    #     product_page_id: "ProductPageId", # required
    #     display_content: {
    #       title: "PageTitle", # required
    #       body: "PageBody", # required
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.product_page_id #=> String
    #   resp.product_page_arn #=> String
    #   resp.display_content.title #=> String
    #   resp.display_content.body #=> String
    #   resp.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apiportal-2026-04-30/UpdateProductPage AWS API Documentation
    #
    # @overload update_product_page(params = {})
    # @param [Hash] params ({})
    def update_product_page(params = {}, options = {})
      req = build_request(:update_product_page, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::APIPortal')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-apiportal'
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
