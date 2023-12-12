# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::CloudWatchLogs
  module EventStreams
    class StartLiveTailResponseStream

      def initialize
        @event_emitter = Aws::EventEmitter.new
      end

      def on_session_start_event(&block)
        @event_emitter.on(:session_start, block) if block_given?
      end

      def on_session_update_event(&block)
        @event_emitter.on(:session_update, block) if block_given?
      end

      def on_session_timeout_exception_event(&block)
        @event_emitter.on(:session_timeout_exception, block) if block_given?
      end

      def on_session_streaming_exception_event(&block)
        @event_emitter.on(:session_streaming_exception, block) if block_given?
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
        on_session_start_event(&block)
        on_session_update_event(&block)
        on_session_timeout_exception_event(&block)
        on_session_streaming_exception_event(&block)
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

