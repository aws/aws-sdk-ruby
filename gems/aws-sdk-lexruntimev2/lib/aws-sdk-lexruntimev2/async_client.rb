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
require 'aws-sdk-core/plugins/credentials_configuration.rb'
require 'aws-sdk-core/plugins/logging.rb'
require 'aws-sdk-core/plugins/param_converter.rb'
require 'aws-sdk-core/plugins/param_validator.rb'
require 'aws-sdk-core/plugins/user_agent.rb'
require 'aws-sdk-core/plugins/helpful_socket_errors.rb'
require 'aws-sdk-core/plugins/retry_errors.rb'
require 'aws-sdk-core/plugins/global_configuration.rb'
require 'aws-sdk-core/plugins/regional_endpoint.rb'
require 'aws-sdk-core/plugins/stub_responses.rb'
require 'aws-sdk-core/plugins/idempotency_token.rb'
require 'aws-sdk-core/plugins/jsonvalue_converter.rb'
require 'aws-sdk-core/plugins/http_checksum.rb'
require 'aws-sdk-core/plugins/checksum_algorithm.rb'
require 'aws-sdk-core/plugins/request_compression.rb'
require 'aws-sdk-core/plugins/defaults_mode.rb'
require 'aws-sdk-core/plugins/recursion_detection.rb'
require 'aws-sdk-core/plugins/invocation_id.rb'
require 'aws-sdk-core/plugins/sign.rb'
require 'aws-sdk-core/plugins/protocols/rest_json.rb'
require 'aws-sdk-core/plugins/event_stream_configuration.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:lexruntimev2)

