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
    MessageProcessingMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.connectparticipant#MessageProcessingMetadata", name: "MessageProcessingMetadata")
    MessageProcessingStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.connectparticipant#MessageProcessingStatus", name: "MessageProcessingStatus")
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

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "Message", traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    ArtifactStatus.add_member(:approved, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "APPROVED", traits: {"smithy.api#enumValue" => "APPROVED"}))
    ArtifactStatus.add_member(:rejected, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REJECTED", traits: {"smithy.api#enumValue" => "REJECTED"}))
    ArtifactStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    AttachmentIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ArtifactId, name: "member"))
    AttachmentItem.add_member(:content_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentType, name: "ContentType"))
    AttachmentItem.add_member(:attachment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ArtifactId, name: "AttachmentId"))
    AttachmentItem.add_member(:attachment_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachmentName, name: "AttachmentName"))
    AttachmentItem.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ArtifactStatus, name: "Status"))
    AttachmentItem.type = Types::AttachmentItem
    Attachments.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachmentItem, name: "member"))
    Attendee.add_member(:attendee_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AttendeeId, name: "AttendeeId"))
    Attendee.add_member(:join_token, ::Smithy::Schema::Shapes::MemberShape.new(target: JoinToken, name: "JoinToken"))
    Attendee.type = Types::Attendee
    AudioFeatures.add_member(:echo_reduction, ::Smithy::Schema::Shapes::MemberShape.new(target: MeetingFeatureStatus, name: "EchoReduction"))
    AudioFeatures.type = Types::AudioFeatures
    CancelParticipantAuthenticationRequest.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionId, name: "SessionId", traits: {"smithy.api#required" => {}}))
    CancelParticipantAuthenticationRequest.add_member(:connection_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ParticipantToken, name: "ConnectionToken", traits: {"smithy.api#httpHeader" => "X-Amz-Bearer", "smithy.api#required" => {}}))
    CancelParticipantAuthenticationRequest.type = Types::CancelParticipantAuthenticationRequest
    CancelParticipantAuthenticationResponse.type = Types::CancelParticipantAuthenticationResponse
    ChatItemType.add_member(:typing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TYPING", traits: {"smithy.api#enumValue" => "TYPING"}))
    ChatItemType.add_member(:participant_joined, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PARTICIPANT_JOINED", traits: {"smithy.api#enumValue" => "PARTICIPANT_JOINED"}))
    ChatItemType.add_member(:participant_left, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PARTICIPANT_LEFT", traits: {"smithy.api#enumValue" => "PARTICIPANT_LEFT"}))
    ChatItemType.add_member(:chat_ended, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CHAT_ENDED", traits: {"smithy.api#enumValue" => "CHAT_ENDED"}))
    ChatItemType.add_member(:transfer_succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TRANSFER_SUCCEEDED", traits: {"smithy.api#enumValue" => "TRANSFER_SUCCEEDED"}))
    ChatItemType.add_member(:transfer_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TRANSFER_FAILED", traits: {"smithy.api#enumValue" => "TRANSFER_FAILED"}))
    ChatItemType.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MESSAGE", traits: {"smithy.api#enumValue" => "MESSAGE"}))
    ChatItemType.add_member(:event, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EVENT", traits: {"smithy.api#enumValue" => "EVENT"}))
    ChatItemType.add_member(:attachment, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ATTACHMENT", traits: {"smithy.api#enumValue" => "ATTACHMENT"}))
    ChatItemType.add_member(:connection_ack, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONNECTION_ACK", traits: {"smithy.api#enumValue" => "CONNECTION_ACK"}))
    ChatItemType.add_member(:message_delivered, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MESSAGE_DELIVERED", traits: {"smithy.api#enumValue" => "MESSAGE_DELIVERED"}))
    ChatItemType.add_member(:message_read, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MESSAGE_READ", traits: {"smithy.api#enumValue" => "MESSAGE_READ"}))
    CompleteAttachmentUploadRequest.add_member(:attachment_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachmentIdList, name: "AttachmentIds", traits: {"smithy.api#required" => {}}))
    CompleteAttachmentUploadRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyClientToken, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CompleteAttachmentUploadRequest.add_member(:connection_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ParticipantToken, name: "ConnectionToken", traits: {"smithy.api#httpHeader" => "X-Amz-Bearer", "smithy.api#required" => {}}))
    CompleteAttachmentUploadRequest.type = Types::CompleteAttachmentUploadRequest
    CompleteAttachmentUploadResponse.type = Types::CompleteAttachmentUploadResponse
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Reason, name: "Message", traits: {"smithy.api#required" => {}}))
    ConflictException.type = Types::ConflictException
    ConnectionCredentials.add_member(:connection_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ParticipantToken, name: "ConnectionToken"))
    ConnectionCredentials.add_member(:expiry, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601Datetime, name: "Expiry"))
    ConnectionCredentials.type = Types::ConnectionCredentials
    ConnectionType.add_member(:websocket, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WEBSOCKET", traits: {"smithy.api#enumValue" => "WEBSOCKET"}))
    ConnectionType.add_member(:connection_credentials, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONNECTION_CREDENTIALS", traits: {"smithy.api#enumValue" => "CONNECTION_CREDENTIALS"}))
    ConnectionType.add_member(:webrtc_connection, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WEBRTC_CONNECTION", traits: {"smithy.api#enumValue" => "WEBRTC_CONNECTION"}))
    ConnectionTypeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionType, name: "member"))
    CreateParticipantConnectionRequest.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionTypeList, name: "Type"))
    CreateParticipantConnectionRequest.add_member(:participant_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ParticipantToken, name: "ParticipantToken", traits: {"smithy.api#httpHeader" => "X-Amz-Bearer", "smithy.api#required" => {}}))
    CreateParticipantConnectionRequest.add_member(:connect_participant, ::Smithy::Schema::Shapes::MemberShape.new(target: Bool, name: "ConnectParticipant"))
    CreateParticipantConnectionRequest.type = Types::CreateParticipantConnectionRequest
    CreateParticipantConnectionResponse.add_member(:websocket, ::Smithy::Schema::Shapes::MemberShape.new(target: Websocket, name: "Websocket"))
    CreateParticipantConnectionResponse.add_member(:connection_credentials, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionCredentials, name: "ConnectionCredentials"))
    CreateParticipantConnectionResponse.add_member(:web_rtc_connection, ::Smithy::Schema::Shapes::MemberShape.new(target: WebRTCConnection, name: "WebRTCConnection"))
    CreateParticipantConnectionResponse.type = Types::CreateParticipantConnectionResponse
    DescribeViewRequest.add_member(:view_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ViewToken, name: "ViewToken", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeViewRequest.add_member(:connection_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ParticipantToken, name: "ConnectionToken", traits: {"smithy.api#httpHeader" => "X-Amz-Bearer", "smithy.api#required" => {}}))
    DescribeViewRequest.type = Types::DescribeViewRequest
    DescribeViewResponse.add_member(:view, ::Smithy::Schema::Shapes::MemberShape.new(target: View, name: "View"))
    DescribeViewResponse.type = Types::DescribeViewResponse
    DisconnectParticipantRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    DisconnectParticipantRequest.add_member(:connection_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ParticipantToken, name: "ConnectionToken", traits: {"smithy.api#httpHeader" => "X-Amz-Bearer", "smithy.api#required" => {}}))
    DisconnectParticipantRequest.type = Types::DisconnectParticipantRequest
    DisconnectParticipantResponse.type = Types::DisconnectParticipantResponse
    GetAttachmentRequest.add_member(:attachment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ArtifactId, name: "AttachmentId", traits: {"smithy.api#required" => {}}))
    GetAttachmentRequest.add_member(:connection_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ParticipantToken, name: "ConnectionToken", traits: {"smithy.api#httpHeader" => "X-Amz-Bearer", "smithy.api#required" => {}}))
    GetAttachmentRequest.add_member(:url_expiry_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: URLExpiryInSeconds, name: "UrlExpiryInSeconds"))
    GetAttachmentRequest.type = Types::GetAttachmentRequest
    GetAttachmentResponse.add_member(:url, ::Smithy::Schema::Shapes::MemberShape.new(target: PreSignedAttachmentUrl, name: "Url"))
    GetAttachmentResponse.add_member(:url_expiry, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601Datetime, name: "UrlExpiry"))
    GetAttachmentResponse.add_member(:attachment_size_in_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachmentSizeInBytes, name: "AttachmentSizeInBytes", traits: {"smithy.api#default" => nil, "smithy.api#required" => {}}))
    GetAttachmentResponse.type = Types::GetAttachmentResponse
    GetAuthenticationUrlRequest.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionId, name: "SessionId", traits: {"smithy.api#required" => {}}))
    GetAuthenticationUrlRequest.add_member(:redirect_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: RedirectURI, name: "RedirectUri", traits: {"smithy.api#required" => {}}))
    GetAuthenticationUrlRequest.add_member(:connection_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ParticipantToken, name: "ConnectionToken", traits: {"smithy.api#httpHeader" => "X-Amz-Bearer", "smithy.api#required" => {}}))
    GetAuthenticationUrlRequest.type = Types::GetAuthenticationUrlRequest
    GetAuthenticationUrlResponse.add_member(:authentication_url, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticationUrl, name: "AuthenticationUrl"))
    GetAuthenticationUrlResponse.type = Types::GetAuthenticationUrlResponse
    GetTranscriptRequest.add_member(:contact_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ContactId, name: "ContactId"))
    GetTranscriptRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#default" => nil}))
    GetTranscriptRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    GetTranscriptRequest.add_member(:scan_direction, ::Smithy::Schema::Shapes::MemberShape.new(target: ScanDirection, name: "ScanDirection"))
    GetTranscriptRequest.add_member(:sort_order, ::Smithy::Schema::Shapes::MemberShape.new(target: SortKey, name: "SortOrder"))
    GetTranscriptRequest.add_member(:start_position, ::Smithy::Schema::Shapes::MemberShape.new(target: StartPosition, name: "StartPosition"))
    GetTranscriptRequest.add_member(:connection_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ParticipantToken, name: "ConnectionToken", traits: {"smithy.api#httpHeader" => "X-Amz-Bearer", "smithy.api#required" => {}}))
    GetTranscriptRequest.type = Types::GetTranscriptRequest
    GetTranscriptResponse.add_member(:initial_contact_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ContactId, name: "InitialContactId"))
    GetTranscriptResponse.add_member(:transcript, ::Smithy::Schema::Shapes::MemberShape.new(target: Transcript, name: "Transcript"))
    GetTranscriptResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    GetTranscriptResponse.type = Types::GetTranscriptResponse
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "Message", traits: {"smithy.api#required" => {}}))
    InternalServerException.type = Types::InternalServerException
    Item.add_member(:absolute_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Instant, name: "AbsoluteTime"))
    Item.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: ChatContent, name: "Content"))
    Item.add_member(:content_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ChatContentType, name: "ContentType"))
    Item.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ChatItemId, name: "Id"))
    Item.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ChatItemType, name: "Type"))
    Item.add_member(:participant_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ParticipantId, name: "ParticipantId"))
    Item.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DisplayName, name: "DisplayName"))
    Item.add_member(:participant_role, ::Smithy::Schema::Shapes::MemberShape.new(target: ParticipantRole, name: "ParticipantRole"))
    Item.add_member(:attachments, ::Smithy::Schema::Shapes::MemberShape.new(target: Attachments, name: "Attachments"))
    Item.add_member(:message_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageMetadata, name: "MessageMetadata"))
    Item.add_member(:related_contact_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ContactId, name: "RelatedContactId"))
    Item.add_member(:contact_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ContactId, name: "ContactId"))
    Item.type = Types::Item
    MeetingFeatureStatus.add_member(:available, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AVAILABLE", traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    MeetingFeatureStatus.add_member(:unavailable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNAVAILABLE", traits: {"smithy.api#enumValue" => "UNAVAILABLE"}))
    MeetingFeaturesConfiguration.add_member(:audio, ::Smithy::Schema::Shapes::MemberShape.new(target: AudioFeatures, name: "Audio"))
    MeetingFeaturesConfiguration.type = Types::MeetingFeaturesConfiguration
    MessageMetadata.add_member(:message_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ChatItemId, name: "MessageId"))
    MessageMetadata.add_member(:receipts, ::Smithy::Schema::Shapes::MemberShape.new(target: Receipts, name: "Receipts"))
    MessageMetadata.add_member(:message_processing_status, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageProcessingStatus, name: "MessageProcessingStatus"))
    MessageMetadata.type = Types::MessageMetadata
    MessageProcessingMetadata.add_member(:message_processing_status, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageProcessingStatus, name: "MessageProcessingStatus"))
    MessageProcessingMetadata.type = Types::MessageProcessingMetadata
    MessageProcessingStatus.add_member(:processing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PROCESSING", traits: {"smithy.api#enumValue" => "PROCESSING"}))
    MessageProcessingStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    MessageProcessingStatus.add_member(:rejected, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REJECTED", traits: {"smithy.api#enumValue" => "REJECTED"}))
    ParticipantRole.add_member(:agent, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AGENT", traits: {"smithy.api#enumValue" => "AGENT"}))
    ParticipantRole.add_member(:customer, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CUSTOMER", traits: {"smithy.api#enumValue" => "CUSTOMER"}))
    ParticipantRole.add_member(:system, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SYSTEM", traits: {"smithy.api#enumValue" => "SYSTEM"}))
    ParticipantRole.add_member(:custom_bot, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CUSTOM_BOT", traits: {"smithy.api#enumValue" => "CUSTOM_BOT"}))
    ParticipantRole.add_member(:supervisor, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUPERVISOR", traits: {"smithy.api#enumValue" => "SUPERVISOR"}))
    Receipt.add_member(:delivered_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Instant, name: "DeliveredTimestamp"))
    Receipt.add_member(:read_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Instant, name: "ReadTimestamp"))
    Receipt.add_member(:recipient_participant_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ParticipantId, name: "RecipientParticipantId"))
    Receipt.type = Types::Receipt
    Receipts.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Receipt, name: "member"))
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "Message"))
    ResourceNotFoundException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "ResourceId"))
    ResourceNotFoundException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "ResourceType"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourceType.add_member(:contact, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONTACT", traits: {"smithy.api#enumValue" => "CONTACT"}))
    ResourceType.add_member(:contact_flow, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONTACT_FLOW", traits: {"smithy.api#enumValue" => "CONTACT_FLOW"}))
    ResourceType.add_member(:instance, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INSTANCE", traits: {"smithy.api#enumValue" => "INSTANCE"}))
    ResourceType.add_member(:participant, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PARTICIPANT", traits: {"smithy.api#enumValue" => "PARTICIPANT"}))
    ResourceType.add_member(:hierarchy_level, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HIERARCHY_LEVEL", traits: {"smithy.api#enumValue" => "HIERARCHY_LEVEL"}))
    ResourceType.add_member(:hierarchy_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HIERARCHY_GROUP", traits: {"smithy.api#enumValue" => "HIERARCHY_GROUP"}))
    ResourceType.add_member(:user, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "USER", traits: {"smithy.api#enumValue" => "USER"}))
    ResourceType.add_member(:phone_number, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PHONE_NUMBER", traits: {"smithy.api#enumValue" => "PHONE_NUMBER"}))
    ScanDirection.add_member(:forward, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FORWARD", traits: {"smithy.api#enumValue" => "FORWARD"}))
    ScanDirection.add_member(:backward, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BACKWARD", traits: {"smithy.api#enumValue" => "BACKWARD"}))
    SendEventRequest.add_member(:content_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ChatContentType, name: "ContentType", traits: {"smithy.api#required" => {}}))
    SendEventRequest.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: ChatContent, name: "Content"))
    SendEventRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    SendEventRequest.add_member(:connection_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ParticipantToken, name: "ConnectionToken", traits: {"smithy.api#httpHeader" => "X-Amz-Bearer", "smithy.api#required" => {}}))
    SendEventRequest.type = Types::SendEventRequest
    SendEventResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ChatItemId, name: "Id"))
    SendEventResponse.add_member(:absolute_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Instant, name: "AbsoluteTime"))
    SendEventResponse.type = Types::SendEventResponse
    SendMessageRequest.add_member(:content_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ChatContentType, name: "ContentType", traits: {"smithy.api#required" => {}}))
    SendMessageRequest.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: ChatContent, name: "Content", traits: {"smithy.api#required" => {}}))
    SendMessageRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    SendMessageRequest.add_member(:connection_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ParticipantToken, name: "ConnectionToken", traits: {"smithy.api#httpHeader" => "X-Amz-Bearer", "smithy.api#required" => {}}))
    SendMessageRequest.type = Types::SendMessageRequest
    SendMessageResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ChatItemId, name: "Id"))
    SendMessageResponse.add_member(:absolute_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Instant, name: "AbsoluteTime"))
    SendMessageResponse.add_member(:message_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageProcessingMetadata, name: "MessageMetadata"))
    SendMessageResponse.type = Types::SendMessageResponse
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "Message", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    SortKey.add_member(:descending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DESCENDING", traits: {"smithy.api#enumValue" => "DESCENDING"}))
    SortKey.add_member(:ascending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ASCENDING", traits: {"smithy.api#enumValue" => "ASCENDING"}))
    StartAttachmentUploadRequest.add_member(:content_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentType, name: "ContentType", traits: {"smithy.api#required" => {}}))
    StartAttachmentUploadRequest.add_member(:attachment_size_in_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachmentSizeInBytes, name: "AttachmentSizeInBytes", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    StartAttachmentUploadRequest.add_member(:attachment_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachmentName, name: "AttachmentName", traits: {"smithy.api#required" => {}}))
    StartAttachmentUploadRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyClientToken, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    StartAttachmentUploadRequest.add_member(:connection_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ParticipantToken, name: "ConnectionToken", traits: {"smithy.api#httpHeader" => "X-Amz-Bearer", "smithy.api#required" => {}}))
    StartAttachmentUploadRequest.type = Types::StartAttachmentUploadRequest
    StartAttachmentUploadResponse.add_member(:attachment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ArtifactId, name: "AttachmentId"))
    StartAttachmentUploadResponse.add_member(:upload_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: UploadMetadata, name: "UploadMetadata"))
    StartAttachmentUploadResponse.type = Types::StartAttachmentUploadResponse
    StartPosition.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ChatItemId, name: "Id"))
    StartPosition.add_member(:absolute_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Instant, name: "AbsoluteTime"))
    StartPosition.add_member(:most_recent, ::Smithy::Schema::Shapes::MemberShape.new(target: MostRecent, name: "MostRecent", traits: {"smithy.api#default" => 0}))
    StartPosition.type = Types::StartPosition
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "Message", traits: {"smithy.api#required" => {}}))
    ThrottlingException.type = Types::ThrottlingException
    Transcript.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Item, name: "member"))
    UploadMetadata.add_member(:url, ::Smithy::Schema::Shapes::MemberShape.new(target: UploadMetadataUrl, name: "Url"))
    UploadMetadata.add_member(:url_expiry, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601Datetime, name: "UrlExpiry"))
    UploadMetadata.add_member(:headers_to_include, ::Smithy::Schema::Shapes::MemberShape.new(target: UploadMetadataSignedHeaders, name: "HeadersToInclude"))
    UploadMetadata.type = Types::UploadMetadata
    UploadMetadataSignedHeaders.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: UploadMetadataSignedHeadersKey, name: "key"))
    UploadMetadataSignedHeaders.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: UploadMetadataSignedHeadersValue, name: "value"))
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Reason, name: "Message", traits: {"smithy.api#required" => {}}))
    ValidationException.type = Types::ValidationException
    View.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ViewId, name: "Id"))
    View.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, name: "Arn"))
    View.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ViewName, name: "Name"))
    View.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: ViewVersion, name: "Version"))
    View.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: ViewContent, name: "Content"))
    View.type = Types::View
    ViewActions.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ViewAction, name: "member"))
    ViewContent.add_member(:input_schema, ::Smithy::Schema::Shapes::MemberShape.new(target: ViewInputSchema, name: "InputSchema"))
    ViewContent.add_member(:template, ::Smithy::Schema::Shapes::MemberShape.new(target: ViewTemplate, name: "Template"))
    ViewContent.add_member(:actions, ::Smithy::Schema::Shapes::MemberShape.new(target: ViewActions, name: "Actions"))
    ViewContent.type = Types::ViewContent
    WebRTCConnection.add_member(:attendee, ::Smithy::Schema::Shapes::MemberShape.new(target: Attendee, name: "Attendee"))
    WebRTCConnection.add_member(:meeting, ::Smithy::Schema::Shapes::MemberShape.new(target: WebRTCMeeting, name: "Meeting"))
    WebRTCConnection.type = Types::WebRTCConnection
    WebRTCMediaPlacement.add_member(:audio_host_url, ::Smithy::Schema::Shapes::MemberShape.new(target: URI, name: "AudioHostUrl"))
    WebRTCMediaPlacement.add_member(:audio_fallback_url, ::Smithy::Schema::Shapes::MemberShape.new(target: URI, name: "AudioFallbackUrl"))
    WebRTCMediaPlacement.add_member(:signaling_url, ::Smithy::Schema::Shapes::MemberShape.new(target: URI, name: "SignalingUrl"))
    WebRTCMediaPlacement.add_member(:event_ingestion_url, ::Smithy::Schema::Shapes::MemberShape.new(target: URI, name: "EventIngestionUrl"))
    WebRTCMediaPlacement.type = Types::WebRTCMediaPlacement
    WebRTCMeeting.add_member(:media_placement, ::Smithy::Schema::Shapes::MemberShape.new(target: WebRTCMediaPlacement, name: "MediaPlacement"))
    WebRTCMeeting.add_member(:meeting_features, ::Smithy::Schema::Shapes::MemberShape.new(target: MeetingFeaturesConfiguration, name: "MeetingFeatures"))
    WebRTCMeeting.add_member(:meeting_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GuidString, name: "MeetingId"))
    WebRTCMeeting.type = Types::WebRTCMeeting
    Websocket.add_member(:url, ::Smithy::Schema::Shapes::MemberShape.new(target: PreSignedConnectionUrl, name: "Url"))
    Websocket.add_member(:connection_expiry, ::Smithy::Schema::Shapes::MemberShape.new(target: ISO8601Datetime, name: "ConnectionExpiry"))
    Websocket.type = Types::Websocket

    AmazonConnectParticipantServiceLambda = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.connectparticipant#AmazonConnectParticipantServiceLambda"
      service.name = "AmazonConnectParticipantServiceLambda"
      service.version = "2018-09-07"
      service.traits = {"aws.api#service" => {"sdkId" => "ConnectParticipant", "arnNamespace" => "connect", "cloudFormationName" => "ConnectParticipant", "cloudTrailEventSource" => "connectparticipant.amazonaws.com", "endpointPrefix" => "participant.connect"}, "aws.auth#sigv4" => {"name" => "execute-api"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "Amazon Connect Participant Service", "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}, "UseDualStack" => {"builtIn" => "AWS::UseDualStack", "required" => true, "default" => false, "documentation" => "When true, use the dual-stack endpoint. If the configured endpoint does not support dual-stack, dispatching the request MAY return an error.", "type" => "boolean"}, "UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.", "type" => "boolean"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "isSet", "argv" => [{"ref" => "Region"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseDualStack"}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsDualStack"]}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsFIPS"]}, true]}, {"fn" => "stringEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "name"]}, "aws-us-gov"]}], "results" => [{"conditions" => [], "error" => "Invalid Configuration: FIPS and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "error" => "Invalid Configuration: Dualstack and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://participant.connect-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS and DualStack are enabled, but this partition does not support one or both", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://participant.connect.{Region}.amazonaws.com", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://participant.connect-fips.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS is enabled but this partition does not support FIPS", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://participant.connect.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "DualStack is enabled but this partition does not support DualStack", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://participant.connect.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: Missing Region", "type" => "error"}], "root" => 2, "nodeCount" => 14, "nodes" => "/////wAAAAH/////AAAAAAAAAA0AAAADAAAAAQAAAAQF9eEMAAAAAgAAAAUF9eEMAAAAAwAAAAgAAAAGAAAABAAAAAcF9eELAAAABQX14QkF9eEKAAAABAAAAAsAAAAJAAAABgAAAAoF9eEIAAAABwX14QYF9eEHAAAABQAAAAwF9eEFAAAABgX14QQF9eEFAAAAAwX14QEAAAAOAAAABAX14QIF9eED"}}
      service.add_operation(:cancel_participant_authentication, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connectparticipant#CancelParticipantAuthentication"
        operation.name = "CancelParticipantAuthentication"
        operation.input = CancelParticipantAuthenticationRequest
        operation.output = CancelParticipantAuthenticationResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/participant/cancel-authentication", "code" => 200}}
      end)
      service.add_operation(:complete_attachment_upload, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connectparticipant#CompleteAttachmentUpload"
        operation.name = "CompleteAttachmentUpload"
        operation.input = CompleteAttachmentUploadRequest
        operation.output = CompleteAttachmentUploadResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/participant/complete-attachment-upload", "code" => 200}}
      end)
      service.add_operation(:create_participant_connection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connectparticipant#CreateParticipantConnection"
        operation.name = "CreateParticipantConnection"
        operation.input = CreateParticipantConnectionRequest
        operation.output = CreateParticipantConnectionResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/participant/connection", "code" => 200}}
      end)
      service.add_operation(:describe_view, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connectparticipant#DescribeView"
        operation.name = "DescribeView"
        operation.input = DescribeViewRequest
        operation.output = DescribeViewResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/participant/views/{ViewToken}", "code" => 200}}
      end)
      service.add_operation(:disconnect_participant, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connectparticipant#DisconnectParticipant"
        operation.name = "DisconnectParticipant"
        operation.input = DisconnectParticipantRequest
        operation.output = DisconnectParticipantResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/participant/disconnect", "code" => 200}}
      end)
      service.add_operation(:get_attachment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connectparticipant#GetAttachment"
        operation.name = "GetAttachment"
        operation.input = GetAttachmentRequest
        operation.output = GetAttachmentResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/participant/attachment", "code" => 200}}
      end)
      service.add_operation(:get_authentication_url, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connectparticipant#GetAuthenticationUrl"
        operation.name = "GetAuthenticationUrl"
        operation.input = GetAuthenticationUrlRequest
        operation.output = GetAuthenticationUrlResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/participant/authentication-url", "code" => 200}}
      end)
      service.add_operation(:get_transcript, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connectparticipant#GetTranscript"
        operation.name = "GetTranscript"
        operation.input = GetTranscriptRequest
        operation.output = GetTranscriptResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/participant/transcript", "code" => 200}}
        operation[:paginator] = Paginators::GetTranscript.new
      end)
      service.add_operation(:send_event, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connectparticipant#SendEvent"
        operation.name = "SendEvent"
        operation.input = SendEventRequest
        operation.output = SendEventResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/participant/event", "code" => 200}}
      end)
      service.add_operation(:send_message, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connectparticipant#SendMessage"
        operation.name = "SendMessage"
        operation.input = SendMessageRequest
        operation.output = SendMessageResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/participant/message", "code" => 200}}
      end)
      service.add_operation(:start_attachment_upload, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connectparticipant#StartAttachmentUpload"
        operation.name = "StartAttachmentUpload"
        operation.input = StartAttachmentUploadRequest
        operation.output = StartAttachmentUploadResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
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
