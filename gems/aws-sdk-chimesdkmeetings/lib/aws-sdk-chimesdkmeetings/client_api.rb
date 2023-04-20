# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ChimeSDKMeetings
  # @api private
  module ClientApi

    include Seahorse::Model

    AmazonResourceName = Shapes::StringShape.new(name: 'AmazonResourceName')
    Arn = Shapes::StringShape.new(name: 'Arn')
    Attendee = Shapes::StructureShape.new(name: 'Attendee')
    AttendeeCapabilities = Shapes::StructureShape.new(name: 'AttendeeCapabilities')
    AttendeeIdItem = Shapes::StructureShape.new(name: 'AttendeeIdItem')
    AttendeeIdsList = Shapes::ListShape.new(name: 'AttendeeIdsList')
    AttendeeList = Shapes::ListShape.new(name: 'AttendeeList')
    AudioFeatures = Shapes::StructureShape.new(name: 'AudioFeatures')
    BadRequestException = Shapes::StructureShape.new(name: 'BadRequestException')
    BatchCreateAttendeeErrorList = Shapes::ListShape.new(name: 'BatchCreateAttendeeErrorList')
    BatchCreateAttendeeRequest = Shapes::StructureShape.new(name: 'BatchCreateAttendeeRequest')
    BatchCreateAttendeeResponse = Shapes::StructureShape.new(name: 'BatchCreateAttendeeResponse')
    BatchUpdateAttendeeCapabilitiesExceptRequest = Shapes::StructureShape.new(name: 'BatchUpdateAttendeeCapabilitiesExceptRequest')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    ClientRequestToken = Shapes::StringShape.new(name: 'ClientRequestToken')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreateAttendeeError = Shapes::StructureShape.new(name: 'CreateAttendeeError')
    CreateAttendeeRequest = Shapes::StructureShape.new(name: 'CreateAttendeeRequest')
    CreateAttendeeRequestItem = Shapes::StructureShape.new(name: 'CreateAttendeeRequestItem')
    CreateAttendeeRequestItemList = Shapes::ListShape.new(name: 'CreateAttendeeRequestItemList')
    CreateAttendeeResponse = Shapes::StructureShape.new(name: 'CreateAttendeeResponse')
    CreateMeetingRequest = Shapes::StructureShape.new(name: 'CreateMeetingRequest')
    CreateMeetingResponse = Shapes::StructureShape.new(name: 'CreateMeetingResponse')
    CreateMeetingWithAttendeesRequest = Shapes::StructureShape.new(name: 'CreateMeetingWithAttendeesRequest')
    CreateMeetingWithAttendeesRequestItemList = Shapes::ListShape.new(name: 'CreateMeetingWithAttendeesRequestItemList')
    CreateMeetingWithAttendeesResponse = Shapes::StructureShape.new(name: 'CreateMeetingWithAttendeesResponse')
    DeleteAttendeeRequest = Shapes::StructureShape.new(name: 'DeleteAttendeeRequest')
    DeleteMeetingRequest = Shapes::StructureShape.new(name: 'DeleteMeetingRequest')
    EngineTranscribeMedicalSettings = Shapes::StructureShape.new(name: 'EngineTranscribeMedicalSettings')
    EngineTranscribeSettings = Shapes::StructureShape.new(name: 'EngineTranscribeSettings')
    ExternalMeetingId = Shapes::StringShape.new(name: 'ExternalMeetingId')
    ExternalUserId = Shapes::StringShape.new(name: 'ExternalUserId')
    ForbiddenException = Shapes::StructureShape.new(name: 'ForbiddenException')
    GetAttendeeRequest = Shapes::StructureShape.new(name: 'GetAttendeeRequest')
    GetAttendeeResponse = Shapes::StructureShape.new(name: 'GetAttendeeResponse')
    GetMeetingRequest = Shapes::StructureShape.new(name: 'GetMeetingRequest')
    GetMeetingResponse = Shapes::StructureShape.new(name: 'GetMeetingResponse')
    GuidString = Shapes::StringShape.new(name: 'GuidString')
    JoinTokenString = Shapes::StringShape.new(name: 'JoinTokenString')
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
    ListAttendeesRequest = Shapes::StructureShape.new(name: 'ListAttendeesRequest')
    ListAttendeesResponse = Shapes::StructureShape.new(name: 'ListAttendeesResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    MediaCapabilities = Shapes::StringShape.new(name: 'MediaCapabilities')
    MediaPlacement = Shapes::StructureShape.new(name: 'MediaPlacement')
    MediaRegion = Shapes::StringShape.new(name: 'MediaRegion')
    Meeting = Shapes::StructureShape.new(name: 'Meeting')
    MeetingFeatureStatus = Shapes::StringShape.new(name: 'MeetingFeatureStatus')
    MeetingFeaturesConfiguration = Shapes::StructureShape.new(name: 'MeetingFeaturesConfiguration')
    NotFoundException = Shapes::StructureShape.new(name: 'NotFoundException')
    NotificationsConfiguration = Shapes::StructureShape.new(name: 'NotificationsConfiguration')
    PrimaryMeetingId = Shapes::StringShape.new(name: 'PrimaryMeetingId')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResultMax = Shapes::IntegerShape.new(name: 'ResultMax')
    RetryAfterSeconds = Shapes::StringShape.new(name: 'RetryAfterSeconds')
    ServiceFailureException = Shapes::StructureShape.new(name: 'ServiceFailureException')
    ServiceUnavailableException = Shapes::StructureShape.new(name: 'ServiceUnavailableException')
    StartMeetingTranscriptionRequest = Shapes::StructureShape.new(name: 'StartMeetingTranscriptionRequest')
    StopMeetingTranscriptionRequest = Shapes::StructureShape.new(name: 'StopMeetingTranscriptionRequest')
    String = Shapes::StringShape.new(name: 'String')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TenantId = Shapes::StringShape.new(name: 'TenantId')
    TenantIdList = Shapes::ListShape.new(name: 'TenantIdList')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    TooManyTagsException = Shapes::StructureShape.new(name: 'TooManyTagsException')
    TranscribeContentIdentificationType = Shapes::StringShape.new(name: 'TranscribeContentIdentificationType')
    TranscribeContentRedactionType = Shapes::StringShape.new(name: 'TranscribeContentRedactionType')
    TranscribeLanguageCode = Shapes::StringShape.new(name: 'TranscribeLanguageCode')
    TranscribeLanguageModelName = Shapes::StringShape.new(name: 'TranscribeLanguageModelName')
    TranscribeLanguageOptions = Shapes::StringShape.new(name: 'TranscribeLanguageOptions')
    TranscribeMedicalContentIdentificationType = Shapes::StringShape.new(name: 'TranscribeMedicalContentIdentificationType')
    TranscribeMedicalLanguageCode = Shapes::StringShape.new(name: 'TranscribeMedicalLanguageCode')
    TranscribeMedicalRegion = Shapes::StringShape.new(name: 'TranscribeMedicalRegion')
    TranscribeMedicalSpecialty = Shapes::StringShape.new(name: 'TranscribeMedicalSpecialty')
    TranscribeMedicalType = Shapes::StringShape.new(name: 'TranscribeMedicalType')
    TranscribePartialResultsStability = Shapes::StringShape.new(name: 'TranscribePartialResultsStability')
    TranscribePiiEntityTypes = Shapes::StringShape.new(name: 'TranscribePiiEntityTypes')
    TranscribeRegion = Shapes::StringShape.new(name: 'TranscribeRegion')
    TranscribeVocabularyFilterMethod = Shapes::StringShape.new(name: 'TranscribeVocabularyFilterMethod')
    TranscribeVocabularyNamesOrFilterNamesString = Shapes::StringShape.new(name: 'TranscribeVocabularyNamesOrFilterNamesString')
    TranscriptionConfiguration = Shapes::StructureShape.new(name: 'TranscriptionConfiguration')
    UnauthorizedException = Shapes::StructureShape.new(name: 'UnauthorizedException')
    UnprocessableEntityException = Shapes::StructureShape.new(name: 'UnprocessableEntityException')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateAttendeeCapabilitiesRequest = Shapes::StructureShape.new(name: 'UpdateAttendeeCapabilitiesRequest')
    UpdateAttendeeCapabilitiesResponse = Shapes::StructureShape.new(name: 'UpdateAttendeeCapabilitiesResponse')

    Attendee.add_member(:external_user_id, Shapes::ShapeRef.new(shape: ExternalUserId, location_name: "ExternalUserId"))
    Attendee.add_member(:attendee_id, Shapes::ShapeRef.new(shape: GuidString, location_name: "AttendeeId"))
    Attendee.add_member(:join_token, Shapes::ShapeRef.new(shape: JoinTokenString, location_name: "JoinToken"))
    Attendee.add_member(:capabilities, Shapes::ShapeRef.new(shape: AttendeeCapabilities, location_name: "Capabilities"))
    Attendee.struct_class = Types::Attendee

    AttendeeCapabilities.add_member(:audio, Shapes::ShapeRef.new(shape: MediaCapabilities, required: true, location_name: "Audio"))
    AttendeeCapabilities.add_member(:video, Shapes::ShapeRef.new(shape: MediaCapabilities, required: true, location_name: "Video"))
    AttendeeCapabilities.add_member(:content, Shapes::ShapeRef.new(shape: MediaCapabilities, required: true, location_name: "Content"))
    AttendeeCapabilities.struct_class = Types::AttendeeCapabilities

    AttendeeIdItem.add_member(:attendee_id, Shapes::ShapeRef.new(shape: GuidString, required: true, location_name: "AttendeeId"))
    AttendeeIdItem.struct_class = Types::AttendeeIdItem

    AttendeeIdsList.member = Shapes::ShapeRef.new(shape: AttendeeIdItem)

    AttendeeList.member = Shapes::ShapeRef.new(shape: Attendee)

    AudioFeatures.add_member(:echo_reduction, Shapes::ShapeRef.new(shape: MeetingFeatureStatus, location_name: "EchoReduction"))
    AudioFeatures.struct_class = Types::AudioFeatures

    BadRequestException.add_member(:code, Shapes::ShapeRef.new(shape: String, location_name: "Code"))
    BadRequestException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    BadRequestException.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    BadRequestException.struct_class = Types::BadRequestException

    BatchCreateAttendeeErrorList.member = Shapes::ShapeRef.new(shape: CreateAttendeeError)

    BatchCreateAttendeeRequest.add_member(:meeting_id, Shapes::ShapeRef.new(shape: GuidString, required: true, location: "uri", location_name: "MeetingId"))
    BatchCreateAttendeeRequest.add_member(:attendees, Shapes::ShapeRef.new(shape: CreateAttendeeRequestItemList, required: true, location_name: "Attendees"))
    BatchCreateAttendeeRequest.struct_class = Types::BatchCreateAttendeeRequest

    BatchCreateAttendeeResponse.add_member(:attendees, Shapes::ShapeRef.new(shape: AttendeeList, location_name: "Attendees"))
    BatchCreateAttendeeResponse.add_member(:errors, Shapes::ShapeRef.new(shape: BatchCreateAttendeeErrorList, location_name: "Errors"))
    BatchCreateAttendeeResponse.struct_class = Types::BatchCreateAttendeeResponse

    BatchUpdateAttendeeCapabilitiesExceptRequest.add_member(:meeting_id, Shapes::ShapeRef.new(shape: GuidString, required: true, location: "uri", location_name: "MeetingId"))
    BatchUpdateAttendeeCapabilitiesExceptRequest.add_member(:excluded_attendee_ids, Shapes::ShapeRef.new(shape: AttendeeIdsList, required: true, location_name: "ExcludedAttendeeIds"))
    BatchUpdateAttendeeCapabilitiesExceptRequest.add_member(:capabilities, Shapes::ShapeRef.new(shape: AttendeeCapabilities, required: true, location_name: "Capabilities"))
    BatchUpdateAttendeeCapabilitiesExceptRequest.struct_class = Types::BatchUpdateAttendeeCapabilitiesExceptRequest

    ConflictException.add_member(:code, Shapes::ShapeRef.new(shape: String, location_name: "Code"))
    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ConflictException.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    ConflictException.struct_class = Types::ConflictException

    CreateAttendeeError.add_member(:external_user_id, Shapes::ShapeRef.new(shape: ExternalUserId, location_name: "ExternalUserId"))
    CreateAttendeeError.add_member(:error_code, Shapes::ShapeRef.new(shape: String, location_name: "ErrorCode"))
    CreateAttendeeError.add_member(:error_message, Shapes::ShapeRef.new(shape: String, location_name: "ErrorMessage"))
    CreateAttendeeError.struct_class = Types::CreateAttendeeError

    CreateAttendeeRequest.add_member(:meeting_id, Shapes::ShapeRef.new(shape: GuidString, required: true, location: "uri", location_name: "MeetingId"))
    CreateAttendeeRequest.add_member(:external_user_id, Shapes::ShapeRef.new(shape: ExternalUserId, required: true, location_name: "ExternalUserId"))
    CreateAttendeeRequest.add_member(:capabilities, Shapes::ShapeRef.new(shape: AttendeeCapabilities, location_name: "Capabilities"))
    CreateAttendeeRequest.struct_class = Types::CreateAttendeeRequest

    CreateAttendeeRequestItem.add_member(:external_user_id, Shapes::ShapeRef.new(shape: ExternalUserId, required: true, location_name: "ExternalUserId"))
    CreateAttendeeRequestItem.add_member(:capabilities, Shapes::ShapeRef.new(shape: AttendeeCapabilities, location_name: "Capabilities"))
    CreateAttendeeRequestItem.struct_class = Types::CreateAttendeeRequestItem

    CreateAttendeeRequestItemList.member = Shapes::ShapeRef.new(shape: CreateAttendeeRequestItem)

    CreateAttendeeResponse.add_member(:attendee, Shapes::ShapeRef.new(shape: Attendee, location_name: "Attendee"))
    CreateAttendeeResponse.struct_class = Types::CreateAttendeeResponse

    CreateMeetingRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, required: true, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    CreateMeetingRequest.add_member(:media_region, Shapes::ShapeRef.new(shape: MediaRegion, required: true, location_name: "MediaRegion"))
    CreateMeetingRequest.add_member(:meeting_host_id, Shapes::ShapeRef.new(shape: ExternalUserId, location_name: "MeetingHostId"))
    CreateMeetingRequest.add_member(:external_meeting_id, Shapes::ShapeRef.new(shape: ExternalMeetingId, required: true, location_name: "ExternalMeetingId"))
    CreateMeetingRequest.add_member(:notifications_configuration, Shapes::ShapeRef.new(shape: NotificationsConfiguration, location_name: "NotificationsConfiguration"))
    CreateMeetingRequest.add_member(:meeting_features, Shapes::ShapeRef.new(shape: MeetingFeaturesConfiguration, location_name: "MeetingFeatures"))
    CreateMeetingRequest.add_member(:primary_meeting_id, Shapes::ShapeRef.new(shape: PrimaryMeetingId, location_name: "PrimaryMeetingId"))
    CreateMeetingRequest.add_member(:tenant_ids, Shapes::ShapeRef.new(shape: TenantIdList, location_name: "TenantIds"))
    CreateMeetingRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateMeetingRequest.struct_class = Types::CreateMeetingRequest

    CreateMeetingResponse.add_member(:meeting, Shapes::ShapeRef.new(shape: Meeting, location_name: "Meeting"))
    CreateMeetingResponse.struct_class = Types::CreateMeetingResponse

    CreateMeetingWithAttendeesRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, required: true, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    CreateMeetingWithAttendeesRequest.add_member(:media_region, Shapes::ShapeRef.new(shape: MediaRegion, required: true, location_name: "MediaRegion"))
    CreateMeetingWithAttendeesRequest.add_member(:meeting_host_id, Shapes::ShapeRef.new(shape: ExternalUserId, location_name: "MeetingHostId"))
    CreateMeetingWithAttendeesRequest.add_member(:external_meeting_id, Shapes::ShapeRef.new(shape: ExternalMeetingId, required: true, location_name: "ExternalMeetingId"))
    CreateMeetingWithAttendeesRequest.add_member(:meeting_features, Shapes::ShapeRef.new(shape: MeetingFeaturesConfiguration, location_name: "MeetingFeatures"))
    CreateMeetingWithAttendeesRequest.add_member(:notifications_configuration, Shapes::ShapeRef.new(shape: NotificationsConfiguration, location_name: "NotificationsConfiguration"))
    CreateMeetingWithAttendeesRequest.add_member(:attendees, Shapes::ShapeRef.new(shape: CreateMeetingWithAttendeesRequestItemList, required: true, location_name: "Attendees"))
    CreateMeetingWithAttendeesRequest.add_member(:primary_meeting_id, Shapes::ShapeRef.new(shape: PrimaryMeetingId, location_name: "PrimaryMeetingId"))
    CreateMeetingWithAttendeesRequest.add_member(:tenant_ids, Shapes::ShapeRef.new(shape: TenantIdList, location_name: "TenantIds"))
    CreateMeetingWithAttendeesRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateMeetingWithAttendeesRequest.struct_class = Types::CreateMeetingWithAttendeesRequest

    CreateMeetingWithAttendeesRequestItemList.member = Shapes::ShapeRef.new(shape: CreateAttendeeRequestItem)

    CreateMeetingWithAttendeesResponse.add_member(:meeting, Shapes::ShapeRef.new(shape: Meeting, location_name: "Meeting"))
    CreateMeetingWithAttendeesResponse.add_member(:attendees, Shapes::ShapeRef.new(shape: AttendeeList, location_name: "Attendees"))
    CreateMeetingWithAttendeesResponse.add_member(:errors, Shapes::ShapeRef.new(shape: BatchCreateAttendeeErrorList, location_name: "Errors"))
    CreateMeetingWithAttendeesResponse.struct_class = Types::CreateMeetingWithAttendeesResponse

    DeleteAttendeeRequest.add_member(:meeting_id, Shapes::ShapeRef.new(shape: GuidString, required: true, location: "uri", location_name: "MeetingId"))
    DeleteAttendeeRequest.add_member(:attendee_id, Shapes::ShapeRef.new(shape: GuidString, required: true, location: "uri", location_name: "AttendeeId"))
    DeleteAttendeeRequest.struct_class = Types::DeleteAttendeeRequest

    DeleteMeetingRequest.add_member(:meeting_id, Shapes::ShapeRef.new(shape: GuidString, required: true, location: "uri", location_name: "MeetingId"))
    DeleteMeetingRequest.struct_class = Types::DeleteMeetingRequest

    EngineTranscribeMedicalSettings.add_member(:language_code, Shapes::ShapeRef.new(shape: TranscribeMedicalLanguageCode, required: true, location_name: "LanguageCode"))
    EngineTranscribeMedicalSettings.add_member(:specialty, Shapes::ShapeRef.new(shape: TranscribeMedicalSpecialty, required: true, location_name: "Specialty"))
    EngineTranscribeMedicalSettings.add_member(:type, Shapes::ShapeRef.new(shape: TranscribeMedicalType, required: true, location_name: "Type"))
    EngineTranscribeMedicalSettings.add_member(:vocabulary_name, Shapes::ShapeRef.new(shape: String, location_name: "VocabularyName"))
    EngineTranscribeMedicalSettings.add_member(:region, Shapes::ShapeRef.new(shape: TranscribeMedicalRegion, location_name: "Region"))
    EngineTranscribeMedicalSettings.add_member(:content_identification_type, Shapes::ShapeRef.new(shape: TranscribeMedicalContentIdentificationType, location_name: "ContentIdentificationType"))
    EngineTranscribeMedicalSettings.struct_class = Types::EngineTranscribeMedicalSettings

    EngineTranscribeSettings.add_member(:language_code, Shapes::ShapeRef.new(shape: TranscribeLanguageCode, location_name: "LanguageCode"))
    EngineTranscribeSettings.add_member(:vocabulary_filter_method, Shapes::ShapeRef.new(shape: TranscribeVocabularyFilterMethod, location_name: "VocabularyFilterMethod"))
    EngineTranscribeSettings.add_member(:vocabulary_filter_name, Shapes::ShapeRef.new(shape: String, location_name: "VocabularyFilterName"))
    EngineTranscribeSettings.add_member(:vocabulary_name, Shapes::ShapeRef.new(shape: String, location_name: "VocabularyName"))
    EngineTranscribeSettings.add_member(:region, Shapes::ShapeRef.new(shape: TranscribeRegion, location_name: "Region"))
    EngineTranscribeSettings.add_member(:enable_partial_results_stabilization, Shapes::ShapeRef.new(shape: Boolean, location_name: "EnablePartialResultsStabilization"))
    EngineTranscribeSettings.add_member(:partial_results_stability, Shapes::ShapeRef.new(shape: TranscribePartialResultsStability, location_name: "PartialResultsStability"))
    EngineTranscribeSettings.add_member(:content_identification_type, Shapes::ShapeRef.new(shape: TranscribeContentIdentificationType, location_name: "ContentIdentificationType"))
    EngineTranscribeSettings.add_member(:content_redaction_type, Shapes::ShapeRef.new(shape: TranscribeContentRedactionType, location_name: "ContentRedactionType"))
    EngineTranscribeSettings.add_member(:pii_entity_types, Shapes::ShapeRef.new(shape: TranscribePiiEntityTypes, location_name: "PiiEntityTypes"))
    EngineTranscribeSettings.add_member(:language_model_name, Shapes::ShapeRef.new(shape: TranscribeLanguageModelName, location_name: "LanguageModelName"))
    EngineTranscribeSettings.add_member(:identify_language, Shapes::ShapeRef.new(shape: Boolean, location_name: "IdentifyLanguage"))
    EngineTranscribeSettings.add_member(:language_options, Shapes::ShapeRef.new(shape: TranscribeLanguageOptions, location_name: "LanguageOptions"))
    EngineTranscribeSettings.add_member(:preferred_language, Shapes::ShapeRef.new(shape: TranscribeLanguageCode, location_name: "PreferredLanguage"))
    EngineTranscribeSettings.add_member(:vocabulary_names, Shapes::ShapeRef.new(shape: TranscribeVocabularyNamesOrFilterNamesString, location_name: "VocabularyNames"))
    EngineTranscribeSettings.add_member(:vocabulary_filter_names, Shapes::ShapeRef.new(shape: TranscribeVocabularyNamesOrFilterNamesString, location_name: "VocabularyFilterNames"))
    EngineTranscribeSettings.struct_class = Types::EngineTranscribeSettings

    ForbiddenException.add_member(:code, Shapes::ShapeRef.new(shape: String, location_name: "Code"))
    ForbiddenException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ForbiddenException.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    ForbiddenException.struct_class = Types::ForbiddenException

    GetAttendeeRequest.add_member(:meeting_id, Shapes::ShapeRef.new(shape: GuidString, required: true, location: "uri", location_name: "MeetingId"))
    GetAttendeeRequest.add_member(:attendee_id, Shapes::ShapeRef.new(shape: GuidString, required: true, location: "uri", location_name: "AttendeeId"))
    GetAttendeeRequest.struct_class = Types::GetAttendeeRequest

    GetAttendeeResponse.add_member(:attendee, Shapes::ShapeRef.new(shape: Attendee, location_name: "Attendee"))
    GetAttendeeResponse.struct_class = Types::GetAttendeeResponse

    GetMeetingRequest.add_member(:meeting_id, Shapes::ShapeRef.new(shape: GuidString, required: true, location: "uri", location_name: "MeetingId"))
    GetMeetingRequest.struct_class = Types::GetMeetingRequest

    GetMeetingResponse.add_member(:meeting, Shapes::ShapeRef.new(shape: Meeting, location_name: "Meeting"))
    GetMeetingResponse.struct_class = Types::GetMeetingResponse

    LimitExceededException.add_member(:code, Shapes::ShapeRef.new(shape: String, location_name: "Code"))
    LimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    LimitExceededException.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    LimitExceededException.struct_class = Types::LimitExceededException

    ListAttendeesRequest.add_member(:meeting_id, Shapes::ShapeRef.new(shape: GuidString, required: true, location: "uri", location_name: "MeetingId"))
    ListAttendeesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "next-token"))
    ListAttendeesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ResultMax, location: "querystring", location_name: "max-results"))
    ListAttendeesRequest.struct_class = Types::ListAttendeesRequest

    ListAttendeesResponse.add_member(:attendees, Shapes::ShapeRef.new(shape: AttendeeList, location_name: "Attendees"))
    ListAttendeesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListAttendeesResponse.struct_class = Types::ListAttendeesResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location: "querystring", location_name: "arn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    MediaPlacement.add_member(:audio_host_url, Shapes::ShapeRef.new(shape: String, location_name: "AudioHostUrl"))
    MediaPlacement.add_member(:audio_fallback_url, Shapes::ShapeRef.new(shape: String, location_name: "AudioFallbackUrl"))
    MediaPlacement.add_member(:signaling_url, Shapes::ShapeRef.new(shape: String, location_name: "SignalingUrl"))
    MediaPlacement.add_member(:turn_control_url, Shapes::ShapeRef.new(shape: String, location_name: "TurnControlUrl"))
    MediaPlacement.add_member(:screen_data_url, Shapes::ShapeRef.new(shape: String, location_name: "ScreenDataUrl"))
    MediaPlacement.add_member(:screen_viewing_url, Shapes::ShapeRef.new(shape: String, location_name: "ScreenViewingUrl"))
    MediaPlacement.add_member(:screen_sharing_url, Shapes::ShapeRef.new(shape: String, location_name: "ScreenSharingUrl"))
    MediaPlacement.add_member(:event_ingestion_url, Shapes::ShapeRef.new(shape: String, location_name: "EventIngestionUrl"))
    MediaPlacement.struct_class = Types::MediaPlacement

    Meeting.add_member(:meeting_id, Shapes::ShapeRef.new(shape: GuidString, location_name: "MeetingId"))
    Meeting.add_member(:meeting_host_id, Shapes::ShapeRef.new(shape: ExternalUserId, location_name: "MeetingHostId"))
    Meeting.add_member(:external_meeting_id, Shapes::ShapeRef.new(shape: ExternalMeetingId, location_name: "ExternalMeetingId"))
    Meeting.add_member(:media_region, Shapes::ShapeRef.new(shape: MediaRegion, location_name: "MediaRegion"))
    Meeting.add_member(:media_placement, Shapes::ShapeRef.new(shape: MediaPlacement, location_name: "MediaPlacement"))
    Meeting.add_member(:meeting_features, Shapes::ShapeRef.new(shape: MeetingFeaturesConfiguration, location_name: "MeetingFeatures"))
    Meeting.add_member(:primary_meeting_id, Shapes::ShapeRef.new(shape: PrimaryMeetingId, location_name: "PrimaryMeetingId"))
    Meeting.add_member(:tenant_ids, Shapes::ShapeRef.new(shape: TenantIdList, location_name: "TenantIds"))
    Meeting.add_member(:meeting_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "MeetingArn"))
    Meeting.struct_class = Types::Meeting

    MeetingFeaturesConfiguration.add_member(:audio, Shapes::ShapeRef.new(shape: AudioFeatures, location_name: "Audio"))
    MeetingFeaturesConfiguration.struct_class = Types::MeetingFeaturesConfiguration

    NotFoundException.add_member(:code, Shapes::ShapeRef.new(shape: String, location_name: "Code"))
    NotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    NotFoundException.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    NotFoundException.struct_class = Types::NotFoundException

    NotificationsConfiguration.add_member(:lambda_function_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "LambdaFunctionArn"))
    NotificationsConfiguration.add_member(:sns_topic_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "SnsTopicArn"))
    NotificationsConfiguration.add_member(:sqs_queue_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "SqsQueueArn"))
    NotificationsConfiguration.struct_class = Types::NotificationsConfiguration

    ResourceNotFoundException.add_member(:code, Shapes::ShapeRef.new(shape: String, location_name: "Code"))
    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ResourceNotFoundException.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    ResourceNotFoundException.add_member(:resource_name, Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "ResourceName"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ServiceFailureException.add_member(:code, Shapes::ShapeRef.new(shape: String, location_name: "Code"))
    ServiceFailureException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ServiceFailureException.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    ServiceFailureException.struct_class = Types::ServiceFailureException

    ServiceUnavailableException.add_member(:code, Shapes::ShapeRef.new(shape: String, location_name: "Code"))
    ServiceUnavailableException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ServiceUnavailableException.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    ServiceUnavailableException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: RetryAfterSeconds, location: "header", location_name: "Retry-After"))
    ServiceUnavailableException.struct_class = Types::ServiceUnavailableException

    StartMeetingTranscriptionRequest.add_member(:meeting_id, Shapes::ShapeRef.new(shape: GuidString, required: true, location: "uri", location_name: "MeetingId"))
    StartMeetingTranscriptionRequest.add_member(:transcription_configuration, Shapes::ShapeRef.new(shape: TranscriptionConfiguration, required: true, location_name: "TranscriptionConfiguration"))
    StartMeetingTranscriptionRequest.struct_class = Types::StartMeetingTranscriptionRequest

    StopMeetingTranscriptionRequest.add_member(:meeting_id, Shapes::ShapeRef.new(shape: GuidString, required: true, location: "uri", location_name: "MeetingId"))
    StopMeetingTranscriptionRequest.struct_class = Types::StopMeetingTranscriptionRequest

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "Key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, required: true, location_name: "Value"))
    Tag.struct_class = Types::Tag

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagList.member = Shapes::ShapeRef.new(shape: Tag)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "ResourceARN"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "Tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    TenantIdList.member = Shapes::ShapeRef.new(shape: TenantId)

    ThrottlingException.add_member(:code, Shapes::ShapeRef.new(shape: String, location_name: "Code"))
    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ThrottlingException.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    ThrottlingException.struct_class = Types::ThrottlingException

    TooManyTagsException.add_member(:code, Shapes::ShapeRef.new(shape: String, location_name: "Code"))
    TooManyTagsException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    TooManyTagsException.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    TooManyTagsException.add_member(:resource_name, Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "ResourceName"))
    TooManyTagsException.struct_class = Types::TooManyTagsException

    TranscriptionConfiguration.add_member(:engine_transcribe_settings, Shapes::ShapeRef.new(shape: EngineTranscribeSettings, location_name: "EngineTranscribeSettings"))
    TranscriptionConfiguration.add_member(:engine_transcribe_medical_settings, Shapes::ShapeRef.new(shape: EngineTranscribeMedicalSettings, location_name: "EngineTranscribeMedicalSettings"))
    TranscriptionConfiguration.struct_class = Types::TranscriptionConfiguration

    UnauthorizedException.add_member(:code, Shapes::ShapeRef.new(shape: String, location_name: "Code"))
    UnauthorizedException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    UnauthorizedException.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    UnauthorizedException.struct_class = Types::UnauthorizedException

    UnprocessableEntityException.add_member(:code, Shapes::ShapeRef.new(shape: String, location_name: "Code"))
    UnprocessableEntityException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    UnprocessableEntityException.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    UnprocessableEntityException.struct_class = Types::UnprocessableEntityException

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "ResourceARN"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location_name: "TagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateAttendeeCapabilitiesRequest.add_member(:meeting_id, Shapes::ShapeRef.new(shape: GuidString, required: true, location: "uri", location_name: "MeetingId"))
    UpdateAttendeeCapabilitiesRequest.add_member(:attendee_id, Shapes::ShapeRef.new(shape: GuidString, required: true, location: "uri", location_name: "AttendeeId"))
    UpdateAttendeeCapabilitiesRequest.add_member(:capabilities, Shapes::ShapeRef.new(shape: AttendeeCapabilities, required: true, location_name: "Capabilities"))
    UpdateAttendeeCapabilitiesRequest.struct_class = Types::UpdateAttendeeCapabilitiesRequest

    UpdateAttendeeCapabilitiesResponse.add_member(:attendee, Shapes::ShapeRef.new(shape: Attendee, location_name: "Attendee"))
    UpdateAttendeeCapabilitiesResponse.struct_class = Types::UpdateAttendeeCapabilitiesResponse


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2021-07-15"

      api.metadata = {
        "apiVersion" => "2021-07-15",
        "endpointPrefix" => "meetings-chime",
        "protocol" => "rest-json",
        "serviceFullName" => "Amazon Chime SDK Meetings",
        "serviceId" => "Chime SDK Meetings",
        "signatureVersion" => "v4",
        "signingName" => "chime",
        "uid" => "chime-sdk-meetings-2021-07-15",
      }

      api.add_operation(:batch_create_attendee, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchCreateAttendee"
        o.http_method = "POST"
        o.http_request_uri = "/meetings/{MeetingId}/attendees?operation=batch-create"
        o.input = Shapes::ShapeRef.new(shape: BatchCreateAttendeeRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchCreateAttendeeResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: UnprocessableEntityException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:batch_update_attendee_capabilities_except, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchUpdateAttendeeCapabilitiesExcept"
        o.http_method = "PUT"
        o.http_request_uri = "/meetings/{MeetingId}/attendees/capabilities?operation=batch-update-except"
        o.input = Shapes::ShapeRef.new(shape: BatchUpdateAttendeeCapabilitiesExceptRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:create_attendee, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAttendee"
        o.http_method = "POST"
        o.http_request_uri = "/meetings/{MeetingId}/attendees"
        o.input = Shapes::ShapeRef.new(shape: CreateAttendeeRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateAttendeeResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: UnprocessableEntityException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:create_meeting, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateMeeting"
        o.http_method = "POST"
        o.http_request_uri = "/meetings"
        o.input = Shapes::ShapeRef.new(shape: CreateMeetingRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateMeetingResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:create_meeting_with_attendees, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateMeetingWithAttendees"
        o.http_method = "POST"
        o.http_request_uri = "/meetings?operation=create-attendees"
        o.input = Shapes::ShapeRef.new(shape: CreateMeetingWithAttendeesRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateMeetingWithAttendeesResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:delete_attendee, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAttendee"
        o.http_method = "DELETE"
        o.http_request_uri = "/meetings/{MeetingId}/attendees/{AttendeeId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteAttendeeRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_meeting, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteMeeting"
        o.http_method = "DELETE"
        o.http_request_uri = "/meetings/{MeetingId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteMeetingRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_attendee, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAttendee"
        o.http_method = "GET"
        o.http_request_uri = "/meetings/{MeetingId}/attendees/{AttendeeId}"
        o.input = Shapes::ShapeRef.new(shape: GetAttendeeRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAttendeeResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_meeting, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetMeeting"
        o.http_method = "GET"
        o.http_request_uri = "/meetings/{MeetingId}"
        o.input = Shapes::ShapeRef.new(shape: GetMeetingRequest)
        o.output = Shapes::ShapeRef.new(shape: GetMeetingResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:list_attendees, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAttendees"
        o.http_method = "GET"
        o.http_request_uri = "/meetings/{MeetingId}/attendees"
        o.input = Shapes::ShapeRef.new(shape: ListAttendeesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAttendeesResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "GET"
        o.http_request_uri = "/tags"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:start_meeting_transcription, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartMeetingTranscription"
        o.http_method = "POST"
        o.http_request_uri = "/meetings/{MeetingId}/transcription?operation=start"
        o.input = Shapes::ShapeRef.new(shape: StartMeetingTranscriptionRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: UnprocessableEntityException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:stop_meeting_transcription, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopMeetingTranscription"
        o.http_method = "POST"
        o.http_request_uri = "/meetings/{MeetingId}/transcription?operation=stop"
        o.input = Shapes::ShapeRef.new(shape: StopMeetingTranscriptionRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: UnprocessableEntityException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceFailureException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags?operation=tag-resource"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTagsException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags?operation=untag-resource"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:update_attendee_capabilities, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateAttendeeCapabilities"
        o.http_method = "PUT"
        o.http_request_uri = "/meetings/{MeetingId}/attendees/{AttendeeId}/capabilities"
        o.input = Shapes::ShapeRef.new(shape: UpdateAttendeeCapabilitiesRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateAttendeeCapabilitiesResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)
    end

  end
end
