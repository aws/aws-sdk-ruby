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

      # @option params [String] :chat_mode
      #   The chat modes available to an Amazon Q Business end user.
      #
      #   * `RETRIEVAL_MODE` - The default chat mode for an Amazon Q Business
      #     application. When this mode is enabled, Amazon Q Business generates
      #     responses only from data sources connected to an Amazon Q Business
      #     application.
      #
      #   * `CREATOR_MODE` - By selecting this mode, users can choose to
      #     generate responses only from the LLM knowledge, without consulting
      #     connected data sources, for a chat request.
      #
      #   * `PLUGIN_MODE` - By selecting this mode, users can choose to use
      #     plugins in chat.
      #
      #   For more information, see [Admin controls and guardrails][1],
      #   [Plugins][2], and [Conversation settings][3].
      #
      #
      #
      #   [1]: https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/guardrails.html
      #   [2]: https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/plugins.html
      #   [3]: https://docs.aws.amazon.com/amazonq/latest/business-use-dg/using-web-experience.html#chat-source-scope
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
      # @option params [Types::AttributeFilter] :attribute_filter
      #   Enables filtering of responses based on document attributes or
      #   metadata fields.
      #
      def signal_configuration_event_event(params = {})
        @event_emitter.emit(:configuration_event, params)
      end

      # @option params [String] :user_message
      #   A user message in a text message input event.
      #
      def signal_text_event_event(params = {})
        @event_emitter.emit(:text_event, params)
      end

      # @option params [Types::AttachmentInput] :attachment
      #   A file directly uploaded into a web experience chat.
      #
      def signal_attachment_event_event(params = {})
        @event_emitter.emit(:attachment_event, params)
      end

      # @option params [String] :plugin_id
      #   The identifier of the plugin for which the action is being requested.
      #
      # @option params [Hash&lt;String,Types::ActionExecutionPayloadField&gt;] :payload
      #   A mapping of field names to the field values in input that an end user
      #   provides to Amazon Q Business requests to perform their plugin action.
      #
      # @option params [String] :payload_field_name_separator
      #   A string used to retain information about the hierarchical contexts
      #   within a action execution event payload.
      #
      def signal_action_execution_event_event(params = {})
        @event_emitter.emit(:action_execution_event, params)
      end

      # This event has no members
      def signal_end_of_input_event_event(params = {})
        @event_emitter.emit(:end_of_input_event, params)
      end

      # @option params [Hash&lt;String,String&gt;] :response_map
      #   The mapping of key-value pairs in an authentication challenge
      #   response.
      #
      def signal_auth_challenge_response_event_event(params = {})
        @event_emitter.emit(:auth_challenge_response_event, params)
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

      def on_text_event_event(&block)
        @event_emitter.on(:text_event, block) if block_given?
      end

      def on_metadata_event_event(&block)
        @event_emitter.on(:metadata_event, block) if block_given?
      end

      def on_action_review_event_event(&block)
        @event_emitter.on(:action_review_event, block) if block_given?
      end

      def on_failed_attachment_event_event(&block)
        @event_emitter.on(:failed_attachment_event, block) if block_given?
      end

      def on_auth_challenge_request_event_event(&block)
        @event_emitter.on(:auth_challenge_request_event, block) if block_given?
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
        on_text_event_event(&block)
        on_metadata_event_event(&block)
        on_action_review_event_event(&block)
        on_failed_attachment_event_event(&block)
        on_auth_challenge_request_event_event(&block)
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

