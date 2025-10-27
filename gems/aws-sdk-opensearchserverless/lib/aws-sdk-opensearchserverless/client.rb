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

module Aws::OpenSearchServerless
  # An API client for OpenSearchServerless.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::OpenSearchServerless::Client.new(
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

    @identifier = :opensearchserverless

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
    add_plugin(Aws::OpenSearchServerless::Plugins::Endpoints)

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
    #   @option options [Aws::OpenSearchServerless::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::OpenSearchServerless::EndpointParameters`.
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

    # Returns attributes for one or more collections, including the
    # collection endpoint, the OpenSearch Dashboards endpoint, and
    # FIPS-compliant endpoints. For more information, see [Creating and
    # managing Amazon OpenSearch Serverless collections][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-manage.html
    #
    # @option params [Array<String>] :ids
    #   A list of collection IDs. You can't provide names and IDs in the same
    #   request. The ID is part of the collection endpoint. You can also
    #   retrieve it using the [ListCollections][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/opensearch-service/latest/ServerlessAPIReference/API_ListCollections.html
    #
    # @option params [Array<String>] :names
    #   A list of collection names. You can't provide names and IDs in the
    #   same request.
    #
    # @return [Types::BatchGetCollectionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchGetCollectionResponse#collection_details #collection_details} => Array&lt;Types::CollectionDetail&gt;
    #   * {Types::BatchGetCollectionResponse#collection_error_details #collection_error_details} => Array&lt;Types::CollectionErrorDetail&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_collection({
    #     ids: ["CollectionId"],
    #     names: ["CollectionName"],
    #   })
    #
    # @example Response structure
    #
    #   resp.collection_details #=> Array
    #   resp.collection_details[0].id #=> String
    #   resp.collection_details[0].name #=> String
    #   resp.collection_details[0].status #=> String, one of "CREATING", "DELETING", "ACTIVE", "FAILED"
    #   resp.collection_details[0].type #=> String, one of "SEARCH", "TIMESERIES", "VECTORSEARCH"
    #   resp.collection_details[0].description #=> String
    #   resp.collection_details[0].arn #=> String
    #   resp.collection_details[0].kms_key_arn #=> String
    #   resp.collection_details[0].standby_replicas #=> String, one of "ENABLED", "DISABLED"
    #   resp.collection_details[0].created_date #=> Integer
    #   resp.collection_details[0].last_modified_date #=> Integer
    #   resp.collection_details[0].collection_endpoint #=> String
    #   resp.collection_details[0].dashboard_endpoint #=> String
    #   resp.collection_details[0].fips_endpoints.collection_endpoint #=> String
    #   resp.collection_details[0].fips_endpoints.dashboard_endpoint #=> String
    #   resp.collection_details[0].failure_code #=> String
    #   resp.collection_details[0].failure_message #=> String
    #   resp.collection_error_details #=> Array
    #   resp.collection_error_details[0].id #=> String
    #   resp.collection_error_details[0].name #=> String
    #   resp.collection_error_details[0].error_message #=> String
    #   resp.collection_error_details[0].error_code #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchserverless-2021-11-01/BatchGetCollection AWS API Documentation
    #
    # @overload batch_get_collection(params = {})
    # @param [Hash] params ({})
    def batch_get_collection(params = {}, options = {})
      req = build_request(:batch_get_collection, params)
      req.send_request(options)
    end

    # Returns a list of successful and failed retrievals for the OpenSearch
    # Serverless indexes. For more information, see [Viewing data lifecycle
    # policies][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-lifecycle.html#serverless-lifecycle-list
    #
    # @option params [required, Array<Types::LifecyclePolicyResourceIdentifier>] :resource_identifiers
    #   The unique identifiers of policy types and resource names.
    #
    # @return [Types::BatchGetEffectiveLifecyclePolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchGetEffectiveLifecyclePolicyResponse#effective_lifecycle_policy_details #effective_lifecycle_policy_details} => Array&lt;Types::EffectiveLifecyclePolicyDetail&gt;
    #   * {Types::BatchGetEffectiveLifecyclePolicyResponse#effective_lifecycle_policy_error_details #effective_lifecycle_policy_error_details} => Array&lt;Types::EffectiveLifecyclePolicyErrorDetail&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_effective_lifecycle_policy({
    #     resource_identifiers: [ # required
    #       {
    #         type: "retention", # required, accepts retention
    #         resource: "ResourceName", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.effective_lifecycle_policy_details #=> Array
    #   resp.effective_lifecycle_policy_details[0].type #=> String, one of "retention"
    #   resp.effective_lifecycle_policy_details[0].resource #=> String
    #   resp.effective_lifecycle_policy_details[0].policy_name #=> String
    #   resp.effective_lifecycle_policy_details[0].resource_type #=> String, one of "index"
    #   resp.effective_lifecycle_policy_details[0].retention_period #=> String
    #   resp.effective_lifecycle_policy_details[0].no_min_retention_period #=> Boolean
    #   resp.effective_lifecycle_policy_error_details #=> Array
    #   resp.effective_lifecycle_policy_error_details[0].type #=> String, one of "retention"
    #   resp.effective_lifecycle_policy_error_details[0].resource #=> String
    #   resp.effective_lifecycle_policy_error_details[0].error_message #=> String
    #   resp.effective_lifecycle_policy_error_details[0].error_code #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchserverless-2021-11-01/BatchGetEffectiveLifecyclePolicy AWS API Documentation
    #
    # @overload batch_get_effective_lifecycle_policy(params = {})
    # @param [Hash] params ({})
    def batch_get_effective_lifecycle_policy(params = {}, options = {})
      req = build_request(:batch_get_effective_lifecycle_policy, params)
      req.send_request(options)
    end

    # Returns one or more configured OpenSearch Serverless lifecycle
    # policies. For more information, see [Viewing data lifecycle
    # policies][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-lifecycle.html#serverless-lifecycle-list
    #
    # @option params [required, Array<Types::LifecyclePolicyIdentifier>] :identifiers
    #   The unique identifiers of policy types and policy names.
    #
    # @return [Types::BatchGetLifecyclePolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchGetLifecyclePolicyResponse#lifecycle_policy_details #lifecycle_policy_details} => Array&lt;Types::LifecyclePolicyDetail&gt;
    #   * {Types::BatchGetLifecyclePolicyResponse#lifecycle_policy_error_details #lifecycle_policy_error_details} => Array&lt;Types::LifecyclePolicyErrorDetail&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_lifecycle_policy({
    #     identifiers: [ # required
    #       {
    #         type: "retention", # required, accepts retention
    #         name: "PolicyName", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.lifecycle_policy_details #=> Array
    #   resp.lifecycle_policy_details[0].type #=> String, one of "retention"
    #   resp.lifecycle_policy_details[0].name #=> String
    #   resp.lifecycle_policy_details[0].policy_version #=> String
    #   resp.lifecycle_policy_details[0].description #=> String
    #   resp.lifecycle_policy_details[0].created_date #=> Integer
    #   resp.lifecycle_policy_details[0].last_modified_date #=> Integer
    #   resp.lifecycle_policy_error_details #=> Array
    #   resp.lifecycle_policy_error_details[0].type #=> String, one of "retention"
    #   resp.lifecycle_policy_error_details[0].name #=> String
    #   resp.lifecycle_policy_error_details[0].error_message #=> String
    #   resp.lifecycle_policy_error_details[0].error_code #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchserverless-2021-11-01/BatchGetLifecyclePolicy AWS API Documentation
    #
    # @overload batch_get_lifecycle_policy(params = {})
    # @param [Hash] params ({})
    def batch_get_lifecycle_policy(params = {}, options = {})
      req = build_request(:batch_get_lifecycle_policy, params)
      req.send_request(options)
    end

    # Returns attributes for one or more VPC endpoints associated with the
    # current account. For more information, see [Access Amazon OpenSearch
    # Serverless using an interface endpoint][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-vpc.html
    #
    # @option params [required, Array<String>] :ids
    #   A list of VPC endpoint identifiers.
    #
    # @return [Types::BatchGetVpcEndpointResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchGetVpcEndpointResponse#vpc_endpoint_details #vpc_endpoint_details} => Array&lt;Types::VpcEndpointDetail&gt;
    #   * {Types::BatchGetVpcEndpointResponse#vpc_endpoint_error_details #vpc_endpoint_error_details} => Array&lt;Types::VpcEndpointErrorDetail&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_vpc_endpoint({
    #     ids: ["VpcEndpointId"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.vpc_endpoint_details #=> Array
    #   resp.vpc_endpoint_details[0].id #=> String
    #   resp.vpc_endpoint_details[0].name #=> String
    #   resp.vpc_endpoint_details[0].vpc_id #=> String
    #   resp.vpc_endpoint_details[0].subnet_ids #=> Array
    #   resp.vpc_endpoint_details[0].subnet_ids[0] #=> String
    #   resp.vpc_endpoint_details[0].security_group_ids #=> Array
    #   resp.vpc_endpoint_details[0].security_group_ids[0] #=> String
    #   resp.vpc_endpoint_details[0].status #=> String, one of "PENDING", "DELETING", "ACTIVE", "FAILED"
    #   resp.vpc_endpoint_details[0].created_date #=> Integer
    #   resp.vpc_endpoint_details[0].failure_code #=> String
    #   resp.vpc_endpoint_details[0].failure_message #=> String
    #   resp.vpc_endpoint_error_details #=> Array
    #   resp.vpc_endpoint_error_details[0].id #=> String
    #   resp.vpc_endpoint_error_details[0].error_message #=> String
    #   resp.vpc_endpoint_error_details[0].error_code #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchserverless-2021-11-01/BatchGetVpcEndpoint AWS API Documentation
    #
    # @overload batch_get_vpc_endpoint(params = {})
    # @param [Hash] params ({})
    def batch_get_vpc_endpoint(params = {}, options = {})
      req = build_request(:batch_get_vpc_endpoint, params)
      req.send_request(options)
    end

    # Creates a data access policy for OpenSearch Serverless. Access
    # policies limit access to collections and the resources within them,
    # and allow a user to access that data irrespective of the access
    # mechanism or network source. For more information, see [Data access
    # control for Amazon OpenSearch Serverless][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-data-access.html
    #
    # @option params [required, String] :type
    #   The type of policy.
    #
    # @option params [required, String] :name
    #   The name of the policy.
    #
    # @option params [String] :description
    #   A description of the policy. Typically used to store information about
    #   the permissions defined in the policy.
    #
    # @option params [required, String] :policy
    #   The JSON policy document to use as the content for the policy.
    #
    # @option params [String] :client_token
    #   Unique, case-sensitive identifier to ensure idempotency of the
    #   request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateAccessPolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAccessPolicyResponse#access_policy_detail #access_policy_detail} => Types::AccessPolicyDetail
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_access_policy({
    #     type: "data", # required, accepts data
    #     name: "PolicyName", # required
    #     description: "PolicyDescription",
    #     policy: "PolicyDocument", # required
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.access_policy_detail.type #=> String, one of "data"
    #   resp.access_policy_detail.name #=> String
    #   resp.access_policy_detail.policy_version #=> String
    #   resp.access_policy_detail.description #=> String
    #   resp.access_policy_detail.created_date #=> Integer
    #   resp.access_policy_detail.last_modified_date #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchserverless-2021-11-01/CreateAccessPolicy AWS API Documentation
    #
    # @overload create_access_policy(params = {})
    # @param [Hash] params ({})
    def create_access_policy(params = {}, options = {})
      req = build_request(:create_access_policy, params)
      req.send_request(options)
    end

    # Creates a new OpenSearch Serverless collection. For more information,
    # see [Creating and managing Amazon OpenSearch Serverless
    # collections][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-manage.html
    #
    # @option params [required, String] :name
    #   Name of the collection.
    #
    # @option params [String] :type
    #   The type of collection.
    #
    # @option params [String] :description
    #   Description of the collection.
    #
    # @option params [Array<Types::Tag>] :tags
    #   An arbitrary set of tags (key–value pairs) to associate with the
    #   OpenSearch Serverless collection.
    #
    # @option params [String] :standby_replicas
    #   Indicates whether standby replicas should be used for a collection.
    #
    # @option params [String] :client_token
    #   Unique, case-sensitive identifier to ensure idempotency of the
    #   request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateCollectionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateCollectionResponse#create_collection_detail #create_collection_detail} => Types::CreateCollectionDetail
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_collection({
    #     name: "CollectionName", # required
    #     type: "SEARCH", # accepts SEARCH, TIMESERIES, VECTORSEARCH
    #     description: "CreateCollectionRequestDescriptionString",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     standby_replicas: "ENABLED", # accepts ENABLED, DISABLED
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.create_collection_detail.id #=> String
    #   resp.create_collection_detail.name #=> String
    #   resp.create_collection_detail.status #=> String, one of "CREATING", "DELETING", "ACTIVE", "FAILED"
    #   resp.create_collection_detail.type #=> String, one of "SEARCH", "TIMESERIES", "VECTORSEARCH"
    #   resp.create_collection_detail.description #=> String
    #   resp.create_collection_detail.arn #=> String
    #   resp.create_collection_detail.kms_key_arn #=> String
    #   resp.create_collection_detail.standby_replicas #=> String, one of "ENABLED", "DISABLED"
    #   resp.create_collection_detail.created_date #=> Integer
    #   resp.create_collection_detail.last_modified_date #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchserverless-2021-11-01/CreateCollection AWS API Documentation
    #
    # @overload create_collection(params = {})
    # @param [Hash] params ({})
    def create_collection(params = {}, options = {})
      req = build_request(:create_collection, params)
      req.send_request(options)
    end

    # Creates an index within an OpenSearch Serverless collection. Unlike
    # other OpenSearch indexes, indexes created by this API are
    # automatically configured to conduct automatic semantic enrichment
    # ingestion and search. For more information, see [About automatic
    # semantic enrichment][1] in the *OpenSearch User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-manage.html#serverless-semantic-enrichment
    #
    # @option params [required, String] :id
    #   The unique identifier of the collection in which to create the index.
    #
    # @option params [required, String] :index_name
    #   The name of the index to create. Index names must be lowercase and
    #   can't begin with underscores (\_) or hyphens (-).
    #
    # @option params [Hash,Array,String,Numeric,Boolean] :index_schema
    #   The JSON schema definition for the index, including field mappings and
    #   settings.
    #
    #   Document type used to carry open content
    #   (Hash,Array,String,Numeric,Boolean). A document type value is
    #   serialized using the same format as its surroundings and requires no
    #   additional encoding or escaping.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_index({
    #     id: "CollectionId", # required
    #     index_name: "IndexName", # required
    #     index_schema: {
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchserverless-2021-11-01/CreateIndex AWS API Documentation
    #
    # @overload create_index(params = {})
    # @param [Hash] params ({})
    def create_index(params = {}, options = {})
      req = build_request(:create_index, params)
      req.send_request(options)
    end

    # Creates a lifecyle policy to be applied to OpenSearch Serverless
    # indexes. Lifecycle policies define the number of days or hours to
    # retain the data on an OpenSearch Serverless index. For more
    # information, see [Creating data lifecycle policies][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-lifecycle.html#serverless-lifecycle-create
    #
    # @option params [required, String] :type
    #   The type of lifecycle policy.
    #
    # @option params [required, String] :name
    #   The name of the lifecycle policy.
    #
    # @option params [String] :description
    #   A description of the lifecycle policy.
    #
    # @option params [required, String] :policy
    #   The JSON policy document to use as the content for the lifecycle
    #   policy.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier to ensure idempotency of the
    #   request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateLifecyclePolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateLifecyclePolicyResponse#lifecycle_policy_detail #lifecycle_policy_detail} => Types::LifecyclePolicyDetail
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_lifecycle_policy({
    #     type: "retention", # required, accepts retention
    #     name: "PolicyName", # required
    #     description: "PolicyDescription",
    #     policy: "PolicyDocument", # required
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.lifecycle_policy_detail.type #=> String, one of "retention"
    #   resp.lifecycle_policy_detail.name #=> String
    #   resp.lifecycle_policy_detail.policy_version #=> String
    #   resp.lifecycle_policy_detail.description #=> String
    #   resp.lifecycle_policy_detail.created_date #=> Integer
    #   resp.lifecycle_policy_detail.last_modified_date #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchserverless-2021-11-01/CreateLifecyclePolicy AWS API Documentation
    #
    # @overload create_lifecycle_policy(params = {})
    # @param [Hash] params ({})
    def create_lifecycle_policy(params = {}, options = {})
      req = build_request(:create_lifecycle_policy, params)
      req.send_request(options)
    end

    # Specifies a security configuration for OpenSearch Serverless. For more
    # information, see [SAML authentication for Amazon OpenSearch
    # Serverless][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-saml.html
    #
    # @option params [required, String] :type
    #   The type of security configuration.
    #
    # @option params [required, String] :name
    #   The name of the security configuration.
    #
    # @option params [String] :description
    #   A description of the security configuration.
    #
    # @option params [Types::SamlConfigOptions] :saml_options
    #   Describes SAML options in in the form of a key-value map. This field
    #   is required if you specify `SAML` for the `type` parameter.
    #
    # @option params [Types::CreateIamIdentityCenterConfigOptions] :iam_identity_center_options
    #   Describes IAM Identity Center options in the form of a key-value map.
    #   This field is required if you specify iamidentitycenter for the type
    #   parameter.
    #
    # @option params [Types::IamFederationConfigOptions] :iam_federation_options
    #   Describes IAM federation options in the form of a key-value map. This
    #   field is required if you specify `iamFederation` for the `type`
    #   parameter.
    #
    # @option params [String] :client_token
    #   Unique, case-sensitive identifier to ensure idempotency of the
    #   request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateSecurityConfigResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateSecurityConfigResponse#security_config_detail #security_config_detail} => Types::SecurityConfigDetail
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_security_config({
    #     type: "saml", # required, accepts saml, iamidentitycenter, iamfederation
    #     name: "ConfigName", # required
    #     description: "ConfigDescription",
    #     saml_options: {
    #       metadata: "samlMetadata", # required
    #       user_attribute: "samlUserAttribute",
    #       group_attribute: "samlGroupAttribute",
    #       open_search_serverless_entity_id: "openSearchServerlessEntityId",
    #       session_timeout: 1,
    #     },
    #     iam_identity_center_options: {
    #       instance_arn: "IamIdentityCenterInstanceArn", # required
    #       user_attribute: "UserId", # accepts UserId, UserName, Email
    #       group_attribute: "GroupId", # accepts GroupId, GroupName
    #     },
    #     iam_federation_options: {
    #       group_attribute: "iamFederationGroupAttribute",
    #       user_attribute: "iamFederationUserAttribute",
    #     },
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.security_config_detail.id #=> String
    #   resp.security_config_detail.type #=> String, one of "saml", "iamidentitycenter", "iamfederation"
    #   resp.security_config_detail.config_version #=> String
    #   resp.security_config_detail.description #=> String
    #   resp.security_config_detail.saml_options.metadata #=> String
    #   resp.security_config_detail.saml_options.user_attribute #=> String
    #   resp.security_config_detail.saml_options.group_attribute #=> String
    #   resp.security_config_detail.saml_options.open_search_serverless_entity_id #=> String
    #   resp.security_config_detail.saml_options.session_timeout #=> Integer
    #   resp.security_config_detail.iam_identity_center_options.instance_arn #=> String
    #   resp.security_config_detail.iam_identity_center_options.application_arn #=> String
    #   resp.security_config_detail.iam_identity_center_options.application_name #=> String
    #   resp.security_config_detail.iam_identity_center_options.application_description #=> String
    #   resp.security_config_detail.iam_identity_center_options.user_attribute #=> String, one of "UserId", "UserName", "Email"
    #   resp.security_config_detail.iam_identity_center_options.group_attribute #=> String, one of "GroupId", "GroupName"
    #   resp.security_config_detail.iam_federation_options.group_attribute #=> String
    #   resp.security_config_detail.iam_federation_options.user_attribute #=> String
    #   resp.security_config_detail.created_date #=> Integer
    #   resp.security_config_detail.last_modified_date #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchserverless-2021-11-01/CreateSecurityConfig AWS API Documentation
    #
    # @overload create_security_config(params = {})
    # @param [Hash] params ({})
    def create_security_config(params = {}, options = {})
      req = build_request(:create_security_config, params)
      req.send_request(options)
    end

    # Creates a security policy to be used by one or more OpenSearch
    # Serverless collections. Security policies provide access to a
    # collection and its OpenSearch Dashboards endpoint from public networks
    # or specific VPC endpoints. They also allow you to secure a collection
    # with a KMS encryption key. For more information, see [Network access
    # for Amazon OpenSearch Serverless][1] and [Encryption at rest for
    # Amazon OpenSearch Serverless][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-network.html
    # [2]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-encryption.html
    #
    # @option params [required, String] :type
    #   The type of security policy.
    #
    # @option params [required, String] :name
    #   The name of the policy.
    #
    # @option params [String] :description
    #   A description of the policy. Typically used to store information about
    #   the permissions defined in the policy.
    #
    # @option params [required, String] :policy
    #   The JSON policy document to use as the content for the new policy.
    #
    # @option params [String] :client_token
    #   Unique, case-sensitive identifier to ensure idempotency of the
    #   request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateSecurityPolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateSecurityPolicyResponse#security_policy_detail #security_policy_detail} => Types::SecurityPolicyDetail
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_security_policy({
    #     type: "encryption", # required, accepts encryption, network
    #     name: "PolicyName", # required
    #     description: "PolicyDescription",
    #     policy: "PolicyDocument", # required
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.security_policy_detail.type #=> String, one of "encryption", "network"
    #   resp.security_policy_detail.name #=> String
    #   resp.security_policy_detail.policy_version #=> String
    #   resp.security_policy_detail.description #=> String
    #   resp.security_policy_detail.created_date #=> Integer
    #   resp.security_policy_detail.last_modified_date #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchserverless-2021-11-01/CreateSecurityPolicy AWS API Documentation
    #
    # @overload create_security_policy(params = {})
    # @param [Hash] params ({})
    def create_security_policy(params = {}, options = {})
      req = build_request(:create_security_policy, params)
      req.send_request(options)
    end

    # Creates an OpenSearch Serverless-managed interface VPC endpoint. For
    # more information, see [Access Amazon OpenSearch Serverless using an
    # interface endpoint][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-vpc.html
    #
    # @option params [required, String] :name
    #   The name of the interface endpoint.
    #
    # @option params [required, String] :vpc_id
    #   The ID of the VPC from which you'll access OpenSearch Serverless.
    #
    # @option params [required, Array<String>] :subnet_ids
    #   The ID of one or more subnets from which you'll access OpenSearch
    #   Serverless.
    #
    # @option params [Array<String>] :security_group_ids
    #   The unique identifiers of the security groups that define the ports,
    #   protocols, and sources for inbound traffic that you are authorizing
    #   into your endpoint.
    #
    # @option params [String] :client_token
    #   Unique, case-sensitive identifier to ensure idempotency of the
    #   request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateVpcEndpointResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateVpcEndpointResponse#create_vpc_endpoint_detail #create_vpc_endpoint_detail} => Types::CreateVpcEndpointDetail
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_vpc_endpoint({
    #     name: "VpcEndpointName", # required
    #     vpc_id: "VpcId", # required
    #     subnet_ids: ["SubnetId"], # required
    #     security_group_ids: ["SecurityGroupId"],
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.create_vpc_endpoint_detail.id #=> String
    #   resp.create_vpc_endpoint_detail.name #=> String
    #   resp.create_vpc_endpoint_detail.status #=> String, one of "PENDING", "DELETING", "ACTIVE", "FAILED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchserverless-2021-11-01/CreateVpcEndpoint AWS API Documentation
    #
    # @overload create_vpc_endpoint(params = {})
    # @param [Hash] params ({})
    def create_vpc_endpoint(params = {}, options = {})
      req = build_request(:create_vpc_endpoint, params)
      req.send_request(options)
    end

    # Deletes an OpenSearch Serverless access policy. For more information,
    # see [Data access control for Amazon OpenSearch Serverless][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-data-access.html
    #
    # @option params [required, String] :type
    #   The type of policy.
    #
    # @option params [required, String] :name
    #   The name of the policy to delete.
    #
    # @option params [String] :client_token
    #   Unique, case-sensitive identifier to ensure idempotency of the
    #   request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_access_policy({
    #     type: "data", # required, accepts data
    #     name: "PolicyName", # required
    #     client_token: "ClientToken",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchserverless-2021-11-01/DeleteAccessPolicy AWS API Documentation
    #
    # @overload delete_access_policy(params = {})
    # @param [Hash] params ({})
    def delete_access_policy(params = {}, options = {})
      req = build_request(:delete_access_policy, params)
      req.send_request(options)
    end

    # Deletes an OpenSearch Serverless collection. For more information, see
    # [Creating and managing Amazon OpenSearch Serverless collections][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-manage.html
    #
    # @option params [required, String] :id
    #   The unique identifier of the collection. For example, `1iu5usc406kd`.
    #   The ID is part of the collection endpoint. You can also retrieve it
    #   using the [ListCollections][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/opensearch-service/latest/ServerlessAPIReference/API_ListCollections.html
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier to ensure idempotency of the
    #   request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::DeleteCollectionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteCollectionResponse#delete_collection_detail #delete_collection_detail} => Types::DeleteCollectionDetail
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_collection({
    #     id: "CollectionId", # required
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.delete_collection_detail.id #=> String
    #   resp.delete_collection_detail.name #=> String
    #   resp.delete_collection_detail.status #=> String, one of "CREATING", "DELETING", "ACTIVE", "FAILED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchserverless-2021-11-01/DeleteCollection AWS API Documentation
    #
    # @overload delete_collection(params = {})
    # @param [Hash] params ({})
    def delete_collection(params = {}, options = {})
      req = build_request(:delete_collection, params)
      req.send_request(options)
    end

    # Deletes an index from an OpenSearch Serverless collection. Be aware
    # that the index might be configured to conduct automatic semantic
    # enrichment ingestion and search. For more information, see [About
    # automatic semantic enrichment][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-manage.html#serverless-semantic-enrichment
    #
    # @option params [required, String] :id
    #   The unique identifier of the collection containing the index to
    #   delete.
    #
    # @option params [required, String] :index_name
    #   The name of the index to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_index({
    #     id: "CollectionId", # required
    #     index_name: "IndexName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchserverless-2021-11-01/DeleteIndex AWS API Documentation
    #
    # @overload delete_index(params = {})
    # @param [Hash] params ({})
    def delete_index(params = {}, options = {})
      req = build_request(:delete_index, params)
      req.send_request(options)
    end

    # Deletes an OpenSearch Serverless lifecycle policy. For more
    # information, see [Deleting data lifecycle policies][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-lifecycle.html#serverless-lifecycle-delete
    #
    # @option params [required, String] :type
    #   The type of lifecycle policy.
    #
    # @option params [required, String] :name
    #   The name of the policy to delete.
    #
    # @option params [String] :client_token
    #   Unique, case-sensitive identifier to ensure idempotency of the
    #   request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_lifecycle_policy({
    #     type: "retention", # required, accepts retention
    #     name: "PolicyName", # required
    #     client_token: "ClientToken",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchserverless-2021-11-01/DeleteLifecyclePolicy AWS API Documentation
    #
    # @overload delete_lifecycle_policy(params = {})
    # @param [Hash] params ({})
    def delete_lifecycle_policy(params = {}, options = {})
      req = build_request(:delete_lifecycle_policy, params)
      req.send_request(options)
    end

    # Deletes a security configuration for OpenSearch Serverless. For more
    # information, see [SAML authentication for Amazon OpenSearch
    # Serverless][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-saml.html
    #
    # @option params [required, String] :id
    #   The security configuration identifier. For SAML the ID will be
    #   `saml/<accountId>/<idpProviderName>`. For example,
    #   `saml/123456789123/OKTADev`.
    #
    # @option params [String] :client_token
    #   Unique, case-sensitive identifier to ensure idempotency of the
    #   request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_security_config({
    #     id: "SecurityConfigId", # required
    #     client_token: "ClientToken",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchserverless-2021-11-01/DeleteSecurityConfig AWS API Documentation
    #
    # @overload delete_security_config(params = {})
    # @param [Hash] params ({})
    def delete_security_config(params = {}, options = {})
      req = build_request(:delete_security_config, params)
      req.send_request(options)
    end

    # Deletes an OpenSearch Serverless security policy.
    #
    # @option params [required, String] :type
    #   The type of policy.
    #
    # @option params [required, String] :name
    #   The name of the policy to delete.
    #
    # @option params [String] :client_token
    #   Unique, case-sensitive identifier to ensure idempotency of the
    #   request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_security_policy({
    #     type: "encryption", # required, accepts encryption, network
    #     name: "PolicyName", # required
    #     client_token: "ClientToken",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchserverless-2021-11-01/DeleteSecurityPolicy AWS API Documentation
    #
    # @overload delete_security_policy(params = {})
    # @param [Hash] params ({})
    def delete_security_policy(params = {}, options = {})
      req = build_request(:delete_security_policy, params)
      req.send_request(options)
    end

    # Deletes an OpenSearch Serverless-managed interface endpoint. For more
    # information, see [Access Amazon OpenSearch Serverless using an
    # interface endpoint][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-vpc.html
    #
    # @option params [required, String] :id
    #   The VPC endpoint identifier.
    #
    # @option params [String] :client_token
    #   Unique, case-sensitive identifier to ensure idempotency of the
    #   request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::DeleteVpcEndpointResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteVpcEndpointResponse#delete_vpc_endpoint_detail #delete_vpc_endpoint_detail} => Types::DeleteVpcEndpointDetail
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_vpc_endpoint({
    #     id: "VpcEndpointId", # required
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.delete_vpc_endpoint_detail.id #=> String
    #   resp.delete_vpc_endpoint_detail.name #=> String
    #   resp.delete_vpc_endpoint_detail.status #=> String, one of "PENDING", "DELETING", "ACTIVE", "FAILED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchserverless-2021-11-01/DeleteVpcEndpoint AWS API Documentation
    #
    # @overload delete_vpc_endpoint(params = {})
    # @param [Hash] params ({})
    def delete_vpc_endpoint(params = {}, options = {})
      req = build_request(:delete_vpc_endpoint, params)
      req.send_request(options)
    end

    # Returns an OpenSearch Serverless access policy. For more information,
    # see [Data access control for Amazon OpenSearch Serverless][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-data-access.html
    #
    # @option params [required, String] :type
    #   Tye type of policy. Currently, the only supported value is `data`.
    #
    # @option params [required, String] :name
    #   The name of the access policy.
    #
    # @return [Types::GetAccessPolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAccessPolicyResponse#access_policy_detail #access_policy_detail} => Types::AccessPolicyDetail
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_access_policy({
    #     type: "data", # required, accepts data
    #     name: "PolicyName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.access_policy_detail.type #=> String, one of "data"
    #   resp.access_policy_detail.name #=> String
    #   resp.access_policy_detail.policy_version #=> String
    #   resp.access_policy_detail.description #=> String
    #   resp.access_policy_detail.created_date #=> Integer
    #   resp.access_policy_detail.last_modified_date #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchserverless-2021-11-01/GetAccessPolicy AWS API Documentation
    #
    # @overload get_access_policy(params = {})
    # @param [Hash] params ({})
    def get_access_policy(params = {}, options = {})
      req = build_request(:get_access_policy, params)
      req.send_request(options)
    end

    # Returns account-level settings related to OpenSearch Serverless.
    #
    # @return [Types::GetAccountSettingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAccountSettingsResponse#account_settings_detail #account_settings_detail} => Types::AccountSettingsDetail
    #
    # @example Response structure
    #
    #   resp.account_settings_detail.capacity_limits.max_indexing_capacity_in_ocu #=> Integer
    #   resp.account_settings_detail.capacity_limits.max_search_capacity_in_ocu #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchserverless-2021-11-01/GetAccountSettings AWS API Documentation
    #
    # @overload get_account_settings(params = {})
    # @param [Hash] params ({})
    def get_account_settings(params = {}, options = {})
      req = build_request(:get_account_settings, params)
      req.send_request(options)
    end

    # Retrieves information about an index in an OpenSearch Serverless
    # collection, including its schema definition. The index might be
    # configured to conduct automatic semantic enrichment ingestion and
    # search. For more information, see [About automatic semantic
    # enrichment][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-manage.html#serverless-semantic-enrichment
    #
    # @option params [required, String] :id
    #   The unique identifier of the collection containing the index.
    #
    # @option params [required, String] :index_name
    #   The name of the index to retrieve information about.
    #
    # @return [Types::GetIndexResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetIndexResponse#index_schema #index_schema} => Hash,Array,String,Numeric,Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_index({
    #     id: "CollectionId", # required
    #     index_name: "IndexName", # required
    #   })
    #
    # @example Response structure
    #
    #
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchserverless-2021-11-01/GetIndex AWS API Documentation
    #
    # @overload get_index(params = {})
    # @param [Hash] params ({})
    def get_index(params = {}, options = {})
      req = build_request(:get_index, params)
      req.send_request(options)
    end

    # Returns statistical information about your OpenSearch Serverless
    # access policies, security configurations, and security policies.
    #
    # @return [Types::GetPoliciesStatsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetPoliciesStatsResponse#access_policy_stats #access_policy_stats} => Types::AccessPolicyStats
    #   * {Types::GetPoliciesStatsResponse#security_policy_stats #security_policy_stats} => Types::SecurityPolicyStats
    #   * {Types::GetPoliciesStatsResponse#security_config_stats #security_config_stats} => Types::SecurityConfigStats
    #   * {Types::GetPoliciesStatsResponse#lifecycle_policy_stats #lifecycle_policy_stats} => Types::LifecyclePolicyStats
    #   * {Types::GetPoliciesStatsResponse#total_policy_count #total_policy_count} => Integer
    #
    # @example Response structure
    #
    #   resp.access_policy_stats.data_policy_count #=> Integer
    #   resp.security_policy_stats.encryption_policy_count #=> Integer
    #   resp.security_policy_stats.network_policy_count #=> Integer
    #   resp.security_config_stats.saml_config_count #=> Integer
    #   resp.lifecycle_policy_stats.retention_policy_count #=> Integer
    #   resp.total_policy_count #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchserverless-2021-11-01/GetPoliciesStats AWS API Documentation
    #
    # @overload get_policies_stats(params = {})
    # @param [Hash] params ({})
    def get_policies_stats(params = {}, options = {})
      req = build_request(:get_policies_stats, params)
      req.send_request(options)
    end

    # Returns information about an OpenSearch Serverless security
    # configuration. For more information, see [SAML authentication for
    # Amazon OpenSearch Serverless][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-saml.html
    #
    # @option params [required, String] :id
    #   The unique identifier of the security configuration.
    #
    # @return [Types::GetSecurityConfigResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSecurityConfigResponse#security_config_detail #security_config_detail} => Types::SecurityConfigDetail
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_security_config({
    #     id: "SecurityConfigId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.security_config_detail.id #=> String
    #   resp.security_config_detail.type #=> String, one of "saml", "iamidentitycenter", "iamfederation"
    #   resp.security_config_detail.config_version #=> String
    #   resp.security_config_detail.description #=> String
    #   resp.security_config_detail.saml_options.metadata #=> String
    #   resp.security_config_detail.saml_options.user_attribute #=> String
    #   resp.security_config_detail.saml_options.group_attribute #=> String
    #   resp.security_config_detail.saml_options.open_search_serverless_entity_id #=> String
    #   resp.security_config_detail.saml_options.session_timeout #=> Integer
    #   resp.security_config_detail.iam_identity_center_options.instance_arn #=> String
    #   resp.security_config_detail.iam_identity_center_options.application_arn #=> String
    #   resp.security_config_detail.iam_identity_center_options.application_name #=> String
    #   resp.security_config_detail.iam_identity_center_options.application_description #=> String
    #   resp.security_config_detail.iam_identity_center_options.user_attribute #=> String, one of "UserId", "UserName", "Email"
    #   resp.security_config_detail.iam_identity_center_options.group_attribute #=> String, one of "GroupId", "GroupName"
    #   resp.security_config_detail.iam_federation_options.group_attribute #=> String
    #   resp.security_config_detail.iam_federation_options.user_attribute #=> String
    #   resp.security_config_detail.created_date #=> Integer
    #   resp.security_config_detail.last_modified_date #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchserverless-2021-11-01/GetSecurityConfig AWS API Documentation
    #
    # @overload get_security_config(params = {})
    # @param [Hash] params ({})
    def get_security_config(params = {}, options = {})
      req = build_request(:get_security_config, params)
      req.send_request(options)
    end

    # Returns information about a configured OpenSearch Serverless security
    # policy. For more information, see [Network access for Amazon
    # OpenSearch Serverless][1] and [Encryption at rest for Amazon
    # OpenSearch Serverless][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-network.html
    # [2]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-encryption.html
    #
    # @option params [required, String] :type
    #   The type of security policy.
    #
    # @option params [required, String] :name
    #   The name of the security policy.
    #
    # @return [Types::GetSecurityPolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSecurityPolicyResponse#security_policy_detail #security_policy_detail} => Types::SecurityPolicyDetail
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_security_policy({
    #     type: "encryption", # required, accepts encryption, network
    #     name: "PolicyName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.security_policy_detail.type #=> String, one of "encryption", "network"
    #   resp.security_policy_detail.name #=> String
    #   resp.security_policy_detail.policy_version #=> String
    #   resp.security_policy_detail.description #=> String
    #   resp.security_policy_detail.created_date #=> Integer
    #   resp.security_policy_detail.last_modified_date #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchserverless-2021-11-01/GetSecurityPolicy AWS API Documentation
    #
    # @overload get_security_policy(params = {})
    # @param [Hash] params ({})
    def get_security_policy(params = {}, options = {})
      req = build_request(:get_security_policy, params)
      req.send_request(options)
    end

    # Returns information about a list of OpenSearch Serverless access
    # policies.
    #
    # @option params [required, String] :type
    #   The type of access policy.
    #
    # @option params [Array<String>] :resource
    #   Resource filters (can be collections or indexes) that policies can
    #   apply to.
    #
    # @option params [String] :next_token
    #   If your initial `ListAccessPolicies` operation returns a `nextToken`,
    #   you can include the returned `nextToken` in subsequent
    #   `ListAccessPolicies` operations, which returns results in the next
    #   page.
    #
    # @option params [Integer] :max_results
    #   An optional parameter that specifies the maximum number of results to
    #   return. You can use `nextToken` to get the next page of results. The
    #   default is 20.
    #
    # @return [Types::ListAccessPoliciesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAccessPoliciesResponse#access_policy_summaries #access_policy_summaries} => Array&lt;Types::AccessPolicySummary&gt;
    #   * {Types::ListAccessPoliciesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_access_policies({
    #     type: "data", # required, accepts data
    #     resource: ["Resource"],
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.access_policy_summaries #=> Array
    #   resp.access_policy_summaries[0].type #=> String, one of "data"
    #   resp.access_policy_summaries[0].name #=> String
    #   resp.access_policy_summaries[0].policy_version #=> String
    #   resp.access_policy_summaries[0].description #=> String
    #   resp.access_policy_summaries[0].created_date #=> Integer
    #   resp.access_policy_summaries[0].last_modified_date #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchserverless-2021-11-01/ListAccessPolicies AWS API Documentation
    #
    # @overload list_access_policies(params = {})
    # @param [Hash] params ({})
    def list_access_policies(params = {}, options = {})
      req = build_request(:list_access_policies, params)
      req.send_request(options)
    end

    # Lists all OpenSearch Serverless collections. For more information, see
    # [Creating and managing Amazon OpenSearch Serverless collections][1].
    #
    # <note markdown="1"> Make sure to include an empty request body \{} if you don't include
    # any collection filters in the request.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-manage.html
    #
    # @option params [Types::CollectionFilters] :collection_filters
    #   A list of filter names and values that you can use for requests.
    #
    # @option params [String] :next_token
    #   If your initial `ListCollections` operation returns a `nextToken`, you
    #   can include the returned `nextToken` in subsequent `ListCollections`
    #   operations, which returns results in the next page.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return. Default is 20. You can use
    #   `nextToken` to get the next page of results.
    #
    # @return [Types::ListCollectionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListCollectionsResponse#collection_summaries #collection_summaries} => Array&lt;Types::CollectionSummary&gt;
    #   * {Types::ListCollectionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_collections({
    #     collection_filters: {
    #       name: "CollectionName",
    #       status: "CREATING", # accepts CREATING, DELETING, ACTIVE, FAILED
    #     },
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.collection_summaries #=> Array
    #   resp.collection_summaries[0].id #=> String
    #   resp.collection_summaries[0].name #=> String
    #   resp.collection_summaries[0].status #=> String, one of "CREATING", "DELETING", "ACTIVE", "FAILED"
    #   resp.collection_summaries[0].arn #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchserverless-2021-11-01/ListCollections AWS API Documentation
    #
    # @overload list_collections(params = {})
    # @param [Hash] params ({})
    def list_collections(params = {}, options = {})
      req = build_request(:list_collections, params)
      req.send_request(options)
    end

    # Returns a list of OpenSearch Serverless lifecycle policies. For more
    # information, see [Viewing data lifecycle policies][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-lifecycle.html#serverless-lifecycle-list
    #
    # @option params [required, String] :type
    #   The type of lifecycle policy.
    #
    # @option params [Array<String>] :resources
    #   Resource filters that policies can apply to. Currently, the only
    #   supported resource type is `index`.
    #
    # @option params [String] :next_token
    #   If your initial `ListLifecyclePolicies` operation returns a
    #   `nextToken`, you can include the returned `nextToken` in subsequent
    #   `ListLifecyclePolicies` operations, which returns results in the next
    #   page.
    #
    # @option params [Integer] :max_results
    #   An optional parameter that specifies the maximum number of results to
    #   return. You can use use `nextToken` to get the next page of results.
    #   The default is 10.
    #
    # @return [Types::ListLifecyclePoliciesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListLifecyclePoliciesResponse#lifecycle_policy_summaries #lifecycle_policy_summaries} => Array&lt;Types::LifecyclePolicySummary&gt;
    #   * {Types::ListLifecyclePoliciesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_lifecycle_policies({
    #     type: "retention", # required, accepts retention
    #     resources: ["LifecycleResource"],
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.lifecycle_policy_summaries #=> Array
    #   resp.lifecycle_policy_summaries[0].type #=> String, one of "retention"
    #   resp.lifecycle_policy_summaries[0].name #=> String
    #   resp.lifecycle_policy_summaries[0].policy_version #=> String
    #   resp.lifecycle_policy_summaries[0].description #=> String
    #   resp.lifecycle_policy_summaries[0].created_date #=> Integer
    #   resp.lifecycle_policy_summaries[0].last_modified_date #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchserverless-2021-11-01/ListLifecyclePolicies AWS API Documentation
    #
    # @overload list_lifecycle_policies(params = {})
    # @param [Hash] params ({})
    def list_lifecycle_policies(params = {}, options = {})
      req = build_request(:list_lifecycle_policies, params)
      req.send_request(options)
    end

    # Returns information about configured OpenSearch Serverless security
    # configurations. For more information, see [SAML authentication for
    # Amazon OpenSearch Serverless][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-saml.html
    #
    # @option params [required, String] :type
    #   The type of security configuration.
    #
    # @option params [String] :next_token
    #   If your initial `ListSecurityConfigs` operation returns a `nextToken`,
    #   you can include the returned `nextToken` in subsequent
    #   `ListSecurityConfigs` operations, which returns results in the next
    #   page.
    #
    # @option params [Integer] :max_results
    #   An optional parameter that specifies the maximum number of results to
    #   return. You can use `nextToken` to get the next page of results. The
    #   default is 20.
    #
    # @return [Types::ListSecurityConfigsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSecurityConfigsResponse#security_config_summaries #security_config_summaries} => Array&lt;Types::SecurityConfigSummary&gt;
    #   * {Types::ListSecurityConfigsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_security_configs({
    #     type: "saml", # required, accepts saml, iamidentitycenter, iamfederation
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.security_config_summaries #=> Array
    #   resp.security_config_summaries[0].id #=> String
    #   resp.security_config_summaries[0].type #=> String, one of "saml", "iamidentitycenter", "iamfederation"
    #   resp.security_config_summaries[0].config_version #=> String
    #   resp.security_config_summaries[0].description #=> String
    #   resp.security_config_summaries[0].created_date #=> Integer
    #   resp.security_config_summaries[0].last_modified_date #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchserverless-2021-11-01/ListSecurityConfigs AWS API Documentation
    #
    # @overload list_security_configs(params = {})
    # @param [Hash] params ({})
    def list_security_configs(params = {}, options = {})
      req = build_request(:list_security_configs, params)
      req.send_request(options)
    end

    # Returns information about configured OpenSearch Serverless security
    # policies.
    #
    # @option params [required, String] :type
    #   The type of policy.
    #
    # @option params [Array<String>] :resource
    #   Resource filters (can be collection or indexes) that policies can
    #   apply to.
    #
    # @option params [String] :next_token
    #   If your initial `ListSecurityPolicies` operation returns a
    #   `nextToken`, you can include the returned `nextToken` in subsequent
    #   `ListSecurityPolicies` operations, which returns results in the next
    #   page.
    #
    # @option params [Integer] :max_results
    #   An optional parameter that specifies the maximum number of results to
    #   return. You can use `nextToken` to get the next page of results. The
    #   default is 20.
    #
    # @return [Types::ListSecurityPoliciesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSecurityPoliciesResponse#security_policy_summaries #security_policy_summaries} => Array&lt;Types::SecurityPolicySummary&gt;
    #   * {Types::ListSecurityPoliciesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_security_policies({
    #     type: "encryption", # required, accepts encryption, network
    #     resource: ["Resource"],
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.security_policy_summaries #=> Array
    #   resp.security_policy_summaries[0].type #=> String, one of "encryption", "network"
    #   resp.security_policy_summaries[0].name #=> String
    #   resp.security_policy_summaries[0].policy_version #=> String
    #   resp.security_policy_summaries[0].description #=> String
    #   resp.security_policy_summaries[0].created_date #=> Integer
    #   resp.security_policy_summaries[0].last_modified_date #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchserverless-2021-11-01/ListSecurityPolicies AWS API Documentation
    #
    # @overload list_security_policies(params = {})
    # @param [Hash] params ({})
    def list_security_policies(params = {}, options = {})
      req = build_request(:list_security_policies, params)
      req.send_request(options)
    end

    # Returns the tags for an OpenSearch Serverless resource. For more
    # information, see [Tagging Amazon OpenSearch Serverless
    # collections][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/tag-collection.html
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource. The resource must be
    #   active (not in the `DELETING` state), and must be owned by the account
    #   ID included in the request.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Array&lt;Types::Tag&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchserverless-2021-11-01/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Returns the OpenSearch Serverless-managed interface VPC endpoints
    # associated with the current account. For more information, see [Access
    # Amazon OpenSearch Serverless using an interface endpoint][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-vpc.html
    #
    # @option params [Types::VpcEndpointFilters] :vpc_endpoint_filters
    #   Filter the results according to the current status of the VPC
    #   endpoint. Possible statuses are `CREATING`, `DELETING`, `UPDATING`,
    #   `ACTIVE`, and `FAILED`.
    #
    # @option params [String] :next_token
    #   If your initial `ListVpcEndpoints` operation returns a `nextToken`,
    #   you can include the returned `nextToken` in subsequent
    #   `ListVpcEndpoints` operations, which returns results in the next page.
    #
    # @option params [Integer] :max_results
    #   An optional parameter that specifies the maximum number of results to
    #   return. You can use `nextToken` to get the next page of results. The
    #   default is 20.
    #
    # @return [Types::ListVpcEndpointsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListVpcEndpointsResponse#vpc_endpoint_summaries #vpc_endpoint_summaries} => Array&lt;Types::VpcEndpointSummary&gt;
    #   * {Types::ListVpcEndpointsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_vpc_endpoints({
    #     vpc_endpoint_filters: {
    #       status: "PENDING", # accepts PENDING, DELETING, ACTIVE, FAILED
    #     },
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.vpc_endpoint_summaries #=> Array
    #   resp.vpc_endpoint_summaries[0].id #=> String
    #   resp.vpc_endpoint_summaries[0].name #=> String
    #   resp.vpc_endpoint_summaries[0].status #=> String, one of "PENDING", "DELETING", "ACTIVE", "FAILED"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchserverless-2021-11-01/ListVpcEndpoints AWS API Documentation
    #
    # @overload list_vpc_endpoints(params = {})
    # @param [Hash] params ({})
    def list_vpc_endpoints(params = {}, options = {})
      req = build_request(:list_vpc_endpoints, params)
      req.send_request(options)
    end

    # Associates tags with an OpenSearch Serverless resource. For more
    # information, see [Tagging Amazon OpenSearch Serverless
    # collections][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/tag-collection.html
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource. The resource must be
    #   active (not in the `DELETING` state), and must be owned by the account
    #   ID included in the request.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   A list of tags (key-value pairs) to add to the resource. All tag keys
    #   in the request must be unique.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "Arn", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchserverless-2021-11-01/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes a tag or set of tags from an OpenSearch Serverless resource.
    # For more information, see [Tagging Amazon OpenSearch Serverless
    # collections][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/tag-collection.html
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource to remove tags from.
    #   The resource must be active (not in the `DELETING` state), and must be
    #   owned by the account ID included in the request.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The tag or set of tags to remove from the resource. All tag keys in
    #   the request must be unique.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "Arn", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchserverless-2021-11-01/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates an OpenSearch Serverless access policy. For more information,
    # see [Data access control for Amazon OpenSearch Serverless][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-data-access.html
    #
    # @option params [required, String] :type
    #   The type of policy.
    #
    # @option params [required, String] :name
    #   The name of the policy.
    #
    # @option params [required, String] :policy_version
    #   The version of the policy being updated.
    #
    # @option params [String] :description
    #   A description of the policy. Typically used to store information about
    #   the permissions defined in the policy.
    #
    # @option params [String] :policy
    #   The JSON policy document to use as the content for the policy.
    #
    # @option params [String] :client_token
    #   Unique, case-sensitive identifier to ensure idempotency of the
    #   request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::UpdateAccessPolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateAccessPolicyResponse#access_policy_detail #access_policy_detail} => Types::AccessPolicyDetail
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_access_policy({
    #     type: "data", # required, accepts data
    #     name: "PolicyName", # required
    #     policy_version: "PolicyVersion", # required
    #     description: "PolicyDescription",
    #     policy: "PolicyDocument",
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.access_policy_detail.type #=> String, one of "data"
    #   resp.access_policy_detail.name #=> String
    #   resp.access_policy_detail.policy_version #=> String
    #   resp.access_policy_detail.description #=> String
    #   resp.access_policy_detail.created_date #=> Integer
    #   resp.access_policy_detail.last_modified_date #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchserverless-2021-11-01/UpdateAccessPolicy AWS API Documentation
    #
    # @overload update_access_policy(params = {})
    # @param [Hash] params ({})
    def update_access_policy(params = {}, options = {})
      req = build_request(:update_access_policy, params)
      req.send_request(options)
    end

    # Update the OpenSearch Serverless settings for the current Amazon Web
    # Services account. For more information, see [Managing capacity limits
    # for Amazon OpenSearch Serverless][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-scaling.html
    #
    # @option params [Types::CapacityLimits] :capacity_limits
    #   The maximum capacity limits for all OpenSearch Serverless collections,
    #   in OpenSearch Compute Units (OCUs). These limits are used to scale
    #   your collections based on the current workload. For more information,
    #   see [Managing capacity limits for Amazon OpenSearch Serverless][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-scaling.html
    #
    # @return [Types::UpdateAccountSettingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateAccountSettingsResponse#account_settings_detail #account_settings_detail} => Types::AccountSettingsDetail
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_account_settings({
    #     capacity_limits: {
    #       max_indexing_capacity_in_ocu: 1,
    #       max_search_capacity_in_ocu: 1,
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.account_settings_detail.capacity_limits.max_indexing_capacity_in_ocu #=> Integer
    #   resp.account_settings_detail.capacity_limits.max_search_capacity_in_ocu #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchserverless-2021-11-01/UpdateAccountSettings AWS API Documentation
    #
    # @overload update_account_settings(params = {})
    # @param [Hash] params ({})
    def update_account_settings(params = {}, options = {})
      req = build_request(:update_account_settings, params)
      req.send_request(options)
    end

    # Updates an OpenSearch Serverless collection.
    #
    # @option params [required, String] :id
    #   The unique identifier of the collection.
    #
    # @option params [String] :description
    #   A description of the collection.
    #
    # @option params [String] :client_token
    #   Unique, case-sensitive identifier to ensure idempotency of the
    #   request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::UpdateCollectionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateCollectionResponse#update_collection_detail #update_collection_detail} => Types::UpdateCollectionDetail
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_collection({
    #     id: "CollectionId", # required
    #     description: "UpdateCollectionRequestDescriptionString",
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.update_collection_detail.id #=> String
    #   resp.update_collection_detail.name #=> String
    #   resp.update_collection_detail.status #=> String, one of "CREATING", "DELETING", "ACTIVE", "FAILED"
    #   resp.update_collection_detail.type #=> String, one of "SEARCH", "TIMESERIES", "VECTORSEARCH"
    #   resp.update_collection_detail.description #=> String
    #   resp.update_collection_detail.arn #=> String
    #   resp.update_collection_detail.created_date #=> Integer
    #   resp.update_collection_detail.last_modified_date #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchserverless-2021-11-01/UpdateCollection AWS API Documentation
    #
    # @overload update_collection(params = {})
    # @param [Hash] params ({})
    def update_collection(params = {}, options = {})
      req = build_request(:update_collection, params)
      req.send_request(options)
    end

    # Updates an existing index in an OpenSearch Serverless collection. This
    # operation allows you to modify the index schema, including adding new
    # fields or changing field mappings. You can also enable automatic
    # semantic enrichment ingestion and search. For more information, see
    # [About automatic semantic enrichment][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-manage.html#serverless-semantic-enrichment
    #
    # @option params [required, String] :id
    #   The unique identifier of the collection containing the index to
    #   update.
    #
    # @option params [required, String] :index_name
    #   The name of the index to update.
    #
    # @option params [Hash,Array,String,Numeric,Boolean] :index_schema
    #   The updated JSON schema definition for the index, including field
    #   mappings and settings.
    #
    #   Document type used to carry open content
    #   (Hash,Array,String,Numeric,Boolean). A document type value is
    #   serialized using the same format as its surroundings and requires no
    #   additional encoding or escaping.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_index({
    #     id: "CollectionId", # required
    #     index_name: "IndexName", # required
    #     index_schema: {
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchserverless-2021-11-01/UpdateIndex AWS API Documentation
    #
    # @overload update_index(params = {})
    # @param [Hash] params ({})
    def update_index(params = {}, options = {})
      req = build_request(:update_index, params)
      req.send_request(options)
    end

    # Updates an OpenSearch Serverless access policy. For more information,
    # see [Updating data lifecycle policies][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-lifecycle.html#serverless-lifecycle-update
    #
    # @option params [required, String] :type
    #   The type of lifecycle policy.
    #
    # @option params [required, String] :name
    #   The name of the policy.
    #
    # @option params [required, String] :policy_version
    #   The version of the policy being updated.
    #
    # @option params [String] :description
    #   A description of the lifecycle policy.
    #
    # @option params [String] :policy
    #   The JSON policy document to use as the content for the lifecycle
    #   policy.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier to ensure idempotency of the
    #   request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::UpdateLifecyclePolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateLifecyclePolicyResponse#lifecycle_policy_detail #lifecycle_policy_detail} => Types::LifecyclePolicyDetail
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_lifecycle_policy({
    #     type: "retention", # required, accepts retention
    #     name: "PolicyName", # required
    #     policy_version: "PolicyVersion", # required
    #     description: "PolicyDescription",
    #     policy: "PolicyDocument",
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.lifecycle_policy_detail.type #=> String, one of "retention"
    #   resp.lifecycle_policy_detail.name #=> String
    #   resp.lifecycle_policy_detail.policy_version #=> String
    #   resp.lifecycle_policy_detail.description #=> String
    #   resp.lifecycle_policy_detail.created_date #=> Integer
    #   resp.lifecycle_policy_detail.last_modified_date #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchserverless-2021-11-01/UpdateLifecyclePolicy AWS API Documentation
    #
    # @overload update_lifecycle_policy(params = {})
    # @param [Hash] params ({})
    def update_lifecycle_policy(params = {}, options = {})
      req = build_request(:update_lifecycle_policy, params)
      req.send_request(options)
    end

    # Updates a security configuration for OpenSearch Serverless. For more
    # information, see [SAML authentication for Amazon OpenSearch
    # Serverless][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-saml.html
    #
    # @option params [required, String] :id
    #   The security configuration identifier. For SAML the ID will be
    #   `saml/<accountId>/<idpProviderName>`. For example,
    #   `saml/123456789123/OKTADev`.
    #
    # @option params [required, String] :config_version
    #   The version of the security configuration to be updated. You can find
    #   the most recent version of a security configuration using the
    #   `GetSecurityPolicy` command.
    #
    # @option params [String] :description
    #   A description of the security configuration.
    #
    # @option params [Types::SamlConfigOptions] :saml_options
    #   SAML options in in the form of a key-value map.
    #
    # @option params [Types::UpdateIamIdentityCenterConfigOptions] :iam_identity_center_options_updates
    #   Describes IAM Identity Center options in the form of a key-value map.
    #
    # @option params [Types::IamFederationConfigOptions] :iam_federation_options
    #   Describes IAM federation options in the form of a key-value map for
    #   updating an existing security configuration. Use this field to modify
    #   IAM federation settings for the security configuration.
    #
    # @option params [String] :client_token
    #   Unique, case-sensitive identifier to ensure idempotency of the
    #   request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::UpdateSecurityConfigResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateSecurityConfigResponse#security_config_detail #security_config_detail} => Types::SecurityConfigDetail
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_security_config({
    #     id: "SecurityConfigId", # required
    #     config_version: "PolicyVersion", # required
    #     description: "ConfigDescription",
    #     saml_options: {
    #       metadata: "samlMetadata", # required
    #       user_attribute: "samlUserAttribute",
    #       group_attribute: "samlGroupAttribute",
    #       open_search_serverless_entity_id: "openSearchServerlessEntityId",
    #       session_timeout: 1,
    #     },
    #     iam_identity_center_options_updates: {
    #       user_attribute: "UserId", # accepts UserId, UserName, Email
    #       group_attribute: "GroupId", # accepts GroupId, GroupName
    #     },
    #     iam_federation_options: {
    #       group_attribute: "iamFederationGroupAttribute",
    #       user_attribute: "iamFederationUserAttribute",
    #     },
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.security_config_detail.id #=> String
    #   resp.security_config_detail.type #=> String, one of "saml", "iamidentitycenter", "iamfederation"
    #   resp.security_config_detail.config_version #=> String
    #   resp.security_config_detail.description #=> String
    #   resp.security_config_detail.saml_options.metadata #=> String
    #   resp.security_config_detail.saml_options.user_attribute #=> String
    #   resp.security_config_detail.saml_options.group_attribute #=> String
    #   resp.security_config_detail.saml_options.open_search_serverless_entity_id #=> String
    #   resp.security_config_detail.saml_options.session_timeout #=> Integer
    #   resp.security_config_detail.iam_identity_center_options.instance_arn #=> String
    #   resp.security_config_detail.iam_identity_center_options.application_arn #=> String
    #   resp.security_config_detail.iam_identity_center_options.application_name #=> String
    #   resp.security_config_detail.iam_identity_center_options.application_description #=> String
    #   resp.security_config_detail.iam_identity_center_options.user_attribute #=> String, one of "UserId", "UserName", "Email"
    #   resp.security_config_detail.iam_identity_center_options.group_attribute #=> String, one of "GroupId", "GroupName"
    #   resp.security_config_detail.iam_federation_options.group_attribute #=> String
    #   resp.security_config_detail.iam_federation_options.user_attribute #=> String
    #   resp.security_config_detail.created_date #=> Integer
    #   resp.security_config_detail.last_modified_date #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchserverless-2021-11-01/UpdateSecurityConfig AWS API Documentation
    #
    # @overload update_security_config(params = {})
    # @param [Hash] params ({})
    def update_security_config(params = {}, options = {})
      req = build_request(:update_security_config, params)
      req.send_request(options)
    end

    # Updates an OpenSearch Serverless security policy. For more
    # information, see [Network access for Amazon OpenSearch Serverless][1]
    # and [Encryption at rest for Amazon OpenSearch Serverless][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-network.html
    # [2]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-encryption.html
    #
    # @option params [required, String] :type
    #   The type of access policy.
    #
    # @option params [required, String] :name
    #   The name of the policy.
    #
    # @option params [required, String] :policy_version
    #   The version of the policy being updated.
    #
    # @option params [String] :description
    #   A description of the policy. Typically used to store information about
    #   the permissions defined in the policy.
    #
    # @option params [String] :policy
    #   The JSON policy document to use as the content for the new policy.
    #
    # @option params [String] :client_token
    #   Unique, case-sensitive identifier to ensure idempotency of the
    #   request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::UpdateSecurityPolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateSecurityPolicyResponse#security_policy_detail #security_policy_detail} => Types::SecurityPolicyDetail
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_security_policy({
    #     type: "encryption", # required, accepts encryption, network
    #     name: "PolicyName", # required
    #     policy_version: "PolicyVersion", # required
    #     description: "PolicyDescription",
    #     policy: "PolicyDocument",
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.security_policy_detail.type #=> String, one of "encryption", "network"
    #   resp.security_policy_detail.name #=> String
    #   resp.security_policy_detail.policy_version #=> String
    #   resp.security_policy_detail.description #=> String
    #   resp.security_policy_detail.created_date #=> Integer
    #   resp.security_policy_detail.last_modified_date #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchserverless-2021-11-01/UpdateSecurityPolicy AWS API Documentation
    #
    # @overload update_security_policy(params = {})
    # @param [Hash] params ({})
    def update_security_policy(params = {}, options = {})
      req = build_request(:update_security_policy, params)
      req.send_request(options)
    end

    # Updates an OpenSearch Serverless-managed interface endpoint. For more
    # information, see [Access Amazon OpenSearch Serverless using an
    # interface endpoint][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-vpc.html
    #
    # @option params [required, String] :id
    #   The unique identifier of the interface endpoint to update.
    #
    # @option params [Array<String>] :add_subnet_ids
    #   The ID of one or more subnets to add to the endpoint.
    #
    # @option params [Array<String>] :remove_subnet_ids
    #   The unique identifiers of the subnets to remove from the endpoint.
    #
    # @option params [Array<String>] :add_security_group_ids
    #   The unique identifiers of the security groups to add to the endpoint.
    #   Security groups define the ports, protocols, and sources for inbound
    #   traffic that you are authorizing into your endpoint.
    #
    # @option params [Array<String>] :remove_security_group_ids
    #   The unique identifiers of the security groups to remove from the
    #   endpoint.
    #
    # @option params [String] :client_token
    #   Unique, case-sensitive identifier to ensure idempotency of the
    #   request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::UpdateVpcEndpointResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateVpcEndpointResponse#update_vpc_endpoint_detail #update_vpc_endpoint_detail} => Types::UpdateVpcEndpointDetail
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_vpc_endpoint({
    #     id: "VpcEndpointId", # required
    #     add_subnet_ids: ["SubnetId"],
    #     remove_subnet_ids: ["SubnetId"],
    #     add_security_group_ids: ["SecurityGroupId"],
    #     remove_security_group_ids: ["SecurityGroupId"],
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.update_vpc_endpoint_detail.id #=> String
    #   resp.update_vpc_endpoint_detail.name #=> String
    #   resp.update_vpc_endpoint_detail.status #=> String, one of "PENDING", "DELETING", "ACTIVE", "FAILED"
    #   resp.update_vpc_endpoint_detail.subnet_ids #=> Array
    #   resp.update_vpc_endpoint_detail.subnet_ids[0] #=> String
    #   resp.update_vpc_endpoint_detail.security_group_ids #=> Array
    #   resp.update_vpc_endpoint_detail.security_group_ids[0] #=> String
    #   resp.update_vpc_endpoint_detail.last_modified_date #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchserverless-2021-11-01/UpdateVpcEndpoint AWS API Documentation
    #
    # @overload update_vpc_endpoint(params = {})
    # @param [Hash] params ({})
    def update_vpc_endpoint(params = {}, options = {})
      req = build_request(:update_vpc_endpoint, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::OpenSearchServerless')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-opensearchserverless'
      context[:gem_version] = '1.48.0'
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
