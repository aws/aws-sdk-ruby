# frozen_string_literal: true

# This is generated code!

module Aws::ConnectParticipant
  # This module contains a schema composed of shapes used by the client.
  module Schema

    ARN = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.connectparticipant#ARN", name: "ARN")
    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.connectparticipant#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    ArtifactId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.connectparticipant#ArtifactId", name: "ArtifactId", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    ArtifactStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.connectparticipant#ArtifactStatus", name: "ArtifactStatus")
    AttachmentIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.connectparticipant#AttachmentIdList", name: "AttachmentIdList", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    AttachmentItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.connectparticipant#AttachmentItem", name: "AttachmentItem")
    AttachmentName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.connectparticipant#AttachmentName", name: "AttachmentName", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    AttachmentSizeInBytes = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.connectparticipant#AttachmentSizeInBytes", name: "AttachmentSizeInBytes", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 1}})
    Attachments = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.connectparticipant#Attachments", name: "Attachments")
    Attendee = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.connectparticipant#Attendee", name: "Attendee")
    AttendeeId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.connectparticipant#AttendeeId", name: "AttendeeId")
    AudioFeatures = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.connectparticipant#AudioFeatures", name: "AudioFeatures")
    AuthenticationUrl = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.connectparticipant#AuthenticationUrl", name: "AuthenticationUrl", traits: {"smithy.api#length" => {"min" => 1, "max" => 2083}})
    Bool = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.connectparticipant#Bool", name: "Bool")
    CancelParticipantAuthenticationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.connectparticipant#CancelParticipantAuthenticationRequest", name: "CancelParticipantAuthenticationRequest")
    CancelParticipantAuthenticationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.connectparticipant#CancelParticipantAuthenticationResponse", name: "CancelParticipantAuthenticationResponse")
    ChatContent = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.connectparticipant#ChatContent", name: "ChatContent", traits: {"smithy.api#length" => {"min" => 1, "max" => 16384}})
    ChatContentType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.connectparticipant#ChatContentType", name: "ChatContentType", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    ChatItemId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.connectparticipant#ChatItemId", name: "ChatItemId", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    ChatItemType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.connectparticipant#ChatItemType", name: "ChatItemType")
    ClientToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.connectparticipant#ClientToken", name: "ClientToken", traits: {"smithy.api#length" => {"min" => 0, "max" => 500}})
    CompleteAttachmentUploadRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.connectparticipant#CompleteAttachmentUploadRequest", name: "CompleteAttachmentUploadRequest")
    CompleteAttachmentUploadResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.connectparticipant#CompleteAttachmentUploadResponse", name: "CompleteAttachmentUploadResponse")
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.connectparticipant#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ConnectionCredentials = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.connectparticipant#ConnectionCredentials", name: "ConnectionCredentials")
    ConnectionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.connectparticipant#ConnectionType", name: "ConnectionType")
    ConnectionTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.connectparticipant#ConnectionTypeList", name: "ConnectionTypeList", traits: {"smithy.api#length" => {"min" => 1}})
    ContactId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.connectparticipant#ContactId", name: "ContactId", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    ContentType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.connectparticipant#ContentType", name: "ContentType", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    CreateParticipantConnectionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.connectparticipant#CreateParticipantConnectionRequest", name: "CreateParticipantConnectionRequest")
    CreateParticipantConnectionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.connectparticipant#CreateParticipantConnectionResponse", name: "CreateParticipantConnectionResponse")
    DescribeViewRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.connectparticipant#DescribeViewRequest", name: "DescribeViewRequest")
    DescribeViewResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.connectparticipant#DescribeViewResponse", name: "DescribeViewResponse")
    DisconnectParticipantRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.connectparticipant#DisconnectParticipantRequest", name: "DisconnectParticipantRequest")
    DisconnectParticipantResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.connectparticipant#DisconnectParticipantResponse", name: "DisconnectParticipantResponse")
    DisplayName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.connectparticipant#DisplayName", name: "DisplayName", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    GetAttachmentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.connectparticipant#GetAttachmentRequest", name: "GetAttachmentRequest")
    GetAttachmentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.connectparticipant#GetAttachmentResponse", name: "GetAttachmentResponse")
    GetAuthenticationUrlRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.connectparticipant#GetAuthenticationUrlRequest", name: "GetAuthenticationUrlRequest")
    GetAuthenticationUrlResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.connectparticipant#GetAuthenticationUrlResponse", name: "GetAuthenticationUrlResponse")
    GetTranscriptRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.connectparticipant#GetTranscriptRequest", name: "GetTranscriptRequest")
    GetTranscriptResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.connectparticipant#GetTranscriptResponse", name: "GetTranscriptResponse")
    GuidString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.connectparticipant#GuidString", name: "GuidString", traits: {"smithy.api#pattern" => "^[a-fA-F0-9]{8}(?:-[a-fA-F0-9]{4}){3}-[a-fA-F0-9]{12}$"})
    ISO8601Datetime = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.connectparticipant#ISO8601Datetime", name: "ISO8601Datetime")
    Instant = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.connectparticipant#Instant", name: "Instant", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.connectparticipant#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    Item = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.connectparticipant#Item", name: "Item")
    JoinToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.connectparticipant#JoinToken", name: "JoinToken", traits: {"smithy.api#sensitive" => {}})
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.connectparticipant#MaxResults", name: "MaxResults", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 100}})
    MeetingFeatureStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.connectparticipant#MeetingFeatureStatus", name: "MeetingFeatureStatus")
    MeetingFeaturesConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.connectparticipant#MeetingFeaturesConfiguration", name: "MeetingFeaturesConfiguration")
    Message = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.connectparticipant#Message", name: "Message")
    MessageMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.connectparticipant#MessageMetadata", name: "MessageMetadata")
    MostRecent = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.connectparticipant#MostRecent", name: "MostRecent", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 100}})
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.connectparticipant#NextToken", name: "NextToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}})
    NonEmptyClientToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.connectparticipant#NonEmptyClientToken", name: "NonEmptyClientToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 500}})
    ParticipantId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.connectparticipant#ParticipantId", name: "ParticipantId", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    ParticipantRole = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.connectparticipant#ParticipantRole", name: "ParticipantRole")
    ParticipantToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.connectparticipant#ParticipantToken", name: "ParticipantToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}})
    PreSignedAttachmentUrl = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.connectparticipant#PreSignedAttachmentUrl", name: "PreSignedAttachmentUrl", traits: {"smithy.api#length" => {"min" => 1, "max" => 2000}})
    PreSignedConnectionUrl = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.connectparticipant#PreSignedConnectionUrl", name: "PreSignedConnectionUrl", traits: {"smithy.api#length" => {"min" => 1, "max" => 2000}})
    Reason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.connectparticipant#Reason", name: "Reason", traits: {"smithy.api#length" => {"min" => 1, "max" => 2000}})
    Receipt = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.connectparticipant#Receipt", name: "Receipt")
    Receipts = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.connectparticipant#Receipts", name: "Receipts")
    RedirectURI = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.connectparticipant#RedirectURI", name: "RedirectURI", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    ResourceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.connectparticipant#ResourceId", name: "ResourceId")
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.connectparticipant#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.connectparticipant#ResourceType", name: "ResourceType")
    ScanDirection = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.connectparticipant#ScanDirection", name: "ScanDirection")
    SendEventRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.connectparticipant#SendEventRequest", name: "SendEventRequest")
    SendEventResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.connectparticipant#SendEventResponse", name: "SendEventResponse")
    SendMessageRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.connectparticipant#SendMessageRequest", name: "SendMessageRequest")
    SendMessageResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.connectparticipant#SendMessageResponse", name: "SendMessageResponse")
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.connectparticipant#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    SessionId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.connectparticipant#SessionId", name: "SessionId", traits: {"smithy.api#length" => {"min" => 36, "max" => 36}})
    SortKey = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.connectparticipant#SortKey", name: "SortKey")
    StartAttachmentUploadRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.connectparticipant#StartAttachmentUploadRequest", name: "StartAttachmentUploadRequest")
    StartAttachmentUploadResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.connectparticipant#StartAttachmentUploadResponse", name: "StartAttachmentUploadResponse")
    StartPosition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.connectparticipant#StartPosition", name: "StartPosition")
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.connectparticipant#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    Transcript = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.connectparticipant#Transcript", name: "Transcript")
    URI = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.connectparticipant#URI", name: "URI", traits: {"smithy.api#length" => {"min" => 1, "max" => 2000}})
    URLExpiryInSeconds = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.connectparticipant#URLExpiryInSeconds", name: "URLExpiryInSeconds", traits: {"smithy.api#range" => {"min" => 5, "max" => 300}})
    UploadMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.connectparticipant#UploadMetadata", name: "UploadMetadata")
    UploadMetadataSignedHeaders = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.connectparticipant#UploadMetadataSignedHeaders", name: "UploadMetadataSignedHeaders")
    UploadMetadataSignedHeadersKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.connectparticipant#UploadMetadataSignedHeadersKey", name: "UploadMetadataSignedHeadersKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    UploadMetadataSignedHeadersValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.connectparticipant#UploadMetadataSignedHeadersValue", name: "UploadMetadataSignedHeadersValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    UploadMetadataUrl = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.connectparticipant#UploadMetadataUrl", name: "UploadMetadataUrl", traits: {"smithy.api#length" => {"min" => 1, "max" => 2000}})
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.connectparticipant#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    View = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.connectparticipant#View", name: "View")
    ViewAction = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.connectparticipant#ViewAction", name: "ViewAction", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^([\\p{L}\\p{N}_.:\\/=+\\-@()']+[\\p{L}\\p{Z}\\p{N}_.:\\/=+\\-@()']*)$", "smithy.api#sensitive" => {}})
    ViewActions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.connectparticipant#ViewActions", name: "ViewActions")
    ViewContent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.connectparticipant#ViewContent", name: "ViewContent")
    ViewId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.connectparticipant#ViewId", name: "ViewId", traits: {"smithy.api#length" => {"min" => 1, "max" => 500}, "smithy.api#pattern" => "^[a-zA-Z0-9\\_\\-:\\/$]+$"})
    ViewInputSchema = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.connectparticipant#ViewInputSchema", name: "ViewInputSchema", traits: {"smithy.api#sensitive" => {}})
    ViewName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.connectparticipant#ViewName", name: "ViewName", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^([\\p{L}\\p{N}_.:\\/=+\\-@()']+[\\p{L}\\p{Z}\\p{N}_.:\\/=+\\-@()']*)$", "smithy.api#sensitive" => {}})
    ViewTemplate = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.connectparticipant#ViewTemplate", name: "ViewTemplate", traits: {"smithy.api#sensitive" => {}})
    ViewToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.connectparticipant#ViewToken", name: "ViewToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}})
    ViewVersion = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.connectparticipant#ViewVersion", name: "ViewVersion")
    WebRTCConnection = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.connectparticipant#WebRTCConnection", name: "WebRTCConnection")
    WebRTCMediaPlacement = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.connectparticipant#WebRTCMediaPlacement", name: "WebRTCMediaPlacement")
    WebRTCMeeting = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.connectparticipant#WebRTCMeeting", name: "WebRTCMeeting")
    Websocket = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.connectparticipant#Websocket", name: "Websocket")

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: "Message", traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    ArtifactStatus.add_member(:approved, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "APPROVED", traits: {"smithy.api#enumValue" => "APPROVED"}))
    ArtifactStatus.add_member(:rejected, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "REJECTED", traits: {"smithy.api#enumValue" => "REJECTED"}))
    ArtifactStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    AttachmentIdList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArtifactId)
    AttachmentItem.add_member(:content_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContentType, location_name: "ContentType"))
    AttachmentItem.add_member(:attachment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArtifactId, location_name: "AttachmentId"))
    AttachmentItem.add_member(:attachment_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttachmentName, location_name: "AttachmentName"))
    AttachmentItem.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArtifactStatus, location_name: "Status"))
    AttachmentItem.type = Types::AttachmentItem
    Attachments.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttachmentItem)
    Attendee.add_member(:attendee_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttendeeId, location_name: "AttendeeId"))
    Attendee.add_member(:join_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JoinToken, location_name: "JoinToken"))
    Attendee.type = Types::Attendee
    AudioFeatures.add_member(:echo_reduction, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MeetingFeatureStatus, location_name: "EchoReduction"))
    AudioFeatures.type = Types::AudioFeatures
    CancelParticipantAuthenticationRequest.add_member(:session_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SessionId, location_name: "SessionId", traits: {"smithy.api#required" => {}}))
    CancelParticipantAuthenticationRequest.add_member(:connection_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ParticipantToken, location_name: "ConnectionToken", traits: {"smithy.api#httpHeader" => "X-Amz-Bearer", "smithy.api#required" => {}}))
    CancelParticipantAuthenticationRequest.type = Types::CancelParticipantAuthenticationRequest
    CancelParticipantAuthenticationResponse.type = Types::CancelParticipantAuthenticationResponse
    ChatItemType.add_member(:typing, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TYPING", traits: {"smithy.api#enumValue" => "TYPING"}))
    ChatItemType.add_member(:participant_joined, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PARTICIPANT_JOINED", traits: {"smithy.api#enumValue" => "PARTICIPANT_JOINED"}))
    ChatItemType.add_member(:participant_left, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PARTICIPANT_LEFT", traits: {"smithy.api#enumValue" => "PARTICIPANT_LEFT"}))
    ChatItemType.add_member(:chat_ended, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CHAT_ENDED", traits: {"smithy.api#enumValue" => "CHAT_ENDED"}))
    ChatItemType.add_member(:transfer_succeeded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TRANSFER_SUCCEEDED", traits: {"smithy.api#enumValue" => "TRANSFER_SUCCEEDED"}))
    ChatItemType.add_member(:transfer_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TRANSFER_FAILED", traits: {"smithy.api#enumValue" => "TRANSFER_FAILED"}))
    ChatItemType.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MESSAGE", traits: {"smithy.api#enumValue" => "MESSAGE"}))
    ChatItemType.add_member(:event, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EVENT", traits: {"smithy.api#enumValue" => "EVENT"}))
    ChatItemType.add_member(:attachment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ATTACHMENT", traits: {"smithy.api#enumValue" => "ATTACHMENT"}))
    ChatItemType.add_member(:connection_ack, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CONNECTION_ACK", traits: {"smithy.api#enumValue" => "CONNECTION_ACK"}))
    ChatItemType.add_member(:message_delivered, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MESSAGE_DELIVERED", traits: {"smithy.api#enumValue" => "MESSAGE_DELIVERED"}))
    ChatItemType.add_member(:message_read, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MESSAGE_READ", traits: {"smithy.api#enumValue" => "MESSAGE_READ"}))
    CompleteAttachmentUploadRequest.add_member(:attachment_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttachmentIdList, location_name: "AttachmentIds", traits: {"smithy.api#required" => {}}))
    CompleteAttachmentUploadRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyClientToken, location_name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CompleteAttachmentUploadRequest.add_member(:connection_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ParticipantToken, location_name: "ConnectionToken", traits: {"smithy.api#httpHeader" => "X-Amz-Bearer", "smithy.api#required" => {}}))
    CompleteAttachmentUploadRequest.type = Types::CompleteAttachmentUploadRequest
    CompleteAttachmentUploadResponse.type = Types::CompleteAttachmentUploadResponse
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Reason, location_name: "Message", traits: {"smithy.api#required" => {}}))
    ConflictException.type = Types::ConflictException
    ConnectionCredentials.add_member(:connection_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ParticipantToken, location_name: "ConnectionToken"))
    ConnectionCredentials.add_member(:expiry, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ISO8601Datetime, location_name: "Expiry"))
    ConnectionCredentials.type = Types::ConnectionCredentials
    ConnectionType.add_member(:websocket, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "WEBSOCKET", traits: {"smithy.api#enumValue" => "WEBSOCKET"}))
    ConnectionType.add_member(:connection_credentials, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CONNECTION_CREDENTIALS", traits: {"smithy.api#enumValue" => "CONNECTION_CREDENTIALS"}))
    ConnectionType.add_member(:webrtc_connection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "WEBRTC_CONNECTION", traits: {"smithy.api#enumValue" => "WEBRTC_CONNECTION"}))
    ConnectionTypeList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionType)
    CreateParticipantConnectionRequest.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionTypeList, location_name: "Type"))
    CreateParticipantConnectionRequest.add_member(:participant_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ParticipantToken, location_name: "ParticipantToken", traits: {"smithy.api#httpHeader" => "X-Amz-Bearer", "smithy.api#required" => {}}))
    CreateParticipantConnectionRequest.add_member(:connect_participant, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Bool, location_name: "ConnectParticipant"))
    CreateParticipantConnectionRequest.type = Types::CreateParticipantConnectionRequest
    CreateParticipantConnectionResponse.add_member(:websocket, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Websocket, location_name: "Websocket"))
    CreateParticipantConnectionResponse.add_member(:connection_credentials, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionCredentials, location_name: "ConnectionCredentials"))
    CreateParticipantConnectionResponse.add_member(:web_rtc_connection, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WebRTCConnection, location_name: "WebRTCConnection"))
    CreateParticipantConnectionResponse.type = Types::CreateParticipantConnectionResponse
    DescribeViewRequest.add_member(:view_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ViewToken, location_name: "ViewToken", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeViewRequest.add_member(:connection_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ParticipantToken, location_name: "ConnectionToken", traits: {"smithy.api#httpHeader" => "X-Amz-Bearer", "smithy.api#required" => {}}))
    DescribeViewRequest.type = Types::DescribeViewRequest
    DescribeViewResponse.add_member(:view, ::Smithy::Schema::Shapes::ShapeRef.new(shape: View, location_name: "View"))
    DescribeViewResponse.type = Types::DescribeViewResponse
    DisconnectParticipantRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    DisconnectParticipantRequest.add_member(:connection_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ParticipantToken, location_name: "ConnectionToken", traits: {"smithy.api#httpHeader" => "X-Amz-Bearer", "smithy.api#required" => {}}))
    DisconnectParticipantRequest.type = Types::DisconnectParticipantRequest
    DisconnectParticipantResponse.type = Types::DisconnectParticipantResponse
    GetAttachmentRequest.add_member(:attachment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArtifactId, location_name: "AttachmentId", traits: {"smithy.api#required" => {}}))
    GetAttachmentRequest.add_member(:connection_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ParticipantToken, location_name: "ConnectionToken", traits: {"smithy.api#httpHeader" => "X-Amz-Bearer", "smithy.api#required" => {}}))
    GetAttachmentRequest.add_member(:url_expiry_in_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: URLExpiryInSeconds, location_name: "UrlExpiryInSeconds"))
    GetAttachmentRequest.type = Types::GetAttachmentRequest
    GetAttachmentResponse.add_member(:url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PreSignedAttachmentUrl, location_name: "Url"))
    GetAttachmentResponse.add_member(:url_expiry, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ISO8601Datetime, location_name: "UrlExpiry"))
    GetAttachmentResponse.add_member(:attachment_size_in_bytes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttachmentSizeInBytes, location_name: "AttachmentSizeInBytes", traits: {"smithy.api#default" => nil, "smithy.api#required" => {}}))
    GetAttachmentResponse.type = Types::GetAttachmentResponse
    GetAuthenticationUrlRequest.add_member(:session_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SessionId, location_name: "SessionId", traits: {"smithy.api#required" => {}}))
    GetAuthenticationUrlRequest.add_member(:redirect_uri, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RedirectURI, location_name: "RedirectUri", traits: {"smithy.api#required" => {}}))
    GetAuthenticationUrlRequest.add_member(:connection_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ParticipantToken, location_name: "ConnectionToken", traits: {"smithy.api#httpHeader" => "X-Amz-Bearer", "smithy.api#required" => {}}))
    GetAuthenticationUrlRequest.type = Types::GetAuthenticationUrlRequest
    GetAuthenticationUrlResponse.add_member(:authentication_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationUrl, location_name: "AuthenticationUrl"))
    GetAuthenticationUrlResponse.type = Types::GetAuthenticationUrlResponse
    GetTranscriptRequest.add_member(:contact_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContactId, location_name: "ContactId"))
    GetTranscriptRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", traits: {"smithy.api#default" => nil}))
    GetTranscriptRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    GetTranscriptRequest.add_member(:scan_direction, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScanDirection, location_name: "ScanDirection"))
    GetTranscriptRequest.add_member(:sort_order, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SortKey, location_name: "SortOrder"))
    GetTranscriptRequest.add_member(:start_position, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartPosition, location_name: "StartPosition"))
    GetTranscriptRequest.add_member(:connection_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ParticipantToken, location_name: "ConnectionToken", traits: {"smithy.api#httpHeader" => "X-Amz-Bearer", "smithy.api#required" => {}}))
    GetTranscriptRequest.type = Types::GetTranscriptRequest
    GetTranscriptResponse.add_member(:initial_contact_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContactId, location_name: "InitialContactId"))
    GetTranscriptResponse.add_member(:transcript, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Transcript, location_name: "Transcript"))
    GetTranscriptResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    GetTranscriptResponse.type = Types::GetTranscriptResponse
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: "Message", traits: {"smithy.api#required" => {}}))
    InternalServerException.type = Types::InternalServerException
    Item.add_member(:absolute_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Instant, location_name: "AbsoluteTime"))
    Item.add_member(:content, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChatContent, location_name: "Content"))
    Item.add_member(:content_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChatContentType, location_name: "ContentType"))
    Item.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChatItemId, location_name: "Id"))
    Item.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChatItemType, location_name: "Type"))
    Item.add_member(:participant_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ParticipantId, location_name: "ParticipantId"))
    Item.add_member(:display_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisplayName, location_name: "DisplayName"))
    Item.add_member(:participant_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ParticipantRole, location_name: "ParticipantRole"))
    Item.add_member(:attachments, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Attachments, location_name: "Attachments"))
    Item.add_member(:message_metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MessageMetadata, location_name: "MessageMetadata"))
    Item.add_member(:related_contact_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContactId, location_name: "RelatedContactId"))
    Item.add_member(:contact_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContactId, location_name: "ContactId"))
    Item.type = Types::Item
    MeetingFeatureStatus.add_member(:available, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AVAILABLE", traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    MeetingFeatureStatus.add_member(:unavailable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UNAVAILABLE", traits: {"smithy.api#enumValue" => "UNAVAILABLE"}))
    MeetingFeaturesConfiguration.add_member(:audio, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AudioFeatures, location_name: "Audio"))
    MeetingFeaturesConfiguration.type = Types::MeetingFeaturesConfiguration
    MessageMetadata.add_member(:message_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChatItemId, location_name: "MessageId"))
    MessageMetadata.add_member(:receipts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Receipts, location_name: "Receipts"))
    MessageMetadata.type = Types::MessageMetadata
    ParticipantRole.add_member(:agent, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AGENT", traits: {"smithy.api#enumValue" => "AGENT"}))
    ParticipantRole.add_member(:customer, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CUSTOMER", traits: {"smithy.api#enumValue" => "CUSTOMER"}))
    ParticipantRole.add_member(:system, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SYSTEM", traits: {"smithy.api#enumValue" => "SYSTEM"}))
    ParticipantRole.add_member(:custom_bot, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CUSTOM_BOT", traits: {"smithy.api#enumValue" => "CUSTOM_BOT"}))
    ParticipantRole.add_member(:supervisor, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SUPERVISOR", traits: {"smithy.api#enumValue" => "SUPERVISOR"}))
    Receipt.add_member(:delivered_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Instant, location_name: "DeliveredTimestamp"))
    Receipt.add_member(:read_timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Instant, location_name: "ReadTimestamp"))
    Receipt.add_member(:recipient_participant_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ParticipantId, location_name: "RecipientParticipantId"))
    Receipt.type = Types::Receipt
    Receipts.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Receipt)
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    ResourceNotFoundException.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "ResourceId"))
    ResourceNotFoundException.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: "ResourceType"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourceType.add_member(:contact, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CONTACT", traits: {"smithy.api#enumValue" => "CONTACT"}))
    ResourceType.add_member(:contact_flow, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CONTACT_FLOW", traits: {"smithy.api#enumValue" => "CONTACT_FLOW"}))
    ResourceType.add_member(:instance, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INSTANCE", traits: {"smithy.api#enumValue" => "INSTANCE"}))
    ResourceType.add_member(:participant, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PARTICIPANT", traits: {"smithy.api#enumValue" => "PARTICIPANT"}))
    ResourceType.add_member(:hierarchy_level, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HIERARCHY_LEVEL", traits: {"smithy.api#enumValue" => "HIERARCHY_LEVEL"}))
    ResourceType.add_member(:hierarchy_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HIERARCHY_GROUP", traits: {"smithy.api#enumValue" => "HIERARCHY_GROUP"}))
    ResourceType.add_member(:user, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "USER", traits: {"smithy.api#enumValue" => "USER"}))
    ResourceType.add_member(:phone_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PHONE_NUMBER", traits: {"smithy.api#enumValue" => "PHONE_NUMBER"}))
    ScanDirection.add_member(:forward, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FORWARD", traits: {"smithy.api#enumValue" => "FORWARD"}))
    ScanDirection.add_member(:backward, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BACKWARD", traits: {"smithy.api#enumValue" => "BACKWARD"}))
    SendEventRequest.add_member(:content_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChatContentType, location_name: "ContentType", traits: {"smithy.api#required" => {}}))
    SendEventRequest.add_member(:content, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChatContent, location_name: "Content"))
    SendEventRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    SendEventRequest.add_member(:connection_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ParticipantToken, location_name: "ConnectionToken", traits: {"smithy.api#httpHeader" => "X-Amz-Bearer", "smithy.api#required" => {}}))
    SendEventRequest.type = Types::SendEventRequest
    SendEventResponse.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChatItemId, location_name: "Id"))
    SendEventResponse.add_member(:absolute_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Instant, location_name: "AbsoluteTime"))
    SendEventResponse.type = Types::SendEventResponse
    SendMessageRequest.add_member(:content_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChatContentType, location_name: "ContentType", traits: {"smithy.api#required" => {}}))
    SendMessageRequest.add_member(:content, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChatContent, location_name: "Content", traits: {"smithy.api#required" => {}}))
    SendMessageRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    SendMessageRequest.add_member(:connection_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ParticipantToken, location_name: "ConnectionToken", traits: {"smithy.api#httpHeader" => "X-Amz-Bearer", "smithy.api#required" => {}}))
    SendMessageRequest.type = Types::SendMessageRequest
    SendMessageResponse.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChatItemId, location_name: "Id"))
    SendMessageResponse.add_member(:absolute_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Instant, location_name: "AbsoluteTime"))
    SendMessageResponse.type = Types::SendMessageResponse
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: "Message", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    SortKey.add_member(:descending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DESCENDING", traits: {"smithy.api#enumValue" => "DESCENDING"}))
    SortKey.add_member(:ascending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ASCENDING", traits: {"smithy.api#enumValue" => "ASCENDING"}))
    StartAttachmentUploadRequest.add_member(:content_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContentType, location_name: "ContentType", traits: {"smithy.api#required" => {}}))
    StartAttachmentUploadRequest.add_member(:attachment_size_in_bytes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttachmentSizeInBytes, location_name: "AttachmentSizeInBytes", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    StartAttachmentUploadRequest.add_member(:attachment_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttachmentName, location_name: "AttachmentName", traits: {"smithy.api#required" => {}}))
    StartAttachmentUploadRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyClientToken, location_name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    StartAttachmentUploadRequest.add_member(:connection_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ParticipantToken, location_name: "ConnectionToken", traits: {"smithy.api#httpHeader" => "X-Amz-Bearer", "smithy.api#required" => {}}))
    StartAttachmentUploadRequest.type = Types::StartAttachmentUploadRequest
    StartAttachmentUploadResponse.add_member(:attachment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArtifactId, location_name: "AttachmentId"))
    StartAttachmentUploadResponse.add_member(:upload_metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UploadMetadata, location_name: "UploadMetadata"))
    StartAttachmentUploadResponse.type = Types::StartAttachmentUploadResponse
    StartPosition.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChatItemId, location_name: "Id"))
    StartPosition.add_member(:absolute_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Instant, location_name: "AbsoluteTime"))
    StartPosition.add_member(:most_recent, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MostRecent, location_name: "MostRecent", traits: {"smithy.api#default" => 0}))
    StartPosition.type = Types::StartPosition
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: "Message", traits: {"smithy.api#required" => {}}))
    ThrottlingException.type = Types::ThrottlingException
    Transcript.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Item)
    UploadMetadata.add_member(:url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UploadMetadataUrl, location_name: "Url"))
    UploadMetadata.add_member(:url_expiry, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ISO8601Datetime, location_name: "UrlExpiry"))
    UploadMetadata.add_member(:headers_to_include, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UploadMetadataSignedHeaders, location_name: "HeadersToInclude"))
    UploadMetadata.type = Types::UploadMetadata
    UploadMetadataSignedHeaders.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UploadMetadataSignedHeadersKey)
    UploadMetadataSignedHeaders.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UploadMetadataSignedHeadersValue)
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Reason, location_name: "Message", traits: {"smithy.api#required" => {}}))
    ValidationException.type = Types::ValidationException
    View.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ViewId, location_name: "Id"))
    View.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: "Arn"))
    View.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ViewName, location_name: "Name"))
    View.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ViewVersion, location_name: "Version"))
    View.add_member(:content, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ViewContent, location_name: "Content"))
    View.type = Types::View
    ViewActions.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ViewAction)
    ViewContent.add_member(:input_schema, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ViewInputSchema, location_name: "InputSchema"))
    ViewContent.add_member(:template, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ViewTemplate, location_name: "Template"))
    ViewContent.add_member(:actions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ViewActions, location_name: "Actions"))
    ViewContent.type = Types::ViewContent
    WebRTCConnection.add_member(:attendee, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Attendee, location_name: "Attendee"))
    WebRTCConnection.add_member(:meeting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WebRTCMeeting, location_name: "Meeting"))
    WebRTCConnection.type = Types::WebRTCConnection
    WebRTCMediaPlacement.add_member(:audio_host_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: URI, location_name: "AudioHostUrl"))
    WebRTCMediaPlacement.add_member(:audio_fallback_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: URI, location_name: "AudioFallbackUrl"))
    WebRTCMediaPlacement.add_member(:signaling_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: URI, location_name: "SignalingUrl"))
    WebRTCMediaPlacement.add_member(:event_ingestion_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: URI, location_name: "EventIngestionUrl"))
    WebRTCMediaPlacement.type = Types::WebRTCMediaPlacement
    WebRTCMeeting.add_member(:media_placement, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WebRTCMediaPlacement, location_name: "MediaPlacement"))
    WebRTCMeeting.add_member(:meeting_features, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MeetingFeaturesConfiguration, location_name: "MeetingFeatures"))
    WebRTCMeeting.add_member(:meeting_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GuidString, location_name: "MeetingId"))
    WebRTCMeeting.type = Types::WebRTCMeeting
    Websocket.add_member(:url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PreSignedConnectionUrl, location_name: "Url"))
    Websocket.add_member(:connection_expiry, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ISO8601Datetime, location_name: "ConnectionExpiry"))
    Websocket.type = Types::Websocket

    AmazonConnectParticipantServiceLambda = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.connectparticipant#AmazonConnectParticipantServiceLambda"
      service.name = "AmazonConnectParticipantServiceLambda"
      service.version = "2018-09-07"
      service.traits = {"aws.api#service" => {"sdkId" => "ConnectParticipant", "arnNamespace" => "connect", "cloudFormationName" => "ConnectParticipant", "cloudTrailEventSource" => "connectparticipant.amazonaws.com", "endpointPrefix" => "participant.connect"}, "aws.auth#sigv4" => {"name" => "execute-api"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "Amazon Connect Participant Service"}
      service.add_operation(:cancel_participant_authentication, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connectparticipant#CancelParticipantAuthentication"
        operation.name = "CancelParticipantAuthentication"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CancelParticipantAuthenticationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CancelParticipantAuthenticationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/participant/cancel-authentication", "code" => 200}}
      end)
      service.add_operation(:complete_attachment_upload, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connectparticipant#CompleteAttachmentUpload"
        operation.name = "CompleteAttachmentUpload"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CompleteAttachmentUploadRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CompleteAttachmentUploadResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/participant/complete-attachment-upload", "code" => 200}}
      end)
      service.add_operation(:create_participant_connection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connectparticipant#CreateParticipantConnection"
        operation.name = "CreateParticipantConnection"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateParticipantConnectionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateParticipantConnectionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/participant/connection", "code" => 200}}
      end)
      service.add_operation(:describe_view, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connectparticipant#DescribeView"
        operation.name = "DescribeView"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeViewRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeViewResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/participant/views/{ViewToken}", "code" => 200}}
      end)
      service.add_operation(:disconnect_participant, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connectparticipant#DisconnectParticipant"
        operation.name = "DisconnectParticipant"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisconnectParticipantRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisconnectParticipantResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/participant/disconnect", "code" => 200}}
      end)
      service.add_operation(:get_attachment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connectparticipant#GetAttachment"
        operation.name = "GetAttachment"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAttachmentRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAttachmentResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/participant/attachment", "code" => 200}}
      end)
      service.add_operation(:get_authentication_url, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connectparticipant#GetAuthenticationUrl"
        operation.name = "GetAuthenticationUrl"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAuthenticationUrlRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAuthenticationUrlResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/participant/authentication-url", "code" => 200}}
      end)
      service.add_operation(:get_transcript, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connectparticipant#GetTranscript"
        operation.name = "GetTranscript"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetTranscriptRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetTranscriptResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/participant/transcript", "code" => 200}}
        operation[:paginator] = Paginators::GetTranscript.new
      end)
      service.add_operation(:send_event, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connectparticipant#SendEvent"
        operation.name = "SendEvent"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SendEventRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SendEventResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/participant/event", "code" => 200}}
      end)
      service.add_operation(:send_message, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connectparticipant#SendMessage"
        operation.name = "SendMessage"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SendMessageRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SendMessageResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/participant/message", "code" => 200}}
      end)
      service.add_operation(:start_attachment_upload, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connectparticipant#StartAttachmentUpload"
        operation.name = "StartAttachmentUpload"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartAttachmentUploadRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartAttachmentUploadResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/participant/start-attachment-upload", "code" => 200}}
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
