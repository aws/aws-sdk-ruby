# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::ConnectParticipant
  # @api private
  module ClientApi

    include Seahorse::Model

    ARN = Shapes::StringShape.new(name: 'ARN')
    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    ArtifactId = Shapes::StringShape.new(name: 'ArtifactId')
    ArtifactStatus = Shapes::StringShape.new(name: 'ArtifactStatus')
    AttachmentIdList = Shapes::ListShape.new(name: 'AttachmentIdList')
    AttachmentItem = Shapes::StructureShape.new(name: 'AttachmentItem')
    AttachmentName = Shapes::StringShape.new(name: 'AttachmentName')
    AttachmentSizeInBytes = Shapes::IntegerShape.new(name: 'AttachmentSizeInBytes')
    Attachments = Shapes::ListShape.new(name: 'Attachments')
    Attendee = Shapes::StructureShape.new(name: 'Attendee')
    AttendeeId = Shapes::StringShape.new(name: 'AttendeeId')
    AudioFeatures = Shapes::StructureShape.new(name: 'AudioFeatures')
    AuthenticationUrl = Shapes::StringShape.new(name: 'AuthenticationUrl')
    Bool = Shapes::BooleanShape.new(name: 'Bool')
    CancelParticipantAuthenticationRequest = Shapes::StructureShape.new(name: 'CancelParticipantAuthenticationRequest')
    CancelParticipantAuthenticationResponse = Shapes::StructureShape.new(name: 'CancelParticipantAuthenticationResponse')
    ChatContent = Shapes::StringShape.new(name: 'ChatContent')
    ChatContentType = Shapes::StringShape.new(name: 'ChatContentType')
    ChatItemId = Shapes::StringShape.new(name: 'ChatItemId')
    ChatItemType = Shapes::StringShape.new(name: 'ChatItemType')
    ClientToken = Shapes::StringShape.new(name: 'ClientToken')
    CompleteAttachmentUploadRequest = Shapes::StructureShape.new(name: 'CompleteAttachmentUploadRequest')
    CompleteAttachmentUploadResponse = Shapes::StructureShape.new(name: 'CompleteAttachmentUploadResponse')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    ConnectionCredentials = Shapes::StructureShape.new(name: 'ConnectionCredentials')
    ConnectionType = Shapes::StringShape.new(name: 'ConnectionType')
    ConnectionTypeList = Shapes::ListShape.new(name: 'ConnectionTypeList')
    ContactId = Shapes::StringShape.new(name: 'ContactId')
    ContentType = Shapes::StringShape.new(name: 'ContentType')
    CreateParticipantConnectionRequest = Shapes::StructureShape.new(name: 'CreateParticipantConnectionRequest')
    CreateParticipantConnectionResponse = Shapes::StructureShape.new(name: 'CreateParticipantConnectionResponse')
    DescribeViewRequest = Shapes::StructureShape.new(name: 'DescribeViewRequest')
    DescribeViewResponse = Shapes::StructureShape.new(name: 'DescribeViewResponse')
    DisconnectParticipantRequest = Shapes::StructureShape.new(name: 'DisconnectParticipantRequest')
    DisconnectParticipantResponse = Shapes::StructureShape.new(name: 'DisconnectParticipantResponse')
    DisplayName = Shapes::StringShape.new(name: 'DisplayName')
    GetAttachmentRequest = Shapes::StructureShape.new(name: 'GetAttachmentRequest')
    GetAttachmentResponse = Shapes::StructureShape.new(name: 'GetAttachmentResponse')
    GetAuthenticationUrlRequest = Shapes::StructureShape.new(name: 'GetAuthenticationUrlRequest')
    GetAuthenticationUrlResponse = Shapes::StructureShape.new(name: 'GetAuthenticationUrlResponse')
    GetTranscriptRequest = Shapes::StructureShape.new(name: 'GetTranscriptRequest')
    GetTranscriptResponse = Shapes::StructureShape.new(name: 'GetTranscriptResponse')
    GuidString = Shapes::StringShape.new(name: 'GuidString')
    ISO8601Datetime = Shapes::StringShape.new(name: 'ISO8601Datetime')
    Instant = Shapes::StringShape.new(name: 'Instant')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    Item = Shapes::StructureShape.new(name: 'Item')
    JoinToken = Shapes::StringShape.new(name: 'JoinToken')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    MeetingFeatureStatus = Shapes::StringShape.new(name: 'MeetingFeatureStatus')
    MeetingFeaturesConfiguration = Shapes::StructureShape.new(name: 'MeetingFeaturesConfiguration')
    Message = Shapes::StringShape.new(name: 'Message')
    MessageMetadata = Shapes::StructureShape.new(name: 'MessageMetadata')
    MessageProcessingMetadata = Shapes::StructureShape.new(name: 'MessageProcessingMetadata')
    MessageProcessingStatus = Shapes::StringShape.new(name: 'MessageProcessingStatus')
    MostRecent = Shapes::IntegerShape.new(name: 'MostRecent')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    NonEmptyClientToken = Shapes::StringShape.new(name: 'NonEmptyClientToken')
    ParticipantId = Shapes::StringShape.new(name: 'ParticipantId')
    ParticipantRole = Shapes::StringShape.new(name: 'ParticipantRole')
    ParticipantToken = Shapes::StringShape.new(name: 'ParticipantToken')
    PreSignedAttachmentUrl = Shapes::StringShape.new(name: 'PreSignedAttachmentUrl')
    PreSignedConnectionUrl = Shapes::StringShape.new(name: 'PreSignedConnectionUrl')
    Reason = Shapes::StringShape.new(name: 'Reason')
    Receipt = Shapes::StructureShape.new(name: 'Receipt')
    Receipts = Shapes::ListShape.new(name: 'Receipts')
    RedirectURI = Shapes::StringShape.new(name: 'RedirectURI')
    ResourceId = Shapes::StringShape.new(name: 'ResourceId')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceType = Shapes::StringShape.new(name: 'ResourceType')
    ScanDirection = Shapes::StringShape.new(name: 'ScanDirection')
    SendEventRequest = Shapes::StructureShape.new(name: 'SendEventRequest')
    SendEventResponse = Shapes::StructureShape.new(name: 'SendEventResponse')
    SendMessageRequest = Shapes::StructureShape.new(name: 'SendMessageRequest')
    SendMessageResponse = Shapes::StructureShape.new(name: 'SendMessageResponse')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    SessionId = Shapes::StringShape.new(name: 'SessionId')
    SortKey = Shapes::StringShape.new(name: 'SortKey')
    StartAttachmentUploadRequest = Shapes::StructureShape.new(name: 'StartAttachmentUploadRequest')
    StartAttachmentUploadResponse = Shapes::StructureShape.new(name: 'StartAttachmentUploadResponse')
    StartPosition = Shapes::StructureShape.new(name: 'StartPosition')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    Transcript = Shapes::ListShape.new(name: 'Transcript')
    URI = Shapes::StringShape.new(name: 'URI')
    URLExpiryInSeconds = Shapes::IntegerShape.new(name: 'URLExpiryInSeconds')
    UploadMetadata = Shapes::StructureShape.new(name: 'UploadMetadata')
    UploadMetadataSignedHeaders = Shapes::MapShape.new(name: 'UploadMetadataSignedHeaders')
    UploadMetadataSignedHeadersKey = Shapes::StringShape.new(name: 'UploadMetadataSignedHeadersKey')
    UploadMetadataSignedHeadersValue = Shapes::StringShape.new(name: 'UploadMetadataSignedHeadersValue')
    UploadMetadataUrl = Shapes::StringShape.new(name: 'UploadMetadataUrl')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    View = Shapes::StructureShape.new(name: 'View')
    ViewAction = Shapes::StringShape.new(name: 'ViewAction')
    ViewActions = Shapes::ListShape.new(name: 'ViewActions')
    ViewContent = Shapes::StructureShape.new(name: 'ViewContent')
    ViewId = Shapes::StringShape.new(name: 'ViewId')
    ViewInputSchema = Shapes::StringShape.new(name: 'ViewInputSchema')
    ViewName = Shapes::StringShape.new(name: 'ViewName')
    ViewTemplate = Shapes::StringShape.new(name: 'ViewTemplate')
    ViewToken = Shapes::StringShape.new(name: 'ViewToken')
    ViewVersion = Shapes::IntegerShape.new(name: 'ViewVersion')
    WebRTCConnection = Shapes::StructureShape.new(name: 'WebRTCConnection')
    WebRTCMediaPlacement = Shapes::StructureShape.new(name: 'WebRTCMediaPlacement')
    WebRTCMeeting = Shapes::StructureShape.new(name: 'WebRTCMeeting')
    Websocket = Shapes::StructureShape.new(name: 'Websocket')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: Message, required: true, location_name: "Message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AttachmentIdList.member = Shapes::ShapeRef.new(shape: ArtifactId)

    AttachmentItem.add_member(:content_type, Shapes::ShapeRef.new(shape: ContentType, location_name: "ContentType"))
    AttachmentItem.add_member(:attachment_id, Shapes::ShapeRef.new(shape: ArtifactId, location_name: "AttachmentId"))
    AttachmentItem.add_member(:attachment_name, Shapes::ShapeRef.new(shape: AttachmentName, location_name: "AttachmentName"))
    AttachmentItem.add_member(:status, Shapes::ShapeRef.new(shape: ArtifactStatus, location_name: "Status"))
    AttachmentItem.struct_class = Types::AttachmentItem

    Attachments.member = Shapes::ShapeRef.new(shape: AttachmentItem)

    Attendee.add_member(:attendee_id, Shapes::ShapeRef.new(shape: AttendeeId, location_name: "AttendeeId"))
    Attendee.add_member(:join_token, Shapes::ShapeRef.new(shape: JoinToken, location_name: "JoinToken"))
    Attendee.struct_class = Types::Attendee

    AudioFeatures.add_member(:echo_reduction, Shapes::ShapeRef.new(shape: MeetingFeatureStatus, location_name: "EchoReduction"))
    AudioFeatures.struct_class = Types::AudioFeatures

    CancelParticipantAuthenticationRequest.add_member(:session_id, Shapes::ShapeRef.new(shape: SessionId, required: true, location_name: "SessionId"))
    CancelParticipantAuthenticationRequest.add_member(:connection_token, Shapes::ShapeRef.new(shape: ParticipantToken, required: true, location: "header", location_name: "X-Amz-Bearer"))
    CancelParticipantAuthenticationRequest.struct_class = Types::CancelParticipantAuthenticationRequest

    CancelParticipantAuthenticationResponse.struct_class = Types::CancelParticipantAuthenticationResponse

    CompleteAttachmentUploadRequest.add_member(:attachment_ids, Shapes::ShapeRef.new(shape: AttachmentIdList, required: true, location_name: "AttachmentIds"))
    CompleteAttachmentUploadRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: NonEmptyClientToken, required: true, location_name: "ClientToken", metadata: {"idempotencyToken" => true}))
    CompleteAttachmentUploadRequest.add_member(:connection_token, Shapes::ShapeRef.new(shape: ParticipantToken, required: true, location: "header", location_name: "X-Amz-Bearer"))
    CompleteAttachmentUploadRequest.struct_class = Types::CompleteAttachmentUploadRequest

    CompleteAttachmentUploadResponse.struct_class = Types::CompleteAttachmentUploadResponse

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: Reason, required: true, location_name: "Message"))
    ConflictException.struct_class = Types::ConflictException

    ConnectionCredentials.add_member(:connection_token, Shapes::ShapeRef.new(shape: ParticipantToken, location_name: "ConnectionToken"))
    ConnectionCredentials.add_member(:expiry, Shapes::ShapeRef.new(shape: ISO8601Datetime, location_name: "Expiry"))
    ConnectionCredentials.struct_class = Types::ConnectionCredentials

    ConnectionTypeList.member = Shapes::ShapeRef.new(shape: ConnectionType)

    CreateParticipantConnectionRequest.add_member(:type, Shapes::ShapeRef.new(shape: ConnectionTypeList, location_name: "Type"))
    CreateParticipantConnectionRequest.add_member(:participant_token, Shapes::ShapeRef.new(shape: ParticipantToken, required: true, location: "header", location_name: "X-Amz-Bearer"))
    CreateParticipantConnectionRequest.add_member(:connect_participant, Shapes::ShapeRef.new(shape: Bool, location_name: "ConnectParticipant"))
    CreateParticipantConnectionRequest.struct_class = Types::CreateParticipantConnectionRequest

    CreateParticipantConnectionResponse.add_member(:websocket, Shapes::ShapeRef.new(shape: Websocket, location_name: "Websocket"))
    CreateParticipantConnectionResponse.add_member(:connection_credentials, Shapes::ShapeRef.new(shape: ConnectionCredentials, location_name: "ConnectionCredentials"))
    CreateParticipantConnectionResponse.add_member(:web_rtc_connection, Shapes::ShapeRef.new(shape: WebRTCConnection, location_name: "WebRTCConnection"))
    CreateParticipantConnectionResponse.struct_class = Types::CreateParticipantConnectionResponse

    DescribeViewRequest.add_member(:view_token, Shapes::ShapeRef.new(shape: ViewToken, required: true, location: "uri", location_name: "ViewToken"))
    DescribeViewRequest.add_member(:connection_token, Shapes::ShapeRef.new(shape: ParticipantToken, required: true, location: "header", location_name: "X-Amz-Bearer"))
    DescribeViewRequest.struct_class = Types::DescribeViewRequest

    DescribeViewResponse.add_member(:view, Shapes::ShapeRef.new(shape: View, location_name: "View"))
    DescribeViewResponse.struct_class = Types::DescribeViewResponse

    DisconnectParticipantRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken" => true}))
    DisconnectParticipantRequest.add_member(:connection_token, Shapes::ShapeRef.new(shape: ParticipantToken, required: true, location: "header", location_name: "X-Amz-Bearer"))
    DisconnectParticipantRequest.struct_class = Types::DisconnectParticipantRequest

    DisconnectParticipantResponse.struct_class = Types::DisconnectParticipantResponse

    GetAttachmentRequest.add_member(:attachment_id, Shapes::ShapeRef.new(shape: ArtifactId, required: true, location_name: "AttachmentId"))
    GetAttachmentRequest.add_member(:connection_token, Shapes::ShapeRef.new(shape: ParticipantToken, required: true, location: "header", location_name: "X-Amz-Bearer"))
    GetAttachmentRequest.add_member(:url_expiry_in_seconds, Shapes::ShapeRef.new(shape: URLExpiryInSeconds, location_name: "UrlExpiryInSeconds"))
    GetAttachmentRequest.struct_class = Types::GetAttachmentRequest

    GetAttachmentResponse.add_member(:url, Shapes::ShapeRef.new(shape: PreSignedAttachmentUrl, location_name: "Url"))
    GetAttachmentResponse.add_member(:url_expiry, Shapes::ShapeRef.new(shape: ISO8601Datetime, location_name: "UrlExpiry"))
    GetAttachmentResponse.add_member(:attachment_size_in_bytes, Shapes::ShapeRef.new(shape: AttachmentSizeInBytes, required: true, location_name: "AttachmentSizeInBytes", metadata: {"box" => true}))
    GetAttachmentResponse.struct_class = Types::GetAttachmentResponse

    GetAuthenticationUrlRequest.add_member(:session_id, Shapes::ShapeRef.new(shape: SessionId, required: true, location_name: "SessionId"))
    GetAuthenticationUrlRequest.add_member(:redirect_uri, Shapes::ShapeRef.new(shape: RedirectURI, required: true, location_name: "RedirectUri"))
    GetAuthenticationUrlRequest.add_member(:connection_token, Shapes::ShapeRef.new(shape: ParticipantToken, required: true, location: "header", location_name: "X-Amz-Bearer"))
    GetAuthenticationUrlRequest.struct_class = Types::GetAuthenticationUrlRequest

    GetAuthenticationUrlResponse.add_member(:authentication_url, Shapes::ShapeRef.new(shape: AuthenticationUrl, location_name: "AuthenticationUrl"))
    GetAuthenticationUrlResponse.struct_class = Types::GetAuthenticationUrlResponse

    GetTranscriptRequest.add_member(:contact_id, Shapes::ShapeRef.new(shape: ContactId, location_name: "ContactId"))
    GetTranscriptRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", metadata: {"box" => true}))
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
    Item.add_member(:attachments, Shapes::ShapeRef.new(shape: Attachments, location_name: "Attachments"))
    Item.add_member(:message_metadata, Shapes::ShapeRef.new(shape: MessageMetadata, location_name: "MessageMetadata"))
    Item.add_member(:related_contact_id, Shapes::ShapeRef.new(shape: ContactId, location_name: "RelatedContactId"))
    Item.add_member(:contact_id, Shapes::ShapeRef.new(shape: ContactId, location_name: "ContactId"))
    Item.struct_class = Types::Item

    MeetingFeaturesConfiguration.add_member(:audio, Shapes::ShapeRef.new(shape: AudioFeatures, location_name: "Audio"))
    MeetingFeaturesConfiguration.struct_class = Types::MeetingFeaturesConfiguration

    MessageMetadata.add_member(:message_id, Shapes::ShapeRef.new(shape: ChatItemId, location_name: "MessageId"))
    MessageMetadata.add_member(:receipts, Shapes::ShapeRef.new(shape: Receipts, location_name: "Receipts"))
    MessageMetadata.add_member(:message_processing_status, Shapes::ShapeRef.new(shape: MessageProcessingStatus, location_name: "MessageProcessingStatus"))
    MessageMetadata.struct_class = Types::MessageMetadata

    MessageProcessingMetadata.add_member(:message_processing_status, Shapes::ShapeRef.new(shape: MessageProcessingStatus, location_name: "MessageProcessingStatus"))
    MessageProcessingMetadata.struct_class = Types::MessageProcessingMetadata

    Receipt.add_member(:delivered_timestamp, Shapes::ShapeRef.new(shape: Instant, location_name: "DeliveredTimestamp"))
    Receipt.add_member(:read_timestamp, Shapes::ShapeRef.new(shape: Instant, location_name: "ReadTimestamp"))
    Receipt.add_member(:recipient_participant_id, Shapes::ShapeRef.new(shape: ParticipantId, location_name: "RecipientParticipantId"))
    Receipt.struct_class = Types::Receipt

    Receipts.member = Shapes::ShapeRef.new(shape: Receipt)

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    ResourceNotFoundException.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "ResourceId"))
    ResourceNotFoundException.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "ResourceType"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    SendEventRequest.add_member(:content_type, Shapes::ShapeRef.new(shape: ChatContentType, required: true, location_name: "ContentType"))
    SendEventRequest.add_member(:content, Shapes::ShapeRef.new(shape: ChatContent, location_name: "Content"))
    SendEventRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken" => true}))
    SendEventRequest.add_member(:connection_token, Shapes::ShapeRef.new(shape: ParticipantToken, required: true, location: "header", location_name: "X-Amz-Bearer"))
    SendEventRequest.struct_class = Types::SendEventRequest

    SendEventResponse.add_member(:id, Shapes::ShapeRef.new(shape: ChatItemId, location_name: "Id"))
    SendEventResponse.add_member(:absolute_time, Shapes::ShapeRef.new(shape: Instant, location_name: "AbsoluteTime"))
    SendEventResponse.struct_class = Types::SendEventResponse

    SendMessageRequest.add_member(:content_type, Shapes::ShapeRef.new(shape: ChatContentType, required: true, location_name: "ContentType"))
    SendMessageRequest.add_member(:content, Shapes::ShapeRef.new(shape: ChatContent, required: true, location_name: "Content"))
    SendMessageRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken" => true}))
    SendMessageRequest.add_member(:connection_token, Shapes::ShapeRef.new(shape: ParticipantToken, required: true, location: "header", location_name: "X-Amz-Bearer"))
    SendMessageRequest.struct_class = Types::SendMessageRequest

    SendMessageResponse.add_member(:id, Shapes::ShapeRef.new(shape: ChatItemId, location_name: "Id"))
    SendMessageResponse.add_member(:absolute_time, Shapes::ShapeRef.new(shape: Instant, location_name: "AbsoluteTime"))
    SendMessageResponse.add_member(:message_metadata, Shapes::ShapeRef.new(shape: MessageProcessingMetadata, location_name: "MessageMetadata"))
    SendMessageResponse.struct_class = Types::SendMessageResponse

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: Message, required: true, location_name: "Message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    StartAttachmentUploadRequest.add_member(:content_type, Shapes::ShapeRef.new(shape: ContentType, required: true, location_name: "ContentType"))
    StartAttachmentUploadRequest.add_member(:attachment_size_in_bytes, Shapes::ShapeRef.new(shape: AttachmentSizeInBytes, required: true, location_name: "AttachmentSizeInBytes"))
    StartAttachmentUploadRequest.add_member(:attachment_name, Shapes::ShapeRef.new(shape: AttachmentName, required: true, location_name: "AttachmentName"))
    StartAttachmentUploadRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: NonEmptyClientToken, required: true, location_name: "ClientToken", metadata: {"idempotencyToken" => true}))
    StartAttachmentUploadRequest.add_member(:connection_token, Shapes::ShapeRef.new(shape: ParticipantToken, required: true, location: "header", location_name: "X-Amz-Bearer"))
    StartAttachmentUploadRequest.struct_class = Types::StartAttachmentUploadRequest

    StartAttachmentUploadResponse.add_member(:attachment_id, Shapes::ShapeRef.new(shape: ArtifactId, location_name: "AttachmentId"))
    StartAttachmentUploadResponse.add_member(:upload_metadata, Shapes::ShapeRef.new(shape: UploadMetadata, location_name: "UploadMetadata"))
    StartAttachmentUploadResponse.struct_class = Types::StartAttachmentUploadResponse

    StartPosition.add_member(:id, Shapes::ShapeRef.new(shape: ChatItemId, location_name: "Id"))
    StartPosition.add_member(:absolute_time, Shapes::ShapeRef.new(shape: Instant, location_name: "AbsoluteTime"))
    StartPosition.add_member(:most_recent, Shapes::ShapeRef.new(shape: MostRecent, location_name: "MostRecent"))
    StartPosition.struct_class = Types::StartPosition

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: Message, required: true, location_name: "Message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    Transcript.member = Shapes::ShapeRef.new(shape: Item)

    UploadMetadata.add_member(:url, Shapes::ShapeRef.new(shape: UploadMetadataUrl, location_name: "Url"))
    UploadMetadata.add_member(:url_expiry, Shapes::ShapeRef.new(shape: ISO8601Datetime, location_name: "UrlExpiry"))
    UploadMetadata.add_member(:headers_to_include, Shapes::ShapeRef.new(shape: UploadMetadataSignedHeaders, location_name: "HeadersToInclude"))
    UploadMetadata.struct_class = Types::UploadMetadata

    UploadMetadataSignedHeaders.key = Shapes::ShapeRef.new(shape: UploadMetadataSignedHeadersKey)
    UploadMetadataSignedHeaders.value = Shapes::ShapeRef.new(shape: UploadMetadataSignedHeadersValue)

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: Reason, required: true, location_name: "Message"))
    ValidationException.struct_class = Types::ValidationException

    View.add_member(:id, Shapes::ShapeRef.new(shape: ViewId, location_name: "Id"))
    View.add_member(:arn, Shapes::ShapeRef.new(shape: ARN, location_name: "Arn"))
    View.add_member(:name, Shapes::ShapeRef.new(shape: ViewName, location_name: "Name"))
    View.add_member(:version, Shapes::ShapeRef.new(shape: ViewVersion, location_name: "Version"))
    View.add_member(:content, Shapes::ShapeRef.new(shape: ViewContent, location_name: "Content"))
    View.struct_class = Types::View

    ViewActions.member = Shapes::ShapeRef.new(shape: ViewAction)

    ViewContent.add_member(:input_schema, Shapes::ShapeRef.new(shape: ViewInputSchema, location_name: "InputSchema"))
    ViewContent.add_member(:template, Shapes::ShapeRef.new(shape: ViewTemplate, location_name: "Template"))
    ViewContent.add_member(:actions, Shapes::ShapeRef.new(shape: ViewActions, location_name: "Actions"))
    ViewContent.struct_class = Types::ViewContent

    WebRTCConnection.add_member(:attendee, Shapes::ShapeRef.new(shape: Attendee, location_name: "Attendee"))
    WebRTCConnection.add_member(:meeting, Shapes::ShapeRef.new(shape: WebRTCMeeting, location_name: "Meeting"))
    WebRTCConnection.struct_class = Types::WebRTCConnection

    WebRTCMediaPlacement.add_member(:audio_host_url, Shapes::ShapeRef.new(shape: URI, location_name: "AudioHostUrl"))
    WebRTCMediaPlacement.add_member(:audio_fallback_url, Shapes::ShapeRef.new(shape: URI, location_name: "AudioFallbackUrl"))
    WebRTCMediaPlacement.add_member(:signaling_url, Shapes::ShapeRef.new(shape: URI, location_name: "SignalingUrl"))
    WebRTCMediaPlacement.add_member(:event_ingestion_url, Shapes::ShapeRef.new(shape: URI, location_name: "EventIngestionUrl"))
    WebRTCMediaPlacement.struct_class = Types::WebRTCMediaPlacement

    WebRTCMeeting.add_member(:media_placement, Shapes::ShapeRef.new(shape: WebRTCMediaPlacement, location_name: "MediaPlacement"))
    WebRTCMeeting.add_member(:meeting_features, Shapes::ShapeRef.new(shape: MeetingFeaturesConfiguration, location_name: "MeetingFeatures"))
    WebRTCMeeting.add_member(:meeting_id, Shapes::ShapeRef.new(shape: GuidString, location_name: "MeetingId"))
    WebRTCMeeting.struct_class = Types::WebRTCMeeting

    Websocket.add_member(:url, Shapes::ShapeRef.new(shape: PreSignedConnectionUrl, location_name: "Url"))
    Websocket.add_member(:connection_expiry, Shapes::ShapeRef.new(shape: ISO8601Datetime, location_name: "ConnectionExpiry"))
    Websocket.struct_class = Types::Websocket


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2018-09-07"

      api.metadata = {
        "apiVersion" => "2018-09-07",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "participant.connect",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "protocols" => ["rest-json"],
        "serviceAbbreviation" => "Amazon Connect Participant",
        "serviceFullName" => "Amazon Connect Participant Service",
        "serviceId" => "ConnectParticipant",
        "signatureVersion" => "v4",
        "signingName" => "execute-api",
        "uid" => "connectparticipant-2018-09-07",
      }

      api.add_operation(:cancel_participant_authentication, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CancelParticipantAuthentication"
        o.http_method = "POST"
        o.http_request_uri = "/participant/cancel-authentication"
        o.input = Shapes::ShapeRef.new(shape: CancelParticipantAuthenticationRequest)
        o.output = Shapes::ShapeRef.new(shape: CancelParticipantAuthenticationResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:complete_attachment_upload, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CompleteAttachmentUpload"
        o.http_method = "POST"
        o.http_request_uri = "/participant/complete-attachment-upload"
        o.input = Shapes::ShapeRef.new(shape: CompleteAttachmentUploadRequest)
        o.output = Shapes::ShapeRef.new(shape: CompleteAttachmentUploadResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

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

      api.add_operation(:describe_view, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeView"
        o.http_method = "GET"
        o.http_request_uri = "/participant/views/{ViewToken}"
        o.input = Shapes::ShapeRef.new(shape: DescribeViewRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeViewResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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

      api.add_operation(:get_attachment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAttachment"
        o.http_method = "POST"
        o.http_request_uri = "/participant/attachment"
        o.input = Shapes::ShapeRef.new(shape: GetAttachmentRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAttachmentResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_authentication_url, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAuthenticationUrl"
        o.http_method = "POST"
        o.http_request_uri = "/participant/authentication-url"
        o.input = Shapes::ShapeRef.new(shape: GetAuthenticationUrlRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAuthenticationUrlResponse)
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
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
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

      api.add_operation(:start_attachment_upload, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartAttachmentUpload"
        o.http_method = "POST"
        o.http_request_uri = "/participant/start-attachment-upload"
        o.input = Shapes::ShapeRef.new(shape: StartAttachmentUploadRequest)
        o.output = Shapes::ShapeRef.new(shape: StartAttachmentUploadResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)
    end

  end
end
