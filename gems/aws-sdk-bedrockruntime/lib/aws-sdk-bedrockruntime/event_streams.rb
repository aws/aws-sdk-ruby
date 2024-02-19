# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::BedrockRuntime
  module EventStreams
    class ResponseStream

      def initialize
        @event_emitter = Aws::EventEmitter.new
      end

      def on_chunk_event(&block)
        @event_emitter.on(:chunk, block) if block_given?
      end

      def on_internal_server_exception_event(&block)
        @event_emitter.on(:internal_server_exception, block) if block_given?
      end

      def on_model_stream_error_exception_event(&block)
        @event_emitter.on(:model_stream_error_exception, block) if block_given?
      end

      def on_validation_exception_event(&block)
        @event_emitter.on(:validation_exception, block) if block_given?
      end

      def on_throttling_exception_event(&block)
        @event_emitter.on(:throttling_exception, block) if block_given?
      end

      def on_model_timeout_exception_event(&block)
        @event_emitter.on(:model_timeout_exception, block) if block_given?
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
        on_chunk_event(&block)
        on_internal_server_exception_event(&block)
        on_model_stream_error_exception_event(&block)
        on_validation_exception_event(&block)
        on_throttling_exception_event(&block)
        on_model_timeout_exception_event(&block)
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

