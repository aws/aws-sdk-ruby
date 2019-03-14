# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::TranscribeStreamingService
  module EventStreams
    class AudioStream

      def initialize
        @event_emitter = Aws::EventEmitter.new
      end

      # @option params [String, IO] :audio_chunk
      #   An audio blob that contains the next part of the audio that you want
      #   to transcribe.
      #
      def signal_audio_event_event(params = {})
        @event_emitter.emit(:audio_event, params)
      end

      def signal_end_stream
        @event_emitter.emit(:end_stream, {})
      end

      # @api private
      # @return Aws::EventEmitter
      attr_reader :event_emitter

    end

    class TranscriptResultStream

      def initialize
        @event_emitter = Aws::EventEmitter.new
      end

      def on_transcript_event_event(&block)
        @event_emitter.on(:transcript_event, Proc.new)
      end

      def on_bad_request_exception_event(&block)
        @event_emitter.on(:bad_request_exception, Proc.new)
      end

      def on_limit_exceeded_exception_event(&block)
        @event_emitter.on(:limit_exceeded_exception, Proc.new)
      end

      def on_internal_failure_exception_event(&block)
        @event_emitter.on(:internal_failure_exception, Proc.new)
      end

      def on_conflict_exception_event(&block)
        @event_emitter.on(:conflict_exception, Proc.new)
      end

      def on_error_event(&block)
        @event_emitter.on(:error, Proc.new)
      end

      def on_initial_response_event(&block)
        @event_emitter.on(:initial_response, Proc.new)
      end

      def on_event(&block)
        on_transcript_event_event(&block)
        on_bad_request_exception_event(&block)
        on_limit_exceeded_exception_event(&block)
        on_internal_failure_exception_event(&block)
        on_conflict_exception_event(&block)
        on_error_event(&block)
        on_initial_response_event(&block)
      end

      # @api private
      # @return Aws::EventEmitter
      attr_reader :event_emitter

    end

  end
end

