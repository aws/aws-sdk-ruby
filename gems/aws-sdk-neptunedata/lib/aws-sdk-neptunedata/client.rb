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

module Aws::Neptunedata
  # An API client for Neptunedata.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::Neptunedata::Client.new(
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

    @identifier = :neptunedata

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
    add_plugin(Aws::Neptunedata::Plugins::Endpoints)

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
    #   @option options [Aws::Neptunedata::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::Neptunedata::EndpointParameters`.
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

    # Cancels a Gremlin query. See [Gremlin query cancellation][1] for more
    # information.
    #
    # When invoking this operation in a Neptune cluster that has IAM
    # authentication enabled, the IAM user or role making the request must
    # have a policy attached that allows the [neptune-db:CancelQuery][2] IAM
    # action in that cluster.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/neptune/latest/userguide/gremlin-api-status-cancel.html
    # [2]: https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#cancelquery
    #
    # @option params [required, String] :query_id
    #   The unique identifier that identifies the query to be canceled.
    #
    # @return [Types::CancelGremlinQueryOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CancelGremlinQueryOutput#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_gremlin_query({
    #     query_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/CancelGremlinQuery AWS API Documentation
    #
    # @overload cancel_gremlin_query(params = {})
    # @param [Hash] params ({})
    def cancel_gremlin_query(params = {}, options = {})
      req = build_request(:cancel_gremlin_query, params)
      req.send_request(options)
    end

    # Cancels a specified load job. This is an HTTP `DELETE` request. See
    # [Neptune Loader Get-Status API][1] for more information.
    #
    # When invoking this operation in a Neptune cluster that has IAM
    # authentication enabled, the IAM user or role making the request must
    # have a policy attached that allows the [neptune-db:CancelLoaderJob][2]
    # IAM action in that cluster..
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/neptune/latest/userguide/load-api-reference-status.htm
    # [2]: https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#cancelloaderjob
    #
    # @option params [required, String] :load_id
    #   The ID of the load job to be deleted.
    #
    # @return [Types::CancelLoaderJobOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CancelLoaderJobOutput#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_loader_job({
    #     load_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/CancelLoaderJob AWS API Documentation
    #
    # @overload cancel_loader_job(params = {})
    # @param [Hash] params ({})
    def cancel_loader_job(params = {}, options = {})
      req = build_request(:cancel_loader_job, params)
      req.send_request(options)
    end

    # Cancels a Neptune ML data processing job. See [The `dataprocessing`
    # command][1].
    #
    # When invoking this operation in a Neptune cluster that has IAM
    # authentication enabled, the IAM user or role making the request must
    # have a policy attached that allows the
    # [neptune-db:CancelMLDataProcessingJob][2] IAM action in that cluster.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/neptune/latest/userguide/machine-learning-api-dataprocessing.html
    # [2]: https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#cancelmldataprocessingjob
    #
    # @option params [required, String] :id
    #   The unique identifier of the data-processing job.
    #
    # @option params [String] :neptune_iam_role_arn
    #   The ARN of an IAM role that provides Neptune access to SageMaker and
    #   Amazon S3 resources. This must be listed in your DB cluster parameter
    #   group or an error will occur.
    #
    # @option params [Boolean] :clean
    #   If set to `TRUE`, this flag specifies that all Neptune ML S3 artifacts
    #   should be deleted when the job is stopped. The default is `FALSE`.
    #
    # @return [Types::CancelMLDataProcessingJobOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CancelMLDataProcessingJobOutput#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_ml_data_processing_job({
    #     id: "String", # required
    #     neptune_iam_role_arn: "String",
    #     clean: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/CancelMLDataProcessingJob AWS API Documentation
    #
    # @overload cancel_ml_data_processing_job(params = {})
    # @param [Hash] params ({})
    def cancel_ml_data_processing_job(params = {}, options = {})
      req = build_request(:cancel_ml_data_processing_job, params)
      req.send_request(options)
    end

    # Cancels a Neptune ML model training job. See [Model training using the
    # `modeltraining` command][1].
    #
    # When invoking this operation in a Neptune cluster that has IAM
    # authentication enabled, the IAM user or role making the request must
    # have a policy attached that allows the
    # [neptune-db:CancelMLModelTrainingJob][2] IAM action in that cluster.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/neptune/latest/userguide/machine-learning-api-modeltraining.html
    # [2]: https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#cancelmlmodeltrainingjob
    #
    # @option params [required, String] :id
    #   The unique identifier of the model-training job to be canceled.
    #
    # @option params [String] :neptune_iam_role_arn
    #   The ARN of an IAM role that provides Neptune access to SageMaker and
    #   Amazon S3 resources. This must be listed in your DB cluster parameter
    #   group or an error will occur.
    #
    # @option params [Boolean] :clean
    #   If set to `TRUE`, this flag specifies that all Amazon S3 artifacts
    #   should be deleted when the job is stopped. The default is `FALSE`.
    #
    # @return [Types::CancelMLModelTrainingJobOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CancelMLModelTrainingJobOutput#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_ml_model_training_job({
    #     id: "String", # required
    #     neptune_iam_role_arn: "String",
    #     clean: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/CancelMLModelTrainingJob AWS API Documentation
    #
    # @overload cancel_ml_model_training_job(params = {})
    # @param [Hash] params ({})
    def cancel_ml_model_training_job(params = {}, options = {})
      req = build_request(:cancel_ml_model_training_job, params)
      req.send_request(options)
    end

    # Cancels a specified model transform job. See [Use a trained model to
    # generate new model artifacts][1].
    #
    # When invoking this operation in a Neptune cluster that has IAM
    # authentication enabled, the IAM user or role making the request must
    # have a policy attached that allows the
    # [neptune-db:CancelMLModelTransformJob][2] IAM action in that cluster.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/neptune/latest/userguide/machine-learning-model-transform.html
    # [2]: https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#cancelmlmodeltransformjob
    #
    # @option params [required, String] :id
    #   The unique ID of the model transform job to be canceled.
    #
    # @option params [String] :neptune_iam_role_arn
    #   The ARN of an IAM role that provides Neptune access to SageMaker and
    #   Amazon S3 resources. This must be listed in your DB cluster parameter
    #   group or an error will occur.
    #
    # @option params [Boolean] :clean
    #   If this flag is set to `TRUE`, all Neptune ML S3 artifacts should be
    #   deleted when the job is stopped. The default is `FALSE`.
    #
    # @return [Types::CancelMLModelTransformJobOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CancelMLModelTransformJobOutput#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_ml_model_transform_job({
    #     id: "String", # required
    #     neptune_iam_role_arn: "String",
    #     clean: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/CancelMLModelTransformJob AWS API Documentation
    #
    # @overload cancel_ml_model_transform_job(params = {})
    # @param [Hash] params ({})
    def cancel_ml_model_transform_job(params = {}, options = {})
      req = build_request(:cancel_ml_model_transform_job, params)
      req.send_request(options)
    end

    # Cancels a specified openCypher query. See [Neptune openCypher status
    # endpoint][1] for more information.
    #
    # When invoking this operation in a Neptune cluster that has IAM
    # authentication enabled, the IAM user or role making the request must
    # have a policy attached that allows the [neptune-db:CancelQuery][2] IAM
    # action in that cluster.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/neptune/latest/userguide/access-graph-opencypher-status.html
    # [2]: https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#cancelquery
    #
    # @option params [required, String] :query_id
    #   The unique ID of the openCypher query to cancel.
    #
    # @option params [Boolean] :silent
    #   If set to `TRUE`, causes the cancelation of the openCypher query to
    #   happen silently.
    #
    # @return [Types::CancelOpenCypherQueryOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CancelOpenCypherQueryOutput#status #status} => String
    #   * {Types::CancelOpenCypherQueryOutput#payload #payload} => Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_open_cypher_query({
    #     query_id: "String", # required
    #     silent: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> String
    #   resp.payload #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/CancelOpenCypherQuery AWS API Documentation
    #
    # @overload cancel_open_cypher_query(params = {})
    # @param [Hash] params ({})
    def cancel_open_cypher_query(params = {}, options = {})
      req = build_request(:cancel_open_cypher_query, params)
      req.send_request(options)
    end

    # Creates a new Neptune ML inference endpoint that lets you query one
    # specific model that the model-training process constructed. See
    # [Managing inference endpoints using the endpoints command][1].
    #
    # When invoking this operation in a Neptune cluster that has IAM
    # authentication enabled, the IAM user or role making the request must
    # have a policy attached that allows the
    # [neptune-db:CreateMLEndpoint][2] IAM action in that cluster.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/neptune/latest/userguide/machine-learning-api-endpoints.html
    # [2]: https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#createmlendpoint
    #
    # @option params [String] :id
    #   A unique identifier for the new inference endpoint. The default is an
    #   autogenerated timestamped name.
    #
    # @option params [String] :ml_model_training_job_id
    #   The job Id of the completed model-training job that has created the
    #   model that the inference endpoint will point to. You must supply
    #   either the `mlModelTrainingJobId` or the `mlModelTransformJobId`.
    #
    # @option params [String] :ml_model_transform_job_id
    #   The job Id of the completed model-transform job. You must supply
    #   either the `mlModelTrainingJobId` or the `mlModelTransformJobId`.
    #
    # @option params [Boolean] :update
    #   If set to `true`, `update` indicates that this is an update request.
    #   The default is `false`. You must supply either the
    #   `mlModelTrainingJobId` or the `mlModelTransformJobId`.
    #
    # @option params [String] :neptune_iam_role_arn
    #   The ARN of an IAM role providing Neptune access to SageMaker and
    #   Amazon S3 resources. This must be listed in your DB cluster parameter
    #   group or an error will be thrown.
    #
    # @option params [String] :model_name
    #   Model type for training. By default the Neptune ML model is
    #   automatically based on the `modelType` used in data processing, but
    #   you can specify a different model type here. The default is `rgcn` for
    #   heterogeneous graphs and `kge` for knowledge graphs. The only valid
    #   value for heterogeneous graphs is `rgcn`. Valid values for knowledge
    #   graphs are: `kge`, `transe`, `distmult`, and `rotate`.
    #
    # @option params [String] :instance_type
    #   The type of Neptune ML instance to use for online servicing. The
    #   default is `ml.m5.xlarge`. Choosing the ML instance for an inference
    #   endpoint depends on the task type, the graph size, and your budget.
    #
    # @option params [Integer] :instance_count
    #   The minimum number of Amazon EC2 instances to deploy to an endpoint
    #   for prediction. The default is 1
    #
    # @option params [String] :volume_encryption_kms_key
    #   The Amazon Key Management Service (Amazon KMS) key that SageMaker uses
    #   to encrypt data on the storage volume attached to the ML compute
    #   instances that run the training job. The default is None.
    #
    # @return [Types::CreateMLEndpointOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateMLEndpointOutput#id #id} => String
    #   * {Types::CreateMLEndpointOutput#arn #arn} => String
    #   * {Types::CreateMLEndpointOutput#creation_time_in_millis #creation_time_in_millis} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_ml_endpoint({
    #     id: "String",
    #     ml_model_training_job_id: "String",
    #     ml_model_transform_job_id: "String",
    #     update: false,
    #     neptune_iam_role_arn: "String",
    #     model_name: "String",
    #     instance_type: "String",
    #     instance_count: 1,
    #     volume_encryption_kms_key: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.arn #=> String
    #   resp.creation_time_in_millis #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/CreateMLEndpoint AWS API Documentation
    #
    # @overload create_ml_endpoint(params = {})
    # @param [Hash] params ({})
    def create_ml_endpoint(params = {}, options = {})
      req = build_request(:create_ml_endpoint, params)
      req.send_request(options)
    end

    # Cancels the creation of a Neptune ML inference endpoint. See [Managing
    # inference endpoints using the endpoints command][1].
    #
    # When invoking this operation in a Neptune cluster that has IAM
    # authentication enabled, the IAM user or role making the request must
    # have a policy attached that allows the
    # [neptune-db:DeleteMLEndpoint][2] IAM action in that cluster.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/neptune/latest/userguide/machine-learning-api-endpoints.html
    # [2]: https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#deletemlendpoint
    #
    # @option params [required, String] :id
    #   The unique identifier of the inference endpoint.
    #
    # @option params [String] :neptune_iam_role_arn
    #   The ARN of an IAM role providing Neptune access to SageMaker and
    #   Amazon S3 resources. This must be listed in your DB cluster parameter
    #   group or an error will be thrown.
    #
    # @option params [Boolean] :clean
    #   If this flag is set to `TRUE`, all Neptune ML S3 artifacts should be
    #   deleted when the job is stopped. The default is `FALSE`.
    #
    # @return [Types::DeleteMLEndpointOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteMLEndpointOutput#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_ml_endpoint({
    #     id: "String", # required
    #     neptune_iam_role_arn: "String",
    #     clean: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/DeleteMLEndpoint AWS API Documentation
    #
    # @overload delete_ml_endpoint(params = {})
    # @param [Hash] params ({})
    def delete_ml_endpoint(params = {}, options = {})
      req = build_request(:delete_ml_endpoint, params)
      req.send_request(options)
    end

    # Deletes statistics for Gremlin and openCypher (property graph) data.
    #
    # When invoking this operation in a Neptune cluster that has IAM
    # authentication enabled, the IAM user or role making the request must
    # have a policy attached that allows the
    # [neptune-db:DeleteStatistics][1] IAM action in that cluster.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#deletestatistics
    #
    # @return [Types::DeletePropertygraphStatisticsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeletePropertygraphStatisticsOutput#status_code #status_code} => Integer
    #   * {Types::DeletePropertygraphStatisticsOutput#status #status} => String
    #   * {Types::DeletePropertygraphStatisticsOutput#payload #payload} => Types::DeleteStatisticsValueMap
    #
    # @example Response structure
    #
    #   resp.status_code #=> Integer
    #   resp.status #=> String
    #   resp.payload.active #=> Boolean
    #   resp.payload.statistics_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/DeletePropertygraphStatistics AWS API Documentation
    #
    # @overload delete_propertygraph_statistics(params = {})
    # @param [Hash] params ({})
    def delete_propertygraph_statistics(params = {}, options = {})
      req = build_request(:delete_propertygraph_statistics, params)
      req.send_request(options)
    end

    # Deletes SPARQL statistics
    #
    # When invoking this operation in a Neptune cluster that has IAM
    # authentication enabled, the IAM user or role making the request must
    # have a policy attached that allows the
    # [neptune-db:DeleteStatistics][1] IAM action in that cluster.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#deletestatistics
    #
    # @return [Types::DeleteSparqlStatisticsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteSparqlStatisticsOutput#status_code #status_code} => Integer
    #   * {Types::DeleteSparqlStatisticsOutput#status #status} => String
    #   * {Types::DeleteSparqlStatisticsOutput#payload #payload} => Types::DeleteStatisticsValueMap
    #
    # @example Response structure
    #
    #   resp.status_code #=> Integer
    #   resp.status #=> String
    #   resp.payload.active #=> Boolean
    #   resp.payload.statistics_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/DeleteSparqlStatistics AWS API Documentation
    #
    # @overload delete_sparql_statistics(params = {})
    # @param [Hash] params ({})
    def delete_sparql_statistics(params = {}, options = {})
      req = build_request(:delete_sparql_statistics, params)
      req.send_request(options)
    end

    # The fast reset REST API lets you reset a Neptune graph quicky and
    # easily, removing all of its data.
    #
    # Neptune fast reset is a two-step process. First you call
    # `ExecuteFastReset` with `action` set to `initiateDatabaseReset`. This
    # returns a UUID token which you then include when calling
    # `ExecuteFastReset` again with `action` set to `performDatabaseReset`.
    # See [Empty an Amazon Neptune DB cluster using the fast reset API][1].
    #
    # When invoking this operation in a Neptune cluster that has IAM
    # authentication enabled, the IAM user or role making the request must
    # have a policy attached that allows the [neptune-db:ResetDatabase][2]
    # IAM action in that cluster.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/neptune/latest/userguide/manage-console-fast-reset.html
    # [2]: https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#resetdatabase
    #
    # @option params [required, String] :action
    #   The fast reset action. One of the following values:
    #
    #   * <b> <code>initiateDatabaseReset</code> </b>   –   This action
    #     generates a unique token needed to actually perform the fast reset.
    #
    #   * <b> <code>performDatabaseReset</code> </b>   –   This action uses
    #     the token generated by the `initiateDatabaseReset` action to
    #     actually perform the fast reset.
    #
    # @option params [String] :token
    #   The fast-reset token to initiate the reset.
    #
    # @return [Types::ExecuteFastResetOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ExecuteFastResetOutput#status #status} => String
    #   * {Types::ExecuteFastResetOutput#payload #payload} => Types::FastResetToken
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.execute_fast_reset({
    #     action: "initiateDatabaseReset", # required, accepts initiateDatabaseReset, performDatabaseReset
    #     token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> String
    #   resp.payload.token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/ExecuteFastReset AWS API Documentation
    #
    # @overload execute_fast_reset(params = {})
    # @param [Hash] params ({})
    def execute_fast_reset(params = {}, options = {})
      req = build_request(:execute_fast_reset, params)
      req.send_request(options)
    end

    # Executes a Gremlin Explain query.
    #
    # Amazon Neptune has added a Gremlin feature named `explain` that
    # provides is a self-service tool for understanding the execution
    # approach being taken by the Neptune engine for the query. You invoke
    # it by adding an `explain` parameter to an HTTP call that submits a
    # Gremlin query.
    #
    # The explain feature provides information about the logical structure
    # of query execution plans. You can use this information to identify
    # potential evaluation and execution bottlenecks and to tune your query,
    # as explained in [Tuning Gremlin queries][1]. You can also use query
    # hints to improve query execution plans.
    #
    # When invoking this operation in a Neptune cluster that has IAM
    # authentication enabled, the IAM user or role making the request must
    # have a policy attached that allows one of the following IAM actions in
    # that cluster, depending on the query:
    #
    # * [neptune-db:ReadDataViaQuery][2]
    #
    # * [neptune-db:WriteDataViaQuery][3]
    #
    # * [neptune-db:DeleteDataViaQuery][4]
    #
    # Note that the [neptune-db:QueryLanguage:Gremlin][5] IAM condition key
    # can be used in the policy document to restrict the use of Gremlin
    # queries (see [Condition keys available in Neptune IAM data-access
    # policy statements][6]).
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/neptune/latest/userguide/gremlin-traversal-tuning.html
    # [2]: https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#readdataviaquery
    # [3]: https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#writedataviaquery
    # [4]: https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#deletedataviaquery
    # [5]: https://docs.aws.amazon.com/neptune/latest/userguide/iam-data-condition-keys.html#iam-neptune-condition-keys
    # [6]: https://docs.aws.amazon.com/neptune/latest/userguide/iam-data-condition-keys.html
    #
    # @option params [required, String] :gremlin_query
    #   The Gremlin explain query string.
    #
    # @return [Types::ExecuteGremlinExplainQueryOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ExecuteGremlinExplainQueryOutput#output #output} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.execute_gremlin_explain_query({
    #     gremlin_query: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.output #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/ExecuteGremlinExplainQuery AWS API Documentation
    #
    # @overload execute_gremlin_explain_query(params = {})
    # @param [Hash] params ({})
    def execute_gremlin_explain_query(params = {}, options = {})
      req = build_request(:execute_gremlin_explain_query, params)
      req.send_request(options)
    end

    # Executes a Gremlin Profile query, which runs a specified traversal,
    # collects various metrics about the run, and produces a profile report
    # as output. See [Gremlin profile API in Neptune][1] for details.
    #
    # When invoking this operation in a Neptune cluster that has IAM
    # authentication enabled, the IAM user or role making the request must
    # have a policy attached that allows the
    # [neptune-db:ReadDataViaQuery][2] IAM action in that cluster.
    #
    # Note that the [neptune-db:QueryLanguage:Gremlin][3] IAM condition key
    # can be used in the policy document to restrict the use of Gremlin
    # queries (see [Condition keys available in Neptune IAM data-access
    # policy statements][4]).
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/neptune/latest/userguide/gremlin-profile-api.html
    # [2]: https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#readdataviaquery
    # [3]: https://docs.aws.amazon.com/neptune/latest/userguide/iam-data-condition-keys.html#iam-neptune-condition-keys
    # [4]: https://docs.aws.amazon.com/neptune/latest/userguide/iam-data-condition-keys.html
    #
    # @option params [required, String] :gremlin_query
    #   The Gremlin query string to profile.
    #
    # @option params [Boolean] :results
    #   If this flag is set to `TRUE`, the query results are gathered and
    #   displayed as part of the profile report. If `FALSE`, only the result
    #   count is displayed.
    #
    # @option params [Integer] :chop
    #   If non-zero, causes the results string to be truncated at that number
    #   of characters. If set to zero, the string contains all the results.
    #
    # @option params [String] :serializer
    #   If non-null, the gathered results are returned in a serialized
    #   response message in the format specified by this parameter. See
    #   [Gremlin profile API in Neptune][1] for more information.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/neptune/latest/userguide/gremlin-profile-api.html
    #
    # @option params [Boolean] :index_ops
    #   If this flag is set to `TRUE`, the results include a detailed report
    #   of all index operations that took place during query execution and
    #   serialization.
    #
    # @return [Types::ExecuteGremlinProfileQueryOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ExecuteGremlinProfileQueryOutput#output #output} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.execute_gremlin_profile_query({
    #     gremlin_query: "String", # required
    #     results: false,
    #     chop: 1,
    #     serializer: "String",
    #     index_ops: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.output #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/ExecuteGremlinProfileQuery AWS API Documentation
    #
    # @overload execute_gremlin_profile_query(params = {})
    # @param [Hash] params ({})
    def execute_gremlin_profile_query(params = {}, options = {})
      req = build_request(:execute_gremlin_profile_query, params)
      req.send_request(options)
    end

    # This commands executes a Gremlin query. Amazon Neptune is compatible
    # with Apache TinkerPop3 and Gremlin, so you can use the Gremlin
    # traversal language to query the graph, as described under [The
    # Graph][1] in the Apache TinkerPop3 documentation. More details can
    # also be found in [Accessing a Neptune graph with Gremlin][2].
    #
    # When invoking this operation in a Neptune cluster that has IAM
    # authentication enabled, the IAM user or role making the request must
    # have a policy attached that enables one of the following IAM actions
    # in that cluster, depending on the query:
    #
    # * [neptune-db:ReadDataViaQuery][3]
    #
    # * [neptune-db:WriteDataViaQuery][4]
    #
    # * [neptune-db:DeleteDataViaQuery][5]
    #
    # Note that the [neptune-db:QueryLanguage:Gremlin][6] IAM condition key
    # can be used in the policy document to restrict the use of Gremlin
    # queries (see [Condition keys available in Neptune IAM data-access
    # policy statements][7]).
    #
    #
    #
    # [1]: https://tinkerpop.apache.org/docs/current/reference/#graph
    # [2]: https://docs.aws.amazon.com/neptune/latest/userguide/access-graph-gremlin.html
    # [3]: https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#readdataviaquery
    # [4]: https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#writedataviaquery
    # [5]: https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#deletedataviaquery
    # [6]: https://docs.aws.amazon.com/neptune/latest/userguide/iam-data-condition-keys.html#iam-neptune-condition-keys
    # [7]: https://docs.aws.amazon.com/neptune/latest/userguide/iam-data-condition-keys.html
    #
    # @option params [required, String] :gremlin_query
    #   Using this API, you can run Gremlin queries in string format much as
    #   you can using the HTTP endpoint. The interface is compatible with
    #   whatever Gremlin version your DB cluster is using (see the [Tinkerpop
    #   client section][1] to determine which Gremlin releases your engine
    #   version supports).
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/neptune/latest/userguide/access-graph-gremlin-client.html#best-practices-gremlin-java-latest
    #
    # @option params [String] :serializer
    #   If non-null, the query results are returned in a serialized response
    #   message in the format specified by this parameter. See the
    #   [GraphSON][1] section in the TinkerPop documentation for a list of the
    #   formats that are currently supported.
    #
    #
    #
    #   [1]: https://tinkerpop.apache.org/docs/current/reference/#_graphson
    #
    # @return [Types::ExecuteGremlinQueryOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ExecuteGremlinQueryOutput#request_id #request_id} => String
    #   * {Types::ExecuteGremlinQueryOutput#status #status} => Types::GremlinQueryStatusAttributes
    #   * {Types::ExecuteGremlinQueryOutput#result #result} => Hash,Array,String,Numeric,Boolean
    #   * {Types::ExecuteGremlinQueryOutput#meta #meta} => Hash,Array,String,Numeric,Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.execute_gremlin_query({
    #     gremlin_query: "String", # required
    #     serializer: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.status.message #=> String
    #   resp.status.code #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/ExecuteGremlinQuery AWS API Documentation
    #
    # @overload execute_gremlin_query(params = {})
    # @param [Hash] params ({})
    def execute_gremlin_query(params = {}, options = {})
      req = build_request(:execute_gremlin_query, params)
      req.send_request(options)
    end

    # Executes an openCypher `explain` request. See [The openCypher explain
    # feature][1] for more information.
    #
    # When invoking this operation in a Neptune cluster that has IAM
    # authentication enabled, the IAM user or role making the request must
    # have a policy attached that allows the
    # [neptune-db:ReadDataViaQuery][2] IAM action in that cluster.
    #
    # Note that the [neptune-db:QueryLanguage:OpenCypher][3] IAM condition
    # key can be used in the policy document to restrict the use of
    # openCypher queries (see [Condition keys available in Neptune IAM
    # data-access policy statements][4]).
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/neptune/latest/userguide/access-graph-opencypher-explain.html
    # [2]: https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#readdataviaquery
    # [3]: https://docs.aws.amazon.com/neptune/latest/userguide/iam-data-condition-keys.html#iam-neptune-condition-keys
    # [4]: https://docs.aws.amazon.com/neptune/latest/userguide/iam-data-condition-keys.html
    #
    # @option params [required, String] :open_cypher_query
    #   The openCypher query string.
    #
    # @option params [String] :parameters
    #   The openCypher query parameters.
    #
    # @option params [required, String] :explain_mode
    #   The openCypher `explain` mode. Can be one of: `static`, `dynamic`, or
    #   `details`.
    #
    # @return [Types::ExecuteOpenCypherExplainQueryOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ExecuteOpenCypherExplainQueryOutput#results #results} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.execute_open_cypher_explain_query({
    #     open_cypher_query: "String", # required
    #     parameters: "String",
    #     explain_mode: "static", # required, accepts static, dynamic, details
    #   })
    #
    # @example Response structure
    #
    #   resp.results #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/ExecuteOpenCypherExplainQuery AWS API Documentation
    #
    # @overload execute_open_cypher_explain_query(params = {})
    # @param [Hash] params ({})
    def execute_open_cypher_explain_query(params = {}, options = {})
      req = build_request(:execute_open_cypher_explain_query, params)
      req.send_request(options)
    end

    # Executes an openCypher query. See [Accessing the Neptune Graph with
    # openCypher][1] for more information.
    #
    # Neptune supports building graph applications using openCypher, which
    # is currently one of the most popular query languages among developers
    # working with graph databases. Developers, business analysts, and data
    # scientists like openCypher's declarative, SQL-inspired syntax because
    # it provides a familiar structure in which to querying property graphs.
    #
    # The openCypher language was originally developed by Neo4j, then
    # open-sourced in 2015 and contributed to the [openCypher project][2]
    # under an Apache 2 open-source license.
    #
    # Note that when invoking this operation in a Neptune cluster that has
    # IAM authentication enabled, the IAM user or role making the request
    # must have a policy attached that allows one of the following IAM
    # actions in that cluster, depending on the query:
    #
    # * [neptune-db:ReadDataViaQuery][3]
    #
    # * [neptune-db:WriteDataViaQuery][4]
    #
    # * [neptune-db:DeleteDataViaQuery][5]
    #
    # Note also that the [neptune-db:QueryLanguage:OpenCypher][6] IAM
    # condition key can be used in the policy document to restrict the use
    # of openCypher queries (see [Condition keys available in Neptune IAM
    # data-access policy statements][7]).
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/neptune/latest/userguide/access-graph-opencypher.html
    # [2]: https://opencypher.org/
    # [3]: https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#readdataviaquery
    # [4]: https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#writedataviaquery
    # [5]: https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#deletedataviaquery
    # [6]: https://docs.aws.amazon.com/neptune/latest/userguide/iam-data-condition-keys.html#iam-neptune-condition-keys
    # [7]: https://docs.aws.amazon.com/neptune/latest/userguide/iam-data-condition-keys.html
    #
    # @option params [required, String] :open_cypher_query
    #   The openCypher query string to be executed.
    #
    # @option params [String] :parameters
    #   The openCypher query parameters for query execution. See [Examples of
    #   openCypher parameterized queries][1] for more information.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/neptune/latest/userguide/opencypher-parameterized-queries.html
    #
    # @return [Types::ExecuteOpenCypherQueryOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ExecuteOpenCypherQueryOutput#results #results} => Hash,Array,String,Numeric,Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.execute_open_cypher_query({
    #     open_cypher_query: "String", # required
    #     parameters: "String",
    #   })
    #
    # @example Response structure
    #
    #
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/ExecuteOpenCypherQuery AWS API Documentation
    #
    # @overload execute_open_cypher_query(params = {})
    # @param [Hash] params ({})
    def execute_open_cypher_query(params = {}, options = {})
      req = build_request(:execute_open_cypher_query, params)
      req.send_request(options)
    end

    # Retrieves the status of the graph database on the host.
    #
    # When invoking this operation in a Neptune cluster that has IAM
    # authentication enabled, the IAM user or role making the request must
    # have a policy attached that allows the [neptune-db:GetEngineStatus][1]
    # IAM action in that cluster.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#getenginestatus
    #
    # @return [Types::GetEngineStatusOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetEngineStatusOutput#status #status} => String
    #   * {Types::GetEngineStatusOutput#start_time #start_time} => String
    #   * {Types::GetEngineStatusOutput#db_engine_version #db_engine_version} => String
    #   * {Types::GetEngineStatusOutput#role #role} => String
    #   * {Types::GetEngineStatusOutput#dfe_query_engine #dfe_query_engine} => String
    #   * {Types::GetEngineStatusOutput#gremlin #gremlin} => Types::QueryLanguageVersion
    #   * {Types::GetEngineStatusOutput#sparql #sparql} => Types::QueryLanguageVersion
    #   * {Types::GetEngineStatusOutput#opencypher #opencypher} => Types::QueryLanguageVersion
    #   * {Types::GetEngineStatusOutput#lab_mode #lab_mode} => Hash&lt;String,String&gt;
    #   * {Types::GetEngineStatusOutput#rolling_back_trx_count #rolling_back_trx_count} => Integer
    #   * {Types::GetEngineStatusOutput#rolling_back_trx_earliest_start_time #rolling_back_trx_earliest_start_time} => String
    #   * {Types::GetEngineStatusOutput#features #features} => Hash&lt;String,Hash,Array,String,Numeric,Boolean&gt;
    #   * {Types::GetEngineStatusOutput#settings #settings} => Hash&lt;String,String&gt;
    #
    # @example Response structure
    #
    #   resp.status #=> String
    #   resp.start_time #=> String
    #   resp.db_engine_version #=> String
    #   resp.role #=> String
    #   resp.dfe_query_engine #=> String
    #   resp.gremlin.version #=> String
    #   resp.sparql.version #=> String
    #   resp.opencypher.version #=> String
    #   resp.lab_mode #=> Hash
    #   resp.lab_mode["String"] #=> String
    #   resp.rolling_back_trx_count #=> Integer
    #   resp.rolling_back_trx_earliest_start_time #=> String
    #   resp.features #=> Hash
    #   resp.settings #=> Hash
    #   resp.settings["String"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/GetEngineStatus AWS API Documentation
    #
    # @overload get_engine_status(params = {})
    # @param [Hash] params ({})
    def get_engine_status(params = {}, options = {})
      req = build_request(:get_engine_status, params)
      req.send_request(options)
    end

    # Gets the status of a specified Gremlin query.
    #
    # When invoking this operation in a Neptune cluster that has IAM
    # authentication enabled, the IAM user or role making the request must
    # have a policy attached that allows the [neptune-db:GetQueryStatus][1]
    # IAM action in that cluster.
    #
    # Note that the [neptune-db:QueryLanguage:Gremlin][2] IAM condition key
    # can be used in the policy document to restrict the use of Gremlin
    # queries (see [Condition keys available in Neptune IAM data-access
    # policy statements][3]).
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#getquerystatus
    # [2]: https://docs.aws.amazon.com/neptune/latest/userguide/iam-data-condition-keys.html#iam-neptune-condition-keys
    # [3]: https://docs.aws.amazon.com/neptune/latest/userguide/iam-data-condition-keys.html
    #
    # @option params [required, String] :query_id
    #   The unique identifier that identifies the Gremlin query.
    #
    # @return [Types::GetGremlinQueryStatusOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetGremlinQueryStatusOutput#query_id #query_id} => String
    #   * {Types::GetGremlinQueryStatusOutput#query_string #query_string} => String
    #   * {Types::GetGremlinQueryStatusOutput#query_eval_stats #query_eval_stats} => Types::QueryEvalStats
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_gremlin_query_status({
    #     query_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.query_id #=> String
    #   resp.query_string #=> String
    #   resp.query_eval_stats.waited #=> Integer
    #   resp.query_eval_stats.elapsed #=> Integer
    #   resp.query_eval_stats.cancelled #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/GetGremlinQueryStatus AWS API Documentation
    #
    # @overload get_gremlin_query_status(params = {})
    # @param [Hash] params ({})
    def get_gremlin_query_status(params = {}, options = {})
      req = build_request(:get_gremlin_query_status, params)
      req.send_request(options)
    end

    # Gets status information about a specified load job. Neptune keeps
    # track of the most recent 1,024 bulk load jobs, and stores the last
    # 10,000 error details per job.
    #
    # See [Neptune Loader Get-Status API][1] for more information.
    #
    # When invoking this operation in a Neptune cluster that has IAM
    # authentication enabled, the IAM user or role making the request must
    # have a policy attached that allows the
    # [neptune-db:GetLoaderJobStatus][2] IAM action in that cluster..
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/neptune/latest/userguide/load-api-reference-status.htm
    # [2]: https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#getloaderjobstatus
    #
    # @option params [required, String] :load_id
    #   The load ID of the load job to get the status of.
    #
    # @option params [Boolean] :details
    #   Flag indicating whether or not to include details beyond the overall
    #   status (`TRUE` or `FALSE`; the default is `FALSE`).
    #
    # @option params [Boolean] :errors
    #   Flag indicating whether or not to include a list of errors encountered
    #   (`TRUE` or `FALSE`; the default is `FALSE`).
    #
    #   The list of errors is paged. The `page` and `errorsPerPage` parameters
    #   allow you to page through all the errors.
    #
    # @option params [Integer] :page
    #   The error page number (a positive integer; the default is `1`). Only
    #   valid when the `errors` parameter is set to `TRUE`.
    #
    # @option params [Integer] :errors_per_page
    #   The number of errors returned in each page (a positive integer; the
    #   default is `10`). Only valid when the `errors` parameter set to
    #   `TRUE`.
    #
    # @return [Types::GetLoaderJobStatusOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetLoaderJobStatusOutput#status #status} => String
    #   * {Types::GetLoaderJobStatusOutput#payload #payload} => Hash,Array,String,Numeric,Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_loader_job_status({
    #     load_id: "String", # required
    #     details: false,
    #     errors: false,
    #     page: 1,
    #     errors_per_page: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/GetLoaderJobStatus AWS API Documentation
    #
    # @overload get_loader_job_status(params = {})
    # @param [Hash] params ({})
    def get_loader_job_status(params = {}, options = {})
      req = build_request(:get_loader_job_status, params)
      req.send_request(options)
    end

    # Retrieves information about a specified data processing job. See [The
    # `dataprocessing` command][1].
    #
    # When invoking this operation in a Neptune cluster that has IAM
    # authentication enabled, the IAM user or role making the request must
    # have a policy attached that allows the
    # [neptune-db:neptune-db:GetMLDataProcessingJobStatus][2] IAM action in
    # that cluster.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/neptune/latest/userguide/machine-learning-api-dataprocessing.html
    # [2]: https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#getmldataprocessingjobstatus
    #
    # @option params [required, String] :id
    #   The unique identifier of the data-processing job to be retrieved.
    #
    # @option params [String] :neptune_iam_role_arn
    #   The ARN of an IAM role that provides Neptune access to SageMaker and
    #   Amazon S3 resources. This must be listed in your DB cluster parameter
    #   group or an error will occur.
    #
    # @return [Types::GetMLDataProcessingJobOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetMLDataProcessingJobOutput#status #status} => String
    #   * {Types::GetMLDataProcessingJobOutput#id #id} => String
    #   * {Types::GetMLDataProcessingJobOutput#processing_job #processing_job} => Types::MlResourceDefinition
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_ml_data_processing_job({
    #     id: "String", # required
    #     neptune_iam_role_arn: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> String
    #   resp.id #=> String
    #   resp.processing_job.name #=> String
    #   resp.processing_job.arn #=> String
    #   resp.processing_job.status #=> String
    #   resp.processing_job.output_location #=> String
    #   resp.processing_job.failure_reason #=> String
    #   resp.processing_job.cloudwatch_log_url #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/GetMLDataProcessingJob AWS API Documentation
    #
    # @overload get_ml_data_processing_job(params = {})
    # @param [Hash] params ({})
    def get_ml_data_processing_job(params = {}, options = {})
      req = build_request(:get_ml_data_processing_job, params)
      req.send_request(options)
    end

    # Retrieves details about an inference endpoint. See [Managing inference
    # endpoints using the endpoints command][1].
    #
    # When invoking this operation in a Neptune cluster that has IAM
    # authentication enabled, the IAM user or role making the request must
    # have a policy attached that allows the
    # [neptune-db:GetMLEndpointStatus][2] IAM action in that cluster.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/neptune/latest/userguide/machine-learning-api-endpoints.html
    # [2]: https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#getmlendpointstatus
    #
    # @option params [required, String] :id
    #   The unique identifier of the inference endpoint.
    #
    # @option params [String] :neptune_iam_role_arn
    #   The ARN of an IAM role that provides Neptune access to SageMaker and
    #   Amazon S3 resources. This must be listed in your DB cluster parameter
    #   group or an error will occur.
    #
    # @return [Types::GetMLEndpointOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetMLEndpointOutput#status #status} => String
    #   * {Types::GetMLEndpointOutput#id #id} => String
    #   * {Types::GetMLEndpointOutput#endpoint #endpoint} => Types::MlResourceDefinition
    #   * {Types::GetMLEndpointOutput#endpoint_config #endpoint_config} => Types::MlConfigDefinition
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_ml_endpoint({
    #     id: "String", # required
    #     neptune_iam_role_arn: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> String
    #   resp.id #=> String
    #   resp.endpoint.name #=> String
    #   resp.endpoint.arn #=> String
    #   resp.endpoint.status #=> String
    #   resp.endpoint.output_location #=> String
    #   resp.endpoint.failure_reason #=> String
    #   resp.endpoint.cloudwatch_log_url #=> String
    #   resp.endpoint_config.name #=> String
    #   resp.endpoint_config.arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/GetMLEndpoint AWS API Documentation
    #
    # @overload get_ml_endpoint(params = {})
    # @param [Hash] params ({})
    def get_ml_endpoint(params = {}, options = {})
      req = build_request(:get_ml_endpoint, params)
      req.send_request(options)
    end

    # Retrieves information about a Neptune ML model training job. See
    # [Model training using the `modeltraining` command][1].
    #
    # When invoking this operation in a Neptune cluster that has IAM
    # authentication enabled, the IAM user or role making the request must
    # have a policy attached that allows the
    # [neptune-db:GetMLModelTrainingJobStatus][2] IAM action in that
    # cluster.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/neptune/latest/userguide/machine-learning-api-modeltraining.html
    # [2]: https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#getmlmodeltrainingjobstatus
    #
    # @option params [required, String] :id
    #   The unique identifier of the model-training job to retrieve.
    #
    # @option params [String] :neptune_iam_role_arn
    #   The ARN of an IAM role that provides Neptune access to SageMaker and
    #   Amazon S3 resources. This must be listed in your DB cluster parameter
    #   group or an error will occur.
    #
    # @return [Types::GetMLModelTrainingJobOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetMLModelTrainingJobOutput#status #status} => String
    #   * {Types::GetMLModelTrainingJobOutput#id #id} => String
    #   * {Types::GetMLModelTrainingJobOutput#processing_job #processing_job} => Types::MlResourceDefinition
    #   * {Types::GetMLModelTrainingJobOutput#hpo_job #hpo_job} => Types::MlResourceDefinition
    #   * {Types::GetMLModelTrainingJobOutput#model_transform_job #model_transform_job} => Types::MlResourceDefinition
    #   * {Types::GetMLModelTrainingJobOutput#ml_models #ml_models} => Array&lt;Types::MlConfigDefinition&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_ml_model_training_job({
    #     id: "String", # required
    #     neptune_iam_role_arn: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> String
    #   resp.id #=> String
    #   resp.processing_job.name #=> String
    #   resp.processing_job.arn #=> String
    #   resp.processing_job.status #=> String
    #   resp.processing_job.output_location #=> String
    #   resp.processing_job.failure_reason #=> String
    #   resp.processing_job.cloudwatch_log_url #=> String
    #   resp.hpo_job.name #=> String
    #   resp.hpo_job.arn #=> String
    #   resp.hpo_job.status #=> String
    #   resp.hpo_job.output_location #=> String
    #   resp.hpo_job.failure_reason #=> String
    #   resp.hpo_job.cloudwatch_log_url #=> String
    #   resp.model_transform_job.name #=> String
    #   resp.model_transform_job.arn #=> String
    #   resp.model_transform_job.status #=> String
    #   resp.model_transform_job.output_location #=> String
    #   resp.model_transform_job.failure_reason #=> String
    #   resp.model_transform_job.cloudwatch_log_url #=> String
    #   resp.ml_models #=> Array
    #   resp.ml_models[0].name #=> String
    #   resp.ml_models[0].arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/GetMLModelTrainingJob AWS API Documentation
    #
    # @overload get_ml_model_training_job(params = {})
    # @param [Hash] params ({})
    def get_ml_model_training_job(params = {}, options = {})
      req = build_request(:get_ml_model_training_job, params)
      req.send_request(options)
    end

    # Gets information about a specified model transform job. See [Use a
    # trained model to generate new model artifacts][1].
    #
    # When invoking this operation in a Neptune cluster that has IAM
    # authentication enabled, the IAM user or role making the request must
    # have a policy attached that allows the
    # [neptune-db:GetMLModelTransformJobStatus][2] IAM action in that
    # cluster.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/neptune/latest/userguide/machine-learning-model-transform.html
    # [2]: https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#getmlmodeltransformjobstatus
    #
    # @option params [required, String] :id
    #   The unique identifier of the model-transform job to be reetrieved.
    #
    # @option params [String] :neptune_iam_role_arn
    #   The ARN of an IAM role that provides Neptune access to SageMaker and
    #   Amazon S3 resources. This must be listed in your DB cluster parameter
    #   group or an error will occur.
    #
    # @return [Types::GetMLModelTransformJobOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetMLModelTransformJobOutput#status #status} => String
    #   * {Types::GetMLModelTransformJobOutput#id #id} => String
    #   * {Types::GetMLModelTransformJobOutput#base_processing_job #base_processing_job} => Types::MlResourceDefinition
    #   * {Types::GetMLModelTransformJobOutput#remote_model_transform_job #remote_model_transform_job} => Types::MlResourceDefinition
    #   * {Types::GetMLModelTransformJobOutput#models #models} => Array&lt;Types::MlConfigDefinition&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_ml_model_transform_job({
    #     id: "String", # required
    #     neptune_iam_role_arn: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> String
    #   resp.id #=> String
    #   resp.base_processing_job.name #=> String
    #   resp.base_processing_job.arn #=> String
    #   resp.base_processing_job.status #=> String
    #   resp.base_processing_job.output_location #=> String
    #   resp.base_processing_job.failure_reason #=> String
    #   resp.base_processing_job.cloudwatch_log_url #=> String
    #   resp.remote_model_transform_job.name #=> String
    #   resp.remote_model_transform_job.arn #=> String
    #   resp.remote_model_transform_job.status #=> String
    #   resp.remote_model_transform_job.output_location #=> String
    #   resp.remote_model_transform_job.failure_reason #=> String
    #   resp.remote_model_transform_job.cloudwatch_log_url #=> String
    #   resp.models #=> Array
    #   resp.models[0].name #=> String
    #   resp.models[0].arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/GetMLModelTransformJob AWS API Documentation
    #
    # @overload get_ml_model_transform_job(params = {})
    # @param [Hash] params ({})
    def get_ml_model_transform_job(params = {}, options = {})
      req = build_request(:get_ml_model_transform_job, params)
      req.send_request(options)
    end

    # Retrieves the status of a specified openCypher query.
    #
    # When invoking this operation in a Neptune cluster that has IAM
    # authentication enabled, the IAM user or role making the request must
    # have a policy attached that allows the [neptune-db:GetQueryStatus][1]
    # IAM action in that cluster.
    #
    # Note that the [neptune-db:QueryLanguage:OpenCypher][2] IAM condition
    # key can be used in the policy document to restrict the use of
    # openCypher queries (see [Condition keys available in Neptune IAM
    # data-access policy statements][3]).
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#getquerystatus
    # [2]: https://docs.aws.amazon.com/neptune/latest/userguide/iam-data-condition-keys.html#iam-neptune-condition-keys
    # [3]: https://docs.aws.amazon.com/neptune/latest/userguide/iam-data-condition-keys.html
    #
    # @option params [required, String] :query_id
    #   The unique ID of the openCypher query for which to retrieve the query
    #   status.
    #
    # @return [Types::GetOpenCypherQueryStatusOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetOpenCypherQueryStatusOutput#query_id #query_id} => String
    #   * {Types::GetOpenCypherQueryStatusOutput#query_string #query_string} => String
    #   * {Types::GetOpenCypherQueryStatusOutput#query_eval_stats #query_eval_stats} => Types::QueryEvalStats
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_open_cypher_query_status({
    #     query_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.query_id #=> String
    #   resp.query_string #=> String
    #   resp.query_eval_stats.waited #=> Integer
    #   resp.query_eval_stats.elapsed #=> Integer
    #   resp.query_eval_stats.cancelled #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/GetOpenCypherQueryStatus AWS API Documentation
    #
    # @overload get_open_cypher_query_status(params = {})
    # @param [Hash] params ({})
    def get_open_cypher_query_status(params = {}, options = {})
      req = build_request(:get_open_cypher_query_status, params)
      req.send_request(options)
    end

    # Gets property graph statistics (Gremlin and openCypher).
    #
    # When invoking this operation in a Neptune cluster that has IAM
    # authentication enabled, the IAM user or role making the request must
    # have a policy attached that allows the
    # [neptune-db:GetStatisticsStatus][1] IAM action in that cluster.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#getstatisticsstatus
    #
    # @return [Types::GetPropertygraphStatisticsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetPropertygraphStatisticsOutput#status #status} => String
    #   * {Types::GetPropertygraphStatisticsOutput#payload #payload} => Types::Statistics
    #
    # @example Response structure
    #
    #   resp.status #=> String
    #   resp.payload.auto_compute #=> Boolean
    #   resp.payload.active #=> Boolean
    #   resp.payload.statistics_id #=> String
    #   resp.payload.date #=> Time
    #   resp.payload.note #=> String
    #   resp.payload.signature_info.signature_count #=> Integer
    #   resp.payload.signature_info.instance_count #=> Integer
    #   resp.payload.signature_info.predicate_count #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/GetPropertygraphStatistics AWS API Documentation
    #
    # @overload get_propertygraph_statistics(params = {})
    # @param [Hash] params ({})
    def get_propertygraph_statistics(params = {}, options = {})
      req = build_request(:get_propertygraph_statistics, params)
      req.send_request(options)
    end

    # Gets a stream for a property graph.
    #
    # With the Neptune Streams feature, you can generate a complete sequence
    # of change-log entries that record every change made to your graph data
    # as it happens. `GetPropertygraphStream` lets you collect these
    # change-log entries for a property graph.
    #
    # The Neptune streams feature needs to be enabled on your Neptune
    # DBcluster. To enable streams, set the [neptune\_streams][1] DB cluster
    # parameter to `1`.
    #
    # See [Capturing graph changes in real time using Neptune streams][2].
    #
    # When invoking this operation in a Neptune cluster that has IAM
    # authentication enabled, the IAM user or role making the request must
    # have a policy attached that allows the
    # [neptune-db:GetStreamRecords][3] IAM action in that cluster.
    #
    # When invoking this operation in a Neptune cluster that has IAM
    # authentication enabled, the IAM user or role making the request must
    # have a policy attached that enables one of the following IAM actions,
    # depending on the query:
    #
    # Note that you can restrict property-graph queries using the following
    # IAM context keys:
    #
    # * [neptune-db:QueryLanguage:Gremlin][4]
    #
    # * [neptune-db:QueryLanguage:OpenCypher][4]
    #
    # See [Condition keys available in Neptune IAM data-access policy
    # statements][5]).
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/neptune/latest/userguide/parameters.html#parameters-db-cluster-parameters-neptune_streams
    # [2]: https://docs.aws.amazon.com/neptune/latest/userguide/streams.html
    # [3]: https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#getstreamrecords
    # [4]: https://docs.aws.amazon.com/neptune/latest/userguide/iam-data-condition-keys.html#iam-neptune-condition-keys
    # [5]: https://docs.aws.amazon.com/neptune/latest/userguide/iam-data-condition-keys.html
    #
    # @option params [Integer] :limit
    #   Specifies the maximum number of records to return. There is also a
    #   size limit of 10 MB on the response that can't be modified and that
    #   takes precedence over the number of records specified in the `limit`
    #   parameter. The response does include a threshold-breaching record if
    #   the 10 MB limit was reached.
    #
    #   The range for `limit` is 1 to 100,000, with a default of 10.
    #
    # @option params [String] :iterator_type
    #   Can be one of:
    #
    #   * `AT_SEQUENCE_NUMBER`   –   Indicates that reading should start from
    #     the event sequence number specified jointly by the `commitNum` and
    #     `opNum` parameters.
    #
    #   * `AFTER_SEQUENCE_NUMBER`   –   Indicates that reading should start
    #     right after the event sequence number specified jointly by the
    #     `commitNum` and `opNum` parameters.
    #
    #   * `TRIM_HORIZON`   –   Indicates that reading should start at the last
    #     untrimmed record in the system, which is the oldest unexpired (not
    #     yet deleted) record in the change-log stream.
    #
    #   * `LATEST`   –   Indicates that reading should start at the most
    #     recent record in the system, which is the latest unexpired (not yet
    #     deleted) record in the change-log stream.
    #
    # @option params [Integer] :commit_num
    #   The commit number of the starting record to read from the change-log
    #   stream. This parameter is required when `iteratorType`
    #   is`AT_SEQUENCE_NUMBER` or `AFTER_SEQUENCE_NUMBER`, and ignored when
    #   `iteratorType` is `TRIM_HORIZON` or `LATEST`.
    #
    # @option params [Integer] :op_num
    #   The operation sequence number within the specified commit to start
    #   reading from in the change-log stream data. The default is `1`.
    #
    # @option params [String] :encoding
    #   If set to TRUE, Neptune compresses the response using gzip encoding.
    #
    # @return [Types::GetPropertygraphStreamOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetPropertygraphStreamOutput#last_event_id #last_event_id} => Hash&lt;String,String&gt;
    #   * {Types::GetPropertygraphStreamOutput#last_trx_timestamp_in_millis #last_trx_timestamp_in_millis} => Integer
    #   * {Types::GetPropertygraphStreamOutput#format #format} => String
    #   * {Types::GetPropertygraphStreamOutput#records #records} => Array&lt;Types::PropertygraphRecord&gt;
    #   * {Types::GetPropertygraphStreamOutput#total_records #total_records} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_propertygraph_stream({
    #     limit: 1,
    #     iterator_type: "AT_SEQUENCE_NUMBER", # accepts AT_SEQUENCE_NUMBER, AFTER_SEQUENCE_NUMBER, TRIM_HORIZON, LATEST
    #     commit_num: 1,
    #     op_num: 1,
    #     encoding: "gzip", # accepts gzip
    #   })
    #
    # @example Response structure
    #
    #   resp.last_event_id #=> Hash
    #   resp.last_event_id["String"] #=> String
    #   resp.last_trx_timestamp_in_millis #=> Integer
    #   resp.format #=> String
    #   resp.records #=> Array
    #   resp.records[0].commit_timestamp_in_millis #=> Integer
    #   resp.records[0].event_id #=> Hash
    #   resp.records[0].event_id["String"] #=> String
    #   resp.records[0].data.id #=> String
    #   resp.records[0].data.type #=> String
    #   resp.records[0].data.key #=> String
    #   resp.records[0].data.from #=> String
    #   resp.records[0].data.to #=> String
    #   resp.records[0].op #=> String
    #   resp.records[0].is_last_op #=> Boolean
    #   resp.total_records #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/GetPropertygraphStream AWS API Documentation
    #
    # @overload get_propertygraph_stream(params = {})
    # @param [Hash] params ({})
    def get_propertygraph_stream(params = {}, options = {})
      req = build_request(:get_propertygraph_stream, params)
      req.send_request(options)
    end

    # Gets a graph summary for a property graph.
    #
    # When invoking this operation in a Neptune cluster that has IAM
    # authentication enabled, the IAM user or role making the request must
    # have a policy attached that allows the [neptune-db:GetGraphSummary][1]
    # IAM action in that cluster.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#getgraphsummary
    #
    # @option params [String] :mode
    #   Mode can take one of two values: `BASIC` (the default), and
    #   `DETAILED`.
    #
    # @return [Types::GetPropertygraphSummaryOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetPropertygraphSummaryOutput#status_code #status_code} => Integer
    #   * {Types::GetPropertygraphSummaryOutput#payload #payload} => Types::PropertygraphSummaryValueMap
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_propertygraph_summary({
    #     mode: "basic", # accepts basic, detailed
    #   })
    #
    # @example Response structure
    #
    #   resp.status_code #=> Integer
    #   resp.payload.version #=> String
    #   resp.payload.last_statistics_computation_time #=> Time
    #   resp.payload.graph_summary.num_nodes #=> Integer
    #   resp.payload.graph_summary.num_edges #=> Integer
    #   resp.payload.graph_summary.num_node_labels #=> Integer
    #   resp.payload.graph_summary.num_edge_labels #=> Integer
    #   resp.payload.graph_summary.node_labels #=> Array
    #   resp.payload.graph_summary.node_labels[0] #=> String
    #   resp.payload.graph_summary.edge_labels #=> Array
    #   resp.payload.graph_summary.edge_labels[0] #=> String
    #   resp.payload.graph_summary.num_node_properties #=> Integer
    #   resp.payload.graph_summary.num_edge_properties #=> Integer
    #   resp.payload.graph_summary.node_properties #=> Array
    #   resp.payload.graph_summary.node_properties[0] #=> Hash
    #   resp.payload.graph_summary.node_properties[0]["String"] #=> Integer
    #   resp.payload.graph_summary.edge_properties #=> Array
    #   resp.payload.graph_summary.edge_properties[0] #=> Hash
    #   resp.payload.graph_summary.edge_properties[0]["String"] #=> Integer
    #   resp.payload.graph_summary.total_node_property_values #=> Integer
    #   resp.payload.graph_summary.total_edge_property_values #=> Integer
    #   resp.payload.graph_summary.node_structures #=> Array
    #   resp.payload.graph_summary.node_structures[0].count #=> Integer
    #   resp.payload.graph_summary.node_structures[0].node_properties #=> Array
    #   resp.payload.graph_summary.node_structures[0].node_properties[0] #=> String
    #   resp.payload.graph_summary.node_structures[0].distinct_outgoing_edge_labels #=> Array
    #   resp.payload.graph_summary.node_structures[0].distinct_outgoing_edge_labels[0] #=> String
    #   resp.payload.graph_summary.edge_structures #=> Array
    #   resp.payload.graph_summary.edge_structures[0].count #=> Integer
    #   resp.payload.graph_summary.edge_structures[0].edge_properties #=> Array
    #   resp.payload.graph_summary.edge_structures[0].edge_properties[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/GetPropertygraphSummary AWS API Documentation
    #
    # @overload get_propertygraph_summary(params = {})
    # @param [Hash] params ({})
    def get_propertygraph_summary(params = {}, options = {})
      req = build_request(:get_propertygraph_summary, params)
      req.send_request(options)
    end

    # Gets a graph summary for an RDF graph.
    #
    # When invoking this operation in a Neptune cluster that has IAM
    # authentication enabled, the IAM user or role making the request must
    # have a policy attached that allows the [neptune-db:GetGraphSummary][1]
    # IAM action in that cluster.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#getgraphsummary
    #
    # @option params [String] :mode
    #   Mode can take one of two values: `BASIC` (the default), and
    #   `DETAILED`.
    #
    # @return [Types::GetRDFGraphSummaryOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetRDFGraphSummaryOutput#status_code #status_code} => Integer
    #   * {Types::GetRDFGraphSummaryOutput#payload #payload} => Types::RDFGraphSummaryValueMap
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_rdf_graph_summary({
    #     mode: "basic", # accepts basic, detailed
    #   })
    #
    # @example Response structure
    #
    #   resp.status_code #=> Integer
    #   resp.payload.version #=> String
    #   resp.payload.last_statistics_computation_time #=> Time
    #   resp.payload.graph_summary.num_distinct_subjects #=> Integer
    #   resp.payload.graph_summary.num_distinct_predicates #=> Integer
    #   resp.payload.graph_summary.num_quads #=> Integer
    #   resp.payload.graph_summary.num_classes #=> Integer
    #   resp.payload.graph_summary.classes #=> Array
    #   resp.payload.graph_summary.classes[0] #=> String
    #   resp.payload.graph_summary.predicates #=> Array
    #   resp.payload.graph_summary.predicates[0] #=> Hash
    #   resp.payload.graph_summary.predicates[0]["String"] #=> Integer
    #   resp.payload.graph_summary.subject_structures #=> Array
    #   resp.payload.graph_summary.subject_structures[0].count #=> Integer
    #   resp.payload.graph_summary.subject_structures[0].predicates #=> Array
    #   resp.payload.graph_summary.subject_structures[0].predicates[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/GetRDFGraphSummary AWS API Documentation
    #
    # @overload get_rdf_graph_summary(params = {})
    # @param [Hash] params ({})
    def get_rdf_graph_summary(params = {}, options = {})
      req = build_request(:get_rdf_graph_summary, params)
      req.send_request(options)
    end

    # Gets RDF statistics (SPARQL).
    #
    # @return [Types::GetSparqlStatisticsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSparqlStatisticsOutput#status #status} => String
    #   * {Types::GetSparqlStatisticsOutput#payload #payload} => Types::Statistics
    #
    # @example Response structure
    #
    #   resp.status #=> String
    #   resp.payload.auto_compute #=> Boolean
    #   resp.payload.active #=> Boolean
    #   resp.payload.statistics_id #=> String
    #   resp.payload.date #=> Time
    #   resp.payload.note #=> String
    #   resp.payload.signature_info.signature_count #=> Integer
    #   resp.payload.signature_info.instance_count #=> Integer
    #   resp.payload.signature_info.predicate_count #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/GetSparqlStatistics AWS API Documentation
    #
    # @overload get_sparql_statistics(params = {})
    # @param [Hash] params ({})
    def get_sparql_statistics(params = {}, options = {})
      req = build_request(:get_sparql_statistics, params)
      req.send_request(options)
    end

    # Gets a stream for an RDF graph.
    #
    # With the Neptune Streams feature, you can generate a complete sequence
    # of change-log entries that record every change made to your graph data
    # as it happens. `GetSparqlStream` lets you collect these change-log
    # entries for an RDF graph.
    #
    # The Neptune streams feature needs to be enabled on your Neptune
    # DBcluster. To enable streams, set the [neptune\_streams][1] DB cluster
    # parameter to `1`.
    #
    # See [Capturing graph changes in real time using Neptune streams][2].
    #
    # When invoking this operation in a Neptune cluster that has IAM
    # authentication enabled, the IAM user or role making the request must
    # have a policy attached that allows the
    # [neptune-db:GetStreamRecords][3] IAM action in that cluster.
    #
    # Note that the [neptune-db:QueryLanguage:Sparql][4] IAM condition key
    # can be used in the policy document to restrict the use of SPARQL
    # queries (see [Condition keys available in Neptune IAM data-access
    # policy statements][5]).
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/neptune/latest/userguide/parameters.html#parameters-db-cluster-parameters-neptune_streams
    # [2]: https://docs.aws.amazon.com/neptune/latest/userguide/streams.html
    # [3]: https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#getstreamrecords
    # [4]: https://docs.aws.amazon.com/neptune/latest/userguide/iam-data-condition-keys.html#iam-neptune-condition-keys
    # [5]: https://docs.aws.amazon.com/neptune/latest/userguide/iam-data-condition-keys.html
    #
    # @option params [Integer] :limit
    #   Specifies the maximum number of records to return. There is also a
    #   size limit of 10 MB on the response that can't be modified and that
    #   takes precedence over the number of records specified in the `limit`
    #   parameter. The response does include a threshold-breaching record if
    #   the 10 MB limit was reached.
    #
    #   The range for `limit` is 1 to 100,000, with a default of 10.
    #
    # @option params [String] :iterator_type
    #   Can be one of:
    #
    #   * `AT_SEQUENCE_NUMBER`   –   Indicates that reading should start from
    #     the event sequence number specified jointly by the `commitNum` and
    #     `opNum` parameters.
    #
    #   * `AFTER_SEQUENCE_NUMBER`   –   Indicates that reading should start
    #     right after the event sequence number specified jointly by the
    #     `commitNum` and `opNum` parameters.
    #
    #   * `TRIM_HORIZON`   –   Indicates that reading should start at the last
    #     untrimmed record in the system, which is the oldest unexpired (not
    #     yet deleted) record in the change-log stream.
    #
    #   * `LATEST`   –   Indicates that reading should start at the most
    #     recent record in the system, which is the latest unexpired (not yet
    #     deleted) record in the change-log stream.
    #
    # @option params [Integer] :commit_num
    #   The commit number of the starting record to read from the change-log
    #   stream. This parameter is required when `iteratorType`
    #   is`AT_SEQUENCE_NUMBER` or `AFTER_SEQUENCE_NUMBER`, and ignored when
    #   `iteratorType` is `TRIM_HORIZON` or `LATEST`.
    #
    # @option params [Integer] :op_num
    #   The operation sequence number within the specified commit to start
    #   reading from in the change-log stream data. The default is `1`.
    #
    # @option params [String] :encoding
    #   If set to TRUE, Neptune compresses the response using gzip encoding.
    #
    # @return [Types::GetSparqlStreamOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSparqlStreamOutput#last_event_id #last_event_id} => Hash&lt;String,String&gt;
    #   * {Types::GetSparqlStreamOutput#last_trx_timestamp_in_millis #last_trx_timestamp_in_millis} => Integer
    #   * {Types::GetSparqlStreamOutput#format #format} => String
    #   * {Types::GetSparqlStreamOutput#records #records} => Array&lt;Types::SparqlRecord&gt;
    #   * {Types::GetSparqlStreamOutput#total_records #total_records} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_sparql_stream({
    #     limit: 1,
    #     iterator_type: "AT_SEQUENCE_NUMBER", # accepts AT_SEQUENCE_NUMBER, AFTER_SEQUENCE_NUMBER, TRIM_HORIZON, LATEST
    #     commit_num: 1,
    #     op_num: 1,
    #     encoding: "gzip", # accepts gzip
    #   })
    #
    # @example Response structure
    #
    #   resp.last_event_id #=> Hash
    #   resp.last_event_id["String"] #=> String
    #   resp.last_trx_timestamp_in_millis #=> Integer
    #   resp.format #=> String
    #   resp.records #=> Array
    #   resp.records[0].commit_timestamp_in_millis #=> Integer
    #   resp.records[0].event_id #=> Hash
    #   resp.records[0].event_id["String"] #=> String
    #   resp.records[0].data.stmt #=> String
    #   resp.records[0].op #=> String
    #   resp.records[0].is_last_op #=> Boolean
    #   resp.total_records #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/GetSparqlStream AWS API Documentation
    #
    # @overload get_sparql_stream(params = {})
    # @param [Hash] params ({})
    def get_sparql_stream(params = {}, options = {})
      req = build_request(:get_sparql_stream, params)
      req.send_request(options)
    end

    # Lists active Gremlin queries. See [Gremlin query status API][1] for
    # details about the output.
    #
    # When invoking this operation in a Neptune cluster that has IAM
    # authentication enabled, the IAM user or role making the request must
    # have a policy attached that allows the [neptune-db:GetQueryStatus][2]
    # IAM action in that cluster.
    #
    # Note that the [neptune-db:QueryLanguage:Gremlin][3] IAM condition key
    # can be used in the policy document to restrict the use of Gremlin
    # queries (see [Condition keys available in Neptune IAM data-access
    # policy statements][4]).
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/neptune/latest/userguide/gremlin-api-status.html
    # [2]: https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#getquerystatus
    # [3]: https://docs.aws.amazon.com/neptune/latest/userguide/iam-data-condition-keys.html#iam-neptune-condition-keys
    # [4]: https://docs.aws.amazon.com/neptune/latest/userguide/iam-data-condition-keys.html
    #
    # @option params [Boolean] :include_waiting
    #   If set to `TRUE`, the list returned includes waiting queries. The
    #   default is `FALSE`;
    #
    # @return [Types::ListGremlinQueriesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListGremlinQueriesOutput#accepted_query_count #accepted_query_count} => Integer
    #   * {Types::ListGremlinQueriesOutput#running_query_count #running_query_count} => Integer
    #   * {Types::ListGremlinQueriesOutput#queries #queries} => Array&lt;Types::GremlinQueryStatus&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_gremlin_queries({
    #     include_waiting: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.accepted_query_count #=> Integer
    #   resp.running_query_count #=> Integer
    #   resp.queries #=> Array
    #   resp.queries[0].query_id #=> String
    #   resp.queries[0].query_string #=> String
    #   resp.queries[0].query_eval_stats.waited #=> Integer
    #   resp.queries[0].query_eval_stats.elapsed #=> Integer
    #   resp.queries[0].query_eval_stats.cancelled #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/ListGremlinQueries AWS API Documentation
    #
    # @overload list_gremlin_queries(params = {})
    # @param [Hash] params ({})
    def list_gremlin_queries(params = {}, options = {})
      req = build_request(:list_gremlin_queries, params)
      req.send_request(options)
    end

    # Retrieves a list of the `loadIds` for all active loader jobs.
    #
    # When invoking this operation in a Neptune cluster that has IAM
    # authentication enabled, the IAM user or role making the request must
    # have a policy attached that allows the [neptune-db:ListLoaderJobs][1]
    # IAM action in that cluster..
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#listloaderjobs
    #
    # @option params [Integer] :limit
    #   The number of load IDs to list. Must be a positive integer greater
    #   than zero and not more than `100` (which is the default).
    #
    # @option params [Boolean] :include_queued_loads
    #   An optional parameter that can be used to exclude the load IDs of
    #   queued load requests when requesting a list of load IDs by setting the
    #   parameter to `FALSE`. The default value is `TRUE`.
    #
    # @return [Types::ListLoaderJobsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListLoaderJobsOutput#status #status} => String
    #   * {Types::ListLoaderJobsOutput#payload #payload} => Types::LoaderIdResult
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_loader_jobs({
    #     limit: 1,
    #     include_queued_loads: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> String
    #   resp.payload.load_ids #=> Array
    #   resp.payload.load_ids[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/ListLoaderJobs AWS API Documentation
    #
    # @overload list_loader_jobs(params = {})
    # @param [Hash] params ({})
    def list_loader_jobs(params = {}, options = {})
      req = build_request(:list_loader_jobs, params)
      req.send_request(options)
    end

    # Returns a list of Neptune ML data processing jobs. See [Listing active
    # data-processing jobs using the Neptune ML dataprocessing command][1].
    #
    # When invoking this operation in a Neptune cluster that has IAM
    # authentication enabled, the IAM user or role making the request must
    # have a policy attached that allows the
    # [neptune-db:ListMLDataProcessingJobs][2] IAM action in that cluster.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/neptune/latest/userguide/machine-learning-api-dataprocessing.html#machine-learning-api-dataprocessing-list-jobs
    # [2]: https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#listmldataprocessingjobs
    #
    # @option params [Integer] :max_items
    #   The maximum number of items to return (from 1 to 1024; the default is
    #   10).
    #
    # @option params [String] :neptune_iam_role_arn
    #   The ARN of an IAM role that provides Neptune access to SageMaker and
    #   Amazon S3 resources. This must be listed in your DB cluster parameter
    #   group or an error will occur.
    #
    # @return [Types::ListMLDataProcessingJobsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListMLDataProcessingJobsOutput#ids #ids} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_ml_data_processing_jobs({
    #     max_items: 1,
    #     neptune_iam_role_arn: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.ids #=> Array
    #   resp.ids[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/ListMLDataProcessingJobs AWS API Documentation
    #
    # @overload list_ml_data_processing_jobs(params = {})
    # @param [Hash] params ({})
    def list_ml_data_processing_jobs(params = {}, options = {})
      req = build_request(:list_ml_data_processing_jobs, params)
      req.send_request(options)
    end

    # Lists existing inference endpoints. See [Managing inference endpoints
    # using the endpoints command][1].
    #
    # When invoking this operation in a Neptune cluster that has IAM
    # authentication enabled, the IAM user or role making the request must
    # have a policy attached that allows the [neptune-db:ListMLEndpoints][2]
    # IAM action in that cluster.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/neptune/latest/userguide/machine-learning-api-endpoints.html
    # [2]: https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#listmlendpoints
    #
    # @option params [Integer] :max_items
    #   The maximum number of items to return (from 1 to 1024; the default is
    #   10.
    #
    # @option params [String] :neptune_iam_role_arn
    #   The ARN of an IAM role that provides Neptune access to SageMaker and
    #   Amazon S3 resources. This must be listed in your DB cluster parameter
    #   group or an error will occur.
    #
    # @return [Types::ListMLEndpointsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListMLEndpointsOutput#ids #ids} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_ml_endpoints({
    #     max_items: 1,
    #     neptune_iam_role_arn: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.ids #=> Array
    #   resp.ids[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/ListMLEndpoints AWS API Documentation
    #
    # @overload list_ml_endpoints(params = {})
    # @param [Hash] params ({})
    def list_ml_endpoints(params = {}, options = {})
      req = build_request(:list_ml_endpoints, params)
      req.send_request(options)
    end

    # Lists Neptune ML model-training jobs. See [Model training using the
    # `modeltraining` command][1].
    #
    # When invoking this operation in a Neptune cluster that has IAM
    # authentication enabled, the IAM user or role making the request must
    # have a policy attached that allows the
    # [neptune-db:neptune-db:ListMLModelTrainingJobs][2] IAM action in that
    # cluster.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/neptune/latest/userguide/machine-learning-api-modeltraining.html
    # [2]: https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#neptune-db:listmlmodeltrainingjobs
    #
    # @option params [Integer] :max_items
    #   The maximum number of items to return (from 1 to 1024; the default is
    #   10).
    #
    # @option params [String] :neptune_iam_role_arn
    #   The ARN of an IAM role that provides Neptune access to SageMaker and
    #   Amazon S3 resources. This must be listed in your DB cluster parameter
    #   group or an error will occur.
    #
    # @return [Types::ListMLModelTrainingJobsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListMLModelTrainingJobsOutput#ids #ids} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_ml_model_training_jobs({
    #     max_items: 1,
    #     neptune_iam_role_arn: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.ids #=> Array
    #   resp.ids[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/ListMLModelTrainingJobs AWS API Documentation
    #
    # @overload list_ml_model_training_jobs(params = {})
    # @param [Hash] params ({})
    def list_ml_model_training_jobs(params = {}, options = {})
      req = build_request(:list_ml_model_training_jobs, params)
      req.send_request(options)
    end

    # Returns a list of model transform job IDs. See [Use a trained model to
    # generate new model artifacts][1].
    #
    # When invoking this operation in a Neptune cluster that has IAM
    # authentication enabled, the IAM user or role making the request must
    # have a policy attached that allows the
    # [neptune-db:ListMLModelTransformJobs][2] IAM action in that cluster.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/neptune/latest/userguide/machine-learning-model-transform.html
    # [2]: https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#listmlmodeltransformjobs
    #
    # @option params [Integer] :max_items
    #   The maximum number of items to return (from 1 to 1024; the default is
    #   10).
    #
    # @option params [String] :neptune_iam_role_arn
    #   The ARN of an IAM role that provides Neptune access to SageMaker and
    #   Amazon S3 resources. This must be listed in your DB cluster parameter
    #   group or an error will occur.
    #
    # @return [Types::ListMLModelTransformJobsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListMLModelTransformJobsOutput#ids #ids} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_ml_model_transform_jobs({
    #     max_items: 1,
    #     neptune_iam_role_arn: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.ids #=> Array
    #   resp.ids[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/ListMLModelTransformJobs AWS API Documentation
    #
    # @overload list_ml_model_transform_jobs(params = {})
    # @param [Hash] params ({})
    def list_ml_model_transform_jobs(params = {}, options = {})
      req = build_request(:list_ml_model_transform_jobs, params)
      req.send_request(options)
    end

    # Lists active openCypher queries. See [Neptune openCypher status
    # endpoint][1] for more information.
    #
    # When invoking this operation in a Neptune cluster that has IAM
    # authentication enabled, the IAM user or role making the request must
    # have a policy attached that allows the [neptune-db:GetQueryStatus][2]
    # IAM action in that cluster.
    #
    # Note that the [neptune-db:QueryLanguage:OpenCypher][3] IAM condition
    # key can be used in the policy document to restrict the use of
    # openCypher queries (see [Condition keys available in Neptune IAM
    # data-access policy statements][4]).
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/neptune/latest/userguide/access-graph-opencypher-status.html
    # [2]: https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#getquerystatus
    # [3]: https://docs.aws.amazon.com/neptune/latest/userguide/iam-data-condition-keys.html#iam-neptune-condition-keys
    # [4]: https://docs.aws.amazon.com/neptune/latest/userguide/iam-data-condition-keys.html
    #
    # @option params [Boolean] :include_waiting
    #   When set to `TRUE` and other parameters are not present, causes status
    #   information to be returned for waiting queries as well as for running
    #   queries.
    #
    # @return [Types::ListOpenCypherQueriesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListOpenCypherQueriesOutput#accepted_query_count #accepted_query_count} => Integer
    #   * {Types::ListOpenCypherQueriesOutput#running_query_count #running_query_count} => Integer
    #   * {Types::ListOpenCypherQueriesOutput#queries #queries} => Array&lt;Types::GremlinQueryStatus&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_open_cypher_queries({
    #     include_waiting: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.accepted_query_count #=> Integer
    #   resp.running_query_count #=> Integer
    #   resp.queries #=> Array
    #   resp.queries[0].query_id #=> String
    #   resp.queries[0].query_string #=> String
    #   resp.queries[0].query_eval_stats.waited #=> Integer
    #   resp.queries[0].query_eval_stats.elapsed #=> Integer
    #   resp.queries[0].query_eval_stats.cancelled #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/ListOpenCypherQueries AWS API Documentation
    #
    # @overload list_open_cypher_queries(params = {})
    # @param [Hash] params ({})
    def list_open_cypher_queries(params = {}, options = {})
      req = build_request(:list_open_cypher_queries, params)
      req.send_request(options)
    end

    # Manages the generation and use of property graph statistics.
    #
    # When invoking this operation in a Neptune cluster that has IAM
    # authentication enabled, the IAM user or role making the request must
    # have a policy attached that allows the
    # [neptune-db:ManageStatistics][1] IAM action in that cluster.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#managestatistics
    #
    # @option params [String] :mode
    #   The statistics generation mode. One of: `DISABLE_AUTOCOMPUTE`,
    #   `ENABLE_AUTOCOMPUTE`, or `REFRESH`, the last of which manually
    #   triggers DFE statistics generation.
    #
    # @return [Types::ManagePropertygraphStatisticsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ManagePropertygraphStatisticsOutput#status #status} => String
    #   * {Types::ManagePropertygraphStatisticsOutput#payload #payload} => Types::RefreshStatisticsIdMap
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.manage_propertygraph_statistics({
    #     mode: "disableAutoCompute", # accepts disableAutoCompute, enableAutoCompute, refresh
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> String
    #   resp.payload.statistics_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/ManagePropertygraphStatistics AWS API Documentation
    #
    # @overload manage_propertygraph_statistics(params = {})
    # @param [Hash] params ({})
    def manage_propertygraph_statistics(params = {}, options = {})
      req = build_request(:manage_propertygraph_statistics, params)
      req.send_request(options)
    end

    # Manages the generation and use of RDF graph statistics.
    #
    # When invoking this operation in a Neptune cluster that has IAM
    # authentication enabled, the IAM user or role making the request must
    # have a policy attached that allows the
    # [neptune-db:ManageStatistics][1] IAM action in that cluster.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#managestatistics
    #
    # @option params [String] :mode
    #   The statistics generation mode. One of: `DISABLE_AUTOCOMPUTE`,
    #   `ENABLE_AUTOCOMPUTE`, or `REFRESH`, the last of which manually
    #   triggers DFE statistics generation.
    #
    # @return [Types::ManageSparqlStatisticsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ManageSparqlStatisticsOutput#status #status} => String
    #   * {Types::ManageSparqlStatisticsOutput#payload #payload} => Types::RefreshStatisticsIdMap
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.manage_sparql_statistics({
    #     mode: "disableAutoCompute", # accepts disableAutoCompute, enableAutoCompute, refresh
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> String
    #   resp.payload.statistics_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/ManageSparqlStatistics AWS API Documentation
    #
    # @overload manage_sparql_statistics(params = {})
    # @param [Hash] params ({})
    def manage_sparql_statistics(params = {}, options = {})
      req = build_request(:manage_sparql_statistics, params)
      req.send_request(options)
    end

    # Starts a Neptune bulk loader job to load data from an Amazon S3 bucket
    # into a Neptune DB instance. See [Using the Amazon Neptune Bulk Loader
    # to Ingest Data][1].
    #
    # When invoking this operation in a Neptune cluster that has IAM
    # authentication enabled, the IAM user or role making the request must
    # have a policy attached that allows the [neptune-db:StartLoaderJob][2]
    # IAM action in that cluster.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/neptune/latest/userguide/bulk-load.html
    # [2]: https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#startloaderjob
    #
    # @option params [required, String] :source
    #   The `source` parameter accepts an S3 URI that identifies a single
    #   file, multiple files, a folder, or multiple folders. Neptune loads
    #   every data file in any folder that is specified.
    #
    #   The URI can be in any of the following formats.
    #
    #   * `s3://(bucket_name)/(object-key-name)`
    #
    #   * `https://s3.amazonaws.com/(bucket_name)/(object-key-name)`
    #
    #   * `https://s3.us-east-1.amazonaws.com/(bucket_name)/(object-key-name)`
    #
    #   The `object-key-name` element of the URI is equivalent to the
    #   [prefix][1] parameter in an S3 [ListObjects][2] API call. It
    #   identifies all the objects in the specified S3 bucket whose names
    #   begin with that prefix. That can be a single file or folder, or
    #   multiple files and/or folders.
    #
    #   The specified folder or folders can contain multiple vertex files and
    #   multiple edge files.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListObjects.html#API_ListObjects_RequestParameters
    #   [2]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListObjects.html
    #
    # @option params [required, String] :format
    #   The format of the data. For more information about data formats for
    #   the Neptune `Loader` command, see [Load Data Formats][1].
    #
    #   **Allowed values**
    #
    #   * <b> <code>csv</code> </b> for the [Gremlin CSV data format][2].
    #
    #   * <b> <code>opencypher</code> </b> for the [openCypher CSV data
    #     format][3].
    #
    #   * <b> <code>ntriples</code> </b> for the [N-Triples RDF data
    #     format][4].
    #
    #   * <b> <code>nquads</code> </b> for the [N-Quads RDF data format][5].
    #
    #   * <b> <code>rdfxml</code> </b> for the [RDF\\XML RDF data format][6].
    #
    #   * <b> <code>turtle</code> </b> for the [Turtle RDF data format][7].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/neptune/latest/userguide/bulk-load-tutorial-format.html
    #   [2]: https://docs.aws.amazon.com/neptune/latest/userguide/bulk-load-tutorial-format-gremlin.html
    #   [3]: https://docs.aws.amazon.com/neptune/latest/userguide/bulk-load-tutorial-format-opencypher.html
    #   [4]: https://www.w3.org/TR/n-triples/
    #   [5]: https://www.w3.org/TR/n-quads/
    #   [6]: https://www.w3.org/TR/rdf-syntax-grammar/
    #   [7]: https://www.w3.org/TR/turtle/
    #
    # @option params [required, String] :s3_bucket_region
    #   The Amazon region of the S3 bucket. This must match the Amazon Region
    #   of the DB cluster.
    #
    # @option params [required, String] :iam_role_arn
    #   The Amazon Resource Name (ARN) for an IAM role to be assumed by the
    #   Neptune DB instance for access to the S3 bucket. The IAM role ARN
    #   provided here should be attached to the DB cluster (see [Adding the
    #   IAM Role to an Amazon Neptune Cluster][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/neptune/latest/userguide/bulk-load-tutorial-IAM-add-role-cluster.html
    #
    # @option params [String] :mode
    #   The load job mode.
    #
    #   *Allowed values*: `RESUME`, `NEW`, `AUTO`.
    #
    #   *Default value*: `AUTO`.
    #
    #   ****
    #
    #   * `RESUME`   –   In RESUME mode, the loader looks for a previous load
    #     from this source, and if it finds one, resumes that load job. If no
    #     previous load job is found, the loader stops.
    #
    #     The loader avoids reloading files that were successfully loaded in a
    #     previous job. It only tries to process failed files. If you dropped
    #     previously loaded data from your Neptune cluster, that data is not
    #     reloaded in this mode. If a previous load job loaded all files from
    #     the same source successfully, nothing is reloaded, and the loader
    #     returns success.
    #
    #   * `NEW`   –   In NEW mode, the creates a new load request regardless
    #     of any previous loads. You can use this mode to reload all the data
    #     from a source after dropping previously loaded data from your
    #     Neptune cluster, or to load new data available at the same source.
    #
    #   * `AUTO`   –   In AUTO mode, the loader looks for a previous load job
    #     from the same source, and if it finds one, resumes that job, just as
    #     in `RESUME` mode.
    #
    #     If the loader doesn't find a previous load job from the same
    #     source, it loads all data from the source, just as in `NEW` mode.
    #
    # @option params [Boolean] :fail_on_error
    #   <b> <code>failOnError</code> </b>   –   A flag to toggle a complete
    #   stop on an error.
    #
    #   *Allowed values*: `"TRUE"`, `"FALSE"`.
    #
    #   *Default value*: `"TRUE"`.
    #
    #   When this parameter is set to `"FALSE"`, the loader tries to load all
    #   the data in the location specified, skipping any entries with errors.
    #
    #   When this parameter is set to `"TRUE"`, the loader stops as soon as it
    #   encounters an error. Data loaded up to that point persists.
    #
    # @option params [String] :parallelism
    #   The optional `parallelism` parameter can be set to reduce the number
    #   of threads used by the bulk load process.
    #
    #   *Allowed values*:
    #
    #   * `LOW` –   The number of threads used is the number of available
    #     vCPUs divided by 8.
    #
    #   * `MEDIUM` –   The number of threads used is the number of available
    #     vCPUs divided by 2.
    #
    #   * `HIGH` –   The number of threads used is the same as the number of
    #     available vCPUs.
    #
    #   * `OVERSUBSCRIBE` –   The number of threads used is the number of
    #     available vCPUs multiplied by 2. If this value is used, the bulk
    #     loader takes up all available resources.
    #
    #     This does not mean, however, that the `OVERSUBSCRIBE` setting
    #     results in 100% CPU utilization. Because the load operation is I/O
    #     bound, the highest CPU utilization to expect is in the 60% to 70%
    #     range.
    #
    #   *Default value*: `HIGH`
    #
    #   The `parallelism` setting can sometimes result in a deadlock between
    #   threads when loading openCypher data. When this happens, Neptune
    #   returns the `LOAD_DATA_DEADLOCK` error. You can generally fix the
    #   issue by setting `parallelism` to a lower setting and retrying the
    #   load command.
    #
    # @option params [Hash<String,String>] :parser_configuration
    #   <b> <code>parserConfiguration</code> </b>   –   An optional object
    #   with additional parser configuration values. Each of the child
    #   parameters is also optional:
    #
    #   ****
    #
    #   * <b> <code>namedGraphUri</code> </b>   –   The default graph for all
    #     RDF formats when no graph is specified (for non-quads formats and
    #     NQUAD entries with no graph).
    #
    #     The default is
    #     `https://aws.amazon.com/neptune/vocab/v01/DefaultNamedGraph`.
    #
    #   * <b> <code>baseUri</code> </b>   –   The base URI for RDF/XML and
    #     Turtle formats.
    #
    #     The default is `https://aws.amazon.com/neptune/default`.
    #
    #   * <b> <code>allowEmptyStrings</code> </b>   –   Gremlin users need to
    #     be able to pass empty string values("") as node and edge
    #     properties when loading CSV data. If `allowEmptyStrings` is set to
    #     `false` (the default), such empty strings are treated as nulls and
    #     are not loaded.
    #
    #     If `allowEmptyStrings` is set to `true`, the loader treats empty
    #     strings as valid property values and loads them accordingly.
    #
    # @option params [Boolean] :update_single_cardinality_properties
    #   `updateSingleCardinalityProperties` is an optional parameter that
    #   controls how the bulk loader treats a new value for single-cardinality
    #   vertex or edge properties. This is not supported for loading
    #   openCypher data.
    #
    #   *Allowed values*: `"TRUE"`, `"FALSE"`.
    #
    #   *Default value*: `"FALSE"`.
    #
    #   By default, or when `updateSingleCardinalityProperties` is explicitly
    #   set to `"FALSE"`, the loader treats a new value as an error, because
    #   it violates single cardinality.
    #
    #   When `updateSingleCardinalityProperties` is set to `"TRUE"`, on the
    #   other hand, the bulk loader replaces the existing value with the new
    #   one. If multiple edge or single-cardinality vertex property values are
    #   provided in the source file(s) being loaded, the final value at the
    #   end of the bulk load could be any one of those new values. The loader
    #   only guarantees that the existing value has been replaced by one of
    #   the new ones.
    #
    # @option params [Boolean] :queue_request
    #   This is an optional flag parameter that indicates whether the load
    #   request can be queued up or not.
    #
    #   You don't have to wait for one load job to complete before issuing
    #   the next one, because Neptune can queue up as many as 64 jobs at a
    #   time, provided that their `queueRequest` parameters are all set to
    #   `"TRUE"`. The queue order of the jobs will be first-in-first-out
    #   (FIFO).
    #
    #   If the `queueRequest` parameter is omitted or set to `"FALSE"`, the
    #   load request will fail if another load job is already running.
    #
    #   *Allowed values*: `"TRUE"`, `"FALSE"`.
    #
    #   *Default value*: `"FALSE"`.
    #
    # @option params [Array<String>] :dependencies
    #   This is an optional parameter that can make a queued load request
    #   contingent on the successful completion of one or more previous jobs
    #   in the queue.
    #
    #   Neptune can queue up as many as 64 load requests at a time, if their
    #   `queueRequest` parameters are set to `"TRUE"`. The `dependencies`
    #   parameter lets you make execution of such a queued request dependent
    #   on the successful completion of one or more specified previous
    #   requests in the queue.
    #
    #   For example, if load `Job-A` and `Job-B` are independent of each
    #   other, but load `Job-C` needs `Job-A` and `Job-B` to be finished
    #   before it begins, proceed as follows:
    #
    #   1.  Submit `load-job-A` and `load-job-B` one after another in any
    #       order, and save their load-ids.
    #
    #   2.  Submit `load-job-C` with the load-ids of the two jobs in its
    #       `dependencies` field:
    #
    #   Because of the `dependencies` parameter, the bulk loader will not
    #   start `Job-C` until `Job-A` and `Job-B` have completed successfully.
    #   If either one of them fails, Job-C will not be executed, and its
    #   status will be set to `LOAD_FAILED_BECAUSE_DEPENDENCY_NOT_SATISFIED`.
    #
    #   You can set up multiple levels of dependency in this way, so that the
    #   failure of one job will cause all requests that are directly or
    #   indirectly dependent on it to be cancelled.
    #
    # @option params [Boolean] :user_provided_edge_ids
    #   This parameter is required only when loading openCypher data that
    #   contains relationship IDs. It must be included and set to `True` when
    #   openCypher relationship IDs are explicitly provided in the load data
    #   (recommended).
    #
    #   When `userProvidedEdgeIds` is absent or set to `True`, an `:ID` column
    #   must be present in every relationship file in the load.
    #
    #   When `userProvidedEdgeIds` is present and set to `False`, relationship
    #   files in the load **must not** contain an `:ID` column. Instead, the
    #   Neptune loader automatically generates an ID for each relationship.
    #
    #   It's useful to provide relationship IDs explicitly so that the loader
    #   can resume loading after error in the CSV data have been fixed,
    #   without having to reload any relationships that have already been
    #   loaded. If relationship IDs have not been explicitly assigned, the
    #   loader cannot resume a failed load if any relationship file has had to
    #   be corrected, and must instead reload all the relationships.
    #
    # @return [Types::StartLoaderJobOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartLoaderJobOutput#status #status} => String
    #   * {Types::StartLoaderJobOutput#payload #payload} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_loader_job({
    #     source: "String", # required
    #     format: "csv", # required, accepts csv, opencypher, ntriples, nquads, rdfxml, turtle
    #     s3_bucket_region: "us-east-1", # required, accepts us-east-1, us-east-2, us-west-1, us-west-2, ca-central-1, sa-east-1, eu-north-1, eu-west-1, eu-west-2, eu-west-3, eu-central-1, me-south-1, af-south-1, ap-east-1, ap-northeast-1, ap-northeast-2, ap-southeast-1, ap-southeast-2, ap-south-1, cn-north-1, cn-northwest-1, us-gov-west-1, us-gov-east-1, ca-west-1, eu-south-2, il-central-1, me-central-1, ap-northeast-3, ap-southeast-3, ap-southeast-4, ap-southeast-5, ap-southeast-7, mx-central-1, ap-east-2, ap-south-2, eu-central-2
    #     iam_role_arn: "String", # required
    #     mode: "RESUME", # accepts RESUME, NEW, AUTO
    #     fail_on_error: false,
    #     parallelism: "LOW", # accepts LOW, MEDIUM, HIGH, OVERSUBSCRIBE
    #     parser_configuration: {
    #       "String" => "String",
    #     },
    #     update_single_cardinality_properties: false,
    #     queue_request: false,
    #     dependencies: ["String"],
    #     user_provided_edge_ids: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> String
    #   resp.payload #=> Hash
    #   resp.payload["String"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/StartLoaderJob AWS API Documentation
    #
    # @overload start_loader_job(params = {})
    # @param [Hash] params ({})
    def start_loader_job(params = {}, options = {})
      req = build_request(:start_loader_job, params)
      req.send_request(options)
    end

    # Creates a new Neptune ML data processing job for processing the graph
    # data exported from Neptune for training. See [The `dataprocessing`
    # command][1].
    #
    # When invoking this operation in a Neptune cluster that has IAM
    # authentication enabled, the IAM user or role making the request must
    # have a policy attached that allows the
    # [neptune-db:StartMLModelDataProcessingJob][2] IAM action in that
    # cluster.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/neptune/latest/userguide/machine-learning-api-dataprocessing.html
    # [2]: https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#startmlmodeldataprocessingjob
    #
    # @option params [String] :id
    #   A unique identifier for the new job. The default is an autogenerated
    #   UUID.
    #
    # @option params [String] :previous_data_processing_job_id
    #   The job ID of a completed data processing job run on an earlier
    #   version of the data.
    #
    # @option params [required, String] :input_data_s3_location
    #   The URI of the Amazon S3 location where you want SageMaker to download
    #   the data needed to run the data processing job.
    #
    # @option params [required, String] :processed_data_s3_location
    #   The URI of the Amazon S3 location where you want SageMaker to save the
    #   results of a data processing job.
    #
    # @option params [String] :sagemaker_iam_role_arn
    #   The ARN of an IAM role for SageMaker execution. This must be listed in
    #   your DB cluster parameter group or an error will occur.
    #
    # @option params [String] :neptune_iam_role_arn
    #   The Amazon Resource Name (ARN) of an IAM role that SageMaker can
    #   assume to perform tasks on your behalf. This must be listed in your DB
    #   cluster parameter group or an error will occur.
    #
    # @option params [String] :processing_instance_type
    #   The type of ML instance used during data processing. Its memory should
    #   be large enough to hold the processed dataset. The default is the
    #   smallest ml.r5 type whose memory is ten times larger than the size of
    #   the exported graph data on disk.
    #
    # @option params [Integer] :processing_instance_volume_size_in_gb
    #   The disk volume size of the processing instance. Both input data and
    #   processed data are stored on disk, so the volume size must be large
    #   enough to hold both data sets. The default is 0. If not specified or
    #   0, Neptune ML chooses the volume size automatically based on the data
    #   size.
    #
    # @option params [Integer] :processing_time_out_in_seconds
    #   Timeout in seconds for the data processing job. The default is 86,400
    #   (1 day).
    #
    # @option params [String] :model_type
    #   One of the two model types that Neptune ML currently supports:
    #   heterogeneous graph models (`heterogeneous`), and knowledge graph
    #   (`kge`). The default is none. If not specified, Neptune ML chooses the
    #   model type automatically based on the data.
    #
    # @option params [String] :config_file_name
    #   A data specification file that describes how to load the exported
    #   graph data for training. The file is automatically generated by the
    #   Neptune export toolkit. The default is
    #   `training-data-configuration.json`.
    #
    # @option params [Array<String>] :subnets
    #   The IDs of the subnets in the Neptune VPC. The default is None.
    #
    # @option params [Array<String>] :security_group_ids
    #   The VPC security group IDs. The default is None.
    #
    # @option params [String] :volume_encryption_kms_key
    #   The Amazon Key Management Service (Amazon KMS) key that SageMaker uses
    #   to encrypt data on the storage volume attached to the ML compute
    #   instances that run the training job. The default is None.
    #
    # @option params [String] :s3_output_encryption_kms_key
    #   The Amazon Key Management Service (Amazon KMS) key that SageMaker uses
    #   to encrypt the output of the processing job. The default is none.
    #
    # @return [Types::StartMLDataProcessingJobOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartMLDataProcessingJobOutput#id #id} => String
    #   * {Types::StartMLDataProcessingJobOutput#arn #arn} => String
    #   * {Types::StartMLDataProcessingJobOutput#creation_time_in_millis #creation_time_in_millis} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_ml_data_processing_job({
    #     id: "String",
    #     previous_data_processing_job_id: "String",
    #     input_data_s3_location: "String", # required
    #     processed_data_s3_location: "String", # required
    #     sagemaker_iam_role_arn: "String",
    #     neptune_iam_role_arn: "String",
    #     processing_instance_type: "String",
    #     processing_instance_volume_size_in_gb: 1,
    #     processing_time_out_in_seconds: 1,
    #     model_type: "String",
    #     config_file_name: "String",
    #     subnets: ["String"],
    #     security_group_ids: ["String"],
    #     volume_encryption_kms_key: "String",
    #     s3_output_encryption_kms_key: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.arn #=> String
    #   resp.creation_time_in_millis #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/StartMLDataProcessingJob AWS API Documentation
    #
    # @overload start_ml_data_processing_job(params = {})
    # @param [Hash] params ({})
    def start_ml_data_processing_job(params = {}, options = {})
      req = build_request(:start_ml_data_processing_job, params)
      req.send_request(options)
    end

    # Creates a new Neptune ML model training job. See [Model training using
    # the `modeltraining` command][1].
    #
    # When invoking this operation in a Neptune cluster that has IAM
    # authentication enabled, the IAM user or role making the request must
    # have a policy attached that allows the
    # [neptune-db:StartMLModelTrainingJob][2] IAM action in that cluster.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/neptune/latest/userguide/machine-learning-api-modeltraining.html
    # [2]: https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#startmlmodeltrainingjob
    #
    # @option params [String] :id
    #   A unique identifier for the new job. The default is An autogenerated
    #   UUID.
    #
    # @option params [String] :previous_model_training_job_id
    #   The job ID of a completed model-training job that you want to update
    #   incrementally based on updated data.
    #
    # @option params [required, String] :data_processing_job_id
    #   The job ID of the completed data-processing job that has created the
    #   data that the training will work with.
    #
    # @option params [required, String] :train_model_s3_location
    #   The location in Amazon S3 where the model artifacts are to be stored.
    #
    # @option params [String] :sagemaker_iam_role_arn
    #   The ARN of an IAM role for SageMaker execution.This must be listed in
    #   your DB cluster parameter group or an error will occur.
    #
    # @option params [String] :neptune_iam_role_arn
    #   The ARN of an IAM role that provides Neptune access to SageMaker and
    #   Amazon S3 resources. This must be listed in your DB cluster parameter
    #   group or an error will occur.
    #
    # @option params [String] :base_processing_instance_type
    #   The type of ML instance used in preparing and managing training of ML
    #   models. This is a CPU instance chosen based on memory requirements for
    #   processing the training data and model.
    #
    # @option params [String] :training_instance_type
    #   The type of ML instance used for model training. All Neptune ML models
    #   support CPU, GPU, and multiGPU training. The default is
    #   `ml.p3.2xlarge`. Choosing the right instance type for training depends
    #   on the task type, graph size, and your budget.
    #
    # @option params [Integer] :training_instance_volume_size_in_gb
    #   The disk volume size of the training instance. Both input data and the
    #   output model are stored on disk, so the volume size must be large
    #   enough to hold both data sets. The default is 0. If not specified or
    #   0, Neptune ML selects a disk volume size based on the recommendation
    #   generated in the data processing step.
    #
    # @option params [Integer] :training_time_out_in_seconds
    #   Timeout in seconds for the training job. The default is 86,400 (1
    #   day).
    #
    # @option params [Integer] :max_hpo_number_of_training_jobs
    #   Maximum total number of training jobs to start for the hyperparameter
    #   tuning job. The default is 2. Neptune ML automatically tunes the
    #   hyperparameters of the machine learning model. To obtain a model that
    #   performs well, use at least 10 jobs (in other words, set
    #   `maxHPONumberOfTrainingJobs` to 10). In general, the more tuning runs,
    #   the better the results.
    #
    # @option params [Integer] :max_hpo_parallel_training_jobs
    #   Maximum number of parallel training jobs to start for the
    #   hyperparameter tuning job. The default is 2. The number of parallel
    #   jobs you can run is limited by the available resources on your
    #   training instance.
    #
    # @option params [Array<String>] :subnets
    #   The IDs of the subnets in the Neptune VPC. The default is None.
    #
    # @option params [Array<String>] :security_group_ids
    #   The VPC security group IDs. The default is None.
    #
    # @option params [String] :volume_encryption_kms_key
    #   The Amazon Key Management Service (KMS) key that SageMaker uses to
    #   encrypt data on the storage volume attached to the ML compute
    #   instances that run the training job. The default is None.
    #
    # @option params [String] :s3_output_encryption_kms_key
    #   The Amazon Key Management Service (KMS) key that SageMaker uses to
    #   encrypt the output of the processing job. The default is none.
    #
    # @option params [Boolean] :enable_managed_spot_training
    #   Optimizes the cost of training machine-learning models by using Amazon
    #   Elastic Compute Cloud spot instances. The default is `False`.
    #
    # @option params [Types::CustomModelTrainingParameters] :custom_model_training_parameters
    #   The configuration for custom model training. This is a JSON object.
    #
    # @return [Types::StartMLModelTrainingJobOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartMLModelTrainingJobOutput#id #id} => String
    #   * {Types::StartMLModelTrainingJobOutput#arn #arn} => String
    #   * {Types::StartMLModelTrainingJobOutput#creation_time_in_millis #creation_time_in_millis} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_ml_model_training_job({
    #     id: "String",
    #     previous_model_training_job_id: "String",
    #     data_processing_job_id: "String", # required
    #     train_model_s3_location: "String", # required
    #     sagemaker_iam_role_arn: "String",
    #     neptune_iam_role_arn: "String",
    #     base_processing_instance_type: "String",
    #     training_instance_type: "String",
    #     training_instance_volume_size_in_gb: 1,
    #     training_time_out_in_seconds: 1,
    #     max_hpo_number_of_training_jobs: 1,
    #     max_hpo_parallel_training_jobs: 1,
    #     subnets: ["String"],
    #     security_group_ids: ["String"],
    #     volume_encryption_kms_key: "String",
    #     s3_output_encryption_kms_key: "String",
    #     enable_managed_spot_training: false,
    #     custom_model_training_parameters: {
    #       source_s3_directory_path: "String", # required
    #       training_entry_point_script: "String",
    #       transform_entry_point_script: "String",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.arn #=> String
    #   resp.creation_time_in_millis #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/StartMLModelTrainingJob AWS API Documentation
    #
    # @overload start_ml_model_training_job(params = {})
    # @param [Hash] params ({})
    def start_ml_model_training_job(params = {}, options = {})
      req = build_request(:start_ml_model_training_job, params)
      req.send_request(options)
    end

    # Creates a new model transform job. See [Use a trained model to
    # generate new model artifacts][1].
    #
    # When invoking this operation in a Neptune cluster that has IAM
    # authentication enabled, the IAM user or role making the request must
    # have a policy attached that allows the
    # [neptune-db:StartMLModelTransformJob][2] IAM action in that cluster.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/neptune/latest/userguide/machine-learning-model-transform.html
    # [2]: https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#startmlmodeltransformjob
    #
    # @option params [String] :id
    #   A unique identifier for the new job. The default is an autogenerated
    #   UUID.
    #
    # @option params [String] :data_processing_job_id
    #   The job ID of a completed data-processing job. You must include either
    #   `dataProcessingJobId` and a `mlModelTrainingJobId`, or a
    #   `trainingJobName`.
    #
    # @option params [String] :ml_model_training_job_id
    #   The job ID of a completed model-training job. You must include either
    #   `dataProcessingJobId` and a `mlModelTrainingJobId`, or a
    #   `trainingJobName`.
    #
    # @option params [String] :training_job_name
    #   The name of a completed SageMaker training job. You must include
    #   either `dataProcessingJobId` and a `mlModelTrainingJobId`, or a
    #   `trainingJobName`.
    #
    # @option params [required, String] :model_transform_output_s3_location
    #   The location in Amazon S3 where the model artifacts are to be stored.
    #
    # @option params [String] :sagemaker_iam_role_arn
    #   The ARN of an IAM role for SageMaker execution. This must be listed in
    #   your DB cluster parameter group or an error will occur.
    #
    # @option params [String] :neptune_iam_role_arn
    #   The ARN of an IAM role that provides Neptune access to SageMaker and
    #   Amazon S3 resources. This must be listed in your DB cluster parameter
    #   group or an error will occur.
    #
    # @option params [Types::CustomModelTransformParameters] :custom_model_transform_parameters
    #   Configuration information for a model transform using a custom model.
    #   The `customModelTransformParameters` object contains the following
    #   fields, which must have values compatible with the saved model
    #   parameters from the training job:
    #
    # @option params [String] :base_processing_instance_type
    #   The type of ML instance used in preparing and managing training of ML
    #   models. This is an ML compute instance chosen based on memory
    #   requirements for processing the training data and model.
    #
    # @option params [Integer] :base_processing_instance_volume_size_in_gb
    #   The disk volume size of the training instance in gigabytes. The
    #   default is 0. Both input data and the output model are stored on disk,
    #   so the volume size must be large enough to hold both data sets. If not
    #   specified or 0, Neptune ML selects a disk volume size based on the
    #   recommendation generated in the data processing step.
    #
    # @option params [Array<String>] :subnets
    #   The IDs of the subnets in the Neptune VPC. The default is None.
    #
    # @option params [Array<String>] :security_group_ids
    #   The VPC security group IDs. The default is None.
    #
    # @option params [String] :volume_encryption_kms_key
    #   The Amazon Key Management Service (KMS) key that SageMaker uses to
    #   encrypt data on the storage volume attached to the ML compute
    #   instances that run the training job. The default is None.
    #
    # @option params [String] :s3_output_encryption_kms_key
    #   The Amazon Key Management Service (KMS) key that SageMaker uses to
    #   encrypt the output of the processing job. The default is none.
    #
    # @return [Types::StartMLModelTransformJobOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartMLModelTransformJobOutput#id #id} => String
    #   * {Types::StartMLModelTransformJobOutput#arn #arn} => String
    #   * {Types::StartMLModelTransformJobOutput#creation_time_in_millis #creation_time_in_millis} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_ml_model_transform_job({
    #     id: "String",
    #     data_processing_job_id: "String",
    #     ml_model_training_job_id: "String",
    #     training_job_name: "String",
    #     model_transform_output_s3_location: "String", # required
    #     sagemaker_iam_role_arn: "String",
    #     neptune_iam_role_arn: "String",
    #     custom_model_transform_parameters: {
    #       source_s3_directory_path: "String", # required
    #       transform_entry_point_script: "String",
    #     },
    #     base_processing_instance_type: "String",
    #     base_processing_instance_volume_size_in_gb: 1,
    #     subnets: ["String"],
    #     security_group_ids: ["String"],
    #     volume_encryption_kms_key: "String",
    #     s3_output_encryption_kms_key: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.arn #=> String
    #   resp.creation_time_in_millis #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptunedata-2023-08-01/StartMLModelTransformJob AWS API Documentation
    #
    # @overload start_ml_model_transform_job(params = {})
    # @param [Hash] params ({})
    def start_ml_model_transform_job(params = {}, options = {})
      req = build_request(:start_ml_model_transform_job, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::Neptunedata')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-neptunedata'
      context[:gem_version] = '1.31.0'
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
