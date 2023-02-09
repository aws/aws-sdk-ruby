# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::LexRuntimeV2
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    ActiveContext = Shapes::StructureShape.new(name: 'ActiveContext')
    ActiveContextName = Shapes::StringShape.new(name: 'ActiveContextName')
    ActiveContextParametersMap = Shapes::MapShape.new(name: 'ActiveContextParametersMap')
    ActiveContextTimeToLive = Shapes::StructureShape.new(name: 'ActiveContextTimeToLive')
    ActiveContextTimeToLiveInSeconds = Shapes::IntegerShape.new(name: 'ActiveContextTimeToLiveInSeconds')
    ActiveContextTurnsToLive = Shapes::IntegerShape.new(name: 'ActiveContextTurnsToLive')
    ActiveContextsList = Shapes::ListShape.new(name: 'ActiveContextsList')
    AttachmentTitle = Shapes::StringShape.new(name: 'AttachmentTitle')
    AttachmentUrl = Shapes::StringShape.new(name: 'AttachmentUrl')
    AudioChunk = Shapes::BlobShape.new(name: 'AudioChunk')
    AudioInputEvent = Shapes::StructureShape.new(name: 'AudioInputEvent')
    AudioResponseEvent = Shapes::StructureShape.new(name: 'AudioResponseEvent')
    BadGatewayException = Shapes::StructureShape.new(name: 'BadGatewayException')
    BlobStream = Shapes::BlobShape.new(name: 'BlobStream', streaming: true)
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    BotAliasIdentifier = Shapes::StringShape.new(name: 'BotAliasIdentifier')
    BotIdentifier = Shapes::StringShape.new(name: 'BotIdentifier')
    Button = Shapes::StructureShape.new(name: 'Button')
    ButtonText = Shapes::StringShape.new(name: 'ButtonText')
    ButtonValue = Shapes::StringShape.new(name: 'ButtonValue')
    ButtonsList = Shapes::ListShape.new(name: 'ButtonsList')
    ConfidenceScore = Shapes::StructureShape.new(name: 'ConfidenceScore')
    ConfigurationEvent = Shapes::StructureShape.new(name: 'ConfigurationEvent')
    ConfirmationState = Shapes::StringShape.new(name: 'ConfirmationState')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    ConversationMode = Shapes::StringShape.new(name: 'ConversationMode')
    DTMFInputEvent = Shapes::StructureShape.new(name: 'DTMFInputEvent')
    DTMFRegex = Shapes::StringShape.new(name: 'DTMFRegex')
    DeleteSessionRequest = Shapes::StructureShape.new(name: 'DeleteSessionRequest')
    DeleteSessionResponse = Shapes::StructureShape.new(name: 'DeleteSessionResponse')
    DependencyFailedException = Shapes::StructureShape.new(name: 'DependencyFailedException')
    DialogAction = Shapes::StructureShape.new(name: 'DialogAction')
    DialogActionType = Shapes::StringShape.new(name: 'DialogActionType')
    DisconnectionEvent = Shapes::StructureShape.new(name: 'DisconnectionEvent')
    Double = Shapes::FloatShape.new(name: 'Double')
    ElicitSubSlot = Shapes::StructureShape.new(name: 'ElicitSubSlot')
    EpochMillis = Shapes::IntegerShape.new(name: 'EpochMillis')
    EventId = Shapes::StringShape.new(name: 'EventId')
    GetSessionRequest = Shapes::StructureShape.new(name: 'GetSessionRequest')
    GetSessionResponse = Shapes::StructureShape.new(name: 'GetSessionResponse')
    HeartbeatEvent = Shapes::StructureShape.new(name: 'HeartbeatEvent')
    ImageResponseCard = Shapes::StructureShape.new(name: 'ImageResponseCard')
    InputMode = Shapes::StringShape.new(name: 'InputMode')
    Intent = Shapes::StructureShape.new(name: 'Intent')
    IntentResultEvent = Shapes::StructureShape.new(name: 'IntentResultEvent')
    IntentState = Shapes::StringShape.new(name: 'IntentState')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    Interpretation = Shapes::StructureShape.new(name: 'Interpretation')
    Interpretations = Shapes::ListShape.new(name: 'Interpretations')
    LocaleId = Shapes::StringShape.new(name: 'LocaleId')
    Message = Shapes::StructureShape.new(name: 'Message')
    MessageContentType = Shapes::StringShape.new(name: 'MessageContentType')
    Messages = Shapes::ListShape.new(name: 'Messages')
    Name = Shapes::StringShape.new(name: 'Name')
    NonEmptyString = Shapes::StringShape.new(name: 'NonEmptyString')
    ParameterName = Shapes::StringShape.new(name: 'ParameterName')
    PlaybackCompletionEvent = Shapes::StructureShape.new(name: 'PlaybackCompletionEvent')
    PlaybackInterruptionEvent = Shapes::StructureShape.new(name: 'PlaybackInterruptionEvent')
    PlaybackInterruptionReason = Shapes::StringShape.new(name: 'PlaybackInterruptionReason')
    PutSessionRequest = Shapes::StructureShape.new(name: 'PutSessionRequest')
    PutSessionResponse = Shapes::StructureShape.new(name: 'PutSessionResponse')
    RecognizeTextRequest = Shapes::StructureShape.new(name: 'RecognizeTextRequest')
    RecognizeTextResponse = Shapes::StructureShape.new(name: 'RecognizeTextResponse')
    RecognizeUtteranceRequest = Shapes::StructureShape.new(name: 'RecognizeUtteranceRequest')
    RecognizeUtteranceResponse = Shapes::StructureShape.new(name: 'RecognizeUtteranceResponse')
    RecognizedBotMember = Shapes::StructureShape.new(name: 'RecognizedBotMember')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    RuntimeHintDetails = Shapes::StructureShape.new(name: 'RuntimeHintDetails')
    RuntimeHintPhrase = Shapes::StringShape.new(name: 'RuntimeHintPhrase')
    RuntimeHintValue = Shapes::StructureShape.new(name: 'RuntimeHintValue')
    RuntimeHintValuesList = Shapes::ListShape.new(name: 'RuntimeHintValuesList')
    RuntimeHints = Shapes::StructureShape.new(name: 'RuntimeHints')
    SensitiveNonEmptyString = Shapes::StringShape.new(name: 'SensitiveNonEmptyString')
    SentimentResponse = Shapes::StructureShape.new(name: 'SentimentResponse')
    SentimentScore = Shapes::StructureShape.new(name: 'SentimentScore')
    SentimentType = Shapes::StringShape.new(name: 'SentimentType')
    SessionId = Shapes::StringShape.new(name: 'SessionId')
    SessionState = Shapes::StructureShape.new(name: 'SessionState')
    Shape = Shapes::StringShape.new(name: 'Shape')
    Slot = Shapes::StructureShape.new(name: 'Slot')
    SlotHintsIntentMap = Shapes::MapShape.new(name: 'SlotHintsIntentMap')
    SlotHintsSlotMap = Shapes::MapShape.new(name: 'SlotHintsSlotMap')
    Slots = Shapes::MapShape.new(name: 'Slots')
    StartConversationRequest = Shapes::StructureShape.new(name: 'StartConversationRequest')
    StartConversationRequestEventStream = Shapes::StructureShape.new(name: 'StartConversationRequestEventStream')
    StartConversationResponse = Shapes::StructureShape.new(name: 'StartConversationResponse')
    StartConversationResponseEventStream = Shapes::StructureShape.new(name: 'StartConversationResponseEventStream')
    String = Shapes::StringShape.new(name: 'String')
    StringList = Shapes::ListShape.new(name: 'StringList')
    StringMap = Shapes::MapShape.new(name: 'StringMap')
    StyleType = Shapes::StringShape.new(name: 'StyleType')
    Text = Shapes::StringShape.new(name: 'Text')
    TextInputEvent = Shapes::StructureShape.new(name: 'TextInputEvent')
    TextResponseEvent = Shapes::StructureShape.new(name: 'TextResponseEvent')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    TranscriptEvent = Shapes::StructureShape.new(name: 'TranscriptEvent')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    Value = Shapes::StructureShape.new(name: 'Value')
    Values = Shapes::ListShape.new(name: 'Values')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    ActiveContext.add_member(:name, Shapes::ShapeRef.new(shape: ActiveContextName, required: true, location_name: "name"))
    ActiveContext.add_member(:time_to_live, Shapes::ShapeRef.new(shape: ActiveContextTimeToLive, required: true, location_name: "timeToLive"))
    ActiveContext.add_member(:context_attributes, Shapes::ShapeRef.new(shape: ActiveContextParametersMap, required: true, location_name: "contextAttributes"))
    ActiveContext.struct_class = Types::ActiveContext

    ActiveContextParametersMap.key = Shapes::ShapeRef.new(shape: ParameterName)
    ActiveContextParametersMap.value = Shapes::ShapeRef.new(shape: Text)

    ActiveContextTimeToLive.add_member(:time_to_live_in_seconds, Shapes::ShapeRef.new(shape: ActiveContextTimeToLiveInSeconds, required: true, location_name: "timeToLiveInSeconds"))
    ActiveContextTimeToLive.add_member(:turns_to_live, Shapes::ShapeRef.new(shape: ActiveContextTurnsToLive, required: true, location_name: "turnsToLive"))
    ActiveContextTimeToLive.struct_class = Types::ActiveContextTimeToLive

    ActiveContextsList.member = Shapes::ShapeRef.new(shape: ActiveContext)

    AudioInputEvent.add_member(:audio_chunk, Shapes::ShapeRef.new(shape: AudioChunk, location_name: "audioChunk"))
    AudioInputEvent.add_member(:content_type, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "contentType"))
    AudioInputEvent.add_member(:event_id, Shapes::ShapeRef.new(shape: EventId, location_name: "eventId"))
    AudioInputEvent.add_member(:client_timestamp_millis, Shapes::ShapeRef.new(shape: EpochMillis, location_name: "clientTimestampMillis"))
    AudioInputEvent.struct_class = Types::AudioInputEvent

    AudioResponseEvent.add_member(:audio_chunk, Shapes::ShapeRef.new(shape: AudioChunk, location_name: "audioChunk"))
    AudioResponseEvent.add_member(:content_type, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "contentType"))
    AudioResponseEvent.add_member(:event_id, Shapes::ShapeRef.new(shape: EventId, location_name: "eventId"))
    AudioResponseEvent.struct_class = Types::AudioResponseEvent

    BadGatewayException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    BadGatewayException.struct_class = Types::BadGatewayException

    Button.add_member(:text, Shapes::ShapeRef.new(shape: ButtonText, required: true, location_name: "text"))
    Button.add_member(:value, Shapes::ShapeRef.new(shape: ButtonValue, required: true, location_name: "value"))
    Button.struct_class = Types::Button

    ButtonsList.member = Shapes::ShapeRef.new(shape: Button)

    ConfidenceScore.add_member(:score, Shapes::ShapeRef.new(shape: Double, location_name: "score"))
    ConfidenceScore.struct_class = Types::ConfidenceScore

    ConfigurationEvent.add_member(:request_attributes, Shapes::ShapeRef.new(shape: StringMap, location_name: "requestAttributes"))
    ConfigurationEvent.add_member(:response_content_type, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "responseContentType"))
    ConfigurationEvent.add_member(:session_state, Shapes::ShapeRef.new(shape: SessionState, location_name: "sessionState"))
    ConfigurationEvent.add_member(:welcome_messages, Shapes::ShapeRef.new(shape: Messages, location_name: "welcomeMessages"))
    ConfigurationEvent.add_member(:disable_playback, Shapes::ShapeRef.new(shape: Boolean, location_name: "disablePlayback"))
    ConfigurationEvent.add_member(:event_id, Shapes::ShapeRef.new(shape: EventId, location_name: "eventId"))
    ConfigurationEvent.add_member(:client_timestamp_millis, Shapes::ShapeRef.new(shape: EpochMillis, location_name: "clientTimestampMillis"))
    ConfigurationEvent.struct_class = Types::ConfigurationEvent

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ConflictException.struct_class = Types::ConflictException

    DTMFInputEvent.add_member(:input_character, Shapes::ShapeRef.new(shape: DTMFRegex, required: true, location_name: "inputCharacter"))
    DTMFInputEvent.add_member(:event_id, Shapes::ShapeRef.new(shape: EventId, location_name: "eventId"))
    DTMFInputEvent.add_member(:client_timestamp_millis, Shapes::ShapeRef.new(shape: EpochMillis, location_name: "clientTimestampMillis"))
    DTMFInputEvent.struct_class = Types::DTMFInputEvent

    DeleteSessionRequest.add_member(:bot_id, Shapes::ShapeRef.new(shape: BotIdentifier, required: true, location: "uri", location_name: "botId"))
    DeleteSessionRequest.add_member(:bot_alias_id, Shapes::ShapeRef.new(shape: BotAliasIdentifier, required: true, location: "uri", location_name: "botAliasId"))
    DeleteSessionRequest.add_member(:locale_id, Shapes::ShapeRef.new(shape: LocaleId, required: true, location: "uri", location_name: "localeId"))
    DeleteSessionRequest.add_member(:session_id, Shapes::ShapeRef.new(shape: SessionId, required: true, location: "uri", location_name: "sessionId"))
    DeleteSessionRequest.struct_class = Types::DeleteSessionRequest

    DeleteSessionResponse.add_member(:bot_id, Shapes::ShapeRef.new(shape: BotIdentifier, location_name: "botId"))
    DeleteSessionResponse.add_member(:bot_alias_id, Shapes::ShapeRef.new(shape: BotAliasIdentifier, location_name: "botAliasId"))
    DeleteSessionResponse.add_member(:locale_id, Shapes::ShapeRef.new(shape: LocaleId, location_name: "localeId"))
    DeleteSessionResponse.add_member(:session_id, Shapes::ShapeRef.new(shape: SessionId, location_name: "sessionId"))
    DeleteSessionResponse.struct_class = Types::DeleteSessionResponse

    DependencyFailedException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    DependencyFailedException.struct_class = Types::DependencyFailedException

    DialogAction.add_member(:type, Shapes::ShapeRef.new(shape: DialogActionType, required: true, location_name: "type"))
    DialogAction.add_member(:slot_to_elicit, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "slotToElicit"))
    DialogAction.add_member(:slot_elicitation_style, Shapes::ShapeRef.new(shape: StyleType, location_name: "slotElicitationStyle"))
    DialogAction.add_member(:sub_slot_to_elicit, Shapes::ShapeRef.new(shape: ElicitSubSlot, location_name: "subSlotToElicit"))
    DialogAction.struct_class = Types::DialogAction

    DisconnectionEvent.add_member(:event_id, Shapes::ShapeRef.new(shape: EventId, location_name: "eventId"))
    DisconnectionEvent.add_member(:client_timestamp_millis, Shapes::ShapeRef.new(shape: EpochMillis, location_name: "clientTimestampMillis"))
    DisconnectionEvent.struct_class = Types::DisconnectionEvent

    ElicitSubSlot.add_member(:name, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "name"))
    ElicitSubSlot.add_member(:sub_slot_to_elicit, Shapes::ShapeRef.new(shape: ElicitSubSlot, location_name: "subSlotToElicit"))
    ElicitSubSlot.struct_class = Types::ElicitSubSlot

    GetSessionRequest.add_member(:bot_id, Shapes::ShapeRef.new(shape: BotIdentifier, required: true, location: "uri", location_name: "botId"))
    GetSessionRequest.add_member(:bot_alias_id, Shapes::ShapeRef.new(shape: BotAliasIdentifier, required: true, location: "uri", location_name: "botAliasId"))
    GetSessionRequest.add_member(:locale_id, Shapes::ShapeRef.new(shape: LocaleId, required: true, location: "uri", location_name: "localeId"))
    GetSessionRequest.add_member(:session_id, Shapes::ShapeRef.new(shape: SessionId, required: true, location: "uri", location_name: "sessionId"))
    GetSessionRequest.struct_class = Types::GetSessionRequest

    GetSessionResponse.add_member(:session_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "sessionId"))
    GetSessionResponse.add_member(:messages, Shapes::ShapeRef.new(shape: Messages, location_name: "messages"))
    GetSessionResponse.add_member(:interpretations, Shapes::ShapeRef.new(shape: Interpretations, location_name: "interpretations"))
    GetSessionResponse.add_member(:session_state, Shapes::ShapeRef.new(shape: SessionState, location_name: "sessionState"))
    GetSessionResponse.struct_class = Types::GetSessionResponse

    HeartbeatEvent.add_member(:event_id, Shapes::ShapeRef.new(shape: EventId, location_name: "eventId"))
    HeartbeatEvent.struct_class = Types::HeartbeatEvent

    ImageResponseCard.add_member(:title, Shapes::ShapeRef.new(shape: AttachmentTitle, required: true, location_name: "title"))
    ImageResponseCard.add_member(:subtitle, Shapes::ShapeRef.new(shape: AttachmentTitle, location_name: "subtitle"))
    ImageResponseCard.add_member(:image_url, Shapes::ShapeRef.new(shape: AttachmentUrl, location_name: "imageUrl"))
    ImageResponseCard.add_member(:buttons, Shapes::ShapeRef.new(shape: ButtonsList, location_name: "buttons"))
    ImageResponseCard.struct_class = Types::ImageResponseCard

    Intent.add_member(:name, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "name"))
    Intent.add_member(:slots, Shapes::ShapeRef.new(shape: Slots, location_name: "slots"))
    Intent.add_member(:state, Shapes::ShapeRef.new(shape: IntentState, location_name: "state"))
    Intent.add_member(:confirmation_state, Shapes::ShapeRef.new(shape: ConfirmationState, location_name: "confirmationState"))
    Intent.struct_class = Types::Intent

    IntentResultEvent.add_member(:input_mode, Shapes::ShapeRef.new(shape: InputMode, location_name: "inputMode"))
    IntentResultEvent.add_member(:interpretations, Shapes::ShapeRef.new(shape: Interpretations, location_name: "interpretations"))
    IntentResultEvent.add_member(:session_state, Shapes::ShapeRef.new(shape: SessionState, location_name: "sessionState"))
    IntentResultEvent.add_member(:request_attributes, Shapes::ShapeRef.new(shape: StringMap, location_name: "requestAttributes"))
    IntentResultEvent.add_member(:session_id, Shapes::ShapeRef.new(shape: SessionId, location_name: "sessionId"))
    IntentResultEvent.add_member(:event_id, Shapes::ShapeRef.new(shape: EventId, location_name: "eventId"))
    IntentResultEvent.add_member(:recognized_bot_member, Shapes::ShapeRef.new(shape: RecognizedBotMember, location_name: "recognizedBotMember"))
    IntentResultEvent.struct_class = Types::IntentResultEvent

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    Interpretation.add_member(:nlu_confidence, Shapes::ShapeRef.new(shape: ConfidenceScore, location_name: "nluConfidence"))
    Interpretation.add_member(:sentiment_response, Shapes::ShapeRef.new(shape: SentimentResponse, location_name: "sentimentResponse"))
    Interpretation.add_member(:intent, Shapes::ShapeRef.new(shape: Intent, location_name: "intent"))
    Interpretation.struct_class = Types::Interpretation

    Interpretations.member = Shapes::ShapeRef.new(shape: Interpretation)

    Message.add_member(:content, Shapes::ShapeRef.new(shape: Text, location_name: "content"))
    Message.add_member(:content_type, Shapes::ShapeRef.new(shape: MessageContentType, required: true, location_name: "contentType"))
    Message.add_member(:image_response_card, Shapes::ShapeRef.new(shape: ImageResponseCard, location_name: "imageResponseCard"))
    Message.struct_class = Types::Message

    Messages.member = Shapes::ShapeRef.new(shape: Message)

    PlaybackCompletionEvent.add_member(:event_id, Shapes::ShapeRef.new(shape: EventId, location_name: "eventId"))
    PlaybackCompletionEvent.add_member(:client_timestamp_millis, Shapes::ShapeRef.new(shape: EpochMillis, location_name: "clientTimestampMillis"))
    PlaybackCompletionEvent.struct_class = Types::PlaybackCompletionEvent

    PlaybackInterruptionEvent.add_member(:event_reason, Shapes::ShapeRef.new(shape: PlaybackInterruptionReason, location_name: "eventReason"))
    PlaybackInterruptionEvent.add_member(:caused_by_event_id, Shapes::ShapeRef.new(shape: EventId, location_name: "causedByEventId"))
    PlaybackInterruptionEvent.add_member(:event_id, Shapes::ShapeRef.new(shape: EventId, location_name: "eventId"))
    PlaybackInterruptionEvent.struct_class = Types::PlaybackInterruptionEvent

    PutSessionRequest.add_member(:bot_id, Shapes::ShapeRef.new(shape: BotIdentifier, required: true, location: "uri", location_name: "botId"))
    PutSessionRequest.add_member(:bot_alias_id, Shapes::ShapeRef.new(shape: BotAliasIdentifier, required: true, location: "uri", location_name: "botAliasId"))
    PutSessionRequest.add_member(:locale_id, Shapes::ShapeRef.new(shape: LocaleId, required: true, location: "uri", location_name: "localeId"))
    PutSessionRequest.add_member(:session_id, Shapes::ShapeRef.new(shape: SessionId, required: true, location: "uri", location_name: "sessionId"))
    PutSessionRequest.add_member(:messages, Shapes::ShapeRef.new(shape: Messages, location_name: "messages"))
    PutSessionRequest.add_member(:session_state, Shapes::ShapeRef.new(shape: SessionState, required: true, location_name: "sessionState"))
    PutSessionRequest.add_member(:request_attributes, Shapes::ShapeRef.new(shape: StringMap, location_name: "requestAttributes"))
    PutSessionRequest.add_member(:response_content_type, Shapes::ShapeRef.new(shape: NonEmptyString, location: "header", location_name: "ResponseContentType"))
    PutSessionRequest.struct_class = Types::PutSessionRequest

    PutSessionResponse.add_member(:content_type, Shapes::ShapeRef.new(shape: NonEmptyString, location: "header", location_name: "Content-Type"))
    PutSessionResponse.add_member(:messages, Shapes::ShapeRef.new(shape: NonEmptyString, location: "header", location_name: "x-amz-lex-messages"))
    PutSessionResponse.add_member(:session_state, Shapes::ShapeRef.new(shape: NonEmptyString, location: "header", location_name: "x-amz-lex-session-state"))
    PutSessionResponse.add_member(:request_attributes, Shapes::ShapeRef.new(shape: NonEmptyString, location: "header", location_name: "x-amz-lex-request-attributes"))
    PutSessionResponse.add_member(:session_id, Shapes::ShapeRef.new(shape: SessionId, location: "header", location_name: "x-amz-lex-session-id"))
    PutSessionResponse.add_member(:audio_stream, Shapes::ShapeRef.new(shape: BlobStream, location_name: "audioStream"))
    PutSessionResponse.struct_class = Types::PutSessionResponse
    PutSessionResponse[:payload] = :audio_stream
    PutSessionResponse[:payload_member] = PutSessionResponse.member(:audio_stream)

    RecognizeTextRequest.add_member(:bot_id, Shapes::ShapeRef.new(shape: BotIdentifier, required: true, location: "uri", location_name: "botId"))
    RecognizeTextRequest.add_member(:bot_alias_id, Shapes::ShapeRef.new(shape: BotAliasIdentifier, required: true, location: "uri", location_name: "botAliasId"))
    RecognizeTextRequest.add_member(:locale_id, Shapes::ShapeRef.new(shape: LocaleId, required: true, location: "uri", location_name: "localeId"))
    RecognizeTextRequest.add_member(:session_id, Shapes::ShapeRef.new(shape: SessionId, required: true, location: "uri", location_name: "sessionId"))
    RecognizeTextRequest.add_member(:text, Shapes::ShapeRef.new(shape: Text, required: true, location_name: "text"))
    RecognizeTextRequest.add_member(:session_state, Shapes::ShapeRef.new(shape: SessionState, location_name: "sessionState"))
    RecognizeTextRequest.add_member(:request_attributes, Shapes::ShapeRef.new(shape: StringMap, location_name: "requestAttributes"))
    RecognizeTextRequest.struct_class = Types::RecognizeTextRequest

    RecognizeTextResponse.add_member(:messages, Shapes::ShapeRef.new(shape: Messages, location_name: "messages"))
    RecognizeTextResponse.add_member(:session_state, Shapes::ShapeRef.new(shape: SessionState, location_name: "sessionState"))
    RecognizeTextResponse.add_member(:interpretations, Shapes::ShapeRef.new(shape: Interpretations, location_name: "interpretations"))
    RecognizeTextResponse.add_member(:request_attributes, Shapes::ShapeRef.new(shape: StringMap, location_name: "requestAttributes"))
    RecognizeTextResponse.add_member(:session_id, Shapes::ShapeRef.new(shape: SessionId, location_name: "sessionId"))
    RecognizeTextResponse.add_member(:recognized_bot_member, Shapes::ShapeRef.new(shape: RecognizedBotMember, location_name: "recognizedBotMember"))
    RecognizeTextResponse.struct_class = Types::RecognizeTextResponse

    RecognizeUtteranceRequest.add_member(:bot_id, Shapes::ShapeRef.new(shape: BotIdentifier, required: true, location: "uri", location_name: "botId"))
    RecognizeUtteranceRequest.add_member(:bot_alias_id, Shapes::ShapeRef.new(shape: BotAliasIdentifier, required: true, location: "uri", location_name: "botAliasId"))
    RecognizeUtteranceRequest.add_member(:locale_id, Shapes::ShapeRef.new(shape: LocaleId, required: true, location: "uri", location_name: "localeId"))
    RecognizeUtteranceRequest.add_member(:session_id, Shapes::ShapeRef.new(shape: SessionId, required: true, location: "uri", location_name: "sessionId"))
    RecognizeUtteranceRequest.add_member(:session_state, Shapes::ShapeRef.new(shape: SensitiveNonEmptyString, location: "header", location_name: "x-amz-lex-session-state"))
    RecognizeUtteranceRequest.add_member(:request_attributes, Shapes::ShapeRef.new(shape: SensitiveNonEmptyString, location: "header", location_name: "x-amz-lex-request-attributes"))
    RecognizeUtteranceRequest.add_member(:request_content_type, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location: "header", location_name: "Content-Type"))
    RecognizeUtteranceRequest.add_member(:response_content_type, Shapes::ShapeRef.new(shape: NonEmptyString, location: "header", location_name: "Response-Content-Type"))
    RecognizeUtteranceRequest.add_member(:input_stream, Shapes::ShapeRef.new(shape: BlobStream, location_name: "inputStream"))
    RecognizeUtteranceRequest.struct_class = Types::RecognizeUtteranceRequest
    RecognizeUtteranceRequest[:payload] = :input_stream
    RecognizeUtteranceRequest[:payload_member] = RecognizeUtteranceRequest.member(:input_stream)

    RecognizeUtteranceResponse.add_member(:input_mode, Shapes::ShapeRef.new(shape: NonEmptyString, location: "header", location_name: "x-amz-lex-input-mode"))
    RecognizeUtteranceResponse.add_member(:content_type, Shapes::ShapeRef.new(shape: NonEmptyString, location: "header", location_name: "Content-Type"))
    RecognizeUtteranceResponse.add_member(:messages, Shapes::ShapeRef.new(shape: NonEmptyString, location: "header", location_name: "x-amz-lex-messages"))
    RecognizeUtteranceResponse.add_member(:interpretations, Shapes::ShapeRef.new(shape: NonEmptyString, location: "header", location_name: "x-amz-lex-interpretations"))
    RecognizeUtteranceResponse.add_member(:session_state, Shapes::ShapeRef.new(shape: NonEmptyString, location: "header", location_name: "x-amz-lex-session-state"))
    RecognizeUtteranceResponse.add_member(:request_attributes, Shapes::ShapeRef.new(shape: NonEmptyString, location: "header", location_name: "x-amz-lex-request-attributes"))
    RecognizeUtteranceResponse.add_member(:session_id, Shapes::ShapeRef.new(shape: SessionId, location: "header", location_name: "x-amz-lex-session-id"))
    RecognizeUtteranceResponse.add_member(:input_transcript, Shapes::ShapeRef.new(shape: NonEmptyString, location: "header", location_name: "x-amz-lex-input-transcript"))
    RecognizeUtteranceResponse.add_member(:audio_stream, Shapes::ShapeRef.new(shape: BlobStream, location_name: "audioStream"))
    RecognizeUtteranceResponse.add_member(:recognized_bot_member, Shapes::ShapeRef.new(shape: NonEmptyString, location: "header", location_name: "x-amz-lex-recognized-bot-member"))
    RecognizeUtteranceResponse.struct_class = Types::RecognizeUtteranceResponse
    RecognizeUtteranceResponse[:payload] = :audio_stream
    RecognizeUtteranceResponse[:payload_member] = RecognizeUtteranceResponse.member(:audio_stream)

    RecognizedBotMember.add_member(:bot_id, Shapes::ShapeRef.new(shape: BotIdentifier, required: true, location_name: "botId"))
    RecognizedBotMember.add_member(:bot_name, Shapes::ShapeRef.new(shape: Name, location_name: "botName"))
    RecognizedBotMember.struct_class = Types::RecognizedBotMember

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    RuntimeHintDetails.add_member(:runtime_hint_values, Shapes::ShapeRef.new(shape: RuntimeHintValuesList, location_name: "runtimeHintValues"))
    RuntimeHintDetails.add_member(:sub_slot_hints, Shapes::ShapeRef.new(shape: SlotHintsSlotMap, location_name: "subSlotHints"))
    RuntimeHintDetails.struct_class = Types::RuntimeHintDetails

    RuntimeHintValue.add_member(:phrase, Shapes::ShapeRef.new(shape: RuntimeHintPhrase, required: true, location_name: "phrase"))
    RuntimeHintValue.struct_class = Types::RuntimeHintValue

    RuntimeHintValuesList.member = Shapes::ShapeRef.new(shape: RuntimeHintValue)

    RuntimeHints.add_member(:slot_hints, Shapes::ShapeRef.new(shape: SlotHintsIntentMap, location_name: "slotHints"))
    RuntimeHints.struct_class = Types::RuntimeHints

    SentimentResponse.add_member(:sentiment, Shapes::ShapeRef.new(shape: SentimentType, location_name: "sentiment"))
    SentimentResponse.add_member(:sentiment_score, Shapes::ShapeRef.new(shape: SentimentScore, location_name: "sentimentScore"))
    SentimentResponse.struct_class = Types::SentimentResponse

    SentimentScore.add_member(:positive, Shapes::ShapeRef.new(shape: Double, location_name: "positive"))
    SentimentScore.add_member(:negative, Shapes::ShapeRef.new(shape: Double, location_name: "negative"))
    SentimentScore.add_member(:neutral, Shapes::ShapeRef.new(shape: Double, location_name: "neutral"))
    SentimentScore.add_member(:mixed, Shapes::ShapeRef.new(shape: Double, location_name: "mixed"))
    SentimentScore.struct_class = Types::SentimentScore

    SessionState.add_member(:dialog_action, Shapes::ShapeRef.new(shape: DialogAction, location_name: "dialogAction"))
    SessionState.add_member(:intent, Shapes::ShapeRef.new(shape: Intent, location_name: "intent"))
    SessionState.add_member(:active_contexts, Shapes::ShapeRef.new(shape: ActiveContextsList, location_name: "activeContexts"))
    SessionState.add_member(:session_attributes, Shapes::ShapeRef.new(shape: StringMap, location_name: "sessionAttributes"))
    SessionState.add_member(:originating_request_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "originatingRequestId"))
    SessionState.add_member(:runtime_hints, Shapes::ShapeRef.new(shape: RuntimeHints, location_name: "runtimeHints"))
    SessionState.struct_class = Types::SessionState

    Slot.add_member(:value, Shapes::ShapeRef.new(shape: Value, location_name: "value"))
    Slot.add_member(:shape, Shapes::ShapeRef.new(shape: Shape, location_name: "shape"))
    Slot.add_member(:values, Shapes::ShapeRef.new(shape: Values, location_name: "values"))
    Slot.add_member(:sub_slots, Shapes::ShapeRef.new(shape: Slots, location_name: "subSlots"))
    Slot.struct_class = Types::Slot

    SlotHintsIntentMap.key = Shapes::ShapeRef.new(shape: Name)
    SlotHintsIntentMap.value = Shapes::ShapeRef.new(shape: SlotHintsSlotMap)

    SlotHintsSlotMap.key = Shapes::ShapeRef.new(shape: Name)
    SlotHintsSlotMap.value = Shapes::ShapeRef.new(shape: RuntimeHintDetails)

    Slots.key = Shapes::ShapeRef.new(shape: NonEmptyString)
    Slots.value = Shapes::ShapeRef.new(shape: Slot)

    StartConversationRequest.add_member(:bot_id, Shapes::ShapeRef.new(shape: BotIdentifier, required: true, location: "uri", location_name: "botId"))
    StartConversationRequest.add_member(:bot_alias_id, Shapes::ShapeRef.new(shape: BotAliasIdentifier, required: true, location: "uri", location_name: "botAliasId"))
    StartConversationRequest.add_member(:locale_id, Shapes::ShapeRef.new(shape: LocaleId, required: true, location: "uri", location_name: "localeId"))
    StartConversationRequest.add_member(:session_id, Shapes::ShapeRef.new(shape: SessionId, required: true, location: "uri", location_name: "sessionId"))
    StartConversationRequest.add_member(:conversation_mode, Shapes::ShapeRef.new(shape: ConversationMode, location: "header", location_name: "x-amz-lex-conversation-mode"))
    StartConversationRequest.add_member(:request_event_stream, Shapes::ShapeRef.new(shape: StartConversationRequestEventStream, required: true, eventstream: true, location_name: "requestEventStream"))
    StartConversationRequest.struct_class = Types::StartConversationRequest
    StartConversationRequest[:payload] = :request_event_stream
    StartConversationRequest[:payload_member] = StartConversationRequest.member(:request_event_stream)

    StartConversationRequestEventStream.add_member(:configuration_event, Shapes::ShapeRef.new(shape: ConfigurationEvent, event: true, location_name: "ConfigurationEvent"))
    StartConversationRequestEventStream.add_member(:audio_input_event, Shapes::ShapeRef.new(shape: AudioInputEvent, event: true, location_name: "AudioInputEvent"))
    StartConversationRequestEventStream.add_member(:dtmf_input_event, Shapes::ShapeRef.new(shape: DTMFInputEvent, event: true, location_name: "DTMFInputEvent"))
    StartConversationRequestEventStream.add_member(:text_input_event, Shapes::ShapeRef.new(shape: TextInputEvent, event: true, location_name: "TextInputEvent"))
    StartConversationRequestEventStream.add_member(:playback_completion_event, Shapes::ShapeRef.new(shape: PlaybackCompletionEvent, event: true, location_name: "PlaybackCompletionEvent"))
    StartConversationRequestEventStream.add_member(:disconnection_event, Shapes::ShapeRef.new(shape: DisconnectionEvent, event: true, location_name: "DisconnectionEvent"))
    StartConversationRequestEventStream.struct_class = Types::StartConversationRequestEventStream

    StartConversationResponse.add_member(:response_event_stream, Shapes::ShapeRef.new(shape: StartConversationResponseEventStream, eventstream: true, location_name: "responseEventStream"))
    StartConversationResponse.struct_class = Types::StartConversationResponse
    StartConversationResponse[:payload] = :response_event_stream
    StartConversationResponse[:payload_member] = StartConversationResponse.member(:response_event_stream)

    StartConversationResponseEventStream.add_member(:playback_interruption_event, Shapes::ShapeRef.new(shape: PlaybackInterruptionEvent, event: true, location_name: "PlaybackInterruptionEvent"))
    StartConversationResponseEventStream.add_member(:transcript_event, Shapes::ShapeRef.new(shape: TranscriptEvent, event: true, location_name: "TranscriptEvent"))
    StartConversationResponseEventStream.add_member(:intent_result_event, Shapes::ShapeRef.new(shape: IntentResultEvent, event: true, location_name: "IntentResultEvent"))
    StartConversationResponseEventStream.add_member(:text_response_event, Shapes::ShapeRef.new(shape: TextResponseEvent, event: true, location_name: "TextResponseEvent"))
    StartConversationResponseEventStream.add_member(:audio_response_event, Shapes::ShapeRef.new(shape: AudioResponseEvent, event: true, location_name: "AudioResponseEvent"))
    StartConversationResponseEventStream.add_member(:heartbeat_event, Shapes::ShapeRef.new(shape: HeartbeatEvent, event: true, location_name: "HeartbeatEvent"))
    StartConversationResponseEventStream.add_member(:access_denied_exception, Shapes::ShapeRef.new(shape: AccessDeniedException, event: true, location_name: "AccessDeniedException"))
    StartConversationResponseEventStream.add_member(:resource_not_found_exception, Shapes::ShapeRef.new(shape: ResourceNotFoundException, event: true, location_name: "ResourceNotFoundException"))
    StartConversationResponseEventStream.add_member(:validation_exception, Shapes::ShapeRef.new(shape: ValidationException, event: true, location_name: "ValidationException"))
    StartConversationResponseEventStream.add_member(:throttling_exception, Shapes::ShapeRef.new(shape: ThrottlingException, event: true, location_name: "ThrottlingException"))
    StartConversationResponseEventStream.add_member(:internal_server_exception, Shapes::ShapeRef.new(shape: InternalServerException, event: true, location_name: "InternalServerException"))
    StartConversationResponseEventStream.add_member(:conflict_exception, Shapes::ShapeRef.new(shape: ConflictException, event: true, location_name: "ConflictException"))
    StartConversationResponseEventStream.add_member(:dependency_failed_exception, Shapes::ShapeRef.new(shape: DependencyFailedException, event: true, location_name: "DependencyFailedException"))
    StartConversationResponseEventStream.add_member(:bad_gateway_exception, Shapes::ShapeRef.new(shape: BadGatewayException, event: true, location_name: "BadGatewayException"))
    StartConversationResponseEventStream.struct_class = Types::StartConversationResponseEventStream

    StringList.member = Shapes::ShapeRef.new(shape: NonEmptyString)

    StringMap.key = Shapes::ShapeRef.new(shape: NonEmptyString)
    StringMap.value = Shapes::ShapeRef.new(shape: String)

    TextInputEvent.add_member(:text, Shapes::ShapeRef.new(shape: Text, required: true, location_name: "text"))
    TextInputEvent.add_member(:event_id, Shapes::ShapeRef.new(shape: EventId, location_name: "eventId"))
    TextInputEvent.add_member(:client_timestamp_millis, Shapes::ShapeRef.new(shape: EpochMillis, location_name: "clientTimestampMillis"))
    TextInputEvent.struct_class = Types::TextInputEvent

    TextResponseEvent.add_member(:messages, Shapes::ShapeRef.new(shape: Messages, location_name: "messages"))
    TextResponseEvent.add_member(:event_id, Shapes::ShapeRef.new(shape: EventId, location_name: "eventId"))
    TextResponseEvent.struct_class = Types::TextResponseEvent

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    TranscriptEvent.add_member(:transcript, Shapes::ShapeRef.new(shape: String, location_name: "transcript"))
    TranscriptEvent.add_member(:event_id, Shapes::ShapeRef.new(shape: EventId, location_name: "eventId"))
    TranscriptEvent.struct_class = Types::TranscriptEvent

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationException.struct_class = Types::ValidationException

    Value.add_member(:original_value, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "originalValue"))
    Value.add_member(:interpreted_value, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "interpretedValue"))
    Value.add_member(:resolved_values, Shapes::ShapeRef.new(shape: StringList, location_name: "resolvedValues"))
    Value.struct_class = Types::Value

    Values.member = Shapes::ShapeRef.new(shape: Slot)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2020-08-07"

      api.metadata = {
        "apiVersion" => "2020-08-07",
        "endpointPrefix" => "runtime-v2-lex",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "protocolSettings" => {"h2"=>"eventstream"},
        "serviceAbbreviation" => "Lex Runtime V2",
        "serviceFullName" => "Amazon Lex Runtime V2",
        "serviceId" => "Lex Runtime V2",
        "signatureVersion" => "v4",
        "signingName" => "lex",
        "uid" => "runtime.lex.v2-2020-08-07",
      }

      api.add_operation(:delete_session, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteSession"
        o.http_method = "DELETE"
        o.http_request_uri = "/bots/{botId}/botAliases/{botAliasId}/botLocales/{localeId}/sessions/{sessionId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteSessionRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteSessionResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:get_session, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSession"
        o.http_method = "GET"
        o.http_request_uri = "/bots/{botId}/botAliases/{botAliasId}/botLocales/{localeId}/sessions/{sessionId}"
        o.input = Shapes::ShapeRef.new(shape: GetSessionRequest)
        o.output = Shapes::ShapeRef.new(shape: GetSessionResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:put_session, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutSession"
        o.http_method = "POST"
        o.http_request_uri = "/bots/{botId}/botAliases/{botAliasId}/botLocales/{localeId}/sessions/{sessionId}"
        o.input = Shapes::ShapeRef.new(shape: PutSessionRequest)
        o.output = Shapes::ShapeRef.new(shape: PutSessionResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: DependencyFailedException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
      end)

      api.add_operation(:recognize_text, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RecognizeText"
        o.http_method = "POST"
        o.http_request_uri = "/bots/{botId}/botAliases/{botAliasId}/botLocales/{localeId}/sessions/{sessionId}/text"
        o.input = Shapes::ShapeRef.new(shape: RecognizeTextRequest)
        o.output = Shapes::ShapeRef.new(shape: RecognizeTextResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: DependencyFailedException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
      end)

      api.add_operation(:recognize_utterance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RecognizeUtterance"
        o.http_method = "POST"
        o.http_request_uri = "/bots/{botId}/botAliases/{botAliasId}/botLocales/{localeId}/sessions/{sessionId}/utterance"
        o['authtype'] = "v4-unsigned-body"
        o.input = Shapes::ShapeRef.new(shape: RecognizeUtteranceRequest)
        o.output = Shapes::ShapeRef.new(shape: RecognizeUtteranceResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: DependencyFailedException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
      end)

      api.add_operation(:start_conversation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartConversation"
        o.http_method = "POST"
        o.http_request_uri = "/bots/{botId}/botAliases/{botAliasId}/botLocales/{localeId}/sessions/{sessionId}/conversation"
        o.input = Shapes::ShapeRef.new(shape: StartConversationRequest)
        o.output = Shapes::ShapeRef.new(shape: StartConversationResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.async = true
      end)
    end

  end
end
