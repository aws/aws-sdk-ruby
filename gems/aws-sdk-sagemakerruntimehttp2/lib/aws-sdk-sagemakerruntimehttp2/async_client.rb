# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

begin
  require 'http/2'
rescue LoadError; end
require 'aws-sdk-core/plugins/credentials_configuration'
require 'aws-sdk-core/plugins/logging'
require 'aws-sdk-core/plugins/param_converter'
require 'aws-sdk-core/plugins/param_validator'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/helpful_socket_errors'
require 'aws-sdk-core/plugins/retry_errors'
require 'aws-sdk-core/plugins/global_configuration'
require 'aws-sdk-core/plugins/regional_endpoint'
require 'aws-sdk-core/plugins/stub_responses'
require 'aws-sdk-core/plugins/idempotency_token'
require 'aws-sdk-core/plugins/invocation_id'
require 'aws-sdk-core/plugins/jsonvalue_converter'
require 'aws-sdk-core/plugins/http_checksum'
require 'aws-sdk-core/plugins/checksum_algorithm'
require 'aws-sdk-core/plugins/request_compression'
require 'aws-sdk-core/plugins/defaults_mode'
require 'aws-sdk-core/plugins/recursion_detection'
require 'aws-sdk-core/plugins/telemetry'
require 'aws-sdk-core/plugins/sign'
require 'aws-sdk-core/plugins/protocols/rest_json'
require 'aws-sdk-core/plugins/event_stream_configuration'

Aws::Plugins::GlobalConfiguration.add_identifier(:sagemakerruntimehttp2)

