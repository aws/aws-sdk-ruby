# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::QBusiness
  module EventStreams
    class ChatInputStream

      def initialize
        @event_emitter = Aws::EventEmitter.new
      end

      # @option params [Hash&lt;String,Types::ActionExecutionPayloadField&gt;] :payload
      #
      # @option params [String] :payload_field_name_separator
      #
      # @option params [String] :plugin_id
      #
      def signal_action_execution_event_event(params = {})
        @event_emitter.emit(:action_execution_event, params)
      end

      # @option params [Types::AttachmentInput] :attachment
      #   A file directly uploaded into a web experience chat.
      #
      def signal_attachment_event_event(params = {})
        @event_emitter.emit(:attachment_event, params)
      end

      # @option params [Types::AttributeFilter] :attribute_filter
      #   Enables filtering of responses based on document attributes or
      #   metadata fields.
      #
      # @option params [String] :chat_mode
      #
      # @option params [Types::ChatModeConfiguration] :chat_mode_configuration
      #   Configuration information for Amazon Q Business conversation modes.
      #
      #   For more information, see [Admin controls and guardrails][1] and
      #   [Conversation settings][2].
      #
      #
      #
      #   [1]: https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/guardrails.html
      #   [2]: https://docs.aws.amazon.com/amazonq/latest/business-use-dg/using-web-experience.html#chat-source-scope
      #
      def signal_configuration_event_event(params = {})
        @event_emitter.emit(:configuration_event, params)
      end

      # This event has no members
      def signal_end_of_input_event_event(params = {})
        @event_emitter.emit(:end_of_input_event, params)
      end

      # @option params [String] :user_message
      #
      def signal_text_event_event(params = {})
        @event_emitter.emit(:text_event, params)
      end

      def signal_end_stream
        @event_emitter.emit(:end_stream, {})
      end

      # @api private
      # @return Aws::EventEmitter
      attr_reader :event_emitter

    end

    class ChatOutputStream

      def initialize
        @event_emitter = Aws::EventEmitter.new
      end

      def on_action_review_event_event(&block)
        @event_emitter.on(:action_review_event, block) if block_given?
      end

      def on_failed_attachment_event_event(&block)
        @event_emitter.on(:failed_attachment_event, block) if block_given?
      end

      def on_metadata_event_event(&block)
        @event_emitter.on(:metadata_event, block) if block_given?
      end

      def on_text_event_event(&block)
        @event_emitter.on(:text_event, block) if block_given?
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
        on_action_review_event_event(&block)
        on_failed_attachment_event_event(&block)
        on_metadata_event_event(&block)
        on_text_event_event(&block)
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

