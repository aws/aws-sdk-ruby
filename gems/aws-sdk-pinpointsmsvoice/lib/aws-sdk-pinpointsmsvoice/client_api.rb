# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::PinpointSMSVoice
  # @api private
  module ClientApi

    include Seahorse::Model

    AlreadyExistsException = Shapes::StructureShape.new(name: 'AlreadyExistsException')
    BadRequestException = Shapes::StructureShape.new(name: 'BadRequestException')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    CallInstructionsMessageType = Shapes::StructureShape.new(name: 'CallInstructionsMessageType')
    CloudWatchLogsDestination = Shapes::StructureShape.new(name: 'CloudWatchLogsDestination')
    ConfigurationSets = Shapes::ListShape.new(name: 'ConfigurationSets')
    CreateConfigurationSetEventDestinationRequest = Shapes::StructureShape.new(name: 'CreateConfigurationSetEventDestinationRequest')
    CreateConfigurationSetEventDestinationResponse = Shapes::StructureShape.new(name: 'CreateConfigurationSetEventDestinationResponse')
    CreateConfigurationSetRequest = Shapes::StructureShape.new(name: 'CreateConfigurationSetRequest')
    CreateConfigurationSetResponse = Shapes::StructureShape.new(name: 'CreateConfigurationSetResponse')
    DeleteConfigurationSetEventDestinationRequest = Shapes::StructureShape.new(name: 'DeleteConfigurationSetEventDestinationRequest')
    DeleteConfigurationSetEventDestinationResponse = Shapes::StructureShape.new(name: 'DeleteConfigurationSetEventDestinationResponse')
    DeleteConfigurationSetRequest = Shapes::StructureShape.new(name: 'DeleteConfigurationSetRequest')
    DeleteConfigurationSetResponse = Shapes::StructureShape.new(name: 'DeleteConfigurationSetResponse')
    EventDestination = Shapes::StructureShape.new(name: 'EventDestination')
    EventDestinationDefinition = Shapes::StructureShape.new(name: 'EventDestinationDefinition')
    EventDestinations = Shapes::ListShape.new(name: 'EventDestinations')
    EventType = Shapes::StringShape.new(name: 'EventType')
    EventTypes = Shapes::ListShape.new(name: 'EventTypes')
    GetConfigurationSetEventDestinationsRequest = Shapes::StructureShape.new(name: 'GetConfigurationSetEventDestinationsRequest')
    GetConfigurationSetEventDestinationsResponse = Shapes::StructureShape.new(name: 'GetConfigurationSetEventDestinationsResponse')
    InternalServiceErrorException = Shapes::StructureShape.new(name: 'InternalServiceErrorException')
    KinesisFirehoseDestination = Shapes::StructureShape.new(name: 'KinesisFirehoseDestination')
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
    ListConfigurationSetsRequest = Shapes::StructureShape.new(name: 'ListConfigurationSetsRequest')
    ListConfigurationSetsResponse = Shapes::StructureShape.new(name: 'ListConfigurationSetsResponse')
    NextTokenString = Shapes::StringShape.new(name: 'NextTokenString')
    NonEmptyString = Shapes::StringShape.new(name: 'NonEmptyString')
    NotFoundException = Shapes::StructureShape.new(name: 'NotFoundException')
    PlainTextMessageType = Shapes::StructureShape.new(name: 'PlainTextMessageType')
    SSMLMessageType = Shapes::StructureShape.new(name: 'SSMLMessageType')
    SendVoiceMessageRequest = Shapes::StructureShape.new(name: 'SendVoiceMessageRequest')
    SendVoiceMessageResponse = Shapes::StructureShape.new(name: 'SendVoiceMessageResponse')
    SnsDestination = Shapes::StructureShape.new(name: 'SnsDestination')
    String = Shapes::StringShape.new(name: 'String')
    TooManyRequestsException = Shapes::StructureShape.new(name: 'TooManyRequestsException')
    UpdateConfigurationSetEventDestinationRequest = Shapes::StructureShape.new(name: 'UpdateConfigurationSetEventDestinationRequest')
    UpdateConfigurationSetEventDestinationResponse = Shapes::StructureShape.new(name: 'UpdateConfigurationSetEventDestinationResponse')
    VoiceMessageContent = Shapes::StructureShape.new(name: 'VoiceMessageContent')
    WordCharactersWithDelimiters = Shapes::StringShape.new(name: 'WordCharactersWithDelimiters')
    __boolean = Shapes::BooleanShape.new(name: '__boolean')
    __double = Shapes::FloatShape.new(name: '__double')
    __integer = Shapes::IntegerShape.new(name: '__integer')
    __long = Shapes::IntegerShape.new(name: '__long')
    __string = Shapes::StringShape.new(name: '__string')
    __timestampIso8601 = Shapes::TimestampShape.new(name: '__timestampIso8601', timestampFormat: "iso8601")
    __timestampUnix = Shapes::TimestampShape.new(name: '__timestampUnix', timestampFormat: "unixTimestamp")

    AlreadyExistsException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    AlreadyExistsException.struct_class = Types::AlreadyExistsException

    BadRequestException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    BadRequestException.struct_class = Types::BadRequestException

    CallInstructionsMessageType.add_member(:text, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Text"))
    CallInstructionsMessageType.struct_class = Types::CallInstructionsMessageType

    CloudWatchLogsDestination.add_member(:iam_role_arn, Shapes::ShapeRef.new(shape: String, location_name: "IamRoleArn"))
    CloudWatchLogsDestination.add_member(:log_group_arn, Shapes::ShapeRef.new(shape: String, location_name: "LogGroupArn"))
    CloudWatchLogsDestination.struct_class = Types::CloudWatchLogsDestination

    ConfigurationSets.member = Shapes::ShapeRef.new(shape: WordCharactersWithDelimiters)

    CreateConfigurationSetEventDestinationRequest.add_member(:configuration_set_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "ConfigurationSetName"))
    CreateConfigurationSetEventDestinationRequest.add_member(:event_destination, Shapes::ShapeRef.new(shape: EventDestinationDefinition, location_name: "EventDestination"))
    CreateConfigurationSetEventDestinationRequest.add_member(:event_destination_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "EventDestinationName"))
    CreateConfigurationSetEventDestinationRequest.struct_class = Types::CreateConfigurationSetEventDestinationRequest

    CreateConfigurationSetEventDestinationResponse.struct_class = Types::CreateConfigurationSetEventDestinationResponse

    CreateConfigurationSetRequest.add_member(:configuration_set_name, Shapes::ShapeRef.new(shape: WordCharactersWithDelimiters, location_name: "ConfigurationSetName"))
    CreateConfigurationSetRequest.struct_class = Types::CreateConfigurationSetRequest

    CreateConfigurationSetResponse.struct_class = Types::CreateConfigurationSetResponse

    DeleteConfigurationSetEventDestinationRequest.add_member(:configuration_set_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "ConfigurationSetName"))
    DeleteConfigurationSetEventDestinationRequest.add_member(:event_destination_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "EventDestinationName"))
    DeleteConfigurationSetEventDestinationRequest.struct_class = Types::DeleteConfigurationSetEventDestinationRequest

    DeleteConfigurationSetEventDestinationResponse.struct_class = Types::DeleteConfigurationSetEventDestinationResponse

    DeleteConfigurationSetRequest.add_member(:configuration_set_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "ConfigurationSetName"))
    DeleteConfigurationSetRequest.struct_class = Types::DeleteConfigurationSetRequest

    DeleteConfigurationSetResponse.struct_class = Types::DeleteConfigurationSetResponse

    EventDestination.add_member(:cloud_watch_logs_destination, Shapes::ShapeRef.new(shape: CloudWatchLogsDestination, location_name: "CloudWatchLogsDestination"))
    EventDestination.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "Enabled"))
    EventDestination.add_member(:kinesis_firehose_destination, Shapes::ShapeRef.new(shape: KinesisFirehoseDestination, location_name: "KinesisFirehoseDestination"))
    EventDestination.add_member(:matching_event_types, Shapes::ShapeRef.new(shape: EventTypes, location_name: "MatchingEventTypes"))
    EventDestination.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    EventDestination.add_member(:sns_destination, Shapes::ShapeRef.new(shape: SnsDestination, location_name: "SnsDestination"))
    EventDestination.struct_class = Types::EventDestination

    EventDestinationDefinition.add_member(:cloud_watch_logs_destination, Shapes::ShapeRef.new(shape: CloudWatchLogsDestination, location_name: "CloudWatchLogsDestination"))
    EventDestinationDefinition.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "Enabled"))
    EventDestinationDefinition.add_member(:kinesis_firehose_destination, Shapes::ShapeRef.new(shape: KinesisFirehoseDestination, location_name: "KinesisFirehoseDestination"))
    EventDestinationDefinition.add_member(:matching_event_types, Shapes::ShapeRef.new(shape: EventTypes, location_name: "MatchingEventTypes"))
    EventDestinationDefinition.add_member(:sns_destination, Shapes::ShapeRef.new(shape: SnsDestination, location_name: "SnsDestination"))
    EventDestinationDefinition.struct_class = Types::EventDestinationDefinition

    EventDestinations.member = Shapes::ShapeRef.new(shape: EventDestination)

    EventTypes.member = Shapes::ShapeRef.new(shape: EventType)

    GetConfigurationSetEventDestinationsRequest.add_member(:configuration_set_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "ConfigurationSetName"))
    GetConfigurationSetEventDestinationsRequest.struct_class = Types::GetConfigurationSetEventDestinationsRequest

    GetConfigurationSetEventDestinationsResponse.add_member(:event_destinations, Shapes::ShapeRef.new(shape: EventDestinations, location_name: "EventDestinations"))
    GetConfigurationSetEventDestinationsResponse.struct_class = Types::GetConfigurationSetEventDestinationsResponse

    InternalServiceErrorException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    InternalServiceErrorException.struct_class = Types::InternalServiceErrorException

    KinesisFirehoseDestination.add_member(:delivery_stream_arn, Shapes::ShapeRef.new(shape: String, location_name: "DeliveryStreamArn"))
    KinesisFirehoseDestination.add_member(:iam_role_arn, Shapes::ShapeRef.new(shape: String, location_name: "IamRoleArn"))
    KinesisFirehoseDestination.struct_class = Types::KinesisFirehoseDestination

    LimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    LimitExceededException.struct_class = Types::LimitExceededException

    ListConfigurationSetsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "NextToken"))
    ListConfigurationSetsRequest.add_member(:page_size, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "PageSize"))
    ListConfigurationSetsRequest.struct_class = Types::ListConfigurationSetsRequest

    ListConfigurationSetsResponse.add_member(:configuration_sets, Shapes::ShapeRef.new(shape: ConfigurationSets, location_name: "ConfigurationSets"))
    ListConfigurationSetsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextTokenString, location_name: "NextToken"))
    ListConfigurationSetsResponse.struct_class = Types::ListConfigurationSetsResponse

    NotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    NotFoundException.struct_class = Types::NotFoundException

    PlainTextMessageType.add_member(:language_code, Shapes::ShapeRef.new(shape: String, location_name: "LanguageCode"))
    PlainTextMessageType.add_member(:text, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Text"))
    PlainTextMessageType.add_member(:voice_id, Shapes::ShapeRef.new(shape: String, location_name: "VoiceId"))
    PlainTextMessageType.struct_class = Types::PlainTextMessageType

    SSMLMessageType.add_member(:language_code, Shapes::ShapeRef.new(shape: String, location_name: "LanguageCode"))
    SSMLMessageType.add_member(:text, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Text"))
    SSMLMessageType.add_member(:voice_id, Shapes::ShapeRef.new(shape: String, location_name: "VoiceId"))
    SSMLMessageType.struct_class = Types::SSMLMessageType

    SendVoiceMessageRequest.add_member(:caller_id, Shapes::ShapeRef.new(shape: String, location_name: "CallerId"))
    SendVoiceMessageRequest.add_member(:configuration_set_name, Shapes::ShapeRef.new(shape: WordCharactersWithDelimiters, location_name: "ConfigurationSetName"))
    SendVoiceMessageRequest.add_member(:content, Shapes::ShapeRef.new(shape: VoiceMessageContent, location_name: "Content"))
    SendVoiceMessageRequest.add_member(:destination_phone_number, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "DestinationPhoneNumber"))
    SendVoiceMessageRequest.add_member(:origination_phone_number, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "OriginationPhoneNumber"))
    SendVoiceMessageRequest.struct_class = Types::SendVoiceMessageRequest

    SendVoiceMessageResponse.add_member(:message_id, Shapes::ShapeRef.new(shape: String, location_name: "MessageId"))
    SendVoiceMessageResponse.struct_class = Types::SendVoiceMessageResponse

    SnsDestination.add_member(:topic_arn, Shapes::ShapeRef.new(shape: String, location_name: "TopicArn"))
    SnsDestination.struct_class = Types::SnsDestination

    TooManyRequestsException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    TooManyRequestsException.struct_class = Types::TooManyRequestsException

    UpdateConfigurationSetEventDestinationRequest.add_member(:configuration_set_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "ConfigurationSetName"))
    UpdateConfigurationSetEventDestinationRequest.add_member(:event_destination, Shapes::ShapeRef.new(shape: EventDestinationDefinition, location_name: "EventDestination"))
    UpdateConfigurationSetEventDestinationRequest.add_member(:event_destination_name, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "EventDestinationName"))
    UpdateConfigurationSetEventDestinationRequest.struct_class = Types::UpdateConfigurationSetEventDestinationRequest

    UpdateConfigurationSetEventDestinationResponse.struct_class = Types::UpdateConfigurationSetEventDestinationResponse

    VoiceMessageContent.add_member(:call_instructions_message, Shapes::ShapeRef.new(shape: CallInstructionsMessageType, location_name: "CallInstructionsMessage"))
    VoiceMessageContent.add_member(:plain_text_message, Shapes::ShapeRef.new(shape: PlainTextMessageType, location_name: "PlainTextMessage"))
    VoiceMessageContent.add_member(:ssml_message, Shapes::ShapeRef.new(shape: SSMLMessageType, location_name: "SSMLMessage"))
    VoiceMessageContent.struct_class = Types::VoiceMessageContent


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2018-09-05"

      api.metadata = {
        "apiVersion" => "2018-09-05",
        "endpointPrefix" => "sms-voice.pinpoint",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceAbbreviation" => "Pinpoint SMS Voice",
        "serviceFullName" => "Amazon Pinpoint SMS and Voice Service",
        "serviceId" => "Pinpoint SMS Voice",
        "signatureVersion" => "v4",
        "signingName" => "sms-voice",
        "uid" => "pinpoint-sms-voice-2018-09-05",
      }

      api.add_operation(:create_configuration_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateConfigurationSet"
        o.http_method = "POST"
        o.http_request_uri = "/v1/sms-voice/configuration-sets"
        o.input = Shapes::ShapeRef.new(shape: CreateConfigurationSetRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateConfigurationSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: AlreadyExistsException)
      end)

      api.add_operation(:create_configuration_set_event_destination, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateConfigurationSetEventDestination"
        o.http_method = "POST"
        o.http_request_uri = "/v1/sms-voice/configuration-sets/{ConfigurationSetName}/event-destinations"
        o.input = Shapes::ShapeRef.new(shape: CreateConfigurationSetEventDestinationRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateConfigurationSetEventDestinationResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: AlreadyExistsException)
      end)

      api.add_operation(:delete_configuration_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteConfigurationSet"
        o.http_method = "DELETE"
        o.http_request_uri = "/v1/sms-voice/configuration-sets/{ConfigurationSetName}"
        o.input = Shapes::ShapeRef.new(shape: DeleteConfigurationSetRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteConfigurationSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
      end)

      api.add_operation(:delete_configuration_set_event_destination, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteConfigurationSetEventDestination"
        o.http_method = "DELETE"
        o.http_request_uri = "/v1/sms-voice/configuration-sets/{ConfigurationSetName}/event-destinations/{EventDestinationName}"
        o.input = Shapes::ShapeRef.new(shape: DeleteConfigurationSetEventDestinationRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteConfigurationSetEventDestinationResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
      end)

      api.add_operation(:get_configuration_set_event_destinations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetConfigurationSetEventDestinations"
        o.http_method = "GET"
        o.http_request_uri = "/v1/sms-voice/configuration-sets/{ConfigurationSetName}/event-destinations"
        o.input = Shapes::ShapeRef.new(shape: GetConfigurationSetEventDestinationsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetConfigurationSetEventDestinationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
      end)

      api.add_operation(:list_configuration_sets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListConfigurationSets"
        o.http_method = "GET"
        o.http_request_uri = "/v1/sms-voice/configuration-sets"
        o.input = Shapes::ShapeRef.new(shape: ListConfigurationSetsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListConfigurationSetsResponse)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
      end)

      api.add_operation(:send_voice_message, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SendVoiceMessage"
        o.http_method = "POST"
        o.http_request_uri = "/v1/sms-voice/voice/message"
        o.input = Shapes::ShapeRef.new(shape: SendVoiceMessageRequest)
        o.output = Shapes::ShapeRef.new(shape: SendVoiceMessageResponse)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
      end)

      api.add_operation(:update_configuration_set_event_destination, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateConfigurationSetEventDestination"
        o.http_method = "PUT"
        o.http_request_uri = "/v1/sms-voice/configuration-sets/{ConfigurationSetName}/event-destinations/{EventDestinationName}"
        o.input = Shapes::ShapeRef.new(shape: UpdateConfigurationSetEventDestinationRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateConfigurationSetEventDestinationResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceErrorException)
      end)
    end

  end
end
