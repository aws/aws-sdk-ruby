# frozen_string_literal: true

# This is generated code!

module Aws::CodeCatalyst
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecatalyst#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccessTokenId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codecatalyst#AccessTokenId', name: 'AccessTokenId', traits: {"smithy.api#length" => {"min" => 1, "max" => 36}})
    AccessTokenName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codecatalyst#AccessTokenName', name: 'AccessTokenName', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    AccessTokenSecret = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codecatalyst#AccessTokenSecret', name: 'AccessTokenSecret', traits: {"smithy.api#length" => {"min" => 1, "max" => 4000}, "smithy.api#sensitive" => {}})
    AccessTokenSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codecatalyst#AccessTokenSummaries', name: 'AccessTokenSummaries')
    AccessTokenSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecatalyst#AccessTokenSummary', name: 'AccessTokenSummary')
    ClientToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codecatalyst#ClientToken', name: 'ClientToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    ComparisonOperator = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codecatalyst#ComparisonOperator', name: 'ComparisonOperator', traits: {"smithy.api#enum" => [{"name" => "EQUALS", "value" => "EQ"}, {"name" => "GREATER_THAN", "value" => "GT"}, {"name" => "GREATER_THAN_OR_EQUALS", "value" => "GE"}, {"name" => "LESS_THAN", "value" => "LT"}, {"name" => "LESS_THAN_OR_EQUALS", "value" => "LE"}, {"name" => "BEGINS_WITH", "value" => "BEGINS_WITH"}]})
    ConflictException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecatalyst#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreateAccessTokenRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecatalyst#CreateAccessTokenRequest', name: 'CreateAccessTokenRequest')
    CreateAccessTokenResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecatalyst#CreateAccessTokenResponse', name: 'CreateAccessTokenResponse')
    CreateDevEnvironmentRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecatalyst#CreateDevEnvironmentRequest', name: 'CreateDevEnvironmentRequest')
    CreateDevEnvironmentResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecatalyst#CreateDevEnvironmentResponse', name: 'CreateDevEnvironmentResponse')
    CreateProjectRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecatalyst#CreateProjectRequest', name: 'CreateProjectRequest')
    CreateProjectResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecatalyst#CreateProjectResponse', name: 'CreateProjectResponse')
    CreateSourceRepositoryBranchRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecatalyst#CreateSourceRepositoryBranchRequest', name: 'CreateSourceRepositoryBranchRequest')
    CreateSourceRepositoryBranchResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecatalyst#CreateSourceRepositoryBranchResponse', name: 'CreateSourceRepositoryBranchResponse')
    CreateSourceRepositoryRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecatalyst#CreateSourceRepositoryRequest', name: 'CreateSourceRepositoryRequest')
    CreateSourceRepositoryResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecatalyst#CreateSourceRepositoryResponse', name: 'CreateSourceRepositoryResponse')
    DeleteAccessTokenRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecatalyst#DeleteAccessTokenRequest', name: 'DeleteAccessTokenRequest')
    DeleteAccessTokenResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecatalyst#DeleteAccessTokenResponse', name: 'DeleteAccessTokenResponse')
    DeleteDevEnvironmentRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecatalyst#DeleteDevEnvironmentRequest', name: 'DeleteDevEnvironmentRequest')
    DeleteDevEnvironmentResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecatalyst#DeleteDevEnvironmentResponse', name: 'DeleteDevEnvironmentResponse')
    DeleteProjectRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecatalyst#DeleteProjectRequest', name: 'DeleteProjectRequest')
    DeleteProjectResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecatalyst#DeleteProjectResponse', name: 'DeleteProjectResponse')
    DeleteSourceRepositoryRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecatalyst#DeleteSourceRepositoryRequest', name: 'DeleteSourceRepositoryRequest')
    DeleteSourceRepositoryResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecatalyst#DeleteSourceRepositoryResponse', name: 'DeleteSourceRepositoryResponse')
    DeleteSpaceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecatalyst#DeleteSpaceRequest', name: 'DeleteSpaceRequest')
    DeleteSpaceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecatalyst#DeleteSpaceResponse', name: 'DeleteSpaceResponse')
    DevEnvironmentAccessDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecatalyst#DevEnvironmentAccessDetails', name: 'DevEnvironmentAccessDetails', traits: {"smithy.api#sensitive" => {}})
    DevEnvironmentRepositorySummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codecatalyst#DevEnvironmentRepositorySummaries', name: 'DevEnvironmentRepositorySummaries')
    DevEnvironmentRepositorySummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecatalyst#DevEnvironmentRepositorySummary', name: 'DevEnvironmentRepositorySummary')
    DevEnvironmentSessionConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecatalyst#DevEnvironmentSessionConfiguration', name: 'DevEnvironmentSessionConfiguration')
    DevEnvironmentSessionSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecatalyst#DevEnvironmentSessionSummary', name: 'DevEnvironmentSessionSummary')
    DevEnvironmentSessionType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codecatalyst#DevEnvironmentSessionType', name: 'DevEnvironmentSessionType', traits: {"smithy.api#enum" => [{"name" => "SSM", "value" => "SSM"}, {"name" => "SSH", "value" => "SSH"}]})
    DevEnvironmentSessionsSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codecatalyst#DevEnvironmentSessionsSummaryList', name: 'DevEnvironmentSessionsSummaryList')
    DevEnvironmentStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codecatalyst#DevEnvironmentStatus', name: 'DevEnvironmentStatus', traits: {"smithy.api#enum" => [{"name" => "PENDING", "value" => "PENDING"}, {"name" => "RUNNING", "value" => "RUNNING"}, {"name" => "STARTING", "value" => "STARTING"}, {"name" => "STOPPING", "value" => "STOPPING"}, {"name" => "STOPPED", "value" => "STOPPED"}, {"name" => "FAILED", "value" => "FAILED"}, {"name" => "DELETING", "value" => "DELETING"}, {"name" => "DELETED", "value" => "DELETED"}]})
    DevEnvironmentSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecatalyst#DevEnvironmentSummary', name: 'DevEnvironmentSummary')
    DevEnvironmentSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codecatalyst#DevEnvironmentSummaryList', name: 'DevEnvironmentSummaryList')
    EmailAddress = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecatalyst#EmailAddress', name: 'EmailAddress')
    EventLogEntries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codecatalyst#EventLogEntries', name: 'EventLogEntries')
    EventLogEntry = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecatalyst#EventLogEntry', name: 'EventLogEntry')
    EventPayload = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecatalyst#EventPayload', name: 'EventPayload')
    ExecuteCommandSessionConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecatalyst#ExecuteCommandSessionConfiguration', name: 'ExecuteCommandSessionConfiguration')
    ExecuteCommandSessionConfigurationArguments = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codecatalyst#ExecuteCommandSessionConfigurationArguments', name: 'ExecuteCommandSessionConfigurationArguments')
    Filter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecatalyst#Filter', name: 'Filter')
    FilterKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codecatalyst#FilterKey', name: 'FilterKey', traits: {"smithy.api#enum" => [{"name" => "HAS_ACCESS_TO", "value" => "hasAccessTo"}, {"name" => "NAME", "value" => "name"}]})
    Filters = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codecatalyst#Filters', name: 'Filters')
    GetDevEnvironmentRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecatalyst#GetDevEnvironmentRequest', name: 'GetDevEnvironmentRequest')
    GetDevEnvironmentResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecatalyst#GetDevEnvironmentResponse', name: 'GetDevEnvironmentResponse')
    GetProjectRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecatalyst#GetProjectRequest', name: 'GetProjectRequest')
    GetProjectResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecatalyst#GetProjectResponse', name: 'GetProjectResponse')
    GetSourceRepositoryCloneUrlsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecatalyst#GetSourceRepositoryCloneUrlsRequest', name: 'GetSourceRepositoryCloneUrlsRequest')
    GetSourceRepositoryCloneUrlsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecatalyst#GetSourceRepositoryCloneUrlsResponse', name: 'GetSourceRepositoryCloneUrlsResponse')
    GetSourceRepositoryRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecatalyst#GetSourceRepositoryRequest', name: 'GetSourceRepositoryRequest')
    GetSourceRepositoryResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecatalyst#GetSourceRepositoryResponse', name: 'GetSourceRepositoryResponse')
    GetSpaceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecatalyst#GetSpaceRequest', name: 'GetSpaceRequest')
    GetSpaceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecatalyst#GetSpaceResponse', name: 'GetSpaceResponse')
    GetSubscriptionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecatalyst#GetSubscriptionRequest', name: 'GetSubscriptionRequest')
    GetSubscriptionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecatalyst#GetSubscriptionResponse', name: 'GetSubscriptionResponse')
    GetUserDetailsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecatalyst#GetUserDetailsRequest', name: 'GetUserDetailsRequest')
    GetUserDetailsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecatalyst#GetUserDetailsResponse', name: 'GetUserDetailsResponse')
    GetWorkflowRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecatalyst#GetWorkflowRequest', name: 'GetWorkflowRequest')
    GetWorkflowResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecatalyst#GetWorkflowResponse', name: 'GetWorkflowResponse')
    GetWorkflowRunRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecatalyst#GetWorkflowRunRequest', name: 'GetWorkflowRunRequest')
    GetWorkflowRunResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecatalyst#GetWorkflowRunResponse', name: 'GetWorkflowRunResponse')
    Ide = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecatalyst#Ide', name: 'Ide')
    IdeConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecatalyst#IdeConfiguration', name: 'IdeConfiguration')
    IdeConfigurationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codecatalyst#IdeConfigurationList', name: 'IdeConfigurationList', traits: {"smithy.api#length" => {"min" => 0, "max" => 1}})
    Ides = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codecatalyst#Ides', name: 'Ides', traits: {"smithy.api#length" => {"min" => 0, "max" => 1}})
    InactivityTimeoutMinutes = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.codecatalyst#InactivityTimeoutMinutes', name: 'InactivityTimeoutMinutes', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 1200}})
    InstanceType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codecatalyst#InstanceType', name: 'InstanceType', traits: {"smithy.api#enum" => [{"name" => "DEV_STANDARD1_SMALL", "value" => "dev.standard1.small"}, {"name" => "DEV_STANDARD1_MEDIUM", "value" => "dev.standard1.medium"}, {"name" => "DEV_STANDARD1_LARGE", "value" => "dev.standard1.large"}, {"name" => "DEV_STANDARD1_XLARGE", "value" => "dev.standard1.xlarge"}]})
    ListAccessTokensRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecatalyst#ListAccessTokensRequest', name: 'ListAccessTokensRequest')
    ListAccessTokensResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecatalyst#ListAccessTokensResponse', name: 'ListAccessTokensResponse')
    ListDevEnvironmentSessionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecatalyst#ListDevEnvironmentSessionsRequest', name: 'ListDevEnvironmentSessionsRequest')
    ListDevEnvironmentSessionsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecatalyst#ListDevEnvironmentSessionsResponse', name: 'ListDevEnvironmentSessionsResponse')
    ListDevEnvironmentsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecatalyst#ListDevEnvironmentsRequest', name: 'ListDevEnvironmentsRequest')
    ListDevEnvironmentsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecatalyst#ListDevEnvironmentsResponse', name: 'ListDevEnvironmentsResponse')
    ListEventLogsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecatalyst#ListEventLogsRequest', name: 'ListEventLogsRequest')
    ListEventLogsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecatalyst#ListEventLogsResponse', name: 'ListEventLogsResponse')
    ListProjectsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecatalyst#ListProjectsRequest', name: 'ListProjectsRequest')
    ListProjectsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecatalyst#ListProjectsResponse', name: 'ListProjectsResponse')
    ListSourceRepositoriesItem = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecatalyst#ListSourceRepositoriesItem', name: 'ListSourceRepositoriesItem')
    ListSourceRepositoriesItems = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codecatalyst#ListSourceRepositoriesItems', name: 'ListSourceRepositoriesItems')
    ListSourceRepositoriesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecatalyst#ListSourceRepositoriesRequest', name: 'ListSourceRepositoriesRequest')
    ListSourceRepositoriesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecatalyst#ListSourceRepositoriesResponse', name: 'ListSourceRepositoriesResponse')
    ListSourceRepositoryBranchesItem = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecatalyst#ListSourceRepositoryBranchesItem', name: 'ListSourceRepositoryBranchesItem')
    ListSourceRepositoryBranchesItems = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codecatalyst#ListSourceRepositoryBranchesItems', name: 'ListSourceRepositoryBranchesItems')
    ListSourceRepositoryBranchesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecatalyst#ListSourceRepositoryBranchesRequest', name: 'ListSourceRepositoryBranchesRequest')
    ListSourceRepositoryBranchesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecatalyst#ListSourceRepositoryBranchesResponse', name: 'ListSourceRepositoryBranchesResponse')
    ListSpacesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecatalyst#ListSpacesRequest', name: 'ListSpacesRequest')
    ListSpacesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecatalyst#ListSpacesResponse', name: 'ListSpacesResponse')
    ListWorkflowRunsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecatalyst#ListWorkflowRunsRequest', name: 'ListWorkflowRunsRequest')
    ListWorkflowRunsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecatalyst#ListWorkflowRunsResponse', name: 'ListWorkflowRunsResponse')
    ListWorkflowsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecatalyst#ListWorkflowsRequest', name: 'ListWorkflowsRequest')
    ListWorkflowsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecatalyst#ListWorkflowsResponse', name: 'ListWorkflowsResponse')
    NameString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codecatalyst#NameString', name: 'NameString', traits: {"smithy.api#length" => {"min" => 3, "max" => 63}, "smithy.api#pattern" => "^[a-zA-Z0-9]+(?:[-_\\.][a-zA-Z0-9]+)*$"})
    OperationType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codecatalyst#OperationType', name: 'OperationType', traits: {"smithy.api#enum" => [{"name" => "READONLY", "value" => "READONLY"}, {"name" => "MUTATION", "value" => "MUTATION"}]})
    PersistentStorage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecatalyst#PersistentStorage', name: 'PersistentStorage')
    PersistentStorageConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecatalyst#PersistentStorageConfiguration', name: 'PersistentStorageConfiguration')
    ProjectDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codecatalyst#ProjectDescription', name: 'ProjectDescription', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}, "smithy.api#pattern" => "^[a-zA-Z0-9]+(?:[-_a-zA-Z0-9.,;:/\\+=?&$% \n\t\r])*$"})
    ProjectDisplayName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codecatalyst#ProjectDisplayName', name: 'ProjectDisplayName', traits: {"smithy.api#length" => {"min" => 3, "max" => 63}, "smithy.api#pattern" => "^[a-zA-Z0-9]+(?:[-_\\. ][a-zA-Z0-9]+)*$"})
    ProjectInformation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecatalyst#ProjectInformation', name: 'ProjectInformation')
    ProjectListFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecatalyst#ProjectListFilter', name: 'ProjectListFilter')
    ProjectListFilters = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codecatalyst#ProjectListFilters', name: 'ProjectListFilters')
    ProjectSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codecatalyst#ProjectSummaries', name: 'ProjectSummaries')
    ProjectSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecatalyst#ProjectSummary', name: 'ProjectSummary')
    RegionString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codecatalyst#RegionString', name: 'RegionString', traits: {"smithy.api#length" => {"min" => 3, "max" => 16}, "smithy.api#pattern" => "^(us(?:-gov)?|af|ap|ca|cn|eu|sa)-(central|(?:north|south)?(?:east|west)?)-(\\d+)$"})
    RepositoriesInput = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codecatalyst#RepositoriesInput', name: 'RepositoriesInput')
    RepositoryInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecatalyst#RepositoryInput', name: 'RepositoryInput')
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecatalyst#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    SensitiveString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codecatalyst#SensitiveString', name: 'SensitiveString', traits: {"smithy.api#sensitive" => {}})
    ServiceQuotaExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecatalyst#ServiceQuotaExceededException', name: 'ServiceQuotaExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    SourceRepositoryBranchRefString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codecatalyst#SourceRepositoryBranchRefString', name: 'SourceRepositoryBranchRefString', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    SourceRepositoryBranchString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codecatalyst#SourceRepositoryBranchString', name: 'SourceRepositoryBranchString', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    SourceRepositoryDescriptionString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codecatalyst#SourceRepositoryDescriptionString', name: 'SourceRepositoryDescriptionString', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    SourceRepositoryIdString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codecatalyst#SourceRepositoryIdString', name: 'SourceRepositoryIdString', traits: {"smithy.api#pattern" => "^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$"})
    SourceRepositoryNameString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codecatalyst#SourceRepositoryNameString', name: 'SourceRepositoryNameString', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^(?!.*[.]git$)[\\w\\-.]*$"})
    SpaceDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codecatalyst#SpaceDescription', name: 'SpaceDescription', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}, "smithy.api#pattern" => "^[a-zA-Z0-9]+(?:[-_a-zA-Z0-9.,;:/\\+=?&$% \n\t\r])*$"})
    SpaceSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codecatalyst#SpaceSummaries', name: 'SpaceSummaries')
    SpaceSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecatalyst#SpaceSummary', name: 'SpaceSummary')
    StartDevEnvironmentRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecatalyst#StartDevEnvironmentRequest', name: 'StartDevEnvironmentRequest')
    StartDevEnvironmentResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecatalyst#StartDevEnvironmentResponse', name: 'StartDevEnvironmentResponse')
    StartDevEnvironmentSessionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecatalyst#StartDevEnvironmentSessionRequest', name: 'StartDevEnvironmentSessionRequest')
    StartDevEnvironmentSessionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecatalyst#StartDevEnvironmentSessionResponse', name: 'StartDevEnvironmentSessionResponse')
    StartWorkflowRunRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecatalyst#StartWorkflowRunRequest', name: 'StartWorkflowRunRequest')
    StartWorkflowRunResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecatalyst#StartWorkflowRunResponse', name: 'StartWorkflowRunResponse')
    StatusReason = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codecatalyst#StatusReason', name: 'StatusReason', traits: {"smithy.api#length" => {"max" => 1024}})
    StopDevEnvironmentRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecatalyst#StopDevEnvironmentRequest', name: 'StopDevEnvironmentRequest')
    StopDevEnvironmentResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecatalyst#StopDevEnvironmentResponse', name: 'StopDevEnvironmentResponse')
    StopDevEnvironmentSessionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecatalyst#StopDevEnvironmentSessionRequest', name: 'StopDevEnvironmentSessionRequest')
    StopDevEnvironmentSessionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecatalyst#StopDevEnvironmentSessionResponse', name: 'StopDevEnvironmentSessionResponse')
    StringList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codecatalyst#StringList', name: 'StringList')
    ThrottlingException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecatalyst#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429, "smithy.api#retryable" => {}})
    Timestamp = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.codecatalyst#Timestamp', name: 'Timestamp', traits: {"smithy.api#timestampFormat" => "date-time"})
    UpdateDevEnvironmentRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecatalyst#UpdateDevEnvironmentRequest', name: 'UpdateDevEnvironmentRequest')
    UpdateDevEnvironmentResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecatalyst#UpdateDevEnvironmentResponse', name: 'UpdateDevEnvironmentResponse')
    UpdateProjectRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecatalyst#UpdateProjectRequest', name: 'UpdateProjectRequest')
    UpdateProjectResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecatalyst#UpdateProjectResponse', name: 'UpdateProjectResponse')
    UpdateSpaceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecatalyst#UpdateSpaceRequest', name: 'UpdateSpaceRequest')
    UpdateSpaceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecatalyst#UpdateSpaceResponse', name: 'UpdateSpaceResponse')
    UserIdentity = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecatalyst#UserIdentity', name: 'UserIdentity')
    UserType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codecatalyst#UserType', name: 'UserType', traits: {"smithy.api#enum" => [{"name" => "USER", "value" => "USER"}, {"name" => "AWS_ACCOUNT", "value" => "AWS_ACCOUNT"}, {"name" => "UNKNOWN", "value" => "UNKNOWN"}]})
    Uuid = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codecatalyst#Uuid', name: 'Uuid', traits: {"smithy.api#pattern" => "^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$"})
    ValidationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecatalyst#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    VerifySessionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecatalyst#VerifySessionResponse', name: 'VerifySessionResponse')
    WorkflowDefinition = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecatalyst#WorkflowDefinition', name: 'WorkflowDefinition')
    WorkflowDefinitionSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecatalyst#WorkflowDefinitionSummary', name: 'WorkflowDefinitionSummary')
    WorkflowRunMode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codecatalyst#WorkflowRunMode', name: 'WorkflowRunMode', traits: {"smithy.api#enum" => [{"name" => "QUEUED", "value" => "QUEUED"}, {"name" => "PARALLEL", "value" => "PARALLEL"}, {"name" => "SUPERSEDED", "value" => "SUPERSEDED"}]})
    WorkflowRunSortCriteria = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecatalyst#WorkflowRunSortCriteria', name: 'WorkflowRunSortCriteria')
    WorkflowRunSortCriteriaList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codecatalyst#WorkflowRunSortCriteriaList', name: 'WorkflowRunSortCriteriaList', traits: {"smithy.api#length" => {"max" => 1}})
    WorkflowRunStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codecatalyst#WorkflowRunStatus', name: 'WorkflowRunStatus', traits: {"smithy.api#enum" => [{"name" => "SUCCEEDED", "value" => "SUCCEEDED"}, {"name" => "FAILED", "value" => "FAILED"}, {"name" => "STOPPED", "value" => "STOPPED"}, {"name" => "SUPERSEDED", "value" => "SUPERSEDED"}, {"name" => "CANCELLED", "value" => "CANCELLED"}, {"name" => "NOT_RUN", "value" => "NOT_RUN"}, {"name" => "VALIDATING", "value" => "VALIDATING"}, {"name" => "PROVISIONING", "value" => "PROVISIONING"}, {"name" => "IN_PROGRESS", "value" => "IN_PROGRESS"}, {"name" => "STOPPING", "value" => "STOPPING"}, {"name" => "ABANDONED", "value" => "ABANDONED"}]})
    WorkflowRunStatusReason = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecatalyst#WorkflowRunStatusReason', name: 'WorkflowRunStatusReason')
    WorkflowRunStatusReasons = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codecatalyst#WorkflowRunStatusReasons', name: 'WorkflowRunStatusReasons')
    WorkflowRunSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codecatalyst#WorkflowRunSummaries', name: 'WorkflowRunSummaries')
    WorkflowRunSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecatalyst#WorkflowRunSummary', name: 'WorkflowRunSummary')
    WorkflowSortCriteria = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecatalyst#WorkflowSortCriteria', name: 'WorkflowSortCriteria')
    WorkflowSortCriteriaList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codecatalyst#WorkflowSortCriteriaList', name: 'WorkflowSortCriteriaList', traits: {"smithy.api#length" => {"max" => 1}})
    WorkflowStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codecatalyst#WorkflowStatus', name: 'WorkflowStatus', traits: {"smithy.api#enum" => [{"name" => "INVALID", "value" => "INVALID"}, {"name" => "ACTIVE", "value" => "ACTIVE"}]})
    WorkflowSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codecatalyst#WorkflowSummaries', name: 'WorkflowSummaries')
    WorkflowSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codecatalyst#WorkflowSummary', name: 'WorkflowSummary')

    AccessDeniedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    AccessTokenSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AccessTokenSummary)
    AccessTokenSummary.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessTokenId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The system-generated ID of the personal access token.</p>", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "accessTokenId"}))
    AccessTokenSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessTokenName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The friendly name of the personal access token.</p>", "smithy.api#required" => {}}))
    AccessTokenSummary.add_member(:expires_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'expiresTime', traits: {"smithy.api#documentation" => "<p>The date and time when the personal access token will expire, in coordinated universal time (UTC) timestamp format as specified in <a href=\"https://www.rfc-editor.org/rfc/rfc3339#section-5.6\">RFC 3339</a>.</p>", "smithy.api#timestampFormat" => "date-time"}))
    AccessTokenSummary.type = Types::AccessTokenSummary
    ConflictException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ConflictException.type = Types::ConflictException
    CreateAccessTokenRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessTokenName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The friendly name of the personal access token.</p>", "smithy.api#required" => {}}))
    CreateAccessTokenRequest.add_member(:expires_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'expiresTime', traits: {"smithy.api#documentation" => "<p>The date and time the personal access token expires, in coordinated universal time (UTC) timestamp format as specified in <a href=\"https://www.rfc-editor.org/rfc/rfc3339#section-5.6\">RFC 3339</a>.</p>", "smithy.api#timestampFormat" => "date-time"}))
    CreateAccessTokenRequest.type = Types::CreateAccessTokenRequest
    CreateAccessTokenResponse.add_member(:secret, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessTokenSecret, location_name: 'secret', traits: {"smithy.api#documentation" => "<p>The secret value of the personal access token.</p>", "smithy.api#required" => {}}))
    CreateAccessTokenResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessTokenName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The friendly name of the personal access token.</p>", "smithy.api#required" => {}}))
    CreateAccessTokenResponse.add_member(:expires_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'expiresTime', traits: {"smithy.api#documentation" => "<p>The date and time the personal access token expires, in coordinated universal time (UTC) timestamp format as specified in <a href=\"https://www.rfc-editor.org/rfc/rfc3339#section-5.6\">RFC 3339</a>. If not specified, the default is one year from creation.</p>", "smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    CreateAccessTokenResponse.add_member(:access_token_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessTokenId, location_name: 'accessTokenId', traits: {"smithy.api#documentation" => "<p>The system-generated unique ID of the access token.</p>", "smithy.api#required" => {}}))
    CreateAccessTokenResponse.type = Types::CreateAccessTokenResponse
    CreateDevEnvironmentRequest.add_member(:space_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'spaceName', traits: {"smithy.api#documentation" => "<p>The name of the space.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateDevEnvironmentRequest.add_member(:project_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'projectName', traits: {"smithy.api#documentation" => "<p>The name of the project in the space.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateDevEnvironmentRequest.add_member(:repositories, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoriesInput, location_name: 'repositories', traits: {"smithy.api#documentation" => "<p>The source repository that contains the branch to clone into the Dev Environment. </p>"}))
    CreateDevEnvironmentRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A user-specified idempotency token.  Idempotency ensures that an API request completes only once. \n       With an idempotent request, if the original request completes successfully, the subsequent retries return the result from the original successful request and have no additional effect.</p>"}))
    CreateDevEnvironmentRequest.add_member(:alias, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'alias', traits: {"smithy.api#documentation" => "<p>The user-defined alias for a Dev Environment.</p>", "smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9]+(?:[-_\\.][a-zA-Z0-9]+)*$"}))
    CreateDevEnvironmentRequest.add_member(:ides, Smithy::Schema::Shapes::ShapeRef.new(shape: IdeConfigurationList, location_name: 'ides', traits: {"smithy.api#documentation" => "<p>Information about the integrated development environment (IDE) configured for a\n      Dev Environment.</p>\n         <note>\n            <p>An IDE is required to create a Dev Environment. For Dev Environment creation, this field\n        contains configuration information and must be provided. </p>\n         </note>"}))
    CreateDevEnvironmentRequest.add_member(:instance_type, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceType, location_name: 'instanceType', traits: {"smithy.api#documentation" => "<p>The Amazon EC2 instace type to use for the Dev Environment. </p>", "smithy.api#required" => {}}))
    CreateDevEnvironmentRequest.add_member(:inactivity_timeout_minutes, Smithy::Schema::Shapes::ShapeRef.new(shape: InactivityTimeoutMinutes, location_name: 'inactivityTimeoutMinutes', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The amount of time the Dev Environment will run without any activity detected before stopping, in minutes. Only whole integers are allowed. Dev Environments consume compute minutes when running.</p>"}))
    CreateDevEnvironmentRequest.add_member(:persistent_storage, Smithy::Schema::Shapes::ShapeRef.new(shape: PersistentStorageConfiguration, location_name: 'persistentStorage', traits: {"smithy.api#documentation" => "<p>Information about the amount of storage allocated to the Dev Environment. </p>\n         <note>\n            <p>By default, a Dev Environment is configured to have 16GB of persistent storage when created from the Amazon CodeCatalyst console, but there is no default when programmatically\n        creating a Dev Environment. \n        Valid values for persistent storage are based on memory sizes in 16GB increments. Valid\n        values are 16, 32, and 64.</p>\n         </note>", "smithy.api#required" => {}}))
    CreateDevEnvironmentRequest.add_member(:vpc_connection_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'vpcConnectionName', traits: {"smithy.api#documentation" => "<p>The name of the connection that will be used to connect to Amazon VPC, if any.</p>"}))
    CreateDevEnvironmentRequest.type = Types::CreateDevEnvironmentRequest
    CreateDevEnvironmentResponse.add_member(:space_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'spaceName', traits: {"smithy.api#documentation" => "<p>The name of the space.</p>", "smithy.api#required" => {}}))
    CreateDevEnvironmentResponse.add_member(:project_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'projectName', traits: {"smithy.api#documentation" => "<p>The name of the project in the space.</p>", "smithy.api#required" => {}}))
    CreateDevEnvironmentResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The system-generated unique ID of the Dev Environment. </p>", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "devEnvironmentId"}))
    CreateDevEnvironmentResponse.add_member(:vpc_connection_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'vpcConnectionName', traits: {"smithy.api#documentation" => "<p>The name of the connection used to connect to Amazon VPC used when the Dev Environment was created, if any.</p>"}))
    CreateDevEnvironmentResponse.type = Types::CreateDevEnvironmentResponse
    CreateProjectRequest.add_member(:space_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'spaceName', traits: {"smithy.api#documentation" => "<p>The name of the space.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateProjectRequest.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectDisplayName, location_name: 'displayName', traits: {"smithy.api#documentation" => "<p>The friendly name of the project that will be displayed to users.</p>", "smithy.api#required" => {}}))
    CreateProjectRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the project. This description will be displayed to all users of the project. We recommend providing a brief description of the project and its intended purpose.</p>"}))
    CreateProjectRequest.type = Types::CreateProjectRequest
    CreateProjectResponse.add_member(:space_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'spaceName', traits: {"smithy.api#documentation" => "<p>The name of the space.</p>"}))
    CreateProjectResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the project in the space.</p>", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "projectName"}))
    CreateProjectResponse.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'displayName', traits: {"smithy.api#documentation" => "<p>The friendly name of the project.</p>"}))
    CreateProjectResponse.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the project.</p>"}))
    CreateProjectResponse.type = Types::CreateProjectResponse
    CreateSourceRepositoryBranchRequest.add_member(:space_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'spaceName', traits: {"smithy.api#documentation" => "<p>The name of the space.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateSourceRepositoryBranchRequest.add_member(:project_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'projectName', traits: {"smithy.api#documentation" => "<p>The name of the project in the space.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateSourceRepositoryBranchRequest.add_member(:source_repository_name, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceRepositoryNameString, location_name: 'sourceRepositoryName', traits: {"smithy.api#documentation" => "<p>The name of the repository where you want to create a branch.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateSourceRepositoryBranchRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceRepositoryBranchString, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name for the branch you're creating.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "sourceRepositoryBranchName"}))
    CreateSourceRepositoryBranchRequest.add_member(:head_commit_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'headCommitId', traits: {"smithy.api#documentation" => "<p>The commit ID in an existing branch from which you want to create the new branch.</p>"}))
    CreateSourceRepositoryBranchRequest.type = Types::CreateSourceRepositoryBranchRequest
    CreateSourceRepositoryBranchResponse.add_member(:ref, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceRepositoryBranchRefString, location_name: 'ref', traits: {"smithy.api#documentation" => "<p>The Git reference name of the branch.</p>"}))
    CreateSourceRepositoryBranchResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceRepositoryBranchString, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the newly created branch.</p>"}))
    CreateSourceRepositoryBranchResponse.add_member(:last_updated_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdatedTime', traits: {"smithy.api#documentation" => "<p>The time the branch was last updated, in coordinated universal time (UTC) timestamp format as specified in <a href=\"https://www.rfc-editor.org/rfc/rfc3339#section-5.6\">RFC 3339</a>.</p>", "smithy.api#timestampFormat" => "date-time"}))
    CreateSourceRepositoryBranchResponse.add_member(:head_commit_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'headCommitId', traits: {"smithy.api#documentation" => "<p>The commit ID of the tip of the newly created branch.</p>"}))
    CreateSourceRepositoryBranchResponse.type = Types::CreateSourceRepositoryBranchResponse
    CreateSourceRepositoryRequest.add_member(:space_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'spaceName', traits: {"smithy.api#documentation" => "<p>The name of the space.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateSourceRepositoryRequest.add_member(:project_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'projectName', traits: {"smithy.api#documentation" => "<p>The name of the project in the space.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateSourceRepositoryRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceRepositoryNameString, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the source repository. For more information about name requirements, see <a href=\"https://docs.aws.amazon.com/codecatalyst/latest/userguide/source-quotas.html\">Quotas for source repositories</a>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "sourceRepositoryName"}))
    CreateSourceRepositoryRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceRepositoryDescriptionString, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the source repository.</p>"}))
    CreateSourceRepositoryRequest.type = Types::CreateSourceRepositoryRequest
    CreateSourceRepositoryResponse.add_member(:space_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'spaceName', traits: {"smithy.api#documentation" => "<p>The name of the space.</p>", "smithy.api#required" => {}}))
    CreateSourceRepositoryResponse.add_member(:project_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'projectName', traits: {"smithy.api#documentation" => "<p>The name of the project in the space.</p>", "smithy.api#required" => {}}))
    CreateSourceRepositoryResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceRepositoryNameString, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the source repository.</p>", "smithy.api#required" => {}}))
    CreateSourceRepositoryResponse.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceRepositoryDescriptionString, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the source repository.</p>"}))
    CreateSourceRepositoryResponse.type = Types::CreateSourceRepositoryResponse
    DeleteAccessTokenRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessTokenId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the personal access token to delete. You can find the IDs of all PATs associated with your Amazon Web Services Builder ID in a space by calling <a>ListAccessTokens</a>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "accessTokenId"}))
    DeleteAccessTokenRequest.type = Types::DeleteAccessTokenRequest
    DeleteAccessTokenResponse.type = Types::DeleteAccessTokenResponse
    DeleteDevEnvironmentRequest.add_member(:space_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'spaceName', traits: {"smithy.api#documentation" => "<p>The name of the space.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDevEnvironmentRequest.add_member(:project_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'projectName', traits: {"smithy.api#documentation" => "<p>The name of the project in the space.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDevEnvironmentRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The system-generated unique ID of the Dev Environment you want to delete. To retrieve a list of Dev Environment IDs, use <a>ListDevEnvironments</a>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "devEnvironmentId"}))
    DeleteDevEnvironmentRequest.type = Types::DeleteDevEnvironmentRequest
    DeleteDevEnvironmentResponse.add_member(:space_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'spaceName', traits: {"smithy.api#documentation" => "<p>The name of the space.</p>", "smithy.api#required" => {}}))
    DeleteDevEnvironmentResponse.add_member(:project_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'projectName', traits: {"smithy.api#documentation" => "<p>The name of the project in the space.</p>", "smithy.api#required" => {}}))
    DeleteDevEnvironmentResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The system-generated unique ID of the deleted Dev Environment. </p>", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "devEnvironmentId"}))
    DeleteDevEnvironmentResponse.type = Types::DeleteDevEnvironmentResponse
    DeleteProjectRequest.add_member(:space_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'spaceName', traits: {"smithy.api#documentation" => "<p>The name of the space.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteProjectRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the project in the space. To retrieve a list of project names, use <a>ListProjects</a>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "projectName"}))
    DeleteProjectRequest.type = Types::DeleteProjectRequest
    DeleteProjectResponse.add_member(:space_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'spaceName', traits: {"smithy.api#documentation" => "<p>The name of the space.</p>", "smithy.api#required" => {}}))
    DeleteProjectResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the project in the space.</p>", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "projectName"}))
    DeleteProjectResponse.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'displayName', traits: {"smithy.api#documentation" => "<p>The friendly name displayed to users of the project in Amazon CodeCatalyst.</p>"}))
    DeleteProjectResponse.type = Types::DeleteProjectResponse
    DeleteSourceRepositoryRequest.add_member(:space_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'spaceName', traits: {"smithy.api#documentation" => "<p>The name of the space.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteSourceRepositoryRequest.add_member(:project_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'projectName', traits: {"smithy.api#documentation" => "<p>The name of the project in the space.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteSourceRepositoryRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceRepositoryNameString, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the source repository.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "sourceRepositoryName"}))
    DeleteSourceRepositoryRequest.type = Types::DeleteSourceRepositoryRequest
    DeleteSourceRepositoryResponse.add_member(:space_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'spaceName', traits: {"smithy.api#documentation" => "<p>The name of the space.</p>", "smithy.api#required" => {}}))
    DeleteSourceRepositoryResponse.add_member(:project_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'projectName', traits: {"smithy.api#documentation" => "<p>The name of the project in the space.</p>", "smithy.api#required" => {}}))
    DeleteSourceRepositoryResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceRepositoryNameString, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the repository.</p>", "smithy.api#required" => {}}))
    DeleteSourceRepositoryResponse.type = Types::DeleteSourceRepositoryResponse
    DeleteSpaceRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the space.  To retrieve a list of space names, use <a>ListSpaces</a>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "spaceName"}))
    DeleteSpaceRequest.type = Types::DeleteSpaceRequest
    DeleteSpaceResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the space.</p>", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "spaceName"}))
    DeleteSpaceResponse.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'displayName', traits: {"smithy.api#documentation" => "<p>The friendly name of the space displayed to users of the space in Amazon CodeCatalyst.</p>"}))
    DeleteSpaceResponse.type = Types::DeleteSpaceResponse
    DevEnvironmentAccessDetails.add_member(:stream_url, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveString, location_name: 'streamUrl', traits: {"smithy.api#documentation" => "<p>The URL used to send commands to and from the Dev Environment.</p>", "smithy.api#required" => {}}))
    DevEnvironmentAccessDetails.add_member(:token_value, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveString, location_name: 'tokenValue', traits: {"smithy.api#documentation" => "<p>An encrypted token value that contains session and caller information used to authenticate the connection.</p>", "smithy.api#required" => {}}))
    DevEnvironmentAccessDetails.type = Types::DevEnvironmentAccessDetails
    DevEnvironmentRepositorySummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DevEnvironmentRepositorySummary)
    DevEnvironmentRepositorySummary.add_member(:repository_name, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceRepositoryNameString, location_name: 'repositoryName', traits: {"smithy.api#documentation" => "<p>The name of the source repository.</p>", "smithy.api#required" => {}}))
    DevEnvironmentRepositorySummary.add_member(:branch_name, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceRepositoryBranchString, location_name: 'branchName', traits: {"smithy.api#documentation" => "<p>The name of the branch in a source repository cloned into the Dev Environment. </p>"}))
    DevEnvironmentRepositorySummary.type = Types::DevEnvironmentRepositorySummary
    DevEnvironmentSessionConfiguration.add_member(:session_type, Smithy::Schema::Shapes::ShapeRef.new(shape: DevEnvironmentSessionType, location_name: 'sessionType', traits: {"smithy.api#documentation" => "<p>The type of the session.</p>", "smithy.api#required" => {}}))
    DevEnvironmentSessionConfiguration.add_member(:execute_command_session_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ExecuteCommandSessionConfiguration, location_name: 'executeCommandSessionConfiguration', traits: {"smithy.api#documentation" => "<p>Information about optional commands that will be run on the Dev Environment when the SSH session begins.</p>"}))
    DevEnvironmentSessionConfiguration.type = Types::DevEnvironmentSessionConfiguration
    DevEnvironmentSessionSummary.add_member(:space_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'spaceName', traits: {"smithy.api#documentation" => "<p>The name of the space.</p>", "smithy.api#required" => {}}))
    DevEnvironmentSessionSummary.add_member(:project_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'projectName', traits: {"smithy.api#documentation" => "<p>The name of the project in the space.</p>", "smithy.api#required" => {}}))
    DevEnvironmentSessionSummary.add_member(:dev_environment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'devEnvironmentId', traits: {"smithy.api#documentation" => "<p>The system-generated unique ID of the Dev Environment.</p>", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "devEnvironmentId"}))
    DevEnvironmentSessionSummary.add_member(:started_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'startedTime', traits: {"smithy.api#documentation" => "<p>The date and time the session started, in coordinated universal time (UTC) timestamp format as specified in <a href=\"https://www.rfc-editor.org/rfc/rfc3339#section-5.6\">RFC 3339</a>\n         </p>", "smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    DevEnvironmentSessionSummary.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The system-generated unique ID of the Dev Environment session.</p>", "smithy.api#length" => {"min" => 1, "max" => 96}, "smithy.api#required" => {}}))
    DevEnvironmentSessionSummary.type = Types::DevEnvironmentSessionSummary
    DevEnvironmentSessionsSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DevEnvironmentSessionSummary)
    DevEnvironmentSummary.add_member(:space_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'spaceName', traits: {"smithy.api#documentation" => "<p>The name of the space.</p>"}))
    DevEnvironmentSummary.add_member(:project_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'projectName', traits: {"smithy.api#documentation" => "<p>The name of the project in the space.</p>"}))
    DevEnvironmentSummary.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The system-generated unique ID for the Dev Environment. </p>", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "devEnvironmentId"}))
    DevEnvironmentSummary.add_member(:last_updated_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdatedTime', traits: {"smithy.api#documentation" => "<p>The time when the Dev Environment was last updated, in coordinated universal time (UTC) timestamp format as specified in <a href=\"https://www.rfc-editor.org/rfc/rfc3339#section-5.6\">RFC 3339</a>.</p>", "smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    DevEnvironmentSummary.add_member(:creator_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'creatorId', traits: {"smithy.api#documentation" => "<p>The system-generated unique ID of the user who created the Dev Environment. </p>", "smithy.api#length" => {"max" => 1024}, "smithy.api#required" => {}}))
    DevEnvironmentSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: DevEnvironmentStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the Dev Environment. </p>", "smithy.api#required" => {}}))
    DevEnvironmentSummary.add_member(:status_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: StatusReason, location_name: 'statusReason', traits: {"smithy.api#documentation" => "<p>The reason for the status.</p>"}))
    DevEnvironmentSummary.add_member(:repositories, Smithy::Schema::Shapes::ShapeRef.new(shape: DevEnvironmentRepositorySummaries, location_name: 'repositories', traits: {"smithy.api#documentation" => "<p>Information about the repositories that will be cloned into the Dev Environment. If no rvalue is specified, no repository is cloned.</p>", "smithy.api#required" => {}}))
    DevEnvironmentSummary.add_member(:alias, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'alias', traits: {"smithy.api#documentation" => "<p>The user-specified alias for the Dev Environment.</p>", "smithy.api#length" => {"max" => 128}}))
    DevEnvironmentSummary.add_member(:ides, Smithy::Schema::Shapes::ShapeRef.new(shape: Ides, location_name: 'ides', traits: {"smithy.api#documentation" => "<p>Information about the integrated development environment (IDE) configured for a Dev Environment.</p>"}))
    DevEnvironmentSummary.add_member(:instance_type, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceType, location_name: 'instanceType', traits: {"smithy.api#documentation" => "<p>The Amazon EC2 instace type used for the Dev Environment. </p>", "smithy.api#required" => {}}))
    DevEnvironmentSummary.add_member(:inactivity_timeout_minutes, Smithy::Schema::Shapes::ShapeRef.new(shape: InactivityTimeoutMinutes, location_name: 'inactivityTimeoutMinutes', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The amount of time the Dev Environment will run without any activity detected before stopping, in minutes. Dev Environments consume compute minutes when running.</p>", "smithy.api#required" => {}}))
    DevEnvironmentSummary.add_member(:persistent_storage, Smithy::Schema::Shapes::ShapeRef.new(shape: PersistentStorage, location_name: 'persistentStorage', traits: {"smithy.api#documentation" => "<p>Information about the configuration of persistent storage for the Dev Environment.</p>", "smithy.api#required" => {}}))
    DevEnvironmentSummary.add_member(:vpc_connection_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'vpcConnectionName', traits: {"smithy.api#documentation" => "<p>The name of the connection used to connect to Amazon VPC used when the Dev Environment was created, if any.</p>"}))
    DevEnvironmentSummary.type = Types::DevEnvironmentSummary
    DevEnvironmentSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DevEnvironmentSummary)
    EmailAddress.add_member(:email, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'email', traits: {"smithy.api#documentation" => "<p>The email address.</p>"}))
    EmailAddress.add_member(:verified, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Boolean, location_name: 'verified', traits: {"smithy.api#documentation" => "<p>Whether the email address has been verified.</p>"}))
    EmailAddress.type = Types::EmailAddress
    EventLogEntries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: EventLogEntry)
    EventLogEntry.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The system-generated unique ID of the event.</p>", "smithy.api#required" => {}}))
    EventLogEntry.add_member(:event_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'eventName', traits: {"smithy.api#documentation" => "<p>The name of the event.</p>", "smithy.api#required" => {}}))
    EventLogEntry.add_member(:event_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'eventType', traits: {"smithy.api#documentation" => "<p>The type of the event.</p>", "smithy.api#required" => {}}))
    EventLogEntry.add_member(:event_category, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'eventCategory', traits: {"smithy.api#documentation" => "<p>The category for the event.</p>", "smithy.api#required" => {}}))
    EventLogEntry.add_member(:event_source, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'eventSource', traits: {"smithy.api#documentation" => "<p>The source of the event.</p>", "smithy.api#required" => {}}))
    EventLogEntry.add_member(:event_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'eventTime', traits: {"smithy.api#documentation" => "<p>The time the event took place, in coordinated universal time (UTC) timestamp format as specified in <a href=\"https://www.rfc-editor.org/rfc/rfc3339#section-5.6\">RFC 3339</a>.</p>", "smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    EventLogEntry.add_member(:operation_type, Smithy::Schema::Shapes::ShapeRef.new(shape: OperationType, location_name: 'operationType', traits: {"smithy.api#documentation" => "<p>The type of the event.</p>", "smithy.api#required" => {}}))
    EventLogEntry.add_member(:user_identity, Smithy::Schema::Shapes::ShapeRef.new(shape: UserIdentity, location_name: 'userIdentity', traits: {"smithy.api#documentation" => "<p>The system-generated unique ID of the user whose actions are recorded in the event.</p>", "smithy.api#required" => {}}))
    EventLogEntry.add_member(:project_information, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectInformation, location_name: 'projectInformation', traits: {"smithy.api#documentation" => "<p>Information about the project where the event occurred.</p>"}))
    EventLogEntry.add_member(:request_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'requestId', traits: {"smithy.api#documentation" => "<p>The system-generated unique ID of the request.</p>"}))
    EventLogEntry.add_member(:request_payload, Smithy::Schema::Shapes::ShapeRef.new(shape: EventPayload, location_name: 'requestPayload', traits: {"smithy.api#documentation" => "<p>Information about the payload of the request.</p>"}))
    EventLogEntry.add_member(:response_payload, Smithy::Schema::Shapes::ShapeRef.new(shape: EventPayload, location_name: 'responsePayload', traits: {"smithy.api#documentation" => "<p>Information about the payload of the response, if any.</p>"}))
    EventLogEntry.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'errorCode', traits: {"smithy.api#documentation" => "<p>The code of the error, if any.</p>"}))
    EventLogEntry.add_member(:source_ip_address, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'sourceIpAddress', traits: {"smithy.api#documentation" => "<p>The IP address of the user whose actions are recorded in the event.</p>"}))
    EventLogEntry.add_member(:user_agent, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'userAgent', traits: {"smithy.api#documentation" => "<p>The user agent whose actions are recorded in the event.</p>"}))
    EventLogEntry.type = Types::EventLogEntry
    EventPayload.add_member(:content_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'contentType', traits: {"smithy.api#documentation" => "<p>The type of content in the event payload.</p>"}))
    EventPayload.add_member(:data, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'data', traits: {"smithy.api#documentation" => "<p>The data included in the event payload.</p>"}))
    EventPayload.type = Types::EventPayload
    ExecuteCommandSessionConfiguration.add_member(:command, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'command', traits: {"smithy.api#documentation" => "<p>The command used at the beginning of the SSH session to a Dev Environment.</p>", "smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#required" => {}}))
    ExecuteCommandSessionConfiguration.add_member(:arguments, Smithy::Schema::Shapes::ShapeRef.new(shape: ExecuteCommandSessionConfigurationArguments, location_name: 'arguments', traits: {"smithy.api#documentation" => "<p>An array of arguments containing arguments and members.</p>"}))
    ExecuteCommandSessionConfiguration.type = Types::ExecuteCommandSessionConfiguration
    ExecuteCommandSessionConfigurationArguments.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    Filter.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'key', traits: {"smithy.api#documentation" => "<p>A key that can be used to sort results.</p>", "smithy.api#required" => {}}))
    Filter.add_member(:values, Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'values', traits: {"smithy.api#documentation" => "<p>The values of the key.</p>", "smithy.api#required" => {}}))
    Filter.add_member(:comparison_operator, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'comparisonOperator', traits: {"smithy.api#documentation" => "<p>The operator used to compare the fields.</p>"}))
    Filter.type = Types::Filter
    Filters.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Filter)
    GetDevEnvironmentRequest.add_member(:space_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'spaceName', traits: {"smithy.api#documentation" => "<p>The name of the space.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDevEnvironmentRequest.add_member(:project_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'projectName', traits: {"smithy.api#documentation" => "<p>The name of the project in the space.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDevEnvironmentRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The system-generated unique ID of the Dev Environment for which you want to view information. To retrieve a list of Dev Environment IDs, use <a>ListDevEnvironments</a>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "devEnvironmentId"}))
    GetDevEnvironmentRequest.type = Types::GetDevEnvironmentRequest
    GetDevEnvironmentResponse.add_member(:space_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'spaceName', traits: {"smithy.api#documentation" => "<p>The name of the space.</p>", "smithy.api#required" => {}}))
    GetDevEnvironmentResponse.add_member(:project_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'projectName', traits: {"smithy.api#documentation" => "<p>The name of the project in the space.</p>", "smithy.api#required" => {}}))
    GetDevEnvironmentResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The system-generated unique ID of the Dev Environment. </p>", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "devEnvironmentId"}))
    GetDevEnvironmentResponse.add_member(:last_updated_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdatedTime', traits: {"smithy.api#documentation" => "<p>The time when the Dev Environment was last updated, in coordinated universal time (UTC) timestamp format as specified in <a href=\"https://www.rfc-editor.org/rfc/rfc3339#section-5.6\">RFC 3339</a>.</p>", "smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    GetDevEnvironmentResponse.add_member(:creator_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'creatorId', traits: {"smithy.api#documentation" => "<p>The system-generated unique ID of the user who created the Dev Environment. </p>", "smithy.api#length" => {"max" => 1024}, "smithy.api#required" => {}}))
    GetDevEnvironmentResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: DevEnvironmentStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The current status of the Dev Environment.</p>", "smithy.api#required" => {}}))
    GetDevEnvironmentResponse.add_member(:status_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: StatusReason, location_name: 'statusReason', traits: {"smithy.api#documentation" => "<p>The reason for the status.</p>"}))
    GetDevEnvironmentResponse.add_member(:repositories, Smithy::Schema::Shapes::ShapeRef.new(shape: DevEnvironmentRepositorySummaries, location_name: 'repositories', traits: {"smithy.api#documentation" => "<p>The source repository that contains the branch cloned into the Dev Environment. </p>", "smithy.api#required" => {}}))
    GetDevEnvironmentResponse.add_member(:alias, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'alias', traits: {"smithy.api#documentation" => "<p>The user-specified alias for the Dev Environment. </p>", "smithy.api#length" => {"max" => 128}}))
    GetDevEnvironmentResponse.add_member(:ides, Smithy::Schema::Shapes::ShapeRef.new(shape: Ides, location_name: 'ides', traits: {"smithy.api#documentation" => "<p>Information about the integrated development environment (IDE) configured for the Dev Environment. </p>"}))
    GetDevEnvironmentResponse.add_member(:instance_type, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceType, location_name: 'instanceType', traits: {"smithy.api#documentation" => "<p>The Amazon EC2 instace type to use for the Dev Environment. </p>", "smithy.api#required" => {}}))
    GetDevEnvironmentResponse.add_member(:inactivity_timeout_minutes, Smithy::Schema::Shapes::ShapeRef.new(shape: InactivityTimeoutMinutes, location_name: 'inactivityTimeoutMinutes', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The amount of time the Dev Environment will run without any activity detected before stopping, in minutes.</p>", "smithy.api#required" => {}}))
    GetDevEnvironmentResponse.add_member(:persistent_storage, Smithy::Schema::Shapes::ShapeRef.new(shape: PersistentStorage, location_name: 'persistentStorage', traits: {"smithy.api#documentation" => "<p>Information about the amount of storage allocated to the Dev Environment.  By default, a Dev Environment is configured to have 16GB of persistent storage.</p>", "smithy.api#required" => {}}))
    GetDevEnvironmentResponse.add_member(:vpc_connection_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'vpcConnectionName', traits: {"smithy.api#documentation" => "<p>The name of the connection used to connect to Amazon VPC used when the Dev Environment was created, if any.</p>"}))
    GetDevEnvironmentResponse.type = Types::GetDevEnvironmentResponse
    GetProjectRequest.add_member(:space_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'spaceName', traits: {"smithy.api#documentation" => "<p>The name of the space.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetProjectRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the project in the space.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "projectName"}))
    GetProjectRequest.type = Types::GetProjectRequest
    GetProjectResponse.add_member(:space_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'spaceName', traits: {"smithy.api#documentation" => "<p>The name of the space.</p>"}))
    GetProjectResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the project in the space.</p>", "smithy.api#required" => {}}))
    GetProjectResponse.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'displayName', traits: {"smithy.api#documentation" => "<p>The friendly name of the project displayed to users in Amazon CodeCatalyst.</p>"}))
    GetProjectResponse.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the project.</p>"}))
    GetProjectResponse.type = Types::GetProjectResponse
    GetSourceRepositoryCloneUrlsRequest.add_member(:space_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'spaceName', traits: {"smithy.api#documentation" => "<p>The name of the space.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSourceRepositoryCloneUrlsRequest.add_member(:project_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'projectName', traits: {"smithy.api#documentation" => "<p>The name of the project in the space.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSourceRepositoryCloneUrlsRequest.add_member(:source_repository_name, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceRepositoryNameString, location_name: 'sourceRepositoryName', traits: {"smithy.api#documentation" => "<p>The name of the source repository.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSourceRepositoryCloneUrlsRequest.type = Types::GetSourceRepositoryCloneUrlsRequest
    GetSourceRepositoryCloneUrlsResponse.add_member(:https, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'https', traits: {"smithy.api#documentation" => "<p>The HTTPS URL to use when cloning the source repository.</p>", "smithy.api#required" => {}}))
    GetSourceRepositoryCloneUrlsResponse.type = Types::GetSourceRepositoryCloneUrlsResponse
    GetSourceRepositoryRequest.add_member(:space_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'spaceName', traits: {"smithy.api#documentation" => "<p>The name of the space.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSourceRepositoryRequest.add_member(:project_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'projectName', traits: {"smithy.api#documentation" => "<p>The name of the project in the space.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSourceRepositoryRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceRepositoryNameString, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the source repository.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "sourceRepositoryName"}))
    GetSourceRepositoryRequest.type = Types::GetSourceRepositoryRequest
    GetSourceRepositoryResponse.add_member(:space_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'spaceName', traits: {"smithy.api#documentation" => "<p>The name of the space.</p>", "smithy.api#required" => {}}))
    GetSourceRepositoryResponse.add_member(:project_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'projectName', traits: {"smithy.api#documentation" => "<p>The name of the project in the space.</p>", "smithy.api#required" => {}}))
    GetSourceRepositoryResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceRepositoryNameString, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the source repository.</p>", "smithy.api#required" => {}}))
    GetSourceRepositoryResponse.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceRepositoryDescriptionString, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the source repository.</p>"}))
    GetSourceRepositoryResponse.add_member(:last_updated_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdatedTime', traits: {"smithy.api#documentation" => "<p>The time the source repository was last updated, in coordinated universal time (UTC) timestamp format as specified in <a href=\"https://www.rfc-editor.org/rfc/rfc3339#section-5.6\">RFC 3339</a>.</p>", "smithy.api#required" => {}}))
    GetSourceRepositoryResponse.add_member(:created_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdTime', traits: {"smithy.api#documentation" => "<p>The time the source repository was created, in coordinated universal time (UTC) timestamp format as specified in <a href=\"https://www.rfc-editor.org/rfc/rfc3339#section-5.6\">RFC 3339</a>.</p>", "smithy.api#required" => {}}))
    GetSourceRepositoryResponse.type = Types::GetSourceRepositoryResponse
    GetSpaceRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the space.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "spaceName"}))
    GetSpaceRequest.type = Types::GetSpaceRequest
    GetSpaceResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the space.</p>", "smithy.api#required" => {}}))
    GetSpaceResponse.add_member(:region_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RegionString, location_name: 'regionName', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services Region where the space exists.</p>", "smithy.api#required" => {}}))
    GetSpaceResponse.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'displayName', traits: {"smithy.api#documentation" => "<p>The friendly name of the space displayed to users.</p>"}))
    GetSpaceResponse.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the space.</p>"}))
    GetSpaceResponse.type = Types::GetSpaceResponse
    GetSubscriptionRequest.add_member(:space_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'spaceName', traits: {"smithy.api#documentation" => "<p>The name of the space.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSubscriptionRequest.type = Types::GetSubscriptionRequest
    GetSubscriptionResponse.add_member(:subscription_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'subscriptionType', traits: {"smithy.api#documentation" => "<p>The type of the billing plan for the space.</p>"}))
    GetSubscriptionResponse.add_member(:aws_account_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'awsAccountName', traits: {"smithy.api#documentation" => "<p>The display name of the Amazon Web Services account used for billing for the space.</p>"}))
    GetSubscriptionResponse.add_member(:pending_subscription_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'pendingSubscriptionType', traits: {"smithy.api#documentation" => "<p>The type of the billing plan that the space will be changed to at the start of the next billing cycle. This applies\n    only to changes that reduce the functionality available for the space. Billing plan changes that increase functionality\n    are applied immediately. For more information, see <a href=\"https://codecatalyst.aws/explore/pricing\">Pricing</a>.</p>"}))
    GetSubscriptionResponse.add_member(:pending_subscription_start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'pendingSubscriptionStartTime', traits: {"smithy.api#documentation" => "<p>The day and time the pending change will be applied to the space, in coordinated universal time (UTC) timestamp format as specified in <a href=\"https://www.rfc-editor.org/rfc/rfc3339#section-5.6\">RFC 3339</a>.</p>", "smithy.api#timestampFormat" => "date-time"}))
    GetSubscriptionResponse.type = Types::GetSubscriptionResponse
    GetUserDetailsRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The system-generated unique ID of the user. </p>", "smithy.api#httpQuery" => "id", "smithy.api#length" => {"min" => 1, "max" => 256}}))
    GetUserDetailsRequest.add_member(:user_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'userName', traits: {"smithy.api#documentation" => "<p>The name of the user as displayed in Amazon CodeCatalyst.</p>", "smithy.api#httpQuery" => "userName", "smithy.api#length" => {"min" => 3, "max" => 100}, "smithy.api#pattern" => "^[a-zA-Z0-9_.-]{3,100}$"}))
    GetUserDetailsRequest.type = Types::GetUserDetailsRequest
    GetUserDetailsResponse.add_member(:user_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'userId', traits: {"smithy.api#documentation" => "<p>The system-generated unique ID of the user.</p>"}))
    GetUserDetailsResponse.add_member(:user_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'userName', traits: {"smithy.api#documentation" => "<p>The name of the user as displayed in Amazon CodeCatalyst.</p>"}))
    GetUserDetailsResponse.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'displayName', traits: {"smithy.api#documentation" => "<p>The friendly name displayed for the user in Amazon CodeCatalyst.</p>"}))
    GetUserDetailsResponse.add_member(:primary_email, Smithy::Schema::Shapes::ShapeRef.new(shape: EmailAddress, location_name: 'primaryEmail', traits: {"smithy.api#documentation" => "<p>The email address provided by the user when they signed up.</p>"}))
    GetUserDetailsResponse.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'version', traits: {"smithy.api#documentation" => "<p/>"}))
    GetUserDetailsResponse.type = Types::GetUserDetailsResponse
    GetWorkflowRequest.add_member(:space_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'spaceName', traits: {"smithy.api#documentation" => "<p>The name of the space.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetWorkflowRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the workflow. To rerieve a list of workflow IDs, use <a>ListWorkflows</a>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "workflowId"}))
    GetWorkflowRequest.add_member(:project_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'projectName', traits: {"smithy.api#documentation" => "<p>The name of the project in the space.</p>", "smithy.api#httpLabel" => {}, "smithy.api#length" => {"min" => 1}, "smithy.api#required" => {}}))
    GetWorkflowRequest.type = Types::GetWorkflowRequest
    GetWorkflowResponse.add_member(:space_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'spaceName', traits: {"smithy.api#documentation" => "<p>The name of the space.</p>", "smithy.api#required" => {}}))
    GetWorkflowResponse.add_member(:project_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'projectName', traits: {"smithy.api#documentation" => "<p>The name of the project in the space.</p>", "smithy.api#required" => {}}))
    GetWorkflowResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the workflow.</p>", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "workflowId"}))
    GetWorkflowResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the workflow.</p>", "smithy.api#required" => {}}))
    GetWorkflowResponse.add_member(:source_repository_name, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceRepositoryNameString, location_name: 'sourceRepositoryName', traits: {"smithy.api#documentation" => "<p>The name of the source repository where the workflow YAML is stored.</p>"}))
    GetWorkflowResponse.add_member(:source_branch_name, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceRepositoryBranchString, location_name: 'sourceBranchName', traits: {"smithy.api#documentation" => "<p>The name of the branch that contains the workflow YAML.</p>"}))
    GetWorkflowResponse.add_member(:definition, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowDefinition, location_name: 'definition', traits: {"smithy.api#documentation" => "<p>Information about the workflow definition file for the workflow.</p>", "smithy.api#required" => {}}))
    GetWorkflowResponse.add_member(:created_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdTime', traits: {"smithy.api#documentation" => "<p>The date and time the workflow was created, in coordinated universal time (UTC) timestamp format as specified in <a href=\"https://www.rfc-editor.org/rfc/rfc3339#section-5.6\">RFC 3339</a>\n         </p>", "smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    GetWorkflowResponse.add_member(:last_updated_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdatedTime', traits: {"smithy.api#documentation" => "<p>The date and time the workflow was last updated, in coordinated universal time (UTC) timestamp format as specified in <a href=\"https://www.rfc-editor.org/rfc/rfc3339#section-5.6\">RFC 3339</a>\n         </p>", "smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    GetWorkflowResponse.add_member(:run_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowRunMode, location_name: 'runMode', traits: {"smithy.api#documentation" => "<p>The behavior to use when multiple workflows occur at the same time. For more information, see \n      <a href=\"https://docs.aws.amazon.com/codecatalyst/latest/userguide/workflows-configure-runs.html\">https://docs.aws.amazon.com/codecatalyst/latest/userguide/workflows-configure-runs.html</a> in the Amazon CodeCatalyst User Guide.</p>", "smithy.api#required" => {}}))
    GetWorkflowResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the workflow.</p>", "smithy.api#required" => {}}))
    GetWorkflowResponse.type = Types::GetWorkflowResponse
    GetWorkflowRunRequest.add_member(:space_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'spaceName', traits: {"smithy.api#documentation" => "<p>The name of the space.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetWorkflowRunRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the workflow run. To retrieve a list of workflow run IDs, use <a>ListWorkflowRuns</a>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "workflowRunId"}))
    GetWorkflowRunRequest.add_member(:project_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'projectName', traits: {"smithy.api#documentation" => "<p>The name of the project in the space.</p>", "smithy.api#httpLabel" => {}, "smithy.api#length" => {"min" => 1}, "smithy.api#required" => {}}))
    GetWorkflowRunRequest.type = Types::GetWorkflowRunRequest
    GetWorkflowRunResponse.add_member(:space_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'spaceName', traits: {"smithy.api#documentation" => "<p>The name of the space.</p>", "smithy.api#required" => {}}))
    GetWorkflowRunResponse.add_member(:project_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'projectName', traits: {"smithy.api#documentation" => "<p>The name of the project in the space.</p>", "smithy.api#required" => {}}))
    GetWorkflowRunResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The ID of the workflow run.</p>", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "workflowRunId"}))
    GetWorkflowRunResponse.add_member(:workflow_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'workflowId', traits: {"smithy.api#documentation" => "<p>The ID of the workflow.</p>", "smithy.api#required" => {}}))
    GetWorkflowRunResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowRunStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the workflow run.</p>", "smithy.api#required" => {}}))
    GetWorkflowRunResponse.add_member(:status_reasons, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowRunStatusReasons, location_name: 'statusReasons', traits: {"smithy.api#documentation" => "<p>Information about the reasons for the status of the workflow run.</p>"}))
    GetWorkflowRunResponse.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'startTime', traits: {"smithy.api#documentation" => "<p>The date and time the workflow run began, in coordinated universal time (UTC) timestamp format as specified in <a href=\"https://www.rfc-editor.org/rfc/rfc3339#section-5.6\">RFC 3339</a>\n         </p>", "smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    GetWorkflowRunResponse.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'endTime', traits: {"smithy.api#documentation" => "<p>The date and time the workflow run ended, in coordinated universal time (UTC) timestamp format as specified in <a href=\"https://www.rfc-editor.org/rfc/rfc3339#section-5.6\">RFC 3339</a>.</p>", "smithy.api#timestampFormat" => "date-time"}))
    GetWorkflowRunResponse.add_member(:last_updated_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdatedTime', traits: {"smithy.api#documentation" => "<p>The date and time the workflow run status was last updated, in coordinated universal time (UTC) timestamp format as specified in <a href=\"https://www.rfc-editor.org/rfc/rfc3339#section-5.6\">RFC 3339</a>\n         </p>", "smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    GetWorkflowRunResponse.type = Types::GetWorkflowRunResponse
    Ide.add_member(:runtime, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'runtime', traits: {"smithy.api#documentation" => "<p>A link to the IDE runtime image.</p>", "smithy.api#length" => {"min" => 1, "max" => 400}}))
    Ide.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the IDE.</p>", "smithy.api#length" => {"min" => 1, "max" => 128}}))
    Ide.type = Types::Ide
    IdeConfiguration.add_member(:runtime, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'runtime', traits: {"smithy.api#documentation" => "<p>A link to the IDE runtime image. </p>\n         <note>\n            <p>This parameter is not required for <code>VSCode</code>.</p>\n         </note>", "smithy.api#length" => {"min" => 1, "max" => 400}}))
    IdeConfiguration.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the IDE. Valid values include <code>Cloud9</code>, <code>IntelliJ</code>, <code>PyCharm</code>, <code>GoLand</code>, and <code>VSCode</code>.</p>", "smithy.api#length" => {"min" => 1, "max" => 128}}))
    IdeConfiguration.type = Types::IdeConfiguration
    IdeConfigurationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: IdeConfiguration)
    Ides.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Ide)
    ListAccessTokensRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to show in a single call to this API. If the number of results is larger than the number you specified, the response will include a <code>NextToken</code> element, which you can use to obtain additional results.</p>", "smithy.api#range" => {"max" => 10}}))
    ListAccessTokensRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token returned from a call to this API to indicate the next batch of results to return, if any.</p>", "smithy.api#length" => {"min" => 1, "max" => 10000}}))
    ListAccessTokensRequest.type = Types::ListAccessTokensRequest
    ListAccessTokensResponse.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessTokenSummaries, location_name: 'items', traits: {"smithy.api#documentation" => "<p>A list of personal access tokens (PATs) associated with the calling user identity.</p>", "smithy.api#required" => {}}))
    ListAccessTokensResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token returned from a call to this API to indicate the next batch of results to return, if any.</p>"}))
    ListAccessTokensResponse.type = Types::ListAccessTokensResponse
    ListDevEnvironmentSessionsRequest.add_member(:space_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'spaceName', traits: {"smithy.api#documentation" => "<p>The name of the space.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListDevEnvironmentSessionsRequest.add_member(:project_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'projectName', traits: {"smithy.api#documentation" => "<p>The name of the project in the space.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListDevEnvironmentSessionsRequest.add_member(:dev_environment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'devEnvironmentId', traits: {"smithy.api#documentation" => "<p>The system-generated unique ID of the Dev Environment.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "devEnvironmentId"}))
    ListDevEnvironmentSessionsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token returned from a call to this API to indicate the next batch of results to return, if any.</p>", "smithy.api#length" => {"min" => 1, "max" => 10000}}))
    ListDevEnvironmentSessionsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to show in a single call to this API. If the number of results is larger than the number you specified, the response will include a <code>NextToken</code> element, which you can use to obtain additional results.</p>", "smithy.api#range" => {"min" => 1, "max" => 200}}))
    ListDevEnvironmentSessionsRequest.type = Types::ListDevEnvironmentSessionsRequest
    ListDevEnvironmentSessionsResponse.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: DevEnvironmentSessionsSummaryList, location_name: 'items', traits: {"smithy.api#documentation" => "<p>Information about each session retrieved in the list.</p>", "smithy.api#required" => {}}))
    ListDevEnvironmentSessionsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token returned from a call to this API to indicate the next batch of results to return, if any.</p>"}))
    ListDevEnvironmentSessionsResponse.type = Types::ListDevEnvironmentSessionsResponse
    ListDevEnvironmentsRequest.add_member(:space_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'spaceName', traits: {"smithy.api#documentation" => "<p>The name of the space.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListDevEnvironmentsRequest.add_member(:project_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'projectName', traits: {"smithy.api#documentation" => "<p>The name of the project in the space.</p>"}))
    ListDevEnvironmentsRequest.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: Filters, location_name: 'filters', traits: {"smithy.api#documentation" => "<p>Information about filters to apply to narrow the results returned in the list.</p>"}))
    ListDevEnvironmentsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token returned from a call to this API to indicate the next batch of results to return, if any.</p>", "smithy.api#length" => {"min" => 1, "max" => 10000}}))
    ListDevEnvironmentsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to show in a single call to this API. If the number of results is larger than the number you specified, the response will include a <code>NextToken</code> element, which you can use to obtain additional results.</p>", "smithy.api#range" => {"min" => 1, "max" => 50}}))
    ListDevEnvironmentsRequest.type = Types::ListDevEnvironmentsRequest
    ListDevEnvironmentsResponse.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: DevEnvironmentSummaryList, location_name: 'items', traits: {"smithy.api#documentation" => "<p>Information about the Dev Environments in a project.</p>", "smithy.api#required" => {}}))
    ListDevEnvironmentsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token returned from a call to this API to indicate the next batch of results to return, if any.</p>"}))
    ListDevEnvironmentsResponse.type = Types::ListDevEnvironmentsResponse
    ListEventLogsRequest.add_member(:space_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'spaceName', traits: {"smithy.api#documentation" => "<p>The name of the space.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListEventLogsRequest.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'startTime', traits: {"smithy.api#documentation" => "<p>The date and time when you want to start retrieving events, in coordinated universal time (UTC) timestamp format as specified in <a href=\"https://www.rfc-editor.org/rfc/rfc3339#section-5.6\">RFC 3339</a>.</p>", "smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    ListEventLogsRequest.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'endTime', traits: {"smithy.api#documentation" => "<p>The time after which you do not want any events retrieved, in coordinated universal time (UTC) timestamp format as specified in <a href=\"https://www.rfc-editor.org/rfc/rfc3339#section-5.6\">RFC 3339</a>.</p>", "smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    ListEventLogsRequest.add_member(:event_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'eventName', traits: {"smithy.api#documentation" => "<p>The name of the event.</p>"}))
    ListEventLogsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token returned from a call to this API to indicate the next batch of results to return, if any.</p>", "smithy.api#length" => {"min" => 1, "max" => 10000}}))
    ListEventLogsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to show in a single call to this API. If the number of results is larger than the number you specified, the response will include a <code>NextToken</code> element, which you can use to obtain additional results.</p>", "smithy.api#range" => {"min" => 1, "max" => 250}}))
    ListEventLogsRequest.type = Types::ListEventLogsRequest
    ListEventLogsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token returned from a call to this API to indicate the next batch of results to return, if any.</p>"}))
    ListEventLogsResponse.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: EventLogEntries, location_name: 'items', traits: {"smithy.api#documentation" => "<p>Information about each event retrieved in the list.</p>", "smithy.api#required" => {}}))
    ListEventLogsResponse.type = Types::ListEventLogsResponse
    ListProjectsRequest.add_member(:space_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'spaceName', traits: {"smithy.api#documentation" => "<p>The name of the space.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListProjectsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token returned from a call to this API to indicate the next batch of results to return, if any.</p>", "smithy.api#length" => {"min" => 1, "max" => 10000}}))
    ListProjectsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to show in a single call to this API. If the number of results is larger than the number you specified, the response will include a <code>NextToken</code> element, which you can use to obtain additional results.</p>", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListProjectsRequest.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectListFilters, location_name: 'filters', traits: {"smithy.api#documentation" => "<p>Information about filters to apply to narrow the results returned in the list.</p>"}))
    ListProjectsRequest.type = Types::ListProjectsRequest
    ListProjectsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token returned from a call to this API to indicate the next batch of results to return, if any.</p>"}))
    ListProjectsResponse.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectSummaries, location_name: 'items', traits: {"smithy.api#documentation" => "<p>Information about the projects.</p>"}))
    ListProjectsResponse.type = Types::ListProjectsResponse
    ListSourceRepositoriesItem.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceRepositoryIdString, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The system-generated unique ID of the source repository.</p>", "smithy.api#required" => {}}))
    ListSourceRepositoriesItem.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceRepositoryNameString, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the source repository.</p>", "smithy.api#required" => {}}))
    ListSourceRepositoriesItem.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceRepositoryDescriptionString, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the repository, if any.</p>"}))
    ListSourceRepositoriesItem.add_member(:last_updated_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdatedTime', traits: {"smithy.api#documentation" => "<p>The time the source repository was last updated, in coordinated universal time (UTC) timestamp format as specified in <a href=\"https://www.rfc-editor.org/rfc/rfc3339#section-5.6\">RFC 3339</a>.</p>", "smithy.api#required" => {}}))
    ListSourceRepositoriesItem.add_member(:created_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdTime', traits: {"smithy.api#documentation" => "<p>The time the source repository was created, in coordinated universal time (UTC) timestamp format as specified in <a href=\"https://www.rfc-editor.org/rfc/rfc3339#section-5.6\">RFC 3339</a>.</p>", "smithy.api#required" => {}}))
    ListSourceRepositoriesItem.type = Types::ListSourceRepositoriesItem
    ListSourceRepositoriesItems.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSourceRepositoriesItem)
    ListSourceRepositoriesRequest.add_member(:space_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'spaceName', traits: {"smithy.api#documentation" => "<p>The name of the space.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListSourceRepositoriesRequest.add_member(:project_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'projectName', traits: {"smithy.api#documentation" => "<p>The name of the project in the space.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListSourceRepositoriesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token returned from a call to this API to indicate the next batch of results to return, if any.</p>", "smithy.api#length" => {"min" => 1, "max" => 10000}}))
    ListSourceRepositoriesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to show in a single call to this API. If the number of results is larger than the number you specified, the response will include a <code>NextToken</code> element, which you can use to obtain additional results.</p>", "smithy.api#range" => {"min" => 1, "max" => 200}}))
    ListSourceRepositoriesRequest.type = Types::ListSourceRepositoriesRequest
    ListSourceRepositoriesResponse.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: ListSourceRepositoriesItems, location_name: 'items', traits: {"smithy.api#documentation" => "<p>Information about the source repositories.</p>"}))
    ListSourceRepositoriesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token returned from a call to this API to indicate the next batch of results to return, if any.</p>"}))
    ListSourceRepositoriesResponse.type = Types::ListSourceRepositoriesResponse
    ListSourceRepositoryBranchesItem.add_member(:ref, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceRepositoryBranchRefString, location_name: 'ref', traits: {"smithy.api#documentation" => "<p>The Git reference name of the branch.</p>"}))
    ListSourceRepositoryBranchesItem.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceRepositoryBranchString, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the branch.</p>"}))
    ListSourceRepositoryBranchesItem.add_member(:last_updated_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdatedTime', traits: {"smithy.api#documentation" => "<p>The time the branch was last updated, in coordinated universal time (UTC) timestamp format as specified in <a href=\"https://www.rfc-editor.org/rfc/rfc3339#section-5.6\">RFC 3339</a>.</p>", "smithy.api#timestampFormat" => "date-time"}))
    ListSourceRepositoryBranchesItem.add_member(:head_commit_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'headCommitId', traits: {"smithy.api#documentation" => "<p>The commit ID of the tip of the branch at the time of the request, also known as the head commit.</p>"}))
    ListSourceRepositoryBranchesItem.type = Types::ListSourceRepositoryBranchesItem
    ListSourceRepositoryBranchesItems.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSourceRepositoryBranchesItem)
    ListSourceRepositoryBranchesRequest.add_member(:space_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'spaceName', traits: {"smithy.api#documentation" => "<p>The name of the space.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListSourceRepositoryBranchesRequest.add_member(:project_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'projectName', traits: {"smithy.api#documentation" => "<p>The name of the project in the space.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListSourceRepositoryBranchesRequest.add_member(:source_repository_name, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceRepositoryNameString, location_name: 'sourceRepositoryName', traits: {"smithy.api#documentation" => "<p>The name of the source repository.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListSourceRepositoryBranchesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token returned from a call to this API to indicate the next batch of results to return, if any.</p>", "smithy.api#length" => {"min" => 1, "max" => 10000}}))
    ListSourceRepositoryBranchesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to show in a single call to this API. If the number of results is larger than the number you specified, the response will include a <code>NextToken</code> element, which you can use to obtain additional results.</p>", "smithy.api#range" => {"min" => 1, "max" => 50}}))
    ListSourceRepositoryBranchesRequest.type = Types::ListSourceRepositoryBranchesRequest
    ListSourceRepositoryBranchesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token returned from a call to this API to indicate the next batch of results to return, if any.</p>"}))
    ListSourceRepositoryBranchesResponse.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: ListSourceRepositoryBranchesItems, location_name: 'items', traits: {"smithy.api#documentation" => "<p>Information about the source branches.</p>", "smithy.api#required" => {}}))
    ListSourceRepositoryBranchesResponse.type = Types::ListSourceRepositoryBranchesResponse
    ListSpacesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token returned from a call to this API to indicate the next batch of results to return, if any.</p>", "smithy.api#length" => {"min" => 1, "max" => 10000}}))
    ListSpacesRequest.type = Types::ListSpacesRequest
    ListSpacesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token returned from a call to this API to indicate the next batch of results to return, if any.</p>"}))
    ListSpacesResponse.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: SpaceSummaries, location_name: 'items', traits: {"smithy.api#documentation" => "<p>Information about the spaces. </p>"}))
    ListSpacesResponse.type = Types::ListSpacesResponse
    ListWorkflowRunsRequest.add_member(:space_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'spaceName', traits: {"smithy.api#documentation" => "<p>The name of the space.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListWorkflowRunsRequest.add_member(:workflow_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'workflowId', traits: {"smithy.api#documentation" => "<p>The ID of the workflow. To retrieve a list of workflow IDs, use <a>ListWorkflows</a>.</p>", "smithy.api#httpQuery" => "workflowId"}))
    ListWorkflowRunsRequest.add_member(:project_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'projectName', traits: {"smithy.api#documentation" => "<p>The name of the project in the space.</p>", "smithy.api#httpLabel" => {}, "smithy.api#length" => {"min" => 1}, "smithy.api#required" => {}}))
    ListWorkflowRunsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token returned from a call to this API to indicate the next batch of results to return, if any.</p>", "smithy.api#httpQuery" => "nextToken", "smithy.api#length" => {"min" => 1, "max" => 2048}}))
    ListWorkflowRunsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to show in a single call to this API. If the number of results is larger than the number you specified, the response will include a <code>NextToken</code> element, which you can use to obtain additional results.</p>", "smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 50}}))
    ListWorkflowRunsRequest.add_member(:sort_by, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowRunSortCriteriaList, location_name: 'sortBy', traits: {"smithy.api#documentation" => "<p>Information used to sort the items in the returned list.</p>"}))
    ListWorkflowRunsRequest.type = Types::ListWorkflowRunsRequest
    ListWorkflowRunsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token returned from a call to this API to indicate the next batch of results to return, if any.</p>"}))
    ListWorkflowRunsResponse.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowRunSummaries, location_name: 'items', traits: {"smithy.api#documentation" => "<p>Information about the runs of a workflow.</p>"}))
    ListWorkflowRunsResponse.type = Types::ListWorkflowRunsResponse
    ListWorkflowsRequest.add_member(:space_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'spaceName', traits: {"smithy.api#documentation" => "<p>The name of the space.</p>", "smithy.api#httpLabel" => {}, "smithy.api#length" => {"min" => 1}, "smithy.api#required" => {}}))
    ListWorkflowsRequest.add_member(:project_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'projectName', traits: {"smithy.api#documentation" => "<p>The name of the project in the space.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListWorkflowsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token returned from a call to this API to indicate the next batch of results to return, if any.</p>", "smithy.api#httpQuery" => "nextToken", "smithy.api#length" => {"min" => 1, "max" => 2048}}))
    ListWorkflowsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to show in a single call to this API. If the number of results is larger than the number you specified, the response will include a <code>NextToken</code> element, which you can use to obtain additional results.</p>", "smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListWorkflowsRequest.add_member(:sort_by, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowSortCriteriaList, location_name: 'sortBy', traits: {"smithy.api#documentation" => "<p>Information used to sort the items in the returned list.</p>"}))
    ListWorkflowsRequest.type = Types::ListWorkflowsRequest
    ListWorkflowsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token returned from a call to this API to indicate the next batch of results to return, if any.</p>"}))
    ListWorkflowsResponse.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowSummaries, location_name: 'items', traits: {"smithy.api#documentation" => "<p>Information about the workflows in a project.</p>"}))
    ListWorkflowsResponse.type = Types::ListWorkflowsResponse
    PersistentStorage.add_member(:size_in_gi_b, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'sizeInGiB', traits: {"smithy.api#documentation" => "<p>The size of the persistent storage in gigabytes (specifically GiB).</p>\n         <note>\n            <p>Valid values for storage are based on memory sizes in 16GB increments. Valid values are\n        16, 32, and 64.</p>\n         </note>", "smithy.api#range" => {"min" => 0, "max" => 64}, "smithy.api#required" => {}}))
    PersistentStorage.type = Types::PersistentStorage
    PersistentStorageConfiguration.add_member(:size_in_gi_b, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'sizeInGiB', traits: {"smithy.api#documentation" => "<p>The size of the persistent storage in gigabytes (specifically GiB).</p>\n         <note>\n            <p>Valid values for storage are based on memory sizes in 16GB increments. Valid values are\n        16, 32, and 64.</p>\n         </note>", "smithy.api#range" => {"min" => 0, "max" => 64}, "smithy.api#required" => {}}))
    PersistentStorageConfiguration.type = Types::PersistentStorageConfiguration
    ProjectInformation.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the project in the space.</p>"}))
    ProjectInformation.add_member(:project_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'projectId', traits: {"smithy.api#documentation" => "<p>The system-generated unique ID of the project.</p>"}))
    ProjectInformation.type = Types::ProjectInformation
    ProjectListFilter.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: FilterKey, location_name: 'key', traits: {"smithy.api#documentation" => "<p>A key that can be used to sort results.</p>", "smithy.api#required" => {}}))
    ProjectListFilter.add_member(:values, Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'values', traits: {"smithy.api#documentation" => "<p>The values of the key.</p>", "smithy.api#required" => {}}))
    ProjectListFilter.add_member(:comparison_operator, Smithy::Schema::Shapes::ShapeRef.new(shape: ComparisonOperator, location_name: 'comparisonOperator', traits: {"smithy.api#documentation" => "<p>The operator used to compare the fields.</p>"}))
    ProjectListFilter.type = Types::ProjectListFilter
    ProjectListFilters.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectListFilter)
    ProjectSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectSummary)
    ProjectSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the project in the space.</p>", "smithy.api#required" => {}}))
    ProjectSummary.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'displayName', traits: {"smithy.api#documentation" => "<p>The friendly name displayed to users of the project in Amazon CodeCatalyst.</p>"}))
    ProjectSummary.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the project.</p>"}))
    ProjectSummary.type = Types::ProjectSummary
    RepositoriesInput.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryInput)
    RepositoryInput.add_member(:repository_name, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceRepositoryNameString, location_name: 'repositoryName', traits: {"smithy.api#documentation" => "<p>The name of the source repository.</p>", "smithy.api#required" => {}}))
    RepositoryInput.add_member(:branch_name, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceRepositoryBranchString, location_name: 'branchName', traits: {"smithy.api#documentation" => "<p>The name of the branch in a source repository.</p>"}))
    RepositoryInput.type = Types::RepositoryInput
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ServiceQuotaExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    SpaceSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SpaceSummary)
    SpaceSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the space.</p>", "smithy.api#required" => {}}))
    SpaceSummary.add_member(:region_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RegionString, location_name: 'regionName', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services Region\n      where the space exists.</p>", "smithy.api#required" => {}}))
    SpaceSummary.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'displayName', traits: {"smithy.api#documentation" => "<p>The friendly name of the space displayed to users.</p>"}))
    SpaceSummary.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the space.</p>"}))
    SpaceSummary.type = Types::SpaceSummary
    StartDevEnvironmentRequest.add_member(:space_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'spaceName', traits: {"smithy.api#documentation" => "<p>The name of the space.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartDevEnvironmentRequest.add_member(:project_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'projectName', traits: {"smithy.api#documentation" => "<p>The name of the project in the space.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartDevEnvironmentRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The system-generated unique ID of the Dev Environment. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "devEnvironmentId"}))
    StartDevEnvironmentRequest.add_member(:ides, Smithy::Schema::Shapes::ShapeRef.new(shape: IdeConfigurationList, location_name: 'ides', traits: {"smithy.api#documentation" => "<p>Information about the integrated development environment (IDE) configured for a Dev Environment. </p>"}))
    StartDevEnvironmentRequest.add_member(:instance_type, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceType, location_name: 'instanceType', traits: {"smithy.api#documentation" => "<p>The Amazon EC2 instace type to use for the Dev Environment. </p>"}))
    StartDevEnvironmentRequest.add_member(:inactivity_timeout_minutes, Smithy::Schema::Shapes::ShapeRef.new(shape: InactivityTimeoutMinutes, location_name: 'inactivityTimeoutMinutes', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The amount of time the Dev Environment will run without any activity detected before stopping, in minutes. Only whole integers are allowed. Dev Environments consume compute minutes when running.</p>"}))
    StartDevEnvironmentRequest.type = Types::StartDevEnvironmentRequest
    StartDevEnvironmentResponse.add_member(:space_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'spaceName', traits: {"smithy.api#documentation" => "<p>The name of the space.</p>", "smithy.api#required" => {}}))
    StartDevEnvironmentResponse.add_member(:project_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'projectName', traits: {"smithy.api#documentation" => "<p>The name of the project in the space.</p>", "smithy.api#required" => {}}))
    StartDevEnvironmentResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The system-generated unique ID of the Dev Environment. </p>", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "devEnvironmentId"}))
    StartDevEnvironmentResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: DevEnvironmentStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the Dev Environment. </p>", "smithy.api#required" => {}}))
    StartDevEnvironmentResponse.type = Types::StartDevEnvironmentResponse
    StartDevEnvironmentSessionRequest.add_member(:space_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'spaceName', traits: {"smithy.api#documentation" => "<p>The name of the space.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartDevEnvironmentSessionRequest.add_member(:project_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'projectName', traits: {"smithy.api#documentation" => "<p>The name of the project in the space.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartDevEnvironmentSessionRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The system-generated unique ID of the Dev Environment.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "devEnvironmentId"}))
    StartDevEnvironmentSessionRequest.add_member(:session_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: DevEnvironmentSessionConfiguration, location_name: 'sessionConfiguration', traits: {"smithy.api#required" => {}}))
    StartDevEnvironmentSessionRequest.type = Types::StartDevEnvironmentSessionRequest
    StartDevEnvironmentSessionResponse.add_member(:access_details, Smithy::Schema::Shapes::ShapeRef.new(shape: DevEnvironmentAccessDetails, location_name: 'accessDetails', traits: {"smithy.api#required" => {}}))
    StartDevEnvironmentSessionResponse.add_member(:session_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'sessionId', traits: {"smithy.api#documentation" => "<p>The system-generated unique ID of the Dev Environment session.</p>", "smithy.api#length" => {"min" => 1, "max" => 96}}))
    StartDevEnvironmentSessionResponse.add_member(:space_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'spaceName', traits: {"smithy.api#documentation" => "<p>The name of the space.</p>", "smithy.api#required" => {}}))
    StartDevEnvironmentSessionResponse.add_member(:project_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'projectName', traits: {"smithy.api#documentation" => "<p>The name of the project in the space.</p>", "smithy.api#required" => {}}))
    StartDevEnvironmentSessionResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The system-generated unique ID of the Dev Environment.</p>", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "devEnvironmentId"}))
    StartDevEnvironmentSessionResponse.type = Types::StartDevEnvironmentSessionResponse
    StartWorkflowRunRequest.add_member(:space_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'spaceName', traits: {"smithy.api#documentation" => "<p>The name of the space.</p>", "smithy.api#httpLabel" => {}, "smithy.api#length" => {"min" => 1}, "smithy.api#required" => {}}))
    StartWorkflowRunRequest.add_member(:project_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'projectName', traits: {"smithy.api#documentation" => "<p>The name of the project in the space.</p>", "smithy.api#httpLabel" => {}, "smithy.api#length" => {"min" => 1}, "smithy.api#required" => {}}))
    StartWorkflowRunRequest.add_member(:workflow_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'workflowId', traits: {"smithy.api#documentation" => "<p>The system-generated unique ID of the workflow. To retrieve a list of workflow IDs, use <a>ListWorkflows</a>.</p>", "smithy.api#httpQuery" => "workflowId", "smithy.api#required" => {}}))
    StartWorkflowRunRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A user-specified idempotency token.  Idempotency ensures that an API request completes only once. \n       With an idempotent request, if the original request completes successfully, the subsequent retries return the result from the original successful request and have no additional effect.</p>", "smithy.api#idempotencyToken" => {}, "smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9]+(?:[-_\\.][a-zA-Z0-9]+)*$"}))
    StartWorkflowRunRequest.type = Types::StartWorkflowRunRequest
    StartWorkflowRunResponse.add_member(:space_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'spaceName', traits: {"smithy.api#documentation" => "<p>The name of the space.</p>", "smithy.api#required" => {}}))
    StartWorkflowRunResponse.add_member(:project_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'projectName', traits: {"smithy.api#documentation" => "<p>The name of the project in the space.</p>", "smithy.api#required" => {}}))
    StartWorkflowRunResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The system-generated unique ID of the workflow run.</p>", "smithy.api#required" => {}}))
    StartWorkflowRunResponse.add_member(:workflow_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'workflowId', traits: {"smithy.api#documentation" => "<p>The system-generated unique ID of the workflow.</p>", "smithy.api#required" => {}}))
    StartWorkflowRunResponse.type = Types::StartWorkflowRunResponse
    StopDevEnvironmentRequest.add_member(:space_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'spaceName', traits: {"smithy.api#documentation" => "<p>The name of the space.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StopDevEnvironmentRequest.add_member(:project_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'projectName', traits: {"smithy.api#documentation" => "<p>The name of the project in the space.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StopDevEnvironmentRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The system-generated unique ID of the Dev Environment. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "devEnvironmentId"}))
    StopDevEnvironmentRequest.type = Types::StopDevEnvironmentRequest
    StopDevEnvironmentResponse.add_member(:space_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'spaceName', traits: {"smithy.api#documentation" => "<p>The name of the space.</p>", "smithy.api#required" => {}}))
    StopDevEnvironmentResponse.add_member(:project_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'projectName', traits: {"smithy.api#documentation" => "<p>The name of the project in the space.</p>", "smithy.api#required" => {}}))
    StopDevEnvironmentResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The system-generated unique ID of the Dev Environment. </p>", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "devEnvironmentId"}))
    StopDevEnvironmentResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: DevEnvironmentStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the Dev Environment. </p>", "smithy.api#required" => {}}))
    StopDevEnvironmentResponse.type = Types::StopDevEnvironmentResponse
    StopDevEnvironmentSessionRequest.add_member(:space_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'spaceName', traits: {"smithy.api#documentation" => "<p>The name of the space.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StopDevEnvironmentSessionRequest.add_member(:project_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'projectName', traits: {"smithy.api#documentation" => "<p>The name of the project in the space.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StopDevEnvironmentSessionRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The system-generated unique ID of the Dev Environment. To obtain this ID, use <a>ListDevEnvironments</a>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "devEnvironmentId"}))
    StopDevEnvironmentSessionRequest.add_member(:session_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'sessionId', traits: {"smithy.api#documentation" => "<p>The system-generated unique ID of the Dev Environment session. This ID is returned by <a>StartDevEnvironmentSession</a>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#length" => {"min" => 1, "max" => 96}, "smithy.api#required" => {}}))
    StopDevEnvironmentSessionRequest.type = Types::StopDevEnvironmentSessionRequest
    StopDevEnvironmentSessionResponse.add_member(:space_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'spaceName', traits: {"smithy.api#documentation" => "<p>The name of the space.</p>", "smithy.api#required" => {}}))
    StopDevEnvironmentSessionResponse.add_member(:project_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'projectName', traits: {"smithy.api#documentation" => "<p>The name of the project in the space.</p>", "smithy.api#required" => {}}))
    StopDevEnvironmentSessionResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The system-generated unique ID of the Dev Environment.</p>", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "devEnvironmentId"}))
    StopDevEnvironmentSessionResponse.add_member(:session_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'sessionId', traits: {"smithy.api#documentation" => "<p>The system-generated unique ID of the Dev Environment session.</p>", "smithy.api#length" => {"min" => 1, "max" => 96}, "smithy.api#required" => {}}))
    StopDevEnvironmentSessionResponse.type = Types::StopDevEnvironmentSessionResponse
    StringList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String)
    ThrottlingException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ThrottlingException.type = Types::ThrottlingException
    UpdateDevEnvironmentRequest.add_member(:space_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'spaceName', traits: {"smithy.api#documentation" => "<p>The name of the space.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateDevEnvironmentRequest.add_member(:project_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'projectName', traits: {"smithy.api#documentation" => "<p>The name of the project in the space.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateDevEnvironmentRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The system-generated unique ID of the Dev Environment. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "devEnvironmentId"}))
    UpdateDevEnvironmentRequest.add_member(:alias, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'alias', traits: {"smithy.api#documentation" => "<p>The user-specified alias for the Dev Environment. Changing this value will not cause a restart.</p>", "smithy.api#length" => {"max" => 128}, "smithy.api#pattern" => "^$|^[a-zA-Z0-9]+(?:[-_\\.][a-zA-Z0-9]+)*$"}))
    UpdateDevEnvironmentRequest.add_member(:ides, Smithy::Schema::Shapes::ShapeRef.new(shape: IdeConfigurationList, location_name: 'ides', traits: {"smithy.api#documentation" => "<p>Information about the integrated development environment (IDE) configured for a Dev Environment.</p>"}))
    UpdateDevEnvironmentRequest.add_member(:instance_type, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceType, location_name: 'instanceType', traits: {"smithy.api#documentation" => "<p>The Amazon EC2 instace type to use for the Dev Environment. </p>\n         <note>\n            <p>Changing this value will cause a restart of the Dev Environment if it is running.</p>\n         </note>"}))
    UpdateDevEnvironmentRequest.add_member(:inactivity_timeout_minutes, Smithy::Schema::Shapes::ShapeRef.new(shape: InactivityTimeoutMinutes, location_name: 'inactivityTimeoutMinutes', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The amount of time the Dev Environment will run without any activity detected before stopping, in minutes. \n      Only whole integers are allowed. Dev Environments consume compute minutes when running.</p>\n         <note>\n            <p>Changing this value will cause a restart of the Dev Environment if it is running.</p>\n         </note>"}))
    UpdateDevEnvironmentRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A user-specified idempotency token.  Idempotency ensures that an API request completes only once. \n       With an idempotent request, if the original request completes successfully, the subsequent retries return the result from the original successful request and have no additional effect.</p>"}))
    UpdateDevEnvironmentRequest.type = Types::UpdateDevEnvironmentRequest
    UpdateDevEnvironmentResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The system-generated unique ID of the Dev Environment. </p>", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "devEnvironmentId"}))
    UpdateDevEnvironmentResponse.add_member(:space_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'spaceName', traits: {"smithy.api#documentation" => "<p>The name of the space.</p>", "smithy.api#required" => {}}))
    UpdateDevEnvironmentResponse.add_member(:project_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'projectName', traits: {"smithy.api#documentation" => "<p>The name of the project in the space.</p>", "smithy.api#required" => {}}))
    UpdateDevEnvironmentResponse.add_member(:alias, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'alias', traits: {"smithy.api#documentation" => "<p>The user-specified alias for the Dev Environment.</p>", "smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9]+(?:[-_\\.][a-zA-Z0-9]+)*$"}))
    UpdateDevEnvironmentResponse.add_member(:ides, Smithy::Schema::Shapes::ShapeRef.new(shape: IdeConfigurationList, location_name: 'ides', traits: {"smithy.api#documentation" => "<p>Information about the integrated development environment (IDE) configured for the Dev Environment.</p>"}))
    UpdateDevEnvironmentResponse.add_member(:instance_type, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceType, location_name: 'instanceType', traits: {"smithy.api#documentation" => "<p>The Amazon EC2 instace type to use for the Dev Environment. </p>"}))
    UpdateDevEnvironmentResponse.add_member(:inactivity_timeout_minutes, Smithy::Schema::Shapes::ShapeRef.new(shape: InactivityTimeoutMinutes, location_name: 'inactivityTimeoutMinutes', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The amount of time the Dev Environment will run without any activity detected before stopping, in minutes. </p>"}))
    UpdateDevEnvironmentResponse.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A user-specified idempotency token.  Idempotency ensures that an API request completes only once. \n       With an idempotent request, if the original request completes successfully, the subsequent retries return the result from the original successful request and have no additional effect.</p>"}))
    UpdateDevEnvironmentResponse.type = Types::UpdateDevEnvironmentResponse
    UpdateProjectRequest.add_member(:space_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'spaceName', traits: {"smithy.api#documentation" => "<p>The name of the space.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateProjectRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the project.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "projectName"}))
    UpdateProjectRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the project.</p>"}))
    UpdateProjectRequest.type = Types::UpdateProjectRequest
    UpdateProjectResponse.add_member(:space_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'spaceName', traits: {"smithy.api#documentation" => "<p>The name of the space.</p>"}))
    UpdateProjectResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the project.</p>"}))
    UpdateProjectResponse.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'displayName', traits: {"smithy.api#documentation" => "<p>The friendly name of the project displayed to users in Amazon CodeCatalyst.</p>"}))
    UpdateProjectResponse.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the project.</p>"}))
    UpdateProjectResponse.type = Types::UpdateProjectResponse
    UpdateSpaceRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the space.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "spaceName"}))
    UpdateSpaceRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: SpaceDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the space.</p>"}))
    UpdateSpaceRequest.type = Types::UpdateSpaceRequest
    UpdateSpaceResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: NameString, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the space.</p>"}))
    UpdateSpaceResponse.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'displayName', traits: {"smithy.api#documentation" => "<p>The friendly name of the space displayed to users in Amazon CodeCatalyst.</p>"}))
    UpdateSpaceResponse.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the space.</p>"}))
    UpdateSpaceResponse.type = Types::UpdateSpaceResponse
    UserIdentity.add_member(:user_type, Smithy::Schema::Shapes::ShapeRef.new(shape: UserType, location_name: 'userType', traits: {"smithy.api#documentation" => "<p>The role assigned to the user in a Amazon CodeCatalyst space or project when the event occurred.</p>", "smithy.api#required" => {}}))
    UserIdentity.add_member(:principal_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'principalId', traits: {"smithy.api#documentation" => "<p>The ID of the Amazon CodeCatalyst service principal.</p>", "smithy.api#required" => {}}))
    UserIdentity.add_member(:user_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'userName', traits: {"smithy.api#documentation" => "<p>The display name of the user in Amazon CodeCatalyst.</p>"}))
    UserIdentity.add_member(:aws_account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'awsAccountId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account number of the user in Amazon Web Services, if any.</p>"}))
    UserIdentity.type = Types::UserIdentity
    ValidationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ValidationException.type = Types::ValidationException
    VerifySessionResponse.add_member(:identity, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'identity', traits: {"smithy.api#documentation" => "<p>The system-generated unique ID of the user in Amazon CodeCatalyst.</p>", "smithy.api#length" => {"min" => 1, "max" => 256}}))
    VerifySessionResponse.type = Types::VerifySessionResponse
    WorkflowDefinition.add_member(:path, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'path', traits: {"smithy.api#documentation" => "<p>The path to the workflow definition file stored in the source repository for the project, including the file name.</p>", "smithy.api#required" => {}}))
    WorkflowDefinition.type = Types::WorkflowDefinition
    WorkflowDefinitionSummary.add_member(:path, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'path', traits: {"smithy.api#documentation" => "<p>The path to the workflow definition file stored in the source repository for the project, including the file name.</p>", "smithy.api#required" => {}}))
    WorkflowDefinitionSummary.type = Types::WorkflowDefinitionSummary
    WorkflowRunSortCriteria.type = Types::WorkflowRunSortCriteria
    WorkflowRunSortCriteriaList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowRunSortCriteria)
    WorkflowRunStatusReason.type = Types::WorkflowRunStatusReason
    WorkflowRunStatusReasons.member = Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowRunStatusReason)
    WorkflowRunSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowRunSummary)
    WorkflowRunSummary.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The system-generated unique ID of the workflow run.</p>", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "workflowRunId"}))
    WorkflowRunSummary.add_member(:workflow_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'workflowId', traits: {"smithy.api#documentation" => "<p>The system-generated unique ID of the workflow.</p>", "smithy.api#required" => {}}))
    WorkflowRunSummary.add_member(:workflow_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'workflowName', traits: {"smithy.api#documentation" => "<p>The name of the workflow.</p>", "smithy.api#required" => {}}))
    WorkflowRunSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowRunStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the workflow run.</p>", "smithy.api#required" => {}}))
    WorkflowRunSummary.add_member(:status_reasons, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowRunStatusReasons, location_name: 'statusReasons', traits: {"smithy.api#documentation" => "<p>The reasons for the workflow run status.</p>"}))
    WorkflowRunSummary.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'startTime', traits: {"smithy.api#documentation" => "<p>The date and time the workflow run began, in coordinated universal time (UTC) timestamp format as specified in <a href=\"https://www.rfc-editor.org/rfc/rfc3339#section-5.6\">RFC 3339</a>.</p>", "smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    WorkflowRunSummary.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'endTime', traits: {"smithy.api#documentation" => "<p>The date and time the workflow run ended, in coordinated universal time (UTC) timestamp format as specified in <a href=\"https://www.rfc-editor.org/rfc/rfc3339#section-5.6\">RFC 3339</a>\n         </p>", "smithy.api#timestampFormat" => "date-time"}))
    WorkflowRunSummary.add_member(:last_updated_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdatedTime', traits: {"smithy.api#documentation" => "<p>The date and time the workflow was last updated, in coordinated universal time (UTC) timestamp format as specified in <a href=\"https://www.rfc-editor.org/rfc/rfc3339#section-5.6\">RFC 3339</a>\n         </p>", "smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    WorkflowRunSummary.type = Types::WorkflowRunSummary
    WorkflowSortCriteria.type = Types::WorkflowSortCriteria
    WorkflowSortCriteriaList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowSortCriteria)
    WorkflowSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowSummary)
    WorkflowSummary.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Uuid, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The system-generated unique ID of a workflow.</p>", "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "workflowId"}))
    WorkflowSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the workflow.</p>", "smithy.api#required" => {}}))
    WorkflowSummary.add_member(:source_repository_name, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceRepositoryNameString, location_name: 'sourceRepositoryName', traits: {"smithy.api#documentation" => "<p>The name of the source repository where the workflow definition file is stored.</p>", "smithy.api#required" => {}}))
    WorkflowSummary.add_member(:source_branch_name, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceRepositoryBranchString, location_name: 'sourceBranchName', traits: {"smithy.api#documentation" => "<p>The name of the branch of the source repository where the workflow definition file is stored.</p>", "smithy.api#required" => {}}))
    WorkflowSummary.add_member(:definition, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowDefinitionSummary, location_name: 'definition', traits: {"smithy.api#documentation" => "<p>Information about the workflow definition file.</p>", "smithy.api#required" => {}}))
    WorkflowSummary.add_member(:created_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdTime', traits: {"smithy.api#documentation" => "<p>The date and time the workflow was created, in coordinated universal time (UTC) timestamp format as specified in <a href=\"https://www.rfc-editor.org/rfc/rfc3339#section-5.6\">RFC 3339</a>\n         </p>", "smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    WorkflowSummary.add_member(:last_updated_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdatedTime', traits: {"smithy.api#documentation" => "<p>The date and time the workflow was last updated, in coordinated universal time (UTC) timestamp format as specified in <a href=\"https://www.rfc-editor.org/rfc/rfc3339#section-5.6\">RFC 3339</a>\n         </p>", "smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    WorkflowSummary.add_member(:run_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowRunMode, location_name: 'runMode', traits: {"smithy.api#documentation" => "<p>The run mode of the workflow.</p>", "smithy.api#required" => {}}))
    WorkflowSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: WorkflowStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the workflow.</p>", "smithy.api#required" => {}}))
    WorkflowSummary.type = Types::WorkflowSummary

    CodeCatalyst = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.codecatalyst#CodeCatalyst"
      service.name = "CodeCatalyst"
      service.version = "2022-09-28"
      service.traits = {"aws.api#service" => {"sdkId" => "CodeCatalyst", "endpointPrefix" => "codecatalyst"}, "aws.protocols#restJson1" => {}, "smithy.api#httpBearerAuth" => {}, "smithy.api#title" => "Amazon CodeCatalyst"}
      service.add_operation(:create_access_token, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecatalyst#CreateAccessToken"
        operation.name = "CreateAccessToken"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAccessTokenRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAccessTokenResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/accessTokens", "code" => 201}}
      end)
      service.add_operation(:create_dev_environment, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecatalyst#CreateDevEnvironment"
        operation.name = "CreateDevEnvironment"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDevEnvironmentRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDevEnvironmentResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/spaces/{spaceName}/projects/{projectName}/devEnvironments", "code" => 201}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_project, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecatalyst#CreateProject"
        operation.name = "CreateProject"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateProjectRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateProjectResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/spaces/{spaceName}/projects", "code" => 201}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_source_repository, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecatalyst#CreateSourceRepository"
        operation.name = "CreateSourceRepository"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSourceRepositoryRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSourceRepositoryResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/spaces/{spaceName}/projects/{projectName}/sourceRepositories/{name}", "code" => 201}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_source_repository_branch, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecatalyst#CreateSourceRepositoryBranch"
        operation.name = "CreateSourceRepositoryBranch"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSourceRepositoryBranchRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSourceRepositoryBranchResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/spaces/{spaceName}/projects/{projectName}/sourceRepositories/{sourceRepositoryName}/branches/{name}", "code" => 201}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_access_token, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecatalyst#DeleteAccessToken"
        operation.name = "DeleteAccessToken"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAccessTokenRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAccessTokenResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/accessTokens/{id}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_dev_environment, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecatalyst#DeleteDevEnvironment"
        operation.name = "DeleteDevEnvironment"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDevEnvironmentRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDevEnvironmentResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/spaces/{spaceName}/projects/{projectName}/devEnvironments/{id}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_project, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecatalyst#DeleteProject"
        operation.name = "DeleteProject"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteProjectRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteProjectResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/spaces/{spaceName}/projects/{name}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_source_repository, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecatalyst#DeleteSourceRepository"
        operation.name = "DeleteSourceRepository"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSourceRepositoryRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSourceRepositoryResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/spaces/{spaceName}/projects/{projectName}/sourceRepositories/{name}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_space, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecatalyst#DeleteSpace"
        operation.name = "DeleteSpace"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSpaceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSpaceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/spaces/{name}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_dev_environment, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecatalyst#GetDevEnvironment"
        operation.name = "GetDevEnvironment"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDevEnvironmentRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDevEnvironmentResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/spaces/{spaceName}/projects/{projectName}/devEnvironments/{id}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_project, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecatalyst#GetProject"
        operation.name = "GetProject"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetProjectRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetProjectResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/spaces/{spaceName}/projects/{name}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_source_repository, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecatalyst#GetSourceRepository"
        operation.name = "GetSourceRepository"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSourceRepositoryRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSourceRepositoryResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/spaces/{spaceName}/projects/{projectName}/sourceRepositories/{name}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_source_repository_clone_urls, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecatalyst#GetSourceRepositoryCloneUrls"
        operation.name = "GetSourceRepositoryCloneUrls"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSourceRepositoryCloneUrlsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSourceRepositoryCloneUrlsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/spaces/{spaceName}/projects/{projectName}/sourceRepositories/{sourceRepositoryName}/cloneUrls", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_space, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecatalyst#GetSpace"
        operation.name = "GetSpace"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSpaceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSpaceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/spaces/{name}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_subscription, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecatalyst#GetSubscription"
        operation.name = "GetSubscription"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSubscriptionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSubscriptionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/spaces/{spaceName}/subscription", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_user_details, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecatalyst#GetUserDetails"
        operation.name = "GetUserDetails"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetUserDetailsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetUserDetailsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/userDetails", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_workflow, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecatalyst#GetWorkflow"
        operation.name = "GetWorkflow"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetWorkflowRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetWorkflowResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/spaces/{spaceName}/projects/{projectName}/workflows/{id}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_workflow_run, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecatalyst#GetWorkflowRun"
        operation.name = "GetWorkflowRun"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetWorkflowRunRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetWorkflowRunResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/spaces/{spaceName}/projects/{projectName}/workflowRuns/{id}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_access_tokens, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecatalyst#ListAccessTokens"
        operation.name = "ListAccessTokens"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAccessTokensRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAccessTokensResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/accessTokens", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListAccessTokens.new
      end)
      service.add_operation(:list_dev_environment_sessions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecatalyst#ListDevEnvironmentSessions"
        operation.name = "ListDevEnvironmentSessions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDevEnvironmentSessionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDevEnvironmentSessionsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/spaces/{spaceName}/projects/{projectName}/devEnvironments/{devEnvironmentId}/sessions", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListDevEnvironmentSessions.new
      end)
      service.add_operation(:list_dev_environments, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecatalyst#ListDevEnvironments"
        operation.name = "ListDevEnvironments"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDevEnvironmentsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDevEnvironmentsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/spaces/{spaceName}/devEnvironments", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListDevEnvironments.new
      end)
      service.add_operation(:list_event_logs, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecatalyst#ListEventLogs"
        operation.name = "ListEventLogs"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListEventLogsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListEventLogsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/spaces/{spaceName}/eventLogs", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListEventLogs.new
      end)
      service.add_operation(:list_projects, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecatalyst#ListProjects"
        operation.name = "ListProjects"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListProjectsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListProjectsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/spaces/{spaceName}/projects", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListProjects.new
      end)
      service.add_operation(:list_source_repositories, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecatalyst#ListSourceRepositories"
        operation.name = "ListSourceRepositories"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSourceRepositoriesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSourceRepositoriesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/spaces/{spaceName}/projects/{projectName}/sourceRepositories", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListSourceRepositories.new
      end)
      service.add_operation(:list_source_repository_branches, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecatalyst#ListSourceRepositoryBranches"
        operation.name = "ListSourceRepositoryBranches"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSourceRepositoryBranchesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSourceRepositoryBranchesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/spaces/{spaceName}/projects/{projectName}/sourceRepositories/{sourceRepositoryName}/branches", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListSourceRepositoryBranches.new
      end)
      service.add_operation(:list_spaces, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecatalyst#ListSpaces"
        operation.name = "ListSpaces"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSpacesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSpacesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/spaces", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListSpaces.new
      end)
      service.add_operation(:list_workflow_runs, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecatalyst#ListWorkflowRuns"
        operation.name = "ListWorkflowRuns"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListWorkflowRunsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListWorkflowRunsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/spaces/{spaceName}/projects/{projectName}/workflowRuns", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListWorkflowRuns.new
      end)
      service.add_operation(:list_workflows, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecatalyst#ListWorkflows"
        operation.name = "ListWorkflows"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListWorkflowsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListWorkflowsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/spaces/{spaceName}/projects/{projectName}/workflows", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListWorkflows.new
      end)
      service.add_operation(:start_dev_environment, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecatalyst#StartDevEnvironment"
        operation.name = "StartDevEnvironment"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartDevEnvironmentRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartDevEnvironmentResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/spaces/{spaceName}/projects/{projectName}/devEnvironments/{id}/start", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:start_dev_environment_session, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecatalyst#StartDevEnvironmentSession"
        operation.name = "StartDevEnvironmentSession"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartDevEnvironmentSessionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartDevEnvironmentSessionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/spaces/{spaceName}/projects/{projectName}/devEnvironments/{id}/session", "code" => 200}}
      end)
      service.add_operation(:start_workflow_run, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecatalyst#StartWorkflowRun"
        operation.name = "StartWorkflowRun"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartWorkflowRunRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartWorkflowRunResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/spaces/{spaceName}/projects/{projectName}/workflowRuns", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:stop_dev_environment, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecatalyst#StopDevEnvironment"
        operation.name = "StopDevEnvironment"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StopDevEnvironmentRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StopDevEnvironmentResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/spaces/{spaceName}/projects/{projectName}/devEnvironments/{id}/stop", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:stop_dev_environment_session, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecatalyst#StopDevEnvironmentSession"
        operation.name = "StopDevEnvironmentSession"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StopDevEnvironmentSessionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StopDevEnvironmentSessionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/spaces/{spaceName}/projects/{projectName}/devEnvironments/{id}/session/{sessionId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_dev_environment, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecatalyst#UpdateDevEnvironment"
        operation.name = "UpdateDevEnvironment"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDevEnvironmentRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDevEnvironmentResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/v1/spaces/{spaceName}/projects/{projectName}/devEnvironments/{id}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_project, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecatalyst#UpdateProject"
        operation.name = "UpdateProject"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateProjectRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateProjectResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/v1/spaces/{spaceName}/projects/{name}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_space, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecatalyst#UpdateSpace"
        operation.name = "UpdateSpace"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSpaceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSpaceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/v1/spaces/{name}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:verify_session, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codecatalyst#VerifySession"
        operation.name = "VerifySession"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: VerifySessionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/session", "code" => 200}, "smithy.api#readonly" => {}}
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
