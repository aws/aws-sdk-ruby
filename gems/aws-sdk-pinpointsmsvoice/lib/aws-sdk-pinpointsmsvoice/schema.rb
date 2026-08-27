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

    AlreadyExistsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    AlreadyExistsException.type = Types::AlreadyExistsException
    BadRequestException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    BadRequestException.type = Types::BadRequestException
    CallInstructionsMessageType.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "Text"))
    CallInstructionsMessageType.type = Types::CallInstructionsMessageType
    CloudWatchLogsDestination.add_member(:iam_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "IamRoleArn"))
    CloudWatchLogsDestination.add_member(:log_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LogGroupArn"))
    CloudWatchLogsDestination.type = Types::CloudWatchLogsDestination
    ConfigurationSets.member = ::Smithy::Schema::Shapes::MemberShape.new(target: WordCharactersWithDelimiters, name: "member")
    CreateConfigurationSetEventDestinationRequest.add_member(:configuration_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ConfigurationSetName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateConfigurationSetEventDestinationRequest.add_member(:event_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: EventDestinationDefinition, name: "EventDestination"))
    CreateConfigurationSetEventDestinationRequest.add_member(:event_destination_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "EventDestinationName"))
    CreateConfigurationSetEventDestinationRequest.type = Types::CreateConfigurationSetEventDestinationRequest
    CreateConfigurationSetEventDestinationResponse.type = Types::CreateConfigurationSetEventDestinationResponse
    CreateConfigurationSetRequest.add_member(:configuration_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: WordCharactersWithDelimiters, name: "ConfigurationSetName"))
    CreateConfigurationSetRequest.type = Types::CreateConfigurationSetRequest
    CreateConfigurationSetResponse.type = Types::CreateConfigurationSetResponse
    DeleteConfigurationSetEventDestinationRequest.add_member(:configuration_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ConfigurationSetName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteConfigurationSetEventDestinationRequest.add_member(:event_destination_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EventDestinationName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteConfigurationSetEventDestinationRequest.type = Types::DeleteConfigurationSetEventDestinationRequest
    DeleteConfigurationSetEventDestinationResponse.type = Types::DeleteConfigurationSetEventDestinationResponse
    DeleteConfigurationSetRequest.add_member(:configuration_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ConfigurationSetName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteConfigurationSetRequest.type = Types::DeleteConfigurationSetRequest
    DeleteConfigurationSetResponse.type = Types::DeleteConfigurationSetResponse
    EventDestination.add_member(:cloud_watch_logs_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchLogsDestination, name: "CloudWatchLogsDestination"))
    EventDestination.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Enabled"))
    EventDestination.add_member(:kinesis_firehose_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: KinesisFirehoseDestination, name: "KinesisFirehoseDestination"))
    EventDestination.add_member(:matching_event_types, ::Smithy::Schema::Shapes::MemberShape.new(target: EventTypes, name: "MatchingEventTypes"))
    EventDestination.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name"))
    EventDestination.add_member(:sns_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: SnsDestination, name: "SnsDestination"))
    EventDestination.type = Types::EventDestination
    EventDestinationDefinition.add_member(:cloud_watch_logs_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchLogsDestination, name: "CloudWatchLogsDestination"))
    EventDestinationDefinition.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Enabled"))
    EventDestinationDefinition.add_member(:kinesis_firehose_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: KinesisFirehoseDestination, name: "KinesisFirehoseDestination"))
    EventDestinationDefinition.add_member(:matching_event_types, ::Smithy::Schema::Shapes::MemberShape.new(target: EventTypes, name: "MatchingEventTypes"))
    EventDestinationDefinition.add_member(:sns_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: SnsDestination, name: "SnsDestination"))
    EventDestinationDefinition.type = Types::EventDestinationDefinition
    EventDestinations.member = ::Smithy::Schema::Shapes::MemberShape.new(target: EventDestination, name: "member")
    EventType.add_member(:initiated_call, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INITIATED_CALL", traits: {"smithy.api#enumValue" => "INITIATED_CALL"}))
    EventType.add_member(:ringing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RINGING", traits: {"smithy.api#enumValue" => "RINGING"}))
    EventType.add_member(:answered, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ANSWERED", traits: {"smithy.api#enumValue" => "ANSWERED"}))
    EventType.add_member(:completed_call, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETED_CALL", traits: {"smithy.api#enumValue" => "COMPLETED_CALL"}))
    EventType.add_member(:busy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BUSY", traits: {"smithy.api#enumValue" => "BUSY"}))
    EventType.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    EventType.add_member(:no_answer, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NO_ANSWER", traits: {"smithy.api#enumValue" => "NO_ANSWER"}))
    EventTypes.member = ::Smithy::Schema::Shapes::MemberShape.new(target: EventType, name: "member")
    GetConfigurationSetEventDestinationsRequest.add_member(:configuration_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ConfigurationSetName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetConfigurationSetEventDestinationsRequest.type = Types::GetConfigurationSetEventDestinationsRequest
    GetConfigurationSetEventDestinationsResponse.add_member(:event_destinations, ::Smithy::Schema::Shapes::MemberShape.new(target: EventDestinations, name: "EventDestinations"))
    GetConfigurationSetEventDestinationsResponse.type = Types::GetConfigurationSetEventDestinationsResponse
    InternalServiceErrorException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    InternalServiceErrorException.type = Types::InternalServiceErrorException
    KinesisFirehoseDestination.add_member(:delivery_stream_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DeliveryStreamArn"))
    KinesisFirehoseDestination.add_member(:iam_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "IamRoleArn"))
    KinesisFirehoseDestination.type = Types::KinesisFirehoseDestination
    LimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    LimitExceededException.type = Types::LimitExceededException
    ListConfigurationSetsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListConfigurationSetsRequest.add_member(:page_size, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "PageSize", traits: {"smithy.api#httpQuery" => "PageSize"}))
    ListConfigurationSetsRequest.type = Types::ListConfigurationSetsRequest
    ListConfigurationSetsResponse.add_member(:configuration_sets, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationSets, name: "ConfigurationSets"))
    ListConfigurationSetsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextTokenString, name: "NextToken"))
    ListConfigurationSetsResponse.type = Types::ListConfigurationSetsResponse
    NotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    NotFoundException.type = Types::NotFoundException
    PlainTextMessageType.add_member(:language_code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LanguageCode"))
    PlainTextMessageType.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "Text"))
    PlainTextMessageType.add_member(:voice_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "VoiceId"))
    PlainTextMessageType.type = Types::PlainTextMessageType
    SSMLMessageType.add_member(:language_code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LanguageCode"))
    SSMLMessageType.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "Text"))
    SSMLMessageType.add_member(:voice_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "VoiceId"))
    SSMLMessageType.type = Types::SSMLMessageType
    SendVoiceMessageRequest.add_member(:caller_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CallerId"))
    SendVoiceMessageRequest.add_member(:configuration_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: WordCharactersWithDelimiters, name: "ConfigurationSetName"))
    SendVoiceMessageRequest.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: VoiceMessageContent, name: "Content"))
    SendVoiceMessageRequest.add_member(:destination_phone_number, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "DestinationPhoneNumber"))
    SendVoiceMessageRequest.add_member(:origination_phone_number, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "OriginationPhoneNumber"))
    SendVoiceMessageRequest.type = Types::SendVoiceMessageRequest
    SendVoiceMessageResponse.add_member(:message_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MessageId"))
    SendVoiceMessageResponse.type = Types::SendVoiceMessageResponse
    SnsDestination.add_member(:topic_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TopicArn"))
    SnsDestination.type = Types::SnsDestination
    TooManyRequestsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    TooManyRequestsException.type = Types::TooManyRequestsException
    UpdateConfigurationSetEventDestinationRequest.add_member(:configuration_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ConfigurationSetName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateConfigurationSetEventDestinationRequest.add_member(:event_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: EventDestinationDefinition, name: "EventDestination"))
    UpdateConfigurationSetEventDestinationRequest.add_member(:event_destination_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EventDestinationName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateConfigurationSetEventDestinationRequest.type = Types::UpdateConfigurationSetEventDestinationRequest
    UpdateConfigurationSetEventDestinationResponse.type = Types::UpdateConfigurationSetEventDestinationResponse
    VoiceMessageContent.add_member(:call_instructions_message, ::Smithy::Schema::Shapes::MemberShape.new(target: CallInstructionsMessageType, name: "CallInstructionsMessage"))
    VoiceMessageContent.add_member(:plain_text_message, ::Smithy::Schema::Shapes::MemberShape.new(target: PlainTextMessageType, name: "PlainTextMessage"))
    VoiceMessageContent.add_member(:ssml_message, ::Smithy::Schema::Shapes::MemberShape.new(target: SSMLMessageType, name: "SSMLMessage"))
    VoiceMessageContent.type = Types::VoiceMessageContent

    PinpointSMSVoice = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.pinpointsmsvoice#PinpointSMSVoice"
      service.name = "PinpointSMSVoice"
      service.version = "2018-09-05"
      service.traits = {"aws.api#service" => {"sdkId" => "Pinpoint SMS Voice", "arnNamespace" => "sms-voice", "cloudFormationName" => "PinpointSMSVoice", "cloudTrailEventSource" => "pinpointsmsvoice.amazonaws.com", "endpointPrefix" => "sms-voice.pinpoint"}, "aws.auth#sigv4" => {"name" => "sms-voice"}, "aws.protocols#restJson1" => {}, "smithy.api#auth" => ["aws.auth#sigv4"], "smithy.api#title" => "Amazon Pinpoint SMS and Voice Service"}
      service.add_operation(:create_configuration_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoice#CreateConfigurationSet"
        operation.name = "CreateConfigurationSet"
        operation.input = CreateConfigurationSetRequest
        operation.output = CreateConfigurationSetResponse
        operation.errors << AlreadyExistsException
        operation.errors << BadRequestException
        operation.errors << InternalServiceErrorException
        operation.errors << LimitExceededException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/sms-voice/configuration-sets", "code" => 200}}
      end)
      service.add_operation(:create_configuration_set_event_destination, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoice#CreateConfigurationSetEventDestination"
        operation.name = "CreateConfigurationSetEventDestination"
        operation.input = CreateConfigurationSetEventDestinationRequest
        operation.output = CreateConfigurationSetEventDestinationResponse
        operation.errors << AlreadyExistsException
        operation.errors << BadRequestException
        operation.errors << InternalServiceErrorException
        operation.errors << LimitExceededException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/sms-voice/configuration-sets/{ConfigurationSetName}/event-destinations", "code" => 200}}
      end)
      service.add_operation(:delete_configuration_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoice#DeleteConfigurationSet"
        operation.name = "DeleteConfigurationSet"
        operation.input = DeleteConfigurationSetRequest
        operation.output = DeleteConfigurationSetResponse
        operation.errors << BadRequestException
        operation.errors << InternalServiceErrorException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/sms-voice/configuration-sets/{ConfigurationSetName}", "code" => 200}}
      end)
      service.add_operation(:delete_configuration_set_event_destination, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoice#DeleteConfigurationSetEventDestination"
        operation.name = "DeleteConfigurationSetEventDestination"
        operation.input = DeleteConfigurationSetEventDestinationRequest
        operation.output = DeleteConfigurationSetEventDestinationResponse
        operation.errors << BadRequestException
        operation.errors << InternalServiceErrorException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/sms-voice/configuration-sets/{ConfigurationSetName}/event-destinations/{EventDestinationName}", "code" => 200}}
      end)
      service.add_operation(:get_configuration_set_event_destinations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoice#GetConfigurationSetEventDestinations"
        operation.name = "GetConfigurationSetEventDestinations"
        operation.input = GetConfigurationSetEventDestinationsRequest
        operation.output = GetConfigurationSetEventDestinationsResponse
        operation.errors << BadRequestException
        operation.errors << InternalServiceErrorException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/sms-voice/configuration-sets/{ConfigurationSetName}/event-destinations", "code" => 200}}
      end)
      service.add_operation(:list_configuration_sets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoice#ListConfigurationSets"
        operation.name = "ListConfigurationSets"
        operation.input = ListConfigurationSetsRequest
        operation.output = ListConfigurationSetsResponse
        operation.errors << BadRequestException
        operation.errors << InternalServiceErrorException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/sms-voice/configuration-sets", "code" => 200}}
      end)
      service.add_operation(:send_voice_message, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoice#SendVoiceMessage"
        operation.name = "SendVoiceMessage"
        operation.input = SendVoiceMessageRequest
        operation.output = SendVoiceMessageResponse
        operation.errors << BadRequestException
        operation.errors << InternalServiceErrorException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/sms-voice/voice/message", "code" => 200}}
      end)
      service.add_operation(:update_configuration_set_event_destination, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointsmsvoice#UpdateConfigurationSetEventDestination"
        operation.name = "UpdateConfigurationSetEventDestination"
        operation.input = UpdateConfigurationSetEventDestinationRequest
        operation.output = UpdateConfigurationSetEventDestinationResponse
        operation.errors << BadRequestException
        operation.errors << InternalServiceErrorException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
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
