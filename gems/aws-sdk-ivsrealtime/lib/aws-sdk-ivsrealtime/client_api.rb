# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::IVSRealTime
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreateParticipantTokenRequest = Shapes::StructureShape.new(name: 'CreateParticipantTokenRequest')
    CreateParticipantTokenResponse = Shapes::StructureShape.new(name: 'CreateParticipantTokenResponse')
    CreateStageRequest = Shapes::StructureShape.new(name: 'CreateStageRequest')
    CreateStageResponse = Shapes::StructureShape.new(name: 'CreateStageResponse')
    DeleteStageRequest = Shapes::StructureShape.new(name: 'DeleteStageRequest')
    DeleteStageResponse = Shapes::StructureShape.new(name: 'DeleteStageResponse')
    DisconnectParticipantReason = Shapes::StringShape.new(name: 'DisconnectParticipantReason')
    DisconnectParticipantRequest = Shapes::StructureShape.new(name: 'DisconnectParticipantRequest')
    DisconnectParticipantResponse = Shapes::StructureShape.new(name: 'DisconnectParticipantResponse')
    Event = Shapes::StructureShape.new(name: 'Event')
    EventErrorCode = Shapes::StringShape.new(name: 'EventErrorCode')
    EventList = Shapes::ListShape.new(name: 'EventList')
    EventName = Shapes::StringShape.new(name: 'EventName')
    GetParticipantRequest = Shapes::StructureShape.new(name: 'GetParticipantRequest')
    GetParticipantResponse = Shapes::StructureShape.new(name: 'GetParticipantResponse')
    GetStageRequest = Shapes::StructureShape.new(name: 'GetStageRequest')
    GetStageResponse = Shapes::StructureShape.new(name: 'GetStageResponse')
    GetStageSessionRequest = Shapes::StructureShape.new(name: 'GetStageSessionRequest')
    GetStageSessionResponse = Shapes::StructureShape.new(name: 'GetStageSessionResponse')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    ListParticipantEventsRequest = Shapes::StructureShape.new(name: 'ListParticipantEventsRequest')
    ListParticipantEventsResponse = Shapes::StructureShape.new(name: 'ListParticipantEventsResponse')
    ListParticipantsRequest = Shapes::StructureShape.new(name: 'ListParticipantsRequest')
    ListParticipantsResponse = Shapes::StructureShape.new(name: 'ListParticipantsResponse')
    ListStageSessionsRequest = Shapes::StructureShape.new(name: 'ListStageSessionsRequest')
    ListStageSessionsResponse = Shapes::StructureShape.new(name: 'ListStageSessionsResponse')
    ListStagesRequest = Shapes::StructureShape.new(name: 'ListStagesRequest')
    ListStagesResponse = Shapes::StructureShape.new(name: 'ListStagesResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    MaxParticipantEventResults = Shapes::IntegerShape.new(name: 'MaxParticipantEventResults')
    MaxParticipantResults = Shapes::IntegerShape.new(name: 'MaxParticipantResults')
    MaxStageResults = Shapes::IntegerShape.new(name: 'MaxStageResults')
    MaxStageSessionResults = Shapes::IntegerShape.new(name: 'MaxStageSessionResults')
    PaginationToken = Shapes::StringShape.new(name: 'PaginationToken')
    Participant = Shapes::StructureShape.new(name: 'Participant')
    ParticipantAttributes = Shapes::MapShape.new(name: 'ParticipantAttributes')
    ParticipantId = Shapes::StringShape.new(name: 'ParticipantId')
    ParticipantList = Shapes::ListShape.new(name: 'ParticipantList')
    ParticipantState = Shapes::StringShape.new(name: 'ParticipantState')
    ParticipantSummary = Shapes::StructureShape.new(name: 'ParticipantSummary')
    ParticipantToken = Shapes::StructureShape.new(name: 'ParticipantToken')
    ParticipantTokenAttributes = Shapes::MapShape.new(name: 'ParticipantTokenAttributes')
    ParticipantTokenCapabilities = Shapes::ListShape.new(name: 'ParticipantTokenCapabilities')
    ParticipantTokenCapability = Shapes::StringShape.new(name: 'ParticipantTokenCapability')
    ParticipantTokenConfiguration = Shapes::StructureShape.new(name: 'ParticipantTokenConfiguration')
    ParticipantTokenConfigurations = Shapes::ListShape.new(name: 'ParticipantTokenConfigurations')
    ParticipantTokenDurationMinutes = Shapes::IntegerShape.new(name: 'ParticipantTokenDurationMinutes')
    ParticipantTokenExpirationTime = Shapes::TimestampShape.new(name: 'ParticipantTokenExpirationTime', timestampFormat: "iso8601")
    ParticipantTokenId = Shapes::StringShape.new(name: 'ParticipantTokenId')
    ParticipantTokenList = Shapes::ListShape.new(name: 'ParticipantTokenList')
    ParticipantTokenString = Shapes::StringShape.new(name: 'ParticipantTokenString')
    ParticipantTokenUserId = Shapes::StringShape.new(name: 'ParticipantTokenUserId')
    PendingVerification = Shapes::StructureShape.new(name: 'PendingVerification')
    Published = Shapes::BooleanShape.new(name: 'Published')
    ResourceArn = Shapes::StringShape.new(name: 'ResourceArn')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    Stage = Shapes::StructureShape.new(name: 'Stage')
    StageArn = Shapes::StringShape.new(name: 'StageArn')
    StageName = Shapes::StringShape.new(name: 'StageName')
    StageSession = Shapes::StructureShape.new(name: 'StageSession')
    StageSessionId = Shapes::StringShape.new(name: 'StageSessionId')
    StageSessionList = Shapes::ListShape.new(name: 'StageSessionList')
    StageSessionSummary = Shapes::StructureShape.new(name: 'StageSessionSummary')
    StageSummary = Shapes::StructureShape.new(name: 'StageSummary')
    StageSummaryList = Shapes::ListShape.new(name: 'StageSummaryList')
    String = Shapes::StringShape.new(name: 'String')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    Tags = Shapes::MapShape.new(name: 'Tags')
    Time = Shapes::TimestampShape.new(name: 'Time', timestampFormat: "iso8601")
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateStageRequest = Shapes::StructureShape.new(name: 'UpdateStageRequest')
    UpdateStageResponse = Shapes::StructureShape.new(name: 'UpdateStageResponse')
    UserId = Shapes::StringShape.new(name: 'UserId')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    errorMessage = Shapes::StringShape.new(name: 'errorMessage')

    AccessDeniedException.add_member(:exception_message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "exceptionMessage"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    ConflictException.add_member(:exception_message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "exceptionMessage"))
    ConflictException.struct_class = Types::ConflictException

    CreateParticipantTokenRequest.add_member(:attributes, Shapes::ShapeRef.new(shape: ParticipantTokenAttributes, location_name: "attributes"))
    CreateParticipantTokenRequest.add_member(:capabilities, Shapes::ShapeRef.new(shape: ParticipantTokenCapabilities, location_name: "capabilities"))
    CreateParticipantTokenRequest.add_member(:duration, Shapes::ShapeRef.new(shape: ParticipantTokenDurationMinutes, location_name: "duration"))
    CreateParticipantTokenRequest.add_member(:stage_arn, Shapes::ShapeRef.new(shape: StageArn, required: true, location_name: "stageArn"))
    CreateParticipantTokenRequest.add_member(:user_id, Shapes::ShapeRef.new(shape: ParticipantTokenUserId, location_name: "userId"))
    CreateParticipantTokenRequest.struct_class = Types::CreateParticipantTokenRequest

    CreateParticipantTokenResponse.add_member(:participant_token, Shapes::ShapeRef.new(shape: ParticipantToken, location_name: "participantToken"))
    CreateParticipantTokenResponse.struct_class = Types::CreateParticipantTokenResponse

    CreateStageRequest.add_member(:name, Shapes::ShapeRef.new(shape: StageName, location_name: "name"))
    CreateStageRequest.add_member(:participant_token_configurations, Shapes::ShapeRef.new(shape: ParticipantTokenConfigurations, location_name: "participantTokenConfigurations"))
    CreateStageRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    CreateStageRequest.struct_class = Types::CreateStageRequest

    CreateStageResponse.add_member(:participant_tokens, Shapes::ShapeRef.new(shape: ParticipantTokenList, location_name: "participantTokens"))
    CreateStageResponse.add_member(:stage, Shapes::ShapeRef.new(shape: Stage, location_name: "stage"))
    CreateStageResponse.struct_class = Types::CreateStageResponse

    DeleteStageRequest.add_member(:arn, Shapes::ShapeRef.new(shape: StageArn, required: true, location_name: "arn"))
    DeleteStageRequest.struct_class = Types::DeleteStageRequest

    DeleteStageResponse.struct_class = Types::DeleteStageResponse

    DisconnectParticipantRequest.add_member(:participant_id, Shapes::ShapeRef.new(shape: ParticipantTokenId, required: true, location_name: "participantId"))
    DisconnectParticipantRequest.add_member(:reason, Shapes::ShapeRef.new(shape: DisconnectParticipantReason, location_name: "reason"))
    DisconnectParticipantRequest.add_member(:stage_arn, Shapes::ShapeRef.new(shape: StageArn, required: true, location_name: "stageArn"))
    DisconnectParticipantRequest.struct_class = Types::DisconnectParticipantRequest

    DisconnectParticipantResponse.struct_class = Types::DisconnectParticipantResponse

    Event.add_member(:error_code, Shapes::ShapeRef.new(shape: EventErrorCode, location_name: "errorCode"))
    Event.add_member(:event_time, Shapes::ShapeRef.new(shape: Time, location_name: "eventTime"))
    Event.add_member(:name, Shapes::ShapeRef.new(shape: EventName, location_name: "name"))
    Event.add_member(:participant_id, Shapes::ShapeRef.new(shape: ParticipantId, location_name: "participantId"))
    Event.add_member(:remote_participant_id, Shapes::ShapeRef.new(shape: ParticipantId, location_name: "remoteParticipantId"))
    Event.struct_class = Types::Event

    EventList.member = Shapes::ShapeRef.new(shape: Event)

    GetParticipantRequest.add_member(:participant_id, Shapes::ShapeRef.new(shape: ParticipantId, required: true, location_name: "participantId"))
    GetParticipantRequest.add_member(:session_id, Shapes::ShapeRef.new(shape: StageSessionId, required: true, location_name: "sessionId"))
    GetParticipantRequest.add_member(:stage_arn, Shapes::ShapeRef.new(shape: StageArn, required: true, location_name: "stageArn"))
    GetParticipantRequest.struct_class = Types::GetParticipantRequest

    GetParticipantResponse.add_member(:participant, Shapes::ShapeRef.new(shape: Participant, location_name: "participant"))
    GetParticipantResponse.struct_class = Types::GetParticipantResponse

    GetStageRequest.add_member(:arn, Shapes::ShapeRef.new(shape: StageArn, required: true, location_name: "arn"))
    GetStageRequest.struct_class = Types::GetStageRequest

    GetStageResponse.add_member(:stage, Shapes::ShapeRef.new(shape: Stage, location_name: "stage"))
    GetStageResponse.struct_class = Types::GetStageResponse

    GetStageSessionRequest.add_member(:session_id, Shapes::ShapeRef.new(shape: StageSessionId, required: true, location_name: "sessionId"))
    GetStageSessionRequest.add_member(:stage_arn, Shapes::ShapeRef.new(shape: StageArn, required: true, location_name: "stageArn"))
    GetStageSessionRequest.struct_class = Types::GetStageSessionRequest

    GetStageSessionResponse.add_member(:stage_session, Shapes::ShapeRef.new(shape: StageSession, location_name: "stageSession"))
    GetStageSessionResponse.struct_class = Types::GetStageSessionResponse

    InternalServerException.add_member(:exception_message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "exceptionMessage"))
    InternalServerException.struct_class = Types::InternalServerException

    ListParticipantEventsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxParticipantEventResults, location_name: "maxResults"))
    ListParticipantEventsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListParticipantEventsRequest.add_member(:participant_id, Shapes::ShapeRef.new(shape: ParticipantId, required: true, location_name: "participantId"))
    ListParticipantEventsRequest.add_member(:session_id, Shapes::ShapeRef.new(shape: StageSessionId, required: true, location_name: "sessionId"))
    ListParticipantEventsRequest.add_member(:stage_arn, Shapes::ShapeRef.new(shape: StageArn, required: true, location_name: "stageArn"))
    ListParticipantEventsRequest.struct_class = Types::ListParticipantEventsRequest

    ListParticipantEventsResponse.add_member(:events, Shapes::ShapeRef.new(shape: EventList, required: true, location_name: "events"))
    ListParticipantEventsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListParticipantEventsResponse.struct_class = Types::ListParticipantEventsResponse

    ListParticipantsRequest.add_member(:filter_by_published, Shapes::ShapeRef.new(shape: Published, location_name: "filterByPublished"))
    ListParticipantsRequest.add_member(:filter_by_state, Shapes::ShapeRef.new(shape: ParticipantState, location_name: "filterByState"))
    ListParticipantsRequest.add_member(:filter_by_user_id, Shapes::ShapeRef.new(shape: UserId, location_name: "filterByUserId"))
    ListParticipantsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxParticipantResults, location_name: "maxResults"))
    ListParticipantsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListParticipantsRequest.add_member(:session_id, Shapes::ShapeRef.new(shape: StageSessionId, required: true, location_name: "sessionId"))
    ListParticipantsRequest.add_member(:stage_arn, Shapes::ShapeRef.new(shape: StageArn, required: true, location_name: "stageArn"))
    ListParticipantsRequest.struct_class = Types::ListParticipantsRequest

    ListParticipantsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListParticipantsResponse.add_member(:participants, Shapes::ShapeRef.new(shape: ParticipantList, required: true, location_name: "participants"))
    ListParticipantsResponse.struct_class = Types::ListParticipantsResponse

    ListStageSessionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxStageSessionResults, location_name: "maxResults"))
    ListStageSessionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListStageSessionsRequest.add_member(:stage_arn, Shapes::ShapeRef.new(shape: StageArn, required: true, location_name: "stageArn"))
    ListStageSessionsRequest.struct_class = Types::ListStageSessionsRequest

    ListStageSessionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListStageSessionsResponse.add_member(:stage_sessions, Shapes::ShapeRef.new(shape: StageSessionList, required: true, location_name: "stageSessions"))
    ListStageSessionsResponse.struct_class = Types::ListStageSessionsResponse

    ListStagesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxStageResults, location_name: "maxResults"))
    ListStagesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListStagesRequest.struct_class = Types::ListStagesRequest

    ListStagesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListStagesResponse.add_member(:stages, Shapes::ShapeRef.new(shape: StageSummaryList, required: true, location_name: "stages"))
    ListStagesResponse.struct_class = Types::ListStagesResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location: "uri", location_name: "resourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, required: true, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    Participant.add_member(:attributes, Shapes::ShapeRef.new(shape: ParticipantAttributes, location_name: "attributes"))
    Participant.add_member(:first_join_time, Shapes::ShapeRef.new(shape: Time, location_name: "firstJoinTime"))
    Participant.add_member(:participant_id, Shapes::ShapeRef.new(shape: ParticipantId, location_name: "participantId"))
    Participant.add_member(:published, Shapes::ShapeRef.new(shape: Published, location_name: "published"))
    Participant.add_member(:state, Shapes::ShapeRef.new(shape: ParticipantState, location_name: "state"))
    Participant.add_member(:user_id, Shapes::ShapeRef.new(shape: UserId, location_name: "userId"))
    Participant.struct_class = Types::Participant

    ParticipantAttributes.key = Shapes::ShapeRef.new(shape: String)
    ParticipantAttributes.value = Shapes::ShapeRef.new(shape: String)

    ParticipantList.member = Shapes::ShapeRef.new(shape: ParticipantSummary)

    ParticipantSummary.add_member(:first_join_time, Shapes::ShapeRef.new(shape: Time, location_name: "firstJoinTime"))
    ParticipantSummary.add_member(:participant_id, Shapes::ShapeRef.new(shape: ParticipantId, location_name: "participantId"))
    ParticipantSummary.add_member(:published, Shapes::ShapeRef.new(shape: Published, location_name: "published"))
    ParticipantSummary.add_member(:state, Shapes::ShapeRef.new(shape: ParticipantState, location_name: "state"))
    ParticipantSummary.add_member(:user_id, Shapes::ShapeRef.new(shape: UserId, location_name: "userId"))
    ParticipantSummary.struct_class = Types::ParticipantSummary

    ParticipantToken.add_member(:attributes, Shapes::ShapeRef.new(shape: ParticipantTokenAttributes, location_name: "attributes"))
    ParticipantToken.add_member(:capabilities, Shapes::ShapeRef.new(shape: ParticipantTokenCapabilities, location_name: "capabilities"))
    ParticipantToken.add_member(:duration, Shapes::ShapeRef.new(shape: ParticipantTokenDurationMinutes, location_name: "duration"))
    ParticipantToken.add_member(:expiration_time, Shapes::ShapeRef.new(shape: ParticipantTokenExpirationTime, location_name: "expirationTime"))
    ParticipantToken.add_member(:participant_id, Shapes::ShapeRef.new(shape: ParticipantTokenId, location_name: "participantId"))
    ParticipantToken.add_member(:token, Shapes::ShapeRef.new(shape: ParticipantTokenString, location_name: "token"))
    ParticipantToken.add_member(:user_id, Shapes::ShapeRef.new(shape: ParticipantTokenUserId, location_name: "userId"))
    ParticipantToken.struct_class = Types::ParticipantToken

    ParticipantTokenAttributes.key = Shapes::ShapeRef.new(shape: String)
    ParticipantTokenAttributes.value = Shapes::ShapeRef.new(shape: String)

    ParticipantTokenCapabilities.member = Shapes::ShapeRef.new(shape: ParticipantTokenCapability)

    ParticipantTokenConfiguration.add_member(:attributes, Shapes::ShapeRef.new(shape: ParticipantTokenAttributes, location_name: "attributes"))
    ParticipantTokenConfiguration.add_member(:capabilities, Shapes::ShapeRef.new(shape: ParticipantTokenCapabilities, location_name: "capabilities"))
    ParticipantTokenConfiguration.add_member(:duration, Shapes::ShapeRef.new(shape: ParticipantTokenDurationMinutes, location_name: "duration"))
    ParticipantTokenConfiguration.add_member(:user_id, Shapes::ShapeRef.new(shape: ParticipantTokenUserId, location_name: "userId"))
    ParticipantTokenConfiguration.struct_class = Types::ParticipantTokenConfiguration

    ParticipantTokenConfigurations.member = Shapes::ShapeRef.new(shape: ParticipantTokenConfiguration)

    ParticipantTokenList.member = Shapes::ShapeRef.new(shape: ParticipantToken)

    PendingVerification.add_member(:exception_message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "exceptionMessage"))
    PendingVerification.struct_class = Types::PendingVerification

    ResourceNotFoundException.add_member(:exception_message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "exceptionMessage"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ServiceQuotaExceededException.add_member(:exception_message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "exceptionMessage"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    Stage.add_member(:active_session_id, Shapes::ShapeRef.new(shape: StageSessionId, location_name: "activeSessionId"))
    Stage.add_member(:arn, Shapes::ShapeRef.new(shape: StageArn, required: true, location_name: "arn"))
    Stage.add_member(:name, Shapes::ShapeRef.new(shape: StageName, location_name: "name"))
    Stage.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    Stage.struct_class = Types::Stage

    StageSession.add_member(:end_time, Shapes::ShapeRef.new(shape: Time, location_name: "endTime"))
    StageSession.add_member(:session_id, Shapes::ShapeRef.new(shape: StageSessionId, location_name: "sessionId"))
    StageSession.add_member(:start_time, Shapes::ShapeRef.new(shape: Time, location_name: "startTime"))
    StageSession.struct_class = Types::StageSession

    StageSessionList.member = Shapes::ShapeRef.new(shape: StageSessionSummary)

    StageSessionSummary.add_member(:end_time, Shapes::ShapeRef.new(shape: Time, location_name: "endTime"))
    StageSessionSummary.add_member(:session_id, Shapes::ShapeRef.new(shape: StageSessionId, location_name: "sessionId"))
    StageSessionSummary.add_member(:start_time, Shapes::ShapeRef.new(shape: Time, location_name: "startTime"))
    StageSessionSummary.struct_class = Types::StageSessionSummary

    StageSummary.add_member(:active_session_id, Shapes::ShapeRef.new(shape: StageSessionId, location_name: "activeSessionId"))
    StageSummary.add_member(:arn, Shapes::ShapeRef.new(shape: StageArn, required: true, location_name: "arn"))
    StageSummary.add_member(:name, Shapes::ShapeRef.new(shape: StageName, location_name: "name"))
    StageSummary.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    StageSummary.struct_class = Types::StageSummary

    StageSummaryList.member = Shapes::ShapeRef.new(shape: StageSummary)

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location: "uri", location_name: "resourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    Tags.key = Shapes::ShapeRef.new(shape: TagKey)
    Tags.value = Shapes::ShapeRef.new(shape: TagValue)

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location: "uri", location_name: "resourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateStageRequest.add_member(:arn, Shapes::ShapeRef.new(shape: StageArn, required: true, location_name: "arn"))
    UpdateStageRequest.add_member(:name, Shapes::ShapeRef.new(shape: StageName, location_name: "name"))
    UpdateStageRequest.struct_class = Types::UpdateStageRequest

    UpdateStageResponse.add_member(:stage, Shapes::ShapeRef.new(shape: Stage, location_name: "stage"))
    UpdateStageResponse.struct_class = Types::UpdateStageResponse

    ValidationException.add_member(:exception_message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "exceptionMessage"))
    ValidationException.struct_class = Types::ValidationException


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2020-07-14"

      api.metadata = {
        "apiVersion" => "2020-07-14",
        "endpointPrefix" => "ivsrealtime",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceAbbreviation" => "ivsrealtime",
        "serviceFullName" => "Amazon Interactive Video Service RealTime",
        "serviceId" => "IVS RealTime",
        "signatureVersion" => "v4",
        "signingName" => "ivs",
        "uid" => "ivs-realtime-2020-07-14",
      }

      api.add_operation(:create_participant_token, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateParticipantToken"
        o.http_method = "POST"
        o.http_request_uri = "/CreateParticipantToken"
        o.input = Shapes::ShapeRef.new(shape: CreateParticipantTokenRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateParticipantTokenResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: PendingVerification)
      end)

      api.add_operation(:create_stage, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateStage"
        o.http_method = "POST"
        o.http_request_uri = "/CreateStage"
        o.input = Shapes::ShapeRef.new(shape: CreateStageRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateStageResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: PendingVerification)
      end)

      api.add_operation(:delete_stage, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteStage"
        o.http_method = "POST"
        o.http_request_uri = "/DeleteStage"
        o.input = Shapes::ShapeRef.new(shape: DeleteStageRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteStageResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: PendingVerification)
      end)

      api.add_operation(:disconnect_participant, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisconnectParticipant"
        o.http_method = "POST"
        o.http_request_uri = "/DisconnectParticipant"
        o.input = Shapes::ShapeRef.new(shape: DisconnectParticipantRequest)
        o.output = Shapes::ShapeRef.new(shape: DisconnectParticipantResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: PendingVerification)
      end)

      api.add_operation(:get_participant, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetParticipant"
        o.http_method = "POST"
        o.http_request_uri = "/GetParticipant"
        o.input = Shapes::ShapeRef.new(shape: GetParticipantRequest)
        o.output = Shapes::ShapeRef.new(shape: GetParticipantResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_stage, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetStage"
        o.http_method = "POST"
        o.http_request_uri = "/GetStage"
        o.input = Shapes::ShapeRef.new(shape: GetStageRequest)
        o.output = Shapes::ShapeRef.new(shape: GetStageResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_stage_session, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetStageSession"
        o.http_method = "POST"
        o.http_request_uri = "/GetStageSession"
        o.input = Shapes::ShapeRef.new(shape: GetStageSessionRequest)
        o.output = Shapes::ShapeRef.new(shape: GetStageSessionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:list_participant_events, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListParticipantEvents"
        o.http_method = "POST"
        o.http_request_uri = "/ListParticipantEvents"
        o.input = Shapes::ShapeRef.new(shape: ListParticipantEventsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListParticipantEventsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_participants, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListParticipants"
        o.http_method = "POST"
        o.http_request_uri = "/ListParticipants"
        o.input = Shapes::ShapeRef.new(shape: ListParticipantsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListParticipantsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_stage_sessions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListStageSessions"
        o.http_method = "POST"
        o.http_request_uri = "/ListStageSessions"
        o.input = Shapes::ShapeRef.new(shape: ListStageSessionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListStageSessionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_stages, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListStages"
        o.http_method = "POST"
        o.http_request_uri = "/ListStages"
        o.input = Shapes::ShapeRef.new(shape: ListStagesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListStagesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
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
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_stage, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateStage"
        o.http_method = "POST"
        o.http_request_uri = "/UpdateStage"
        o.input = Shapes::ShapeRef.new(shape: UpdateStageRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateStageResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: PendingVerification)
      end)
    end

  end
end
