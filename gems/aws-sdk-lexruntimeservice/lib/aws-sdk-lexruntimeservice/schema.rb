# frozen_string_literal: true

# This is generated code!

module Aws::LexRuntimeService
  # This module contains a schema composed of shapes used by the client.
  module Schema

    Accept = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lexruntimeservice#Accept', name: 'Accept')
    ActiveContext = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexruntimeservice#ActiveContext', name: 'ActiveContext')
    ActiveContextName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lexruntimeservice#ActiveContextName', name: 'ActiveContextName', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^([A-Za-z]_?)+$"})
    ActiveContextParametersMap = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.lexruntimeservice#ActiveContextParametersMap', name: 'ActiveContextParametersMap', traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    ActiveContextTimeToLive = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexruntimeservice#ActiveContextTimeToLive', name: 'ActiveContextTimeToLive')
    ActiveContextTimeToLiveInSeconds = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.lexruntimeservice#ActiveContextTimeToLiveInSeconds', name: 'ActiveContextTimeToLiveInSeconds', traits: {"smithy.api#range" => {"min" => 5, "max" => 86400}})
    ActiveContextTurnsToLive = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.lexruntimeservice#ActiveContextTurnsToLive', name: 'ActiveContextTurnsToLive', traits: {"smithy.api#range" => {"min" => 1, "max" => 20}})
    ActiveContextsList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.lexruntimeservice#ActiveContextsList', name: 'ActiveContextsList', traits: {"smithy.api#length" => {"min" => 0, "max" => 20}, "smithy.api#sensitive" => {}})
    BadGatewayException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexruntimeservice#BadGatewayException', name: 'BadGatewayException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 502})
    BadRequestException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexruntimeservice#BadRequestException', name: 'BadRequestException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    BlobStream = ::Smithy::Schema::Shapes::BlobShape.new(id: 'com.amazonaws.lexruntimeservice#BlobStream', name: 'BlobStream', traits: {"smithy.api#streaming" => {}})
    BotAlias = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lexruntimeservice#BotAlias', name: 'BotAlias')
    BotName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lexruntimeservice#BotName', name: 'BotName')
    BotVersion = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lexruntimeservice#BotVersion', name: 'BotVersion', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[0-9]+|\\$LATEST$"})
    Button = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexruntimeservice#Button', name: 'Button')
    ButtonTextStringWithLength = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lexruntimeservice#ButtonTextStringWithLength', name: 'ButtonTextStringWithLength', traits: {"smithy.api#length" => {"min" => 1, "max" => 15}})
    ButtonValueStringWithLength = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lexruntimeservice#ButtonValueStringWithLength', name: 'ButtonValueStringWithLength', traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}})
    ConfirmationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.lexruntimeservice#ConfirmationStatus', name: 'ConfirmationStatus')
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexruntimeservice#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ContentType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.lexruntimeservice#ContentType', name: 'ContentType')
    DeleteSessionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexruntimeservice#DeleteSessionRequest', name: 'DeleteSessionRequest')
    DeleteSessionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexruntimeservice#DeleteSessionResponse', name: 'DeleteSessionResponse')
    DependencyFailedException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexruntimeservice#DependencyFailedException', name: 'DependencyFailedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 424})
    DialogAction = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexruntimeservice#DialogAction', name: 'DialogAction')
    DialogActionType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.lexruntimeservice#DialogActionType', name: 'DialogActionType')
    DialogState = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.lexruntimeservice#DialogState', name: 'DialogState')
    Double = ::Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.lexruntimeservice#Double', name: 'Double', traits: {"smithy.api#default" => 0})
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lexruntimeservice#ErrorMessage', name: 'ErrorMessage')
    FulfillmentState = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.lexruntimeservice#FulfillmentState', name: 'FulfillmentState')
    GenericAttachment = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexruntimeservice#GenericAttachment', name: 'GenericAttachment')
    GetSessionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexruntimeservice#GetSessionRequest', name: 'GetSessionRequest')
    GetSessionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexruntimeservice#GetSessionResponse', name: 'GetSessionResponse')
    HttpContentType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lexruntimeservice#HttpContentType', name: 'HttpContentType')
    IntentConfidence = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexruntimeservice#IntentConfidence', name: 'IntentConfidence')
    IntentList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.lexruntimeservice#IntentList', name: 'IntentList', traits: {"smithy.api#length" => {"min" => 0, "max" => 4}})
    IntentName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lexruntimeservice#IntentName', name: 'IntentName')
    IntentSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexruntimeservice#IntentSummary', name: 'IntentSummary')
    IntentSummaryCheckpointLabel = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lexruntimeservice#IntentSummaryCheckpointLabel', name: 'IntentSummaryCheckpointLabel', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9-]+$"})
    IntentSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.lexruntimeservice#IntentSummaryList', name: 'IntentSummaryList', traits: {"smithy.api#length" => {"min" => 0, "max" => 3}})
    InternalFailureException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexruntimeservice#InternalFailureException', name: 'InternalFailureException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    LimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexruntimeservice#LimitExceededException', name: 'LimitExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    LoopDetectedException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexruntimeservice#LoopDetectedException', name: 'LoopDetectedException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 508})
    MessageFormatType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.lexruntimeservice#MessageFormatType', name: 'MessageFormatType')
    NotAcceptableException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexruntimeservice#NotAcceptableException', name: 'NotAcceptableException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 406})
    NotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexruntimeservice#NotFoundException', name: 'NotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ParameterName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lexruntimeservice#ParameterName', name: 'ParameterName', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    PostContentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexruntimeservice#PostContentRequest', name: 'PostContentRequest')
    PostContentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexruntimeservice#PostContentResponse', name: 'PostContentResponse')
    PostTextRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexruntimeservice#PostTextRequest', name: 'PostTextRequest')
    PostTextResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexruntimeservice#PostTextResponse', name: 'PostTextResponse')
    PredictedIntent = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexruntimeservice#PredictedIntent', name: 'PredictedIntent')
    PutSessionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexruntimeservice#PutSessionRequest', name: 'PutSessionRequest')
    PutSessionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexruntimeservice#PutSessionResponse', name: 'PutSessionResponse')
    RequestTimeoutException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexruntimeservice#RequestTimeoutException', name: 'RequestTimeoutException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 408})
    ResponseCard = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexruntimeservice#ResponseCard', name: 'ResponseCard')
    SensitiveString = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lexruntimeservice#SensitiveString', name: 'SensitiveString', traits: {"smithy.api#length" => {"min" => 1, "max" => 1366}, "smithy.api#sensitive" => {}})
    SensitiveStringUnbounded = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lexruntimeservice#SensitiveStringUnbounded', name: 'SensitiveStringUnbounded', traits: {"smithy.api#sensitive" => {}})
    SentimentLabel = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lexruntimeservice#SentimentLabel', name: 'SentimentLabel')
    SentimentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexruntimeservice#SentimentResponse', name: 'SentimentResponse')
    SentimentScore = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lexruntimeservice#SentimentScore', name: 'SentimentScore')
    String = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lexruntimeservice#String', name: 'String')
    StringMap = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.lexruntimeservice#StringMap', name: 'StringMap', traits: {"smithy.api#sensitive" => {}})
    StringUrlWithLength = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lexruntimeservice#StringUrlWithLength', name: 'StringUrlWithLength', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    StringWithLength = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lexruntimeservice#StringWithLength', name: 'StringWithLength', traits: {"smithy.api#length" => {"min" => 1, "max" => 80}})
    SynthesizedJsonActiveContextsString = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lexruntimeservice#SynthesizedJsonActiveContextsString', name: 'SynthesizedJsonActiveContextsString', traits: {"smithy.api#mediaType" => "application/json", "smithy.api#sensitive" => {}})
    SynthesizedJsonAttributesString = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lexruntimeservice#SynthesizedJsonAttributesString', name: 'SynthesizedJsonAttributesString', traits: {"smithy.api#mediaType" => "application/json", "smithy.api#sensitive" => {}})
    SynthesizedJsonString = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lexruntimeservice#SynthesizedJsonString', name: 'SynthesizedJsonString', traits: {"smithy.api#mediaType" => "application/json"})
    Text = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lexruntimeservice#Text', name: 'Text', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#sensitive" => {}})
    UnsupportedMediaTypeException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.lexruntimeservice#UnsupportedMediaTypeException', name: 'UnsupportedMediaTypeException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 415})
    UserId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.lexruntimeservice#UserId', name: 'UserId', traits: {"smithy.api#length" => {"min" => 2, "max" => 100}, "smithy.api#pattern" => "^[0-9a-zA-Z._:-]+$"})
    GenericAttachmentList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.lexruntimeservice#genericAttachmentList', name: 'GenericAttachmentList', traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    ListOfButtons = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.lexruntimeservice#listOfButtons', name: 'ListOfButtons', traits: {"smithy.api#length" => {"min" => 0, "max" => 5}})

    ActiveContext.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActiveContextName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    ActiveContext.add_member(:time_to_live, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActiveContextTimeToLive, location_name: 'timeToLive', traits: {"smithy.api#required" => {}}))
    ActiveContext.add_member(:parameters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActiveContextParametersMap, location_name: 'parameters', traits: {"smithy.api#required" => {}}))
    ActiveContext.type = Types::ActiveContext
    ActiveContextParametersMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterName)
    ActiveContextParametersMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Text)
    ActiveContextTimeToLive.add_member(:time_to_live_in_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActiveContextTimeToLiveInSeconds, location_name: 'timeToLiveInSeconds'))
    ActiveContextTimeToLive.add_member(:turns_to_live, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActiveContextTurnsToLive, location_name: 'turnsToLive'))
    ActiveContextTimeToLive.type = Types::ActiveContextTimeToLive
    ActiveContextsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActiveContext)
    BadGatewayException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    BadGatewayException.type = Types::BadGatewayException
    BadRequestException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    BadRequestException.type = Types::BadRequestException
    Button.add_member(:text, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ButtonTextStringWithLength, location_name: 'text', traits: {"smithy.api#required" => {}}))
    Button.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ButtonValueStringWithLength, location_name: 'value', traits: {"smithy.api#required" => {}}))
    Button.type = Types::Button
    ConfirmationStatus.add_member(:none, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NONE', traits: {"smithy.api#enumValue" => "None"}))
    ConfirmationStatus.add_member(:confirmed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONFIRMED', traits: {"smithy.api#enumValue" => "Confirmed"}))
    ConfirmationStatus.add_member(:denied, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DENIED', traits: {"smithy.api#enumValue" => "Denied"}))
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    ConflictException.type = Types::ConflictException
    ContentType.add_member(:generic, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GENERIC', traits: {"smithy.api#enumValue" => "application/vnd.amazonaws.card.generic"}))
    DeleteSessionRequest.add_member(:bot_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BotName, location_name: 'botName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteSessionRequest.add_member(:bot_alias, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BotAlias, location_name: 'botAlias', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteSessionRequest.add_member(:user_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserId, location_name: 'userId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteSessionRequest.type = Types::DeleteSessionRequest
    DeleteSessionResponse.add_member(:bot_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BotName, location_name: 'botName'))
    DeleteSessionResponse.add_member(:bot_alias, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BotAlias, location_name: 'botAlias'))
    DeleteSessionResponse.add_member(:user_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserId, location_name: 'userId'))
    DeleteSessionResponse.add_member(:session_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'sessionId'))
    DeleteSessionResponse.type = Types::DeleteSessionResponse
    DependencyFailedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    DependencyFailedException.type = Types::DependencyFailedException
    DialogAction.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DialogActionType, location_name: 'type', traits: {"smithy.api#required" => {}}))
    DialogAction.add_member(:intent_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntentName, location_name: 'intentName'))
    DialogAction.add_member(:slots, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringMap, location_name: 'slots'))
    DialogAction.add_member(:slot_to_elicit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'slotToElicit'))
    DialogAction.add_member(:fulfillment_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FulfillmentState, location_name: 'fulfillmentState'))
    DialogAction.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Text, location_name: 'message'))
    DialogAction.add_member(:message_format, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageFormatType, location_name: 'messageFormat'))
    DialogAction.type = Types::DialogAction
    DialogActionType.add_member(:elicit_intent, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ELICIT_INTENT', traits: {"smithy.api#enumValue" => "ElicitIntent"}))
    DialogActionType.add_member(:confirm_intent, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONFIRM_INTENT', traits: {"smithy.api#enumValue" => "ConfirmIntent"}))
    DialogActionType.add_member(:elicit_slot, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ELICIT_SLOT', traits: {"smithy.api#enumValue" => "ElicitSlot"}))
    DialogActionType.add_member(:close, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CLOSE', traits: {"smithy.api#enumValue" => "Close"}))
    DialogActionType.add_member(:delegate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELEGATE', traits: {"smithy.api#enumValue" => "Delegate"}))
    DialogState.add_member(:elicit_intent, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ELICIT_INTENT', traits: {"smithy.api#enumValue" => "ElicitIntent"}))
    DialogState.add_member(:confirm_intent, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONFIRM_INTENT', traits: {"smithy.api#enumValue" => "ConfirmIntent"}))
    DialogState.add_member(:elicit_slot, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ELICIT_SLOT', traits: {"smithy.api#enumValue" => "ElicitSlot"}))
    DialogState.add_member(:fulfilled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FULFILLED', traits: {"smithy.api#enumValue" => "Fulfilled"}))
    DialogState.add_member(:ready_for_fulfillment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'READY_FOR_FULFILLMENT', traits: {"smithy.api#enumValue" => "ReadyForFulfillment"}))
    DialogState.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "Failed"}))
    FulfillmentState.add_member(:fulfilled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FULFILLED', traits: {"smithy.api#enumValue" => "Fulfilled"}))
    FulfillmentState.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "Failed"}))
    FulfillmentState.add_member(:ready_for_fulfillment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'READY_FOR_FULFILLMENT', traits: {"smithy.api#enumValue" => "ReadyForFulfillment"}))
    GenericAttachment.add_member(:title, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringWithLength, location_name: 'title'))
    GenericAttachment.add_member(:sub_title, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringWithLength, location_name: 'subTitle'))
    GenericAttachment.add_member(:attachment_link_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringUrlWithLength, location_name: 'attachmentLinkUrl'))
    GenericAttachment.add_member(:image_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringUrlWithLength, location_name: 'imageUrl'))
    GenericAttachment.add_member(:buttons, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfButtons, location_name: 'buttons'))
    GenericAttachment.type = Types::GenericAttachment
    GetSessionRequest.add_member(:bot_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BotName, location_name: 'botName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSessionRequest.add_member(:bot_alias, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BotAlias, location_name: 'botAlias', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSessionRequest.add_member(:user_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserId, location_name: 'userId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSessionRequest.add_member(:checkpoint_label_filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntentSummaryCheckpointLabel, location_name: 'checkpointLabelFilter', traits: {"smithy.api#httpQuery" => "checkpointLabelFilter"}))
    GetSessionRequest.type = Types::GetSessionRequest
    GetSessionResponse.add_member(:recent_intent_summary_view, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntentSummaryList, location_name: 'recentIntentSummaryView'))
    GetSessionResponse.add_member(:session_attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringMap, location_name: 'sessionAttributes'))
    GetSessionResponse.add_member(:session_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'sessionId'))
    GetSessionResponse.add_member(:dialog_action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DialogAction, location_name: 'dialogAction'))
    GetSessionResponse.add_member(:active_contexts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActiveContextsList, location_name: 'activeContexts'))
    GetSessionResponse.type = Types::GetSessionResponse
    IntentConfidence.add_member(:score, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'score', traits: {"smithy.api#default" => 0}))
    IntentConfidence.type = Types::IntentConfidence
    IntentList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PredictedIntent)
    IntentSummary.add_member(:intent_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntentName, location_name: 'intentName'))
    IntentSummary.add_member(:checkpoint_label, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntentSummaryCheckpointLabel, location_name: 'checkpointLabel'))
    IntentSummary.add_member(:slots, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringMap, location_name: 'slots'))
    IntentSummary.add_member(:confirmation_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfirmationStatus, location_name: 'confirmationStatus'))
    IntentSummary.add_member(:dialog_action_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DialogActionType, location_name: 'dialogActionType', traits: {"smithy.api#required" => {}}))
    IntentSummary.add_member(:fulfillment_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FulfillmentState, location_name: 'fulfillmentState'))
    IntentSummary.add_member(:slot_to_elicit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'slotToElicit'))
    IntentSummary.type = Types::IntentSummary
    IntentSummaryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntentSummary)
    InternalFailureException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    InternalFailureException.type = Types::InternalFailureException
    LimitExceededException.add_member(:retry_after_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'retryAfterSeconds', traits: {"smithy.api#httpHeader" => "Retry-After"}))
    LimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    LimitExceededException.type = Types::LimitExceededException
    LoopDetectedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    LoopDetectedException.type = Types::LoopDetectedException
    MessageFormatType.add_member(:plain_text, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PLAIN_TEXT', traits: {"smithy.api#enumValue" => "PlainText"}))
    MessageFormatType.add_member(:custom_payload, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CUSTOM_PAYLOAD', traits: {"smithy.api#enumValue" => "CustomPayload"}))
    MessageFormatType.add_member(:ssml, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SSML', traits: {"smithy.api#enumValue" => "SSML"}))
    MessageFormatType.add_member(:composite, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPOSITE', traits: {"smithy.api#enumValue" => "Composite"}))
    NotAcceptableException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    NotAcceptableException.type = Types::NotAcceptableException
    NotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    NotFoundException.type = Types::NotFoundException
    PostContentRequest.add_member(:bot_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BotName, location_name: 'botName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PostContentRequest.add_member(:bot_alias, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BotAlias, location_name: 'botAlias', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PostContentRequest.add_member(:user_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserId, location_name: 'userId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PostContentRequest.add_member(:session_attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SynthesizedJsonAttributesString, location_name: 'sessionAttributes', traits: {"smithy.api#httpHeader" => "x-amz-lex-session-attributes"}))
    PostContentRequest.add_member(:request_attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SynthesizedJsonAttributesString, location_name: 'requestAttributes', traits: {"smithy.api#httpHeader" => "x-amz-lex-request-attributes"}))
    PostContentRequest.add_member(:content_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HttpContentType, location_name: 'contentType', traits: {"smithy.api#httpHeader" => "Content-Type", "smithy.api#required" => {}}))
    PostContentRequest.add_member(:accept, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Accept, location_name: 'accept', traits: {"smithy.api#httpHeader" => "Accept"}))
    PostContentRequest.add_member(:input_stream, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BlobStream, location_name: 'inputStream', traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    PostContentRequest.add_member(:active_contexts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SynthesizedJsonActiveContextsString, location_name: 'activeContexts', traits: {"smithy.api#httpHeader" => "x-amz-lex-active-contexts"}))
    PostContentRequest[:http_payload] = :input_stream
    PostContentRequest[:http_payload_member] = PostContentRequest.member(:input_stream)
    PostContentRequest.type = Types::PostContentRequest
    PostContentResponse.add_member(:content_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HttpContentType, location_name: 'contentType', traits: {"smithy.api#httpHeader" => "Content-Type"}))
    PostContentResponse.add_member(:intent_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntentName, location_name: 'intentName', traits: {"smithy.api#httpHeader" => "x-amz-lex-intent-name"}))
    PostContentResponse.add_member(:nlu_intent_confidence, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SynthesizedJsonString, location_name: 'nluIntentConfidence', traits: {"smithy.api#httpHeader" => "x-amz-lex-nlu-intent-confidence"}))
    PostContentResponse.add_member(:alternative_intents, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SynthesizedJsonString, location_name: 'alternativeIntents', traits: {"smithy.api#httpHeader" => "x-amz-lex-alternative-intents"}))
    PostContentResponse.add_member(:slots, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SynthesizedJsonString, location_name: 'slots', traits: {"smithy.api#httpHeader" => "x-amz-lex-slots"}))
    PostContentResponse.add_member(:session_attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SynthesizedJsonString, location_name: 'sessionAttributes', traits: {"smithy.api#httpHeader" => "x-amz-lex-session-attributes"}))
    PostContentResponse.add_member(:sentiment_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'sentimentResponse', traits: {"smithy.api#httpHeader" => "x-amz-lex-sentiment"}))
    PostContentResponse.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Text, location_name: 'message', traits: {"smithy.api#deprecated" => {"message" => "The message field is deprecated, use the encodedMessage field instead. The message field is available only in the de-DE, en-AU, en-GB, en-US, es-419, es-ES, es-US, fr-CA, fr-FR and it-IT locales."}, "smithy.api#httpHeader" => "x-amz-lex-message"}))
    PostContentResponse.add_member(:encoded_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveString, location_name: 'encodedMessage', traits: {"smithy.api#httpHeader" => "x-amz-lex-encoded-message"}))
    PostContentResponse.add_member(:message_format, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageFormatType, location_name: 'messageFormat', traits: {"smithy.api#httpHeader" => "x-amz-lex-message-format"}))
    PostContentResponse.add_member(:dialog_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DialogState, location_name: 'dialogState', traits: {"smithy.api#httpHeader" => "x-amz-lex-dialog-state"}))
    PostContentResponse.add_member(:slot_to_elicit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'slotToElicit', traits: {"smithy.api#httpHeader" => "x-amz-lex-slot-to-elicit"}))
    PostContentResponse.add_member(:input_transcript, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'inputTranscript', traits: {"smithy.api#deprecated" => {"message" => "The inputTranscript field is deprecated, use the encodedInputTranscript field instead. The inputTranscript field is available only in the de-DE, en-AU, en-GB, en-US, es-419, es-ES, es-US, fr-CA, fr-FR and it-IT locales."}, "smithy.api#httpHeader" => "x-amz-lex-input-transcript"}))
    PostContentResponse.add_member(:encoded_input_transcript, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveStringUnbounded, location_name: 'encodedInputTranscript', traits: {"smithy.api#httpHeader" => "x-amz-lex-encoded-input-transcript"}))
    PostContentResponse.add_member(:audio_stream, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BlobStream, location_name: 'audioStream', traits: {"smithy.api#default" => "", "smithy.api#httpPayload" => {}}))
    PostContentResponse.add_member(:bot_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BotVersion, location_name: 'botVersion', traits: {"smithy.api#httpHeader" => "x-amz-lex-bot-version"}))
    PostContentResponse.add_member(:session_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'sessionId', traits: {"smithy.api#httpHeader" => "x-amz-lex-session-id"}))
    PostContentResponse.add_member(:active_contexts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SynthesizedJsonActiveContextsString, location_name: 'activeContexts', traits: {"smithy.api#httpHeader" => "x-amz-lex-active-contexts"}))
    PostContentResponse[:http_payload] = :audio_stream
    PostContentResponse[:http_payload_member] = PostContentResponse.member(:audio_stream)
    PostContentResponse.type = Types::PostContentResponse
    PostTextRequest.add_member(:bot_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BotName, location_name: 'botName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PostTextRequest.add_member(:bot_alias, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BotAlias, location_name: 'botAlias', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PostTextRequest.add_member(:user_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserId, location_name: 'userId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PostTextRequest.add_member(:session_attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringMap, location_name: 'sessionAttributes'))
    PostTextRequest.add_member(:request_attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringMap, location_name: 'requestAttributes'))
    PostTextRequest.add_member(:input_text, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Text, location_name: 'inputText', traits: {"smithy.api#required" => {}}))
    PostTextRequest.add_member(:active_contexts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActiveContextsList, location_name: 'activeContexts'))
    PostTextRequest.type = Types::PostTextRequest
    PostTextResponse.add_member(:intent_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntentName, location_name: 'intentName'))
    PostTextResponse.add_member(:nlu_intent_confidence, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntentConfidence, location_name: 'nluIntentConfidence'))
    PostTextResponse.add_member(:alternative_intents, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntentList, location_name: 'alternativeIntents'))
    PostTextResponse.add_member(:slots, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringMap, location_name: 'slots'))
    PostTextResponse.add_member(:session_attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringMap, location_name: 'sessionAttributes'))
    PostTextResponse.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Text, location_name: 'message'))
    PostTextResponse.add_member(:sentiment_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SentimentResponse, location_name: 'sentimentResponse'))
    PostTextResponse.add_member(:message_format, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageFormatType, location_name: 'messageFormat'))
    PostTextResponse.add_member(:dialog_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DialogState, location_name: 'dialogState'))
    PostTextResponse.add_member(:slot_to_elicit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'slotToElicit'))
    PostTextResponse.add_member(:response_card, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResponseCard, location_name: 'responseCard'))
    PostTextResponse.add_member(:session_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'sessionId'))
    PostTextResponse.add_member(:bot_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BotVersion, location_name: 'botVersion'))
    PostTextResponse.add_member(:active_contexts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActiveContextsList, location_name: 'activeContexts'))
    PostTextResponse.type = Types::PostTextResponse
    PredictedIntent.add_member(:intent_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntentName, location_name: 'intentName'))
    PredictedIntent.add_member(:nlu_intent_confidence, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntentConfidence, location_name: 'nluIntentConfidence'))
    PredictedIntent.add_member(:slots, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringMap, location_name: 'slots'))
    PredictedIntent.type = Types::PredictedIntent
    PutSessionRequest.add_member(:bot_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BotName, location_name: 'botName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutSessionRequest.add_member(:bot_alias, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BotAlias, location_name: 'botAlias', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutSessionRequest.add_member(:user_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserId, location_name: 'userId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutSessionRequest.add_member(:session_attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringMap, location_name: 'sessionAttributes'))
    PutSessionRequest.add_member(:dialog_action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DialogAction, location_name: 'dialogAction'))
    PutSessionRequest.add_member(:recent_intent_summary_view, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntentSummaryList, location_name: 'recentIntentSummaryView'))
    PutSessionRequest.add_member(:accept, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Accept, location_name: 'accept', traits: {"smithy.api#httpHeader" => "Accept"}))
    PutSessionRequest.add_member(:active_contexts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActiveContextsList, location_name: 'activeContexts'))
    PutSessionRequest.type = Types::PutSessionRequest
    PutSessionResponse.add_member(:content_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HttpContentType, location_name: 'contentType', traits: {"smithy.api#httpHeader" => "Content-Type"}))
    PutSessionResponse.add_member(:intent_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IntentName, location_name: 'intentName', traits: {"smithy.api#httpHeader" => "x-amz-lex-intent-name"}))
    PutSessionResponse.add_member(:slots, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SynthesizedJsonString, location_name: 'slots', traits: {"smithy.api#httpHeader" => "x-amz-lex-slots"}))
    PutSessionResponse.add_member(:session_attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SynthesizedJsonString, location_name: 'sessionAttributes', traits: {"smithy.api#httpHeader" => "x-amz-lex-session-attributes"}))
    PutSessionResponse.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Text, location_name: 'message', traits: {"smithy.api#deprecated" => {"message" => "The message field is deprecated, use the encodedMessage field instead. The message field is available only in the de-DE, en-AU, en-GB, en-US, es-419, es-ES, es-US, fr-CA, fr-FR and it-IT locales."}, "smithy.api#httpHeader" => "x-amz-lex-message"}))
    PutSessionResponse.add_member(:encoded_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveString, location_name: 'encodedMessage', traits: {"smithy.api#httpHeader" => "x-amz-lex-encoded-message"}))
    PutSessionResponse.add_member(:message_format, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageFormatType, location_name: 'messageFormat', traits: {"smithy.api#httpHeader" => "x-amz-lex-message-format"}))
    PutSessionResponse.add_member(:dialog_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DialogState, location_name: 'dialogState', traits: {"smithy.api#httpHeader" => "x-amz-lex-dialog-state"}))
    PutSessionResponse.add_member(:slot_to_elicit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'slotToElicit', traits: {"smithy.api#httpHeader" => "x-amz-lex-slot-to-elicit"}))
    PutSessionResponse.add_member(:audio_stream, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BlobStream, location_name: 'audioStream', traits: {"smithy.api#default" => "", "smithy.api#httpPayload" => {}}))
    PutSessionResponse.add_member(:session_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'sessionId', traits: {"smithy.api#httpHeader" => "x-amz-lex-session-id"}))
    PutSessionResponse.add_member(:active_contexts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SynthesizedJsonActiveContextsString, location_name: 'activeContexts', traits: {"smithy.api#httpHeader" => "x-amz-lex-active-contexts"}))
    PutSessionResponse[:http_payload] = :audio_stream
    PutSessionResponse[:http_payload_member] = PutSessionResponse.member(:audio_stream)
    PutSessionResponse.type = Types::PutSessionResponse
    RequestTimeoutException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    RequestTimeoutException.type = Types::RequestTimeoutException
    ResponseCard.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'version'))
    ResponseCard.add_member(:content_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContentType, location_name: 'contentType'))
    ResponseCard.add_member(:generic_attachments, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericAttachmentList, location_name: 'genericAttachments'))
    ResponseCard.type = Types::ResponseCard
    SentimentResponse.add_member(:sentiment_label, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SentimentLabel, location_name: 'sentimentLabel'))
    SentimentResponse.add_member(:sentiment_score, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SentimentScore, location_name: 'sentimentScore'))
    SentimentResponse.type = Types::SentimentResponse
    StringMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    StringMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    UnsupportedMediaTypeException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    UnsupportedMediaTypeException.type = Types::UnsupportedMediaTypeException
    GenericAttachmentList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GenericAttachment)
    ListOfButtons.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Button)

    AWSDeepSenseRunTimeService = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.lexruntimeservice#AWSDeepSenseRunTimeService"
      service.name = "AWSDeepSenseRunTimeService"
      service.version = "2016-11-28"
      service.traits = {"aws.api#service" => {"sdkId" => "Lex Runtime Service", "arnNamespace" => "lex", "cloudFormationName" => "LexRuntimeService", "cloudTrailEventSource" => "lexruntimeservice.amazonaws.com", "docId" => "runtime.lex-2016-11-28", "endpointPrefix" => "runtime.lex"}, "aws.auth#sigv4" => {"name" => "lex"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "Amazon Lex Runtime Service"}
      service.add_operation(:delete_session, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexruntimeservice#DeleteSession"
        operation.name = "DeleteSession"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSessionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSessionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/bot/{botName}/alias/{botAlias}/user/{userId}/session", "code" => 200}}
      end)
      service.add_operation(:get_session, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexruntimeservice#GetSession"
        operation.name = "GetSession"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSessionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSessionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/bot/{botName}/alias/{botAlias}/user/{userId}/session", "code" => 200}}
      end)
      service.add_operation(:post_content, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexruntimeservice#PostContent"
        operation.name = "PostContent"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PostContentRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PostContentResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadGatewayException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DependencyFailedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LoopDetectedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAcceptableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestTimeoutException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnsupportedMediaTypeException)
        operation.traits = {"aws.auth#unsignedPayload" => {}, "smithy.api#auth" => ["aws.auth#sigv4"], "smithy.api#http" => {"method" => "POST", "uri" => "/bot/{botName}/alias/{botAlias}/user/{userId}/content", "code" => 200}}
      end)
      service.add_operation(:post_text, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexruntimeservice#PostText"
        operation.name = "PostText"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PostTextRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PostTextResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadGatewayException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DependencyFailedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LoopDetectedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/bot/{botName}/alias/{botAlias}/user/{userId}/text", "code" => 200}}
      end)
      service.add_operation(:put_session, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.lexruntimeservice#PutSession"
        operation.name = "PutSession"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutSessionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutSessionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadGatewayException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: DependencyFailedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotAcceptableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/bot/{botName}/alias/{botAlias}/user/{userId}/session", "code" => 200}}
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