module Aws::LexRuntimeV2
  class AsyncClient < Seahorse::Client::AsyncBase

    include Aws::AsyncClientStubs

    @identifier = :lexruntimev2

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
    add_plugin(Aws::Plugins::JsonvalueConverter)
    add_plugin(Aws::Plugins::HttpChecksum)
    add_plugin(Aws::Plugins::ChecksumAlgorithm)
    add_plugin(Aws::Plugins::RequestCompression)
    add_plugin(Aws::Plugins::DefaultsMode)
    add_plugin(Aws::Plugins::RecursionDetection)
    add_plugin(Aws::Plugins::InvocationId)
    add_plugin(Aws::Plugins::Sign)
    add_plugin(Aws::Plugins::Protocols::RestJson)
    add_plugin(Aws::Plugins::EventStreamConfiguration)
    add_plugin(Aws::LexRuntimeV2::Plugins::Endpoints)

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
    #   @option options [Boolean] :adaptive_retry_wait_to_fill (true)
    #     Used only in `adaptive` retry mode.  When true, the request will sleep
    #     until there is sufficent client side capacity to retry the request.
    #     When false, the request will raise a `RetryCapacityNotAvailableError` and will
    #     not retry instead of sleeping.
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
    #   @option options [String] :endpoint
    #     The client endpoint is normally constructed from the `:region`
    #     option. You should only configure an `:endpoint` when connecting
    #     to test or custom endpoints. This should be a valid HTTP(S) URI.
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
    #   @option options [Aws::LexRuntimeV2::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::LexRuntimeV2::EndpointParameters`
    #
    def initialize(*args)
      unless Kernel.const_defined?("HTTP2")
        raise "Must include http/2 gem to use AsyncClient instances."
      end
      super
    end

    # @!group API Operations

    # Starts an HTTP/2 bidirectional event stream that enables you to send
    # audio, text, or DTMF input in real time. After your application starts
    # a conversation, users send input to Amazon Lex V2 as a stream of
    # events. Amazon Lex V2 processes the incoming events and responds with
    # streaming text or audio events.
    #
    # Audio input must be in the following format: `audio/lpcm
    # sample-rate=8000 sample-size-bits=16 channel-count=1;
    # is-big-endian=false`.
    #
    # If the optional post-fulfillment response is specified, the messages
    # are returned as follows. For more information, see
    # [PostFulfillmentStatusSpecification][1].
    #
    # * **Success message** - Returned if the Lambda function completes
    #   successfully and the intent state is fulfilled or ready fulfillment
    #   if the message is present.
    #
    # * **Failed message** - The failed message is returned if the Lambda
    #   function throws an exception or if the Lambda function returns a
    #   failed intent state without a message.
    #
    # * **Timeout message** - If you don't configure a timeout message and
    #   a timeout, and the Lambda function doesn't return within 30
    #   seconds, the timeout message is returned. If you configure a
    #   timeout, the timeout message is returned when the period times out.
    #
    # For more information, see [Completion message][2].
    #
    # If the optional update message is configured, it is played at the
    # specified frequency while the Lambda function is running and the
    # update message state is active. If the fulfillment update message is
    # not active, the Lambda function runs with a 30 second timeout.
    #
    # For more information, see [Update message ][3]
    #
    # The `StartConversation` operation is supported only in the following
    # SDKs:
    #
    # * [AWS SDK for C++][4]
    #
    # * [AWS SDK for Java V2][5]
    #
    # * [AWS SDK for Ruby V3][6]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lexv2/latest/dg/API_PostFulfillmentStatusSpecification.html
    # [2]: https://docs.aws.amazon.com/lexv2/latest/dg/streaming-progress.html#progress-complete.html
    # [3]: https://docs.aws.amazon.com/lexv2/latest/dg/streaming-progress.html#progress-update.html
    # [4]: https://docs.aws.amazon.com/goto/SdkForCpp/runtime.lex.v2-2020-08-07/StartConversation
    # [5]: https://docs.aws.amazon.com/goto/SdkForJavaV2/runtime.lex.v2-2020-08-07/StartConversation
    # [6]: https://docs.aws.amazon.com/goto/SdkForRubyV3/runtime.lex.v2-2020-08-07/StartConversation
    #
    # @option params [required, String] :bot_id
    #   The identifier of the bot to process the request.
    #
    # @option params [required, String] :bot_alias_id
    #   The alias identifier in use for the bot that processes the request.
    #
    # @option params [required, String] :locale_id
    #   The locale where the session is in use.
    #
    # @option params [required, String] :session_id
    #   The identifier of the user session that is having the conversation.
    #
    # @option params [String] :conversation_mode
    #   The conversation type that you are using the Amazon Lex V2. If the
    #   conversation mode is `AUDIO` you can send both audio and DTMF
    #   information. If the mode is `TEXT` you can only send text.
    #
    # @return [Types::StartConversationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartConversationResponse#response_event_stream #response_event_stream} => Types::StartConversationResponseEventStream
    #
    # @example Bi-directional EventStream Operation Example
    #
    #   You can signal input events after initial request is
    #   established, events will be sent to stream
    #   immediately (once stream connection is established successfully).
    #
    #   To signal events, you can call #signal methods from an Aws::LexRuntimeV2::EventStreams::StartConversationRequestEventStream object.
    #   Make sure signal events before calling #wait or #join! at async response.
    #
    #     input_stream = Aws::LexRuntimeV2::EventStreams::StartConversationRequestEventStream.new
    #
    #     async_resp = client.start_conversation( # params input,
    #       input_event_stream_handler: input_stream) do |out_stream|
    #
    #       # register callbacks for events arrival
    #       out_stream.on_playback_interruption_event_event do |event|
    #         event # => Aws::LexRuntimeV2::Types::PlaybackInterruptionEvent
    #       end
    #       out_stream.on_transcript_event_event do |event|
    #         event # => Aws::LexRuntimeV2::Types::TranscriptEvent
    #       end
    #       out_stream.on_intent_result_event_event do |event|
    #         event # => Aws::LexRuntimeV2::Types::IntentResultEvent
    #       end
    #       out_stream.on_text_response_event_event do |event|
    #         event # => Aws::LexRuntimeV2::Types::TextResponseEvent
    #       end
    #       out_stream.on_audio_response_event_event do |event|
    #         event # => Aws::LexRuntimeV2::Types::AudioResponseEvent
    #       end
    #       out_stream.on_heartbeat_event_event do |event|
    #         event # => Aws::LexRuntimeV2::Types::HeartbeatEvent
    #       end
    #       out_stream.on_access_denied_exception_event do |event|
    #         event # => Aws::LexRuntimeV2::Types::AccessDeniedException
    #       end
    #       out_stream.on_resource_not_found_exception_event do |event|
    #         event # => Aws::LexRuntimeV2::Types::ResourceNotFoundException
    #       end
    #       out_stream.on_validation_exception_event do |event|
    #         event # => Aws::LexRuntimeV2::Types::ValidationException
    #       end
    #       out_stream.on_throttling_exception_event do |event|
    #         event # => Aws::LexRuntimeV2::Types::ThrottlingException
    #       end
    #       out_stream.on_internal_server_exception_event do |event|
    #         event # => Aws::LexRuntimeV2::Types::InternalServerException
    #       end
    #       out_stream.on_conflict_exception_event do |event|
    #         event # => Aws::LexRuntimeV2::Types::ConflictException
    #       end
    #       out_stream.on_dependency_failed_exception_event do |event|
    #         event # => Aws::LexRuntimeV2::Types::DependencyFailedException
    #       end
    #       out_stream.on_bad_gateway_exception_event do |event|
    #         event # => Aws::LexRuntimeV2::Types::BadGatewayException
    #       end
    #
    #     end
    #     # => returns Aws::Seahorse::Client::AsyncResponse
    #
    #     # signal events
    #     input_stream.signal_configuration_event_event( ... )
    #     input_stream.signal_audio_input_event_event( ... )
    #     input_stream.signal_dtmf_input_event_event( ... )
    #     input_stream.signal_text_input_event_event( ... )
    #     input_stream.signal_playback_completion_event_event( ... )
    #     input_stream.signal_disconnection_event_event( ... )
    #
    #     # make sure signaling :end_stream in the end
    #     input_stream.signal_end_stream
    #
    #     # wait until stream is closed before finalizing sync response
    #     resp = async_resp.wait
    #     # Or close stream and finalizing sync response immediately
    #     # resp = async_resp.join!
    #
    #   Inorder to streamingly processing events received, you can also provide an Aws::LexRuntimeV2::EventStreams::StartConversationResponseEventStream
    #   object to register callbacks before initializing request instead of processing from request block
    #
    #     output_stream = Aws::LexRuntimeV2::EventStreams::StartConversationResponseEventStream.new
    #     # register callbacks for events arrival
    #     output_stream.on_playback_interruption_event_event do |event|
    #       event # => Aws::LexRuntimeV2::Types::PlaybackInterruptionEvent
    #     end
    #     output_stream.on_transcript_event_event do |event|
    #       event # => Aws::LexRuntimeV2::Types::TranscriptEvent
    #     end
    #     output_stream.on_intent_result_event_event do |event|
    #       event # => Aws::LexRuntimeV2::Types::IntentResultEvent
    #     end
    #     output_stream.on_text_response_event_event do |event|
    #       event # => Aws::LexRuntimeV2::Types::TextResponseEvent
    #     end
    #     output_stream.on_audio_response_event_event do |event|
    #       event # => Aws::LexRuntimeV2::Types::AudioResponseEvent
    #     end
    #     output_stream.on_heartbeat_event_event do |event|
    #       event # => Aws::LexRuntimeV2::Types::HeartbeatEvent
    #     end
    #     output_stream.on_access_denied_exception_event do |event|
    #       event # => Aws::LexRuntimeV2::Types::AccessDeniedException
    #     end
    #     output_stream.on_resource_not_found_exception_event do |event|
    #       event # => Aws::LexRuntimeV2::Types::ResourceNotFoundException
    #     end
    #     output_stream.on_validation_exception_event do |event|
    #       event # => Aws::LexRuntimeV2::Types::ValidationException
    #     end
    #     output_stream.on_throttling_exception_event do |event|
    #       event # => Aws::LexRuntimeV2::Types::ThrottlingException
    #     end
    #     output_stream.on_internal_server_exception_event do |event|
    #       event # => Aws::LexRuntimeV2::Types::InternalServerException
    #     end
    #     output_stream.on_conflict_exception_event do |event|
    #       event # => Aws::LexRuntimeV2::Types::ConflictException
    #     end
    #     output_stream.on_dependency_failed_exception_event do |event|
    #       event # => Aws::LexRuntimeV2::Types::DependencyFailedException
    #     end
    #     output_stream.on_bad_gateway_exception_event do |event|
    #       event # => Aws::LexRuntimeV2::Types::BadGatewayException
    #     end
    #     output_stream.on_error_event do |event|
    #       # catch unmodeled error event in the stream
    #       raise event
    #       # => Aws::Errors::EventError
    #       # event.event_type => :error
    #       # event.error_code => String
    #       # event.error_message => String
    #     end
    #
    #     async_resp = client.start_conversation ( #params input,
    #       input_event_stream_handler: input_stream
    #       output_event_stream_handler: output_stream
    #     )
    #
    #     resp = async_resp.wait!
    #
    #   Besides above usage patterns for process events when they arrive immediately, you can also
    #   iterate through events after response complete.
    #
    #   Events are available at resp.response_event_stream # => Enumerator
    #
    # @example Request syntax with placeholder values
    #
    #   async_resp = async_client.start_conversation({
    #     bot_id: "BotIdentifier", # required
    #     bot_alias_id: "BotAliasIdentifier", # required
    #     locale_id: "LocaleId", # required
    #     session_id: "SessionId", # required
    #     conversation_mode: "AUDIO", # accepts AUDIO, TEXT
    #     input_event_stream_hander: EventStreams::StartConversationRequestEventStream.new,
    #   })
    #   # => Seahorse::Client::AsyncResponse
    #   async_resp.wait
    #   # => Seahorse::Client::Response
    #   # Or use async_resp.join!
    #
    # @example Response structure
    #
    #   All events are available at resp.response_event_stream:
    #   resp.response_event_stream #=> Enumerator
    #   resp.response_event_stream.event_types #=> [:playback_interruption_event, :transcript_event, :intent_result_event, :text_response_event, :audio_response_event, :heartbeat_event, :access_denied_exception, :resource_not_found_exception, :validation_exception, :throttling_exception, :internal_server_exception, :conflict_exception, :dependency_failed_exception, :bad_gateway_exception]
    #
    #   For :playback_interruption_event event available at #on_playback_interruption_event_event callback and response eventstream enumerator:
    #   event.event_reason #=> String, one of "DTMF_START_DETECTED", "TEXT_DETECTED", "VOICE_START_DETECTED"
    #   event.caused_by_event_id #=> String
    #   event.event_id #=> String
    #
    #   For :transcript_event event available at #on_transcript_event_event callback and response eventstream enumerator:
    #   event.transcript #=> String
    #   event.event_id #=> String
    #
    #   For :intent_result_event event available at #on_intent_result_event_event callback and response eventstream enumerator:
    #   event.input_mode #=> String, one of "Text", "Speech", "DTMF"
    #   event.interpretations #=> Array
    #   event.interpretations[0].nlu_confidence.score #=> Float
    #   event.interpretations[0].sentiment_response.sentiment #=> String, one of "MIXED", "NEGATIVE", "NEUTRAL", "POSITIVE"
    #   event.interpretations[0].sentiment_response.sentiment_score.positive #=> Float
    #   event.interpretations[0].sentiment_response.sentiment_score.negative #=> Float
    #   event.interpretations[0].sentiment_response.sentiment_score.neutral #=> Float
    #   event.interpretations[0].sentiment_response.sentiment_score.mixed #=> Float
    #   event.interpretations[0].intent.name #=> String
    #   event.interpretations[0].intent.slots #=> Hash
    #   event.interpretations[0].intent.slots["NonEmptyString"].value.original_value #=> String
    #   event.interpretations[0].intent.slots["NonEmptyString"].value.interpreted_value #=> String
    #   event.interpretations[0].intent.slots["NonEmptyString"].value.resolved_values #=> Array
    #   event.interpretations[0].intent.slots["NonEmptyString"].value.resolved_values[0] #=> String
    #   event.interpretations[0].intent.slots["NonEmptyString"].shape #=> String, one of "Scalar", "List", "Composite"
    #   event.interpretations[0].intent.slots["NonEmptyString"].values #=> Array
    #   event.interpretations[0].intent.slots["NonEmptyString"].values[0] #=> Types::Slot
    #   event.interpretations[0].intent.slots["NonEmptyString"].sub_slots #=> Types::Slots
    #   event.interpretations[0].intent.state #=> String, one of "Failed", "Fulfilled", "InProgress", "ReadyForFulfillment", "Waiting", "FulfillmentInProgress"
    #   event.interpretations[0].intent.confirmation_state #=> String, one of "Confirmed", "Denied", "None"
    #   event.session_state.dialog_action.type #=> String, one of "Close", "ConfirmIntent", "Delegate", "ElicitIntent", "ElicitSlot", "None"
    #   event.session_state.dialog_action.slot_to_elicit #=> String
    #   event.session_state.dialog_action.slot_elicitation_style #=> String, one of "Default", "SpellByLetter", "SpellByWord"
    #   event.session_state.dialog_action.sub_slot_to_elicit.name #=> String
    #   event.session_state.dialog_action.sub_slot_to_elicit.sub_slot_to_elicit #=> Types::ElicitSubSlot
    #   event.session_state.intent.name #=> String
    #   event.session_state.intent.slots #=> Hash
    #   event.session_state.intent.slots["NonEmptyString"].value.original_value #=> String
    #   event.session_state.intent.slots["NonEmptyString"].value.interpreted_value #=> String
    #   event.session_state.intent.slots["NonEmptyString"].value.resolved_values #=> Array
    #   event.session_state.intent.slots["NonEmptyString"].value.resolved_values[0] #=> String
    #   event.session_state.intent.slots["NonEmptyString"].shape #=> String, one of "Scalar", "List", "Composite"
    #   event.session_state.intent.slots["NonEmptyString"].values #=> Array
    #   event.session_state.intent.slots["NonEmptyString"].values[0] #=> Types::Slot
    #   event.session_state.intent.slots["NonEmptyString"].sub_slots #=> Types::Slots
    #   event.session_state.intent.state #=> String, one of "Failed", "Fulfilled", "InProgress", "ReadyForFulfillment", "Waiting", "FulfillmentInProgress"
    #   event.session_state.intent.confirmation_state #=> String, one of "Confirmed", "Denied", "None"
    #   event.session_state.active_contexts #=> Array
    #   event.session_state.active_contexts[0].name #=> String
    #   event.session_state.active_contexts[0].time_to_live.time_to_live_in_seconds #=> Integer
    #   event.session_state.active_contexts[0].time_to_live.turns_to_live #=> Integer
    #   event.session_state.active_contexts[0].context_attributes #=> Hash
    #   event.session_state.active_contexts[0].context_attributes["ParameterName"] #=> String
    #   event.session_state.session_attributes #=> Hash
    #   event.session_state.session_attributes["NonEmptyString"] #=> String
    #   event.session_state.originating_request_id #=> String
    #   event.session_state.runtime_hints.slot_hints #=> Hash
    #   event.session_state.runtime_hints.slot_hints["Name"] #=> Hash
    #   event.session_state.runtime_hints.slot_hints["Name"]["Name"].runtime_hint_values #=> Array
    #   event.session_state.runtime_hints.slot_hints["Name"]["Name"].runtime_hint_values[0].phrase #=> String
    #   event.session_state.runtime_hints.slot_hints["Name"]["Name"].sub_slot_hints #=> Types::SlotHintsSlotMap
    #   event.request_attributes #=> Hash
    #   event.request_attributes["NonEmptyString"] #=> String
    #   event.session_id #=> String
    #   event.event_id #=> String
    #   event.recognized_bot_member.bot_id #=> String
    #   event.recognized_bot_member.bot_name #=> String
    #
    #   For :text_response_event event available at #on_text_response_event_event callback and response eventstream enumerator:
    #   event.messages #=> Array
    #   event.messages[0].content #=> String
    #   event.messages[0].content_type #=> String, one of "CustomPayload", "ImageResponseCard", "PlainText", "SSML"
    #   event.messages[0].image_response_card.title #=> String
    #   event.messages[0].image_response_card.subtitle #=> String
    #   event.messages[0].image_response_card.image_url #=> String
    #   event.messages[0].image_response_card.buttons #=> Array
    #   event.messages[0].image_response_card.buttons[0].text #=> String
    #   event.messages[0].image_response_card.buttons[0].value #=> String
    #   event.event_id #=> String
    #
    #   For :audio_response_event event available at #on_audio_response_event_event callback and response eventstream enumerator:
    #   event.audio_chunk #=> String
    #   event.content_type #=> String
    #   event.event_id #=> String
    #
    #   For :heartbeat_event event available at #on_heartbeat_event_event callback and response eventstream enumerator:
    #   event.event_id #=> String
    #
    #   For :access_denied_exception event available at #on_access_denied_exception_event callback and response eventstream enumerator:
    #   event.message #=> String
    #
    #   For :resource_not_found_exception event available at #on_resource_not_found_exception_event callback and response eventstream enumerator:
    #   event.message #=> String
    #
    #   For :validation_exception event available at #on_validation_exception_event callback and response eventstream enumerator:
    #   event.message #=> String
    #
    #   For :throttling_exception event available at #on_throttling_exception_event callback and response eventstream enumerator:
    #   event.message #=> String
    #
    #   For :internal_server_exception event available at #on_internal_server_exception_event callback and response eventstream enumerator:
    #   event.message #=> String
    #
    #   For :conflict_exception event available at #on_conflict_exception_event callback and response eventstream enumerator:
    #   event.message #=> String
    #
    #   For :dependency_failed_exception event available at #on_dependency_failed_exception_event callback and response eventstream enumerator:
    #   event.message #=> String
    #
    #   For :bad_gateway_exception event available at #on_bad_gateway_exception_event callback and response eventstream enumerator:
    #   event.message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/runtime.lex.v2-2020-08-07/StartConversation AWS API Documentation
    #
    # @overload start_conversation(params = {})
    # @param [Hash] params ({})
    def start_conversation(params = {}, options = {}, &block)
      params = params.dup
      input_event_stream_handler = _event_stream_handler(
        :input,
        params.delete(:input_event_stream_handler),
        EventStreams::StartConversationRequestEventStream
      )
      output_event_stream_handler = _event_stream_handler(
        :output,
        params.delete(:output_event_stream_handler) || params.delete(:event_stream_handler),
        EventStreams::StartConversationResponseEventStream
      )

      yield(output_event_stream_handler) if block_given?

      req = build_request(:start_conversation, params)

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
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        http_response: Seahorse::Client::Http::AsyncResponse.new,
        config: config)
      context[:gem_name] = 'aws-sdk-lexruntimev2'
      context[:gem_version] = '1.24.0'
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
              "instance of Aws::LexRuntimeV2::#{event_stream_class}"\
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
