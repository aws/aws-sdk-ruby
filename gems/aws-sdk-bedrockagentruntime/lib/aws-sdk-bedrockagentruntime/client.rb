# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'seahorse/client/plugins/content_length.rb'
require 'aws-sdk-core/plugins/credentials_configuration.rb'
require 'aws-sdk-core/plugins/logging.rb'
require 'aws-sdk-core/plugins/param_converter.rb'
require 'aws-sdk-core/plugins/param_validator.rb'
require 'aws-sdk-core/plugins/user_agent.rb'
require 'aws-sdk-core/plugins/helpful_socket_errors.rb'
require 'aws-sdk-core/plugins/retry_errors.rb'
require 'aws-sdk-core/plugins/global_configuration.rb'
require 'aws-sdk-core/plugins/regional_endpoint.rb'
require 'aws-sdk-core/plugins/endpoint_discovery.rb'
require 'aws-sdk-core/plugins/endpoint_pattern.rb'
require 'aws-sdk-core/plugins/response_paging.rb'
require 'aws-sdk-core/plugins/stub_responses.rb'
require 'aws-sdk-core/plugins/idempotency_token.rb'
require 'aws-sdk-core/plugins/jsonvalue_converter.rb'
require 'aws-sdk-core/plugins/client_metrics_plugin.rb'
require 'aws-sdk-core/plugins/client_metrics_send_plugin.rb'
require 'aws-sdk-core/plugins/transfer_encoding.rb'
require 'aws-sdk-core/plugins/http_checksum.rb'
require 'aws-sdk-core/plugins/checksum_algorithm.rb'
require 'aws-sdk-core/plugins/request_compression.rb'
require 'aws-sdk-core/plugins/defaults_mode.rb'
require 'aws-sdk-core/plugins/recursion_detection.rb'
require 'aws-sdk-core/plugins/sign.rb'
require 'aws-sdk-core/plugins/protocols/rest_json.rb'
require 'aws-sdk-core/plugins/event_stream_configuration.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:bedrockagentruntime)

