# frozen_string_literal: true

# This is generated code!

module Aws::ChimeSDKMeetings
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AmazonResourceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.chimesdkmeetings#AmazonResourceName", name: "AmazonResourceName", traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}, "smithy.api#pattern" => "^arn:"})
    Arn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.chimesdkmeetings#Arn", name: "Arn", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^arn[\\/\\:\\-\\_\\.a-zA-Z0-9]+$", "smithy.api#sensitive" => {}})
    Attendee = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmeetings#Attendee", name: "Attendee")
    AttendeeCapabilities = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmeetings#AttendeeCapabilities", name: "AttendeeCapabilities")
    AttendeeFeatures = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmeetings#AttendeeFeatures", name: "AttendeeFeatures")
    AttendeeIdItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmeetings#AttendeeIdItem", name: "AttendeeIdItem")
    AttendeeIdsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.chimesdkmeetings#AttendeeIdsList", name: "AttendeeIdsList", traits: {"smithy.api#length" => {"min" => 1, "max" => 250}})
    AttendeeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.chimesdkmeetings#AttendeeList", name: "AttendeeList")
    AttendeeMax = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.chimesdkmeetings#AttendeeMax", name: "AttendeeMax", traits: {"smithy.api#range" => {"min" => 1, "max" => 250}})
    AudioFeatures = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmeetings#AudioFeatures", name: "AudioFeatures")
    BadRequestException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmeetings#BadRequestException", name: "BadRequestException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    BatchCreateAttendeeErrorList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.chimesdkmeetings#BatchCreateAttendeeErrorList", name: "BatchCreateAttendeeErrorList")
    BatchCreateAttendeeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmeetings#BatchCreateAttendeeRequest", name: "BatchCreateAttendeeRequest")
    BatchCreateAttendeeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmeetings#BatchCreateAttendeeResponse", name: "BatchCreateAttendeeResponse")
    BatchUpdateAttendeeCapabilitiesExceptRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmeetings#BatchUpdateAttendeeCapabilitiesExceptRequest", name: "BatchUpdateAttendeeCapabilitiesExceptRequest")
    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.chimesdkmeetings#Boolean", name: "Boolean", traits: {"smithy.api#default" => false})
    ClientRequestToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.chimesdkmeetings#ClientRequestToken", name: "ClientRequestToken", traits: {"smithy.api#length" => {"min" => 2, "max" => 64}, "smithy.api#pattern" => "^[-_a-zA-Z0-9]*$", "smithy.api#sensitive" => {}})
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmeetings#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ContentFeatures = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmeetings#ContentFeatures", name: "ContentFeatures")
    ContentResolution = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.chimesdkmeetings#ContentResolution", name: "ContentResolution")
    CreateAttendeeError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmeetings#CreateAttendeeError", name: "CreateAttendeeError")
    CreateAttendeeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmeetings#CreateAttendeeRequest", name: "CreateAttendeeRequest")
    CreateAttendeeRequestItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmeetings#CreateAttendeeRequestItem", name: "CreateAttendeeRequestItem")
    CreateAttendeeRequestItemList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.chimesdkmeetings#CreateAttendeeRequestItemList", name: "CreateAttendeeRequestItemList", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    CreateAttendeeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmeetings#CreateAttendeeResponse", name: "CreateAttendeeResponse")
    CreateMeetingRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmeetings#CreateMeetingRequest", name: "CreateMeetingRequest")
    CreateMeetingResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmeetings#CreateMeetingResponse", name: "CreateMeetingResponse")
    CreateMeetingWithAttendeesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmeetings#CreateMeetingWithAttendeesRequest", name: "CreateMeetingWithAttendeesRequest")
    CreateMeetingWithAttendeesRequestItemList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.chimesdkmeetings#CreateMeetingWithAttendeesRequestItemList", name: "CreateMeetingWithAttendeesRequestItemList", traits: {"smithy.api#length" => {"min" => 1, "max" => 20}})
    CreateMeetingWithAttendeesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmeetings#CreateMeetingWithAttendeesResponse", name: "CreateMeetingWithAttendeesResponse")
    DeleteAttendeeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmeetings#DeleteAttendeeRequest", name: "DeleteAttendeeRequest")
    DeleteMeetingRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmeetings#DeleteMeetingRequest", name: "DeleteMeetingRequest")
    EngineTranscribeMedicalSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmeetings#EngineTranscribeMedicalSettings", name: "EngineTranscribeMedicalSettings")
    EngineTranscribeSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmeetings#EngineTranscribeSettings", name: "EngineTranscribeSettings")
    ExternalMeetingId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.chimesdkmeetings#ExternalMeetingId", name: "ExternalMeetingId", traits: {"smithy.api#length" => {"min" => 2, "max" => 64}, "smithy.api#sensitive" => {}})
    ExternalUserId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.chimesdkmeetings#ExternalUserId", name: "ExternalUserId", traits: {"smithy.api#length" => {"min" => 2, "max" => 64}, "smithy.api#sensitive" => {}})
    ForbiddenException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmeetings#ForbiddenException", name: "ForbiddenException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    GetAttendeeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmeetings#GetAttendeeRequest", name: "GetAttendeeRequest")
    GetAttendeeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmeetings#GetAttendeeResponse", name: "GetAttendeeResponse")
    GetMeetingRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmeetings#GetMeetingRequest", name: "GetMeetingRequest")
    GetMeetingResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmeetings#GetMeetingResponse", name: "GetMeetingResponse")
    GuidString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.chimesdkmeetings#GuidString", name: "GuidString", traits: {"smithy.api#pattern" => "^[a-fA-F0-9]{8}(?:-[a-fA-F0-9]{4}){3}-[a-fA-F0-9]{12}$"})
    JoinTokenString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.chimesdkmeetings#JoinTokenString", name: "JoinTokenString", traits: {"smithy.api#length" => {"min" => 2, "max" => 2048}, "smithy.api#sensitive" => {}})
    LimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmeetings#LimitExceededException", name: "LimitExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ListAttendeesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmeetings#ListAttendeesRequest", name: "ListAttendeesRequest")
    ListAttendeesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmeetings#ListAttendeesResponse", name: "ListAttendeesResponse")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmeetings#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmeetings#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    MediaCapabilities = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.chimesdkmeetings#MediaCapabilities", name: "MediaCapabilities")
    MediaPlacement = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmeetings#MediaPlacement", name: "MediaPlacement")
    MediaPlacementNetworkType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.chimesdkmeetings#MediaPlacementNetworkType", name: "MediaPlacementNetworkType")
    MediaRegion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.chimesdkmeetings#MediaRegion", name: "MediaRegion", traits: {"smithy.api#length" => {"min" => 2, "max" => 64}})
    Meeting = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmeetings#Meeting", name: "Meeting")
    MeetingFeatureStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.chimesdkmeetings#MeetingFeatureStatus", name: "MeetingFeatureStatus")
    MeetingFeaturesConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmeetings#MeetingFeaturesConfiguration", name: "MeetingFeaturesConfiguration")
    NotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmeetings#NotFoundException", name: "NotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    NotificationsConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmeetings#NotificationsConfiguration", name: "NotificationsConfiguration")
    PrimaryMeetingId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.chimesdkmeetings#PrimaryMeetingId", name: "PrimaryMeetingId", traits: {"smithy.api#length" => {"min" => 2, "max" => 64}})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmeetings#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResultMax = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.chimesdkmeetings#ResultMax", name: "ResultMax", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    RetryAfterSeconds = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.chimesdkmeetings#RetryAfterSeconds", name: "RetryAfterSeconds")
    ServiceFailureException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmeetings#ServiceFailureException", name: "ServiceFailureException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    ServiceUnavailableException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmeetings#ServiceUnavailableException", name: "ServiceUnavailableException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 503})
    StartMeetingTranscriptionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmeetings#StartMeetingTranscriptionRequest", name: "StartMeetingTranscriptionRequest")
    StopMeetingTranscriptionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmeetings#StopMeetingTranscriptionRequest", name: "StopMeetingTranscriptionRequest")
    String = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.chimesdkmeetings#String", name: "String", traits: {"smithy.api#length" => {"min" => 0, "max" => 4096}})
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmeetings#Tag", name: "Tag")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.chimesdkmeetings#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z+-=._:/]+$"})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.chimesdkmeetings#TagKeyList", name: "TagKeyList", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.chimesdkmeetings#TagList", name: "TagList", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmeetings#TagResourceRequest", name: "TagResourceRequest")
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmeetings#TagResourceResponse", name: "TagResourceResponse")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.chimesdkmeetings#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[\\s\\w+-=\\.:/@]*$"})
    TenantId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.chimesdkmeetings#TenantId", name: "TenantId", traits: {"smithy.api#length" => {"min" => 2, "max" => 256}, "smithy.api#pattern" => "^(?!.*?(.)\\1{3})[-_!@\#$a-zA-Z0-9]*$"})
    TenantIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.chimesdkmeetings#TenantIdList", name: "TenantIdList", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmeetings#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    TooManyTagsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmeetings#TooManyTagsException", name: "TooManyTagsException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TranscribeContentIdentificationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.chimesdkmeetings#TranscribeContentIdentificationType", name: "TranscribeContentIdentificationType")
    TranscribeContentRedactionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.chimesdkmeetings#TranscribeContentRedactionType", name: "TranscribeContentRedactionType")
    TranscribeLanguageCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.chimesdkmeetings#TranscribeLanguageCode", name: "TranscribeLanguageCode")
    TranscribeLanguageModelName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.chimesdkmeetings#TranscribeLanguageModelName", name: "TranscribeLanguageModelName", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#pattern" => "^[0-9a-zA-Z._-]+$"})
    TranscribeLanguageOptions = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.chimesdkmeetings#TranscribeLanguageOptions", name: "TranscribeLanguageOptions", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#pattern" => "^[a-zA-Z-,]+$"})
    TranscribeMedicalContentIdentificationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.chimesdkmeetings#TranscribeMedicalContentIdentificationType", name: "TranscribeMedicalContentIdentificationType")
    TranscribeMedicalLanguageCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.chimesdkmeetings#TranscribeMedicalLanguageCode", name: "TranscribeMedicalLanguageCode")
    TranscribeMedicalRegion = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.chimesdkmeetings#TranscribeMedicalRegion", name: "TranscribeMedicalRegion")
    TranscribeMedicalSpecialty = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.chimesdkmeetings#TranscribeMedicalSpecialty", name: "TranscribeMedicalSpecialty")
    TranscribeMedicalType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.chimesdkmeetings#TranscribeMedicalType", name: "TranscribeMedicalType")
    TranscribePartialResultsStability = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.chimesdkmeetings#TranscribePartialResultsStability", name: "TranscribePartialResultsStability")
    TranscribePiiEntityTypes = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.chimesdkmeetings#TranscribePiiEntityTypes", name: "TranscribePiiEntityTypes", traits: {"smithy.api#length" => {"min" => 1, "max" => 300}, "smithy.api#pattern" => "^[A-Z_, ]+$"})
    TranscribeRegion = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.chimesdkmeetings#TranscribeRegion", name: "TranscribeRegion")
    TranscribeVocabularyFilterMethod = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.chimesdkmeetings#TranscribeVocabularyFilterMethod", name: "TranscribeVocabularyFilterMethod")
    TranscribeVocabularyNamesOrFilterNamesString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.chimesdkmeetings#TranscribeVocabularyNamesOrFilterNamesString", name: "TranscribeVocabularyNamesOrFilterNamesString", traits: {"smithy.api#length" => {"min" => 1, "max" => 3000}, "smithy.api#pattern" => "^[a-zA-Z0-9,-._]+$"})
    TranscriptionConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmeetings#TranscriptionConfiguration", name: "TranscriptionConfiguration")
    UnauthorizedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmeetings#UnauthorizedException", name: "UnauthorizedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 401})
    UnprocessableEntityException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmeetings#UnprocessableEntityException", name: "UnprocessableEntityException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 422})
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmeetings#UntagResourceRequest", name: "UntagResourceRequest")
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmeetings#UntagResourceResponse", name: "UntagResourceResponse")
    UpdateAttendeeCapabilitiesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmeetings#UpdateAttendeeCapabilitiesRequest", name: "UpdateAttendeeCapabilitiesRequest")
    UpdateAttendeeCapabilitiesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmeetings#UpdateAttendeeCapabilitiesResponse", name: "UpdateAttendeeCapabilitiesResponse")
    VideoFeatures = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.chimesdkmeetings#VideoFeatures", name: "VideoFeatures")
    VideoResolution = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.chimesdkmeetings#VideoResolution", name: "VideoResolution")

    Attendee.add_member(:external_user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalUserId, name: "ExternalUserId"))
    Attendee.add_member(:attendee_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GuidString, name: "AttendeeId"))
    Attendee.add_member(:join_token, ::Smithy::Schema::Shapes::MemberShape.new(target: JoinTokenString, name: "JoinToken"))
    Attendee.add_member(:capabilities, ::Smithy::Schema::Shapes::MemberShape.new(target: AttendeeCapabilities, name: "Capabilities"))
    Attendee.type = Types::Attendee
    AttendeeCapabilities.add_member(:audio, ::Smithy::Schema::Shapes::MemberShape.new(target: MediaCapabilities, name: "Audio", traits: {"smithy.api#required" => {}}))
    AttendeeCapabilities.add_member(:video, ::Smithy::Schema::Shapes::MemberShape.new(target: MediaCapabilities, name: "Video", traits: {"smithy.api#required" => {}}))
    AttendeeCapabilities.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: MediaCapabilities, name: "Content", traits: {"smithy.api#required" => {}}))
    AttendeeCapabilities.type = Types::AttendeeCapabilities
    AttendeeFeatures.add_member(:max_count, ::Smithy::Schema::Shapes::MemberShape.new(target: AttendeeMax, name: "MaxCount"))
    AttendeeFeatures.type = Types::AttendeeFeatures
    AttendeeIdItem.add_member(:attendee_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GuidString, name: "AttendeeId", traits: {"smithy.api#required" => {}}))
    AttendeeIdItem.type = Types::AttendeeIdItem
    AttendeeIdsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AttendeeIdItem, name: "member"))
    AttendeeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Attendee, name: "member"))
    AudioFeatures.add_member(:echo_reduction, ::Smithy::Schema::Shapes::MemberShape.new(target: MeetingFeatureStatus, name: "EchoReduction"))
    AudioFeatures.type = Types::AudioFeatures
    BadRequestException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Code"))
    BadRequestException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    BadRequestException.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RequestId"))
    BadRequestException.type = Types::BadRequestException
    BatchCreateAttendeeErrorList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CreateAttendeeError, name: "member"))
    BatchCreateAttendeeRequest.add_member(:meeting_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GuidString, name: "MeetingId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    BatchCreateAttendeeRequest.add_member(:attendees, ::Smithy::Schema::Shapes::MemberShape.new(target: CreateAttendeeRequestItemList, name: "Attendees", traits: {"smithy.api#required" => {}}))
    BatchCreateAttendeeRequest.type = Types::BatchCreateAttendeeRequest
    BatchCreateAttendeeResponse.add_member(:attendees, ::Smithy::Schema::Shapes::MemberShape.new(target: AttendeeList, name: "Attendees"))
    BatchCreateAttendeeResponse.add_member(:errors, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchCreateAttendeeErrorList, name: "Errors"))
    BatchCreateAttendeeResponse.type = Types::BatchCreateAttendeeResponse
    BatchUpdateAttendeeCapabilitiesExceptRequest.add_member(:meeting_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GuidString, name: "MeetingId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    BatchUpdateAttendeeCapabilitiesExceptRequest.add_member(:excluded_attendee_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: AttendeeIdsList, name: "ExcludedAttendeeIds", traits: {"smithy.api#required" => {}}))
    BatchUpdateAttendeeCapabilitiesExceptRequest.add_member(:capabilities, ::Smithy::Schema::Shapes::MemberShape.new(target: AttendeeCapabilities, name: "Capabilities", traits: {"smithy.api#required" => {}}))
    BatchUpdateAttendeeCapabilitiesExceptRequest.type = Types::BatchUpdateAttendeeCapabilitiesExceptRequest
    ConflictException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Code"))
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    ConflictException.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RequestId"))
    ConflictException.type = Types::ConflictException
    ContentFeatures.add_member(:max_resolution, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentResolution, name: "MaxResolution"))
    ContentFeatures.type = Types::ContentFeatures
    ContentResolution.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "None"}))
    ContentResolution.add_member(:fhd, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FHD", traits: {"smithy.api#enumValue" => "FHD"}))
    ContentResolution.add_member(:uhd, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UHD", traits: {"smithy.api#enumValue" => "UHD"}))
    CreateAttendeeError.add_member(:external_user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalUserId, name: "ExternalUserId"))
    CreateAttendeeError.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ErrorCode"))
    CreateAttendeeError.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ErrorMessage"))
    CreateAttendeeError.type = Types::CreateAttendeeError
    CreateAttendeeRequest.add_member(:meeting_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GuidString, name: "MeetingId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateAttendeeRequest.add_member(:external_user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalUserId, name: "ExternalUserId", traits: {"smithy.api#required" => {}}))
    CreateAttendeeRequest.add_member(:capabilities, ::Smithy::Schema::Shapes::MemberShape.new(target: AttendeeCapabilities, name: "Capabilities"))
    CreateAttendeeRequest.type = Types::CreateAttendeeRequest
    CreateAttendeeRequestItem.add_member(:external_user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalUserId, name: "ExternalUserId", traits: {"smithy.api#required" => {}}))
    CreateAttendeeRequestItem.add_member(:capabilities, ::Smithy::Schema::Shapes::MemberShape.new(target: AttendeeCapabilities, name: "Capabilities"))
    CreateAttendeeRequestItem.type = Types::CreateAttendeeRequestItem
    CreateAttendeeRequestItemList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CreateAttendeeRequestItem, name: "member"))
    CreateAttendeeResponse.add_member(:attendee, ::Smithy::Schema::Shapes::MemberShape.new(target: Attendee, name: "Attendee"))
    CreateAttendeeResponse.type = Types::CreateAttendeeResponse
    CreateMeetingRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "ClientRequestToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateMeetingRequest.add_member(:media_region, ::Smithy::Schema::Shapes::MemberShape.new(target: MediaRegion, name: "MediaRegion", traits: {"smithy.api#required" => {}}))
    CreateMeetingRequest.add_member(:meeting_host_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalUserId, name: "MeetingHostId"))
    CreateMeetingRequest.add_member(:external_meeting_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalMeetingId, name: "ExternalMeetingId", traits: {"smithy.api#required" => {}}))
    CreateMeetingRequest.add_member(:notifications_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationsConfiguration, name: "NotificationsConfiguration"))
    CreateMeetingRequest.add_member(:meeting_features, ::Smithy::Schema::Shapes::MemberShape.new(target: MeetingFeaturesConfiguration, name: "MeetingFeatures"))
    CreateMeetingRequest.add_member(:primary_meeting_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PrimaryMeetingId, name: "PrimaryMeetingId"))
    CreateMeetingRequest.add_member(:tenant_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: TenantIdList, name: "TenantIds"))
    CreateMeetingRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateMeetingRequest.add_member(:media_placement_network_type, ::Smithy::Schema::Shapes::MemberShape.new(target: MediaPlacementNetworkType, name: "MediaPlacementNetworkType"))
    CreateMeetingRequest.type = Types::CreateMeetingRequest
    CreateMeetingResponse.add_member(:meeting, ::Smithy::Schema::Shapes::MemberShape.new(target: Meeting, name: "Meeting"))
    CreateMeetingResponse.type = Types::CreateMeetingResponse
    CreateMeetingWithAttendeesRequest.add_member(:client_request_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "ClientRequestToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateMeetingWithAttendeesRequest.add_member(:media_region, ::Smithy::Schema::Shapes::MemberShape.new(target: MediaRegion, name: "MediaRegion", traits: {"smithy.api#required" => {}}))
    CreateMeetingWithAttendeesRequest.add_member(:meeting_host_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalUserId, name: "MeetingHostId"))
    CreateMeetingWithAttendeesRequest.add_member(:external_meeting_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalMeetingId, name: "ExternalMeetingId", traits: {"smithy.api#required" => {}}))
    CreateMeetingWithAttendeesRequest.add_member(:meeting_features, ::Smithy::Schema::Shapes::MemberShape.new(target: MeetingFeaturesConfiguration, name: "MeetingFeatures"))
    CreateMeetingWithAttendeesRequest.add_member(:notifications_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationsConfiguration, name: "NotificationsConfiguration"))
    CreateMeetingWithAttendeesRequest.add_member(:attendees, ::Smithy::Schema::Shapes::MemberShape.new(target: CreateMeetingWithAttendeesRequestItemList, name: "Attendees", traits: {"smithy.api#required" => {}}))
    CreateMeetingWithAttendeesRequest.add_member(:primary_meeting_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PrimaryMeetingId, name: "PrimaryMeetingId"))
    CreateMeetingWithAttendeesRequest.add_member(:tenant_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: TenantIdList, name: "TenantIds"))
    CreateMeetingWithAttendeesRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateMeetingWithAttendeesRequest.add_member(:media_placement_network_type, ::Smithy::Schema::Shapes::MemberShape.new(target: MediaPlacementNetworkType, name: "MediaPlacementNetworkType"))
    CreateMeetingWithAttendeesRequest.type = Types::CreateMeetingWithAttendeesRequest
    CreateMeetingWithAttendeesRequestItemList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CreateAttendeeRequestItem, name: "member"))
    CreateMeetingWithAttendeesResponse.add_member(:meeting, ::Smithy::Schema::Shapes::MemberShape.new(target: Meeting, name: "Meeting"))
    CreateMeetingWithAttendeesResponse.add_member(:attendees, ::Smithy::Schema::Shapes::MemberShape.new(target: AttendeeList, name: "Attendees"))
    CreateMeetingWithAttendeesResponse.add_member(:errors, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchCreateAttendeeErrorList, name: "Errors"))
    CreateMeetingWithAttendeesResponse.type = Types::CreateMeetingWithAttendeesResponse
    DeleteAttendeeRequest.add_member(:meeting_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GuidString, name: "MeetingId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAttendeeRequest.add_member(:attendee_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GuidString, name: "AttendeeId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAttendeeRequest.type = Types::DeleteAttendeeRequest
    DeleteMeetingRequest.add_member(:meeting_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GuidString, name: "MeetingId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteMeetingRequest.type = Types::DeleteMeetingRequest
    EngineTranscribeMedicalSettings.add_member(:language_code, ::Smithy::Schema::Shapes::MemberShape.new(target: TranscribeMedicalLanguageCode, name: "LanguageCode", traits: {"smithy.api#required" => {}}))
    EngineTranscribeMedicalSettings.add_member(:specialty, ::Smithy::Schema::Shapes::MemberShape.new(target: TranscribeMedicalSpecialty, name: "Specialty", traits: {"smithy.api#required" => {}}))
    EngineTranscribeMedicalSettings.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: TranscribeMedicalType, name: "Type", traits: {"smithy.api#required" => {}}))
    EngineTranscribeMedicalSettings.add_member(:vocabulary_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "VocabularyName"))
    EngineTranscribeMedicalSettings.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: TranscribeMedicalRegion, name: "Region"))
    EngineTranscribeMedicalSettings.add_member(:content_identification_type, ::Smithy::Schema::Shapes::MemberShape.new(target: TranscribeMedicalContentIdentificationType, name: "ContentIdentificationType"))
    EngineTranscribeMedicalSettings.type = Types::EngineTranscribeMedicalSettings
    EngineTranscribeSettings.add_member(:language_code, ::Smithy::Schema::Shapes::MemberShape.new(target: TranscribeLanguageCode, name: "LanguageCode"))
    EngineTranscribeSettings.add_member(:vocabulary_filter_method, ::Smithy::Schema::Shapes::MemberShape.new(target: TranscribeVocabularyFilterMethod, name: "VocabularyFilterMethod"))
    EngineTranscribeSettings.add_member(:vocabulary_filter_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "VocabularyFilterName"))
    EngineTranscribeSettings.add_member(:vocabulary_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "VocabularyName"))
    EngineTranscribeSettings.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: TranscribeRegion, name: "Region"))
    EngineTranscribeSettings.add_member(:enable_partial_results_stabilization, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "EnablePartialResultsStabilization", traits: {"smithy.api#default" => false}))
    EngineTranscribeSettings.add_member(:partial_results_stability, ::Smithy::Schema::Shapes::MemberShape.new(target: TranscribePartialResultsStability, name: "PartialResultsStability"))
    EngineTranscribeSettings.add_member(:content_identification_type, ::Smithy::Schema::Shapes::MemberShape.new(target: TranscribeContentIdentificationType, name: "ContentIdentificationType"))
    EngineTranscribeSettings.add_member(:content_redaction_type, ::Smithy::Schema::Shapes::MemberShape.new(target: TranscribeContentRedactionType, name: "ContentRedactionType"))
    EngineTranscribeSettings.add_member(:pii_entity_types, ::Smithy::Schema::Shapes::MemberShape.new(target: TranscribePiiEntityTypes, name: "PiiEntityTypes"))
    EngineTranscribeSettings.add_member(:language_model_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TranscribeLanguageModelName, name: "LanguageModelName"))
    EngineTranscribeSettings.add_member(:identify_language, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "IdentifyLanguage", traits: {"smithy.api#default" => false}))
    EngineTranscribeSettings.add_member(:language_options, ::Smithy::Schema::Shapes::MemberShape.new(target: TranscribeLanguageOptions, name: "LanguageOptions"))
    EngineTranscribeSettings.add_member(:preferred_language, ::Smithy::Schema::Shapes::MemberShape.new(target: TranscribeLanguageCode, name: "PreferredLanguage"))
    EngineTranscribeSettings.add_member(:vocabulary_names, ::Smithy::Schema::Shapes::MemberShape.new(target: TranscribeVocabularyNamesOrFilterNamesString, name: "VocabularyNames"))
    EngineTranscribeSettings.add_member(:vocabulary_filter_names, ::Smithy::Schema::Shapes::MemberShape.new(target: TranscribeVocabularyNamesOrFilterNamesString, name: "VocabularyFilterNames"))
    EngineTranscribeSettings.type = Types::EngineTranscribeSettings
    ForbiddenException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Code"))
    ForbiddenException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    ForbiddenException.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RequestId"))
    ForbiddenException.type = Types::ForbiddenException
    GetAttendeeRequest.add_member(:meeting_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GuidString, name: "MeetingId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAttendeeRequest.add_member(:attendee_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GuidString, name: "AttendeeId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAttendeeRequest.type = Types::GetAttendeeRequest
    GetAttendeeResponse.add_member(:attendee, ::Smithy::Schema::Shapes::MemberShape.new(target: Attendee, name: "Attendee"))
    GetAttendeeResponse.type = Types::GetAttendeeResponse
    GetMeetingRequest.add_member(:meeting_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GuidString, name: "MeetingId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetMeetingRequest.type = Types::GetMeetingRequest
    GetMeetingResponse.add_member(:meeting, ::Smithy::Schema::Shapes::MemberShape.new(target: Meeting, name: "Meeting"))
    GetMeetingResponse.type = Types::GetMeetingResponse
    LimitExceededException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Code"))
    LimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    LimitExceededException.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RequestId"))
    LimitExceededException.type = Types::LimitExceededException
    ListAttendeesRequest.add_member(:meeting_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GuidString, name: "MeetingId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListAttendeesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "next-token"}))
    ListAttendeesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ResultMax, name: "MaxResults", traits: {"smithy.api#httpQuery" => "max-results"}))
    ListAttendeesRequest.type = Types::ListAttendeesRequest
    ListAttendeesResponse.add_member(:attendees, ::Smithy::Schema::Shapes::MemberShape.new(target: AttendeeList, name: "Attendees"))
    ListAttendeesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListAttendeesResponse.type = Types::ListAttendeesResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "ResourceARN", traits: {"smithy.api#httpQuery" => "arn", "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    MediaCapabilities.add_member(:send_receive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SEND_RECEIVE", traits: {"smithy.api#enumValue" => "SendReceive"}))
    MediaCapabilities.add_member(:send, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SEND", traits: {"smithy.api#enumValue" => "Send"}))
    MediaCapabilities.add_member(:receive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RECEIVE", traits: {"smithy.api#enumValue" => "Receive"}))
    MediaCapabilities.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "None"}))
    MediaPlacement.add_member(:audio_host_url, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AudioHostUrl"))
    MediaPlacement.add_member(:audio_fallback_url, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AudioFallbackUrl"))
    MediaPlacement.add_member(:signaling_url, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SignalingUrl"))
    MediaPlacement.add_member(:turn_control_url, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "TurnControlUrl"))
    MediaPlacement.add_member(:screen_data_url, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ScreenDataUrl"))
    MediaPlacement.add_member(:screen_viewing_url, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ScreenViewingUrl"))
    MediaPlacement.add_member(:screen_sharing_url, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ScreenSharingUrl"))
    MediaPlacement.add_member(:event_ingestion_url, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EventIngestionUrl"))
    MediaPlacement.type = Types::MediaPlacement
    MediaPlacementNetworkType.add_member(:ipv4_only, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IPV4_ONLY", traits: {"smithy.api#enumValue" => "Ipv4Only"}))
    MediaPlacementNetworkType.add_member(:dual_stack, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DUAL_STACK", traits: {"smithy.api#enumValue" => "DualStack"}))
    Meeting.add_member(:meeting_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GuidString, name: "MeetingId"))
    Meeting.add_member(:meeting_host_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalUserId, name: "MeetingHostId"))
    Meeting.add_member(:external_meeting_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalMeetingId, name: "ExternalMeetingId"))
    Meeting.add_member(:media_region, ::Smithy::Schema::Shapes::MemberShape.new(target: MediaRegion, name: "MediaRegion"))
    Meeting.add_member(:media_placement, ::Smithy::Schema::Shapes::MemberShape.new(target: MediaPlacement, name: "MediaPlacement"))
    Meeting.add_member(:meeting_features, ::Smithy::Schema::Shapes::MemberShape.new(target: MeetingFeaturesConfiguration, name: "MeetingFeatures"))
    Meeting.add_member(:primary_meeting_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PrimaryMeetingId, name: "PrimaryMeetingId"))
    Meeting.add_member(:tenant_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: TenantIdList, name: "TenantIds"))
    Meeting.add_member(:meeting_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "MeetingArn"))
    Meeting.type = Types::Meeting
    MeetingFeatureStatus.add_member(:available, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AVAILABLE", traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    MeetingFeatureStatus.add_member(:unavailable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNAVAILABLE", traits: {"smithy.api#enumValue" => "UNAVAILABLE"}))
    MeetingFeaturesConfiguration.add_member(:audio, ::Smithy::Schema::Shapes::MemberShape.new(target: AudioFeatures, name: "Audio"))
    MeetingFeaturesConfiguration.add_member(:video, ::Smithy::Schema::Shapes::MemberShape.new(target: VideoFeatures, name: "Video"))
    MeetingFeaturesConfiguration.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentFeatures, name: "Content"))
    MeetingFeaturesConfiguration.add_member(:attendee, ::Smithy::Schema::Shapes::MemberShape.new(target: AttendeeFeatures, name: "Attendee"))
    MeetingFeaturesConfiguration.type = Types::MeetingFeaturesConfiguration
    NotFoundException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Code"))
    NotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    NotFoundException.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RequestId"))
    NotFoundException.type = Types::NotFoundException
    NotificationsConfiguration.add_member(:lambda_function_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "LambdaFunctionArn"))
    NotificationsConfiguration.add_member(:sns_topic_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "SnsTopicArn"))
    NotificationsConfiguration.add_member(:sqs_queue_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "SqsQueueArn"))
    NotificationsConfiguration.type = Types::NotificationsConfiguration
    ResourceNotFoundException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Code"))
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    ResourceNotFoundException.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RequestId"))
    ResourceNotFoundException.add_member(:resource_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "ResourceName"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ServiceFailureException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Code"))
    ServiceFailureException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    ServiceFailureException.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RequestId"))
    ServiceFailureException.type = Types::ServiceFailureException
    ServiceUnavailableException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Code"))
    ServiceUnavailableException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    ServiceUnavailableException.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RequestId"))
    ServiceUnavailableException.add_member(:retry_after_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: RetryAfterSeconds, name: "RetryAfterSeconds", traits: {"smithy.api#httpHeader" => "Retry-After"}))
    ServiceUnavailableException.type = Types::ServiceUnavailableException
    StartMeetingTranscriptionRequest.add_member(:meeting_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GuidString, name: "MeetingId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartMeetingTranscriptionRequest.add_member(:transcription_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: TranscriptionConfiguration, name: "TranscriptionConfiguration", traits: {"smithy.api#required" => {}}))
    StartMeetingTranscriptionRequest.type = Types::StartMeetingTranscriptionRequest
    StopMeetingTranscriptionRequest.add_member(:meeting_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GuidString, name: "MeetingId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StopMeetingTranscriptionRequest.type = Types::StopMeetingTranscriptionRequest
    Tag.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "Key", traits: {"smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "Value", traits: {"smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeyList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member"))
    TagList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Tag, name: "member"))
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "ResourceARN", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    TenantIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TenantId, name: "member"))
    ThrottlingException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Code"))
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    ThrottlingException.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RequestId"))
    ThrottlingException.type = Types::ThrottlingException
    TooManyTagsException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Code"))
    TooManyTagsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    TooManyTagsException.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RequestId"))
    TooManyTagsException.add_member(:resource_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "ResourceName"))
    TooManyTagsException.type = Types::TooManyTagsException
    TranscribeContentIdentificationType.add_member(:pii, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PII", traits: {"smithy.api#enumValue" => "PII"}))
    TranscribeContentRedactionType.add_member(:pii, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PII", traits: {"smithy.api#enumValue" => "PII"}))
    TranscribeLanguageCode.add_member(:en_us, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EN_US", traits: {"smithy.api#enumValue" => "en-US"}))
    TranscribeLanguageCode.add_member(:en_gb, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EN_GB", traits: {"smithy.api#enumValue" => "en-GB"}))
    TranscribeLanguageCode.add_member(:es_us, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ES_US", traits: {"smithy.api#enumValue" => "es-US"}))
    TranscribeLanguageCode.add_member(:fr_ca, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FR_CA", traits: {"smithy.api#enumValue" => "fr-CA"}))
    TranscribeLanguageCode.add_member(:fr_fr, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FR_FR", traits: {"smithy.api#enumValue" => "fr-FR"}))
    TranscribeLanguageCode.add_member(:en_au, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EN_AU", traits: {"smithy.api#enumValue" => "en-AU"}))
    TranscribeLanguageCode.add_member(:it_it, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IT_IT", traits: {"smithy.api#enumValue" => "it-IT"}))
    TranscribeLanguageCode.add_member(:de_de, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DE_DE", traits: {"smithy.api#enumValue" => "de-DE"}))
    TranscribeLanguageCode.add_member(:pt_br, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PT_BR", traits: {"smithy.api#enumValue" => "pt-BR"}))
    TranscribeLanguageCode.add_member(:ja_jp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "JA_JP", traits: {"smithy.api#enumValue" => "ja-JP"}))
    TranscribeLanguageCode.add_member(:ko_kr, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KO_KR", traits: {"smithy.api#enumValue" => "ko-KR"}))
    TranscribeLanguageCode.add_member(:zh_cn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ZH_CN", traits: {"smithy.api#enumValue" => "zh-CN"}))
    TranscribeLanguageCode.add_member(:th_th, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TH_TH", traits: {"smithy.api#enumValue" => "th-TH"}))
    TranscribeLanguageCode.add_member(:hi_in, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HI_IN", traits: {"smithy.api#enumValue" => "hi-IN"}))
    TranscribeMedicalContentIdentificationType.add_member(:phi, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PHI", traits: {"smithy.api#enumValue" => "PHI"}))
    TranscribeMedicalLanguageCode.add_member(:en_us, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EN_US", traits: {"smithy.api#enumValue" => "en-US"}))
    TranscribeMedicalRegion.add_member(:us_east_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "US_EAST_1", traits: {"smithy.api#enumValue" => "us-east-1"}))
    TranscribeMedicalRegion.add_member(:us_east_2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "US_EAST_2", traits: {"smithy.api#enumValue" => "us-east-2"}))
    TranscribeMedicalRegion.add_member(:us_west_2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "US_WEST_2", traits: {"smithy.api#enumValue" => "us-west-2"}))
    TranscribeMedicalRegion.add_member(:ap_southeast_2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AP_SOUTHEAST_2", traits: {"smithy.api#enumValue" => "ap-southeast-2"}))
    TranscribeMedicalRegion.add_member(:ca_central_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CA_CENTRAL_1", traits: {"smithy.api#enumValue" => "ca-central-1"}))
    TranscribeMedicalRegion.add_member(:eu_west_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EU_WEST_1", traits: {"smithy.api#enumValue" => "eu-west-1"}))
    TranscribeMedicalRegion.add_member(:auto, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AUTO", traits: {"smithy.api#enumValue" => "auto"}))
    TranscribeMedicalSpecialty.add_member(:primarycare, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRIMARYCARE", traits: {"smithy.api#enumValue" => "PRIMARYCARE"}))
    TranscribeMedicalSpecialty.add_member(:cardiology, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CARDIOLOGY", traits: {"smithy.api#enumValue" => "CARDIOLOGY"}))
    TranscribeMedicalSpecialty.add_member(:neurology, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NEUROLOGY", traits: {"smithy.api#enumValue" => "NEUROLOGY"}))
    TranscribeMedicalSpecialty.add_member(:oncology, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ONCOLOGY", traits: {"smithy.api#enumValue" => "ONCOLOGY"}))
    TranscribeMedicalSpecialty.add_member(:radiology, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RADIOLOGY", traits: {"smithy.api#enumValue" => "RADIOLOGY"}))
    TranscribeMedicalSpecialty.add_member(:urology, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UROLOGY", traits: {"smithy.api#enumValue" => "UROLOGY"}))
    TranscribeMedicalType.add_member(:conversation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONVERSATION", traits: {"smithy.api#enumValue" => "CONVERSATION"}))
    TranscribeMedicalType.add_member(:dictation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DICTATION", traits: {"smithy.api#enumValue" => "DICTATION"}))
    TranscribePartialResultsStability.add_member(:low, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LOW", traits: {"smithy.api#enumValue" => "low"}))
    TranscribePartialResultsStability.add_member(:medium, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MEDIUM", traits: {"smithy.api#enumValue" => "medium"}))
    TranscribePartialResultsStability.add_member(:high, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HIGH", traits: {"smithy.api#enumValue" => "high"}))
    TranscribeRegion.add_member(:us_east_2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "US_EAST_2", traits: {"smithy.api#enumValue" => "us-east-2"}))
    TranscribeRegion.add_member(:us_east_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "US_EAST_1", traits: {"smithy.api#enumValue" => "us-east-1"}))
    TranscribeRegion.add_member(:us_west_2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "US_WEST_2", traits: {"smithy.api#enumValue" => "us-west-2"}))
    TranscribeRegion.add_member(:ap_northeast_2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AP_NORTHEAST_2", traits: {"smithy.api#enumValue" => "ap-northeast-2"}))
    TranscribeRegion.add_member(:ap_southeast_2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AP_SOUTHEAST_2", traits: {"smithy.api#enumValue" => "ap-southeast-2"}))
    TranscribeRegion.add_member(:ap_northeast_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AP_NORTHEAST_1", traits: {"smithy.api#enumValue" => "ap-northeast-1"}))
    TranscribeRegion.add_member(:ca_central_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CA_CENTRAL_1", traits: {"smithy.api#enumValue" => "ca-central-1"}))
    TranscribeRegion.add_member(:eu_central_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EU_CENTRAL_1", traits: {"smithy.api#enumValue" => "eu-central-1"}))
    TranscribeRegion.add_member(:eu_west_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EU_WEST_1", traits: {"smithy.api#enumValue" => "eu-west-1"}))
    TranscribeRegion.add_member(:eu_west_2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EU_WEST_2", traits: {"smithy.api#enumValue" => "eu-west-2"}))
    TranscribeRegion.add_member(:sa_east_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SA_EAST_1", traits: {"smithy.api#enumValue" => "sa-east-1"}))
    TranscribeRegion.add_member(:auto, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AUTO", traits: {"smithy.api#enumValue" => "auto"}))
    TranscribeRegion.add_member(:us_gov_west_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "US_GOV_WEST_1", traits: {"smithy.api#enumValue" => "us-gov-west-1"}))
    TranscribeVocabularyFilterMethod.add_member(:remove, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REMOVE", traits: {"smithy.api#enumValue" => "remove"}))
    TranscribeVocabularyFilterMethod.add_member(:mask, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MASK", traits: {"smithy.api#enumValue" => "mask"}))
    TranscribeVocabularyFilterMethod.add_member(:tag, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TAG", traits: {"smithy.api#enumValue" => "tag"}))
    TranscriptionConfiguration.add_member(:engine_transcribe_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: EngineTranscribeSettings, name: "EngineTranscribeSettings"))
    TranscriptionConfiguration.add_member(:engine_transcribe_medical_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: EngineTranscribeMedicalSettings, name: "EngineTranscribeMedicalSettings"))
    TranscriptionConfiguration.type = Types::TranscriptionConfiguration
    UnauthorizedException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Code"))
    UnauthorizedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    UnauthorizedException.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RequestId"))
    UnauthorizedException.type = Types::UnauthorizedException
    UnprocessableEntityException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Code"))
    UnprocessableEntityException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    UnprocessableEntityException.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RequestId"))
    UnprocessableEntityException.type = Types::UnprocessableEntityException
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "ResourceARN", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "TagKeys", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateAttendeeCapabilitiesRequest.add_member(:meeting_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GuidString, name: "MeetingId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAttendeeCapabilitiesRequest.add_member(:attendee_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GuidString, name: "AttendeeId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAttendeeCapabilitiesRequest.add_member(:capabilities, ::Smithy::Schema::Shapes::MemberShape.new(target: AttendeeCapabilities, name: "Capabilities", traits: {"smithy.api#required" => {}}))
    UpdateAttendeeCapabilitiesRequest.type = Types::UpdateAttendeeCapabilitiesRequest
    UpdateAttendeeCapabilitiesResponse.add_member(:attendee, ::Smithy::Schema::Shapes::MemberShape.new(target: Attendee, name: "Attendee"))
    UpdateAttendeeCapabilitiesResponse.type = Types::UpdateAttendeeCapabilitiesResponse
    VideoFeatures.add_member(:max_resolution, ::Smithy::Schema::Shapes::MemberShape.new(target: VideoResolution, name: "MaxResolution"))
    VideoFeatures.type = Types::VideoFeatures
    VideoResolution.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "None"}))
    VideoResolution.add_member(:hd, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HD", traits: {"smithy.api#enumValue" => "HD"}))
    VideoResolution.add_member(:fhd, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FHD", traits: {"smithy.api#enumValue" => "FHD"}))

    ChimeMeetingsSDKService = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.chimesdkmeetings#ChimeMeetingsSDKService"
      service.name = "ChimeMeetingsSDKService"
      service.version = "2021-07-15"
      service.traits = {"aws.api#service" => {"sdkId" => "Chime SDK Meetings", "arnNamespace" => "chime", "cloudFormationName" => "ChimeSDKMeetings", "cloudTrailEventSource" => "chimesdkmeetings.amazonaws.com", "endpointPrefix" => "meetings-chime"}, "aws.auth#sigv4" => {"name" => "chime"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "Amazon Chime SDK Meetings", "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}, "UseDualStack" => {"builtIn" => "AWS::UseDualStack", "required" => true, "default" => false, "documentation" => "When true, use the dual-stack endpoint. If the configured endpoint does not support dual-stack, dispatching the request MAY return an error.", "type" => "boolean"}, "UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.", "type" => "boolean"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "isSet", "argv" => [{"ref" => "Region"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseDualStack"}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsDualStack"]}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsFIPS"]}, true]}], "results" => [{"conditions" => [], "error" => "Invalid Configuration: FIPS and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "error" => "Invalid Configuration: Dualstack and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://meetings-chime-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS and DualStack are enabled, but this partition does not support one or both", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://meetings-chime-fips.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS is enabled but this partition does not support FIPS", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://meetings-chime.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "DualStack is enabled but this partition does not support DualStack", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://meetings-chime.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: Missing Region", "type" => "error"}], "root" => 2, "nodeCount" => 13, "nodes" => "/////wAAAAH/////AAAAAAAAAAwAAAADAAAAAQAAAAQF9eELAAAAAgAAAAUF9eELAAAAAwAAAAgAAAAGAAAABAAAAAcF9eEKAAAABQX14QgF9eEJAAAABAAAAAoAAAAJAAAABgX14QYF9eEHAAAABQAAAAsF9eEFAAAABgX14QQF9eEFAAAAAwX14QEAAAANAAAABAX14QIF9eED"}}
      service.add_operation(:batch_create_attendee, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmeetings#BatchCreateAttendee"
        operation.name = "BatchCreateAttendee"
        operation.input = BatchCreateAttendeeRequest
        operation.output = BatchCreateAttendeeResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << LimitExceededException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.errors << UnauthorizedException
        operation.errors << UnprocessableEntityException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/meetings/{MeetingId}/attendees?operation=batch-create", "code" => 200}}
      end)
      service.add_operation(:batch_update_attendee_capabilities_except, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmeetings#BatchUpdateAttendeeCapabilitiesExcept"
        operation.name = "BatchUpdateAttendeeCapabilitiesExcept"
        operation.input = BatchUpdateAttendeeCapabilitiesExceptRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/meetings/{MeetingId}/attendees/capabilities?operation=batch-update-except", "code" => 200}}
      end)
      service.add_operation(:create_attendee, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmeetings#CreateAttendee"
        operation.name = "CreateAttendee"
        operation.input = CreateAttendeeRequest
        operation.output = CreateAttendeeResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << LimitExceededException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.errors << UnauthorizedException
        operation.errors << UnprocessableEntityException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/meetings/{MeetingId}/attendees", "code" => 200}}
      end)
      service.add_operation(:create_meeting, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmeetings#CreateMeeting"
        operation.name = "CreateMeeting"
        operation.input = CreateMeetingRequest
        operation.output = CreateMeetingResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << LimitExceededException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/meetings", "code" => 200}}
      end)
      service.add_operation(:create_meeting_with_attendees, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmeetings#CreateMeetingWithAttendees"
        operation.name = "CreateMeetingWithAttendees"
        operation.input = CreateMeetingWithAttendeesRequest
        operation.output = CreateMeetingWithAttendeesResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << LimitExceededException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/meetings?operation=create-attendees", "code" => 200}}
      end)
      service.add_operation(:delete_attendee, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmeetings#DeleteAttendee"
        operation.name = "DeleteAttendee"
        operation.input = DeleteAttendeeRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/meetings/{MeetingId}/attendees/{AttendeeId}", "code" => 204}}
      end)
      service.add_operation(:delete_meeting, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmeetings#DeleteMeeting"
        operation.name = "DeleteMeeting"
        operation.input = DeleteMeetingRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/meetings/{MeetingId}", "code" => 204}}
      end)
      service.add_operation(:get_attendee, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmeetings#GetAttendee"
        operation.name = "GetAttendee"
        operation.input = GetAttendeeRequest
        operation.output = GetAttendeeResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/meetings/{MeetingId}/attendees/{AttendeeId}", "code" => 200}}
      end)
      service.add_operation(:get_meeting, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmeetings#GetMeeting"
        operation.name = "GetMeeting"
        operation.input = GetMeetingRequest
        operation.output = GetMeetingResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/meetings/{MeetingId}", "code" => 200}}
      end)
      service.add_operation(:list_attendees, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmeetings#ListAttendees"
        operation.name = "ListAttendees"
        operation.input = ListAttendeesRequest
        operation.output = ListAttendeesResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/meetings/{MeetingId}/attendees", "code" => 200}}
        operation[:paginator] = Paginators::ListAttendees.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmeetings#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags", "code" => 200}}
      end)
      service.add_operation(:start_meeting_transcription, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmeetings#StartMeetingTranscription"
        operation.name = "StartMeetingTranscription"
        operation.input = StartMeetingTranscriptionRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << LimitExceededException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.errors << UnauthorizedException
        operation.errors << UnprocessableEntityException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/meetings/{MeetingId}/transcription?operation=start", "code" => 200}}
      end)
      service.add_operation(:stop_meeting_transcription, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmeetings#StopMeetingTranscription"
        operation.name = "StopMeetingTranscription"
        operation.input = StopMeetingTranscriptionRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.errors << UnauthorizedException
        operation.errors << UnprocessableEntityException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/meetings/{MeetingId}/transcription?operation=stop", "code" => 200}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmeetings#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = TagResourceResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.errors << TooManyTagsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags?operation=tag-resource", "code" => 204}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmeetings#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = UntagResourceResponse
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags?operation=untag-resource", "code" => 204}}
      end)
      service.add_operation(:update_attendee_capabilities, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmeetings#UpdateAttendeeCapabilities"
        operation.name = "UpdateAttendeeCapabilities"
        operation.input = UpdateAttendeeCapabilitiesRequest
        operation.output = UpdateAttendeeCapabilitiesResponse
        operation.errors << BadRequestException
        operation.errors << ConflictException
        operation.errors << ForbiddenException
        operation.errors << NotFoundException
        operation.errors << ServiceFailureException
        operation.errors << ServiceUnavailableException
        operation.errors << ThrottlingException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/meetings/{MeetingId}/attendees/{AttendeeId}/capabilities", "code" => 200}}
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
