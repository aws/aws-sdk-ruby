# frozen_string_literal: true

# This is generated code!

module Aws::MPA
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mpa#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccountId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mpa#AccountId', name: 'AccountId', traits: {"aws.api#data" => "account", "smithy.api#length" => {"max" => 12}, "smithy.api#pattern" => "^\\d{12}$"})
    ActionCompletionStrategy = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mpa#ActionCompletionStrategy', name: 'ActionCompletionStrategy')
    ActionName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mpa#ActionName', name: 'ActionName', traits: {"smithy.api#length" => {"max" => 500}})
    ApprovalStrategy = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.mpa#ApprovalStrategy', name: 'ApprovalStrategy')
    ApprovalStrategyResponse = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.mpa#ApprovalStrategyResponse', name: 'ApprovalStrategyResponse')
    ApprovalTeamArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mpa#ApprovalTeamArn', name: 'ApprovalTeamArn', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:aws(-[^:]+)?:mpa:[a-z0-9-]{1,20}:[0-9]{12}:approval-team/[a-zA-Z0-9._-]+$"})
    ApprovalTeamName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mpa#ApprovalTeamName', name: 'ApprovalTeamName', traits: {"aws.api#data" => "usage", "smithy.api#length" => {"max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9._-]+$"})
    ApprovalTeamRequestApprover = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mpa#ApprovalTeamRequestApprover', name: 'ApprovalTeamRequestApprover', traits: {"aws.api#data" => "usage"})
    ApprovalTeamRequestApprovers = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mpa#ApprovalTeamRequestApprovers', name: 'ApprovalTeamRequestApprovers', traits: {"aws.api#data" => "usage", "smithy.api#length" => {"min" => 1, "max" => 20}})
    ApprovalTeamStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mpa#ApprovalTeamStatus', name: 'ApprovalTeamStatus')
    ApprovalTeamStatusCode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mpa#ApprovalTeamStatusCode', name: 'ApprovalTeamStatusCode')
    CancelSessionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mpa#CancelSessionRequest', name: 'CancelSessionRequest')
    CancelSessionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mpa#CancelSessionResponse', name: 'CancelSessionResponse')
    ConflictException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mpa#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreateApprovalTeamRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mpa#CreateApprovalTeamRequest', name: 'CreateApprovalTeamRequest')
    CreateApprovalTeamResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mpa#CreateApprovalTeamResponse', name: 'CreateApprovalTeamResponse')
    CreateIdentitySourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mpa#CreateIdentitySourceRequest', name: 'CreateIdentitySourceRequest')
    CreateIdentitySourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mpa#CreateIdentitySourceResponse', name: 'CreateIdentitySourceResponse')
    DeleteIdentitySourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mpa#DeleteIdentitySourceRequest', name: 'DeleteIdentitySourceRequest')
    DeleteInactiveApprovalTeamVersionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mpa#DeleteInactiveApprovalTeamVersionRequest', name: 'DeleteInactiveApprovalTeamVersionRequest')
    DeleteInactiveApprovalTeamVersionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mpa#DeleteInactiveApprovalTeamVersionResponse', name: 'DeleteInactiveApprovalTeamVersionResponse')
    Description = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mpa#Description', name: 'Description', traits: {"aws.api#data" => "usage", "smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#sensitive" => {}})
    Filter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mpa#Filter', name: 'Filter')
    FilterField = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mpa#FilterField', name: 'FilterField')
    Filters = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mpa#Filters', name: 'Filters', traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    GetApprovalTeamRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mpa#GetApprovalTeamRequest', name: 'GetApprovalTeamRequest')
    GetApprovalTeamResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mpa#GetApprovalTeamResponse', name: 'GetApprovalTeamResponse')
    GetApprovalTeamResponseApprover = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mpa#GetApprovalTeamResponseApprover', name: 'GetApprovalTeamResponseApprover')
    GetApprovalTeamResponseApprovers = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mpa#GetApprovalTeamResponseApprovers', name: 'GetApprovalTeamResponseApprovers', traits: {"smithy.api#length" => {"max" => 20}})
    GetIdentitySourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mpa#GetIdentitySourceRequest', name: 'GetIdentitySourceRequest')
    GetIdentitySourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mpa#GetIdentitySourceResponse', name: 'GetIdentitySourceResponse')
    GetPolicyVersionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mpa#GetPolicyVersionRequest', name: 'GetPolicyVersionRequest')
    GetPolicyVersionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mpa#GetPolicyVersionResponse', name: 'GetPolicyVersionResponse')
    GetResourcePolicyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mpa#GetResourcePolicyRequest', name: 'GetResourcePolicyRequest')
    GetResourcePolicyResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mpa#GetResourcePolicyResponse', name: 'GetResourcePolicyResponse')
    GetSessionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mpa#GetSessionRequest', name: 'GetSessionRequest')
    GetSessionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mpa#GetSessionResponse', name: 'GetSessionResponse')
    GetSessionResponseApproverResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mpa#GetSessionResponseApproverResponse', name: 'GetSessionResponseApproverResponse', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.mpa#IdentitySource"}]})
    GetSessionResponseApproverResponses = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mpa#GetSessionResponseApproverResponses', name: 'GetSessionResponseApproverResponses', traits: {"smithy.api#length" => {"max" => 20}})
    IamIdentityCenter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mpa#IamIdentityCenter', name: 'IamIdentityCenter', traits: {"aws.api#data" => "usage"})
    IamIdentityCenterForGet = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mpa#IamIdentityCenterForGet', name: 'IamIdentityCenterForGet', traits: {"aws.api#data" => "usage"})
    IamIdentityCenterForList = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mpa#IamIdentityCenterForList', name: 'IamIdentityCenterForList', traits: {"aws.api#data" => "usage"})
    IdcInstanceArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mpa#IdcInstanceArn', name: 'IdcInstanceArn', traits: {"aws.api#data" => "usage", "smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:.+:sso:::instance/(?:sso)?ins-[a-zA-Z0-9-.]{16}$"})
    IdentityId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mpa#IdentityId', name: 'IdentityId', traits: {"aws.api#data" => "usage", "smithy.api#length" => {"min" => 1, "max" => 100}})
    IdentitySourceForList = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mpa#IdentitySourceForList', name: 'IdentitySourceForList', traits: {"aws.api#data" => "usage"})
    IdentitySourceParameters = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mpa#IdentitySourceParameters', name: 'IdentitySourceParameters')
    IdentitySourceParametersForGet = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.mpa#IdentitySourceParametersForGet', name: 'IdentitySourceParametersForGet', traits: {"aws.api#data" => "usage"})
    IdentitySourceParametersForList = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.mpa#IdentitySourceParametersForList', name: 'IdentitySourceParametersForList')
    IdentitySourceStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mpa#IdentitySourceStatus', name: 'IdentitySourceStatus')
    IdentitySourceStatusCode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mpa#IdentitySourceStatusCode', name: 'IdentitySourceStatusCode')
    IdentitySourceType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mpa#IdentitySourceType', name: 'IdentitySourceType')
    IdentitySources = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mpa#IdentitySources', name: 'IdentitySources', traits: {"aws.api#data" => "usage", "smithy.api#length" => {"max" => 20}})
    IdentityStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mpa#IdentityStatus', name: 'IdentityStatus')
    InternalServerException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mpa#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500, "smithy.api#retryable" => {}})
    InvalidParameterException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mpa#InvalidParameterException', name: 'InvalidParameterException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    IsoTimestamp = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.mpa#IsoTimestamp', name: 'IsoTimestamp', traits: {"smithy.api#timestampFormat" => "date-time"})
    ListApprovalTeamsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mpa#ListApprovalTeamsRequest', name: 'ListApprovalTeamsRequest')
    ListApprovalTeamsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mpa#ListApprovalTeamsResponse', name: 'ListApprovalTeamsResponse')
    ListApprovalTeamsResponseApprovalTeam = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mpa#ListApprovalTeamsResponseApprovalTeam', name: 'ListApprovalTeamsResponseApprovalTeam')
    ListApprovalTeamsResponseApprovalTeams = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mpa#ListApprovalTeamsResponseApprovalTeams', name: 'ListApprovalTeamsResponseApprovalTeams', traits: {"smithy.api#length" => {"max" => 20}})
    ListIdentitySourcesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mpa#ListIdentitySourcesRequest', name: 'ListIdentitySourcesRequest')
    ListIdentitySourcesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mpa#ListIdentitySourcesResponse', name: 'ListIdentitySourcesResponse')
    ListPoliciesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mpa#ListPoliciesRequest', name: 'ListPoliciesRequest')
    ListPoliciesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mpa#ListPoliciesResponse', name: 'ListPoliciesResponse')
    ListPolicyVersionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mpa#ListPolicyVersionsRequest', name: 'ListPolicyVersionsRequest')
    ListPolicyVersionsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mpa#ListPolicyVersionsResponse', name: 'ListPolicyVersionsResponse')
    ListResourcePoliciesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mpa#ListResourcePoliciesRequest', name: 'ListResourcePoliciesRequest')
    ListResourcePoliciesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mpa#ListResourcePoliciesResponse', name: 'ListResourcePoliciesResponse')
    ListResourcePoliciesResponseResourcePolicies = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mpa#ListResourcePoliciesResponseResourcePolicies', name: 'ListResourcePoliciesResponseResourcePolicies', traits: {"smithy.api#length" => {"max" => 100}})
    ListResourcePoliciesResponseResourcePolicy = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mpa#ListResourcePoliciesResponseResourcePolicy', name: 'ListResourcePoliciesResponseResourcePolicy')
    ListSessionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mpa#ListSessionsRequest', name: 'ListSessionsRequest')
    ListSessionsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mpa#ListSessionsResponse', name: 'ListSessionsResponse')
    ListSessionsResponseSession = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mpa#ListSessionsResponseSession', name: 'ListSessionsResponseSession')
    ListSessionsResponseSessions = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mpa#ListSessionsResponseSessions', name: 'ListSessionsResponseSessions', traits: {"smithy.api#length" => {"max" => 20}})
    ListTagsForResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mpa#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mpa#ListTagsForResourceResponse', name: 'ListTagsForResourceResponse')
    MaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.mpa#MaxResults', name: 'MaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 20}})
    Message = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mpa#Message', name: 'Message', traits: {"smithy.api#length" => {"max" => 500}})
    MofNApprovalStrategy = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mpa#MofNApprovalStrategy', name: 'MofNApprovalStrategy')
    Operator = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mpa#Operator', name: 'Operator')
    ParticipantId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mpa#ParticipantId', name: 'ParticipantId', traits: {"aws.api#data" => "usage", "smithy.api#length" => {"min" => 1, "max" => 100}})
    PendingUpdate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mpa#PendingUpdate', name: 'PendingUpdate', traits: {"aws.api#data" => "usage"})
    Policies = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mpa#Policies', name: 'Policies', traits: {"aws.api#data" => "usage", "smithy.api#length" => {"max" => 20}})
    PoliciesReferences = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mpa#PoliciesReferences', name: 'PoliciesReferences', traits: {"aws.api#data" => "usage", "smithy.api#length" => {"min" => 1, "max" => 10}})
    Policy = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mpa#Policy', name: 'Policy', traits: {"aws.api#data" => "usage"})
    PolicyDocument = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mpa#PolicyDocument', name: 'PolicyDocument', traits: {"aws.api#data" => "usage", "smithy.api#length" => {"max" => 400000}, "smithy.api#sensitive" => {}})
    PolicyName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mpa#PolicyName', name: 'PolicyName', traits: {"aws.api#data" => "usage", "smithy.api#length" => {"max" => 64}})
    PolicyReference = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mpa#PolicyReference', name: 'PolicyReference', traits: {"aws.api#data" => "usage"})
    PolicyStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mpa#PolicyStatus', name: 'PolicyStatus')
    PolicyType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mpa#PolicyType', name: 'PolicyType')
    PolicyVersion = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mpa#PolicyVersion', name: 'PolicyVersion', traits: {"aws.api#data" => "usage"})
    PolicyVersionId = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.mpa#PolicyVersionId', name: 'PolicyVersionId', traits: {"smithy.api#range" => {"min" => 1}})
    PolicyVersionSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mpa#PolicyVersionSummary', name: 'PolicyVersionSummary', traits: {"aws.api#data" => "usage"})
    PolicyVersions = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mpa#PolicyVersions', name: 'PolicyVersions', traits: {"aws.api#data" => "usage", "smithy.api#length" => {"max" => 20}})
    QualifiedPolicyArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mpa#QualifiedPolicyArn', name: 'QualifiedPolicyArn', traits: {"aws.api#data" => "usage", "smithy.api#length" => {"max" => 1224}, "smithy.api#pattern" => "^arn:.{1,63}:mpa:::aws:policy/[a-zA-Z0-9_\\.-]{1,1023}/[a-zA-Z0-9_\\.-]{1,1023}/(?:[\\d]+|\\$DEFAULT)$"})
    Region = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mpa#Region', name: 'Region', traits: {"smithy.api#length" => {"max" => 100}})
    RequesterComment = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mpa#RequesterComment', name: 'RequesterComment', traits: {"aws.api#data" => "usage", "smithy.api#length" => {"max" => 200}, "smithy.api#sensitive" => {}})
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mpa#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ServicePrincipal = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mpa#ServicePrincipal', name: 'ServicePrincipal', traits: {"aws.api#data" => "usage", "smithy.api#length" => {"min" => 1, "max" => 100}})
    ServiceQuotaExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mpa#ServiceQuotaExceededException', name: 'ServiceQuotaExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    SessionArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mpa#SessionArn', name: 'SessionArn', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:aws(-[^:]+)?:mpa:[a-z0-9-]{1,20}:[0-9]{12}:session/[a-zA-Z0-9._-]+/[a-zA-Z0-9_-]+$"})
    SessionExecutionStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mpa#SessionExecutionStatus', name: 'SessionExecutionStatus')
    SessionKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mpa#SessionKey', name: 'SessionKey', traits: {"aws.api#data" => "usage", "smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[a-zA-Z0-9\\p{P}]*$", "smithy.api#sensitive" => {}})
    SessionMetadata = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.mpa#SessionMetadata', name: 'SessionMetadata', traits: {"smithy.api#sensitive" => {}})
    SessionResponse = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mpa#SessionResponse', name: 'SessionResponse')
    SessionStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mpa#SessionStatus', name: 'SessionStatus')
    SessionStatusCode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mpa#SessionStatusCode', name: 'SessionStatusCode')
    SessionValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mpa#SessionValue', name: 'SessionValue', traits: {"aws.api#data" => "usage", "smithy.api#length" => {"min" => 1, "max" => 200}, "smithy.api#pattern" => "^[a-zA-Z0-9\\p{P}]*$", "smithy.api#sensitive" => {}})
    StartActiveApprovalTeamDeletionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mpa#StartActiveApprovalTeamDeletionRequest', name: 'StartActiveApprovalTeamDeletionRequest')
    StartActiveApprovalTeamDeletionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mpa#StartActiveApprovalTeamDeletionResponse', name: 'StartActiveApprovalTeamDeletionResponse')
    String = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mpa#String', name: 'String', traits: {"smithy.api#length" => {"max" => 1000}})
    TagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mpa#TagKey', name: 'TagKey', traits: {"aws.api#data" => "tagging", "smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#sensitive" => {}})
    TagKeyList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mpa#TagKeyList', name: 'TagKeyList', traits: {"aws.api#data" => "tagging", "smithy.api#length" => {"min" => 0, "max" => 50}, "smithy.api#sensitive" => {}})
    TagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mpa#TagResourceRequest', name: 'TagResourceRequest')
    TagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mpa#TagResourceResponse', name: 'TagResourceResponse')
    TagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mpa#TagValue', name: 'TagValue', traits: {"aws.api#data" => "tagging", "smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#sensitive" => {}})
    Tags = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.mpa#Tags', name: 'Tags', traits: {"smithy.api#sensitive" => {}})
    ThrottlingException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mpa#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    Token = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mpa#Token', name: 'Token', traits: {"smithy.api#length" => {"max" => 4096}})
    TooManyTagsException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mpa#TooManyTagsException', name: 'TooManyTagsException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    UnqualifiedPolicyArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mpa#UnqualifiedPolicyArn', name: 'UnqualifiedPolicyArn', traits: {"aws.api#data" => "usage", "smithy.api#length" => {"max" => 1224}, "smithy.api#pattern" => "^arn:.{1,63}:mpa:::aws:policy/[a-zA-Z0-9_\\.-]{1,1023}/[a-zA-Z0-9_\\.-]{1,1023}$"})
    UntagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mpa#UntagResourceRequest', name: 'UntagResourceRequest')
    UntagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mpa#UntagResourceResponse', name: 'UntagResourceResponse')
    UpdateApprovalTeamRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mpa#UpdateApprovalTeamRequest', name: 'UpdateApprovalTeamRequest')
    UpdateApprovalTeamResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mpa#UpdateApprovalTeamResponse', name: 'UpdateApprovalTeamResponse')
    ValidationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mpa#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})

    AccessDeniedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>Message for the <code>AccessDeniedException</code> error.</p>", "smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    ActionCompletionStrategy.add_member(:auto_completion_upon_approval, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AUTO_COMPLETION_UPON_APPROVAL', traits: {"smithy.api#enumValue" => "AUTO_COMPLETION_UPON_APPROVAL"}))
    ApprovalStrategy.add_member(:mof_n, Types::ApprovalStrategy::MofN, Smithy::Schema::Shapes::ShapeRef.new(shape: MofNApprovalStrategy, location_name: 'MofN', traits: {"smithy.api#documentation" => "<p>Minimum number of approvals (M) required for a total number of approvers (N).</p>"}))
    ApprovalStrategy.add_member(:unknown, Types::ApprovalStrategy::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    ApprovalStrategy.type = Types::ApprovalStrategy
    ApprovalStrategyResponse.add_member(:mof_n, Types::ApprovalStrategyResponse::MofN, Smithy::Schema::Shapes::ShapeRef.new(shape: MofNApprovalStrategy, location_name: 'MofN', traits: {"smithy.api#documentation" => "<p>Minimum number of approvals (M) required for a total number of approvers (N).</p>"}))
    ApprovalStrategyResponse.add_member(:unknown, Types::ApprovalStrategyResponse::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    ApprovalStrategyResponse.type = Types::ApprovalStrategyResponse
    ApprovalTeamRequestApprover.add_member(:primary_identity_id, Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityId, location_name: 'PrimaryIdentityId', traits: {"aws.api#data" => "usage", "smithy.api#documentation" => "<p>ID for the user.</p>", "smithy.api#required" => {}}))
    ApprovalTeamRequestApprover.add_member(:primary_identity_source_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PrimaryIdentitySourceArn', traits: {"aws.api#data" => "usage", "smithy.api#documentation" => "<p>Amazon Resource Name (ARN) for the identity source. The identity source manages the user authentication for approvers.</p>", "smithy.api#required" => {}}))
    ApprovalTeamRequestApprover.type = Types::ApprovalTeamRequestApprover
    ApprovalTeamRequestApprovers.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalTeamRequestApprover)
    ApprovalTeamStatus.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    ApprovalTeamStatus.add_member(:inactive, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INACTIVE', traits: {"smithy.api#enumValue" => "INACTIVE"}))
    ApprovalTeamStatus.add_member(:deleting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    ApprovalTeamStatus.add_member(:pending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING', traits: {"smithy.api#enumValue" => "PENDING"}))
    ApprovalTeamStatusCode.add_member(:validating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VALIDATING', traits: {"smithy.api#enumValue" => "VALIDATING"}))
    ApprovalTeamStatusCode.add_member(:pending_activation, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING_ACTIVATION', traits: {"smithy.api#enumValue" => "PENDING_ACTIVATION"}))
    ApprovalTeamStatusCode.add_member(:failed_validation, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED_VALIDATION', traits: {"smithy.api#enumValue" => "FAILED_VALIDATION"}))
    ApprovalTeamStatusCode.add_member(:failed_activation, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED_ACTIVATION', traits: {"smithy.api#enumValue" => "FAILED_ACTIVATION"}))
    ApprovalTeamStatusCode.add_member(:update_pending_approval, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATE_PENDING_APPROVAL', traits: {"smithy.api#enumValue" => "UPDATE_PENDING_APPROVAL"}))
    ApprovalTeamStatusCode.add_member(:update_pending_activation, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATE_PENDING_ACTIVATION', traits: {"smithy.api#enumValue" => "UPDATE_PENDING_ACTIVATION"}))
    ApprovalTeamStatusCode.add_member(:update_failed_approval, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATE_FAILED_APPROVAL', traits: {"smithy.api#enumValue" => "UPDATE_FAILED_APPROVAL"}))
    ApprovalTeamStatusCode.add_member(:update_failed_activation, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATE_FAILED_ACTIVATION', traits: {"smithy.api#enumValue" => "UPDATE_FAILED_ACTIVATION"}))
    ApprovalTeamStatusCode.add_member(:update_failed_validation, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATE_FAILED_VALIDATION', traits: {"smithy.api#enumValue" => "UPDATE_FAILED_VALIDATION"}))
    ApprovalTeamStatusCode.add_member(:delete_pending_approval, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETE_PENDING_APPROVAL', traits: {"smithy.api#enumValue" => "DELETE_PENDING_APPROVAL"}))
    ApprovalTeamStatusCode.add_member(:delete_failed_approval, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETE_FAILED_APPROVAL', traits: {"smithy.api#enumValue" => "DELETE_FAILED_APPROVAL"}))
    ApprovalTeamStatusCode.add_member(:delete_failed_validation, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETE_FAILED_VALIDATION', traits: {"smithy.api#enumValue" => "DELETE_FAILED_VALIDATION"}))
    CancelSessionRequest.add_member(:session_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionArn, location_name: 'SessionArn', traits: {"smithy.api#documentation" => "<p>Amazon Resource Name (ARN) for the session.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CancelSessionRequest.type = Types::CancelSessionRequest
    CancelSessionResponse.type = Types::CancelSessionResponse
    ConflictException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>Message for the <code>ConflictException</code> error.</p>", "smithy.api#required" => {}}))
    ConflictException.type = Types::ConflictException
    CreateApprovalTeamRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'ClientToken', traits: {"smithy.api#documentation" => "<p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If not provided, the Amazon Web Services populates this field.</p> <note> <p> <b>What is idempotency?</b> </p> <p>When you make a mutating API request, the request typically returns a result before the operation's asynchronous workflows have completed. Operations might also time out or encounter other server issues before they complete, even though the request has already returned a result. This could make it difficult to determine whether the request succeeded or not, and could lead to multiple retries to ensure that the operation completes successfully. However, if the original request and the subsequent retries are successful, the operation is completed multiple times. This means that you might create more resources than you intended.</p> <p> <i>Idempotency</i> ensures that an API request completes no more than one time. With an idempotent request, if the original request completes successfully, any subsequent retries complete successfully without performing any further actions.</p> </note>", "smithy.api#idempotencyToken" => {}}))
    CreateApprovalTeamRequest.add_member(:approval_strategy, Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalStrategy, location_name: 'ApprovalStrategy', traits: {"smithy.api#documentation" => "<p>An <code>ApprovalStrategy</code> object. Contains details for how the team grants approval.</p>", "smithy.api#required" => {}}))
    CreateApprovalTeamRequest.add_member(:approvers, Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalTeamRequestApprovers, location_name: 'Approvers', traits: {"smithy.api#documentation" => "<p>An array of <code>ApprovalTeamRequesterApprovers</code> objects. Contains details for the approvers in the team.</p>", "smithy.api#required" => {}}))
    CreateApprovalTeamRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>Description for the team.</p>", "smithy.api#required" => {}}))
    CreateApprovalTeamRequest.add_member(:policies, Smithy::Schema::Shapes::ShapeRef.new(shape: PoliciesReferences, location_name: 'Policies', traits: {"smithy.api#documentation" => "<p>An array of <code>PolicyReference</code> objects. Contains a list of policies that define the permissions for team resources.</p> <p>The protected operation for a service integration might require specific permissions. For more information, see <a href=\"https://docs.aws.amazon.com/mpa/latest/userguide/mpa-integrations.html\">How other services work with Multi-party approval</a> in the <i>Multi-party approval User Guide</i>.</p>", "smithy.api#required" => {}}))
    CreateApprovalTeamRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalTeamName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>Name of the team.</p>", "smithy.api#required" => {}}))
    CreateApprovalTeamRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>Tags you want to attach to the team.</p>"}))
    CreateApprovalTeamRequest.type = Types::CreateApprovalTeamRequest
    CreateApprovalTeamResponse.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: IsoTimestamp, location_name: 'CreationTime', traits: {"smithy.api#documentation" => "<p>Timestamp when the team was created.</p>"}))
    CreateApprovalTeamResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalTeamArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>Amazon Resource Name (ARN) for the team that was created.</p>"}))
    CreateApprovalTeamResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>Name of the team that was created.</p>"}))
    CreateApprovalTeamResponse.add_member(:version_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VersionId', traits: {"smithy.api#documentation" => "<p>Version ID for the team that was created. When a team is updated, the version ID changes.</p>"}))
    CreateApprovalTeamResponse.type = Types::CreateApprovalTeamResponse
    CreateIdentitySourceRequest.add_member(:identity_source_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: IdentitySourceParameters, location_name: 'IdentitySourceParameters', traits: {"smithy.api#documentation" => "<p>A <code> IdentitySourceParameters</code> object. Contains details for the resource that provides identities to the identity source. For example, an IAM Identity Center instance.</p>", "smithy.api#required" => {}}))
    CreateIdentitySourceRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'ClientToken', traits: {"smithy.api#documentation" => "<p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If not provided, the Amazon Web Services populates this field.</p> <note> <p> <b>What is idempotency?</b> </p> <p>When you make a mutating API request, the request typically returns a result before the operation's asynchronous workflows have completed. Operations might also time out or encounter other server issues before they complete, even though the request has already returned a result. This could make it difficult to determine whether the request succeeded or not, and could lead to multiple retries to ensure that the operation completes successfully. However, if the original request and the subsequent retries are successful, the operation is completed multiple times. This means that you might create more resources than you intended.</p> <p> <i>Idempotency</i> ensures that an API request completes no more than one time. With an idempotent request, if the original request completes successfully, any subsequent retries complete successfully without performing any further actions.</p> </note>", "smithy.api#idempotencyToken" => {}}))
    CreateIdentitySourceRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>Tag you want to attach to the identity source.</p>"}))
    CreateIdentitySourceRequest.type = Types::CreateIdentitySourceRequest
    CreateIdentitySourceResponse.add_member(:identity_source_type, Smithy::Schema::Shapes::ShapeRef.new(shape: IdentitySourceType, location_name: 'IdentitySourceType', traits: {"smithy.api#documentation" => "<p>The type of resource that provided identities to the identity source. For example, an IAM Identity Center instance.</p>"}))
    CreateIdentitySourceResponse.add_member(:identity_source_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IdentitySourceArn', traits: {"smithy.api#documentation" => "<p>Amazon Resource Name (ARN) for the identity source that was created.</p>"}))
    CreateIdentitySourceResponse.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: IsoTimestamp, location_name: 'CreationTime', traits: {"smithy.api#documentation" => "<p>Timestamp when the identity source was created.</p>"}))
    CreateIdentitySourceResponse.type = Types::CreateIdentitySourceResponse
    DeleteIdentitySourceRequest.add_member(:identity_source_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IdentitySourceArn', traits: {"smithy.api#documentation" => "<p>Amazon Resource Name (ARN) for identity source.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteIdentitySourceRequest.type = Types::DeleteIdentitySourceRequest
    DeleteInactiveApprovalTeamVersionRequest.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalTeamArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>Amaazon Resource Name (ARN) for the team.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteInactiveApprovalTeamVersionRequest.add_member(:version_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VersionId', traits: {"smithy.api#documentation" => "<p>Version ID for the team.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteInactiveApprovalTeamVersionRequest.type = Types::DeleteInactiveApprovalTeamVersionRequest
    DeleteInactiveApprovalTeamVersionResponse.type = Types::DeleteInactiveApprovalTeamVersionResponse
    Filter.add_member(:field_name, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterField, location_name: 'FieldName', traits: {"smithy.api#documentation" => "<p>Name of the filter to use.</p> <note> <p> <b>Supported filters</b> </p> <p>The supported filters for <a>ListSessions</a> are: <code>ActionName</code>, <code>SessionStatus</code>, and <code>InitationTime</code>.</p> </note>"}))
    Filter.add_member(:operator, Smithy::Schema::Shapes::ShapeRef.new(shape: Operator, location_name: 'Operator', traits: {"smithy.api#documentation" => "<p>Operator to use for filtering.</p> <ul> <li> <p> <code>EQ</code>: Equal to the specified value</p> </li> <li> <p> <code>NE</code>: Not equal to the specified value</p> </li> <li> <p> <code>GT</code>: Greater than the specified value</p> </li> <li> <p> <code>LT</code>: Less than the specified value</p> </li> <li> <p> <code>GTE</code>: Greater than or equal to the specified value</p> </li> <li> <p> <code>LTE</code>: Less than or equal to the specified value</p> </li> <li> <p> <code>CONTAINS</code>: Contains the specified value</p> </li> <li> <p> <code>NOT_CONTAINS</code>: Does not contain the specified value</p> </li> <li> <p> <code>BETWEEN</code>: Between two values, inclusive of the specified values.</p> </li> </ul> <note> <p> <b>Supported operators for each filter</b>:</p> <ul> <li> <p> <code>ActionName</code>: <code>EQ</code> | <code>NE</code> | <code>CONTAINS</code> | <code>NOT_CONTAINS</code> </p> </li> <li> <p> <code>SessionStatus</code>: <code>EQ</code> | <code>NE</code> </p> </li> <li> <p> <code>InitiationTime</code>: <code>GT</code> | <code>LT</code> | <code>GTE</code> | <code>LTE</code> | <code>BETWEEN</code> </p> </li> </ul> </note>"}))
    Filter.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>Value to use for filtering. For the <code>BETWEEN</code> operator, specify values in the format <code>a AND b</code> (<code>AND</code> is case-insensitive).</p>"}))
    Filter.type = Types::Filter
    FilterField.add_member(:action_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTION_NAME', traits: {"smithy.api#enumValue" => "ActionName"}))
    FilterField.add_member(:approval_team_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APPROVAL_TEAM_NAME', traits: {"smithy.api#enumValue" => "ApprovalTeamName"}))
    FilterField.add_member(:voting_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VOTING_TIME', traits: {"smithy.api#enumValue" => "VotingTime"}))
    FilterField.add_member(:vote, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VOTE', traits: {"smithy.api#enumValue" => "Vote"}))
    FilterField.add_member(:session_status, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SESSION_STATUS', traits: {"smithy.api#enumValue" => "SessionStatus"}))
    FilterField.add_member(:initiation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INITIATION_TIME', traits: {"smithy.api#enumValue" => "InitiationTime"}))
    Filters.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Filter)
    GetApprovalTeamRequest.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalTeamArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>Amazon Resource Name (ARN) for the team.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetApprovalTeamRequest.type = Types::GetApprovalTeamRequest
    GetApprovalTeamResponse.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: IsoTimestamp, location_name: 'CreationTime', traits: {"smithy.api#documentation" => "<p>Timestamp when the team was created.</p>"}))
    GetApprovalTeamResponse.add_member(:approval_strategy, Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalStrategyResponse, location_name: 'ApprovalStrategy', traits: {"smithy.api#documentation" => "<p>An <code>ApprovalStrategyResponse</code> object. Contains details for how the team grants approval.</p>"}))
    GetApprovalTeamResponse.add_member(:number_of_approvers, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'NumberOfApprovers', traits: {"smithy.api#documentation" => "<p>Total number of approvers in the team.</p>"}))
    GetApprovalTeamResponse.add_member(:approvers, Smithy::Schema::Shapes::ShapeRef.new(shape: GetApprovalTeamResponseApprovers, location_name: 'Approvers', traits: {"smithy.api#documentation" => "<p>An array of <code>GetApprovalTeamResponseApprover </code> objects. Contains details for the approvers in the team.</p>"}))
    GetApprovalTeamResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>Amazon Resource Name (ARN) for the team.</p>"}))
    GetApprovalTeamResponse.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>Description for the team.</p>"}))
    GetApprovalTeamResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>Name of the approval team.</p>"}))
    GetApprovalTeamResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalTeamStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>Status for the team. For more information, see <a href=\"https://docs.aws.amazon.com/mpa/latest/userguide/mpa-health.html\">Team health</a> in the <i>Multi-party approval User Guide</i>.</p>"}))
    GetApprovalTeamResponse.add_member(:status_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalTeamStatusCode, location_name: 'StatusCode', traits: {"smithy.api#documentation" => "<p>Status code for the approval team. For more information, see <a href=\"https://docs.aws.amazon.com/mpa/latest/userguide/mpa-health.html\">Team health</a> in the <i>Multi-party approval User Guide</i>.</p>"}))
    GetApprovalTeamResponse.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'StatusMessage', traits: {"smithy.api#documentation" => "<p>Message describing the status for the team.</p>"}))
    GetApprovalTeamResponse.add_member(:update_session_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'UpdateSessionArn', traits: {"smithy.api#documentation" => "<p>Amazon Resource Name (ARN) for the session.</p>"}))
    GetApprovalTeamResponse.add_member(:version_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VersionId', traits: {"smithy.api#documentation" => "<p>Version ID for the team.</p>"}))
    GetApprovalTeamResponse.add_member(:policies, Smithy::Schema::Shapes::ShapeRef.new(shape: PoliciesReferences, location_name: 'Policies', traits: {"smithy.api#documentation" => "<p>An array of <code>PolicyReference</code> objects. Contains a list of policies that define the permissions for team resources.</p> <p>The protected operation for a service integration might require specific permissions. For more information, see <a href=\"https://docs.aws.amazon.com/mpa/latest/userguide/mpa-integrations.html\">How other services work with Multi-party approval</a> in the <i>Multi-party approval User Guide</i>.</p>"}))
    GetApprovalTeamResponse.add_member(:last_update_time, Smithy::Schema::Shapes::ShapeRef.new(shape: IsoTimestamp, location_name: 'LastUpdateTime', traits: {"smithy.api#documentation" => "<p>Timestamp when the team was last updated.</p>"}))
    GetApprovalTeamResponse.add_member(:pending_update, Smithy::Schema::Shapes::ShapeRef.new(shape: PendingUpdate, location_name: 'PendingUpdate', traits: {"smithy.api#documentation" => "<p>A <code>PendingUpdate</code> object. Contains details for the pending updates for the team, if applicable.</p>"}))
    GetApprovalTeamResponse.type = Types::GetApprovalTeamResponse
    GetApprovalTeamResponseApprover.add_member(:approver_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ParticipantId, location_name: 'ApproverId', traits: {"smithy.api#documentation" => "<p>ID for the approver.</p>"}))
    GetApprovalTeamResponseApprover.add_member(:response_time, Smithy::Schema::Shapes::ShapeRef.new(shape: IsoTimestamp, location_name: 'ResponseTime', traits: {"smithy.api#documentation" => "<p>Timestamp when the approver responded to an approval team invitation.</p>"}))
    GetApprovalTeamResponseApprover.add_member(:primary_identity_id, Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityId, location_name: 'PrimaryIdentityId', traits: {"smithy.api#documentation" => "<p>ID for the user.</p>"}))
    GetApprovalTeamResponseApprover.add_member(:primary_identity_source_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PrimaryIdentitySourceArn', traits: {"smithy.api#documentation" => "<p>Amazon Resource Name (ARN) for the identity source. The identity source manages the user authentication for approvers.</p>"}))
    GetApprovalTeamResponseApprover.add_member(:primary_identity_status, Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityStatus, location_name: 'PrimaryIdentityStatus', traits: {"smithy.api#documentation" => "<p>Status for the identity source. For example, if an approver has accepted a team invitation with a user authentication method managed by the identity source.</p>"}))
    GetApprovalTeamResponseApprover.type = Types::GetApprovalTeamResponseApprover
    GetApprovalTeamResponseApprovers.member = Smithy::Schema::Shapes::ShapeRef.new(shape: GetApprovalTeamResponseApprover)
    GetIdentitySourceRequest.add_member(:identity_source_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IdentitySourceArn', traits: {"smithy.api#documentation" => "<p>Amazon Resource Name (ARN) for the identity source.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetIdentitySourceRequest.type = Types::GetIdentitySourceRequest
    GetIdentitySourceResponse.add_member(:identity_source_type, Smithy::Schema::Shapes::ShapeRef.new(shape: IdentitySourceType, location_name: 'IdentitySourceType', traits: {"smithy.api#documentation" => "<p>The type of resource that provided identities to the identity source. For example, an IAM Identity Center instance.</p>"}))
    GetIdentitySourceResponse.add_member(:identity_source_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: IdentitySourceParametersForGet, location_name: 'IdentitySourceParameters', traits: {"smithy.api#documentation" => "<p>A <code> IdentitySourceParameters</code> object. Contains details for the resource that provides identities to the identity source. For example, an IAM Identity Center instance.</p>"}))
    GetIdentitySourceResponse.add_member(:identity_source_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IdentitySourceArn', traits: {"smithy.api#documentation" => "<p>Amazon Resource Name (ARN) for the identity source.</p>"}))
    GetIdentitySourceResponse.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: IsoTimestamp, location_name: 'CreationTime', traits: {"smithy.api#documentation" => "<p>Timestamp when the identity source was created.</p>"}))
    GetIdentitySourceResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: IdentitySourceStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>Status for the identity source. For example, if the identity source is <code>ACTIVE</code>.</p>"}))
    GetIdentitySourceResponse.add_member(:status_code, Smithy::Schema::Shapes::ShapeRef.new(shape: IdentitySourceStatusCode, location_name: 'StatusCode', traits: {"smithy.api#documentation" => "<p>Status code of the identity source.</p>"}))
    GetIdentitySourceResponse.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StatusMessage', traits: {"smithy.api#documentation" => "<p>Message describing the status for the identity source.</p>"}))
    GetIdentitySourceResponse.type = Types::GetIdentitySourceResponse
    GetPolicyVersionRequest.add_member(:policy_version_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: QualifiedPolicyArn, location_name: 'PolicyVersionArn', traits: {"smithy.api#documentation" => "<p>Amazon Resource Name (ARN) for the policy.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetPolicyVersionRequest.type = Types::GetPolicyVersionRequest
    GetPolicyVersionResponse.add_member(:policy_version, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyVersion, location_name: 'PolicyVersion', traits: {"smithy.api#documentation" => "<p>A <code>PolicyVersion</code> object. Contains details for the version of the policy. Policies define the permissions for team resources.</p> <p>The protected operation for a service integration might require specific permissions. For more information, see <a href=\"https://docs.aws.amazon.com/mpa/latest/userguide/mpa-integrations.html\">How other services work with Multi-party approval</a> in the <i>Multi-party approval User Guide</i>.</p>", "smithy.api#required" => {}}))
    GetPolicyVersionResponse.type = Types::GetPolicyVersionResponse
    GetResourcePolicyRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>Amazon Resource Name (ARN) for the resource.</p>", "smithy.api#required" => {}}))
    GetResourcePolicyRequest.add_member(:policy_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PolicyName', traits: {"smithy.api#documentation" => "<p>Name of the policy.</p>", "smithy.api#required" => {}}))
    GetResourcePolicyRequest.add_member(:policy_type, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyType, location_name: 'PolicyType', traits: {"smithy.api#documentation" => "<p>The type of policy.</p>", "smithy.api#required" => {}}))
    GetResourcePolicyRequest.type = Types::GetResourcePolicyRequest
    GetResourcePolicyResponse.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>Amazon Resource Name (ARN) for the resource.</p>", "smithy.api#required" => {}}))
    GetResourcePolicyResponse.add_member(:policy_type, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyType, location_name: 'PolicyType', traits: {"smithy.api#documentation" => "<p>The type of policy</p>", "smithy.api#required" => {}}))
    GetResourcePolicyResponse.add_member(:policy_version_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PolicyVersionArn', traits: {"smithy.api#documentation" => "<p>Amazon Resource Name (ARN) for the policy version.</p>"}))
    GetResourcePolicyResponse.add_member(:policy_name, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyName, location_name: 'PolicyName', traits: {"smithy.api#documentation" => "<p>Name of the policy.</p>", "smithy.api#required" => {}}))
    GetResourcePolicyResponse.add_member(:policy_document, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyDocument, location_name: 'PolicyDocument', traits: {"smithy.api#documentation" => "<p>Document that contains the contents for the policy.</p>", "smithy.api#required" => {}}))
    GetResourcePolicyResponse.type = Types::GetResourcePolicyResponse
    GetSessionRequest.add_member(:session_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionArn, location_name: 'SessionArn', traits: {"smithy.api#documentation" => "<p>Amazon Resource Name (ARN) for the session.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSessionRequest.type = Types::GetSessionRequest
    GetSessionResponse.add_member(:session_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionArn, location_name: 'SessionArn', traits: {"smithy.api#documentation" => "<p>Amazon Resource Name (ARN) for the session.</p>"}))
    GetSessionResponse.add_member(:approval_team_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalTeamArn, location_name: 'ApprovalTeamArn', traits: {"smithy.api#documentation" => "<p>Amazon Resource Name (ARN) for the approval team.</p>"}))
    GetSessionResponse.add_member(:approval_team_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalTeamName, location_name: 'ApprovalTeamName', traits: {"smithy.api#documentation" => "<p>Name of the approval team.</p>"}))
    GetSessionResponse.add_member(:protected_resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ProtectedResourceArn', traits: {"smithy.api#documentation" => "<p>Amazon Resource Name (ARN) for the protected operation.</p>"}))
    GetSessionResponse.add_member(:approval_strategy, Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalStrategyResponse, location_name: 'ApprovalStrategy', traits: {"smithy.api#documentation" => "<p>An <code>ApprovalStrategyResponse</code> object. Contains details for how the team grants approval</p>"}))
    GetSessionResponse.add_member(:number_of_approvers, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'NumberOfApprovers', traits: {"smithy.api#documentation" => "<p>Total number of approvers in the session.</p>"}))
    GetSessionResponse.add_member(:initiation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: IsoTimestamp, location_name: 'InitiationTime', traits: {"smithy.api#documentation" => "<p>Timestamp when the session was initiated.</p>"}))
    GetSessionResponse.add_member(:expiration_time, Smithy::Schema::Shapes::ShapeRef.new(shape: IsoTimestamp, location_name: 'ExpirationTime', traits: {"smithy.api#documentation" => "<p>Timestamp when the session will expire.</p>"}))
    GetSessionResponse.add_member(:completion_time, Smithy::Schema::Shapes::ShapeRef.new(shape: IsoTimestamp, location_name: 'CompletionTime', traits: {"smithy.api#documentation" => "<p>Timestamp when the session completed.</p>"}))
    GetSessionResponse.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>Description for the session.</p>"}))
    GetSessionResponse.add_member(:metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionMetadata, location_name: 'Metadata', traits: {"smithy.api#documentation" => "<p>Metadata for the session.</p>"}))
    GetSessionResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>Status for the session. For example, if the team has approved the requested operation.</p>"}))
    GetSessionResponse.add_member(:status_code, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionStatusCode, location_name: 'StatusCode', traits: {"smithy.api#documentation" => "<p>Status code of the session.</p>"}))
    GetSessionResponse.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'StatusMessage', traits: {"smithy.api#documentation" => "<p>Message describing the status for session.</p>"}))
    GetSessionResponse.add_member(:execution_status, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionExecutionStatus, location_name: 'ExecutionStatus', traits: {"smithy.api#documentation" => "<p>Status for the protected operation. For example, if the operation is <code>PENDING</code>.</p>"}))
    GetSessionResponse.add_member(:action_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionName, location_name: 'ActionName', traits: {"smithy.api#documentation" => "<p>Name of the protected operation.</p>"}))
    GetSessionResponse.add_member(:requester_service_principal, Smithy::Schema::Shapes::ShapeRef.new(shape: ServicePrincipal, location_name: 'RequesterServicePrincipal', traits: {"smithy.api#documentation" => "<p> <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_elements_principal.html#principal-services\">Service principal</a> for the service associated with the protected operation.</p>"}))
    GetSessionResponse.add_member(:requester_principal_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RequesterPrincipalArn', traits: {"smithy.api#documentation" => "<p> <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/intro-structure.html#intro-structure-request\">IAM principal</a> that made the operation request.</p>"}))
    GetSessionResponse.add_member(:requester_account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'RequesterAccountId', traits: {"smithy.api#documentation" => "<p>ID for the account that made the operation request.</p>"}))
    GetSessionResponse.add_member(:requester_region, Smithy::Schema::Shapes::ShapeRef.new(shape: Region, location_name: 'RequesterRegion', traits: {"smithy.api#documentation" => "<p>Amazon Web Services Region where the operation request originated.</p>"}))
    GetSessionResponse.add_member(:requester_comment, Smithy::Schema::Shapes::ShapeRef.new(shape: RequesterComment, location_name: 'RequesterComment', traits: {"smithy.api#documentation" => "<p>Message from the account that made the operation request</p>"}))
    GetSessionResponse.add_member(:action_completion_strategy, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionCompletionStrategy, location_name: 'ActionCompletionStrategy', traits: {"smithy.api#documentation" => "<p>Strategy for executing the protected operation. <code>AUTO_COMPLETION_UPON_APPROVAL</code> means the operation is automatically executed using the requester's permissions, if approved.</p>"}))
    GetSessionResponse.add_member(:approver_responses, Smithy::Schema::Shapes::ShapeRef.new(shape: GetSessionResponseApproverResponses, location_name: 'ApproverResponses', traits: {"smithy.api#documentation" => "<p>An array of <code>GetSessionResponseApproverResponse</code> objects. Contains details for approver responses in the session.</p>"}))
    GetSessionResponse.type = Types::GetSessionResponse
    GetSessionResponseApproverResponse.add_member(:approver_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ParticipantId, location_name: 'ApproverId', traits: {"smithy.api#documentation" => "<p>ID for the approver.</p>"}))
    GetSessionResponseApproverResponse.add_member(:identity_source_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IdentitySourceArn', traits: {"smithy.api#documentation" => "<p>Amazon Resource Name (ARN) for the identity source. The identity source manages the user authentication for approvers.</p>"}))
    GetSessionResponseApproverResponse.add_member(:identity_id, Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityId, location_name: 'IdentityId', traits: {"smithy.api#documentation" => "<p>ID for the identity source. The identity source manages the user authentication for approvers.</p>"}))
    GetSessionResponseApproverResponse.add_member(:response, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionResponse, location_name: 'Response', traits: {"smithy.api#documentation" => "<p>Response to the operation request.</p>"}))
    GetSessionResponseApproverResponse.add_member(:response_time, Smithy::Schema::Shapes::ShapeRef.new(shape: IsoTimestamp, location_name: 'ResponseTime', traits: {"smithy.api#documentation" => "<p>Timestamp when a approver responded to the operation request.</p>"}))
    GetSessionResponseApproverResponse.type = Types::GetSessionResponseApproverResponse
    GetSessionResponseApproverResponses.member = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSessionResponseApproverResponse)
    IamIdentityCenter.add_member(:instance_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IdcInstanceArn, location_name: 'InstanceArn', traits: {"aws.api#data" => "usage", "smithy.api#documentation" => "<p>Amazon Resource Name (ARN) for the IAM Identity Center instance.</p>", "smithy.api#required" => {}}))
    IamIdentityCenter.add_member(:region, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Region', traits: {"smithy.api#documentation" => "<p>Amazon Web Services Region where the IAM Identity Center instance is located.</p>", "smithy.api#required" => {}}))
    IamIdentityCenter.type = Types::IamIdentityCenter
    IamIdentityCenterForGet.add_member(:instance_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'InstanceArn', traits: {"aws.api#data" => "usage", "smithy.api#documentation" => "<p>Amazon Resource Name (ARN) for the IAM Identity Center instance.</p>"}))
    IamIdentityCenterForGet.add_member(:approval_portal_url, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApprovalPortalUrl', traits: {"aws.api#data" => "usage", "smithy.api#documentation" => "<p>URL for the approval portal associated with the IAM Identity Center instance.</p>"}))
    IamIdentityCenterForGet.add_member(:region, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Region', traits: {"smithy.api#documentation" => "<p>Amazon Web Services Region where the IAM Identity Center instance is located.</p>"}))
    IamIdentityCenterForGet.type = Types::IamIdentityCenterForGet
    IamIdentityCenterForList.add_member(:instance_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'InstanceArn', traits: {"aws.api#data" => "usage", "smithy.api#documentation" => "<p>Amazon Resource Name (ARN) for the IAM Identity Center instance.</p>"}))
    IamIdentityCenterForList.add_member(:approval_portal_url, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApprovalPortalUrl', traits: {"aws.api#data" => "usage", "smithy.api#documentation" => "<p>URL for the approval portal associated with the IAM Identity Center instance.</p>"}))
    IamIdentityCenterForList.add_member(:region, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Region', traits: {"smithy.api#documentation" => "<p>Amazon Web Services Region where the IAM Identity Center instance is located.</p>"}))
    IamIdentityCenterForList.type = Types::IamIdentityCenterForList
    IdentitySourceForList.add_member(:identity_source_type, Smithy::Schema::Shapes::ShapeRef.new(shape: IdentitySourceType, location_name: 'IdentitySourceType', traits: {"aws.api#data" => "usage", "smithy.api#documentation" => "<p>The type of resource that provided identities to the identity source. For example, an IAM Identity Center instance.</p>"}))
    IdentitySourceForList.add_member(:identity_source_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: IdentitySourceParametersForList, location_name: 'IdentitySourceParameters', traits: {"aws.api#data" => "usage", "smithy.api#documentation" => "<p>A <code>IdentitySourceParametersForList</code> object. Contains details for the resource that provides identities to the identity source. For example, an IAM Identity Center instance.</p>"}))
    IdentitySourceForList.add_member(:identity_source_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IdentitySourceArn', traits: {"aws.api#data" => "usage", "smithy.api#documentation" => "<p>Amazon Resource Name (ARN) for the identity source.</p>"}))
    IdentitySourceForList.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: IsoTimestamp, location_name: 'CreationTime', traits: {"aws.api#data" => "usage", "smithy.api#documentation" => "<p>Timestamp when the identity source was created.</p>"}))
    IdentitySourceForList.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: IdentitySourceStatus, location_name: 'Status', traits: {"aws.api#data" => "usage", "smithy.api#documentation" => "<p>Status for the identity source. For example, if the identity source is <code>ACTIVE</code>.</p>"}))
    IdentitySourceForList.add_member(:status_code, Smithy::Schema::Shapes::ShapeRef.new(shape: IdentitySourceStatusCode, location_name: 'StatusCode', traits: {"aws.api#data" => "usage", "smithy.api#documentation" => "<p>Status code of the identity source.</p>"}))
    IdentitySourceForList.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StatusMessage', traits: {"aws.api#data" => "usage", "smithy.api#documentation" => "<p>Message describing the status for the identity source.</p>"}))
    IdentitySourceForList.type = Types::IdentitySourceForList
    IdentitySourceParameters.add_member(:iam_identity_center, Smithy::Schema::Shapes::ShapeRef.new(shape: IamIdentityCenter, location_name: 'IamIdentityCenter', traits: {"smithy.api#documentation" => "<p>IAM Identity Center credentials.</p>"}))
    IdentitySourceParameters.type = Types::IdentitySourceParameters
    IdentitySourceParametersForGet.add_member(:iam_identity_center, Types::IdentitySourceParametersForGet::IamIdentityCenter, Smithy::Schema::Shapes::ShapeRef.new(shape: IamIdentityCenterForGet, location_name: 'IamIdentityCenter', traits: {"aws.api#data" => "usage", "smithy.api#documentation" => "<p>IAM Identity Center credentials.</p>"}))
    IdentitySourceParametersForGet.add_member(:unknown, Types::IdentitySourceParametersForGet::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    IdentitySourceParametersForGet.type = Types::IdentitySourceParametersForGet
    IdentitySourceParametersForList.add_member(:iam_identity_center, Types::IdentitySourceParametersForList::IamIdentityCenter, Smithy::Schema::Shapes::ShapeRef.new(shape: IamIdentityCenterForList, location_name: 'IamIdentityCenter', traits: {"smithy.api#documentation" => "<p>IAM Identity Center credentials.</p>"}))
    IdentitySourceParametersForList.add_member(:unknown, Types::IdentitySourceParametersForList::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    IdentitySourceParametersForList.type = Types::IdentitySourceParametersForList
    IdentitySourceStatus.add_member(:creating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "CREATING"}))
    IdentitySourceStatus.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    IdentitySourceStatus.add_member(:deleting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    IdentitySourceStatus.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ERROR', traits: {"smithy.api#enumValue" => "ERROR"}))
    IdentitySourceStatusCode.add_member(:access_denied, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACCESS_DENIED', traits: {"smithy.api#enumValue" => "ACCESS_DENIED"}))
    IdentitySourceStatusCode.add_member(:deletion_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETION_FAILED', traits: {"smithy.api#enumValue" => "DELETION_FAILED"}))
    IdentitySourceStatusCode.add_member(:idc_instance_not_found, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IDC_INSTANCE_NOT_FOUND', traits: {"smithy.api#enumValue" => "IDC_INSTANCE_NOT_FOUND"}))
    IdentitySourceStatusCode.add_member(:idc_instance_not_valid, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IDC_INSTANCE_NOT_VALID', traits: {"smithy.api#enumValue" => "IDC_INSTANCE_NOT_VALID"}))
    IdentitySourceType.add_member(:iam_identity_center, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IAM_IDENTITY_CENTER', traits: {"smithy.api#enumValue" => "IAM_IDENTITY_CENTER"}))
    IdentitySources.member = Smithy::Schema::Shapes::ShapeRef.new(shape: IdentitySourceForList, traits: {"aws.api#data" => "usage"})
    IdentityStatus.add_member(:pending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING', traits: {"smithy.api#enumValue" => "PENDING"}))
    IdentityStatus.add_member(:accepted, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACCEPTED', traits: {"smithy.api#enumValue" => "ACCEPTED"}))
    IdentityStatus.add_member(:rejected, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REJECTED', traits: {"smithy.api#enumValue" => "REJECTED"}))
    IdentityStatus.add_member(:invalid, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID', traits: {"smithy.api#enumValue" => "INVALID"}))
    InternalServerException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>Message for the <code>InternalServerException</code> error.</p>", "smithy.api#required" => {}}))
    InternalServerException.type = Types::InternalServerException
    InvalidParameterException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>Message for the <code>InvalidParameterException</code> error.</p>", "smithy.api#required" => {}}))
    InvalidParameterException.type = Types::InvalidParameterException
    ListApprovalTeamsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#default" => 20, "smithy.api#documentation" => "<p>The maximum number of items to return in the response. If more results exist than the specified <code>MaxResults</code> value, a token is included in the response so that you can retrieve the remaining results.</p>", "smithy.api#httpQuery" => "MaxResults"}))
    ListApprovalTeamsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If present, indicates that more output is available than is included in the current response. Use this value in the <code>NextToken</code> request parameter in a next call to the operation to get more output. You can repeat this until the <code>NextToken</code> response element returns <code>null</code>.</p>", "smithy.api#httpQuery" => "NextToken"}))
    ListApprovalTeamsRequest.type = Types::ListApprovalTeamsRequest
    ListApprovalTeamsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If present, indicates that more output is available than is included in the current response. Use this value in the <code>NextToken</code> request parameter in a next call to the operation to get more output. You can repeat this until the <code>NextToken</code> response element returns <code>null</code>.</p>"}))
    ListApprovalTeamsResponse.add_member(:approval_teams, Smithy::Schema::Shapes::ShapeRef.new(shape: ListApprovalTeamsResponseApprovalTeams, location_name: 'ApprovalTeams', traits: {"smithy.api#documentation" => "<p>An array of <code>ListApprovalTeamsResponseApprovalTeam</code> objects. Contains details for approval teams.</p>"}))
    ListApprovalTeamsResponse.type = Types::ListApprovalTeamsResponse
    ListApprovalTeamsResponseApprovalTeam.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: IsoTimestamp, location_name: 'CreationTime', traits: {"smithy.api#documentation" => "<p>Timestamp when the team was created.</p>"}))
    ListApprovalTeamsResponseApprovalTeam.add_member(:approval_strategy, Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalStrategyResponse, location_name: 'ApprovalStrategy', traits: {"smithy.api#documentation" => "<p>An <code>ApprovalStrategyResponse</code> object. Contains details for how an approval team grants approval.</p>"}))
    ListApprovalTeamsResponseApprovalTeam.add_member(:number_of_approvers, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'NumberOfApprovers', traits: {"smithy.api#documentation" => "<p>Total number of approvers in the team.</p>"}))
    ListApprovalTeamsResponseApprovalTeam.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalTeamArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>Amazon Resource Name (ARN) for the team.</p>"}))
    ListApprovalTeamsResponseApprovalTeam.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalTeamName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>Name of the team.</p>"}))
    ListApprovalTeamsResponseApprovalTeam.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>Description for the team.</p>"}))
    ListApprovalTeamsResponseApprovalTeam.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalTeamStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>Status for the team. For more information, see <a href=\"https://docs.aws.amazon.com/mpa/latest/userguide/mpa-health.html\">Team health</a> in the <i>Multi-party approval User Guide</i>.</p>"}))
    ListApprovalTeamsResponseApprovalTeam.add_member(:status_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalTeamStatusCode, location_name: 'StatusCode', traits: {"smithy.api#documentation" => "<p>Status code for the team. For more information, see <a href=\"https://docs.aws.amazon.com/mpa/latest/userguide/mpa-health.html\">Team health</a> in the <i>Multi-party approval User Guide</i>.</p>"}))
    ListApprovalTeamsResponseApprovalTeam.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'StatusMessage', traits: {"smithy.api#documentation" => "<p>Message describing the status for the team.</p>"}))
    ListApprovalTeamsResponseApprovalTeam.type = Types::ListApprovalTeamsResponseApprovalTeam
    ListApprovalTeamsResponseApprovalTeams.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ListApprovalTeamsResponseApprovalTeam)
    ListIdentitySourcesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#default" => 20, "smithy.api#documentation" => "<p>The maximum number of items to return in the response. If more results exist than the specified <code>MaxResults</code> value, a token is included in the response so that you can retrieve the remaining results.</p>", "smithy.api#httpQuery" => "MaxResults"}))
    ListIdentitySourcesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If present, indicates that more output is available than is included in the current response. Use this value in the <code>NextToken</code> request parameter in a next call to the operation to get more output. You can repeat this until the <code>NextToken</code> response element returns <code>null</code>.</p>", "smithy.api#httpQuery" => "NextToken"}))
    ListIdentitySourcesRequest.type = Types::ListIdentitySourcesRequest
    ListIdentitySourcesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If present, indicates that more output is available than is included in the current response. Use this value in the <code>NextToken</code> request parameter in a next call to the operation to get more output. You can repeat this until the <code>NextToken</code> response element returns <code>null</code>.</p>"}))
    ListIdentitySourcesResponse.add_member(:identity_sources, Smithy::Schema::Shapes::ShapeRef.new(shape: IdentitySources, location_name: 'IdentitySources', traits: {"smithy.api#documentation" => "<p>A <code>IdentitySources</code>. Contains details for identity sources.</p>"}))
    ListIdentitySourcesResponse.type = Types::ListIdentitySourcesResponse
    ListPoliciesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#default" => 20, "smithy.api#documentation" => "<p>The maximum number of items to return in the response. If more results exist than the specified <code>MaxResults</code> value, a token is included in the response so that you can retrieve the remaining results.</p>", "smithy.api#httpQuery" => "MaxResults"}))
    ListPoliciesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If present, indicates that more output is available than is included in the current response. Use this value in the <code>NextToken</code> request parameter in a next call to the operation to get more output. You can repeat this until the <code>NextToken</code> response element returns <code>null</code>.</p>", "smithy.api#httpQuery" => "NextToken"}))
    ListPoliciesRequest.type = Types::ListPoliciesRequest
    ListPoliciesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If present, indicates that more output is available than is included in the current response. Use this value in the <code>NextToken</code> request parameter in a next call to the operation to get more output. You can repeat this until the <code>NextToken</code> response element returns <code>null</code>.</p>"}))
    ListPoliciesResponse.add_member(:policies, Smithy::Schema::Shapes::ShapeRef.new(shape: Policies, location_name: 'Policies', traits: {"smithy.api#documentation" => "<p>An array of <code>Policy</code> objects. Contains a list of policies that define the permissions for team resources.</p> <p>The protected operation for a service integration might require specific permissions. For more information, see <a href=\"https://docs.aws.amazon.com/mpa/latest/userguide/mpa-integrations.html\">How other services work with Multi-party approval</a> in the <i>Multi-party approval User Guide</i>.</p>"}))
    ListPoliciesResponse.type = Types::ListPoliciesResponse
    ListPolicyVersionsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#default" => 20, "smithy.api#documentation" => "<p>The maximum number of items to return in the response. If more results exist than the specified <code>MaxResults</code> value, a token is included in the response so that you can retrieve the remaining results.</p>", "smithy.api#httpQuery" => "MaxResults"}))
    ListPolicyVersionsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If present, indicates that more output is available than is included in the current response. Use this value in the <code>NextToken</code> request parameter in a next call to the operation to get more output. You can repeat this until the <code>NextToken</code> response element returns <code>null</code>.</p>", "smithy.api#httpQuery" => "NextToken"}))
    ListPolicyVersionsRequest.add_member(:policy_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: UnqualifiedPolicyArn, location_name: 'PolicyArn', traits: {"smithy.api#documentation" => "<p>Amazon Resource Name (ARN) for the policy.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListPolicyVersionsRequest.type = Types::ListPolicyVersionsRequest
    ListPolicyVersionsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If present, indicates that more output is available than is included in the current response. Use this value in the <code>NextToken</code> request parameter in a next call to the operation to get more output. You can repeat this until the <code>NextToken</code> response element returns <code>null</code>.</p>"}))
    ListPolicyVersionsResponse.add_member(:policy_versions, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyVersions, location_name: 'PolicyVersions', traits: {"smithy.api#documentation" => "<p>An array of <code>PolicyVersionSummary</code> objects. Contains details for the version of the policies that define the permissions for team resources.</p> <p>The protected operation for a service integration might require specific permissions. For more information, see <a href=\"https://docs.aws.amazon.com/mpa/latest/userguide/mpa-integrations.html\">How other services work with Multi-party approval</a> in the <i>Multi-party approval User Guide</i>.</p>"}))
    ListPolicyVersionsResponse.type = Types::ListPolicyVersionsResponse
    ListResourcePoliciesRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>Amazon Resource Name (ARN) for the resource.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListResourcePoliciesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#default" => 20, "smithy.api#documentation" => "<p>The maximum number of items to return in the response. If more results exist than the specified <code>MaxResults</code> value, a token is included in the response so that you can retrieve the remaining results.</p>", "smithy.api#httpQuery" => "MaxResults"}))
    ListResourcePoliciesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If present, indicates that more output is available than is included in the current response. Use this value in the <code>NextToken</code> request parameter in a next call to the operation to get more output. You can repeat this until the <code>NextToken</code> response element returns <code>null</code>.</p>", "smithy.api#httpQuery" => "NextToken"}))
    ListResourcePoliciesRequest.type = Types::ListResourcePoliciesRequest
    ListResourcePoliciesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If present, indicates that more output is available than is included in the current response. Use this value in the <code>NextToken</code> request parameter in a next call to the operation to get more output. You can repeat this until the <code>NextToken</code> response element returns <code>null</code>.</p>"}))
    ListResourcePoliciesResponse.add_member(:resource_policies, Smithy::Schema::Shapes::ShapeRef.new(shape: ListResourcePoliciesResponseResourcePolicies, location_name: 'ResourcePolicies', traits: {"smithy.api#documentation" => "<p>An array of <code>ListResourcePoliciesResponseResourcePolicy</code> objects. Contains details about the policy for the resource.</p>"}))
    ListResourcePoliciesResponse.type = Types::ListResourcePoliciesResponse
    ListResourcePoliciesResponseResourcePolicies.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ListResourcePoliciesResponseResourcePolicy)
    ListResourcePoliciesResponseResourcePolicy.add_member(:policy_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PolicyArn', traits: {"smithy.api#documentation" => "<p>Amazon Resource Name (ARN) for policy.</p>"}))
    ListResourcePoliciesResponseResourcePolicy.add_member(:policy_type, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyType, location_name: 'PolicyType', traits: {"smithy.api#documentation" => "<p>The type of policy.</p>"}))
    ListResourcePoliciesResponseResourcePolicy.add_member(:policy_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PolicyName', traits: {"smithy.api#documentation" => "<p>Name of the policy.</p>"}))
    ListResourcePoliciesResponseResourcePolicy.type = Types::ListResourcePoliciesResponseResourcePolicy
    ListSessionsRequest.add_member(:approval_team_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalTeamArn, location_name: 'ApprovalTeamArn', traits: {"smithy.api#documentation" => "<p>Amazon Resource Name (ARN) for the approval team.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListSessionsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#default" => 20, "smithy.api#documentation" => "<p>The maximum number of items to return in the response. If more results exist than the specified <code>MaxResults</code> value, a token is included in the response so that you can retrieve the remaining results.</p>"}))
    ListSessionsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If present, indicates that more output is available than is included in the current response. Use this value in the <code>NextToken</code> request parameter in a next call to the operation to get more output. You can repeat this until the <code>NextToken</code> response element returns <code>null</code>.</p>"}))
    ListSessionsRequest.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: Filters, location_name: 'Filters', traits: {"smithy.api#documentation" => "<p>An array of <code>Filter</code> objects. Contains the filter to apply when listing sessions.</p>"}))
    ListSessionsRequest.type = Types::ListSessionsRequest
    ListSessionsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If present, indicates that more output is available than is included in the current response. Use this value in the <code>NextToken</code> request parameter in a next call to the operation to get more output. You can repeat this until the <code>NextToken</code> response element returns <code>null</code>.</p>"}))
    ListSessionsResponse.add_member(:sessions, Smithy::Schema::Shapes::ShapeRef.new(shape: ListSessionsResponseSessions, location_name: 'Sessions', traits: {"smithy.api#documentation" => "<p>An array of <code>ListSessionsResponseSession</code> objects. Contains details for the sessions.</p>"}))
    ListSessionsResponse.type = Types::ListSessionsResponse
    ListSessionsResponseSession.add_member(:session_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionArn, location_name: 'SessionArn', traits: {"smithy.api#documentation" => "<p>Amazon Resource Name (ARN) for the session.</p>"}))
    ListSessionsResponseSession.add_member(:approval_team_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalTeamName, location_name: 'ApprovalTeamName', traits: {"smithy.api#documentation" => "<p>Name of the approval team.</p>"}))
    ListSessionsResponseSession.add_member(:approval_team_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalTeamArn, location_name: 'ApprovalTeamArn', traits: {"smithy.api#documentation" => "<p>Amazon Resource Name (ARN) for the approval team.</p>"}))
    ListSessionsResponseSession.add_member(:initiation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: IsoTimestamp, location_name: 'InitiationTime', traits: {"smithy.api#documentation" => "<p>Timestamp when the session was initiated.</p>"}))
    ListSessionsResponseSession.add_member(:expiration_time, Smithy::Schema::Shapes::ShapeRef.new(shape: IsoTimestamp, location_name: 'ExpirationTime', traits: {"smithy.api#documentation" => "<p>Timestamp when the session was expire.</p>"}))
    ListSessionsResponseSession.add_member(:completion_time, Smithy::Schema::Shapes::ShapeRef.new(shape: IsoTimestamp, location_name: 'CompletionTime', traits: {"smithy.api#documentation" => "<p>Timestamp when the session was completed.</p>"}))
    ListSessionsResponseSession.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>Description for the team.</p>"}))
    ListSessionsResponseSession.add_member(:action_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionName, location_name: 'ActionName', traits: {"smithy.api#documentation" => "<p>Name of the protected operation.</p>"}))
    ListSessionsResponseSession.add_member(:protected_resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ProtectedResourceArn', traits: {"smithy.api#documentation" => "<p>Amazon Resource Name (ARN) for the protected operation.</p>"}))
    ListSessionsResponseSession.add_member(:requester_service_principal, Smithy::Schema::Shapes::ShapeRef.new(shape: ServicePrincipal, location_name: 'RequesterServicePrincipal', traits: {"smithy.api#documentation" => "<p> <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_elements_principal.html#principal-services\">Service principal</a> for the service associated with the protected operation.</p>"}))
    ListSessionsResponseSession.add_member(:requester_principal_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RequesterPrincipalArn', traits: {"smithy.api#documentation" => "<p> <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/intro-structure.html#intro-structure-request\">IAM principal</a> that made the operation request.</p>"}))
    ListSessionsResponseSession.add_member(:requester_region, Smithy::Schema::Shapes::ShapeRef.new(shape: Region, location_name: 'RequesterRegion', traits: {"smithy.api#documentation" => "<p>Amazon Web Services Region where the operation request originated.</p>"}))
    ListSessionsResponseSession.add_member(:requester_account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'RequesterAccountId', traits: {"smithy.api#documentation" => "<p>ID for the account that made the operation request.</p>"}))
    ListSessionsResponseSession.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>Status for the protected operation. For example, if the operation is <code>PENDING</code>.</p>"}))
    ListSessionsResponseSession.add_member(:status_code, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionStatusCode, location_name: 'StatusCode', traits: {"smithy.api#documentation" => "<p>Status code of the session.</p>"}))
    ListSessionsResponseSession.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'StatusMessage', traits: {"smithy.api#documentation" => "<p>Message describing the status for session.</p>"}))
    ListSessionsResponseSession.add_member(:action_completion_strategy, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionCompletionStrategy, location_name: 'ActionCompletionStrategy', traits: {"smithy.api#documentation" => "<p>Strategy for executing the protected operation. <code>AUTO_COMPLETION_UPON_APPROVAL</code> means the operation is executed automatically using the requester's permissions, if approved.</p>"}))
    ListSessionsResponseSession.type = Types::ListSessionsResponseSession
    ListSessionsResponseSessions.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSessionsResponseSession)
    ListTagsForResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>Amazon Resource Name (ARN) for the resource.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>Tags attached to the resource.</p>"}))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    MofNApprovalStrategy.add_member(:min_approvals_required, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'MinApprovalsRequired', traits: {"smithy.api#documentation" => "<p>Minimum number of approvals (M) required for a total number of approvers (N).</p>", "smithy.api#range" => {"min" => 1}, "smithy.api#required" => {}}))
    MofNApprovalStrategy.type = Types::MofNApprovalStrategy
    Operator.add_member(:equals, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EQUALS', traits: {"smithy.api#enumValue" => "EQ"}))
    Operator.add_member(:not_equals, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NOT_EQUALS', traits: {"smithy.api#enumValue" => "NE"}))
    Operator.add_member(:greater_than, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GREATER_THAN', traits: {"smithy.api#enumValue" => "GT"}))
    Operator.add_member(:less_than, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LESS_THAN', traits: {"smithy.api#enumValue" => "LT"}))
    Operator.add_member(:greater_than_or_equal_to, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GREATER_THAN_OR_EQUAL_TO', traits: {"smithy.api#enumValue" => "GTE"}))
    Operator.add_member(:less_than_or_equal_to, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LESS_THAN_OR_EQUAL_TO', traits: {"smithy.api#enumValue" => "LTE"}))
    Operator.add_member(:contains, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONTAINS', traits: {"smithy.api#enumValue" => "CONTAINS"}))
    Operator.add_member(:does_not_contain, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DOES_NOT_CONTAIN', traits: {"smithy.api#enumValue" => "NOT_CONTAINS"}))
    Operator.add_member(:between, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BETWEEN', traits: {"smithy.api#enumValue" => "BETWEEN"}))
    PendingUpdate.add_member(:version_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VersionId', traits: {"aws.api#data" => "usage", "smithy.api#documentation" => "<p>Version ID for the team.</p>"}))
    PendingUpdate.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description', traits: {"aws.api#data" => "usage", "smithy.api#documentation" => "<p>Description for the team.</p>"}))
    PendingUpdate.add_member(:approval_strategy, Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalStrategyResponse, location_name: 'ApprovalStrategy', traits: {"aws.api#data" => "usage", "smithy.api#documentation" => "<p>An <code>ApprovalStrategyResponse</code> object. Contains details for how the team grants approval.</p>"}))
    PendingUpdate.add_member(:number_of_approvers, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'NumberOfApprovers', traits: {"aws.api#data" => "usage", "smithy.api#documentation" => "<p>Total number of approvers in the team.</p>"}))
    PendingUpdate.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalTeamStatus, location_name: 'Status', traits: {"aws.api#data" => "usage", "smithy.api#documentation" => "<p>Status for the team. For more information, see <a href=\"https://docs.aws.amazon.com/mpa/latest/userguide/mpa-health.html\">Team health</a> in the <i>Multi-party approval User Guide</i>.</p>"}))
    PendingUpdate.add_member(:status_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalTeamStatusCode, location_name: 'StatusCode', traits: {"aws.api#data" => "usage", "smithy.api#documentation" => "<p>Status code for the update. For more information, see <a href=\"https://docs.aws.amazon.com/mpa/latest/userguide/mpa-health.html\">Team health</a> in the <i>Multi-party approval User Guide</i>.</p>"}))
    PendingUpdate.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'StatusMessage', traits: {"aws.api#data" => "usage", "smithy.api#documentation" => "<p>Message describing the status for the team.</p>"}))
    PendingUpdate.add_member(:approvers, Smithy::Schema::Shapes::ShapeRef.new(shape: GetApprovalTeamResponseApprovers, location_name: 'Approvers', traits: {"aws.api#data" => "usage", "smithy.api#documentation" => "<p>An array of <code>GetApprovalTeamResponseApprover </code> objects. Contains details for the approvers in the team.</p>"}))
    PendingUpdate.add_member(:update_initiation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: IsoTimestamp, location_name: 'UpdateInitiationTime', traits: {"smithy.api#documentation" => "<p>Timestamp when the update request was initiated.</p>"}))
    PendingUpdate.type = Types::PendingUpdate
    Policies.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Policy, traits: {"aws.api#data" => "usage"})
    PoliciesReferences.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyReference)
    Policy.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: UnqualifiedPolicyArn, location_name: 'Arn', traits: {"aws.api#data" => "usage", "smithy.api#documentation" => "<p>Amazon Resource Name (ARN) for the policy.</p>", "smithy.api#required" => {}}))
    Policy.add_member(:default_version, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyVersionId, location_name: 'DefaultVersion', traits: {"aws.api#data" => "usage", "smithy.api#documentation" => "<p>Determines if the specified policy is the default for the team.</p>", "smithy.api#required" => {}}))
    Policy.add_member(:policy_type, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyType, location_name: 'PolicyType', traits: {"aws.api#data" => "usage", "smithy.api#documentation" => "<p>The type of policy.</p>", "smithy.api#required" => {}}))
    Policy.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyName, location_name: 'Name', traits: {"aws.api#data" => "usage", "smithy.api#documentation" => "<p>Name of the policy.</p>", "smithy.api#required" => {}}))
    Policy.type = Types::Policy
    PolicyReference.add_member(:policy_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: QualifiedPolicyArn, location_name: 'PolicyArn', traits: {"aws.api#data" => "usage", "smithy.api#documentation" => "<p>Amazon Resource Name (ARN) for the policy.</p>", "smithy.api#required" => {}}))
    PolicyReference.type = Types::PolicyReference
    PolicyStatus.add_member(:attachable, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ATTACHABLE', traits: {"smithy.api#enumValue" => "ATTACHABLE"}))
    PolicyStatus.add_member(:deprecated, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEPRECATED', traits: {"smithy.api#enumValue" => "DEPRECATED"}))
    PolicyType.add_member(:aws_managed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS_MANAGED', traits: {"smithy.api#enumValue" => "AWS_MANAGED"}))
    PolicyType.add_member(:aws_ram, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS_RAM', traits: {"smithy.api#enumValue" => "AWS_RAM"}))
    PolicyVersion.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: QualifiedPolicyArn, location_name: 'Arn', traits: {"aws.api#data" => "usage", "smithy.api#documentation" => "<p>Amazon Resource Name (ARN) for the team.</p>", "smithy.api#required" => {}}))
    PolicyVersion.add_member(:policy_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: UnqualifiedPolicyArn, location_name: 'PolicyArn', traits: {"aws.api#data" => "usage", "smithy.api#documentation" => "<p>Amazon Resource Name (ARN) for the policy.</p>", "smithy.api#required" => {}}))
    PolicyVersion.add_member(:version_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyVersionId, location_name: 'VersionId', traits: {"aws.api#data" => "usage", "smithy.api#documentation" => "<p>Verison ID</p>", "smithy.api#required" => {}}))
    PolicyVersion.add_member(:policy_type, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyType, location_name: 'PolicyType', traits: {"aws.api#data" => "usage", "smithy.api#documentation" => "<p>The type of policy.</p>", "smithy.api#required" => {}}))
    PolicyVersion.add_member(:is_default, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'IsDefault', traits: {"smithy.api#documentation" => "<p>Determines if the specified policy is the default for the team.</p>", "smithy.api#required" => {}}))
    PolicyVersion.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyName, location_name: 'Name', traits: {"aws.api#data" => "usage", "smithy.api#documentation" => "<p>Name of the policy.</p>", "smithy.api#required" => {}}))
    PolicyVersion.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyStatus, location_name: 'Status', traits: {"aws.api#data" => "usage", "smithy.api#documentation" => "<p>Status for the policy. For example, if the policy is <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/id_groups_manage_attach-policy.html\">attachable</a> or <a href=\"https://docs.aws.amazon.com/access_policies_managed-deprecated.html\">deprecated</a>.</p>", "smithy.api#required" => {}}))
    PolicyVersion.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: IsoTimestamp, location_name: 'CreationTime', traits: {"smithy.api#documentation" => "<p>Timestamp when the policy was created.</p>", "smithy.api#required" => {}}))
    PolicyVersion.add_member(:last_updated_time, Smithy::Schema::Shapes::ShapeRef.new(shape: IsoTimestamp, location_name: 'LastUpdatedTime', traits: {"smithy.api#documentation" => "<p>Timestamp when the policy was last updated.</p>", "smithy.api#required" => {}}))
    PolicyVersion.add_member(:document, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyDocument, location_name: 'Document', traits: {"aws.api#data" => "usage", "smithy.api#documentation" => "<p>Document that contains the policy contents.</p>", "smithy.api#required" => {}}))
    PolicyVersion.type = Types::PolicyVersion
    PolicyVersionSummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: QualifiedPolicyArn, location_name: 'Arn', traits: {"aws.api#data" => "usage", "smithy.api#documentation" => "<p>Amazon Resource Name (ARN) for the team.</p>", "smithy.api#required" => {}}))
    PolicyVersionSummary.add_member(:policy_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: UnqualifiedPolicyArn, location_name: 'PolicyArn', traits: {"aws.api#data" => "usage", "smithy.api#documentation" => "<p>Amazon Resource Name (ARN) for the policy.</p>", "smithy.api#required" => {}}))
    PolicyVersionSummary.add_member(:version_id, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyVersionId, location_name: 'VersionId', traits: {"aws.api#data" => "usage", "smithy.api#documentation" => "<p>Version ID for the policy.</p>", "smithy.api#required" => {}}))
    PolicyVersionSummary.add_member(:policy_type, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyType, location_name: 'PolicyType', traits: {"aws.api#data" => "usage", "smithy.api#documentation" => "<p>The type of policy.</p>", "smithy.api#required" => {}}))
    PolicyVersionSummary.add_member(:is_default, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'IsDefault', traits: {"smithy.api#documentation" => "<p>Determines if the specified policy is the default for the team.</p>", "smithy.api#required" => {}}))
    PolicyVersionSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyName, location_name: 'Name', traits: {"aws.api#data" => "usage", "smithy.api#documentation" => "<p>Name of the policy</p>", "smithy.api#required" => {}}))
    PolicyVersionSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyStatus, location_name: 'Status', traits: {"aws.api#data" => "usage", "smithy.api#documentation" => "<p>Status for the policy. For example, if the policy is <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/id_groups_manage_attach-policy.html\">attachable</a> or <a href=\"https://docs.aws.amazon.com/access_policies_managed-deprecated.html\">deprecated</a>.</p>", "smithy.api#required" => {}}))
    PolicyVersionSummary.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: IsoTimestamp, location_name: 'CreationTime', traits: {"smithy.api#documentation" => "<p>Timestamp when the policy was created.</p>", "smithy.api#required" => {}}))
    PolicyVersionSummary.add_member(:last_updated_time, Smithy::Schema::Shapes::ShapeRef.new(shape: IsoTimestamp, location_name: 'LastUpdatedTime', traits: {"smithy.api#documentation" => "<p>Timestamp when the policy was last updated.</p>", "smithy.api#required" => {}}))
    PolicyVersionSummary.type = Types::PolicyVersionSummary
    PolicyVersions.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyVersionSummary, traits: {"aws.api#data" => "usage"})
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>Message for the <code>ResourceNotFoundException</code> error.</p>", "smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ServiceQuotaExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>Message for the <code>ServiceQuotaExceededException</code> error.</p>", "smithy.api#required" => {}}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    SessionExecutionStatus.add_member(:executed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EXECUTED', traits: {"smithy.api#enumValue" => "EXECUTED"}))
    SessionExecutionStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    SessionExecutionStatus.add_member(:pending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING', traits: {"smithy.api#enumValue" => "PENDING"}))
    SessionMetadata.key = Smithy::Schema::Shapes::ShapeRef.new(shape: SessionKey)
    SessionMetadata.value = Smithy::Schema::Shapes::ShapeRef.new(shape: SessionValue)
    SessionResponse.add_member(:approved, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APPROVED', traits: {"smithy.api#enumValue" => "APPROVED"}))
    SessionResponse.add_member(:rejected, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REJECTED', traits: {"smithy.api#enumValue" => "REJECTED"}))
    SessionResponse.add_member(:no_response, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NO_RESPONSE', traits: {"smithy.api#enumValue" => "NO_RESPONSE"}))
    SessionStatus.add_member(:pending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING', traits: {"smithy.api#enumValue" => "PENDING"}))
    SessionStatus.add_member(:cancelled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANCELLED', traits: {"smithy.api#enumValue" => "CANCELLED"}))
    SessionStatus.add_member(:approved, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APPROVED', traits: {"smithy.api#enumValue" => "APPROVED"}))
    SessionStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    SessionStatus.add_member(:creating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "CREATING"}))
    SessionStatusCode.add_member(:rejected, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REJECTED', traits: {"smithy.api#enumValue" => "REJECTED"}))
    SessionStatusCode.add_member(:expired, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EXPIRED', traits: {"smithy.api#enumValue" => "EXPIRED"}))
    SessionStatusCode.add_member(:configuration_changed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONFIGURATION_CHANGED', traits: {"smithy.api#enumValue" => "CONFIGURATION_CHANGED"}))
    StartActiveApprovalTeamDeletionRequest.add_member(:pending_window_days, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'PendingWindowDays', traits: {"smithy.api#documentation" => "<p>Number of days between when the team approves the delete request and when the team is deleted.</p>"}))
    StartActiveApprovalTeamDeletionRequest.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalTeamArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>Amazon Resource Name (ARN) for the team.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartActiveApprovalTeamDeletionRequest.type = Types::StartActiveApprovalTeamDeletionRequest
    StartActiveApprovalTeamDeletionResponse.add_member(:deletion_completion_time, Smithy::Schema::Shapes::ShapeRef.new(shape: IsoTimestamp, location_name: 'DeletionCompletionTime', traits: {"smithy.api#documentation" => "<p>Timestamp when the deletion process is scheduled to complete.</p>"}))
    StartActiveApprovalTeamDeletionResponse.add_member(:deletion_start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: IsoTimestamp, location_name: 'DeletionStartTime', traits: {"smithy.api#documentation" => "<p>Timestamp when the deletion process was initiated.</p>"}))
    StartActiveApprovalTeamDeletionResponse.type = Types::StartActiveApprovalTeamDeletionResponse
    TagKeyList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>Amazon Resource Name (ARN) for the resource you want to tag.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>Tags that you have added to the specified resource.</p>", "smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    Tags.key = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    Tags.value = Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue)
    ThrottlingException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>Message for the <code>ThrottlingException</code> error.</p>", "smithy.api#required" => {}}))
    ThrottlingException.type = Types::ThrottlingException
    TooManyTagsException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>Message for the <code>TooManyTagsException</code> error.</p>", "smithy.api#required" => {}}))
    TooManyTagsException.add_member(:resource_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceName', traits: {"smithy.api#documentation" => "<p>Name of the resource for the <code>TooManyTagsException</code> error.</p>"}))
    TooManyTagsException.type = Types::TooManyTagsException
    UntagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>Amazon Resource Name (ARN) for the resource you want to untag.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'TagKeys', traits: {"smithy.api#documentation" => "<p>Array of tag key-value pairs that you want to untag.</p>", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateApprovalTeamRequest.add_member(:approval_strategy, Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalStrategy, location_name: 'ApprovalStrategy', traits: {"smithy.api#documentation" => "<p>An <code>ApprovalStrategy</code> object. Contains details for how the team grants approval.</p>"}))
    UpdateApprovalTeamRequest.add_member(:approvers, Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalTeamRequestApprovers, location_name: 'Approvers', traits: {"smithy.api#documentation" => "<p>An array of <code>ApprovalTeamRequestApprover</code> objects. Contains details for the approvers in the team.</p>"}))
    UpdateApprovalTeamRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>Description for the team.</p>"}))
    UpdateApprovalTeamRequest.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ApprovalTeamArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>Amazon Resource Name (ARN) for the team.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateApprovalTeamRequest.type = Types::UpdateApprovalTeamRequest
    UpdateApprovalTeamResponse.add_member(:version_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VersionId', traits: {"smithy.api#documentation" => "<p>Version ID for the team that was created. When an approval team is updated, the version ID changes.</p>"}))
    UpdateApprovalTeamResponse.type = Types::UpdateApprovalTeamResponse
    ValidationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>Message for the <code>ValidationException</code> error.</p>", "smithy.api#required" => {}}))
    ValidationException.type = Types::ValidationException

    AWSFluffyCoreService = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.mpa#AWSFluffyCoreService"
      service.name = "AWSFluffyCoreService"
      service.version = "2022-07-26"
      service.traits = {"aws.api#service" => {"sdkId" => "MPA", "arnNamespace" => "mpa"}, "aws.auth#sigv4" => {"name" => "mpa"}, "aws.endpoints#dualStackOnlyEndpoints" => {}, "aws.endpoints#standardRegionalEndpoints" => {}, "aws.iam#defineConditionKeys" => {"aws:ResourceTag/${TagKey}" => {"type" => "String", "documentation" => "Filters access by a tag key and value pair of a resource", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-resourcetag"}, "aws:RequestTag/${TagKey}" => {"type" => "String", "documentation" => "Filters access by a tag key and value pair that is allowed in the request", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-requesttag"}, "aws:TagKeys" => {"type" => "ArrayOfString", "documentation" => "Filters access by a list of tag keys that are allowed in the request", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-tagkeys"}, "mpa:RequestedOperation" => {"type" => "String", "documentation" => "Filters access by the requested operation that requires team approval before it can be executed", "externalDocumentation" => "${DocHomeURL}mpa/latest/userguide/mpa-concepts.html"}, "mpa:ProtectedResourceAccount" => {"type" => "String", "documentation" => "Filters access by the account that owns the resource that is the target of the operation that requires approval", "externalDocumentation" => "${DocHomeURL}mpa/latest/userguide/mpa-concepts.html"}}, "aws.iam#disableConditionKeyInference" => {}, "aws.iam#supportedPrincipalTypes" => ["Root", "IAMUser", "IAMRole", "FederatedUser"], "aws.protocols#restJson1" => {}, "smithy.api#title" => "AWS Multi-party Approval"}
      service.add_operation(:cancel_session, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mpa#CancelSession"
        operation.name = "CancelSession"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CancelSessionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CancelSessionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#conditionKeys" => ["aws:ResourceTag/${TagKey}", "mpa:RequestedOperation", "mpa:ProtectedResourceAccount"], "aws.iam#iamAction" => {"documentation" => "Grants permission to cancel an approval session"}, "smithy.api#http" => {"code" => 200, "method" => "PUT", "uri" => "/sessions/{SessionArn}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_approval_team, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mpa#CreateApprovalTeam"
        operation.name = "CreateApprovalTeam"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateApprovalTeamRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateApprovalTeamResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#conditionKeys" => ["aws:ResourceTag/${TagKey}", "aws:RequestTag/${TagKey}", "aws:TagKeys"], "aws.iam#iamAction" => {"documentation" => "Grants permission to create an approval team"}, "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/approval-teams"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_identity_source, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mpa#CreateIdentitySource"
        operation.name = "CreateIdentitySource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateIdentitySourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateIdentitySourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#conditionKeys" => ["aws:ResourceTag/${TagKey}", "aws:RequestTag/${TagKey}", "aws:TagKeys"], "aws.iam#iamAction" => {"documentation" => "Grants permission to create an identity source"}, "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/identity-sources"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_identity_source, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mpa#DeleteIdentitySource"
        operation.name = "DeleteIdentitySource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteIdentitySourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#conditionKeys" => ["aws:ResourceTag/${TagKey}"], "aws.iam#iamAction" => {"documentation" => "Grants permission to delete an identity source"}, "smithy.api#http" => {"code" => 200, "method" => "DELETE", "uri" => "/identity-sources/{IdentitySourceArn}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_inactive_approval_team_version, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mpa#DeleteInactiveApprovalTeamVersion"
        operation.name = "DeleteInactiveApprovalTeamVersion"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteInactiveApprovalTeamVersionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteInactiveApprovalTeamVersionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#conditionKeys" => ["aws:ResourceTag/${TagKey}"], "aws.iam#iamAction" => {"documentation" => "Grants permission to delete an inactive approval team"}, "smithy.api#http" => {"code" => 200, "method" => "DELETE", "uri" => "/approval-teams/{Arn}/{VersionId}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_approval_team, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mpa#GetApprovalTeam"
        operation.name = "GetApprovalTeam"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetApprovalTeamRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetApprovalTeamResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#conditionKeys" => ["aws:ResourceTag/${TagKey}"], "aws.iam#iamAction" => {"documentation" => "Grants permission to retrieve details for an approval team"}, "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/approval-teams/{Arn}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_identity_source, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mpa#GetIdentitySource"
        operation.name = "GetIdentitySource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetIdentitySourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetIdentitySourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#conditionKeys" => ["aws:ResourceTag/${TagKey}"], "aws.iam#iamAction" => {"documentation" => "Grants permission to retrieve details for an identity source"}, "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/identity-sources/{IdentitySourceArn}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_policy_version, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mpa#GetPolicyVersion"
        operation.name = "GetPolicyVersion"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetPolicyVersionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetPolicyVersionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to retrieve details for a policy"}, "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/policy-versions/{PolicyVersionArn}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_resource_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mpa#GetResourcePolicy"
        operation.name = "GetResourcePolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetResourcePolicyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetResourcePolicyResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to retrieve details for a specific resource"}, "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/GetResourcePolicy"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_session, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mpa#GetSession"
        operation.name = "GetSession"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSessionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSessionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#conditionKeys" => ["aws:ResourceTag/${TagKey}", "mpa:RequestedOperation", "mpa:ProtectedResourceAccount"], "aws.iam#iamAction" => {"documentation" => "Grants permission to retrieve details for an approval session"}, "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/sessions/{SessionArn}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_approval_teams, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mpa#ListApprovalTeams"
        operation.name = "ListApprovalTeams"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListApprovalTeamsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListApprovalTeamsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to list approval teams"}, "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/approval-teams/?List"}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "ListApprovalTeamsSuccess", "params" => {}, "expect" => {"success" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
        operation[:paginator] = Paginators::ListApprovalTeams.new
      end)
      service.add_operation(:list_identity_sources, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mpa#ListIdentitySources"
        operation.name = "ListIdentitySources"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListIdentitySourcesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListIdentitySourcesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to list identity sources"}, "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/identity-sources/?List"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListIdentitySources.new
      end)
      service.add_operation(:list_policies, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mpa#ListPolicies"
        operation.name = "ListPolicies"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPoliciesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPoliciesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to list policies"}, "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/policies/?List"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListPolicies.new
      end)
      service.add_operation(:list_policy_versions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mpa#ListPolicyVersions"
        operation.name = "ListPolicyVersions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPolicyVersionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPolicyVersionsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to list the versions for policies"}, "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/policies/{PolicyArn}/?List"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListPolicyVersions.new
      end)
      service.add_operation(:list_resource_policies, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mpa#ListResourcePolicies"
        operation.name = "ListResourcePolicies"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListResourcePoliciesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListResourcePoliciesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to list policies for a resource"}, "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/resource-policies/{ResourceArn}/?List"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListResourcePolicies.new
      end)
      service.add_operation(:list_sessions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mpa#ListSessions"
        operation.name = "ListSessions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSessionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSessionsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to list approval sessions"}, "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/approval-teams/{ApprovalTeamArn}/sessions/?List"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListSessions.new
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mpa#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to list tags for a resource"}, "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/tags/{ResourceArn}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:start_active_approval_team_deletion, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mpa#StartActiveApprovalTeamDeletion"
        operation.name = "StartActiveApprovalTeamDeletion"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartActiveApprovalTeamDeletionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartActiveApprovalTeamDeletionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#conditionKeys" => ["aws:ResourceTag/${TagKey}"], "aws.iam#iamAction" => {"documentation" => "Grants permission to start the deletion process for an active approval team"}, "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/approval-teams/{Arn}?Delete"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mpa#TagResource"
        operation.name = "TagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyTagsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#conditionKeys" => ["aws:ResourceTag/${TagKey}", "aws:RequestTag/${TagKey}", "aws:TagKeys"], "aws.iam#iamAction" => {"documentation" => "Grants permission to tag a resource"}, "smithy.api#http" => {"code" => 200, "method" => "PUT", "uri" => "/tags/{ResourceArn}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:untag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mpa#UntagResource"
        operation.name = "UntagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#conditionKeys" => ["aws:ResourceTag/${TagKey}", "aws:TagKeys"], "aws.iam#iamAction" => {"documentation" => "Grants permission to untag a resource"}, "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/tags/{ResourceArn}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_approval_team, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mpa#UpdateApprovalTeam"
        operation.name = "UpdateApprovalTeam"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateApprovalTeamRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateApprovalTeamResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#conditionKeys" => ["aws:ResourceTag/${TagKey}"], "aws.iam#iamAction" => {"documentation" => "Grants permission to update approval team"}, "smithy.api#http" => {"code" => 200, "method" => "PATCH", "uri" => "/approval-teams/{Arn}"}, "smithy.api#idempotent" => {}}
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
