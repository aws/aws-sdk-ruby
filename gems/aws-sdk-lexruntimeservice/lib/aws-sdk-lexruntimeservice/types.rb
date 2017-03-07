# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::LexRuntimeService
  module Types

    # Represents an option to be shown on the client platform (Facebook,
    # Slack, etc.)
    #
    # @!attribute [rw] text
    #   Text visible to the user on the button.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   Value sent to Amazon Lex when user clicks the button. For example,
    #   consider button text "NYC". When the user clicks the button, the
    #   value sent can be "New York City".
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
    #   Title of the option.
    #   @return [String]
    #
    # @!attribute [rw] sub_title
    #   Subtitle shown below the title.
    #   @return [String]
    #
    # @!attribute [rw] attachment_link_url
    #   @return [String]
    #
    # @!attribute [rw] image_url
    #   URL of an image that is displayed to the user.
    #   @return [String]
    #
    # @!attribute [rw] buttons
    #   List of options to show to the user.
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
    #   Name of the Amazon Lex bot.
    #   @return [String]
    #
    # @!attribute [rw] bot_alias
    #   Alias of the Amazon Lex bot.
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   User ID of your client application. Typically, each of your
    #   application users should have a unique ID. Note the following
    #   considerations:
    #
    #   * If you want a user to start a conversation on one mobile device
    #     and continue the conversation on another device, you might choose
    #     a user-specific identifier, such as a login or Amazon Cognito user
    #     ID (assuming your application is using Amazon Cognito).
    #
    #   * If you want the same user to be able to have two independent
    #     conversations on two different devices, you might choose a
    #     device-specific identifier, such as device ID, or some globally
    #     unique identifier.
    #   @return [String]
    #
    # @!attribute [rw] session_attributes
    #   A session represents the dialog between a user and Amazon Lex. At
    #   runtime, a client application can pass contextual information
    #   (session attributes) in the request. For example, `"FirstName" :
    #   "Joe"`. Amazon Lex passes these session attributes to the AWS Lambda
    #   functions configured for the intent (see `dialogCodeHook` and
    #   `fulfillmentActivity.codeHook` in `CreateIntent`).
    #
    #   In your Lambda function, you can use the session attributes for
    #   customization. Some examples are:
    #
    #   * In a pizza ordering application, if you can pass user location as
    #     a session attribute (for example, `"Location" : "111 Maple
    #     street"`), your Lambda function might use this information to
    #     determine the closest pizzeria to place the order.
    #
    #   * Use session attributes to personalize prompts. For example, you
    #     pass in user name as a session attribute (`"FirstName" : "Joe"`),
    #     you might configure subsequent prompts to refer to this attribute,
    #     as `$session.FirstName"`. At runtime, Amazon Lex substitutes a
    #     real value when it generates a prompt, such as "Hello Joe, what
    #     would you like to order?"
    #
    #   <note markdown="1"> Amazon Lex does not persist session attributes.
    #
    #    If the intent is configured without a Lambda function to process the
    #   intent (that is, the client application to process the intent),
    #   Amazon Lex simply returns the session attributes back to the client
    #   application.
    #
    #    If the intent is configured with a Lambda function to process the
    #   intent, Amazon Lex passes the incoming session attributes to the
    #   Lambda function. The Lambda function must return these session
    #   attributes if you want Amazon Lex to return them back to the client.
    #
    #    </note>
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] input_text
    #   Text user entered (Amazon Lex interprets this text).
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
    #   Intent Amazon Lex inferred from the user input text. This is one of
    #   the intents configured for the bot.
    #   @return [String]
    #
    # @!attribute [rw] slots
    #   Intent slots (name/value pairs) Amazon Lex detected so far from the
    #   user input in the conversation.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] session_attributes
    #   Map of key value pairs representing the session specific context
    #   information.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] message
    #   Prompt (or statement) to convey to the user. This is based on the
    #   application configuration and context. For example, if Amazon Lex
    #   did not understand the user intent, it sends the
    #   `clarificationPrompt` configured for the application. In another
    #   example, if the intent requires confirmation before taking the
    #   fulfillment action, it sends the `confirmationPrompt`. Suppose the
    #   Lambda function successfully fulfilled the intent, and sent a
    #   message to convey to the user. In that situation, Amazon Lex sends
    #   that message in the response.
    #   @return [String]
    #
    # @!attribute [rw] dialog_state
    #   Represents the message type to be conveyed to the user. For example:
    #
    #   * `ElicitIntent` – Amazon Lex wants to elicit user intent. For
    #     example, Amazon Lex did not understand the first utterances such
    #     as "I want to order pizza", which indicates the OrderPizza
    #     intent. If Amazon Lex doesn't understand the intent, it returns
    #     this `dialogState`. Another example is when your intent is
    #     configured with a follow up prompt. For example, after OrderPizza
    #     intent is fulfilled, the intent might have a follow up prompt such
    #     as " Do you want to order a drink or desert?" In this case,
    #     Amazon Lex returns this `dialogState`.
    #
    #   * `ConfirmIntent` – Amazon Lex is expecting a yes/no response from
    #     the user indicating whether to go ahead and fulfill the intent
    #     (for example, OK to go ahead and order the pizza). In addition to
    #     a yes/no reply, the user might provide a response with additional
    #     slot information (either new slot information or changes to the
    #     existing slot values). For example, "Yes, but change to thick
    #     crust." Amazon Lex understands the additional information and
    #     updates the intent slots accordingly.
    #
    #     Consider another example. Before fulfilling an order, your
    #     application might prompt for confirmation such as "Do you want to
    #     place this pizza order?" A user might reply with "No, I want to
    #     order a drink." Amazon Lex recognizes the new OrderDrink intent.
    #
    #   * `ElicitSlot` – Amazon Lex is expecting a value of a slot for the
    #     current intent. For example, suppose Amazon Lex asks, "What size
    #     pizza would you like?" A user might reply with "Medium pepperoni
    #     pizza." Amazon Lex recognizes the size and the topping as the two
    #     separate slot values.
    #
    #   * `Fulfilled` – Conveys that the Lambda function has successfully
    #     fulfilled the intent. If Lambda function returns a
    #     statement/message to convey the fulfillment result, Amazon Lex
    #     passes this string to the client. If not, Amazon Lex looks for
    #     `conclusionStatement` that you configured for the intent.
    #
    #     If both the Lambda function statement and the
    #     `conclusionStatement` are missing, Amazon Lex throws a bad request
    #     exception.
    #
    #   * `ReadyForFulfillment` – conveys that the client has to do the
    #     fulfillment work for the intent. This is the case when the current
    #     intent is configured with `ReturnIntent` as the
    #     `fulfillmentActivity `, where Amazon Lex returns this state to
    #     client.
    #
    #   * `Failed` – Conversation with the user failed. Some of the reasons
    #     for this `dialogState` are: after the configured number of
    #     attempts the user didn't provide an appropriate response, or the
    #     Lambda function failed to fulfill an intent.
    #   @return [String]
    #
    # @!attribute [rw] slot_to_elicit
    #   If `dialogState` value is `ElicitSlot`, returns the name of the slot
    #   for which Amazon Lex is eliciting a value.
    #   @return [String]
    #
    # @!attribute [rw] response_card
    #   Represents the options that the user has to respond to the current
    #   prompt. Amazon Lex sends this in the response only if the
    #   `dialogState` value indicates that a user response is expected.
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
    # substitutes the session attributes and slot values available, and then
    # returns it. The response card can also come from a Lambda function (
    # `dialogCodeHook` and `fulfillmentActivity` on an intent).
    #
    # @!attribute [rw] version
    #   Version of response card format.
    #   @return [String]
    #
    # @!attribute [rw] content_type
    #   Content type of the response.
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
