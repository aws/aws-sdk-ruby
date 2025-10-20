# frozen_string_literal: true

# This is generated code!

module Aws::PinpointSMSVoice
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AlreadyExistsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoice#AlreadyExistsException", name: "AlreadyExistsException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    BadRequestException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoice#BadRequestException", name: "BadRequestException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.pinpointsmsvoice#Boolean", name: "Boolean")
    CallInstructionsMessageType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoice#CallInstructionsMessageType", name: "CallInstructionsMessageType")
    CloudWatchLogsDestination = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoice#CloudWatchLogsDestination", name: "CloudWatchLogsDestination")
    ConfigurationSets = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pinpointsmsvoice#ConfigurationSets", name: "ConfigurationSets")
    CreateConfigurationSetEventDestinationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoice#CreateConfigurationSetEventDestinationRequest", name: "CreateConfigurationSetEventDestinationRequest")
    CreateConfigurationSetEventDestinationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoice#CreateConfigurationSetEventDestinationResponse", name: "CreateConfigurationSetEventDestinationResponse")
    CreateConfigurationSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoice#CreateConfigurationSetRequest", name: "CreateConfigurationSetRequest")
    CreateConfigurationSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoice#CreateConfigurationSetResponse", name: "CreateConfigurationSetResponse")
    DeleteConfigurationSetEventDestinationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoice#DeleteConfigurationSetEventDestinationRequest", name: "DeleteConfigurationSetEventDestinationRequest")
    DeleteConfigurationSetEventDestinationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoice#DeleteConfigurationSetEventDestinationResponse", name: "DeleteConfigurationSetEventDestinationResponse")
    DeleteConfigurationSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoice#DeleteConfigurationSetRequest", name: "DeleteConfigurationSetRequest")
    DeleteConfigurationSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoice#DeleteConfigurationSetResponse", name: "DeleteConfigurationSetResponse")
    EventDestination = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoice#EventDestination", name: "EventDestination")
    EventDestinationDefinition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoice#EventDestinationDefinition", name: "EventDestinationDefinition")
    EventDestinations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pinpointsmsvoice#EventDestinations", name: "EventDestinations")
    EventType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.pinpointsmsvoice#EventType", name: "EventType")
    EventTypes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pinpointsmsvoice#EventTypes", name: "EventTypes")
    GetConfigurationSetEventDestinationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoice#GetConfigurationSetEventDestinationsRequest", name: "GetConfigurationSetEventDestinationsRequest")
    GetConfigurationSetEventDestinationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoice#GetConfigurationSetEventDestinationsResponse", name: "GetConfigurationSetEventDestinationsResponse")
    InternalServiceErrorException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoice#InternalServiceErrorException", name: "InternalServiceErrorException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    KinesisFirehoseDestination = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoice#KinesisFirehoseDestination", name: "KinesisFirehoseDestination")
    LimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoice#LimitExceededException", name: "LimitExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 412})
    ListConfigurationSetsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoice#ListConfigurationSetsRequest", name: "ListConfigurationSetsRequest")
    ListConfigurationSetsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoice#ListConfigurationSetsResponse", name: "ListConfigurationSetsResponse")
    NextTokenString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoice#NextTokenString", name: "NextTokenString")
    NonEmptyString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoice#NonEmptyString", name: "NonEmptyString")
    NotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoice#NotFoundException", name: "NotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    PlainTextMessageType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoice#PlainTextMessageType", name: "PlainTextMessageType")
    SSMLMessageType = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoice#SSMLMessageType", name: "SSMLMessageType")
    SendVoiceMessageRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoice#SendVoiceMessageRequest", name: "SendVoiceMessageRequest")
    SendVoiceMessageResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoice#SendVoiceMessageResponse", name: "SendVoiceMessageResponse")
    SnsDestination = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoice#SnsDestination", name: "SnsDestination")
    String = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoice#String", name: "String")
    TooManyRequestsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoice#TooManyRequestsException", name: "TooManyRequestsException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    UpdateConfigurationSetEventDestinationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoice#UpdateConfigurationSetEventDestinationRequest", name: "UpdateConfigurationSetEventDestinationRequest")
    UpdateConfigurationSetEventDestinationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoice#UpdateConfigurationSetEventDestinationResponse", name: "UpdateConfigurationSetEventDestinationResponse")
    VoiceMessageContent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointsmsvoice#VoiceMessageContent", name: "VoiceMessageContent")
    WordCharactersWithDelimiters = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointsmsvoice#WordCharactersWithDelimiters", name: "WordCharactersWithDelimiters")

    AlreadyExistsException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    AlreadyExistsException.type = Types::AlreadyExistsException
    BadRequestException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    BadRequestException.type = Types::BadRequestException
    CallInstructionsMessageType.add_member(:text, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Text"))
    CallInstructionsMessageType.type = Types::CallInstructionsMessageType
    CloudWatchLogsDestination.add_member(:iam_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "IamRoleArn"))
    CloudWatchLogsDestination.add_member(:log_group_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "LogGroupArn"))
    CloudWatchLogsDestination.type = Types::CloudWatchLogsDestination
    ConfigurationSets.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: WordCharactersWithDelimiters)
    CreateConfigurationSetEventDestinationRequest.add_member(:configuration_set_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ConfigurationSetName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateConfigurationSetEventDestinationRequest.add_member(:event_destination, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventDestinationDefinition, location_name: "EventDestination"))
    CreateConfigurationSetEventDestinationRequest.add_member(:event_destination_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "EventDestinationName"))
    CreateConfigurationSetEventDestinationRequest.type = Types::CreateConfigurationSetEventDestinationRequest
    CreateConfigurationSetEventDestinationResponse.type = Types::CreateConfigurationSetEventDestinationResponse
    CreateConfigurationSetRequest.add_member(:configuration_set_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WordCharactersWithDelimiters, location_name: "ConfigurationSetName"))
    CreateConfigurationSetRequest.type = Types::CreateConfigurationSetRequest
    CreateConfigurationSetResponse.type = Types::CreateConfigurationSetResponse
    DeleteConfigurationSetEventDestinationRequest.add_member(:configuration_set_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ConfigurationSetName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteConfigurationSetEventDestinationRequest.add_member(:event_destination_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "EventDestinationName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteConfigurationSetEventDestinationRequest.type = Types::DeleteConfigurationSetEventDestinationRequest
    DeleteConfigurationSetEventDestinationResponse.type = Types::DeleteConfigurationSetEventDestinationResponse
    DeleteConfigurationSetRequest.add_member(:configuration_set_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ConfigurationSetName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteConfigurationSetRequest.type = Types::DeleteConfigurationSetRequest
    DeleteConfigurationSetResponse.type = Types::DeleteConfigurationSetResponse
    EventDestination.add_member(:cloud_watch_logs_destination, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudWatchLogsDestination, location_name: "CloudWatchLogsDestination"))
    EventDestination.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "Enabled"))
    EventDestination.add_member(:kinesis_firehose_destination, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KinesisFirehoseDestination, location_name: "KinesisFirehoseDestination"))
    EventDestination.add_member(:matching_event_types, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventTypes, location_name: "MatchingEventTypes"))
    EventDestination.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    EventDestination.add_member(:sns_destination, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SnsDestination, location_name: "SnsDestination"))
    EventDestination.type = Types::EventDestination
    EventDestinationDefinition.add_member(:cloud_watch_logs_destination, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudWatchLogsDestination, location_name: "CloudWatchLogsDestination"))
    EventDestinationDefinition.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "Enabled"))
    EventDestinationDefinition.add_member(:kinesis_firehose_destination, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KinesisFirehoseDestination, location_name: "KinesisFirehoseDestination"))
    EventDestinationDefinition.add_member(:matching_event_types, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventTypes, location_name: "MatchingEventTypes"))
    EventDestinationDefinition.add_member(:sns_destination, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SnsDestination, location_name: "SnsDestination"))
    EventDestinationDefinition.type = Types::EventDestinationDefinition
    EventDestinations.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventDestination)
    EventType.add_member(:initiated_call, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INITIATED_CALL", traits: {"smithy.api#enumValue" => "INITIATED_CALL"}))
    EventType.add_member(:ringing, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RINGING", traits: {"smithy.api#enumValue" => "RINGING"}))
    EventType.add_member(:answered, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ANSWERED", traits: {"smithy.api#enumValue" => "ANSWERED"}))
    EventType.add_member(:completed_call, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "COMPLETED_CALL", traits: {"smithy.api#enumValue" => "COMPLETED_CALL"}))
    EventType.add_member(:busy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BUSY", traits: {"smithy.api#enumValue" => "BUSY"}))
    EventType.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    EventType.add_member(:no_answer, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NO_ANSWER", traits: {"smithy.api#enumValue" => "NO_ANSWER"}))
    EventTypes.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventType)
    GetConfigurationSetEventDestinationsRequest.add_member(:configuration_set_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ConfigurationSetName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetConfigurationSetEventDestinationsRequest.type = Types::GetConfigurationSetEventDestinationsRequest
    GetConfigurationSetEventDestinationsResponse.add_member(:event_destinations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventDestinations, location_name: "EventDestinations"))
    GetConfigurationSetEventDestinationsResponse.type = Types::GetConfigurationSetEventDestinationsResponse
    InternalServiceErrorException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    InternalServiceErrorException.type = Types::InternalServiceErrorException
    KinesisFirehoseDestination.add_member(:delivery_stream_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "DeliveryStreamArn"))
    KinesisFirehoseDestination.add_member(:iam_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "IamRoleArn"))
    KinesisFirehoseDestination.type = Types::KinesisFirehoseDestination
    LimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    LimitExceededException.type = Types::LimitExceededException
    ListConfigurationSetsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListConfigurationSetsRequest.add_member(:page_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "PageSize", traits: {"smithy.api#httpQuery" => "PageSize"}))
    ListConfigurationSetsRequest.type = Types::ListConfigurationSetsRequest
    ListConfigurationSetsResponse.add_member(:configuration_sets, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationSets, location_name: "ConfigurationSets"))
    ListConfigurationSetsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextTokenString, location_name: "NextToken"))
    ListConfigurationSetsResponse.type = Types::ListConfigurationSetsResponse
    NotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    NotFoundException.type = Types::NotFoundException
    PlainTextMessageType.add_member(:language_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "LanguageCode"))
    PlainTextMessageType.add_member(:text, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Text"))
    PlainTextMessageType.add_member(:voice_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "VoiceId"))
    PlainTextMessageType.type = Types::PlainTextMessageType
    SSMLMessageType.add_member(:language_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "LanguageCode"))
    SSMLMessageType.add_member(:text, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Text"))
    SSMLMessageType.add_member(:voice_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "VoiceId"))
    SSMLMessageType.type = Types::SSMLMessageType
    SendVoiceMessageRequest.add_member(:caller_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "CallerId"))
    SendVoiceMessageRequest.add_member(:configuration_set_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WordCharactersWithDelimiters, location_name: "ConfigurationSetName"))
    SendVoiceMessageRequest.add_member(:content, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VoiceMessageContent, location_name: "Content"))
    SendVoiceMessageRequest.add_member(:destination_phone_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "DestinationPhoneNumber"))
    SendVoiceMessageRequest.add_member(:origination_phone_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "OriginationPhoneNumber"))
    SendVoiceMessageRequest.type = Types::SendVoiceMessageRequest
    SendVoiceMessageResponse.add_member(:message_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "MessageId"))
    SendVoiceMessageResponse.type = Types::SendVoiceMessageResponse
    SnsDestination.add_member(:topic_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "TopicArn"))
    SnsDestination.type = Types::SnsDestination
    TooManyRequestsException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    TooManyRequestsException.type = Types::TooManyRequestsException
    UpdateConfigurationSetEventDestinationRequest.add_member(:configuration_set_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "ConfigurationSetName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateConfigurationSetEventDestinationRequest.add_member(:event_destination, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EventDestinationDefinition, location_name: "EventDestination"))
    UpdateConfigurationSetEventDestinationRequest.add_member(:event_destination_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "EventDestinationName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateConfigurationSetEventDestinationRequest.type = Types::UpdateConfigurationSetEventDestinationRequest
    UpdateConfigurationSetEventDestinationResponse.type = Types::UpdateConfigurationSetEventDestinationResponse
    VoiceMessageContent.add_member(:call_instructions_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CallInstructionsMessageType, location_name: "CallInstructionsMessage"))
    VoiceMessageContent.add_member(:plain_text_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlainTextMessageType, location_name: "PlainTextMessage"))
    VoiceMessageContent.add_member(:ssml_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SSMLMessageType, location_name: "SSMLMessage"))
    VoiceMessageContent.type = Types::VoiceMessageContent

    PinpointSMSVoice = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.pinpointsmsvoice#PinpointSMSVoice"
      service.name = "PinpointSMSVoice"
      service.version = "2018-09-05"
      service.traits = {"aws.api#service" => {"sdkId" => "Pinpoint SMS Voice", "arnNamespace" => "sms-voice", "cloudFormationName" => "PinpointSMSVoice", "cloudTrailEventSource" => "pinpointsmsvoice.amazonaws.com", "endpointPrefix" => "sms-voice.pinpoint"}, "aws.auth#sigv4" => {"name" => "sms-voice"}, "aws.protocols#restJson1" => {}, "smithy.api#auth" => ["aws.auth#sigv4"], "smithy.api#title" => "Amazon Pinpoint SMS and Voice Service"}
      service.add_operation(:create_configuration_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoice#CreateConfigurationSet"
        operation.name = "CreateConfigurationSet"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateConfigurationSetRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateConfigurationSetResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AlreadyExistsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/sms-voice/configuration-sets", "code" => 200}}
      end)
      service.add_operation(:create_configuration_set_event_destination, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoice#CreateConfigurationSetEventDestination"
        operation.name = "CreateConfigurationSetEventDestination"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateConfigurationSetEventDestinationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateConfigurationSetEventDestinationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AlreadyExistsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/sms-voice/configuration-sets/{ConfigurationSetName}/event-destinations", "code" => 200}}
      end)
      service.add_operation(:delete_configuration_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoice#DeleteConfigurationSet"
        operation.name = "DeleteConfigurationSet"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteConfigurationSetRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteConfigurationSetResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/sms-voice/configuration-sets/{ConfigurationSetName}", "code" => 200}}
      end)
      service.add_operation(:delete_configuration_set_event_destination, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoice#DeleteConfigurationSetEventDestination"
        operation.name = "DeleteConfigurationSetEventDestination"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteConfigurationSetEventDestinationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteConfigurationSetEventDestinationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/sms-voice/configuration-sets/{ConfigurationSetName}/event-destinations/{EventDestinationName}", "code" => 200}}
      end)
      service.add_operation(:get_configuration_set_event_destinations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoice#GetConfigurationSetEventDestinations"
        operation.name = "GetConfigurationSetEventDestinations"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetConfigurationSetEventDestinationsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetConfigurationSetEventDestinationsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/sms-voice/configuration-sets/{ConfigurationSetName}/event-destinations", "code" => 200}}
      end)
      service.add_operation(:list_configuration_sets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoice#ListConfigurationSets"
        operation.name = "ListConfigurationSets"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListConfigurationSetsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListConfigurationSetsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/sms-voice/configuration-sets", "code" => 200}}
      end)
      service.add_operation(:send_voice_message, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoice#SendVoiceMessage"
        operation.name = "SendVoiceMessage"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SendVoiceMessageRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SendVoiceMessageResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/sms-voice/voice/message", "code" => 200}}
      end)
      service.add_operation(:update_configuration_set_event_destination, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoice#UpdateConfigurationSetEventDestination"
        operation.name = "UpdateConfigurationSetEventDestination"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateConfigurationSetEventDestinationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateConfigurationSetEventDestinationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/sms-voice/configuration-sets/{ConfigurationSetName}/event-destinations/{EventDestinationName}", "code" => 200}}
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
