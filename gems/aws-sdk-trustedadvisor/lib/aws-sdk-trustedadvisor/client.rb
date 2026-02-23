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

module Aws::TrustedAdvisor
  # An API client for TrustedAdvisor.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::TrustedAdvisor::Client.new(
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

    @identifier = :trustedadvisor

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
    add_plugin(Aws::TrustedAdvisor::Plugins::Endpoints)

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
    #   @option options [Aws::TrustedAdvisor::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::TrustedAdvisor::EndpointParameters`.
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

    # Update one or more exclusion statuses for a list of recommendation
    # resources. This API supports up to 25 unique recommendation resource
    # ARNs per request. This API currently doesn't support prioritized
    # recommendation resources. This API updates global recommendations,
    # eliminating the need to call the API in each AWS Region. After
    # submitting an exclusion update, note that it might take a few minutes
    # for the changes to be reflected in the system.
    #
    # @option params [required, Array<Types::RecommendationResourceExclusion>] :recommendation_resource_exclusions
    #   A list of recommendation resource ARNs and exclusion status to update
    #
    # @return [Types::BatchUpdateRecommendationResourceExclusionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchUpdateRecommendationResourceExclusionResponse#batch_update_recommendation_resource_exclusion_errors #batch_update_recommendation_resource_exclusion_errors} => Array&lt;Types::UpdateRecommendationResourceExclusionError&gt;
    #
    #
    # @example Example: Batch updates the exclusion status for a list of recommendation resources
    #
    #   resp = client.batch_update_recommendation_resource_exclusion({
    #     recommendation_resource_exclusions: [
    #       {
    #         arn: "arn:aws:trustedadvisor::000000000000:recommendation-resource/55fa4d2e-bbb7-491a-833b-5773e9589578/18959a1f1973cff8e706e9d9bde28bba36cd602a6b2cb86c8b61252835236010", 
    #         is_excluded: true, 
    #       }, 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     batch_update_recommendation_resource_exclusion_errors: [
    #       {
    #         arn: "arn:aws:trustedadvisor::000000000000:recommendation-resource/55fa4d2e-bbb7-491a-833b-5773e9589578/18959a1f1973cff8e706e9d9bde28bba36cd602a6b2cb86c8b61252835236010", 
    #         error_code: "404", 
    #         error_message: "Exception that the requested resource has not been found", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_update_recommendation_resource_exclusion({
    #     recommendation_resource_exclusions: [ # required
    #       {
    #         arn: "RecommendationResourceArn", # required
    #         is_excluded: false, # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.batch_update_recommendation_resource_exclusion_errors #=> Array
    #   resp.batch_update_recommendation_resource_exclusion_errors[0].arn #=> String
    #   resp.batch_update_recommendation_resource_exclusion_errors[0].error_code #=> String
    #   resp.batch_update_recommendation_resource_exclusion_errors[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/trustedadvisor-2022-09-15/BatchUpdateRecommendationResourceExclusion AWS API Documentation
    #
    # @overload batch_update_recommendation_resource_exclusion(params = {})
    # @param [Hash] params ({})
    def batch_update_recommendation_resource_exclusion(params = {}, options = {})
      req = build_request(:batch_update_recommendation_resource_exclusion, params)
      req.send_request(options)
    end

    # Get a specific recommendation within an AWS Organizations
    # organization. This API supports only prioritized recommendations and
    # provides global priority recommendations, eliminating the need to call
    # the API in each AWS Region.
    #
    # @option params [required, String] :organization_recommendation_identifier
    #   The Recommendation identifier
    #
    # @return [Types::GetOrganizationRecommendationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetOrganizationRecommendationResponse#organization_recommendation #organization_recommendation} => Types::OrganizationRecommendation
    #
    #
    # @example Example: Get an AWS Organization's Recommendation by ARN
    #
    #   resp = client.get_organization_recommendation({
    #     organization_recommendation_identifier: "arn:aws:trustedadvisor:::organization-recommendation/9534ec9b-bf3a-44e8-8213-2ed68b39d9d5", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     organization_recommendation: {
    #       name: "Lambda Runtime Deprecation Warning", 
    #       type: "priority", 
    #       arn: "arn:aws:trustedadvisor:::organization-recommendation/9534ec9b-bf3a-44e8-8213-2ed68b39d9d5", 
    #       aws_services: [
    #         "lambda", 
    #       ], 
    #       check_arn: "arn:aws:trustedadvisor:::check/L4dfs2Q4C5", 
    #       description: "One or more lambdas are using a deprecated runtime", 
    #       id: "9534ec9b-bf3a-44e8-8213-2ed68b39d9d5", 
    #       lifecycle_stage: "resolved", 
    #       pillars: [
    #         "security", 
    #       ], 
    #       resources_aggregates: {
    #         error_count: 0, 
    #         ok_count: 0, 
    #         warning_count: 0, 
    #       }, 
    #       source: "ta_check", 
    #       status: "warning", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_organization_recommendation({
    #     organization_recommendation_identifier: "OrganizationRecommendationIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.organization_recommendation.id #=> String
    #   resp.organization_recommendation.type #=> String, one of "standard", "priority"
    #   resp.organization_recommendation.check_arn #=> String
    #   resp.organization_recommendation.status #=> String, one of "ok", "warning", "error"
    #   resp.organization_recommendation.lifecycle_stage #=> String, one of "in_progress", "pending_response", "dismissed", "resolved"
    #   resp.organization_recommendation.pillars #=> Array
    #   resp.organization_recommendation.pillars[0] #=> String, one of "cost_optimizing", "performance", "security", "service_limits", "fault_tolerance", "operational_excellence"
    #   resp.organization_recommendation.source #=> String, one of "aws_config", "compute_optimizer", "cost_explorer", "lse", "manual", "pse", "rds", "resilience", "resilience_hub", "security_hub", "stir", "ta_check", "well_architected", "cost_optimization_hub"
    #   resp.organization_recommendation.aws_services #=> Array
    #   resp.organization_recommendation.aws_services[0] #=> String
    #   resp.organization_recommendation.name #=> String
    #   resp.organization_recommendation.resources_aggregates.ok_count #=> Integer
    #   resp.organization_recommendation.resources_aggregates.warning_count #=> Integer
    #   resp.organization_recommendation.resources_aggregates.error_count #=> Integer
    #   resp.organization_recommendation.resources_aggregates.excluded_count #=> Integer
    #   resp.organization_recommendation.pillar_specific_aggregates.cost_optimizing.estimated_monthly_savings #=> Float
    #   resp.organization_recommendation.pillar_specific_aggregates.cost_optimizing.estimated_percent_monthly_savings #=> Float
    #   resp.organization_recommendation.created_at #=> Time
    #   resp.organization_recommendation.last_updated_at #=> Time
    #   resp.organization_recommendation.arn #=> String
    #   resp.organization_recommendation.description #=> String
    #   resp.organization_recommendation.created_by #=> String
    #   resp.organization_recommendation.updated_on_behalf_of #=> String
    #   resp.organization_recommendation.updated_on_behalf_of_job_title #=> String
    #   resp.organization_recommendation.update_reason #=> String
    #   resp.organization_recommendation.update_reason_code #=> String, one of "non_critical_account", "temporary_account", "valid_business_case", "other_methods_available", "low_priority", "not_applicable", "other"
    #   resp.organization_recommendation.resolved_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/trustedadvisor-2022-09-15/GetOrganizationRecommendation AWS API Documentation
    #
    # @overload get_organization_recommendation(params = {})
    # @param [Hash] params ({})
    def get_organization_recommendation(params = {}, options = {})
      req = build_request(:get_organization_recommendation, params)
      req.send_request(options)
    end

    # Get a specific Recommendation. This API provides global
    # recommendations, eliminating the need to call the API in each AWS
    # Region.
    #
    # @option params [required, String] :recommendation_identifier
    #   The Recommendation identifier
    #
    # @option params [String] :language
    #   The ISO 639-1 code for the language that you want your recommendations
    #   to appear in.
    #
    # @return [Types::GetRecommendationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetRecommendationResponse#recommendation #recommendation} => Types::Recommendation
    #
    #
    # @example Example: Get a Recommendation by ARN
    #
    #   resp = client.get_recommendation({
    #     recommendation_identifier: "arn:aws:trustedadvisor::000000000000:recommendation/55fa4d2e-bbb7-491a-833b-5773e9589578", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     recommendation: {
    #       name: "MFA Recommendation", 
    #       type: "standard", 
    #       arn: "arn:aws:trustedadvisor::000000000000:recommendation/55fa4d2e-bbb7-491a-833b-5773e9589578", 
    #       aws_services: [
    #         "iam", 
    #       ], 
    #       check_arn: "arn:aws:trustedadvisor:::check/7DAFEmoDos", 
    #       description: "Enable multi-factor authentication", 
    #       id: "55fa4d2e-bbb7-491a-833b-5773e9589578", 
    #       last_updated_at: Time.parse("2023-11-01T15:57:58.673Z"), 
    #       pillar_specific_aggregates: {
    #         cost_optimizing: {
    #           estimated_monthly_savings: 0.0, 
    #           estimated_percent_monthly_savings: 0.0, 
    #         }, 
    #       }, 
    #       pillars: [
    #         "security", 
    #       ], 
    #       resources_aggregates: {
    #         error_count: 1, 
    #         ok_count: 0, 
    #         warning_count: 0, 
    #       }, 
    #       source: "ta_check", 
    #       status: "error", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_recommendation({
    #     recommendation_identifier: "AccountRecommendationIdentifier", # required
    #     language: "en", # accepts en, ja, zh, fr, de, ko, zh_TW, it, es, pt_BR, id
    #   })
    #
    # @example Response structure
    #
    #   resp.recommendation.id #=> String
    #   resp.recommendation.type #=> String, one of "standard", "priority"
    #   resp.recommendation.check_arn #=> String
    #   resp.recommendation.status #=> String, one of "ok", "warning", "error"
    #   resp.recommendation.lifecycle_stage #=> String, one of "in_progress", "pending_response", "dismissed", "resolved"
    #   resp.recommendation.pillars #=> Array
    #   resp.recommendation.pillars[0] #=> String, one of "cost_optimizing", "performance", "security", "service_limits", "fault_tolerance", "operational_excellence"
    #   resp.recommendation.source #=> String, one of "aws_config", "compute_optimizer", "cost_explorer", "lse", "manual", "pse", "rds", "resilience", "resilience_hub", "security_hub", "stir", "ta_check", "well_architected", "cost_optimization_hub"
    #   resp.recommendation.aws_services #=> Array
    #   resp.recommendation.aws_services[0] #=> String
    #   resp.recommendation.name #=> String
    #   resp.recommendation.resources_aggregates.ok_count #=> Integer
    #   resp.recommendation.resources_aggregates.warning_count #=> Integer
    #   resp.recommendation.resources_aggregates.error_count #=> Integer
    #   resp.recommendation.resources_aggregates.excluded_count #=> Integer
    #   resp.recommendation.pillar_specific_aggregates.cost_optimizing.estimated_monthly_savings #=> Float
    #   resp.recommendation.pillar_specific_aggregates.cost_optimizing.estimated_percent_monthly_savings #=> Float
    #   resp.recommendation.created_at #=> Time
    #   resp.recommendation.last_updated_at #=> Time
    #   resp.recommendation.arn #=> String
    #   resp.recommendation.status_reason #=> String, one of "no_data_ok"
    #   resp.recommendation.description #=> String
    #   resp.recommendation.created_by #=> String
    #   resp.recommendation.updated_on_behalf_of #=> String
    #   resp.recommendation.updated_on_behalf_of_job_title #=> String
    #   resp.recommendation.update_reason #=> String
    #   resp.recommendation.update_reason_code #=> String, one of "non_critical_account", "temporary_account", "valid_business_case", "other_methods_available", "low_priority", "not_applicable", "other"
    #   resp.recommendation.resolved_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/trustedadvisor-2022-09-15/GetRecommendation AWS API Documentation
    #
    # @overload get_recommendation(params = {})
    # @param [Hash] params ({})
    def get_recommendation(params = {}, options = {})
      req = build_request(:get_recommendation, params)
      req.send_request(options)
    end

    # List a filterable set of Checks. This API provides global
    # recommendations, eliminating the need to call the API in each AWS
    # Region.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @option params [String] :pillar
    #   The pillar of the check
    #
    # @option params [String] :aws_service
    #   The aws service associated with the check
    #
    # @option params [String] :source
    #   The source of the check
    #
    # @option params [String] :language
    #   The ISO 639-1 code for the language that you want your checks to
    #   appear in.
    #
    # @return [Types::ListChecksResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListChecksResponse#next_token #next_token} => String
    #   * {Types::ListChecksResponse#check_summaries #check_summaries} => Array&lt;Types::CheckSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: List all AWS Trusted Advisor Checks
    #
    #   resp = client.list_checks({
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     check_summaries: [
    #       {
    #         metadata: {
    #           "0" => "Region", 
    #           "1" => "Security Group Name", 
    #           "2" => "Security Group ID", 
    #           "3" => "Protocol", 
    #           "4" => "Port", 
    #           "5" => "Status", 
    #           "6" => "IP Range", 
    #         }, 
    #         name: "Security Groups - Unrestricted Access", 
    #         arn: "arn:aws:trustedadvisor:::check/1iG5NDGVre", 
    #         aws_services: [
    #           "EC2", 
    #         ], 
    #         description: "Checks security groups for rules that allow unrestricted access to a resource. Unrestricted access increases opportunities for malicious activity (hacking, denial-of-service attacks, loss of data).\n<br>\n<br>Note: This check only evaluates security groups that you create and their inbound rules for IPv4 addresses. Security groups created by AWS Directory Services are flagged as red or yellow, but they don\u2019t pose a security risk and can be safely ignored or excluded. For more information, see the <a href=\"https://aws.amazon.com/premiumsupport/faqs/#AWS_Trusted_Advisor\" target=\"_blank\">Trusted Advisor FAQ</a>.\n<br>\n<br>\n<h4 class='headerBodyStyle'>Alert Criteria</h4>\n<br>\nRed: A security group rule has a source IP address with a /0 suffix for ports other than 25, 80, or 443.\n<br>\n<br>\n<h4 class='headerBodyStyle'>Recommended Action</h4>\n<br>\nRestrict access to only those IP addresses that require it. To restrict access to a specific IP address, set the suffix to /32 (for example, 192.0.2.10/32). Be sure to delete overly permissive rules after creating rules that are more restrictive.\n<br>\n<br>\n<h4 class='headerBodyStyle'>Additional Resources</h4>\n<br><a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-network-security.html\" target=\"_blank\">Amazon EC2 Security Groups</a><br>\n<a href=\"https://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing\" target=\"_blank\">Classless Inter-Domain Routing</a> (Wikipedia)", 
    #         id: "1iG5NDGVre", 
    #         pillars: [
    #           "security", 
    #         ], 
    #         source: "ta_check", 
    #       }, 
    #       {
    #         metadata: {
    #           "0" => "Region", 
    #           "1" => "Family", 
    #           "10" => "Upfront Cost of Reserved Instances", 
    #           "11" => "Estimated cost of Reserved Instances (monthly)", 
    #           "12" => "Estimated On-Demand Cost Post Recommended Reserved Instance Purchase (monthly)", 
    #           "13" => "Estimated Break Even (months)", 
    #           "14" => "Lookback Period (days)", 
    #           "15" => "Term (years)", 
    #           "2" => "Instance Type", 
    #           "3" => "License Model", 
    #           "4" => "Database Edition", 
    #           "5" => "Database Engine", 
    #           "6" => "Deployment Option", 
    #           "7" => "Recommended number of Reserved Instances to purchase", 
    #           "8" => "Expected Average Reserved Instance Utilization", 
    #           "9" => "Estimated Savings with Recommendation (monthly)", 
    #         }, 
    #         name: "Amazon Relational Database Service (RDS) Reserved Instance Optimization", 
    #         arn: "arn:aws:trustedadvisor:::check/1qazXsw23e", 
    #         aws_services: [
    #           "RDS", 
    #         ], 
    #         description: "Checks your usage of RDS and provides recommendations on purchase of Reserved Instances to help reduce costs incurred from using RDS On-Demand. AWS generates these recommendations by analyzing your On-Demand usage for the past 30 days. We then simulate every combination of reservations in the generated category of usage in order to identify the best number of each type of Reserved Instance to purchase to maximize your savings. This check covers recommendations based on partial upfront payment option with 1-year or 3-year commitment. This check is not available to accounts linked in Consolidated Billing. Recommendations are only available for the Paying Account.<br/><br/>\r\n<h4 class='headerBodyStyle'>Alert Criteria</h4><br/>\nYellow: Optimizing the purchase of RDS Reserved Instances can help reduce costs.<br/><br/>\r\n<h4 class='headerBodyStyle'>Recommended Action</h4><br/>\r\nSee the <a href=\"http://console.aws.amazon.com/billing/home?/costexplorer#/costexplorer\" target=\"_blank\">Cost Explorer</a> page for more detailed recommendations, customization options (e.g. look-back period, payment option, etc.) and to purchase RDS Reserved Instances.\n<br/>\n<br/>\n<h4 class='headerBodyStyle'>Additional Resources</h4><br/>\nInformation on RDS Reserved Instances and how they can save you money can be found <a href=\"http://aws.amazon.com/rds/reserved-instances/\" target=\"_blank\">here</a>.<br>\nFor more information on this recommendation, see <a href=\"http://aws.amazon.com/premiumsupport/technology/trusted-advisor/faqs/#Reserved_Instance_Optimization_Check_Questions\" target=\"_blank\">Reserved Instance Optimization Check Questions</a> in the Trusted Advisor FAQs.<br>\nFor more detailed description of fields, see <a href=\"http://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_ReservationPurchaseRecommendationDetail.html#awscostmanagement-Type-ReservationPurchaseRecommendationDetail-AverageUtilization\" target=\"_blank\">Cost Explorer documentation</a>", 
    #         id: "1qazXsw23e", 
    #         pillars: [
    #           "cost_optimizing", 
    #         ], 
    #         source: "ta_check", 
    #       }, 
    #       {
    #         metadata: {
    #           "0" => "Region", 
    #           "1" => "Family", 
    #           "10" => "Lookback Period (days)", 
    #           "11" => "Term (years)", 
    #           "2" => "Node Type", 
    #           "3" => "Recommended number of Reserved Nodes to purchase", 
    #           "4" => "Expected Average Reserved Node Utilization", 
    #           "5" => "Estimated Savings with Recommendation (monthly)", 
    #           "6" => "Upfront Cost of Reserved Nodes", 
    #           "7" => "Estimated cost of Reserved Nodes (monthly)", 
    #           "8" => "Estimated On-Demand Cost Post Recommended Reserved Nodes Purchase (monthly)", 
    #           "9" => "Estimated Break Even (months)", 
    #         }, 
    #         name: "Amazon Redshift Reserved Node Optimization", 
    #         arn: "arn:aws:trustedadvisor:::check/1qw23er45t", 
    #         aws_services: [
    #           "Redshift", 
    #         ], 
    #         description: "Checks your usage of Redshift and provides recommendations on purchase of Reserved Nodes to help reduce costs incurred from using Redshift On-Demand. AWS generates these recommendations by analyzing your On-Demand usage for the past 30 days. We then simulate every combination of reservations in the generated category of usage in order to identify the best number of each type of Reserved Nodes to purchase to maximize your savings. This check covers recommendations based on partial upfront payment option with 1-year or 3-year commitment. This check is not available to accounts linked in Consolidated Billing. Recommendations are only available for the Paying Account.<br/><br/>\n<h4 class='headerBodyStyle'>Alert Criteria</h4><br/>Yellow: Optimizing the purchase of Redshift Reserved Nodes can help reduce costs.<br/><br/>\n<h4 class='headerBodyStyle'>Recommended Action</h4><br/>See the <a href=\"https://console.aws.amazon.com/billing/home?/costexplorer#/costexplorer\" target=\"_blank\">Cost Explorer</a> page for more detailed recommendations, customization options (e.g. look-back period, payment option, etc.) and to purchase Redshift Reserved Nodes.<br/><br/>\n<h4 class='headerBodyStyle'>Additional Resources</h4><br/>Information on Redshift Reserved Nodes and how they can save you money can be found <a href=\"http://docs.aws.amazon.com/redshift/latest/mgmt/purchase-reserved-node-instance.html\" target=\"_blank\">here</a>.<br>\nFor more information on this recommendation, see <a href=\"http://aws.amazon.com/premiumsupport/technology/trusted-advisor/faqs/#Reserved_Instance_Optimization_Check_Questions\" target=\"_blank\">Reserved Instance Optimization Check Questions</a> in the Trusted Advisor FAQs.<br/>\nFor more detailed description of fields, see <a href=\"http://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_ReservationPurchaseRecommendationDetail.html#awscostmanagement-Type-ReservationPurchaseRecommendationDetail-AverageUtilization\" target=\"_blank\">Cost Explorer documentation</a>", 
    #         id: "1qw23er45t", 
    #         pillars: [
    #           "cost_optimizing", 
    #         ], 
    #         source: "ta_check", 
    #       }, 
    #     ], 
    #     next_token: "<REDACTED>", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_checks({
    #     next_token: "ListChecksRequestNextTokenString",
    #     max_results: 1,
    #     pillar: "cost_optimizing", # accepts cost_optimizing, performance, security, service_limits, fault_tolerance, operational_excellence
    #     aws_service: "RecommendationAwsService",
    #     source: "aws_config", # accepts aws_config, compute_optimizer, cost_explorer, lse, manual, pse, rds, resilience, resilience_hub, security_hub, stir, ta_check, well_architected, cost_optimization_hub
    #     language: "en", # accepts en, ja, zh, fr, de, ko, zh_TW, it, es, pt_BR, id
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.check_summaries #=> Array
    #   resp.check_summaries[0].id #=> String
    #   resp.check_summaries[0].arn #=> String
    #   resp.check_summaries[0].name #=> String
    #   resp.check_summaries[0].description #=> String
    #   resp.check_summaries[0].pillars #=> Array
    #   resp.check_summaries[0].pillars[0] #=> String, one of "cost_optimizing", "performance", "security", "service_limits", "fault_tolerance", "operational_excellence"
    #   resp.check_summaries[0].aws_services #=> Array
    #   resp.check_summaries[0].aws_services[0] #=> String
    #   resp.check_summaries[0].source #=> String, one of "aws_config", "compute_optimizer", "cost_explorer", "lse", "manual", "pse", "rds", "resilience", "resilience_hub", "security_hub", "stir", "ta_check", "well_architected", "cost_optimization_hub"
    #   resp.check_summaries[0].metadata #=> Hash
    #   resp.check_summaries[0].metadata["String"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/trustedadvisor-2022-09-15/ListChecks AWS API Documentation
    #
    # @overload list_checks(params = {})
    # @param [Hash] params ({})
    def list_checks(params = {}, options = {})
      req = build_request(:list_checks, params)
      req.send_request(options)
    end

    # Lists the accounts that own the resources for an organization
    # aggregate recommendation. This API only supports prioritized
    # recommendations and provides global priority recommendations,
    # eliminating the need to call the API in each AWS Region.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @option params [required, String] :organization_recommendation_identifier
    #   The Recommendation identifier
    #
    # @option params [String] :affected_account_id
    #   An account affected by this organization recommendation
    #
    # @return [Types::ListOrganizationRecommendationAccountsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListOrganizationRecommendationAccountsResponse#next_token #next_token} => String
    #   * {Types::ListOrganizationRecommendationAccountsResponse#account_recommendation_lifecycle_summaries #account_recommendation_lifecycle_summaries} => Array&lt;Types::AccountRecommendationLifecycleSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: List all Accounts for an AWS Organization's Recommendation
    #
    #   resp = client.list_organization_recommendation_accounts({
    #     organization_recommendation_identifier: "arn:aws:trustedadvisor:::organization-recommendation/9534ec9b-bf3a-44e8-8213-2ed68b39d9d5", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     account_recommendation_lifecycle_summaries: [
    #       {
    #         account_id: "000000000000", 
    #         account_recommendation_arn: "arn:aws:trustedadvisor::000000000000:recommendation/9534ec9b-bf3a-44e8-8213-2ed68b39d9d5", 
    #         last_updated_at: Time.parse("2023-01-17T18:25:44.552Z"), 
    #         lifecycle_stage: "resolved", 
    #         update_reason: "Resolved issue", 
    #         update_reason_code: "valid_business_case", 
    #       }, 
    #     ], 
    #     next_token: "<REDACTED>", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_organization_recommendation_accounts({
    #     next_token: "ListOrganizationRecommendationAccountsRequestNextTokenString",
    #     max_results: 1,
    #     organization_recommendation_identifier: "OrganizationRecommendationIdentifier", # required
    #     affected_account_id: "AccountId",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.account_recommendation_lifecycle_summaries #=> Array
    #   resp.account_recommendation_lifecycle_summaries[0].account_id #=> String
    #   resp.account_recommendation_lifecycle_summaries[0].account_recommendation_arn #=> String
    #   resp.account_recommendation_lifecycle_summaries[0].lifecycle_stage #=> String, one of "in_progress", "pending_response", "dismissed", "resolved"
    #   resp.account_recommendation_lifecycle_summaries[0].updated_on_behalf_of #=> String
    #   resp.account_recommendation_lifecycle_summaries[0].updated_on_behalf_of_job_title #=> String
    #   resp.account_recommendation_lifecycle_summaries[0].update_reason #=> String
    #   resp.account_recommendation_lifecycle_summaries[0].update_reason_code #=> String, one of "non_critical_account", "temporary_account", "valid_business_case", "other_methods_available", "low_priority", "not_applicable", "other"
    #   resp.account_recommendation_lifecycle_summaries[0].last_updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/trustedadvisor-2022-09-15/ListOrganizationRecommendationAccounts AWS API Documentation
    #
    # @overload list_organization_recommendation_accounts(params = {})
    # @param [Hash] params ({})
    def list_organization_recommendation_accounts(params = {}, options = {})
      req = build_request(:list_organization_recommendation_accounts, params)
      req.send_request(options)
    end

    # List Resources of a Recommendation within an Organization. This API
    # only supports prioritized recommendations and provides global priority
    # recommendations, eliminating the need to call the API in each AWS
    # Region.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @option params [String] :status
    #   The status of the resource
    #
    # @option params [String] :exclusion_status
    #   The exclusion status of the resource
    #
    # @option params [String] :region_code
    #   The AWS Region code of the resource
    #
    # @option params [required, String] :organization_recommendation_identifier
    #   The AWS Organization organization's Recommendation identifier
    #
    # @option params [String] :affected_account_id
    #   An account affected by this organization recommendation
    #
    # @return [Types::ListOrganizationRecommendationResourcesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListOrganizationRecommendationResourcesResponse#next_token #next_token} => String
    #   * {Types::ListOrganizationRecommendationResourcesResponse#organization_recommendation_resource_summaries #organization_recommendation_resource_summaries} => Array&lt;Types::OrganizationRecommendationResourceSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: List all Resources for an AWS Organization's Recommendation
    #
    #   resp = client.list_organization_recommendation_resources({
    #     organization_recommendation_identifier: "arn:aws:trustedadvisor:::organization-recommendation/5a694939-2e54-45a2-ae72-730598fa89d0", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     next_token: "<REDACTED>", 
    #     organization_recommendation_resource_summaries: [
    #       {
    #         metadata: {
    #           "0" => "14", 
    #           "1" => "208.79999999999998", 
    #           "2" => "database-1-instance-1", 
    #           "3" => "db.r5.large", 
    #           "4" => "false", 
    #           "5" => "us-west-2", 
    #           "6" => "arn:aws:rds:us-west-2:000000000000:db:database-1-instance-1", 
    #           "7" => "1", 
    #         }, 
    #         arn: "arn:aws:trustedadvisor::000000000000:recommendation-resource/5a694939-2e54-45a2-ae72-730598fa89d0/bb38affc0ce0681d9a6cd13f30238ba03a8f63dfe7a379dc403c619119d86af", 
    #         aws_resource_id: "database-1-instance-1", 
    #         exclusion_status: "excluded", 
    #         id: "bb38affc0ce0681d9a6cd13f302383ba03a8f63dfe7a379dc403c619119d86af", 
    #         last_updated_at: Time.parse("2023-11-01T15:09:51.891Z"), 
    #         recommendation_arn: "arn:aws:trustedadvisor:::organization-recommendation/5a694939-2e54-45a2-ae72-730598fa89d0", 
    #         region_code: "us-west-2", 
    #         status: "warning", 
    #       }, 
    #       {
    #         metadata: {
    #           "0" => "14", 
    #           "1" => "31.679999999999996", 
    #           "2" => "database-1", 
    #           "3" => "db.t3.small", 
    #           "4" => "false", 
    #           "5" => "us-west-2", 
    #           "6" => "arn:aws:rds:us-west-2:000000000000:db:database-1", 
    #           "7" => "20", 
    #         }, 
    #         arn: "arn:aws:trustedadvisor::000000000000:recommendation-resource/5a694939-2e54-45a2-ae72-730598fa89d0/51fded4d7a3278818df9cfe344ff5762cec46c095a6763d1ba1ba53bd0e1b0e6", 
    #         aws_resource_id: "database-1", 
    #         exclusion_status: "excluded", 
    #         id: "51fded4d7a3278818df9cfe344ff5762cec46c095a6763d1ba1ba53bd0e1b0e6", 
    #         last_updated_at: Time.parse("2023-11-01T15:09:51.891Z"), 
    #         recommendation_arn: "arn:aws:trustedadvisor:::organization-recommendation/5a694939-2e54-45a2-ae72-730598fa89d0", 
    #         region_code: "us-west-2", 
    #         status: "warning", 
    #       }, 
    #       {
    #         metadata: {
    #           "0" => "14", 
    #           "1" => "187.20000000000002", 
    #           "2" => "database-2-instance-1-us-west-2a", 
    #           "3" => "db.r6g.large", 
    #           "4" => "true", 
    #           "5" => "us-west-2", 
    #           "6" => "arn:aws:rds:us-west-2:000000000000:db:database-2-instance-1-us-west-2a", 
    #           "7" => "1", 
    #         }, 
    #         arn: "arn:aws:trustedadvisor::000000000000:recommendation-resource/5a694939-2e54-45a2-ae72-730598fa89d0/f4d01bd20f4cd5372062aafc8786c489e48f0ead7cdab121463bf9f89e40a36b", 
    #         aws_resource_id: "database-2-instance-1-us-west-2a", 
    #         exclusion_status: "included", 
    #         id: "f4d01bd20f4cd5372062aafc8786c489e48f0ead7cdab121463bf9f89e40a36b", 
    #         last_updated_at: Time.parse("2023-11-01T15:09:51.891Z"), 
    #         recommendation_arn: "arn:aws:trustedadvisor:::organization-recommendation/5a694939-2e54-45a2-ae72-730598fa89d0", 
    #         region_code: "us-west-2", 
    #         status: "warning", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_organization_recommendation_resources({
    #     next_token: "ListOrganizationRecommendationResourcesRequestNextTokenString",
    #     max_results: 1,
    #     status: "ok", # accepts ok, warning, error
    #     exclusion_status: "excluded", # accepts excluded, included
    #     region_code: "String",
    #     organization_recommendation_identifier: "OrganizationRecommendationIdentifier", # required
    #     affected_account_id: "AccountId",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.organization_recommendation_resource_summaries #=> Array
    #   resp.organization_recommendation_resource_summaries[0].id #=> String
    #   resp.organization_recommendation_resource_summaries[0].arn #=> String
    #   resp.organization_recommendation_resource_summaries[0].aws_resource_id #=> String
    #   resp.organization_recommendation_resource_summaries[0].region_code #=> String
    #   resp.organization_recommendation_resource_summaries[0].status #=> String, one of "ok", "warning", "error"
    #   resp.organization_recommendation_resource_summaries[0].metadata #=> Hash
    #   resp.organization_recommendation_resource_summaries[0].metadata["String"] #=> String
    #   resp.organization_recommendation_resource_summaries[0].last_updated_at #=> Time
    #   resp.organization_recommendation_resource_summaries[0].exclusion_status #=> String, one of "excluded", "included"
    #   resp.organization_recommendation_resource_summaries[0].account_id #=> String
    #   resp.organization_recommendation_resource_summaries[0].recommendation_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/trustedadvisor-2022-09-15/ListOrganizationRecommendationResources AWS API Documentation
    #
    # @overload list_organization_recommendation_resources(params = {})
    # @param [Hash] params ({})
    def list_organization_recommendation_resources(params = {}, options = {})
      req = build_request(:list_organization_recommendation_resources, params)
      req.send_request(options)
    end

    # List a filterable set of Recommendations within an Organization. This
    # API only supports prioritized recommendations and provides global
    # priority recommendations, eliminating the need to call the API in each
    # AWS Region.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @option params [String] :type
    #   The type of the Recommendation
    #
    # @option params [String] :status
    #   The status of the Recommendation
    #
    # @option params [String] :pillar
    #   The pillar of the Recommendation
    #
    # @option params [String] :aws_service
    #   The aws service associated with the Recommendation
    #
    # @option params [String] :source
    #   The source of the Recommendation
    #
    # @option params [String] :check_identifier
    #   The check identifier of the Recommendation
    #
    # @option params [Time,DateTime,Date,Integer,String] :after_last_updated_at
    #   After the last update of the Recommendation
    #
    # @option params [Time,DateTime,Date,Integer,String] :before_last_updated_at
    #   Before the last update of the Recommendation
    #
    # @return [Types::ListOrganizationRecommendationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListOrganizationRecommendationsResponse#next_token #next_token} => String
    #   * {Types::ListOrganizationRecommendationsResponse#organization_recommendation_summaries #organization_recommendation_summaries} => Array&lt;Types::OrganizationRecommendationSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: List all of an AWS Organization's Recommendations
    #
    #   resp = client.list_organization_recommendations({
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     next_token: "<REDACTED>", 
    #     organization_recommendation_summaries: [
    #       {
    #         name: "Lambda Runtime Deprecation Warning", 
    #         type: "priority", 
    #         arn: "arn:aws:trustedadvisor:::organization-recommendation/9534ec9b-bf3a-44e8-8213-2ed68b39d9d5", 
    #         aws_services: [
    #           "lambda", 
    #         ], 
    #         check_arn: "arn:aws:trustedadvisor:::check/L4dfs2Q4C5", 
    #         id: "9534ec9b-bf3a-44e8-8213-2ed68b39d9d5", 
    #         lifecycle_stage: "resolved", 
    #         pillars: [
    #           "security", 
    #         ], 
    #         resources_aggregates: {
    #           error_count: 0, 
    #           ok_count: 0, 
    #           warning_count: 0, 
    #         }, 
    #         source: "ta_check", 
    #         status: "warning", 
    #       }, 
    #       {
    #         name: "Lambda Runtime Deprecation Warning", 
    #         type: "priority", 
    #         arn: "arn:aws:trustedadvisor:::organization-recommendation/4ecff4d4-1bc1-4c99-a5b8-0fff9ee500d6", 
    #         aws_services: [
    #           "lambda", 
    #         ], 
    #         check_arn: "arn:aws:trustedadvisor:::check/L4dfs2Q4C5", 
    #         id: "4ecff4d4-1bc1-4c99-a5b8-0fff9ee500d6", 
    #         lifecycle_stage: "resolved", 
    #         pillars: [
    #           "security", 
    #         ], 
    #         resources_aggregates: {
    #           error_count: 0, 
    #           ok_count: 0, 
    #           warning_count: 0, 
    #         }, 
    #         source: "ta_check", 
    #         status: "warning", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Example: Filter and return a max of one AWS Organization Recommendation that is a part of the "security" pillar
    #
    #   resp = client.list_organization_recommendations({
    #     max_results: 100, 
    #     pillar: "security", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     next_token: "<REDACTED>", 
    #     organization_recommendation_summaries: [
    #       {
    #         name: "Lambda Runtime Deprecation Warning", 
    #         type: "priority", 
    #         arn: "arn:aws:trustedadvisor:::organization-recommendation/9534ec9b-bf3a-44e8-8213-2ed68b39d9d5", 
    #         aws_services: [
    #           "lambda", 
    #         ], 
    #         check_arn: "arn:aws:trustedadvisor:::check/L4dfs2Q4C5", 
    #         id: "9534ec9b-bf3a-44e8-8213-2ed68b39d9d5", 
    #         lifecycle_stage: "resolved", 
    #         pillars: [
    #           "security", 
    #         ], 
    #         resources_aggregates: {
    #           error_count: 0, 
    #           ok_count: 0, 
    #           warning_count: 0, 
    #         }, 
    #         source: "ta_check", 
    #         status: "warning", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Example: Use the "nextToken" returned from a previous request to fetch the next page of filtered AWS Organization Recommendations that are a part of the "security" pillar
    #
    #   resp = client.list_organization_recommendations({
    #     max_results: 100, 
    #     next_token: "<REDACTED>", 
    #     pillar: "security", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     organization_recommendation_summaries: [
    #       {
    #         name: "Lambda Runtime Deprecation Warning", 
    #         type: "priority", 
    #         arn: "arn:aws:trustedadvisor:::organization-recommendation/4ecff4d4-1bc1-4c99-a5b8-0fff9ee500d6", 
    #         aws_services: [
    #           "lambda", 
    #         ], 
    #         check_arn: "arn:aws:trustedadvisor:::check/L4dfs2Q4C5", 
    #         id: "4ecff4d4-1bc1-4c99-a5b8-0fff9ee500d6", 
    #         lifecycle_stage: "resolved", 
    #         pillars: [
    #           "security", 
    #         ], 
    #         resources_aggregates: {
    #           error_count: 0, 
    #           ok_count: 0, 
    #           warning_count: 0, 
    #         }, 
    #         source: "ta_check", 
    #         status: "warning", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_organization_recommendations({
    #     next_token: "ListOrganizationRecommendationsRequestNextTokenString",
    #     max_results: 1,
    #     type: "standard", # accepts standard, priority
    #     status: "ok", # accepts ok, warning, error
    #     pillar: "cost_optimizing", # accepts cost_optimizing, performance, security, service_limits, fault_tolerance, operational_excellence
    #     aws_service: "RecommendationAwsService",
    #     source: "aws_config", # accepts aws_config, compute_optimizer, cost_explorer, lse, manual, pse, rds, resilience, resilience_hub, security_hub, stir, ta_check, well_architected, cost_optimization_hub
    #     check_identifier: "CheckIdentifier",
    #     after_last_updated_at: Time.now,
    #     before_last_updated_at: Time.now,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.organization_recommendation_summaries #=> Array
    #   resp.organization_recommendation_summaries[0].id #=> String
    #   resp.organization_recommendation_summaries[0].type #=> String, one of "standard", "priority"
    #   resp.organization_recommendation_summaries[0].check_arn #=> String
    #   resp.organization_recommendation_summaries[0].status #=> String, one of "ok", "warning", "error"
    #   resp.organization_recommendation_summaries[0].lifecycle_stage #=> String, one of "in_progress", "pending_response", "dismissed", "resolved"
    #   resp.organization_recommendation_summaries[0].pillars #=> Array
    #   resp.organization_recommendation_summaries[0].pillars[0] #=> String, one of "cost_optimizing", "performance", "security", "service_limits", "fault_tolerance", "operational_excellence"
    #   resp.organization_recommendation_summaries[0].source #=> String, one of "aws_config", "compute_optimizer", "cost_explorer", "lse", "manual", "pse", "rds", "resilience", "resilience_hub", "security_hub", "stir", "ta_check", "well_architected", "cost_optimization_hub"
    #   resp.organization_recommendation_summaries[0].aws_services #=> Array
    #   resp.organization_recommendation_summaries[0].aws_services[0] #=> String
    #   resp.organization_recommendation_summaries[0].name #=> String
    #   resp.organization_recommendation_summaries[0].resources_aggregates.ok_count #=> Integer
    #   resp.organization_recommendation_summaries[0].resources_aggregates.warning_count #=> Integer
    #   resp.organization_recommendation_summaries[0].resources_aggregates.error_count #=> Integer
    #   resp.organization_recommendation_summaries[0].resources_aggregates.excluded_count #=> Integer
    #   resp.organization_recommendation_summaries[0].pillar_specific_aggregates.cost_optimizing.estimated_monthly_savings #=> Float
    #   resp.organization_recommendation_summaries[0].pillar_specific_aggregates.cost_optimizing.estimated_percent_monthly_savings #=> Float
    #   resp.organization_recommendation_summaries[0].created_at #=> Time
    #   resp.organization_recommendation_summaries[0].last_updated_at #=> Time
    #   resp.organization_recommendation_summaries[0].arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/trustedadvisor-2022-09-15/ListOrganizationRecommendations AWS API Documentation
    #
    # @overload list_organization_recommendations(params = {})
    # @param [Hash] params ({})
    def list_organization_recommendations(params = {}, options = {})
      req = build_request(:list_organization_recommendations, params)
      req.send_request(options)
    end

    # List Resources of a Recommendation. This API provides global
    # recommendations, eliminating the need to call the API in each AWS
    # Region.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @option params [String] :status
    #   The status of the resource
    #
    # @option params [String] :exclusion_status
    #   The exclusion status of the resource
    #
    # @option params [String] :region_code
    #   The AWS Region code of the resource
    #
    # @option params [required, String] :recommendation_identifier
    #   The Recommendation identifier
    #
    # @option params [String] :language
    #   The ISO 639-1 code for the language that you want your recommendations
    #   to appear in.
    #
    # @return [Types::ListRecommendationResourcesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListRecommendationResourcesResponse#next_token #next_token} => String
    #   * {Types::ListRecommendationResourcesResponse#recommendation_resource_summaries #recommendation_resource_summaries} => Array&lt;Types::RecommendationResourceSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: List all Resources for a Recommendation
    #
    #   resp = client.list_recommendation_resources({
    #     recommendation_identifier: "arn:aws:trustedadvisor::000000000000:recommendation/55fa4d2e-bbb7-491a-833b-5773e9589578", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     next_token: "<REDACTED>", 
    #     recommendation_resource_summaries: [
    #       {
    #         metadata: {
    #           "0" => "14", 
    #           "1" => "123.12000000000002", 
    #           "2" => "webcms-dev-01", 
    #           "3" => "db.m6i.large", 
    #           "4" => "false", 
    #           "5" => "us-east-1", 
    #           "6" => "arn:aws:rds:us-east-1:000000000000:db:webcms-dev-01", 
    #           "7" => "20", 
    #         }, 
    #         arn: "arn:aws:trustedadvisor::000000000000:recommendation-resource/55fa4d2e-bbb7-491a-833b-5773e9589578/18959a1f1973cff8e706e9d9bde28bba36cd602a6b2cb86c8b61252835236010", 
    #         aws_resource_id: "webcms-dev-01", 
    #         exclusion_status: "excluded", 
    #         id: "18959a1f1973cff8e706e9d9bde28bba36cd602a6b2cb86c8b61252835236010", 
    #         last_updated_at: Time.parse("2023-11-01T15:09:51.891Z"), 
    #         recommendation_arn: "arn:aws:trustedadvisor::000000000000:recommendation/55fa4d2e-bbb7-491a-833b-5773e9589578", 
    #         region_code: "us-east-1", 
    #         status: "warning", 
    #       }, 
    #       {
    #         metadata: {
    #           "0" => "14", 
    #           "1" => "29.52", 
    #           "2" => "aws-dev-db-stack-instance-1", 
    #           "3" => "db.t2.small", 
    #           "4" => "false", 
    #           "5" => "us-east-1", 
    #           "6" => "arn:aws:rds:us-east-1:000000000000:db:aws-dev-db-stack-instance-1", 
    #           "7" => "1", 
    #         }, 
    #         arn: "arn:aws:trustedadvisor::000000000000:recommendation-resource/55fa4d2e-bbb7-491a-833b-5773e9589578/e6367ff500ac90db8e4adeb4892e39ee9c36bbf812dcbce4b9e4fefcec9eb63e", 
    #         aws_resource_id: "aws-dev-db-stack-instance-1", 
    #         exclusion_status: "included", 
    #         id: "e6367ff500ac90db8e4adeb4892e39ee9c36bbf812dcbce4b9e4fefcec9eb63e", 
    #         last_updated_at: Time.parse("2023-11-01T15:09:51.891Z"), 
    #         recommendation_arn: "arn:aws:trustedadvisor::000000000000:recommendation/55fa4d2e-bbb7-491a-833b-5773e9589578", 
    #         region_code: "us-east-1", 
    #         status: "warning", 
    #       }, 
    #       {
    #         metadata: {
    #           "0" => "14", 
    #           "1" => "114.48000000000002", 
    #           "2" => "aws-awesome-apps-stack-db", 
    #           "3" => "db.m6g.large", 
    #           "4" => "false", 
    #           "5" => "us-east-1", 
    #           "6" => "arn:aws:rds:us-east-1:000000000000:db:aws-awesome-apps-stack-db", 
    #           "7" => "100", 
    #         }, 
    #         arn: "arn:aws:trustedadvisor::000000000000:recommendation-resource/55fa4d2e-bbb7-491a-833b-5773e9589578/31aa78ba050a5015d2d38cca7f5f1ce88f70857c4e1c3ad03f8f9fd95dad7459", 
    #         aws_resource_id: "aws-awesome-apps-stack-db", 
    #         exclusion_status: "excluded", 
    #         id: "31aa78ba050a5015d2d38cca7f5f1ce88f70857c4e1c3ad03f8f9fd95dad7459", 
    #         last_updated_at: Time.parse("2023-11-01T15:09:51.891Z"), 
    #         recommendation_arn: "arn:aws:trustedadvisor::000000000000:recommendation/55fa4d2e-bbb7-491a-833b-5773e9589578", 
    #         region_code: "us-east-1", 
    #         status: "warning", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_recommendation_resources({
    #     next_token: "ListRecommendationResourcesRequestNextTokenString",
    #     max_results: 1,
    #     status: "ok", # accepts ok, warning, error
    #     exclusion_status: "excluded", # accepts excluded, included
    #     region_code: "String",
    #     recommendation_identifier: "AccountRecommendationIdentifier", # required
    #     language: "en", # accepts en, ja, zh, fr, de, ko, zh_TW, it, es, pt_BR, id
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.recommendation_resource_summaries #=> Array
    #   resp.recommendation_resource_summaries[0].id #=> String
    #   resp.recommendation_resource_summaries[0].arn #=> String
    #   resp.recommendation_resource_summaries[0].aws_resource_id #=> String
    #   resp.recommendation_resource_summaries[0].region_code #=> String
    #   resp.recommendation_resource_summaries[0].status #=> String, one of "ok", "warning", "error"
    #   resp.recommendation_resource_summaries[0].metadata #=> Hash
    #   resp.recommendation_resource_summaries[0].metadata["String"] #=> String
    #   resp.recommendation_resource_summaries[0].last_updated_at #=> Time
    #   resp.recommendation_resource_summaries[0].exclusion_status #=> String, one of "excluded", "included"
    #   resp.recommendation_resource_summaries[0].recommendation_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/trustedadvisor-2022-09-15/ListRecommendationResources AWS API Documentation
    #
    # @overload list_recommendation_resources(params = {})
    # @param [Hash] params ({})
    def list_recommendation_resources(params = {}, options = {})
      req = build_request(:list_recommendation_resources, params)
      req.send_request(options)
    end

    # List a filterable set of Recommendations. This API provides global
    # recommendations, eliminating the need to call the API in each AWS
    # Region.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @option params [String] :type
    #   The type of the Recommendation
    #
    # @option params [String] :status
    #   The status of the Recommendation
    #
    # @option params [String] :pillar
    #   The pillar of the Recommendation
    #
    # @option params [String] :aws_service
    #   The aws service associated with the Recommendation
    #
    # @option params [String] :source
    #   The source of the Recommendation
    #
    # @option params [String] :check_identifier
    #   The check identifier of the Recommendation
    #
    # @option params [Time,DateTime,Date,Integer,String] :after_last_updated_at
    #   After the last update of the Recommendation
    #
    # @option params [Time,DateTime,Date,Integer,String] :before_last_updated_at
    #   Before the last update of the Recommendation
    #
    # @option params [String] :language
    #   The ISO 639-1 code for the language that you want your recommendations
    #   to appear in.
    #
    # @return [Types::ListRecommendationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListRecommendationsResponse#next_token #next_token} => String
    #   * {Types::ListRecommendationsResponse#recommendation_summaries #recommendation_summaries} => Array&lt;Types::RecommendationSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: List all Recommendations
    #
    #   resp = client.list_recommendations({
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     next_token: "<REDACTED>", 
    #     recommendation_summaries: [
    #       {
    #         name: "MFA Recommendation", 
    #         type: "standard", 
    #         arn: "arn:aws:trustedadvisor::000000000000:recommendation/55fa4d2e-bbb7-491a-833b-5773e9589578", 
    #         aws_services: [
    #           "iam", 
    #         ], 
    #         check_arn: "arn:aws:trustedadvisor:::check/7DAFEmoDos", 
    #         id: "55fa4d2e-bbb7-491a-833b-5773e9589578", 
    #         last_updated_at: Time.parse("2023-11-01T15:57:58.673Z"), 
    #         pillar_specific_aggregates: {
    #           cost_optimizing: {
    #             estimated_monthly_savings: 0.0, 
    #             estimated_percent_monthly_savings: 0.0, 
    #           }, 
    #         }, 
    #         pillars: [
    #           "security", 
    #         ], 
    #         resources_aggregates: {
    #           error_count: 1, 
    #           ok_count: 0, 
    #           warning_count: 0, 
    #         }, 
    #         source: "ta_check", 
    #         status: "error", 
    #       }, 
    #       {
    #         name: "RDS clusters quota warning", 
    #         type: "standard", 
    #         arn: "arn:aws:trustedadvisor::000000000000:recommendation/8b602b6f-452d-4cb2-8a9e-c7650955d9cd", 
    #         aws_services: [
    #           "rds", 
    #         ], 
    #         check_arn: "arn:aws:trustedadvisor:::check/gjqMBn6pjz", 
    #         id: "8b602b6f-452d-4cb2-8a9e-c7650955d9cd", 
    #         last_updated_at: Time.parse("2023-11-01T15:58:17.397Z"), 
    #         pillar_specific_aggregates: {
    #           cost_optimizing: {
    #             estimated_monthly_savings: 0.0, 
    #             estimated_percent_monthly_savings: 0.0, 
    #           }, 
    #         }, 
    #         pillars: [
    #           "service_limits", 
    #         ], 
    #         resources_aggregates: {
    #           error_count: 0, 
    #           ok_count: 3, 
    #           warning_count: 6, 
    #         }, 
    #         source: "ta_check", 
    #         status: "warning", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Example: Filter and return a max of one Recommendation that is a part of AWS IAM
    #
    #   resp = client.list_recommendations({
    #     aws_service: "iam", 
    #     max_results: 100, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     next_token: "<REDACTED>", 
    #     recommendation_summaries: [
    #       {
    #         name: "MFA Recommendation", 
    #         type: "standard", 
    #         arn: "arn:aws:trustedadvisor::000000000000:recommendation/55fa4d2e-bbb7-491a-833b-5773e9589578", 
    #         aws_services: [
    #           "iam", 
    #         ], 
    #         check_arn: "arn:aws:trustedadvisor:::check/7DAFEmoDos", 
    #         id: "55fa4d2e-bbb7-491a-833b-5773e9589578", 
    #         last_updated_at: Time.parse("2023-11-01T15:57:58.673Z"), 
    #         pillar_specific_aggregates: {
    #           cost_optimizing: {
    #             estimated_monthly_savings: 0.0, 
    #             estimated_percent_monthly_savings: 0.0, 
    #           }, 
    #         }, 
    #         pillars: [
    #           "security", 
    #         ], 
    #         resources_aggregates: {
    #           error_count: 1, 
    #           ok_count: 0, 
    #           warning_count: 0, 
    #         }, 
    #         source: "ta_check", 
    #         status: "error", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Example: Use the "nextToken" returned from a previous request to fetch the next page of filtered Recommendations
    #
    #   resp = client.list_recommendations({
    #     aws_service: "rds", 
    #     max_results: 100, 
    #     next_token: "<REDACTED>", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     recommendation_summaries: [
    #       {
    #         name: "RDS clusters quota warning", 
    #         type: "standard", 
    #         arn: "arn:aws:trustedadvisor::000000000000:recommendation/8b602b6f-452d-4cb2-8a9e-c7650955d9cd", 
    #         aws_services: [
    #           "rds", 
    #         ], 
    #         check_arn: "arn:aws:trustedadvisor:::check/gjqMBn6pjz", 
    #         id: "8b602b6f-452d-4cb2-8a9e-c7650955d9cd", 
    #         last_updated_at: Time.parse("2023-11-01T15:58:17.397Z"), 
    #         pillar_specific_aggregates: {
    #           cost_optimizing: {
    #             estimated_monthly_savings: 0.0, 
    #             estimated_percent_monthly_savings: 0.0, 
    #           }, 
    #         }, 
    #         pillars: [
    #           "service_limits", 
    #         ], 
    #         resources_aggregates: {
    #           error_count: 0, 
    #           ok_count: 3, 
    #           warning_count: 6, 
    #         }, 
    #         source: "ta_check", 
    #         status: "warning", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_recommendations({
    #     next_token: "ListRecommendationsRequestNextTokenString",
    #     max_results: 1,
    #     type: "standard", # accepts standard, priority
    #     status: "ok", # accepts ok, warning, error
    #     pillar: "cost_optimizing", # accepts cost_optimizing, performance, security, service_limits, fault_tolerance, operational_excellence
    #     aws_service: "RecommendationAwsService",
    #     source: "aws_config", # accepts aws_config, compute_optimizer, cost_explorer, lse, manual, pse, rds, resilience, resilience_hub, security_hub, stir, ta_check, well_architected, cost_optimization_hub
    #     check_identifier: "CheckIdentifier",
    #     after_last_updated_at: Time.now,
    #     before_last_updated_at: Time.now,
    #     language: "en", # accepts en, ja, zh, fr, de, ko, zh_TW, it, es, pt_BR, id
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.recommendation_summaries #=> Array
    #   resp.recommendation_summaries[0].id #=> String
    #   resp.recommendation_summaries[0].type #=> String, one of "standard", "priority"
    #   resp.recommendation_summaries[0].check_arn #=> String
    #   resp.recommendation_summaries[0].status #=> String, one of "ok", "warning", "error"
    #   resp.recommendation_summaries[0].lifecycle_stage #=> String, one of "in_progress", "pending_response", "dismissed", "resolved"
    #   resp.recommendation_summaries[0].pillars #=> Array
    #   resp.recommendation_summaries[0].pillars[0] #=> String, one of "cost_optimizing", "performance", "security", "service_limits", "fault_tolerance", "operational_excellence"
    #   resp.recommendation_summaries[0].source #=> String, one of "aws_config", "compute_optimizer", "cost_explorer", "lse", "manual", "pse", "rds", "resilience", "resilience_hub", "security_hub", "stir", "ta_check", "well_architected", "cost_optimization_hub"
    #   resp.recommendation_summaries[0].aws_services #=> Array
    #   resp.recommendation_summaries[0].aws_services[0] #=> String
    #   resp.recommendation_summaries[0].name #=> String
    #   resp.recommendation_summaries[0].resources_aggregates.ok_count #=> Integer
    #   resp.recommendation_summaries[0].resources_aggregates.warning_count #=> Integer
    #   resp.recommendation_summaries[0].resources_aggregates.error_count #=> Integer
    #   resp.recommendation_summaries[0].resources_aggregates.excluded_count #=> Integer
    #   resp.recommendation_summaries[0].pillar_specific_aggregates.cost_optimizing.estimated_monthly_savings #=> Float
    #   resp.recommendation_summaries[0].pillar_specific_aggregates.cost_optimizing.estimated_percent_monthly_savings #=> Float
    #   resp.recommendation_summaries[0].created_at #=> Time
    #   resp.recommendation_summaries[0].last_updated_at #=> Time
    #   resp.recommendation_summaries[0].arn #=> String
    #   resp.recommendation_summaries[0].status_reason #=> String, one of "no_data_ok"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/trustedadvisor-2022-09-15/ListRecommendations AWS API Documentation
    #
    # @overload list_recommendations(params = {})
    # @param [Hash] params ({})
    def list_recommendations(params = {}, options = {})
      req = build_request(:list_recommendations, params)
      req.send_request(options)
    end

    # Update the lifecycle of a Recommendation within an Organization. This
    # API only supports prioritized recommendations and updates global
    # priority recommendations, eliminating the need to call the API in each
    # AWS Region.
    #
    # @option params [required, String] :lifecycle_stage
    #   The new lifecycle stage
    #
    # @option params [String] :update_reason
    #   Reason for the lifecycle stage change
    #
    # @option params [String] :update_reason_code
    #   Reason code for the lifecycle state change
    #
    # @option params [required, String] :organization_recommendation_identifier
    #   The Recommendation identifier for AWS Trusted Advisor Priority
    #   recommendations
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: Update the lifecycle stage of an AWS Organization's Recommendation that is managed by AWS Trusted Advisor Priority
    #
    #   resp = client.update_organization_recommendation_lifecycle({
    #     lifecycle_stage: "dismissed", 
    #     organization_recommendation_identifier: "arn:aws:trustedadvisor:::organization-recommendation/96b5e5ca-7930-444c-90c6-06d386128100", 
    #     update_reason: "Does not apply to this resource", 
    #     update_reason_code: "not_applicable", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_organization_recommendation_lifecycle({
    #     lifecycle_stage: "pending_response", # required, accepts pending_response, in_progress, dismissed, resolved
    #     update_reason: "RecommendationUpdateReason",
    #     update_reason_code: "non_critical_account", # accepts non_critical_account, temporary_account, valid_business_case, other_methods_available, low_priority, not_applicable, other
    #     organization_recommendation_identifier: "OrganizationRecommendationIdentifier", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/trustedadvisor-2022-09-15/UpdateOrganizationRecommendationLifecycle AWS API Documentation
    #
    # @overload update_organization_recommendation_lifecycle(params = {})
    # @param [Hash] params ({})
    def update_organization_recommendation_lifecycle(params = {}, options = {})
      req = build_request(:update_organization_recommendation_lifecycle, params)
      req.send_request(options)
    end

    # Update the lifecyle of a Recommendation. This API only supports
    # prioritized recommendations and updates global priority
    # recommendations, eliminating the need to call the API in each AWS
    # Region.
    #
    # @option params [required, String] :lifecycle_stage
    #   The new lifecycle stage
    #
    # @option params [String] :update_reason
    #   Reason for the lifecycle stage change
    #
    # @option params [String] :update_reason_code
    #   Reason code for the lifecycle state change
    #
    # @option params [required, String] :recommendation_identifier
    #   The Recommendation identifier for AWS Trusted Advisor Priority
    #   recommendations
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: Update the lifecycle stage of a Recommendation managed by AWS Trusted Advisor Priority
    #
    #   resp = client.update_recommendation_lifecycle({
    #     lifecycle_stage: "resolved", 
    #     recommendation_identifier: "arn:aws:trustedadvisor::000000000000:recommendation/861c9c6e-f169-405a-8b59-537a8caccd7a", 
    #     update_reason: "Resolved the recommendation", 
    #     update_reason_code: "valid_business_case", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_recommendation_lifecycle({
    #     lifecycle_stage: "pending_response", # required, accepts pending_response, in_progress, dismissed, resolved
    #     update_reason: "RecommendationUpdateReason",
    #     update_reason_code: "non_critical_account", # accepts non_critical_account, temporary_account, valid_business_case, other_methods_available, low_priority, not_applicable, other
    #     recommendation_identifier: "AccountRecommendationIdentifier", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/trustedadvisor-2022-09-15/UpdateRecommendationLifecycle AWS API Documentation
    #
    # @overload update_recommendation_lifecycle(params = {})
    # @param [Hash] params ({})
    def update_recommendation_lifecycle(params = {}, options = {})
      req = build_request(:update_recommendation_lifecycle, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::TrustedAdvisor')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-trustedadvisor'
      context[:gem_version] = '1.34.0'
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
