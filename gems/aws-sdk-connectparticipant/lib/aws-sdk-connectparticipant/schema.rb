# frozen_string_literal: true

# This is generated code!

module Aws::ConnectParticipant
  # This module contains a schema composed of shapes used by the client.
  module Schema

    ARN = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectparticipant#ARN', name: 'ARN')
    AccessDeniedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectparticipant#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    ArtifactId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectparticipant#ArtifactId', name: 'ArtifactId', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    ArtifactStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.connectparticipant#ArtifactStatus', name: 'ArtifactStatus')
    AttachmentIdList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.connectparticipant#AttachmentIdList', name: 'AttachmentIdList', traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    AttachmentItem = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectparticipant#AttachmentItem', name: 'AttachmentItem')
    AttachmentName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectparticipant#AttachmentName', name: 'AttachmentName', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    AttachmentSizeInBytes = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.connectparticipant#AttachmentSizeInBytes', name: 'AttachmentSizeInBytes', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 1}})
    Attachments = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.connectparticipant#Attachments', name: 'Attachments')
    AuthenticationUrl = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectparticipant#AuthenticationUrl', name: 'AuthenticationUrl', traits: {"smithy.api#length" => {"min" => 1, "max" => 2083}})
    Bool = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.connectparticipant#Bool', name: 'Bool')
    CancelParticipantAuthenticationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectparticipant#CancelParticipantAuthenticationRequest', name: 'CancelParticipantAuthenticationRequest')
    CancelParticipantAuthenticationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectparticipant#CancelParticipantAuthenticationResponse', name: 'CancelParticipantAuthenticationResponse')
    ChatContent = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectparticipant#ChatContent', name: 'ChatContent', traits: {"smithy.api#length" => {"min" => 1, "max" => 16384}})
    ChatContentType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectparticipant#ChatContentType', name: 'ChatContentType', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    ChatItemId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectparticipant#ChatItemId', name: 'ChatItemId', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    ChatItemType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.connectparticipant#ChatItemType', name: 'ChatItemType')
    ClientToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectparticipant#ClientToken', name: 'ClientToken', traits: {"smithy.api#length" => {"min" => 0, "max" => 500}})
    CompleteAttachmentUploadRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectparticipant#CompleteAttachmentUploadRequest', name: 'CompleteAttachmentUploadRequest')
    CompleteAttachmentUploadResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectparticipant#CompleteAttachmentUploadResponse', name: 'CompleteAttachmentUploadResponse')
    ConflictException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectparticipant#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ConnectionCredentials = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectparticipant#ConnectionCredentials', name: 'ConnectionCredentials')
    ConnectionType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.connectparticipant#ConnectionType', name: 'ConnectionType')
    ConnectionTypeList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.connectparticipant#ConnectionTypeList', name: 'ConnectionTypeList', traits: {"smithy.api#length" => {"min" => 1}})
    ContactId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectparticipant#ContactId', name: 'ContactId', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    ContentType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectparticipant#ContentType', name: 'ContentType', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    CreateParticipantConnectionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectparticipant#CreateParticipantConnectionRequest', name: 'CreateParticipantConnectionRequest')
    CreateParticipantConnectionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectparticipant#CreateParticipantConnectionResponse', name: 'CreateParticipantConnectionResponse')
    DescribeViewRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectparticipant#DescribeViewRequest', name: 'DescribeViewRequest')
    DescribeViewResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectparticipant#DescribeViewResponse', name: 'DescribeViewResponse')
    DisconnectParticipantRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectparticipant#DisconnectParticipantRequest', name: 'DisconnectParticipantRequest')
    DisconnectParticipantResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectparticipant#DisconnectParticipantResponse', name: 'DisconnectParticipantResponse')
    DisplayName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectparticipant#DisplayName', name: 'DisplayName', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    GetAttachmentRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectparticipant#GetAttachmentRequest', name: 'GetAttachmentRequest')
    GetAttachmentResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectparticipant#GetAttachmentResponse', name: 'GetAttachmentResponse')
    GetAuthenticationUrlRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectparticipant#GetAuthenticationUrlRequest', name: 'GetAuthenticationUrlRequest')
    GetAuthenticationUrlResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectparticipant#GetAuthenticationUrlResponse', name: 'GetAuthenticationUrlResponse')
    GetTranscriptRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectparticipant#GetTranscriptRequest', name: 'GetTranscriptRequest')
    GetTranscriptResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectparticipant#GetTranscriptResponse', name: 'GetTranscriptResponse')
    ISO8601Datetime = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectparticipant#ISO8601Datetime', name: 'ISO8601Datetime')
    Instant = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectparticipant#Instant', name: 'Instant', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    InternalServerException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectparticipant#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    Item = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectparticipant#Item', name: 'Item')
    MaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.connectparticipant#MaxResults', name: 'MaxResults', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 100}})
    Message = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectparticipant#Message', name: 'Message')
    MessageMetadata = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectparticipant#MessageMetadata', name: 'MessageMetadata')
    MostRecent = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.connectparticipant#MostRecent', name: 'MostRecent', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 100}})
    NextToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectparticipant#NextToken', name: 'NextToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}})
    NonEmptyClientToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectparticipant#NonEmptyClientToken', name: 'NonEmptyClientToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 500}})
    ParticipantId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectparticipant#ParticipantId', name: 'ParticipantId', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    ParticipantRole = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.connectparticipant#ParticipantRole', name: 'ParticipantRole')
    ParticipantToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectparticipant#ParticipantToken', name: 'ParticipantToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}})
    PreSignedAttachmentUrl = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectparticipant#PreSignedAttachmentUrl', name: 'PreSignedAttachmentUrl', traits: {"smithy.api#length" => {"min" => 1, "max" => 2000}})
    PreSignedConnectionUrl = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectparticipant#PreSignedConnectionUrl', name: 'PreSignedConnectionUrl', traits: {"smithy.api#length" => {"min" => 1, "max" => 2000}})
    Reason = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectparticipant#Reason', name: 'Reason', traits: {"smithy.api#length" => {"min" => 1, "max" => 2000}})
    Receipt = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectparticipant#Receipt', name: 'Receipt')
    Receipts = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.connectparticipant#Receipts', name: 'Receipts')
    RedirectURI = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectparticipant#RedirectURI', name: 'RedirectURI', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    ResourceId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectparticipant#ResourceId', name: 'ResourceId')
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectparticipant#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.connectparticipant#ResourceType', name: 'ResourceType')
    ScanDirection = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.connectparticipant#ScanDirection', name: 'ScanDirection')
    SendEventRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectparticipant#SendEventRequest', name: 'SendEventRequest')
    SendEventResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectparticipant#SendEventResponse', name: 'SendEventResponse')
    SendMessageRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectparticipant#SendMessageRequest', name: 'SendMessageRequest')
    SendMessageResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectparticipant#SendMessageResponse', name: 'SendMessageResponse')
    ServiceQuotaExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectparticipant#ServiceQuotaExceededException', name: 'ServiceQuotaExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    SessionId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectparticipant#SessionId', name: 'SessionId', traits: {"smithy.api#length" => {"min" => 36, "max" => 36}})
    SortKey = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.connectparticipant#SortKey', name: 'SortKey')
    StartAttachmentUploadRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectparticipant#StartAttachmentUploadRequest', name: 'StartAttachmentUploadRequest')
    StartAttachmentUploadResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectparticipant#StartAttachmentUploadResponse', name: 'StartAttachmentUploadResponse')
    StartPosition = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectparticipant#StartPosition', name: 'StartPosition')
    ThrottlingException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectparticipant#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    Transcript = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.connectparticipant#Transcript', name: 'Transcript')
    URLExpiryInSeconds = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.connectparticipant#URLExpiryInSeconds', name: 'URLExpiryInSeconds', traits: {"smithy.api#range" => {"min" => 5, "max" => 300}})
    UploadMetadata = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectparticipant#UploadMetadata', name: 'UploadMetadata')
    UploadMetadataSignedHeaders = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.connectparticipant#UploadMetadataSignedHeaders', name: 'UploadMetadataSignedHeaders')
    UploadMetadataSignedHeadersKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectparticipant#UploadMetadataSignedHeadersKey', name: 'UploadMetadataSignedHeadersKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    UploadMetadataSignedHeadersValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectparticipant#UploadMetadataSignedHeadersValue', name: 'UploadMetadataSignedHeadersValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    UploadMetadataUrl = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectparticipant#UploadMetadataUrl', name: 'UploadMetadataUrl', traits: {"smithy.api#length" => {"min" => 1, "max" => 2000}})
    ValidationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectparticipant#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    View = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectparticipant#View', name: 'View')
    ViewAction = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectparticipant#ViewAction', name: 'ViewAction', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^([\\p{L}\\p{N}_.:\\/=+\\-@()']+[\\p{L}\\p{Z}\\p{N}_.:\\/=+\\-@()']*)$", "smithy.api#sensitive" => {}})
    ViewActions = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.connectparticipant#ViewActions', name: 'ViewActions')
    ViewContent = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectparticipant#ViewContent', name: 'ViewContent')
    ViewId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectparticipant#ViewId', name: 'ViewId', traits: {"smithy.api#length" => {"min" => 1, "max" => 500}, "smithy.api#pattern" => "^[a-zA-Z0-9\\_\\-:\\/$]+$"})
    ViewInputSchema = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectparticipant#ViewInputSchema', name: 'ViewInputSchema', traits: {"smithy.api#sensitive" => {}})
    ViewName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectparticipant#ViewName', name: 'ViewName', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^([\\p{L}\\p{N}_.:\\/=+\\-@()']+[\\p{L}\\p{Z}\\p{N}_.:\\/=+\\-@()']*)$", "smithy.api#sensitive" => {}})
    ViewTemplate = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectparticipant#ViewTemplate', name: 'ViewTemplate', traits: {"smithy.api#sensitive" => {}})
    ViewToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.connectparticipant#ViewToken', name: 'ViewToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}})
    ViewVersion = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.connectparticipant#ViewVersion', name: 'ViewVersion')
    Websocket = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.connectparticipant#Websocket', name: 'Websocket')

    AccessDeniedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'Message', traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    ArtifactStatus.add_member(:approved, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APPROVED', traits: {"smithy.api#enumValue" => "APPROVED"}))
    ArtifactStatus.add_member(:rejected, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REJECTED', traits: {"smithy.api#enumValue" => "REJECTED"}))
    ArtifactStatus.add_member(:in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_PROGRESS', traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    AttachmentIdList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ArtifactId)
    AttachmentItem.add_member(:content_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ContentType, location_name: 'ContentType', traits: {"smithy.api#documentation" => "<p>Describes the MIME file type of the attachment. For a list of supported file types, see <a href=\"https://docs.aws.amazon.com/connect/latest/adminguide/feature-limits.html\">Feature specifications</a> in the <i>Amazon Connect Administrator Guide</i>.</p>"}))
    AttachmentItem.add_member(:attachment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ArtifactId, location_name: 'AttachmentId', traits: {"smithy.api#documentation" => "<p>A unique identifier for the attachment.</p>"}))
    AttachmentItem.add_member(:attachment_name, Smithy::Schema::Shapes::ShapeRef.new(shape: AttachmentName, location_name: 'AttachmentName', traits: {"smithy.api#documentation" => "<p>A case-sensitive name of the attachment being uploaded.</p>"}))
    AttachmentItem.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ArtifactStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>Status of the attachment.</p>"}))
    AttachmentItem.type = Types::AttachmentItem
    Attachments.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AttachmentItem)
    CancelParticipantAuthenticationRequest.add_member(:session_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionId, location_name: 'SessionId', traits: {"smithy.api#documentation" => "<p>The <code>sessionId</code> provided in the <code>authenticationInitiated</code>\n            event.</p>", "smithy.api#required" => {}}))
    CancelParticipantAuthenticationRequest.add_member(:connection_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ParticipantToken, location_name: 'ConnectionToken', traits: {"smithy.api#documentation" => "<p>The authentication token associated with the participant's connection.</p>", "smithy.api#httpHeader" => "X-Amz-Bearer", "smithy.api#required" => {}}))
    CancelParticipantAuthenticationRequest.type = Types::CancelParticipantAuthenticationRequest
    CancelParticipantAuthenticationResponse.type = Types::CancelParticipantAuthenticationResponse
    ChatItemType.add_member(:typing, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TYPING', traits: {"smithy.api#enumValue" => "TYPING"}))
    ChatItemType.add_member(:participant_joined, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PARTICIPANT_JOINED', traits: {"smithy.api#enumValue" => "PARTICIPANT_JOINED"}))
    ChatItemType.add_member(:participant_left, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PARTICIPANT_LEFT', traits: {"smithy.api#enumValue" => "PARTICIPANT_LEFT"}))
    ChatItemType.add_member(:chat_ended, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CHAT_ENDED', traits: {"smithy.api#enumValue" => "CHAT_ENDED"}))
    ChatItemType.add_member(:transfer_succeeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TRANSFER_SUCCEEDED', traits: {"smithy.api#enumValue" => "TRANSFER_SUCCEEDED"}))
    ChatItemType.add_member(:transfer_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TRANSFER_FAILED', traits: {"smithy.api#enumValue" => "TRANSFER_FAILED"}))
    ChatItemType.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MESSAGE', traits: {"smithy.api#enumValue" => "MESSAGE"}))
    ChatItemType.add_member(:event, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EVENT', traits: {"smithy.api#enumValue" => "EVENT"}))
    ChatItemType.add_member(:attachment, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ATTACHMENT', traits: {"smithy.api#enumValue" => "ATTACHMENT"}))
    ChatItemType.add_member(:connection_ack, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONNECTION_ACK', traits: {"smithy.api#enumValue" => "CONNECTION_ACK"}))
    ChatItemType.add_member(:message_delivered, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MESSAGE_DELIVERED', traits: {"smithy.api#enumValue" => "MESSAGE_DELIVERED"}))
    ChatItemType.add_member(:message_read, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MESSAGE_READ', traits: {"smithy.api#enumValue" => "MESSAGE_READ"}))
    CompleteAttachmentUploadRequest.add_member(:attachment_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: AttachmentIdList, location_name: 'AttachmentIds', traits: {"smithy.api#documentation" => "<p>A list of unique identifiers for the attachments.</p>", "smithy.api#required" => {}}))
    CompleteAttachmentUploadRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyClientToken, location_name: 'ClientToken', traits: {"smithy.api#documentation" => "<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the\n            request. If not provided, the Amazon Web Services\n            SDK populates this field. For more information about idempotency, see\n            <a href=\"https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/\">Making retries safe with idempotent APIs</a>.</p>", "smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CompleteAttachmentUploadRequest.add_member(:connection_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ParticipantToken, location_name: 'ConnectionToken', traits: {"smithy.api#documentation" => "<p>The authentication token associated with the participant's connection.</p>", "smithy.api#httpHeader" => "X-Amz-Bearer", "smithy.api#required" => {}}))
    CompleteAttachmentUploadRequest.type = Types::CompleteAttachmentUploadRequest
    CompleteAttachmentUploadResponse.type = Types::CompleteAttachmentUploadResponse
    ConflictException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Reason, location_name: 'Message', traits: {"smithy.api#required" => {}}))
    ConflictException.type = Types::ConflictException
    ConnectionCredentials.add_member(:connection_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ParticipantToken, location_name: 'ConnectionToken', traits: {"smithy.api#documentation" => "<p>The connection token.</p>"}))
    ConnectionCredentials.add_member(:expiry, Smithy::Schema::Shapes::ShapeRef.new(shape: ISO8601Datetime, location_name: 'Expiry', traits: {"smithy.api#documentation" => "<p>The expiration of the token.</p>\n         <p>It's specified in ISO 8601 format: yyyy-MM-ddThh:mm:ss.SSSZ. For example,\n            2019-11-08T02:41:28.172Z.</p>"}))
    ConnectionCredentials.type = Types::ConnectionCredentials
    ConnectionType.add_member(:websocket, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WEBSOCKET', traits: {"smithy.api#enumValue" => "WEBSOCKET"}))
    ConnectionType.add_member(:connection_credentials, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONNECTION_CREDENTIALS', traits: {"smithy.api#enumValue" => "CONNECTION_CREDENTIALS"}))
    ConnectionTypeList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionType)
    CreateParticipantConnectionRequest.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionTypeList, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>Type of connection information required. If you need\n                <code>CONNECTION_CREDENTIALS</code> along with marking participant as connected,\n            pass <code>CONNECTION_CREDENTIALS</code> in <code>Type</code>.</p>"}))
    CreateParticipantConnectionRequest.add_member(:participant_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ParticipantToken, location_name: 'ParticipantToken', traits: {"smithy.api#documentation" => "<p>This is a header parameter.</p>\n         <p>The ParticipantToken as obtained from <a href=\"https://docs.aws.amazon.com/connect/latest/APIReference/API_StartChatContact.html\">StartChatContact</a>\n            API response.</p>", "smithy.api#httpHeader" => "X-Amz-Bearer", "smithy.api#required" => {}}))
    CreateParticipantConnectionRequest.add_member(:connect_participant, Smithy::Schema::Shapes::ShapeRef.new(shape: Bool, location_name: 'ConnectParticipant', traits: {"smithy.api#documentation" => "<p>Amazon Connect Participant is used to mark the participant as connected for customer\n            participant in message streaming, as well as for agent or manager participant in\n            non-streaming chats.</p>"}))
    CreateParticipantConnectionRequest.type = Types::CreateParticipantConnectionRequest
    CreateParticipantConnectionResponse.add_member(:websocket, Smithy::Schema::Shapes::ShapeRef.new(shape: Websocket, location_name: 'Websocket', traits: {"smithy.api#documentation" => "<p>Creates the participant's websocket connection.</p>"}))
    CreateParticipantConnectionResponse.add_member(:connection_credentials, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionCredentials, location_name: 'ConnectionCredentials', traits: {"smithy.api#documentation" => "<p>Creates the participant's connection credentials. The authentication token associated\n            with the participant's connection.</p>"}))
    CreateParticipantConnectionResponse.type = Types::CreateParticipantConnectionResponse
    DescribeViewRequest.add_member(:view_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ViewToken, location_name: 'ViewToken', traits: {"smithy.api#documentation" => "<p>An encrypted token originating from the interactive message of a ShowView block\n            operation. Represents the desired view.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeViewRequest.add_member(:connection_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ParticipantToken, location_name: 'ConnectionToken', traits: {"smithy.api#documentation" => "<p>The connection token.</p>", "smithy.api#httpHeader" => "X-Amz-Bearer", "smithy.api#required" => {}}))
    DescribeViewRequest.type = Types::DescribeViewRequest
    DescribeViewResponse.add_member(:view, Smithy::Schema::Shapes::ShapeRef.new(shape: View, location_name: 'View', traits: {"smithy.api#documentation" => "<p>A view resource object. Contains metadata and content necessary to render the\n            view.</p>"}))
    DescribeViewResponse.type = Types::DescribeViewResponse
    DisconnectParticipantRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'ClientToken', traits: {"smithy.api#documentation" => "<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the\n            request. If not provided, the Amazon Web Services\n            SDK populates this field. For more information about idempotency, see\n            <a href=\"https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/\">Making retries safe with idempotent APIs</a>.</p>", "smithy.api#idempotencyToken" => {}}))
    DisconnectParticipantRequest.add_member(:connection_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ParticipantToken, location_name: 'ConnectionToken', traits: {"smithy.api#documentation" => "<p>The authentication token associated with the participant's connection.</p>", "smithy.api#httpHeader" => "X-Amz-Bearer", "smithy.api#required" => {}}))
    DisconnectParticipantRequest.type = Types::DisconnectParticipantRequest
    DisconnectParticipantResponse.type = Types::DisconnectParticipantResponse
    GetAttachmentRequest.add_member(:attachment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ArtifactId, location_name: 'AttachmentId', traits: {"smithy.api#documentation" => "<p>A unique identifier for the attachment.</p>", "smithy.api#required" => {}}))
    GetAttachmentRequest.add_member(:connection_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ParticipantToken, location_name: 'ConnectionToken', traits: {"smithy.api#documentation" => "<p>The authentication token associated with the participant's connection.</p>", "smithy.api#httpHeader" => "X-Amz-Bearer", "smithy.api#required" => {}}))
    GetAttachmentRequest.add_member(:url_expiry_in_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: URLExpiryInSeconds, location_name: 'UrlExpiryInSeconds', traits: {"smithy.api#documentation" => "<p>The expiration time of the URL in ISO timestamp. It's specified in ISO 8601 format:\n            yyyy-MM-ddThh:mm:ss.SSSZ. For example, 2019-11-08T02:41:28.172Z.</p>"}))
    GetAttachmentRequest.type = Types::GetAttachmentRequest
    GetAttachmentResponse.add_member(:url, Smithy::Schema::Shapes::ShapeRef.new(shape: PreSignedAttachmentUrl, location_name: 'Url', traits: {"smithy.api#documentation" => "<p>This is the pre-signed URL that can be used for uploading the file to Amazon S3 when used in response \nto <a href=\"https://docs.aws.amazon.com/connect-participant/latest/APIReference/API_StartAttachmentUpload.html\">StartAttachmentUpload</a>.</p>"}))
    GetAttachmentResponse.add_member(:url_expiry, Smithy::Schema::Shapes::ShapeRef.new(shape: ISO8601Datetime, location_name: 'UrlExpiry', traits: {"smithy.api#documentation" => "<p>The expiration time of the URL in ISO timestamp. It's specified in ISO 8601 format: yyyy-MM-ddThh:mm:ss.SSSZ. For example, 2019-11-08T02:41:28.172Z.</p>"}))
    GetAttachmentResponse.add_member(:attachment_size_in_bytes, Smithy::Schema::Shapes::ShapeRef.new(shape: AttachmentSizeInBytes, location_name: 'AttachmentSizeInBytes', traits: {"smithy.api#default" => nil, "smithy.api#documentation" => "<p>The size of the attachment in bytes.</p>", "smithy.api#required" => {}}))
    GetAttachmentResponse.type = Types::GetAttachmentResponse
    GetAuthenticationUrlRequest.add_member(:session_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionId, location_name: 'SessionId', traits: {"smithy.api#documentation" => "<p>The sessionId provided in the authenticationInitiated event.</p>", "smithy.api#required" => {}}))
    GetAuthenticationUrlRequest.add_member(:redirect_uri, Smithy::Schema::Shapes::ShapeRef.new(shape: RedirectURI, location_name: 'RedirectUri', traits: {"smithy.api#documentation" => "<p>The URL where the customer will be redirected after Amazon Cognito authorizes the\n            user.</p>", "smithy.api#required" => {}}))
    GetAuthenticationUrlRequest.add_member(:connection_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ParticipantToken, location_name: 'ConnectionToken', traits: {"smithy.api#documentation" => "<p>The authentication token associated with the participant's connection.</p>", "smithy.api#httpHeader" => "X-Amz-Bearer", "smithy.api#required" => {}}))
    GetAuthenticationUrlRequest.type = Types::GetAuthenticationUrlRequest
    GetAuthenticationUrlResponse.add_member(:authentication_url, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationUrl, location_name: 'AuthenticationUrl', traits: {"smithy.api#documentation" => "<p>The URL where the customer will sign in to the identity provider. This URL contains\n            the authorize endpoint for the Cognito UserPool used in the authentication.</p>"}))
    GetAuthenticationUrlResponse.type = Types::GetAuthenticationUrlResponse
    GetTranscriptRequest.add_member(:contact_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ContactId, location_name: 'ContactId', traits: {"smithy.api#documentation" => "<p>The contactId from the current contact chain for which transcript is needed.</p>"}))
    GetTranscriptRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#default" => nil, "smithy.api#documentation" => "<p>The maximum number of results to return in the page. Default: 10. </p>"}))
    GetTranscriptRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token. Use the value returned previously in the next subsequent request\n            to retrieve the next set of results.</p>"}))
    GetTranscriptRequest.add_member(:scan_direction, Smithy::Schema::Shapes::ShapeRef.new(shape: ScanDirection, location_name: 'ScanDirection', traits: {"smithy.api#documentation" => "<p>The direction from StartPosition from which to retrieve message. Default: BACKWARD\n            when no StartPosition is provided, FORWARD with StartPosition. </p>"}))
    GetTranscriptRequest.add_member(:sort_order, Smithy::Schema::Shapes::ShapeRef.new(shape: SortKey, location_name: 'SortOrder', traits: {"smithy.api#documentation" => "<p>The sort order for the records. Default: DESCENDING.</p>"}))
    GetTranscriptRequest.add_member(:start_position, Smithy::Schema::Shapes::ShapeRef.new(shape: StartPosition, location_name: 'StartPosition', traits: {"smithy.api#documentation" => "<p>A filtering option for where to start.</p>"}))
    GetTranscriptRequest.add_member(:connection_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ParticipantToken, location_name: 'ConnectionToken', traits: {"smithy.api#documentation" => "<p>The authentication token associated with the participant's connection.</p>", "smithy.api#httpHeader" => "X-Amz-Bearer", "smithy.api#required" => {}}))
    GetTranscriptRequest.type = Types::GetTranscriptRequest
    GetTranscriptResponse.add_member(:initial_contact_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ContactId, location_name: 'InitialContactId', traits: {"smithy.api#documentation" => "<p>The initial contact ID for the contact. </p>"}))
    GetTranscriptResponse.add_member(:transcript, Smithy::Schema::Shapes::ShapeRef.new(shape: Transcript, location_name: 'Transcript', traits: {"smithy.api#documentation" => "<p>The list of messages in the session.</p>"}))
    GetTranscriptResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token. Use the value returned previously in the next subsequent request\n            to retrieve the next set of results.</p>"}))
    GetTranscriptResponse.type = Types::GetTranscriptResponse
    InternalServerException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'Message', traits: {"smithy.api#required" => {}}))
    InternalServerException.type = Types::InternalServerException
    Item.add_member(:absolute_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Instant, location_name: 'AbsoluteTime', traits: {"smithy.api#documentation" => "<p>The time when the message or event was sent.</p>\n         <p>It's specified in ISO 8601 format: yyyy-MM-ddThh:mm:ss.SSSZ. For example,\n            2019-11-08T02:41:28.172Z.</p>"}))
    Item.add_member(:content, Smithy::Schema::Shapes::ShapeRef.new(shape: ChatContent, location_name: 'Content', traits: {"smithy.api#documentation" => "<p>The content of the message or event.</p>"}))
    Item.add_member(:content_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ChatContentType, location_name: 'ContentType', traits: {"smithy.api#documentation" => "<p>The type of content of the item.</p>"}))
    Item.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ChatItemId, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The ID of the item.</p>"}))
    Item.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: ChatItemType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>Type of the item: message or event. </p>"}))
    Item.add_member(:participant_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ParticipantId, location_name: 'ParticipantId', traits: {"smithy.api#documentation" => "<p>The ID of the sender in the session.</p>"}))
    Item.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DisplayName, location_name: 'DisplayName', traits: {"smithy.api#documentation" => "<p>The chat display name of the sender.</p>"}))
    Item.add_member(:participant_role, Smithy::Schema::Shapes::ShapeRef.new(shape: ParticipantRole, location_name: 'ParticipantRole', traits: {"smithy.api#documentation" => "<p>The role of the sender. For example, is it a customer, agent, or system.</p>"}))
    Item.add_member(:attachments, Smithy::Schema::Shapes::ShapeRef.new(shape: Attachments, location_name: 'Attachments', traits: {"smithy.api#documentation" => "<p>Provides information about the attachments.</p>"}))
    Item.add_member(:message_metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageMetadata, location_name: 'MessageMetadata', traits: {"smithy.api#documentation" => "<p>The metadata related to the message. Currently this supports only information related\n            to message receipts.</p>"}))
    Item.add_member(:related_contact_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ContactId, location_name: 'RelatedContactId', traits: {"smithy.api#documentation" => "<p>The contactId on which the transcript item was originally sent. This field is only\n            populated for persistent chats when the transcript item is from the past chat session.\n            For more information, see <a href=\"https://docs.aws.amazon.com/connect/latest/adminguide/chat-persistence.html\">Enable persistent\n            chat</a>.</p>"}))
    Item.add_member(:contact_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ContactId, location_name: 'ContactId', traits: {"smithy.api#documentation" => "<p>The contactId on which the transcript item was originally sent. This field is\n            populated only when the transcript item is from the current chat session.</p>"}))
    Item.type = Types::Item
    MessageMetadata.add_member(:message_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ChatItemId, location_name: 'MessageId', traits: {"smithy.api#documentation" => "<p>The identifier of the message that contains the metadata information. </p>"}))
    MessageMetadata.add_member(:receipts, Smithy::Schema::Shapes::ShapeRef.new(shape: Receipts, location_name: 'Receipts', traits: {"smithy.api#documentation" => "<p>The list of receipt information for a message for different recipients.</p>"}))
    MessageMetadata.type = Types::MessageMetadata
    ParticipantRole.add_member(:agent, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AGENT', traits: {"smithy.api#enumValue" => "AGENT"}))
    ParticipantRole.add_member(:customer, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CUSTOMER', traits: {"smithy.api#enumValue" => "CUSTOMER"}))
    ParticipantRole.add_member(:system, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SYSTEM', traits: {"smithy.api#enumValue" => "SYSTEM"}))
    ParticipantRole.add_member(:custom_bot, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CUSTOM_BOT', traits: {"smithy.api#enumValue" => "CUSTOM_BOT"}))
    ParticipantRole.add_member(:supervisor, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUPERVISOR', traits: {"smithy.api#enumValue" => "SUPERVISOR"}))
    Receipt.add_member(:delivered_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Instant, location_name: 'DeliveredTimestamp', traits: {"smithy.api#documentation" => "<p>The time when the message was delivered to the recipient.</p>"}))
    Receipt.add_member(:read_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Instant, location_name: 'ReadTimestamp', traits: {"smithy.api#documentation" => "<p>The time when the message was read by the recipient.</p>"}))
    Receipt.add_member(:recipient_participant_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ParticipantId, location_name: 'RecipientParticipantId', traits: {"smithy.api#documentation" => "<p>The identifier of the recipient of the message. </p>"}))
    Receipt.type = Types::Receipt
    Receipts.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Receipt)
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'Message'))
    ResourceNotFoundException.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'ResourceId', traits: {"smithy.api#documentation" => "<p>The identifier of the resource.</p>"}))
    ResourceNotFoundException.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'ResourceType', traits: {"smithy.api#documentation" => "<p>The type of Amazon Connect resource.</p>"}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourceType.add_member(:contact, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONTACT', traits: {"smithy.api#enumValue" => "CONTACT"}))
    ResourceType.add_member(:contact_flow, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONTACT_FLOW', traits: {"smithy.api#enumValue" => "CONTACT_FLOW"}))
    ResourceType.add_member(:instance, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INSTANCE', traits: {"smithy.api#enumValue" => "INSTANCE"}))
    ResourceType.add_member(:participant, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PARTICIPANT', traits: {"smithy.api#enumValue" => "PARTICIPANT"}))
    ResourceType.add_member(:hierarchy_level, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HIERARCHY_LEVEL', traits: {"smithy.api#enumValue" => "HIERARCHY_LEVEL"}))
    ResourceType.add_member(:hierarchy_group, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HIERARCHY_GROUP', traits: {"smithy.api#enumValue" => "HIERARCHY_GROUP"}))
    ResourceType.add_member(:user, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'USER', traits: {"smithy.api#enumValue" => "USER"}))
    ResourceType.add_member(:phone_number, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PHONE_NUMBER', traits: {"smithy.api#enumValue" => "PHONE_NUMBER"}))
    ScanDirection.add_member(:forward, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FORWARD', traits: {"smithy.api#enumValue" => "FORWARD"}))
    ScanDirection.add_member(:backward, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BACKWARD', traits: {"smithy.api#enumValue" => "BACKWARD"}))
    SendEventRequest.add_member(:content_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ChatContentType, location_name: 'ContentType', traits: {"smithy.api#documentation" => "<p>The content type of the request. Supported types are:</p>\n         <ul>\n            <li>\n               <p>application/vnd.amazonaws.connect.event.typing</p>\n            </li>\n            <li>\n               <p>application/vnd.amazonaws.connect.event.connection.acknowledged (will be\n                    deprecated on December 31, 2024) </p>\n            </li>\n            <li>\n               <p>application/vnd.amazonaws.connect.event.message.delivered</p>\n            </li>\n            <li>\n               <p>application/vnd.amazonaws.connect.event.message.read</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    SendEventRequest.add_member(:content, Smithy::Schema::Shapes::ShapeRef.new(shape: ChatContent, location_name: 'Content', traits: {"smithy.api#documentation" => "<p>The content of the event to be sent (for example, message text). For content related\n            to message receipts, this is supported in the form of a JSON string.</p>\n         <p>Sample Content: \"{\\\"messageId\\\":\\\"11111111-aaaa-bbbb-cccc-EXAMPLE01234\\\"}\"</p>"}))
    SendEventRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'ClientToken', traits: {"smithy.api#documentation" => "<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the\n            request. If not provided, the Amazon Web Services\n            SDK populates this field. For more information about idempotency, see\n            <a href=\"https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/\">Making retries safe with idempotent APIs</a>.</p>", "smithy.api#idempotencyToken" => {}}))
    SendEventRequest.add_member(:connection_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ParticipantToken, location_name: 'ConnectionToken', traits: {"smithy.api#documentation" => "<p>The authentication token associated with the participant's connection.</p>", "smithy.api#httpHeader" => "X-Amz-Bearer", "smithy.api#required" => {}}))
    SendEventRequest.type = Types::SendEventRequest
    SendEventResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ChatItemId, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The ID of the response.</p>"}))
    SendEventResponse.add_member(:absolute_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Instant, location_name: 'AbsoluteTime', traits: {"smithy.api#documentation" => "<p>The time when the event was sent.</p>\n         <p>It's specified in ISO 8601 format: yyyy-MM-ddThh:mm:ss.SSSZ. For example,\n            2019-11-08T02:41:28.172Z.</p>"}))
    SendEventResponse.type = Types::SendEventResponse
    SendMessageRequest.add_member(:content_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ChatContentType, location_name: 'ContentType', traits: {"smithy.api#documentation" => "<p>The type of the content. Supported types are <code>text/plain</code>,\n                <code>text/markdown</code>, <code>application/json</code>, and\n                <code>application/vnd.amazonaws.connect.message.interactive.response</code>.</p>", "smithy.api#required" => {}}))
    SendMessageRequest.add_member(:content, Smithy::Schema::Shapes::ShapeRef.new(shape: ChatContent, location_name: 'Content', traits: {"smithy.api#documentation" => "<p>The content of the message. </p>\n         <ul>\n            <li>\n               <p>For <code>text/plain</code> and <code>text/markdown</code>, the Length\n                    Constraints are Minimum of 1, Maximum of 1024. </p>\n            </li>\n            <li>\n               <p>For <code>application/json</code>, the Length Constraints are Minimum of 1,\n                    Maximum of 12000. </p>\n            </li>\n            <li>\n               <p>For\n                        <code>application/vnd.amazonaws.connect.message.interactive.response</code>,\n                    the Length Constraints are Minimum of 1, Maximum of 12288.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    SendMessageRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'ClientToken', traits: {"smithy.api#documentation" => "<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the\n            request. If not provided, the Amazon Web Services\n            SDK populates this field. For more information about idempotency, see\n            <a href=\"https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/\">Making retries safe with idempotent APIs</a>.</p>", "smithy.api#idempotencyToken" => {}}))
    SendMessageRequest.add_member(:connection_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ParticipantToken, location_name: 'ConnectionToken', traits: {"smithy.api#documentation" => "<p>The authentication token associated with the connection.</p>", "smithy.api#httpHeader" => "X-Amz-Bearer", "smithy.api#required" => {}}))
    SendMessageRequest.type = Types::SendMessageRequest
    SendMessageResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ChatItemId, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The ID of the message.</p>"}))
    SendMessageResponse.add_member(:absolute_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Instant, location_name: 'AbsoluteTime', traits: {"smithy.api#documentation" => "<p>The time when the message was sent.</p>\n         <p>It's specified in ISO 8601 format: yyyy-MM-ddThh:mm:ss.SSSZ. For example,\n            2019-11-08T02:41:28.172Z.</p>"}))
    SendMessageResponse.type = Types::SendMessageResponse
    ServiceQuotaExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'Message', traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    SortKey.add_member(:descending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DESCENDING', traits: {"smithy.api#enumValue" => "DESCENDING"}))
    SortKey.add_member(:ascending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ASCENDING', traits: {"smithy.api#enumValue" => "ASCENDING"}))
    StartAttachmentUploadRequest.add_member(:content_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ContentType, location_name: 'ContentType', traits: {"smithy.api#documentation" => "<p>Describes the MIME file type of the attachment. For a list of supported file types, see <a href=\"https://docs.aws.amazon.com/connect/latest/adminguide/feature-limits.html\">Feature specifications</a> in the <i>Amazon Connect Administrator Guide</i>.</p>", "smithy.api#required" => {}}))
    StartAttachmentUploadRequest.add_member(:attachment_size_in_bytes, Smithy::Schema::Shapes::ShapeRef.new(shape: AttachmentSizeInBytes, location_name: 'AttachmentSizeInBytes', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The size of the attachment in bytes.</p>", "smithy.api#required" => {}}))
    StartAttachmentUploadRequest.add_member(:attachment_name, Smithy::Schema::Shapes::ShapeRef.new(shape: AttachmentName, location_name: 'AttachmentName', traits: {"smithy.api#documentation" => "<p>A case-sensitive name of the attachment being uploaded.</p>", "smithy.api#required" => {}}))
    StartAttachmentUploadRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyClientToken, location_name: 'ClientToken', traits: {"smithy.api#documentation" => "<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the\n            request. If not provided, the Amazon Web Services\n            SDK populates this field. For more information about idempotency, see\n            <a href=\"https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/\">Making retries safe with idempotent APIs</a>.</p>", "smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    StartAttachmentUploadRequest.add_member(:connection_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ParticipantToken, location_name: 'ConnectionToken', traits: {"smithy.api#documentation" => "<p>The authentication token associated with the participant's connection.</p>", "smithy.api#httpHeader" => "X-Amz-Bearer", "smithy.api#required" => {}}))
    StartAttachmentUploadRequest.type = Types::StartAttachmentUploadRequest
    StartAttachmentUploadResponse.add_member(:attachment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ArtifactId, location_name: 'AttachmentId', traits: {"smithy.api#documentation" => "<p>A unique identifier for the attachment.</p>"}))
    StartAttachmentUploadResponse.add_member(:upload_metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: UploadMetadata, location_name: 'UploadMetadata', traits: {"smithy.api#documentation" => "<p>The headers to be provided while uploading the file to the URL.</p>"}))
    StartAttachmentUploadResponse.type = Types::StartAttachmentUploadResponse
    StartPosition.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ChatItemId, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The ID of the message or event where to start. </p>"}))
    StartPosition.add_member(:absolute_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Instant, location_name: 'AbsoluteTime', traits: {"smithy.api#documentation" => "<p>The time in ISO format where to start.</p>\n         <p>It's specified in ISO 8601 format: yyyy-MM-ddThh:mm:ss.SSSZ. For example,\n            2019-11-08T02:41:28.172Z.</p>"}))
    StartPosition.add_member(:most_recent, Smithy::Schema::Shapes::ShapeRef.new(shape: MostRecent, location_name: 'MostRecent', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The start position of the most recent message where you want to start. </p>"}))
    StartPosition.type = Types::StartPosition
    ThrottlingException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'Message', traits: {"smithy.api#required" => {}}))
    ThrottlingException.type = Types::ThrottlingException
    Transcript.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Item)
    UploadMetadata.add_member(:url, Smithy::Schema::Shapes::ShapeRef.new(shape: UploadMetadataUrl, location_name: 'Url', traits: {"smithy.api#documentation" => "<p>This is the pre-signed URL that can be used for uploading the file to Amazon S3 when used in response \nto <a href=\"https://docs.aws.amazon.com/connect-participant/latest/APIReference/API_StartAttachmentUpload.html\">StartAttachmentUpload</a>.</p>"}))
    UploadMetadata.add_member(:url_expiry, Smithy::Schema::Shapes::ShapeRef.new(shape: ISO8601Datetime, location_name: 'UrlExpiry', traits: {"smithy.api#documentation" => "<p>The expiration time of the URL in ISO timestamp. It's specified in ISO 8601 format: yyyy-MM-ddThh:mm:ss.SSSZ. For example, 2019-11-08T02:41:28.172Z.</p>"}))
    UploadMetadata.add_member(:headers_to_include, Smithy::Schema::Shapes::ShapeRef.new(shape: UploadMetadataSignedHeaders, location_name: 'HeadersToInclude', traits: {"smithy.api#documentation" => "<p>The headers to be provided while uploading the file to the URL.</p>"}))
    UploadMetadata.type = Types::UploadMetadata
    UploadMetadataSignedHeaders.key = Smithy::Schema::Shapes::ShapeRef.new(shape: UploadMetadataSignedHeadersKey)
    UploadMetadataSignedHeaders.value = Smithy::Schema::Shapes::ShapeRef.new(shape: UploadMetadataSignedHeadersValue)
    ValidationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Reason, location_name: 'Message', traits: {"smithy.api#required" => {}}))
    ValidationException.type = Types::ValidationException
    View.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ViewId, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The identifier of the view.</p>"}))
    View.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the view.</p>"}))
    View.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ViewName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the view.</p>"}))
    View.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: ViewVersion, location_name: 'Version', traits: {"smithy.api#documentation" => "<p>The current version of the view.</p>"}))
    View.add_member(:content, Smithy::Schema::Shapes::ShapeRef.new(shape: ViewContent, location_name: 'Content', traits: {"smithy.api#documentation" => "<p>View content containing all content necessary to render a view except for runtime\n            input data.</p>"}))
    View.type = Types::View
    ViewActions.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ViewAction)
    ViewContent.add_member(:input_schema, Smithy::Schema::Shapes::ShapeRef.new(shape: ViewInputSchema, location_name: 'InputSchema', traits: {"smithy.api#documentation" => "<p>The schema representing the input data that the view template must be supplied to\n            render.</p>"}))
    ViewContent.add_member(:template, Smithy::Schema::Shapes::ShapeRef.new(shape: ViewTemplate, location_name: 'Template', traits: {"smithy.api#documentation" => "<p>The view template representing the structure of the view.</p>"}))
    ViewContent.add_member(:actions, Smithy::Schema::Shapes::ShapeRef.new(shape: ViewActions, location_name: 'Actions', traits: {"smithy.api#documentation" => "<p>A list of actions possible from the view</p>"}))
    ViewContent.type = Types::ViewContent
    Websocket.add_member(:url, Smithy::Schema::Shapes::ShapeRef.new(shape: PreSignedConnectionUrl, location_name: 'Url', traits: {"smithy.api#documentation" => "<p>The URL of the websocket.</p>"}))
    Websocket.add_member(:connection_expiry, Smithy::Schema::Shapes::ShapeRef.new(shape: ISO8601Datetime, location_name: 'ConnectionExpiry', traits: {"smithy.api#documentation" => "<p>The URL expiration timestamp in ISO date format.</p>\n         <p>It's specified in ISO 8601 format: yyyy-MM-ddThh:mm:ss.SSSZ. For example,\n            2019-11-08T02:41:28.172Z.</p>"}))
    Websocket.type = Types::Websocket

    AmazonConnectParticipantServiceLambda = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.connectparticipant#AmazonConnectParticipantServiceLambda"
      service.name = "AmazonConnectParticipantServiceLambda"
      service.version = "2018-09-07"
      service.traits = {"aws.api#service" => {"sdkId" => "ConnectParticipant", "arnNamespace" => "connect", "cloudFormationName" => "ConnectParticipant", "cloudTrailEventSource" => "connectparticipant.amazonaws.com", "endpointPrefix" => "participant.connect"}, "aws.auth#sigv4" => {"name" => "execute-api"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "Amazon Connect Participant Service"}
      service.add_operation(:cancel_participant_authentication, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connectparticipant#CancelParticipantAuthentication"
        operation.name = "CancelParticipantAuthentication"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CancelParticipantAuthenticationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CancelParticipantAuthenticationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/participant/cancel-authentication", "code" => 200}}
      end)
      service.add_operation(:complete_attachment_upload, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connectparticipant#CompleteAttachmentUpload"
        operation.name = "CompleteAttachmentUpload"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CompleteAttachmentUploadRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CompleteAttachmentUploadResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/participant/complete-attachment-upload", "code" => 200}}
      end)
      service.add_operation(:create_participant_connection, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connectparticipant#CreateParticipantConnection"
        operation.name = "CreateParticipantConnection"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateParticipantConnectionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateParticipantConnectionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/participant/connection", "code" => 200}}
      end)
      service.add_operation(:describe_view, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connectparticipant#DescribeView"
        operation.name = "DescribeView"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeViewRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeViewResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/participant/views/{ViewToken}", "code" => 200}}
      end)
      service.add_operation(:disconnect_participant, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connectparticipant#DisconnectParticipant"
        operation.name = "DisconnectParticipant"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DisconnectParticipantRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DisconnectParticipantResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/participant/disconnect", "code" => 200}}
      end)
      service.add_operation(:get_attachment, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connectparticipant#GetAttachment"
        operation.name = "GetAttachment"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAttachmentRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAttachmentResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/participant/attachment", "code" => 200}}
      end)
      service.add_operation(:get_authentication_url, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connectparticipant#GetAuthenticationUrl"
        operation.name = "GetAuthenticationUrl"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAuthenticationUrlRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAuthenticationUrlResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/participant/authentication-url", "code" => 200}}
      end)
      service.add_operation(:get_transcript, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connectparticipant#GetTranscript"
        operation.name = "GetTranscript"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetTranscriptRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetTranscriptResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/participant/transcript", "code" => 200}}
        operation[:paginator] = Paginators::GetTranscript.new
      end)
      service.add_operation(:send_event, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connectparticipant#SendEvent"
        operation.name = "SendEvent"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: SendEventRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: SendEventResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/participant/event", "code" => 200}}
      end)
      service.add_operation(:send_message, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connectparticipant#SendMessage"
        operation.name = "SendMessage"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: SendMessageRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: SendMessageResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/participant/message", "code" => 200}}
      end)
      service.add_operation(:start_attachment_upload, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connectparticipant#StartAttachmentUpload"
        operation.name = "StartAttachmentUpload"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartAttachmentUploadRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartAttachmentUploadResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/participant/start-attachment-upload", "code" => 200}}
      end)

    end

    class << self
      def type_registry
        return @type_registry if @type_registry

        shapes = constants.map { |sym| const_get(sym) }.select { |const| const.is_a?(Smithy::Schema::Shapes::StructureShape) }
        @type_registry = Smithy::Schema::TypeRegistry.new(shapes)
      end
    end
  end
end
