# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::DevOpsAgent
  module EventStreams
    class SendMessageEvents

      def initialize
        @event_emitter = Aws::EventEmitter.new
      end

      def on_response_created_event(&block)
        @event_emitter.on(:response_created, block) if block_given?
      end

      def on_response_in_progress_event(&block)
        @event_emitter.on(:response_in_progress, block) if block_given?
      end

      def on_response_completed_event(&block)
        @event_emitter.on(:response_completed, block) if block_given?
      end

      def on_response_failed_event(&block)
        @event_emitter.on(:response_failed, block) if block_given?
      end

      def on_summary_event(&block)
        @event_emitter.on(:summary, block) if block_given?
      end

      def on_heartbeat_event(&block)
        @event_emitter.on(:heartbeat, block) if block_given?
      end

      def on_content_block_start_event(&block)
        @event_emitter.on(:content_block_start, block) if block_given?
      end

      def on_content_block_delta_event(&block)
        @event_emitter.on(:content_block_delta, block) if block_given?
      end

      def on_content_block_stop_event(&block)
        @event_emitter.on(:content_block_stop, block) if block_given?
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
        on_response_created_event(&block)
        on_response_in_progress_event(&block)
        on_response_completed_event(&block)
        on_response_failed_event(&block)
        on_summary_event(&block)
        on_heartbeat_event(&block)
        on_content_block_start_event(&block)
        on_content_block_delta_event(&block)
        on_content_block_stop_event(&block)
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

