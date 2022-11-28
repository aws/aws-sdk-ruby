# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::TranscribeStreamingService
  module EventStreams
    class AudioStream

      def initialize
        @event_emitter = Aws::EventEmitter.new
      end

      # @option params [String, StringIO, File] :audio_chunk
      #   An audio blob that contains the next part of the audio that you want
      #   to transcribe. The maximum audio chunk size is 32 KB.
      #
      def signal_audio_event_event(params = {})
        @event_emitter.emit(:audio_event, params)
      end

      # @option params [Array&lt;Types::ChannelDefinition&gt;] :channel_definitions
      #   Indicates which speaker is on which audio channel.
      #
      # @option params [Types::PostCallAnalyticsSettings] :post_call_analytics_settings
      #   Provides additional optional settings for your Call Analytics
      #   post-call request, including encryption and output locations for your
      #   redacted and unredacted transcript.
      #
      def signal_configuration_event_event(params = {})
        @event_emitter.emit(:configuration_event, params)
      end

      def signal_end_stream
        @event_emitter.emit(:end_stream, {})
      end

      # @api private
      # @return Aws::EventEmitter
      attr_reader :event_emitter

    end

    class AudioStream

      def initialize
        @event_emitter = Aws::EventEmitter.new
      end

      # @option params [String, StringIO, File] :audio_chunk
      #   An audio blob that contains the next part of the audio that you want
      #   to transcribe. The maximum audio chunk size is 32 KB.
      #
      def signal_audio_event_event(params = {})
        @event_emitter.emit(:audio_event, params)
      end

      # @option params [Array&lt;Types::ChannelDefinition&gt;] :channel_definitions
      #   Indicates which speaker is on which audio channel.
      #
      # @option params [Types::PostCallAnalyticsSettings] :post_call_analytics_settings
      #   Provides additional optional settings for your Call Analytics
      #   post-call request, including encryption and output locations for your
      #   redacted and unredacted transcript.
      #
      def signal_configuration_event_event(params = {})
        @event_emitter.emit(:configuration_event, params)
      end

      def signal_end_stream
        @event_emitter.emit(:end_stream, {})
      end

      # @api private
      # @return Aws::EventEmitter
      attr_reader :event_emitter

    end

    class AudioStream

      def initialize
        @event_emitter = Aws::EventEmitter.new
      end

      # @option params [String, StringIO, File] :audio_chunk
      #   An audio blob that contains the next part of the audio that you want
      #   to transcribe. The maximum audio chunk size is 32 KB.
      #
      def signal_audio_event_event(params = {})
        @event_emitter.emit(:audio_event, params)
      end

      # @option params [Array&lt;Types::ChannelDefinition&gt;] :channel_definitions
      #   Indicates which speaker is on which audio channel.
      #
      # @option params [Types::PostCallAnalyticsSettings] :post_call_analytics_settings
      #   Provides additional optional settings for your Call Analytics
      #   post-call request, including encryption and output locations for your
      #   redacted and unredacted transcript.
      #
      def signal_configuration_event_event(params = {})
        @event_emitter.emit(:configuration_event, params)
      end

      def signal_end_stream
        @event_emitter.emit(:end_stream, {})
      end

      # @api private
      # @return Aws::EventEmitter
      attr_reader :event_emitter

    end

    class CallAnalyticsTranscriptResultStream

      def initialize
        @event_emitter = Aws::EventEmitter.new
      end

      def on_utterance_event_event(&block)
        @event_emitter.on(:utterance_event, block) if block_given?
      end

      def on_category_event_event(&block)
        @event_emitter.on(:category_event, block) if block_given?
      end

      def on_bad_request_exception_event(&block)
        @event_emitter.on(:bad_request_exception, block) if block_given?
      end

      def on_limit_exceeded_exception_event(&block)
        @event_emitter.on(:limit_exceeded_exception, block) if block_given?
      end

      def on_internal_failure_exception_event(&block)
        @event_emitter.on(:internal_failure_exception, block) if block_given?
      end

      def on_conflict_exception_event(&block)
        @event_emitter.on(:conflict_exception, block) if block_given?
      end

      def on_service_unavailable_exception_event(&block)
        @event_emitter.on(:service_unavailable_exception, block) if block_given?
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
        on_utterance_event_event(&block)
        on_category_event_event(&block)
        on_bad_request_exception_event(&block)
        on_limit_exceeded_exception_event(&block)
        on_internal_failure_exception_event(&block)
        on_conflict_exception_event(&block)
        on_service_unavailable_exception_event(&block)
        on_error_event(&block)
        on_initial_response_event(&block)
        on_unknown_event(&block)
      end

      # @api private
      # @return Aws::EventEmitter
      attr_reader :event_emitter

    end
    class MedicalTranscriptResultStream

      def initialize
        @event_emitter = Aws::EventEmitter.new
      end

      def on_transcript_event_event(&block)
        @event_emitter.on(:transcript_event, block) if block_given?
      end

      def on_bad_request_exception_event(&block)
        @event_emitter.on(:bad_request_exception, block) if block_given?
      end

      def on_limit_exceeded_exception_event(&block)
        @event_emitter.on(:limit_exceeded_exception, block) if block_given?
      end

      def on_internal_failure_exception_event(&block)
        @event_emitter.on(:internal_failure_exception, block) if block_given?
      end

      def on_conflict_exception_event(&block)
        @event_emitter.on(:conflict_exception, block) if block_given?
      end

      def on_service_unavailable_exception_event(&block)
        @event_emitter.on(:service_unavailable_exception, block) if block_given?
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
        on_transcript_event_event(&block)
        on_bad_request_exception_event(&block)
        on_limit_exceeded_exception_event(&block)
        on_internal_failure_exception_event(&block)
        on_conflict_exception_event(&block)
        on_service_unavailable_exception_event(&block)
        on_error_event(&block)
        on_initial_response_event(&block)
        on_unknown_event(&block)
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
        @event_emitter.on(:transcript_event, block) if block_given?
      end

      def on_bad_request_exception_event(&block)
        @event_emitter.on(:bad_request_exception, block) if block_given?
      end

      def on_limit_exceeded_exception_event(&block)
        @event_emitter.on(:limit_exceeded_exception, block) if block_given?
      end

      def on_internal_failure_exception_event(&block)
        @event_emitter.on(:internal_failure_exception, block) if block_given?
      end

      def on_conflict_exception_event(&block)
        @event_emitter.on(:conflict_exception, block) if block_given?
      end

      def on_service_unavailable_exception_event(&block)
        @event_emitter.on(:service_unavailable_exception, block) if block_given?
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
        on_transcript_event_event(&block)
        on_bad_request_exception_event(&block)
        on_limit_exceeded_exception_event(&block)
        on_internal_failure_exception_event(&block)
        on_conflict_exception_event(&block)
        on_service_unavailable_exception_event(&block)
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

