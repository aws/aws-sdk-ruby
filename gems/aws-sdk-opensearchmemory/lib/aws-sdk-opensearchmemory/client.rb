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

module Aws::OpenSearchMemory
  # An API client for OpenSearchMemory.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::OpenSearchMemory::Client.new(
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

    @identifier = :opensearchmemory

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
    add_plugin(Aws::OpenSearchMemory::Plugins::Endpoints)

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
    #   @option options [Aws::OpenSearchMemory::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::OpenSearchMemory::EndpointParameters`.
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

    # Gets up to 10 events by ID, each as `GetEvent` returns it, including
    # its payload.
    #
    # If you supply `actorId` or `sessionId`, every requested event must
    # match it. Each event has its own outcome. The operation reports an
    # event that it can't return in `errors` instead of failing, with an
    # error code named for the exception that `GetEvent` would return for
    # it. The operation reports both an event that doesn't exist and an
    # event outside the supplied scope as `RESOURCE_NOT_FOUND`.
    #
    # The exception is the space's customer managed AWS KMS key: if it is
    # disabled, pending deletion, can't be used for decryption, or was
    # deleted, the whole call fails with `ValidationException`, as
    # `GetEvent` does.
    #
    # @option params [required, String] :space_id
    #   The ID of the space.
    #
    # @option params [String] :actor_id
    #   The actor that every requested event must belong to. Omit it to skip
    #   this check. The operation reports an event that doesn't match in
    #   `errors` as `RESOURCE_NOT_FOUND`.
    #
    # @option params [String] :session_id
    #   The session that every requested event must belong to. Omit it to skip
    #   this check. The operation reports an event that doesn't match in
    #   `errors` as `RESOURCE_NOT_FOUND`.
    #
    # @option params [required, Array<String>] :event_ids
    #   The IDs of the events to get: 1 to 10, without duplicates.
    #
    # @return [Types::BatchGetEventOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchGetEventOutput#events #events} => Array&lt;Types::Event&gt;
    #   * {Types::BatchGetEventOutput#errors #errors} => Array&lt;Types::BatchGetEventError&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_event({
    #     space_id: "SpaceId", # required
    #     actor_id: "ActorId",
    #     session_id: "SessionId",
    #     event_ids: ["EventId"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.events #=> Array
    #   resp.events[0].event_id #=> String
    #   resp.events[0].space_id #=> String
    #   resp.events[0].actor_id #=> String
    #   resp.events[0].session_id #=> String
    #   resp.events[0].payload.conversational.unified.source.object.messages #=> Array
    #   resp.events[0].payload.conversational.unified.source.object.messages[0].role #=> String, one of "USER", "ASSISTANT", "SYSTEM"
    #   resp.events[0].payload.conversational.unified.source.object.messages[0].content.text #=> String
    #   resp.events[0].payload.blob.content_type #=> String, one of "application/pdf", "image/png", "image/jpeg"
    #   resp.events[0].payload.blob.source.s3_location.uri #=> String
    #   resp.events[0].metadata #=> Hash
    #   resp.events[0].metadata["MetadataKey"] #=> String
    #   resp.events[0].event_timestamp #=> Time
    #   resp.errors #=> Array
    #   resp.errors[0].event_id #=> String
    #   resp.errors[0].error_code #=> String, one of "RESOURCE_NOT_FOUND", "THROTTLING", "ACCESS_DENIED", "INTERNAL_SERVER"
    #   resp.errors[0].message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchmemory-2026-08-24/BatchGetEvent AWS API Documentation
    #
    # @overload batch_get_event(params = {})
    # @param [Hash] params ({})
    def batch_get_event(params = {}, options = {})
      req = build_request(:batch_get_event, params)
      req.send_request(options)
    end

    # Submits an event (conversation turns, structured data, or a PDF
    # document stored in Amazon S3) to a session in a space.
    #
    # The operation returns as soon as the event is saved. `GetEvent` and
    # `ListEvents` return it immediately. `SearchEvents` returns it after
    # it's indexed. `SearchMemories` returns memories extracted from it
    # only after a strategy's extraction trigger fires and the memories are
    # indexed.
    #
    # If the space uses a customer managed AWS KMS key, the call can also
    # fail because of the key. It fails with `AccessDeniedException` if you
    # aren't allowed to use the key, and with `ThrottlingException` if AWS
    # KMS throttles the request. It fails with `ValidationException` if the
    # key is disabled, pending deletion, or deleted.
    #
    # @option params [required, String] :space_id
    #   The ID of the space that owns the event, for example
    #   `sp-02864597b164`.
    #
    # @option params [required, String] :actor_id
    #   The ID of the actor (end user or agent) that the event belongs to.
    #
    # @option params [String] :session_id
    #   The session the event belongs to. Send every event of one conversation
    #   with the same session ID, so that `SUMMARY` strategies summarize the
    #   conversation as one session. If you omit it, the service generates a
    #   session ID and returns it.
    #
    # @option params [Time,DateTime,Date,Integer,String] :event_timestamp
    #   When the event occurred. The default is the time that the service
    #   receives the request.
    #
    # @option params [required, Types::EventPayload] :payload
    #   The event content. Set exactly one union member.
    #
    # @option params [Hash<String,String>] :metadata
    #   Metadata tags to store with the event. Memories derived from the event
    #   carry the same tags. Keys that begin with `x-amz-`, the keys
    #   `documentS3Source` and `documentS3Url`, and other keys that the
    #   service uses internally are reserved: a request that sets one fails
    #   with `ValidationException`, and the message names the key.
    #
    #   A space can use at most 50 distinct metadata keys across all of its
    #   events and memories. A request that would add a key beyond that fails
    #   with `ValidationException`. Reuse an existing key instead.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that makes the request idempotent.
    #   Within 2 hours of the first request, a retry with the same token and
    #   the same request, including the same `sessionId`, returns the same
    #   event. If you omit `sessionId`, the service generates a new one on
    #   each attempt, so a retry fails with `ConflictException`. Reusing the
    #   token with different request content also fails with
    #   `ConflictException`. `eventTimestamp` isn't compared. After 2 hours,
    #   the token starts a new event.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Boolean] :infer
    #   Specifies whether to extract memories from this event. The default is
    #   `true`. Set it to `false` to store the event without extraction: the
    #   service skips strategies that infer memories, and still indexes the
    #   event's turns for `SearchEvents`. A document submitted as a `blob` is
    #   still extracted.
    #
    # @return [Types::CreateEventOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateEventOutput#event #event} => Types::EventDetail
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_event({
    #     space_id: "SpaceId", # required
    #     actor_id: "ActorId", # required
    #     session_id: "SessionId",
    #     event_timestamp: Time.now,
    #     payload: { # required
    #       conversational: {
    #         unified: {
    #           source: { # required
    #             object: {
    #               messages: [ # required
    #                 {
    #                   role: "USER", # required, accepts USER, ASSISTANT, SYSTEM
    #                   content: { # required
    #                     text: "MessageText", # required
    #                   },
    #                 },
    #               ],
    #             },
    #           },
    #         },
    #       },
    #       structured_data: {
    #         source: { # required
    #           json: {
    #           },
    #         },
    #       },
    #       blob: {
    #         content_type: "application/pdf", # required, accepts application/pdf, image/png, image/jpeg
    #         source: { # required
    #           s3_location: {
    #             uri: "S3LocationUriString", # required
    #           },
    #         },
    #       },
    #     },
    #     metadata: {
    #       "MetadataKey" => "MetadataValue",
    #     },
    #     client_token: "ClientToken",
    #     infer: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.event.event_id #=> String
    #   resp.event.space_id #=> String
    #   resp.event.actor_id #=> String
    #   resp.event.session_id #=> String
    #   resp.event.event_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchmemory-2026-08-24/CreateEvent AWS API Documentation
    #
    # @overload create_event(params = {})
    # @param [Hash] params ({})
    def create_event(params = {}, options = {})
      req = build_request(:create_event, params)
      req.send_request(options)
    end

    # Writes a memory that you have already formed, without extracting it
    # from events. The service embeds the text as given and stores it as a
    # memory of the named strategy. To have the service extract memories
    # from conversation turns, use `CreateEvent` instead.
    #
    # The operation returns before the memory is searchable. The returned
    # `memoryId` is final, but until the memory is indexed, `GetMemory`,
    # `UpdateMemory`, and `DeleteMemory` return `ResourceNotFoundException`
    # for it.
    #
    # If the request would exceed the service's rate for embedding
    # requests, it fails with `ThrottlingException`. Retry with exponential
    # backoff.
    #
    # If the space uses a customer managed AWS KMS key, the call can also
    # fail because of the key. It fails with `AccessDeniedException` if you
    # aren't allowed to use the key, and with `ThrottlingException` if AWS
    # KMS throttles the request. It fails with `ValidationException` if the
    # key is disabled, pending deletion, or deleted.
    #
    # @option params [required, String] :space_id
    #   The ID of the space that owns the memory, for example
    #   `sp-02864597b164`.
    #
    # @option params [required, String] :name
    #   The name of the strategy that the memory belongs to. The space must
    #   already declare the strategy, and the memory's type comes from that
    #   strategy. The name must be 1 to 64 characters: letters, digits,
    #   periods, hyphens, and underscores, starting with a letter or digit.
    #
    # @option params [required, String] :content
    #   The memory text, stored and embedded as provided.
    #
    # @option params [required, String] :actor_id
    #   The actor (end user or agent) that owns the memory.
    #
    # @option params [String] :session_id
    #   The session that the memory belongs to. If you omit it, the service
    #   generates a session ID and returns it.
    #
    # @option params [Hash<String,String>] :metadata
    #   Metadata tags to store with the memory. Keys that begin with `x-amz-`,
    #   the key `documentS3Source`, and other keys that the service uses
    #   internally are reserved: a request that sets one fails with
    #   `ValidationException`, and the message names the key.
    #
    #   A space can use at most 50 distinct metadata keys across all of its
    #   events and memories. A request that would add a key beyond that fails
    #   with `ValidationException`. Reuse an existing key instead.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that makes the request idempotent.
    #   Within 2 hours of the first request, a retry with the same token
    #   returns the same `memoryId` instead of creating a second memory.
    #   Reusing the token with a different `name`, `content`, `metadata`,
    #   `actorId`, or `sessionId` fails with `ConflictException`. If you omit
    #   `sessionId`, a retry with the same token gets the same session. If you
    #   omit the token, each call creates a new memory.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateMemoryOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateMemoryOutput#memory #memory} => Types::CreateMemoryDetail
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_memory({
    #     space_id: "SpaceId", # required
    #     name: "StrategyName", # required
    #     content: "CreateMemoryContent", # required
    #     actor_id: "ActorId", # required
    #     session_id: "SessionId",
    #     metadata: {
    #       "MetadataKey" => "MetadataValue",
    #     },
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.memory.memory_id #=> String
    #   resp.memory.space_id #=> String
    #   resp.memory.name #=> String
    #   resp.memory.actor_id #=> String
    #   resp.memory.session_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchmemory-2026-08-24/CreateMemory AWS API Documentation
    #
    # @overload create_memory(params = {})
    # @param [Hash] params ({})
    def create_memory(params = {}, options = {})
      req = build_request(:create_memory, params)
      req.send_request(options)
    end

    # Creates a space. A space is an AWS resource that stores the events you
    # send and the memories extracted from them, and defines the memory
    # strategies that extract those memories.
    #
    # The operation returns before provisioning finishes, with `status`
    # `CREATING`. Call `GetSpace` until the status is `ACTIVE`, and then use
    # the space. If provisioning fails, the status becomes `FAILED` and
    # `statusReason` says why.
    #
    # @option params [required, String] :name
    #   A name for the space, unique within your account in the Region. If
    #   another space already has the name, the request fails with
    #   `ConflictException`.
    #
    # @option params [Array<Types::MemoryStrategy>] :memory_strategies
    #   The memory strategies that extract memories from the space's events:
    #   up to 10 strategies, each with a name that is unique within the space.
    #
    #   Optional. Omit it, or send an empty list, to create a space with no
    #   memory strategies. Such a space stores the conversation events you
    #   send it and returns them through `SearchEvents` and `ListEvents`, but
    #   extracts no memories and has none to search. You can add strategies
    #   later with `UpdateSpace`.
    #
    #   The serialized list can be at most 384 KiB.
    #
    # @option params [Integer] :event_expiry_days
    #   How many days the space keeps each event, from 1 to 365. The default
    #   is 90.
    #
    # @option params [Integer] :memory_expiry_days
    #   How many days the space keeps each memory, from 0 to 3650, counted
    #   from when the service writes the memory. Updating a memory with
    #   `UpdateMemory` doesn't restart the count. 0 means memories never
    #   expire. If you omit it, memories never expire.
    #
    #   Searches and lists leave out a memory past its expiry, and reading,
    #   updating, or deleting it returns `ResourceNotFoundException`.
    #
    # @option params [String] :extraction_model_id
    #   The model that extracts and consolidates memories for every strategy
    #   in the space, as an Amazon Bedrock model ID without an
    #   inference-profile prefix: `anthropic.claude-opus-5-5` or
    #   `anthropic.claude-haiku-5-5`. Another value fails with
    #   `ValidationException`, and the message lists the supported IDs. Omit
    #   it to use the service default, which can change over time and isn't
    #   returned by `GetSpace`. Setting a value pins the model.
    #
    # @option params [Types::EncryptionConfiguration] :encryption_configuration
    #   The AWS KMS key that encrypts the space's data. Omit it, or omit its
    #   `kmsKeyArn`, to use an AWS owned key. You can't change the key after
    #   you create the space.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tags to add to the space.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that makes the request idempotent.
    #   A retry with the same token and the same parameters within 2 hours
    #   returns the space that the first request created, instead of creating
    #   another. Reusing the token with different parameters, or while the
    #   first request is still in progress, fails with `ConflictException`.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateSpaceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateSpaceResponse#space_id #space_id} => String
    #   * {Types::CreateSpaceResponse#arn #arn} => String
    #   * {Types::CreateSpaceResponse#name #name} => String
    #   * {Types::CreateSpaceResponse#status #status} => String
    #   * {Types::CreateSpaceResponse#created_at #created_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_space({
    #     name: "SpaceName", # required
    #     memory_strategies: [
    #       {
    #         type: "SEMANTIC", # required, accepts SEMANTIC, SUMMARY, CUSTOM
    #         name: "MemoryStrategyName",
    #         description: "MemoryStrategyDescription",
    #         configuration: {
    #           extraction_prompt: "ExtractionPrompt",
    #           extract_every_n_messages: 1,
    #           extract_every_n_tokens: 1,
    #           idle_timeout_seconds: 1,
    #           extraction_seed_top_k: 1,
    #           extraction_seed_recent_n: 1,
    #           consolidation_enabled: false,
    #         },
    #       },
    #     ],
    #     event_expiry_days: 1,
    #     memory_expiry_days: 1,
    #     extraction_model_id: "ExtractionModelId",
    #     encryption_configuration: {
    #       kms_key_arn: "String",
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.space_id #=> String
    #   resp.arn #=> String
    #   resp.name #=> String
    #   resp.status #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETING", "DELETED", "FAILED"
    #   resp.created_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchmemory-2026-08-24/CreateSpace AWS API Documentation
    #
    # @overload create_space(params = {})
    # @param [Hash] params ({})
    def create_space(params = {}, options = {})
      req = build_request(:create_space, params)
      req.send_request(options)
    end

    # Deletes an event. Deletion can't be undone. The event stops appearing
    # in `SearchEvents` results shortly after you delete it. Deleting an
    # event that doesn't exist returns `ResourceNotFoundException`.
    #
    # Deleting an event doesn't delete the memories derived from it,
    # because a memory can combine content from several events. To remove
    # them, use `DeleteMemory`.
    #
    # If the space uses a customer managed AWS KMS key, the call can also
    # fail because of the key. It fails with `AccessDeniedException` if you
    # aren't allowed to use the key, and with `ThrottlingException` if AWS
    # KMS throttles the request. It fails with `ValidationException` if the
    # key is disabled, pending deletion, or deleted.
    #
    # @option params [required, String] :space_id
    #   The ID of the space.
    #
    # @option params [required, String] :event_id
    #   The ID of the event to delete.
    #
    # @option params [String] :actor_id
    #   The actor that the event must belong to. Omit it to skip this check.
    #   If it doesn't match the stored event, the call fails with
    #   `ResourceNotFoundException`, as if the event did not exist.
    #
    # @option params [String] :session_id
    #   The session that the event must belong to. Omit it to skip this check.
    #   If it doesn't match the stored event, the call fails with
    #   `ResourceNotFoundException`, as if the event did not exist.
    #
    # @return [Types::DeleteEventOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteEventOutput#event_id #event_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_event({
    #     space_id: "SpaceId", # required
    #     event_id: "EventId", # required
    #     actor_id: "ActorId",
    #     session_id: "SessionId",
    #   })
    #
    # @example Response structure
    #
    #   resp.event_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchmemory-2026-08-24/DeleteEvent AWS API Documentation
    #
    # @overload delete_event(params = {})
    # @param [Hash] params ({})
    def delete_event(params = {}, options = {})
      req = build_request(:delete_event, params)
      req.send_request(options)
    end

    # Deletes a memory, including its content and embedding. Deletion can't
    # be undone. Searches stop returning the memory shortly after you delete
    # it.
    #
    # Deleting a memory that no longer exists returns
    # `ResourceNotFoundException`, so the operation is not idempotent. If
    # you retry deletes, treat that error as success.
    #
    # A memory past its expiry (set from the space's `memoryExpiryDays`
    # when the memory is written) reads as not found: the operation returns
    # `ResourceNotFoundException`, as for a memory that was already deleted.
    #
    # If the space uses a customer managed AWS KMS key, the call can also
    # fail because of the key. It fails with `AccessDeniedException` if you
    # aren't allowed to use the key, and with `ThrottlingException` if AWS
    # KMS throttles the request. It fails with `ValidationException` if the
    # key is disabled, pending deletion, or deleted.
    #
    # @option params [required, String] :space_id
    #   The ID of the space that owns the memory.
    #
    # @option params [required, String] :memory_id
    #   The ID of the memory to delete.
    #
    # @option params [String] :actor_id
    #   The ID of the actor that the memory must belong to. Omit it to skip
    #   this check. If it doesn't match the stored memory, the call fails
    #   with `ResourceNotFoundException`, as if the memory did not exist.
    #
    # @option params [String] :strategy_name
    #   The name of the strategy that the memory must belong to. Omit it to
    #   skip this check. If it doesn't match the stored memory, the call
    #   fails with `ResourceNotFoundException`, as if the memory did not
    #   exist.
    #
    # @return [Types::DeleteMemoryOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteMemoryOutput#memory_id #memory_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_memory({
    #     space_id: "SpaceId", # required
    #     memory_id: "MemoryId", # required
    #     actor_id: "ActorId",
    #     strategy_name: "StrategyName",
    #   })
    #
    # @example Response structure
    #
    #   resp.memory_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchmemory-2026-08-24/DeleteMemory AWS API Documentation
    #
    # @overload delete_memory(params = {})
    # @param [Hash] params ({})
    def delete_memory(params = {}, options = {})
      req = build_request(:delete_memory, params)
      req.send_request(options)
    end

    # Deletes a space and its memories. Deletion can't be undone. After you
    # delete the space, you can't retrieve its events, and the service
    # removes them when they reach their expiry.
    #
    # The operation returns with `status` `DELETING`. When deletion
    # finishes, `GetSpace` returns `ResourceNotFoundException`. If deletion
    # fails, the status becomes `FAILED`. A space that is `CREATING` or
    # `UPDATING` can't be deleted until that finishes: the request fails
    # with `ConflictException`. Deleting a space that is already `DELETING`
    # returns `DELETING` again.
    #
    # @option params [required, String] :space_id
    #   The ID of the space to delete.
    #
    # @return [Types::DeleteSpaceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteSpaceResponse#space_id #space_id} => String
    #   * {Types::DeleteSpaceResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_space({
    #     space_id: "SpaceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.space_id #=> String
    #   resp.status #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETING", "DELETED", "FAILED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchmemory-2026-08-24/DeleteSpace AWS API Documentation
    #
    # @overload delete_space(params = {})
    # @param [Hash] params ({})
    def delete_space(params = {}, options = {})
      req = build_request(:delete_space, params)
      req.send_request(options)
    end

    # Gets an event by ID, including its payload.
    #
    # If the space uses a customer managed AWS KMS key, the call can also
    # fail because of the key. It fails with `AccessDeniedException` if you
    # aren't allowed to use the key, and with `ThrottlingException` if AWS
    # KMS throttles the request. It fails with `ValidationException` if the
    # key is disabled, pending deletion, or deleted.
    #
    # @option params [required, String] :space_id
    #   The ID of the space.
    #
    # @option params [required, String] :event_id
    #   The event's ID, as returned by `CreateEvent`, `ListEvents`, or
    #   `SearchEvents`.
    #
    # @option params [String] :actor_id
    #   The actor the event must belong to. Omit it to skip this check. If it
    #   doesn't match the stored event, the call fails with
    #   `ResourceNotFoundException`, as if the event did not exist.
    #
    # @option params [String] :session_id
    #   The session the event must belong to. Omit it to skip this check. If
    #   it doesn't match the stored event, the call fails with
    #   `ResourceNotFoundException`, as if the event did not exist.
    #
    # @return [Types::GetEventOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetEventOutput#event #event} => Types::Event
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_event({
    #     space_id: "SpaceId", # required
    #     event_id: "EventId", # required
    #     actor_id: "ActorId",
    #     session_id: "SessionId",
    #   })
    #
    # @example Response structure
    #
    #   resp.event.event_id #=> String
    #   resp.event.space_id #=> String
    #   resp.event.actor_id #=> String
    #   resp.event.session_id #=> String
    #   resp.event.payload.conversational.unified.source.object.messages #=> Array
    #   resp.event.payload.conversational.unified.source.object.messages[0].role #=> String, one of "USER", "ASSISTANT", "SYSTEM"
    #   resp.event.payload.conversational.unified.source.object.messages[0].content.text #=> String
    #   resp.event.payload.blob.content_type #=> String, one of "application/pdf", "image/png", "image/jpeg"
    #   resp.event.payload.blob.source.s3_location.uri #=> String
    #   resp.event.metadata #=> Hash
    #   resp.event.metadata["MetadataKey"] #=> String
    #   resp.event.event_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchmemory-2026-08-24/GetEvent AWS API Documentation
    #
    # @overload get_event(params = {})
    # @param [Hash] params ({})
    def get_event(params = {}, options = {})
      req = build_request(:get_event, params)
      req.send_request(options)
    end

    # Gets a memory by ID, as returned by `SearchMemories` or
    # `ListMemories`. A memory that doesn't exist returns
    # `ResourceNotFoundException`. Unlike `SearchMemories`, this operation
    # also returns memories that consolidation has superseded.
    #
    # A memory past its expiry (set from the space's `memoryExpiryDays`
    # when the memory is written) reads as not found:
    # `ResourceNotFoundException`, the same answer as for an ID that does
    # not exist.
    #
    # If the space uses a customer managed AWS KMS key, the call can also
    # fail because of the key. It fails with `AccessDeniedException` if you
    # aren't allowed to use the key, and with `ThrottlingException` if AWS
    # KMS throttles the request. It fails with `ValidationException` if the
    # key is disabled, pending deletion, or deleted.
    #
    # @option params [required, String] :space_id
    #   The ID of the space that holds the memory.
    #
    # @option params [required, String] :memory_id
    #   The memory's ID, as returned by `SearchMemories` or `ListMemories`.
    #
    # @option params [String] :actor_id
    #   The ID of the actor the memory must belong to. Omit it to skip this
    #   check. If it doesn't match the stored memory, the call fails with
    #   `ResourceNotFoundException`, as if the memory did not exist.
    #
    # @option params [String] :strategy_name
    #   The name of the strategy the memory must belong to. Omit it to skip
    #   this check. If it doesn't match the stored memory, the call fails
    #   with `ResourceNotFoundException`, as if the memory did not exist.
    #
    # @return [Types::GetMemoryOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetMemoryOutput#memory #memory} => Types::Memory
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_memory({
    #     space_id: "SpaceId", # required
    #     memory_id: "MemoryId", # required
    #     actor_id: "ActorId",
    #     strategy_name: "StrategyName",
    #   })
    #
    # @example Response structure
    #
    #   resp.memory.memory_id #=> String
    #   resp.memory.memory_type #=> String, one of "SEMANTIC", "SUMMARY", "CUSTOM"
    #   resp.memory.strategy_name #=> String
    #   resp.memory.content #=> String
    #   resp.memory.system_metadata.actor_id #=> String
    #   resp.memory.system_metadata.session_id #=> String
    #   resp.memory.system_metadata.created_at #=> Time
    #   resp.memory.system_metadata.updated_at #=> Time
    #   resp.memory.metadata #=> Hash
    #   resp.memory.metadata["MetadataKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchmemory-2026-08-24/GetMemory AWS API Documentation
    #
    # @overload get_memory(params = {})
    # @param [Hash] params ({})
    def get_memory(params = {}, options = {})
      req = build_request(:get_memory, params)
      req.send_request(options)
    end

    # Returns a space's configuration and status.
    #
    # @option params [required, String] :space_id
    #   The ID of the space.
    #
    # @return [Types::GetSpaceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSpaceResponse#space_id #space_id} => String
    #   * {Types::GetSpaceResponse#arn #arn} => String
    #   * {Types::GetSpaceResponse#name #name} => String
    #   * {Types::GetSpaceResponse#status #status} => String
    #   * {Types::GetSpaceResponse#status_reason #status_reason} => String
    #   * {Types::GetSpaceResponse#created_at #created_at} => Time
    #   * {Types::GetSpaceResponse#memory_strategies #memory_strategies} => Array&lt;Types::MemoryStrategy&gt;
    #   * {Types::GetSpaceResponse#event_expiry_days #event_expiry_days} => Integer
    #   * {Types::GetSpaceResponse#memory_expiry_days #memory_expiry_days} => Integer
    #   * {Types::GetSpaceResponse#extraction_model_id #extraction_model_id} => String
    #   * {Types::GetSpaceResponse#encryption_configuration #encryption_configuration} => Types::EncryptionConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_space({
    #     space_id: "SpaceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.space_id #=> String
    #   resp.arn #=> String
    #   resp.name #=> String
    #   resp.status #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETING", "DELETED", "FAILED"
    #   resp.status_reason #=> String
    #   resp.created_at #=> Time
    #   resp.memory_strategies #=> Array
    #   resp.memory_strategies[0].type #=> String, one of "SEMANTIC", "SUMMARY", "CUSTOM"
    #   resp.memory_strategies[0].name #=> String
    #   resp.memory_strategies[0].description #=> String
    #   resp.memory_strategies[0].configuration.extraction_prompt #=> String
    #   resp.memory_strategies[0].configuration.extract_every_n_messages #=> Integer
    #   resp.memory_strategies[0].configuration.extract_every_n_tokens #=> Integer
    #   resp.memory_strategies[0].configuration.idle_timeout_seconds #=> Integer
    #   resp.memory_strategies[0].configuration.extraction_seed_top_k #=> Integer
    #   resp.memory_strategies[0].configuration.extraction_seed_recent_n #=> Integer
    #   resp.memory_strategies[0].configuration.consolidation_enabled #=> Boolean
    #   resp.event_expiry_days #=> Integer
    #   resp.memory_expiry_days #=> Integer
    #   resp.extraction_model_id #=> String
    #   resp.encryption_configuration.kms_key_arn #=> String
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * space_active
    #   * space_deleted
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchmemory-2026-08-24/GetSpace AWS API Documentation
    #
    # @overload get_space(params = {})
    # @param [Hash] params ({})
    def get_space(params = {}, options = {})
      req = build_request(:get_space, params)
      req.send_request(options)
    end

    # Lists the events in a session, sorted by time. Optionally limit the
    # results to events whose `eventTimestamp` falls between
    # `eventTimestampAfter` and `eventTimestampBefore`. Returns event
    # metadata only. Call `GetEvent` for the payload. For full-text or
    # relevance search, use `SearchEvents`.
    #
    # If the space uses a customer managed AWS KMS key, the call can also
    # fail because of the key. It fails with `AccessDeniedException` if you
    # aren't allowed to use the key, and with `ThrottlingException` if AWS
    # KMS throttles the request. It fails with `ValidationException` if the
    # key is disabled, pending deletion, or deleted.
    #
    # @option params [required, String] :space_id
    #   The ID of the space.
    #
    # @option params [required, String] :actor_id
    #   The actor whose events to list.
    #
    # @option params [required, String] :session_id
    #   The session whose events to list. To find events across sessions, use
    #   `SearchEvents`.
    #
    # @option params [Time,DateTime,Date,Integer,String] :event_timestamp_before
    #   Inclusive upper bound on `eventTimestamp`: only events at or before
    #   this time are returned. Omit for no upper bound.
    #
    # @option params [Time,DateTime,Date,Integer,String] :event_timestamp_after
    #   Inclusive lower bound on `eventTimestamp`: only events at or after
    #   this time are returned. Omit for no lower bound.
    #
    #   If it's later than `eventTimestampBefore`, the request fails with
    #   `ValidationException`.
    #
    # @option params [String] :sort_order
    #   The order of the results by `eventTimestamp`: `ASC` or `DESC`. The
    #   default is `DESC`, most recent first.
    #
    # @option params [Hash<String,String>] :metadata_filters
    #   Returns only events whose metadata contains every one of these
    #   key-value pairs. Omit, or leave empty, for no metadata filter. The
    #   service applies the filter after it reads events, so a page can hold
    #   fewer than `maxResults` events, or none, and still return a
    #   `nextToken`. Keep paging until `nextToken` is absent.
    #
    # @option params [Integer] :max_results
    #   The maximum number of events to return, from 1 to 100. The default is
    #   20.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @return [Types::ListEventsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListEventsOutput#events #events} => Array&lt;Types::EventSummary&gt;
    #   * {Types::ListEventsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_events({
    #     space_id: "SpaceId", # required
    #     actor_id: "ActorId", # required
    #     session_id: "SessionId", # required
    #     event_timestamp_before: Time.now,
    #     event_timestamp_after: Time.now,
    #     sort_order: "ASC", # accepts ASC, DESC
    #     metadata_filters: {
    #       "MetadataKey" => "MetadataValue",
    #     },
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.events #=> Array
    #   resp.events[0].event_id #=> String
    #   resp.events[0].metadata #=> Hash
    #   resp.events[0].metadata["MetadataKey"] #=> String
    #   resp.events[0].event_timestamp #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchmemory-2026-08-24/ListEvents AWS API Documentation
    #
    # @overload list_events(params = {})
    # @param [Hash] params ({})
    def list_events(params = {}, options = {})
      req = build_request(:list_events, params)
      req.send_request(options)
    end

    # Lists a space's memories without a query, for example the most recent
    # memories or the memories of one strategy. Filter by strategy and
    # optionally by owning actor or session, sort by creation or update
    # time, and page through the results. Results have no relevance score.
    # To query or filter by metadata, use `SearchMemories`.
    #
    # If memories are written or deleted while you page, the results can
    # skip a memory or return it twice. You can page through only a limited
    # number of results. A request past that limit fails with
    # `ValidationException` (reason `invalidNextToken`), and the message
    # gives the limit.
    #
    # Memories past their expiry (set from the space's `memoryExpiryDays`
    # when each memory is written) are left out. Unlike `SearchMemories`,
    # this operation also returns memories that consolidation has
    # superseded.
    #
    # If the space uses a customer managed AWS KMS key, the call can also
    # fail because of the key. It fails with `AccessDeniedException` if you
    # aren't allowed to use the key, and with `ThrottlingException` if AWS
    # KMS throttles the request. It fails with `ValidationException` if the
    # key is disabled, pending deletion, or deleted.
    #
    # @option params [required, String] :space_id
    #   The space whose memories to list.
    #
    # @option params [Array<Types::StrategySelector>] :memory_strategies
    #   The strategies to list, as selectors. A selector without
    #   `memoryStrategyNames` lists every strategy of its type, and omitting
    #   `memoryStrategies` lists every strategy in the space. A name that is
    #   not a declared strategy of that type fails with `ValidationException`.
    #
    # @option params [Array<String>] :actor_ids
    #   Lists only memories owned by one of these actors. Combined with
    #   `sessionIds` by AND: a memory must match both filters when both are
    #   given. Omit for no actor filter. An empty list fails validation. A
    #   memory stored without an actor never matches an actor filter.
    #
    # @option params [Array<String>] :session_ids
    #   Lists only memories from one of these sessions. Combined with
    #   `actorIds` by AND. Omit for no session filter. An empty list fails
    #   validation. A memory stored without a session never matches a session
    #   filter.
    #
    # @option params [String] :sort_by
    #   The timestamp to sort by, as returned in `systemMetadata`:
    #   `CREATED_AT` (the default) or `UPDATED_AT`.
    #
    # @option params [String] :sort_order
    #   The sort order: `ASC` or `DESC`. The default is `DESC`, most recent
    #   first.
    #
    # @option params [Integer] :max_results
    #   The maximum number of memories to return, from 1 to 100. The default
    #   is 20.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @return [Types::ListMemoriesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListMemoriesOutput#memories #memories} => Array&lt;Types::MemoryListSummary&gt;
    #   * {Types::ListMemoriesOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_memories({
    #     space_id: "SpaceId", # required
    #     memory_strategies: [
    #       {
    #         memory_type: "SEMANTIC", # required, accepts SEMANTIC, SUMMARY, CUSTOM
    #         memory_strategy_names: ["StrategyName"],
    #       },
    #     ],
    #     actor_ids: ["ActorId"],
    #     session_ids: ["SessionId"],
    #     sort_by: "CREATED_AT", # accepts CREATED_AT, UPDATED_AT
    #     sort_order: "ASC", # accepts ASC, DESC
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.memories #=> Array
    #   resp.memories[0].memory_id #=> String
    #   resp.memories[0].memory_type #=> String, one of "SEMANTIC", "SUMMARY", "CUSTOM"
    #   resp.memories[0].strategy_name #=> String
    #   resp.memories[0].system_metadata.actor_id #=> String
    #   resp.memories[0].system_metadata.session_id #=> String
    #   resp.memories[0].system_metadata.created_at #=> Time
    #   resp.memories[0].system_metadata.updated_at #=> Time
    #   resp.memories[0].metadata #=> Hash
    #   resp.memories[0].metadata["MetadataKey"] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchmemory-2026-08-24/ListMemories AWS API Documentation
    #
    # @overload list_memories(params = {})
    # @param [Hash] params ({})
    def list_memories(params = {}, options = {})
      req = build_request(:list_memories, params)
      req.send_request(options)
    end

    # Lists the spaces in your account in the current Region.
    #
    # @option params [Integer] :max_results
    #   The maximum number of spaces to return, from 1 to 100. The default is
    #   100.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @return [Types::ListSpacesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSpacesResponse#spaces #spaces} => Array&lt;Types::SpaceSummary&gt;
    #   * {Types::ListSpacesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_spaces({
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.spaces #=> Array
    #   resp.spaces[0].space_id #=> String
    #   resp.spaces[0].arn #=> String
    #   resp.spaces[0].name #=> String
    #   resp.spaces[0].status #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETING", "DELETED", "FAILED"
    #   resp.spaces[0].created_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchmemory-2026-08-24/ListSpaces AWS API Documentation
    #
    # @overload list_spaces(params = {})
    # @param [Hash] params ({})
    def list_spaces(params = {}, options = {})
      req = build_request(:list_spaces, params)
      req.send_request(options)
    end

    # Lists the tags for the specified space.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the space.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Array&lt;Types::Tag&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "SpaceArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchmemory-2026-08-24/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Searches a space's events by relevance. It works like
    # `SearchMemories` without the memory type and strategy selector. The
    # query is a subset of the OpenSearch Query DSL. The service validates
    # it, limits the search to the actor in `actorId` and the sessions in
    # `sessionIds`, and returns ranked results. Each result is the matching
    # chunk of an event, not the whole event. You can page through only a
    # limited number of results. A request past that limit fails with
    # `ValidationException` (reason `invalidNextToken`), and the message
    # gives the limit.
    #
    # If the results are larger than 5 MiB, the request fails with
    # `ValidationException` (reason `queryBodyTooLarge`). Lower
    # `maxResults`.
    #
    # If the request would exceed the service's rate for embedding
    # requests, it fails with `ThrottlingException`. Retry with exponential
    # backoff.
    #
    # If the space uses a customer managed AWS KMS key, the call can also
    # fail because of the key. It fails with `AccessDeniedException` if you
    # aren't allowed to use the key, and with `ThrottlingException` if AWS
    # KMS throttles the request. It fails with `ValidationException` if the
    # key is disabled, pending deletion, or deleted.
    #
    # @option params [required, String] :space_id
    #   The space whose events to search. Use `actorId` and `sessionIds` to
    #   narrow the search within it.
    #
    # @option params [required, String] :actor_id
    #   The actor whose events to search (exact match). Required: every search
    #   covers exactly one actor, and an event stored without an actor is
    #   never returned. Narrow the search further with `sessionIds`, combined
    #   by AND. This is the only way to filter by actor: a query that
    #   references `system_metadata.actor_id` fails with `ValidationException`
    #   (reason `nonFilterableField`).
    #
    # @option params [Array<String>] :session_ids
    #   Returns only events from one of these sessions (exact match). Combined
    #   with `actorId` by AND. Omit for no session filter. An empty list fails
    #   validation. An event stored without a session never matches a session
    #   filter. This is the only way to filter by session: a query that
    #   references `system_metadata.session_id` fails with
    #   `ValidationException` (reason `nonFilterableField`).
    #
    # @option params [required, Hash,Array,String,Numeric,Boolean] :query
    #   The query: a subset of the OpenSearch Query DSL (see `SearchQuery`),
    #   validated by the same rules as on `SearchMemories`. Query event text
    #   as `text` and embeddings as `vector`. A search covers both
    #   conversation turns and chunks of documents submitted as a `blob`. You
    #   can't use actor and session fields here. Use the top-level `actorId`
    #   and `sessionIds`.
    #
    #   To search only the content of particular events, filter on `event_ids`
    #   with `term` or `terms`, for example with the `sourceEventIds` that a
    #   `SearchMemories` result returns. A `terms` clause on `event_ids` can
    #   list up to 10 event IDs. More IDs fail with `ValidationException`
    #   (reason `queryBodyTooLarge`). You can use `event_ids` only in `term`,
    #   `terms`, and `exists` queries.
    #
    #   Document type used to carry open content
    #   (Hash,Array,String,Numeric,Boolean). A document type value is
    #   serialized using the same format as its surroundings and requires no
    #   additional encoding or escaping.
    #
    # @option params [Hash,Array,String,Numeric,Boolean] :sort
    #   The sort order (see `SearchSort`). Omit to return the most relevant
    #   events first.
    #
    #   Document type used to carry open content
    #   (Hash,Array,String,Numeric,Boolean). A document type value is
    #   serialized using the same format as its surroundings and requires no
    #   additional encoding or escaping.
    #
    # @option params [Integer] :max_results
    #   The maximum number of events to return, from 1 to 100. The default is
    #   20.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @return [Types::SearchEventsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchEventsOutput#events #events} => Array&lt;Types::EventSearchSummary&gt;
    #   * {Types::SearchEventsOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_events({
    #     space_id: "SpaceId", # required
    #     actor_id: "ActorId", # required
    #     session_ids: ["SessionId"],
    #     query: { # required
    #     },
    #     sort: {
    #     },
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.events #=> Array
    #   resp.events[0].event_id #=> String
    #   resp.events[0].score #=> Float
    #   resp.events[0].system_metadata.actor_id #=> String
    #   resp.events[0].system_metadata.session_id #=> String
    #   resp.events[0].system_metadata.created_at #=> Time
    #   resp.events[0].system_metadata.updated_at #=> Time
    #   resp.events[0].metadata #=> Hash
    #   resp.events[0].metadata["MetadataKey"] #=> String
    #   resp.events[0].matched_content #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchmemory-2026-08-24/SearchEvents AWS API Documentation
    #
    # @overload search_events(params = {})
    # @param [Hash] params ({})
    def search_events(params = {}, options = {})
      req = build_request(:search_events, params)
      req.send_request(options)
    end

    # Searches a space's memories by relevance. The query is a subset of
    # the OpenSearch Query DSL. The service validates it, limits the search
    # to the requested strategies and to the actor in `actorId`, and returns
    # one ranked list of memories. You can page through only a limited
    # number of results. A request past that limit fails with
    # `ValidationException` (reason `invalidNextToken`), and the message
    # gives the limit.
    #
    # Memories past their expiry (set from the space's `memoryExpiryDays`
    # when each memory is written) are left out of the results. Only current
    # memories are returned: a memory that consolidation has superseded (an
    # older version of a fact that a newer memory replaced) is left out.
    #
    # If the results are larger than 5 MiB, the request fails with
    # `ValidationException` (reason `queryBodyTooLarge`). Lower
    # `maxResults`.
    #
    # If the request would exceed the service's rate for embedding
    # requests, it fails with `ThrottlingException`. Retry with exponential
    # backoff.
    #
    # If the space uses a customer managed AWS KMS key, the call can also
    # fail because of the key. It fails with `AccessDeniedException` if you
    # aren't allowed to use the key, and with `ThrottlingException` if AWS
    # KMS throttles the request. It fails with `ValidationException` if the
    # key is disabled, pending deletion, or deleted.
    #
    # @option params [required, String] :space_id
    #   The space to search. Use `actorId` to narrow the search within it.
    #
    # @option params [Array<Types::StrategySelector>] :memory_strategies
    #   The strategies to search, as a list of selectors. Each selector names
    #   a memory type and, optionally, specific strategy names of that type. A
    #   space can hold several strategies of the same type. A selector without
    #   `memoryStrategyNames` searches every strategy of its type, and
    #   omitting `memoryStrategies` searches every strategy in the space. A
    #   name that is not a declared strategy of that type fails with
    #   `ValidationException`.
    #
    # @option params [required, String] :actor_id
    #   The actor whose memories to search (exact match). Required: every
    #   search covers exactly one actor, and a memory stored without an actor
    #   is never returned. This is the only way to filter by actor: a query
    #   that references `system_metadata.actor_id` fails with
    #   `ValidationException` (reason `nonFilterableField`).
    #
    # @option params [required, Hash,Array,String,Numeric,Boolean] :query
    #   The query: a subset of the OpenSearch Query DSL (see `SearchQuery`).
    #   You can't use the actor and session fields `system_metadata.actor_id`
    #   and `system_metadata.session_id` here. Use the top-level `actorId` to
    #   filter by actor. Searching memories doesn't filter by session.
    #
    #   Document type used to carry open content
    #   (Hash,Array,String,Numeric,Boolean). A document type value is
    #   serialized using the same format as its surroundings and requires no
    #   additional encoding or escaping.
    #
    # @option params [Hash,Array,String,Numeric,Boolean] :sort
    #   The sort order (see `SearchSort`). Omit to return the most relevant
    #   memories first.
    #
    #   Document type used to carry open content
    #   (Hash,Array,String,Numeric,Boolean). A document type value is
    #   serialized using the same format as its surroundings and requires no
    #   additional encoding or escaping.
    #
    # @option params [Integer] :max_results
    #   The maximum number of memories to return, from 1 to 100. The default
    #   is 20.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @return [Types::SearchMemoriesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchMemoriesOutput#memories #memories} => Array&lt;Types::MemorySearchSummary&gt;
    #   * {Types::SearchMemoriesOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_memories({
    #     space_id: "SpaceId", # required
    #     memory_strategies: [
    #       {
    #         memory_type: "SEMANTIC", # required, accepts SEMANTIC, SUMMARY, CUSTOM
    #         memory_strategy_names: ["StrategyName"],
    #       },
    #     ],
    #     actor_id: "ActorId", # required
    #     query: { # required
    #     },
    #     sort: {
    #     },
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.memories #=> Array
    #   resp.memories[0].memory_id #=> String
    #   resp.memories[0].memory_type #=> String, one of "SEMANTIC", "SUMMARY", "CUSTOM"
    #   resp.memories[0].strategy_name #=> String
    #   resp.memories[0].content #=> String
    #   resp.memories[0].score #=> Float
    #   resp.memories[0].system_metadata.actor_id #=> String
    #   resp.memories[0].system_metadata.session_id #=> String
    #   resp.memories[0].system_metadata.created_at #=> Time
    #   resp.memories[0].system_metadata.updated_at #=> Time
    #   resp.memories[0].metadata #=> Hash
    #   resp.memories[0].metadata["MetadataKey"] #=> String
    #   resp.memories[0].source_event_ids #=> Array
    #   resp.memories[0].source_event_ids[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchmemory-2026-08-24/SearchMemories AWS API Documentation
    #
    # @overload search_memories(params = {})
    # @param [Hash] params ({})
    def search_memories(params = {}, options = {})
      req = build_request(:search_memories, params)
      req.send_request(options)
    end

    # Adds the specified tags to the specified space.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the space.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   The tags to add to the space.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "SpaceArn", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchmemory-2026-08-24/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes the specified tags from the specified space.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the space.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The keys of the tags to remove from the space.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "SpaceArn", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchmemory-2026-08-24/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates a memory in place. Supply only the fields to change. Omitted
    # fields keep their stored values. A request must supply `content` or
    # `metadata`, or it fails with `ValidationException`. Supplying
    # `content` re-embeds the memory. A change to metadata alone doesn't.
    #
    # The memory keeps its `memoryId` across updates. Shortly after an
    # update, searches stop returning the previous content.
    #
    # `memoryType` can't be changed. To change it, delete the memory and
    # create a new one.
    #
    # A memory past its expiry (set from the space's `memoryExpiryDays`
    # when the memory is written) reads as not found: the operation fails
    # with `ResourceNotFoundException` and changes nothing. An update does
    # not move the expiry.
    #
    # Concurrent updates to one memory are last-writer-wins. There is no
    # version check. To avoid lost updates, serialize your updates to a
    # memory.
    #
    # If you supply `content` and the request would exceed the service's
    # rate for embedding requests, it fails with `ThrottlingException`.
    # Retry with exponential backoff.
    #
    # If the space uses a customer managed AWS KMS key, the call can also
    # fail because of the key. It fails with `AccessDeniedException` if you
    # aren't allowed to use the key, and with `ThrottlingException` if AWS
    # KMS throttles the request. It fails with `ValidationException` if the
    # key is disabled, pending deletion, or deleted.
    #
    # @option params [required, String] :space_id
    #   The ID of the space that owns the memory, for example
    #   `sp-02864597b164`.
    #
    # @option params [required, String] :memory_id
    #   The ID of the memory to update.
    #
    # @option params [String] :content
    #   Replacement memory text. Supplying it re-embeds the memory. Omit to
    #   leave the text unchanged.
    #
    # @option params [Hash<String,String>] :metadata
    #   The metadata tags to apply. By default this map replaces the stored
    #   metadata, and any key not present is removed. Set `metadataMode` to
    #   `MERGE` to keep the keys you don't supply. Limits apply to the
    #   resulting metadata, not to the request. Keys that begin with `x-amz-`
    #   and the key `documentS3Source` are reserved: a request that sets one
    #   fails with `ValidationException`.
    #
    #   A space can use at most 50 distinct metadata keys across all of its
    #   events and memories. A request that would add a key beyond that fails
    #   with `ValidationException`. Reuse an existing key instead.
    #
    # @option params [String] :metadata_mode
    #   How `metadata` combines with what is stored. The default is `REPLACE`.
    #
    # @option params [String] :actor_id
    #   The ID of the actor that the memory must belong to. Omit it to skip
    #   this check. If it doesn't match the stored memory, the call fails
    #   with `ResourceNotFoundException`, as if the memory did not exist.
    #
    # @option params [String] :strategy_name
    #   The name of the strategy that the memory must belong to. Omit it to
    #   skip this check. If it doesn't match the stored memory, the call
    #   fails with `ResourceNotFoundException`, as if the memory did not
    #   exist.
    #
    # @return [Types::UpdateMemoryOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateMemoryOutput#memory #memory} => Types::Memory
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_memory({
    #     space_id: "SpaceId", # required
    #     memory_id: "MemoryId", # required
    #     content: "MemoryUpdateContent",
    #     metadata: {
    #       "MetadataKey" => "MetadataValue",
    #     },
    #     metadata_mode: "REPLACE", # accepts REPLACE, MERGE
    #     actor_id: "ActorId",
    #     strategy_name: "StrategyName",
    #   })
    #
    # @example Response structure
    #
    #   resp.memory.memory_id #=> String
    #   resp.memory.memory_type #=> String, one of "SEMANTIC", "SUMMARY", "CUSTOM"
    #   resp.memory.strategy_name #=> String
    #   resp.memory.content #=> String
    #   resp.memory.system_metadata.actor_id #=> String
    #   resp.memory.system_metadata.session_id #=> String
    #   resp.memory.system_metadata.created_at #=> Time
    #   resp.memory.system_metadata.updated_at #=> Time
    #   resp.memory.metadata #=> Hash
    #   resp.memory.metadata["MetadataKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchmemory-2026-08-24/UpdateMemory AWS API Documentation
    #
    # @overload update_memory(params = {})
    # @param [Hash] params ({})
    def update_memory(params = {}, options = {})
      req = build_request(:update_memory, params)
      req.send_request(options)
    end

    # Updates a space's memory strategies, retention settings, or
    # extraction model. Supply only the fields to change. Omitted fields
    # keep their current values.
    #
    # If the request changes the set of strategies, a strategy's
    # configuration, a retention setting, or the extraction model, the space
    # moves to `UPDATING`. When the change is complete, the space returns to
    # `ACTIVE`, or moves to `FAILED` if the change can't be applied. While
    # the space is `UPDATING`, `GetSpace` returns the previous
    # configuration. A request that only changes strategy descriptions or
    # repeats the values the space has stored is applied immediately and
    # doesn't change the status. Sending a retention value that the space
    # never set also moves the space to `UPDATING`, even one that matches
    # the behavior without it, such as 90 for `eventExpiryDays` or 0 for
    # `memoryExpiryDays`. A space that is `CREATING`, `UPDATING`, or
    # `DELETING` can't be updated: the request fails with
    # `ConflictException`.
    #
    # @option params [required, String] :space_id
    #   The ID of the space to update.
    #
    # @option params [Array<Types::MemoryStrategy>] :memory_strategies
    #   The complete new list of memory strategies. The service removes
    #   strategies that aren't in the list from the space. Removing a
    #   strategy stops extraction for it but doesn't delete its memories:
    #   they're kept, until they expire if the space sets `memoryExpiryDays`,
    #   and they're available again if you later add a strategy with the same
    #   `type` and `name`. To delete them, use `DeleteMemory` before you
    #   remove the strategy, or delete the space.
    #
    #   To keep a strategy, include it with the same `type` and `name` that
    #   `GetSpace` returns. For a kept strategy, any `configuration` member
    #   you omit keeps its current value. It doesn't return to the default,
    #   and you can't clear a member once it's set. Omit this field to leave
    #   the strategies unchanged. The list must name at least one strategy.
    #   You can't remove every strategy from a space with `UpdateSpace`.
    #
    #   The serialized list can be at most 384 KiB.
    #
    # @option params [Integer] :event_expiry_days
    #   How many days the space keeps each event, from 1 to 365. Omit it to
    #   leave the current value unchanged. Events already stored keep the
    #   expiry they were written with.
    #
    # @option params [Integer] :memory_expiry_days
    #   How many days the space keeps each memory, from 0 to 3650. 0 means
    #   memories never expire. Omit it to leave the current value unchanged.
    #   You can't clear the setting. To make memories written from then on
    #   never expire, send 0. `GetSpace` then returns 0.
    #
    #   A change applies to memories written after it. Memories already stored
    #   keep the expiry they were written with. A memory the service rewrites
    #   later, such as a summary it keeps up to date, takes the setting in
    #   force at that rewrite. A change moves the space to `UPDATING`. Sending
    #   the value that the space has stored doesn't.
    #
    # @option params [String] :extraction_model_id
    #   The model that extracts and consolidates memories for every strategy
    #   in the space: `anthropic.claude-opus-5-5` or
    #   `anthropic.claude-haiku-5-5`. Omit it to leave the current value
    #   unchanged. Once set, it can't be cleared back to the service default.
    #
    # @return [Types::UpdateSpaceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateSpaceResponse#space_id #space_id} => String
    #   * {Types::UpdateSpaceResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_space({
    #     space_id: "SpaceId", # required
    #     memory_strategies: [
    #       {
    #         type: "SEMANTIC", # required, accepts SEMANTIC, SUMMARY, CUSTOM
    #         name: "MemoryStrategyName",
    #         description: "MemoryStrategyDescription",
    #         configuration: {
    #           extraction_prompt: "ExtractionPrompt",
    #           extract_every_n_messages: 1,
    #           extract_every_n_tokens: 1,
    #           idle_timeout_seconds: 1,
    #           extraction_seed_top_k: 1,
    #           extraction_seed_recent_n: 1,
    #           consolidation_enabled: false,
    #         },
    #       },
    #     ],
    #     event_expiry_days: 1,
    #     memory_expiry_days: 1,
    #     extraction_model_id: "ExtractionModelId",
    #   })
    #
    # @example Response structure
    #
    #   resp.space_id #=> String
    #   resp.status #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETING", "DELETED", "FAILED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/opensearchmemory-2026-08-24/UpdateSpace AWS API Documentation
    #
    # @overload update_space(params = {})
    # @param [Hash] params ({})
    def update_space(params = {}, options = {})
      req = build_request(:update_space, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::OpenSearchMemory')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-opensearchmemory'
      context[:gem_version] = '1.1.0'
      Seahorse::Client::Request.new(handlers, context)
    end

    # Polls an API operation until a resource enters a desired state.
    #
    # ## Basic Usage
    #
    # A waiter will call an API operation until:
    #
    # * It is successful
    # * It enters a terminal state
    # * It makes the maximum number of attempts
    #
    # In between attempts, the waiter will sleep.
    #
    #     # polls in a loop, sleeping between attempts
    #     client.wait_until(waiter_name, params)
    #
    # ## Configuration
    #
    # You can configure the maximum number of polling attempts, and the
    # delay (in seconds) between each polling attempt. You can pass
    # configuration as the final arguments hash.
    #
    #     # poll for ~25 seconds
    #     client.wait_until(waiter_name, params, {
    #       max_attempts: 5,
    #       delay: 5,
    #     })
    #
    # ## Callbacks
    #
    # You can be notified before each polling attempt and before each
    # delay. If you throw `:success` or `:failure` from these callbacks,
    # it will terminate the waiter.
    #
    #     started_at = Time.now
    #     client.wait_until(waiter_name, params, {
    #
    #       # disable max attempts
    #       max_attempts: nil,
    #
    #       # poll for 1 hour, instead of a number of attempts
    #       before_wait: -> (attempts, response) do
    #         throw :failure if Time.now - started_at > 3600
    #       end
    #     })
    #
    # ## Handling Errors
    #
    # When a waiter is unsuccessful, it will raise an error.
    # All of the failure errors extend from
    # {Aws::Waiters::Errors::WaiterFailed}.
    #
    #     begin
    #       client.wait_until(...)
    #     rescue Aws::Waiters::Errors::WaiterFailed
    #       # resource did not enter the desired state in time
    #     end
    #
    # ## Valid Waiters
    #
    # The following table lists the valid waiter names, the operations they call,
    # and the default `:delay` and `:max_attempts` values.
    #
    # | waiter_name   | params             | :delay   | :max_attempts |
    # | ------------- | ------------------ | -------- | ------------- |
    # | space_active  | {Client#get_space} | 10       | 60            |
    # | space_deleted | {Client#get_space} | 10       | 60            |
    #
    # @raise [Errors::FailureStateError] Raised when the waiter terminates
    #   because the waiter has entered a state that it will not transition
    #   out of, preventing success.
    #
    # @raise [Errors::TooManyAttemptsError] Raised when the configured
    #   maximum number of attempts have been made, and the waiter is not
    #   yet successful.
    #
    # @raise [Errors::UnexpectedError] Raised when an error is encounted
    #   while polling for a resource that is not expected.
    #
    # @raise [Errors::NoSuchWaiterError] Raised when you request to wait
    #   for an unknown state.
    #
    # @return [Boolean] Returns `true` if the waiter was successful.
    # @param [Symbol] waiter_name
    # @param [Hash] params ({})
    # @param [Hash] options ({})
    # @option options [Integer] :max_attempts
    # @option options [Integer] :delay
    # @option options [Proc] :before_attempt
    # @option options [Proc] :before_wait
    def wait_until(waiter_name, params = {}, options = {})
      w = waiter(waiter_name, options)
      yield(w.waiter) if block_given? # deprecated
      w.wait(params)
    end

    # @api private
    # @deprecated
    def waiter_names
      waiters.keys
    end

    private

    # @param [Symbol] waiter_name
    # @param [Hash] options ({})
    def waiter(waiter_name, options = {})
      waiter_class = waiters[waiter_name]
      if waiter_class
        waiter_class.new(options.merge(client: self))
      else
        raise Aws::Waiters::Errors::NoSuchWaiterError.new(waiter_name, waiters.keys)
      end
    end

    def waiters
      {
        space_active: Waiters::SpaceActive,
        space_deleted: Waiters::SpaceDeleted
      }
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
