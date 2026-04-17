# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ConnectHealth
  module EventStreams
    class MedicalScribeInputStream

      def initialize
        @event_emitter = Aws::EventEmitter.new
      end

      # @option params [String, StringIO, File] :audio_chunk
      #   The audio data chunk
      #
      def signal_audio_event_event(params = {})
        @event_emitter.emit(:audio_event, params)
      end

      # @option params [String] :type
      #   The type of session control event
      #
      def signal_session_control_event_event(params = {})
        @event_emitter.emit(:session_control_event, params)
      end

      # @option params [Types::MedicalScribePostStreamActionSettings] :post_stream_action_settings
      #   Settings for actions to perform after the stream ends
      #
      # @option params [Array&lt;Types::MedicalScribeChannelDefinition&gt;] :channel_definitions
      #   Channel definitions for the audio stream
      #
      # @option params [Types::EncounterContext] :encounter_context
      #   Context information about the clinical encounter
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

    class MedicalScribeOutputStream

      def initialize
        @event_emitter = Aws::EventEmitter.new
      end

      def on_transcript_event_event(&block)
        @event_emitter.on(:transcript_event, block) if block_given?
      end

      def on_internal_failure_exception_event(&block)
        @event_emitter.on(:internal_failure_exception, block) if block_given?
      end

      def on_validation_exception_event(&block)
        @event_emitter.on(:validation_exception, block) if block_given?
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
        on_internal_failure_exception_event(&block)
        on_validation_exception_event(&block)
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

