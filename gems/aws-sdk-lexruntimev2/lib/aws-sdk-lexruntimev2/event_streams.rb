# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::LexRuntimeV2
  module EventStreams
    class StartConversationRequestEventStream

      def initialize
        @event_emitter = Aws::EventEmitter.new
      end

      # @option params [Hash&lt;String,String&gt;] :request_attributes
      #   Request-specific information passed between the client application and
      #   Amazon Lex V2.
      #
      #   The namespace `x-amz-lex:` is reserved for special attributes. Don&#39;t
      #   create any request attributes for prefix `x-amz-lex:`.
      #
      # @option params [String] :response_content_type
      #   The message that Amazon Lex V2 returns in the response can be either
      #   text or speech based on the `responseContentType` value.
      #
      #   * If the value is `text/plain;charset=utf-8`, Amazon Lex V2 returns
      #     text in the response.
      #
      #   * If the value begins with `audio/`, Amazon Lex V2 returns speech in
      #     the response. Amazon Lex V2 uses Amazon Polly to generate the speech
      #     using the configuration that you specified in the
      #     `requestContentType` parameter. For example, if you specify
      #     `audio/mpeg` as the value, Amazon Lex V2 returns speech in the MPEG
      #     format.
      #
      #   * If the value is `audio/pcm`, the speech returned is audio/pcm in
      #     16-bit, little-endian format.
      #
      #   * The following are the accepted values:
      #
      #     * audio/mpeg
      #
      #     * audio/ogg
      #
      #     * audio/pcm
      #
      #     * audio/* (defaults to mpeg)
      #
      #     * text/plain; charset=utf-8
      #
      # @option params [Types::SessionState] :session_state
      #   The state of the user&#39;s session with Amazon Lex V2.
      #
      # @option params [Array&lt;Types::Message&gt;] :welcome_messages
      #   A list of messages to send to the user.
      #
      #   If you set the `welcomeMessage` field, you must also set the [
      #   `DialogAction` ][1] structure&#39;s [ `type` ][2] field.
      #
      #
      #
      #   [1]: https://docs.aws.amazon.com/lexv2/latest/dg/API_runtime_DialogAction.html
      #   [2]: https://docs.aws.amazon.com/lexv2/latest/dg/API_runtime_DialogAction.html#lexv2-Type-runtime_DialogAction-type
      #
      # @option params [Boolean] :disable_playback
      #   Determines whether Amazon Lex V2 should send audio responses to the
      #   client application.
      #
      #   Set this field to false when the client is operating in a playback
      #   mode where audio responses are played to the user. If the client
      #   isn&#39;t operating in playback mode, such as a text chat application,
      #   set this to true so that Amazon Lex V2 doesn&#39;t wait for the prompt to
      #   finish playing on the client.
      #
      # @option params [String] :event_id
      #   A unique identifier that your application assigns to the event. You
      #   can use this to identify events in logs.
      #
      # @option params [Integer] :client_timestamp_millis
      #   A timestamp set by the client of the date and time that the event was
      #   sent to Amazon Lex V2.
      #
      def signal_configuration_event_event(params = {})
        @event_emitter.emit(:configuration_event, params)
      end

      # @option params [String, StringIO, File] :audio_chunk
      #   An encoded stream of audio.
      #
      # @option params [String] :content_type
      #   The encoding used for the audio chunk. You must use 8 KHz PCM 16-bit
      #   mono-channel little-endian format. The value of the field should be:
      #
      #   `audio/lpcm; sample-rate=8000; sample-size-bits=16; channel-count=1;
      #   is-big-endian=false`
      #
      # @option params [String] :event_id
      #   A unique identifier that your application assigns to the event. You
      #   can use this to identify events in logs.
      #
      # @option params [Integer] :client_timestamp_millis
      #   A timestamp set by the client of the date and time that the event was
      #   sent to Amazon Lex V2.
      #
      def signal_audio_input_event_event(params = {})
        @event_emitter.emit(:audio_input_event, params)
      end

      # @option params [String] :input_character
      #   The DTMF character that the user pressed. The allowed characters are A
      #   - D, 0 - 9, # and *.
      #
      # @option params [String] :event_id
      #   A unique identifier that your application assigns to the event. You
      #   can use this to identify events in logs.
      #
      # @option params [Integer] :client_timestamp_millis
      #   A timestamp set by the client of the date and time that the event was
      #   sent to Amazon Lex V2.
      #
      def signal_dtmf_input_event_event(params = {})
        @event_emitter.emit(:dtmf_input_event, params)
      end

      # @option params [String] :text
      #   The text from the user. Amazon Lex V2 processes this as a complete
      #   statement.
      #
      # @option params [String] :event_id
      #   A unique identifier that your application assigns to the event. You
      #   can use this to identify events in logs.
      #
      # @option params [Integer] :client_timestamp_millis
      #   A timestamp set by the client of the date and time that the event was
      #   sent to Amazon Lex V2.
      #
      def signal_text_input_event_event(params = {})
        @event_emitter.emit(:text_input_event, params)
      end

      # @option params [String] :event_id
      #   A unique identifier that your application assigns to the event. You
      #   can use this to identify events in logs.
      #
      # @option params [Integer] :client_timestamp_millis
      #   A timestamp set by the client of the date and time that the event was
      #   sent to Amazon Lex V2.
      #
      def signal_playback_completion_event_event(params = {})
        @event_emitter.emit(:playback_completion_event, params)
      end

      # @option params [String] :event_id
      #   A unique identifier that your application assigns to the event. You
      #   can use this to identify events in logs.
      #
      # @option params [Integer] :client_timestamp_millis
      #   A timestamp set by the client of the date and time that the event was
      #   sent to Amazon Lex V2.
      #
      def signal_disconnection_event_event(params = {})
        @event_emitter.emit(:disconnection_event, params)
      end

      def signal_end_stream
        @event_emitter.emit(:end_stream, {})
      end

      # @api private
      # @return Aws::EventEmitter
      attr_reader :event_emitter

    end

    class StartConversationResponseEventStream

      def initialize
        @event_emitter = Aws::EventEmitter.new
      end

      def on_playback_interruption_event_event(&block)
        @event_emitter.on(:playback_interruption_event, block) if block_given?
      end

      def on_transcript_event_event(&block)
        @event_emitter.on(:transcript_event, block) if block_given?
      end

      def on_intent_result_event_event(&block)
        @event_emitter.on(:intent_result_event, block) if block_given?
      end

      def on_text_response_event_event(&block)
        @event_emitter.on(:text_response_event, block) if block_given?
      end

      def on_audio_response_event_event(&block)
        @event_emitter.on(:audio_response_event, block) if block_given?
      end

      def on_heartbeat_event_event(&block)
        @event_emitter.on(:heartbeat_event, block) if block_given?
      end

      def on_access_denied_exception_event(&block)
        @event_emitter.on(:access_denied_exception, block) if block_given?
      end

      def on_resource_not_found_exception_event(&block)
        @event_emitter.on(:resource_not_found_exception, block) if block_given?
      end

      def on_validation_exception_event(&block)
        @event_emitter.on(:validation_exception, block) if block_given?
      end

      def on_throttling_exception_event(&block)
        @event_emitter.on(:throttling_exception, block) if block_given?
      end

      def on_internal_server_exception_event(&block)
        @event_emitter.on(:internal_server_exception, block) if block_given?
      end

      def on_conflict_exception_event(&block)
        @event_emitter.on(:conflict_exception, block) if block_given?
      end

      def on_dependency_failed_exception_event(&block)
        @event_emitter.on(:dependency_failed_exception, block) if block_given?
      end

      def on_bad_gateway_exception_event(&block)
        @event_emitter.on(:bad_gateway_exception, block) if block_given?
      end

      def on_error_event(&block)
        @event_emitter.on(:error, block) if block_given?
      end

      def on_initial_response_event(&block)
        @event_emitter.on(:initial_response, block) if block_given?
      end

      def on_unknown_event(&block)
        @event_emitter.on(:unknown_event, block) if block_given?
      end

      def on_event(&block)
        on_playback_interruption_event_event(&block)
        on_transcript_event_event(&block)
        on_intent_result_event_event(&block)
        on_text_response_event_event(&block)
        on_audio_response_event_event(&block)
        on_heartbeat_event_event(&block)
        on_access_denied_exception_event(&block)
        on_resource_not_found_exception_event(&block)
        on_validation_exception_event(&block)
        on_throttling_exception_event(&block)
        on_internal_server_exception_event(&block)
        on_conflict_exception_event(&block)
        on_dependency_failed_exception_event(&block)
        on_bad_gateway_exception_event(&block)
        on_error_event(&block)
        on_initial_response_event(&block)
        on_unknown_event(&block)
      end

      # @api private
      # @return Aws::EventEmitter
      attr_reader :event_emitter

    end

  end
end

