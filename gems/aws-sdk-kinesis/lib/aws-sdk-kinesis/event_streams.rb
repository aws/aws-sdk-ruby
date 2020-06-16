# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Kinesis
  module EventStreams
    class SubscribeToShardEventStream

      def initialize
        @event_emitter = Aws::EventEmitter.new
      end

      def on_subscribe_to_shard_event_event(&block)
        @event_emitter.on(:subscribe_to_shard_event, block) if block_given?
      end

      def on_resource_not_found_exception_event(&block)
        @event_emitter.on(:resource_not_found_exception, block) if block_given?
      end

      def on_resource_in_use_exception_event(&block)
        @event_emitter.on(:resource_in_use_exception, block) if block_given?
      end

      def on_kms_disabled_exception_event(&block)
        @event_emitter.on(:kms_disabled_exception, block) if block_given?
      end

      def on_kms_invalid_state_exception_event(&block)
        @event_emitter.on(:kms_invalid_state_exception, block) if block_given?
      end

      def on_kms_access_denied_exception_event(&block)
        @event_emitter.on(:kms_access_denied_exception, block) if block_given?
      end

      def on_kms_not_found_exception_event(&block)
        @event_emitter.on(:kms_not_found_exception, block) if block_given?
      end

      def on_kms_opt_in_required_event(&block)
        @event_emitter.on(:kms_opt_in_required, block) if block_given?
      end

      def on_kms_throttling_exception_event(&block)
        @event_emitter.on(:kms_throttling_exception, block) if block_given?
      end

      def on_internal_failure_exception_event(&block)
        @event_emitter.on(:internal_failure_exception, block) if block_given?
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
        on_subscribe_to_shard_event_event(&block)
        on_resource_not_found_exception_event(&block)
        on_resource_in_use_exception_event(&block)
        on_kms_disabled_exception_event(&block)
        on_kms_invalid_state_exception_event(&block)
        on_kms_access_denied_exception_event(&block)
        on_kms_not_found_exception_event(&block)
        on_kms_opt_in_required_event(&block)
        on_kms_throttling_exception_event(&block)
        on_internal_failure_exception_event(&block)
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

