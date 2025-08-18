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

module Aws::BackupSearch
  # An API client for BackupSearch.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::BackupSearch::Client.new(
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

    @identifier = :backupsearch

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
    add_plugin(Aws::BackupSearch::Plugins::Endpoints)

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
    #   @option options [Aws::BackupSearch::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::BackupSearch::EndpointParameters`.
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

    # This operation retrieves metadata of a search job, including its
    # progress.
    #
    # @option params [required, String] :search_job_identifier
    #   Required unique string that specifies the search job.
    #
    # @return [Types::GetSearchJobOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSearchJobOutput#name #name} => String
    #   * {Types::GetSearchJobOutput#search_scope_summary #search_scope_summary} => Types::SearchScopeSummary
    #   * {Types::GetSearchJobOutput#current_search_progress #current_search_progress} => Types::CurrentSearchProgress
    #   * {Types::GetSearchJobOutput#status_message #status_message} => String
    #   * {Types::GetSearchJobOutput#encryption_key_arn #encryption_key_arn} => String
    #   * {Types::GetSearchJobOutput#completion_time #completion_time} => Time
    #   * {Types::GetSearchJobOutput#status #status} => String
    #   * {Types::GetSearchJobOutput#search_scope #search_scope} => Types::SearchScope
    #   * {Types::GetSearchJobOutput#item_filters #item_filters} => Types::ItemFilters
    #   * {Types::GetSearchJobOutput#creation_time #creation_time} => Time
    #   * {Types::GetSearchJobOutput#search_job_identifier #search_job_identifier} => String
    #   * {Types::GetSearchJobOutput#search_job_arn #search_job_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_search_job({
    #     search_job_identifier: "GenericId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.search_scope_summary.total_recovery_points_to_scan_count #=> Integer
    #   resp.search_scope_summary.total_items_to_scan_count #=> Integer
    #   resp.current_search_progress.recovery_points_scanned_count #=> Integer
    #   resp.current_search_progress.items_scanned_count #=> Integer
    #   resp.current_search_progress.items_matched_count #=> Integer
    #   resp.status_message #=> String
    #   resp.encryption_key_arn #=> String
    #   resp.completion_time #=> Time
    #   resp.status #=> String, one of "RUNNING", "COMPLETED", "STOPPING", "STOPPED", "FAILED"
    #   resp.search_scope.backup_resource_types #=> Array
    #   resp.search_scope.backup_resource_types[0] #=> String, one of "S3", "EBS"
    #   resp.search_scope.backup_resource_creation_time.created_after #=> Time
    #   resp.search_scope.backup_resource_creation_time.created_before #=> Time
    #   resp.search_scope.source_resource_arns #=> Array
    #   resp.search_scope.source_resource_arns[0] #=> String
    #   resp.search_scope.backup_resource_arns #=> Array
    #   resp.search_scope.backup_resource_arns[0] #=> String
    #   resp.search_scope.backup_resource_tags #=> Hash
    #   resp.search_scope.backup_resource_tags["String"] #=> String
    #   resp.item_filters.s3_item_filters #=> Array
    #   resp.item_filters.s3_item_filters[0].object_keys #=> Array
    #   resp.item_filters.s3_item_filters[0].object_keys[0].value #=> String
    #   resp.item_filters.s3_item_filters[0].object_keys[0].operator #=> String, one of "EQUALS_TO", "NOT_EQUALS_TO", "CONTAINS", "DOES_NOT_CONTAIN", "BEGINS_WITH", "ENDS_WITH", "DOES_NOT_BEGIN_WITH", "DOES_NOT_END_WITH"
    #   resp.item_filters.s3_item_filters[0].sizes #=> Array
    #   resp.item_filters.s3_item_filters[0].sizes[0].value #=> Integer
    #   resp.item_filters.s3_item_filters[0].sizes[0].operator #=> String, one of "EQUALS_TO", "NOT_EQUALS_TO", "LESS_THAN_EQUAL_TO", "GREATER_THAN_EQUAL_TO"
    #   resp.item_filters.s3_item_filters[0].creation_times #=> Array
    #   resp.item_filters.s3_item_filters[0].creation_times[0].value #=> Time
    #   resp.item_filters.s3_item_filters[0].creation_times[0].operator #=> String, one of "EQUALS_TO", "NOT_EQUALS_TO", "LESS_THAN_EQUAL_TO", "GREATER_THAN_EQUAL_TO"
    #   resp.item_filters.s3_item_filters[0].version_ids #=> Array
    #   resp.item_filters.s3_item_filters[0].version_ids[0].value #=> String
    #   resp.item_filters.s3_item_filters[0].version_ids[0].operator #=> String, one of "EQUALS_TO", "NOT_EQUALS_TO", "CONTAINS", "DOES_NOT_CONTAIN", "BEGINS_WITH", "ENDS_WITH", "DOES_NOT_BEGIN_WITH", "DOES_NOT_END_WITH"
    #   resp.item_filters.s3_item_filters[0].etags #=> Array
    #   resp.item_filters.s3_item_filters[0].etags[0].value #=> String
    #   resp.item_filters.s3_item_filters[0].etags[0].operator #=> String, one of "EQUALS_TO", "NOT_EQUALS_TO", "CONTAINS", "DOES_NOT_CONTAIN", "BEGINS_WITH", "ENDS_WITH", "DOES_NOT_BEGIN_WITH", "DOES_NOT_END_WITH"
    #   resp.item_filters.ebs_item_filters #=> Array
    #   resp.item_filters.ebs_item_filters[0].file_paths #=> Array
    #   resp.item_filters.ebs_item_filters[0].file_paths[0].value #=> String
    #   resp.item_filters.ebs_item_filters[0].file_paths[0].operator #=> String, one of "EQUALS_TO", "NOT_EQUALS_TO", "CONTAINS", "DOES_NOT_CONTAIN", "BEGINS_WITH", "ENDS_WITH", "DOES_NOT_BEGIN_WITH", "DOES_NOT_END_WITH"
    #   resp.item_filters.ebs_item_filters[0].sizes #=> Array
    #   resp.item_filters.ebs_item_filters[0].sizes[0].value #=> Integer
    #   resp.item_filters.ebs_item_filters[0].sizes[0].operator #=> String, one of "EQUALS_TO", "NOT_EQUALS_TO", "LESS_THAN_EQUAL_TO", "GREATER_THAN_EQUAL_TO"
    #   resp.item_filters.ebs_item_filters[0].creation_times #=> Array
    #   resp.item_filters.ebs_item_filters[0].creation_times[0].value #=> Time
    #   resp.item_filters.ebs_item_filters[0].creation_times[0].operator #=> String, one of "EQUALS_TO", "NOT_EQUALS_TO", "LESS_THAN_EQUAL_TO", "GREATER_THAN_EQUAL_TO"
    #   resp.item_filters.ebs_item_filters[0].last_modification_times #=> Array
    #   resp.item_filters.ebs_item_filters[0].last_modification_times[0].value #=> Time
    #   resp.item_filters.ebs_item_filters[0].last_modification_times[0].operator #=> String, one of "EQUALS_TO", "NOT_EQUALS_TO", "LESS_THAN_EQUAL_TO", "GREATER_THAN_EQUAL_TO"
    #   resp.creation_time #=> Time
    #   resp.search_job_identifier #=> String
    #   resp.search_job_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backupsearch-2018-05-10/GetSearchJob AWS API Documentation
    #
    # @overload get_search_job(params = {})
    # @param [Hash] params ({})
    def get_search_job(params = {}, options = {})
      req = build_request(:get_search_job, params)
      req.send_request(options)
    end

    # This operation retrieves the metadata of an export job.
    #
    # An export job is an operation that transmits the results of a search
    # job to a specified S3 bucket in a .csv file.
    #
    # An export job allows you to retain results of a search beyond the
    # search job's scheduled retention of 7 days.
    #
    # @option params [required, String] :export_job_identifier
    #   This is the unique string that identifies a specific export job.
    #
    #   Required for this operation.
    #
    # @return [Types::GetSearchResultExportJobOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSearchResultExportJobOutput#export_job_identifier #export_job_identifier} => String
    #   * {Types::GetSearchResultExportJobOutput#export_job_arn #export_job_arn} => String
    #   * {Types::GetSearchResultExportJobOutput#status #status} => String
    #   * {Types::GetSearchResultExportJobOutput#creation_time #creation_time} => Time
    #   * {Types::GetSearchResultExportJobOutput#completion_time #completion_time} => Time
    #   * {Types::GetSearchResultExportJobOutput#status_message #status_message} => String
    #   * {Types::GetSearchResultExportJobOutput#export_specification #export_specification} => Types::ExportSpecification
    #   * {Types::GetSearchResultExportJobOutput#search_job_arn #search_job_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_search_result_export_job({
    #     export_job_identifier: "GenericId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.export_job_identifier #=> String
    #   resp.export_job_arn #=> String
    #   resp.status #=> String, one of "RUNNING", "FAILED", "COMPLETED"
    #   resp.creation_time #=> Time
    #   resp.completion_time #=> Time
    #   resp.status_message #=> String
    #   resp.export_specification.s3_export_specification.destination_bucket #=> String
    #   resp.export_specification.s3_export_specification.destination_prefix #=> String
    #   resp.search_job_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backupsearch-2018-05-10/GetSearchResultExportJob AWS API Documentation
    #
    # @overload get_search_result_export_job(params = {})
    # @param [Hash] params ({})
    def get_search_result_export_job(params = {}, options = {})
      req = build_request(:get_search_result_export_job, params)
      req.send_request(options)
    end

    # This operation returns a list of all backups (recovery points) in a
    # paginated format that were included in the search job.
    #
    # If a search does not display an expected backup in the results, you
    # can call this operation to display each backup included in the search.
    # Any backups that were not included because they have a `FAILED` status
    # from a permissions issue will be displayed, along with a status
    # message.
    #
    # Only recovery points with a backup index that has a status of `ACTIVE`
    # will be included in search results. If the index has any other status,
    # its status will be displayed along with a status message.
    #
    # @option params [required, String] :search_job_identifier
    #   The unique string that specifies the search job.
    #
    # @option params [String] :next_token
    #   The next item following a partial list of returned backups included in
    #   a search job.
    #
    #   For example, if a request is made to return `MaxResults` number of
    #   backups, `NextToken` allows you to return more items in your list
    #   starting at the location pointed to by the next token.
    #
    # @option params [Integer] :max_results
    #   The maximum number of resource list items to be returned.
    #
    # @return [Types::ListSearchJobBackupsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSearchJobBackupsOutput#results #results} => Array&lt;Types::SearchJobBackupsResult&gt;
    #   * {Types::ListSearchJobBackupsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_search_job_backups({
    #     search_job_identifier: "GenericId", # required
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.results #=> Array
    #   resp.results[0].status #=> String, one of "RUNNING", "COMPLETED", "STOPPING", "STOPPED", "FAILED"
    #   resp.results[0].status_message #=> String
    #   resp.results[0].resource_type #=> String, one of "S3", "EBS"
    #   resp.results[0].backup_resource_arn #=> String
    #   resp.results[0].source_resource_arn #=> String
    #   resp.results[0].index_creation_time #=> Time
    #   resp.results[0].backup_creation_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backupsearch-2018-05-10/ListSearchJobBackups AWS API Documentation
    #
    # @overload list_search_job_backups(params = {})
    # @param [Hash] params ({})
    def list_search_job_backups(params = {}, options = {})
      req = build_request(:list_search_job_backups, params)
      req.send_request(options)
    end

    # This operation returns a list of a specified search job.
    #
    # @option params [required, String] :search_job_identifier
    #   The unique string that specifies the search job.
    #
    # @option params [String] :next_token
    #   The next item following a partial list of returned search job results.
    #
    #   For example, if a request is made to return `MaxResults` number of
    #   search job results, `NextToken` allows you to return more items in
    #   your list starting at the location pointed to by the next token.
    #
    # @option params [Integer] :max_results
    #   The maximum number of resource list items to be returned.
    #
    # @return [Types::ListSearchJobResultsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSearchJobResultsOutput#results #results} => Array&lt;Types::ResultItem&gt;
    #   * {Types::ListSearchJobResultsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_search_job_results({
    #     search_job_identifier: "GenericId", # required
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.results #=> Array
    #   resp.results[0].s3_result_item.backup_resource_arn #=> String
    #   resp.results[0].s3_result_item.source_resource_arn #=> String
    #   resp.results[0].s3_result_item.backup_vault_name #=> String
    #   resp.results[0].s3_result_item.object_key #=> String
    #   resp.results[0].s3_result_item.object_size #=> Integer
    #   resp.results[0].s3_result_item.creation_time #=> Time
    #   resp.results[0].s3_result_item.etag #=> String
    #   resp.results[0].s3_result_item.version_id #=> String
    #   resp.results[0].ebs_result_item.backup_resource_arn #=> String
    #   resp.results[0].ebs_result_item.source_resource_arn #=> String
    #   resp.results[0].ebs_result_item.backup_vault_name #=> String
    #   resp.results[0].ebs_result_item.file_system_identifier #=> String
    #   resp.results[0].ebs_result_item.file_path #=> String
    #   resp.results[0].ebs_result_item.file_size #=> Integer
    #   resp.results[0].ebs_result_item.creation_time #=> Time
    #   resp.results[0].ebs_result_item.last_modified_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backupsearch-2018-05-10/ListSearchJobResults AWS API Documentation
    #
    # @overload list_search_job_results(params = {})
    # @param [Hash] params ({})
    def list_search_job_results(params = {}, options = {})
      req = build_request(:list_search_job_results, params)
      req.send_request(options)
    end

    # This operation returns a list of search jobs belonging to an account.
    #
    # @option params [String] :by_status
    #   Include this parameter to filter list by search job status.
    #
    # @option params [String] :next_token
    #   The next item following a partial list of returned search jobs.
    #
    #   For example, if a request is made to return `MaxResults` number of
    #   backups, `NextToken` allows you to return more items in your list
    #   starting at the location pointed to by the next token.
    #
    # @option params [Integer] :max_results
    #   The maximum number of resource list items to be returned.
    #
    # @return [Types::ListSearchJobsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSearchJobsOutput#search_jobs #search_jobs} => Array&lt;Types::SearchJobSummary&gt;
    #   * {Types::ListSearchJobsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_search_jobs({
    #     by_status: "RUNNING", # accepts RUNNING, COMPLETED, STOPPING, STOPPED, FAILED
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.search_jobs #=> Array
    #   resp.search_jobs[0].search_job_identifier #=> String
    #   resp.search_jobs[0].search_job_arn #=> String
    #   resp.search_jobs[0].name #=> String
    #   resp.search_jobs[0].status #=> String, one of "RUNNING", "COMPLETED", "STOPPING", "STOPPED", "FAILED"
    #   resp.search_jobs[0].creation_time #=> Time
    #   resp.search_jobs[0].completion_time #=> Time
    #   resp.search_jobs[0].search_scope_summary.total_recovery_points_to_scan_count #=> Integer
    #   resp.search_jobs[0].search_scope_summary.total_items_to_scan_count #=> Integer
    #   resp.search_jobs[0].status_message #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backupsearch-2018-05-10/ListSearchJobs AWS API Documentation
    #
    # @overload list_search_jobs(params = {})
    # @param [Hash] params ({})
    def list_search_jobs(params = {}, options = {})
      req = build_request(:list_search_jobs, params)
      req.send_request(options)
    end

    # This operation exports search results of a search job to a specified
    # destination S3 bucket.
    #
    # @option params [String] :status
    #   The search jobs to be included in the export job can be filtered by
    #   including this parameter.
    #
    # @option params [String] :search_job_identifier
    #   The unique string that specifies the search job.
    #
    # @option params [String] :next_token
    #   The next item following a partial list of returned backups included in
    #   a search job.
    #
    #   For example, if a request is made to return `MaxResults` number of
    #   backups, `NextToken` allows you to return more items in your list
    #   starting at the location pointed to by the next token.
    #
    # @option params [Integer] :max_results
    #   The maximum number of resource list items to be returned.
    #
    # @return [Types::ListSearchResultExportJobsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSearchResultExportJobsOutput#export_jobs #export_jobs} => Array&lt;Types::ExportJobSummary&gt;
    #   * {Types::ListSearchResultExportJobsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_search_result_export_jobs({
    #     status: "RUNNING", # accepts RUNNING, FAILED, COMPLETED
    #     search_job_identifier: "GenericId",
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.export_jobs #=> Array
    #   resp.export_jobs[0].export_job_identifier #=> String
    #   resp.export_jobs[0].export_job_arn #=> String
    #   resp.export_jobs[0].status #=> String, one of "RUNNING", "FAILED", "COMPLETED"
    #   resp.export_jobs[0].creation_time #=> Time
    #   resp.export_jobs[0].completion_time #=> Time
    #   resp.export_jobs[0].status_message #=> String
    #   resp.export_jobs[0].search_job_arn #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backupsearch-2018-05-10/ListSearchResultExportJobs AWS API Documentation
    #
    # @overload list_search_result_export_jobs(params = {})
    # @param [Hash] params ({})
    def list_search_result_export_jobs(params = {}, options = {})
      req = build_request(:list_search_result_export_jobs, params)
      req.send_request(options)
    end

    # This operation returns the tags for a resource type.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies the
    #   resource.&gt;
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Hash&lt;String,String&gt;
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/backupsearch-2018-05-10/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # This operation creates a search job which returns recovery points
    # filtered by SearchScope and items filtered by ItemFilters.
    #
    # You can optionally include ClientToken, EncryptionKeyArn, Name, and/or
    # Tags.
    #
    # @option params [Hash<String,String>] :tags
    #   List of tags returned by the operation.
    #
    # @option params [String] :name
    #   Include alphanumeric characters to create a name for this search job.
    #
    # @option params [String] :encryption_key_arn
    #   The encryption key for the specified search job.
    #
    # @option params [String] :client_token
    #   Include this parameter to allow multiple identical calls for
    #   idempotency.
    #
    #   A client token is valid for 8 hours after the first request that uses
    #   it is completed. After this time, any request with the same token is
    #   treated as a new request.
    #
    # @option params [required, Types::SearchScope] :search_scope
    #   This object can contain BackupResourceTypes, BackupResourceArns,
    #   BackupResourceCreationTime, BackupResourceTags, and SourceResourceArns
    #   to filter the recovery points returned by the search job.
    #
    # @option params [Types::ItemFilters] :item_filters
    #   Item Filters represent all input item properties specified when the
    #   search was created.
    #
    #   Contains either EBSItemFilters or S3ItemFilters
    #
    # @return [Types::StartSearchJobOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartSearchJobOutput#search_job_arn #search_job_arn} => String
    #   * {Types::StartSearchJobOutput#creation_time #creation_time} => Time
    #   * {Types::StartSearchJobOutput#search_job_identifier #search_job_identifier} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_search_job({
    #     tags: {
    #       "String" => "String",
    #     },
    #     name: "StartSearchJobInputNameString",
    #     encryption_key_arn: "EncryptionKeyArn",
    #     client_token: "String",
    #     search_scope: { # required
    #       backup_resource_types: ["S3"], # required, accepts S3, EBS
    #       backup_resource_creation_time: {
    #         created_after: Time.now,
    #         created_before: Time.now,
    #       },
    #       source_resource_arns: ["String"],
    #       backup_resource_arns: ["RecoveryPoint"],
    #       backup_resource_tags: {
    #         "String" => "String",
    #       },
    #     },
    #     item_filters: {
    #       s3_item_filters: [
    #         {
    #           object_keys: [
    #             {
    #               value: "String", # required
    #               operator: "EQUALS_TO", # accepts EQUALS_TO, NOT_EQUALS_TO, CONTAINS, DOES_NOT_CONTAIN, BEGINS_WITH, ENDS_WITH, DOES_NOT_BEGIN_WITH, DOES_NOT_END_WITH
    #             },
    #           ],
    #           sizes: [
    #             {
    #               value: 1, # required
    #               operator: "EQUALS_TO", # accepts EQUALS_TO, NOT_EQUALS_TO, LESS_THAN_EQUAL_TO, GREATER_THAN_EQUAL_TO
    #             },
    #           ],
    #           creation_times: [
    #             {
    #               value: Time.now, # required
    #               operator: "EQUALS_TO", # accepts EQUALS_TO, NOT_EQUALS_TO, LESS_THAN_EQUAL_TO, GREATER_THAN_EQUAL_TO
    #             },
    #           ],
    #           version_ids: [
    #             {
    #               value: "String", # required
    #               operator: "EQUALS_TO", # accepts EQUALS_TO, NOT_EQUALS_TO, CONTAINS, DOES_NOT_CONTAIN, BEGINS_WITH, ENDS_WITH, DOES_NOT_BEGIN_WITH, DOES_NOT_END_WITH
    #             },
    #           ],
    #           etags: [
    #             {
    #               value: "String", # required
    #               operator: "EQUALS_TO", # accepts EQUALS_TO, NOT_EQUALS_TO, CONTAINS, DOES_NOT_CONTAIN, BEGINS_WITH, ENDS_WITH, DOES_NOT_BEGIN_WITH, DOES_NOT_END_WITH
    #             },
    #           ],
    #         },
    #       ],
    #       ebs_item_filters: [
    #         {
    #           file_paths: [
    #             {
    #               value: "String", # required
    #               operator: "EQUALS_TO", # accepts EQUALS_TO, NOT_EQUALS_TO, CONTAINS, DOES_NOT_CONTAIN, BEGINS_WITH, ENDS_WITH, DOES_NOT_BEGIN_WITH, DOES_NOT_END_WITH
    #             },
    #           ],
    #           sizes: [
    #             {
    #               value: 1, # required
    #               operator: "EQUALS_TO", # accepts EQUALS_TO, NOT_EQUALS_TO, LESS_THAN_EQUAL_TO, GREATER_THAN_EQUAL_TO
    #             },
    #           ],
    #           creation_times: [
    #             {
    #               value: Time.now, # required
    #               operator: "EQUALS_TO", # accepts EQUALS_TO, NOT_EQUALS_TO, LESS_THAN_EQUAL_TO, GREATER_THAN_EQUAL_TO
    #             },
    #           ],
    #           last_modification_times: [
    #             {
    #               value: Time.now, # required
    #               operator: "EQUALS_TO", # accepts EQUALS_TO, NOT_EQUALS_TO, LESS_THAN_EQUAL_TO, GREATER_THAN_EQUAL_TO
    #             },
    #           ],
    #         },
    #       ],
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.search_job_arn #=> String
    #   resp.creation_time #=> Time
    #   resp.search_job_identifier #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backupsearch-2018-05-10/StartSearchJob AWS API Documentation
    #
    # @overload start_search_job(params = {})
    # @param [Hash] params ({})
    def start_search_job(params = {}, options = {})
      req = build_request(:start_search_job, params)
      req.send_request(options)
    end

    # This operations starts a job to export the results of search job to a
    # designated S3 bucket.
    #
    # @option params [required, String] :search_job_identifier
    #   The unique string that specifies the search job.
    #
    # @option params [required, Types::ExportSpecification] :export_specification
    #   This specification contains a required string of the destination
    #   bucket; optionally, you can include the destination prefix.
    #
    # @option params [String] :client_token
    #   Include this parameter to allow multiple identical calls for
    #   idempotency.
    #
    #   A client token is valid for 8 hours after the first request that uses
    #   it is completed. After this time, any request with the same token is
    #   treated as a new request.
    #
    # @option params [Hash<String,String>] :tags
    #   Optional tags to include. A tag is a key-value pair you can use to
    #   manage, filter, and search for your resources. Allowed characters
    #   include UTF-8 letters, numbers, spaces, and the following characters:
    #   + - = . \_ : /.
    #
    # @option params [String] :role_arn
    #   This parameter specifies the role ARN used to start the search results
    #   export jobs.
    #
    # @return [Types::StartSearchResultExportJobOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartSearchResultExportJobOutput#export_job_arn #export_job_arn} => String
    #   * {Types::StartSearchResultExportJobOutput#export_job_identifier #export_job_identifier} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_search_result_export_job({
    #     search_job_identifier: "GenericId", # required
    #     export_specification: { # required
    #       s3_export_specification: {
    #         destination_bucket: "String", # required
    #         destination_prefix: "String",
    #       },
    #     },
    #     client_token: "String",
    #     tags: {
    #       "String" => "String",
    #     },
    #     role_arn: "IamRoleArn",
    #   })
    #
    # @example Response structure
    #
    #   resp.export_job_arn #=> String
    #   resp.export_job_identifier #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backupsearch-2018-05-10/StartSearchResultExportJob AWS API Documentation
    #
    # @overload start_search_result_export_job(params = {})
    # @param [Hash] params ({})
    def start_search_result_export_job(params = {}, options = {})
      req = build_request(:start_search_result_export_job, params)
      req.send_request(options)
    end

    # This operations ends a search job.
    #
    # Only a search job with a status of `RUNNING` can be stopped.
    #
    # @option params [required, String] :search_job_identifier
    #   The unique string that specifies the search job.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_search_job({
    #     search_job_identifier: "GenericId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backupsearch-2018-05-10/StopSearchJob AWS API Documentation
    #
    # @overload stop_search_job(params = {})
    # @param [Hash] params ({})
    def stop_search_job(params = {}, options = {})
      req = build_request(:stop_search_job, params)
      req.send_request(options)
    end

    # This operation puts tags on the resource you indicate.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies the resource.
    #
    #   This is the resource that will have the indicated tags.
    #
    # @option params [required, Hash<String,String>] :tags
    #   Required tags to include. A tag is a key-value pair you can use to
    #   manage, filter, and search for your resources. Allowed characters
    #   include UTF-8 letters, numbers, spaces, and the following characters:
    #   + - = . \_ : /.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "String", # required
    #     tags: { # required
    #       "String" => "String",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backupsearch-2018-05-10/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # This operation removes tags from the specified resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies the resource
    #   where you want to remove tags.
    #
    # @option params [required, Array<String>] :tag_keys
    #   This required parameter contains the tag keys you want to remove from
    #   the source.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "String", # required
    #     tag_keys: ["String"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/backupsearch-2018-05-10/UntagResource AWS API Documentation
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
        Aws::Telemetry.module_to_tracer_name('Aws::BackupSearch')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-backupsearch'
      context[:gem_version] = '1.11.0'
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
