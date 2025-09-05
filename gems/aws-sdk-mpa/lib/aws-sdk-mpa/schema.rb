# frozen_string_literal: true

# This is generated code!

module Aws::MPA
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mpa#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccountId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mpa#AccountId', name: 'AccountId', traits: {"aws.api#data" => "account", "smithy.api#length" => {"max" => 12}, "smithy.api#pattern" => "^\\d{12}$"})
    ActionCompletionStrategy = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mpa#ActionCompletionStrategy', name: 'ActionCompletionStrategy')
    ActionName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mpa#ActionName', name: 'ActionName', traits: {"smithy.api#length" => {"max" => 500}})
    ApprovalStrategy = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.mpa#ApprovalStrategy', name: 'ApprovalStrategy')
    ApprovalStrategyResponse = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.mpa#ApprovalStrategyResponse', name: 'ApprovalStrategyResponse')
    ApprovalTeamArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mpa#ApprovalTeamArn', name: 'ApprovalTeamArn', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:aws(-[^:]+)?:mpa:[a-z0-9-]{1,20}:[0-9]{12}:approval-team/[a-zA-Z0-9._-]+$"})
    ApprovalTeamName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mpa#ApprovalTeamName', name: 'ApprovalTeamName', traits: {"aws.api#data" => "usage", "smithy.api#length" => {"max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9._-]+$"})
    ApprovalTeamRequestApprover = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mpa#ApprovalTeamRequestApprover', name: 'ApprovalTeamRequestApprover', traits: {"aws.api#data" => "usage"})
    ApprovalTeamRequestApprovers = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mpa#ApprovalTeamRequestApprovers', name: 'ApprovalTeamRequestApprovers', traits: {"aws.api#data" => "usage", "smithy.api#length" => {"min" => 1, "max" => 20}})
    ApprovalTeamStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mpa#ApprovalTeamStatus', name: 'ApprovalTeamStatus')
    ApprovalTeamStatusCode = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mpa#ApprovalTeamStatusCode', name: 'ApprovalTeamStatusCode')
    CancelSessionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mpa#CancelSessionRequest', name: 'CancelSessionRequest')
    CancelSessionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mpa#CancelSessionResponse', name: 'CancelSessionResponse')
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mpa#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreateApprovalTeamRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mpa#CreateApprovalTeamRequest', name: 'CreateApprovalTeamRequest')
    CreateApprovalTeamResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mpa#CreateApprovalTeamResponse', name: 'CreateApprovalTeamResponse')
    CreateIdentitySourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mpa#CreateIdentitySourceRequest', name: 'CreateIdentitySourceRequest')
    CreateIdentitySourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mpa#CreateIdentitySourceResponse', name: 'CreateIdentitySourceResponse')
    DeleteIdentitySourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mpa#DeleteIdentitySourceRequest', name: 'DeleteIdentitySourceRequest')
    DeleteInactiveApprovalTeamVersionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mpa#DeleteInactiveApprovalTeamVersionRequest', name: 'DeleteInactiveApprovalTeamVersionRequest')
    DeleteInactiveApprovalTeamVersionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mpa#DeleteInactiveApprovalTeamVersionResponse', name: 'DeleteInactiveApprovalTeamVersionResponse')
    Description = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mpa#Description', name: 'Description', traits: {"aws.api#data" => "usage", "smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#sensitive" => {}})
    Filter = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mpa#Filter', name: 'Filter')
    FilterField = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mpa#FilterField', name: 'FilterField')
    Filters = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mpa#Filters', name: 'Filters', traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    GetApprovalTeamRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mpa#GetApprovalTeamRequest', name: 'GetApprovalTeamRequest')
    GetApprovalTeamResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mpa#GetApprovalTeamResponse', name: 'GetApprovalTeamResponse')
    GetApprovalTeamResponseApprover = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mpa#GetApprovalTeamResponseApprover', name: 'GetApprovalTeamResponseApprover')
    GetApprovalTeamResponseApprovers = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mpa#GetApprovalTeamResponseApprovers', name: 'GetApprovalTeamResponseApprovers', traits: {"smithy.api#length" => {"max" => 20}})
    GetIdentitySourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mpa#GetIdentitySourceRequest', name: 'GetIdentitySourceRequest')
    GetIdentitySourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mpa#GetIdentitySourceResponse', name: 'GetIdentitySourceResponse')
    GetPolicyVersionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mpa#GetPolicyVersionRequest', name: 'GetPolicyVersionRequest')
    GetPolicyVersionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mpa#GetPolicyVersionResponse', name: 'GetPolicyVersionResponse')
    GetResourcePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mpa#GetResourcePolicyRequest', name: 'GetResourcePolicyRequest')
    GetResourcePolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mpa#GetResourcePolicyResponse', name: 'GetResourcePolicyResponse')
    GetSessionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mpa#GetSessionRequest', name: 'GetSessionRequest')
    GetSessionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mpa#GetSessionResponse', name: 'GetSessionResponse')
    GetSessionResponseApproverResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mpa#GetSessionResponseApproverResponse', name: 'GetSessionResponseApproverResponse', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.mpa#IdentitySource"}]})
    GetSessionResponseApproverResponses = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mpa#GetSessionResponseApproverResponses', name: 'GetSessionResponseApproverResponses', traits: {"smithy.api#length" => {"max" => 20}})
    IamIdentityCenter = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mpa#IamIdentityCenter', name: 'IamIdentityCenter', traits: {"aws.api#data" => "usage"})
    IamIdentityCenterForGet = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mpa#IamIdentityCenterForGet', name: 'IamIdentityCenterForGet', traits: {"aws.api#data" => "usage"})
    IamIdentityCenterForList = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mpa#IamIdentityCenterForList', name: 'IamIdentityCenterForList', traits: {"aws.api#data" => "usage"})
    IdcInstanceArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mpa#IdcInstanceArn', name: 'IdcInstanceArn', traits: {"aws.api#data" => "usage", "smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:.+:sso:::instance/(?:sso)?ins-[a-zA-Z0-9-.]{16}$"})
    IdentityId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mpa#IdentityId', name: 'IdentityId', traits: {"aws.api#data" => "usage", "smithy.api#length" => {"min" => 1, "max" => 100}})
    IdentitySourceForList = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mpa#IdentitySourceForList', name: 'IdentitySourceForList', traits: {"aws.api#data" => "usage"})
    IdentitySourceParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mpa#IdentitySourceParameters', name: 'IdentitySourceParameters')
    IdentitySourceParametersForGet = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.mpa#IdentitySourceParametersForGet', name: 'IdentitySourceParametersForGet', traits: {"aws.api#data" => "usage"})
    IdentitySourceParametersForList = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.mpa#IdentitySourceParametersForList', name: 'IdentitySourceParametersForList')
    IdentitySourceStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mpa#IdentitySourceStatus', name: 'IdentitySourceStatus')
    IdentitySourceStatusCode = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mpa#IdentitySourceStatusCode', name: 'IdentitySourceStatusCode')
    IdentitySourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mpa#IdentitySourceType', name: 'IdentitySourceType')
    IdentitySources = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mpa#IdentitySources', name: 'IdentitySources', traits: {"aws.api#data" => "usage", "smithy.api#length" => {"max" => 20}})
    IdentityStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mpa#IdentityStatus', name: 'IdentityStatus')
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mpa#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500, "smithy.api#retryable" => {}})
    InvalidParameterException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mpa#InvalidParameterException', name: 'InvalidParameterException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    IsoTimestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.mpa#IsoTimestamp', name: 'IsoTimestamp', traits: {"smithy.api#timestampFormat" => "date-time"})
    ListApprovalTeamsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mpa#ListApprovalTeamsRequest', name: 'ListApprovalTeamsRequest')
    ListApprovalTeamsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mpa#ListApprovalTeamsResponse', name: 'ListApprovalTeamsResponse')
    ListApprovalTeamsResponseApprovalTeam = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mpa#ListApprovalTeamsResponseApprovalTeam', name: 'ListApprovalTeamsResponseApprovalTeam')
    ListApprovalTeamsResponseApprovalTeams = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mpa#ListApprovalTeamsResponseApprovalTeams', name: 'ListApprovalTeamsResponseApprovalTeams', traits: {"smithy.api#length" => {"max" => 20}})
    ListIdentitySourcesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mpa#ListIdentitySourcesRequest', name: 'ListIdentitySourcesRequest')
    ListIdentitySourcesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mpa#ListIdentitySourcesResponse', name: 'ListIdentitySourcesResponse')
    ListPoliciesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mpa#ListPoliciesRequest', name: 'ListPoliciesRequest')
    ListPoliciesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mpa#ListPoliciesResponse', name: 'ListPoliciesResponse')
    ListPolicyVersionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mpa#ListPolicyVersionsRequest', name: 'ListPolicyVersionsRequest')
    ListPolicyVersionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mpa#ListPolicyVersionsResponse', name: 'ListPolicyVersionsResponse')
    ListResourcePoliciesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mpa#ListResourcePoliciesRequest', name: 'ListResourcePoliciesRequest')
    ListResourcePoliciesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mpa#ListResourcePoliciesResponse', name: 'ListResourcePoliciesResponse')
    ListResourcePoliciesResponseResourcePolicies = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mpa#ListResourcePoliciesResponseResourcePolicies', name: 'ListResourcePoliciesResponseResourcePolicies', traits: {"smithy.api#length" => {"max" => 100}})
    ListResourcePoliciesResponseResourcePolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mpa#ListResourcePoliciesResponseResourcePolicy', name: 'ListResourcePoliciesResponseResourcePolicy')
    ListSessionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mpa#ListSessionsRequest', name: 'ListSessionsRequest')
    ListSessionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mpa#ListSessionsResponse', name: 'ListSessionsResponse')
    ListSessionsResponseSession = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mpa#ListSessionsResponseSession', name: 'ListSessionsResponseSession')
    ListSessionsResponseSessions = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mpa#ListSessionsResponseSessions', name: 'ListSessionsResponseSessions', traits: {"smithy.api#length" => {"max" => 20}})
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mpa#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mpa#ListTagsForResourceResponse', name: 'ListTagsForResourceResponse')
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.mpa#MaxResults', name: 'MaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 20}})
    Message = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mpa#Message', name: 'Message', traits: {"smithy.api#length" => {"max" => 500}})
    MofNApprovalStrategy = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mpa#MofNApprovalStrategy', name: 'MofNApprovalStrategy')
    Operator = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mpa#Operator', name: 'Operator')
    ParticipantId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mpa#ParticipantId', name: 'ParticipantId', traits: {"aws.api#data" => "usage", "smithy.api#length" => {"min" => 1, "max" => 100}})
    PendingUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mpa#PendingUpdate', name: 'PendingUpdate', traits: {"aws.api#data" => "usage"})
    Policies = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mpa#Policies', name: 'Policies', traits: {"aws.api#data" => "usage", "smithy.api#length" => {"max" => 20}})
    PoliciesReferences = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mpa#PoliciesReferences', name: 'PoliciesReferences', traits: {"aws.api#data" => "usage", "smithy.api#length" => {"min" => 1, "max" => 10}})
    Policy = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mpa#Policy', name: 'Policy', traits: {"aws.api#data" => "usage"})
    PolicyDocument = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mpa#PolicyDocument', name: 'PolicyDocument', traits: {"aws.api#data" => "usage", "smithy.api#length" => {"max" => 400000}, "smithy.api#sensitive" => {}})
    PolicyName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mpa#PolicyName', name: 'PolicyName', traits: {"aws.api#data" => "usage", "smithy.api#length" => {"max" => 64}})
    PolicyReference = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mpa#PolicyReference', name: 'PolicyReference', traits: {"aws.api#data" => "usage"})
    PolicyStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mpa#PolicyStatus', name: 'PolicyStatus')
    PolicyType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mpa#PolicyType', name: 'PolicyType')
    PolicyVersion = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mpa#PolicyVersion', name: 'PolicyVersion', traits: {"aws.api#data" => "usage"})
    PolicyVersionId = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.mpa#PolicyVersionId', name: 'PolicyVersionId', traits: {"smithy.api#range" => {"min" => 1}})
    PolicyVersionSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mpa#PolicyVersionSummary', name: 'PolicyVersionSummary', traits: {"aws.api#data" => "usage"})
    PolicyVersions = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mpa#PolicyVersions', name: 'PolicyVersions', traits: {"aws.api#data" => "usage", "smithy.api#length" => {"max" => 20}})
    QualifiedPolicyArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mpa#QualifiedPolicyArn', name: 'QualifiedPolicyArn', traits: {"aws.api#data" => "usage", "smithy.api#length" => {"max" => 1224}, "smithy.api#pattern" => "^arn:.{1,63}:mpa:::aws:policy/[a-zA-Z0-9_\\.-]{1,1023}/[a-zA-Z0-9_\\.-]{1,1023}/(?:[\\d]+|\\$DEFAULT)$"})
    Region = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mpa#Region', name: 'Region', traits: {"smithy.api#length" => {"max" => 100}})
    RequesterComment = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mpa#RequesterComment', name: 'RequesterComment', traits: {"aws.api#data" => "usage", "smithy.api#length" => {"max" => 200}, "smithy.api#sensitive" => {}})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mpa#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ServicePrincipal = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mpa#ServicePrincipal', name: 'ServicePrincipal', traits: {"aws.api#data" => "usage", "smithy.api#length" => {"min" => 1, "max" => 100}})
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mpa#ServiceQuotaExceededException', name: 'ServiceQuotaExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    SessionArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mpa#SessionArn', name: 'SessionArn', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:aws(-[^:]+)?:mpa:[a-z0-9-]{1,20}:[0-9]{12}:session/[a-zA-Z0-9._-]+/[a-zA-Z0-9_-]+$"})
    SessionExecutionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mpa#SessionExecutionStatus', name: 'SessionExecutionStatus')
    SessionKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mpa#SessionKey', name: 'SessionKey', traits: {"aws.api#data" => "usage", "smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[a-zA-Z0-9\\p{P}]*$", "smithy.api#sensitive" => {}})
    SessionMetadata = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.mpa#SessionMetadata', name: 'SessionMetadata', traits: {"smithy.api#sensitive" => {}})
    SessionResponse = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mpa#SessionResponse', name: 'SessionResponse')
    SessionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mpa#SessionStatus', name: 'SessionStatus')
    SessionStatusCode = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mpa#SessionStatusCode', name: 'SessionStatusCode')
    SessionValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mpa#SessionValue', name: 'SessionValue', traits: {"aws.api#data" => "usage", "smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#pattern" => "^[a-zA-Z0-9\\p{P}]*$", "smithy.api#sensitive" => {}})
    StartActiveApprovalTeamDeletionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mpa#StartActiveApprovalTeamDeletionRequest', name: 'StartActiveApprovalTeamDeletionRequest')
    StartActiveApprovalTeamDeletionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mpa#StartActiveApprovalTeamDeletionResponse', name: 'StartActiveApprovalTeamDeletionResponse')
    String = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mpa#String', name: 'String', traits: {"smithy.api#length" => {"max" => 1000}})
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mpa#TagKey', name: 'TagKey', traits: {"aws.api#data" => "tagging", "smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#sensitive" => {}})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mpa#TagKeyList', name: 'TagKeyList', traits: {"aws.api#data" => "tagging", "smithy.api#length" => {"min" => 0, "max" => 50}, "smithy.api#sensitive" => {}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mpa#TagResourceRequest', name: 'TagResourceRequest')
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mpa#TagResourceResponse', name: 'TagResourceResponse')
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mpa#TagValue', name: 'TagValue', traits: {"aws.api#data" => "tagging", "smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#sensitive" => {}})
    Tags = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.mpa#Tags', name: 'Tags', traits: {"smithy.api#sensitive" => {}})
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mpa#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    Token = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mpa#Token', name: 'Token', traits: {"smithy.api#length" => {"max" => 4096}})
    TooManyTagsException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mpa#TooManyTagsException', name: 'TooManyTagsException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    UnqualifiedPolicyArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mpa#UnqualifiedPolicyArn', name: 'UnqualifiedPolicyArn', traits: {"aws.api#data" => "usage", "smithy.api#length" => {"max" => 1224}, "smithy.api#pattern" => "^arn:.{1,63}:mpa:::aws:policy/[a-zA-Z0-9_\\.-]{1,1023}/[a-zA-Z0-9_\\.-]{1,1023}$"})
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mpa#UntagResourceRequest', name: 'UntagResourceRequest')
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mpa#UntagResourceResponse', name: 'UntagResourceResponse')
    UpdateApprovalTeamRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mpa#UpdateApprovalTeamRequest', name: 'UpdateApprovalTeamRequest')
    UpdateApprovalTeamResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mpa#UpdateApprovalTeamResponse', name: 'UpdateApprovalTeamResponse')
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mpa#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    ActionCompletionStrategy.add_member(:auto_completion_upon_approval, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AUTO_COMPLETION_UPON_APPROVAL', traits: {"smithy.api#enumValue" => "AUTO_COMPLETION_UPON_APPROVAL"}))
    ApprovalStrategy.add_member(:mof_n, Types::ApprovalStrategy::MofN, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MofNApprovalStrategy, location_name: 'MofN'))
    ApprovalStrategy.add_member(:unknown, Types::ApprovalStrategy::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    ApprovalStrategy.type = Types::ApprovalStrategy
    ApprovalStrategyResponse.add_member(:mof_n, Types::ApprovalStrategyResponse::MofN, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MofNApprovalStrategy, location_name: 'MofN'))
    ApprovalStrategyResponse.add_member(:unknown, Types::ApprovalStrategyResponse::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    ApprovalStrategyResponse.type = Types::ApprovalStrategyResponse
    ApprovalTeamRequestApprover.add_member(:primary_identity_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityId, location_name: 'PrimaryIdentityId', traits: {"aws.api#data" => "usage", "smithy.api#required" => {}}))
    ApprovalTeamRequestApprover.add_member(:primary_identity_source_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PrimaryIdentitySourceArn', traits: {"aws.api#data" => "usage", "smithy.api#required" => {}}))
    ApprovalTeamRequestApprover.type = Types::ApprovalTeamRequestApprover
    ApprovalTeamRequestApprovers.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalTeamRequestApprover)
    ApprovalTeamStatus.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    ApprovalTeamStatus.add_member(:inactive, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INACTIVE', traits: {"smithy.api#enumValue" => "INACTIVE"}))
    ApprovalTeamStatus.add_member(:deleting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    ApprovalTeamStatus.add_member(:pending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING', traits: {"smithy.api#enumValue" => "PENDING"}))
    ApprovalTeamStatusCode.add_member(:validating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VALIDATING', traits: {"smithy.api#enumValue" => "VALIDATING"}))
    ApprovalTeamStatusCode.add_member(:pending_activation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING_ACTIVATION', traits: {"smithy.api#enumValue" => "PENDING_ACTIVATION"}))
    ApprovalTeamStatusCode.add_member(:failed_validation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED_VALIDATION', traits: {"smithy.api#enumValue" => "FAILED_VALIDATION"}))
    ApprovalTeamStatusCode.add_member(:failed_activation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED_ACTIVATION', traits: {"smithy.api#enumValue" => "FAILED_ACTIVATION"}))
    ApprovalTeamStatusCode.add_member(:update_pending_approval, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATE_PENDING_APPROVAL', traits: {"smithy.api#enumValue" => "UPDATE_PENDING_APPROVAL"}))
    ApprovalTeamStatusCode.add_member(:update_pending_activation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATE_PENDING_ACTIVATION', traits: {"smithy.api#enumValue" => "UPDATE_PENDING_ACTIVATION"}))
    ApprovalTeamStatusCode.add_member(:update_failed_approval, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATE_FAILED_APPROVAL', traits: {"smithy.api#enumValue" => "UPDATE_FAILED_APPROVAL"}))
    ApprovalTeamStatusCode.add_member(:update_failed_activation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATE_FAILED_ACTIVATION', traits: {"smithy.api#enumValue" => "UPDATE_FAILED_ACTIVATION"}))
    ApprovalTeamStatusCode.add_member(:update_failed_validation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATE_FAILED_VALIDATION', traits: {"smithy.api#enumValue" => "UPDATE_FAILED_VALIDATION"}))
    ApprovalTeamStatusCode.add_member(:delete_pending_approval, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETE_PENDING_APPROVAL', traits: {"smithy.api#enumValue" => "DELETE_PENDING_APPROVAL"}))
    ApprovalTeamStatusCode.add_member(:delete_failed_approval, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETE_FAILED_APPROVAL', traits: {"smithy.api#enumValue" => "DELETE_FAILED_APPROVAL"}))
    ApprovalTeamStatusCode.add_member(:delete_failed_validation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETE_FAILED_VALIDATION', traits: {"smithy.api#enumValue" => "DELETE_FAILED_VALIDATION"}))
    CancelSessionRequest.add_member(:session_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SessionArn, location_name: 'SessionArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CancelSessionRequest.type = Types::CancelSessionRequest
    CancelSessionResponse.type = Types::CancelSessionResponse
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#required" => {}}))
    ConflictException.type = Types::ConflictException
    CreateApprovalTeamRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'ClientToken', traits: {"smithy.api#idempotencyToken" => {}}))
    CreateApprovalTeamRequest.add_member(:approval_strategy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalStrategy, location_name: 'ApprovalStrategy', traits: {"smithy.api#required" => {}}))
    CreateApprovalTeamRequest.add_member(:approvers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalTeamRequestApprovers, location_name: 'Approvers', traits: {"smithy.api#required" => {}}))
    CreateApprovalTeamRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#required" => {}}))
    CreateApprovalTeamRequest.add_member(:policies, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PoliciesReferences, location_name: 'Policies', traits: {"smithy.api#required" => {}}))
    CreateApprovalTeamRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalTeamName, location_name: 'Name', traits: {"smithy.api#required" => {}}))
    CreateApprovalTeamRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags'))
    CreateApprovalTeamRequest.type = Types::CreateApprovalTeamRequest
    CreateApprovalTeamResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IsoTimestamp, location_name: 'CreationTime'))
    CreateApprovalTeamResponse.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalTeamArn, location_name: 'Arn'))
    CreateApprovalTeamResponse.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name'))
    CreateApprovalTeamResponse.add_member(:version_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VersionId'))
    CreateApprovalTeamResponse.type = Types::CreateApprovalTeamResponse
    CreateIdentitySourceRequest.add_member(:identity_source_parameters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentitySourceParameters, location_name: 'IdentitySourceParameters', traits: {"smithy.api#required" => {}}))
    CreateIdentitySourceRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'ClientToken', traits: {"smithy.api#idempotencyToken" => {}}))
    CreateIdentitySourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags'))
    CreateIdentitySourceRequest.type = Types::CreateIdentitySourceRequest
    CreateIdentitySourceResponse.add_member(:identity_source_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentitySourceType, location_name: 'IdentitySourceType'))
    CreateIdentitySourceResponse.add_member(:identity_source_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IdentitySourceArn'))
    CreateIdentitySourceResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IsoTimestamp, location_name: 'CreationTime'))
    CreateIdentitySourceResponse.type = Types::CreateIdentitySourceResponse
    DeleteIdentitySourceRequest.add_member(:identity_source_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IdentitySourceArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteIdentitySourceRequest.type = Types::DeleteIdentitySourceRequest
    DeleteInactiveApprovalTeamVersionRequest.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalTeamArn, location_name: 'Arn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteInactiveApprovalTeamVersionRequest.add_member(:version_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VersionId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteInactiveApprovalTeamVersionRequest.type = Types::DeleteInactiveApprovalTeamVersionRequest
    DeleteInactiveApprovalTeamVersionResponse.type = Types::DeleteInactiveApprovalTeamVersionResponse
    Filter.add_member(:field_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterField, location_name: 'FieldName'))
    Filter.add_member(:operator, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Operator, location_name: 'Operator'))
    Filter.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Value'))
    Filter.type = Types::Filter
    FilterField.add_member(:action_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTION_NAME', traits: {"smithy.api#enumValue" => "ActionName"}))
    FilterField.add_member(:approval_team_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APPROVAL_TEAM_NAME', traits: {"smithy.api#enumValue" => "ApprovalTeamName"}))
    FilterField.add_member(:voting_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VOTING_TIME', traits: {"smithy.api#enumValue" => "VotingTime"}))
    FilterField.add_member(:vote, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VOTE', traits: {"smithy.api#enumValue" => "Vote"}))
    FilterField.add_member(:session_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SESSION_STATUS', traits: {"smithy.api#enumValue" => "SessionStatus"}))
    FilterField.add_member(:initiation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INITIATION_TIME', traits: {"smithy.api#enumValue" => "InitiationTime"}))
    Filters.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Filter)
    GetApprovalTeamRequest.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalTeamArn, location_name: 'Arn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetApprovalTeamRequest.type = Types::GetApprovalTeamRequest
    GetApprovalTeamResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IsoTimestamp, location_name: 'CreationTime'))
    GetApprovalTeamResponse.add_member(:approval_strategy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalStrategyResponse, location_name: 'ApprovalStrategy'))
    GetApprovalTeamResponse.add_member(:number_of_approvers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'NumberOfApprovers'))
    GetApprovalTeamResponse.add_member(:approvers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetApprovalTeamResponseApprovers, location_name: 'Approvers'))
    GetApprovalTeamResponse.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn'))
    GetApprovalTeamResponse.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description'))
    GetApprovalTeamResponse.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name'))
    GetApprovalTeamResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalTeamStatus, location_name: 'Status'))
    GetApprovalTeamResponse.add_member(:status_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalTeamStatusCode, location_name: 'StatusCode'))
    GetApprovalTeamResponse.add_member(:status_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'StatusMessage'))
    GetApprovalTeamResponse.add_member(:update_session_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'UpdateSessionArn'))
    GetApprovalTeamResponse.add_member(:version_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VersionId'))
    GetApprovalTeamResponse.add_member(:policies, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PoliciesReferences, location_name: 'Policies'))
    GetApprovalTeamResponse.add_member(:last_update_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IsoTimestamp, location_name: 'LastUpdateTime'))
    GetApprovalTeamResponse.add_member(:pending_update, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PendingUpdate, location_name: 'PendingUpdate'))
    GetApprovalTeamResponse.type = Types::GetApprovalTeamResponse
    GetApprovalTeamResponseApprover.add_member(:approver_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ParticipantId, location_name: 'ApproverId'))
    GetApprovalTeamResponseApprover.add_member(:response_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IsoTimestamp, location_name: 'ResponseTime'))
    GetApprovalTeamResponseApprover.add_member(:primary_identity_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityId, location_name: 'PrimaryIdentityId'))
    GetApprovalTeamResponseApprover.add_member(:primary_identity_source_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PrimaryIdentitySourceArn'))
    GetApprovalTeamResponseApprover.add_member(:primary_identity_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityStatus, location_name: 'PrimaryIdentityStatus'))
    GetApprovalTeamResponseApprover.type = Types::GetApprovalTeamResponseApprover
    GetApprovalTeamResponseApprovers.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetApprovalTeamResponseApprover)
    GetIdentitySourceRequest.add_member(:identity_source_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IdentitySourceArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetIdentitySourceRequest.type = Types::GetIdentitySourceRequest
    GetIdentitySourceResponse.add_member(:identity_source_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentitySourceType, location_name: 'IdentitySourceType'))
    GetIdentitySourceResponse.add_member(:identity_source_parameters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentitySourceParametersForGet, location_name: 'IdentitySourceParameters'))
    GetIdentitySourceResponse.add_member(:identity_source_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IdentitySourceArn'))
    GetIdentitySourceResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IsoTimestamp, location_name: 'CreationTime'))
    GetIdentitySourceResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentitySourceStatus, location_name: 'Status'))
    GetIdentitySourceResponse.add_member(:status_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentitySourceStatusCode, location_name: 'StatusCode'))
    GetIdentitySourceResponse.add_member(:status_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StatusMessage'))
    GetIdentitySourceResponse.type = Types::GetIdentitySourceResponse
    GetPolicyVersionRequest.add_member(:policy_version_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QualifiedPolicyArn, location_name: 'PolicyVersionArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetPolicyVersionRequest.type = Types::GetPolicyVersionRequest
    GetPolicyVersionResponse.add_member(:policy_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyVersion, location_name: 'PolicyVersion', traits: {"smithy.api#required" => {}}))
    GetPolicyVersionResponse.type = Types::GetPolicyVersionResponse
    GetResourcePolicyRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceArn', traits: {"smithy.api#required" => {}}))
    GetResourcePolicyRequest.add_member(:policy_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PolicyName', traits: {"smithy.api#required" => {}}))
    GetResourcePolicyRequest.add_member(:policy_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyType, location_name: 'PolicyType', traits: {"smithy.api#required" => {}}))
    GetResourcePolicyRequest.type = Types::GetResourcePolicyRequest
    GetResourcePolicyResponse.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceArn', traits: {"smithy.api#required" => {}}))
    GetResourcePolicyResponse.add_member(:policy_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyType, location_name: 'PolicyType', traits: {"smithy.api#required" => {}}))
    GetResourcePolicyResponse.add_member(:policy_version_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PolicyVersionArn'))
    GetResourcePolicyResponse.add_member(:policy_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyName, location_name: 'PolicyName', traits: {"smithy.api#required" => {}}))
    GetResourcePolicyResponse.add_member(:policy_document, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyDocument, location_name: 'PolicyDocument', traits: {"smithy.api#required" => {}}))
    GetResourcePolicyResponse.type = Types::GetResourcePolicyResponse
    GetSessionRequest.add_member(:session_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SessionArn, location_name: 'SessionArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSessionRequest.type = Types::GetSessionRequest
    GetSessionResponse.add_member(:session_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SessionArn, location_name: 'SessionArn'))
    GetSessionResponse.add_member(:approval_team_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalTeamArn, location_name: 'ApprovalTeamArn'))
    GetSessionResponse.add_member(:approval_team_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalTeamName, location_name: 'ApprovalTeamName'))
    GetSessionResponse.add_member(:protected_resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ProtectedResourceArn'))
    GetSessionResponse.add_member(:approval_strategy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalStrategyResponse, location_name: 'ApprovalStrategy'))
    GetSessionResponse.add_member(:number_of_approvers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'NumberOfApprovers'))
    GetSessionResponse.add_member(:initiation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IsoTimestamp, location_name: 'InitiationTime'))
    GetSessionResponse.add_member(:expiration_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IsoTimestamp, location_name: 'ExpirationTime'))
    GetSessionResponse.add_member(:completion_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IsoTimestamp, location_name: 'CompletionTime'))
    GetSessionResponse.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description'))
    GetSessionResponse.add_member(:metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SessionMetadata, location_name: 'Metadata'))
    GetSessionResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SessionStatus, location_name: 'Status'))
    GetSessionResponse.add_member(:status_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SessionStatusCode, location_name: 'StatusCode'))
    GetSessionResponse.add_member(:status_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'StatusMessage'))
    GetSessionResponse.add_member(:execution_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SessionExecutionStatus, location_name: 'ExecutionStatus'))
    GetSessionResponse.add_member(:action_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActionName, location_name: 'ActionName'))
    GetSessionResponse.add_member(:requester_service_principal, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServicePrincipal, location_name: 'RequesterServicePrincipal'))
    GetSessionResponse.add_member(:requester_principal_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RequesterPrincipalArn'))
    GetSessionResponse.add_member(:requester_account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'RequesterAccountId'))
    GetSessionResponse.add_member(:requester_region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Region, location_name: 'RequesterRegion'))
    GetSessionResponse.add_member(:requester_comment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequesterComment, location_name: 'RequesterComment'))
    GetSessionResponse.add_member(:action_completion_strategy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActionCompletionStrategy, location_name: 'ActionCompletionStrategy'))
    GetSessionResponse.add_member(:approver_responses, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSessionResponseApproverResponses, location_name: 'ApproverResponses'))
    GetSessionResponse.type = Types::GetSessionResponse
    GetSessionResponseApproverResponse.add_member(:approver_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ParticipantId, location_name: 'ApproverId'))
    GetSessionResponseApproverResponse.add_member(:identity_source_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IdentitySourceArn'))
    GetSessionResponseApproverResponse.add_member(:identity_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityId, location_name: 'IdentityId'))
    GetSessionResponseApproverResponse.add_member(:response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SessionResponse, location_name: 'Response'))
    GetSessionResponseApproverResponse.add_member(:response_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IsoTimestamp, location_name: 'ResponseTime'))
    GetSessionResponseApproverResponse.type = Types::GetSessionResponseApproverResponse
    GetSessionResponseApproverResponses.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSessionResponseApproverResponse)
    IamIdentityCenter.add_member(:instance_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdcInstanceArn, location_name: 'InstanceArn', traits: {"aws.api#data" => "usage", "smithy.api#required" => {}}))
    IamIdentityCenter.add_member(:region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Region', traits: {"smithy.api#required" => {}}))
    IamIdentityCenter.type = Types::IamIdentityCenter
    IamIdentityCenterForGet.add_member(:instance_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'InstanceArn', traits: {"aws.api#data" => "usage"}))
    IamIdentityCenterForGet.add_member(:approval_portal_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApprovalPortalUrl', traits: {"aws.api#data" => "usage"}))
    IamIdentityCenterForGet.add_member(:region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Region'))
    IamIdentityCenterForGet.type = Types::IamIdentityCenterForGet
    IamIdentityCenterForList.add_member(:instance_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'InstanceArn', traits: {"aws.api#data" => "usage"}))
    IamIdentityCenterForList.add_member(:approval_portal_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApprovalPortalUrl', traits: {"aws.api#data" => "usage"}))
    IamIdentityCenterForList.add_member(:region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Region'))
    IamIdentityCenterForList.type = Types::IamIdentityCenterForList
    IdentitySourceForList.add_member(:identity_source_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentitySourceType, location_name: 'IdentitySourceType', traits: {"aws.api#data" => "usage"}))
    IdentitySourceForList.add_member(:identity_source_parameters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentitySourceParametersForList, location_name: 'IdentitySourceParameters', traits: {"aws.api#data" => "usage"}))
    IdentitySourceForList.add_member(:identity_source_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IdentitySourceArn', traits: {"aws.api#data" => "usage"}))
    IdentitySourceForList.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IsoTimestamp, location_name: 'CreationTime', traits: {"aws.api#data" => "usage"}))
    IdentitySourceForList.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentitySourceStatus, location_name: 'Status', traits: {"aws.api#data" => "usage"}))
    IdentitySourceForList.add_member(:status_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentitySourceStatusCode, location_name: 'StatusCode', traits: {"aws.api#data" => "usage"}))
    IdentitySourceForList.add_member(:status_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StatusMessage', traits: {"aws.api#data" => "usage"}))
    IdentitySourceForList.type = Types::IdentitySourceForList
    IdentitySourceParameters.add_member(:iam_identity_center, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IamIdentityCenter, location_name: 'IamIdentityCenter'))
    IdentitySourceParameters.type = Types::IdentitySourceParameters
    IdentitySourceParametersForGet.add_member(:iam_identity_center, Types::IdentitySourceParametersForGet::IamIdentityCenter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IamIdentityCenterForGet, location_name: 'IamIdentityCenter', traits: {"aws.api#data" => "usage"}))
    IdentitySourceParametersForGet.add_member(:unknown, Types::IdentitySourceParametersForGet::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    IdentitySourceParametersForGet.type = Types::IdentitySourceParametersForGet
    IdentitySourceParametersForList.add_member(:iam_identity_center, Types::IdentitySourceParametersForList::IamIdentityCenter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IamIdentityCenterForList, location_name: 'IamIdentityCenter'))
    IdentitySourceParametersForList.add_member(:unknown, Types::IdentitySourceParametersForList::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    IdentitySourceParametersForList.type = Types::IdentitySourceParametersForList
    IdentitySourceStatus.add_member(:creating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "CREATING"}))
    IdentitySourceStatus.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    IdentitySourceStatus.add_member(:deleting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    IdentitySourceStatus.add_member(:error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ERROR', traits: {"smithy.api#enumValue" => "ERROR"}))
    IdentitySourceStatusCode.add_member(:access_denied, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACCESS_DENIED', traits: {"smithy.api#enumValue" => "ACCESS_DENIED"}))
    IdentitySourceStatusCode.add_member(:deletion_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETION_FAILED', traits: {"smithy.api#enumValue" => "DELETION_FAILED"}))
    IdentitySourceStatusCode.add_member(:idc_instance_not_found, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IDC_INSTANCE_NOT_FOUND', traits: {"smithy.api#enumValue" => "IDC_INSTANCE_NOT_FOUND"}))
    IdentitySourceStatusCode.add_member(:idc_instance_not_valid, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IDC_INSTANCE_NOT_VALID', traits: {"smithy.api#enumValue" => "IDC_INSTANCE_NOT_VALID"}))
    IdentitySourceType.add_member(:iam_identity_center, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IAM_IDENTITY_CENTER', traits: {"smithy.api#enumValue" => "IAM_IDENTITY_CENTER"}))
    IdentitySources.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentitySourceForList, traits: {"aws.api#data" => "usage"})
    IdentityStatus.add_member(:pending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING', traits: {"smithy.api#enumValue" => "PENDING"}))
    IdentityStatus.add_member(:accepted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACCEPTED', traits: {"smithy.api#enumValue" => "ACCEPTED"}))
    IdentityStatus.add_member(:rejected, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REJECTED', traits: {"smithy.api#enumValue" => "REJECTED"}))
    IdentityStatus.add_member(:invalid, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID', traits: {"smithy.api#enumValue" => "INVALID"}))
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#required" => {}}))
    InternalServerException.type = Types::InternalServerException
    InvalidParameterException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#required" => {}}))
    InvalidParameterException.type = Types::InvalidParameterException
    ListApprovalTeamsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#default" => 20, "smithy.api#httpQuery" => "MaxResults"}))
    ListApprovalTeamsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListApprovalTeamsRequest.type = Types::ListApprovalTeamsRequest
    ListApprovalTeamsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken'))
    ListApprovalTeamsResponse.add_member(:approval_teams, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListApprovalTeamsResponseApprovalTeams, location_name: 'ApprovalTeams'))
    ListApprovalTeamsResponse.type = Types::ListApprovalTeamsResponse
    ListApprovalTeamsResponseApprovalTeam.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IsoTimestamp, location_name: 'CreationTime'))
    ListApprovalTeamsResponseApprovalTeam.add_member(:approval_strategy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalStrategyResponse, location_name: 'ApprovalStrategy'))
    ListApprovalTeamsResponseApprovalTeam.add_member(:number_of_approvers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'NumberOfApprovers'))
    ListApprovalTeamsResponseApprovalTeam.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalTeamArn, location_name: 'Arn'))
    ListApprovalTeamsResponseApprovalTeam.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalTeamName, location_name: 'Name'))
    ListApprovalTeamsResponseApprovalTeam.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description'))
    ListApprovalTeamsResponseApprovalTeam.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalTeamStatus, location_name: 'Status'))
    ListApprovalTeamsResponseApprovalTeam.add_member(:status_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalTeamStatusCode, location_name: 'StatusCode'))
    ListApprovalTeamsResponseApprovalTeam.add_member(:status_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'StatusMessage'))
    ListApprovalTeamsResponseApprovalTeam.type = Types::ListApprovalTeamsResponseApprovalTeam
    ListApprovalTeamsResponseApprovalTeams.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListApprovalTeamsResponseApprovalTeam)
    ListIdentitySourcesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#default" => 20, "smithy.api#httpQuery" => "MaxResults"}))
    ListIdentitySourcesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListIdentitySourcesRequest.type = Types::ListIdentitySourcesRequest
    ListIdentitySourcesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken'))
    ListIdentitySourcesResponse.add_member(:identity_sources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdentitySources, location_name: 'IdentitySources'))
    ListIdentitySourcesResponse.type = Types::ListIdentitySourcesResponse
    ListPoliciesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#default" => 20, "smithy.api#httpQuery" => "MaxResults"}))
    ListPoliciesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListPoliciesRequest.type = Types::ListPoliciesRequest
    ListPoliciesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken'))
    ListPoliciesResponse.add_member(:policies, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Policies, location_name: 'Policies'))
    ListPoliciesResponse.type = Types::ListPoliciesResponse
    ListPolicyVersionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#default" => 20, "smithy.api#httpQuery" => "MaxResults"}))
    ListPolicyVersionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListPolicyVersionsRequest.add_member(:policy_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnqualifiedPolicyArn, location_name: 'PolicyArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListPolicyVersionsRequest.type = Types::ListPolicyVersionsRequest
    ListPolicyVersionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken'))
    ListPolicyVersionsResponse.add_member(:policy_versions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyVersions, location_name: 'PolicyVersions'))
    ListPolicyVersionsResponse.type = Types::ListPolicyVersionsResponse
    ListResourcePoliciesRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListResourcePoliciesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#default" => 20, "smithy.api#httpQuery" => "MaxResults"}))
    ListResourcePoliciesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListResourcePoliciesRequest.type = Types::ListResourcePoliciesRequest
    ListResourcePoliciesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken'))
    ListResourcePoliciesResponse.add_member(:resource_policies, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListResourcePoliciesResponseResourcePolicies, location_name: 'ResourcePolicies'))
    ListResourcePoliciesResponse.type = Types::ListResourcePoliciesResponse
    ListResourcePoliciesResponseResourcePolicies.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListResourcePoliciesResponseResourcePolicy)
    ListResourcePoliciesResponseResourcePolicy.add_member(:policy_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PolicyArn'))
    ListResourcePoliciesResponseResourcePolicy.add_member(:policy_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyType, location_name: 'PolicyType'))
    ListResourcePoliciesResponseResourcePolicy.add_member(:policy_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PolicyName'))
    ListResourcePoliciesResponseResourcePolicy.type = Types::ListResourcePoliciesResponseResourcePolicy
    ListSessionsRequest.add_member(:approval_team_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalTeamArn, location_name: 'ApprovalTeamArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListSessionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#default" => 20}))
    ListSessionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken'))
    ListSessionsRequest.add_member(:filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Filters, location_name: 'Filters'))
    ListSessionsRequest.type = Types::ListSessionsRequest
    ListSessionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken'))
    ListSessionsResponse.add_member(:sessions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListSessionsResponseSessions, location_name: 'Sessions'))
    ListSessionsResponse.type = Types::ListSessionsResponse
    ListSessionsResponseSession.add_member(:session_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SessionArn, location_name: 'SessionArn'))
    ListSessionsResponseSession.add_member(:approval_team_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalTeamName, location_name: 'ApprovalTeamName'))
    ListSessionsResponseSession.add_member(:approval_team_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalTeamArn, location_name: 'ApprovalTeamArn'))
    ListSessionsResponseSession.add_member(:initiation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IsoTimestamp, location_name: 'InitiationTime'))
    ListSessionsResponseSession.add_member(:expiration_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IsoTimestamp, location_name: 'ExpirationTime'))
    ListSessionsResponseSession.add_member(:completion_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IsoTimestamp, location_name: 'CompletionTime'))
    ListSessionsResponseSession.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description'))
    ListSessionsResponseSession.add_member(:action_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActionName, location_name: 'ActionName'))
    ListSessionsResponseSession.add_member(:protected_resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ProtectedResourceArn'))
    ListSessionsResponseSession.add_member(:requester_service_principal, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServicePrincipal, location_name: 'RequesterServicePrincipal'))
    ListSessionsResponseSession.add_member(:requester_principal_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RequesterPrincipalArn'))
    ListSessionsResponseSession.add_member(:requester_region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Region, location_name: 'RequesterRegion'))
    ListSessionsResponseSession.add_member(:requester_account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'RequesterAccountId'))
    ListSessionsResponseSession.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SessionStatus, location_name: 'Status'))
    ListSessionsResponseSession.add_member(:status_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SessionStatusCode, location_name: 'StatusCode'))
    ListSessionsResponseSession.add_member(:status_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'StatusMessage'))
    ListSessionsResponseSession.add_member(:action_completion_strategy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActionCompletionStrategy, location_name: 'ActionCompletionStrategy'))
    ListSessionsResponseSession.type = Types::ListSessionsResponseSession
    ListSessionsResponseSessions.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListSessionsResponseSession)
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags'))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    MofNApprovalStrategy.add_member(:min_approvals_required, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'MinApprovalsRequired', traits: {"smithy.api#range" => {"min" => 1}, "smithy.api#required" => {}}))
    MofNApprovalStrategy.type = Types::MofNApprovalStrategy
    Operator.add_member(:equals, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EQUALS', traits: {"smithy.api#enumValue" => "EQ"}))
    Operator.add_member(:not_equals, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NOT_EQUALS', traits: {"smithy.api#enumValue" => "NE"}))
    Operator.add_member(:greater_than, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GREATER_THAN', traits: {"smithy.api#enumValue" => "GT"}))
    Operator.add_member(:less_than, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LESS_THAN', traits: {"smithy.api#enumValue" => "LT"}))
    Operator.add_member(:greater_than_or_equal_to, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GREATER_THAN_OR_EQUAL_TO', traits: {"smithy.api#enumValue" => "GTE"}))
    Operator.add_member(:less_than_or_equal_to, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LESS_THAN_OR_EQUAL_TO', traits: {"smithy.api#enumValue" => "LTE"}))
    Operator.add_member(:contains, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONTAINS', traits: {"smithy.api#enumValue" => "CONTAINS"}))
    Operator.add_member(:does_not_contain, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DOES_NOT_CONTAIN', traits: {"smithy.api#enumValue" => "NOT_CONTAINS"}))
    Operator.add_member(:between, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BETWEEN', traits: {"smithy.api#enumValue" => "BETWEEN"}))
    PendingUpdate.add_member(:version_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VersionId', traits: {"aws.api#data" => "usage"}))
    PendingUpdate.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description', traits: {"aws.api#data" => "usage"}))
    PendingUpdate.add_member(:approval_strategy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalStrategyResponse, location_name: 'ApprovalStrategy', traits: {"aws.api#data" => "usage"}))
    PendingUpdate.add_member(:number_of_approvers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'NumberOfApprovers', traits: {"aws.api#data" => "usage"}))
    PendingUpdate.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalTeamStatus, location_name: 'Status', traits: {"aws.api#data" => "usage"}))
    PendingUpdate.add_member(:status_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalTeamStatusCode, location_name: 'StatusCode', traits: {"aws.api#data" => "usage"}))
    PendingUpdate.add_member(:status_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'StatusMessage', traits: {"aws.api#data" => "usage"}))
    PendingUpdate.add_member(:approvers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetApprovalTeamResponseApprovers, location_name: 'Approvers', traits: {"aws.api#data" => "usage"}))
    PendingUpdate.add_member(:update_initiation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IsoTimestamp, location_name: 'UpdateInitiationTime'))
    PendingUpdate.type = Types::PendingUpdate
    Policies.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Policy, traits: {"aws.api#data" => "usage"})
    PoliciesReferences.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyReference)
    Policy.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnqualifiedPolicyArn, location_name: 'Arn', traits: {"aws.api#data" => "usage", "smithy.api#required" => {}}))
    Policy.add_member(:default_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyVersionId, location_name: 'DefaultVersion', traits: {"aws.api#data" => "usage", "smithy.api#required" => {}}))
    Policy.add_member(:policy_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyType, location_name: 'PolicyType', traits: {"aws.api#data" => "usage", "smithy.api#required" => {}}))
    Policy.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyName, location_name: 'Name', traits: {"aws.api#data" => "usage", "smithy.api#required" => {}}))
    Policy.type = Types::Policy
    PolicyReference.add_member(:policy_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QualifiedPolicyArn, location_name: 'PolicyArn', traits: {"aws.api#data" => "usage", "smithy.api#required" => {}}))
    PolicyReference.type = Types::PolicyReference
    PolicyStatus.add_member(:attachable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ATTACHABLE', traits: {"smithy.api#enumValue" => "ATTACHABLE"}))
    PolicyStatus.add_member(:deprecated, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEPRECATED', traits: {"smithy.api#enumValue" => "DEPRECATED"}))
    PolicyType.add_member(:aws_managed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS_MANAGED', traits: {"smithy.api#enumValue" => "AWS_MANAGED"}))
    PolicyType.add_member(:aws_ram, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS_RAM', traits: {"smithy.api#enumValue" => "AWS_RAM"}))
    PolicyVersion.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QualifiedPolicyArn, location_name: 'Arn', traits: {"aws.api#data" => "usage", "smithy.api#required" => {}}))
    PolicyVersion.add_member(:policy_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnqualifiedPolicyArn, location_name: 'PolicyArn', traits: {"aws.api#data" => "usage", "smithy.api#required" => {}}))
    PolicyVersion.add_member(:version_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyVersionId, location_name: 'VersionId', traits: {"aws.api#data" => "usage", "smithy.api#required" => {}}))
    PolicyVersion.add_member(:policy_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyType, location_name: 'PolicyType', traits: {"aws.api#data" => "usage", "smithy.api#required" => {}}))
    PolicyVersion.add_member(:is_default, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'IsDefault', traits: {"smithy.api#required" => {}}))
    PolicyVersion.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyName, location_name: 'Name', traits: {"aws.api#data" => "usage", "smithy.api#required" => {}}))
    PolicyVersion.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyStatus, location_name: 'Status', traits: {"aws.api#data" => "usage", "smithy.api#required" => {}}))
    PolicyVersion.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IsoTimestamp, location_name: 'CreationTime', traits: {"smithy.api#required" => {}}))
    PolicyVersion.add_member(:last_updated_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IsoTimestamp, location_name: 'LastUpdatedTime', traits: {"smithy.api#required" => {}}))
    PolicyVersion.add_member(:document, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyDocument, location_name: 'Document', traits: {"aws.api#data" => "usage", "smithy.api#required" => {}}))
    PolicyVersion.type = Types::PolicyVersion
    PolicyVersionSummary.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QualifiedPolicyArn, location_name: 'Arn', traits: {"aws.api#data" => "usage", "smithy.api#required" => {}}))
    PolicyVersionSummary.add_member(:policy_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnqualifiedPolicyArn, location_name: 'PolicyArn', traits: {"aws.api#data" => "usage", "smithy.api#required" => {}}))
    PolicyVersionSummary.add_member(:version_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyVersionId, location_name: 'VersionId', traits: {"aws.api#data" => "usage", "smithy.api#required" => {}}))
    PolicyVersionSummary.add_member(:policy_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyType, location_name: 'PolicyType', traits: {"aws.api#data" => "usage", "smithy.api#required" => {}}))
    PolicyVersionSummary.add_member(:is_default, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'IsDefault', traits: {"smithy.api#required" => {}}))
    PolicyVersionSummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyName, location_name: 'Name', traits: {"aws.api#data" => "usage", "smithy.api#required" => {}}))
    PolicyVersionSummary.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyStatus, location_name: 'Status', traits: {"aws.api#data" => "usage", "smithy.api#required" => {}}))
    PolicyVersionSummary.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IsoTimestamp, location_name: 'CreationTime', traits: {"smithy.api#required" => {}}))
    PolicyVersionSummary.add_member(:last_updated_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IsoTimestamp, location_name: 'LastUpdatedTime', traits: {"smithy.api#required" => {}}))
    PolicyVersionSummary.type = Types::PolicyVersionSummary
    PolicyVersions.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyVersionSummary, traits: {"aws.api#data" => "usage"})
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    SessionExecutionStatus.add_member(:executed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EXECUTED', traits: {"smithy.api#enumValue" => "EXECUTED"}))
    SessionExecutionStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    SessionExecutionStatus.add_member(:pending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING', traits: {"smithy.api#enumValue" => "PENDING"}))
    SessionMetadata.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SessionKey)
    SessionMetadata.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SessionValue)
    SessionResponse.add_member(:approved, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APPROVED', traits: {"smithy.api#enumValue" => "APPROVED"}))
    SessionResponse.add_member(:rejected, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REJECTED', traits: {"smithy.api#enumValue" => "REJECTED"}))
    SessionResponse.add_member(:no_response, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NO_RESPONSE', traits: {"smithy.api#enumValue" => "NO_RESPONSE"}))
    SessionStatus.add_member(:pending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING', traits: {"smithy.api#enumValue" => "PENDING"}))
    SessionStatus.add_member(:cancelled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANCELLED', traits: {"smithy.api#enumValue" => "CANCELLED"}))
    SessionStatus.add_member(:approved, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APPROVED', traits: {"smithy.api#enumValue" => "APPROVED"}))
    SessionStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    SessionStatus.add_member(:creating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "CREATING"}))
    SessionStatusCode.add_member(:rejected, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REJECTED', traits: {"smithy.api#enumValue" => "REJECTED"}))
    SessionStatusCode.add_member(:expired, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EXPIRED', traits: {"smithy.api#enumValue" => "EXPIRED"}))
    SessionStatusCode.add_member(:configuration_changed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONFIGURATION_CHANGED', traits: {"smithy.api#enumValue" => "CONFIGURATION_CHANGED"}))
    StartActiveApprovalTeamDeletionRequest.add_member(:pending_window_days, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'PendingWindowDays'))
    StartActiveApprovalTeamDeletionRequest.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalTeamArn, location_name: 'Arn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartActiveApprovalTeamDeletionRequest.type = Types::StartActiveApprovalTeamDeletionRequest
    StartActiveApprovalTeamDeletionResponse.add_member(:deletion_completion_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IsoTimestamp, location_name: 'DeletionCompletionTime'))
    StartActiveApprovalTeamDeletionResponse.add_member(:deletion_start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IsoTimestamp, location_name: 'DeletionStartTime'))
    StartActiveApprovalTeamDeletionResponse.type = Types::StartActiveApprovalTeamDeletionResponse
    TagKeyList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    Tags.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    Tags.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue)
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#required" => {}}))
    ThrottlingException.type = Types::ThrottlingException
    TooManyTagsException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#required" => {}}))
    TooManyTagsException.add_member(:resource_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceName'))
    TooManyTagsException.type = Types::TooManyTagsException
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'TagKeys', traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateApprovalTeamRequest.add_member(:approval_strategy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalStrategy, location_name: 'ApprovalStrategy'))
    UpdateApprovalTeamRequest.add_member(:approvers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalTeamRequestApprovers, location_name: 'Approvers'))
    UpdateApprovalTeamRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description'))
    UpdateApprovalTeamRequest.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalTeamArn, location_name: 'Arn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateApprovalTeamRequest.type = Types::UpdateApprovalTeamRequest
    UpdateApprovalTeamResponse.add_member(:version_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VersionId'))
    UpdateApprovalTeamResponse.type = Types::UpdateApprovalTeamResponse
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#required" => {}}))
    ValidationException.type = Types::ValidationException

    AWSFluffyCoreService = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.mpa#AWSFluffyCoreService"
      service.name = "AWSFluffyCoreService"
      service.version = "2022-07-26"
      service.traits = {"aws.api#service" => {"sdkId" => "MPA", "arnNamespace" => "mpa"}, "aws.auth#sigv4" => {"name" => "mpa"}, "aws.endpoints#dualStackOnlyEndpoints" => {}, "aws.endpoints#standardRegionalEndpoints" => {}, "aws.iam#defineConditionKeys" => {"aws:ResourceTag/${TagKey}" => {"type" => "String", "documentation" => "Filters access by a tag key and value pair of a resource", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-resourcetag"}, "aws:RequestTag/${TagKey}" => {"type" => "String", "documentation" => "Filters access by a tag key and value pair that is allowed in the request", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-requesttag"}, "aws:TagKeys" => {"type" => "ArrayOfString", "documentation" => "Filters access by a list of tag keys that are allowed in the request", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-tagkeys"}, "mpa:RequestedOperation" => {"type" => "String", "documentation" => "Filters access by the requested operation that requires team approval before it can be executed", "externalDocumentation" => "${DocHomeURL}mpa/latest/userguide/mpa-concepts.html"}, "mpa:ProtectedResourceAccount" => {"type" => "String", "documentation" => "Filters access by the account that owns the resource that is the target of the operation that requires approval", "externalDocumentation" => "${DocHomeURL}mpa/latest/userguide/mpa-concepts.html"}}, "aws.iam#disableConditionKeyInference" => {}, "aws.iam#supportedPrincipalTypes" => ["Root", "IAMUser", "IAMRole", "FederatedUser"], "aws.protocols#restJson1" => {}, "smithy.api#title" => "AWS Multi-party Approval"}
      service.add_operation(:cancel_session, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mpa#CancelSession"
        operation.name = "CancelSession"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CancelSessionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CancelSessionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#conditionKeys" => ["aws:ResourceTag/${TagKey}", "mpa:RequestedOperation", "mpa:ProtectedResourceAccount"], "aws.iam#iamAction" => {"documentation" => "Grants permission to cancel an approval session"}, "smithy.api#http" => {"code" => 200, "method" => "PUT", "uri" => "/sessions/{SessionArn}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_approval_team, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mpa#CreateApprovalTeam"
        operation.name = "CreateApprovalTeam"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateApprovalTeamRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateApprovalTeamResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#conditionKeys" => ["aws:ResourceTag/${TagKey}", "aws:RequestTag/${TagKey}", "aws:TagKeys"], "aws.iam#iamAction" => {"documentation" => "Grants permission to create an approval team"}, "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/approval-teams"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_identity_source, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mpa#CreateIdentitySource"
        operation.name = "CreateIdentitySource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateIdentitySourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateIdentitySourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#conditionKeys" => ["aws:ResourceTag/${TagKey}", "aws:RequestTag/${TagKey}", "aws:TagKeys"], "aws.iam#iamAction" => {"documentation" => "Grants permission to create an identity source"}, "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/identity-sources"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_identity_source, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mpa#DeleteIdentitySource"
        operation.name = "DeleteIdentitySource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteIdentitySourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#conditionKeys" => ["aws:ResourceTag/${TagKey}"], "aws.iam#iamAction" => {"documentation" => "Grants permission to delete an identity source"}, "smithy.api#http" => {"code" => 200, "method" => "DELETE", "uri" => "/identity-sources/{IdentitySourceArn}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_inactive_approval_team_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mpa#DeleteInactiveApprovalTeamVersion"
        operation.name = "DeleteInactiveApprovalTeamVersion"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteInactiveApprovalTeamVersionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteInactiveApprovalTeamVersionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#conditionKeys" => ["aws:ResourceTag/${TagKey}"], "aws.iam#iamAction" => {"documentation" => "Grants permission to delete an inactive approval team"}, "smithy.api#http" => {"code" => 200, "method" => "DELETE", "uri" => "/approval-teams/{Arn}/{VersionId}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_approval_team, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mpa#GetApprovalTeam"
        operation.name = "GetApprovalTeam"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetApprovalTeamRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetApprovalTeamResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#conditionKeys" => ["aws:ResourceTag/${TagKey}"], "aws.iam#iamAction" => {"documentation" => "Grants permission to retrieve details for an approval team"}, "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/approval-teams/{Arn}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_identity_source, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mpa#GetIdentitySource"
        operation.name = "GetIdentitySource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetIdentitySourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetIdentitySourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#conditionKeys" => ["aws:ResourceTag/${TagKey}"], "aws.iam#iamAction" => {"documentation" => "Grants permission to retrieve details for an identity source"}, "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/identity-sources/{IdentitySourceArn}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_policy_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mpa#GetPolicyVersion"
        operation.name = "GetPolicyVersion"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetPolicyVersionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetPolicyVersionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to retrieve details for a policy"}, "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/policy-versions/{PolicyVersionArn}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_resource_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mpa#GetResourcePolicy"
        operation.name = "GetResourcePolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetResourcePolicyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetResourcePolicyResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to retrieve details for a specific resource"}, "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/GetResourcePolicy"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_session, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mpa#GetSession"
        operation.name = "GetSession"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSessionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSessionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#conditionKeys" => ["aws:ResourceTag/${TagKey}", "mpa:RequestedOperation", "mpa:ProtectedResourceAccount"], "aws.iam#iamAction" => {"documentation" => "Grants permission to retrieve details for an approval session"}, "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/sessions/{SessionArn}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_approval_teams, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mpa#ListApprovalTeams"
        operation.name = "ListApprovalTeams"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListApprovalTeamsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListApprovalTeamsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to list approval teams"}, "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/approval-teams/?List"}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "ListApprovalTeamsSuccess", "params" => {}, "expect" => {"success" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
        operation[:paginator] = Paginators::ListApprovalTeams.new
      end)
      service.add_operation(:list_identity_sources, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mpa#ListIdentitySources"
        operation.name = "ListIdentitySources"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListIdentitySourcesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListIdentitySourcesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to list identity sources"}, "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/identity-sources/?List"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListIdentitySources.new
      end)
      service.add_operation(:list_policies, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mpa#ListPolicies"
        operation.name = "ListPolicies"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListPoliciesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListPoliciesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to list policies"}, "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/policies/?List"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListPolicies.new
      end)
      service.add_operation(:list_policy_versions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mpa#ListPolicyVersions"
        operation.name = "ListPolicyVersions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListPolicyVersionsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListPolicyVersionsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to list the versions for policies"}, "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/policies/{PolicyArn}/?List"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListPolicyVersions.new
      end)
      service.add_operation(:list_resource_policies, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mpa#ListResourcePolicies"
        operation.name = "ListResourcePolicies"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListResourcePoliciesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListResourcePoliciesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to list policies for a resource"}, "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/resource-policies/{ResourceArn}/?List"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListResourcePolicies.new
      end)
      service.add_operation(:list_sessions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mpa#ListSessions"
        operation.name = "ListSessions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListSessionsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListSessionsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to list approval sessions"}, "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/approval-teams/{ApprovalTeamArn}/sessions/?List"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListSessions.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mpa#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to list tags for a resource"}, "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/tags/{ResourceArn}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:start_active_approval_team_deletion, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mpa#StartActiveApprovalTeamDeletion"
        operation.name = "StartActiveApprovalTeamDeletion"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartActiveApprovalTeamDeletionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartActiveApprovalTeamDeletionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#conditionKeys" => ["aws:ResourceTag/${TagKey}"], "aws.iam#iamAction" => {"documentation" => "Grants permission to start the deletion process for an active approval team"}, "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/approval-teams/{Arn}?Delete"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mpa#TagResource"
        operation.name = "TagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTagsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#conditionKeys" => ["aws:ResourceTag/${TagKey}", "aws:RequestTag/${TagKey}", "aws:TagKeys"], "aws.iam#iamAction" => {"documentation" => "Grants permission to tag a resource"}, "smithy.api#http" => {"code" => 200, "method" => "PUT", "uri" => "/tags/{ResourceArn}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mpa#UntagResource"
        operation.name = "UntagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#conditionKeys" => ["aws:ResourceTag/${TagKey}", "aws:TagKeys"], "aws.iam#iamAction" => {"documentation" => "Grants permission to untag a resource"}, "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/tags/{ResourceArn}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_approval_team, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mpa#UpdateApprovalTeam"
        operation.name = "UpdateApprovalTeam"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateApprovalTeamRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateApprovalTeamResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#conditionKeys" => ["aws:ResourceTag/${TagKey}"], "aws.iam#iamAction" => {"documentation" => "Grants permission to update approval team"}, "smithy.api#http" => {"code" => 200, "method" => "PATCH", "uri" => "/approval-teams/{Arn}"}, "smithy.api#idempotent" => {}}
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
