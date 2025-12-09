# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::SageMakerRuntimeHTTP2
  module EventStreams
    class RequestStreamEvent

      def initialize
        @event_emitter = Aws::EventEmitter.new
      end

      # @option params [String, StringIO, File] :bytes
      #   The payload bytes.
      #
      # @option params [String] :data_type
      #   Data type header. Can be one of these possible values: &quot;UTF8&quot;,
      #   &quot;BINARY&quot;.
      #
      # @option params [String] :completion_state
      #   Completion state header. Can be one of these possible values:
      #   &quot;PARTIAL&quot;, &quot;COMPLETE&quot;.
      #
      # @option params [String] :p
      #   Padding string for alignment.
      #
      def signal_payload_part_event(params = {})
        @event_emitter.emit(:payload_part, params)
      end

      def signal_end_stream
        @event_emitter.emit(:end_stream, {})
      end

      # @api private
      # @return Aws::EventEmitter
      attr_reader :event_emitter

    end

    class ResponseStreamEvent

      def initialize
        @event_emitter = Aws::EventEmitter.new
      end

      def on_payload_part_event(&block)
        @event_emitter.on(:payload_part, block) if block_given?
      end

      def on_model_stream_error_event(&block)
        @event_emitter.on(:model_stream_error, block) if block_given?
      end

      def on_internal_stream_failure_event(&block)
        @event_emitter.on(:internal_stream_failure, block) if block_given?
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
        on_payload_part_event(&block)
        on_model_stream_error_event(&block)
        on_internal_stream_failure_event(&block)
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

