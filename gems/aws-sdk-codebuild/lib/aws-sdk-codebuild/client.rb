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

module Aws::CodeBuild
  # An API client for CodeBuild.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::CodeBuild::Client.new(
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

    @identifier = :codebuild

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
    add_plugin(Aws::CodeBuild::Plugins::Endpoints)

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
    #   @option options [Aws::CodeBuild::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::CodeBuild::EndpointParameters`.
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

    # Deletes one or more builds.
    #
    # @option params [required, Array<String>] :ids
    #   The IDs of the builds to delete.
    #
    # @return [Types::BatchDeleteBuildsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchDeleteBuildsOutput#builds_deleted #builds_deleted} => Array&lt;String&gt;
    #   * {Types::BatchDeleteBuildsOutput#builds_not_deleted #builds_not_deleted} => Array&lt;Types::BuildNotDeleted&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_delete_builds({
    #     ids: ["NonEmptyString"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.builds_deleted #=> Array
    #   resp.builds_deleted[0] #=> String
    #   resp.builds_not_deleted #=> Array
    #   resp.builds_not_deleted[0].id #=> String
    #   resp.builds_not_deleted[0].status_code #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/BatchDeleteBuilds AWS API Documentation
    #
    # @overload batch_delete_builds(params = {})
    # @param [Hash] params ({})
    def batch_delete_builds(params = {}, options = {})
      req = build_request(:batch_delete_builds, params)
      req.send_request(options)
    end

    # Retrieves information about one or more batch builds.
    #
    # @option params [required, Array<String>] :ids
    #   An array that contains the batch build identifiers to retrieve.
    #
    # @return [Types::BatchGetBuildBatchesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchGetBuildBatchesOutput#build_batches #build_batches} => Array&lt;Types::BuildBatch&gt;
    #   * {Types::BatchGetBuildBatchesOutput#build_batches_not_found #build_batches_not_found} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_build_batches({
    #     ids: ["NonEmptyString"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.build_batches #=> Array
    #   resp.build_batches[0].id #=> String
    #   resp.build_batches[0].arn #=> String
    #   resp.build_batches[0].start_time #=> Time
    #   resp.build_batches[0].end_time #=> Time
    #   resp.build_batches[0].current_phase #=> String
    #   resp.build_batches[0].build_batch_status #=> String, one of "SUCCEEDED", "FAILED", "FAULT", "TIMED_OUT", "IN_PROGRESS", "STOPPED"
    #   resp.build_batches[0].source_version #=> String
    #   resp.build_batches[0].resolved_source_version #=> String
    #   resp.build_batches[0].project_name #=> String
    #   resp.build_batches[0].phases #=> Array
    #   resp.build_batches[0].phases[0].phase_type #=> String, one of "SUBMITTED", "DOWNLOAD_BATCHSPEC", "IN_PROGRESS", "COMBINE_ARTIFACTS", "SUCCEEDED", "FAILED", "STOPPED"
    #   resp.build_batches[0].phases[0].phase_status #=> String, one of "SUCCEEDED", "FAILED", "FAULT", "TIMED_OUT", "IN_PROGRESS", "STOPPED"
    #   resp.build_batches[0].phases[0].start_time #=> Time
    #   resp.build_batches[0].phases[0].end_time #=> Time
    #   resp.build_batches[0].phases[0].duration_in_seconds #=> Integer
    #   resp.build_batches[0].phases[0].contexts #=> Array
    #   resp.build_batches[0].phases[0].contexts[0].status_code #=> String
    #   resp.build_batches[0].phases[0].contexts[0].message #=> String
    #   resp.build_batches[0].source.type #=> String, one of "CODECOMMIT", "CODEPIPELINE", "GITHUB", "GITLAB", "GITLAB_SELF_MANAGED", "S3", "BITBUCKET", "GITHUB_ENTERPRISE", "NO_SOURCE"
    #   resp.build_batches[0].source.location #=> String
    #   resp.build_batches[0].source.git_clone_depth #=> Integer
    #   resp.build_batches[0].source.git_submodules_config.fetch_submodules #=> Boolean
    #   resp.build_batches[0].source.buildspec #=> String
    #   resp.build_batches[0].source.auth.type #=> String, one of "OAUTH", "CODECONNECTIONS", "SECRETS_MANAGER"
    #   resp.build_batches[0].source.auth.resource #=> String
    #   resp.build_batches[0].source.report_build_status #=> Boolean
    #   resp.build_batches[0].source.build_status_config.context #=> String
    #   resp.build_batches[0].source.build_status_config.target_url #=> String
    #   resp.build_batches[0].source.insecure_ssl #=> Boolean
    #   resp.build_batches[0].source.source_identifier #=> String
    #   resp.build_batches[0].secondary_sources #=> Array
    #   resp.build_batches[0].secondary_sources[0].type #=> String, one of "CODECOMMIT", "CODEPIPELINE", "GITHUB", "GITLAB", "GITLAB_SELF_MANAGED", "S3", "BITBUCKET", "GITHUB_ENTERPRISE", "NO_SOURCE"
    #   resp.build_batches[0].secondary_sources[0].location #=> String
    #   resp.build_batches[0].secondary_sources[0].git_clone_depth #=> Integer
    #   resp.build_batches[0].secondary_sources[0].git_submodules_config.fetch_submodules #=> Boolean
    #   resp.build_batches[0].secondary_sources[0].buildspec #=> String
    #   resp.build_batches[0].secondary_sources[0].auth.type #=> String, one of "OAUTH", "CODECONNECTIONS", "SECRETS_MANAGER"
    #   resp.build_batches[0].secondary_sources[0].auth.resource #=> String
    #   resp.build_batches[0].secondary_sources[0].report_build_status #=> Boolean
    #   resp.build_batches[0].secondary_sources[0].build_status_config.context #=> String
    #   resp.build_batches[0].secondary_sources[0].build_status_config.target_url #=> String
    #   resp.build_batches[0].secondary_sources[0].insecure_ssl #=> Boolean
    #   resp.build_batches[0].secondary_sources[0].source_identifier #=> String
    #   resp.build_batches[0].secondary_source_versions #=> Array
    #   resp.build_batches[0].secondary_source_versions[0].source_identifier #=> String
    #   resp.build_batches[0].secondary_source_versions[0].source_version #=> String
    #   resp.build_batches[0].artifacts.location #=> String
    #   resp.build_batches[0].artifacts.sha256sum #=> String
    #   resp.build_batches[0].artifacts.md5sum #=> String
    #   resp.build_batches[0].artifacts.override_artifact_name #=> Boolean
    #   resp.build_batches[0].artifacts.encryption_disabled #=> Boolean
    #   resp.build_batches[0].artifacts.artifact_identifier #=> String
    #   resp.build_batches[0].artifacts.bucket_owner_access #=> String, one of "NONE", "READ_ONLY", "FULL"
    #   resp.build_batches[0].secondary_artifacts #=> Array
    #   resp.build_batches[0].secondary_artifacts[0].location #=> String
    #   resp.build_batches[0].secondary_artifacts[0].sha256sum #=> String
    #   resp.build_batches[0].secondary_artifacts[0].md5sum #=> String
    #   resp.build_batches[0].secondary_artifacts[0].override_artifact_name #=> Boolean
    #   resp.build_batches[0].secondary_artifacts[0].encryption_disabled #=> Boolean
    #   resp.build_batches[0].secondary_artifacts[0].artifact_identifier #=> String
    #   resp.build_batches[0].secondary_artifacts[0].bucket_owner_access #=> String, one of "NONE", "READ_ONLY", "FULL"
    #   resp.build_batches[0].cache.type #=> String, one of "NO_CACHE", "S3", "LOCAL"
    #   resp.build_batches[0].cache.location #=> String
    #   resp.build_batches[0].cache.modes #=> Array
    #   resp.build_batches[0].cache.modes[0] #=> String, one of "LOCAL_DOCKER_LAYER_CACHE", "LOCAL_SOURCE_CACHE", "LOCAL_CUSTOM_CACHE"
    #   resp.build_batches[0].cache.cache_namespace #=> String
    #   resp.build_batches[0].environment.type #=> String, one of "WINDOWS_CONTAINER", "LINUX_CONTAINER", "LINUX_GPU_CONTAINER", "ARM_CONTAINER", "WINDOWS_SERVER_2019_CONTAINER", "WINDOWS_SERVER_2022_CONTAINER", "LINUX_LAMBDA_CONTAINER", "ARM_LAMBDA_CONTAINER", "LINUX_EC2", "ARM_EC2", "WINDOWS_EC2", "MAC_ARM"
    #   resp.build_batches[0].environment.image #=> String
    #   resp.build_batches[0].environment.compute_type #=> String, one of "BUILD_GENERAL1_SMALL", "BUILD_GENERAL1_MEDIUM", "BUILD_GENERAL1_LARGE", "BUILD_GENERAL1_XLARGE", "BUILD_GENERAL1_2XLARGE", "BUILD_LAMBDA_1GB", "BUILD_LAMBDA_2GB", "BUILD_LAMBDA_4GB", "BUILD_LAMBDA_8GB", "BUILD_LAMBDA_10GB", "ATTRIBUTE_BASED_COMPUTE", "CUSTOM_INSTANCE_TYPE"
    #   resp.build_batches[0].environment.compute_configuration.v_cpu #=> Integer
    #   resp.build_batches[0].environment.compute_configuration.memory #=> Integer
    #   resp.build_batches[0].environment.compute_configuration.disk #=> Integer
    #   resp.build_batches[0].environment.compute_configuration.machine_type #=> String, one of "GENERAL", "NVME"
    #   resp.build_batches[0].environment.compute_configuration.instance_type #=> String
    #   resp.build_batches[0].environment.fleet.fleet_arn #=> String
    #   resp.build_batches[0].environment.environment_variables #=> Array
    #   resp.build_batches[0].environment.environment_variables[0].name #=> String
    #   resp.build_batches[0].environment.environment_variables[0].value #=> String
    #   resp.build_batches[0].environment.environment_variables[0].type #=> String, one of "PLAINTEXT", "PARAMETER_STORE", "SECRETS_MANAGER"
    #   resp.build_batches[0].environment.privileged_mode #=> Boolean
    #   resp.build_batches[0].environment.certificate #=> String
    #   resp.build_batches[0].environment.registry_credential.credential #=> String
    #   resp.build_batches[0].environment.registry_credential.credential_provider #=> String, one of "SECRETS_MANAGER"
    #   resp.build_batches[0].environment.image_pull_credentials_type #=> String, one of "CODEBUILD", "SERVICE_ROLE"
    #   resp.build_batches[0].environment.docker_server.compute_type #=> String, one of "BUILD_GENERAL1_SMALL", "BUILD_GENERAL1_MEDIUM", "BUILD_GENERAL1_LARGE", "BUILD_GENERAL1_XLARGE", "BUILD_GENERAL1_2XLARGE", "BUILD_LAMBDA_1GB", "BUILD_LAMBDA_2GB", "BUILD_LAMBDA_4GB", "BUILD_LAMBDA_8GB", "BUILD_LAMBDA_10GB", "ATTRIBUTE_BASED_COMPUTE", "CUSTOM_INSTANCE_TYPE"
    #   resp.build_batches[0].environment.docker_server.security_group_ids #=> Array
    #   resp.build_batches[0].environment.docker_server.security_group_ids[0] #=> String
    #   resp.build_batches[0].environment.docker_server.status.status #=> String
    #   resp.build_batches[0].environment.docker_server.status.message #=> String
    #   resp.build_batches[0].service_role #=> String
    #   resp.build_batches[0].log_config.cloud_watch_logs.status #=> String, one of "ENABLED", "DISABLED"
    #   resp.build_batches[0].log_config.cloud_watch_logs.group_name #=> String
    #   resp.build_batches[0].log_config.cloud_watch_logs.stream_name #=> String
    #   resp.build_batches[0].log_config.s3_logs.status #=> String, one of "ENABLED", "DISABLED"
    #   resp.build_batches[0].log_config.s3_logs.location #=> String
    #   resp.build_batches[0].log_config.s3_logs.encryption_disabled #=> Boolean
    #   resp.build_batches[0].log_config.s3_logs.bucket_owner_access #=> String, one of "NONE", "READ_ONLY", "FULL"
    #   resp.build_batches[0].build_timeout_in_minutes #=> Integer
    #   resp.build_batches[0].queued_timeout_in_minutes #=> Integer
    #   resp.build_batches[0].complete #=> Boolean
    #   resp.build_batches[0].initiator #=> String
    #   resp.build_batches[0].vpc_config.vpc_id #=> String
    #   resp.build_batches[0].vpc_config.subnets #=> Array
    #   resp.build_batches[0].vpc_config.subnets[0] #=> String
    #   resp.build_batches[0].vpc_config.security_group_ids #=> Array
    #   resp.build_batches[0].vpc_config.security_group_ids[0] #=> String
    #   resp.build_batches[0].encryption_key #=> String
    #   resp.build_batches[0].build_batch_number #=> Integer
    #   resp.build_batches[0].file_system_locations #=> Array
    #   resp.build_batches[0].file_system_locations[0].type #=> String, one of "EFS"
    #   resp.build_batches[0].file_system_locations[0].location #=> String
    #   resp.build_batches[0].file_system_locations[0].mount_point #=> String
    #   resp.build_batches[0].file_system_locations[0].identifier #=> String
    #   resp.build_batches[0].file_system_locations[0].mount_options #=> String
    #   resp.build_batches[0].build_batch_config.service_role #=> String
    #   resp.build_batches[0].build_batch_config.combine_artifacts #=> Boolean
    #   resp.build_batches[0].build_batch_config.restrictions.maximum_builds_allowed #=> Integer
    #   resp.build_batches[0].build_batch_config.restrictions.compute_types_allowed #=> Array
    #   resp.build_batches[0].build_batch_config.restrictions.compute_types_allowed[0] #=> String
    #   resp.build_batches[0].build_batch_config.restrictions.fleets_allowed #=> Array
    #   resp.build_batches[0].build_batch_config.restrictions.fleets_allowed[0] #=> String
    #   resp.build_batches[0].build_batch_config.timeout_in_mins #=> Integer
    #   resp.build_batches[0].build_batch_config.batch_report_mode #=> String, one of "REPORT_INDIVIDUAL_BUILDS", "REPORT_AGGREGATED_BATCH"
    #   resp.build_batches[0].build_groups #=> Array
    #   resp.build_batches[0].build_groups[0].identifier #=> String
    #   resp.build_batches[0].build_groups[0].depends_on #=> Array
    #   resp.build_batches[0].build_groups[0].depends_on[0] #=> String
    #   resp.build_batches[0].build_groups[0].ignore_failure #=> Boolean
    #   resp.build_batches[0].build_groups[0].current_build_summary.arn #=> String
    #   resp.build_batches[0].build_groups[0].current_build_summary.requested_on #=> Time
    #   resp.build_batches[0].build_groups[0].current_build_summary.build_status #=> String, one of "SUCCEEDED", "FAILED", "FAULT", "TIMED_OUT", "IN_PROGRESS", "STOPPED"
    #   resp.build_batches[0].build_groups[0].current_build_summary.primary_artifact.type #=> String, one of "CODEPIPELINE", "S3", "NO_ARTIFACTS"
    #   resp.build_batches[0].build_groups[0].current_build_summary.primary_artifact.location #=> String
    #   resp.build_batches[0].build_groups[0].current_build_summary.primary_artifact.identifier #=> String
    #   resp.build_batches[0].build_groups[0].current_build_summary.secondary_artifacts #=> Array
    #   resp.build_batches[0].build_groups[0].current_build_summary.secondary_artifacts[0].type #=> String, one of "CODEPIPELINE", "S3", "NO_ARTIFACTS"
    #   resp.build_batches[0].build_groups[0].current_build_summary.secondary_artifacts[0].location #=> String
    #   resp.build_batches[0].build_groups[0].current_build_summary.secondary_artifacts[0].identifier #=> String
    #   resp.build_batches[0].build_groups[0].prior_build_summary_list #=> Array
    #   resp.build_batches[0].build_groups[0].prior_build_summary_list[0].arn #=> String
    #   resp.build_batches[0].build_groups[0].prior_build_summary_list[0].requested_on #=> Time
    #   resp.build_batches[0].build_groups[0].prior_build_summary_list[0].build_status #=> String, one of "SUCCEEDED", "FAILED", "FAULT", "TIMED_OUT", "IN_PROGRESS", "STOPPED"
    #   resp.build_batches[0].build_groups[0].prior_build_summary_list[0].primary_artifact.type #=> String, one of "CODEPIPELINE", "S3", "NO_ARTIFACTS"
    #   resp.build_batches[0].build_groups[0].prior_build_summary_list[0].primary_artifact.location #=> String
    #   resp.build_batches[0].build_groups[0].prior_build_summary_list[0].primary_artifact.identifier #=> String
    #   resp.build_batches[0].build_groups[0].prior_build_summary_list[0].secondary_artifacts #=> Array
    #   resp.build_batches[0].build_groups[0].prior_build_summary_list[0].secondary_artifacts[0].type #=> String, one of "CODEPIPELINE", "S3", "NO_ARTIFACTS"
    #   resp.build_batches[0].build_groups[0].prior_build_summary_list[0].secondary_artifacts[0].location #=> String
    #   resp.build_batches[0].build_groups[0].prior_build_summary_list[0].secondary_artifacts[0].identifier #=> String
    #   resp.build_batches[0].debug_session_enabled #=> Boolean
    #   resp.build_batches[0].report_arns #=> Array
    #   resp.build_batches[0].report_arns[0] #=> String
    #   resp.build_batches_not_found #=> Array
    #   resp.build_batches_not_found[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/BatchGetBuildBatches AWS API Documentation
    #
    # @overload batch_get_build_batches(params = {})
    # @param [Hash] params ({})
    def batch_get_build_batches(params = {}, options = {})
      req = build_request(:batch_get_build_batches, params)
      req.send_request(options)
    end

    # Gets information about one or more builds.
    #
    # @option params [required, Array<String>] :ids
    #   The IDs of the builds.
    #
    # @return [Types::BatchGetBuildsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchGetBuildsOutput#builds #builds} => Array&lt;Types::Build&gt;
    #   * {Types::BatchGetBuildsOutput#builds_not_found #builds_not_found} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_builds({
    #     ids: ["NonEmptyString"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.builds #=> Array
    #   resp.builds[0].id #=> String
    #   resp.builds[0].arn #=> String
    #   resp.builds[0].build_number #=> Integer
    #   resp.builds[0].start_time #=> Time
    #   resp.builds[0].end_time #=> Time
    #   resp.builds[0].current_phase #=> String
    #   resp.builds[0].build_status #=> String, one of "SUCCEEDED", "FAILED", "FAULT", "TIMED_OUT", "IN_PROGRESS", "STOPPED"
    #   resp.builds[0].source_version #=> String
    #   resp.builds[0].resolved_source_version #=> String
    #   resp.builds[0].project_name #=> String
    #   resp.builds[0].phases #=> Array
    #   resp.builds[0].phases[0].phase_type #=> String, one of "SUBMITTED", "QUEUED", "PROVISIONING", "DOWNLOAD_SOURCE", "INSTALL", "PRE_BUILD", "BUILD", "POST_BUILD", "UPLOAD_ARTIFACTS", "FINALIZING", "COMPLETED"
    #   resp.builds[0].phases[0].phase_status #=> String, one of "SUCCEEDED", "FAILED", "FAULT", "TIMED_OUT", "IN_PROGRESS", "STOPPED"
    #   resp.builds[0].phases[0].start_time #=> Time
    #   resp.builds[0].phases[0].end_time #=> Time
    #   resp.builds[0].phases[0].duration_in_seconds #=> Integer
    #   resp.builds[0].phases[0].contexts #=> Array
    #   resp.builds[0].phases[0].contexts[0].status_code #=> String
    #   resp.builds[0].phases[0].contexts[0].message #=> String
    #   resp.builds[0].source.type #=> String, one of "CODECOMMIT", "CODEPIPELINE", "GITHUB", "GITLAB", "GITLAB_SELF_MANAGED", "S3", "BITBUCKET", "GITHUB_ENTERPRISE", "NO_SOURCE"
    #   resp.builds[0].source.location #=> String
    #   resp.builds[0].source.git_clone_depth #=> Integer
    #   resp.builds[0].source.git_submodules_config.fetch_submodules #=> Boolean
    #   resp.builds[0].source.buildspec #=> String
    #   resp.builds[0].source.auth.type #=> String, one of "OAUTH", "CODECONNECTIONS", "SECRETS_MANAGER"
    #   resp.builds[0].source.auth.resource #=> String
    #   resp.builds[0].source.report_build_status #=> Boolean
    #   resp.builds[0].source.build_status_config.context #=> String
    #   resp.builds[0].source.build_status_config.target_url #=> String
    #   resp.builds[0].source.insecure_ssl #=> Boolean
    #   resp.builds[0].source.source_identifier #=> String
    #   resp.builds[0].secondary_sources #=> Array
    #   resp.builds[0].secondary_sources[0].type #=> String, one of "CODECOMMIT", "CODEPIPELINE", "GITHUB", "GITLAB", "GITLAB_SELF_MANAGED", "S3", "BITBUCKET", "GITHUB_ENTERPRISE", "NO_SOURCE"
    #   resp.builds[0].secondary_sources[0].location #=> String
    #   resp.builds[0].secondary_sources[0].git_clone_depth #=> Integer
    #   resp.builds[0].secondary_sources[0].git_submodules_config.fetch_submodules #=> Boolean
    #   resp.builds[0].secondary_sources[0].buildspec #=> String
    #   resp.builds[0].secondary_sources[0].auth.type #=> String, one of "OAUTH", "CODECONNECTIONS", "SECRETS_MANAGER"
    #   resp.builds[0].secondary_sources[0].auth.resource #=> String
    #   resp.builds[0].secondary_sources[0].report_build_status #=> Boolean
    #   resp.builds[0].secondary_sources[0].build_status_config.context #=> String
    #   resp.builds[0].secondary_sources[0].build_status_config.target_url #=> String
    #   resp.builds[0].secondary_sources[0].insecure_ssl #=> Boolean
    #   resp.builds[0].secondary_sources[0].source_identifier #=> String
    #   resp.builds[0].secondary_source_versions #=> Array
    #   resp.builds[0].secondary_source_versions[0].source_identifier #=> String
    #   resp.builds[0].secondary_source_versions[0].source_version #=> String
    #   resp.builds[0].artifacts.location #=> String
    #   resp.builds[0].artifacts.sha256sum #=> String
    #   resp.builds[0].artifacts.md5sum #=> String
    #   resp.builds[0].artifacts.override_artifact_name #=> Boolean
    #   resp.builds[0].artifacts.encryption_disabled #=> Boolean
    #   resp.builds[0].artifacts.artifact_identifier #=> String
    #   resp.builds[0].artifacts.bucket_owner_access #=> String, one of "NONE", "READ_ONLY", "FULL"
    #   resp.builds[0].secondary_artifacts #=> Array
    #   resp.builds[0].secondary_artifacts[0].location #=> String
    #   resp.builds[0].secondary_artifacts[0].sha256sum #=> String
    #   resp.builds[0].secondary_artifacts[0].md5sum #=> String
    #   resp.builds[0].secondary_artifacts[0].override_artifact_name #=> Boolean
    #   resp.builds[0].secondary_artifacts[0].encryption_disabled #=> Boolean
    #   resp.builds[0].secondary_artifacts[0].artifact_identifier #=> String
    #   resp.builds[0].secondary_artifacts[0].bucket_owner_access #=> String, one of "NONE", "READ_ONLY", "FULL"
    #   resp.builds[0].cache.type #=> String, one of "NO_CACHE", "S3", "LOCAL"
    #   resp.builds[0].cache.location #=> String
    #   resp.builds[0].cache.modes #=> Array
    #   resp.builds[0].cache.modes[0] #=> String, one of "LOCAL_DOCKER_LAYER_CACHE", "LOCAL_SOURCE_CACHE", "LOCAL_CUSTOM_CACHE"
    #   resp.builds[0].cache.cache_namespace #=> String
    #   resp.builds[0].environment.type #=> String, one of "WINDOWS_CONTAINER", "LINUX_CONTAINER", "LINUX_GPU_CONTAINER", "ARM_CONTAINER", "WINDOWS_SERVER_2019_CONTAINER", "WINDOWS_SERVER_2022_CONTAINER", "LINUX_LAMBDA_CONTAINER", "ARM_LAMBDA_CONTAINER", "LINUX_EC2", "ARM_EC2", "WINDOWS_EC2", "MAC_ARM"
    #   resp.builds[0].environment.image #=> String
    #   resp.builds[0].environment.compute_type #=> String, one of "BUILD_GENERAL1_SMALL", "BUILD_GENERAL1_MEDIUM", "BUILD_GENERAL1_LARGE", "BUILD_GENERAL1_XLARGE", "BUILD_GENERAL1_2XLARGE", "BUILD_LAMBDA_1GB", "BUILD_LAMBDA_2GB", "BUILD_LAMBDA_4GB", "BUILD_LAMBDA_8GB", "BUILD_LAMBDA_10GB", "ATTRIBUTE_BASED_COMPUTE", "CUSTOM_INSTANCE_TYPE"
    #   resp.builds[0].environment.compute_configuration.v_cpu #=> Integer
    #   resp.builds[0].environment.compute_configuration.memory #=> Integer
    #   resp.builds[0].environment.compute_configuration.disk #=> Integer
    #   resp.builds[0].environment.compute_configuration.machine_type #=> String, one of "GENERAL", "NVME"
    #   resp.builds[0].environment.compute_configuration.instance_type #=> String
    #   resp.builds[0].environment.fleet.fleet_arn #=> String
    #   resp.builds[0].environment.environment_variables #=> Array
    #   resp.builds[0].environment.environment_variables[0].name #=> String
    #   resp.builds[0].environment.environment_variables[0].value #=> String
    #   resp.builds[0].environment.environment_variables[0].type #=> String, one of "PLAINTEXT", "PARAMETER_STORE", "SECRETS_MANAGER"
    #   resp.builds[0].environment.privileged_mode #=> Boolean
    #   resp.builds[0].environment.certificate #=> String
    #   resp.builds[0].environment.registry_credential.credential #=> String
    #   resp.builds[0].environment.registry_credential.credential_provider #=> String, one of "SECRETS_MANAGER"
    #   resp.builds[0].environment.image_pull_credentials_type #=> String, one of "CODEBUILD", "SERVICE_ROLE"
    #   resp.builds[0].environment.docker_server.compute_type #=> String, one of "BUILD_GENERAL1_SMALL", "BUILD_GENERAL1_MEDIUM", "BUILD_GENERAL1_LARGE", "BUILD_GENERAL1_XLARGE", "BUILD_GENERAL1_2XLARGE", "BUILD_LAMBDA_1GB", "BUILD_LAMBDA_2GB", "BUILD_LAMBDA_4GB", "BUILD_LAMBDA_8GB", "BUILD_LAMBDA_10GB", "ATTRIBUTE_BASED_COMPUTE", "CUSTOM_INSTANCE_TYPE"
    #   resp.builds[0].environment.docker_server.security_group_ids #=> Array
    #   resp.builds[0].environment.docker_server.security_group_ids[0] #=> String
    #   resp.builds[0].environment.docker_server.status.status #=> String
    #   resp.builds[0].environment.docker_server.status.message #=> String
    #   resp.builds[0].service_role #=> String
    #   resp.builds[0].logs.group_name #=> String
    #   resp.builds[0].logs.stream_name #=> String
    #   resp.builds[0].logs.deep_link #=> String
    #   resp.builds[0].logs.s3_deep_link #=> String
    #   resp.builds[0].logs.cloud_watch_logs_arn #=> String
    #   resp.builds[0].logs.s3_logs_arn #=> String
    #   resp.builds[0].logs.cloud_watch_logs.status #=> String, one of "ENABLED", "DISABLED"
    #   resp.builds[0].logs.cloud_watch_logs.group_name #=> String
    #   resp.builds[0].logs.cloud_watch_logs.stream_name #=> String
    #   resp.builds[0].logs.s3_logs.status #=> String, one of "ENABLED", "DISABLED"
    #   resp.builds[0].logs.s3_logs.location #=> String
    #   resp.builds[0].logs.s3_logs.encryption_disabled #=> Boolean
    #   resp.builds[0].logs.s3_logs.bucket_owner_access #=> String, one of "NONE", "READ_ONLY", "FULL"
    #   resp.builds[0].timeout_in_minutes #=> Integer
    #   resp.builds[0].queued_timeout_in_minutes #=> Integer
    #   resp.builds[0].build_complete #=> Boolean
    #   resp.builds[0].initiator #=> String
    #   resp.builds[0].vpc_config.vpc_id #=> String
    #   resp.builds[0].vpc_config.subnets #=> Array
    #   resp.builds[0].vpc_config.subnets[0] #=> String
    #   resp.builds[0].vpc_config.security_group_ids #=> Array
    #   resp.builds[0].vpc_config.security_group_ids[0] #=> String
    #   resp.builds[0].network_interface.subnet_id #=> String
    #   resp.builds[0].network_interface.network_interface_id #=> String
    #   resp.builds[0].encryption_key #=> String
    #   resp.builds[0].exported_environment_variables #=> Array
    #   resp.builds[0].exported_environment_variables[0].name #=> String
    #   resp.builds[0].exported_environment_variables[0].value #=> String
    #   resp.builds[0].report_arns #=> Array
    #   resp.builds[0].report_arns[0] #=> String
    #   resp.builds[0].file_system_locations #=> Array
    #   resp.builds[0].file_system_locations[0].type #=> String, one of "EFS"
    #   resp.builds[0].file_system_locations[0].location #=> String
    #   resp.builds[0].file_system_locations[0].mount_point #=> String
    #   resp.builds[0].file_system_locations[0].identifier #=> String
    #   resp.builds[0].file_system_locations[0].mount_options #=> String
    #   resp.builds[0].debug_session.session_enabled #=> Boolean
    #   resp.builds[0].debug_session.session_target #=> String
    #   resp.builds[0].build_batch_arn #=> String
    #   resp.builds[0].auto_retry_config.auto_retry_limit #=> Integer
    #   resp.builds[0].auto_retry_config.auto_retry_number #=> Integer
    #   resp.builds[0].auto_retry_config.next_auto_retry #=> String
    #   resp.builds[0].auto_retry_config.previous_auto_retry #=> String
    #   resp.builds_not_found #=> Array
    #   resp.builds_not_found[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/BatchGetBuilds AWS API Documentation
    #
    # @overload batch_get_builds(params = {})
    # @param [Hash] params ({})
    def batch_get_builds(params = {}, options = {})
      req = build_request(:batch_get_builds, params)
      req.send_request(options)
    end

    # Gets information about the command executions.
    #
    # @option params [required, String] :sandbox_id
    #   A `sandboxId` or `sandboxArn`.
    #
    # @option params [required, Array<String>] :command_execution_ids
    #   A comma separated list of `commandExecutionIds`.
    #
    # @return [Types::BatchGetCommandExecutionsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchGetCommandExecutionsOutput#command_executions #command_executions} => Array&lt;Types::CommandExecution&gt;
    #   * {Types::BatchGetCommandExecutionsOutput#command_executions_not_found #command_executions_not_found} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_command_executions({
    #     sandbox_id: "NonEmptyString", # required
    #     command_execution_ids: ["NonEmptyString"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.command_executions #=> Array
    #   resp.command_executions[0].id #=> String
    #   resp.command_executions[0].sandbox_id #=> String
    #   resp.command_executions[0].submit_time #=> Time
    #   resp.command_executions[0].start_time #=> Time
    #   resp.command_executions[0].end_time #=> Time
    #   resp.command_executions[0].status #=> String
    #   resp.command_executions[0].command #=> String
    #   resp.command_executions[0].type #=> String, one of "SHELL"
    #   resp.command_executions[0].exit_code #=> String
    #   resp.command_executions[0].standard_output_content #=> String
    #   resp.command_executions[0].standard_err_content #=> String
    #   resp.command_executions[0].logs.group_name #=> String
    #   resp.command_executions[0].logs.stream_name #=> String
    #   resp.command_executions[0].logs.deep_link #=> String
    #   resp.command_executions[0].logs.s3_deep_link #=> String
    #   resp.command_executions[0].logs.cloud_watch_logs_arn #=> String
    #   resp.command_executions[0].logs.s3_logs_arn #=> String
    #   resp.command_executions[0].logs.cloud_watch_logs.status #=> String, one of "ENABLED", "DISABLED"
    #   resp.command_executions[0].logs.cloud_watch_logs.group_name #=> String
    #   resp.command_executions[0].logs.cloud_watch_logs.stream_name #=> String
    #   resp.command_executions[0].logs.s3_logs.status #=> String, one of "ENABLED", "DISABLED"
    #   resp.command_executions[0].logs.s3_logs.location #=> String
    #   resp.command_executions[0].logs.s3_logs.encryption_disabled #=> Boolean
    #   resp.command_executions[0].logs.s3_logs.bucket_owner_access #=> String, one of "NONE", "READ_ONLY", "FULL"
    #   resp.command_executions[0].sandbox_arn #=> String
    #   resp.command_executions_not_found #=> Array
    #   resp.command_executions_not_found[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/BatchGetCommandExecutions AWS API Documentation
    #
    # @overload batch_get_command_executions(params = {})
    # @param [Hash] params ({})
    def batch_get_command_executions(params = {}, options = {})
      req = build_request(:batch_get_command_executions, params)
      req.send_request(options)
    end

    # Gets information about one or more compute fleets.
    #
    # @option params [required, Array<String>] :names
    #   The names or ARNs of the compute fleets.
    #
    # @return [Types::BatchGetFleetsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchGetFleetsOutput#fleets #fleets} => Array&lt;Types::Fleet&gt;
    #   * {Types::BatchGetFleetsOutput#fleets_not_found #fleets_not_found} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_fleets({
    #     names: ["NonEmptyString"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.fleets #=> Array
    #   resp.fleets[0].arn #=> String
    #   resp.fleets[0].name #=> String
    #   resp.fleets[0].id #=> String
    #   resp.fleets[0].created #=> Time
    #   resp.fleets[0].last_modified #=> Time
    #   resp.fleets[0].status.status_code #=> String, one of "CREATING", "UPDATING", "ROTATING", "PENDING_DELETION", "DELETING", "CREATE_FAILED", "UPDATE_ROLLBACK_FAILED", "ACTIVE"
    #   resp.fleets[0].status.context #=> String, one of "CREATE_FAILED", "UPDATE_FAILED", "ACTION_REQUIRED", "PENDING_DELETION", "INSUFFICIENT_CAPACITY"
    #   resp.fleets[0].status.message #=> String
    #   resp.fleets[0].base_capacity #=> Integer
    #   resp.fleets[0].environment_type #=> String, one of "WINDOWS_CONTAINER", "LINUX_CONTAINER", "LINUX_GPU_CONTAINER", "ARM_CONTAINER", "WINDOWS_SERVER_2019_CONTAINER", "WINDOWS_SERVER_2022_CONTAINER", "LINUX_LAMBDA_CONTAINER", "ARM_LAMBDA_CONTAINER", "LINUX_EC2", "ARM_EC2", "WINDOWS_EC2", "MAC_ARM"
    #   resp.fleets[0].compute_type #=> String, one of "BUILD_GENERAL1_SMALL", "BUILD_GENERAL1_MEDIUM", "BUILD_GENERAL1_LARGE", "BUILD_GENERAL1_XLARGE", "BUILD_GENERAL1_2XLARGE", "BUILD_LAMBDA_1GB", "BUILD_LAMBDA_2GB", "BUILD_LAMBDA_4GB", "BUILD_LAMBDA_8GB", "BUILD_LAMBDA_10GB", "ATTRIBUTE_BASED_COMPUTE", "CUSTOM_INSTANCE_TYPE"
    #   resp.fleets[0].compute_configuration.v_cpu #=> Integer
    #   resp.fleets[0].compute_configuration.memory #=> Integer
    #   resp.fleets[0].compute_configuration.disk #=> Integer
    #   resp.fleets[0].compute_configuration.machine_type #=> String, one of "GENERAL", "NVME"
    #   resp.fleets[0].compute_configuration.instance_type #=> String
    #   resp.fleets[0].scaling_configuration.scaling_type #=> String, one of "TARGET_TRACKING_SCALING"
    #   resp.fleets[0].scaling_configuration.target_tracking_scaling_configs #=> Array
    #   resp.fleets[0].scaling_configuration.target_tracking_scaling_configs[0].metric_type #=> String, one of "FLEET_UTILIZATION_RATE"
    #   resp.fleets[0].scaling_configuration.target_tracking_scaling_configs[0].target_value #=> Float
    #   resp.fleets[0].scaling_configuration.max_capacity #=> Integer
    #   resp.fleets[0].scaling_configuration.desired_capacity #=> Integer
    #   resp.fleets[0].overflow_behavior #=> String, one of "QUEUE", "ON_DEMAND"
    #   resp.fleets[0].vpc_config.vpc_id #=> String
    #   resp.fleets[0].vpc_config.subnets #=> Array
    #   resp.fleets[0].vpc_config.subnets[0] #=> String
    #   resp.fleets[0].vpc_config.security_group_ids #=> Array
    #   resp.fleets[0].vpc_config.security_group_ids[0] #=> String
    #   resp.fleets[0].proxy_configuration.default_behavior #=> String, one of "ALLOW_ALL", "DENY_ALL"
    #   resp.fleets[0].proxy_configuration.ordered_proxy_rules #=> Array
    #   resp.fleets[0].proxy_configuration.ordered_proxy_rules[0].type #=> String, one of "DOMAIN", "IP"
    #   resp.fleets[0].proxy_configuration.ordered_proxy_rules[0].effect #=> String, one of "ALLOW", "DENY"
    #   resp.fleets[0].proxy_configuration.ordered_proxy_rules[0].entities #=> Array
    #   resp.fleets[0].proxy_configuration.ordered_proxy_rules[0].entities[0] #=> String
    #   resp.fleets[0].image_id #=> String
    #   resp.fleets[0].fleet_service_role #=> String
    #   resp.fleets[0].tags #=> Array
    #   resp.fleets[0].tags[0].key #=> String
    #   resp.fleets[0].tags[0].value #=> String
    #   resp.fleets_not_found #=> Array
    #   resp.fleets_not_found[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/BatchGetFleets AWS API Documentation
    #
    # @overload batch_get_fleets(params = {})
    # @param [Hash] params ({})
    def batch_get_fleets(params = {}, options = {})
      req = build_request(:batch_get_fleets, params)
      req.send_request(options)
    end

    # Gets information about one or more build projects.
    #
    # @option params [required, Array<String>] :names
    #   The names or ARNs of the build projects. To get information about a
    #   project shared with your Amazon Web Services account, its ARN must be
    #   specified. You cannot specify a shared project using its name.
    #
    # @return [Types::BatchGetProjectsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchGetProjectsOutput#projects #projects} => Array&lt;Types::Project&gt;
    #   * {Types::BatchGetProjectsOutput#projects_not_found #projects_not_found} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_projects({
    #     names: ["NonEmptyString"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.projects #=> Array
    #   resp.projects[0].name #=> String
    #   resp.projects[0].arn #=> String
    #   resp.projects[0].description #=> String
    #   resp.projects[0].source.type #=> String, one of "CODECOMMIT", "CODEPIPELINE", "GITHUB", "GITLAB", "GITLAB_SELF_MANAGED", "S3", "BITBUCKET", "GITHUB_ENTERPRISE", "NO_SOURCE"
    #   resp.projects[0].source.location #=> String
    #   resp.projects[0].source.git_clone_depth #=> Integer
    #   resp.projects[0].source.git_submodules_config.fetch_submodules #=> Boolean
    #   resp.projects[0].source.buildspec #=> String
    #   resp.projects[0].source.auth.type #=> String, one of "OAUTH", "CODECONNECTIONS", "SECRETS_MANAGER"
    #   resp.projects[0].source.auth.resource #=> String
    #   resp.projects[0].source.report_build_status #=> Boolean
    #   resp.projects[0].source.build_status_config.context #=> String
    #   resp.projects[0].source.build_status_config.target_url #=> String
    #   resp.projects[0].source.insecure_ssl #=> Boolean
    #   resp.projects[0].source.source_identifier #=> String
    #   resp.projects[0].secondary_sources #=> Array
    #   resp.projects[0].secondary_sources[0].type #=> String, one of "CODECOMMIT", "CODEPIPELINE", "GITHUB", "GITLAB", "GITLAB_SELF_MANAGED", "S3", "BITBUCKET", "GITHUB_ENTERPRISE", "NO_SOURCE"
    #   resp.projects[0].secondary_sources[0].location #=> String
    #   resp.projects[0].secondary_sources[0].git_clone_depth #=> Integer
    #   resp.projects[0].secondary_sources[0].git_submodules_config.fetch_submodules #=> Boolean
    #   resp.projects[0].secondary_sources[0].buildspec #=> String
    #   resp.projects[0].secondary_sources[0].auth.type #=> String, one of "OAUTH", "CODECONNECTIONS", "SECRETS_MANAGER"
    #   resp.projects[0].secondary_sources[0].auth.resource #=> String
    #   resp.projects[0].secondary_sources[0].report_build_status #=> Boolean
    #   resp.projects[0].secondary_sources[0].build_status_config.context #=> String
    #   resp.projects[0].secondary_sources[0].build_status_config.target_url #=> String
    #   resp.projects[0].secondary_sources[0].insecure_ssl #=> Boolean
    #   resp.projects[0].secondary_sources[0].source_identifier #=> String
    #   resp.projects[0].source_version #=> String
    #   resp.projects[0].secondary_source_versions #=> Array
    #   resp.projects[0].secondary_source_versions[0].source_identifier #=> String
    #   resp.projects[0].secondary_source_versions[0].source_version #=> String
    #   resp.projects[0].artifacts.type #=> String, one of "CODEPIPELINE", "S3", "NO_ARTIFACTS"
    #   resp.projects[0].artifacts.location #=> String
    #   resp.projects[0].artifacts.path #=> String
    #   resp.projects[0].artifacts.namespace_type #=> String, one of "NONE", "BUILD_ID"
    #   resp.projects[0].artifacts.name #=> String
    #   resp.projects[0].artifacts.packaging #=> String, one of "NONE", "ZIP"
    #   resp.projects[0].artifacts.override_artifact_name #=> Boolean
    #   resp.projects[0].artifacts.encryption_disabled #=> Boolean
    #   resp.projects[0].artifacts.artifact_identifier #=> String
    #   resp.projects[0].artifacts.bucket_owner_access #=> String, one of "NONE", "READ_ONLY", "FULL"
    #   resp.projects[0].secondary_artifacts #=> Array
    #   resp.projects[0].secondary_artifacts[0].type #=> String, one of "CODEPIPELINE", "S3", "NO_ARTIFACTS"
    #   resp.projects[0].secondary_artifacts[0].location #=> String
    #   resp.projects[0].secondary_artifacts[0].path #=> String
    #   resp.projects[0].secondary_artifacts[0].namespace_type #=> String, one of "NONE", "BUILD_ID"
    #   resp.projects[0].secondary_artifacts[0].name #=> String
    #   resp.projects[0].secondary_artifacts[0].packaging #=> String, one of "NONE", "ZIP"
    #   resp.projects[0].secondary_artifacts[0].override_artifact_name #=> Boolean
    #   resp.projects[0].secondary_artifacts[0].encryption_disabled #=> Boolean
    #   resp.projects[0].secondary_artifacts[0].artifact_identifier #=> String
    #   resp.projects[0].secondary_artifacts[0].bucket_owner_access #=> String, one of "NONE", "READ_ONLY", "FULL"
    #   resp.projects[0].cache.type #=> String, one of "NO_CACHE", "S3", "LOCAL"
    #   resp.projects[0].cache.location #=> String
    #   resp.projects[0].cache.modes #=> Array
    #   resp.projects[0].cache.modes[0] #=> String, one of "LOCAL_DOCKER_LAYER_CACHE", "LOCAL_SOURCE_CACHE", "LOCAL_CUSTOM_CACHE"
    #   resp.projects[0].cache.cache_namespace #=> String
    #   resp.projects[0].environment.type #=> String, one of "WINDOWS_CONTAINER", "LINUX_CONTAINER", "LINUX_GPU_CONTAINER", "ARM_CONTAINER", "WINDOWS_SERVER_2019_CONTAINER", "WINDOWS_SERVER_2022_CONTAINER", "LINUX_LAMBDA_CONTAINER", "ARM_LAMBDA_CONTAINER", "LINUX_EC2", "ARM_EC2", "WINDOWS_EC2", "MAC_ARM"
    #   resp.projects[0].environment.image #=> String
    #   resp.projects[0].environment.compute_type #=> String, one of "BUILD_GENERAL1_SMALL", "BUILD_GENERAL1_MEDIUM", "BUILD_GENERAL1_LARGE", "BUILD_GENERAL1_XLARGE", "BUILD_GENERAL1_2XLARGE", "BUILD_LAMBDA_1GB", "BUILD_LAMBDA_2GB", "BUILD_LAMBDA_4GB", "BUILD_LAMBDA_8GB", "BUILD_LAMBDA_10GB", "ATTRIBUTE_BASED_COMPUTE", "CUSTOM_INSTANCE_TYPE"
    #   resp.projects[0].environment.compute_configuration.v_cpu #=> Integer
    #   resp.projects[0].environment.compute_configuration.memory #=> Integer
    #   resp.projects[0].environment.compute_configuration.disk #=> Integer
    #   resp.projects[0].environment.compute_configuration.machine_type #=> String, one of "GENERAL", "NVME"
    #   resp.projects[0].environment.compute_configuration.instance_type #=> String
    #   resp.projects[0].environment.fleet.fleet_arn #=> String
    #   resp.projects[0].environment.environment_variables #=> Array
    #   resp.projects[0].environment.environment_variables[0].name #=> String
    #   resp.projects[0].environment.environment_variables[0].value #=> String
    #   resp.projects[0].environment.environment_variables[0].type #=> String, one of "PLAINTEXT", "PARAMETER_STORE", "SECRETS_MANAGER"
    #   resp.projects[0].environment.privileged_mode #=> Boolean
    #   resp.projects[0].environment.certificate #=> String
    #   resp.projects[0].environment.registry_credential.credential #=> String
    #   resp.projects[0].environment.registry_credential.credential_provider #=> String, one of "SECRETS_MANAGER"
    #   resp.projects[0].environment.image_pull_credentials_type #=> String, one of "CODEBUILD", "SERVICE_ROLE"
    #   resp.projects[0].environment.docker_server.compute_type #=> String, one of "BUILD_GENERAL1_SMALL", "BUILD_GENERAL1_MEDIUM", "BUILD_GENERAL1_LARGE", "BUILD_GENERAL1_XLARGE", "BUILD_GENERAL1_2XLARGE", "BUILD_LAMBDA_1GB", "BUILD_LAMBDA_2GB", "BUILD_LAMBDA_4GB", "BUILD_LAMBDA_8GB", "BUILD_LAMBDA_10GB", "ATTRIBUTE_BASED_COMPUTE", "CUSTOM_INSTANCE_TYPE"
    #   resp.projects[0].environment.docker_server.security_group_ids #=> Array
    #   resp.projects[0].environment.docker_server.security_group_ids[0] #=> String
    #   resp.projects[0].environment.docker_server.status.status #=> String
    #   resp.projects[0].environment.docker_server.status.message #=> String
    #   resp.projects[0].service_role #=> String
    #   resp.projects[0].timeout_in_minutes #=> Integer
    #   resp.projects[0].queued_timeout_in_minutes #=> Integer
    #   resp.projects[0].encryption_key #=> String
    #   resp.projects[0].tags #=> Array
    #   resp.projects[0].tags[0].key #=> String
    #   resp.projects[0].tags[0].value #=> String
    #   resp.projects[0].created #=> Time
    #   resp.projects[0].last_modified #=> Time
    #   resp.projects[0].webhook.url #=> String
    #   resp.projects[0].webhook.payload_url #=> String
    #   resp.projects[0].webhook.secret #=> String
    #   resp.projects[0].webhook.branch_filter #=> String
    #   resp.projects[0].webhook.filter_groups #=> Array
    #   resp.projects[0].webhook.filter_groups[0] #=> Array
    #   resp.projects[0].webhook.filter_groups[0][0].type #=> String, one of "EVENT", "BASE_REF", "HEAD_REF", "ACTOR_ACCOUNT_ID", "FILE_PATH", "COMMIT_MESSAGE", "WORKFLOW_NAME", "TAG_NAME", "RELEASE_NAME", "REPOSITORY_NAME", "ORGANIZATION_NAME"
    #   resp.projects[0].webhook.filter_groups[0][0].pattern #=> String
    #   resp.projects[0].webhook.filter_groups[0][0].exclude_matched_pattern #=> Boolean
    #   resp.projects[0].webhook.build_type #=> String, one of "BUILD", "BUILD_BATCH", "RUNNER_BUILDKITE_BUILD"
    #   resp.projects[0].webhook.manual_creation #=> Boolean
    #   resp.projects[0].webhook.last_modified_secret #=> Time
    #   resp.projects[0].webhook.scope_configuration.name #=> String
    #   resp.projects[0].webhook.scope_configuration.domain #=> String
    #   resp.projects[0].webhook.scope_configuration.scope #=> String, one of "GITHUB_ORGANIZATION", "GITHUB_GLOBAL", "GITLAB_GROUP"
    #   resp.projects[0].webhook.status #=> String, one of "CREATING", "CREATE_FAILED", "ACTIVE", "DELETING"
    #   resp.projects[0].webhook.status_message #=> String
    #   resp.projects[0].webhook.pull_request_build_policy.requires_comment_approval #=> String, one of "DISABLED", "ALL_PULL_REQUESTS", "FORK_PULL_REQUESTS"
    #   resp.projects[0].webhook.pull_request_build_policy.approver_roles #=> Array
    #   resp.projects[0].webhook.pull_request_build_policy.approver_roles[0] #=> String, one of "GITHUB_READ", "GITHUB_TRIAGE", "GITHUB_WRITE", "GITHUB_MAINTAIN", "GITHUB_ADMIN", "GITLAB_GUEST", "GITLAB_PLANNER", "GITLAB_REPORTER", "GITLAB_DEVELOPER", "GITLAB_MAINTAINER", "GITLAB_OWNER", "BITBUCKET_READ", "BITBUCKET_WRITE", "BITBUCKET_ADMIN"
    #   resp.projects[0].vpc_config.vpc_id #=> String
    #   resp.projects[0].vpc_config.subnets #=> Array
    #   resp.projects[0].vpc_config.subnets[0] #=> String
    #   resp.projects[0].vpc_config.security_group_ids #=> Array
    #   resp.projects[0].vpc_config.security_group_ids[0] #=> String
    #   resp.projects[0].badge.badge_enabled #=> Boolean
    #   resp.projects[0].badge.badge_request_url #=> String
    #   resp.projects[0].logs_config.cloud_watch_logs.status #=> String, one of "ENABLED", "DISABLED"
    #   resp.projects[0].logs_config.cloud_watch_logs.group_name #=> String
    #   resp.projects[0].logs_config.cloud_watch_logs.stream_name #=> String
    #   resp.projects[0].logs_config.s3_logs.status #=> String, one of "ENABLED", "DISABLED"
    #   resp.projects[0].logs_config.s3_logs.location #=> String
    #   resp.projects[0].logs_config.s3_logs.encryption_disabled #=> Boolean
    #   resp.projects[0].logs_config.s3_logs.bucket_owner_access #=> String, one of "NONE", "READ_ONLY", "FULL"
    #   resp.projects[0].file_system_locations #=> Array
    #   resp.projects[0].file_system_locations[0].type #=> String, one of "EFS"
    #   resp.projects[0].file_system_locations[0].location #=> String
    #   resp.projects[0].file_system_locations[0].mount_point #=> String
    #   resp.projects[0].file_system_locations[0].identifier #=> String
    #   resp.projects[0].file_system_locations[0].mount_options #=> String
    #   resp.projects[0].build_batch_config.service_role #=> String
    #   resp.projects[0].build_batch_config.combine_artifacts #=> Boolean
    #   resp.projects[0].build_batch_config.restrictions.maximum_builds_allowed #=> Integer
    #   resp.projects[0].build_batch_config.restrictions.compute_types_allowed #=> Array
    #   resp.projects[0].build_batch_config.restrictions.compute_types_allowed[0] #=> String
    #   resp.projects[0].build_batch_config.restrictions.fleets_allowed #=> Array
    #   resp.projects[0].build_batch_config.restrictions.fleets_allowed[0] #=> String
    #   resp.projects[0].build_batch_config.timeout_in_mins #=> Integer
    #   resp.projects[0].build_batch_config.batch_report_mode #=> String, one of "REPORT_INDIVIDUAL_BUILDS", "REPORT_AGGREGATED_BATCH"
    #   resp.projects[0].concurrent_build_limit #=> Integer
    #   resp.projects[0].project_visibility #=> String, one of "PUBLIC_READ", "PRIVATE"
    #   resp.projects[0].public_project_alias #=> String
    #   resp.projects[0].resource_access_role #=> String
    #   resp.projects[0].auto_retry_limit #=> Integer
    #   resp.projects_not_found #=> Array
    #   resp.projects_not_found[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/BatchGetProjects AWS API Documentation
    #
    # @overload batch_get_projects(params = {})
    # @param [Hash] params ({})
    def batch_get_projects(params = {}, options = {})
      req = build_request(:batch_get_projects, params)
      req.send_request(options)
    end

    # Returns an array of report groups.
    #
    # @option params [required, Array<String>] :report_group_arns
    #   An array of report group ARNs that identify the report groups to
    #   return.
    #
    # @return [Types::BatchGetReportGroupsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchGetReportGroupsOutput#report_groups #report_groups} => Array&lt;Types::ReportGroup&gt;
    #   * {Types::BatchGetReportGroupsOutput#report_groups_not_found #report_groups_not_found} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_report_groups({
    #     report_group_arns: ["NonEmptyString"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.report_groups #=> Array
    #   resp.report_groups[0].arn #=> String
    #   resp.report_groups[0].name #=> String
    #   resp.report_groups[0].type #=> String, one of "TEST", "CODE_COVERAGE"
    #   resp.report_groups[0].export_config.export_config_type #=> String, one of "S3", "NO_EXPORT"
    #   resp.report_groups[0].export_config.s3_destination.bucket #=> String
    #   resp.report_groups[0].export_config.s3_destination.bucket_owner #=> String
    #   resp.report_groups[0].export_config.s3_destination.path #=> String
    #   resp.report_groups[0].export_config.s3_destination.packaging #=> String, one of "ZIP", "NONE"
    #   resp.report_groups[0].export_config.s3_destination.encryption_key #=> String
    #   resp.report_groups[0].export_config.s3_destination.encryption_disabled #=> Boolean
    #   resp.report_groups[0].created #=> Time
    #   resp.report_groups[0].last_modified #=> Time
    #   resp.report_groups[0].tags #=> Array
    #   resp.report_groups[0].tags[0].key #=> String
    #   resp.report_groups[0].tags[0].value #=> String
    #   resp.report_groups[0].status #=> String, one of "ACTIVE", "DELETING"
    #   resp.report_groups_not_found #=> Array
    #   resp.report_groups_not_found[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/BatchGetReportGroups AWS API Documentation
    #
    # @overload batch_get_report_groups(params = {})
    # @param [Hash] params ({})
    def batch_get_report_groups(params = {}, options = {})
      req = build_request(:batch_get_report_groups, params)
      req.send_request(options)
    end

    # Returns an array of reports.
    #
    # @option params [required, Array<String>] :report_arns
    #   An array of ARNs that identify the `Report` objects to return.
    #
    # @return [Types::BatchGetReportsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchGetReportsOutput#reports #reports} => Array&lt;Types::Report&gt;
    #   * {Types::BatchGetReportsOutput#reports_not_found #reports_not_found} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_reports({
    #     report_arns: ["NonEmptyString"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.reports #=> Array
    #   resp.reports[0].arn #=> String
    #   resp.reports[0].type #=> String, one of "TEST", "CODE_COVERAGE"
    #   resp.reports[0].name #=> String
    #   resp.reports[0].report_group_arn #=> String
    #   resp.reports[0].execution_id #=> String
    #   resp.reports[0].status #=> String, one of "GENERATING", "SUCCEEDED", "FAILED", "INCOMPLETE", "DELETING"
    #   resp.reports[0].created #=> Time
    #   resp.reports[0].expired #=> Time
    #   resp.reports[0].export_config.export_config_type #=> String, one of "S3", "NO_EXPORT"
    #   resp.reports[0].export_config.s3_destination.bucket #=> String
    #   resp.reports[0].export_config.s3_destination.bucket_owner #=> String
    #   resp.reports[0].export_config.s3_destination.path #=> String
    #   resp.reports[0].export_config.s3_destination.packaging #=> String, one of "ZIP", "NONE"
    #   resp.reports[0].export_config.s3_destination.encryption_key #=> String
    #   resp.reports[0].export_config.s3_destination.encryption_disabled #=> Boolean
    #   resp.reports[0].truncated #=> Boolean
    #   resp.reports[0].test_summary.total #=> Integer
    #   resp.reports[0].test_summary.status_counts #=> Hash
    #   resp.reports[0].test_summary.status_counts["String"] #=> Integer
    #   resp.reports[0].test_summary.duration_in_nano_seconds #=> Integer
    #   resp.reports[0].code_coverage_summary.line_coverage_percentage #=> Float
    #   resp.reports[0].code_coverage_summary.lines_covered #=> Integer
    #   resp.reports[0].code_coverage_summary.lines_missed #=> Integer
    #   resp.reports[0].code_coverage_summary.branch_coverage_percentage #=> Float
    #   resp.reports[0].code_coverage_summary.branches_covered #=> Integer
    #   resp.reports[0].code_coverage_summary.branches_missed #=> Integer
    #   resp.reports_not_found #=> Array
    #   resp.reports_not_found[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/BatchGetReports AWS API Documentation
    #
    # @overload batch_get_reports(params = {})
    # @param [Hash] params ({})
    def batch_get_reports(params = {}, options = {})
      req = build_request(:batch_get_reports, params)
      req.send_request(options)
    end

    # Gets information about the sandbox status.
    #
    # @option params [required, Array<String>] :ids
    #   A comma separated list of `sandboxIds` or `sandboxArns`.
    #
    # @return [Types::BatchGetSandboxesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchGetSandboxesOutput#sandboxes #sandboxes} => Array&lt;Types::Sandbox&gt;
    #   * {Types::BatchGetSandboxesOutput#sandboxes_not_found #sandboxes_not_found} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_sandboxes({
    #     ids: ["NonEmptyString"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.sandboxes #=> Array
    #   resp.sandboxes[0].id #=> String
    #   resp.sandboxes[0].arn #=> String
    #   resp.sandboxes[0].project_name #=> String
    #   resp.sandboxes[0].request_time #=> Time
    #   resp.sandboxes[0].start_time #=> Time
    #   resp.sandboxes[0].end_time #=> Time
    #   resp.sandboxes[0].status #=> String
    #   resp.sandboxes[0].source.type #=> String, one of "CODECOMMIT", "CODEPIPELINE", "GITHUB", "GITLAB", "GITLAB_SELF_MANAGED", "S3", "BITBUCKET", "GITHUB_ENTERPRISE", "NO_SOURCE"
    #   resp.sandboxes[0].source.location #=> String
    #   resp.sandboxes[0].source.git_clone_depth #=> Integer
    #   resp.sandboxes[0].source.git_submodules_config.fetch_submodules #=> Boolean
    #   resp.sandboxes[0].source.buildspec #=> String
    #   resp.sandboxes[0].source.auth.type #=> String, one of "OAUTH", "CODECONNECTIONS", "SECRETS_MANAGER"
    #   resp.sandboxes[0].source.auth.resource #=> String
    #   resp.sandboxes[0].source.report_build_status #=> Boolean
    #   resp.sandboxes[0].source.build_status_config.context #=> String
    #   resp.sandboxes[0].source.build_status_config.target_url #=> String
    #   resp.sandboxes[0].source.insecure_ssl #=> Boolean
    #   resp.sandboxes[0].source.source_identifier #=> String
    #   resp.sandboxes[0].source_version #=> String
    #   resp.sandboxes[0].secondary_sources #=> Array
    #   resp.sandboxes[0].secondary_sources[0].type #=> String, one of "CODECOMMIT", "CODEPIPELINE", "GITHUB", "GITLAB", "GITLAB_SELF_MANAGED", "S3", "BITBUCKET", "GITHUB_ENTERPRISE", "NO_SOURCE"
    #   resp.sandboxes[0].secondary_sources[0].location #=> String
    #   resp.sandboxes[0].secondary_sources[0].git_clone_depth #=> Integer
    #   resp.sandboxes[0].secondary_sources[0].git_submodules_config.fetch_submodules #=> Boolean
    #   resp.sandboxes[0].secondary_sources[0].buildspec #=> String
    #   resp.sandboxes[0].secondary_sources[0].auth.type #=> String, one of "OAUTH", "CODECONNECTIONS", "SECRETS_MANAGER"
    #   resp.sandboxes[0].secondary_sources[0].auth.resource #=> String
    #   resp.sandboxes[0].secondary_sources[0].report_build_status #=> Boolean
    #   resp.sandboxes[0].secondary_sources[0].build_status_config.context #=> String
    #   resp.sandboxes[0].secondary_sources[0].build_status_config.target_url #=> String
    #   resp.sandboxes[0].secondary_sources[0].insecure_ssl #=> Boolean
    #   resp.sandboxes[0].secondary_sources[0].source_identifier #=> String
    #   resp.sandboxes[0].secondary_source_versions #=> Array
    #   resp.sandboxes[0].secondary_source_versions[0].source_identifier #=> String
    #   resp.sandboxes[0].secondary_source_versions[0].source_version #=> String
    #   resp.sandboxes[0].environment.type #=> String, one of "WINDOWS_CONTAINER", "LINUX_CONTAINER", "LINUX_GPU_CONTAINER", "ARM_CONTAINER", "WINDOWS_SERVER_2019_CONTAINER", "WINDOWS_SERVER_2022_CONTAINER", "LINUX_LAMBDA_CONTAINER", "ARM_LAMBDA_CONTAINER", "LINUX_EC2", "ARM_EC2", "WINDOWS_EC2", "MAC_ARM"
    #   resp.sandboxes[0].environment.image #=> String
    #   resp.sandboxes[0].environment.compute_type #=> String, one of "BUILD_GENERAL1_SMALL", "BUILD_GENERAL1_MEDIUM", "BUILD_GENERAL1_LARGE", "BUILD_GENERAL1_XLARGE", "BUILD_GENERAL1_2XLARGE", "BUILD_LAMBDA_1GB", "BUILD_LAMBDA_2GB", "BUILD_LAMBDA_4GB", "BUILD_LAMBDA_8GB", "BUILD_LAMBDA_10GB", "ATTRIBUTE_BASED_COMPUTE", "CUSTOM_INSTANCE_TYPE"
    #   resp.sandboxes[0].environment.compute_configuration.v_cpu #=> Integer
    #   resp.sandboxes[0].environment.compute_configuration.memory #=> Integer
    #   resp.sandboxes[0].environment.compute_configuration.disk #=> Integer
    #   resp.sandboxes[0].environment.compute_configuration.machine_type #=> String, one of "GENERAL", "NVME"
    #   resp.sandboxes[0].environment.compute_configuration.instance_type #=> String
    #   resp.sandboxes[0].environment.fleet.fleet_arn #=> String
    #   resp.sandboxes[0].environment.environment_variables #=> Array
    #   resp.sandboxes[0].environment.environment_variables[0].name #=> String
    #   resp.sandboxes[0].environment.environment_variables[0].value #=> String
    #   resp.sandboxes[0].environment.environment_variables[0].type #=> String, one of "PLAINTEXT", "PARAMETER_STORE", "SECRETS_MANAGER"
    #   resp.sandboxes[0].environment.privileged_mode #=> Boolean
    #   resp.sandboxes[0].environment.certificate #=> String
    #   resp.sandboxes[0].environment.registry_credential.credential #=> String
    #   resp.sandboxes[0].environment.registry_credential.credential_provider #=> String, one of "SECRETS_MANAGER"
    #   resp.sandboxes[0].environment.image_pull_credentials_type #=> String, one of "CODEBUILD", "SERVICE_ROLE"
    #   resp.sandboxes[0].environment.docker_server.compute_type #=> String, one of "BUILD_GENERAL1_SMALL", "BUILD_GENERAL1_MEDIUM", "BUILD_GENERAL1_LARGE", "BUILD_GENERAL1_XLARGE", "BUILD_GENERAL1_2XLARGE", "BUILD_LAMBDA_1GB", "BUILD_LAMBDA_2GB", "BUILD_LAMBDA_4GB", "BUILD_LAMBDA_8GB", "BUILD_LAMBDA_10GB", "ATTRIBUTE_BASED_COMPUTE", "CUSTOM_INSTANCE_TYPE"
    #   resp.sandboxes[0].environment.docker_server.security_group_ids #=> Array
    #   resp.sandboxes[0].environment.docker_server.security_group_ids[0] #=> String
    #   resp.sandboxes[0].environment.docker_server.status.status #=> String
    #   resp.sandboxes[0].environment.docker_server.status.message #=> String
    #   resp.sandboxes[0].file_system_locations #=> Array
    #   resp.sandboxes[0].file_system_locations[0].type #=> String, one of "EFS"
    #   resp.sandboxes[0].file_system_locations[0].location #=> String
    #   resp.sandboxes[0].file_system_locations[0].mount_point #=> String
    #   resp.sandboxes[0].file_system_locations[0].identifier #=> String
    #   resp.sandboxes[0].file_system_locations[0].mount_options #=> String
    #   resp.sandboxes[0].timeout_in_minutes #=> Integer
    #   resp.sandboxes[0].queued_timeout_in_minutes #=> Integer
    #   resp.sandboxes[0].vpc_config.vpc_id #=> String
    #   resp.sandboxes[0].vpc_config.subnets #=> Array
    #   resp.sandboxes[0].vpc_config.subnets[0] #=> String
    #   resp.sandboxes[0].vpc_config.security_group_ids #=> Array
    #   resp.sandboxes[0].vpc_config.security_group_ids[0] #=> String
    #   resp.sandboxes[0].log_config.cloud_watch_logs.status #=> String, one of "ENABLED", "DISABLED"
    #   resp.sandboxes[0].log_config.cloud_watch_logs.group_name #=> String
    #   resp.sandboxes[0].log_config.cloud_watch_logs.stream_name #=> String
    #   resp.sandboxes[0].log_config.s3_logs.status #=> String, one of "ENABLED", "DISABLED"
    #   resp.sandboxes[0].log_config.s3_logs.location #=> String
    #   resp.sandboxes[0].log_config.s3_logs.encryption_disabled #=> Boolean
    #   resp.sandboxes[0].log_config.s3_logs.bucket_owner_access #=> String, one of "NONE", "READ_ONLY", "FULL"
    #   resp.sandboxes[0].encryption_key #=> String
    #   resp.sandboxes[0].service_role #=> String
    #   resp.sandboxes[0].current_session.id #=> String
    #   resp.sandboxes[0].current_session.status #=> String
    #   resp.sandboxes[0].current_session.start_time #=> Time
    #   resp.sandboxes[0].current_session.end_time #=> Time
    #   resp.sandboxes[0].current_session.current_phase #=> String
    #   resp.sandboxes[0].current_session.phases #=> Array
    #   resp.sandboxes[0].current_session.phases[0].phase_type #=> String
    #   resp.sandboxes[0].current_session.phases[0].phase_status #=> String, one of "SUCCEEDED", "FAILED", "FAULT", "TIMED_OUT", "IN_PROGRESS", "STOPPED"
    #   resp.sandboxes[0].current_session.phases[0].start_time #=> Time
    #   resp.sandboxes[0].current_session.phases[0].end_time #=> Time
    #   resp.sandboxes[0].current_session.phases[0].duration_in_seconds #=> Integer
    #   resp.sandboxes[0].current_session.phases[0].contexts #=> Array
    #   resp.sandboxes[0].current_session.phases[0].contexts[0].status_code #=> String
    #   resp.sandboxes[0].current_session.phases[0].contexts[0].message #=> String
    #   resp.sandboxes[0].current_session.resolved_source_version #=> String
    #   resp.sandboxes[0].current_session.logs.group_name #=> String
    #   resp.sandboxes[0].current_session.logs.stream_name #=> String
    #   resp.sandboxes[0].current_session.logs.deep_link #=> String
    #   resp.sandboxes[0].current_session.logs.s3_deep_link #=> String
    #   resp.sandboxes[0].current_session.logs.cloud_watch_logs_arn #=> String
    #   resp.sandboxes[0].current_session.logs.s3_logs_arn #=> String
    #   resp.sandboxes[0].current_session.logs.cloud_watch_logs.status #=> String, one of "ENABLED", "DISABLED"
    #   resp.sandboxes[0].current_session.logs.cloud_watch_logs.group_name #=> String
    #   resp.sandboxes[0].current_session.logs.cloud_watch_logs.stream_name #=> String
    #   resp.sandboxes[0].current_session.logs.s3_logs.status #=> String, one of "ENABLED", "DISABLED"
    #   resp.sandboxes[0].current_session.logs.s3_logs.location #=> String
    #   resp.sandboxes[0].current_session.logs.s3_logs.encryption_disabled #=> Boolean
    #   resp.sandboxes[0].current_session.logs.s3_logs.bucket_owner_access #=> String, one of "NONE", "READ_ONLY", "FULL"
    #   resp.sandboxes[0].current_session.network_interface.subnet_id #=> String
    #   resp.sandboxes[0].current_session.network_interface.network_interface_id #=> String
    #   resp.sandboxes_not_found #=> Array
    #   resp.sandboxes_not_found[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/BatchGetSandboxes AWS API Documentation
    #
    # @overload batch_get_sandboxes(params = {})
    # @param [Hash] params ({})
    def batch_get_sandboxes(params = {}, options = {})
      req = build_request(:batch_get_sandboxes, params)
      req.send_request(options)
    end

    # Creates a compute fleet.
    #
    # @option params [required, String] :name
    #   The name of the compute fleet.
    #
    # @option params [required, Integer] :base_capacity
    #   The initial number of machines allocated to the ﬂeet, which deﬁnes the
    #   number of builds that can run in parallel.
    #
    # @option params [required, String] :environment_type
    #   The environment type of the compute fleet.
    #
    #   * The environment type `ARM_CONTAINER` is available only in regions US
    #     East (N. Virginia), US East (Ohio), US West (Oregon), EU (Ireland),
    #     Asia Pacific (Mumbai), Asia Pacific (Tokyo), Asia Pacific
    #     (Singapore), Asia Pacific (Sydney), EU (Frankfurt), and South
    #     America (São Paulo).
    #
    #   * The environment type `ARM_EC2` is available only in regions US East
    #     (N. Virginia), US East (Ohio), US West (Oregon), EU (Ireland), EU
    #     (Frankfurt), Asia Pacific (Tokyo), Asia Pacific (Singapore), Asia
    #     Pacific (Sydney), South America (São Paulo), and Asia Pacific
    #     (Mumbai).
    #
    #   * The environment type `LINUX_CONTAINER` is available only in regions
    #     US East (N. Virginia), US East (Ohio), US West (Oregon), EU
    #     (Ireland), EU (Frankfurt), Asia Pacific (Tokyo), Asia Pacific
    #     (Singapore), Asia Pacific (Sydney), South America (São Paulo), and
    #     Asia Pacific (Mumbai).
    #
    #   * The environment type `LINUX_EC2` is available only in regions US
    #     East (N. Virginia), US East (Ohio), US West (Oregon), EU (Ireland),
    #     EU (Frankfurt), Asia Pacific (Tokyo), Asia Pacific (Singapore), Asia
    #     Pacific (Sydney), South America (São Paulo), and Asia Pacific
    #     (Mumbai).
    #
    #   * The environment type `LINUX_GPU_CONTAINER` is available only in
    #     regions US East (N. Virginia), US East (Ohio), US West (Oregon), EU
    #     (Ireland), EU (Frankfurt), Asia Pacific (Tokyo), and Asia Pacific
    #     (Sydney).
    #
    #   * The environment type `MAC_ARM` is available for Medium fleets only
    #     in regions US East (N. Virginia), US East (Ohio), US West (Oregon),
    #     Asia Pacific (Sydney), and EU (Frankfurt)
    #
    #   * The environment type `MAC_ARM` is available for Large fleets only in
    #     regions US East (N. Virginia), US East (Ohio), US West (Oregon), and
    #     Asia Pacific (Sydney).
    #
    #   * The environment type `WINDOWS_EC2` is available only in regions US
    #     East (N. Virginia), US East (Ohio), US West (Oregon), EU (Ireland),
    #     EU (Frankfurt), Asia Pacific (Tokyo), Asia Pacific (Singapore), Asia
    #     Pacific (Sydney), South America (São Paulo), and Asia Pacific
    #     (Mumbai).
    #
    #   * The environment type `WINDOWS_SERVER_2019_CONTAINER` is available
    #     only in regions US East (N. Virginia), US East (Ohio), US West
    #     (Oregon), Asia Pacific (Sydney), Asia Pacific (Tokyo), Asia Pacific
    #     (Mumbai) and EU (Ireland).
    #
    #   * The environment type `WINDOWS_SERVER_2022_CONTAINER` is available
    #     only in regions US East (N. Virginia), US East (Ohio), US West
    #     (Oregon), EU (Ireland), EU (Frankfurt), Asia Pacific (Sydney), Asia
    #     Pacific (Singapore), Asia Pacific (Tokyo), South America (São Paulo)
    #     and Asia Pacific (Mumbai).
    #
    #   For more information, see [Build environment compute types][1] in the
    #   *CodeBuild user guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codebuild/latest/userguide/build-env-ref-compute-types.html
    #
    # @option params [required, String] :compute_type
    #   Information about the compute resources the compute fleet uses.
    #   Available values include:
    #
    #   * `ATTRIBUTE_BASED_COMPUTE`: Specify the amount of vCPUs, memory, disk
    #     space, and the type of machine.
    #
    #     <note markdown="1"> If you use `ATTRIBUTE_BASED_COMPUTE`, you must define your
    #     attributes by using `computeConfiguration`. CodeBuild will select
    #     the cheapest instance that satisfies your specified attributes. For
    #     more information, see [Reserved capacity environment types][1] in
    #     the *CodeBuild User Guide*.
    #
    #      </note>
    #
    #   * `CUSTOM_INSTANCE_TYPE`: Specify the instance type for your compute
    #     fleet. For a list of supported instance types, see [Supported
    #     instance families ][2] in the *CodeBuild User Guide*.
    #
    #   * `BUILD_GENERAL1_SMALL`: Use up to 4 GiB memory and 2 vCPUs for
    #     builds.
    #
    #   * `BUILD_GENERAL1_MEDIUM`: Use up to 8 GiB memory and 4 vCPUs for
    #     builds.
    #
    #   * `BUILD_GENERAL1_LARGE`: Use up to 16 GiB memory and 8 vCPUs for
    #     builds, depending on your environment type.
    #
    #   * `BUILD_GENERAL1_XLARGE`: Use up to 72 GiB memory and 36 vCPUs for
    #     builds, depending on your environment type.
    #
    #   * `BUILD_GENERAL1_2XLARGE`: Use up to 144 GiB memory, 72 vCPUs, and
    #     824 GB of SSD storage for builds. This compute type supports Docker
    #     images up to 100 GB uncompressed.
    #
    #   * `BUILD_LAMBDA_1GB`: Use up to 1 GiB memory for builds. Only
    #     available for environment type `LINUX_LAMBDA_CONTAINER` and
    #     `ARM_LAMBDA_CONTAINER`.
    #
    #   * `BUILD_LAMBDA_2GB`: Use up to 2 GiB memory for builds. Only
    #     available for environment type `LINUX_LAMBDA_CONTAINER` and
    #     `ARM_LAMBDA_CONTAINER`.
    #
    #   * `BUILD_LAMBDA_4GB`: Use up to 4 GiB memory for builds. Only
    #     available for environment type `LINUX_LAMBDA_CONTAINER` and
    #     `ARM_LAMBDA_CONTAINER`.
    #
    #   * `BUILD_LAMBDA_8GB`: Use up to 8 GiB memory for builds. Only
    #     available for environment type `LINUX_LAMBDA_CONTAINER` and
    #     `ARM_LAMBDA_CONTAINER`.
    #
    #   * `BUILD_LAMBDA_10GB`: Use up to 10 GiB memory for builds. Only
    #     available for environment type `LINUX_LAMBDA_CONTAINER` and
    #     `ARM_LAMBDA_CONTAINER`.
    #
    #   If you use `BUILD_GENERAL1_SMALL`:
    #
    #   * For environment type `LINUX_CONTAINER`, you can use up to 4 GiB
    #     memory and 2 vCPUs for builds.
    #
    #   * For environment type `LINUX_GPU_CONTAINER`, you can use up to 16 GiB
    #     memory, 4 vCPUs, and 1 NVIDIA A10G Tensor Core GPU for builds.
    #
    #   * For environment type `ARM_CONTAINER`, you can use up to 4 GiB memory
    #     and 2 vCPUs on ARM-based processors for builds.
    #
    #   If you use `BUILD_GENERAL1_LARGE`:
    #
    #   * For environment type `LINUX_CONTAINER`, you can use up to 16 GiB
    #     memory and 8 vCPUs for builds.
    #
    #   * For environment type `LINUX_GPU_CONTAINER`, you can use up to 255
    #     GiB memory, 32 vCPUs, and 4 NVIDIA Tesla V100 GPUs for builds.
    #
    #   * For environment type `ARM_CONTAINER`, you can use up to 16 GiB
    #     memory and 8 vCPUs on ARM-based processors for builds.
    #
    #   For more information, see [On-demand environment types][3] in the
    #   *CodeBuild User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codebuild/latest/userguide/build-env-ref-compute-types.html#environment-reserved-capacity.types
    #   [2]: https://docs.aws.amazon.com/codebuild/latest/userguide/build-env-ref-compute-types.html#environment-reserved-capacity.instance-types
    #   [3]: https://docs.aws.amazon.com/codebuild/latest/userguide/build-env-ref-compute-types.html#environment.types
    #
    # @option params [Types::ComputeConfiguration] :compute_configuration
    #   The compute configuration of the compute fleet. This is only required
    #   if `computeType` is set to `ATTRIBUTE_BASED_COMPUTE` or
    #   `CUSTOM_INSTANCE_TYPE`.
    #
    # @option params [Types::ScalingConfigurationInput] :scaling_configuration
    #   The scaling configuration of the compute fleet.
    #
    # @option params [String] :overflow_behavior
    #   The compute fleet overflow behavior.
    #
    #   * For overflow behavior `QUEUE`, your overflow builds need to wait on
    #     the existing fleet instance to become available.
    #
    #   * For overflow behavior `ON_DEMAND`, your overflow builds run on
    #     CodeBuild on-demand.
    #
    #     <note markdown="1"> If you choose to set your overflow behavior to on-demand while
    #     creating a VPC-connected fleet, make sure that you add the required
    #     VPC permissions to your project service role. For more information,
    #     see [Example policy statement to allow CodeBuild access to Amazon
    #     Web Services services required to create a VPC network
    #     interface][1].
    #
    #      </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codebuild/latest/userguide/auth-and-access-control-iam-identity-based-access-control.html#customer-managed-policies-example-create-vpc-network-interface
    #
    # @option params [Types::VpcConfig] :vpc_config
    #   Information about the VPC configuration that CodeBuild accesses.
    #
    # @option params [Types::ProxyConfiguration] :proxy_configuration
    #   The proxy configuration of the compute fleet.
    #
    # @option params [String] :image_id
    #   The Amazon Machine Image (AMI) of the compute fleet.
    #
    # @option params [String] :fleet_service_role
    #   The service role associated with the compute fleet. For more
    #   information, see [ Allow a user to add a permission policy for a fleet
    #   service role][1] in the *CodeBuild User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codebuild/latest/userguide/auth-and-access-control-iam-identity-based-access-control.html#customer-managed-policies-example-permission-policy-fleet-service-role.html
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of tag key and value pairs associated with this compute fleet.
    #
    #   These tags are available for use by Amazon Web Services services that
    #   support CodeBuild build project tags.
    #
    # @return [Types::CreateFleetOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateFleetOutput#fleet #fleet} => Types::Fleet
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_fleet({
    #     name: "FleetName", # required
    #     base_capacity: 1, # required
    #     environment_type: "WINDOWS_CONTAINER", # required, accepts WINDOWS_CONTAINER, LINUX_CONTAINER, LINUX_GPU_CONTAINER, ARM_CONTAINER, WINDOWS_SERVER_2019_CONTAINER, WINDOWS_SERVER_2022_CONTAINER, LINUX_LAMBDA_CONTAINER, ARM_LAMBDA_CONTAINER, LINUX_EC2, ARM_EC2, WINDOWS_EC2, MAC_ARM
    #     compute_type: "BUILD_GENERAL1_SMALL", # required, accepts BUILD_GENERAL1_SMALL, BUILD_GENERAL1_MEDIUM, BUILD_GENERAL1_LARGE, BUILD_GENERAL1_XLARGE, BUILD_GENERAL1_2XLARGE, BUILD_LAMBDA_1GB, BUILD_LAMBDA_2GB, BUILD_LAMBDA_4GB, BUILD_LAMBDA_8GB, BUILD_LAMBDA_10GB, ATTRIBUTE_BASED_COMPUTE, CUSTOM_INSTANCE_TYPE
    #     compute_configuration: {
    #       v_cpu: 1,
    #       memory: 1,
    #       disk: 1,
    #       machine_type: "GENERAL", # accepts GENERAL, NVME
    #       instance_type: "NonEmptyString",
    #     },
    #     scaling_configuration: {
    #       scaling_type: "TARGET_TRACKING_SCALING", # accepts TARGET_TRACKING_SCALING
    #       target_tracking_scaling_configs: [
    #         {
    #           metric_type: "FLEET_UTILIZATION_RATE", # accepts FLEET_UTILIZATION_RATE
    #           target_value: 1.0,
    #         },
    #       ],
    #       max_capacity: 1,
    #     },
    #     overflow_behavior: "QUEUE", # accepts QUEUE, ON_DEMAND
    #     vpc_config: {
    #       vpc_id: "NonEmptyString",
    #       subnets: ["NonEmptyString"],
    #       security_group_ids: ["NonEmptyString"],
    #     },
    #     proxy_configuration: {
    #       default_behavior: "ALLOW_ALL", # accepts ALLOW_ALL, DENY_ALL
    #       ordered_proxy_rules: [
    #         {
    #           type: "DOMAIN", # required, accepts DOMAIN, IP
    #           effect: "ALLOW", # required, accepts ALLOW, DENY
    #           entities: ["String"], # required
    #         },
    #       ],
    #     },
    #     image_id: "NonEmptyString",
    #     fleet_service_role: "NonEmptyString",
    #     tags: [
    #       {
    #         key: "KeyInput",
    #         value: "ValueInput",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.fleet.arn #=> String
    #   resp.fleet.name #=> String
    #   resp.fleet.id #=> String
    #   resp.fleet.created #=> Time
    #   resp.fleet.last_modified #=> Time
    #   resp.fleet.status.status_code #=> String, one of "CREATING", "UPDATING", "ROTATING", "PENDING_DELETION", "DELETING", "CREATE_FAILED", "UPDATE_ROLLBACK_FAILED", "ACTIVE"
    #   resp.fleet.status.context #=> String, one of "CREATE_FAILED", "UPDATE_FAILED", "ACTION_REQUIRED", "PENDING_DELETION", "INSUFFICIENT_CAPACITY"
    #   resp.fleet.status.message #=> String
    #   resp.fleet.base_capacity #=> Integer
    #   resp.fleet.environment_type #=> String, one of "WINDOWS_CONTAINER", "LINUX_CONTAINER", "LINUX_GPU_CONTAINER", "ARM_CONTAINER", "WINDOWS_SERVER_2019_CONTAINER", "WINDOWS_SERVER_2022_CONTAINER", "LINUX_LAMBDA_CONTAINER", "ARM_LAMBDA_CONTAINER", "LINUX_EC2", "ARM_EC2", "WINDOWS_EC2", "MAC_ARM"
    #   resp.fleet.compute_type #=> String, one of "BUILD_GENERAL1_SMALL", "BUILD_GENERAL1_MEDIUM", "BUILD_GENERAL1_LARGE", "BUILD_GENERAL1_XLARGE", "BUILD_GENERAL1_2XLARGE", "BUILD_LAMBDA_1GB", "BUILD_LAMBDA_2GB", "BUILD_LAMBDA_4GB", "BUILD_LAMBDA_8GB", "BUILD_LAMBDA_10GB", "ATTRIBUTE_BASED_COMPUTE", "CUSTOM_INSTANCE_TYPE"
    #   resp.fleet.compute_configuration.v_cpu #=> Integer
    #   resp.fleet.compute_configuration.memory #=> Integer
    #   resp.fleet.compute_configuration.disk #=> Integer
    #   resp.fleet.compute_configuration.machine_type #=> String, one of "GENERAL", "NVME"
    #   resp.fleet.compute_configuration.instance_type #=> String
    #   resp.fleet.scaling_configuration.scaling_type #=> String, one of "TARGET_TRACKING_SCALING"
    #   resp.fleet.scaling_configuration.target_tracking_scaling_configs #=> Array
    #   resp.fleet.scaling_configuration.target_tracking_scaling_configs[0].metric_type #=> String, one of "FLEET_UTILIZATION_RATE"
    #   resp.fleet.scaling_configuration.target_tracking_scaling_configs[0].target_value #=> Float
    #   resp.fleet.scaling_configuration.max_capacity #=> Integer
    #   resp.fleet.scaling_configuration.desired_capacity #=> Integer
    #   resp.fleet.overflow_behavior #=> String, one of "QUEUE", "ON_DEMAND"
    #   resp.fleet.vpc_config.vpc_id #=> String
    #   resp.fleet.vpc_config.subnets #=> Array
    #   resp.fleet.vpc_config.subnets[0] #=> String
    #   resp.fleet.vpc_config.security_group_ids #=> Array
    #   resp.fleet.vpc_config.security_group_ids[0] #=> String
    #   resp.fleet.proxy_configuration.default_behavior #=> String, one of "ALLOW_ALL", "DENY_ALL"
    #   resp.fleet.proxy_configuration.ordered_proxy_rules #=> Array
    #   resp.fleet.proxy_configuration.ordered_proxy_rules[0].type #=> String, one of "DOMAIN", "IP"
    #   resp.fleet.proxy_configuration.ordered_proxy_rules[0].effect #=> String, one of "ALLOW", "DENY"
    #   resp.fleet.proxy_configuration.ordered_proxy_rules[0].entities #=> Array
    #   resp.fleet.proxy_configuration.ordered_proxy_rules[0].entities[0] #=> String
    #   resp.fleet.image_id #=> String
    #   resp.fleet.fleet_service_role #=> String
    #   resp.fleet.tags #=> Array
    #   resp.fleet.tags[0].key #=> String
    #   resp.fleet.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/CreateFleet AWS API Documentation
    #
    # @overload create_fleet(params = {})
    # @param [Hash] params ({})
    def create_fleet(params = {}, options = {})
      req = build_request(:create_fleet, params)
      req.send_request(options)
    end

    # Creates a build project.
    #
    # @option params [required, String] :name
    #   The name of the build project.
    #
    # @option params [String] :description
    #   A description that makes the build project easy to identify.
    #
    # @option params [required, Types::ProjectSource] :source
    #   Information about the build input source code for the build project.
    #
    # @option params [Array<Types::ProjectSource>] :secondary_sources
    #   An array of `ProjectSource` objects.
    #
    # @option params [String] :source_version
    #   A version of the build input to be built for this project. If not
    #   specified, the latest version is used. If specified, it must be one
    #   of:
    #
    #   * For CodeCommit: the commit ID, branch, or Git tag to use.
    #
    #   * For GitHub: the commit ID, pull request ID, branch name, or tag name
    #     that corresponds to the version of the source code you want to
    #     build. If a pull request ID is specified, it must use the format
    #     `pr/pull-request-ID` (for example `pr/25`). If a branch name is
    #     specified, the branch's HEAD commit ID is used. If not specified,
    #     the default branch's HEAD commit ID is used.
    #
    #   * For GitLab: the commit ID, branch, or Git tag to use.
    #
    #   * For Bitbucket: the commit ID, branch name, or tag name that
    #     corresponds to the version of the source code you want to build. If
    #     a branch name is specified, the branch's HEAD commit ID is used. If
    #     not specified, the default branch's HEAD commit ID is used.
    #
    #   * For Amazon S3: the version ID of the object that represents the
    #     build input ZIP file to use.
    #
    #   If `sourceVersion` is specified at the build level, then that version
    #   takes precedence over this `sourceVersion` (at the project level).
    #
    #   For more information, see [Source Version Sample with CodeBuild][1] in
    #   the *CodeBuild User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codebuild/latest/userguide/sample-source-version.html
    #
    # @option params [Array<Types::ProjectSourceVersion>] :secondary_source_versions
    #   An array of `ProjectSourceVersion` objects. If
    #   `secondarySourceVersions` is specified at the build level, then they
    #   take precedence over these `secondarySourceVersions` (at the project
    #   level).
    #
    # @option params [required, Types::ProjectArtifacts] :artifacts
    #   Information about the build output artifacts for the build project.
    #
    # @option params [Array<Types::ProjectArtifacts>] :secondary_artifacts
    #   An array of `ProjectArtifacts` objects.
    #
    # @option params [Types::ProjectCache] :cache
    #   Stores recently used information so that it can be quickly accessed at
    #   a later time.
    #
    # @option params [required, Types::ProjectEnvironment] :environment
    #   Information about the build environment for the build project.
    #
    # @option params [required, String] :service_role
    #   The ARN of the IAM role that enables CodeBuild to interact with
    #   dependent Amazon Web Services services on behalf of the Amazon Web
    #   Services account.
    #
    # @option params [Integer] :timeout_in_minutes
    #   How long, in minutes, from 5 to 2160 (36 hours), for CodeBuild to wait
    #   before it times out any build that has not been marked as completed.
    #   The default is 60 minutes.
    #
    # @option params [Integer] :queued_timeout_in_minutes
    #   The number of minutes a build is allowed to be queued before it times
    #   out.
    #
    # @option params [String] :encryption_key
    #   The Key Management Service customer master key (CMK) to be used for
    #   encrypting the build output artifacts.
    #
    #   <note markdown="1"> You can use a cross-account KMS key to encrypt the build output
    #   artifacts if your service role has permission to that key.
    #
    #    </note>
    #
    #   You can specify either the Amazon Resource Name (ARN) of the CMK or,
    #   if available, the CMK's alias (using the format
    #   `alias/<alias-name>`).
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of tag key and value pairs associated with this build project.
    #
    #   These tags are available for use by Amazon Web Services services that
    #   support CodeBuild build project tags.
    #
    # @option params [Types::VpcConfig] :vpc_config
    #   VpcConfig enables CodeBuild to access resources in an Amazon VPC.
    #
    #   <note markdown="1"> If you're using compute fleets during project creation, do not
    #   provide vpcConfig.
    #
    #    </note>
    #
    # @option params [Boolean] :badge_enabled
    #   Set this to true to generate a publicly accessible URL for your
    #   project's build badge.
    #
    # @option params [Types::LogsConfig] :logs_config
    #   Information about logs for the build project. These can be logs in
    #   CloudWatch Logs, logs uploaded to a specified S3 bucket, or both.
    #
    # @option params [Array<Types::ProjectFileSystemLocation>] :file_system_locations
    #   An array of `ProjectFileSystemLocation` objects for a CodeBuild build
    #   project. A `ProjectFileSystemLocation` object specifies the
    #   `identifier`, `location`, `mountOptions`, `mountPoint`, and `type` of
    #   a file system created using Amazon Elastic File System.
    #
    # @option params [Types::ProjectBuildBatchConfig] :build_batch_config
    #   A ProjectBuildBatchConfig object that defines the batch build options
    #   for the project.
    #
    # @option params [Integer] :concurrent_build_limit
    #   The maximum number of concurrent builds that are allowed for this
    #   project.
    #
    #   New builds are only started if the current number of builds is less
    #   than or equal to this limit. If the current build count meets this
    #   limit, new builds are throttled and are not run.
    #
    # @option params [Integer] :auto_retry_limit
    #   The maximum number of additional automatic retries after a failed
    #   build. For example, if the auto-retry limit is set to 2, CodeBuild
    #   will call the `RetryBuild` API to automatically retry your build for
    #   up to 2 additional times.
    #
    # @return [Types::CreateProjectOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateProjectOutput#project #project} => Types::Project
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_project({
    #     name: "ProjectName", # required
    #     description: "ProjectDescription",
    #     source: { # required
    #       type: "CODECOMMIT", # required, accepts CODECOMMIT, CODEPIPELINE, GITHUB, GITLAB, GITLAB_SELF_MANAGED, S3, BITBUCKET, GITHUB_ENTERPRISE, NO_SOURCE
    #       location: "String",
    #       git_clone_depth: 1,
    #       git_submodules_config: {
    #         fetch_submodules: false, # required
    #       },
    #       buildspec: "String",
    #       auth: {
    #         type: "OAUTH", # required, accepts OAUTH, CODECONNECTIONS, SECRETS_MANAGER
    #         resource: "String",
    #       },
    #       report_build_status: false,
    #       build_status_config: {
    #         context: "String",
    #         target_url: "String",
    #       },
    #       insecure_ssl: false,
    #       source_identifier: "String",
    #     },
    #     secondary_sources: [
    #       {
    #         type: "CODECOMMIT", # required, accepts CODECOMMIT, CODEPIPELINE, GITHUB, GITLAB, GITLAB_SELF_MANAGED, S3, BITBUCKET, GITHUB_ENTERPRISE, NO_SOURCE
    #         location: "String",
    #         git_clone_depth: 1,
    #         git_submodules_config: {
    #           fetch_submodules: false, # required
    #         },
    #         buildspec: "String",
    #         auth: {
    #           type: "OAUTH", # required, accepts OAUTH, CODECONNECTIONS, SECRETS_MANAGER
    #           resource: "String",
    #         },
    #         report_build_status: false,
    #         build_status_config: {
    #           context: "String",
    #           target_url: "String",
    #         },
    #         insecure_ssl: false,
    #         source_identifier: "String",
    #       },
    #     ],
    #     source_version: "String",
    #     secondary_source_versions: [
    #       {
    #         source_identifier: "String", # required
    #         source_version: "String", # required
    #       },
    #     ],
    #     artifacts: { # required
    #       type: "CODEPIPELINE", # required, accepts CODEPIPELINE, S3, NO_ARTIFACTS
    #       location: "String",
    #       path: "String",
    #       namespace_type: "NONE", # accepts NONE, BUILD_ID
    #       name: "String",
    #       packaging: "NONE", # accepts NONE, ZIP
    #       override_artifact_name: false,
    #       encryption_disabled: false,
    #       artifact_identifier: "String",
    #       bucket_owner_access: "NONE", # accepts NONE, READ_ONLY, FULL
    #     },
    #     secondary_artifacts: [
    #       {
    #         type: "CODEPIPELINE", # required, accepts CODEPIPELINE, S3, NO_ARTIFACTS
    #         location: "String",
    #         path: "String",
    #         namespace_type: "NONE", # accepts NONE, BUILD_ID
    #         name: "String",
    #         packaging: "NONE", # accepts NONE, ZIP
    #         override_artifact_name: false,
    #         encryption_disabled: false,
    #         artifact_identifier: "String",
    #         bucket_owner_access: "NONE", # accepts NONE, READ_ONLY, FULL
    #       },
    #     ],
    #     cache: {
    #       type: "NO_CACHE", # required, accepts NO_CACHE, S3, LOCAL
    #       location: "String",
    #       modes: ["LOCAL_DOCKER_LAYER_CACHE"], # accepts LOCAL_DOCKER_LAYER_CACHE, LOCAL_SOURCE_CACHE, LOCAL_CUSTOM_CACHE
    #       cache_namespace: "String",
    #     },
    #     environment: { # required
    #       type: "WINDOWS_CONTAINER", # required, accepts WINDOWS_CONTAINER, LINUX_CONTAINER, LINUX_GPU_CONTAINER, ARM_CONTAINER, WINDOWS_SERVER_2019_CONTAINER, WINDOWS_SERVER_2022_CONTAINER, LINUX_LAMBDA_CONTAINER, ARM_LAMBDA_CONTAINER, LINUX_EC2, ARM_EC2, WINDOWS_EC2, MAC_ARM
    #       image: "NonEmptyString", # required
    #       compute_type: "BUILD_GENERAL1_SMALL", # required, accepts BUILD_GENERAL1_SMALL, BUILD_GENERAL1_MEDIUM, BUILD_GENERAL1_LARGE, BUILD_GENERAL1_XLARGE, BUILD_GENERAL1_2XLARGE, BUILD_LAMBDA_1GB, BUILD_LAMBDA_2GB, BUILD_LAMBDA_4GB, BUILD_LAMBDA_8GB, BUILD_LAMBDA_10GB, ATTRIBUTE_BASED_COMPUTE, CUSTOM_INSTANCE_TYPE
    #       compute_configuration: {
    #         v_cpu: 1,
    #         memory: 1,
    #         disk: 1,
    #         machine_type: "GENERAL", # accepts GENERAL, NVME
    #         instance_type: "NonEmptyString",
    #       },
    #       fleet: {
    #         fleet_arn: "String",
    #       },
    #       environment_variables: [
    #         {
    #           name: "NonEmptyString", # required
    #           value: "String", # required
    #           type: "PLAINTEXT", # accepts PLAINTEXT, PARAMETER_STORE, SECRETS_MANAGER
    #         },
    #       ],
    #       privileged_mode: false,
    #       certificate: "String",
    #       registry_credential: {
    #         credential: "NonEmptyString", # required
    #         credential_provider: "SECRETS_MANAGER", # required, accepts SECRETS_MANAGER
    #       },
    #       image_pull_credentials_type: "CODEBUILD", # accepts CODEBUILD, SERVICE_ROLE
    #       docker_server: {
    #         compute_type: "BUILD_GENERAL1_SMALL", # required, accepts BUILD_GENERAL1_SMALL, BUILD_GENERAL1_MEDIUM, BUILD_GENERAL1_LARGE, BUILD_GENERAL1_XLARGE, BUILD_GENERAL1_2XLARGE, BUILD_LAMBDA_1GB, BUILD_LAMBDA_2GB, BUILD_LAMBDA_4GB, BUILD_LAMBDA_8GB, BUILD_LAMBDA_10GB, ATTRIBUTE_BASED_COMPUTE, CUSTOM_INSTANCE_TYPE
    #         security_group_ids: ["NonEmptyString"],
    #         status: {
    #           status: "String",
    #           message: "String",
    #         },
    #       },
    #     },
    #     service_role: "NonEmptyString", # required
    #     timeout_in_minutes: 1,
    #     queued_timeout_in_minutes: 1,
    #     encryption_key: "NonEmptyString",
    #     tags: [
    #       {
    #         key: "KeyInput",
    #         value: "ValueInput",
    #       },
    #     ],
    #     vpc_config: {
    #       vpc_id: "NonEmptyString",
    #       subnets: ["NonEmptyString"],
    #       security_group_ids: ["NonEmptyString"],
    #     },
    #     badge_enabled: false,
    #     logs_config: {
    #       cloud_watch_logs: {
    #         status: "ENABLED", # required, accepts ENABLED, DISABLED
    #         group_name: "String",
    #         stream_name: "String",
    #       },
    #       s3_logs: {
    #         status: "ENABLED", # required, accepts ENABLED, DISABLED
    #         location: "String",
    #         encryption_disabled: false,
    #         bucket_owner_access: "NONE", # accepts NONE, READ_ONLY, FULL
    #       },
    #     },
    #     file_system_locations: [
    #       {
    #         type: "EFS", # accepts EFS
    #         location: "String",
    #         mount_point: "String",
    #         identifier: "String",
    #         mount_options: "String",
    #       },
    #     ],
    #     build_batch_config: {
    #       service_role: "NonEmptyString",
    #       combine_artifacts: false,
    #       restrictions: {
    #         maximum_builds_allowed: 1,
    #         compute_types_allowed: ["NonEmptyString"],
    #         fleets_allowed: ["NonEmptyString"],
    #       },
    #       timeout_in_mins: 1,
    #       batch_report_mode: "REPORT_INDIVIDUAL_BUILDS", # accepts REPORT_INDIVIDUAL_BUILDS, REPORT_AGGREGATED_BATCH
    #     },
    #     concurrent_build_limit: 1,
    #     auto_retry_limit: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.project.name #=> String
    #   resp.project.arn #=> String
    #   resp.project.description #=> String
    #   resp.project.source.type #=> String, one of "CODECOMMIT", "CODEPIPELINE", "GITHUB", "GITLAB", "GITLAB_SELF_MANAGED", "S3", "BITBUCKET", "GITHUB_ENTERPRISE", "NO_SOURCE"
    #   resp.project.source.location #=> String
    #   resp.project.source.git_clone_depth #=> Integer
    #   resp.project.source.git_submodules_config.fetch_submodules #=> Boolean
    #   resp.project.source.buildspec #=> String
    #   resp.project.source.auth.type #=> String, one of "OAUTH", "CODECONNECTIONS", "SECRETS_MANAGER"
    #   resp.project.source.auth.resource #=> String
    #   resp.project.source.report_build_status #=> Boolean
    #   resp.project.source.build_status_config.context #=> String
    #   resp.project.source.build_status_config.target_url #=> String
    #   resp.project.source.insecure_ssl #=> Boolean
    #   resp.project.source.source_identifier #=> String
    #   resp.project.secondary_sources #=> Array
    #   resp.project.secondary_sources[0].type #=> String, one of "CODECOMMIT", "CODEPIPELINE", "GITHUB", "GITLAB", "GITLAB_SELF_MANAGED", "S3", "BITBUCKET", "GITHUB_ENTERPRISE", "NO_SOURCE"
    #   resp.project.secondary_sources[0].location #=> String
    #   resp.project.secondary_sources[0].git_clone_depth #=> Integer
    #   resp.project.secondary_sources[0].git_submodules_config.fetch_submodules #=> Boolean
    #   resp.project.secondary_sources[0].buildspec #=> String
    #   resp.project.secondary_sources[0].auth.type #=> String, one of "OAUTH", "CODECONNECTIONS", "SECRETS_MANAGER"
    #   resp.project.secondary_sources[0].auth.resource #=> String
    #   resp.project.secondary_sources[0].report_build_status #=> Boolean
    #   resp.project.secondary_sources[0].build_status_config.context #=> String
    #   resp.project.secondary_sources[0].build_status_config.target_url #=> String
    #   resp.project.secondary_sources[0].insecure_ssl #=> Boolean
    #   resp.project.secondary_sources[0].source_identifier #=> String
    #   resp.project.source_version #=> String
    #   resp.project.secondary_source_versions #=> Array
    #   resp.project.secondary_source_versions[0].source_identifier #=> String
    #   resp.project.secondary_source_versions[0].source_version #=> String
    #   resp.project.artifacts.type #=> String, one of "CODEPIPELINE", "S3", "NO_ARTIFACTS"
    #   resp.project.artifacts.location #=> String
    #   resp.project.artifacts.path #=> String
    #   resp.project.artifacts.namespace_type #=> String, one of "NONE", "BUILD_ID"
    #   resp.project.artifacts.name #=> String
    #   resp.project.artifacts.packaging #=> String, one of "NONE", "ZIP"
    #   resp.project.artifacts.override_artifact_name #=> Boolean
    #   resp.project.artifacts.encryption_disabled #=> Boolean
    #   resp.project.artifacts.artifact_identifier #=> String
    #   resp.project.artifacts.bucket_owner_access #=> String, one of "NONE", "READ_ONLY", "FULL"
    #   resp.project.secondary_artifacts #=> Array
    #   resp.project.secondary_artifacts[0].type #=> String, one of "CODEPIPELINE", "S3", "NO_ARTIFACTS"
    #   resp.project.secondary_artifacts[0].location #=> String
    #   resp.project.secondary_artifacts[0].path #=> String
    #   resp.project.secondary_artifacts[0].namespace_type #=> String, one of "NONE", "BUILD_ID"
    #   resp.project.secondary_artifacts[0].name #=> String
    #   resp.project.secondary_artifacts[0].packaging #=> String, one of "NONE", "ZIP"
    #   resp.project.secondary_artifacts[0].override_artifact_name #=> Boolean
    #   resp.project.secondary_artifacts[0].encryption_disabled #=> Boolean
    #   resp.project.secondary_artifacts[0].artifact_identifier #=> String
    #   resp.project.secondary_artifacts[0].bucket_owner_access #=> String, one of "NONE", "READ_ONLY", "FULL"
    #   resp.project.cache.type #=> String, one of "NO_CACHE", "S3", "LOCAL"
    #   resp.project.cache.location #=> String
    #   resp.project.cache.modes #=> Array
    #   resp.project.cache.modes[0] #=> String, one of "LOCAL_DOCKER_LAYER_CACHE", "LOCAL_SOURCE_CACHE", "LOCAL_CUSTOM_CACHE"
    #   resp.project.cache.cache_namespace #=> String
    #   resp.project.environment.type #=> String, one of "WINDOWS_CONTAINER", "LINUX_CONTAINER", "LINUX_GPU_CONTAINER", "ARM_CONTAINER", "WINDOWS_SERVER_2019_CONTAINER", "WINDOWS_SERVER_2022_CONTAINER", "LINUX_LAMBDA_CONTAINER", "ARM_LAMBDA_CONTAINER", "LINUX_EC2", "ARM_EC2", "WINDOWS_EC2", "MAC_ARM"
    #   resp.project.environment.image #=> String
    #   resp.project.environment.compute_type #=> String, one of "BUILD_GENERAL1_SMALL", "BUILD_GENERAL1_MEDIUM", "BUILD_GENERAL1_LARGE", "BUILD_GENERAL1_XLARGE", "BUILD_GENERAL1_2XLARGE", "BUILD_LAMBDA_1GB", "BUILD_LAMBDA_2GB", "BUILD_LAMBDA_4GB", "BUILD_LAMBDA_8GB", "BUILD_LAMBDA_10GB", "ATTRIBUTE_BASED_COMPUTE", "CUSTOM_INSTANCE_TYPE"
    #   resp.project.environment.compute_configuration.v_cpu #=> Integer
    #   resp.project.environment.compute_configuration.memory #=> Integer
    #   resp.project.environment.compute_configuration.disk #=> Integer
    #   resp.project.environment.compute_configuration.machine_type #=> String, one of "GENERAL", "NVME"
    #   resp.project.environment.compute_configuration.instance_type #=> String
    #   resp.project.environment.fleet.fleet_arn #=> String
    #   resp.project.environment.environment_variables #=> Array
    #   resp.project.environment.environment_variables[0].name #=> String
    #   resp.project.environment.environment_variables[0].value #=> String
    #   resp.project.environment.environment_variables[0].type #=> String, one of "PLAINTEXT", "PARAMETER_STORE", "SECRETS_MANAGER"
    #   resp.project.environment.privileged_mode #=> Boolean
    #   resp.project.environment.certificate #=> String
    #   resp.project.environment.registry_credential.credential #=> String
    #   resp.project.environment.registry_credential.credential_provider #=> String, one of "SECRETS_MANAGER"
    #   resp.project.environment.image_pull_credentials_type #=> String, one of "CODEBUILD", "SERVICE_ROLE"
    #   resp.project.environment.docker_server.compute_type #=> String, one of "BUILD_GENERAL1_SMALL", "BUILD_GENERAL1_MEDIUM", "BUILD_GENERAL1_LARGE", "BUILD_GENERAL1_XLARGE", "BUILD_GENERAL1_2XLARGE", "BUILD_LAMBDA_1GB", "BUILD_LAMBDA_2GB", "BUILD_LAMBDA_4GB", "BUILD_LAMBDA_8GB", "BUILD_LAMBDA_10GB", "ATTRIBUTE_BASED_COMPUTE", "CUSTOM_INSTANCE_TYPE"
    #   resp.project.environment.docker_server.security_group_ids #=> Array
    #   resp.project.environment.docker_server.security_group_ids[0] #=> String
    #   resp.project.environment.docker_server.status.status #=> String
    #   resp.project.environment.docker_server.status.message #=> String
    #   resp.project.service_role #=> String
    #   resp.project.timeout_in_minutes #=> Integer
    #   resp.project.queued_timeout_in_minutes #=> Integer
    #   resp.project.encryption_key #=> String
    #   resp.project.tags #=> Array
    #   resp.project.tags[0].key #=> String
    #   resp.project.tags[0].value #=> String
    #   resp.project.created #=> Time
    #   resp.project.last_modified #=> Time
    #   resp.project.webhook.url #=> String
    #   resp.project.webhook.payload_url #=> String
    #   resp.project.webhook.secret #=> String
    #   resp.project.webhook.branch_filter #=> String
    #   resp.project.webhook.filter_groups #=> Array
    #   resp.project.webhook.filter_groups[0] #=> Array
    #   resp.project.webhook.filter_groups[0][0].type #=> String, one of "EVENT", "BASE_REF", "HEAD_REF", "ACTOR_ACCOUNT_ID", "FILE_PATH", "COMMIT_MESSAGE", "WORKFLOW_NAME", "TAG_NAME", "RELEASE_NAME", "REPOSITORY_NAME", "ORGANIZATION_NAME"
    #   resp.project.webhook.filter_groups[0][0].pattern #=> String
    #   resp.project.webhook.filter_groups[0][0].exclude_matched_pattern #=> Boolean
    #   resp.project.webhook.build_type #=> String, one of "BUILD", "BUILD_BATCH", "RUNNER_BUILDKITE_BUILD"
    #   resp.project.webhook.manual_creation #=> Boolean
    #   resp.project.webhook.last_modified_secret #=> Time
    #   resp.project.webhook.scope_configuration.name #=> String
    #   resp.project.webhook.scope_configuration.domain #=> String
    #   resp.project.webhook.scope_configuration.scope #=> String, one of "GITHUB_ORGANIZATION", "GITHUB_GLOBAL", "GITLAB_GROUP"
    #   resp.project.webhook.status #=> String, one of "CREATING", "CREATE_FAILED", "ACTIVE", "DELETING"
    #   resp.project.webhook.status_message #=> String
    #   resp.project.webhook.pull_request_build_policy.requires_comment_approval #=> String, one of "DISABLED", "ALL_PULL_REQUESTS", "FORK_PULL_REQUESTS"
    #   resp.project.webhook.pull_request_build_policy.approver_roles #=> Array
    #   resp.project.webhook.pull_request_build_policy.approver_roles[0] #=> String, one of "GITHUB_READ", "GITHUB_TRIAGE", "GITHUB_WRITE", "GITHUB_MAINTAIN", "GITHUB_ADMIN", "GITLAB_GUEST", "GITLAB_PLANNER", "GITLAB_REPORTER", "GITLAB_DEVELOPER", "GITLAB_MAINTAINER", "GITLAB_OWNER", "BITBUCKET_READ", "BITBUCKET_WRITE", "BITBUCKET_ADMIN"
    #   resp.project.vpc_config.vpc_id #=> String
    #   resp.project.vpc_config.subnets #=> Array
    #   resp.project.vpc_config.subnets[0] #=> String
    #   resp.project.vpc_config.security_group_ids #=> Array
    #   resp.project.vpc_config.security_group_ids[0] #=> String
    #   resp.project.badge.badge_enabled #=> Boolean
    #   resp.project.badge.badge_request_url #=> String
    #   resp.project.logs_config.cloud_watch_logs.status #=> String, one of "ENABLED", "DISABLED"
    #   resp.project.logs_config.cloud_watch_logs.group_name #=> String
    #   resp.project.logs_config.cloud_watch_logs.stream_name #=> String
    #   resp.project.logs_config.s3_logs.status #=> String, one of "ENABLED", "DISABLED"
    #   resp.project.logs_config.s3_logs.location #=> String
    #   resp.project.logs_config.s3_logs.encryption_disabled #=> Boolean
    #   resp.project.logs_config.s3_logs.bucket_owner_access #=> String, one of "NONE", "READ_ONLY", "FULL"
    #   resp.project.file_system_locations #=> Array
    #   resp.project.file_system_locations[0].type #=> String, one of "EFS"
    #   resp.project.file_system_locations[0].location #=> String
    #   resp.project.file_system_locations[0].mount_point #=> String
    #   resp.project.file_system_locations[0].identifier #=> String
    #   resp.project.file_system_locations[0].mount_options #=> String
    #   resp.project.build_batch_config.service_role #=> String
    #   resp.project.build_batch_config.combine_artifacts #=> Boolean
    #   resp.project.build_batch_config.restrictions.maximum_builds_allowed #=> Integer
    #   resp.project.build_batch_config.restrictions.compute_types_allowed #=> Array
    #   resp.project.build_batch_config.restrictions.compute_types_allowed[0] #=> String
    #   resp.project.build_batch_config.restrictions.fleets_allowed #=> Array
    #   resp.project.build_batch_config.restrictions.fleets_allowed[0] #=> String
    #   resp.project.build_batch_config.timeout_in_mins #=> Integer
    #   resp.project.build_batch_config.batch_report_mode #=> String, one of "REPORT_INDIVIDUAL_BUILDS", "REPORT_AGGREGATED_BATCH"
    #   resp.project.concurrent_build_limit #=> Integer
    #   resp.project.project_visibility #=> String, one of "PUBLIC_READ", "PRIVATE"
    #   resp.project.public_project_alias #=> String
    #   resp.project.resource_access_role #=> String
    #   resp.project.auto_retry_limit #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/CreateProject AWS API Documentation
    #
    # @overload create_project(params = {})
    # @param [Hash] params ({})
    def create_project(params = {}, options = {})
      req = build_request(:create_project, params)
      req.send_request(options)
    end

    # Creates a report group. A report group contains a collection of
    # reports.
    #
    # @option params [required, String] :name
    #   The name of the report group.
    #
    # @option params [required, String] :type
    #   The type of report group.
    #
    # @option params [required, Types::ReportExportConfig] :export_config
    #   A `ReportExportConfig` object that contains information about where
    #   the report group test results are exported.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of tag key and value pairs associated with this report group.
    #
    #   These tags are available for use by Amazon Web Services services that
    #   support CodeBuild report group tags.
    #
    # @return [Types::CreateReportGroupOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateReportGroupOutput#report_group #report_group} => Types::ReportGroup
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_report_group({
    #     name: "ReportGroupName", # required
    #     type: "TEST", # required, accepts TEST, CODE_COVERAGE
    #     export_config: { # required
    #       export_config_type: "S3", # accepts S3, NO_EXPORT
    #       s3_destination: {
    #         bucket: "NonEmptyString",
    #         bucket_owner: "String",
    #         path: "String",
    #         packaging: "ZIP", # accepts ZIP, NONE
    #         encryption_key: "NonEmptyString",
    #         encryption_disabled: false,
    #       },
    #     },
    #     tags: [
    #       {
    #         key: "KeyInput",
    #         value: "ValueInput",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.report_group.arn #=> String
    #   resp.report_group.name #=> String
    #   resp.report_group.type #=> String, one of "TEST", "CODE_COVERAGE"
    #   resp.report_group.export_config.export_config_type #=> String, one of "S3", "NO_EXPORT"
    #   resp.report_group.export_config.s3_destination.bucket #=> String
    #   resp.report_group.export_config.s3_destination.bucket_owner #=> String
    #   resp.report_group.export_config.s3_destination.path #=> String
    #   resp.report_group.export_config.s3_destination.packaging #=> String, one of "ZIP", "NONE"
    #   resp.report_group.export_config.s3_destination.encryption_key #=> String
    #   resp.report_group.export_config.s3_destination.encryption_disabled #=> Boolean
    #   resp.report_group.created #=> Time
    #   resp.report_group.last_modified #=> Time
    #   resp.report_group.tags #=> Array
    #   resp.report_group.tags[0].key #=> String
    #   resp.report_group.tags[0].value #=> String
    #   resp.report_group.status #=> String, one of "ACTIVE", "DELETING"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/CreateReportGroup AWS API Documentation
    #
    # @overload create_report_group(params = {})
    # @param [Hash] params ({})
    def create_report_group(params = {}, options = {})
      req = build_request(:create_report_group, params)
      req.send_request(options)
    end

    # For an existing CodeBuild build project that has its source code
    # stored in a GitHub or Bitbucket repository, enables CodeBuild to start
    # rebuilding the source code every time a code change is pushed to the
    # repository.
    #
    # If you enable webhooks for an CodeBuild project, and the project is
    # used as a build step in CodePipeline, then two identical builds are
    # created for each commit. One build is triggered through webhooks, and
    # one through CodePipeline. Because billing is on a per-build basis, you
    # are billed for both builds. Therefore, if you are using CodePipeline,
    # we recommend that you disable webhooks in CodeBuild. In the CodeBuild
    # console, clear the Webhook box. For more information, see step 5 in
    # [Change a Build Project's Settings][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/codebuild/latest/userguide/change-project.html#change-project-console
    #
    # @option params [required, String] :project_name
    #   The name of the CodeBuild project.
    #
    # @option params [String] :branch_filter
    #   A regular expression used to determine which repository branches are
    #   built when a webhook is triggered. If the name of a branch matches the
    #   regular expression, then it is built. If `branchFilter` is empty, then
    #   all branches are built.
    #
    #   <note markdown="1"> It is recommended that you use `filterGroups` instead of
    #   `branchFilter`.
    #
    #    </note>
    #
    # @option params [Array<Array>] :filter_groups
    #   An array of arrays of `WebhookFilter` objects used to determine which
    #   webhooks are triggered. At least one `WebhookFilter` in the array must
    #   specify `EVENT` as its `type`.
    #
    #   For a build to be triggered, at least one filter group in the
    #   `filterGroups` array must pass. For a filter group to pass, each of
    #   its filters must pass.
    #
    # @option params [String] :build_type
    #   Specifies the type of build this webhook will trigger.
    #
    #   <note markdown="1"> `RUNNER_BUILDKITE_BUILD` is only available for `NO_SOURCE` source type
    #   projects configured for Buildkite runner builds. For more information
    #   about CodeBuild-hosted Buildkite runner builds, see [Tutorial:
    #   Configure a CodeBuild-hosted Buildkite runner][1] in the *CodeBuild
    #   user guide*.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codebuild/latest/userguide/sample-runner-buildkite.html
    #
    # @option params [Boolean] :manual_creation
    #   If manualCreation is true, CodeBuild doesn't create a webhook in
    #   GitHub and instead returns `payloadUrl` and `secret` values for the
    #   webhook. The `payloadUrl` and `secret` values in the output can be
    #   used to manually create a webhook within GitHub.
    #
    #   <note markdown="1"> `manualCreation` is only available for GitHub webhooks.
    #
    #    </note>
    #
    # @option params [Types::ScopeConfiguration] :scope_configuration
    #   The scope configuration for global or organization webhooks.
    #
    #   <note markdown="1"> Global or organization webhooks are only available for GitHub and
    #   Github Enterprise webhooks.
    #
    #    </note>
    #
    # @option params [Types::PullRequestBuildPolicy] :pull_request_build_policy
    #   A PullRequestBuildPolicy object that defines comment-based approval
    #   requirements for triggering builds on pull requests. This policy helps
    #   control when automated builds are executed based on contributor
    #   permissions and approval workflows.
    #
    # @return [Types::CreateWebhookOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateWebhookOutput#webhook #webhook} => Types::Webhook
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_webhook({
    #     project_name: "ProjectName", # required
    #     branch_filter: "String",
    #     filter_groups: [
    #       [
    #         {
    #           type: "EVENT", # required, accepts EVENT, BASE_REF, HEAD_REF, ACTOR_ACCOUNT_ID, FILE_PATH, COMMIT_MESSAGE, WORKFLOW_NAME, TAG_NAME, RELEASE_NAME, REPOSITORY_NAME, ORGANIZATION_NAME
    #           pattern: "String", # required
    #           exclude_matched_pattern: false,
    #         },
    #       ],
    #     ],
    #     build_type: "BUILD", # accepts BUILD, BUILD_BATCH, RUNNER_BUILDKITE_BUILD
    #     manual_creation: false,
    #     scope_configuration: {
    #       name: "String", # required
    #       domain: "String",
    #       scope: "GITHUB_ORGANIZATION", # required, accepts GITHUB_ORGANIZATION, GITHUB_GLOBAL, GITLAB_GROUP
    #     },
    #     pull_request_build_policy: {
    #       requires_comment_approval: "DISABLED", # required, accepts DISABLED, ALL_PULL_REQUESTS, FORK_PULL_REQUESTS
    #       approver_roles: ["GITHUB_READ"], # accepts GITHUB_READ, GITHUB_TRIAGE, GITHUB_WRITE, GITHUB_MAINTAIN, GITHUB_ADMIN, GITLAB_GUEST, GITLAB_PLANNER, GITLAB_REPORTER, GITLAB_DEVELOPER, GITLAB_MAINTAINER, GITLAB_OWNER, BITBUCKET_READ, BITBUCKET_WRITE, BITBUCKET_ADMIN
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.webhook.url #=> String
    #   resp.webhook.payload_url #=> String
    #   resp.webhook.secret #=> String
    #   resp.webhook.branch_filter #=> String
    #   resp.webhook.filter_groups #=> Array
    #   resp.webhook.filter_groups[0] #=> Array
    #   resp.webhook.filter_groups[0][0].type #=> String, one of "EVENT", "BASE_REF", "HEAD_REF", "ACTOR_ACCOUNT_ID", "FILE_PATH", "COMMIT_MESSAGE", "WORKFLOW_NAME", "TAG_NAME", "RELEASE_NAME", "REPOSITORY_NAME", "ORGANIZATION_NAME"
    #   resp.webhook.filter_groups[0][0].pattern #=> String
    #   resp.webhook.filter_groups[0][0].exclude_matched_pattern #=> Boolean
    #   resp.webhook.build_type #=> String, one of "BUILD", "BUILD_BATCH", "RUNNER_BUILDKITE_BUILD"
    #   resp.webhook.manual_creation #=> Boolean
    #   resp.webhook.last_modified_secret #=> Time
    #   resp.webhook.scope_configuration.name #=> String
    #   resp.webhook.scope_configuration.domain #=> String
    #   resp.webhook.scope_configuration.scope #=> String, one of "GITHUB_ORGANIZATION", "GITHUB_GLOBAL", "GITLAB_GROUP"
    #   resp.webhook.status #=> String, one of "CREATING", "CREATE_FAILED", "ACTIVE", "DELETING"
    #   resp.webhook.status_message #=> String
    #   resp.webhook.pull_request_build_policy.requires_comment_approval #=> String, one of "DISABLED", "ALL_PULL_REQUESTS", "FORK_PULL_REQUESTS"
    #   resp.webhook.pull_request_build_policy.approver_roles #=> Array
    #   resp.webhook.pull_request_build_policy.approver_roles[0] #=> String, one of "GITHUB_READ", "GITHUB_TRIAGE", "GITHUB_WRITE", "GITHUB_MAINTAIN", "GITHUB_ADMIN", "GITLAB_GUEST", "GITLAB_PLANNER", "GITLAB_REPORTER", "GITLAB_DEVELOPER", "GITLAB_MAINTAINER", "GITLAB_OWNER", "BITBUCKET_READ", "BITBUCKET_WRITE", "BITBUCKET_ADMIN"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/CreateWebhook AWS API Documentation
    #
    # @overload create_webhook(params = {})
    # @param [Hash] params ({})
    def create_webhook(params = {}, options = {})
      req = build_request(:create_webhook, params)
      req.send_request(options)
    end

    # Deletes a batch build.
    #
    # @option params [required, String] :id
    #   The identifier of the batch build to delete.
    #
    # @return [Types::DeleteBuildBatchOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteBuildBatchOutput#status_code #status_code} => String
    #   * {Types::DeleteBuildBatchOutput#builds_deleted #builds_deleted} => Array&lt;String&gt;
    #   * {Types::DeleteBuildBatchOutput#builds_not_deleted #builds_not_deleted} => Array&lt;Types::BuildNotDeleted&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_build_batch({
    #     id: "NonEmptyString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.status_code #=> String
    #   resp.builds_deleted #=> Array
    #   resp.builds_deleted[0] #=> String
    #   resp.builds_not_deleted #=> Array
    #   resp.builds_not_deleted[0].id #=> String
    #   resp.builds_not_deleted[0].status_code #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/DeleteBuildBatch AWS API Documentation
    #
    # @overload delete_build_batch(params = {})
    # @param [Hash] params ({})
    def delete_build_batch(params = {}, options = {})
      req = build_request(:delete_build_batch, params)
      req.send_request(options)
    end

    # Deletes a compute fleet. When you delete a compute fleet, its builds
    # are not deleted.
    #
    # @option params [required, String] :arn
    #   The ARN of the compute fleet.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_fleet({
    #     arn: "NonEmptyString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/DeleteFleet AWS API Documentation
    #
    # @overload delete_fleet(params = {})
    # @param [Hash] params ({})
    def delete_fleet(params = {}, options = {})
      req = build_request(:delete_fleet, params)
      req.send_request(options)
    end

    # Deletes a build project. When you delete a project, its builds are not
    # deleted.
    #
    # @option params [required, String] :name
    #   The name of the build project.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_project({
    #     name: "NonEmptyString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/DeleteProject AWS API Documentation
    #
    # @overload delete_project(params = {})
    # @param [Hash] params ({})
    def delete_project(params = {}, options = {})
      req = build_request(:delete_project, params)
      req.send_request(options)
    end

    # Deletes a report.
    #
    # @option params [required, String] :arn
    #   The ARN of the report to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_report({
    #     arn: "NonEmptyString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/DeleteReport AWS API Documentation
    #
    # @overload delete_report(params = {})
    # @param [Hash] params ({})
    def delete_report(params = {}, options = {})
      req = build_request(:delete_report, params)
      req.send_request(options)
    end

    # Deletes a report group. Before you delete a report group, you must
    # delete its reports.
    #
    # @option params [required, String] :arn
    #   The ARN of the report group to delete.
    #
    # @option params [Boolean] :delete_reports
    #   If `true`, deletes any reports that belong to a report group before
    #   deleting the report group.
    #
    #   If `false`, you must delete any reports in the report group. Use
    #   [ListReportsForReportGroup][1] to get the reports in a report group.
    #   Use [DeleteReport][2] to delete the reports. If you call
    #   `DeleteReportGroup` for a report group that contains one or more
    #   reports, an exception is thrown.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codebuild/latest/APIReference/API_ListReportsForReportGroup.html
    #   [2]: https://docs.aws.amazon.com/codebuild/latest/APIReference/API_DeleteReport.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_report_group({
    #     arn: "NonEmptyString", # required
    #     delete_reports: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/DeleteReportGroup AWS API Documentation
    #
    # @overload delete_report_group(params = {})
    # @param [Hash] params ({})
    def delete_report_group(params = {}, options = {})
      req = build_request(:delete_report_group, params)
      req.send_request(options)
    end

    # Deletes a resource policy that is identified by its resource ARN.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource that is associated with the resource policy.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_resource_policy({
    #     resource_arn: "NonEmptyString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/DeleteResourcePolicy AWS API Documentation
    #
    # @overload delete_resource_policy(params = {})
    # @param [Hash] params ({})
    def delete_resource_policy(params = {}, options = {})
      req = build_request(:delete_resource_policy, params)
      req.send_request(options)
    end

    # Deletes a set of GitHub, GitHub Enterprise, or Bitbucket source
    # credentials.
    #
    # @option params [required, String] :arn
    #   The Amazon Resource Name (ARN) of the token.
    #
    # @return [Types::DeleteSourceCredentialsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteSourceCredentialsOutput#arn #arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_source_credentials({
    #     arn: "NonEmptyString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/DeleteSourceCredentials AWS API Documentation
    #
    # @overload delete_source_credentials(params = {})
    # @param [Hash] params ({})
    def delete_source_credentials(params = {}, options = {})
      req = build_request(:delete_source_credentials, params)
      req.send_request(options)
    end

    # For an existing CodeBuild build project that has its source code
    # stored in a GitHub or Bitbucket repository, stops CodeBuild from
    # rebuilding the source code every time a code change is pushed to the
    # repository.
    #
    # @option params [required, String] :project_name
    #   The name of the CodeBuild project.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_webhook({
    #     project_name: "ProjectName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/DeleteWebhook AWS API Documentation
    #
    # @overload delete_webhook(params = {})
    # @param [Hash] params ({})
    def delete_webhook(params = {}, options = {})
      req = build_request(:delete_webhook, params)
      req.send_request(options)
    end

    # Retrieves one or more code coverage reports.
    #
    # @option params [required, String] :report_arn
    #   The ARN of the report for which test cases are returned.
    #
    # @option params [String] :next_token
    #   The `nextToken` value returned from a previous call to
    #   `DescribeCodeCoverages`. This specifies the next item to return. To
    #   return the beginning of the list, exclude this parameter.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return.
    #
    # @option params [String] :sort_order
    #   Specifies if the results are sorted in ascending or descending order.
    #
    # @option params [String] :sort_by
    #   Specifies how the results are sorted. Possible values are:
    #
    #   FILE\_PATH
    #
    #   : The results are sorted by file path.
    #
    #   LINE\_COVERAGE\_PERCENTAGE
    #
    #   : The results are sorted by the percentage of lines that are covered.
    #
    # @option params [Float] :min_line_coverage_percentage
    #   The minimum line coverage percentage to report.
    #
    # @option params [Float] :max_line_coverage_percentage
    #   The maximum line coverage percentage to report.
    #
    # @return [Types::DescribeCodeCoveragesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeCodeCoveragesOutput#next_token #next_token} => String
    #   * {Types::DescribeCodeCoveragesOutput#code_coverages #code_coverages} => Array&lt;Types::CodeCoverage&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_code_coverages({
    #     report_arn: "NonEmptyString", # required
    #     next_token: "String",
    #     max_results: 1,
    #     sort_order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #     sort_by: "LINE_COVERAGE_PERCENTAGE", # accepts LINE_COVERAGE_PERCENTAGE, FILE_PATH
    #     min_line_coverage_percentage: 1.0,
    #     max_line_coverage_percentage: 1.0,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.code_coverages #=> Array
    #   resp.code_coverages[0].id #=> String
    #   resp.code_coverages[0].report_arn #=> String
    #   resp.code_coverages[0].file_path #=> String
    #   resp.code_coverages[0].line_coverage_percentage #=> Float
    #   resp.code_coverages[0].lines_covered #=> Integer
    #   resp.code_coverages[0].lines_missed #=> Integer
    #   resp.code_coverages[0].branch_coverage_percentage #=> Float
    #   resp.code_coverages[0].branches_covered #=> Integer
    #   resp.code_coverages[0].branches_missed #=> Integer
    #   resp.code_coverages[0].expired #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/DescribeCodeCoverages AWS API Documentation
    #
    # @overload describe_code_coverages(params = {})
    # @param [Hash] params ({})
    def describe_code_coverages(params = {}, options = {})
      req = build_request(:describe_code_coverages, params)
      req.send_request(options)
    end

    # Returns a list of details about test cases for a report.
    #
    # @option params [required, String] :report_arn
    #   The ARN of the report for which test cases are returned.
    #
    # @option params [String] :next_token
    #   During a previous call, the maximum number of items that can be
    #   returned is the value specified in `maxResults`. If there more items
    #   in the list, then a unique string called a *nextToken* is returned. To
    #   get the next batch of items in the list, call this operation again,
    #   adding the next token to the call. To get all of the items in the
    #   list, keep calling this operation with each subsequent next token that
    #   is returned, until no more next tokens are returned.
    #
    # @option params [Integer] :max_results
    #   The maximum number of paginated test cases returned per response. Use
    #   `nextToken` to iterate pages in the list of returned `TestCase`
    #   objects. The default value is 100.
    #
    # @option params [Types::TestCaseFilter] :filter
    #   A `TestCaseFilter` object used to filter the returned reports.
    #
    # @return [Types::DescribeTestCasesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeTestCasesOutput#next_token #next_token} => String
    #   * {Types::DescribeTestCasesOutput#test_cases #test_cases} => Array&lt;Types::TestCase&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_test_cases({
    #     report_arn: "String", # required
    #     next_token: "String",
    #     max_results: 1,
    #     filter: {
    #       status: "String",
    #       keyword: "String",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.test_cases #=> Array
    #   resp.test_cases[0].report_arn #=> String
    #   resp.test_cases[0].test_raw_data_path #=> String
    #   resp.test_cases[0].prefix #=> String
    #   resp.test_cases[0].name #=> String
    #   resp.test_cases[0].status #=> String
    #   resp.test_cases[0].duration_in_nano_seconds #=> Integer
    #   resp.test_cases[0].message #=> String
    #   resp.test_cases[0].expired #=> Time
    #   resp.test_cases[0].test_suite_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/DescribeTestCases AWS API Documentation
    #
    # @overload describe_test_cases(params = {})
    # @param [Hash] params ({})
    def describe_test_cases(params = {}, options = {})
      req = build_request(:describe_test_cases, params)
      req.send_request(options)
    end

    # Analyzes and accumulates test report values for the specified test
    # reports.
    #
    # @option params [required, String] :report_group_arn
    #   The ARN of the report group that contains the reports to analyze.
    #
    # @option params [Integer] :num_of_reports
    #   The number of reports to analyze. This operation always retrieves the
    #   most recent reports.
    #
    #   If this parameter is omitted, the most recent 100 reports are
    #   analyzed.
    #
    # @option params [required, String] :trend_field
    #   The test report value to accumulate. This must be one of the following
    #   values:
    #
    #   Test reports:
    #   : DURATION
    #
    #     : Accumulate the test run times for the specified reports.
    #
    #     PASS\_RATE
    #
    #     : Accumulate the percentage of tests that passed for the specified
    #       test reports.
    #
    #     TOTAL
    #
    #     : Accumulate the total number of tests for the specified test
    #       reports.
    #   ^
    #
    #   Code coverage reports:
    #   : BRANCH\_COVERAGE
    #
    #     : Accumulate the branch coverage percentages for the specified test
    #       reports.
    #
    #     BRANCHES\_COVERED
    #
    #     : Accumulate the branches covered values for the specified test
    #       reports.
    #
    #     BRANCHES\_MISSED
    #
    #     : Accumulate the branches missed values for the specified test
    #       reports.
    #
    #     LINE\_COVERAGE
    #
    #     : Accumulate the line coverage percentages for the specified test
    #       reports.
    #
    #     LINES\_COVERED
    #
    #     : Accumulate the lines covered values for the specified test
    #       reports.
    #
    #     LINES\_MISSED
    #
    #     : Accumulate the lines not covered values for the specified test
    #       reports.
    #
    # @return [Types::GetReportGroupTrendOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetReportGroupTrendOutput#stats #stats} => Types::ReportGroupTrendStats
    #   * {Types::GetReportGroupTrendOutput#raw_data #raw_data} => Array&lt;Types::ReportWithRawData&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_report_group_trend({
    #     report_group_arn: "NonEmptyString", # required
    #     num_of_reports: 1,
    #     trend_field: "PASS_RATE", # required, accepts PASS_RATE, DURATION, TOTAL, LINE_COVERAGE, LINES_COVERED, LINES_MISSED, BRANCH_COVERAGE, BRANCHES_COVERED, BRANCHES_MISSED
    #   })
    #
    # @example Response structure
    #
    #   resp.stats.average #=> String
    #   resp.stats.max #=> String
    #   resp.stats.min #=> String
    #   resp.raw_data #=> Array
    #   resp.raw_data[0].report_arn #=> String
    #   resp.raw_data[0].data #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/GetReportGroupTrend AWS API Documentation
    #
    # @overload get_report_group_trend(params = {})
    # @param [Hash] params ({})
    def get_report_group_trend(params = {}, options = {})
      req = build_request(:get_report_group_trend, params)
      req.send_request(options)
    end

    # Gets a resource policy that is identified by its resource ARN.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource that is associated with the resource policy.
    #
    # @return [Types::GetResourcePolicyOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetResourcePolicyOutput#policy #policy} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_resource_policy({
    #     resource_arn: "NonEmptyString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.policy #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/GetResourcePolicy AWS API Documentation
    #
    # @overload get_resource_policy(params = {})
    # @param [Hash] params ({})
    def get_resource_policy(params = {}, options = {})
      req = build_request(:get_resource_policy, params)
      req.send_request(options)
    end

    # Imports the source repository credentials for an CodeBuild project
    # that has its source code stored in a GitHub, GitHub Enterprise,
    # GitLab, GitLab Self Managed, or Bitbucket repository.
    #
    # @option params [String] :username
    #   The Bitbucket username when the `authType` is BASIC\_AUTH. This
    #   parameter is not valid for other types of source providers or
    #   connections.
    #
    # @option params [required, String] :token
    #   For GitHub or GitHub Enterprise, this is the personal access token.
    #   For Bitbucket, this is either the access token or the app password.
    #   For the `authType` CODECONNECTIONS, this is the `connectionArn`. For
    #   the `authType` SECRETS\_MANAGER, this is the `secretArn`.
    #
    # @option params [required, String] :server_type
    #   The source provider used for this project.
    #
    # @option params [required, String] :auth_type
    #   The type of authentication used to connect to a GitHub, GitHub
    #   Enterprise, GitLab, GitLab Self Managed, or Bitbucket repository. An
    #   OAUTH connection is not supported by the API and must be created using
    #   the CodeBuild console.
    #
    # @option params [Boolean] :should_overwrite
    #   Set to `false` to prevent overwriting the repository source
    #   credentials. Set to `true` to overwrite the repository source
    #   credentials. The default value is `true`.
    #
    # @return [Types::ImportSourceCredentialsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ImportSourceCredentialsOutput#arn #arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.import_source_credentials({
    #     username: "NonEmptyString",
    #     token: "SensitiveNonEmptyString", # required
    #     server_type: "GITHUB", # required, accepts GITHUB, BITBUCKET, GITHUB_ENTERPRISE, GITLAB, GITLAB_SELF_MANAGED
    #     auth_type: "OAUTH", # required, accepts OAUTH, BASIC_AUTH, PERSONAL_ACCESS_TOKEN, CODECONNECTIONS, SECRETS_MANAGER
    #     should_overwrite: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/ImportSourceCredentials AWS API Documentation
    #
    # @overload import_source_credentials(params = {})
    # @param [Hash] params ({})
    def import_source_credentials(params = {}, options = {})
      req = build_request(:import_source_credentials, params)
      req.send_request(options)
    end

    # Resets the cache for a project.
    #
    # @option params [required, String] :project_name
    #   The name of the CodeBuild build project that the cache is reset for.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.invalidate_project_cache({
    #     project_name: "NonEmptyString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/InvalidateProjectCache AWS API Documentation
    #
    # @overload invalidate_project_cache(params = {})
    # @param [Hash] params ({})
    def invalidate_project_cache(params = {}, options = {})
      req = build_request(:invalidate_project_cache, params)
      req.send_request(options)
    end

    # Retrieves the identifiers of your build batches in the current region.
    #
    # @option params [Types::BuildBatchFilter] :filter
    #   A `BuildBatchFilter` object that specifies the filters for the search.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return.
    #
    # @option params [String] :sort_order
    #   Specifies the sort order of the returned items. Valid values include:
    #
    #   * `ASCENDING`: List the batch build identifiers in ascending order by
    #     identifier.
    #
    #   * `DESCENDING`: List the batch build identifiers in descending order
    #     by identifier.
    #
    # @option params [String] :next_token
    #   The `nextToken` value returned from a previous call to
    #   `ListBuildBatches`. This specifies the next item to return. To return
    #   the beginning of the list, exclude this parameter.
    #
    # @return [Types::ListBuildBatchesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListBuildBatchesOutput#ids #ids} => Array&lt;String&gt;
    #   * {Types::ListBuildBatchesOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_build_batches({
    #     filter: {
    #       status: "SUCCEEDED", # accepts SUCCEEDED, FAILED, FAULT, TIMED_OUT, IN_PROGRESS, STOPPED
    #     },
    #     max_results: 1,
    #     sort_order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.ids #=> Array
    #   resp.ids[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/ListBuildBatches AWS API Documentation
    #
    # @overload list_build_batches(params = {})
    # @param [Hash] params ({})
    def list_build_batches(params = {}, options = {})
      req = build_request(:list_build_batches, params)
      req.send_request(options)
    end

    # Retrieves the identifiers of the build batches for a specific project.
    #
    # @option params [String] :project_name
    #   The name of the project.
    #
    # @option params [Types::BuildBatchFilter] :filter
    #   A `BuildBatchFilter` object that specifies the filters for the search.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return.
    #
    # @option params [String] :sort_order
    #   Specifies the sort order of the returned items. Valid values include:
    #
    #   * `ASCENDING`: List the batch build identifiers in ascending order by
    #     identifier.
    #
    #   * `DESCENDING`: List the batch build identifiers in descending order
    #     by identifier.
    #
    # @option params [String] :next_token
    #   The `nextToken` value returned from a previous call to
    #   `ListBuildBatchesForProject`. This specifies the next item to return.
    #   To return the beginning of the list, exclude this parameter.
    #
    # @return [Types::ListBuildBatchesForProjectOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListBuildBatchesForProjectOutput#ids #ids} => Array&lt;String&gt;
    #   * {Types::ListBuildBatchesForProjectOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_build_batches_for_project({
    #     project_name: "NonEmptyString",
    #     filter: {
    #       status: "SUCCEEDED", # accepts SUCCEEDED, FAILED, FAULT, TIMED_OUT, IN_PROGRESS, STOPPED
    #     },
    #     max_results: 1,
    #     sort_order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.ids #=> Array
    #   resp.ids[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/ListBuildBatchesForProject AWS API Documentation
    #
    # @overload list_build_batches_for_project(params = {})
    # @param [Hash] params ({})
    def list_build_batches_for_project(params = {}, options = {})
      req = build_request(:list_build_batches_for_project, params)
      req.send_request(options)
    end

    # Gets a list of build IDs, with each build ID representing a single
    # build.
    #
    # @option params [String] :sort_order
    #   The order to list build IDs. Valid values include:
    #
    #   * `ASCENDING`: List the build IDs in ascending order by build ID.
    #
    #   * `DESCENDING`: List the build IDs in descending order by build ID.
    #
    # @option params [String] :next_token
    #   During a previous call, if there are more than 100 items in the list,
    #   only the first 100 items are returned, along with a unique string
    #   called a *nextToken*. To get the next batch of items in the list, call
    #   this operation again, adding the next token to the call. To get all of
    #   the items in the list, keep calling this operation with each
    #   subsequent next token that is returned, until no more next tokens are
    #   returned.
    #
    # @return [Types::ListBuildsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListBuildsOutput#ids #ids} => Array&lt;String&gt;
    #   * {Types::ListBuildsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_builds({
    #     sort_order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.ids #=> Array
    #   resp.ids[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/ListBuilds AWS API Documentation
    #
    # @overload list_builds(params = {})
    # @param [Hash] params ({})
    def list_builds(params = {}, options = {})
      req = build_request(:list_builds, params)
      req.send_request(options)
    end

    # Gets a list of build identifiers for the specified build project, with
    # each build identifier representing a single build.
    #
    # @option params [required, String] :project_name
    #   The name of the CodeBuild project.
    #
    # @option params [String] :sort_order
    #   The order to sort the results in. The results are sorted by build
    #   number, not the build identifier. If this is not specified, the
    #   results are sorted in descending order.
    #
    #   Valid values include:
    #
    #   * `ASCENDING`: List the build identifiers in ascending order, by build
    #     number.
    #
    #   * `DESCENDING`: List the build identifiers in descending order, by
    #     build number.
    #
    #   If the project has more than 100 builds, setting the sort order will
    #   result in an error.
    #
    # @option params [String] :next_token
    #   During a previous call, if there are more than 100 items in the list,
    #   only the first 100 items are returned, along with a unique string
    #   called a *nextToken*. To get the next batch of items in the list, call
    #   this operation again, adding the next token to the call. To get all of
    #   the items in the list, keep calling this operation with each
    #   subsequent next token that is returned, until no more next tokens are
    #   returned.
    #
    # @return [Types::ListBuildsForProjectOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListBuildsForProjectOutput#ids #ids} => Array&lt;String&gt;
    #   * {Types::ListBuildsForProjectOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_builds_for_project({
    #     project_name: "NonEmptyString", # required
    #     sort_order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.ids #=> Array
    #   resp.ids[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/ListBuildsForProject AWS API Documentation
    #
    # @overload list_builds_for_project(params = {})
    # @param [Hash] params ({})
    def list_builds_for_project(params = {}, options = {})
      req = build_request(:list_builds_for_project, params)
      req.send_request(options)
    end

    # Gets a list of command executions for a sandbox.
    #
    # @option params [required, String] :sandbox_id
    #   A `sandboxId` or `sandboxArn`.
    #
    # @option params [Integer] :max_results
    #   The maximum number of sandbox records to be retrieved.
    #
    # @option params [String] :sort_order
    #   The order in which sandbox records should be retrieved.
    #
    # @option params [String] :next_token
    #   The next token, if any, to get paginated results. You will get this
    #   value from previous execution of list sandboxes.
    #
    # @return [Types::ListCommandExecutionsForSandboxOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListCommandExecutionsForSandboxOutput#command_executions #command_executions} => Array&lt;Types::CommandExecution&gt;
    #   * {Types::ListCommandExecutionsForSandboxOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_command_executions_for_sandbox({
    #     sandbox_id: "NonEmptyString", # required
    #     max_results: 1,
    #     sort_order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #     next_token: "SensitiveString",
    #   })
    #
    # @example Response structure
    #
    #   resp.command_executions #=> Array
    #   resp.command_executions[0].id #=> String
    #   resp.command_executions[0].sandbox_id #=> String
    #   resp.command_executions[0].submit_time #=> Time
    #   resp.command_executions[0].start_time #=> Time
    #   resp.command_executions[0].end_time #=> Time
    #   resp.command_executions[0].status #=> String
    #   resp.command_executions[0].command #=> String
    #   resp.command_executions[0].type #=> String, one of "SHELL"
    #   resp.command_executions[0].exit_code #=> String
    #   resp.command_executions[0].standard_output_content #=> String
    #   resp.command_executions[0].standard_err_content #=> String
    #   resp.command_executions[0].logs.group_name #=> String
    #   resp.command_executions[0].logs.stream_name #=> String
    #   resp.command_executions[0].logs.deep_link #=> String
    #   resp.command_executions[0].logs.s3_deep_link #=> String
    #   resp.command_executions[0].logs.cloud_watch_logs_arn #=> String
    #   resp.command_executions[0].logs.s3_logs_arn #=> String
    #   resp.command_executions[0].logs.cloud_watch_logs.status #=> String, one of "ENABLED", "DISABLED"
    #   resp.command_executions[0].logs.cloud_watch_logs.group_name #=> String
    #   resp.command_executions[0].logs.cloud_watch_logs.stream_name #=> String
    #   resp.command_executions[0].logs.s3_logs.status #=> String, one of "ENABLED", "DISABLED"
    #   resp.command_executions[0].logs.s3_logs.location #=> String
    #   resp.command_executions[0].logs.s3_logs.encryption_disabled #=> Boolean
    #   resp.command_executions[0].logs.s3_logs.bucket_owner_access #=> String, one of "NONE", "READ_ONLY", "FULL"
    #   resp.command_executions[0].sandbox_arn #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/ListCommandExecutionsForSandbox AWS API Documentation
    #
    # @overload list_command_executions_for_sandbox(params = {})
    # @param [Hash] params ({})
    def list_command_executions_for_sandbox(params = {}, options = {})
      req = build_request(:list_command_executions_for_sandbox, params)
      req.send_request(options)
    end

    # Gets information about Docker images that are managed by CodeBuild.
    #
    # @return [Types::ListCuratedEnvironmentImagesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListCuratedEnvironmentImagesOutput#platforms #platforms} => Array&lt;Types::EnvironmentPlatform&gt;
    #
    # @example Response structure
    #
    #   resp.platforms #=> Array
    #   resp.platforms[0].platform #=> String, one of "DEBIAN", "AMAZON_LINUX", "UBUNTU", "WINDOWS_SERVER"
    #   resp.platforms[0].languages #=> Array
    #   resp.platforms[0].languages[0].language #=> String, one of "JAVA", "PYTHON", "NODE_JS", "RUBY", "GOLANG", "DOCKER", "ANDROID", "DOTNET", "BASE", "PHP"
    #   resp.platforms[0].languages[0].images #=> Array
    #   resp.platforms[0].languages[0].images[0].name #=> String
    #   resp.platforms[0].languages[0].images[0].description #=> String
    #   resp.platforms[0].languages[0].images[0].versions #=> Array
    #   resp.platforms[0].languages[0].images[0].versions[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/ListCuratedEnvironmentImages AWS API Documentation
    #
    # @overload list_curated_environment_images(params = {})
    # @param [Hash] params ({})
    def list_curated_environment_images(params = {}, options = {})
      req = build_request(:list_curated_environment_images, params)
      req.send_request(options)
    end

    # Gets a list of compute fleet names with each compute fleet name
    # representing a single compute fleet.
    #
    # @option params [String] :next_token
    #   During a previous call, if there are more than 100 items in the list,
    #   only the first 100 items are returned, along with a unique string
    #   called a *nextToken*. To get the next batch of items in the list, call
    #   this operation again, adding the next token to the call. To get all of
    #   the items in the list, keep calling this operation with each
    #   subsequent next token that is returned, until no more next tokens are
    #   returned.
    #
    # @option params [Integer] :max_results
    #   The maximum number of paginated compute fleets returned per response.
    #   Use `nextToken` to iterate pages in the list of returned compute
    #   fleets.
    #
    # @option params [String] :sort_order
    #   The order in which to list compute fleets. Valid values include:
    #
    #   * `ASCENDING`: List in ascending order.
    #
    #   * `DESCENDING`: List in descending order.
    #
    #   Use `sortBy` to specify the criterion to be used to list compute fleet
    #   names.
    #
    # @option params [String] :sort_by
    #   The criterion to be used to list compute fleet names. Valid values
    #   include:
    #
    #   * `CREATED_TIME`: List based on when each compute fleet was created.
    #
    #   * `LAST_MODIFIED_TIME`: List based on when information about each
    #     compute fleet was last changed.
    #
    #   * `NAME`: List based on each compute fleet's name.
    #
    #   Use `sortOrder` to specify in what order to list the compute fleet
    #   names based on the preceding criteria.
    #
    # @return [Types::ListFleetsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListFleetsOutput#next_token #next_token} => String
    #   * {Types::ListFleetsOutput#fleets #fleets} => Array&lt;String&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_fleets({
    #     next_token: "SensitiveString",
    #     max_results: 1,
    #     sort_order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #     sort_by: "NAME", # accepts NAME, CREATED_TIME, LAST_MODIFIED_TIME
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.fleets #=> Array
    #   resp.fleets[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/ListFleets AWS API Documentation
    #
    # @overload list_fleets(params = {})
    # @param [Hash] params ({})
    def list_fleets(params = {}, options = {})
      req = build_request(:list_fleets, params)
      req.send_request(options)
    end

    # Gets a list of build project names, with each build project name
    # representing a single build project.
    #
    # @option params [String] :sort_by
    #   The criterion to be used to list build project names. Valid values
    #   include:
    #
    #   * `CREATED_TIME`: List based on when each build project was created.
    #
    #   * `LAST_MODIFIED_TIME`: List based on when information about each
    #     build project was last changed.
    #
    #   * `NAME`: List based on each build project's name.
    #
    #   Use `sortOrder` to specify in what order to list the build project
    #   names based on the preceding criteria.
    #
    # @option params [String] :sort_order
    #   The order in which to list build projects. Valid values include:
    #
    #   * `ASCENDING`: List in ascending order.
    #
    #   * `DESCENDING`: List in descending order.
    #
    #   Use `sortBy` to specify the criterion to be used to list build project
    #   names.
    #
    # @option params [String] :next_token
    #   During a previous call, if there are more than 100 items in the list,
    #   only the first 100 items are returned, along with a unique string
    #   called a *nextToken*. To get the next batch of items in the list, call
    #   this operation again, adding the next token to the call. To get all of
    #   the items in the list, keep calling this operation with each
    #   subsequent next token that is returned, until no more next tokens are
    #   returned.
    #
    # @return [Types::ListProjectsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListProjectsOutput#next_token #next_token} => String
    #   * {Types::ListProjectsOutput#projects #projects} => Array&lt;String&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_projects({
    #     sort_by: "NAME", # accepts NAME, CREATED_TIME, LAST_MODIFIED_TIME
    #     sort_order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #     next_token: "NonEmptyString",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.projects #=> Array
    #   resp.projects[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/ListProjects AWS API Documentation
    #
    # @overload list_projects(params = {})
    # @param [Hash] params ({})
    def list_projects(params = {}, options = {})
      req = build_request(:list_projects, params)
      req.send_request(options)
    end

    # Gets a list ARNs for the report groups in the current Amazon Web
    # Services account.
    #
    # @option params [String] :sort_order
    #   Used to specify the order to sort the list of returned report groups.
    #   Valid values are `ASCENDING` and `DESCENDING`.
    #
    # @option params [String] :sort_by
    #   The criterion to be used to list build report groups. Valid values
    #   include:
    #
    #   * `CREATED_TIME`: List based on when each report group was created.
    #
    #   * `LAST_MODIFIED_TIME`: List based on when each report group was last
    #     changed.
    #
    #   * `NAME`: List based on each report group's name.
    #
    # @option params [String] :next_token
    #   During a previous call, the maximum number of items that can be
    #   returned is the value specified in `maxResults`. If there more items
    #   in the list, then a unique string called a *nextToken* is returned. To
    #   get the next batch of items in the list, call this operation again,
    #   adding the next token to the call. To get all of the items in the
    #   list, keep calling this operation with each subsequent next token that
    #   is returned, until no more next tokens are returned.
    #
    # @option params [Integer] :max_results
    #   The maximum number of paginated report groups returned per response.
    #   Use `nextToken` to iterate pages in the list of returned `ReportGroup`
    #   objects. The default value is 100.
    #
    # @return [Types::ListReportGroupsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListReportGroupsOutput#next_token #next_token} => String
    #   * {Types::ListReportGroupsOutput#report_groups #report_groups} => Array&lt;String&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_report_groups({
    #     sort_order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #     sort_by: "NAME", # accepts NAME, CREATED_TIME, LAST_MODIFIED_TIME
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.report_groups #=> Array
    #   resp.report_groups[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/ListReportGroups AWS API Documentation
    #
    # @overload list_report_groups(params = {})
    # @param [Hash] params ({})
    def list_report_groups(params = {}, options = {})
      req = build_request(:list_report_groups, params)
      req.send_request(options)
    end

    # Returns a list of ARNs for the reports in the current Amazon Web
    # Services account.
    #
    # @option params [String] :sort_order
    #   Specifies the sort order for the list of returned reports. Valid
    #   values are:
    #
    #   * `ASCENDING`: return reports in chronological order based on their
    #     creation date.
    #
    #   * `DESCENDING`: return reports in the reverse chronological order
    #     based on their creation date.
    #
    # @option params [String] :next_token
    #   During a previous call, the maximum number of items that can be
    #   returned is the value specified in `maxResults`. If there more items
    #   in the list, then a unique string called a *nextToken* is returned. To
    #   get the next batch of items in the list, call this operation again,
    #   adding the next token to the call. To get all of the items in the
    #   list, keep calling this operation with each subsequent next token that
    #   is returned, until no more next tokens are returned.
    #
    # @option params [Integer] :max_results
    #   The maximum number of paginated reports returned per response. Use
    #   `nextToken` to iterate pages in the list of returned `Report` objects.
    #   The default value is 100.
    #
    # @option params [Types::ReportFilter] :filter
    #   A `ReportFilter` object used to filter the returned reports.
    #
    # @return [Types::ListReportsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListReportsOutput#next_token #next_token} => String
    #   * {Types::ListReportsOutput#reports #reports} => Array&lt;String&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_reports({
    #     sort_order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #     next_token: "String",
    #     max_results: 1,
    #     filter: {
    #       status: "GENERATING", # accepts GENERATING, SUCCEEDED, FAILED, INCOMPLETE, DELETING
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.reports #=> Array
    #   resp.reports[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/ListReports AWS API Documentation
    #
    # @overload list_reports(params = {})
    # @param [Hash] params ({})
    def list_reports(params = {}, options = {})
      req = build_request(:list_reports, params)
      req.send_request(options)
    end

    # Returns a list of ARNs for the reports that belong to a `ReportGroup`.
    #
    # @option params [required, String] :report_group_arn
    #   The ARN of the report group for which you want to return report ARNs.
    #
    # @option params [String] :next_token
    #   During a previous call, the maximum number of items that can be
    #   returned is the value specified in `maxResults`. If there more items
    #   in the list, then a unique string called a *nextToken* is returned. To
    #   get the next batch of items in the list, call this operation again,
    #   adding the next token to the call. To get all of the items in the
    #   list, keep calling this operation with each subsequent next token that
    #   is returned, until no more next tokens are returned.
    #
    # @option params [String] :sort_order
    #   Use to specify whether the results are returned in ascending or
    #   descending order.
    #
    # @option params [Integer] :max_results
    #   The maximum number of paginated reports in this report group returned
    #   per response. Use `nextToken` to iterate pages in the list of returned
    #   `Report` objects. The default value is 100.
    #
    # @option params [Types::ReportFilter] :filter
    #   A `ReportFilter` object used to filter the returned reports.
    #
    # @return [Types::ListReportsForReportGroupOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListReportsForReportGroupOutput#next_token #next_token} => String
    #   * {Types::ListReportsForReportGroupOutput#reports #reports} => Array&lt;String&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_reports_for_report_group({
    #     report_group_arn: "String", # required
    #     next_token: "String",
    #     sort_order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #     max_results: 1,
    #     filter: {
    #       status: "GENERATING", # accepts GENERATING, SUCCEEDED, FAILED, INCOMPLETE, DELETING
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.reports #=> Array
    #   resp.reports[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/ListReportsForReportGroup AWS API Documentation
    #
    # @overload list_reports_for_report_group(params = {})
    # @param [Hash] params ({})
    def list_reports_for_report_group(params = {}, options = {})
      req = build_request(:list_reports_for_report_group, params)
      req.send_request(options)
    end

    # Gets a list of sandboxes.
    #
    # @option params [Integer] :max_results
    #   The maximum number of sandbox records to be retrieved.
    #
    # @option params [String] :sort_order
    #   The order in which sandbox records should be retrieved.
    #
    # @option params [String] :next_token
    #   The next token, if any, to get paginated results. You will get this
    #   value from previous execution of list sandboxes.
    #
    # @return [Types::ListSandboxesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSandboxesOutput#ids #ids} => Array&lt;String&gt;
    #   * {Types::ListSandboxesOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_sandboxes({
    #     max_results: 1,
    #     sort_order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.ids #=> Array
    #   resp.ids[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/ListSandboxes AWS API Documentation
    #
    # @overload list_sandboxes(params = {})
    # @param [Hash] params ({})
    def list_sandboxes(params = {}, options = {})
      req = build_request(:list_sandboxes, params)
      req.send_request(options)
    end

    # Gets a list of sandboxes for a given project.
    #
    # @option params [required, String] :project_name
    #   The CodeBuild project name.
    #
    # @option params [Integer] :max_results
    #   The maximum number of sandbox records to be retrieved.
    #
    # @option params [String] :sort_order
    #   The order in which sandbox records should be retrieved.
    #
    # @option params [String] :next_token
    #   The next token, if any, to get paginated results. You will get this
    #   value from previous execution of list sandboxes.
    #
    # @return [Types::ListSandboxesForProjectOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSandboxesForProjectOutput#ids #ids} => Array&lt;String&gt;
    #   * {Types::ListSandboxesForProjectOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_sandboxes_for_project({
    #     project_name: "NonEmptyString", # required
    #     max_results: 1,
    #     sort_order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #     next_token: "SensitiveString",
    #   })
    #
    # @example Response structure
    #
    #   resp.ids #=> Array
    #   resp.ids[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/ListSandboxesForProject AWS API Documentation
    #
    # @overload list_sandboxes_for_project(params = {})
    # @param [Hash] params ({})
    def list_sandboxes_for_project(params = {}, options = {})
      req = build_request(:list_sandboxes_for_project, params)
      req.send_request(options)
    end

    # Gets a list of projects that are shared with other Amazon Web Services
    # accounts or users.
    #
    # @option params [String] :sort_by
    #   The criterion to be used to list build projects shared with the
    #   current Amazon Web Services account or user. Valid values include:
    #
    #   * `ARN`: List based on the ARN.
    #
    #   * `MODIFIED_TIME`: List based on when information about the shared
    #     project was last changed.
    #
    # @option params [String] :sort_order
    #   The order in which to list shared build projects. Valid values
    #   include:
    #
    #   * `ASCENDING`: List in ascending order.
    #
    #   * `DESCENDING`: List in descending order.
    #
    # @option params [Integer] :max_results
    #   The maximum number of paginated shared build projects returned per
    #   response. Use `nextToken` to iterate pages in the list of returned
    #   `Project` objects. The default value is 100.
    #
    # @option params [String] :next_token
    #   During a previous call, the maximum number of items that can be
    #   returned is the value specified in `maxResults`. If there more items
    #   in the list, then a unique string called a *nextToken* is returned. To
    #   get the next batch of items in the list, call this operation again,
    #   adding the next token to the call. To get all of the items in the
    #   list, keep calling this operation with each subsequent next token that
    #   is returned, until no more next tokens are returned.
    #
    # @return [Types::ListSharedProjectsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSharedProjectsOutput#next_token #next_token} => String
    #   * {Types::ListSharedProjectsOutput#projects #projects} => Array&lt;String&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_shared_projects({
    #     sort_by: "ARN", # accepts ARN, MODIFIED_TIME
    #     sort_order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #     max_results: 1,
    #     next_token: "NonEmptyString",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.projects #=> Array
    #   resp.projects[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/ListSharedProjects AWS API Documentation
    #
    # @overload list_shared_projects(params = {})
    # @param [Hash] params ({})
    def list_shared_projects(params = {}, options = {})
      req = build_request(:list_shared_projects, params)
      req.send_request(options)
    end

    # Gets a list of report groups that are shared with other Amazon Web
    # Services accounts or users.
    #
    # @option params [String] :sort_order
    #   The order in which to list shared report groups. Valid values include:
    #
    #   * `ASCENDING`: List in ascending order.
    #
    #   * `DESCENDING`: List in descending order.
    #
    # @option params [String] :sort_by
    #   The criterion to be used to list report groups shared with the current
    #   Amazon Web Services account or user. Valid values include:
    #
    #   * `ARN`: List based on the ARN.
    #
    #   * `MODIFIED_TIME`: List based on when information about the shared
    #     report group was last changed.
    #
    # @option params [String] :next_token
    #   During a previous call, the maximum number of items that can be
    #   returned is the value specified in `maxResults`. If there more items
    #   in the list, then a unique string called a *nextToken* is returned. To
    #   get the next batch of items in the list, call this operation again,
    #   adding the next token to the call. To get all of the items in the
    #   list, keep calling this operation with each subsequent next token that
    #   is returned, until no more next tokens are returned.
    #
    # @option params [Integer] :max_results
    #   The maximum number of paginated shared report groups per response. Use
    #   `nextToken` to iterate pages in the list of returned `ReportGroup`
    #   objects. The default value is 100.
    #
    # @return [Types::ListSharedReportGroupsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSharedReportGroupsOutput#next_token #next_token} => String
    #   * {Types::ListSharedReportGroupsOutput#report_groups #report_groups} => Array&lt;String&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_shared_report_groups({
    #     sort_order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #     sort_by: "ARN", # accepts ARN, MODIFIED_TIME
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.report_groups #=> Array
    #   resp.report_groups[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/ListSharedReportGroups AWS API Documentation
    #
    # @overload list_shared_report_groups(params = {})
    # @param [Hash] params ({})
    def list_shared_report_groups(params = {}, options = {})
      req = build_request(:list_shared_report_groups, params)
      req.send_request(options)
    end

    # Returns a list of `SourceCredentialsInfo` objects.
    #
    # @return [Types::ListSourceCredentialsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSourceCredentialsOutput#source_credentials_infos #source_credentials_infos} => Array&lt;Types::SourceCredentialsInfo&gt;
    #
    # @example Response structure
    #
    #   resp.source_credentials_infos #=> Array
    #   resp.source_credentials_infos[0].arn #=> String
    #   resp.source_credentials_infos[0].server_type #=> String, one of "GITHUB", "BITBUCKET", "GITHUB_ENTERPRISE", "GITLAB", "GITLAB_SELF_MANAGED"
    #   resp.source_credentials_infos[0].auth_type #=> String, one of "OAUTH", "BASIC_AUTH", "PERSONAL_ACCESS_TOKEN", "CODECONNECTIONS", "SECRETS_MANAGER"
    #   resp.source_credentials_infos[0].resource #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/ListSourceCredentials AWS API Documentation
    #
    # @overload list_source_credentials(params = {})
    # @param [Hash] params ({})
    def list_source_credentials(params = {}, options = {})
      req = build_request(:list_source_credentials, params)
      req.send_request(options)
    end

    # Stores a resource policy for the ARN of a `Project` or `ReportGroup`
    # object.
    #
    # @option params [required, String] :policy
    #   A JSON-formatted resource policy. For more information, see [Sharing a
    #   Project][1] and [Sharing a Report Group][2] in the *CodeBuild User
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codebuild/latest/userguide/project-sharing.html#project-sharing-share
    #   [2]: https://docs.aws.amazon.com/codebuild/latest/userguide/report-groups-sharing.html#report-groups-sharing-share
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the `Project` or `ReportGroup` resource you want to
    #   associate with a resource policy.
    #
    # @return [Types::PutResourcePolicyOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutResourcePolicyOutput#resource_arn #resource_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_resource_policy({
    #     policy: "NonEmptyString", # required
    #     resource_arn: "NonEmptyString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/PutResourcePolicy AWS API Documentation
    #
    # @overload put_resource_policy(params = {})
    # @param [Hash] params ({})
    def put_resource_policy(params = {}, options = {})
      req = build_request(:put_resource_policy, params)
      req.send_request(options)
    end

    # Restarts a build.
    #
    # @option params [String] :id
    #   Specifies the identifier of the build to restart.
    #
    # @option params [String] :idempotency_token
    #   A unique, case sensitive identifier you provide to ensure the
    #   idempotency of the `RetryBuild` request. The token is included in the
    #   `RetryBuild` request and is valid for five minutes. If you repeat the
    #   `RetryBuild` request with the same token, but change a parameter,
    #   CodeBuild returns a parameter mismatch error.
    #
    # @return [Types::RetryBuildOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RetryBuildOutput#build #build} => Types::Build
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.retry_build({
    #     id: "NonEmptyString",
    #     idempotency_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.build.id #=> String
    #   resp.build.arn #=> String
    #   resp.build.build_number #=> Integer
    #   resp.build.start_time #=> Time
    #   resp.build.end_time #=> Time
    #   resp.build.current_phase #=> String
    #   resp.build.build_status #=> String, one of "SUCCEEDED", "FAILED", "FAULT", "TIMED_OUT", "IN_PROGRESS", "STOPPED"
    #   resp.build.source_version #=> String
    #   resp.build.resolved_source_version #=> String
    #   resp.build.project_name #=> String
    #   resp.build.phases #=> Array
    #   resp.build.phases[0].phase_type #=> String, one of "SUBMITTED", "QUEUED", "PROVISIONING", "DOWNLOAD_SOURCE", "INSTALL", "PRE_BUILD", "BUILD", "POST_BUILD", "UPLOAD_ARTIFACTS", "FINALIZING", "COMPLETED"
    #   resp.build.phases[0].phase_status #=> String, one of "SUCCEEDED", "FAILED", "FAULT", "TIMED_OUT", "IN_PROGRESS", "STOPPED"
    #   resp.build.phases[0].start_time #=> Time
    #   resp.build.phases[0].end_time #=> Time
    #   resp.build.phases[0].duration_in_seconds #=> Integer
    #   resp.build.phases[0].contexts #=> Array
    #   resp.build.phases[0].contexts[0].status_code #=> String
    #   resp.build.phases[0].contexts[0].message #=> String
    #   resp.build.source.type #=> String, one of "CODECOMMIT", "CODEPIPELINE", "GITHUB", "GITLAB", "GITLAB_SELF_MANAGED", "S3", "BITBUCKET", "GITHUB_ENTERPRISE", "NO_SOURCE"
    #   resp.build.source.location #=> String
    #   resp.build.source.git_clone_depth #=> Integer
    #   resp.build.source.git_submodules_config.fetch_submodules #=> Boolean
    #   resp.build.source.buildspec #=> String
    #   resp.build.source.auth.type #=> String, one of "OAUTH", "CODECONNECTIONS", "SECRETS_MANAGER"
    #   resp.build.source.auth.resource #=> String
    #   resp.build.source.report_build_status #=> Boolean
    #   resp.build.source.build_status_config.context #=> String
    #   resp.build.source.build_status_config.target_url #=> String
    #   resp.build.source.insecure_ssl #=> Boolean
    #   resp.build.source.source_identifier #=> String
    #   resp.build.secondary_sources #=> Array
    #   resp.build.secondary_sources[0].type #=> String, one of "CODECOMMIT", "CODEPIPELINE", "GITHUB", "GITLAB", "GITLAB_SELF_MANAGED", "S3", "BITBUCKET", "GITHUB_ENTERPRISE", "NO_SOURCE"
    #   resp.build.secondary_sources[0].location #=> String
    #   resp.build.secondary_sources[0].git_clone_depth #=> Integer
    #   resp.build.secondary_sources[0].git_submodules_config.fetch_submodules #=> Boolean
    #   resp.build.secondary_sources[0].buildspec #=> String
    #   resp.build.secondary_sources[0].auth.type #=> String, one of "OAUTH", "CODECONNECTIONS", "SECRETS_MANAGER"
    #   resp.build.secondary_sources[0].auth.resource #=> String
    #   resp.build.secondary_sources[0].report_build_status #=> Boolean
    #   resp.build.secondary_sources[0].build_status_config.context #=> String
    #   resp.build.secondary_sources[0].build_status_config.target_url #=> String
    #   resp.build.secondary_sources[0].insecure_ssl #=> Boolean
    #   resp.build.secondary_sources[0].source_identifier #=> String
    #   resp.build.secondary_source_versions #=> Array
    #   resp.build.secondary_source_versions[0].source_identifier #=> String
    #   resp.build.secondary_source_versions[0].source_version #=> String
    #   resp.build.artifacts.location #=> String
    #   resp.build.artifacts.sha256sum #=> String
    #   resp.build.artifacts.md5sum #=> String
    #   resp.build.artifacts.override_artifact_name #=> Boolean
    #   resp.build.artifacts.encryption_disabled #=> Boolean
    #   resp.build.artifacts.artifact_identifier #=> String
    #   resp.build.artifacts.bucket_owner_access #=> String, one of "NONE", "READ_ONLY", "FULL"
    #   resp.build.secondary_artifacts #=> Array
    #   resp.build.secondary_artifacts[0].location #=> String
    #   resp.build.secondary_artifacts[0].sha256sum #=> String
    #   resp.build.secondary_artifacts[0].md5sum #=> String
    #   resp.build.secondary_artifacts[0].override_artifact_name #=> Boolean
    #   resp.build.secondary_artifacts[0].encryption_disabled #=> Boolean
    #   resp.build.secondary_artifacts[0].artifact_identifier #=> String
    #   resp.build.secondary_artifacts[0].bucket_owner_access #=> String, one of "NONE", "READ_ONLY", "FULL"
    #   resp.build.cache.type #=> String, one of "NO_CACHE", "S3", "LOCAL"
    #   resp.build.cache.location #=> String
    #   resp.build.cache.modes #=> Array
    #   resp.build.cache.modes[0] #=> String, one of "LOCAL_DOCKER_LAYER_CACHE", "LOCAL_SOURCE_CACHE", "LOCAL_CUSTOM_CACHE"
    #   resp.build.cache.cache_namespace #=> String
    #   resp.build.environment.type #=> String, one of "WINDOWS_CONTAINER", "LINUX_CONTAINER", "LINUX_GPU_CONTAINER", "ARM_CONTAINER", "WINDOWS_SERVER_2019_CONTAINER", "WINDOWS_SERVER_2022_CONTAINER", "LINUX_LAMBDA_CONTAINER", "ARM_LAMBDA_CONTAINER", "LINUX_EC2", "ARM_EC2", "WINDOWS_EC2", "MAC_ARM"
    #   resp.build.environment.image #=> String
    #   resp.build.environment.compute_type #=> String, one of "BUILD_GENERAL1_SMALL", "BUILD_GENERAL1_MEDIUM", "BUILD_GENERAL1_LARGE", "BUILD_GENERAL1_XLARGE", "BUILD_GENERAL1_2XLARGE", "BUILD_LAMBDA_1GB", "BUILD_LAMBDA_2GB", "BUILD_LAMBDA_4GB", "BUILD_LAMBDA_8GB", "BUILD_LAMBDA_10GB", "ATTRIBUTE_BASED_COMPUTE", "CUSTOM_INSTANCE_TYPE"
    #   resp.build.environment.compute_configuration.v_cpu #=> Integer
    #   resp.build.environment.compute_configuration.memory #=> Integer
    #   resp.build.environment.compute_configuration.disk #=> Integer
    #   resp.build.environment.compute_configuration.machine_type #=> String, one of "GENERAL", "NVME"
    #   resp.build.environment.compute_configuration.instance_type #=> String
    #   resp.build.environment.fleet.fleet_arn #=> String
    #   resp.build.environment.environment_variables #=> Array
    #   resp.build.environment.environment_variables[0].name #=> String
    #   resp.build.environment.environment_variables[0].value #=> String
    #   resp.build.environment.environment_variables[0].type #=> String, one of "PLAINTEXT", "PARAMETER_STORE", "SECRETS_MANAGER"
    #   resp.build.environment.privileged_mode #=> Boolean
    #   resp.build.environment.certificate #=> String
    #   resp.build.environment.registry_credential.credential #=> String
    #   resp.build.environment.registry_credential.credential_provider #=> String, one of "SECRETS_MANAGER"
    #   resp.build.environment.image_pull_credentials_type #=> String, one of "CODEBUILD", "SERVICE_ROLE"
    #   resp.build.environment.docker_server.compute_type #=> String, one of "BUILD_GENERAL1_SMALL", "BUILD_GENERAL1_MEDIUM", "BUILD_GENERAL1_LARGE", "BUILD_GENERAL1_XLARGE", "BUILD_GENERAL1_2XLARGE", "BUILD_LAMBDA_1GB", "BUILD_LAMBDA_2GB", "BUILD_LAMBDA_4GB", "BUILD_LAMBDA_8GB", "BUILD_LAMBDA_10GB", "ATTRIBUTE_BASED_COMPUTE", "CUSTOM_INSTANCE_TYPE"
    #   resp.build.environment.docker_server.security_group_ids #=> Array
    #   resp.build.environment.docker_server.security_group_ids[0] #=> String
    #   resp.build.environment.docker_server.status.status #=> String
    #   resp.build.environment.docker_server.status.message #=> String
    #   resp.build.service_role #=> String
    #   resp.build.logs.group_name #=> String
    #   resp.build.logs.stream_name #=> String
    #   resp.build.logs.deep_link #=> String
    #   resp.build.logs.s3_deep_link #=> String
    #   resp.build.logs.cloud_watch_logs_arn #=> String
    #   resp.build.logs.s3_logs_arn #=> String
    #   resp.build.logs.cloud_watch_logs.status #=> String, one of "ENABLED", "DISABLED"
    #   resp.build.logs.cloud_watch_logs.group_name #=> String
    #   resp.build.logs.cloud_watch_logs.stream_name #=> String
    #   resp.build.logs.s3_logs.status #=> String, one of "ENABLED", "DISABLED"
    #   resp.build.logs.s3_logs.location #=> String
    #   resp.build.logs.s3_logs.encryption_disabled #=> Boolean
    #   resp.build.logs.s3_logs.bucket_owner_access #=> String, one of "NONE", "READ_ONLY", "FULL"
    #   resp.build.timeout_in_minutes #=> Integer
    #   resp.build.queued_timeout_in_minutes #=> Integer
    #   resp.build.build_complete #=> Boolean
    #   resp.build.initiator #=> String
    #   resp.build.vpc_config.vpc_id #=> String
    #   resp.build.vpc_config.subnets #=> Array
    #   resp.build.vpc_config.subnets[0] #=> String
    #   resp.build.vpc_config.security_group_ids #=> Array
    #   resp.build.vpc_config.security_group_ids[0] #=> String
    #   resp.build.network_interface.subnet_id #=> String
    #   resp.build.network_interface.network_interface_id #=> String
    #   resp.build.encryption_key #=> String
    #   resp.build.exported_environment_variables #=> Array
    #   resp.build.exported_environment_variables[0].name #=> String
    #   resp.build.exported_environment_variables[0].value #=> String
    #   resp.build.report_arns #=> Array
    #   resp.build.report_arns[0] #=> String
    #   resp.build.file_system_locations #=> Array
    #   resp.build.file_system_locations[0].type #=> String, one of "EFS"
    #   resp.build.file_system_locations[0].location #=> String
    #   resp.build.file_system_locations[0].mount_point #=> String
    #   resp.build.file_system_locations[0].identifier #=> String
    #   resp.build.file_system_locations[0].mount_options #=> String
    #   resp.build.debug_session.session_enabled #=> Boolean
    #   resp.build.debug_session.session_target #=> String
    #   resp.build.build_batch_arn #=> String
    #   resp.build.auto_retry_config.auto_retry_limit #=> Integer
    #   resp.build.auto_retry_config.auto_retry_number #=> Integer
    #   resp.build.auto_retry_config.next_auto_retry #=> String
    #   resp.build.auto_retry_config.previous_auto_retry #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/RetryBuild AWS API Documentation
    #
    # @overload retry_build(params = {})
    # @param [Hash] params ({})
    def retry_build(params = {}, options = {})
      req = build_request(:retry_build, params)
      req.send_request(options)
    end

    # Restarts a failed batch build. Only batch builds that have failed can
    # be retried.
    #
    # @option params [String] :id
    #   Specifies the identifier of the batch build to restart.
    #
    # @option params [String] :idempotency_token
    #   A unique, case sensitive identifier you provide to ensure the
    #   idempotency of the `RetryBuildBatch` request. The token is included in
    #   the `RetryBuildBatch` request and is valid for five minutes. If you
    #   repeat the `RetryBuildBatch` request with the same token, but change a
    #   parameter, CodeBuild returns a parameter mismatch error.
    #
    # @option params [String] :retry_type
    #   Specifies the type of retry to perform.
    #
    # @return [Types::RetryBuildBatchOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RetryBuildBatchOutput#build_batch #build_batch} => Types::BuildBatch
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.retry_build_batch({
    #     id: "NonEmptyString",
    #     idempotency_token: "String",
    #     retry_type: "RETRY_ALL_BUILDS", # accepts RETRY_ALL_BUILDS, RETRY_FAILED_BUILDS
    #   })
    #
    # @example Response structure
    #
    #   resp.build_batch.id #=> String
    #   resp.build_batch.arn #=> String
    #   resp.build_batch.start_time #=> Time
    #   resp.build_batch.end_time #=> Time
    #   resp.build_batch.current_phase #=> String
    #   resp.build_batch.build_batch_status #=> String, one of "SUCCEEDED", "FAILED", "FAULT", "TIMED_OUT", "IN_PROGRESS", "STOPPED"
    #   resp.build_batch.source_version #=> String
    #   resp.build_batch.resolved_source_version #=> String
    #   resp.build_batch.project_name #=> String
    #   resp.build_batch.phases #=> Array
    #   resp.build_batch.phases[0].phase_type #=> String, one of "SUBMITTED", "DOWNLOAD_BATCHSPEC", "IN_PROGRESS", "COMBINE_ARTIFACTS", "SUCCEEDED", "FAILED", "STOPPED"
    #   resp.build_batch.phases[0].phase_status #=> String, one of "SUCCEEDED", "FAILED", "FAULT", "TIMED_OUT", "IN_PROGRESS", "STOPPED"
    #   resp.build_batch.phases[0].start_time #=> Time
    #   resp.build_batch.phases[0].end_time #=> Time
    #   resp.build_batch.phases[0].duration_in_seconds #=> Integer
    #   resp.build_batch.phases[0].contexts #=> Array
    #   resp.build_batch.phases[0].contexts[0].status_code #=> String
    #   resp.build_batch.phases[0].contexts[0].message #=> String
    #   resp.build_batch.source.type #=> String, one of "CODECOMMIT", "CODEPIPELINE", "GITHUB", "GITLAB", "GITLAB_SELF_MANAGED", "S3", "BITBUCKET", "GITHUB_ENTERPRISE", "NO_SOURCE"
    #   resp.build_batch.source.location #=> String
    #   resp.build_batch.source.git_clone_depth #=> Integer
    #   resp.build_batch.source.git_submodules_config.fetch_submodules #=> Boolean
    #   resp.build_batch.source.buildspec #=> String
    #   resp.build_batch.source.auth.type #=> String, one of "OAUTH", "CODECONNECTIONS", "SECRETS_MANAGER"
    #   resp.build_batch.source.auth.resource #=> String
    #   resp.build_batch.source.report_build_status #=> Boolean
    #   resp.build_batch.source.build_status_config.context #=> String
    #   resp.build_batch.source.build_status_config.target_url #=> String
    #   resp.build_batch.source.insecure_ssl #=> Boolean
    #   resp.build_batch.source.source_identifier #=> String
    #   resp.build_batch.secondary_sources #=> Array
    #   resp.build_batch.secondary_sources[0].type #=> String, one of "CODECOMMIT", "CODEPIPELINE", "GITHUB", "GITLAB", "GITLAB_SELF_MANAGED", "S3", "BITBUCKET", "GITHUB_ENTERPRISE", "NO_SOURCE"
    #   resp.build_batch.secondary_sources[0].location #=> String
    #   resp.build_batch.secondary_sources[0].git_clone_depth #=> Integer
    #   resp.build_batch.secondary_sources[0].git_submodules_config.fetch_submodules #=> Boolean
    #   resp.build_batch.secondary_sources[0].buildspec #=> String
    #   resp.build_batch.secondary_sources[0].auth.type #=> String, one of "OAUTH", "CODECONNECTIONS", "SECRETS_MANAGER"
    #   resp.build_batch.secondary_sources[0].auth.resource #=> String
    #   resp.build_batch.secondary_sources[0].report_build_status #=> Boolean
    #   resp.build_batch.secondary_sources[0].build_status_config.context #=> String
    #   resp.build_batch.secondary_sources[0].build_status_config.target_url #=> String
    #   resp.build_batch.secondary_sources[0].insecure_ssl #=> Boolean
    #   resp.build_batch.secondary_sources[0].source_identifier #=> String
    #   resp.build_batch.secondary_source_versions #=> Array
    #   resp.build_batch.secondary_source_versions[0].source_identifier #=> String
    #   resp.build_batch.secondary_source_versions[0].source_version #=> String
    #   resp.build_batch.artifacts.location #=> String
    #   resp.build_batch.artifacts.sha256sum #=> String
    #   resp.build_batch.artifacts.md5sum #=> String
    #   resp.build_batch.artifacts.override_artifact_name #=> Boolean
    #   resp.build_batch.artifacts.encryption_disabled #=> Boolean
    #   resp.build_batch.artifacts.artifact_identifier #=> String
    #   resp.build_batch.artifacts.bucket_owner_access #=> String, one of "NONE", "READ_ONLY", "FULL"
    #   resp.build_batch.secondary_artifacts #=> Array
    #   resp.build_batch.secondary_artifacts[0].location #=> String
    #   resp.build_batch.secondary_artifacts[0].sha256sum #=> String
    #   resp.build_batch.secondary_artifacts[0].md5sum #=> String
    #   resp.build_batch.secondary_artifacts[0].override_artifact_name #=> Boolean
    #   resp.build_batch.secondary_artifacts[0].encryption_disabled #=> Boolean
    #   resp.build_batch.secondary_artifacts[0].artifact_identifier #=> String
    #   resp.build_batch.secondary_artifacts[0].bucket_owner_access #=> String, one of "NONE", "READ_ONLY", "FULL"
    #   resp.build_batch.cache.type #=> String, one of "NO_CACHE", "S3", "LOCAL"
    #   resp.build_batch.cache.location #=> String
    #   resp.build_batch.cache.modes #=> Array
    #   resp.build_batch.cache.modes[0] #=> String, one of "LOCAL_DOCKER_LAYER_CACHE", "LOCAL_SOURCE_CACHE", "LOCAL_CUSTOM_CACHE"
    #   resp.build_batch.cache.cache_namespace #=> String
    #   resp.build_batch.environment.type #=> String, one of "WINDOWS_CONTAINER", "LINUX_CONTAINER", "LINUX_GPU_CONTAINER", "ARM_CONTAINER", "WINDOWS_SERVER_2019_CONTAINER", "WINDOWS_SERVER_2022_CONTAINER", "LINUX_LAMBDA_CONTAINER", "ARM_LAMBDA_CONTAINER", "LINUX_EC2", "ARM_EC2", "WINDOWS_EC2", "MAC_ARM"
    #   resp.build_batch.environment.image #=> String
    #   resp.build_batch.environment.compute_type #=> String, one of "BUILD_GENERAL1_SMALL", "BUILD_GENERAL1_MEDIUM", "BUILD_GENERAL1_LARGE", "BUILD_GENERAL1_XLARGE", "BUILD_GENERAL1_2XLARGE", "BUILD_LAMBDA_1GB", "BUILD_LAMBDA_2GB", "BUILD_LAMBDA_4GB", "BUILD_LAMBDA_8GB", "BUILD_LAMBDA_10GB", "ATTRIBUTE_BASED_COMPUTE", "CUSTOM_INSTANCE_TYPE"
    #   resp.build_batch.environment.compute_configuration.v_cpu #=> Integer
    #   resp.build_batch.environment.compute_configuration.memory #=> Integer
    #   resp.build_batch.environment.compute_configuration.disk #=> Integer
    #   resp.build_batch.environment.compute_configuration.machine_type #=> String, one of "GENERAL", "NVME"
    #   resp.build_batch.environment.compute_configuration.instance_type #=> String
    #   resp.build_batch.environment.fleet.fleet_arn #=> String
    #   resp.build_batch.environment.environment_variables #=> Array
    #   resp.build_batch.environment.environment_variables[0].name #=> String
    #   resp.build_batch.environment.environment_variables[0].value #=> String
    #   resp.build_batch.environment.environment_variables[0].type #=> String, one of "PLAINTEXT", "PARAMETER_STORE", "SECRETS_MANAGER"
    #   resp.build_batch.environment.privileged_mode #=> Boolean
    #   resp.build_batch.environment.certificate #=> String
    #   resp.build_batch.environment.registry_credential.credential #=> String
    #   resp.build_batch.environment.registry_credential.credential_provider #=> String, one of "SECRETS_MANAGER"
    #   resp.build_batch.environment.image_pull_credentials_type #=> String, one of "CODEBUILD", "SERVICE_ROLE"
    #   resp.build_batch.environment.docker_server.compute_type #=> String, one of "BUILD_GENERAL1_SMALL", "BUILD_GENERAL1_MEDIUM", "BUILD_GENERAL1_LARGE", "BUILD_GENERAL1_XLARGE", "BUILD_GENERAL1_2XLARGE", "BUILD_LAMBDA_1GB", "BUILD_LAMBDA_2GB", "BUILD_LAMBDA_4GB", "BUILD_LAMBDA_8GB", "BUILD_LAMBDA_10GB", "ATTRIBUTE_BASED_COMPUTE", "CUSTOM_INSTANCE_TYPE"
    #   resp.build_batch.environment.docker_server.security_group_ids #=> Array
    #   resp.build_batch.environment.docker_server.security_group_ids[0] #=> String
    #   resp.build_batch.environment.docker_server.status.status #=> String
    #   resp.build_batch.environment.docker_server.status.message #=> String
    #   resp.build_batch.service_role #=> String
    #   resp.build_batch.log_config.cloud_watch_logs.status #=> String, one of "ENABLED", "DISABLED"
    #   resp.build_batch.log_config.cloud_watch_logs.group_name #=> String
    #   resp.build_batch.log_config.cloud_watch_logs.stream_name #=> String
    #   resp.build_batch.log_config.s3_logs.status #=> String, one of "ENABLED", "DISABLED"
    #   resp.build_batch.log_config.s3_logs.location #=> String
    #   resp.build_batch.log_config.s3_logs.encryption_disabled #=> Boolean
    #   resp.build_batch.log_config.s3_logs.bucket_owner_access #=> String, one of "NONE", "READ_ONLY", "FULL"
    #   resp.build_batch.build_timeout_in_minutes #=> Integer
    #   resp.build_batch.queued_timeout_in_minutes #=> Integer
    #   resp.build_batch.complete #=> Boolean
    #   resp.build_batch.initiator #=> String
    #   resp.build_batch.vpc_config.vpc_id #=> String
    #   resp.build_batch.vpc_config.subnets #=> Array
    #   resp.build_batch.vpc_config.subnets[0] #=> String
    #   resp.build_batch.vpc_config.security_group_ids #=> Array
    #   resp.build_batch.vpc_config.security_group_ids[0] #=> String
    #   resp.build_batch.encryption_key #=> String
    #   resp.build_batch.build_batch_number #=> Integer
    #   resp.build_batch.file_system_locations #=> Array
    #   resp.build_batch.file_system_locations[0].type #=> String, one of "EFS"
    #   resp.build_batch.file_system_locations[0].location #=> String
    #   resp.build_batch.file_system_locations[0].mount_point #=> String
    #   resp.build_batch.file_system_locations[0].identifier #=> String
    #   resp.build_batch.file_system_locations[0].mount_options #=> String
    #   resp.build_batch.build_batch_config.service_role #=> String
    #   resp.build_batch.build_batch_config.combine_artifacts #=> Boolean
    #   resp.build_batch.build_batch_config.restrictions.maximum_builds_allowed #=> Integer
    #   resp.build_batch.build_batch_config.restrictions.compute_types_allowed #=> Array
    #   resp.build_batch.build_batch_config.restrictions.compute_types_allowed[0] #=> String
    #   resp.build_batch.build_batch_config.restrictions.fleets_allowed #=> Array
    #   resp.build_batch.build_batch_config.restrictions.fleets_allowed[0] #=> String
    #   resp.build_batch.build_batch_config.timeout_in_mins #=> Integer
    #   resp.build_batch.build_batch_config.batch_report_mode #=> String, one of "REPORT_INDIVIDUAL_BUILDS", "REPORT_AGGREGATED_BATCH"
    #   resp.build_batch.build_groups #=> Array
    #   resp.build_batch.build_groups[0].identifier #=> String
    #   resp.build_batch.build_groups[0].depends_on #=> Array
    #   resp.build_batch.build_groups[0].depends_on[0] #=> String
    #   resp.build_batch.build_groups[0].ignore_failure #=> Boolean
    #   resp.build_batch.build_groups[0].current_build_summary.arn #=> String
    #   resp.build_batch.build_groups[0].current_build_summary.requested_on #=> Time
    #   resp.build_batch.build_groups[0].current_build_summary.build_status #=> String, one of "SUCCEEDED", "FAILED", "FAULT", "TIMED_OUT", "IN_PROGRESS", "STOPPED"
    #   resp.build_batch.build_groups[0].current_build_summary.primary_artifact.type #=> String, one of "CODEPIPELINE", "S3", "NO_ARTIFACTS"
    #   resp.build_batch.build_groups[0].current_build_summary.primary_artifact.location #=> String
    #   resp.build_batch.build_groups[0].current_build_summary.primary_artifact.identifier #=> String
    #   resp.build_batch.build_groups[0].current_build_summary.secondary_artifacts #=> Array
    #   resp.build_batch.build_groups[0].current_build_summary.secondary_artifacts[0].type #=> String, one of "CODEPIPELINE", "S3", "NO_ARTIFACTS"
    #   resp.build_batch.build_groups[0].current_build_summary.secondary_artifacts[0].location #=> String
    #   resp.build_batch.build_groups[0].current_build_summary.secondary_artifacts[0].identifier #=> String
    #   resp.build_batch.build_groups[0].prior_build_summary_list #=> Array
    #   resp.build_batch.build_groups[0].prior_build_summary_list[0].arn #=> String
    #   resp.build_batch.build_groups[0].prior_build_summary_list[0].requested_on #=> Time
    #   resp.build_batch.build_groups[0].prior_build_summary_list[0].build_status #=> String, one of "SUCCEEDED", "FAILED", "FAULT", "TIMED_OUT", "IN_PROGRESS", "STOPPED"
    #   resp.build_batch.build_groups[0].prior_build_summary_list[0].primary_artifact.type #=> String, one of "CODEPIPELINE", "S3", "NO_ARTIFACTS"
    #   resp.build_batch.build_groups[0].prior_build_summary_list[0].primary_artifact.location #=> String
    #   resp.build_batch.build_groups[0].prior_build_summary_list[0].primary_artifact.identifier #=> String
    #   resp.build_batch.build_groups[0].prior_build_summary_list[0].secondary_artifacts #=> Array
    #   resp.build_batch.build_groups[0].prior_build_summary_list[0].secondary_artifacts[0].type #=> String, one of "CODEPIPELINE", "S3", "NO_ARTIFACTS"
    #   resp.build_batch.build_groups[0].prior_build_summary_list[0].secondary_artifacts[0].location #=> String
    #   resp.build_batch.build_groups[0].prior_build_summary_list[0].secondary_artifacts[0].identifier #=> String
    #   resp.build_batch.debug_session_enabled #=> Boolean
    #   resp.build_batch.report_arns #=> Array
    #   resp.build_batch.report_arns[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/RetryBuildBatch AWS API Documentation
    #
    # @overload retry_build_batch(params = {})
    # @param [Hash] params ({})
    def retry_build_batch(params = {}, options = {})
      req = build_request(:retry_build_batch, params)
      req.send_request(options)
    end

    # Starts running a build with the settings defined in the project. These
    # setting include: how to run a build, where to get the source code,
    # which build environment to use, which build commands to run, and where
    # to store the build output.
    #
    # You can also start a build run by overriding some of the build
    # settings in the project. The overrides only apply for that specific
    # start build request. The settings in the project are unaltered.
    #
    # @option params [required, String] :project_name
    #   The name of the CodeBuild build project to start running a build.
    #
    # @option params [Array<Types::ProjectSource>] :secondary_sources_override
    #   An array of `ProjectSource` objects.
    #
    # @option params [Array<Types::ProjectSourceVersion>] :secondary_sources_version_override
    #   An array of `ProjectSourceVersion` objects that specify one or more
    #   versions of the project's secondary sources to be used for this build
    #   only.
    #
    # @option params [String] :source_version
    #   The version of the build input to be built, for this build only. If
    #   not specified, the latest version is used. If specified, the contents
    #   depends on the source provider:
    #
    #   CodeCommit
    #
    #   : The commit ID, branch, or Git tag to use.
    #
    #   GitHub
    #
    #   : The commit ID, pull request ID, branch name, or tag name that
    #     corresponds to the version of the source code you want to build. If
    #     a pull request ID is specified, it must use the format
    #     `pr/pull-request-ID` (for example `pr/25`). If a branch name is
    #     specified, the branch's HEAD commit ID is used. If not specified,
    #     the default branch's HEAD commit ID is used.
    #
    #   GitLab
    #
    #   : The commit ID, branch, or Git tag to use.
    #
    #   Bitbucket
    #
    #   : The commit ID, branch name, or tag name that corresponds to the
    #     version of the source code you want to build. If a branch name is
    #     specified, the branch's HEAD commit ID is used. If not specified,
    #     the default branch's HEAD commit ID is used.
    #
    #   Amazon S3
    #
    #   : The version ID of the object that represents the build input ZIP
    #     file to use.
    #
    #   If `sourceVersion` is specified at the project level, then this
    #   `sourceVersion` (at the build level) takes precedence.
    #
    #   For more information, see [Source Version Sample with CodeBuild][1] in
    #   the *CodeBuild User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codebuild/latest/userguide/sample-source-version.html
    #
    # @option params [Types::ProjectArtifacts] :artifacts_override
    #   Build output artifact settings that override, for this build only, the
    #   latest ones already defined in the build project.
    #
    # @option params [Array<Types::ProjectArtifacts>] :secondary_artifacts_override
    #   An array of `ProjectArtifacts` objects.
    #
    # @option params [Array<Types::EnvironmentVariable>] :environment_variables_override
    #   A set of environment variables that overrides, for this build only,
    #   the latest ones already defined in the build project.
    #
    # @option params [String] :source_type_override
    #   A source input type, for this build, that overrides the source input
    #   defined in the build project.
    #
    # @option params [String] :source_location_override
    #   A location that overrides, for this build, the source location for the
    #   one defined in the build project.
    #
    # @option params [Types::SourceAuth] :source_auth_override
    #   An authorization type for this build that overrides the one defined in
    #   the build project. This override applies only if the build project's
    #   source is BitBucket, GitHub, GitLab, or GitLab Self Managed.
    #
    # @option params [Integer] :git_clone_depth_override
    #   The user-defined depth of history, with a minimum value of 0, that
    #   overrides, for this build only, any previous depth of history defined
    #   in the build project.
    #
    # @option params [Types::GitSubmodulesConfig] :git_submodules_config_override
    #   Information about the Git submodules configuration for this build of
    #   an CodeBuild build project.
    #
    # @option params [String] :buildspec_override
    #   A buildspec file declaration that overrides the latest one defined in
    #   the build project, for this build only. The buildspec defined on the
    #   project is not changed.
    #
    #   If this value is set, it can be either an inline buildspec definition,
    #   the path to an alternate buildspec file relative to the value of the
    #   built-in `CODEBUILD_SRC_DIR` environment variable, or the path to an
    #   S3 bucket. The bucket must be in the same Amazon Web Services Region
    #   as the build project. Specify the buildspec file using its ARN (for
    #   example, `arn:aws:s3:::my-codebuild-sample2/buildspec.yml`). If this
    #   value is not provided or is set to an empty string, the source code
    #   must contain a buildspec file in its root directory. For more
    #   information, see [Buildspec File Name and Storage Location][1].
    #
    #   <note markdown="1"> Since this property allows you to change the build commands that will
    #   run in the container, you should note that an IAM principal with the
    #   ability to call this API and set this parameter can override the
    #   default settings. Moreover, we encourage that you use a trustworthy
    #   buildspec location like a file in your source repository or a Amazon
    #   S3 bucket. Alternatively, you can restrict overrides to the buildspec
    #   by using a condition key: [Prevent unauthorized modifications to
    #   project buildspec][2].
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codebuild/latest/userguide/build-spec-ref.html#build-spec-ref-name-storage
    #   [2]: https://docs.aws.amazon.com/codebuild/latest/userguide/action-context-keys.html#action-context-keys-example-overridebuildspec.html
    #
    # @option params [Boolean] :insecure_ssl_override
    #   Enable this flag to override the insecure SSL setting that is
    #   specified in the build project. The insecure SSL setting determines
    #   whether to ignore SSL warnings while connecting to the project source
    #   code. This override applies only if the build's source is GitHub
    #   Enterprise.
    #
    # @option params [Boolean] :report_build_status_override
    #   Set to true to report to your source provider the status of a build's
    #   start and completion. If you use this option with a source provider
    #   other than GitHub, GitHub Enterprise, GitLab, GitLab Self Managed, or
    #   Bitbucket, an `invalidInputException` is thrown.
    #
    #   To be able to report the build status to the source provider, the user
    #   associated with the source provider must have write access to the
    #   repo. If the user does not have write access, the build status cannot
    #   be updated. For more information, see [Source provider access][1] in
    #   the *CodeBuild User Guide*.
    #
    #   <note markdown="1"> The status of a build triggered by a webhook is always reported to
    #   your source provider.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codebuild/latest/userguide/access-tokens.html
    #
    # @option params [Types::BuildStatusConfig] :build_status_config_override
    #   Contains information that defines how the build project reports the
    #   build status to the source provider. This option is only used when the
    #   source provider is `GITHUB`, `GITHUB_ENTERPRISE`, or `BITBUCKET`.
    #
    # @option params [String] :environment_type_override
    #   A container type for this build that overrides the one specified in
    #   the build project.
    #
    # @option params [String] :image_override
    #   The name of an image for this build that overrides the one specified
    #   in the build project.
    #
    # @option params [String] :compute_type_override
    #   The name of a compute type for this build that overrides the one
    #   specified in the build project.
    #
    # @option params [String] :certificate_override
    #   The name of a certificate for this build that overrides the one
    #   specified in the build project.
    #
    # @option params [Types::ProjectCache] :cache_override
    #   A ProjectCache object specified for this build that overrides the one
    #   defined in the build project.
    #
    # @option params [String] :service_role_override
    #   The name of a service role for this build that overrides the one
    #   specified in the build project.
    #
    # @option params [Boolean] :privileged_mode_override
    #   Enable this flag to override privileged mode in the build project.
    #
    # @option params [Integer] :timeout_in_minutes_override
    #   The number of build timeout minutes, from 5 to 2160 (36 hours), that
    #   overrides, for this build only, the latest setting already defined in
    #   the build project.
    #
    # @option params [Integer] :queued_timeout_in_minutes_override
    #   The number of minutes a build is allowed to be queued before it times
    #   out.
    #
    # @option params [String] :encryption_key_override
    #   The Key Management Service customer master key (CMK) that overrides
    #   the one specified in the build project. The CMK key encrypts the build
    #   output artifacts.
    #
    #   <note markdown="1"> You can use a cross-account KMS key to encrypt the build output
    #   artifacts if your service role has permission to that key.
    #
    #    </note>
    #
    #   You can specify either the Amazon Resource Name (ARN) of the CMK or,
    #   if available, the CMK's alias (using the format
    #   `alias/<alias-name>`).
    #
    # @option params [String] :idempotency_token
    #   A unique, case sensitive identifier you provide to ensure the
    #   idempotency of the StartBuild request. The token is included in the
    #   StartBuild request and is valid for 5 minutes. If you repeat the
    #   StartBuild request with the same token, but change a parameter,
    #   CodeBuild returns a parameter mismatch error.
    #
    # @option params [Types::LogsConfig] :logs_config_override
    #   Log settings for this build that override the log settings defined in
    #   the build project.
    #
    # @option params [Types::RegistryCredential] :registry_credential_override
    #   The credentials for access to a private registry.
    #
    # @option params [String] :image_pull_credentials_type_override
    #   The type of credentials CodeBuild uses to pull images in your build.
    #   There are two valid values:
    #
    #   CODEBUILD
    #
    #   : Specifies that CodeBuild uses its own credentials. This requires
    #     that you modify your ECR repository policy to trust CodeBuild's
    #     service principal.
    #
    #   SERVICE\_ROLE
    #
    #   : Specifies that CodeBuild uses your build project's service role.
    #
    #   When using a cross-account or private registry image, you must use
    #   `SERVICE_ROLE` credentials. When using an CodeBuild curated image, you
    #   must use `CODEBUILD` credentials.
    #
    # @option params [Boolean] :debug_session_enabled
    #   Specifies if session debugging is enabled for this build. For more
    #   information, see [Viewing a running build in Session Manager][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codebuild/latest/userguide/session-manager.html
    #
    # @option params [Types::ProjectFleet] :fleet_override
    #   A ProjectFleet object specified for this build that overrides the one
    #   defined in the build project.
    #
    # @option params [Integer] :auto_retry_limit_override
    #   The maximum number of additional automatic retries after a failed
    #   build. For example, if the auto-retry limit is set to 2, CodeBuild
    #   will call the `RetryBuild` API to automatically retry your build for
    #   up to 2 additional times.
    #
    # @return [Types::StartBuildOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartBuildOutput#build #build} => Types::Build
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_build({
    #     project_name: "NonEmptyString", # required
    #     secondary_sources_override: [
    #       {
    #         type: "CODECOMMIT", # required, accepts CODECOMMIT, CODEPIPELINE, GITHUB, GITLAB, GITLAB_SELF_MANAGED, S3, BITBUCKET, GITHUB_ENTERPRISE, NO_SOURCE
    #         location: "String",
    #         git_clone_depth: 1,
    #         git_submodules_config: {
    #           fetch_submodules: false, # required
    #         },
    #         buildspec: "String",
    #         auth: {
    #           type: "OAUTH", # required, accepts OAUTH, CODECONNECTIONS, SECRETS_MANAGER
    #           resource: "String",
    #         },
    #         report_build_status: false,
    #         build_status_config: {
    #           context: "String",
    #           target_url: "String",
    #         },
    #         insecure_ssl: false,
    #         source_identifier: "String",
    #       },
    #     ],
    #     secondary_sources_version_override: [
    #       {
    #         source_identifier: "String", # required
    #         source_version: "String", # required
    #       },
    #     ],
    #     source_version: "String",
    #     artifacts_override: {
    #       type: "CODEPIPELINE", # required, accepts CODEPIPELINE, S3, NO_ARTIFACTS
    #       location: "String",
    #       path: "String",
    #       namespace_type: "NONE", # accepts NONE, BUILD_ID
    #       name: "String",
    #       packaging: "NONE", # accepts NONE, ZIP
    #       override_artifact_name: false,
    #       encryption_disabled: false,
    #       artifact_identifier: "String",
    #       bucket_owner_access: "NONE", # accepts NONE, READ_ONLY, FULL
    #     },
    #     secondary_artifacts_override: [
    #       {
    #         type: "CODEPIPELINE", # required, accepts CODEPIPELINE, S3, NO_ARTIFACTS
    #         location: "String",
    #         path: "String",
    #         namespace_type: "NONE", # accepts NONE, BUILD_ID
    #         name: "String",
    #         packaging: "NONE", # accepts NONE, ZIP
    #         override_artifact_name: false,
    #         encryption_disabled: false,
    #         artifact_identifier: "String",
    #         bucket_owner_access: "NONE", # accepts NONE, READ_ONLY, FULL
    #       },
    #     ],
    #     environment_variables_override: [
    #       {
    #         name: "NonEmptyString", # required
    #         value: "String", # required
    #         type: "PLAINTEXT", # accepts PLAINTEXT, PARAMETER_STORE, SECRETS_MANAGER
    #       },
    #     ],
    #     source_type_override: "CODECOMMIT", # accepts CODECOMMIT, CODEPIPELINE, GITHUB, GITLAB, GITLAB_SELF_MANAGED, S3, BITBUCKET, GITHUB_ENTERPRISE, NO_SOURCE
    #     source_location_override: "String",
    #     source_auth_override: {
    #       type: "OAUTH", # required, accepts OAUTH, CODECONNECTIONS, SECRETS_MANAGER
    #       resource: "String",
    #     },
    #     git_clone_depth_override: 1,
    #     git_submodules_config_override: {
    #       fetch_submodules: false, # required
    #     },
    #     buildspec_override: "String",
    #     insecure_ssl_override: false,
    #     report_build_status_override: false,
    #     build_status_config_override: {
    #       context: "String",
    #       target_url: "String",
    #     },
    #     environment_type_override: "WINDOWS_CONTAINER", # accepts WINDOWS_CONTAINER, LINUX_CONTAINER, LINUX_GPU_CONTAINER, ARM_CONTAINER, WINDOWS_SERVER_2019_CONTAINER, WINDOWS_SERVER_2022_CONTAINER, LINUX_LAMBDA_CONTAINER, ARM_LAMBDA_CONTAINER, LINUX_EC2, ARM_EC2, WINDOWS_EC2, MAC_ARM
    #     image_override: "NonEmptyString",
    #     compute_type_override: "BUILD_GENERAL1_SMALL", # accepts BUILD_GENERAL1_SMALL, BUILD_GENERAL1_MEDIUM, BUILD_GENERAL1_LARGE, BUILD_GENERAL1_XLARGE, BUILD_GENERAL1_2XLARGE, BUILD_LAMBDA_1GB, BUILD_LAMBDA_2GB, BUILD_LAMBDA_4GB, BUILD_LAMBDA_8GB, BUILD_LAMBDA_10GB, ATTRIBUTE_BASED_COMPUTE, CUSTOM_INSTANCE_TYPE
    #     certificate_override: "String",
    #     cache_override: {
    #       type: "NO_CACHE", # required, accepts NO_CACHE, S3, LOCAL
    #       location: "String",
    #       modes: ["LOCAL_DOCKER_LAYER_CACHE"], # accepts LOCAL_DOCKER_LAYER_CACHE, LOCAL_SOURCE_CACHE, LOCAL_CUSTOM_CACHE
    #       cache_namespace: "String",
    #     },
    #     service_role_override: "NonEmptyString",
    #     privileged_mode_override: false,
    #     timeout_in_minutes_override: 1,
    #     queued_timeout_in_minutes_override: 1,
    #     encryption_key_override: "NonEmptyString",
    #     idempotency_token: "String",
    #     logs_config_override: {
    #       cloud_watch_logs: {
    #         status: "ENABLED", # required, accepts ENABLED, DISABLED
    #         group_name: "String",
    #         stream_name: "String",
    #       },
    #       s3_logs: {
    #         status: "ENABLED", # required, accepts ENABLED, DISABLED
    #         location: "String",
    #         encryption_disabled: false,
    #         bucket_owner_access: "NONE", # accepts NONE, READ_ONLY, FULL
    #       },
    #     },
    #     registry_credential_override: {
    #       credential: "NonEmptyString", # required
    #       credential_provider: "SECRETS_MANAGER", # required, accepts SECRETS_MANAGER
    #     },
    #     image_pull_credentials_type_override: "CODEBUILD", # accepts CODEBUILD, SERVICE_ROLE
    #     debug_session_enabled: false,
    #     fleet_override: {
    #       fleet_arn: "String",
    #     },
    #     auto_retry_limit_override: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.build.id #=> String
    #   resp.build.arn #=> String
    #   resp.build.build_number #=> Integer
    #   resp.build.start_time #=> Time
    #   resp.build.end_time #=> Time
    #   resp.build.current_phase #=> String
    #   resp.build.build_status #=> String, one of "SUCCEEDED", "FAILED", "FAULT", "TIMED_OUT", "IN_PROGRESS", "STOPPED"
    #   resp.build.source_version #=> String
    #   resp.build.resolved_source_version #=> String
    #   resp.build.project_name #=> String
    #   resp.build.phases #=> Array
    #   resp.build.phases[0].phase_type #=> String, one of "SUBMITTED", "QUEUED", "PROVISIONING", "DOWNLOAD_SOURCE", "INSTALL", "PRE_BUILD", "BUILD", "POST_BUILD", "UPLOAD_ARTIFACTS", "FINALIZING", "COMPLETED"
    #   resp.build.phases[0].phase_status #=> String, one of "SUCCEEDED", "FAILED", "FAULT", "TIMED_OUT", "IN_PROGRESS", "STOPPED"
    #   resp.build.phases[0].start_time #=> Time
    #   resp.build.phases[0].end_time #=> Time
    #   resp.build.phases[0].duration_in_seconds #=> Integer
    #   resp.build.phases[0].contexts #=> Array
    #   resp.build.phases[0].contexts[0].status_code #=> String
    #   resp.build.phases[0].contexts[0].message #=> String
    #   resp.build.source.type #=> String, one of "CODECOMMIT", "CODEPIPELINE", "GITHUB", "GITLAB", "GITLAB_SELF_MANAGED", "S3", "BITBUCKET", "GITHUB_ENTERPRISE", "NO_SOURCE"
    #   resp.build.source.location #=> String
    #   resp.build.source.git_clone_depth #=> Integer
    #   resp.build.source.git_submodules_config.fetch_submodules #=> Boolean
    #   resp.build.source.buildspec #=> String
    #   resp.build.source.auth.type #=> String, one of "OAUTH", "CODECONNECTIONS", "SECRETS_MANAGER"
    #   resp.build.source.auth.resource #=> String
    #   resp.build.source.report_build_status #=> Boolean
    #   resp.build.source.build_status_config.context #=> String
    #   resp.build.source.build_status_config.target_url #=> String
    #   resp.build.source.insecure_ssl #=> Boolean
    #   resp.build.source.source_identifier #=> String
    #   resp.build.secondary_sources #=> Array
    #   resp.build.secondary_sources[0].type #=> String, one of "CODECOMMIT", "CODEPIPELINE", "GITHUB", "GITLAB", "GITLAB_SELF_MANAGED", "S3", "BITBUCKET", "GITHUB_ENTERPRISE", "NO_SOURCE"
    #   resp.build.secondary_sources[0].location #=> String
    #   resp.build.secondary_sources[0].git_clone_depth #=> Integer
    #   resp.build.secondary_sources[0].git_submodules_config.fetch_submodules #=> Boolean
    #   resp.build.secondary_sources[0].buildspec #=> String
    #   resp.build.secondary_sources[0].auth.type #=> String, one of "OAUTH", "CODECONNECTIONS", "SECRETS_MANAGER"
    #   resp.build.secondary_sources[0].auth.resource #=> String
    #   resp.build.secondary_sources[0].report_build_status #=> Boolean
    #   resp.build.secondary_sources[0].build_status_config.context #=> String
    #   resp.build.secondary_sources[0].build_status_config.target_url #=> String
    #   resp.build.secondary_sources[0].insecure_ssl #=> Boolean
    #   resp.build.secondary_sources[0].source_identifier #=> String
    #   resp.build.secondary_source_versions #=> Array
    #   resp.build.secondary_source_versions[0].source_identifier #=> String
    #   resp.build.secondary_source_versions[0].source_version #=> String
    #   resp.build.artifacts.location #=> String
    #   resp.build.artifacts.sha256sum #=> String
    #   resp.build.artifacts.md5sum #=> String
    #   resp.build.artifacts.override_artifact_name #=> Boolean
    #   resp.build.artifacts.encryption_disabled #=> Boolean
    #   resp.build.artifacts.artifact_identifier #=> String
    #   resp.build.artifacts.bucket_owner_access #=> String, one of "NONE", "READ_ONLY", "FULL"
    #   resp.build.secondary_artifacts #=> Array
    #   resp.build.secondary_artifacts[0].location #=> String
    #   resp.build.secondary_artifacts[0].sha256sum #=> String
    #   resp.build.secondary_artifacts[0].md5sum #=> String
    #   resp.build.secondary_artifacts[0].override_artifact_name #=> Boolean
    #   resp.build.secondary_artifacts[0].encryption_disabled #=> Boolean
    #   resp.build.secondary_artifacts[0].artifact_identifier #=> String
    #   resp.build.secondary_artifacts[0].bucket_owner_access #=> String, one of "NONE", "READ_ONLY", "FULL"
    #   resp.build.cache.type #=> String, one of "NO_CACHE", "S3", "LOCAL"
    #   resp.build.cache.location #=> String
    #   resp.build.cache.modes #=> Array
    #   resp.build.cache.modes[0] #=> String, one of "LOCAL_DOCKER_LAYER_CACHE", "LOCAL_SOURCE_CACHE", "LOCAL_CUSTOM_CACHE"
    #   resp.build.cache.cache_namespace #=> String
    #   resp.build.environment.type #=> String, one of "WINDOWS_CONTAINER", "LINUX_CONTAINER", "LINUX_GPU_CONTAINER", "ARM_CONTAINER", "WINDOWS_SERVER_2019_CONTAINER", "WINDOWS_SERVER_2022_CONTAINER", "LINUX_LAMBDA_CONTAINER", "ARM_LAMBDA_CONTAINER", "LINUX_EC2", "ARM_EC2", "WINDOWS_EC2", "MAC_ARM"
    #   resp.build.environment.image #=> String
    #   resp.build.environment.compute_type #=> String, one of "BUILD_GENERAL1_SMALL", "BUILD_GENERAL1_MEDIUM", "BUILD_GENERAL1_LARGE", "BUILD_GENERAL1_XLARGE", "BUILD_GENERAL1_2XLARGE", "BUILD_LAMBDA_1GB", "BUILD_LAMBDA_2GB", "BUILD_LAMBDA_4GB", "BUILD_LAMBDA_8GB", "BUILD_LAMBDA_10GB", "ATTRIBUTE_BASED_COMPUTE", "CUSTOM_INSTANCE_TYPE"
    #   resp.build.environment.compute_configuration.v_cpu #=> Integer
    #   resp.build.environment.compute_configuration.memory #=> Integer
    #   resp.build.environment.compute_configuration.disk #=> Integer
    #   resp.build.environment.compute_configuration.machine_type #=> String, one of "GENERAL", "NVME"
    #   resp.build.environment.compute_configuration.instance_type #=> String
    #   resp.build.environment.fleet.fleet_arn #=> String
    #   resp.build.environment.environment_variables #=> Array
    #   resp.build.environment.environment_variables[0].name #=> String
    #   resp.build.environment.environment_variables[0].value #=> String
    #   resp.build.environment.environment_variables[0].type #=> String, one of "PLAINTEXT", "PARAMETER_STORE", "SECRETS_MANAGER"
    #   resp.build.environment.privileged_mode #=> Boolean
    #   resp.build.environment.certificate #=> String
    #   resp.build.environment.registry_credential.credential #=> String
    #   resp.build.environment.registry_credential.credential_provider #=> String, one of "SECRETS_MANAGER"
    #   resp.build.environment.image_pull_credentials_type #=> String, one of "CODEBUILD", "SERVICE_ROLE"
    #   resp.build.environment.docker_server.compute_type #=> String, one of "BUILD_GENERAL1_SMALL", "BUILD_GENERAL1_MEDIUM", "BUILD_GENERAL1_LARGE", "BUILD_GENERAL1_XLARGE", "BUILD_GENERAL1_2XLARGE", "BUILD_LAMBDA_1GB", "BUILD_LAMBDA_2GB", "BUILD_LAMBDA_4GB", "BUILD_LAMBDA_8GB", "BUILD_LAMBDA_10GB", "ATTRIBUTE_BASED_COMPUTE", "CUSTOM_INSTANCE_TYPE"
    #   resp.build.environment.docker_server.security_group_ids #=> Array
    #   resp.build.environment.docker_server.security_group_ids[0] #=> String
    #   resp.build.environment.docker_server.status.status #=> String
    #   resp.build.environment.docker_server.status.message #=> String
    #   resp.build.service_role #=> String
    #   resp.build.logs.group_name #=> String
    #   resp.build.logs.stream_name #=> String
    #   resp.build.logs.deep_link #=> String
    #   resp.build.logs.s3_deep_link #=> String
    #   resp.build.logs.cloud_watch_logs_arn #=> String
    #   resp.build.logs.s3_logs_arn #=> String
    #   resp.build.logs.cloud_watch_logs.status #=> String, one of "ENABLED", "DISABLED"
    #   resp.build.logs.cloud_watch_logs.group_name #=> String
    #   resp.build.logs.cloud_watch_logs.stream_name #=> String
    #   resp.build.logs.s3_logs.status #=> String, one of "ENABLED", "DISABLED"
    #   resp.build.logs.s3_logs.location #=> String
    #   resp.build.logs.s3_logs.encryption_disabled #=> Boolean
    #   resp.build.logs.s3_logs.bucket_owner_access #=> String, one of "NONE", "READ_ONLY", "FULL"
    #   resp.build.timeout_in_minutes #=> Integer
    #   resp.build.queued_timeout_in_minutes #=> Integer
    #   resp.build.build_complete #=> Boolean
    #   resp.build.initiator #=> String
    #   resp.build.vpc_config.vpc_id #=> String
    #   resp.build.vpc_config.subnets #=> Array
    #   resp.build.vpc_config.subnets[0] #=> String
    #   resp.build.vpc_config.security_group_ids #=> Array
    #   resp.build.vpc_config.security_group_ids[0] #=> String
    #   resp.build.network_interface.subnet_id #=> String
    #   resp.build.network_interface.network_interface_id #=> String
    #   resp.build.encryption_key #=> String
    #   resp.build.exported_environment_variables #=> Array
    #   resp.build.exported_environment_variables[0].name #=> String
    #   resp.build.exported_environment_variables[0].value #=> String
    #   resp.build.report_arns #=> Array
    #   resp.build.report_arns[0] #=> String
    #   resp.build.file_system_locations #=> Array
    #   resp.build.file_system_locations[0].type #=> String, one of "EFS"
    #   resp.build.file_system_locations[0].location #=> String
    #   resp.build.file_system_locations[0].mount_point #=> String
    #   resp.build.file_system_locations[0].identifier #=> String
    #   resp.build.file_system_locations[0].mount_options #=> String
    #   resp.build.debug_session.session_enabled #=> Boolean
    #   resp.build.debug_session.session_target #=> String
    #   resp.build.build_batch_arn #=> String
    #   resp.build.auto_retry_config.auto_retry_limit #=> Integer
    #   resp.build.auto_retry_config.auto_retry_number #=> Integer
    #   resp.build.auto_retry_config.next_auto_retry #=> String
    #   resp.build.auto_retry_config.previous_auto_retry #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/StartBuild AWS API Documentation
    #
    # @overload start_build(params = {})
    # @param [Hash] params ({})
    def start_build(params = {}, options = {})
      req = build_request(:start_build, params)
      req.send_request(options)
    end

    # Starts a batch build for a project.
    #
    # @option params [required, String] :project_name
    #   The name of the project.
    #
    # @option params [Array<Types::ProjectSource>] :secondary_sources_override
    #   An array of `ProjectSource` objects that override the secondary
    #   sources defined in the batch build project.
    #
    # @option params [Array<Types::ProjectSourceVersion>] :secondary_sources_version_override
    #   An array of `ProjectSourceVersion` objects that override the secondary
    #   source versions in the batch build project.
    #
    # @option params [String] :source_version
    #   The version of the batch build input to be built, for this build only.
    #   If not specified, the latest version is used. If specified, the
    #   contents depends on the source provider:
    #
    #   CodeCommit
    #
    #   : The commit ID, branch, or Git tag to use.
    #
    #   GitHub
    #
    #   : The commit ID, pull request ID, branch name, or tag name that
    #     corresponds to the version of the source code you want to build. If
    #     a pull request ID is specified, it must use the format
    #     `pr/pull-request-ID` (for example `pr/25`). If a branch name is
    #     specified, the branch's HEAD commit ID is used. If not specified,
    #     the default branch's HEAD commit ID is used.
    #
    #   Bitbucket
    #
    #   : The commit ID, branch name, or tag name that corresponds to the
    #     version of the source code you want to build. If a branch name is
    #     specified, the branch's HEAD commit ID is used. If not specified,
    #     the default branch's HEAD commit ID is used.
    #
    #   Amazon S3
    #
    #   : The version ID of the object that represents the build input ZIP
    #     file to use.
    #
    #   If `sourceVersion` is specified at the project level, then this
    #   `sourceVersion` (at the build level) takes precedence.
    #
    #   For more information, see [Source Version Sample with CodeBuild][1] in
    #   the *CodeBuild User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codebuild/latest/userguide/sample-source-version.html
    #
    # @option params [Types::ProjectArtifacts] :artifacts_override
    #   An array of `ProjectArtifacts` objects that contains information about
    #   the build output artifact overrides for the build project.
    #
    # @option params [Array<Types::ProjectArtifacts>] :secondary_artifacts_override
    #   An array of `ProjectArtifacts` objects that override the secondary
    #   artifacts defined in the batch build project.
    #
    # @option params [Array<Types::EnvironmentVariable>] :environment_variables_override
    #   An array of `EnvironmentVariable` objects that override, or add to,
    #   the environment variables defined in the batch build project.
    #
    # @option params [String] :source_type_override
    #   The source input type that overrides the source input defined in the
    #   batch build project.
    #
    # @option params [String] :source_location_override
    #   A location that overrides, for this batch build, the source location
    #   defined in the batch build project.
    #
    # @option params [Types::SourceAuth] :source_auth_override
    #   A `SourceAuth` object that overrides the one defined in the batch
    #   build project. This override applies only if the build project's
    #   source is BitBucket or GitHub.
    #
    # @option params [Integer] :git_clone_depth_override
    #   The user-defined depth of history, with a minimum value of 0, that
    #   overrides, for this batch build only, any previous depth of history
    #   defined in the batch build project.
    #
    # @option params [Types::GitSubmodulesConfig] :git_submodules_config_override
    #   A `GitSubmodulesConfig` object that overrides the Git submodules
    #   configuration for this batch build.
    #
    # @option params [String] :buildspec_override
    #   A buildspec file declaration that overrides, for this build only, the
    #   latest one already defined in the build project.
    #
    #   If this value is set, it can be either an inline buildspec definition,
    #   the path to an alternate buildspec file relative to the value of the
    #   built-in `CODEBUILD_SRC_DIR` environment variable, or the path to an
    #   S3 bucket. The bucket must be in the same Amazon Web Services Region
    #   as the build project. Specify the buildspec file using its ARN (for
    #   example, `arn:aws:s3:::my-codebuild-sample2/buildspec.yml`). If this
    #   value is not provided or is set to an empty string, the source code
    #   must contain a buildspec file in its root directory. For more
    #   information, see [Buildspec File Name and Storage Location][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codebuild/latest/userguide/build-spec-ref.html#build-spec-ref-name-storage
    #
    # @option params [Boolean] :insecure_ssl_override
    #   Enable this flag to override the insecure SSL setting that is
    #   specified in the batch build project. The insecure SSL setting
    #   determines whether to ignore SSL warnings while connecting to the
    #   project source code. This override applies only if the build's source
    #   is GitHub Enterprise.
    #
    # @option params [Boolean] :report_build_batch_status_override
    #   Set to `true` to report to your source provider the status of a batch
    #   build's start and completion. If you use this option with a source
    #   provider other than GitHub, GitHub Enterprise, or Bitbucket, an
    #   `invalidInputException` is thrown.
    #
    #   <note markdown="1"> The status of a build triggered by a webhook is always reported to
    #   your source provider.
    #
    #    </note>
    #
    # @option params [String] :environment_type_override
    #   A container type for this batch build that overrides the one specified
    #   in the batch build project.
    #
    # @option params [String] :image_override
    #   The name of an image for this batch build that overrides the one
    #   specified in the batch build project.
    #
    # @option params [String] :compute_type_override
    #   The name of a compute type for this batch build that overrides the one
    #   specified in the batch build project.
    #
    # @option params [String] :certificate_override
    #   The name of a certificate for this batch build that overrides the one
    #   specified in the batch build project.
    #
    # @option params [Types::ProjectCache] :cache_override
    #   A `ProjectCache` object that specifies cache overrides.
    #
    # @option params [String] :service_role_override
    #   The name of a service role for this batch build that overrides the one
    #   specified in the batch build project.
    #
    # @option params [Boolean] :privileged_mode_override
    #   Enable this flag to override privileged mode in the batch build
    #   project.
    #
    # @option params [Integer] :build_timeout_in_minutes_override
    #   Overrides the build timeout specified in the batch build project.
    #
    # @option params [Integer] :queued_timeout_in_minutes_override
    #   The number of minutes a batch build is allowed to be queued before it
    #   times out.
    #
    # @option params [String] :encryption_key_override
    #   The Key Management Service customer master key (CMK) that overrides
    #   the one specified in the batch build project. The CMK key encrypts the
    #   build output artifacts.
    #
    #   <note markdown="1"> You can use a cross-account KMS key to encrypt the build output
    #   artifacts if your service role has permission to that key.
    #
    #    </note>
    #
    #   You can specify either the Amazon Resource Name (ARN) of the CMK or,
    #   if available, the CMK's alias (using the format
    #   `alias/<alias-name>`).
    #
    # @option params [String] :idempotency_token
    #   A unique, case sensitive identifier you provide to ensure the
    #   idempotency of the `StartBuildBatch` request. The token is included in
    #   the `StartBuildBatch` request and is valid for five minutes. If you
    #   repeat the `StartBuildBatch` request with the same token, but change a
    #   parameter, CodeBuild returns a parameter mismatch error.
    #
    # @option params [Types::LogsConfig] :logs_config_override
    #   A `LogsConfig` object that override the log settings defined in the
    #   batch build project.
    #
    # @option params [Types::RegistryCredential] :registry_credential_override
    #   A `RegistryCredential` object that overrides credentials for access to
    #   a private registry.
    #
    # @option params [String] :image_pull_credentials_type_override
    #   The type of credentials CodeBuild uses to pull images in your batch
    #   build. There are two valid values:
    #
    #   CODEBUILD
    #
    #   : Specifies that CodeBuild uses its own credentials. This requires
    #     that you modify your ECR repository policy to trust CodeBuild's
    #     service principal.
    #
    #   SERVICE\_ROLE
    #
    #   : Specifies that CodeBuild uses your build project's service role.
    #
    #   When using a cross-account or private registry image, you must use
    #   `SERVICE_ROLE` credentials. When using an CodeBuild curated image, you
    #   must use `CODEBUILD` credentials.
    #
    # @option params [Types::ProjectBuildBatchConfig] :build_batch_config_override
    #   A `BuildBatchConfigOverride` object that contains batch build
    #   configuration overrides.
    #
    # @option params [Boolean] :debug_session_enabled
    #   Specifies if session debugging is enabled for this batch build. For
    #   more information, see [Viewing a running build in Session Manager][1].
    #   Batch session debugging is not supported for matrix batch builds.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codebuild/latest/userguide/session-manager.html
    #
    # @return [Types::StartBuildBatchOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartBuildBatchOutput#build_batch #build_batch} => Types::BuildBatch
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_build_batch({
    #     project_name: "NonEmptyString", # required
    #     secondary_sources_override: [
    #       {
    #         type: "CODECOMMIT", # required, accepts CODECOMMIT, CODEPIPELINE, GITHUB, GITLAB, GITLAB_SELF_MANAGED, S3, BITBUCKET, GITHUB_ENTERPRISE, NO_SOURCE
    #         location: "String",
    #         git_clone_depth: 1,
    #         git_submodules_config: {
    #           fetch_submodules: false, # required
    #         },
    #         buildspec: "String",
    #         auth: {
    #           type: "OAUTH", # required, accepts OAUTH, CODECONNECTIONS, SECRETS_MANAGER
    #           resource: "String",
    #         },
    #         report_build_status: false,
    #         build_status_config: {
    #           context: "String",
    #           target_url: "String",
    #         },
    #         insecure_ssl: false,
    #         source_identifier: "String",
    #       },
    #     ],
    #     secondary_sources_version_override: [
    #       {
    #         source_identifier: "String", # required
    #         source_version: "String", # required
    #       },
    #     ],
    #     source_version: "String",
    #     artifacts_override: {
    #       type: "CODEPIPELINE", # required, accepts CODEPIPELINE, S3, NO_ARTIFACTS
    #       location: "String",
    #       path: "String",
    #       namespace_type: "NONE", # accepts NONE, BUILD_ID
    #       name: "String",
    #       packaging: "NONE", # accepts NONE, ZIP
    #       override_artifact_name: false,
    #       encryption_disabled: false,
    #       artifact_identifier: "String",
    #       bucket_owner_access: "NONE", # accepts NONE, READ_ONLY, FULL
    #     },
    #     secondary_artifacts_override: [
    #       {
    #         type: "CODEPIPELINE", # required, accepts CODEPIPELINE, S3, NO_ARTIFACTS
    #         location: "String",
    #         path: "String",
    #         namespace_type: "NONE", # accepts NONE, BUILD_ID
    #         name: "String",
    #         packaging: "NONE", # accepts NONE, ZIP
    #         override_artifact_name: false,
    #         encryption_disabled: false,
    #         artifact_identifier: "String",
    #         bucket_owner_access: "NONE", # accepts NONE, READ_ONLY, FULL
    #       },
    #     ],
    #     environment_variables_override: [
    #       {
    #         name: "NonEmptyString", # required
    #         value: "String", # required
    #         type: "PLAINTEXT", # accepts PLAINTEXT, PARAMETER_STORE, SECRETS_MANAGER
    #       },
    #     ],
    #     source_type_override: "CODECOMMIT", # accepts CODECOMMIT, CODEPIPELINE, GITHUB, GITLAB, GITLAB_SELF_MANAGED, S3, BITBUCKET, GITHUB_ENTERPRISE, NO_SOURCE
    #     source_location_override: "String",
    #     source_auth_override: {
    #       type: "OAUTH", # required, accepts OAUTH, CODECONNECTIONS, SECRETS_MANAGER
    #       resource: "String",
    #     },
    #     git_clone_depth_override: 1,
    #     git_submodules_config_override: {
    #       fetch_submodules: false, # required
    #     },
    #     buildspec_override: "String",
    #     insecure_ssl_override: false,
    #     report_build_batch_status_override: false,
    #     environment_type_override: "WINDOWS_CONTAINER", # accepts WINDOWS_CONTAINER, LINUX_CONTAINER, LINUX_GPU_CONTAINER, ARM_CONTAINER, WINDOWS_SERVER_2019_CONTAINER, WINDOWS_SERVER_2022_CONTAINER, LINUX_LAMBDA_CONTAINER, ARM_LAMBDA_CONTAINER, LINUX_EC2, ARM_EC2, WINDOWS_EC2, MAC_ARM
    #     image_override: "NonEmptyString",
    #     compute_type_override: "BUILD_GENERAL1_SMALL", # accepts BUILD_GENERAL1_SMALL, BUILD_GENERAL1_MEDIUM, BUILD_GENERAL1_LARGE, BUILD_GENERAL1_XLARGE, BUILD_GENERAL1_2XLARGE, BUILD_LAMBDA_1GB, BUILD_LAMBDA_2GB, BUILD_LAMBDA_4GB, BUILD_LAMBDA_8GB, BUILD_LAMBDA_10GB, ATTRIBUTE_BASED_COMPUTE, CUSTOM_INSTANCE_TYPE
    #     certificate_override: "String",
    #     cache_override: {
    #       type: "NO_CACHE", # required, accepts NO_CACHE, S3, LOCAL
    #       location: "String",
    #       modes: ["LOCAL_DOCKER_LAYER_CACHE"], # accepts LOCAL_DOCKER_LAYER_CACHE, LOCAL_SOURCE_CACHE, LOCAL_CUSTOM_CACHE
    #       cache_namespace: "String",
    #     },
    #     service_role_override: "NonEmptyString",
    #     privileged_mode_override: false,
    #     build_timeout_in_minutes_override: 1,
    #     queued_timeout_in_minutes_override: 1,
    #     encryption_key_override: "NonEmptyString",
    #     idempotency_token: "String",
    #     logs_config_override: {
    #       cloud_watch_logs: {
    #         status: "ENABLED", # required, accepts ENABLED, DISABLED
    #         group_name: "String",
    #         stream_name: "String",
    #       },
    #       s3_logs: {
    #         status: "ENABLED", # required, accepts ENABLED, DISABLED
    #         location: "String",
    #         encryption_disabled: false,
    #         bucket_owner_access: "NONE", # accepts NONE, READ_ONLY, FULL
    #       },
    #     },
    #     registry_credential_override: {
    #       credential: "NonEmptyString", # required
    #       credential_provider: "SECRETS_MANAGER", # required, accepts SECRETS_MANAGER
    #     },
    #     image_pull_credentials_type_override: "CODEBUILD", # accepts CODEBUILD, SERVICE_ROLE
    #     build_batch_config_override: {
    #       service_role: "NonEmptyString",
    #       combine_artifacts: false,
    #       restrictions: {
    #         maximum_builds_allowed: 1,
    #         compute_types_allowed: ["NonEmptyString"],
    #         fleets_allowed: ["NonEmptyString"],
    #       },
    #       timeout_in_mins: 1,
    #       batch_report_mode: "REPORT_INDIVIDUAL_BUILDS", # accepts REPORT_INDIVIDUAL_BUILDS, REPORT_AGGREGATED_BATCH
    #     },
    #     debug_session_enabled: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.build_batch.id #=> String
    #   resp.build_batch.arn #=> String
    #   resp.build_batch.start_time #=> Time
    #   resp.build_batch.end_time #=> Time
    #   resp.build_batch.current_phase #=> String
    #   resp.build_batch.build_batch_status #=> String, one of "SUCCEEDED", "FAILED", "FAULT", "TIMED_OUT", "IN_PROGRESS", "STOPPED"
    #   resp.build_batch.source_version #=> String
    #   resp.build_batch.resolved_source_version #=> String
    #   resp.build_batch.project_name #=> String
    #   resp.build_batch.phases #=> Array
    #   resp.build_batch.phases[0].phase_type #=> String, one of "SUBMITTED", "DOWNLOAD_BATCHSPEC", "IN_PROGRESS", "COMBINE_ARTIFACTS", "SUCCEEDED", "FAILED", "STOPPED"
    #   resp.build_batch.phases[0].phase_status #=> String, one of "SUCCEEDED", "FAILED", "FAULT", "TIMED_OUT", "IN_PROGRESS", "STOPPED"
    #   resp.build_batch.phases[0].start_time #=> Time
    #   resp.build_batch.phases[0].end_time #=> Time
    #   resp.build_batch.phases[0].duration_in_seconds #=> Integer
    #   resp.build_batch.phases[0].contexts #=> Array
    #   resp.build_batch.phases[0].contexts[0].status_code #=> String
    #   resp.build_batch.phases[0].contexts[0].message #=> String
    #   resp.build_batch.source.type #=> String, one of "CODECOMMIT", "CODEPIPELINE", "GITHUB", "GITLAB", "GITLAB_SELF_MANAGED", "S3", "BITBUCKET", "GITHUB_ENTERPRISE", "NO_SOURCE"
    #   resp.build_batch.source.location #=> String
    #   resp.build_batch.source.git_clone_depth #=> Integer
    #   resp.build_batch.source.git_submodules_config.fetch_submodules #=> Boolean
    #   resp.build_batch.source.buildspec #=> String
    #   resp.build_batch.source.auth.type #=> String, one of "OAUTH", "CODECONNECTIONS", "SECRETS_MANAGER"
    #   resp.build_batch.source.auth.resource #=> String
    #   resp.build_batch.source.report_build_status #=> Boolean
    #   resp.build_batch.source.build_status_config.context #=> String
    #   resp.build_batch.source.build_status_config.target_url #=> String
    #   resp.build_batch.source.insecure_ssl #=> Boolean
    #   resp.build_batch.source.source_identifier #=> String
    #   resp.build_batch.secondary_sources #=> Array
    #   resp.build_batch.secondary_sources[0].type #=> String, one of "CODECOMMIT", "CODEPIPELINE", "GITHUB", "GITLAB", "GITLAB_SELF_MANAGED", "S3", "BITBUCKET", "GITHUB_ENTERPRISE", "NO_SOURCE"
    #   resp.build_batch.secondary_sources[0].location #=> String
    #   resp.build_batch.secondary_sources[0].git_clone_depth #=> Integer
    #   resp.build_batch.secondary_sources[0].git_submodules_config.fetch_submodules #=> Boolean
    #   resp.build_batch.secondary_sources[0].buildspec #=> String
    #   resp.build_batch.secondary_sources[0].auth.type #=> String, one of "OAUTH", "CODECONNECTIONS", "SECRETS_MANAGER"
    #   resp.build_batch.secondary_sources[0].auth.resource #=> String
    #   resp.build_batch.secondary_sources[0].report_build_status #=> Boolean
    #   resp.build_batch.secondary_sources[0].build_status_config.context #=> String
    #   resp.build_batch.secondary_sources[0].build_status_config.target_url #=> String
    #   resp.build_batch.secondary_sources[0].insecure_ssl #=> Boolean
    #   resp.build_batch.secondary_sources[0].source_identifier #=> String
    #   resp.build_batch.secondary_source_versions #=> Array
    #   resp.build_batch.secondary_source_versions[0].source_identifier #=> String
    #   resp.build_batch.secondary_source_versions[0].source_version #=> String
    #   resp.build_batch.artifacts.location #=> String
    #   resp.build_batch.artifacts.sha256sum #=> String
    #   resp.build_batch.artifacts.md5sum #=> String
    #   resp.build_batch.artifacts.override_artifact_name #=> Boolean
    #   resp.build_batch.artifacts.encryption_disabled #=> Boolean
    #   resp.build_batch.artifacts.artifact_identifier #=> String
    #   resp.build_batch.artifacts.bucket_owner_access #=> String, one of "NONE", "READ_ONLY", "FULL"
    #   resp.build_batch.secondary_artifacts #=> Array
    #   resp.build_batch.secondary_artifacts[0].location #=> String
    #   resp.build_batch.secondary_artifacts[0].sha256sum #=> String
    #   resp.build_batch.secondary_artifacts[0].md5sum #=> String
    #   resp.build_batch.secondary_artifacts[0].override_artifact_name #=> Boolean
    #   resp.build_batch.secondary_artifacts[0].encryption_disabled #=> Boolean
    #   resp.build_batch.secondary_artifacts[0].artifact_identifier #=> String
    #   resp.build_batch.secondary_artifacts[0].bucket_owner_access #=> String, one of "NONE", "READ_ONLY", "FULL"
    #   resp.build_batch.cache.type #=> String, one of "NO_CACHE", "S3", "LOCAL"
    #   resp.build_batch.cache.location #=> String
    #   resp.build_batch.cache.modes #=> Array
    #   resp.build_batch.cache.modes[0] #=> String, one of "LOCAL_DOCKER_LAYER_CACHE", "LOCAL_SOURCE_CACHE", "LOCAL_CUSTOM_CACHE"
    #   resp.build_batch.cache.cache_namespace #=> String
    #   resp.build_batch.environment.type #=> String, one of "WINDOWS_CONTAINER", "LINUX_CONTAINER", "LINUX_GPU_CONTAINER", "ARM_CONTAINER", "WINDOWS_SERVER_2019_CONTAINER", "WINDOWS_SERVER_2022_CONTAINER", "LINUX_LAMBDA_CONTAINER", "ARM_LAMBDA_CONTAINER", "LINUX_EC2", "ARM_EC2", "WINDOWS_EC2", "MAC_ARM"
    #   resp.build_batch.environment.image #=> String
    #   resp.build_batch.environment.compute_type #=> String, one of "BUILD_GENERAL1_SMALL", "BUILD_GENERAL1_MEDIUM", "BUILD_GENERAL1_LARGE", "BUILD_GENERAL1_XLARGE", "BUILD_GENERAL1_2XLARGE", "BUILD_LAMBDA_1GB", "BUILD_LAMBDA_2GB", "BUILD_LAMBDA_4GB", "BUILD_LAMBDA_8GB", "BUILD_LAMBDA_10GB", "ATTRIBUTE_BASED_COMPUTE", "CUSTOM_INSTANCE_TYPE"
    #   resp.build_batch.environment.compute_configuration.v_cpu #=> Integer
    #   resp.build_batch.environment.compute_configuration.memory #=> Integer
    #   resp.build_batch.environment.compute_configuration.disk #=> Integer
    #   resp.build_batch.environment.compute_configuration.machine_type #=> String, one of "GENERAL", "NVME"
    #   resp.build_batch.environment.compute_configuration.instance_type #=> String
    #   resp.build_batch.environment.fleet.fleet_arn #=> String
    #   resp.build_batch.environment.environment_variables #=> Array
    #   resp.build_batch.environment.environment_variables[0].name #=> String
    #   resp.build_batch.environment.environment_variables[0].value #=> String
    #   resp.build_batch.environment.environment_variables[0].type #=> String, one of "PLAINTEXT", "PARAMETER_STORE", "SECRETS_MANAGER"
    #   resp.build_batch.environment.privileged_mode #=> Boolean
    #   resp.build_batch.environment.certificate #=> String
    #   resp.build_batch.environment.registry_credential.credential #=> String
    #   resp.build_batch.environment.registry_credential.credential_provider #=> String, one of "SECRETS_MANAGER"
    #   resp.build_batch.environment.image_pull_credentials_type #=> String, one of "CODEBUILD", "SERVICE_ROLE"
    #   resp.build_batch.environment.docker_server.compute_type #=> String, one of "BUILD_GENERAL1_SMALL", "BUILD_GENERAL1_MEDIUM", "BUILD_GENERAL1_LARGE", "BUILD_GENERAL1_XLARGE", "BUILD_GENERAL1_2XLARGE", "BUILD_LAMBDA_1GB", "BUILD_LAMBDA_2GB", "BUILD_LAMBDA_4GB", "BUILD_LAMBDA_8GB", "BUILD_LAMBDA_10GB", "ATTRIBUTE_BASED_COMPUTE", "CUSTOM_INSTANCE_TYPE"
    #   resp.build_batch.environment.docker_server.security_group_ids #=> Array
    #   resp.build_batch.environment.docker_server.security_group_ids[0] #=> String
    #   resp.build_batch.environment.docker_server.status.status #=> String
    #   resp.build_batch.environment.docker_server.status.message #=> String
    #   resp.build_batch.service_role #=> String
    #   resp.build_batch.log_config.cloud_watch_logs.status #=> String, one of "ENABLED", "DISABLED"
    #   resp.build_batch.log_config.cloud_watch_logs.group_name #=> String
    #   resp.build_batch.log_config.cloud_watch_logs.stream_name #=> String
    #   resp.build_batch.log_config.s3_logs.status #=> String, one of "ENABLED", "DISABLED"
    #   resp.build_batch.log_config.s3_logs.location #=> String
    #   resp.build_batch.log_config.s3_logs.encryption_disabled #=> Boolean
    #   resp.build_batch.log_config.s3_logs.bucket_owner_access #=> String, one of "NONE", "READ_ONLY", "FULL"
    #   resp.build_batch.build_timeout_in_minutes #=> Integer
    #   resp.build_batch.queued_timeout_in_minutes #=> Integer
    #   resp.build_batch.complete #=> Boolean
    #   resp.build_batch.initiator #=> String
    #   resp.build_batch.vpc_config.vpc_id #=> String
    #   resp.build_batch.vpc_config.subnets #=> Array
    #   resp.build_batch.vpc_config.subnets[0] #=> String
    #   resp.build_batch.vpc_config.security_group_ids #=> Array
    #   resp.build_batch.vpc_config.security_group_ids[0] #=> String
    #   resp.build_batch.encryption_key #=> String
    #   resp.build_batch.build_batch_number #=> Integer
    #   resp.build_batch.file_system_locations #=> Array
    #   resp.build_batch.file_system_locations[0].type #=> String, one of "EFS"
    #   resp.build_batch.file_system_locations[0].location #=> String
    #   resp.build_batch.file_system_locations[0].mount_point #=> String
    #   resp.build_batch.file_system_locations[0].identifier #=> String
    #   resp.build_batch.file_system_locations[0].mount_options #=> String
    #   resp.build_batch.build_batch_config.service_role #=> String
    #   resp.build_batch.build_batch_config.combine_artifacts #=> Boolean
    #   resp.build_batch.build_batch_config.restrictions.maximum_builds_allowed #=> Integer
    #   resp.build_batch.build_batch_config.restrictions.compute_types_allowed #=> Array
    #   resp.build_batch.build_batch_config.restrictions.compute_types_allowed[0] #=> String
    #   resp.build_batch.build_batch_config.restrictions.fleets_allowed #=> Array
    #   resp.build_batch.build_batch_config.restrictions.fleets_allowed[0] #=> String
    #   resp.build_batch.build_batch_config.timeout_in_mins #=> Integer
    #   resp.build_batch.build_batch_config.batch_report_mode #=> String, one of "REPORT_INDIVIDUAL_BUILDS", "REPORT_AGGREGATED_BATCH"
    #   resp.build_batch.build_groups #=> Array
    #   resp.build_batch.build_groups[0].identifier #=> String
    #   resp.build_batch.build_groups[0].depends_on #=> Array
    #   resp.build_batch.build_groups[0].depends_on[0] #=> String
    #   resp.build_batch.build_groups[0].ignore_failure #=> Boolean
    #   resp.build_batch.build_groups[0].current_build_summary.arn #=> String
    #   resp.build_batch.build_groups[0].current_build_summary.requested_on #=> Time
    #   resp.build_batch.build_groups[0].current_build_summary.build_status #=> String, one of "SUCCEEDED", "FAILED", "FAULT", "TIMED_OUT", "IN_PROGRESS", "STOPPED"
    #   resp.build_batch.build_groups[0].current_build_summary.primary_artifact.type #=> String, one of "CODEPIPELINE", "S3", "NO_ARTIFACTS"
    #   resp.build_batch.build_groups[0].current_build_summary.primary_artifact.location #=> String
    #   resp.build_batch.build_groups[0].current_build_summary.primary_artifact.identifier #=> String
    #   resp.build_batch.build_groups[0].current_build_summary.secondary_artifacts #=> Array
    #   resp.build_batch.build_groups[0].current_build_summary.secondary_artifacts[0].type #=> String, one of "CODEPIPELINE", "S3", "NO_ARTIFACTS"
    #   resp.build_batch.build_groups[0].current_build_summary.secondary_artifacts[0].location #=> String
    #   resp.build_batch.build_groups[0].current_build_summary.secondary_artifacts[0].identifier #=> String
    #   resp.build_batch.build_groups[0].prior_build_summary_list #=> Array
    #   resp.build_batch.build_groups[0].prior_build_summary_list[0].arn #=> String
    #   resp.build_batch.build_groups[0].prior_build_summary_list[0].requested_on #=> Time
    #   resp.build_batch.build_groups[0].prior_build_summary_list[0].build_status #=> String, one of "SUCCEEDED", "FAILED", "FAULT", "TIMED_OUT", "IN_PROGRESS", "STOPPED"
    #   resp.build_batch.build_groups[0].prior_build_summary_list[0].primary_artifact.type #=> String, one of "CODEPIPELINE", "S3", "NO_ARTIFACTS"
    #   resp.build_batch.build_groups[0].prior_build_summary_list[0].primary_artifact.location #=> String
    #   resp.build_batch.build_groups[0].prior_build_summary_list[0].primary_artifact.identifier #=> String
    #   resp.build_batch.build_groups[0].prior_build_summary_list[0].secondary_artifacts #=> Array
    #   resp.build_batch.build_groups[0].prior_build_summary_list[0].secondary_artifacts[0].type #=> String, one of "CODEPIPELINE", "S3", "NO_ARTIFACTS"
    #   resp.build_batch.build_groups[0].prior_build_summary_list[0].secondary_artifacts[0].location #=> String
    #   resp.build_batch.build_groups[0].prior_build_summary_list[0].secondary_artifacts[0].identifier #=> String
    #   resp.build_batch.debug_session_enabled #=> Boolean
    #   resp.build_batch.report_arns #=> Array
    #   resp.build_batch.report_arns[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/StartBuildBatch AWS API Documentation
    #
    # @overload start_build_batch(params = {})
    # @param [Hash] params ({})
    def start_build_batch(params = {}, options = {})
      req = build_request(:start_build_batch, params)
      req.send_request(options)
    end

    # Starts a command execution.
    #
    # @option params [required, String] :sandbox_id
    #   A `sandboxId` or `sandboxArn`.
    #
    # @option params [required, String] :command
    #   The command that needs to be executed.
    #
    # @option params [String] :type
    #   The command type.
    #
    # @return [Types::StartCommandExecutionOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartCommandExecutionOutput#command_execution #command_execution} => Types::CommandExecution
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_command_execution({
    #     sandbox_id: "NonEmptyString", # required
    #     command: "SensitiveNonEmptyString", # required
    #     type: "SHELL", # accepts SHELL
    #   })
    #
    # @example Response structure
    #
    #   resp.command_execution.id #=> String
    #   resp.command_execution.sandbox_id #=> String
    #   resp.command_execution.submit_time #=> Time
    #   resp.command_execution.start_time #=> Time
    #   resp.command_execution.end_time #=> Time
    #   resp.command_execution.status #=> String
    #   resp.command_execution.command #=> String
    #   resp.command_execution.type #=> String, one of "SHELL"
    #   resp.command_execution.exit_code #=> String
    #   resp.command_execution.standard_output_content #=> String
    #   resp.command_execution.standard_err_content #=> String
    #   resp.command_execution.logs.group_name #=> String
    #   resp.command_execution.logs.stream_name #=> String
    #   resp.command_execution.logs.deep_link #=> String
    #   resp.command_execution.logs.s3_deep_link #=> String
    #   resp.command_execution.logs.cloud_watch_logs_arn #=> String
    #   resp.command_execution.logs.s3_logs_arn #=> String
    #   resp.command_execution.logs.cloud_watch_logs.status #=> String, one of "ENABLED", "DISABLED"
    #   resp.command_execution.logs.cloud_watch_logs.group_name #=> String
    #   resp.command_execution.logs.cloud_watch_logs.stream_name #=> String
    #   resp.command_execution.logs.s3_logs.status #=> String, one of "ENABLED", "DISABLED"
    #   resp.command_execution.logs.s3_logs.location #=> String
    #   resp.command_execution.logs.s3_logs.encryption_disabled #=> Boolean
    #   resp.command_execution.logs.s3_logs.bucket_owner_access #=> String, one of "NONE", "READ_ONLY", "FULL"
    #   resp.command_execution.sandbox_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/StartCommandExecution AWS API Documentation
    #
    # @overload start_command_execution(params = {})
    # @param [Hash] params ({})
    def start_command_execution(params = {}, options = {})
      req = build_request(:start_command_execution, params)
      req.send_request(options)
    end

    # Starts a sandbox.
    #
    # @option params [String] :project_name
    #   The CodeBuild project name.
    #
    # @option params [String] :idempotency_token
    #   A unique client token.
    #
    # @return [Types::StartSandboxOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartSandboxOutput#sandbox #sandbox} => Types::Sandbox
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_sandbox({
    #     project_name: "NonEmptyString",
    #     idempotency_token: "SensitiveString",
    #   })
    #
    # @example Response structure
    #
    #   resp.sandbox.id #=> String
    #   resp.sandbox.arn #=> String
    #   resp.sandbox.project_name #=> String
    #   resp.sandbox.request_time #=> Time
    #   resp.sandbox.start_time #=> Time
    #   resp.sandbox.end_time #=> Time
    #   resp.sandbox.status #=> String
    #   resp.sandbox.source.type #=> String, one of "CODECOMMIT", "CODEPIPELINE", "GITHUB", "GITLAB", "GITLAB_SELF_MANAGED", "S3", "BITBUCKET", "GITHUB_ENTERPRISE", "NO_SOURCE"
    #   resp.sandbox.source.location #=> String
    #   resp.sandbox.source.git_clone_depth #=> Integer
    #   resp.sandbox.source.git_submodules_config.fetch_submodules #=> Boolean
    #   resp.sandbox.source.buildspec #=> String
    #   resp.sandbox.source.auth.type #=> String, one of "OAUTH", "CODECONNECTIONS", "SECRETS_MANAGER"
    #   resp.sandbox.source.auth.resource #=> String
    #   resp.sandbox.source.report_build_status #=> Boolean
    #   resp.sandbox.source.build_status_config.context #=> String
    #   resp.sandbox.source.build_status_config.target_url #=> String
    #   resp.sandbox.source.insecure_ssl #=> Boolean
    #   resp.sandbox.source.source_identifier #=> String
    #   resp.sandbox.source_version #=> String
    #   resp.sandbox.secondary_sources #=> Array
    #   resp.sandbox.secondary_sources[0].type #=> String, one of "CODECOMMIT", "CODEPIPELINE", "GITHUB", "GITLAB", "GITLAB_SELF_MANAGED", "S3", "BITBUCKET", "GITHUB_ENTERPRISE", "NO_SOURCE"
    #   resp.sandbox.secondary_sources[0].location #=> String
    #   resp.sandbox.secondary_sources[0].git_clone_depth #=> Integer
    #   resp.sandbox.secondary_sources[0].git_submodules_config.fetch_submodules #=> Boolean
    #   resp.sandbox.secondary_sources[0].buildspec #=> String
    #   resp.sandbox.secondary_sources[0].auth.type #=> String, one of "OAUTH", "CODECONNECTIONS", "SECRETS_MANAGER"
    #   resp.sandbox.secondary_sources[0].auth.resource #=> String
    #   resp.sandbox.secondary_sources[0].report_build_status #=> Boolean
    #   resp.sandbox.secondary_sources[0].build_status_config.context #=> String
    #   resp.sandbox.secondary_sources[0].build_status_config.target_url #=> String
    #   resp.sandbox.secondary_sources[0].insecure_ssl #=> Boolean
    #   resp.sandbox.secondary_sources[0].source_identifier #=> String
    #   resp.sandbox.secondary_source_versions #=> Array
    #   resp.sandbox.secondary_source_versions[0].source_identifier #=> String
    #   resp.sandbox.secondary_source_versions[0].source_version #=> String
    #   resp.sandbox.environment.type #=> String, one of "WINDOWS_CONTAINER", "LINUX_CONTAINER", "LINUX_GPU_CONTAINER", "ARM_CONTAINER", "WINDOWS_SERVER_2019_CONTAINER", "WINDOWS_SERVER_2022_CONTAINER", "LINUX_LAMBDA_CONTAINER", "ARM_LAMBDA_CONTAINER", "LINUX_EC2", "ARM_EC2", "WINDOWS_EC2", "MAC_ARM"
    #   resp.sandbox.environment.image #=> String
    #   resp.sandbox.environment.compute_type #=> String, one of "BUILD_GENERAL1_SMALL", "BUILD_GENERAL1_MEDIUM", "BUILD_GENERAL1_LARGE", "BUILD_GENERAL1_XLARGE", "BUILD_GENERAL1_2XLARGE", "BUILD_LAMBDA_1GB", "BUILD_LAMBDA_2GB", "BUILD_LAMBDA_4GB", "BUILD_LAMBDA_8GB", "BUILD_LAMBDA_10GB", "ATTRIBUTE_BASED_COMPUTE", "CUSTOM_INSTANCE_TYPE"
    #   resp.sandbox.environment.compute_configuration.v_cpu #=> Integer
    #   resp.sandbox.environment.compute_configuration.memory #=> Integer
    #   resp.sandbox.environment.compute_configuration.disk #=> Integer
    #   resp.sandbox.environment.compute_configuration.machine_type #=> String, one of "GENERAL", "NVME"
    #   resp.sandbox.environment.compute_configuration.instance_type #=> String
    #   resp.sandbox.environment.fleet.fleet_arn #=> String
    #   resp.sandbox.environment.environment_variables #=> Array
    #   resp.sandbox.environment.environment_variables[0].name #=> String
    #   resp.sandbox.environment.environment_variables[0].value #=> String
    #   resp.sandbox.environment.environment_variables[0].type #=> String, one of "PLAINTEXT", "PARAMETER_STORE", "SECRETS_MANAGER"
    #   resp.sandbox.environment.privileged_mode #=> Boolean
    #   resp.sandbox.environment.certificate #=> String
    #   resp.sandbox.environment.registry_credential.credential #=> String
    #   resp.sandbox.environment.registry_credential.credential_provider #=> String, one of "SECRETS_MANAGER"
    #   resp.sandbox.environment.image_pull_credentials_type #=> String, one of "CODEBUILD", "SERVICE_ROLE"
    #   resp.sandbox.environment.docker_server.compute_type #=> String, one of "BUILD_GENERAL1_SMALL", "BUILD_GENERAL1_MEDIUM", "BUILD_GENERAL1_LARGE", "BUILD_GENERAL1_XLARGE", "BUILD_GENERAL1_2XLARGE", "BUILD_LAMBDA_1GB", "BUILD_LAMBDA_2GB", "BUILD_LAMBDA_4GB", "BUILD_LAMBDA_8GB", "BUILD_LAMBDA_10GB", "ATTRIBUTE_BASED_COMPUTE", "CUSTOM_INSTANCE_TYPE"
    #   resp.sandbox.environment.docker_server.security_group_ids #=> Array
    #   resp.sandbox.environment.docker_server.security_group_ids[0] #=> String
    #   resp.sandbox.environment.docker_server.status.status #=> String
    #   resp.sandbox.environment.docker_server.status.message #=> String
    #   resp.sandbox.file_system_locations #=> Array
    #   resp.sandbox.file_system_locations[0].type #=> String, one of "EFS"
    #   resp.sandbox.file_system_locations[0].location #=> String
    #   resp.sandbox.file_system_locations[0].mount_point #=> String
    #   resp.sandbox.file_system_locations[0].identifier #=> String
    #   resp.sandbox.file_system_locations[0].mount_options #=> String
    #   resp.sandbox.timeout_in_minutes #=> Integer
    #   resp.sandbox.queued_timeout_in_minutes #=> Integer
    #   resp.sandbox.vpc_config.vpc_id #=> String
    #   resp.sandbox.vpc_config.subnets #=> Array
    #   resp.sandbox.vpc_config.subnets[0] #=> String
    #   resp.sandbox.vpc_config.security_group_ids #=> Array
    #   resp.sandbox.vpc_config.security_group_ids[0] #=> String
    #   resp.sandbox.log_config.cloud_watch_logs.status #=> String, one of "ENABLED", "DISABLED"
    #   resp.sandbox.log_config.cloud_watch_logs.group_name #=> String
    #   resp.sandbox.log_config.cloud_watch_logs.stream_name #=> String
    #   resp.sandbox.log_config.s3_logs.status #=> String, one of "ENABLED", "DISABLED"
    #   resp.sandbox.log_config.s3_logs.location #=> String
    #   resp.sandbox.log_config.s3_logs.encryption_disabled #=> Boolean
    #   resp.sandbox.log_config.s3_logs.bucket_owner_access #=> String, one of "NONE", "READ_ONLY", "FULL"
    #   resp.sandbox.encryption_key #=> String
    #   resp.sandbox.service_role #=> String
    #   resp.sandbox.current_session.id #=> String
    #   resp.sandbox.current_session.status #=> String
    #   resp.sandbox.current_session.start_time #=> Time
    #   resp.sandbox.current_session.end_time #=> Time
    #   resp.sandbox.current_session.current_phase #=> String
    #   resp.sandbox.current_session.phases #=> Array
    #   resp.sandbox.current_session.phases[0].phase_type #=> String
    #   resp.sandbox.current_session.phases[0].phase_status #=> String, one of "SUCCEEDED", "FAILED", "FAULT", "TIMED_OUT", "IN_PROGRESS", "STOPPED"
    #   resp.sandbox.current_session.phases[0].start_time #=> Time
    #   resp.sandbox.current_session.phases[0].end_time #=> Time
    #   resp.sandbox.current_session.phases[0].duration_in_seconds #=> Integer
    #   resp.sandbox.current_session.phases[0].contexts #=> Array
    #   resp.sandbox.current_session.phases[0].contexts[0].status_code #=> String
    #   resp.sandbox.current_session.phases[0].contexts[0].message #=> String
    #   resp.sandbox.current_session.resolved_source_version #=> String
    #   resp.sandbox.current_session.logs.group_name #=> String
    #   resp.sandbox.current_session.logs.stream_name #=> String
    #   resp.sandbox.current_session.logs.deep_link #=> String
    #   resp.sandbox.current_session.logs.s3_deep_link #=> String
    #   resp.sandbox.current_session.logs.cloud_watch_logs_arn #=> String
    #   resp.sandbox.current_session.logs.s3_logs_arn #=> String
    #   resp.sandbox.current_session.logs.cloud_watch_logs.status #=> String, one of "ENABLED", "DISABLED"
    #   resp.sandbox.current_session.logs.cloud_watch_logs.group_name #=> String
    #   resp.sandbox.current_session.logs.cloud_watch_logs.stream_name #=> String
    #   resp.sandbox.current_session.logs.s3_logs.status #=> String, one of "ENABLED", "DISABLED"
    #   resp.sandbox.current_session.logs.s3_logs.location #=> String
    #   resp.sandbox.current_session.logs.s3_logs.encryption_disabled #=> Boolean
    #   resp.sandbox.current_session.logs.s3_logs.bucket_owner_access #=> String, one of "NONE", "READ_ONLY", "FULL"
    #   resp.sandbox.current_session.network_interface.subnet_id #=> String
    #   resp.sandbox.current_session.network_interface.network_interface_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/StartSandbox AWS API Documentation
    #
    # @overload start_sandbox(params = {})
    # @param [Hash] params ({})
    def start_sandbox(params = {}, options = {})
      req = build_request(:start_sandbox, params)
      req.send_request(options)
    end

    # Starts a sandbox connection.
    #
    # @option params [required, String] :sandbox_id
    #   A `sandboxId` or `sandboxArn`.
    #
    # @return [Types::StartSandboxConnectionOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartSandboxConnectionOutput#ssm_session #ssm_session} => Types::SSMSession
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_sandbox_connection({
    #     sandbox_id: "NonEmptyString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.ssm_session.session_id #=> String
    #   resp.ssm_session.token_value #=> String
    #   resp.ssm_session.stream_url #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/StartSandboxConnection AWS API Documentation
    #
    # @overload start_sandbox_connection(params = {})
    # @param [Hash] params ({})
    def start_sandbox_connection(params = {}, options = {})
      req = build_request(:start_sandbox_connection, params)
      req.send_request(options)
    end

    # Attempts to stop running a build.
    #
    # @option params [required, String] :id
    #   The ID of the build.
    #
    # @return [Types::StopBuildOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StopBuildOutput#build #build} => Types::Build
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_build({
    #     id: "NonEmptyString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.build.id #=> String
    #   resp.build.arn #=> String
    #   resp.build.build_number #=> Integer
    #   resp.build.start_time #=> Time
    #   resp.build.end_time #=> Time
    #   resp.build.current_phase #=> String
    #   resp.build.build_status #=> String, one of "SUCCEEDED", "FAILED", "FAULT", "TIMED_OUT", "IN_PROGRESS", "STOPPED"
    #   resp.build.source_version #=> String
    #   resp.build.resolved_source_version #=> String
    #   resp.build.project_name #=> String
    #   resp.build.phases #=> Array
    #   resp.build.phases[0].phase_type #=> String, one of "SUBMITTED", "QUEUED", "PROVISIONING", "DOWNLOAD_SOURCE", "INSTALL", "PRE_BUILD", "BUILD", "POST_BUILD", "UPLOAD_ARTIFACTS", "FINALIZING", "COMPLETED"
    #   resp.build.phases[0].phase_status #=> String, one of "SUCCEEDED", "FAILED", "FAULT", "TIMED_OUT", "IN_PROGRESS", "STOPPED"
    #   resp.build.phases[0].start_time #=> Time
    #   resp.build.phases[0].end_time #=> Time
    #   resp.build.phases[0].duration_in_seconds #=> Integer
    #   resp.build.phases[0].contexts #=> Array
    #   resp.build.phases[0].contexts[0].status_code #=> String
    #   resp.build.phases[0].contexts[0].message #=> String
    #   resp.build.source.type #=> String, one of "CODECOMMIT", "CODEPIPELINE", "GITHUB", "GITLAB", "GITLAB_SELF_MANAGED", "S3", "BITBUCKET", "GITHUB_ENTERPRISE", "NO_SOURCE"
    #   resp.build.source.location #=> String
    #   resp.build.source.git_clone_depth #=> Integer
    #   resp.build.source.git_submodules_config.fetch_submodules #=> Boolean
    #   resp.build.source.buildspec #=> String
    #   resp.build.source.auth.type #=> String, one of "OAUTH", "CODECONNECTIONS", "SECRETS_MANAGER"
    #   resp.build.source.auth.resource #=> String
    #   resp.build.source.report_build_status #=> Boolean
    #   resp.build.source.build_status_config.context #=> String
    #   resp.build.source.build_status_config.target_url #=> String
    #   resp.build.source.insecure_ssl #=> Boolean
    #   resp.build.source.source_identifier #=> String
    #   resp.build.secondary_sources #=> Array
    #   resp.build.secondary_sources[0].type #=> String, one of "CODECOMMIT", "CODEPIPELINE", "GITHUB", "GITLAB", "GITLAB_SELF_MANAGED", "S3", "BITBUCKET", "GITHUB_ENTERPRISE", "NO_SOURCE"
    #   resp.build.secondary_sources[0].location #=> String
    #   resp.build.secondary_sources[0].git_clone_depth #=> Integer
    #   resp.build.secondary_sources[0].git_submodules_config.fetch_submodules #=> Boolean
    #   resp.build.secondary_sources[0].buildspec #=> String
    #   resp.build.secondary_sources[0].auth.type #=> String, one of "OAUTH", "CODECONNECTIONS", "SECRETS_MANAGER"
    #   resp.build.secondary_sources[0].auth.resource #=> String
    #   resp.build.secondary_sources[0].report_build_status #=> Boolean
    #   resp.build.secondary_sources[0].build_status_config.context #=> String
    #   resp.build.secondary_sources[0].build_status_config.target_url #=> String
    #   resp.build.secondary_sources[0].insecure_ssl #=> Boolean
    #   resp.build.secondary_sources[0].source_identifier #=> String
    #   resp.build.secondary_source_versions #=> Array
    #   resp.build.secondary_source_versions[0].source_identifier #=> String
    #   resp.build.secondary_source_versions[0].source_version #=> String
    #   resp.build.artifacts.location #=> String
    #   resp.build.artifacts.sha256sum #=> String
    #   resp.build.artifacts.md5sum #=> String
    #   resp.build.artifacts.override_artifact_name #=> Boolean
    #   resp.build.artifacts.encryption_disabled #=> Boolean
    #   resp.build.artifacts.artifact_identifier #=> String
    #   resp.build.artifacts.bucket_owner_access #=> String, one of "NONE", "READ_ONLY", "FULL"
    #   resp.build.secondary_artifacts #=> Array
    #   resp.build.secondary_artifacts[0].location #=> String
    #   resp.build.secondary_artifacts[0].sha256sum #=> String
    #   resp.build.secondary_artifacts[0].md5sum #=> String
    #   resp.build.secondary_artifacts[0].override_artifact_name #=> Boolean
    #   resp.build.secondary_artifacts[0].encryption_disabled #=> Boolean
    #   resp.build.secondary_artifacts[0].artifact_identifier #=> String
    #   resp.build.secondary_artifacts[0].bucket_owner_access #=> String, one of "NONE", "READ_ONLY", "FULL"
    #   resp.build.cache.type #=> String, one of "NO_CACHE", "S3", "LOCAL"
    #   resp.build.cache.location #=> String
    #   resp.build.cache.modes #=> Array
    #   resp.build.cache.modes[0] #=> String, one of "LOCAL_DOCKER_LAYER_CACHE", "LOCAL_SOURCE_CACHE", "LOCAL_CUSTOM_CACHE"
    #   resp.build.cache.cache_namespace #=> String
    #   resp.build.environment.type #=> String, one of "WINDOWS_CONTAINER", "LINUX_CONTAINER", "LINUX_GPU_CONTAINER", "ARM_CONTAINER", "WINDOWS_SERVER_2019_CONTAINER", "WINDOWS_SERVER_2022_CONTAINER", "LINUX_LAMBDA_CONTAINER", "ARM_LAMBDA_CONTAINER", "LINUX_EC2", "ARM_EC2", "WINDOWS_EC2", "MAC_ARM"
    #   resp.build.environment.image #=> String
    #   resp.build.environment.compute_type #=> String, one of "BUILD_GENERAL1_SMALL", "BUILD_GENERAL1_MEDIUM", "BUILD_GENERAL1_LARGE", "BUILD_GENERAL1_XLARGE", "BUILD_GENERAL1_2XLARGE", "BUILD_LAMBDA_1GB", "BUILD_LAMBDA_2GB", "BUILD_LAMBDA_4GB", "BUILD_LAMBDA_8GB", "BUILD_LAMBDA_10GB", "ATTRIBUTE_BASED_COMPUTE", "CUSTOM_INSTANCE_TYPE"
    #   resp.build.environment.compute_configuration.v_cpu #=> Integer
    #   resp.build.environment.compute_configuration.memory #=> Integer
    #   resp.build.environment.compute_configuration.disk #=> Integer
    #   resp.build.environment.compute_configuration.machine_type #=> String, one of "GENERAL", "NVME"
    #   resp.build.environment.compute_configuration.instance_type #=> String
    #   resp.build.environment.fleet.fleet_arn #=> String
    #   resp.build.environment.environment_variables #=> Array
    #   resp.build.environment.environment_variables[0].name #=> String
    #   resp.build.environment.environment_variables[0].value #=> String
    #   resp.build.environment.environment_variables[0].type #=> String, one of "PLAINTEXT", "PARAMETER_STORE", "SECRETS_MANAGER"
    #   resp.build.environment.privileged_mode #=> Boolean
    #   resp.build.environment.certificate #=> String
    #   resp.build.environment.registry_credential.credential #=> String
    #   resp.build.environment.registry_credential.credential_provider #=> String, one of "SECRETS_MANAGER"
    #   resp.build.environment.image_pull_credentials_type #=> String, one of "CODEBUILD", "SERVICE_ROLE"
    #   resp.build.environment.docker_server.compute_type #=> String, one of "BUILD_GENERAL1_SMALL", "BUILD_GENERAL1_MEDIUM", "BUILD_GENERAL1_LARGE", "BUILD_GENERAL1_XLARGE", "BUILD_GENERAL1_2XLARGE", "BUILD_LAMBDA_1GB", "BUILD_LAMBDA_2GB", "BUILD_LAMBDA_4GB", "BUILD_LAMBDA_8GB", "BUILD_LAMBDA_10GB", "ATTRIBUTE_BASED_COMPUTE", "CUSTOM_INSTANCE_TYPE"
    #   resp.build.environment.docker_server.security_group_ids #=> Array
    #   resp.build.environment.docker_server.security_group_ids[0] #=> String
    #   resp.build.environment.docker_server.status.status #=> String
    #   resp.build.environment.docker_server.status.message #=> String
    #   resp.build.service_role #=> String
    #   resp.build.logs.group_name #=> String
    #   resp.build.logs.stream_name #=> String
    #   resp.build.logs.deep_link #=> String
    #   resp.build.logs.s3_deep_link #=> String
    #   resp.build.logs.cloud_watch_logs_arn #=> String
    #   resp.build.logs.s3_logs_arn #=> String
    #   resp.build.logs.cloud_watch_logs.status #=> String, one of "ENABLED", "DISABLED"
    #   resp.build.logs.cloud_watch_logs.group_name #=> String
    #   resp.build.logs.cloud_watch_logs.stream_name #=> String
    #   resp.build.logs.s3_logs.status #=> String, one of "ENABLED", "DISABLED"
    #   resp.build.logs.s3_logs.location #=> String
    #   resp.build.logs.s3_logs.encryption_disabled #=> Boolean
    #   resp.build.logs.s3_logs.bucket_owner_access #=> String, one of "NONE", "READ_ONLY", "FULL"
    #   resp.build.timeout_in_minutes #=> Integer
    #   resp.build.queued_timeout_in_minutes #=> Integer
    #   resp.build.build_complete #=> Boolean
    #   resp.build.initiator #=> String
    #   resp.build.vpc_config.vpc_id #=> String
    #   resp.build.vpc_config.subnets #=> Array
    #   resp.build.vpc_config.subnets[0] #=> String
    #   resp.build.vpc_config.security_group_ids #=> Array
    #   resp.build.vpc_config.security_group_ids[0] #=> String
    #   resp.build.network_interface.subnet_id #=> String
    #   resp.build.network_interface.network_interface_id #=> String
    #   resp.build.encryption_key #=> String
    #   resp.build.exported_environment_variables #=> Array
    #   resp.build.exported_environment_variables[0].name #=> String
    #   resp.build.exported_environment_variables[0].value #=> String
    #   resp.build.report_arns #=> Array
    #   resp.build.report_arns[0] #=> String
    #   resp.build.file_system_locations #=> Array
    #   resp.build.file_system_locations[0].type #=> String, one of "EFS"
    #   resp.build.file_system_locations[0].location #=> String
    #   resp.build.file_system_locations[0].mount_point #=> String
    #   resp.build.file_system_locations[0].identifier #=> String
    #   resp.build.file_system_locations[0].mount_options #=> String
    #   resp.build.debug_session.session_enabled #=> Boolean
    #   resp.build.debug_session.session_target #=> String
    #   resp.build.build_batch_arn #=> String
    #   resp.build.auto_retry_config.auto_retry_limit #=> Integer
    #   resp.build.auto_retry_config.auto_retry_number #=> Integer
    #   resp.build.auto_retry_config.next_auto_retry #=> String
    #   resp.build.auto_retry_config.previous_auto_retry #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/StopBuild AWS API Documentation
    #
    # @overload stop_build(params = {})
    # @param [Hash] params ({})
    def stop_build(params = {}, options = {})
      req = build_request(:stop_build, params)
      req.send_request(options)
    end

    # Stops a running batch build.
    #
    # @option params [required, String] :id
    #   The identifier of the batch build to stop.
    #
    # @return [Types::StopBuildBatchOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StopBuildBatchOutput#build_batch #build_batch} => Types::BuildBatch
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_build_batch({
    #     id: "NonEmptyString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.build_batch.id #=> String
    #   resp.build_batch.arn #=> String
    #   resp.build_batch.start_time #=> Time
    #   resp.build_batch.end_time #=> Time
    #   resp.build_batch.current_phase #=> String
    #   resp.build_batch.build_batch_status #=> String, one of "SUCCEEDED", "FAILED", "FAULT", "TIMED_OUT", "IN_PROGRESS", "STOPPED"
    #   resp.build_batch.source_version #=> String
    #   resp.build_batch.resolved_source_version #=> String
    #   resp.build_batch.project_name #=> String
    #   resp.build_batch.phases #=> Array
    #   resp.build_batch.phases[0].phase_type #=> String, one of "SUBMITTED", "DOWNLOAD_BATCHSPEC", "IN_PROGRESS", "COMBINE_ARTIFACTS", "SUCCEEDED", "FAILED", "STOPPED"
    #   resp.build_batch.phases[0].phase_status #=> String, one of "SUCCEEDED", "FAILED", "FAULT", "TIMED_OUT", "IN_PROGRESS", "STOPPED"
    #   resp.build_batch.phases[0].start_time #=> Time
    #   resp.build_batch.phases[0].end_time #=> Time
    #   resp.build_batch.phases[0].duration_in_seconds #=> Integer
    #   resp.build_batch.phases[0].contexts #=> Array
    #   resp.build_batch.phases[0].contexts[0].status_code #=> String
    #   resp.build_batch.phases[0].contexts[0].message #=> String
    #   resp.build_batch.source.type #=> String, one of "CODECOMMIT", "CODEPIPELINE", "GITHUB", "GITLAB", "GITLAB_SELF_MANAGED", "S3", "BITBUCKET", "GITHUB_ENTERPRISE", "NO_SOURCE"
    #   resp.build_batch.source.location #=> String
    #   resp.build_batch.source.git_clone_depth #=> Integer
    #   resp.build_batch.source.git_submodules_config.fetch_submodules #=> Boolean
    #   resp.build_batch.source.buildspec #=> String
    #   resp.build_batch.source.auth.type #=> String, one of "OAUTH", "CODECONNECTIONS", "SECRETS_MANAGER"
    #   resp.build_batch.source.auth.resource #=> String
    #   resp.build_batch.source.report_build_status #=> Boolean
    #   resp.build_batch.source.build_status_config.context #=> String
    #   resp.build_batch.source.build_status_config.target_url #=> String
    #   resp.build_batch.source.insecure_ssl #=> Boolean
    #   resp.build_batch.source.source_identifier #=> String
    #   resp.build_batch.secondary_sources #=> Array
    #   resp.build_batch.secondary_sources[0].type #=> String, one of "CODECOMMIT", "CODEPIPELINE", "GITHUB", "GITLAB", "GITLAB_SELF_MANAGED", "S3", "BITBUCKET", "GITHUB_ENTERPRISE", "NO_SOURCE"
    #   resp.build_batch.secondary_sources[0].location #=> String
    #   resp.build_batch.secondary_sources[0].git_clone_depth #=> Integer
    #   resp.build_batch.secondary_sources[0].git_submodules_config.fetch_submodules #=> Boolean
    #   resp.build_batch.secondary_sources[0].buildspec #=> String
    #   resp.build_batch.secondary_sources[0].auth.type #=> String, one of "OAUTH", "CODECONNECTIONS", "SECRETS_MANAGER"
    #   resp.build_batch.secondary_sources[0].auth.resource #=> String
    #   resp.build_batch.secondary_sources[0].report_build_status #=> Boolean
    #   resp.build_batch.secondary_sources[0].build_status_config.context #=> String
    #   resp.build_batch.secondary_sources[0].build_status_config.target_url #=> String
    #   resp.build_batch.secondary_sources[0].insecure_ssl #=> Boolean
    #   resp.build_batch.secondary_sources[0].source_identifier #=> String
    #   resp.build_batch.secondary_source_versions #=> Array
    #   resp.build_batch.secondary_source_versions[0].source_identifier #=> String
    #   resp.build_batch.secondary_source_versions[0].source_version #=> String
    #   resp.build_batch.artifacts.location #=> String
    #   resp.build_batch.artifacts.sha256sum #=> String
    #   resp.build_batch.artifacts.md5sum #=> String
    #   resp.build_batch.artifacts.override_artifact_name #=> Boolean
    #   resp.build_batch.artifacts.encryption_disabled #=> Boolean
    #   resp.build_batch.artifacts.artifact_identifier #=> String
    #   resp.build_batch.artifacts.bucket_owner_access #=> String, one of "NONE", "READ_ONLY", "FULL"
    #   resp.build_batch.secondary_artifacts #=> Array
    #   resp.build_batch.secondary_artifacts[0].location #=> String
    #   resp.build_batch.secondary_artifacts[0].sha256sum #=> String
    #   resp.build_batch.secondary_artifacts[0].md5sum #=> String
    #   resp.build_batch.secondary_artifacts[0].override_artifact_name #=> Boolean
    #   resp.build_batch.secondary_artifacts[0].encryption_disabled #=> Boolean
    #   resp.build_batch.secondary_artifacts[0].artifact_identifier #=> String
    #   resp.build_batch.secondary_artifacts[0].bucket_owner_access #=> String, one of "NONE", "READ_ONLY", "FULL"
    #   resp.build_batch.cache.type #=> String, one of "NO_CACHE", "S3", "LOCAL"
    #   resp.build_batch.cache.location #=> String
    #   resp.build_batch.cache.modes #=> Array
    #   resp.build_batch.cache.modes[0] #=> String, one of "LOCAL_DOCKER_LAYER_CACHE", "LOCAL_SOURCE_CACHE", "LOCAL_CUSTOM_CACHE"
    #   resp.build_batch.cache.cache_namespace #=> String
    #   resp.build_batch.environment.type #=> String, one of "WINDOWS_CONTAINER", "LINUX_CONTAINER", "LINUX_GPU_CONTAINER", "ARM_CONTAINER", "WINDOWS_SERVER_2019_CONTAINER", "WINDOWS_SERVER_2022_CONTAINER", "LINUX_LAMBDA_CONTAINER", "ARM_LAMBDA_CONTAINER", "LINUX_EC2", "ARM_EC2", "WINDOWS_EC2", "MAC_ARM"
    #   resp.build_batch.environment.image #=> String
    #   resp.build_batch.environment.compute_type #=> String, one of "BUILD_GENERAL1_SMALL", "BUILD_GENERAL1_MEDIUM", "BUILD_GENERAL1_LARGE", "BUILD_GENERAL1_XLARGE", "BUILD_GENERAL1_2XLARGE", "BUILD_LAMBDA_1GB", "BUILD_LAMBDA_2GB", "BUILD_LAMBDA_4GB", "BUILD_LAMBDA_8GB", "BUILD_LAMBDA_10GB", "ATTRIBUTE_BASED_COMPUTE", "CUSTOM_INSTANCE_TYPE"
    #   resp.build_batch.environment.compute_configuration.v_cpu #=> Integer
    #   resp.build_batch.environment.compute_configuration.memory #=> Integer
    #   resp.build_batch.environment.compute_configuration.disk #=> Integer
    #   resp.build_batch.environment.compute_configuration.machine_type #=> String, one of "GENERAL", "NVME"
    #   resp.build_batch.environment.compute_configuration.instance_type #=> String
    #   resp.build_batch.environment.fleet.fleet_arn #=> String
    #   resp.build_batch.environment.environment_variables #=> Array
    #   resp.build_batch.environment.environment_variables[0].name #=> String
    #   resp.build_batch.environment.environment_variables[0].value #=> String
    #   resp.build_batch.environment.environment_variables[0].type #=> String, one of "PLAINTEXT", "PARAMETER_STORE", "SECRETS_MANAGER"
    #   resp.build_batch.environment.privileged_mode #=> Boolean
    #   resp.build_batch.environment.certificate #=> String
    #   resp.build_batch.environment.registry_credential.credential #=> String
    #   resp.build_batch.environment.registry_credential.credential_provider #=> String, one of "SECRETS_MANAGER"
    #   resp.build_batch.environment.image_pull_credentials_type #=> String, one of "CODEBUILD", "SERVICE_ROLE"
    #   resp.build_batch.environment.docker_server.compute_type #=> String, one of "BUILD_GENERAL1_SMALL", "BUILD_GENERAL1_MEDIUM", "BUILD_GENERAL1_LARGE", "BUILD_GENERAL1_XLARGE", "BUILD_GENERAL1_2XLARGE", "BUILD_LAMBDA_1GB", "BUILD_LAMBDA_2GB", "BUILD_LAMBDA_4GB", "BUILD_LAMBDA_8GB", "BUILD_LAMBDA_10GB", "ATTRIBUTE_BASED_COMPUTE", "CUSTOM_INSTANCE_TYPE"
    #   resp.build_batch.environment.docker_server.security_group_ids #=> Array
    #   resp.build_batch.environment.docker_server.security_group_ids[0] #=> String
    #   resp.build_batch.environment.docker_server.status.status #=> String
    #   resp.build_batch.environment.docker_server.status.message #=> String
    #   resp.build_batch.service_role #=> String
    #   resp.build_batch.log_config.cloud_watch_logs.status #=> String, one of "ENABLED", "DISABLED"
    #   resp.build_batch.log_config.cloud_watch_logs.group_name #=> String
    #   resp.build_batch.log_config.cloud_watch_logs.stream_name #=> String
    #   resp.build_batch.log_config.s3_logs.status #=> String, one of "ENABLED", "DISABLED"
    #   resp.build_batch.log_config.s3_logs.location #=> String
    #   resp.build_batch.log_config.s3_logs.encryption_disabled #=> Boolean
    #   resp.build_batch.log_config.s3_logs.bucket_owner_access #=> String, one of "NONE", "READ_ONLY", "FULL"
    #   resp.build_batch.build_timeout_in_minutes #=> Integer
    #   resp.build_batch.queued_timeout_in_minutes #=> Integer
    #   resp.build_batch.complete #=> Boolean
    #   resp.build_batch.initiator #=> String
    #   resp.build_batch.vpc_config.vpc_id #=> String
    #   resp.build_batch.vpc_config.subnets #=> Array
    #   resp.build_batch.vpc_config.subnets[0] #=> String
    #   resp.build_batch.vpc_config.security_group_ids #=> Array
    #   resp.build_batch.vpc_config.security_group_ids[0] #=> String
    #   resp.build_batch.encryption_key #=> String
    #   resp.build_batch.build_batch_number #=> Integer
    #   resp.build_batch.file_system_locations #=> Array
    #   resp.build_batch.file_system_locations[0].type #=> String, one of "EFS"
    #   resp.build_batch.file_system_locations[0].location #=> String
    #   resp.build_batch.file_system_locations[0].mount_point #=> String
    #   resp.build_batch.file_system_locations[0].identifier #=> String
    #   resp.build_batch.file_system_locations[0].mount_options #=> String
    #   resp.build_batch.build_batch_config.service_role #=> String
    #   resp.build_batch.build_batch_config.combine_artifacts #=> Boolean
    #   resp.build_batch.build_batch_config.restrictions.maximum_builds_allowed #=> Integer
    #   resp.build_batch.build_batch_config.restrictions.compute_types_allowed #=> Array
    #   resp.build_batch.build_batch_config.restrictions.compute_types_allowed[0] #=> String
    #   resp.build_batch.build_batch_config.restrictions.fleets_allowed #=> Array
    #   resp.build_batch.build_batch_config.restrictions.fleets_allowed[0] #=> String
    #   resp.build_batch.build_batch_config.timeout_in_mins #=> Integer
    #   resp.build_batch.build_batch_config.batch_report_mode #=> String, one of "REPORT_INDIVIDUAL_BUILDS", "REPORT_AGGREGATED_BATCH"
    #   resp.build_batch.build_groups #=> Array
    #   resp.build_batch.build_groups[0].identifier #=> String
    #   resp.build_batch.build_groups[0].depends_on #=> Array
    #   resp.build_batch.build_groups[0].depends_on[0] #=> String
    #   resp.build_batch.build_groups[0].ignore_failure #=> Boolean
    #   resp.build_batch.build_groups[0].current_build_summary.arn #=> String
    #   resp.build_batch.build_groups[0].current_build_summary.requested_on #=> Time
    #   resp.build_batch.build_groups[0].current_build_summary.build_status #=> String, one of "SUCCEEDED", "FAILED", "FAULT", "TIMED_OUT", "IN_PROGRESS", "STOPPED"
    #   resp.build_batch.build_groups[0].current_build_summary.primary_artifact.type #=> String, one of "CODEPIPELINE", "S3", "NO_ARTIFACTS"
    #   resp.build_batch.build_groups[0].current_build_summary.primary_artifact.location #=> String
    #   resp.build_batch.build_groups[0].current_build_summary.primary_artifact.identifier #=> String
    #   resp.build_batch.build_groups[0].current_build_summary.secondary_artifacts #=> Array
    #   resp.build_batch.build_groups[0].current_build_summary.secondary_artifacts[0].type #=> String, one of "CODEPIPELINE", "S3", "NO_ARTIFACTS"
    #   resp.build_batch.build_groups[0].current_build_summary.secondary_artifacts[0].location #=> String
    #   resp.build_batch.build_groups[0].current_build_summary.secondary_artifacts[0].identifier #=> String
    #   resp.build_batch.build_groups[0].prior_build_summary_list #=> Array
    #   resp.build_batch.build_groups[0].prior_build_summary_list[0].arn #=> String
    #   resp.build_batch.build_groups[0].prior_build_summary_list[0].requested_on #=> Time
    #   resp.build_batch.build_groups[0].prior_build_summary_list[0].build_status #=> String, one of "SUCCEEDED", "FAILED", "FAULT", "TIMED_OUT", "IN_PROGRESS", "STOPPED"
    #   resp.build_batch.build_groups[0].prior_build_summary_list[0].primary_artifact.type #=> String, one of "CODEPIPELINE", "S3", "NO_ARTIFACTS"
    #   resp.build_batch.build_groups[0].prior_build_summary_list[0].primary_artifact.location #=> String
    #   resp.build_batch.build_groups[0].prior_build_summary_list[0].primary_artifact.identifier #=> String
    #   resp.build_batch.build_groups[0].prior_build_summary_list[0].secondary_artifacts #=> Array
    #   resp.build_batch.build_groups[0].prior_build_summary_list[0].secondary_artifacts[0].type #=> String, one of "CODEPIPELINE", "S3", "NO_ARTIFACTS"
    #   resp.build_batch.build_groups[0].prior_build_summary_list[0].secondary_artifacts[0].location #=> String
    #   resp.build_batch.build_groups[0].prior_build_summary_list[0].secondary_artifacts[0].identifier #=> String
    #   resp.build_batch.debug_session_enabled #=> Boolean
    #   resp.build_batch.report_arns #=> Array
    #   resp.build_batch.report_arns[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/StopBuildBatch AWS API Documentation
    #
    # @overload stop_build_batch(params = {})
    # @param [Hash] params ({})
    def stop_build_batch(params = {}, options = {})
      req = build_request(:stop_build_batch, params)
      req.send_request(options)
    end

    # Stops a sandbox.
    #
    # @option params [required, String] :id
    #   Information about the requested sandbox ID.
    #
    # @return [Types::StopSandboxOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StopSandboxOutput#sandbox #sandbox} => Types::Sandbox
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_sandbox({
    #     id: "NonEmptyString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.sandbox.id #=> String
    #   resp.sandbox.arn #=> String
    #   resp.sandbox.project_name #=> String
    #   resp.sandbox.request_time #=> Time
    #   resp.sandbox.start_time #=> Time
    #   resp.sandbox.end_time #=> Time
    #   resp.sandbox.status #=> String
    #   resp.sandbox.source.type #=> String, one of "CODECOMMIT", "CODEPIPELINE", "GITHUB", "GITLAB", "GITLAB_SELF_MANAGED", "S3", "BITBUCKET", "GITHUB_ENTERPRISE", "NO_SOURCE"
    #   resp.sandbox.source.location #=> String
    #   resp.sandbox.source.git_clone_depth #=> Integer
    #   resp.sandbox.source.git_submodules_config.fetch_submodules #=> Boolean
    #   resp.sandbox.source.buildspec #=> String
    #   resp.sandbox.source.auth.type #=> String, one of "OAUTH", "CODECONNECTIONS", "SECRETS_MANAGER"
    #   resp.sandbox.source.auth.resource #=> String
    #   resp.sandbox.source.report_build_status #=> Boolean
    #   resp.sandbox.source.build_status_config.context #=> String
    #   resp.sandbox.source.build_status_config.target_url #=> String
    #   resp.sandbox.source.insecure_ssl #=> Boolean
    #   resp.sandbox.source.source_identifier #=> String
    #   resp.sandbox.source_version #=> String
    #   resp.sandbox.secondary_sources #=> Array
    #   resp.sandbox.secondary_sources[0].type #=> String, one of "CODECOMMIT", "CODEPIPELINE", "GITHUB", "GITLAB", "GITLAB_SELF_MANAGED", "S3", "BITBUCKET", "GITHUB_ENTERPRISE", "NO_SOURCE"
    #   resp.sandbox.secondary_sources[0].location #=> String
    #   resp.sandbox.secondary_sources[0].git_clone_depth #=> Integer
    #   resp.sandbox.secondary_sources[0].git_submodules_config.fetch_submodules #=> Boolean
    #   resp.sandbox.secondary_sources[0].buildspec #=> String
    #   resp.sandbox.secondary_sources[0].auth.type #=> String, one of "OAUTH", "CODECONNECTIONS", "SECRETS_MANAGER"
    #   resp.sandbox.secondary_sources[0].auth.resource #=> String
    #   resp.sandbox.secondary_sources[0].report_build_status #=> Boolean
    #   resp.sandbox.secondary_sources[0].build_status_config.context #=> String
    #   resp.sandbox.secondary_sources[0].build_status_config.target_url #=> String
    #   resp.sandbox.secondary_sources[0].insecure_ssl #=> Boolean
    #   resp.sandbox.secondary_sources[0].source_identifier #=> String
    #   resp.sandbox.secondary_source_versions #=> Array
    #   resp.sandbox.secondary_source_versions[0].source_identifier #=> String
    #   resp.sandbox.secondary_source_versions[0].source_version #=> String
    #   resp.sandbox.environment.type #=> String, one of "WINDOWS_CONTAINER", "LINUX_CONTAINER", "LINUX_GPU_CONTAINER", "ARM_CONTAINER", "WINDOWS_SERVER_2019_CONTAINER", "WINDOWS_SERVER_2022_CONTAINER", "LINUX_LAMBDA_CONTAINER", "ARM_LAMBDA_CONTAINER", "LINUX_EC2", "ARM_EC2", "WINDOWS_EC2", "MAC_ARM"
    #   resp.sandbox.environment.image #=> String
    #   resp.sandbox.environment.compute_type #=> String, one of "BUILD_GENERAL1_SMALL", "BUILD_GENERAL1_MEDIUM", "BUILD_GENERAL1_LARGE", "BUILD_GENERAL1_XLARGE", "BUILD_GENERAL1_2XLARGE", "BUILD_LAMBDA_1GB", "BUILD_LAMBDA_2GB", "BUILD_LAMBDA_4GB", "BUILD_LAMBDA_8GB", "BUILD_LAMBDA_10GB", "ATTRIBUTE_BASED_COMPUTE", "CUSTOM_INSTANCE_TYPE"
    #   resp.sandbox.environment.compute_configuration.v_cpu #=> Integer
    #   resp.sandbox.environment.compute_configuration.memory #=> Integer
    #   resp.sandbox.environment.compute_configuration.disk #=> Integer
    #   resp.sandbox.environment.compute_configuration.machine_type #=> String, one of "GENERAL", "NVME"
    #   resp.sandbox.environment.compute_configuration.instance_type #=> String
    #   resp.sandbox.environment.fleet.fleet_arn #=> String
    #   resp.sandbox.environment.environment_variables #=> Array
    #   resp.sandbox.environment.environment_variables[0].name #=> String
    #   resp.sandbox.environment.environment_variables[0].value #=> String
    #   resp.sandbox.environment.environment_variables[0].type #=> String, one of "PLAINTEXT", "PARAMETER_STORE", "SECRETS_MANAGER"
    #   resp.sandbox.environment.privileged_mode #=> Boolean
    #   resp.sandbox.environment.certificate #=> String
    #   resp.sandbox.environment.registry_credential.credential #=> String
    #   resp.sandbox.environment.registry_credential.credential_provider #=> String, one of "SECRETS_MANAGER"
    #   resp.sandbox.environment.image_pull_credentials_type #=> String, one of "CODEBUILD", "SERVICE_ROLE"
    #   resp.sandbox.environment.docker_server.compute_type #=> String, one of "BUILD_GENERAL1_SMALL", "BUILD_GENERAL1_MEDIUM", "BUILD_GENERAL1_LARGE", "BUILD_GENERAL1_XLARGE", "BUILD_GENERAL1_2XLARGE", "BUILD_LAMBDA_1GB", "BUILD_LAMBDA_2GB", "BUILD_LAMBDA_4GB", "BUILD_LAMBDA_8GB", "BUILD_LAMBDA_10GB", "ATTRIBUTE_BASED_COMPUTE", "CUSTOM_INSTANCE_TYPE"
    #   resp.sandbox.environment.docker_server.security_group_ids #=> Array
    #   resp.sandbox.environment.docker_server.security_group_ids[0] #=> String
    #   resp.sandbox.environment.docker_server.status.status #=> String
    #   resp.sandbox.environment.docker_server.status.message #=> String
    #   resp.sandbox.file_system_locations #=> Array
    #   resp.sandbox.file_system_locations[0].type #=> String, one of "EFS"
    #   resp.sandbox.file_system_locations[0].location #=> String
    #   resp.sandbox.file_system_locations[0].mount_point #=> String
    #   resp.sandbox.file_system_locations[0].identifier #=> String
    #   resp.sandbox.file_system_locations[0].mount_options #=> String
    #   resp.sandbox.timeout_in_minutes #=> Integer
    #   resp.sandbox.queued_timeout_in_minutes #=> Integer
    #   resp.sandbox.vpc_config.vpc_id #=> String
    #   resp.sandbox.vpc_config.subnets #=> Array
    #   resp.sandbox.vpc_config.subnets[0] #=> String
    #   resp.sandbox.vpc_config.security_group_ids #=> Array
    #   resp.sandbox.vpc_config.security_group_ids[0] #=> String
    #   resp.sandbox.log_config.cloud_watch_logs.status #=> String, one of "ENABLED", "DISABLED"
    #   resp.sandbox.log_config.cloud_watch_logs.group_name #=> String
    #   resp.sandbox.log_config.cloud_watch_logs.stream_name #=> String
    #   resp.sandbox.log_config.s3_logs.status #=> String, one of "ENABLED", "DISABLED"
    #   resp.sandbox.log_config.s3_logs.location #=> String
    #   resp.sandbox.log_config.s3_logs.encryption_disabled #=> Boolean
    #   resp.sandbox.log_config.s3_logs.bucket_owner_access #=> String, one of "NONE", "READ_ONLY", "FULL"
    #   resp.sandbox.encryption_key #=> String
    #   resp.sandbox.service_role #=> String
    #   resp.sandbox.current_session.id #=> String
    #   resp.sandbox.current_session.status #=> String
    #   resp.sandbox.current_session.start_time #=> Time
    #   resp.sandbox.current_session.end_time #=> Time
    #   resp.sandbox.current_session.current_phase #=> String
    #   resp.sandbox.current_session.phases #=> Array
    #   resp.sandbox.current_session.phases[0].phase_type #=> String
    #   resp.sandbox.current_session.phases[0].phase_status #=> String, one of "SUCCEEDED", "FAILED", "FAULT", "TIMED_OUT", "IN_PROGRESS", "STOPPED"
    #   resp.sandbox.current_session.phases[0].start_time #=> Time
    #   resp.sandbox.current_session.phases[0].end_time #=> Time
    #   resp.sandbox.current_session.phases[0].duration_in_seconds #=> Integer
    #   resp.sandbox.current_session.phases[0].contexts #=> Array
    #   resp.sandbox.current_session.phases[0].contexts[0].status_code #=> String
    #   resp.sandbox.current_session.phases[0].contexts[0].message #=> String
    #   resp.sandbox.current_session.resolved_source_version #=> String
    #   resp.sandbox.current_session.logs.group_name #=> String
    #   resp.sandbox.current_session.logs.stream_name #=> String
    #   resp.sandbox.current_session.logs.deep_link #=> String
    #   resp.sandbox.current_session.logs.s3_deep_link #=> String
    #   resp.sandbox.current_session.logs.cloud_watch_logs_arn #=> String
    #   resp.sandbox.current_session.logs.s3_logs_arn #=> String
    #   resp.sandbox.current_session.logs.cloud_watch_logs.status #=> String, one of "ENABLED", "DISABLED"
    #   resp.sandbox.current_session.logs.cloud_watch_logs.group_name #=> String
    #   resp.sandbox.current_session.logs.cloud_watch_logs.stream_name #=> String
    #   resp.sandbox.current_session.logs.s3_logs.status #=> String, one of "ENABLED", "DISABLED"
    #   resp.sandbox.current_session.logs.s3_logs.location #=> String
    #   resp.sandbox.current_session.logs.s3_logs.encryption_disabled #=> Boolean
    #   resp.sandbox.current_session.logs.s3_logs.bucket_owner_access #=> String, one of "NONE", "READ_ONLY", "FULL"
    #   resp.sandbox.current_session.network_interface.subnet_id #=> String
    #   resp.sandbox.current_session.network_interface.network_interface_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/StopSandbox AWS API Documentation
    #
    # @overload stop_sandbox(params = {})
    # @param [Hash] params ({})
    def stop_sandbox(params = {}, options = {})
      req = build_request(:stop_sandbox, params)
      req.send_request(options)
    end

    # Updates a compute fleet.
    #
    # @option params [required, String] :arn
    #   The ARN of the compute fleet.
    #
    # @option params [Integer] :base_capacity
    #   The initial number of machines allocated to the compute ﬂeet, which
    #   deﬁnes the number of builds that can run in parallel.
    #
    # @option params [String] :environment_type
    #   The environment type of the compute fleet.
    #
    #   * The environment type `ARM_CONTAINER` is available only in regions US
    #     East (N. Virginia), US East (Ohio), US West (Oregon), EU (Ireland),
    #     Asia Pacific (Mumbai), Asia Pacific (Tokyo), Asia Pacific
    #     (Singapore), Asia Pacific (Sydney), EU (Frankfurt), and South
    #     America (São Paulo).
    #
    #   * The environment type `ARM_EC2` is available only in regions US East
    #     (N. Virginia), US East (Ohio), US West (Oregon), EU (Ireland), EU
    #     (Frankfurt), Asia Pacific (Tokyo), Asia Pacific (Singapore), Asia
    #     Pacific (Sydney), South America (São Paulo), and Asia Pacific
    #     (Mumbai).
    #
    #   * The environment type `LINUX_CONTAINER` is available only in regions
    #     US East (N. Virginia), US East (Ohio), US West (Oregon), EU
    #     (Ireland), EU (Frankfurt), Asia Pacific (Tokyo), Asia Pacific
    #     (Singapore), Asia Pacific (Sydney), South America (São Paulo), and
    #     Asia Pacific (Mumbai).
    #
    #   * The environment type `LINUX_EC2` is available only in regions US
    #     East (N. Virginia), US East (Ohio), US West (Oregon), EU (Ireland),
    #     EU (Frankfurt), Asia Pacific (Tokyo), Asia Pacific (Singapore), Asia
    #     Pacific (Sydney), South America (São Paulo), and Asia Pacific
    #     (Mumbai).
    #
    #   * The environment type `LINUX_GPU_CONTAINER` is available only in
    #     regions US East (N. Virginia), US East (Ohio), US West (Oregon), EU
    #     (Ireland), EU (Frankfurt), Asia Pacific (Tokyo), and Asia Pacific
    #     (Sydney).
    #
    #   * The environment type `MAC_ARM` is available for Medium fleets only
    #     in regions US East (N. Virginia), US East (Ohio), US West (Oregon),
    #     Asia Pacific (Sydney), and EU (Frankfurt)
    #
    #   * The environment type `MAC_ARM` is available for Large fleets only in
    #     regions US East (N. Virginia), US East (Ohio), US West (Oregon), and
    #     Asia Pacific (Sydney).
    #
    #   * The environment type `WINDOWS_EC2` is available only in regions US
    #     East (N. Virginia), US East (Ohio), US West (Oregon), EU (Ireland),
    #     EU (Frankfurt), Asia Pacific (Tokyo), Asia Pacific (Singapore), Asia
    #     Pacific (Sydney), South America (São Paulo), and Asia Pacific
    #     (Mumbai).
    #
    #   * The environment type `WINDOWS_SERVER_2019_CONTAINER` is available
    #     only in regions US East (N. Virginia), US East (Ohio), US West
    #     (Oregon), Asia Pacific (Sydney), Asia Pacific (Tokyo), Asia Pacific
    #     (Mumbai) and EU (Ireland).
    #
    #   * The environment type `WINDOWS_SERVER_2022_CONTAINER` is available
    #     only in regions US East (N. Virginia), US East (Ohio), US West
    #     (Oregon), EU (Ireland), EU (Frankfurt), Asia Pacific (Sydney), Asia
    #     Pacific (Singapore), Asia Pacific (Tokyo), South America (São Paulo)
    #     and Asia Pacific (Mumbai).
    #
    #   For more information, see [Build environment compute types][1] in the
    #   *CodeBuild user guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codebuild/latest/userguide/build-env-ref-compute-types.html
    #
    # @option params [String] :compute_type
    #   Information about the compute resources the compute fleet uses.
    #   Available values include:
    #
    #   * `ATTRIBUTE_BASED_COMPUTE`: Specify the amount of vCPUs, memory, disk
    #     space, and the type of machine.
    #
    #     <note markdown="1"> If you use `ATTRIBUTE_BASED_COMPUTE`, you must define your
    #     attributes by using `computeConfiguration`. CodeBuild will select
    #     the cheapest instance that satisfies your specified attributes. For
    #     more information, see [Reserved capacity environment types][1] in
    #     the *CodeBuild User Guide*.
    #
    #      </note>
    #
    #   * `CUSTOM_INSTANCE_TYPE`: Specify the instance type for your compute
    #     fleet. For a list of supported instance types, see [Supported
    #     instance families ][2] in the *CodeBuild User Guide*.
    #
    #   * `BUILD_GENERAL1_SMALL`: Use up to 4 GiB memory and 2 vCPUs for
    #     builds.
    #
    #   * `BUILD_GENERAL1_MEDIUM`: Use up to 8 GiB memory and 4 vCPUs for
    #     builds.
    #
    #   * `BUILD_GENERAL1_LARGE`: Use up to 16 GiB memory and 8 vCPUs for
    #     builds, depending on your environment type.
    #
    #   * `BUILD_GENERAL1_XLARGE`: Use up to 72 GiB memory and 36 vCPUs for
    #     builds, depending on your environment type.
    #
    #   * `BUILD_GENERAL1_2XLARGE`: Use up to 144 GiB memory, 72 vCPUs, and
    #     824 GB of SSD storage for builds. This compute type supports Docker
    #     images up to 100 GB uncompressed.
    #
    #   * `BUILD_LAMBDA_1GB`: Use up to 1 GiB memory for builds. Only
    #     available for environment type `LINUX_LAMBDA_CONTAINER` and
    #     `ARM_LAMBDA_CONTAINER`.
    #
    #   * `BUILD_LAMBDA_2GB`: Use up to 2 GiB memory for builds. Only
    #     available for environment type `LINUX_LAMBDA_CONTAINER` and
    #     `ARM_LAMBDA_CONTAINER`.
    #
    #   * `BUILD_LAMBDA_4GB`: Use up to 4 GiB memory for builds. Only
    #     available for environment type `LINUX_LAMBDA_CONTAINER` and
    #     `ARM_LAMBDA_CONTAINER`.
    #
    #   * `BUILD_LAMBDA_8GB`: Use up to 8 GiB memory for builds. Only
    #     available for environment type `LINUX_LAMBDA_CONTAINER` and
    #     `ARM_LAMBDA_CONTAINER`.
    #
    #   * `BUILD_LAMBDA_10GB`: Use up to 10 GiB memory for builds. Only
    #     available for environment type `LINUX_LAMBDA_CONTAINER` and
    #     `ARM_LAMBDA_CONTAINER`.
    #
    #   If you use `BUILD_GENERAL1_SMALL`:
    #
    #   * For environment type `LINUX_CONTAINER`, you can use up to 4 GiB
    #     memory and 2 vCPUs for builds.
    #
    #   * For environment type `LINUX_GPU_CONTAINER`, you can use up to 16 GiB
    #     memory, 4 vCPUs, and 1 NVIDIA A10G Tensor Core GPU for builds.
    #
    #   * For environment type `ARM_CONTAINER`, you can use up to 4 GiB memory
    #     and 2 vCPUs on ARM-based processors for builds.
    #
    #   If you use `BUILD_GENERAL1_LARGE`:
    #
    #   * For environment type `LINUX_CONTAINER`, you can use up to 16 GiB
    #     memory and 8 vCPUs for builds.
    #
    #   * For environment type `LINUX_GPU_CONTAINER`, you can use up to 255
    #     GiB memory, 32 vCPUs, and 4 NVIDIA Tesla V100 GPUs for builds.
    #
    #   * For environment type `ARM_CONTAINER`, you can use up to 16 GiB
    #     memory and 8 vCPUs on ARM-based processors for builds.
    #
    #   For more information, see [On-demand environment types][3] in the
    #   *CodeBuild User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codebuild/latest/userguide/build-env-ref-compute-types.html#environment-reserved-capacity.types
    #   [2]: https://docs.aws.amazon.com/codebuild/latest/userguide/build-env-ref-compute-types.html#environment-reserved-capacity.instance-types
    #   [3]: https://docs.aws.amazon.com/codebuild/latest/userguide/build-env-ref-compute-types.html#environment.types
    #
    # @option params [Types::ComputeConfiguration] :compute_configuration
    #   The compute configuration of the compute fleet. This is only required
    #   if `computeType` is set to `ATTRIBUTE_BASED_COMPUTE` or
    #   `CUSTOM_INSTANCE_TYPE`.
    #
    # @option params [Types::ScalingConfigurationInput] :scaling_configuration
    #   The scaling configuration of the compute fleet.
    #
    # @option params [String] :overflow_behavior
    #   The compute fleet overflow behavior.
    #
    #   * For overflow behavior `QUEUE`, your overflow builds need to wait on
    #     the existing fleet instance to become available.
    #
    #   * For overflow behavior `ON_DEMAND`, your overflow builds run on
    #     CodeBuild on-demand.
    #
    #     <note markdown="1"> If you choose to set your overflow behavior to on-demand while
    #     creating a VPC-connected fleet, make sure that you add the required
    #     VPC permissions to your project service role. For more information,
    #     see [Example policy statement to allow CodeBuild access to Amazon
    #     Web Services services required to create a VPC network
    #     interface][1].
    #
    #      </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codebuild/latest/userguide/auth-and-access-control-iam-identity-based-access-control.html#customer-managed-policies-example-create-vpc-network-interface
    #
    # @option params [Types::VpcConfig] :vpc_config
    #   Information about the VPC configuration that CodeBuild accesses.
    #
    # @option params [Types::ProxyConfiguration] :proxy_configuration
    #   The proxy configuration of the compute fleet.
    #
    # @option params [String] :image_id
    #   The Amazon Machine Image (AMI) of the compute fleet.
    #
    # @option params [String] :fleet_service_role
    #   The service role associated with the compute fleet. For more
    #   information, see [ Allow a user to add a permission policy for a fleet
    #   service role][1] in the *CodeBuild User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codebuild/latest/userguide/auth-and-access-control-iam-identity-based-access-control.html#customer-managed-policies-example-permission-policy-fleet-service-role.html
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of tag key and value pairs associated with this compute fleet.
    #
    #   These tags are available for use by Amazon Web Services services that
    #   support CodeBuild build project tags.
    #
    # @return [Types::UpdateFleetOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateFleetOutput#fleet #fleet} => Types::Fleet
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_fleet({
    #     arn: "NonEmptyString", # required
    #     base_capacity: 1,
    #     environment_type: "WINDOWS_CONTAINER", # accepts WINDOWS_CONTAINER, LINUX_CONTAINER, LINUX_GPU_CONTAINER, ARM_CONTAINER, WINDOWS_SERVER_2019_CONTAINER, WINDOWS_SERVER_2022_CONTAINER, LINUX_LAMBDA_CONTAINER, ARM_LAMBDA_CONTAINER, LINUX_EC2, ARM_EC2, WINDOWS_EC2, MAC_ARM
    #     compute_type: "BUILD_GENERAL1_SMALL", # accepts BUILD_GENERAL1_SMALL, BUILD_GENERAL1_MEDIUM, BUILD_GENERAL1_LARGE, BUILD_GENERAL1_XLARGE, BUILD_GENERAL1_2XLARGE, BUILD_LAMBDA_1GB, BUILD_LAMBDA_2GB, BUILD_LAMBDA_4GB, BUILD_LAMBDA_8GB, BUILD_LAMBDA_10GB, ATTRIBUTE_BASED_COMPUTE, CUSTOM_INSTANCE_TYPE
    #     compute_configuration: {
    #       v_cpu: 1,
    #       memory: 1,
    #       disk: 1,
    #       machine_type: "GENERAL", # accepts GENERAL, NVME
    #       instance_type: "NonEmptyString",
    #     },
    #     scaling_configuration: {
    #       scaling_type: "TARGET_TRACKING_SCALING", # accepts TARGET_TRACKING_SCALING
    #       target_tracking_scaling_configs: [
    #         {
    #           metric_type: "FLEET_UTILIZATION_RATE", # accepts FLEET_UTILIZATION_RATE
    #           target_value: 1.0,
    #         },
    #       ],
    #       max_capacity: 1,
    #     },
    #     overflow_behavior: "QUEUE", # accepts QUEUE, ON_DEMAND
    #     vpc_config: {
    #       vpc_id: "NonEmptyString",
    #       subnets: ["NonEmptyString"],
    #       security_group_ids: ["NonEmptyString"],
    #     },
    #     proxy_configuration: {
    #       default_behavior: "ALLOW_ALL", # accepts ALLOW_ALL, DENY_ALL
    #       ordered_proxy_rules: [
    #         {
    #           type: "DOMAIN", # required, accepts DOMAIN, IP
    #           effect: "ALLOW", # required, accepts ALLOW, DENY
    #           entities: ["String"], # required
    #         },
    #       ],
    #     },
    #     image_id: "NonEmptyString",
    #     fleet_service_role: "NonEmptyString",
    #     tags: [
    #       {
    #         key: "KeyInput",
    #         value: "ValueInput",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.fleet.arn #=> String
    #   resp.fleet.name #=> String
    #   resp.fleet.id #=> String
    #   resp.fleet.created #=> Time
    #   resp.fleet.last_modified #=> Time
    #   resp.fleet.status.status_code #=> String, one of "CREATING", "UPDATING", "ROTATING", "PENDING_DELETION", "DELETING", "CREATE_FAILED", "UPDATE_ROLLBACK_FAILED", "ACTIVE"
    #   resp.fleet.status.context #=> String, one of "CREATE_FAILED", "UPDATE_FAILED", "ACTION_REQUIRED", "PENDING_DELETION", "INSUFFICIENT_CAPACITY"
    #   resp.fleet.status.message #=> String
    #   resp.fleet.base_capacity #=> Integer
    #   resp.fleet.environment_type #=> String, one of "WINDOWS_CONTAINER", "LINUX_CONTAINER", "LINUX_GPU_CONTAINER", "ARM_CONTAINER", "WINDOWS_SERVER_2019_CONTAINER", "WINDOWS_SERVER_2022_CONTAINER", "LINUX_LAMBDA_CONTAINER", "ARM_LAMBDA_CONTAINER", "LINUX_EC2", "ARM_EC2", "WINDOWS_EC2", "MAC_ARM"
    #   resp.fleet.compute_type #=> String, one of "BUILD_GENERAL1_SMALL", "BUILD_GENERAL1_MEDIUM", "BUILD_GENERAL1_LARGE", "BUILD_GENERAL1_XLARGE", "BUILD_GENERAL1_2XLARGE", "BUILD_LAMBDA_1GB", "BUILD_LAMBDA_2GB", "BUILD_LAMBDA_4GB", "BUILD_LAMBDA_8GB", "BUILD_LAMBDA_10GB", "ATTRIBUTE_BASED_COMPUTE", "CUSTOM_INSTANCE_TYPE"
    #   resp.fleet.compute_configuration.v_cpu #=> Integer
    #   resp.fleet.compute_configuration.memory #=> Integer
    #   resp.fleet.compute_configuration.disk #=> Integer
    #   resp.fleet.compute_configuration.machine_type #=> String, one of "GENERAL", "NVME"
    #   resp.fleet.compute_configuration.instance_type #=> String
    #   resp.fleet.scaling_configuration.scaling_type #=> String, one of "TARGET_TRACKING_SCALING"
    #   resp.fleet.scaling_configuration.target_tracking_scaling_configs #=> Array
    #   resp.fleet.scaling_configuration.target_tracking_scaling_configs[0].metric_type #=> String, one of "FLEET_UTILIZATION_RATE"
    #   resp.fleet.scaling_configuration.target_tracking_scaling_configs[0].target_value #=> Float
    #   resp.fleet.scaling_configuration.max_capacity #=> Integer
    #   resp.fleet.scaling_configuration.desired_capacity #=> Integer
    #   resp.fleet.overflow_behavior #=> String, one of "QUEUE", "ON_DEMAND"
    #   resp.fleet.vpc_config.vpc_id #=> String
    #   resp.fleet.vpc_config.subnets #=> Array
    #   resp.fleet.vpc_config.subnets[0] #=> String
    #   resp.fleet.vpc_config.security_group_ids #=> Array
    #   resp.fleet.vpc_config.security_group_ids[0] #=> String
    #   resp.fleet.proxy_configuration.default_behavior #=> String, one of "ALLOW_ALL", "DENY_ALL"
    #   resp.fleet.proxy_configuration.ordered_proxy_rules #=> Array
    #   resp.fleet.proxy_configuration.ordered_proxy_rules[0].type #=> String, one of "DOMAIN", "IP"
    #   resp.fleet.proxy_configuration.ordered_proxy_rules[0].effect #=> String, one of "ALLOW", "DENY"
    #   resp.fleet.proxy_configuration.ordered_proxy_rules[0].entities #=> Array
    #   resp.fleet.proxy_configuration.ordered_proxy_rules[0].entities[0] #=> String
    #   resp.fleet.image_id #=> String
    #   resp.fleet.fleet_service_role #=> String
    #   resp.fleet.tags #=> Array
    #   resp.fleet.tags[0].key #=> String
    #   resp.fleet.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/UpdateFleet AWS API Documentation
    #
    # @overload update_fleet(params = {})
    # @param [Hash] params ({})
    def update_fleet(params = {}, options = {})
      req = build_request(:update_fleet, params)
      req.send_request(options)
    end

    # Changes the settings of a build project.
    #
    # @option params [required, String] :name
    #   The name of the build project.
    #
    #   <note markdown="1"> You cannot change a build project's name.
    #
    #    </note>
    #
    # @option params [String] :description
    #   A new or replacement description of the build project.
    #
    # @option params [Types::ProjectSource] :source
    #   Information to be changed about the build input source code for the
    #   build project.
    #
    # @option params [Array<Types::ProjectSource>] :secondary_sources
    #   An array of `ProjectSource` objects.
    #
    # @option params [String] :source_version
    #   A version of the build input to be built for this project. If not
    #   specified, the latest version is used. If specified, it must be one
    #   of:
    #
    #   * For CodeCommit: the commit ID, branch, or Git tag to use.
    #
    #   * For GitHub: the commit ID, pull request ID, branch name, or tag name
    #     that corresponds to the version of the source code you want to
    #     build. If a pull request ID is specified, it must use the format
    #     `pr/pull-request-ID` (for example `pr/25`). If a branch name is
    #     specified, the branch's HEAD commit ID is used. If not specified,
    #     the default branch's HEAD commit ID is used.
    #
    #   * For GitLab: the commit ID, branch, or Git tag to use.
    #
    #   * For Bitbucket: the commit ID, branch name, or tag name that
    #     corresponds to the version of the source code you want to build. If
    #     a branch name is specified, the branch's HEAD commit ID is used. If
    #     not specified, the default branch's HEAD commit ID is used.
    #
    #   * For Amazon S3: the version ID of the object that represents the
    #     build input ZIP file to use.
    #
    #   If `sourceVersion` is specified at the build level, then that version
    #   takes precedence over this `sourceVersion` (at the project level).
    #
    #   For more information, see [Source Version Sample with CodeBuild][1] in
    #   the *CodeBuild User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codebuild/latest/userguide/sample-source-version.html
    #
    # @option params [Array<Types::ProjectSourceVersion>] :secondary_source_versions
    #   An array of `ProjectSourceVersion` objects. If
    #   `secondarySourceVersions` is specified at the build level, then they
    #   take over these `secondarySourceVersions` (at the project level).
    #
    # @option params [Types::ProjectArtifacts] :artifacts
    #   Information to be changed about the build output artifacts for the
    #   build project.
    #
    # @option params [Array<Types::ProjectArtifacts>] :secondary_artifacts
    #   An array of `ProjectArtifact` objects.
    #
    # @option params [Types::ProjectCache] :cache
    #   Stores recently used information so that it can be quickly accessed at
    #   a later time.
    #
    # @option params [Types::ProjectEnvironment] :environment
    #   Information to be changed about the build environment for the build
    #   project.
    #
    # @option params [String] :service_role
    #   The replacement ARN of the IAM role that enables CodeBuild to interact
    #   with dependent Amazon Web Services services on behalf of the Amazon
    #   Web Services account.
    #
    # @option params [Integer] :timeout_in_minutes
    #   The replacement value in minutes, from 5 to 2160 (36 hours), for
    #   CodeBuild to wait before timing out any related build that did not get
    #   marked as completed.
    #
    # @option params [Integer] :queued_timeout_in_minutes
    #   The number of minutes a build is allowed to be queued before it times
    #   out.
    #
    # @option params [String] :encryption_key
    #   The Key Management Service customer master key (CMK) to be used for
    #   encrypting the build output artifacts.
    #
    #   <note markdown="1"> You can use a cross-account KMS key to encrypt the build output
    #   artifacts if your service role has permission to that key.
    #
    #    </note>
    #
    #   You can specify either the Amazon Resource Name (ARN) of the CMK or,
    #   if available, the CMK's alias (using the format
    #   `alias/<alias-name>`).
    #
    # @option params [Array<Types::Tag>] :tags
    #   An updated list of tag key and value pairs associated with this build
    #   project.
    #
    #   These tags are available for use by Amazon Web Services services that
    #   support CodeBuild build project tags.
    #
    # @option params [Types::VpcConfig] :vpc_config
    #   VpcConfig enables CodeBuild to access resources in an Amazon VPC.
    #
    # @option params [Boolean] :badge_enabled
    #   Set this to true to generate a publicly accessible URL for your
    #   project's build badge.
    #
    # @option params [Types::LogsConfig] :logs_config
    #   Information about logs for the build project. A project can create
    #   logs in CloudWatch Logs, logs in an S3 bucket, or both.
    #
    # @option params [Array<Types::ProjectFileSystemLocation>] :file_system_locations
    #   An array of `ProjectFileSystemLocation` objects for a CodeBuild build
    #   project. A `ProjectFileSystemLocation` object specifies the
    #   `identifier`, `location`, `mountOptions`, `mountPoint`, and `type` of
    #   a file system created using Amazon Elastic File System.
    #
    # @option params [Types::ProjectBuildBatchConfig] :build_batch_config
    #   Contains configuration information about a batch build project.
    #
    # @option params [Integer] :concurrent_build_limit
    #   The maximum number of concurrent builds that are allowed for this
    #   project.
    #
    #   New builds are only started if the current number of builds is less
    #   than or equal to this limit. If the current build count meets this
    #   limit, new builds are throttled and are not run.
    #
    #   To remove this limit, set this value to -1.
    #
    # @option params [Integer] :auto_retry_limit
    #   The maximum number of additional automatic retries after a failed
    #   build. For example, if the auto-retry limit is set to 2, CodeBuild
    #   will call the `RetryBuild` API to automatically retry your build for
    #   up to 2 additional times.
    #
    # @return [Types::UpdateProjectOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateProjectOutput#project #project} => Types::Project
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_project({
    #     name: "NonEmptyString", # required
    #     description: "ProjectDescription",
    #     source: {
    #       type: "CODECOMMIT", # required, accepts CODECOMMIT, CODEPIPELINE, GITHUB, GITLAB, GITLAB_SELF_MANAGED, S3, BITBUCKET, GITHUB_ENTERPRISE, NO_SOURCE
    #       location: "String",
    #       git_clone_depth: 1,
    #       git_submodules_config: {
    #         fetch_submodules: false, # required
    #       },
    #       buildspec: "String",
    #       auth: {
    #         type: "OAUTH", # required, accepts OAUTH, CODECONNECTIONS, SECRETS_MANAGER
    #         resource: "String",
    #       },
    #       report_build_status: false,
    #       build_status_config: {
    #         context: "String",
    #         target_url: "String",
    #       },
    #       insecure_ssl: false,
    #       source_identifier: "String",
    #     },
    #     secondary_sources: [
    #       {
    #         type: "CODECOMMIT", # required, accepts CODECOMMIT, CODEPIPELINE, GITHUB, GITLAB, GITLAB_SELF_MANAGED, S3, BITBUCKET, GITHUB_ENTERPRISE, NO_SOURCE
    #         location: "String",
    #         git_clone_depth: 1,
    #         git_submodules_config: {
    #           fetch_submodules: false, # required
    #         },
    #         buildspec: "String",
    #         auth: {
    #           type: "OAUTH", # required, accepts OAUTH, CODECONNECTIONS, SECRETS_MANAGER
    #           resource: "String",
    #         },
    #         report_build_status: false,
    #         build_status_config: {
    #           context: "String",
    #           target_url: "String",
    #         },
    #         insecure_ssl: false,
    #         source_identifier: "String",
    #       },
    #     ],
    #     source_version: "String",
    #     secondary_source_versions: [
    #       {
    #         source_identifier: "String", # required
    #         source_version: "String", # required
    #       },
    #     ],
    #     artifacts: {
    #       type: "CODEPIPELINE", # required, accepts CODEPIPELINE, S3, NO_ARTIFACTS
    #       location: "String",
    #       path: "String",
    #       namespace_type: "NONE", # accepts NONE, BUILD_ID
    #       name: "String",
    #       packaging: "NONE", # accepts NONE, ZIP
    #       override_artifact_name: false,
    #       encryption_disabled: false,
    #       artifact_identifier: "String",
    #       bucket_owner_access: "NONE", # accepts NONE, READ_ONLY, FULL
    #     },
    #     secondary_artifacts: [
    #       {
    #         type: "CODEPIPELINE", # required, accepts CODEPIPELINE, S3, NO_ARTIFACTS
    #         location: "String",
    #         path: "String",
    #         namespace_type: "NONE", # accepts NONE, BUILD_ID
    #         name: "String",
    #         packaging: "NONE", # accepts NONE, ZIP
    #         override_artifact_name: false,
    #         encryption_disabled: false,
    #         artifact_identifier: "String",
    #         bucket_owner_access: "NONE", # accepts NONE, READ_ONLY, FULL
    #       },
    #     ],
    #     cache: {
    #       type: "NO_CACHE", # required, accepts NO_CACHE, S3, LOCAL
    #       location: "String",
    #       modes: ["LOCAL_DOCKER_LAYER_CACHE"], # accepts LOCAL_DOCKER_LAYER_CACHE, LOCAL_SOURCE_CACHE, LOCAL_CUSTOM_CACHE
    #       cache_namespace: "String",
    #     },
    #     environment: {
    #       type: "WINDOWS_CONTAINER", # required, accepts WINDOWS_CONTAINER, LINUX_CONTAINER, LINUX_GPU_CONTAINER, ARM_CONTAINER, WINDOWS_SERVER_2019_CONTAINER, WINDOWS_SERVER_2022_CONTAINER, LINUX_LAMBDA_CONTAINER, ARM_LAMBDA_CONTAINER, LINUX_EC2, ARM_EC2, WINDOWS_EC2, MAC_ARM
    #       image: "NonEmptyString", # required
    #       compute_type: "BUILD_GENERAL1_SMALL", # required, accepts BUILD_GENERAL1_SMALL, BUILD_GENERAL1_MEDIUM, BUILD_GENERAL1_LARGE, BUILD_GENERAL1_XLARGE, BUILD_GENERAL1_2XLARGE, BUILD_LAMBDA_1GB, BUILD_LAMBDA_2GB, BUILD_LAMBDA_4GB, BUILD_LAMBDA_8GB, BUILD_LAMBDA_10GB, ATTRIBUTE_BASED_COMPUTE, CUSTOM_INSTANCE_TYPE
    #       compute_configuration: {
    #         v_cpu: 1,
    #         memory: 1,
    #         disk: 1,
    #         machine_type: "GENERAL", # accepts GENERAL, NVME
    #         instance_type: "NonEmptyString",
    #       },
    #       fleet: {
    #         fleet_arn: "String",
    #       },
    #       environment_variables: [
    #         {
    #           name: "NonEmptyString", # required
    #           value: "String", # required
    #           type: "PLAINTEXT", # accepts PLAINTEXT, PARAMETER_STORE, SECRETS_MANAGER
    #         },
    #       ],
    #       privileged_mode: false,
    #       certificate: "String",
    #       registry_credential: {
    #         credential: "NonEmptyString", # required
    #         credential_provider: "SECRETS_MANAGER", # required, accepts SECRETS_MANAGER
    #       },
    #       image_pull_credentials_type: "CODEBUILD", # accepts CODEBUILD, SERVICE_ROLE
    #       docker_server: {
    #         compute_type: "BUILD_GENERAL1_SMALL", # required, accepts BUILD_GENERAL1_SMALL, BUILD_GENERAL1_MEDIUM, BUILD_GENERAL1_LARGE, BUILD_GENERAL1_XLARGE, BUILD_GENERAL1_2XLARGE, BUILD_LAMBDA_1GB, BUILD_LAMBDA_2GB, BUILD_LAMBDA_4GB, BUILD_LAMBDA_8GB, BUILD_LAMBDA_10GB, ATTRIBUTE_BASED_COMPUTE, CUSTOM_INSTANCE_TYPE
    #         security_group_ids: ["NonEmptyString"],
    #         status: {
    #           status: "String",
    #           message: "String",
    #         },
    #       },
    #     },
    #     service_role: "NonEmptyString",
    #     timeout_in_minutes: 1,
    #     queued_timeout_in_minutes: 1,
    #     encryption_key: "NonEmptyString",
    #     tags: [
    #       {
    #         key: "KeyInput",
    #         value: "ValueInput",
    #       },
    #     ],
    #     vpc_config: {
    #       vpc_id: "NonEmptyString",
    #       subnets: ["NonEmptyString"],
    #       security_group_ids: ["NonEmptyString"],
    #     },
    #     badge_enabled: false,
    #     logs_config: {
    #       cloud_watch_logs: {
    #         status: "ENABLED", # required, accepts ENABLED, DISABLED
    #         group_name: "String",
    #         stream_name: "String",
    #       },
    #       s3_logs: {
    #         status: "ENABLED", # required, accepts ENABLED, DISABLED
    #         location: "String",
    #         encryption_disabled: false,
    #         bucket_owner_access: "NONE", # accepts NONE, READ_ONLY, FULL
    #       },
    #     },
    #     file_system_locations: [
    #       {
    #         type: "EFS", # accepts EFS
    #         location: "String",
    #         mount_point: "String",
    #         identifier: "String",
    #         mount_options: "String",
    #       },
    #     ],
    #     build_batch_config: {
    #       service_role: "NonEmptyString",
    #       combine_artifacts: false,
    #       restrictions: {
    #         maximum_builds_allowed: 1,
    #         compute_types_allowed: ["NonEmptyString"],
    #         fleets_allowed: ["NonEmptyString"],
    #       },
    #       timeout_in_mins: 1,
    #       batch_report_mode: "REPORT_INDIVIDUAL_BUILDS", # accepts REPORT_INDIVIDUAL_BUILDS, REPORT_AGGREGATED_BATCH
    #     },
    #     concurrent_build_limit: 1,
    #     auto_retry_limit: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.project.name #=> String
    #   resp.project.arn #=> String
    #   resp.project.description #=> String
    #   resp.project.source.type #=> String, one of "CODECOMMIT", "CODEPIPELINE", "GITHUB", "GITLAB", "GITLAB_SELF_MANAGED", "S3", "BITBUCKET", "GITHUB_ENTERPRISE", "NO_SOURCE"
    #   resp.project.source.location #=> String
    #   resp.project.source.git_clone_depth #=> Integer
    #   resp.project.source.git_submodules_config.fetch_submodules #=> Boolean
    #   resp.project.source.buildspec #=> String
    #   resp.project.source.auth.type #=> String, one of "OAUTH", "CODECONNECTIONS", "SECRETS_MANAGER"
    #   resp.project.source.auth.resource #=> String
    #   resp.project.source.report_build_status #=> Boolean
    #   resp.project.source.build_status_config.context #=> String
    #   resp.project.source.build_status_config.target_url #=> String
    #   resp.project.source.insecure_ssl #=> Boolean
    #   resp.project.source.source_identifier #=> String
    #   resp.project.secondary_sources #=> Array
    #   resp.project.secondary_sources[0].type #=> String, one of "CODECOMMIT", "CODEPIPELINE", "GITHUB", "GITLAB", "GITLAB_SELF_MANAGED", "S3", "BITBUCKET", "GITHUB_ENTERPRISE", "NO_SOURCE"
    #   resp.project.secondary_sources[0].location #=> String
    #   resp.project.secondary_sources[0].git_clone_depth #=> Integer
    #   resp.project.secondary_sources[0].git_submodules_config.fetch_submodules #=> Boolean
    #   resp.project.secondary_sources[0].buildspec #=> String
    #   resp.project.secondary_sources[0].auth.type #=> String, one of "OAUTH", "CODECONNECTIONS", "SECRETS_MANAGER"
    #   resp.project.secondary_sources[0].auth.resource #=> String
    #   resp.project.secondary_sources[0].report_build_status #=> Boolean
    #   resp.project.secondary_sources[0].build_status_config.context #=> String
    #   resp.project.secondary_sources[0].build_status_config.target_url #=> String
    #   resp.project.secondary_sources[0].insecure_ssl #=> Boolean
    #   resp.project.secondary_sources[0].source_identifier #=> String
    #   resp.project.source_version #=> String
    #   resp.project.secondary_source_versions #=> Array
    #   resp.project.secondary_source_versions[0].source_identifier #=> String
    #   resp.project.secondary_source_versions[0].source_version #=> String
    #   resp.project.artifacts.type #=> String, one of "CODEPIPELINE", "S3", "NO_ARTIFACTS"
    #   resp.project.artifacts.location #=> String
    #   resp.project.artifacts.path #=> String
    #   resp.project.artifacts.namespace_type #=> String, one of "NONE", "BUILD_ID"
    #   resp.project.artifacts.name #=> String
    #   resp.project.artifacts.packaging #=> String, one of "NONE", "ZIP"
    #   resp.project.artifacts.override_artifact_name #=> Boolean
    #   resp.project.artifacts.encryption_disabled #=> Boolean
    #   resp.project.artifacts.artifact_identifier #=> String
    #   resp.project.artifacts.bucket_owner_access #=> String, one of "NONE", "READ_ONLY", "FULL"
    #   resp.project.secondary_artifacts #=> Array
    #   resp.project.secondary_artifacts[0].type #=> String, one of "CODEPIPELINE", "S3", "NO_ARTIFACTS"
    #   resp.project.secondary_artifacts[0].location #=> String
    #   resp.project.secondary_artifacts[0].path #=> String
    #   resp.project.secondary_artifacts[0].namespace_type #=> String, one of "NONE", "BUILD_ID"
    #   resp.project.secondary_artifacts[0].name #=> String
    #   resp.project.secondary_artifacts[0].packaging #=> String, one of "NONE", "ZIP"
    #   resp.project.secondary_artifacts[0].override_artifact_name #=> Boolean
    #   resp.project.secondary_artifacts[0].encryption_disabled #=> Boolean
    #   resp.project.secondary_artifacts[0].artifact_identifier #=> String
    #   resp.project.secondary_artifacts[0].bucket_owner_access #=> String, one of "NONE", "READ_ONLY", "FULL"
    #   resp.project.cache.type #=> String, one of "NO_CACHE", "S3", "LOCAL"
    #   resp.project.cache.location #=> String
    #   resp.project.cache.modes #=> Array
    #   resp.project.cache.modes[0] #=> String, one of "LOCAL_DOCKER_LAYER_CACHE", "LOCAL_SOURCE_CACHE", "LOCAL_CUSTOM_CACHE"
    #   resp.project.cache.cache_namespace #=> String
    #   resp.project.environment.type #=> String, one of "WINDOWS_CONTAINER", "LINUX_CONTAINER", "LINUX_GPU_CONTAINER", "ARM_CONTAINER", "WINDOWS_SERVER_2019_CONTAINER", "WINDOWS_SERVER_2022_CONTAINER", "LINUX_LAMBDA_CONTAINER", "ARM_LAMBDA_CONTAINER", "LINUX_EC2", "ARM_EC2", "WINDOWS_EC2", "MAC_ARM"
    #   resp.project.environment.image #=> String
    #   resp.project.environment.compute_type #=> String, one of "BUILD_GENERAL1_SMALL", "BUILD_GENERAL1_MEDIUM", "BUILD_GENERAL1_LARGE", "BUILD_GENERAL1_XLARGE", "BUILD_GENERAL1_2XLARGE", "BUILD_LAMBDA_1GB", "BUILD_LAMBDA_2GB", "BUILD_LAMBDA_4GB", "BUILD_LAMBDA_8GB", "BUILD_LAMBDA_10GB", "ATTRIBUTE_BASED_COMPUTE", "CUSTOM_INSTANCE_TYPE"
    #   resp.project.environment.compute_configuration.v_cpu #=> Integer
    #   resp.project.environment.compute_configuration.memory #=> Integer
    #   resp.project.environment.compute_configuration.disk #=> Integer
    #   resp.project.environment.compute_configuration.machine_type #=> String, one of "GENERAL", "NVME"
    #   resp.project.environment.compute_configuration.instance_type #=> String
    #   resp.project.environment.fleet.fleet_arn #=> String
    #   resp.project.environment.environment_variables #=> Array
    #   resp.project.environment.environment_variables[0].name #=> String
    #   resp.project.environment.environment_variables[0].value #=> String
    #   resp.project.environment.environment_variables[0].type #=> String, one of "PLAINTEXT", "PARAMETER_STORE", "SECRETS_MANAGER"
    #   resp.project.environment.privileged_mode #=> Boolean
    #   resp.project.environment.certificate #=> String
    #   resp.project.environment.registry_credential.credential #=> String
    #   resp.project.environment.registry_credential.credential_provider #=> String, one of "SECRETS_MANAGER"
    #   resp.project.environment.image_pull_credentials_type #=> String, one of "CODEBUILD", "SERVICE_ROLE"
    #   resp.project.environment.docker_server.compute_type #=> String, one of "BUILD_GENERAL1_SMALL", "BUILD_GENERAL1_MEDIUM", "BUILD_GENERAL1_LARGE", "BUILD_GENERAL1_XLARGE", "BUILD_GENERAL1_2XLARGE", "BUILD_LAMBDA_1GB", "BUILD_LAMBDA_2GB", "BUILD_LAMBDA_4GB", "BUILD_LAMBDA_8GB", "BUILD_LAMBDA_10GB", "ATTRIBUTE_BASED_COMPUTE", "CUSTOM_INSTANCE_TYPE"
    #   resp.project.environment.docker_server.security_group_ids #=> Array
    #   resp.project.environment.docker_server.security_group_ids[0] #=> String
    #   resp.project.environment.docker_server.status.status #=> String
    #   resp.project.environment.docker_server.status.message #=> String
    #   resp.project.service_role #=> String
    #   resp.project.timeout_in_minutes #=> Integer
    #   resp.project.queued_timeout_in_minutes #=> Integer
    #   resp.project.encryption_key #=> String
    #   resp.project.tags #=> Array
    #   resp.project.tags[0].key #=> String
    #   resp.project.tags[0].value #=> String
    #   resp.project.created #=> Time
    #   resp.project.last_modified #=> Time
    #   resp.project.webhook.url #=> String
    #   resp.project.webhook.payload_url #=> String
    #   resp.project.webhook.secret #=> String
    #   resp.project.webhook.branch_filter #=> String
    #   resp.project.webhook.filter_groups #=> Array
    #   resp.project.webhook.filter_groups[0] #=> Array
    #   resp.project.webhook.filter_groups[0][0].type #=> String, one of "EVENT", "BASE_REF", "HEAD_REF", "ACTOR_ACCOUNT_ID", "FILE_PATH", "COMMIT_MESSAGE", "WORKFLOW_NAME", "TAG_NAME", "RELEASE_NAME", "REPOSITORY_NAME", "ORGANIZATION_NAME"
    #   resp.project.webhook.filter_groups[0][0].pattern #=> String
    #   resp.project.webhook.filter_groups[0][0].exclude_matched_pattern #=> Boolean
    #   resp.project.webhook.build_type #=> String, one of "BUILD", "BUILD_BATCH", "RUNNER_BUILDKITE_BUILD"
    #   resp.project.webhook.manual_creation #=> Boolean
    #   resp.project.webhook.last_modified_secret #=> Time
    #   resp.project.webhook.scope_configuration.name #=> String
    #   resp.project.webhook.scope_configuration.domain #=> String
    #   resp.project.webhook.scope_configuration.scope #=> String, one of "GITHUB_ORGANIZATION", "GITHUB_GLOBAL", "GITLAB_GROUP"
    #   resp.project.webhook.status #=> String, one of "CREATING", "CREATE_FAILED", "ACTIVE", "DELETING"
    #   resp.project.webhook.status_message #=> String
    #   resp.project.webhook.pull_request_build_policy.requires_comment_approval #=> String, one of "DISABLED", "ALL_PULL_REQUESTS", "FORK_PULL_REQUESTS"
    #   resp.project.webhook.pull_request_build_policy.approver_roles #=> Array
    #   resp.project.webhook.pull_request_build_policy.approver_roles[0] #=> String, one of "GITHUB_READ", "GITHUB_TRIAGE", "GITHUB_WRITE", "GITHUB_MAINTAIN", "GITHUB_ADMIN", "GITLAB_GUEST", "GITLAB_PLANNER", "GITLAB_REPORTER", "GITLAB_DEVELOPER", "GITLAB_MAINTAINER", "GITLAB_OWNER", "BITBUCKET_READ", "BITBUCKET_WRITE", "BITBUCKET_ADMIN"
    #   resp.project.vpc_config.vpc_id #=> String
    #   resp.project.vpc_config.subnets #=> Array
    #   resp.project.vpc_config.subnets[0] #=> String
    #   resp.project.vpc_config.security_group_ids #=> Array
    #   resp.project.vpc_config.security_group_ids[0] #=> String
    #   resp.project.badge.badge_enabled #=> Boolean
    #   resp.project.badge.badge_request_url #=> String
    #   resp.project.logs_config.cloud_watch_logs.status #=> String, one of "ENABLED", "DISABLED"
    #   resp.project.logs_config.cloud_watch_logs.group_name #=> String
    #   resp.project.logs_config.cloud_watch_logs.stream_name #=> String
    #   resp.project.logs_config.s3_logs.status #=> String, one of "ENABLED", "DISABLED"
    #   resp.project.logs_config.s3_logs.location #=> String
    #   resp.project.logs_config.s3_logs.encryption_disabled #=> Boolean
    #   resp.project.logs_config.s3_logs.bucket_owner_access #=> String, one of "NONE", "READ_ONLY", "FULL"
    #   resp.project.file_system_locations #=> Array
    #   resp.project.file_system_locations[0].type #=> String, one of "EFS"
    #   resp.project.file_system_locations[0].location #=> String
    #   resp.project.file_system_locations[0].mount_point #=> String
    #   resp.project.file_system_locations[0].identifier #=> String
    #   resp.project.file_system_locations[0].mount_options #=> String
    #   resp.project.build_batch_config.service_role #=> String
    #   resp.project.build_batch_config.combine_artifacts #=> Boolean
    #   resp.project.build_batch_config.restrictions.maximum_builds_allowed #=> Integer
    #   resp.project.build_batch_config.restrictions.compute_types_allowed #=> Array
    #   resp.project.build_batch_config.restrictions.compute_types_allowed[0] #=> String
    #   resp.project.build_batch_config.restrictions.fleets_allowed #=> Array
    #   resp.project.build_batch_config.restrictions.fleets_allowed[0] #=> String
    #   resp.project.build_batch_config.timeout_in_mins #=> Integer
    #   resp.project.build_batch_config.batch_report_mode #=> String, one of "REPORT_INDIVIDUAL_BUILDS", "REPORT_AGGREGATED_BATCH"
    #   resp.project.concurrent_build_limit #=> Integer
    #   resp.project.project_visibility #=> String, one of "PUBLIC_READ", "PRIVATE"
    #   resp.project.public_project_alias #=> String
    #   resp.project.resource_access_role #=> String
    #   resp.project.auto_retry_limit #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/UpdateProject AWS API Documentation
    #
    # @overload update_project(params = {})
    # @param [Hash] params ({})
    def update_project(params = {}, options = {})
      req = build_request(:update_project, params)
      req.send_request(options)
    end

    # Changes the public visibility for a project. The project's build
    # results, logs, and artifacts are available to the general public. For
    # more information, see [Public build projects][1] in the *CodeBuild
    # User Guide*.
    #
    # The following should be kept in mind when making your projects public:
    #
    #  * All of a project's build results, logs, and artifacts, including
    #   builds that were run when the project was private, are available to
    #   the general public.
    #
    # * All build logs and artifacts are available to the public.
    #   Environment variables, source code, and other sensitive information
    #   may have been output to the build logs and artifacts. You must be
    #   careful about what information is output to the build logs. Some
    #   best practice are:
    #
    #   * Do not store sensitive values in environment variables. We
    #     recommend that you use an Amazon EC2 Systems Manager Parameter
    #     Store or Secrets Manager to store sensitive values.
    #
    #   * Follow [Best practices for using webhooks][2] in the *CodeBuild
    #     User Guide* to limit which entities can trigger a build, and do
    #     not store the buildspec in the project itself, to ensure that your
    #     webhooks are as secure as possible.
    # * A malicious user can use public builds to distribute malicious
    #   artifacts. We recommend that you review all pull requests to verify
    #   that the pull request is a legitimate change. We also recommend that
    #   you validate any artifacts with their checksums to make sure that
    #   the correct artifacts are being downloaded.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/codebuild/latest/userguide/public-builds.html
    # [2]: https://docs.aws.amazon.com/codebuild/latest/userguide/webhooks.html#webhook-best-practices
    #
    # @option params [required, String] :project_arn
    #   The Amazon Resource Name (ARN) of the build project.
    #
    # @option params [required, String] :project_visibility
    #   Specifies the visibility of the project's builds. Possible values
    #   are:
    #
    #   PUBLIC\_READ
    #
    #   : The project builds are visible to the public.
    #
    #   PRIVATE
    #
    #   : The project builds are not visible to the public.
    #
    # @option params [String] :resource_access_role
    #   The ARN of the IAM role that enables CodeBuild to access the
    #   CloudWatch Logs and Amazon S3 artifacts for the project's builds.
    #
    # @return [Types::UpdateProjectVisibilityOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateProjectVisibilityOutput#project_arn #project_arn} => String
    #   * {Types::UpdateProjectVisibilityOutput#public_project_alias #public_project_alias} => String
    #   * {Types::UpdateProjectVisibilityOutput#project_visibility #project_visibility} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_project_visibility({
    #     project_arn: "NonEmptyString", # required
    #     project_visibility: "PUBLIC_READ", # required, accepts PUBLIC_READ, PRIVATE
    #     resource_access_role: "NonEmptyString",
    #   })
    #
    # @example Response structure
    #
    #   resp.project_arn #=> String
    #   resp.public_project_alias #=> String
    #   resp.project_visibility #=> String, one of "PUBLIC_READ", "PRIVATE"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/UpdateProjectVisibility AWS API Documentation
    #
    # @overload update_project_visibility(params = {})
    # @param [Hash] params ({})
    def update_project_visibility(params = {}, options = {})
      req = build_request(:update_project_visibility, params)
      req.send_request(options)
    end

    # Updates a report group.
    #
    # @option params [required, String] :arn
    #   The ARN of the report group to update.
    #
    # @option params [Types::ReportExportConfig] :export_config
    #   Used to specify an updated export type. Valid values are:
    #
    #   * `S3`: The report results are exported to an S3 bucket.
    #
    #   * `NO_EXPORT`: The report results are not exported.
    #
    # @option params [Array<Types::Tag>] :tags
    #   An updated list of tag key and value pairs associated with this report
    #   group.
    #
    #   These tags are available for use by Amazon Web Services services that
    #   support CodeBuild report group tags.
    #
    # @return [Types::UpdateReportGroupOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateReportGroupOutput#report_group #report_group} => Types::ReportGroup
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_report_group({
    #     arn: "NonEmptyString", # required
    #     export_config: {
    #       export_config_type: "S3", # accepts S3, NO_EXPORT
    #       s3_destination: {
    #         bucket: "NonEmptyString",
    #         bucket_owner: "String",
    #         path: "String",
    #         packaging: "ZIP", # accepts ZIP, NONE
    #         encryption_key: "NonEmptyString",
    #         encryption_disabled: false,
    #       },
    #     },
    #     tags: [
    #       {
    #         key: "KeyInput",
    #         value: "ValueInput",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.report_group.arn #=> String
    #   resp.report_group.name #=> String
    #   resp.report_group.type #=> String, one of "TEST", "CODE_COVERAGE"
    #   resp.report_group.export_config.export_config_type #=> String, one of "S3", "NO_EXPORT"
    #   resp.report_group.export_config.s3_destination.bucket #=> String
    #   resp.report_group.export_config.s3_destination.bucket_owner #=> String
    #   resp.report_group.export_config.s3_destination.path #=> String
    #   resp.report_group.export_config.s3_destination.packaging #=> String, one of "ZIP", "NONE"
    #   resp.report_group.export_config.s3_destination.encryption_key #=> String
    #   resp.report_group.export_config.s3_destination.encryption_disabled #=> Boolean
    #   resp.report_group.created #=> Time
    #   resp.report_group.last_modified #=> Time
    #   resp.report_group.tags #=> Array
    #   resp.report_group.tags[0].key #=> String
    #   resp.report_group.tags[0].value #=> String
    #   resp.report_group.status #=> String, one of "ACTIVE", "DELETING"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/UpdateReportGroup AWS API Documentation
    #
    # @overload update_report_group(params = {})
    # @param [Hash] params ({})
    def update_report_group(params = {}, options = {})
      req = build_request(:update_report_group, params)
      req.send_request(options)
    end

    # Updates the webhook associated with an CodeBuild build project.
    #
    # <note markdown="1"> If you use Bitbucket for your repository, `rotateSecret` is ignored.
    #
    #  </note>
    #
    # @option params [required, String] :project_name
    #   The name of the CodeBuild project.
    #
    # @option params [String] :branch_filter
    #   A regular expression used to determine which repository branches are
    #   built when a webhook is triggered. If the name of a branch matches the
    #   regular expression, then it is built. If `branchFilter` is empty, then
    #   all branches are built.
    #
    #   <note markdown="1"> It is recommended that you use `filterGroups` instead of
    #   `branchFilter`.
    #
    #    </note>
    #
    # @option params [Boolean] :rotate_secret
    #   A boolean value that specifies whether the associated GitHub
    #   repository's secret token should be updated. If you use Bitbucket for
    #   your repository, `rotateSecret` is ignored.
    #
    # @option params [Array<Array>] :filter_groups
    #   An array of arrays of `WebhookFilter` objects used to determine if a
    #   webhook event can trigger a build. A filter group must contain at
    #   least one `EVENT` `WebhookFilter`.
    #
    # @option params [String] :build_type
    #   Specifies the type of build this webhook will trigger.
    #
    #   <note markdown="1"> `RUNNER_BUILDKITE_BUILD` is only available for `NO_SOURCE` source type
    #   projects configured for Buildkite runner builds. For more information
    #   about CodeBuild-hosted Buildkite runner builds, see [Tutorial:
    #   Configure a CodeBuild-hosted Buildkite runner][1] in the *CodeBuild
    #   user guide*.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codebuild/latest/userguide/sample-runner-buildkite.html
    #
    # @option params [Types::PullRequestBuildPolicy] :pull_request_build_policy
    #   A PullRequestBuildPolicy object that defines comment-based approval
    #   requirements for triggering builds on pull requests. This policy helps
    #   control when automated builds are executed based on contributor
    #   permissions and approval workflows.
    #
    # @return [Types::UpdateWebhookOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateWebhookOutput#webhook #webhook} => Types::Webhook
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_webhook({
    #     project_name: "ProjectName", # required
    #     branch_filter: "String",
    #     rotate_secret: false,
    #     filter_groups: [
    #       [
    #         {
    #           type: "EVENT", # required, accepts EVENT, BASE_REF, HEAD_REF, ACTOR_ACCOUNT_ID, FILE_PATH, COMMIT_MESSAGE, WORKFLOW_NAME, TAG_NAME, RELEASE_NAME, REPOSITORY_NAME, ORGANIZATION_NAME
    #           pattern: "String", # required
    #           exclude_matched_pattern: false,
    #         },
    #       ],
    #     ],
    #     build_type: "BUILD", # accepts BUILD, BUILD_BATCH, RUNNER_BUILDKITE_BUILD
    #     pull_request_build_policy: {
    #       requires_comment_approval: "DISABLED", # required, accepts DISABLED, ALL_PULL_REQUESTS, FORK_PULL_REQUESTS
    #       approver_roles: ["GITHUB_READ"], # accepts GITHUB_READ, GITHUB_TRIAGE, GITHUB_WRITE, GITHUB_MAINTAIN, GITHUB_ADMIN, GITLAB_GUEST, GITLAB_PLANNER, GITLAB_REPORTER, GITLAB_DEVELOPER, GITLAB_MAINTAINER, GITLAB_OWNER, BITBUCKET_READ, BITBUCKET_WRITE, BITBUCKET_ADMIN
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.webhook.url #=> String
    #   resp.webhook.payload_url #=> String
    #   resp.webhook.secret #=> String
    #   resp.webhook.branch_filter #=> String
    #   resp.webhook.filter_groups #=> Array
    #   resp.webhook.filter_groups[0] #=> Array
    #   resp.webhook.filter_groups[0][0].type #=> String, one of "EVENT", "BASE_REF", "HEAD_REF", "ACTOR_ACCOUNT_ID", "FILE_PATH", "COMMIT_MESSAGE", "WORKFLOW_NAME", "TAG_NAME", "RELEASE_NAME", "REPOSITORY_NAME", "ORGANIZATION_NAME"
    #   resp.webhook.filter_groups[0][0].pattern #=> String
    #   resp.webhook.filter_groups[0][0].exclude_matched_pattern #=> Boolean
    #   resp.webhook.build_type #=> String, one of "BUILD", "BUILD_BATCH", "RUNNER_BUILDKITE_BUILD"
    #   resp.webhook.manual_creation #=> Boolean
    #   resp.webhook.last_modified_secret #=> Time
    #   resp.webhook.scope_configuration.name #=> String
    #   resp.webhook.scope_configuration.domain #=> String
    #   resp.webhook.scope_configuration.scope #=> String, one of "GITHUB_ORGANIZATION", "GITHUB_GLOBAL", "GITLAB_GROUP"
    #   resp.webhook.status #=> String, one of "CREATING", "CREATE_FAILED", "ACTIVE", "DELETING"
    #   resp.webhook.status_message #=> String
    #   resp.webhook.pull_request_build_policy.requires_comment_approval #=> String, one of "DISABLED", "ALL_PULL_REQUESTS", "FORK_PULL_REQUESTS"
    #   resp.webhook.pull_request_build_policy.approver_roles #=> Array
    #   resp.webhook.pull_request_build_policy.approver_roles[0] #=> String, one of "GITHUB_READ", "GITHUB_TRIAGE", "GITHUB_WRITE", "GITHUB_MAINTAIN", "GITHUB_ADMIN", "GITLAB_GUEST", "GITLAB_PLANNER", "GITLAB_REPORTER", "GITLAB_DEVELOPER", "GITLAB_MAINTAINER", "GITLAB_OWNER", "BITBUCKET_READ", "BITBUCKET_WRITE", "BITBUCKET_ADMIN"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/UpdateWebhook AWS API Documentation
    #
    # @overload update_webhook(params = {})
    # @param [Hash] params ({})
    def update_webhook(params = {}, options = {})
      req = build_request(:update_webhook, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::CodeBuild')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-codebuild'
      context[:gem_version] = '1.164.0'
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
