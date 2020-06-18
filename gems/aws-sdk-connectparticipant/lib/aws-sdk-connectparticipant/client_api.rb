# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ConnectParticipant
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    ChatContent = Shapes::StringShape.new(name: 'ChatContent')
    ChatContentType = Shapes::StringShape.new(name: 'ChatContentType')
    ChatItemId = Shapes::StringShape.new(name: 'ChatItemId')
    ChatItemType = Shapes::StringShape.new(name: 'ChatItemType')
    ClientToken = Shapes::StringShape.new(name: 'ClientToken')
    ConnectionCredentials = Shapes::StructureShape.new(name: 'ConnectionCredentials')
    ConnectionType = Shapes::StringShape.new(name: 'ConnectionType')
    ConnectionTypeList = Shapes::ListShape.new(name: 'ConnectionTypeList')
    ContactId = Shapes::StringShape.new(name: 'ContactId')
    CreateParticipantConnectionRequest = Shapes::StructureShape.new(name: 'CreateParticipantConnectionRequest')
    CreateParticipantConnectionResponse = Shapes::StructureShape.new(name: 'CreateParticipantConnectionResponse')
    DisconnectParticipantRequest = Shapes::StructureShape.new(name: 'DisconnectParticipantRequest')
    DisconnectParticipantResponse = Shapes::StructureShape.new(name: 'DisconnectParticipantResponse')
    DisplayName = Shapes::StringShape.new(name: 'DisplayName')
    GetTranscriptRequest = Shapes::StructureShape.new(name: 'GetTranscriptRequest')
    GetTranscriptResponse = Shapes::StructureShape.new(name: 'GetTranscriptResponse')
    ISO8601Datetime = Shapes::StringShape.new(name: 'ISO8601Datetime')
    Instant = Shapes::StringShape.new(name: 'Instant')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    Item = Shapes::StructureShape.new(name: 'Item')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    Message = Shapes::StringShape.new(name: 'Message')
    MostRecent = Shapes::IntegerShape.new(name: 'MostRecent')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    ParticipantId = Shapes::StringShape.new(name: 'ParticipantId')
    ParticipantRole = Shapes::StringShape.new(name: 'ParticipantRole')
    ParticipantToken = Shapes::StringShape.new(name: 'ParticipantToken')
    PreSignedConnectionUrl = Shapes::StringShape.new(name: 'PreSignedConnectionUrl')
    Reason = Shapes::StringShape.new(name: 'Reason')
    ScanDirection = Shapes::StringShape.new(name: 'ScanDirection')
    SendEventRequest = Shapes::StructureShape.new(name: 'SendEventRequest')
    SendEventResponse = Shapes::StructureShape.new(name: 'SendEventResponse')
    SendMessageRequest = Shapes::StructureShape.new(name: 'SendMessageRequest')
    SendMessageResponse = Shapes::StructureShape.new(name: 'SendMessageResponse')
    SortKey = Shapes::StringShape.new(name: 'SortKey')
    StartPosition = Shapes::StructureShape.new(name: 'StartPosition')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    Transcript = Shapes::ListShape.new(name: 'Transcript')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    Websocket = Shapes::StructureShape.new(name: 'Websocket')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: Message, required: true, location_name: "Message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    ConnectionCredentials.add_member(:connection_token, Shapes::ShapeRef.new(shape: ParticipantToken, location_name: "ConnectionToken"))
    ConnectionCredentials.add_member(:expiry, Shapes::ShapeRef.new(shape: ISO8601Datetime, location_name: "Expiry"))
    ConnectionCredentials.struct_class = Types::ConnectionCredentials

    ConnectionTypeList.member = Shapes::ShapeRef.new(shape: ConnectionType)

    CreateParticipantConnectionRequest.add_member(:type, Shapes::ShapeRef.new(shape: ConnectionTypeList, required: true, location_name: "Type"))
    CreateParticipantConnectionRequest.add_member(:participant_token, Shapes::ShapeRef.new(shape: ParticipantToken, required: true, location: "header", location_name: "X-Amz-Bearer"))
    CreateParticipantConnectionRequest.struct_class = Types::CreateParticipantConnectionRequest

    CreateParticipantConnectionResponse.add_member(:websocket, Shapes::ShapeRef.new(shape: Websocket, location_name: "Websocket"))
    CreateParticipantConnectionResponse.add_member(:connection_credentials, Shapes::ShapeRef.new(shape: ConnectionCredentials, location_name: "ConnectionCredentials"))
    CreateParticipantConnectionResponse.struct_class = Types::CreateParticipantConnectionResponse

    DisconnectParticipantRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    DisconnectParticipantRequest.add_member(:connection_token, Shapes::ShapeRef.new(shape: ParticipantToken, required: true, location: "header", location_name: "X-Amz-Bearer"))
    DisconnectParticipantRequest.struct_class = Types::DisconnectParticipantRequest

    DisconnectParticipantResponse.struct_class = Types::DisconnectParticipantResponse

    GetTranscriptRequest.add_member(:contact_id, Shapes::ShapeRef.new(shape: ContactId, location_name: "ContactId"))
    GetTranscriptRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", metadata: {"box"=>true}))
    GetTranscriptRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    GetTranscriptRequest.add_member(:scan_direction, Shapes::ShapeRef.new(shape: ScanDirection, location_name: "ScanDirection"))
    GetTranscriptRequest.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortKey, location_name: "SortOrder"))
    GetTranscriptRequest.add_member(:start_position, Shapes::ShapeRef.new(shape: StartPosition, location_name: "StartPosition"))
    GetTranscriptRequest.add_member(:connection_token, Shapes::ShapeRef.new(shape: ParticipantToken, required: true, location: "header", location_name: "X-Amz-Bearer"))
    GetTranscriptRequest.struct_class = Types::GetTranscriptRequest

    GetTranscriptResponse.add_member(:initial_contact_id, Shapes::ShapeRef.new(shape: ContactId, location_name: "InitialContactId"))
    GetTranscriptResponse.add_member(:transcript, Shapes::ShapeRef.new(shape: Transcript, location_name: "Transcript"))
    GetTranscriptResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    GetTranscriptResponse.struct_class = Types::GetTranscriptResponse

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: Message, required: true, location_name: "Message"))
    InternalServerException.struct_class = Types::InternalServerException

    Item.add_member(:absolute_time, Shapes::ShapeRef.new(shape: Instant, location_name: "AbsoluteTime"))
    Item.add_member(:content, Shapes::ShapeRef.new(shape: ChatContent, location_name: "Content"))
    Item.add_member(:content_type, Shapes::ShapeRef.new(shape: ChatContentType, location_name: "ContentType"))
    Item.add_member(:id, Shapes::ShapeRef.new(shape: ChatItemId, location_name: "Id"))
    Item.add_member(:type, Shapes::ShapeRef.new(shape: ChatItemType, location_name: "Type"))
    Item.add_member(:participant_id, Shapes::ShapeRef.new(shape: ParticipantId, location_name: "ParticipantId"))
    Item.add_member(:display_name, Shapes::ShapeRef.new(shape: DisplayName, location_name: "DisplayName"))
    Item.add_member(:participant_role, Shapes::ShapeRef.new(shape: ParticipantRole, location_name: "ParticipantRole"))
    Item.struct_class = Types::Item

    SendEventRequest.add_member(:content_type, Shapes::ShapeRef.new(shape: ChatContentType, required: true, location_name: "ContentType"))
    SendEventRequest.add_member(:content, Shapes::ShapeRef.new(shape: ChatContent, location_name: "Content"))
    SendEventRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    SendEventRequest.add_member(:connection_token, Shapes::ShapeRef.new(shape: ParticipantToken, required: true, location: "header", location_name: "X-Amz-Bearer"))
    SendEventRequest.struct_class = Types::SendEventRequest

    SendEventResponse.add_member(:id, Shapes::ShapeRef.new(shape: ChatItemId, location_name: "Id"))
    SendEventResponse.add_member(:absolute_time, Shapes::ShapeRef.new(shape: Instant, location_name: "AbsoluteTime"))
    SendEventResponse.struct_class = Types::SendEventResponse

    SendMessageRequest.add_member(:content_type, Shapes::ShapeRef.new(shape: ChatContentType, required: true, location_name: "ContentType"))
    SendMessageRequest.add_member(:content, Shapes::ShapeRef.new(shape: ChatContent, required: true, location_name: "Content"))
    SendMessageRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    SendMessageRequest.add_member(:connection_token, Shapes::ShapeRef.new(shape: ParticipantToken, required: true, location: "header", location_name: "X-Amz-Bearer"))
    SendMessageRequest.struct_class = Types::SendMessageRequest

    SendMessageResponse.add_member(:id, Shapes::ShapeRef.new(shape: ChatItemId, location_name: "Id"))
    SendMessageResponse.add_member(:absolute_time, Shapes::ShapeRef.new(shape: Instant, location_name: "AbsoluteTime"))
    SendMessageResponse.struct_class = Types::SendMessageResponse

    StartPosition.add_member(:id, Shapes::ShapeRef.new(shape: ChatItemId, location_name: "Id"))
    StartPosition.add_member(:absolute_time, Shapes::ShapeRef.new(shape: Instant, location_name: "AbsoluteTime"))
    StartPosition.add_member(:most_recent, Shapes::ShapeRef.new(shape: MostRecent, location_name: "MostRecent"))
    StartPosition.struct_class = Types::StartPosition

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: Message, required: true, location_name: "Message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    Transcript.member = Shapes::ShapeRef.new(shape: Item)

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: Reason, required: true, location_name: "Message"))
    ValidationException.struct_class = Types::ValidationException

    Websocket.add_member(:url, Shapes::ShapeRef.new(shape: PreSignedConnectionUrl, location_name: "Url"))
    Websocket.add_member(:connection_expiry, Shapes::ShapeRef.new(shape: ISO8601Datetime, location_name: "ConnectionExpiry"))
    Websocket.struct_class = Types::Websocket


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2018-09-07"

      api.metadata = {
        "apiVersion" => "2018-09-07",
        "endpointPrefix" => "participant.connect",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceAbbreviation" => "Amazon Connect Participant",
        "serviceFullName" => "Amazon Connect Participant Service",
        "serviceId" => "ConnectParticipant",
        "signatureVersion" => "v4",
        "signingName" => "execute-api",
        "uid" => "connectparticipant-2018-09-07",
      }

      api.add_operation(:create_participant_connection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateParticipantConnection"
        o.http_method = "POST"
        o.http_request_uri = "/participant/connection"
        o.input = Shapes::ShapeRef.new(shape: CreateParticipantConnectionRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateParticipantConnectionResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:disconnect_participant, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisconnectParticipant"
        o.http_method = "POST"
        o.http_request_uri = "/participant/disconnect"
        o.input = Shapes::ShapeRef.new(shape: DisconnectParticipantRequest)
        o.output = Shapes::ShapeRef.new(shape: DisconnectParticipantResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_transcript, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTranscript"
        o.http_method = "POST"
        o.http_request_uri = "/participant/transcript"
        o.input = Shapes::ShapeRef.new(shape: GetTranscriptRequest)
        o.output = Shapes::ShapeRef.new(shape: GetTranscriptResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:send_event, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SendEvent"
        o.http_method = "POST"
        o.http_request_uri = "/participant/event"
        o.input = Shapes::ShapeRef.new(shape: SendEventRequest)
        o.output = Shapes::ShapeRef.new(shape: SendEventResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:send_message, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SendMessage"
        o.http_method = "POST"
        o.http_request_uri = "/participant/message"
        o.input = Shapes::ShapeRef.new(shape: SendMessageRequest)
        o.output = Shapes::ShapeRef.new(shape: SendMessageResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)
    end

  end
end
