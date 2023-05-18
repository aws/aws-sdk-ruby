# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::CodeCatalyst
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AccessTokenId = Shapes::StringShape.new(name: 'AccessTokenId')
    AccessTokenName = Shapes::StringShape.new(name: 'AccessTokenName')
    AccessTokenSecret = Shapes::StringShape.new(name: 'AccessTokenSecret')
    AccessTokenSummaries = Shapes::ListShape.new(name: 'AccessTokenSummaries')
    AccessTokenSummary = Shapes::StructureShape.new(name: 'AccessTokenSummary')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    ClientToken = Shapes::StringShape.new(name: 'ClientToken')
    ComparisonOperator = Shapes::StringShape.new(name: 'ComparisonOperator')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreateAccessTokenRequest = Shapes::StructureShape.new(name: 'CreateAccessTokenRequest')
    CreateAccessTokenResponse = Shapes::StructureShape.new(name: 'CreateAccessTokenResponse')
    CreateDevEnvironmentRequest = Shapes::StructureShape.new(name: 'CreateDevEnvironmentRequest')
    CreateDevEnvironmentRequestAliasString = Shapes::StringShape.new(name: 'CreateDevEnvironmentRequestAliasString')
    CreateDevEnvironmentResponse = Shapes::StructureShape.new(name: 'CreateDevEnvironmentResponse')
    CreateProjectRequest = Shapes::StructureShape.new(name: 'CreateProjectRequest')
    CreateProjectResponse = Shapes::StructureShape.new(name: 'CreateProjectResponse')
    CreateSourceRepositoryBranchRequest = Shapes::StructureShape.new(name: 'CreateSourceRepositoryBranchRequest')
    CreateSourceRepositoryBranchResponse = Shapes::StructureShape.new(name: 'CreateSourceRepositoryBranchResponse')
    DeleteAccessTokenRequest = Shapes::StructureShape.new(name: 'DeleteAccessTokenRequest')
    DeleteAccessTokenResponse = Shapes::StructureShape.new(name: 'DeleteAccessTokenResponse')
    DeleteDevEnvironmentRequest = Shapes::StructureShape.new(name: 'DeleteDevEnvironmentRequest')
    DeleteDevEnvironmentResponse = Shapes::StructureShape.new(name: 'DeleteDevEnvironmentResponse')
    DevEnvironmentAccessDetails = Shapes::StructureShape.new(name: 'DevEnvironmentAccessDetails')
    DevEnvironmentRepositorySummaries = Shapes::ListShape.new(name: 'DevEnvironmentRepositorySummaries')
    DevEnvironmentRepositorySummary = Shapes::StructureShape.new(name: 'DevEnvironmentRepositorySummary')
    DevEnvironmentSessionConfiguration = Shapes::StructureShape.new(name: 'DevEnvironmentSessionConfiguration')
    DevEnvironmentSessionSummary = Shapes::StructureShape.new(name: 'DevEnvironmentSessionSummary')
    DevEnvironmentSessionSummaryIdString = Shapes::StringShape.new(name: 'DevEnvironmentSessionSummaryIdString')
    DevEnvironmentSessionType = Shapes::StringShape.new(name: 'DevEnvironmentSessionType')
    DevEnvironmentSessionsSummaryList = Shapes::ListShape.new(name: 'DevEnvironmentSessionsSummaryList')
    DevEnvironmentStatus = Shapes::StringShape.new(name: 'DevEnvironmentStatus')
    DevEnvironmentSummary = Shapes::StructureShape.new(name: 'DevEnvironmentSummary')
    DevEnvironmentSummaryAliasString = Shapes::StringShape.new(name: 'DevEnvironmentSummaryAliasString')
    DevEnvironmentSummaryCreatorIdString = Shapes::StringShape.new(name: 'DevEnvironmentSummaryCreatorIdString')
    DevEnvironmentSummaryList = Shapes::ListShape.new(name: 'DevEnvironmentSummaryList')
    EmailAddress = Shapes::StructureShape.new(name: 'EmailAddress')
    EventLogEntries = Shapes::ListShape.new(name: 'EventLogEntries')
    EventLogEntry = Shapes::StructureShape.new(name: 'EventLogEntry')
    EventPayload = Shapes::StructureShape.new(name: 'EventPayload')
    ExecuteCommandSessionConfiguration = Shapes::StructureShape.new(name: 'ExecuteCommandSessionConfiguration')
    ExecuteCommandSessionConfigurationArguments = Shapes::ListShape.new(name: 'ExecuteCommandSessionConfigurationArguments')
    ExecuteCommandSessionConfigurationArgumentsMemberString = Shapes::StringShape.new(name: 'ExecuteCommandSessionConfigurationArgumentsMemberString')
    ExecuteCommandSessionConfigurationCommandString = Shapes::StringShape.new(name: 'ExecuteCommandSessionConfigurationCommandString')
    Filter = Shapes::StructureShape.new(name: 'Filter')
    FilterKey = Shapes::StringShape.new(name: 'FilterKey')
    Filters = Shapes::ListShape.new(name: 'Filters')
    GetDevEnvironmentRequest = Shapes::StructureShape.new(name: 'GetDevEnvironmentRequest')
    GetDevEnvironmentResponse = Shapes::StructureShape.new(name: 'GetDevEnvironmentResponse')
    GetDevEnvironmentResponseAliasString = Shapes::StringShape.new(name: 'GetDevEnvironmentResponseAliasString')
    GetDevEnvironmentResponseCreatorIdString = Shapes::StringShape.new(name: 'GetDevEnvironmentResponseCreatorIdString')
    GetProjectRequest = Shapes::StructureShape.new(name: 'GetProjectRequest')
    GetProjectResponse = Shapes::StructureShape.new(name: 'GetProjectResponse')
    GetSourceRepositoryCloneUrlsRequest = Shapes::StructureShape.new(name: 'GetSourceRepositoryCloneUrlsRequest')
    GetSourceRepositoryCloneUrlsResponse = Shapes::StructureShape.new(name: 'GetSourceRepositoryCloneUrlsResponse')
    GetSpaceRequest = Shapes::StructureShape.new(name: 'GetSpaceRequest')
    GetSpaceResponse = Shapes::StructureShape.new(name: 'GetSpaceResponse')
    GetSubscriptionRequest = Shapes::StructureShape.new(name: 'GetSubscriptionRequest')
    GetSubscriptionResponse = Shapes::StructureShape.new(name: 'GetSubscriptionResponse')
    GetUserDetailsRequest = Shapes::StructureShape.new(name: 'GetUserDetailsRequest')
    GetUserDetailsRequestIdString = Shapes::StringShape.new(name: 'GetUserDetailsRequestIdString')
    GetUserDetailsRequestUserNameString = Shapes::StringShape.new(name: 'GetUserDetailsRequestUserNameString')
    GetUserDetailsResponse = Shapes::StructureShape.new(name: 'GetUserDetailsResponse')
    Ide = Shapes::StructureShape.new(name: 'Ide')
    IdeConfiguration = Shapes::StructureShape.new(name: 'IdeConfiguration')
    IdeConfigurationList = Shapes::ListShape.new(name: 'IdeConfigurationList')
    IdeConfigurationNameString = Shapes::StringShape.new(name: 'IdeConfigurationNameString')
    IdeConfigurationRuntimeString = Shapes::StringShape.new(name: 'IdeConfigurationRuntimeString')
    IdeNameString = Shapes::StringShape.new(name: 'IdeNameString')
    IdeRuntimeString = Shapes::StringShape.new(name: 'IdeRuntimeString')
    Ides = Shapes::ListShape.new(name: 'Ides')
    InactivityTimeoutMinutes = Shapes::IntegerShape.new(name: 'InactivityTimeoutMinutes')
    InstanceType = Shapes::StringShape.new(name: 'InstanceType')
    ListAccessTokensRequest = Shapes::StructureShape.new(name: 'ListAccessTokensRequest')
    ListAccessTokensRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListAccessTokensRequestMaxResultsInteger')
    ListAccessTokensRequestNextTokenString = Shapes::StringShape.new(name: 'ListAccessTokensRequestNextTokenString')
    ListAccessTokensResponse = Shapes::StructureShape.new(name: 'ListAccessTokensResponse')
    ListDevEnvironmentSessionsRequest = Shapes::StructureShape.new(name: 'ListDevEnvironmentSessionsRequest')
    ListDevEnvironmentSessionsRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListDevEnvironmentSessionsRequestMaxResultsInteger')
    ListDevEnvironmentSessionsRequestNextTokenString = Shapes::StringShape.new(name: 'ListDevEnvironmentSessionsRequestNextTokenString')
    ListDevEnvironmentSessionsResponse = Shapes::StructureShape.new(name: 'ListDevEnvironmentSessionsResponse')
    ListDevEnvironmentsRequest = Shapes::StructureShape.new(name: 'ListDevEnvironmentsRequest')
    ListDevEnvironmentsRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListDevEnvironmentsRequestMaxResultsInteger')
    ListDevEnvironmentsRequestNextTokenString = Shapes::StringShape.new(name: 'ListDevEnvironmentsRequestNextTokenString')
    ListDevEnvironmentsResponse = Shapes::StructureShape.new(name: 'ListDevEnvironmentsResponse')
    ListEventLogsRequest = Shapes::StructureShape.new(name: 'ListEventLogsRequest')
    ListEventLogsRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListEventLogsRequestMaxResultsInteger')
    ListEventLogsRequestNextTokenString = Shapes::StringShape.new(name: 'ListEventLogsRequestNextTokenString')
    ListEventLogsResponse = Shapes::StructureShape.new(name: 'ListEventLogsResponse')
    ListProjectsRequest = Shapes::StructureShape.new(name: 'ListProjectsRequest')
    ListProjectsRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListProjectsRequestMaxResultsInteger')
    ListProjectsRequestNextTokenString = Shapes::StringShape.new(name: 'ListProjectsRequestNextTokenString')
    ListProjectsResponse = Shapes::StructureShape.new(name: 'ListProjectsResponse')
    ListSourceRepositoriesItem = Shapes::StructureShape.new(name: 'ListSourceRepositoriesItem')
    ListSourceRepositoriesItems = Shapes::ListShape.new(name: 'ListSourceRepositoriesItems')
    ListSourceRepositoriesRequest = Shapes::StructureShape.new(name: 'ListSourceRepositoriesRequest')
    ListSourceRepositoriesRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListSourceRepositoriesRequestMaxResultsInteger')
    ListSourceRepositoriesRequestNextTokenString = Shapes::StringShape.new(name: 'ListSourceRepositoriesRequestNextTokenString')
    ListSourceRepositoriesResponse = Shapes::StructureShape.new(name: 'ListSourceRepositoriesResponse')
    ListSourceRepositoryBranchesItem = Shapes::StructureShape.new(name: 'ListSourceRepositoryBranchesItem')
    ListSourceRepositoryBranchesItems = Shapes::ListShape.new(name: 'ListSourceRepositoryBranchesItems')
    ListSourceRepositoryBranchesRequest = Shapes::StructureShape.new(name: 'ListSourceRepositoryBranchesRequest')
    ListSourceRepositoryBranchesRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListSourceRepositoryBranchesRequestMaxResultsInteger')
    ListSourceRepositoryBranchesRequestNextTokenString = Shapes::StringShape.new(name: 'ListSourceRepositoryBranchesRequestNextTokenString')
    ListSourceRepositoryBranchesResponse = Shapes::StructureShape.new(name: 'ListSourceRepositoryBranchesResponse')
    ListSpacesRequest = Shapes::StructureShape.new(name: 'ListSpacesRequest')
    ListSpacesRequestNextTokenString = Shapes::StringShape.new(name: 'ListSpacesRequestNextTokenString')
    ListSpacesResponse = Shapes::StructureShape.new(name: 'ListSpacesResponse')
    NameString = Shapes::StringShape.new(name: 'NameString')
    OperationType = Shapes::StringShape.new(name: 'OperationType')
    PersistentStorage = Shapes::StructureShape.new(name: 'PersistentStorage')
    PersistentStorageConfiguration = Shapes::StructureShape.new(name: 'PersistentStorageConfiguration')
    PersistentStorageConfigurationSizeInGiBInteger = Shapes::IntegerShape.new(name: 'PersistentStorageConfigurationSizeInGiBInteger')
    PersistentStorageSizeInGiBInteger = Shapes::IntegerShape.new(name: 'PersistentStorageSizeInGiBInteger')
    ProjectDescription = Shapes::StringShape.new(name: 'ProjectDescription')
    ProjectDisplayName = Shapes::StringShape.new(name: 'ProjectDisplayName')
    ProjectInformation = Shapes::StructureShape.new(name: 'ProjectInformation')
    ProjectListFilter = Shapes::StructureShape.new(name: 'ProjectListFilter')
    ProjectListFilters = Shapes::ListShape.new(name: 'ProjectListFilters')
    ProjectSummaries = Shapes::ListShape.new(name: 'ProjectSummaries')
    ProjectSummary = Shapes::StructureShape.new(name: 'ProjectSummary')
    RegionString = Shapes::StringShape.new(name: 'RegionString')
    RepositoriesInput = Shapes::ListShape.new(name: 'RepositoriesInput')
    RepositoryInput = Shapes::StructureShape.new(name: 'RepositoryInput')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    SensitiveString = Shapes::StringShape.new(name: 'SensitiveString')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    SourceRepositoryBranchRefString = Shapes::StringShape.new(name: 'SourceRepositoryBranchRefString')
    SourceRepositoryBranchString = Shapes::StringShape.new(name: 'SourceRepositoryBranchString')
    SourceRepositoryDescriptionString = Shapes::StringShape.new(name: 'SourceRepositoryDescriptionString')
    SourceRepositoryIdString = Shapes::StringShape.new(name: 'SourceRepositoryIdString')
    SourceRepositoryNameString = Shapes::StringShape.new(name: 'SourceRepositoryNameString')
    SpaceSummaries = Shapes::ListShape.new(name: 'SpaceSummaries')
    SpaceSummary = Shapes::StructureShape.new(name: 'SpaceSummary')
    StartDevEnvironmentRequest = Shapes::StructureShape.new(name: 'StartDevEnvironmentRequest')
    StartDevEnvironmentResponse = Shapes::StructureShape.new(name: 'StartDevEnvironmentResponse')
    StartDevEnvironmentSessionRequest = Shapes::StructureShape.new(name: 'StartDevEnvironmentSessionRequest')
    StartDevEnvironmentSessionResponse = Shapes::StructureShape.new(name: 'StartDevEnvironmentSessionResponse')
    StartDevEnvironmentSessionResponseSessionIdString = Shapes::StringShape.new(name: 'StartDevEnvironmentSessionResponseSessionIdString')
    StatusReason = Shapes::StringShape.new(name: 'StatusReason')
    StopDevEnvironmentRequest = Shapes::StructureShape.new(name: 'StopDevEnvironmentRequest')
    StopDevEnvironmentResponse = Shapes::StructureShape.new(name: 'StopDevEnvironmentResponse')
    StopDevEnvironmentSessionRequest = Shapes::StructureShape.new(name: 'StopDevEnvironmentSessionRequest')
    StopDevEnvironmentSessionRequestSessionIdString = Shapes::StringShape.new(name: 'StopDevEnvironmentSessionRequestSessionIdString')
    StopDevEnvironmentSessionResponse = Shapes::StructureShape.new(name: 'StopDevEnvironmentSessionResponse')
    StopDevEnvironmentSessionResponseSessionIdString = Shapes::StringShape.new(name: 'StopDevEnvironmentSessionResponseSessionIdString')
    String = Shapes::StringShape.new(name: 'String')
    StringList = Shapes::ListShape.new(name: 'StringList')
    SyntheticTimestamp_date_time = Shapes::TimestampShape.new(name: 'SyntheticTimestamp_date_time', timestampFormat: "iso8601")
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp', timestampFormat: "iso8601")
    UpdateDevEnvironmentRequest = Shapes::StructureShape.new(name: 'UpdateDevEnvironmentRequest')
    UpdateDevEnvironmentRequestAliasString = Shapes::StringShape.new(name: 'UpdateDevEnvironmentRequestAliasString')
    UpdateDevEnvironmentResponse = Shapes::StructureShape.new(name: 'UpdateDevEnvironmentResponse')
    UpdateDevEnvironmentResponseAliasString = Shapes::StringShape.new(name: 'UpdateDevEnvironmentResponseAliasString')
    UserIdentity = Shapes::StructureShape.new(name: 'UserIdentity')
    UserType = Shapes::StringShape.new(name: 'UserType')
    Uuid = Shapes::StringShape.new(name: 'Uuid')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    VerifySessionResponse = Shapes::StructureShape.new(name: 'VerifySessionResponse')
    VerifySessionResponseIdentityString = Shapes::StringShape.new(name: 'VerifySessionResponseIdentityString')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AccessTokenSummaries.member = Shapes::ShapeRef.new(shape: AccessTokenSummary)

    AccessTokenSummary.add_member(:id, Shapes::ShapeRef.new(shape: AccessTokenId, required: true, location_name: "id"))
    AccessTokenSummary.add_member(:name, Shapes::ShapeRef.new(shape: AccessTokenName, required: true, location_name: "name"))
    AccessTokenSummary.add_member(:expires_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "expiresTime"))
    AccessTokenSummary.struct_class = Types::AccessTokenSummary

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ConflictException.struct_class = Types::ConflictException

    CreateAccessTokenRequest.add_member(:name, Shapes::ShapeRef.new(shape: AccessTokenName, required: true, location_name: "name"))
    CreateAccessTokenRequest.add_member(:expires_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "expiresTime"))
    CreateAccessTokenRequest.struct_class = Types::CreateAccessTokenRequest

    CreateAccessTokenResponse.add_member(:secret, Shapes::ShapeRef.new(shape: AccessTokenSecret, required: true, location_name: "secret"))
    CreateAccessTokenResponse.add_member(:name, Shapes::ShapeRef.new(shape: AccessTokenName, required: true, location_name: "name"))
    CreateAccessTokenResponse.add_member(:expires_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "expiresTime"))
    CreateAccessTokenResponse.add_member(:access_token_id, Shapes::ShapeRef.new(shape: AccessTokenId, required: true, location_name: "accessTokenId"))
    CreateAccessTokenResponse.struct_class = Types::CreateAccessTokenResponse

    CreateDevEnvironmentRequest.add_member(:space_name, Shapes::ShapeRef.new(shape: NameString, required: true, location: "uri", location_name: "spaceName"))
    CreateDevEnvironmentRequest.add_member(:project_name, Shapes::ShapeRef.new(shape: NameString, required: true, location: "uri", location_name: "projectName"))
    CreateDevEnvironmentRequest.add_member(:repositories, Shapes::ShapeRef.new(shape: RepositoriesInput, location_name: "repositories"))
    CreateDevEnvironmentRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken"))
    CreateDevEnvironmentRequest.add_member(:alias, Shapes::ShapeRef.new(shape: CreateDevEnvironmentRequestAliasString, location_name: "alias"))
    CreateDevEnvironmentRequest.add_member(:ides, Shapes::ShapeRef.new(shape: IdeConfigurationList, location_name: "ides"))
    CreateDevEnvironmentRequest.add_member(:instance_type, Shapes::ShapeRef.new(shape: InstanceType, required: true, location_name: "instanceType"))
    CreateDevEnvironmentRequest.add_member(:inactivity_timeout_minutes, Shapes::ShapeRef.new(shape: InactivityTimeoutMinutes, location_name: "inactivityTimeoutMinutes"))
    CreateDevEnvironmentRequest.add_member(:persistent_storage, Shapes::ShapeRef.new(shape: PersistentStorageConfiguration, required: true, location_name: "persistentStorage"))
    CreateDevEnvironmentRequest.struct_class = Types::CreateDevEnvironmentRequest

    CreateDevEnvironmentResponse.add_member(:space_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "spaceName"))
    CreateDevEnvironmentResponse.add_member(:project_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "projectName"))
    CreateDevEnvironmentResponse.add_member(:id, Shapes::ShapeRef.new(shape: Uuid, required: true, location_name: "id"))
    CreateDevEnvironmentResponse.struct_class = Types::CreateDevEnvironmentResponse

    CreateProjectRequest.add_member(:space_name, Shapes::ShapeRef.new(shape: NameString, required: true, location: "uri", location_name: "spaceName"))
    CreateProjectRequest.add_member(:display_name, Shapes::ShapeRef.new(shape: ProjectDisplayName, required: true, location_name: "displayName"))
    CreateProjectRequest.add_member(:description, Shapes::ShapeRef.new(shape: ProjectDescription, location_name: "description"))
    CreateProjectRequest.struct_class = Types::CreateProjectRequest

    CreateProjectResponse.add_member(:space_name, Shapes::ShapeRef.new(shape: NameString, location_name: "spaceName"))
    CreateProjectResponse.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "name"))
    CreateProjectResponse.add_member(:display_name, Shapes::ShapeRef.new(shape: String, location_name: "displayName"))
    CreateProjectResponse.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    CreateProjectResponse.struct_class = Types::CreateProjectResponse

    CreateSourceRepositoryBranchRequest.add_member(:space_name, Shapes::ShapeRef.new(shape: NameString, required: true, location: "uri", location_name: "spaceName"))
    CreateSourceRepositoryBranchRequest.add_member(:project_name, Shapes::ShapeRef.new(shape: NameString, required: true, location: "uri", location_name: "projectName"))
    CreateSourceRepositoryBranchRequest.add_member(:source_repository_name, Shapes::ShapeRef.new(shape: SourceRepositoryNameString, required: true, location: "uri", location_name: "sourceRepositoryName"))
    CreateSourceRepositoryBranchRequest.add_member(:name, Shapes::ShapeRef.new(shape: SourceRepositoryBranchString, required: true, location: "uri", location_name: "name"))
    CreateSourceRepositoryBranchRequest.add_member(:head_commit_id, Shapes::ShapeRef.new(shape: String, location_name: "headCommitId"))
    CreateSourceRepositoryBranchRequest.struct_class = Types::CreateSourceRepositoryBranchRequest

    CreateSourceRepositoryBranchResponse.add_member(:ref, Shapes::ShapeRef.new(shape: SourceRepositoryBranchRefString, location_name: "ref"))
    CreateSourceRepositoryBranchResponse.add_member(:name, Shapes::ShapeRef.new(shape: SourceRepositoryBranchString, location_name: "name"))
    CreateSourceRepositoryBranchResponse.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "lastUpdatedTime"))
    CreateSourceRepositoryBranchResponse.add_member(:head_commit_id, Shapes::ShapeRef.new(shape: String, location_name: "headCommitId"))
    CreateSourceRepositoryBranchResponse.struct_class = Types::CreateSourceRepositoryBranchResponse

    DeleteAccessTokenRequest.add_member(:id, Shapes::ShapeRef.new(shape: AccessTokenId, required: true, location: "uri", location_name: "id"))
    DeleteAccessTokenRequest.struct_class = Types::DeleteAccessTokenRequest

    DeleteAccessTokenResponse.struct_class = Types::DeleteAccessTokenResponse

    DeleteDevEnvironmentRequest.add_member(:space_name, Shapes::ShapeRef.new(shape: NameString, required: true, location: "uri", location_name: "spaceName"))
    DeleteDevEnvironmentRequest.add_member(:project_name, Shapes::ShapeRef.new(shape: NameString, required: true, location: "uri", location_name: "projectName"))
    DeleteDevEnvironmentRequest.add_member(:id, Shapes::ShapeRef.new(shape: Uuid, required: true, location: "uri", location_name: "id"))
    DeleteDevEnvironmentRequest.struct_class = Types::DeleteDevEnvironmentRequest

    DeleteDevEnvironmentResponse.add_member(:space_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "spaceName"))
    DeleteDevEnvironmentResponse.add_member(:project_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "projectName"))
    DeleteDevEnvironmentResponse.add_member(:id, Shapes::ShapeRef.new(shape: Uuid, required: true, location_name: "id"))
    DeleteDevEnvironmentResponse.struct_class = Types::DeleteDevEnvironmentResponse

    DevEnvironmentAccessDetails.add_member(:stream_url, Shapes::ShapeRef.new(shape: SensitiveString, required: true, location_name: "streamUrl"))
    DevEnvironmentAccessDetails.add_member(:token_value, Shapes::ShapeRef.new(shape: SensitiveString, required: true, location_name: "tokenValue"))
    DevEnvironmentAccessDetails.struct_class = Types::DevEnvironmentAccessDetails

    DevEnvironmentRepositorySummaries.member = Shapes::ShapeRef.new(shape: DevEnvironmentRepositorySummary)

    DevEnvironmentRepositorySummary.add_member(:repository_name, Shapes::ShapeRef.new(shape: SourceRepositoryNameString, required: true, location_name: "repositoryName"))
    DevEnvironmentRepositorySummary.add_member(:branch_name, Shapes::ShapeRef.new(shape: SourceRepositoryBranchString, location_name: "branchName"))
    DevEnvironmentRepositorySummary.struct_class = Types::DevEnvironmentRepositorySummary

    DevEnvironmentSessionConfiguration.add_member(:session_type, Shapes::ShapeRef.new(shape: DevEnvironmentSessionType, required: true, location_name: "sessionType"))
    DevEnvironmentSessionConfiguration.add_member(:execute_command_session_configuration, Shapes::ShapeRef.new(shape: ExecuteCommandSessionConfiguration, location_name: "executeCommandSessionConfiguration"))
    DevEnvironmentSessionConfiguration.struct_class = Types::DevEnvironmentSessionConfiguration

    DevEnvironmentSessionSummary.add_member(:space_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "spaceName"))
    DevEnvironmentSessionSummary.add_member(:project_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "projectName"))
    DevEnvironmentSessionSummary.add_member(:dev_environment_id, Shapes::ShapeRef.new(shape: Uuid, required: true, location_name: "devEnvironmentId"))
    DevEnvironmentSessionSummary.add_member(:started_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "startedTime"))
    DevEnvironmentSessionSummary.add_member(:id, Shapes::ShapeRef.new(shape: DevEnvironmentSessionSummaryIdString, required: true, location_name: "id"))
    DevEnvironmentSessionSummary.struct_class = Types::DevEnvironmentSessionSummary

    DevEnvironmentSessionsSummaryList.member = Shapes::ShapeRef.new(shape: DevEnvironmentSessionSummary)

    DevEnvironmentSummary.add_member(:space_name, Shapes::ShapeRef.new(shape: NameString, location_name: "spaceName"))
    DevEnvironmentSummary.add_member(:project_name, Shapes::ShapeRef.new(shape: NameString, location_name: "projectName"))
    DevEnvironmentSummary.add_member(:id, Shapes::ShapeRef.new(shape: Uuid, required: true, location_name: "id"))
    DevEnvironmentSummary.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "lastUpdatedTime"))
    DevEnvironmentSummary.add_member(:creator_id, Shapes::ShapeRef.new(shape: DevEnvironmentSummaryCreatorIdString, required: true, location_name: "creatorId"))
    DevEnvironmentSummary.add_member(:status, Shapes::ShapeRef.new(shape: DevEnvironmentStatus, required: true, location_name: "status"))
    DevEnvironmentSummary.add_member(:status_reason, Shapes::ShapeRef.new(shape: StatusReason, location_name: "statusReason"))
    DevEnvironmentSummary.add_member(:repositories, Shapes::ShapeRef.new(shape: DevEnvironmentRepositorySummaries, required: true, location_name: "repositories"))
    DevEnvironmentSummary.add_member(:alias, Shapes::ShapeRef.new(shape: DevEnvironmentSummaryAliasString, location_name: "alias"))
    DevEnvironmentSummary.add_member(:ides, Shapes::ShapeRef.new(shape: Ides, location_name: "ides"))
    DevEnvironmentSummary.add_member(:instance_type, Shapes::ShapeRef.new(shape: InstanceType, required: true, location_name: "instanceType"))
    DevEnvironmentSummary.add_member(:inactivity_timeout_minutes, Shapes::ShapeRef.new(shape: InactivityTimeoutMinutes, required: true, location_name: "inactivityTimeoutMinutes"))
    DevEnvironmentSummary.add_member(:persistent_storage, Shapes::ShapeRef.new(shape: PersistentStorage, required: true, location_name: "persistentStorage"))
    DevEnvironmentSummary.struct_class = Types::DevEnvironmentSummary

    DevEnvironmentSummaryList.member = Shapes::ShapeRef.new(shape: DevEnvironmentSummary)

    EmailAddress.add_member(:email, Shapes::ShapeRef.new(shape: String, location_name: "email"))
    EmailAddress.add_member(:verified, Shapes::ShapeRef.new(shape: Boolean, location_name: "verified"))
    EmailAddress.struct_class = Types::EmailAddress

    EventLogEntries.member = Shapes::ShapeRef.new(shape: EventLogEntry)

    EventLogEntry.add_member(:id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "id"))
    EventLogEntry.add_member(:event_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "eventName"))
    EventLogEntry.add_member(:event_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "eventType"))
    EventLogEntry.add_member(:event_category, Shapes::ShapeRef.new(shape: String, required: true, location_name: "eventCategory"))
    EventLogEntry.add_member(:event_source, Shapes::ShapeRef.new(shape: String, required: true, location_name: "eventSource"))
    EventLogEntry.add_member(:event_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "eventTime"))
    EventLogEntry.add_member(:operation_type, Shapes::ShapeRef.new(shape: OperationType, required: true, location_name: "operationType"))
    EventLogEntry.add_member(:user_identity, Shapes::ShapeRef.new(shape: UserIdentity, required: true, location_name: "userIdentity"))
    EventLogEntry.add_member(:project_information, Shapes::ShapeRef.new(shape: ProjectInformation, location_name: "projectInformation"))
    EventLogEntry.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "requestId"))
    EventLogEntry.add_member(:request_payload, Shapes::ShapeRef.new(shape: EventPayload, location_name: "requestPayload"))
    EventLogEntry.add_member(:response_payload, Shapes::ShapeRef.new(shape: EventPayload, location_name: "responsePayload"))
    EventLogEntry.add_member(:error_code, Shapes::ShapeRef.new(shape: String, location_name: "errorCode"))
    EventLogEntry.add_member(:source_ip_address, Shapes::ShapeRef.new(shape: String, location_name: "sourceIpAddress"))
    EventLogEntry.add_member(:user_agent, Shapes::ShapeRef.new(shape: String, location_name: "userAgent"))
    EventLogEntry.struct_class = Types::EventLogEntry

    EventPayload.add_member(:content_type, Shapes::ShapeRef.new(shape: String, location_name: "contentType"))
    EventPayload.add_member(:data, Shapes::ShapeRef.new(shape: String, location_name: "data"))
    EventPayload.struct_class = Types::EventPayload

    ExecuteCommandSessionConfiguration.add_member(:command, Shapes::ShapeRef.new(shape: ExecuteCommandSessionConfigurationCommandString, required: true, location_name: "command"))
    ExecuteCommandSessionConfiguration.add_member(:arguments, Shapes::ShapeRef.new(shape: ExecuteCommandSessionConfigurationArguments, location_name: "arguments"))
    ExecuteCommandSessionConfiguration.struct_class = Types::ExecuteCommandSessionConfiguration

    ExecuteCommandSessionConfigurationArguments.member = Shapes::ShapeRef.new(shape: ExecuteCommandSessionConfigurationArgumentsMemberString)

    Filter.add_member(:key, Shapes::ShapeRef.new(shape: String, required: true, location_name: "key"))
    Filter.add_member(:values, Shapes::ShapeRef.new(shape: StringList, required: true, location_name: "values"))
    Filter.add_member(:comparison_operator, Shapes::ShapeRef.new(shape: String, location_name: "comparisonOperator"))
    Filter.struct_class = Types::Filter

    Filters.member = Shapes::ShapeRef.new(shape: Filter)

    GetDevEnvironmentRequest.add_member(:space_name, Shapes::ShapeRef.new(shape: NameString, required: true, location: "uri", location_name: "spaceName"))
    GetDevEnvironmentRequest.add_member(:project_name, Shapes::ShapeRef.new(shape: NameString, required: true, location: "uri", location_name: "projectName"))
    GetDevEnvironmentRequest.add_member(:id, Shapes::ShapeRef.new(shape: Uuid, required: true, location: "uri", location_name: "id"))
    GetDevEnvironmentRequest.struct_class = Types::GetDevEnvironmentRequest

    GetDevEnvironmentResponse.add_member(:space_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "spaceName"))
    GetDevEnvironmentResponse.add_member(:project_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "projectName"))
    GetDevEnvironmentResponse.add_member(:id, Shapes::ShapeRef.new(shape: Uuid, required: true, location_name: "id"))
    GetDevEnvironmentResponse.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "lastUpdatedTime"))
    GetDevEnvironmentResponse.add_member(:creator_id, Shapes::ShapeRef.new(shape: GetDevEnvironmentResponseCreatorIdString, required: true, location_name: "creatorId"))
    GetDevEnvironmentResponse.add_member(:status, Shapes::ShapeRef.new(shape: DevEnvironmentStatus, required: true, location_name: "status"))
    GetDevEnvironmentResponse.add_member(:status_reason, Shapes::ShapeRef.new(shape: StatusReason, location_name: "statusReason"))
    GetDevEnvironmentResponse.add_member(:repositories, Shapes::ShapeRef.new(shape: DevEnvironmentRepositorySummaries, required: true, location_name: "repositories"))
    GetDevEnvironmentResponse.add_member(:alias, Shapes::ShapeRef.new(shape: GetDevEnvironmentResponseAliasString, location_name: "alias"))
    GetDevEnvironmentResponse.add_member(:ides, Shapes::ShapeRef.new(shape: Ides, location_name: "ides"))
    GetDevEnvironmentResponse.add_member(:instance_type, Shapes::ShapeRef.new(shape: InstanceType, required: true, location_name: "instanceType"))
    GetDevEnvironmentResponse.add_member(:inactivity_timeout_minutes, Shapes::ShapeRef.new(shape: InactivityTimeoutMinutes, required: true, location_name: "inactivityTimeoutMinutes"))
    GetDevEnvironmentResponse.add_member(:persistent_storage, Shapes::ShapeRef.new(shape: PersistentStorage, required: true, location_name: "persistentStorage"))
    GetDevEnvironmentResponse.struct_class = Types::GetDevEnvironmentResponse

    GetProjectRequest.add_member(:space_name, Shapes::ShapeRef.new(shape: NameString, required: true, location: "uri", location_name: "spaceName"))
    GetProjectRequest.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location: "uri", location_name: "name"))
    GetProjectRequest.struct_class = Types::GetProjectRequest

    GetProjectResponse.add_member(:space_name, Shapes::ShapeRef.new(shape: NameString, location_name: "spaceName"))
    GetProjectResponse.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    GetProjectResponse.add_member(:display_name, Shapes::ShapeRef.new(shape: String, location_name: "displayName"))
    GetProjectResponse.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    GetProjectResponse.struct_class = Types::GetProjectResponse

    GetSourceRepositoryCloneUrlsRequest.add_member(:space_name, Shapes::ShapeRef.new(shape: NameString, required: true, location: "uri", location_name: "spaceName"))
    GetSourceRepositoryCloneUrlsRequest.add_member(:project_name, Shapes::ShapeRef.new(shape: NameString, required: true, location: "uri", location_name: "projectName"))
    GetSourceRepositoryCloneUrlsRequest.add_member(:source_repository_name, Shapes::ShapeRef.new(shape: SourceRepositoryNameString, required: true, location: "uri", location_name: "sourceRepositoryName"))
    GetSourceRepositoryCloneUrlsRequest.struct_class = Types::GetSourceRepositoryCloneUrlsRequest

    GetSourceRepositoryCloneUrlsResponse.add_member(:https, Shapes::ShapeRef.new(shape: String, required: true, location_name: "https"))
    GetSourceRepositoryCloneUrlsResponse.struct_class = Types::GetSourceRepositoryCloneUrlsResponse

    GetSpaceRequest.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location: "uri", location_name: "name"))
    GetSpaceRequest.struct_class = Types::GetSpaceRequest

    GetSpaceResponse.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "name"))
    GetSpaceResponse.add_member(:region_name, Shapes::ShapeRef.new(shape: RegionString, required: true, location_name: "regionName"))
    GetSpaceResponse.add_member(:display_name, Shapes::ShapeRef.new(shape: String, location_name: "displayName"))
    GetSpaceResponse.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    GetSpaceResponse.struct_class = Types::GetSpaceResponse

    GetSubscriptionRequest.add_member(:space_name, Shapes::ShapeRef.new(shape: NameString, required: true, location: "uri", location_name: "spaceName"))
    GetSubscriptionRequest.struct_class = Types::GetSubscriptionRequest

    GetSubscriptionResponse.add_member(:subscription_type, Shapes::ShapeRef.new(shape: String, location_name: "subscriptionType"))
    GetSubscriptionResponse.add_member(:aws_account_name, Shapes::ShapeRef.new(shape: NameString, location_name: "awsAccountName"))
    GetSubscriptionResponse.struct_class = Types::GetSubscriptionResponse

    GetUserDetailsRequest.add_member(:id, Shapes::ShapeRef.new(shape: GetUserDetailsRequestIdString, location: "querystring", location_name: "id"))
    GetUserDetailsRequest.add_member(:user_name, Shapes::ShapeRef.new(shape: GetUserDetailsRequestUserNameString, location: "querystring", location_name: "userName"))
    GetUserDetailsRequest.struct_class = Types::GetUserDetailsRequest

    GetUserDetailsResponse.add_member(:user_id, Shapes::ShapeRef.new(shape: String, location_name: "userId"))
    GetUserDetailsResponse.add_member(:user_name, Shapes::ShapeRef.new(shape: String, location_name: "userName"))
    GetUserDetailsResponse.add_member(:display_name, Shapes::ShapeRef.new(shape: String, location_name: "displayName"))
    GetUserDetailsResponse.add_member(:primary_email, Shapes::ShapeRef.new(shape: EmailAddress, location_name: "primaryEmail"))
    GetUserDetailsResponse.add_member(:version, Shapes::ShapeRef.new(shape: String, location_name: "version"))
    GetUserDetailsResponse.struct_class = Types::GetUserDetailsResponse

    Ide.add_member(:runtime, Shapes::ShapeRef.new(shape: IdeRuntimeString, location_name: "runtime"))
    Ide.add_member(:name, Shapes::ShapeRef.new(shape: IdeNameString, location_name: "name"))
    Ide.struct_class = Types::Ide

    IdeConfiguration.add_member(:runtime, Shapes::ShapeRef.new(shape: IdeConfigurationRuntimeString, location_name: "runtime"))
    IdeConfiguration.add_member(:name, Shapes::ShapeRef.new(shape: IdeConfigurationNameString, location_name: "name"))
    IdeConfiguration.struct_class = Types::IdeConfiguration

    IdeConfigurationList.member = Shapes::ShapeRef.new(shape: IdeConfiguration)

    Ides.member = Shapes::ShapeRef.new(shape: Ide)

    ListAccessTokensRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListAccessTokensRequestMaxResultsInteger, location_name: "maxResults"))
    ListAccessTokensRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: ListAccessTokensRequestNextTokenString, location_name: "nextToken"))
    ListAccessTokensRequest.struct_class = Types::ListAccessTokensRequest

    ListAccessTokensResponse.add_member(:items, Shapes::ShapeRef.new(shape: AccessTokenSummaries, required: true, location_name: "items"))
    ListAccessTokensResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListAccessTokensResponse.struct_class = Types::ListAccessTokensResponse

    ListDevEnvironmentSessionsRequest.add_member(:space_name, Shapes::ShapeRef.new(shape: NameString, required: true, location: "uri", location_name: "spaceName"))
    ListDevEnvironmentSessionsRequest.add_member(:project_name, Shapes::ShapeRef.new(shape: NameString, required: true, location: "uri", location_name: "projectName"))
    ListDevEnvironmentSessionsRequest.add_member(:dev_environment_id, Shapes::ShapeRef.new(shape: Uuid, required: true, location: "uri", location_name: "devEnvironmentId"))
    ListDevEnvironmentSessionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: ListDevEnvironmentSessionsRequestNextTokenString, location_name: "nextToken"))
    ListDevEnvironmentSessionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListDevEnvironmentSessionsRequestMaxResultsInteger, location_name: "maxResults"))
    ListDevEnvironmentSessionsRequest.struct_class = Types::ListDevEnvironmentSessionsRequest

    ListDevEnvironmentSessionsResponse.add_member(:items, Shapes::ShapeRef.new(shape: DevEnvironmentSessionsSummaryList, required: true, location_name: "items"))
    ListDevEnvironmentSessionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListDevEnvironmentSessionsResponse.struct_class = Types::ListDevEnvironmentSessionsResponse

    ListDevEnvironmentsRequest.add_member(:space_name, Shapes::ShapeRef.new(shape: NameString, required: true, location: "uri", location_name: "spaceName"))
    ListDevEnvironmentsRequest.add_member(:project_name, Shapes::ShapeRef.new(shape: NameString, required: true, location: "uri", location_name: "projectName"))
    ListDevEnvironmentsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: Filters, location_name: "filters"))
    ListDevEnvironmentsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: ListDevEnvironmentsRequestNextTokenString, location_name: "nextToken"))
    ListDevEnvironmentsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListDevEnvironmentsRequestMaxResultsInteger, location_name: "maxResults"))
    ListDevEnvironmentsRequest.struct_class = Types::ListDevEnvironmentsRequest

    ListDevEnvironmentsResponse.add_member(:items, Shapes::ShapeRef.new(shape: DevEnvironmentSummaryList, required: true, location_name: "items"))
    ListDevEnvironmentsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListDevEnvironmentsResponse.struct_class = Types::ListDevEnvironmentsResponse

    ListEventLogsRequest.add_member(:space_name, Shapes::ShapeRef.new(shape: NameString, required: true, location: "uri", location_name: "spaceName"))
    ListEventLogsRequest.add_member(:start_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "startTime"))
    ListEventLogsRequest.add_member(:end_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "endTime"))
    ListEventLogsRequest.add_member(:event_name, Shapes::ShapeRef.new(shape: String, location_name: "eventName"))
    ListEventLogsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: ListEventLogsRequestNextTokenString, location_name: "nextToken"))
    ListEventLogsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListEventLogsRequestMaxResultsInteger, location_name: "maxResults"))
    ListEventLogsRequest.struct_class = Types::ListEventLogsRequest

    ListEventLogsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListEventLogsResponse.add_member(:items, Shapes::ShapeRef.new(shape: EventLogEntries, required: true, location_name: "items"))
    ListEventLogsResponse.struct_class = Types::ListEventLogsResponse

    ListProjectsRequest.add_member(:space_name, Shapes::ShapeRef.new(shape: NameString, required: true, location: "uri", location_name: "spaceName"))
    ListProjectsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: ListProjectsRequestNextTokenString, location_name: "nextToken"))
    ListProjectsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListProjectsRequestMaxResultsInteger, location_name: "maxResults"))
    ListProjectsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: ProjectListFilters, location_name: "filters"))
    ListProjectsRequest.struct_class = Types::ListProjectsRequest

    ListProjectsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListProjectsResponse.add_member(:items, Shapes::ShapeRef.new(shape: ProjectSummaries, location_name: "items"))
    ListProjectsResponse.struct_class = Types::ListProjectsResponse

    ListSourceRepositoriesItem.add_member(:id, Shapes::ShapeRef.new(shape: SourceRepositoryIdString, required: true, location_name: "id"))
    ListSourceRepositoriesItem.add_member(:name, Shapes::ShapeRef.new(shape: SourceRepositoryNameString, required: true, location_name: "name"))
    ListSourceRepositoriesItem.add_member(:description, Shapes::ShapeRef.new(shape: SourceRepositoryDescriptionString, location_name: "description"))
    ListSourceRepositoriesItem.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "lastUpdatedTime"))
    ListSourceRepositoriesItem.add_member(:created_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdTime"))
    ListSourceRepositoriesItem.struct_class = Types::ListSourceRepositoriesItem

    ListSourceRepositoriesItems.member = Shapes::ShapeRef.new(shape: ListSourceRepositoriesItem)

    ListSourceRepositoriesRequest.add_member(:space_name, Shapes::ShapeRef.new(shape: NameString, required: true, location: "uri", location_name: "spaceName"))
    ListSourceRepositoriesRequest.add_member(:project_name, Shapes::ShapeRef.new(shape: NameString, required: true, location: "uri", location_name: "projectName"))
    ListSourceRepositoriesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: ListSourceRepositoriesRequestNextTokenString, location_name: "nextToken"))
    ListSourceRepositoriesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListSourceRepositoriesRequestMaxResultsInteger, location_name: "maxResults"))
    ListSourceRepositoriesRequest.struct_class = Types::ListSourceRepositoriesRequest

    ListSourceRepositoriesResponse.add_member(:items, Shapes::ShapeRef.new(shape: ListSourceRepositoriesItems, location_name: "items"))
    ListSourceRepositoriesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListSourceRepositoriesResponse.struct_class = Types::ListSourceRepositoriesResponse

    ListSourceRepositoryBranchesItem.add_member(:ref, Shapes::ShapeRef.new(shape: SourceRepositoryBranchRefString, location_name: "ref"))
    ListSourceRepositoryBranchesItem.add_member(:name, Shapes::ShapeRef.new(shape: SourceRepositoryBranchString, location_name: "name"))
    ListSourceRepositoryBranchesItem.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "lastUpdatedTime"))
    ListSourceRepositoryBranchesItem.add_member(:head_commit_id, Shapes::ShapeRef.new(shape: String, location_name: "headCommitId"))
    ListSourceRepositoryBranchesItem.struct_class = Types::ListSourceRepositoryBranchesItem

    ListSourceRepositoryBranchesItems.member = Shapes::ShapeRef.new(shape: ListSourceRepositoryBranchesItem)

    ListSourceRepositoryBranchesRequest.add_member(:space_name, Shapes::ShapeRef.new(shape: NameString, required: true, location: "uri", location_name: "spaceName"))
    ListSourceRepositoryBranchesRequest.add_member(:project_name, Shapes::ShapeRef.new(shape: NameString, required: true, location: "uri", location_name: "projectName"))
    ListSourceRepositoryBranchesRequest.add_member(:source_repository_name, Shapes::ShapeRef.new(shape: SourceRepositoryNameString, required: true, location: "uri", location_name: "sourceRepositoryName"))
    ListSourceRepositoryBranchesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: ListSourceRepositoryBranchesRequestNextTokenString, location_name: "nextToken"))
    ListSourceRepositoryBranchesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListSourceRepositoryBranchesRequestMaxResultsInteger, location_name: "maxResults"))
    ListSourceRepositoryBranchesRequest.struct_class = Types::ListSourceRepositoryBranchesRequest

    ListSourceRepositoryBranchesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListSourceRepositoryBranchesResponse.add_member(:items, Shapes::ShapeRef.new(shape: ListSourceRepositoryBranchesItems, required: true, location_name: "items"))
    ListSourceRepositoryBranchesResponse.struct_class = Types::ListSourceRepositoryBranchesResponse

    ListSpacesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: ListSpacesRequestNextTokenString, location_name: "nextToken"))
    ListSpacesRequest.struct_class = Types::ListSpacesRequest

    ListSpacesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListSpacesResponse.add_member(:items, Shapes::ShapeRef.new(shape: SpaceSummaries, location_name: "items"))
    ListSpacesResponse.struct_class = Types::ListSpacesResponse

    PersistentStorage.add_member(:size_in_gi_b, Shapes::ShapeRef.new(shape: PersistentStorageSizeInGiBInteger, required: true, location_name: "sizeInGiB"))
    PersistentStorage.struct_class = Types::PersistentStorage

    PersistentStorageConfiguration.add_member(:size_in_gi_b, Shapes::ShapeRef.new(shape: PersistentStorageConfigurationSizeInGiBInteger, required: true, location_name: "sizeInGiB"))
    PersistentStorageConfiguration.struct_class = Types::PersistentStorageConfiguration

    ProjectInformation.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    ProjectInformation.add_member(:project_id, Shapes::ShapeRef.new(shape: String, location_name: "projectId"))
    ProjectInformation.struct_class = Types::ProjectInformation

    ProjectListFilter.add_member(:key, Shapes::ShapeRef.new(shape: FilterKey, required: true, location_name: "key"))
    ProjectListFilter.add_member(:values, Shapes::ShapeRef.new(shape: StringList, required: true, location_name: "values"))
    ProjectListFilter.add_member(:comparison_operator, Shapes::ShapeRef.new(shape: ComparisonOperator, location_name: "comparisonOperator"))
    ProjectListFilter.struct_class = Types::ProjectListFilter

    ProjectListFilters.member = Shapes::ShapeRef.new(shape: ProjectListFilter)

    ProjectSummaries.member = Shapes::ShapeRef.new(shape: ProjectSummary)

    ProjectSummary.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    ProjectSummary.add_member(:display_name, Shapes::ShapeRef.new(shape: String, location_name: "displayName"))
    ProjectSummary.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    ProjectSummary.struct_class = Types::ProjectSummary

    RepositoriesInput.member = Shapes::ShapeRef.new(shape: RepositoryInput)

    RepositoryInput.add_member(:repository_name, Shapes::ShapeRef.new(shape: SourceRepositoryNameString, required: true, location_name: "repositoryName"))
    RepositoryInput.add_member(:branch_name, Shapes::ShapeRef.new(shape: SourceRepositoryBranchString, location_name: "branchName"))
    RepositoryInput.struct_class = Types::RepositoryInput

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    SpaceSummaries.member = Shapes::ShapeRef.new(shape: SpaceSummary)

    SpaceSummary.add_member(:name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "name"))
    SpaceSummary.add_member(:region_name, Shapes::ShapeRef.new(shape: RegionString, required: true, location_name: "regionName"))
    SpaceSummary.add_member(:display_name, Shapes::ShapeRef.new(shape: String, location_name: "displayName"))
    SpaceSummary.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    SpaceSummary.struct_class = Types::SpaceSummary

    StartDevEnvironmentRequest.add_member(:space_name, Shapes::ShapeRef.new(shape: NameString, required: true, location: "uri", location_name: "spaceName"))
    StartDevEnvironmentRequest.add_member(:project_name, Shapes::ShapeRef.new(shape: NameString, required: true, location: "uri", location_name: "projectName"))
    StartDevEnvironmentRequest.add_member(:id, Shapes::ShapeRef.new(shape: Uuid, required: true, location: "uri", location_name: "id"))
    StartDevEnvironmentRequest.add_member(:ides, Shapes::ShapeRef.new(shape: IdeConfigurationList, location_name: "ides"))
    StartDevEnvironmentRequest.add_member(:instance_type, Shapes::ShapeRef.new(shape: InstanceType, location_name: "instanceType"))
    StartDevEnvironmentRequest.add_member(:inactivity_timeout_minutes, Shapes::ShapeRef.new(shape: InactivityTimeoutMinutes, location_name: "inactivityTimeoutMinutes"))
    StartDevEnvironmentRequest.struct_class = Types::StartDevEnvironmentRequest

    StartDevEnvironmentResponse.add_member(:space_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "spaceName"))
    StartDevEnvironmentResponse.add_member(:project_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "projectName"))
    StartDevEnvironmentResponse.add_member(:id, Shapes::ShapeRef.new(shape: Uuid, required: true, location_name: "id"))
    StartDevEnvironmentResponse.add_member(:status, Shapes::ShapeRef.new(shape: DevEnvironmentStatus, required: true, location_name: "status"))
    StartDevEnvironmentResponse.struct_class = Types::StartDevEnvironmentResponse

    StartDevEnvironmentSessionRequest.add_member(:space_name, Shapes::ShapeRef.new(shape: NameString, required: true, location: "uri", location_name: "spaceName"))
    StartDevEnvironmentSessionRequest.add_member(:project_name, Shapes::ShapeRef.new(shape: NameString, required: true, location: "uri", location_name: "projectName"))
    StartDevEnvironmentSessionRequest.add_member(:id, Shapes::ShapeRef.new(shape: Uuid, required: true, location: "uri", location_name: "id"))
    StartDevEnvironmentSessionRequest.add_member(:session_configuration, Shapes::ShapeRef.new(shape: DevEnvironmentSessionConfiguration, required: true, location_name: "sessionConfiguration"))
    StartDevEnvironmentSessionRequest.struct_class = Types::StartDevEnvironmentSessionRequest

    StartDevEnvironmentSessionResponse.add_member(:access_details, Shapes::ShapeRef.new(shape: DevEnvironmentAccessDetails, required: true, location_name: "accessDetails"))
    StartDevEnvironmentSessionResponse.add_member(:session_id, Shapes::ShapeRef.new(shape: StartDevEnvironmentSessionResponseSessionIdString, location_name: "sessionId"))
    StartDevEnvironmentSessionResponse.add_member(:space_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "spaceName"))
    StartDevEnvironmentSessionResponse.add_member(:project_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "projectName"))
    StartDevEnvironmentSessionResponse.add_member(:id, Shapes::ShapeRef.new(shape: Uuid, required: true, location_name: "id"))
    StartDevEnvironmentSessionResponse.struct_class = Types::StartDevEnvironmentSessionResponse

    StopDevEnvironmentRequest.add_member(:space_name, Shapes::ShapeRef.new(shape: NameString, required: true, location: "uri", location_name: "spaceName"))
    StopDevEnvironmentRequest.add_member(:project_name, Shapes::ShapeRef.new(shape: NameString, required: true, location: "uri", location_name: "projectName"))
    StopDevEnvironmentRequest.add_member(:id, Shapes::ShapeRef.new(shape: Uuid, required: true, location: "uri", location_name: "id"))
    StopDevEnvironmentRequest.struct_class = Types::StopDevEnvironmentRequest

    StopDevEnvironmentResponse.add_member(:space_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "spaceName"))
    StopDevEnvironmentResponse.add_member(:project_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "projectName"))
    StopDevEnvironmentResponse.add_member(:id, Shapes::ShapeRef.new(shape: Uuid, required: true, location_name: "id"))
    StopDevEnvironmentResponse.add_member(:status, Shapes::ShapeRef.new(shape: DevEnvironmentStatus, required: true, location_name: "status"))
    StopDevEnvironmentResponse.struct_class = Types::StopDevEnvironmentResponse

    StopDevEnvironmentSessionRequest.add_member(:space_name, Shapes::ShapeRef.new(shape: NameString, required: true, location: "uri", location_name: "spaceName"))
    StopDevEnvironmentSessionRequest.add_member(:project_name, Shapes::ShapeRef.new(shape: NameString, required: true, location: "uri", location_name: "projectName"))
    StopDevEnvironmentSessionRequest.add_member(:id, Shapes::ShapeRef.new(shape: Uuid, required: true, location: "uri", location_name: "id"))
    StopDevEnvironmentSessionRequest.add_member(:session_id, Shapes::ShapeRef.new(shape: StopDevEnvironmentSessionRequestSessionIdString, required: true, location: "uri", location_name: "sessionId"))
    StopDevEnvironmentSessionRequest.struct_class = Types::StopDevEnvironmentSessionRequest

    StopDevEnvironmentSessionResponse.add_member(:space_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "spaceName"))
    StopDevEnvironmentSessionResponse.add_member(:project_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "projectName"))
    StopDevEnvironmentSessionResponse.add_member(:id, Shapes::ShapeRef.new(shape: Uuid, required: true, location_name: "id"))
    StopDevEnvironmentSessionResponse.add_member(:session_id, Shapes::ShapeRef.new(shape: StopDevEnvironmentSessionResponseSessionIdString, required: true, location_name: "sessionId"))
    StopDevEnvironmentSessionResponse.struct_class = Types::StopDevEnvironmentSessionResponse

    StringList.member = Shapes::ShapeRef.new(shape: String)

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UpdateDevEnvironmentRequest.add_member(:space_name, Shapes::ShapeRef.new(shape: NameString, required: true, location: "uri", location_name: "spaceName"))
    UpdateDevEnvironmentRequest.add_member(:project_name, Shapes::ShapeRef.new(shape: NameString, required: true, location: "uri", location_name: "projectName"))
    UpdateDevEnvironmentRequest.add_member(:id, Shapes::ShapeRef.new(shape: Uuid, required: true, location: "uri", location_name: "id"))
    UpdateDevEnvironmentRequest.add_member(:alias, Shapes::ShapeRef.new(shape: UpdateDevEnvironmentRequestAliasString, location_name: "alias"))
    UpdateDevEnvironmentRequest.add_member(:ides, Shapes::ShapeRef.new(shape: IdeConfigurationList, location_name: "ides"))
    UpdateDevEnvironmentRequest.add_member(:instance_type, Shapes::ShapeRef.new(shape: InstanceType, location_name: "instanceType"))
    UpdateDevEnvironmentRequest.add_member(:inactivity_timeout_minutes, Shapes::ShapeRef.new(shape: InactivityTimeoutMinutes, location_name: "inactivityTimeoutMinutes"))
    UpdateDevEnvironmentRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken"))
    UpdateDevEnvironmentRequest.struct_class = Types::UpdateDevEnvironmentRequest

    UpdateDevEnvironmentResponse.add_member(:id, Shapes::ShapeRef.new(shape: Uuid, required: true, location_name: "id"))
    UpdateDevEnvironmentResponse.add_member(:space_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "spaceName"))
    UpdateDevEnvironmentResponse.add_member(:project_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "projectName"))
    UpdateDevEnvironmentResponse.add_member(:alias, Shapes::ShapeRef.new(shape: UpdateDevEnvironmentResponseAliasString, location_name: "alias"))
    UpdateDevEnvironmentResponse.add_member(:ides, Shapes::ShapeRef.new(shape: IdeConfigurationList, location_name: "ides"))
    UpdateDevEnvironmentResponse.add_member(:instance_type, Shapes::ShapeRef.new(shape: InstanceType, location_name: "instanceType"))
    UpdateDevEnvironmentResponse.add_member(:inactivity_timeout_minutes, Shapes::ShapeRef.new(shape: InactivityTimeoutMinutes, location_name: "inactivityTimeoutMinutes"))
    UpdateDevEnvironmentResponse.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken"))
    UpdateDevEnvironmentResponse.struct_class = Types::UpdateDevEnvironmentResponse

    UserIdentity.add_member(:user_type, Shapes::ShapeRef.new(shape: UserType, required: true, location_name: "userType"))
    UserIdentity.add_member(:principal_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "principalId"))
    UserIdentity.add_member(:user_name, Shapes::ShapeRef.new(shape: String, location_name: "userName"))
    UserIdentity.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: String, location_name: "awsAccountId"))
    UserIdentity.struct_class = Types::UserIdentity

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationException.struct_class = Types::ValidationException

    VerifySessionResponse.add_member(:identity, Shapes::ShapeRef.new(shape: VerifySessionResponseIdentityString, location_name: "identity"))
    VerifySessionResponse.struct_class = Types::VerifySessionResponse


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2022-09-28"

      api.metadata = {
        "apiVersion" => "2022-09-28",
        "endpointPrefix" => "codecatalyst",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceFullName" => "Amazon CodeCatalyst",
        "serviceId" => "CodeCatalyst",
        "signatureVersion" => "bearer",
        "signingName" => "codecatalyst",
        "uid" => "codecatalyst-2022-09-28",
      }

      api.add_operation(:create_access_token, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAccessToken"
        o.http_method = "PUT"
        o.http_request_uri = "/v1/accessTokens"
        o.input = Shapes::ShapeRef.new(shape: CreateAccessTokenRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateAccessTokenResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:create_dev_environment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDevEnvironment"
        o.http_method = "PUT"
        o.http_request_uri = "/v1/spaces/{spaceName}/projects/{projectName}/devEnvironments"
        o.input = Shapes::ShapeRef.new(shape: CreateDevEnvironmentRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateDevEnvironmentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:create_project, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateProject"
        o.http_method = "PUT"
        o.http_request_uri = "/v1/spaces/{spaceName}/projects"
        o.input = Shapes::ShapeRef.new(shape: CreateProjectRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateProjectResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:create_source_repository_branch, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateSourceRepositoryBranch"
        o.http_method = "PUT"
        o.http_request_uri = "/v1/spaces/{spaceName}/projects/{projectName}/sourceRepositories/{sourceRepositoryName}/branches/{name}"
        o.input = Shapes::ShapeRef.new(shape: CreateSourceRepositoryBranchRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateSourceRepositoryBranchResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_access_token, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAccessToken"
        o.http_method = "DELETE"
        o.http_request_uri = "/v1/accessTokens/{id}"
        o.input = Shapes::ShapeRef.new(shape: DeleteAccessTokenRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteAccessTokenResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_dev_environment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDevEnvironment"
        o.http_method = "DELETE"
        o.http_request_uri = "/v1/spaces/{spaceName}/projects/{projectName}/devEnvironments/{id}"
        o.input = Shapes::ShapeRef.new(shape: DeleteDevEnvironmentRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteDevEnvironmentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_dev_environment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDevEnvironment"
        o.http_method = "GET"
        o.http_request_uri = "/v1/spaces/{spaceName}/projects/{projectName}/devEnvironments/{id}"
        o.input = Shapes::ShapeRef.new(shape: GetDevEnvironmentRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDevEnvironmentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_project, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetProject"
        o.http_method = "GET"
        o.http_request_uri = "/v1/spaces/{spaceName}/projects/{name}"
        o.input = Shapes::ShapeRef.new(shape: GetProjectRequest)
        o.output = Shapes::ShapeRef.new(shape: GetProjectResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_source_repository_clone_urls, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSourceRepositoryCloneUrls"
        o.http_method = "GET"
        o.http_request_uri = "/v1/spaces/{spaceName}/projects/{projectName}/sourceRepositories/{sourceRepositoryName}/cloneUrls"
        o.input = Shapes::ShapeRef.new(shape: GetSourceRepositoryCloneUrlsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetSourceRepositoryCloneUrlsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_space, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSpace"
        o.http_method = "GET"
        o.http_request_uri = "/v1/spaces/{name}"
        o.input = Shapes::ShapeRef.new(shape: GetSpaceRequest)
        o.output = Shapes::ShapeRef.new(shape: GetSpaceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_subscription, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSubscription"
        o.http_method = "GET"
        o.http_request_uri = "/v1/spaces/{spaceName}/subscription"
        o.input = Shapes::ShapeRef.new(shape: GetSubscriptionRequest)
        o.output = Shapes::ShapeRef.new(shape: GetSubscriptionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_user_details, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetUserDetails"
        o.http_method = "GET"
        o.http_request_uri = "/userDetails"
        o.input = Shapes::ShapeRef.new(shape: GetUserDetailsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetUserDetailsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:list_access_tokens, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAccessTokens"
        o.http_method = "POST"
        o.http_request_uri = "/v1/accessTokens"
        o.input = Shapes::ShapeRef.new(shape: ListAccessTokensRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAccessTokensResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_dev_environment_sessions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDevEnvironmentSessions"
        o.http_method = "POST"
        o.http_request_uri = "/v1/spaces/{spaceName}/projects/{projectName}/devEnvironments/{devEnvironmentId}/sessions"
        o.input = Shapes::ShapeRef.new(shape: ListDevEnvironmentSessionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDevEnvironmentSessionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_dev_environments, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDevEnvironments"
        o.http_method = "POST"
        o.http_request_uri = "/v1/spaces/{spaceName}/projects/{projectName}/devEnvironments"
        o.input = Shapes::ShapeRef.new(shape: ListDevEnvironmentsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDevEnvironmentsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_event_logs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListEventLogs"
        o.http_method = "POST"
        o.http_request_uri = "/v1/spaces/{spaceName}/eventLogs"
        o.input = Shapes::ShapeRef.new(shape: ListEventLogsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListEventLogsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_projects, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListProjects"
        o.http_method = "POST"
        o.http_request_uri = "/v1/spaces/{spaceName}/projects"
        o.input = Shapes::ShapeRef.new(shape: ListProjectsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListProjectsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_source_repositories, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSourceRepositories"
        o.http_method = "POST"
        o.http_request_uri = "/v1/spaces/{spaceName}/projects/{projectName}/sourceRepositories"
        o.input = Shapes::ShapeRef.new(shape: ListSourceRepositoriesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListSourceRepositoriesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_source_repository_branches, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSourceRepositoryBranches"
        o.http_method = "POST"
        o.http_request_uri = "/v1/spaces/{spaceName}/projects/{projectName}/sourceRepositories/{sourceRepositoryName}/branches"
        o.input = Shapes::ShapeRef.new(shape: ListSourceRepositoryBranchesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListSourceRepositoryBranchesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_spaces, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSpaces"
        o.http_method = "POST"
        o.http_request_uri = "/v1/spaces"
        o.input = Shapes::ShapeRef.new(shape: ListSpacesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListSpacesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:start_dev_environment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartDevEnvironment"
        o.http_method = "PUT"
        o.http_request_uri = "/v1/spaces/{spaceName}/projects/{projectName}/devEnvironments/{id}/start"
        o.input = Shapes::ShapeRef.new(shape: StartDevEnvironmentRequest)
        o.output = Shapes::ShapeRef.new(shape: StartDevEnvironmentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:start_dev_environment_session, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartDevEnvironmentSession"
        o.http_method = "PUT"
        o.http_request_uri = "/v1/spaces/{spaceName}/projects/{projectName}/devEnvironments/{id}/session"
        o.input = Shapes::ShapeRef.new(shape: StartDevEnvironmentSessionRequest)
        o.output = Shapes::ShapeRef.new(shape: StartDevEnvironmentSessionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:stop_dev_environment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopDevEnvironment"
        o.http_method = "PUT"
        o.http_request_uri = "/v1/spaces/{spaceName}/projects/{projectName}/devEnvironments/{id}/stop"
        o.input = Shapes::ShapeRef.new(shape: StopDevEnvironmentRequest)
        o.output = Shapes::ShapeRef.new(shape: StopDevEnvironmentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:stop_dev_environment_session, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopDevEnvironmentSession"
        o.http_method = "DELETE"
        o.http_request_uri = "/v1/spaces/{spaceName}/projects/{projectName}/devEnvironments/{id}/session/{sessionId}"
        o.input = Shapes::ShapeRef.new(shape: StopDevEnvironmentSessionRequest)
        o.output = Shapes::ShapeRef.new(shape: StopDevEnvironmentSessionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_dev_environment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateDevEnvironment"
        o.http_method = "PATCH"
        o.http_request_uri = "/v1/spaces/{spaceName}/projects/{projectName}/devEnvironments/{id}"
        o.input = Shapes::ShapeRef.new(shape: UpdateDevEnvironmentRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateDevEnvironmentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:verify_session, Seahorse::Model::Operation.new.tap do |o|
        o.name = "VerifySession"
        o.http_method = "GET"
        o.http_request_uri = "/session"
        o.input = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.output = Shapes::ShapeRef.new(shape: VerifySessionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)
    end

  end
end
