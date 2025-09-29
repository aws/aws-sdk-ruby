# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::BedrockAgentRuntime
  module EventStreams
    class ResponseStream

      def initialize
        @event_emitter = Aws::EventEmitter.new
      end

      def on_chunk_event(&block)
        @event_emitter.on(:chunk, block) if block_given?
      end

      def on_trace_event(&block)
        @event_emitter.on(:trace, block) if block_given?
      end

      def on_return_control_event(&block)
        @event_emitter.on(:return_control, block) if block_given?
      end

      def on_internal_server_exception_event(&block)
        @event_emitter.on(:internal_server_exception, block) if block_given?
      end

      def on_validation_exception_event(&block)
        @event_emitter.on(:validation_exception, block) if block_given?
      end

      def on_resource_not_found_exception_event(&block)
        @event_emitter.on(:resource_not_found_exception, block) if block_given?
      end

      def on_service_quota_exceeded_exception_event(&block)
        @event_emitter.on(:service_quota_exceeded_exception, block) if block_given?
      end

      def on_throttling_exception_event(&block)
        @event_emitter.on(:throttling_exception, block) if block_given?
      end

      def on_access_denied_exception_event(&block)
        @event_emitter.on(:access_denied_exception, block) if block_given?
      end

      def on_conflict_exception_event(&block)
        @event_emitter.on(:conflict_exception, block) if block_given?
      end

      def on_dependency_failed_exception_event(&block)
        @event_emitter.on(:dependency_failed_exception, block) if block_given?
      end

      def on_bad_gateway_exception_event(&block)
        @event_emitter.on(:bad_gateway_exception, block) if block_given?
      end

      def on_model_not_ready_exception_event(&block)
        @event_emitter.on(:model_not_ready_exception, block) if block_given?
      end

      def on_files_event(&block)
        @event_emitter.on(:files, block) if block_given?
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
        on_trace_event(&block)
        on_return_control_event(&block)
        on_internal_server_exception_event(&block)
        on_validation_exception_event(&block)
        on_resource_not_found_exception_event(&block)
        on_service_quota_exceeded_exception_event(&block)
        on_throttling_exception_event(&block)
        on_access_denied_exception_event(&block)
        on_conflict_exception_event(&block)
        on_dependency_failed_exception_event(&block)
        on_bad_gateway_exception_event(&block)
        on_model_not_ready_exception_event(&block)
        on_files_event(&block)
        on_error_event(&block)
        on_initial_response_event(&block)
        on_unknown_event(&block)
      end

      # @api private
      # @return Aws::EventEmitter
      attr_reader :event_emitter

    end
    class FlowResponseStream

      def initialize
        @event_emitter = Aws::EventEmitter.new
      end

      def on_flow_output_event_event(&block)
        @event_emitter.on(:flow_output_event, block) if block_given?
      end

      def on_flow_completion_event_event(&block)
        @event_emitter.on(:flow_completion_event, block) if block_given?
      end

      def on_flow_trace_event_event(&block)
        @event_emitter.on(:flow_trace_event, block) if block_given?
      end

      def on_internal_server_exception_event(&block)
        @event_emitter.on(:internal_server_exception, block) if block_given?
      end

      def on_validation_exception_event(&block)
        @event_emitter.on(:validation_exception, block) if block_given?
      end

      def on_resource_not_found_exception_event(&block)
        @event_emitter.on(:resource_not_found_exception, block) if block_given?
      end

      def on_service_quota_exceeded_exception_event(&block)
        @event_emitter.on(:service_quota_exceeded_exception, block) if block_given?
      end

      def on_throttling_exception_event(&block)
        @event_emitter.on(:throttling_exception, block) if block_given?
      end

      def on_access_denied_exception_event(&block)
        @event_emitter.on(:access_denied_exception, block) if block_given?
      end

      def on_conflict_exception_event(&block)
        @event_emitter.on(:conflict_exception, block) if block_given?
      end

      def on_dependency_failed_exception_event(&block)
        @event_emitter.on(:dependency_failed_exception, block) if block_given?
      end

      def on_bad_gateway_exception_event(&block)
        @event_emitter.on(:bad_gateway_exception, block) if block_given?
      end

      def on_flow_multi_turn_input_request_event_event(&block)
        @event_emitter.on(:flow_multi_turn_input_request_event, block) if block_given?
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
        on_flow_output_event_event(&block)
        on_flow_completion_event_event(&block)
        on_flow_trace_event_event(&block)
        on_internal_server_exception_event(&block)
        on_validation_exception_event(&block)
        on_resource_not_found_exception_event(&block)
        on_service_quota_exceeded_exception_event(&block)
        on_throttling_exception_event(&block)
        on_access_denied_exception_event(&block)
        on_conflict_exception_event(&block)
        on_dependency_failed_exception_event(&block)
        on_bad_gateway_exception_event(&block)
        on_flow_multi_turn_input_request_event_event(&block)
        on_error_event(&block)
        on_initial_response_event(&block)
        on_unknown_event(&block)
      end

      # @api private
      # @return Aws::EventEmitter
      attr_reader :event_emitter

    end
    class InlineAgentResponseStream

      def initialize
        @event_emitter = Aws::EventEmitter.new
      end

      def on_chunk_event(&block)
        @event_emitter.on(:chunk, block) if block_given?
      end

      def on_trace_event(&block)
        @event_emitter.on(:trace, block) if block_given?
      end

      def on_return_control_event(&block)
        @event_emitter.on(:return_control, block) if block_given?
      end

      def on_internal_server_exception_event(&block)
        @event_emitter.on(:internal_server_exception, block) if block_given?
      end

      def on_validation_exception_event(&block)
        @event_emitter.on(:validation_exception, block) if block_given?
      end

      def on_resource_not_found_exception_event(&block)
        @event_emitter.on(:resource_not_found_exception, block) if block_given?
      end

      def on_service_quota_exceeded_exception_event(&block)
        @event_emitter.on(:service_quota_exceeded_exception, block) if block_given?
      end

      def on_throttling_exception_event(&block)
        @event_emitter.on(:throttling_exception, block) if block_given?
      end

      def on_access_denied_exception_event(&block)
        @event_emitter.on(:access_denied_exception, block) if block_given?
      end

      def on_conflict_exception_event(&block)
        @event_emitter.on(:conflict_exception, block) if block_given?
      end

      def on_dependency_failed_exception_event(&block)
        @event_emitter.on(:dependency_failed_exception, block) if block_given?
      end

      def on_bad_gateway_exception_event(&block)
        @event_emitter.on(:bad_gateway_exception, block) if block_given?
      end

      def on_files_event(&block)
        @event_emitter.on(:files, block) if block_given?
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
        on_trace_event(&block)
        on_return_control_event(&block)
        on_internal_server_exception_event(&block)
        on_validation_exception_event(&block)
        on_resource_not_found_exception_event(&block)
        on_service_quota_exceeded_exception_event(&block)
        on_throttling_exception_event(&block)
        on_access_denied_exception_event(&block)
        on_conflict_exception_event(&block)
        on_dependency_failed_exception_event(&block)
        on_bad_gateway_exception_event(&block)
        on_files_event(&block)
        on_error_event(&block)
        on_initial_response_event(&block)
        on_unknown_event(&block)
      end

      # @api private
      # @return Aws::EventEmitter
      attr_reader :event_emitter

    end
    class OptimizedPromptStream

      def initialize
        @event_emitter = Aws::EventEmitter.new
      end

      def on_optimized_prompt_event_event(&block)
        @event_emitter.on(:optimized_prompt_event, block) if block_given?
      end

      def on_analyze_prompt_event_event(&block)
        @event_emitter.on(:analyze_prompt_event, block) if block_given?
      end

      def on_internal_server_exception_event(&block)
        @event_emitter.on(:internal_server_exception, block) if block_given?
      end

      def on_throttling_exception_event(&block)
        @event_emitter.on(:throttling_exception, block) if block_given?
      end

      def on_validation_exception_event(&block)
        @event_emitter.on(:validation_exception, block) if block_given?
      end

      def on_dependency_failed_exception_event(&block)
        @event_emitter.on(:dependency_failed_exception, block) if block_given?
      end

      def on_access_denied_exception_event(&block)
        @event_emitter.on(:access_denied_exception, block) if block_given?
      end

      def on_bad_gateway_exception_event(&block)
        @event_emitter.on(:bad_gateway_exception, block) if block_given?
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
        on_optimized_prompt_event_event(&block)
        on_analyze_prompt_event_event(&block)
        on_internal_server_exception_event(&block)
        on_throttling_exception_event(&block)
        on_validation_exception_event(&block)
        on_dependency_failed_exception_event(&block)
        on_access_denied_exception_event(&block)
        on_bad_gateway_exception_event(&block)
        on_error_event(&block)
        on_initial_response_event(&block)
        on_unknown_event(&block)
      end

      # @api private
      # @return Aws::EventEmitter
      attr_reader :event_emitter

    end
    class RetrieveAndGenerateStreamResponseOutput

      def initialize
        @event_emitter = Aws::EventEmitter.new
      end

      def on_output_event(&block)
        @event_emitter.on(:output, block) if block_given?
      end

      def on_citation_event(&block)
        @event_emitter.on(:citation, block) if block_given?
      end

      def on_guardrail_event(&block)
        @event_emitter.on(:guardrail, block) if block_given?
      end

      def on_internal_server_exception_event(&block)
        @event_emitter.on(:internal_server_exception, block) if block_given?
      end

      def on_validation_exception_event(&block)
        @event_emitter.on(:validation_exception, block) if block_given?
      end

      def on_resource_not_found_exception_event(&block)
        @event_emitter.on(:resource_not_found_exception, block) if block_given?
      end

      def on_service_quota_exceeded_exception_event(&block)
        @event_emitter.on(:service_quota_exceeded_exception, block) if block_given?
      end

      def on_throttling_exception_event(&block)
        @event_emitter.on(:throttling_exception, block) if block_given?
      end

      def on_access_denied_exception_event(&block)
        @event_emitter.on(:access_denied_exception, block) if block_given?
      end

      def on_conflict_exception_event(&block)
        @event_emitter.on(:conflict_exception, block) if block_given?
      end

      def on_dependency_failed_exception_event(&block)
        @event_emitter.on(:dependency_failed_exception, block) if block_given?
      end

      def on_bad_gateway_exception_event(&block)
        @event_emitter.on(:bad_gateway_exception, block) if block_given?
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
        on_output_event(&block)
        on_citation_event(&block)
        on_guardrail_event(&block)
        on_internal_server_exception_event(&block)
        on_validation_exception_event(&block)
        on_resource_not_found_exception_event(&block)
        on_service_quota_exceeded_exception_event(&block)
        on_throttling_exception_event(&block)
        on_access_denied_exception_event(&block)
        on_conflict_exception_event(&block)
        on_dependency_failed_exception_event(&block)
        on_bad_gateway_exception_event(&block)
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

