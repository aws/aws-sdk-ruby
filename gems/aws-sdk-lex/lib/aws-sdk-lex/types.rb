# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Lex
  module Types

    # Either the Amazon Lex bot is still building, or one of the dependent
    # services (Amazon Polly, AWS Lambda) failed with an internal service
    # error.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/runtime.lex-2016-11-28/BadGatewayException AWS API Documentation
    #
    class BadGatewayException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request validation failed, there is no usable message in the context,
    # or the bot build failed, is still in progress, or contains unbuilt
    # changes.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/runtime.lex-2016-11-28/BadRequestException AWS API Documentation
    #
    class BadRequestException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents an option to be shown on the client platform (Facebook,
    # Slack, etc.)
    #
    # @!attribute [rw] text
    #   Text that is visible to the user on the button.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value sent to Amazon Lex when a user chooses the button. For
    #   example, consider button text "NYC." When the user chooses the
    #   button, the value sent can be "New York City."
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/runtime.lex-2016-11-28/Button AWS API Documentation
    #
    class Button < Struct.new(
      :text,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Two clients are using the same AWS account, Amazon Lex bot, and user
    # ID.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/runtime.lex-2016-11-28/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteSessionRequest
    #   data as a hash:
    #
    #       {
    #         bot_name: "BotName", # required
    #         bot_alias: "BotAlias", # required
    #         user_id: "UserId", # required
    #       }
    #
    # @!attribute [rw] bot_name
    #   The name of the bot that contains the session data.
    #   @return [String]
    #
    # @!attribute [rw] bot_alias
    #   The alias in use for the bot that contains the session data.
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   The identifier of the user associated with the session data.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/runtime.lex-2016-11-28/DeleteSessionRequest AWS API Documentation
    #
    class DeleteSessionRequest < Struct.new(
      :bot_name,
      :bot_alias,
      :user_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] bot_name
    #   The name of the bot associated with the session data.
    #   @return [String]
    #
    # @!attribute [rw] bot_alias
    #   The alias in use for the bot associated with the session data.
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   The ID of the client application user.
    #   @return [String]
    #
    # @!attribute [rw] session_id
    #   The unique identifier for the session.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/runtime.lex-2016-11-28/DeleteSessionResponse AWS API Documentation
    #
    class DeleteSessionResponse < Struct.new(
      :bot_name,
      :bot_alias,
      :user_id,
      :session_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # One of the dependencies, such as AWS Lambda or Amazon Polly, threw an
    # exception. For example,
    #
    # * If Amazon Lex does not have sufficient permissions to call a Lambda
    #   function.
    #
    # * If a Lambda function takes longer than 30 seconds to execute.
    #
    # * If a fulfillment Lambda function returns a `Delegate` dialog action
    #   without removing any slot values.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/runtime.lex-2016-11-28/DependencyFailedException AWS API Documentation
    #
    class DependencyFailedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the next action that the bot should take in its interaction
    # with the user and provides information about the context in which the
    # action takes place. Use the `DialogAction` data type to set the
    # interaction to a specific state, or to return the interaction to a
    # previous state.
    #
    # @note When making an API call, you may pass DialogAction
    #   data as a hash:
    #
    #       {
    #         type: "ElicitIntent", # required, accepts ElicitIntent, ConfirmIntent, ElicitSlot, Close, Delegate
    #         intent_name: "IntentName",
    #         slots: {
    #           "String" => "String",
    #         },
    #         slot_to_elicit: "String",
    #         fulfillment_state: "Fulfilled", # accepts Fulfilled, Failed, ReadyForFulfillment
    #         message: "Text",
    #         message_format: "PlainText", # accepts PlainText, CustomPayload, SSML, Composite
    #       }
    #
    # @!attribute [rw] type
    #   The next action that the bot should take in its interaction with the
    #   user. The possible values are:
    #
    #   * `ConfirmIntent` - The next action is asking the user if the intent
    #     is complete and ready to be fulfilled. This is a yes/no question
    #     such as "Place the order?"
    #
    #   * `Close` - Indicates that the there will not be a response from the
    #     user. For example, the statement "Your order has been placed"
    #     does not require a response.
    #
    #   * `Delegate` - The next action is determined by Amazon Lex.
    #
    #   * `ElicitIntent` - The next action is to determine the intent that
    #     the user wants to fulfill.
    #
    #   * `ElicitSlot` - The next action is to elicit a slot value from the
    #     user.
    #   @return [String]
    #
    # @!attribute [rw] intent_name
    #   The name of the intent.
    #   @return [String]
    #
    # @!attribute [rw] slots
    #   Map of the slots that have been gathered and their values.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] slot_to_elicit
    #   The name of the slot that should be elicited from the user.
    #   @return [String]
    #
    # @!attribute [rw] fulfillment_state
    #   The fulfillment state of the intent. The possible values are:
    #
    #   * `Failed` - The Lambda function associated with the intent failed
    #     to fulfill the intent.
    #
    #   * `Fulfilled` - The intent has fulfilled by the Lambda function
    #     associated with the intent.
    #
    #   * `ReadyForFulfillment` - All of the information necessary for the
    #     intent is present and the intent ready to be fulfilled by the
    #     client application.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The message that should be shown to the user. If you don't specify
    #   a message, Amazon Lex will use the message configured for the
    #   intent.
    #   @return [String]
    #
    # @!attribute [rw] message_format
    #   * `PlainText` - The message contains plain UTF-8 text.
    #
    #   * `CustomPayload` - The message is a custom format for the client.
    #
    #   * `SSML` - The message contains text formatted for voice output.
    #
    #   * `Composite` - The message contains an escaped JSON object
    #     containing one or more messages. For more information, see
    #     [Message Groups][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lex/latest/dg/howitworks-manage-prompts.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/runtime.lex-2016-11-28/DialogAction AWS API Documentation
    #
    class DialogAction < Struct.new(
      :type,
      :intent_name,
      :slots,
      :slot_to_elicit,
      :fulfillment_state,
      :message,
      :message_format)
      SENSITIVE = [:slots, :message]
      include Aws::Structure
    end

    # Represents an option rendered to the user when a prompt is shown. It
    # could be an image, a button, a link, or text.
    #
    # @!attribute [rw] title
    #   The title of the option.
    #   @return [String]
    #
    # @!attribute [rw] sub_title
    #   The subtitle shown below the title.
    #   @return [String]
    #
    # @!attribute [rw] attachment_link_url
    #   The URL of an attachment to the response card.
    #   @return [String]
    #
    # @!attribute [rw] image_url
    #   The URL of an image that is displayed to the user.
    #   @return [String]
    #
    # @!attribute [rw] buttons
    #   The list of options to show to the user.
    #   @return [Array<Types::Button>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/runtime.lex-2016-11-28/GenericAttachment AWS API Documentation
    #
    class GenericAttachment < Struct.new(
      :title,
      :sub_title,
      :attachment_link_url,
      :image_url,
      :buttons)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetSessionRequest
    #   data as a hash:
    #
    #       {
    #         bot_name: "BotName", # required
    #         bot_alias: "BotAlias", # required
    #         user_id: "UserId", # required
    #         checkpoint_label_filter: "IntentSummaryCheckpointLabel",
    #       }
    #
    # @!attribute [rw] bot_name
    #   The name of the bot that contains the session data.
    #   @return [String]
    #
    # @!attribute [rw] bot_alias
    #   The alias in use for the bot that contains the session data.
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   The ID of the client application user. Amazon Lex uses this to
    #   identify a user's conversation with your bot.
    #   @return [String]
    #
    # @!attribute [rw] checkpoint_label_filter
    #   A string used to filter the intents returned in the
    #   `recentIntentSummaryView` structure.
    #
    #   When you specify a filter, only intents with their `checkpointLabel`
    #   field set to that string are returned.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/runtime.lex-2016-11-28/GetSessionRequest AWS API Documentation
    #
    class GetSessionRequest < Struct.new(
      :bot_name,
      :bot_alias,
      :user_id,
      :checkpoint_label_filter)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] recent_intent_summary_view
    #   An array of information about the intents used in the session. The
    #   array can contain a maximum of three summaries. If more than three
    #   intents are used in the session, the `recentIntentSummaryView`
    #   operation contains information about the last three intents used.
    #
    #   If you set the `checkpointLabelFilter` parameter in the request, the
    #   array contains only the intents with the specified label.
    #   @return [Array<Types::IntentSummary>]
    #
    # @!attribute [rw] session_attributes
    #   Map of key/value pairs representing the session-specific context
    #   information. It contains application information passed between
    #   Amazon Lex and a client application.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] session_id
    #   A unique identifier for the session.
    #   @return [String]
    #
    # @!attribute [rw] dialog_action
    #   Describes the current state of the bot.
    #   @return [Types::DialogAction]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/runtime.lex-2016-11-28/GetSessionResponse AWS API Documentation
    #
    class GetSessionResponse < Struct.new(
      :recent_intent_summary_view,
      :session_attributes,
      :session_id,
      :dialog_action)
      SENSITIVE = [:session_attributes]
      include Aws::Structure
    end

    # Provides a score that indicates the confidence that Amazon Lex has
    # that an intent is the one that satisfies the user's intent.
    #
    # @!attribute [rw] score
    #   A score that indicates how confident Amazon Lex is that an intent
    #   satisfies the user's intent. Ranges between 0.00 and 1.00. Higher
    #   scores indicate higher confidence.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/runtime.lex-2016-11-28/IntentConfidence AWS API Documentation
    #
    class IntentConfidence < Struct.new(
      :score)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about the state of an intent. You can use this
    # information to get the current state of an intent so that you can
    # process the intent, or so that you can return the intent to its
    # previous state.
    #
    # @note When making an API call, you may pass IntentSummary
    #   data as a hash:
    #
    #       {
    #         intent_name: "IntentName",
    #         checkpoint_label: "IntentSummaryCheckpointLabel",
    #         slots: {
    #           "String" => "String",
    #         },
    #         confirmation_status: "None", # accepts None, Confirmed, Denied
    #         dialog_action_type: "ElicitIntent", # required, accepts ElicitIntent, ConfirmIntent, ElicitSlot, Close, Delegate
    #         fulfillment_state: "Fulfilled", # accepts Fulfilled, Failed, ReadyForFulfillment
    #         slot_to_elicit: "String",
    #       }
    #
    # @!attribute [rw] intent_name
    #   The name of the intent.
    #   @return [String]
    #
    # @!attribute [rw] checkpoint_label
    #   A user-defined label that identifies a particular intent. You can
    #   use this label to return to a previous intent.
    #
    #   Use the `checkpointLabelFilter` parameter of the `GetSessionRequest`
    #   operation to filter the intents returned by the operation to those
    #   with only the specified label.
    #   @return [String]
    #
    # @!attribute [rw] slots
    #   Map of the slots that have been gathered and their values.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] confirmation_status
    #   The status of the intent after the user responds to the confirmation
    #   prompt. If the user confirms the intent, Amazon Lex sets this field
    #   to `Confirmed`. If the user denies the intent, Amazon Lex sets this
    #   value to `Denied`. The possible values are:
    #
    #   * `Confirmed` - The user has responded "Yes" to the confirmation
    #     prompt, confirming that the intent is complete and that it is
    #     ready to be fulfilled.
    #
    #   * `Denied` - The user has responded "No" to the confirmation
    #     prompt.
    #
    #   * `None` - The user has never been prompted for confirmation; or,
    #     the user was prompted but did not confirm or deny the prompt.
    #   @return [String]
    #
    # @!attribute [rw] dialog_action_type
    #   The next action that the bot should take in its interaction with the
    #   user. The possible values are:
    #
    #   * `ConfirmIntent` - The next action is asking the user if the intent
    #     is complete and ready to be fulfilled. This is a yes/no question
    #     such as "Place the order?"
    #
    #   * `Close` - Indicates that the there will not be a response from the
    #     user. For example, the statement "Your order has been placed"
    #     does not require a response.
    #
    #   * `ElicitIntent` - The next action is to determine the intent that
    #     the user wants to fulfill.
    #
    #   * `ElicitSlot` - The next action is to elicit a slot value from the
    #     user.
    #   @return [String]
    #
    # @!attribute [rw] fulfillment_state
    #   The fulfillment state of the intent. The possible values are:
    #
    #   * `Failed` - The Lambda function associated with the intent failed
    #     to fulfill the intent.
    #
    #   * `Fulfilled` - The intent has fulfilled by the Lambda function
    #     associated with the intent.
    #
    #   * `ReadyForFulfillment` - All of the information necessary for the
    #     intent is present and the intent ready to be fulfilled by the
    #     client application.
    #   @return [String]
    #
    # @!attribute [rw] slot_to_elicit
    #   The next slot to elicit from the user. If there is not slot to
    #   elicit, the field is blank.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/runtime.lex-2016-11-28/IntentSummary AWS API Documentation
    #
    class IntentSummary < Struct.new(
      :intent_name,
      :checkpoint_label,
      :slots,
      :confirmation_status,
      :dialog_action_type,
      :fulfillment_state,
      :slot_to_elicit)
      SENSITIVE = [:slots]
      include Aws::Structure
    end

    # Internal service error. Retry the call.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/runtime.lex-2016-11-28/InternalFailureException AWS API Documentation
    #
    class InternalFailureException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Exceeded a limit.
    #
    # @!attribute [rw] retry_after_seconds
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/runtime.lex-2016-11-28/LimitExceededException AWS API Documentation
    #
    class LimitExceededException < Struct.new(
      :retry_after_seconds,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # This exception is not used.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/runtime.lex-2016-11-28/LoopDetectedException AWS API Documentation
    #
    class LoopDetectedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The accept header in the request does not have a valid value.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/runtime.lex-2016-11-28/NotAcceptableException AWS API Documentation
    #
    class NotAcceptableException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The resource (such as the Amazon Lex bot or an alias) that is referred
    # to is not found.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/runtime.lex-2016-11-28/NotFoundException AWS API Documentation
    #
    class NotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass PostContentRequest
    #   data as a hash:
    #
    #       {
    #         bot_name: "BotName", # required
    #         bot_alias: "BotAlias", # required
    #         user_id: "UserId", # required
    #         session_attributes: "AttributesString",
    #         request_attributes: "AttributesString",
    #         content_type: "HttpContentType", # required
    #         accept: "Accept",
    #         input_stream: "data", # required
    #       }
    #
    # @!attribute [rw] bot_name
    #   Name of the Amazon Lex bot.
    #   @return [String]
    #
    # @!attribute [rw] bot_alias
    #   Alias of the Amazon Lex bot.
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   The ID of the client application user. Amazon Lex uses this to
    #   identify a user's conversation with your bot. At runtime, each
    #   request must contain the `userID` field.
    #
    #   To decide the user ID to use for your application, consider the
    #   following factors.
    #
    #   * The `userID` field must not contain any personally identifiable
    #     information of the user, for example, name, personal
    #     identification numbers, or other end user personal information.
    #
    #   * If you want a user to start a conversation on one device and
    #     continue on another device, use a user-specific identifier.
    #
    #   * If you want the same user to be able to have two independent
    #     conversations on two different devices, choose a device-specific
    #     identifier.
    #
    #   * A user can't have two independent conversations with two
    #     different versions of the same bot. For example, a user can't
    #     have a conversation with the PROD and BETA versions of the same
    #     bot. If you anticipate that a user will need to have conversation
    #     with two different versions, for example, while testing, include
    #     the bot alias in the user ID to separate the two conversations.
    #   @return [String]
    #
    # @!attribute [rw] session_attributes
    #   You pass this value as the `x-amz-lex-session-attributes` HTTP
    #   header.
    #
    #   Application-specific information passed between Amazon Lex and a
    #   client application. The value must be a JSON serialized and base64
    #   encoded map with string keys and values. The total size of the
    #   `sessionAttributes` and `requestAttributes` headers is limited to 12
    #   KB.
    #
    #   For more information, see [Setting Session Attributes][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lex/latest/dg/context-mgmt.html#context-mgmt-session-attribs
    #   @return [String]
    #
    # @!attribute [rw] request_attributes
    #   You pass this value as the `x-amz-lex-request-attributes` HTTP
    #   header.
    #
    #   Request-specific information passed between Amazon Lex and a client
    #   application. The value must be a JSON serialized and base64 encoded
    #   map with string keys and values. The total size of the
    #   `requestAttributes` and `sessionAttributes` headers is limited to 12
    #   KB.
    #
    #   The namespace `x-amz-lex:` is reserved for special attributes.
    #   Don't create any request attributes with the prefix `x-amz-lex:`.
    #
    #   For more information, see [Setting Request Attributes][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lex/latest/dg/context-mgmt.html#context-mgmt-request-attribs
    #   @return [String]
    #
    # @!attribute [rw] content_type
    #   You pass this value as the `Content-Type` HTTP header.
    #
    #   Indicates the audio format or text. The header value must start with
    #   one of the following prefixes:
    #
    #   * PCM format, audio data must be in little-endian byte order.
    #
    #     * audio/l16; rate=16000; channels=1
    #
    #     * audio/x-l16; sample-rate=16000; channel-count=1
    #
    #     * audio/lpcm; sample-rate=8000; sample-size-bits=16;
    #       channel-count=1; is-big-endian=false
    #
    #   * Opus format
    #
    #     * audio/x-cbr-opus-with-preamble; preamble-size=0;
    #       bit-rate=256000; frame-size-milliseconds=4
    #
    #     ^
    #
    #   * Text format
    #
    #     * text/plain; charset=utf-8
    #
    #     ^
    #   @return [String]
    #
    # @!attribute [rw] accept
    #   You pass this value as the `Accept` HTTP header.
    #
    #   The message Amazon Lex returns in the response can be either text or
    #   speech based on the `Accept` HTTP header value in the request.
    #
    #   * If the value is `text/plain; charset=utf-8`, Amazon Lex returns
    #     text in the response.
    #
    #   * If the value begins with `audio/`, Amazon Lex returns speech in
    #     the response. Amazon Lex uses Amazon Polly to generate the speech
    #     (using the configuration you specified in the `Accept` header).
    #     For example, if you specify `audio/mpeg` as the value, Amazon Lex
    #     returns speech in the MPEG format.
    #
    #   * If the value is `audio/pcm`, the speech returned is `audio/pcm` in
    #     16-bit, little endian format.
    #
    #   * The following are the accepted values:
    #
    #     * audio/mpeg
    #
    #     * audio/ogg
    #
    #     * audio/pcm
    #
    #     * text/plain; charset=utf-8
    #
    #     * audio/* (defaults to mpeg)
    #   @return [String]
    #
    # @!attribute [rw] input_stream
    #   User input in PCM or Opus audio format or text format as described
    #   in the `Content-Type` HTTP header.
    #
    #   You can stream audio data to Amazon Lex or you can create a local
    #   buffer that captures all of the audio data before sending. In
    #   general, you get better performance if you stream audio data rather
    #   than buffering the data locally.
    #   @return [IO]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/runtime.lex-2016-11-28/PostContentRequest AWS API Documentation
    #
    class PostContentRequest < Struct.new(
      :bot_name,
      :bot_alias,
      :user_id,
      :session_attributes,
      :request_attributes,
      :content_type,
      :accept,
      :input_stream)
      SENSITIVE = [:session_attributes, :request_attributes]
      include Aws::Structure
    end

    # @!attribute [rw] content_type
    #   Content type as specified in the `Accept` HTTP header in the
    #   request.
    #   @return [String]
    #
    # @!attribute [rw] intent_name
    #   Current user intent that Amazon Lex is aware of.
    #   @return [String]
    #
    # @!attribute [rw] nlu_intent_confidence
    #   Provides a score that indicates how confident Amazon Lex is that the
    #   returned intent is the one that matches the user's intent. The
    #   score is between 0.0 and 1.0.
    #
    #   The score is a relative score, not an absolute score. The score may
    #   change based on improvements to the Amazon Lex NLU.
    #   @return [String]
    #
    # @!attribute [rw] alternative_intents
    #   One to four alternative intents that may be applicable to the
    #   user's intent.
    #
    #   Each alternative includes a score that indicates how confident
    #   Amazon Lex is that the intent matches the user's intent. The
    #   intents are sorted by the confidence score.
    #   @return [String]
    #
    # @!attribute [rw] slots
    #   Map of zero or more intent slots (name/value pairs) Amazon Lex
    #   detected from the user input during the conversation. The field is
    #   base-64 encoded.
    #
    #   Amazon Lex creates a resolution list containing likely values for a
    #   slot. The value that it returns is determined by the
    #   `valueSelectionStrategy` selected when the slot type was created or
    #   updated. If `valueSelectionStrategy` is set to `ORIGINAL_VALUE`, the
    #   value provided by the user is returned, if the user value is similar
    #   to the slot values. If `valueSelectionStrategy` is set to
    #   `TOP_RESOLUTION` Amazon Lex returns the first value in the
    #   resolution list or, if there is no resolution list, null. If you
    #   don't specify a `valueSelectionStrategy`, the default is
    #   `ORIGINAL_VALUE`.
    #   @return [String]
    #
    # @!attribute [rw] session_attributes
    #   Map of key/value pairs representing the session-specific context
    #   information.
    #   @return [String]
    #
    # @!attribute [rw] sentiment_response
    #   The sentiment expressed in an utterance.
    #
    #   When the bot is configured to send utterances to Amazon Comprehend
    #   for sentiment analysis, this field contains the result of the
    #   analysis.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The message to convey to the user. The message can come from the
    #   bot's configuration or from a Lambda function.
    #
    #   If the intent is not configured with a Lambda function, or if the
    #   Lambda function returned `Delegate` as the `dialogAction.type` in
    #   its response, Amazon Lex decides on the next course of action and
    #   selects an appropriate message from the bot's configuration based
    #   on the current interaction context. For example, if Amazon Lex
    #   isn't able to understand user input, it uses a clarification prompt
    #   message.
    #
    #   When you create an intent you can assign messages to groups. When
    #   messages are assigned to groups Amazon Lex returns one message from
    #   each group in the response. The message field is an escaped JSON
    #   string containing the messages. For more information about the
    #   structure of the JSON string returned, see msg-prompts-formats.
    #
    #   If the Lambda function returns a message, Amazon Lex passes it to
    #   the client in its response.
    #   @return [String]
    #
    # @!attribute [rw] message_format
    #   The format of the response message. One of the following values:
    #
    #   * `PlainText` - The message contains plain UTF-8 text.
    #
    #   * `CustomPayload` - The message is a custom format for the client.
    #
    #   * `SSML` - The message contains text formatted for voice output.
    #
    #   * `Composite` - The message contains an escaped JSON object
    #     containing one or more messages from the groups that messages were
    #     assigned to when the intent was created.
    #   @return [String]
    #
    # @!attribute [rw] dialog_state
    #   Identifies the current state of the user interaction. Amazon Lex
    #   returns one of the following values as `dialogState`. The client can
    #   optionally use this information to customize the user interface.
    #
    #   * `ElicitIntent` - Amazon Lex wants to elicit the user's intent.
    #     Consider the following examples:
    #
    #     For example, a user might utter an intent ("I want to order a
    #     pizza"). If Amazon Lex cannot infer the user intent from this
    #     utterance, it will return this dialog state.
    #
    #   * `ConfirmIntent` - Amazon Lex is expecting a "yes" or "no"
    #     response.
    #
    #     For example, Amazon Lex wants user confirmation before fulfilling
    #     an intent. Instead of a simple "yes" or "no" response, a user
    #     might respond with additional information. For example, "yes, but
    #     make it a thick crust pizza" or "no, I want to order a drink."
    #     Amazon Lex can process such additional information (in these
    #     examples, update the crust type slot or change the intent from
    #     OrderPizza to OrderDrink).
    #
    #   * `ElicitSlot` - Amazon Lex is expecting the value of a slot for the
    #     current intent.
    #
    #     For example, suppose that in the response Amazon Lex sends this
    #     message: "What size pizza would you like?". A user might reply
    #     with the slot value (e.g., "medium"). The user might also
    #     provide additional information in the response (e.g., "medium
    #     thick crust pizza"). Amazon Lex can process such additional
    #     information appropriately.
    #
    #   * `Fulfilled` - Conveys that the Lambda function has successfully
    #     fulfilled the intent.
    #
    #   * `ReadyForFulfillment` - Conveys that the client has to fulfill the
    #     request.
    #
    #   * `Failed` - Conveys that the conversation with the user failed.
    #
    #     This can happen for various reasons, including that the user does
    #     not provide an appropriate response to prompts from the service
    #     (you can configure how many times Amazon Lex can prompt a user for
    #     specific information), or if the Lambda function fails to fulfill
    #     the intent.
    #   @return [String]
    #
    # @!attribute [rw] slot_to_elicit
    #   If the `dialogState` value is `ElicitSlot`, returns the name of the
    #   slot for which Amazon Lex is eliciting a value.
    #   @return [String]
    #
    # @!attribute [rw] input_transcript
    #   The text used to process the request.
    #
    #   If the input was an audio stream, the `inputTranscript` field
    #   contains the text extracted from the audio stream. This is the text
    #   that is actually processed to recognize intents and slot values. You
    #   can use this information to determine if Amazon Lex is correctly
    #   processing the audio that you send.
    #   @return [String]
    #
    # @!attribute [rw] audio_stream
    #   The prompt (or statement) to convey to the user. This is based on
    #   the bot configuration and context. For example, if Amazon Lex did
    #   not understand the user intent, it sends the `clarificationPrompt`
    #   configured for the bot. If the intent requires confirmation before
    #   taking the fulfillment action, it sends the `confirmationPrompt`.
    #   Another example: Suppose that the Lambda function successfully
    #   fulfilled the intent, and sent a message to convey to the user. Then
    #   Amazon Lex sends that message in the response.
    #   @return [IO]
    #
    # @!attribute [rw] bot_version
    #   The version of the bot that responded to the conversation. You can
    #   use this information to help determine if one version of a bot is
    #   performing better than another version.
    #
    #   If you have enabled the new natural language understanding (NLU)
    #   model, you can use this to determine if the improvement is due to
    #   changes to the bot or changes to the NLU.
    #
    #   For more information about enabling the new NLU, see the
    #   [enableModelImprovements][1] parameter of the `PutBot` operation.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lex/latest/dg/API_PutBot.html#lex-PutBot-request-enableModelImprovements
    #   @return [String]
    #
    # @!attribute [rw] session_id
    #   The unique identifier for the session.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/runtime.lex-2016-11-28/PostContentResponse AWS API Documentation
    #
    class PostContentResponse < Struct.new(
      :content_type,
      :intent_name,
      :nlu_intent_confidence,
      :alternative_intents,
      :slots,
      :session_attributes,
      :sentiment_response,
      :message,
      :message_format,
      :dialog_state,
      :slot_to_elicit,
      :input_transcript,
      :audio_stream,
      :bot_version,
      :session_id)
      SENSITIVE = [:message]
      include Aws::Structure
    end

    # @note When making an API call, you may pass PostTextRequest
    #   data as a hash:
    #
    #       {
    #         bot_name: "BotName", # required
    #         bot_alias: "BotAlias", # required
    #         user_id: "UserId", # required
    #         session_attributes: {
    #           "String" => "String",
    #         },
    #         request_attributes: {
    #           "String" => "String",
    #         },
    #         input_text: "Text", # required
    #       }
    #
    # @!attribute [rw] bot_name
    #   The name of the Amazon Lex bot.
    #   @return [String]
    #
    # @!attribute [rw] bot_alias
    #   The alias of the Amazon Lex bot.
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   The ID of the client application user. Amazon Lex uses this to
    #   identify a user's conversation with your bot. At runtime, each
    #   request must contain the `userID` field.
    #
    #   To decide the user ID to use for your application, consider the
    #   following factors.
    #
    #   * The `userID` field must not contain any personally identifiable
    #     information of the user, for example, name, personal
    #     identification numbers, or other end user personal information.
    #
    #   * If you want a user to start a conversation on one device and
    #     continue on another device, use a user-specific identifier.
    #
    #   * If you want the same user to be able to have two independent
    #     conversations on two different devices, choose a device-specific
    #     identifier.
    #
    #   * A user can't have two independent conversations with two
    #     different versions of the same bot. For example, a user can't
    #     have a conversation with the PROD and BETA versions of the same
    #     bot. If you anticipate that a user will need to have conversation
    #     with two different versions, for example, while testing, include
    #     the bot alias in the user ID to separate the two conversations.
    #   @return [String]
    #
    # @!attribute [rw] session_attributes
    #   Application-specific information passed between Amazon Lex and a
    #   client application.
    #
    #   For more information, see [Setting Session Attributes][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lex/latest/dg/context-mgmt.html#context-mgmt-session-attribs
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] request_attributes
    #   Request-specific information passed between Amazon Lex and a client
    #   application.
    #
    #   The namespace `x-amz-lex:` is reserved for special attributes.
    #   Don't create any request attributes with the prefix `x-amz-lex:`.
    #
    #   For more information, see [Setting Request Attributes][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lex/latest/dg/context-mgmt.html#context-mgmt-request-attribs
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] input_text
    #   The text that the user entered (Amazon Lex interprets this text).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/runtime.lex-2016-11-28/PostTextRequest AWS API Documentation
    #
    class PostTextRequest < Struct.new(
      :bot_name,
      :bot_alias,
      :user_id,
      :session_attributes,
      :request_attributes,
      :input_text)
      SENSITIVE = [:session_attributes, :request_attributes, :input_text]
      include Aws::Structure
    end

    # @!attribute [rw] intent_name
    #   The current user intent that Amazon Lex is aware of.
    #   @return [String]
    #
    # @!attribute [rw] nlu_intent_confidence
    #   Provides a score that indicates how confident Amazon Lex is that the
    #   returned intent is the one that matches the user's intent. The
    #   score is between 0.0 and 1.0. For more information, see [Confidence
    #   Scores][1].
    #
    #   The score is a relative score, not an absolute score. The score may
    #   change based on improvements to the Amazon Lex natural language
    #   understanding (NLU) model.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lex/latest/dg/confidence-scores.html
    #   @return [Types::IntentConfidence]
    #
    # @!attribute [rw] alternative_intents
    #   One to four alternative intents that may be applicable to the
    #   user's intent.
    #
    #   Each alternative includes a score that indicates how confident
    #   Amazon Lex is that the intent matches the user's intent. The
    #   intents are sorted by the confidence score.
    #   @return [Array<Types::PredictedIntent>]
    #
    # @!attribute [rw] slots
    #   The intent slots that Amazon Lex detected from the user input in the
    #   conversation.
    #
    #   Amazon Lex creates a resolution list containing likely values for a
    #   slot. The value that it returns is determined by the
    #   `valueSelectionStrategy` selected when the slot type was created or
    #   updated. If `valueSelectionStrategy` is set to `ORIGINAL_VALUE`, the
    #   value provided by the user is returned, if the user value is similar
    #   to the slot values. If `valueSelectionStrategy` is set to
    #   `TOP_RESOLUTION` Amazon Lex returns the first value in the
    #   resolution list or, if there is no resolution list, null. If you
    #   don't specify a `valueSelectionStrategy`, the default is
    #   `ORIGINAL_VALUE`.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] session_attributes
    #   A map of key-value pairs representing the session-specific context
    #   information.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] message
    #   The message to convey to the user. The message can come from the
    #   bot's configuration or from a Lambda function.
    #
    #   If the intent is not configured with a Lambda function, or if the
    #   Lambda function returned `Delegate` as the `dialogAction.type` its
    #   response, Amazon Lex decides on the next course of action and
    #   selects an appropriate message from the bot's configuration based
    #   on the current interaction context. For example, if Amazon Lex
    #   isn't able to understand user input, it uses a clarification prompt
    #   message.
    #
    #   When you create an intent you can assign messages to groups. When
    #   messages are assigned to groups Amazon Lex returns one message from
    #   each group in the response. The message field is an escaped JSON
    #   string containing the messages. For more information about the
    #   structure of the JSON string returned, see msg-prompts-formats.
    #
    #   If the Lambda function returns a message, Amazon Lex passes it to
    #   the client in its response.
    #   @return [String]
    #
    # @!attribute [rw] sentiment_response
    #   The sentiment expressed in and utterance.
    #
    #   When the bot is configured to send utterances to Amazon Comprehend
    #   for sentiment analysis, this field contains the result of the
    #   analysis.
    #   @return [Types::SentimentResponse]
    #
    # @!attribute [rw] message_format
    #   The format of the response message. One of the following values:
    #
    #   * `PlainText` - The message contains plain UTF-8 text.
    #
    #   * `CustomPayload` - The message is a custom format defined by the
    #     Lambda function.
    #
    #   * `SSML` - The message contains text formatted for voice output.
    #
    #   * `Composite` - The message contains an escaped JSON object
    #     containing one or more messages from the groups that messages were
    #     assigned to when the intent was created.
    #   @return [String]
    #
    # @!attribute [rw] dialog_state
    #   Identifies the current state of the user interaction. Amazon Lex
    #   returns one of the following values as `dialogState`. The client can
    #   optionally use this information to customize the user interface.
    #
    #   * `ElicitIntent` - Amazon Lex wants to elicit user intent.
    #
    #     For example, a user might utter an intent ("I want to order a
    #     pizza"). If Amazon Lex cannot infer the user intent from this
    #     utterance, it will return this dialogState.
    #
    #   * `ConfirmIntent` - Amazon Lex is expecting a "yes" or "no"
    #     response.
    #
    #     For example, Amazon Lex wants user confirmation before fulfilling
    #     an intent.
    #
    #     Instead of a simple "yes" or "no," a user might respond with
    #     additional information. For example, "yes, but make it thick
    #     crust pizza" or "no, I want to order a drink". Amazon Lex can
    #     process such additional information (in these examples, update the
    #     crust type slot value, or change intent from OrderPizza to
    #     OrderDrink).
    #
    #   * `ElicitSlot` - Amazon Lex is expecting a slot value for the
    #     current intent.
    #
    #     For example, suppose that in the response Amazon Lex sends this
    #     message: "What size pizza would you like?". A user might reply
    #     with the slot value (e.g., "medium"). The user might also
    #     provide additional information in the response (e.g., "medium
    #     thick crust pizza"). Amazon Lex can process such additional
    #     information appropriately.
    #
    #   * `Fulfilled` - Conveys that the Lambda function configured for the
    #     intent has successfully fulfilled the intent.
    #
    #   * `ReadyForFulfillment` - Conveys that the client has to fulfill the
    #     intent.
    #
    #   * `Failed` - Conveys that the conversation with the user failed.
    #
    #     This can happen for various reasons including that the user did
    #     not provide an appropriate response to prompts from the service
    #     (you can configure how many times Amazon Lex can prompt a user for
    #     specific information), or the Lambda function failed to fulfill
    #     the intent.
    #   @return [String]
    #
    # @!attribute [rw] slot_to_elicit
    #   If the `dialogState` value is `ElicitSlot`, returns the name of the
    #   slot for which Amazon Lex is eliciting a value.
    #   @return [String]
    #
    # @!attribute [rw] response_card
    #   Represents the options that the user has to respond to the current
    #   prompt. Response Card can come from the bot configuration (in the
    #   Amazon Lex console, choose the settings button next to a slot) or
    #   from a code hook (Lambda function).
    #   @return [Types::ResponseCard]
    #
    # @!attribute [rw] session_id
    #   A unique identifier for the session.
    #   @return [String]
    #
    # @!attribute [rw] bot_version
    #   The version of the bot that responded to the conversation. You can
    #   use this information to help determine if one version of a bot is
    #   performing better than another version.
    #
    #   If you have enabled the new natural language understanding (NLU)
    #   model, you can use this to determine if the improvement is due to
    #   changes to the bot or changes to the NLU.
    #
    #   For more information about enabling the new NLU, see the
    #   [enableModelImprovements][1] parameter of the `PutBot` operation.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lex/latest/dg/API_PutBot.html#lex-PutBot-request-enableModelImprovements
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/runtime.lex-2016-11-28/PostTextResponse AWS API Documentation
    #
    class PostTextResponse < Struct.new(
      :intent_name,
      :nlu_intent_confidence,
      :alternative_intents,
      :slots,
      :session_attributes,
      :message,
      :sentiment_response,
      :message_format,
      :dialog_state,
      :slot_to_elicit,
      :response_card,
      :session_id,
      :bot_version)
      SENSITIVE = [:slots, :session_attributes, :message]
      include Aws::Structure
    end

    # An intent that Amazon Lex suggests satisfies the user's intent.
    # Includes the name of the intent, the confidence that Amazon Lex has
    # that the user's intent is satisfied, and the slots defined for the
    # intent.
    #
    # @!attribute [rw] intent_name
    #   The name of the intent that Amazon Lex suggests satisfies the
    #   user's intent.
    #   @return [String]
    #
    # @!attribute [rw] nlu_intent_confidence
    #   Indicates how confident Amazon Lex is that an intent satisfies the
    #   user's intent.
    #   @return [Types::IntentConfidence]
    #
    # @!attribute [rw] slots
    #   The slot and slot values associated with the predicted intent.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/runtime.lex-2016-11-28/PredictedIntent AWS API Documentation
    #
    class PredictedIntent < Struct.new(
      :intent_name,
      :nlu_intent_confidence,
      :slots)
      SENSITIVE = [:slots]
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutSessionRequest
    #   data as a hash:
    #
    #       {
    #         bot_name: "BotName", # required
    #         bot_alias: "BotAlias", # required
    #         user_id: "UserId", # required
    #         session_attributes: {
    #           "String" => "String",
    #         },
    #         dialog_action: {
    #           type: "ElicitIntent", # required, accepts ElicitIntent, ConfirmIntent, ElicitSlot, Close, Delegate
    #           intent_name: "IntentName",
    #           slots: {
    #             "String" => "String",
    #           },
    #           slot_to_elicit: "String",
    #           fulfillment_state: "Fulfilled", # accepts Fulfilled, Failed, ReadyForFulfillment
    #           message: "Text",
    #           message_format: "PlainText", # accepts PlainText, CustomPayload, SSML, Composite
    #         },
    #         recent_intent_summary_view: [
    #           {
    #             intent_name: "IntentName",
    #             checkpoint_label: "IntentSummaryCheckpointLabel",
    #             slots: {
    #               "String" => "String",
    #             },
    #             confirmation_status: "None", # accepts None, Confirmed, Denied
    #             dialog_action_type: "ElicitIntent", # required, accepts ElicitIntent, ConfirmIntent, ElicitSlot, Close, Delegate
    #             fulfillment_state: "Fulfilled", # accepts Fulfilled, Failed, ReadyForFulfillment
    #             slot_to_elicit: "String",
    #           },
    #         ],
    #         accept: "Accept",
    #       }
    #
    # @!attribute [rw] bot_name
    #   The name of the bot that contains the session data.
    #   @return [String]
    #
    # @!attribute [rw] bot_alias
    #   The alias in use for the bot that contains the session data.
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   The ID of the client application user. Amazon Lex uses this to
    #   identify a user's conversation with your bot.
    #   @return [String]
    #
    # @!attribute [rw] session_attributes
    #   Map of key/value pairs representing the session-specific context
    #   information. It contains application information passed between
    #   Amazon Lex and a client application.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] dialog_action
    #   Sets the next action that the bot should take to fulfill the
    #   conversation.
    #   @return [Types::DialogAction]
    #
    # @!attribute [rw] recent_intent_summary_view
    #   A summary of the recent intents for the bot. You can use the intent
    #   summary view to set a checkpoint label on an intent and modify
    #   attributes of intents. You can also use it to remove or add intent
    #   summary objects to the list.
    #
    #   An intent that you modify or add to the list must make sense for the
    #   bot. For example, the intent name must be valid for the bot. You
    #   must provide valid values for:
    #
    #   * `intentName`
    #
    #   * slot names
    #
    #   * `slotToElict`
    #
    #   If you send the `recentIntentSummaryView` parameter in a
    #   `PutSession` request, the contents of the new summary view replaces
    #   the old summary view. For example, if a `GetSession` request returns
    #   three intents in the summary view and you call `PutSession` with one
    #   intent in the summary view, the next call to `GetSession` will only
    #   return one intent.
    #   @return [Array<Types::IntentSummary>]
    #
    # @!attribute [rw] accept
    #   The message that Amazon Lex returns in the response can be either
    #   text or speech based depending on the value of this field.
    #
    #   * If the value is `text/plain; charset=utf-8`, Amazon Lex returns
    #     text in the response.
    #
    #   * If the value begins with `audio/`, Amazon Lex returns speech in
    #     the response. Amazon Lex uses Amazon Polly to generate the speech
    #     in the configuration that you specify. For example, if you specify
    #     `audio/mpeg` as the value, Amazon Lex returns speech in the MPEG
    #     format.
    #
    #   * If the value is `audio/pcm`, the speech is returned as `audio/pcm`
    #     in 16-bit, little endian format.
    #
    #   * The following are the accepted values:
    #
    #     * `audio/mpeg`
    #
    #     * `audio/ogg`
    #
    #     * `audio/pcm`
    #
    #     * `audio/*` (defaults to mpeg)
    #
    #     * `text/plain; charset=utf-8`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/runtime.lex-2016-11-28/PutSessionRequest AWS API Documentation
    #
    class PutSessionRequest < Struct.new(
      :bot_name,
      :bot_alias,
      :user_id,
      :session_attributes,
      :dialog_action,
      :recent_intent_summary_view,
      :accept)
      SENSITIVE = [:session_attributes]
      include Aws::Structure
    end

    # @!attribute [rw] content_type
    #   Content type as specified in the `Accept` HTTP header in the
    #   request.
    #   @return [String]
    #
    # @!attribute [rw] intent_name
    #   The name of the current intent.
    #   @return [String]
    #
    # @!attribute [rw] slots
    #   Map of zero or more intent slots Amazon Lex detected from the user
    #   input during the conversation.
    #
    #   Amazon Lex creates a resolution list containing likely values for a
    #   slot. The value that it returns is determined by the
    #   `valueSelectionStrategy` selected when the slot type was created or
    #   updated. If `valueSelectionStrategy` is set to `ORIGINAL_VALUE`, the
    #   value provided by the user is returned, if the user value is similar
    #   to the slot values. If `valueSelectionStrategy` is set to
    #   `TOP_RESOLUTION` Amazon Lex returns the first value in the
    #   resolution list or, if there is no resolution list, null. If you
    #   don't specify a `valueSelectionStrategy` the default is
    #   `ORIGINAL_VALUE`.
    #   @return [String]
    #
    # @!attribute [rw] session_attributes
    #   Map of key/value pairs representing session-specific context
    #   information.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The next message that should be presented to the user.
    #   @return [String]
    #
    # @!attribute [rw] message_format
    #   The format of the response message. One of the following values:
    #
    #   * `PlainText` - The message contains plain UTF-8 text.
    #
    #   * `CustomPayload` - The message is a custom format for the client.
    #
    #   * `SSML` - The message contains text formatted for voice output.
    #
    #   * `Composite` - The message contains an escaped JSON object
    #     containing one or more messages from the groups that messages were
    #     assigned to when the intent was created.
    #   @return [String]
    #
    # @!attribute [rw] dialog_state
    #   * `ConfirmIntent` - Amazon Lex is expecting a "yes" or "no"
    #     response to confirm the intent before fulfilling an intent.
    #
    #   * `ElicitIntent` - Amazon Lex wants to elicit the user's intent.
    #
    #   * `ElicitSlot` - Amazon Lex is expecting the value of a slot for the
    #     current intent.
    #
    #   * `Failed` - Conveys that the conversation with the user has failed.
    #     This can happen for various reasons, including the user does not
    #     provide an appropriate response to prompts from the service, or if
    #     the Lambda function fails to fulfill the intent.
    #
    #   * `Fulfilled` - Conveys that the Lambda function has sucessfully
    #     fulfilled the intent.
    #
    #   * `ReadyForFulfillment` - Conveys that the client has to fulfill the
    #     intent.
    #   @return [String]
    #
    # @!attribute [rw] slot_to_elicit
    #   If the `dialogState` is `ElicitSlot`, returns the name of the slot
    #   for which Amazon Lex is eliciting a value.
    #   @return [String]
    #
    # @!attribute [rw] audio_stream
    #   The audio version of the message to convey to the user.
    #   @return [IO]
    #
    # @!attribute [rw] session_id
    #   A unique identifier for the session.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/runtime.lex-2016-11-28/PutSessionResponse AWS API Documentation
    #
    class PutSessionResponse < Struct.new(
      :content_type,
      :intent_name,
      :slots,
      :session_attributes,
      :message,
      :message_format,
      :dialog_state,
      :slot_to_elicit,
      :audio_stream,
      :session_id)
      SENSITIVE = [:message]
      include Aws::Structure
    end

    # The input speech is too long.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/runtime.lex-2016-11-28/RequestTimeoutException AWS API Documentation
    #
    class RequestTimeoutException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # If you configure a response card when creating your bots, Amazon Lex
    # substitutes the session attributes and slot values that are available,
    # and then returns it. The response card can also come from a Lambda
    # function ( `dialogCodeHook` and `fulfillmentActivity` on an intent).
    #
    # @!attribute [rw] version
    #   The version of the response card format.
    #   @return [String]
    #
    # @!attribute [rw] content_type
    #   The content type of the response.
    #   @return [String]
    #
    # @!attribute [rw] generic_attachments
    #   An array of attachment objects representing options.
    #   @return [Array<Types::GenericAttachment>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/runtime.lex-2016-11-28/ResponseCard AWS API Documentation
    #
    class ResponseCard < Struct.new(
      :version,
      :content_type,
      :generic_attachments)
      SENSITIVE = []
      include Aws::Structure
    end

    # The sentiment expressed in an utterance.
    #
    # When the bot is configured to send utterances to Amazon Comprehend for
    # sentiment analysis, this field structure contains the result of the
    # analysis.
    #
    # @!attribute [rw] sentiment_label
    #   The inferred sentiment that Amazon Comprehend has the highest
    #   confidence in.
    #   @return [String]
    #
    # @!attribute [rw] sentiment_score
    #   The likelihood that the sentiment was correctly inferred.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/runtime.lex-2016-11-28/SentimentResponse AWS API Documentation
    #
    class SentimentResponse < Struct.new(
      :sentiment_label,
      :sentiment_score)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Content-Type header (`PostContent` API) has an invalid value.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/runtime.lex-2016-11-28/UnsupportedMediaTypeException AWS API Documentation
    #
    class UnsupportedMediaTypeException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