module Aws::SageMakerRuntimeHTTP2
  # An API async client for SageMakerRuntimeHTTP2.  To construct an async client, you need to configure a `:region` and `:credentials`.
  #
  #     async_client = Aws::SageMakerRuntimeHTTP2::AsyncClient.new(
  #       region: region_name,
  #       credentials: credentials,
  #       # ...
  #     )
  #
  # For details on configuring region and credentials see
  # the [developer guide](/sdk-for-ruby/v3/developer-guide/setup-config.html).
  #
  # See {#initialize} for a full list of supported configuration options.
  class AsyncClient < Seahorse::Client::AsyncBase

    include Aws::AsyncClientStubs

    @identifier = :sagemakerruntimehttp2

    set_api(ClientApi::API)

    add_plugin(Aws::Plugins::CredentialsConfiguration)
    add_plugin(Aws::Plugins::Logging)
    add_plugin(Aws::Plugins::ParamConverter)
    add_plugin(Aws::Plugins::ParamValidator)
    add_plugin(Aws::Plugins::UserAgent)
    add_plugin(Aws::Plugins::HelpfulSocketErrors)
    add_plugin(Aws::Plugins::RetryErrors)
    add_plugin(Aws::Plugins::GlobalConfiguration)
    add_plugin(Aws::Plugins::RegionalEndpoint)
    add_plugin(Aws::Plugins::StubResponses)
    add_plugin(Aws::Plugins::IdempotencyToken)
    add_plugin(Aws::Plugins::InvocationId)
    add_plugin(Aws::Plugins::JsonvalueConverter)
    add_plugin(Aws::Plugins::HttpChecksum)
    add_plugin(Aws::Plugins::ChecksumAlgorithm)
    add_plugin(Aws::Plugins::RequestCompression)
    add_plugin(Aws::Plugins::DefaultsMode)
    add_plugin(Aws::Plugins::RecursionDetection)
    add_plugin(Aws::Plugins::Telemetry)
    add_plugin(Aws::Plugins::Sign)
    add_plugin(Aws::Plugins::Protocols::RestJson)
    add_plugin(Aws::Plugins::EventStreamConfiguration)
    add_plugin(Aws::SageMakerRuntimeHTTP2::Plugins::Endpoints)

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
    #   @option options [Aws::SageMakerRuntimeHTTP2::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::SageMakerRuntimeHTTP2::EndpointParameters`.
    #
    #   @option options [Integer] :connection_read_timeout (60)
    #     Connection read timeout in seconds, defaults to 60 sec.
    #
    #   @option options [Integer] :connection_timeout (60)
    #     Connection timeout in seconds, defaults to 60 sec.
    #
    #   @option options [Boolean] :enable_alpn (true)
    #     Set to `false` to disable ALPN in HTTP2 over TLS. ALPN requires Openssl version >= 1.0.2.
    #     Note: RFC7540 requires HTTP2 to use ALPN over TLS but some
    #     services may not fully support ALPN and require setting this to `false`.
    #
    #   @option options [Boolean] :http_wire_trace (false)
    #     When `true`, HTTP2 debug output will be sent to the `:logger`.
    #
    #   @option options [Integer] :max_concurrent_streams (100)
    #     Maximum concurrent streams used in HTTP2 connection, defaults to 100. Note that server may send back
    #     :settings_max_concurrent_streams value which will take priority when initializing new streams.
    #
    #   @option options [Boolean] :raise_response_errors (true)
    #     Defaults to `true`, raises errors if exist when #wait or #join! is called upon async response.
    #
    #   @option options [Integer] :read_chunk_size (1024)
    #
    #   @option options [String] :ssl_ca_bundle
    #     Full path to the SSL certificate authority bundle file that should be used when
    #     verifying peer certificates. If you do not pass `:ssl_ca_directory` or `:ssl_ca_bundle`
    #     the system default will be used if available.
    #
    #   @option options [String] :ssl_ca_directory
    #     Full path of the directory that contains the unbundled SSL certificate authority
    #     files for verifying peer certificates. If you do not pass `:ssl_ca_bundle` or
    #     `:ssl_ca_directory` the system default will be used if available.
    #
    #   @option options [String] :ssl_ca_store
    #
    #   @option options [Boolean] :ssl_verify_peer (true)
    #     When `true`, SSL peer certificates are verified when establishing a connection.
    #
    def initialize(*args)
      unless Kernel.const_defined?("HTTP2")
        raise "Must include http/2 gem to use AsyncClient instances."
      end
      super
    end

    # @!group API Operations

    # Invokes a model endpoint with bidirectional streaming capabilities.
    # This operation establishes a persistent connection that allows you to
    # send multiple requests and receive streaming responses from the model
    # in real-time.
    #
    # Bidirectional streaming is useful for interactive applications such as
    # chatbots, real-time translation, or any scenario where you need to
    # maintain a conversation-like interaction with the model. The
    # connection remains open, allowing you to send additional input and
    # receive responses without establishing a new connection for each
    # request.
    #
    # For an overview of Amazon SageMaker AI, see [How It Works][1].
    #
    # Amazon SageMaker AI strips all POST headers except those supported by
    # the API. Amazon SageMaker AI might add additional headers. You should
    # not rely on the behavior of headers outside those enumerated in the
    # request syntax.
    #
    # Calls to `InvokeEndpointWithBidirectionalStream` are authenticated by
    # using Amazon Web Services Signature Version 4. For information, see
    # [Authenticating Requests (Amazon Web Services Signature Version 4)][2]
    # in the *Amazon S3 API Reference*.
    #
    # The bidirectional stream maintains the connection until either the
    # client closes it or the model indicates completion. Each request and
    # response in the stream is sent as an event with optional headers for
    # data type and completion state.
    #
    # <note markdown="1"> Endpoints are scoped to an individual account, and are not public. The
    # URL does not contain the account ID, but Amazon SageMaker AI
    # determines the account ID from the authentication token that is
    # supplied by the caller.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/sagemaker/latest/dg/how-it-works.html
    # [2]: https://docs.aws.amazon.com/AmazonS3/latest/API/sig-v4-authenticating-requests.html
    #
    # @option params [required, String] :endpoint_name
    #   The name of the endpoint to invoke.
    #
    # @option params [String] :target_variant
    #   Target variant for the request.
    #
    # @option params [String] :model_invocation_path
    #   Model invocation path.
    #
    # @option params [String] :model_query_string
    #   Model query string.
    #
    # @return [Types::InvokeEndpointWithBidirectionalStreamOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::InvokeEndpointWithBidirectionalStreamOutput#body #body} => Types::ResponseStreamEvent
    #   * {Types::InvokeEndpointWithBidirectionalStreamOutput#invoked_production_variant #invoked_production_variant} => String
    #
    # @example Bi-directional EventStream Operation Example
    #   # You can signal input events after the initial request is established. Events
    #   # will be sent to the stream immediately once the stream connection is
    #   # established successfully.
    #
    #   # To signal events, you can call the #signal methods from an
    #   # Aws::SageMakerRuntimeHTTP2::EventStreams::RequestStreamEvent object.
    #   # You must signal events before calling #wait or #join! on the async response.
    #   input_stream = Aws::SageMakerRuntimeHTTP2::EventStreams::RequestStreamEvent.new
    #
    #   async_resp = client.invoke_endpoint_with_bidirectional_stream(
    #     # params input
    #     input_event_stream_handler: input_stream
    #   ) do |out_stream|
    #     # register callbacks for events
    #     out_stream.on_payload_part_event do |event|
    #       event # => Aws::SageMakerRuntimeHTTP2::Types::PayloadPart
    #     end
    #     out_stream.on_model_stream_error_event do |event|
    #       event # => Aws::SageMakerRuntimeHTTP2::Types::ModelStreamError
    #     end
    #     out_stream.on_internal_stream_failure_event do |event|
    #       event # => Aws::SageMakerRuntimeHTTP2::Types::InternalStreamFailure
    #     end
    #   end
    #   # => Aws::Seahorse::Client::AsyncResponse
    #
    #   # signal events
    #   input_stream.signal_payload_part_event(
    #     # ...
    #   )
    #
    #   # make sure to signal :end_stream at the end
    #   input_stream.signal_end_stream
    #
    #   # wait until stream is closed before finalizing the sync response
    #   resp = async_resp.wait
    #
    #   # Or close the stream and finalize sync response immediately
    #   resp = async_resp.join!
    #
    #   # You can also provide an Aws::SageMakerRuntimeHTTP2::EventStreams::ResponseStreamEvent object
    #   # to register callbacks before initializing the request instead of processing
    #   # from the request block.
    #   output_stream = Aws::SageMakerRuntimeHTTP2::EventStreams::ResponseStreamEvent.new
    #
    #   # register callbacks for output events
    #   output_stream.on_payload_part_event do |event|
    #     event # => Aws::SageMakerRuntimeHTTP2::Types::PayloadPart
    #   end
    #   output_stream.on_model_stream_error_event do |event|
    #     event # => Aws::SageMakerRuntimeHTTP2::Types::ModelStreamError
    #   end
    #   output_stream.on_internal_stream_failure_event do |event|
    #     event # => Aws::SageMakerRuntimeHTTP2::Types::InternalStreamFailure
    #   end
    #   output_stream.on_error_event do |event|
    #     # catch unmodeled error event in the stream
    #     raise event
    #     # => Aws::Errors::EventError
    #     # event.event_type => :error
    #     # event.error_code => String
    #     # event.error_message => String
    #   end
    #
    #   async_resp = client.invoke_endpoint_with_bidirectional_stream(
    #     # params input
    #     input_event_stream_handler: input_stream,
    #     output_event_stream_handler: output_stream
    #   )
    #   resp = async_resp.join!
    #
    #   # You can also iterate through events after the response is complete.
    #   # Events are available at
    #   resp.body # => Enumerator
    #
    # @example Request syntax with placeholder values
    #
    #   async_resp = async_client.invoke_endpoint_with_bidirectional_stream({
    #     endpoint_name: "InvokeEndpointWithBidirectionalStreamInputEndpointNameString", # required
    #     input_event_stream_hander: EventStreams::RequestStreamEvent.new,
    #     target_variant: "InvokeEndpointWithBidirectionalStreamInputTargetVariantString",
    #     model_invocation_path: "InvokeEndpointWithBidirectionalStreamInputModelInvocationPathString",
    #     model_query_string: "InvokeEndpointWithBidirectionalStreamInputModelQueryStringString",
    #   })
    #   # => Seahorse::Client::AsyncResponse
    #   async_resp.wait
    #   # => Seahorse::Client::Response
    #   # Or use async_resp.join!
    #
    # @example Response structure
    #
    #   # All events are available at resp.body:
    #   resp.body #=> Enumerator
    #   resp.body.event_types #=> [:payload_part, :model_stream_error, :internal_stream_failure]
    #
    #   # For :payload_part event available at #on_payload_part_event callback and response eventstream enumerator:
    #   event.bytes #=> String
    #   event.data_type #=> String
    #   event.completion_state #=> String
    #   event.p #=> String
    #
    #   # For :model_stream_error event available at #on_model_stream_error_event callback and response eventstream enumerator:
    #   event.message #=> String
    #   event.error_code #=> String
    #
    #   # For :internal_stream_failure event available at #on_internal_stream_failure_event callback and response eventstream enumerator:
    #   event.message #=> String
    #
    #   resp.invoked_production_variant #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-runtime-http2-2025-10-01/InvokeEndpointWithBidirectionalStream AWS API Documentation
    #
    # @overload invoke_endpoint_with_bidirectional_stream(params = {})
    # @param [Hash] params ({})
    def invoke_endpoint_with_bidirectional_stream(params = {}, options = {}, &block)
      params = params.dup
      input_event_stream_handler = _event_stream_handler(
        :input,
        params.delete(:input_event_stream_handler),
        EventStreams::RequestStreamEvent
      )
      output_event_stream_handler = _event_stream_handler(
        :output,
        params.delete(:output_event_stream_handler) || params.delete(:event_stream_handler),
        EventStreams::ResponseStreamEvent
      )

      yield(output_event_stream_handler) if block_given?

      req = build_request(:invoke_endpoint_with_bidirectional_stream, params)

      req.context[:input_event_stream_handler] = input_event_stream_handler
      req.handlers.add(Aws::Binary::EncodeHandler, priority: 55)
      req.context[:output_event_stream_handler] = output_event_stream_handler
      req.handlers.add(Aws::Binary::DecodeHandler, priority: 55)

      req.send_request(options, &block)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::SageMakerRuntimeHTTP2')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        http_response: Seahorse::Client::Http::AsyncResponse.new,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-sagemakerruntimehttp2'
      context[:gem_version] = '1.0.0'
      Seahorse::Client::Request.new(handlers, context)
    end

    private

    def _event_stream_handler(type, handler, event_stream_class)
      case handler
      when event_stream_class then handler
      when Proc then event_stream_class.new.tap(&handler)
      when nil then event_stream_class.new
      else
        msg = "expected #{type}_event_stream_handler to be a block or "\
              "instance of Aws::SageMakerRuntimeHTTP2::#{event_stream_class}"\
              ", got `#{handler.inspect}` instead"
        raise ArgumentError, msg
      end
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
