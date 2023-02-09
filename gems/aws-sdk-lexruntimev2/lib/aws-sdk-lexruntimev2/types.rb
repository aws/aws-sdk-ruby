# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::LexRuntimeV2
  module Types

    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/runtime.lex.v2-2020-08-07/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message,
      :event_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the contexts that a user is using in a
    # session. You can configure Amazon Lex V2 to set a context when an
    # intent is fulfilled, or you can set a context using the , , or
    # operations.
    #
    # Use a context to indicate to Amazon Lex V2 intents that should be used
    # as follow-up intents. For example, if the active context is
    # `order-fulfilled`, only intents that have `order-fulfilled` configured
    # as a trigger are considered for follow up.
    #
    # @!attribute [rw] name
    #   The name of the context.
    #   @return [String]
    #
    # @!attribute [rw] time_to_live
    #   Indicates the number of turns or seconds that the context is active.
    #   Once the time to live expires, the context is no longer returned in
    #   a response.
    #   @return [Types::ActiveContextTimeToLive]
    #
    # @!attribute [rw] context_attributes
    #   A list of contexts active for the request. A context can be
    #   activated when a previous intent is fulfilled, or by including the
    #   context in the request.
    #
    #   If you don't specify a list of contexts, Amazon Lex V2 will use the
    #   current list of contexts for the session. If you specify an empty
    #   list, all contexts for the session are cleared.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/runtime.lex.v2-2020-08-07/ActiveContext AWS API Documentation
    #
    class ActiveContext < Struct.new(
      :name,
      :time_to_live,
      :context_attributes)
      SENSITIVE = []
      include Aws::Structure
    end

    # The time that a context is active. You can specify the time to live in
    # seconds or in conversation turns.
    #
    # @!attribute [rw] time_to_live_in_seconds
    #   The number of seconds that the context is active. You can specify
    #   between 5 and 86400 seconds (24 hours).
    #   @return [Integer]
    #
    # @!attribute [rw] turns_to_live
    #   The number of turns that the context is active. You can specify up
    #   to 20 turns. Each request and response from the bot is a turn.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/runtime.lex.v2-2020-08-07/ActiveContextTimeToLive AWS API Documentation
    #
    class ActiveContextTimeToLive < Struct.new(
      :time_to_live_in_seconds,
      :turns_to_live)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a chunk of audio sent from the client application to Amazon
    # Lex V2. The audio is all or part of an utterance from the user.
    #
    # Amazon Lex V2 accumulates audio chunks until it recognizes a natural
    # pause in speech before processing the input.
    #
    # @!attribute [rw] audio_chunk
    #   An encoded stream of audio.
    #   @return [String]
    #
    # @!attribute [rw] content_type
    #   The encoding used for the audio chunk. You must use 8 KHz PCM 16-bit
    #   mono-channel little-endian format. The value of the field should be:
    #
    #   `audio/lpcm; sample-rate=8000; sample-size-bits=16; channel-count=1;
    #   is-big-endian=false`
    #   @return [String]
    #
    # @!attribute [rw] event_id
    #   A unique identifier that your application assigns to the event. You
    #   can use this to identify events in logs.
    #   @return [String]
    #
    # @!attribute [rw] client_timestamp_millis
    #   A timestamp set by the client of the date and time that the event
    #   was sent to Amazon Lex V2.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/runtime.lex.v2-2020-08-07/AudioInputEvent AWS API Documentation
    #
    class AudioInputEvent < Struct.new(
      :audio_chunk,
      :content_type,
      :event_id,
      :client_timestamp_millis,
      :event_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # An event sent from Amazon Lex V2 to your client application containing
    # audio to play to the user.
    #
    # @!attribute [rw] audio_chunk
    #   A chunk of the audio to play.
    #   @return [String]
    #
    # @!attribute [rw] content_type
    #   The encoding of the audio chunk. This is the same as the encoding
    #   configure in the `contentType` field of the `ConfigurationEvent`.
    #   @return [String]
    #
    # @!attribute [rw] event_id
    #   A unique identifier of the event sent by Amazon Lex V2. The
    #   identifier is in the form `RESPONSE-N`, where N is a number starting
    #   with one and incremented for each event sent by Amazon Lex V2 in the
    #   current session.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/runtime.lex.v2-2020-08-07/AudioResponseEvent AWS API Documentation
    #
    class AudioResponseEvent < Struct.new(
      :audio_chunk,
      :content_type,
      :event_id,
      :event_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/runtime.lex.v2-2020-08-07/BadGatewayException AWS API Documentation
    #
    class BadGatewayException < Struct.new(
      :message,
      :event_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # A button that appears on a response card show to the user.
    #
    # @!attribute [rw] text
    #   The text that is displayed on the button.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value returned to Amazon Lex V2 when a user chooses the button.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/runtime.lex.v2-2020-08-07/Button AWS API Documentation
    #
    class Button < Struct.new(
      :text,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides a score that indicates the confidence that Amazon Lex V2 has
    # that an intent is the one that satisfies the user's intent.
    #
    # @!attribute [rw] score
    #   A score that indicates how confident Amazon Lex V2 is that an intent
    #   satisfies the user's intent. Ranges between 0.00 and 1.00. Higher
    #   scores indicate higher confidence.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/runtime.lex.v2-2020-08-07/ConfidenceScore AWS API Documentation
    #
    class ConfidenceScore < Struct.new(
      :score)
      SENSITIVE = []
      include Aws::Structure
    end

    # The initial event sent from the application to Amazon Lex V2 to
    # configure the conversation, including session and request attributes
    # and the response content type.
    #
    # @!attribute [rw] request_attributes
    #   Request-specific information passed between the client application
    #   and Amazon Lex V2.
    #
    #   The namespace `x-amz-lex:` is reserved for special attributes.
    #   Don't create any request attributes for prefix `x-amz-lex:`.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] response_content_type
    #   The message that Amazon Lex V2 returns in the response can be either
    #   text or speech based on the `responseContentType` value.
    #
    #   * If the value is `text/plain;charset=utf-8`, Amazon Lex V2 returns
    #     text in the response.
    #
    #   * If the value begins with `audio/`, Amazon Lex V2 returns speech in
    #     the response. Amazon Lex V2 uses Amazon Polly to generate the
    #     speech using the configuration that you specified in the
    #     `requestContentType` parameter. For example, if you specify
    #     `audio/mpeg` as the value, Amazon Lex V2 returns speech in the
    #     MPEG format.
    #
    #   * If the value is `audio/pcm`, the speech returned is audio/pcm in
    #     16-bit, little-endian format.
    #
    #   * The following are the accepted values:
    #
    #     * audio/mpeg
    #
    #     * audio/ogg
    #
    #     * audio/pcm
    #
    #     * audio/* (defaults to mpeg)
    #
    #     * text/plain; charset=utf-8
    #   @return [String]
    #
    # @!attribute [rw] session_state
    #   The state of the user's session with Amazon Lex V2.
    #   @return [Types::SessionState]
    #
    # @!attribute [rw] welcome_messages
    #   A list of messages to send to the user.
    #
    #   If you set the `welcomeMessage` field, you must also set the [
    #   `DialogAction` ][1] structure's [ `type` ][2] field.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lexv2/latest/dg/API_runtime_DialogAction.html
    #   [2]: https://docs.aws.amazon.com/lexv2/latest/dg/API_runtime_DialogAction.html#lexv2-Type-runtime_DialogAction-type
    #   @return [Array<Types::Message>]
    #
    # @!attribute [rw] disable_playback
    #   Determines whether Amazon Lex V2 should send audio responses to the
    #   client application.
    #
    #   Set this field to false when the client is operating in a playback
    #   mode where audio responses are played to the user. If the client
    #   isn't operating in playback mode, such as a text chat application,
    #   set this to true so that Amazon Lex V2 doesn't wait for the prompt
    #   to finish playing on the client.
    #   @return [Boolean]
    #
    # @!attribute [rw] event_id
    #   A unique identifier that your application assigns to the event. You
    #   can use this to identify events in logs.
    #   @return [String]
    #
    # @!attribute [rw] client_timestamp_millis
    #   A timestamp set by the client of the date and time that the event
    #   was sent to Amazon Lex V2.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/runtime.lex.v2-2020-08-07/ConfigurationEvent AWS API Documentation
    #
    class ConfigurationEvent < Struct.new(
      :request_attributes,
      :response_content_type,
      :session_state,
      :welcome_messages,
      :disable_playback,
      :event_id,
      :client_timestamp_millis,
      :event_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/runtime.lex.v2-2020-08-07/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message,
      :event_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # A DTMF character sent from the client application. DTMF characters are
    # typically sent from a phone keypad to represent numbers. For example,
    # you can have Amazon Lex V2 process a credit card number input from a
    # phone.
    #
    # @!attribute [rw] input_character
    #   The DTMF character that the user pressed. The allowed characters are
    #   A - D, 0 - 9, # and *.
    #   @return [String]
    #
    # @!attribute [rw] event_id
    #   A unique identifier that your application assigns to the event. You
    #   can use this to identify events in logs.
    #   @return [String]
    #
    # @!attribute [rw] client_timestamp_millis
    #   A timestamp set by the client of the date and time that the event
    #   was sent to Amazon Lex V2.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/runtime.lex.v2-2020-08-07/DTMFInputEvent AWS API Documentation
    #
    class DTMFInputEvent < Struct.new(
      :input_character,
      :event_id,
      :client_timestamp_millis,
      :event_type)
      SENSITIVE = [:input_character]
      include Aws::Structure
    end

    # @!attribute [rw] bot_id
    #   The identifier of the bot that contains the session data.
    #   @return [String]
    #
    # @!attribute [rw] bot_alias_id
    #   The alias identifier in use for the bot that contains the session
    #   data.
    #   @return [String]
    #
    # @!attribute [rw] locale_id
    #   The locale where the session is in use.
    #   @return [String]
    #
    # @!attribute [rw] session_id
    #   The identifier of the session to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/runtime.lex.v2-2020-08-07/DeleteSessionRequest AWS API Documentation
    #
    class DeleteSessionRequest < Struct.new(
      :bot_id,
      :bot_alias_id,
      :locale_id,
      :session_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] bot_id
    #   The identifier of the bot that contained the session data.
    #   @return [String]
    #
    # @!attribute [rw] bot_alias_id
    #   The alias identifier in use for the bot that contained the session
    #   data.
    #   @return [String]
    #
    # @!attribute [rw] locale_id
    #   The locale where the session was used.
    #   @return [String]
    #
    # @!attribute [rw] session_id
    #   The identifier of the deleted session.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/runtime.lex.v2-2020-08-07/DeleteSessionResponse AWS API Documentation
    #
    class DeleteSessionResponse < Struct.new(
      :bot_id,
      :bot_alias_id,
      :locale_id,
      :session_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/runtime.lex.v2-2020-08-07/DependencyFailedException AWS API Documentation
    #
    class DependencyFailedException < Struct.new(
      :message,
      :event_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The next action that Amazon Lex V2 should take.
    #
    # @!attribute [rw] type
    #   The next action that the bot should take in its interaction with the
    #   user. The possible values are:
    #
    #   * `Close` - Indicates that there will not be a response from the
    #     user. For example, the statement "Your order has been placed"
    #     does not require a response.
    #
    #   * `ConfirmIntent` - The next action is asking the user if the intent
    #     is complete and ready to be fulfilled. This is a yes/no question
    #     such as "Place the order?"
    #
    #   * `Delegate` - The next action is determined by Amazon Lex V2.
    #
    #   * `ElicitIntent` - The next action is to elicit an intent from the
    #     user.
    #
    #   * `ElicitSlot` - The next action is to elicit a slot value from the
    #     user.
    #   @return [String]
    #
    # @!attribute [rw] slot_to_elicit
    #   The name of the slot that should be elicited from the user.
    #   @return [String]
    #
    # @!attribute [rw] slot_elicitation_style
    #   Configures the slot to use spell-by-letter or spell-by-word style.
    #   When you use a style on a slot, users can spell out their input to
    #   make it clear to your bot.
    #
    #   * Spell by letter - "b" "o" "b"
    #
    #   * Spell by word - "b as in boy" "o as in oscar" "b as in boy"
    #
    #   For more information, see [ Using spelling to enter slot values
    #   ][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lexv2/latest/dg/using-spelling.html
    #   @return [String]
    #
    # @!attribute [rw] sub_slot_to_elicit
    #   The name of the constituent sub slot of the composite slot specified
    #   in slotToElicit that should be elicited from the user.
    #   @return [Types::ElicitSubSlot]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/runtime.lex.v2-2020-08-07/DialogAction AWS API Documentation
    #
    class DialogAction < Struct.new(
      :type,
      :slot_to_elicit,
      :slot_elicitation_style,
      :sub_slot_to_elicit)
      SENSITIVE = []
      include Aws::Structure
    end

    # A notification from the client that it is disconnecting from Amazon
    # Lex V2. Sending a `DisconnectionEvent` event is optional, but can help
    # identify a conversation in logs.
    #
    # @!attribute [rw] event_id
    #   A unique identifier that your application assigns to the event. You
    #   can use this to identify events in logs.
    #   @return [String]
    #
    # @!attribute [rw] client_timestamp_millis
    #   A timestamp set by the client of the date and time that the event
    #   was sent to Amazon Lex V2.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/runtime.lex.v2-2020-08-07/DisconnectionEvent AWS API Documentation
    #
    class DisconnectionEvent < Struct.new(
      :event_id,
      :client_timestamp_millis,
      :event_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specific constituent sub slot of the composite slot to elicit in
    # dialog action.
    #
    # @!attribute [rw] name
    #   The name of the slot that should be elicited from the user.
    #   @return [String]
    #
    # @!attribute [rw] sub_slot_to_elicit
    #   The field is not supported.
    #   @return [Types::ElicitSubSlot]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/runtime.lex.v2-2020-08-07/ElicitSubSlot AWS API Documentation
    #
    class ElicitSubSlot < Struct.new(
      :name,
      :sub_slot_to_elicit)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] bot_id
    #   The identifier of the bot that contains the session data.
    #   @return [String]
    #
    # @!attribute [rw] bot_alias_id
    #   The alias identifier in use for the bot that contains the session
    #   data.
    #   @return [String]
    #
    # @!attribute [rw] locale_id
    #   The locale where the session is in use.
    #   @return [String]
    #
    # @!attribute [rw] session_id
    #   The identifier of the session to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/runtime.lex.v2-2020-08-07/GetSessionRequest AWS API Documentation
    #
    class GetSessionRequest < Struct.new(
      :bot_id,
      :bot_alias_id,
      :locale_id,
      :session_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] session_id
    #   The identifier of the returned session.
    #   @return [String]
    #
    # @!attribute [rw] messages
    #   A list of messages that were last sent to the user. The messages are
    #   ordered based on the order that your returned the messages from your
    #   Lambda function or the order that messages are defined in the bot.
    #   @return [Array<Types::Message>]
    #
    # @!attribute [rw] interpretations
    #   A list of intents that Amazon Lex V2 determined might satisfy the
    #   user's utterance.
    #
    #   Each interpretation includes the intent, a score that indicates how
    #   confident Amazon Lex V2 is that the interpretation is the correct
    #   one, and an optional sentiment response that indicates the sentiment
    #   expressed in the utterance.
    #   @return [Array<Types::Interpretation>]
    #
    # @!attribute [rw] session_state
    #   Represents the current state of the dialog between the user and the
    #   bot.
    #
    #   You can use this to determine the progress of the conversation and
    #   what the next action might be.
    #   @return [Types::SessionState]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/runtime.lex.v2-2020-08-07/GetSessionResponse AWS API Documentation
    #
    class GetSessionResponse < Struct.new(
      :session_id,
      :messages,
      :interpretations,
      :session_state)
      SENSITIVE = []
      include Aws::Structure
    end

    # Event that Amazon Lex V2 sends to indicate that the stream is still
    # open between the client application and Amazon Lex V2
    #
    # @!attribute [rw] event_id
    #   A unique identifier of the event sent by Amazon Lex V2. The
    #   identifier is in the form `RESPONSE-N`, where N is a number starting
    #   with one and incremented for each event sent by Amazon Lex V2 in the
    #   current session.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/runtime.lex.v2-2020-08-07/HeartbeatEvent AWS API Documentation
    #
    class HeartbeatEvent < Struct.new(
      :event_id,
      :event_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # A card that is shown to the user by a messaging platform. You define
    # the contents of the card, the card is displayed by the platform.
    #
    # When you use a response card, the response from the user is
    # constrained to the text associated with a button on the card.
    #
    # @!attribute [rw] title
    #   The title to display on the response card. The format of the title
    #   is determined by the platform displaying the response card.
    #   @return [String]
    #
    # @!attribute [rw] subtitle
    #   The subtitle to display on the response card. The format of the
    #   subtitle is determined by the platform displaying the response card.
    #   @return [String]
    #
    # @!attribute [rw] image_url
    #   The URL of an image to display on the response card. The image URL
    #   must be publicly available so that the platform displaying the
    #   response card has access to the image.
    #   @return [String]
    #
    # @!attribute [rw] buttons
    #   A list of buttons that should be displayed on the response card. The
    #   arrangement of the buttons is determined by the platform that
    #   displays the button.
    #   @return [Array<Types::Button>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/runtime.lex.v2-2020-08-07/ImageResponseCard AWS API Documentation
    #
    class ImageResponseCard < Struct.new(
      :title,
      :subtitle,
      :image_url,
      :buttons)
      SENSITIVE = []
      include Aws::Structure
    end

    # The current intent that Amazon Lex V2 is attempting to fulfill.
    #
    # @!attribute [rw] name
    #   The name of the intent.
    #   @return [String]
    #
    # @!attribute [rw] slots
    #   A map of all of the slots for the intent. The name of the slot maps
    #   to the value of the slot. If a slot has not been filled, the value
    #   is null.
    #   @return [Hash<String,Types::Slot>]
    #
    # @!attribute [rw] state
    #   Contains fulfillment information for the intent.
    #   @return [String]
    #
    # @!attribute [rw] confirmation_state
    #   Contains information about whether fulfillment of the intent has
    #   been confirmed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/runtime.lex.v2-2020-08-07/Intent AWS API Documentation
    #
    class Intent < Struct.new(
      :name,
      :slots,
      :state,
      :confirmation_state)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the current state of the conversation between the client
    # application and Amazon Lex V2.
    #
    # @!attribute [rw] input_mode
    #   Indicates whether the input to the operation was text or speech.
    #   @return [String]
    #
    # @!attribute [rw] interpretations
    #   A list of intents that Amazon Lex V2 determined might satisfy the
    #   user's utterance.
    #
    #   Each interpretation includes the intent, a score that indicates how
    #   confident Amazon Lex V2 is that the interpretation is the correct
    #   one, and an optional sentiment response that indicates the sentiment
    #   expressed in the utterance.
    #   @return [Array<Types::Interpretation>]
    #
    # @!attribute [rw] session_state
    #   The state of the user's session with Amazon Lex V2.
    #   @return [Types::SessionState]
    #
    # @!attribute [rw] request_attributes
    #   The attributes sent in the request.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] session_id
    #   The identifier of the session in use.
    #   @return [String]
    #
    # @!attribute [rw] event_id
    #   A unique identifier of the event sent by Amazon Lex V2. The
    #   identifier is in the form `RESPONSE-N`, where N is a number starting
    #   with one and incremented for each event sent by Amazon Lex V2 in the
    #   current session.
    #   @return [String]
    #
    # @!attribute [rw] recognized_bot_member
    #   The bot member that is processing the intent.
    #   @return [Types::RecognizedBotMember]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/runtime.lex.v2-2020-08-07/IntentResultEvent AWS API Documentation
    #
    class IntentResultEvent < Struct.new(
      :input_mode,
      :interpretations,
      :session_state,
      :request_attributes,
      :session_id,
      :event_id,
      :recognized_bot_member,
      :event_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/runtime.lex.v2-2020-08-07/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message,
      :event_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # An intent that Amazon Lex V2 determined might satisfy the user's
    # utterance. The intents are ordered by the confidence score.
    #
    # @!attribute [rw] nlu_confidence
    #   Determines the threshold where Amazon Lex V2 will insert the
    #   `AMAZON.FallbackIntent`, `AMAZON.KendraSearchIntent`, or both when
    #   returning alternative intents in a response. `AMAZON.FallbackIntent`
    #   and `AMAZON.KendraSearchIntent` are only inserted if they are
    #   configured for the bot.
    #   @return [Types::ConfidenceScore]
    #
    # @!attribute [rw] sentiment_response
    #   The sentiment expressed in an utterance.
    #
    #   When the bot is configured to send utterances to Amazon Comprehend
    #   for sentiment analysis, this field contains the result of the
    #   analysis.
    #   @return [Types::SentimentResponse]
    #
    # @!attribute [rw] intent
    #   A list of intents that might satisfy the user's utterance. The
    #   intents are ordered by the confidence score.
    #   @return [Types::Intent]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/runtime.lex.v2-2020-08-07/Interpretation AWS API Documentation
    #
    class Interpretation < Struct.new(
      :nlu_confidence,
      :sentiment_response,
      :intent)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for text that is returned to the customer..
    #
    # @!attribute [rw] content
    #   The text of the message.
    #   @return [String]
    #
    # @!attribute [rw] content_type
    #   Indicates the type of response.
    #   @return [String]
    #
    # @!attribute [rw] image_response_card
    #   A card that is shown to the user by a messaging platform. You define
    #   the contents of the card, the card is displayed by the platform.
    #
    #   When you use a response card, the response from the user is
    #   constrained to the text associated with a button on the card.
    #   @return [Types::ImageResponseCard]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/runtime.lex.v2-2020-08-07/Message AWS API Documentation
    #
    class Message < Struct.new(
      :content,
      :content_type,
      :image_response_card)
      SENSITIVE = [:content]
      include Aws::Structure
    end

    # Event sent from the client application to Amazon Lex V2 to indicate
    # that playback of audio is complete and that Amazon Lex V2 should start
    # processing the user's input.
    #
    # @!attribute [rw] event_id
    #   A unique identifier that your application assigns to the event. You
    #   can use this to identify events in logs.
    #   @return [String]
    #
    # @!attribute [rw] client_timestamp_millis
    #   A timestamp set by the client of the date and time that the event
    #   was sent to Amazon Lex V2.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/runtime.lex.v2-2020-08-07/PlaybackCompletionEvent AWS API Documentation
    #
    class PlaybackCompletionEvent < Struct.new(
      :event_id,
      :client_timestamp_millis,
      :event_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Event sent from Amazon Lex V2 to indicate to the client application
    # should stop playback of audio. For example, if the client is playing a
    # prompt that asks for the user's telephone number, the user might
    # start to say the phone number before the prompt is complete. Amazon
    # Lex V2 sends this event to the client application to indicate that the
    # user is responding and that Amazon Lex V2 is processing their input.
    #
    # @!attribute [rw] event_reason
    #   Indicates the type of user input that Amazon Lex V2 detected.
    #   @return [String]
    #
    # @!attribute [rw] caused_by_event_id
    #   The identifier of the event that contained the audio, DTMF, or text
    #   that caused the interruption.
    #   @return [String]
    #
    # @!attribute [rw] event_id
    #   A unique identifier of the event sent by Amazon Lex V2. The
    #   identifier is in the form `RESPONSE-N`, where N is a number starting
    #   with one and incremented for each event sent by Amazon Lex V2 in the
    #   current session.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/runtime.lex.v2-2020-08-07/PlaybackInterruptionEvent AWS API Documentation
    #
    class PlaybackInterruptionEvent < Struct.new(
      :event_reason,
      :caused_by_event_id,
      :event_id,
      :event_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] bot_id
    #   The identifier of the bot that receives the session data.
    #   @return [String]
    #
    # @!attribute [rw] bot_alias_id
    #   The alias identifier of the bot that receives the session data.
    #   @return [String]
    #
    # @!attribute [rw] locale_id
    #   The locale where the session is in use.
    #   @return [String]
    #
    # @!attribute [rw] session_id
    #   The identifier of the session that receives the session data.
    #   @return [String]
    #
    # @!attribute [rw] messages
    #   A list of messages to send to the user. Messages are sent in the
    #   order that they are defined in the list.
    #   @return [Array<Types::Message>]
    #
    # @!attribute [rw] session_state
    #   Sets the state of the session with the user. You can use this to set
    #   the current intent, attributes, context, and dialog action. Use the
    #   dialog action to determine the next step that Amazon Lex V2 should
    #   use in the conversation with the user.
    #   @return [Types::SessionState]
    #
    # @!attribute [rw] request_attributes
    #   Request-specific information passed between Amazon Lex V2 and the
    #   client application.
    #
    #   The namespace `x-amz-lex:` is reserved for special attributes.
    #   Don't create any request attributes with the prefix `x-amz-lex:`.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] response_content_type
    #   The message that Amazon Lex V2 returns in the response can be either
    #   text or speech depending on the value of this parameter.
    #
    #   * If the value is `text/plain; charset=utf-8`, Amazon Lex V2 returns
    #     text in the response.
    #
    #   ^
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/runtime.lex.v2-2020-08-07/PutSessionRequest AWS API Documentation
    #
    class PutSessionRequest < Struct.new(
      :bot_id,
      :bot_alias_id,
      :locale_id,
      :session_id,
      :messages,
      :session_state,
      :request_attributes,
      :response_content_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] content_type
    #   The type of response. Same as the type specified in the
    #   `responseContentType` field in the request.
    #   @return [String]
    #
    # @!attribute [rw] messages
    #   A list of messages that were last sent to the user. The messages are
    #   ordered based on how you return the messages from you Lambda
    #   function or the order that the messages are defined in the bot.
    #   @return [String]
    #
    # @!attribute [rw] session_state
    #   Represents the current state of the dialog between the user and the
    #   bot.
    #
    #   Use this to determine the progress of the conversation and what the
    #   next action may be.
    #   @return [String]
    #
    # @!attribute [rw] request_attributes
    #   Request-specific information passed between the client application
    #   and Amazon Lex V2. These are the same as the `requestAttribute`
    #   parameter in the call to the `PutSession` operation.
    #   @return [String]
    #
    # @!attribute [rw] session_id
    #   The identifier of the session that received the data.
    #   @return [String]
    #
    # @!attribute [rw] audio_stream
    #   If the requested content type was audio, the audio version of the
    #   message to convey to the user.
    #   @return [IO]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/runtime.lex.v2-2020-08-07/PutSessionResponse AWS API Documentation
    #
    class PutSessionResponse < Struct.new(
      :content_type,
      :messages,
      :session_state,
      :request_attributes,
      :session_id,
      :audio_stream)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] bot_id
    #   The identifier of the bot that processes the request.
    #   @return [String]
    #
    # @!attribute [rw] bot_alias_id
    #   The alias identifier in use for the bot that processes the request.
    #   @return [String]
    #
    # @!attribute [rw] locale_id
    #   The locale where the session is in use.
    #   @return [String]
    #
    # @!attribute [rw] session_id
    #   The identifier of the user session that is having the conversation.
    #   @return [String]
    #
    # @!attribute [rw] text
    #   The text that the user entered. Amazon Lex V2 interprets this text.
    #   @return [String]
    #
    # @!attribute [rw] session_state
    #   The current state of the dialog between the user and the bot.
    #   @return [Types::SessionState]
    #
    # @!attribute [rw] request_attributes
    #   Request-specific information passed between the client application
    #   and Amazon Lex V2
    #
    #   The namespace `x-amz-lex:` is reserved for special attributes.
    #   Don't create any request attributes with the prefix `x-amz-lex:`.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/runtime.lex.v2-2020-08-07/RecognizeTextRequest AWS API Documentation
    #
    class RecognizeTextRequest < Struct.new(
      :bot_id,
      :bot_alias_id,
      :locale_id,
      :session_id,
      :text,
      :session_state,
      :request_attributes)
      SENSITIVE = [:text]
      include Aws::Structure
    end

    # @!attribute [rw] messages
    #   A list of messages last sent to the user. The messages are ordered
    #   based on the order that you returned the messages from your Lambda
    #   function or the order that the messages are defined in the bot.
    #   @return [Array<Types::Message>]
    #
    # @!attribute [rw] session_state
    #   Represents the current state of the dialog between the user and the
    #   bot.
    #
    #   Use this to determine the progress of the conversation and what the
    #   next action may be.
    #   @return [Types::SessionState]
    #
    # @!attribute [rw] interpretations
    #   A list of intents that Amazon Lex V2 determined might satisfy the
    #   user's utterance.
    #
    #   Each interpretation includes the intent, a score that indicates now
    #   confident Amazon Lex V2 is that the interpretation is the correct
    #   one, and an optional sentiment response that indicates the sentiment
    #   expressed in the utterance.
    #   @return [Array<Types::Interpretation>]
    #
    # @!attribute [rw] request_attributes
    #   The attributes sent in the request.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] session_id
    #   The identifier of the session in use.
    #   @return [String]
    #
    # @!attribute [rw] recognized_bot_member
    #   The bot member that recognized the text.
    #   @return [Types::RecognizedBotMember]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/runtime.lex.v2-2020-08-07/RecognizeTextResponse AWS API Documentation
    #
    class RecognizeTextResponse < Struct.new(
      :messages,
      :session_state,
      :interpretations,
      :request_attributes,
      :session_id,
      :recognized_bot_member)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] bot_id
    #   The identifier of the bot that should receive the request.
    #   @return [String]
    #
    # @!attribute [rw] bot_alias_id
    #   The alias identifier in use for the bot that should receive the
    #   request.
    #   @return [String]
    #
    # @!attribute [rw] locale_id
    #   The locale where the session is in use.
    #   @return [String]
    #
    # @!attribute [rw] session_id
    #   The identifier of the session in use.
    #   @return [String]
    #
    # @!attribute [rw] session_state
    #   Sets the state of the session with the user. You can use this to set
    #   the current intent, attributes, context, and dialog action. Use the
    #   dialog action to determine the next step that Amazon Lex V2 should
    #   use in the conversation with the user.
    #
    #   The `sessionState` field must be compressed using gzip and then
    #   base64 encoded before sending to Amazon Lex V2.
    #   @return [String]
    #
    # @!attribute [rw] request_attributes
    #   Request-specific information passed between the client application
    #   and Amazon Lex V2
    #
    #   The namespace `x-amz-lex:` is reserved for special attributes.
    #   Don't create any request attributes for prefix `x-amz-lex:`.
    #
    #   The `requestAttributes` field must be compressed using gzip and then
    #   base64 encoded before sending to Amazon Lex V2.
    #   @return [String]
    #
    # @!attribute [rw] request_content_type
    #   Indicates the format for audio input or that the content is text.
    #   The header must start with one of the following prefixes:
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
    #     * audio/x-cbr-opus-with-preamble;preamble-size=0;bit-rate=256000;frame-size-milliseconds=4
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
    # @!attribute [rw] response_content_type
    #   The message that Amazon Lex V2 returns in the response can be either
    #   text or speech based on the `responseContentType` value.
    #
    #   * If the value is `text/plain;charset=utf-8`, Amazon Lex V2 returns
    #     text in the response.
    #
    #   * If the value begins with `audio/`, Amazon Lex V2 returns speech in
    #     the response. Amazon Lex V2 uses Amazon Polly to generate the
    #     speech using the configuration that you specified in the
    #     `responseContentType` parameter. For example, if you specify
    #     `audio/mpeg` as the value, Amazon Lex V2 returns speech in the
    #     MPEG format.
    #
    #   * If the value is `audio/pcm`, the speech returned is `audio/pcm` at
    #     16 KHz in 16-bit, little-endian format.
    #
    #   * The following are the accepted values:
    #
    #     * audio/mpeg
    #
    #     * audio/ogg
    #
    #     * audio/pcm (16 KHz)
    #
    #     * audio/* (defaults to mpeg)
    #
    #     * text/plain; charset=utf-8
    #   @return [String]
    #
    # @!attribute [rw] input_stream
    #   User input in PCM or Opus audio format or text format as described
    #   in the `requestContentType` parameter.
    #   @return [IO]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/runtime.lex.v2-2020-08-07/RecognizeUtteranceRequest AWS API Documentation
    #
    class RecognizeUtteranceRequest < Struct.new(
      :bot_id,
      :bot_alias_id,
      :locale_id,
      :session_id,
      :session_state,
      :request_attributes,
      :request_content_type,
      :response_content_type,
      :input_stream)
      SENSITIVE = [:session_state, :request_attributes]
      include Aws::Structure
    end

    # @!attribute [rw] input_mode
    #   Indicates whether the input mode to the operation was text or
    #   speech.
    #   @return [String]
    #
    # @!attribute [rw] content_type
    #   Content type as specified in the `responseContentType` in the
    #   request.
    #   @return [String]
    #
    # @!attribute [rw] messages
    #   A list of messages that were last sent to the user. The messages are
    #   ordered based on the order that you returned the messages from your
    #   Lambda function or the order that the messages are defined in the
    #   bot.
    #
    #   The `messages` field is compressed with gzip and then base64
    #   encoded. Before you can use the contents of the field, you must
    #   decode and decompress the contents. See the example for a simple
    #   function to decode and decompress the contents.
    #   @return [String]
    #
    # @!attribute [rw] interpretations
    #   A list of intents that Amazon Lex V2 determined might satisfy the
    #   user's utterance.
    #
    #   Each interpretation includes the intent, a score that indicates how
    #   confident Amazon Lex V2 is that the interpretation is the correct
    #   one, and an optional sentiment response that indicates the sentiment
    #   expressed in the utterance.
    #
    #   The `interpretations` field is compressed with gzip and then base64
    #   encoded. Before you can use the contents of the field, you must
    #   decode and decompress the contents. See the example for a simple
    #   function to decode and decompress the contents.
    #   @return [String]
    #
    # @!attribute [rw] session_state
    #   Represents the current state of the dialog between the user and the
    #   bot.
    #
    #   Use this to determine the progress of the conversation and what the
    #   next action might be.
    #
    #   The `sessionState` field is compressed with gzip and then base64
    #   encoded. Before you can use the contents of the field, you must
    #   decode and decompress the contents. See the example for a simple
    #   function to decode and decompress the contents.
    #   @return [String]
    #
    # @!attribute [rw] request_attributes
    #   The attributes sent in the request.
    #
    #   The `requestAttributes` field is compressed with gzip and then
    #   base64 encoded. Before you can use the contents of the field, you
    #   must decode and decompress the contents.
    #   @return [String]
    #
    # @!attribute [rw] session_id
    #   The identifier of the session in use.
    #   @return [String]
    #
    # @!attribute [rw] input_transcript
    #   The text used to process the request.
    #
    #   If the input was an audio stream, the `inputTranscript` field
    #   contains the text extracted from the audio stream. This is the text
    #   that is actually processed to recognize intents and slot values. You
    #   can use this information to determine if Amazon Lex V2 is correctly
    #   processing the audio that you send.
    #
    #   The `inputTranscript` field is compressed with gzip and then base64
    #   encoded. Before you can use the contents of the field, you must
    #   decode and decompress the contents. See the example for a simple
    #   function to decode and decompress the contents.
    #   @return [String]
    #
    # @!attribute [rw] audio_stream
    #   The prompt or statement to send to the user. This is based on the
    #   bot configuration and context. For example, if Amazon Lex V2 did not
    #   understand the user intent, it sends the `clarificationPrompt`
    #   configured for the bot. If the intent requires confirmation before
    #   taking the fulfillment action, it sends the `confirmationPrompt`.
    #   Another example: Suppose that the Lambda function successfully
    #   fulfilled the intent, and sent a message to convey to the user. Then
    #   Amazon Lex V2 sends that message in the response.
    #   @return [IO]
    #
    # @!attribute [rw] recognized_bot_member
    #   The bot member that recognized the utterance.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/runtime.lex.v2-2020-08-07/RecognizeUtteranceResponse AWS API Documentation
    #
    class RecognizeUtteranceResponse < Struct.new(
      :input_mode,
      :content_type,
      :messages,
      :interpretations,
      :session_state,
      :request_attributes,
      :session_id,
      :input_transcript,
      :audio_stream,
      :recognized_bot_member)
      SENSITIVE = []
      include Aws::Structure
    end

    # The bot member that processes the request.
    #
    # @!attribute [rw] bot_id
    #   The identifier of the bot member that processes the request.
    #   @return [String]
    #
    # @!attribute [rw] bot_name
    #   The name of the bot member that processes the request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/runtime.lex.v2-2020-08-07/RecognizedBotMember AWS API Documentation
    #
    class RecognizedBotMember < Struct.new(
      :bot_id,
      :bot_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/runtime.lex.v2-2020-08-07/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message,
      :event_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides an array of phrases that should be given preference when
    # resolving values for a slot.
    #
    # @!attribute [rw] runtime_hint_values
    #   One or more strings that Amazon Lex V2 should look for in the input
    #   to the bot. Each phrase is given preference when deciding on slot
    #   values.
    #   @return [Array<Types::RuntimeHintValue>]
    #
    # @!attribute [rw] sub_slot_hints
    #   A map of constituent sub slot names inside a composite slot in the
    #   intent and the phrases that should be added for each sub slot.
    #   Inside each composite slot hints, this structure provides a
    #   mechanism to add granular sub slot phrases. Only sub slot hints are
    #   supported for composite slots. The intent name, composite slot name
    #   and the constituent sub slot names must exist.
    #   @return [Hash<String,Types::RuntimeHintDetails>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/runtime.lex.v2-2020-08-07/RuntimeHintDetails AWS API Documentation
    #
    class RuntimeHintDetails < Struct.new(
      :runtime_hint_values,
      :sub_slot_hints)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides the phrase that Amazon Lex V2 should look for in the user's
    # input to the bot.
    #
    # @!attribute [rw] phrase
    #   The phrase that Amazon Lex V2 should look for in the user's input
    #   to the bot.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/runtime.lex.v2-2020-08-07/RuntimeHintValue AWS API Documentation
    #
    class RuntimeHintValue < Struct.new(
      :phrase)
      SENSITIVE = []
      include Aws::Structure
    end

    # You can provide Amazon Lex V2 with hints to the phrases that a
    # customer is likely to use for a slot. When a slot with hints is
    # resolved, the phrases in the runtime hints are preferred in the
    # resolution. You can provide hints for a maximum of 100 intents. You
    # can provide a maximum of 100 slots.
    #
    # Before you can use runtime hints with an existing bot, you must first
    # rebuild the bot.
    #
    # For more information, see [Using runtime hints to improve recognition
    # of slot values][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lexv2/latest/dg/using-hints.html
    #
    # @!attribute [rw] slot_hints
    #   A list of the slots in the intent that should have runtime hints
    #   added, and the phrases that should be added for each slot.
    #
    #   The first level of the `slotHints` map is the name of the intent.
    #   The second level is the name of the slot within the intent. For more
    #   information, see [Using hints to improve accuracy][1].
    #
    #   The intent name and slot name must exist.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lexv2/latest/dg/using-hints.html
    #   @return [Hash<String,Hash<String,Types::RuntimeHintDetails>>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/runtime.lex.v2-2020-08-07/RuntimeHints AWS API Documentation
    #
    class RuntimeHints < Struct.new(
      :slot_hints)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about the sentiment expressed in a user's
    # response in a conversation. Sentiments are determined using Amazon
    # Comprehend. Sentiments are only returned if they are enabled for the
    # bot.
    #
    # For more information, see [ Determine Sentiment ][1] in the *Amazon
    # Comprehend developer guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/comprehend/latest/dg/how-sentiment.html
    #
    # @!attribute [rw] sentiment
    #   The overall sentiment expressed in the user's response. This is the
    #   sentiment most likely expressed by the user based on the analysis by
    #   Amazon Comprehend.
    #   @return [String]
    #
    # @!attribute [rw] sentiment_score
    #   The individual sentiment responses for the utterance.
    #   @return [Types::SentimentScore]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/runtime.lex.v2-2020-08-07/SentimentResponse AWS API Documentation
    #
    class SentimentResponse < Struct.new(
      :sentiment,
      :sentiment_score)
      SENSITIVE = []
      include Aws::Structure
    end

    # The individual sentiment responses for the utterance.
    #
    # @!attribute [rw] positive
    #   The level of confidence that Amazon Comprehend has in the accuracy
    #   of its detection of the `POSITIVE` sentiment.
    #   @return [Float]
    #
    # @!attribute [rw] negative
    #   The level of confidence that Amazon Comprehend has in the accuracy
    #   of its detection of the `NEGATIVE` sentiment.
    #   @return [Float]
    #
    # @!attribute [rw] neutral
    #   The level of confidence that Amazon Comprehend has in the accuracy
    #   of its detection of the `NEUTRAL` sentiment.
    #   @return [Float]
    #
    # @!attribute [rw] mixed
    #   The level of confidence that Amazon Comprehend has in the accuracy
    #   of its detection of the `MIXED` sentiment.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/runtime.lex.v2-2020-08-07/SentimentScore AWS API Documentation
    #
    class SentimentScore < Struct.new(
      :positive,
      :negative,
      :neutral,
      :mixed)
      SENSITIVE = []
      include Aws::Structure
    end

    # The state of the user's session with Amazon Lex V2.
    #
    # @!attribute [rw] dialog_action
    #   The next step that Amazon Lex V2 should take in the conversation
    #   with a user.
    #   @return [Types::DialogAction]
    #
    # @!attribute [rw] intent
    #   The active intent that Amazon Lex V2 is processing.
    #   @return [Types::Intent]
    #
    # @!attribute [rw] active_contexts
    #   One or more contexts that indicate to Amazon Lex V2 the context of a
    #   request. When a context is active, Amazon Lex V2 considers intents
    #   with the matching context as a trigger as the next intent in a
    #   session.
    #   @return [Array<Types::ActiveContext>]
    #
    # @!attribute [rw] session_attributes
    #   Map of key/value pairs representing session-specific context
    #   information. It contains application information passed between
    #   Amazon Lex V2 and a client application.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] originating_request_id
    #   A unique identifier for a specific request.
    #   @return [String]
    #
    # @!attribute [rw] runtime_hints
    #   Hints for phrases that a customer is likely to use for a slot.
    #   Amazon Lex V2 uses the hints to help determine the correct value of
    #   a slot.
    #   @return [Types::RuntimeHints]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/runtime.lex.v2-2020-08-07/SessionState AWS API Documentation
    #
    class SessionState < Struct.new(
      :dialog_action,
      :intent,
      :active_contexts,
      :session_attributes,
      :originating_request_id,
      :runtime_hints)
      SENSITIVE = []
      include Aws::Structure
    end

    # A value that Amazon Lex V2 uses to fulfill an intent.
    #
    # @!attribute [rw] value
    #   The current value of the slot.
    #   @return [Types::Value]
    #
    # @!attribute [rw] shape
    #   When the `shape` value is `List`, it indicates that the `values`
    #   field contains a list of slot values. When the value is `Scalar`, it
    #   indicates that the `value` field contains a single value.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   A list of one or more values that the user provided for the slot.
    #   For example, if a for a slot that elicits pizza toppings, the values
    #   might be "pepperoni" and "pineapple."
    #   @return [Array<Types::Slot>]
    #
    # @!attribute [rw] sub_slots
    #   The constituent sub slots of a composite slot.
    #   @return [Hash<String,Types::Slot>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/runtime.lex.v2-2020-08-07/Slot AWS API Documentation
    #
    class Slot < Struct.new(
      :value,
      :shape,
      :values,
      :sub_slots)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] bot_id
    #   The identifier of the bot to process the request.
    #   @return [String]
    #
    # @!attribute [rw] bot_alias_id
    #   The alias identifier in use for the bot that processes the request.
    #   @return [String]
    #
    # @!attribute [rw] locale_id
    #   The locale where the session is in use.
    #   @return [String]
    #
    # @!attribute [rw] session_id
    #   The identifier of the user session that is having the conversation.
    #   @return [String]
    #
    # @!attribute [rw] conversation_mode
    #   The conversation type that you are using the Amazon Lex V2. If the
    #   conversation mode is `AUDIO` you can send both audio and DTMF
    #   information. If the mode is `TEXT` you can only send text.
    #   @return [String]
    #
    # @!attribute [rw] request_event_stream
    #   Represents the stream of events to Amazon Lex V2 from your
    #   application. The events are encoded as HTTP/2 data frames.
    #   @return [Types::StartConversationRequestEventStream]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/runtime.lex.v2-2020-08-07/StartConversationRequest AWS API Documentation
    #
    class StartConversationRequest < Struct.new(
      :bot_id,
      :bot_alias_id,
      :locale_id,
      :session_id,
      :conversation_mode,
      :request_event_stream)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] response_event_stream
    #   Represents the stream of events from Amazon Lex V2 to your
    #   application. The events are encoded as HTTP/2 data frames.
    #   @return [Types::StartConversationResponseEventStream]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/runtime.lex.v2-2020-08-07/StartConversationResponse AWS API Documentation
    #
    class StartConversationResponse < Struct.new(
      :response_event_stream)
      SENSITIVE = []
      include Aws::Structure
    end

    # The event sent from your client application to Amazon Lex V2 with text
    # input from the user.
    #
    # @!attribute [rw] text
    #   The text from the user. Amazon Lex V2 processes this as a complete
    #   statement.
    #   @return [String]
    #
    # @!attribute [rw] event_id
    #   A unique identifier that your application assigns to the event. You
    #   can use this to identify events in logs.
    #   @return [String]
    #
    # @!attribute [rw] client_timestamp_millis
    #   A timestamp set by the client of the date and time that the event
    #   was sent to Amazon Lex V2.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/runtime.lex.v2-2020-08-07/TextInputEvent AWS API Documentation
    #
    class TextInputEvent < Struct.new(
      :text,
      :event_id,
      :client_timestamp_millis,
      :event_type)
      SENSITIVE = [:text]
      include Aws::Structure
    end

    # The event sent from Amazon Lex V2 to your application with text to
    # present to the user.
    #
    # @!attribute [rw] messages
    #   A list of messages to send to the user. Messages are ordered based
    #   on the order that you returned the messages from your Lambda
    #   function or the order that the messages are defined in the bot.
    #   @return [Array<Types::Message>]
    #
    # @!attribute [rw] event_id
    #   A unique identifier of the event sent by Amazon Lex V2. The
    #   identifier is in the form `RESPONSE-N`, where N is a number starting
    #   with one and incremented for each event sent by Amazon Lex V2 in the
    #   current session.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/runtime.lex.v2-2020-08-07/TextResponseEvent AWS API Documentation
    #
    class TextResponseEvent < Struct.new(
      :messages,
      :event_id,
      :event_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/runtime.lex.v2-2020-08-07/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message,
      :event_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Event sent from Amazon Lex V2 to your client application that contains
    # a transcript of voice audio.
    #
    # @!attribute [rw] transcript
    #   The transcript of the voice audio from the user.
    #   @return [String]
    #
    # @!attribute [rw] event_id
    #   A unique identifier of the event sent by Amazon Lex V2. The
    #   identifier is in the form `RESPONSE-N`, where N is a number starting
    #   with one and incremented for each event sent by Amazon Lex V2 in the
    #   current session.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/runtime.lex.v2-2020-08-07/TranscriptEvent AWS API Documentation
    #
    class TranscriptEvent < Struct.new(
      :transcript,
      :event_id,
      :event_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/runtime.lex.v2-2020-08-07/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message,
      :event_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The value of a slot.
    #
    # @!attribute [rw] original_value
    #   The text of the utterance from the user that was entered for the
    #   slot.
    #   @return [String]
    #
    # @!attribute [rw] interpreted_value
    #   The value that Amazon Lex V2 determines for the slot. The actual
    #   value depends on the setting of the value selection strategy for the
    #   bot. You can choose to use the value entered by the user, or you can
    #   have Amazon Lex V2 choose the first value in the `resolvedValues`
    #   list.
    #   @return [String]
    #
    # @!attribute [rw] resolved_values
    #   A list of additional values that have been recognized for the slot.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/runtime.lex.v2-2020-08-07/Value AWS API Documentation
    #
    class Value < Struct.new(
      :original_value,
      :interpreted_value,
      :resolved_values)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a stream of events between your application and Amazon Lex
    # V2.
    #
    # EventStream is an Enumerator of Events.
    #  #event_types #=> Array, returns all modeled event types in the stream
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/runtime.lex.v2-2020-08-07/StartConversationRequestEventStream AWS API Documentation
    #
    class StartConversationRequestEventStream < Enumerator

      def event_types
        [
          :configuration_event,
          :audio_input_event,
          :dtmf_input_event,
          :text_input_event,
          :playback_completion_event,
          :disconnection_event
        ]
      end

    end

    # Represents a stream of events between Amazon Lex V2 and your
    # application.
    #
    # EventStream is an Enumerator of Events.
    #  #event_types #=> Array, returns all modeled event types in the stream
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/runtime.lex.v2-2020-08-07/StartConversationResponseEventStream AWS API Documentation
    #
    class StartConversationResponseEventStream < Enumerator

      def event_types
        [
          :playback_interruption_event,
          :transcript_event,
          :intent_result_event,
          :text_response_event,
          :audio_response_event,
          :heartbeat_event,
          :access_denied_exception,
          :resource_not_found_exception,
          :validation_exception,
          :throttling_exception,
          :internal_server_exception,
          :conflict_exception,
          :dependency_failed_exception,
          :bad_gateway_exception
        ]
      end

    end

  end
end
