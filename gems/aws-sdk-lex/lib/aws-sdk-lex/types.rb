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
    #         session_attributes: "String",
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
    #   ID of the client application user. Typically, each of your
    #   application users should have a unique ID. The application developer
    #   decides the user IDs. At runtime, each request must include the user
    #   ID. Note the following considerations:
    #
    #   * If you want a user to start conversation on one device and
    #     continue the conversation on another device, you might choose a
    #     user-specific identifier, such as the user's login, or Amazon
    #     Cognito user ID (assuming your application is using Amazon
    #     Cognito).
    #
    #   * If you want the same user to be able to have two independent
    #     conversations on two different devices, you might choose
    #     device-specific identifier, such as device ID, or some globally
    #     unique identifier.
    #   @return [String]
    #
    # @!attribute [rw] session_attributes
    #   You pass this value in the `x-amz-lex-session-attributes` HTTP
    #   header. The value must be map (keys and values must be strings) that
    #   is JSON serialized and then base64 encoded.
    #
    #   A session represents dialog between a user and Amazon Lex. At
    #   runtime, a client application can pass contextual information, in
    #   the request to Amazon Lex. For example,
    #
    #   * You might use session attributes to track the requestID of user
    #     requests.
    #
    #   * In Getting Started Exercise 1, the example bot uses the price
    #     session attribute to maintain the price of flowers ordered (for
    #     example, "price":25). The code hook (Lambda function) sets this
    #     attribute based on the type of flowers ordered. For more
    #     information, see [Review the Details of Information Flow][1].
    #
    #   * In the BookTrip bot exercise, the bot uses the
    #     `currentReservation` session attribute to maintains the slot data
    #     during the in-progress conversation to book a hotel or book a car.
    #     For more information, see [Details of Information Flow][2].
    #
    #   Amazon Lex passes these session attributes to the Lambda functions
    #   configured for the intent In the your Lambda function, you can use
    #   the session attributes for initialization and customization
    #   (prompts). Some examples are:
    #
    #   * Initialization - In a pizza ordering bot, if you pass user
    #     location (for example, `"Location : 111 Maple Street"`), then your
    #     Lambda function might use this information to determine the
    #     closest pizzeria to place the order (and perhaps set the
    #     storeAddress slot value as well).
    #
    #     Personalized prompts - For example, you can configure prompts to
    #     refer to the user by name (for example, "Hey \[firstName\], what
    #     toppings would you like?"). You can pass the user's name as a
    #     session attribute ("firstName": "Joe") so that Amazon Lex can
    #     substitute the placeholder to provide a personalized prompt to the
    #     user ("Hey Joe, what toppings would you like?").
    #
    #   <note markdown="1"> Amazon Lex does not persist session attributes.
    #
    #    If you configured a code hook for the intent, Amazon Lex passes the
    #   incoming session attributes to the Lambda function. The Lambda
    #   function must return these session attributes if you want Amazon Lex
    #   to return them to the client.
    #
    #    If there is no code hook configured for the intent Amazon Lex simply
    #   returns the session attributes to the client application.
    #
    #    </note>
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/lex/latest/dg/gs-bp-details-after-lambda.html
    #   [2]: http://docs.aws.amazon.com/lex/latest/dg/book-trip-detail-flow.html
    #   @return [String]
    #
    # @!attribute [rw] content_type
    #   You pass this values as the `Content-Type` HTTP header.
    #
    #   Indicates the audio format or text. The header value must start with
    #   one of the following prefixes:
    #
    #   * PCM format
    #
    #     * audio/l16; rate=16000; channels=1
    #
    #     * audio/x-l16; sample-rate=16000; channel-count=1
    #
    #   * Opus format
    #
    #     * audio/x-cbr-opus-with-preamble; preamble-size=0; bit-rate=1;
    #       frame-size-milliseconds=1.1
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
    #   @return [IO]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/runtime.lex-2016-11-28/PostContentRequest AWS API Documentation
    #
    class PostContentRequest < Struct.new(
      :bot_name,
      :bot_alias,
      :user_id,
      :session_attributes,
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
    #   @return [String]
    #
    # @!attribute [rw] session_attributes
    #   Map of key/value pairs representing the session-specific context
    #   information.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   Message to convey to the user. It can come from the bot's
    #   configuration or a code hook (Lambda function). If the current
    #   intent is not configured with a code hook or if the code hook
    #   returned `Delegate` as the `dialogAction.type` in its response, then
    #   Amazon Lex decides the next course of action and selects an
    #   appropriate message from the bot configuration based on the current
    #   user interaction context. For example, if Amazon Lex is not able to
    #   understand the user input, it uses a clarification prompt message
    #   (For more information, see the Error Handling section in the Amazon
    #   Lex console). Another example: if the intent requires confirmation
    #   before fulfillment, then Amazon Lex uses the confirmation prompt
    #   message in the intent configuration. If the code hook returns a
    #   message, Amazon Lex passes it as-is in its response to the client.
    #   @return [String]
    #
    # @!attribute [rw] dialog_state
    #   Identifies the current state of the user interaction. Amazon Lex
    #   returns one of the following values as `dialogState`. The client can
    #   optionally use this information to customize the user interface.
    #
    #   * `ElicitIntent` – Amazon Lex wants to elicit the user's intent.
    #     Consider the following examples:
    #
    #     For example, a user might utter an intent ("I want to order a
    #     pizza"). If Amazon Lex cannot infer the user intent from this
    #     utterance, it will return this dialog state.
    #
    #   * `ConfirmIntent` – Amazon Lex is expecting a "yes" or "no"
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
    #   * `ElicitSlot` – Amazon Lex is expecting the value of a slot for the
    #     current intent.
    #
    #     For example, suppose that in the response Amazon Lex sends this
    #     message: "What size pizza would you like?". A user might reply
    #     with the slot value (e.g., "medium"). The user might also
    #     provide additional information in the response (e.g., "medium
    #     thick crust pizza"). Amazon Lex can process such additional
    #     information appropriately.
    #
    #   * `Fulfilled` – Conveys that the Lambda function has successfully
    #     fulfilled the intent.
    #
    #   * `ReadyForFulfillment` – Conveys that the client has to fullfill
    #     the request.
    #
    #   * `Failed` – Conveys that the conversation with the user failed.
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
    #   Transcript of the voice input to the operation.
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
    #   The ID of the client application user. The application developer
    #   decides the user IDs. At runtime, each request must include the user
    #   ID. Typically, each of your application users should have a unique
    #   ID. Note the following considerations:
    #
    #   * If you want a user to start a conversation on one device and
    #     continue the conversation on another device, you might choose a
    #     user-specific identifier, such as a login or Amazon Cognito user
    #     ID (assuming your application is using Amazon Cognito).
    #
    #   * If you want the same user to be able to have two independent
    #     conversations on two different devices, you might choose a
    #     device-specific identifier, such as device ID, or some globally
    #     unique identifier.
    #   @return [String]
    #
    # @!attribute [rw] session_attributes
    #   By using session attributes, a client application can pass
    #   contextual information in the request to Amazon Lex For example,
    #
    #   * In Getting Started Exercise 1, the example bot uses the `price`
    #     session attribute to maintain the price of the flowers ordered
    #     (for example, "Price":25). The code hook (the Lambda function)
    #     sets this attribute based on the type of flowers ordered. For more
    #     information, see [Review the Details of Information Flow][1].
    #
    #   * In the BookTrip bot exercise, the bot uses the
    #     `currentReservation` session attribute to maintain slot data
    #     during the in-progress conversation to book a hotel or book a car.
    #     For more information, see [Details of Information Flow][2].
    #
    #   * You might use the session attributes (key, value pairs) to track
    #     the requestID of user requests.
    #
    #   Amazon Lex simply passes these session attributes to the Lambda
    #   functions configured for the intent.
    #
    #   In your Lambda function, you can also use the session attributes for
    #   initialization and customization (prompts and response cards). Some
    #   examples are:
    #
    #   * Initialization - In a pizza ordering bot, if you can pass the user
    #     location as a session attribute (for example, `"Location" : "111
    #     Maple street"`), then your Lambda function might use this
    #     information to determine the closest pizzeria to place the order
    #     (perhaps to set the storeAddress slot value).
    #
    #   * Personalize prompts - For example, you can configure prompts to
    #     refer to the user name. (For example, "Hey \[FirstName\], what
    #     toppings would you like?"). You can pass the user name as a
    #     session attribute (`"FirstName" : "Joe"`) so that Amazon Lex can
    #     substitute the placeholder to provide a personalize prompt to the
    #     user ("Hey Joe, what toppings would you like?").
    #
    #   <note markdown="1"> Amazon Lex does not persist session attributes.
    #
    #    If you configure a code hook for the intent, Amazon Lex passes the
    #   incoming session attributes to the Lambda function. If you want
    #   Amazon Lex to return these session attributes back to the client,
    #   the Lambda function must return them.
    #
    #    If there is no code hook configured for the intent, Amazon Lex
    #   simply returns the session attributes back to the client
    #   application.
    #
    #    </note>
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/lex/latest/dg/gs-bp-details-after-lambda.html
    #   [2]: http://docs.aws.amazon.com/lex/latest/dg/book-trip-detail-flow.html
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
      :input_text)
      include Aws::Structure
    end

    # @!attribute [rw] intent_name
    #   The current user intent that Amazon Lex is aware of.
    #   @return [String]
    #
    # @!attribute [rw] slots
    #   The intent slots (name/value pairs) that Amazon Lex detected so far
    #   from the user input in the conversation.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] session_attributes
    #   A map of key-value pairs representing the session-specific context
    #   information.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] message
    #   A message to convey to the user. It can come from the bot's
    #   configuration or a code hook (Lambda function). If the current
    #   intent is not configured with a code hook or the code hook returned
    #   `Delegate` as the `dialogAction.type` in its response, then Amazon
    #   Lex decides the next course of action and selects an appropriate
    #   message from the bot configuration based on the current user
    #   interaction context. For example, if Amazon Lex is not able to
    #   understand the user input, it uses a clarification prompt message
    #   (for more information, see the Error Handling section in the Amazon
    #   Lex console). Another example: if the intent requires confirmation
    #   before fulfillment, then Amazon Lex uses the confirmation prompt
    #   message in the intent configuration. If the code hook returns a
    #   message, Amazon Lex passes it as-is in its response to the client.
    #   @return [String]
    #
    # @!attribute [rw] dialog_state
    #   Identifies the current state of the user interaction. Amazon Lex
    #   returns one of the following values as `dialogState`. The client can
    #   optionally use this information to customize the user interface.
    #
    #   * `ElicitIntent` – Amazon Lex wants to elicit user intent.
    #
    #     For example, a user might utter an intent ("I want to order a
    #     pizza"). If Amazon Lex cannot infer the user intent from this
    #     utterance, it will return this dialogState.
    #
    #   * `ConfirmIntent` – Amazon Lex is expecting a "yes" or "no"
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
    #   * `ElicitSlot` – Amazon Lex is expecting a slot value for the
    #     current intent.
    #
    #     For example, suppose that in the response Amazon Lex sends this
    #     message: "What size pizza would you like?". A user might reply
    #     with the slot value (e.g., "medium"). The user might also
    #     provide additional information in the response (e.g., "medium
    #     thick crust pizza"). Amazon Lex can process such additional
    #     information appropriately.
    #
    #   * `Fulfilled` – Conveys that the Lambda function configured for the
    #     intent has successfully fulfilled the intent.
    #
    #   * `ReadyForFulfillment` – Conveys that the client has to fulfill the
    #     intent.
    #
    #   * `Failed` – Conveys that the conversation with the user failed.
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
