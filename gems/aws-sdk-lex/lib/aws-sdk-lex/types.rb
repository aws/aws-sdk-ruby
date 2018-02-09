# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Lex
  module Types

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
    #   [1]: http://docs.aws.amazon.com/lex/latest/dg/context-mgmt.html#context-mgmt-session-attribs
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
    #   [1]: http://docs.aws.amazon.com/lex/latest/dg/context-mgmt.html#context-mgmt-request-attribs
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
    #     The following are the accepted values:
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
    # @!attribute [rw] slots
    #   Map of zero or more intent slots (name/value pairs) Amazon Lex
    #   detected from the user input during the conversation.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/runtime.lex-2016-11-28/PostContentResponse AWS API Documentation
    #
    class PostContentResponse < Struct.new(
      :content_type,
      :intent_name,
      :slots,
      :session_attributes,
      :message,
      :message_format,
      :dialog_state,
      :slot_to_elicit,
      :input_transcript,
      :audio_stream)
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
    #   [1]: http://docs.aws.amazon.com/lex/latest/dg/context-mgmt.html#context-mgmt-session-attribs
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
    #   [1]: http://docs.aws.amazon.com/lex/latest/dg/context-mgmt.html#context-mgmt-request-attribs
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
      include Aws::Structure
    end

    # @!attribute [rw] intent_name
    #   The current user intent that Amazon Lex is aware of.
    #   @return [String]
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/runtime.lex-2016-11-28/PostTextResponse AWS API Documentation
    #
    class PostTextResponse < Struct.new(
      :intent_name,
      :slots,
      :session_attributes,
      :message,
      :message_format,
      :dialog_state,
      :slot_to_elicit,
      :response_card)
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
      include Aws::Structure
    end

  end
end
