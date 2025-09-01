# frozen_string_literal: true

# This is generated code!

module Aws::ChimeSDKMeetings
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AmazonResourceName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chimesdkmeetings#AmazonResourceName', name: 'AmazonResourceName', traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}, "smithy.api#pattern" => "^arn:"})
    Arn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chimesdkmeetings#Arn', name: 'Arn', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^arn[\\/\\:\\-\\_\\.a-zA-Z0-9]+$", "smithy.api#sensitive" => {}})
    Attendee = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmeetings#Attendee', name: 'Attendee')
    AttendeeCapabilities = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmeetings#AttendeeCapabilities', name: 'AttendeeCapabilities')
    AttendeeFeatures = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmeetings#AttendeeFeatures', name: 'AttendeeFeatures')
    AttendeeIdItem = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmeetings#AttendeeIdItem', name: 'AttendeeIdItem')
    AttendeeIdsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.chimesdkmeetings#AttendeeIdsList', name: 'AttendeeIdsList', traits: {"smithy.api#length" => {"min" => 1, "max" => 250}})
    AttendeeList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.chimesdkmeetings#AttendeeList', name: 'AttendeeList')
    AttendeeMax = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.chimesdkmeetings#AttendeeMax', name: 'AttendeeMax', traits: {"smithy.api#range" => {"min" => 1, "max" => 250}})
    AudioFeatures = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmeetings#AudioFeatures', name: 'AudioFeatures')
    BadRequestException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmeetings#BadRequestException', name: 'BadRequestException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    BatchCreateAttendeeErrorList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.chimesdkmeetings#BatchCreateAttendeeErrorList', name: 'BatchCreateAttendeeErrorList')
    BatchCreateAttendeeRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmeetings#BatchCreateAttendeeRequest', name: 'BatchCreateAttendeeRequest')
    BatchCreateAttendeeResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmeetings#BatchCreateAttendeeResponse', name: 'BatchCreateAttendeeResponse')
    BatchUpdateAttendeeCapabilitiesExceptRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmeetings#BatchUpdateAttendeeCapabilitiesExceptRequest', name: 'BatchUpdateAttendeeCapabilitiesExceptRequest')
    Boolean = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.chimesdkmeetings#Boolean', name: 'Boolean', traits: {"smithy.api#default" => false})
    ClientRequestToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chimesdkmeetings#ClientRequestToken', name: 'ClientRequestToken', traits: {"smithy.api#length" => {"min" => 2, "max" => 64}, "smithy.api#pattern" => "^[-_a-zA-Z0-9]*$", "smithy.api#sensitive" => {}})
    ConflictException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmeetings#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ContentFeatures = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmeetings#ContentFeatures', name: 'ContentFeatures')
    ContentResolution = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.chimesdkmeetings#ContentResolution', name: 'ContentResolution')
    CreateAttendeeError = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmeetings#CreateAttendeeError', name: 'CreateAttendeeError')
    CreateAttendeeRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmeetings#CreateAttendeeRequest', name: 'CreateAttendeeRequest')
    CreateAttendeeRequestItem = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmeetings#CreateAttendeeRequestItem', name: 'CreateAttendeeRequestItem')
    CreateAttendeeRequestItemList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.chimesdkmeetings#CreateAttendeeRequestItemList', name: 'CreateAttendeeRequestItemList', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    CreateAttendeeResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmeetings#CreateAttendeeResponse', name: 'CreateAttendeeResponse')
    CreateMeetingRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmeetings#CreateMeetingRequest', name: 'CreateMeetingRequest')
    CreateMeetingResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmeetings#CreateMeetingResponse', name: 'CreateMeetingResponse')
    CreateMeetingWithAttendeesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmeetings#CreateMeetingWithAttendeesRequest', name: 'CreateMeetingWithAttendeesRequest')
    CreateMeetingWithAttendeesRequestItemList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.chimesdkmeetings#CreateMeetingWithAttendeesRequestItemList', name: 'CreateMeetingWithAttendeesRequestItemList', traits: {"smithy.api#length" => {"min" => 1, "max" => 20}})
    CreateMeetingWithAttendeesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmeetings#CreateMeetingWithAttendeesResponse', name: 'CreateMeetingWithAttendeesResponse')
    DeleteAttendeeRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmeetings#DeleteAttendeeRequest', name: 'DeleteAttendeeRequest')
    DeleteMeetingRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmeetings#DeleteMeetingRequest', name: 'DeleteMeetingRequest')
    EngineTranscribeMedicalSettings = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmeetings#EngineTranscribeMedicalSettings', name: 'EngineTranscribeMedicalSettings')
    EngineTranscribeSettings = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmeetings#EngineTranscribeSettings', name: 'EngineTranscribeSettings')
    ExternalMeetingId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chimesdkmeetings#ExternalMeetingId', name: 'ExternalMeetingId', traits: {"smithy.api#length" => {"min" => 2, "max" => 64}, "smithy.api#sensitive" => {}})
    ExternalUserId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chimesdkmeetings#ExternalUserId', name: 'ExternalUserId', traits: {"smithy.api#length" => {"min" => 2, "max" => 64}, "smithy.api#sensitive" => {}})
    ForbiddenException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmeetings#ForbiddenException', name: 'ForbiddenException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    GetAttendeeRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmeetings#GetAttendeeRequest', name: 'GetAttendeeRequest')
    GetAttendeeResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmeetings#GetAttendeeResponse', name: 'GetAttendeeResponse')
    GetMeetingRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmeetings#GetMeetingRequest', name: 'GetMeetingRequest')
    GetMeetingResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmeetings#GetMeetingResponse', name: 'GetMeetingResponse')
    GuidString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chimesdkmeetings#GuidString', name: 'GuidString', traits: {"smithy.api#pattern" => "^[a-fA-F0-9]{8}(?:-[a-fA-F0-9]{4}){3}-[a-fA-F0-9]{12}$"})
    JoinTokenString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chimesdkmeetings#JoinTokenString', name: 'JoinTokenString', traits: {"smithy.api#length" => {"min" => 2, "max" => 2048}, "smithy.api#sensitive" => {}})
    LimitExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmeetings#LimitExceededException', name: 'LimitExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ListAttendeesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmeetings#ListAttendeesRequest', name: 'ListAttendeesRequest')
    ListAttendeesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmeetings#ListAttendeesResponse', name: 'ListAttendeesResponse')
    ListTagsForResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmeetings#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmeetings#ListTagsForResourceResponse', name: 'ListTagsForResourceResponse')
    MediaCapabilities = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.chimesdkmeetings#MediaCapabilities', name: 'MediaCapabilities')
    MediaPlacement = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmeetings#MediaPlacement', name: 'MediaPlacement')
    MediaRegion = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chimesdkmeetings#MediaRegion', name: 'MediaRegion', traits: {"smithy.api#length" => {"min" => 2, "max" => 64}})
    Meeting = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmeetings#Meeting', name: 'Meeting')
    MeetingFeatureStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.chimesdkmeetings#MeetingFeatureStatus', name: 'MeetingFeatureStatus')
    MeetingFeaturesConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmeetings#MeetingFeaturesConfiguration', name: 'MeetingFeaturesConfiguration')
    NotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmeetings#NotFoundException', name: 'NotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    NotificationsConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmeetings#NotificationsConfiguration', name: 'NotificationsConfiguration')
    PrimaryMeetingId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chimesdkmeetings#PrimaryMeetingId', name: 'PrimaryMeetingId', traits: {"smithy.api#length" => {"min" => 2, "max" => 64}})
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmeetings#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResultMax = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.chimesdkmeetings#ResultMax', name: 'ResultMax', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    RetryAfterSeconds = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chimesdkmeetings#RetryAfterSeconds', name: 'RetryAfterSeconds')
    ServiceFailureException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmeetings#ServiceFailureException', name: 'ServiceFailureException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    ServiceUnavailableException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmeetings#ServiceUnavailableException', name: 'ServiceUnavailableException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 503})
    StartMeetingTranscriptionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmeetings#StartMeetingTranscriptionRequest', name: 'StartMeetingTranscriptionRequest')
    StopMeetingTranscriptionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmeetings#StopMeetingTranscriptionRequest', name: 'StopMeetingTranscriptionRequest')
    String = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chimesdkmeetings#String', name: 'String', traits: {"smithy.api#length" => {"min" => 0, "max" => 4096}})
    Tag = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmeetings#Tag', name: 'Tag')
    TagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chimesdkmeetings#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z+-=._:/]+$"})
    TagKeyList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.chimesdkmeetings#TagKeyList', name: 'TagKeyList', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    TagList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.chimesdkmeetings#TagList', name: 'TagList', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    TagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmeetings#TagResourceRequest', name: 'TagResourceRequest')
    TagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmeetings#TagResourceResponse', name: 'TagResourceResponse')
    TagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chimesdkmeetings#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[\\s\\w+-=\\.:/@]*$"})
    TenantId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chimesdkmeetings#TenantId', name: 'TenantId', traits: {"smithy.api#length" => {"min" => 2, "max" => 256}, "smithy.api#pattern" => "^(?!.*?(.)\\1{3})[-_!@\#$a-zA-Z0-9]*$"})
    TenantIdList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.chimesdkmeetings#TenantIdList', name: 'TenantIdList', traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    ThrottlingException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmeetings#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    TooManyTagsException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmeetings#TooManyTagsException', name: 'TooManyTagsException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    TranscribeContentIdentificationType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.chimesdkmeetings#TranscribeContentIdentificationType', name: 'TranscribeContentIdentificationType')
    TranscribeContentRedactionType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.chimesdkmeetings#TranscribeContentRedactionType', name: 'TranscribeContentRedactionType')
    TranscribeLanguageCode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.chimesdkmeetings#TranscribeLanguageCode', name: 'TranscribeLanguageCode')
    TranscribeLanguageModelName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chimesdkmeetings#TranscribeLanguageModelName', name: 'TranscribeLanguageModelName', traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#pattern" => "^[0-9a-zA-Z._-]+$"})
    TranscribeLanguageOptions = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chimesdkmeetings#TranscribeLanguageOptions', name: 'TranscribeLanguageOptions', traits: {"smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#pattern" => "^[a-zA-Z-,]+$"})
    TranscribeMedicalContentIdentificationType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.chimesdkmeetings#TranscribeMedicalContentIdentificationType', name: 'TranscribeMedicalContentIdentificationType')
    TranscribeMedicalLanguageCode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.chimesdkmeetings#TranscribeMedicalLanguageCode', name: 'TranscribeMedicalLanguageCode')
    TranscribeMedicalRegion = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.chimesdkmeetings#TranscribeMedicalRegion', name: 'TranscribeMedicalRegion')
    TranscribeMedicalSpecialty = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.chimesdkmeetings#TranscribeMedicalSpecialty', name: 'TranscribeMedicalSpecialty')
    TranscribeMedicalType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.chimesdkmeetings#TranscribeMedicalType', name: 'TranscribeMedicalType')
    TranscribePartialResultsStability = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.chimesdkmeetings#TranscribePartialResultsStability', name: 'TranscribePartialResultsStability')
    TranscribePiiEntityTypes = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chimesdkmeetings#TranscribePiiEntityTypes', name: 'TranscribePiiEntityTypes', traits: {"smithy.api#length" => {"min" => 1, "max" => 300}, "smithy.api#pattern" => "^[A-Z_, ]+$"})
    TranscribeRegion = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.chimesdkmeetings#TranscribeRegion', name: 'TranscribeRegion')
    TranscribeVocabularyFilterMethod = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.chimesdkmeetings#TranscribeVocabularyFilterMethod', name: 'TranscribeVocabularyFilterMethod')
    TranscribeVocabularyNamesOrFilterNamesString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.chimesdkmeetings#TranscribeVocabularyNamesOrFilterNamesString', name: 'TranscribeVocabularyNamesOrFilterNamesString', traits: {"smithy.api#length" => {"min" => 1, "max" => 3000}, "smithy.api#pattern" => "^[a-zA-Z0-9,-._]+$"})
    TranscriptionConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmeetings#TranscriptionConfiguration', name: 'TranscriptionConfiguration')
    UnauthorizedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmeetings#UnauthorizedException', name: 'UnauthorizedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 401})
    UnprocessableEntityException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmeetings#UnprocessableEntityException', name: 'UnprocessableEntityException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 422})
    UntagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmeetings#UntagResourceRequest', name: 'UntagResourceRequest')
    UntagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmeetings#UntagResourceResponse', name: 'UntagResourceResponse')
    UpdateAttendeeCapabilitiesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmeetings#UpdateAttendeeCapabilitiesRequest', name: 'UpdateAttendeeCapabilitiesRequest')
    UpdateAttendeeCapabilitiesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmeetings#UpdateAttendeeCapabilitiesResponse', name: 'UpdateAttendeeCapabilitiesResponse')
    VideoFeatures = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.chimesdkmeetings#VideoFeatures', name: 'VideoFeatures')
    VideoResolution = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.chimesdkmeetings#VideoResolution', name: 'VideoResolution')

    Attendee.add_member(:external_user_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalUserId, location_name: 'ExternalUserId', traits: {"smithy.api#documentation" => "<p>The Amazon Chime SDK external user ID. An idempotency token. Links the attendee to an identity managed by a builder application.</p>\n         <p>Pattern: <code>[-_&@+=,(){}\\[\\]\\/«».:|'\"#a-zA-Z0-9À-ÿ\\s]*</code>\n         </p>\n         <p>Values that begin with <code>aws:</code> are reserved. You can't configure a value that uses this prefix. \n            Case insensitive.</p>"}))
    Attendee.add_member(:attendee_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GuidString, location_name: 'AttendeeId', traits: {"smithy.api#documentation" => "<p>The Amazon Chime SDK attendee ID.</p>"}))
    Attendee.add_member(:join_token, Smithy::Schema::Shapes::ShapeRef.new(shape: JoinTokenString, location_name: 'JoinToken', traits: {"smithy.api#documentation" => "<p>The join token used by the Amazon Chime SDK attendee.</p>"}))
    Attendee.add_member(:capabilities, Smithy::Schema::Shapes::ShapeRef.new(shape: AttendeeCapabilities, location_name: 'Capabilities', traits: {"smithy.api#documentation" => "<p>The capabilities assigned to an attendee: audio, video, or content.</p>\n         <note>\n            <p>You use the capabilities with a set of values that control what the capabilities can do, such as <code>SendReceive</code> data. For more information about those values, see \n            .</p>\n         </note>\n         <p>When using capabilities, be aware of these corner cases:</p>\n         <ul>\n            <li>\n               <p>If you specify <code>MeetingFeatures:Video:MaxResolution:None</code> when you create a meeting, all API requests \n                    that include <code>SendReceive</code>, <code>Send</code>, or <code>Receive</code> for <code>AttendeeCapabilities:Video</code> will be rejected with <code>ValidationError 400</code>.</p>\n            </li>\n            <li>\n               <p>If you specify <code>MeetingFeatures:Content:MaxResolution:None</code> when you create a meeting, all API requests that include <code>SendReceive</code>, <code>Send</code>, or \n                    <code>Receive</code> for <code>AttendeeCapabilities:Content</code> will be rejected with <code>ValidationError 400</code>.</p>\n            </li>\n            <li>\n               <p>You can't set <code>content</code> capabilities to <code>SendReceive</code> or <code>Receive</code> unless you also set <code>video</code> capabilities to <code>SendReceive</code> \n                    or <code>Receive</code>. If you don't set the <code>video</code> capability to receive, the response will contain an HTTP 400 Bad Request status code. However, you can set your <code>video</code> capability \n                    to receive and you set your <code>content</code> capability to not receive.</p>\n            </li>\n            <li>\n               <p>When you change an <code>audio</code> capability from <code>None</code> or <code>Receive</code> to <code>Send</code> or <code>SendReceive</code> , \n                    and if the attendee left their microphone unmuted, audio will flow from the attendee to the other meeting participants.</p>\n            </li>\n            <li>\n               <p>When you change a <code>video</code> or <code>content</code> capability from <code>None</code> or <code>Receive</code> to <code>Send</code> or <code>SendReceive</code> , \n                    and if the attendee turned on their video or content streams, remote attendees can receive those streams, but only after media renegotiation between the client and the Amazon Chime back-end server.</p>\n            </li>\n         </ul>"}))
    Attendee.type = Types::Attendee
    AttendeeCapabilities.add_member(:audio, Smithy::Schema::Shapes::ShapeRef.new(shape: MediaCapabilities, location_name: 'Audio', traits: {"smithy.api#documentation" => "<p>The audio capability assigned to an attendee.</p>", "smithy.api#required" => {}}))
    AttendeeCapabilities.add_member(:video, Smithy::Schema::Shapes::ShapeRef.new(shape: MediaCapabilities, location_name: 'Video', traits: {"smithy.api#documentation" => "<p>The video capability assigned to an attendee.</p>", "smithy.api#required" => {}}))
    AttendeeCapabilities.add_member(:content, Smithy::Schema::Shapes::ShapeRef.new(shape: MediaCapabilities, location_name: 'Content', traits: {"smithy.api#documentation" => "<p>The content capability assigned to an attendee.</p>", "smithy.api#required" => {}}))
    AttendeeCapabilities.type = Types::AttendeeCapabilities
    AttendeeFeatures.add_member(:max_count, Smithy::Schema::Shapes::ShapeRef.new(shape: AttendeeMax, location_name: 'MaxCount', traits: {"smithy.api#documentation" => "<p>The maximum number of attendees allowed into the meeting.</p>"}))
    AttendeeFeatures.type = Types::AttendeeFeatures
    AttendeeIdItem.add_member(:attendee_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GuidString, location_name: 'AttendeeId', traits: {"smithy.api#documentation" => "<p>A list of one or more attendee IDs.</p>", "smithy.api#required" => {}}))
    AttendeeIdItem.type = Types::AttendeeIdItem
    AttendeeIdsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AttendeeIdItem)
    AttendeeList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Attendee)
    AudioFeatures.add_member(:echo_reduction, Smithy::Schema::Shapes::ShapeRef.new(shape: MeetingFeatureStatus, location_name: 'EchoReduction', traits: {"smithy.api#documentation" => "<p>Makes echo reduction available to clients who connect to the meeting.</p>"}))
    AudioFeatures.type = Types::AudioFeatures
    BadRequestException.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Code'))
    BadRequestException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    BadRequestException.add_member(:request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RequestId', traits: {"smithy.api#documentation" => "<p>The request id associated with the call responsible for the exception.</p>"}))
    BadRequestException.type = Types::BadRequestException
    BatchCreateAttendeeErrorList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAttendeeError)
    BatchCreateAttendeeRequest.add_member(:meeting_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GuidString, location_name: 'MeetingId', traits: {"smithy.api#documentation" => "<p>The Amazon Chime SDK ID of the meeting to which you're adding attendees.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    BatchCreateAttendeeRequest.add_member(:attendees, Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAttendeeRequestItemList, location_name: 'Attendees', traits: {"smithy.api#documentation" => "<p>The attendee information, including attendees' IDs and join tokens.</p>", "smithy.api#required" => {}}))
    BatchCreateAttendeeRequest.type = Types::BatchCreateAttendeeRequest
    BatchCreateAttendeeResponse.add_member(:attendees, Smithy::Schema::Shapes::ShapeRef.new(shape: AttendeeList, location_name: 'Attendees', traits: {"smithy.api#documentation" => "<p>The attendee information, including attendees' IDs and join tokens.</p>"}))
    BatchCreateAttendeeResponse.add_member(:errors, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchCreateAttendeeErrorList, location_name: 'Errors', traits: {"smithy.api#documentation" => "<p>If the action fails for one or more of the attendees in the request, a list of the attendees is returned, along with error codes and error messages.</p>"}))
    BatchCreateAttendeeResponse.type = Types::BatchCreateAttendeeResponse
    BatchUpdateAttendeeCapabilitiesExceptRequest.add_member(:meeting_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GuidString, location_name: 'MeetingId', traits: {"smithy.api#documentation" => "<p>The ID of the meeting associated with the update request.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    BatchUpdateAttendeeCapabilitiesExceptRequest.add_member(:excluded_attendee_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: AttendeeIdsList, location_name: 'ExcludedAttendeeIds', traits: {"smithy.api#documentation" => "<p>The <code>AttendeeIDs</code> that you want to exclude from one or more capabilities.</p>", "smithy.api#required" => {}}))
    BatchUpdateAttendeeCapabilitiesExceptRequest.add_member(:capabilities, Smithy::Schema::Shapes::ShapeRef.new(shape: AttendeeCapabilities, location_name: 'Capabilities', traits: {"smithy.api#documentation" => "<p>The capabilities (<code>audio</code>, <code>video</code>, or <code>content</code>) that you want to update.</p>", "smithy.api#required" => {}}))
    BatchUpdateAttendeeCapabilitiesExceptRequest.type = Types::BatchUpdateAttendeeCapabilitiesExceptRequest
    ConflictException.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Code'))
    ConflictException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    ConflictException.add_member(:request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RequestId', traits: {"smithy.api#documentation" => "<p>The ID of the request involved in the conflict.</p>"}))
    ConflictException.type = Types::ConflictException
    ContentFeatures.add_member(:max_resolution, Smithy::Schema::Shapes::ShapeRef.new(shape: ContentResolution, location_name: 'MaxResolution', traits: {"smithy.api#documentation" => "<p>The maximum resolution for the meeting content.</p>\n         <note>\n            <p>Defaults to <code>FHD</code>. To use <code>UHD</code>, you must also provide a <code>MeetingFeatures:Attendee:MaxCount</code>\n         value and override the default size limit of 250 attendees.</p>\n         </note>"}))
    ContentFeatures.type = Types::ContentFeatures
    ContentResolution.add_member(:none, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NONE', traits: {"smithy.api#enumValue" => "None"}))
    ContentResolution.add_member(:fhd, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FHD', traits: {"smithy.api#enumValue" => "FHD"}))
    ContentResolution.add_member(:uhd, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UHD', traits: {"smithy.api#enumValue" => "UHD"}))
    CreateAttendeeError.add_member(:external_user_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalUserId, location_name: 'ExternalUserId', traits: {"smithy.api#documentation" => "<p>The Amazon Chime SDK external user ID. An idempotency token. Links the attendee to an identity managed by a builder application.</p>\n         <p>Pattern: <code>[-_&@+=,(){}\\[\\]\\/«».:|'\"#a-zA-Z0-9À-ÿ\\s]*</code>\n         </p>\n         <p>Values that begin with <code>aws:</code> are reserved. You can't configure a value that uses this prefix. \n            Case insensitive.</p>"}))
    CreateAttendeeError.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ErrorCode', traits: {"smithy.api#documentation" => "<p>The error code.</p>"}))
    CreateAttendeeError.add_member(:error_message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ErrorMessage', traits: {"smithy.api#documentation" => "<p>The error message.</p>"}))
    CreateAttendeeError.type = Types::CreateAttendeeError
    CreateAttendeeRequest.add_member(:meeting_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GuidString, location_name: 'MeetingId', traits: {"smithy.api#documentation" => "<p>The unique ID of the meeting.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateAttendeeRequest.add_member(:external_user_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalUserId, location_name: 'ExternalUserId', traits: {"smithy.api#documentation" => "<p>The Amazon Chime SDK external user ID. An idempotency token. Links the attendee to an identity managed by a builder application.</p>\n         <p>Pattern: <code>[-_&@+=,(){}\\[\\]\\/«».:|'\"#a-zA-Z0-9À-ÿ\\s]*</code>\n         </p>\n         <p>Values that begin with <code>aws:</code> are reserved. You can't configure a value that\n            uses this prefix.</p>", "smithy.api#required" => {}}))
    CreateAttendeeRequest.add_member(:capabilities, Smithy::Schema::Shapes::ShapeRef.new(shape: AttendeeCapabilities, location_name: 'Capabilities', traits: {"smithy.api#documentation" => "<p>The capabilities (<code>audio</code>, <code>video</code>, or <code>content</code>) that you want to grant an attendee. If you don't specify capabilities, all users have send and receive capabilities on \n            all media channels by default.</p>\n         <note>\n            <p>You use the capabilities with a set of values that control what the capabilities can do, such as <code>SendReceive</code> data. For more information about those values, see \n            .</p>\n         </note>\n         <p>When using capabilities, be aware of these corner cases:</p>\n         <ul>\n            <li>\n               <p>If you specify <code>MeetingFeatures:Video:MaxResolution:None</code> when you create a meeting, all API requests \n                        that include <code>SendReceive</code>, <code>Send</code>, or <code>Receive</code> for <code>AttendeeCapabilities:Video</code> will be rejected with <code>ValidationError 400</code>.</p>\n            </li>\n            <li>\n               <p>If you specify <code>MeetingFeatures:Content:MaxResolution:None</code> when you create a meeting, all API requests that include <code>SendReceive</code>, <code>Send</code>, or \n                        <code>Receive</code> for <code>AttendeeCapabilities:Content</code> will be rejected with <code>ValidationError 400</code>.</p>\n            </li>\n            <li>\n               <p>You can't set <code>content</code> capabilities to <code>SendReceive</code> or <code>Receive</code> unless you also set <code>video</code> capabilities to <code>SendReceive</code> \n                    or <code>Receive</code>. If you don't set the <code>video</code> capability to receive, the response will contain an HTTP 400 Bad Request status code. However, you can set your <code>video</code> capability \n                    to receive and you set your <code>content</code> capability to not receive.</p>\n            </li>\n            <li>\n               <p>When you change an <code>audio</code> capability from <code>None</code> or <code>Receive</code> to <code>Send</code> or <code>SendReceive</code> , \n                    and if the attendee left their microphone unmuted, audio will flow from the attendee to the other meeting participants.</p>\n            </li>\n            <li>\n               <p>When you change a <code>video</code> or <code>content</code> capability from <code>None</code> or <code>Receive</code> to <code>Send</code> or <code>SendReceive</code> , \n                   and if the attendee turned on their video or content streams, remote attendees can receive those streams, but only after media renegotiation between the client and the Amazon Chime back-end server.</p>\n            </li>\n         </ul>"}))
    CreateAttendeeRequest.type = Types::CreateAttendeeRequest
    CreateAttendeeRequestItem.add_member(:external_user_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalUserId, location_name: 'ExternalUserId', traits: {"smithy.api#documentation" => "<p>The Amazon Chime SDK external user ID. An idempotency token. Links the attendee to an identity managed by a builder application.</p>\n         <p>Pattern: <code>[-_&@+=,(){}\\[\\]\\/«».:|'\"#a-zA-Z0-9À-ÿ\\s]*</code>\n         </p>\n         <p>Values that begin with <code>aws:</code> are reserved. You can't configure a value that uses this prefix. \n            Case insensitive.</p>", "smithy.api#required" => {}}))
    CreateAttendeeRequestItem.add_member(:capabilities, Smithy::Schema::Shapes::ShapeRef.new(shape: AttendeeCapabilities, location_name: 'Capabilities', traits: {"smithy.api#documentation" => "<p>A list of one or more capabilities.</p>"}))
    CreateAttendeeRequestItem.type = Types::CreateAttendeeRequestItem
    CreateAttendeeRequestItemList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAttendeeRequestItem)
    CreateAttendeeResponse.add_member(:attendee, Smithy::Schema::Shapes::ShapeRef.new(shape: Attendee, location_name: 'Attendee', traits: {"smithy.api#documentation" => "<p>The attendee information, including attendee ID and join token.</p>"}))
    CreateAttendeeResponse.type = Types::CreateAttendeeResponse
    CreateMeetingRequest.add_member(:client_request_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: 'ClientRequestToken', traits: {"smithy.api#documentation" => "<p>The unique identifier for the client request. Use a different token for different meetings.</p>", "smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateMeetingRequest.add_member(:media_region, Smithy::Schema::Shapes::ShapeRef.new(shape: MediaRegion, location_name: 'MediaRegion', traits: {"smithy.api#documentation" => "<p>The Region in which to create the meeting.</p>\n         <p>\n           Available values: \n           <code>af-south-1</code>, \n           <code>ap-northeast-1</code>, \n           <code>ap-northeast-2</code>, \n           <code>ap-south-1</code>, \n           <code>ap-southeast-1</code>, \n           <code>ap-southeast-2</code>,           \n           <code>ca-central-1</code>, \n           <code>eu-central-1</code>, \n           <code>eu-north-1</code>, \n           <code>eu-south-1</code>, \n           <code>eu-west-1</code>, \n           <code>eu-west-2</code>, \n           <code>eu-west-3</code>,            \n           <code>sa-east-1</code>, \n           <code>us-east-1</code>, \n           <code>us-east-2</code>, \n           <code>us-west-1</code>, \n           <code>us-west-2</code>.\n       </p>\n         <p>Available values in Amazon Web Services GovCloud (US) Regions: <code>us-gov-east-1</code>, <code>us-gov-west-1</code>.</p>", "smithy.api#required" => {}}))
    CreateMeetingRequest.add_member(:meeting_host_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalUserId, location_name: 'MeetingHostId', traits: {"smithy.api#documentation" => "<p>Reserved.</p>"}))
    CreateMeetingRequest.add_member(:external_meeting_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalMeetingId, location_name: 'ExternalMeetingId', traits: {"smithy.api#documentation" => "<p>The external meeting ID.</p>\n         <p>Pattern: <code>[-_&@+=,(){}\\[\\]\\/«».:|'\"#a-zA-Z0-9À-ÿ\\s]*</code>\n         </p>\n         <p>Values that begin with <code>aws:</code> are reserved. You can't configure a value that uses this prefix. \n           Case insensitive.</p>", "smithy.api#required" => {}}))
    CreateMeetingRequest.add_member(:notifications_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationsConfiguration, location_name: 'NotificationsConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration for resource targets to receive notifications when meeting and attendee events occur.</p>"}))
    CreateMeetingRequest.add_member(:meeting_features, Smithy::Schema::Shapes::ShapeRef.new(shape: MeetingFeaturesConfiguration, location_name: 'MeetingFeatures', traits: {"smithy.api#documentation" => "<p>Lists the audio and video features enabled for a meeting, such as echo reduction.</p>"}))
    CreateMeetingRequest.add_member(:primary_meeting_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PrimaryMeetingId, location_name: 'PrimaryMeetingId', traits: {"smithy.api#documentation" => "<p>When specified, replicates the media from the primary meeting to the new meeting.</p>"}))
    CreateMeetingRequest.add_member(:tenant_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: TenantIdList, location_name: 'TenantIds', traits: {"smithy.api#documentation" => "<p>A consistent and opaque identifier, created and maintained by the builder to represent a segment of their users.</p>"}))
    CreateMeetingRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>Applies one or more tags to an Amazon Chime SDK meeting. Note the following:</p>\n         <ul>\n            <li>\n               <p>Not all resources have tags. For a list of services with resources that support tagging using this operation, see \n        <a href=\"https://docs.aws.amazon.com/resourcegroupstagging/latest/APIReference/supported-services.html\">Services that support the Resource Groups Tagging API</a>. If the resource \n        doesn't yet support this operation, the resource's service might support tagging using its own API operations. For more information, refer to the documentation for that service.</p>\n            </li>\n            <li>\n               <p>Each resource can have up to 50 tags. For other limits, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html#tag-conventions\">Tag Naming and Usage Conventions</a> in the \n       <i>AWS General Reference</i>.</p>\n            </li>\n            <li>\n               <p>You can only tag resources that are located in the specified Amazon Web Services Region for the Amazon Web Services account.</p>\n            </li>\n            <li>\n               <p>To add tags to a resource, you need the necessary permissions for the service that the resource belongs to as well as permissions for adding tags. For more information, see the \n        documentation for each service.</p>\n            </li>\n         </ul>\n         <important>\n            <p>Do not store personally identifiable information (PII) or other confidential or sensitive information in tags. We use tags to provide you with billing and administration services. Tags are not intended to be \n            used for private or sensitive data.</p>\n         </important>\n         <p>\n            <b>Minimum permissions</b>\n         </p>\n         <p>In addition to the <code>tag:TagResources</code> permission required by this operation, you must also have the tagging permission defined by the service that created the resource. For example, \n                   to tag a <code>ChimeSDKMeetings</code> instance using the <code>TagResources</code> operation, you must have both of the following permissions:</p>\n         <p>\n            <code>tag:TagResources</code>\n         </p>\n         <p>\n            <code>ChimeSDKMeetings:CreateTags</code>\n         </p>\n         <note>\n            <p>Some services might have specific requirements for tagging some resources. For example, to tag an Amazon S3 bucket, you must also have the <code>s3:GetBucketTagging</code> permission. \n                If the expected minimum permissions don't work, check the documentation for that service's tagging APIs for more information.</p>\n         </note>"}))
    CreateMeetingRequest.type = Types::CreateMeetingRequest
    CreateMeetingResponse.add_member(:meeting, Smithy::Schema::Shapes::ShapeRef.new(shape: Meeting, location_name: 'Meeting', traits: {"smithy.api#documentation" => "<p>The meeting information, including the meeting ID and \n           <code>MediaPlacement</code>.</p>"}))
    CreateMeetingResponse.type = Types::CreateMeetingResponse
    CreateMeetingWithAttendeesRequest.add_member(:client_request_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: 'ClientRequestToken', traits: {"smithy.api#documentation" => "<p>The unique identifier for the client request. Use a different token for different meetings.</p>", "smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateMeetingWithAttendeesRequest.add_member(:media_region, Smithy::Schema::Shapes::ShapeRef.new(shape: MediaRegion, location_name: 'MediaRegion', traits: {"smithy.api#documentation" => "<p>The Region in which to create the meeting.</p>\n         <p>\n           Available values: \n           <code>af-south-1</code>, \n           <code>ap-northeast-1</code>, \n           <code>ap-northeast-2</code>, \n           <code>ap-south-1</code>, \n           <code>ap-southeast-1</code>, \n           <code>ap-southeast-2</code>,           \n           <code>ca-central-1</code>, \n           <code>eu-central-1</code>, \n           <code>eu-north-1</code>, \n           <code>eu-south-1</code>, \n           <code>eu-west-1</code>, \n           <code>eu-west-2</code>, \n           <code>eu-west-3</code>,            \n           <code>sa-east-1</code>, \n           <code>us-east-1</code>, \n           <code>us-east-2</code>, \n           <code>us-west-1</code>, \n           <code>us-west-2</code>.\n       </p>\n         <p>Available values in Amazon Web Services GovCloud (US) Regions: <code>us-gov-east-1</code>, <code>us-gov-west-1</code>.</p>", "smithy.api#required" => {}}))
    CreateMeetingWithAttendeesRequest.add_member(:meeting_host_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalUserId, location_name: 'MeetingHostId', traits: {"smithy.api#documentation" => "<p>Reserved.</p>"}))
    CreateMeetingWithAttendeesRequest.add_member(:external_meeting_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalMeetingId, location_name: 'ExternalMeetingId', traits: {"smithy.api#documentation" => "<p>The external meeting ID.</p>\n         <p>Pattern: <code>[-_&@+=,(){}\\[\\]\\/«».:|'\"#a-zA-Z0-9À-ÿ\\s]*</code>\n         </p>\n         <p>Values that begin with <code>aws:</code> are reserved. You can't configure a value that uses this prefix. \n           Case insensitive.</p>", "smithy.api#required" => {}}))
    CreateMeetingWithAttendeesRequest.add_member(:meeting_features, Smithy::Schema::Shapes::ShapeRef.new(shape: MeetingFeaturesConfiguration, location_name: 'MeetingFeatures', traits: {"smithy.api#documentation" => "<p>Lists the audio and video features enabled for a meeting, such as echo reduction.</p>"}))
    CreateMeetingWithAttendeesRequest.add_member(:notifications_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationsConfiguration, location_name: 'NotificationsConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration for resource targets to receive notifications when meeting and attendee events occur.</p>"}))
    CreateMeetingWithAttendeesRequest.add_member(:attendees, Smithy::Schema::Shapes::ShapeRef.new(shape: CreateMeetingWithAttendeesRequestItemList, location_name: 'Attendees', traits: {"smithy.api#documentation" => "<p>The attendee information, including attendees' IDs and join tokens.</p>", "smithy.api#required" => {}}))
    CreateMeetingWithAttendeesRequest.add_member(:primary_meeting_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PrimaryMeetingId, location_name: 'PrimaryMeetingId', traits: {"smithy.api#documentation" => "<p>When specified, replicates the media from the primary meeting to the new meeting.</p>"}))
    CreateMeetingWithAttendeesRequest.add_member(:tenant_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: TenantIdList, location_name: 'TenantIds', traits: {"smithy.api#documentation" => "<p>A consistent and opaque identifier, created and maintained by the builder to represent a segment of their users.</p>"}))
    CreateMeetingWithAttendeesRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags in the request.</p>"}))
    CreateMeetingWithAttendeesRequest.type = Types::CreateMeetingWithAttendeesRequest
    CreateMeetingWithAttendeesRequestItemList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAttendeeRequestItem)
    CreateMeetingWithAttendeesResponse.add_member(:meeting, Smithy::Schema::Shapes::ShapeRef.new(shape: Meeting, location_name: 'Meeting', traits: {"smithy.api#documentation" => "<p>The meeting information, including the meeting ID and \n           <code>MediaPlacement</code>.</p>"}))
    CreateMeetingWithAttendeesResponse.add_member(:attendees, Smithy::Schema::Shapes::ShapeRef.new(shape: AttendeeList, location_name: 'Attendees', traits: {"smithy.api#documentation" => "<p>The attendee information, including attendees' IDs and join tokens.</p>"}))
    CreateMeetingWithAttendeesResponse.add_member(:errors, Smithy::Schema::Shapes::ShapeRef.new(shape: BatchCreateAttendeeErrorList, location_name: 'Errors', traits: {"smithy.api#documentation" => "<p>If the action fails for one or more of the attendees in the request, a list of the attendees is returned, along with error codes and error messages.</p>"}))
    CreateMeetingWithAttendeesResponse.type = Types::CreateMeetingWithAttendeesResponse
    DeleteAttendeeRequest.add_member(:meeting_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GuidString, location_name: 'MeetingId', traits: {"smithy.api#documentation" => "<p>The Amazon Chime SDK meeting ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAttendeeRequest.add_member(:attendee_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GuidString, location_name: 'AttendeeId', traits: {"smithy.api#documentation" => "<p>The Amazon Chime SDK attendee ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAttendeeRequest.type = Types::DeleteAttendeeRequest
    DeleteMeetingRequest.add_member(:meeting_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GuidString, location_name: 'MeetingId', traits: {"smithy.api#documentation" => "<p>The Amazon Chime SDK meeting ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteMeetingRequest.type = Types::DeleteMeetingRequest
    EngineTranscribeMedicalSettings.add_member(:language_code, Smithy::Schema::Shapes::ShapeRef.new(shape: TranscribeMedicalLanguageCode, location_name: 'LanguageCode', traits: {"smithy.api#documentation" => "<p>The language code specified for the Amazon Transcribe Medical engine.</p>", "smithy.api#required" => {}}))
    EngineTranscribeMedicalSettings.add_member(:specialty, Smithy::Schema::Shapes::ShapeRef.new(shape: TranscribeMedicalSpecialty, location_name: 'Specialty', traits: {"smithy.api#documentation" => "<p>The specialty specified for the Amazon Transcribe Medical engine.</p>", "smithy.api#required" => {}}))
    EngineTranscribeMedicalSettings.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: TranscribeMedicalType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The type of transcription.</p>", "smithy.api#required" => {}}))
    EngineTranscribeMedicalSettings.add_member(:vocabulary_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VocabularyName', traits: {"smithy.api#documentation" => "<p>The name of the vocabulary passed to Amazon Transcribe Medical.</p>"}))
    EngineTranscribeMedicalSettings.add_member(:region, Smithy::Schema::Shapes::ShapeRef.new(shape: TranscribeMedicalRegion, location_name: 'Region', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services Region passed to Amazon Transcribe Medical. If you don't specify a Region, Amazon Chime uses the meeting's Region. </p>"}))
    EngineTranscribeMedicalSettings.add_member(:content_identification_type, Smithy::Schema::Shapes::ShapeRef.new(shape: TranscribeMedicalContentIdentificationType, location_name: 'ContentIdentificationType', traits: {"smithy.api#documentation" => "<p>Set this field to <code>PHI</code> to identify personal health information in the transcription output.</p>"}))
    EngineTranscribeMedicalSettings.type = Types::EngineTranscribeMedicalSettings
    EngineTranscribeSettings.add_member(:language_code, Smithy::Schema::Shapes::ShapeRef.new(shape: TranscribeLanguageCode, location_name: 'LanguageCode', traits: {"smithy.api#documentation" => "<p>Specify the language code that represents the language spoken.</p>\n         <p>If you're unsure of the language spoken in your audio, consider using <code>IdentifyLanguage</code> to enable automatic language identification.</p>"}))
    EngineTranscribeSettings.add_member(:vocabulary_filter_method, Smithy::Schema::Shapes::ShapeRef.new(shape: TranscribeVocabularyFilterMethod, location_name: 'VocabularyFilterMethod', traits: {"smithy.api#documentation" => "<p>Specify how you want your vocabulary filter applied to your transcript.</p>\n         <p>To replace words with <code>***</code>, choose <code>mask</code>.</p>\n         <p>To delete words, choose <code>remove</code>.</p>\n         <p>To flag words without changing them, choose <code>tag</code>.</p>"}))
    EngineTranscribeSettings.add_member(:vocabulary_filter_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VocabularyFilterName', traits: {"smithy.api#documentation" => "<p>Specify the name of the custom vocabulary filter that you want to use when processing your transcription. Note that vocabulary filter names are case sensitive. </p>\n         <p>If you use Amazon Transcribe in multiple Regions, the vocabulary filter must be available in Amazon Transcribe in each Region.</p>\n         <p>If you include <code>IdentifyLanguage</code> and want to use one or more vocabulary filters with your transcription, use the <code>VocabularyFilterNames</code> parameter instead.</p>"}))
    EngineTranscribeSettings.add_member(:vocabulary_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VocabularyName', traits: {"smithy.api#documentation" => "<p>Specify the name of the custom vocabulary that you want to use when processing your transcription. Note that vocabulary names are case sensitive.</p>\n         <p>If you use Amazon Transcribe multiple Regions, the vocabulary must be available in Amazon Transcribe in each Region.</p>\n         <p>If you include <code>IdentifyLanguage</code> and want to use one or more custom vocabularies with your transcription, use the <code>VocabularyNames</code> \n                parameter instead.</p>"}))
    EngineTranscribeSettings.add_member(:region, Smithy::Schema::Shapes::ShapeRef.new(shape: TranscribeRegion, location_name: 'Region', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services Region in which to use Amazon Transcribe.</p>\n         <p>If you don't specify a Region, then the <a href=\"https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_meeting-chime_CreateMeeting.html\">MediaRegion</a> of the meeting is used.  \n            However, if Amazon Transcribe is not available in the <code>MediaRegion</code>, then a <code>TranscriptFailed</code> event is sent.</p>\n         <p>Use <code>auto</code> to use Amazon Transcribe in a Region near the meeting’s <code>MediaRegion</code>.  For more information, refer to \n            <a href=\"https://docs.aws.amazon.com/chime-sdk/latest/dg/transcription-options.html#choose-region\">Choosing a transcription Region</a> in the \n            <i>Amazon Chime SDK Developer Guide</i>.</p>"}))
    EngineTranscribeSettings.add_member(:enable_partial_results_stabilization, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'EnablePartialResultsStabilization', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Enables partial result stabilization for your transcription. Partial result stabilization can reduce latency in your output, but may impact accuracy.</p>"}))
    EngineTranscribeSettings.add_member(:partial_results_stability, Smithy::Schema::Shapes::ShapeRef.new(shape: TranscribePartialResultsStability, location_name: 'PartialResultsStability', traits: {"smithy.api#documentation" => "<p>Specify the level of stability to use when you enable partial results stabilization (<code>EnablePartialResultsStabilization</code>).</p>\n         <p>Low stability provides the highest accuracy. High stability transcribes faster, but with slightly lower accuracy.</p>"}))
    EngineTranscribeSettings.add_member(:content_identification_type, Smithy::Schema::Shapes::ShapeRef.new(shape: TranscribeContentIdentificationType, location_name: 'ContentIdentificationType', traits: {"smithy.api#documentation" => "<p>Labels all personally identifiable information (PII) identified in your transcript. If you don't include <code>PiiEntityTypes</code>, all PII is identified.</p>\n         <note>\n            <p>You can’t set <code>ContentIdentificationType</code> and <code>ContentRedactionType</code>.</p>\n         </note>"}))
    EngineTranscribeSettings.add_member(:content_redaction_type, Smithy::Schema::Shapes::ShapeRef.new(shape: TranscribeContentRedactionType, location_name: 'ContentRedactionType', traits: {"smithy.api#documentation" => "<p>Content redaction is performed at the segment level. If you don't include <code>PiiEntityTypes</code>, all PII is redacted.</p>\n         <note>\n            <p>You can’t set <code>ContentRedactionType</code> and <code>ContentIdentificationType</code>.</p>\n         </note>"}))
    EngineTranscribeSettings.add_member(:pii_entity_types, Smithy::Schema::Shapes::ShapeRef.new(shape: TranscribePiiEntityTypes, location_name: 'PiiEntityTypes', traits: {"smithy.api#documentation" => "<p>Specify which types of personally identifiable information (PII) you want to redact in your transcript. You can include as many types as you'd like, or you can select <code>ALL</code>.</p>\n         <p>Values must be comma-separated and can include: <code>ADDRESS</code>, <code>BANK_ACCOUNT_NUMBER</code>, <code>BANK_ROUTING</code>, <code>CREDIT_DEBIT_CVV</code>, <code>CREDIT_DEBIT_EXPIRY</code>\n            <code>CREDIT_DEBIT_NUMBER</code>, <code>EMAIL</code>,<code>NAME</code>, <code>PHONE</code>,  <code>PIN</code>, \n                <code>SSN</code>, or <code>ALL</code>.</p>\n         <p>Note that if you include <code>PiiEntityTypes</code>, you must also include <code>ContentIdentificationType</code> or <code>ContentRedactionType</code>.</p>\n         <p>If you include <code>ContentRedactionType</code> or <code>ContentIdentificationType</code>, but do not include PiiEntityTypes, all PII is redacted or identified.</p>"}))
    EngineTranscribeSettings.add_member(:language_model_name, Smithy::Schema::Shapes::ShapeRef.new(shape: TranscribeLanguageModelName, location_name: 'LanguageModelName', traits: {"smithy.api#documentation" => "<p>Specify the name of the custom language model that you want to use when processing your transcription. Note that language model names are case sensitive.</p>\n         <p>The language of the specified language model must match the language code. If the languages don't match, the custom language model isn't applied. There are no errors or warnings associated with \n            a language mismatch.</p>\n         <p>If you use Amazon Transcribe in multiple Regions, the custom language model must be available in Amazon Transcribe in each Region.</p>"}))
    EngineTranscribeSettings.add_member(:identify_language, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'IdentifyLanguage', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Enables automatic language identification for your transcription.</p>\n         <p>If you include <code>IdentifyLanguage</code>, you can optionally use <code>LanguageOptions</code> to include a list of language codes that you think may be present in your audio stream. \n            Including language options can improve transcription accuracy.</p>\n         <p>You can also use <code>PreferredLanguage</code> to include a preferred language. Doing so can help Amazon Transcribe identify the language faster.</p>\n         <p>You must include either <code>LanguageCode</code> or <code>IdentifyLanguage</code>.</p>\n         <p>Language identification can't be combined with custom language models or redaction.</p>"}))
    EngineTranscribeSettings.add_member(:language_options, Smithy::Schema::Shapes::ShapeRef.new(shape: TranscribeLanguageOptions, location_name: 'LanguageOptions', traits: {"smithy.api#documentation" => "<p>Specify two or more language codes that represent the languages you think may be present in your media; including more than five is not recommended. If you're unsure what languages \n            are present, do not include this parameter.</p>\n         <p>Including language options can improve the accuracy of language identification.</p>\n         <p>If you include <code>LanguageOptions</code>, you must also include <code>IdentifyLanguage</code>.</p>\n         <important>\n            <p>You can only include one language dialect per language. For example, you cannot include <code>en-US</code> and <code>en-AU</code>.</p>\n         </important>"}))
    EngineTranscribeSettings.add_member(:preferred_language, Smithy::Schema::Shapes::ShapeRef.new(shape: TranscribeLanguageCode, location_name: 'PreferredLanguage', traits: {"smithy.api#documentation" => "<p>Specify a preferred language from the subset of languages codes you specified in <code>LanguageOptions</code>.</p>\n         <p>You can only use this parameter if you include <code>IdentifyLanguage</code> and <code>LanguageOptions</code>.</p>"}))
    EngineTranscribeSettings.add_member(:vocabulary_names, Smithy::Schema::Shapes::ShapeRef.new(shape: TranscribeVocabularyNamesOrFilterNamesString, location_name: 'VocabularyNames', traits: {"smithy.api#documentation" => "<p>Specify the names of the custom vocabularies that you want to use when processing your transcription. Note that vocabulary names are case sensitive.</p>\n         <p>If you use Amazon Transcribe in multiple Regions, the vocabulary must be available in Amazon Transcribe in each Region.</p>\n         <p>If you don't include <code>IdentifyLanguage</code> and want to use a custom vocabulary with your transcription, use the <code>VocabularyName</code> parameter instead.</p>"}))
    EngineTranscribeSettings.add_member(:vocabulary_filter_names, Smithy::Schema::Shapes::ShapeRef.new(shape: TranscribeVocabularyNamesOrFilterNamesString, location_name: 'VocabularyFilterNames', traits: {"smithy.api#documentation" => "<p>Specify the names of the custom vocabulary filters that you want to use when processing your transcription. Note that vocabulary filter names are case sensitive.</p>\n         <p>If you use Amazon Transcribe in multiple Regions, the vocabulary filter must be available in Amazon Transcribe in each Region.</p>\n         <p> If you're <i>not</i> including <code>IdentifyLanguage</code> and want to use a custom vocabulary filter with your transcription, use the <code>VocabularyFilterName</code> \n            parameter instead.</p>"}))
    EngineTranscribeSettings.type = Types::EngineTranscribeSettings
    ForbiddenException.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Code'))
    ForbiddenException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    ForbiddenException.add_member(:request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RequestId', traits: {"smithy.api#documentation" => "<p>The request id associated with the call responsible for the exception.</p>"}))
    ForbiddenException.type = Types::ForbiddenException
    GetAttendeeRequest.add_member(:meeting_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GuidString, location_name: 'MeetingId', traits: {"smithy.api#documentation" => "<p>The Amazon Chime SDK meeting ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAttendeeRequest.add_member(:attendee_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GuidString, location_name: 'AttendeeId', traits: {"smithy.api#documentation" => "<p>The Amazon Chime SDK attendee ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAttendeeRequest.type = Types::GetAttendeeRequest
    GetAttendeeResponse.add_member(:attendee, Smithy::Schema::Shapes::ShapeRef.new(shape: Attendee, location_name: 'Attendee', traits: {"smithy.api#documentation" => "<p>The Amazon Chime SDK attendee information.</p>"}))
    GetAttendeeResponse.type = Types::GetAttendeeResponse
    GetMeetingRequest.add_member(:meeting_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GuidString, location_name: 'MeetingId', traits: {"smithy.api#documentation" => "<p>The Amazon Chime SDK meeting ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetMeetingRequest.type = Types::GetMeetingRequest
    GetMeetingResponse.add_member(:meeting, Smithy::Schema::Shapes::ShapeRef.new(shape: Meeting, location_name: 'Meeting', traits: {"smithy.api#documentation" => "<p>The Amazon Chime SDK meeting information.</p>"}))
    GetMeetingResponse.type = Types::GetMeetingResponse
    LimitExceededException.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Code'))
    LimitExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    LimitExceededException.add_member(:request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RequestId', traits: {"smithy.api#documentation" => "<p>The request id associated with the call responsible for the exception.</p>"}))
    LimitExceededException.type = Types::LimitExceededException
    ListAttendeesRequest.add_member(:meeting_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GuidString, location_name: 'MeetingId', traits: {"smithy.api#documentation" => "<p>The Amazon Chime SDK meeting ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListAttendeesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token to use to retrieve the next page of results.</p>", "smithy.api#httpQuery" => "next-token"}))
    ListAttendeesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ResultMax, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return in a single call.</p>", "smithy.api#httpQuery" => "max-results"}))
    ListAttendeesRequest.type = Types::ListAttendeesRequest
    ListAttendeesResponse.add_member(:attendees, Smithy::Schema::Shapes::ShapeRef.new(shape: AttendeeList, location_name: 'Attendees', traits: {"smithy.api#documentation" => "<p>The Amazon Chime SDK attendee information.</p>"}))
    ListAttendeesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token to use to retrieve the next page of results.</p>"}))
    ListAttendeesResponse.type = Types::ListAttendeesResponse
    ListTagsForResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'ResourceARN', traits: {"smithy.api#documentation" => "<p>The ARN of the resource.</p>", "smithy.api#httpQuery" => "arn", "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags requested for the specified resource.</p>"}))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    MediaCapabilities.add_member(:send_receive, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SEND_RECEIVE', traits: {"smithy.api#enumValue" => "SendReceive"}))
    MediaCapabilities.add_member(:send, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SEND', traits: {"smithy.api#enumValue" => "Send"}))
    MediaCapabilities.add_member(:receive, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RECEIVE', traits: {"smithy.api#enumValue" => "Receive"}))
    MediaCapabilities.add_member(:none, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NONE', traits: {"smithy.api#enumValue" => "None"}))
    MediaPlacement.add_member(:audio_host_url, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AudioHostUrl', traits: {"smithy.api#documentation" => "<p>The audio host URL.</p>"}))
    MediaPlacement.add_member(:audio_fallback_url, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AudioFallbackUrl', traits: {"smithy.api#documentation" => "<p>The audio fallback URL.</p>"}))
    MediaPlacement.add_member(:signaling_url, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SignalingUrl', traits: {"smithy.api#documentation" => "<p>The signaling URL.</p>"}))
    MediaPlacement.add_member(:turn_control_url, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'TurnControlUrl', traits: {"smithy.api#documentation" => "<p>The turn control URL.</p>\n         <important>\n            <p>\n               <b>This parameter is deprecated and no longer used by the Amazon Chime SDK.</b>\n            </p>\n         </important>"}))
    MediaPlacement.add_member(:screen_data_url, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ScreenDataUrl', traits: {"smithy.api#documentation" => "<p>The screen data URL.</p>\n         <important>\n            <p>\n               <b>This parameter is deprecated and no longer used by the Amazon Chime SDK.</b>\n            </p>\n         </important>"}))
    MediaPlacement.add_member(:screen_viewing_url, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ScreenViewingUrl', traits: {"smithy.api#documentation" => "<p>The screen viewing URL.</p>\n         <important>\n            <p>\n               <b>This parameter is deprecated and no longer used by the Amazon Chime SDK.</b>\n            </p>\n         </important>"}))
    MediaPlacement.add_member(:screen_sharing_url, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ScreenSharingUrl', traits: {"smithy.api#documentation" => "<p>The screen sharing URL.</p>\n         <important>\n            <p>\n               <b>This parameter is deprecated and no longer used by the Amazon Chime SDK.</b>\n            </p>\n         </important>"}))
    MediaPlacement.add_member(:event_ingestion_url, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EventIngestionUrl', traits: {"smithy.api#documentation" => "<p>The event ingestion URL.</p>"}))
    MediaPlacement.type = Types::MediaPlacement
    Meeting.add_member(:meeting_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GuidString, location_name: 'MeetingId', traits: {"smithy.api#documentation" => "<p>The Amazon Chime SDK meeting ID.</p>"}))
    Meeting.add_member(:meeting_host_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalUserId, location_name: 'MeetingHostId', traits: {"smithy.api#documentation" => "<p>Reserved.</p>"}))
    Meeting.add_member(:external_meeting_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalMeetingId, location_name: 'ExternalMeetingId', traits: {"smithy.api#documentation" => "<p>The external meeting ID.</p>\n         <p>Pattern: <code>[-_&@+=,(){}\\[\\]\\/«».:|'\"#a-zA-Z0-9À-ÿ\\s]*</code>\n         </p>\n         <p>Values that begin with <code>aws:</code> are reserved. You can't configure a value that uses this prefix. \n            Case insensitive.</p>"}))
    Meeting.add_member(:media_region, Smithy::Schema::Shapes::ShapeRef.new(shape: MediaRegion, location_name: 'MediaRegion', traits: {"smithy.api#documentation" => "<p>The Region in which you create the meeting. Available values: <code>af-south-1</code>, <code>ap-northeast-1</code>, \n            <code>ap-northeast-2</code>, <code>ap-south-1</code>, <code>ap-southeast-1</code>, <code>ap-southeast-2</code>, <code>ca-central-1</code>, \n            <code>eu-central-1</code>, <code>eu-north-1</code>, <code>eu-south-1</code>,\n            <code>eu-west-1</code>, <code>eu-west-2</code>, <code>eu-west-3</code>,\n            <code>sa-east-1</code>, <code>us-east-1</code>, <code>us-east-2</code>,\n            <code>us-west-1</code>, <code>us-west-2</code>.</p>\n         <p>Available values in Amazon Web Services GovCloud (US) Regions: <code>us-gov-east-1</code>, <code>us-gov-west-1</code>.</p>"}))
    Meeting.add_member(:media_placement, Smithy::Schema::Shapes::ShapeRef.new(shape: MediaPlacement, location_name: 'MediaPlacement', traits: {"smithy.api#documentation" => "<p>The media placement for the meeting.</p>"}))
    Meeting.add_member(:meeting_features, Smithy::Schema::Shapes::ShapeRef.new(shape: MeetingFeaturesConfiguration, location_name: 'MeetingFeatures', traits: {"smithy.api#documentation" => "<p>The features available to a meeting, such as echo reduction.</p>"}))
    Meeting.add_member(:primary_meeting_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PrimaryMeetingId, location_name: 'PrimaryMeetingId', traits: {"smithy.api#documentation" => "<p>When specified, replicates the media from the primary meeting to this meeting.</p>"}))
    Meeting.add_member(:tenant_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: TenantIdList, location_name: 'TenantIds', traits: {"smithy.api#documentation" => "<p>Array of strings.</p>"}))
    Meeting.add_member(:meeting_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'MeetingArn', traits: {"smithy.api#documentation" => "<p>The ARN of the meeting.</p>"}))
    Meeting.type = Types::Meeting
    MeetingFeatureStatus.add_member(:available, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AVAILABLE', traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    MeetingFeatureStatus.add_member(:unavailable, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNAVAILABLE', traits: {"smithy.api#enumValue" => "UNAVAILABLE"}))
    MeetingFeaturesConfiguration.add_member(:audio, Smithy::Schema::Shapes::ShapeRef.new(shape: AudioFeatures, location_name: 'Audio', traits: {"smithy.api#documentation" => "<p>The configuration settings for the audio features available to a meeting.</p>"}))
    MeetingFeaturesConfiguration.add_member(:video, Smithy::Schema::Shapes::ShapeRef.new(shape: VideoFeatures, location_name: 'Video', traits: {"smithy.api#documentation" => "<p>The configuration settings for the video features available to a meeting.</p>"}))
    MeetingFeaturesConfiguration.add_member(:content, Smithy::Schema::Shapes::ShapeRef.new(shape: ContentFeatures, location_name: 'Content', traits: {"smithy.api#documentation" => "<p>The configuration settings for the content features available to a meeting.</p>"}))
    MeetingFeaturesConfiguration.add_member(:attendee, Smithy::Schema::Shapes::ShapeRef.new(shape: AttendeeFeatures, location_name: 'Attendee', traits: {"smithy.api#documentation" => "<p>The configuration settings for the attendee features available to a meeting.</p>"}))
    MeetingFeaturesConfiguration.type = Types::MeetingFeaturesConfiguration
    NotFoundException.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Code'))
    NotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    NotFoundException.add_member(:request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RequestId', traits: {"smithy.api#documentation" => "<p>The request ID associated with the call responsible for the exception.</p>"}))
    NotFoundException.type = Types::NotFoundException
    NotificationsConfiguration.add_member(:lambda_function_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'LambdaFunctionArn', traits: {"smithy.api#documentation" => "<p>The ARN of the Amazon Web Services Lambda function in the notifications configuration.</p>"}))
    NotificationsConfiguration.add_member(:sns_topic_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'SnsTopicArn', traits: {"smithy.api#documentation" => "<p>The ARN of the SNS topic.</p>"}))
    NotificationsConfiguration.add_member(:sqs_queue_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'SqsQueueArn', traits: {"smithy.api#documentation" => "<p>The ARN of the SQS queue.</p>"}))
    NotificationsConfiguration.type = Types::NotificationsConfiguration
    ResourceNotFoundException.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Code'))
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    ResourceNotFoundException.add_member(:request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RequestId', traits: {"smithy.api#documentation" => "<p>The ID of the resource that couldn't be found.</p>"}))
    ResourceNotFoundException.add_member(:resource_name, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'ResourceName', traits: {"smithy.api#documentation" => "<p>The name of the resource that couldn't be found.</p>"}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ServiceFailureException.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Code'))
    ServiceFailureException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    ServiceFailureException.add_member(:request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RequestId', traits: {"smithy.api#documentation" => "<p>The ID of the failed request.</p>"}))
    ServiceFailureException.type = Types::ServiceFailureException
    ServiceUnavailableException.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Code'))
    ServiceUnavailableException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    ServiceUnavailableException.add_member(:request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RequestId', traits: {"smithy.api#documentation" => "<p>The request id associated with the call responsible for the exception.</p>"}))
    ServiceUnavailableException.add_member(:retry_after_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: RetryAfterSeconds, location_name: 'RetryAfterSeconds', traits: {"smithy.api#documentation" => "<p>The number of seconds the caller should wait before retrying.</p>", "smithy.api#httpHeader" => "Retry-After"}))
    ServiceUnavailableException.type = Types::ServiceUnavailableException
    StartMeetingTranscriptionRequest.add_member(:meeting_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GuidString, location_name: 'MeetingId', traits: {"smithy.api#documentation" => "<p>The unique ID of the meeting being transcribed.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartMeetingTranscriptionRequest.add_member(:transcription_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: TranscriptionConfiguration, location_name: 'TranscriptionConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration for the current transcription operation. Must contain <code>EngineTranscribeSettings</code> or \n            <code>EngineTranscribeMedicalSettings</code>.</p>", "smithy.api#required" => {}}))
    StartMeetingTranscriptionRequest.type = Types::StartMeetingTranscriptionRequest
    StopMeetingTranscriptionRequest.add_member(:meeting_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GuidString, location_name: 'MeetingId', traits: {"smithy.api#documentation" => "<p>The unique ID of the meeting for which you stop transcription.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StopMeetingTranscriptionRequest.type = Types::StopMeetingTranscriptionRequest
    Tag.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: 'Key', traits: {"smithy.api#documentation" => "<p>The tag's key.</p>", "smithy.api#required" => {}}))
    Tag.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>The tag's value.</p>", "smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeyList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    TagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'ResourceARN', traits: {"smithy.api#documentation" => "<p>The ARN of the resource.</p>", "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>Lists the requested tags.</p>", "smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    TenantIdList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TenantId)
    ThrottlingException.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Code'))
    ThrottlingException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    ThrottlingException.add_member(:request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RequestId', traits: {"smithy.api#documentation" => "<p>The ID of the request that exceeded the throttling limit.</p>"}))
    ThrottlingException.type = Types::ThrottlingException
    TooManyTagsException.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Code'))
    TooManyTagsException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    TooManyTagsException.add_member(:request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RequestId', traits: {"smithy.api#documentation" => "<p>The ID of the request that contains too many tags.</p>"}))
    TooManyTagsException.add_member(:resource_name, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'ResourceName', traits: {"smithy.api#documentation" => "<p>The name of the resource that received too many tags.</p>"}))
    TooManyTagsException.type = Types::TooManyTagsException
    TranscribeContentIdentificationType.add_member(:pii, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PII', traits: {"smithy.api#enumValue" => "PII"}))
    TranscribeContentRedactionType.add_member(:pii, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PII', traits: {"smithy.api#enumValue" => "PII"}))
    TranscribeLanguageCode.add_member(:en_us, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EN_US', traits: {"smithy.api#enumValue" => "en-US"}))
    TranscribeLanguageCode.add_member(:en_gb, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EN_GB', traits: {"smithy.api#enumValue" => "en-GB"}))
    TranscribeLanguageCode.add_member(:es_us, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ES_US', traits: {"smithy.api#enumValue" => "es-US"}))
    TranscribeLanguageCode.add_member(:fr_ca, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FR_CA', traits: {"smithy.api#enumValue" => "fr-CA"}))
    TranscribeLanguageCode.add_member(:fr_fr, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FR_FR', traits: {"smithy.api#enumValue" => "fr-FR"}))
    TranscribeLanguageCode.add_member(:en_au, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EN_AU', traits: {"smithy.api#enumValue" => "en-AU"}))
    TranscribeLanguageCode.add_member(:it_it, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IT_IT', traits: {"smithy.api#enumValue" => "it-IT"}))
    TranscribeLanguageCode.add_member(:de_de, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DE_DE', traits: {"smithy.api#enumValue" => "de-DE"}))
    TranscribeLanguageCode.add_member(:pt_br, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PT_BR', traits: {"smithy.api#enumValue" => "pt-BR"}))
    TranscribeLanguageCode.add_member(:ja_jp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'JA_JP', traits: {"smithy.api#enumValue" => "ja-JP"}))
    TranscribeLanguageCode.add_member(:ko_kr, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'KO_KR', traits: {"smithy.api#enumValue" => "ko-KR"}))
    TranscribeLanguageCode.add_member(:zh_cn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ZH_CN', traits: {"smithy.api#enumValue" => "zh-CN"}))
    TranscribeLanguageCode.add_member(:th_th, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TH_TH', traits: {"smithy.api#enumValue" => "th-TH"}))
    TranscribeLanguageCode.add_member(:hi_in, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HI_IN', traits: {"smithy.api#enumValue" => "hi-IN"}))
    TranscribeMedicalContentIdentificationType.add_member(:phi, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PHI', traits: {"smithy.api#enumValue" => "PHI"}))
    TranscribeMedicalLanguageCode.add_member(:en_us, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EN_US', traits: {"smithy.api#enumValue" => "en-US"}))
    TranscribeMedicalRegion.add_member(:us_east_1, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'US_EAST_1', traits: {"smithy.api#enumValue" => "us-east-1"}))
    TranscribeMedicalRegion.add_member(:us_east_2, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'US_EAST_2', traits: {"smithy.api#enumValue" => "us-east-2"}))
    TranscribeMedicalRegion.add_member(:us_west_2, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'US_WEST_2', traits: {"smithy.api#enumValue" => "us-west-2"}))
    TranscribeMedicalRegion.add_member(:ap_southeast_2, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AP_SOUTHEAST_2', traits: {"smithy.api#enumValue" => "ap-southeast-2"}))
    TranscribeMedicalRegion.add_member(:ca_central_1, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CA_CENTRAL_1', traits: {"smithy.api#enumValue" => "ca-central-1"}))
    TranscribeMedicalRegion.add_member(:eu_west_1, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EU_WEST_1', traits: {"smithy.api#enumValue" => "eu-west-1"}))
    TranscribeMedicalRegion.add_member(:auto, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AUTO', traits: {"smithy.api#enumValue" => "auto"}))
    TranscribeMedicalSpecialty.add_member(:primarycare, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PRIMARYCARE', traits: {"smithy.api#enumValue" => "PRIMARYCARE"}))
    TranscribeMedicalSpecialty.add_member(:cardiology, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CARDIOLOGY', traits: {"smithy.api#enumValue" => "CARDIOLOGY"}))
    TranscribeMedicalSpecialty.add_member(:neurology, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NEUROLOGY', traits: {"smithy.api#enumValue" => "NEUROLOGY"}))
    TranscribeMedicalSpecialty.add_member(:oncology, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ONCOLOGY', traits: {"smithy.api#enumValue" => "ONCOLOGY"}))
    TranscribeMedicalSpecialty.add_member(:radiology, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RADIOLOGY', traits: {"smithy.api#enumValue" => "RADIOLOGY"}))
    TranscribeMedicalSpecialty.add_member(:urology, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UROLOGY', traits: {"smithy.api#enumValue" => "UROLOGY"}))
    TranscribeMedicalType.add_member(:conversation, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONVERSATION', traits: {"smithy.api#enumValue" => "CONVERSATION"}))
    TranscribeMedicalType.add_member(:dictation, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DICTATION', traits: {"smithy.api#enumValue" => "DICTATION"}))
    TranscribePartialResultsStability.add_member(:low, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LOW', traits: {"smithy.api#enumValue" => "low"}))
    TranscribePartialResultsStability.add_member(:medium, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MEDIUM', traits: {"smithy.api#enumValue" => "medium"}))
    TranscribePartialResultsStability.add_member(:high, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HIGH', traits: {"smithy.api#enumValue" => "high"}))
    TranscribeRegion.add_member(:us_east_2, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'US_EAST_2', traits: {"smithy.api#enumValue" => "us-east-2"}))
    TranscribeRegion.add_member(:us_east_1, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'US_EAST_1', traits: {"smithy.api#enumValue" => "us-east-1"}))
    TranscribeRegion.add_member(:us_west_2, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'US_WEST_2', traits: {"smithy.api#enumValue" => "us-west-2"}))
    TranscribeRegion.add_member(:ap_northeast_2, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AP_NORTHEAST_2', traits: {"smithy.api#enumValue" => "ap-northeast-2"}))
    TranscribeRegion.add_member(:ap_southeast_2, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AP_SOUTHEAST_2', traits: {"smithy.api#enumValue" => "ap-southeast-2"}))
    TranscribeRegion.add_member(:ap_northeast_1, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AP_NORTHEAST_1', traits: {"smithy.api#enumValue" => "ap-northeast-1"}))
    TranscribeRegion.add_member(:ca_central_1, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CA_CENTRAL_1', traits: {"smithy.api#enumValue" => "ca-central-1"}))
    TranscribeRegion.add_member(:eu_central_1, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EU_CENTRAL_1', traits: {"smithy.api#enumValue" => "eu-central-1"}))
    TranscribeRegion.add_member(:eu_west_1, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EU_WEST_1', traits: {"smithy.api#enumValue" => "eu-west-1"}))
    TranscribeRegion.add_member(:eu_west_2, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EU_WEST_2', traits: {"smithy.api#enumValue" => "eu-west-2"}))
    TranscribeRegion.add_member(:sa_east_1, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SA_EAST_1', traits: {"smithy.api#enumValue" => "sa-east-1"}))
    TranscribeRegion.add_member(:auto, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AUTO', traits: {"smithy.api#enumValue" => "auto"}))
    TranscribeRegion.add_member(:us_gov_west_1, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'US_GOV_WEST_1', traits: {"smithy.api#enumValue" => "us-gov-west-1"}))
    TranscribeVocabularyFilterMethod.add_member(:remove, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REMOVE', traits: {"smithy.api#enumValue" => "remove"}))
    TranscribeVocabularyFilterMethod.add_member(:mask, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MASK', traits: {"smithy.api#enumValue" => "mask"}))
    TranscribeVocabularyFilterMethod.add_member(:tag, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TAG', traits: {"smithy.api#enumValue" => "tag"}))
    TranscriptionConfiguration.add_member(:engine_transcribe_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: EngineTranscribeSettings, location_name: 'EngineTranscribeSettings', traits: {"smithy.api#documentation" => "<p>The transcription configuration settings passed to Amazon Transcribe.</p>"}))
    TranscriptionConfiguration.add_member(:engine_transcribe_medical_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: EngineTranscribeMedicalSettings, location_name: 'EngineTranscribeMedicalSettings', traits: {"smithy.api#documentation" => "<p>The transcription configuration settings passed to Amazon Transcribe Medical.</p>"}))
    TranscriptionConfiguration.type = Types::TranscriptionConfiguration
    UnauthorizedException.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Code'))
    UnauthorizedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    UnauthorizedException.add_member(:request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RequestId', traits: {"smithy.api#documentation" => "<p>The request id associated with the call responsible for the exception.</p>"}))
    UnauthorizedException.type = Types::UnauthorizedException
    UnprocessableEntityException.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Code'))
    UnprocessableEntityException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    UnprocessableEntityException.add_member(:request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RequestId', traits: {"smithy.api#documentation" => "<p>The request id associated with the call responsible for the exception.</p>"}))
    UnprocessableEntityException.type = Types::UnprocessableEntityException
    UntagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'ResourceARN', traits: {"smithy.api#documentation" => "<p>The ARN of the resource that you're removing tags from.</p>", "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'TagKeys', traits: {"smithy.api#documentation" => "<p>The tag keys being removed from the resources.</p>", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateAttendeeCapabilitiesRequest.add_member(:meeting_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GuidString, location_name: 'MeetingId', traits: {"smithy.api#documentation" => "<p>The ID of the meeting associated with the update request.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAttendeeCapabilitiesRequest.add_member(:attendee_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GuidString, location_name: 'AttendeeId', traits: {"smithy.api#documentation" => "<p>The ID of the attendee associated with the update request.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAttendeeCapabilitiesRequest.add_member(:capabilities, Smithy::Schema::Shapes::ShapeRef.new(shape: AttendeeCapabilities, location_name: 'Capabilities', traits: {"smithy.api#documentation" => "<p>The capabilities that you want to update.</p>", "smithy.api#required" => {}}))
    UpdateAttendeeCapabilitiesRequest.type = Types::UpdateAttendeeCapabilitiesRequest
    UpdateAttendeeCapabilitiesResponse.add_member(:attendee, Smithy::Schema::Shapes::ShapeRef.new(shape: Attendee, location_name: 'Attendee', traits: {"smithy.api#documentation" => "<p>The updated attendee data.</p>"}))
    UpdateAttendeeCapabilitiesResponse.type = Types::UpdateAttendeeCapabilitiesResponse
    VideoFeatures.add_member(:max_resolution, Smithy::Schema::Shapes::ShapeRef.new(shape: VideoResolution, location_name: 'MaxResolution', traits: {"smithy.api#documentation" => "<p>The maximum video resolution for the meeting. Applies to all attendees.</p>\n         <note>\n            <p>Defaults to <code>HD</code>. To use <code>FHD</code>, you must also provide a <code>MeetingFeatures:Attendee:MaxCount</code> value and override the default size \n            limit of 250 attendees.</p>\n         </note>"}))
    VideoFeatures.type = Types::VideoFeatures
    VideoResolution.add_member(:none, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NONE', traits: {"smithy.api#enumValue" => "None"}))
    VideoResolution.add_member(:hd, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HD', traits: {"smithy.api#enumValue" => "HD"}))
    VideoResolution.add_member(:fhd, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FHD', traits: {"smithy.api#enumValue" => "FHD"}))

    ChimeMeetingsSDKService = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.chimesdkmeetings#ChimeMeetingsSDKService"
      service.name = "ChimeMeetingsSDKService"
      service.version = "2021-07-15"
      service.traits = {"aws.api#service" => {"sdkId" => "Chime SDK Meetings", "arnNamespace" => "chime", "cloudFormationName" => "ChimeSDKMeetings", "cloudTrailEventSource" => "chimesdkmeetings.amazonaws.com", "endpointPrefix" => "meetings-chime"}, "aws.auth#sigv4" => {"name" => "chime"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "Amazon Chime SDK Meetings"}
      service.add_operation(:batch_create_attendee, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmeetings#BatchCreateAttendee"
        operation.name = "BatchCreateAttendee"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchCreateAttendeeRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchCreateAttendeeResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnprocessableEntityException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/meetings/{MeetingId}/attendees?operation=batch-create", "code" => 200}}
      end)
      service.add_operation(:batch_update_attendee_capabilities_except, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmeetings#BatchUpdateAttendeeCapabilitiesExcept"
        operation.name = "BatchUpdateAttendeeCapabilitiesExcept"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchUpdateAttendeeCapabilitiesExceptRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/meetings/{MeetingId}/attendees/capabilities?operation=batch-update-except", "code" => 200}}
      end)
      service.add_operation(:create_attendee, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmeetings#CreateAttendee"
        operation.name = "CreateAttendee"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAttendeeRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAttendeeResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnprocessableEntityException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/meetings/{MeetingId}/attendees", "code" => 200}}
      end)
      service.add_operation(:create_meeting, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmeetings#CreateMeeting"
        operation.name = "CreateMeeting"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateMeetingRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateMeetingResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/meetings", "code" => 200}}
      end)
      service.add_operation(:create_meeting_with_attendees, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmeetings#CreateMeetingWithAttendees"
        operation.name = "CreateMeetingWithAttendees"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateMeetingWithAttendeesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateMeetingWithAttendeesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/meetings?operation=create-attendees", "code" => 200}}
      end)
      service.add_operation(:delete_attendee, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmeetings#DeleteAttendee"
        operation.name = "DeleteAttendee"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAttendeeRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/meetings/{MeetingId}/attendees/{AttendeeId}", "code" => 204}}
      end)
      service.add_operation(:delete_meeting, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmeetings#DeleteMeeting"
        operation.name = "DeleteMeeting"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteMeetingRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/meetings/{MeetingId}", "code" => 204}}
      end)
      service.add_operation(:get_attendee, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmeetings#GetAttendee"
        operation.name = "GetAttendee"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAttendeeRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAttendeeResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/meetings/{MeetingId}/attendees/{AttendeeId}", "code" => 200}}
      end)
      service.add_operation(:get_meeting, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmeetings#GetMeeting"
        operation.name = "GetMeeting"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetMeetingRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetMeetingResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/meetings/{MeetingId}", "code" => 200}}
      end)
      service.add_operation(:list_attendees, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmeetings#ListAttendees"
        operation.name = "ListAttendees"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAttendeesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAttendeesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/meetings/{MeetingId}/attendees", "code" => 200}}
        operation[:paginator] = Paginators::ListAttendees.new
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmeetings#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags", "code" => 200}}
      end)
      service.add_operation(:start_meeting_transcription, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmeetings#StartMeetingTranscription"
        operation.name = "StartMeetingTranscription"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartMeetingTranscriptionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnprocessableEntityException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/meetings/{MeetingId}/transcription?operation=start", "code" => 200}}
      end)
      service.add_operation(:stop_meeting_transcription, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmeetings#StopMeetingTranscription"
        operation.name = "StopMeetingTranscription"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StopMeetingTranscriptionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnprocessableEntityException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/meetings/{MeetingId}/transcription?operation=stop", "code" => 200}}
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmeetings#TagResource"
        operation.name = "TagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTagsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags?operation=tag-resource", "code" => 204}}
      end)
      service.add_operation(:untag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmeetings#UntagResource"
        operation.name = "UntagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags?operation=untag-resource", "code" => 204}}
      end)
      service.add_operation(:update_attendee_capabilities, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.chimesdkmeetings#UpdateAttendeeCapabilities"
        operation.name = "UpdateAttendeeCapabilities"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAttendeeCapabilitiesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAttendeeCapabilitiesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/meetings/{MeetingId}/attendees/{AttendeeId}/capabilities", "code" => 200}}
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
