# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Lex
  # @api private
  module ClientApi

    include Seahorse::Model

    Accept = Shapes::StringShape.new(name: 'Accept')
    ActiveContext = Shapes::StructureShape.new(name: 'ActiveContext')
    ActiveContextName = Shapes::StringShape.new(name: 'ActiveContextName')
    ActiveContextParametersMap = Shapes::MapShape.new(name: 'ActiveContextParametersMap')
    ActiveContextTimeToLive = Shapes::StructureShape.new(name: 'ActiveContextTimeToLive')
    ActiveContextTimeToLiveInSeconds = Shapes::IntegerShape.new(name: 'ActiveContextTimeToLiveInSeconds')
    ActiveContextTurnsToLive = Shapes::IntegerShape.new(name: 'ActiveContextTurnsToLive')
    ActiveContextsList = Shapes::ListShape.new(name: 'ActiveContextsList')
    ActiveContextsString = Shapes::StringShape.new(name: 'ActiveContextsString')
    AttributesString = Shapes::StringShape.new(name: 'AttributesString')
    BadGatewayException = Shapes::StructureShape.new(name: 'BadGatewayException')
    BadRequestException = Shapes::StructureShape.new(name: 'BadRequestException')
    BlobStream = Shapes::BlobShape.new(name: 'BlobStream', streaming: true)
    BotAlias = Shapes::StringShape.new(name: 'BotAlias')
    BotName = Shapes::StringShape.new(name: 'BotName')
    BotVersion = Shapes::StringShape.new(name: 'BotVersion')
    Button = Shapes::StructureShape.new(name: 'Button')
    ButtonTextStringWithLength = Shapes::StringShape.new(name: 'ButtonTextStringWithLength')
    ButtonValueStringWithLength = Shapes::StringShape.new(name: 'ButtonValueStringWithLength')
    ConfirmationStatus = Shapes::StringShape.new(name: 'ConfirmationStatus')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    ContentType = Shapes::StringShape.new(name: 'ContentType')
    DeleteSessionRequest = Shapes::StructureShape.new(name: 'DeleteSessionRequest')
    DeleteSessionResponse = Shapes::StructureShape.new(name: 'DeleteSessionResponse')
    DependencyFailedException = Shapes::StructureShape.new(name: 'DependencyFailedException')
    DialogAction = Shapes::StructureShape.new(name: 'DialogAction')
    DialogActionType = Shapes::StringShape.new(name: 'DialogActionType')
    DialogState = Shapes::StringShape.new(name: 'DialogState')
    Double = Shapes::FloatShape.new(name: 'Double')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    FulfillmentState = Shapes::StringShape.new(name: 'FulfillmentState')
    GenericAttachment = Shapes::StructureShape.new(name: 'GenericAttachment')
    GetSessionRequest = Shapes::StructureShape.new(name: 'GetSessionRequest')
    GetSessionResponse = Shapes::StructureShape.new(name: 'GetSessionResponse')
    HttpContentType = Shapes::StringShape.new(name: 'HttpContentType')
    IntentConfidence = Shapes::StructureShape.new(name: 'IntentConfidence')
    IntentList = Shapes::ListShape.new(name: 'IntentList')
    IntentName = Shapes::StringShape.new(name: 'IntentName')
    IntentSummary = Shapes::StructureShape.new(name: 'IntentSummary')
    IntentSummaryCheckpointLabel = Shapes::StringShape.new(name: 'IntentSummaryCheckpointLabel')
    IntentSummaryList = Shapes::ListShape.new(name: 'IntentSummaryList')
    InternalFailureException = Shapes::StructureShape.new(name: 'InternalFailureException')
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
    LoopDetectedException = Shapes::StructureShape.new(name: 'LoopDetectedException')
    MessageFormatType = Shapes::StringShape.new(name: 'MessageFormatType')
    NotAcceptableException = Shapes::StructureShape.new(name: 'NotAcceptableException')
    NotFoundException = Shapes::StructureShape.new(name: 'NotFoundException')
    ParameterName = Shapes::StringShape.new(name: 'ParameterName')
    PostContentRequest = Shapes::StructureShape.new(name: 'PostContentRequest')
    PostContentResponse = Shapes::StructureShape.new(name: 'PostContentResponse')
    PostTextRequest = Shapes::StructureShape.new(name: 'PostTextRequest')
    PostTextResponse = Shapes::StructureShape.new(name: 'PostTextResponse')
    PredictedIntent = Shapes::StructureShape.new(name: 'PredictedIntent')
    PutSessionRequest = Shapes::StructureShape.new(name: 'PutSessionRequest')
    PutSessionResponse = Shapes::StructureShape.new(name: 'PutSessionResponse')
    RequestTimeoutException = Shapes::StructureShape.new(name: 'RequestTimeoutException')
    ResponseCard = Shapes::StructureShape.new(name: 'ResponseCard')
    SensitiveString = Shapes::StringShape.new(name: 'SensitiveString')
    SensitiveStringUnbounded = Shapes::StringShape.new(name: 'SensitiveStringUnbounded')
    SentimentLabel = Shapes::StringShape.new(name: 'SentimentLabel')
    SentimentResponse = Shapes::StructureShape.new(name: 'SentimentResponse')
    SentimentScore = Shapes::StringShape.new(name: 'SentimentScore')
    String = Shapes::StringShape.new(name: 'String')
    StringMap = Shapes::MapShape.new(name: 'StringMap')
    StringUrlWithLength = Shapes::StringShape.new(name: 'StringUrlWithLength')
    StringWithLength = Shapes::StringShape.new(name: 'StringWithLength')
    Text = Shapes::StringShape.new(name: 'Text')
    UnsupportedMediaTypeException = Shapes::StructureShape.new(name: 'UnsupportedMediaTypeException')
    UserId = Shapes::StringShape.new(name: 'UserId')
    genericAttachmentList = Shapes::ListShape.new(name: 'genericAttachmentList')
    listOfButtons = Shapes::ListShape.new(name: 'listOfButtons')

    ActiveContext.add_member(:name, Shapes::ShapeRef.new(shape: ActiveContextName, required: true, location_name: "name"))
    ActiveContext.add_member(:time_to_live, Shapes::ShapeRef.new(shape: ActiveContextTimeToLive, required: true, location_name: "timeToLive"))
    ActiveContext.add_member(:parameters, Shapes::ShapeRef.new(shape: ActiveContextParametersMap, required: true, location_name: "parameters"))
    ActiveContext.struct_class = Types::ActiveContext

    ActiveContextParametersMap.key = Shapes::ShapeRef.new(shape: ParameterName)
    ActiveContextParametersMap.value = Shapes::ShapeRef.new(shape: Text)

    ActiveContextTimeToLive.add_member(:time_to_live_in_seconds, Shapes::ShapeRef.new(shape: ActiveContextTimeToLiveInSeconds, location_name: "timeToLiveInSeconds"))
    ActiveContextTimeToLive.add_member(:turns_to_live, Shapes::ShapeRef.new(shape: ActiveContextTurnsToLive, location_name: "turnsToLive"))
    ActiveContextTimeToLive.struct_class = Types::ActiveContextTimeToLive

    ActiveContextsList.member = Shapes::ShapeRef.new(shape: ActiveContext)

    BadGatewayException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    BadGatewayException.struct_class = Types::BadGatewayException

    BadRequestException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    BadRequestException.struct_class = Types::BadRequestException

    Button.add_member(:text, Shapes::ShapeRef.new(shape: ButtonTextStringWithLength, required: true, location_name: "text"))
    Button.add_member(:value, Shapes::ShapeRef.new(shape: ButtonValueStringWithLength, required: true, location_name: "value"))
    Button.struct_class = Types::Button

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ConflictException.struct_class = Types::ConflictException

    DeleteSessionRequest.add_member(:bot_name, Shapes::ShapeRef.new(shape: BotName, required: true, location: "uri", location_name: "botName"))
    DeleteSessionRequest.add_member(:bot_alias, Shapes::ShapeRef.new(shape: BotAlias, required: true, location: "uri", location_name: "botAlias"))
    DeleteSessionRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: UserId, required: true, location: "uri", location_name: "userId"))
    DeleteSessionRequest.struct_class = Types::DeleteSessionRequest

    DeleteSessionResponse.add_member(:bot_name, Shapes::ShapeRef.new(shape: BotName, location_name: "botName"))
    DeleteSessionResponse.add_member(:bot_alias, Shapes::ShapeRef.new(shape: BotAlias, location_name: "botAlias"))
    DeleteSessionResponse.add_member(:user_id, Shapes::ShapeRef.new(shape: UserId, location_name: "userId"))
    DeleteSessionResponse.add_member(:session_id, Shapes::ShapeRef.new(shape: String, location_name: "sessionId"))
    DeleteSessionResponse.struct_class = Types::DeleteSessionResponse

    DependencyFailedException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    DependencyFailedException.struct_class = Types::DependencyFailedException

    DialogAction.add_member(:type, Shapes::ShapeRef.new(shape: DialogActionType, required: true, location_name: "type"))
    DialogAction.add_member(:intent_name, Shapes::ShapeRef.new(shape: IntentName, location_name: "intentName"))
    DialogAction.add_member(:slots, Shapes::ShapeRef.new(shape: StringMap, location_name: "slots"))
    DialogAction.add_member(:slot_to_elicit, Shapes::ShapeRef.new(shape: String, location_name: "slotToElicit"))
    DialogAction.add_member(:fulfillment_state, Shapes::ShapeRef.new(shape: FulfillmentState, location_name: "fulfillmentState"))
    DialogAction.add_member(:message, Shapes::ShapeRef.new(shape: Text, location_name: "message"))
    DialogAction.add_member(:message_format, Shapes::ShapeRef.new(shape: MessageFormatType, location_name: "messageFormat"))
    DialogAction.struct_class = Types::DialogAction

    GenericAttachment.add_member(:title, Shapes::ShapeRef.new(shape: StringWithLength, location_name: "title"))
    GenericAttachment.add_member(:sub_title, Shapes::ShapeRef.new(shape: StringWithLength, location_name: "subTitle"))
    GenericAttachment.add_member(:attachment_link_url, Shapes::ShapeRef.new(shape: StringUrlWithLength, location_name: "attachmentLinkUrl"))
    GenericAttachment.add_member(:image_url, Shapes::ShapeRef.new(shape: StringUrlWithLength, location_name: "imageUrl"))
    GenericAttachment.add_member(:buttons, Shapes::ShapeRef.new(shape: listOfButtons, location_name: "buttons"))
    GenericAttachment.struct_class = Types::GenericAttachment

    GetSessionRequest.add_member(:bot_name, Shapes::ShapeRef.new(shape: BotName, required: true, location: "uri", location_name: "botName"))
    GetSessionRequest.add_member(:bot_alias, Shapes::ShapeRef.new(shape: BotAlias, required: true, location: "uri", location_name: "botAlias"))
    GetSessionRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: UserId, required: true, location: "uri", location_name: "userId"))
    GetSessionRequest.add_member(:checkpoint_label_filter, Shapes::ShapeRef.new(shape: IntentSummaryCheckpointLabel, location: "querystring", location_name: "checkpointLabelFilter"))
    GetSessionRequest.struct_class = Types::GetSessionRequest

    GetSessionResponse.add_member(:recent_intent_summary_view, Shapes::ShapeRef.new(shape: IntentSummaryList, location_name: "recentIntentSummaryView"))
    GetSessionResponse.add_member(:session_attributes, Shapes::ShapeRef.new(shape: StringMap, location_name: "sessionAttributes"))
    GetSessionResponse.add_member(:session_id, Shapes::ShapeRef.new(shape: String, location_name: "sessionId"))
    GetSessionResponse.add_member(:dialog_action, Shapes::ShapeRef.new(shape: DialogAction, location_name: "dialogAction"))
    GetSessionResponse.add_member(:active_contexts, Shapes::ShapeRef.new(shape: ActiveContextsList, location_name: "activeContexts"))
    GetSessionResponse.struct_class = Types::GetSessionResponse

    IntentConfidence.add_member(:score, Shapes::ShapeRef.new(shape: Double, location_name: "score"))
    IntentConfidence.struct_class = Types::IntentConfidence

    IntentList.member = Shapes::ShapeRef.new(shape: PredictedIntent)

    IntentSummary.add_member(:intent_name, Shapes::ShapeRef.new(shape: IntentName, location_name: "intentName"))
    IntentSummary.add_member(:checkpoint_label, Shapes::ShapeRef.new(shape: IntentSummaryCheckpointLabel, location_name: "checkpointLabel"))
    IntentSummary.add_member(:slots, Shapes::ShapeRef.new(shape: StringMap, location_name: "slots"))
    IntentSummary.add_member(:confirmation_status, Shapes::ShapeRef.new(shape: ConfirmationStatus, location_name: "confirmationStatus"))
    IntentSummary.add_member(:dialog_action_type, Shapes::ShapeRef.new(shape: DialogActionType, required: true, location_name: "dialogActionType"))
    IntentSummary.add_member(:fulfillment_state, Shapes::ShapeRef.new(shape: FulfillmentState, location_name: "fulfillmentState"))
    IntentSummary.add_member(:slot_to_elicit, Shapes::ShapeRef.new(shape: String, location_name: "slotToElicit"))
    IntentSummary.struct_class = Types::IntentSummary

    IntentSummaryList.member = Shapes::ShapeRef.new(shape: IntentSummary)

    InternalFailureException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    InternalFailureException.struct_class = Types::InternalFailureException

    LimitExceededException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "Retry-After"))
    LimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    LimitExceededException.struct_class = Types::LimitExceededException

    LoopDetectedException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    LoopDetectedException.struct_class = Types::LoopDetectedException

    NotAcceptableException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    NotAcceptableException.struct_class = Types::NotAcceptableException

    NotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    NotFoundException.struct_class = Types::NotFoundException

    PostContentRequest.add_member(:bot_name, Shapes::ShapeRef.new(shape: BotName, required: true, location: "uri", location_name: "botName"))
    PostContentRequest.add_member(:bot_alias, Shapes::ShapeRef.new(shape: BotAlias, required: true, location: "uri", location_name: "botAlias"))
    PostContentRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: UserId, required: true, location: "uri", location_name: "userId"))
    PostContentRequest.add_member(:session_attributes, Shapes::ShapeRef.new(shape: AttributesString, location: "header", location_name: "x-amz-lex-session-attributes", metadata: {"jsonvalue"=>true}))
    PostContentRequest.add_member(:request_attributes, Shapes::ShapeRef.new(shape: AttributesString, location: "header", location_name: "x-amz-lex-request-attributes", metadata: {"jsonvalue"=>true}))
    PostContentRequest.add_member(:content_type, Shapes::ShapeRef.new(shape: HttpContentType, required: true, location: "header", location_name: "Content-Type"))
    PostContentRequest.add_member(:accept, Shapes::ShapeRef.new(shape: Accept, location: "header", location_name: "Accept"))
    PostContentRequest.add_member(:input_stream, Shapes::ShapeRef.new(shape: BlobStream, required: true, location_name: "inputStream"))
    PostContentRequest.add_member(:active_contexts, Shapes::ShapeRef.new(shape: ActiveContextsString, location: "header", location_name: "x-amz-lex-active-contexts", metadata: {"jsonvalue"=>true}))
    PostContentRequest.struct_class = Types::PostContentRequest
    PostContentRequest[:payload] = :input_stream
    PostContentRequest[:payload_member] = PostContentRequest.member(:input_stream)

    PostContentResponse.add_member(:content_type, Shapes::ShapeRef.new(shape: HttpContentType, location: "header", location_name: "Content-Type"))
    PostContentResponse.add_member(:intent_name, Shapes::ShapeRef.new(shape: IntentName, location: "header", location_name: "x-amz-lex-intent-name"))
    PostContentResponse.add_member(:nlu_intent_confidence, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "x-amz-lex-nlu-intent-confidence", metadata: {"jsonvalue"=>true}))
    PostContentResponse.add_member(:alternative_intents, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "x-amz-lex-alternative-intents", metadata: {"jsonvalue"=>true}))
    PostContentResponse.add_member(:slots, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "x-amz-lex-slots", metadata: {"jsonvalue"=>true}))
    PostContentResponse.add_member(:session_attributes, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "x-amz-lex-session-attributes", metadata: {"jsonvalue"=>true}))
    PostContentResponse.add_member(:sentiment_response, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "x-amz-lex-sentiment"))
    PostContentResponse.add_member(:message, Shapes::ShapeRef.new(shape: Text, deprecated: true, location: "header", location_name: "x-amz-lex-message", metadata: {"deprecatedMessage"=>"The message field is deprecated, use the encodedMessage field instead. The message field is available only in the de-DE, en-AU, en-GB, en-US, es-419, es-ES, es-US, fr-CA, fr-FR and it-IT locales."}))
    PostContentResponse.add_member(:encoded_message, Shapes::ShapeRef.new(shape: SensitiveString, location: "header", location_name: "x-amz-lex-encoded-message"))
    PostContentResponse.add_member(:message_format, Shapes::ShapeRef.new(shape: MessageFormatType, location: "header", location_name: "x-amz-lex-message-format"))
    PostContentResponse.add_member(:dialog_state, Shapes::ShapeRef.new(shape: DialogState, location: "header", location_name: "x-amz-lex-dialog-state"))
    PostContentResponse.add_member(:slot_to_elicit, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "x-amz-lex-slot-to-elicit"))
    PostContentResponse.add_member(:input_transcript, Shapes::ShapeRef.new(shape: String, deprecated: true, location: "header", location_name: "x-amz-lex-input-transcript", metadata: {"deprecatedMessage"=>"The inputTranscript field is deprecated, use the encodedInputTranscript field instead. The inputTranscript field is available only in the de-DE, en-AU, en-GB, en-US, es-419, es-ES, es-US, fr-CA, fr-FR and it-IT locales."}))
    PostContentResponse.add_member(:encoded_input_transcript, Shapes::ShapeRef.new(shape: SensitiveStringUnbounded, location: "header", location_name: "x-amz-lex-encoded-input-transcript"))
    PostContentResponse.add_member(:audio_stream, Shapes::ShapeRef.new(shape: BlobStream, location_name: "audioStream"))
    PostContentResponse.add_member(:bot_version, Shapes::ShapeRef.new(shape: BotVersion, location: "header", location_name: "x-amz-lex-bot-version"))
    PostContentResponse.add_member(:session_id, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "x-amz-lex-session-id"))
    PostContentResponse.add_member(:active_contexts, Shapes::ShapeRef.new(shape: ActiveContextsString, location: "header", location_name: "x-amz-lex-active-contexts", metadata: {"jsonvalue"=>true}))
    PostContentResponse.struct_class = Types::PostContentResponse
    PostContentResponse[:payload] = :audio_stream
    PostContentResponse[:payload_member] = PostContentResponse.member(:audio_stream)

    PostTextRequest.add_member(:bot_name, Shapes::ShapeRef.new(shape: BotName, required: true, location: "uri", location_name: "botName"))
    PostTextRequest.add_member(:bot_alias, Shapes::ShapeRef.new(shape: BotAlias, required: true, location: "uri", location_name: "botAlias"))
    PostTextRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: UserId, required: true, location: "uri", location_name: "userId"))
    PostTextRequest.add_member(:session_attributes, Shapes::ShapeRef.new(shape: StringMap, location_name: "sessionAttributes"))
    PostTextRequest.add_member(:request_attributes, Shapes::ShapeRef.new(shape: StringMap, location_name: "requestAttributes"))
    PostTextRequest.add_member(:input_text, Shapes::ShapeRef.new(shape: Text, required: true, location_name: "inputText"))
    PostTextRequest.add_member(:active_contexts, Shapes::ShapeRef.new(shape: ActiveContextsList, location_name: "activeContexts"))
    PostTextRequest.struct_class = Types::PostTextRequest

    PostTextResponse.add_member(:intent_name, Shapes::ShapeRef.new(shape: IntentName, location_name: "intentName"))
    PostTextResponse.add_member(:nlu_intent_confidence, Shapes::ShapeRef.new(shape: IntentConfidence, location_name: "nluIntentConfidence"))
    PostTextResponse.add_member(:alternative_intents, Shapes::ShapeRef.new(shape: IntentList, location_name: "alternativeIntents"))
    PostTextResponse.add_member(:slots, Shapes::ShapeRef.new(shape: StringMap, location_name: "slots"))
    PostTextResponse.add_member(:session_attributes, Shapes::ShapeRef.new(shape: StringMap, location_name: "sessionAttributes"))
    PostTextResponse.add_member(:message, Shapes::ShapeRef.new(shape: Text, location_name: "message"))
    PostTextResponse.add_member(:sentiment_response, Shapes::ShapeRef.new(shape: SentimentResponse, location_name: "sentimentResponse"))
    PostTextResponse.add_member(:message_format, Shapes::ShapeRef.new(shape: MessageFormatType, location_name: "messageFormat"))
    PostTextResponse.add_member(:dialog_state, Shapes::ShapeRef.new(shape: DialogState, location_name: "dialogState"))
    PostTextResponse.add_member(:slot_to_elicit, Shapes::ShapeRef.new(shape: String, location_name: "slotToElicit"))
    PostTextResponse.add_member(:response_card, Shapes::ShapeRef.new(shape: ResponseCard, location_name: "responseCard"))
    PostTextResponse.add_member(:session_id, Shapes::ShapeRef.new(shape: String, location_name: "sessionId"))
    PostTextResponse.add_member(:bot_version, Shapes::ShapeRef.new(shape: BotVersion, location_name: "botVersion"))
    PostTextResponse.add_member(:active_contexts, Shapes::ShapeRef.new(shape: ActiveContextsList, location_name: "activeContexts"))
    PostTextResponse.struct_class = Types::PostTextResponse

    PredictedIntent.add_member(:intent_name, Shapes::ShapeRef.new(shape: IntentName, location_name: "intentName"))
    PredictedIntent.add_member(:nlu_intent_confidence, Shapes::ShapeRef.new(shape: IntentConfidence, location_name: "nluIntentConfidence"))
    PredictedIntent.add_member(:slots, Shapes::ShapeRef.new(shape: StringMap, location_name: "slots"))
    PredictedIntent.struct_class = Types::PredictedIntent

    PutSessionRequest.add_member(:bot_name, Shapes::ShapeRef.new(shape: BotName, required: true, location: "uri", location_name: "botName"))
    PutSessionRequest.add_member(:bot_alias, Shapes::ShapeRef.new(shape: BotAlias, required: true, location: "uri", location_name: "botAlias"))
    PutSessionRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: UserId, required: true, location: "uri", location_name: "userId"))
    PutSessionRequest.add_member(:session_attributes, Shapes::ShapeRef.new(shape: StringMap, location_name: "sessionAttributes"))
    PutSessionRequest.add_member(:dialog_action, Shapes::ShapeRef.new(shape: DialogAction, location_name: "dialogAction"))
    PutSessionRequest.add_member(:recent_intent_summary_view, Shapes::ShapeRef.new(shape: IntentSummaryList, location_name: "recentIntentSummaryView"))
    PutSessionRequest.add_member(:accept, Shapes::ShapeRef.new(shape: Accept, location: "header", location_name: "Accept"))
    PutSessionRequest.add_member(:active_contexts, Shapes::ShapeRef.new(shape: ActiveContextsList, location_name: "activeContexts"))
    PutSessionRequest.struct_class = Types::PutSessionRequest

    PutSessionResponse.add_member(:content_type, Shapes::ShapeRef.new(shape: HttpContentType, location: "header", location_name: "Content-Type"))
    PutSessionResponse.add_member(:intent_name, Shapes::ShapeRef.new(shape: IntentName, location: "header", location_name: "x-amz-lex-intent-name"))
    PutSessionResponse.add_member(:slots, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "x-amz-lex-slots", metadata: {"jsonvalue"=>true}))
    PutSessionResponse.add_member(:session_attributes, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "x-amz-lex-session-attributes", metadata: {"jsonvalue"=>true}))
    PutSessionResponse.add_member(:message, Shapes::ShapeRef.new(shape: Text, deprecated: true, location: "header", location_name: "x-amz-lex-message", metadata: {"deprecatedMessage"=>"The message field is deprecated, use the encodedMessage field instead. The message field is available only in the de-DE, en-AU, en-GB, en-US, es-419, es-ES, es-US, fr-CA, fr-FR and it-IT locales."}))
    PutSessionResponse.add_member(:encoded_message, Shapes::ShapeRef.new(shape: SensitiveString, location: "header", location_name: "x-amz-lex-encoded-message"))
    PutSessionResponse.add_member(:message_format, Shapes::ShapeRef.new(shape: MessageFormatType, location: "header", location_name: "x-amz-lex-message-format"))
    PutSessionResponse.add_member(:dialog_state, Shapes::ShapeRef.new(shape: DialogState, location: "header", location_name: "x-amz-lex-dialog-state"))
    PutSessionResponse.add_member(:slot_to_elicit, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "x-amz-lex-slot-to-elicit"))
    PutSessionResponse.add_member(:audio_stream, Shapes::ShapeRef.new(shape: BlobStream, location_name: "audioStream"))
    PutSessionResponse.add_member(:session_id, Shapes::ShapeRef.new(shape: String, location: "header", location_name: "x-amz-lex-session-id"))
    PutSessionResponse.add_member(:active_contexts, Shapes::ShapeRef.new(shape: ActiveContextsString, location: "header", location_name: "x-amz-lex-active-contexts", metadata: {"jsonvalue"=>true}))
    PutSessionResponse.struct_class = Types::PutSessionResponse
    PutSessionResponse[:payload] = :audio_stream
    PutSessionResponse[:payload_member] = PutSessionResponse.member(:audio_stream)

    RequestTimeoutException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    RequestTimeoutException.struct_class = Types::RequestTimeoutException

    ResponseCard.add_member(:version, Shapes::ShapeRef.new(shape: String, location_name: "version"))
    ResponseCard.add_member(:content_type, Shapes::ShapeRef.new(shape: ContentType, location_name: "contentType"))
    ResponseCard.add_member(:generic_attachments, Shapes::ShapeRef.new(shape: genericAttachmentList, location_name: "genericAttachments"))
    ResponseCard.struct_class = Types::ResponseCard

    SentimentResponse.add_member(:sentiment_label, Shapes::ShapeRef.new(shape: SentimentLabel, location_name: "sentimentLabel"))
    SentimentResponse.add_member(:sentiment_score, Shapes::ShapeRef.new(shape: SentimentScore, location_name: "sentimentScore"))
    SentimentResponse.struct_class = Types::SentimentResponse

    StringMap.key = Shapes::ShapeRef.new(shape: String)
    StringMap.value = Shapes::ShapeRef.new(shape: String)

    UnsupportedMediaTypeException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    UnsupportedMediaTypeException.struct_class = Types::UnsupportedMediaTypeException

    genericAttachmentList.member = Shapes::ShapeRef.new(shape: GenericAttachment)

    listOfButtons.member = Shapes::ShapeRef.new(shape: Button)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2016-11-28"

      api.metadata = {
        "apiVersion" => "2016-11-28",
        "endpointPrefix" => "runtime.lex",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceFullName" => "Amazon Lex Runtime Service",
        "serviceId" => "Lex Runtime Service",
        "signatureVersion" => "v4",
        "signingName" => "lex",
        "uid" => "runtime.lex-2016-11-28",
      }

      api.add_operation(:delete_session, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteSession"
        o.http_method = "DELETE"
        o.http_request_uri = "/bot/{botName}/alias/{botAlias}/user/{userId}/session"
        o.input = Shapes::ShapeRef.new(shape: DeleteSessionRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteSessionResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:get_session, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSession"
        o.http_method = "GET"
        o.http_request_uri = "/bot/{botName}/alias/{botAlias}/user/{userId}/session/"
        o.input = Shapes::ShapeRef.new(shape: GetSessionRequest)
        o.output = Shapes::ShapeRef.new(shape: GetSessionResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:post_content, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PostContent"
        o.http_method = "POST"
        o.http_request_uri = "/bot/{botName}/alias/{botAlias}/user/{userId}/content"
        o['authtype'] = "v4-unsigned-body"
        o.input = Shapes::ShapeRef.new(shape: PostContentRequest)
        o.output = Shapes::ShapeRef.new(shape: PostContentResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedMediaTypeException)
        o.errors << Shapes::ShapeRef.new(shape: NotAcceptableException)
        o.errors << Shapes::ShapeRef.new(shape: RequestTimeoutException)
        o.errors << Shapes::ShapeRef.new(shape: DependencyFailedException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: LoopDetectedException)
      end)

      api.add_operation(:post_text, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PostText"
        o.http_method = "POST"
        o.http_request_uri = "/bot/{botName}/alias/{botAlias}/user/{userId}/text"
        o.input = Shapes::ShapeRef.new(shape: PostTextRequest)
        o.output = Shapes::ShapeRef.new(shape: PostTextResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: DependencyFailedException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
        o.errors << Shapes::ShapeRef.new(shape: LoopDetectedException)
      end)

      api.add_operation(:put_session, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutSession"
        o.http_method = "POST"
        o.http_request_uri = "/bot/{botName}/alias/{botAlias}/user/{userId}/session"
        o.input = Shapes::ShapeRef.new(shape: PutSessionRequest)
        o.output = Shapes::ShapeRef.new(shape: PutSessionResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: NotAcceptableException)
        o.errors << Shapes::ShapeRef.new(shape: DependencyFailedException)
        o.errors << Shapes::ShapeRef.new(shape: BadGatewayException)
      end)
    end

  end
end
