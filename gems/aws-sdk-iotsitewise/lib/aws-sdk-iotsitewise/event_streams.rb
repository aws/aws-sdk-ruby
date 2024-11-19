# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::IoTSiteWise
  module EventStreams
    class ResponseStream

      def initialize
        @event_emitter = Aws::EventEmitter.new
      end

      def on_trace_event(&block)
        @event_emitter.on(:trace, block) if block_given?
      end

      def on_output_event(&block)
        @event_emitter.on(:output, block) if block_given?
      end

      def on_access_denied_exception_event(&block)
        @event_emitter.on(:access_denied_exception, block) if block_given?
      end

      def on_conflicting_operation_exception_event(&block)
        @event_emitter.on(:conflicting_operation_exception, block) if block_given?
      end

      def on_internal_failure_exception_event(&block)
        @event_emitter.on(:internal_failure_exception, block) if block_given?
      end

      def on_invalid_request_exception_event(&block)
        @event_emitter.on(:invalid_request_exception, block) if block_given?
      end

      def on_limit_exceeded_exception_event(&block)
        @event_emitter.on(:limit_exceeded_exception, block) if block_given?
      end

      def on_resource_not_found_exception_event(&block)
        @event_emitter.on(:resource_not_found_exception, block) if block_given?
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
        on_trace_event(&block)
        on_output_event(&block)
        on_access_denied_exception_event(&block)
        on_conflicting_operation_exception_event(&block)
        on_internal_failure_exception_event(&block)
        on_invalid_request_exception_event(&block)
        on_limit_exceeded_exception_event(&block)
        on_resource_not_found_exception_event(&block)
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

