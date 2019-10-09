# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

if RUBY_VERSION >= '2.1'
  begin
    require 'http/2'
  rescue LoadError; end
end
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
require 'aws-sdk-core/plugins/stub_responses.rb'
require 'aws-sdk-core/plugins/idempotency_token.rb'
require 'aws-sdk-core/plugins/jsonvalue_converter.rb'
require 'aws-sdk-core/plugins/invocation_id.rb'
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/rest_json.rb'
require 'aws-sdk-core/plugins/event_stream_configuration.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:transcribestreamingservice)

module Aws::TranscribeStreamingService
  class AsyncClient < Seahorse::Client::AsyncBase

    include Aws::AsyncClientStubs

    @identifier = :transcribestreamingservice

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
    add_plugin(Aws::Plugins::StubResponses)
    add_plugin(Aws::Plugins::IdempotencyToken)
    add_plugin(Aws::Plugins::JsonvalueConverter)
    add_plugin(Aws::Plugins::InvocationId)
    add_plugin(Aws::Plugins::SignatureV4)
    add_plugin(Aws::Plugins::Protocols::RestJson)
    add_plugin(Aws::Plugins::EventStreamConfiguration)

    #   @option options [required, Aws::CredentialProvider] :credentials
    #     Your AWS credentials. This can be an instance of any one of the
    #     following classes:
    #
    #     * `Aws::Credentials` - Used for configuring static, non-refreshing
    #       credentials.
    #
    #     * `Aws::InstanceProfileCredentials` - Used for loading credentials
    #       from an EC2 IMDS on an EC2 instance.
    #
    #     * `Aws::SharedCredentials` - Used for loading credentials from a
    #       shared file, such as `~/.aws/config`.
    #
    #     * `Aws::AssumeRoleCredentials` - Used when you need to assume a role.
    #
    #     When `:credentials` are not configured directly, the following
    #     locations will be searched for credentials:
    #
    #     * `Aws.config[:credentials]`
    #     * The `:access_key_id`, `:secret_access_key`, and `:session_token` options.
    #     * ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY']
    #     * `~/.aws/credentials`
    #     * `~/.aws/config`
    #     * EC2 IMDS instance profile - When used by default, the timeouts are
    #       very aggressive. Construct and pass an instance of
    #       `Aws::InstanceProfileCredentails` to enable retries and extended
    #       timeouts.
    #
    #   @option options [required, String] :region
    #     The AWS region to connect to.  The configured `:region` is
    #     used to determine the service `:endpoint`. When not passed,
    #     a default `:region` is search for in the following locations:
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
    #   @option options [Boolean] :convert_params (true)
    #     When `true`, an attempt is made to coerce request parameters into
    #     the required types.
    #
    #   @option options [String] :endpoint
    #     The client endpoint is normally constructed from the `:region`
    #     option. You should only configure an `:endpoint` when connecting
    #     to test endpoints. This should be avalid HTTP(S) URI.
    #
    #   @option options [Proc] :event_stream_handler
    #     When an EventStream or Proc object is provided, it will be used as callback for each chunk of event stream response received along the way.
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
    #   @option options [Proc] :output_event_stream_handler
    #     When an EventStream or Proc object is provided, it will be used as callback for each chunk of event stream response received along the way.
    #
    #   @option options [String] :profile ("default")
    #     Used when loading credentials from the shared credentials file
    #     at HOME/.aws/credentials.  When not specified, 'default' is used.
    #
    #   @option options [Float] :retry_base_delay (0.3)
    #     The base delay in seconds used by the default backoff function.
    #
    #   @option options [Symbol] :retry_jitter (:none)
    #     A delay randomiser function used by the default backoff function. Some predefined functions can be referenced by name - :none, :equal, :full, otherwise a Proc that takes and returns a number.
    #
    #     @see https://www.awsarchitectureblog.com/2015/03/backoff.html
    #
    #   @option options [Integer] :retry_limit (3)
    #     The maximum number of times to retry failed requests.  Only
    #     ~ 500 level server errors and certain ~ 400 level client errors
    #     are retried.  Generally, these are throttling errors, data
    #     checksum errors, networking errors, timeout errors and auth
    #     errors from expired credentials.
    #
    #   @option options [Integer] :retry_max_delay (0)
    #     The maximum number of seconds to delay between retries (0 for no limit) used by the default backoff function.
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
    #   @option options [Boolean] :validate_params (true)
    #     When `true`, request parameters are validated before
    #     sending the request.
    #
    def initialize(*args)
      unless Kernel.const_defined?("HTTP2")
        raise "Must include http/2 gem to use AsyncClient instances."
      end
      super
    end

    # @!group API Operations

    # Starts a bidirectional HTTP2 stream where audio is streamed to Amazon
    # Transcribe and the transcription results are streamed to your
    # application.
    #
    # The following are encoded as HTTP2 headers:
    #
    # * x-amzn-transcribe-language-code
    #
    # * x-amzn-transcribe-media-encoding
    #
    # * x-amzn-transcribe-sample-rate
    #
    # * x-amzn-transcribe-session-id
    #
    # @option params [required, String] :language_code
    #   Indicates the language used in the input audio stream.
    #
    # @option params [required, Integer] :media_sample_rate_hertz
    #   The sample rate, in Hertz, of the input audio. We suggest that you use
    #   8000 Hz for low quality audio and 16000 Hz for high quality audio.
    #
    # @option params [required, String] :media_encoding
    #   The encoding used for the input audio.
    #
    # @option params [String] :vocabulary_name
    #   The name of the vocabulary to use when processing the transcription
    #   job.
    #
    # @option params [String] :session_id
    #   A identifier for the transcription session. Use this parameter when
    #   you want to retry a session. If you don't provide a session ID,
    #   Amazon Transcribe will generate one for you and return it in the
    #   response.
    #
    # @return [Types::StartStreamTranscriptionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartStreamTranscriptionResponse#request_id #request_id} => String
    #   * {Types::StartStreamTranscriptionResponse#language_code #language_code} => String
    #   * {Types::StartStreamTranscriptionResponse#media_sample_rate_hertz #media_sample_rate_hertz} => Integer
    #   * {Types::StartStreamTranscriptionResponse#media_encoding #media_encoding} => String
    #   * {Types::StartStreamTranscriptionResponse#vocabulary_name #vocabulary_name} => String
    #   * {Types::StartStreamTranscriptionResponse#session_id #session_id} => String
    #   * {Types::StartStreamTranscriptionResponse#transcript_result_stream #transcript_result_stream} => Types::TranscriptResultStream
    #
    # @example Bi-directional EventStream Operation Example
    #
    #   You can signal input events after initial request is
    #   established, events will be sent to stream
    #   immediately (once stream connection is established successfully).
    #
    #   To signal events, you can call #signal methods from an Aws::TranscribeStreamingService::EventStreams::AudioStream object.
    #   Make sure signal events before calling #wait or #join! at async response.
    #
    #     input_stream = Aws::TranscribeStreamingService::EventStreams::AudioStream.new
    #
    #     async_resp = client.start_stream_transcription( # params input,
    #       input_event_stream_handler: input_stream) do |out_stream|
    #
    #       # register callbacks for events arrival
    #       out_stream.on_transcript_event_event do |event|
    #         event # => Aws::TranscribeStreamingService::Types::TranscriptEvent
    #       end
    #       out_stream.on_bad_request_exception_event do |event|
    #         event # => Aws::TranscribeStreamingService::Types::BadRequestException
    #       end
    #       out_stream.on_limit_exceeded_exception_event do |event|
    #         event # => Aws::TranscribeStreamingService::Types::LimitExceededException
    #       end
    #       out_stream.on_internal_failure_exception_event do |event|
    #         event # => Aws::TranscribeStreamingService::Types::InternalFailureException
    #       end
    #       out_stream.on_conflict_exception_event do |event|
    #         event # => Aws::TranscribeStreamingService::Types::ConflictException
    #       end
    #
    #     end
    #     # => returns Aws::Seahorse::Client::AsyncResponse
    #
    #     # signal events
    #     input_stream.signal_audio_event_event( ... )
    #
    #     # make sure signaling :end_stream in the end
    #     input_stream.signal_end_stream
    #
    #     # wait until stream is closed before finalizing sync response
    #     resp = async_resp.wait
    #     # Or close stream and finalizing sync response immediately
    #     # resp = async_resp.join!
    #
    #   Inorder to streamingly processing events received, you can also provide an Aws::TranscribeStreamingService::EventStreams::TranscriptResultStream
    #   object to register callbacks before initializing request instead of processing from request block
    #
    #     output_stream = Aws::TranscribeStreamingService::EventStreams::TranscriptResultStream.new
    #     # register callbacks for events arrival
    #     output_stream.on_transcript_event_event do |event|
    #       event # => Aws::TranscribeStreamingService::Types::TranscriptEvent
    #     end
    #     output_stream.on_bad_request_exception_event do |event|
    #       event # => Aws::TranscribeStreamingService::Types::BadRequestException
    #     end
    #     output_stream.on_limit_exceeded_exception_event do |event|
    #       event # => Aws::TranscribeStreamingService::Types::LimitExceededException
    #     end
    #     output_stream.on_internal_failure_exception_event do |event|
    #       event # => Aws::TranscribeStreamingService::Types::InternalFailureException
    #     end
    #     output_stream.on_conflict_exception_event do |event|
    #       event # => Aws::TranscribeStreamingService::Types::ConflictException
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
    #     async_resp = client.start_stream_transcription ( #params input,
    #       input_event_stream_handler: input_stream
    #       output_event_stream_handler: output_stream
    #     )
    #
    #     resp = async_resp.wait!
    #
    #   Besides above usage patterns for process events when they arrive immediately, you can also
    #   iterate through events after response complete.
    #
    #   Events are available at resp.transcript_result_stream # => Enumerator
    #
    # @example Request syntax with placeholder values
    #
    #   async_resp = async_client.start_stream_transcription({
    #     language_code: "en-US", # required, accepts en-US, en-GB, es-US, fr-CA, fr-FR
    #     media_sample_rate_hertz: 1, # required
    #     media_encoding: "pcm", # required, accepts pcm
    #     vocabulary_name: "VocabularyName",
    #     session_id: "SessionId",
    #     input_event_stream_hander: EventStreams::AudioStream.new,
    #   })
    #   # => Seahorse::Client::AsyncResponse
    #   async_resp.wait
    #   # => Seahorse::Client::Response
    #   # Or use async_resp.join!
    #
    # @example Response structure
    #
    #   resp.request_id #=> String
    #   resp.language_code #=> String, one of "en-US", "en-GB", "es-US", "fr-CA", "fr-FR"
    #   resp.media_sample_rate_hertz #=> Integer
    #   resp.media_encoding #=> String, one of "pcm"
    #   resp.vocabulary_name #=> String
    #   resp.session_id #=> String
    #   All events are available at resp.transcript_result_stream:
    #   resp.transcript_result_stream #=> Enumerator
    #   resp.transcript_result_stream.event_types #=> [:transcript_event, :bad_request_exception, :limit_exceeded_exception, :internal_failure_exception, :conflict_exception]
    #
    #   For :transcript_event event available at #on_transcript_event_event callback and response eventstream enumerator:
    #   event.transcript.results #=> Array
    #   event.transcript.results[0].result_id #=> String
    #   event.transcript.results[0].start_time #=> Float
    #   event.transcript.results[0].end_time #=> Float
    #   event.transcript.results[0].is_partial #=> Boolean
    #   event.transcript.results[0].alternatives #=> Array
    #   event.transcript.results[0].alternatives[0].transcript #=> String
    #   event.transcript.results[0].alternatives[0].items #=> Array
    #   event.transcript.results[0].alternatives[0].items[0].start_time #=> Float
    #   event.transcript.results[0].alternatives[0].items[0].end_time #=> Float
    #   event.transcript.results[0].alternatives[0].items[0].type #=> String, one of "PRONUNCIATION", "PUNCTUATION"
    #   event.transcript.results[0].alternatives[0].items[0].content #=> String
    #
    #   For :bad_request_exception event available at #on_bad_request_exception_event callback and response eventstream enumerator:
    #   event.message #=> String
    #
    #   For :limit_exceeded_exception event available at #on_limit_exceeded_exception_event callback and response eventstream enumerator:
    #   event.message #=> String
    #
    #   For :internal_failure_exception event available at #on_internal_failure_exception_event callback and response eventstream enumerator:
    #   event.message #=> String
    #
    #   For :conflict_exception event available at #on_conflict_exception_event callback and response eventstream enumerator:
    #   event.message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-streaming-2017-10-26/StartStreamTranscription AWS API Documentation
    #
    # @overload start_stream_transcription(params = {})
    # @param [Hash] params ({})
    def start_stream_transcription(params = {}, options = {}, &block)
      params = params.dup
      input_event_stream_handler = _event_stream_handler(
        :input,
        params.delete(:input_event_stream_handler),
        EventStreams::AudioStream
      )
      output_event_stream_handler = _event_stream_handler(
        :output,
        params.delete(:output_event_stream_handler) || params.delete(:event_stream_handler),
        EventStreams::TranscriptResultStream
      )

      yield(output_event_stream_handler) if block_given?

      req = build_request(:start_stream_transcription, params)

      req.context[:input_event_stream_handler] = input_event_stream_handler
      req.handlers.add(Aws::Binary::EncodeHandler, priority: 95)
      req.context[:output_event_stream_handler] = output_event_stream_handler
      req.handlers.add(Aws::Binary::DecodeHandler, priority: 95)

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
      context[:gem_name] = 'aws-sdk-transcribestreamingservice'
      context[:gem_version] = '1.8.0'
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
          "instance of Aws::TranscribeStreamingService::#{event_stream_class}"\
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
