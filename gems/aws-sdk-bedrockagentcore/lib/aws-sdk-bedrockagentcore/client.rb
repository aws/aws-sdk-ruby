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
    #         metadata: {
    #           "MetadataKey" => {
    #             string_value: "StringValue",
    #             string_list_value: ["StringListMemberValue"],
    #             number_value: 1.0,
    #             date_time_value: Time.now,
    #           },
    #         },
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
    #         metadata: {
    #           "MetadataKey" => {
    #             string_value: "StringValue",
    #             string_list_value: ["StringListMemberValue"],
    #             number_value: 1.0,
    #             date_time_value: Time.now,
    #           },
    #         },
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

    # Confirms the user authentication session for obtaining OAuth2.0 tokens
    # for a resource.
    #
    # @option params [required, Types::UserIdentifier] :user_identifier
    #   The OAuth2.0 token or user ID that was used to generate the workload
    #   access token used for initiating the user authorization flow to
    #   retrieve OAuth2.0 tokens.
    #
    # @option params [required, String] :session_uri
    #   Unique identifier for the user's authentication session for
    #   retrieving OAuth2 tokens. This ID tracks the authorization flow state
    #   across multiple requests and responses during the OAuth2
    #   authentication process.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.complete_resource_token_auth({
    #     user_identifier: { # required
    #       user_token: "UserTokenType",
    #       user_id: "UserIdType",
    #     },
    #     session_uri: "RequestUri", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/CompleteResourceTokenAuth AWS API Documentation
    #
    # @overload complete_resource_token_auth(params = {})
    # @param [Hash] params ({})
    def complete_resource_token_auth(params = {}, options = {})
      req = build_request(:complete_resource_token_auth, params)
      req.send_request(options)
    end

    # Creates an A/B test for comparing agent configurations. A/B tests
    # split traffic between a control variant and a treatment variant
    # through a gateway, then evaluate performance using online evaluation
    # configurations to determine which variant performs better.
    #
    # @option params [required, String] :name
    #   The name of the A/B test. Must be unique within your account.
    #
    # @option params [String] :description
    #   The description of the A/B test.
    #
    # @option params [required, String] :gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway to use for traffic
    #   splitting.
    #
    # @option params [required, Array<Types::Variant>] :variants
    #   The list of variants for the A/B test. Must contain exactly two
    #   variants: a control (C) and a treatment (T1), each with a
    #   configuration bundle or target reference and a traffic weight.
    #
    # @option params [Types::GatewayFilter] :gateway_filter
    #   Optional filter to restrict which gateway target paths are included in
    #   the A/B test.
    #
    # @option params [required, Types::ABTestEvaluationConfig] :evaluation_config
    #   The evaluation configuration specifying which online evaluation
    #   configurations to use for measuring variant performance.
    #
    # @option params [required, String] :role_arn
    #   The IAM role ARN that grants permissions for the A/B test to access
    #   gateway and evaluation resources.
    #
    # @option params [Boolean] :enable_on_create
    #   Whether to enable the A/B test immediately upon creation. If true,
    #   traffic splitting begins automatically.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier to ensure that the API request
    #   completes no more than one time. If this token matches a previous
    #   request, the service ignores the request, but does not return an
    #   error.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateABTestResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateABTestResponse#ab_test_id #ab_test_id} => String
    #   * {Types::CreateABTestResponse#ab_test_arn #ab_test_arn} => String
    #   * {Types::CreateABTestResponse#name #name} => String
    #   * {Types::CreateABTestResponse#status #status} => String
    #   * {Types::CreateABTestResponse#execution_status #execution_status} => String
    #   * {Types::CreateABTestResponse#created_at #created_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_ab_test({
    #     name: "ABTestName", # required
    #     description: "ABTestDescription",
    #     gateway_arn: "GatewayArn", # required
    #     variants: [ # required
    #       {
    #         name: "VariantName", # required
    #         weight: 1, # required
    #         variant_configuration: { # required
    #           configuration_bundle: {
    #             bundle_arn: "ConfigurationBundleArn", # required
    #             bundle_version: "ConfigurationBundleVersion", # required
    #           },
    #           target: {
    #             name: "TargetName", # required
    #           },
    #         },
    #       },
    #     ],
    #     gateway_filter: {
    #       target_paths: ["PathPattern"],
    #     },
    #     evaluation_config: { # required
    #       online_evaluation_config_arn: "OnlineEvaluationConfigArn",
    #       per_variant_online_evaluation_config: [
    #         {
    #           name: "VariantName", # required
    #           online_evaluation_config_arn: "OnlineEvaluationConfigArn", # required
    #         },
    #       ],
    #     },
    #     role_arn: "RoleArn", # required
    #     enable_on_create: false,
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.ab_test_id #=> String
    #   resp.ab_test_arn #=> String
    #   resp.name #=> String
    #   resp.status #=> String, one of "CREATING", "ACTIVE", "CREATE_FAILED", "UPDATING", "UPDATE_FAILED", "DELETING", "DELETE_FAILED", "FAILED"
    #   resp.execution_status #=> String, one of "PAUSED", "RUNNING", "STOPPED", "NOT_STARTED"
    #   resp.created_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/CreateABTest AWS API Documentation
    #
    # @overload create_ab_test(params = {})
    # @param [Hash] params ({})
    def create_ab_test(params = {}, options = {})
      req = build_request(:create_ab_test, params)
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

    # Create a new payment instrument for a connector
    #
    # @option params [String] :user_id
    #   The user ID associated with this payment instrument.
    #
    # @option params [String] :agent_name
    #   The agent name associated with this request, used for observability.
    #
    # @option params [required, String] :payment_manager_arn
    #   The ARN of the payment manager that owns this payment instrument.
    #
    # @option params [required, String] :payment_connector_id
    #   The ID of the payment connector to use for this instrument.
    #
    # @option params [required, String] :payment_instrument_type
    #   The type of payment instrument being created.
    #
    # @option params [required, Types::PaymentInstrumentDetails] :payment_instrument_details
    #   The details of the payment instrument.
    #
    # @option params [String] :client_token
    #   Idempotency token to ensure request uniqueness.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreatePaymentInstrumentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreatePaymentInstrumentResponse#payment_instrument #payment_instrument} => Types::PaymentInstrument
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_payment_instrument({
    #     user_id: "UserId",
    #     agent_name: "PaymentAgentName",
    #     payment_manager_arn: "PaymentManagerArn", # required
    #     payment_connector_id: "PaymentConnectorId", # required
    #     payment_instrument_type: "EMBEDDED_CRYPTO_WALLET", # required, accepts EMBEDDED_CRYPTO_WALLET
    #     payment_instrument_details: { # required
    #       embedded_crypto_wallet: {
    #         network: "ETHEREUM", # required, accepts ETHEREUM, SOLANA
    #         linked_accounts: [ # required
    #           {
    #             email: {
    #               email_address: "Email", # required
    #             },
    #             sms: {
    #               phone_number: "PhoneNumber", # required
    #             },
    #             developer_jwt: {
    #               kid: "JwtKeyId", # required
    #               sub: "LinkedAccountDeveloperJwtSubString", # required
    #             },
    #             o_auth_2: {
    #               google: {
    #                 sub: "OAuth2AuthenticationSubString", # required
    #                 email_address: "Email",
    #                 name: "OAuth2AuthenticationNameString",
    #                 username: "OAuth2AuthenticationUsernameString",
    #               },
    #               apple: {
    #                 sub: "OAuth2AuthenticationSubString", # required
    #                 email_address: "Email",
    #                 name: "OAuth2AuthenticationNameString",
    #                 username: "OAuth2AuthenticationUsernameString",
    #               },
    #               x: {
    #                 sub: "OAuth2AuthenticationSubString", # required
    #                 email_address: "Email",
    #                 name: "OAuth2AuthenticationNameString",
    #                 username: "OAuth2AuthenticationUsernameString",
    #               },
    #               telegram: {
    #                 sub: "OAuth2AuthenticationSubString", # required
    #                 email_address: "Email",
    #                 name: "OAuth2AuthenticationNameString",
    #                 username: "OAuth2AuthenticationUsernameString",
    #               },
    #               github: {
    #                 sub: "OAuth2AuthenticationSubString", # required
    #                 email_address: "Email",
    #                 name: "OAuth2AuthenticationNameString",
    #                 username: "OAuth2AuthenticationUsernameString",
    #               },
    #             },
    #           },
    #         ],
    #         wallet_address: "String",
    #         redirect_url: "EmbeddedCryptoWalletRedirectUrlString",
    #       },
    #     },
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.payment_instrument.payment_instrument_id #=> String
    #   resp.payment_instrument.payment_manager_arn #=> String
    #   resp.payment_instrument.payment_connector_id #=> String
    #   resp.payment_instrument.user_id #=> String
    #   resp.payment_instrument.payment_instrument_type #=> String, one of "EMBEDDED_CRYPTO_WALLET"
    #   resp.payment_instrument.payment_instrument_details.embedded_crypto_wallet.network #=> String, one of "ETHEREUM", "SOLANA"
    #   resp.payment_instrument.payment_instrument_details.embedded_crypto_wallet.linked_accounts #=> Array
    #   resp.payment_instrument.payment_instrument_details.embedded_crypto_wallet.linked_accounts[0].email.email_address #=> String
    #   resp.payment_instrument.payment_instrument_details.embedded_crypto_wallet.linked_accounts[0].sms.phone_number #=> String
    #   resp.payment_instrument.payment_instrument_details.embedded_crypto_wallet.linked_accounts[0].developer_jwt.kid #=> String
    #   resp.payment_instrument.payment_instrument_details.embedded_crypto_wallet.linked_accounts[0].developer_jwt.sub #=> String
    #   resp.payment_instrument.payment_instrument_details.embedded_crypto_wallet.linked_accounts[0].o_auth_2.google.sub #=> String
    #   resp.payment_instrument.payment_instrument_details.embedded_crypto_wallet.linked_accounts[0].o_auth_2.google.email_address #=> String
    #   resp.payment_instrument.payment_instrument_details.embedded_crypto_wallet.linked_accounts[0].o_auth_2.google.name #=> String
    #   resp.payment_instrument.payment_instrument_details.embedded_crypto_wallet.linked_accounts[0].o_auth_2.google.username #=> String
    #   resp.payment_instrument.payment_instrument_details.embedded_crypto_wallet.linked_accounts[0].o_auth_2.apple.sub #=> String
    #   resp.payment_instrument.payment_instrument_details.embedded_crypto_wallet.linked_accounts[0].o_auth_2.apple.email_address #=> String
    #   resp.payment_instrument.payment_instrument_details.embedded_crypto_wallet.linked_accounts[0].o_auth_2.apple.name #=> String
    #   resp.payment_instrument.payment_instrument_details.embedded_crypto_wallet.linked_accounts[0].o_auth_2.apple.username #=> String
    #   resp.payment_instrument.payment_instrument_details.embedded_crypto_wallet.linked_accounts[0].o_auth_2.x.sub #=> String
    #   resp.payment_instrument.payment_instrument_details.embedded_crypto_wallet.linked_accounts[0].o_auth_2.x.email_address #=> String
    #   resp.payment_instrument.payment_instrument_details.embedded_crypto_wallet.linked_accounts[0].o_auth_2.x.name #=> String
    #   resp.payment_instrument.payment_instrument_details.embedded_crypto_wallet.linked_accounts[0].o_auth_2.x.username #=> String
    #   resp.payment_instrument.payment_instrument_details.embedded_crypto_wallet.linked_accounts[0].o_auth_2.telegram.sub #=> String
    #   resp.payment_instrument.payment_instrument_details.embedded_crypto_wallet.linked_accounts[0].o_auth_2.telegram.email_address #=> String
    #   resp.payment_instrument.payment_instrument_details.embedded_crypto_wallet.linked_accounts[0].o_auth_2.telegram.name #=> String
    #   resp.payment_instrument.payment_instrument_details.embedded_crypto_wallet.linked_accounts[0].o_auth_2.telegram.username #=> String
    #   resp.payment_instrument.payment_instrument_details.embedded_crypto_wallet.linked_accounts[0].o_auth_2.github.sub #=> String
    #   resp.payment_instrument.payment_instrument_details.embedded_crypto_wallet.linked_accounts[0].o_auth_2.github.email_address #=> String
    #   resp.payment_instrument.payment_instrument_details.embedded_crypto_wallet.linked_accounts[0].o_auth_2.github.name #=> String
    #   resp.payment_instrument.payment_instrument_details.embedded_crypto_wallet.linked_accounts[0].o_auth_2.github.username #=> String
    #   resp.payment_instrument.payment_instrument_details.embedded_crypto_wallet.wallet_address #=> String
    #   resp.payment_instrument.payment_instrument_details.embedded_crypto_wallet.redirect_url #=> String
    #   resp.payment_instrument.created_at #=> Time
    #   resp.payment_instrument.status #=> String, one of "INITIATED", "ACTIVE", "FAILED", "DELETED"
    #   resp.payment_instrument.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/CreatePaymentInstrument AWS API Documentation
    #
    # @overload create_payment_instrument(params = {})
    # @param [Hash] params ({})
    def create_payment_instrument(params = {}, options = {})
      req = build_request(:create_payment_instrument, params)
      req.send_request(options)
    end

    # Create a new payment manager session
    #
    # @option params [String] :user_id
    #   The user ID associated with this payment session.
    #
    # @option params [String] :agent_name
    #   The agent name associated with this request, used for observability.
    #
    # @option params [required, String] :payment_manager_arn
    #   The ARN of the payment manager that owns this session.
    #
    # @option params [Types::SessionLimits] :limits
    #   The spending limits for this payment session.
    #
    # @option params [required, Integer] :expiry_time_in_minutes
    #   The session expiry time in minutes. Must be between 15 and 480
    #   minutes.
    #
    # @option params [String] :client_token
    #   Idempotency token to ensure request uniqueness.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreatePaymentSessionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreatePaymentSessionResponse#payment_session #payment_session} => Types::PaymentSession
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_payment_session({
    #     user_id: "UserId",
    #     agent_name: "PaymentAgentName",
    #     payment_manager_arn: "PaymentManagerArn", # required
    #     limits: {
    #       max_spend_amount: { # required
    #         value: "String", # required
    #         currency: "USD", # required, accepts USD
    #       },
    #     },
    #     expiry_time_in_minutes: 1, # required
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.payment_session.payment_session_id #=> String
    #   resp.payment_session.payment_manager_arn #=> String
    #   resp.payment_session.limits.max_spend_amount.value #=> String
    #   resp.payment_session.limits.max_spend_amount.currency #=> String, one of "USD"
    #   resp.payment_session.user_id #=> String
    #   resp.payment_session.expiry_time_in_minutes #=> Integer
    #   resp.payment_session.created_at #=> Time
    #   resp.payment_session.available_limits.available_spend_amount.value #=> String
    #   resp.payment_session.available_limits.available_spend_amount.currency #=> String, one of "USD"
    #   resp.payment_session.available_limits.updated_at #=> Time
    #   resp.payment_session.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/CreatePaymentSession AWS API Documentation
    #
    # @overload create_payment_session(params = {})
    # @param [Hash] params ({})
    def create_payment_session(params = {}, options = {})
      req = build_request(:create_payment_session, params)
      req.send_request(options)
    end

    # Deletes an A/B test and its associated gateway rules.
    #
    # @option params [required, String] :ab_test_id
    #   The unique identifier of the A/B test to delete.
    #
    # @return [Types::DeleteABTestResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteABTestResponse#ab_test_id #ab_test_id} => String
    #   * {Types::DeleteABTestResponse#ab_test_arn #ab_test_arn} => String
    #   * {Types::DeleteABTestResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_ab_test({
    #     ab_test_id: "ABTestId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.ab_test_id #=> String
    #   resp.ab_test_arn #=> String
    #   resp.status #=> String, one of "CREATING", "ACTIVE", "CREATE_FAILED", "UPDATING", "UPDATE_FAILED", "DELETING", "DELETE_FAILED", "FAILED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/DeleteABTest AWS API Documentation
    #
    # @overload delete_ab_test(params = {})
    # @param [Hash] params ({})
    def delete_ab_test(params = {}, options = {})
      req = build_request(:delete_ab_test, params)
      req.send_request(options)
    end

    # Deletes a batch evaluation and its associated results.
    #
    # @option params [required, String] :batch_evaluation_id
    #   The unique identifier of the batch evaluation to delete.
    #
    # @return [Types::DeleteBatchEvaluationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteBatchEvaluationResponse#batch_evaluation_id #batch_evaluation_id} => String
    #   * {Types::DeleteBatchEvaluationResponse#batch_evaluation_arn #batch_evaluation_arn} => String
    #   * {Types::DeleteBatchEvaluationResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_batch_evaluation({
    #     batch_evaluation_id: "BatchEvaluationId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.batch_evaluation_id #=> String
    #   resp.batch_evaluation_arn #=> String
    #   resp.status #=> String, one of "PENDING", "IN_PROGRESS", "COMPLETED", "COMPLETED_WITH_ERRORS", "FAILED", "STOPPING", "STOPPED", "DELETING"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/DeleteBatchEvaluation AWS API Documentation
    #
    # @overload delete_batch_evaluation(params = {})
    # @param [Hash] params ({})
    def delete_batch_evaluation(params = {}, options = {})
      req = build_request(:delete_batch_evaluation, params)
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

    # Delete a payment instrument
    #
    # Marks a payment instrument as deleted by updating its status to
    # DELETED. This is a soft delete operation that preserves the record in
    # the database for audit and compliance purposes. The record remains
    # queryable for audit purposes but is excluded from normal list and get
    # operations.
    #
    # Deleting an already-deleted or non-existent instrument returns
    # ResourceNotFoundException (404).
    #
    # Authorization: The caller must own the instrument (accountId, userId,
    # and paymentManagerId must match). If authorization fails, a 403
    # Forbidden error is returned.
    #
    # Timestamp Management: The updatedAt timestamp is set to the current
    # time, while createdAt is preserved. The version field is incremented
    # for optimistic locking.
    #
    # Errors:
    #
    # * ResourceNotFoundException: The instrument does not exist or is
    #   already deleted
    # * AccessDeniedException: The caller is not authorized to delete this
    #   instrument
    # * ValidationException: Required fields are missing or invalid
    # * InternalServerException: An unexpected server error occurred
    #
    # @option params [String] :user_id
    #   The user ID making the delete request. Must match the instrument's
    #   userId.
    #
    # @option params [required, String] :payment_manager_arn
    #   The payment manager ARN. Must match the instrument's
    #   paymentManagerArn.
    #
    # @option params [required, String] :payment_connector_id
    #   The payment connector ID. Must match the instrument's
    #   paymentConnectorId.
    #
    # @option params [required, String] :payment_instrument_id
    #   The payment instrument ID to delete.
    #
    # @return [Types::DeletePaymentInstrumentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeletePaymentInstrumentResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_payment_instrument({
    #     user_id: "UserId",
    #     payment_manager_arn: "PaymentManagerArn", # required
    #     payment_connector_id: "PaymentConnectorId", # required
    #     payment_instrument_id: "PaymentInstrumentId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> String, one of "INITIATED", "ACTIVE", "FAILED", "DELETED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/DeletePaymentInstrument AWS API Documentation
    #
    # @overload delete_payment_instrument(params = {})
    # @param [Hash] params ({})
    def delete_payment_instrument(params = {}, options = {})
      req = build_request(:delete_payment_instrument, params)
      req.send_request(options)
    end

    # Delete a payment manager session
    #
    # Permanently removes a payment session record from the database. This
    # is a hard delete operation that removes the session completely.
    #
    # Deleting a non-existent or already-deleted session returns
    # ResourceNotFoundException (404).
    #
    # Authorization: The caller must own the session (accountId, userId, and
    # paymentManagerId must match). If authorization fails, a 403 Forbidden
    # error is returned.
    #
    # Errors:
    #
    # * ResourceNotFoundException: The session does not exist or has already
    #   been deleted
    # * AccessDeniedException: The caller is not authorized to delete this
    #   session
    # * ValidationException: Required fields are missing or invalid
    # * InternalServerException: An unexpected server error occurred
    #
    # @option params [String] :user_id
    #   The user ID making the delete request. Must match the session's
    #   userId.
    #
    # @option params [required, String] :payment_manager_arn
    #   The payment manager ARN. Must match the session's paymentManagerArn.
    #
    # @option params [required, String] :payment_session_id
    #   The payment session ID to delete.
    #
    # @return [Types::DeletePaymentSessionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeletePaymentSessionResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_payment_session({
    #     user_id: "UserId",
    #     payment_manager_arn: "PaymentManagerArn", # required
    #     payment_session_id: "PaymentSessionId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> String, one of "ACTIVE", "EXPIRED", "DELETED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/DeletePaymentSession AWS API Documentation
    #
    # @overload delete_payment_session(params = {})
    # @param [Hash] params ({})
    def delete_payment_session(params = {}, options = {})
      req = build_request(:delete_payment_session, params)
      req.send_request(options)
    end

    # Deletes a recommendation and its associated results.
    #
    # @option params [required, String] :recommendation_id
    #   The unique identifier of the recommendation to delete.
    #
    # @return [Types::DeleteRecommendationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteRecommendationResponse#recommendation_id #recommendation_id} => String
    #   * {Types::DeleteRecommendationResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_recommendation({
    #     recommendation_id: "RecommendationId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.recommendation_id #=> String
    #   resp.status #=> String, one of "PENDING", "IN_PROGRESS", "COMPLETED", "FAILED", "DELETING"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/DeleteRecommendation AWS API Documentation
    #
    # @overload delete_recommendation(params = {})
    # @param [Hash] params ({})
    def delete_recommendation(params = {}, options = {})
      req = build_request(:delete_recommendation, params)
      req.send_request(options)
    end

    # Performs on-demand evaluation of agent traces using a specified
    # evaluator. This synchronous API accepts traces in OpenTelemetry format
    # and returns immediate scoring results with detailed explanations.
    #
    # @option params [required, String] :evaluator_id
    #   The unique identifier of the evaluator to use for scoring. Can be a
    #   built-in evaluator (e.g., `Builtin.Helpfulness`,
    #   `Builtin.Correctness`) or a custom evaluator Id created through the
    #   control plane API.
    #
    # @option params [required, Types::EvaluationInput] :evaluation_input
    #   The input data containing agent session spans to be evaluated.
    #   Includes a list of spans in OpenTelemetry format from supported
    #   frameworks like Strands (AgentCore Runtime) or LangGraph with
    #   OpenInference instrumentation.
    #
    # @option params [Types::EvaluationTarget] :evaluation_target
    #   The specific trace or span IDs to evaluate within the provided input.
    #   Allows targeting evaluation at different levels: individual tool
    #   calls, single request-response interactions (traces), or entire
    #   conversation sessions.
    #
    # @option params [Array<Types::EvaluationReferenceInput>] :evaluation_reference_inputs
    #   Ground truth data to compare against agent responses during
    #   evaluation. Allows to provide expected responses, assertions, and
    #   expected tool trajectories at different evaluation levels.
    #   Session-level reference inputs apply to the entire conversation, while
    #   trace-level reference inputs target specific request-response
    #   interactions identified by trace ID.
    #
    # @return [Types::EvaluateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::EvaluateResponse#evaluation_results #evaluation_results} => Array&lt;Types::EvaluationResultContent&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.evaluate({
    #     evaluator_id: "EvaluatorId", # required
    #     evaluation_input: { # required
    #       session_spans: [
    #         {
    #         },
    #       ],
    #     },
    #     evaluation_target: {
    #       span_ids: ["SpanId"],
    #       trace_ids: ["TraceId"],
    #     },
    #     evaluation_reference_inputs: [
    #       {
    #         context: { # required
    #           span_context: {
    #             session_id: "String", # required
    #             trace_id: "String",
    #             span_id: "String",
    #           },
    #         },
    #         expected_response: {
    #           text: "EvaluationContentTextString",
    #         },
    #         assertions: [
    #           {
    #             text: "EvaluationContentTextString",
    #           },
    #         ],
    #         expected_trajectory: {
    #           tool_names: ["EvaluationToolName"],
    #         },
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.evaluation_results #=> Array
    #   resp.evaluation_results[0].evaluator_arn #=> String
    #   resp.evaluation_results[0].evaluator_id #=> String
    #   resp.evaluation_results[0].evaluator_name #=> String
    #   resp.evaluation_results[0].explanation #=> String
    #   resp.evaluation_results[0].context.span_context.session_id #=> String
    #   resp.evaluation_results[0].context.span_context.trace_id #=> String
    #   resp.evaluation_results[0].context.span_context.span_id #=> String
    #   resp.evaluation_results[0].value #=> Float
    #   resp.evaluation_results[0].label #=> String
    #   resp.evaluation_results[0].token_usage.input_tokens #=> Integer
    #   resp.evaluation_results[0].token_usage.output_tokens #=> Integer
    #   resp.evaluation_results[0].token_usage.total_tokens #=> Integer
    #   resp.evaluation_results[0].error_message #=> String
    #   resp.evaluation_results[0].error_code #=> String
    #   resp.evaluation_results[0].ignored_reference_input_fields #=> Array
    #   resp.evaluation_results[0].ignored_reference_input_fields[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/Evaluate AWS API Documentation
    #
    # @overload evaluate(params = {})
    # @param [Hash] params ({})
    def evaluate(params = {}, options = {})
      req = build_request(:evaluate, params)
      req.send_request(options)
    end

    # Retrieves detailed information about an A/B test, including its
    # configuration, status, and statistical results.
    #
    # @option params [required, String] :ab_test_id
    #   The unique identifier of the A/B test to retrieve.
    #
    # @return [Types::GetABTestResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetABTestResponse#ab_test_id #ab_test_id} => String
    #   * {Types::GetABTestResponse#ab_test_arn #ab_test_arn} => String
    #   * {Types::GetABTestResponse#name #name} => String
    #   * {Types::GetABTestResponse#description #description} => String
    #   * {Types::GetABTestResponse#status #status} => String
    #   * {Types::GetABTestResponse#execution_status #execution_status} => String
    #   * {Types::GetABTestResponse#gateway_arn #gateway_arn} => String
    #   * {Types::GetABTestResponse#variants #variants} => Array&lt;Types::Variant&gt;
    #   * {Types::GetABTestResponse#gateway_filter #gateway_filter} => Types::GatewayFilter
    #   * {Types::GetABTestResponse#evaluation_config #evaluation_config} => Types::ABTestEvaluationConfig
    #   * {Types::GetABTestResponse#role_arn #role_arn} => String
    #   * {Types::GetABTestResponse#current_run_id #current_run_id} => String
    #   * {Types::GetABTestResponse#error_details #error_details} => Array&lt;String&gt;
    #   * {Types::GetABTestResponse#started_at #started_at} => Time
    #   * {Types::GetABTestResponse#stopped_at #stopped_at} => Time
    #   * {Types::GetABTestResponse#max_duration_expires_at #max_duration_expires_at} => Time
    #   * {Types::GetABTestResponse#created_at #created_at} => Time
    #   * {Types::GetABTestResponse#updated_at #updated_at} => Time
    #   * {Types::GetABTestResponse#results #results} => Types::ABTestResults
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_ab_test({
    #     ab_test_id: "ABTestId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.ab_test_id #=> String
    #   resp.ab_test_arn #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.status #=> String, one of "CREATING", "ACTIVE", "CREATE_FAILED", "UPDATING", "UPDATE_FAILED", "DELETING", "DELETE_FAILED", "FAILED"
    #   resp.execution_status #=> String, one of "PAUSED", "RUNNING", "STOPPED", "NOT_STARTED"
    #   resp.gateway_arn #=> String
    #   resp.variants #=> Array
    #   resp.variants[0].name #=> String
    #   resp.variants[0].weight #=> Integer
    #   resp.variants[0].variant_configuration.configuration_bundle.bundle_arn #=> String
    #   resp.variants[0].variant_configuration.configuration_bundle.bundle_version #=> String
    #   resp.variants[0].variant_configuration.target.name #=> String
    #   resp.gateway_filter.target_paths #=> Array
    #   resp.gateway_filter.target_paths[0] #=> String
    #   resp.evaluation_config.online_evaluation_config_arn #=> String
    #   resp.evaluation_config.per_variant_online_evaluation_config #=> Array
    #   resp.evaluation_config.per_variant_online_evaluation_config[0].name #=> String
    #   resp.evaluation_config.per_variant_online_evaluation_config[0].online_evaluation_config_arn #=> String
    #   resp.role_arn #=> String
    #   resp.current_run_id #=> String
    #   resp.error_details #=> Array
    #   resp.error_details[0] #=> String
    #   resp.started_at #=> Time
    #   resp.stopped_at #=> Time
    #   resp.max_duration_expires_at #=> Time
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.results.analysis_timestamp #=> Time
    #   resp.results.evaluator_metrics #=> Array
    #   resp.results.evaluator_metrics[0].evaluator_arn #=> String
    #   resp.results.evaluator_metrics[0].control_stats.variant_name #=> String
    #   resp.results.evaluator_metrics[0].control_stats.sample_size #=> Integer
    #   resp.results.evaluator_metrics[0].control_stats.mean #=> Float
    #   resp.results.evaluator_metrics[0].variant_results #=> Array
    #   resp.results.evaluator_metrics[0].variant_results[0].variant_name #=> String
    #   resp.results.evaluator_metrics[0].variant_results[0].sample_size #=> Integer
    #   resp.results.evaluator_metrics[0].variant_results[0].mean #=> Float
    #   resp.results.evaluator_metrics[0].variant_results[0].absolute_change #=> Float
    #   resp.results.evaluator_metrics[0].variant_results[0].percent_change #=> Float
    #   resp.results.evaluator_metrics[0].variant_results[0].p_value #=> Float
    #   resp.results.evaluator_metrics[0].variant_results[0].confidence_interval.lower #=> Float
    #   resp.results.evaluator_metrics[0].variant_results[0].confidence_interval.upper #=> Float
    #   resp.results.evaluator_metrics[0].variant_results[0].is_significant #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/GetABTest AWS API Documentation
    #
    # @overload get_ab_test(params = {})
    # @param [Hash] params ({})
    def get_ab_test(params = {}, options = {})
      req = build_request(:get_ab_test, params)
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

    # Retrieves detailed information about a batch evaluation, including its
    # status, configuration, results, and any error details.
    #
    # @option params [required, String] :batch_evaluation_id
    #   The unique identifier of the batch evaluation to retrieve.
    #
    # @return [Types::GetBatchEvaluationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetBatchEvaluationResponse#batch_evaluation_id #batch_evaluation_id} => String
    #   * {Types::GetBatchEvaluationResponse#batch_evaluation_arn #batch_evaluation_arn} => String
    #   * {Types::GetBatchEvaluationResponse#batch_evaluation_name #batch_evaluation_name} => String
    #   * {Types::GetBatchEvaluationResponse#status #status} => String
    #   * {Types::GetBatchEvaluationResponse#created_at #created_at} => Time
    #   * {Types::GetBatchEvaluationResponse#evaluators #evaluators} => Array&lt;Types::Evaluator&gt;
    #   * {Types::GetBatchEvaluationResponse#data_source_config #data_source_config} => Types::DataSourceConfig
    #   * {Types::GetBatchEvaluationResponse#output_config #output_config} => Types::OutputConfig
    #   * {Types::GetBatchEvaluationResponse#evaluation_results #evaluation_results} => Types::EvaluationJobResults
    #   * {Types::GetBatchEvaluationResponse#error_details #error_details} => Array&lt;String&gt;
    #   * {Types::GetBatchEvaluationResponse#description #description} => String
    #   * {Types::GetBatchEvaluationResponse#updated_at #updated_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_batch_evaluation({
    #     batch_evaluation_id: "BatchEvaluationId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.batch_evaluation_id #=> String
    #   resp.batch_evaluation_arn #=> String
    #   resp.batch_evaluation_name #=> String
    #   resp.status #=> String, one of "PENDING", "IN_PROGRESS", "COMPLETED", "COMPLETED_WITH_ERRORS", "FAILED", "STOPPING", "STOPPED", "DELETING"
    #   resp.created_at #=> Time
    #   resp.evaluators #=> Array
    #   resp.evaluators[0].evaluator_id #=> String
    #   resp.data_source_config.cloud_watch_logs.service_names #=> Array
    #   resp.data_source_config.cloud_watch_logs.service_names[0] #=> String
    #   resp.data_source_config.cloud_watch_logs.log_group_names #=> Array
    #   resp.data_source_config.cloud_watch_logs.log_group_names[0] #=> String
    #   resp.data_source_config.cloud_watch_logs.filter_config.session_ids #=> Array
    #   resp.data_source_config.cloud_watch_logs.filter_config.session_ids[0] #=> String
    #   resp.data_source_config.cloud_watch_logs.filter_config.time_range.start_time #=> Time
    #   resp.data_source_config.cloud_watch_logs.filter_config.time_range.end_time #=> Time
    #   resp.output_config.cloud_watch_config.log_group_name #=> String
    #   resp.output_config.cloud_watch_config.log_stream_name #=> String
    #   resp.evaluation_results.number_of_sessions_completed #=> Integer
    #   resp.evaluation_results.number_of_sessions_in_progress #=> Integer
    #   resp.evaluation_results.number_of_sessions_failed #=> Integer
    #   resp.evaluation_results.total_number_of_sessions #=> Integer
    #   resp.evaluation_results.number_of_sessions_ignored #=> Integer
    #   resp.evaluation_results.evaluator_summaries #=> Array
    #   resp.evaluation_results.evaluator_summaries[0].evaluator_id #=> String
    #   resp.evaluation_results.evaluator_summaries[0].statistics.average_score #=> Float
    #   resp.evaluation_results.evaluator_summaries[0].total_evaluated #=> Integer
    #   resp.evaluation_results.evaluator_summaries[0].total_failed #=> Integer
    #   resp.error_details #=> Array
    #   resp.error_details[0] #=> String
    #   resp.description #=> String
    #   resp.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/GetBatchEvaluation AWS API Documentation
    #
    # @overload get_batch_evaluation(params = {})
    # @param [Hash] params ({})
    def get_batch_evaluation(params = {}, options = {})
      req = build_request(:get_batch_evaluation, params)
      req.send_request(options)
    end

    # Retrieves detailed information about a specific browser session in
    # Amazon Bedrock AgentCore. This operation returns the session's
    # configuration, current status, associated streams, and metadata.
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
    # [1]: https://docs.aws.amazon.com/bedrock-agentcore/latest/APIReference/API_StartBrowserSession.html
    # [2]: https://docs.aws.amazon.com/bedrock-agentcore/latest/APIReference/API_ListBrowserSessions.html
    # [3]: https://docs.aws.amazon.com/bedrock-agentcore/latest/APIReference/API_StopBrowserSession.html
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
    #   * {Types::GetBrowserSessionResponse#extensions #extensions} => Array&lt;Types::BrowserExtension&gt;
    #   * {Types::GetBrowserSessionResponse#enterprise_policies #enterprise_policies} => Array&lt;Types::BrowserEnterprisePolicy&gt;
    #   * {Types::GetBrowserSessionResponse#profile_configuration #profile_configuration} => Types::BrowserProfileConfiguration
    #   * {Types::GetBrowserSessionResponse#session_timeout_seconds #session_timeout_seconds} => Integer
    #   * {Types::GetBrowserSessionResponse#status #status} => String
    #   * {Types::GetBrowserSessionResponse#streams #streams} => Types::BrowserSessionStream
    #   * {Types::GetBrowserSessionResponse#proxy_configuration #proxy_configuration} => Types::ProxyConfiguration
    #   * {Types::GetBrowserSessionResponse#certificates #certificates} => Array&lt;Types::Certificate&gt;
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
    #   resp.extensions #=> Array
    #   resp.extensions[0].location.s3.bucket #=> String
    #   resp.extensions[0].location.s3.prefix #=> String
    #   resp.extensions[0].location.s3.version_id #=> String
    #   resp.enterprise_policies #=> Array
    #   resp.enterprise_policies[0].location.s3.bucket #=> String
    #   resp.enterprise_policies[0].location.s3.prefix #=> String
    #   resp.enterprise_policies[0].location.s3.version_id #=> String
    #   resp.enterprise_policies[0].type #=> String, one of "MANAGED", "RECOMMENDED"
    #   resp.profile_configuration.profile_identifier #=> String
    #   resp.session_timeout_seconds #=> Integer
    #   resp.status #=> String, one of "READY", "TERMINATED"
    #   resp.streams.automation_stream.stream_endpoint #=> String
    #   resp.streams.automation_stream.stream_status #=> String, one of "ENABLED", "DISABLED"
    #   resp.streams.live_view_stream.stream_endpoint #=> String
    #   resp.proxy_configuration.proxies #=> Array
    #   resp.proxy_configuration.proxies[0].external_proxy.server #=> String
    #   resp.proxy_configuration.proxies[0].external_proxy.port #=> Integer
    #   resp.proxy_configuration.proxies[0].external_proxy.domain_patterns #=> Array
    #   resp.proxy_configuration.proxies[0].external_proxy.domain_patterns[0] #=> String
    #   resp.proxy_configuration.proxies[0].external_proxy.credentials.basic_auth.secret_arn #=> String
    #   resp.proxy_configuration.bypass.domain_patterns #=> Array
    #   resp.proxy_configuration.bypass.domain_patterns[0] #=> String
    #   resp.certificates #=> Array
    #   resp.certificates[0].location.secrets_manager.secret_arn #=> String
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
    # session in Amazon Bedrock AgentCore. This operation returns the
    # session's configuration, current status, and metadata.
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
    # [1]: https://docs.aws.amazon.com/bedrock-agentcore/latest/APIReference/API_StartCodeInterpreterSession.html
    # [2]: https://docs.aws.amazon.com/bedrock-agentcore/latest/APIReference/API_ListCodeInterpreterSessions.html
    # [3]: https://docs.aws.amazon.com/bedrock-agentcore/latest/APIReference/API_StopCodeInterpreterSession.html
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
    #   * {Types::GetCodeInterpreterSessionResponse#certificates #certificates} => Array&lt;Types::Certificate&gt;
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
    #   resp.certificates #=> Array
    #   resp.certificates[0].location.secrets_manager.secret_arn #=> String
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
    #   resp.memory_record.metadata #=> Hash
    #   resp.memory_record.metadata["MetadataKey"].string_value #=> String
    #   resp.memory_record.metadata["MetadataKey"].string_list_value #=> Array
    #   resp.memory_record.metadata["MetadataKey"].string_list_value[0] #=> String
    #   resp.memory_record.metadata["MetadataKey"].number_value #=> Float
    #   resp.memory_record.metadata["MetadataKey"].date_time_value #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/GetMemoryRecord AWS API Documentation
    #
    # @overload get_memory_record(params = {})
    # @param [Hash] params ({})
    def get_memory_record(params = {}, options = {})
      req = build_request(:get_memory_record, params)
      req.send_request(options)
    end

    # Get a payment instrument by ID
    #
    # @option params [String] :user_id
    #   The user ID associated with this payment instrument.
    #
    # @option params [String] :agent_name
    #   The agent name associated with this request, used for observability.
    #
    # @option params [required, String] :payment_manager_arn
    #   The ARN of the payment manager that owns this payment instrument.
    #
    # @option params [String] :payment_connector_id
    #   The ID of the payment connector.
    #
    # @option params [required, String] :payment_instrument_id
    #   The ID of the payment instrument to retrieve.
    #
    # @return [Types::GetPaymentInstrumentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetPaymentInstrumentResponse#payment_instrument #payment_instrument} => Types::PaymentInstrument
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_payment_instrument({
    #     user_id: "UserId",
    #     agent_name: "PaymentAgentName",
    #     payment_manager_arn: "PaymentManagerArn", # required
    #     payment_connector_id: "PaymentConnectorId",
    #     payment_instrument_id: "PaymentInstrumentId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.payment_instrument.payment_instrument_id #=> String
    #   resp.payment_instrument.payment_manager_arn #=> String
    #   resp.payment_instrument.payment_connector_id #=> String
    #   resp.payment_instrument.user_id #=> String
    #   resp.payment_instrument.payment_instrument_type #=> String, one of "EMBEDDED_CRYPTO_WALLET"
    #   resp.payment_instrument.payment_instrument_details.embedded_crypto_wallet.network #=> String, one of "ETHEREUM", "SOLANA"
    #   resp.payment_instrument.payment_instrument_details.embedded_crypto_wallet.linked_accounts #=> Array
    #   resp.payment_instrument.payment_instrument_details.embedded_crypto_wallet.linked_accounts[0].email.email_address #=> String
    #   resp.payment_instrument.payment_instrument_details.embedded_crypto_wallet.linked_accounts[0].sms.phone_number #=> String
    #   resp.payment_instrument.payment_instrument_details.embedded_crypto_wallet.linked_accounts[0].developer_jwt.kid #=> String
    #   resp.payment_instrument.payment_instrument_details.embedded_crypto_wallet.linked_accounts[0].developer_jwt.sub #=> String
    #   resp.payment_instrument.payment_instrument_details.embedded_crypto_wallet.linked_accounts[0].o_auth_2.google.sub #=> String
    #   resp.payment_instrument.payment_instrument_details.embedded_crypto_wallet.linked_accounts[0].o_auth_2.google.email_address #=> String
    #   resp.payment_instrument.payment_instrument_details.embedded_crypto_wallet.linked_accounts[0].o_auth_2.google.name #=> String
    #   resp.payment_instrument.payment_instrument_details.embedded_crypto_wallet.linked_accounts[0].o_auth_2.google.username #=> String
    #   resp.payment_instrument.payment_instrument_details.embedded_crypto_wallet.linked_accounts[0].o_auth_2.apple.sub #=> String
    #   resp.payment_instrument.payment_instrument_details.embedded_crypto_wallet.linked_accounts[0].o_auth_2.apple.email_address #=> String
    #   resp.payment_instrument.payment_instrument_details.embedded_crypto_wallet.linked_accounts[0].o_auth_2.apple.name #=> String
    #   resp.payment_instrument.payment_instrument_details.embedded_crypto_wallet.linked_accounts[0].o_auth_2.apple.username #=> String
    #   resp.payment_instrument.payment_instrument_details.embedded_crypto_wallet.linked_accounts[0].o_auth_2.x.sub #=> String
    #   resp.payment_instrument.payment_instrument_details.embedded_crypto_wallet.linked_accounts[0].o_auth_2.x.email_address #=> String
    #   resp.payment_instrument.payment_instrument_details.embedded_crypto_wallet.linked_accounts[0].o_auth_2.x.name #=> String
    #   resp.payment_instrument.payment_instrument_details.embedded_crypto_wallet.linked_accounts[0].o_auth_2.x.username #=> String
    #   resp.payment_instrument.payment_instrument_details.embedded_crypto_wallet.linked_accounts[0].o_auth_2.telegram.sub #=> String
    #   resp.payment_instrument.payment_instrument_details.embedded_crypto_wallet.linked_accounts[0].o_auth_2.telegram.email_address #=> String
    #   resp.payment_instrument.payment_instrument_details.embedded_crypto_wallet.linked_accounts[0].o_auth_2.telegram.name #=> String
    #   resp.payment_instrument.payment_instrument_details.embedded_crypto_wallet.linked_accounts[0].o_auth_2.telegram.username #=> String
    #   resp.payment_instrument.payment_instrument_details.embedded_crypto_wallet.linked_accounts[0].o_auth_2.github.sub #=> String
    #   resp.payment_instrument.payment_instrument_details.embedded_crypto_wallet.linked_accounts[0].o_auth_2.github.email_address #=> String
    #   resp.payment_instrument.payment_instrument_details.embedded_crypto_wallet.linked_accounts[0].o_auth_2.github.name #=> String
    #   resp.payment_instrument.payment_instrument_details.embedded_crypto_wallet.linked_accounts[0].o_auth_2.github.username #=> String
    #   resp.payment_instrument.payment_instrument_details.embedded_crypto_wallet.wallet_address #=> String
    #   resp.payment_instrument.payment_instrument_details.embedded_crypto_wallet.redirect_url #=> String
    #   resp.payment_instrument.created_at #=> Time
    #   resp.payment_instrument.status #=> String, one of "INITIATED", "ACTIVE", "FAILED", "DELETED"
    #   resp.payment_instrument.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/GetPaymentInstrument AWS API Documentation
    #
    # @overload get_payment_instrument(params = {})
    # @param [Hash] params ({})
    def get_payment_instrument(params = {}, options = {})
      req = build_request(:get_payment_instrument, params)
      req.send_request(options)
    end

    # Get the balance of a payment instrument
    #
    # @option params [String] :user_id
    #   The user ID associated with this payment instrument.
    #
    # @option params [String] :agent_name
    #   The agent name associated with this request, used for observability.
    #
    # @option params [required, String] :payment_manager_arn
    #   The ARN of the payment manager that owns this payment instrument.
    #
    # @option params [required, String] :payment_connector_id
    #   The ID of the payment connector associated with this instrument.
    #
    # @option params [required, String] :payment_instrument_id
    #   The ID of the payment instrument to query balance for.
    #
    # @option params [required, String] :chain
    #   The specific blockchain chain to query balance on. Required because
    #   balances are chain-specific — the same wallet address may hold
    #   different token balances on different chains.
    #
    # @option params [required, String] :token
    #   The token to query balance for. Required to specify which supported
    #   token's balance to return.
    #
    # @return [Types::GetPaymentInstrumentBalanceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetPaymentInstrumentBalanceResponse#payment_instrument_id #payment_instrument_id} => String
    #   * {Types::GetPaymentInstrumentBalanceResponse#token_balance #token_balance} => Types::TokenBalance
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_payment_instrument_balance({
    #     user_id: "UserId",
    #     agent_name: "PaymentAgentName",
    #     payment_manager_arn: "PaymentManagerArn", # required
    #     payment_connector_id: "PaymentConnectorId", # required
    #     payment_instrument_id: "PaymentInstrumentId", # required
    #     chain: "BASE", # required, accepts BASE, BASE_SEPOLIA, ETHEREUM, SOLANA, SOLANA_DEVNET
    #     token: "USDC", # required, accepts USDC
    #   })
    #
    # @example Response structure
    #
    #   resp.payment_instrument_id #=> String
    #   resp.token_balance.amount #=> String
    #   resp.token_balance.decimals #=> Integer
    #   resp.token_balance.token #=> String, one of "USDC"
    #   resp.token_balance.network #=> String, one of "ETHEREUM", "SOLANA"
    #   resp.token_balance.chain #=> String, one of "BASE", "BASE_SEPOLIA", "ETHEREUM", "SOLANA", "SOLANA_DEVNET"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/GetPaymentInstrumentBalance AWS API Documentation
    #
    # @overload get_payment_instrument_balance(params = {})
    # @param [Hash] params ({})
    def get_payment_instrument_balance(params = {}, options = {})
      req = build_request(:get_payment_instrument_balance, params)
      req.send_request(options)
    end

    # Get a payment session
    #
    # @option params [String] :user_id
    #   The user ID associated with this payment session.
    #
    # @option params [String] :agent_name
    #   The agent name associated with this request, used for observability.
    #
    # @option params [required, String] :payment_manager_arn
    #   The ARN of the payment manager that owns this session.
    #
    # @option params [required, String] :payment_session_id
    #   The ID of the payment session to retrieve.
    #
    # @return [Types::GetPaymentSessionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetPaymentSessionResponse#payment_session #payment_session} => Types::PaymentSession
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_payment_session({
    #     user_id: "UserId",
    #     agent_name: "PaymentAgentName",
    #     payment_manager_arn: "PaymentManagerArn", # required
    #     payment_session_id: "PaymentSessionId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.payment_session.payment_session_id #=> String
    #   resp.payment_session.payment_manager_arn #=> String
    #   resp.payment_session.limits.max_spend_amount.value #=> String
    #   resp.payment_session.limits.max_spend_amount.currency #=> String, one of "USD"
    #   resp.payment_session.user_id #=> String
    #   resp.payment_session.expiry_time_in_minutes #=> Integer
    #   resp.payment_session.created_at #=> Time
    #   resp.payment_session.available_limits.available_spend_amount.value #=> String
    #   resp.payment_session.available_limits.available_spend_amount.currency #=> String, one of "USD"
    #   resp.payment_session.available_limits.updated_at #=> Time
    #   resp.payment_session.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/GetPaymentSession AWS API Documentation
    #
    # @overload get_payment_session(params = {})
    # @param [Hash] params ({})
    def get_payment_session(params = {}, options = {})
      req = build_request(:get_payment_session, params)
      req.send_request(options)
    end

    # Retrieves detailed information about a recommendation, including its
    # configuration, status, and results.
    #
    # @option params [required, String] :recommendation_id
    #   The unique identifier of the recommendation to retrieve.
    #
    # @return [Types::GetRecommendationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetRecommendationResponse#recommendation_id #recommendation_id} => String
    #   * {Types::GetRecommendationResponse#recommendation_arn #recommendation_arn} => String
    #   * {Types::GetRecommendationResponse#name #name} => String
    #   * {Types::GetRecommendationResponse#description #description} => String
    #   * {Types::GetRecommendationResponse#type #type} => String
    #   * {Types::GetRecommendationResponse#recommendation_config #recommendation_config} => Types::RecommendationConfig
    #   * {Types::GetRecommendationResponse#status #status} => String
    #   * {Types::GetRecommendationResponse#created_at #created_at} => Time
    #   * {Types::GetRecommendationResponse#updated_at #updated_at} => Time
    #   * {Types::GetRecommendationResponse#recommendation_result #recommendation_result} => Types::RecommendationResult
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_recommendation({
    #     recommendation_id: "RecommendationId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.recommendation_id #=> String
    #   resp.recommendation_arn #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.type #=> String, one of "SYSTEM_PROMPT_RECOMMENDATION", "TOOL_DESCRIPTION_RECOMMENDATION"
    #   resp.recommendation_config.system_prompt_recommendation_config.system_prompt.text #=> String
    #   resp.recommendation_config.system_prompt_recommendation_config.system_prompt.configuration_bundle.bundle_arn #=> String
    #   resp.recommendation_config.system_prompt_recommendation_config.system_prompt.configuration_bundle.version_id #=> String
    #   resp.recommendation_config.system_prompt_recommendation_config.system_prompt.configuration_bundle.system_prompt_json_path #=> String
    #   resp.recommendation_config.system_prompt_recommendation_config.agent_traces.session_spans #=> Array
    #   resp.recommendation_config.system_prompt_recommendation_config.agent_traces.cloudwatch_logs.log_group_arns #=> Array
    #   resp.recommendation_config.system_prompt_recommendation_config.agent_traces.cloudwatch_logs.log_group_arns[0] #=> String
    #   resp.recommendation_config.system_prompt_recommendation_config.agent_traces.cloudwatch_logs.service_names #=> Array
    #   resp.recommendation_config.system_prompt_recommendation_config.agent_traces.cloudwatch_logs.service_names[0] #=> String
    #   resp.recommendation_config.system_prompt_recommendation_config.agent_traces.cloudwatch_logs.start_time #=> Time
    #   resp.recommendation_config.system_prompt_recommendation_config.agent_traces.cloudwatch_logs.end_time #=> Time
    #   resp.recommendation_config.system_prompt_recommendation_config.agent_traces.cloudwatch_logs.rule.filters #=> Array
    #   resp.recommendation_config.system_prompt_recommendation_config.agent_traces.cloudwatch_logs.rule.filters[0].key #=> String
    #   resp.recommendation_config.system_prompt_recommendation_config.agent_traces.cloudwatch_logs.rule.filters[0].operator #=> String, one of "Equals", "NotEquals", "GreaterThan", "LessThan", "GreaterThanOrEqual", "LessThanOrEqual", "Contains", "NotContains"
    #   resp.recommendation_config.system_prompt_recommendation_config.agent_traces.cloudwatch_logs.rule.filters[0].value.string_value #=> String
    #   resp.recommendation_config.system_prompt_recommendation_config.agent_traces.cloudwatch_logs.rule.filters[0].value.double_value #=> Float
    #   resp.recommendation_config.system_prompt_recommendation_config.agent_traces.cloudwatch_logs.rule.filters[0].value.boolean_value #=> Boolean
    #   resp.recommendation_config.system_prompt_recommendation_config.evaluation_config.evaluators #=> Array
    #   resp.recommendation_config.system_prompt_recommendation_config.evaluation_config.evaluators[0].evaluator_arn #=> String
    #   resp.recommendation_config.tool_description_recommendation_config.tool_description.tool_description_text.tools #=> Array
    #   resp.recommendation_config.tool_description_recommendation_config.tool_description.tool_description_text.tools[0].tool_name #=> String
    #   resp.recommendation_config.tool_description_recommendation_config.tool_description.tool_description_text.tools[0].tool_description.text #=> String
    #   resp.recommendation_config.tool_description_recommendation_config.tool_description.configuration_bundle.bundle_arn #=> String
    #   resp.recommendation_config.tool_description_recommendation_config.tool_description.configuration_bundle.version_id #=> String
    #   resp.recommendation_config.tool_description_recommendation_config.tool_description.configuration_bundle.tools #=> Array
    #   resp.recommendation_config.tool_description_recommendation_config.tool_description.configuration_bundle.tools[0].tool_name #=> String
    #   resp.recommendation_config.tool_description_recommendation_config.tool_description.configuration_bundle.tools[0].tool_description_json_path #=> String
    #   resp.recommendation_config.tool_description_recommendation_config.agent_traces.session_spans #=> Array
    #   resp.recommendation_config.tool_description_recommendation_config.agent_traces.cloudwatch_logs.log_group_arns #=> Array
    #   resp.recommendation_config.tool_description_recommendation_config.agent_traces.cloudwatch_logs.log_group_arns[0] #=> String
    #   resp.recommendation_config.tool_description_recommendation_config.agent_traces.cloudwatch_logs.service_names #=> Array
    #   resp.recommendation_config.tool_description_recommendation_config.agent_traces.cloudwatch_logs.service_names[0] #=> String
    #   resp.recommendation_config.tool_description_recommendation_config.agent_traces.cloudwatch_logs.start_time #=> Time
    #   resp.recommendation_config.tool_description_recommendation_config.agent_traces.cloudwatch_logs.end_time #=> Time
    #   resp.recommendation_config.tool_description_recommendation_config.agent_traces.cloudwatch_logs.rule.filters #=> Array
    #   resp.recommendation_config.tool_description_recommendation_config.agent_traces.cloudwatch_logs.rule.filters[0].key #=> String
    #   resp.recommendation_config.tool_description_recommendation_config.agent_traces.cloudwatch_logs.rule.filters[0].operator #=> String, one of "Equals", "NotEquals", "GreaterThan", "LessThan", "GreaterThanOrEqual", "LessThanOrEqual", "Contains", "NotContains"
    #   resp.recommendation_config.tool_description_recommendation_config.agent_traces.cloudwatch_logs.rule.filters[0].value.string_value #=> String
    #   resp.recommendation_config.tool_description_recommendation_config.agent_traces.cloudwatch_logs.rule.filters[0].value.double_value #=> Float
    #   resp.recommendation_config.tool_description_recommendation_config.agent_traces.cloudwatch_logs.rule.filters[0].value.boolean_value #=> Boolean
    #   resp.status #=> String, one of "PENDING", "IN_PROGRESS", "COMPLETED", "FAILED", "DELETING"
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.recommendation_result.system_prompt_recommendation_result.recommended_system_prompt #=> String
    #   resp.recommendation_result.system_prompt_recommendation_result.configuration_bundle.bundle_arn #=> String
    #   resp.recommendation_result.system_prompt_recommendation_result.configuration_bundle.version_id #=> String
    #   resp.recommendation_result.system_prompt_recommendation_result.error_code #=> String
    #   resp.recommendation_result.system_prompt_recommendation_result.error_message #=> String
    #   resp.recommendation_result.tool_description_recommendation_result.tools #=> Array
    #   resp.recommendation_result.tool_description_recommendation_result.tools[0].tool_name #=> String
    #   resp.recommendation_result.tool_description_recommendation_result.tools[0].recommended_tool_description #=> String
    #   resp.recommendation_result.tool_description_recommendation_result.configuration_bundle.bundle_arn #=> String
    #   resp.recommendation_result.tool_description_recommendation_result.configuration_bundle.version_id #=> String
    #   resp.recommendation_result.tool_description_recommendation_result.error_code #=> String
    #   resp.recommendation_result.tool_description_recommendation_result.error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/GetRecommendation AWS API Documentation
    #
    # @overload get_recommendation(params = {})
    # @param [Hash] params ({})
    def get_recommendation(params = {}, options = {})
      req = build_request(:get_recommendation, params)
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
    # @option params [String] :session_uri
    #   Unique identifier for the user's authentication session for
    #   retrieving OAuth2 tokens. This ID tracks the authorization flow state
    #   across multiple requests and responses during the OAuth2
    #   authentication process.
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
    # @option params [String] :custom_state
    #   An opaque string that will be sent back to the callback URL provided
    #   in resourceOauth2ReturnUrl. This state should be used to protect the
    #   callback URL of your application against CSRF attacks by ensuring the
    #   response corresponds to the original request.
    #
    # @option params [Array<String>] :resources
    #   The resources to include in the token request. These are used to
    #   specify the target resources for which the OAuth2 token is being
    #   requested.
    #
    # @option params [Array<String>] :audiences
    #   The audiences to include in the token request. These are used to
    #   specify the intended recipients of the OAuth2 token.
    #
    # @return [Types::GetResourceOauth2TokenResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetResourceOauth2TokenResponse#authorization_url #authorization_url} => String
    #   * {Types::GetResourceOauth2TokenResponse#access_token #access_token} => String
    #   * {Types::GetResourceOauth2TokenResponse#session_uri #session_uri} => String
    #   * {Types::GetResourceOauth2TokenResponse#session_status #session_status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_resource_oauth_2_token({
    #     workload_identity_token: "WorkloadIdentityTokenType", # required
    #     resource_credential_provider_name: "CredentialProviderName", # required
    #     scopes: ["ScopeType"], # required
    #     oauth2_flow: "USER_FEDERATION", # required, accepts USER_FEDERATION, M2M, ON_BEHALF_OF_TOKEN_EXCHANGE
    #     session_uri: "RequestUri",
    #     resource_oauth_2_return_url: "ResourceOauth2ReturnUrlType",
    #     force_authentication: false,
    #     custom_parameters: {
    #       "CustomRequestKeyType" => "CustomRequestValueType",
    #     },
    #     custom_state: "State",
    #     resources: ["ResourceType"],
    #     audiences: ["AudienceType"],
    #   })
    #
    # @example Response structure
    #
    #   resp.authorization_url #=> String
    #   resp.access_token #=> String
    #   resp.session_uri #=> String
    #   resp.session_status #=> String, one of "IN_PROGRESS", "FAILED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/GetResourceOauth2Token AWS API Documentation
    #
    # @overload get_resource_oauth_2_token(params = {})
    # @param [Hash] params ({})
    def get_resource_oauth_2_token(params = {}, options = {})
      req = build_request(:get_resource_oauth_2_token, params)
      req.send_request(options)
    end

    # Generates authentication tokens for payment providers that use
    # vendor-specific authentication mechanisms.
    #
    # @option params [required, String] :workload_identity_token
    #   Workload access token for authorization. Named workloadIdentityToken
    #   for consistency with APIKey and OAuth2CredentialProvider.
    #
    # @option params [required, String] :resource_credential_provider_name
    #   Name of the payment credential provider to use
    #
    # @option params [required, Types::PaymentTokenRequestInput] :payment_token_request
    #   Vendor-specific token request input Contains all request parameters in
    #   a type-safe, vendor-specific structure
    #
    # @return [Types::GetResourcePaymentTokenResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetResourcePaymentTokenResponse#payment_token_response #payment_token_response} => Types::PaymentTokenResponseOutput
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_resource_payment_token({
    #     workload_identity_token: "WorkloadIdentityTokenType", # required
    #     resource_credential_provider_name: "CredentialProviderName", # required
    #     payment_token_request: { # required
    #       coinbase_cdp_token_request: {
    #         request_method: "GET", # required, accepts GET, POST, PUT, DELETE, PATCH
    #         request_host: "PaymentRequestHostType",
    #         request_path: "PaymentRequestPathType", # required
    #         include_wallet_auth_token: false,
    #         request_body: "CoinbaseCdpPaymentRequestBodyType",
    #       },
    #       stripe_privy_token_request: {
    #         request_host: "StripePrivyRequestHostType",
    #         request_path: "StripePrivyRequestPathType", # required
    #         request_body: "StripePrivyRequestBodyType", # required
    #         include_authorization_signature: false,
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.payment_token_response.coinbase_cdp_token_response.bearer_token #=> String
    #   resp.payment_token_response.coinbase_cdp_token_response.wallet_auth_token #=> String
    #   resp.payment_token_response.stripe_privy_token_response.authorization_signature #=> String
    #   resp.payment_token_response.stripe_privy_token_response.request_expiry #=> Integer
    #   resp.payment_token_response.stripe_privy_token_response.app_id #=> String
    #   resp.payment_token_response.stripe_privy_token_response.basic_auth_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/GetResourcePaymentToken AWS API Documentation
    #
    # @overload get_resource_payment_token(params = {})
    # @param [Hash] params ({})
    def get_resource_payment_token(params = {}, options = {})
      req = build_request(:get_resource_payment_token, params)
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
    # To invoke an agent, you can specify either the AgentCore Runtime ARN
    # or the agent ID with an account ID, and provide a payload containing
    # your request. When you use the agent ID instead of the full ARN, you
    # don't need to URL-encode the identifier. You can optionally specify a
    # qualifier to target a specific endpoint of the agent.
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
    # `bedrock-agentcore:InvokeAgentRuntime` permission. If you are making a
    # call to `InvokeAgentRuntime` on behalf of a user ID with the
    # `X-Amzn-Bedrock-AgentCore-Runtime-User-Id` header, You require
    # permissions to both actions (`bedrock-agentcore:InvokeAgentRuntime`
    # and `bedrock-agentcore:InvokeAgentRuntimeForUser`).
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
    #   The identifier of the agent runtime to invoke. You can specify either
    #   the full Amazon Web Services Resource Name (ARN) or the agent ID. If
    #   you use the agent ID, you must also provide the `accountId` query
    #   parameter.
    #
    # @option params [String] :qualifier
    #   The qualifier to use for the agent runtime. This is an endpoint name
    #   that points to a specific version. If not specified, Amazon Bedrock
    #   AgentCore uses the default endpoint of the agent runtime.
    #
    # @option params [String] :account_id
    #   The identifier of the Amazon Web Services account for the agent
    #   runtime resource. This parameter is required when you specify an agent
    #   ID instead of the full ARN for `agentRuntimeArn`.
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
    #     account_id: "InvokeAgentRuntimeRequestAccountIdString",
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

    # Executes a command in a runtime session container and streams the
    # output back to the caller. This operation allows you to run shell
    # commands within the agent runtime environment and receive real-time
    # streaming responses including standard output and standard error.
    #
    # To invoke a command, you must specify the agent runtime ARN and a
    # runtime session ID. The command execution supports streaming
    # responses, allowing you to receive output as it becomes available
    # through `contentStart`, `contentDelta`, and `contentStop` events.
    #
    # To use this operation, you must have the
    # `bedrock-agentcore:InvokeAgentRuntimeCommand` permission.
    #
    # @option params [String] :content_type
    #   The MIME type of the input data in the request payload. This tells the
    #   agent runtime how to interpret the payload data. Common values include
    #   application/json for JSON data.
    #
    # @option params [String] :accept
    #   The desired MIME type for the response from the agent runtime command.
    #   This tells the agent runtime what format to use for the response data.
    #   Common values include application/json for JSON data.
    #
    # @option params [String] :runtime_session_id
    #   The unique identifier of the runtime session in which to execute the
    #   command. This session ID is used to maintain state and context across
    #   multiple command invocations.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
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
    #   The Amazon Resource Name (ARN) of the agent runtime on which to
    #   execute the command. This identifies the specific agent runtime
    #   environment where the command will run.
    #
    # @option params [String] :qualifier
    #   The qualifier to use for the agent runtime. This is an endpoint name
    #   that points to a specific version. If not specified, Amazon Bedrock
    #   AgentCore uses the default endpoint of the agent runtime.
    #
    # @option params [String] :account_id
    #   The identifier of the Amazon Web Services account for the agent
    #   runtime resource. This parameter is required when you specify an agent
    #   ID instead of the full ARN for `agentRuntimeArn`.
    #
    # @option params [required, Types::InvokeAgentRuntimeCommandRequestBody] :body
    #   The request body containing the command to execute and optional
    #   configuration parameters such as timeout settings.
    #
    # @return [Types::InvokeAgentRuntimeCommandResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::InvokeAgentRuntimeCommandResponse#runtime_session_id #runtime_session_id} => String
    #   * {Types::InvokeAgentRuntimeCommandResponse#trace_id #trace_id} => String
    #   * {Types::InvokeAgentRuntimeCommandResponse#trace_parent #trace_parent} => String
    #   * {Types::InvokeAgentRuntimeCommandResponse#trace_state #trace_state} => String
    #   * {Types::InvokeAgentRuntimeCommandResponse#baggage #baggage} => String
    #   * {Types::InvokeAgentRuntimeCommandResponse#content_type #content_type} => String
    #   * {Types::InvokeAgentRuntimeCommandResponse#status_code #status_code} => Integer
    #   * {Types::InvokeAgentRuntimeCommandResponse#stream #stream} => Types::InvokeAgentRuntimeCommandStreamOutput
    #
    # @example EventStream Operation Example
    #
    #   # You can process the event once it arrives immediately, or wait until the
    #   # full response is complete and iterate through the eventstream enumerator.
    #
    #   # To interact with event immediately, you need to register invoke_agent_runtime_command
    #   # with callbacks. Callbacks can be registered for specific events or for all
    #   # events, including error events.
    #
    #   # Callbacks can be passed into the `:event_stream_handler` option or within a
    #   # block statement attached to the #invoke_agent_runtime_command call directly. Hybrid
    #   # pattern of both is also supported.
    #
    #   # `:event_stream_handler` option takes in either a Proc object or
    #   # Aws::BedrockAgentCore::EventStreams::InvokeAgentRuntimeCommandStreamOutput object.
    #
    #   # Usage pattern a): Callbacks with a block attached to #invoke_agent_runtime_command
    #   # Example for registering callbacks for all event types and an error event
    #   client.invoke_agent_runtime_command(
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
    #   # Usage pattern b): Pass in `:event_stream_handler` for #invoke_agent_runtime_command
    #   #  1) Create a Aws::BedrockAgentCore::EventStreams::InvokeAgentRuntimeCommandStreamOutput object
    #   #  Example for registering callbacks with specific events
    #
    #   handler = Aws::BedrockAgentCore::EventStreams::InvokeAgentRuntimeCommandStreamOutput.new
    #   handler.on_chunk_event do |event|
    #     event # => Aws::BedrockAgentCore::Types::chunk
    #   end
    #   handler.on_access_denied_exception_event do |event|
    #     event # => Aws::BedrockAgentCore::Types::accessDeniedException
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
    #   handler.on_runtime_client_error_event do |event|
    #     event # => Aws::BedrockAgentCore::Types::runtimeClientError
    #   end
    #
    #   client.invoke_agent_runtime_command(
    #     # params inputs
    #     event_stream_handler: handler
    #   )
    #
    #   #  2) Use a Ruby Proc object
    #   #  Example for registering callbacks with specific events
    #   handler = Proc.new do |stream|
    #     stream.on_chunk_event do |event|
    #       event # => Aws::BedrockAgentCore::Types::chunk
    #     end
    #     stream.on_access_denied_exception_event do |event|
    #       event # => Aws::BedrockAgentCore::Types::accessDeniedException
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
    #     stream.on_runtime_client_error_event do |event|
    #       event # => Aws::BedrockAgentCore::Types::runtimeClientError
    #     end
    #   end
    #
    #   client.invoke_agent_runtime_command(
    #     # params inputs
    #     event_stream_handler: handler
    #   )
    #
    #   #  Usage pattern c): Hybrid pattern of a) and b)
    #   handler = Aws::BedrockAgentCore::EventStreams::InvokeAgentRuntimeCommandStreamOutput.new
    #   handler.on_chunk_event do |event|
    #     event # => Aws::BedrockAgentCore::Types::chunk
    #   end
    #   handler.on_access_denied_exception_event do |event|
    #     event # => Aws::BedrockAgentCore::Types::accessDeniedException
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
    #   handler.on_runtime_client_error_event do |event|
    #     event # => Aws::BedrockAgentCore::Types::runtimeClientError
    #   end
    #
    #   client.invoke_agent_runtime_command(
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
    #   resp = client.invoke_agent_runtime_command({
    #     content_type: "MimeType",
    #     accept: "MimeType",
    #     runtime_session_id: "SessionType",
    #     trace_id: "InvokeAgentRuntimeCommandRequestTraceIdString",
    #     trace_parent: "InvokeAgentRuntimeCommandRequestTraceParentString",
    #     trace_state: "InvokeAgentRuntimeCommandRequestTraceStateString",
    #     baggage: "InvokeAgentRuntimeCommandRequestBaggageString",
    #     agent_runtime_arn: "String", # required
    #     qualifier: "String",
    #     account_id: "InvokeAgentRuntimeCommandRequestAccountIdString",
    #     body: { # required
    #       command: "InvokeAgentRuntimeCommandRequestBodyCommandString", # required
    #       timeout: 1,
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.runtime_session_id #=> String
    #   resp.trace_id #=> String
    #   resp.trace_parent #=> String
    #   resp.trace_state #=> String
    #   resp.baggage #=> String
    #   resp.content_type #=> String
    #   resp.status_code #=> Integer
    #   # All events are available at resp.stream:
    #   resp.stream #=> Enumerator
    #   resp.stream.event_types #=> [:chunk, :access_denied_exception, :internal_server_exception, :resource_not_found_exception, :service_quota_exceeded_exception, :throttling_exception, :validation_exception, :runtime_client_error]
    #
    #   # For :chunk event available at #on_chunk_event callback and response eventstream enumerator:
    #   event.content_delta.stdout #=> String
    #   event.content_delta.stderr #=> String
    #   event.content_stop.exit_code #=> Integer
    #   event.content_stop.status #=> String, one of "COMPLETED", "TIMED_OUT"
    #
    #   # For :access_denied_exception event available at #on_access_denied_exception_event callback and response eventstream enumerator:
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
    #   # For :runtime_client_error event available at #on_runtime_client_error_event callback and response eventstream enumerator:
    #   event.message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/InvokeAgentRuntimeCommand AWS API Documentation
    #
    # @overload invoke_agent_runtime_command(params = {})
    # @param [Hash] params ({})
    def invoke_agent_runtime_command(params = {}, options = {}, &block)
      params = params.dup
      event_stream_handler = case handler = params.delete(:event_stream_handler)
        when EventStreams::InvokeAgentRuntimeCommandStreamOutput then handler
        when Proc then EventStreams::InvokeAgentRuntimeCommandStreamOutput.new.tap(&handler)
        when nil then EventStreams::InvokeAgentRuntimeCommandStreamOutput.new
        else
          msg = "expected :event_stream_handler to be a block or "\
                "instance of Aws::BedrockAgentCore::EventStreams::InvokeAgentRuntimeCommandStreamOutput"\
                ", got `#{handler.inspect}` instead"
          raise ArgumentError, msg
        end

      yield(event_stream_handler) if block_given?

      req = build_request(:invoke_agent_runtime_command, params)

      req.context[:event_stream_handler] = event_stream_handler
      req.handlers.add(Aws::Binary::DecodeHandler, priority: 95)

      req.send_request(options, &block)
    end

    # Invokes an operating system-level action on a browser session in
    # Amazon Bedrock AgentCore. This operation provides direct OS-level
    # control over browser sessions, enabling mouse actions, keyboard input,
    # and screenshots that the WebSocket-based Chrome DevTools Protocol
    # (CDP) cannot handle — such as interacting with print dialogs, context
    # menus, and JavaScript alerts.
    #
    # You send a request with exactly one action in the `BrowserAction`
    # union, and receive a corresponding result in the `BrowserActionResult`
    # union.
    #
    # The following operations are related to `InvokeBrowser`:
    #
    # * [StartBrowserSession][1]
    #
    # * [GetBrowserSession][2]
    #
    # * [StopBrowserSession][3]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock-agentcore/latest/APIReference/API_StartBrowserSession.html
    # [2]: https://docs.aws.amazon.com/bedrock-agentcore/latest/APIReference/API_GetBrowserSession.html
    # [3]: https://docs.aws.amazon.com/bedrock-agentcore/latest/APIReference/API_StopBrowserSession.html
    #
    # @option params [required, String] :browser_identifier
    #   The unique identifier of the browser associated with the session. This
    #   must match the identifier used when creating the session with
    #   `StartBrowserSession`.
    #
    # @option params [required, String] :session_id
    #   The unique identifier of the browser session on which to perform the
    #   action. This must be an active session created with
    #   `StartBrowserSession`.
    #
    # @option params [required, Types::BrowserAction] :action
    #   The browser action to perform. Exactly one member of the
    #   `BrowserAction` union must be set per request.
    #
    # @return [Types::InvokeBrowserResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::InvokeBrowserResponse#result #result} => Types::BrowserActionResult
    #   * {Types::InvokeBrowserResponse#session_id #session_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.invoke_browser({
    #     browser_identifier: "String", # required
    #     session_id: "BrowserSessionId", # required
    #     action: { # required
    #       mouse_click: {
    #         x: 1, # required
    #         y: 1, # required
    #         button: "LEFT", # accepts LEFT, RIGHT, MIDDLE
    #         click_count: 1,
    #       },
    #       mouse_move: {
    #         x: 1, # required
    #         y: 1, # required
    #       },
    #       mouse_drag: {
    #         end_x: 1, # required
    #         end_y: 1, # required
    #         start_x: 1, # required
    #         start_y: 1, # required
    #         button: "LEFT", # accepts LEFT, RIGHT, MIDDLE
    #       },
    #       mouse_scroll: {
    #         x: 1, # required
    #         y: 1, # required
    #         delta_x: 1,
    #         delta_y: 1,
    #       },
    #       key_type: {
    #         text: "KeyTypeArgumentsTextString", # required
    #       },
    #       key_press: {
    #         key: "String", # required
    #         presses: 1,
    #       },
    #       key_shortcut: {
    #         keys: ["String"], # required
    #       },
    #       screenshot: {
    #         format: "PNG", # accepts PNG
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.result.mouse_click.status #=> String, one of "SUCCESS", "FAILED"
    #   resp.result.mouse_click.error #=> String
    #   resp.result.mouse_move.status #=> String, one of "SUCCESS", "FAILED"
    #   resp.result.mouse_move.error #=> String
    #   resp.result.mouse_drag.status #=> String, one of "SUCCESS", "FAILED"
    #   resp.result.mouse_drag.error #=> String
    #   resp.result.mouse_scroll.status #=> String, one of "SUCCESS", "FAILED"
    #   resp.result.mouse_scroll.error #=> String
    #   resp.result.key_type.status #=> String, one of "SUCCESS", "FAILED"
    #   resp.result.key_type.error #=> String
    #   resp.result.key_press.status #=> String, one of "SUCCESS", "FAILED"
    #   resp.result.key_press.error #=> String
    #   resp.result.key_shortcut.status #=> String, one of "SUCCESS", "FAILED"
    #   resp.result.key_shortcut.error #=> String
    #   resp.result.screenshot.status #=> String, one of "SUCCESS", "FAILED"
    #   resp.result.screenshot.error #=> String
    #   resp.result.screenshot.data #=> String
    #   resp.session_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/InvokeBrowser AWS API Documentation
    #
    # @overload invoke_browser(params = {})
    # @param [Hash] params ({})
    def invoke_browser(params = {}, options = {})
      req = build_request(:invoke_browser, params)
      req.send_request(options)
    end

    # Executes code within an active code interpreter session in Amazon
    # Bedrock AgentCore. This operation processes the provided code, runs it
    # in a secure environment, and returns the execution results including
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
    # [1]: https://docs.aws.amazon.com/bedrock-agentcore/latest/APIReference/API_StartCodeInterpreterSession.html
    # [2]: https://docs.aws.amazon.com/bedrock-agentcore/latest/APIReference/API_GetCodeInterpreterSession.html
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
    # @option params [String] :trace_id
    #   The trace identifier for request tracking.
    #
    # @option params [String] :trace_parent
    #   The parent trace information for distributed tracing.
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
    #     trace_id: "InvokeCodeInterpreterRequestTraceIdString",
    #     trace_parent: "InvokeCodeInterpreterRequestTraceParentString",
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
    #       runtime: "nodejs", # accepts nodejs, deno, python
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

    # Operation to invoke a Harness.
    #
    # @option params [required, String] :harness_arn
    #   The ARN of the harness to invoke.
    #
    # @option params [required, String] :runtime_session_id
    #   The session ID for the invocation. Use the same session ID across
    #   requests to continue a conversation.
    #
    # @option params [required, Array<Types::HarnessMessage>] :messages
    #   The messages to send to the agent.
    #
    # @option params [Types::HarnessModelConfiguration] :model
    #   The model configuration to use for this invocation. If specified,
    #   overrides the harness default.
    #
    # @option params [Array<Types::HarnessSystemContentBlock>] :system_prompt
    #   The system prompt to use for this invocation. If specified, overrides
    #   the harness default.
    #
    # @option params [Array<Types::HarnessTool>] :tools
    #   The tools available to the agent for this invocation. If specified,
    #   overrides the harness default.
    #
    # @option params [Array<Types::HarnessSkill>] :skills
    #   The skills available to the agent for this invocation. If specified,
    #   overrides the harness default.
    #
    # @option params [Array<String>] :allowed_tools
    #   The tools that the agent is allowed to use for this invocation. If
    #   specified, overrides the harness default.
    #
    # @option params [Integer] :max_iterations
    #   The maximum number of iterations the agent loop can execute. If
    #   specified, overrides the harness default.
    #
    # @option params [Integer] :max_tokens
    #   The maximum number of tokens the agent can generate per iteration. If
    #   specified, overrides the harness default.
    #
    # @option params [Integer] :timeout_seconds
    #   The maximum duration in seconds for the agent loop execution. If
    #   specified, overrides the harness default.
    #
    # @option params [String] :actor_id
    #   The actor ID for memory operations. Overrides the actor ID configured
    #   on the harness.
    #
    # @return [Types::InvokeHarnessResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::InvokeHarnessResponse#stream #stream} => Types::InvokeHarnessStreamOutput
    #
    # @example EventStream Operation Example
    #
    #   # You can process the event once it arrives immediately, or wait until the
    #   # full response is complete and iterate through the eventstream enumerator.
    #
    #   # To interact with event immediately, you need to register invoke_harness
    #   # with callbacks. Callbacks can be registered for specific events or for all
    #   # events, including error events.
    #
    #   # Callbacks can be passed into the `:event_stream_handler` option or within a
    #   # block statement attached to the #invoke_harness call directly. Hybrid
    #   # pattern of both is also supported.
    #
    #   # `:event_stream_handler` option takes in either a Proc object or
    #   # Aws::BedrockAgentCore::EventStreams::InvokeHarnessStreamOutput object.
    #
    #   # Usage pattern a): Callbacks with a block attached to #invoke_harness
    #   # Example for registering callbacks for all event types and an error event
    #   client.invoke_harness(
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
    #   # Usage pattern b): Pass in `:event_stream_handler` for #invoke_harness
    #   #  1) Create a Aws::BedrockAgentCore::EventStreams::InvokeHarnessStreamOutput object
    #   #  Example for registering callbacks with specific events
    #
    #   handler = Aws::BedrockAgentCore::EventStreams::InvokeHarnessStreamOutput.new
    #   handler.on_message_start_event do |event|
    #     event # => Aws::BedrockAgentCore::Types::messageStart
    #   end
    #   handler.on_content_block_start_event do |event|
    #     event # => Aws::BedrockAgentCore::Types::contentBlockStart
    #   end
    #   handler.on_content_block_delta_event do |event|
    #     event # => Aws::BedrockAgentCore::Types::contentBlockDelta
    #   end
    #   handler.on_content_block_stop_event do |event|
    #     event # => Aws::BedrockAgentCore::Types::contentBlockStop
    #   end
    #   handler.on_message_stop_event do |event|
    #     event # => Aws::BedrockAgentCore::Types::messageStop
    #   end
    #   handler.on_metadata_event do |event|
    #     event # => Aws::BedrockAgentCore::Types::metadata
    #   end
    #   handler.on_internal_server_exception_event do |event|
    #     event # => Aws::BedrockAgentCore::Types::internalServerException
    #   end
    #   handler.on_validation_exception_event do |event|
    #     event # => Aws::BedrockAgentCore::Types::validationException
    #   end
    #   handler.on_runtime_client_error_event do |event|
    #     event # => Aws::BedrockAgentCore::Types::runtimeClientError
    #   end
    #
    #   client.invoke_harness(
    #     # params inputs
    #     event_stream_handler: handler
    #   )
    #
    #   #  2) Use a Ruby Proc object
    #   #  Example for registering callbacks with specific events
    #   handler = Proc.new do |stream|
    #     stream.on_message_start_event do |event|
    #       event # => Aws::BedrockAgentCore::Types::messageStart
    #     end
    #     stream.on_content_block_start_event do |event|
    #       event # => Aws::BedrockAgentCore::Types::contentBlockStart
    #     end
    #     stream.on_content_block_delta_event do |event|
    #       event # => Aws::BedrockAgentCore::Types::contentBlockDelta
    #     end
    #     stream.on_content_block_stop_event do |event|
    #       event # => Aws::BedrockAgentCore::Types::contentBlockStop
    #     end
    #     stream.on_message_stop_event do |event|
    #       event # => Aws::BedrockAgentCore::Types::messageStop
    #     end
    #     stream.on_metadata_event do |event|
    #       event # => Aws::BedrockAgentCore::Types::metadata
    #     end
    #     stream.on_internal_server_exception_event do |event|
    #       event # => Aws::BedrockAgentCore::Types::internalServerException
    #     end
    #     stream.on_validation_exception_event do |event|
    #       event # => Aws::BedrockAgentCore::Types::validationException
    #     end
    #     stream.on_runtime_client_error_event do |event|
    #       event # => Aws::BedrockAgentCore::Types::runtimeClientError
    #     end
    #   end
    #
    #   client.invoke_harness(
    #     # params inputs
    #     event_stream_handler: handler
    #   )
    #
    #   #  Usage pattern c): Hybrid pattern of a) and b)
    #   handler = Aws::BedrockAgentCore::EventStreams::InvokeHarnessStreamOutput.new
    #   handler.on_message_start_event do |event|
    #     event # => Aws::BedrockAgentCore::Types::messageStart
    #   end
    #   handler.on_content_block_start_event do |event|
    #     event # => Aws::BedrockAgentCore::Types::contentBlockStart
    #   end
    #   handler.on_content_block_delta_event do |event|
    #     event # => Aws::BedrockAgentCore::Types::contentBlockDelta
    #   end
    #   handler.on_content_block_stop_event do |event|
    #     event # => Aws::BedrockAgentCore::Types::contentBlockStop
    #   end
    #   handler.on_message_stop_event do |event|
    #     event # => Aws::BedrockAgentCore::Types::messageStop
    #   end
    #   handler.on_metadata_event do |event|
    #     event # => Aws::BedrockAgentCore::Types::metadata
    #   end
    #   handler.on_internal_server_exception_event do |event|
    #     event # => Aws::BedrockAgentCore::Types::internalServerException
    #   end
    #   handler.on_validation_exception_event do |event|
    #     event # => Aws::BedrockAgentCore::Types::validationException
    #   end
    #   handler.on_runtime_client_error_event do |event|
    #     event # => Aws::BedrockAgentCore::Types::runtimeClientError
    #   end
    #
    #   client.invoke_harness(
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
    #   resp = client.invoke_harness({
    #     harness_arn: "HarnessArn", # required
    #     runtime_session_id: "SessionId", # required
    #     messages: [ # required
    #       {
    #         role: "user", # required, accepts user, assistant
    #         content: [ # required
    #           {
    #             text: "SensitiveText",
    #             tool_use: {
    #               name: "HarnessToolName", # required
    #               tool_use_id: "HarnessToolUseId", # required
    #               input: { # required
    #               },
    #               type: "tool_use", # accepts tool_use, server_tool_use, mcp_tool_use
    #               server_name: "String",
    #             },
    #             tool_result: {
    #               tool_use_id: "HarnessToolUseId", # required
    #               content: [ # required
    #                 {
    #                   text: "SensitiveText",
    #                   json: {
    #                   },
    #                 },
    #               ],
    #               status: "success", # accepts success, error
    #               type: "tool_use", # accepts tool_use, server_tool_use, mcp_tool_use
    #             },
    #             reasoning_content: {
    #               reasoning_text: {
    #                 text: "String", # required
    #                 signature: "String",
    #               },
    #               redacted_content: "data",
    #             },
    #           },
    #         ],
    #       },
    #     ],
    #     model: {
    #       bedrock_model_config: {
    #         model_id: "ModelId", # required
    #         max_tokens: 1,
    #         temperature: 1.0,
    #         top_p: 1.0,
    #       },
    #       open_ai_model_config: {
    #         model_id: "ModelId", # required
    #         api_key_arn: "ApiKeyArn", # required
    #         max_tokens: 1,
    #         temperature: 1.0,
    #         top_p: 1.0,
    #       },
    #       gemini_model_config: {
    #         model_id: "ModelId", # required
    #         api_key_arn: "ApiKeyArn", # required
    #         max_tokens: 1,
    #         temperature: 1.0,
    #         top_p: 1.0,
    #         top_k: 1,
    #       },
    #     },
    #     system_prompt: [
    #       {
    #         text: "SensitiveText",
    #       },
    #     ],
    #     tools: [
    #       {
    #         type: "remote_mcp", # required, accepts remote_mcp, agentcore_browser, agentcore_gateway, inline_function, agentcore_code_interpreter
    #         name: "HarnessToolName",
    #         config: {
    #           remote_mcp: {
    #             url: "HarnessRemoteMcpUrl", # required
    #             headers: {
    #               "HttpHeaderKey" => "HttpHeaderValue",
    #             },
    #           },
    #           agent_core_browser: {
    #             browser_arn: "BrowserArn",
    #           },
    #           agent_core_gateway: {
    #             gateway_arn: "GatewayArn", # required
    #             outbound_auth: {
    #               aws_iam: {
    #               },
    #               none: {
    #               },
    #               oauth: {
    #                 provider_arn: "OAuthCredentialProviderArn", # required
    #                 scopes: ["OAuthScope"], # required
    #                 custom_parameters: {
    #                   "OAuthCustomParametersKey" => "OAuthCustomParametersValue",
    #                 },
    #                 grant_type: "CLIENT_CREDENTIALS", # accepts CLIENT_CREDENTIALS, AUTHORIZATION_CODE, TOKEN_EXCHANGE
    #                 default_return_url: "OAuthDefaultReturnUrl",
    #               },
    #             },
    #           },
    #           inline_function: {
    #             description: "HarnessInlineFunctionDescription", # required
    #             input_schema: { # required
    #             },
    #           },
    #           agent_core_code_interpreter: {
    #             code_interpreter_arn: "CodeInterpreterArn",
    #           },
    #         },
    #       },
    #     ],
    #     skills: [
    #       {
    #         path: "HarnessSkillPath",
    #       },
    #     ],
    #     allowed_tools: ["HarnessAllowedTool"],
    #     max_iterations: 1,
    #     max_tokens: 1,
    #     timeout_seconds: 1,
    #     actor_id: "String",
    #   })
    #
    # @example Response structure
    #
    #   # All events are available at resp.stream:
    #   resp.stream #=> Enumerator
    #   resp.stream.event_types #=> [:message_start, :content_block_start, :content_block_delta, :content_block_stop, :message_stop, :metadata, :internal_server_exception, :validation_exception, :runtime_client_error]
    #
    #   # For :message_start event available at #on_message_start_event callback and response eventstream enumerator:
    #   event.role #=> String, one of "user", "assistant"
    #
    #   # For :content_block_start event available at #on_content_block_start_event callback and response eventstream enumerator:
    #   event.content_block_index #=> Integer
    #   event.start.tool_use.tool_use_id #=> String
    #   event.start.tool_use.name #=> String
    #   event.start.tool_use.type #=> String, one of "tool_use", "server_tool_use", "mcp_tool_use"
    #   event.start.tool_use.server_name #=> String
    #   event.start.tool_result.tool_use_id #=> String
    #   event.start.tool_result.status #=> String, one of "success", "error"
    #
    #   # For :content_block_delta event available at #on_content_block_delta_event callback and response eventstream enumerator:
    #   event.content_block_index #=> Integer
    #   event.delta.text #=> String
    #   event.delta.tool_use.input #=> String
    #   event.delta.tool_result #=> Array
    #   event.delta.tool_result[0].text #=> String
    #   event.delta.reasoning_content.text #=> String
    #   event.delta.reasoning_content.redacted_content #=> String
    #   event.delta.reasoning_content.signature #=> String
    #
    #   # For :content_block_stop event available at #on_content_block_stop_event callback and response eventstream enumerator:
    #   event.content_block_index #=> Integer
    #
    #   # For :message_stop event available at #on_message_stop_event callback and response eventstream enumerator:
    #   event.stop_reason #=> String, one of "end_turn", "tool_use", "tool_result", "max_tokens", "stop_sequence", "content_filtered", "malformed_model_output", "malformed_tool_use", "interrupted", "partial_turn", "model_context_window_exceeded", "max_iterations_exceeded", "max_output_tokens_exceeded", "timeout_exceeded"
    #
    #   # For :metadata event available at #on_metadata_event callback and response eventstream enumerator:
    #   event.usage.input_tokens #=> Integer
    #   event.usage.output_tokens #=> Integer
    #   event.usage.total_tokens #=> Integer
    #   event.usage.cache_read_input_tokens #=> Integer
    #   event.usage.cache_write_input_tokens #=> Integer
    #   event.metrics.latency_ms #=> Integer
    #
    #   # For :internal_server_exception event available at #on_internal_server_exception_event callback and response eventstream enumerator:
    #   event.message #=> String
    #
    #   # For :validation_exception event available at #on_validation_exception_event callback and response eventstream enumerator:
    #   event.message #=> String
    #   event.reason #=> String, one of "CannotParse", "FieldValidationFailed", "IdempotentParameterMismatchException", "EventInOtherSession", "ResourceConflict"
    #   event.field_list #=> Array
    #   event.field_list[0].name #=> String
    #   event.field_list[0].message #=> String
    #
    #   # For :runtime_client_error event available at #on_runtime_client_error_event callback and response eventstream enumerator:
    #   event.message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/InvokeHarness AWS API Documentation
    #
    # @overload invoke_harness(params = {})
    # @param [Hash] params ({})
    def invoke_harness(params = {}, options = {}, &block)
      params = params.dup
      event_stream_handler = case handler = params.delete(:event_stream_handler)
        when EventStreams::InvokeHarnessStreamOutput then handler
        when Proc then EventStreams::InvokeHarnessStreamOutput.new.tap(&handler)
        when nil then EventStreams::InvokeHarnessStreamOutput.new
        else
          msg = "expected :event_stream_handler to be a block or "\
                "instance of Aws::BedrockAgentCore::EventStreams::InvokeHarnessStreamOutput"\
                ", got `#{handler.inspect}` instead"
          raise ArgumentError, msg
        end

      yield(event_stream_handler) if block_given?

      req = build_request(:invoke_harness, params)

      req.context[:event_stream_handler] = event_stream_handler
      req.handlers.add(Aws::Binary::DecodeHandler, priority: 95)

      req.send_request(options, &block)
    end

    # Lists all A/B tests in the account.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in the response. If the total
    #   number of results is greater than this value, use the token returned
    #   in the response in the `nextToken` field when making another request
    #   to return the next batch of results.
    #
    # @option params [String] :next_token
    #   If the total number of results is greater than the `maxResults` value
    #   provided in the request, enter the token returned in the `nextToken`
    #   field in the response in this field to return the next batch of
    #   results.
    #
    # @return [Types::ListABTestsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListABTestsResponse#ab_tests #ab_tests} => Array&lt;Types::ABTestSummary&gt;
    #   * {Types::ListABTestsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_ab_tests({
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.ab_tests #=> Array
    #   resp.ab_tests[0].ab_test_id #=> String
    #   resp.ab_tests[0].ab_test_arn #=> String
    #   resp.ab_tests[0].name #=> String
    #   resp.ab_tests[0].status #=> String, one of "CREATING", "ACTIVE", "CREATE_FAILED", "UPDATING", "UPDATE_FAILED", "DELETING", "DELETE_FAILED", "FAILED"
    #   resp.ab_tests[0].execution_status #=> String, one of "PAUSED", "RUNNING", "STOPPED", "NOT_STARTED"
    #   resp.ab_tests[0].description #=> String
    #   resp.ab_tests[0].gateway_arn #=> String
    #   resp.ab_tests[0].created_at #=> Time
    #   resp.ab_tests[0].updated_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/ListABTests AWS API Documentation
    #
    # @overload list_ab_tests(params = {})
    # @param [Hash] params ({})
    def list_ab_tests(params = {}, options = {})
      req = build_request(:list_ab_tests, params)
      req.send_request(options)
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
    #   The maximum number of results to return in a single call. The default
    #   value is 20.
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

    # Lists all batch evaluations in the account, providing summary
    # information about each evaluation's status and configuration.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in the response. If the total
    #   number of results is greater than this value, use the token returned
    #   in the response in the `nextToken` field when making another request
    #   to return the next batch of results.
    #
    # @option params [String] :next_token
    #   If the total number of results is greater than the `maxResults` value
    #   provided in the request, enter the token returned in the `nextToken`
    #   field in the response in this field to return the next batch of
    #   results.
    #
    # @return [Types::ListBatchEvaluationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListBatchEvaluationsResponse#batch_evaluations #batch_evaluations} => Array&lt;Types::BatchEvaluationSummary&gt;
    #   * {Types::ListBatchEvaluationsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_batch_evaluations({
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.batch_evaluations #=> Array
    #   resp.batch_evaluations[0].batch_evaluation_id #=> String
    #   resp.batch_evaluations[0].batch_evaluation_arn #=> String
    #   resp.batch_evaluations[0].batch_evaluation_name #=> String
    #   resp.batch_evaluations[0].status #=> String, one of "PENDING", "IN_PROGRESS", "COMPLETED", "COMPLETED_WITH_ERRORS", "FAILED", "STOPPING", "STOPPED", "DELETING"
    #   resp.batch_evaluations[0].created_at #=> Time
    #   resp.batch_evaluations[0].description #=> String
    #   resp.batch_evaluations[0].evaluators #=> Array
    #   resp.batch_evaluations[0].evaluators[0].evaluator_id #=> String
    #   resp.batch_evaluations[0].evaluation_results.number_of_sessions_completed #=> Integer
    #   resp.batch_evaluations[0].evaluation_results.number_of_sessions_in_progress #=> Integer
    #   resp.batch_evaluations[0].evaluation_results.number_of_sessions_failed #=> Integer
    #   resp.batch_evaluations[0].evaluation_results.total_number_of_sessions #=> Integer
    #   resp.batch_evaluations[0].evaluation_results.number_of_sessions_ignored #=> Integer
    #   resp.batch_evaluations[0].evaluation_results.evaluator_summaries #=> Array
    #   resp.batch_evaluations[0].evaluation_results.evaluator_summaries[0].evaluator_id #=> String
    #   resp.batch_evaluations[0].evaluation_results.evaluator_summaries[0].statistics.average_score #=> Float
    #   resp.batch_evaluations[0].evaluation_results.evaluator_summaries[0].total_evaluated #=> Integer
    #   resp.batch_evaluations[0].evaluation_results.evaluator_summaries[0].total_failed #=> Integer
    #   resp.batch_evaluations[0].error_details #=> Array
    #   resp.batch_evaluations[0].error_details[0] #=> String
    #   resp.batch_evaluations[0].updated_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/ListBatchEvaluations AWS API Documentation
    #
    # @overload list_batch_evaluations(params = {})
    # @param [Hash] params ({})
    def list_batch_evaluations(params = {}, options = {})
      req = build_request(:list_batch_evaluations, params)
      req.send_request(options)
    end

    # Retrieves a list of browser sessions in Amazon Bedrock AgentCore that
    # match the specified criteria. This operation returns summary
    # information about each session, including identifiers, status, and
    # timestamps.
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
    # [1]: https://docs.aws.amazon.com/bedrock-agentcore/latest/APIReference/API_StartBrowserSession.html
    # [2]: https://docs.aws.amazon.com/bedrock-agentcore/latest/APIReference/API_GetBrowserSession.html
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
    #   results. If not specified, Amazon Bedrock AgentCore returns the first
    #   page of results.
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

    # Retrieves a list of code interpreter sessions in Amazon Bedrock
    # AgentCore that match the specified criteria. This operation returns
    # summary information about each session, including identifiers, status,
    # and timestamps.
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
    # [1]: https://docs.aws.amazon.com/bedrock-agentcore/latest/APIReference/API_StartCodeInterpreterSession.html
    # [2]: https://docs.aws.amazon.com/bedrock-agentcore/latest/APIReference/API_GetCodeInterpreterSession.html
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
    #   results. If not specified, Amazon Bedrock AgentCore returns the first
    #   page of results.
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
    #   The identifier of the session for which to list events.
    #
    # @option params [required, String] :actor_id
    #   The identifier of the actor for which to list events.
    #
    # @option params [Boolean] :include_payloads
    #   Specifies whether to include event payloads in the response. Set to
    #   true to include payloads, or false to exclude them.
    #
    # @option params [Types::FilterInput] :filter
    #   Filter criteria to apply when listing events.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call. The default
    #   value is 20.
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

    # Lists all long-term memory extraction jobs that are eligible to be
    # started with optional filtering.
    #
    # To use this operation, you must have the
    # `bedrock-agentcore:ListMemoryExtractionJobs` permission.
    #
    # @option params [required, String] :memory_id
    #   The unique identifier of the memory to list extraction jobs for.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call. The default
    #   value is 20.
    #
    # @option params [Types::ExtractionJobFilterInput] :filter
    #   Filter criteria to apply when listing extraction jobs.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @return [Types::ListMemoryExtractionJobsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListMemoryExtractionJobsOutput#jobs #jobs} => Array&lt;Types::ExtractionJobMetadata&gt;
    #   * {Types::ListMemoryExtractionJobsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_memory_extraction_jobs({
    #     memory_id: "MemoryId", # required
    #     max_results: 1,
    #     filter: {
    #       strategy_id: "String",
    #       session_id: "String",
    #       actor_id: "String",
    #       status: "FAILED", # accepts FAILED
    #     },
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.jobs #=> Array
    #   resp.jobs[0].job_id #=> String
    #   resp.jobs[0].messages.messages_list #=> Array
    #   resp.jobs[0].messages.messages_list[0].event_id #=> String
    #   resp.jobs[0].messages.messages_list[0].message_index #=> Integer
    #   resp.jobs[0].status #=> String, one of "FAILED"
    #   resp.jobs[0].failure_reason #=> String
    #   resp.jobs[0].strategy_id #=> String
    #   resp.jobs[0].session_id #=> String
    #   resp.jobs[0].actor_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/ListMemoryExtractionJobs AWS API Documentation
    #
    # @overload list_memory_extraction_jobs(params = {})
    # @param [Hash] params ({})
    def list_memory_extraction_jobs(params = {}, options = {})
      req = build_request(:list_memory_extraction_jobs, params)
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
    # @option params [String] :namespace
    #   The namespace prefix to filter memory records by. Returns all memory
    #   records in namespaces that start with the provided prefix.
    #
    # @option params [String] :namespace_path
    #   Use namespacePath for hierarchical retrievals. Return all memory
    #   records where namespace falls under the same parent hierarchy.
    #
    # @option params [String] :memory_strategy_id
    #   The memory strategy identifier to filter memory records by. If
    #   specified, only memory records with this strategy ID are returned.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call. The default
    #   value is 20.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Array<Types::MemoryMetadataFilterExpression>] :metadata_filters
    #   A list of metadata filter expressions to scope the returned memory
    #   records.
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
    #     namespace: "Namespace",
    #     namespace_path: "Namespace",
    #     memory_strategy_id: "MemoryStrategyId",
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #     metadata_filters: [
    #       {
    #         left: { # required
    #           metadata_key: "MetadataKey",
    #         },
    #         operator: "EQUALS_TO", # required, accepts EQUALS_TO, EXISTS, NOT_EXISTS, BEFORE, AFTER, CONTAINS, GREATER_THAN, GREATER_THAN_OR_EQUALS, LESS_THAN, LESS_THAN_OR_EQUALS
    #         right: {
    #           metadata_value: {
    #             string_value: "StringValue",
    #             string_list_value: ["StringListMemberValue"],
    #             number_value: 1.0,
    #             date_time_value: Time.now,
    #           },
    #         },
    #       },
    #     ],
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
    #   resp.memory_record_summaries[0].metadata #=> Hash
    #   resp.memory_record_summaries[0].metadata["MetadataKey"].string_value #=> String
    #   resp.memory_record_summaries[0].metadata["MetadataKey"].string_list_value #=> Array
    #   resp.memory_record_summaries[0].metadata["MetadataKey"].string_list_value[0] #=> String
    #   resp.memory_record_summaries[0].metadata["MetadataKey"].number_value #=> Float
    #   resp.memory_record_summaries[0].metadata["MetadataKey"].date_time_value #=> Time
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

    # List payment instruments for a manager
    #
    # @option params [String] :user_id
    #   The user ID associated with the payment instruments.
    #
    # @option params [String] :agent_name
    #   The agent name associated with this request, used for observability.
    #
    # @option params [required, String] :payment_manager_arn
    #   The ARN of the payment manager that owns the payment instruments.
    #
    # @option params [String] :payment_connector_id
    #   The ID of the payment connector to filter by.
    #
    # @option params [String] :next_token
    #   Token for pagination to retrieve the next set of results.
    #
    # @option params [Integer] :max_results
    #   Maximum number of results to return in a single response.
    #
    # @return [Types::ListPaymentInstrumentsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPaymentInstrumentsResponse#payment_instruments #payment_instruments} => Array&lt;Types::PaymentInstrumentSummary&gt;
    #   * {Types::ListPaymentInstrumentsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_payment_instruments({
    #     user_id: "UserId",
    #     agent_name: "PaymentAgentName",
    #     payment_manager_arn: "PaymentManagerArn", # required
    #     payment_connector_id: "PaymentConnectorId",
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.payment_instruments #=> Array
    #   resp.payment_instruments[0].payment_instrument_id #=> String
    #   resp.payment_instruments[0].payment_manager_arn #=> String
    #   resp.payment_instruments[0].payment_connector_id #=> String
    #   resp.payment_instruments[0].user_id #=> String
    #   resp.payment_instruments[0].payment_instrument_type #=> String, one of "EMBEDDED_CRYPTO_WALLET"
    #   resp.payment_instruments[0].status #=> String, one of "INITIATED", "ACTIVE", "FAILED", "DELETED"
    #   resp.payment_instruments[0].created_at #=> Time
    #   resp.payment_instruments[0].updated_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/ListPaymentInstruments AWS API Documentation
    #
    # @overload list_payment_instruments(params = {})
    # @param [Hash] params ({})
    def list_payment_instruments(params = {}, options = {})
      req = build_request(:list_payment_instruments, params)
      req.send_request(options)
    end

    # List payment manager sessions
    #
    # @option params [String] :user_id
    #   The user ID associated with the payment sessions.
    #
    # @option params [String] :agent_name
    #   The agent name associated with this request, used for observability.
    #
    # @option params [required, String] :payment_manager_arn
    #   The ARN of the payment manager that owns the sessions.
    #
    # @option params [String] :next_token
    #   Token for pagination to retrieve the next set of results.
    #
    # @option params [Integer] :max_results
    #   Maximum number of results to return in a single response.
    #
    # @return [Types::ListPaymentSessionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPaymentSessionsResponse#payment_sessions #payment_sessions} => Array&lt;Types::PaymentSessionSummary&gt;
    #   * {Types::ListPaymentSessionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_payment_sessions({
    #     user_id: "UserId",
    #     agent_name: "PaymentAgentName",
    #     payment_manager_arn: "PaymentManagerArn", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.payment_sessions #=> Array
    #   resp.payment_sessions[0].payment_session_id #=> String
    #   resp.payment_sessions[0].payment_manager_arn #=> String
    #   resp.payment_sessions[0].user_id #=> String
    #   resp.payment_sessions[0].expiry_time_in_minutes #=> Integer
    #   resp.payment_sessions[0].created_at #=> Time
    #   resp.payment_sessions[0].updated_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/ListPaymentSessions AWS API Documentation
    #
    # @overload list_payment_sessions(params = {})
    # @param [Hash] params ({})
    def list_payment_sessions(params = {}, options = {})
      req = build_request(:list_payment_sessions, params)
      req.send_request(options)
    end

    # Lists all recommendations in the account, with optional filtering by
    # status.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in the response. If the total
    #   number of results is greater than this value, use the token returned
    #   in the response in the `nextToken` field when making another request
    #   to return the next batch of results.
    #
    # @option params [String] :next_token
    #   If the total number of results is greater than the `maxResults` value
    #   provided in the request, enter the token returned in the `nextToken`
    #   field in the response in this field to return the next batch of
    #   results.
    #
    # @option params [String] :status_filter
    #   Optional filter to return only recommendations with the specified
    #   status.
    #
    # @return [Types::ListRecommendationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListRecommendationsResponse#recommendation_summaries #recommendation_summaries} => Array&lt;Types::RecommendationSummary&gt;
    #   * {Types::ListRecommendationsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_recommendations({
    #     max_results: 1,
    #     next_token: "NextToken",
    #     status_filter: "PENDING", # accepts PENDING, IN_PROGRESS, COMPLETED, FAILED, DELETING
    #   })
    #
    # @example Response structure
    #
    #   resp.recommendation_summaries #=> Array
    #   resp.recommendation_summaries[0].recommendation_id #=> String
    #   resp.recommendation_summaries[0].recommendation_arn #=> String
    #   resp.recommendation_summaries[0].name #=> String
    #   resp.recommendation_summaries[0].description #=> String
    #   resp.recommendation_summaries[0].type #=> String, one of "SYSTEM_PROMPT_RECOMMENDATION", "TOOL_DESCRIPTION_RECOMMENDATION"
    #   resp.recommendation_summaries[0].status #=> String, one of "PENDING", "IN_PROGRESS", "COMPLETED", "FAILED", "DELETING"
    #   resp.recommendation_summaries[0].created_at #=> Time
    #   resp.recommendation_summaries[0].updated_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/ListRecommendations AWS API Documentation
    #
    # @overload list_recommendations(params = {})
    # @param [Hash] params ({})
    def list_recommendations(params = {}, options = {})
      req = build_request(:list_recommendations, params)
      req.send_request(options)
    end

    # Lists sessions in an AgentCore Memory resource based on specified
    # criteria. We recommend using pagination to ensure that the operation
    # returns quickly and successfully.
    #
    # Empty sessions are automatically deleted after one day.
    #
    # To use this operation, you must have the
    # `bedrock-agentcore:ListSessions` permission.
    #
    # @option params [required, String] :memory_id
    #   The identifier of the AgentCore Memory resource for which to list
    #   sessions.
    #
    # @option params [required, String] :actor_id
    #   The identifier of the actor for which to list sessions.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call. The default
    #   value is 20.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Types::SessionFilter] :filter
    #   Filter criteria to apply when listing sessions.
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
    #     filter: {
    #       event_filter: "HAS_EVENTS", # accepts HAS_EVENTS
    #     },
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

    # Process a payment transaction
    #
    # @option params [String] :user_id
    #   The user ID associated with this payment.
    #
    # @option params [String] :agent_name
    #   The agent name associated with this request, used for observability.
    #
    # @option params [required, String] :payment_manager_arn
    #   The ARN of the payment manager handling this payment.
    #
    # @option params [required, String] :payment_session_id
    #   The ID of the payment session for this transaction.
    #
    # @option params [required, String] :payment_instrument_id
    #   The ID of the payment instrument to use for this transaction.
    #
    # @option params [required, String] :payment_type
    #   The type of payment being processed.
    #
    # @option params [required, Types::PaymentInput] :payment_input
    #   The payment input details specific to the payment type.
    #
    # @option params [String] :client_token
    #   Idempotency token to ensure request uniqueness.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::ProcessPaymentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ProcessPaymentResponse#process_payment_id #process_payment_id} => String
    #   * {Types::ProcessPaymentResponse#payment_manager_arn #payment_manager_arn} => String
    #   * {Types::ProcessPaymentResponse#payment_session_id #payment_session_id} => String
    #   * {Types::ProcessPaymentResponse#payment_instrument_id #payment_instrument_id} => String
    #   * {Types::ProcessPaymentResponse#payment_type #payment_type} => String
    #   * {Types::ProcessPaymentResponse#status #status} => String
    #   * {Types::ProcessPaymentResponse#payment_output #payment_output} => Types::PaymentOutput
    #   * {Types::ProcessPaymentResponse#created_at #created_at} => Time
    #   * {Types::ProcessPaymentResponse#updated_at #updated_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.process_payment({
    #     user_id: "UserId",
    #     agent_name: "PaymentAgentName",
    #     payment_manager_arn: "PaymentManagerArn", # required
    #     payment_session_id: "PaymentSessionId", # required
    #     payment_instrument_id: "PaymentInstrumentId", # required
    #     payment_type: "CRYPTO_X402", # required, accepts CRYPTO_X402
    #     payment_input: { # required
    #       crypto_x402: {
    #         version: "String", # required
    #         payload: { # required
    #         },
    #       },
    #     },
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.process_payment_id #=> String
    #   resp.payment_manager_arn #=> String
    #   resp.payment_session_id #=> String
    #   resp.payment_instrument_id #=> String
    #   resp.payment_type #=> String, one of "CRYPTO_X402"
    #   resp.status #=> String, one of "PROOF_GENERATED"
    #   resp.payment_output.crypto_x402.version #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/ProcessPayment AWS API Documentation
    #
    # @overload process_payment(params = {})
    # @param [Hash] params ({})
    def process_payment(params = {}, options = {})
      req = build_request(:process_payment, params)
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
    # @option params [String] :namespace
    #   The namespace prefix to filter memory records by. Searches for memory
    #   records in namespaces that start with the provided prefix.
    #
    # @option params [String] :namespace_path
    #   Use namespacePath for hierarchical retrievals. Return all memory
    #   records where namespace falls under the same parent hierarchy.
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
    #   The maximum number of results to return in a single call. The default
    #   value is 20.
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
    #     namespace: "Namespace",
    #     namespace_path: "Namespace",
    #     search_criteria: { # required
    #       search_query: "SearchCriteriaSearchQueryString", # required
    #       memory_strategy_id: "MemoryStrategyId",
    #       top_k: 1,
    #       metadata_filters: [
    #         {
    #           left: { # required
    #             metadata_key: "MetadataKey",
    #           },
    #           operator: "EQUALS_TO", # required, accepts EQUALS_TO, EXISTS, NOT_EXISTS, BEFORE, AFTER, CONTAINS, GREATER_THAN, GREATER_THAN_OR_EQUALS, LESS_THAN, LESS_THAN_OR_EQUALS
    #           right: {
    #             metadata_value: {
    #               string_value: "StringValue",
    #               string_list_value: ["StringListMemberValue"],
    #               number_value: 1.0,
    #               date_time_value: Time.now,
    #             },
    #           },
    #         },
    #       ],
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
    #   resp.memory_record_summaries[0].metadata #=> Hash
    #   resp.memory_record_summaries[0].metadata["MetadataKey"].string_value #=> String
    #   resp.memory_record_summaries[0].metadata["MetadataKey"].string_list_value #=> Array
    #   resp.memory_record_summaries[0].metadata["MetadataKey"].string_list_value[0] #=> String
    #   resp.memory_record_summaries[0].metadata["MetadataKey"].number_value #=> Float
    #   resp.memory_record_summaries[0].metadata["MetadataKey"].date_time_value #=> Time
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

    # Saves the current state of a browser session as a reusable profile in
    # Amazon Bedrock AgentCore. A browser profile captures persistent
    # browser data such as cookies and local storage from an active session,
    # enabling you to reuse this data in future browser sessions.
    #
    # To save a browser session profile, you must specify the profile
    # identifier, browser identifier, and session ID. The session must be
    # active when saving the profile. Once saved, the profile can be used
    # with the `StartBrowserSession` operation to initialize new sessions
    # with the stored browser state.
    #
    # Browser profiles are useful for scenarios that require persistent
    # authentication, maintaining user preferences across sessions, or
    # continuing tasks that depend on previously stored browser data.
    #
    # The following operations are related to `SaveBrowserSessionProfile`:
    #
    # * [StartBrowserSession][1]
    #
    # * [GetBrowserSession][2]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock-agentcore/latest/APIReference/API_StartBrowserSession.html
    # [2]: https://docs.aws.amazon.com/bedrock-agentcore/latest/APIReference/API_GetBrowserSession.html
    #
    # @option params [String] :trace_id
    #   The trace identifier for request tracking.
    #
    # @option params [String] :trace_parent
    #   The parent trace information for distributed tracing.
    #
    # @option params [required, String] :profile_identifier
    #   The unique identifier for the browser profile. This identifier is used
    #   to reference the profile when starting new browser sessions. The
    #   identifier must follow the pattern of an alphanumeric name (up to 48
    #   characters) followed by a hyphen and a 10-character alphanumeric
    #   suffix.
    #
    # @option params [required, String] :browser_identifier
    #   The unique identifier of the browser associated with the session from
    #   which to save the profile.
    #
    # @option params [required, String] :session_id
    #   The unique identifier of the browser session from which to save the
    #   profile. The session must be active when saving the profile.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier to ensure that the API request
    #   completes no more than one time. If this token matches a previous
    #   request, Amazon Bedrock AgentCore ignores the request, but does not
    #   return an error.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::SaveBrowserSessionProfileResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SaveBrowserSessionProfileResponse#profile_identifier #profile_identifier} => String
    #   * {Types::SaveBrowserSessionProfileResponse#browser_identifier #browser_identifier} => String
    #   * {Types::SaveBrowserSessionProfileResponse#session_id #session_id} => String
    #   * {Types::SaveBrowserSessionProfileResponse#last_updated_at #last_updated_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.save_browser_session_profile({
    #     trace_id: "SaveBrowserSessionProfileRequestTraceIdString",
    #     trace_parent: "SaveBrowserSessionProfileRequestTraceParentString",
    #     profile_identifier: "BrowserProfileId", # required
    #     browser_identifier: "String", # required
    #     session_id: "BrowserSessionId", # required
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.profile_identifier #=> String
    #   resp.browser_identifier #=> String
    #   resp.session_id #=> String
    #   resp.last_updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/SaveBrowserSessionProfile AWS API Documentation
    #
    # @overload save_browser_session_profile(params = {})
    # @param [Hash] params ({})
    def save_browser_session_profile(params = {}, options = {})
      req = build_request(:save_browser_session_profile, params)
      req.send_request(options)
    end

    # Searches for registry records using semantic, lexical, or hybrid
    # queries. Returns metadata for matching records ordered by relevance
    # within the specified registry.
    #
    # @option params [required, String] :search_query
    #   The search query to find matching registry records.
    #
    # @option params [required, Array<String>] :registry_ids
    #   The list of registry identifiers to search within. Currently, you can
    #   specify exactly one registry identifier. You can provide either the
    #   full Amazon Web Services Resource Name (ARN) or the 12-character
    #   alphanumeric registry ID.
    #
    # @option params [Integer] :max_results
    #   The maximum number of records to return in a single call. Valid values
    #   are 1 through 20. The default value is 10.
    #
    # @option params [Hash,Array,String,Numeric,Boolean] :filters
    #   A metadata filter expression to narrow search results. Uses structured
    #   JSON operators including field-level operators (`$eq`, `$ne`, `$in`)
    #   and logical operators (`$and`, `$or`) on filterable fields (`name`,
    #   `descriptorType`, `version`). For example, to filter by descriptor
    #   type: `{"descriptorType": {"$eq": "MCP"}}`. To combine filters:
    #   `{"$and": [{"descriptorType": {"$eq": "MCP"}}, {"name": {"$eq":
    #   "my-tool"}}]}`.
    #
    #   Document type used to carry open content
    #   (Hash,Array,String,Numeric,Boolean). A document type value is
    #   serialized using the same format as its surroundings and requires no
    #   additional encoding or escaping.
    #
    # @return [Types::SearchRegistryRecordsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchRegistryRecordsResponse#registry_records #registry_records} => Array&lt;Types::RegistryRecordSummary&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_registry_records({
    #     search_query: "SearchRegistryRecordsRequestSearchQueryString", # required
    #     registry_ids: ["RegistryIdentifier"], # required
    #     max_results: 1,
    #     filters: {
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.registry_records #=> Array
    #   resp.registry_records[0].registry_arn #=> String
    #   resp.registry_records[0].record_arn #=> String
    #   resp.registry_records[0].record_id #=> String
    #   resp.registry_records[0].name #=> String
    #   resp.registry_records[0].description #=> String
    #   resp.registry_records[0].descriptor_type #=> String, one of "MCP", "A2A", "CUSTOM", "AGENT_SKILLS"
    #   resp.registry_records[0].descriptors.mcp.server.schema_version #=> String
    #   resp.registry_records[0].descriptors.mcp.server.inline_content #=> String
    #   resp.registry_records[0].descriptors.mcp.tools.protocol_version #=> String
    #   resp.registry_records[0].descriptors.mcp.tools.inline_content #=> String
    #   resp.registry_records[0].descriptors.a2a.agent_card.schema_version #=> String
    #   resp.registry_records[0].descriptors.a2a.agent_card.inline_content #=> String
    #   resp.registry_records[0].descriptors.custom.inline_content #=> String
    #   resp.registry_records[0].descriptors.agent_skills.skill_md.inline_content #=> String
    #   resp.registry_records[0].descriptors.agent_skills.skill_definition.schema_version #=> String
    #   resp.registry_records[0].descriptors.agent_skills.skill_definition.inline_content #=> String
    #   resp.registry_records[0].version #=> String
    #   resp.registry_records[0].status #=> String, one of "DRAFT", "PENDING_APPROVAL", "APPROVED", "REJECTED", "DEPRECATED"
    #   resp.registry_records[0].created_at #=> Time
    #   resp.registry_records[0].updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/SearchRegistryRecords AWS API Documentation
    #
    # @overload search_registry_records(params = {})
    # @param [Hash] params ({})
    def search_registry_records(params = {}, options = {})
      req = build_request(:search_registry_records, params)
      req.send_request(options)
    end

    # Starts a batch evaluation job that evaluates agent performance across
    # multiple sessions. Batch evaluations pull agent traces from CloudWatch
    # Logs or an existing online evaluation configuration and run specified
    # evaluators and insights against them.
    #
    # @option params [required, String] :batch_evaluation_name
    #   The name of the batch evaluation. Must be unique within your account.
    #
    # @option params [Array<Types::Evaluator>] :evaluators
    #   The list of evaluators to apply during the batch evaluation. Can
    #   include both built-in evaluators and custom evaluators. Maximum of 10
    #   evaluators.
    #
    # @option params [required, Types::DataSourceConfig] :data_source_config
    #   The data source configuration that specifies where to pull agent
    #   session traces from for evaluation.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier to ensure that the API request
    #   completes no more than one time. If this token matches a previous
    #   request, the service ignores the request, but does not return an
    #   error.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Types::EvaluationMetadata] :evaluation_metadata
    #   Optional metadata for the evaluation, including session-specific
    #   ground truth data and test scenario identifiers.
    #
    # @option params [String] :description
    #   The description of the batch evaluation.
    #
    # @return [Types::StartBatchEvaluationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartBatchEvaluationResponse#batch_evaluation_id #batch_evaluation_id} => String
    #   * {Types::StartBatchEvaluationResponse#batch_evaluation_arn #batch_evaluation_arn} => String
    #   * {Types::StartBatchEvaluationResponse#batch_evaluation_name #batch_evaluation_name} => String
    #   * {Types::StartBatchEvaluationResponse#evaluators #evaluators} => Array&lt;Types::Evaluator&gt;
    #   * {Types::StartBatchEvaluationResponse#status #status} => String
    #   * {Types::StartBatchEvaluationResponse#created_at #created_at} => Time
    #   * {Types::StartBatchEvaluationResponse#output_config #output_config} => Types::OutputConfig
    #   * {Types::StartBatchEvaluationResponse#description #description} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_batch_evaluation({
    #     batch_evaluation_name: "BatchEvaluationName", # required
    #     evaluators: [
    #       {
    #         evaluator_id: "EvaluatorId", # required
    #       },
    #     ],
    #     data_source_config: { # required
    #       cloud_watch_logs: {
    #         service_names: ["String"], # required
    #         log_group_names: ["String"], # required
    #         filter_config: {
    #           session_ids: ["String"],
    #           time_range: {
    #             start_time: Time.now,
    #             end_time: Time.now,
    #           },
    #         },
    #       },
    #     },
    #     client_token: "ClientToken",
    #     evaluation_metadata: {
    #       session_metadata: [
    #         {
    #           session_id: "String", # required
    #           test_scenario_id: "String",
    #           ground_truth: {
    #             inline: {
    #               assertions: [
    #                 {
    #                   text: "EvaluationContentTextString",
    #                 },
    #               ],
    #               expected_trajectory: {
    #                 tool_names: ["EvaluationToolName"],
    #               },
    #               turns: [
    #                 {
    #                   input: {
    #                     prompt: "GroundTruthTurnInputPromptString",
    #                   },
    #                   expected_response: {
    #                     text: "EvaluationContentTextString",
    #                   },
    #                 },
    #               ],
    #             },
    #           },
    #           metadata: {
    #             "String" => "String",
    #           },
    #         },
    #       ],
    #     },
    #     description: "BatchEvaluationDescription",
    #   })
    #
    # @example Response structure
    #
    #   resp.batch_evaluation_id #=> String
    #   resp.batch_evaluation_arn #=> String
    #   resp.batch_evaluation_name #=> String
    #   resp.evaluators #=> Array
    #   resp.evaluators[0].evaluator_id #=> String
    #   resp.status #=> String, one of "PENDING", "IN_PROGRESS", "COMPLETED", "COMPLETED_WITH_ERRORS", "FAILED", "STOPPING", "STOPPED", "DELETING"
    #   resp.created_at #=> Time
    #   resp.output_config.cloud_watch_config.log_group_name #=> String
    #   resp.output_config.cloud_watch_config.log_stream_name #=> String
    #   resp.description #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/StartBatchEvaluation AWS API Documentation
    #
    # @overload start_batch_evaluation(params = {})
    # @param [Hash] params ({})
    def start_batch_evaluation(params = {}, options = {})
      req = build_request(:start_batch_evaluation, params)
      req.send_request(options)
    end

    # Creates and initializes a browser session in Amazon Bedrock AgentCore.
    # The session enables agents to navigate and interact with web content,
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
    # * [SaveBrowserSessionProfile][3]
    #
    # * [StopBrowserSession][4]
    #
    # * [InvokeBrowser][5]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock-agentcore/latest/APIReference/API_GetBrowserSession.html
    # [2]: https://docs.aws.amazon.com/bedrock-agentcore/latest/APIReference/API_UpdateBrowserStream.html
    # [3]: https://docs.aws.amazon.com/bedrock-agentcore/latest/APIReference/API_SaveBrowserSessionProfile.html
    # [4]: https://docs.aws.amazon.com/bedrock-agentcore/latest/APIReference/API_StopBrowserSession.html
    # [5]: https://docs.aws.amazon.com/bedrock-agentcore/latest/APIReference/API_InvokeBrowser.html
    #
    # @option params [String] :trace_id
    #   The trace identifier for request tracking.
    #
    # @option params [String] :trace_parent
    #   The parent trace information for distributed tracing.
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
    #   The duration in seconds (time-to-live) after which the session
    #   automatically terminates, regardless of ongoing activity. Defaults to
    #   3600 seconds (1 hour). Recommended minimum: 60 seconds. Maximum
    #   allowed: 28,800 seconds (8 hours).
    #
    # @option params [Types::ViewPort] :view_port
    #   The dimensions of the browser viewport for this session. This
    #   determines the visible area of the web content and affects how web
    #   pages are rendered. If not specified, Amazon Bedrock AgentCore uses a
    #   default viewport size.
    #
    # @option params [Array<Types::BrowserExtension>] :extensions
    #   A list of browser extensions to load into the browser session.
    #
    # @option params [Types::BrowserProfileConfiguration] :profile_configuration
    #   The browser profile configuration to use for this session. A browser
    #   profile contains persistent data such as cookies and local storage
    #   that can be reused across multiple browser sessions. If specified, the
    #   session initializes with the profile's stored data, enabling
    #   continuity for tasks that require authentication or personalized
    #   settings.
    #
    # @option params [Types::ProxyConfiguration] :proxy_configuration
    #   Optional proxy configuration for routing browser traffic through
    #   customer-specified proxy servers. When provided, enables HTTP Basic
    #   authentication via Amazon Web Services Secrets Manager and
    #   domain-based routing rules. Requires `secretsmanager:GetSecretValue`
    #   IAM permission for the specified secret ARNs.
    #
    # @option params [Array<Types::BrowserEnterprisePolicy>] :enterprise_policies
    #   A list of files containing enterprise policies for the browser.
    #
    # @option params [Array<Types::Certificate>] :certificates
    #   A list of certificates to install in the browser session.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier to ensure that the API request
    #   completes no more than one time. If this token matches a previous
    #   request, Amazon Bedrock AgentCore ignores the request, but does not
    #   return an error. This parameter helps prevent the creation of
    #   duplicate sessions if there are temporary network issues.
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
    #     trace_id: "StartBrowserSessionRequestTraceIdString",
    #     trace_parent: "StartBrowserSessionRequestTraceParentString",
    #     browser_identifier: "String", # required
    #     name: "Name",
    #     session_timeout_seconds: 1,
    #     view_port: {
    #       width: 1, # required
    #       height: 1, # required
    #     },
    #     extensions: [
    #       {
    #         location: { # required
    #           s3: {
    #             bucket: "S3LocationBucketString", # required
    #             prefix: "S3LocationPrefixString", # required
    #             version_id: "S3LocationVersionIdString",
    #           },
    #         },
    #       },
    #     ],
    #     profile_configuration: {
    #       profile_identifier: "BrowserProfileId", # required
    #     },
    #     proxy_configuration: {
    #       proxies: [ # required
    #         {
    #           external_proxy: {
    #             server: "HostName", # required
    #             port: 1, # required
    #             domain_patterns: ["DomainPattern"],
    #             credentials: {
    #               basic_auth: {
    #                 secret_arn: "SecretArn", # required
    #               },
    #             },
    #           },
    #         },
    #       ],
    #       bypass: {
    #         domain_patterns: ["DomainPattern"],
    #       },
    #     },
    #     enterprise_policies: [
    #       {
    #         location: { # required
    #           s3: {
    #             bucket: "S3LocationBucketString", # required
    #             prefix: "S3LocationPrefixString", # required
    #             version_id: "S3LocationVersionIdString",
    #           },
    #         },
    #         type: "MANAGED", # accepts MANAGED, RECOMMENDED
    #       },
    #     ],
    #     certificates: [
    #       {
    #         location: { # required
    #           secrets_manager: {
    #             secret_arn: "SecretArn", # required
    #           },
    #         },
    #       },
    #     ],
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

    # Creates and initializes a code interpreter session in Amazon Bedrock
    # AgentCore. The session enables agents to execute code as part of their
    # response generation, supporting programming languages such as Python
    # for data analysis, visualization, and computation tasks.
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
    # [1]: https://docs.aws.amazon.com/bedrock-agentcore/latest/APIReference/API_InvokeCodeInterpreter.html
    # [2]: https://docs.aws.amazon.com/bedrock-agentcore/latest/APIReference/API_GetCodeInterpreterSession.html
    # [3]: https://docs.aws.amazon.com/bedrock-agentcore/latest/APIReference/API_StopCodeInterpreterSession.html
    #
    # @option params [String] :trace_id
    #   The trace identifier for request tracking.
    #
    # @option params [String] :trace_parent
    #   The parent trace information for distributed tracing.
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
    #   The duration in seconds (time-to-live) after which the session
    #   automatically terminates, regardless of ongoing activity. Defaults to
    #   900 seconds (15 minutes). Recommended minimum: 60 seconds. Maximum
    #   allowed: 28,800 seconds (8 hours).
    #
    # @option params [Array<Types::Certificate>] :certificates
    #   A list of certificates to install in the code interpreter session.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier to ensure that the API request
    #   completes no more than one time. If this token matches a previous
    #   request, Amazon Bedrock AgentCore ignores the request, but does not
    #   return an error. This parameter helps prevent the creation of
    #   duplicate sessions if there are temporary network issues.
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
    #     trace_id: "StartCodeInterpreterSessionRequestTraceIdString",
    #     trace_parent: "StartCodeInterpreterSessionRequestTraceParentString",
    #     code_interpreter_identifier: "String", # required
    #     name: "Name",
    #     session_timeout_seconds: 1,
    #     certificates: [
    #       {
    #         location: { # required
    #           secrets_manager: {
    #             secret_arn: "SecretArn", # required
    #           },
    #         },
    #       },
    #     ],
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

    # Starts a memory extraction job that processes events that failed
    # extraction previously in an AgentCore Memory resource and produces
    # structured memory records. When earlier extraction attempts have left
    # events unprocessed, this job will pick up and extract those as well.
    #
    # To use this operation, you must have the
    # `bedrock-agentcore:StartMemoryExtractionJob` permission.
    #
    # @option params [required, String] :memory_id
    #   The unique identifier of the memory for which to start extraction
    #   jobs.
    #
    # @option params [required, Types::ExtractionJob] :extraction_job
    #   Extraction job to start in this operation.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier to ensure idempotent processing of
    #   the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::StartMemoryExtractionJobOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartMemoryExtractionJobOutput#job_id #job_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_memory_extraction_job({
    #     memory_id: "MemoryId", # required
    #     extraction_job: { # required
    #       job_id: "String", # required
    #     },
    #     client_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.job_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/StartMemoryExtractionJob AWS API Documentation
    #
    # @overload start_memory_extraction_job(params = {})
    # @param [Hash] params ({})
    def start_memory_extraction_job(params = {}, options = {})
      req = build_request(:start_memory_extraction_job, params)
      req.send_request(options)
    end

    # Starts a recommendation job that analyzes agent traces and generates
    # optimization suggestions for system prompts or tool descriptions to
    # improve agent performance.
    #
    # @option params [required, String] :name
    #   The name of the recommendation. Must be unique within your account.
    #
    # @option params [String] :description
    #   The description of the recommendation.
    #
    # @option params [required, String] :type
    #   The type of recommendation to generate. Valid values are
    #   `SYSTEM_PROMPT_RECOMMENDATION` for system prompt optimization or
    #   `TOOL_DESCRIPTION_RECOMMENDATION` for tool description optimization.
    #
    # @option params [required, Types::RecommendationConfig] :recommendation_config
    #   The configuration for the recommendation, including the input to
    #   optimize, agent traces to analyze, and evaluation settings.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier to ensure that the API request
    #   completes no more than one time. If this token matches a previous
    #   request, the service ignores the request, but does not return an
    #   error.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::StartRecommendationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartRecommendationResponse#recommendation_id #recommendation_id} => String
    #   * {Types::StartRecommendationResponse#recommendation_arn #recommendation_arn} => String
    #   * {Types::StartRecommendationResponse#name #name} => String
    #   * {Types::StartRecommendationResponse#description #description} => String
    #   * {Types::StartRecommendationResponse#type #type} => String
    #   * {Types::StartRecommendationResponse#recommendation_config #recommendation_config} => Types::RecommendationConfig
    #   * {Types::StartRecommendationResponse#status #status} => String
    #   * {Types::StartRecommendationResponse#created_at #created_at} => Time
    #   * {Types::StartRecommendationResponse#updated_at #updated_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_recommendation({
    #     name: "RecommendationName", # required
    #     description: "RecommendationDescription",
    #     type: "SYSTEM_PROMPT_RECOMMENDATION", # required, accepts SYSTEM_PROMPT_RECOMMENDATION, TOOL_DESCRIPTION_RECOMMENDATION
    #     recommendation_config: { # required
    #       system_prompt_recommendation_config: {
    #         system_prompt: { # required
    #           text: "SystemPromptText",
    #           configuration_bundle: {
    #             bundle_arn: "ConfigurationBundleArn", # required
    #             version_id: "ConfigurationBundleVersionId", # required
    #             system_prompt_json_path: "String", # required
    #           },
    #         },
    #         agent_traces: { # required
    #           session_spans: [
    #             {
    #             },
    #           ],
    #           cloudwatch_logs: {
    #             log_group_arns: ["String"], # required
    #             service_names: ["ServiceName"], # required
    #             start_time: Time.now, # required
    #             end_time: Time.now, # required
    #             rule: {
    #               filters: [
    #                 {
    #                   key: "CloudWatchLogsFilterKeyString", # required
    #                   operator: "Equals", # required, accepts Equals, NotEquals, GreaterThan, LessThan, GreaterThanOrEqual, LessThanOrEqual, Contains, NotContains
    #                   value: { # required
    #                     string_value: "FilterStringValue",
    #                     double_value: 1.0,
    #                     boolean_value: false,
    #                   },
    #                 },
    #               ],
    #             },
    #           },
    #         },
    #         evaluation_config: { # required
    #           evaluators: [ # required
    #             {
    #               evaluator_arn: "EvaluatorArn", # required
    #             },
    #           ],
    #         },
    #       },
    #       tool_description_recommendation_config: {
    #         tool_description: { # required
    #           tool_description_text: {
    #             tools: [ # required
    #               {
    #                 tool_name: "RecommendationToolName", # required
    #                 tool_description: { # required
    #                   text: "ToolDescriptionText",
    #                 },
    #               },
    #             ],
    #           },
    #           configuration_bundle: {
    #             bundle_arn: "ConfigurationBundleArn", # required
    #             version_id: "ConfigurationBundleVersionId", # required
    #             tools: [ # required
    #               {
    #                 tool_name: "RecommendationToolName", # required
    #                 tool_description_json_path: "String", # required
    #               },
    #             ],
    #           },
    #         },
    #         agent_traces: { # required
    #           session_spans: [
    #             {
    #             },
    #           ],
    #           cloudwatch_logs: {
    #             log_group_arns: ["String"], # required
    #             service_names: ["ServiceName"], # required
    #             start_time: Time.now, # required
    #             end_time: Time.now, # required
    #             rule: {
    #               filters: [
    #                 {
    #                   key: "CloudWatchLogsFilterKeyString", # required
    #                   operator: "Equals", # required, accepts Equals, NotEquals, GreaterThan, LessThan, GreaterThanOrEqual, LessThanOrEqual, Contains, NotContains
    #                   value: { # required
    #                     string_value: "FilterStringValue",
    #                     double_value: 1.0,
    #                     boolean_value: false,
    #                   },
    #                 },
    #               ],
    #             },
    #           },
    #         },
    #       },
    #     },
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.recommendation_id #=> String
    #   resp.recommendation_arn #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.type #=> String, one of "SYSTEM_PROMPT_RECOMMENDATION", "TOOL_DESCRIPTION_RECOMMENDATION"
    #   resp.recommendation_config.system_prompt_recommendation_config.system_prompt.text #=> String
    #   resp.recommendation_config.system_prompt_recommendation_config.system_prompt.configuration_bundle.bundle_arn #=> String
    #   resp.recommendation_config.system_prompt_recommendation_config.system_prompt.configuration_bundle.version_id #=> String
    #   resp.recommendation_config.system_prompt_recommendation_config.system_prompt.configuration_bundle.system_prompt_json_path #=> String
    #   resp.recommendation_config.system_prompt_recommendation_config.agent_traces.session_spans #=> Array
    #   resp.recommendation_config.system_prompt_recommendation_config.agent_traces.cloudwatch_logs.log_group_arns #=> Array
    #   resp.recommendation_config.system_prompt_recommendation_config.agent_traces.cloudwatch_logs.log_group_arns[0] #=> String
    #   resp.recommendation_config.system_prompt_recommendation_config.agent_traces.cloudwatch_logs.service_names #=> Array
    #   resp.recommendation_config.system_prompt_recommendation_config.agent_traces.cloudwatch_logs.service_names[0] #=> String
    #   resp.recommendation_config.system_prompt_recommendation_config.agent_traces.cloudwatch_logs.start_time #=> Time
    #   resp.recommendation_config.system_prompt_recommendation_config.agent_traces.cloudwatch_logs.end_time #=> Time
    #   resp.recommendation_config.system_prompt_recommendation_config.agent_traces.cloudwatch_logs.rule.filters #=> Array
    #   resp.recommendation_config.system_prompt_recommendation_config.agent_traces.cloudwatch_logs.rule.filters[0].key #=> String
    #   resp.recommendation_config.system_prompt_recommendation_config.agent_traces.cloudwatch_logs.rule.filters[0].operator #=> String, one of "Equals", "NotEquals", "GreaterThan", "LessThan", "GreaterThanOrEqual", "LessThanOrEqual", "Contains", "NotContains"
    #   resp.recommendation_config.system_prompt_recommendation_config.agent_traces.cloudwatch_logs.rule.filters[0].value.string_value #=> String
    #   resp.recommendation_config.system_prompt_recommendation_config.agent_traces.cloudwatch_logs.rule.filters[0].value.double_value #=> Float
    #   resp.recommendation_config.system_prompt_recommendation_config.agent_traces.cloudwatch_logs.rule.filters[0].value.boolean_value #=> Boolean
    #   resp.recommendation_config.system_prompt_recommendation_config.evaluation_config.evaluators #=> Array
    #   resp.recommendation_config.system_prompt_recommendation_config.evaluation_config.evaluators[0].evaluator_arn #=> String
    #   resp.recommendation_config.tool_description_recommendation_config.tool_description.tool_description_text.tools #=> Array
    #   resp.recommendation_config.tool_description_recommendation_config.tool_description.tool_description_text.tools[0].tool_name #=> String
    #   resp.recommendation_config.tool_description_recommendation_config.tool_description.tool_description_text.tools[0].tool_description.text #=> String
    #   resp.recommendation_config.tool_description_recommendation_config.tool_description.configuration_bundle.bundle_arn #=> String
    #   resp.recommendation_config.tool_description_recommendation_config.tool_description.configuration_bundle.version_id #=> String
    #   resp.recommendation_config.tool_description_recommendation_config.tool_description.configuration_bundle.tools #=> Array
    #   resp.recommendation_config.tool_description_recommendation_config.tool_description.configuration_bundle.tools[0].tool_name #=> String
    #   resp.recommendation_config.tool_description_recommendation_config.tool_description.configuration_bundle.tools[0].tool_description_json_path #=> String
    #   resp.recommendation_config.tool_description_recommendation_config.agent_traces.session_spans #=> Array
    #   resp.recommendation_config.tool_description_recommendation_config.agent_traces.cloudwatch_logs.log_group_arns #=> Array
    #   resp.recommendation_config.tool_description_recommendation_config.agent_traces.cloudwatch_logs.log_group_arns[0] #=> String
    #   resp.recommendation_config.tool_description_recommendation_config.agent_traces.cloudwatch_logs.service_names #=> Array
    #   resp.recommendation_config.tool_description_recommendation_config.agent_traces.cloudwatch_logs.service_names[0] #=> String
    #   resp.recommendation_config.tool_description_recommendation_config.agent_traces.cloudwatch_logs.start_time #=> Time
    #   resp.recommendation_config.tool_description_recommendation_config.agent_traces.cloudwatch_logs.end_time #=> Time
    #   resp.recommendation_config.tool_description_recommendation_config.agent_traces.cloudwatch_logs.rule.filters #=> Array
    #   resp.recommendation_config.tool_description_recommendation_config.agent_traces.cloudwatch_logs.rule.filters[0].key #=> String
    #   resp.recommendation_config.tool_description_recommendation_config.agent_traces.cloudwatch_logs.rule.filters[0].operator #=> String, one of "Equals", "NotEquals", "GreaterThan", "LessThan", "GreaterThanOrEqual", "LessThanOrEqual", "Contains", "NotContains"
    #   resp.recommendation_config.tool_description_recommendation_config.agent_traces.cloudwatch_logs.rule.filters[0].value.string_value #=> String
    #   resp.recommendation_config.tool_description_recommendation_config.agent_traces.cloudwatch_logs.rule.filters[0].value.double_value #=> Float
    #   resp.recommendation_config.tool_description_recommendation_config.agent_traces.cloudwatch_logs.rule.filters[0].value.boolean_value #=> Boolean
    #   resp.status #=> String, one of "PENDING", "IN_PROGRESS", "COMPLETED", "FAILED", "DELETING"
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/StartRecommendation AWS API Documentation
    #
    # @overload start_recommendation(params = {})
    # @param [Hash] params ({})
    def start_recommendation(params = {}, options = {})
      req = build_request(:start_recommendation, params)
      req.send_request(options)
    end

    # Stops a running batch evaluation. Sessions that have already been
    # evaluated retain their results.
    #
    # @option params [required, String] :batch_evaluation_id
    #   The unique identifier of the batch evaluation to stop.
    #
    # @return [Types::StopBatchEvaluationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StopBatchEvaluationResponse#batch_evaluation_id #batch_evaluation_id} => String
    #   * {Types::StopBatchEvaluationResponse#batch_evaluation_arn #batch_evaluation_arn} => String
    #   * {Types::StopBatchEvaluationResponse#status #status} => String
    #   * {Types::StopBatchEvaluationResponse#description #description} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_batch_evaluation({
    #     batch_evaluation_id: "BatchEvaluationId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.batch_evaluation_id #=> String
    #   resp.batch_evaluation_arn #=> String
    #   resp.status #=> String, one of "PENDING", "IN_PROGRESS", "COMPLETED", "COMPLETED_WITH_ERRORS", "FAILED", "STOPPING", "STOPPED", "DELETING"
    #   resp.description #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/StopBatchEvaluation AWS API Documentation
    #
    # @overload stop_batch_evaluation(params = {})
    # @param [Hash] params ({})
    def stop_batch_evaluation(params = {}, options = {})
      req = build_request(:stop_batch_evaluation, params)
      req.send_request(options)
    end

    # Terminates an active browser session in Amazon Bedrock AgentCore. This
    # operation stops the session, releases associated resources, and makes
    # the session unavailable for further use.
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
    # [1]: https://docs.aws.amazon.com/bedrock-agentcore/latest/APIReference/API_StartBrowserSession.html
    # [2]: https://docs.aws.amazon.com/bedrock-agentcore/latest/APIReference/API_GetBrowserSession.html
    #
    # @option params [String] :trace_id
    #   The trace identifier for request tracking.
    #
    # @option params [String] :trace_parent
    #   The parent trace information for distributed tracing.
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
    #   request, Amazon Bedrock AgentCore ignores the request, but does not
    #   return an error.
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
    #     trace_id: "StopBrowserSessionRequestTraceIdString",
    #     trace_parent: "StopBrowserSessionRequestTraceParentString",
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

    # Terminates an active code interpreter session in Amazon Bedrock
    # AgentCore. This operation stops the session, releases associated
    # resources, and makes the session unavailable for further use.
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
    # [1]: https://docs.aws.amazon.com/bedrock-agentcore/latest/APIReference/API_StartCodeInterpreterSession.html
    # [2]: https://docs.aws.amazon.com/bedrock-agentcore/latest/APIReference/API_GetCodeInterpreterSession.html
    #
    # @option params [String] :trace_id
    #   The trace identifier for request tracking.
    #
    # @option params [String] :trace_parent
    #   The parent trace information for distributed tracing.
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
    #   request, Amazon Bedrock AgentCore ignores the request, but does not
    #   return an error.
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
    #     trace_id: "StopCodeInterpreterSessionRequestTraceIdString",
    #     trace_parent: "StopCodeInterpreterSessionRequestTraceParentString",
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

    # Updates an A/B test's configuration, including variants, traffic
    # allocation, evaluation settings, or execution status.
    #
    # @option params [required, String] :ab_test_id
    #   The unique identifier of the A/B test to update.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier to ensure that the API request
    #   completes no more than one time. If this token matches a previous
    #   request, the service ignores the request, but does not return an
    #   error.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :name
    #   The updated name of the A/B test.
    #
    # @option params [String] :description
    #   The updated description of the A/B test.
    #
    # @option params [Array<Types::Variant>] :variants
    #   The updated list of variants.
    #
    # @option params [Types::GatewayFilter] :gateway_filter
    #   The updated gateway filter.
    #
    # @option params [Types::ABTestEvaluationConfig] :evaluation_config
    #   The updated evaluation configuration.
    #
    # @option params [String] :role_arn
    #   The updated IAM role ARN.
    #
    # @option params [String] :execution_status
    #   The updated execution status to enable or disable the A/B test.
    #
    # @return [Types::UpdateABTestResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateABTestResponse#ab_test_id #ab_test_id} => String
    #   * {Types::UpdateABTestResponse#ab_test_arn #ab_test_arn} => String
    #   * {Types::UpdateABTestResponse#status #status} => String
    #   * {Types::UpdateABTestResponse#execution_status #execution_status} => String
    #   * {Types::UpdateABTestResponse#updated_at #updated_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_ab_test({
    #     ab_test_id: "ABTestId", # required
    #     client_token: "ClientToken",
    #     name: "ABTestName",
    #     description: "ABTestDescription",
    #     variants: [
    #       {
    #         name: "VariantName", # required
    #         weight: 1, # required
    #         variant_configuration: { # required
    #           configuration_bundle: {
    #             bundle_arn: "ConfigurationBundleArn", # required
    #             bundle_version: "ConfigurationBundleVersion", # required
    #           },
    #           target: {
    #             name: "TargetName", # required
    #           },
    #         },
    #       },
    #     ],
    #     gateway_filter: {
    #       target_paths: ["PathPattern"],
    #     },
    #     evaluation_config: {
    #       online_evaluation_config_arn: "OnlineEvaluationConfigArn",
    #       per_variant_online_evaluation_config: [
    #         {
    #           name: "VariantName", # required
    #           online_evaluation_config_arn: "OnlineEvaluationConfigArn", # required
    #         },
    #       ],
    #     },
    #     role_arn: "RoleArn",
    #     execution_status: "PAUSED", # accepts PAUSED, RUNNING, STOPPED, NOT_STARTED
    #   })
    #
    # @example Response structure
    #
    #   resp.ab_test_id #=> String
    #   resp.ab_test_arn #=> String
    #   resp.status #=> String, one of "CREATING", "ACTIVE", "CREATE_FAILED", "UPDATING", "UPDATE_FAILED", "DELETING", "DELETE_FAILED", "FAILED"
    #   resp.execution_status #=> String, one of "PAUSED", "RUNNING", "STOPPED", "NOT_STARTED"
    #   resp.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-2024-02-28/UpdateABTest AWS API Documentation
    #
    # @overload update_ab_test(params = {})
    # @param [Hash] params ({})
    def update_ab_test(params = {}, options = {})
      req = build_request(:update_ab_test, params)
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
      context[:gem_version] = '1.33.0'
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
