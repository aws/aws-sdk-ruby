# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Polly
  module EventStreams
    class StartSpeechSynthesisStreamActionStream

      def initialize
        @event_emitter = Aws::EventEmitter.new
      end

      # @option params [String] :text
      #   The text content to synthesize. If you specify `ssml` as the
      #   `TextType`, follow the SSML format for the input text.
      #
      # @option params [String] :text_type
      #   Specifies whether the input text is plain text or SSML. Default: plain
      #   text.
      #
      # @option params [Types::FlushStreamConfiguration] :flush_stream_configuration
      #   Configuration for controlling when synthesized audio flushes to the
      #   output stream.
      #
      def signal_text_event_event(params = {})
        @event_emitter.emit(:text_event, params)
      end

      # This event has no members
      def signal_close_stream_event_event(params = {})
        @event_emitter.emit(:close_stream_event, params)
      end

      def signal_end_stream
        @event_emitter.emit(:end_stream, {})
      end

      # @api private
      # @return Aws::EventEmitter
      attr_reader :event_emitter

    end

    class StartSpeechSynthesisStreamEventStream

      def initialize
        @event_emitter = Aws::EventEmitter.new
      end

      def on_audio_event_event(&block)
        @event_emitter.on(:audio_event, block) if block_given?
      end

      def on_stream_closed_event_event(&block)
        @event_emitter.on(:stream_closed_event, block) if block_given?
      end

      def on_validation_exception_event(&block)
        @event_emitter.on(:validation_exception, block) if block_given?
      end

      def on_service_quota_exceeded_exception_event(&block)
        @event_emitter.on(:service_quota_exceeded_exception, block) if block_given?
      end

      def on_service_failure_exception_event(&block)
        @event_emitter.on(:service_failure_exception, block) if block_given?
      end

      def on_throttling_exception_event(&block)
        @event_emitter.on(:throttling_exception, block) if block_given?
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
        on_audio_event_event(&block)
        on_stream_closed_event_event(&block)
        on_validation_exception_event(&block)
        on_service_quota_exceeded_exception_event(&block)
        on_service_failure_exception_event(&block)
        on_throttling_exception_event(&block)
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

