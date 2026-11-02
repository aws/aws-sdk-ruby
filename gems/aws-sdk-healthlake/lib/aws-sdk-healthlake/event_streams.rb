# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::HealthLake
  module EventStreams
    class AgentOutputMessageStream

      def initialize
        @event_emitter = Aws::EventEmitter.new
      end

      def on_text_message_event_event(&block)
        @event_emitter.on(:text_message_event, block) if block_given?
      end

      def on_progress_event_event(&block)
        @event_emitter.on(:progress_event, block) if block_given?
      end

      def on_heartbeat_event_event(&block)
        @event_emitter.on(:heartbeat_event, block) if block_given?
      end

      def on_error_event_event(&block)
        @event_emitter.on(:error_event, block) if block_given?
      end

      def on_end_of_output_event_event(&block)
        @event_emitter.on(:end_of_output_event, block) if block_given?
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
        on_text_message_event_event(&block)
        on_progress_event_event(&block)
        on_heartbeat_event_event(&block)
        on_error_event_event(&block)
        on_end_of_output_event_event(&block)
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