module Aws::BedrockAgentRuntime
  # An API client for BedrockAgentRuntime.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::BedrockAgentRuntime::Client.new(
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

    @identifier = :bedrockagentruntime

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
    add_plugin(Aws::Plugins::JsonvalueConverter)
    add_plugin(Aws::Plugins::ClientMetricsPlugin)
    add_plugin(Aws::Plugins::ClientMetricsSendPlugin)
    add_plugin(Aws::Plugins::TransferEncoding)
    add_plugin(Aws::Plugins::HttpChecksum)
    add_plugin(Aws::Plugins::ChecksumAlgorithm)
    add_plugin(Aws::Plugins::RequestCompression)
    add_plugin(Aws::Plugins::DefaultsMode)
    add_plugin(Aws::Plugins::RecursionDetection)
    add_plugin(Aws::Plugins::Sign)
    add_plugin(Aws::Plugins::Protocols::RestJson)
    add_plugin(Aws::Plugins::EventStreamConfiguration)
    add_plugin(Aws::BedrockAgentRuntime::Plugins::Endpoints)

    # @overload initialize(options)
    #   @param [Hash] options
    #   @option options [required, Aws::CredentialProvider] :credentials
    #     Your AWS credentials. This can be an instance of any one of the
    #     following classes:
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
    #     When `:credentials` are not configured directly, the following
    #     locations will be searched for credentials:
    #
    #     * `Aws.config[:credentials]`
    #     * The `:access_key_id`, `:secret_access_key`, and `:session_token` options.
    #     * ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY']
    #     * `~/.aws/credentials`
    #     * `~/.aws/config`
    #     * EC2/ECS IMDS instance profile - When used by default, the timeouts
    #       are very aggressive. Construct and pass an instance of
    #       `Aws::InstanceProfileCredentails` or `Aws::ECSCredentials` to
    #       enable retries and extended timeouts. Instance profile credential
    #       fetching can be disabled by setting ENV['AWS_EC2_METADATA_DISABLED']
    #       to true.
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
    #     Set to true to disable SDK automatically adding host prefix
    #     to default service endpoint when available.
    #
    #   @option options [Boolean] :disable_request_compression (false)
    #     When set to 'true' the request body will not be compressed
    #     for supported operations.
    #
    #   @option options [String] :endpoint
    #     The client endpoint is normally constructed from the `:region`
    #     option. You should only configure an `:endpoint` when connecting
    #     to test or custom endpoints. This should be a valid HTTP(S) URI.
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
    #     Used when loading credentials from the shared credentials file
    #     at HOME/.aws/credentials.  When not specified, 'default' is used.
    #
    #   @option options [Integer] :request_min_compression_size_bytes (10240)
    #     The minimum size in bytes that triggers compression for request
    #     bodies. The value must be non-negative integer value between 0
    #     and 10485780 bytes inclusive.
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
    #
    #   @option options [String] :sdk_ua_app_id
    #     A unique and opaque application ID that is appended to the
    #     User-Agent header as app/<sdk_ua_app_id>. It should have a
    #     maximum length of 50.
    #
    #   @option options [String] :secret_access_key
    #
    #   @option options [String] :session_token
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
    #   @option options [Aws::TokenProvider] :token_provider
    #     A Bearer Token Provider. This can be an instance of any one of the
    #     following classes:
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
    #   @option options [Aws::BedrockAgentRuntime::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::BedrockAgentRuntime::EndpointParameters`
    #
    #   @option options [URI::HTTP,String] :http_proxy A proxy to send
    #     requests through.  Formatted like 'http://proxy.com:123'.
    #
    #   @option options [Float] :http_open_timeout (15) The number of
    #     seconds to wait when opening a HTTP session before raising a
    #     `Timeout::Error`.
    #
    #   @option options [Float] :http_read_timeout (60) The default
    #     number of seconds to wait for response data.  This value can
    #     safely be set per-request on the session.
    #
    #   @option options [Float] :http_idle_timeout (5) The number of
    #     seconds a connection is allowed to sit idle before it is
    #     considered stale.  Stale connections are closed and removed
    #     from the pool before making a request.
    #
    #   @option options [Float] :http_continue_timeout (1) The number of
    #     seconds to wait for a 100-continue response before sending the
    #     request body.  This option has no effect unless the request has
    #     "Expect" header set to "100-continue".  Defaults to `nil` which
    #     disables this behaviour.  This value can safely be set per
    #     request on the session.
    #
    #   @option options [Float] :ssl_timeout (nil) Sets the SSL timeout
    #     in seconds.
    #
    #   @option options [Boolean] :http_wire_trace (false) When `true`,
    #     HTTP debug output will be sent to the `:logger`.
    #
    #   @option options [Boolean] :ssl_verify_peer (true) When `true`,
    #     SSL peer certificates are verified when establishing a
    #     connection.
    #
    #   @option options [String] :ssl_ca_bundle Full path to the SSL
    #     certificate authority bundle file that should be used when
    #     verifying peer certificates.  If you do not pass
    #     `:ssl_ca_bundle` or `:ssl_ca_directory` the the system default
    #     will be used if available.
    #
    #   @option options [String] :ssl_ca_directory Full path of the
    #     directory that contains the unbundled SSL certificate
    #     authority files for verifying peer certificates.  If you do
    #     not pass `:ssl_ca_bundle` or `:ssl_ca_directory` the the
    #     system default will be used if available.
    #
    def initialize(*args)
      super
    end

    # @!group API Operations

    # Invokes the specified Bedrock model to run inference using the input
    # provided in the request body.
    #
    # @option params [Types::SessionState] :session_state
    #   Session state passed by customer. Base64 encoded json string
    #   representation of SessionState.
    #
    # @option params [required, String] :agent_id
    #   Identifier for Agent
    #
    # @option params [required, String] :agent_alias_id
    #   Identifier for Agent Alias
    #
    # @option params [required, String] :session_id
    #   Identifier used for the current session
    #
    # @option params [Boolean] :end_session
    #   End current session
    #
    # @option params [Boolean] :enable_trace
    #   Enable agent trace events for improved debugging
    #
    # @option params [required, String] :input_text
    #   Input data in the format specified in the Content-Type request header.
    #
    # @return [Types::InvokeAgentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::InvokeAgentResponse#completion #completion} => Types::ResponseStream
    #   * {Types::InvokeAgentResponse#content_type #content_type} => String
    #   * {Types::InvokeAgentResponse#session_id #session_id} => String
    #
    # @example EventStream Operation Example
    #
    #   You can process event once it arrives immediately, or wait until
    #   full response complete and iterate through eventstream enumerator.
    #
    #   To interact with event immediately, you need to register #invoke_agent
    #   with callbacks, callbacks can be register for specifc events or for all events,
    #   callback for errors in the event stream is also available for register.
    #
    #   Callbacks can be passed in by `:event_stream_handler` option or within block
    #   statement attached to #invoke_agent call directly. Hybrid pattern of both
    #   is also supported.
    #
    #   `:event_stream_handler` option takes in either Proc object or
    #   Aws::BedrockAgentRuntime::EventStreams::ResponseStream object.
    #
    #   Usage pattern a): callbacks with a block attached to #invoke_agent
    #     Example for registering callbacks for all event types and error event
    #
    #     client.invoke_agent( # params input# ) do |stream|
    #       stream.on_error_event do |event|
    #         # catch unmodeled error event in the stream
    #         raise event
    #         # => Aws::Errors::EventError
    #         # event.event_type => :error
    #         # event.error_code => String
    #         # event.error_message => String
    #       end
    #
    #       stream.on_event do |event|
    #         # process all events arrive
    #         puts event.event_type
    #         ...
    #       end
    #
    #     end
    #
    #   Usage pattern b): pass in `:event_stream_handler` for #invoke_agent
    #
    #     1) create a Aws::BedrockAgentRuntime::EventStreams::ResponseStream object
    #     Example for registering callbacks with specific events
    #
    #       handler = Aws::BedrockAgentRuntime::EventStreams::ResponseStream.new
    #       handler.on_chunk_event do |event|
    #         event # => Aws::BedrockAgentRuntime::Types::chunk
    #       end
    #       handler.on_trace_event do |event|
    #         event # => Aws::BedrockAgentRuntime::Types::trace
    #       end
    #       handler.on_internal_server_exception_event do |event|
    #         event # => Aws::BedrockAgentRuntime::Types::internalServerException
    #       end
    #       handler.on_validation_exception_event do |event|
    #         event # => Aws::BedrockAgentRuntime::Types::validationException
    #       end
    #       handler.on_resource_not_found_exception_event do |event|
    #         event # => Aws::BedrockAgentRuntime::Types::resourceNotFoundException
    #       end
    #       handler.on_service_quota_exceeded_exception_event do |event|
    #         event # => Aws::BedrockAgentRuntime::Types::serviceQuotaExceededException
    #       end
    #       handler.on_throttling_exception_event do |event|
    #         event # => Aws::BedrockAgentRuntime::Types::throttlingException
    #       end
    #       handler.on_access_denied_exception_event do |event|
    #         event # => Aws::BedrockAgentRuntime::Types::accessDeniedException
    #       end
    #       handler.on_conflict_exception_event do |event|
    #         event # => Aws::BedrockAgentRuntime::Types::conflictException
    #       end
    #       handler.on_dependency_failed_exception_event do |event|
    #         event # => Aws::BedrockAgentRuntime::Types::dependencyFailedException
    #       end
    #       handler.on_bad_gateway_exception_event do |event|
    #         event # => Aws::BedrockAgentRuntime::Types::badGatewayException
    #       end
    #
    #     client.invoke_agent( # params input #, event_stream_handler: handler)
    #
    #     2) use a Ruby Proc object
    #     Example for registering callbacks with specific events
    #
    #     handler = Proc.new do |stream|
    #       stream.on_chunk_event do |event|
    #         event # => Aws::BedrockAgentRuntime::Types::chunk
    #       end
    #       stream.on_trace_event do |event|
    #         event # => Aws::BedrockAgentRuntime::Types::trace
    #       end
    #       stream.on_internal_server_exception_event do |event|
    #         event # => Aws::BedrockAgentRuntime::Types::internalServerException
    #       end
    #       stream.on_validation_exception_event do |event|
    #         event # => Aws::BedrockAgentRuntime::Types::validationException
    #       end
    #       stream.on_resource_not_found_exception_event do |event|
    #         event # => Aws::BedrockAgentRuntime::Types::resourceNotFoundException
    #       end
    #       stream.on_service_quota_exceeded_exception_event do |event|
    #         event # => Aws::BedrockAgentRuntime::Types::serviceQuotaExceededException
    #       end
    #       stream.on_throttling_exception_event do |event|
    #         event # => Aws::BedrockAgentRuntime::Types::throttlingException
    #       end
    #       stream.on_access_denied_exception_event do |event|
    #         event # => Aws::BedrockAgentRuntime::Types::accessDeniedException
    #       end
    #       stream.on_conflict_exception_event do |event|
    #         event # => Aws::BedrockAgentRuntime::Types::conflictException
    #       end
    #       stream.on_dependency_failed_exception_event do |event|
    #         event # => Aws::BedrockAgentRuntime::Types::dependencyFailedException
    #       end
    #       stream.on_bad_gateway_exception_event do |event|
    #         event # => Aws::BedrockAgentRuntime::Types::badGatewayException
    #       end
    #     end
    #
    #     client.invoke_agent( # params input #, event_stream_handler: handler)
    #
    #   Usage pattern c): hybird pattern of a) and b)
    #
    #       handler = Aws::BedrockAgentRuntime::EventStreams::ResponseStream.new
    #       handler.on_chunk_event do |event|
    #         event # => Aws::BedrockAgentRuntime::Types::chunk
    #       end
    #       handler.on_trace_event do |event|
    #         event # => Aws::BedrockAgentRuntime::Types::trace
    #       end
    #       handler.on_internal_server_exception_event do |event|
    #         event # => Aws::BedrockAgentRuntime::Types::internalServerException
    #       end
    #       handler.on_validation_exception_event do |event|
    #         event # => Aws::BedrockAgentRuntime::Types::validationException
    #       end
    #       handler.on_resource_not_found_exception_event do |event|
    #         event # => Aws::BedrockAgentRuntime::Types::resourceNotFoundException
    #       end
    #       handler.on_service_quota_exceeded_exception_event do |event|
    #         event # => Aws::BedrockAgentRuntime::Types::serviceQuotaExceededException
    #       end
    #       handler.on_throttling_exception_event do |event|
    #         event # => Aws::BedrockAgentRuntime::Types::throttlingException
    #       end
    #       handler.on_access_denied_exception_event do |event|
    #         event # => Aws::BedrockAgentRuntime::Types::accessDeniedException
    #       end
    #       handler.on_conflict_exception_event do |event|
    #         event # => Aws::BedrockAgentRuntime::Types::conflictException
    #       end
    #       handler.on_dependency_failed_exception_event do |event|
    #         event # => Aws::BedrockAgentRuntime::Types::dependencyFailedException
    #       end
    #       handler.on_bad_gateway_exception_event do |event|
    #         event # => Aws::BedrockAgentRuntime::Types::badGatewayException
    #       end
    #
    #     client.invoke_agent( # params input #, event_stream_handler: handler) do |stream|
    #       stream.on_error_event do |event|
    #         # catch unmodeled error event in the stream
    #         raise event
    #         # => Aws::Errors::EventError
    #         # event.event_type => :error
    #         # event.error_code => String
    #         # event.error_message => String
    #       end
    #     end
    #
    #   Besides above usage patterns for process events when they arrive immediately, you can also
    #   iterate through events after response complete.
    #
    #   Events are available at resp.completion # => Enumerator
    #   For parameter input example, please refer to following request syntax
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.invoke_agent({
    #     session_state: {
    #       session_attributes: {
    #         "String" => "String",
    #       },
    #       prompt_session_attributes: {
    #         "String" => "String",
    #       },
    #     },
    #     agent_id: "AgentId", # required
    #     agent_alias_id: "AgentAliasId", # required
    #     session_id: "SessionId", # required
    #     end_session: false,
    #     enable_trace: false,
    #     input_text: "InputText", # required
    #   })
    #
    # @example Response structure
    #
    #   All events are available at resp.completion:
    #   resp.completion #=> Enumerator
    #   resp.completion.event_types #=> [:chunk, :trace, :internal_server_exception, :validation_exception, :resource_not_found_exception, :service_quota_exceeded_exception, :throttling_exception, :access_denied_exception, :conflict_exception, :dependency_failed_exception, :bad_gateway_exception]
    #
    #   For :chunk event available at #on_chunk_event callback and response eventstream enumerator:
    #   event.bytes #=> String
    #   event.attribution.citations #=> Array
    #   event.attribution.citations[0].generated_response_part.text_response_part.text #=> String
    #   event.attribution.citations[0].generated_response_part.text_response_part.span.start #=> Integer
    #   event.attribution.citations[0].generated_response_part.text_response_part.span.end #=> Integer
    #   event.attribution.citations[0].retrieved_references #=> Array
    #   event.attribution.citations[0].retrieved_references[0].content.text #=> String
    #   event.attribution.citations[0].retrieved_references[0].location.type #=> String, one of "S3"
    #   event.attribution.citations[0].retrieved_references[0].location.s3_location.uri #=> String
    #
    #   For :trace event available at #on_trace_event callback and response eventstream enumerator:
    #   event.agent_id #=> String
    #   event.agent_alias_id #=> String
    #   event.session_id #=> String
    #   event.trace.pre_processing_trace.model_invocation_input.trace_id #=> String
    #   event.trace.pre_processing_trace.model_invocation_input.text #=> String
    #   event.trace.pre_processing_trace.model_invocation_input.type #=> String, one of "PRE_PROCESSING", "ORCHESTRATION", "KNOWLEDGE_BASE_RESPONSE_GENERATION", "POST_PROCESSING"
    #   event.trace.pre_processing_trace.model_invocation_input.inference_configuration.temperature #=> Float
    #   event.trace.pre_processing_trace.model_invocation_input.inference_configuration.top_p #=> Float
    #   event.trace.pre_processing_trace.model_invocation_input.inference_configuration.top_k #=> Integer
    #   event.trace.pre_processing_trace.model_invocation_input.inference_configuration.maximum_length #=> Integer
    #   event.trace.pre_processing_trace.model_invocation_input.inference_configuration.stop_sequences #=> Array
    #   event.trace.pre_processing_trace.model_invocation_input.inference_configuration.stop_sequences[0] #=> String
    #   event.trace.pre_processing_trace.model_invocation_input.override_lambda #=> String
    #   event.trace.pre_processing_trace.model_invocation_input.prompt_creation_mode #=> String, one of "DEFAULT", "OVERRIDDEN"
    #   event.trace.pre_processing_trace.model_invocation_input.parser_mode #=> String, one of "DEFAULT", "OVERRIDDEN"
    #   event.trace.pre_processing_trace.model_invocation_output.trace_id #=> String
    #   event.trace.pre_processing_trace.model_invocation_output.parsed_response.rationale #=> String
    #   event.trace.pre_processing_trace.model_invocation_output.parsed_response.is_valid #=> Boolean
    #   event.trace.orchestration_trace.rationale.trace_id #=> String
    #   event.trace.orchestration_trace.rationale.text #=> String
    #   event.trace.orchestration_trace.invocation_input.trace_id #=> String
    #   event.trace.orchestration_trace.invocation_input.invocation_type #=> String, one of "ACTION_GROUP", "KNOWLEDGE_BASE", "FINISH"
    #   event.trace.orchestration_trace.invocation_input.action_group_invocation_input.action_group_name #=> String
    #   event.trace.orchestration_trace.invocation_input.action_group_invocation_input.verb #=> String
    #   event.trace.orchestration_trace.invocation_input.action_group_invocation_input.api_path #=> String
    #   event.trace.orchestration_trace.invocation_input.action_group_invocation_input.parameters #=> Array
    #   event.trace.orchestration_trace.invocation_input.action_group_invocation_input.parameters[0].name #=> String
    #   event.trace.orchestration_trace.invocation_input.action_group_invocation_input.parameters[0].type #=> String
    #   event.trace.orchestration_trace.invocation_input.action_group_invocation_input.parameters[0].value #=> String
    #   event.trace.orchestration_trace.invocation_input.action_group_invocation_input.request_body.content #=> Hash
    #   event.trace.orchestration_trace.invocation_input.action_group_invocation_input.request_body.content["String"] #=> Array
    #   event.trace.orchestration_trace.invocation_input.action_group_invocation_input.request_body.content["String"][0].name #=> String
    #   event.trace.orchestration_trace.invocation_input.action_group_invocation_input.request_body.content["String"][0].type #=> String
    #   event.trace.orchestration_trace.invocation_input.action_group_invocation_input.request_body.content["String"][0].value #=> String
    #   event.trace.orchestration_trace.invocation_input.knowledge_base_lookup_input.text #=> String
    #   event.trace.orchestration_trace.invocation_input.knowledge_base_lookup_input.knowledge_base_id #=> String
    #   event.trace.orchestration_trace.observation.trace_id #=> String
    #   event.trace.orchestration_trace.observation.type #=> String, one of "ACTION_GROUP", "KNOWLEDGE_BASE", "FINISH", "ASK_USER", "REPROMPT"
    #   event.trace.orchestration_trace.observation.action_group_invocation_output.text #=> String
    #   event.trace.orchestration_trace.observation.knowledge_base_lookup_output.retrieved_references #=> Array
    #   event.trace.orchestration_trace.observation.knowledge_base_lookup_output.retrieved_references[0].content.text #=> String
    #   event.trace.orchestration_trace.observation.knowledge_base_lookup_output.retrieved_references[0].location.type #=> String, one of "S3"
    #   event.trace.orchestration_trace.observation.knowledge_base_lookup_output.retrieved_references[0].location.s3_location.uri #=> String
    #   event.trace.orchestration_trace.observation.final_response.text #=> String
    #   event.trace.orchestration_trace.observation.reprompt_response.text #=> String
    #   event.trace.orchestration_trace.observation.reprompt_response.source #=> String, one of "ACTION_GROUP", "KNOWLEDGE_BASE", "PARSER"
    #   event.trace.orchestration_trace.model_invocation_input.trace_id #=> String
    #   event.trace.orchestration_trace.model_invocation_input.text #=> String
    #   event.trace.orchestration_trace.model_invocation_input.type #=> String, one of "PRE_PROCESSING", "ORCHESTRATION", "KNOWLEDGE_BASE_RESPONSE_GENERATION", "POST_PROCESSING"
    #   event.trace.orchestration_trace.model_invocation_input.inference_configuration.temperature #=> Float
    #   event.trace.orchestration_trace.model_invocation_input.inference_configuration.top_p #=> Float
    #   event.trace.orchestration_trace.model_invocation_input.inference_configuration.top_k #=> Integer
    #   event.trace.orchestration_trace.model_invocation_input.inference_configuration.maximum_length #=> Integer
    #   event.trace.orchestration_trace.model_invocation_input.inference_configuration.stop_sequences #=> Array
    #   event.trace.orchestration_trace.model_invocation_input.inference_configuration.stop_sequences[0] #=> String
    #   event.trace.orchestration_trace.model_invocation_input.override_lambda #=> String
    #   event.trace.orchestration_trace.model_invocation_input.prompt_creation_mode #=> String, one of "DEFAULT", "OVERRIDDEN"
    #   event.trace.orchestration_trace.model_invocation_input.parser_mode #=> String, one of "DEFAULT", "OVERRIDDEN"
    #   event.trace.post_processing_trace.model_invocation_input.trace_id #=> String
    #   event.trace.post_processing_trace.model_invocation_input.text #=> String
    #   event.trace.post_processing_trace.model_invocation_input.type #=> String, one of "PRE_PROCESSING", "ORCHESTRATION", "KNOWLEDGE_BASE_RESPONSE_GENERATION", "POST_PROCESSING"
    #   event.trace.post_processing_trace.model_invocation_input.inference_configuration.temperature #=> Float
    #   event.trace.post_processing_trace.model_invocation_input.inference_configuration.top_p #=> Float
    #   event.trace.post_processing_trace.model_invocation_input.inference_configuration.top_k #=> Integer
    #   event.trace.post_processing_trace.model_invocation_input.inference_configuration.maximum_length #=> Integer
    #   event.trace.post_processing_trace.model_invocation_input.inference_configuration.stop_sequences #=> Array
    #   event.trace.post_processing_trace.model_invocation_input.inference_configuration.stop_sequences[0] #=> String
    #   event.trace.post_processing_trace.model_invocation_input.override_lambda #=> String
    #   event.trace.post_processing_trace.model_invocation_input.prompt_creation_mode #=> String, one of "DEFAULT", "OVERRIDDEN"
    #   event.trace.post_processing_trace.model_invocation_input.parser_mode #=> String, one of "DEFAULT", "OVERRIDDEN"
    #   event.trace.post_processing_trace.model_invocation_output.trace_id #=> String
    #   event.trace.post_processing_trace.model_invocation_output.parsed_response.text #=> String
    #   event.trace.failure_trace.trace_id #=> String
    #   event.trace.failure_trace.failure_reason #=> String
    #
    #   For :internal_server_exception event available at #on_internal_server_exception_event callback and response eventstream enumerator:
    #   event.message #=> String
    #
    #   For :validation_exception event available at #on_validation_exception_event callback and response eventstream enumerator:
    #   event.message #=> String
    #
    #   For :resource_not_found_exception event available at #on_resource_not_found_exception_event callback and response eventstream enumerator:
    #   event.message #=> String
    #
    #   For :service_quota_exceeded_exception event available at #on_service_quota_exceeded_exception_event callback and response eventstream enumerator:
    #   event.message #=> String
    #
    #   For :throttling_exception event available at #on_throttling_exception_event callback and response eventstream enumerator:
    #   event.message #=> String
    #
    #   For :access_denied_exception event available at #on_access_denied_exception_event callback and response eventstream enumerator:
    #   event.message #=> String
    #
    #   For :conflict_exception event available at #on_conflict_exception_event callback and response eventstream enumerator:
    #   event.message #=> String
    #
    #   For :dependency_failed_exception event available at #on_dependency_failed_exception_event callback and response eventstream enumerator:
    #   event.message #=> String
    #   event.resource_name #=> String
    #
    #   For :bad_gateway_exception event available at #on_bad_gateway_exception_event callback and response eventstream enumerator:
    #   event.message #=> String
    #   event.resource_name #=> String
    #
    #   resp.content_type #=> String
    #   resp.session_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/InvokeAgent AWS API Documentation
    #
    # @overload invoke_agent(params = {})
    # @param [Hash] params ({})
    def invoke_agent(params = {}, options = {}, &block)
      params = params.dup
      event_stream_handler = case handler = params.delete(:event_stream_handler)
        when EventStreams::ResponseStream then handler
        when Proc then EventStreams::ResponseStream.new.tap(&handler)
        when nil then EventStreams::ResponseStream.new
        else
          msg = "expected :event_stream_handler to be a block or "\
                "instance of Aws::BedrockAgentRuntime::EventStreams::ResponseStream"\
                ", got `#{handler.inspect}` instead"
          raise ArgumentError, msg
        end

      yield(event_stream_handler) if block_given?

      req = build_request(:invoke_agent, params)

      req.context[:event_stream_handler] = event_stream_handler
      req.handlers.add(Aws::Binary::DecodeHandler, priority: 95)

      req.send_request(options, &block)
    end

    # Retrieve from knowledge base.
    #
    # @option params [required, String] :knowledge_base_id
    #   Identifier of the KnowledgeBase
    #
    # @option params [required, Types::KnowledgeBaseQuery] :retrieval_query
    #   Knowledge base input query.
    #
    # @option params [Types::KnowledgeBaseRetrievalConfiguration] :retrieval_configuration
    #   Search parameters for retrieving from knowledge base.
    #
    # @option params [String] :next_token
    #   Opaque continuation token of previous paginated response.
    #
    # @return [Types::RetrieveResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RetrieveResponse#retrieval_results #retrieval_results} => Array&lt;Types::KnowledgeBaseRetrievalResult&gt;
    #   * {Types::RetrieveResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.retrieve({
    #     knowledge_base_id: "KnowledgeBaseId", # required
    #     retrieval_query: { # required
    #       text: "KnowledgeBaseQueryTextString", # required
    #     },
    #     retrieval_configuration: {
    #       vector_search_configuration: { # required
    #         number_of_results: 1, # required
    #       },
    #     },
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.retrieval_results #=> Array
    #   resp.retrieval_results[0].content.text #=> String
    #   resp.retrieval_results[0].location.type #=> String, one of "S3"
    #   resp.retrieval_results[0].location.s3_location.uri #=> String
    #   resp.retrieval_results[0].score #=> Float
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/Retrieve AWS API Documentation
    #
    # @overload retrieve(params = {})
    # @param [Hash] params ({})
    def retrieve(params = {}, options = {})
      req = build_request(:retrieve, params)
      req.send_request(options)
    end

    # RetrieveAndGenerate API
    #
    # @option params [String] :session_id
    #   Identifier of the session.
    #
    # @option params [required, Types::RetrieveAndGenerateInput] :input
    #   Customer input of the turn
    #
    # @option params [Types::RetrieveAndGenerateConfiguration] :retrieve_and_generate_configuration
    #   Configures the retrieval and generation for the session.
    #
    # @option params [Types::RetrieveAndGenerateSessionConfiguration] :session_configuration
    #   Configures common parameters of the session.
    #
    # @return [Types::RetrieveAndGenerateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RetrieveAndGenerateResponse#session_id #session_id} => String
    #   * {Types::RetrieveAndGenerateResponse#output #output} => Types::RetrieveAndGenerateOutput
    #   * {Types::RetrieveAndGenerateResponse#citations #citations} => Array&lt;Types::Citation&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.retrieve_and_generate({
    #     session_id: "SessionId",
    #     input: { # required
    #       text: "RetrieveAndGenerateInputTextString", # required
    #     },
    #     retrieve_and_generate_configuration: {
    #       type: "KNOWLEDGE_BASE", # required, accepts KNOWLEDGE_BASE
    #       knowledge_base_configuration: {
    #         knowledge_base_id: "KnowledgeBaseId", # required
    #         model_arn: "BedrockModelArn", # required
    #       },
    #     },
    #     session_configuration: {
    #       kms_key_arn: "KmsKeyArn", # required
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.session_id #=> String
    #   resp.output.text #=> String
    #   resp.citations #=> Array
    #   resp.citations[0].generated_response_part.text_response_part.text #=> String
    #   resp.citations[0].generated_response_part.text_response_part.span.start #=> Integer
    #   resp.citations[0].generated_response_part.text_response_part.span.end #=> Integer
    #   resp.citations[0].retrieved_references #=> Array
    #   resp.citations[0].retrieved_references[0].content.text #=> String
    #   resp.citations[0].retrieved_references[0].location.type #=> String, one of "S3"
    #   resp.citations[0].retrieved_references[0].location.s3_location.uri #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agent-runtime-2023-07-26/RetrieveAndGenerate AWS API Documentation
    #
    # @overload retrieve_and_generate(params = {})
    # @param [Hash] params ({})
    def retrieve_and_generate(params = {}, options = {})
      req = build_request(:retrieve_and_generate, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config)
      context[:gem_name] = 'aws-sdk-bedrockagentruntime'
      context[:gem_version] = '1.1.0'
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
