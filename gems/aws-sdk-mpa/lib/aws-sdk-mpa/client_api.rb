# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::MPA
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AccountId = Shapes::StringShape.new(name: 'AccountId')
    ActionCompletionStrategy = Shapes::StringShape.new(name: 'ActionCompletionStrategy')
    ActionName = Shapes::StringShape.new(name: 'ActionName')
    ApprovalStrategy = Shapes::UnionShape.new(name: 'ApprovalStrategy')
    ApprovalStrategyResponse = Shapes::UnionShape.new(name: 'ApprovalStrategyResponse')
    ApprovalTeamArn = Shapes::StringShape.new(name: 'ApprovalTeamArn')
    ApprovalTeamName = Shapes::StringShape.new(name: 'ApprovalTeamName')
    ApprovalTeamRequestApprover = Shapes::StructureShape.new(name: 'ApprovalTeamRequestApprover')
    ApprovalTeamRequestApprovers = Shapes::ListShape.new(name: 'ApprovalTeamRequestApprovers')
    ApprovalTeamStatus = Shapes::StringShape.new(name: 'ApprovalTeamStatus')
    ApprovalTeamStatusCode = Shapes::StringShape.new(name: 'ApprovalTeamStatusCode')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    CancelSessionRequest = Shapes::StructureShape.new(name: 'CancelSessionRequest')
    CancelSessionResponse = Shapes::StructureShape.new(name: 'CancelSessionResponse')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreateApprovalTeamRequest = Shapes::StructureShape.new(name: 'CreateApprovalTeamRequest')
    CreateApprovalTeamResponse = Shapes::StructureShape.new(name: 'CreateApprovalTeamResponse')
    CreateIdentitySourceRequest = Shapes::StructureShape.new(name: 'CreateIdentitySourceRequest')
    CreateIdentitySourceResponse = Shapes::StructureShape.new(name: 'CreateIdentitySourceResponse')
    DeleteIdentitySourceRequest = Shapes::StructureShape.new(name: 'DeleteIdentitySourceRequest')
    DeleteInactiveApprovalTeamVersionRequest = Shapes::StructureShape.new(name: 'DeleteInactiveApprovalTeamVersionRequest')
    DeleteInactiveApprovalTeamVersionResponse = Shapes::StructureShape.new(name: 'DeleteInactiveApprovalTeamVersionResponse')
    Description = Shapes::StringShape.new(name: 'Description')
    Filter = Shapes::StructureShape.new(name: 'Filter')
    FilterField = Shapes::StringShape.new(name: 'FilterField')
    Filters = Shapes::ListShape.new(name: 'Filters')
    GetApprovalTeamRequest = Shapes::StructureShape.new(name: 'GetApprovalTeamRequest')
    GetApprovalTeamResponse = Shapes::StructureShape.new(name: 'GetApprovalTeamResponse')
    GetApprovalTeamResponseApprover = Shapes::StructureShape.new(name: 'GetApprovalTeamResponseApprover')
    GetApprovalTeamResponseApprovers = Shapes::ListShape.new(name: 'GetApprovalTeamResponseApprovers')
    GetIdentitySourceRequest = Shapes::StructureShape.new(name: 'GetIdentitySourceRequest')
    GetIdentitySourceResponse = Shapes::StructureShape.new(name: 'GetIdentitySourceResponse')
    GetPolicyVersionRequest = Shapes::StructureShape.new(name: 'GetPolicyVersionRequest')
    GetPolicyVersionResponse = Shapes::StructureShape.new(name: 'GetPolicyVersionResponse')
    GetResourcePolicyRequest = Shapes::StructureShape.new(name: 'GetResourcePolicyRequest')
    GetResourcePolicyResponse = Shapes::StructureShape.new(name: 'GetResourcePolicyResponse')
    GetSessionRequest = Shapes::StructureShape.new(name: 'GetSessionRequest')
    GetSessionResponse = Shapes::StructureShape.new(name: 'GetSessionResponse')
    GetSessionResponseApproverResponse = Shapes::StructureShape.new(name: 'GetSessionResponseApproverResponse')
    GetSessionResponseApproverResponses = Shapes::ListShape.new(name: 'GetSessionResponseApproverResponses')
    IamIdentityCenter = Shapes::StructureShape.new(name: 'IamIdentityCenter')
    IamIdentityCenterForGet = Shapes::StructureShape.new(name: 'IamIdentityCenterForGet')
    IamIdentityCenterForList = Shapes::StructureShape.new(name: 'IamIdentityCenterForList')
    IdcInstanceArn = Shapes::StringShape.new(name: 'IdcInstanceArn')
    IdentityId = Shapes::StringShape.new(name: 'IdentityId')
    IdentitySourceForList = Shapes::StructureShape.new(name: 'IdentitySourceForList')
    IdentitySourceParameters = Shapes::StructureShape.new(name: 'IdentitySourceParameters')
    IdentitySourceParametersForGet = Shapes::UnionShape.new(name: 'IdentitySourceParametersForGet')
    IdentitySourceParametersForList = Shapes::UnionShape.new(name: 'IdentitySourceParametersForList')
    IdentitySourceStatus = Shapes::StringShape.new(name: 'IdentitySourceStatus')
    IdentitySourceStatusCode = Shapes::StringShape.new(name: 'IdentitySourceStatusCode')
    IdentitySourceType = Shapes::StringShape.new(name: 'IdentitySourceType')
    IdentitySources = Shapes::ListShape.new(name: 'IdentitySources')
    IdentityStatus = Shapes::StringShape.new(name: 'IdentityStatus')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    InvalidParameterException = Shapes::StructureShape.new(name: 'InvalidParameterException')
    IsoTimestamp = Shapes::TimestampShape.new(name: 'IsoTimestamp', timestampFormat: "iso8601")
    ListApprovalTeamsRequest = Shapes::StructureShape.new(name: 'ListApprovalTeamsRequest')
    ListApprovalTeamsResponse = Shapes::StructureShape.new(name: 'ListApprovalTeamsResponse')
    ListApprovalTeamsResponseApprovalTeam = Shapes::StructureShape.new(name: 'ListApprovalTeamsResponseApprovalTeam')
    ListApprovalTeamsResponseApprovalTeams = Shapes::ListShape.new(name: 'ListApprovalTeamsResponseApprovalTeams')
    ListIdentitySourcesRequest = Shapes::StructureShape.new(name: 'ListIdentitySourcesRequest')
    ListIdentitySourcesResponse = Shapes::StructureShape.new(name: 'ListIdentitySourcesResponse')
    ListPoliciesRequest = Shapes::StructureShape.new(name: 'ListPoliciesRequest')
    ListPoliciesResponse = Shapes::StructureShape.new(name: 'ListPoliciesResponse')
    ListPolicyVersionsRequest = Shapes::StructureShape.new(name: 'ListPolicyVersionsRequest')
    ListPolicyVersionsResponse = Shapes::StructureShape.new(name: 'ListPolicyVersionsResponse')
    ListResourcePoliciesRequest = Shapes::StructureShape.new(name: 'ListResourcePoliciesRequest')
    ListResourcePoliciesResponse = Shapes::StructureShape.new(name: 'ListResourcePoliciesResponse')
    ListResourcePoliciesResponseResourcePolicies = Shapes::ListShape.new(name: 'ListResourcePoliciesResponseResourcePolicies')
    ListResourcePoliciesResponseResourcePolicy = Shapes::StructureShape.new(name: 'ListResourcePoliciesResponseResourcePolicy')
    ListSessionsRequest = Shapes::StructureShape.new(name: 'ListSessionsRequest')
    ListSessionsResponse = Shapes::StructureShape.new(name: 'ListSessionsResponse')
    ListSessionsResponseSession = Shapes::StructureShape.new(name: 'ListSessionsResponseSession')
    ListSessionsResponseSessions = Shapes::ListShape.new(name: 'ListSessionsResponseSessions')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    Message = Shapes::StringShape.new(name: 'Message')
    MofNApprovalStrategy = Shapes::StructureShape.new(name: 'MofNApprovalStrategy')
    MofNApprovalStrategyMinApprovalsRequiredInteger = Shapes::IntegerShape.new(name: 'MofNApprovalStrategyMinApprovalsRequiredInteger')
    Operator = Shapes::StringShape.new(name: 'Operator')
    ParticipantId = Shapes::StringShape.new(name: 'ParticipantId')
    PendingUpdate = Shapes::StructureShape.new(name: 'PendingUpdate')
    Policies = Shapes::ListShape.new(name: 'Policies')
    PoliciesReferences = Shapes::ListShape.new(name: 'PoliciesReferences')
    Policy = Shapes::StructureShape.new(name: 'Policy')
    PolicyDocument = Shapes::StringShape.new(name: 'PolicyDocument')
    PolicyName = Shapes::StringShape.new(name: 'PolicyName')
    PolicyReference = Shapes::StructureShape.new(name: 'PolicyReference')
    PolicyStatus = Shapes::StringShape.new(name: 'PolicyStatus')
    PolicyType = Shapes::StringShape.new(name: 'PolicyType')
    PolicyVersion = Shapes::StructureShape.new(name: 'PolicyVersion')
    PolicyVersionId = Shapes::IntegerShape.new(name: 'PolicyVersionId')
    PolicyVersionSummary = Shapes::StructureShape.new(name: 'PolicyVersionSummary')
    PolicyVersions = Shapes::ListShape.new(name: 'PolicyVersions')
    QualifiedPolicyArn = Shapes::StringShape.new(name: 'QualifiedPolicyArn')
    Region = Shapes::StringShape.new(name: 'Region')
    RequesterComment = Shapes::StringShape.new(name: 'RequesterComment')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ServicePrincipal = Shapes::StringShape.new(name: 'ServicePrincipal')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    SessionArn = Shapes::StringShape.new(name: 'SessionArn')
    SessionExecutionStatus = Shapes::StringShape.new(name: 'SessionExecutionStatus')
    SessionKey = Shapes::StringShape.new(name: 'SessionKey')
    SessionMetadata = Shapes::MapShape.new(name: 'SessionMetadata')
    SessionResponse = Shapes::StringShape.new(name: 'SessionResponse')
    SessionStatus = Shapes::StringShape.new(name: 'SessionStatus')
    SessionStatusCode = Shapes::StringShape.new(name: 'SessionStatusCode')
    SessionValue = Shapes::StringShape.new(name: 'SessionValue')
    StartActiveApprovalTeamDeletionRequest = Shapes::StructureShape.new(name: 'StartActiveApprovalTeamDeletionRequest')
    StartActiveApprovalTeamDeletionResponse = Shapes::StructureShape.new(name: 'StartActiveApprovalTeamDeletionResponse')
    String = Shapes::StringShape.new(name: 'String')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    Tags = Shapes::MapShape.new(name: 'Tags')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    Token = Shapes::StringShape.new(name: 'Token')
    TooManyTagsException = Shapes::StructureShape.new(name: 'TooManyTagsException')
    UnqualifiedPolicyArn = Shapes::StringShape.new(name: 'UnqualifiedPolicyArn')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateApprovalTeamRequest = Shapes::StructureShape.new(name: 'UpdateApprovalTeamRequest')
    UpdateApprovalTeamResponse = Shapes::StructureShape.new(name: 'UpdateApprovalTeamResponse')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    ApprovalStrategy.add_member(:mof_n, Shapes::ShapeRef.new(shape: MofNApprovalStrategy, location_name: "MofN"))
    ApprovalStrategy.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ApprovalStrategy.add_member_subclass(:mof_n, Types::ApprovalStrategy::MofN)
    ApprovalStrategy.add_member_subclass(:unknown, Types::ApprovalStrategy::Unknown)
    ApprovalStrategy.struct_class = Types::ApprovalStrategy

    ApprovalStrategyResponse.add_member(:mof_n, Shapes::ShapeRef.new(shape: MofNApprovalStrategy, location_name: "MofN"))
    ApprovalStrategyResponse.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ApprovalStrategyResponse.add_member_subclass(:mof_n, Types::ApprovalStrategyResponse::MofN)
    ApprovalStrategyResponse.add_member_subclass(:unknown, Types::ApprovalStrategyResponse::Unknown)
    ApprovalStrategyResponse.struct_class = Types::ApprovalStrategyResponse

    ApprovalTeamRequestApprover.add_member(:primary_identity_id, Shapes::ShapeRef.new(shape: IdentityId, required: true, location_name: "PrimaryIdentityId"))
    ApprovalTeamRequestApprover.add_member(:primary_identity_source_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "PrimaryIdentitySourceArn"))
    ApprovalTeamRequestApprover.struct_class = Types::ApprovalTeamRequestApprover

    ApprovalTeamRequestApprovers.member = Shapes::ShapeRef.new(shape: ApprovalTeamRequestApprover)

    CancelSessionRequest.add_member(:session_arn, Shapes::ShapeRef.new(shape: SessionArn, required: true, location: "uri", location_name: "SessionArn"))
    CancelSessionRequest.struct_class = Types::CancelSessionRequest

    CancelSessionResponse.struct_class = Types::CancelSessionResponse

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    ConflictException.struct_class = Types::ConflictException

    CreateApprovalTeamRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: Token, location_name: "ClientToken", metadata: {"idempotencyToken" => true}))
    CreateApprovalTeamRequest.add_member(:approval_strategy, Shapes::ShapeRef.new(shape: ApprovalStrategy, required: true, location_name: "ApprovalStrategy"))
    CreateApprovalTeamRequest.add_member(:approvers, Shapes::ShapeRef.new(shape: ApprovalTeamRequestApprovers, required: true, location_name: "Approvers"))
    CreateApprovalTeamRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, required: true, location_name: "Description"))
    CreateApprovalTeamRequest.add_member(:policies, Shapes::ShapeRef.new(shape: PoliciesReferences, required: true, location_name: "Policies"))
    CreateApprovalTeamRequest.add_member(:name, Shapes::ShapeRef.new(shape: ApprovalTeamName, required: true, location_name: "Name"))
    CreateApprovalTeamRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    CreateApprovalTeamRequest.struct_class = Types::CreateApprovalTeamRequest

    CreateApprovalTeamResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: IsoTimestamp, location_name: "CreationTime"))
    CreateApprovalTeamResponse.add_member(:arn, Shapes::ShapeRef.new(shape: ApprovalTeamArn, location_name: "Arn"))
    CreateApprovalTeamResponse.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    CreateApprovalTeamResponse.add_member(:version_id, Shapes::ShapeRef.new(shape: String, location_name: "VersionId"))
    CreateApprovalTeamResponse.struct_class = Types::CreateApprovalTeamResponse

    CreateIdentitySourceRequest.add_member(:identity_source_parameters, Shapes::ShapeRef.new(shape: IdentitySourceParameters, required: true, location_name: "IdentitySourceParameters"))
    CreateIdentitySourceRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: Token, location_name: "ClientToken", metadata: {"idempotencyToken" => true}))
    CreateIdentitySourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    CreateIdentitySourceRequest.struct_class = Types::CreateIdentitySourceRequest

    CreateIdentitySourceResponse.add_member(:identity_source_type, Shapes::ShapeRef.new(shape: IdentitySourceType, location_name: "IdentitySourceType"))
    CreateIdentitySourceResponse.add_member(:identity_source_arn, Shapes::ShapeRef.new(shape: String, location_name: "IdentitySourceArn"))
    CreateIdentitySourceResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: IsoTimestamp, location_name: "CreationTime"))
    CreateIdentitySourceResponse.struct_class = Types::CreateIdentitySourceResponse

    DeleteIdentitySourceRequest.add_member(:identity_source_arn, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "IdentitySourceArn"))
    DeleteIdentitySourceRequest.struct_class = Types::DeleteIdentitySourceRequest

    DeleteInactiveApprovalTeamVersionRequest.add_member(:arn, Shapes::ShapeRef.new(shape: ApprovalTeamArn, required: true, location: "uri", location_name: "Arn"))
    DeleteInactiveApprovalTeamVersionRequest.add_member(:version_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "VersionId"))
    DeleteInactiveApprovalTeamVersionRequest.struct_class = Types::DeleteInactiveApprovalTeamVersionRequest

    DeleteInactiveApprovalTeamVersionResponse.struct_class = Types::DeleteInactiveApprovalTeamVersionResponse

    Filter.add_member(:field_name, Shapes::ShapeRef.new(shape: FilterField, location_name: "FieldName"))
    Filter.add_member(:operator, Shapes::ShapeRef.new(shape: Operator, location_name: "Operator"))
    Filter.add_member(:value, Shapes::ShapeRef.new(shape: String, location_name: "Value"))
    Filter.struct_class = Types::Filter

    Filters.member = Shapes::ShapeRef.new(shape: Filter)

    GetApprovalTeamRequest.add_member(:arn, Shapes::ShapeRef.new(shape: ApprovalTeamArn, required: true, location: "uri", location_name: "Arn"))
    GetApprovalTeamRequest.struct_class = Types::GetApprovalTeamRequest

    GetApprovalTeamResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: IsoTimestamp, location_name: "CreationTime"))
    GetApprovalTeamResponse.add_member(:approval_strategy, Shapes::ShapeRef.new(shape: ApprovalStrategyResponse, location_name: "ApprovalStrategy"))
    GetApprovalTeamResponse.add_member(:number_of_approvers, Shapes::ShapeRef.new(shape: Integer, location_name: "NumberOfApprovers"))
    GetApprovalTeamResponse.add_member(:approvers, Shapes::ShapeRef.new(shape: GetApprovalTeamResponseApprovers, location_name: "Approvers"))
    GetApprovalTeamResponse.add_member(:arn, Shapes::ShapeRef.new(shape: String, location_name: "Arn"))
    GetApprovalTeamResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    GetApprovalTeamResponse.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    GetApprovalTeamResponse.add_member(:status, Shapes::ShapeRef.new(shape: ApprovalTeamStatus, location_name: "Status"))
    GetApprovalTeamResponse.add_member(:status_code, Shapes::ShapeRef.new(shape: ApprovalTeamStatusCode, location_name: "StatusCode"))
    GetApprovalTeamResponse.add_member(:status_message, Shapes::ShapeRef.new(shape: Message, location_name: "StatusMessage"))
    GetApprovalTeamResponse.add_member(:update_session_arn, Shapes::ShapeRef.new(shape: String, location_name: "UpdateSessionArn"))
    GetApprovalTeamResponse.add_member(:version_id, Shapes::ShapeRef.new(shape: String, location_name: "VersionId"))
    GetApprovalTeamResponse.add_member(:policies, Shapes::ShapeRef.new(shape: PoliciesReferences, location_name: "Policies"))
    GetApprovalTeamResponse.add_member(:last_update_time, Shapes::ShapeRef.new(shape: IsoTimestamp, location_name: "LastUpdateTime"))
    GetApprovalTeamResponse.add_member(:pending_update, Shapes::ShapeRef.new(shape: PendingUpdate, location_name: "PendingUpdate"))
    GetApprovalTeamResponse.struct_class = Types::GetApprovalTeamResponse

    GetApprovalTeamResponseApprover.add_member(:approver_id, Shapes::ShapeRef.new(shape: ParticipantId, location_name: "ApproverId"))
    GetApprovalTeamResponseApprover.add_member(:response_time, Shapes::ShapeRef.new(shape: IsoTimestamp, location_name: "ResponseTime"))
    GetApprovalTeamResponseApprover.add_member(:primary_identity_id, Shapes::ShapeRef.new(shape: IdentityId, location_name: "PrimaryIdentityId"))
    GetApprovalTeamResponseApprover.add_member(:primary_identity_source_arn, Shapes::ShapeRef.new(shape: String, location_name: "PrimaryIdentitySourceArn"))
    GetApprovalTeamResponseApprover.add_member(:primary_identity_status, Shapes::ShapeRef.new(shape: IdentityStatus, location_name: "PrimaryIdentityStatus"))
    GetApprovalTeamResponseApprover.struct_class = Types::GetApprovalTeamResponseApprover

    GetApprovalTeamResponseApprovers.member = Shapes::ShapeRef.new(shape: GetApprovalTeamResponseApprover)

    GetIdentitySourceRequest.add_member(:identity_source_arn, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "IdentitySourceArn"))
    GetIdentitySourceRequest.struct_class = Types::GetIdentitySourceRequest

    GetIdentitySourceResponse.add_member(:identity_source_type, Shapes::ShapeRef.new(shape: IdentitySourceType, location_name: "IdentitySourceType"))
    GetIdentitySourceResponse.add_member(:identity_source_parameters, Shapes::ShapeRef.new(shape: IdentitySourceParametersForGet, location_name: "IdentitySourceParameters"))
    GetIdentitySourceResponse.add_member(:identity_source_arn, Shapes::ShapeRef.new(shape: String, location_name: "IdentitySourceArn"))
    GetIdentitySourceResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: IsoTimestamp, location_name: "CreationTime"))
    GetIdentitySourceResponse.add_member(:status, Shapes::ShapeRef.new(shape: IdentitySourceStatus, location_name: "Status"))
    GetIdentitySourceResponse.add_member(:status_code, Shapes::ShapeRef.new(shape: IdentitySourceStatusCode, location_name: "StatusCode"))
    GetIdentitySourceResponse.add_member(:status_message, Shapes::ShapeRef.new(shape: String, location_name: "StatusMessage"))
    GetIdentitySourceResponse.struct_class = Types::GetIdentitySourceResponse

    GetPolicyVersionRequest.add_member(:policy_version_arn, Shapes::ShapeRef.new(shape: QualifiedPolicyArn, required: true, location: "uri", location_name: "PolicyVersionArn"))
    GetPolicyVersionRequest.struct_class = Types::GetPolicyVersionRequest

    GetPolicyVersionResponse.add_member(:policy_version, Shapes::ShapeRef.new(shape: PolicyVersion, required: true, location_name: "PolicyVersion"))
    GetPolicyVersionResponse.struct_class = Types::GetPolicyVersionResponse

    GetResourcePolicyRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ResourceArn"))
    GetResourcePolicyRequest.add_member(:policy_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "PolicyName"))
    GetResourcePolicyRequest.add_member(:policy_type, Shapes::ShapeRef.new(shape: PolicyType, required: true, location_name: "PolicyType"))
    GetResourcePolicyRequest.struct_class = Types::GetResourcePolicyRequest

    GetResourcePolicyResponse.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ResourceArn"))
    GetResourcePolicyResponse.add_member(:policy_type, Shapes::ShapeRef.new(shape: PolicyType, required: true, location_name: "PolicyType"))
    GetResourcePolicyResponse.add_member(:policy_version_arn, Shapes::ShapeRef.new(shape: String, location_name: "PolicyVersionArn"))
    GetResourcePolicyResponse.add_member(:policy_name, Shapes::ShapeRef.new(shape: PolicyName, required: true, location_name: "PolicyName"))
    GetResourcePolicyResponse.add_member(:policy_document, Shapes::ShapeRef.new(shape: PolicyDocument, required: true, location_name: "PolicyDocument"))
    GetResourcePolicyResponse.struct_class = Types::GetResourcePolicyResponse

    GetSessionRequest.add_member(:session_arn, Shapes::ShapeRef.new(shape: SessionArn, required: true, location: "uri", location_name: "SessionArn"))
    GetSessionRequest.struct_class = Types::GetSessionRequest

    GetSessionResponse.add_member(:session_arn, Shapes::ShapeRef.new(shape: SessionArn, location_name: "SessionArn"))
    GetSessionResponse.add_member(:approval_team_arn, Shapes::ShapeRef.new(shape: ApprovalTeamArn, location_name: "ApprovalTeamArn"))
    GetSessionResponse.add_member(:approval_team_name, Shapes::ShapeRef.new(shape: ApprovalTeamName, location_name: "ApprovalTeamName"))
    GetSessionResponse.add_member(:protected_resource_arn, Shapes::ShapeRef.new(shape: String, location_name: "ProtectedResourceArn"))
    GetSessionResponse.add_member(:approval_strategy, Shapes::ShapeRef.new(shape: ApprovalStrategyResponse, location_name: "ApprovalStrategy"))
    GetSessionResponse.add_member(:number_of_approvers, Shapes::ShapeRef.new(shape: Integer, location_name: "NumberOfApprovers"))
    GetSessionResponse.add_member(:initiation_time, Shapes::ShapeRef.new(shape: IsoTimestamp, location_name: "InitiationTime"))
    GetSessionResponse.add_member(:expiration_time, Shapes::ShapeRef.new(shape: IsoTimestamp, location_name: "ExpirationTime"))
    GetSessionResponse.add_member(:completion_time, Shapes::ShapeRef.new(shape: IsoTimestamp, location_name: "CompletionTime"))
    GetSessionResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    GetSessionResponse.add_member(:metadata, Shapes::ShapeRef.new(shape: SessionMetadata, location_name: "Metadata"))
    GetSessionResponse.add_member(:status, Shapes::ShapeRef.new(shape: SessionStatus, location_name: "Status"))
    GetSessionResponse.add_member(:status_code, Shapes::ShapeRef.new(shape: SessionStatusCode, location_name: "StatusCode"))
    GetSessionResponse.add_member(:status_message, Shapes::ShapeRef.new(shape: Message, location_name: "StatusMessage"))
    GetSessionResponse.add_member(:execution_status, Shapes::ShapeRef.new(shape: SessionExecutionStatus, location_name: "ExecutionStatus"))
    GetSessionResponse.add_member(:action_name, Shapes::ShapeRef.new(shape: ActionName, location_name: "ActionName"))
    GetSessionResponse.add_member(:requester_service_principal, Shapes::ShapeRef.new(shape: ServicePrincipal, location_name: "RequesterServicePrincipal"))
    GetSessionResponse.add_member(:requester_principal_arn, Shapes::ShapeRef.new(shape: String, location_name: "RequesterPrincipalArn"))
    GetSessionResponse.add_member(:requester_account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "RequesterAccountId"))
    GetSessionResponse.add_member(:requester_region, Shapes::ShapeRef.new(shape: Region, location_name: "RequesterRegion"))
    GetSessionResponse.add_member(:requester_comment, Shapes::ShapeRef.new(shape: RequesterComment, location_name: "RequesterComment"))
    GetSessionResponse.add_member(:action_completion_strategy, Shapes::ShapeRef.new(shape: ActionCompletionStrategy, location_name: "ActionCompletionStrategy"))
    GetSessionResponse.add_member(:approver_responses, Shapes::ShapeRef.new(shape: GetSessionResponseApproverResponses, location_name: "ApproverResponses"))
    GetSessionResponse.struct_class = Types::GetSessionResponse

    GetSessionResponseApproverResponse.add_member(:approver_id, Shapes::ShapeRef.new(shape: ParticipantId, location_name: "ApproverId"))
    GetSessionResponseApproverResponse.add_member(:identity_source_arn, Shapes::ShapeRef.new(shape: String, location_name: "IdentitySourceArn"))
    GetSessionResponseApproverResponse.add_member(:identity_id, Shapes::ShapeRef.new(shape: IdentityId, location_name: "IdentityId"))
    GetSessionResponseApproverResponse.add_member(:response, Shapes::ShapeRef.new(shape: SessionResponse, location_name: "Response"))
    GetSessionResponseApproverResponse.add_member(:response_time, Shapes::ShapeRef.new(shape: IsoTimestamp, location_name: "ResponseTime"))
    GetSessionResponseApproverResponse.struct_class = Types::GetSessionResponseApproverResponse

    GetSessionResponseApproverResponses.member = Shapes::ShapeRef.new(shape: GetSessionResponseApproverResponse)

    IamIdentityCenter.add_member(:instance_arn, Shapes::ShapeRef.new(shape: IdcInstanceArn, required: true, location_name: "InstanceArn"))
    IamIdentityCenter.add_member(:region, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Region"))
    IamIdentityCenter.struct_class = Types::IamIdentityCenter

    IamIdentityCenterForGet.add_member(:instance_arn, Shapes::ShapeRef.new(shape: String, location_name: "InstanceArn"))
    IamIdentityCenterForGet.add_member(:approval_portal_url, Shapes::ShapeRef.new(shape: String, location_name: "ApprovalPortalUrl"))
    IamIdentityCenterForGet.add_member(:region, Shapes::ShapeRef.new(shape: String, location_name: "Region"))
    IamIdentityCenterForGet.struct_class = Types::IamIdentityCenterForGet

    IamIdentityCenterForList.add_member(:instance_arn, Shapes::ShapeRef.new(shape: String, location_name: "InstanceArn"))
    IamIdentityCenterForList.add_member(:approval_portal_url, Shapes::ShapeRef.new(shape: String, location_name: "ApprovalPortalUrl"))
    IamIdentityCenterForList.add_member(:region, Shapes::ShapeRef.new(shape: String, location_name: "Region"))
    IamIdentityCenterForList.struct_class = Types::IamIdentityCenterForList

    IdentitySourceForList.add_member(:identity_source_type, Shapes::ShapeRef.new(shape: IdentitySourceType, location_name: "IdentitySourceType"))
    IdentitySourceForList.add_member(:identity_source_parameters, Shapes::ShapeRef.new(shape: IdentitySourceParametersForList, location_name: "IdentitySourceParameters"))
    IdentitySourceForList.add_member(:identity_source_arn, Shapes::ShapeRef.new(shape: String, location_name: "IdentitySourceArn"))
    IdentitySourceForList.add_member(:creation_time, Shapes::ShapeRef.new(shape: IsoTimestamp, location_name: "CreationTime"))
    IdentitySourceForList.add_member(:status, Shapes::ShapeRef.new(shape: IdentitySourceStatus, location_name: "Status"))
    IdentitySourceForList.add_member(:status_code, Shapes::ShapeRef.new(shape: IdentitySourceStatusCode, location_name: "StatusCode"))
    IdentitySourceForList.add_member(:status_message, Shapes::ShapeRef.new(shape: String, location_name: "StatusMessage"))
    IdentitySourceForList.struct_class = Types::IdentitySourceForList

    IdentitySourceParameters.add_member(:iam_identity_center, Shapes::ShapeRef.new(shape: IamIdentityCenter, location_name: "IamIdentityCenter"))
    IdentitySourceParameters.struct_class = Types::IdentitySourceParameters

    IdentitySourceParametersForGet.add_member(:iam_identity_center, Shapes::ShapeRef.new(shape: IamIdentityCenterForGet, location_name: "IamIdentityCenter"))
    IdentitySourceParametersForGet.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    IdentitySourceParametersForGet.add_member_subclass(:iam_identity_center, Types::IdentitySourceParametersForGet::IamIdentityCenter)
    IdentitySourceParametersForGet.add_member_subclass(:unknown, Types::IdentitySourceParametersForGet::Unknown)
    IdentitySourceParametersForGet.struct_class = Types::IdentitySourceParametersForGet

    IdentitySourceParametersForList.add_member(:iam_identity_center, Shapes::ShapeRef.new(shape: IamIdentityCenterForList, location_name: "IamIdentityCenter"))
    IdentitySourceParametersForList.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    IdentitySourceParametersForList.add_member_subclass(:iam_identity_center, Types::IdentitySourceParametersForList::IamIdentityCenter)
    IdentitySourceParametersForList.add_member_subclass(:unknown, Types::IdentitySourceParametersForList::Unknown)
    IdentitySourceParametersForList.struct_class = Types::IdentitySourceParametersForList

    IdentitySources.member = Shapes::ShapeRef.new(shape: IdentitySourceForList)

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    InternalServerException.struct_class = Types::InternalServerException

    InvalidParameterException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    InvalidParameterException.struct_class = Types::InvalidParameterException

    ListApprovalTeamsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "MaxResults"))
    ListApprovalTeamsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location: "querystring", location_name: "NextToken"))
    ListApprovalTeamsRequest.struct_class = Types::ListApprovalTeamsRequest

    ListApprovalTeamsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListApprovalTeamsResponse.add_member(:approval_teams, Shapes::ShapeRef.new(shape: ListApprovalTeamsResponseApprovalTeams, location_name: "ApprovalTeams"))
    ListApprovalTeamsResponse.struct_class = Types::ListApprovalTeamsResponse

    ListApprovalTeamsResponseApprovalTeam.add_member(:creation_time, Shapes::ShapeRef.new(shape: IsoTimestamp, location_name: "CreationTime"))
    ListApprovalTeamsResponseApprovalTeam.add_member(:approval_strategy, Shapes::ShapeRef.new(shape: ApprovalStrategyResponse, location_name: "ApprovalStrategy"))
    ListApprovalTeamsResponseApprovalTeam.add_member(:number_of_approvers, Shapes::ShapeRef.new(shape: Integer, location_name: "NumberOfApprovers"))
    ListApprovalTeamsResponseApprovalTeam.add_member(:arn, Shapes::ShapeRef.new(shape: ApprovalTeamArn, location_name: "Arn"))
    ListApprovalTeamsResponseApprovalTeam.add_member(:name, Shapes::ShapeRef.new(shape: ApprovalTeamName, location_name: "Name"))
    ListApprovalTeamsResponseApprovalTeam.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    ListApprovalTeamsResponseApprovalTeam.add_member(:status, Shapes::ShapeRef.new(shape: ApprovalTeamStatus, location_name: "Status"))
    ListApprovalTeamsResponseApprovalTeam.add_member(:status_code, Shapes::ShapeRef.new(shape: ApprovalTeamStatusCode, location_name: "StatusCode"))
    ListApprovalTeamsResponseApprovalTeam.add_member(:status_message, Shapes::ShapeRef.new(shape: Message, location_name: "StatusMessage"))
    ListApprovalTeamsResponseApprovalTeam.struct_class = Types::ListApprovalTeamsResponseApprovalTeam

    ListApprovalTeamsResponseApprovalTeams.member = Shapes::ShapeRef.new(shape: ListApprovalTeamsResponseApprovalTeam)

    ListIdentitySourcesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "MaxResults"))
    ListIdentitySourcesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location: "querystring", location_name: "NextToken"))
    ListIdentitySourcesRequest.struct_class = Types::ListIdentitySourcesRequest

    ListIdentitySourcesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListIdentitySourcesResponse.add_member(:identity_sources, Shapes::ShapeRef.new(shape: IdentitySources, location_name: "IdentitySources"))
    ListIdentitySourcesResponse.struct_class = Types::ListIdentitySourcesResponse

    ListPoliciesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "MaxResults"))
    ListPoliciesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location: "querystring", location_name: "NextToken"))
    ListPoliciesRequest.struct_class = Types::ListPoliciesRequest

    ListPoliciesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListPoliciesResponse.add_member(:policies, Shapes::ShapeRef.new(shape: Policies, location_name: "Policies"))
    ListPoliciesResponse.struct_class = Types::ListPoliciesResponse

    ListPolicyVersionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "MaxResults"))
    ListPolicyVersionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location: "querystring", location_name: "NextToken"))
    ListPolicyVersionsRequest.add_member(:policy_arn, Shapes::ShapeRef.new(shape: UnqualifiedPolicyArn, required: true, location: "uri", location_name: "PolicyArn"))
    ListPolicyVersionsRequest.struct_class = Types::ListPolicyVersionsRequest

    ListPolicyVersionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListPolicyVersionsResponse.add_member(:policy_versions, Shapes::ShapeRef.new(shape: PolicyVersions, location_name: "PolicyVersions"))
    ListPolicyVersionsResponse.struct_class = Types::ListPolicyVersionsResponse

    ListResourcePoliciesRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "ResourceArn"))
    ListResourcePoliciesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "MaxResults"))
    ListResourcePoliciesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location: "querystring", location_name: "NextToken"))
    ListResourcePoliciesRequest.struct_class = Types::ListResourcePoliciesRequest

    ListResourcePoliciesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListResourcePoliciesResponse.add_member(:resource_policies, Shapes::ShapeRef.new(shape: ListResourcePoliciesResponseResourcePolicies, location_name: "ResourcePolicies"))
    ListResourcePoliciesResponse.struct_class = Types::ListResourcePoliciesResponse

    ListResourcePoliciesResponseResourcePolicies.member = Shapes::ShapeRef.new(shape: ListResourcePoliciesResponseResourcePolicy)

    ListResourcePoliciesResponseResourcePolicy.add_member(:policy_arn, Shapes::ShapeRef.new(shape: String, location_name: "PolicyArn"))
    ListResourcePoliciesResponseResourcePolicy.add_member(:policy_type, Shapes::ShapeRef.new(shape: PolicyType, location_name: "PolicyType"))
    ListResourcePoliciesResponseResourcePolicy.add_member(:policy_name, Shapes::ShapeRef.new(shape: String, location_name: "PolicyName"))
    ListResourcePoliciesResponseResourcePolicy.struct_class = Types::ListResourcePoliciesResponseResourcePolicy

    ListSessionsRequest.add_member(:approval_team_arn, Shapes::ShapeRef.new(shape: ApprovalTeamArn, required: true, location: "uri", location_name: "ApprovalTeamArn"))
    ListSessionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListSessionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListSessionsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: Filters, location_name: "Filters"))
    ListSessionsRequest.struct_class = Types::ListSessionsRequest

    ListSessionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListSessionsResponse.add_member(:sessions, Shapes::ShapeRef.new(shape: ListSessionsResponseSessions, location_name: "Sessions"))
    ListSessionsResponse.struct_class = Types::ListSessionsResponse

    ListSessionsResponseSession.add_member(:session_arn, Shapes::ShapeRef.new(shape: SessionArn, location_name: "SessionArn"))
    ListSessionsResponseSession.add_member(:approval_team_name, Shapes::ShapeRef.new(shape: ApprovalTeamName, location_name: "ApprovalTeamName"))
    ListSessionsResponseSession.add_member(:approval_team_arn, Shapes::ShapeRef.new(shape: ApprovalTeamArn, location_name: "ApprovalTeamArn"))
    ListSessionsResponseSession.add_member(:initiation_time, Shapes::ShapeRef.new(shape: IsoTimestamp, location_name: "InitiationTime"))
    ListSessionsResponseSession.add_member(:expiration_time, Shapes::ShapeRef.new(shape: IsoTimestamp, location_name: "ExpirationTime"))
    ListSessionsResponseSession.add_member(:completion_time, Shapes::ShapeRef.new(shape: IsoTimestamp, location_name: "CompletionTime"))
    ListSessionsResponseSession.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    ListSessionsResponseSession.add_member(:action_name, Shapes::ShapeRef.new(shape: ActionName, location_name: "ActionName"))
    ListSessionsResponseSession.add_member(:protected_resource_arn, Shapes::ShapeRef.new(shape: String, location_name: "ProtectedResourceArn"))
    ListSessionsResponseSession.add_member(:requester_service_principal, Shapes::ShapeRef.new(shape: ServicePrincipal, location_name: "RequesterServicePrincipal"))
    ListSessionsResponseSession.add_member(:requester_principal_arn, Shapes::ShapeRef.new(shape: String, location_name: "RequesterPrincipalArn"))
    ListSessionsResponseSession.add_member(:requester_region, Shapes::ShapeRef.new(shape: Region, location_name: "RequesterRegion"))
    ListSessionsResponseSession.add_member(:requester_account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "RequesterAccountId"))
    ListSessionsResponseSession.add_member(:status, Shapes::ShapeRef.new(shape: SessionStatus, location_name: "Status"))
    ListSessionsResponseSession.add_member(:status_code, Shapes::ShapeRef.new(shape: SessionStatusCode, location_name: "StatusCode"))
    ListSessionsResponseSession.add_member(:status_message, Shapes::ShapeRef.new(shape: Message, location_name: "StatusMessage"))
    ListSessionsResponseSession.add_member(:action_completion_strategy, Shapes::ShapeRef.new(shape: ActionCompletionStrategy, location_name: "ActionCompletionStrategy"))
    ListSessionsResponseSession.struct_class = Types::ListSessionsResponseSession

    ListSessionsResponseSessions.member = Shapes::ShapeRef.new(shape: ListSessionsResponseSession)

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "ResourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    MofNApprovalStrategy.add_member(:min_approvals_required, Shapes::ShapeRef.new(shape: MofNApprovalStrategyMinApprovalsRequiredInteger, required: true, location_name: "MinApprovalsRequired"))
    MofNApprovalStrategy.struct_class = Types::MofNApprovalStrategy

    PendingUpdate.add_member(:version_id, Shapes::ShapeRef.new(shape: String, location_name: "VersionId"))
    PendingUpdate.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    PendingUpdate.add_member(:approval_strategy, Shapes::ShapeRef.new(shape: ApprovalStrategyResponse, location_name: "ApprovalStrategy"))
    PendingUpdate.add_member(:number_of_approvers, Shapes::ShapeRef.new(shape: Integer, location_name: "NumberOfApprovers"))
    PendingUpdate.add_member(:status, Shapes::ShapeRef.new(shape: ApprovalTeamStatus, location_name: "Status"))
    PendingUpdate.add_member(:status_code, Shapes::ShapeRef.new(shape: ApprovalTeamStatusCode, location_name: "StatusCode"))
    PendingUpdate.add_member(:status_message, Shapes::ShapeRef.new(shape: Message, location_name: "StatusMessage"))
    PendingUpdate.add_member(:approvers, Shapes::ShapeRef.new(shape: GetApprovalTeamResponseApprovers, location_name: "Approvers"))
    PendingUpdate.add_member(:update_initiation_time, Shapes::ShapeRef.new(shape: IsoTimestamp, location_name: "UpdateInitiationTime"))
    PendingUpdate.struct_class = Types::PendingUpdate

    Policies.member = Shapes::ShapeRef.new(shape: Policy)

    PoliciesReferences.member = Shapes::ShapeRef.new(shape: PolicyReference)

    Policy.add_member(:arn, Shapes::ShapeRef.new(shape: UnqualifiedPolicyArn, required: true, location_name: "Arn"))
    Policy.add_member(:default_version, Shapes::ShapeRef.new(shape: PolicyVersionId, required: true, location_name: "DefaultVersion"))
    Policy.add_member(:policy_type, Shapes::ShapeRef.new(shape: PolicyType, required: true, location_name: "PolicyType"))
    Policy.add_member(:name, Shapes::ShapeRef.new(shape: PolicyName, required: true, location_name: "Name"))
    Policy.struct_class = Types::Policy

    PolicyReference.add_member(:policy_arn, Shapes::ShapeRef.new(shape: QualifiedPolicyArn, required: true, location_name: "PolicyArn"))
    PolicyReference.struct_class = Types::PolicyReference

    PolicyVersion.add_member(:arn, Shapes::ShapeRef.new(shape: QualifiedPolicyArn, required: true, location_name: "Arn"))
    PolicyVersion.add_member(:policy_arn, Shapes::ShapeRef.new(shape: UnqualifiedPolicyArn, required: true, location_name: "PolicyArn"))
    PolicyVersion.add_member(:version_id, Shapes::ShapeRef.new(shape: PolicyVersionId, required: true, location_name: "VersionId"))
    PolicyVersion.add_member(:policy_type, Shapes::ShapeRef.new(shape: PolicyType, required: true, location_name: "PolicyType"))
    PolicyVersion.add_member(:is_default, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "IsDefault"))
    PolicyVersion.add_member(:name, Shapes::ShapeRef.new(shape: PolicyName, required: true, location_name: "Name"))
    PolicyVersion.add_member(:status, Shapes::ShapeRef.new(shape: PolicyStatus, required: true, location_name: "Status"))
    PolicyVersion.add_member(:creation_time, Shapes::ShapeRef.new(shape: IsoTimestamp, required: true, location_name: "CreationTime"))
    PolicyVersion.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: IsoTimestamp, required: true, location_name: "LastUpdatedTime"))
    PolicyVersion.add_member(:document, Shapes::ShapeRef.new(shape: PolicyDocument, required: true, location_name: "Document"))
    PolicyVersion.struct_class = Types::PolicyVersion

    PolicyVersionSummary.add_member(:arn, Shapes::ShapeRef.new(shape: QualifiedPolicyArn, required: true, location_name: "Arn"))
    PolicyVersionSummary.add_member(:policy_arn, Shapes::ShapeRef.new(shape: UnqualifiedPolicyArn, required: true, location_name: "PolicyArn"))
    PolicyVersionSummary.add_member(:version_id, Shapes::ShapeRef.new(shape: PolicyVersionId, required: true, location_name: "VersionId"))
    PolicyVersionSummary.add_member(:policy_type, Shapes::ShapeRef.new(shape: PolicyType, required: true, location_name: "PolicyType"))
    PolicyVersionSummary.add_member(:is_default, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "IsDefault"))
    PolicyVersionSummary.add_member(:name, Shapes::ShapeRef.new(shape: PolicyName, required: true, location_name: "Name"))
    PolicyVersionSummary.add_member(:status, Shapes::ShapeRef.new(shape: PolicyStatus, required: true, location_name: "Status"))
    PolicyVersionSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: IsoTimestamp, required: true, location_name: "CreationTime"))
    PolicyVersionSummary.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: IsoTimestamp, required: true, location_name: "LastUpdatedTime"))
    PolicyVersionSummary.struct_class = Types::PolicyVersionSummary

    PolicyVersions.member = Shapes::ShapeRef.new(shape: PolicyVersionSummary)

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    SessionMetadata.key = Shapes::ShapeRef.new(shape: SessionKey)
    SessionMetadata.value = Shapes::ShapeRef.new(shape: SessionValue)

    StartActiveApprovalTeamDeletionRequest.add_member(:pending_window_days, Shapes::ShapeRef.new(shape: Integer, location_name: "PendingWindowDays"))
    StartActiveApprovalTeamDeletionRequest.add_member(:arn, Shapes::ShapeRef.new(shape: ApprovalTeamArn, required: true, location: "uri", location_name: "Arn"))
    StartActiveApprovalTeamDeletionRequest.struct_class = Types::StartActiveApprovalTeamDeletionRequest

    StartActiveApprovalTeamDeletionResponse.add_member(:deletion_completion_time, Shapes::ShapeRef.new(shape: IsoTimestamp, location_name: "DeletionCompletionTime"))
    StartActiveApprovalTeamDeletionResponse.add_member(:deletion_start_time, Shapes::ShapeRef.new(shape: IsoTimestamp, location_name: "DeletionStartTime"))
    StartActiveApprovalTeamDeletionResponse.struct_class = Types::StartActiveApprovalTeamDeletionResponse

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "ResourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, required: true, location_name: "Tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    Tags.key = Shapes::ShapeRef.new(shape: TagKey)
    Tags.value = Shapes::ShapeRef.new(shape: TagValue)

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    TooManyTagsException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    TooManyTagsException.add_member(:resource_name, Shapes::ShapeRef.new(shape: String, location_name: "ResourceName"))
    TooManyTagsException.struct_class = Types::TooManyTagsException

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "ResourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location_name: "TagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateApprovalTeamRequest.add_member(:approval_strategy, Shapes::ShapeRef.new(shape: ApprovalStrategy, location_name: "ApprovalStrategy"))
    UpdateApprovalTeamRequest.add_member(:approvers, Shapes::ShapeRef.new(shape: ApprovalTeamRequestApprovers, location_name: "Approvers"))
    UpdateApprovalTeamRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    UpdateApprovalTeamRequest.add_member(:arn, Shapes::ShapeRef.new(shape: ApprovalTeamArn, required: true, location: "uri", location_name: "Arn"))
    UpdateApprovalTeamRequest.struct_class = Types::UpdateApprovalTeamRequest

    UpdateApprovalTeamResponse.add_member(:version_id, Shapes::ShapeRef.new(shape: String, location_name: "VersionId"))
    UpdateApprovalTeamResponse.struct_class = Types::UpdateApprovalTeamResponse

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    ValidationException.struct_class = Types::ValidationException


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2022-07-26"

      api.metadata = {
        "apiVersion" => "2022-07-26",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "mpa",
        "protocol" => "rest-json",
        "protocols" => ["rest-json"],
        "serviceFullName" => "AWS Multi-party Approval",
        "serviceId" => "MPA",
        "signatureVersion" => "v4",
        "signingName" => "mpa",
        "uid" => "mpa-2022-07-26",
      }

      api.add_operation(:cancel_session, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CancelSession"
        o.http_method = "PUT"
        o.http_request_uri = "/sessions/{SessionArn}"
        o.input = Shapes::ShapeRef.new(shape: CancelSessionRequest)
        o.output = Shapes::ShapeRef.new(shape: CancelSessionResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:create_approval_team, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateApprovalTeam"
        o.http_method = "POST"
        o.http_request_uri = "/approval-teams"
        o.input = Shapes::ShapeRef.new(shape: CreateApprovalTeamRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateApprovalTeamResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:create_identity_source, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateIdentitySource"
        o.http_method = "POST"
        o.http_request_uri = "/identity-sources"
        o.input = Shapes::ShapeRef.new(shape: CreateIdentitySourceRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateIdentitySourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_identity_source, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteIdentitySource"
        o.http_method = "DELETE"
        o.http_request_uri = "/identity-sources/{IdentitySourceArn}"
        o.input = Shapes::ShapeRef.new(shape: DeleteIdentitySourceRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_inactive_approval_team_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteInactiveApprovalTeamVersion"
        o.http_method = "DELETE"
        o.http_request_uri = "/approval-teams/{Arn}/{VersionId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteInactiveApprovalTeamVersionRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteInactiveApprovalTeamVersionResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:get_approval_team, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetApprovalTeam"
        o.http_method = "GET"
        o.http_request_uri = "/approval-teams/{Arn}"
        o.input = Shapes::ShapeRef.new(shape: GetApprovalTeamRequest)
        o.output = Shapes::ShapeRef.new(shape: GetApprovalTeamResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_identity_source, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetIdentitySource"
        o.http_method = "GET"
        o.http_request_uri = "/identity-sources/{IdentitySourceArn}"
        o.input = Shapes::ShapeRef.new(shape: GetIdentitySourceRequest)
        o.output = Shapes::ShapeRef.new(shape: GetIdentitySourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_policy_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetPolicyVersion"
        o.http_method = "GET"
        o.http_request_uri = "/policy-versions/{PolicyVersionArn}"
        o.input = Shapes::ShapeRef.new(shape: GetPolicyVersionRequest)
        o.output = Shapes::ShapeRef.new(shape: GetPolicyVersionResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_resource_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetResourcePolicy"
        o.http_method = "POST"
        o.http_request_uri = "/GetResourcePolicy"
        o.input = Shapes::ShapeRef.new(shape: GetResourcePolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: GetResourcePolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_session, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSession"
        o.http_method = "GET"
        o.http_request_uri = "/sessions/{SessionArn}"
        o.input = Shapes::ShapeRef.new(shape: GetSessionRequest)
        o.output = Shapes::ShapeRef.new(shape: GetSessionResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:list_approval_teams, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListApprovalTeams"
        o.http_method = "POST"
        o.http_request_uri = "/approval-teams/?List"
        o.input = Shapes::ShapeRef.new(shape: ListApprovalTeamsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListApprovalTeamsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_identity_sources, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListIdentitySources"
        o.http_method = "POST"
        o.http_request_uri = "/identity-sources/?List"
        o.input = Shapes::ShapeRef.new(shape: ListIdentitySourcesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListIdentitySourcesResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_policies, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPolicies"
        o.http_method = "POST"
        o.http_request_uri = "/policies/?List"
        o.input = Shapes::ShapeRef.new(shape: ListPoliciesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListPoliciesResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_policy_versions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPolicyVersions"
        o.http_method = "POST"
        o.http_request_uri = "/policies/{PolicyArn}/?List"
        o.input = Shapes::ShapeRef.new(shape: ListPolicyVersionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListPolicyVersionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_resource_policies, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListResourcePolicies"
        o.http_method = "POST"
        o.http_request_uri = "/resource-policies/{ResourceArn}/?List"
        o.input = Shapes::ShapeRef.new(shape: ListResourcePoliciesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListResourcePoliciesResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_sessions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSessions"
        o.http_method = "POST"
        o.http_request_uri = "/approval-teams/{ApprovalTeamArn}/sessions/?List"
        o.input = Shapes::ShapeRef.new(shape: ListSessionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListSessionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
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
        o.http_request_uri = "/tags/{ResourceArn}"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:start_active_approval_team_deletion, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartActiveApprovalTeamDeletion"
        o.http_method = "POST"
        o.http_request_uri = "/approval-teams/{Arn}?Delete"
        o.input = Shapes::ShapeRef.new(shape: StartActiveApprovalTeamDeletionRequest)
        o.output = Shapes::ShapeRef.new(shape: StartActiveApprovalTeamDeletionResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "PUT"
        o.http_request_uri = "/tags/{ResourceArn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTagsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags/{ResourceArn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_approval_team, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateApprovalTeam"
        o.http_method = "PATCH"
        o.http_request_uri = "/approval-teams/{Arn}"
        o.input = Shapes::ShapeRef.new(shape: UpdateApprovalTeamRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateApprovalTeamResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)
    end

  end
end
