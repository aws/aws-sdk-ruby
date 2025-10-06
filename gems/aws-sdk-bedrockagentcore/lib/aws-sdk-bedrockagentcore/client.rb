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
require 'aws-sdk-core/plugins/event_stream_configuration'

module Aws::BedrockAgentCore
  # An API client for BedrockAgentCore.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::BedrockAgentCore::Client.new(
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

    @identifier = :bedrockagentcore

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
    add_plugin(Aws::Plugins::EventStreamConfiguration)
    add_plugin(Aws::BedrockAgentCore::Plugins::Endpoints)

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
    #   @option options [Proc] :event_stream_handler
    #     When an EventStream or Proc object is provided, it will be used as callback for each chunk of event stream response received along the way.
    #
    #   @option options [Boolean] :ignore_configured_endpoint_urls
    #     Setting to true disables use of endpoint URLs provided via environment
    #     variables and the shared configuration file.
    #
    #   @option options [Proc] :input_event_stream_handler
    #     When an EventStream or Proc object is provided, it can be used for sending events for the event stream.
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
    #   @option options [Proc] :output_event_stream_handler
    #     When an EventStream or Proc object is provided, it will be used as callback for each chunk of event stream response received along the way.
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
    #   @option options [Aws::BedrockAgentCore::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::BedrockAgentCore::EndpointParameters`.
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

    # Creates multiple memory records in a single batch operation for the
    # specified memory with custom content.
    #
    # @option params [required, String] :memory_id
    #   The unique ID of the memory resource where records will be created.
    #
    # @option params [required, Array<Types::MemoryRecordCreateInput>] :records
    #   A list of memory record creation inputs to be processed in the batch
    #   operation.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier to ensure idempotent processing of
    #   the batch request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::BatchCreateMemoryRecordsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchCreateMemoryRecordsOutput#successful_records #successful_records} => Array&lt;Types::MemoryRecordOutput&gt;
    #   * {Types::BatchCreateMemoryRecordsOutput#failed_records #failed_records} => Array&lt;Types::MemoryRecordOutput&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_create_memory_records({
    #     memory_id: "MemoryId", # required
    #     records: [ # required
    #       {
    #         request_identifier: "RequestIdentifier", # required
    #         namespaces: ["Namespace"], # required
    #         content: { # required
    #           text: "MemoryContentTextString",
    #         },
    #         timestamp: Time.now, # required
    #         memory_strategy_id: "MemoryStrategyId",
    #       },
    #     ],
    #     client_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.successful_records #=> Array
    #   resp.successful_records[0].memory_record_id #=> String
    #   resp.successful_records[0].status #=> String, one of "SUCCEEDED", "FAILED"
    #   resp.successful_records[0].request_identifier #=> String
    #   resp.successful_records[0].error_code #=> Integer
    #   resp.successful_records[0].error_message #=> String
    #   resp.failed_records #=> Array
    #   resp.failed_records[0].memory_record_id #=> String
    #   resp.failed_records[0].status #=> String, one of "SUCCEEDED", "FAILED"
    #   resp.failed_records[0].request_identifier #=> String
    #   resp.failed_records[0].error_code #=> Integer
    #   resp.failed_records[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/BatchCreateMemoryRecords AWS API Documentation
    #
    # @overload batch_create_memory_records(params = {})
    # @param [Hash] params ({})
    def batch_create_memory_records(params = {}, options = {})
      req = build_request(:batch_create_memory_records, params)
      req.send_request(options)
    end

    # Deletes multiple memory records in a single batch operation from the
    # specified memory.
    #
    # @option params [required, String] :memory_id
    #   The unique ID of the memory resource where records will be deleted.
    #
    # @option params [required, Array<Types::MemoryRecordDeleteInput>] :records
    #   A list of memory record deletion inputs to be processed in the batch
    #   operation.
    #
    # @return [Types::BatchDeleteMemoryRecordsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchDeleteMemoryRecordsOutput#successful_records #successful_records} => Array&lt;Types::MemoryRecordOutput&gt;
    #   * {Types::BatchDeleteMemoryRecordsOutput#failed_records #failed_records} => Array&lt;Types::MemoryRecordOutput&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_delete_memory_records({
    #     memory_id: "MemoryId", # required
    #     records: [ # required
    #       {
    #         memory_record_id: "MemoryRecordId", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.successful_records #=> Array
    #   resp.successful_records[0].memory_record_id #=> String
    #   resp.successful_records[0].status #=> String, one of "SUCCEEDED", "FAILED"
    #   resp.successful_records[0].request_identifier #=> String
    #   resp.successful_records[0].error_code #=> Integer
    #   resp.successful_records[0].error_message #=> String
    #   resp.failed_records #=> Array
    #   resp.failed_records[0].memory_record_id #=> String
    #   resp.failed_records[0].status #=> String, one of "SUCCEEDED", "FAILED"
    #   resp.failed_records[0].request_identifier #=> String
    #   resp.failed_records[0].error_code #=> Integer
    #   resp.failed_records[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/BatchDeleteMemoryRecords AWS API Documentation
    #
    # @overload batch_delete_memory_records(params = {})
    # @param [Hash] params ({})
    def batch_delete_memory_records(params = {}, options = {})
      req = build_request(:batch_delete_memory_records, params)
      req.send_request(options)
    end

    # Updates multiple memory records with custom content in a single batch
    # operation within the specified memory.
    #
    # @option params [required, String] :memory_id
    #   The unique ID of the memory resource where records will be updated.
    #
    # @option params [required, Array<Types::MemoryRecordUpdateInput>] :records
    #   A list of memory record update inputs to be processed in the batch
    #   operation.
    #
    # @return [Types::BatchUpdateMemoryRecordsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchUpdateMemoryRecordsOutput#successful_records #successful_records} => Array&lt;Types::MemoryRecordOutput&gt;
    #   * {Types::BatchUpdateMemoryRecordsOutput#failed_records #failed_records} => Array&lt;Types::MemoryRecordOutput&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_update_memory_records({
    #     memory_id: "MemoryId", # required
    #     records: [ # required
    #       {
    #         memory_record_id: "MemoryRecordId", # required
    #         timestamp: Time.now, # required
    #         content: {
    #           text: "MemoryContentTextString",
    #         },
    #         namespaces: ["Namespace"],
    #         memory_strategy_id: "MemoryStrategyId",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.successful_records #=> Array
    #   resp.successful_records[0].memory_record_id #=> String
    #   resp.successful_records[0].status #=> String, one of "SUCCEEDED", "FAILED"
    #   resp.successful_records[0].request_identifier #=> String
    #   resp.successful_records[0].error_code #=> Integer
    #   resp.successful_records[0].error_message #=> String
    #   resp.failed_records #=> Array
    #   resp.failed_records[0].memory_record_id #=> String
    #   resp.failed_records[0].status #=> String, one of "SUCCEEDED", "FAILED"
    #   resp.failed_records[0].request_identifier #=> String
    #   resp.failed_records[0].error_code #=> Integer
    #   resp.failed_records[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/BatchUpdateMemoryRecords AWS API Documentation
    #
    # @overload batch_update_memory_records(params = {})
    # @param [Hash] params ({})
    def batch_update_memory_records(params = {}, options = {})
      req = build_request(:batch_update_memory_records, params)
      req.send_request(options)
    end

    # Creates an event in an AgentCore Memory resource. Events represent
    # interactions or activities that occur within a session and are
    # associated with specific actors.
    #
    # To use this operation, you must have the
    # `bedrock-agentcore:CreateEvent` permission.
    #
    # This operation is subject to request rate limiting.
    #
    # @option params [required, String] :memory_id
    #   The identifier of the AgentCore Memory resource in which to create the
    #   event.
    #
    # @option params [required, String] :actor_id
    #   The identifier of the actor associated with this event. An actor
    #   represents an entity that participates in sessions and generates
    #   events.
    #
    # @option params [String] :session_id
    #   The identifier of the session in which this event occurs. A session
    #   represents a sequence of related events.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :event_timestamp
    #   The timestamp when the event occurred. If not specified, the current
    #   time is used.
    #
    # @option params [required, Array<Types::PayloadType>] :payload
    #   The content payload of the event. This can include conversational data
    #   or binary content.
    #
    # @option params [Types::Branch] :branch
    #   The branch information for this event. Branches allow for organizing
    #   events into different conversation threads or paths.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier to ensure that the operation
    #   completes no more than one time. If this token matches a previous
    #   request, AgentCore ignores the request, but does not return an error.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Hash<String,Types::MetadataValue>] :metadata
    #   The key-value metadata to attach to the event.
    #
    # @return [Types::CreateEventOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateEventOutput#event #event} => Types::Event
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_event({
    #     memory_id: "MemoryId", # required
    #     actor_id: "ActorId", # required
    #     session_id: "SessionId",
    #     event_timestamp: Time.now, # required
    #     payload: [ # required
    #       {
    #         conversational: {
    #           content: { # required
    #             text: "ContentTextString",
    #           },
    #           role: "ASSISTANT", # required, accepts ASSISTANT, USER, TOOL, OTHER
    #         },
    #         blob: {
    #         },
    #       },
    #     ],
    #     branch: {
    #       root_event_id: "EventId",
    #       name: "BranchName", # required
    #     },
    #     client_token: "String",
    #     metadata: {
    #       "MetadataKey" => {
    #         string_value: "MetadataValueStringValueString",
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.event.memory_id #=> String
    #   resp.event.actor_id #=> String
    #   resp.event.session_id #=> String
    #   resp.event.event_id #=> String
    #   resp.event.event_timestamp #=> Time
    #   resp.event.payload #=> Array
    #   resp.event.payload[0].conversational.content.text #=> String
    #   resp.event.payload[0].conversational.role #=> String, one of "ASSISTANT", "USER", "TOOL", "OTHER"
    #   resp.event.branch.root_event_id #=> String
    #   resp.event.branch.name #=> String
    #   resp.event.metadata #=> Hash
    #   resp.event.metadata["MetadataKey"].string_value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/CreateEvent AWS API Documentation
    #
    # @overload create_event(params = {})
    # @param [Hash] params ({})
    def create_event(params = {}, options = {})
      req = build_request(:create_event, params)
      req.send_request(options)
    end

    # Deletes an event from an AgentCore Memory resource. When you delete an
    # event, it is permanently removed.
    #
    # To use this operation, you must have the
    # `bedrock-agentcore:DeleteEvent` permission.
    #
    # @option params [required, String] :memory_id
    #   The identifier of the AgentCore Memory resource from which to delete
    #   the event.
    #
    # @option params [required, String] :session_id
    #   The identifier of the session containing the event to delete.
    #
    # @option params [required, String] :event_id
    #   The identifier of the event to delete.
    #
    # @option params [required, String] :actor_id
    #   The identifier of the actor associated with the event to delete.
    #
    # @return [Types::DeleteEventOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteEventOutput#event_id #event_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_event({
    #     memory_id: "MemoryId", # required
    #     session_id: "SessionId", # required
    #     event_id: "EventId", # required
    #     actor_id: "ActorId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.event_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/DeleteEvent AWS API Documentation
    #
    # @overload delete_event(params = {})
    # @param [Hash] params ({})
    def delete_event(params = {}, options = {})
      req = build_request(:delete_event, params)
      req.send_request(options)
    end

    # Deletes a memory record from an AgentCore Memory resource. When you
    # delete a memory record, it is permanently removed.
    #
    # To use this operation, you must have the
    # `bedrock-agentcore:DeleteMemoryRecord` permission.
    #
    # @option params [required, String] :memory_id
    #   The identifier of the AgentCore Memory resource from which to delete
    #   the memory record.
    #
    # @option params [required, String] :memory_record_id
    #   The identifier of the memory record to delete.
    #
    # @return [Types::DeleteMemoryRecordOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteMemoryRecordOutput#memory_record_id #memory_record_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_memory_record({
    #     memory_id: "MemoryId", # required
    #     memory_record_id: "MemoryRecordId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.memory_record_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/DeleteMemoryRecord AWS API Documentation
    #
    # @overload delete_memory_record(params = {})
    # @param [Hash] params ({})
    def delete_memory_record(params = {}, options = {})
      req = build_request(:delete_memory_record, params)
      req.send_request(options)
    end

    # Retrieves the A2A agent card associated with an AgentCore Runtime
    # agent.
    #
    # @option params [String] :runtime_session_id
    #   The session ID that the AgentCore Runtime agent is using.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :agent_runtime_arn
    #   The ARN of the AgentCore Runtime agent for which you want to get the
    #   A2A agent card.
    #
    # @option params [String] :qualifier
    #   Optional qualifier to specify an agent alias, such as `prod`code&gt;
    #   or `dev`. If you don't provide a value, the DEFAULT alias is used.
    #
    # @return [Types::GetAgentCardResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAgentCardResponse#runtime_session_id #runtime_session_id} => String
    #   * {Types::GetAgentCardResponse#agent_card #agent_card} => Hash,Array,String,Numeric,Boolean
    #   * {Types::GetAgentCardResponse#status_code #status_code} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_agent_card({
    #     runtime_session_id: "SessionType",
    #     agent_runtime_arn: "String", # required
    #     qualifier: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.runtime_session_id #=> String
    #   resp.status_code #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/GetAgentCard AWS API Documentation
    #
    # @overload get_agent_card(params = {})
    # @param [Hash] params ({})
    def get_agent_card(params = {}, options = {})
      req = build_request(:get_agent_card, params)
      req.send_request(options)
    end

    # Retrieves detailed information about a specific browser session in
    # Amazon Bedrock. This operation returns the session's configuration,
    # current status, associated streams, and metadata.
    #
    # To get a browser session, you must specify both the browser identifier
    # and the session ID. The response includes information about the
    # session's viewport configuration, timeout settings, and stream
    # endpoints.
    #
    # The following operations are related to `GetBrowserSession`:
    #
    # * [StartBrowserSession][1]
    #
    # * [ListBrowserSessions][2]
    #
    # * [StopBrowserSession][3]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/API_StartBrowserSession.html
    # [2]: https://docs.aws.amazon.com/API_ListBrowserSessions.html
    # [3]: https://docs.aws.amazon.com/API_StopBrowserSession.html
    #
    # @option params [required, String] :browser_identifier
    #   The unique identifier of the browser associated with the session.
    #
    # @option params [required, String] :session_id
    #   The unique identifier of the browser session to retrieve.
    #
    # @return [Types::GetBrowserSessionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetBrowserSessionResponse#browser_identifier #browser_identifier} => String
    #   * {Types::GetBrowserSessionResponse#session_id #session_id} => String
    #   * {Types::GetBrowserSessionResponse#name #name} => String
    #   * {Types::GetBrowserSessionResponse#created_at #created_at} => Time
    #   * {Types::GetBrowserSessionResponse#view_port #view_port} => Types::ViewPort
    #   * {Types::GetBrowserSessionResponse#session_timeout_seconds #session_timeout_seconds} => Integer
    #   * {Types::GetBrowserSessionResponse#status #status} => String
    #   * {Types::GetBrowserSessionResponse#streams #streams} => Types::BrowserSessionStream
    #   * {Types::GetBrowserSessionResponse#session_replay_artifact #session_replay_artifact} => String
    #   * {Types::GetBrowserSessionResponse#last_updated_at #last_updated_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_browser_session({
    #     browser_identifier: "String", # required
    #     session_id: "BrowserSessionId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.browser_identifier #=> String
    #   resp.session_id #=> String
    #   resp.name #=> String
    #   resp.created_at #=> Time
    #   resp.view_port.width #=> Integer
    #   resp.view_port.height #=> Integer
    #   resp.session_timeout_seconds #=> Integer
    #   resp.status #=> String, one of "READY", "TERMINATED"
    #   resp.streams.automation_stream.stream_endpoint #=> String
    #   resp.streams.automation_stream.stream_status #=> String, one of "ENABLED", "DISABLED"
    #   resp.streams.live_view_stream.stream_endpoint #=> String
    #   resp.session_replay_artifact #=> String
    #   resp.last_updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/GetBrowserSession AWS API Documentation
    #
    # @overload get_browser_session(params = {})
    # @param [Hash] params ({})
    def get_browser_session(params = {}, options = {})
      req = build_request(:get_browser_session, params)
      req.send_request(options)
    end

    # Retrieves detailed information about a specific code interpreter
    # session in Amazon Bedrock. This operation returns the session's
    # configuration, current status, and metadata.
    #
    # To get a code interpreter session, you must specify both the code
    # interpreter identifier and the session ID. The response includes
    # information about the session's timeout settings and current status.
    #
    # The following operations are related to `GetCodeInterpreterSession`:
    #
    # * [StartCodeInterpreterSession][1]
    #
    # * [ListCodeInterpreterSessions][2]
    #
    # * [StopCodeInterpreterSession][3]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/API_StartCodeInterpreterSession.html
    # [2]: https://docs.aws.amazon.com/API_ListCodeInterpreterSessions.html
    # [3]: https://docs.aws.amazon.com/API_StopCodeInterpreterSession.html
    #
    # @option params [required, String] :code_interpreter_identifier
    #   The unique identifier of the code interpreter associated with the
    #   session.
    #
    # @option params [required, String] :session_id
    #   The unique identifier of the code interpreter session to retrieve.
    #
    # @return [Types::GetCodeInterpreterSessionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCodeInterpreterSessionResponse#code_interpreter_identifier #code_interpreter_identifier} => String
    #   * {Types::GetCodeInterpreterSessionResponse#session_id #session_id} => String
    #   * {Types::GetCodeInterpreterSessionResponse#name #name} => String
    #   * {Types::GetCodeInterpreterSessionResponse#created_at #created_at} => Time
    #   * {Types::GetCodeInterpreterSessionResponse#session_timeout_seconds #session_timeout_seconds} => Integer
    #   * {Types::GetCodeInterpreterSessionResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_code_interpreter_session({
    #     code_interpreter_identifier: "String", # required
    #     session_id: "CodeInterpreterSessionId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.code_interpreter_identifier #=> String
    #   resp.session_id #=> String
    #   resp.name #=> String
    #   resp.created_at #=> Time
    #   resp.session_timeout_seconds #=> Integer
    #   resp.status #=> String, one of "READY", "TERMINATED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/GetCodeInterpreterSession AWS API Documentation
    #
    # @overload get_code_interpreter_session(params = {})
    # @param [Hash] params ({})
    def get_code_interpreter_session(params = {}, options = {})
      req = build_request(:get_code_interpreter_session, params)
      req.send_request(options)
    end

    # Retrieves information about a specific event in an AgentCore Memory
    # resource.
    #
    # To use this operation, you must have the `bedrock-agentcore:GetEvent`
    # permission.
    #
    # @option params [required, String] :memory_id
    #   The identifier of the AgentCore Memory resource containing the event.
    #
    # @option params [required, String] :session_id
    #   The identifier of the session containing the event.
    #
    # @option params [required, String] :actor_id
    #   The identifier of the actor associated with the event.
    #
    # @option params [required, String] :event_id
    #   The identifier of the event to retrieve.
    #
    # @return [Types::GetEventOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetEventOutput#event #event} => Types::Event
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_event({
    #     memory_id: "MemoryId", # required
    #     session_id: "SessionId", # required
    #     actor_id: "ActorId", # required
    #     event_id: "EventId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.event.memory_id #=> String
    #   resp.event.actor_id #=> String
    #   resp.event.session_id #=> String
    #   resp.event.event_id #=> String
    #   resp.event.event_timestamp #=> Time
    #   resp.event.payload #=> Array
    #   resp.event.payload[0].conversational.content.text #=> String
    #   resp.event.payload[0].conversational.role #=> String, one of "ASSISTANT", "USER", "TOOL", "OTHER"
    #   resp.event.branch.root_event_id #=> String
    #   resp.event.branch.name #=> String
    #   resp.event.metadata #=> Hash
    #   resp.event.metadata["MetadataKey"].string_value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/GetEvent AWS API Documentation
    #
    # @overload get_event(params = {})
    # @param [Hash] params ({})
    def get_event(params = {}, options = {})
      req = build_request(:get_event, params)
      req.send_request(options)
    end

    # Retrieves a specific memory record from an AgentCore Memory resource.
    #
    # To use this operation, you must have the
    # `bedrock-agentcore:GetMemoryRecord` permission.
    #
    # @option params [required, String] :memory_id
    #   The identifier of the AgentCore Memory resource containing the memory
    #   record.
    #
    # @option params [required, String] :memory_record_id
    #   The identifier of the memory record to retrieve.
    #
    # @return [Types::GetMemoryRecordOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetMemoryRecordOutput#memory_record #memory_record} => Types::MemoryRecord
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_memory_record({
    #     memory_id: "MemoryId", # required
    #     memory_record_id: "MemoryRecordId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.memory_record.memory_record_id #=> String
    #   resp.memory_record.content.text #=> String
    #   resp.memory_record.memory_strategy_id #=> String
    #   resp.memory_record.namespaces #=> Array
    #   resp.memory_record.namespaces[0] #=> String
    #   resp.memory_record.created_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/GetMemoryRecord AWS API Documentation
    #
    # @overload get_memory_record(params = {})
    # @param [Hash] params ({})
    def get_memory_record(params = {}, options = {})
      req = build_request(:get_memory_record, params)
      req.send_request(options)
    end

    # Retrieves the API key associated with an API key credential provider.
    #
    # @option params [required, String] :workload_identity_token
    #   The identity token of the workload from which you want to retrieve the
    #   API key.
    #
    # @option params [required, String] :resource_credential_provider_name
    #   The credential provider name for the resource from which you are
    #   retrieving the API key.
    #
    # @return [Types::GetResourceApiKeyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetResourceApiKeyResponse#api_key #api_key} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_resource_api_key({
    #     workload_identity_token: "WorkloadIdentityTokenType", # required
    #     resource_credential_provider_name: "CredentialProviderName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.api_key #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/GetResourceApiKey AWS API Documentation
    #
    # @overload get_resource_api_key(params = {})
    # @param [Hash] params ({})
    def get_resource_api_key(params = {}, options = {})
      req = build_request(:get_resource_api_key, params)
      req.send_request(options)
    end

    # Returns the OAuth 2.0 token of the provided resource.
    #
    # @option params [required, String] :workload_identity_token
    #   The identity token of the workload from which you want to retrieve the
    #   OAuth2 token.
    #
    # @option params [required, String] :resource_credential_provider_name
    #   The name of the resource's credential provider.
    #
    # @option params [required, Array<String>] :scopes
    #   The OAuth scopes being requested.
    #
    # @option params [required, String] :oauth2_flow
    #   The type of flow to be performed.
    #
    # @option params [String] :resource_oauth_2_return_url
    #   The callback URL to redirect to after the OAuth 2.0 token retrieval is
    #   complete. This URL must be one of the provided URLs configured for the
    #   workload identity.
    #
    # @option params [Boolean] :force_authentication
    #   Indicates whether to always initiate a new three-legged OAuth (3LO)
    #   flow, regardless of any existing session.
    #
    # @option params [Hash<String,String>] :custom_parameters
    #   A map of custom parameters to include in the authorization request to
    #   the resource credential provider. These parameters are in addition to
    #   the standard OAuth 2.0 flow parameters, and will not override them.
    #
    # @return [Types::GetResourceOauth2TokenResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetResourceOauth2TokenResponse#authorization_url #authorization_url} => String
    #   * {Types::GetResourceOauth2TokenResponse#access_token #access_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_resource_oauth_2_token({
    #     workload_identity_token: "WorkloadIdentityTokenType", # required
    #     resource_credential_provider_name: "CredentialProviderName", # required
    #     scopes: ["ScopeType"], # required
    #     oauth2_flow: "USER_FEDERATION", # required, accepts USER_FEDERATION, M2M
    #     resource_oauth_2_return_url: "ResourceOauth2ReturnUrlType",
    #     force_authentication: false,
    #     custom_parameters: {
    #       "CustomRequestKeyType" => "CustomRequestValueType",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.authorization_url #=> String
    #   resp.access_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/GetResourceOauth2Token AWS API Documentation
    #
    # @overload get_resource_oauth_2_token(params = {})
    # @param [Hash] params ({})
    def get_resource_oauth_2_token(params = {}, options = {})
      req = build_request(:get_resource_oauth_2_token, params)
      req.send_request(options)
    end

    # Obtains a workload access token for agentic workloads not acting on
    # behalf of a user.
    #
    # @option params [required, String] :workload_name
    #   The unique identifier for the registered workload.
    #
    # @return [Types::GetWorkloadAccessTokenResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetWorkloadAccessTokenResponse#workload_access_token #workload_access_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_workload_access_token({
    #     workload_name: "WorkloadIdentityNameType", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.workload_access_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/GetWorkloadAccessToken AWS API Documentation
    #
    # @overload get_workload_access_token(params = {})
    # @param [Hash] params ({})
    def get_workload_access_token(params = {}, options = {})
      req = build_request(:get_workload_access_token, params)
      req.send_request(options)
    end

    # Obtains a workload access token for agentic workloads acting on behalf
    # of a user, using a JWT token.
    #
    # @option params [required, String] :workload_name
    #   The unique identifier for the registered workload.
    #
    # @option params [required, String] :user_token
    #   The OAuth 2.0 token issued by the user's identity provider.
    #
    # @return [Types::GetWorkloadAccessTokenForJWTResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetWorkloadAccessTokenForJWTResponse#workload_access_token #workload_access_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_workload_access_token_for_jwt({
    #     workload_name: "WorkloadIdentityNameType", # required
    #     user_token: "UserTokenType", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.workload_access_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/GetWorkloadAccessTokenForJWT AWS API Documentation
    #
    # @overload get_workload_access_token_for_jwt(params = {})
    # @param [Hash] params ({})
    def get_workload_access_token_for_jwt(params = {}, options = {})
      req = build_request(:get_workload_access_token_for_jwt, params)
      req.send_request(options)
    end

    # Obtains a workload access token for agentic workloads acting on behalf
    # of a user, using the user's ID.
    #
    # @option params [required, String] :workload_name
    #   The name of the workload from which you want to retrieve the access
    #   token.
    #
    # @option params [required, String] :user_id
    #   The ID of the user for whom you are retrieving the access token.
    #
    # @return [Types::GetWorkloadAccessTokenForUserIdResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetWorkloadAccessTokenForUserIdResponse#workload_access_token #workload_access_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_workload_access_token_for_user_id({
    #     workload_name: "WorkloadIdentityNameType", # required
    #     user_id: "UserIdType", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.workload_access_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/GetWorkloadAccessTokenForUserId AWS API Documentation
    #
    # @overload get_workload_access_token_for_user_id(params = {})
    # @param [Hash] params ({})
    def get_workload_access_token_for_user_id(params = {}, options = {})
      req = build_request(:get_workload_access_token_for_user_id, params)
      req.send_request(options)
    end

    # Sends a request to an agent or tool hosted in an Amazon Bedrock
    # AgentCore Runtime and receives responses in real-time.
    #
    # To invoke an agent you must specify the AgentCore Runtime ARN and
    # provide a payload containing your request. You can optionally specify
    # a qualifier to target a specific version or endpoint of the agent.
    #
    # This operation supports streaming responses, allowing you to receive
    # partial responses as they become available. We recommend using
    # pagination to ensure that the operation returns quickly and
    # successfully when processing large responses.
    #
    # For example code, see [Invoke an AgentCore Runtime agent][1].
    #
    # If you're integrating your agent with OAuth, you can't use the
    # Amazon Web Services SDK to call `InvokeAgentRuntime`. Instead, make a
    # HTTPS request to `InvokeAgentRuntime`. For an example, see
    # [Authenticate and authorize with Inbound Auth and Outbound Auth][2].
    #
    # To use this operation, you must have the
    # `bedrock-agentcore:InvokeAgentRuntime` permission.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock-agentcore/latest/devguide/runtime-invoke-agent.html
    # [2]: https://docs.aws.amazon.com/bedrock-agentcore/latest/devguide/runtime-oauth.html
    #
    # @option params [String] :content_type
    #   The MIME type of the input data in the payload. This tells the agent
    #   runtime how to interpret the payload data. Common values include
    #   application/json for JSON data.
    #
    # @option params [String] :accept
    #   The desired MIME type for the response from the agent runtime. This
    #   tells the agent runtime what format to use for the response data.
    #   Common values include application/json for JSON data.
    #
    # @option params [String] :mcp_session_id
    #   The identifier of the MCP session.
    #
    # @option params [String] :runtime_session_id
    #   The identifier of the runtime session.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :mcp_protocol_version
    #   The version of the MCP protocol being used.
    #
    # @option params [String] :runtime_user_id
    #   The identifier of the runtime user.
    #
    # @option params [String] :trace_id
    #   The trace identifier for request tracking.
    #
    # @option params [String] :trace_parent
    #   The parent trace information for distributed tracing.
    #
    # @option params [String] :trace_state
    #   The trace state information for distributed tracing.
    #
    # @option params [String] :baggage
    #   Additional context information for distributed tracing.
    #
    # @option params [required, String] :agent_runtime_arn
    #   The Amazon Web Services Resource Name (ARN) of the agent runtime to
    #   invoke. The ARN uniquely identifies the agent runtime resource in
    #   Amazon Bedrock.
    #
    # @option params [String] :qualifier
    #   The qualifier to use for the agent runtime. This can be a version
    #   number or an endpoint name that points to a specific version. If not
    #   specified, Amazon Bedrock uses the default version of the agent
    #   runtime.
    #
    # @option params [required, String, StringIO, File] :payload
    #   The input data to send to the agent runtime. The format of this data
    #   depends on the specific agent configuration and must match the
    #   specified content type. For most agents, this is a JSON object
    #   containing the user's request.
    #
    # @return [Types::InvokeAgentRuntimeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::InvokeAgentRuntimeResponse#runtime_session_id #runtime_session_id} => String
    #   * {Types::InvokeAgentRuntimeResponse#mcp_session_id #mcp_session_id} => String
    #   * {Types::InvokeAgentRuntimeResponse#mcp_protocol_version #mcp_protocol_version} => String
    #   * {Types::InvokeAgentRuntimeResponse#trace_id #trace_id} => String
    #   * {Types::InvokeAgentRuntimeResponse#trace_parent #trace_parent} => String
    #   * {Types::InvokeAgentRuntimeResponse#trace_state #trace_state} => String
    #   * {Types::InvokeAgentRuntimeResponse#baggage #baggage} => String
    #   * {Types::InvokeAgentRuntimeResponse#content_type #content_type} => String
    #   * {Types::InvokeAgentRuntimeResponse#response #response} => IO
    #   * {Types::InvokeAgentRuntimeResponse#status_code #status_code} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.invoke_agent_runtime({
    #     content_type: "MimeType",
    #     accept: "MimeType",
    #     mcp_session_id: "StringType",
    #     runtime_session_id: "SessionType",
    #     mcp_protocol_version: "StringType",
    #     runtime_user_id: "StringType",
    #     trace_id: "InvokeAgentRuntimeRequestTraceIdString",
    #     trace_parent: "InvokeAgentRuntimeRequestTraceParentString",
    #     trace_state: "InvokeAgentRuntimeRequestTraceStateString",
    #     baggage: "InvokeAgentRuntimeRequestBaggageString",
    #     agent_runtime_arn: "String", # required
    #     qualifier: "String",
    #     payload: "data", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.runtime_session_id #=> String
    #   resp.mcp_session_id #=> String
    #   resp.mcp_protocol_version #=> String
    #   resp.trace_id #=> String
    #   resp.trace_parent #=> String
    #   resp.trace_state #=> String
    #   resp.baggage #=> String
    #   resp.content_type #=> String
    #   resp.response #=> IO
    #   resp.status_code #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/InvokeAgentRuntime AWS API Documentation
    #
    # @overload invoke_agent_runtime(params = {})
    # @param [Hash] params ({})
    def invoke_agent_runtime(params = {}, options = {}, &block)
      req = build_request(:invoke_agent_runtime, params)
      req.send_request(options, &block)
    end

    # Executes code within an active code interpreter session in Amazon
    # Bedrock. This operation processes the provided code, runs it in a
    # secure environment, and returns the execution results including
    # output, errors, and generated visualizations.
    #
    # To execute code, you must specify the code interpreter identifier,
    # session ID, and the code to run in the arguments parameter. The
    # operation returns a stream containing the execution results, which can
    # include text output, error messages, and data visualizations.
    #
    # This operation is subject to request rate limiting based on your
    # account's service quotas.
    #
    # The following operations are related to `InvokeCodeInterpreter`:
    #
    # * [StartCodeInterpreterSession][1]
    #
    # * [GetCodeInterpreterSession][2]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/API_StartCodeInterpreterSession.html
    # [2]: https://docs.aws.amazon.com/API_GetCodeInterpreterSession.html
    #
    # @option params [required, String] :code_interpreter_identifier
    #   The unique identifier of the code interpreter associated with the
    #   session. This must match the identifier used when creating the session
    #   with `StartCodeInterpreterSession`.
    #
    # @option params [String] :session_id
    #   The unique identifier of the code interpreter session to use. This
    #   must be an active session created with `StartCodeInterpreterSession`.
    #   If the session has expired or been stopped, the request will fail.
    #
    # @option params [required, String] :name
    #   The name of the code interpreter to invoke.
    #
    # @option params [Types::ToolArguments] :arguments
    #   The arguments for the code interpreter. This includes the code to
    #   execute and any additional parameters such as the programming
    #   language, whether to clear the execution context, and other execution
    #   options. The structure of this parameter depends on the specific code
    #   interpreter being used.
    #
    # @return [Types::InvokeCodeInterpreterResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::InvokeCodeInterpreterResponse#session_id #session_id} => String
    #   * {Types::InvokeCodeInterpreterResponse#stream #stream} => Types::CodeInterpreterStreamOutput
    #
    # @example EventStream Operation Example
    #
    #   # You can process the event once it arrives immediately, or wait until the
    #   # full response is complete and iterate through the eventstream enumerator.
    #
    #   # To interact with event immediately, you need to register invoke_code_interpreter
    #   # with callbacks. Callbacks can be registered for specific events or for all
    #   # events, including error events.
    #
    #   # Callbacks can be passed into the `:event_stream_handler` option or within a
    #   # block statement attached to the #invoke_code_interpreter call directly. Hybrid
    #   # pattern of both is also supported.
    #
    #   # `:event_stream_handler` option takes in either a Proc object or
    #   # Aws::BedrockAgentCore::EventStreams::CodeInterpreterStreamOutput object.
    #
    #   # Usage pattern a): Callbacks with a block attached to #invoke_code_interpreter
    #   # Example for registering callbacks for all event types and an error event
    #   client.invoke_code_interpreter(
    #     # params input
    #   ) do |stream|
    #     stream.on_error_event do |event|
    #       # catch unmodeled error event in the stream
    #       raise event
    #       # => Aws::Errors::EventError
    #       # event.event_type => :error
    #       # event.error_code => String
    #       # event.error_message => String
    #     end
    #
    #     stream.on_event do |event|
    #       # process all events arrive
    #       puts event.event_type
    #       # ...
    #     end
    #   end
    #
    #   # Usage pattern b): Pass in `:event_stream_handler` for #invoke_code_interpreter
    #   #  1) Create a Aws::BedrockAgentCore::EventStreams::CodeInterpreterStreamOutput object
    #   #  Example for registering callbacks with specific events
    #
    #   handler = Aws::BedrockAgentCore::EventStreams::CodeInterpreterStreamOutput.new
    #   handler.on_result_event do |event|
    #     event # => Aws::BedrockAgentCore::Types::result
    #   end
    #   handler.on_access_denied_exception_event do |event|
    #     event # => Aws::BedrockAgentCore::Types::accessDeniedException
    #   end
    #   handler.on_conflict_exception_event do |event|
    #     event # => Aws::BedrockAgentCore::Types::conflictException
    #   end
    #   handler.on_internal_server_exception_event do |event|
    #     event # => Aws::BedrockAgentCore::Types::internalServerException
    #   end
    #   handler.on_resource_not_found_exception_event do |event|
    #     event # => Aws::BedrockAgentCore::Types::resourceNotFoundException
    #   end
    #   handler.on_service_quota_exceeded_exception_event do |event|
    #     event # => Aws::BedrockAgentCore::Types::serviceQuotaExceededException
    #   end
    #   handler.on_throttling_exception_event do |event|
    #     event # => Aws::BedrockAgentCore::Types::throttlingException
    #   end
    #   handler.on_validation_exception_event do |event|
    #     event # => Aws::BedrockAgentCore::Types::validationException
    #   end
    #
    #   client.invoke_code_interpreter(
    #     # params inputs
    #     event_stream_handler: handler
    #   )
    #
    #   #  2) Use a Ruby Proc object
    #   #  Example for registering callbacks with specific events
    #   handler = Proc.new do |stream|
    #     stream.on_result_event do |event|
    #       event # => Aws::BedrockAgentCore::Types::result
    #     end
    #     stream.on_access_denied_exception_event do |event|
    #       event # => Aws::BedrockAgentCore::Types::accessDeniedException
    #     end
    #     stream.on_conflict_exception_event do |event|
    #       event # => Aws::BedrockAgentCore::Types::conflictException
    #     end
    #     stream.on_internal_server_exception_event do |event|
    #       event # => Aws::BedrockAgentCore::Types::internalServerException
    #     end
    #     stream.on_resource_not_found_exception_event do |event|
    #       event # => Aws::BedrockAgentCore::Types::resourceNotFoundException
    #     end
    #     stream.on_service_quota_exceeded_exception_event do |event|
    #       event # => Aws::BedrockAgentCore::Types::serviceQuotaExceededException
    #     end
    #     stream.on_throttling_exception_event do |event|
    #       event # => Aws::BedrockAgentCore::Types::throttlingException
    #     end
    #     stream.on_validation_exception_event do |event|
    #       event # => Aws::BedrockAgentCore::Types::validationException
    #     end
    #   end
    #
    #   client.invoke_code_interpreter(
    #     # params inputs
    #     event_stream_handler: handler
    #   )
    #
    #   #  Usage pattern c): Hybrid pattern of a) and b)
    #   handler = Aws::BedrockAgentCore::EventStreams::CodeInterpreterStreamOutput.new
    #   handler.on_result_event do |event|
    #     event # => Aws::BedrockAgentCore::Types::result
    #   end
    #   handler.on_access_denied_exception_event do |event|
    #     event # => Aws::BedrockAgentCore::Types::accessDeniedException
    #   end
    #   handler.on_conflict_exception_event do |event|
    #     event # => Aws::BedrockAgentCore::Types::conflictException
    #   end
    #   handler.on_internal_server_exception_event do |event|
    #     event # => Aws::BedrockAgentCore::Types::internalServerException
    #   end
    #   handler.on_resource_not_found_exception_event do |event|
    #     event # => Aws::BedrockAgentCore::Types::resourceNotFoundException
    #   end
    #   handler.on_service_quota_exceeded_exception_event do |event|
    #     event # => Aws::BedrockAgentCore::Types::serviceQuotaExceededException
    #   end
    #   handler.on_throttling_exception_event do |event|
    #     event # => Aws::BedrockAgentCore::Types::throttlingException
    #   end
    #   handler.on_validation_exception_event do |event|
    #     event # => Aws::BedrockAgentCore::Types::validationException
    #   end
    #
    #   client.invoke_code_interpreter(
    #     # params input
    #     event_stream_handler: handler
    #   ) do |stream|
    #     stream.on_error_event do |event|
    #       # catch unmodeled error event in the stream
    #       raise event
    #       # => Aws::Errors::EventError
    #       # event.event_type => :error
    #       # event.error_code => String
    #       # event.error_message => String
    #     end
    #   end
    #
    #   # You can also iterate through events after the response complete.
    #   # Events are available at
    #   resp.stream # => Enumerator
    #   # For parameter input example, please refer to following request syntax.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.invoke_code_interpreter({
    #     code_interpreter_identifier: "String", # required
    #     session_id: "CodeInterpreterSessionId",
    #     name: "executeCode", # required, accepts executeCode, executeCommand, readFiles, listFiles, removeFiles, writeFiles, startCommandExecution, getTask, stopTask
    #     arguments: {
    #       code: "MaxLenString",
    #       language: "python", # accepts python, javascript, typescript
    #       clear_context: false,
    #       command: "MaxLenString",
    #       path: "MaxLenString",
    #       paths: ["MaxLenString"],
    #       content: [
    #         {
    #           path: "MaxLenString", # required
    #           text: "MaxLenString",
    #           blob: "data",
    #         },
    #       ],
    #       directory_path: "MaxLenString",
    #       task_id: "MaxLenString",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.session_id #=> String
    #   # All events are available at resp.stream:
    #   resp.stream #=> Enumerator
    #   resp.stream.event_types #=> [:result, :access_denied_exception, :conflict_exception, :internal_server_exception, :resource_not_found_exception, :service_quota_exceeded_exception, :throttling_exception, :validation_exception]
    #
    #   # For :result event available at #on_result_event callback and response eventstream enumerator:
    #   event.content #=> Array
    #   event.content[0].type #=> String, one of "text", "image", "resource", "resource_link"
    #   event.content[0].text #=> String
    #   event.content[0].data #=> String
    #   event.content[0].mime_type #=> String
    #   event.content[0].uri #=> String
    #   event.content[0].name #=> String
    #   event.content[0].description #=> String
    #   event.content[0].size #=> Integer
    #   event.content[0].resource.type #=> String, one of "text", "blob"
    #   event.content[0].resource.uri #=> String
    #   event.content[0].resource.mime_type #=> String
    #   event.content[0].resource.text #=> String
    #   event.content[0].resource.blob #=> String
    #   event.structured_content.task_id #=> String
    #   event.structured_content.task_status #=> String, one of "submitted", "working", "completed", "canceled", "failed"
    #   event.structured_content.stdout #=> String
    #   event.structured_content.stderr #=> String
    #   event.structured_content.exit_code #=> Integer
    #   event.structured_content.execution_time #=> Float
    #   event.is_error #=> Boolean
    #
    #   # For :access_denied_exception event available at #on_access_denied_exception_event callback and response eventstream enumerator:
    #   event.message #=> String
    #
    #   # For :conflict_exception event available at #on_conflict_exception_event callback and response eventstream enumerator:
    #   event.message #=> String
    #
    #   # For :internal_server_exception event available at #on_internal_server_exception_event callback and response eventstream enumerator:
    #   event.message #=> String
    #
    #   # For :resource_not_found_exception event available at #on_resource_not_found_exception_event callback and response eventstream enumerator:
    #   event.message #=> String
    #
    #   # For :service_quota_exceeded_exception event available at #on_service_quota_exceeded_exception_event callback and response eventstream enumerator:
    #   event.message #=> String
    #
    #   # For :throttling_exception event available at #on_throttling_exception_event callback and response eventstream enumerator:
    #   event.message #=> String
    #
    #   # For :validation_exception event available at #on_validation_exception_event callback and response eventstream enumerator:
    #   event.message #=> String
    #   event.reason #=> String, one of "CannotParse", "FieldValidationFailed", "IdempotentParameterMismatchException", "EventInOtherSession", "ResourceConflict"
    #   event.field_list #=> Array
    #   event.field_list[0].name #=> String
    #   event.field_list[0].message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/InvokeCodeInterpreter AWS API Documentation
    #
    # @overload invoke_code_interpreter(params = {})
    # @param [Hash] params ({})
    def invoke_code_interpreter(params = {}, options = {}, &block)
      params = params.dup
      event_stream_handler = case handler = params.delete(:event_stream_handler)
        when EventStreams::CodeInterpreterStreamOutput then handler
        when Proc then EventStreams::CodeInterpreterStreamOutput.new.tap(&handler)
        when nil then EventStreams::CodeInterpreterStreamOutput.new
        else
          msg = "expected :event_stream_handler to be a block or "\
                "instance of Aws::BedrockAgentCore::EventStreams::CodeInterpreterStreamOutput"\
                ", got `#{handler.inspect}` instead"
          raise ArgumentError, msg
        end

      yield(event_stream_handler) if block_given?

      req = build_request(:invoke_code_interpreter, params)

      req.context[:event_stream_handler] = event_stream_handler
      req.handlers.add(Aws::Binary::DecodeHandler, priority: 95)

      req.send_request(options, &block)
    end

    # Lists all actors in an AgentCore Memory resource. We recommend using
    # pagination to ensure that the operation returns quickly and
    # successfully.
    #
    # To use this operation, you must have the
    # `bedrock-agentcore:ListActors` permission.
    #
    # @option params [required, String] :memory_id
    #   The identifier of the AgentCore Memory resource for which to list
    #   actors.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call. Minimum
    #   value of 1, maximum value of 100. Default is 20.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @return [Types::ListActorsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListActorsOutput#actor_summaries #actor_summaries} => Array&lt;Types::ActorSummary&gt;
    #   * {Types::ListActorsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_actors({
    #     memory_id: "MemoryId", # required
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.actor_summaries #=> Array
    #   resp.actor_summaries[0].actor_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/ListActors AWS API Documentation
    #
    # @overload list_actors(params = {})
    # @param [Hash] params ({})
    def list_actors(params = {}, options = {})
      req = build_request(:list_actors, params)
      req.send_request(options)
    end

    # Retrieves a list of browser sessions in Amazon Bedrock that match the
    # specified criteria. This operation returns summary information about
    # each session, including identifiers, status, and timestamps.
    #
    # You can filter the results by browser identifier and session status.
    # The operation supports pagination to handle large result sets
    # efficiently.
    #
    # We recommend using pagination to ensure that the operation returns
    # quickly and successfully when retrieving large numbers of sessions.
    #
    # The following operations are related to `ListBrowserSessions`:
    #
    # * [StartBrowserSession][1]
    #
    # * [GetBrowserSession][2]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/API_StartBrowserSession.html
    # [2]: https://docs.aws.amazon.com/API_GetBrowserSession.html
    #
    # @option params [required, String] :browser_identifier
    #   The unique identifier of the browser to list sessions for. If
    #   specified, only sessions for this browser are returned. If not
    #   specified, sessions for all browsers are returned.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call. The default
    #   value is 10. Valid values range from 1 to 100. To retrieve the
    #   remaining results, make another call with the returned `nextToken`
    #   value.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results. If not specified, Amazon Bedrock returns the first page of
    #   results.
    #
    # @option params [String] :status
    #   The status of the browser sessions to list. Valid values include
    #   ACTIVE, STOPPING, and STOPPED. If not specified, sessions with any
    #   status are returned.
    #
    # @return [Types::ListBrowserSessionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListBrowserSessionsResponse#items #items} => Array&lt;Types::BrowserSessionSummary&gt;
    #   * {Types::ListBrowserSessionsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_browser_sessions({
    #     browser_identifier: "String", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #     status: "READY", # accepts READY, TERMINATED
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].browser_identifier #=> String
    #   resp.items[0].session_id #=> String
    #   resp.items[0].name #=> String
    #   resp.items[0].status #=> String, one of "READY", "TERMINATED"
    #   resp.items[0].created_at #=> Time
    #   resp.items[0].last_updated_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/ListBrowserSessions AWS API Documentation
    #
    # @overload list_browser_sessions(params = {})
    # @param [Hash] params ({})
    def list_browser_sessions(params = {}, options = {})
      req = build_request(:list_browser_sessions, params)
      req.send_request(options)
    end

    # Retrieves a list of code interpreter sessions in Amazon Bedrock that
    # match the specified criteria. This operation returns summary
    # information about each session, including identifiers, status, and
    # timestamps.
    #
    # You can filter the results by code interpreter identifier and session
    # status. The operation supports pagination to handle large result sets
    # efficiently.
    #
    # We recommend using pagination to ensure that the operation returns
    # quickly and successfully when retrieving large numbers of sessions.
    #
    # The following operations are related to `ListCodeInterpreterSessions`:
    #
    # * [StartCodeInterpreterSession][1]
    #
    # * [GetCodeInterpreterSession][2]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/API_StartCodeInterpreterSession.html
    # [2]: https://docs.aws.amazon.com/API_GetCodeInterpreterSession.html
    #
    # @option params [required, String] :code_interpreter_identifier
    #   The unique identifier of the code interpreter to list sessions for. If
    #   specified, only sessions for this code interpreter are returned. If
    #   not specified, sessions for all code interpreters are returned.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call. The default
    #   value is 10. Valid values range from 1 to 100. To retrieve the
    #   remaining results, make another call with the returned `nextToken`
    #   value.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results. If not specified, Amazon Bedrock returns the first page of
    #   results.
    #
    # @option params [String] :status
    #   The status of the code interpreter sessions to list. Valid values
    #   include ACTIVE, STOPPING, and STOPPED. If not specified, sessions with
    #   any status are returned.
    #
    # @return [Types::ListCodeInterpreterSessionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListCodeInterpreterSessionsResponse#items #items} => Array&lt;Types::CodeInterpreterSessionSummary&gt;
    #   * {Types::ListCodeInterpreterSessionsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_code_interpreter_sessions({
    #     code_interpreter_identifier: "String", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #     status: "READY", # accepts READY, TERMINATED
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].code_interpreter_identifier #=> String
    #   resp.items[0].session_id #=> String
    #   resp.items[0].name #=> String
    #   resp.items[0].status #=> String, one of "READY", "TERMINATED"
    #   resp.items[0].created_at #=> Time
    #   resp.items[0].last_updated_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/ListCodeInterpreterSessions AWS API Documentation
    #
    # @overload list_code_interpreter_sessions(params = {})
    # @param [Hash] params ({})
    def list_code_interpreter_sessions(params = {}, options = {})
      req = build_request(:list_code_interpreter_sessions, params)
      req.send_request(options)
    end

    # Lists events in an AgentCore Memory resource based on specified
    # criteria. We recommend using pagination to ensure that the operation
    # returns quickly and successfully.
    #
    # To use this operation, you must have the
    # `bedrock-agentcore:ListEvents` permission.
    #
    # @option params [required, String] :memory_id
    #   The identifier of the AgentCore Memory resource for which to list
    #   events.
    #
    # @option params [required, String] :session_id
    #   The identifier of the session for which to list events. If specified,
    #   only events from this session are returned.
    #
    # @option params [required, String] :actor_id
    #   The identifier of the actor for which to list events. If specified,
    #   only events from this actor are returned.
    #
    # @option params [Boolean] :include_payloads
    #   Specifies whether to include event payloads in the response. Set to
    #   true to include payloads, or false to exclude them.
    #
    # @option params [Types::FilterInput] :filter
    #   Filter criteria to apply when listing events.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call. Minimum
    #   value of 1, maximum value of 100. Default is 20.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @return [Types::ListEventsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListEventsOutput#events #events} => Array&lt;Types::Event&gt;
    #   * {Types::ListEventsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_events({
    #     memory_id: "MemoryId", # required
    #     session_id: "SessionId", # required
    #     actor_id: "ActorId", # required
    #     include_payloads: false,
    #     filter: {
    #       branch: {
    #         name: "BranchName", # required
    #         include_parent_branches: false,
    #       },
    #       event_metadata: [
    #         {
    #           left: { # required
    #             metadata_key: "MetadataKey",
    #           },
    #           operator: "EQUALS_TO", # required, accepts EQUALS_TO, EXISTS, NOT_EXISTS
    #           right: {
    #             metadata_value: {
    #               string_value: "MetadataValueStringValueString",
    #             },
    #           },
    #         },
    #       ],
    #     },
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.events #=> Array
    #   resp.events[0].memory_id #=> String
    #   resp.events[0].actor_id #=> String
    #   resp.events[0].session_id #=> String
    #   resp.events[0].event_id #=> String
    #   resp.events[0].event_timestamp #=> Time
    #   resp.events[0].payload #=> Array
    #   resp.events[0].payload[0].conversational.content.text #=> String
    #   resp.events[0].payload[0].conversational.role #=> String, one of "ASSISTANT", "USER", "TOOL", "OTHER"
    #   resp.events[0].branch.root_event_id #=> String
    #   resp.events[0].branch.name #=> String
    #   resp.events[0].metadata #=> Hash
    #   resp.events[0].metadata["MetadataKey"].string_value #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/ListEvents AWS API Documentation
    #
    # @overload list_events(params = {})
    # @param [Hash] params ({})
    def list_events(params = {}, options = {})
      req = build_request(:list_events, params)
      req.send_request(options)
    end

    # Lists memory records in an AgentCore Memory resource based on
    # specified criteria. We recommend using pagination to ensure that the
    # operation returns quickly and successfully.
    #
    # To use this operation, you must have the
    # `bedrock-agentcore:ListMemoryRecords` permission.
    #
    # @option params [required, String] :memory_id
    #   The identifier of the AgentCore Memory resource for which to list
    #   memory records.
    #
    # @option params [required, String] :namespace
    #   The namespace to filter memory records by. If specified, only memory
    #   records in this namespace are returned.
    #
    # @option params [String] :memory_strategy_id
    #   The memory strategy identifier to filter memory records by. If
    #   specified, only memory records with this strategy ID are returned.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call. Minimum
    #   value of 1, maximum value of 100. Default is 20.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @return [Types::ListMemoryRecordsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListMemoryRecordsOutput#memory_record_summaries #memory_record_summaries} => Array&lt;Types::MemoryRecordSummary&gt;
    #   * {Types::ListMemoryRecordsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_memory_records({
    #     memory_id: "MemoryId", # required
    #     namespace: "Namespace", # required
    #     memory_strategy_id: "MemoryStrategyId",
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.memory_record_summaries #=> Array
    #   resp.memory_record_summaries[0].memory_record_id #=> String
    #   resp.memory_record_summaries[0].content.text #=> String
    #   resp.memory_record_summaries[0].memory_strategy_id #=> String
    #   resp.memory_record_summaries[0].namespaces #=> Array
    #   resp.memory_record_summaries[0].namespaces[0] #=> String
    #   resp.memory_record_summaries[0].created_at #=> Time
    #   resp.memory_record_summaries[0].score #=> Float
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/ListMemoryRecords AWS API Documentation
    #
    # @overload list_memory_records(params = {})
    # @param [Hash] params ({})
    def list_memory_records(params = {}, options = {})
      req = build_request(:list_memory_records, params)
      req.send_request(options)
    end

    # Lists sessions in an AgentCore Memory resource based on specified
    # criteria. We recommend using pagination to ensure that the operation
    # returns quickly and successfully.
    #
    # To use this operation, you must have the
    # `bedrock-agentcore:ListSessions` permission.
    #
    # @option params [required, String] :memory_id
    #   The identifier of the AgentCore Memory resource for which to list
    #   sessions.
    #
    # @option params [required, String] :actor_id
    #   The identifier of the actor for which to list sessions. If specified,
    #   only sessions involving this actor are returned.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call. Minimum
    #   value of 1, maximum value of 100. Default is 20.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @return [Types::ListSessionsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSessionsOutput#session_summaries #session_summaries} => Array&lt;Types::SessionSummary&gt;
    #   * {Types::ListSessionsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_sessions({
    #     memory_id: "MemoryId", # required
    #     actor_id: "ActorId", # required
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.session_summaries #=> Array
    #   resp.session_summaries[0].session_id #=> String
    #   resp.session_summaries[0].actor_id #=> String
    #   resp.session_summaries[0].created_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/ListSessions AWS API Documentation
    #
    # @overload list_sessions(params = {})
    # @param [Hash] params ({})
    def list_sessions(params = {}, options = {})
      req = build_request(:list_sessions, params)
      req.send_request(options)
    end

    # Searches for and retrieves memory records from an AgentCore Memory
    # resource based on specified search criteria. We recommend using
    # pagination to ensure that the operation returns quickly and
    # successfully.
    #
    # To use this operation, you must have the
    # `bedrock-agentcore:RetrieveMemoryRecords` permission.
    #
    # @option params [required, String] :memory_id
    #   The identifier of the AgentCore Memory resource from which to retrieve
    #   memory records.
    #
    # @option params [required, String] :namespace
    #   The namespace to filter memory records by. If specified, only memory
    #   records in this namespace are searched.
    #
    # @option params [required, Types::SearchCriteria] :search_criteria
    #   The search criteria to use for finding relevant memory records. This
    #   includes the search query, memory strategy ID, and other search
    #   parameters.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call. Minimum
    #   value of 1, maximum value of 100. Default is 20.
    #
    # @return [Types::RetrieveMemoryRecordsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RetrieveMemoryRecordsOutput#memory_record_summaries #memory_record_summaries} => Array&lt;Types::MemoryRecordSummary&gt;
    #   * {Types::RetrieveMemoryRecordsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.retrieve_memory_records({
    #     memory_id: "MemoryId", # required
    #     namespace: "Namespace", # required
    #     search_criteria: { # required
    #       search_query: "SearchCriteriaSearchQueryString", # required
    #       memory_strategy_id: "MemoryStrategyId",
    #       top_k: 1,
    #     },
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.memory_record_summaries #=> Array
    #   resp.memory_record_summaries[0].memory_record_id #=> String
    #   resp.memory_record_summaries[0].content.text #=> String
    #   resp.memory_record_summaries[0].memory_strategy_id #=> String
    #   resp.memory_record_summaries[0].namespaces #=> Array
    #   resp.memory_record_summaries[0].namespaces[0] #=> String
    #   resp.memory_record_summaries[0].created_at #=> Time
    #   resp.memory_record_summaries[0].score #=> Float
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/RetrieveMemoryRecords AWS API Documentation
    #
    # @overload retrieve_memory_records(params = {})
    # @param [Hash] params ({})
    def retrieve_memory_records(params = {}, options = {})
      req = build_request(:retrieve_memory_records, params)
      req.send_request(options)
    end

    # Creates and initializes a browser session in Amazon Bedrock. The
    # session enables agents to navigate and interact with web content,
    # extract information from websites, and perform web-based tasks as part
    # of their response generation.
    #
    # To create a session, you must specify a browser identifier and a name.
    # You can also configure the viewport dimensions to control the visible
    # area of web content. The session remains active until it times out or
    # you explicitly stop it using the `StopBrowserSession` operation.
    #
    # The following operations are related to `StartBrowserSession`:
    #
    # * [GetBrowserSession][1]
    #
    # * [UpdateBrowserStream][2]
    #
    # * [StopBrowserSession][3]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/API_GetBrowserSession.html
    # [2]: https://docs.aws.amazon.com/API_UpdateBrowserStream.html
    # [3]: https://docs.aws.amazon.com/API_StopBrowserSession.html
    #
    # @option params [required, String] :browser_identifier
    #   The unique identifier of the browser to use for this session. This
    #   identifier specifies which browser environment to initialize for the
    #   session.
    #
    # @option params [String] :name
    #   The name of the browser session. This name helps you identify and
    #   manage the session. The name does not need to be unique.
    #
    # @option params [Integer] :session_timeout_seconds
    #   The time in seconds after which the session automatically terminates
    #   if there is no activity. The default value is 3600 seconds (1 hour).
    #   The minimum allowed value is 60 seconds, and the maximum allowed value
    #   is 28800 seconds (8 hours).
    #
    # @option params [Types::ViewPort] :view_port
    #   The dimensions of the browser viewport for this session. This
    #   determines the visible area of the web content and affects how web
    #   pages are rendered. If not specified, Amazon Bedrock uses a default
    #   viewport size.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier to ensure that the API request
    #   completes no more than one time. If this token matches a previous
    #   request, Amazon Bedrock ignores the request, but does not return an
    #   error. This parameter helps prevent the creation of duplicate sessions
    #   if there are temporary network issues.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::StartBrowserSessionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartBrowserSessionResponse#browser_identifier #browser_identifier} => String
    #   * {Types::StartBrowserSessionResponse#session_id #session_id} => String
    #   * {Types::StartBrowserSessionResponse#created_at #created_at} => Time
    #   * {Types::StartBrowserSessionResponse#streams #streams} => Types::BrowserSessionStream
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_browser_session({
    #     browser_identifier: "String", # required
    #     name: "Name",
    #     session_timeout_seconds: 1,
    #     view_port: {
    #       width: 1, # required
    #       height: 1, # required
    #     },
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.browser_identifier #=> String
    #   resp.session_id #=> String
    #   resp.created_at #=> Time
    #   resp.streams.automation_stream.stream_endpoint #=> String
    #   resp.streams.automation_stream.stream_status #=> String, one of "ENABLED", "DISABLED"
    #   resp.streams.live_view_stream.stream_endpoint #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/StartBrowserSession AWS API Documentation
    #
    # @overload start_browser_session(params = {})
    # @param [Hash] params ({})
    def start_browser_session(params = {}, options = {})
      req = build_request(:start_browser_session, params)
      req.send_request(options)
    end

    # Creates and initializes a code interpreter session in Amazon Bedrock.
    # The session enables agents to execute code as part of their response
    # generation, supporting programming languages such as Python for data
    # analysis, visualization, and computation tasks.
    #
    # To create a session, you must specify a code interpreter identifier
    # and a name. The session remains active until it times out or you
    # explicitly stop it using the `StopCodeInterpreterSession` operation.
    #
    # The following operations are related to `StartCodeInterpreterSession`:
    #
    # * [InvokeCodeInterpreter][1]
    #
    # * [GetCodeInterpreterSession][2]
    #
    # * [StopCodeInterpreterSession][3]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/API_InvokeCodeInterpreter.html
    # [2]: https://docs.aws.amazon.com/API_GetCodeInterpreterSession.html
    # [3]: https://docs.aws.amazon.com/API_StopCodeInterpreterSession.html
    #
    # @option params [required, String] :code_interpreter_identifier
    #   The unique identifier of the code interpreter to use for this session.
    #   This identifier specifies which code interpreter environment to
    #   initialize for the session.
    #
    # @option params [String] :name
    #   The name of the code interpreter session. This name helps you identify
    #   and manage the session. The name does not need to be unique.
    #
    # @option params [Integer] :session_timeout_seconds
    #   The time in seconds after which the session automatically terminates
    #   if there is no activity. The default value is 900 seconds (15
    #   minutes). The minimum allowed value is 60 seconds, and the maximum
    #   allowed value is 28800 seconds (8 hours).
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier to ensure that the API request
    #   completes no more than one time. If this token matches a previous
    #   request, Amazon Bedrock ignores the request, but does not return an
    #   error. This parameter helps prevent the creation of duplicate sessions
    #   if there are temporary network issues.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::StartCodeInterpreterSessionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartCodeInterpreterSessionResponse#code_interpreter_identifier #code_interpreter_identifier} => String
    #   * {Types::StartCodeInterpreterSessionResponse#session_id #session_id} => String
    #   * {Types::StartCodeInterpreterSessionResponse#created_at #created_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_code_interpreter_session({
    #     code_interpreter_identifier: "String", # required
    #     name: "Name",
    #     session_timeout_seconds: 1,
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.code_interpreter_identifier #=> String
    #   resp.session_id #=> String
    #   resp.created_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/StartCodeInterpreterSession AWS API Documentation
    #
    # @overload start_code_interpreter_session(params = {})
    # @param [Hash] params ({})
    def start_code_interpreter_session(params = {}, options = {})
      req = build_request(:start_code_interpreter_session, params)
      req.send_request(options)
    end

    # Terminates an active browser session in Amazon Bedrock. This operation
    # stops the session, releases associated resources, and makes the
    # session unavailable for further use.
    #
    # To stop a browser session, you must specify both the browser
    # identifier and the session ID. Once stopped, a session cannot be
    # restarted; you must create a new session using `StartBrowserSession`.
    #
    # The following operations are related to `StopBrowserSession`:
    #
    # * [StartBrowserSession][1]
    #
    # * [GetBrowserSession][2]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/API_StartBrowserSession.html
    # [2]: https://docs.aws.amazon.com/API_GetBrowserSession.html
    #
    # @option params [required, String] :browser_identifier
    #   The unique identifier of the browser associated with the session.
    #
    # @option params [required, String] :session_id
    #   The unique identifier of the browser session to stop.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier to ensure that the API request
    #   completes no more than one time. If this token matches a previous
    #   request, Amazon Bedrock ignores the request, but does not return an
    #   error.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::StopBrowserSessionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StopBrowserSessionResponse#browser_identifier #browser_identifier} => String
    #   * {Types::StopBrowserSessionResponse#session_id #session_id} => String
    #   * {Types::StopBrowserSessionResponse#last_updated_at #last_updated_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_browser_session({
    #     browser_identifier: "String", # required
    #     session_id: "BrowserSessionId", # required
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.browser_identifier #=> String
    #   resp.session_id #=> String
    #   resp.last_updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/StopBrowserSession AWS API Documentation
    #
    # @overload stop_browser_session(params = {})
    # @param [Hash] params ({})
    def stop_browser_session(params = {}, options = {})
      req = build_request(:stop_browser_session, params)
      req.send_request(options)
    end

    # Terminates an active code interpreter session in Amazon Bedrock. This
    # operation stops the session, releases associated resources, and makes
    # the session unavailable for further use.
    #
    # To stop a code interpreter session, you must specify both the code
    # interpreter identifier and the session ID. Once stopped, a session
    # cannot be restarted; you must create a new session using
    # `StartCodeInterpreterSession`.
    #
    # The following operations are related to `StopCodeInterpreterSession`:
    #
    # * [StartCodeInterpreterSession][1]
    #
    # * [GetCodeInterpreterSession][2]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/API_StartCodeInterpreterSession.html
    # [2]: https://docs.aws.amazon.com/API_GetCodeInterpreterSession.html
    #
    # @option params [required, String] :code_interpreter_identifier
    #   The unique identifier of the code interpreter associated with the
    #   session.
    #
    # @option params [required, String] :session_id
    #   The unique identifier of the code interpreter session to stop.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier to ensure that the API request
    #   completes no more than one time. If this token matches a previous
    #   request, Amazon Bedrock ignores the request, but does not return an
    #   error.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::StopCodeInterpreterSessionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StopCodeInterpreterSessionResponse#code_interpreter_identifier #code_interpreter_identifier} => String
    #   * {Types::StopCodeInterpreterSessionResponse#session_id #session_id} => String
    #   * {Types::StopCodeInterpreterSessionResponse#last_updated_at #last_updated_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_code_interpreter_session({
    #     code_interpreter_identifier: "String", # required
    #     session_id: "CodeInterpreterSessionId", # required
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.code_interpreter_identifier #=> String
    #   resp.session_id #=> String
    #   resp.last_updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/StopCodeInterpreterSession AWS API Documentation
    #
    # @overload stop_code_interpreter_session(params = {})
    # @param [Hash] params ({})
    def stop_code_interpreter_session(params = {}, options = {})
      req = build_request(:stop_code_interpreter_session, params)
      req.send_request(options)
    end

    # Stops a session that is running in an running AgentCore Runtime agent.
    #
    # @option params [required, String] :runtime_session_id
    #   The ID of the session that you want to stop.
    #
    # @option params [required, String] :agent_runtime_arn
    #   The ARN of the agent that contains the session that you want to stop.
    #
    # @option params [String] :qualifier
    #   Optional qualifier to specify an agent alias, such as `prod`code&gt;
    #   or `dev`. If you don't provide a value, the DEFAULT alias is used.
    #
    # @option params [String] :client_token
    #   Idempotent token used to identify the request. If you use the same
    #   token with multiple requests, the same response is returned. Use
    #   ClientToken to prevent the same request from being processed more than
    #   once.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::StopRuntimeSessionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StopRuntimeSessionResponse#runtime_session_id #runtime_session_id} => String
    #   * {Types::StopRuntimeSessionResponse#status_code #status_code} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_runtime_session({
    #     runtime_session_id: "SessionType", # required
    #     agent_runtime_arn: "String", # required
    #     qualifier: "String",
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.runtime_session_id #=> String
    #   resp.status_code #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/StopRuntimeSession AWS API Documentation
    #
    # @overload stop_runtime_session(params = {})
    # @param [Hash] params ({})
    def stop_runtime_session(params = {}, options = {})
      req = build_request(:stop_runtime_session, params)
      req.send_request(options)
    end

    # Updates a browser stream. To use this operation, you must have
    # permissions to perform the bedrock:UpdateBrowserStream action.
    #
    # @option params [required, String] :browser_identifier
    #   The identifier of the browser.
    #
    # @option params [required, String] :session_id
    #   The identifier of the browser session.
    #
    # @option params [required, Types::StreamUpdate] :stream_update
    #   The update to apply to the browser stream.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier to ensure that the operation
    #   completes no more than one time. If this token matches a previous
    #   request, Amazon Bedrock ignores the request, but does not return an
    #   error.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::UpdateBrowserStreamResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateBrowserStreamResponse#browser_identifier #browser_identifier} => String
    #   * {Types::UpdateBrowserStreamResponse#session_id #session_id} => String
    #   * {Types::UpdateBrowserStreamResponse#streams #streams} => Types::BrowserSessionStream
    #   * {Types::UpdateBrowserStreamResponse#updated_at #updated_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_browser_stream({
    #     browser_identifier: "String", # required
    #     session_id: "BrowserSessionId", # required
    #     stream_update: { # required
    #       automation_stream_update: {
    #         stream_status: "ENABLED", # accepts ENABLED, DISABLED
    #       },
    #     },
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.browser_identifier #=> String
    #   resp.session_id #=> String
    #   resp.streams.automation_stream.stream_endpoint #=> String
    #   resp.streams.automation_stream.stream_status #=> String, one of "ENABLED", "DISABLED"
    #   resp.streams.live_view_stream.stream_endpoint #=> String
    #   resp.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/UpdateBrowserStream AWS API Documentation
    #
    # @overload update_browser_stream(params = {})
    # @param [Hash] params ({})
    def update_browser_stream(params = {}, options = {})
      req = build_request(:update_browser_stream, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::BedrockAgentCore')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-bedrockagentcore'
      context[:gem_version] = '1.6.0'
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
