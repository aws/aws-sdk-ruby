# frozen_string_literal: true

# This is generated code!

module Aws::LexRuntimeV2
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexruntimev2#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    ActiveContext = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexruntimev2#ActiveContext", name: "ActiveContext")
    ActiveContextName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexruntimev2#ActiveContextName", name: "ActiveContextName", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^([A-Za-z0-9]_?)+$"})
    ActiveContextParametersMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.lexruntimev2#ActiveContextParametersMap", name: "ActiveContextParametersMap", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    ActiveContextTimeToLive = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexruntimev2#ActiveContextTimeToLive", name: "ActiveContextTimeToLive")
    ActiveContextTimeToLiveInSeconds = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.lexruntimev2#ActiveContextTimeToLiveInSeconds", name: "ActiveContextTimeToLiveInSeconds", traits: {"smithy.api#range" => {"min" => 5, "max" => 86400}})
    ActiveContextTurnsToLive = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.lexruntimev2#ActiveContextTurnsToLive", name: "ActiveContextTurnsToLive", traits: {"smithy.api#range" => {"min" => 1, "max" => 20}})
    ActiveContextsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexruntimev2#ActiveContextsList", name: "ActiveContextsList", traits: {"smithy.api#length" => {"min" => 0, "max" => 20}})
    AttachmentTitle = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexruntimev2#AttachmentTitle", name: "AttachmentTitle", traits: {"smithy.api#length" => {"min" => 1, "max" => 250}})
    AttachmentUrl = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexruntimev2#AttachmentUrl", name: "AttachmentUrl", traits: {"smithy.api#length" => {"min" => 1, "max" => 250}})
    AudioChunk = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.lexruntimev2#AudioChunk", name: "AudioChunk")
    AudioInputEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexruntimev2#AudioInputEvent", name: "AudioInputEvent")
    AudioResponseEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexruntimev2#AudioResponseEvent", name: "AudioResponseEvent")
    BadGatewayException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexruntimev2#BadGatewayException", name: "BadGatewayException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 502})
    BlobStream = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.lexruntimev2#BlobStream", name: "BlobStream", traits: {"smithy.api#streaming" => {}})
    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.lexruntimev2#Boolean", name: "Boolean", traits: {"smithy.api#default" => false})
    BotAliasIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexruntimev2#BotAliasIdentifier", name: "BotAliasIdentifier")
    BotIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexruntimev2#BotIdentifier", name: "BotIdentifier", traits: {"smithy.api#length" => {"min" => 10, "max" => 10}, "smithy.api#pattern" => "^[0-9a-zA-Z]+$"})
    Button = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexruntimev2#Button", name: "Button")
    ButtonText = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexruntimev2#ButtonText", name: "ButtonText", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    ButtonValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexruntimev2#ButtonValue", name: "ButtonValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    ButtonsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexruntimev2#ButtonsList", name: "ButtonsList", traits: {"smithy.api#length" => {"min" => 0, "max" => 5}})
    ConfidenceScore = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexruntimev2#ConfidenceScore", name: "ConfidenceScore")
    ConfigurationEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexruntimev2#ConfigurationEvent", name: "ConfigurationEvent")
    ConfirmationState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lexruntimev2#ConfirmationState", name: "ConfirmationState")
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexruntimev2#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ConversationMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lexruntimev2#ConversationMode", name: "ConversationMode")
    DTMFInputEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexruntimev2#DTMFInputEvent", name: "DTMFInputEvent")
    DTMFRegex = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexruntimev2#DTMFRegex", name: "DTMFRegex", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}, "smithy.api#pattern" => "^[A-D0-9#*]{1}$", "smithy.api#sensitive" => {}})
    DeleteSessionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexruntimev2#DeleteSessionRequest", name: "DeleteSessionRequest")
    DeleteSessionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexruntimev2#DeleteSessionResponse", name: "DeleteSessionResponse")
    DependencyFailedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexruntimev2#DependencyFailedException", name: "DependencyFailedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 424})
    DialogAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexruntimev2#DialogAction", name: "DialogAction")
    DialogActionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lexruntimev2#DialogActionType", name: "DialogActionType")
    DisconnectionEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexruntimev2#DisconnectionEvent", name: "DisconnectionEvent")
    Double = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.lexruntimev2#Double", name: "Double", traits: {"smithy.api#default" => 0})
    ElicitSubSlot = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexruntimev2#ElicitSubSlot", name: "ElicitSubSlot")
    EpochMillis = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.lexruntimev2#EpochMillis", name: "EpochMillis", traits: {"smithy.api#default" => 0})
    EventId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexruntimev2#EventId", name: "EventId", traits: {"smithy.api#length" => {"min" => 2, "max" => 100}, "smithy.api#pattern" => "^[0-9a-zA-Z._:-]+$"})
    GetSessionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexruntimev2#GetSessionRequest", name: "GetSessionRequest")
    GetSessionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexruntimev2#GetSessionResponse", name: "GetSessionResponse")
    HeartbeatEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexruntimev2#HeartbeatEvent", name: "HeartbeatEvent")
    ImageResponseCard = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexruntimev2#ImageResponseCard", name: "ImageResponseCard")
    InputMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lexruntimev2#InputMode", name: "InputMode")
    Intent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexruntimev2#Intent", name: "Intent")
    IntentResultEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexruntimev2#IntentResultEvent", name: "IntentResultEvent")
    IntentState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lexruntimev2#IntentState", name: "IntentState")
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexruntimev2#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    Interpretation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexruntimev2#Interpretation", name: "Interpretation")
    InterpretationSource = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lexruntimev2#InterpretationSource", name: "InterpretationSource")
    Interpretations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexruntimev2#Interpretations", name: "Interpretations", traits: {"smithy.api#length" => {"min" => 0, "max" => 5}})
    LocaleId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexruntimev2#LocaleId", name: "LocaleId", traits: {"smithy.api#length" => {"min" => 1}})
    Message = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexruntimev2#Message", name: "Message")
    MessageContentType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lexruntimev2#MessageContentType", name: "MessageContentType")
    Messages = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexruntimev2#Messages", name: "Messages", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    Name = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexruntimev2#Name", name: "Name", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^([0-9a-zA-Z][_-]?)+$"})
    NonEmptyString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexruntimev2#NonEmptyString", name: "NonEmptyString", traits: {"smithy.api#length" => {"min" => 1}})
    ParameterName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexruntimev2#ParameterName", name: "ParameterName", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    PlaybackCompletionEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexruntimev2#PlaybackCompletionEvent", name: "PlaybackCompletionEvent")
    PlaybackInterruptionEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexruntimev2#PlaybackInterruptionEvent", name: "PlaybackInterruptionEvent")
    PlaybackInterruptionReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lexruntimev2#PlaybackInterruptionReason", name: "PlaybackInterruptionReason")
    PutSessionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexruntimev2#PutSessionRequest", name: "PutSessionRequest")
    PutSessionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexruntimev2#PutSessionResponse", name: "PutSessionResponse")
    RecognizeTextRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexruntimev2#RecognizeTextRequest", name: "RecognizeTextRequest")
    RecognizeTextResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexruntimev2#RecognizeTextResponse", name: "RecognizeTextResponse")
    RecognizeUtteranceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexruntimev2#RecognizeUtteranceRequest", name: "RecognizeUtteranceRequest")
    RecognizeUtteranceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexruntimev2#RecognizeUtteranceResponse", name: "RecognizeUtteranceResponse")
    RecognizedBotMember = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexruntimev2#RecognizedBotMember", name: "RecognizedBotMember")
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexruntimev2#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    RuntimeHintDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexruntimev2#RuntimeHintDetails", name: "RuntimeHintDetails")
    RuntimeHintPhrase = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexruntimev2#RuntimeHintPhrase", name: "RuntimeHintPhrase", traits: {"smithy.api#length" => {"min" => 1, "max" => 140}})
    RuntimeHintValue = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexruntimev2#RuntimeHintValue", name: "RuntimeHintValue")
    RuntimeHintValuesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexruntimev2#RuntimeHintValuesList", name: "RuntimeHintValuesList", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    RuntimeHints = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexruntimev2#RuntimeHints", name: "RuntimeHints")
    SensitiveNonEmptyString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexruntimev2#SensitiveNonEmptyString", name: "SensitiveNonEmptyString", traits: {"smithy.api#sensitive" => {}})
    SentimentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexruntimev2#SentimentResponse", name: "SentimentResponse")
    SentimentScore = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexruntimev2#SentimentScore", name: "SentimentScore")
    SentimentType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lexruntimev2#SentimentType", name: "SentimentType")
    SessionId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexruntimev2#SessionId", name: "SessionId", traits: {"smithy.api#length" => {"min" => 2, "max" => 100}, "smithy.api#pattern" => "^[0-9a-zA-Z._:-]+$"})
    SessionState = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexruntimev2#SessionState", name: "SessionState")
    Shape = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lexruntimev2#Shape", name: "Shape")
    Slot = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexruntimev2#Slot", name: "Slot")
    SlotHintsIntentMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.lexruntimev2#SlotHintsIntentMap", name: "SlotHintsIntentMap")
    SlotHintsSlotMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.lexruntimev2#SlotHintsSlotMap", name: "SlotHintsSlotMap")
    Slots = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.lexruntimev2#Slots", name: "Slots")
    StartConversationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexruntimev2#StartConversationRequest", name: "StartConversationRequest")
    StartConversationRequestEventStream = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.lexruntimev2#StartConversationRequestEventStream", name: "StartConversationRequestEventStream", traits: {"smithy.api#streaming" => {}})
    StartConversationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexruntimev2#StartConversationResponse", name: "StartConversationResponse")
    StartConversationResponseEventStream = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.lexruntimev2#StartConversationResponseEventStream", name: "StartConversationResponseEventStream", traits: {"smithy.api#streaming" => {}})
    String = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexruntimev2#String", name: "String")
    StringList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexruntimev2#StringList", name: "StringList")
    StringMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.lexruntimev2#StringMap", name: "StringMap")
    StyleType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.lexruntimev2#StyleType", name: "StyleType")
    Text = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.lexruntimev2#Text", name: "Text", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#sensitive" => {}})
    TextInputEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexruntimev2#TextInputEvent", name: "TextInputEvent")
    TextResponseEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexruntimev2#TextResponseEvent", name: "TextResponseEvent")
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexruntimev2#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    TranscriptEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexruntimev2#TranscriptEvent", name: "TranscriptEvent")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexruntimev2#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Value = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.lexruntimev2#Value", name: "Value")
    Values = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.lexruntimev2#Values", name: "Values")

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "message", traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    ActiveContext.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ActiveContextName, location_name: "name", traits: {"smithy.api#required" => {}}))
    ActiveContext.add_member(:time_to_live, ::Smithy::Schema::Shapes::MemberShape.new(target: ActiveContextTimeToLive, location_name: "timeToLive", traits: {"smithy.api#required" => {}}))
    ActiveContext.add_member(:context_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: ActiveContextParametersMap, location_name: "contextAttributes", traits: {"smithy.api#required" => {}}))
    ActiveContext.type = Types::ActiveContext
    ActiveContextParametersMap.key = ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterName)
    ActiveContextParametersMap.value = ::Smithy::Schema::Shapes::MemberShape.new(target: Text)
    ActiveContextTimeToLive.add_member(:time_to_live_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ActiveContextTimeToLiveInSeconds, location_name: "timeToLiveInSeconds", traits: {"smithy.api#required" => {}}))
    ActiveContextTimeToLive.add_member(:turns_to_live, ::Smithy::Schema::Shapes::MemberShape.new(target: ActiveContextTurnsToLive, location_name: "turnsToLive", traits: {"smithy.api#required" => {}}))
    ActiveContextTimeToLive.type = Types::ActiveContextTimeToLive
    ActiveContextsList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ActiveContext)
    AudioInputEvent.add_member(:audio_chunk, ::Smithy::Schema::Shapes::MemberShape.new(target: AudioChunk, location_name: "audioChunk"))
    AudioInputEvent.add_member(:content_type, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "contentType", traits: {"smithy.api#required" => {}}))
    AudioInputEvent.add_member(:event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EventId, location_name: "eventId"))
    AudioInputEvent.add_member(:client_timestamp_millis, ::Smithy::Schema::Shapes::MemberShape.new(target: EpochMillis, location_name: "clientTimestampMillis", traits: {"smithy.api#default" => 0}))
    AudioInputEvent.type = Types::AudioInputEvent
    AudioResponseEvent.add_member(:audio_chunk, ::Smithy::Schema::Shapes::MemberShape.new(target: AudioChunk, location_name: "audioChunk"))
    AudioResponseEvent.add_member(:content_type, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "contentType"))
    AudioResponseEvent.add_member(:event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EventId, location_name: "eventId"))
    AudioResponseEvent.type = Types::AudioResponseEvent
    BadGatewayException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "message", traits: {"smithy.api#required" => {}}))
    BadGatewayException.type = Types::BadGatewayException
    Button.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: ButtonText, location_name: "text", traits: {"smithy.api#required" => {}}))
    Button.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ButtonValue, location_name: "value", traits: {"smithy.api#required" => {}}))
    Button.type = Types::Button
    ButtonsList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Button)
    ConfidenceScore.add_member(:score, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, location_name: "score", traits: {"smithy.api#default" => 0}))
    ConfidenceScore.type = Types::ConfidenceScore
    ConfigurationEvent.add_member(:request_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: StringMap, location_name: "requestAttributes"))
    ConfigurationEvent.add_member(:response_content_type, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "responseContentType", traits: {"smithy.api#required" => {}}))
    ConfigurationEvent.add_member(:session_state, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionState, location_name: "sessionState"))
    ConfigurationEvent.add_member(:welcome_messages, ::Smithy::Schema::Shapes::MemberShape.new(target: Messages, location_name: "welcomeMessages"))
    ConfigurationEvent.add_member(:disable_playback, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "disablePlayback", traits: {"smithy.api#default" => false}))
    ConfigurationEvent.add_member(:event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EventId, location_name: "eventId"))
    ConfigurationEvent.add_member(:client_timestamp_millis, ::Smithy::Schema::Shapes::MemberShape.new(target: EpochMillis, location_name: "clientTimestampMillis", traits: {"smithy.api#default" => 0}))
    ConfigurationEvent.type = Types::ConfigurationEvent
    ConfirmationState.add_member(:confirmed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CONFIRMED", traits: {"smithy.api#enumValue" => "Confirmed"}))
    ConfirmationState.add_member(:denied, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DENIED", traits: {"smithy.api#enumValue" => "Denied"}))
    ConfirmationState.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NONE", traits: {"smithy.api#enumValue" => "None"}))
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "message", traits: {"smithy.api#required" => {}}))
    ConflictException.type = Types::ConflictException
    ConversationMode.add_member(:audio, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AUDIO", traits: {"smithy.api#enumValue" => "AUDIO"}))
    ConversationMode.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TEXT", traits: {"smithy.api#enumValue" => "TEXT"}))
    DTMFInputEvent.add_member(:input_character, ::Smithy::Schema::Shapes::MemberShape.new(target: DTMFRegex, location_name: "inputCharacter", traits: {"smithy.api#required" => {}}))
    DTMFInputEvent.add_member(:event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EventId, location_name: "eventId"))
    DTMFInputEvent.add_member(:client_timestamp_millis, ::Smithy::Schema::Shapes::MemberShape.new(target: EpochMillis, location_name: "clientTimestampMillis", traits: {"smithy.api#default" => 0}))
    DTMFInputEvent.type = Types::DTMFInputEvent
    DeleteSessionRequest.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BotIdentifier, location_name: "botId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteSessionRequest.add_member(:bot_alias_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BotAliasIdentifier, location_name: "botAliasId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteSessionRequest.add_member(:locale_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LocaleId, location_name: "localeId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteSessionRequest.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionId, location_name: "sessionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteSessionRequest.type = Types::DeleteSessionRequest
    DeleteSessionResponse.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BotIdentifier, location_name: "botId"))
    DeleteSessionResponse.add_member(:bot_alias_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BotAliasIdentifier, location_name: "botAliasId"))
    DeleteSessionResponse.add_member(:locale_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LocaleId, location_name: "localeId"))
    DeleteSessionResponse.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionId, location_name: "sessionId"))
    DeleteSessionResponse.type = Types::DeleteSessionResponse
    DependencyFailedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "message", traits: {"smithy.api#required" => {}}))
    DependencyFailedException.type = Types::DependencyFailedException
    DialogAction.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: DialogActionType, location_name: "type", traits: {"smithy.api#required" => {}}))
    DialogAction.add_member(:slot_to_elicit, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "slotToElicit"))
    DialogAction.add_member(:slot_elicitation_style, ::Smithy::Schema::Shapes::MemberShape.new(target: StyleType, location_name: "slotElicitationStyle"))
    DialogAction.add_member(:sub_slot_to_elicit, ::Smithy::Schema::Shapes::MemberShape.new(target: ElicitSubSlot, location_name: "subSlotToElicit"))
    DialogAction.type = Types::DialogAction
    DialogActionType.add_member(:close, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CLOSE", traits: {"smithy.api#enumValue" => "Close"}))
    DialogActionType.add_member(:confirm_intent, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CONFIRM_INTENT", traits: {"smithy.api#enumValue" => "ConfirmIntent"}))
    DialogActionType.add_member(:delegate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELEGATE", traits: {"smithy.api#enumValue" => "Delegate"}))
    DialogActionType.add_member(:elicit_intent, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ELICIT_INTENT", traits: {"smithy.api#enumValue" => "ElicitIntent"}))
    DialogActionType.add_member(:elicit_slot, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ELICIT_SLOT", traits: {"smithy.api#enumValue" => "ElicitSlot"}))
    DialogActionType.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NONE", traits: {"smithy.api#enumValue" => "None"}))
    DisconnectionEvent.add_member(:event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EventId, location_name: "eventId"))
    DisconnectionEvent.add_member(:client_timestamp_millis, ::Smithy::Schema::Shapes::MemberShape.new(target: EpochMillis, location_name: "clientTimestampMillis", traits: {"smithy.api#default" => 0}))
    DisconnectionEvent.type = Types::DisconnectionEvent
    ElicitSubSlot.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "name", traits: {"smithy.api#required" => {}}))
    ElicitSubSlot.add_member(:sub_slot_to_elicit, ::Smithy::Schema::Shapes::MemberShape.new(target: ElicitSubSlot, location_name: "subSlotToElicit"))
    ElicitSubSlot.type = Types::ElicitSubSlot
    GetSessionRequest.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BotIdentifier, location_name: "botId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSessionRequest.add_member(:bot_alias_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BotAliasIdentifier, location_name: "botAliasId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSessionRequest.add_member(:locale_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LocaleId, location_name: "localeId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSessionRequest.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionId, location_name: "sessionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSessionRequest.type = Types::GetSessionRequest
    GetSessionResponse.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "sessionId"))
    GetSessionResponse.add_member(:messages, ::Smithy::Schema::Shapes::MemberShape.new(target: Messages, location_name: "messages"))
    GetSessionResponse.add_member(:interpretations, ::Smithy::Schema::Shapes::MemberShape.new(target: Interpretations, location_name: "interpretations"))
    GetSessionResponse.add_member(:session_state, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionState, location_name: "sessionState"))
    GetSessionResponse.type = Types::GetSessionResponse
    HeartbeatEvent.add_member(:event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EventId, location_name: "eventId"))
    HeartbeatEvent.type = Types::HeartbeatEvent
    ImageResponseCard.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachmentTitle, location_name: "title", traits: {"smithy.api#required" => {}}))
    ImageResponseCard.add_member(:subtitle, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachmentTitle, location_name: "subtitle"))
    ImageResponseCard.add_member(:image_url, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachmentUrl, location_name: "imageUrl"))
    ImageResponseCard.add_member(:buttons, ::Smithy::Schema::Shapes::MemberShape.new(target: ButtonsList, location_name: "buttons"))
    ImageResponseCard.type = Types::ImageResponseCard
    InputMode.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TEXT", traits: {"smithy.api#enumValue" => "Text"}))
    InputMode.add_member(:speech, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SPEECH", traits: {"smithy.api#enumValue" => "Speech"}))
    InputMode.add_member(:dtmf, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DTMF", traits: {"smithy.api#enumValue" => "DTMF"}))
    Intent.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "name", traits: {"smithy.api#required" => {}}))
    Intent.add_member(:slots, ::Smithy::Schema::Shapes::MemberShape.new(target: Slots, location_name: "slots"))
    Intent.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: IntentState, location_name: "state"))
    Intent.add_member(:confirmation_state, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfirmationState, location_name: "confirmationState"))
    Intent.type = Types::Intent
    IntentResultEvent.add_member(:input_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: InputMode, location_name: "inputMode"))
    IntentResultEvent.add_member(:interpretations, ::Smithy::Schema::Shapes::MemberShape.new(target: Interpretations, location_name: "interpretations"))
    IntentResultEvent.add_member(:session_state, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionState, location_name: "sessionState"))
    IntentResultEvent.add_member(:request_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: StringMap, location_name: "requestAttributes"))
    IntentResultEvent.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionId, location_name: "sessionId"))
    IntentResultEvent.add_member(:event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EventId, location_name: "eventId"))
    IntentResultEvent.add_member(:recognized_bot_member, ::Smithy::Schema::Shapes::MemberShape.new(target: RecognizedBotMember, location_name: "recognizedBotMember"))
    IntentResultEvent.type = Types::IntentResultEvent
    IntentState.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "Failed"}))
    IntentState.add_member(:fulfilled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FULFILLED", traits: {"smithy.api#enumValue" => "Fulfilled"}))
    IntentState.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "InProgress"}))
    IntentState.add_member(:ready_for_fulfillment, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "READY_FOR_FULFILLMENT", traits: {"smithy.api#enumValue" => "ReadyForFulfillment"}))
    IntentState.add_member(:waiting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "WAITING", traits: {"smithy.api#enumValue" => "Waiting"}))
    IntentState.add_member(:fulfillment_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FULFILLMENT_IN_PROGRESS", traits: {"smithy.api#enumValue" => "FulfillmentInProgress"}))
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "message", traits: {"smithy.api#required" => {}}))
    InternalServerException.type = Types::InternalServerException
    Interpretation.add_member(:nlu_confidence, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfidenceScore, location_name: "nluConfidence"))
    Interpretation.add_member(:sentiment_response, ::Smithy::Schema::Shapes::MemberShape.new(target: SentimentResponse, location_name: "sentimentResponse"))
    Interpretation.add_member(:intent, ::Smithy::Schema::Shapes::MemberShape.new(target: Intent, location_name: "intent"))
    Interpretation.add_member(:interpretation_source, ::Smithy::Schema::Shapes::MemberShape.new(target: InterpretationSource, location_name: "interpretationSource"))
    Interpretation.type = Types::Interpretation
    InterpretationSource.add_member(:bedrock, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BEDROCK", traits: {"smithy.api#enumValue" => "Bedrock"}))
    InterpretationSource.add_member(:lex, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LEX", traits: {"smithy.api#enumValue" => "Lex"}))
    Interpretations.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Interpretation)
    Message.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: Text, location_name: "content"))
    Message.add_member(:content_type, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageContentType, location_name: "contentType", traits: {"smithy.api#required" => {}}))
    Message.add_member(:image_response_card, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageResponseCard, location_name: "imageResponseCard"))
    Message.type = Types::Message
    MessageContentType.add_member(:custom_payload, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CUSTOM_PAYLOAD", traits: {"smithy.api#enumValue" => "CustomPayload"}))
    MessageContentType.add_member(:image_response_card, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IMAGE_RESPONSE_CARD", traits: {"smithy.api#enumValue" => "ImageResponseCard"}))
    MessageContentType.add_member(:plain_text, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PLAIN_TEXT", traits: {"smithy.api#enumValue" => "PlainText"}))
    MessageContentType.add_member(:ssml, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SSML", traits: {"smithy.api#enumValue" => "SSML"}))
    Messages.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Message)
    PlaybackCompletionEvent.add_member(:event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EventId, location_name: "eventId"))
    PlaybackCompletionEvent.add_member(:client_timestamp_millis, ::Smithy::Schema::Shapes::MemberShape.new(target: EpochMillis, location_name: "clientTimestampMillis", traits: {"smithy.api#default" => 0}))
    PlaybackCompletionEvent.type = Types::PlaybackCompletionEvent
    PlaybackInterruptionEvent.add_member(:event_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: PlaybackInterruptionReason, location_name: "eventReason"))
    PlaybackInterruptionEvent.add_member(:caused_by_event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EventId, location_name: "causedByEventId"))
    PlaybackInterruptionEvent.add_member(:event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EventId, location_name: "eventId"))
    PlaybackInterruptionEvent.type = Types::PlaybackInterruptionEvent
    PlaybackInterruptionReason.add_member(:dtmf_start_detected, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DTMF_START_DETECTED", traits: {"smithy.api#enumValue" => "DTMF_START_DETECTED"}))
    PlaybackInterruptionReason.add_member(:text_detected, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TEXT_DETECTED", traits: {"smithy.api#enumValue" => "TEXT_DETECTED"}))
    PlaybackInterruptionReason.add_member(:voice_start_detected, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VOICE_START_DETECTED", traits: {"smithy.api#enumValue" => "VOICE_START_DETECTED"}))
    PutSessionRequest.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BotIdentifier, location_name: "botId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutSessionRequest.add_member(:bot_alias_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BotAliasIdentifier, location_name: "botAliasId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutSessionRequest.add_member(:locale_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LocaleId, location_name: "localeId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutSessionRequest.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionId, location_name: "sessionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutSessionRequest.add_member(:messages, ::Smithy::Schema::Shapes::MemberShape.new(target: Messages, location_name: "messages"))
    PutSessionRequest.add_member(:session_state, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionState, location_name: "sessionState", traits: {"smithy.api#required" => {}}))
    PutSessionRequest.add_member(:request_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: StringMap, location_name: "requestAttributes"))
    PutSessionRequest.add_member(:response_content_type, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "responseContentType", traits: {"smithy.api#httpHeader" => "ResponseContentType"}))
    PutSessionRequest.type = Types::PutSessionRequest
    PutSessionResponse.add_member(:content_type, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "contentType", traits: {"smithy.api#httpHeader" => "Content-Type"}))
    PutSessionResponse.add_member(:messages, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "messages", traits: {"smithy.api#httpHeader" => "x-amz-lex-messages"}))
    PutSessionResponse.add_member(:session_state, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "sessionState", traits: {"smithy.api#httpHeader" => "x-amz-lex-session-state"}))
    PutSessionResponse.add_member(:request_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "requestAttributes", traits: {"smithy.api#httpHeader" => "x-amz-lex-request-attributes"}))
    PutSessionResponse.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionId, location_name: "sessionId", traits: {"smithy.api#httpHeader" => "x-amz-lex-session-id"}))
    PutSessionResponse.add_member(:audio_stream, ::Smithy::Schema::Shapes::MemberShape.new(target: BlobStream, location_name: "audioStream", traits: {"smithy.api#default" => "", "smithy.api#httpPayload" => {}}))
    PutSessionResponse[:http_payload] = :audio_stream
    PutSessionResponse[:http_payload_member] = PutSessionResponse.member(:audio_stream)
    PutSessionResponse.type = Types::PutSessionResponse
    RecognizeTextRequest.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BotIdentifier, location_name: "botId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RecognizeTextRequest.add_member(:bot_alias_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BotAliasIdentifier, location_name: "botAliasId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RecognizeTextRequest.add_member(:locale_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LocaleId, location_name: "localeId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RecognizeTextRequest.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionId, location_name: "sessionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RecognizeTextRequest.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: Text, location_name: "text", traits: {"smithy.api#required" => {}}))
    RecognizeTextRequest.add_member(:session_state, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionState, location_name: "sessionState"))
    RecognizeTextRequest.add_member(:request_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: StringMap, location_name: "requestAttributes"))
    RecognizeTextRequest.type = Types::RecognizeTextRequest
    RecognizeTextResponse.add_member(:messages, ::Smithy::Schema::Shapes::MemberShape.new(target: Messages, location_name: "messages"))
    RecognizeTextResponse.add_member(:session_state, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionState, location_name: "sessionState"))
    RecognizeTextResponse.add_member(:interpretations, ::Smithy::Schema::Shapes::MemberShape.new(target: Interpretations, location_name: "interpretations"))
    RecognizeTextResponse.add_member(:request_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: StringMap, location_name: "requestAttributes"))
    RecognizeTextResponse.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionId, location_name: "sessionId"))
    RecognizeTextResponse.add_member(:recognized_bot_member, ::Smithy::Schema::Shapes::MemberShape.new(target: RecognizedBotMember, location_name: "recognizedBotMember"))
    RecognizeTextResponse.type = Types::RecognizeTextResponse
    RecognizeUtteranceRequest.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BotIdentifier, location_name: "botId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RecognizeUtteranceRequest.add_member(:bot_alias_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BotAliasIdentifier, location_name: "botAliasId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RecognizeUtteranceRequest.add_member(:locale_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LocaleId, location_name: "localeId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RecognizeUtteranceRequest.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionId, location_name: "sessionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RecognizeUtteranceRequest.add_member(:session_state, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveNonEmptyString, location_name: "sessionState", traits: {"smithy.api#httpHeader" => "x-amz-lex-session-state"}))
    RecognizeUtteranceRequest.add_member(:request_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveNonEmptyString, location_name: "requestAttributes", traits: {"smithy.api#httpHeader" => "x-amz-lex-request-attributes"}))
    RecognizeUtteranceRequest.add_member(:request_content_type, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "requestContentType", traits: {"smithy.api#httpHeader" => "Content-Type", "smithy.api#required" => {}}))
    RecognizeUtteranceRequest.add_member(:response_content_type, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "responseContentType", traits: {"smithy.api#httpHeader" => "Response-Content-Type"}))
    RecognizeUtteranceRequest.add_member(:input_stream, ::Smithy::Schema::Shapes::MemberShape.new(target: BlobStream, location_name: "inputStream", traits: {"smithy.api#default" => "", "smithy.api#httpPayload" => {}}))
    RecognizeUtteranceRequest[:http_payload] = :input_stream
    RecognizeUtteranceRequest[:http_payload_member] = RecognizeUtteranceRequest.member(:input_stream)
    RecognizeUtteranceRequest.type = Types::RecognizeUtteranceRequest
    RecognizeUtteranceResponse.add_member(:input_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "inputMode", traits: {"smithy.api#httpHeader" => "x-amz-lex-input-mode"}))
    RecognizeUtteranceResponse.add_member(:content_type, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "contentType", traits: {"smithy.api#httpHeader" => "Content-Type"}))
    RecognizeUtteranceResponse.add_member(:messages, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "messages", traits: {"smithy.api#httpHeader" => "x-amz-lex-messages"}))
    RecognizeUtteranceResponse.add_member(:interpretations, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "interpretations", traits: {"smithy.api#httpHeader" => "x-amz-lex-interpretations"}))
    RecognizeUtteranceResponse.add_member(:session_state, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "sessionState", traits: {"smithy.api#httpHeader" => "x-amz-lex-session-state"}))
    RecognizeUtteranceResponse.add_member(:request_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "requestAttributes", traits: {"smithy.api#httpHeader" => "x-amz-lex-request-attributes"}))
    RecognizeUtteranceResponse.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionId, location_name: "sessionId", traits: {"smithy.api#httpHeader" => "x-amz-lex-session-id"}))
    RecognizeUtteranceResponse.add_member(:input_transcript, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "inputTranscript", traits: {"smithy.api#httpHeader" => "x-amz-lex-input-transcript"}))
    RecognizeUtteranceResponse.add_member(:audio_stream, ::Smithy::Schema::Shapes::MemberShape.new(target: BlobStream, location_name: "audioStream", traits: {"smithy.api#default" => "", "smithy.api#httpPayload" => {}}))
    RecognizeUtteranceResponse.add_member(:recognized_bot_member, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "recognizedBotMember", traits: {"smithy.api#httpHeader" => "x-amz-lex-recognized-bot-member"}))
    RecognizeUtteranceResponse[:http_payload] = :audio_stream
    RecognizeUtteranceResponse[:http_payload_member] = RecognizeUtteranceResponse.member(:audio_stream)
    RecognizeUtteranceResponse.type = Types::RecognizeUtteranceResponse
    RecognizedBotMember.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BotIdentifier, location_name: "botId", traits: {"smithy.api#required" => {}}))
    RecognizedBotMember.add_member(:bot_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, location_name: "botName"))
    RecognizedBotMember.type = Types::RecognizedBotMember
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "message", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    RuntimeHintDetails.add_member(:runtime_hint_values, ::Smithy::Schema::Shapes::MemberShape.new(target: RuntimeHintValuesList, location_name: "runtimeHintValues"))
    RuntimeHintDetails.add_member(:sub_slot_hints, ::Smithy::Schema::Shapes::MemberShape.new(target: SlotHintsSlotMap, location_name: "subSlotHints"))
    RuntimeHintDetails.type = Types::RuntimeHintDetails
    RuntimeHintValue.add_member(:phrase, ::Smithy::Schema::Shapes::MemberShape.new(target: RuntimeHintPhrase, location_name: "phrase", traits: {"smithy.api#required" => {}}))
    RuntimeHintValue.type = Types::RuntimeHintValue
    RuntimeHintValuesList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RuntimeHintValue)
    RuntimeHints.add_member(:slot_hints, ::Smithy::Schema::Shapes::MemberShape.new(target: SlotHintsIntentMap, location_name: "slotHints"))
    RuntimeHints.type = Types::RuntimeHints
    SentimentResponse.add_member(:sentiment, ::Smithy::Schema::Shapes::MemberShape.new(target: SentimentType, location_name: "sentiment"))
    SentimentResponse.add_member(:sentiment_score, ::Smithy::Schema::Shapes::MemberShape.new(target: SentimentScore, location_name: "sentimentScore"))
    SentimentResponse.type = Types::SentimentResponse
    SentimentScore.add_member(:positive, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, location_name: "positive", traits: {"smithy.api#default" => 0}))
    SentimentScore.add_member(:negative, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, location_name: "negative", traits: {"smithy.api#default" => 0}))
    SentimentScore.add_member(:neutral, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, location_name: "neutral", traits: {"smithy.api#default" => 0}))
    SentimentScore.add_member(:mixed, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, location_name: "mixed", traits: {"smithy.api#default" => 0}))
    SentimentScore.type = Types::SentimentScore
    SentimentType.add_member(:mixed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MIXED", traits: {"smithy.api#enumValue" => "MIXED"}))
    SentimentType.add_member(:negative, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NEGATIVE", traits: {"smithy.api#enumValue" => "NEGATIVE"}))
    SentimentType.add_member(:neutral, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NEUTRAL", traits: {"smithy.api#enumValue" => "NEUTRAL"}))
    SentimentType.add_member(:positive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "POSITIVE", traits: {"smithy.api#enumValue" => "POSITIVE"}))
    SessionState.add_member(:dialog_action, ::Smithy::Schema::Shapes::MemberShape.new(target: DialogAction, location_name: "dialogAction"))
    SessionState.add_member(:intent, ::Smithy::Schema::Shapes::MemberShape.new(target: Intent, location_name: "intent"))
    SessionState.add_member(:active_contexts, ::Smithy::Schema::Shapes::MemberShape.new(target: ActiveContextsList, location_name: "activeContexts"))
    SessionState.add_member(:session_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: StringMap, location_name: "sessionAttributes"))
    SessionState.add_member(:originating_request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "originatingRequestId"))
    SessionState.add_member(:runtime_hints, ::Smithy::Schema::Shapes::MemberShape.new(target: RuntimeHints, location_name: "runtimeHints"))
    SessionState.type = Types::SessionState
    Shape.add_member(:scalar, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SCALAR", traits: {"smithy.api#enumValue" => "Scalar"}))
    Shape.add_member(:list, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LIST", traits: {"smithy.api#enumValue" => "List"}))
    Shape.add_member(:composite, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "COMPOSITE", traits: {"smithy.api#enumValue" => "Composite"}))
    Slot.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: Value, location_name: "value"))
    Slot.add_member(:shape, ::Smithy::Schema::Shapes::MemberShape.new(target: Shape, location_name: "shape"))
    Slot.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: Values, location_name: "values"))
    Slot.add_member(:sub_slots, ::Smithy::Schema::Shapes::MemberShape.new(target: Slots, location_name: "subSlots"))
    Slot.type = Types::Slot
    SlotHintsIntentMap.key = ::Smithy::Schema::Shapes::MemberShape.new(target: Name)
    SlotHintsIntentMap.value = ::Smithy::Schema::Shapes::MemberShape.new(target: SlotHintsSlotMap)
    SlotHintsSlotMap.key = ::Smithy::Schema::Shapes::MemberShape.new(target: Name)
    SlotHintsSlotMap.value = ::Smithy::Schema::Shapes::MemberShape.new(target: RuntimeHintDetails)
    Slots.key = ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString)
    Slots.value = ::Smithy::Schema::Shapes::MemberShape.new(target: Slot)
    StartConversationRequest.add_member(:bot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BotIdentifier, location_name: "botId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartConversationRequest.add_member(:bot_alias_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BotAliasIdentifier, location_name: "botAliasId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartConversationRequest.add_member(:locale_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LocaleId, location_name: "localeId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartConversationRequest.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionId, location_name: "sessionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartConversationRequest.add_member(:conversation_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ConversationMode, location_name: "conversationMode", traits: {"smithy.api#httpHeader" => "x-amz-lex-conversation-mode"}))
    StartConversationRequest.add_member(:request_event_stream, ::Smithy::Schema::Shapes::MemberShape.new(target: StartConversationRequestEventStream, location_name: "requestEventStream", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    StartConversationRequest[:http_payload] = :request_event_stream
    StartConversationRequest[:http_payload_member] = StartConversationRequest.member(:request_event_stream)
    StartConversationRequest.type = Types::StartConversationRequest
    StartConversationRequestEventStream.add_member(:configuration_event, Types::StartConversationRequestEventStream::ConfigurationEvent, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationEvent, location_name: "ConfigurationEvent"))
    StartConversationRequestEventStream.add_member(:audio_input_event, Types::StartConversationRequestEventStream::AudioInputEvent, ::Smithy::Schema::Shapes::MemberShape.new(target: AudioInputEvent, location_name: "AudioInputEvent"))
    StartConversationRequestEventStream.add_member(:dtmf_input_event, Types::StartConversationRequestEventStream::DTMFInputEvent, ::Smithy::Schema::Shapes::MemberShape.new(target: DTMFInputEvent, location_name: "DTMFInputEvent"))
    StartConversationRequestEventStream.add_member(:text_input_event, Types::StartConversationRequestEventStream::TextInputEvent, ::Smithy::Schema::Shapes::MemberShape.new(target: TextInputEvent, location_name: "TextInputEvent"))
    StartConversationRequestEventStream.add_member(:playback_completion_event, Types::StartConversationRequestEventStream::PlaybackCompletionEvent, ::Smithy::Schema::Shapes::MemberShape.new(target: PlaybackCompletionEvent, location_name: "PlaybackCompletionEvent"))
    StartConversationRequestEventStream.add_member(:disconnection_event, Types::StartConversationRequestEventStream::DisconnectionEvent, ::Smithy::Schema::Shapes::MemberShape.new(target: DisconnectionEvent, location_name: "DisconnectionEvent"))
    StartConversationRequestEventStream.add_member(:unknown, Types::StartConversationRequestEventStream::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    StartConversationRequestEventStream.type = Types::StartConversationRequestEventStream
    StartConversationResponse.add_member(:response_event_stream, ::Smithy::Schema::Shapes::MemberShape.new(target: StartConversationResponseEventStream, location_name: "responseEventStream", traits: {"smithy.api#httpPayload" => {}}))
    StartConversationResponse[:http_payload] = :response_event_stream
    StartConversationResponse[:http_payload_member] = StartConversationResponse.member(:response_event_stream)
    StartConversationResponse.type = Types::StartConversationResponse
    StartConversationResponseEventStream.add_member(:playback_interruption_event, Types::StartConversationResponseEventStream::PlaybackInterruptionEvent, ::Smithy::Schema::Shapes::MemberShape.new(target: PlaybackInterruptionEvent, location_name: "PlaybackInterruptionEvent"))
    StartConversationResponseEventStream.add_member(:transcript_event, Types::StartConversationResponseEventStream::TranscriptEvent, ::Smithy::Schema::Shapes::MemberShape.new(target: TranscriptEvent, location_name: "TranscriptEvent"))
    StartConversationResponseEventStream.add_member(:intent_result_event, Types::StartConversationResponseEventStream::IntentResultEvent, ::Smithy::Schema::Shapes::MemberShape.new(target: IntentResultEvent, location_name: "IntentResultEvent"))
    StartConversationResponseEventStream.add_member(:text_response_event, Types::StartConversationResponseEventStream::TextResponseEvent, ::Smithy::Schema::Shapes::MemberShape.new(target: TextResponseEvent, location_name: "TextResponseEvent"))
    StartConversationResponseEventStream.add_member(:audio_response_event, Types::StartConversationResponseEventStream::AudioResponseEvent, ::Smithy::Schema::Shapes::MemberShape.new(target: AudioResponseEvent, location_name: "AudioResponseEvent"))
    StartConversationResponseEventStream.add_member(:heartbeat_event, Types::StartConversationResponseEventStream::HeartbeatEvent, ::Smithy::Schema::Shapes::MemberShape.new(target: HeartbeatEvent, location_name: "HeartbeatEvent"))
    StartConversationResponseEventStream.add_member(:access_denied_exception, Types::StartConversationResponseEventStream::AccessDeniedException, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessDeniedException, location_name: "AccessDeniedException"))
    StartConversationResponseEventStream.add_member(:resource_not_found_exception, Types::StartConversationResponseEventStream::ResourceNotFoundException, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceNotFoundException, location_name: "ResourceNotFoundException"))
    StartConversationResponseEventStream.add_member(:validation_exception, Types::StartConversationResponseEventStream::ValidationException, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationException, location_name: "ValidationException"))
    StartConversationResponseEventStream.add_member(:throttling_exception, Types::StartConversationResponseEventStream::ThrottlingException, ::Smithy::Schema::Shapes::MemberShape.new(target: ThrottlingException, location_name: "ThrottlingException"))
    StartConversationResponseEventStream.add_member(:internal_server_exception, Types::StartConversationResponseEventStream::InternalServerException, ::Smithy::Schema::Shapes::MemberShape.new(target: InternalServerException, location_name: "InternalServerException"))
    StartConversationResponseEventStream.add_member(:conflict_exception, Types::StartConversationResponseEventStream::ConflictException, ::Smithy::Schema::Shapes::MemberShape.new(target: ConflictException, location_name: "ConflictException"))
    StartConversationResponseEventStream.add_member(:dependency_failed_exception, Types::StartConversationResponseEventStream::DependencyFailedException, ::Smithy::Schema::Shapes::MemberShape.new(target: DependencyFailedException, location_name: "DependencyFailedException"))
    StartConversationResponseEventStream.add_member(:bad_gateway_exception, Types::StartConversationResponseEventStream::BadGatewayException, ::Smithy::Schema::Shapes::MemberShape.new(target: BadGatewayException, location_name: "BadGatewayException"))
    StartConversationResponseEventStream.add_member(:unknown, Types::StartConversationResponseEventStream::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    StartConversationResponseEventStream.type = Types::StartConversationResponseEventStream
    StringList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString)
    StringMap.key = ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString)
    StringMap.value = ::Smithy::Schema::Shapes::MemberShape.new(target: String)
    StyleType.add_member(:default, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DEFAULT", traits: {"smithy.api#enumValue" => "Default"}))
    StyleType.add_member(:spell_by_letter, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SPELL_BY_LETTER", traits: {"smithy.api#enumValue" => "SpellByLetter"}))
    StyleType.add_member(:spell_by_word, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SPELL_BY_WORD", traits: {"smithy.api#enumValue" => "SpellByWord"}))
    TextInputEvent.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: Text, location_name: "text", traits: {"smithy.api#required" => {}}))
    TextInputEvent.add_member(:event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EventId, location_name: "eventId"))
    TextInputEvent.add_member(:client_timestamp_millis, ::Smithy::Schema::Shapes::MemberShape.new(target: EpochMillis, location_name: "clientTimestampMillis", traits: {"smithy.api#default" => 0}))
    TextInputEvent.type = Types::TextInputEvent
    TextResponseEvent.add_member(:messages, ::Smithy::Schema::Shapes::MemberShape.new(target: Messages, location_name: "messages"))
    TextResponseEvent.add_member(:event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EventId, location_name: "eventId"))
    TextResponseEvent.type = Types::TextResponseEvent
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "message", traits: {"smithy.api#required" => {}}))
    ThrottlingException.type = Types::ThrottlingException
    TranscriptEvent.add_member(:transcript, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "transcript"))
    TranscriptEvent.add_member(:event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EventId, location_name: "eventId"))
    TranscriptEvent.type = Types::TranscriptEvent
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "message", traits: {"smithy.api#required" => {}}))
    ValidationException.type = Types::ValidationException
    Value.add_member(:original_value, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "originalValue"))
    Value.add_member(:interpreted_value, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "interpretedValue", traits: {"smithy.api#required" => {}}))
    Value.add_member(:resolved_values, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, location_name: "resolvedValues"))
    Value.type = Types::Value
    Values.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Slot)

    AWSDeepSenseRunTimeServiceApi20 = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.lexruntimev2#AWSDeepSenseRunTimeServiceApi2_0"
      service.name = "AWSDeepSenseRunTimeServiceApi20"
      service.version = "2020-08-07"
      service.traits = {"aws.api#service" => {"sdkId" => "Lex Runtime V2", "arnNamespace" => "lex", "cloudFormationName" => "LexRuntimeV2", "cloudTrailEventSource" => "lexruntimev2.amazonaws.com", "docId" => "runtime.lex.v2-2020-08-07", "endpointPrefix" => "runtime-v2-lex"}, "aws.auth#sigv4" => {"name" => "lex"}, "aws.protocols#restJson1" => {"http" => ["http/1.1", "h2"], "eventStreamHttp" => ["h2"]}, "smithy.api#title" => "Amazon Lex Runtime V2"}
      service.add_operation(:delete_session, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexruntimev2#DeleteSession"
        operation.name = "DeleteSession"
        operation.input = DeleteSessionRequest
        operation.output = DeleteSessionResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/bots/{botId}/botAliases/{botAliasId}/botLocales/{localeId}/sessions/{sessionId}", "code" => 200}}
      end)
      service.add_operation(:get_session, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexruntimev2#GetSession"
        operation.name = "GetSession"
        operation.input = GetSessionRequest
        operation.output = GetSessionResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/bots/{botId}/botAliases/{botAliasId}/botLocales/{localeId}/sessions/{sessionId}", "code" => 200}}
      end)
      service.add_operation(:put_session, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexruntimev2#PutSession"
        operation.name = "PutSession"
        operation.input = PutSessionRequest
        operation.output = PutSessionResponse
        operation.errors << AccessDeniedException
        operation.errors << BadGatewayException
        operation.errors << ConflictException
        operation.errors << DependencyFailedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/bots/{botId}/botAliases/{botAliasId}/botLocales/{localeId}/sessions/{sessionId}", "code" => 200}}
      end)
      service.add_operation(:recognize_text, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexruntimev2#RecognizeText"
        operation.name = "RecognizeText"
        operation.input = RecognizeTextRequest
        operation.output = RecognizeTextResponse
        operation.errors << AccessDeniedException
        operation.errors << BadGatewayException
        operation.errors << ConflictException
        operation.errors << DependencyFailedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/bots/{botId}/botAliases/{botAliasId}/botLocales/{localeId}/sessions/{sessionId}/text", "code" => 200}}
      end)
      service.add_operation(:recognize_utterance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexruntimev2#RecognizeUtterance"
        operation.name = "RecognizeUtterance"
        operation.input = RecognizeUtteranceRequest
        operation.output = RecognizeUtteranceResponse
        operation.errors << AccessDeniedException
        operation.errors << BadGatewayException
        operation.errors << ConflictException
        operation.errors << DependencyFailedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.auth#unsignedPayload" => {}, "smithy.api#auth" => ["aws.auth#sigv4"], "smithy.api#http" => {"method" => "POST", "uri" => "/bots/{botId}/botAliases/{botAliasId}/botLocales/{localeId}/sessions/{sessionId}/utterance", "code" => 200}}
      end)
      service.add_operation(:start_conversation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexruntimev2#StartConversation"
        operation.name = "StartConversation"
        operation.input = StartConversationRequest
        operation.output = StartConversationResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/bots/{botId}/botAliases/{botAliasId}/botLocales/{localeId}/sessions/{sessionId}/conversation", "code" => 200}}
      end)
    end

    class << self
      def type_registry
        return @type_registry if @type_registry

        shapes = constants.map { |sym| const_get(sym) }.select { |const| const.is_a?(::Smithy::Schema::Shapes::StructureShape) }
        @type_registry = ::Smithy::Schema::TypeRegistry.new(shapes)
      end
    end
  end
end
